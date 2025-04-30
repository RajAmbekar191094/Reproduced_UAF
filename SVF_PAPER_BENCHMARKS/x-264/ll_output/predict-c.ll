; ModuleID = 'common/x86/predict-c.c'
source_filename = "common/x86/predict-c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @x264_intra_sa8d_x3_8x8_sse2(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !dbg !68 {
  %4 = alloca [2 x [8 x i16]], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !78, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata ptr %1, metadata !79, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata ptr %2, metadata !80, metadata !DIExpression()), !dbg !107
  %5 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !108
  %6 = load i8, ptr %5, align 1, !dbg !108, !tbaa !109
  %7 = zext i8 %6 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %7, metadata !81, metadata !DIExpression()), !dbg !107
  %8 = getelementptr inbounds i8, ptr %1, i64 17, !dbg !108
  %9 = load i8, ptr %8, align 1, !dbg !108, !tbaa !109
  %10 = zext i8 %9 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %10, metadata !82, metadata !DIExpression()), !dbg !107
  %11 = getelementptr inbounds i8, ptr %1, i64 18, !dbg !108
  %12 = load i8, ptr %11, align 1, !dbg !108, !tbaa !109
  %13 = zext i8 %12 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %13, metadata !83, metadata !DIExpression()), !dbg !107
  %14 = getelementptr inbounds i8, ptr %1, i64 19, !dbg !108
  %15 = load i8, ptr %14, align 1, !dbg !108, !tbaa !109
  %16 = zext i8 %15 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %16, metadata !84, metadata !DIExpression()), !dbg !107
  %17 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !108
  %18 = load i8, ptr %17, align 1, !dbg !108, !tbaa !109
  %19 = zext i8 %18 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %19, metadata !85, metadata !DIExpression()), !dbg !107
  %20 = getelementptr inbounds i8, ptr %1, i64 21, !dbg !108
  %21 = load i8, ptr %20, align 1, !dbg !108, !tbaa !109
  %22 = zext i8 %21 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %22, metadata !86, metadata !DIExpression()), !dbg !107
  %23 = getelementptr inbounds i8, ptr %1, i64 22, !dbg !108
  %24 = load i8, ptr %23, align 1, !dbg !108, !tbaa !109
  %25 = zext i8 %24 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %25, metadata !87, metadata !DIExpression()), !dbg !107
  %26 = getelementptr inbounds i8, ptr %1, i64 23, !dbg !108
  %27 = load i8, ptr %26, align 1, !dbg !108, !tbaa !109
  %28 = zext i8 %27 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %28, metadata !88, metadata !DIExpression()), !dbg !107
  %29 = getelementptr inbounds i8, ptr %1, i64 14, !dbg !108
  %30 = load i8, ptr %29, align 1, !dbg !108, !tbaa !109
  %31 = zext i8 %30 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %31, metadata !89, metadata !DIExpression()), !dbg !107
  %32 = getelementptr inbounds i8, ptr %1, i64 13, !dbg !108
  %33 = load i8, ptr %32, align 1, !dbg !108, !tbaa !109
  %34 = zext i8 %33 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %34, metadata !90, metadata !DIExpression()), !dbg !107
  %35 = getelementptr inbounds i8, ptr %1, i64 12, !dbg !108
  %36 = load i8, ptr %35, align 1, !dbg !108, !tbaa !109
  %37 = zext i8 %36 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %37, metadata !91, metadata !DIExpression()), !dbg !107
  %38 = getelementptr inbounds i8, ptr %1, i64 11, !dbg !108
  %39 = load i8, ptr %38, align 1, !dbg !108, !tbaa !109
  %40 = zext i8 %39 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %40, metadata !92, metadata !DIExpression()), !dbg !107
  %41 = getelementptr inbounds i8, ptr %1, i64 10, !dbg !108
  %42 = load i8, ptr %41, align 1, !dbg !108, !tbaa !109
  %43 = zext i8 %42 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %43, metadata !93, metadata !DIExpression()), !dbg !107
  %44 = getelementptr inbounds i8, ptr %1, i64 9, !dbg !108
  %45 = load i8, ptr %44, align 1, !dbg !108, !tbaa !109
  %46 = zext i8 %45 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %46, metadata !94, metadata !DIExpression()), !dbg !107
  %47 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !108
  %48 = load i8, ptr %47, align 1, !dbg !108, !tbaa !109
  %49 = zext i8 %48 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %49, metadata !95, metadata !DIExpression()), !dbg !107
  %50 = getelementptr inbounds i8, ptr %1, i64 7, !dbg !108
  %51 = load i8, ptr %50, align 1, !dbg !108, !tbaa !109
  %52 = zext i8 %51 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %52, metadata !96, metadata !DIExpression()), !dbg !107
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8, !dbg !108
  call void @llvm.dbg.declare(metadata ptr %4, metadata !98, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %31, metadata !97, metadata !DIExpression()), !dbg !107
  %53 = add nuw nsw i32 %43, %31, !dbg !108
  call void @llvm.dbg.value(metadata i32 %53, metadata !89, metadata !DIExpression()), !dbg !107
  %54 = sub nsw i32 %43, %31, !dbg !108
  call void @llvm.dbg.value(metadata i32 %54, metadata !93, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %34, metadata !97, metadata !DIExpression()), !dbg !107
  %55 = add nuw nsw i32 %46, %34, !dbg !108
  call void @llvm.dbg.value(metadata i32 %55, metadata !90, metadata !DIExpression()), !dbg !107
  %56 = sub nsw i32 %46, %34, !dbg !108
  call void @llvm.dbg.value(metadata i32 %56, metadata !94, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %37, metadata !97, metadata !DIExpression()), !dbg !107
  %57 = add nuw nsw i32 %49, %37, !dbg !108
  call void @llvm.dbg.value(metadata i32 %57, metadata !91, metadata !DIExpression()), !dbg !107
  %58 = sub nsw i32 %49, %37, !dbg !108
  call void @llvm.dbg.value(metadata i32 %58, metadata !95, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %40, metadata !97, metadata !DIExpression()), !dbg !107
  %59 = add nuw nsw i32 %52, %40, !dbg !108
  call void @llvm.dbg.value(metadata i32 %59, metadata !92, metadata !DIExpression()), !dbg !107
  %60 = sub nsw i32 %52, %40, !dbg !108
  call void @llvm.dbg.value(metadata i32 %60, metadata !96, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %53, metadata !97, metadata !DIExpression()), !dbg !107
  %61 = add nuw nsw i32 %57, %53, !dbg !108
  call void @llvm.dbg.value(metadata i32 %61, metadata !89, metadata !DIExpression()), !dbg !107
  %62 = sub nsw i32 %57, %53, !dbg !108
  call void @llvm.dbg.value(metadata i32 %62, metadata !91, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %55, metadata !97, metadata !DIExpression()), !dbg !107
  %63 = add nuw nsw i32 %59, %55, !dbg !108
  call void @llvm.dbg.value(metadata i32 %63, metadata !90, metadata !DIExpression()), !dbg !107
  %64 = sub nsw i32 %59, %55, !dbg !108
  call void @llvm.dbg.value(metadata i32 %64, metadata !92, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %54, metadata !97, metadata !DIExpression()), !dbg !107
  %65 = add nsw i32 %58, %54, !dbg !108
  call void @llvm.dbg.value(metadata i32 %65, metadata !93, metadata !DIExpression()), !dbg !107
  %66 = sub nsw i32 %58, %54, !dbg !108
  call void @llvm.dbg.value(metadata i32 %66, metadata !95, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %56, metadata !97, metadata !DIExpression()), !dbg !107
  %67 = add nsw i32 %60, %56, !dbg !108
  call void @llvm.dbg.value(metadata i32 %67, metadata !94, metadata !DIExpression()), !dbg !107
  %68 = sub nsw i32 %60, %56, !dbg !108
  call void @llvm.dbg.value(metadata i32 %68, metadata !96, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %61, metadata !97, metadata !DIExpression()), !dbg !107
  %69 = add nuw nsw i32 %63, %61, !dbg !108
  call void @llvm.dbg.value(metadata i32 %69, metadata !89, metadata !DIExpression()), !dbg !107
  %70 = sub nsw i32 %63, %61, !dbg !108
  call void @llvm.dbg.value(metadata i32 %70, metadata !90, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %62, metadata !97, metadata !DIExpression()), !dbg !107
  %71 = add nsw i32 %64, %62, !dbg !108
  call void @llvm.dbg.value(metadata i32 %71, metadata !91, metadata !DIExpression()), !dbg !107
  %72 = sub nsw i32 %64, %62, !dbg !108
  call void @llvm.dbg.value(metadata i32 %72, metadata !92, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %65, metadata !97, metadata !DIExpression()), !dbg !107
  %73 = add nsw i32 %67, %65, !dbg !108
  call void @llvm.dbg.value(metadata i32 %73, metadata !93, metadata !DIExpression()), !dbg !107
  %74 = sub nsw i32 %67, %65, !dbg !108
  call void @llvm.dbg.value(metadata i32 %74, metadata !94, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %66, metadata !97, metadata !DIExpression()), !dbg !107
  %75 = add nsw i32 %68, %66, !dbg !108
  call void @llvm.dbg.value(metadata i32 %75, metadata !95, metadata !DIExpression()), !dbg !107
  %76 = sub nsw i32 %68, %66, !dbg !108
  call void @llvm.dbg.value(metadata i32 %76, metadata !96, metadata !DIExpression()), !dbg !107
  %77 = trunc i32 %69 to i16, !dbg !108
  store i16 %77, ptr %4, align 16, !dbg !108, !tbaa !112
  %78 = trunc i32 %70 to i16, !dbg !108
  %79 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 1, !dbg !108
  store i16 %78, ptr %79, align 2, !dbg !108, !tbaa !112
  %80 = trunc i32 %71 to i16, !dbg !108
  %81 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 2, !dbg !108
  store i16 %80, ptr %81, align 4, !dbg !108, !tbaa !112
  %82 = trunc i32 %72 to i16, !dbg !108
  %83 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 3, !dbg !108
  store i16 %82, ptr %83, align 2, !dbg !108, !tbaa !112
  %84 = trunc i32 %73 to i16, !dbg !108
  %85 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 4, !dbg !108
  store i16 %84, ptr %85, align 8, !dbg !108, !tbaa !112
  %86 = trunc i32 %74 to i16, !dbg !108
  %87 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 5, !dbg !108
  store i16 %86, ptr %87, align 2, !dbg !108, !tbaa !112
  %88 = trunc i32 %75 to i16, !dbg !108
  %89 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 6, !dbg !108
  store i16 %88, ptr %89, align 4, !dbg !108, !tbaa !112
  %90 = trunc i32 %76 to i16, !dbg !108
  %91 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 7, !dbg !108
  store i16 %90, ptr %91, align 2, !dbg !108, !tbaa !112
  call void @llvm.dbg.value(metadata i32 %7, metadata !97, metadata !DIExpression()), !dbg !107
  %92 = add nuw nsw i32 %19, %7, !dbg !108
  call void @llvm.dbg.value(metadata i32 %92, metadata !81, metadata !DIExpression()), !dbg !107
  %93 = sub nsw i32 %19, %7, !dbg !108
  call void @llvm.dbg.value(metadata i32 %93, metadata !85, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %10, metadata !97, metadata !DIExpression()), !dbg !107
  %94 = add nuw nsw i32 %22, %10, !dbg !108
  call void @llvm.dbg.value(metadata i32 %94, metadata !82, metadata !DIExpression()), !dbg !107
  %95 = sub nsw i32 %22, %10, !dbg !108
  call void @llvm.dbg.value(metadata i32 %95, metadata !86, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %13, metadata !97, metadata !DIExpression()), !dbg !107
  %96 = add nuw nsw i32 %25, %13, !dbg !108
  call void @llvm.dbg.value(metadata i32 %96, metadata !83, metadata !DIExpression()), !dbg !107
  %97 = sub nsw i32 %25, %13, !dbg !108
  call void @llvm.dbg.value(metadata i32 %97, metadata !87, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %16, metadata !97, metadata !DIExpression()), !dbg !107
  %98 = add nuw nsw i32 %28, %16, !dbg !108
  call void @llvm.dbg.value(metadata i32 %98, metadata !84, metadata !DIExpression()), !dbg !107
  %99 = sub nsw i32 %28, %16, !dbg !108
  call void @llvm.dbg.value(metadata i32 %99, metadata !88, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %92, metadata !97, metadata !DIExpression()), !dbg !107
  %100 = add nuw nsw i32 %96, %92, !dbg !108
  call void @llvm.dbg.value(metadata i32 %100, metadata !81, metadata !DIExpression()), !dbg !107
  %101 = sub nsw i32 %96, %92, !dbg !108
  call void @llvm.dbg.value(metadata i32 %101, metadata !83, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %94, metadata !97, metadata !DIExpression()), !dbg !107
  %102 = add nuw nsw i32 %98, %94, !dbg !108
  call void @llvm.dbg.value(metadata i32 %102, metadata !82, metadata !DIExpression()), !dbg !107
  %103 = sub nsw i32 %98, %94, !dbg !108
  call void @llvm.dbg.value(metadata i32 %103, metadata !84, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %93, metadata !97, metadata !DIExpression()), !dbg !107
  %104 = add nsw i32 %97, %93, !dbg !108
  call void @llvm.dbg.value(metadata i32 %104, metadata !85, metadata !DIExpression()), !dbg !107
  %105 = sub nsw i32 %97, %93, !dbg !108
  call void @llvm.dbg.value(metadata i32 %105, metadata !87, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %95, metadata !97, metadata !DIExpression()), !dbg !107
  %106 = add nsw i32 %99, %95, !dbg !108
  call void @llvm.dbg.value(metadata i32 %106, metadata !86, metadata !DIExpression()), !dbg !107
  %107 = sub nsw i32 %99, %95, !dbg !108
  call void @llvm.dbg.value(metadata i32 %107, metadata !88, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %100, metadata !97, metadata !DIExpression()), !dbg !107
  %108 = add nuw nsw i32 %102, %100, !dbg !108
  call void @llvm.dbg.value(metadata i32 %108, metadata !81, metadata !DIExpression()), !dbg !107
  %109 = sub nsw i32 %102, %100, !dbg !108
  call void @llvm.dbg.value(metadata i32 %109, metadata !82, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %101, metadata !97, metadata !DIExpression()), !dbg !107
  %110 = add nsw i32 %103, %101, !dbg !108
  call void @llvm.dbg.value(metadata i32 %110, metadata !83, metadata !DIExpression()), !dbg !107
  %111 = sub nsw i32 %103, %101, !dbg !108
  call void @llvm.dbg.value(metadata i32 %111, metadata !84, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %104, metadata !97, metadata !DIExpression()), !dbg !107
  %112 = add nsw i32 %106, %104, !dbg !108
  call void @llvm.dbg.value(metadata i32 %112, metadata !85, metadata !DIExpression()), !dbg !107
  %113 = sub nsw i32 %106, %104, !dbg !108
  call void @llvm.dbg.value(metadata i32 %113, metadata !86, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %105, metadata !97, metadata !DIExpression()), !dbg !107
  %114 = add nsw i32 %107, %105, !dbg !108
  call void @llvm.dbg.value(metadata i32 %114, metadata !87, metadata !DIExpression()), !dbg !107
  %115 = sub nsw i32 %107, %105, !dbg !108
  call void @llvm.dbg.value(metadata i32 %115, metadata !88, metadata !DIExpression()), !dbg !107
  %116 = trunc i32 %108 to i16, !dbg !108
  %117 = getelementptr inbounds [2 x [8 x i16]], ptr %4, i64 0, i64 1, !dbg !108
  store i16 %116, ptr %117, align 16, !dbg !108, !tbaa !112
  %118 = trunc i32 %109 to i16, !dbg !108
  %119 = getelementptr inbounds [2 x [8 x i16]], ptr %4, i64 0, i64 1, i64 1, !dbg !108
  store i16 %118, ptr %119, align 2, !dbg !108, !tbaa !112
  %120 = trunc i32 %110 to i16, !dbg !108
  %121 = getelementptr inbounds [2 x [8 x i16]], ptr %4, i64 0, i64 1, i64 2, !dbg !108
  store i16 %120, ptr %121, align 4, !dbg !108, !tbaa !112
  %122 = trunc i32 %111 to i16, !dbg !108
  %123 = getelementptr inbounds [2 x [8 x i16]], ptr %4, i64 0, i64 1, i64 3, !dbg !108
  store i16 %122, ptr %123, align 2, !dbg !108, !tbaa !112
  %124 = trunc i32 %112 to i16, !dbg !108
  %125 = getelementptr inbounds [2 x [8 x i16]], ptr %4, i64 0, i64 1, i64 4, !dbg !108
  store i16 %124, ptr %125, align 8, !dbg !108, !tbaa !112
  %126 = trunc i32 %113 to i16, !dbg !108
  %127 = getelementptr inbounds [2 x [8 x i16]], ptr %4, i64 0, i64 1, i64 5, !dbg !108
  store i16 %126, ptr %127, align 2, !dbg !108, !tbaa !112
  %128 = trunc i32 %114 to i16, !dbg !108
  %129 = getelementptr inbounds [2 x [8 x i16]], ptr %4, i64 0, i64 1, i64 6, !dbg !108
  store i16 %128, ptr %129, align 4, !dbg !108, !tbaa !112
  %130 = trunc i32 %115 to i16, !dbg !108
  %131 = getelementptr inbounds [2 x [8 x i16]], ptr %4, i64 0, i64 1, i64 7, !dbg !108
  store i16 %130, ptr %131, align 2, !dbg !108, !tbaa !112
  call void @x264_intra_sa8d_x3_8x8_core_sse2(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #8, !dbg !108
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8, !dbg !108
  ret void, !dbg !108
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !114 void @x264_intra_sa8d_x3_8x8_core_sse2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_intra_sa8d_x3_8x8_ssse3(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !dbg !122 {
  %4 = alloca [2 x [8 x i16]], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !124, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata ptr %1, metadata !125, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata ptr %2, metadata !126, metadata !DIExpression()), !dbg !145
  %5 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !146
  %6 = load i8, ptr %5, align 1, !dbg !146, !tbaa !109
  %7 = zext i8 %6 to i32, !dbg !146
  call void @llvm.dbg.value(metadata i32 %7, metadata !127, metadata !DIExpression()), !dbg !145
  %8 = getelementptr inbounds i8, ptr %1, i64 17, !dbg !146
  %9 = load i8, ptr %8, align 1, !dbg !146, !tbaa !109
  %10 = zext i8 %9 to i32, !dbg !146
  call void @llvm.dbg.value(metadata i32 %10, metadata !128, metadata !DIExpression()), !dbg !145
  %11 = getelementptr inbounds i8, ptr %1, i64 18, !dbg !146
  %12 = load i8, ptr %11, align 1, !dbg !146, !tbaa !109
  %13 = zext i8 %12 to i32, !dbg !146
  call void @llvm.dbg.value(metadata i32 %13, metadata !129, metadata !DIExpression()), !dbg !145
  %14 = getelementptr inbounds i8, ptr %1, i64 19, !dbg !146
  %15 = load i8, ptr %14, align 1, !dbg !146, !tbaa !109
  %16 = zext i8 %15 to i32, !dbg !146
  call void @llvm.dbg.value(metadata i32 %16, metadata !130, metadata !DIExpression()), !dbg !145
  %17 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !146
  %18 = load i8, ptr %17, align 1, !dbg !146, !tbaa !109
  %19 = zext i8 %18 to i32, !dbg !146
  call void @llvm.dbg.value(metadata i32 %19, metadata !131, metadata !DIExpression()), !dbg !145
  %20 = getelementptr inbounds i8, ptr %1, i64 21, !dbg !146
  %21 = load i8, ptr %20, align 1, !dbg !146, !tbaa !109
  %22 = zext i8 %21 to i32, !dbg !146
  call void @llvm.dbg.value(metadata i32 %22, metadata !132, metadata !DIExpression()), !dbg !145
  %23 = getelementptr inbounds i8, ptr %1, i64 22, !dbg !146
  %24 = load i8, ptr %23, align 1, !dbg !146, !tbaa !109
  %25 = zext i8 %24 to i32, !dbg !146
  call void @llvm.dbg.value(metadata i32 %25, metadata !133, metadata !DIExpression()), !dbg !145
  %26 = getelementptr inbounds i8, ptr %1, i64 23, !dbg !146
  %27 = load i8, ptr %26, align 1, !dbg !146, !tbaa !109
  %28 = zext i8 %27 to i32, !dbg !146
  call void @llvm.dbg.value(metadata i32 %28, metadata !134, metadata !DIExpression()), !dbg !145
  %29 = getelementptr inbounds i8, ptr %1, i64 14, !dbg !146
  %30 = load i8, ptr %29, align 1, !dbg !146, !tbaa !109
  %31 = zext i8 %30 to i32, !dbg !146
  call void @llvm.dbg.value(metadata i32 %31, metadata !135, metadata !DIExpression()), !dbg !145
  %32 = getelementptr inbounds i8, ptr %1, i64 13, !dbg !146
  %33 = load i8, ptr %32, align 1, !dbg !146, !tbaa !109
  %34 = zext i8 %33 to i32, !dbg !146
  call void @llvm.dbg.value(metadata i32 %34, metadata !136, metadata !DIExpression()), !dbg !145
  %35 = getelementptr inbounds i8, ptr %1, i64 12, !dbg !146
  %36 = load i8, ptr %35, align 1, !dbg !146, !tbaa !109
  %37 = zext i8 %36 to i32, !dbg !146
  call void @llvm.dbg.value(metadata i32 %37, metadata !137, metadata !DIExpression()), !dbg !145
  %38 = getelementptr inbounds i8, ptr %1, i64 11, !dbg !146
  %39 = load i8, ptr %38, align 1, !dbg !146, !tbaa !109
  %40 = zext i8 %39 to i32, !dbg !146
  call void @llvm.dbg.value(metadata i32 %40, metadata !138, metadata !DIExpression()), !dbg !145
  %41 = getelementptr inbounds i8, ptr %1, i64 10, !dbg !146
  %42 = load i8, ptr %41, align 1, !dbg !146, !tbaa !109
  %43 = zext i8 %42 to i32, !dbg !146
  call void @llvm.dbg.value(metadata i32 %43, metadata !139, metadata !DIExpression()), !dbg !145
  %44 = getelementptr inbounds i8, ptr %1, i64 9, !dbg !146
  %45 = load i8, ptr %44, align 1, !dbg !146, !tbaa !109
  %46 = zext i8 %45 to i32, !dbg !146
  call void @llvm.dbg.value(metadata i32 %46, metadata !140, metadata !DIExpression()), !dbg !145
  %47 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !146
  %48 = load i8, ptr %47, align 1, !dbg !146, !tbaa !109
  %49 = zext i8 %48 to i32, !dbg !146
  call void @llvm.dbg.value(metadata i32 %49, metadata !141, metadata !DIExpression()), !dbg !145
  %50 = getelementptr inbounds i8, ptr %1, i64 7, !dbg !146
  %51 = load i8, ptr %50, align 1, !dbg !146, !tbaa !109
  %52 = zext i8 %51 to i32, !dbg !146
  call void @llvm.dbg.value(metadata i32 %52, metadata !142, metadata !DIExpression()), !dbg !145
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %4, metadata !144, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata i32 %31, metadata !143, metadata !DIExpression()), !dbg !145
  %53 = add nuw nsw i32 %43, %31, !dbg !146
  call void @llvm.dbg.value(metadata i32 %53, metadata !135, metadata !DIExpression()), !dbg !145
  %54 = sub nsw i32 %43, %31, !dbg !146
  call void @llvm.dbg.value(metadata i32 %54, metadata !139, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %34, metadata !143, metadata !DIExpression()), !dbg !145
  %55 = add nuw nsw i32 %46, %34, !dbg !146
  call void @llvm.dbg.value(metadata i32 %55, metadata !136, metadata !DIExpression()), !dbg !145
  %56 = sub nsw i32 %46, %34, !dbg !146
  call void @llvm.dbg.value(metadata i32 %56, metadata !140, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %37, metadata !143, metadata !DIExpression()), !dbg !145
  %57 = add nuw nsw i32 %49, %37, !dbg !146
  call void @llvm.dbg.value(metadata i32 %57, metadata !137, metadata !DIExpression()), !dbg !145
  %58 = sub nsw i32 %49, %37, !dbg !146
  call void @llvm.dbg.value(metadata i32 %58, metadata !141, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %40, metadata !143, metadata !DIExpression()), !dbg !145
  %59 = add nuw nsw i32 %52, %40, !dbg !146
  call void @llvm.dbg.value(metadata i32 %59, metadata !138, metadata !DIExpression()), !dbg !145
  %60 = sub nsw i32 %52, %40, !dbg !146
  call void @llvm.dbg.value(metadata i32 %60, metadata !142, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %53, metadata !143, metadata !DIExpression()), !dbg !145
  %61 = add nuw nsw i32 %57, %53, !dbg !146
  call void @llvm.dbg.value(metadata i32 %61, metadata !135, metadata !DIExpression()), !dbg !145
  %62 = sub nsw i32 %57, %53, !dbg !146
  call void @llvm.dbg.value(metadata i32 %62, metadata !137, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %55, metadata !143, metadata !DIExpression()), !dbg !145
  %63 = add nuw nsw i32 %59, %55, !dbg !146
  call void @llvm.dbg.value(metadata i32 %63, metadata !136, metadata !DIExpression()), !dbg !145
  %64 = sub nsw i32 %59, %55, !dbg !146
  call void @llvm.dbg.value(metadata i32 %64, metadata !138, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %54, metadata !143, metadata !DIExpression()), !dbg !145
  %65 = add nsw i32 %58, %54, !dbg !146
  call void @llvm.dbg.value(metadata i32 %65, metadata !139, metadata !DIExpression()), !dbg !145
  %66 = sub nsw i32 %58, %54, !dbg !146
  call void @llvm.dbg.value(metadata i32 %66, metadata !141, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %56, metadata !143, metadata !DIExpression()), !dbg !145
  %67 = add nsw i32 %60, %56, !dbg !146
  call void @llvm.dbg.value(metadata i32 %67, metadata !140, metadata !DIExpression()), !dbg !145
  %68 = sub nsw i32 %60, %56, !dbg !146
  call void @llvm.dbg.value(metadata i32 %68, metadata !142, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %61, metadata !143, metadata !DIExpression()), !dbg !145
  %69 = add nuw nsw i32 %63, %61, !dbg !146
  call void @llvm.dbg.value(metadata i32 %69, metadata !135, metadata !DIExpression()), !dbg !145
  %70 = sub nsw i32 %63, %61, !dbg !146
  call void @llvm.dbg.value(metadata i32 %70, metadata !136, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %62, metadata !143, metadata !DIExpression()), !dbg !145
  %71 = add nsw i32 %64, %62, !dbg !146
  call void @llvm.dbg.value(metadata i32 %71, metadata !137, metadata !DIExpression()), !dbg !145
  %72 = sub nsw i32 %64, %62, !dbg !146
  call void @llvm.dbg.value(metadata i32 %72, metadata !138, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %65, metadata !143, metadata !DIExpression()), !dbg !145
  %73 = add nsw i32 %67, %65, !dbg !146
  call void @llvm.dbg.value(metadata i32 %73, metadata !139, metadata !DIExpression()), !dbg !145
  %74 = sub nsw i32 %67, %65, !dbg !146
  call void @llvm.dbg.value(metadata i32 %74, metadata !140, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %66, metadata !143, metadata !DIExpression()), !dbg !145
  %75 = add nsw i32 %68, %66, !dbg !146
  call void @llvm.dbg.value(metadata i32 %75, metadata !141, metadata !DIExpression()), !dbg !145
  %76 = sub nsw i32 %68, %66, !dbg !146
  call void @llvm.dbg.value(metadata i32 %76, metadata !142, metadata !DIExpression()), !dbg !145
  %77 = trunc i32 %69 to i16, !dbg !146
  store i16 %77, ptr %4, align 16, !dbg !146, !tbaa !112
  %78 = trunc i32 %70 to i16, !dbg !146
  %79 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 1, !dbg !146
  store i16 %78, ptr %79, align 2, !dbg !146, !tbaa !112
  %80 = trunc i32 %71 to i16, !dbg !146
  %81 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 2, !dbg !146
  store i16 %80, ptr %81, align 4, !dbg !146, !tbaa !112
  %82 = trunc i32 %72 to i16, !dbg !146
  %83 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 3, !dbg !146
  store i16 %82, ptr %83, align 2, !dbg !146, !tbaa !112
  %84 = trunc i32 %73 to i16, !dbg !146
  %85 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 4, !dbg !146
  store i16 %84, ptr %85, align 8, !dbg !146, !tbaa !112
  %86 = trunc i32 %74 to i16, !dbg !146
  %87 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 5, !dbg !146
  store i16 %86, ptr %87, align 2, !dbg !146, !tbaa !112
  %88 = trunc i32 %75 to i16, !dbg !146
  %89 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 6, !dbg !146
  store i16 %88, ptr %89, align 4, !dbg !146, !tbaa !112
  %90 = trunc i32 %76 to i16, !dbg !146
  %91 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 7, !dbg !146
  store i16 %90, ptr %91, align 2, !dbg !146, !tbaa !112
  call void @llvm.dbg.value(metadata i32 %7, metadata !143, metadata !DIExpression()), !dbg !145
  %92 = add nuw nsw i32 %19, %7, !dbg !146
  call void @llvm.dbg.value(metadata i32 %92, metadata !127, metadata !DIExpression()), !dbg !145
  %93 = sub nsw i32 %19, %7, !dbg !146
  call void @llvm.dbg.value(metadata i32 %93, metadata !131, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %10, metadata !143, metadata !DIExpression()), !dbg !145
  %94 = add nuw nsw i32 %22, %10, !dbg !146
  call void @llvm.dbg.value(metadata i32 %94, metadata !128, metadata !DIExpression()), !dbg !145
  %95 = sub nsw i32 %22, %10, !dbg !146
  call void @llvm.dbg.value(metadata i32 %95, metadata !132, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %13, metadata !143, metadata !DIExpression()), !dbg !145
  %96 = add nuw nsw i32 %25, %13, !dbg !146
  call void @llvm.dbg.value(metadata i32 %96, metadata !129, metadata !DIExpression()), !dbg !145
  %97 = sub nsw i32 %25, %13, !dbg !146
  call void @llvm.dbg.value(metadata i32 %97, metadata !133, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %16, metadata !143, metadata !DIExpression()), !dbg !145
  %98 = add nuw nsw i32 %28, %16, !dbg !146
  call void @llvm.dbg.value(metadata i32 %98, metadata !130, metadata !DIExpression()), !dbg !145
  %99 = sub nsw i32 %28, %16, !dbg !146
  call void @llvm.dbg.value(metadata i32 %99, metadata !134, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %92, metadata !143, metadata !DIExpression()), !dbg !145
  %100 = add nuw nsw i32 %96, %92, !dbg !146
  call void @llvm.dbg.value(metadata i32 %100, metadata !127, metadata !DIExpression()), !dbg !145
  %101 = sub nsw i32 %96, %92, !dbg !146
  call void @llvm.dbg.value(metadata i32 %101, metadata !129, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %94, metadata !143, metadata !DIExpression()), !dbg !145
  %102 = add nuw nsw i32 %98, %94, !dbg !146
  call void @llvm.dbg.value(metadata i32 %102, metadata !128, metadata !DIExpression()), !dbg !145
  %103 = sub nsw i32 %98, %94, !dbg !146
  call void @llvm.dbg.value(metadata i32 %103, metadata !130, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %93, metadata !143, metadata !DIExpression()), !dbg !145
  %104 = add nsw i32 %97, %93, !dbg !146
  call void @llvm.dbg.value(metadata i32 %104, metadata !131, metadata !DIExpression()), !dbg !145
  %105 = sub nsw i32 %97, %93, !dbg !146
  call void @llvm.dbg.value(metadata i32 %105, metadata !133, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %95, metadata !143, metadata !DIExpression()), !dbg !145
  %106 = add nsw i32 %99, %95, !dbg !146
  call void @llvm.dbg.value(metadata i32 %106, metadata !132, metadata !DIExpression()), !dbg !145
  %107 = sub nsw i32 %99, %95, !dbg !146
  call void @llvm.dbg.value(metadata i32 %107, metadata !134, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %100, metadata !143, metadata !DIExpression()), !dbg !145
  %108 = add nuw nsw i32 %102, %100, !dbg !146
  call void @llvm.dbg.value(metadata i32 %108, metadata !127, metadata !DIExpression()), !dbg !145
  %109 = sub nsw i32 %102, %100, !dbg !146
  call void @llvm.dbg.value(metadata i32 %109, metadata !128, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %101, metadata !143, metadata !DIExpression()), !dbg !145
  %110 = add nsw i32 %103, %101, !dbg !146
  call void @llvm.dbg.value(metadata i32 %110, metadata !129, metadata !DIExpression()), !dbg !145
  %111 = sub nsw i32 %103, %101, !dbg !146
  call void @llvm.dbg.value(metadata i32 %111, metadata !130, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %104, metadata !143, metadata !DIExpression()), !dbg !145
  %112 = add nsw i32 %106, %104, !dbg !146
  call void @llvm.dbg.value(metadata i32 %112, metadata !131, metadata !DIExpression()), !dbg !145
  %113 = sub nsw i32 %106, %104, !dbg !146
  call void @llvm.dbg.value(metadata i32 %113, metadata !132, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %105, metadata !143, metadata !DIExpression()), !dbg !145
  %114 = add nsw i32 %107, %105, !dbg !146
  call void @llvm.dbg.value(metadata i32 %114, metadata !133, metadata !DIExpression()), !dbg !145
  %115 = sub nsw i32 %107, %105, !dbg !146
  call void @llvm.dbg.value(metadata i32 %115, metadata !134, metadata !DIExpression()), !dbg !145
  %116 = trunc i32 %108 to i16, !dbg !146
  %117 = getelementptr inbounds [2 x [8 x i16]], ptr %4, i64 0, i64 1, !dbg !146
  store i16 %116, ptr %117, align 16, !dbg !146, !tbaa !112
  %118 = trunc i32 %109 to i16, !dbg !146
  %119 = getelementptr inbounds [2 x [8 x i16]], ptr %4, i64 0, i64 1, i64 1, !dbg !146
  store i16 %118, ptr %119, align 2, !dbg !146, !tbaa !112
  %120 = trunc i32 %110 to i16, !dbg !146
  %121 = getelementptr inbounds [2 x [8 x i16]], ptr %4, i64 0, i64 1, i64 2, !dbg !146
  store i16 %120, ptr %121, align 4, !dbg !146, !tbaa !112
  %122 = trunc i32 %111 to i16, !dbg !146
  %123 = getelementptr inbounds [2 x [8 x i16]], ptr %4, i64 0, i64 1, i64 3, !dbg !146
  store i16 %122, ptr %123, align 2, !dbg !146, !tbaa !112
  %124 = trunc i32 %112 to i16, !dbg !146
  %125 = getelementptr inbounds [2 x [8 x i16]], ptr %4, i64 0, i64 1, i64 4, !dbg !146
  store i16 %124, ptr %125, align 8, !dbg !146, !tbaa !112
  %126 = trunc i32 %113 to i16, !dbg !146
  %127 = getelementptr inbounds [2 x [8 x i16]], ptr %4, i64 0, i64 1, i64 5, !dbg !146
  store i16 %126, ptr %127, align 2, !dbg !146, !tbaa !112
  %128 = trunc i32 %114 to i16, !dbg !146
  %129 = getelementptr inbounds [2 x [8 x i16]], ptr %4, i64 0, i64 1, i64 6, !dbg !146
  store i16 %128, ptr %129, align 4, !dbg !146, !tbaa !112
  %130 = trunc i32 %115 to i16, !dbg !146
  %131 = getelementptr inbounds [2 x [8 x i16]], ptr %4, i64 0, i64 1, i64 7, !dbg !146
  store i16 %130, ptr %131, align 2, !dbg !146, !tbaa !112
  call void @x264_intra_sa8d_x3_8x8_core_ssse3(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #8, !dbg !146
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8, !dbg !146
  ret void, !dbg !146
}

declare !dbg !147 void @x264_intra_sa8d_x3_8x8_core_ssse3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_16x16_init_mmx(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !148 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !157, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata ptr %1, metadata !158, metadata !DIExpression()), !dbg !159
  %3 = and i32 %0, 8, !dbg !160
  %4 = icmp eq i32 %3, 0, !dbg !160
  br i1 %4, label %23, label %5, !dbg !162

5:                                                ; preds = %2
  %6 = getelementptr inbounds ptr, ptr %1, i64 4, !dbg !163
  store ptr @predict_16x16_dc_left, ptr %6, align 8, !dbg !164, !tbaa !165
  store ptr @predict_16x16_v_mmx, ptr %1, align 8, !dbg !167, !tbaa !165
  %7 = and i32 %0, 16, !dbg !168
  %8 = icmp eq i32 %7, 0, !dbg !168
  br i1 %8, label %23, label %9, !dbg !170

9:                                                ; preds = %5
  %10 = getelementptr inbounds ptr, ptr %1, i64 2, !dbg !171
  store ptr @predict_16x16_dc_mmxext, ptr %10, align 8, !dbg !172, !tbaa !165
  %11 = getelementptr inbounds ptr, ptr %1, i64 5, !dbg !173
  store ptr @predict_16x16_dc_top_mmxext, ptr %11, align 8, !dbg !174, !tbaa !165
  %12 = getelementptr inbounds ptr, ptr %1, i64 3, !dbg !175
  store ptr @predict_16x16_p_mmxext, ptr %12, align 8, !dbg !176, !tbaa !165
  %13 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !177
  store ptr @predict_16x16_h_mmxext, ptr %13, align 8, !dbg !178, !tbaa !165
  %14 = and i32 %0, 64, !dbg !179
  %15 = icmp eq i32 %14, 0, !dbg !179
  br i1 %15, label %23, label %16, !dbg !181

16:                                               ; preds = %9
  store ptr @predict_16x16_dc_sse2, ptr %10, align 8, !dbg !182, !tbaa !165
  store ptr @predict_16x16_v_sse2, ptr %1, align 8, !dbg !183, !tbaa !165
  %17 = and i32 %0, 128, !dbg !184
  %18 = icmp eq i32 %17, 0, !dbg !184
  br i1 %18, label %19, label %23, !dbg !186

19:                                               ; preds = %16
  store ptr @predict_16x16_dc_top_sse2, ptr %11, align 8, !dbg !187, !tbaa !165
  store ptr @predict_16x16_p_sse2, ptr %12, align 8, !dbg !188, !tbaa !165
  %20 = and i32 %0, 1024, !dbg !189
  %21 = icmp eq i32 %20, 0, !dbg !189
  br i1 %21, label %23, label %22, !dbg !191

22:                                               ; preds = %19
  store ptr @predict_16x16_h_ssse3, ptr %13, align 8, !dbg !192, !tbaa !165
  br label %23, !dbg !193

23:                                               ; preds = %19, %16, %9, %5, %2, %22
  ret void, !dbg !193
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_dc_left(ptr nocapture noundef %0) #5 !dbg !194 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 0, metadata !197, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 0, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 0, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 0, metadata !197, metadata !DIExpression()), !dbg !204
  %2 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !205
  %3 = load i8, ptr %2, align 1, !dbg !205, !tbaa !109
  %4 = zext i8 %3 to i64, !dbg !205
  call void @llvm.dbg.value(metadata i8 %3, metadata !197, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i64 1, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 1, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i8 %3, metadata !197, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !204
  %5 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !205
  %6 = load i8, ptr %5, align 1, !dbg !205, !tbaa !109
  %7 = zext i8 %6 to i64, !dbg !205
  %8 = add nuw nsw i64 %4, %7, !dbg !209
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i64 2, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 2, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  %9 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !205
  %10 = load i8, ptr %9, align 1, !dbg !205, !tbaa !109
  %11 = zext i8 %10 to i64, !dbg !205
  %12 = add nuw nsw i64 %8, %11, !dbg !209
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i64 3, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 3, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  %13 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !205
  %14 = load i8, ptr %13, align 1, !dbg !205, !tbaa !109
  %15 = zext i8 %14 to i64, !dbg !205
  %16 = add nuw nsw i64 %12, %15, !dbg !209
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i64 4, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 4, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  %17 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !205
  %18 = load i8, ptr %17, align 1, !dbg !205, !tbaa !109
  %19 = zext i8 %18 to i64, !dbg !205
  %20 = add nuw nsw i64 %16, %19, !dbg !209
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i64 5, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 5, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  %21 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !205
  %22 = load i8, ptr %21, align 1, !dbg !205, !tbaa !109
  %23 = zext i8 %22 to i64, !dbg !205
  %24 = add nuw nsw i64 %20, %23, !dbg !209
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i64 6, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 6, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  %25 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !205
  %26 = load i8, ptr %25, align 1, !dbg !205, !tbaa !109
  %27 = zext i8 %26 to i64, !dbg !205
  %28 = add nuw nsw i64 %24, %27, !dbg !209
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %26, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i64 7, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 7, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %26, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  %29 = getelementptr inbounds i8, ptr %0, i64 223, !dbg !205
  %30 = load i8, ptr %29, align 1, !dbg !205, !tbaa !109
  %31 = zext i8 %30 to i64, !dbg !205
  %32 = add nuw nsw i64 %28, %31, !dbg !209
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %30, i8 %26, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i64 8, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 8, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %30, i8 %26, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  %33 = getelementptr inbounds i8, ptr %0, i64 255, !dbg !205
  %34 = load i8, ptr %33, align 1, !dbg !205, !tbaa !109
  %35 = zext i8 %34 to i64, !dbg !205
  %36 = add nuw nsw i64 %32, %35, !dbg !209
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %34, i8 %30, i8 %26, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i64 9, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 9, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %34, i8 %30, i8 %26, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  %37 = getelementptr inbounds i8, ptr %0, i64 287, !dbg !205
  %38 = load i8, ptr %37, align 1, !dbg !205, !tbaa !109
  %39 = zext i8 %38 to i64, !dbg !205
  %40 = add nuw nsw i64 %36, %39, !dbg !209
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %38, i8 %34, i8 %30, i8 %26, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i64 10, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 10, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %38, i8 %34, i8 %30, i8 %26, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  %41 = getelementptr inbounds i8, ptr %0, i64 319, !dbg !205
  %42 = load i8, ptr %41, align 1, !dbg !205, !tbaa !109
  %43 = zext i8 %42 to i64, !dbg !205
  %44 = add nuw nsw i64 %40, %43, !dbg !209
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %42, i8 %38, i8 %34, i8 %30, i8 %26, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i64 11, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 11, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %42, i8 %38, i8 %34, i8 %30, i8 %26, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  %45 = getelementptr inbounds i8, ptr %0, i64 351, !dbg !205
  %46 = load i8, ptr %45, align 1, !dbg !205, !tbaa !109
  %47 = zext i8 %46 to i64, !dbg !205
  %48 = add nuw nsw i64 %44, %47, !dbg !209
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %46, i8 %42, i8 %38, i8 %34, i8 %30, i8 %26, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 11, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i64 12, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 12, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %46, i8 %42, i8 %38, i8 %34, i8 %30, i8 %26, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 11, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  %49 = getelementptr inbounds i8, ptr %0, i64 383, !dbg !205
  %50 = load i8, ptr %49, align 1, !dbg !205, !tbaa !109
  %51 = zext i8 %50 to i64, !dbg !205
  %52 = add nuw nsw i64 %48, %51, !dbg !209
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %50, i8 %46, i8 %42, i8 %38, i8 %34, i8 %30, i8 %26, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 12, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 11, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i64 13, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 13, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %50, i8 %46, i8 %42, i8 %38, i8 %34, i8 %30, i8 %26, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 12, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 11, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  %53 = getelementptr inbounds i8, ptr %0, i64 415, !dbg !205
  %54 = load i8, ptr %53, align 1, !dbg !205, !tbaa !109
  %55 = zext i8 %54 to i64, !dbg !205
  %56 = add nuw nsw i64 %52, %55, !dbg !209
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %54, i8 %50, i8 %46, i8 %42, i8 %38, i8 %34, i8 %30, i8 %26, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 13, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 12, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 11, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i64 14, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 14, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %54, i8 %50, i8 %46, i8 %42, i8 %38, i8 %34, i8 %30, i8 %26, i8 %22, i8 %18, i8 %14, i8 %10, i8 %6), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 13, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 12, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 11, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  %57 = getelementptr inbounds i8, ptr %0, i64 447, !dbg !205
  %58 = load i8, ptr %57, align 1, !dbg !205, !tbaa !109
  %59 = zext i8 %58 to i64, !dbg !205
  %60 = add nuw nsw i64 %56, %59, !dbg !209
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 14, DW_OP_plus, DW_OP_LLVM_arg, 13, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 12, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 11, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i64 15, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 15, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 14, DW_OP_plus, DW_OP_LLVM_arg, 13, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 12, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 11, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  %61 = getelementptr inbounds i8, ptr %0, i64 479, !dbg !205
  %62 = load i8, ptr %61, align 1, !dbg !205, !tbaa !109
  %63 = zext i8 %62 to i64, !dbg !205
  %64 = add nuw nsw i64 %60, %63, !dbg !209
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison), metadata !197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 14, DW_OP_plus, DW_OP_LLVM_arg, 13, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 12, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 11, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i64 16, metadata !199, metadata !DIExpression()), !dbg !204
  %65 = add nuw nsw i64 %64, 8, !dbg !210
  %66 = lshr i64 %65, 4, !dbg !211
  %67 = mul nuw i64 %66, 72340172838076673, !dbg !212
  call void @llvm.dbg.value(metadata i64 %67, metadata !198, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 0, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %0, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %0, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 0, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %0, metadata !200, metadata !DIExpression()), !dbg !213
  %68 = getelementptr inbounds i64, ptr %0, i64 1, !dbg !214
  store i64 %67, ptr %68, align 8, !dbg !215, !tbaa !216
  store i64 %67, ptr %0, align 8, !dbg !218, !tbaa !216
  %69 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !219
  call void @llvm.dbg.value(metadata ptr %69, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 1, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %69, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 1, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %69, metadata !200, metadata !DIExpression()), !dbg !213
  %70 = getelementptr inbounds i8, ptr %0, i64 40, !dbg !214
  store i64 %67, ptr %70, align 8, !dbg !215, !tbaa !216
  store i64 %67, ptr %69, align 8, !dbg !218, !tbaa !216
  %71 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !219
  call void @llvm.dbg.value(metadata ptr %71, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 2, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %71, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 2, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %71, metadata !200, metadata !DIExpression()), !dbg !213
  %72 = getelementptr inbounds i8, ptr %0, i64 72, !dbg !214
  store i64 %67, ptr %72, align 8, !dbg !215, !tbaa !216
  store i64 %67, ptr %71, align 8, !dbg !218, !tbaa !216
  %73 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !219
  call void @llvm.dbg.value(metadata ptr %73, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 3, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %73, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 3, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %73, metadata !200, metadata !DIExpression()), !dbg !213
  %74 = getelementptr inbounds i8, ptr %0, i64 104, !dbg !214
  store i64 %67, ptr %74, align 8, !dbg !215, !tbaa !216
  store i64 %67, ptr %73, align 8, !dbg !218, !tbaa !216
  %75 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !219
  call void @llvm.dbg.value(metadata ptr %75, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 4, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %75, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 4, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %75, metadata !200, metadata !DIExpression()), !dbg !213
  %76 = getelementptr inbounds i8, ptr %0, i64 136, !dbg !214
  store i64 %67, ptr %76, align 8, !dbg !215, !tbaa !216
  store i64 %67, ptr %75, align 8, !dbg !218, !tbaa !216
  %77 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !219
  call void @llvm.dbg.value(metadata ptr %77, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 5, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %77, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 5, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %77, metadata !200, metadata !DIExpression()), !dbg !213
  %78 = getelementptr inbounds i8, ptr %0, i64 168, !dbg !214
  store i64 %67, ptr %78, align 8, !dbg !215, !tbaa !216
  store i64 %67, ptr %77, align 8, !dbg !218, !tbaa !216
  %79 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !219
  call void @llvm.dbg.value(metadata ptr %79, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 6, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %79, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 6, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %79, metadata !200, metadata !DIExpression()), !dbg !213
  %80 = getelementptr inbounds i8, ptr %0, i64 200, !dbg !214
  store i64 %67, ptr %80, align 8, !dbg !215, !tbaa !216
  store i64 %67, ptr %79, align 8, !dbg !218, !tbaa !216
  %81 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !219
  call void @llvm.dbg.value(metadata ptr %81, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 7, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %81, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 7, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %81, metadata !200, metadata !DIExpression()), !dbg !213
  %82 = getelementptr inbounds i8, ptr %0, i64 232, !dbg !214
  store i64 %67, ptr %82, align 8, !dbg !215, !tbaa !216
  store i64 %67, ptr %81, align 8, !dbg !218, !tbaa !216
  %83 = getelementptr inbounds i8, ptr %0, i64 256, !dbg !219
  call void @llvm.dbg.value(metadata ptr %83, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 8, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %83, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 8, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %83, metadata !200, metadata !DIExpression()), !dbg !213
  %84 = getelementptr inbounds i8, ptr %0, i64 264, !dbg !214
  store i64 %67, ptr %84, align 8, !dbg !215, !tbaa !216
  store i64 %67, ptr %83, align 8, !dbg !218, !tbaa !216
  %85 = getelementptr inbounds i8, ptr %0, i64 288, !dbg !219
  call void @llvm.dbg.value(metadata ptr %85, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 9, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %85, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 9, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %85, metadata !200, metadata !DIExpression()), !dbg !213
  %86 = getelementptr inbounds i8, ptr %0, i64 296, !dbg !214
  store i64 %67, ptr %86, align 8, !dbg !215, !tbaa !216
  store i64 %67, ptr %85, align 8, !dbg !218, !tbaa !216
  %87 = getelementptr inbounds i8, ptr %0, i64 320, !dbg !219
  call void @llvm.dbg.value(metadata ptr %87, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 10, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %87, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 10, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %87, metadata !200, metadata !DIExpression()), !dbg !213
  %88 = getelementptr inbounds i8, ptr %0, i64 328, !dbg !214
  store i64 %67, ptr %88, align 8, !dbg !215, !tbaa !216
  store i64 %67, ptr %87, align 8, !dbg !218, !tbaa !216
  %89 = getelementptr inbounds i8, ptr %0, i64 352, !dbg !219
  call void @llvm.dbg.value(metadata ptr %89, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 11, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %89, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 11, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %89, metadata !200, metadata !DIExpression()), !dbg !213
  %90 = getelementptr inbounds i8, ptr %0, i64 360, !dbg !214
  store i64 %67, ptr %90, align 8, !dbg !215, !tbaa !216
  store i64 %67, ptr %89, align 8, !dbg !218, !tbaa !216
  %91 = getelementptr inbounds i8, ptr %0, i64 384, !dbg !219
  call void @llvm.dbg.value(metadata ptr %91, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 12, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %91, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 12, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %91, metadata !200, metadata !DIExpression()), !dbg !213
  %92 = getelementptr inbounds i8, ptr %0, i64 392, !dbg !214
  store i64 %67, ptr %92, align 8, !dbg !215, !tbaa !216
  store i64 %67, ptr %91, align 8, !dbg !218, !tbaa !216
  %93 = getelementptr inbounds i8, ptr %0, i64 416, !dbg !219
  call void @llvm.dbg.value(metadata ptr %93, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 13, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %93, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 13, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %93, metadata !200, metadata !DIExpression()), !dbg !213
  %94 = getelementptr inbounds i8, ptr %0, i64 424, !dbg !214
  store i64 %67, ptr %94, align 8, !dbg !215, !tbaa !216
  store i64 %67, ptr %93, align 8, !dbg !218, !tbaa !216
  %95 = getelementptr inbounds i8, ptr %0, i64 448, !dbg !219
  call void @llvm.dbg.value(metadata ptr %95, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 14, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %95, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 14, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %95, metadata !200, metadata !DIExpression()), !dbg !213
  %96 = getelementptr inbounds i8, ptr %0, i64 456, !dbg !214
  store i64 %67, ptr %96, align 8, !dbg !215, !tbaa !216
  store i64 %67, ptr %95, align 8, !dbg !218, !tbaa !216
  %97 = getelementptr inbounds i8, ptr %0, i64 480, !dbg !219
  call void @llvm.dbg.value(metadata ptr %97, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 15, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %97, metadata !196, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 15, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %97, metadata !200, metadata !DIExpression()), !dbg !213
  %98 = getelementptr inbounds i8, ptr %0, i64 488, !dbg !214
  store i64 %67, ptr %98, align 8, !dbg !215, !tbaa !216
  store i64 %67, ptr %97, align 8, !dbg !218, !tbaa !216
  call void @llvm.dbg.value(metadata ptr %97, metadata !196, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !204
  call void @llvm.dbg.value(metadata i32 16, metadata !199, metadata !DIExpression()), !dbg !204
  ret void, !dbg !220
}

declare void @predict_16x16_v_mmx(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @predict_16x16_dc_mmxext(ptr noundef %0) #0 !dbg !221 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !223, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 16, metadata !224, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 0, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 0, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 16, metadata !224, metadata !DIExpression()), !dbg !226
  %2 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !227
  %3 = load i8, ptr %2, align 1, !dbg !227, !tbaa !109
  %4 = zext i8 %3 to i32, !dbg !227
  %5 = add nuw nsw i32 %4, 16, !dbg !227
  call void @llvm.dbg.value(metadata i32 %5, metadata !224, metadata !DIExpression()), !dbg !226
  %6 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !227
  %7 = load i8, ptr %6, align 1, !dbg !227, !tbaa !109
  %8 = zext i8 %7 to i32, !dbg !227
  %9 = add nuw nsw i32 %5, %8, !dbg !227
  call void @llvm.dbg.value(metadata i32 %9, metadata !224, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 2, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 2, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 %9, metadata !224, metadata !DIExpression()), !dbg !226
  %10 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !227
  %11 = load i8, ptr %10, align 1, !dbg !227, !tbaa !109
  %12 = zext i8 %11 to i32, !dbg !227
  %13 = add nuw nsw i32 %9, %12, !dbg !227
  call void @llvm.dbg.value(metadata i32 %13, metadata !224, metadata !DIExpression()), !dbg !226
  %14 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !227
  %15 = load i8, ptr %14, align 1, !dbg !227, !tbaa !109
  %16 = zext i8 %15 to i32, !dbg !227
  %17 = add nuw nsw i32 %13, %16, !dbg !227
  call void @llvm.dbg.value(metadata i32 %17, metadata !224, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 4, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 4, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 %17, metadata !224, metadata !DIExpression()), !dbg !226
  %18 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !227
  %19 = load i8, ptr %18, align 1, !dbg !227, !tbaa !109
  %20 = zext i8 %19 to i32, !dbg !227
  %21 = add nuw nsw i32 %17, %20, !dbg !227
  call void @llvm.dbg.value(metadata i32 %21, metadata !224, metadata !DIExpression()), !dbg !226
  %22 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !227
  %23 = load i8, ptr %22, align 1, !dbg !227, !tbaa !109
  %24 = zext i8 %23 to i32, !dbg !227
  %25 = add nuw nsw i32 %21, %24, !dbg !227
  call void @llvm.dbg.value(metadata i32 %25, metadata !224, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 6, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 6, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 %25, metadata !224, metadata !DIExpression()), !dbg !226
  %26 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !227
  %27 = load i8, ptr %26, align 1, !dbg !227, !tbaa !109
  %28 = zext i8 %27 to i32, !dbg !227
  %29 = add nuw nsw i32 %25, %28, !dbg !227
  call void @llvm.dbg.value(metadata i32 %29, metadata !224, metadata !DIExpression()), !dbg !226
  %30 = getelementptr inbounds i8, ptr %0, i64 223, !dbg !227
  %31 = load i8, ptr %30, align 1, !dbg !227, !tbaa !109
  %32 = zext i8 %31 to i32, !dbg !227
  %33 = add nuw nsw i32 %29, %32, !dbg !227
  call void @llvm.dbg.value(metadata i32 %33, metadata !224, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 8, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 8, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 %33, metadata !224, metadata !DIExpression()), !dbg !226
  %34 = getelementptr inbounds i8, ptr %0, i64 255, !dbg !227
  %35 = load i8, ptr %34, align 1, !dbg !227, !tbaa !109
  %36 = zext i8 %35 to i32, !dbg !227
  %37 = add nuw nsw i32 %33, %36, !dbg !227
  call void @llvm.dbg.value(metadata i32 %37, metadata !224, metadata !DIExpression()), !dbg !226
  %38 = getelementptr inbounds i8, ptr %0, i64 287, !dbg !227
  %39 = load i8, ptr %38, align 1, !dbg !227, !tbaa !109
  %40 = zext i8 %39 to i32, !dbg !227
  %41 = add nuw nsw i32 %37, %40, !dbg !227
  call void @llvm.dbg.value(metadata i32 %41, metadata !224, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 10, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 10, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 %41, metadata !224, metadata !DIExpression()), !dbg !226
  %42 = getelementptr inbounds i8, ptr %0, i64 319, !dbg !227
  %43 = load i8, ptr %42, align 1, !dbg !227, !tbaa !109
  %44 = zext i8 %43 to i32, !dbg !227
  %45 = add nuw nsw i32 %41, %44, !dbg !227
  call void @llvm.dbg.value(metadata i32 %45, metadata !224, metadata !DIExpression()), !dbg !226
  %46 = getelementptr inbounds i8, ptr %0, i64 351, !dbg !227
  %47 = load i8, ptr %46, align 1, !dbg !227, !tbaa !109
  %48 = zext i8 %47 to i32, !dbg !227
  %49 = add nuw nsw i32 %45, %48, !dbg !227
  call void @llvm.dbg.value(metadata i32 %49, metadata !224, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 12, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 12, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 %49, metadata !224, metadata !DIExpression()), !dbg !226
  %50 = getelementptr inbounds i8, ptr %0, i64 383, !dbg !227
  %51 = load i8, ptr %50, align 1, !dbg !227, !tbaa !109
  %52 = zext i8 %51 to i32, !dbg !227
  %53 = add nuw nsw i32 %49, %52, !dbg !227
  call void @llvm.dbg.value(metadata i32 %53, metadata !224, metadata !DIExpression()), !dbg !226
  %54 = getelementptr inbounds i8, ptr %0, i64 415, !dbg !227
  %55 = load i8, ptr %54, align 1, !dbg !227, !tbaa !109
  %56 = zext i8 %55 to i32, !dbg !227
  %57 = add nuw nsw i32 %53, %56, !dbg !227
  call void @llvm.dbg.value(metadata i32 %57, metadata !224, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 14, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 14, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 %57, metadata !224, metadata !DIExpression()), !dbg !226
  %58 = getelementptr inbounds i8, ptr %0, i64 447, !dbg !227
  %59 = load i8, ptr %58, align 1, !dbg !227, !tbaa !109
  %60 = zext i8 %59 to i32, !dbg !227
  %61 = add nuw nsw i32 %57, %60, !dbg !227
  call void @llvm.dbg.value(metadata i32 %61, metadata !224, metadata !DIExpression()), !dbg !226
  %62 = getelementptr inbounds i8, ptr %0, i64 479, !dbg !227
  %63 = load i8, ptr %62, align 1, !dbg !227, !tbaa !109
  %64 = zext i8 %63 to i32, !dbg !227
  %65 = add nuw nsw i32 %61, %64, !dbg !227
  call void @llvm.dbg.value(metadata i32 %65, metadata !224, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i64 16, metadata !225, metadata !DIExpression()), !dbg !226
  tail call void @predict_16x16_dc_core_mmxext(ptr noundef %0, i32 noundef %65) #8, !dbg !231
  ret void, !dbg !231
}

declare void @predict_16x16_dc_top_mmxext(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @predict_16x16_p_mmxext(ptr noundef %0) #0 !dbg !232 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !234, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 0, metadata !239, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 0, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 1, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 1, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 0, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 0, metadata !239, metadata !DIExpression()), !dbg !242
  %2 = getelementptr inbounds i8, ptr %0, i64 -24, !dbg !243
  %3 = load i8, ptr %2, align 1, !dbg !243, !tbaa !109
  %4 = zext i8 %3 to i32, !dbg !243
  %5 = getelementptr inbounds i8, ptr %0, i64 -26, !dbg !243
  %6 = load i8, ptr %5, align 1, !dbg !243, !tbaa !109
  %7 = zext i8 %6 to i32, !dbg !243
  %8 = sub nsw i32 %4, %7, !dbg !243
  call void @llvm.dbg.value(metadata i32 %8, metadata !239, metadata !DIExpression()), !dbg !242
  %9 = getelementptr inbounds i8, ptr %0, i64 255, !dbg !243
  %10 = load i8, ptr %9, align 1, !dbg !243, !tbaa !109
  %11 = zext i8 %10 to i32, !dbg !243
  %12 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !243
  %13 = load i8, ptr %12, align 1, !dbg !243, !tbaa !109
  %14 = zext i8 %13 to i32, !dbg !243
  %15 = sub nsw i32 %11, %14, !dbg !243
  call void @llvm.dbg.value(metadata i32 %15, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 2, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 2, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %15, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %8, metadata !239, metadata !DIExpression()), !dbg !242
  %16 = getelementptr inbounds i8, ptr %0, i64 -23, !dbg !243
  %17 = load i8, ptr %16, align 1, !dbg !243, !tbaa !109
  %18 = zext i8 %17 to i32, !dbg !243
  %19 = getelementptr inbounds i8, ptr %0, i64 -27, !dbg !243
  %20 = load i8, ptr %19, align 1, !dbg !243, !tbaa !109
  %21 = zext i8 %20 to i32, !dbg !243
  %22 = sub nsw i32 %18, %21, !dbg !243
  %23 = shl nsw i32 %22, 1, !dbg !243
  %24 = add nsw i32 %23, %8, !dbg !243
  call void @llvm.dbg.value(metadata i32 %24, metadata !239, metadata !DIExpression()), !dbg !242
  %25 = getelementptr inbounds i8, ptr %0, i64 287, !dbg !243
  %26 = load i8, ptr %25, align 1, !dbg !243, !tbaa !109
  %27 = zext i8 %26 to i32, !dbg !243
  %28 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !243
  %29 = load i8, ptr %28, align 1, !dbg !243, !tbaa !109
  %30 = zext i8 %29 to i32, !dbg !243
  %31 = sub nsw i32 %27, %30, !dbg !243
  %32 = shl nsw i32 %31, 1, !dbg !243
  %33 = add nsw i32 %32, %15, !dbg !243
  call void @llvm.dbg.value(metadata i32 %33, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 3, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 3, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %33, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %24, metadata !239, metadata !DIExpression()), !dbg !242
  %34 = getelementptr inbounds i8, ptr %0, i64 -22, !dbg !243
  %35 = load i8, ptr %34, align 1, !dbg !243, !tbaa !109
  %36 = zext i8 %35 to i32, !dbg !243
  %37 = getelementptr inbounds i8, ptr %0, i64 -28, !dbg !243
  %38 = load i8, ptr %37, align 1, !dbg !243, !tbaa !109
  %39 = zext i8 %38 to i32, !dbg !243
  %40 = sub nsw i32 %36, %39, !dbg !243
  %41 = mul nsw i32 %40, 3, !dbg !243
  %42 = add nsw i32 %41, %24, !dbg !243
  call void @llvm.dbg.value(metadata i32 %42, metadata !239, metadata !DIExpression()), !dbg !242
  %43 = getelementptr inbounds i8, ptr %0, i64 319, !dbg !243
  %44 = load i8, ptr %43, align 1, !dbg !243, !tbaa !109
  %45 = zext i8 %44 to i32, !dbg !243
  %46 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !243
  %47 = load i8, ptr %46, align 1, !dbg !243, !tbaa !109
  %48 = zext i8 %47 to i32, !dbg !243
  %49 = sub nsw i32 %45, %48, !dbg !243
  %50 = mul nsw i32 %49, 3, !dbg !243
  %51 = add nsw i32 %50, %33, !dbg !243
  call void @llvm.dbg.value(metadata i32 %51, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 4, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 4, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %51, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %42, metadata !239, metadata !DIExpression()), !dbg !242
  %52 = getelementptr inbounds i8, ptr %0, i64 -21, !dbg !243
  %53 = load i8, ptr %52, align 1, !dbg !243, !tbaa !109
  %54 = zext i8 %53 to i32, !dbg !243
  %55 = getelementptr inbounds i8, ptr %0, i64 -29, !dbg !243
  %56 = load i8, ptr %55, align 1, !dbg !243, !tbaa !109
  %57 = zext i8 %56 to i32, !dbg !243
  %58 = sub nsw i32 %54, %57, !dbg !243
  %59 = shl nsw i32 %58, 2, !dbg !243
  %60 = add nsw i32 %59, %42, !dbg !243
  call void @llvm.dbg.value(metadata i32 %60, metadata !239, metadata !DIExpression()), !dbg !242
  %61 = getelementptr inbounds i8, ptr %0, i64 351, !dbg !243
  %62 = load i8, ptr %61, align 1, !dbg !243, !tbaa !109
  %63 = zext i8 %62 to i32, !dbg !243
  %64 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !243
  %65 = load i8, ptr %64, align 1, !dbg !243, !tbaa !109
  %66 = zext i8 %65 to i32, !dbg !243
  %67 = sub nsw i32 %63, %66, !dbg !243
  %68 = shl nsw i32 %67, 2, !dbg !243
  %69 = add nsw i32 %68, %51, !dbg !243
  call void @llvm.dbg.value(metadata i32 %69, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 5, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 5, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %69, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %60, metadata !239, metadata !DIExpression()), !dbg !242
  %70 = getelementptr inbounds i8, ptr %0, i64 -20, !dbg !243
  %71 = load i8, ptr %70, align 1, !dbg !243, !tbaa !109
  %72 = zext i8 %71 to i32, !dbg !243
  %73 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !243
  %74 = load i8, ptr %73, align 1, !dbg !243, !tbaa !109
  %75 = zext i8 %74 to i32, !dbg !243
  %76 = sub nsw i32 %72, %75, !dbg !243
  %77 = mul nsw i32 %76, 5, !dbg !243
  %78 = add nsw i32 %77, %60, !dbg !243
  call void @llvm.dbg.value(metadata i32 %78, metadata !239, metadata !DIExpression()), !dbg !242
  %79 = getelementptr inbounds i8, ptr %0, i64 383, !dbg !243
  %80 = load i8, ptr %79, align 1, !dbg !243, !tbaa !109
  %81 = zext i8 %80 to i32, !dbg !243
  %82 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !243
  %83 = load i8, ptr %82, align 1, !dbg !243, !tbaa !109
  %84 = zext i8 %83 to i32, !dbg !243
  %85 = sub nsw i32 %81, %84, !dbg !243
  %86 = mul nsw i32 %85, 5, !dbg !243
  %87 = add nsw i32 %86, %69, !dbg !243
  call void @llvm.dbg.value(metadata i32 %87, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 6, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 6, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %87, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %78, metadata !239, metadata !DIExpression()), !dbg !242
  %88 = getelementptr inbounds i8, ptr %0, i64 -19, !dbg !243
  %89 = load i8, ptr %88, align 1, !dbg !243, !tbaa !109
  %90 = zext i8 %89 to i32, !dbg !243
  %91 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !243
  %92 = load i8, ptr %91, align 1, !dbg !243, !tbaa !109
  %93 = zext i8 %92 to i32, !dbg !243
  %94 = sub nsw i32 %90, %93, !dbg !243
  %95 = mul nsw i32 %94, 6, !dbg !243
  %96 = add nsw i32 %95, %78, !dbg !243
  call void @llvm.dbg.value(metadata i32 %96, metadata !239, metadata !DIExpression()), !dbg !242
  %97 = getelementptr inbounds i8, ptr %0, i64 415, !dbg !243
  %98 = load i8, ptr %97, align 1, !dbg !243, !tbaa !109
  %99 = zext i8 %98 to i32, !dbg !243
  %100 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !243
  %101 = load i8, ptr %100, align 1, !dbg !243, !tbaa !109
  %102 = zext i8 %101 to i32, !dbg !243
  %103 = sub nsw i32 %99, %102, !dbg !243
  %104 = mul nsw i32 %103, 6, !dbg !243
  %105 = add nsw i32 %104, %87, !dbg !243
  call void @llvm.dbg.value(metadata i32 %105, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 7, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 7, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %105, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %96, metadata !239, metadata !DIExpression()), !dbg !242
  %106 = getelementptr inbounds i8, ptr %0, i64 -18, !dbg !243
  %107 = load i8, ptr %106, align 1, !dbg !243, !tbaa !109
  %108 = zext i8 %107 to i32, !dbg !243
  %109 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !243
  %110 = load i8, ptr %109, align 1, !dbg !243, !tbaa !109
  %111 = zext i8 %110 to i32, !dbg !243
  %112 = sub nsw i32 %108, %111, !dbg !243
  %113 = mul nsw i32 %112, 7, !dbg !243
  %114 = add nsw i32 %113, %96, !dbg !243
  call void @llvm.dbg.value(metadata i32 %114, metadata !239, metadata !DIExpression()), !dbg !242
  %115 = getelementptr inbounds i8, ptr %0, i64 447, !dbg !243
  %116 = load i8, ptr %115, align 1, !dbg !243, !tbaa !109
  %117 = zext i8 %116 to i32, !dbg !243
  %118 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !243
  %119 = load i8, ptr %118, align 1, !dbg !243, !tbaa !109
  %120 = zext i8 %119 to i32, !dbg !243
  %121 = sub nsw i32 %117, %120, !dbg !243
  %122 = mul nsw i32 %121, 7, !dbg !243
  %123 = add nsw i32 %122, %105, !dbg !243
  call void @llvm.dbg.value(metadata i32 %123, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 8, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 8, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %123, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %114, metadata !239, metadata !DIExpression()), !dbg !242
  %124 = getelementptr inbounds i8, ptr %0, i64 -17, !dbg !243
  %125 = load i8, ptr %124, align 1, !dbg !243, !tbaa !109
  %126 = zext i8 %125 to i32, !dbg !243
  %127 = getelementptr inbounds i8, ptr %0, i64 -33, !dbg !243
  %128 = load i8, ptr %127, align 1, !dbg !243, !tbaa !109
  %129 = zext i8 %128 to i32, !dbg !243
  %130 = sub nsw i32 %126, %129, !dbg !243
  %131 = shl nsw i32 %130, 3, !dbg !243
  %132 = add nsw i32 %131, %114, !dbg !243
  call void @llvm.dbg.value(metadata i32 %132, metadata !239, metadata !DIExpression()), !dbg !242
  %133 = getelementptr inbounds i8, ptr %0, i64 479, !dbg !243
  %134 = load i8, ptr %133, align 1, !dbg !243, !tbaa !109
  %135 = zext i8 %134 to i32, !dbg !243
  %136 = sub nsw i32 %135, %129, !dbg !243
  %137 = shl nsw i32 %136, 3, !dbg !243
  %138 = add nsw i32 %137, %123, !dbg !243
  call void @llvm.dbg.value(metadata i32 %138, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 9, metadata !238, metadata !DIExpression()), !dbg !242
  %139 = add nuw nsw i32 %126, %135, !dbg !247
  %140 = shl nuw nsw i32 %139, 4, !dbg !247
  call void @llvm.dbg.value(metadata i32 %140, metadata !235, metadata !DIExpression()), !dbg !242
  %141 = mul nsw i32 %132, 5, !dbg !247
  %142 = add nsw i32 %141, 32, !dbg !247
  %143 = ashr i32 %142, 6, !dbg !247
  call void @llvm.dbg.value(metadata i32 %143, metadata !236, metadata !DIExpression()), !dbg !242
  %144 = mul nsw i32 %138, 5, !dbg !247
  %145 = add nsw i32 %144, 32, !dbg !247
  %146 = ashr i32 %145, 6, !dbg !247
  call void @llvm.dbg.value(metadata i32 %146, metadata !237, metadata !DIExpression()), !dbg !242
  %147 = add nsw i32 %146, %143
  %148 = mul nsw i32 %147, -7
  %149 = add nsw i32 %148, 16, !dbg !247
  %150 = add nsw i32 %149, %140, !dbg !247
  call void @llvm.dbg.value(metadata i32 %150, metadata !241, metadata !DIExpression()), !dbg !242
  tail call void @predict_16x16_p_core_mmxext(ptr noundef %0, i32 noundef %150, i32 noundef %143, i32 noundef %146) #8, !dbg !247
  ret void, !dbg !247
}

declare void @predict_16x16_h_mmxext(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @predict_16x16_dc_sse2(ptr noundef %0) #0 !dbg !248 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !250, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 16, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 0, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 0, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 16, metadata !251, metadata !DIExpression()), !dbg !253
  %2 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !254
  %3 = load i8, ptr %2, align 1, !dbg !254, !tbaa !109
  %4 = zext i8 %3 to i32, !dbg !254
  %5 = add nuw nsw i32 %4, 16, !dbg !254
  call void @llvm.dbg.value(metadata i32 %5, metadata !251, metadata !DIExpression()), !dbg !253
  %6 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !254
  %7 = load i8, ptr %6, align 1, !dbg !254, !tbaa !109
  %8 = zext i8 %7 to i32, !dbg !254
  %9 = add nuw nsw i32 %5, %8, !dbg !254
  call void @llvm.dbg.value(metadata i32 %9, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 2, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 2, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %9, metadata !251, metadata !DIExpression()), !dbg !253
  %10 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !254
  %11 = load i8, ptr %10, align 1, !dbg !254, !tbaa !109
  %12 = zext i8 %11 to i32, !dbg !254
  %13 = add nuw nsw i32 %9, %12, !dbg !254
  call void @llvm.dbg.value(metadata i32 %13, metadata !251, metadata !DIExpression()), !dbg !253
  %14 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !254
  %15 = load i8, ptr %14, align 1, !dbg !254, !tbaa !109
  %16 = zext i8 %15 to i32, !dbg !254
  %17 = add nuw nsw i32 %13, %16, !dbg !254
  call void @llvm.dbg.value(metadata i32 %17, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 4, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 4, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %17, metadata !251, metadata !DIExpression()), !dbg !253
  %18 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !254
  %19 = load i8, ptr %18, align 1, !dbg !254, !tbaa !109
  %20 = zext i8 %19 to i32, !dbg !254
  %21 = add nuw nsw i32 %17, %20, !dbg !254
  call void @llvm.dbg.value(metadata i32 %21, metadata !251, metadata !DIExpression()), !dbg !253
  %22 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !254
  %23 = load i8, ptr %22, align 1, !dbg !254, !tbaa !109
  %24 = zext i8 %23 to i32, !dbg !254
  %25 = add nuw nsw i32 %21, %24, !dbg !254
  call void @llvm.dbg.value(metadata i32 %25, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 6, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 6, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %25, metadata !251, metadata !DIExpression()), !dbg !253
  %26 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !254
  %27 = load i8, ptr %26, align 1, !dbg !254, !tbaa !109
  %28 = zext i8 %27 to i32, !dbg !254
  %29 = add nuw nsw i32 %25, %28, !dbg !254
  call void @llvm.dbg.value(metadata i32 %29, metadata !251, metadata !DIExpression()), !dbg !253
  %30 = getelementptr inbounds i8, ptr %0, i64 223, !dbg !254
  %31 = load i8, ptr %30, align 1, !dbg !254, !tbaa !109
  %32 = zext i8 %31 to i32, !dbg !254
  %33 = add nuw nsw i32 %29, %32, !dbg !254
  call void @llvm.dbg.value(metadata i32 %33, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 8, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 8, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %33, metadata !251, metadata !DIExpression()), !dbg !253
  %34 = getelementptr inbounds i8, ptr %0, i64 255, !dbg !254
  %35 = load i8, ptr %34, align 1, !dbg !254, !tbaa !109
  %36 = zext i8 %35 to i32, !dbg !254
  %37 = add nuw nsw i32 %33, %36, !dbg !254
  call void @llvm.dbg.value(metadata i32 %37, metadata !251, metadata !DIExpression()), !dbg !253
  %38 = getelementptr inbounds i8, ptr %0, i64 287, !dbg !254
  %39 = load i8, ptr %38, align 1, !dbg !254, !tbaa !109
  %40 = zext i8 %39 to i32, !dbg !254
  %41 = add nuw nsw i32 %37, %40, !dbg !254
  call void @llvm.dbg.value(metadata i32 %41, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 10, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 10, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %41, metadata !251, metadata !DIExpression()), !dbg !253
  %42 = getelementptr inbounds i8, ptr %0, i64 319, !dbg !254
  %43 = load i8, ptr %42, align 1, !dbg !254, !tbaa !109
  %44 = zext i8 %43 to i32, !dbg !254
  %45 = add nuw nsw i32 %41, %44, !dbg !254
  call void @llvm.dbg.value(metadata i32 %45, metadata !251, metadata !DIExpression()), !dbg !253
  %46 = getelementptr inbounds i8, ptr %0, i64 351, !dbg !254
  %47 = load i8, ptr %46, align 1, !dbg !254, !tbaa !109
  %48 = zext i8 %47 to i32, !dbg !254
  %49 = add nuw nsw i32 %45, %48, !dbg !254
  call void @llvm.dbg.value(metadata i32 %49, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 12, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 12, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %49, metadata !251, metadata !DIExpression()), !dbg !253
  %50 = getelementptr inbounds i8, ptr %0, i64 383, !dbg !254
  %51 = load i8, ptr %50, align 1, !dbg !254, !tbaa !109
  %52 = zext i8 %51 to i32, !dbg !254
  %53 = add nuw nsw i32 %49, %52, !dbg !254
  call void @llvm.dbg.value(metadata i32 %53, metadata !251, metadata !DIExpression()), !dbg !253
  %54 = getelementptr inbounds i8, ptr %0, i64 415, !dbg !254
  %55 = load i8, ptr %54, align 1, !dbg !254, !tbaa !109
  %56 = zext i8 %55 to i32, !dbg !254
  %57 = add nuw nsw i32 %53, %56, !dbg !254
  call void @llvm.dbg.value(metadata i32 %57, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 14, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 14, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %57, metadata !251, metadata !DIExpression()), !dbg !253
  %58 = getelementptr inbounds i8, ptr %0, i64 447, !dbg !254
  %59 = load i8, ptr %58, align 1, !dbg !254, !tbaa !109
  %60 = zext i8 %59 to i32, !dbg !254
  %61 = add nuw nsw i32 %57, %60, !dbg !254
  call void @llvm.dbg.value(metadata i32 %61, metadata !251, metadata !DIExpression()), !dbg !253
  %62 = getelementptr inbounds i8, ptr %0, i64 479, !dbg !254
  %63 = load i8, ptr %62, align 1, !dbg !254, !tbaa !109
  %64 = zext i8 %63 to i32, !dbg !254
  %65 = add nuw nsw i32 %61, %64, !dbg !254
  call void @llvm.dbg.value(metadata i32 %65, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i64 16, metadata !252, metadata !DIExpression()), !dbg !253
  tail call void @predict_16x16_dc_core_sse2(ptr noundef %0, i32 noundef %65) #8, !dbg !258
  ret void, !dbg !258
}

declare void @predict_16x16_v_sse2(ptr noundef) #3

declare void @predict_16x16_dc_top_sse2(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @predict_16x16_p_sse2(ptr noundef %0) #0 !dbg !259 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !261, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 0, metadata !266, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 1, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 1, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 0, metadata !266, metadata !DIExpression()), !dbg !269
  %2 = getelementptr inbounds i8, ptr %0, i64 -24, !dbg !270
  %3 = load i8, ptr %2, align 1, !dbg !270, !tbaa !109
  %4 = zext i8 %3 to i32, !dbg !270
  %5 = getelementptr inbounds i8, ptr %0, i64 -26, !dbg !270
  %6 = load i8, ptr %5, align 1, !dbg !270, !tbaa !109
  %7 = zext i8 %6 to i32, !dbg !270
  %8 = sub nsw i32 %4, %7, !dbg !270
  call void @llvm.dbg.value(metadata i32 %8, metadata !266, metadata !DIExpression()), !dbg !269
  %9 = getelementptr inbounds i8, ptr %0, i64 255, !dbg !270
  %10 = load i8, ptr %9, align 1, !dbg !270, !tbaa !109
  %11 = zext i8 %10 to i32, !dbg !270
  %12 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !270
  %13 = load i8, ptr %12, align 1, !dbg !270, !tbaa !109
  %14 = zext i8 %13 to i32, !dbg !270
  %15 = sub nsw i32 %11, %14, !dbg !270
  call void @llvm.dbg.value(metadata i32 %15, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 2, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 2, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 %15, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 %8, metadata !266, metadata !DIExpression()), !dbg !269
  %16 = getelementptr inbounds i8, ptr %0, i64 -23, !dbg !270
  %17 = load i8, ptr %16, align 1, !dbg !270, !tbaa !109
  %18 = zext i8 %17 to i32, !dbg !270
  %19 = getelementptr inbounds i8, ptr %0, i64 -27, !dbg !270
  %20 = load i8, ptr %19, align 1, !dbg !270, !tbaa !109
  %21 = zext i8 %20 to i32, !dbg !270
  %22 = sub nsw i32 %18, %21, !dbg !270
  %23 = shl nsw i32 %22, 1, !dbg !270
  %24 = add nsw i32 %23, %8, !dbg !270
  call void @llvm.dbg.value(metadata i32 %24, metadata !266, metadata !DIExpression()), !dbg !269
  %25 = getelementptr inbounds i8, ptr %0, i64 287, !dbg !270
  %26 = load i8, ptr %25, align 1, !dbg !270, !tbaa !109
  %27 = zext i8 %26 to i32, !dbg !270
  %28 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !270
  %29 = load i8, ptr %28, align 1, !dbg !270, !tbaa !109
  %30 = zext i8 %29 to i32, !dbg !270
  %31 = sub nsw i32 %27, %30, !dbg !270
  %32 = shl nsw i32 %31, 1, !dbg !270
  %33 = add nsw i32 %32, %15, !dbg !270
  call void @llvm.dbg.value(metadata i32 %33, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 3, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 3, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 %33, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 %24, metadata !266, metadata !DIExpression()), !dbg !269
  %34 = getelementptr inbounds i8, ptr %0, i64 -22, !dbg !270
  %35 = load i8, ptr %34, align 1, !dbg !270, !tbaa !109
  %36 = zext i8 %35 to i32, !dbg !270
  %37 = getelementptr inbounds i8, ptr %0, i64 -28, !dbg !270
  %38 = load i8, ptr %37, align 1, !dbg !270, !tbaa !109
  %39 = zext i8 %38 to i32, !dbg !270
  %40 = sub nsw i32 %36, %39, !dbg !270
  %41 = mul nsw i32 %40, 3, !dbg !270
  %42 = add nsw i32 %41, %24, !dbg !270
  call void @llvm.dbg.value(metadata i32 %42, metadata !266, metadata !DIExpression()), !dbg !269
  %43 = getelementptr inbounds i8, ptr %0, i64 319, !dbg !270
  %44 = load i8, ptr %43, align 1, !dbg !270, !tbaa !109
  %45 = zext i8 %44 to i32, !dbg !270
  %46 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !270
  %47 = load i8, ptr %46, align 1, !dbg !270, !tbaa !109
  %48 = zext i8 %47 to i32, !dbg !270
  %49 = sub nsw i32 %45, %48, !dbg !270
  %50 = mul nsw i32 %49, 3, !dbg !270
  %51 = add nsw i32 %50, %33, !dbg !270
  call void @llvm.dbg.value(metadata i32 %51, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 4, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 4, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 %51, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 %42, metadata !266, metadata !DIExpression()), !dbg !269
  %52 = getelementptr inbounds i8, ptr %0, i64 -21, !dbg !270
  %53 = load i8, ptr %52, align 1, !dbg !270, !tbaa !109
  %54 = zext i8 %53 to i32, !dbg !270
  %55 = getelementptr inbounds i8, ptr %0, i64 -29, !dbg !270
  %56 = load i8, ptr %55, align 1, !dbg !270, !tbaa !109
  %57 = zext i8 %56 to i32, !dbg !270
  %58 = sub nsw i32 %54, %57, !dbg !270
  %59 = shl nsw i32 %58, 2, !dbg !270
  %60 = add nsw i32 %59, %42, !dbg !270
  call void @llvm.dbg.value(metadata i32 %60, metadata !266, metadata !DIExpression()), !dbg !269
  %61 = getelementptr inbounds i8, ptr %0, i64 351, !dbg !270
  %62 = load i8, ptr %61, align 1, !dbg !270, !tbaa !109
  %63 = zext i8 %62 to i32, !dbg !270
  %64 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !270
  %65 = load i8, ptr %64, align 1, !dbg !270, !tbaa !109
  %66 = zext i8 %65 to i32, !dbg !270
  %67 = sub nsw i32 %63, %66, !dbg !270
  %68 = shl nsw i32 %67, 2, !dbg !270
  %69 = add nsw i32 %68, %51, !dbg !270
  call void @llvm.dbg.value(metadata i32 %69, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 5, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 5, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 %69, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 %60, metadata !266, metadata !DIExpression()), !dbg !269
  %70 = getelementptr inbounds i8, ptr %0, i64 -20, !dbg !270
  %71 = load i8, ptr %70, align 1, !dbg !270, !tbaa !109
  %72 = zext i8 %71 to i32, !dbg !270
  %73 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !270
  %74 = load i8, ptr %73, align 1, !dbg !270, !tbaa !109
  %75 = zext i8 %74 to i32, !dbg !270
  %76 = sub nsw i32 %72, %75, !dbg !270
  %77 = mul nsw i32 %76, 5, !dbg !270
  %78 = add nsw i32 %77, %60, !dbg !270
  call void @llvm.dbg.value(metadata i32 %78, metadata !266, metadata !DIExpression()), !dbg !269
  %79 = getelementptr inbounds i8, ptr %0, i64 383, !dbg !270
  %80 = load i8, ptr %79, align 1, !dbg !270, !tbaa !109
  %81 = zext i8 %80 to i32, !dbg !270
  %82 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !270
  %83 = load i8, ptr %82, align 1, !dbg !270, !tbaa !109
  %84 = zext i8 %83 to i32, !dbg !270
  %85 = sub nsw i32 %81, %84, !dbg !270
  %86 = mul nsw i32 %85, 5, !dbg !270
  %87 = add nsw i32 %86, %69, !dbg !270
  call void @llvm.dbg.value(metadata i32 %87, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 6, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 6, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 %87, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 %78, metadata !266, metadata !DIExpression()), !dbg !269
  %88 = getelementptr inbounds i8, ptr %0, i64 -19, !dbg !270
  %89 = load i8, ptr %88, align 1, !dbg !270, !tbaa !109
  %90 = zext i8 %89 to i32, !dbg !270
  %91 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !270
  %92 = load i8, ptr %91, align 1, !dbg !270, !tbaa !109
  %93 = zext i8 %92 to i32, !dbg !270
  %94 = sub nsw i32 %90, %93, !dbg !270
  %95 = mul nsw i32 %94, 6, !dbg !270
  %96 = add nsw i32 %95, %78, !dbg !270
  call void @llvm.dbg.value(metadata i32 %96, metadata !266, metadata !DIExpression()), !dbg !269
  %97 = getelementptr inbounds i8, ptr %0, i64 415, !dbg !270
  %98 = load i8, ptr %97, align 1, !dbg !270, !tbaa !109
  %99 = zext i8 %98 to i32, !dbg !270
  %100 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !270
  %101 = load i8, ptr %100, align 1, !dbg !270, !tbaa !109
  %102 = zext i8 %101 to i32, !dbg !270
  %103 = sub nsw i32 %99, %102, !dbg !270
  %104 = mul nsw i32 %103, 6, !dbg !270
  %105 = add nsw i32 %104, %87, !dbg !270
  call void @llvm.dbg.value(metadata i32 %105, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 7, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 7, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 %105, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 %96, metadata !266, metadata !DIExpression()), !dbg !269
  %106 = getelementptr inbounds i8, ptr %0, i64 -18, !dbg !270
  %107 = load i8, ptr %106, align 1, !dbg !270, !tbaa !109
  %108 = zext i8 %107 to i32, !dbg !270
  %109 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !270
  %110 = load i8, ptr %109, align 1, !dbg !270, !tbaa !109
  %111 = zext i8 %110 to i32, !dbg !270
  %112 = sub nsw i32 %108, %111, !dbg !270
  %113 = mul nsw i32 %112, 7, !dbg !270
  %114 = add nsw i32 %113, %96, !dbg !270
  call void @llvm.dbg.value(metadata i32 %114, metadata !266, metadata !DIExpression()), !dbg !269
  %115 = getelementptr inbounds i8, ptr %0, i64 447, !dbg !270
  %116 = load i8, ptr %115, align 1, !dbg !270, !tbaa !109
  %117 = zext i8 %116 to i32, !dbg !270
  %118 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !270
  %119 = load i8, ptr %118, align 1, !dbg !270, !tbaa !109
  %120 = zext i8 %119 to i32, !dbg !270
  %121 = sub nsw i32 %117, %120, !dbg !270
  %122 = mul nsw i32 %121, 7, !dbg !270
  %123 = add nsw i32 %122, %105, !dbg !270
  call void @llvm.dbg.value(metadata i32 %123, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 8, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 8, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 %123, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 %114, metadata !266, metadata !DIExpression()), !dbg !269
  %124 = getelementptr inbounds i8, ptr %0, i64 -17, !dbg !270
  %125 = load i8, ptr %124, align 1, !dbg !270, !tbaa !109
  %126 = zext i8 %125 to i32, !dbg !270
  %127 = getelementptr inbounds i8, ptr %0, i64 -33, !dbg !270
  %128 = load i8, ptr %127, align 1, !dbg !270, !tbaa !109
  %129 = zext i8 %128 to i32, !dbg !270
  %130 = sub nsw i32 %126, %129, !dbg !270
  %131 = shl nsw i32 %130, 3, !dbg !270
  %132 = add nsw i32 %131, %114, !dbg !270
  call void @llvm.dbg.value(metadata i32 %132, metadata !266, metadata !DIExpression()), !dbg !269
  %133 = getelementptr inbounds i8, ptr %0, i64 479, !dbg !270
  %134 = load i8, ptr %133, align 1, !dbg !270, !tbaa !109
  %135 = zext i8 %134 to i32, !dbg !270
  %136 = sub nsw i32 %135, %129, !dbg !270
  %137 = shl nsw i32 %136, 3, !dbg !270
  %138 = add nsw i32 %137, %123, !dbg !270
  call void @llvm.dbg.value(metadata i32 %138, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64 9, metadata !265, metadata !DIExpression()), !dbg !269
  %139 = add nuw nsw i32 %126, %135, !dbg !274
  %140 = shl nuw nsw i32 %139, 4, !dbg !274
  call void @llvm.dbg.value(metadata i32 %140, metadata !262, metadata !DIExpression()), !dbg !269
  %141 = mul nsw i32 %132, 5, !dbg !274
  %142 = add nsw i32 %141, 32, !dbg !274
  %143 = ashr i32 %142, 6, !dbg !274
  call void @llvm.dbg.value(metadata i32 %143, metadata !263, metadata !DIExpression()), !dbg !269
  %144 = mul nsw i32 %138, 5, !dbg !274
  %145 = add nsw i32 %144, 32, !dbg !274
  %146 = ashr i32 %145, 6, !dbg !274
  call void @llvm.dbg.value(metadata i32 %146, metadata !264, metadata !DIExpression()), !dbg !269
  %147 = add nsw i32 %146, %143
  %148 = mul nsw i32 %147, -7
  %149 = add nsw i32 %148, 16, !dbg !274
  %150 = add nsw i32 %149, %140, !dbg !274
  call void @llvm.dbg.value(metadata i32 %150, metadata !268, metadata !DIExpression()), !dbg !269
  tail call void @predict_16x16_p_core_sse2(ptr noundef %0, i32 noundef %150, i32 noundef %143, i32 noundef %146) #8, !dbg !274
  ret void, !dbg !274
}

declare void @predict_16x16_h_ssse3(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_8x8c_init_mmx(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !275 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !277, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %1, metadata !278, metadata !DIExpression()), !dbg !279
  %3 = and i32 %0, 8, !dbg !280
  %4 = icmp eq i32 %3, 0, !dbg !280
  br i1 %4, label %17, label %5, !dbg !282

5:                                                ; preds = %2
  %6 = getelementptr inbounds ptr, ptr %1, i64 4, !dbg !283
  store ptr @predict_8x8c_dc_left, ptr %6, align 8, !dbg !284, !tbaa !165
  %7 = getelementptr inbounds ptr, ptr %1, i64 5, !dbg !285
  store ptr @predict_8x8c_dc_top, ptr %7, align 8, !dbg !286, !tbaa !165
  %8 = getelementptr inbounds ptr, ptr %1, i64 2, !dbg !287
  store ptr @predict_8x8c_v_mmx, ptr %8, align 8, !dbg !288, !tbaa !165
  %9 = and i32 %0, 16, !dbg !289
  %10 = icmp eq i32 %9, 0, !dbg !289
  br i1 %10, label %17, label %11, !dbg !291

11:                                               ; preds = %5
  %12 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !292
  store ptr @predict_8x8c_h_mmxext, ptr %12, align 8, !dbg !293, !tbaa !165
  %13 = getelementptr inbounds ptr, ptr %1, i64 3, !dbg !294
  store ptr @predict_8x8c_p_mmxext, ptr %13, align 8, !dbg !295, !tbaa !165
  store ptr @predict_8x8c_dc_mmxext, ptr %1, align 8, !dbg !296, !tbaa !165
  %14 = and i32 %0, 1024, !dbg !297
  %15 = icmp eq i32 %14, 0, !dbg !297
  br i1 %15, label %17, label %16, !dbg !299

16:                                               ; preds = %11
  store ptr @predict_8x8c_h_ssse3, ptr %12, align 8, !dbg !300, !tbaa !165
  br label %17, !dbg !301

17:                                               ; preds = %11, %5, %2, %16
  ret void, !dbg !301
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_dc_left(ptr nocapture noundef %0) #5 !dbg !302 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 0, metadata !306, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 0, metadata !307, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 0, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i64 0, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 0, metadata !307, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 0, metadata !306, metadata !DIExpression()), !dbg !310
  %2 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !311
  %3 = load i8, ptr %2, align 1, !dbg !311, !tbaa !109
  %4 = zext i8 %3 to i64, !dbg !311
  call void @llvm.dbg.value(metadata i8 %3, metadata !306, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !310
  %5 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !315
  %6 = load i8, ptr %5, align 1, !dbg !315, !tbaa !109
  %7 = zext i8 %6 to i64, !dbg !315
  call void @llvm.dbg.value(metadata i8 %6, metadata !307, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !310
  call void @llvm.dbg.value(metadata i64 1, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i64 1, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i8 %6, metadata !307, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !310
  call void @llvm.dbg.value(metadata i8 %3, metadata !306, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !310
  %8 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !311
  %9 = load i8, ptr %8, align 1, !dbg !311, !tbaa !109
  %10 = zext i8 %9 to i64, !dbg !311
  %11 = add nuw nsw i64 %4, %10, !dbg !316
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %9), metadata !306, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !310
  %12 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !315
  %13 = load i8, ptr %12, align 1, !dbg !315, !tbaa !109
  %14 = zext i8 %13 to i64, !dbg !315
  %15 = add nuw nsw i64 %7, %14, !dbg !317
  call void @llvm.dbg.value(metadata !DIArgList(i8 %6, i8 %13), metadata !307, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !310
  call void @llvm.dbg.value(metadata i64 2, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i64 2, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata !DIArgList(i8 %6, i8 %13), metadata !307, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !310
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %9), metadata !306, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !310
  %16 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !311
  %17 = load i8, ptr %16, align 1, !dbg !311, !tbaa !109
  %18 = zext i8 %17 to i64, !dbg !311
  %19 = add nuw nsw i64 %11, %18, !dbg !316
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %17, i8 %9), metadata !306, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !310
  %20 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !315
  %21 = load i8, ptr %20, align 1, !dbg !315, !tbaa !109
  %22 = zext i8 %21 to i64, !dbg !315
  %23 = add nuw nsw i64 %15, %22, !dbg !317
  call void @llvm.dbg.value(metadata !DIArgList(i8 %6, i8 %21, i8 %13), metadata !307, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !310
  call void @llvm.dbg.value(metadata i64 3, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i64 3, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata !DIArgList(i8 %6, i8 %21, i8 %13), metadata !307, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !310
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %17, i8 %9), metadata !306, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !310
  %24 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !311
  %25 = load i8, ptr %24, align 1, !dbg !311, !tbaa !109
  %26 = zext i8 %25 to i64, !dbg !311
  %27 = add nuw nsw i64 %19, %26, !dbg !316
  call void @llvm.dbg.value(metadata !DIArgList(i8 %3, i8 %25, i8 %17, i8 %9), metadata !306, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !310
  %28 = getelementptr inbounds i8, ptr %0, i64 223, !dbg !315
  %29 = load i8, ptr %28, align 1, !dbg !315, !tbaa !109
  %30 = zext i8 %29 to i64, !dbg !315
  %31 = add nuw nsw i64 %23, %30, !dbg !317
  call void @llvm.dbg.value(metadata !DIArgList(i8 %6, i8 %29, i8 %21, i8 %13), metadata !307, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !310
  call void @llvm.dbg.value(metadata i64 4, metadata !305, metadata !DIExpression()), !dbg !310
  %32 = add nuw nsw i64 %27, 2, !dbg !318
  %33 = lshr i64 %32, 2, !dbg !319
  %34 = mul nuw i64 %33, 72340172838076673, !dbg !320
  call void @llvm.dbg.value(metadata i64 %34, metadata !308, metadata !DIExpression()), !dbg !310
  %35 = add nuw nsw i64 %31, 2, !dbg !321
  %36 = lshr i64 %35, 2, !dbg !322
  call void @llvm.dbg.value(metadata i64 %41, metadata !309, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 0, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata ptr %0, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata ptr %0, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 0, metadata !305, metadata !DIExpression()), !dbg !310
  store i64 %34, ptr %0, align 8, !dbg !323, !tbaa !216
  %37 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !327
  call void @llvm.dbg.value(metadata ptr %37, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 1, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata ptr %37, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 1, metadata !305, metadata !DIExpression()), !dbg !310
  store i64 %34, ptr %37, align 8, !dbg !323, !tbaa !216
  %38 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !327
  call void @llvm.dbg.value(metadata ptr %38, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 2, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata ptr %38, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 2, metadata !305, metadata !DIExpression()), !dbg !310
  store i64 %34, ptr %38, align 8, !dbg !323, !tbaa !216
  %39 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !327
  call void @llvm.dbg.value(metadata ptr %39, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 3, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata ptr %39, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 3, metadata !305, metadata !DIExpression()), !dbg !310
  store i64 %34, ptr %39, align 8, !dbg !323, !tbaa !216
  %40 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !327
  call void @llvm.dbg.value(metadata ptr %40, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 4, metadata !305, metadata !DIExpression()), !dbg !310
  %41 = mul nuw i64 %36, 72340172838076673, !dbg !328
  call void @llvm.dbg.value(metadata ptr %40, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 0, metadata !305, metadata !DIExpression()), !dbg !310
  store i64 %41, ptr %40, align 8, !dbg !329, !tbaa !216
  %42 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !333
  call void @llvm.dbg.value(metadata ptr %42, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 1, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata ptr %42, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 1, metadata !305, metadata !DIExpression()), !dbg !310
  store i64 %41, ptr %42, align 8, !dbg !329, !tbaa !216
  %43 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !333
  call void @llvm.dbg.value(metadata ptr %43, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 2, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata ptr %43, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 2, metadata !305, metadata !DIExpression()), !dbg !310
  store i64 %41, ptr %43, align 8, !dbg !329, !tbaa !216
  %44 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !333
  call void @llvm.dbg.value(metadata ptr %44, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 3, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata ptr %44, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 3, metadata !305, metadata !DIExpression()), !dbg !310
  store i64 %41, ptr %44, align 8, !dbg !329, !tbaa !216
  call void @llvm.dbg.value(metadata ptr %44, metadata !304, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !310
  call void @llvm.dbg.value(metadata i32 4, metadata !305, metadata !DIExpression()), !dbg !310
  ret void, !dbg !334
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_dc_top(ptr nocapture noundef %0) #5 !dbg !335 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 0, metadata !340, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 0, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 0, metadata !340, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i64 0, metadata !339, metadata !DIExpression()), !dbg !343
  %2 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !344
  %3 = load i8, ptr %2, align 1, !dbg !344, !tbaa !109
  %4 = zext i8 %3 to i32, !dbg !344
  call void @llvm.dbg.value(metadata i32 %4, metadata !340, metadata !DIExpression()), !dbg !343
  %5 = getelementptr inbounds i8, ptr %0, i64 -28, !dbg !348
  %6 = load i8, ptr %5, align 1, !dbg !348, !tbaa !109
  %7 = zext i8 %6 to i64, !dbg !348
  call void @llvm.dbg.value(metadata i8 %6, metadata !341, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !343
  call void @llvm.dbg.value(metadata i64 1, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i8 %6, metadata !341, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !343
  call void @llvm.dbg.value(metadata i32 %4, metadata !340, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i64 1, metadata !339, metadata !DIExpression()), !dbg !343
  %8 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !344
  %9 = load i8, ptr %8, align 1, !dbg !344, !tbaa !109
  %10 = zext i8 %9 to i32, !dbg !344
  %11 = add nuw nsw i32 %4, %10, !dbg !349
  call void @llvm.dbg.value(metadata i32 %11, metadata !340, metadata !DIExpression()), !dbg !343
  %12 = getelementptr inbounds i8, ptr %0, i64 -27, !dbg !348
  %13 = load i8, ptr %12, align 1, !dbg !348, !tbaa !109
  %14 = zext i8 %13 to i64, !dbg !348
  %15 = add nuw nsw i64 %7, %14, !dbg !350
  call void @llvm.dbg.value(metadata !DIArgList(i8 %6, i8 %13), metadata !341, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !343
  call void @llvm.dbg.value(metadata i64 2, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata !DIArgList(i8 %6, i8 %13), metadata !341, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !343
  call void @llvm.dbg.value(metadata i32 %11, metadata !340, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i64 2, metadata !339, metadata !DIExpression()), !dbg !343
  %16 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !344
  %17 = load i8, ptr %16, align 1, !dbg !344, !tbaa !109
  %18 = zext i8 %17 to i32, !dbg !344
  %19 = add nuw nsw i32 %11, %18, !dbg !349
  call void @llvm.dbg.value(metadata i32 %19, metadata !340, metadata !DIExpression()), !dbg !343
  %20 = getelementptr inbounds i8, ptr %0, i64 -26, !dbg !348
  %21 = load i8, ptr %20, align 1, !dbg !348, !tbaa !109
  %22 = zext i8 %21 to i64, !dbg !348
  %23 = add nuw nsw i64 %15, %22, !dbg !350
  call void @llvm.dbg.value(metadata !DIArgList(i8 %6, i8 %21, i8 %13), metadata !341, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !343
  call void @llvm.dbg.value(metadata i64 3, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata !DIArgList(i8 %6, i8 %21, i8 %13), metadata !341, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !343
  call void @llvm.dbg.value(metadata i32 %19, metadata !340, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i64 3, metadata !339, metadata !DIExpression()), !dbg !343
  %24 = getelementptr inbounds i8, ptr %0, i64 -29, !dbg !344
  %25 = load i8, ptr %24, align 1, !dbg !344, !tbaa !109
  %26 = zext i8 %25 to i32, !dbg !344
  %27 = add nuw nsw i32 %19, %26, !dbg !349
  call void @llvm.dbg.value(metadata i32 %27, metadata !340, metadata !DIExpression()), !dbg !343
  %28 = getelementptr inbounds i8, ptr %0, i64 -25, !dbg !348
  %29 = load i8, ptr %28, align 1, !dbg !348, !tbaa !109
  %30 = zext i8 %29 to i64, !dbg !348
  %31 = add nuw nsw i64 %23, %30, !dbg !350
  call void @llvm.dbg.value(metadata !DIArgList(i8 %6, i8 %29, i8 %21, i8 %13), metadata !341, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !343
  call void @llvm.dbg.value(metadata i64 4, metadata !339, metadata !DIExpression()), !dbg !343
  %32 = add nuw nsw i32 %27, 2, !dbg !351
  %33 = lshr i32 %32, 2, !dbg !352
  %34 = mul nuw i32 %33, 16843009, !dbg !353
  %35 = zext i32 %34 to i64, !dbg !354
  %36 = add nuw nsw i64 %31, 2, !dbg !355
  %37 = lshr i64 %36, 2, !dbg !356
  %38 = mul nuw i64 %37, 72340172821233664, !dbg !357
  %39 = or i64 %38, %35, !dbg !358
  call void @llvm.dbg.value(metadata i64 %39, metadata !342, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 0, metadata !338, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 0, metadata !338, metadata !DIExpression()), !dbg !343
  store i64 %39, ptr %0, align 8, !dbg !359, !tbaa !216
  %40 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !363
  call void @llvm.dbg.value(metadata ptr %40, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 1, metadata !338, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata ptr %40, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 1, metadata !338, metadata !DIExpression()), !dbg !343
  store i64 %39, ptr %40, align 8, !dbg !359, !tbaa !216
  %41 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !363
  call void @llvm.dbg.value(metadata ptr %41, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 2, metadata !338, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata ptr %41, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 2, metadata !338, metadata !DIExpression()), !dbg !343
  store i64 %39, ptr %41, align 8, !dbg !359, !tbaa !216
  %42 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !363
  call void @llvm.dbg.value(metadata ptr %42, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 3, metadata !338, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata ptr %42, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 3, metadata !338, metadata !DIExpression()), !dbg !343
  store i64 %39, ptr %42, align 8, !dbg !359, !tbaa !216
  %43 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !363
  call void @llvm.dbg.value(metadata ptr %43, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 4, metadata !338, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata ptr %43, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 4, metadata !338, metadata !DIExpression()), !dbg !343
  store i64 %39, ptr %43, align 8, !dbg !359, !tbaa !216
  %44 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !363
  call void @llvm.dbg.value(metadata ptr %44, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 5, metadata !338, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata ptr %44, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 5, metadata !338, metadata !DIExpression()), !dbg !343
  store i64 %39, ptr %44, align 8, !dbg !359, !tbaa !216
  %45 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !363
  call void @llvm.dbg.value(metadata ptr %45, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 6, metadata !338, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata ptr %45, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 6, metadata !338, metadata !DIExpression()), !dbg !343
  store i64 %39, ptr %45, align 8, !dbg !359, !tbaa !216
  %46 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !363
  call void @llvm.dbg.value(metadata ptr %46, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 7, metadata !338, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata ptr %46, metadata !337, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 7, metadata !338, metadata !DIExpression()), !dbg !343
  store i64 %39, ptr %46, align 8, !dbg !359, !tbaa !216
  call void @llvm.dbg.value(metadata ptr %46, metadata !337, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !343
  call void @llvm.dbg.value(metadata i32 8, metadata !338, metadata !DIExpression()), !dbg !343
  ret void, !dbg !364
}

declare void @predict_8x8c_v_mmx(ptr noundef) #3

declare void @predict_8x8c_h_mmxext(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @predict_8x8c_p_mmxext(ptr noundef %0) #0 !dbg !365 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !367, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i32 0, metadata !372, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i32 1, metadata !371, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i64 1, metadata !371, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i32 0, metadata !372, metadata !DIExpression()), !dbg !375
  %2 = getelementptr inbounds i8, ptr %0, i64 -28, !dbg !376
  %3 = load i8, ptr %2, align 1, !dbg !376, !tbaa !109
  %4 = zext i8 %3 to i32, !dbg !376
  %5 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !380
  %6 = load i8, ptr %5, align 1, !dbg !380, !tbaa !109
  %7 = zext i8 %6 to i32, !dbg !380
  %8 = sub nsw i32 %4, %7, !dbg !381
  call void @llvm.dbg.value(metadata i32 %8, metadata !372, metadata !DIExpression()), !dbg !375
  %9 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !382
  %10 = load i8, ptr %9, align 1, !dbg !382, !tbaa !109
  %11 = zext i8 %10 to i32, !dbg !382
  %12 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !383
  %13 = load i8, ptr %12, align 1, !dbg !383, !tbaa !109
  %14 = zext i8 %13 to i32, !dbg !383
  %15 = sub nsw i32 %11, %14, !dbg !384
  call void @llvm.dbg.value(metadata i32 %15, metadata !373, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i64 2, metadata !371, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i64 2, metadata !371, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i32 %15, metadata !373, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i32 %8, metadata !372, metadata !DIExpression()), !dbg !375
  %16 = getelementptr inbounds i8, ptr %0, i64 -27, !dbg !376
  %17 = load i8, ptr %16, align 1, !dbg !376, !tbaa !109
  %18 = zext i8 %17 to i32, !dbg !376
  %19 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !380
  %20 = load i8, ptr %19, align 1, !dbg !380, !tbaa !109
  %21 = zext i8 %20 to i32, !dbg !380
  %22 = sub nsw i32 %18, %21, !dbg !381
  %23 = shl nsw i32 %22, 1, !dbg !385
  %24 = add nsw i32 %23, %8, !dbg !386
  call void @llvm.dbg.value(metadata i32 %24, metadata !372, metadata !DIExpression()), !dbg !375
  %25 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !382
  %26 = load i8, ptr %25, align 1, !dbg !382, !tbaa !109
  %27 = zext i8 %26 to i32, !dbg !382
  %28 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !383
  %29 = load i8, ptr %28, align 1, !dbg !383, !tbaa !109
  %30 = zext i8 %29 to i32, !dbg !383
  %31 = sub nsw i32 %27, %30, !dbg !384
  %32 = shl nsw i32 %31, 1, !dbg !387
  %33 = add nsw i32 %32, %15, !dbg !388
  call void @llvm.dbg.value(metadata i32 %33, metadata !373, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i64 3, metadata !371, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i64 3, metadata !371, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i32 %33, metadata !373, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i32 %24, metadata !372, metadata !DIExpression()), !dbg !375
  %34 = getelementptr inbounds i8, ptr %0, i64 -26, !dbg !376
  %35 = load i8, ptr %34, align 1, !dbg !376, !tbaa !109
  %36 = zext i8 %35 to i32, !dbg !376
  %37 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !380
  %38 = load i8, ptr %37, align 1, !dbg !380, !tbaa !109
  %39 = zext i8 %38 to i32, !dbg !380
  %40 = sub nsw i32 %36, %39, !dbg !381
  %41 = mul nsw i32 %40, 3, !dbg !385
  %42 = add nsw i32 %41, %24, !dbg !386
  call void @llvm.dbg.value(metadata i32 %42, metadata !372, metadata !DIExpression()), !dbg !375
  %43 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !382
  %44 = load i8, ptr %43, align 1, !dbg !382, !tbaa !109
  %45 = zext i8 %44 to i32, !dbg !382
  %46 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !383
  %47 = load i8, ptr %46, align 1, !dbg !383, !tbaa !109
  %48 = zext i8 %47 to i32, !dbg !383
  %49 = sub nsw i32 %45, %48, !dbg !384
  %50 = mul nsw i32 %49, 3, !dbg !387
  %51 = add nsw i32 %50, %33, !dbg !388
  call void @llvm.dbg.value(metadata i32 %51, metadata !373, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i64 4, metadata !371, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i64 4, metadata !371, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i32 %51, metadata !373, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i32 %42, metadata !372, metadata !DIExpression()), !dbg !375
  %52 = getelementptr inbounds i8, ptr %0, i64 -25, !dbg !376
  %53 = load i8, ptr %52, align 1, !dbg !376, !tbaa !109
  %54 = zext i8 %53 to i32, !dbg !376
  %55 = getelementptr inbounds i8, ptr %0, i64 -33, !dbg !380
  %56 = load i8, ptr %55, align 1, !dbg !380, !tbaa !109
  %57 = zext i8 %56 to i32, !dbg !380
  %58 = sub nsw i32 %54, %57, !dbg !381
  %59 = shl nsw i32 %58, 2, !dbg !385
  %60 = add nsw i32 %59, %42, !dbg !386
  call void @llvm.dbg.value(metadata i32 %60, metadata !372, metadata !DIExpression()), !dbg !375
  %61 = getelementptr inbounds i8, ptr %0, i64 223, !dbg !382
  %62 = load i8, ptr %61, align 1, !dbg !382, !tbaa !109
  %63 = zext i8 %62 to i32, !dbg !382
  %64 = sub nsw i32 %63, %57, !dbg !384
  %65 = shl nsw i32 %64, 2, !dbg !387
  %66 = add nsw i32 %65, %51, !dbg !388
  call void @llvm.dbg.value(metadata i32 %66, metadata !373, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i64 5, metadata !371, metadata !DIExpression()), !dbg !375
  %67 = add nuw nsw i32 %54, %63, !dbg !389
  %68 = shl nuw nsw i32 %67, 4, !dbg !390
  call void @llvm.dbg.value(metadata i32 %68, metadata !368, metadata !DIExpression()), !dbg !375
  %69 = mul nsw i32 %60, 17, !dbg !391
  %70 = add nsw i32 %69, 16, !dbg !392
  %71 = ashr i32 %70, 5, !dbg !393
  call void @llvm.dbg.value(metadata i32 %71, metadata !369, metadata !DIExpression()), !dbg !375
  %72 = mul nsw i32 %66, 17, !dbg !394
  %73 = add nsw i32 %72, 16, !dbg !395
  %74 = ashr i32 %73, 5, !dbg !396
  call void @llvm.dbg.value(metadata i32 %74, metadata !370, metadata !DIExpression()), !dbg !375
  %75 = add nsw i32 %74, %71
  %76 = mul nsw i32 %75, -3
  %77 = add nsw i32 %76, 16, !dbg !397
  %78 = add nsw i32 %77, %68, !dbg !398
  call void @llvm.dbg.value(metadata i32 %78, metadata !374, metadata !DIExpression()), !dbg !375
  tail call void @predict_8x8c_p_core_mmxext(ptr noundef %0, i32 noundef %78, i32 noundef %71, i32 noundef %74) #8, !dbg !399
  ret void, !dbg !400
}

; Function Attrs: nounwind uwtable
define internal void @predict_8x8c_dc_mmxext(ptr noundef %0) #0 !dbg !401 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !403, metadata !DIExpression()), !dbg !406
  %2 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !407
  %3 = load i8, ptr %2, align 1, !dbg !407, !tbaa !109
  %4 = zext i8 %3 to i32, !dbg !407
  %5 = add nuw nsw i32 %4, 4, !dbg !408
  %6 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !409
  %7 = load i8, ptr %6, align 1, !dbg !409, !tbaa !109
  %8 = zext i8 %7 to i32, !dbg !409
  %9 = add nuw nsw i32 %5, %8, !dbg !410
  %10 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !411
  %11 = load i8, ptr %10, align 1, !dbg !411, !tbaa !109
  %12 = zext i8 %11 to i32, !dbg !411
  %13 = add nuw nsw i32 %9, %12, !dbg !412
  %14 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !413
  %15 = load i8, ptr %14, align 1, !dbg !413, !tbaa !109
  %16 = zext i8 %15 to i32, !dbg !413
  %17 = add nuw nsw i32 %13, %16, !dbg !414
  call void @llvm.dbg.value(metadata i32 %17, metadata !404, metadata !DIExpression()), !dbg !406
  %18 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !415
  %19 = load i8, ptr %18, align 1, !dbg !415, !tbaa !109
  %20 = zext i8 %19 to i32, !dbg !415
  %21 = add nuw nsw i32 %20, 2, !dbg !416
  %22 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !417
  %23 = load i8, ptr %22, align 1, !dbg !417, !tbaa !109
  %24 = zext i8 %23 to i32, !dbg !417
  %25 = add nuw nsw i32 %21, %24, !dbg !418
  %26 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !419
  %27 = load i8, ptr %26, align 1, !dbg !419, !tbaa !109
  %28 = zext i8 %27 to i32, !dbg !419
  %29 = add nuw nsw i32 %25, %28, !dbg !420
  %30 = getelementptr inbounds i8, ptr %0, i64 223, !dbg !421
  %31 = load i8, ptr %30, align 1, !dbg !421, !tbaa !109
  %32 = zext i8 %31 to i32, !dbg !421
  %33 = add nuw nsw i32 %29, %32, !dbg !422
  call void @llvm.dbg.value(metadata i32 %33, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @predict_8x8c_dc_core_mmxext(ptr noundef %0, i32 noundef %17, i32 noundef %33) #8, !dbg !423
  ret void, !dbg !424
}

declare void @predict_8x8c_h_ssse3(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_8x8_init_mmx(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !425 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !434, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata ptr %1, metadata !435, metadata !DIExpression()), !dbg !436
  %3 = and i32 %0, 16, !dbg !437
  %4 = icmp eq i32 %3, 0, !dbg !437
  br i1 %4, label %17, label %5, !dbg !439

5:                                                ; preds = %2
  store ptr @predict_8x8_v_mmxext, ptr %1, align 8, !dbg !440, !tbaa !165
  %6 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !441
  store ptr @predict_8x8_h_mmxext, ptr %6, align 8, !dbg !442, !tbaa !165
  %7 = getelementptr inbounds ptr, ptr %1, i64 2, !dbg !443
  store ptr @predict_8x8_dc_mmxext, ptr %7, align 8, !dbg !444, !tbaa !165
  %8 = getelementptr inbounds ptr, ptr %1, i64 10, !dbg !445
  store ptr @predict_8x8_dc_top_mmxext, ptr %8, align 8, !dbg !446, !tbaa !165
  %9 = getelementptr inbounds ptr, ptr %1, i64 9, !dbg !447
  store ptr @predict_8x8_dc_left_mmxext, ptr %9, align 8, !dbg !448, !tbaa !165
  %10 = getelementptr inbounds ptr, ptr %1, i64 5, !dbg !449
  store ptr @predict_8x8_vr_mmxext, ptr %10, align 8, !dbg !450, !tbaa !165
  %11 = and i32 %0, 64, !dbg !451
  %12 = icmp eq i32 %11, 0, !dbg !451
  br i1 %12, label %17, label %13, !dbg !453

13:                                               ; preds = %5
  %14 = getelementptr inbounds ptr, ptr %1, i64 3, !dbg !454
  store ptr @predict_8x8_ddl_sse2, ptr %14, align 8, !dbg !455, !tbaa !165
  %15 = getelementptr inbounds ptr, ptr %1, i64 7, !dbg !456
  store ptr @predict_8x8_vl_sse2, ptr %15, align 8, !dbg !457, !tbaa !165
  %16 = getelementptr inbounds ptr, ptr %1, i64 4, !dbg !458
  store ptr @predict_8x8_ddr_sse2, ptr %16, align 8, !dbg !459, !tbaa !165
  br label %17, !dbg !460

17:                                               ; preds = %5, %2, %13
  ret void, !dbg !460
}

declare void @predict_8x8_v_mmxext(ptr noundef, ptr noundef) #3

declare void @predict_8x8_h_mmxext(ptr noundef, ptr noundef) #3

declare void @predict_8x8_dc_mmxext(ptr noundef, ptr noundef) #3

declare void @predict_8x8_dc_top_mmxext(ptr noundef, ptr noundef) #3

declare void @predict_8x8_dc_left_mmxext(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @predict_8x8_vr_mmxext(ptr noundef %0, ptr noundef %1) #0 !dbg !461 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !463, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata ptr %1, metadata !464, metadata !DIExpression()), !dbg !475
  tail call void @predict_8x8_vr_core_mmxext(ptr noundef %0, ptr noundef %1) #8, !dbg !476
  %3 = getelementptr inbounds i8, ptr %1, i64 15, !dbg !477
  %4 = load i8, ptr %3, align 1, !dbg !477, !tbaa !109
  %5 = zext i8 %4 to i32, !dbg !477
  call void @llvm.dbg.value(metadata i32 %5, metadata !465, metadata !DIExpression()), !dbg !478
  %6 = getelementptr inbounds i8, ptr %1, i64 14, !dbg !479
  %7 = load i8, ptr %6, align 1, !dbg !479, !tbaa !109
  %8 = zext i8 %7 to i32, !dbg !479
  call void @llvm.dbg.value(metadata i32 %8, metadata !467, metadata !DIExpression()), !dbg !478
  %9 = getelementptr inbounds i8, ptr %1, i64 13, !dbg !479
  %10 = load i8, ptr %9, align 1, !dbg !479, !tbaa !109
  %11 = zext i8 %10 to i32, !dbg !479
  call void @llvm.dbg.value(metadata i32 %11, metadata !468, metadata !DIExpression()), !dbg !478
  %12 = getelementptr inbounds i8, ptr %1, i64 12, !dbg !479
  %13 = load i8, ptr %12, align 1, !dbg !479, !tbaa !109
  %14 = zext i8 %13 to i32, !dbg !479
  call void @llvm.dbg.value(metadata i32 %14, metadata !469, metadata !DIExpression()), !dbg !478
  %15 = getelementptr inbounds i8, ptr %1, i64 11, !dbg !479
  %16 = load i8, ptr %15, align 1, !dbg !479, !tbaa !109
  %17 = zext i8 %16 to i32, !dbg !479
  call void @llvm.dbg.value(metadata i32 %17, metadata !470, metadata !DIExpression()), !dbg !478
  %18 = getelementptr inbounds i8, ptr %1, i64 10, !dbg !479
  %19 = load i8, ptr %18, align 1, !dbg !479, !tbaa !109
  %20 = zext i8 %19 to i32, !dbg !479
  call void @llvm.dbg.value(metadata i32 %20, metadata !471, metadata !DIExpression()), !dbg !478
  %21 = getelementptr inbounds i8, ptr %1, i64 9, !dbg !479
  %22 = load i8, ptr %21, align 1, !dbg !479, !tbaa !109
  %23 = zext i8 %22 to i32, !dbg !479
  call void @llvm.dbg.value(metadata i32 %23, metadata !472, metadata !DIExpression()), !dbg !478
  %24 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !479
  %25 = load i8, ptr %24, align 1, !dbg !479, !tbaa !109
  %26 = zext i8 %25 to i32, !dbg !479
  call void @llvm.dbg.value(metadata i32 %26, metadata !473, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i8 poison, metadata !474, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !478
  %27 = shl nuw nsw i32 %8, 1, !dbg !480
  %28 = add nuw nsw i32 %11, 2, !dbg !481
  %29 = add nuw nsw i32 %28, %5, !dbg !482
  %30 = add nuw nsw i32 %29, %27, !dbg !483
  %31 = lshr i32 %30, 2
  %32 = trunc i32 %31 to i8, !dbg !484
  %33 = getelementptr inbounds i8, ptr %0, i64 194, !dbg !485
  store i8 %32, ptr %33, align 1, !dbg !486, !tbaa !109
  %34 = getelementptr inbounds i8, ptr %0, i64 129, !dbg !487
  store i8 %32, ptr %34, align 1, !dbg !488, !tbaa !109
  %35 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !489
  store i8 %32, ptr %35, align 1, !dbg !490, !tbaa !109
  %36 = shl nuw nsw i32 %11, 1, !dbg !491
  %37 = add nuw nsw i32 %14, 2, !dbg !492
  %38 = add nuw nsw i32 %37, %8, !dbg !493
  %39 = add nuw nsw i32 %38, %36, !dbg !494
  %40 = lshr i32 %39, 2
  %41 = trunc i32 %40 to i8, !dbg !495
  %42 = getelementptr inbounds i8, ptr %0, i64 226, !dbg !496
  store i8 %41, ptr %42, align 1, !dbg !497, !tbaa !109
  %43 = getelementptr inbounds i8, ptr %0, i64 161, !dbg !498
  store i8 %41, ptr %43, align 1, !dbg !499, !tbaa !109
  %44 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !500
  store i8 %41, ptr %44, align 1, !dbg !501, !tbaa !109
  %45 = shl nuw nsw i32 %14, 1, !dbg !502
  %46 = add nuw nsw i32 %28, %17, !dbg !503
  %47 = add nuw nsw i32 %46, %45, !dbg !504
  %48 = lshr i32 %47, 2
  %49 = trunc i32 %48 to i8, !dbg !505
  %50 = getelementptr inbounds i8, ptr %0, i64 193, !dbg !506
  store i8 %49, ptr %50, align 1, !dbg !507, !tbaa !109
  %51 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !508
  store i8 %49, ptr %51, align 1, !dbg !509, !tbaa !109
  %52 = shl nuw nsw i32 %17, 1, !dbg !510
  %53 = add nuw nsw i32 %37, %20, !dbg !511
  %54 = add nuw nsw i32 %53, %52, !dbg !512
  %55 = lshr i32 %54, 2
  %56 = trunc i32 %55 to i8, !dbg !513
  %57 = getelementptr inbounds i8, ptr %0, i64 225, !dbg !514
  store i8 %56, ptr %57, align 1, !dbg !515, !tbaa !109
  %58 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !516
  store i8 %56, ptr %58, align 1, !dbg !517, !tbaa !109
  %59 = shl nuw nsw i32 %20, 1, !dbg !518
  %60 = add nuw nsw i32 %17, 2, !dbg !519
  %61 = add nuw nsw i32 %60, %23, !dbg !520
  %62 = add nuw nsw i32 %61, %59, !dbg !521
  %63 = lshr i32 %62, 2
  %64 = trunc i32 %63 to i8, !dbg !522
  %65 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !523
  store i8 %64, ptr %65, align 1, !dbg !524, !tbaa !109
  %66 = shl nuw nsw i32 %23, 1, !dbg !525
  %67 = add nuw nsw i32 %20, 2, !dbg !526
  %68 = add nuw nsw i32 %67, %26, !dbg !527
  %69 = add nuw nsw i32 %68, %66, !dbg !528
  %70 = lshr i32 %69, 2
  %71 = trunc i32 %70 to i8, !dbg !529
  %72 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !530
  store i8 %71, ptr %72, align 1, !dbg !531, !tbaa !109
  ret void, !dbg !532
}

declare void @predict_8x8_ddl_sse2(ptr noundef, ptr noundef) #3

declare void @predict_8x8_vl_sse2(ptr noundef, ptr noundef) #3

declare void @predict_8x8_ddr_sse2(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_4x4_init_mmx(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !533 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !535, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata ptr %1, metadata !536, metadata !DIExpression()), !dbg !537
  %3 = and i32 %0, 8, !dbg !538
  %4 = icmp eq i32 %3, 0, !dbg !538
  br i1 %4, label %16, label %5, !dbg !540

5:                                                ; preds = %2
  %6 = getelementptr inbounds ptr, ptr %1, i64 4, !dbg !541
  store ptr @predict_4x4_ddr, ptr %6, align 8, !dbg !542, !tbaa !165
  %7 = getelementptr inbounds ptr, ptr %1, i64 5, !dbg !543
  store ptr @predict_4x4_vr, ptr %7, align 8, !dbg !544, !tbaa !165
  %8 = getelementptr inbounds ptr, ptr %1, i64 6, !dbg !545
  store ptr @predict_4x4_hd, ptr %8, align 8, !dbg !546, !tbaa !165
  %9 = getelementptr inbounds ptr, ptr %1, i64 8, !dbg !547
  store ptr @predict_4x4_hu, ptr %9, align 8, !dbg !548, !tbaa !165
  %10 = and i32 %0, 16, !dbg !549
  %11 = icmp eq i32 %10, 0, !dbg !549
  br i1 %11, label %16, label %12, !dbg !551

12:                                               ; preds = %5
  %13 = getelementptr inbounds ptr, ptr %1, i64 3, !dbg !552
  store ptr @predict_4x4_ddl_mmxext, ptr %13, align 8, !dbg !553, !tbaa !165
  %14 = getelementptr inbounds ptr, ptr %1, i64 7, !dbg !554
  store ptr @predict_4x4_vl_mmxext, ptr %14, align 8, !dbg !555, !tbaa !165
  %15 = getelementptr inbounds ptr, ptr %1, i64 2, !dbg !556
  store ptr @predict_4x4_dc_mmxext, ptr %15, align 8, !dbg !557, !tbaa !165
  br label %16, !dbg !558

16:                                               ; preds = %5, %2, %12
  ret void, !dbg !558
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_ddr(ptr nocapture noundef %0) #6 !dbg !559 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !561, metadata !DIExpression()), !dbg !573
  %2 = getelementptr inbounds i8, ptr %0, i64 -33, !dbg !574
  %3 = load i8, ptr %2, align 1, !dbg !574, !tbaa !109
  %4 = zext i8 %3 to i32, !dbg !574
  call void @llvm.dbg.value(metadata i32 %4, metadata !562, metadata !DIExpression()), !dbg !573
  %5 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !575
  %6 = load i8, ptr %5, align 1, !dbg !575, !tbaa !109
  %7 = zext i8 %6 to i32, !dbg !575
  call void @llvm.dbg.value(metadata i32 %7, metadata !564, metadata !DIExpression()), !dbg !573
  %8 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !575
  %9 = load i8, ptr %8, align 1, !dbg !575, !tbaa !109
  %10 = zext i8 %9 to i32, !dbg !575
  call void @llvm.dbg.value(metadata i32 %10, metadata !565, metadata !DIExpression()), !dbg !573
  %11 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !575
  %12 = load i8, ptr %11, align 1, !dbg !575, !tbaa !109
  %13 = zext i8 %12 to i32, !dbg !575
  call void @llvm.dbg.value(metadata i32 %13, metadata !566, metadata !DIExpression()), !dbg !573
  %14 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !575
  %15 = load i8, ptr %14, align 1, !dbg !575, !tbaa !109
  %16 = zext i8 %15 to i32, !dbg !575
  call void @llvm.dbg.value(metadata i32 %16, metadata !567, metadata !DIExpression()), !dbg !573
  %17 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !576
  %18 = load i8, ptr %17, align 1, !dbg !576, !tbaa !109
  %19 = zext i8 %18 to i32, !dbg !576
  call void @llvm.dbg.value(metadata i32 %19, metadata !568, metadata !DIExpression()), !dbg !573
  %20 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !576
  %21 = load i8, ptr %20, align 1, !dbg !576, !tbaa !109
  %22 = zext i8 %21 to i32, !dbg !576
  call void @llvm.dbg.value(metadata i32 %22, metadata !569, metadata !DIExpression()), !dbg !573
  %23 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !576
  %24 = load i8, ptr %23, align 1, !dbg !576, !tbaa !109
  %25 = zext i8 %24 to i32, !dbg !576
  call void @llvm.dbg.value(metadata i32 %25, metadata !570, metadata !DIExpression()), !dbg !573
  %26 = getelementptr inbounds i8, ptr %0, i64 -29, !dbg !576
  %27 = load i8, ptr %26, align 1, !dbg !576, !tbaa !109
  %28 = zext i8 %27 to i32, !dbg !576
  call void @llvm.dbg.value(metadata i32 %28, metadata !571, metadata !DIExpression()), !dbg !573
  %29 = shl nuw nsw i32 %4, 1, !dbg !577
  %30 = add nuw nsw i32 %7, 2, !dbg !577
  %31 = add nuw nsw i32 %30, %29, !dbg !577
  %32 = add nuw nsw i32 %31, %19, !dbg !577
  %33 = lshr i32 %32, 2
  %34 = shl nuw nsw i32 %19, 1, !dbg !578
  %35 = add nuw nsw i32 %34, %4, !dbg !578
  %36 = add nuw nsw i32 %35, %22, !dbg !578
  %37 = shl nuw nsw i32 %36, 6, !dbg !579
  %38 = add nuw nsw i32 %37, 128, !dbg !579
  %39 = and i32 %38, -256, !dbg !579
  %40 = add nuw nsw i32 %39, %33, !dbg !580
  %41 = shl nuw nsw i32 %22, 1, !dbg !581
  %42 = add nuw nsw i32 %41, %19, !dbg !581
  %43 = add nuw nsw i32 %42, %25, !dbg !581
  %44 = shl nuw nsw i32 %43, 14, !dbg !582
  %45 = add nuw nsw i32 %44, 32768, !dbg !582
  %46 = and i32 %45, -65536, !dbg !582
  %47 = add nuw nsw i32 %40, %46, !dbg !583
  %48 = shl nuw nsw i32 %25, 1, !dbg !584
  %49 = add nuw nsw i32 %48, %22, !dbg !584
  %50 = add nuw nsw i32 %49, %28, !dbg !584
  %51 = shl nuw i32 %50, 22, !dbg !585
  %52 = add nuw i32 %51, 8388608, !dbg !585
  %53 = and i32 %52, -16777216, !dbg !585
  %54 = add nuw nsw i32 %47, %53, !dbg !586
  call void @llvm.dbg.value(metadata !DIArgList(i32 %47, i32 %53), metadata !572, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !573
  store i32 %54, ptr %0, align 4, !dbg !587, !tbaa !588
  %55 = shl nuw i32 %47, 8, !dbg !590
  %56 = shl nuw nsw i32 %7, 1, !dbg !591
  %57 = add nuw nsw i32 %10, 2, !dbg !591
  %58 = add nuw nsw i32 %57, %4, !dbg !591
  %59 = add nuw nsw i32 %58, %56, !dbg !591
  %60 = lshr i32 %59, 2
  %61 = add nuw i32 %55, %60, !dbg !592
  call void @llvm.dbg.value(metadata i32 %61, metadata !572, metadata !DIExpression()), !dbg !573
  %62 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !593
  store i32 %61, ptr %62, align 4, !dbg !594, !tbaa !588
  %63 = shl i32 %61, 8, !dbg !595
  %64 = shl nuw nsw i32 %10, 1, !dbg !596
  %65 = add nuw nsw i32 %30, %13, !dbg !596
  %66 = add nuw nsw i32 %65, %64, !dbg !596
  %67 = lshr i32 %66, 2
  %68 = add nuw i32 %63, %67, !dbg !597
  call void @llvm.dbg.value(metadata i32 %68, metadata !572, metadata !DIExpression()), !dbg !573
  %69 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !598
  store i32 %68, ptr %69, align 4, !dbg !599, !tbaa !588
  %70 = shl i32 %68, 8, !dbg !600
  %71 = shl nuw nsw i32 %13, 1, !dbg !601
  %72 = add nuw nsw i32 %57, %16, !dbg !601
  %73 = add nuw nsw i32 %72, %71, !dbg !601
  %74 = lshr i32 %73, 2
  %75 = add nuw i32 %70, %74, !dbg !602
  call void @llvm.dbg.value(metadata i32 %75, metadata !572, metadata !DIExpression()), !dbg !573
  %76 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !603
  store i32 %75, ptr %76, align 4, !dbg !604, !tbaa !588
  ret void, !dbg !605
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_vr(ptr nocapture noundef %0) #6 !dbg !606 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !608, metadata !DIExpression()), !dbg !625
  %2 = getelementptr inbounds i8, ptr %0, i64 -33, !dbg !626
  %3 = load i8, ptr %2, align 1, !dbg !626, !tbaa !109
  %4 = zext i8 %3 to i32, !dbg !626
  call void @llvm.dbg.value(metadata i32 %4, metadata !609, metadata !DIExpression()), !dbg !625
  %5 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !627
  %6 = load i8, ptr %5, align 1, !dbg !627, !tbaa !109
  %7 = zext i8 %6 to i32, !dbg !627
  call void @llvm.dbg.value(metadata i32 %7, metadata !610, metadata !DIExpression()), !dbg !625
  %8 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !627
  %9 = load i8, ptr %8, align 1, !dbg !627, !tbaa !109
  %10 = zext i8 %9 to i32, !dbg !627
  call void @llvm.dbg.value(metadata i32 %10, metadata !611, metadata !DIExpression()), !dbg !625
  %11 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !627
  %12 = load i8, ptr %11, align 1, !dbg !627, !tbaa !109
  %13 = zext i8 %12 to i32, !dbg !627
  call void @llvm.dbg.value(metadata i32 %13, metadata !612, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i8 poison, metadata !613, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !625
  %14 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !628
  %15 = load i8, ptr %14, align 1, !dbg !628, !tbaa !109
  %16 = zext i8 %15 to i32, !dbg !628
  call void @llvm.dbg.value(metadata i32 %16, metadata !614, metadata !DIExpression()), !dbg !625
  %17 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !628
  %18 = load i8, ptr %17, align 1, !dbg !628, !tbaa !109
  %19 = zext i8 %18 to i32, !dbg !628
  call void @llvm.dbg.value(metadata i32 %19, metadata !615, metadata !DIExpression()), !dbg !625
  %20 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !628
  %21 = load i8, ptr %20, align 1, !dbg !628, !tbaa !109
  %22 = zext i8 %21 to i32, !dbg !628
  call void @llvm.dbg.value(metadata i32 %22, metadata !616, metadata !DIExpression()), !dbg !625
  %23 = getelementptr inbounds i8, ptr %0, i64 -29, !dbg !628
  %24 = load i8, ptr %23, align 1, !dbg !628, !tbaa !109
  %25 = zext i8 %24 to i32, !dbg !628
  call void @llvm.dbg.value(metadata i32 %25, metadata !617, metadata !DIExpression()), !dbg !625
  %26 = add nuw nsw i32 %4, 1, !dbg !629
  %27 = add nuw nsw i32 %26, %16, !dbg !630
  call void @llvm.dbg.value(metadata i32 %27, metadata !618, metadata !DIExpression()), !dbg !625
  %28 = add nuw nsw i32 %16, 1, !dbg !631
  %29 = add nuw nsw i32 %28, %19, !dbg !632
  call void @llvm.dbg.value(metadata i32 %29, metadata !619, metadata !DIExpression()), !dbg !625
  %30 = add nuw nsw i32 %19, 1, !dbg !633
  %31 = add nuw nsw i32 %30, %22, !dbg !634
  call void @llvm.dbg.value(metadata i32 %31, metadata !620, metadata !DIExpression()), !dbg !625
  %32 = add nuw nsw i32 %22, 1, !dbg !635
  %33 = add nuw nsw i32 %32, %25, !dbg !636
  call void @llvm.dbg.value(metadata i32 %33, metadata !621, metadata !DIExpression()), !dbg !625
  %34 = add nuw nsw i32 %26, %7, !dbg !637
  call void @llvm.dbg.value(metadata i32 %34, metadata !622, metadata !DIExpression()), !dbg !625
  %35 = add nuw nsw i32 %7, 1, !dbg !638
  %36 = add nuw nsw i32 %35, %10, !dbg !639
  call void @llvm.dbg.value(metadata i32 %36, metadata !623, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i32 poison, metadata !624, metadata !DIExpression()), !dbg !625
  %37 = lshr i32 %27, 1
  %38 = trunc i32 %37 to i8, !dbg !640
  %39 = getelementptr inbounds i8, ptr %0, i64 65, !dbg !641
  store i8 %38, ptr %39, align 1, !dbg !642, !tbaa !109
  store i8 %38, ptr %0, align 1, !dbg !643, !tbaa !109
  %40 = lshr i32 %29, 1
  %41 = trunc i32 %40 to i8, !dbg !644
  %42 = getelementptr inbounds i8, ptr %0, i64 66, !dbg !645
  store i8 %41, ptr %42, align 1, !dbg !646, !tbaa !109
  %43 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !647
  store i8 %41, ptr %43, align 1, !dbg !648, !tbaa !109
  %44 = lshr i32 %31, 1
  %45 = trunc i32 %44 to i8, !dbg !649
  %46 = getelementptr inbounds i8, ptr %0, i64 67, !dbg !650
  store i8 %45, ptr %46, align 1, !dbg !651, !tbaa !109
  %47 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !652
  store i8 %45, ptr %47, align 1, !dbg !653, !tbaa !109
  %48 = lshr i32 %33, 1
  %49 = trunc i32 %48 to i8, !dbg !654
  %50 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !655
  store i8 %49, ptr %50, align 1, !dbg !656, !tbaa !109
  %51 = add nuw nsw i32 %27, %34, !dbg !657
  %52 = lshr i32 %51, 2
  %53 = trunc i32 %52 to i8, !dbg !658
  %54 = getelementptr inbounds i8, ptr %0, i64 97, !dbg !659
  store i8 %53, ptr %54, align 1, !dbg !660, !tbaa !109
  %55 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !661
  store i8 %53, ptr %55, align 1, !dbg !662, !tbaa !109
  %56 = add nuw nsw i32 %29, %27, !dbg !663
  %57 = lshr i32 %56, 2
  %58 = trunc i32 %57 to i8, !dbg !664
  %59 = getelementptr inbounds i8, ptr %0, i64 98, !dbg !665
  store i8 %58, ptr %59, align 1, !dbg !666, !tbaa !109
  %60 = getelementptr inbounds i8, ptr %0, i64 33, !dbg !667
  store i8 %58, ptr %60, align 1, !dbg !668, !tbaa !109
  %61 = add nuw nsw i32 %31, %29, !dbg !669
  %62 = lshr i32 %61, 2
  %63 = trunc i32 %62 to i8, !dbg !670
  %64 = getelementptr inbounds i8, ptr %0, i64 99, !dbg !671
  store i8 %63, ptr %64, align 1, !dbg !672, !tbaa !109
  %65 = getelementptr inbounds i8, ptr %0, i64 34, !dbg !673
  store i8 %63, ptr %65, align 1, !dbg !674, !tbaa !109
  %66 = add nuw nsw i32 %33, %31, !dbg !675
  %67 = lshr i32 %66, 2
  %68 = trunc i32 %67 to i8, !dbg !676
  %69 = getelementptr inbounds i8, ptr %0, i64 35, !dbg !677
  store i8 %68, ptr %69, align 1, !dbg !678, !tbaa !109
  %70 = add nuw nsw i32 %36, %34, !dbg !679
  %71 = lshr i32 %70, 2
  %72 = trunc i32 %71 to i8, !dbg !680
  %73 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !681
  store i8 %72, ptr %73, align 1, !dbg !682, !tbaa !109
  %74 = add nuw nsw i32 %10, 1, !dbg !683
  %75 = add nuw nsw i32 %74, %13, !dbg !684
  %76 = add nuw nsw i32 %75, %36, !dbg !685
  %77 = lshr i32 %76, 2
  %78 = trunc i32 %77 to i8, !dbg !686
  %79 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !687
  store i8 %78, ptr %79, align 1, !dbg !688, !tbaa !109
  ret void, !dbg !689
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_hd(ptr nocapture noundef %0) #6 !dbg !690 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !692, metadata !DIExpression()), !dbg !709
  %2 = getelementptr inbounds i8, ptr %0, i64 -33, !dbg !710
  %3 = load i8, ptr %2, align 1, !dbg !710, !tbaa !109
  %4 = zext i8 %3 to i32, !dbg !710
  call void @llvm.dbg.value(metadata i32 %4, metadata !693, metadata !DIExpression()), !dbg !709
  %5 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !711
  %6 = load i8, ptr %5, align 1, !dbg !711, !tbaa !109
  %7 = zext i8 %6 to i32, !dbg !711
  call void @llvm.dbg.value(metadata i32 %7, metadata !694, metadata !DIExpression()), !dbg !709
  %8 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !711
  %9 = load i8, ptr %8, align 1, !dbg !711, !tbaa !109
  %10 = zext i8 %9 to i32, !dbg !711
  call void @llvm.dbg.value(metadata i32 %10, metadata !695, metadata !DIExpression()), !dbg !709
  %11 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !711
  %12 = load i8, ptr %11, align 1, !dbg !711, !tbaa !109
  %13 = zext i8 %12 to i32, !dbg !711
  call void @llvm.dbg.value(metadata i32 %13, metadata !696, metadata !DIExpression()), !dbg !709
  %14 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !711
  %15 = load i8, ptr %14, align 1, !dbg !711, !tbaa !109
  %16 = zext i8 %15 to i32, !dbg !711
  call void @llvm.dbg.value(metadata i32 %16, metadata !697, metadata !DIExpression()), !dbg !709
  %17 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !712
  %18 = load i8, ptr %17, align 1, !dbg !712, !tbaa !109
  %19 = zext i8 %18 to i32, !dbg !712
  call void @llvm.dbg.value(metadata i32 %19, metadata !698, metadata !DIExpression()), !dbg !709
  %20 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !712
  %21 = load i8, ptr %20, align 1, !dbg !712, !tbaa !109
  %22 = zext i8 %21 to i32, !dbg !712
  call void @llvm.dbg.value(metadata i32 %22, metadata !699, metadata !DIExpression()), !dbg !709
  %23 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !712
  %24 = load i8, ptr %23, align 1, !dbg !712, !tbaa !109
  %25 = zext i8 %24 to i32, !dbg !712
  call void @llvm.dbg.value(metadata i32 %25, metadata !700, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i8 poison, metadata !701, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !709
  %26 = add nuw nsw i32 %4, 1, !dbg !713
  %27 = add nuw nsw i32 %26, %19, !dbg !714
  call void @llvm.dbg.value(metadata i32 %27, metadata !702, metadata !DIExpression()), !dbg !709
  %28 = add nuw nsw i32 %19, 1, !dbg !715
  %29 = add nuw nsw i32 %28, %22, !dbg !716
  call void @llvm.dbg.value(metadata i32 %29, metadata !703, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i32 poison, metadata !704, metadata !DIExpression()), !dbg !709
  %30 = add nuw nsw i32 %26, %7, !dbg !717
  call void @llvm.dbg.value(metadata i32 %30, metadata !705, metadata !DIExpression()), !dbg !709
  %31 = add nuw nsw i32 %7, 1, !dbg !718
  %32 = add nuw nsw i32 %31, %10, !dbg !719
  call void @llvm.dbg.value(metadata i32 %32, metadata !706, metadata !DIExpression()), !dbg !709
  %33 = add nuw nsw i32 %10, 1, !dbg !720
  %34 = add nuw nsw i32 %33, %13, !dbg !721
  call void @llvm.dbg.value(metadata i32 %34, metadata !707, metadata !DIExpression()), !dbg !709
  %35 = add nuw nsw i32 %13, 1, !dbg !722
  %36 = add nuw nsw i32 %35, %16, !dbg !723
  call void @llvm.dbg.value(metadata i32 %36, metadata !708, metadata !DIExpression()), !dbg !709
  %37 = lshr i32 %30, 1
  %38 = trunc i32 %37 to i8, !dbg !724
  %39 = getelementptr inbounds i8, ptr %0, i64 34, !dbg !725
  store i8 %38, ptr %39, align 1, !dbg !726, !tbaa !109
  store i8 %38, ptr %0, align 1, !dbg !727, !tbaa !109
  %40 = add nuw nsw i32 %27, %30, !dbg !728
  %41 = lshr i32 %40, 2
  %42 = trunc i32 %41 to i8, !dbg !729
  %43 = getelementptr inbounds i8, ptr %0, i64 35, !dbg !730
  store i8 %42, ptr %43, align 1, !dbg !731, !tbaa !109
  %44 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !732
  store i8 %42, ptr %44, align 1, !dbg !733, !tbaa !109
  %45 = add nuw nsw i32 %29, %27, !dbg !734
  %46 = lshr i32 %45, 2
  %47 = trunc i32 %46 to i8, !dbg !735
  %48 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !736
  store i8 %47, ptr %48, align 1, !dbg !737, !tbaa !109
  %49 = add nuw nsw i32 %22, 1, !dbg !738
  %50 = add nuw nsw i32 %49, %25, !dbg !739
  %51 = add nuw nsw i32 %50, %29, !dbg !740
  %52 = lshr i32 %51, 2
  %53 = trunc i32 %52 to i8, !dbg !741
  %54 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !742
  store i8 %53, ptr %54, align 1, !dbg !743, !tbaa !109
  %55 = lshr i32 %32, 1
  %56 = trunc i32 %55 to i8, !dbg !744
  %57 = getelementptr inbounds i8, ptr %0, i64 66, !dbg !745
  store i8 %56, ptr %57, align 1, !dbg !746, !tbaa !109
  %58 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !747
  store i8 %56, ptr %58, align 1, !dbg !748, !tbaa !109
  %59 = add nuw nsw i32 %32, %30, !dbg !749
  %60 = lshr i32 %59, 2
  %61 = trunc i32 %60 to i8, !dbg !750
  %62 = getelementptr inbounds i8, ptr %0, i64 67, !dbg !751
  store i8 %61, ptr %62, align 1, !dbg !752, !tbaa !109
  %63 = getelementptr inbounds i8, ptr %0, i64 33, !dbg !753
  store i8 %61, ptr %63, align 1, !dbg !754, !tbaa !109
  %64 = lshr i32 %34, 1
  %65 = trunc i32 %64 to i8, !dbg !755
  %66 = getelementptr inbounds i8, ptr %0, i64 98, !dbg !756
  store i8 %65, ptr %66, align 1, !dbg !757, !tbaa !109
  %67 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !758
  store i8 %65, ptr %67, align 1, !dbg !759, !tbaa !109
  %68 = add nuw nsw i32 %34, %32, !dbg !760
  %69 = lshr i32 %68, 2
  %70 = trunc i32 %69 to i8, !dbg !761
  %71 = getelementptr inbounds i8, ptr %0, i64 99, !dbg !762
  store i8 %70, ptr %71, align 1, !dbg !763, !tbaa !109
  %72 = getelementptr inbounds i8, ptr %0, i64 65, !dbg !764
  store i8 %70, ptr %72, align 1, !dbg !765, !tbaa !109
  %73 = lshr i32 %36, 1
  %74 = trunc i32 %73 to i8, !dbg !766
  %75 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !767
  store i8 %74, ptr %75, align 1, !dbg !768, !tbaa !109
  %76 = add nuw nsw i32 %36, %34, !dbg !769
  %77 = lshr i32 %76, 2
  %78 = trunc i32 %77 to i8, !dbg !770
  %79 = getelementptr inbounds i8, ptr %0, i64 97, !dbg !771
  store i8 %78, ptr %79, align 1, !dbg !772, !tbaa !109
  ret void, !dbg !773
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_hu(ptr nocapture noundef %0) #6 !dbg !774 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !776, metadata !DIExpression()), !dbg !784
  %2 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !785
  %3 = load i8, ptr %2, align 1, !dbg !785, !tbaa !109
  %4 = zext i8 %3 to i32, !dbg !785
  call void @llvm.dbg.value(metadata i32 %4, metadata !777, metadata !DIExpression()), !dbg !784
  %5 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !785
  %6 = load i8, ptr %5, align 1, !dbg !785, !tbaa !109
  %7 = zext i8 %6 to i32, !dbg !785
  call void @llvm.dbg.value(metadata i32 %7, metadata !778, metadata !DIExpression()), !dbg !784
  %8 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !785
  %9 = load i8, ptr %8, align 1, !dbg !785, !tbaa !109
  %10 = zext i8 %9 to i32, !dbg !785
  call void @llvm.dbg.value(metadata i32 %10, metadata !779, metadata !DIExpression()), !dbg !784
  %11 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !785
  %12 = load i8, ptr %11, align 1, !dbg !785, !tbaa !109
  %13 = zext i8 %12 to i32, !dbg !785
  call void @llvm.dbg.value(metadata i32 %13, metadata !780, metadata !DIExpression()), !dbg !784
  %14 = add nuw nsw i32 %7, 1, !dbg !786
  %15 = add nuw nsw i32 %14, %4, !dbg !787
  call void @llvm.dbg.value(metadata i32 %15, metadata !781, metadata !DIExpression()), !dbg !784
  %16 = add nuw nsw i32 %14, %10, !dbg !788
  call void @llvm.dbg.value(metadata i32 %16, metadata !782, metadata !DIExpression()), !dbg !784
  %17 = add nuw nsw i32 %10, 1, !dbg !789
  %18 = add nuw nsw i32 %17, %13, !dbg !790
  call void @llvm.dbg.value(metadata i32 %18, metadata !783, metadata !DIExpression()), !dbg !784
  %19 = lshr i32 %15, 1
  %20 = trunc i32 %19 to i8, !dbg !791
  store i8 %20, ptr %0, align 1, !dbg !792, !tbaa !109
  %21 = add nuw nsw i32 %15, %16, !dbg !793
  %22 = lshr i32 %21, 2
  %23 = trunc i32 %22 to i8, !dbg !794
  %24 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !795
  store i8 %23, ptr %24, align 1, !dbg !796, !tbaa !109
  %25 = lshr i32 %16, 1
  %26 = trunc i32 %25 to i8, !dbg !797
  %27 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !798
  store i8 %26, ptr %27, align 1, !dbg !799, !tbaa !109
  %28 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !800
  store i8 %26, ptr %28, align 1, !dbg !801, !tbaa !109
  %29 = add nuw nsw i32 %18, %16, !dbg !802
  %30 = lshr i32 %29, 2
  %31 = trunc i32 %30 to i8, !dbg !803
  %32 = getelementptr inbounds i8, ptr %0, i64 33, !dbg !804
  store i8 %31, ptr %32, align 1, !dbg !805, !tbaa !109
  %33 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !806
  store i8 %31, ptr %33, align 1, !dbg !807, !tbaa !109
  %34 = lshr i32 %18, 1
  %35 = trunc i32 %34 to i8, !dbg !808
  %36 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !809
  store i8 %35, ptr %36, align 1, !dbg !810, !tbaa !109
  %37 = getelementptr inbounds i8, ptr %0, i64 34, !dbg !811
  store i8 %35, ptr %37, align 1, !dbg !812, !tbaa !109
  %38 = mul nuw nsw i32 %13, 3, !dbg !813
  %39 = add nuw nsw i32 %10, 2, !dbg !814
  %40 = add nuw nsw i32 %39, %38, !dbg !815
  %41 = lshr i32 %40, 2
  %42 = trunc i32 %41 to i8, !dbg !816
  %43 = getelementptr inbounds i8, ptr %0, i64 65, !dbg !817
  store i8 %42, ptr %43, align 1, !dbg !818, !tbaa !109
  %44 = getelementptr inbounds i8, ptr %0, i64 35, !dbg !819
  store i8 %42, ptr %44, align 1, !dbg !820, !tbaa !109
  %45 = getelementptr inbounds i8, ptr %0, i64 66, !dbg !821
  store i8 %12, ptr %45, align 1, !dbg !822, !tbaa !109
  %46 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !823
  %47 = insertelement <4 x i8> poison, i8 %12, i64 0, !dbg !824
  %48 = shufflevector <4 x i8> %47, <4 x i8> poison, <4 x i32> zeroinitializer, !dbg !824
  store <4 x i8> %48, ptr %46, align 1, !dbg !825, !tbaa !109
  %49 = getelementptr inbounds i8, ptr %0, i64 67, !dbg !826
  store i8 %12, ptr %49, align 1, !dbg !827, !tbaa !109
  ret void, !dbg !828
}

declare void @predict_4x4_ddl_mmxext(ptr noundef) #3

declare void @predict_4x4_vl_mmxext(ptr noundef) #3

declare void @predict_4x4_dc_mmxext(ptr noundef) #3

declare !dbg !829 void @predict_16x16_dc_core_mmxext(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !832 void @predict_16x16_p_core_mmxext(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !835 void @predict_16x16_dc_core_sse2(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !836 void @predict_16x16_p_core_sse2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !837 void @predict_8x8c_p_core_mmxext(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !838 void @predict_8x8c_dc_core_mmxext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !841 void @predict_8x8_vr_core_mmxext(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !51, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "common/x86/predict-c.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "ea7930207e6562d39c1796502327cd3a")
!2 = !{!3, !14, !23, !37}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra16x16_pred_e", file: !4, line: 47, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./common/predict.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "c7827bfe44f4a550b7080533457a8327")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13}
!7 = !DIEnumerator(name: "I_PRED_16x16_V", value: 0)
!8 = !DIEnumerator(name: "I_PRED_16x16_H", value: 1)
!9 = !DIEnumerator(name: "I_PRED_16x16_DC", value: 2)
!10 = !DIEnumerator(name: "I_PRED_16x16_P", value: 3)
!11 = !DIEnumerator(name: "I_PRED_16x16_DC_LEFT", value: 4)
!12 = !DIEnumerator(name: "I_PRED_16x16_DC_TOP", value: 5)
!13 = !DIEnumerator(name: "I_PRED_16x16_DC_128", value: 6)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra_chroma_pred_e", file: !4, line: 30, baseType: !5, size: 32, elements: !15)
!15 = !{!16, !17, !18, !19, !20, !21, !22}
!16 = !DIEnumerator(name: "I_PRED_CHROMA_DC", value: 0)
!17 = !DIEnumerator(name: "I_PRED_CHROMA_H", value: 1)
!18 = !DIEnumerator(name: "I_PRED_CHROMA_V", value: 2)
!19 = !DIEnumerator(name: "I_PRED_CHROMA_P", value: 3)
!20 = !DIEnumerator(name: "I_PRED_CHROMA_DC_LEFT", value: 4)
!21 = !DIEnumerator(name: "I_PRED_CHROMA_DC_TOP", value: 5)
!22 = !DIEnumerator(name: "I_PRED_CHROMA_DC_128", value: 6)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra8x8_pred_e", file: !4, line: 91, baseType: !5, size: 32, elements: !24)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!25 = !DIEnumerator(name: "I_PRED_8x8_V", value: 0)
!26 = !DIEnumerator(name: "I_PRED_8x8_H", value: 1)
!27 = !DIEnumerator(name: "I_PRED_8x8_DC", value: 2)
!28 = !DIEnumerator(name: "I_PRED_8x8_DDL", value: 3)
!29 = !DIEnumerator(name: "I_PRED_8x8_DDR", value: 4)
!30 = !DIEnumerator(name: "I_PRED_8x8_VR", value: 5)
!31 = !DIEnumerator(name: "I_PRED_8x8_HD", value: 6)
!32 = !DIEnumerator(name: "I_PRED_8x8_VL", value: 7)
!33 = !DIEnumerator(name: "I_PRED_8x8_HU", value: 8)
!34 = !DIEnumerator(name: "I_PRED_8x8_DC_LEFT", value: 9)
!35 = !DIEnumerator(name: "I_PRED_8x8_DC_TOP", value: 10)
!36 = !DIEnumerator(name: "I_PRED_8x8_DC_128", value: 11)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra4x4_pred_e", file: !4, line: 64, baseType: !5, size: 32, elements: !38)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!39 = !DIEnumerator(name: "I_PRED_4x4_V", value: 0)
!40 = !DIEnumerator(name: "I_PRED_4x4_H", value: 1)
!41 = !DIEnumerator(name: "I_PRED_4x4_DC", value: 2)
!42 = !DIEnumerator(name: "I_PRED_4x4_DDL", value: 3)
!43 = !DIEnumerator(name: "I_PRED_4x4_DDR", value: 4)
!44 = !DIEnumerator(name: "I_PRED_4x4_VR", value: 5)
!45 = !DIEnumerator(name: "I_PRED_4x4_HD", value: 6)
!46 = !DIEnumerator(name: "I_PRED_4x4_VL", value: 7)
!47 = !DIEnumerator(name: "I_PRED_4x4_HU", value: 8)
!48 = !DIEnumerator(name: "I_PRED_4x4_DC_LEFT", value: 9)
!49 = !DIEnumerator(name: "I_PRED_4x4_DC_TOP", value: 10)
!50 = !DIEnumerator(name: "I_PRED_4x4_DC_128", value: 11)
!51 = !{!52, !58}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !54, line: 27, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !56, line: 45, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !54, line: 26, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !56, line: 42, baseType: !5)
!61 = !{i32 7, !"Dwarf Version", i32 5}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = !{i32 8, !"PIC Level", i32 2}
!65 = !{i32 7, !"PIE Level", i32 2}
!66 = !{i32 7, !"uwtable", i32 2}
!67 = !{!"clang version 16.0.0"}
!68 = distinct !DISubprogram(name: "x264_intra_sa8d_x3_8x8_sse2", scope: !1, file: !1, line: 469, type: !69, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !71, !75}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !54, line: 24, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !56, line: 38, baseType: !74)
!74 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!78 = !DILocalVariable(name: "fenc", arg: 1, scope: !68, file: !1, line: 469, type: !71)
!79 = !DILocalVariable(name: "edge", arg: 2, scope: !68, file: !1, line: 469, type: !71)
!80 = !DILocalVariable(name: "res", arg: 3, scope: !68, file: !1, line: 469, type: !75)
!81 = !DILocalVariable(name: "t0", scope: !68, file: !1, line: 469, type: !76)
!82 = !DILocalVariable(name: "t1", scope: !68, file: !1, line: 469, type: !76)
!83 = !DILocalVariable(name: "t2", scope: !68, file: !1, line: 469, type: !76)
!84 = !DILocalVariable(name: "t3", scope: !68, file: !1, line: 469, type: !76)
!85 = !DILocalVariable(name: "t4", scope: !68, file: !1, line: 469, type: !76)
!86 = !DILocalVariable(name: "t5", scope: !68, file: !1, line: 469, type: !76)
!87 = !DILocalVariable(name: "t6", scope: !68, file: !1, line: 469, type: !76)
!88 = !DILocalVariable(name: "t7", scope: !68, file: !1, line: 469, type: !76)
!89 = !DILocalVariable(name: "l0", scope: !68, file: !1, line: 469, type: !76)
!90 = !DILocalVariable(name: "l1", scope: !68, file: !1, line: 469, type: !76)
!91 = !DILocalVariable(name: "l2", scope: !68, file: !1, line: 469, type: !76)
!92 = !DILocalVariable(name: "l3", scope: !68, file: !1, line: 469, type: !76)
!93 = !DILocalVariable(name: "l4", scope: !68, file: !1, line: 469, type: !76)
!94 = !DILocalVariable(name: "l5", scope: !68, file: !1, line: 469, type: !76)
!95 = !DILocalVariable(name: "l6", scope: !68, file: !1, line: 469, type: !76)
!96 = !DILocalVariable(name: "l7", scope: !68, file: !1, line: 469, type: !76)
!97 = !DILocalVariable(name: "t", scope: !68, file: !1, line: 469, type: !76)
!98 = !DILocalVariable(name: "sa8d_1d", scope: !68, file: !1, line: 469, type: !99, align: 128)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 256, elements: !104)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !101, line: 25, baseType: !102)
!101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !56, line: 39, baseType: !103)
!103 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!104 = !{!105, !106}
!105 = !DISubrange(count: 2)
!106 = !DISubrange(count: 8)
!107 = !DILocation(line: 0, scope: !68)
!108 = !DILocation(line: 469, column: 1, scope: !68)
!109 = !{!110, !110, i64 0}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C/C++ TBAA"}
!112 = !{!113, !113, i64 0}
!113 = !{!"short", !110, i64 0}
!114 = !DISubprogram(name: "x264_intra_sa8d_x3_8x8_core_sse2", scope: !115, file: !115, line: 89, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!115 = !DIFile(filename: "common/x86/pixel.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "7d5b7987e0000756189d31f037281c45")
!116 = !DISubroutineType(types: !117)
!117 = !{null, !71, !118, !75}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !120)
!120 = !{!106}
!121 = !{}
!122 = distinct !DISubprogram(name: "x264_intra_sa8d_x3_8x8_ssse3", scope: !1, file: !1, line: 470, type: !69, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!124 = !DILocalVariable(name: "fenc", arg: 1, scope: !122, file: !1, line: 470, type: !71)
!125 = !DILocalVariable(name: "edge", arg: 2, scope: !122, file: !1, line: 470, type: !71)
!126 = !DILocalVariable(name: "res", arg: 3, scope: !122, file: !1, line: 470, type: !75)
!127 = !DILocalVariable(name: "t0", scope: !122, file: !1, line: 470, type: !76)
!128 = !DILocalVariable(name: "t1", scope: !122, file: !1, line: 470, type: !76)
!129 = !DILocalVariable(name: "t2", scope: !122, file: !1, line: 470, type: !76)
!130 = !DILocalVariable(name: "t3", scope: !122, file: !1, line: 470, type: !76)
!131 = !DILocalVariable(name: "t4", scope: !122, file: !1, line: 470, type: !76)
!132 = !DILocalVariable(name: "t5", scope: !122, file: !1, line: 470, type: !76)
!133 = !DILocalVariable(name: "t6", scope: !122, file: !1, line: 470, type: !76)
!134 = !DILocalVariable(name: "t7", scope: !122, file: !1, line: 470, type: !76)
!135 = !DILocalVariable(name: "l0", scope: !122, file: !1, line: 470, type: !76)
!136 = !DILocalVariable(name: "l1", scope: !122, file: !1, line: 470, type: !76)
!137 = !DILocalVariable(name: "l2", scope: !122, file: !1, line: 470, type: !76)
!138 = !DILocalVariable(name: "l3", scope: !122, file: !1, line: 470, type: !76)
!139 = !DILocalVariable(name: "l4", scope: !122, file: !1, line: 470, type: !76)
!140 = !DILocalVariable(name: "l5", scope: !122, file: !1, line: 470, type: !76)
!141 = !DILocalVariable(name: "l6", scope: !122, file: !1, line: 470, type: !76)
!142 = !DILocalVariable(name: "l7", scope: !122, file: !1, line: 470, type: !76)
!143 = !DILocalVariable(name: "t", scope: !122, file: !1, line: 470, type: !76)
!144 = !DILocalVariable(name: "sa8d_1d", scope: !122, file: !1, line: 470, type: !99, align: 128)
!145 = !DILocation(line: 0, scope: !122)
!146 = !DILocation(line: 470, column: 1, scope: !122)
!147 = !DISubprogram(name: "x264_intra_sa8d_x3_8x8_core_ssse3", scope: !115, file: !115, line: 90, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!148 = distinct !DISubprogram(name: "x264_predict_16x16_init_mmx", scope: !1, file: !1, line: 478, type: !149, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !156)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !76, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !4, line: 27, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !71}
!156 = !{!157, !158}
!157 = !DILocalVariable(name: "cpu", arg: 1, scope: !148, file: !1, line: 478, type: !76)
!158 = !DILocalVariable(name: "pf", arg: 2, scope: !148, file: !1, line: 478, type: !151)
!159 = !DILocation(line: 0, scope: !148)
!160 = !DILocation(line: 480, column: 14, scope: !161)
!161 = distinct !DILexicalBlock(scope: !148, file: !1, line: 480, column: 9)
!162 = !DILocation(line: 480, column: 9, scope: !148)
!163 = !DILocation(line: 483, column: 5, scope: !148)
!164 = !DILocation(line: 483, column: 30, scope: !148)
!165 = !{!166, !166, i64 0}
!166 = !{!"any pointer", !110, i64 0}
!167 = !DILocation(line: 485, column: 30, scope: !148)
!168 = !DILocation(line: 486, column: 14, scope: !169)
!169 = distinct !DILexicalBlock(scope: !148, file: !1, line: 486, column: 9)
!170 = !DILocation(line: 486, column: 9, scope: !148)
!171 = !DILocation(line: 488, column: 5, scope: !148)
!172 = !DILocation(line: 488, column: 30, scope: !148)
!173 = !DILocation(line: 489, column: 5, scope: !148)
!174 = !DILocation(line: 489, column: 30, scope: !148)
!175 = !DILocation(line: 490, column: 5, scope: !148)
!176 = !DILocation(line: 490, column: 30, scope: !148)
!177 = !DILocation(line: 491, column: 5, scope: !148)
!178 = !DILocation(line: 491, column: 30, scope: !148)
!179 = !DILocation(line: 492, column: 14, scope: !180)
!180 = distinct !DILexicalBlock(scope: !148, file: !1, line: 492, column: 9)
!181 = !DILocation(line: 492, column: 9, scope: !148)
!182 = !DILocation(line: 494, column: 29, scope: !148)
!183 = !DILocation(line: 495, column: 29, scope: !148)
!184 = !DILocation(line: 496, column: 12, scope: !185)
!185 = distinct !DILexicalBlock(scope: !148, file: !1, line: 496, column: 9)
!186 = !DILocation(line: 496, column: 9, scope: !148)
!187 = !DILocation(line: 498, column: 29, scope: !148)
!188 = !DILocation(line: 499, column: 29, scope: !148)
!189 = !DILocation(line: 500, column: 14, scope: !190)
!190 = distinct !DILexicalBlock(scope: !148, file: !1, line: 500, column: 9)
!191 = !DILocation(line: 500, column: 9, scope: !148)
!192 = !DILocation(line: 502, column: 29, scope: !148)
!193 = !DILocation(line: 503, column: 1, scope: !148)
!194 = distinct !DISubprogram(name: "predict_16x16_dc_left", scope: !1, file: !1, line: 135, type: !154, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !195)
!195 = !{!196, !197, !198, !199, !200}
!196 = !DILocalVariable(name: "src", arg: 1, scope: !194, file: !1, line: 135, type: !71)
!197 = !DILocalVariable(name: "s", scope: !194, file: !1, line: 137, type: !59)
!198 = !DILocalVariable(name: "dc", scope: !194, file: !1, line: 138, type: !53)
!199 = !DILocalVariable(name: "y", scope: !194, file: !1, line: 139, type: !76)
!200 = !DILocalVariable(name: "p", scope: !201, file: !1, line: 149, type: !52)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 148, column: 5)
!202 = distinct !DILexicalBlock(scope: !203, file: !1, line: 147, column: 5)
!203 = distinct !DILexicalBlock(scope: !194, file: !1, line: 147, column: 5)
!204 = !DILocation(line: 0, scope: !194)
!205 = !DILocation(line: 143, column: 14, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 142, column: 5)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 141, column: 5)
!208 = distinct !DILexicalBlock(scope: !194, file: !1, line: 141, column: 5)
!209 = !DILocation(line: 143, column: 11, scope: !206)
!210 = !DILocation(line: 145, column: 15, scope: !194)
!211 = !DILocation(line: 145, column: 21, scope: !194)
!212 = !DILocation(line: 145, column: 27, scope: !194)
!213 = !DILocation(line: 0, scope: !201)
!214 = !DILocation(line: 150, column: 16, scope: !201)
!215 = !DILocation(line: 150, column: 21, scope: !201)
!216 = !{!217, !217, i64 0}
!217 = !{!"long", !110, i64 0}
!218 = !DILocation(line: 150, column: 14, scope: !201)
!219 = !DILocation(line: 151, column: 13, scope: !201)
!220 = !DILocation(line: 153, column: 1, scope: !194)
!221 = distinct !DISubprogram(name: "predict_16x16_dc_mmxext", scope: !1, file: !1, line: 114, type: !154, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !222)
!222 = !{!223, !224, !225}
!223 = !DILocalVariable(name: "src", arg: 1, scope: !221, file: !1, line: 114, type: !71)
!224 = !DILocalVariable(name: "dc", scope: !221, file: !1, line: 114, type: !59)
!225 = !DILocalVariable(name: "i", scope: !221, file: !1, line: 114, type: !76)
!226 = !DILocation(line: 0, scope: !221)
!227 = !DILocation(line: 114, column: 1, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 114, column: 1)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 114, column: 1)
!230 = distinct !DILexicalBlock(scope: !221, file: !1, line: 114, column: 1)
!231 = !DILocation(line: 114, column: 1, scope: !221)
!232 = distinct !DISubprogram(name: "predict_16x16_p_mmxext", scope: !1, file: !1, line: 77, type: !154, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241}
!234 = !DILocalVariable(name: "src", arg: 1, scope: !232, file: !1, line: 77, type: !71)
!235 = !DILocalVariable(name: "a", scope: !232, file: !1, line: 77, type: !76)
!236 = !DILocalVariable(name: "b", scope: !232, file: !1, line: 77, type: !76)
!237 = !DILocalVariable(name: "c", scope: !232, file: !1, line: 77, type: !76)
!238 = !DILocalVariable(name: "i", scope: !232, file: !1, line: 77, type: !76)
!239 = !DILocalVariable(name: "H", scope: !232, file: !1, line: 77, type: !76)
!240 = !DILocalVariable(name: "V", scope: !232, file: !1, line: 77, type: !76)
!241 = !DILocalVariable(name: "i00", scope: !232, file: !1, line: 77, type: !76)
!242 = !DILocation(line: 0, scope: !232)
!243 = !DILocation(line: 77, column: 1, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 77, column: 1)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 77, column: 1)
!246 = distinct !DILexicalBlock(scope: !232, file: !1, line: 77, column: 1)
!247 = !DILocation(line: 77, column: 1, scope: !232)
!248 = distinct !DISubprogram(name: "predict_16x16_dc_sse2", scope: !1, file: !1, line: 115, type: !154, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !249)
!249 = !{!250, !251, !252}
!250 = !DILocalVariable(name: "src", arg: 1, scope: !248, file: !1, line: 115, type: !71)
!251 = !DILocalVariable(name: "dc", scope: !248, file: !1, line: 115, type: !59)
!252 = !DILocalVariable(name: "i", scope: !248, file: !1, line: 115, type: !76)
!253 = !DILocation(line: 0, scope: !248)
!254 = !DILocation(line: 115, column: 1, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !1, line: 115, column: 1)
!256 = distinct !DILexicalBlock(scope: !257, file: !1, line: 115, column: 1)
!257 = distinct !DILexicalBlock(scope: !248, file: !1, line: 115, column: 1)
!258 = !DILocation(line: 115, column: 1, scope: !248)
!259 = distinct !DISubprogram(name: "predict_16x16_p_sse2", scope: !1, file: !1, line: 78, type: !154, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !260)
!260 = !{!261, !262, !263, !264, !265, !266, !267, !268}
!261 = !DILocalVariable(name: "src", arg: 1, scope: !259, file: !1, line: 78, type: !71)
!262 = !DILocalVariable(name: "a", scope: !259, file: !1, line: 78, type: !76)
!263 = !DILocalVariable(name: "b", scope: !259, file: !1, line: 78, type: !76)
!264 = !DILocalVariable(name: "c", scope: !259, file: !1, line: 78, type: !76)
!265 = !DILocalVariable(name: "i", scope: !259, file: !1, line: 78, type: !76)
!266 = !DILocalVariable(name: "H", scope: !259, file: !1, line: 78, type: !76)
!267 = !DILocalVariable(name: "V", scope: !259, file: !1, line: 78, type: !76)
!268 = !DILocalVariable(name: "i00", scope: !259, file: !1, line: 78, type: !76)
!269 = !DILocation(line: 0, scope: !259)
!270 = !DILocation(line: 78, column: 1, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 78, column: 1)
!272 = distinct !DILexicalBlock(scope: !273, file: !1, line: 78, column: 1)
!273 = distinct !DILexicalBlock(scope: !259, file: !1, line: 78, column: 1)
!274 = !DILocation(line: 78, column: 1, scope: !259)
!275 = distinct !DISubprogram(name: "x264_predict_8x8c_init_mmx", scope: !1, file: !1, line: 505, type: !149, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !276)
!276 = !{!277, !278}
!277 = !DILocalVariable(name: "cpu", arg: 1, scope: !275, file: !1, line: 505, type: !76)
!278 = !DILocalVariable(name: "pf", arg: 2, scope: !275, file: !1, line: 505, type: !151)
!279 = !DILocation(line: 0, scope: !275)
!280 = !DILocation(line: 507, column: 14, scope: !281)
!281 = distinct !DILexicalBlock(scope: !275, file: !1, line: 507, column: 9)
!282 = !DILocation(line: 507, column: 9, scope: !275)
!283 = !DILocation(line: 510, column: 5, scope: !275)
!284 = !DILocation(line: 510, column: 31, scope: !275)
!285 = !DILocation(line: 511, column: 5, scope: !275)
!286 = !DILocation(line: 511, column: 31, scope: !275)
!287 = !DILocation(line: 513, column: 5, scope: !275)
!288 = !DILocation(line: 513, column: 31, scope: !275)
!289 = !DILocation(line: 514, column: 14, scope: !290)
!290 = distinct !DILexicalBlock(scope: !275, file: !1, line: 514, column: 9)
!291 = !DILocation(line: 514, column: 9, scope: !275)
!292 = !DILocation(line: 516, column: 5, scope: !275)
!293 = !DILocation(line: 516, column: 31, scope: !275)
!294 = !DILocation(line: 517, column: 5, scope: !275)
!295 = !DILocation(line: 517, column: 31, scope: !275)
!296 = !DILocation(line: 518, column: 31, scope: !275)
!297 = !DILocation(line: 519, column: 14, scope: !298)
!298 = distinct !DILexicalBlock(scope: !275, file: !1, line: 519, column: 9)
!299 = !DILocation(line: 519, column: 9, scope: !275)
!300 = !DILocation(line: 521, column: 31, scope: !275)
!301 = !DILocation(line: 522, column: 1, scope: !275)
!302 = distinct !DISubprogram(name: "predict_8x8c_dc_left", scope: !1, file: !1, line: 155, type: !154, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !303)
!303 = !{!304, !305, !306, !307, !308, !309}
!304 = !DILocalVariable(name: "src", arg: 1, scope: !302, file: !1, line: 155, type: !71)
!305 = !DILocalVariable(name: "y", scope: !302, file: !1, line: 157, type: !76)
!306 = !DILocalVariable(name: "s0", scope: !302, file: !1, line: 158, type: !59)
!307 = !DILocalVariable(name: "s1", scope: !302, file: !1, line: 158, type: !59)
!308 = !DILocalVariable(name: "dc0", scope: !302, file: !1, line: 159, type: !53)
!309 = !DILocalVariable(name: "dc1", scope: !302, file: !1, line: 159, type: !53)
!310 = !DILocation(line: 0, scope: !302)
!311 = !DILocation(line: 163, column: 15, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !1, line: 162, column: 5)
!313 = distinct !DILexicalBlock(scope: !314, file: !1, line: 161, column: 5)
!314 = distinct !DILexicalBlock(scope: !302, file: !1, line: 161, column: 5)
!315 = !DILocation(line: 164, column: 15, scope: !312)
!316 = !DILocation(line: 163, column: 12, scope: !312)
!317 = !DILocation(line: 164, column: 12, scope: !312)
!318 = !DILocation(line: 166, column: 17, scope: !302)
!319 = !DILocation(line: 166, column: 23, scope: !302)
!320 = !DILocation(line: 166, column: 29, scope: !302)
!321 = !DILocation(line: 167, column: 17, scope: !302)
!322 = !DILocation(line: 167, column: 23, scope: !302)
!323 = !DILocation(line: 171, column: 25, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !1, line: 170, column: 5)
!325 = distinct !DILexicalBlock(scope: !326, file: !1, line: 169, column: 5)
!326 = distinct !DILexicalBlock(scope: !302, file: !1, line: 169, column: 5)
!327 = !DILocation(line: 172, column: 13, scope: !324)
!328 = !DILocation(line: 167, column: 29, scope: !302)
!329 = !DILocation(line: 176, column: 25, scope: !330)
!330 = distinct !DILexicalBlock(scope: !331, file: !1, line: 175, column: 5)
!331 = distinct !DILexicalBlock(scope: !332, file: !1, line: 174, column: 5)
!332 = distinct !DILexicalBlock(scope: !302, file: !1, line: 174, column: 5)
!333 = !DILocation(line: 177, column: 13, scope: !330)
!334 = !DILocation(line: 180, column: 1, scope: !302)
!335 = distinct !DISubprogram(name: "predict_8x8c_dc_top", scope: !1, file: !1, line: 182, type: !154, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !336)
!336 = !{!337, !338, !339, !340, !341, !342}
!337 = !DILocalVariable(name: "src", arg: 1, scope: !335, file: !1, line: 182, type: !71)
!338 = !DILocalVariable(name: "y", scope: !335, file: !1, line: 184, type: !76)
!339 = !DILocalVariable(name: "x", scope: !335, file: !1, line: 184, type: !76)
!340 = !DILocalVariable(name: "s0", scope: !335, file: !1, line: 185, type: !59)
!341 = !DILocalVariable(name: "s1", scope: !335, file: !1, line: 185, type: !59)
!342 = !DILocalVariable(name: "dc", scope: !335, file: !1, line: 186, type: !53)
!343 = !DILocation(line: 0, scope: !335)
!344 = !DILocation(line: 190, column: 15, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 189, column: 5)
!346 = distinct !DILexicalBlock(scope: !347, file: !1, line: 188, column: 5)
!347 = distinct !DILexicalBlock(scope: !335, file: !1, line: 188, column: 5)
!348 = !DILocation(line: 191, column: 15, scope: !345)
!349 = !DILocation(line: 190, column: 12, scope: !345)
!350 = !DILocation(line: 191, column: 12, scope: !345)
!351 = !DILocation(line: 193, column: 16, scope: !335)
!352 = !DILocation(line: 193, column: 22, scope: !335)
!353 = !DILocation(line: 193, column: 28, scope: !335)
!354 = !DILocation(line: 193, column: 10, scope: !335)
!355 = !DILocation(line: 194, column: 16, scope: !335)
!356 = !DILocation(line: 194, column: 22, scope: !335)
!357 = !DILocation(line: 194, column: 28, scope: !335)
!358 = !DILocation(line: 194, column: 8, scope: !335)
!359 = !DILocation(line: 198, column: 25, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !1, line: 197, column: 5)
!361 = distinct !DILexicalBlock(scope: !362, file: !1, line: 196, column: 5)
!362 = distinct !DILexicalBlock(scope: !335, file: !1, line: 196, column: 5)
!363 = !DILocation(line: 199, column: 13, scope: !360)
!364 = !DILocation(line: 201, column: 1, scope: !335)
!365 = distinct !DISubprogram(name: "predict_8x8c_p_mmxext", scope: !1, file: !1, line: 80, type: !154, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !366)
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374}
!367 = !DILocalVariable(name: "src", arg: 1, scope: !365, file: !1, line: 80, type: !71)
!368 = !DILocalVariable(name: "a", scope: !365, file: !1, line: 82, type: !76)
!369 = !DILocalVariable(name: "b", scope: !365, file: !1, line: 82, type: !76)
!370 = !DILocalVariable(name: "c", scope: !365, file: !1, line: 82, type: !76)
!371 = !DILocalVariable(name: "i", scope: !365, file: !1, line: 82, type: !76)
!372 = !DILocalVariable(name: "H", scope: !365, file: !1, line: 83, type: !76)
!373 = !DILocalVariable(name: "V", scope: !365, file: !1, line: 84, type: !76)
!374 = !DILocalVariable(name: "i00", scope: !365, file: !1, line: 85, type: !76)
!375 = !DILocation(line: 0, scope: !365)
!376 = !DILocation(line: 89, column: 20, scope: !377)
!377 = distinct !DILexicalBlock(scope: !378, file: !1, line: 88, column: 5)
!378 = distinct !DILexicalBlock(scope: !379, file: !1, line: 87, column: 5)
!379 = distinct !DILexicalBlock(scope: !365, file: !1, line: 87, column: 5)
!380 = !DILocation(line: 89, column: 45, scope: !377)
!381 = !DILocation(line: 89, column: 43, scope: !377)
!382 = !DILocation(line: 90, column: 20, scope: !377)
!383 = !DILocation(line: 90, column: 48, scope: !377)
!384 = !DILocation(line: 90, column: 46, scope: !377)
!385 = !DILocation(line: 89, column: 16, scope: !377)
!386 = !DILocation(line: 89, column: 11, scope: !377)
!387 = !DILocation(line: 90, column: 16, scope: !377)
!388 = !DILocation(line: 90, column: 11, scope: !377)
!389 = !DILocation(line: 93, column: 38, scope: !365)
!390 = !DILocation(line: 93, column: 12, scope: !365)
!391 = !DILocation(line: 94, column: 14, scope: !365)
!392 = !DILocation(line: 94, column: 18, scope: !365)
!393 = !DILocation(line: 94, column: 25, scope: !365)
!394 = !DILocation(line: 95, column: 14, scope: !365)
!395 = !DILocation(line: 95, column: 18, scope: !365)
!396 = !DILocation(line: 95, column: 25, scope: !365)
!397 = !DILocation(line: 96, column: 18, scope: !365)
!398 = !DILocation(line: 96, column: 23, scope: !365)
!399 = !DILocation(line: 98, column: 5, scope: !365)
!400 = !DILocation(line: 99, column: 1, scope: !365)
!401 = distinct !DISubprogram(name: "predict_8x8c_dc_mmxext", scope: !1, file: !1, line: 117, type: !154, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !402)
!402 = !{!403, !404, !405}
!403 = !DILocalVariable(name: "src", arg: 1, scope: !401, file: !1, line: 117, type: !71)
!404 = !DILocalVariable(name: "s2", scope: !401, file: !1, line: 119, type: !76)
!405 = !DILocalVariable(name: "s3", scope: !401, file: !1, line: 125, type: !76)
!406 = !DILocation(line: 0, scope: !401)
!407 = !DILocation(line: 120, column: 10, scope: !401)
!408 = !DILocation(line: 120, column: 8, scope: !401)
!409 = !DILocation(line: 121, column: 10, scope: !401)
!410 = !DILocation(line: 121, column: 8, scope: !401)
!411 = !DILocation(line: 122, column: 10, scope: !401)
!412 = !DILocation(line: 122, column: 8, scope: !401)
!413 = !DILocation(line: 123, column: 10, scope: !401)
!414 = !DILocation(line: 123, column: 8, scope: !401)
!415 = !DILocation(line: 126, column: 10, scope: !401)
!416 = !DILocation(line: 126, column: 8, scope: !401)
!417 = !DILocation(line: 127, column: 10, scope: !401)
!418 = !DILocation(line: 127, column: 8, scope: !401)
!419 = !DILocation(line: 128, column: 10, scope: !401)
!420 = !DILocation(line: 128, column: 8, scope: !401)
!421 = !DILocation(line: 129, column: 10, scope: !401)
!422 = !DILocation(line: 129, column: 8, scope: !401)
!423 = !DILocation(line: 131, column: 5, scope: !401)
!424 = !DILocation(line: 132, column: 1, scope: !401)
!425 = distinct !DISubprogram(name: "x264_predict_8x8_init_mmx", scope: !1, file: !1, line: 524, type: !426, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !433)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !76, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !4, line: 28, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !71, !71}
!433 = !{!434, !435}
!434 = !DILocalVariable(name: "cpu", arg: 1, scope: !425, file: !1, line: 524, type: !76)
!435 = !DILocalVariable(name: "pf", arg: 2, scope: !425, file: !1, line: 524, type: !428)
!436 = !DILocation(line: 0, scope: !425)
!437 = !DILocation(line: 526, column: 14, scope: !438)
!438 = distinct !DILexicalBlock(scope: !425, file: !1, line: 526, column: 9)
!439 = !DILocation(line: 526, column: 9, scope: !425)
!440 = !DILocation(line: 528, column: 24, scope: !425)
!441 = !DILocation(line: 529, column: 5, scope: !425)
!442 = !DILocation(line: 529, column: 24, scope: !425)
!443 = !DILocation(line: 530, column: 5, scope: !425)
!444 = !DILocation(line: 530, column: 24, scope: !425)
!445 = !DILocation(line: 531, column: 5, scope: !425)
!446 = !DILocation(line: 531, column: 27, scope: !425)
!447 = !DILocation(line: 532, column: 5, scope: !425)
!448 = !DILocation(line: 532, column: 27, scope: !425)
!449 = !DILocation(line: 533, column: 5, scope: !425)
!450 = !DILocation(line: 533, column: 24, scope: !425)
!451 = !DILocation(line: 538, column: 14, scope: !452)
!452 = distinct !DILexicalBlock(scope: !425, file: !1, line: 538, column: 9)
!453 = !DILocation(line: 538, column: 9, scope: !425)
!454 = !DILocation(line: 540, column: 5, scope: !425)
!455 = !DILocation(line: 540, column: 24, scope: !425)
!456 = !DILocation(line: 541, column: 5, scope: !425)
!457 = !DILocation(line: 541, column: 24, scope: !425)
!458 = !DILocation(line: 542, column: 5, scope: !425)
!459 = !DILocation(line: 542, column: 24, scope: !425)
!460 = !DILocation(line: 543, column: 1, scope: !425)
!461 = distinct !DISubprogram(name: "predict_8x8_vr_mmxext", scope: !1, file: !1, line: 415, type: !431, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !462)
!462 = !{!463, !464, !465, !467, !468, !469, !470, !471, !472, !473, !474}
!463 = !DILocalVariable(name: "src", arg: 1, scope: !461, file: !1, line: 415, type: !71)
!464 = !DILocalVariable(name: "edge", arg: 2, scope: !461, file: !1, line: 415, type: !71)
!465 = !DILocalVariable(name: "lt", scope: !466, file: !1, line: 419, type: !76)
!466 = distinct !DILexicalBlock(scope: !461, file: !1, line: 418, column: 5)
!467 = !DILocalVariable(name: "l0", scope: !466, file: !1, line: 420, type: !76)
!468 = !DILocalVariable(name: "l1", scope: !466, file: !1, line: 420, type: !76)
!469 = !DILocalVariable(name: "l2", scope: !466, file: !1, line: 420, type: !76)
!470 = !DILocalVariable(name: "l3", scope: !466, file: !1, line: 420, type: !76)
!471 = !DILocalVariable(name: "l4", scope: !466, file: !1, line: 420, type: !76)
!472 = !DILocalVariable(name: "l5", scope: !466, file: !1, line: 420, type: !76)
!473 = !DILocalVariable(name: "l6", scope: !466, file: !1, line: 420, type: !76)
!474 = !DILocalVariable(name: "l7", scope: !466, file: !1, line: 420, type: !76)
!475 = !DILocation(line: 0, scope: !461)
!476 = !DILocation(line: 417, column: 5, scope: !461)
!477 = !DILocation(line: 419, column: 9, scope: !466)
!478 = !DILocation(line: 0, scope: !466)
!479 = !DILocation(line: 420, column: 9, scope: !466)
!480 = !DILocation(line: 421, column: 44, scope: !466)
!481 = !DILocation(line: 421, column: 41, scope: !466)
!482 = !DILocation(line: 421, column: 48, scope: !466)
!483 = !DILocation(line: 421, column: 53, scope: !466)
!484 = !DILocation(line: 421, column: 37, scope: !466)
!485 = !DILocation(line: 421, column: 27, scope: !466)
!486 = !DILocation(line: 421, column: 35, scope: !466)
!487 = !DILocation(line: 421, column: 18, scope: !466)
!488 = !DILocation(line: 421, column: 26, scope: !466)
!489 = !DILocation(line: 421, column: 9, scope: !466)
!490 = !DILocation(line: 421, column: 17, scope: !466)
!491 = !DILocation(line: 422, column: 44, scope: !466)
!492 = !DILocation(line: 422, column: 41, scope: !466)
!493 = !DILocation(line: 422, column: 48, scope: !466)
!494 = !DILocation(line: 422, column: 53, scope: !466)
!495 = !DILocation(line: 422, column: 37, scope: !466)
!496 = !DILocation(line: 422, column: 27, scope: !466)
!497 = !DILocation(line: 422, column: 35, scope: !466)
!498 = !DILocation(line: 422, column: 18, scope: !466)
!499 = !DILocation(line: 422, column: 26, scope: !466)
!500 = !DILocation(line: 422, column: 9, scope: !466)
!501 = !DILocation(line: 422, column: 17, scope: !466)
!502 = !DILocation(line: 423, column: 35, scope: !466)
!503 = !DILocation(line: 423, column: 39, scope: !466)
!504 = !DILocation(line: 423, column: 44, scope: !466)
!505 = !DILocation(line: 423, column: 28, scope: !466)
!506 = !DILocation(line: 423, column: 18, scope: !466)
!507 = !DILocation(line: 423, column: 26, scope: !466)
!508 = !DILocation(line: 423, column: 9, scope: !466)
!509 = !DILocation(line: 423, column: 17, scope: !466)
!510 = !DILocation(line: 424, column: 35, scope: !466)
!511 = !DILocation(line: 424, column: 39, scope: !466)
!512 = !DILocation(line: 424, column: 44, scope: !466)
!513 = !DILocation(line: 424, column: 28, scope: !466)
!514 = !DILocation(line: 424, column: 18, scope: !466)
!515 = !DILocation(line: 424, column: 26, scope: !466)
!516 = !DILocation(line: 424, column: 9, scope: !466)
!517 = !DILocation(line: 424, column: 17, scope: !466)
!518 = !DILocation(line: 425, column: 26, scope: !466)
!519 = !DILocation(line: 425, column: 23, scope: !466)
!520 = !DILocation(line: 425, column: 30, scope: !466)
!521 = !DILocation(line: 425, column: 35, scope: !466)
!522 = !DILocation(line: 425, column: 19, scope: !466)
!523 = !DILocation(line: 425, column: 9, scope: !466)
!524 = !DILocation(line: 425, column: 17, scope: !466)
!525 = !DILocation(line: 426, column: 26, scope: !466)
!526 = !DILocation(line: 426, column: 23, scope: !466)
!527 = !DILocation(line: 426, column: 30, scope: !466)
!528 = !DILocation(line: 426, column: 35, scope: !466)
!529 = !DILocation(line: 426, column: 19, scope: !466)
!530 = !DILocation(line: 426, column: 9, scope: !466)
!531 = !DILocation(line: 426, column: 17, scope: !466)
!532 = !DILocation(line: 428, column: 1, scope: !461)
!533 = distinct !DISubprogram(name: "x264_predict_4x4_init_mmx", scope: !1, file: !1, line: 545, type: !149, scopeLine: 546, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !534)
!534 = !{!535, !536}
!535 = !DILocalVariable(name: "cpu", arg: 1, scope: !533, file: !1, line: 545, type: !76)
!536 = !DILocalVariable(name: "pf", arg: 2, scope: !533, file: !1, line: 545, type: !151)
!537 = !DILocation(line: 0, scope: !533)
!538 = !DILocation(line: 547, column: 14, scope: !539)
!539 = distinct !DILexicalBlock(scope: !533, file: !1, line: 547, column: 9)
!540 = !DILocation(line: 547, column: 9, scope: !533)
!541 = !DILocation(line: 550, column: 5, scope: !533)
!542 = !DILocation(line: 550, column: 24, scope: !533)
!543 = !DILocation(line: 551, column: 5, scope: !533)
!544 = !DILocation(line: 551, column: 24, scope: !533)
!545 = !DILocation(line: 552, column: 5, scope: !533)
!546 = !DILocation(line: 552, column: 24, scope: !533)
!547 = !DILocation(line: 553, column: 5, scope: !533)
!548 = !DILocation(line: 553, column: 24, scope: !533)
!549 = !DILocation(line: 555, column: 14, scope: !550)
!550 = distinct !DILexicalBlock(scope: !533, file: !1, line: 555, column: 9)
!551 = !DILocation(line: 555, column: 9, scope: !533)
!552 = !DILocation(line: 557, column: 5, scope: !533)
!553 = !DILocation(line: 557, column: 24, scope: !533)
!554 = !DILocation(line: 558, column: 5, scope: !533)
!555 = !DILocation(line: 558, column: 24, scope: !533)
!556 = !DILocation(line: 559, column: 5, scope: !533)
!557 = !DILocation(line: 559, column: 24, scope: !533)
!558 = !DILocation(line: 560, column: 1, scope: !533)
!559 = distinct !DISubprogram(name: "predict_4x4_ddr", scope: !1, file: !1, line: 244, type: !154, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !560)
!560 = !{!561, !562, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!561 = !DILocalVariable(name: "src", arg: 1, scope: !559, file: !1, line: 244, type: !71)
!562 = !DILocalVariable(name: "lt", scope: !559, file: !1, line: 246, type: !563)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!564 = !DILocalVariable(name: "l0", scope: !559, file: !1, line: 247, type: !563)
!565 = !DILocalVariable(name: "l1", scope: !559, file: !1, line: 247, type: !563)
!566 = !DILocalVariable(name: "l2", scope: !559, file: !1, line: 247, type: !563)
!567 = !DILocalVariable(name: "l3", scope: !559, file: !1, line: 247, type: !563)
!568 = !DILocalVariable(name: "t0", scope: !559, file: !1, line: 248, type: !563)
!569 = !DILocalVariable(name: "t1", scope: !559, file: !1, line: 248, type: !563)
!570 = !DILocalVariable(name: "t2", scope: !559, file: !1, line: 248, type: !563)
!571 = !DILocalVariable(name: "t3", scope: !559, file: !1, line: 248, type: !563)
!572 = !DILocalVariable(name: "vec", scope: !559, file: !1, line: 249, type: !59)
!573 = !DILocation(line: 0, scope: !559)
!574 = !DILocation(line: 246, column: 20, scope: !559)
!575 = !DILocation(line: 247, column: 5, scope: !559)
!576 = !DILocation(line: 248, column: 5, scope: !559)
!577 = !DILocation(line: 249, column: 21, scope: !559)
!578 = !DILocation(line: 250, column: 21, scope: !559)
!579 = !DILocation(line: 250, column: 33, scope: !559)
!580 = !DILocation(line: 250, column: 18, scope: !559)
!581 = !DILocation(line: 251, column: 21, scope: !559)
!582 = !DILocation(line: 251, column: 33, scope: !559)
!583 = !DILocation(line: 251, column: 18, scope: !559)
!584 = !DILocation(line: 252, column: 21, scope: !559)
!585 = !DILocation(line: 252, column: 33, scope: !559)
!586 = !DILocation(line: 252, column: 18, scope: !559)
!587 = !DILocation(line: 253, column: 37, scope: !559)
!588 = !{!589, !589, i64 0}
!589 = !{!"int", !110, i64 0}
!590 = !DILocation(line: 254, column: 49, scope: !559)
!591 = !DILocation(line: 254, column: 56, scope: !559)
!592 = !DILocation(line: 254, column: 54, scope: !559)
!593 = !DILocation(line: 254, column: 18, scope: !559)
!594 = !DILocation(line: 254, column: 37, scope: !559)
!595 = !DILocation(line: 255, column: 49, scope: !559)
!596 = !DILocation(line: 255, column: 56, scope: !559)
!597 = !DILocation(line: 255, column: 54, scope: !559)
!598 = !DILocation(line: 255, column: 18, scope: !559)
!599 = !DILocation(line: 255, column: 37, scope: !559)
!600 = !DILocation(line: 256, column: 49, scope: !559)
!601 = !DILocation(line: 256, column: 56, scope: !559)
!602 = !DILocation(line: 256, column: 54, scope: !559)
!603 = !DILocation(line: 256, column: 18, scope: !559)
!604 = !DILocation(line: 256, column: 37, scope: !559)
!605 = !DILocation(line: 257, column: 1, scope: !559)
!606 = distinct !DISubprogram(name: "predict_4x4_vr", scope: !1, file: !1, line: 259, type: !154, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!608 = !DILocalVariable(name: "src", arg: 1, scope: !606, file: !1, line: 259, type: !71)
!609 = !DILocalVariable(name: "lt", scope: !606, file: !1, line: 261, type: !563)
!610 = !DILocalVariable(name: "l0", scope: !606, file: !1, line: 262, type: !563)
!611 = !DILocalVariable(name: "l1", scope: !606, file: !1, line: 262, type: !563)
!612 = !DILocalVariable(name: "l2", scope: !606, file: !1, line: 262, type: !563)
!613 = !DILocalVariable(name: "l3", scope: !606, file: !1, line: 262, type: !563)
!614 = !DILocalVariable(name: "t0", scope: !606, file: !1, line: 263, type: !563)
!615 = !DILocalVariable(name: "t1", scope: !606, file: !1, line: 263, type: !563)
!616 = !DILocalVariable(name: "t2", scope: !606, file: !1, line: 263, type: !563)
!617 = !DILocalVariable(name: "t3", scope: !606, file: !1, line: 263, type: !563)
!618 = !DILocalVariable(name: "ltt0", scope: !606, file: !1, line: 264, type: !563)
!619 = !DILocalVariable(name: "t0t1", scope: !606, file: !1, line: 265, type: !563)
!620 = !DILocalVariable(name: "t1t2", scope: !606, file: !1, line: 266, type: !563)
!621 = !DILocalVariable(name: "t2t3", scope: !606, file: !1, line: 267, type: !563)
!622 = !DILocalVariable(name: "l0lt", scope: !606, file: !1, line: 268, type: !563)
!623 = !DILocalVariable(name: "l1l0", scope: !606, file: !1, line: 269, type: !563)
!624 = !DILocalVariable(name: "l2l1", scope: !606, file: !1, line: 270, type: !563)
!625 = !DILocation(line: 0, scope: !606)
!626 = !DILocation(line: 261, column: 20, scope: !606)
!627 = !DILocation(line: 262, column: 5, scope: !606)
!628 = !DILocation(line: 263, column: 5, scope: !606)
!629 = !DILocation(line: 264, column: 25, scope: !606)
!630 = !DILocation(line: 264, column: 30, scope: !606)
!631 = !DILocation(line: 265, column: 25, scope: !606)
!632 = !DILocation(line: 265, column: 30, scope: !606)
!633 = !DILocation(line: 266, column: 25, scope: !606)
!634 = !DILocation(line: 266, column: 30, scope: !606)
!635 = !DILocation(line: 267, column: 25, scope: !606)
!636 = !DILocation(line: 267, column: 30, scope: !606)
!637 = !DILocation(line: 268, column: 30, scope: !606)
!638 = !DILocation(line: 269, column: 25, scope: !606)
!639 = !DILocation(line: 269, column: 30, scope: !606)
!640 = !DILocation(line: 273, column: 27, scope: !606)
!641 = !DILocation(line: 273, column: 5, scope: !606)
!642 = !DILocation(line: 273, column: 25, scope: !606)
!643 = !DILocation(line: 272, column: 25, scope: !606)
!644 = !DILocation(line: 276, column: 27, scope: !606)
!645 = !DILocation(line: 276, column: 5, scope: !606)
!646 = !DILocation(line: 276, column: 25, scope: !606)
!647 = !DILocation(line: 275, column: 5, scope: !606)
!648 = !DILocation(line: 275, column: 25, scope: !606)
!649 = !DILocation(line: 279, column: 27, scope: !606)
!650 = !DILocation(line: 279, column: 5, scope: !606)
!651 = !DILocation(line: 279, column: 25, scope: !606)
!652 = !DILocation(line: 278, column: 5, scope: !606)
!653 = !DILocation(line: 278, column: 25, scope: !606)
!654 = !DILocation(line: 281, column: 27, scope: !606)
!655 = !DILocation(line: 281, column: 5, scope: !606)
!656 = !DILocation(line: 281, column: 25, scope: !606)
!657 = !DILocation(line: 284, column: 33, scope: !606)
!658 = !DILocation(line: 284, column: 27, scope: !606)
!659 = !DILocation(line: 284, column: 5, scope: !606)
!660 = !DILocation(line: 284, column: 25, scope: !606)
!661 = !DILocation(line: 283, column: 5, scope: !606)
!662 = !DILocation(line: 283, column: 25, scope: !606)
!663 = !DILocation(line: 287, column: 33, scope: !606)
!664 = !DILocation(line: 287, column: 27, scope: !606)
!665 = !DILocation(line: 287, column: 5, scope: !606)
!666 = !DILocation(line: 287, column: 25, scope: !606)
!667 = !DILocation(line: 286, column: 5, scope: !606)
!668 = !DILocation(line: 286, column: 25, scope: !606)
!669 = !DILocation(line: 290, column: 33, scope: !606)
!670 = !DILocation(line: 290, column: 27, scope: !606)
!671 = !DILocation(line: 290, column: 5, scope: !606)
!672 = !DILocation(line: 290, column: 25, scope: !606)
!673 = !DILocation(line: 289, column: 5, scope: !606)
!674 = !DILocation(line: 289, column: 25, scope: !606)
!675 = !DILocation(line: 292, column: 33, scope: !606)
!676 = !DILocation(line: 292, column: 27, scope: !606)
!677 = !DILocation(line: 292, column: 5, scope: !606)
!678 = !DILocation(line: 292, column: 25, scope: !606)
!679 = !DILocation(line: 293, column: 33, scope: !606)
!680 = !DILocation(line: 293, column: 27, scope: !606)
!681 = !DILocation(line: 293, column: 5, scope: !606)
!682 = !DILocation(line: 293, column: 25, scope: !606)
!683 = !DILocation(line: 270, column: 25, scope: !606)
!684 = !DILocation(line: 270, column: 30, scope: !606)
!685 = !DILocation(line: 294, column: 33, scope: !606)
!686 = !DILocation(line: 294, column: 27, scope: !606)
!687 = !DILocation(line: 294, column: 5, scope: !606)
!688 = !DILocation(line: 294, column: 25, scope: !606)
!689 = !DILocation(line: 295, column: 1, scope: !606)
!690 = distinct !DISubprogram(name: "predict_4x4_hd", scope: !1, file: !1, line: 297, type: !154, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708}
!692 = !DILocalVariable(name: "src", arg: 1, scope: !690, file: !1, line: 297, type: !71)
!693 = !DILocalVariable(name: "lt", scope: !690, file: !1, line: 299, type: !563)
!694 = !DILocalVariable(name: "l0", scope: !690, file: !1, line: 300, type: !563)
!695 = !DILocalVariable(name: "l1", scope: !690, file: !1, line: 300, type: !563)
!696 = !DILocalVariable(name: "l2", scope: !690, file: !1, line: 300, type: !563)
!697 = !DILocalVariable(name: "l3", scope: !690, file: !1, line: 300, type: !563)
!698 = !DILocalVariable(name: "t0", scope: !690, file: !1, line: 301, type: !563)
!699 = !DILocalVariable(name: "t1", scope: !690, file: !1, line: 301, type: !563)
!700 = !DILocalVariable(name: "t2", scope: !690, file: !1, line: 301, type: !563)
!701 = !DILocalVariable(name: "t3", scope: !690, file: !1, line: 301, type: !563)
!702 = !DILocalVariable(name: "ltt0", scope: !690, file: !1, line: 302, type: !563)
!703 = !DILocalVariable(name: "t0t1", scope: !690, file: !1, line: 303, type: !563)
!704 = !DILocalVariable(name: "t1t2", scope: !690, file: !1, line: 304, type: !563)
!705 = !DILocalVariable(name: "l0lt", scope: !690, file: !1, line: 305, type: !563)
!706 = !DILocalVariable(name: "l1l0", scope: !690, file: !1, line: 306, type: !563)
!707 = !DILocalVariable(name: "l2l1", scope: !690, file: !1, line: 307, type: !563)
!708 = !DILocalVariable(name: "l3l2", scope: !690, file: !1, line: 308, type: !563)
!709 = !DILocation(line: 0, scope: !690)
!710 = !DILocation(line: 299, column: 19, scope: !690)
!711 = !DILocation(line: 300, column: 5, scope: !690)
!712 = !DILocation(line: 301, column: 5, scope: !690)
!713 = !DILocation(line: 302, column: 25, scope: !690)
!714 = !DILocation(line: 302, column: 30, scope: !690)
!715 = !DILocation(line: 303, column: 25, scope: !690)
!716 = !DILocation(line: 303, column: 30, scope: !690)
!717 = !DILocation(line: 305, column: 30, scope: !690)
!718 = !DILocation(line: 306, column: 25, scope: !690)
!719 = !DILocation(line: 306, column: 30, scope: !690)
!720 = !DILocation(line: 307, column: 25, scope: !690)
!721 = !DILocation(line: 307, column: 30, scope: !690)
!722 = !DILocation(line: 308, column: 25, scope: !690)
!723 = !DILocation(line: 308, column: 30, scope: !690)
!724 = !DILocation(line: 311, column: 27, scope: !690)
!725 = !DILocation(line: 311, column: 5, scope: !690)
!726 = !DILocation(line: 311, column: 25, scope: !690)
!727 = !DILocation(line: 310, column: 25, scope: !690)
!728 = !DILocation(line: 313, column: 33, scope: !690)
!729 = !DILocation(line: 313, column: 27, scope: !690)
!730 = !DILocation(line: 313, column: 5, scope: !690)
!731 = !DILocation(line: 313, column: 25, scope: !690)
!732 = !DILocation(line: 312, column: 5, scope: !690)
!733 = !DILocation(line: 312, column: 25, scope: !690)
!734 = !DILocation(line: 314, column: 33, scope: !690)
!735 = !DILocation(line: 314, column: 27, scope: !690)
!736 = !DILocation(line: 314, column: 5, scope: !690)
!737 = !DILocation(line: 314, column: 25, scope: !690)
!738 = !DILocation(line: 304, column: 25, scope: !690)
!739 = !DILocation(line: 304, column: 30, scope: !690)
!740 = !DILocation(line: 315, column: 33, scope: !690)
!741 = !DILocation(line: 315, column: 27, scope: !690)
!742 = !DILocation(line: 315, column: 5, scope: !690)
!743 = !DILocation(line: 315, column: 25, scope: !690)
!744 = !DILocation(line: 317, column: 27, scope: !690)
!745 = !DILocation(line: 317, column: 5, scope: !690)
!746 = !DILocation(line: 317, column: 25, scope: !690)
!747 = !DILocation(line: 316, column: 5, scope: !690)
!748 = !DILocation(line: 316, column: 25, scope: !690)
!749 = !DILocation(line: 319, column: 33, scope: !690)
!750 = !DILocation(line: 319, column: 27, scope: !690)
!751 = !DILocation(line: 319, column: 5, scope: !690)
!752 = !DILocation(line: 319, column: 25, scope: !690)
!753 = !DILocation(line: 318, column: 5, scope: !690)
!754 = !DILocation(line: 318, column: 25, scope: !690)
!755 = !DILocation(line: 321, column: 27, scope: !690)
!756 = !DILocation(line: 321, column: 5, scope: !690)
!757 = !DILocation(line: 321, column: 25, scope: !690)
!758 = !DILocation(line: 320, column: 5, scope: !690)
!759 = !DILocation(line: 320, column: 25, scope: !690)
!760 = !DILocation(line: 323, column: 33, scope: !690)
!761 = !DILocation(line: 323, column: 27, scope: !690)
!762 = !DILocation(line: 323, column: 5, scope: !690)
!763 = !DILocation(line: 323, column: 25, scope: !690)
!764 = !DILocation(line: 322, column: 5, scope: !690)
!765 = !DILocation(line: 322, column: 25, scope: !690)
!766 = !DILocation(line: 324, column: 27, scope: !690)
!767 = !DILocation(line: 324, column: 5, scope: !690)
!768 = !DILocation(line: 324, column: 25, scope: !690)
!769 = !DILocation(line: 325, column: 33, scope: !690)
!770 = !DILocation(line: 325, column: 27, scope: !690)
!771 = !DILocation(line: 325, column: 5, scope: !690)
!772 = !DILocation(line: 325, column: 25, scope: !690)
!773 = !DILocation(line: 326, column: 1, scope: !690)
!774 = distinct !DISubprogram(name: "predict_4x4_hu", scope: !1, file: !1, line: 359, type: !154, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !775)
!775 = !{!776, !777, !778, !779, !780, !781, !782, !783}
!776 = !DILocalVariable(name: "src", arg: 1, scope: !774, file: !1, line: 359, type: !71)
!777 = !DILocalVariable(name: "l0", scope: !774, file: !1, line: 361, type: !563)
!778 = !DILocalVariable(name: "l1", scope: !774, file: !1, line: 361, type: !563)
!779 = !DILocalVariable(name: "l2", scope: !774, file: !1, line: 361, type: !563)
!780 = !DILocalVariable(name: "l3", scope: !774, file: !1, line: 361, type: !563)
!781 = !DILocalVariable(name: "l1l0", scope: !774, file: !1, line: 362, type: !563)
!782 = !DILocalVariable(name: "l2l1", scope: !774, file: !1, line: 363, type: !563)
!783 = !DILocalVariable(name: "l3l2", scope: !774, file: !1, line: 364, type: !563)
!784 = !DILocation(line: 0, scope: !774)
!785 = !DILocation(line: 361, column: 5, scope: !774)
!786 = !DILocation(line: 362, column: 25, scope: !774)
!787 = !DILocation(line: 362, column: 30, scope: !774)
!788 = !DILocation(line: 363, column: 30, scope: !774)
!789 = !DILocation(line: 364, column: 25, scope: !774)
!790 = !DILocation(line: 364, column: 30, scope: !774)
!791 = !DILocation(line: 366, column: 27, scope: !774)
!792 = !DILocation(line: 366, column: 25, scope: !774)
!793 = !DILocation(line: 367, column: 33, scope: !774)
!794 = !DILocation(line: 367, column: 27, scope: !774)
!795 = !DILocation(line: 367, column: 5, scope: !774)
!796 = !DILocation(line: 367, column: 25, scope: !774)
!797 = !DILocation(line: 370, column: 27, scope: !774)
!798 = !DILocation(line: 370, column: 5, scope: !774)
!799 = !DILocation(line: 370, column: 25, scope: !774)
!800 = !DILocation(line: 369, column: 5, scope: !774)
!801 = !DILocation(line: 369, column: 25, scope: !774)
!802 = !DILocation(line: 373, column: 33, scope: !774)
!803 = !DILocation(line: 373, column: 27, scope: !774)
!804 = !DILocation(line: 373, column: 5, scope: !774)
!805 = !DILocation(line: 373, column: 25, scope: !774)
!806 = !DILocation(line: 372, column: 5, scope: !774)
!807 = !DILocation(line: 372, column: 25, scope: !774)
!808 = !DILocation(line: 376, column: 27, scope: !774)
!809 = !DILocation(line: 376, column: 5, scope: !774)
!810 = !DILocation(line: 376, column: 25, scope: !774)
!811 = !DILocation(line: 375, column: 5, scope: !774)
!812 = !DILocation(line: 375, column: 25, scope: !774)
!813 = !DILocation(line: 379, column: 34, scope: !774)
!814 = !DILocation(line: 379, column: 31, scope: !774)
!815 = !DILocation(line: 379, column: 38, scope: !774)
!816 = !DILocation(line: 379, column: 27, scope: !774)
!817 = !DILocation(line: 379, column: 5, scope: !774)
!818 = !DILocation(line: 379, column: 25, scope: !774)
!819 = !DILocation(line: 378, column: 5, scope: !774)
!820 = !DILocation(line: 378, column: 25, scope: !774)
!821 = !DILocation(line: 384, column: 5, scope: !774)
!822 = !DILocation(line: 384, column: 25, scope: !774)
!823 = !DILocation(line: 383, column: 5, scope: !774)
!824 = !DILocation(line: 386, column: 25, scope: !774)
!825 = !DILocation(line: 383, column: 25, scope: !774)
!826 = !DILocation(line: 381, column: 5, scope: !774)
!827 = !DILocation(line: 381, column: 25, scope: !774)
!828 = !DILocation(line: 387, column: 1, scope: !774)
!829 = !DISubprogram(name: "predict_16x16_dc_core_mmxext", scope: !1, file: !1, line: 31, type: !830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !71, !76}
!832 = !DISubprogram(name: "predict_16x16_p_core_mmxext", scope: !1, file: !1, line: 33, type: !833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !71, !76, !76, !76}
!835 = !DISubprogram(name: "predict_16x16_dc_core_sse2", scope: !1, file: !1, line: 54, type: !830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!836 = !DISubprogram(name: "predict_16x16_p_core_sse2", scope: !1, file: !1, line: 56, type: !833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!837 = !DISubprogram(name: "predict_8x8c_p_core_mmxext", scope: !1, file: !1, line: 34, type: !833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!838 = !DISubprogram(name: "predict_8x8c_dc_core_mmxext", scope: !1, file: !1, line: 35, type: !839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !71, !76, !76}
!841 = !DISubprogram(name: "predict_8x8_vr_core_mmxext", scope: !1, file: !1, line: 49, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
