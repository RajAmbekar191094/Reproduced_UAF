; ModuleID = 'common/dct.c'
source_filename = "common/dct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_dct_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_zigzag_function_t = type { ptr, ptr, ptr, ptr, ptr }

@x264_dct4_weight2_zigzag = dso_local local_unnamed_addr global [2 x [16 x i32]] zeroinitializer, align 16, !dbg !0
@x264_dct8_weight2_tab = internal unnamed_addr constant [64 x i16] [i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201], align 16, !dbg !47
@x264_zigzag_scan8 = internal unnamed_addr constant [2 x [64 x i8]] [[64 x i8] c"\00\08\01\02\09\10\18\11\0A\03\04\0B\12\19 (!\1A\13\0C\05\06\0D\14\1B\22)081*#\1C\15\0E\07\0F\16\1D$+29:3,%\1E\17\1F&-4;<5.'/6=>7?", [64 x i8] c"\00\01\02\08\09\03\04\0A\10\0B\05\06\07\0C\11\18\12\0D\0E\0F\13\19 \1A\14\15\16\17\1B!(\22\1C\1D\1E\1F#)0*$%&'+12,-./3894567:;<=>?"], align 16, !dbg !51
@x264_dct8_weight2_zigzag = dso_local local_unnamed_addr global [2 x [64 x i32]] zeroinitializer, align 16, !dbg !21

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_dct_init(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !62 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !124, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata ptr %1, metadata !125, metadata !DIExpression()), !dbg !126
  store ptr @sub4x4_dct, ptr %1, align 8, !dbg !127, !tbaa !128
  %3 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 1, !dbg !133
  store ptr @add4x4_idct, ptr %3, align 8, !dbg !134, !tbaa !135
  %4 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 2, !dbg !136
  store ptr @sub8x8_dct, ptr %4, align 8, !dbg !137, !tbaa !138
  %5 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 3, !dbg !139
  store ptr @add8x8_idct, ptr %5, align 8, !dbg !140, !tbaa !141
  %6 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 4, !dbg !142
  store ptr @sub16x16_dct, ptr %6, align 8, !dbg !143, !tbaa !144
  %7 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 5, !dbg !145
  store ptr @add16x16_idct, ptr %7, align 8, !dbg !146, !tbaa !147
  %8 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 6, !dbg !148
  store ptr @sub8x8_dct8, ptr %8, align 8, !dbg !149, !tbaa !150
  %9 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 7, !dbg !151
  store ptr @add8x8_idct8, ptr %9, align 8, !dbg !152, !tbaa !153
  %10 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 8, !dbg !154
  store ptr @sub16x16_dct8, ptr %10, align 8, !dbg !155, !tbaa !156
  %11 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 9, !dbg !157
  store ptr @add16x16_idct8, ptr %11, align 8, !dbg !158, !tbaa !159
  %12 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 10, !dbg !160
  store ptr @dct4x4dc, ptr %12, align 8, !dbg !161, !tbaa !162
  %13 = getelementptr inbounds %struct.x264_dct_function_t, ptr %1, i64 0, i32 11, !dbg !163
  store ptr @idct4x4dc, ptr %13, align 8, !dbg !164, !tbaa !165
  %14 = and i32 %0, 8, !dbg !166
  %15 = icmp eq i32 %14, 0, !dbg !166
  br i1 %15, label %17, label %16, !dbg !168

16:                                               ; preds = %2
  store ptr @x264_sub4x4_dct_mmx, ptr %1, align 8, !dbg !169, !tbaa !128
  store ptr @x264_add4x4_idct_mmx, ptr %3, align 8, !dbg !171, !tbaa !135
  store ptr @x264_dct4x4dc_mmx, ptr %12, align 8, !dbg !172, !tbaa !162
  store ptr @x264_idct4x4dc_mmx, ptr %13, align 8, !dbg !173, !tbaa !165
  br label %17, !dbg !174

17:                                               ; preds = %16, %2
  %18 = and i32 %0, 64, !dbg !175
  %19 = icmp eq i32 %18, 0, !dbg !175
  br i1 %19, label %21, label %20, !dbg !177

20:                                               ; preds = %17
  store ptr @x264_sub8x8_dct8_sse2, ptr %8, align 8, !dbg !178, !tbaa !150
  store ptr @x264_sub16x16_dct8_sse2, ptr %10, align 8, !dbg !180, !tbaa !156
  store ptr @x264_add8x8_idct8_sse2, ptr %9, align 8, !dbg !181, !tbaa !153
  store ptr @x264_add16x16_idct8_sse2, ptr %11, align 8, !dbg !182, !tbaa !159
  store ptr @x264_sub8x8_dct_sse2, ptr %4, align 8, !dbg !183, !tbaa !138
  store ptr @x264_sub16x16_dct_sse2, ptr %6, align 8, !dbg !184, !tbaa !144
  store ptr @x264_add8x8_idct_sse2, ptr %5, align 8, !dbg !185, !tbaa !141
  store ptr @x264_add16x16_idct_sse2, ptr %7, align 8, !dbg !186, !tbaa !147
  br label %21, !dbg !187

21:                                               ; preds = %20, %17
  ret void, !dbg !188
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub4x4_dct(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 !dbg !189 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !191, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata ptr %1, metadata !192, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata ptr %2, metadata !193, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata ptr undef, metadata !213, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i32 4, metadata !218, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i32 16, metadata !220, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i32 32, metadata !222, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i32 0, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 0, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !225
  %4 = load i8, ptr %1, align 1, !dbg !227, !tbaa !234
  %5 = zext i8 %4 to i32, !dbg !227
  %6 = load i8, ptr %2, align 1, !dbg !235, !tbaa !234
  %7 = zext i8 %6 to i32, !dbg !235
  %8 = sub nsw i32 %5, %7, !dbg !236
  call void @llvm.dbg.value(metadata !DIArgList(i8 %4, i8 %6), metadata !194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !225
  %9 = getelementptr inbounds i8, ptr %1, i64 1, !dbg !227
  %10 = load i8, ptr %9, align 1, !dbg !227, !tbaa !234
  %11 = zext i8 %10 to i32, !dbg !227
  %12 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !235
  %13 = load i8, ptr %12, align 1, !dbg !235, !tbaa !234
  %14 = zext i8 %13 to i32, !dbg !235
  %15 = sub nsw i32 %11, %14, !dbg !236
  call void @llvm.dbg.value(metadata !DIArgList(i8 %10, i8 %13), metadata !194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !225
  %16 = getelementptr inbounds i8, ptr %1, i64 2, !dbg !227
  %17 = load i8, ptr %16, align 1, !dbg !227, !tbaa !234
  %18 = zext i8 %17 to i32, !dbg !227
  %19 = getelementptr inbounds i8, ptr %2, i64 2, !dbg !235
  %20 = load i8, ptr %19, align 1, !dbg !235, !tbaa !234
  %21 = zext i8 %20 to i32, !dbg !235
  %22 = sub nsw i32 %18, %21, !dbg !236
  call void @llvm.dbg.value(metadata !DIArgList(i8 %17, i8 %20), metadata !194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !225
  %23 = getelementptr inbounds i8, ptr %1, i64 3, !dbg !227
  %24 = load i8, ptr %23, align 1, !dbg !227, !tbaa !234
  %25 = zext i8 %24 to i32, !dbg !227
  %26 = getelementptr inbounds i8, ptr %2, i64 3, !dbg !235
  %27 = load i8, ptr %26, align 1, !dbg !235, !tbaa !234
  %28 = zext i8 %27 to i32, !dbg !235
  %29 = sub nsw i32 %25, %28, !dbg !236
  call void @llvm.dbg.value(metadata !DIArgList(i8 %24, i8 %27), metadata !194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !225
  %30 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !237
  call void @llvm.dbg.value(metadata ptr %30, metadata !219, metadata !DIExpression()), !dbg !225
  %31 = getelementptr inbounds i8, ptr %2, i64 32, !dbg !238
  call void @llvm.dbg.value(metadata ptr %31, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 1, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 1, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %30, metadata !219, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %31, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !225
  %32 = load i8, ptr %30, align 1, !dbg !227, !tbaa !234
  %33 = zext i8 %32 to i32, !dbg !227
  %34 = load i8, ptr %31, align 1, !dbg !235, !tbaa !234
  %35 = zext i8 %34 to i32, !dbg !235
  %36 = sub nsw i32 %33, %35, !dbg !236
  call void @llvm.dbg.value(metadata !DIArgList(i8 %32, i8 %34), metadata !194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !225
  %37 = getelementptr inbounds i8, ptr %1, i64 17, !dbg !227
  %38 = load i8, ptr %37, align 1, !dbg !227, !tbaa !234
  %39 = zext i8 %38 to i32, !dbg !227
  %40 = getelementptr inbounds i8, ptr %2, i64 33, !dbg !235
  %41 = load i8, ptr %40, align 1, !dbg !235, !tbaa !234
  %42 = zext i8 %41 to i32, !dbg !235
  %43 = sub nsw i32 %39, %42, !dbg !236
  call void @llvm.dbg.value(metadata !DIArgList(i8 %38, i8 %41), metadata !194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 80, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !225
  %44 = getelementptr inbounds i8, ptr %1, i64 18, !dbg !227
  %45 = load i8, ptr %44, align 1, !dbg !227, !tbaa !234
  %46 = zext i8 %45 to i32, !dbg !227
  %47 = getelementptr inbounds i8, ptr %2, i64 34, !dbg !235
  %48 = load i8, ptr %47, align 1, !dbg !235, !tbaa !234
  %49 = zext i8 %48 to i32, !dbg !235
  %50 = sub nsw i32 %46, %49, !dbg !236
  call void @llvm.dbg.value(metadata !DIArgList(i8 %45, i8 %48), metadata !194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !225
  %51 = getelementptr inbounds i8, ptr %1, i64 19, !dbg !227
  %52 = load i8, ptr %51, align 1, !dbg !227, !tbaa !234
  %53 = zext i8 %52 to i32, !dbg !227
  %54 = getelementptr inbounds i8, ptr %2, i64 35, !dbg !235
  %55 = load i8, ptr %54, align 1, !dbg !235, !tbaa !234
  %56 = zext i8 %55 to i32, !dbg !235
  %57 = sub nsw i32 %53, %56, !dbg !236
  call void @llvm.dbg.value(metadata !DIArgList(i8 %52, i8 %55), metadata !194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 112, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !225
  %58 = getelementptr inbounds i8, ptr %1, i64 32, !dbg !237
  call void @llvm.dbg.value(metadata ptr %58, metadata !219, metadata !DIExpression()), !dbg !225
  %59 = getelementptr inbounds i8, ptr %2, i64 64, !dbg !238
  call void @llvm.dbg.value(metadata ptr %59, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 2, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 2, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %58, metadata !219, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %59, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !225
  %60 = load i8, ptr %58, align 1, !dbg !227, !tbaa !234
  %61 = zext i8 %60 to i32, !dbg !227
  %62 = load i8, ptr %59, align 1, !dbg !235, !tbaa !234
  %63 = zext i8 %62 to i32, !dbg !235
  %64 = sub nsw i32 %61, %63, !dbg !236
  call void @llvm.dbg.value(metadata !DIArgList(i8 %60, i8 %62), metadata !194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !225
  %65 = getelementptr inbounds i8, ptr %1, i64 33, !dbg !227
  %66 = load i8, ptr %65, align 1, !dbg !227, !tbaa !234
  %67 = zext i8 %66 to i32, !dbg !227
  %68 = getelementptr inbounds i8, ptr %2, i64 65, !dbg !235
  %69 = load i8, ptr %68, align 1, !dbg !235, !tbaa !234
  %70 = zext i8 %69 to i32, !dbg !235
  %71 = sub nsw i32 %67, %70, !dbg !236
  call void @llvm.dbg.value(metadata !DIArgList(i8 %66, i8 %69), metadata !194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 144, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !225
  %72 = getelementptr inbounds i8, ptr %1, i64 34, !dbg !227
  %73 = load i8, ptr %72, align 1, !dbg !227, !tbaa !234
  %74 = zext i8 %73 to i32, !dbg !227
  %75 = getelementptr inbounds i8, ptr %2, i64 66, !dbg !235
  %76 = load i8, ptr %75, align 1, !dbg !235, !tbaa !234
  %77 = zext i8 %76 to i32, !dbg !235
  %78 = sub nsw i32 %74, %77, !dbg !236
  call void @llvm.dbg.value(metadata !DIArgList(i8 %73, i8 %76), metadata !194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !225
  %79 = getelementptr inbounds i8, ptr %1, i64 35, !dbg !227
  %80 = load i8, ptr %79, align 1, !dbg !227, !tbaa !234
  %81 = zext i8 %80 to i32, !dbg !227
  %82 = getelementptr inbounds i8, ptr %2, i64 67, !dbg !235
  %83 = load i8, ptr %82, align 1, !dbg !235, !tbaa !234
  %84 = zext i8 %83 to i32, !dbg !235
  %85 = sub nsw i32 %81, %84, !dbg !236
  call void @llvm.dbg.value(metadata !DIArgList(i8 %80, i8 %83), metadata !194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 176, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !225
  %86 = getelementptr inbounds i8, ptr %1, i64 48, !dbg !237
  call void @llvm.dbg.value(metadata ptr %86, metadata !219, metadata !DIExpression()), !dbg !225
  %87 = getelementptr inbounds i8, ptr %2, i64 96, !dbg !238
  call void @llvm.dbg.value(metadata ptr %87, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 3, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 3, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %86, metadata !219, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %87, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !225
  %88 = load i8, ptr %86, align 1, !dbg !227, !tbaa !234
  %89 = zext i8 %88 to i32, !dbg !227
  %90 = load i8, ptr %87, align 1, !dbg !235, !tbaa !234
  %91 = zext i8 %90 to i32, !dbg !235
  %92 = sub nsw i32 %89, %91, !dbg !236
  call void @llvm.dbg.value(metadata !DIArgList(i8 %88, i8 %90), metadata !194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !225
  %93 = getelementptr inbounds i8, ptr %1, i64 49, !dbg !227
  %94 = load i8, ptr %93, align 1, !dbg !227, !tbaa !234
  %95 = zext i8 %94 to i32, !dbg !227
  %96 = getelementptr inbounds i8, ptr %2, i64 97, !dbg !235
  %97 = load i8, ptr %96, align 1, !dbg !235, !tbaa !234
  %98 = zext i8 %97 to i32, !dbg !235
  %99 = sub nsw i32 %95, %98, !dbg !236
  call void @llvm.dbg.value(metadata !DIArgList(i8 %94, i8 %97), metadata !194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 208, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !225
  %100 = getelementptr inbounds i8, ptr %1, i64 50, !dbg !227
  %101 = load i8, ptr %100, align 1, !dbg !227, !tbaa !234
  %102 = zext i8 %101 to i32, !dbg !227
  %103 = getelementptr inbounds i8, ptr %2, i64 98, !dbg !235
  %104 = load i8, ptr %103, align 1, !dbg !235, !tbaa !234
  %105 = zext i8 %104 to i32, !dbg !235
  %106 = sub nsw i32 %102, %105, !dbg !236
  call void @llvm.dbg.value(metadata !DIArgList(i8 %101, i8 %104), metadata !194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 224, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !225
  %107 = getelementptr inbounds i8, ptr %1, i64 51, !dbg !227
  %108 = load i8, ptr %107, align 1, !dbg !227, !tbaa !234
  %109 = zext i8 %108 to i32, !dbg !227
  %110 = getelementptr inbounds i8, ptr %2, i64 99, !dbg !235
  %111 = load i8, ptr %110, align 1, !dbg !235, !tbaa !234
  %112 = zext i8 %111 to i32, !dbg !235
  %113 = sub nsw i32 %109, %112, !dbg !236
  call void @llvm.dbg.value(metadata !DIArgList(i8 %108, i8 %111), metadata !194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 240, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %86, metadata !219, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !225
  call void @llvm.dbg.value(metadata ptr %87, metadata !221, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !225
  call void @llvm.dbg.value(metadata i64 4, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 0, metadata !196, metadata !DIExpression()), !dbg !212
  %114 = add nsw i32 %29, %8, !dbg !239
  call void @llvm.dbg.value(metadata i32 %114, metadata !197, metadata !DIExpression()), !dbg !240
  %115 = add nsw i32 %22, %15, !dbg !241
  call void @llvm.dbg.value(metadata i32 %115, metadata !202, metadata !DIExpression()), !dbg !240
  %116 = sub nsw i32 %8, %29, !dbg !242
  call void @llvm.dbg.value(metadata i32 %116, metadata !203, metadata !DIExpression()), !dbg !240
  %117 = sub nsw i32 %15, %22, !dbg !243
  call void @llvm.dbg.value(metadata i32 %117, metadata !204, metadata !DIExpression()), !dbg !240
  %118 = add nsw i32 %115, %114, !dbg !244
  call void @llvm.dbg.value(metadata i32 %118, metadata !195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16)), !dbg !212
  %119 = shl nsw i32 %116, 1, !dbg !245
  %120 = add nsw i32 %117, %119, !dbg !246
  call void @llvm.dbg.value(metadata i32 %120, metadata !195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 16)), !dbg !212
  %121 = sub nsw i32 %114, %115, !dbg !247
  call void @llvm.dbg.value(metadata i32 %121, metadata !195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 16)), !dbg !212
  %122 = shl nsw i32 %117, 1, !dbg !248
  %123 = sub nsw i32 %116, %122, !dbg !249
  call void @llvm.dbg.value(metadata i32 %123, metadata !195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 1, metadata !196, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i64 1, metadata !196, metadata !DIExpression()), !dbg !212
  %124 = add nsw i32 %57, %36, !dbg !239
  call void @llvm.dbg.value(metadata i32 %124, metadata !197, metadata !DIExpression()), !dbg !240
  %125 = add nsw i32 %50, %43, !dbg !241
  call void @llvm.dbg.value(metadata i32 %125, metadata !202, metadata !DIExpression()), !dbg !240
  %126 = sub nsw i32 %36, %57, !dbg !242
  call void @llvm.dbg.value(metadata i32 %126, metadata !203, metadata !DIExpression()), !dbg !240
  %127 = sub nsw i32 %43, %50, !dbg !243
  call void @llvm.dbg.value(metadata i32 %127, metadata !204, metadata !DIExpression()), !dbg !240
  %128 = add nsw i32 %125, %124, !dbg !244
  call void @llvm.dbg.value(metadata i32 %128, metadata !195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16)), !dbg !212
  %129 = shl nsw i32 %126, 1, !dbg !245
  %130 = add nsw i32 %127, %129, !dbg !246
  call void @llvm.dbg.value(metadata i32 %130, metadata !195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 80, 16)), !dbg !212
  %131 = sub nsw i32 %124, %125, !dbg !247
  call void @llvm.dbg.value(metadata i32 %131, metadata !195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 144, 16)), !dbg !212
  %132 = shl nsw i32 %127, 1, !dbg !248
  %133 = sub nsw i32 %126, %132, !dbg !249
  call void @llvm.dbg.value(metadata i32 %133, metadata !195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 208, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 2, metadata !196, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i64 2, metadata !196, metadata !DIExpression()), !dbg !212
  %134 = add nsw i32 %85, %64, !dbg !239
  call void @llvm.dbg.value(metadata i32 %134, metadata !197, metadata !DIExpression()), !dbg !240
  %135 = add nsw i32 %78, %71, !dbg !241
  call void @llvm.dbg.value(metadata i32 %135, metadata !202, metadata !DIExpression()), !dbg !240
  %136 = sub nsw i32 %64, %85, !dbg !242
  call void @llvm.dbg.value(metadata i32 %136, metadata !203, metadata !DIExpression()), !dbg !240
  %137 = sub nsw i32 %71, %78, !dbg !243
  call void @llvm.dbg.value(metadata i32 %137, metadata !204, metadata !DIExpression()), !dbg !240
  %138 = add nsw i32 %135, %134, !dbg !244
  call void @llvm.dbg.value(metadata i32 %138, metadata !195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 16)), !dbg !212
  %139 = shl nsw i32 %136, 1, !dbg !245
  %140 = add nsw i32 %137, %139, !dbg !246
  call void @llvm.dbg.value(metadata i32 %140, metadata !195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 16)), !dbg !212
  %141 = sub nsw i32 %134, %135, !dbg !247
  call void @llvm.dbg.value(metadata i32 %141, metadata !195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 16)), !dbg !212
  %142 = shl nsw i32 %137, 1, !dbg !248
  %143 = sub nsw i32 %136, %142, !dbg !249
  call void @llvm.dbg.value(metadata i32 %143, metadata !195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 224, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 3, metadata !196, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i64 3, metadata !196, metadata !DIExpression()), !dbg !212
  %144 = add nsw i32 %113, %92, !dbg !239
  call void @llvm.dbg.value(metadata i32 %144, metadata !197, metadata !DIExpression()), !dbg !240
  %145 = add nsw i32 %106, %99, !dbg !241
  call void @llvm.dbg.value(metadata i32 %145, metadata !202, metadata !DIExpression()), !dbg !240
  %146 = sub nsw i32 %92, %113, !dbg !242
  call void @llvm.dbg.value(metadata i32 %146, metadata !203, metadata !DIExpression()), !dbg !240
  %147 = sub nsw i32 %99, %106, !dbg !243
  call void @llvm.dbg.value(metadata i32 %147, metadata !204, metadata !DIExpression()), !dbg !240
  %148 = add nsw i32 %145, %144, !dbg !244
  call void @llvm.dbg.value(metadata i32 %148, metadata !195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !212
  %149 = shl nsw i32 %146, 1, !dbg !245
  %150 = add nsw i32 %147, %149, !dbg !246
  call void @llvm.dbg.value(metadata i32 %150, metadata !195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 112, 16)), !dbg !212
  %151 = sub nsw i32 %144, %145, !dbg !247
  call void @llvm.dbg.value(metadata i32 %151, metadata !195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 176, 16)), !dbg !212
  %152 = shl nsw i32 %147, 1, !dbg !248
  %153 = sub nsw i32 %146, %152, !dbg !249
  call void @llvm.dbg.value(metadata i32 %153, metadata !195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 240, 16)), !dbg !212
  call void @llvm.dbg.value(metadata i64 4, metadata !196, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i64 0, metadata !196, metadata !DIExpression()), !dbg !212
  %154 = add nsw i32 %148, %118, !dbg !250
  call void @llvm.dbg.value(metadata i32 %154, metadata !205, metadata !DIExpression()), !dbg !251
  %155 = add nsw i32 %138, %128, !dbg !252
  call void @llvm.dbg.value(metadata i32 %155, metadata !209, metadata !DIExpression()), !dbg !251
  %156 = sub nsw i32 %118, %148, !dbg !253
  call void @llvm.dbg.value(metadata i32 %156, metadata !210, metadata !DIExpression()), !dbg !251
  %157 = sub nsw i32 %128, %138, !dbg !254
  call void @llvm.dbg.value(metadata i32 %157, metadata !211, metadata !DIExpression()), !dbg !251
  %158 = add nsw i32 %155, %154, !dbg !255
  %159 = trunc i32 %158 to i16, !dbg !256
  store i16 %159, ptr %0, align 2, !dbg !257, !tbaa !258
  %160 = shl nsw i32 %156, 1, !dbg !260
  %161 = add nsw i32 %157, %160, !dbg !261
  %162 = trunc i32 %161 to i16, !dbg !262
  %163 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 1, !dbg !263
  store i16 %162, ptr %163, align 2, !dbg !264, !tbaa !258
  %164 = sub nsw i32 %154, %155, !dbg !265
  %165 = trunc i32 %164 to i16, !dbg !266
  %166 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 2, !dbg !267
  store i16 %165, ptr %166, align 2, !dbg !268, !tbaa !258
  %167 = shl nsw i32 %157, 1, !dbg !269
  %168 = sub nsw i32 %156, %167, !dbg !270
  %169 = trunc i32 %168 to i16, !dbg !271
  %170 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 3, !dbg !272
  store i16 %169, ptr %170, align 2, !dbg !273, !tbaa !258
  call void @llvm.dbg.value(metadata i64 1, metadata !196, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i64 1, metadata !196, metadata !DIExpression()), !dbg !212
  %171 = add nsw i32 %150, %120, !dbg !250
  call void @llvm.dbg.value(metadata i32 %171, metadata !205, metadata !DIExpression()), !dbg !251
  %172 = add nsw i32 %140, %130, !dbg !252
  call void @llvm.dbg.value(metadata i32 %172, metadata !209, metadata !DIExpression()), !dbg !251
  %173 = sub nsw i32 %120, %150, !dbg !253
  call void @llvm.dbg.value(metadata i32 %173, metadata !210, metadata !DIExpression()), !dbg !251
  %174 = sub nsw i32 %130, %140, !dbg !254
  call void @llvm.dbg.value(metadata i32 %174, metadata !211, metadata !DIExpression()), !dbg !251
  %175 = add nsw i32 %172, %171, !dbg !255
  %176 = trunc i32 %175 to i16, !dbg !256
  %177 = getelementptr inbounds [4 x i16], ptr %0, i64 1, !dbg !274
  store i16 %176, ptr %177, align 2, !dbg !257, !tbaa !258
  %178 = shl nsw i32 %173, 1, !dbg !260
  %179 = add nsw i32 %174, %178, !dbg !261
  %180 = trunc i32 %179 to i16, !dbg !262
  %181 = getelementptr inbounds [4 x i16], ptr %0, i64 1, i64 1, !dbg !263
  store i16 %180, ptr %181, align 2, !dbg !264, !tbaa !258
  %182 = sub nsw i32 %171, %172, !dbg !265
  %183 = trunc i32 %182 to i16, !dbg !266
  %184 = getelementptr inbounds [4 x i16], ptr %0, i64 1, i64 2, !dbg !267
  store i16 %183, ptr %184, align 2, !dbg !268, !tbaa !258
  %185 = shl nsw i32 %174, 1, !dbg !269
  %186 = sub nsw i32 %173, %185, !dbg !270
  %187 = trunc i32 %186 to i16, !dbg !271
  %188 = getelementptr inbounds [4 x i16], ptr %0, i64 1, i64 3, !dbg !272
  store i16 %187, ptr %188, align 2, !dbg !273, !tbaa !258
  call void @llvm.dbg.value(metadata i64 2, metadata !196, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i64 2, metadata !196, metadata !DIExpression()), !dbg !212
  %189 = add nsw i32 %151, %121, !dbg !250
  call void @llvm.dbg.value(metadata i32 %189, metadata !205, metadata !DIExpression()), !dbg !251
  %190 = add nsw i32 %141, %131, !dbg !252
  call void @llvm.dbg.value(metadata i32 %190, metadata !209, metadata !DIExpression()), !dbg !251
  %191 = sub nsw i32 %121, %151, !dbg !253
  call void @llvm.dbg.value(metadata i32 %191, metadata !210, metadata !DIExpression()), !dbg !251
  %192 = sub nsw i32 %131, %141, !dbg !254
  call void @llvm.dbg.value(metadata i32 %192, metadata !211, metadata !DIExpression()), !dbg !251
  %193 = add nsw i32 %190, %189, !dbg !255
  %194 = trunc i32 %193 to i16, !dbg !256
  %195 = getelementptr inbounds [4 x i16], ptr %0, i64 2, !dbg !274
  store i16 %194, ptr %195, align 2, !dbg !257, !tbaa !258
  %196 = shl nsw i32 %191, 1, !dbg !260
  %197 = add nsw i32 %192, %196, !dbg !261
  %198 = trunc i32 %197 to i16, !dbg !262
  %199 = getelementptr inbounds [4 x i16], ptr %0, i64 2, i64 1, !dbg !263
  store i16 %198, ptr %199, align 2, !dbg !264, !tbaa !258
  %200 = sub nsw i32 %189, %190, !dbg !265
  %201 = trunc i32 %200 to i16, !dbg !266
  %202 = getelementptr inbounds [4 x i16], ptr %0, i64 2, i64 2, !dbg !267
  store i16 %201, ptr %202, align 2, !dbg !268, !tbaa !258
  %203 = shl nsw i32 %192, 1, !dbg !269
  %204 = sub nsw i32 %191, %203, !dbg !270
  %205 = trunc i32 %204 to i16, !dbg !271
  %206 = getelementptr inbounds [4 x i16], ptr %0, i64 2, i64 3, !dbg !272
  store i16 %205, ptr %206, align 2, !dbg !273, !tbaa !258
  call void @llvm.dbg.value(metadata i64 3, metadata !196, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i64 3, metadata !196, metadata !DIExpression()), !dbg !212
  %207 = add nsw i32 %153, %123, !dbg !250
  call void @llvm.dbg.value(metadata i32 %207, metadata !205, metadata !DIExpression()), !dbg !251
  %208 = add nsw i32 %143, %133, !dbg !252
  call void @llvm.dbg.value(metadata i32 %208, metadata !209, metadata !DIExpression()), !dbg !251
  %209 = sub nsw i32 %123, %153, !dbg !253
  call void @llvm.dbg.value(metadata i32 %209, metadata !210, metadata !DIExpression()), !dbg !251
  %210 = sub nsw i32 %133, %143, !dbg !254
  call void @llvm.dbg.value(metadata i32 %210, metadata !211, metadata !DIExpression()), !dbg !251
  %211 = add nsw i32 %208, %207, !dbg !255
  %212 = trunc i32 %211 to i16, !dbg !256
  %213 = getelementptr inbounds [4 x i16], ptr %0, i64 3, !dbg !274
  store i16 %212, ptr %213, align 2, !dbg !257, !tbaa !258
  %214 = shl nsw i32 %209, 1, !dbg !260
  %215 = add nsw i32 %210, %214, !dbg !261
  %216 = trunc i32 %215 to i16, !dbg !262
  %217 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 1, !dbg !263
  store i16 %216, ptr %217, align 2, !dbg !264, !tbaa !258
  %218 = sub nsw i32 %207, %208, !dbg !265
  %219 = trunc i32 %218 to i16, !dbg !266
  %220 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 2, !dbg !267
  store i16 %219, ptr %220, align 2, !dbg !268, !tbaa !258
  %221 = shl nsw i32 %210, 1, !dbg !269
  %222 = sub nsw i32 %209, %221, !dbg !270
  %223 = trunc i32 %222 to i16, !dbg !271
  %224 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 3, !dbg !272
  store i16 %223, ptr %224, align 2, !dbg !273, !tbaa !258
  call void @llvm.dbg.value(metadata i64 4, metadata !196, metadata !DIExpression()), !dbg !212
  ret void, !dbg !275
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @add4x4_idct(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #3 !dbg !276 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !278, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata ptr %1, metadata !279, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i32 0, metadata !284, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 0, metadata !284, metadata !DIExpression()), !dbg !299
  %3 = load i16, ptr %1, align 2, !dbg !300, !tbaa !258
  %4 = zext i16 %3 to i32, !dbg !300
  %5 = getelementptr inbounds [4 x i16], ptr %1, i64 2, i64 0, !dbg !301
  %6 = load i16, ptr %5, align 2, !dbg !301, !tbaa !258
  %7 = zext i16 %6 to i32, !dbg !301
  %8 = add nuw nsw i32 %7, %4, !dbg !302
  call void @llvm.dbg.value(metadata i32 %8, metadata !285, metadata !DIExpression()), !dbg !303
  %9 = sub nsw i32 %4, %7, !dbg !304
  call void @llvm.dbg.value(metadata i32 %9, metadata !289, metadata !DIExpression()), !dbg !303
  %10 = getelementptr inbounds [4 x i16], ptr %1, i64 1, i64 0, !dbg !305
  %11 = load i16, ptr %10, align 2, !dbg !305, !tbaa !258
  %12 = sext i16 %11 to i32, !dbg !305
  %13 = getelementptr inbounds [4 x i16], ptr %1, i64 3, i64 0, !dbg !306
  %14 = load i16, ptr %13, align 2, !dbg !306, !tbaa !258
  %15 = sext i16 %14 to i32, !dbg !306
  %16 = ashr i32 %15, 1, !dbg !307
  %17 = add nsw i32 %16, %12, !dbg !308
  call void @llvm.dbg.value(metadata i32 %17, metadata !290, metadata !DIExpression()), !dbg !303
  %18 = ashr i32 %12, 1, !dbg !309
  %19 = sub nsw i32 %18, %15, !dbg !310
  call void @llvm.dbg.value(metadata i32 %19, metadata !291, metadata !DIExpression()), !dbg !303
  %20 = add nsw i32 %17, %8, !dbg !311
  call void @llvm.dbg.value(metadata i32 %20, metadata !281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16)), !dbg !299
  %21 = add nsw i32 %19, %9, !dbg !312
  call void @llvm.dbg.value(metadata i32 %21, metadata !281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16)), !dbg !299
  %22 = sub nsw i32 %9, %19, !dbg !313
  call void @llvm.dbg.value(metadata i32 %22, metadata !281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 16)), !dbg !299
  %23 = sub nsw i32 %8, %17, !dbg !314
  call void @llvm.dbg.value(metadata i32 %23, metadata !281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !299
  call void @llvm.dbg.value(metadata i64 1, metadata !284, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 1, metadata !284, metadata !DIExpression()), !dbg !299
  %24 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 1, !dbg !300
  %25 = load i16, ptr %24, align 2, !dbg !300, !tbaa !258
  %26 = zext i16 %25 to i32, !dbg !300
  %27 = getelementptr inbounds [4 x i16], ptr %1, i64 2, i64 1, !dbg !301
  %28 = load i16, ptr %27, align 2, !dbg !301, !tbaa !258
  %29 = zext i16 %28 to i32, !dbg !301
  %30 = add nuw nsw i32 %29, %26, !dbg !302
  call void @llvm.dbg.value(metadata i32 %30, metadata !285, metadata !DIExpression()), !dbg !303
  %31 = sub nsw i32 %26, %29, !dbg !304
  call void @llvm.dbg.value(metadata i32 %31, metadata !289, metadata !DIExpression()), !dbg !303
  %32 = getelementptr inbounds [4 x i16], ptr %1, i64 1, i64 1, !dbg !305
  %33 = load i16, ptr %32, align 2, !dbg !305, !tbaa !258
  %34 = sext i16 %33 to i32, !dbg !305
  %35 = getelementptr inbounds [4 x i16], ptr %1, i64 3, i64 1, !dbg !306
  %36 = load i16, ptr %35, align 2, !dbg !306, !tbaa !258
  %37 = sext i16 %36 to i32, !dbg !306
  %38 = ashr i32 %37, 1, !dbg !307
  %39 = add nsw i32 %38, %34, !dbg !308
  call void @llvm.dbg.value(metadata i32 %39, metadata !290, metadata !DIExpression()), !dbg !303
  %40 = ashr i32 %34, 1, !dbg !309
  %41 = sub nsw i32 %40, %37, !dbg !310
  call void @llvm.dbg.value(metadata i32 %41, metadata !291, metadata !DIExpression()), !dbg !303
  %42 = add nsw i32 %39, %30, !dbg !311
  call void @llvm.dbg.value(metadata i32 %42, metadata !281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 16)), !dbg !299
  %43 = add nsw i32 %41, %31, !dbg !312
  call void @llvm.dbg.value(metadata i32 %43, metadata !281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 80, 16)), !dbg !299
  %44 = sub nsw i32 %31, %41, !dbg !313
  call void @llvm.dbg.value(metadata i32 %44, metadata !281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 16)), !dbg !299
  %45 = sub nsw i32 %30, %39, !dbg !314
  call void @llvm.dbg.value(metadata i32 %45, metadata !281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 112, 16)), !dbg !299
  call void @llvm.dbg.value(metadata i64 2, metadata !284, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 2, metadata !284, metadata !DIExpression()), !dbg !299
  %46 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 2, !dbg !300
  %47 = load i16, ptr %46, align 2, !dbg !300, !tbaa !258
  %48 = zext i16 %47 to i32, !dbg !300
  %49 = getelementptr inbounds [4 x i16], ptr %1, i64 2, i64 2, !dbg !301
  %50 = load i16, ptr %49, align 2, !dbg !301, !tbaa !258
  %51 = zext i16 %50 to i32, !dbg !301
  %52 = add nuw nsw i32 %51, %48, !dbg !302
  call void @llvm.dbg.value(metadata i32 %52, metadata !285, metadata !DIExpression()), !dbg !303
  %53 = sub nsw i32 %48, %51, !dbg !304
  call void @llvm.dbg.value(metadata i32 %53, metadata !289, metadata !DIExpression()), !dbg !303
  %54 = getelementptr inbounds [4 x i16], ptr %1, i64 1, i64 2, !dbg !305
  %55 = load i16, ptr %54, align 2, !dbg !305, !tbaa !258
  %56 = sext i16 %55 to i32, !dbg !305
  %57 = getelementptr inbounds [4 x i16], ptr %1, i64 3, i64 2, !dbg !306
  %58 = load i16, ptr %57, align 2, !dbg !306, !tbaa !258
  %59 = sext i16 %58 to i32, !dbg !306
  %60 = ashr i32 %59, 1, !dbg !307
  %61 = add nsw i32 %60, %56, !dbg !308
  call void @llvm.dbg.value(metadata i32 %61, metadata !290, metadata !DIExpression()), !dbg !303
  %62 = ashr i32 %56, 1, !dbg !309
  %63 = sub nsw i32 %62, %59, !dbg !310
  call void @llvm.dbg.value(metadata i32 %63, metadata !291, metadata !DIExpression()), !dbg !303
  %64 = add nsw i32 %61, %52, !dbg !311
  call void @llvm.dbg.value(metadata i32 %64, metadata !281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 16)), !dbg !299
  %65 = add nsw i32 %63, %53, !dbg !312
  call void @llvm.dbg.value(metadata i32 %65, metadata !281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 144, 16)), !dbg !299
  %66 = sub nsw i32 %53, %63, !dbg !313
  call void @llvm.dbg.value(metadata i32 %66, metadata !281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 16)), !dbg !299
  %67 = sub nsw i32 %52, %61, !dbg !314
  call void @llvm.dbg.value(metadata i32 %67, metadata !281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 176, 16)), !dbg !299
  call void @llvm.dbg.value(metadata i64 3, metadata !284, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 3, metadata !284, metadata !DIExpression()), !dbg !299
  %68 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 3, !dbg !300
  %69 = load i16, ptr %68, align 2, !dbg !300, !tbaa !258
  %70 = zext i16 %69 to i32, !dbg !300
  %71 = getelementptr inbounds [4 x i16], ptr %1, i64 2, i64 3, !dbg !301
  %72 = load i16, ptr %71, align 2, !dbg !301, !tbaa !258
  %73 = zext i16 %72 to i32, !dbg !301
  %74 = add nuw nsw i32 %73, %70, !dbg !302
  call void @llvm.dbg.value(metadata i32 %74, metadata !285, metadata !DIExpression()), !dbg !303
  %75 = sub nsw i32 %70, %73, !dbg !304
  call void @llvm.dbg.value(metadata i32 %75, metadata !289, metadata !DIExpression()), !dbg !303
  %76 = getelementptr inbounds [4 x i16], ptr %1, i64 1, i64 3, !dbg !305
  %77 = load i16, ptr %76, align 2, !dbg !305, !tbaa !258
  %78 = sext i16 %77 to i32, !dbg !305
  %79 = getelementptr inbounds [4 x i16], ptr %1, i64 3, i64 3, !dbg !306
  %80 = load i16, ptr %79, align 2, !dbg !306, !tbaa !258
  %81 = sext i16 %80 to i32, !dbg !306
  %82 = ashr i32 %81, 1, !dbg !307
  %83 = add nsw i32 %82, %78, !dbg !308
  call void @llvm.dbg.value(metadata i32 %83, metadata !290, metadata !DIExpression()), !dbg !303
  %84 = ashr i32 %78, 1, !dbg !309
  %85 = sub nsw i32 %84, %81, !dbg !310
  call void @llvm.dbg.value(metadata i32 %85, metadata !291, metadata !DIExpression()), !dbg !303
  %86 = add nsw i32 %83, %74, !dbg !311
  call void @llvm.dbg.value(metadata i32 %86, metadata !281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16)), !dbg !299
  %87 = add nsw i32 %85, %75, !dbg !312
  call void @llvm.dbg.value(metadata i32 %87, metadata !281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 208, 16)), !dbg !299
  %88 = sub nsw i32 %75, %85, !dbg !313
  call void @llvm.dbg.value(metadata i32 %88, metadata !281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 224, 16)), !dbg !299
  %89 = sub nsw i32 %74, %83, !dbg !314
  call void @llvm.dbg.value(metadata i32 %89, metadata !281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 240, 16)), !dbg !299
  call void @llvm.dbg.value(metadata i64 4, metadata !284, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 0, metadata !284, metadata !DIExpression()), !dbg !299
  %90 = shl i32 %20, 16, !dbg !315
  %91 = ashr exact i32 %90, 16, !dbg !315
  %92 = shl i32 %64, 16, !dbg !316
  %93 = ashr exact i32 %92, 16, !dbg !316
  %94 = add nsw i32 %93, %91, !dbg !317
  call void @llvm.dbg.value(metadata i32 %94, metadata !292, metadata !DIExpression()), !dbg !318
  %95 = sub nsw i32 %91, %93, !dbg !319
  call void @llvm.dbg.value(metadata i32 %95, metadata !296, metadata !DIExpression()), !dbg !318
  %96 = shl i32 %42, 16, !dbg !320
  %97 = ashr exact i32 %96, 16, !dbg !320
  %98 = shl i32 %86, 16, !dbg !321
  %99 = ashr exact i32 %98, 16, !dbg !321
  %100 = ashr i32 %98, 17, !dbg !322
  %101 = add nsw i32 %100, %97, !dbg !323
  call void @llvm.dbg.value(metadata i32 %101, metadata !297, metadata !DIExpression()), !dbg !318
  %102 = ashr i32 %96, 17, !dbg !324
  %103 = sub nsw i32 %102, %99, !dbg !325
  call void @llvm.dbg.value(metadata i32 %103, metadata !298, metadata !DIExpression()), !dbg !318
  %104 = add nsw i32 %94, 32, !dbg !326
  %105 = add nsw i32 %104, %101, !dbg !327
  call void @llvm.dbg.value(metadata i32 %105, metadata !280, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16)), !dbg !299
  %106 = add nsw i32 %95, 32, !dbg !328
  %107 = add nsw i32 %106, %103, !dbg !329
  call void @llvm.dbg.value(metadata i32 %107, metadata !280, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 16)), !dbg !299
  %108 = sub nsw i32 %106, %103, !dbg !330
  call void @llvm.dbg.value(metadata i32 %108, metadata !280, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 16)), !dbg !299
  %109 = sub nsw i32 %104, %101, !dbg !331
  call void @llvm.dbg.value(metadata i32 %109, metadata !280, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16)), !dbg !299
  call void @llvm.dbg.value(metadata i64 1, metadata !284, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 1, metadata !284, metadata !DIExpression()), !dbg !299
  %110 = shl i32 %21, 16, !dbg !315
  %111 = ashr exact i32 %110, 16, !dbg !315
  %112 = shl i32 %65, 16, !dbg !316
  %113 = ashr exact i32 %112, 16, !dbg !316
  %114 = add nsw i32 %113, %111, !dbg !317
  call void @llvm.dbg.value(metadata i32 %114, metadata !292, metadata !DIExpression()), !dbg !318
  %115 = sub nsw i32 %111, %113, !dbg !319
  call void @llvm.dbg.value(metadata i32 %115, metadata !296, metadata !DIExpression()), !dbg !318
  %116 = shl i32 %43, 16, !dbg !320
  %117 = ashr exact i32 %116, 16, !dbg !320
  %118 = shl i32 %87, 16, !dbg !321
  %119 = ashr exact i32 %118, 16, !dbg !321
  %120 = ashr i32 %118, 17, !dbg !322
  %121 = add nsw i32 %120, %117, !dbg !323
  call void @llvm.dbg.value(metadata i32 %121, metadata !297, metadata !DIExpression()), !dbg !318
  %122 = ashr i32 %116, 17, !dbg !324
  %123 = sub nsw i32 %122, %119, !dbg !325
  call void @llvm.dbg.value(metadata i32 %123, metadata !298, metadata !DIExpression()), !dbg !318
  %124 = add nsw i32 %114, 32, !dbg !326
  %125 = add nsw i32 %124, %121, !dbg !327
  call void @llvm.dbg.value(metadata i32 %125, metadata !280, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16)), !dbg !299
  %126 = add nsw i32 %115, 32, !dbg !328
  %127 = add nsw i32 %126, %123, !dbg !329
  call void @llvm.dbg.value(metadata i32 %127, metadata !280, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 80, 16)), !dbg !299
  %128 = sub nsw i32 %126, %123, !dbg !330
  call void @llvm.dbg.value(metadata i32 %128, metadata !280, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 144, 16)), !dbg !299
  %129 = sub nsw i32 %124, %121, !dbg !331
  call void @llvm.dbg.value(metadata i32 %129, metadata !280, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 208, 16)), !dbg !299
  call void @llvm.dbg.value(metadata i64 2, metadata !284, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 2, metadata !284, metadata !DIExpression()), !dbg !299
  %130 = shl i32 %22, 16, !dbg !315
  %131 = ashr exact i32 %130, 16, !dbg !315
  %132 = shl i32 %66, 16, !dbg !316
  %133 = ashr exact i32 %132, 16, !dbg !316
  %134 = add nsw i32 %133, %131, !dbg !317
  call void @llvm.dbg.value(metadata i32 %134, metadata !292, metadata !DIExpression()), !dbg !318
  %135 = sub nsw i32 %131, %133, !dbg !319
  call void @llvm.dbg.value(metadata i32 %135, metadata !296, metadata !DIExpression()), !dbg !318
  %136 = shl i32 %44, 16, !dbg !320
  %137 = ashr exact i32 %136, 16, !dbg !320
  %138 = shl i32 %88, 16, !dbg !321
  %139 = ashr exact i32 %138, 16, !dbg !321
  %140 = ashr i32 %138, 17, !dbg !322
  %141 = add nsw i32 %140, %137, !dbg !323
  call void @llvm.dbg.value(metadata i32 %141, metadata !297, metadata !DIExpression()), !dbg !318
  %142 = ashr i32 %136, 17, !dbg !324
  %143 = sub nsw i32 %142, %139, !dbg !325
  call void @llvm.dbg.value(metadata i32 %143, metadata !298, metadata !DIExpression()), !dbg !318
  %144 = add nsw i32 %134, 32, !dbg !326
  %145 = add nsw i32 %144, %141, !dbg !327
  call void @llvm.dbg.value(metadata i32 %145, metadata !280, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 16)), !dbg !299
  %146 = add nsw i32 %135, 32, !dbg !328
  %147 = add nsw i32 %146, %143, !dbg !329
  call void @llvm.dbg.value(metadata i32 %147, metadata !280, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 16)), !dbg !299
  %148 = sub nsw i32 %146, %143, !dbg !330
  call void @llvm.dbg.value(metadata i32 %148, metadata !280, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 16)), !dbg !299
  %149 = sub nsw i32 %144, %141, !dbg !331
  call void @llvm.dbg.value(metadata i32 %149, metadata !280, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 224, 16)), !dbg !299
  call void @llvm.dbg.value(metadata i64 3, metadata !284, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 3, metadata !284, metadata !DIExpression()), !dbg !299
  %150 = shl i32 %23, 16, !dbg !315
  %151 = ashr exact i32 %150, 16, !dbg !315
  %152 = shl i32 %67, 16, !dbg !316
  %153 = ashr exact i32 %152, 16, !dbg !316
  %154 = add nsw i32 %153, %151, !dbg !317
  call void @llvm.dbg.value(metadata i32 %154, metadata !292, metadata !DIExpression()), !dbg !318
  %155 = sub nsw i32 %151, %153, !dbg !319
  call void @llvm.dbg.value(metadata i32 %155, metadata !296, metadata !DIExpression()), !dbg !318
  %156 = shl i32 %45, 16, !dbg !320
  %157 = ashr exact i32 %156, 16, !dbg !320
  %158 = shl i32 %89, 16, !dbg !321
  %159 = ashr exact i32 %158, 16, !dbg !321
  %160 = ashr i32 %158, 17, !dbg !322
  %161 = add nsw i32 %160, %157, !dbg !323
  call void @llvm.dbg.value(metadata i32 %161, metadata !297, metadata !DIExpression()), !dbg !318
  %162 = ashr i32 %156, 17, !dbg !324
  %163 = sub nsw i32 %162, %159, !dbg !325
  call void @llvm.dbg.value(metadata i32 %163, metadata !298, metadata !DIExpression()), !dbg !318
  %164 = add nsw i32 %154, 32, !dbg !326
  %165 = add nsw i32 %164, %161, !dbg !327
  call void @llvm.dbg.value(metadata i32 %165, metadata !280, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !299
  %166 = add nsw i32 %155, 32, !dbg !328
  %167 = add nsw i32 %166, %163, !dbg !329
  call void @llvm.dbg.value(metadata i32 %167, metadata !280, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 112, 16)), !dbg !299
  %168 = sub nsw i32 %166, %163, !dbg !330
  call void @llvm.dbg.value(metadata i32 %168, metadata !280, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 176, 16)), !dbg !299
  %169 = sub nsw i32 %164, %161, !dbg !331
  call void @llvm.dbg.value(metadata i32 %169, metadata !280, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 240, 16)), !dbg !299
  call void @llvm.dbg.value(metadata i64 4, metadata !284, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata ptr %0, metadata !278, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 0, metadata !283, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i32 0, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !299
  %170 = load i8, ptr %0, align 1, !dbg !332, !tbaa !234
  %171 = zext i8 %170 to i32, !dbg !332
  %172 = ashr i32 %105, 6, !dbg !339
  %173 = add nsw i32 %172, %171, !dbg !340
  call void @llvm.dbg.value(metadata i32 %173, metadata !341, metadata !DIExpression()), !dbg !347
  %174 = icmp ult i32 %173, 256, !dbg !349
  %175 = icmp sgt i32 %173, 0, !dbg !350
  %176 = sext i1 %175 to i32, !dbg !350
  %177 = select i1 %174, i32 %173, i32 %176, !dbg !350
  %178 = trunc i32 %177 to i8, !dbg !350
  store i8 %178, ptr %0, align 1, !dbg !351, !tbaa !234
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !299
  %179 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !332
  %180 = load i8, ptr %179, align 1, !dbg !332, !tbaa !234
  %181 = zext i8 %180 to i32, !dbg !332
  %182 = ashr i32 %125, 6, !dbg !339
  %183 = add nsw i32 %182, %181, !dbg !340
  call void @llvm.dbg.value(metadata i32 %183, metadata !341, metadata !DIExpression()), !dbg !347
  %184 = icmp ult i32 %183, 256, !dbg !349
  %185 = icmp sgt i32 %183, 0, !dbg !350
  %186 = sext i1 %185 to i32, !dbg !350
  %187 = select i1 %184, i32 %183, i32 %186, !dbg !350
  %188 = trunc i32 %187 to i8, !dbg !350
  store i8 %188, ptr %179, align 1, !dbg !351, !tbaa !234
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !299
  %189 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !332
  %190 = load i8, ptr %189, align 1, !dbg !332, !tbaa !234
  %191 = zext i8 %190 to i32, !dbg !332
  %192 = ashr i32 %145, 6, !dbg !339
  %193 = add nsw i32 %192, %191, !dbg !340
  call void @llvm.dbg.value(metadata i32 %193, metadata !341, metadata !DIExpression()), !dbg !347
  %194 = icmp ult i32 %193, 256, !dbg !349
  %195 = icmp sgt i32 %193, 0, !dbg !350
  %196 = sext i1 %195 to i32, !dbg !350
  %197 = select i1 %194, i32 %193, i32 %196, !dbg !350
  %198 = trunc i32 %197 to i8, !dbg !350
  store i8 %198, ptr %189, align 1, !dbg !351, !tbaa !234
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !299
  %199 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !332
  %200 = load i8, ptr %199, align 1, !dbg !332, !tbaa !234
  %201 = zext i8 %200 to i32, !dbg !332
  %202 = ashr i32 %165, 6, !dbg !339
  %203 = add nsw i32 %202, %201, !dbg !340
  call void @llvm.dbg.value(metadata i32 %203, metadata !341, metadata !DIExpression()), !dbg !347
  %204 = icmp ult i32 %203, 256, !dbg !349
  %205 = icmp sgt i32 %203, 0, !dbg !350
  %206 = sext i1 %205 to i32, !dbg !350
  %207 = select i1 %204, i32 %203, i32 %206, !dbg !350
  %208 = trunc i32 %207 to i8, !dbg !350
  store i8 %208, ptr %199, align 1, !dbg !351, !tbaa !234
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !299
  %209 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !352
  call void @llvm.dbg.value(metadata ptr %209, metadata !278, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 1, metadata !283, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata ptr %209, metadata !278, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 1, metadata !283, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i32 0, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !299
  %210 = load i8, ptr %209, align 1, !dbg !332, !tbaa !234
  %211 = zext i8 %210 to i32, !dbg !332
  %212 = ashr i32 %107, 6, !dbg !339
  %213 = add nsw i32 %212, %211, !dbg !340
  call void @llvm.dbg.value(metadata i32 %213, metadata !341, metadata !DIExpression()), !dbg !347
  %214 = icmp ult i32 %213, 256, !dbg !349
  %215 = icmp sgt i32 %213, 0, !dbg !350
  %216 = sext i1 %215 to i32, !dbg !350
  %217 = select i1 %214, i32 %213, i32 %216, !dbg !350
  %218 = trunc i32 %217 to i8, !dbg !350
  store i8 %218, ptr %209, align 1, !dbg !351, !tbaa !234
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !299
  %219 = getelementptr inbounds i8, ptr %0, i64 33, !dbg !332
  %220 = load i8, ptr %219, align 1, !dbg !332, !tbaa !234
  %221 = zext i8 %220 to i32, !dbg !332
  %222 = ashr i32 %127, 6, !dbg !339
  %223 = add nsw i32 %222, %221, !dbg !340
  call void @llvm.dbg.value(metadata i32 %223, metadata !341, metadata !DIExpression()), !dbg !347
  %224 = icmp ult i32 %223, 256, !dbg !349
  %225 = icmp sgt i32 %223, 0, !dbg !350
  %226 = sext i1 %225 to i32, !dbg !350
  %227 = select i1 %224, i32 %223, i32 %226, !dbg !350
  %228 = trunc i32 %227 to i8, !dbg !350
  store i8 %228, ptr %219, align 1, !dbg !351, !tbaa !234
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !299
  %229 = getelementptr inbounds i8, ptr %0, i64 34, !dbg !332
  %230 = load i8, ptr %229, align 1, !dbg !332, !tbaa !234
  %231 = zext i8 %230 to i32, !dbg !332
  %232 = ashr i32 %147, 6, !dbg !339
  %233 = add nsw i32 %232, %231, !dbg !340
  call void @llvm.dbg.value(metadata i32 %233, metadata !341, metadata !DIExpression()), !dbg !347
  %234 = icmp ult i32 %233, 256, !dbg !349
  %235 = icmp sgt i32 %233, 0, !dbg !350
  %236 = sext i1 %235 to i32, !dbg !350
  %237 = select i1 %234, i32 %233, i32 %236, !dbg !350
  %238 = trunc i32 %237 to i8, !dbg !350
  store i8 %238, ptr %229, align 1, !dbg !351, !tbaa !234
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !299
  %239 = getelementptr inbounds i8, ptr %0, i64 35, !dbg !332
  %240 = load i8, ptr %239, align 1, !dbg !332, !tbaa !234
  %241 = zext i8 %240 to i32, !dbg !332
  %242 = ashr i32 %167, 6, !dbg !339
  %243 = add nsw i32 %242, %241, !dbg !340
  call void @llvm.dbg.value(metadata i32 %243, metadata !341, metadata !DIExpression()), !dbg !347
  %244 = icmp ult i32 %243, 256, !dbg !349
  %245 = icmp sgt i32 %243, 0, !dbg !350
  %246 = sext i1 %245 to i32, !dbg !350
  %247 = select i1 %244, i32 %243, i32 %246, !dbg !350
  %248 = trunc i32 %247 to i8, !dbg !350
  store i8 %248, ptr %239, align 1, !dbg !351, !tbaa !234
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !299
  %249 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !352
  call void @llvm.dbg.value(metadata ptr %249, metadata !278, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 2, metadata !283, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata ptr %249, metadata !278, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 2, metadata !283, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i32 0, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !299
  %250 = load i8, ptr %249, align 1, !dbg !332, !tbaa !234
  %251 = zext i8 %250 to i32, !dbg !332
  %252 = ashr i32 %108, 6, !dbg !339
  %253 = add nsw i32 %252, %251, !dbg !340
  call void @llvm.dbg.value(metadata i32 %253, metadata !341, metadata !DIExpression()), !dbg !347
  %254 = icmp ult i32 %253, 256, !dbg !349
  %255 = icmp sgt i32 %253, 0, !dbg !350
  %256 = sext i1 %255 to i32, !dbg !350
  %257 = select i1 %254, i32 %253, i32 %256, !dbg !350
  %258 = trunc i32 %257 to i8, !dbg !350
  store i8 %258, ptr %249, align 1, !dbg !351, !tbaa !234
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !299
  %259 = getelementptr inbounds i8, ptr %0, i64 65, !dbg !332
  %260 = load i8, ptr %259, align 1, !dbg !332, !tbaa !234
  %261 = zext i8 %260 to i32, !dbg !332
  %262 = ashr i32 %128, 6, !dbg !339
  %263 = add nsw i32 %262, %261, !dbg !340
  call void @llvm.dbg.value(metadata i32 %263, metadata !341, metadata !DIExpression()), !dbg !347
  %264 = icmp ult i32 %263, 256, !dbg !349
  %265 = icmp sgt i32 %263, 0, !dbg !350
  %266 = sext i1 %265 to i32, !dbg !350
  %267 = select i1 %264, i32 %263, i32 %266, !dbg !350
  %268 = trunc i32 %267 to i8, !dbg !350
  store i8 %268, ptr %259, align 1, !dbg !351, !tbaa !234
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !299
  %269 = getelementptr inbounds i8, ptr %0, i64 66, !dbg !332
  %270 = load i8, ptr %269, align 1, !dbg !332, !tbaa !234
  %271 = zext i8 %270 to i32, !dbg !332
  %272 = ashr i32 %148, 6, !dbg !339
  %273 = add nsw i32 %272, %271, !dbg !340
  call void @llvm.dbg.value(metadata i32 %273, metadata !341, metadata !DIExpression()), !dbg !347
  %274 = icmp ult i32 %273, 256, !dbg !349
  %275 = icmp sgt i32 %273, 0, !dbg !350
  %276 = sext i1 %275 to i32, !dbg !350
  %277 = select i1 %274, i32 %273, i32 %276, !dbg !350
  %278 = trunc i32 %277 to i8, !dbg !350
  store i8 %278, ptr %269, align 1, !dbg !351, !tbaa !234
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !299
  %279 = getelementptr inbounds i8, ptr %0, i64 67, !dbg !332
  %280 = load i8, ptr %279, align 1, !dbg !332, !tbaa !234
  %281 = zext i8 %280 to i32, !dbg !332
  %282 = ashr i32 %168, 6, !dbg !339
  %283 = add nsw i32 %282, %281, !dbg !340
  call void @llvm.dbg.value(metadata i32 %283, metadata !341, metadata !DIExpression()), !dbg !347
  %284 = icmp ult i32 %283, 256, !dbg !349
  %285 = icmp sgt i32 %283, 0, !dbg !350
  %286 = sext i1 %285 to i32, !dbg !350
  %287 = select i1 %284, i32 %283, i32 %286, !dbg !350
  %288 = trunc i32 %287 to i8, !dbg !350
  store i8 %288, ptr %279, align 1, !dbg !351, !tbaa !234
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !299
  %289 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !352
  call void @llvm.dbg.value(metadata ptr %289, metadata !278, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 3, metadata !283, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata ptr %289, metadata !278, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 3, metadata !283, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i32 0, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !299
  %290 = load i8, ptr %289, align 1, !dbg !332, !tbaa !234
  %291 = zext i8 %290 to i32, !dbg !332
  %292 = ashr i32 %109, 6, !dbg !339
  %293 = add nsw i32 %292, %291, !dbg !340
  call void @llvm.dbg.value(metadata i32 %293, metadata !341, metadata !DIExpression()), !dbg !347
  %294 = icmp ult i32 %293, 256, !dbg !349
  %295 = icmp sgt i32 %293, 0, !dbg !350
  %296 = sext i1 %295 to i32, !dbg !350
  %297 = select i1 %294, i32 %293, i32 %296, !dbg !350
  %298 = trunc i32 %297 to i8, !dbg !350
  store i8 %298, ptr %289, align 1, !dbg !351, !tbaa !234
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !299
  %299 = getelementptr inbounds i8, ptr %0, i64 97, !dbg !332
  %300 = load i8, ptr %299, align 1, !dbg !332, !tbaa !234
  %301 = zext i8 %300 to i32, !dbg !332
  %302 = ashr i32 %129, 6, !dbg !339
  %303 = add nsw i32 %302, %301, !dbg !340
  call void @llvm.dbg.value(metadata i32 %303, metadata !341, metadata !DIExpression()), !dbg !347
  %304 = icmp ult i32 %303, 256, !dbg !349
  %305 = icmp sgt i32 %303, 0, !dbg !350
  %306 = sext i1 %305 to i32, !dbg !350
  %307 = select i1 %304, i32 %303, i32 %306, !dbg !350
  %308 = trunc i32 %307 to i8, !dbg !350
  store i8 %308, ptr %299, align 1, !dbg !351, !tbaa !234
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 2, metadata !282, metadata !DIExpression()), !dbg !299
  %309 = getelementptr inbounds i8, ptr %0, i64 98, !dbg !332
  %310 = load i8, ptr %309, align 1, !dbg !332, !tbaa !234
  %311 = zext i8 %310 to i32, !dbg !332
  %312 = ashr i32 %149, 6, !dbg !339
  %313 = add nsw i32 %312, %311, !dbg !340
  call void @llvm.dbg.value(metadata i32 %313, metadata !341, metadata !DIExpression()), !dbg !347
  %314 = icmp ult i32 %313, 256, !dbg !349
  %315 = icmp sgt i32 %313, 0, !dbg !350
  %316 = sext i1 %315 to i32, !dbg !350
  %317 = select i1 %314, i32 %313, i32 %316, !dbg !350
  %318 = trunc i32 %317 to i8, !dbg !350
  store i8 %318, ptr %309, align 1, !dbg !351, !tbaa !234
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i64 3, metadata !282, metadata !DIExpression()), !dbg !299
  %319 = getelementptr inbounds i8, ptr %0, i64 99, !dbg !332
  %320 = load i8, ptr %319, align 1, !dbg !332, !tbaa !234
  %321 = zext i8 %320 to i32, !dbg !332
  %322 = ashr i32 %169, 6, !dbg !339
  %323 = add nsw i32 %322, %321, !dbg !340
  call void @llvm.dbg.value(metadata i32 %323, metadata !341, metadata !DIExpression()), !dbg !347
  %324 = icmp ult i32 %323, 256, !dbg !349
  %325 = icmp sgt i32 %323, 0, !dbg !350
  %326 = sext i1 %325 to i32, !dbg !350
  %327 = select i1 %324, i32 %323, i32 %326, !dbg !350
  %328 = trunc i32 %327 to i8, !dbg !350
  store i8 %328, ptr %319, align 1, !dbg !351, !tbaa !234
  call void @llvm.dbg.value(metadata i64 4, metadata !282, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata ptr %289, metadata !278, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !299
  call void @llvm.dbg.value(metadata i64 4, metadata !283, metadata !DIExpression()), !dbg !299
  ret void, !dbg !353
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub8x8_dct(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 !dbg !354 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !356, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata ptr %1, metadata !357, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata ptr %2, metadata !358, metadata !DIExpression()), !dbg !359
  tail call void @sub4x4_dct(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !360
  %4 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 1, !dbg !361
  %5 = getelementptr inbounds i8, ptr %1, i64 4, !dbg !362
  %6 = getelementptr inbounds i8, ptr %2, i64 4, !dbg !363
  tail call void @sub4x4_dct(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6), !dbg !364
  %7 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 2, !dbg !365
  %8 = getelementptr inbounds i8, ptr %1, i64 64, !dbg !366
  %9 = getelementptr inbounds i8, ptr %2, i64 128, !dbg !367
  tail call void @sub4x4_dct(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9), !dbg !368
  %10 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 3, !dbg !369
  %11 = getelementptr inbounds i8, ptr %1, i64 68, !dbg !370
  %12 = getelementptr inbounds i8, ptr %2, i64 132, !dbg !371
  tail call void @sub4x4_dct(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @add8x8_idct(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #3 !dbg !374 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !376, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata ptr %1, metadata !377, metadata !DIExpression()), !dbg !378
  tail call void @add4x4_idct(ptr noundef %0, ptr noundef %1), !dbg !379
  %3 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !380
  %4 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 1, !dbg !381
  tail call void @add4x4_idct(ptr noundef nonnull %3, ptr noundef nonnull %4), !dbg !382
  %5 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !383
  %6 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 2, !dbg !384
  tail call void @add4x4_idct(ptr noundef nonnull %5, ptr noundef nonnull %6), !dbg !385
  %7 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !386
  %8 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 3, !dbg !387
  tail call void @add4x4_idct(ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub16x16_dct(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 !dbg !390 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !392, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata ptr %1, metadata !393, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata ptr %2, metadata !394, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata ptr %0, metadata !356, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata ptr %1, metadata !357, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata ptr %2, metadata !358, metadata !DIExpression()), !dbg !396
  tail call void @sub4x4_dct(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !398
  %4 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 1, !dbg !399
  %5 = getelementptr inbounds i8, ptr %1, i64 4, !dbg !400
  %6 = getelementptr inbounds i8, ptr %2, i64 4, !dbg !401
  tail call void @sub4x4_dct(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6), !dbg !402
  %7 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 2, !dbg !403
  %8 = getelementptr inbounds i8, ptr %1, i64 64, !dbg !404
  %9 = getelementptr inbounds i8, ptr %2, i64 128, !dbg !405
  tail call void @sub4x4_dct(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9), !dbg !406
  %10 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 3, !dbg !407
  %11 = getelementptr inbounds i8, ptr %1, i64 68, !dbg !408
  %12 = getelementptr inbounds i8, ptr %2, i64 132, !dbg !409
  tail call void @sub4x4_dct(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12), !dbg !410
  %13 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 4, !dbg !411
  %14 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !412
  %15 = getelementptr inbounds i8, ptr %2, i64 8, !dbg !413
  call void @llvm.dbg.value(metadata ptr %13, metadata !356, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata ptr %14, metadata !357, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata ptr %15, metadata !358, metadata !DIExpression()), !dbg !414
  tail call void @sub4x4_dct(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15), !dbg !416
  %16 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 5, !dbg !417
  %17 = getelementptr inbounds i8, ptr %1, i64 12, !dbg !418
  %18 = getelementptr inbounds i8, ptr %2, i64 12, !dbg !419
  tail call void @sub4x4_dct(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18), !dbg !420
  %19 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 6, !dbg !421
  %20 = getelementptr inbounds i8, ptr %1, i64 72, !dbg !422
  %21 = getelementptr inbounds i8, ptr %2, i64 136, !dbg !423
  tail call void @sub4x4_dct(ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21), !dbg !424
  %22 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 7, !dbg !425
  %23 = getelementptr inbounds i8, ptr %1, i64 76, !dbg !426
  %24 = getelementptr inbounds i8, ptr %2, i64 140, !dbg !427
  tail call void @sub4x4_dct(ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %24), !dbg !428
  %25 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 8, !dbg !429
  %26 = getelementptr inbounds i8, ptr %1, i64 128, !dbg !430
  %27 = getelementptr inbounds i8, ptr %2, i64 256, !dbg !431
  call void @llvm.dbg.value(metadata ptr %25, metadata !356, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata ptr %26, metadata !357, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata ptr %27, metadata !358, metadata !DIExpression()), !dbg !432
  tail call void @sub4x4_dct(ptr noundef nonnull %25, ptr noundef nonnull %26, ptr noundef nonnull %27), !dbg !434
  %28 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 9, !dbg !435
  %29 = getelementptr inbounds i8, ptr %1, i64 132, !dbg !436
  %30 = getelementptr inbounds i8, ptr %2, i64 260, !dbg !437
  tail call void @sub4x4_dct(ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %30), !dbg !438
  %31 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 10, !dbg !439
  %32 = getelementptr inbounds i8, ptr %1, i64 192, !dbg !440
  %33 = getelementptr inbounds i8, ptr %2, i64 384, !dbg !441
  tail call void @sub4x4_dct(ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef nonnull %33), !dbg !442
  %34 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 11, !dbg !443
  %35 = getelementptr inbounds i8, ptr %1, i64 196, !dbg !444
  %36 = getelementptr inbounds i8, ptr %2, i64 388, !dbg !445
  tail call void @sub4x4_dct(ptr noundef nonnull %34, ptr noundef nonnull %35, ptr noundef nonnull %36), !dbg !446
  %37 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 12, !dbg !447
  %38 = getelementptr inbounds i8, ptr %1, i64 136, !dbg !448
  %39 = getelementptr inbounds i8, ptr %2, i64 264, !dbg !449
  call void @llvm.dbg.value(metadata ptr %37, metadata !356, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata ptr %38, metadata !357, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata ptr %39, metadata !358, metadata !DIExpression()), !dbg !450
  tail call void @sub4x4_dct(ptr noundef nonnull %37, ptr noundef nonnull %38, ptr noundef nonnull %39), !dbg !452
  %40 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 13, !dbg !453
  %41 = getelementptr inbounds i8, ptr %1, i64 140, !dbg !454
  %42 = getelementptr inbounds i8, ptr %2, i64 268, !dbg !455
  tail call void @sub4x4_dct(ptr noundef nonnull %40, ptr noundef nonnull %41, ptr noundef nonnull %42), !dbg !456
  %43 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 14, !dbg !457
  %44 = getelementptr inbounds i8, ptr %1, i64 200, !dbg !458
  %45 = getelementptr inbounds i8, ptr %2, i64 392, !dbg !459
  tail call void @sub4x4_dct(ptr noundef nonnull %43, ptr noundef nonnull %44, ptr noundef nonnull %45), !dbg !460
  %46 = getelementptr inbounds [4 x [4 x i16]], ptr %0, i64 15, !dbg !461
  %47 = getelementptr inbounds i8, ptr %1, i64 204, !dbg !462
  %48 = getelementptr inbounds i8, ptr %2, i64 396, !dbg !463
  tail call void @sub4x4_dct(ptr noundef nonnull %46, ptr noundef nonnull %47, ptr noundef nonnull %48), !dbg !464
  ret void, !dbg !465
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @add16x16_idct(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #3 !dbg !466 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !468, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata ptr %1, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata ptr %0, metadata !376, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata ptr %1, metadata !377, metadata !DIExpression()), !dbg !471
  tail call void @add4x4_idct(ptr noundef %0, ptr noundef %1), !dbg !473
  %3 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !474
  %4 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 1, !dbg !475
  tail call void @add4x4_idct(ptr noundef nonnull %3, ptr noundef nonnull %4), !dbg !476
  %5 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !477
  %6 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 2, !dbg !478
  tail call void @add4x4_idct(ptr noundef nonnull %5, ptr noundef nonnull %6), !dbg !479
  %7 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !480
  %8 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 3, !dbg !481
  tail call void @add4x4_idct(ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !482
  %9 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !483
  %10 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 4, !dbg !484
  call void @llvm.dbg.value(metadata ptr %9, metadata !376, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.value(metadata ptr %10, metadata !377, metadata !DIExpression()), !dbg !485
  tail call void @add4x4_idct(ptr noundef nonnull %9, ptr noundef nonnull %10), !dbg !487
  %11 = getelementptr inbounds i8, ptr %0, i64 12, !dbg !488
  %12 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 5, !dbg !489
  tail call void @add4x4_idct(ptr noundef nonnull %11, ptr noundef nonnull %12), !dbg !490
  %13 = getelementptr inbounds i8, ptr %0, i64 136, !dbg !491
  %14 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 6, !dbg !492
  tail call void @add4x4_idct(ptr noundef nonnull %13, ptr noundef nonnull %14), !dbg !493
  %15 = getelementptr inbounds i8, ptr %0, i64 140, !dbg !494
  %16 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 7, !dbg !495
  tail call void @add4x4_idct(ptr noundef nonnull %15, ptr noundef nonnull %16), !dbg !496
  %17 = getelementptr inbounds i8, ptr %0, i64 256, !dbg !497
  %18 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 8, !dbg !498
  call void @llvm.dbg.value(metadata ptr %17, metadata !376, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata ptr %18, metadata !377, metadata !DIExpression()), !dbg !499
  tail call void @add4x4_idct(ptr noundef nonnull %17, ptr noundef nonnull %18), !dbg !501
  %19 = getelementptr inbounds i8, ptr %0, i64 260, !dbg !502
  %20 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 9, !dbg !503
  tail call void @add4x4_idct(ptr noundef nonnull %19, ptr noundef nonnull %20), !dbg !504
  %21 = getelementptr inbounds i8, ptr %0, i64 384, !dbg !505
  %22 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 10, !dbg !506
  tail call void @add4x4_idct(ptr noundef nonnull %21, ptr noundef nonnull %22), !dbg !507
  %23 = getelementptr inbounds i8, ptr %0, i64 388, !dbg !508
  %24 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 11, !dbg !509
  tail call void @add4x4_idct(ptr noundef nonnull %23, ptr noundef nonnull %24), !dbg !510
  %25 = getelementptr inbounds i8, ptr %0, i64 264, !dbg !511
  %26 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 12, !dbg !512
  call void @llvm.dbg.value(metadata ptr %25, metadata !376, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata ptr %26, metadata !377, metadata !DIExpression()), !dbg !513
  tail call void @add4x4_idct(ptr noundef nonnull %25, ptr noundef nonnull %26), !dbg !515
  %27 = getelementptr inbounds i8, ptr %0, i64 268, !dbg !516
  %28 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 13, !dbg !517
  tail call void @add4x4_idct(ptr noundef nonnull %27, ptr noundef nonnull %28), !dbg !518
  %29 = getelementptr inbounds i8, ptr %0, i64 392, !dbg !519
  %30 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 14, !dbg !520
  tail call void @add4x4_idct(ptr noundef nonnull %29, ptr noundef nonnull %30), !dbg !521
  %31 = getelementptr inbounds i8, ptr %0, i64 396, !dbg !522
  %32 = getelementptr inbounds [4 x [4 x i16]], ptr %1, i64 15, !dbg !523
  tail call void @add4x4_idct(ptr noundef nonnull %31, ptr noundef nonnull %32), !dbg !524
  ret void, !dbg !525
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub8x8_dct8(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 !dbg !526 {
  %4 = alloca [2 x [8 x i16]], align 16
  call void @llvm.dbg.declare(metadata ptr %4, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 256)), !dbg !571
  call void @llvm.dbg.value(metadata ptr %0, metadata !528, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata ptr %1, metadata !529, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata ptr %2, metadata !530, metadata !DIExpression()), !dbg !572
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4), !dbg !573
  call void @llvm.dbg.value(metadata ptr undef, metadata !213, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 8, metadata !218, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 16, metadata !220, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 32, metadata !222, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 0, metadata !223, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 0, metadata !223, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !224, metadata !DIExpression()), !dbg !574
  %5 = load <8 x i8>, ptr %1, align 1, !dbg !576, !tbaa !234
  %6 = zext <8 x i8> %5 to <8 x i16>, !dbg !576
  %7 = load <8 x i8>, ptr %2, align 1, !dbg !577, !tbaa !234
  %8 = zext <8 x i8> %7 to <8 x i16>, !dbg !577
  %9 = sub nsw <8 x i16> %6, %8, !dbg !578
  store <8 x i16> %9, ptr %4, align 16, !dbg !579, !tbaa !258
  call void @llvm.dbg.value(metadata i64 8, metadata !224, metadata !DIExpression()), !dbg !574
  %10 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !580
  call void @llvm.dbg.value(metadata ptr %10, metadata !219, metadata !DIExpression()), !dbg !574
  %11 = getelementptr inbounds i8, ptr %2, i64 32, !dbg !581
  call void @llvm.dbg.value(metadata ptr %11, metadata !221, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !223, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !223, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %10, metadata !219, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %11, metadata !221, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !224, metadata !DIExpression()), !dbg !574
  %12 = load <8 x i8>, ptr %10, align 1, !dbg !576, !tbaa !234
  %13 = zext <8 x i8> %12 to <8 x i16>, !dbg !576
  %14 = load <8 x i8>, ptr %11, align 1, !dbg !577, !tbaa !234
  %15 = zext <8 x i8> %14 to <8 x i16>, !dbg !577
  %16 = sub nsw <8 x i16> %13, %15, !dbg !578
  %17 = getelementptr inbounds i8, ptr %4, i64 16, !dbg !579
  store <8 x i16> %16, ptr %17, align 16, !dbg !579, !tbaa !258
  call void @llvm.dbg.value(metadata i64 8, metadata !224, metadata !DIExpression()), !dbg !574
  %18 = getelementptr inbounds i8, ptr %1, i64 32, !dbg !580
  call void @llvm.dbg.value(metadata ptr %18, metadata !219, metadata !DIExpression()), !dbg !574
  %19 = getelementptr inbounds i8, ptr %2, i64 64, !dbg !581
  call void @llvm.dbg.value(metadata ptr %19, metadata !221, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !223, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !223, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %18, metadata !219, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %19, metadata !221, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !224, metadata !DIExpression()), !dbg !574
  %20 = load <8 x i8>, ptr %18, align 1, !dbg !576, !tbaa !234
  %21 = zext <8 x i8> %20 to <8 x i16>, !dbg !576
  %22 = load <8 x i8>, ptr %19, align 1, !dbg !577, !tbaa !234
  %23 = zext <8 x i8> %22 to <8 x i16>, !dbg !577
  %24 = sub nsw <8 x i16> %21, %23, !dbg !578
  call void @llvm.dbg.value(metadata <8 x i16> %24, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 128)), !dbg !572
  call void @llvm.dbg.value(metadata i64 8, metadata !224, metadata !DIExpression()), !dbg !574
  %25 = getelementptr inbounds i8, ptr %1, i64 48, !dbg !580
  call void @llvm.dbg.value(metadata ptr %25, metadata !219, metadata !DIExpression()), !dbg !574
  %26 = getelementptr inbounds i8, ptr %2, i64 96, !dbg !581
  call void @llvm.dbg.value(metadata ptr %26, metadata !221, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !223, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !223, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %25, metadata !219, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %26, metadata !221, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !224, metadata !DIExpression()), !dbg !574
  %27 = load <8 x i8>, ptr %25, align 1, !dbg !576, !tbaa !234
  %28 = zext <8 x i8> %27 to <8 x i16>, !dbg !576
  %29 = load <8 x i8>, ptr %26, align 1, !dbg !577, !tbaa !234
  %30 = zext <8 x i8> %29 to <8 x i16>, !dbg !577
  %31 = sub nsw <8 x i16> %28, %30, !dbg !578
  call void @llvm.dbg.value(metadata <8 x i16> %31, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 128)), !dbg !572
  call void @llvm.dbg.value(metadata i64 8, metadata !224, metadata !DIExpression()), !dbg !574
  %32 = getelementptr inbounds i8, ptr %1, i64 64, !dbg !580
  call void @llvm.dbg.value(metadata ptr %32, metadata !219, metadata !DIExpression()), !dbg !574
  %33 = getelementptr inbounds i8, ptr %2, i64 128, !dbg !581
  call void @llvm.dbg.value(metadata ptr %33, metadata !221, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !223, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !223, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %32, metadata !219, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %33, metadata !221, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !224, metadata !DIExpression()), !dbg !574
  %34 = load <8 x i8>, ptr %32, align 1, !dbg !576, !tbaa !234
  %35 = zext <8 x i8> %34 to <8 x i16>, !dbg !576
  %36 = load <8 x i8>, ptr %33, align 1, !dbg !577, !tbaa !234
  %37 = zext <8 x i8> %36 to <8 x i16>, !dbg !577
  %38 = sub nsw <8 x i16> %35, %37, !dbg !578
  call void @llvm.dbg.value(metadata <8 x i16> %38, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 128)), !dbg !572
  call void @llvm.dbg.value(metadata i64 8, metadata !224, metadata !DIExpression()), !dbg !574
  %39 = getelementptr inbounds i8, ptr %1, i64 80, !dbg !580
  call void @llvm.dbg.value(metadata ptr %39, metadata !219, metadata !DIExpression()), !dbg !574
  %40 = getelementptr inbounds i8, ptr %2, i64 160, !dbg !581
  call void @llvm.dbg.value(metadata ptr %40, metadata !221, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !223, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !223, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %39, metadata !219, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %40, metadata !221, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !224, metadata !DIExpression()), !dbg !574
  %41 = load <8 x i8>, ptr %39, align 1, !dbg !576, !tbaa !234
  %42 = zext <8 x i8> %41 to <8 x i16>, !dbg !576
  %43 = load <8 x i8>, ptr %40, align 1, !dbg !577, !tbaa !234
  %44 = zext <8 x i8> %43 to <8 x i16>, !dbg !577
  %45 = sub nsw <8 x i16> %42, %44, !dbg !578
  call void @llvm.dbg.value(metadata <8 x i16> %45, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 640, 128)), !dbg !572
  call void @llvm.dbg.value(metadata i64 8, metadata !224, metadata !DIExpression()), !dbg !574
  %46 = getelementptr inbounds i8, ptr %1, i64 96, !dbg !580
  call void @llvm.dbg.value(metadata ptr %46, metadata !219, metadata !DIExpression()), !dbg !574
  %47 = getelementptr inbounds i8, ptr %2, i64 192, !dbg !581
  call void @llvm.dbg.value(metadata ptr %47, metadata !221, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !223, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !223, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %46, metadata !219, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %47, metadata !221, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !224, metadata !DIExpression()), !dbg !574
  %48 = load <8 x i8>, ptr %46, align 1, !dbg !576, !tbaa !234
  %49 = zext <8 x i8> %48 to <8 x i16>, !dbg !576
  %50 = load <8 x i8>, ptr %47, align 1, !dbg !577, !tbaa !234
  %51 = zext <8 x i8> %50 to <8 x i16>, !dbg !577
  %52 = sub nsw <8 x i16> %49, %51, !dbg !578
  call void @llvm.dbg.value(metadata <8 x i16> %52, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 768, 128)), !dbg !572
  call void @llvm.dbg.value(metadata i64 8, metadata !224, metadata !DIExpression()), !dbg !574
  %53 = getelementptr inbounds i8, ptr %1, i64 112, !dbg !580
  call void @llvm.dbg.value(metadata ptr %53, metadata !219, metadata !DIExpression()), !dbg !574
  %54 = getelementptr inbounds i8, ptr %2, i64 224, !dbg !581
  call void @llvm.dbg.value(metadata ptr %54, metadata !221, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !223, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !223, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %53, metadata !219, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %54, metadata !221, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 2, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 3, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 4, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 5, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 6, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 7, metadata !224, metadata !DIExpression()), !dbg !574
  %55 = load <8 x i8>, ptr %53, align 1, !dbg !576, !tbaa !234
  %56 = zext <8 x i8> %55 to <8 x i16>, !dbg !576
  %57 = load <8 x i8>, ptr %54, align 1, !dbg !577, !tbaa !234
  %58 = zext <8 x i8> %57 to <8 x i16>, !dbg !577
  %59 = sub nsw <8 x i16> %56, %58, !dbg !578
  call void @llvm.dbg.value(metadata <8 x i16> %59, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 896, 128)), !dbg !572
  call void @llvm.dbg.value(metadata i64 8, metadata !224, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata ptr %53, metadata !219, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !574
  call void @llvm.dbg.value(metadata ptr %54, metadata !221, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !574
  call void @llvm.dbg.value(metadata i64 8, metadata !223, metadata !DIExpression()), !dbg !574
  %60 = load <8 x i16>, ptr %4, align 16, !dbg !582, !tbaa !258
  %61 = sext <8 x i16> %60 to <8 x i32>, !dbg !582
  %62 = sext <8 x i16> %59 to <8 x i32>, !dbg !582
  %63 = add nsw <8 x i32> %62, %61, !dbg !582
  %64 = getelementptr inbounds i8, ptr %4, i64 16, !dbg !582
  %65 = load <8 x i16>, ptr %64, align 16, !dbg !582, !tbaa !258
  %66 = sext <8 x i16> %65 to <8 x i32>, !dbg !582
  %67 = sext <8 x i16> %52 to <8 x i32>, !dbg !582
  %68 = add nsw <8 x i32> %67, %66, !dbg !582
  %69 = sext <8 x i16> %24 to <8 x i32>, !dbg !582
  %70 = sext <8 x i16> %45 to <8 x i32>, !dbg !582
  %71 = add nsw <8 x i32> %70, %69, !dbg !582
  %72 = sext <8 x i16> %31 to <8 x i32>, !dbg !582
  %73 = sext <8 x i16> %38 to <8 x i32>, !dbg !582
  %74 = add nsw <8 x i32> %73, %72, !dbg !582
  %75 = add nsw <8 x i32> %74, %63, !dbg !582
  %76 = add nsw <8 x i32> %71, %68, !dbg !582
  %77 = sub nsw <8 x i32> %63, %74, !dbg !582
  %78 = sub nsw <8 x i32> %68, %71, !dbg !582
  %79 = sub nsw <8 x i32> %61, %62, !dbg !582
  %80 = sub nsw <8 x i32> %66, %67, !dbg !582
  %81 = sub nsw <8 x i32> %69, %70, !dbg !582
  %82 = sub nsw <8 x i32> %72, %73, !dbg !582
  %83 = ashr <8 x i32> %79, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !582
  %84 = add nsw <8 x i32> %83, %79, !dbg !582
  %85 = add nsw <8 x i32> %84, %80, !dbg !582
  %86 = add nsw <8 x i32> %85, %81, !dbg !582
  %87 = ashr <8 x i32> %81, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !582
  %88 = add nsw <8 x i32> %81, %87, !dbg !582
  %89 = add nsw <8 x i32> %88, %82, !dbg !582
  %90 = sub nsw <8 x i32> %79, %89, !dbg !582
  %91 = ashr <8 x i32> %80, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !582
  %92 = add nsw <8 x i32> %80, %91, !dbg !582
  %93 = sub nsw <8 x i32> %79, %92, !dbg !582
  %94 = add nsw <8 x i32> %93, %82, !dbg !582
  %95 = sub nsw <8 x i32> %80, %81, !dbg !582
  %96 = ashr <8 x i32> %82, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !582
  %97 = add nsw <8 x i32> %82, %95, !dbg !582
  %98 = add nsw <8 x i32> %97, %96, !dbg !582
  %99 = add nsw <8 x i32> %75, %76, !dbg !582
  %100 = trunc <8 x i32> %99 to <8 x i16>, !dbg !582
  store <8 x i16> %100, ptr %4, align 16, !dbg !582, !tbaa !258
  %101 = lshr <8 x i32> %98, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, !dbg !582
  %102 = add nsw <8 x i32> %101, %86, !dbg !582
  %103 = trunc <8 x i32> %102 to <8 x i16>, !dbg !582
  %104 = getelementptr inbounds i8, ptr %4, i64 16, !dbg !582
  store <8 x i16> %103, ptr %104, align 16, !dbg !582, !tbaa !258
  %105 = lshr <8 x i32> %78, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !582
  %106 = add <8 x i32> %77, %105, !dbg !582
  %107 = trunc <8 x i32> %106 to <8 x i16>, !dbg !582
  call void @llvm.dbg.value(metadata <8 x i16> %107, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 128)), !dbg !572
  %108 = lshr <8 x i32> %94, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, !dbg !582
  %109 = add nsw <8 x i32> %90, %108, !dbg !582
  %110 = trunc <8 x i32> %109 to <8 x i16>, !dbg !582
  call void @llvm.dbg.value(metadata <8 x i16> %110, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 128)), !dbg !572
  %111 = sub nsw <8 x i32> %75, %76, !dbg !582
  %112 = trunc <8 x i32> %111 to <8 x i16>, !dbg !582
  call void @llvm.dbg.value(metadata <8 x i16> %112, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 128)), !dbg !572
  %113 = lshr <8 x i32> %90, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, !dbg !582
  %114 = sub nsw <8 x i32> %94, %113, !dbg !582
  %115 = trunc <8 x i32> %114 to <8 x i16>, !dbg !582
  call void @llvm.dbg.value(metadata <8 x i16> %115, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 640, 128)), !dbg !572
  %116 = lshr <8 x i32> %77, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !582
  %117 = sub <8 x i32> %116, %78, !dbg !582
  %118 = trunc <8 x i32> %117 to <8 x i16>, !dbg !582
  call void @llvm.dbg.value(metadata <8 x i16> %118, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 768, 128)), !dbg !572
  %119 = lshr <8 x i32> %86, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, !dbg !582
  %120 = sub nsw <8 x i32> %119, %98, !dbg !582
  %121 = trunc <8 x i32> %120 to <8 x i16>, !dbg !582
  call void @llvm.dbg.value(metadata <8 x i16> %121, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 896, 128)), !dbg !572
  %122 = load <8 x i16>, ptr %4, align 16, !dbg !583
  %123 = getelementptr inbounds i8, ptr %4, i64 16, !dbg !583
  %124 = load i16, ptr %123, align 16, !dbg !583, !tbaa !258
  %125 = insertelement <8 x i16> %122, i16 %124, i64 1, !dbg !584
  %126 = shufflevector <8 x i16> %125, <8 x i16> %107, <8 x i32> <i32 0, i32 1, i32 8, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !584
  %127 = shufflevector <8 x i16> %126, <8 x i16> %110, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !584
  %128 = shufflevector <8 x i16> %127, <8 x i16> %112, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 undef, i32 undef, i32 undef>, !dbg !584
  %129 = shufflevector <8 x i16> %128, <8 x i16> %115, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 undef, i32 undef>, !dbg !584
  %130 = shufflevector <8 x i16> %129, <8 x i16> %118, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 undef>, !dbg !584
  %131 = shufflevector <8 x i16> %130, <8 x i16> %121, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>, !dbg !584
  %132 = sext <8 x i16> %131 to <8 x i32>, !dbg !584
  %133 = getelementptr inbounds i8, ptr %4, i64 14, !dbg !583
  %134 = load <8 x i16>, ptr %133, align 2, !dbg !583
  %135 = getelementptr inbounds i8, ptr %4, i64 30, !dbg !583
  %136 = load i16, ptr %135, align 2, !dbg !583, !tbaa !258
  %137 = insertelement <8 x i16> %134, i16 %136, i64 1, !dbg !584
  %138 = shufflevector <8 x i16> %137, <8 x i16> %107, <8 x i32> <i32 0, i32 1, i32 15, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !584
  %139 = shufflevector <8 x i16> %138, <8 x i16> %110, <8 x i32> <i32 0, i32 1, i32 2, i32 15, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !584
  %140 = shufflevector <8 x i16> %139, <8 x i16> %112, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 15, i32 undef, i32 undef, i32 undef>, !dbg !584
  %141 = shufflevector <8 x i16> %140, <8 x i16> %115, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 15, i32 undef, i32 undef>, !dbg !584
  %142 = shufflevector <8 x i16> %141, <8 x i16> %118, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 15, i32 undef>, !dbg !584
  %143 = shufflevector <8 x i16> %142, <8 x i16> %121, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 15>, !dbg !584
  %144 = sext <8 x i16> %143 to <8 x i32>, !dbg !584
  %145 = add nsw <8 x i32> %144, %132, !dbg !583
  %146 = getelementptr inbounds i8, ptr %4, i64 2, !dbg !583
  %147 = load <8 x i16>, ptr %146, align 2, !dbg !583
  %148 = getelementptr inbounds i8, ptr %4, i64 18, !dbg !583
  %149 = load i16, ptr %148, align 2, !dbg !583, !tbaa !258
  %150 = insertelement <8 x i16> %147, i16 %149, i64 1, !dbg !584
  %151 = shufflevector <8 x i16> %150, <8 x i16> %107, <8 x i32> <i32 0, i32 1, i32 9, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !584
  %152 = shufflevector <8 x i16> %151, <8 x i16> %110, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !584
  %153 = shufflevector <8 x i16> %152, <8 x i16> %112, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 undef, i32 undef, i32 undef>, !dbg !584
  %154 = shufflevector <8 x i16> %153, <8 x i16> %115, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 9, i32 undef, i32 undef>, !dbg !584
  %155 = shufflevector <8 x i16> %154, <8 x i16> %118, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 undef>, !dbg !584
  %156 = shufflevector <8 x i16> %155, <8 x i16> %121, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 9>, !dbg !584
  %157 = sext <8 x i16> %156 to <8 x i32>, !dbg !584
  %158 = getelementptr inbounds i8, ptr %4, i64 12, !dbg !583
  %159 = load <8 x i16>, ptr %158, align 4, !dbg !583
  %160 = getelementptr inbounds i8, ptr %4, i64 28, !dbg !583
  %161 = load i16, ptr %160, align 4, !dbg !583, !tbaa !258
  %162 = insertelement <8 x i16> %159, i16 %161, i64 1, !dbg !584
  %163 = shufflevector <8 x i16> %162, <8 x i16> %107, <8 x i32> <i32 0, i32 1, i32 14, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !584
  %164 = shufflevector <8 x i16> %163, <8 x i16> %110, <8 x i32> <i32 0, i32 1, i32 2, i32 14, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !584
  %165 = shufflevector <8 x i16> %164, <8 x i16> %112, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 14, i32 undef, i32 undef, i32 undef>, !dbg !584
  %166 = shufflevector <8 x i16> %165, <8 x i16> %115, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 14, i32 undef, i32 undef>, !dbg !584
  %167 = shufflevector <8 x i16> %166, <8 x i16> %118, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 undef>, !dbg !584
  %168 = shufflevector <8 x i16> %167, <8 x i16> %121, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 14>, !dbg !584
  %169 = sext <8 x i16> %168 to <8 x i32>, !dbg !584
  %170 = add nsw <8 x i32> %169, %157, !dbg !583
  %171 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !583
  %172 = load <8 x i16>, ptr %171, align 4, !dbg !583
  %173 = getelementptr inbounds i8, ptr %4, i64 20, !dbg !583
  %174 = load i16, ptr %173, align 4, !dbg !583, !tbaa !258
  %175 = insertelement <8 x i16> %172, i16 %174, i64 1, !dbg !584
  %176 = shufflevector <8 x i16> %175, <8 x i16> %107, <8 x i32> <i32 0, i32 1, i32 10, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !584
  %177 = shufflevector <8 x i16> %176, <8 x i16> %110, <8 x i32> <i32 0, i32 1, i32 2, i32 10, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !584
  %178 = shufflevector <8 x i16> %177, <8 x i16> %112, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 10, i32 undef, i32 undef, i32 undef>, !dbg !584
  %179 = shufflevector <8 x i16> %178, <8 x i16> %115, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 10, i32 undef, i32 undef>, !dbg !584
  %180 = shufflevector <8 x i16> %179, <8 x i16> %118, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 10, i32 undef>, !dbg !584
  %181 = shufflevector <8 x i16> %180, <8 x i16> %121, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 10>, !dbg !584
  %182 = sext <8 x i16> %181 to <8 x i32>, !dbg !584
  %183 = getelementptr inbounds i8, ptr %4, i64 10, !dbg !583
  %184 = load <8 x i16>, ptr %183, align 2, !dbg !583
  %185 = getelementptr inbounds i8, ptr %4, i64 26, !dbg !583
  %186 = load i16, ptr %185, align 2, !dbg !583, !tbaa !258
  %187 = insertelement <8 x i16> %184, i16 %186, i64 1, !dbg !584
  %188 = shufflevector <8 x i16> %187, <8 x i16> %107, <8 x i32> <i32 0, i32 1, i32 13, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !584
  %189 = shufflevector <8 x i16> %188, <8 x i16> %110, <8 x i32> <i32 0, i32 1, i32 2, i32 13, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !584
  %190 = shufflevector <8 x i16> %189, <8 x i16> %112, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 13, i32 undef, i32 undef, i32 undef>, !dbg !584
  %191 = shufflevector <8 x i16> %190, <8 x i16> %115, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 undef, i32 undef>, !dbg !584
  %192 = shufflevector <8 x i16> %191, <8 x i16> %118, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 13, i32 undef>, !dbg !584
  %193 = shufflevector <8 x i16> %192, <8 x i16> %121, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 13>, !dbg !584
  %194 = sext <8 x i16> %193 to <8 x i32>, !dbg !584
  %195 = add nsw <8 x i32> %194, %182, !dbg !583
  %196 = getelementptr inbounds i8, ptr %4, i64 6, !dbg !583
  %197 = load <8 x i16>, ptr %196, align 2, !dbg !583
  %198 = getelementptr inbounds i8, ptr %4, i64 22, !dbg !583
  %199 = load i16, ptr %198, align 2, !dbg !583, !tbaa !258
  %200 = insertelement <8 x i16> %197, i16 %199, i64 1, !dbg !584
  %201 = shufflevector <8 x i16> %200, <8 x i16> %107, <8 x i32> <i32 0, i32 1, i32 11, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !584
  %202 = shufflevector <8 x i16> %201, <8 x i16> %110, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !584
  %203 = shufflevector <8 x i16> %202, <8 x i16> %112, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 11, i32 undef, i32 undef, i32 undef>, !dbg !584
  %204 = shufflevector <8 x i16> %203, <8 x i16> %115, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 undef, i32 undef>, !dbg !584
  %205 = shufflevector <8 x i16> %204, <8 x i16> %118, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 11, i32 undef>, !dbg !584
  %206 = shufflevector <8 x i16> %205, <8 x i16> %121, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>, !dbg !584
  %207 = sext <8 x i16> %206 to <8 x i32>, !dbg !584
  %208 = getelementptr inbounds i8, ptr %4, i64 8, !dbg !583
  %209 = load <8 x i16>, ptr %208, align 8, !dbg !583
  %210 = getelementptr inbounds i8, ptr %4, i64 24, !dbg !583
  %211 = load i16, ptr %210, align 8, !dbg !583, !tbaa !258
  %212 = insertelement <8 x i16> %209, i16 %211, i64 1, !dbg !584
  %213 = shufflevector <8 x i16> %212, <8 x i16> %107, <8 x i32> <i32 0, i32 1, i32 12, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !584
  %214 = shufflevector <8 x i16> %213, <8 x i16> %110, <8 x i32> <i32 0, i32 1, i32 2, i32 12, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !584
  %215 = shufflevector <8 x i16> %214, <8 x i16> %112, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 undef, i32 undef, i32 undef>, !dbg !584
  %216 = shufflevector <8 x i16> %215, <8 x i16> %115, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 12, i32 undef, i32 undef>, !dbg !584
  %217 = shufflevector <8 x i16> %216, <8 x i16> %118, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 12, i32 undef>, !dbg !584
  %218 = shufflevector <8 x i16> %217, <8 x i16> %121, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 12>, !dbg !584
  %219 = sext <8 x i16> %218 to <8 x i32>, !dbg !584
  %220 = add nsw <8 x i32> %219, %207, !dbg !583
  %221 = add nsw <8 x i32> %220, %145, !dbg !583
  %222 = add nsw <8 x i32> %195, %170, !dbg !583
  %223 = sub nsw <8 x i32> %145, %220, !dbg !583
  %224 = sub nsw <8 x i32> %170, %195, !dbg !583
  %225 = sub nsw <8 x i32> %132, %144, !dbg !583
  %226 = sub nsw <8 x i32> %157, %169, !dbg !583
  %227 = sub nsw <8 x i32> %182, %194, !dbg !583
  %228 = sub nsw <8 x i32> %207, %219, !dbg !583
  %229 = ashr <8 x i32> %225, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !583
  %230 = add nsw <8 x i32> %229, %225, !dbg !583
  %231 = add nsw <8 x i32> %230, %226, !dbg !583
  %232 = add nsw <8 x i32> %231, %227, !dbg !583
  %233 = ashr <8 x i32> %227, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !583
  %234 = add nsw <8 x i32> %227, %233, !dbg !583
  %235 = add nsw <8 x i32> %234, %228, !dbg !583
  %236 = sub nsw <8 x i32> %225, %235, !dbg !583
  %237 = ashr <8 x i32> %226, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !583
  %238 = add nsw <8 x i32> %226, %237, !dbg !583
  %239 = sub nsw <8 x i32> %225, %238, !dbg !583
  %240 = add nsw <8 x i32> %239, %228, !dbg !583
  %241 = sub nsw <8 x i32> %226, %227, !dbg !583
  %242 = ashr <8 x i32> %228, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !583
  %243 = add nsw <8 x i32> %228, %241, !dbg !583
  %244 = add nsw <8 x i32> %243, %242, !dbg !583
  %245 = add nsw <8 x i32> %221, %222, !dbg !583
  %246 = trunc <8 x i32> %245 to <8 x i16>, !dbg !583
  store <8 x i16> %246, ptr %0, align 2, !dbg !583, !tbaa !258
  %247 = lshr <8 x i32> %244, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, !dbg !583
  %248 = add nsw <8 x i32> %247, %232, !dbg !583
  %249 = trunc <8 x i32> %248 to <8 x i16>, !dbg !583
  %250 = getelementptr inbounds [8 x i16], ptr %0, i64 1, i64 0, !dbg !583
  store <8 x i16> %249, ptr %250, align 2, !dbg !583, !tbaa !258
  %251 = lshr <8 x i32> %224, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !583
  %252 = add <8 x i32> %223, %251, !dbg !583
  %253 = trunc <8 x i32> %252 to <8 x i16>, !dbg !583
  %254 = getelementptr inbounds [8 x i16], ptr %0, i64 2, i64 0, !dbg !583
  store <8 x i16> %253, ptr %254, align 2, !dbg !583, !tbaa !258
  %255 = lshr <8 x i32> %240, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, !dbg !583
  %256 = add nsw <8 x i32> %236, %255, !dbg !583
  %257 = trunc <8 x i32> %256 to <8 x i16>, !dbg !583
  %258 = getelementptr inbounds [8 x i16], ptr %0, i64 3, i64 0, !dbg !583
  store <8 x i16> %257, ptr %258, align 2, !dbg !583, !tbaa !258
  %259 = sub nsw <8 x i32> %221, %222, !dbg !583
  %260 = trunc <8 x i32> %259 to <8 x i16>, !dbg !583
  %261 = getelementptr inbounds [8 x i16], ptr %0, i64 4, i64 0, !dbg !583
  store <8 x i16> %260, ptr %261, align 2, !dbg !583, !tbaa !258
  %262 = lshr <8 x i32> %236, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, !dbg !583
  %263 = sub nsw <8 x i32> %240, %262, !dbg !583
  %264 = trunc <8 x i32> %263 to <8 x i16>, !dbg !583
  %265 = getelementptr inbounds [8 x i16], ptr %0, i64 5, i64 0, !dbg !583
  store <8 x i16> %264, ptr %265, align 2, !dbg !583, !tbaa !258
  %266 = lshr <8 x i32> %223, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !583
  %267 = sub <8 x i32> %266, %224, !dbg !583
  %268 = trunc <8 x i32> %267 to <8 x i16>, !dbg !583
  %269 = getelementptr inbounds [8 x i16], ptr %0, i64 6, i64 0, !dbg !583
  store <8 x i16> %268, ptr %269, align 2, !dbg !583, !tbaa !258
  %270 = lshr <8 x i32> %232, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, !dbg !583
  %271 = sub nsw <8 x i32> %270, %244, !dbg !583
  %272 = trunc <8 x i32> %271 to <8 x i16>, !dbg !583
  %273 = getelementptr inbounds [8 x i16], ptr %0, i64 7, i64 0, !dbg !583
  store <8 x i16> %272, ptr %273, align 2, !dbg !583, !tbaa !258
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4), !dbg !585
  ret void, !dbg !585
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @add8x8_idct8(ptr nocapture noundef %0, ptr nocapture noundef %1) #4 !dbg !586 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !588, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata ptr %1, metadata !589, metadata !DIExpression()), !dbg !629
  %3 = load i16, ptr %1, align 2, !dbg !630, !tbaa !258
  %4 = add i16 %3, 32, !dbg !630
  store i16 %4, ptr %1, align 2, !dbg !630, !tbaa !258
  call void @llvm.dbg.value(metadata i32 0, metadata !590, metadata !DIExpression()), !dbg !629
  %5 = load <8 x i16>, ptr %1, align 2, !dbg !631, !tbaa !258
  %6 = zext <8 x i16> %5 to <8 x i32>, !dbg !631
  %7 = getelementptr inbounds [8 x i16], ptr %1, i64 4, i64 0, !dbg !631
  %8 = load <8 x i16>, ptr %7, align 2, !dbg !631, !tbaa !258
  %9 = zext <8 x i16> %8 to <8 x i32>, !dbg !631
  %10 = add nuw nsw <8 x i32> %9, %6, !dbg !631
  %11 = sub nsw <8 x i32> %6, %9, !dbg !631
  %12 = getelementptr inbounds [8 x i16], ptr %1, i64 2, i64 0, !dbg !631
  %13 = load <8 x i16>, ptr %12, align 2, !dbg !631, !tbaa !258
  %14 = sext <8 x i16> %13 to <8 x i32>, !dbg !631
  %15 = ashr <8 x i32> %14, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !631
  %16 = getelementptr inbounds [8 x i16], ptr %1, i64 6, i64 0, !dbg !631
  %17 = load <8 x i16>, ptr %16, align 2, !dbg !631, !tbaa !258
  %18 = sext <8 x i16> %17 to <8 x i32>, !dbg !631
  %19 = sub nsw <8 x i32> %15, %18, !dbg !631
  %20 = ashr <8 x i32> %18, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !631
  %21 = add nsw <8 x i32> %20, %14, !dbg !631
  %22 = add nsw <8 x i32> %21, %10, !dbg !631
  %23 = add nsw <8 x i32> %19, %11, !dbg !631
  %24 = sub nsw <8 x i32> %11, %19, !dbg !631
  %25 = sub nsw <8 x i32> %10, %21, !dbg !631
  %26 = getelementptr inbounds [8 x i16], ptr %1, i64 3, i64 0, !dbg !631
  %27 = load <8 x i16>, ptr %26, align 2, !dbg !631, !tbaa !258
  %28 = sext <8 x i16> %27 to <8 x i32>, !dbg !631
  %29 = getelementptr inbounds [8 x i16], ptr %1, i64 5, i64 0, !dbg !631
  %30 = load <8 x i16>, ptr %29, align 2, !dbg !631, !tbaa !258
  %31 = sext <8 x i16> %30 to <8 x i32>, !dbg !631
  %32 = getelementptr inbounds [8 x i16], ptr %1, i64 7, i64 0, !dbg !631
  %33 = load <8 x i16>, ptr %32, align 2, !dbg !631, !tbaa !258
  %34 = sext <8 x i16> %33 to <8 x i32>, !dbg !631
  %35 = ashr <8 x i32> %34, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !631
  %36 = add nsw <8 x i32> %28, %34, !dbg !631
  %37 = add nsw <8 x i32> %36, %35, !dbg !631
  %38 = sub nsw <8 x i32> %31, %37, !dbg !631
  %39 = getelementptr inbounds [8 x i16], ptr %1, i64 1, i64 0, !dbg !631
  %40 = load <8 x i16>, ptr %39, align 2, !dbg !631, !tbaa !258
  %41 = sext <8 x i16> %40 to <8 x i32>, !dbg !631
  %42 = ashr <8 x i32> %28, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !631
  %43 = add nsw <8 x i32> %42, %28, !dbg !631
  %44 = sub nsw <8 x i32> %34, %43, !dbg !631
  %45 = add nsw <8 x i32> %44, %41, !dbg !631
  %46 = ashr <8 x i32> %31, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !631
  %47 = add nsw <8 x i32> %34, %31, !dbg !631
  %48 = add nsw <8 x i32> %47, %46, !dbg !631
  %49 = sub nsw <8 x i32> %48, %41, !dbg !631
  %50 = add nsw <8 x i32> %31, %28, !dbg !631
  %51 = add nsw <8 x i32> %50, %41, !dbg !631
  %52 = ashr <8 x i32> %41, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !631
  %53 = add nsw <8 x i32> %51, %52, !dbg !631
  %54 = ashr <8 x i32> %53, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, !dbg !631
  %55 = add nsw <8 x i32> %54, %38, !dbg !631
  %56 = ashr <8 x i32> %49, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, !dbg !631
  %57 = add nsw <8 x i32> %56, %45, !dbg !631
  %58 = ashr <8 x i32> %45, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, !dbg !631
  %59 = sub nsw <8 x i32> %58, %49, !dbg !631
  %60 = ashr <8 x i32> %38, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, !dbg !631
  %61 = sub nsw <8 x i32> %53, %60, !dbg !631
  %62 = add nsw <8 x i32> %61, %22, !dbg !631
  %63 = trunc <8 x i32> %62 to <8 x i16>, !dbg !631
  store <8 x i16> %63, ptr %1, align 2, !dbg !631, !tbaa !258
  %64 = add nsw <8 x i32> %59, %23, !dbg !631
  %65 = trunc <8 x i32> %64 to <8 x i16>, !dbg !631
  store <8 x i16> %65, ptr %39, align 2, !dbg !631, !tbaa !258
  %66 = add nsw <8 x i32> %57, %24, !dbg !631
  %67 = trunc <8 x i32> %66 to <8 x i16>, !dbg !631
  store <8 x i16> %67, ptr %12, align 2, !dbg !631, !tbaa !258
  %68 = add nsw <8 x i32> %55, %25, !dbg !631
  %69 = trunc <8 x i32> %68 to <8 x i16>, !dbg !631
  store <8 x i16> %69, ptr %26, align 2, !dbg !631, !tbaa !258
  %70 = sub nsw <8 x i32> %25, %55, !dbg !631
  %71 = trunc <8 x i32> %70 to <8 x i16>, !dbg !631
  store <8 x i16> %71, ptr %7, align 2, !dbg !631, !tbaa !258
  %72 = sub nsw <8 x i32> %24, %57, !dbg !631
  %73 = trunc <8 x i32> %72 to <8 x i16>, !dbg !631
  store <8 x i16> %73, ptr %29, align 2, !dbg !631, !tbaa !258
  %74 = sub nsw <8 x i32> %23, %59, !dbg !631
  %75 = trunc <8 x i32> %74 to <8 x i16>, !dbg !631
  store <8 x i16> %75, ptr %16, align 2, !dbg !631, !tbaa !258
  %76 = sub nsw <8 x i32> %22, %61, !dbg !631
  %77 = trunc <8 x i32> %76 to <8 x i16>, !dbg !631
  store <8 x i16> %77, ptr %32, align 2, !dbg !631, !tbaa !258
  br label %78, !dbg !632

78:                                               ; preds = %2, %78
  %79 = phi i64 [ %233, %78 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %79, metadata !590, metadata !DIExpression()), !dbg !629
  %80 = getelementptr inbounds [8 x i16], ptr %1, i64 %79, !dbg !633
  %81 = load i16, ptr %80, align 2, !dbg !633, !tbaa !258
  %82 = sext i16 %81 to i32, !dbg !633
  %83 = getelementptr inbounds [8 x i16], ptr %1, i64 %79, i64 4, !dbg !633
  %84 = load i16, ptr %83, align 2, !dbg !633, !tbaa !258
  %85 = sext i16 %84 to i32, !dbg !633
  %86 = add nsw i32 %85, %82, !dbg !633
  call void @llvm.dbg.value(metadata i32 %86, metadata !610, metadata !DIExpression()), !dbg !634
  %87 = sub nsw i32 %82, %85, !dbg !633
  call void @llvm.dbg.value(metadata i32 %87, metadata !614, metadata !DIExpression()), !dbg !634
  %88 = getelementptr inbounds [8 x i16], ptr %1, i64 %79, i64 2, !dbg !633
  %89 = load i16, ptr %88, align 2, !dbg !633, !tbaa !258
  %90 = sext i16 %89 to i32, !dbg !633
  %91 = ashr i32 %90, 1, !dbg !633
  %92 = getelementptr inbounds [8 x i16], ptr %1, i64 %79, i64 6, !dbg !633
  %93 = load i16, ptr %92, align 2, !dbg !633, !tbaa !258
  %94 = sext i16 %93 to i32, !dbg !633
  %95 = sub nsw i32 %91, %94, !dbg !633
  call void @llvm.dbg.value(metadata i32 %95, metadata !615, metadata !DIExpression()), !dbg !634
  %96 = ashr i32 %94, 1, !dbg !633
  %97 = add nsw i32 %96, %90, !dbg !633
  call void @llvm.dbg.value(metadata i32 %97, metadata !616, metadata !DIExpression()), !dbg !634
  %98 = add nsw i32 %97, %86, !dbg !633
  call void @llvm.dbg.value(metadata i32 %98, metadata !617, metadata !DIExpression()), !dbg !634
  %99 = add nsw i32 %95, %87, !dbg !633
  call void @llvm.dbg.value(metadata i32 %99, metadata !618, metadata !DIExpression()), !dbg !634
  %100 = sub nsw i32 %87, %95, !dbg !633
  call void @llvm.dbg.value(metadata i32 %100, metadata !619, metadata !DIExpression()), !dbg !634
  %101 = sub nsw i32 %86, %97, !dbg !633
  call void @llvm.dbg.value(metadata i32 %101, metadata !620, metadata !DIExpression()), !dbg !634
  %102 = getelementptr inbounds [8 x i16], ptr %1, i64 %79, i64 3, !dbg !633
  %103 = load i16, ptr %102, align 2, !dbg !633, !tbaa !258
  %104 = sext i16 %103 to i32, !dbg !633
  %105 = getelementptr inbounds [8 x i16], ptr %1, i64 %79, i64 5, !dbg !633
  %106 = load i16, ptr %105, align 2, !dbg !633, !tbaa !258
  %107 = sext i16 %106 to i32, !dbg !633
  %108 = getelementptr inbounds [8 x i16], ptr %1, i64 %79, i64 7, !dbg !633
  %109 = load i16, ptr %108, align 2, !dbg !633, !tbaa !258
  %110 = sext i16 %109 to i32, !dbg !633
  %111 = ashr i32 %110, 1, !dbg !633
  %112 = add nsw i32 %104, %110, !dbg !633
  %113 = add nsw i32 %112, %111, !dbg !633
  %114 = sub nsw i32 %107, %113, !dbg !633
  call void @llvm.dbg.value(metadata i32 %114, metadata !621, metadata !DIExpression()), !dbg !634
  %115 = getelementptr inbounds [8 x i16], ptr %1, i64 %79, i64 1, !dbg !633
  %116 = load i16, ptr %115, align 2, !dbg !633, !tbaa !258
  %117 = sext i16 %116 to i32, !dbg !633
  %118 = ashr i32 %104, 1, !dbg !633
  %119 = add nsw i32 %118, %104, !dbg !633
  %120 = sub nsw i32 %110, %119, !dbg !633
  %121 = add nsw i32 %120, %117, !dbg !633
  call void @llvm.dbg.value(metadata i32 %121, metadata !622, metadata !DIExpression()), !dbg !634
  %122 = ashr i32 %107, 1, !dbg !633
  %123 = add nsw i32 %110, %107, !dbg !633
  %124 = add nsw i32 %123, %122, !dbg !633
  %125 = sub nsw i32 %124, %117, !dbg !633
  call void @llvm.dbg.value(metadata i32 %125, metadata !623, metadata !DIExpression()), !dbg !634
  %126 = add nsw i32 %107, %104, !dbg !633
  %127 = add nsw i32 %126, %117, !dbg !633
  %128 = ashr i32 %117, 1, !dbg !633
  %129 = add nsw i32 %127, %128, !dbg !633
  call void @llvm.dbg.value(metadata i32 %129, metadata !624, metadata !DIExpression()), !dbg !634
  %130 = ashr i32 %129, 2, !dbg !633
  %131 = add nsw i32 %130, %114, !dbg !633
  call void @llvm.dbg.value(metadata i32 %131, metadata !625, metadata !DIExpression()), !dbg !634
  %132 = ashr i32 %125, 2, !dbg !633
  %133 = add nsw i32 %132, %121, !dbg !633
  call void @llvm.dbg.value(metadata i32 %133, metadata !626, metadata !DIExpression()), !dbg !634
  %134 = ashr i32 %121, 2, !dbg !633
  %135 = sub nsw i32 %134, %125, !dbg !633
  call void @llvm.dbg.value(metadata i32 %135, metadata !627, metadata !DIExpression()), !dbg !634
  %136 = ashr i32 %114, 2, !dbg !633
  %137 = sub nsw i32 %129, %136, !dbg !633
  call void @llvm.dbg.value(metadata i32 %137, metadata !628, metadata !DIExpression()), !dbg !634
  %138 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !633
  %139 = load i8, ptr %138, align 1, !dbg !633, !tbaa !234
  %140 = zext i8 %139 to i32, !dbg !633
  %141 = add nsw i32 %137, %98, !dbg !633
  %142 = ashr i32 %141, 6, !dbg !633
  %143 = add nsw i32 %142, %140, !dbg !633
  call void @llvm.dbg.value(metadata i32 %143, metadata !341, metadata !DIExpression()), !dbg !635
  %144 = icmp ult i32 %143, 256, !dbg !637
  %145 = icmp sgt i32 %143, 0, !dbg !638
  %146 = sext i1 %145 to i32, !dbg !638
  %147 = select i1 %144, i32 %143, i32 %146, !dbg !638
  %148 = trunc i32 %147 to i8, !dbg !638
  store i8 %148, ptr %138, align 1, !dbg !633, !tbaa !234
  %149 = add nuw nsw i64 %79, 32, !dbg !633
  %150 = getelementptr inbounds i8, ptr %0, i64 %149, !dbg !633
  %151 = load i8, ptr %150, align 1, !dbg !633, !tbaa !234
  %152 = zext i8 %151 to i32, !dbg !633
  %153 = add nsw i32 %135, %99, !dbg !633
  %154 = ashr i32 %153, 6, !dbg !633
  %155 = add nsw i32 %154, %152, !dbg !633
  call void @llvm.dbg.value(metadata i32 %155, metadata !341, metadata !DIExpression()), !dbg !639
  %156 = icmp ult i32 %155, 256, !dbg !641
  %157 = icmp sgt i32 %155, 0, !dbg !642
  %158 = sext i1 %157 to i32, !dbg !642
  %159 = select i1 %156, i32 %155, i32 %158, !dbg !642
  %160 = trunc i32 %159 to i8, !dbg !642
  store i8 %160, ptr %150, align 1, !dbg !633, !tbaa !234
  %161 = add nuw nsw i64 %79, 64, !dbg !633
  %162 = getelementptr inbounds i8, ptr %0, i64 %161, !dbg !633
  %163 = load i8, ptr %162, align 1, !dbg !633, !tbaa !234
  %164 = zext i8 %163 to i32, !dbg !633
  %165 = add nsw i32 %133, %100, !dbg !633
  %166 = ashr i32 %165, 6, !dbg !633
  %167 = add nsw i32 %166, %164, !dbg !633
  call void @llvm.dbg.value(metadata i32 %167, metadata !341, metadata !DIExpression()), !dbg !643
  %168 = icmp ult i32 %167, 256, !dbg !645
  %169 = icmp sgt i32 %167, 0, !dbg !646
  %170 = sext i1 %169 to i32, !dbg !646
  %171 = select i1 %168, i32 %167, i32 %170, !dbg !646
  %172 = trunc i32 %171 to i8, !dbg !646
  store i8 %172, ptr %162, align 1, !dbg !633, !tbaa !234
  %173 = add nuw nsw i64 %79, 96, !dbg !633
  %174 = getelementptr inbounds i8, ptr %0, i64 %173, !dbg !633
  %175 = load i8, ptr %174, align 1, !dbg !633, !tbaa !234
  %176 = zext i8 %175 to i32, !dbg !633
  %177 = add nsw i32 %131, %101, !dbg !633
  %178 = ashr i32 %177, 6, !dbg !633
  %179 = add nsw i32 %178, %176, !dbg !633
  call void @llvm.dbg.value(metadata i32 %179, metadata !341, metadata !DIExpression()), !dbg !647
  %180 = icmp ult i32 %179, 256, !dbg !649
  %181 = icmp sgt i32 %179, 0, !dbg !650
  %182 = sext i1 %181 to i32, !dbg !650
  %183 = select i1 %180, i32 %179, i32 %182, !dbg !650
  %184 = trunc i32 %183 to i8, !dbg !650
  store i8 %184, ptr %174, align 1, !dbg !633, !tbaa !234
  %185 = add nuw nsw i64 %79, 128, !dbg !633
  %186 = getelementptr inbounds i8, ptr %0, i64 %185, !dbg !633
  %187 = load i8, ptr %186, align 1, !dbg !633, !tbaa !234
  %188 = zext i8 %187 to i32, !dbg !633
  %189 = sub nsw i32 %101, %131, !dbg !633
  %190 = ashr i32 %189, 6, !dbg !633
  %191 = add nsw i32 %190, %188, !dbg !633
  call void @llvm.dbg.value(metadata i32 %191, metadata !341, metadata !DIExpression()), !dbg !651
  %192 = icmp ult i32 %191, 256, !dbg !653
  %193 = icmp sgt i32 %191, 0, !dbg !654
  %194 = sext i1 %193 to i32, !dbg !654
  %195 = select i1 %192, i32 %191, i32 %194, !dbg !654
  %196 = trunc i32 %195 to i8, !dbg !654
  store i8 %196, ptr %186, align 1, !dbg !633, !tbaa !234
  %197 = add nuw nsw i64 %79, 160, !dbg !633
  %198 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !633
  %199 = load i8, ptr %198, align 1, !dbg !633, !tbaa !234
  %200 = zext i8 %199 to i32, !dbg !633
  %201 = sub nsw i32 %100, %133, !dbg !633
  %202 = ashr i32 %201, 6, !dbg !633
  %203 = add nsw i32 %202, %200, !dbg !633
  call void @llvm.dbg.value(metadata i32 %203, metadata !341, metadata !DIExpression()), !dbg !655
  %204 = icmp ult i32 %203, 256, !dbg !657
  %205 = icmp sgt i32 %203, 0, !dbg !658
  %206 = sext i1 %205 to i32, !dbg !658
  %207 = select i1 %204, i32 %203, i32 %206, !dbg !658
  %208 = trunc i32 %207 to i8, !dbg !658
  store i8 %208, ptr %198, align 1, !dbg !633, !tbaa !234
  %209 = add nuw nsw i64 %79, 192, !dbg !633
  %210 = getelementptr inbounds i8, ptr %0, i64 %209, !dbg !633
  %211 = load i8, ptr %210, align 1, !dbg !633, !tbaa !234
  %212 = zext i8 %211 to i32, !dbg !633
  %213 = sub nsw i32 %99, %135, !dbg !633
  %214 = ashr i32 %213, 6, !dbg !633
  %215 = add nsw i32 %214, %212, !dbg !633
  call void @llvm.dbg.value(metadata i32 %215, metadata !341, metadata !DIExpression()), !dbg !659
  %216 = icmp ult i32 %215, 256, !dbg !661
  %217 = icmp sgt i32 %215, 0, !dbg !662
  %218 = sext i1 %217 to i32, !dbg !662
  %219 = select i1 %216, i32 %215, i32 %218, !dbg !662
  %220 = trunc i32 %219 to i8, !dbg !662
  store i8 %220, ptr %210, align 1, !dbg !633, !tbaa !234
  %221 = add nuw nsw i64 %79, 224, !dbg !633
  %222 = getelementptr inbounds i8, ptr %0, i64 %221, !dbg !633
  %223 = load i8, ptr %222, align 1, !dbg !633, !tbaa !234
  %224 = zext i8 %223 to i32, !dbg !633
  %225 = sub nsw i32 %98, %137, !dbg !633
  %226 = ashr i32 %225, 6, !dbg !633
  %227 = add nsw i32 %226, %224, !dbg !633
  call void @llvm.dbg.value(metadata i32 %227, metadata !341, metadata !DIExpression()), !dbg !663
  %228 = icmp ult i32 %227, 256, !dbg !665
  %229 = icmp sgt i32 %227, 0, !dbg !666
  %230 = sext i1 %229 to i32, !dbg !666
  %231 = select i1 %228, i32 %227, i32 %230, !dbg !666
  %232 = trunc i32 %231 to i8, !dbg !666
  store i8 %232, ptr %222, align 1, !dbg !633, !tbaa !234
  %233 = add nuw nsw i64 %79, 1, !dbg !667
  call void @llvm.dbg.value(metadata i64 %233, metadata !590, metadata !DIExpression()), !dbg !629
  %234 = icmp eq i64 %233, 8, !dbg !668
  br i1 %234, label %235, label %78, !dbg !632, !llvm.loop !669

235:                                              ; preds = %78
  ret void, !dbg !672
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sub16x16_dct8(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 !dbg !673 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !675, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata ptr %1, metadata !676, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata ptr %2, metadata !677, metadata !DIExpression()), !dbg !678
  tail call void @sub8x8_dct8(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !679
  %4 = getelementptr inbounds [8 x [8 x i16]], ptr %0, i64 1, !dbg !680
  %5 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !681
  %6 = getelementptr inbounds i8, ptr %2, i64 8, !dbg !682
  tail call void @sub8x8_dct8(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6), !dbg !683
  %7 = getelementptr inbounds [8 x [8 x i16]], ptr %0, i64 2, !dbg !684
  %8 = getelementptr inbounds i8, ptr %1, i64 128, !dbg !685
  %9 = getelementptr inbounds i8, ptr %2, i64 256, !dbg !686
  tail call void @sub8x8_dct8(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9), !dbg !687
  %10 = getelementptr inbounds [8 x [8 x i16]], ptr %0, i64 3, !dbg !688
  %11 = getelementptr inbounds i8, ptr %1, i64 136, !dbg !689
  %12 = getelementptr inbounds i8, ptr %2, i64 264, !dbg !690
  tail call void @sub8x8_dct8(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12), !dbg !691
  ret void, !dbg !692
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @add16x16_idct8(ptr nocapture noundef %0, ptr nocapture noundef %1) #4 !dbg !693 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !695, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata ptr %1, metadata !696, metadata !DIExpression()), !dbg !697
  tail call void @add8x8_idct8(ptr noundef %0, ptr noundef %1), !dbg !698
  %3 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !699
  %4 = getelementptr inbounds [8 x [8 x i16]], ptr %1, i64 1, !dbg !700
  tail call void @add8x8_idct8(ptr noundef nonnull %3, ptr noundef nonnull %4), !dbg !701
  %5 = getelementptr inbounds i8, ptr %0, i64 256, !dbg !702
  %6 = getelementptr inbounds [8 x [8 x i16]], ptr %1, i64 2, !dbg !703
  tail call void @add8x8_idct8(ptr noundef nonnull %5, ptr noundef nonnull %6), !dbg !704
  %7 = getelementptr inbounds i8, ptr %0, i64 264, !dbg !705
  %8 = getelementptr inbounds [8 x [8 x i16]], ptr %1, i64 3, !dbg !706
  tail call void @add8x8_idct8(ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !707
  ret void, !dbg !708
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal void @dct4x4dc(ptr nocapture noundef %0) #5 !dbg !709 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !711, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 0, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i64 0, metadata !717, metadata !DIExpression()), !dbg !718
  %2 = load i16, ptr %0, align 2, !dbg !719, !tbaa !258
  %3 = zext i16 %2 to i32, !dbg !719
  %4 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 1, !dbg !723
  %5 = load i16, ptr %4, align 2, !dbg !723, !tbaa !258
  %6 = zext i16 %5 to i32, !dbg !723
  %7 = add nuw nsw i32 %6, %3, !dbg !724
  call void @llvm.dbg.value(metadata i32 %7, metadata !713, metadata !DIExpression()), !dbg !718
  %8 = sub nsw i32 %3, %6, !dbg !725
  call void @llvm.dbg.value(metadata i32 %8, metadata !715, metadata !DIExpression()), !dbg !718
  %9 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 2, !dbg !726
  %10 = load i16, ptr %9, align 2, !dbg !726, !tbaa !258
  %11 = zext i16 %10 to i32, !dbg !726
  %12 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 3, !dbg !727
  %13 = load i16, ptr %12, align 2, !dbg !727, !tbaa !258
  %14 = zext i16 %13 to i32, !dbg !727
  %15 = add nuw nsw i32 %14, %11, !dbg !728
  call void @llvm.dbg.value(metadata i32 %15, metadata !714, metadata !DIExpression()), !dbg !718
  %16 = sub nsw i32 %11, %14, !dbg !729
  call void @llvm.dbg.value(metadata i32 %16, metadata !716, metadata !DIExpression()), !dbg !718
  %17 = add nuw nsw i32 %15, %7, !dbg !730
  call void @llvm.dbg.value(metadata i32 %17, metadata !712, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16)), !dbg !718
  %18 = sub nsw i32 %7, %15, !dbg !731
  call void @llvm.dbg.value(metadata i32 %18, metadata !712, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 16)), !dbg !718
  %19 = sub nsw i32 %8, %16, !dbg !732
  call void @llvm.dbg.value(metadata i32 %19, metadata !712, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 16)), !dbg !718
  %20 = add nsw i32 %16, %8, !dbg !733
  call void @llvm.dbg.value(metadata i32 %20, metadata !712, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16)), !dbg !718
  call void @llvm.dbg.value(metadata i64 1, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i64 1, metadata !717, metadata !DIExpression()), !dbg !718
  %21 = getelementptr inbounds [4 x i16], ptr %0, i64 1, !dbg !719
  %22 = load i16, ptr %21, align 2, !dbg !719, !tbaa !258
  %23 = zext i16 %22 to i32, !dbg !719
  %24 = getelementptr inbounds [4 x i16], ptr %0, i64 1, i64 1, !dbg !723
  %25 = load i16, ptr %24, align 2, !dbg !723, !tbaa !258
  %26 = zext i16 %25 to i32, !dbg !723
  %27 = add nuw nsw i32 %26, %23, !dbg !724
  call void @llvm.dbg.value(metadata i32 %27, metadata !713, metadata !DIExpression()), !dbg !718
  %28 = sub nsw i32 %23, %26, !dbg !725
  call void @llvm.dbg.value(metadata i32 %28, metadata !715, metadata !DIExpression()), !dbg !718
  %29 = getelementptr inbounds [4 x i16], ptr %0, i64 1, i64 2, !dbg !726
  %30 = load i16, ptr %29, align 2, !dbg !726, !tbaa !258
  %31 = zext i16 %30 to i32, !dbg !726
  %32 = getelementptr inbounds [4 x i16], ptr %0, i64 1, i64 3, !dbg !727
  %33 = load i16, ptr %32, align 2, !dbg !727, !tbaa !258
  %34 = zext i16 %33 to i32, !dbg !727
  %35 = add nuw nsw i32 %34, %31, !dbg !728
  call void @llvm.dbg.value(metadata i32 %35, metadata !714, metadata !DIExpression()), !dbg !718
  %36 = sub nsw i32 %31, %34, !dbg !729
  call void @llvm.dbg.value(metadata i32 %36, metadata !716, metadata !DIExpression()), !dbg !718
  %37 = add nuw nsw i32 %35, %27, !dbg !730
  call void @llvm.dbg.value(metadata i32 %37, metadata !712, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16)), !dbg !718
  %38 = sub nsw i32 %27, %35, !dbg !731
  call void @llvm.dbg.value(metadata i32 %38, metadata !712, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 80, 16)), !dbg !718
  %39 = sub nsw i32 %28, %36, !dbg !732
  call void @llvm.dbg.value(metadata i32 %39, metadata !712, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 144, 16)), !dbg !718
  %40 = add nsw i32 %36, %28, !dbg !733
  call void @llvm.dbg.value(metadata i32 %40, metadata !712, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 208, 16)), !dbg !718
  call void @llvm.dbg.value(metadata i64 2, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i64 2, metadata !717, metadata !DIExpression()), !dbg !718
  %41 = getelementptr inbounds [4 x i16], ptr %0, i64 2, !dbg !719
  %42 = load i16, ptr %41, align 2, !dbg !719, !tbaa !258
  %43 = zext i16 %42 to i32, !dbg !719
  %44 = getelementptr inbounds [4 x i16], ptr %0, i64 2, i64 1, !dbg !723
  %45 = load i16, ptr %44, align 2, !dbg !723, !tbaa !258
  %46 = zext i16 %45 to i32, !dbg !723
  %47 = add nuw nsw i32 %46, %43, !dbg !724
  call void @llvm.dbg.value(metadata i32 %47, metadata !713, metadata !DIExpression()), !dbg !718
  %48 = sub nsw i32 %43, %46, !dbg !725
  call void @llvm.dbg.value(metadata i32 %48, metadata !715, metadata !DIExpression()), !dbg !718
  %49 = getelementptr inbounds [4 x i16], ptr %0, i64 2, i64 2, !dbg !726
  %50 = load i16, ptr %49, align 2, !dbg !726, !tbaa !258
  %51 = zext i16 %50 to i32, !dbg !726
  %52 = getelementptr inbounds [4 x i16], ptr %0, i64 2, i64 3, !dbg !727
  %53 = load i16, ptr %52, align 2, !dbg !727, !tbaa !258
  %54 = zext i16 %53 to i32, !dbg !727
  %55 = add nuw nsw i32 %54, %51, !dbg !728
  call void @llvm.dbg.value(metadata i32 %55, metadata !714, metadata !DIExpression()), !dbg !718
  %56 = sub nsw i32 %51, %54, !dbg !729
  call void @llvm.dbg.value(metadata i32 %56, metadata !716, metadata !DIExpression()), !dbg !718
  %57 = add nuw nsw i32 %55, %47, !dbg !730
  call void @llvm.dbg.value(metadata i32 %57, metadata !712, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 16)), !dbg !718
  %58 = sub nsw i32 %47, %55, !dbg !731
  call void @llvm.dbg.value(metadata i32 %58, metadata !712, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 16)), !dbg !718
  %59 = sub nsw i32 %48, %56, !dbg !732
  call void @llvm.dbg.value(metadata i32 %59, metadata !712, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 16)), !dbg !718
  %60 = add nsw i32 %56, %48, !dbg !733
  call void @llvm.dbg.value(metadata i32 %60, metadata !712, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 224, 16)), !dbg !718
  call void @llvm.dbg.value(metadata i64 3, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i64 3, metadata !717, metadata !DIExpression()), !dbg !718
  %61 = getelementptr inbounds [4 x i16], ptr %0, i64 3, !dbg !719
  %62 = load i16, ptr %61, align 2, !dbg !719, !tbaa !258
  %63 = zext i16 %62 to i32, !dbg !719
  %64 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 1, !dbg !723
  %65 = load i16, ptr %64, align 2, !dbg !723, !tbaa !258
  %66 = zext i16 %65 to i32, !dbg !723
  %67 = add nuw nsw i32 %66, %63, !dbg !724
  call void @llvm.dbg.value(metadata i32 %67, metadata !713, metadata !DIExpression()), !dbg !718
  %68 = sub nsw i32 %63, %66, !dbg !725
  call void @llvm.dbg.value(metadata i32 %68, metadata !715, metadata !DIExpression()), !dbg !718
  %69 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 2, !dbg !726
  %70 = load i16, ptr %69, align 2, !dbg !726, !tbaa !258
  %71 = zext i16 %70 to i32, !dbg !726
  %72 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 3, !dbg !727
  %73 = load i16, ptr %72, align 2, !dbg !727, !tbaa !258
  %74 = zext i16 %73 to i32, !dbg !727
  %75 = add nuw nsw i32 %74, %71, !dbg !728
  call void @llvm.dbg.value(metadata i32 %75, metadata !714, metadata !DIExpression()), !dbg !718
  %76 = sub nsw i32 %71, %74, !dbg !729
  call void @llvm.dbg.value(metadata i32 %76, metadata !716, metadata !DIExpression()), !dbg !718
  %77 = add nuw nsw i32 %75, %67, !dbg !730
  call void @llvm.dbg.value(metadata i32 %77, metadata !712, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !718
  %78 = sub nsw i32 %67, %75, !dbg !731
  call void @llvm.dbg.value(metadata i32 %78, metadata !712, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 112, 16)), !dbg !718
  %79 = sub nsw i32 %68, %76, !dbg !732
  call void @llvm.dbg.value(metadata i32 %79, metadata !712, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 176, 16)), !dbg !718
  %80 = add nsw i32 %76, %68, !dbg !733
  call void @llvm.dbg.value(metadata i32 %80, metadata !712, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 240, 16)), !dbg !718
  call void @llvm.dbg.value(metadata i64 4, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i64 0, metadata !717, metadata !DIExpression()), !dbg !718
  %81 = shl i32 %17, 16, !dbg !734
  %82 = ashr exact i32 %81, 16, !dbg !734
  %83 = shl i32 %37, 16, !dbg !738
  %84 = ashr exact i32 %83, 16, !dbg !738
  %85 = add nsw i32 %84, %82, !dbg !739
  call void @llvm.dbg.value(metadata i32 %85, metadata !713, metadata !DIExpression()), !dbg !718
  %86 = sub nsw i32 %82, %84, !dbg !740
  call void @llvm.dbg.value(metadata i32 %86, metadata !715, metadata !DIExpression()), !dbg !718
  %87 = shl i32 %57, 16, !dbg !741
  %88 = ashr exact i32 %87, 16, !dbg !741
  %89 = shl i32 %77, 16, !dbg !742
  %90 = ashr exact i32 %89, 16, !dbg !742
  %91 = add nsw i32 %90, %88, !dbg !743
  call void @llvm.dbg.value(metadata i32 %91, metadata !714, metadata !DIExpression()), !dbg !718
  %92 = sub nsw i32 %88, %90, !dbg !744
  call void @llvm.dbg.value(metadata i32 %92, metadata !716, metadata !DIExpression()), !dbg !718
  %93 = add nsw i32 %85, 1, !dbg !745
  %94 = add nsw i32 %93, %91, !dbg !746
  %95 = lshr i32 %94, 1, !dbg !747
  %96 = trunc i32 %95 to i16, !dbg !748
  store i16 %96, ptr %0, align 2, !dbg !749, !tbaa !258
  %97 = sub nsw i32 %93, %91, !dbg !750
  %98 = lshr i32 %97, 1, !dbg !751
  %99 = trunc i32 %98 to i16, !dbg !752
  store i16 %99, ptr %4, align 2, !dbg !753, !tbaa !258
  %100 = add nsw i32 %86, 1, !dbg !754
  %101 = sub nsw i32 %100, %92, !dbg !755
  %102 = lshr i32 %101, 1, !dbg !756
  %103 = trunc i32 %102 to i16, !dbg !757
  store i16 %103, ptr %9, align 2, !dbg !758, !tbaa !258
  %104 = add nsw i32 %100, %92, !dbg !759
  %105 = lshr i32 %104, 1, !dbg !760
  %106 = trunc i32 %105 to i16, !dbg !761
  store i16 %106, ptr %12, align 2, !dbg !762, !tbaa !258
  call void @llvm.dbg.value(metadata i64 1, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i64 1, metadata !717, metadata !DIExpression()), !dbg !718
  %107 = shl i32 %18, 16, !dbg !734
  %108 = ashr exact i32 %107, 16, !dbg !734
  %109 = shl i32 %38, 16, !dbg !738
  %110 = ashr exact i32 %109, 16, !dbg !738
  %111 = add nsw i32 %110, %108, !dbg !739
  call void @llvm.dbg.value(metadata i32 %111, metadata !713, metadata !DIExpression()), !dbg !718
  %112 = sub nsw i32 %108, %110, !dbg !740
  call void @llvm.dbg.value(metadata i32 %112, metadata !715, metadata !DIExpression()), !dbg !718
  %113 = shl i32 %58, 16, !dbg !741
  %114 = ashr exact i32 %113, 16, !dbg !741
  %115 = shl i32 %78, 16, !dbg !742
  %116 = ashr exact i32 %115, 16, !dbg !742
  %117 = add nsw i32 %116, %114, !dbg !743
  call void @llvm.dbg.value(metadata i32 %117, metadata !714, metadata !DIExpression()), !dbg !718
  %118 = sub nsw i32 %114, %116, !dbg !744
  call void @llvm.dbg.value(metadata i32 %118, metadata !716, metadata !DIExpression()), !dbg !718
  %119 = add nsw i32 %111, 1, !dbg !745
  %120 = add nsw i32 %119, %117, !dbg !746
  %121 = lshr i32 %120, 1, !dbg !747
  %122 = trunc i32 %121 to i16, !dbg !748
  store i16 %122, ptr %21, align 2, !dbg !749, !tbaa !258
  %123 = sub nsw i32 %119, %117, !dbg !750
  %124 = lshr i32 %123, 1, !dbg !751
  %125 = trunc i32 %124 to i16, !dbg !752
  store i16 %125, ptr %24, align 2, !dbg !753, !tbaa !258
  %126 = add nsw i32 %112, 1, !dbg !754
  %127 = sub nsw i32 %126, %118, !dbg !755
  %128 = lshr i32 %127, 1, !dbg !756
  %129 = trunc i32 %128 to i16, !dbg !757
  store i16 %129, ptr %29, align 2, !dbg !758, !tbaa !258
  %130 = add nsw i32 %126, %118, !dbg !759
  %131 = lshr i32 %130, 1, !dbg !760
  %132 = trunc i32 %131 to i16, !dbg !761
  store i16 %132, ptr %32, align 2, !dbg !762, !tbaa !258
  call void @llvm.dbg.value(metadata i64 2, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i64 2, metadata !717, metadata !DIExpression()), !dbg !718
  %133 = shl i32 %19, 16, !dbg !734
  %134 = ashr exact i32 %133, 16, !dbg !734
  %135 = shl i32 %39, 16, !dbg !738
  %136 = ashr exact i32 %135, 16, !dbg !738
  %137 = add nsw i32 %136, %134, !dbg !739
  call void @llvm.dbg.value(metadata i32 %137, metadata !713, metadata !DIExpression()), !dbg !718
  %138 = sub nsw i32 %134, %136, !dbg !740
  call void @llvm.dbg.value(metadata i32 %138, metadata !715, metadata !DIExpression()), !dbg !718
  %139 = shl i32 %59, 16, !dbg !741
  %140 = ashr exact i32 %139, 16, !dbg !741
  %141 = shl i32 %79, 16, !dbg !742
  %142 = ashr exact i32 %141, 16, !dbg !742
  %143 = add nsw i32 %142, %140, !dbg !743
  call void @llvm.dbg.value(metadata i32 %143, metadata !714, metadata !DIExpression()), !dbg !718
  %144 = sub nsw i32 %140, %142, !dbg !744
  call void @llvm.dbg.value(metadata i32 %144, metadata !716, metadata !DIExpression()), !dbg !718
  %145 = add nsw i32 %137, 1, !dbg !745
  %146 = add nsw i32 %145, %143, !dbg !746
  %147 = lshr i32 %146, 1, !dbg !747
  %148 = trunc i32 %147 to i16, !dbg !748
  store i16 %148, ptr %41, align 2, !dbg !749, !tbaa !258
  %149 = sub nsw i32 %145, %143, !dbg !750
  %150 = lshr i32 %149, 1, !dbg !751
  %151 = trunc i32 %150 to i16, !dbg !752
  store i16 %151, ptr %44, align 2, !dbg !753, !tbaa !258
  %152 = add nsw i32 %138, 1, !dbg !754
  %153 = sub nsw i32 %152, %144, !dbg !755
  %154 = lshr i32 %153, 1, !dbg !756
  %155 = trunc i32 %154 to i16, !dbg !757
  store i16 %155, ptr %49, align 2, !dbg !758, !tbaa !258
  %156 = add nsw i32 %152, %144, !dbg !759
  %157 = lshr i32 %156, 1, !dbg !760
  %158 = trunc i32 %157 to i16, !dbg !761
  store i16 %158, ptr %52, align 2, !dbg !762, !tbaa !258
  call void @llvm.dbg.value(metadata i64 3, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i64 3, metadata !717, metadata !DIExpression()), !dbg !718
  %159 = shl i32 %20, 16, !dbg !734
  %160 = ashr exact i32 %159, 16, !dbg !734
  %161 = shl i32 %40, 16, !dbg !738
  %162 = ashr exact i32 %161, 16, !dbg !738
  %163 = add nsw i32 %162, %160, !dbg !739
  call void @llvm.dbg.value(metadata i32 %163, metadata !713, metadata !DIExpression()), !dbg !718
  %164 = sub nsw i32 %160, %162, !dbg !740
  call void @llvm.dbg.value(metadata i32 %164, metadata !715, metadata !DIExpression()), !dbg !718
  %165 = shl i32 %60, 16, !dbg !741
  %166 = ashr exact i32 %165, 16, !dbg !741
  %167 = shl i32 %80, 16, !dbg !742
  %168 = ashr exact i32 %167, 16, !dbg !742
  %169 = add nsw i32 %168, %166, !dbg !743
  call void @llvm.dbg.value(metadata i32 %169, metadata !714, metadata !DIExpression()), !dbg !718
  %170 = sub nsw i32 %166, %168, !dbg !744
  call void @llvm.dbg.value(metadata i32 %170, metadata !716, metadata !DIExpression()), !dbg !718
  %171 = add nsw i32 %163, 1, !dbg !745
  %172 = add nsw i32 %171, %169, !dbg !746
  %173 = lshr i32 %172, 1, !dbg !747
  %174 = trunc i32 %173 to i16, !dbg !748
  store i16 %174, ptr %61, align 2, !dbg !749, !tbaa !258
  %175 = sub nsw i32 %171, %169, !dbg !750
  %176 = lshr i32 %175, 1, !dbg !751
  %177 = trunc i32 %176 to i16, !dbg !752
  store i16 %177, ptr %64, align 2, !dbg !753, !tbaa !258
  %178 = add nsw i32 %164, 1, !dbg !754
  %179 = sub nsw i32 %178, %170, !dbg !755
  %180 = lshr i32 %179, 1, !dbg !756
  %181 = trunc i32 %180 to i16, !dbg !757
  store i16 %181, ptr %69, align 2, !dbg !758, !tbaa !258
  %182 = add nsw i32 %178, %170, !dbg !759
  %183 = lshr i32 %182, 1, !dbg !760
  %184 = trunc i32 %183 to i16, !dbg !761
  store i16 %184, ptr %72, align 2, !dbg !762, !tbaa !258
  call void @llvm.dbg.value(metadata i64 4, metadata !717, metadata !DIExpression()), !dbg !718
  ret void, !dbg !763
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal void @idct4x4dc(ptr nocapture noundef %0) #5 !dbg !764 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !766, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i32 0, metadata !772, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i64 0, metadata !772, metadata !DIExpression()), !dbg !773
  %2 = load i16, ptr %0, align 2, !dbg !774, !tbaa !258
  %3 = zext i16 %2 to i32, !dbg !774
  %4 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 1, !dbg !778
  %5 = load i16, ptr %4, align 2, !dbg !778, !tbaa !258
  %6 = zext i16 %5 to i32, !dbg !778
  %7 = add nuw nsw i32 %6, %3, !dbg !779
  call void @llvm.dbg.value(metadata i32 %7, metadata !768, metadata !DIExpression()), !dbg !773
  %8 = sub nsw i32 %3, %6, !dbg !780
  call void @llvm.dbg.value(metadata i32 %8, metadata !770, metadata !DIExpression()), !dbg !773
  %9 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 2, !dbg !781
  %10 = load i16, ptr %9, align 2, !dbg !781, !tbaa !258
  %11 = zext i16 %10 to i32, !dbg !781
  %12 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 3, !dbg !782
  %13 = load i16, ptr %12, align 2, !dbg !782, !tbaa !258
  %14 = zext i16 %13 to i32, !dbg !782
  %15 = add nuw nsw i32 %14, %11, !dbg !783
  call void @llvm.dbg.value(metadata i32 %15, metadata !769, metadata !DIExpression()), !dbg !773
  %16 = sub nsw i32 %11, %14, !dbg !784
  call void @llvm.dbg.value(metadata i32 %16, metadata !771, metadata !DIExpression()), !dbg !773
  %17 = add nuw nsw i32 %15, %7, !dbg !785
  call void @llvm.dbg.value(metadata i32 %17, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16)), !dbg !773
  %18 = sub nsw i32 %7, %15, !dbg !786
  call void @llvm.dbg.value(metadata i32 %18, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 16)), !dbg !773
  %19 = sub nsw i32 %8, %16, !dbg !787
  call void @llvm.dbg.value(metadata i32 %19, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 16)), !dbg !773
  %20 = add nsw i32 %16, %8, !dbg !788
  call void @llvm.dbg.value(metadata i32 %20, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16)), !dbg !773
  call void @llvm.dbg.value(metadata i64 1, metadata !772, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i64 1, metadata !772, metadata !DIExpression()), !dbg !773
  %21 = getelementptr inbounds [4 x i16], ptr %0, i64 1, !dbg !774
  %22 = load i16, ptr %21, align 2, !dbg !774, !tbaa !258
  %23 = zext i16 %22 to i32, !dbg !774
  %24 = getelementptr inbounds [4 x i16], ptr %0, i64 1, i64 1, !dbg !778
  %25 = load i16, ptr %24, align 2, !dbg !778, !tbaa !258
  %26 = zext i16 %25 to i32, !dbg !778
  %27 = add nuw nsw i32 %26, %23, !dbg !779
  call void @llvm.dbg.value(metadata i32 %27, metadata !768, metadata !DIExpression()), !dbg !773
  %28 = sub nsw i32 %23, %26, !dbg !780
  call void @llvm.dbg.value(metadata i32 %28, metadata !770, metadata !DIExpression()), !dbg !773
  %29 = getelementptr inbounds [4 x i16], ptr %0, i64 1, i64 2, !dbg !781
  %30 = load i16, ptr %29, align 2, !dbg !781, !tbaa !258
  %31 = zext i16 %30 to i32, !dbg !781
  %32 = getelementptr inbounds [4 x i16], ptr %0, i64 1, i64 3, !dbg !782
  %33 = load i16, ptr %32, align 2, !dbg !782, !tbaa !258
  %34 = zext i16 %33 to i32, !dbg !782
  %35 = add nuw nsw i32 %34, %31, !dbg !783
  call void @llvm.dbg.value(metadata i32 %35, metadata !769, metadata !DIExpression()), !dbg !773
  %36 = sub nsw i32 %31, %34, !dbg !784
  call void @llvm.dbg.value(metadata i32 %36, metadata !771, metadata !DIExpression()), !dbg !773
  %37 = add nuw nsw i32 %35, %27, !dbg !785
  call void @llvm.dbg.value(metadata i32 %37, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16)), !dbg !773
  %38 = sub nsw i32 %27, %35, !dbg !786
  call void @llvm.dbg.value(metadata i32 %38, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 80, 16)), !dbg !773
  %39 = sub nsw i32 %28, %36, !dbg !787
  call void @llvm.dbg.value(metadata i32 %39, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 144, 16)), !dbg !773
  %40 = add nsw i32 %36, %28, !dbg !788
  call void @llvm.dbg.value(metadata i32 %40, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 208, 16)), !dbg !773
  call void @llvm.dbg.value(metadata i64 2, metadata !772, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i64 2, metadata !772, metadata !DIExpression()), !dbg !773
  %41 = getelementptr inbounds [4 x i16], ptr %0, i64 2, !dbg !774
  %42 = load i16, ptr %41, align 2, !dbg !774, !tbaa !258
  %43 = zext i16 %42 to i32, !dbg !774
  %44 = getelementptr inbounds [4 x i16], ptr %0, i64 2, i64 1, !dbg !778
  %45 = load i16, ptr %44, align 2, !dbg !778, !tbaa !258
  %46 = zext i16 %45 to i32, !dbg !778
  %47 = add nuw nsw i32 %46, %43, !dbg !779
  call void @llvm.dbg.value(metadata i32 %47, metadata !768, metadata !DIExpression()), !dbg !773
  %48 = sub nsw i32 %43, %46, !dbg !780
  call void @llvm.dbg.value(metadata i32 %48, metadata !770, metadata !DIExpression()), !dbg !773
  %49 = getelementptr inbounds [4 x i16], ptr %0, i64 2, i64 2, !dbg !781
  %50 = load i16, ptr %49, align 2, !dbg !781, !tbaa !258
  %51 = zext i16 %50 to i32, !dbg !781
  %52 = getelementptr inbounds [4 x i16], ptr %0, i64 2, i64 3, !dbg !782
  %53 = load i16, ptr %52, align 2, !dbg !782, !tbaa !258
  %54 = zext i16 %53 to i32, !dbg !782
  %55 = add nuw nsw i32 %54, %51, !dbg !783
  call void @llvm.dbg.value(metadata i32 %55, metadata !769, metadata !DIExpression()), !dbg !773
  %56 = sub nsw i32 %51, %54, !dbg !784
  call void @llvm.dbg.value(metadata i32 %56, metadata !771, metadata !DIExpression()), !dbg !773
  %57 = add nuw nsw i32 %55, %47, !dbg !785
  call void @llvm.dbg.value(metadata i32 %57, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 16)), !dbg !773
  %58 = sub nsw i32 %47, %55, !dbg !786
  call void @llvm.dbg.value(metadata i32 %58, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 16)), !dbg !773
  %59 = sub nsw i32 %48, %56, !dbg !787
  call void @llvm.dbg.value(metadata i32 %59, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 16)), !dbg !773
  %60 = add nsw i32 %56, %48, !dbg !788
  call void @llvm.dbg.value(metadata i32 %60, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 224, 16)), !dbg !773
  call void @llvm.dbg.value(metadata i64 3, metadata !772, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i64 3, metadata !772, metadata !DIExpression()), !dbg !773
  %61 = getelementptr inbounds [4 x i16], ptr %0, i64 3, !dbg !774
  %62 = load i16, ptr %61, align 2, !dbg !774, !tbaa !258
  %63 = zext i16 %62 to i32, !dbg !774
  %64 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 1, !dbg !778
  %65 = load i16, ptr %64, align 2, !dbg !778, !tbaa !258
  %66 = zext i16 %65 to i32, !dbg !778
  %67 = add nuw nsw i32 %66, %63, !dbg !779
  call void @llvm.dbg.value(metadata i32 %67, metadata !768, metadata !DIExpression()), !dbg !773
  %68 = sub nsw i32 %63, %66, !dbg !780
  call void @llvm.dbg.value(metadata i32 %68, metadata !770, metadata !DIExpression()), !dbg !773
  %69 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 2, !dbg !781
  %70 = load i16, ptr %69, align 2, !dbg !781, !tbaa !258
  %71 = zext i16 %70 to i32, !dbg !781
  %72 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 3, !dbg !782
  %73 = load i16, ptr %72, align 2, !dbg !782, !tbaa !258
  %74 = zext i16 %73 to i32, !dbg !782
  %75 = add nuw nsw i32 %74, %71, !dbg !783
  call void @llvm.dbg.value(metadata i32 %75, metadata !769, metadata !DIExpression()), !dbg !773
  %76 = sub nsw i32 %71, %74, !dbg !784
  call void @llvm.dbg.value(metadata i32 %76, metadata !771, metadata !DIExpression()), !dbg !773
  %77 = add nuw nsw i32 %75, %67, !dbg !785
  call void @llvm.dbg.value(metadata i32 %77, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !773
  %78 = sub nsw i32 %67, %75, !dbg !786
  call void @llvm.dbg.value(metadata i32 %78, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 112, 16)), !dbg !773
  %79 = sub nsw i32 %68, %76, !dbg !787
  call void @llvm.dbg.value(metadata i32 %79, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 176, 16)), !dbg !773
  %80 = add nsw i32 %76, %68, !dbg !788
  call void @llvm.dbg.value(metadata i32 %80, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 240, 16)), !dbg !773
  call void @llvm.dbg.value(metadata i64 4, metadata !772, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i64 0, metadata !772, metadata !DIExpression()), !dbg !773
  %81 = and i32 %17, 65535, !dbg !789
  %82 = and i32 %37, 65535, !dbg !793
  %83 = add nuw nsw i32 %82, %81, !dbg !794
  call void @llvm.dbg.value(metadata i32 %83, metadata !768, metadata !DIExpression()), !dbg !773
  %84 = sub nsw i32 %81, %82, !dbg !795
  call void @llvm.dbg.value(metadata i32 %84, metadata !770, metadata !DIExpression()), !dbg !773
  %85 = and i32 %57, 65535, !dbg !796
  %86 = and i32 %77, 65535, !dbg !797
  %87 = add nuw nsw i32 %86, %85, !dbg !798
  call void @llvm.dbg.value(metadata i32 %87, metadata !769, metadata !DIExpression()), !dbg !773
  %88 = sub nsw i32 %85, %86, !dbg !799
  call void @llvm.dbg.value(metadata i32 %88, metadata !771, metadata !DIExpression()), !dbg !773
  %89 = add nuw nsw i32 %87, %83, !dbg !800
  %90 = trunc i32 %89 to i16, !dbg !801
  store i16 %90, ptr %0, align 2, !dbg !802, !tbaa !258
  %91 = sub nsw i32 %83, %87, !dbg !803
  %92 = trunc i32 %91 to i16, !dbg !804
  store i16 %92, ptr %4, align 2, !dbg !805, !tbaa !258
  %93 = sub nsw i32 %84, %88, !dbg !806
  %94 = trunc i32 %93 to i16, !dbg !807
  store i16 %94, ptr %9, align 2, !dbg !808, !tbaa !258
  %95 = add nsw i32 %88, %84, !dbg !809
  %96 = trunc i32 %95 to i16, !dbg !810
  store i16 %96, ptr %12, align 2, !dbg !811, !tbaa !258
  call void @llvm.dbg.value(metadata i64 1, metadata !772, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i64 1, metadata !772, metadata !DIExpression()), !dbg !773
  %97 = and i32 %18, 65535, !dbg !789
  %98 = and i32 %38, 65535, !dbg !793
  %99 = add nuw nsw i32 %98, %97, !dbg !794
  call void @llvm.dbg.value(metadata i32 %99, metadata !768, metadata !DIExpression()), !dbg !773
  %100 = sub nsw i32 %97, %98, !dbg !795
  call void @llvm.dbg.value(metadata i32 %100, metadata !770, metadata !DIExpression()), !dbg !773
  %101 = and i32 %58, 65535, !dbg !796
  %102 = and i32 %78, 65535, !dbg !797
  %103 = add nuw nsw i32 %102, %101, !dbg !798
  call void @llvm.dbg.value(metadata i32 %103, metadata !769, metadata !DIExpression()), !dbg !773
  %104 = sub nsw i32 %101, %102, !dbg !799
  call void @llvm.dbg.value(metadata i32 %104, metadata !771, metadata !DIExpression()), !dbg !773
  %105 = add nuw nsw i32 %103, %99, !dbg !800
  %106 = trunc i32 %105 to i16, !dbg !801
  store i16 %106, ptr %21, align 2, !dbg !802, !tbaa !258
  %107 = sub nsw i32 %99, %103, !dbg !803
  %108 = trunc i32 %107 to i16, !dbg !804
  store i16 %108, ptr %24, align 2, !dbg !805, !tbaa !258
  %109 = sub nsw i32 %100, %104, !dbg !806
  %110 = trunc i32 %109 to i16, !dbg !807
  store i16 %110, ptr %29, align 2, !dbg !808, !tbaa !258
  %111 = add nsw i32 %104, %100, !dbg !809
  %112 = trunc i32 %111 to i16, !dbg !810
  store i16 %112, ptr %32, align 2, !dbg !811, !tbaa !258
  call void @llvm.dbg.value(metadata i64 2, metadata !772, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i64 2, metadata !772, metadata !DIExpression()), !dbg !773
  %113 = and i32 %19, 65535, !dbg !789
  %114 = and i32 %39, 65535, !dbg !793
  %115 = add nuw nsw i32 %114, %113, !dbg !794
  call void @llvm.dbg.value(metadata i32 %115, metadata !768, metadata !DIExpression()), !dbg !773
  %116 = sub nsw i32 %113, %114, !dbg !795
  call void @llvm.dbg.value(metadata i32 %116, metadata !770, metadata !DIExpression()), !dbg !773
  %117 = and i32 %59, 65535, !dbg !796
  %118 = and i32 %79, 65535, !dbg !797
  %119 = add nuw nsw i32 %118, %117, !dbg !798
  call void @llvm.dbg.value(metadata i32 %119, metadata !769, metadata !DIExpression()), !dbg !773
  %120 = sub nsw i32 %117, %118, !dbg !799
  call void @llvm.dbg.value(metadata i32 %120, metadata !771, metadata !DIExpression()), !dbg !773
  %121 = add nuw nsw i32 %119, %115, !dbg !800
  %122 = trunc i32 %121 to i16, !dbg !801
  store i16 %122, ptr %41, align 2, !dbg !802, !tbaa !258
  %123 = sub nsw i32 %115, %119, !dbg !803
  %124 = trunc i32 %123 to i16, !dbg !804
  store i16 %124, ptr %44, align 2, !dbg !805, !tbaa !258
  %125 = sub nsw i32 %116, %120, !dbg !806
  %126 = trunc i32 %125 to i16, !dbg !807
  store i16 %126, ptr %49, align 2, !dbg !808, !tbaa !258
  %127 = add nsw i32 %120, %116, !dbg !809
  %128 = trunc i32 %127 to i16, !dbg !810
  store i16 %128, ptr %52, align 2, !dbg !811, !tbaa !258
  call void @llvm.dbg.value(metadata i64 3, metadata !772, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i64 3, metadata !772, metadata !DIExpression()), !dbg !773
  %129 = and i32 %20, 65535, !dbg !789
  %130 = and i32 %40, 65535, !dbg !793
  %131 = add nuw nsw i32 %130, %129, !dbg !794
  call void @llvm.dbg.value(metadata i32 %131, metadata !768, metadata !DIExpression()), !dbg !773
  %132 = sub nsw i32 %129, %130, !dbg !795
  call void @llvm.dbg.value(metadata i32 %132, metadata !770, metadata !DIExpression()), !dbg !773
  %133 = and i32 %60, 65535, !dbg !796
  %134 = and i32 %80, 65535, !dbg !797
  %135 = add nuw nsw i32 %134, %133, !dbg !798
  call void @llvm.dbg.value(metadata i32 %135, metadata !769, metadata !DIExpression()), !dbg !773
  %136 = sub nsw i32 %133, %134, !dbg !799
  call void @llvm.dbg.value(metadata i32 %136, metadata !771, metadata !DIExpression()), !dbg !773
  %137 = add nuw nsw i32 %135, %131, !dbg !800
  %138 = trunc i32 %137 to i16, !dbg !801
  store i16 %138, ptr %61, align 2, !dbg !802, !tbaa !258
  %139 = sub nsw i32 %131, %135, !dbg !803
  %140 = trunc i32 %139 to i16, !dbg !804
  store i16 %140, ptr %64, align 2, !dbg !805, !tbaa !258
  %141 = sub nsw i32 %132, %136, !dbg !806
  %142 = trunc i32 %141 to i16, !dbg !807
  store i16 %142, ptr %69, align 2, !dbg !808, !tbaa !258
  %143 = add nsw i32 %136, %132, !dbg !809
  %144 = trunc i32 %143 to i16, !dbg !810
  store i16 %144, ptr %72, align 2, !dbg !811, !tbaa !258
  call void @llvm.dbg.value(metadata i64 4, metadata !772, metadata !DIExpression()), !dbg !773
  ret void, !dbg !812
}

declare void @x264_sub4x4_dct_mmx(ptr noundef, ptr noundef, ptr noundef) #6

declare void @x264_add4x4_idct_mmx(ptr noundef, ptr noundef) #6

declare void @x264_dct4x4dc_mmx(ptr noundef) #6

declare void @x264_idct4x4dc_mmx(ptr noundef) #6

declare void @x264_sub8x8_dct8_sse2(ptr noundef, ptr noundef, ptr noundef) #6

declare void @x264_sub16x16_dct8_sse2(ptr noundef, ptr noundef, ptr noundef) #6

declare void @x264_add8x8_idct8_sse2(ptr noundef, ptr noundef) #6

declare void @x264_add16x16_idct8_sse2(ptr noundef, ptr noundef) #6

declare void @x264_sub8x8_dct_sse2(ptr noundef, ptr noundef, ptr noundef) #6

declare void @x264_sub16x16_dct_sse2(ptr noundef, ptr noundef, ptr noundef) #6

declare void @x264_add8x8_idct_sse2(ptr noundef, ptr noundef) #6

declare void @x264_add16x16_idct_sse2(ptr noundef, ptr noundef) #6

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @x264_dct_init_weights() local_unnamed_addr #7 !dbg !813 {
  call void @llvm.dbg.value(metadata i32 0, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 0, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 0, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 0, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 1, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 1, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 2, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 2, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 3, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 3, metadata !817, metadata !DIExpression()), !dbg !819
  store <4 x i32> <i32 800, i32 320, i32 320, i32 800>, ptr @x264_dct4_weight2_zigzag, align 16, !dbg !820, !tbaa !826
  call void @llvm.dbg.value(metadata i64 4, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 4, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 5, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 5, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 6, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 6, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 7, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 7, metadata !817, metadata !DIExpression()), !dbg !819
  store <4 x i32> <i32 128, i32 800, i32 320, i32 320>, ptr getelementptr inbounds ([2 x [16 x i32]], ptr @x264_dct4_weight2_zigzag, i64 0, i64 0, i64 4), align 16, !dbg !820, !tbaa !826
  call void @llvm.dbg.value(metadata i64 8, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 8, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 9, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 9, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 10, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 10, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 11, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 11, metadata !817, metadata !DIExpression()), !dbg !819
  store <4 x i32> <i32 320, i32 320, i32 128, i32 800>, ptr getelementptr inbounds ([2 x [16 x i32]], ptr @x264_dct4_weight2_zigzag, i64 0, i64 0, i64 8), align 16, !dbg !820, !tbaa !826
  call void @llvm.dbg.value(metadata i64 12, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 12, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 13, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 13, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 14, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 14, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 15, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 15, metadata !817, metadata !DIExpression()), !dbg !819
  store <4 x i32> <i32 128, i32 320, i32 320, i32 128>, ptr getelementptr inbounds ([2 x [16 x i32]], ptr @x264_dct4_weight2_zigzag, i64 0, i64 0, i64 12), align 16, !dbg !820, !tbaa !826
  call void @llvm.dbg.value(metadata i64 16, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 0, metadata !817, metadata !DIExpression()), !dbg !819
  br label %1, !dbg !828

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %18, %1 ]
  call void @llvm.dbg.value(metadata i64 %2, metadata !817, metadata !DIExpression()), !dbg !819
  %3 = getelementptr inbounds [2 x [64 x i8]], ptr @x264_zigzag_scan8, i64 0, i64 0, i64 %2, !dbg !830
  %4 = load i8, ptr %3, align 2, !dbg !830, !tbaa !234
  %5 = zext i8 %4 to i64, !dbg !832
  %6 = getelementptr inbounds [64 x i16], ptr @x264_dct8_weight2_tab, i64 0, i64 %5, !dbg !832
  %7 = load i16, ptr %6, align 2, !dbg !832, !tbaa !258
  %8 = zext i16 %7 to i32, !dbg !832
  %9 = getelementptr inbounds [2 x [64 x i32]], ptr @x264_dct8_weight2_zigzag, i64 0, i64 0, i64 %2, !dbg !833
  store i32 %8, ptr %9, align 8, !dbg !834, !tbaa !826
  %10 = or i64 %2, 1, !dbg !835
  call void @llvm.dbg.value(metadata i64 %10, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 %10, metadata !817, metadata !DIExpression()), !dbg !819
  %11 = getelementptr inbounds [2 x [64 x i8]], ptr @x264_zigzag_scan8, i64 0, i64 0, i64 %10, !dbg !830
  %12 = load i8, ptr %11, align 1, !dbg !830, !tbaa !234
  %13 = zext i8 %12 to i64, !dbg !832
  %14 = getelementptr inbounds [64 x i16], ptr @x264_dct8_weight2_tab, i64 0, i64 %13, !dbg !832
  %15 = load i16, ptr %14, align 2, !dbg !832, !tbaa !258
  %16 = zext i16 %15 to i32, !dbg !832
  %17 = getelementptr inbounds [2 x [64 x i32]], ptr @x264_dct8_weight2_zigzag, i64 0, i64 0, i64 %10, !dbg !833
  store i32 %16, ptr %17, align 4, !dbg !834, !tbaa !826
  %18 = add nuw nsw i64 %2, 2, !dbg !835
  call void @llvm.dbg.value(metadata i64 %18, metadata !817, metadata !DIExpression()), !dbg !819
  %19 = icmp eq i64 %18, 64, !dbg !836
  br i1 %19, label %20, label %1, !dbg !828, !llvm.loop !837

20:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i64 1, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 1, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 0, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 0, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 1, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 1, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 2, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 2, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 3, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 3, metadata !817, metadata !DIExpression()), !dbg !819
  store <4 x i32> <i32 800, i32 320, i32 320, i32 800>, ptr getelementptr inbounds ([2 x [16 x i32]], ptr @x264_dct4_weight2_zigzag, i64 0, i64 1, i64 0), align 16, !dbg !820, !tbaa !826
  call void @llvm.dbg.value(metadata i64 4, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 4, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 5, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 5, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 6, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 6, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 7, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 7, metadata !817, metadata !DIExpression()), !dbg !819
  store <4 x i32> <i32 320, i32 128, i32 320, i32 128>, ptr getelementptr inbounds ([2 x [16 x i32]], ptr @x264_dct4_weight2_zigzag, i64 0, i64 1, i64 4), align 16, !dbg !820, !tbaa !826
  call void @llvm.dbg.value(metadata i64 8, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 8, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 9, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 9, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 10, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 10, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 11, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 11, metadata !817, metadata !DIExpression()), !dbg !819
  store <4 x i32> <i32 800, i32 320, i32 800, i32 320>, ptr getelementptr inbounds ([2 x [16 x i32]], ptr @x264_dct4_weight2_zigzag, i64 0, i64 1, i64 8), align 16, !dbg !820, !tbaa !826
  call void @llvm.dbg.value(metadata i64 12, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 12, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 13, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 13, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 14, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 14, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 15, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 15, metadata !817, metadata !DIExpression()), !dbg !819
  store <4 x i32> <i32 320, i32 128, i32 320, i32 128>, ptr getelementptr inbounds ([2 x [16 x i32]], ptr @x264_dct4_weight2_zigzag, i64 0, i64 1, i64 12), align 16, !dbg !820, !tbaa !826
  call void @llvm.dbg.value(metadata i64 16, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 0, metadata !817, metadata !DIExpression()), !dbg !819
  br label %21, !dbg !828

21:                                               ; preds = %21, %20
  %22 = phi i64 [ 0, %20 ], [ %38, %21 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !817, metadata !DIExpression()), !dbg !819
  %23 = getelementptr inbounds [2 x [64 x i8]], ptr @x264_zigzag_scan8, i64 0, i64 1, i64 %22, !dbg !830
  %24 = load i8, ptr %23, align 2, !dbg !830, !tbaa !234
  %25 = zext i8 %24 to i64, !dbg !832
  %26 = getelementptr inbounds [64 x i16], ptr @x264_dct8_weight2_tab, i64 0, i64 %25, !dbg !832
  %27 = load i16, ptr %26, align 2, !dbg !832, !tbaa !258
  %28 = zext i16 %27 to i32, !dbg !832
  %29 = getelementptr inbounds [2 x [64 x i32]], ptr @x264_dct8_weight2_zigzag, i64 0, i64 1, i64 %22, !dbg !833
  store i32 %28, ptr %29, align 8, !dbg !834, !tbaa !826
  %30 = or i64 %22, 1, !dbg !835
  call void @llvm.dbg.value(metadata i64 %30, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 %30, metadata !817, metadata !DIExpression()), !dbg !819
  %31 = getelementptr inbounds [2 x [64 x i8]], ptr @x264_zigzag_scan8, i64 0, i64 1, i64 %30, !dbg !830
  %32 = load i8, ptr %31, align 1, !dbg !830, !tbaa !234
  %33 = zext i8 %32 to i64, !dbg !832
  %34 = getelementptr inbounds [64 x i16], ptr @x264_dct8_weight2_tab, i64 0, i64 %33, !dbg !832
  %35 = load i16, ptr %34, align 2, !dbg !832, !tbaa !258
  %36 = zext i16 %35 to i32, !dbg !832
  %37 = getelementptr inbounds [2 x [64 x i32]], ptr @x264_dct8_weight2_zigzag, i64 0, i64 1, i64 %30, !dbg !833
  store i32 %36, ptr %37, align 4, !dbg !834, !tbaa !826
  %38 = add nuw nsw i64 %22, 2, !dbg !835
  call void @llvm.dbg.value(metadata i64 %38, metadata !817, metadata !DIExpression()), !dbg !819
  %39 = icmp eq i64 %38, 64, !dbg !836
  br i1 %39, label %40, label %21, !dbg !828, !llvm.loop !837

40:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 2, metadata !818, metadata !DIExpression()), !dbg !819
  ret void, !dbg !839
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_zigzag_init(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !840 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !866, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata ptr %1, metadata !867, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata i32 %2, metadata !868, metadata !DIExpression()), !dbg !869
  %4 = icmp eq i32 %2, 0, !dbg !870
  %5 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %1, i64 0, i32 1, !dbg !872
  %6 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %1, i64 0, i32 2, !dbg !872
  %7 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %1, i64 0, i32 3, !dbg !872
  br i1 %4, label %11, label %8, !dbg !873

8:                                                ; preds = %3
  store ptr @zigzag_scan_8x8_field, ptr %1, align 8, !dbg !874, !tbaa !876
  store ptr @zigzag_scan_4x4_field, ptr %5, align 8, !dbg !878, !tbaa !879
  store ptr @zigzag_sub_8x8_field, ptr %6, align 8, !dbg !880, !tbaa !881
  store ptr @zigzag_sub_4x4_field, ptr %7, align 8, !dbg !882, !tbaa !883
  %9 = and i32 %0, 16, !dbg !884
  %10 = icmp eq i32 %9, 0, !dbg !884
  br i1 %10, label %31, label %29, !dbg !886

11:                                               ; preds = %3
  store ptr @zigzag_scan_8x8_frame, ptr %1, align 8, !dbg !887, !tbaa !876
  store ptr @zigzag_scan_4x4_frame, ptr %5, align 8, !dbg !889, !tbaa !879
  store ptr @zigzag_sub_8x8_frame, ptr %6, align 8, !dbg !890, !tbaa !881
  store ptr @zigzag_sub_4x4_frame, ptr %7, align 8, !dbg !891, !tbaa !883
  %12 = and i32 %0, 8, !dbg !892
  %13 = icmp eq i32 %12, 0, !dbg !892
  br i1 %13, label %15, label %14, !dbg !894

14:                                               ; preds = %11
  store ptr @x264_zigzag_scan_4x4_frame_mmx, ptr %5, align 8, !dbg !895, !tbaa !879
  br label %15, !dbg !896

15:                                               ; preds = %14, %11
  %16 = and i32 %0, 272, !dbg !897
  %17 = icmp eq i32 %16, 0, !dbg !897
  br i1 %17, label %22, label %18, !dbg !897

18:                                               ; preds = %15
  %19 = and i32 %0, 256, !dbg !899
  %20 = icmp eq i32 %19, 0, !dbg !899
  %21 = select i1 %20, ptr @x264_zigzag_scan_8x8_frame_mmxext, ptr @x264_zigzag_scan_8x8_frame_sse2, !dbg !901
  store ptr %21, ptr %1, align 8, !dbg !897, !tbaa !876
  br label %22, !dbg !897

22:                                               ; preds = %15, %18
  %23 = and i32 %0, 1024, !dbg !897
  %24 = icmp eq i32 %23, 0, !dbg !897
  br i1 %24, label %26, label %25, !dbg !902

25:                                               ; preds = %22
  store ptr @x264_zigzag_sub_4x4_frame_ssse3, ptr %7, align 8, !dbg !903, !tbaa !883
  store ptr @x264_zigzag_scan_8x8_frame_ssse3, ptr %1, align 8, !dbg !905, !tbaa !876
  br label %26, !dbg !906

26:                                               ; preds = %25, %22
  %27 = and i32 %0, 2048, !dbg !907
  %28 = icmp eq i32 %27, 0, !dbg !907
  br i1 %28, label %31, label %29, !dbg !909

29:                                               ; preds = %26, %8
  %30 = phi ptr [ @x264_zigzag_scan_4x4_field_mmxext, %8 ], [ @x264_zigzag_scan_4x4_frame_ssse3, %26 ]
  store ptr %30, ptr %5, align 8, !dbg !872, !tbaa !879
  br label %31, !dbg !910

31:                                               ; preds = %29, %26, %8
  %32 = and i32 %0, 8, !dbg !910
  %33 = icmp eq i32 %32, 0, !dbg !910
  %34 = select i1 %33, ptr @zigzag_interleave_8x8_cavlc, ptr @x264_zigzag_interleave_8x8_cavlc_mmx, !dbg !912
  %35 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %1, i64 0, i32 4, !dbg !913
  store ptr %34, ptr %35, align 8, !dbg !869, !tbaa !914
  ret void, !dbg !915
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_scan_8x8_field(ptr noundef writeonly %0, ptr noundef readonly %1) #9 !dbg !916 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !918, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata ptr %1, metadata !919, metadata !DIExpression()), !dbg !920
  %3 = load i16, ptr %1, align 2, !dbg !921, !tbaa !258
  store i16 %3, ptr %0, align 2, !dbg !921, !tbaa !258
  %4 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 1, !dbg !921
  %5 = load i16, ptr %4, align 2, !dbg !921, !tbaa !258
  %6 = getelementptr inbounds i16, ptr %0, i64 1, !dbg !921
  store i16 %5, ptr %6, align 2, !dbg !921, !tbaa !258
  %7 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 2, !dbg !921
  %8 = load i16, ptr %7, align 2, !dbg !921, !tbaa !258
  %9 = getelementptr inbounds i16, ptr %0, i64 2, !dbg !921
  store i16 %8, ptr %9, align 2, !dbg !921, !tbaa !258
  %10 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 8, !dbg !921
  %11 = load i16, ptr %10, align 2, !dbg !921, !tbaa !258
  %12 = getelementptr inbounds i16, ptr %0, i64 3, !dbg !921
  store i16 %11, ptr %12, align 2, !dbg !921, !tbaa !258
  %13 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 9, !dbg !921
  %14 = load i16, ptr %13, align 2, !dbg !921, !tbaa !258
  %15 = getelementptr inbounds i16, ptr %0, i64 4, !dbg !921
  store i16 %14, ptr %15, align 2, !dbg !921, !tbaa !258
  %16 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 3, !dbg !921
  %17 = load i16, ptr %16, align 2, !dbg !921, !tbaa !258
  %18 = getelementptr inbounds i16, ptr %0, i64 5, !dbg !921
  store i16 %17, ptr %18, align 2, !dbg !921, !tbaa !258
  %19 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 4, !dbg !921
  %20 = load i16, ptr %19, align 2, !dbg !921, !tbaa !258
  %21 = getelementptr inbounds i16, ptr %0, i64 6, !dbg !921
  store i16 %20, ptr %21, align 2, !dbg !921, !tbaa !258
  %22 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 10, !dbg !921
  %23 = load i16, ptr %22, align 2, !dbg !921, !tbaa !258
  %24 = getelementptr inbounds i16, ptr %0, i64 7, !dbg !921
  store i16 %23, ptr %24, align 2, !dbg !921, !tbaa !258
  %25 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 16, !dbg !921
  %26 = load i16, ptr %25, align 2, !dbg !921, !tbaa !258
  %27 = getelementptr inbounds i16, ptr %0, i64 8, !dbg !921
  store i16 %26, ptr %27, align 2, !dbg !921, !tbaa !258
  %28 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 11, !dbg !921
  %29 = load i16, ptr %28, align 2, !dbg !921, !tbaa !258
  %30 = getelementptr inbounds i16, ptr %0, i64 9, !dbg !921
  store i16 %29, ptr %30, align 2, !dbg !921, !tbaa !258
  %31 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 5, !dbg !921
  %32 = load i16, ptr %31, align 2, !dbg !921, !tbaa !258
  %33 = getelementptr inbounds i16, ptr %0, i64 10, !dbg !921
  store i16 %32, ptr %33, align 2, !dbg !921, !tbaa !258
  %34 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 6, !dbg !921
  %35 = load i16, ptr %34, align 2, !dbg !921, !tbaa !258
  %36 = getelementptr inbounds i16, ptr %0, i64 11, !dbg !921
  store i16 %35, ptr %36, align 2, !dbg !921, !tbaa !258
  %37 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 7, !dbg !921
  %38 = load i16, ptr %37, align 2, !dbg !921, !tbaa !258
  %39 = getelementptr inbounds i16, ptr %0, i64 12, !dbg !921
  store i16 %38, ptr %39, align 2, !dbg !921, !tbaa !258
  %40 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 12, !dbg !921
  %41 = load i16, ptr %40, align 2, !dbg !921, !tbaa !258
  %42 = getelementptr inbounds i16, ptr %0, i64 13, !dbg !921
  store i16 %41, ptr %42, align 2, !dbg !921, !tbaa !258
  %43 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 17, !dbg !921
  %44 = load i16, ptr %43, align 2, !dbg !921, !tbaa !258
  %45 = getelementptr inbounds i16, ptr %0, i64 14, !dbg !921
  store i16 %44, ptr %45, align 2, !dbg !921, !tbaa !258
  %46 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 24, !dbg !921
  %47 = load i16, ptr %46, align 2, !dbg !921, !tbaa !258
  %48 = getelementptr inbounds i16, ptr %0, i64 15, !dbg !921
  store i16 %47, ptr %48, align 2, !dbg !921, !tbaa !258
  %49 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 18, !dbg !921
  %50 = load i16, ptr %49, align 2, !dbg !921, !tbaa !258
  %51 = getelementptr inbounds i16, ptr %0, i64 16, !dbg !921
  store i16 %50, ptr %51, align 2, !dbg !921, !tbaa !258
  %52 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 13, !dbg !921
  %53 = load i16, ptr %52, align 2, !dbg !921, !tbaa !258
  %54 = getelementptr inbounds i16, ptr %0, i64 17, !dbg !921
  store i16 %53, ptr %54, align 2, !dbg !921, !tbaa !258
  %55 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 14, !dbg !921
  %56 = load i16, ptr %55, align 2, !dbg !921, !tbaa !258
  %57 = getelementptr inbounds i16, ptr %0, i64 18, !dbg !921
  store i16 %56, ptr %57, align 2, !dbg !921, !tbaa !258
  %58 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 15, !dbg !921
  %59 = load i16, ptr %58, align 2, !dbg !921, !tbaa !258
  %60 = getelementptr inbounds i16, ptr %0, i64 19, !dbg !921
  store i16 %59, ptr %60, align 2, !dbg !921, !tbaa !258
  %61 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 19, !dbg !921
  %62 = load i16, ptr %61, align 2, !dbg !921, !tbaa !258
  %63 = getelementptr inbounds i16, ptr %0, i64 20, !dbg !921
  store i16 %62, ptr %63, align 2, !dbg !921, !tbaa !258
  %64 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 25, !dbg !921
  %65 = load i16, ptr %64, align 2, !dbg !921, !tbaa !258
  %66 = getelementptr inbounds i16, ptr %0, i64 21, !dbg !921
  store i16 %65, ptr %66, align 2, !dbg !921, !tbaa !258
  %67 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 32, !dbg !921
  %68 = load i16, ptr %67, align 2, !dbg !921, !tbaa !258
  %69 = getelementptr inbounds i16, ptr %0, i64 22, !dbg !921
  store i16 %68, ptr %69, align 2, !dbg !921, !tbaa !258
  %70 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 26, !dbg !921
  %71 = load i16, ptr %70, align 2, !dbg !921, !tbaa !258
  %72 = getelementptr inbounds i16, ptr %0, i64 23, !dbg !921
  store i16 %71, ptr %72, align 2, !dbg !921, !tbaa !258
  %73 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 20, !dbg !921
  %74 = load i16, ptr %73, align 2, !dbg !921, !tbaa !258
  %75 = getelementptr inbounds i16, ptr %0, i64 24, !dbg !921
  store i16 %74, ptr %75, align 2, !dbg !921, !tbaa !258
  %76 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 21, !dbg !921
  %77 = load i16, ptr %76, align 2, !dbg !921, !tbaa !258
  %78 = getelementptr inbounds i16, ptr %0, i64 25, !dbg !921
  store i16 %77, ptr %78, align 2, !dbg !921, !tbaa !258
  %79 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 22, !dbg !921
  %80 = load i16, ptr %79, align 2, !dbg !921, !tbaa !258
  %81 = getelementptr inbounds i16, ptr %0, i64 26, !dbg !921
  store i16 %80, ptr %81, align 2, !dbg !921, !tbaa !258
  %82 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 23, !dbg !921
  %83 = load i16, ptr %82, align 2, !dbg !921, !tbaa !258
  %84 = getelementptr inbounds i16, ptr %0, i64 27, !dbg !921
  store i16 %83, ptr %84, align 2, !dbg !921, !tbaa !258
  %85 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 27, !dbg !921
  %86 = load i16, ptr %85, align 2, !dbg !921, !tbaa !258
  %87 = getelementptr inbounds i16, ptr %0, i64 28, !dbg !921
  store i16 %86, ptr %87, align 2, !dbg !921, !tbaa !258
  %88 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 33, !dbg !921
  %89 = load i16, ptr %88, align 2, !dbg !921, !tbaa !258
  %90 = getelementptr inbounds i16, ptr %0, i64 29, !dbg !921
  store i16 %89, ptr %90, align 2, !dbg !921, !tbaa !258
  %91 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 40, !dbg !921
  %92 = load i16, ptr %91, align 2, !dbg !921, !tbaa !258
  %93 = getelementptr inbounds i16, ptr %0, i64 30, !dbg !921
  store i16 %92, ptr %93, align 2, !dbg !921, !tbaa !258
  %94 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 34, !dbg !921
  %95 = load i16, ptr %94, align 2, !dbg !921, !tbaa !258
  %96 = getelementptr inbounds i16, ptr %0, i64 31, !dbg !921
  store i16 %95, ptr %96, align 2, !dbg !921, !tbaa !258
  %97 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 28, !dbg !921
  %98 = load i16, ptr %97, align 2, !dbg !921, !tbaa !258
  %99 = getelementptr inbounds i16, ptr %0, i64 32, !dbg !921
  store i16 %98, ptr %99, align 2, !dbg !921, !tbaa !258
  %100 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 29, !dbg !921
  %101 = load i16, ptr %100, align 2, !dbg !921, !tbaa !258
  %102 = getelementptr inbounds i16, ptr %0, i64 33, !dbg !921
  store i16 %101, ptr %102, align 2, !dbg !921, !tbaa !258
  %103 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 30, !dbg !921
  %104 = load i16, ptr %103, align 2, !dbg !921, !tbaa !258
  %105 = getelementptr inbounds i16, ptr %0, i64 34, !dbg !921
  store i16 %104, ptr %105, align 2, !dbg !921, !tbaa !258
  %106 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 31, !dbg !921
  %107 = load i16, ptr %106, align 2, !dbg !921, !tbaa !258
  %108 = getelementptr inbounds i16, ptr %0, i64 35, !dbg !921
  store i16 %107, ptr %108, align 2, !dbg !921, !tbaa !258
  %109 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 35, !dbg !921
  %110 = load i16, ptr %109, align 2, !dbg !921, !tbaa !258
  %111 = getelementptr inbounds i16, ptr %0, i64 36, !dbg !921
  store i16 %110, ptr %111, align 2, !dbg !921, !tbaa !258
  %112 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 41, !dbg !921
  %113 = load i16, ptr %112, align 2, !dbg !921, !tbaa !258
  %114 = getelementptr inbounds i16, ptr %0, i64 37, !dbg !921
  store i16 %113, ptr %114, align 2, !dbg !921, !tbaa !258
  %115 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 48, !dbg !921
  %116 = load i16, ptr %115, align 2, !dbg !921, !tbaa !258
  %117 = getelementptr inbounds i16, ptr %0, i64 38, !dbg !921
  store i16 %116, ptr %117, align 2, !dbg !921, !tbaa !258
  %118 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 42, !dbg !921
  %119 = load i16, ptr %118, align 2, !dbg !921, !tbaa !258
  %120 = getelementptr inbounds i16, ptr %0, i64 39, !dbg !921
  store i16 %119, ptr %120, align 2, !dbg !921, !tbaa !258
  %121 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 36, !dbg !921
  %122 = load i16, ptr %121, align 2, !dbg !921, !tbaa !258
  %123 = getelementptr inbounds i16, ptr %0, i64 40, !dbg !921
  store i16 %122, ptr %123, align 2, !dbg !921, !tbaa !258
  %124 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 37, !dbg !921
  %125 = load i16, ptr %124, align 2, !dbg !921, !tbaa !258
  %126 = getelementptr inbounds i16, ptr %0, i64 41, !dbg !921
  store i16 %125, ptr %126, align 2, !dbg !921, !tbaa !258
  %127 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 38, !dbg !921
  %128 = load i16, ptr %127, align 2, !dbg !921, !tbaa !258
  %129 = getelementptr inbounds i16, ptr %0, i64 42, !dbg !921
  store i16 %128, ptr %129, align 2, !dbg !921, !tbaa !258
  %130 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 39, !dbg !921
  %131 = load i16, ptr %130, align 2, !dbg !921, !tbaa !258
  %132 = getelementptr inbounds i16, ptr %0, i64 43, !dbg !921
  store i16 %131, ptr %132, align 2, !dbg !921, !tbaa !258
  %133 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 43, !dbg !921
  %134 = load i16, ptr %133, align 2, !dbg !921, !tbaa !258
  %135 = getelementptr inbounds i16, ptr %0, i64 44, !dbg !921
  store i16 %134, ptr %135, align 2, !dbg !921, !tbaa !258
  %136 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 49, !dbg !921
  %137 = load i16, ptr %136, align 2, !dbg !921, !tbaa !258
  %138 = getelementptr inbounds i16, ptr %0, i64 45, !dbg !921
  store i16 %137, ptr %138, align 2, !dbg !921, !tbaa !258
  %139 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 50, !dbg !921
  %140 = load i16, ptr %139, align 2, !dbg !921, !tbaa !258
  %141 = getelementptr inbounds i16, ptr %0, i64 46, !dbg !921
  store i16 %140, ptr %141, align 2, !dbg !921, !tbaa !258
  %142 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 44, !dbg !921
  %143 = load i16, ptr %142, align 2, !dbg !921, !tbaa !258
  %144 = getelementptr inbounds i16, ptr %0, i64 47, !dbg !921
  store i16 %143, ptr %144, align 2, !dbg !921, !tbaa !258
  %145 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 45, !dbg !921
  %146 = load i16, ptr %145, align 2, !dbg !921, !tbaa !258
  %147 = getelementptr inbounds i16, ptr %0, i64 48, !dbg !921
  store i16 %146, ptr %147, align 2, !dbg !921, !tbaa !258
  %148 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 46, !dbg !921
  %149 = load i16, ptr %148, align 2, !dbg !921, !tbaa !258
  %150 = getelementptr inbounds i16, ptr %0, i64 49, !dbg !921
  store i16 %149, ptr %150, align 2, !dbg !921, !tbaa !258
  %151 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 47, !dbg !921
  %152 = load i16, ptr %151, align 2, !dbg !921, !tbaa !258
  %153 = getelementptr inbounds i16, ptr %0, i64 50, !dbg !921
  store i16 %152, ptr %153, align 2, !dbg !921, !tbaa !258
  %154 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 51, !dbg !921
  %155 = load i16, ptr %154, align 2, !dbg !921, !tbaa !258
  %156 = getelementptr inbounds i16, ptr %0, i64 51, !dbg !921
  store i16 %155, ptr %156, align 2, !dbg !921, !tbaa !258
  %157 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 56, !dbg !921
  %158 = load i16, ptr %157, align 2, !dbg !921, !tbaa !258
  %159 = getelementptr inbounds i16, ptr %0, i64 52, !dbg !921
  store i16 %158, ptr %159, align 2, !dbg !921, !tbaa !258
  %160 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 57, !dbg !921
  %161 = load i16, ptr %160, align 2, !dbg !921, !tbaa !258
  %162 = getelementptr inbounds i16, ptr %0, i64 53, !dbg !921
  store i16 %161, ptr %162, align 2, !dbg !921, !tbaa !258
  %163 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 52, !dbg !921
  %164 = load i16, ptr %163, align 2, !dbg !921, !tbaa !258
  %165 = getelementptr inbounds i16, ptr %0, i64 54, !dbg !921
  store i16 %164, ptr %165, align 2, !dbg !921, !tbaa !258
  %166 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 53, !dbg !921
  %167 = load i16, ptr %166, align 2, !dbg !921, !tbaa !258
  %168 = getelementptr inbounds i16, ptr %0, i64 55, !dbg !921
  store i16 %167, ptr %168, align 2, !dbg !921, !tbaa !258
  %169 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 54, !dbg !921
  %170 = load i16, ptr %169, align 2, !dbg !921, !tbaa !258
  %171 = getelementptr inbounds i16, ptr %0, i64 56, !dbg !921
  store i16 %170, ptr %171, align 2, !dbg !921, !tbaa !258
  %172 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 55, !dbg !921
  %173 = load i16, ptr %172, align 2, !dbg !921, !tbaa !258
  %174 = getelementptr inbounds i16, ptr %0, i64 57, !dbg !921
  store i16 %173, ptr %174, align 2, !dbg !921, !tbaa !258
  %175 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 58, !dbg !921
  %176 = load i16, ptr %175, align 2, !dbg !921, !tbaa !258
  %177 = getelementptr inbounds i16, ptr %0, i64 58, !dbg !921
  store i16 %176, ptr %177, align 2, !dbg !921, !tbaa !258
  %178 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 59, !dbg !921
  %179 = load i16, ptr %178, align 2, !dbg !921, !tbaa !258
  %180 = getelementptr inbounds i16, ptr %0, i64 59, !dbg !921
  store i16 %179, ptr %180, align 2, !dbg !921, !tbaa !258
  %181 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 60, !dbg !921
  %182 = load i16, ptr %181, align 2, !dbg !921, !tbaa !258
  %183 = getelementptr inbounds i16, ptr %0, i64 60, !dbg !921
  store i16 %182, ptr %183, align 2, !dbg !921, !tbaa !258
  %184 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 61, !dbg !921
  %185 = load i16, ptr %184, align 2, !dbg !921, !tbaa !258
  %186 = getelementptr inbounds i16, ptr %0, i64 61, !dbg !921
  store i16 %185, ptr %186, align 2, !dbg !921, !tbaa !258
  %187 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 62, !dbg !921
  %188 = load i16, ptr %187, align 2, !dbg !921, !tbaa !258
  %189 = getelementptr inbounds i16, ptr %0, i64 62, !dbg !921
  store i16 %188, ptr %189, align 2, !dbg !921, !tbaa !258
  %190 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 63, !dbg !921
  %191 = load i16, ptr %190, align 2, !dbg !921, !tbaa !258
  %192 = getelementptr inbounds i16, ptr %0, i64 63, !dbg !921
  store i16 %191, ptr %192, align 2, !dbg !921, !tbaa !258
  ret void, !dbg !922
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_scan_4x4_field(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #9 !dbg !923 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !925, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %1, metadata !926, metadata !DIExpression()), !dbg !927
  %3 = load i32, ptr %1, align 4, !dbg !928, !tbaa !826
  store i32 %3, ptr %0, align 4, !dbg !929, !tbaa !826
  %4 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 4, !dbg !930
  %5 = load i16, ptr %4, align 2, !dbg !930, !tbaa !258
  %6 = getelementptr inbounds i16, ptr %0, i64 2, !dbg !930
  store i16 %5, ptr %6, align 2, !dbg !930, !tbaa !258
  %7 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 2, !dbg !931
  %8 = load i16, ptr %7, align 2, !dbg !931, !tbaa !258
  %9 = getelementptr inbounds i16, ptr %0, i64 3, !dbg !931
  store i16 %8, ptr %9, align 2, !dbg !931, !tbaa !258
  %10 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 3, !dbg !932
  %11 = load i16, ptr %10, align 2, !dbg !932, !tbaa !258
  %12 = getelementptr inbounds i16, ptr %0, i64 4, !dbg !932
  store i16 %11, ptr %12, align 2, !dbg !932, !tbaa !258
  %13 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 5, !dbg !933
  %14 = load i16, ptr %13, align 2, !dbg !933, !tbaa !258
  %15 = getelementptr inbounds i16, ptr %0, i64 5, !dbg !933
  store i16 %14, ptr %15, align 2, !dbg !933, !tbaa !258
  %16 = getelementptr inbounds i16, ptr %1, i64 6, !dbg !934
  %17 = load i32, ptr %16, align 4, !dbg !935, !tbaa !826
  %18 = getelementptr inbounds i16, ptr %0, i64 6, !dbg !936
  store i32 %17, ptr %18, align 4, !dbg !937, !tbaa !826
  %19 = getelementptr inbounds i16, ptr %1, i64 8, !dbg !938
  %20 = load i64, ptr %19, align 8, !dbg !939, !tbaa !940
  %21 = getelementptr inbounds i16, ptr %0, i64 8, !dbg !942
  store i64 %20, ptr %21, align 8, !dbg !943, !tbaa !940
  %22 = getelementptr inbounds i16, ptr %1, i64 12, !dbg !944
  %23 = load i64, ptr %22, align 8, !dbg !945, !tbaa !940
  %24 = getelementptr inbounds i16, ptr %0, i64 12, !dbg !946
  store i64 %23, ptr %24, align 8, !dbg !947, !tbaa !940
  ret void, !dbg !948
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_sub_8x8_field(ptr noundef writeonly %0, ptr noundef readonly %1, ptr noundef %2) #9 !dbg !949 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !951, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata ptr %1, metadata !952, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata ptr %2, metadata !953, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 0, metadata !954, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i32 0, metadata !956, metadata !DIExpression()), !dbg !1147
  %4 = load i8, ptr %1, align 1, !dbg !1148, !tbaa !234
  %5 = zext i8 %4 to i16, !dbg !1148
  %6 = load i8, ptr %2, align 1, !dbg !1148, !tbaa !234
  %7 = zext i8 %6 to i16, !dbg !1148
  %8 = sub nsw i16 %5, %7, !dbg !1148
  store i16 %8, ptr %0, align 2, !dbg !1148, !tbaa !258
  call void @llvm.dbg.value(metadata i32 16, metadata !957, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i32 32, metadata !959, metadata !DIExpression()), !dbg !1149
  %9 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !1150
  %10 = load i8, ptr %9, align 1, !dbg !1150, !tbaa !234
  %11 = zext i8 %10 to i16, !dbg !1150
  %12 = getelementptr inbounds i8, ptr %2, i64 32, !dbg !1150
  %13 = load i8, ptr %12, align 1, !dbg !1150, !tbaa !234
  %14 = zext i8 %13 to i16, !dbg !1150
  %15 = sub nsw i16 %11, %14, !dbg !1150
  %16 = getelementptr inbounds i16, ptr %0, i64 1, !dbg !1150
  store i16 %15, ptr %16, align 2, !dbg !1150, !tbaa !258
  call void @llvm.dbg.value(metadata i32 32, metadata !960, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i32 64, metadata !962, metadata !DIExpression()), !dbg !1151
  %17 = getelementptr inbounds i8, ptr %1, i64 32, !dbg !1152
  %18 = load i8, ptr %17, align 1, !dbg !1152, !tbaa !234
  %19 = zext i8 %18 to i16, !dbg !1152
  %20 = getelementptr inbounds i8, ptr %2, i64 64, !dbg !1152
  %21 = load i8, ptr %20, align 1, !dbg !1152, !tbaa !234
  %22 = zext i8 %21 to i16, !dbg !1152
  %23 = sub nsw i16 %19, %22, !dbg !1152
  %24 = getelementptr inbounds i16, ptr %0, i64 2, !dbg !1152
  store i16 %23, ptr %24, align 2, !dbg !1152, !tbaa !258
  call void @llvm.dbg.value(metadata i32 1, metadata !963, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i32 1, metadata !965, metadata !DIExpression()), !dbg !1153
  %25 = getelementptr inbounds i8, ptr %1, i64 1, !dbg !1154
  %26 = load i8, ptr %25, align 1, !dbg !1154, !tbaa !234
  %27 = zext i8 %26 to i16, !dbg !1154
  %28 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1154
  %29 = load i8, ptr %28, align 1, !dbg !1154, !tbaa !234
  %30 = zext i8 %29 to i16, !dbg !1154
  %31 = sub nsw i16 %27, %30, !dbg !1154
  %32 = getelementptr inbounds i16, ptr %0, i64 3, !dbg !1154
  store i16 %31, ptr %32, align 2, !dbg !1154, !tbaa !258
  call void @llvm.dbg.value(metadata i32 17, metadata !966, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i32 33, metadata !968, metadata !DIExpression()), !dbg !1155
  %33 = getelementptr inbounds i8, ptr %1, i64 17, !dbg !1156
  %34 = load i8, ptr %33, align 1, !dbg !1156, !tbaa !234
  %35 = zext i8 %34 to i16, !dbg !1156
  %36 = getelementptr inbounds i8, ptr %2, i64 33, !dbg !1156
  %37 = load i8, ptr %36, align 1, !dbg !1156, !tbaa !234
  %38 = zext i8 %37 to i16, !dbg !1156
  %39 = sub nsw i16 %35, %38, !dbg !1156
  %40 = getelementptr inbounds i16, ptr %0, i64 4, !dbg !1156
  store i16 %39, ptr %40, align 2, !dbg !1156, !tbaa !258
  call void @llvm.dbg.value(metadata i32 48, metadata !969, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i32 96, metadata !971, metadata !DIExpression()), !dbg !1157
  %41 = getelementptr inbounds i8, ptr %1, i64 48, !dbg !1158
  %42 = load i8, ptr %41, align 1, !dbg !1158, !tbaa !234
  %43 = zext i8 %42 to i16, !dbg !1158
  %44 = getelementptr inbounds i8, ptr %2, i64 96, !dbg !1158
  %45 = load i8, ptr %44, align 1, !dbg !1158, !tbaa !234
  %46 = zext i8 %45 to i16, !dbg !1158
  %47 = sub nsw i16 %43, %46, !dbg !1158
  %48 = getelementptr inbounds i16, ptr %0, i64 5, !dbg !1158
  store i16 %47, ptr %48, align 2, !dbg !1158, !tbaa !258
  call void @llvm.dbg.value(metadata i32 64, metadata !972, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 128, metadata !974, metadata !DIExpression()), !dbg !1159
  %49 = getelementptr inbounds i8, ptr %1, i64 64, !dbg !1160
  %50 = load i8, ptr %49, align 1, !dbg !1160, !tbaa !234
  %51 = zext i8 %50 to i16, !dbg !1160
  %52 = getelementptr inbounds i8, ptr %2, i64 128, !dbg !1160
  %53 = load i8, ptr %52, align 1, !dbg !1160, !tbaa !234
  %54 = zext i8 %53 to i16, !dbg !1160
  %55 = sub nsw i16 %51, %54, !dbg !1160
  %56 = getelementptr inbounds i16, ptr %0, i64 6, !dbg !1160
  store i16 %55, ptr %56, align 2, !dbg !1160, !tbaa !258
  call void @llvm.dbg.value(metadata i32 33, metadata !975, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 65, metadata !977, metadata !DIExpression()), !dbg !1161
  %57 = getelementptr inbounds i8, ptr %1, i64 33, !dbg !1162
  %58 = load i8, ptr %57, align 1, !dbg !1162, !tbaa !234
  %59 = zext i8 %58 to i16, !dbg !1162
  %60 = getelementptr inbounds i8, ptr %2, i64 65, !dbg !1162
  %61 = load i8, ptr %60, align 1, !dbg !1162, !tbaa !234
  %62 = zext i8 %61 to i16, !dbg !1162
  %63 = sub nsw i16 %59, %62, !dbg !1162
  %64 = getelementptr inbounds i16, ptr %0, i64 7, !dbg !1162
  store i16 %63, ptr %64, align 2, !dbg !1162, !tbaa !258
  call void @llvm.dbg.value(metadata i32 2, metadata !978, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i32 2, metadata !980, metadata !DIExpression()), !dbg !1163
  %65 = getelementptr inbounds i8, ptr %1, i64 2, !dbg !1164
  %66 = load i8, ptr %65, align 1, !dbg !1164, !tbaa !234
  %67 = zext i8 %66 to i16, !dbg !1164
  %68 = getelementptr inbounds i8, ptr %2, i64 2, !dbg !1164
  %69 = load i8, ptr %68, align 1, !dbg !1164, !tbaa !234
  %70 = zext i8 %69 to i16, !dbg !1164
  %71 = sub nsw i16 %67, %70, !dbg !1164
  %72 = getelementptr inbounds i16, ptr %0, i64 8, !dbg !1164
  store i16 %71, ptr %72, align 2, !dbg !1164, !tbaa !258
  call void @llvm.dbg.value(metadata i32 49, metadata !981, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 97, metadata !983, metadata !DIExpression()), !dbg !1165
  %73 = getelementptr inbounds i8, ptr %1, i64 49, !dbg !1166
  %74 = load i8, ptr %73, align 1, !dbg !1166, !tbaa !234
  %75 = zext i8 %74 to i16, !dbg !1166
  %76 = getelementptr inbounds i8, ptr %2, i64 97, !dbg !1166
  %77 = load i8, ptr %76, align 1, !dbg !1166, !tbaa !234
  %78 = zext i8 %77 to i16, !dbg !1166
  %79 = sub nsw i16 %75, %78, !dbg !1166
  %80 = getelementptr inbounds i16, ptr %0, i64 9, !dbg !1166
  store i16 %79, ptr %80, align 2, !dbg !1166, !tbaa !258
  call void @llvm.dbg.value(metadata i32 80, metadata !984, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i32 160, metadata !986, metadata !DIExpression()), !dbg !1167
  %81 = getelementptr inbounds i8, ptr %1, i64 80, !dbg !1168
  %82 = load i8, ptr %81, align 1, !dbg !1168, !tbaa !234
  %83 = zext i8 %82 to i16, !dbg !1168
  %84 = getelementptr inbounds i8, ptr %2, i64 160, !dbg !1168
  %85 = load i8, ptr %84, align 1, !dbg !1168, !tbaa !234
  %86 = zext i8 %85 to i16, !dbg !1168
  %87 = sub nsw i16 %83, %86, !dbg !1168
  %88 = getelementptr inbounds i16, ptr %0, i64 10, !dbg !1168
  store i16 %87, ptr %88, align 2, !dbg !1168, !tbaa !258
  call void @llvm.dbg.value(metadata i32 96, metadata !987, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i32 192, metadata !989, metadata !DIExpression()), !dbg !1169
  %89 = getelementptr inbounds i8, ptr %1, i64 96, !dbg !1170
  %90 = load i8, ptr %89, align 1, !dbg !1170, !tbaa !234
  %91 = zext i8 %90 to i16, !dbg !1170
  %92 = getelementptr inbounds i8, ptr %2, i64 192, !dbg !1170
  %93 = load i8, ptr %92, align 1, !dbg !1170, !tbaa !234
  %94 = zext i8 %93 to i16, !dbg !1170
  %95 = sub nsw i16 %91, %94, !dbg !1170
  %96 = getelementptr inbounds i16, ptr %0, i64 11, !dbg !1170
  store i16 %95, ptr %96, align 2, !dbg !1170, !tbaa !258
  call void @llvm.dbg.value(metadata i32 112, metadata !990, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i32 224, metadata !992, metadata !DIExpression()), !dbg !1171
  %97 = getelementptr inbounds i8, ptr %1, i64 112, !dbg !1172
  %98 = load i8, ptr %97, align 1, !dbg !1172, !tbaa !234
  %99 = zext i8 %98 to i16, !dbg !1172
  %100 = getelementptr inbounds i8, ptr %2, i64 224, !dbg !1172
  %101 = load i8, ptr %100, align 1, !dbg !1172, !tbaa !234
  %102 = zext i8 %101 to i16, !dbg !1172
  %103 = sub nsw i16 %99, %102, !dbg !1172
  %104 = getelementptr inbounds i16, ptr %0, i64 12, !dbg !1172
  store i16 %103, ptr %104, align 2, !dbg !1172, !tbaa !258
  call void @llvm.dbg.value(metadata i32 65, metadata !993, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i32 129, metadata !995, metadata !DIExpression()), !dbg !1173
  %105 = getelementptr inbounds i8, ptr %1, i64 65, !dbg !1174
  %106 = load i8, ptr %105, align 1, !dbg !1174, !tbaa !234
  %107 = zext i8 %106 to i16, !dbg !1174
  %108 = getelementptr inbounds i8, ptr %2, i64 129, !dbg !1174
  %109 = load i8, ptr %108, align 1, !dbg !1174, !tbaa !234
  %110 = zext i8 %109 to i16, !dbg !1174
  %111 = sub nsw i16 %107, %110, !dbg !1174
  %112 = getelementptr inbounds i16, ptr %0, i64 13, !dbg !1174
  store i16 %111, ptr %112, align 2, !dbg !1174, !tbaa !258
  call void @llvm.dbg.value(metadata i32 18, metadata !996, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 34, metadata !998, metadata !DIExpression()), !dbg !1175
  %113 = getelementptr inbounds i8, ptr %1, i64 18, !dbg !1176
  %114 = load i8, ptr %113, align 1, !dbg !1176, !tbaa !234
  %115 = zext i8 %114 to i16, !dbg !1176
  %116 = getelementptr inbounds i8, ptr %2, i64 34, !dbg !1176
  %117 = load i8, ptr %116, align 1, !dbg !1176, !tbaa !234
  %118 = zext i8 %117 to i16, !dbg !1176
  %119 = sub nsw i16 %115, %118, !dbg !1176
  %120 = getelementptr inbounds i16, ptr %0, i64 14, !dbg !1176
  store i16 %119, ptr %120, align 2, !dbg !1176, !tbaa !258
  call void @llvm.dbg.value(metadata i32 3, metadata !999, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i32 3, metadata !1001, metadata !DIExpression()), !dbg !1177
  %121 = getelementptr inbounds i8, ptr %1, i64 3, !dbg !1178
  %122 = load i8, ptr %121, align 1, !dbg !1178, !tbaa !234
  %123 = zext i8 %122 to i16, !dbg !1178
  %124 = getelementptr inbounds i8, ptr %2, i64 3, !dbg !1178
  %125 = load i8, ptr %124, align 1, !dbg !1178, !tbaa !234
  %126 = zext i8 %125 to i16, !dbg !1178
  %127 = sub nsw i16 %123, %126, !dbg !1178
  %128 = getelementptr inbounds i16, ptr %0, i64 15, !dbg !1178
  store i16 %127, ptr %128, align 2, !dbg !1178, !tbaa !258
  call void @llvm.dbg.value(metadata i32 34, metadata !1002, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i32 66, metadata !1004, metadata !DIExpression()), !dbg !1179
  %129 = getelementptr inbounds i8, ptr %1, i64 34, !dbg !1180
  %130 = load i8, ptr %129, align 1, !dbg !1180, !tbaa !234
  %131 = zext i8 %130 to i16, !dbg !1180
  %132 = getelementptr inbounds i8, ptr %2, i64 66, !dbg !1180
  %133 = load i8, ptr %132, align 1, !dbg !1180, !tbaa !234
  %134 = zext i8 %133 to i16, !dbg !1180
  %135 = sub nsw i16 %131, %134, !dbg !1180
  %136 = getelementptr inbounds i16, ptr %0, i64 16, !dbg !1180
  store i16 %135, ptr %136, align 2, !dbg !1180, !tbaa !258
  call void @llvm.dbg.value(metadata i32 81, metadata !1005, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i32 161, metadata !1007, metadata !DIExpression()), !dbg !1181
  %137 = getelementptr inbounds i8, ptr %1, i64 81, !dbg !1182
  %138 = load i8, ptr %137, align 1, !dbg !1182, !tbaa !234
  %139 = zext i8 %138 to i16, !dbg !1182
  %140 = getelementptr inbounds i8, ptr %2, i64 161, !dbg !1182
  %141 = load i8, ptr %140, align 1, !dbg !1182, !tbaa !234
  %142 = zext i8 %141 to i16, !dbg !1182
  %143 = sub nsw i16 %139, %142, !dbg !1182
  %144 = getelementptr inbounds i16, ptr %0, i64 17, !dbg !1182
  store i16 %143, ptr %144, align 2, !dbg !1182, !tbaa !258
  call void @llvm.dbg.value(metadata i32 97, metadata !1008, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i32 193, metadata !1010, metadata !DIExpression()), !dbg !1183
  %145 = getelementptr inbounds i8, ptr %1, i64 97, !dbg !1184
  %146 = load i8, ptr %145, align 1, !dbg !1184, !tbaa !234
  %147 = zext i8 %146 to i16, !dbg !1184
  %148 = getelementptr inbounds i8, ptr %2, i64 193, !dbg !1184
  %149 = load i8, ptr %148, align 1, !dbg !1184, !tbaa !234
  %150 = zext i8 %149 to i16, !dbg !1184
  %151 = sub nsw i16 %147, %150, !dbg !1184
  %152 = getelementptr inbounds i16, ptr %0, i64 18, !dbg !1184
  store i16 %151, ptr %152, align 2, !dbg !1184, !tbaa !258
  call void @llvm.dbg.value(metadata i32 113, metadata !1011, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata i32 225, metadata !1013, metadata !DIExpression()), !dbg !1185
  %153 = getelementptr inbounds i8, ptr %1, i64 113, !dbg !1186
  %154 = load i8, ptr %153, align 1, !dbg !1186, !tbaa !234
  %155 = zext i8 %154 to i16, !dbg !1186
  %156 = getelementptr inbounds i8, ptr %2, i64 225, !dbg !1186
  %157 = load i8, ptr %156, align 1, !dbg !1186, !tbaa !234
  %158 = zext i8 %157 to i16, !dbg !1186
  %159 = sub nsw i16 %155, %158, !dbg !1186
  %160 = getelementptr inbounds i16, ptr %0, i64 19, !dbg !1186
  store i16 %159, ptr %160, align 2, !dbg !1186, !tbaa !258
  call void @llvm.dbg.value(metadata i32 50, metadata !1014, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i32 98, metadata !1016, metadata !DIExpression()), !dbg !1187
  %161 = getelementptr inbounds i8, ptr %1, i64 50, !dbg !1188
  %162 = load i8, ptr %161, align 1, !dbg !1188, !tbaa !234
  %163 = zext i8 %162 to i16, !dbg !1188
  %164 = getelementptr inbounds i8, ptr %2, i64 98, !dbg !1188
  %165 = load i8, ptr %164, align 1, !dbg !1188, !tbaa !234
  %166 = zext i8 %165 to i16, !dbg !1188
  %167 = sub nsw i16 %163, %166, !dbg !1188
  %168 = getelementptr inbounds i16, ptr %0, i64 20, !dbg !1188
  store i16 %167, ptr %168, align 2, !dbg !1188, !tbaa !258
  call void @llvm.dbg.value(metadata i32 19, metadata !1017, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i32 35, metadata !1019, metadata !DIExpression()), !dbg !1189
  %169 = getelementptr inbounds i8, ptr %1, i64 19, !dbg !1190
  %170 = load i8, ptr %169, align 1, !dbg !1190, !tbaa !234
  %171 = zext i8 %170 to i16, !dbg !1190
  %172 = getelementptr inbounds i8, ptr %2, i64 35, !dbg !1190
  %173 = load i8, ptr %172, align 1, !dbg !1190, !tbaa !234
  %174 = zext i8 %173 to i16, !dbg !1190
  %175 = sub nsw i16 %171, %174, !dbg !1190
  %176 = getelementptr inbounds i16, ptr %0, i64 21, !dbg !1190
  store i16 %175, ptr %176, align 2, !dbg !1190, !tbaa !258
  call void @llvm.dbg.value(metadata i32 4, metadata !1020, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 4, metadata !1022, metadata !DIExpression()), !dbg !1191
  %177 = getelementptr inbounds i8, ptr %1, i64 4, !dbg !1192
  %178 = load i8, ptr %177, align 1, !dbg !1192, !tbaa !234
  %179 = zext i8 %178 to i16, !dbg !1192
  %180 = getelementptr inbounds i8, ptr %2, i64 4, !dbg !1192
  %181 = load i8, ptr %180, align 1, !dbg !1192, !tbaa !234
  %182 = zext i8 %181 to i16, !dbg !1192
  %183 = sub nsw i16 %179, %182, !dbg !1192
  %184 = getelementptr inbounds i16, ptr %0, i64 22, !dbg !1192
  store i16 %183, ptr %184, align 2, !dbg !1192, !tbaa !258
  call void @llvm.dbg.value(metadata i32 35, metadata !1023, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i32 67, metadata !1025, metadata !DIExpression()), !dbg !1193
  %185 = getelementptr inbounds i8, ptr %1, i64 35, !dbg !1194
  %186 = load i8, ptr %185, align 1, !dbg !1194, !tbaa !234
  %187 = zext i8 %186 to i16, !dbg !1194
  %188 = getelementptr inbounds i8, ptr %2, i64 67, !dbg !1194
  %189 = load i8, ptr %188, align 1, !dbg !1194, !tbaa !234
  %190 = zext i8 %189 to i16, !dbg !1194
  %191 = sub nsw i16 %187, %190, !dbg !1194
  %192 = getelementptr inbounds i16, ptr %0, i64 23, !dbg !1194
  store i16 %191, ptr %192, align 2, !dbg !1194, !tbaa !258
  call void @llvm.dbg.value(metadata i32 66, metadata !1026, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i32 130, metadata !1028, metadata !DIExpression()), !dbg !1195
  %193 = getelementptr inbounds i8, ptr %1, i64 66, !dbg !1196
  %194 = load i8, ptr %193, align 1, !dbg !1196, !tbaa !234
  %195 = zext i8 %194 to i16, !dbg !1196
  %196 = getelementptr inbounds i8, ptr %2, i64 130, !dbg !1196
  %197 = load i8, ptr %196, align 1, !dbg !1196, !tbaa !234
  %198 = zext i8 %197 to i16, !dbg !1196
  %199 = sub nsw i16 %195, %198, !dbg !1196
  %200 = getelementptr inbounds i16, ptr %0, i64 24, !dbg !1196
  store i16 %199, ptr %200, align 2, !dbg !1196, !tbaa !258
  call void @llvm.dbg.value(metadata i32 82, metadata !1029, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 162, metadata !1031, metadata !DIExpression()), !dbg !1197
  %201 = getelementptr inbounds i8, ptr %1, i64 82, !dbg !1198
  %202 = load i8, ptr %201, align 1, !dbg !1198, !tbaa !234
  %203 = zext i8 %202 to i16, !dbg !1198
  %204 = getelementptr inbounds i8, ptr %2, i64 162, !dbg !1198
  %205 = load i8, ptr %204, align 1, !dbg !1198, !tbaa !234
  %206 = zext i8 %205 to i16, !dbg !1198
  %207 = sub nsw i16 %203, %206, !dbg !1198
  %208 = getelementptr inbounds i16, ptr %0, i64 25, !dbg !1198
  store i16 %207, ptr %208, align 2, !dbg !1198, !tbaa !258
  call void @llvm.dbg.value(metadata i32 98, metadata !1032, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i32 194, metadata !1034, metadata !DIExpression()), !dbg !1199
  %209 = getelementptr inbounds i8, ptr %1, i64 98, !dbg !1200
  %210 = load i8, ptr %209, align 1, !dbg !1200, !tbaa !234
  %211 = zext i8 %210 to i16, !dbg !1200
  %212 = getelementptr inbounds i8, ptr %2, i64 194, !dbg !1200
  %213 = load i8, ptr %212, align 1, !dbg !1200, !tbaa !234
  %214 = zext i8 %213 to i16, !dbg !1200
  %215 = sub nsw i16 %211, %214, !dbg !1200
  %216 = getelementptr inbounds i16, ptr %0, i64 26, !dbg !1200
  store i16 %215, ptr %216, align 2, !dbg !1200, !tbaa !258
  call void @llvm.dbg.value(metadata i32 114, metadata !1035, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i32 226, metadata !1037, metadata !DIExpression()), !dbg !1201
  %217 = getelementptr inbounds i8, ptr %1, i64 114, !dbg !1202
  %218 = load i8, ptr %217, align 1, !dbg !1202, !tbaa !234
  %219 = zext i8 %218 to i16, !dbg !1202
  %220 = getelementptr inbounds i8, ptr %2, i64 226, !dbg !1202
  %221 = load i8, ptr %220, align 1, !dbg !1202, !tbaa !234
  %222 = zext i8 %221 to i16, !dbg !1202
  %223 = sub nsw i16 %219, %222, !dbg !1202
  %224 = getelementptr inbounds i16, ptr %0, i64 27, !dbg !1202
  store i16 %223, ptr %224, align 2, !dbg !1202, !tbaa !258
  call void @llvm.dbg.value(metadata i32 51, metadata !1038, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata i32 99, metadata !1040, metadata !DIExpression()), !dbg !1203
  %225 = getelementptr inbounds i8, ptr %1, i64 51, !dbg !1204
  %226 = load i8, ptr %225, align 1, !dbg !1204, !tbaa !234
  %227 = zext i8 %226 to i16, !dbg !1204
  %228 = getelementptr inbounds i8, ptr %2, i64 99, !dbg !1204
  %229 = load i8, ptr %228, align 1, !dbg !1204, !tbaa !234
  %230 = zext i8 %229 to i16, !dbg !1204
  %231 = sub nsw i16 %227, %230, !dbg !1204
  %232 = getelementptr inbounds i16, ptr %0, i64 28, !dbg !1204
  store i16 %231, ptr %232, align 2, !dbg !1204, !tbaa !258
  call void @llvm.dbg.value(metadata i32 20, metadata !1041, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 36, metadata !1043, metadata !DIExpression()), !dbg !1205
  %233 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !1206
  %234 = load i8, ptr %233, align 1, !dbg !1206, !tbaa !234
  %235 = zext i8 %234 to i16, !dbg !1206
  %236 = getelementptr inbounds i8, ptr %2, i64 36, !dbg !1206
  %237 = load i8, ptr %236, align 1, !dbg !1206, !tbaa !234
  %238 = zext i8 %237 to i16, !dbg !1206
  %239 = sub nsw i16 %235, %238, !dbg !1206
  %240 = getelementptr inbounds i16, ptr %0, i64 29, !dbg !1206
  store i16 %239, ptr %240, align 2, !dbg !1206, !tbaa !258
  call void @llvm.dbg.value(metadata i32 5, metadata !1044, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i32 5, metadata !1046, metadata !DIExpression()), !dbg !1207
  %241 = getelementptr inbounds i8, ptr %1, i64 5, !dbg !1208
  %242 = load i8, ptr %241, align 1, !dbg !1208, !tbaa !234
  %243 = zext i8 %242 to i16, !dbg !1208
  %244 = getelementptr inbounds i8, ptr %2, i64 5, !dbg !1208
  %245 = load i8, ptr %244, align 1, !dbg !1208, !tbaa !234
  %246 = zext i8 %245 to i16, !dbg !1208
  %247 = sub nsw i16 %243, %246, !dbg !1208
  %248 = getelementptr inbounds i16, ptr %0, i64 30, !dbg !1208
  store i16 %247, ptr %248, align 2, !dbg !1208, !tbaa !258
  call void @llvm.dbg.value(metadata i32 36, metadata !1047, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 68, metadata !1049, metadata !DIExpression()), !dbg !1209
  %249 = getelementptr inbounds i8, ptr %1, i64 36, !dbg !1210
  %250 = load i8, ptr %249, align 1, !dbg !1210, !tbaa !234
  %251 = zext i8 %250 to i16, !dbg !1210
  %252 = getelementptr inbounds i8, ptr %2, i64 68, !dbg !1210
  %253 = load i8, ptr %252, align 1, !dbg !1210, !tbaa !234
  %254 = zext i8 %253 to i16, !dbg !1210
  %255 = sub nsw i16 %251, %254, !dbg !1210
  %256 = getelementptr inbounds i16, ptr %0, i64 31, !dbg !1210
  store i16 %255, ptr %256, align 2, !dbg !1210, !tbaa !258
  call void @llvm.dbg.value(metadata i32 67, metadata !1050, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 131, metadata !1052, metadata !DIExpression()), !dbg !1211
  %257 = getelementptr inbounds i8, ptr %1, i64 67, !dbg !1212
  %258 = load i8, ptr %257, align 1, !dbg !1212, !tbaa !234
  %259 = zext i8 %258 to i16, !dbg !1212
  %260 = getelementptr inbounds i8, ptr %2, i64 131, !dbg !1212
  %261 = load i8, ptr %260, align 1, !dbg !1212, !tbaa !234
  %262 = zext i8 %261 to i16, !dbg !1212
  %263 = sub nsw i16 %259, %262, !dbg !1212
  %264 = getelementptr inbounds i16, ptr %0, i64 32, !dbg !1212
  store i16 %263, ptr %264, align 2, !dbg !1212, !tbaa !258
  call void @llvm.dbg.value(metadata i32 83, metadata !1053, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i32 163, metadata !1055, metadata !DIExpression()), !dbg !1213
  %265 = getelementptr inbounds i8, ptr %1, i64 83, !dbg !1214
  %266 = load i8, ptr %265, align 1, !dbg !1214, !tbaa !234
  %267 = zext i8 %266 to i16, !dbg !1214
  %268 = getelementptr inbounds i8, ptr %2, i64 163, !dbg !1214
  %269 = load i8, ptr %268, align 1, !dbg !1214, !tbaa !234
  %270 = zext i8 %269 to i16, !dbg !1214
  %271 = sub nsw i16 %267, %270, !dbg !1214
  %272 = getelementptr inbounds i16, ptr %0, i64 33, !dbg !1214
  store i16 %271, ptr %272, align 2, !dbg !1214, !tbaa !258
  call void @llvm.dbg.value(metadata i32 99, metadata !1056, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i32 195, metadata !1058, metadata !DIExpression()), !dbg !1215
  %273 = getelementptr inbounds i8, ptr %1, i64 99, !dbg !1216
  %274 = load i8, ptr %273, align 1, !dbg !1216, !tbaa !234
  %275 = zext i8 %274 to i16, !dbg !1216
  %276 = getelementptr inbounds i8, ptr %2, i64 195, !dbg !1216
  %277 = load i8, ptr %276, align 1, !dbg !1216, !tbaa !234
  %278 = zext i8 %277 to i16, !dbg !1216
  %279 = sub nsw i16 %275, %278, !dbg !1216
  %280 = getelementptr inbounds i16, ptr %0, i64 34, !dbg !1216
  store i16 %279, ptr %280, align 2, !dbg !1216, !tbaa !258
  call void @llvm.dbg.value(metadata i32 115, metadata !1059, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i32 227, metadata !1061, metadata !DIExpression()), !dbg !1217
  %281 = getelementptr inbounds i8, ptr %1, i64 115, !dbg !1218
  %282 = load i8, ptr %281, align 1, !dbg !1218, !tbaa !234
  %283 = zext i8 %282 to i16, !dbg !1218
  %284 = getelementptr inbounds i8, ptr %2, i64 227, !dbg !1218
  %285 = load i8, ptr %284, align 1, !dbg !1218, !tbaa !234
  %286 = zext i8 %285 to i16, !dbg !1218
  %287 = sub nsw i16 %283, %286, !dbg !1218
  %288 = getelementptr inbounds i16, ptr %0, i64 35, !dbg !1218
  store i16 %287, ptr %288, align 2, !dbg !1218, !tbaa !258
  call void @llvm.dbg.value(metadata i32 52, metadata !1062, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i32 100, metadata !1064, metadata !DIExpression()), !dbg !1219
  %289 = getelementptr inbounds i8, ptr %1, i64 52, !dbg !1220
  %290 = load i8, ptr %289, align 1, !dbg !1220, !tbaa !234
  %291 = zext i8 %290 to i16, !dbg !1220
  %292 = getelementptr inbounds i8, ptr %2, i64 100, !dbg !1220
  %293 = load i8, ptr %292, align 1, !dbg !1220, !tbaa !234
  %294 = zext i8 %293 to i16, !dbg !1220
  %295 = sub nsw i16 %291, %294, !dbg !1220
  %296 = getelementptr inbounds i16, ptr %0, i64 36, !dbg !1220
  store i16 %295, ptr %296, align 2, !dbg !1220, !tbaa !258
  call void @llvm.dbg.value(metadata i32 21, metadata !1065, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 37, metadata !1067, metadata !DIExpression()), !dbg !1221
  %297 = getelementptr inbounds i8, ptr %1, i64 21, !dbg !1222
  %298 = load i8, ptr %297, align 1, !dbg !1222, !tbaa !234
  %299 = zext i8 %298 to i16, !dbg !1222
  %300 = getelementptr inbounds i8, ptr %2, i64 37, !dbg !1222
  %301 = load i8, ptr %300, align 1, !dbg !1222, !tbaa !234
  %302 = zext i8 %301 to i16, !dbg !1222
  %303 = sub nsw i16 %299, %302, !dbg !1222
  %304 = getelementptr inbounds i16, ptr %0, i64 37, !dbg !1222
  store i16 %303, ptr %304, align 2, !dbg !1222, !tbaa !258
  call void @llvm.dbg.value(metadata i32 6, metadata !1068, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i32 6, metadata !1070, metadata !DIExpression()), !dbg !1223
  %305 = getelementptr inbounds i8, ptr %1, i64 6, !dbg !1224
  %306 = load i8, ptr %305, align 1, !dbg !1224, !tbaa !234
  %307 = zext i8 %306 to i16, !dbg !1224
  %308 = getelementptr inbounds i8, ptr %2, i64 6, !dbg !1224
  %309 = load i8, ptr %308, align 1, !dbg !1224, !tbaa !234
  %310 = zext i8 %309 to i16, !dbg !1224
  %311 = sub nsw i16 %307, %310, !dbg !1224
  %312 = getelementptr inbounds i16, ptr %0, i64 38, !dbg !1224
  store i16 %311, ptr %312, align 2, !dbg !1224, !tbaa !258
  call void @llvm.dbg.value(metadata i32 37, metadata !1071, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i32 69, metadata !1073, metadata !DIExpression()), !dbg !1225
  %313 = getelementptr inbounds i8, ptr %1, i64 37, !dbg !1226
  %314 = load i8, ptr %313, align 1, !dbg !1226, !tbaa !234
  %315 = zext i8 %314 to i16, !dbg !1226
  %316 = getelementptr inbounds i8, ptr %2, i64 69, !dbg !1226
  %317 = load i8, ptr %316, align 1, !dbg !1226, !tbaa !234
  %318 = zext i8 %317 to i16, !dbg !1226
  %319 = sub nsw i16 %315, %318, !dbg !1226
  %320 = getelementptr inbounds i16, ptr %0, i64 39, !dbg !1226
  store i16 %319, ptr %320, align 2, !dbg !1226, !tbaa !258
  call void @llvm.dbg.value(metadata i32 68, metadata !1074, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i32 132, metadata !1076, metadata !DIExpression()), !dbg !1227
  %321 = getelementptr inbounds i8, ptr %1, i64 68, !dbg !1228
  %322 = load i8, ptr %321, align 1, !dbg !1228, !tbaa !234
  %323 = zext i8 %322 to i16, !dbg !1228
  %324 = getelementptr inbounds i8, ptr %2, i64 132, !dbg !1228
  %325 = load i8, ptr %324, align 1, !dbg !1228, !tbaa !234
  %326 = zext i8 %325 to i16, !dbg !1228
  %327 = sub nsw i16 %323, %326, !dbg !1228
  %328 = getelementptr inbounds i16, ptr %0, i64 40, !dbg !1228
  store i16 %327, ptr %328, align 2, !dbg !1228, !tbaa !258
  call void @llvm.dbg.value(metadata i32 84, metadata !1077, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 164, metadata !1079, metadata !DIExpression()), !dbg !1229
  %329 = getelementptr inbounds i8, ptr %1, i64 84, !dbg !1230
  %330 = load i8, ptr %329, align 1, !dbg !1230, !tbaa !234
  %331 = zext i8 %330 to i16, !dbg !1230
  %332 = getelementptr inbounds i8, ptr %2, i64 164, !dbg !1230
  %333 = load i8, ptr %332, align 1, !dbg !1230, !tbaa !234
  %334 = zext i8 %333 to i16, !dbg !1230
  %335 = sub nsw i16 %331, %334, !dbg !1230
  %336 = getelementptr inbounds i16, ptr %0, i64 41, !dbg !1230
  store i16 %335, ptr %336, align 2, !dbg !1230, !tbaa !258
  call void @llvm.dbg.value(metadata i32 100, metadata !1080, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 196, metadata !1082, metadata !DIExpression()), !dbg !1231
  %337 = getelementptr inbounds i8, ptr %1, i64 100, !dbg !1232
  %338 = load i8, ptr %337, align 1, !dbg !1232, !tbaa !234
  %339 = zext i8 %338 to i16, !dbg !1232
  %340 = getelementptr inbounds i8, ptr %2, i64 196, !dbg !1232
  %341 = load i8, ptr %340, align 1, !dbg !1232, !tbaa !234
  %342 = zext i8 %341 to i16, !dbg !1232
  %343 = sub nsw i16 %339, %342, !dbg !1232
  %344 = getelementptr inbounds i16, ptr %0, i64 42, !dbg !1232
  store i16 %343, ptr %344, align 2, !dbg !1232, !tbaa !258
  call void @llvm.dbg.value(metadata i32 116, metadata !1083, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i32 228, metadata !1085, metadata !DIExpression()), !dbg !1233
  %345 = getelementptr inbounds i8, ptr %1, i64 116, !dbg !1234
  %346 = load i8, ptr %345, align 1, !dbg !1234, !tbaa !234
  %347 = zext i8 %346 to i16, !dbg !1234
  %348 = getelementptr inbounds i8, ptr %2, i64 228, !dbg !1234
  %349 = load i8, ptr %348, align 1, !dbg !1234, !tbaa !234
  %350 = zext i8 %349 to i16, !dbg !1234
  %351 = sub nsw i16 %347, %350, !dbg !1234
  %352 = getelementptr inbounds i16, ptr %0, i64 43, !dbg !1234
  store i16 %351, ptr %352, align 2, !dbg !1234, !tbaa !258
  call void @llvm.dbg.value(metadata i32 53, metadata !1086, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i32 101, metadata !1088, metadata !DIExpression()), !dbg !1235
  %353 = getelementptr inbounds i8, ptr %1, i64 53, !dbg !1236
  %354 = load i8, ptr %353, align 1, !dbg !1236, !tbaa !234
  %355 = zext i8 %354 to i16, !dbg !1236
  %356 = getelementptr inbounds i8, ptr %2, i64 101, !dbg !1236
  %357 = load i8, ptr %356, align 1, !dbg !1236, !tbaa !234
  %358 = zext i8 %357 to i16, !dbg !1236
  %359 = sub nsw i16 %355, %358, !dbg !1236
  %360 = getelementptr inbounds i16, ptr %0, i64 44, !dbg !1236
  store i16 %359, ptr %360, align 2, !dbg !1236, !tbaa !258
  call void @llvm.dbg.value(metadata i32 22, metadata !1089, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i32 38, metadata !1091, metadata !DIExpression()), !dbg !1237
  %361 = getelementptr inbounds i8, ptr %1, i64 22, !dbg !1238
  %362 = load i8, ptr %361, align 1, !dbg !1238, !tbaa !234
  %363 = zext i8 %362 to i16, !dbg !1238
  %364 = getelementptr inbounds i8, ptr %2, i64 38, !dbg !1238
  %365 = load i8, ptr %364, align 1, !dbg !1238, !tbaa !234
  %366 = zext i8 %365 to i16, !dbg !1238
  %367 = sub nsw i16 %363, %366, !dbg !1238
  %368 = getelementptr inbounds i16, ptr %0, i64 45, !dbg !1238
  store i16 %367, ptr %368, align 2, !dbg !1238, !tbaa !258
  call void @llvm.dbg.value(metadata i32 38, metadata !1092, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i32 70, metadata !1094, metadata !DIExpression()), !dbg !1239
  %369 = getelementptr inbounds i8, ptr %1, i64 38, !dbg !1240
  %370 = load i8, ptr %369, align 1, !dbg !1240, !tbaa !234
  %371 = zext i8 %370 to i16, !dbg !1240
  %372 = getelementptr inbounds i8, ptr %2, i64 70, !dbg !1240
  %373 = load i8, ptr %372, align 1, !dbg !1240, !tbaa !234
  %374 = zext i8 %373 to i16, !dbg !1240
  %375 = sub nsw i16 %371, %374, !dbg !1240
  %376 = getelementptr inbounds i16, ptr %0, i64 46, !dbg !1240
  store i16 %375, ptr %376, align 2, !dbg !1240, !tbaa !258
  call void @llvm.dbg.value(metadata i32 69, metadata !1095, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 133, metadata !1097, metadata !DIExpression()), !dbg !1241
  %377 = getelementptr inbounds i8, ptr %1, i64 69, !dbg !1242
  %378 = load i8, ptr %377, align 1, !dbg !1242, !tbaa !234
  %379 = zext i8 %378 to i16, !dbg !1242
  %380 = getelementptr inbounds i8, ptr %2, i64 133, !dbg !1242
  %381 = load i8, ptr %380, align 1, !dbg !1242, !tbaa !234
  %382 = zext i8 %381 to i16, !dbg !1242
  %383 = sub nsw i16 %379, %382, !dbg !1242
  %384 = getelementptr inbounds i16, ptr %0, i64 47, !dbg !1242
  store i16 %383, ptr %384, align 2, !dbg !1242, !tbaa !258
  call void @llvm.dbg.value(metadata i32 85, metadata !1098, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i32 165, metadata !1100, metadata !DIExpression()), !dbg !1243
  %385 = getelementptr inbounds i8, ptr %1, i64 85, !dbg !1244
  %386 = load i8, ptr %385, align 1, !dbg !1244, !tbaa !234
  %387 = zext i8 %386 to i16, !dbg !1244
  %388 = getelementptr inbounds i8, ptr %2, i64 165, !dbg !1244
  %389 = load i8, ptr %388, align 1, !dbg !1244, !tbaa !234
  %390 = zext i8 %389 to i16, !dbg !1244
  %391 = sub nsw i16 %387, %390, !dbg !1244
  %392 = getelementptr inbounds i16, ptr %0, i64 48, !dbg !1244
  store i16 %391, ptr %392, align 2, !dbg !1244, !tbaa !258
  call void @llvm.dbg.value(metadata i32 101, metadata !1101, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 197, metadata !1103, metadata !DIExpression()), !dbg !1245
  %393 = getelementptr inbounds i8, ptr %1, i64 101, !dbg !1246
  %394 = load i8, ptr %393, align 1, !dbg !1246, !tbaa !234
  %395 = zext i8 %394 to i16, !dbg !1246
  %396 = getelementptr inbounds i8, ptr %2, i64 197, !dbg !1246
  %397 = load i8, ptr %396, align 1, !dbg !1246, !tbaa !234
  %398 = zext i8 %397 to i16, !dbg !1246
  %399 = sub nsw i16 %395, %398, !dbg !1246
  %400 = getelementptr inbounds i16, ptr %0, i64 49, !dbg !1246
  store i16 %399, ptr %400, align 2, !dbg !1246, !tbaa !258
  call void @llvm.dbg.value(metadata i32 117, metadata !1104, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 229, metadata !1106, metadata !DIExpression()), !dbg !1247
  %401 = getelementptr inbounds i8, ptr %1, i64 117, !dbg !1248
  %402 = load i8, ptr %401, align 1, !dbg !1248, !tbaa !234
  %403 = zext i8 %402 to i16, !dbg !1248
  %404 = getelementptr inbounds i8, ptr %2, i64 229, !dbg !1248
  %405 = load i8, ptr %404, align 1, !dbg !1248, !tbaa !234
  %406 = zext i8 %405 to i16, !dbg !1248
  %407 = sub nsw i16 %403, %406, !dbg !1248
  %408 = getelementptr inbounds i16, ptr %0, i64 50, !dbg !1248
  store i16 %407, ptr %408, align 2, !dbg !1248, !tbaa !258
  call void @llvm.dbg.value(metadata i32 54, metadata !1107, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i32 102, metadata !1109, metadata !DIExpression()), !dbg !1249
  %409 = getelementptr inbounds i8, ptr %1, i64 54, !dbg !1250
  %410 = load i8, ptr %409, align 1, !dbg !1250, !tbaa !234
  %411 = zext i8 %410 to i16, !dbg !1250
  %412 = getelementptr inbounds i8, ptr %2, i64 102, !dbg !1250
  %413 = load i8, ptr %412, align 1, !dbg !1250, !tbaa !234
  %414 = zext i8 %413 to i16, !dbg !1250
  %415 = sub nsw i16 %411, %414, !dbg !1250
  %416 = getelementptr inbounds i16, ptr %0, i64 51, !dbg !1250
  store i16 %415, ptr %416, align 2, !dbg !1250, !tbaa !258
  call void @llvm.dbg.value(metadata i32 7, metadata !1110, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i32 7, metadata !1112, metadata !DIExpression()), !dbg !1251
  %417 = getelementptr inbounds i8, ptr %1, i64 7, !dbg !1252
  %418 = load i8, ptr %417, align 1, !dbg !1252, !tbaa !234
  %419 = zext i8 %418 to i16, !dbg !1252
  %420 = getelementptr inbounds i8, ptr %2, i64 7, !dbg !1252
  %421 = load i8, ptr %420, align 1, !dbg !1252, !tbaa !234
  %422 = zext i8 %421 to i16, !dbg !1252
  %423 = sub nsw i16 %419, %422, !dbg !1252
  %424 = getelementptr inbounds i16, ptr %0, i64 52, !dbg !1252
  store i16 %423, ptr %424, align 2, !dbg !1252, !tbaa !258
  call void @llvm.dbg.value(metadata i32 23, metadata !1113, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i32 39, metadata !1115, metadata !DIExpression()), !dbg !1253
  %425 = getelementptr inbounds i8, ptr %1, i64 23, !dbg !1254
  %426 = load i8, ptr %425, align 1, !dbg !1254, !tbaa !234
  %427 = zext i8 %426 to i16, !dbg !1254
  %428 = getelementptr inbounds i8, ptr %2, i64 39, !dbg !1254
  %429 = load i8, ptr %428, align 1, !dbg !1254, !tbaa !234
  %430 = zext i8 %429 to i16, !dbg !1254
  %431 = sub nsw i16 %427, %430, !dbg !1254
  %432 = getelementptr inbounds i16, ptr %0, i64 53, !dbg !1254
  store i16 %431, ptr %432, align 2, !dbg !1254, !tbaa !258
  call void @llvm.dbg.value(metadata i32 70, metadata !1116, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i32 134, metadata !1118, metadata !DIExpression()), !dbg !1255
  %433 = getelementptr inbounds i8, ptr %1, i64 70, !dbg !1256
  %434 = load i8, ptr %433, align 1, !dbg !1256, !tbaa !234
  %435 = zext i8 %434 to i16, !dbg !1256
  %436 = getelementptr inbounds i8, ptr %2, i64 134, !dbg !1256
  %437 = load i8, ptr %436, align 1, !dbg !1256, !tbaa !234
  %438 = zext i8 %437 to i16, !dbg !1256
  %439 = sub nsw i16 %435, %438, !dbg !1256
  %440 = getelementptr inbounds i16, ptr %0, i64 54, !dbg !1256
  store i16 %439, ptr %440, align 2, !dbg !1256, !tbaa !258
  call void @llvm.dbg.value(metadata i32 86, metadata !1119, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i32 166, metadata !1121, metadata !DIExpression()), !dbg !1257
  %441 = getelementptr inbounds i8, ptr %1, i64 86, !dbg !1258
  %442 = load i8, ptr %441, align 1, !dbg !1258, !tbaa !234
  %443 = zext i8 %442 to i16, !dbg !1258
  %444 = getelementptr inbounds i8, ptr %2, i64 166, !dbg !1258
  %445 = load i8, ptr %444, align 1, !dbg !1258, !tbaa !234
  %446 = zext i8 %445 to i16, !dbg !1258
  %447 = sub nsw i16 %443, %446, !dbg !1258
  %448 = getelementptr inbounds i16, ptr %0, i64 55, !dbg !1258
  store i16 %447, ptr %448, align 2, !dbg !1258, !tbaa !258
  call void @llvm.dbg.value(metadata i32 102, metadata !1122, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i32 198, metadata !1124, metadata !DIExpression()), !dbg !1259
  %449 = getelementptr inbounds i8, ptr %1, i64 102, !dbg !1260
  %450 = load i8, ptr %449, align 1, !dbg !1260, !tbaa !234
  %451 = zext i8 %450 to i16, !dbg !1260
  %452 = getelementptr inbounds i8, ptr %2, i64 198, !dbg !1260
  %453 = load i8, ptr %452, align 1, !dbg !1260, !tbaa !234
  %454 = zext i8 %453 to i16, !dbg !1260
  %455 = sub nsw i16 %451, %454, !dbg !1260
  %456 = getelementptr inbounds i16, ptr %0, i64 56, !dbg !1260
  store i16 %455, ptr %456, align 2, !dbg !1260, !tbaa !258
  call void @llvm.dbg.value(metadata i32 118, metadata !1125, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 230, metadata !1127, metadata !DIExpression()), !dbg !1261
  %457 = getelementptr inbounds i8, ptr %1, i64 118, !dbg !1262
  %458 = load i8, ptr %457, align 1, !dbg !1262, !tbaa !234
  %459 = zext i8 %458 to i16, !dbg !1262
  %460 = getelementptr inbounds i8, ptr %2, i64 230, !dbg !1262
  %461 = load i8, ptr %460, align 1, !dbg !1262, !tbaa !234
  %462 = zext i8 %461 to i16, !dbg !1262
  %463 = sub nsw i16 %459, %462, !dbg !1262
  %464 = getelementptr inbounds i16, ptr %0, i64 57, !dbg !1262
  store i16 %463, ptr %464, align 2, !dbg !1262, !tbaa !258
  call void @llvm.dbg.value(metadata i32 39, metadata !1128, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i32 71, metadata !1130, metadata !DIExpression()), !dbg !1263
  %465 = getelementptr inbounds i8, ptr %1, i64 39, !dbg !1264
  %466 = load i8, ptr %465, align 1, !dbg !1264, !tbaa !234
  %467 = zext i8 %466 to i16, !dbg !1264
  %468 = getelementptr inbounds i8, ptr %2, i64 71, !dbg !1264
  %469 = load i8, ptr %468, align 1, !dbg !1264, !tbaa !234
  %470 = zext i8 %469 to i16, !dbg !1264
  %471 = sub nsw i16 %467, %470, !dbg !1264
  %472 = getelementptr inbounds i16, ptr %0, i64 58, !dbg !1264
  store i16 %471, ptr %472, align 2, !dbg !1264, !tbaa !258
  call void @llvm.dbg.value(metadata i32 55, metadata !1131, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i32 103, metadata !1133, metadata !DIExpression()), !dbg !1265
  %473 = getelementptr inbounds i8, ptr %1, i64 55, !dbg !1266
  %474 = load i8, ptr %473, align 1, !dbg !1266, !tbaa !234
  %475 = zext i8 %474 to i16, !dbg !1266
  %476 = getelementptr inbounds i8, ptr %2, i64 103, !dbg !1266
  %477 = load i8, ptr %476, align 1, !dbg !1266, !tbaa !234
  %478 = zext i8 %477 to i16, !dbg !1266
  %479 = sub nsw i16 %475, %478, !dbg !1266
  %480 = getelementptr inbounds i16, ptr %0, i64 59, !dbg !1266
  store i16 %479, ptr %480, align 2, !dbg !1266, !tbaa !258
  call void @llvm.dbg.value(metadata i32 71, metadata !1134, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i32 135, metadata !1136, metadata !DIExpression()), !dbg !1267
  %481 = getelementptr inbounds i8, ptr %1, i64 71, !dbg !1268
  %482 = load i8, ptr %481, align 1, !dbg !1268, !tbaa !234
  %483 = zext i8 %482 to i16, !dbg !1268
  %484 = getelementptr inbounds i8, ptr %2, i64 135, !dbg !1268
  %485 = load i8, ptr %484, align 1, !dbg !1268, !tbaa !234
  %486 = zext i8 %485 to i16, !dbg !1268
  %487 = sub nsw i16 %483, %486, !dbg !1268
  %488 = getelementptr inbounds i16, ptr %0, i64 60, !dbg !1268
  store i16 %487, ptr %488, align 2, !dbg !1268, !tbaa !258
  call void @llvm.dbg.value(metadata i32 87, metadata !1137, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 167, metadata !1139, metadata !DIExpression()), !dbg !1269
  %489 = getelementptr inbounds i8, ptr %1, i64 87, !dbg !1270
  %490 = load i8, ptr %489, align 1, !dbg !1270, !tbaa !234
  %491 = zext i8 %490 to i16, !dbg !1270
  %492 = getelementptr inbounds i8, ptr %2, i64 167, !dbg !1270
  %493 = load i8, ptr %492, align 1, !dbg !1270, !tbaa !234
  %494 = zext i8 %493 to i16, !dbg !1270
  %495 = sub nsw i16 %491, %494, !dbg !1270
  %496 = getelementptr inbounds i16, ptr %0, i64 61, !dbg !1270
  store i16 %495, ptr %496, align 2, !dbg !1270, !tbaa !258
  call void @llvm.dbg.value(metadata i32 103, metadata !1140, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i32 199, metadata !1142, metadata !DIExpression()), !dbg !1271
  %497 = getelementptr inbounds i8, ptr %1, i64 103, !dbg !1272
  %498 = load i8, ptr %497, align 1, !dbg !1272, !tbaa !234
  %499 = zext i8 %498 to i16, !dbg !1272
  %500 = getelementptr inbounds i8, ptr %2, i64 199, !dbg !1272
  %501 = load i8, ptr %500, align 1, !dbg !1272, !tbaa !234
  %502 = zext i8 %501 to i16, !dbg !1272
  %503 = sub nsw i16 %499, %502, !dbg !1272
  %504 = getelementptr inbounds i16, ptr %0, i64 62, !dbg !1272
  store i16 %503, ptr %504, align 2, !dbg !1272, !tbaa !258
  call void @llvm.dbg.value(metadata i32 119, metadata !1143, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i32 231, metadata !1145, metadata !DIExpression()), !dbg !1273
  %505 = getelementptr inbounds i8, ptr %1, i64 119, !dbg !1274
  %506 = load i8, ptr %505, align 1, !dbg !1274, !tbaa !234
  %507 = zext i8 %506 to i16, !dbg !1274
  %508 = getelementptr inbounds i8, ptr %2, i64 231, !dbg !1274
  %509 = load i8, ptr %508, align 1, !dbg !1274, !tbaa !234
  %510 = zext i8 %509 to i16, !dbg !1274
  %511 = sub nsw i16 %507, %510, !dbg !1274
  %512 = getelementptr inbounds i16, ptr %0, i64 63, !dbg !1274
  store i16 %511, ptr %512, align 2, !dbg !1274, !tbaa !258
  %513 = load i64, ptr %1, align 8, !dbg !1275, !tbaa !940
  store i64 %513, ptr %2, align 8, !dbg !1275, !tbaa !940
  %514 = load i64, ptr %9, align 8, !dbg !1275, !tbaa !940
  store i64 %514, ptr %12, align 8, !dbg !1275, !tbaa !940
  %515 = load i64, ptr %17, align 8, !dbg !1275, !tbaa !940
  store i64 %515, ptr %20, align 8, !dbg !1275, !tbaa !940
  %516 = load i64, ptr %41, align 8, !dbg !1275, !tbaa !940
  store i64 %516, ptr %44, align 8, !dbg !1275, !tbaa !940
  %517 = load i64, ptr %49, align 8, !dbg !1275, !tbaa !940
  store i64 %517, ptr %52, align 8, !dbg !1275, !tbaa !940
  %518 = load i64, ptr %81, align 8, !dbg !1275, !tbaa !940
  store i64 %518, ptr %84, align 8, !dbg !1275, !tbaa !940
  %519 = load i64, ptr %89, align 8, !dbg !1275, !tbaa !940
  store i64 %519, ptr %92, align 8, !dbg !1275, !tbaa !940
  %520 = load i64, ptr %97, align 8, !dbg !1275, !tbaa !940
  store i64 %520, ptr %100, align 8, !dbg !1275, !tbaa !940
  ret void, !dbg !1276
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_sub_4x4_field(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #9 !dbg !1277 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1279, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata ptr %1, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata ptr %2, metadata !1281, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i32 0, metadata !1282, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i32 0, metadata !1284, metadata !DIExpression()), !dbg !1331
  %4 = load i8, ptr %1, align 1, !dbg !1332, !tbaa !234
  %5 = zext i8 %4 to i16, !dbg !1332
  %6 = load i8, ptr %2, align 1, !dbg !1332, !tbaa !234
  %7 = zext i8 %6 to i16, !dbg !1332
  %8 = sub nsw i16 %5, %7, !dbg !1332
  store i16 %8, ptr %0, align 2, !dbg !1332, !tbaa !258
  call void @llvm.dbg.value(metadata i32 16, metadata !1285, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i32 32, metadata !1287, metadata !DIExpression()), !dbg !1333
  %9 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !1334
  %10 = load i8, ptr %9, align 1, !dbg !1334, !tbaa !234
  %11 = zext i8 %10 to i16, !dbg !1334
  %12 = getelementptr inbounds i8, ptr %2, i64 32, !dbg !1334
  %13 = load i8, ptr %12, align 1, !dbg !1334, !tbaa !234
  %14 = zext i8 %13 to i16, !dbg !1334
  %15 = sub nsw i16 %11, %14, !dbg !1334
  %16 = getelementptr inbounds i16, ptr %0, i64 1, !dbg !1334
  store i16 %15, ptr %16, align 2, !dbg !1334, !tbaa !258
  call void @llvm.dbg.value(metadata i32 1, metadata !1288, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i32 1, metadata !1290, metadata !DIExpression()), !dbg !1335
  %17 = getelementptr inbounds i8, ptr %1, i64 1, !dbg !1336
  %18 = load i8, ptr %17, align 1, !dbg !1336, !tbaa !234
  %19 = zext i8 %18 to i16, !dbg !1336
  %20 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1336
  %21 = load i8, ptr %20, align 1, !dbg !1336, !tbaa !234
  %22 = zext i8 %21 to i16, !dbg !1336
  %23 = sub nsw i16 %19, %22, !dbg !1336
  %24 = getelementptr inbounds i16, ptr %0, i64 2, !dbg !1336
  store i16 %23, ptr %24, align 2, !dbg !1336, !tbaa !258
  call void @llvm.dbg.value(metadata i32 32, metadata !1291, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i32 64, metadata !1293, metadata !DIExpression()), !dbg !1337
  %25 = getelementptr inbounds i8, ptr %1, i64 32, !dbg !1338
  %26 = load i8, ptr %25, align 1, !dbg !1338, !tbaa !234
  %27 = zext i8 %26 to i16, !dbg !1338
  %28 = getelementptr inbounds i8, ptr %2, i64 64, !dbg !1338
  %29 = load i8, ptr %28, align 1, !dbg !1338, !tbaa !234
  %30 = zext i8 %29 to i16, !dbg !1338
  %31 = sub nsw i16 %27, %30, !dbg !1338
  %32 = getelementptr inbounds i16, ptr %0, i64 3, !dbg !1338
  store i16 %31, ptr %32, align 2, !dbg !1338, !tbaa !258
  call void @llvm.dbg.value(metadata i32 48, metadata !1294, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i32 96, metadata !1296, metadata !DIExpression()), !dbg !1339
  %33 = getelementptr inbounds i8, ptr %1, i64 48, !dbg !1340
  %34 = load i8, ptr %33, align 1, !dbg !1340, !tbaa !234
  %35 = zext i8 %34 to i16, !dbg !1340
  %36 = getelementptr inbounds i8, ptr %2, i64 96, !dbg !1340
  %37 = load i8, ptr %36, align 1, !dbg !1340, !tbaa !234
  %38 = zext i8 %37 to i16, !dbg !1340
  %39 = sub nsw i16 %35, %38, !dbg !1340
  %40 = getelementptr inbounds i16, ptr %0, i64 4, !dbg !1340
  store i16 %39, ptr %40, align 2, !dbg !1340, !tbaa !258
  call void @llvm.dbg.value(metadata i32 17, metadata !1297, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 33, metadata !1299, metadata !DIExpression()), !dbg !1341
  %41 = getelementptr inbounds i8, ptr %1, i64 17, !dbg !1342
  %42 = load i8, ptr %41, align 1, !dbg !1342, !tbaa !234
  %43 = zext i8 %42 to i16, !dbg !1342
  %44 = getelementptr inbounds i8, ptr %2, i64 33, !dbg !1342
  %45 = load i8, ptr %44, align 1, !dbg !1342, !tbaa !234
  %46 = zext i8 %45 to i16, !dbg !1342
  %47 = sub nsw i16 %43, %46, !dbg !1342
  %48 = getelementptr inbounds i16, ptr %0, i64 5, !dbg !1342
  store i16 %47, ptr %48, align 2, !dbg !1342, !tbaa !258
  call void @llvm.dbg.value(metadata i32 33, metadata !1300, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata i32 65, metadata !1302, metadata !DIExpression()), !dbg !1343
  %49 = getelementptr inbounds i8, ptr %1, i64 33, !dbg !1344
  %50 = load i8, ptr %49, align 1, !dbg !1344, !tbaa !234
  %51 = zext i8 %50 to i16, !dbg !1344
  %52 = getelementptr inbounds i8, ptr %2, i64 65, !dbg !1344
  %53 = load i8, ptr %52, align 1, !dbg !1344, !tbaa !234
  %54 = zext i8 %53 to i16, !dbg !1344
  %55 = sub nsw i16 %51, %54, !dbg !1344
  %56 = getelementptr inbounds i16, ptr %0, i64 6, !dbg !1344
  store i16 %55, ptr %56, align 2, !dbg !1344, !tbaa !258
  call void @llvm.dbg.value(metadata i32 49, metadata !1303, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i32 97, metadata !1305, metadata !DIExpression()), !dbg !1345
  %57 = getelementptr inbounds i8, ptr %1, i64 49, !dbg !1346
  %58 = load i8, ptr %57, align 1, !dbg !1346, !tbaa !234
  %59 = zext i8 %58 to i16, !dbg !1346
  %60 = getelementptr inbounds i8, ptr %2, i64 97, !dbg !1346
  %61 = load i8, ptr %60, align 1, !dbg !1346, !tbaa !234
  %62 = zext i8 %61 to i16, !dbg !1346
  %63 = sub nsw i16 %59, %62, !dbg !1346
  %64 = getelementptr inbounds i16, ptr %0, i64 7, !dbg !1346
  store i16 %63, ptr %64, align 2, !dbg !1346, !tbaa !258
  call void @llvm.dbg.value(metadata i32 2, metadata !1306, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i32 2, metadata !1308, metadata !DIExpression()), !dbg !1347
  %65 = getelementptr inbounds i8, ptr %1, i64 2, !dbg !1348
  %66 = load i8, ptr %65, align 1, !dbg !1348, !tbaa !234
  %67 = zext i8 %66 to i16, !dbg !1348
  %68 = getelementptr inbounds i8, ptr %2, i64 2, !dbg !1348
  %69 = load i8, ptr %68, align 1, !dbg !1348, !tbaa !234
  %70 = zext i8 %69 to i16, !dbg !1348
  %71 = sub nsw i16 %67, %70, !dbg !1348
  %72 = getelementptr inbounds i16, ptr %0, i64 8, !dbg !1348
  store i16 %71, ptr %72, align 2, !dbg !1348, !tbaa !258
  call void @llvm.dbg.value(metadata i32 18, metadata !1309, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i32 34, metadata !1311, metadata !DIExpression()), !dbg !1349
  %73 = getelementptr inbounds i8, ptr %1, i64 18, !dbg !1350
  %74 = load i8, ptr %73, align 1, !dbg !1350, !tbaa !234
  %75 = zext i8 %74 to i16, !dbg !1350
  %76 = getelementptr inbounds i8, ptr %2, i64 34, !dbg !1350
  %77 = load i8, ptr %76, align 1, !dbg !1350, !tbaa !234
  %78 = zext i8 %77 to i16, !dbg !1350
  %79 = sub nsw i16 %75, %78, !dbg !1350
  %80 = getelementptr inbounds i16, ptr %0, i64 9, !dbg !1350
  store i16 %79, ptr %80, align 2, !dbg !1350, !tbaa !258
  call void @llvm.dbg.value(metadata i32 34, metadata !1312, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i32 66, metadata !1314, metadata !DIExpression()), !dbg !1351
  %81 = getelementptr inbounds i8, ptr %1, i64 34, !dbg !1352
  %82 = load i8, ptr %81, align 1, !dbg !1352, !tbaa !234
  %83 = zext i8 %82 to i16, !dbg !1352
  %84 = getelementptr inbounds i8, ptr %2, i64 66, !dbg !1352
  %85 = load i8, ptr %84, align 1, !dbg !1352, !tbaa !234
  %86 = zext i8 %85 to i16, !dbg !1352
  %87 = sub nsw i16 %83, %86, !dbg !1352
  %88 = getelementptr inbounds i16, ptr %0, i64 10, !dbg !1352
  store i16 %87, ptr %88, align 2, !dbg !1352, !tbaa !258
  call void @llvm.dbg.value(metadata i32 50, metadata !1315, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i32 98, metadata !1317, metadata !DIExpression()), !dbg !1353
  %89 = getelementptr inbounds i8, ptr %1, i64 50, !dbg !1354
  %90 = load i8, ptr %89, align 1, !dbg !1354, !tbaa !234
  %91 = zext i8 %90 to i16, !dbg !1354
  %92 = getelementptr inbounds i8, ptr %2, i64 98, !dbg !1354
  %93 = load i8, ptr %92, align 1, !dbg !1354, !tbaa !234
  %94 = zext i8 %93 to i16, !dbg !1354
  %95 = sub nsw i16 %91, %94, !dbg !1354
  %96 = getelementptr inbounds i16, ptr %0, i64 11, !dbg !1354
  store i16 %95, ptr %96, align 2, !dbg !1354, !tbaa !258
  call void @llvm.dbg.value(metadata i32 3, metadata !1318, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i32 3, metadata !1320, metadata !DIExpression()), !dbg !1355
  %97 = getelementptr inbounds i8, ptr %1, i64 3, !dbg !1356
  %98 = load i8, ptr %97, align 1, !dbg !1356, !tbaa !234
  %99 = zext i8 %98 to i16, !dbg !1356
  %100 = getelementptr inbounds i8, ptr %2, i64 3, !dbg !1356
  %101 = load i8, ptr %100, align 1, !dbg !1356, !tbaa !234
  %102 = zext i8 %101 to i16, !dbg !1356
  %103 = sub nsw i16 %99, %102, !dbg !1356
  %104 = getelementptr inbounds i16, ptr %0, i64 12, !dbg !1356
  store i16 %103, ptr %104, align 2, !dbg !1356, !tbaa !258
  call void @llvm.dbg.value(metadata i32 19, metadata !1321, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 35, metadata !1323, metadata !DIExpression()), !dbg !1357
  %105 = getelementptr inbounds i8, ptr %1, i64 19, !dbg !1358
  %106 = load i8, ptr %105, align 1, !dbg !1358, !tbaa !234
  %107 = zext i8 %106 to i16, !dbg !1358
  %108 = getelementptr inbounds i8, ptr %2, i64 35, !dbg !1358
  %109 = load i8, ptr %108, align 1, !dbg !1358, !tbaa !234
  %110 = zext i8 %109 to i16, !dbg !1358
  %111 = sub nsw i16 %107, %110, !dbg !1358
  %112 = getelementptr inbounds i16, ptr %0, i64 13, !dbg !1358
  store i16 %111, ptr %112, align 2, !dbg !1358, !tbaa !258
  call void @llvm.dbg.value(metadata i32 35, metadata !1324, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i32 67, metadata !1326, metadata !DIExpression()), !dbg !1359
  %113 = getelementptr inbounds i8, ptr %1, i64 35, !dbg !1360
  %114 = load i8, ptr %113, align 1, !dbg !1360, !tbaa !234
  %115 = zext i8 %114 to i16, !dbg !1360
  %116 = getelementptr inbounds i8, ptr %2, i64 67, !dbg !1360
  %117 = load i8, ptr %116, align 1, !dbg !1360, !tbaa !234
  %118 = zext i8 %117 to i16, !dbg !1360
  %119 = sub nsw i16 %115, %118, !dbg !1360
  %120 = getelementptr inbounds i16, ptr %0, i64 14, !dbg !1360
  store i16 %119, ptr %120, align 2, !dbg !1360, !tbaa !258
  call void @llvm.dbg.value(metadata i32 51, metadata !1327, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i32 99, metadata !1329, metadata !DIExpression()), !dbg !1361
  %121 = getelementptr inbounds i8, ptr %1, i64 51, !dbg !1362
  %122 = load i8, ptr %121, align 1, !dbg !1362, !tbaa !234
  %123 = zext i8 %122 to i16, !dbg !1362
  %124 = getelementptr inbounds i8, ptr %2, i64 99, !dbg !1362
  %125 = load i8, ptr %124, align 1, !dbg !1362, !tbaa !234
  %126 = zext i8 %125 to i16, !dbg !1362
  %127 = sub nsw i16 %123, %126, !dbg !1362
  %128 = getelementptr inbounds i16, ptr %0, i64 15, !dbg !1362
  store i16 %127, ptr %128, align 2, !dbg !1362, !tbaa !258
  %129 = load i32, ptr %1, align 4, !dbg !1363, !tbaa !826
  store i32 %129, ptr %2, align 4, !dbg !1363, !tbaa !826
  %130 = load i32, ptr %9, align 4, !dbg !1363, !tbaa !826
  store i32 %130, ptr %12, align 4, !dbg !1363, !tbaa !826
  %131 = load i32, ptr %25, align 4, !dbg !1363, !tbaa !826
  store i32 %131, ptr %28, align 4, !dbg !1363, !tbaa !826
  %132 = load i32, ptr %33, align 4, !dbg !1363, !tbaa !826
  store i32 %132, ptr %36, align 4, !dbg !1363, !tbaa !826
  ret void, !dbg !1364
}

declare void @x264_zigzag_scan_4x4_field_mmxext(ptr noundef, ptr noundef) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_scan_8x8_frame(ptr noundef writeonly %0, ptr noundef readonly %1) #9 !dbg !1365 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1367, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata ptr %1, metadata !1368, metadata !DIExpression()), !dbg !1369
  %3 = load i16, ptr %1, align 2, !dbg !1370, !tbaa !258
  store i16 %3, ptr %0, align 2, !dbg !1370, !tbaa !258
  %4 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 8, !dbg !1370
  %5 = load i16, ptr %4, align 2, !dbg !1370, !tbaa !258
  %6 = getelementptr inbounds i16, ptr %0, i64 1, !dbg !1370
  store i16 %5, ptr %6, align 2, !dbg !1370, !tbaa !258
  %7 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 1, !dbg !1370
  %8 = load i16, ptr %7, align 2, !dbg !1370, !tbaa !258
  %9 = getelementptr inbounds i16, ptr %0, i64 2, !dbg !1370
  store i16 %8, ptr %9, align 2, !dbg !1370, !tbaa !258
  %10 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 2, !dbg !1370
  %11 = load i16, ptr %10, align 2, !dbg !1370, !tbaa !258
  %12 = getelementptr inbounds i16, ptr %0, i64 3, !dbg !1370
  store i16 %11, ptr %12, align 2, !dbg !1370, !tbaa !258
  %13 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 9, !dbg !1370
  %14 = load i16, ptr %13, align 2, !dbg !1370, !tbaa !258
  %15 = getelementptr inbounds i16, ptr %0, i64 4, !dbg !1370
  store i16 %14, ptr %15, align 2, !dbg !1370, !tbaa !258
  %16 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 16, !dbg !1370
  %17 = load i16, ptr %16, align 2, !dbg !1370, !tbaa !258
  %18 = getelementptr inbounds i16, ptr %0, i64 5, !dbg !1370
  store i16 %17, ptr %18, align 2, !dbg !1370, !tbaa !258
  %19 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 24, !dbg !1370
  %20 = load i16, ptr %19, align 2, !dbg !1370, !tbaa !258
  %21 = getelementptr inbounds i16, ptr %0, i64 6, !dbg !1370
  store i16 %20, ptr %21, align 2, !dbg !1370, !tbaa !258
  %22 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 17, !dbg !1370
  %23 = load i16, ptr %22, align 2, !dbg !1370, !tbaa !258
  %24 = getelementptr inbounds i16, ptr %0, i64 7, !dbg !1370
  store i16 %23, ptr %24, align 2, !dbg !1370, !tbaa !258
  %25 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 10, !dbg !1370
  %26 = load i16, ptr %25, align 2, !dbg !1370, !tbaa !258
  %27 = getelementptr inbounds i16, ptr %0, i64 8, !dbg !1370
  store i16 %26, ptr %27, align 2, !dbg !1370, !tbaa !258
  %28 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 3, !dbg !1370
  %29 = load i16, ptr %28, align 2, !dbg !1370, !tbaa !258
  %30 = getelementptr inbounds i16, ptr %0, i64 9, !dbg !1370
  store i16 %29, ptr %30, align 2, !dbg !1370, !tbaa !258
  %31 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 4, !dbg !1370
  %32 = load i16, ptr %31, align 2, !dbg !1370, !tbaa !258
  %33 = getelementptr inbounds i16, ptr %0, i64 10, !dbg !1370
  store i16 %32, ptr %33, align 2, !dbg !1370, !tbaa !258
  %34 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 11, !dbg !1370
  %35 = load i16, ptr %34, align 2, !dbg !1370, !tbaa !258
  %36 = getelementptr inbounds i16, ptr %0, i64 11, !dbg !1370
  store i16 %35, ptr %36, align 2, !dbg !1370, !tbaa !258
  %37 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 18, !dbg !1370
  %38 = load i16, ptr %37, align 2, !dbg !1370, !tbaa !258
  %39 = getelementptr inbounds i16, ptr %0, i64 12, !dbg !1370
  store i16 %38, ptr %39, align 2, !dbg !1370, !tbaa !258
  %40 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 25, !dbg !1370
  %41 = load i16, ptr %40, align 2, !dbg !1370, !tbaa !258
  %42 = getelementptr inbounds i16, ptr %0, i64 13, !dbg !1370
  store i16 %41, ptr %42, align 2, !dbg !1370, !tbaa !258
  %43 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 32, !dbg !1370
  %44 = load i16, ptr %43, align 2, !dbg !1370, !tbaa !258
  %45 = getelementptr inbounds i16, ptr %0, i64 14, !dbg !1370
  store i16 %44, ptr %45, align 2, !dbg !1370, !tbaa !258
  %46 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 40, !dbg !1370
  %47 = load i16, ptr %46, align 2, !dbg !1370, !tbaa !258
  %48 = getelementptr inbounds i16, ptr %0, i64 15, !dbg !1370
  store i16 %47, ptr %48, align 2, !dbg !1370, !tbaa !258
  %49 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 33, !dbg !1370
  %50 = load i16, ptr %49, align 2, !dbg !1370, !tbaa !258
  %51 = getelementptr inbounds i16, ptr %0, i64 16, !dbg !1370
  store i16 %50, ptr %51, align 2, !dbg !1370, !tbaa !258
  %52 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 26, !dbg !1370
  %53 = load i16, ptr %52, align 2, !dbg !1370, !tbaa !258
  %54 = getelementptr inbounds i16, ptr %0, i64 17, !dbg !1370
  store i16 %53, ptr %54, align 2, !dbg !1370, !tbaa !258
  %55 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 19, !dbg !1370
  %56 = load i16, ptr %55, align 2, !dbg !1370, !tbaa !258
  %57 = getelementptr inbounds i16, ptr %0, i64 18, !dbg !1370
  store i16 %56, ptr %57, align 2, !dbg !1370, !tbaa !258
  %58 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 12, !dbg !1370
  %59 = load i16, ptr %58, align 2, !dbg !1370, !tbaa !258
  %60 = getelementptr inbounds i16, ptr %0, i64 19, !dbg !1370
  store i16 %59, ptr %60, align 2, !dbg !1370, !tbaa !258
  %61 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 5, !dbg !1370
  %62 = load i16, ptr %61, align 2, !dbg !1370, !tbaa !258
  %63 = getelementptr inbounds i16, ptr %0, i64 20, !dbg !1370
  store i16 %62, ptr %63, align 2, !dbg !1370, !tbaa !258
  %64 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 6, !dbg !1370
  %65 = load i16, ptr %64, align 2, !dbg !1370, !tbaa !258
  %66 = getelementptr inbounds i16, ptr %0, i64 21, !dbg !1370
  store i16 %65, ptr %66, align 2, !dbg !1370, !tbaa !258
  %67 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 13, !dbg !1370
  %68 = load i16, ptr %67, align 2, !dbg !1370, !tbaa !258
  %69 = getelementptr inbounds i16, ptr %0, i64 22, !dbg !1370
  store i16 %68, ptr %69, align 2, !dbg !1370, !tbaa !258
  %70 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 20, !dbg !1370
  %71 = load i16, ptr %70, align 2, !dbg !1370, !tbaa !258
  %72 = getelementptr inbounds i16, ptr %0, i64 23, !dbg !1370
  store i16 %71, ptr %72, align 2, !dbg !1370, !tbaa !258
  %73 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 27, !dbg !1370
  %74 = load i16, ptr %73, align 2, !dbg !1370, !tbaa !258
  %75 = getelementptr inbounds i16, ptr %0, i64 24, !dbg !1370
  store i16 %74, ptr %75, align 2, !dbg !1370, !tbaa !258
  %76 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 34, !dbg !1370
  %77 = load i16, ptr %76, align 2, !dbg !1370, !tbaa !258
  %78 = getelementptr inbounds i16, ptr %0, i64 25, !dbg !1370
  store i16 %77, ptr %78, align 2, !dbg !1370, !tbaa !258
  %79 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 41, !dbg !1370
  %80 = load i16, ptr %79, align 2, !dbg !1370, !tbaa !258
  %81 = getelementptr inbounds i16, ptr %0, i64 26, !dbg !1370
  store i16 %80, ptr %81, align 2, !dbg !1370, !tbaa !258
  %82 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 48, !dbg !1370
  %83 = load i16, ptr %82, align 2, !dbg !1370, !tbaa !258
  %84 = getelementptr inbounds i16, ptr %0, i64 27, !dbg !1370
  store i16 %83, ptr %84, align 2, !dbg !1370, !tbaa !258
  %85 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 56, !dbg !1370
  %86 = load i16, ptr %85, align 2, !dbg !1370, !tbaa !258
  %87 = getelementptr inbounds i16, ptr %0, i64 28, !dbg !1370
  store i16 %86, ptr %87, align 2, !dbg !1370, !tbaa !258
  %88 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 49, !dbg !1370
  %89 = load i16, ptr %88, align 2, !dbg !1370, !tbaa !258
  %90 = getelementptr inbounds i16, ptr %0, i64 29, !dbg !1370
  store i16 %89, ptr %90, align 2, !dbg !1370, !tbaa !258
  %91 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 42, !dbg !1370
  %92 = load i16, ptr %91, align 2, !dbg !1370, !tbaa !258
  %93 = getelementptr inbounds i16, ptr %0, i64 30, !dbg !1370
  store i16 %92, ptr %93, align 2, !dbg !1370, !tbaa !258
  %94 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 35, !dbg !1370
  %95 = load i16, ptr %94, align 2, !dbg !1370, !tbaa !258
  %96 = getelementptr inbounds i16, ptr %0, i64 31, !dbg !1370
  store i16 %95, ptr %96, align 2, !dbg !1370, !tbaa !258
  %97 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 28, !dbg !1370
  %98 = load i16, ptr %97, align 2, !dbg !1370, !tbaa !258
  %99 = getelementptr inbounds i16, ptr %0, i64 32, !dbg !1370
  store i16 %98, ptr %99, align 2, !dbg !1370, !tbaa !258
  %100 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 21, !dbg !1370
  %101 = load i16, ptr %100, align 2, !dbg !1370, !tbaa !258
  %102 = getelementptr inbounds i16, ptr %0, i64 33, !dbg !1370
  store i16 %101, ptr %102, align 2, !dbg !1370, !tbaa !258
  %103 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 14, !dbg !1370
  %104 = load i16, ptr %103, align 2, !dbg !1370, !tbaa !258
  %105 = getelementptr inbounds i16, ptr %0, i64 34, !dbg !1370
  store i16 %104, ptr %105, align 2, !dbg !1370, !tbaa !258
  %106 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 7, !dbg !1370
  %107 = load i16, ptr %106, align 2, !dbg !1370, !tbaa !258
  %108 = getelementptr inbounds i16, ptr %0, i64 35, !dbg !1370
  store i16 %107, ptr %108, align 2, !dbg !1370, !tbaa !258
  %109 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 15, !dbg !1370
  %110 = load i16, ptr %109, align 2, !dbg !1370, !tbaa !258
  %111 = getelementptr inbounds i16, ptr %0, i64 36, !dbg !1370
  store i16 %110, ptr %111, align 2, !dbg !1370, !tbaa !258
  %112 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 22, !dbg !1370
  %113 = load i16, ptr %112, align 2, !dbg !1370, !tbaa !258
  %114 = getelementptr inbounds i16, ptr %0, i64 37, !dbg !1370
  store i16 %113, ptr %114, align 2, !dbg !1370, !tbaa !258
  %115 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 29, !dbg !1370
  %116 = load i16, ptr %115, align 2, !dbg !1370, !tbaa !258
  %117 = getelementptr inbounds i16, ptr %0, i64 38, !dbg !1370
  store i16 %116, ptr %117, align 2, !dbg !1370, !tbaa !258
  %118 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 36, !dbg !1370
  %119 = load i16, ptr %118, align 2, !dbg !1370, !tbaa !258
  %120 = getelementptr inbounds i16, ptr %0, i64 39, !dbg !1370
  store i16 %119, ptr %120, align 2, !dbg !1370, !tbaa !258
  %121 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 43, !dbg !1370
  %122 = load i16, ptr %121, align 2, !dbg !1370, !tbaa !258
  %123 = getelementptr inbounds i16, ptr %0, i64 40, !dbg !1370
  store i16 %122, ptr %123, align 2, !dbg !1370, !tbaa !258
  %124 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 50, !dbg !1370
  %125 = load i16, ptr %124, align 2, !dbg !1370, !tbaa !258
  %126 = getelementptr inbounds i16, ptr %0, i64 41, !dbg !1370
  store i16 %125, ptr %126, align 2, !dbg !1370, !tbaa !258
  %127 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 57, !dbg !1370
  %128 = load i16, ptr %127, align 2, !dbg !1370, !tbaa !258
  %129 = getelementptr inbounds i16, ptr %0, i64 42, !dbg !1370
  store i16 %128, ptr %129, align 2, !dbg !1370, !tbaa !258
  %130 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 58, !dbg !1370
  %131 = load i16, ptr %130, align 2, !dbg !1370, !tbaa !258
  %132 = getelementptr inbounds i16, ptr %0, i64 43, !dbg !1370
  store i16 %131, ptr %132, align 2, !dbg !1370, !tbaa !258
  %133 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 51, !dbg !1370
  %134 = load i16, ptr %133, align 2, !dbg !1370, !tbaa !258
  %135 = getelementptr inbounds i16, ptr %0, i64 44, !dbg !1370
  store i16 %134, ptr %135, align 2, !dbg !1370, !tbaa !258
  %136 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 44, !dbg !1370
  %137 = load i16, ptr %136, align 2, !dbg !1370, !tbaa !258
  %138 = getelementptr inbounds i16, ptr %0, i64 45, !dbg !1370
  store i16 %137, ptr %138, align 2, !dbg !1370, !tbaa !258
  %139 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 37, !dbg !1370
  %140 = load i16, ptr %139, align 2, !dbg !1370, !tbaa !258
  %141 = getelementptr inbounds i16, ptr %0, i64 46, !dbg !1370
  store i16 %140, ptr %141, align 2, !dbg !1370, !tbaa !258
  %142 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 30, !dbg !1370
  %143 = load i16, ptr %142, align 2, !dbg !1370, !tbaa !258
  %144 = getelementptr inbounds i16, ptr %0, i64 47, !dbg !1370
  store i16 %143, ptr %144, align 2, !dbg !1370, !tbaa !258
  %145 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 23, !dbg !1370
  %146 = load i16, ptr %145, align 2, !dbg !1370, !tbaa !258
  %147 = getelementptr inbounds i16, ptr %0, i64 48, !dbg !1370
  store i16 %146, ptr %147, align 2, !dbg !1370, !tbaa !258
  %148 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 31, !dbg !1370
  %149 = load i16, ptr %148, align 2, !dbg !1370, !tbaa !258
  %150 = getelementptr inbounds i16, ptr %0, i64 49, !dbg !1370
  store i16 %149, ptr %150, align 2, !dbg !1370, !tbaa !258
  %151 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 38, !dbg !1370
  %152 = load i16, ptr %151, align 2, !dbg !1370, !tbaa !258
  %153 = getelementptr inbounds i16, ptr %0, i64 50, !dbg !1370
  store i16 %152, ptr %153, align 2, !dbg !1370, !tbaa !258
  %154 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 45, !dbg !1370
  %155 = load i16, ptr %154, align 2, !dbg !1370, !tbaa !258
  %156 = getelementptr inbounds i16, ptr %0, i64 51, !dbg !1370
  store i16 %155, ptr %156, align 2, !dbg !1370, !tbaa !258
  %157 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 52, !dbg !1370
  %158 = load i16, ptr %157, align 2, !dbg !1370, !tbaa !258
  %159 = getelementptr inbounds i16, ptr %0, i64 52, !dbg !1370
  store i16 %158, ptr %159, align 2, !dbg !1370, !tbaa !258
  %160 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 59, !dbg !1370
  %161 = load i16, ptr %160, align 2, !dbg !1370, !tbaa !258
  %162 = getelementptr inbounds i16, ptr %0, i64 53, !dbg !1370
  store i16 %161, ptr %162, align 2, !dbg !1370, !tbaa !258
  %163 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 60, !dbg !1370
  %164 = load i16, ptr %163, align 2, !dbg !1370, !tbaa !258
  %165 = getelementptr inbounds i16, ptr %0, i64 54, !dbg !1370
  store i16 %164, ptr %165, align 2, !dbg !1370, !tbaa !258
  %166 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 53, !dbg !1370
  %167 = load i16, ptr %166, align 2, !dbg !1370, !tbaa !258
  %168 = getelementptr inbounds i16, ptr %0, i64 55, !dbg !1370
  store i16 %167, ptr %168, align 2, !dbg !1370, !tbaa !258
  %169 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 46, !dbg !1370
  %170 = load i16, ptr %169, align 2, !dbg !1370, !tbaa !258
  %171 = getelementptr inbounds i16, ptr %0, i64 56, !dbg !1370
  store i16 %170, ptr %171, align 2, !dbg !1370, !tbaa !258
  %172 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 39, !dbg !1370
  %173 = load i16, ptr %172, align 2, !dbg !1370, !tbaa !258
  %174 = getelementptr inbounds i16, ptr %0, i64 57, !dbg !1370
  store i16 %173, ptr %174, align 2, !dbg !1370, !tbaa !258
  %175 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 47, !dbg !1370
  %176 = load i16, ptr %175, align 2, !dbg !1370, !tbaa !258
  %177 = getelementptr inbounds i16, ptr %0, i64 58, !dbg !1370
  store i16 %176, ptr %177, align 2, !dbg !1370, !tbaa !258
  %178 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 54, !dbg !1370
  %179 = load i16, ptr %178, align 2, !dbg !1370, !tbaa !258
  %180 = getelementptr inbounds i16, ptr %0, i64 59, !dbg !1370
  store i16 %179, ptr %180, align 2, !dbg !1370, !tbaa !258
  %181 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 61, !dbg !1370
  %182 = load i16, ptr %181, align 2, !dbg !1370, !tbaa !258
  %183 = getelementptr inbounds i16, ptr %0, i64 60, !dbg !1370
  store i16 %182, ptr %183, align 2, !dbg !1370, !tbaa !258
  %184 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 62, !dbg !1370
  %185 = load i16, ptr %184, align 2, !dbg !1370, !tbaa !258
  %186 = getelementptr inbounds i16, ptr %0, i64 61, !dbg !1370
  store i16 %185, ptr %186, align 2, !dbg !1370, !tbaa !258
  %187 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 55, !dbg !1370
  %188 = load i16, ptr %187, align 2, !dbg !1370, !tbaa !258
  %189 = getelementptr inbounds i16, ptr %0, i64 62, !dbg !1370
  store i16 %188, ptr %189, align 2, !dbg !1370, !tbaa !258
  %190 = getelementptr inbounds [8 x i16], ptr %1, i64 0, i64 63, !dbg !1370
  %191 = load i16, ptr %190, align 2, !dbg !1370, !tbaa !258
  %192 = getelementptr inbounds i16, ptr %0, i64 63, !dbg !1370
  store i16 %191, ptr %192, align 2, !dbg !1370, !tbaa !258
  ret void, !dbg !1371
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_scan_4x4_frame(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #9 !dbg !1372 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1374, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata ptr %1, metadata !1375, metadata !DIExpression()), !dbg !1376
  %3 = load i16, ptr %1, align 2, !dbg !1377, !tbaa !258
  store i16 %3, ptr %0, align 2, !dbg !1377, !tbaa !258
  %4 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 4, !dbg !1377
  %5 = load i16, ptr %4, align 2, !dbg !1377, !tbaa !258
  %6 = getelementptr inbounds i16, ptr %0, i64 1, !dbg !1377
  store i16 %5, ptr %6, align 2, !dbg !1377, !tbaa !258
  %7 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 1, !dbg !1377
  %8 = load i16, ptr %7, align 2, !dbg !1377, !tbaa !258
  %9 = getelementptr inbounds i16, ptr %0, i64 2, !dbg !1377
  store i16 %8, ptr %9, align 2, !dbg !1377, !tbaa !258
  %10 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 2, !dbg !1377
  %11 = load i16, ptr %10, align 2, !dbg !1377, !tbaa !258
  %12 = getelementptr inbounds i16, ptr %0, i64 3, !dbg !1377
  store i16 %11, ptr %12, align 2, !dbg !1377, !tbaa !258
  %13 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 5, !dbg !1377
  %14 = load i16, ptr %13, align 2, !dbg !1377, !tbaa !258
  %15 = getelementptr inbounds i16, ptr %0, i64 4, !dbg !1377
  store i16 %14, ptr %15, align 2, !dbg !1377, !tbaa !258
  %16 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 8, !dbg !1377
  %17 = load i16, ptr %16, align 2, !dbg !1377, !tbaa !258
  %18 = getelementptr inbounds i16, ptr %0, i64 5, !dbg !1377
  store i16 %17, ptr %18, align 2, !dbg !1377, !tbaa !258
  %19 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 12, !dbg !1377
  %20 = load i16, ptr %19, align 2, !dbg !1377, !tbaa !258
  %21 = getelementptr inbounds i16, ptr %0, i64 6, !dbg !1377
  store i16 %20, ptr %21, align 2, !dbg !1377, !tbaa !258
  %22 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 9, !dbg !1377
  %23 = load i16, ptr %22, align 2, !dbg !1377, !tbaa !258
  %24 = getelementptr inbounds i16, ptr %0, i64 7, !dbg !1377
  store i16 %23, ptr %24, align 2, !dbg !1377, !tbaa !258
  %25 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 6, !dbg !1377
  %26 = load i16, ptr %25, align 2, !dbg !1377, !tbaa !258
  %27 = getelementptr inbounds i16, ptr %0, i64 8, !dbg !1377
  store i16 %26, ptr %27, align 2, !dbg !1377, !tbaa !258
  %28 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 3, !dbg !1377
  %29 = load i16, ptr %28, align 2, !dbg !1377, !tbaa !258
  %30 = getelementptr inbounds i16, ptr %0, i64 9, !dbg !1377
  store i16 %29, ptr %30, align 2, !dbg !1377, !tbaa !258
  %31 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 7, !dbg !1377
  %32 = load i16, ptr %31, align 2, !dbg !1377, !tbaa !258
  %33 = getelementptr inbounds i16, ptr %0, i64 10, !dbg !1377
  store i16 %32, ptr %33, align 2, !dbg !1377, !tbaa !258
  %34 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 10, !dbg !1377
  %35 = load i16, ptr %34, align 2, !dbg !1377, !tbaa !258
  %36 = getelementptr inbounds i16, ptr %0, i64 11, !dbg !1377
  store i16 %35, ptr %36, align 2, !dbg !1377, !tbaa !258
  %37 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 13, !dbg !1377
  %38 = load i16, ptr %37, align 2, !dbg !1377, !tbaa !258
  %39 = getelementptr inbounds i16, ptr %0, i64 12, !dbg !1377
  store i16 %38, ptr %39, align 2, !dbg !1377, !tbaa !258
  %40 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 14, !dbg !1377
  %41 = load i16, ptr %40, align 2, !dbg !1377, !tbaa !258
  %42 = getelementptr inbounds i16, ptr %0, i64 13, !dbg !1377
  store i16 %41, ptr %42, align 2, !dbg !1377, !tbaa !258
  %43 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 11, !dbg !1377
  %44 = load i16, ptr %43, align 2, !dbg !1377, !tbaa !258
  %45 = getelementptr inbounds i16, ptr %0, i64 14, !dbg !1377
  store i16 %44, ptr %45, align 2, !dbg !1377, !tbaa !258
  %46 = getelementptr inbounds [4 x i16], ptr %1, i64 0, i64 15, !dbg !1377
  %47 = load i16, ptr %46, align 2, !dbg !1377, !tbaa !258
  %48 = getelementptr inbounds i16, ptr %0, i64 15, !dbg !1377
  store i16 %47, ptr %48, align 2, !dbg !1377, !tbaa !258
  ret void, !dbg !1378
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_sub_8x8_frame(ptr noundef writeonly %0, ptr noundef readonly %1, ptr noundef %2) #9 !dbg !1379 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1381, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata ptr %1, metadata !1382, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata ptr %2, metadata !1383, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i32 0, metadata !1384, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 0, metadata !1386, metadata !DIExpression()), !dbg !1577
  %4 = load i8, ptr %1, align 1, !dbg !1578, !tbaa !234
  %5 = zext i8 %4 to i16, !dbg !1578
  %6 = load i8, ptr %2, align 1, !dbg !1578, !tbaa !234
  %7 = zext i8 %6 to i16, !dbg !1578
  %8 = sub nsw i16 %5, %7, !dbg !1578
  store i16 %8, ptr %0, align 2, !dbg !1578, !tbaa !258
  call void @llvm.dbg.value(metadata i32 1, metadata !1387, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.value(metadata i32 1, metadata !1389, metadata !DIExpression()), !dbg !1579
  %9 = getelementptr inbounds i8, ptr %1, i64 1, !dbg !1580
  %10 = load i8, ptr %9, align 1, !dbg !1580, !tbaa !234
  %11 = zext i8 %10 to i16, !dbg !1580
  %12 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1580
  %13 = load i8, ptr %12, align 1, !dbg !1580, !tbaa !234
  %14 = zext i8 %13 to i16, !dbg !1580
  %15 = sub nsw i16 %11, %14, !dbg !1580
  %16 = getelementptr inbounds i16, ptr %0, i64 1, !dbg !1580
  store i16 %15, ptr %16, align 2, !dbg !1580, !tbaa !258
  call void @llvm.dbg.value(metadata i32 16, metadata !1390, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i32 32, metadata !1392, metadata !DIExpression()), !dbg !1581
  %17 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !1582
  %18 = load i8, ptr %17, align 1, !dbg !1582, !tbaa !234
  %19 = zext i8 %18 to i16, !dbg !1582
  %20 = getelementptr inbounds i8, ptr %2, i64 32, !dbg !1582
  %21 = load i8, ptr %20, align 1, !dbg !1582, !tbaa !234
  %22 = zext i8 %21 to i16, !dbg !1582
  %23 = sub nsw i16 %19, %22, !dbg !1582
  %24 = getelementptr inbounds i16, ptr %0, i64 2, !dbg !1582
  store i16 %23, ptr %24, align 2, !dbg !1582, !tbaa !258
  call void @llvm.dbg.value(metadata i32 32, metadata !1393, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 64, metadata !1395, metadata !DIExpression()), !dbg !1583
  %25 = getelementptr inbounds i8, ptr %1, i64 32, !dbg !1584
  %26 = load i8, ptr %25, align 1, !dbg !1584, !tbaa !234
  %27 = zext i8 %26 to i16, !dbg !1584
  %28 = getelementptr inbounds i8, ptr %2, i64 64, !dbg !1584
  %29 = load i8, ptr %28, align 1, !dbg !1584, !tbaa !234
  %30 = zext i8 %29 to i16, !dbg !1584
  %31 = sub nsw i16 %27, %30, !dbg !1584
  %32 = getelementptr inbounds i16, ptr %0, i64 3, !dbg !1584
  store i16 %31, ptr %32, align 2, !dbg !1584, !tbaa !258
  call void @llvm.dbg.value(metadata i32 17, metadata !1396, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 33, metadata !1398, metadata !DIExpression()), !dbg !1585
  %33 = getelementptr inbounds i8, ptr %1, i64 17, !dbg !1586
  %34 = load i8, ptr %33, align 1, !dbg !1586, !tbaa !234
  %35 = zext i8 %34 to i16, !dbg !1586
  %36 = getelementptr inbounds i8, ptr %2, i64 33, !dbg !1586
  %37 = load i8, ptr %36, align 1, !dbg !1586, !tbaa !234
  %38 = zext i8 %37 to i16, !dbg !1586
  %39 = sub nsw i16 %35, %38, !dbg !1586
  %40 = getelementptr inbounds i16, ptr %0, i64 4, !dbg !1586
  store i16 %39, ptr %40, align 2, !dbg !1586, !tbaa !258
  call void @llvm.dbg.value(metadata i32 2, metadata !1399, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 2, metadata !1401, metadata !DIExpression()), !dbg !1587
  %41 = getelementptr inbounds i8, ptr %1, i64 2, !dbg !1588
  %42 = load i8, ptr %41, align 1, !dbg !1588, !tbaa !234
  %43 = zext i8 %42 to i16, !dbg !1588
  %44 = getelementptr inbounds i8, ptr %2, i64 2, !dbg !1588
  %45 = load i8, ptr %44, align 1, !dbg !1588, !tbaa !234
  %46 = zext i8 %45 to i16, !dbg !1588
  %47 = sub nsw i16 %43, %46, !dbg !1588
  %48 = getelementptr inbounds i16, ptr %0, i64 5, !dbg !1588
  store i16 %47, ptr %48, align 2, !dbg !1588, !tbaa !258
  call void @llvm.dbg.value(metadata i32 3, metadata !1402, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 3, metadata !1404, metadata !DIExpression()), !dbg !1589
  %49 = getelementptr inbounds i8, ptr %1, i64 3, !dbg !1590
  %50 = load i8, ptr %49, align 1, !dbg !1590, !tbaa !234
  %51 = zext i8 %50 to i16, !dbg !1590
  %52 = getelementptr inbounds i8, ptr %2, i64 3, !dbg !1590
  %53 = load i8, ptr %52, align 1, !dbg !1590, !tbaa !234
  %54 = zext i8 %53 to i16, !dbg !1590
  %55 = sub nsw i16 %51, %54, !dbg !1590
  %56 = getelementptr inbounds i16, ptr %0, i64 6, !dbg !1590
  store i16 %55, ptr %56, align 2, !dbg !1590, !tbaa !258
  call void @llvm.dbg.value(metadata i32 18, metadata !1405, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 34, metadata !1407, metadata !DIExpression()), !dbg !1591
  %57 = getelementptr inbounds i8, ptr %1, i64 18, !dbg !1592
  %58 = load i8, ptr %57, align 1, !dbg !1592, !tbaa !234
  %59 = zext i8 %58 to i16, !dbg !1592
  %60 = getelementptr inbounds i8, ptr %2, i64 34, !dbg !1592
  %61 = load i8, ptr %60, align 1, !dbg !1592, !tbaa !234
  %62 = zext i8 %61 to i16, !dbg !1592
  %63 = sub nsw i16 %59, %62, !dbg !1592
  %64 = getelementptr inbounds i16, ptr %0, i64 7, !dbg !1592
  store i16 %63, ptr %64, align 2, !dbg !1592, !tbaa !258
  call void @llvm.dbg.value(metadata i32 33, metadata !1408, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i32 65, metadata !1410, metadata !DIExpression()), !dbg !1593
  %65 = getelementptr inbounds i8, ptr %1, i64 33, !dbg !1594
  %66 = load i8, ptr %65, align 1, !dbg !1594, !tbaa !234
  %67 = zext i8 %66 to i16, !dbg !1594
  %68 = getelementptr inbounds i8, ptr %2, i64 65, !dbg !1594
  %69 = load i8, ptr %68, align 1, !dbg !1594, !tbaa !234
  %70 = zext i8 %69 to i16, !dbg !1594
  %71 = sub nsw i16 %67, %70, !dbg !1594
  %72 = getelementptr inbounds i16, ptr %0, i64 8, !dbg !1594
  store i16 %71, ptr %72, align 2, !dbg !1594, !tbaa !258
  call void @llvm.dbg.value(metadata i32 48, metadata !1411, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata i32 96, metadata !1413, metadata !DIExpression()), !dbg !1595
  %73 = getelementptr inbounds i8, ptr %1, i64 48, !dbg !1596
  %74 = load i8, ptr %73, align 1, !dbg !1596, !tbaa !234
  %75 = zext i8 %74 to i16, !dbg !1596
  %76 = getelementptr inbounds i8, ptr %2, i64 96, !dbg !1596
  %77 = load i8, ptr %76, align 1, !dbg !1596, !tbaa !234
  %78 = zext i8 %77 to i16, !dbg !1596
  %79 = sub nsw i16 %75, %78, !dbg !1596
  %80 = getelementptr inbounds i16, ptr %0, i64 9, !dbg !1596
  store i16 %79, ptr %80, align 2, !dbg !1596, !tbaa !258
  call void @llvm.dbg.value(metadata i32 64, metadata !1414, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i32 128, metadata !1416, metadata !DIExpression()), !dbg !1597
  %81 = getelementptr inbounds i8, ptr %1, i64 64, !dbg !1598
  %82 = load i8, ptr %81, align 1, !dbg !1598, !tbaa !234
  %83 = zext i8 %82 to i16, !dbg !1598
  %84 = getelementptr inbounds i8, ptr %2, i64 128, !dbg !1598
  %85 = load i8, ptr %84, align 1, !dbg !1598, !tbaa !234
  %86 = zext i8 %85 to i16, !dbg !1598
  %87 = sub nsw i16 %83, %86, !dbg !1598
  %88 = getelementptr inbounds i16, ptr %0, i64 10, !dbg !1598
  store i16 %87, ptr %88, align 2, !dbg !1598, !tbaa !258
  call void @llvm.dbg.value(metadata i32 49, metadata !1417, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 97, metadata !1419, metadata !DIExpression()), !dbg !1599
  %89 = getelementptr inbounds i8, ptr %1, i64 49, !dbg !1600
  %90 = load i8, ptr %89, align 1, !dbg !1600, !tbaa !234
  %91 = zext i8 %90 to i16, !dbg !1600
  %92 = getelementptr inbounds i8, ptr %2, i64 97, !dbg !1600
  %93 = load i8, ptr %92, align 1, !dbg !1600, !tbaa !234
  %94 = zext i8 %93 to i16, !dbg !1600
  %95 = sub nsw i16 %91, %94, !dbg !1600
  %96 = getelementptr inbounds i16, ptr %0, i64 11, !dbg !1600
  store i16 %95, ptr %96, align 2, !dbg !1600, !tbaa !258
  call void @llvm.dbg.value(metadata i32 34, metadata !1420, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 66, metadata !1422, metadata !DIExpression()), !dbg !1601
  %97 = getelementptr inbounds i8, ptr %1, i64 34, !dbg !1602
  %98 = load i8, ptr %97, align 1, !dbg !1602, !tbaa !234
  %99 = zext i8 %98 to i16, !dbg !1602
  %100 = getelementptr inbounds i8, ptr %2, i64 66, !dbg !1602
  %101 = load i8, ptr %100, align 1, !dbg !1602, !tbaa !234
  %102 = zext i8 %101 to i16, !dbg !1602
  %103 = sub nsw i16 %99, %102, !dbg !1602
  %104 = getelementptr inbounds i16, ptr %0, i64 12, !dbg !1602
  store i16 %103, ptr %104, align 2, !dbg !1602, !tbaa !258
  call void @llvm.dbg.value(metadata i32 19, metadata !1423, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 35, metadata !1425, metadata !DIExpression()), !dbg !1603
  %105 = getelementptr inbounds i8, ptr %1, i64 19, !dbg !1604
  %106 = load i8, ptr %105, align 1, !dbg !1604, !tbaa !234
  %107 = zext i8 %106 to i16, !dbg !1604
  %108 = getelementptr inbounds i8, ptr %2, i64 35, !dbg !1604
  %109 = load i8, ptr %108, align 1, !dbg !1604, !tbaa !234
  %110 = zext i8 %109 to i16, !dbg !1604
  %111 = sub nsw i16 %107, %110, !dbg !1604
  %112 = getelementptr inbounds i16, ptr %0, i64 13, !dbg !1604
  store i16 %111, ptr %112, align 2, !dbg !1604, !tbaa !258
  call void @llvm.dbg.value(metadata i32 4, metadata !1426, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 4, metadata !1428, metadata !DIExpression()), !dbg !1605
  %113 = getelementptr inbounds i8, ptr %1, i64 4, !dbg !1606
  %114 = load i8, ptr %113, align 1, !dbg !1606, !tbaa !234
  %115 = zext i8 %114 to i16, !dbg !1606
  %116 = getelementptr inbounds i8, ptr %2, i64 4, !dbg !1606
  %117 = load i8, ptr %116, align 1, !dbg !1606, !tbaa !234
  %118 = zext i8 %117 to i16, !dbg !1606
  %119 = sub nsw i16 %115, %118, !dbg !1606
  %120 = getelementptr inbounds i16, ptr %0, i64 14, !dbg !1606
  store i16 %119, ptr %120, align 2, !dbg !1606, !tbaa !258
  call void @llvm.dbg.value(metadata i32 5, metadata !1429, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 5, metadata !1431, metadata !DIExpression()), !dbg !1607
  %121 = getelementptr inbounds i8, ptr %1, i64 5, !dbg !1608
  %122 = load i8, ptr %121, align 1, !dbg !1608, !tbaa !234
  %123 = zext i8 %122 to i16, !dbg !1608
  %124 = getelementptr inbounds i8, ptr %2, i64 5, !dbg !1608
  %125 = load i8, ptr %124, align 1, !dbg !1608, !tbaa !234
  %126 = zext i8 %125 to i16, !dbg !1608
  %127 = sub nsw i16 %123, %126, !dbg !1608
  %128 = getelementptr inbounds i16, ptr %0, i64 15, !dbg !1608
  store i16 %127, ptr %128, align 2, !dbg !1608, !tbaa !258
  call void @llvm.dbg.value(metadata i32 20, metadata !1432, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i32 36, metadata !1434, metadata !DIExpression()), !dbg !1609
  %129 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !1610
  %130 = load i8, ptr %129, align 1, !dbg !1610, !tbaa !234
  %131 = zext i8 %130 to i16, !dbg !1610
  %132 = getelementptr inbounds i8, ptr %2, i64 36, !dbg !1610
  %133 = load i8, ptr %132, align 1, !dbg !1610, !tbaa !234
  %134 = zext i8 %133 to i16, !dbg !1610
  %135 = sub nsw i16 %131, %134, !dbg !1610
  %136 = getelementptr inbounds i16, ptr %0, i64 16, !dbg !1610
  store i16 %135, ptr %136, align 2, !dbg !1610, !tbaa !258
  call void @llvm.dbg.value(metadata i32 35, metadata !1435, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32 67, metadata !1437, metadata !DIExpression()), !dbg !1611
  %137 = getelementptr inbounds i8, ptr %1, i64 35, !dbg !1612
  %138 = load i8, ptr %137, align 1, !dbg !1612, !tbaa !234
  %139 = zext i8 %138 to i16, !dbg !1612
  %140 = getelementptr inbounds i8, ptr %2, i64 67, !dbg !1612
  %141 = load i8, ptr %140, align 1, !dbg !1612, !tbaa !234
  %142 = zext i8 %141 to i16, !dbg !1612
  %143 = sub nsw i16 %139, %142, !dbg !1612
  %144 = getelementptr inbounds i16, ptr %0, i64 17, !dbg !1612
  store i16 %143, ptr %144, align 2, !dbg !1612, !tbaa !258
  call void @llvm.dbg.value(metadata i32 50, metadata !1438, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i32 98, metadata !1440, metadata !DIExpression()), !dbg !1613
  %145 = getelementptr inbounds i8, ptr %1, i64 50, !dbg !1614
  %146 = load i8, ptr %145, align 1, !dbg !1614, !tbaa !234
  %147 = zext i8 %146 to i16, !dbg !1614
  %148 = getelementptr inbounds i8, ptr %2, i64 98, !dbg !1614
  %149 = load i8, ptr %148, align 1, !dbg !1614, !tbaa !234
  %150 = zext i8 %149 to i16, !dbg !1614
  %151 = sub nsw i16 %147, %150, !dbg !1614
  %152 = getelementptr inbounds i16, ptr %0, i64 18, !dbg !1614
  store i16 %151, ptr %152, align 2, !dbg !1614, !tbaa !258
  call void @llvm.dbg.value(metadata i32 65, metadata !1441, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i32 129, metadata !1443, metadata !DIExpression()), !dbg !1615
  %153 = getelementptr inbounds i8, ptr %1, i64 65, !dbg !1616
  %154 = load i8, ptr %153, align 1, !dbg !1616, !tbaa !234
  %155 = zext i8 %154 to i16, !dbg !1616
  %156 = getelementptr inbounds i8, ptr %2, i64 129, !dbg !1616
  %157 = load i8, ptr %156, align 1, !dbg !1616, !tbaa !234
  %158 = zext i8 %157 to i16, !dbg !1616
  %159 = sub nsw i16 %155, %158, !dbg !1616
  %160 = getelementptr inbounds i16, ptr %0, i64 19, !dbg !1616
  store i16 %159, ptr %160, align 2, !dbg !1616, !tbaa !258
  call void @llvm.dbg.value(metadata i32 80, metadata !1444, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i32 160, metadata !1446, metadata !DIExpression()), !dbg !1617
  %161 = getelementptr inbounds i8, ptr %1, i64 80, !dbg !1618
  %162 = load i8, ptr %161, align 1, !dbg !1618, !tbaa !234
  %163 = zext i8 %162 to i16, !dbg !1618
  %164 = getelementptr inbounds i8, ptr %2, i64 160, !dbg !1618
  %165 = load i8, ptr %164, align 1, !dbg !1618, !tbaa !234
  %166 = zext i8 %165 to i16, !dbg !1618
  %167 = sub nsw i16 %163, %166, !dbg !1618
  %168 = getelementptr inbounds i16, ptr %0, i64 20, !dbg !1618
  store i16 %167, ptr %168, align 2, !dbg !1618, !tbaa !258
  call void @llvm.dbg.value(metadata i32 96, metadata !1447, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i32 192, metadata !1449, metadata !DIExpression()), !dbg !1619
  %169 = getelementptr inbounds i8, ptr %1, i64 96, !dbg !1620
  %170 = load i8, ptr %169, align 1, !dbg !1620, !tbaa !234
  %171 = zext i8 %170 to i16, !dbg !1620
  %172 = getelementptr inbounds i8, ptr %2, i64 192, !dbg !1620
  %173 = load i8, ptr %172, align 1, !dbg !1620, !tbaa !234
  %174 = zext i8 %173 to i16, !dbg !1620
  %175 = sub nsw i16 %171, %174, !dbg !1620
  %176 = getelementptr inbounds i16, ptr %0, i64 21, !dbg !1620
  store i16 %175, ptr %176, align 2, !dbg !1620, !tbaa !258
  call void @llvm.dbg.value(metadata i32 81, metadata !1450, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i32 161, metadata !1452, metadata !DIExpression()), !dbg !1621
  %177 = getelementptr inbounds i8, ptr %1, i64 81, !dbg !1622
  %178 = load i8, ptr %177, align 1, !dbg !1622, !tbaa !234
  %179 = zext i8 %178 to i16, !dbg !1622
  %180 = getelementptr inbounds i8, ptr %2, i64 161, !dbg !1622
  %181 = load i8, ptr %180, align 1, !dbg !1622, !tbaa !234
  %182 = zext i8 %181 to i16, !dbg !1622
  %183 = sub nsw i16 %179, %182, !dbg !1622
  %184 = getelementptr inbounds i16, ptr %0, i64 22, !dbg !1622
  store i16 %183, ptr %184, align 2, !dbg !1622, !tbaa !258
  call void @llvm.dbg.value(metadata i32 66, metadata !1453, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i32 130, metadata !1455, metadata !DIExpression()), !dbg !1623
  %185 = getelementptr inbounds i8, ptr %1, i64 66, !dbg !1624
  %186 = load i8, ptr %185, align 1, !dbg !1624, !tbaa !234
  %187 = zext i8 %186 to i16, !dbg !1624
  %188 = getelementptr inbounds i8, ptr %2, i64 130, !dbg !1624
  %189 = load i8, ptr %188, align 1, !dbg !1624, !tbaa !234
  %190 = zext i8 %189 to i16, !dbg !1624
  %191 = sub nsw i16 %187, %190, !dbg !1624
  %192 = getelementptr inbounds i16, ptr %0, i64 23, !dbg !1624
  store i16 %191, ptr %192, align 2, !dbg !1624, !tbaa !258
  call void @llvm.dbg.value(metadata i32 51, metadata !1456, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i32 99, metadata !1458, metadata !DIExpression()), !dbg !1625
  %193 = getelementptr inbounds i8, ptr %1, i64 51, !dbg !1626
  %194 = load i8, ptr %193, align 1, !dbg !1626, !tbaa !234
  %195 = zext i8 %194 to i16, !dbg !1626
  %196 = getelementptr inbounds i8, ptr %2, i64 99, !dbg !1626
  %197 = load i8, ptr %196, align 1, !dbg !1626, !tbaa !234
  %198 = zext i8 %197 to i16, !dbg !1626
  %199 = sub nsw i16 %195, %198, !dbg !1626
  %200 = getelementptr inbounds i16, ptr %0, i64 24, !dbg !1626
  store i16 %199, ptr %200, align 2, !dbg !1626, !tbaa !258
  call void @llvm.dbg.value(metadata i32 36, metadata !1459, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i32 68, metadata !1461, metadata !DIExpression()), !dbg !1627
  %201 = getelementptr inbounds i8, ptr %1, i64 36, !dbg !1628
  %202 = load i8, ptr %201, align 1, !dbg !1628, !tbaa !234
  %203 = zext i8 %202 to i16, !dbg !1628
  %204 = getelementptr inbounds i8, ptr %2, i64 68, !dbg !1628
  %205 = load i8, ptr %204, align 1, !dbg !1628, !tbaa !234
  %206 = zext i8 %205 to i16, !dbg !1628
  %207 = sub nsw i16 %203, %206, !dbg !1628
  %208 = getelementptr inbounds i16, ptr %0, i64 25, !dbg !1628
  store i16 %207, ptr %208, align 2, !dbg !1628, !tbaa !258
  call void @llvm.dbg.value(metadata i32 21, metadata !1462, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i32 37, metadata !1464, metadata !DIExpression()), !dbg !1629
  %209 = getelementptr inbounds i8, ptr %1, i64 21, !dbg !1630
  %210 = load i8, ptr %209, align 1, !dbg !1630, !tbaa !234
  %211 = zext i8 %210 to i16, !dbg !1630
  %212 = getelementptr inbounds i8, ptr %2, i64 37, !dbg !1630
  %213 = load i8, ptr %212, align 1, !dbg !1630, !tbaa !234
  %214 = zext i8 %213 to i16, !dbg !1630
  %215 = sub nsw i16 %211, %214, !dbg !1630
  %216 = getelementptr inbounds i16, ptr %0, i64 26, !dbg !1630
  store i16 %215, ptr %216, align 2, !dbg !1630, !tbaa !258
  call void @llvm.dbg.value(metadata i32 6, metadata !1465, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i32 6, metadata !1467, metadata !DIExpression()), !dbg !1631
  %217 = getelementptr inbounds i8, ptr %1, i64 6, !dbg !1632
  %218 = load i8, ptr %217, align 1, !dbg !1632, !tbaa !234
  %219 = zext i8 %218 to i16, !dbg !1632
  %220 = getelementptr inbounds i8, ptr %2, i64 6, !dbg !1632
  %221 = load i8, ptr %220, align 1, !dbg !1632, !tbaa !234
  %222 = zext i8 %221 to i16, !dbg !1632
  %223 = sub nsw i16 %219, %222, !dbg !1632
  %224 = getelementptr inbounds i16, ptr %0, i64 27, !dbg !1632
  store i16 %223, ptr %224, align 2, !dbg !1632, !tbaa !258
  call void @llvm.dbg.value(metadata i32 7, metadata !1468, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i32 7, metadata !1470, metadata !DIExpression()), !dbg !1633
  %225 = getelementptr inbounds i8, ptr %1, i64 7, !dbg !1634
  %226 = load i8, ptr %225, align 1, !dbg !1634, !tbaa !234
  %227 = zext i8 %226 to i16, !dbg !1634
  %228 = getelementptr inbounds i8, ptr %2, i64 7, !dbg !1634
  %229 = load i8, ptr %228, align 1, !dbg !1634, !tbaa !234
  %230 = zext i8 %229 to i16, !dbg !1634
  %231 = sub nsw i16 %227, %230, !dbg !1634
  %232 = getelementptr inbounds i16, ptr %0, i64 28, !dbg !1634
  store i16 %231, ptr %232, align 2, !dbg !1634, !tbaa !258
  call void @llvm.dbg.value(metadata i32 22, metadata !1471, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i32 38, metadata !1473, metadata !DIExpression()), !dbg !1635
  %233 = getelementptr inbounds i8, ptr %1, i64 22, !dbg !1636
  %234 = load i8, ptr %233, align 1, !dbg !1636, !tbaa !234
  %235 = zext i8 %234 to i16, !dbg !1636
  %236 = getelementptr inbounds i8, ptr %2, i64 38, !dbg !1636
  %237 = load i8, ptr %236, align 1, !dbg !1636, !tbaa !234
  %238 = zext i8 %237 to i16, !dbg !1636
  %239 = sub nsw i16 %235, %238, !dbg !1636
  %240 = getelementptr inbounds i16, ptr %0, i64 29, !dbg !1636
  store i16 %239, ptr %240, align 2, !dbg !1636, !tbaa !258
  call void @llvm.dbg.value(metadata i32 37, metadata !1474, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 69, metadata !1476, metadata !DIExpression()), !dbg !1637
  %241 = getelementptr inbounds i8, ptr %1, i64 37, !dbg !1638
  %242 = load i8, ptr %241, align 1, !dbg !1638, !tbaa !234
  %243 = zext i8 %242 to i16, !dbg !1638
  %244 = getelementptr inbounds i8, ptr %2, i64 69, !dbg !1638
  %245 = load i8, ptr %244, align 1, !dbg !1638, !tbaa !234
  %246 = zext i8 %245 to i16, !dbg !1638
  %247 = sub nsw i16 %243, %246, !dbg !1638
  %248 = getelementptr inbounds i16, ptr %0, i64 30, !dbg !1638
  store i16 %247, ptr %248, align 2, !dbg !1638, !tbaa !258
  call void @llvm.dbg.value(metadata i32 52, metadata !1477, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i32 100, metadata !1479, metadata !DIExpression()), !dbg !1639
  %249 = getelementptr inbounds i8, ptr %1, i64 52, !dbg !1640
  %250 = load i8, ptr %249, align 1, !dbg !1640, !tbaa !234
  %251 = zext i8 %250 to i16, !dbg !1640
  %252 = getelementptr inbounds i8, ptr %2, i64 100, !dbg !1640
  %253 = load i8, ptr %252, align 1, !dbg !1640, !tbaa !234
  %254 = zext i8 %253 to i16, !dbg !1640
  %255 = sub nsw i16 %251, %254, !dbg !1640
  %256 = getelementptr inbounds i16, ptr %0, i64 31, !dbg !1640
  store i16 %255, ptr %256, align 2, !dbg !1640, !tbaa !258
  call void @llvm.dbg.value(metadata i32 67, metadata !1480, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i32 131, metadata !1482, metadata !DIExpression()), !dbg !1641
  %257 = getelementptr inbounds i8, ptr %1, i64 67, !dbg !1642
  %258 = load i8, ptr %257, align 1, !dbg !1642, !tbaa !234
  %259 = zext i8 %258 to i16, !dbg !1642
  %260 = getelementptr inbounds i8, ptr %2, i64 131, !dbg !1642
  %261 = load i8, ptr %260, align 1, !dbg !1642, !tbaa !234
  %262 = zext i8 %261 to i16, !dbg !1642
  %263 = sub nsw i16 %259, %262, !dbg !1642
  %264 = getelementptr inbounds i16, ptr %0, i64 32, !dbg !1642
  store i16 %263, ptr %264, align 2, !dbg !1642, !tbaa !258
  call void @llvm.dbg.value(metadata i32 82, metadata !1483, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i32 162, metadata !1485, metadata !DIExpression()), !dbg !1643
  %265 = getelementptr inbounds i8, ptr %1, i64 82, !dbg !1644
  %266 = load i8, ptr %265, align 1, !dbg !1644, !tbaa !234
  %267 = zext i8 %266 to i16, !dbg !1644
  %268 = getelementptr inbounds i8, ptr %2, i64 162, !dbg !1644
  %269 = load i8, ptr %268, align 1, !dbg !1644, !tbaa !234
  %270 = zext i8 %269 to i16, !dbg !1644
  %271 = sub nsw i16 %267, %270, !dbg !1644
  %272 = getelementptr inbounds i16, ptr %0, i64 33, !dbg !1644
  store i16 %271, ptr %272, align 2, !dbg !1644, !tbaa !258
  call void @llvm.dbg.value(metadata i32 97, metadata !1486, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i32 193, metadata !1488, metadata !DIExpression()), !dbg !1645
  %273 = getelementptr inbounds i8, ptr %1, i64 97, !dbg !1646
  %274 = load i8, ptr %273, align 1, !dbg !1646, !tbaa !234
  %275 = zext i8 %274 to i16, !dbg !1646
  %276 = getelementptr inbounds i8, ptr %2, i64 193, !dbg !1646
  %277 = load i8, ptr %276, align 1, !dbg !1646, !tbaa !234
  %278 = zext i8 %277 to i16, !dbg !1646
  %279 = sub nsw i16 %275, %278, !dbg !1646
  %280 = getelementptr inbounds i16, ptr %0, i64 34, !dbg !1646
  store i16 %279, ptr %280, align 2, !dbg !1646, !tbaa !258
  call void @llvm.dbg.value(metadata i32 112, metadata !1489, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 224, metadata !1491, metadata !DIExpression()), !dbg !1647
  %281 = getelementptr inbounds i8, ptr %1, i64 112, !dbg !1648
  %282 = load i8, ptr %281, align 1, !dbg !1648, !tbaa !234
  %283 = zext i8 %282 to i16, !dbg !1648
  %284 = getelementptr inbounds i8, ptr %2, i64 224, !dbg !1648
  %285 = load i8, ptr %284, align 1, !dbg !1648, !tbaa !234
  %286 = zext i8 %285 to i16, !dbg !1648
  %287 = sub nsw i16 %283, %286, !dbg !1648
  %288 = getelementptr inbounds i16, ptr %0, i64 35, !dbg !1648
  store i16 %287, ptr %288, align 2, !dbg !1648, !tbaa !258
  call void @llvm.dbg.value(metadata i32 113, metadata !1492, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i32 225, metadata !1494, metadata !DIExpression()), !dbg !1649
  %289 = getelementptr inbounds i8, ptr %1, i64 113, !dbg !1650
  %290 = load i8, ptr %289, align 1, !dbg !1650, !tbaa !234
  %291 = zext i8 %290 to i16, !dbg !1650
  %292 = getelementptr inbounds i8, ptr %2, i64 225, !dbg !1650
  %293 = load i8, ptr %292, align 1, !dbg !1650, !tbaa !234
  %294 = zext i8 %293 to i16, !dbg !1650
  %295 = sub nsw i16 %291, %294, !dbg !1650
  %296 = getelementptr inbounds i16, ptr %0, i64 36, !dbg !1650
  store i16 %295, ptr %296, align 2, !dbg !1650, !tbaa !258
  call void @llvm.dbg.value(metadata i32 98, metadata !1495, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i32 194, metadata !1497, metadata !DIExpression()), !dbg !1651
  %297 = getelementptr inbounds i8, ptr %1, i64 98, !dbg !1652
  %298 = load i8, ptr %297, align 1, !dbg !1652, !tbaa !234
  %299 = zext i8 %298 to i16, !dbg !1652
  %300 = getelementptr inbounds i8, ptr %2, i64 194, !dbg !1652
  %301 = load i8, ptr %300, align 1, !dbg !1652, !tbaa !234
  %302 = zext i8 %301 to i16, !dbg !1652
  %303 = sub nsw i16 %299, %302, !dbg !1652
  %304 = getelementptr inbounds i16, ptr %0, i64 37, !dbg !1652
  store i16 %303, ptr %304, align 2, !dbg !1652, !tbaa !258
  call void @llvm.dbg.value(metadata i32 83, metadata !1498, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 163, metadata !1500, metadata !DIExpression()), !dbg !1653
  %305 = getelementptr inbounds i8, ptr %1, i64 83, !dbg !1654
  %306 = load i8, ptr %305, align 1, !dbg !1654, !tbaa !234
  %307 = zext i8 %306 to i16, !dbg !1654
  %308 = getelementptr inbounds i8, ptr %2, i64 163, !dbg !1654
  %309 = load i8, ptr %308, align 1, !dbg !1654, !tbaa !234
  %310 = zext i8 %309 to i16, !dbg !1654
  %311 = sub nsw i16 %307, %310, !dbg !1654
  %312 = getelementptr inbounds i16, ptr %0, i64 38, !dbg !1654
  store i16 %311, ptr %312, align 2, !dbg !1654, !tbaa !258
  call void @llvm.dbg.value(metadata i32 68, metadata !1501, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32 132, metadata !1503, metadata !DIExpression()), !dbg !1655
  %313 = getelementptr inbounds i8, ptr %1, i64 68, !dbg !1656
  %314 = load i8, ptr %313, align 1, !dbg !1656, !tbaa !234
  %315 = zext i8 %314 to i16, !dbg !1656
  %316 = getelementptr inbounds i8, ptr %2, i64 132, !dbg !1656
  %317 = load i8, ptr %316, align 1, !dbg !1656, !tbaa !234
  %318 = zext i8 %317 to i16, !dbg !1656
  %319 = sub nsw i16 %315, %318, !dbg !1656
  %320 = getelementptr inbounds i16, ptr %0, i64 39, !dbg !1656
  store i16 %319, ptr %320, align 2, !dbg !1656, !tbaa !258
  call void @llvm.dbg.value(metadata i32 53, metadata !1504, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i32 101, metadata !1506, metadata !DIExpression()), !dbg !1657
  %321 = getelementptr inbounds i8, ptr %1, i64 53, !dbg !1658
  %322 = load i8, ptr %321, align 1, !dbg !1658, !tbaa !234
  %323 = zext i8 %322 to i16, !dbg !1658
  %324 = getelementptr inbounds i8, ptr %2, i64 101, !dbg !1658
  %325 = load i8, ptr %324, align 1, !dbg !1658, !tbaa !234
  %326 = zext i8 %325 to i16, !dbg !1658
  %327 = sub nsw i16 %323, %326, !dbg !1658
  %328 = getelementptr inbounds i16, ptr %0, i64 40, !dbg !1658
  store i16 %327, ptr %328, align 2, !dbg !1658, !tbaa !258
  call void @llvm.dbg.value(metadata i32 38, metadata !1507, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 70, metadata !1509, metadata !DIExpression()), !dbg !1659
  %329 = getelementptr inbounds i8, ptr %1, i64 38, !dbg !1660
  %330 = load i8, ptr %329, align 1, !dbg !1660, !tbaa !234
  %331 = zext i8 %330 to i16, !dbg !1660
  %332 = getelementptr inbounds i8, ptr %2, i64 70, !dbg !1660
  %333 = load i8, ptr %332, align 1, !dbg !1660, !tbaa !234
  %334 = zext i8 %333 to i16, !dbg !1660
  %335 = sub nsw i16 %331, %334, !dbg !1660
  %336 = getelementptr inbounds i16, ptr %0, i64 41, !dbg !1660
  store i16 %335, ptr %336, align 2, !dbg !1660, !tbaa !258
  call void @llvm.dbg.value(metadata i32 23, metadata !1510, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i32 39, metadata !1512, metadata !DIExpression()), !dbg !1661
  %337 = getelementptr inbounds i8, ptr %1, i64 23, !dbg !1662
  %338 = load i8, ptr %337, align 1, !dbg !1662, !tbaa !234
  %339 = zext i8 %338 to i16, !dbg !1662
  %340 = getelementptr inbounds i8, ptr %2, i64 39, !dbg !1662
  %341 = load i8, ptr %340, align 1, !dbg !1662, !tbaa !234
  %342 = zext i8 %341 to i16, !dbg !1662
  %343 = sub nsw i16 %339, %342, !dbg !1662
  %344 = getelementptr inbounds i16, ptr %0, i64 42, !dbg !1662
  store i16 %343, ptr %344, align 2, !dbg !1662, !tbaa !258
  call void @llvm.dbg.value(metadata i32 39, metadata !1513, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i32 71, metadata !1515, metadata !DIExpression()), !dbg !1663
  %345 = getelementptr inbounds i8, ptr %1, i64 39, !dbg !1664
  %346 = load i8, ptr %345, align 1, !dbg !1664, !tbaa !234
  %347 = zext i8 %346 to i16, !dbg !1664
  %348 = getelementptr inbounds i8, ptr %2, i64 71, !dbg !1664
  %349 = load i8, ptr %348, align 1, !dbg !1664, !tbaa !234
  %350 = zext i8 %349 to i16, !dbg !1664
  %351 = sub nsw i16 %347, %350, !dbg !1664
  %352 = getelementptr inbounds i16, ptr %0, i64 43, !dbg !1664
  store i16 %351, ptr %352, align 2, !dbg !1664, !tbaa !258
  call void @llvm.dbg.value(metadata i32 54, metadata !1516, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i32 102, metadata !1518, metadata !DIExpression()), !dbg !1665
  %353 = getelementptr inbounds i8, ptr %1, i64 54, !dbg !1666
  %354 = load i8, ptr %353, align 1, !dbg !1666, !tbaa !234
  %355 = zext i8 %354 to i16, !dbg !1666
  %356 = getelementptr inbounds i8, ptr %2, i64 102, !dbg !1666
  %357 = load i8, ptr %356, align 1, !dbg !1666, !tbaa !234
  %358 = zext i8 %357 to i16, !dbg !1666
  %359 = sub nsw i16 %355, %358, !dbg !1666
  %360 = getelementptr inbounds i16, ptr %0, i64 44, !dbg !1666
  store i16 %359, ptr %360, align 2, !dbg !1666, !tbaa !258
  call void @llvm.dbg.value(metadata i32 69, metadata !1519, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i32 133, metadata !1521, metadata !DIExpression()), !dbg !1667
  %361 = getelementptr inbounds i8, ptr %1, i64 69, !dbg !1668
  %362 = load i8, ptr %361, align 1, !dbg !1668, !tbaa !234
  %363 = zext i8 %362 to i16, !dbg !1668
  %364 = getelementptr inbounds i8, ptr %2, i64 133, !dbg !1668
  %365 = load i8, ptr %364, align 1, !dbg !1668, !tbaa !234
  %366 = zext i8 %365 to i16, !dbg !1668
  %367 = sub nsw i16 %363, %366, !dbg !1668
  %368 = getelementptr inbounds i16, ptr %0, i64 45, !dbg !1668
  store i16 %367, ptr %368, align 2, !dbg !1668, !tbaa !258
  call void @llvm.dbg.value(metadata i32 84, metadata !1522, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 164, metadata !1524, metadata !DIExpression()), !dbg !1669
  %369 = getelementptr inbounds i8, ptr %1, i64 84, !dbg !1670
  %370 = load i8, ptr %369, align 1, !dbg !1670, !tbaa !234
  %371 = zext i8 %370 to i16, !dbg !1670
  %372 = getelementptr inbounds i8, ptr %2, i64 164, !dbg !1670
  %373 = load i8, ptr %372, align 1, !dbg !1670, !tbaa !234
  %374 = zext i8 %373 to i16, !dbg !1670
  %375 = sub nsw i16 %371, %374, !dbg !1670
  %376 = getelementptr inbounds i16, ptr %0, i64 46, !dbg !1670
  store i16 %375, ptr %376, align 2, !dbg !1670, !tbaa !258
  call void @llvm.dbg.value(metadata i32 99, metadata !1525, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i32 195, metadata !1527, metadata !DIExpression()), !dbg !1671
  %377 = getelementptr inbounds i8, ptr %1, i64 99, !dbg !1672
  %378 = load i8, ptr %377, align 1, !dbg !1672, !tbaa !234
  %379 = zext i8 %378 to i16, !dbg !1672
  %380 = getelementptr inbounds i8, ptr %2, i64 195, !dbg !1672
  %381 = load i8, ptr %380, align 1, !dbg !1672, !tbaa !234
  %382 = zext i8 %381 to i16, !dbg !1672
  %383 = sub nsw i16 %379, %382, !dbg !1672
  %384 = getelementptr inbounds i16, ptr %0, i64 47, !dbg !1672
  store i16 %383, ptr %384, align 2, !dbg !1672, !tbaa !258
  call void @llvm.dbg.value(metadata i32 114, metadata !1528, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i32 226, metadata !1530, metadata !DIExpression()), !dbg !1673
  %385 = getelementptr inbounds i8, ptr %1, i64 114, !dbg !1674
  %386 = load i8, ptr %385, align 1, !dbg !1674, !tbaa !234
  %387 = zext i8 %386 to i16, !dbg !1674
  %388 = getelementptr inbounds i8, ptr %2, i64 226, !dbg !1674
  %389 = load i8, ptr %388, align 1, !dbg !1674, !tbaa !234
  %390 = zext i8 %389 to i16, !dbg !1674
  %391 = sub nsw i16 %387, %390, !dbg !1674
  %392 = getelementptr inbounds i16, ptr %0, i64 48, !dbg !1674
  store i16 %391, ptr %392, align 2, !dbg !1674, !tbaa !258
  call void @llvm.dbg.value(metadata i32 115, metadata !1531, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 227, metadata !1533, metadata !DIExpression()), !dbg !1675
  %393 = getelementptr inbounds i8, ptr %1, i64 115, !dbg !1676
  %394 = load i8, ptr %393, align 1, !dbg !1676, !tbaa !234
  %395 = zext i8 %394 to i16, !dbg !1676
  %396 = getelementptr inbounds i8, ptr %2, i64 227, !dbg !1676
  %397 = load i8, ptr %396, align 1, !dbg !1676, !tbaa !234
  %398 = zext i8 %397 to i16, !dbg !1676
  %399 = sub nsw i16 %395, %398, !dbg !1676
  %400 = getelementptr inbounds i16, ptr %0, i64 49, !dbg !1676
  store i16 %399, ptr %400, align 2, !dbg !1676, !tbaa !258
  call void @llvm.dbg.value(metadata i32 100, metadata !1534, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i32 196, metadata !1536, metadata !DIExpression()), !dbg !1677
  %401 = getelementptr inbounds i8, ptr %1, i64 100, !dbg !1678
  %402 = load i8, ptr %401, align 1, !dbg !1678, !tbaa !234
  %403 = zext i8 %402 to i16, !dbg !1678
  %404 = getelementptr inbounds i8, ptr %2, i64 196, !dbg !1678
  %405 = load i8, ptr %404, align 1, !dbg !1678, !tbaa !234
  %406 = zext i8 %405 to i16, !dbg !1678
  %407 = sub nsw i16 %403, %406, !dbg !1678
  %408 = getelementptr inbounds i16, ptr %0, i64 50, !dbg !1678
  store i16 %407, ptr %408, align 2, !dbg !1678, !tbaa !258
  call void @llvm.dbg.value(metadata i32 85, metadata !1537, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32 165, metadata !1539, metadata !DIExpression()), !dbg !1679
  %409 = getelementptr inbounds i8, ptr %1, i64 85, !dbg !1680
  %410 = load i8, ptr %409, align 1, !dbg !1680, !tbaa !234
  %411 = zext i8 %410 to i16, !dbg !1680
  %412 = getelementptr inbounds i8, ptr %2, i64 165, !dbg !1680
  %413 = load i8, ptr %412, align 1, !dbg !1680, !tbaa !234
  %414 = zext i8 %413 to i16, !dbg !1680
  %415 = sub nsw i16 %411, %414, !dbg !1680
  %416 = getelementptr inbounds i16, ptr %0, i64 51, !dbg !1680
  store i16 %415, ptr %416, align 2, !dbg !1680, !tbaa !258
  call void @llvm.dbg.value(metadata i32 70, metadata !1540, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i32 134, metadata !1542, metadata !DIExpression()), !dbg !1681
  %417 = getelementptr inbounds i8, ptr %1, i64 70, !dbg !1682
  %418 = load i8, ptr %417, align 1, !dbg !1682, !tbaa !234
  %419 = zext i8 %418 to i16, !dbg !1682
  %420 = getelementptr inbounds i8, ptr %2, i64 134, !dbg !1682
  %421 = load i8, ptr %420, align 1, !dbg !1682, !tbaa !234
  %422 = zext i8 %421 to i16, !dbg !1682
  %423 = sub nsw i16 %419, %422, !dbg !1682
  %424 = getelementptr inbounds i16, ptr %0, i64 52, !dbg !1682
  store i16 %423, ptr %424, align 2, !dbg !1682, !tbaa !258
  call void @llvm.dbg.value(metadata i32 55, metadata !1543, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i32 103, metadata !1545, metadata !DIExpression()), !dbg !1683
  %425 = getelementptr inbounds i8, ptr %1, i64 55, !dbg !1684
  %426 = load i8, ptr %425, align 1, !dbg !1684, !tbaa !234
  %427 = zext i8 %426 to i16, !dbg !1684
  %428 = getelementptr inbounds i8, ptr %2, i64 103, !dbg !1684
  %429 = load i8, ptr %428, align 1, !dbg !1684, !tbaa !234
  %430 = zext i8 %429 to i16, !dbg !1684
  %431 = sub nsw i16 %427, %430, !dbg !1684
  %432 = getelementptr inbounds i16, ptr %0, i64 53, !dbg !1684
  store i16 %431, ptr %432, align 2, !dbg !1684, !tbaa !258
  call void @llvm.dbg.value(metadata i32 71, metadata !1546, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i32 135, metadata !1548, metadata !DIExpression()), !dbg !1685
  %433 = getelementptr inbounds i8, ptr %1, i64 71, !dbg !1686
  %434 = load i8, ptr %433, align 1, !dbg !1686, !tbaa !234
  %435 = zext i8 %434 to i16, !dbg !1686
  %436 = getelementptr inbounds i8, ptr %2, i64 135, !dbg !1686
  %437 = load i8, ptr %436, align 1, !dbg !1686, !tbaa !234
  %438 = zext i8 %437 to i16, !dbg !1686
  %439 = sub nsw i16 %435, %438, !dbg !1686
  %440 = getelementptr inbounds i16, ptr %0, i64 54, !dbg !1686
  store i16 %439, ptr %440, align 2, !dbg !1686, !tbaa !258
  call void @llvm.dbg.value(metadata i32 86, metadata !1549, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i32 166, metadata !1551, metadata !DIExpression()), !dbg !1687
  %441 = getelementptr inbounds i8, ptr %1, i64 86, !dbg !1688
  %442 = load i8, ptr %441, align 1, !dbg !1688, !tbaa !234
  %443 = zext i8 %442 to i16, !dbg !1688
  %444 = getelementptr inbounds i8, ptr %2, i64 166, !dbg !1688
  %445 = load i8, ptr %444, align 1, !dbg !1688, !tbaa !234
  %446 = zext i8 %445 to i16, !dbg !1688
  %447 = sub nsw i16 %443, %446, !dbg !1688
  %448 = getelementptr inbounds i16, ptr %0, i64 55, !dbg !1688
  store i16 %447, ptr %448, align 2, !dbg !1688, !tbaa !258
  call void @llvm.dbg.value(metadata i32 101, metadata !1552, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i32 197, metadata !1554, metadata !DIExpression()), !dbg !1689
  %449 = getelementptr inbounds i8, ptr %1, i64 101, !dbg !1690
  %450 = load i8, ptr %449, align 1, !dbg !1690, !tbaa !234
  %451 = zext i8 %450 to i16, !dbg !1690
  %452 = getelementptr inbounds i8, ptr %2, i64 197, !dbg !1690
  %453 = load i8, ptr %452, align 1, !dbg !1690, !tbaa !234
  %454 = zext i8 %453 to i16, !dbg !1690
  %455 = sub nsw i16 %451, %454, !dbg !1690
  %456 = getelementptr inbounds i16, ptr %0, i64 56, !dbg !1690
  store i16 %455, ptr %456, align 2, !dbg !1690, !tbaa !258
  call void @llvm.dbg.value(metadata i32 116, metadata !1555, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i32 228, metadata !1557, metadata !DIExpression()), !dbg !1691
  %457 = getelementptr inbounds i8, ptr %1, i64 116, !dbg !1692
  %458 = load i8, ptr %457, align 1, !dbg !1692, !tbaa !234
  %459 = zext i8 %458 to i16, !dbg !1692
  %460 = getelementptr inbounds i8, ptr %2, i64 228, !dbg !1692
  %461 = load i8, ptr %460, align 1, !dbg !1692, !tbaa !234
  %462 = zext i8 %461 to i16, !dbg !1692
  %463 = sub nsw i16 %459, %462, !dbg !1692
  %464 = getelementptr inbounds i16, ptr %0, i64 57, !dbg !1692
  store i16 %463, ptr %464, align 2, !dbg !1692, !tbaa !258
  call void @llvm.dbg.value(metadata i32 117, metadata !1558, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i32 229, metadata !1560, metadata !DIExpression()), !dbg !1693
  %465 = getelementptr inbounds i8, ptr %1, i64 117, !dbg !1694
  %466 = load i8, ptr %465, align 1, !dbg !1694, !tbaa !234
  %467 = zext i8 %466 to i16, !dbg !1694
  %468 = getelementptr inbounds i8, ptr %2, i64 229, !dbg !1694
  %469 = load i8, ptr %468, align 1, !dbg !1694, !tbaa !234
  %470 = zext i8 %469 to i16, !dbg !1694
  %471 = sub nsw i16 %467, %470, !dbg !1694
  %472 = getelementptr inbounds i16, ptr %0, i64 58, !dbg !1694
  store i16 %471, ptr %472, align 2, !dbg !1694, !tbaa !258
  call void @llvm.dbg.value(metadata i32 102, metadata !1561, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i32 198, metadata !1563, metadata !DIExpression()), !dbg !1695
  %473 = getelementptr inbounds i8, ptr %1, i64 102, !dbg !1696
  %474 = load i8, ptr %473, align 1, !dbg !1696, !tbaa !234
  %475 = zext i8 %474 to i16, !dbg !1696
  %476 = getelementptr inbounds i8, ptr %2, i64 198, !dbg !1696
  %477 = load i8, ptr %476, align 1, !dbg !1696, !tbaa !234
  %478 = zext i8 %477 to i16, !dbg !1696
  %479 = sub nsw i16 %475, %478, !dbg !1696
  %480 = getelementptr inbounds i16, ptr %0, i64 59, !dbg !1696
  store i16 %479, ptr %480, align 2, !dbg !1696, !tbaa !258
  call void @llvm.dbg.value(metadata i32 87, metadata !1564, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 167, metadata !1566, metadata !DIExpression()), !dbg !1697
  %481 = getelementptr inbounds i8, ptr %1, i64 87, !dbg !1698
  %482 = load i8, ptr %481, align 1, !dbg !1698, !tbaa !234
  %483 = zext i8 %482 to i16, !dbg !1698
  %484 = getelementptr inbounds i8, ptr %2, i64 167, !dbg !1698
  %485 = load i8, ptr %484, align 1, !dbg !1698, !tbaa !234
  %486 = zext i8 %485 to i16, !dbg !1698
  %487 = sub nsw i16 %483, %486, !dbg !1698
  %488 = getelementptr inbounds i16, ptr %0, i64 60, !dbg !1698
  store i16 %487, ptr %488, align 2, !dbg !1698, !tbaa !258
  call void @llvm.dbg.value(metadata i32 103, metadata !1567, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i32 199, metadata !1569, metadata !DIExpression()), !dbg !1699
  %489 = getelementptr inbounds i8, ptr %1, i64 103, !dbg !1700
  %490 = load i8, ptr %489, align 1, !dbg !1700, !tbaa !234
  %491 = zext i8 %490 to i16, !dbg !1700
  %492 = getelementptr inbounds i8, ptr %2, i64 199, !dbg !1700
  %493 = load i8, ptr %492, align 1, !dbg !1700, !tbaa !234
  %494 = zext i8 %493 to i16, !dbg !1700
  %495 = sub nsw i16 %491, %494, !dbg !1700
  %496 = getelementptr inbounds i16, ptr %0, i64 61, !dbg !1700
  store i16 %495, ptr %496, align 2, !dbg !1700, !tbaa !258
  call void @llvm.dbg.value(metadata i32 118, metadata !1570, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i32 230, metadata !1572, metadata !DIExpression()), !dbg !1701
  %497 = getelementptr inbounds i8, ptr %1, i64 118, !dbg !1702
  %498 = load i8, ptr %497, align 1, !dbg !1702, !tbaa !234
  %499 = zext i8 %498 to i16, !dbg !1702
  %500 = getelementptr inbounds i8, ptr %2, i64 230, !dbg !1702
  %501 = load i8, ptr %500, align 1, !dbg !1702, !tbaa !234
  %502 = zext i8 %501 to i16, !dbg !1702
  %503 = sub nsw i16 %499, %502, !dbg !1702
  %504 = getelementptr inbounds i16, ptr %0, i64 62, !dbg !1702
  store i16 %503, ptr %504, align 2, !dbg !1702, !tbaa !258
  call void @llvm.dbg.value(metadata i32 119, metadata !1573, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i32 231, metadata !1575, metadata !DIExpression()), !dbg !1703
  %505 = getelementptr inbounds i8, ptr %1, i64 119, !dbg !1704
  %506 = load i8, ptr %505, align 1, !dbg !1704, !tbaa !234
  %507 = zext i8 %506 to i16, !dbg !1704
  %508 = getelementptr inbounds i8, ptr %2, i64 231, !dbg !1704
  %509 = load i8, ptr %508, align 1, !dbg !1704, !tbaa !234
  %510 = zext i8 %509 to i16, !dbg !1704
  %511 = sub nsw i16 %507, %510, !dbg !1704
  %512 = getelementptr inbounds i16, ptr %0, i64 63, !dbg !1704
  store i16 %511, ptr %512, align 2, !dbg !1704, !tbaa !258
  %513 = load i64, ptr %1, align 8, !dbg !1705, !tbaa !940
  store i64 %513, ptr %2, align 8, !dbg !1705, !tbaa !940
  %514 = load i64, ptr %17, align 8, !dbg !1705, !tbaa !940
  store i64 %514, ptr %20, align 8, !dbg !1705, !tbaa !940
  %515 = load i64, ptr %25, align 8, !dbg !1705, !tbaa !940
  store i64 %515, ptr %28, align 8, !dbg !1705, !tbaa !940
  %516 = load i64, ptr %73, align 8, !dbg !1705, !tbaa !940
  store i64 %516, ptr %76, align 8, !dbg !1705, !tbaa !940
  %517 = load i64, ptr %81, align 8, !dbg !1705, !tbaa !940
  store i64 %517, ptr %84, align 8, !dbg !1705, !tbaa !940
  %518 = load i64, ptr %161, align 8, !dbg !1705, !tbaa !940
  store i64 %518, ptr %164, align 8, !dbg !1705, !tbaa !940
  %519 = load i64, ptr %169, align 8, !dbg !1705, !tbaa !940
  store i64 %519, ptr %172, align 8, !dbg !1705, !tbaa !940
  %520 = load i64, ptr %281, align 8, !dbg !1705, !tbaa !940
  store i64 %520, ptr %284, align 8, !dbg !1705, !tbaa !940
  ret void, !dbg !1706
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_sub_4x4_frame(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #9 !dbg !1707 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1709, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata ptr %1, metadata !1710, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata ptr %2, metadata !1711, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i32 0, metadata !1712, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i32 0, metadata !1714, metadata !DIExpression()), !dbg !1761
  %4 = load i8, ptr %1, align 1, !dbg !1762, !tbaa !234
  %5 = zext i8 %4 to i16, !dbg !1762
  %6 = load i8, ptr %2, align 1, !dbg !1762, !tbaa !234
  %7 = zext i8 %6 to i16, !dbg !1762
  %8 = sub nsw i16 %5, %7, !dbg !1762
  store i16 %8, ptr %0, align 2, !dbg !1762, !tbaa !258
  call void @llvm.dbg.value(metadata i32 1, metadata !1715, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i32 1, metadata !1717, metadata !DIExpression()), !dbg !1763
  %9 = getelementptr inbounds i8, ptr %1, i64 1, !dbg !1764
  %10 = load i8, ptr %9, align 1, !dbg !1764, !tbaa !234
  %11 = zext i8 %10 to i16, !dbg !1764
  %12 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1764
  %13 = load i8, ptr %12, align 1, !dbg !1764, !tbaa !234
  %14 = zext i8 %13 to i16, !dbg !1764
  %15 = sub nsw i16 %11, %14, !dbg !1764
  %16 = getelementptr inbounds i16, ptr %0, i64 1, !dbg !1764
  store i16 %15, ptr %16, align 2, !dbg !1764, !tbaa !258
  call void @llvm.dbg.value(metadata i32 16, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 32, metadata !1720, metadata !DIExpression()), !dbg !1765
  %17 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !1766
  %18 = load i8, ptr %17, align 1, !dbg !1766, !tbaa !234
  %19 = zext i8 %18 to i16, !dbg !1766
  %20 = getelementptr inbounds i8, ptr %2, i64 32, !dbg !1766
  %21 = load i8, ptr %20, align 1, !dbg !1766, !tbaa !234
  %22 = zext i8 %21 to i16, !dbg !1766
  %23 = sub nsw i16 %19, %22, !dbg !1766
  %24 = getelementptr inbounds i16, ptr %0, i64 2, !dbg !1766
  store i16 %23, ptr %24, align 2, !dbg !1766, !tbaa !258
  call void @llvm.dbg.value(metadata i32 32, metadata !1721, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i32 64, metadata !1723, metadata !DIExpression()), !dbg !1767
  %25 = getelementptr inbounds i8, ptr %1, i64 32, !dbg !1768
  %26 = load i8, ptr %25, align 1, !dbg !1768, !tbaa !234
  %27 = zext i8 %26 to i16, !dbg !1768
  %28 = getelementptr inbounds i8, ptr %2, i64 64, !dbg !1768
  %29 = load i8, ptr %28, align 1, !dbg !1768, !tbaa !234
  %30 = zext i8 %29 to i16, !dbg !1768
  %31 = sub nsw i16 %27, %30, !dbg !1768
  %32 = getelementptr inbounds i16, ptr %0, i64 3, !dbg !1768
  store i16 %31, ptr %32, align 2, !dbg !1768, !tbaa !258
  call void @llvm.dbg.value(metadata i32 17, metadata !1724, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 33, metadata !1726, metadata !DIExpression()), !dbg !1769
  %33 = getelementptr inbounds i8, ptr %1, i64 17, !dbg !1770
  %34 = load i8, ptr %33, align 1, !dbg !1770, !tbaa !234
  %35 = zext i8 %34 to i16, !dbg !1770
  %36 = getelementptr inbounds i8, ptr %2, i64 33, !dbg !1770
  %37 = load i8, ptr %36, align 1, !dbg !1770, !tbaa !234
  %38 = zext i8 %37 to i16, !dbg !1770
  %39 = sub nsw i16 %35, %38, !dbg !1770
  %40 = getelementptr inbounds i16, ptr %0, i64 4, !dbg !1770
  store i16 %39, ptr %40, align 2, !dbg !1770, !tbaa !258
  call void @llvm.dbg.value(metadata i32 2, metadata !1727, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i32 2, metadata !1729, metadata !DIExpression()), !dbg !1771
  %41 = getelementptr inbounds i8, ptr %1, i64 2, !dbg !1772
  %42 = load i8, ptr %41, align 1, !dbg !1772, !tbaa !234
  %43 = zext i8 %42 to i16, !dbg !1772
  %44 = getelementptr inbounds i8, ptr %2, i64 2, !dbg !1772
  %45 = load i8, ptr %44, align 1, !dbg !1772, !tbaa !234
  %46 = zext i8 %45 to i16, !dbg !1772
  %47 = sub nsw i16 %43, %46, !dbg !1772
  %48 = getelementptr inbounds i16, ptr %0, i64 5, !dbg !1772
  store i16 %47, ptr %48, align 2, !dbg !1772, !tbaa !258
  call void @llvm.dbg.value(metadata i32 3, metadata !1730, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 3, metadata !1732, metadata !DIExpression()), !dbg !1773
  %49 = getelementptr inbounds i8, ptr %1, i64 3, !dbg !1774
  %50 = load i8, ptr %49, align 1, !dbg !1774, !tbaa !234
  %51 = zext i8 %50 to i16, !dbg !1774
  %52 = getelementptr inbounds i8, ptr %2, i64 3, !dbg !1774
  %53 = load i8, ptr %52, align 1, !dbg !1774, !tbaa !234
  %54 = zext i8 %53 to i16, !dbg !1774
  %55 = sub nsw i16 %51, %54, !dbg !1774
  %56 = getelementptr inbounds i16, ptr %0, i64 6, !dbg !1774
  store i16 %55, ptr %56, align 2, !dbg !1774, !tbaa !258
  call void @llvm.dbg.value(metadata i32 18, metadata !1733, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i32 34, metadata !1735, metadata !DIExpression()), !dbg !1775
  %57 = getelementptr inbounds i8, ptr %1, i64 18, !dbg !1776
  %58 = load i8, ptr %57, align 1, !dbg !1776, !tbaa !234
  %59 = zext i8 %58 to i16, !dbg !1776
  %60 = getelementptr inbounds i8, ptr %2, i64 34, !dbg !1776
  %61 = load i8, ptr %60, align 1, !dbg !1776, !tbaa !234
  %62 = zext i8 %61 to i16, !dbg !1776
  %63 = sub nsw i16 %59, %62, !dbg !1776
  %64 = getelementptr inbounds i16, ptr %0, i64 7, !dbg !1776
  store i16 %63, ptr %64, align 2, !dbg !1776, !tbaa !258
  call void @llvm.dbg.value(metadata i32 33, metadata !1736, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i32 65, metadata !1738, metadata !DIExpression()), !dbg !1777
  %65 = getelementptr inbounds i8, ptr %1, i64 33, !dbg !1778
  %66 = load i8, ptr %65, align 1, !dbg !1778, !tbaa !234
  %67 = zext i8 %66 to i16, !dbg !1778
  %68 = getelementptr inbounds i8, ptr %2, i64 65, !dbg !1778
  %69 = load i8, ptr %68, align 1, !dbg !1778, !tbaa !234
  %70 = zext i8 %69 to i16, !dbg !1778
  %71 = sub nsw i16 %67, %70, !dbg !1778
  %72 = getelementptr inbounds i16, ptr %0, i64 8, !dbg !1778
  store i16 %71, ptr %72, align 2, !dbg !1778, !tbaa !258
  call void @llvm.dbg.value(metadata i32 48, metadata !1739, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 96, metadata !1741, metadata !DIExpression()), !dbg !1779
  %73 = getelementptr inbounds i8, ptr %1, i64 48, !dbg !1780
  %74 = load i8, ptr %73, align 1, !dbg !1780, !tbaa !234
  %75 = zext i8 %74 to i16, !dbg !1780
  %76 = getelementptr inbounds i8, ptr %2, i64 96, !dbg !1780
  %77 = load i8, ptr %76, align 1, !dbg !1780, !tbaa !234
  %78 = zext i8 %77 to i16, !dbg !1780
  %79 = sub nsw i16 %75, %78, !dbg !1780
  %80 = getelementptr inbounds i16, ptr %0, i64 9, !dbg !1780
  store i16 %79, ptr %80, align 2, !dbg !1780, !tbaa !258
  call void @llvm.dbg.value(metadata i32 49, metadata !1742, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 97, metadata !1744, metadata !DIExpression()), !dbg !1781
  %81 = getelementptr inbounds i8, ptr %1, i64 49, !dbg !1782
  %82 = load i8, ptr %81, align 1, !dbg !1782, !tbaa !234
  %83 = zext i8 %82 to i16, !dbg !1782
  %84 = getelementptr inbounds i8, ptr %2, i64 97, !dbg !1782
  %85 = load i8, ptr %84, align 1, !dbg !1782, !tbaa !234
  %86 = zext i8 %85 to i16, !dbg !1782
  %87 = sub nsw i16 %83, %86, !dbg !1782
  %88 = getelementptr inbounds i16, ptr %0, i64 10, !dbg !1782
  store i16 %87, ptr %88, align 2, !dbg !1782, !tbaa !258
  call void @llvm.dbg.value(metadata i32 34, metadata !1745, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i32 66, metadata !1747, metadata !DIExpression()), !dbg !1783
  %89 = getelementptr inbounds i8, ptr %1, i64 34, !dbg !1784
  %90 = load i8, ptr %89, align 1, !dbg !1784, !tbaa !234
  %91 = zext i8 %90 to i16, !dbg !1784
  %92 = getelementptr inbounds i8, ptr %2, i64 66, !dbg !1784
  %93 = load i8, ptr %92, align 1, !dbg !1784, !tbaa !234
  %94 = zext i8 %93 to i16, !dbg !1784
  %95 = sub nsw i16 %91, %94, !dbg !1784
  %96 = getelementptr inbounds i16, ptr %0, i64 11, !dbg !1784
  store i16 %95, ptr %96, align 2, !dbg !1784, !tbaa !258
  call void @llvm.dbg.value(metadata i32 19, metadata !1748, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i32 35, metadata !1750, metadata !DIExpression()), !dbg !1785
  %97 = getelementptr inbounds i8, ptr %1, i64 19, !dbg !1786
  %98 = load i8, ptr %97, align 1, !dbg !1786, !tbaa !234
  %99 = zext i8 %98 to i16, !dbg !1786
  %100 = getelementptr inbounds i8, ptr %2, i64 35, !dbg !1786
  %101 = load i8, ptr %100, align 1, !dbg !1786, !tbaa !234
  %102 = zext i8 %101 to i16, !dbg !1786
  %103 = sub nsw i16 %99, %102, !dbg !1786
  %104 = getelementptr inbounds i16, ptr %0, i64 12, !dbg !1786
  store i16 %103, ptr %104, align 2, !dbg !1786, !tbaa !258
  call void @llvm.dbg.value(metadata i32 35, metadata !1751, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i32 67, metadata !1753, metadata !DIExpression()), !dbg !1787
  %105 = getelementptr inbounds i8, ptr %1, i64 35, !dbg !1788
  %106 = load i8, ptr %105, align 1, !dbg !1788, !tbaa !234
  %107 = zext i8 %106 to i16, !dbg !1788
  %108 = getelementptr inbounds i8, ptr %2, i64 67, !dbg !1788
  %109 = load i8, ptr %108, align 1, !dbg !1788, !tbaa !234
  %110 = zext i8 %109 to i16, !dbg !1788
  %111 = sub nsw i16 %107, %110, !dbg !1788
  %112 = getelementptr inbounds i16, ptr %0, i64 13, !dbg !1788
  store i16 %111, ptr %112, align 2, !dbg !1788, !tbaa !258
  call void @llvm.dbg.value(metadata i32 50, metadata !1754, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i32 98, metadata !1756, metadata !DIExpression()), !dbg !1789
  %113 = getelementptr inbounds i8, ptr %1, i64 50, !dbg !1790
  %114 = load i8, ptr %113, align 1, !dbg !1790, !tbaa !234
  %115 = zext i8 %114 to i16, !dbg !1790
  %116 = getelementptr inbounds i8, ptr %2, i64 98, !dbg !1790
  %117 = load i8, ptr %116, align 1, !dbg !1790, !tbaa !234
  %118 = zext i8 %117 to i16, !dbg !1790
  %119 = sub nsw i16 %115, %118, !dbg !1790
  %120 = getelementptr inbounds i16, ptr %0, i64 14, !dbg !1790
  store i16 %119, ptr %120, align 2, !dbg !1790, !tbaa !258
  call void @llvm.dbg.value(metadata i32 51, metadata !1757, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i32 99, metadata !1759, metadata !DIExpression()), !dbg !1791
  %121 = getelementptr inbounds i8, ptr %1, i64 51, !dbg !1792
  %122 = load i8, ptr %121, align 1, !dbg !1792, !tbaa !234
  %123 = zext i8 %122 to i16, !dbg !1792
  %124 = getelementptr inbounds i8, ptr %2, i64 99, !dbg !1792
  %125 = load i8, ptr %124, align 1, !dbg !1792, !tbaa !234
  %126 = zext i8 %125 to i16, !dbg !1792
  %127 = sub nsw i16 %123, %126, !dbg !1792
  %128 = getelementptr inbounds i16, ptr %0, i64 15, !dbg !1792
  store i16 %127, ptr %128, align 2, !dbg !1792, !tbaa !258
  %129 = load i32, ptr %1, align 4, !dbg !1793, !tbaa !826
  store i32 %129, ptr %2, align 4, !dbg !1793, !tbaa !826
  %130 = load i32, ptr %17, align 4, !dbg !1793, !tbaa !826
  store i32 %130, ptr %20, align 4, !dbg !1793, !tbaa !826
  %131 = load i32, ptr %25, align 4, !dbg !1793, !tbaa !826
  store i32 %131, ptr %28, align 4, !dbg !1793, !tbaa !826
  %132 = load i32, ptr %73, align 4, !dbg !1793, !tbaa !826
  store i32 %132, ptr %76, align 4, !dbg !1793, !tbaa !826
  ret void, !dbg !1794
}

declare void @x264_zigzag_scan_4x4_frame_mmx(ptr noundef, ptr noundef) #6

declare void @x264_zigzag_scan_8x8_frame_mmxext(ptr noundef, ptr noundef) #6

declare void @x264_zigzag_scan_8x8_frame_sse2(ptr noundef, ptr noundef) #6

declare void @x264_zigzag_sub_4x4_frame_ssse3(ptr noundef, ptr noundef, ptr noundef) #6

declare void @x264_zigzag_scan_8x8_frame_ssse3(ptr noundef, ptr noundef) #6

declare void @x264_zigzag_scan_4x4_frame_ssse3(ptr noundef, ptr noundef) #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @zigzag_interleave_8x8_cavlc(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #4 !dbg !1795 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1797, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata ptr %1, metadata !1798, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i32 0, metadata !1799, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 0, metadata !1799, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i32 0, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 0, metadata !1800, metadata !DIExpression()), !dbg !1801
  %3 = load i16, ptr %1, align 2, !dbg !1802, !tbaa !258
  store i16 %3, ptr %0, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 1, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 1, metadata !1800, metadata !DIExpression()), !dbg !1801
  %4 = getelementptr inbounds i16, ptr %1, i64 4, !dbg !1802
  %5 = load i16, ptr %4, align 2, !dbg !1802, !tbaa !258
  %6 = getelementptr inbounds i16, ptr %0, i64 1, !dbg !1808
  store i16 %5, ptr %6, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 2, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 2, metadata !1800, metadata !DIExpression()), !dbg !1801
  %7 = getelementptr inbounds i16, ptr %1, i64 8, !dbg !1802
  %8 = load i16, ptr %7, align 2, !dbg !1802, !tbaa !258
  %9 = getelementptr inbounds i16, ptr %0, i64 2, !dbg !1808
  store i16 %8, ptr %9, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 3, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 3, metadata !1800, metadata !DIExpression()), !dbg !1801
  %10 = getelementptr inbounds i16, ptr %1, i64 12, !dbg !1802
  %11 = load i16, ptr %10, align 2, !dbg !1802, !tbaa !258
  %12 = getelementptr inbounds i16, ptr %0, i64 3, !dbg !1808
  store i16 %11, ptr %12, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 4, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 4, metadata !1800, metadata !DIExpression()), !dbg !1801
  %13 = getelementptr inbounds i16, ptr %1, i64 16, !dbg !1802
  %14 = load i16, ptr %13, align 2, !dbg !1802, !tbaa !258
  %15 = getelementptr inbounds i16, ptr %0, i64 4, !dbg !1808
  store i16 %14, ptr %15, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 5, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 5, metadata !1800, metadata !DIExpression()), !dbg !1801
  %16 = getelementptr inbounds i16, ptr %1, i64 20, !dbg !1802
  %17 = load i16, ptr %16, align 2, !dbg !1802, !tbaa !258
  %18 = getelementptr inbounds i16, ptr %0, i64 5, !dbg !1808
  store i16 %17, ptr %18, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 6, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 6, metadata !1800, metadata !DIExpression()), !dbg !1801
  %19 = getelementptr inbounds i16, ptr %1, i64 24, !dbg !1802
  %20 = load i16, ptr %19, align 2, !dbg !1802, !tbaa !258
  %21 = getelementptr inbounds i16, ptr %0, i64 6, !dbg !1808
  store i16 %20, ptr %21, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 7, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 7, metadata !1800, metadata !DIExpression()), !dbg !1801
  %22 = getelementptr inbounds i16, ptr %1, i64 28, !dbg !1802
  %23 = load i16, ptr %22, align 2, !dbg !1802, !tbaa !258
  %24 = getelementptr inbounds i16, ptr %0, i64 7, !dbg !1808
  store i16 %23, ptr %24, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 8, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 8, metadata !1800, metadata !DIExpression()), !dbg !1801
  %25 = getelementptr inbounds i16, ptr %1, i64 32, !dbg !1802
  %26 = load i16, ptr %25, align 2, !dbg !1802, !tbaa !258
  %27 = getelementptr inbounds i16, ptr %0, i64 8, !dbg !1808
  store i16 %26, ptr %27, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 9, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 9, metadata !1800, metadata !DIExpression()), !dbg !1801
  %28 = getelementptr inbounds i16, ptr %1, i64 36, !dbg !1802
  %29 = load i16, ptr %28, align 2, !dbg !1802, !tbaa !258
  %30 = getelementptr inbounds i16, ptr %0, i64 9, !dbg !1808
  store i16 %29, ptr %30, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 10, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 10, metadata !1800, metadata !DIExpression()), !dbg !1801
  %31 = getelementptr inbounds i16, ptr %1, i64 40, !dbg !1802
  %32 = load i16, ptr %31, align 2, !dbg !1802, !tbaa !258
  %33 = getelementptr inbounds i16, ptr %0, i64 10, !dbg !1808
  store i16 %32, ptr %33, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 11, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 11, metadata !1800, metadata !DIExpression()), !dbg !1801
  %34 = getelementptr inbounds i16, ptr %1, i64 44, !dbg !1802
  %35 = load i16, ptr %34, align 2, !dbg !1802, !tbaa !258
  %36 = getelementptr inbounds i16, ptr %0, i64 11, !dbg !1808
  store i16 %35, ptr %36, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 12, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 12, metadata !1800, metadata !DIExpression()), !dbg !1801
  %37 = getelementptr inbounds i16, ptr %1, i64 48, !dbg !1802
  %38 = load i16, ptr %37, align 2, !dbg !1802, !tbaa !258
  %39 = getelementptr inbounds i16, ptr %0, i64 12, !dbg !1808
  store i16 %38, ptr %39, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 13, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 13, metadata !1800, metadata !DIExpression()), !dbg !1801
  %40 = getelementptr inbounds i16, ptr %1, i64 52, !dbg !1802
  %41 = load i16, ptr %40, align 2, !dbg !1802, !tbaa !258
  %42 = getelementptr inbounds i16, ptr %0, i64 13, !dbg !1808
  store i16 %41, ptr %42, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 14, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 14, metadata !1800, metadata !DIExpression()), !dbg !1801
  %43 = getelementptr inbounds i16, ptr %1, i64 56, !dbg !1802
  %44 = load i16, ptr %43, align 2, !dbg !1802, !tbaa !258
  %45 = getelementptr inbounds i16, ptr %0, i64 14, !dbg !1808
  store i16 %44, ptr %45, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 15, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 15, metadata !1800, metadata !DIExpression()), !dbg !1801
  %46 = getelementptr inbounds i16, ptr %1, i64 60, !dbg !1802
  %47 = load i16, ptr %46, align 2, !dbg !1802, !tbaa !258
  %48 = getelementptr inbounds i16, ptr %0, i64 15, !dbg !1808
  store i16 %47, ptr %48, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 16, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 1, metadata !1799, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 1, metadata !1799, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i32 0, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 0, metadata !1800, metadata !DIExpression()), !dbg !1801
  %49 = getelementptr inbounds i16, ptr %1, i64 1, !dbg !1802
  %50 = load i16, ptr %49, align 2, !dbg !1802, !tbaa !258
  %51 = getelementptr inbounds i16, ptr %0, i64 16, !dbg !1808
  store i16 %50, ptr %51, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 1, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 1, metadata !1800, metadata !DIExpression()), !dbg !1801
  %52 = getelementptr inbounds i16, ptr %1, i64 5, !dbg !1802
  %53 = load i16, ptr %52, align 2, !dbg !1802, !tbaa !258
  %54 = getelementptr inbounds i16, ptr %0, i64 17, !dbg !1808
  store i16 %53, ptr %54, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 2, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 2, metadata !1800, metadata !DIExpression()), !dbg !1801
  %55 = getelementptr inbounds i16, ptr %1, i64 9, !dbg !1802
  %56 = load i16, ptr %55, align 2, !dbg !1802, !tbaa !258
  %57 = getelementptr inbounds i16, ptr %0, i64 18, !dbg !1808
  store i16 %56, ptr %57, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 3, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 3, metadata !1800, metadata !DIExpression()), !dbg !1801
  %58 = getelementptr inbounds i16, ptr %1, i64 13, !dbg !1802
  %59 = load i16, ptr %58, align 2, !dbg !1802, !tbaa !258
  %60 = getelementptr inbounds i16, ptr %0, i64 19, !dbg !1808
  store i16 %59, ptr %60, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 4, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 4, metadata !1800, metadata !DIExpression()), !dbg !1801
  %61 = getelementptr inbounds i16, ptr %1, i64 17, !dbg !1802
  %62 = load i16, ptr %61, align 2, !dbg !1802, !tbaa !258
  %63 = getelementptr inbounds i16, ptr %0, i64 20, !dbg !1808
  store i16 %62, ptr %63, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 5, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 5, metadata !1800, metadata !DIExpression()), !dbg !1801
  %64 = getelementptr inbounds i16, ptr %1, i64 21, !dbg !1802
  %65 = load i16, ptr %64, align 2, !dbg !1802, !tbaa !258
  %66 = getelementptr inbounds i16, ptr %0, i64 21, !dbg !1808
  store i16 %65, ptr %66, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 6, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 6, metadata !1800, metadata !DIExpression()), !dbg !1801
  %67 = getelementptr inbounds i16, ptr %1, i64 25, !dbg !1802
  %68 = load i16, ptr %67, align 2, !dbg !1802, !tbaa !258
  %69 = getelementptr inbounds i16, ptr %0, i64 22, !dbg !1808
  store i16 %68, ptr %69, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 7, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 7, metadata !1800, metadata !DIExpression()), !dbg !1801
  %70 = getelementptr inbounds i16, ptr %1, i64 29, !dbg !1802
  %71 = load i16, ptr %70, align 2, !dbg !1802, !tbaa !258
  %72 = getelementptr inbounds i16, ptr %0, i64 23, !dbg !1808
  store i16 %71, ptr %72, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 8, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 8, metadata !1800, metadata !DIExpression()), !dbg !1801
  %73 = getelementptr inbounds i16, ptr %1, i64 33, !dbg !1802
  %74 = load i16, ptr %73, align 2, !dbg !1802, !tbaa !258
  %75 = getelementptr inbounds i16, ptr %0, i64 24, !dbg !1808
  store i16 %74, ptr %75, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 9, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 9, metadata !1800, metadata !DIExpression()), !dbg !1801
  %76 = getelementptr inbounds i16, ptr %1, i64 37, !dbg !1802
  %77 = load i16, ptr %76, align 2, !dbg !1802, !tbaa !258
  %78 = getelementptr inbounds i16, ptr %0, i64 25, !dbg !1808
  store i16 %77, ptr %78, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 10, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 10, metadata !1800, metadata !DIExpression()), !dbg !1801
  %79 = getelementptr inbounds i16, ptr %1, i64 41, !dbg !1802
  %80 = load i16, ptr %79, align 2, !dbg !1802, !tbaa !258
  %81 = getelementptr inbounds i16, ptr %0, i64 26, !dbg !1808
  store i16 %80, ptr %81, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 11, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 11, metadata !1800, metadata !DIExpression()), !dbg !1801
  %82 = getelementptr inbounds i16, ptr %1, i64 45, !dbg !1802
  %83 = load i16, ptr %82, align 2, !dbg !1802, !tbaa !258
  %84 = getelementptr inbounds i16, ptr %0, i64 27, !dbg !1808
  store i16 %83, ptr %84, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 12, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 12, metadata !1800, metadata !DIExpression()), !dbg !1801
  %85 = getelementptr inbounds i16, ptr %1, i64 49, !dbg !1802
  %86 = load i16, ptr %85, align 2, !dbg !1802, !tbaa !258
  %87 = getelementptr inbounds i16, ptr %0, i64 28, !dbg !1808
  store i16 %86, ptr %87, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 13, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 13, metadata !1800, metadata !DIExpression()), !dbg !1801
  %88 = getelementptr inbounds i16, ptr %1, i64 53, !dbg !1802
  %89 = load i16, ptr %88, align 2, !dbg !1802, !tbaa !258
  %90 = getelementptr inbounds i16, ptr %0, i64 29, !dbg !1808
  store i16 %89, ptr %90, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 14, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 14, metadata !1800, metadata !DIExpression()), !dbg !1801
  %91 = getelementptr inbounds i16, ptr %1, i64 57, !dbg !1802
  %92 = load i16, ptr %91, align 2, !dbg !1802, !tbaa !258
  %93 = getelementptr inbounds i16, ptr %0, i64 30, !dbg !1808
  store i16 %92, ptr %93, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 15, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 15, metadata !1800, metadata !DIExpression()), !dbg !1801
  %94 = getelementptr inbounds i16, ptr %1, i64 61, !dbg !1802
  %95 = load i16, ptr %94, align 2, !dbg !1802, !tbaa !258
  %96 = getelementptr inbounds i16, ptr %0, i64 31, !dbg !1808
  store i16 %95, ptr %96, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 16, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 2, metadata !1799, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 2, metadata !1799, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i32 0, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 0, metadata !1800, metadata !DIExpression()), !dbg !1801
  %97 = getelementptr inbounds i16, ptr %1, i64 2, !dbg !1802
  %98 = load i16, ptr %97, align 2, !dbg !1802, !tbaa !258
  %99 = getelementptr inbounds i16, ptr %0, i64 32, !dbg !1808
  store i16 %98, ptr %99, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 1, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 1, metadata !1800, metadata !DIExpression()), !dbg !1801
  %100 = getelementptr inbounds i16, ptr %1, i64 6, !dbg !1802
  %101 = load i16, ptr %100, align 2, !dbg !1802, !tbaa !258
  %102 = getelementptr inbounds i16, ptr %0, i64 33, !dbg !1808
  store i16 %101, ptr %102, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 2, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 2, metadata !1800, metadata !DIExpression()), !dbg !1801
  %103 = getelementptr inbounds i16, ptr %1, i64 10, !dbg !1802
  %104 = load i16, ptr %103, align 2, !dbg !1802, !tbaa !258
  %105 = getelementptr inbounds i16, ptr %0, i64 34, !dbg !1808
  store i16 %104, ptr %105, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 3, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 3, metadata !1800, metadata !DIExpression()), !dbg !1801
  %106 = getelementptr inbounds i16, ptr %1, i64 14, !dbg !1802
  %107 = load i16, ptr %106, align 2, !dbg !1802, !tbaa !258
  %108 = getelementptr inbounds i16, ptr %0, i64 35, !dbg !1808
  store i16 %107, ptr %108, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 4, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 4, metadata !1800, metadata !DIExpression()), !dbg !1801
  %109 = getelementptr inbounds i16, ptr %1, i64 18, !dbg !1802
  %110 = load i16, ptr %109, align 2, !dbg !1802, !tbaa !258
  %111 = getelementptr inbounds i16, ptr %0, i64 36, !dbg !1808
  store i16 %110, ptr %111, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 5, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 5, metadata !1800, metadata !DIExpression()), !dbg !1801
  %112 = getelementptr inbounds i16, ptr %1, i64 22, !dbg !1802
  %113 = load i16, ptr %112, align 2, !dbg !1802, !tbaa !258
  %114 = getelementptr inbounds i16, ptr %0, i64 37, !dbg !1808
  store i16 %113, ptr %114, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 6, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 6, metadata !1800, metadata !DIExpression()), !dbg !1801
  %115 = getelementptr inbounds i16, ptr %1, i64 26, !dbg !1802
  %116 = load i16, ptr %115, align 2, !dbg !1802, !tbaa !258
  %117 = getelementptr inbounds i16, ptr %0, i64 38, !dbg !1808
  store i16 %116, ptr %117, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 7, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 7, metadata !1800, metadata !DIExpression()), !dbg !1801
  %118 = getelementptr inbounds i16, ptr %1, i64 30, !dbg !1802
  %119 = load i16, ptr %118, align 2, !dbg !1802, !tbaa !258
  %120 = getelementptr inbounds i16, ptr %0, i64 39, !dbg !1808
  store i16 %119, ptr %120, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 8, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 8, metadata !1800, metadata !DIExpression()), !dbg !1801
  %121 = getelementptr inbounds i16, ptr %1, i64 34, !dbg !1802
  %122 = load i16, ptr %121, align 2, !dbg !1802, !tbaa !258
  %123 = getelementptr inbounds i16, ptr %0, i64 40, !dbg !1808
  store i16 %122, ptr %123, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 9, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 9, metadata !1800, metadata !DIExpression()), !dbg !1801
  %124 = getelementptr inbounds i16, ptr %1, i64 38, !dbg !1802
  %125 = load i16, ptr %124, align 2, !dbg !1802, !tbaa !258
  %126 = getelementptr inbounds i16, ptr %0, i64 41, !dbg !1808
  store i16 %125, ptr %126, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 10, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 10, metadata !1800, metadata !DIExpression()), !dbg !1801
  %127 = getelementptr inbounds i16, ptr %1, i64 42, !dbg !1802
  %128 = load i16, ptr %127, align 2, !dbg !1802, !tbaa !258
  %129 = getelementptr inbounds i16, ptr %0, i64 42, !dbg !1808
  store i16 %128, ptr %129, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 11, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 11, metadata !1800, metadata !DIExpression()), !dbg !1801
  %130 = getelementptr inbounds i16, ptr %1, i64 46, !dbg !1802
  %131 = load i16, ptr %130, align 2, !dbg !1802, !tbaa !258
  %132 = getelementptr inbounds i16, ptr %0, i64 43, !dbg !1808
  store i16 %131, ptr %132, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 12, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 12, metadata !1800, metadata !DIExpression()), !dbg !1801
  %133 = getelementptr inbounds i16, ptr %1, i64 50, !dbg !1802
  %134 = load i16, ptr %133, align 2, !dbg !1802, !tbaa !258
  %135 = getelementptr inbounds i16, ptr %0, i64 44, !dbg !1808
  store i16 %134, ptr %135, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 13, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 13, metadata !1800, metadata !DIExpression()), !dbg !1801
  %136 = getelementptr inbounds i16, ptr %1, i64 54, !dbg !1802
  %137 = load i16, ptr %136, align 2, !dbg !1802, !tbaa !258
  %138 = getelementptr inbounds i16, ptr %0, i64 45, !dbg !1808
  store i16 %137, ptr %138, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 14, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 14, metadata !1800, metadata !DIExpression()), !dbg !1801
  %139 = getelementptr inbounds i16, ptr %1, i64 58, !dbg !1802
  %140 = load i16, ptr %139, align 2, !dbg !1802, !tbaa !258
  %141 = getelementptr inbounds i16, ptr %0, i64 46, !dbg !1808
  store i16 %140, ptr %141, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 15, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 15, metadata !1800, metadata !DIExpression()), !dbg !1801
  %142 = getelementptr inbounds i16, ptr %1, i64 62, !dbg !1802
  %143 = load i16, ptr %142, align 2, !dbg !1802, !tbaa !258
  %144 = getelementptr inbounds i16, ptr %0, i64 47, !dbg !1808
  store i16 %143, ptr %144, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 16, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 3, metadata !1799, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 3, metadata !1799, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i32 0, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 0, metadata !1800, metadata !DIExpression()), !dbg !1801
  %145 = getelementptr inbounds i16, ptr %1, i64 3, !dbg !1802
  %146 = load i16, ptr %145, align 2, !dbg !1802, !tbaa !258
  %147 = getelementptr inbounds i16, ptr %0, i64 48, !dbg !1808
  store i16 %146, ptr %147, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 1, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 1, metadata !1800, metadata !DIExpression()), !dbg !1801
  %148 = getelementptr inbounds i16, ptr %1, i64 7, !dbg !1802
  %149 = load i16, ptr %148, align 2, !dbg !1802, !tbaa !258
  %150 = getelementptr inbounds i16, ptr %0, i64 49, !dbg !1808
  store i16 %149, ptr %150, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 2, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 2, metadata !1800, metadata !DIExpression()), !dbg !1801
  %151 = getelementptr inbounds i16, ptr %1, i64 11, !dbg !1802
  %152 = load i16, ptr %151, align 2, !dbg !1802, !tbaa !258
  %153 = getelementptr inbounds i16, ptr %0, i64 50, !dbg !1808
  store i16 %152, ptr %153, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 3, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 3, metadata !1800, metadata !DIExpression()), !dbg !1801
  %154 = getelementptr inbounds i16, ptr %1, i64 15, !dbg !1802
  %155 = load i16, ptr %154, align 2, !dbg !1802, !tbaa !258
  %156 = getelementptr inbounds i16, ptr %0, i64 51, !dbg !1808
  store i16 %155, ptr %156, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 4, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 4, metadata !1800, metadata !DIExpression()), !dbg !1801
  %157 = getelementptr inbounds i16, ptr %1, i64 19, !dbg !1802
  %158 = load i16, ptr %157, align 2, !dbg !1802, !tbaa !258
  %159 = getelementptr inbounds i16, ptr %0, i64 52, !dbg !1808
  store i16 %158, ptr %159, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 5, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 5, metadata !1800, metadata !DIExpression()), !dbg !1801
  %160 = getelementptr inbounds i16, ptr %1, i64 23, !dbg !1802
  %161 = load i16, ptr %160, align 2, !dbg !1802, !tbaa !258
  %162 = getelementptr inbounds i16, ptr %0, i64 53, !dbg !1808
  store i16 %161, ptr %162, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 6, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 6, metadata !1800, metadata !DIExpression()), !dbg !1801
  %163 = getelementptr inbounds i16, ptr %1, i64 27, !dbg !1802
  %164 = load i16, ptr %163, align 2, !dbg !1802, !tbaa !258
  %165 = getelementptr inbounds i16, ptr %0, i64 54, !dbg !1808
  store i16 %164, ptr %165, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 7, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 7, metadata !1800, metadata !DIExpression()), !dbg !1801
  %166 = getelementptr inbounds i16, ptr %1, i64 31, !dbg !1802
  %167 = load i16, ptr %166, align 2, !dbg !1802, !tbaa !258
  %168 = getelementptr inbounds i16, ptr %0, i64 55, !dbg !1808
  store i16 %167, ptr %168, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 8, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 8, metadata !1800, metadata !DIExpression()), !dbg !1801
  %169 = getelementptr inbounds i16, ptr %1, i64 35, !dbg !1802
  %170 = load i16, ptr %169, align 2, !dbg !1802, !tbaa !258
  %171 = getelementptr inbounds i16, ptr %0, i64 56, !dbg !1808
  store i16 %170, ptr %171, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 9, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 9, metadata !1800, metadata !DIExpression()), !dbg !1801
  %172 = getelementptr inbounds i16, ptr %1, i64 39, !dbg !1802
  %173 = load i16, ptr %172, align 2, !dbg !1802, !tbaa !258
  %174 = getelementptr inbounds i16, ptr %0, i64 57, !dbg !1808
  store i16 %173, ptr %174, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 10, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 10, metadata !1800, metadata !DIExpression()), !dbg !1801
  %175 = getelementptr inbounds i16, ptr %1, i64 43, !dbg !1802
  %176 = load i16, ptr %175, align 2, !dbg !1802, !tbaa !258
  %177 = getelementptr inbounds i16, ptr %0, i64 58, !dbg !1808
  store i16 %176, ptr %177, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 11, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 11, metadata !1800, metadata !DIExpression()), !dbg !1801
  %178 = getelementptr inbounds i16, ptr %1, i64 47, !dbg !1802
  %179 = load i16, ptr %178, align 2, !dbg !1802, !tbaa !258
  %180 = getelementptr inbounds i16, ptr %0, i64 59, !dbg !1808
  store i16 %179, ptr %180, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 12, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 12, metadata !1800, metadata !DIExpression()), !dbg !1801
  %181 = getelementptr inbounds i16, ptr %1, i64 51, !dbg !1802
  %182 = load i16, ptr %181, align 2, !dbg !1802, !tbaa !258
  %183 = getelementptr inbounds i16, ptr %0, i64 60, !dbg !1808
  store i16 %182, ptr %183, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 13, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 13, metadata !1800, metadata !DIExpression()), !dbg !1801
  %184 = getelementptr inbounds i16, ptr %1, i64 55, !dbg !1802
  %185 = load i16, ptr %184, align 2, !dbg !1802, !tbaa !258
  %186 = getelementptr inbounds i16, ptr %0, i64 61, !dbg !1808
  store i16 %185, ptr %186, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 14, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 14, metadata !1800, metadata !DIExpression()), !dbg !1801
  %187 = getelementptr inbounds i16, ptr %1, i64 59, !dbg !1802
  %188 = load i16, ptr %187, align 2, !dbg !1802, !tbaa !258
  %189 = getelementptr inbounds i16, ptr %0, i64 62, !dbg !1808
  store i16 %188, ptr %189, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 15, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 15, metadata !1800, metadata !DIExpression()), !dbg !1801
  %190 = getelementptr inbounds i16, ptr %1, i64 63, !dbg !1802
  %191 = load i16, ptr %190, align 2, !dbg !1802, !tbaa !258
  %192 = getelementptr inbounds i16, ptr %0, i64 63, !dbg !1808
  store i16 %191, ptr %192, align 2, !dbg !1807, !tbaa !258
  call void @llvm.dbg.value(metadata i64 16, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 4, metadata !1799, metadata !DIExpression()), !dbg !1801
  ret void, !dbg !1809
}

declare void @x264_zigzag_interleave_8x8_cavlc_mmx(ptr noundef, ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_dct4_weight2_zigzag", scope: !2, file: !3, line: 32, type: !54, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !20, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "common/dct.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "f02a5e0667e3aa61da16184a593bb20c")
!4 = !{!5, !11, !16}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !7, line: 25, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !9, line: 39, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!10 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 26, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !15)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !13, line: 27, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !19)
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!0, !21, !28, !38, !47, !51}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "x264_dct8_weight2_zigzag", scope: !2, file: !3, line: 33, type: !23, isLocal: false, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 4096, elements: !25)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !{!26, !27}
!26 = !DISubrange(count: 2)
!27 = !DISubrange(count: 64)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "x264_dct4_weight2_tab", scope: !2, file: !30, line: 59, type: !31, isLocal: true, isDefinition: true)
!30 = !DIFile(filename: "common/dct.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "eb76275dd7785989f0d8a4ada39e3c74")
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 256, elements: !36)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !13, line: 25, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !9, line: 40, baseType: !35)
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !{!37}
!37 = !DISubrange(count: 16)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "x264_zigzag_scan4", scope: !2, file: !40, line: 187, type: !41, isLocal: true, isDefinition: true)
!40 = !DIFile(filename: "common/macroblock.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "0b0c175005b691009f3df3e457cfe9c0")
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !46)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !13, line: 24, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !45)
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !{!26, !37}
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "x264_dct8_weight2_tab", scope: !2, file: !30, line: 73, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 1024, elements: !50)
!50 = !{!27}
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "x264_zigzag_scan8", scope: !2, file: !40, line: 194, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1024, elements: !25)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1024, elements: !46)
!55 = !{i32 7, !"Dwarf Version", i32 5}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = !{i32 8, !"PIC Level", i32 2}
!59 = !{i32 7, !"PIE Level", i32 2}
!60 = !{i32 7, !"uwtable", i32 2}
!61 = !{!"clang version 16.0.0"}
!62 = distinct !DISubprogram(name: "x264_dct_init", scope: !3, file: !3, line: 355, type: !63, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !123)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !24, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !30, line: 112, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 89, size: 768, elements: !68)
!68 = !{!69, !78, !82, !89, !93, !94, !95, !103, !107, !114, !118, !122}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !67, file: !30, line: 94, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73, !77, !77}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 4)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !67, file: !30, line: 95, baseType: !79, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !77, !73}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !67, file: !30, line: 97, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !77, !77}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !88)
!88 = !{!76, !76}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !67, file: !30, line: 98, baseType: !90, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !77, !86}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !67, file: !30, line: 100, baseType: !83, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !67, file: !30, line: 101, baseType: !90, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !67, file: !30, line: 103, baseType: !96, size: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !99, !77, !77}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 8)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !67, file: !30, line: 104, baseType: !104, size: 64, offset: 448)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !77, !99}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !67, file: !30, line: 106, baseType: !108, size: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !111, !77, !77}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024, elements: !113)
!113 = !{!102, !102}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !67, file: !30, line: 107, baseType: !115, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !77, !111}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !67, file: !30, line: 109, baseType: !119, size: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !73}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !67, file: !30, line: 110, baseType: !119, size: 64, offset: 704)
!123 = !{!124, !125}
!124 = !DILocalVariable(name: "cpu", arg: 1, scope: !62, file: !3, line: 355, type: !24)
!125 = !DILocalVariable(name: "dctf", arg: 2, scope: !62, file: !3, line: 355, type: !65)
!126 = !DILocation(line: 0, scope: !62)
!127 = !DILocation(line: 357, column: 25, scope: !62)
!128 = !{!129, !130, i64 0}
!129 = !{!"", !130, i64 0, !130, i64 8, !130, i64 16, !130, i64 24, !130, i64 32, !130, i64 40, !130, i64 48, !130, i64 56, !130, i64 64, !130, i64 72, !130, i64 80, !130, i64 88}
!130 = !{!"any pointer", !131, i64 0}
!131 = !{!"omnipotent char", !132, i64 0}
!132 = !{!"Simple C/C++ TBAA"}
!133 = !DILocation(line: 358, column: 11, scope: !62)
!134 = !DILocation(line: 358, column: 25, scope: !62)
!135 = !{!129, !130, i64 8}
!136 = !DILocation(line: 360, column: 11, scope: !62)
!137 = !DILocation(line: 360, column: 25, scope: !62)
!138 = !{!129, !130, i64 16}
!139 = !DILocation(line: 361, column: 11, scope: !62)
!140 = !DILocation(line: 361, column: 25, scope: !62)
!141 = !{!129, !130, i64 24}
!142 = !DILocation(line: 363, column: 11, scope: !62)
!143 = !DILocation(line: 363, column: 25, scope: !62)
!144 = !{!129, !130, i64 32}
!145 = !DILocation(line: 364, column: 11, scope: !62)
!146 = !DILocation(line: 364, column: 25, scope: !62)
!147 = !{!129, !130, i64 40}
!148 = !DILocation(line: 366, column: 11, scope: !62)
!149 = !DILocation(line: 366, column: 25, scope: !62)
!150 = !{!129, !130, i64 48}
!151 = !DILocation(line: 367, column: 11, scope: !62)
!152 = !DILocation(line: 367, column: 25, scope: !62)
!153 = !{!129, !130, i64 56}
!154 = !DILocation(line: 369, column: 11, scope: !62)
!155 = !DILocation(line: 369, column: 26, scope: !62)
!156 = !{!129, !130, i64 64}
!157 = !DILocation(line: 370, column: 11, scope: !62)
!158 = !DILocation(line: 370, column: 26, scope: !62)
!159 = !{!129, !130, i64 72}
!160 = !DILocation(line: 372, column: 11, scope: !62)
!161 = !DILocation(line: 372, column: 21, scope: !62)
!162 = !{!129, !130, i64 80}
!163 = !DILocation(line: 373, column: 11, scope: !62)
!164 = !DILocation(line: 373, column: 21, scope: !62)
!165 = !{!129, !130, i64 88}
!166 = !DILocation(line: 376, column: 12, scope: !167)
!167 = distinct !DILexicalBlock(scope: !62, file: !3, line: 376, column: 9)
!168 = !DILocation(line: 376, column: 9, scope: !62)
!169 = !DILocation(line: 378, column: 29, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !3, line: 377, column: 5)
!171 = !DILocation(line: 379, column: 29, scope: !170)
!172 = !DILocation(line: 380, column: 29, scope: !170)
!173 = !DILocation(line: 381, column: 29, scope: !170)
!174 = !DILocation(line: 394, column: 5, scope: !170)
!175 = !DILocation(line: 396, column: 12, scope: !176)
!176 = distinct !DILexicalBlock(scope: !62, file: !3, line: 396, column: 9)
!177 = !DILocation(line: 396, column: 9, scope: !62)
!178 = !DILocation(line: 398, column: 29, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !3, line: 397, column: 5)
!180 = !DILocation(line: 399, column: 29, scope: !179)
!181 = !DILocation(line: 400, column: 29, scope: !179)
!182 = !DILocation(line: 401, column: 29, scope: !179)
!183 = !DILocation(line: 403, column: 29, scope: !179)
!184 = !DILocation(line: 404, column: 29, scope: !179)
!185 = !DILocation(line: 405, column: 29, scope: !179)
!186 = !DILocation(line: 406, column: 29, scope: !179)
!187 = !DILocation(line: 407, column: 5, scope: !179)
!188 = !DILocation(line: 428, column: 1, scope: !62)
!189 = distinct !DISubprogram(name: "sub4x4_dct", scope: !3, file: !3, line: 122, type: !71, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !197, !202, !203, !204, !205, !209, !210, !211}
!191 = !DILocalVariable(name: "dct", arg: 1, scope: !189, file: !3, line: 122, type: !73)
!192 = !DILocalVariable(name: "pix1", arg: 2, scope: !189, file: !3, line: 122, type: !77)
!193 = !DILocalVariable(name: "pix2", arg: 3, scope: !189, file: !3, line: 122, type: !77)
!194 = !DILocalVariable(name: "d", scope: !189, file: !3, line: 124, type: !87)
!195 = !DILocalVariable(name: "tmp", scope: !189, file: !3, line: 125, type: !87)
!196 = !DILocalVariable(name: "i", scope: !189, file: !3, line: 126, type: !24)
!197 = !DILocalVariable(name: "s03", scope: !198, file: !3, line: 132, type: !201)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 131, column: 5)
!199 = distinct !DILexicalBlock(scope: !200, file: !3, line: 130, column: 5)
!200 = distinct !DILexicalBlock(scope: !189, file: !3, line: 130, column: 5)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!202 = !DILocalVariable(name: "s12", scope: !198, file: !3, line: 133, type: !201)
!203 = !DILocalVariable(name: "d03", scope: !198, file: !3, line: 134, type: !201)
!204 = !DILocalVariable(name: "d12", scope: !198, file: !3, line: 135, type: !201)
!205 = !DILocalVariable(name: "s03", scope: !206, file: !3, line: 145, type: !201)
!206 = distinct !DILexicalBlock(scope: !207, file: !3, line: 144, column: 5)
!207 = distinct !DILexicalBlock(scope: !208, file: !3, line: 143, column: 5)
!208 = distinct !DILexicalBlock(scope: !189, file: !3, line: 143, column: 5)
!209 = !DILocalVariable(name: "s12", scope: !206, file: !3, line: 146, type: !201)
!210 = !DILocalVariable(name: "d03", scope: !206, file: !3, line: 147, type: !201)
!211 = !DILocalVariable(name: "d12", scope: !206, file: !3, line: 148, type: !201)
!212 = !DILocation(line: 0, scope: !189)
!213 = !DILocalVariable(name: "diff", arg: 1, scope: !214, file: !3, line: 107, type: !5)
!214 = distinct !DISubprogram(name: "pixel_sub_wxh", scope: !3, file: !3, line: 107, type: !215, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !5, !24, !77, !24, !77, !24}
!217 = !{!213, !218, !219, !220, !221, !222, !223, !224}
!218 = !DILocalVariable(name: "i_size", arg: 2, scope: !214, file: !3, line: 107, type: !24)
!219 = !DILocalVariable(name: "pix1", arg: 3, scope: !214, file: !3, line: 108, type: !77)
!220 = !DILocalVariable(name: "i_pix1", arg: 4, scope: !214, file: !3, line: 108, type: !24)
!221 = !DILocalVariable(name: "pix2", arg: 5, scope: !214, file: !3, line: 108, type: !77)
!222 = !DILocalVariable(name: "i_pix2", arg: 6, scope: !214, file: !3, line: 108, type: !24)
!223 = !DILocalVariable(name: "y", scope: !214, file: !3, line: 110, type: !24)
!224 = !DILocalVariable(name: "x", scope: !214, file: !3, line: 110, type: !24)
!225 = !DILocation(line: 0, scope: !214, inlinedAt: !226)
!226 = distinct !DILocation(line: 128, column: 5, scope: !189)
!227 = !DILocation(line: 115, column: 34, scope: !228, inlinedAt: !226)
!228 = distinct !DILexicalBlock(scope: !229, file: !3, line: 114, column: 9)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 113, column: 9)
!230 = distinct !DILexicalBlock(scope: !231, file: !3, line: 113, column: 9)
!231 = distinct !DILexicalBlock(scope: !232, file: !3, line: 112, column: 5)
!232 = distinct !DILexicalBlock(scope: !233, file: !3, line: 111, column: 5)
!233 = distinct !DILexicalBlock(scope: !214, file: !3, line: 111, column: 5)
!234 = !{!131, !131, i64 0}
!235 = !DILocation(line: 115, column: 44, scope: !228, inlinedAt: !226)
!236 = !DILocation(line: 115, column: 42, scope: !228, inlinedAt: !226)
!237 = !DILocation(line: 117, column: 14, scope: !231, inlinedAt: !226)
!238 = !DILocation(line: 118, column: 14, scope: !231, inlinedAt: !226)
!239 = !DILocation(line: 132, column: 33, scope: !198)
!240 = !DILocation(line: 0, scope: !198)
!241 = !DILocation(line: 133, column: 33, scope: !198)
!242 = !DILocation(line: 134, column: 33, scope: !198)
!243 = !DILocation(line: 135, column: 33, scope: !198)
!244 = !DILocation(line: 137, column: 27, scope: !198)
!245 = !DILocation(line: 138, column: 22, scope: !198)
!246 = !DILocation(line: 138, column: 27, scope: !198)
!247 = !DILocation(line: 139, column: 27, scope: !198)
!248 = !DILocation(line: 140, column: 30, scope: !198)
!249 = !DILocation(line: 140, column: 27, scope: !198)
!250 = !DILocation(line: 145, column: 35, scope: !206)
!251 = !DILocation(line: 0, scope: !206)
!252 = !DILocation(line: 146, column: 35, scope: !206)
!253 = !DILocation(line: 147, column: 35, scope: !206)
!254 = !DILocation(line: 148, column: 35, scope: !206)
!255 = !DILocation(line: 150, column: 27, scope: !206)
!256 = !DILocation(line: 150, column: 23, scope: !206)
!257 = !DILocation(line: 150, column: 19, scope: !206)
!258 = !{!259, !259, i64 0}
!259 = !{!"short", !131, i64 0}
!260 = !DILocation(line: 151, column: 22, scope: !206)
!261 = !DILocation(line: 151, column: 27, scope: !206)
!262 = !DILocation(line: 151, column: 21, scope: !206)
!263 = !DILocation(line: 151, column: 9, scope: !206)
!264 = !DILocation(line: 151, column: 19, scope: !206)
!265 = !DILocation(line: 152, column: 27, scope: !206)
!266 = !DILocation(line: 152, column: 23, scope: !206)
!267 = !DILocation(line: 152, column: 9, scope: !206)
!268 = !DILocation(line: 152, column: 19, scope: !206)
!269 = !DILocation(line: 153, column: 30, scope: !206)
!270 = !DILocation(line: 153, column: 27, scope: !206)
!271 = !DILocation(line: 153, column: 23, scope: !206)
!272 = !DILocation(line: 153, column: 9, scope: !206)
!273 = !DILocation(line: 153, column: 19, scope: !206)
!274 = !DILocation(line: 150, column: 9, scope: !206)
!275 = !DILocation(line: 155, column: 1, scope: !189)
!276 = distinct !DISubprogram(name: "add4x4_idct", scope: !3, file: !3, line: 174, type: !80, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !289, !290, !291, !292, !296, !297, !298}
!278 = !DILocalVariable(name: "p_dst", arg: 1, scope: !276, file: !3, line: 174, type: !77)
!279 = !DILocalVariable(name: "dct", arg: 2, scope: !276, file: !3, line: 174, type: !73)
!280 = !DILocalVariable(name: "d", scope: !276, file: !3, line: 176, type: !87)
!281 = !DILocalVariable(name: "tmp", scope: !276, file: !3, line: 177, type: !87)
!282 = !DILocalVariable(name: "x", scope: !276, file: !3, line: 178, type: !24)
!283 = !DILocalVariable(name: "y", scope: !276, file: !3, line: 178, type: !24)
!284 = !DILocalVariable(name: "i", scope: !276, file: !3, line: 179, type: !24)
!285 = !DILocalVariable(name: "s02", scope: !286, file: !3, line: 183, type: !201)
!286 = distinct !DILexicalBlock(scope: !287, file: !3, line: 182, column: 5)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 181, column: 5)
!288 = distinct !DILexicalBlock(scope: !276, file: !3, line: 181, column: 5)
!289 = !DILocalVariable(name: "d02", scope: !286, file: !3, line: 184, type: !201)
!290 = !DILocalVariable(name: "s13", scope: !286, file: !3, line: 185, type: !201)
!291 = !DILocalVariable(name: "d13", scope: !286, file: !3, line: 186, type: !201)
!292 = !DILocalVariable(name: "s02", scope: !293, file: !3, line: 196, type: !201)
!293 = distinct !DILexicalBlock(scope: !294, file: !3, line: 195, column: 5)
!294 = distinct !DILexicalBlock(scope: !295, file: !3, line: 194, column: 5)
!295 = distinct !DILexicalBlock(scope: !276, file: !3, line: 194, column: 5)
!296 = !DILocalVariable(name: "d02", scope: !293, file: !3, line: 197, type: !201)
!297 = !DILocalVariable(name: "s13", scope: !293, file: !3, line: 198, type: !201)
!298 = !DILocalVariable(name: "d13", scope: !293, file: !3, line: 199, type: !201)
!299 = !DILocation(line: 0, scope: !276)
!300 = !DILocation(line: 183, column: 26, scope: !286)
!301 = !DILocation(line: 183, column: 43, scope: !286)
!302 = !DILocation(line: 183, column: 40, scope: !286)
!303 = !DILocation(line: 0, scope: !286)
!304 = !DILocation(line: 184, column: 40, scope: !286)
!305 = !DILocation(line: 185, column: 26, scope: !286)
!306 = !DILocation(line: 185, column: 43, scope: !286)
!307 = !DILocation(line: 185, column: 52, scope: !286)
!308 = !DILocation(line: 185, column: 40, scope: !286)
!309 = !DILocation(line: 186, column: 35, scope: !286)
!310 = !DILocation(line: 186, column: 40, scope: !286)
!311 = !DILocation(line: 188, column: 25, scope: !286)
!312 = !DILocation(line: 189, column: 25, scope: !286)
!313 = !DILocation(line: 190, column: 25, scope: !286)
!314 = !DILocation(line: 191, column: 25, scope: !286)
!315 = !DILocation(line: 196, column: 26, scope: !293)
!316 = !DILocation(line: 196, column: 43, scope: !293)
!317 = !DILocation(line: 196, column: 40, scope: !293)
!318 = !DILocation(line: 0, scope: !293)
!319 = !DILocation(line: 197, column: 40, scope: !293)
!320 = !DILocation(line: 198, column: 26, scope: !293)
!321 = !DILocation(line: 198, column: 43, scope: !293)
!322 = !DILocation(line: 198, column: 52, scope: !293)
!323 = !DILocation(line: 198, column: 40, scope: !293)
!324 = !DILocation(line: 199, column: 35, scope: !293)
!325 = !DILocation(line: 199, column: 40, scope: !293)
!326 = !DILocation(line: 201, column: 25, scope: !293)
!327 = !DILocation(line: 201, column: 31, scope: !293)
!328 = !DILocation(line: 202, column: 25, scope: !293)
!329 = !DILocation(line: 202, column: 31, scope: !293)
!330 = !DILocation(line: 203, column: 31, scope: !293)
!331 = !DILocation(line: 204, column: 31, scope: !293)
!332 = !DILocation(line: 212, column: 41, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !3, line: 211, column: 9)
!334 = distinct !DILexicalBlock(scope: !335, file: !3, line: 210, column: 9)
!335 = distinct !DILexicalBlock(scope: !336, file: !3, line: 210, column: 9)
!336 = distinct !DILexicalBlock(scope: !337, file: !3, line: 209, column: 5)
!337 = distinct !DILexicalBlock(scope: !338, file: !3, line: 208, column: 5)
!338 = distinct !DILexicalBlock(scope: !276, file: !3, line: 208, column: 5)
!339 = !DILocation(line: 212, column: 52, scope: !333)
!340 = !DILocation(line: 212, column: 50, scope: !333)
!341 = !DILocalVariable(name: "x", arg: 1, scope: !342, file: !343, line: 103, type: !24)
!342 = distinct !DISubprogram(name: "x264_clip_uint8", scope: !343, file: !343, line: 103, type: !344, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !346)
!343 = !DIFile(filename: "common/common.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "4880b62cc871dca4002788746fbccb70")
!344 = !DISubroutineType(types: !345)
!345 = !{!43, !24}
!346 = !{!341}
!347 = !DILocation(line: 0, scope: !342, inlinedAt: !348)
!348 = distinct !DILocation(line: 212, column: 24, scope: !333)
!349 = !DILocation(line: 105, column: 13, scope: !342, inlinedAt: !348)
!350 = !DILocation(line: 105, column: 12, scope: !342, inlinedAt: !348)
!351 = !DILocation(line: 212, column: 22, scope: !333)
!352 = !DILocation(line: 214, column: 15, scope: !336)
!353 = !DILocation(line: 216, column: 1, scope: !276)
!354 = distinct !DISubprogram(name: "sub8x8_dct", scope: !3, file: !3, line: 157, type: !84, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !355)
!355 = !{!356, !357, !358}
!356 = !DILocalVariable(name: "dct", arg: 1, scope: !354, file: !3, line: 157, type: !86)
!357 = !DILocalVariable(name: "pix1", arg: 2, scope: !354, file: !3, line: 157, type: !77)
!358 = !DILocalVariable(name: "pix2", arg: 3, scope: !354, file: !3, line: 157, type: !77)
!359 = !DILocation(line: 0, scope: !354)
!360 = !DILocation(line: 159, column: 5, scope: !354)
!361 = !DILocation(line: 160, column: 17, scope: !354)
!362 = !DILocation(line: 160, column: 26, scope: !354)
!363 = !DILocation(line: 160, column: 36, scope: !354)
!364 = !DILocation(line: 160, column: 5, scope: !354)
!365 = !DILocation(line: 161, column: 17, scope: !354)
!366 = !DILocation(line: 161, column: 26, scope: !354)
!367 = !DILocation(line: 161, column: 50, scope: !354)
!368 = !DILocation(line: 161, column: 5, scope: !354)
!369 = !DILocation(line: 162, column: 17, scope: !354)
!370 = !DILocation(line: 162, column: 26, scope: !354)
!371 = !DILocation(line: 162, column: 50, scope: !354)
!372 = !DILocation(line: 162, column: 5, scope: !354)
!373 = !DILocation(line: 163, column: 1, scope: !354)
!374 = distinct !DISubprogram(name: "add8x8_idct", scope: !3, file: !3, line: 218, type: !91, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !375)
!375 = !{!376, !377}
!376 = !DILocalVariable(name: "p_dst", arg: 1, scope: !374, file: !3, line: 218, type: !77)
!377 = !DILocalVariable(name: "dct", arg: 2, scope: !374, file: !3, line: 218, type: !86)
!378 = !DILocation(line: 0, scope: !374)
!379 = !DILocation(line: 220, column: 5, scope: !374)
!380 = !DILocation(line: 221, column: 19, scope: !374)
!381 = !DILocation(line: 221, column: 43, scope: !374)
!382 = !DILocation(line: 221, column: 5, scope: !374)
!383 = !DILocation(line: 222, column: 19, scope: !374)
!384 = !DILocation(line: 222, column: 43, scope: !374)
!385 = !DILocation(line: 222, column: 5, scope: !374)
!386 = !DILocation(line: 223, column: 19, scope: !374)
!387 = !DILocation(line: 223, column: 43, scope: !374)
!388 = !DILocation(line: 223, column: 5, scope: !374)
!389 = !DILocation(line: 224, column: 1, scope: !374)
!390 = distinct !DISubprogram(name: "sub16x16_dct", scope: !3, file: !3, line: 165, type: !84, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !391)
!391 = !{!392, !393, !394}
!392 = !DILocalVariable(name: "dct", arg: 1, scope: !390, file: !3, line: 165, type: !86)
!393 = !DILocalVariable(name: "pix1", arg: 2, scope: !390, file: !3, line: 165, type: !77)
!394 = !DILocalVariable(name: "pix2", arg: 3, scope: !390, file: !3, line: 165, type: !77)
!395 = !DILocation(line: 0, scope: !390)
!396 = !DILocation(line: 0, scope: !354, inlinedAt: !397)
!397 = distinct !DILocation(line: 167, column: 5, scope: !390)
!398 = !DILocation(line: 159, column: 5, scope: !354, inlinedAt: !397)
!399 = !DILocation(line: 160, column: 17, scope: !354, inlinedAt: !397)
!400 = !DILocation(line: 160, column: 26, scope: !354, inlinedAt: !397)
!401 = !DILocation(line: 160, column: 36, scope: !354, inlinedAt: !397)
!402 = !DILocation(line: 160, column: 5, scope: !354, inlinedAt: !397)
!403 = !DILocation(line: 161, column: 17, scope: !354, inlinedAt: !397)
!404 = !DILocation(line: 161, column: 26, scope: !354, inlinedAt: !397)
!405 = !DILocation(line: 161, column: 50, scope: !354, inlinedAt: !397)
!406 = !DILocation(line: 161, column: 5, scope: !354, inlinedAt: !397)
!407 = !DILocation(line: 162, column: 17, scope: !354, inlinedAt: !397)
!408 = !DILocation(line: 162, column: 26, scope: !354, inlinedAt: !397)
!409 = !DILocation(line: 162, column: 50, scope: !354, inlinedAt: !397)
!410 = !DILocation(line: 162, column: 5, scope: !354, inlinedAt: !397)
!411 = !DILocation(line: 168, column: 18, scope: !390)
!412 = !DILocation(line: 168, column: 28, scope: !390)
!413 = !DILocation(line: 168, column: 38, scope: !390)
!414 = !DILocation(line: 0, scope: !354, inlinedAt: !415)
!415 = distinct !DILocation(line: 168, column: 5, scope: !390)
!416 = !DILocation(line: 159, column: 5, scope: !354, inlinedAt: !415)
!417 = !DILocation(line: 160, column: 17, scope: !354, inlinedAt: !415)
!418 = !DILocation(line: 160, column: 26, scope: !354, inlinedAt: !415)
!419 = !DILocation(line: 160, column: 36, scope: !354, inlinedAt: !415)
!420 = !DILocation(line: 160, column: 5, scope: !354, inlinedAt: !415)
!421 = !DILocation(line: 161, column: 17, scope: !354, inlinedAt: !415)
!422 = !DILocation(line: 161, column: 26, scope: !354, inlinedAt: !415)
!423 = !DILocation(line: 161, column: 50, scope: !354, inlinedAt: !415)
!424 = !DILocation(line: 161, column: 5, scope: !354, inlinedAt: !415)
!425 = !DILocation(line: 162, column: 17, scope: !354, inlinedAt: !415)
!426 = !DILocation(line: 162, column: 26, scope: !354, inlinedAt: !415)
!427 = !DILocation(line: 162, column: 50, scope: !354, inlinedAt: !415)
!428 = !DILocation(line: 162, column: 5, scope: !354, inlinedAt: !415)
!429 = !DILocation(line: 169, column: 18, scope: !390)
!430 = !DILocation(line: 169, column: 28, scope: !390)
!431 = !DILocation(line: 169, column: 52, scope: !390)
!432 = !DILocation(line: 0, scope: !354, inlinedAt: !433)
!433 = distinct !DILocation(line: 169, column: 5, scope: !390)
!434 = !DILocation(line: 159, column: 5, scope: !354, inlinedAt: !433)
!435 = !DILocation(line: 160, column: 17, scope: !354, inlinedAt: !433)
!436 = !DILocation(line: 160, column: 26, scope: !354, inlinedAt: !433)
!437 = !DILocation(line: 160, column: 36, scope: !354, inlinedAt: !433)
!438 = !DILocation(line: 160, column: 5, scope: !354, inlinedAt: !433)
!439 = !DILocation(line: 161, column: 17, scope: !354, inlinedAt: !433)
!440 = !DILocation(line: 161, column: 26, scope: !354, inlinedAt: !433)
!441 = !DILocation(line: 161, column: 50, scope: !354, inlinedAt: !433)
!442 = !DILocation(line: 161, column: 5, scope: !354, inlinedAt: !433)
!443 = !DILocation(line: 162, column: 17, scope: !354, inlinedAt: !433)
!444 = !DILocation(line: 162, column: 26, scope: !354, inlinedAt: !433)
!445 = !DILocation(line: 162, column: 50, scope: !354, inlinedAt: !433)
!446 = !DILocation(line: 162, column: 5, scope: !354, inlinedAt: !433)
!447 = !DILocation(line: 170, column: 18, scope: !390)
!448 = !DILocation(line: 170, column: 28, scope: !390)
!449 = !DILocation(line: 170, column: 52, scope: !390)
!450 = !DILocation(line: 0, scope: !354, inlinedAt: !451)
!451 = distinct !DILocation(line: 170, column: 5, scope: !390)
!452 = !DILocation(line: 159, column: 5, scope: !354, inlinedAt: !451)
!453 = !DILocation(line: 160, column: 17, scope: !354, inlinedAt: !451)
!454 = !DILocation(line: 160, column: 26, scope: !354, inlinedAt: !451)
!455 = !DILocation(line: 160, column: 36, scope: !354, inlinedAt: !451)
!456 = !DILocation(line: 160, column: 5, scope: !354, inlinedAt: !451)
!457 = !DILocation(line: 161, column: 17, scope: !354, inlinedAt: !451)
!458 = !DILocation(line: 161, column: 26, scope: !354, inlinedAt: !451)
!459 = !DILocation(line: 161, column: 50, scope: !354, inlinedAt: !451)
!460 = !DILocation(line: 161, column: 5, scope: !354, inlinedAt: !451)
!461 = !DILocation(line: 162, column: 17, scope: !354, inlinedAt: !451)
!462 = !DILocation(line: 162, column: 26, scope: !354, inlinedAt: !451)
!463 = !DILocation(line: 162, column: 50, scope: !354, inlinedAt: !451)
!464 = !DILocation(line: 162, column: 5, scope: !354, inlinedAt: !451)
!465 = !DILocation(line: 171, column: 1, scope: !390)
!466 = distinct !DISubprogram(name: "add16x16_idct", scope: !3, file: !3, line: 226, type: !91, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !467)
!467 = !{!468, !469}
!468 = !DILocalVariable(name: "p_dst", arg: 1, scope: !466, file: !3, line: 226, type: !77)
!469 = !DILocalVariable(name: "dct", arg: 2, scope: !466, file: !3, line: 226, type: !86)
!470 = !DILocation(line: 0, scope: !466)
!471 = !DILocation(line: 0, scope: !374, inlinedAt: !472)
!472 = distinct !DILocation(line: 228, column: 5, scope: !466)
!473 = !DILocation(line: 220, column: 5, scope: !374, inlinedAt: !472)
!474 = !DILocation(line: 221, column: 19, scope: !374, inlinedAt: !472)
!475 = !DILocation(line: 221, column: 43, scope: !374, inlinedAt: !472)
!476 = !DILocation(line: 221, column: 5, scope: !374, inlinedAt: !472)
!477 = !DILocation(line: 222, column: 19, scope: !374, inlinedAt: !472)
!478 = !DILocation(line: 222, column: 43, scope: !374, inlinedAt: !472)
!479 = !DILocation(line: 222, column: 5, scope: !374, inlinedAt: !472)
!480 = !DILocation(line: 223, column: 19, scope: !374, inlinedAt: !472)
!481 = !DILocation(line: 223, column: 43, scope: !374, inlinedAt: !472)
!482 = !DILocation(line: 223, column: 5, scope: !374, inlinedAt: !472)
!483 = !DILocation(line: 229, column: 19, scope: !466)
!484 = !DILocation(line: 229, column: 44, scope: !466)
!485 = !DILocation(line: 0, scope: !374, inlinedAt: !486)
!486 = distinct !DILocation(line: 229, column: 5, scope: !466)
!487 = !DILocation(line: 220, column: 5, scope: !374, inlinedAt: !486)
!488 = !DILocation(line: 221, column: 19, scope: !374, inlinedAt: !486)
!489 = !DILocation(line: 221, column: 43, scope: !374, inlinedAt: !486)
!490 = !DILocation(line: 221, column: 5, scope: !374, inlinedAt: !486)
!491 = !DILocation(line: 222, column: 19, scope: !374, inlinedAt: !486)
!492 = !DILocation(line: 222, column: 43, scope: !374, inlinedAt: !486)
!493 = !DILocation(line: 222, column: 5, scope: !374, inlinedAt: !486)
!494 = !DILocation(line: 223, column: 19, scope: !374, inlinedAt: !486)
!495 = !DILocation(line: 223, column: 43, scope: !374, inlinedAt: !486)
!496 = !DILocation(line: 223, column: 5, scope: !374, inlinedAt: !486)
!497 = !DILocation(line: 230, column: 19, scope: !466)
!498 = !DILocation(line: 230, column: 44, scope: !466)
!499 = !DILocation(line: 0, scope: !374, inlinedAt: !500)
!500 = distinct !DILocation(line: 230, column: 5, scope: !466)
!501 = !DILocation(line: 220, column: 5, scope: !374, inlinedAt: !500)
!502 = !DILocation(line: 221, column: 19, scope: !374, inlinedAt: !500)
!503 = !DILocation(line: 221, column: 43, scope: !374, inlinedAt: !500)
!504 = !DILocation(line: 221, column: 5, scope: !374, inlinedAt: !500)
!505 = !DILocation(line: 222, column: 19, scope: !374, inlinedAt: !500)
!506 = !DILocation(line: 222, column: 43, scope: !374, inlinedAt: !500)
!507 = !DILocation(line: 222, column: 5, scope: !374, inlinedAt: !500)
!508 = !DILocation(line: 223, column: 19, scope: !374, inlinedAt: !500)
!509 = !DILocation(line: 223, column: 43, scope: !374, inlinedAt: !500)
!510 = !DILocation(line: 223, column: 5, scope: !374, inlinedAt: !500)
!511 = !DILocation(line: 231, column: 19, scope: !466)
!512 = !DILocation(line: 231, column: 44, scope: !466)
!513 = !DILocation(line: 0, scope: !374, inlinedAt: !514)
!514 = distinct !DILocation(line: 231, column: 5, scope: !466)
!515 = !DILocation(line: 220, column: 5, scope: !374, inlinedAt: !514)
!516 = !DILocation(line: 221, column: 19, scope: !374, inlinedAt: !514)
!517 = !DILocation(line: 221, column: 43, scope: !374, inlinedAt: !514)
!518 = !DILocation(line: 221, column: 5, scope: !374, inlinedAt: !514)
!519 = !DILocation(line: 222, column: 19, scope: !374, inlinedAt: !514)
!520 = !DILocation(line: 222, column: 43, scope: !374, inlinedAt: !514)
!521 = !DILocation(line: 222, column: 5, scope: !374, inlinedAt: !514)
!522 = !DILocation(line: 223, column: 19, scope: !374, inlinedAt: !514)
!523 = !DILocation(line: 223, column: 43, scope: !374, inlinedAt: !514)
!524 = !DILocation(line: 223, column: 5, scope: !374, inlinedAt: !514)
!525 = !DILocation(line: 232, column: 1, scope: !466)
!526 = distinct !DISubprogram(name: "sub8x8_dct8", scope: !3, file: !3, line: 265, type: !97, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !527)
!527 = !{!528, !529, !530, !531, !532, !533, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!528 = !DILocalVariable(name: "dct", arg: 1, scope: !526, file: !3, line: 265, type: !99)
!529 = !DILocalVariable(name: "pix1", arg: 2, scope: !526, file: !3, line: 265, type: !77)
!530 = !DILocalVariable(name: "pix2", arg: 3, scope: !526, file: !3, line: 265, type: !77)
!531 = !DILocalVariable(name: "i", scope: !526, file: !3, line: 267, type: !24)
!532 = !DILocalVariable(name: "tmp", scope: !526, file: !3, line: 268, type: !112)
!533 = !DILocalVariable(name: "s07", scope: !534, file: !3, line: 275, type: !201)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 275, column: 9)
!535 = distinct !DILexicalBlock(scope: !536, file: !3, line: 274, column: 5)
!536 = distinct !DILexicalBlock(scope: !526, file: !3, line: 274, column: 5)
!537 = !DILocalVariable(name: "s16", scope: !534, file: !3, line: 275, type: !201)
!538 = !DILocalVariable(name: "s25", scope: !534, file: !3, line: 275, type: !201)
!539 = !DILocalVariable(name: "s34", scope: !534, file: !3, line: 275, type: !201)
!540 = !DILocalVariable(name: "a0", scope: !534, file: !3, line: 275, type: !201)
!541 = !DILocalVariable(name: "a1", scope: !534, file: !3, line: 275, type: !201)
!542 = !DILocalVariable(name: "a2", scope: !534, file: !3, line: 275, type: !201)
!543 = !DILocalVariable(name: "a3", scope: !534, file: !3, line: 275, type: !201)
!544 = !DILocalVariable(name: "d07", scope: !534, file: !3, line: 275, type: !201)
!545 = !DILocalVariable(name: "d16", scope: !534, file: !3, line: 275, type: !201)
!546 = !DILocalVariable(name: "d25", scope: !534, file: !3, line: 275, type: !201)
!547 = !DILocalVariable(name: "d34", scope: !534, file: !3, line: 275, type: !201)
!548 = !DILocalVariable(name: "a4", scope: !534, file: !3, line: 275, type: !201)
!549 = !DILocalVariable(name: "a5", scope: !534, file: !3, line: 275, type: !201)
!550 = !DILocalVariable(name: "a6", scope: !534, file: !3, line: 275, type: !201)
!551 = !DILocalVariable(name: "a7", scope: !534, file: !3, line: 275, type: !201)
!552 = !DILocalVariable(name: "s07", scope: !553, file: !3, line: 282, type: !201)
!553 = distinct !DILexicalBlock(scope: !554, file: !3, line: 282, column: 9)
!554 = distinct !DILexicalBlock(scope: !555, file: !3, line: 281, column: 5)
!555 = distinct !DILexicalBlock(scope: !526, file: !3, line: 281, column: 5)
!556 = !DILocalVariable(name: "s16", scope: !553, file: !3, line: 282, type: !201)
!557 = !DILocalVariable(name: "s25", scope: !553, file: !3, line: 282, type: !201)
!558 = !DILocalVariable(name: "s34", scope: !553, file: !3, line: 282, type: !201)
!559 = !DILocalVariable(name: "a0", scope: !553, file: !3, line: 282, type: !201)
!560 = !DILocalVariable(name: "a1", scope: !553, file: !3, line: 282, type: !201)
!561 = !DILocalVariable(name: "a2", scope: !553, file: !3, line: 282, type: !201)
!562 = !DILocalVariable(name: "a3", scope: !553, file: !3, line: 282, type: !201)
!563 = !DILocalVariable(name: "d07", scope: !553, file: !3, line: 282, type: !201)
!564 = !DILocalVariable(name: "d16", scope: !553, file: !3, line: 282, type: !201)
!565 = !DILocalVariable(name: "d25", scope: !553, file: !3, line: 282, type: !201)
!566 = !DILocalVariable(name: "d34", scope: !553, file: !3, line: 282, type: !201)
!567 = !DILocalVariable(name: "a4", scope: !553, file: !3, line: 282, type: !201)
!568 = !DILocalVariable(name: "a5", scope: !553, file: !3, line: 282, type: !201)
!569 = !DILocalVariable(name: "a6", scope: !553, file: !3, line: 282, type: !201)
!570 = !DILocalVariable(name: "a7", scope: !553, file: !3, line: 282, type: !201)
!571 = !DILocation(line: 268, column: 13, scope: !526)
!572 = !DILocation(line: 0, scope: !526)
!573 = !DILocation(line: 268, column: 5, scope: !526)
!574 = !DILocation(line: 0, scope: !214, inlinedAt: !575)
!575 = distinct !DILocation(line: 270, column: 5, scope: !526)
!576 = !DILocation(line: 115, column: 34, scope: !228, inlinedAt: !575)
!577 = !DILocation(line: 115, column: 44, scope: !228, inlinedAt: !575)
!578 = !DILocation(line: 115, column: 42, scope: !228, inlinedAt: !575)
!579 = !DILocation(line: 115, column: 32, scope: !228, inlinedAt: !575)
!580 = !DILocation(line: 117, column: 14, scope: !231, inlinedAt: !575)
!581 = !DILocation(line: 118, column: 14, scope: !231, inlinedAt: !575)
!582 = !DILocation(line: 275, column: 9, scope: !534)
!583 = !DILocation(line: 282, column: 9, scope: !553)
!584 = !DILocation(line: 281, column: 5, scope: !555)
!585 = !DILocation(line: 285, column: 1, scope: !526)
!586 = distinct !DISubprogram(name: "add8x8_idct8", scope: !3, file: !3, line: 322, type: !105, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !587)
!587 = !{!588, !589, !590, !591, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!588 = !DILocalVariable(name: "dst", arg: 1, scope: !586, file: !3, line: 322, type: !77)
!589 = !DILocalVariable(name: "dct", arg: 2, scope: !586, file: !3, line: 322, type: !99)
!590 = !DILocalVariable(name: "i", scope: !586, file: !3, line: 324, type: !24)
!591 = !DILocalVariable(name: "a0", scope: !592, file: !3, line: 331, type: !201)
!592 = distinct !DILexicalBlock(scope: !593, file: !3, line: 331, column: 9)
!593 = distinct !DILexicalBlock(scope: !594, file: !3, line: 330, column: 5)
!594 = distinct !DILexicalBlock(scope: !586, file: !3, line: 330, column: 5)
!595 = !DILocalVariable(name: "a2", scope: !592, file: !3, line: 331, type: !201)
!596 = !DILocalVariable(name: "a4", scope: !592, file: !3, line: 331, type: !201)
!597 = !DILocalVariable(name: "a6", scope: !592, file: !3, line: 331, type: !201)
!598 = !DILocalVariable(name: "b0", scope: !592, file: !3, line: 331, type: !201)
!599 = !DILocalVariable(name: "b2", scope: !592, file: !3, line: 331, type: !201)
!600 = !DILocalVariable(name: "b4", scope: !592, file: !3, line: 331, type: !201)
!601 = !DILocalVariable(name: "b6", scope: !592, file: !3, line: 331, type: !201)
!602 = !DILocalVariable(name: "a1", scope: !592, file: !3, line: 331, type: !201)
!603 = !DILocalVariable(name: "a3", scope: !592, file: !3, line: 331, type: !201)
!604 = !DILocalVariable(name: "a5", scope: !592, file: !3, line: 331, type: !201)
!605 = !DILocalVariable(name: "a7", scope: !592, file: !3, line: 331, type: !201)
!606 = !DILocalVariable(name: "b1", scope: !592, file: !3, line: 331, type: !201)
!607 = !DILocalVariable(name: "b3", scope: !592, file: !3, line: 331, type: !201)
!608 = !DILocalVariable(name: "b5", scope: !592, file: !3, line: 331, type: !201)
!609 = !DILocalVariable(name: "b7", scope: !592, file: !3, line: 331, type: !201)
!610 = !DILocalVariable(name: "a0", scope: !611, file: !3, line: 338, type: !201)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 338, column: 9)
!612 = distinct !DILexicalBlock(scope: !613, file: !3, line: 337, column: 5)
!613 = distinct !DILexicalBlock(scope: !586, file: !3, line: 337, column: 5)
!614 = !DILocalVariable(name: "a2", scope: !611, file: !3, line: 338, type: !201)
!615 = !DILocalVariable(name: "a4", scope: !611, file: !3, line: 338, type: !201)
!616 = !DILocalVariable(name: "a6", scope: !611, file: !3, line: 338, type: !201)
!617 = !DILocalVariable(name: "b0", scope: !611, file: !3, line: 338, type: !201)
!618 = !DILocalVariable(name: "b2", scope: !611, file: !3, line: 338, type: !201)
!619 = !DILocalVariable(name: "b4", scope: !611, file: !3, line: 338, type: !201)
!620 = !DILocalVariable(name: "b6", scope: !611, file: !3, line: 338, type: !201)
!621 = !DILocalVariable(name: "a1", scope: !611, file: !3, line: 338, type: !201)
!622 = !DILocalVariable(name: "a3", scope: !611, file: !3, line: 338, type: !201)
!623 = !DILocalVariable(name: "a5", scope: !611, file: !3, line: 338, type: !201)
!624 = !DILocalVariable(name: "a7", scope: !611, file: !3, line: 338, type: !201)
!625 = !DILocalVariable(name: "b1", scope: !611, file: !3, line: 338, type: !201)
!626 = !DILocalVariable(name: "b3", scope: !611, file: !3, line: 338, type: !201)
!627 = !DILocalVariable(name: "b5", scope: !611, file: !3, line: 338, type: !201)
!628 = !DILocalVariable(name: "b7", scope: !611, file: !3, line: 338, type: !201)
!629 = !DILocation(line: 0, scope: !586)
!630 = !DILocation(line: 326, column: 15, scope: !586)
!631 = !DILocation(line: 331, column: 9, scope: !592)
!632 = !DILocation(line: 337, column: 5, scope: !613)
!633 = !DILocation(line: 338, column: 9, scope: !611)
!634 = !DILocation(line: 0, scope: !611)
!635 = !DILocation(line: 0, scope: !342, inlinedAt: !636)
!636 = distinct !DILocation(line: 338, column: 9, scope: !611)
!637 = !DILocation(line: 105, column: 13, scope: !342, inlinedAt: !636)
!638 = !DILocation(line: 105, column: 12, scope: !342, inlinedAt: !636)
!639 = !DILocation(line: 0, scope: !342, inlinedAt: !640)
!640 = distinct !DILocation(line: 338, column: 9, scope: !611)
!641 = !DILocation(line: 105, column: 13, scope: !342, inlinedAt: !640)
!642 = !DILocation(line: 105, column: 12, scope: !342, inlinedAt: !640)
!643 = !DILocation(line: 0, scope: !342, inlinedAt: !644)
!644 = distinct !DILocation(line: 338, column: 9, scope: !611)
!645 = !DILocation(line: 105, column: 13, scope: !342, inlinedAt: !644)
!646 = !DILocation(line: 105, column: 12, scope: !342, inlinedAt: !644)
!647 = !DILocation(line: 0, scope: !342, inlinedAt: !648)
!648 = distinct !DILocation(line: 338, column: 9, scope: !611)
!649 = !DILocation(line: 105, column: 13, scope: !342, inlinedAt: !648)
!650 = !DILocation(line: 105, column: 12, scope: !342, inlinedAt: !648)
!651 = !DILocation(line: 0, scope: !342, inlinedAt: !652)
!652 = distinct !DILocation(line: 338, column: 9, scope: !611)
!653 = !DILocation(line: 105, column: 13, scope: !342, inlinedAt: !652)
!654 = !DILocation(line: 105, column: 12, scope: !342, inlinedAt: !652)
!655 = !DILocation(line: 0, scope: !342, inlinedAt: !656)
!656 = distinct !DILocation(line: 338, column: 9, scope: !611)
!657 = !DILocation(line: 105, column: 13, scope: !342, inlinedAt: !656)
!658 = !DILocation(line: 105, column: 12, scope: !342, inlinedAt: !656)
!659 = !DILocation(line: 0, scope: !342, inlinedAt: !660)
!660 = distinct !DILocation(line: 338, column: 9, scope: !611)
!661 = !DILocation(line: 105, column: 13, scope: !342, inlinedAt: !660)
!662 = !DILocation(line: 105, column: 12, scope: !342, inlinedAt: !660)
!663 = !DILocation(line: 0, scope: !342, inlinedAt: !664)
!664 = distinct !DILocation(line: 338, column: 9, scope: !611)
!665 = !DILocation(line: 105, column: 13, scope: !342, inlinedAt: !664)
!666 = !DILocation(line: 105, column: 12, scope: !342, inlinedAt: !664)
!667 = !DILocation(line: 337, column: 25, scope: !612)
!668 = !DILocation(line: 337, column: 19, scope: !612)
!669 = distinct !{!669, !632, !670, !671}
!670 = !DILocation(line: 338, column: 9, scope: !613)
!671 = !{!"llvm.loop.mustprogress"}
!672 = !DILocation(line: 341, column: 1, scope: !586)
!673 = distinct !DISubprogram(name: "sub16x16_dct8", scope: !3, file: !3, line: 287, type: !109, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !674)
!674 = !{!675, !676, !677}
!675 = !DILocalVariable(name: "dct", arg: 1, scope: !673, file: !3, line: 287, type: !111)
!676 = !DILocalVariable(name: "pix1", arg: 2, scope: !673, file: !3, line: 287, type: !77)
!677 = !DILocalVariable(name: "pix2", arg: 3, scope: !673, file: !3, line: 287, type: !77)
!678 = !DILocation(line: 0, scope: !673)
!679 = !DILocation(line: 289, column: 5, scope: !673)
!680 = !DILocation(line: 290, column: 18, scope: !673)
!681 = !DILocation(line: 290, column: 27, scope: !673)
!682 = !DILocation(line: 290, column: 51, scope: !673)
!683 = !DILocation(line: 290, column: 5, scope: !673)
!684 = !DILocation(line: 291, column: 18, scope: !673)
!685 = !DILocation(line: 291, column: 27, scope: !673)
!686 = !DILocation(line: 291, column: 51, scope: !673)
!687 = !DILocation(line: 291, column: 5, scope: !673)
!688 = !DILocation(line: 292, column: 18, scope: !673)
!689 = !DILocation(line: 292, column: 27, scope: !673)
!690 = !DILocation(line: 292, column: 51, scope: !673)
!691 = !DILocation(line: 292, column: 5, scope: !673)
!692 = !DILocation(line: 293, column: 1, scope: !673)
!693 = distinct !DISubprogram(name: "add16x16_idct8", scope: !3, file: !3, line: 343, type: !116, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !694)
!694 = !{!695, !696}
!695 = !DILocalVariable(name: "dst", arg: 1, scope: !693, file: !3, line: 343, type: !77)
!696 = !DILocalVariable(name: "dct", arg: 2, scope: !693, file: !3, line: 343, type: !111)
!697 = !DILocation(line: 0, scope: !693)
!698 = !DILocation(line: 345, column: 5, scope: !693)
!699 = !DILocation(line: 346, column: 20, scope: !693)
!700 = !DILocation(line: 346, column: 42, scope: !693)
!701 = !DILocation(line: 346, column: 5, scope: !693)
!702 = !DILocation(line: 347, column: 20, scope: !693)
!703 = !DILocation(line: 347, column: 42, scope: !693)
!704 = !DILocation(line: 347, column: 5, scope: !693)
!705 = !DILocation(line: 348, column: 20, scope: !693)
!706 = !DILocation(line: 348, column: 42, scope: !693)
!707 = !DILocation(line: 348, column: 5, scope: !693)
!708 = !DILocation(line: 349, column: 1, scope: !693)
!709 = distinct !DISubprogram(name: "dct4x4dc", scope: !3, file: !3, line: 39, type: !120, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717}
!711 = !DILocalVariable(name: "d", arg: 1, scope: !709, file: !3, line: 39, type: !73)
!712 = !DILocalVariable(name: "tmp", scope: !709, file: !3, line: 41, type: !87)
!713 = !DILocalVariable(name: "s01", scope: !709, file: !3, line: 42, type: !24)
!714 = !DILocalVariable(name: "s23", scope: !709, file: !3, line: 42, type: !24)
!715 = !DILocalVariable(name: "d01", scope: !709, file: !3, line: 43, type: !24)
!716 = !DILocalVariable(name: "d23", scope: !709, file: !3, line: 43, type: !24)
!717 = !DILocalVariable(name: "i", scope: !709, file: !3, line: 44, type: !24)
!718 = !DILocation(line: 0, scope: !709)
!719 = !DILocation(line: 48, column: 15, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 47, column: 5)
!721 = distinct !DILexicalBlock(scope: !722, file: !3, line: 46, column: 5)
!722 = distinct !DILexicalBlock(scope: !709, file: !3, line: 46, column: 5)
!723 = !DILocation(line: 48, column: 25, scope: !720)
!724 = !DILocation(line: 48, column: 23, scope: !720)
!725 = !DILocation(line: 49, column: 23, scope: !720)
!726 = !DILocation(line: 50, column: 15, scope: !720)
!727 = !DILocation(line: 50, column: 25, scope: !720)
!728 = !DILocation(line: 50, column: 23, scope: !720)
!729 = !DILocation(line: 51, column: 23, scope: !720)
!730 = !DILocation(line: 53, column: 25, scope: !720)
!731 = !DILocation(line: 54, column: 25, scope: !720)
!732 = !DILocation(line: 55, column: 25, scope: !720)
!733 = !DILocation(line: 56, column: 25, scope: !720)
!734 = !DILocation(line: 61, column: 15, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !3, line: 60, column: 5)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 59, column: 5)
!737 = distinct !DILexicalBlock(scope: !709, file: !3, line: 59, column: 5)
!738 = !DILocation(line: 61, column: 27, scope: !735)
!739 = !DILocation(line: 61, column: 25, scope: !735)
!740 = !DILocation(line: 62, column: 25, scope: !735)
!741 = !DILocation(line: 63, column: 15, scope: !735)
!742 = !DILocation(line: 63, column: 27, scope: !735)
!743 = !DILocation(line: 63, column: 25, scope: !735)
!744 = !DILocation(line: 64, column: 25, scope: !735)
!745 = !DILocation(line: 66, column: 25, scope: !735)
!746 = !DILocation(line: 66, column: 31, scope: !735)
!747 = !DILocation(line: 66, column: 37, scope: !735)
!748 = !DILocation(line: 66, column: 19, scope: !735)
!749 = !DILocation(line: 66, column: 17, scope: !735)
!750 = !DILocation(line: 67, column: 31, scope: !735)
!751 = !DILocation(line: 67, column: 37, scope: !735)
!752 = !DILocation(line: 67, column: 19, scope: !735)
!753 = !DILocation(line: 67, column: 17, scope: !735)
!754 = !DILocation(line: 68, column: 25, scope: !735)
!755 = !DILocation(line: 68, column: 31, scope: !735)
!756 = !DILocation(line: 68, column: 37, scope: !735)
!757 = !DILocation(line: 68, column: 19, scope: !735)
!758 = !DILocation(line: 68, column: 17, scope: !735)
!759 = !DILocation(line: 69, column: 31, scope: !735)
!760 = !DILocation(line: 69, column: 37, scope: !735)
!761 = !DILocation(line: 69, column: 19, scope: !735)
!762 = !DILocation(line: 69, column: 17, scope: !735)
!763 = !DILocation(line: 71, column: 1, scope: !709)
!764 = distinct !DISubprogram(name: "idct4x4dc", scope: !3, file: !3, line: 73, type: !120, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772}
!766 = !DILocalVariable(name: "d", arg: 1, scope: !764, file: !3, line: 73, type: !73)
!767 = !DILocalVariable(name: "tmp", scope: !764, file: !3, line: 75, type: !87)
!768 = !DILocalVariable(name: "s01", scope: !764, file: !3, line: 76, type: !24)
!769 = !DILocalVariable(name: "s23", scope: !764, file: !3, line: 76, type: !24)
!770 = !DILocalVariable(name: "d01", scope: !764, file: !3, line: 77, type: !24)
!771 = !DILocalVariable(name: "d23", scope: !764, file: !3, line: 77, type: !24)
!772 = !DILocalVariable(name: "i", scope: !764, file: !3, line: 78, type: !24)
!773 = !DILocation(line: 0, scope: !764)
!774 = !DILocation(line: 82, column: 15, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 81, column: 5)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 80, column: 5)
!777 = distinct !DILexicalBlock(scope: !764, file: !3, line: 80, column: 5)
!778 = !DILocation(line: 82, column: 25, scope: !775)
!779 = !DILocation(line: 82, column: 23, scope: !775)
!780 = !DILocation(line: 83, column: 23, scope: !775)
!781 = !DILocation(line: 84, column: 15, scope: !775)
!782 = !DILocation(line: 84, column: 25, scope: !775)
!783 = !DILocation(line: 84, column: 23, scope: !775)
!784 = !DILocation(line: 85, column: 23, scope: !775)
!785 = !DILocation(line: 87, column: 25, scope: !775)
!786 = !DILocation(line: 88, column: 25, scope: !775)
!787 = !DILocation(line: 89, column: 25, scope: !775)
!788 = !DILocation(line: 90, column: 25, scope: !775)
!789 = !DILocation(line: 95, column: 15, scope: !790)
!790 = distinct !DILexicalBlock(scope: !791, file: !3, line: 94, column: 5)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 93, column: 5)
!792 = distinct !DILexicalBlock(scope: !764, file: !3, line: 93, column: 5)
!793 = !DILocation(line: 95, column: 27, scope: !790)
!794 = !DILocation(line: 95, column: 25, scope: !790)
!795 = !DILocation(line: 96, column: 25, scope: !790)
!796 = !DILocation(line: 97, column: 15, scope: !790)
!797 = !DILocation(line: 97, column: 27, scope: !790)
!798 = !DILocation(line: 97, column: 25, scope: !790)
!799 = !DILocation(line: 98, column: 25, scope: !790)
!800 = !DILocation(line: 100, column: 23, scope: !790)
!801 = !DILocation(line: 100, column: 19, scope: !790)
!802 = !DILocation(line: 100, column: 17, scope: !790)
!803 = !DILocation(line: 101, column: 23, scope: !790)
!804 = !DILocation(line: 101, column: 19, scope: !790)
!805 = !DILocation(line: 101, column: 17, scope: !790)
!806 = !DILocation(line: 102, column: 23, scope: !790)
!807 = !DILocation(line: 102, column: 19, scope: !790)
!808 = !DILocation(line: 102, column: 17, scope: !790)
!809 = !DILocation(line: 103, column: 23, scope: !790)
!810 = !DILocation(line: 103, column: 19, scope: !790)
!811 = !DILocation(line: 103, column: 17, scope: !790)
!812 = !DILocation(line: 105, column: 1, scope: !764)
!813 = distinct !DISubprogram(name: "x264_dct_init_weights", scope: !3, file: !3, line: 430, type: !814, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{null}
!816 = !{!817, !818}
!817 = !DILocalVariable(name: "i", scope: !813, file: !3, line: 432, type: !24)
!818 = !DILocalVariable(name: "j", scope: !813, file: !3, line: 432, type: !24)
!819 = !DILocation(line: 0, scope: !813)
!820 = !DILocation(line: 436, column: 44, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 435, column: 9)
!822 = distinct !DILexicalBlock(scope: !823, file: !3, line: 435, column: 9)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 434, column: 5)
!824 = distinct !DILexicalBlock(scope: !825, file: !3, line: 433, column: 5)
!825 = distinct !DILexicalBlock(scope: !813, file: !3, line: 433, column: 5)
!826 = !{!827, !827, i64 0}
!827 = !{!"int", !131, i64 0}
!828 = !DILocation(line: 437, column: 9, scope: !829)
!829 = distinct !DILexicalBlock(scope: !823, file: !3, line: 437, column: 9)
!830 = !DILocation(line: 438, column: 69, scope: !831)
!831 = distinct !DILexicalBlock(scope: !829, file: !3, line: 437, column: 9)
!832 = !DILocation(line: 438, column: 46, scope: !831)
!833 = !DILocation(line: 438, column: 13, scope: !831)
!834 = !DILocation(line: 438, column: 44, scope: !831)
!835 = !DILocation(line: 437, column: 26, scope: !831)
!836 = !DILocation(line: 437, column: 20, scope: !831)
!837 = distinct !{!837, !828, !838, !671}
!838 = !DILocation(line: 438, column: 93, scope: !829)
!839 = !DILocation(line: 440, column: 1, scope: !813)
!840 = distinct !DISubprogram(name: "x264_zigzag_init", scope: !3, file: !3, line: 575, type: !841, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !865)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !24, !843, !24}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !30, line: 122, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 114, size: 320, elements: !846)
!846 = !{!847, !851, !855, !860, !861}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !845, file: !30, line: 116, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !5, !99}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !845, file: !30, line: 117, baseType: !852, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !5, !73}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !845, file: !30, line: 118, baseType: !856, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !5, !859, !77}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !845, file: !30, line: 119, baseType: !856, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !845, file: !30, line: 120, baseType: !862, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !5, !5}
!865 = !{!866, !867, !868}
!866 = !DILocalVariable(name: "cpu", arg: 1, scope: !840, file: !3, line: 575, type: !24)
!867 = !DILocalVariable(name: "pf", arg: 2, scope: !840, file: !3, line: 575, type: !843)
!868 = !DILocalVariable(name: "b_interlaced", arg: 3, scope: !840, file: !3, line: 575, type: !24)
!869 = !DILocation(line: 0, scope: !840)
!870 = !DILocation(line: 577, column: 9, scope: !871)
!871 = distinct !DILexicalBlock(scope: !840, file: !3, line: 577, column: 9)
!872 = !DILocation(line: 0, scope: !871)
!873 = !DILocation(line: 577, column: 9, scope: !840)
!874 = !DILocation(line: 579, column: 24, scope: !875)
!875 = distinct !DILexicalBlock(scope: !871, file: !3, line: 578, column: 5)
!876 = !{!877, !130, i64 0}
!877 = !{!"", !130, i64 0, !130, i64 8, !130, i64 16, !130, i64 24, !130, i64 32}
!878 = !DILocation(line: 580, column: 24, scope: !875)
!879 = !{!877, !130, i64 8}
!880 = !DILocation(line: 581, column: 24, scope: !875)
!881 = !{!877, !130, i64 16}
!882 = !DILocation(line: 582, column: 24, scope: !875)
!883 = !{!877, !130, i64 24}
!884 = !DILocation(line: 584, column: 16, scope: !885)
!885 = distinct !DILexicalBlock(scope: !875, file: !3, line: 584, column: 13)
!886 = !DILocation(line: 584, column: 13, scope: !875)
!887 = !DILocation(line: 595, column: 24, scope: !888)
!888 = distinct !DILexicalBlock(scope: !871, file: !3, line: 594, column: 5)
!889 = !DILocation(line: 596, column: 24, scope: !888)
!890 = !DILocation(line: 597, column: 24, scope: !888)
!891 = !DILocation(line: 598, column: 24, scope: !888)
!892 = !DILocation(line: 600, column: 16, scope: !893)
!893 = distinct !DILexicalBlock(scope: !888, file: !3, line: 600, column: 13)
!894 = !DILocation(line: 600, column: 13, scope: !888)
!895 = !DILocation(line: 601, column: 26, scope: !893)
!896 = !DILocation(line: 601, column: 13, scope: !893)
!897 = !DILocation(line: 606, column: 16, scope: !898)
!898 = distinct !DILexicalBlock(scope: !888, file: !3, line: 606, column: 13)
!899 = !DILocation(line: 604, column: 16, scope: !900)
!900 = distinct !DILexicalBlock(scope: !888, file: !3, line: 604, column: 13)
!901 = !DILocation(line: 604, column: 13, scope: !888)
!902 = !DILocation(line: 606, column: 13, scope: !888)
!903 = !DILocation(line: 608, column: 26, scope: !904)
!904 = distinct !DILexicalBlock(scope: !898, file: !3, line: 607, column: 9)
!905 = !DILocation(line: 609, column: 26, scope: !904)
!906 = !DILocation(line: 610, column: 9, scope: !904)
!907 = !DILocation(line: 611, column: 16, scope: !908)
!908 = distinct !DILexicalBlock(scope: !888, file: !3, line: 611, column: 13)
!909 = !DILocation(line: 611, column: 13, scope: !888)
!910 = !DILocation(line: 623, column: 12, scope: !911)
!911 = distinct !DILexicalBlock(scope: !840, file: !3, line: 623, column: 9)
!912 = !DILocation(line: 623, column: 9, scope: !840)
!913 = !DILocation(line: 621, column: 9, scope: !840)
!914 = !{!877, !130, i64 32}
!915 = !DILocation(line: 626, column: 1, scope: !840)
!916 = distinct !DISubprogram(name: "zigzag_scan_8x8_field", scope: !3, file: !3, line: 498, type: !849, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !917)
!917 = !{!918, !919}
!918 = !DILocalVariable(name: "level", arg: 1, scope: !916, file: !3, line: 498, type: !5)
!919 = !DILocalVariable(name: "dct", arg: 2, scope: !916, file: !3, line: 498, type: !99)
!920 = !DILocation(line: 0, scope: !916)
!921 = !DILocation(line: 500, column: 5, scope: !916)
!922 = !DILocation(line: 501, column: 1, scope: !916)
!923 = distinct !DISubprogram(name: "zigzag_scan_4x4_field", scope: !3, file: !3, line: 511, type: !853, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !924)
!924 = !{!925, !926}
!925 = !DILocalVariable(name: "level", arg: 1, scope: !923, file: !3, line: 511, type: !5)
!926 = !DILocalVariable(name: "dct", arg: 2, scope: !923, file: !3, line: 511, type: !73)
!927 = !DILocation(line: 0, scope: !923)
!928 = !DILocation(line: 513, column: 25, scope: !923)
!929 = !DILocation(line: 513, column: 23, scope: !923)
!930 = !DILocation(line: 514, column: 5, scope: !923)
!931 = !DILocation(line: 514, column: 16, scope: !923)
!932 = !DILocation(line: 514, column: 27, scope: !923)
!933 = !DILocation(line: 514, column: 38, scope: !923)
!934 = !DILocation(line: 515, column: 46, scope: !923)
!935 = !DILocation(line: 515, column: 29, scope: !923)
!936 = !DILocation(line: 515, column: 23, scope: !923)
!937 = !DILocation(line: 515, column: 27, scope: !923)
!938 = !DILocation(line: 516, column: 46, scope: !923)
!939 = !DILocation(line: 516, column: 29, scope: !923)
!940 = !{!941, !941, i64 0}
!941 = !{!"long", !131, i64 0}
!942 = !DILocation(line: 516, column: 23, scope: !923)
!943 = !DILocation(line: 516, column: 27, scope: !923)
!944 = !DILocation(line: 517, column: 47, scope: !923)
!945 = !DILocation(line: 517, column: 30, scope: !923)
!946 = !DILocation(line: 517, column: 23, scope: !923)
!947 = !DILocation(line: 517, column: 28, scope: !923)
!948 = !DILocation(line: 518, column: 1, scope: !923)
!949 = distinct !DISubprogram(name: "zigzag_sub_8x8_field", scope: !3, file: !3, line: 558, type: !857, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !950)
!950 = !{!951, !952, !953, !954, !956, !957, !959, !960, !962, !963, !965, !966, !968, !969, !971, !972, !974, !975, !977, !978, !980, !981, !983, !984, !986, !987, !989, !990, !992, !993, !995, !996, !998, !999, !1001, !1002, !1004, !1005, !1007, !1008, !1010, !1011, !1013, !1014, !1016, !1017, !1019, !1020, !1022, !1023, !1025, !1026, !1028, !1029, !1031, !1032, !1034, !1035, !1037, !1038, !1040, !1041, !1043, !1044, !1046, !1047, !1049, !1050, !1052, !1053, !1055, !1056, !1058, !1059, !1061, !1062, !1064, !1065, !1067, !1068, !1070, !1071, !1073, !1074, !1076, !1077, !1079, !1080, !1082, !1083, !1085, !1086, !1088, !1089, !1091, !1092, !1094, !1095, !1097, !1098, !1100, !1101, !1103, !1104, !1106, !1107, !1109, !1110, !1112, !1113, !1115, !1116, !1118, !1119, !1121, !1122, !1124, !1125, !1127, !1128, !1130, !1131, !1133, !1134, !1136, !1137, !1139, !1140, !1142, !1143, !1145}
!951 = !DILocalVariable(name: "level", arg: 1, scope: !949, file: !3, line: 558, type: !5)
!952 = !DILocalVariable(name: "p_src", arg: 2, scope: !949, file: !3, line: 558, type: !859)
!953 = !DILocalVariable(name: "p_dst", arg: 3, scope: !949, file: !3, line: 558, type: !77)
!954 = !DILocalVariable(name: "oe", scope: !955, file: !3, line: 560, type: !24)
!955 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!956 = !DILocalVariable(name: "od", scope: !955, file: !3, line: 560, type: !24)
!957 = !DILocalVariable(name: "oe", scope: !958, file: !3, line: 560, type: !24)
!958 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!959 = !DILocalVariable(name: "od", scope: !958, file: !3, line: 560, type: !24)
!960 = !DILocalVariable(name: "oe", scope: !961, file: !3, line: 560, type: !24)
!961 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!962 = !DILocalVariable(name: "od", scope: !961, file: !3, line: 560, type: !24)
!963 = !DILocalVariable(name: "oe", scope: !964, file: !3, line: 560, type: !24)
!964 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!965 = !DILocalVariable(name: "od", scope: !964, file: !3, line: 560, type: !24)
!966 = !DILocalVariable(name: "oe", scope: !967, file: !3, line: 560, type: !24)
!967 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!968 = !DILocalVariable(name: "od", scope: !967, file: !3, line: 560, type: !24)
!969 = !DILocalVariable(name: "oe", scope: !970, file: !3, line: 560, type: !24)
!970 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!971 = !DILocalVariable(name: "od", scope: !970, file: !3, line: 560, type: !24)
!972 = !DILocalVariable(name: "oe", scope: !973, file: !3, line: 560, type: !24)
!973 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!974 = !DILocalVariable(name: "od", scope: !973, file: !3, line: 560, type: !24)
!975 = !DILocalVariable(name: "oe", scope: !976, file: !3, line: 560, type: !24)
!976 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!977 = !DILocalVariable(name: "od", scope: !976, file: !3, line: 560, type: !24)
!978 = !DILocalVariable(name: "oe", scope: !979, file: !3, line: 560, type: !24)
!979 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!980 = !DILocalVariable(name: "od", scope: !979, file: !3, line: 560, type: !24)
!981 = !DILocalVariable(name: "oe", scope: !982, file: !3, line: 560, type: !24)
!982 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!983 = !DILocalVariable(name: "od", scope: !982, file: !3, line: 560, type: !24)
!984 = !DILocalVariable(name: "oe", scope: !985, file: !3, line: 560, type: !24)
!985 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!986 = !DILocalVariable(name: "od", scope: !985, file: !3, line: 560, type: !24)
!987 = !DILocalVariable(name: "oe", scope: !988, file: !3, line: 560, type: !24)
!988 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!989 = !DILocalVariable(name: "od", scope: !988, file: !3, line: 560, type: !24)
!990 = !DILocalVariable(name: "oe", scope: !991, file: !3, line: 560, type: !24)
!991 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!992 = !DILocalVariable(name: "od", scope: !991, file: !3, line: 560, type: !24)
!993 = !DILocalVariable(name: "oe", scope: !994, file: !3, line: 560, type: !24)
!994 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!995 = !DILocalVariable(name: "od", scope: !994, file: !3, line: 560, type: !24)
!996 = !DILocalVariable(name: "oe", scope: !997, file: !3, line: 560, type: !24)
!997 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!998 = !DILocalVariable(name: "od", scope: !997, file: !3, line: 560, type: !24)
!999 = !DILocalVariable(name: "oe", scope: !1000, file: !3, line: 560, type: !24)
!1000 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1001 = !DILocalVariable(name: "od", scope: !1000, file: !3, line: 560, type: !24)
!1002 = !DILocalVariable(name: "oe", scope: !1003, file: !3, line: 560, type: !24)
!1003 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1004 = !DILocalVariable(name: "od", scope: !1003, file: !3, line: 560, type: !24)
!1005 = !DILocalVariable(name: "oe", scope: !1006, file: !3, line: 560, type: !24)
!1006 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1007 = !DILocalVariable(name: "od", scope: !1006, file: !3, line: 560, type: !24)
!1008 = !DILocalVariable(name: "oe", scope: !1009, file: !3, line: 560, type: !24)
!1009 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1010 = !DILocalVariable(name: "od", scope: !1009, file: !3, line: 560, type: !24)
!1011 = !DILocalVariable(name: "oe", scope: !1012, file: !3, line: 560, type: !24)
!1012 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1013 = !DILocalVariable(name: "od", scope: !1012, file: !3, line: 560, type: !24)
!1014 = !DILocalVariable(name: "oe", scope: !1015, file: !3, line: 560, type: !24)
!1015 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1016 = !DILocalVariable(name: "od", scope: !1015, file: !3, line: 560, type: !24)
!1017 = !DILocalVariable(name: "oe", scope: !1018, file: !3, line: 560, type: !24)
!1018 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1019 = !DILocalVariable(name: "od", scope: !1018, file: !3, line: 560, type: !24)
!1020 = !DILocalVariable(name: "oe", scope: !1021, file: !3, line: 560, type: !24)
!1021 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1022 = !DILocalVariable(name: "od", scope: !1021, file: !3, line: 560, type: !24)
!1023 = !DILocalVariable(name: "oe", scope: !1024, file: !3, line: 560, type: !24)
!1024 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1025 = !DILocalVariable(name: "od", scope: !1024, file: !3, line: 560, type: !24)
!1026 = !DILocalVariable(name: "oe", scope: !1027, file: !3, line: 560, type: !24)
!1027 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1028 = !DILocalVariable(name: "od", scope: !1027, file: !3, line: 560, type: !24)
!1029 = !DILocalVariable(name: "oe", scope: !1030, file: !3, line: 560, type: !24)
!1030 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1031 = !DILocalVariable(name: "od", scope: !1030, file: !3, line: 560, type: !24)
!1032 = !DILocalVariable(name: "oe", scope: !1033, file: !3, line: 560, type: !24)
!1033 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1034 = !DILocalVariable(name: "od", scope: !1033, file: !3, line: 560, type: !24)
!1035 = !DILocalVariable(name: "oe", scope: !1036, file: !3, line: 560, type: !24)
!1036 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1037 = !DILocalVariable(name: "od", scope: !1036, file: !3, line: 560, type: !24)
!1038 = !DILocalVariable(name: "oe", scope: !1039, file: !3, line: 560, type: !24)
!1039 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1040 = !DILocalVariable(name: "od", scope: !1039, file: !3, line: 560, type: !24)
!1041 = !DILocalVariable(name: "oe", scope: !1042, file: !3, line: 560, type: !24)
!1042 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1043 = !DILocalVariable(name: "od", scope: !1042, file: !3, line: 560, type: !24)
!1044 = !DILocalVariable(name: "oe", scope: !1045, file: !3, line: 560, type: !24)
!1045 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1046 = !DILocalVariable(name: "od", scope: !1045, file: !3, line: 560, type: !24)
!1047 = !DILocalVariable(name: "oe", scope: !1048, file: !3, line: 560, type: !24)
!1048 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1049 = !DILocalVariable(name: "od", scope: !1048, file: !3, line: 560, type: !24)
!1050 = !DILocalVariable(name: "oe", scope: !1051, file: !3, line: 560, type: !24)
!1051 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1052 = !DILocalVariable(name: "od", scope: !1051, file: !3, line: 560, type: !24)
!1053 = !DILocalVariable(name: "oe", scope: !1054, file: !3, line: 560, type: !24)
!1054 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1055 = !DILocalVariable(name: "od", scope: !1054, file: !3, line: 560, type: !24)
!1056 = !DILocalVariable(name: "oe", scope: !1057, file: !3, line: 560, type: !24)
!1057 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1058 = !DILocalVariable(name: "od", scope: !1057, file: !3, line: 560, type: !24)
!1059 = !DILocalVariable(name: "oe", scope: !1060, file: !3, line: 560, type: !24)
!1060 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1061 = !DILocalVariable(name: "od", scope: !1060, file: !3, line: 560, type: !24)
!1062 = !DILocalVariable(name: "oe", scope: !1063, file: !3, line: 560, type: !24)
!1063 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1064 = !DILocalVariable(name: "od", scope: !1063, file: !3, line: 560, type: !24)
!1065 = !DILocalVariable(name: "oe", scope: !1066, file: !3, line: 560, type: !24)
!1066 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1067 = !DILocalVariable(name: "od", scope: !1066, file: !3, line: 560, type: !24)
!1068 = !DILocalVariable(name: "oe", scope: !1069, file: !3, line: 560, type: !24)
!1069 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1070 = !DILocalVariable(name: "od", scope: !1069, file: !3, line: 560, type: !24)
!1071 = !DILocalVariable(name: "oe", scope: !1072, file: !3, line: 560, type: !24)
!1072 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1073 = !DILocalVariable(name: "od", scope: !1072, file: !3, line: 560, type: !24)
!1074 = !DILocalVariable(name: "oe", scope: !1075, file: !3, line: 560, type: !24)
!1075 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1076 = !DILocalVariable(name: "od", scope: !1075, file: !3, line: 560, type: !24)
!1077 = !DILocalVariable(name: "oe", scope: !1078, file: !3, line: 560, type: !24)
!1078 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1079 = !DILocalVariable(name: "od", scope: !1078, file: !3, line: 560, type: !24)
!1080 = !DILocalVariable(name: "oe", scope: !1081, file: !3, line: 560, type: !24)
!1081 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1082 = !DILocalVariable(name: "od", scope: !1081, file: !3, line: 560, type: !24)
!1083 = !DILocalVariable(name: "oe", scope: !1084, file: !3, line: 560, type: !24)
!1084 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1085 = !DILocalVariable(name: "od", scope: !1084, file: !3, line: 560, type: !24)
!1086 = !DILocalVariable(name: "oe", scope: !1087, file: !3, line: 560, type: !24)
!1087 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1088 = !DILocalVariable(name: "od", scope: !1087, file: !3, line: 560, type: !24)
!1089 = !DILocalVariable(name: "oe", scope: !1090, file: !3, line: 560, type: !24)
!1090 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1091 = !DILocalVariable(name: "od", scope: !1090, file: !3, line: 560, type: !24)
!1092 = !DILocalVariable(name: "oe", scope: !1093, file: !3, line: 560, type: !24)
!1093 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1094 = !DILocalVariable(name: "od", scope: !1093, file: !3, line: 560, type: !24)
!1095 = !DILocalVariable(name: "oe", scope: !1096, file: !3, line: 560, type: !24)
!1096 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1097 = !DILocalVariable(name: "od", scope: !1096, file: !3, line: 560, type: !24)
!1098 = !DILocalVariable(name: "oe", scope: !1099, file: !3, line: 560, type: !24)
!1099 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1100 = !DILocalVariable(name: "od", scope: !1099, file: !3, line: 560, type: !24)
!1101 = !DILocalVariable(name: "oe", scope: !1102, file: !3, line: 560, type: !24)
!1102 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1103 = !DILocalVariable(name: "od", scope: !1102, file: !3, line: 560, type: !24)
!1104 = !DILocalVariable(name: "oe", scope: !1105, file: !3, line: 560, type: !24)
!1105 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1106 = !DILocalVariable(name: "od", scope: !1105, file: !3, line: 560, type: !24)
!1107 = !DILocalVariable(name: "oe", scope: !1108, file: !3, line: 560, type: !24)
!1108 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1109 = !DILocalVariable(name: "od", scope: !1108, file: !3, line: 560, type: !24)
!1110 = !DILocalVariable(name: "oe", scope: !1111, file: !3, line: 560, type: !24)
!1111 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1112 = !DILocalVariable(name: "od", scope: !1111, file: !3, line: 560, type: !24)
!1113 = !DILocalVariable(name: "oe", scope: !1114, file: !3, line: 560, type: !24)
!1114 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1115 = !DILocalVariable(name: "od", scope: !1114, file: !3, line: 560, type: !24)
!1116 = !DILocalVariable(name: "oe", scope: !1117, file: !3, line: 560, type: !24)
!1117 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1118 = !DILocalVariable(name: "od", scope: !1117, file: !3, line: 560, type: !24)
!1119 = !DILocalVariable(name: "oe", scope: !1120, file: !3, line: 560, type: !24)
!1120 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1121 = !DILocalVariable(name: "od", scope: !1120, file: !3, line: 560, type: !24)
!1122 = !DILocalVariable(name: "oe", scope: !1123, file: !3, line: 560, type: !24)
!1123 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1124 = !DILocalVariable(name: "od", scope: !1123, file: !3, line: 560, type: !24)
!1125 = !DILocalVariable(name: "oe", scope: !1126, file: !3, line: 560, type: !24)
!1126 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1127 = !DILocalVariable(name: "od", scope: !1126, file: !3, line: 560, type: !24)
!1128 = !DILocalVariable(name: "oe", scope: !1129, file: !3, line: 560, type: !24)
!1129 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1130 = !DILocalVariable(name: "od", scope: !1129, file: !3, line: 560, type: !24)
!1131 = !DILocalVariable(name: "oe", scope: !1132, file: !3, line: 560, type: !24)
!1132 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1133 = !DILocalVariable(name: "od", scope: !1132, file: !3, line: 560, type: !24)
!1134 = !DILocalVariable(name: "oe", scope: !1135, file: !3, line: 560, type: !24)
!1135 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1136 = !DILocalVariable(name: "od", scope: !1135, file: !3, line: 560, type: !24)
!1137 = !DILocalVariable(name: "oe", scope: !1138, file: !3, line: 560, type: !24)
!1138 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1139 = !DILocalVariable(name: "od", scope: !1138, file: !3, line: 560, type: !24)
!1140 = !DILocalVariable(name: "oe", scope: !1141, file: !3, line: 560, type: !24)
!1141 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1142 = !DILocalVariable(name: "od", scope: !1141, file: !3, line: 560, type: !24)
!1143 = !DILocalVariable(name: "oe", scope: !1144, file: !3, line: 560, type: !24)
!1144 = distinct !DILexicalBlock(scope: !949, file: !3, line: 560, column: 5)
!1145 = !DILocalVariable(name: "od", scope: !1144, file: !3, line: 560, type: !24)
!1146 = !DILocation(line: 0, scope: !949)
!1147 = !DILocation(line: 0, scope: !955)
!1148 = !DILocation(line: 560, column: 5, scope: !955)
!1149 = !DILocation(line: 0, scope: !958)
!1150 = !DILocation(line: 560, column: 5, scope: !958)
!1151 = !DILocation(line: 0, scope: !961)
!1152 = !DILocation(line: 560, column: 5, scope: !961)
!1153 = !DILocation(line: 0, scope: !964)
!1154 = !DILocation(line: 560, column: 5, scope: !964)
!1155 = !DILocation(line: 0, scope: !967)
!1156 = !DILocation(line: 560, column: 5, scope: !967)
!1157 = !DILocation(line: 0, scope: !970)
!1158 = !DILocation(line: 560, column: 5, scope: !970)
!1159 = !DILocation(line: 0, scope: !973)
!1160 = !DILocation(line: 560, column: 5, scope: !973)
!1161 = !DILocation(line: 0, scope: !976)
!1162 = !DILocation(line: 560, column: 5, scope: !976)
!1163 = !DILocation(line: 0, scope: !979)
!1164 = !DILocation(line: 560, column: 5, scope: !979)
!1165 = !DILocation(line: 0, scope: !982)
!1166 = !DILocation(line: 560, column: 5, scope: !982)
!1167 = !DILocation(line: 0, scope: !985)
!1168 = !DILocation(line: 560, column: 5, scope: !985)
!1169 = !DILocation(line: 0, scope: !988)
!1170 = !DILocation(line: 560, column: 5, scope: !988)
!1171 = !DILocation(line: 0, scope: !991)
!1172 = !DILocation(line: 560, column: 5, scope: !991)
!1173 = !DILocation(line: 0, scope: !994)
!1174 = !DILocation(line: 560, column: 5, scope: !994)
!1175 = !DILocation(line: 0, scope: !997)
!1176 = !DILocation(line: 560, column: 5, scope: !997)
!1177 = !DILocation(line: 0, scope: !1000)
!1178 = !DILocation(line: 560, column: 5, scope: !1000)
!1179 = !DILocation(line: 0, scope: !1003)
!1180 = !DILocation(line: 560, column: 5, scope: !1003)
!1181 = !DILocation(line: 0, scope: !1006)
!1182 = !DILocation(line: 560, column: 5, scope: !1006)
!1183 = !DILocation(line: 0, scope: !1009)
!1184 = !DILocation(line: 560, column: 5, scope: !1009)
!1185 = !DILocation(line: 0, scope: !1012)
!1186 = !DILocation(line: 560, column: 5, scope: !1012)
!1187 = !DILocation(line: 0, scope: !1015)
!1188 = !DILocation(line: 560, column: 5, scope: !1015)
!1189 = !DILocation(line: 0, scope: !1018)
!1190 = !DILocation(line: 560, column: 5, scope: !1018)
!1191 = !DILocation(line: 0, scope: !1021)
!1192 = !DILocation(line: 560, column: 5, scope: !1021)
!1193 = !DILocation(line: 0, scope: !1024)
!1194 = !DILocation(line: 560, column: 5, scope: !1024)
!1195 = !DILocation(line: 0, scope: !1027)
!1196 = !DILocation(line: 560, column: 5, scope: !1027)
!1197 = !DILocation(line: 0, scope: !1030)
!1198 = !DILocation(line: 560, column: 5, scope: !1030)
!1199 = !DILocation(line: 0, scope: !1033)
!1200 = !DILocation(line: 560, column: 5, scope: !1033)
!1201 = !DILocation(line: 0, scope: !1036)
!1202 = !DILocation(line: 560, column: 5, scope: !1036)
!1203 = !DILocation(line: 0, scope: !1039)
!1204 = !DILocation(line: 560, column: 5, scope: !1039)
!1205 = !DILocation(line: 0, scope: !1042)
!1206 = !DILocation(line: 560, column: 5, scope: !1042)
!1207 = !DILocation(line: 0, scope: !1045)
!1208 = !DILocation(line: 560, column: 5, scope: !1045)
!1209 = !DILocation(line: 0, scope: !1048)
!1210 = !DILocation(line: 560, column: 5, scope: !1048)
!1211 = !DILocation(line: 0, scope: !1051)
!1212 = !DILocation(line: 560, column: 5, scope: !1051)
!1213 = !DILocation(line: 0, scope: !1054)
!1214 = !DILocation(line: 560, column: 5, scope: !1054)
!1215 = !DILocation(line: 0, scope: !1057)
!1216 = !DILocation(line: 560, column: 5, scope: !1057)
!1217 = !DILocation(line: 0, scope: !1060)
!1218 = !DILocation(line: 560, column: 5, scope: !1060)
!1219 = !DILocation(line: 0, scope: !1063)
!1220 = !DILocation(line: 560, column: 5, scope: !1063)
!1221 = !DILocation(line: 0, scope: !1066)
!1222 = !DILocation(line: 560, column: 5, scope: !1066)
!1223 = !DILocation(line: 0, scope: !1069)
!1224 = !DILocation(line: 560, column: 5, scope: !1069)
!1225 = !DILocation(line: 0, scope: !1072)
!1226 = !DILocation(line: 560, column: 5, scope: !1072)
!1227 = !DILocation(line: 0, scope: !1075)
!1228 = !DILocation(line: 560, column: 5, scope: !1075)
!1229 = !DILocation(line: 0, scope: !1078)
!1230 = !DILocation(line: 560, column: 5, scope: !1078)
!1231 = !DILocation(line: 0, scope: !1081)
!1232 = !DILocation(line: 560, column: 5, scope: !1081)
!1233 = !DILocation(line: 0, scope: !1084)
!1234 = !DILocation(line: 560, column: 5, scope: !1084)
!1235 = !DILocation(line: 0, scope: !1087)
!1236 = !DILocation(line: 560, column: 5, scope: !1087)
!1237 = !DILocation(line: 0, scope: !1090)
!1238 = !DILocation(line: 560, column: 5, scope: !1090)
!1239 = !DILocation(line: 0, scope: !1093)
!1240 = !DILocation(line: 560, column: 5, scope: !1093)
!1241 = !DILocation(line: 0, scope: !1096)
!1242 = !DILocation(line: 560, column: 5, scope: !1096)
!1243 = !DILocation(line: 0, scope: !1099)
!1244 = !DILocation(line: 560, column: 5, scope: !1099)
!1245 = !DILocation(line: 0, scope: !1102)
!1246 = !DILocation(line: 560, column: 5, scope: !1102)
!1247 = !DILocation(line: 0, scope: !1105)
!1248 = !DILocation(line: 560, column: 5, scope: !1105)
!1249 = !DILocation(line: 0, scope: !1108)
!1250 = !DILocation(line: 560, column: 5, scope: !1108)
!1251 = !DILocation(line: 0, scope: !1111)
!1252 = !DILocation(line: 560, column: 5, scope: !1111)
!1253 = !DILocation(line: 0, scope: !1114)
!1254 = !DILocation(line: 560, column: 5, scope: !1114)
!1255 = !DILocation(line: 0, scope: !1117)
!1256 = !DILocation(line: 560, column: 5, scope: !1117)
!1257 = !DILocation(line: 0, scope: !1120)
!1258 = !DILocation(line: 560, column: 5, scope: !1120)
!1259 = !DILocation(line: 0, scope: !1123)
!1260 = !DILocation(line: 560, column: 5, scope: !1123)
!1261 = !DILocation(line: 0, scope: !1126)
!1262 = !DILocation(line: 560, column: 5, scope: !1126)
!1263 = !DILocation(line: 0, scope: !1129)
!1264 = !DILocation(line: 560, column: 5, scope: !1129)
!1265 = !DILocation(line: 0, scope: !1132)
!1266 = !DILocation(line: 560, column: 5, scope: !1132)
!1267 = !DILocation(line: 0, scope: !1135)
!1268 = !DILocation(line: 560, column: 5, scope: !1135)
!1269 = !DILocation(line: 0, scope: !1138)
!1270 = !DILocation(line: 560, column: 5, scope: !1138)
!1271 = !DILocation(line: 0, scope: !1141)
!1272 = !DILocation(line: 560, column: 5, scope: !1141)
!1273 = !DILocation(line: 0, scope: !1144)
!1274 = !DILocation(line: 560, column: 5, scope: !1144)
!1275 = !DILocation(line: 561, column: 5, scope: !949)
!1276 = !DILocation(line: 562, column: 1, scope: !949)
!1277 = distinct !DISubprogram(name: "zigzag_sub_4x4_field", scope: !3, file: !3, line: 547, type: !857, scopeLine: 548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1284, !1285, !1287, !1288, !1290, !1291, !1293, !1294, !1296, !1297, !1299, !1300, !1302, !1303, !1305, !1306, !1308, !1309, !1311, !1312, !1314, !1315, !1317, !1318, !1320, !1321, !1323, !1324, !1326, !1327, !1329}
!1279 = !DILocalVariable(name: "level", arg: 1, scope: !1277, file: !3, line: 547, type: !5)
!1280 = !DILocalVariable(name: "p_src", arg: 2, scope: !1277, file: !3, line: 547, type: !859)
!1281 = !DILocalVariable(name: "p_dst", arg: 3, scope: !1277, file: !3, line: 547, type: !77)
!1282 = !DILocalVariable(name: "oe", scope: !1283, file: !3, line: 549, type: !24)
!1283 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 549, column: 5)
!1284 = !DILocalVariable(name: "od", scope: !1283, file: !3, line: 549, type: !24)
!1285 = !DILocalVariable(name: "oe", scope: !1286, file: !3, line: 549, type: !24)
!1286 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 549, column: 5)
!1287 = !DILocalVariable(name: "od", scope: !1286, file: !3, line: 549, type: !24)
!1288 = !DILocalVariable(name: "oe", scope: !1289, file: !3, line: 549, type: !24)
!1289 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 549, column: 5)
!1290 = !DILocalVariable(name: "od", scope: !1289, file: !3, line: 549, type: !24)
!1291 = !DILocalVariable(name: "oe", scope: !1292, file: !3, line: 549, type: !24)
!1292 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 549, column: 5)
!1293 = !DILocalVariable(name: "od", scope: !1292, file: !3, line: 549, type: !24)
!1294 = !DILocalVariable(name: "oe", scope: !1295, file: !3, line: 549, type: !24)
!1295 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 549, column: 5)
!1296 = !DILocalVariable(name: "od", scope: !1295, file: !3, line: 549, type: !24)
!1297 = !DILocalVariable(name: "oe", scope: !1298, file: !3, line: 549, type: !24)
!1298 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 549, column: 5)
!1299 = !DILocalVariable(name: "od", scope: !1298, file: !3, line: 549, type: !24)
!1300 = !DILocalVariable(name: "oe", scope: !1301, file: !3, line: 549, type: !24)
!1301 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 549, column: 5)
!1302 = !DILocalVariable(name: "od", scope: !1301, file: !3, line: 549, type: !24)
!1303 = !DILocalVariable(name: "oe", scope: !1304, file: !3, line: 549, type: !24)
!1304 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 549, column: 5)
!1305 = !DILocalVariable(name: "od", scope: !1304, file: !3, line: 549, type: !24)
!1306 = !DILocalVariable(name: "oe", scope: !1307, file: !3, line: 549, type: !24)
!1307 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 549, column: 5)
!1308 = !DILocalVariable(name: "od", scope: !1307, file: !3, line: 549, type: !24)
!1309 = !DILocalVariable(name: "oe", scope: !1310, file: !3, line: 549, type: !24)
!1310 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 549, column: 5)
!1311 = !DILocalVariable(name: "od", scope: !1310, file: !3, line: 549, type: !24)
!1312 = !DILocalVariable(name: "oe", scope: !1313, file: !3, line: 549, type: !24)
!1313 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 549, column: 5)
!1314 = !DILocalVariable(name: "od", scope: !1313, file: !3, line: 549, type: !24)
!1315 = !DILocalVariable(name: "oe", scope: !1316, file: !3, line: 549, type: !24)
!1316 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 549, column: 5)
!1317 = !DILocalVariable(name: "od", scope: !1316, file: !3, line: 549, type: !24)
!1318 = !DILocalVariable(name: "oe", scope: !1319, file: !3, line: 549, type: !24)
!1319 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 549, column: 5)
!1320 = !DILocalVariable(name: "od", scope: !1319, file: !3, line: 549, type: !24)
!1321 = !DILocalVariable(name: "oe", scope: !1322, file: !3, line: 549, type: !24)
!1322 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 549, column: 5)
!1323 = !DILocalVariable(name: "od", scope: !1322, file: !3, line: 549, type: !24)
!1324 = !DILocalVariable(name: "oe", scope: !1325, file: !3, line: 549, type: !24)
!1325 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 549, column: 5)
!1326 = !DILocalVariable(name: "od", scope: !1325, file: !3, line: 549, type: !24)
!1327 = !DILocalVariable(name: "oe", scope: !1328, file: !3, line: 549, type: !24)
!1328 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 549, column: 5)
!1329 = !DILocalVariable(name: "od", scope: !1328, file: !3, line: 549, type: !24)
!1330 = !DILocation(line: 0, scope: !1277)
!1331 = !DILocation(line: 0, scope: !1283)
!1332 = !DILocation(line: 549, column: 5, scope: !1283)
!1333 = !DILocation(line: 0, scope: !1286)
!1334 = !DILocation(line: 549, column: 5, scope: !1286)
!1335 = !DILocation(line: 0, scope: !1289)
!1336 = !DILocation(line: 549, column: 5, scope: !1289)
!1337 = !DILocation(line: 0, scope: !1292)
!1338 = !DILocation(line: 549, column: 5, scope: !1292)
!1339 = !DILocation(line: 0, scope: !1295)
!1340 = !DILocation(line: 549, column: 5, scope: !1295)
!1341 = !DILocation(line: 0, scope: !1298)
!1342 = !DILocation(line: 549, column: 5, scope: !1298)
!1343 = !DILocation(line: 0, scope: !1301)
!1344 = !DILocation(line: 549, column: 5, scope: !1301)
!1345 = !DILocation(line: 0, scope: !1304)
!1346 = !DILocation(line: 549, column: 5, scope: !1304)
!1347 = !DILocation(line: 0, scope: !1307)
!1348 = !DILocation(line: 549, column: 5, scope: !1307)
!1349 = !DILocation(line: 0, scope: !1310)
!1350 = !DILocation(line: 549, column: 5, scope: !1310)
!1351 = !DILocation(line: 0, scope: !1313)
!1352 = !DILocation(line: 549, column: 5, scope: !1313)
!1353 = !DILocation(line: 0, scope: !1316)
!1354 = !DILocation(line: 549, column: 5, scope: !1316)
!1355 = !DILocation(line: 0, scope: !1319)
!1356 = !DILocation(line: 549, column: 5, scope: !1319)
!1357 = !DILocation(line: 0, scope: !1322)
!1358 = !DILocation(line: 549, column: 5, scope: !1322)
!1359 = !DILocation(line: 0, scope: !1325)
!1360 = !DILocation(line: 549, column: 5, scope: !1325)
!1361 = !DILocation(line: 0, scope: !1328)
!1362 = !DILocation(line: 549, column: 5, scope: !1328)
!1363 = !DILocation(line: 550, column: 5, scope: !1277)
!1364 = !DILocation(line: 551, column: 1, scope: !1277)
!1365 = distinct !DISubprogram(name: "zigzag_scan_8x8_frame", scope: !3, file: !3, line: 493, type: !849, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1366)
!1366 = !{!1367, !1368}
!1367 = !DILocalVariable(name: "level", arg: 1, scope: !1365, file: !3, line: 493, type: !5)
!1368 = !DILocalVariable(name: "dct", arg: 2, scope: !1365, file: !3, line: 493, type: !99)
!1369 = !DILocation(line: 0, scope: !1365)
!1370 = !DILocation(line: 495, column: 5, scope: !1365)
!1371 = !DILocation(line: 496, column: 1, scope: !1365)
!1372 = distinct !DISubprogram(name: "zigzag_scan_4x4_frame", scope: !3, file: !3, line: 506, type: !853, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1373)
!1373 = !{!1374, !1375}
!1374 = !DILocalVariable(name: "level", arg: 1, scope: !1372, file: !3, line: 506, type: !5)
!1375 = !DILocalVariable(name: "dct", arg: 2, scope: !1372, file: !3, line: 506, type: !73)
!1376 = !DILocation(line: 0, scope: !1372)
!1377 = !DILocation(line: 508, column: 5, scope: !1372)
!1378 = !DILocation(line: 509, column: 1, scope: !1372)
!1379 = distinct !DISubprogram(name: "zigzag_sub_8x8_frame", scope: !3, file: !3, line: 553, type: !857, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1380)
!1380 = !{!1381, !1382, !1383, !1384, !1386, !1387, !1389, !1390, !1392, !1393, !1395, !1396, !1398, !1399, !1401, !1402, !1404, !1405, !1407, !1408, !1410, !1411, !1413, !1414, !1416, !1417, !1419, !1420, !1422, !1423, !1425, !1426, !1428, !1429, !1431, !1432, !1434, !1435, !1437, !1438, !1440, !1441, !1443, !1444, !1446, !1447, !1449, !1450, !1452, !1453, !1455, !1456, !1458, !1459, !1461, !1462, !1464, !1465, !1467, !1468, !1470, !1471, !1473, !1474, !1476, !1477, !1479, !1480, !1482, !1483, !1485, !1486, !1488, !1489, !1491, !1492, !1494, !1495, !1497, !1498, !1500, !1501, !1503, !1504, !1506, !1507, !1509, !1510, !1512, !1513, !1515, !1516, !1518, !1519, !1521, !1522, !1524, !1525, !1527, !1528, !1530, !1531, !1533, !1534, !1536, !1537, !1539, !1540, !1542, !1543, !1545, !1546, !1548, !1549, !1551, !1552, !1554, !1555, !1557, !1558, !1560, !1561, !1563, !1564, !1566, !1567, !1569, !1570, !1572, !1573, !1575}
!1381 = !DILocalVariable(name: "level", arg: 1, scope: !1379, file: !3, line: 553, type: !5)
!1382 = !DILocalVariable(name: "p_src", arg: 2, scope: !1379, file: !3, line: 553, type: !859)
!1383 = !DILocalVariable(name: "p_dst", arg: 3, scope: !1379, file: !3, line: 553, type: !77)
!1384 = !DILocalVariable(name: "oe", scope: !1385, file: !3, line: 555, type: !24)
!1385 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1386 = !DILocalVariable(name: "od", scope: !1385, file: !3, line: 555, type: !24)
!1387 = !DILocalVariable(name: "oe", scope: !1388, file: !3, line: 555, type: !24)
!1388 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1389 = !DILocalVariable(name: "od", scope: !1388, file: !3, line: 555, type: !24)
!1390 = !DILocalVariable(name: "oe", scope: !1391, file: !3, line: 555, type: !24)
!1391 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1392 = !DILocalVariable(name: "od", scope: !1391, file: !3, line: 555, type: !24)
!1393 = !DILocalVariable(name: "oe", scope: !1394, file: !3, line: 555, type: !24)
!1394 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1395 = !DILocalVariable(name: "od", scope: !1394, file: !3, line: 555, type: !24)
!1396 = !DILocalVariable(name: "oe", scope: !1397, file: !3, line: 555, type: !24)
!1397 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1398 = !DILocalVariable(name: "od", scope: !1397, file: !3, line: 555, type: !24)
!1399 = !DILocalVariable(name: "oe", scope: !1400, file: !3, line: 555, type: !24)
!1400 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1401 = !DILocalVariable(name: "od", scope: !1400, file: !3, line: 555, type: !24)
!1402 = !DILocalVariable(name: "oe", scope: !1403, file: !3, line: 555, type: !24)
!1403 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1404 = !DILocalVariable(name: "od", scope: !1403, file: !3, line: 555, type: !24)
!1405 = !DILocalVariable(name: "oe", scope: !1406, file: !3, line: 555, type: !24)
!1406 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1407 = !DILocalVariable(name: "od", scope: !1406, file: !3, line: 555, type: !24)
!1408 = !DILocalVariable(name: "oe", scope: !1409, file: !3, line: 555, type: !24)
!1409 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1410 = !DILocalVariable(name: "od", scope: !1409, file: !3, line: 555, type: !24)
!1411 = !DILocalVariable(name: "oe", scope: !1412, file: !3, line: 555, type: !24)
!1412 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1413 = !DILocalVariable(name: "od", scope: !1412, file: !3, line: 555, type: !24)
!1414 = !DILocalVariable(name: "oe", scope: !1415, file: !3, line: 555, type: !24)
!1415 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1416 = !DILocalVariable(name: "od", scope: !1415, file: !3, line: 555, type: !24)
!1417 = !DILocalVariable(name: "oe", scope: !1418, file: !3, line: 555, type: !24)
!1418 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1419 = !DILocalVariable(name: "od", scope: !1418, file: !3, line: 555, type: !24)
!1420 = !DILocalVariable(name: "oe", scope: !1421, file: !3, line: 555, type: !24)
!1421 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1422 = !DILocalVariable(name: "od", scope: !1421, file: !3, line: 555, type: !24)
!1423 = !DILocalVariable(name: "oe", scope: !1424, file: !3, line: 555, type: !24)
!1424 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1425 = !DILocalVariable(name: "od", scope: !1424, file: !3, line: 555, type: !24)
!1426 = !DILocalVariable(name: "oe", scope: !1427, file: !3, line: 555, type: !24)
!1427 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1428 = !DILocalVariable(name: "od", scope: !1427, file: !3, line: 555, type: !24)
!1429 = !DILocalVariable(name: "oe", scope: !1430, file: !3, line: 555, type: !24)
!1430 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1431 = !DILocalVariable(name: "od", scope: !1430, file: !3, line: 555, type: !24)
!1432 = !DILocalVariable(name: "oe", scope: !1433, file: !3, line: 555, type: !24)
!1433 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1434 = !DILocalVariable(name: "od", scope: !1433, file: !3, line: 555, type: !24)
!1435 = !DILocalVariable(name: "oe", scope: !1436, file: !3, line: 555, type: !24)
!1436 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1437 = !DILocalVariable(name: "od", scope: !1436, file: !3, line: 555, type: !24)
!1438 = !DILocalVariable(name: "oe", scope: !1439, file: !3, line: 555, type: !24)
!1439 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1440 = !DILocalVariable(name: "od", scope: !1439, file: !3, line: 555, type: !24)
!1441 = !DILocalVariable(name: "oe", scope: !1442, file: !3, line: 555, type: !24)
!1442 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1443 = !DILocalVariable(name: "od", scope: !1442, file: !3, line: 555, type: !24)
!1444 = !DILocalVariable(name: "oe", scope: !1445, file: !3, line: 555, type: !24)
!1445 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1446 = !DILocalVariable(name: "od", scope: !1445, file: !3, line: 555, type: !24)
!1447 = !DILocalVariable(name: "oe", scope: !1448, file: !3, line: 555, type: !24)
!1448 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1449 = !DILocalVariable(name: "od", scope: !1448, file: !3, line: 555, type: !24)
!1450 = !DILocalVariable(name: "oe", scope: !1451, file: !3, line: 555, type: !24)
!1451 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1452 = !DILocalVariable(name: "od", scope: !1451, file: !3, line: 555, type: !24)
!1453 = !DILocalVariable(name: "oe", scope: !1454, file: !3, line: 555, type: !24)
!1454 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1455 = !DILocalVariable(name: "od", scope: !1454, file: !3, line: 555, type: !24)
!1456 = !DILocalVariable(name: "oe", scope: !1457, file: !3, line: 555, type: !24)
!1457 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1458 = !DILocalVariable(name: "od", scope: !1457, file: !3, line: 555, type: !24)
!1459 = !DILocalVariable(name: "oe", scope: !1460, file: !3, line: 555, type: !24)
!1460 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1461 = !DILocalVariable(name: "od", scope: !1460, file: !3, line: 555, type: !24)
!1462 = !DILocalVariable(name: "oe", scope: !1463, file: !3, line: 555, type: !24)
!1463 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1464 = !DILocalVariable(name: "od", scope: !1463, file: !3, line: 555, type: !24)
!1465 = !DILocalVariable(name: "oe", scope: !1466, file: !3, line: 555, type: !24)
!1466 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1467 = !DILocalVariable(name: "od", scope: !1466, file: !3, line: 555, type: !24)
!1468 = !DILocalVariable(name: "oe", scope: !1469, file: !3, line: 555, type: !24)
!1469 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1470 = !DILocalVariable(name: "od", scope: !1469, file: !3, line: 555, type: !24)
!1471 = !DILocalVariable(name: "oe", scope: !1472, file: !3, line: 555, type: !24)
!1472 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1473 = !DILocalVariable(name: "od", scope: !1472, file: !3, line: 555, type: !24)
!1474 = !DILocalVariable(name: "oe", scope: !1475, file: !3, line: 555, type: !24)
!1475 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1476 = !DILocalVariable(name: "od", scope: !1475, file: !3, line: 555, type: !24)
!1477 = !DILocalVariable(name: "oe", scope: !1478, file: !3, line: 555, type: !24)
!1478 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1479 = !DILocalVariable(name: "od", scope: !1478, file: !3, line: 555, type: !24)
!1480 = !DILocalVariable(name: "oe", scope: !1481, file: !3, line: 555, type: !24)
!1481 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1482 = !DILocalVariable(name: "od", scope: !1481, file: !3, line: 555, type: !24)
!1483 = !DILocalVariable(name: "oe", scope: !1484, file: !3, line: 555, type: !24)
!1484 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1485 = !DILocalVariable(name: "od", scope: !1484, file: !3, line: 555, type: !24)
!1486 = !DILocalVariable(name: "oe", scope: !1487, file: !3, line: 555, type: !24)
!1487 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1488 = !DILocalVariable(name: "od", scope: !1487, file: !3, line: 555, type: !24)
!1489 = !DILocalVariable(name: "oe", scope: !1490, file: !3, line: 555, type: !24)
!1490 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1491 = !DILocalVariable(name: "od", scope: !1490, file: !3, line: 555, type: !24)
!1492 = !DILocalVariable(name: "oe", scope: !1493, file: !3, line: 555, type: !24)
!1493 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1494 = !DILocalVariable(name: "od", scope: !1493, file: !3, line: 555, type: !24)
!1495 = !DILocalVariable(name: "oe", scope: !1496, file: !3, line: 555, type: !24)
!1496 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1497 = !DILocalVariable(name: "od", scope: !1496, file: !3, line: 555, type: !24)
!1498 = !DILocalVariable(name: "oe", scope: !1499, file: !3, line: 555, type: !24)
!1499 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1500 = !DILocalVariable(name: "od", scope: !1499, file: !3, line: 555, type: !24)
!1501 = !DILocalVariable(name: "oe", scope: !1502, file: !3, line: 555, type: !24)
!1502 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1503 = !DILocalVariable(name: "od", scope: !1502, file: !3, line: 555, type: !24)
!1504 = !DILocalVariable(name: "oe", scope: !1505, file: !3, line: 555, type: !24)
!1505 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1506 = !DILocalVariable(name: "od", scope: !1505, file: !3, line: 555, type: !24)
!1507 = !DILocalVariable(name: "oe", scope: !1508, file: !3, line: 555, type: !24)
!1508 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1509 = !DILocalVariable(name: "od", scope: !1508, file: !3, line: 555, type: !24)
!1510 = !DILocalVariable(name: "oe", scope: !1511, file: !3, line: 555, type: !24)
!1511 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1512 = !DILocalVariable(name: "od", scope: !1511, file: !3, line: 555, type: !24)
!1513 = !DILocalVariable(name: "oe", scope: !1514, file: !3, line: 555, type: !24)
!1514 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1515 = !DILocalVariable(name: "od", scope: !1514, file: !3, line: 555, type: !24)
!1516 = !DILocalVariable(name: "oe", scope: !1517, file: !3, line: 555, type: !24)
!1517 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1518 = !DILocalVariable(name: "od", scope: !1517, file: !3, line: 555, type: !24)
!1519 = !DILocalVariable(name: "oe", scope: !1520, file: !3, line: 555, type: !24)
!1520 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1521 = !DILocalVariable(name: "od", scope: !1520, file: !3, line: 555, type: !24)
!1522 = !DILocalVariable(name: "oe", scope: !1523, file: !3, line: 555, type: !24)
!1523 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1524 = !DILocalVariable(name: "od", scope: !1523, file: !3, line: 555, type: !24)
!1525 = !DILocalVariable(name: "oe", scope: !1526, file: !3, line: 555, type: !24)
!1526 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1527 = !DILocalVariable(name: "od", scope: !1526, file: !3, line: 555, type: !24)
!1528 = !DILocalVariable(name: "oe", scope: !1529, file: !3, line: 555, type: !24)
!1529 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1530 = !DILocalVariable(name: "od", scope: !1529, file: !3, line: 555, type: !24)
!1531 = !DILocalVariable(name: "oe", scope: !1532, file: !3, line: 555, type: !24)
!1532 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1533 = !DILocalVariable(name: "od", scope: !1532, file: !3, line: 555, type: !24)
!1534 = !DILocalVariable(name: "oe", scope: !1535, file: !3, line: 555, type: !24)
!1535 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1536 = !DILocalVariable(name: "od", scope: !1535, file: !3, line: 555, type: !24)
!1537 = !DILocalVariable(name: "oe", scope: !1538, file: !3, line: 555, type: !24)
!1538 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1539 = !DILocalVariable(name: "od", scope: !1538, file: !3, line: 555, type: !24)
!1540 = !DILocalVariable(name: "oe", scope: !1541, file: !3, line: 555, type: !24)
!1541 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1542 = !DILocalVariable(name: "od", scope: !1541, file: !3, line: 555, type: !24)
!1543 = !DILocalVariable(name: "oe", scope: !1544, file: !3, line: 555, type: !24)
!1544 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1545 = !DILocalVariable(name: "od", scope: !1544, file: !3, line: 555, type: !24)
!1546 = !DILocalVariable(name: "oe", scope: !1547, file: !3, line: 555, type: !24)
!1547 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1548 = !DILocalVariable(name: "od", scope: !1547, file: !3, line: 555, type: !24)
!1549 = !DILocalVariable(name: "oe", scope: !1550, file: !3, line: 555, type: !24)
!1550 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1551 = !DILocalVariable(name: "od", scope: !1550, file: !3, line: 555, type: !24)
!1552 = !DILocalVariable(name: "oe", scope: !1553, file: !3, line: 555, type: !24)
!1553 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1554 = !DILocalVariable(name: "od", scope: !1553, file: !3, line: 555, type: !24)
!1555 = !DILocalVariable(name: "oe", scope: !1556, file: !3, line: 555, type: !24)
!1556 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1557 = !DILocalVariable(name: "od", scope: !1556, file: !3, line: 555, type: !24)
!1558 = !DILocalVariable(name: "oe", scope: !1559, file: !3, line: 555, type: !24)
!1559 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1560 = !DILocalVariable(name: "od", scope: !1559, file: !3, line: 555, type: !24)
!1561 = !DILocalVariable(name: "oe", scope: !1562, file: !3, line: 555, type: !24)
!1562 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1563 = !DILocalVariable(name: "od", scope: !1562, file: !3, line: 555, type: !24)
!1564 = !DILocalVariable(name: "oe", scope: !1565, file: !3, line: 555, type: !24)
!1565 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1566 = !DILocalVariable(name: "od", scope: !1565, file: !3, line: 555, type: !24)
!1567 = !DILocalVariable(name: "oe", scope: !1568, file: !3, line: 555, type: !24)
!1568 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1569 = !DILocalVariable(name: "od", scope: !1568, file: !3, line: 555, type: !24)
!1570 = !DILocalVariable(name: "oe", scope: !1571, file: !3, line: 555, type: !24)
!1571 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1572 = !DILocalVariable(name: "od", scope: !1571, file: !3, line: 555, type: !24)
!1573 = !DILocalVariable(name: "oe", scope: !1574, file: !3, line: 555, type: !24)
!1574 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 555, column: 5)
!1575 = !DILocalVariable(name: "od", scope: !1574, file: !3, line: 555, type: !24)
!1576 = !DILocation(line: 0, scope: !1379)
!1577 = !DILocation(line: 0, scope: !1385)
!1578 = !DILocation(line: 555, column: 5, scope: !1385)
!1579 = !DILocation(line: 0, scope: !1388)
!1580 = !DILocation(line: 555, column: 5, scope: !1388)
!1581 = !DILocation(line: 0, scope: !1391)
!1582 = !DILocation(line: 555, column: 5, scope: !1391)
!1583 = !DILocation(line: 0, scope: !1394)
!1584 = !DILocation(line: 555, column: 5, scope: !1394)
!1585 = !DILocation(line: 0, scope: !1397)
!1586 = !DILocation(line: 555, column: 5, scope: !1397)
!1587 = !DILocation(line: 0, scope: !1400)
!1588 = !DILocation(line: 555, column: 5, scope: !1400)
!1589 = !DILocation(line: 0, scope: !1403)
!1590 = !DILocation(line: 555, column: 5, scope: !1403)
!1591 = !DILocation(line: 0, scope: !1406)
!1592 = !DILocation(line: 555, column: 5, scope: !1406)
!1593 = !DILocation(line: 0, scope: !1409)
!1594 = !DILocation(line: 555, column: 5, scope: !1409)
!1595 = !DILocation(line: 0, scope: !1412)
!1596 = !DILocation(line: 555, column: 5, scope: !1412)
!1597 = !DILocation(line: 0, scope: !1415)
!1598 = !DILocation(line: 555, column: 5, scope: !1415)
!1599 = !DILocation(line: 0, scope: !1418)
!1600 = !DILocation(line: 555, column: 5, scope: !1418)
!1601 = !DILocation(line: 0, scope: !1421)
!1602 = !DILocation(line: 555, column: 5, scope: !1421)
!1603 = !DILocation(line: 0, scope: !1424)
!1604 = !DILocation(line: 555, column: 5, scope: !1424)
!1605 = !DILocation(line: 0, scope: !1427)
!1606 = !DILocation(line: 555, column: 5, scope: !1427)
!1607 = !DILocation(line: 0, scope: !1430)
!1608 = !DILocation(line: 555, column: 5, scope: !1430)
!1609 = !DILocation(line: 0, scope: !1433)
!1610 = !DILocation(line: 555, column: 5, scope: !1433)
!1611 = !DILocation(line: 0, scope: !1436)
!1612 = !DILocation(line: 555, column: 5, scope: !1436)
!1613 = !DILocation(line: 0, scope: !1439)
!1614 = !DILocation(line: 555, column: 5, scope: !1439)
!1615 = !DILocation(line: 0, scope: !1442)
!1616 = !DILocation(line: 555, column: 5, scope: !1442)
!1617 = !DILocation(line: 0, scope: !1445)
!1618 = !DILocation(line: 555, column: 5, scope: !1445)
!1619 = !DILocation(line: 0, scope: !1448)
!1620 = !DILocation(line: 555, column: 5, scope: !1448)
!1621 = !DILocation(line: 0, scope: !1451)
!1622 = !DILocation(line: 555, column: 5, scope: !1451)
!1623 = !DILocation(line: 0, scope: !1454)
!1624 = !DILocation(line: 555, column: 5, scope: !1454)
!1625 = !DILocation(line: 0, scope: !1457)
!1626 = !DILocation(line: 555, column: 5, scope: !1457)
!1627 = !DILocation(line: 0, scope: !1460)
!1628 = !DILocation(line: 555, column: 5, scope: !1460)
!1629 = !DILocation(line: 0, scope: !1463)
!1630 = !DILocation(line: 555, column: 5, scope: !1463)
!1631 = !DILocation(line: 0, scope: !1466)
!1632 = !DILocation(line: 555, column: 5, scope: !1466)
!1633 = !DILocation(line: 0, scope: !1469)
!1634 = !DILocation(line: 555, column: 5, scope: !1469)
!1635 = !DILocation(line: 0, scope: !1472)
!1636 = !DILocation(line: 555, column: 5, scope: !1472)
!1637 = !DILocation(line: 0, scope: !1475)
!1638 = !DILocation(line: 555, column: 5, scope: !1475)
!1639 = !DILocation(line: 0, scope: !1478)
!1640 = !DILocation(line: 555, column: 5, scope: !1478)
!1641 = !DILocation(line: 0, scope: !1481)
!1642 = !DILocation(line: 555, column: 5, scope: !1481)
!1643 = !DILocation(line: 0, scope: !1484)
!1644 = !DILocation(line: 555, column: 5, scope: !1484)
!1645 = !DILocation(line: 0, scope: !1487)
!1646 = !DILocation(line: 555, column: 5, scope: !1487)
!1647 = !DILocation(line: 0, scope: !1490)
!1648 = !DILocation(line: 555, column: 5, scope: !1490)
!1649 = !DILocation(line: 0, scope: !1493)
!1650 = !DILocation(line: 555, column: 5, scope: !1493)
!1651 = !DILocation(line: 0, scope: !1496)
!1652 = !DILocation(line: 555, column: 5, scope: !1496)
!1653 = !DILocation(line: 0, scope: !1499)
!1654 = !DILocation(line: 555, column: 5, scope: !1499)
!1655 = !DILocation(line: 0, scope: !1502)
!1656 = !DILocation(line: 555, column: 5, scope: !1502)
!1657 = !DILocation(line: 0, scope: !1505)
!1658 = !DILocation(line: 555, column: 5, scope: !1505)
!1659 = !DILocation(line: 0, scope: !1508)
!1660 = !DILocation(line: 555, column: 5, scope: !1508)
!1661 = !DILocation(line: 0, scope: !1511)
!1662 = !DILocation(line: 555, column: 5, scope: !1511)
!1663 = !DILocation(line: 0, scope: !1514)
!1664 = !DILocation(line: 555, column: 5, scope: !1514)
!1665 = !DILocation(line: 0, scope: !1517)
!1666 = !DILocation(line: 555, column: 5, scope: !1517)
!1667 = !DILocation(line: 0, scope: !1520)
!1668 = !DILocation(line: 555, column: 5, scope: !1520)
!1669 = !DILocation(line: 0, scope: !1523)
!1670 = !DILocation(line: 555, column: 5, scope: !1523)
!1671 = !DILocation(line: 0, scope: !1526)
!1672 = !DILocation(line: 555, column: 5, scope: !1526)
!1673 = !DILocation(line: 0, scope: !1529)
!1674 = !DILocation(line: 555, column: 5, scope: !1529)
!1675 = !DILocation(line: 0, scope: !1532)
!1676 = !DILocation(line: 555, column: 5, scope: !1532)
!1677 = !DILocation(line: 0, scope: !1535)
!1678 = !DILocation(line: 555, column: 5, scope: !1535)
!1679 = !DILocation(line: 0, scope: !1538)
!1680 = !DILocation(line: 555, column: 5, scope: !1538)
!1681 = !DILocation(line: 0, scope: !1541)
!1682 = !DILocation(line: 555, column: 5, scope: !1541)
!1683 = !DILocation(line: 0, scope: !1544)
!1684 = !DILocation(line: 555, column: 5, scope: !1544)
!1685 = !DILocation(line: 0, scope: !1547)
!1686 = !DILocation(line: 555, column: 5, scope: !1547)
!1687 = !DILocation(line: 0, scope: !1550)
!1688 = !DILocation(line: 555, column: 5, scope: !1550)
!1689 = !DILocation(line: 0, scope: !1553)
!1690 = !DILocation(line: 555, column: 5, scope: !1553)
!1691 = !DILocation(line: 0, scope: !1556)
!1692 = !DILocation(line: 555, column: 5, scope: !1556)
!1693 = !DILocation(line: 0, scope: !1559)
!1694 = !DILocation(line: 555, column: 5, scope: !1559)
!1695 = !DILocation(line: 0, scope: !1562)
!1696 = !DILocation(line: 555, column: 5, scope: !1562)
!1697 = !DILocation(line: 0, scope: !1565)
!1698 = !DILocation(line: 555, column: 5, scope: !1565)
!1699 = !DILocation(line: 0, scope: !1568)
!1700 = !DILocation(line: 555, column: 5, scope: !1568)
!1701 = !DILocation(line: 0, scope: !1571)
!1702 = !DILocation(line: 555, column: 5, scope: !1571)
!1703 = !DILocation(line: 0, scope: !1574)
!1704 = !DILocation(line: 555, column: 5, scope: !1574)
!1705 = !DILocation(line: 556, column: 5, scope: !1379)
!1706 = !DILocation(line: 557, column: 1, scope: !1379)
!1707 = distinct !DISubprogram(name: "zigzag_sub_4x4_frame", scope: !3, file: !3, line: 541, type: !857, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1708)
!1708 = !{!1709, !1710, !1711, !1712, !1714, !1715, !1717, !1718, !1720, !1721, !1723, !1724, !1726, !1727, !1729, !1730, !1732, !1733, !1735, !1736, !1738, !1739, !1741, !1742, !1744, !1745, !1747, !1748, !1750, !1751, !1753, !1754, !1756, !1757, !1759}
!1709 = !DILocalVariable(name: "level", arg: 1, scope: !1707, file: !3, line: 541, type: !5)
!1710 = !DILocalVariable(name: "p_src", arg: 2, scope: !1707, file: !3, line: 541, type: !859)
!1711 = !DILocalVariable(name: "p_dst", arg: 3, scope: !1707, file: !3, line: 541, type: !77)
!1712 = !DILocalVariable(name: "oe", scope: !1713, file: !3, line: 543, type: !24)
!1713 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 543, column: 5)
!1714 = !DILocalVariable(name: "od", scope: !1713, file: !3, line: 543, type: !24)
!1715 = !DILocalVariable(name: "oe", scope: !1716, file: !3, line: 543, type: !24)
!1716 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 543, column: 5)
!1717 = !DILocalVariable(name: "od", scope: !1716, file: !3, line: 543, type: !24)
!1718 = !DILocalVariable(name: "oe", scope: !1719, file: !3, line: 543, type: !24)
!1719 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 543, column: 5)
!1720 = !DILocalVariable(name: "od", scope: !1719, file: !3, line: 543, type: !24)
!1721 = !DILocalVariable(name: "oe", scope: !1722, file: !3, line: 543, type: !24)
!1722 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 543, column: 5)
!1723 = !DILocalVariable(name: "od", scope: !1722, file: !3, line: 543, type: !24)
!1724 = !DILocalVariable(name: "oe", scope: !1725, file: !3, line: 543, type: !24)
!1725 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 543, column: 5)
!1726 = !DILocalVariable(name: "od", scope: !1725, file: !3, line: 543, type: !24)
!1727 = !DILocalVariable(name: "oe", scope: !1728, file: !3, line: 543, type: !24)
!1728 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 543, column: 5)
!1729 = !DILocalVariable(name: "od", scope: !1728, file: !3, line: 543, type: !24)
!1730 = !DILocalVariable(name: "oe", scope: !1731, file: !3, line: 543, type: !24)
!1731 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 543, column: 5)
!1732 = !DILocalVariable(name: "od", scope: !1731, file: !3, line: 543, type: !24)
!1733 = !DILocalVariable(name: "oe", scope: !1734, file: !3, line: 543, type: !24)
!1734 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 543, column: 5)
!1735 = !DILocalVariable(name: "od", scope: !1734, file: !3, line: 543, type: !24)
!1736 = !DILocalVariable(name: "oe", scope: !1737, file: !3, line: 543, type: !24)
!1737 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 543, column: 5)
!1738 = !DILocalVariable(name: "od", scope: !1737, file: !3, line: 543, type: !24)
!1739 = !DILocalVariable(name: "oe", scope: !1740, file: !3, line: 543, type: !24)
!1740 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 543, column: 5)
!1741 = !DILocalVariable(name: "od", scope: !1740, file: !3, line: 543, type: !24)
!1742 = !DILocalVariable(name: "oe", scope: !1743, file: !3, line: 543, type: !24)
!1743 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 543, column: 5)
!1744 = !DILocalVariable(name: "od", scope: !1743, file: !3, line: 543, type: !24)
!1745 = !DILocalVariable(name: "oe", scope: !1746, file: !3, line: 543, type: !24)
!1746 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 543, column: 5)
!1747 = !DILocalVariable(name: "od", scope: !1746, file: !3, line: 543, type: !24)
!1748 = !DILocalVariable(name: "oe", scope: !1749, file: !3, line: 543, type: !24)
!1749 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 543, column: 5)
!1750 = !DILocalVariable(name: "od", scope: !1749, file: !3, line: 543, type: !24)
!1751 = !DILocalVariable(name: "oe", scope: !1752, file: !3, line: 543, type: !24)
!1752 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 543, column: 5)
!1753 = !DILocalVariable(name: "od", scope: !1752, file: !3, line: 543, type: !24)
!1754 = !DILocalVariable(name: "oe", scope: !1755, file: !3, line: 543, type: !24)
!1755 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 543, column: 5)
!1756 = !DILocalVariable(name: "od", scope: !1755, file: !3, line: 543, type: !24)
!1757 = !DILocalVariable(name: "oe", scope: !1758, file: !3, line: 543, type: !24)
!1758 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 543, column: 5)
!1759 = !DILocalVariable(name: "od", scope: !1758, file: !3, line: 543, type: !24)
!1760 = !DILocation(line: 0, scope: !1707)
!1761 = !DILocation(line: 0, scope: !1713)
!1762 = !DILocation(line: 543, column: 5, scope: !1713)
!1763 = !DILocation(line: 0, scope: !1716)
!1764 = !DILocation(line: 543, column: 5, scope: !1716)
!1765 = !DILocation(line: 0, scope: !1719)
!1766 = !DILocation(line: 543, column: 5, scope: !1719)
!1767 = !DILocation(line: 0, scope: !1722)
!1768 = !DILocation(line: 543, column: 5, scope: !1722)
!1769 = !DILocation(line: 0, scope: !1725)
!1770 = !DILocation(line: 543, column: 5, scope: !1725)
!1771 = !DILocation(line: 0, scope: !1728)
!1772 = !DILocation(line: 543, column: 5, scope: !1728)
!1773 = !DILocation(line: 0, scope: !1731)
!1774 = !DILocation(line: 543, column: 5, scope: !1731)
!1775 = !DILocation(line: 0, scope: !1734)
!1776 = !DILocation(line: 543, column: 5, scope: !1734)
!1777 = !DILocation(line: 0, scope: !1737)
!1778 = !DILocation(line: 543, column: 5, scope: !1737)
!1779 = !DILocation(line: 0, scope: !1740)
!1780 = !DILocation(line: 543, column: 5, scope: !1740)
!1781 = !DILocation(line: 0, scope: !1743)
!1782 = !DILocation(line: 543, column: 5, scope: !1743)
!1783 = !DILocation(line: 0, scope: !1746)
!1784 = !DILocation(line: 543, column: 5, scope: !1746)
!1785 = !DILocation(line: 0, scope: !1749)
!1786 = !DILocation(line: 543, column: 5, scope: !1749)
!1787 = !DILocation(line: 0, scope: !1752)
!1788 = !DILocation(line: 543, column: 5, scope: !1752)
!1789 = !DILocation(line: 0, scope: !1755)
!1790 = !DILocation(line: 543, column: 5, scope: !1755)
!1791 = !DILocation(line: 0, scope: !1758)
!1792 = !DILocation(line: 543, column: 5, scope: !1758)
!1793 = !DILocation(line: 544, column: 5, scope: !1707)
!1794 = !DILocation(line: 545, column: 1, scope: !1707)
!1795 = distinct !DISubprogram(name: "zigzag_interleave_8x8_cavlc", scope: !3, file: !3, line: 567, type: !863, scopeLine: 568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1796)
!1796 = !{!1797, !1798, !1799, !1800}
!1797 = !DILocalVariable(name: "dst", arg: 1, scope: !1795, file: !3, line: 567, type: !5)
!1798 = !DILocalVariable(name: "src", arg: 2, scope: !1795, file: !3, line: 567, type: !5)
!1799 = !DILocalVariable(name: "i", scope: !1795, file: !3, line: 569, type: !24)
!1800 = !DILocalVariable(name: "j", scope: !1795, file: !3, line: 569, type: !24)
!1801 = !DILocation(line: 0, scope: !1795)
!1802 = !DILocation(line: 572, column: 27, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 571, column: 9)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 571, column: 9)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 570, column: 5)
!1806 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 570, column: 5)
!1807 = !DILocation(line: 572, column: 25, scope: !1803)
!1808 = !DILocation(line: 572, column: 13, scope: !1803)
!1809 = !DILocation(line: 573, column: 1, scope: !1795)
