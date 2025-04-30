; ModuleID = 'common/x86/mc-c.c'
source_filename = "common/x86/mc-c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_mc_functions_t = type { ptr, ptr, ptr, [10 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@hpel_ref0 = internal unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 2, i32 3, i32 3, i32 3, i32 0, i32 1, i32 1, i32 1], align 16, !dbg !0
@hpel_ref1 = internal unnamed_addr constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 3, i32 2, i32 2, i32 2, i32 3, i32 2, i32 2, i32 2, i32 3, i32 2], align 16, !dbg !22
@x264_pixel_avg_wtab_mmxext = internal unnamed_addr constant [6 x ptr] [ptr null, ptr @x264_pixel_avg2_w4_mmxext, ptr @x264_pixel_avg2_w8_mmxext, ptr @x264_pixel_avg2_w12_mmxext, ptr @x264_pixel_avg2_w16_mmxext, ptr @x264_pixel_avg2_w20_mmxext], align 16, !dbg !29
@x264_mc_copy_wtab_mmx = internal unnamed_addr constant [5 x ptr] [ptr null, ptr @x264_mc_copy_w4_mmx, ptr @x264_mc_copy_w8_mmx, ptr null, ptr @x264_mc_copy_w16_mmx], align 16, !dbg !44
@x264_pixel_avg_wtab_sse2 = internal unnamed_addr constant [6 x ptr] [ptr null, ptr @x264_pixel_avg2_w4_mmxext, ptr @x264_pixel_avg2_w8_mmxext, ptr @x264_pixel_avg2_w16_sse2, ptr @x264_pixel_avg2_w16_sse2, ptr @x264_pixel_avg2_w20_sse2], align 16, !dbg !53
@x264_mc_copy_wtab_sse2 = internal unnamed_addr constant [5 x ptr] [ptr null, ptr @x264_mc_copy_w4_mmx, ptr @x264_mc_copy_w8_mmx, ptr null, ptr @x264_mc_copy_w16_sse2], align 16, !dbg !55
@x264_pixel_avg_wtab_cache64_sse2 = internal unnamed_addr constant [6 x ptr] [ptr null, ptr @x264_pixel_avg2_w4_mmxext, ptr @x264_pixel_avg2_w8_cache64_mmxext, ptr @x264_pixel_avg2_w16_cache64_sse2, ptr @x264_pixel_avg2_w16_cache64_sse2, ptr @x264_pixel_avg2_w20_cache64_sse2], align 16, !dbg !57
@x264_pixel_avg_wtab_sse2_misalign = internal unnamed_addr constant [6 x ptr] [ptr null, ptr @x264_pixel_avg2_w4_mmxext, ptr @x264_pixel_avg2_w8_mmxext, ptr @x264_pixel_avg2_w16_sse2, ptr @x264_pixel_avg2_w16_sse2, ptr @x264_pixel_avg2_w20_sse2_misalign], align 16, !dbg !59

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_mc_init_mmx(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !68 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !134, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata ptr %1, metadata !135, metadata !DIExpression()), !dbg !136
  %3 = and i32 %0, 8, !dbg !137
  %4 = icmp eq i32 %3, 0, !dbg !137
  br i1 %4, label %51, label %5, !dbg !139

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 5, !dbg !140
  store ptr @x264_mc_copy_w16_mmx, ptr %6, align 8, !dbg !141, !tbaa !142
  %7 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 4, !dbg !147
  store ptr @x264_mc_copy_w16_mmx, ptr %7, align 8, !dbg !148, !tbaa !149
  %8 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 4, i64 3, !dbg !150
  store ptr @x264_mc_copy_w8_mmx, ptr %8, align 8, !dbg !151, !tbaa !149
  %9 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 4, i64 6, !dbg !152
  store ptr @x264_mc_copy_w4_mmx, ptr %9, align 8, !dbg !153, !tbaa !149
  %10 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 10, !dbg !154
  store ptr @x264_memcpy_aligned_mmx, ptr %10, align 8, !dbg !155, !tbaa !156
  %11 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 11, !dbg !157
  store ptr @x264_memzero_aligned_mmx, ptr %11, align 8, !dbg !158, !tbaa !159
  %12 = and i32 %0, 16, !dbg !160
  %13 = icmp eq i32 %12, 0, !dbg !160
  br i1 %13, label %51, label %14, !dbg !162

14:                                               ; preds = %5
  store ptr @mc_luma_mmxext, ptr %1, align 8, !dbg !163, !tbaa !164
  %15 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 1, !dbg !165
  store ptr @get_ref_mmxext, ptr %15, align 8, !dbg !166, !tbaa !167
  %16 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 2, !dbg !168
  store ptr @x264_mc_chroma_mmxext, ptr %16, align 8, !dbg !169, !tbaa !170
  %17 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, !dbg !171
  store ptr @x264_pixel_avg_16x16_mmxext, ptr %17, align 8, !dbg !172, !tbaa !149
  %18 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 1, !dbg !173
  store ptr @x264_pixel_avg_16x8_mmxext, ptr %18, align 8, !dbg !174, !tbaa !149
  %19 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 2, !dbg !175
  store ptr @x264_pixel_avg_8x16_mmxext, ptr %19, align 8, !dbg !176, !tbaa !149
  %20 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 3, !dbg !177
  store ptr @x264_pixel_avg_8x8_mmxext, ptr %20, align 8, !dbg !178, !tbaa !149
  %21 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 4, !dbg !179
  store ptr @x264_pixel_avg_8x4_mmxext, ptr %21, align 8, !dbg !180, !tbaa !149
  %22 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 5, !dbg !181
  store ptr @x264_pixel_avg_4x8_mmxext, ptr %22, align 8, !dbg !182, !tbaa !149
  %23 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 6, !dbg !183
  store ptr @x264_pixel_avg_4x4_mmxext, ptr %23, align 8, !dbg !184, !tbaa !149
  %24 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 7, !dbg !185
  store ptr @x264_pixel_avg_4x2_mmxext, ptr %24, align 8, !dbg !186, !tbaa !149
  %25 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 6, !dbg !187
  store ptr @x264_plane_copy_mmxext, ptr %25, align 8, !dbg !188, !tbaa !189
  %26 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 7, !dbg !190
  store ptr @x264_hpel_filter_mmxext, ptr %26, align 8, !dbg !191, !tbaa !192
  %27 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 12, !dbg !193
  store ptr @x264_frame_init_lowres_core_mmxext, ptr %27, align 8, !dbg !194, !tbaa !195
  %28 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 8, !dbg !196
  store ptr @x264_prefetch_fenc_mmxext, ptr %28, align 8, !dbg !197, !tbaa !198
  %29 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 9, !dbg !199
  store ptr @x264_prefetch_ref_mmxext, ptr %29, align 8, !dbg !200, !tbaa !201
  %30 = and i32 %0, 64, !dbg !202
  %31 = icmp eq i32 %30, 0, !dbg !202
  br i1 %31, label %51, label %32, !dbg !204

32:                                               ; preds = %14
  store ptr @x264_memcpy_aligned_sse2, ptr %10, align 8, !dbg !205, !tbaa !156
  store ptr @x264_memzero_aligned_sse2, ptr %11, align 8, !dbg !206, !tbaa !159
  store ptr @x264_hpel_filter_sse2_amd, ptr %26, align 8, !dbg !207, !tbaa !192
  %33 = and i32 %0, 128, !dbg !208
  %34 = icmp eq i32 %33, 0, !dbg !208
  br i1 %34, label %35, label %51, !dbg !210

35:                                               ; preds = %32
  store ptr @x264_mc_copy_w16_aligned_sse2, ptr %7, align 8, !dbg !211, !tbaa !149
  store ptr @x264_pixel_avg_16x16_sse2, ptr %17, align 8, !dbg !212, !tbaa !149
  store ptr @x264_pixel_avg_16x8_sse2, ptr %18, align 8, !dbg !213, !tbaa !149
  store ptr @x264_pixel_avg_8x16_sse2, ptr %19, align 8, !dbg !214, !tbaa !149
  store ptr @x264_pixel_avg_8x8_sse2, ptr %20, align 8, !dbg !215, !tbaa !149
  store ptr @x264_pixel_avg_8x4_sse2, ptr %21, align 8, !dbg !216, !tbaa !149
  %36 = and i32 %0, 32768, !dbg !217
  %37 = icmp eq i32 %36, 0, !dbg !217
  %38 = select i1 %37, ptr @x264_hpel_filter_sse2, ptr @x264_hpel_filter_sse2_misalign, !dbg !219
  store ptr %38, ptr %26, align 8, !dbg !136, !tbaa !192
  store ptr @x264_frame_init_lowres_core_sse2, ptr %27, align 8, !dbg !220, !tbaa !195
  store ptr @x264_mc_chroma_sse2, ptr %16, align 8, !dbg !221, !tbaa !170
  %39 = and i32 %0, 256, !dbg !222
  %40 = icmp eq i32 %39, 0, !dbg !222
  br i1 %40, label %47, label %41, !dbg !224

41:                                               ; preds = %35
  store ptr @mc_luma_sse2, ptr %1, align 8, !dbg !225, !tbaa !164
  store ptr @get_ref_sse2, ptr %15, align 8, !dbg !227, !tbaa !167
  %42 = and i32 %0, 2, !dbg !228
  %43 = icmp eq i32 %42, 0, !dbg !228
  br i1 %43, label %45, label %44, !dbg !230

44:                                               ; preds = %41
  store ptr @mc_luma_cache64_sse2, ptr %1, align 8, !dbg !231, !tbaa !164
  store ptr @get_ref_cache64_sse2, ptr %15, align 8, !dbg !233, !tbaa !167
  br label %45, !dbg !234

45:                                               ; preds = %44, %41
  br i1 %37, label %47, label %46, !dbg !235

46:                                               ; preds = %45
  store ptr @get_ref_sse2_misalign, ptr %15, align 8, !dbg !236, !tbaa !167
  br label %47, !dbg !238

47:                                               ; preds = %45, %46, %35
  %48 = and i32 %0, 1024, !dbg !239
  %49 = icmp eq i32 %48, 0, !dbg !239
  br i1 %49, label %51, label %50, !dbg !241

50:                                               ; preds = %47
  store ptr @x264_pixel_avg_16x16_ssse3, ptr %17, align 8, !dbg !242, !tbaa !149
  store ptr @x264_pixel_avg_16x8_ssse3, ptr %18, align 8, !dbg !243, !tbaa !149
  store ptr @x264_pixel_avg_8x16_ssse3, ptr %19, align 8, !dbg !244, !tbaa !149
  store ptr @x264_pixel_avg_8x8_ssse3, ptr %20, align 8, !dbg !245, !tbaa !149
  store ptr @x264_pixel_avg_8x4_ssse3, ptr %21, align 8, !dbg !246, !tbaa !149
  store ptr @x264_pixel_avg_4x8_ssse3, ptr %22, align 8, !dbg !247, !tbaa !149
  store ptr @x264_pixel_avg_4x4_ssse3, ptr %23, align 8, !dbg !248, !tbaa !149
  store ptr @x264_pixel_avg_4x2_ssse3, ptr %24, align 8, !dbg !249, !tbaa !149
  store ptr @x264_hpel_filter_ssse3, ptr %26, align 8, !dbg !250, !tbaa !192
  store ptr @x264_frame_init_lowres_core_ssse3, ptr %27, align 8, !dbg !251, !tbaa !195
  store ptr @x264_mc_chroma_ssse3, ptr %16, align 8, !dbg !252, !tbaa !170
  br label %51, !dbg !253

51:                                               ; preds = %47, %32, %14, %5, %2, %50
  ret void, !dbg !253
}

declare void @x264_mc_copy_w16_mmx(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_mc_copy_w8_mmx(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_mc_copy_w4_mmx(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare ptr @x264_memcpy_aligned_mmx(ptr noundef, ptr noundef, i64 noundef) #1

declare void @x264_memzero_aligned_mmx(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal void @mc_luma_mmxext(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 !dbg !254 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !256, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i32 %1, metadata !257, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata ptr %2, metadata !258, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i32 %3, metadata !259, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i32 %4, metadata !260, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i32 %5, metadata !261, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i32 %6, metadata !262, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i32 %7, metadata !263, metadata !DIExpression()), !dbg !270
  %9 = and i32 %5, 3, !dbg !271
  %10 = shl nuw nsw i32 %9, 2, !dbg !271
  %11 = and i32 %4, 3, !dbg !271
  %12 = or i32 %10, %11, !dbg !271
  call void @llvm.dbg.value(metadata i32 %12, metadata !264, metadata !DIExpression()), !dbg !270
  %13 = ashr i32 %5, 2, !dbg !271
  %14 = mul nsw i32 %13, %3, !dbg !271
  %15 = ashr i32 %4, 2, !dbg !271
  %16 = add nsw i32 %14, %15, !dbg !271
  call void @llvm.dbg.value(metadata i32 %16, metadata !265, metadata !DIExpression()), !dbg !270
  %17 = zext i32 %12 to i64
  %18 = getelementptr inbounds [16 x i32], ptr @hpel_ref0, i64 0, i64 %17, !dbg !271
  %19 = load i32, ptr %18, align 4, !dbg !271, !tbaa !272
  %20 = sext i32 %19 to i64, !dbg !271
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20, !dbg !271
  %22 = load ptr, ptr %21, align 8, !dbg !271, !tbaa !149
  %23 = sext i32 %16 to i64, !dbg !271
  %24 = getelementptr inbounds i8, ptr %22, i64 %23, !dbg !271
  %25 = icmp eq i32 %9, 3, !dbg !271
  %26 = select i1 %25, i32 %3, i32 0, !dbg !271
  %27 = sext i32 %26 to i64, !dbg !271
  %28 = getelementptr inbounds i8, ptr %24, i64 %27, !dbg !271
  call void @llvm.dbg.value(metadata ptr %28, metadata !266, metadata !DIExpression()), !dbg !270
  %29 = and i32 %12, 5, !dbg !274
  %30 = icmp eq i32 %29, 0, !dbg !274
  br i1 %30, label %45, label %31, !dbg !271

31:                                               ; preds = %8
  %32 = getelementptr inbounds [16 x i32], ptr @hpel_ref1, i64 0, i64 %17, !dbg !275
  %33 = load i32, ptr %32, align 4, !dbg !275, !tbaa !272
  %34 = sext i32 %33 to i64, !dbg !275
  %35 = getelementptr inbounds ptr, ptr %2, i64 %34, !dbg !275
  %36 = load ptr, ptr %35, align 8, !dbg !275, !tbaa !149
  %37 = getelementptr inbounds i8, ptr %36, i64 %23, !dbg !275
  %38 = icmp eq i32 %11, 3, !dbg !275
  %39 = zext i1 %38 to i64
  %40 = getelementptr inbounds i8, ptr %37, i64 %39, !dbg !275
  call void @llvm.dbg.value(metadata ptr %40, metadata !267, metadata !DIExpression()), !dbg !276
  %41 = ashr i32 %6, 2, !dbg !275
  %42 = sext i32 %41 to i64, !dbg !275
  %43 = getelementptr inbounds [6 x ptr], ptr @x264_pixel_avg_wtab_mmxext, i64 0, i64 %42, !dbg !275
  %44 = load ptr, ptr %43, align 8, !dbg !275, !tbaa !149
  tail call void %44(ptr noundef %0, i32 noundef %1, ptr noundef %28, i32 noundef %3, ptr noundef %40, i32 noundef %7) #4, !dbg !275
  br label %50, !dbg !275

45:                                               ; preds = %8
  %46 = ashr i32 %6, 2, !dbg !277
  %47 = sext i32 %46 to i64, !dbg !277
  %48 = getelementptr inbounds [5 x ptr], ptr @x264_mc_copy_wtab_mmx, i64 0, i64 %47, !dbg !277
  %49 = load ptr, ptr %48, align 8, !dbg !277, !tbaa !149
  tail call void %49(ptr noundef %0, i32 noundef %1, ptr noundef %28, i32 noundef %3, i32 noundef %7) #4, !dbg !277
  br label %50

50:                                               ; preds = %45, %31
  ret void, !dbg !271
}

; Function Attrs: nounwind uwtable
define internal ptr @get_ref_mmxext(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 !dbg !279 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !281, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata ptr %1, metadata !282, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata ptr %2, metadata !283, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 %3, metadata !284, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 %4, metadata !285, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 %5, metadata !286, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 %6, metadata !287, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 %7, metadata !288, metadata !DIExpression()), !dbg !295
  %9 = and i32 %5, 3, !dbg !296
  %10 = shl nuw nsw i32 %9, 2, !dbg !296
  %11 = and i32 %4, 3, !dbg !296
  %12 = or i32 %10, %11, !dbg !296
  call void @llvm.dbg.value(metadata i32 %12, metadata !289, metadata !DIExpression()), !dbg !295
  %13 = ashr i32 %5, 2, !dbg !296
  %14 = mul nsw i32 %13, %3, !dbg !296
  %15 = ashr i32 %4, 2, !dbg !296
  %16 = add nsw i32 %14, %15, !dbg !296
  call void @llvm.dbg.value(metadata i32 %16, metadata !290, metadata !DIExpression()), !dbg !295
  %17 = zext i32 %12 to i64
  %18 = getelementptr inbounds [16 x i32], ptr @hpel_ref0, i64 0, i64 %17, !dbg !296
  %19 = load i32, ptr %18, align 4, !dbg !296, !tbaa !272
  %20 = sext i32 %19 to i64, !dbg !296
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20, !dbg !296
  %22 = load ptr, ptr %21, align 8, !dbg !296, !tbaa !149
  %23 = sext i32 %16 to i64, !dbg !296
  %24 = getelementptr inbounds i8, ptr %22, i64 %23, !dbg !296
  %25 = icmp eq i32 %9, 3, !dbg !296
  %26 = select i1 %25, i32 %3, i32 0, !dbg !296
  %27 = sext i32 %26 to i64, !dbg !296
  %28 = getelementptr inbounds i8, ptr %24, i64 %27, !dbg !296
  call void @llvm.dbg.value(metadata ptr %28, metadata !291, metadata !DIExpression()), !dbg !295
  %29 = and i32 %12, 5, !dbg !297
  %30 = icmp eq i32 %29, 0, !dbg !297
  br i1 %30, label %46, label %31, !dbg !296

31:                                               ; preds = %8
  %32 = getelementptr inbounds [16 x i32], ptr @hpel_ref1, i64 0, i64 %17, !dbg !298
  %33 = load i32, ptr %32, align 4, !dbg !298, !tbaa !272
  %34 = sext i32 %33 to i64, !dbg !298
  %35 = getelementptr inbounds ptr, ptr %2, i64 %34, !dbg !298
  %36 = load ptr, ptr %35, align 8, !dbg !298, !tbaa !149
  %37 = getelementptr inbounds i8, ptr %36, i64 %23, !dbg !298
  %38 = icmp eq i32 %11, 3, !dbg !298
  %39 = zext i1 %38 to i64
  %40 = getelementptr inbounds i8, ptr %37, i64 %39, !dbg !298
  call void @llvm.dbg.value(metadata ptr %40, metadata !292, metadata !DIExpression()), !dbg !299
  %41 = ashr i32 %6, 2, !dbg !298
  %42 = sext i32 %41 to i64, !dbg !298
  %43 = getelementptr inbounds [6 x ptr], ptr @x264_pixel_avg_wtab_mmxext, i64 0, i64 %42, !dbg !298
  %44 = load ptr, ptr %43, align 8, !dbg !298, !tbaa !149
  %45 = load i32, ptr %1, align 4, !dbg !298, !tbaa !272
  tail call void %44(ptr noundef %0, i32 noundef %45, ptr noundef %28, i32 noundef %3, ptr noundef %40, i32 noundef %7) #4, !dbg !298
  br label %47

46:                                               ; preds = %8
  store i32 %3, ptr %1, align 4, !dbg !300, !tbaa !272
  br label %47, !dbg !300

47:                                               ; preds = %46, %31
  %48 = phi ptr [ %0, %31 ], [ %28, %46 ], !dbg !297
  ret ptr %48, !dbg !296
}

declare void @x264_mc_chroma_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_16x16_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_16x8_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_8x16_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_8x8_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_8x4_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_4x8_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_4x4_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_4x2_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_plane_copy_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal void @x264_hpel_filter_mmxext(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #2 !dbg !302 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !304, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata ptr %1, metadata !305, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata ptr %3, metadata !307, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i32 %4, metadata !308, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i32 %5, metadata !309, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i32 %6, metadata !310, metadata !DIExpression()), !dbg !318
  %8 = ptrtoint ptr %3 to i64, !dbg !319
  %9 = trunc i64 %8 to i32, !dbg !319
  %10 = and i32 %9, 7, !dbg !319
  call void @llvm.dbg.value(metadata i32 %10, metadata !317, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 0, i64 %8), metadata !307, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 7, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !318
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 0, i64 %8), metadata !305, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 7, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !318
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 0, i64 %8), metadata !306, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 7, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !318
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %8), metadata !304, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 7, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !318
  %11 = add nsw i32 %10, %5, !dbg !319
  call void @llvm.dbg.value(metadata i32 %11, metadata !309, metadata !DIExpression()), !dbg !318
  %12 = shl i32 %11, 1, !dbg !319
  %13 = add i32 %12, 32, !dbg !319
  %14 = tail call ptr @x264_malloc(i32 noundef %13) #4, !dbg !319
  call void @llvm.dbg.value(metadata ptr %14, metadata !311, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %8), metadata !304, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 7, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !318
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 0, i64 %8), metadata !305, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 7, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !318
  call void @llvm.dbg.value(metadata i32 %6, metadata !310, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 0, i64 %8), metadata !306, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 7, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !318
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 0, i64 %8), metadata !307, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 7, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !318
  call void @llvm.dbg.value(metadata i32 %6, metadata !310, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !318
  %15 = icmp eq i32 %6, 0, !dbg !319
  br i1 %15, label %37, label %16, !dbg !319

16:                                               ; preds = %7
  %17 = and i64 %8, 7
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %17), metadata !304, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !318
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 0, i64 %17), metadata !305, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !318
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 0, i64 %17), metadata !306, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !318
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 0, i64 %17), metadata !307, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !318
  %18 = sub nsw i64 0, %17, !dbg !319
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %18), metadata !304, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !318
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 %18), metadata !305, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !318
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %18), metadata !306, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !318
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %18), metadata !307, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !318
  %19 = getelementptr inbounds i8, ptr %0, i64 %18, !dbg !319
  call void @llvm.dbg.value(metadata ptr %19, metadata !304, metadata !DIExpression()), !dbg !318
  %20 = getelementptr inbounds i8, ptr %2, i64 %18, !dbg !319
  call void @llvm.dbg.value(metadata ptr %20, metadata !306, metadata !DIExpression()), !dbg !318
  %21 = getelementptr inbounds i8, ptr %1, i64 %18, !dbg !319
  call void @llvm.dbg.value(metadata ptr %21, metadata !305, metadata !DIExpression()), !dbg !318
  %22 = getelementptr inbounds i8, ptr %3, i64 %18, !dbg !319
  call void @llvm.dbg.value(metadata ptr %22, metadata !307, metadata !DIExpression()), !dbg !318
  %23 = getelementptr inbounds i16, ptr %14, i64 8
  %24 = sext i32 %4 to i64
  br label %25, !dbg !319

25:                                               ; preds = %16, %25
  %26 = phi ptr [ %19, %16 ], [ %32, %25 ]
  %27 = phi ptr [ %21, %16 ], [ %33, %25 ]
  %28 = phi i32 [ %6, %16 ], [ %31, %25 ]
  %29 = phi ptr [ %20, %16 ], [ %34, %25 ]
  %30 = phi ptr [ %22, %16 ], [ %35, %25 ]
  call void @llvm.dbg.value(metadata ptr %26, metadata !304, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata ptr %27, metadata !305, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i32 %28, metadata !310, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata ptr %29, metadata !306, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata ptr %30, metadata !307, metadata !DIExpression()), !dbg !318
  %31 = add nsw i32 %28, -1, !dbg !319
  call void @llvm.dbg.value(metadata i32 %31, metadata !310, metadata !DIExpression()), !dbg !318
  tail call void @x264_hpel_filter_v_mmxext(ptr noundef %27, ptr noundef %30, ptr noundef nonnull %23, i32 noundef %4, i32 noundef %11) #4, !dbg !320
  tail call void @x264_hpel_filter_c_mmxext(ptr noundef %29, ptr noundef nonnull %23, i32 noundef %11) #4, !dbg !320
  tail call void @x264_hpel_filter_h_mmxext(ptr noundef %26, ptr noundef %30, i32 noundef %11) #4, !dbg !320
  %32 = getelementptr inbounds i8, ptr %26, i64 %24, !dbg !320
  call void @llvm.dbg.value(metadata ptr %32, metadata !304, metadata !DIExpression()), !dbg !318
  %33 = getelementptr inbounds i8, ptr %27, i64 %24, !dbg !320
  call void @llvm.dbg.value(metadata ptr %33, metadata !305, metadata !DIExpression()), !dbg !318
  %34 = getelementptr inbounds i8, ptr %29, i64 %24, !dbg !320
  call void @llvm.dbg.value(metadata ptr %34, metadata !306, metadata !DIExpression()), !dbg !318
  %35 = getelementptr inbounds i8, ptr %30, i64 %24, !dbg !320
  call void @llvm.dbg.value(metadata ptr %35, metadata !307, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i32 %31, metadata !310, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !318
  %36 = icmp eq i32 %31, 0, !dbg !319
  br i1 %36, label %37, label %25, !dbg !319, !llvm.loop !322

37:                                               ; preds = %25, %7
  tail call void @x264_sfence() #4, !dbg !319
  tail call void @x264_free(ptr noundef %14) #4, !dbg !319
  ret void, !dbg !319
}

declare void @x264_frame_init_lowres_core_mmxext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare void @x264_prefetch_fenc_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_prefetch_ref_mmxext(ptr noundef, i32 noundef, i32 noundef) #1

declare ptr @x264_memcpy_aligned_sse2(ptr noundef, ptr noundef, i64 noundef) #1

declare void @x264_memzero_aligned_sse2(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal void @x264_hpel_filter_sse2_amd(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #2 !dbg !324 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !326, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata ptr %1, metadata !327, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata ptr %2, metadata !328, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata ptr %3, metadata !329, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 %4, metadata !330, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 %5, metadata !331, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 %6, metadata !332, metadata !DIExpression()), !dbg !335
  %8 = ptrtoint ptr %3 to i64, !dbg !336
  %9 = trunc i64 %8 to i32, !dbg !336
  %10 = and i32 %9, 15, !dbg !336
  call void @llvm.dbg.value(metadata i32 %10, metadata !334, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 0, i64 %8), metadata !329, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 15, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 0, i64 %8), metadata !327, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 15, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 0, i64 %8), metadata !328, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 15, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %8), metadata !326, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 15, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  %11 = add nsw i32 %10, %5, !dbg !336
  call void @llvm.dbg.value(metadata i32 %11, metadata !331, metadata !DIExpression()), !dbg !335
  %12 = shl i32 %11, 1, !dbg !336
  %13 = add i32 %12, 32, !dbg !336
  %14 = tail call ptr @x264_malloc(i32 noundef %13) #4, !dbg !336
  call void @llvm.dbg.value(metadata ptr %14, metadata !333, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %8), metadata !326, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 15, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 0, i64 %8), metadata !327, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 15, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  call void @llvm.dbg.value(metadata i32 %6, metadata !332, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 0, i64 %8), metadata !328, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 15, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 0, i64 %8), metadata !329, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 15, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  call void @llvm.dbg.value(metadata i32 %6, metadata !332, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !335
  %15 = icmp eq i32 %6, 0, !dbg !336
  br i1 %15, label %37, label %16, !dbg !336

16:                                               ; preds = %7
  %17 = and i64 %8, 15
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %17), metadata !326, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 0, i64 %17), metadata !327, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 0, i64 %17), metadata !328, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 0, i64 %17), metadata !329, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  %18 = sub nsw i64 0, %17, !dbg !336
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %18), metadata !326, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 %18), metadata !327, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %18), metadata !328, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %18), metadata !329, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !335
  %19 = getelementptr inbounds i8, ptr %0, i64 %18, !dbg !336
  call void @llvm.dbg.value(metadata ptr %19, metadata !326, metadata !DIExpression()), !dbg !335
  %20 = getelementptr inbounds i8, ptr %2, i64 %18, !dbg !336
  call void @llvm.dbg.value(metadata ptr %20, metadata !328, metadata !DIExpression()), !dbg !335
  %21 = getelementptr inbounds i8, ptr %1, i64 %18, !dbg !336
  call void @llvm.dbg.value(metadata ptr %21, metadata !327, metadata !DIExpression()), !dbg !335
  %22 = getelementptr inbounds i8, ptr %3, i64 %18, !dbg !336
  call void @llvm.dbg.value(metadata ptr %22, metadata !329, metadata !DIExpression()), !dbg !335
  %23 = getelementptr inbounds i16, ptr %14, i64 8
  %24 = sext i32 %4 to i64
  br label %25, !dbg !336

25:                                               ; preds = %16, %25
  %26 = phi ptr [ %19, %16 ], [ %32, %25 ]
  %27 = phi ptr [ %21, %16 ], [ %33, %25 ]
  %28 = phi i32 [ %6, %16 ], [ %31, %25 ]
  %29 = phi ptr [ %20, %16 ], [ %34, %25 ]
  %30 = phi ptr [ %22, %16 ], [ %35, %25 ]
  call void @llvm.dbg.value(metadata ptr %26, metadata !326, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata ptr %27, metadata !327, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 %28, metadata !332, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata ptr %29, metadata !328, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata ptr %30, metadata !329, metadata !DIExpression()), !dbg !335
  %31 = add nsw i32 %28, -1, !dbg !336
  call void @llvm.dbg.value(metadata i32 %31, metadata !332, metadata !DIExpression()), !dbg !335
  tail call void @x264_hpel_filter_v_mmxext(ptr noundef %27, ptr noundef %30, ptr noundef nonnull %23, i32 noundef %4, i32 noundef %11) #4, !dbg !337
  tail call void @x264_hpel_filter_c_mmxext(ptr noundef %29, ptr noundef nonnull %23, i32 noundef %11) #4, !dbg !337
  tail call void @x264_hpel_filter_h_sse2(ptr noundef %26, ptr noundef %30, i32 noundef %11) #4, !dbg !337
  %32 = getelementptr inbounds i8, ptr %26, i64 %24, !dbg !337
  call void @llvm.dbg.value(metadata ptr %32, metadata !326, metadata !DIExpression()), !dbg !335
  %33 = getelementptr inbounds i8, ptr %27, i64 %24, !dbg !337
  call void @llvm.dbg.value(metadata ptr %33, metadata !327, metadata !DIExpression()), !dbg !335
  %34 = getelementptr inbounds i8, ptr %29, i64 %24, !dbg !337
  call void @llvm.dbg.value(metadata ptr %34, metadata !328, metadata !DIExpression()), !dbg !335
  %35 = getelementptr inbounds i8, ptr %30, i64 %24, !dbg !337
  call void @llvm.dbg.value(metadata ptr %35, metadata !329, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 %31, metadata !332, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !335
  %36 = icmp eq i32 %31, 0, !dbg !336
  br i1 %36, label %37, label %25, !dbg !336, !llvm.loop !339

37:                                               ; preds = %25, %7
  tail call void @x264_sfence() #4, !dbg !336
  tail call void @x264_free(ptr noundef %14) #4, !dbg !336
  ret void, !dbg !336
}

declare void @x264_mc_copy_w16_aligned_sse2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_16x16_sse2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_16x8_sse2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_8x16_sse2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_8x8_sse2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_8x4_sse2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_hpel_filter_sse2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal void @x264_hpel_filter_sse2_misalign(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #2 !dbg !340 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !342, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata ptr %1, metadata !343, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata ptr %2, metadata !344, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata ptr %3, metadata !345, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32 %4, metadata !346, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32 %5, metadata !347, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32 %6, metadata !348, metadata !DIExpression()), !dbg !351
  %8 = ptrtoint ptr %3 to i64, !dbg !352
  %9 = trunc i64 %8 to i32, !dbg !352
  %10 = and i32 %9, 15, !dbg !352
  call void @llvm.dbg.value(metadata i32 %10, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 0, i64 %8), metadata !345, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 15, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 0, i64 %8), metadata !343, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 15, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 0, i64 %8), metadata !344, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 15, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %8), metadata !342, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 15, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  %11 = add nsw i32 %10, %5, !dbg !352
  call void @llvm.dbg.value(metadata i32 %11, metadata !347, metadata !DIExpression()), !dbg !351
  %12 = shl i32 %11, 1, !dbg !352
  %13 = add i32 %12, 32, !dbg !352
  %14 = tail call ptr @x264_malloc(i32 noundef %13) #4, !dbg !352
  call void @llvm.dbg.value(metadata ptr %14, metadata !349, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %8), metadata !342, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 15, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 0, i64 %8), metadata !343, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 15, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata i32 %6, metadata !348, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 0, i64 %8), metadata !344, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 15, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 0, i64 %8), metadata !345, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 15, DW_OP_and, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata i32 %6, metadata !348, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !351
  %15 = icmp eq i32 %6, 0, !dbg !352
  br i1 %15, label %37, label %16, !dbg !352

16:                                               ; preds = %7
  %17 = and i64 %8, 15
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %17), metadata !342, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 0, i64 %17), metadata !343, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 0, i64 %17), metadata !344, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 0, i64 %17), metadata !345, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  %18 = sub nsw i64 0, %17, !dbg !352
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %18), metadata !342, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 %18), metadata !343, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %18), metadata !344, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %18), metadata !345, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  %19 = getelementptr inbounds i8, ptr %0, i64 %18, !dbg !352
  call void @llvm.dbg.value(metadata ptr %19, metadata !342, metadata !DIExpression()), !dbg !351
  %20 = getelementptr inbounds i8, ptr %2, i64 %18, !dbg !352
  call void @llvm.dbg.value(metadata ptr %20, metadata !344, metadata !DIExpression()), !dbg !351
  %21 = getelementptr inbounds i8, ptr %1, i64 %18, !dbg !352
  call void @llvm.dbg.value(metadata ptr %21, metadata !343, metadata !DIExpression()), !dbg !351
  %22 = getelementptr inbounds i8, ptr %3, i64 %18, !dbg !352
  call void @llvm.dbg.value(metadata ptr %22, metadata !345, metadata !DIExpression()), !dbg !351
  %23 = getelementptr inbounds i16, ptr %14, i64 8
  %24 = sext i32 %4 to i64
  br label %25, !dbg !352

25:                                               ; preds = %16, %25
  %26 = phi ptr [ %19, %16 ], [ %32, %25 ]
  %27 = phi ptr [ %21, %16 ], [ %33, %25 ]
  %28 = phi i32 [ %6, %16 ], [ %31, %25 ]
  %29 = phi ptr [ %20, %16 ], [ %34, %25 ]
  %30 = phi ptr [ %22, %16 ], [ %35, %25 ]
  call void @llvm.dbg.value(metadata ptr %26, metadata !342, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata ptr %27, metadata !343, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32 %28, metadata !348, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata ptr %29, metadata !344, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata ptr %30, metadata !345, metadata !DIExpression()), !dbg !351
  %31 = add nsw i32 %28, -1, !dbg !352
  call void @llvm.dbg.value(metadata i32 %31, metadata !348, metadata !DIExpression()), !dbg !351
  tail call void @x264_hpel_filter_v_sse2(ptr noundef %27, ptr noundef %30, ptr noundef nonnull %23, i32 noundef %4, i32 noundef %11) #4, !dbg !353
  tail call void @x264_hpel_filter_c_sse2_misalign(ptr noundef %29, ptr noundef nonnull %23, i32 noundef %11) #4, !dbg !353
  tail call void @x264_hpel_filter_h_sse2(ptr noundef %26, ptr noundef %30, i32 noundef %11) #4, !dbg !353
  %32 = getelementptr inbounds i8, ptr %26, i64 %24, !dbg !353
  call void @llvm.dbg.value(metadata ptr %32, metadata !342, metadata !DIExpression()), !dbg !351
  %33 = getelementptr inbounds i8, ptr %27, i64 %24, !dbg !353
  call void @llvm.dbg.value(metadata ptr %33, metadata !343, metadata !DIExpression()), !dbg !351
  %34 = getelementptr inbounds i8, ptr %29, i64 %24, !dbg !353
  call void @llvm.dbg.value(metadata ptr %34, metadata !344, metadata !DIExpression()), !dbg !351
  %35 = getelementptr inbounds i8, ptr %30, i64 %24, !dbg !353
  call void @llvm.dbg.value(metadata ptr %35, metadata !345, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32 %31, metadata !348, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !351
  %36 = icmp eq i32 %31, 0, !dbg !352
  br i1 %36, label %37, label %25, !dbg !352, !llvm.loop !355

37:                                               ; preds = %25, %7
  tail call void @x264_sfence() #4, !dbg !352
  tail call void @x264_free(ptr noundef %14) #4, !dbg !352
  ret void, !dbg !352
}

declare void @x264_frame_init_lowres_core_sse2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare void @x264_mc_chroma_sse2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal void @mc_luma_sse2(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 !dbg !356 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !358, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 %1, metadata !359, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata ptr %2, metadata !360, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 %3, metadata !361, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 %4, metadata !362, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 %5, metadata !363, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 %6, metadata !364, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 %7, metadata !365, metadata !DIExpression()), !dbg !372
  %9 = and i32 %5, 3, !dbg !373
  %10 = shl nuw nsw i32 %9, 2, !dbg !373
  %11 = and i32 %4, 3, !dbg !373
  %12 = or i32 %10, %11, !dbg !373
  call void @llvm.dbg.value(metadata i32 %12, metadata !366, metadata !DIExpression()), !dbg !372
  %13 = ashr i32 %5, 2, !dbg !373
  %14 = mul nsw i32 %13, %3, !dbg !373
  %15 = ashr i32 %4, 2, !dbg !373
  %16 = add nsw i32 %14, %15, !dbg !373
  call void @llvm.dbg.value(metadata i32 %16, metadata !367, metadata !DIExpression()), !dbg !372
  %17 = zext i32 %12 to i64
  %18 = getelementptr inbounds [16 x i32], ptr @hpel_ref0, i64 0, i64 %17, !dbg !373
  %19 = load i32, ptr %18, align 4, !dbg !373, !tbaa !272
  %20 = sext i32 %19 to i64, !dbg !373
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20, !dbg !373
  %22 = load ptr, ptr %21, align 8, !dbg !373, !tbaa !149
  %23 = sext i32 %16 to i64, !dbg !373
  %24 = getelementptr inbounds i8, ptr %22, i64 %23, !dbg !373
  %25 = icmp eq i32 %9, 3, !dbg !373
  %26 = select i1 %25, i32 %3, i32 0, !dbg !373
  %27 = sext i32 %26 to i64, !dbg !373
  %28 = getelementptr inbounds i8, ptr %24, i64 %27, !dbg !373
  call void @llvm.dbg.value(metadata ptr %28, metadata !368, metadata !DIExpression()), !dbg !372
  %29 = and i32 %12, 5, !dbg !374
  %30 = icmp eq i32 %29, 0, !dbg !374
  br i1 %30, label %45, label %31, !dbg !373

31:                                               ; preds = %8
  %32 = getelementptr inbounds [16 x i32], ptr @hpel_ref1, i64 0, i64 %17, !dbg !375
  %33 = load i32, ptr %32, align 4, !dbg !375, !tbaa !272
  %34 = sext i32 %33 to i64, !dbg !375
  %35 = getelementptr inbounds ptr, ptr %2, i64 %34, !dbg !375
  %36 = load ptr, ptr %35, align 8, !dbg !375, !tbaa !149
  %37 = getelementptr inbounds i8, ptr %36, i64 %23, !dbg !375
  %38 = icmp eq i32 %11, 3, !dbg !375
  %39 = zext i1 %38 to i64
  %40 = getelementptr inbounds i8, ptr %37, i64 %39, !dbg !375
  call void @llvm.dbg.value(metadata ptr %40, metadata !369, metadata !DIExpression()), !dbg !376
  %41 = ashr i32 %6, 2, !dbg !375
  %42 = sext i32 %41 to i64, !dbg !375
  %43 = getelementptr inbounds [6 x ptr], ptr @x264_pixel_avg_wtab_sse2, i64 0, i64 %42, !dbg !375
  %44 = load ptr, ptr %43, align 8, !dbg !375, !tbaa !149
  tail call void %44(ptr noundef %0, i32 noundef %1, ptr noundef %28, i32 noundef %3, ptr noundef %40, i32 noundef %7) #4, !dbg !375
  br label %50, !dbg !375

45:                                               ; preds = %8
  %46 = ashr i32 %6, 2, !dbg !377
  %47 = sext i32 %46 to i64, !dbg !377
  %48 = getelementptr inbounds [5 x ptr], ptr @x264_mc_copy_wtab_sse2, i64 0, i64 %47, !dbg !377
  %49 = load ptr, ptr %48, align 8, !dbg !377, !tbaa !149
  tail call void %49(ptr noundef %0, i32 noundef %1, ptr noundef %28, i32 noundef %3, i32 noundef %7) #4, !dbg !377
  br label %50

50:                                               ; preds = %45, %31
  ret void, !dbg !373
}

; Function Attrs: nounwind uwtable
define internal ptr @get_ref_sse2(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 !dbg !379 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !381, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata ptr %1, metadata !382, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata ptr %2, metadata !383, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i32 %3, metadata !384, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i32 %4, metadata !385, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i32 %5, metadata !386, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i32 %6, metadata !387, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i32 %7, metadata !388, metadata !DIExpression()), !dbg !395
  %9 = and i32 %5, 3, !dbg !396
  %10 = shl nuw nsw i32 %9, 2, !dbg !396
  %11 = and i32 %4, 3, !dbg !396
  %12 = or i32 %10, %11, !dbg !396
  call void @llvm.dbg.value(metadata i32 %12, metadata !389, metadata !DIExpression()), !dbg !395
  %13 = ashr i32 %5, 2, !dbg !396
  %14 = mul nsw i32 %13, %3, !dbg !396
  %15 = ashr i32 %4, 2, !dbg !396
  %16 = add nsw i32 %14, %15, !dbg !396
  call void @llvm.dbg.value(metadata i32 %16, metadata !390, metadata !DIExpression()), !dbg !395
  %17 = zext i32 %12 to i64
  %18 = getelementptr inbounds [16 x i32], ptr @hpel_ref0, i64 0, i64 %17, !dbg !396
  %19 = load i32, ptr %18, align 4, !dbg !396, !tbaa !272
  %20 = sext i32 %19 to i64, !dbg !396
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20, !dbg !396
  %22 = load ptr, ptr %21, align 8, !dbg !396, !tbaa !149
  %23 = sext i32 %16 to i64, !dbg !396
  %24 = getelementptr inbounds i8, ptr %22, i64 %23, !dbg !396
  %25 = icmp eq i32 %9, 3, !dbg !396
  %26 = select i1 %25, i32 %3, i32 0, !dbg !396
  %27 = sext i32 %26 to i64, !dbg !396
  %28 = getelementptr inbounds i8, ptr %24, i64 %27, !dbg !396
  call void @llvm.dbg.value(metadata ptr %28, metadata !391, metadata !DIExpression()), !dbg !395
  %29 = and i32 %12, 5, !dbg !397
  %30 = icmp eq i32 %29, 0, !dbg !397
  br i1 %30, label %46, label %31, !dbg !396

31:                                               ; preds = %8
  %32 = getelementptr inbounds [16 x i32], ptr @hpel_ref1, i64 0, i64 %17, !dbg !398
  %33 = load i32, ptr %32, align 4, !dbg !398, !tbaa !272
  %34 = sext i32 %33 to i64, !dbg !398
  %35 = getelementptr inbounds ptr, ptr %2, i64 %34, !dbg !398
  %36 = load ptr, ptr %35, align 8, !dbg !398, !tbaa !149
  %37 = getelementptr inbounds i8, ptr %36, i64 %23, !dbg !398
  %38 = icmp eq i32 %11, 3, !dbg !398
  %39 = zext i1 %38 to i64
  %40 = getelementptr inbounds i8, ptr %37, i64 %39, !dbg !398
  call void @llvm.dbg.value(metadata ptr %40, metadata !392, metadata !DIExpression()), !dbg !399
  %41 = ashr i32 %6, 2, !dbg !398
  %42 = sext i32 %41 to i64, !dbg !398
  %43 = getelementptr inbounds [6 x ptr], ptr @x264_pixel_avg_wtab_sse2, i64 0, i64 %42, !dbg !398
  %44 = load ptr, ptr %43, align 8, !dbg !398, !tbaa !149
  %45 = load i32, ptr %1, align 4, !dbg !398, !tbaa !272
  tail call void %44(ptr noundef %0, i32 noundef %45, ptr noundef %28, i32 noundef %3, ptr noundef %40, i32 noundef %7) #4, !dbg !398
  br label %47

46:                                               ; preds = %8
  store i32 %3, ptr %1, align 4, !dbg !400, !tbaa !272
  br label %47, !dbg !400

47:                                               ; preds = %46, %31
  %48 = phi ptr [ %0, %31 ], [ %28, %46 ], !dbg !397
  ret ptr %48, !dbg !396
}

; Function Attrs: nounwind uwtable
define internal void @mc_luma_cache64_sse2(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 !dbg !402 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i32 %1, metadata !405, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata ptr %2, metadata !406, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i32 %3, metadata !407, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i32 %4, metadata !408, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i32 %5, metadata !409, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i32 %6, metadata !410, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i32 %7, metadata !411, metadata !DIExpression()), !dbg !418
  %9 = and i32 %5, 3, !dbg !419
  %10 = shl nuw nsw i32 %9, 2, !dbg !419
  %11 = and i32 %4, 3, !dbg !419
  %12 = or i32 %10, %11, !dbg !419
  call void @llvm.dbg.value(metadata i32 %12, metadata !412, metadata !DIExpression()), !dbg !418
  %13 = ashr i32 %5, 2, !dbg !419
  %14 = mul nsw i32 %13, %3, !dbg !419
  %15 = ashr i32 %4, 2, !dbg !419
  %16 = add nsw i32 %14, %15, !dbg !419
  call void @llvm.dbg.value(metadata i32 %16, metadata !413, metadata !DIExpression()), !dbg !418
  %17 = zext i32 %12 to i64
  %18 = getelementptr inbounds [16 x i32], ptr @hpel_ref0, i64 0, i64 %17, !dbg !419
  %19 = load i32, ptr %18, align 4, !dbg !419, !tbaa !272
  %20 = sext i32 %19 to i64, !dbg !419
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20, !dbg !419
  %22 = load ptr, ptr %21, align 8, !dbg !419, !tbaa !149
  %23 = sext i32 %16 to i64, !dbg !419
  %24 = getelementptr inbounds i8, ptr %22, i64 %23, !dbg !419
  %25 = icmp eq i32 %9, 3, !dbg !419
  %26 = select i1 %25, i32 %3, i32 0, !dbg !419
  %27 = sext i32 %26 to i64, !dbg !419
  %28 = getelementptr inbounds i8, ptr %24, i64 %27, !dbg !419
  call void @llvm.dbg.value(metadata ptr %28, metadata !414, metadata !DIExpression()), !dbg !418
  %29 = and i32 %12, 5, !dbg !420
  %30 = icmp eq i32 %29, 0, !dbg !420
  br i1 %30, label %45, label %31, !dbg !419

31:                                               ; preds = %8
  %32 = getelementptr inbounds [16 x i32], ptr @hpel_ref1, i64 0, i64 %17, !dbg !421
  %33 = load i32, ptr %32, align 4, !dbg !421, !tbaa !272
  %34 = sext i32 %33 to i64, !dbg !421
  %35 = getelementptr inbounds ptr, ptr %2, i64 %34, !dbg !421
  %36 = load ptr, ptr %35, align 8, !dbg !421, !tbaa !149
  %37 = getelementptr inbounds i8, ptr %36, i64 %23, !dbg !421
  %38 = icmp eq i32 %11, 3, !dbg !421
  %39 = zext i1 %38 to i64
  %40 = getelementptr inbounds i8, ptr %37, i64 %39, !dbg !421
  call void @llvm.dbg.value(metadata ptr %40, metadata !415, metadata !DIExpression()), !dbg !422
  %41 = ashr i32 %6, 2, !dbg !421
  %42 = sext i32 %41 to i64, !dbg !421
  %43 = getelementptr inbounds [6 x ptr], ptr @x264_pixel_avg_wtab_cache64_sse2, i64 0, i64 %42, !dbg !421
  %44 = load ptr, ptr %43, align 8, !dbg !421, !tbaa !149
  tail call void %44(ptr noundef %0, i32 noundef %1, ptr noundef %28, i32 noundef %3, ptr noundef %40, i32 noundef %7) #4, !dbg !421
  br label %50, !dbg !421

45:                                               ; preds = %8
  %46 = ashr i32 %6, 2, !dbg !423
  %47 = sext i32 %46 to i64, !dbg !423
  %48 = getelementptr inbounds [5 x ptr], ptr @x264_mc_copy_wtab_sse2, i64 0, i64 %47, !dbg !423
  %49 = load ptr, ptr %48, align 8, !dbg !423, !tbaa !149
  tail call void %49(ptr noundef %0, i32 noundef %1, ptr noundef %28, i32 noundef %3, i32 noundef %7) #4, !dbg !423
  br label %50

50:                                               ; preds = %45, %31
  ret void, !dbg !419
}

; Function Attrs: nounwind uwtable
define internal ptr @get_ref_cache64_sse2(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 !dbg !425 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !427, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata ptr %1, metadata !428, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata ptr %2, metadata !429, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i32 %3, metadata !430, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i32 %4, metadata !431, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i32 %5, metadata !432, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i32 %6, metadata !433, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i32 %7, metadata !434, metadata !DIExpression()), !dbg !441
  %9 = and i32 %5, 3, !dbg !442
  %10 = shl nuw nsw i32 %9, 2, !dbg !442
  %11 = and i32 %4, 3, !dbg !442
  %12 = or i32 %10, %11, !dbg !442
  call void @llvm.dbg.value(metadata i32 %12, metadata !435, metadata !DIExpression()), !dbg !441
  %13 = ashr i32 %5, 2, !dbg !442
  %14 = mul nsw i32 %13, %3, !dbg !442
  %15 = ashr i32 %4, 2, !dbg !442
  %16 = add nsw i32 %14, %15, !dbg !442
  call void @llvm.dbg.value(metadata i32 %16, metadata !436, metadata !DIExpression()), !dbg !441
  %17 = zext i32 %12 to i64
  %18 = getelementptr inbounds [16 x i32], ptr @hpel_ref0, i64 0, i64 %17, !dbg !442
  %19 = load i32, ptr %18, align 4, !dbg !442, !tbaa !272
  %20 = sext i32 %19 to i64, !dbg !442
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20, !dbg !442
  %22 = load ptr, ptr %21, align 8, !dbg !442, !tbaa !149
  %23 = sext i32 %16 to i64, !dbg !442
  %24 = getelementptr inbounds i8, ptr %22, i64 %23, !dbg !442
  %25 = icmp eq i32 %9, 3, !dbg !442
  %26 = select i1 %25, i32 %3, i32 0, !dbg !442
  %27 = sext i32 %26 to i64, !dbg !442
  %28 = getelementptr inbounds i8, ptr %24, i64 %27, !dbg !442
  call void @llvm.dbg.value(metadata ptr %28, metadata !437, metadata !DIExpression()), !dbg !441
  %29 = and i32 %12, 5, !dbg !443
  %30 = icmp eq i32 %29, 0, !dbg !443
  br i1 %30, label %46, label %31, !dbg !442

31:                                               ; preds = %8
  %32 = getelementptr inbounds [16 x i32], ptr @hpel_ref1, i64 0, i64 %17, !dbg !444
  %33 = load i32, ptr %32, align 4, !dbg !444, !tbaa !272
  %34 = sext i32 %33 to i64, !dbg !444
  %35 = getelementptr inbounds ptr, ptr %2, i64 %34, !dbg !444
  %36 = load ptr, ptr %35, align 8, !dbg !444, !tbaa !149
  %37 = getelementptr inbounds i8, ptr %36, i64 %23, !dbg !444
  %38 = icmp eq i32 %11, 3, !dbg !444
  %39 = zext i1 %38 to i64
  %40 = getelementptr inbounds i8, ptr %37, i64 %39, !dbg !444
  call void @llvm.dbg.value(metadata ptr %40, metadata !438, metadata !DIExpression()), !dbg !445
  %41 = ashr i32 %6, 2, !dbg !444
  %42 = sext i32 %41 to i64, !dbg !444
  %43 = getelementptr inbounds [6 x ptr], ptr @x264_pixel_avg_wtab_cache64_sse2, i64 0, i64 %42, !dbg !444
  %44 = load ptr, ptr %43, align 8, !dbg !444, !tbaa !149
  %45 = load i32, ptr %1, align 4, !dbg !444, !tbaa !272
  tail call void %44(ptr noundef %0, i32 noundef %45, ptr noundef %28, i32 noundef %3, ptr noundef %40, i32 noundef %7) #4, !dbg !444
  br label %47

46:                                               ; preds = %8
  store i32 %3, ptr %1, align 4, !dbg !446, !tbaa !272
  br label %47, !dbg !446

47:                                               ; preds = %46, %31
  %48 = phi ptr [ %0, %31 ], [ %28, %46 ], !dbg !443
  ret ptr %48, !dbg !442
}

; Function Attrs: nounwind uwtable
define internal ptr @get_ref_sse2_misalign(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 !dbg !448 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !450, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata ptr %1, metadata !451, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata ptr %2, metadata !452, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i32 %3, metadata !453, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i32 %4, metadata !454, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i32 %5, metadata !455, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i32 %6, metadata !456, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i32 %7, metadata !457, metadata !DIExpression()), !dbg !464
  %9 = and i32 %5, 3, !dbg !465
  %10 = shl nuw nsw i32 %9, 2, !dbg !465
  %11 = and i32 %4, 3, !dbg !465
  %12 = or i32 %10, %11, !dbg !465
  call void @llvm.dbg.value(metadata i32 %12, metadata !458, metadata !DIExpression()), !dbg !464
  %13 = ashr i32 %5, 2, !dbg !465
  %14 = mul nsw i32 %13, %3, !dbg !465
  %15 = ashr i32 %4, 2, !dbg !465
  %16 = add nsw i32 %14, %15, !dbg !465
  call void @llvm.dbg.value(metadata i32 %16, metadata !459, metadata !DIExpression()), !dbg !464
  %17 = zext i32 %12 to i64
  %18 = getelementptr inbounds [16 x i32], ptr @hpel_ref0, i64 0, i64 %17, !dbg !465
  %19 = load i32, ptr %18, align 4, !dbg !465, !tbaa !272
  %20 = sext i32 %19 to i64, !dbg !465
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20, !dbg !465
  %22 = load ptr, ptr %21, align 8, !dbg !465, !tbaa !149
  %23 = sext i32 %16 to i64, !dbg !465
  %24 = getelementptr inbounds i8, ptr %22, i64 %23, !dbg !465
  %25 = icmp eq i32 %9, 3, !dbg !465
  %26 = select i1 %25, i32 %3, i32 0, !dbg !465
  %27 = sext i32 %26 to i64, !dbg !465
  %28 = getelementptr inbounds i8, ptr %24, i64 %27, !dbg !465
  call void @llvm.dbg.value(metadata ptr %28, metadata !460, metadata !DIExpression()), !dbg !464
  %29 = and i32 %12, 5, !dbg !466
  %30 = icmp eq i32 %29, 0, !dbg !466
  br i1 %30, label %46, label %31, !dbg !465

31:                                               ; preds = %8
  %32 = getelementptr inbounds [16 x i32], ptr @hpel_ref1, i64 0, i64 %17, !dbg !467
  %33 = load i32, ptr %32, align 4, !dbg !467, !tbaa !272
  %34 = sext i32 %33 to i64, !dbg !467
  %35 = getelementptr inbounds ptr, ptr %2, i64 %34, !dbg !467
  %36 = load ptr, ptr %35, align 8, !dbg !467, !tbaa !149
  %37 = getelementptr inbounds i8, ptr %36, i64 %23, !dbg !467
  %38 = icmp eq i32 %11, 3, !dbg !467
  %39 = zext i1 %38 to i64
  %40 = getelementptr inbounds i8, ptr %37, i64 %39, !dbg !467
  call void @llvm.dbg.value(metadata ptr %40, metadata !461, metadata !DIExpression()), !dbg !468
  %41 = ashr i32 %6, 2, !dbg !467
  %42 = sext i32 %41 to i64, !dbg !467
  %43 = getelementptr inbounds [6 x ptr], ptr @x264_pixel_avg_wtab_sse2_misalign, i64 0, i64 %42, !dbg !467
  %44 = load ptr, ptr %43, align 8, !dbg !467, !tbaa !149
  %45 = load i32, ptr %1, align 4, !dbg !467, !tbaa !272
  tail call void %44(ptr noundef %0, i32 noundef %45, ptr noundef %28, i32 noundef %3, ptr noundef %40, i32 noundef %7) #4, !dbg !467
  br label %47

46:                                               ; preds = %8
  store i32 %3, ptr %1, align 4, !dbg !469, !tbaa !272
  br label %47, !dbg !469

47:                                               ; preds = %46, %31
  %48 = phi ptr [ %0, %31 ], [ %28, %46 ], !dbg !466
  ret ptr %48, !dbg !465
}

declare void @x264_pixel_avg_16x16_ssse3(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_16x8_ssse3(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_8x16_ssse3(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_8x8_ssse3(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_8x4_ssse3(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_4x8_ssse3(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_4x4_ssse3(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg_4x2_ssse3(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_hpel_filter_ssse3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare void @x264_frame_init_lowres_core_ssse3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare void @x264_mc_chroma_ssse3(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg2_w4_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @x264_pixel_avg2_w8_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @x264_pixel_avg2_w12_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @x264_pixel_avg2_w16_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @x264_pixel_avg2_w20_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare !dbg !471 ptr @x264_malloc(i32 noundef) local_unnamed_addr #1

declare !dbg !476 void @x264_hpel_filter_v_mmxext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !479 void @x264_hpel_filter_c_mmxext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !482 void @x264_hpel_filter_h_mmxext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !485 void @x264_sfence() local_unnamed_addr #1

declare !dbg !488 void @x264_free(ptr noundef) local_unnamed_addr #1

declare !dbg !491 void @x264_hpel_filter_h_sse2(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !492 void @x264_hpel_filter_v_sse2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !493 void @x264_hpel_filter_c_sse2_misalign(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @x264_pixel_avg2_w16_sse2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @x264_pixel_avg2_w20_sse2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @x264_mc_copy_w16_sse2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @x264_pixel_avg2_w8_cache64_mmxext(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @x264_pixel_avg2_w16_cache64_sse2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @x264_pixel_avg2_w20_cache64_sse2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @x264_pixel_avg2_w20_sse2_misalign(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #2 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hpel_ref0", scope: !2, file: !3, line: 126, type: !24, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !21, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "common/x86/mc-c.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "b3fbcb41a4bfcc64fb8689e8a951dd43")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 30, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./common/pixel.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "aba138e44f0e52bc0158be0d182b79c1")
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
!19 = !{!20}
!20 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!21 = !{!0, !22, !29, !44, !53, !55, !57, !59}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "hpel_ref1", scope: !2, file: !3, line: 127, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 512, elements: !27)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{!28}
!28 = !DISubrange(count: 16)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "x264_pixel_avg_wtab_mmxext", scope: !2, file: !3, line: 104, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 384, elements: !42)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36, !26, !36, !26, !36, !26}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !38, line: 24, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !40, line: 38, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !{!43}
!43 = !DISubrange(count: 6)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "x264_mc_copy_wtab_mmx", scope: !2, file: !3, line: 123, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 320, elements: !51)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !36, !26, !36, !26, !26}
!51 = !{!52}
!52 = !DISubrange(count: 5)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "x264_pixel_avg_wtab_sse2", scope: !2, file: !3, line: 109, type: !31, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "x264_mc_copy_wtab_sse2", scope: !2, file: !3, line: 124, type: !46, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "x264_pixel_avg_wtab_cache64_sse2", scope: !2, file: !3, line: 111, type: !31, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "x264_pixel_avg_wtab_sse2_misalign", scope: !2, file: !3, line: 110, type: !31, isLocal: true, isDefinition: true)
!61 = !{i32 7, !"Dwarf Version", i32 5}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = !{i32 8, !"PIC Level", i32 2}
!65 = !{i32 7, !"PIE Level", i32 2}
!66 = !{i32 7, !"uwtable", i32 2}
!67 = !{!"clang version 16.0.0"}
!68 = distinct !DISubprogram(name: "x264_mc_init_mmx", scope: !3, file: !3, line: 234, type: !69, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !26, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !73, line: 71, baseType: !74)
!73 = !DIFile(filename: "./common/mc.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "d49d7420aafa05a86bee506aef111ff0")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !73, line: 31, size: 1792, elements: !75)
!75 = !{!76, !81, !86, !90, !97, !101, !102, !106, !110, !111, !115, !125, !129}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !74, file: !73, line: 33, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !36, !26, !80, !26, !26, !26, !26, !26}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !74, file: !73, line: 38, baseType: !82, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!36, !36, !85, !80, !26, !26, !26, !26, !26}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !74, file: !73, line: 44, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !36, !26, !36, !26, !26, !26, !26, !26}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !74, file: !73, line: 48, baseType: !91, size: 640, offset: 192)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 640, elements: !95)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !36, !26, !36, !26, !36, !26, !26}
!95 = !{!96}
!96 = !DISubrange(count: 10)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !74, file: !73, line: 51, baseType: !98, size: 448, offset: 832)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 448, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 7)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !74, file: !73, line: 52, baseType: !48, size: 64, offset: 1280)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !74, file: !73, line: 54, baseType: !103, size: 64, offset: 1344)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !36, !26, !36, !26, !26, !26}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !74, file: !73, line: 57, baseType: !107, size: 64, offset: 1408)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !36, !36, !36, !36, !26, !26, !26}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !74, file: !73, line: 61, baseType: !48, size: 64, offset: 1472)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !74, file: !73, line: 64, baseType: !112, size: 64, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !36, !26, !26}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !74, file: !73, line: 66, baseType: !116, size: 64, offset: 1600)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !119, !120, !122}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 46, baseType: !124)
!123 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!124 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !74, file: !73, line: 67, baseType: !126, size: 64, offset: 1664)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !119, !26}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !74, file: !73, line: 69, baseType: !130, size: 64, offset: 1728)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !36, !36, !36, !36, !36, !26, !26, !26, !26}
!133 = !{!134, !135}
!134 = !DILocalVariable(name: "cpu", arg: 1, scope: !68, file: !3, line: 234, type: !26)
!135 = !DILocalVariable(name: "pf", arg: 2, scope: !68, file: !3, line: 234, type: !71)
!136 = !DILocation(line: 0, scope: !68)
!137 = !DILocation(line: 236, column: 14, scope: !138)
!138 = distinct !DILexicalBlock(scope: !68, file: !3, line: 236, column: 9)
!139 = !DILocation(line: 236, column: 9, scope: !68)
!140 = !DILocation(line: 239, column: 9, scope: !68)
!141 = !DILocation(line: 239, column: 30, scope: !68)
!142 = !{!143, !144, i64 160}
!143 = !{!"", !144, i64 0, !144, i64 8, !144, i64 16, !145, i64 24, !145, i64 104, !144, i64 160, !144, i64 168, !144, i64 176, !144, i64 184, !144, i64 192, !144, i64 200, !144, i64 208, !144, i64 216}
!144 = !{!"any pointer", !145, i64 0}
!145 = !{!"omnipotent char", !146, i64 0}
!146 = !{!"Simple C/C++ TBAA"}
!147 = !DILocation(line: 240, column: 9, scope: !68)
!148 = !DILocation(line: 240, column: 27, scope: !68)
!149 = !{!144, !144, i64 0}
!150 = !DILocation(line: 241, column: 5, scope: !68)
!151 = !DILocation(line: 241, column: 27, scope: !68)
!152 = !DILocation(line: 242, column: 5, scope: !68)
!153 = !DILocation(line: 242, column: 27, scope: !68)
!154 = !DILocation(line: 243, column: 9, scope: !68)
!155 = !DILocation(line: 243, column: 24, scope: !68)
!156 = !{!143, !144, i64 200}
!157 = !DILocation(line: 244, column: 9, scope: !68)
!158 = !DILocation(line: 244, column: 25, scope: !68)
!159 = !{!143, !144, i64 208}
!160 = !DILocation(line: 246, column: 14, scope: !161)
!161 = distinct !DILexicalBlock(scope: !68, file: !3, line: 246, column: 9)
!162 = !DILocation(line: 246, column: 9, scope: !68)
!163 = !DILocation(line: 249, column: 17, scope: !68)
!164 = !{!143, !144, i64 0}
!165 = !DILocation(line: 250, column: 9, scope: !68)
!166 = !DILocation(line: 250, column: 17, scope: !68)
!167 = !{!143, !144, i64 8}
!168 = !DILocation(line: 251, column: 9, scope: !68)
!169 = !DILocation(line: 251, column: 19, scope: !68)
!170 = !{!143, !144, i64 16}
!171 = !DILocation(line: 253, column: 9, scope: !68)
!172 = !DILocation(line: 253, column: 26, scope: !68)
!173 = !DILocation(line: 254, column: 5, scope: !68)
!174 = !DILocation(line: 254, column: 26, scope: !68)
!175 = !DILocation(line: 255, column: 5, scope: !68)
!176 = !DILocation(line: 255, column: 26, scope: !68)
!177 = !DILocation(line: 256, column: 5, scope: !68)
!178 = !DILocation(line: 256, column: 26, scope: !68)
!179 = !DILocation(line: 257, column: 5, scope: !68)
!180 = !DILocation(line: 257, column: 26, scope: !68)
!181 = !DILocation(line: 258, column: 5, scope: !68)
!182 = !DILocation(line: 258, column: 26, scope: !68)
!183 = !DILocation(line: 259, column: 5, scope: !68)
!184 = !DILocation(line: 259, column: 26, scope: !68)
!185 = !DILocation(line: 260, column: 5, scope: !68)
!186 = !DILocation(line: 260, column: 26, scope: !68)
!187 = !DILocation(line: 262, column: 9, scope: !68)
!188 = !DILocation(line: 262, column: 20, scope: !68)
!189 = !{!143, !144, i64 168}
!190 = !DILocation(line: 263, column: 9, scope: !68)
!191 = !DILocation(line: 263, column: 21, scope: !68)
!192 = !{!143, !144, i64 176}
!193 = !DILocation(line: 264, column: 9, scope: !68)
!194 = !DILocation(line: 264, column: 32, scope: !68)
!195 = !{!143, !144, i64 216}
!196 = !DILocation(line: 266, column: 9, scope: !68)
!197 = !DILocation(line: 266, column: 23, scope: !68)
!198 = !{!143, !144, i64 184}
!199 = !DILocation(line: 267, column: 9, scope: !68)
!200 = !DILocation(line: 267, column: 23, scope: !68)
!201 = !{!143, !144, i64 192}
!202 = !DILocation(line: 284, column: 14, scope: !203)
!203 = distinct !DILexicalBlock(scope: !68, file: !3, line: 284, column: 9)
!204 = !DILocation(line: 284, column: 9, scope: !68)
!205 = !DILocation(line: 287, column: 24, scope: !68)
!206 = !DILocation(line: 288, column: 25, scope: !68)
!207 = !DILocation(line: 289, column: 21, scope: !68)
!208 = !DILocation(line: 291, column: 12, scope: !209)
!209 = distinct !DILexicalBlock(scope: !68, file: !3, line: 291, column: 9)
!210 = !DILocation(line: 291, column: 9, scope: !68)
!211 = !DILocation(line: 294, column: 27, scope: !68)
!212 = !DILocation(line: 295, column: 26, scope: !68)
!213 = !DILocation(line: 296, column: 26, scope: !68)
!214 = !DILocation(line: 297, column: 25, scope: !68)
!215 = !DILocation(line: 298, column: 25, scope: !68)
!216 = !DILocation(line: 299, column: 25, scope: !68)
!217 = !DILocation(line: 301, column: 12, scope: !218)
!218 = distinct !DILexicalBlock(scope: !68, file: !3, line: 301, column: 9)
!219 = !DILocation(line: 301, column: 9, scope: !68)
!220 = !DILocation(line: 303, column: 32, scope: !68)
!221 = !DILocation(line: 304, column: 19, scope: !68)
!222 = !DILocation(line: 306, column: 12, scope: !223)
!223 = distinct !DILexicalBlock(scope: !68, file: !3, line: 306, column: 9)
!224 = !DILocation(line: 306, column: 9, scope: !68)
!225 = !DILocation(line: 308, column: 21, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !3, line: 307, column: 5)
!227 = !DILocation(line: 309, column: 21, scope: !226)
!228 = !DILocation(line: 310, column: 16, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !3, line: 310, column: 13)
!230 = !DILocation(line: 310, column: 13, scope: !226)
!231 = !DILocation(line: 312, column: 25, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !3, line: 311, column: 9)
!233 = !DILocation(line: 313, column: 25, scope: !232)
!234 = !DILocation(line: 314, column: 9, scope: !232)
!235 = !DILocation(line: 315, column: 13, scope: !226)
!236 = !DILocation(line: 316, column: 25, scope: !237)
!237 = distinct !DILexicalBlock(scope: !226, file: !3, line: 315, column: 13)
!238 = !DILocation(line: 316, column: 13, scope: !237)
!239 = !DILocation(line: 319, column: 14, scope: !240)
!240 = distinct !DILexicalBlock(scope: !68, file: !3, line: 319, column: 9)
!241 = !DILocation(line: 319, column: 9, scope: !68)
!242 = !DILocation(line: 322, column: 26, scope: !68)
!243 = !DILocation(line: 323, column: 26, scope: !68)
!244 = !DILocation(line: 324, column: 26, scope: !68)
!245 = !DILocation(line: 325, column: 26, scope: !68)
!246 = !DILocation(line: 326, column: 26, scope: !68)
!247 = !DILocation(line: 327, column: 26, scope: !68)
!248 = !DILocation(line: 328, column: 26, scope: !68)
!249 = !DILocation(line: 329, column: 26, scope: !68)
!250 = !DILocation(line: 331, column: 21, scope: !68)
!251 = !DILocation(line: 332, column: 32, scope: !68)
!252 = !DILocation(line: 333, column: 19, scope: !68)
!253 = !DILocation(line: 334, column: 1, scope: !68)
!254 = distinct !DISubprogram(name: "mc_luma_mmxext", scope: !3, file: !3, line: 152, type: !78, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!256 = !DILocalVariable(name: "dst", arg: 1, scope: !254, file: !3, line: 152, type: !36)
!257 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !254, file: !3, line: 152, type: !26)
!258 = !DILocalVariable(name: "src", arg: 3, scope: !254, file: !3, line: 152, type: !80)
!259 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !254, file: !3, line: 152, type: !26)
!260 = !DILocalVariable(name: "mvx", arg: 5, scope: !254, file: !3, line: 152, type: !26)
!261 = !DILocalVariable(name: "mvy", arg: 6, scope: !254, file: !3, line: 152, type: !26)
!262 = !DILocalVariable(name: "i_width", arg: 7, scope: !254, file: !3, line: 152, type: !26)
!263 = !DILocalVariable(name: "i_height", arg: 8, scope: !254, file: !3, line: 152, type: !26)
!264 = !DILocalVariable(name: "qpel_idx", scope: !254, file: !3, line: 152, type: !26)
!265 = !DILocalVariable(name: "offset", scope: !254, file: !3, line: 152, type: !26)
!266 = !DILocalVariable(name: "src1", scope: !254, file: !3, line: 152, type: !36)
!267 = !DILocalVariable(name: "src2", scope: !268, file: !3, line: 152, type: !36)
!268 = distinct !DILexicalBlock(scope: !269, file: !3, line: 152, column: 1)
!269 = distinct !DILexicalBlock(scope: !254, file: !3, line: 152, column: 1)
!270 = !DILocation(line: 0, scope: !254)
!271 = !DILocation(line: 152, column: 1, scope: !254)
!272 = !{!273, !273, i64 0}
!273 = !{!"int", !145, i64 0}
!274 = !DILocation(line: 152, column: 1, scope: !269)
!275 = !DILocation(line: 152, column: 1, scope: !268)
!276 = !DILocation(line: 0, scope: !268)
!277 = !DILocation(line: 152, column: 1, scope: !278)
!278 = distinct !DILexicalBlock(scope: !269, file: !3, line: 152, column: 1)
!279 = distinct !DISubprogram(name: "get_ref_mmxext", scope: !3, file: !3, line: 184, type: !83, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!281 = !DILocalVariable(name: "dst", arg: 1, scope: !279, file: !3, line: 184, type: !36)
!282 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !279, file: !3, line: 184, type: !85)
!283 = !DILocalVariable(name: "src", arg: 3, scope: !279, file: !3, line: 184, type: !80)
!284 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !279, file: !3, line: 184, type: !26)
!285 = !DILocalVariable(name: "mvx", arg: 5, scope: !279, file: !3, line: 184, type: !26)
!286 = !DILocalVariable(name: "mvy", arg: 6, scope: !279, file: !3, line: 184, type: !26)
!287 = !DILocalVariable(name: "i_width", arg: 7, scope: !279, file: !3, line: 184, type: !26)
!288 = !DILocalVariable(name: "i_height", arg: 8, scope: !279, file: !3, line: 184, type: !26)
!289 = !DILocalVariable(name: "qpel_idx", scope: !279, file: !3, line: 184, type: !26)
!290 = !DILocalVariable(name: "offset", scope: !279, file: !3, line: 184, type: !26)
!291 = !DILocalVariable(name: "src1", scope: !279, file: !3, line: 184, type: !36)
!292 = !DILocalVariable(name: "src2", scope: !293, file: !3, line: 184, type: !36)
!293 = distinct !DILexicalBlock(scope: !294, file: !3, line: 184, column: 1)
!294 = distinct !DILexicalBlock(scope: !279, file: !3, line: 184, column: 1)
!295 = !DILocation(line: 0, scope: !279)
!296 = !DILocation(line: 184, column: 1, scope: !279)
!297 = !DILocation(line: 184, column: 1, scope: !294)
!298 = !DILocation(line: 184, column: 1, scope: !293)
!299 = !DILocation(line: 0, scope: !293)
!300 = !DILocation(line: 184, column: 1, scope: !301)
!301 = distinct !DILexicalBlock(scope: !294, file: !3, line: 184, column: 1)
!302 = distinct !DISubprogram(name: "x264_hpel_filter_mmxext", scope: !3, file: !3, line: 223, type: !108, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !303)
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311, !317}
!304 = !DILocalVariable(name: "dsth", arg: 1, scope: !302, file: !3, line: 223, type: !36)
!305 = !DILocalVariable(name: "dstv", arg: 2, scope: !302, file: !3, line: 223, type: !36)
!306 = !DILocalVariable(name: "dstc", arg: 3, scope: !302, file: !3, line: 223, type: !36)
!307 = !DILocalVariable(name: "src", arg: 4, scope: !302, file: !3, line: 223, type: !36)
!308 = !DILocalVariable(name: "stride", arg: 5, scope: !302, file: !3, line: 223, type: !26)
!309 = !DILocalVariable(name: "width", arg: 6, scope: !302, file: !3, line: 223, type: !26)
!310 = !DILocalVariable(name: "height", arg: 7, scope: !302, file: !3, line: 223, type: !26)
!311 = !DILocalVariable(name: "buf", scope: !302, file: !3, line: 223, type: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !314, line: 25, baseType: !315)
!314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !40, line: 39, baseType: !316)
!316 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!317 = !DILocalVariable(name: "realign", scope: !302, file: !3, line: 223, type: !26)
!318 = !DILocation(line: 0, scope: !302)
!319 = !DILocation(line: 223, column: 1, scope: !302)
!320 = !DILocation(line: 223, column: 1, scope: !321)
!321 = distinct !DILexicalBlock(scope: !302, file: !3, line: 223, column: 1)
!322 = distinct !{!322, !319, !319, !323}
!323 = !{!"llvm.loop.mustprogress"}
!324 = distinct !DISubprogram(name: "x264_hpel_filter_sse2_amd", scope: !3, file: !3, line: 224, type: !108, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !334}
!326 = !DILocalVariable(name: "dsth", arg: 1, scope: !324, file: !3, line: 224, type: !36)
!327 = !DILocalVariable(name: "dstv", arg: 2, scope: !324, file: !3, line: 224, type: !36)
!328 = !DILocalVariable(name: "dstc", arg: 3, scope: !324, file: !3, line: 224, type: !36)
!329 = !DILocalVariable(name: "src", arg: 4, scope: !324, file: !3, line: 224, type: !36)
!330 = !DILocalVariable(name: "stride", arg: 5, scope: !324, file: !3, line: 224, type: !26)
!331 = !DILocalVariable(name: "width", arg: 6, scope: !324, file: !3, line: 224, type: !26)
!332 = !DILocalVariable(name: "height", arg: 7, scope: !324, file: !3, line: 224, type: !26)
!333 = !DILocalVariable(name: "buf", scope: !324, file: !3, line: 224, type: !312)
!334 = !DILocalVariable(name: "realign", scope: !324, file: !3, line: 224, type: !26)
!335 = !DILocation(line: 0, scope: !324)
!336 = !DILocation(line: 224, column: 1, scope: !324)
!337 = !DILocation(line: 224, column: 1, scope: !338)
!338 = distinct !DILexicalBlock(scope: !324, file: !3, line: 224, column: 1)
!339 = distinct !{!339, !336, !336, !323}
!340 = distinct !DISubprogram(name: "x264_hpel_filter_sse2_misalign", scope: !3, file: !3, line: 232, type: !108, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350}
!342 = !DILocalVariable(name: "dsth", arg: 1, scope: !340, file: !3, line: 232, type: !36)
!343 = !DILocalVariable(name: "dstv", arg: 2, scope: !340, file: !3, line: 232, type: !36)
!344 = !DILocalVariable(name: "dstc", arg: 3, scope: !340, file: !3, line: 232, type: !36)
!345 = !DILocalVariable(name: "src", arg: 4, scope: !340, file: !3, line: 232, type: !36)
!346 = !DILocalVariable(name: "stride", arg: 5, scope: !340, file: !3, line: 232, type: !26)
!347 = !DILocalVariable(name: "width", arg: 6, scope: !340, file: !3, line: 232, type: !26)
!348 = !DILocalVariable(name: "height", arg: 7, scope: !340, file: !3, line: 232, type: !26)
!349 = !DILocalVariable(name: "buf", scope: !340, file: !3, line: 232, type: !312)
!350 = !DILocalVariable(name: "realign", scope: !340, file: !3, line: 232, type: !26)
!351 = !DILocation(line: 0, scope: !340)
!352 = !DILocation(line: 232, column: 1, scope: !340)
!353 = !DILocation(line: 232, column: 1, scope: !354)
!354 = distinct !DILexicalBlock(scope: !340, file: !3, line: 232, column: 1)
!355 = distinct !{!355, !352, !352, !323}
!356 = distinct !DISubprogram(name: "mc_luma_sse2", scope: !3, file: !3, line: 157, type: !78, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!358 = !DILocalVariable(name: "dst", arg: 1, scope: !356, file: !3, line: 157, type: !36)
!359 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !356, file: !3, line: 157, type: !26)
!360 = !DILocalVariable(name: "src", arg: 3, scope: !356, file: !3, line: 157, type: !80)
!361 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !356, file: !3, line: 157, type: !26)
!362 = !DILocalVariable(name: "mvx", arg: 5, scope: !356, file: !3, line: 157, type: !26)
!363 = !DILocalVariable(name: "mvy", arg: 6, scope: !356, file: !3, line: 157, type: !26)
!364 = !DILocalVariable(name: "i_width", arg: 7, scope: !356, file: !3, line: 157, type: !26)
!365 = !DILocalVariable(name: "i_height", arg: 8, scope: !356, file: !3, line: 157, type: !26)
!366 = !DILocalVariable(name: "qpel_idx", scope: !356, file: !3, line: 157, type: !26)
!367 = !DILocalVariable(name: "offset", scope: !356, file: !3, line: 157, type: !26)
!368 = !DILocalVariable(name: "src1", scope: !356, file: !3, line: 157, type: !36)
!369 = !DILocalVariable(name: "src2", scope: !370, file: !3, line: 157, type: !36)
!370 = distinct !DILexicalBlock(scope: !371, file: !3, line: 157, column: 1)
!371 = distinct !DILexicalBlock(scope: !356, file: !3, line: 157, column: 1)
!372 = !DILocation(line: 0, scope: !356)
!373 = !DILocation(line: 157, column: 1, scope: !356)
!374 = !DILocation(line: 157, column: 1, scope: !371)
!375 = !DILocation(line: 157, column: 1, scope: !370)
!376 = !DILocation(line: 0, scope: !370)
!377 = !DILocation(line: 157, column: 1, scope: !378)
!378 = distinct !DILexicalBlock(scope: !371, file: !3, line: 157, column: 1)
!379 = distinct !DISubprogram(name: "get_ref_sse2", scope: !3, file: !3, line: 189, type: !83, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !380)
!380 = !{!381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392}
!381 = !DILocalVariable(name: "dst", arg: 1, scope: !379, file: !3, line: 189, type: !36)
!382 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !379, file: !3, line: 189, type: !85)
!383 = !DILocalVariable(name: "src", arg: 3, scope: !379, file: !3, line: 189, type: !80)
!384 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !379, file: !3, line: 189, type: !26)
!385 = !DILocalVariable(name: "mvx", arg: 5, scope: !379, file: !3, line: 189, type: !26)
!386 = !DILocalVariable(name: "mvy", arg: 6, scope: !379, file: !3, line: 189, type: !26)
!387 = !DILocalVariable(name: "i_width", arg: 7, scope: !379, file: !3, line: 189, type: !26)
!388 = !DILocalVariable(name: "i_height", arg: 8, scope: !379, file: !3, line: 189, type: !26)
!389 = !DILocalVariable(name: "qpel_idx", scope: !379, file: !3, line: 189, type: !26)
!390 = !DILocalVariable(name: "offset", scope: !379, file: !3, line: 189, type: !26)
!391 = !DILocalVariable(name: "src1", scope: !379, file: !3, line: 189, type: !36)
!392 = !DILocalVariable(name: "src2", scope: !393, file: !3, line: 189, type: !36)
!393 = distinct !DILexicalBlock(scope: !394, file: !3, line: 189, column: 1)
!394 = distinct !DILexicalBlock(scope: !379, file: !3, line: 189, column: 1)
!395 = !DILocation(line: 0, scope: !379)
!396 = !DILocation(line: 189, column: 1, scope: !379)
!397 = !DILocation(line: 189, column: 1, scope: !394)
!398 = !DILocation(line: 189, column: 1, scope: !393)
!399 = !DILocation(line: 0, scope: !393)
!400 = !DILocation(line: 189, column: 1, scope: !401)
!401 = distinct !DILexicalBlock(scope: !394, file: !3, line: 189, column: 1)
!402 = distinct !DISubprogram(name: "mc_luma_cache64_sse2", scope: !3, file: !3, line: 158, type: !78, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415}
!404 = !DILocalVariable(name: "dst", arg: 1, scope: !402, file: !3, line: 158, type: !36)
!405 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !402, file: !3, line: 158, type: !26)
!406 = !DILocalVariable(name: "src", arg: 3, scope: !402, file: !3, line: 158, type: !80)
!407 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !402, file: !3, line: 158, type: !26)
!408 = !DILocalVariable(name: "mvx", arg: 5, scope: !402, file: !3, line: 158, type: !26)
!409 = !DILocalVariable(name: "mvy", arg: 6, scope: !402, file: !3, line: 158, type: !26)
!410 = !DILocalVariable(name: "i_width", arg: 7, scope: !402, file: !3, line: 158, type: !26)
!411 = !DILocalVariable(name: "i_height", arg: 8, scope: !402, file: !3, line: 158, type: !26)
!412 = !DILocalVariable(name: "qpel_idx", scope: !402, file: !3, line: 158, type: !26)
!413 = !DILocalVariable(name: "offset", scope: !402, file: !3, line: 158, type: !26)
!414 = !DILocalVariable(name: "src1", scope: !402, file: !3, line: 158, type: !36)
!415 = !DILocalVariable(name: "src2", scope: !416, file: !3, line: 158, type: !36)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 158, column: 1)
!417 = distinct !DILexicalBlock(scope: !402, file: !3, line: 158, column: 1)
!418 = !DILocation(line: 0, scope: !402)
!419 = !DILocation(line: 158, column: 1, scope: !402)
!420 = !DILocation(line: 158, column: 1, scope: !417)
!421 = !DILocation(line: 158, column: 1, scope: !416)
!422 = !DILocation(line: 0, scope: !416)
!423 = !DILocation(line: 158, column: 1, scope: !424)
!424 = distinct !DILexicalBlock(scope: !417, file: !3, line: 158, column: 1)
!425 = distinct !DISubprogram(name: "get_ref_cache64_sse2", scope: !3, file: !3, line: 191, type: !83, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !426)
!426 = !{!427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438}
!427 = !DILocalVariable(name: "dst", arg: 1, scope: !425, file: !3, line: 191, type: !36)
!428 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !425, file: !3, line: 191, type: !85)
!429 = !DILocalVariable(name: "src", arg: 3, scope: !425, file: !3, line: 191, type: !80)
!430 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !425, file: !3, line: 191, type: !26)
!431 = !DILocalVariable(name: "mvx", arg: 5, scope: !425, file: !3, line: 191, type: !26)
!432 = !DILocalVariable(name: "mvy", arg: 6, scope: !425, file: !3, line: 191, type: !26)
!433 = !DILocalVariable(name: "i_width", arg: 7, scope: !425, file: !3, line: 191, type: !26)
!434 = !DILocalVariable(name: "i_height", arg: 8, scope: !425, file: !3, line: 191, type: !26)
!435 = !DILocalVariable(name: "qpel_idx", scope: !425, file: !3, line: 191, type: !26)
!436 = !DILocalVariable(name: "offset", scope: !425, file: !3, line: 191, type: !26)
!437 = !DILocalVariable(name: "src1", scope: !425, file: !3, line: 191, type: !36)
!438 = !DILocalVariable(name: "src2", scope: !439, file: !3, line: 191, type: !36)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 191, column: 1)
!440 = distinct !DILexicalBlock(scope: !425, file: !3, line: 191, column: 1)
!441 = !DILocation(line: 0, scope: !425)
!442 = !DILocation(line: 191, column: 1, scope: !425)
!443 = !DILocation(line: 191, column: 1, scope: !440)
!444 = !DILocation(line: 191, column: 1, scope: !439)
!445 = !DILocation(line: 0, scope: !439)
!446 = !DILocation(line: 191, column: 1, scope: !447)
!447 = distinct !DILexicalBlock(scope: !440, file: !3, line: 191, column: 1)
!448 = distinct !DISubprogram(name: "get_ref_sse2_misalign", scope: !3, file: !3, line: 190, type: !83, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !449)
!449 = !{!450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461}
!450 = !DILocalVariable(name: "dst", arg: 1, scope: !448, file: !3, line: 190, type: !36)
!451 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !448, file: !3, line: 190, type: !85)
!452 = !DILocalVariable(name: "src", arg: 3, scope: !448, file: !3, line: 190, type: !80)
!453 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !448, file: !3, line: 190, type: !26)
!454 = !DILocalVariable(name: "mvx", arg: 5, scope: !448, file: !3, line: 190, type: !26)
!455 = !DILocalVariable(name: "mvy", arg: 6, scope: !448, file: !3, line: 190, type: !26)
!456 = !DILocalVariable(name: "i_width", arg: 7, scope: !448, file: !3, line: 190, type: !26)
!457 = !DILocalVariable(name: "i_height", arg: 8, scope: !448, file: !3, line: 190, type: !26)
!458 = !DILocalVariable(name: "qpel_idx", scope: !448, file: !3, line: 190, type: !26)
!459 = !DILocalVariable(name: "offset", scope: !448, file: !3, line: 190, type: !26)
!460 = !DILocalVariable(name: "src1", scope: !448, file: !3, line: 190, type: !36)
!461 = !DILocalVariable(name: "src2", scope: !462, file: !3, line: 190, type: !36)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 190, column: 1)
!463 = distinct !DILexicalBlock(scope: !448, file: !3, line: 190, column: 1)
!464 = !DILocation(line: 0, scope: !448)
!465 = !DILocation(line: 190, column: 1, scope: !448)
!466 = !DILocation(line: 190, column: 1, scope: !463)
!467 = !DILocation(line: 190, column: 1, scope: !462)
!468 = !DILocation(line: 0, scope: !462)
!469 = !DILocation(line: 190, column: 1, scope: !470)
!470 = distinct !DILexicalBlock(scope: !463, file: !3, line: 190, column: 1)
!471 = !DISubprogram(name: "x264_malloc", scope: !472, file: !472, line: 84, type: !473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !475)
!472 = !DIFile(filename: "./common/common.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "4880b62cc871dca4002788746fbccb70")
!473 = !DISubroutineType(types: !474)
!474 = !{!119, !26}
!475 = !{}
!476 = !DISubprogram(name: "x264_hpel_filter_v_mmxext", scope: !3, file: !3, line: 223, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !475)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !36, !36, !312, !26, !26}
!479 = !DISubprogram(name: "x264_hpel_filter_c_mmxext", scope: !3, file: !3, line: 223, type: !480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !475)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !36, !312, !26}
!482 = !DISubprogram(name: "x264_hpel_filter_h_mmxext", scope: !3, file: !3, line: 223, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !475)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !36, !36, !26}
!485 = !DISubprogram(name: "x264_sfence", scope: !3, file: !3, line: 223, type: !486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !475)
!486 = !DISubroutineType(types: !487)
!487 = !{null}
!488 = !DISubprogram(name: "x264_free", scope: !472, file: !472, line: 86, type: !489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !475)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !119}
!491 = !DISubprogram(name: "x264_hpel_filter_h_sse2", scope: !3, file: !3, line: 224, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !475)
!492 = !DISubprogram(name: "x264_hpel_filter_v_sse2", scope: !3, file: !3, line: 232, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !475)
!493 = !DISubprogram(name: "x264_hpel_filter_c_sse2_misalign", scope: !3, file: !3, line: 232, type: !480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !475)
