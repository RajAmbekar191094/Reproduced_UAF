; ModuleID = './midl.c'
source_filename = "./midl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MDB_ID2 = type { i64, ptr }

@.str = private unnamed_addr constant [6 x i8] c"x > 0\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"./midl.c\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.mdb_mid2l_insert = private unnamed_addr constant [42 x i8] c"int mdb_mid2l_insert(MDB_ID2L, MDB_ID2 *)\00", align 1, !dbg !12

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define noalias ptr @mdb_midl_alloc(i32 noundef %0) local_unnamed_addr #0 !dbg !30 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !41, metadata !DIExpression()), !dbg !43
  %2 = add nsw i32 %0, 2, !dbg !44
  %3 = sext i32 %2 to i64, !dbg !45
  %4 = shl nsw i64 %3, 3, !dbg !46
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #15, !dbg !47
  call void @llvm.dbg.value(metadata ptr %5, metadata !42, metadata !DIExpression()), !dbg !43
  %6 = icmp eq ptr %5, null, !dbg !48
  br i1 %6, label %10, label %7, !dbg !50

7:                                                ; preds = %1
  %8 = sext i32 %0 to i64, !dbg !51
  %9 = getelementptr inbounds i64, ptr %5, i64 1, !dbg !52
  call void @llvm.dbg.value(metadata ptr %9, metadata !42, metadata !DIExpression()), !dbg !43
  store i64 %8, ptr %5, align 8, !dbg !53, !tbaa !54
  br label %10, !dbg !58

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ null, %1 ], !dbg !43
  call void @llvm.dbg.value(metadata ptr %11, metadata !42, metadata !DIExpression()), !dbg !43
  ret ptr %11, !dbg !59
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !60 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @mdb_midl_free(ptr noundef %0) local_unnamed_addr #4 !dbg !66 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !70, metadata !DIExpression()), !dbg !71
  %2 = icmp eq ptr %0, null, !dbg !72
  br i1 %2, label %5, label %3, !dbg !74

3:                                                ; preds = %1
  %4 = getelementptr inbounds i64, ptr %0, i64 -1, !dbg !75
  tail call void @free(ptr noundef nonnull %4) #16, !dbg !76
  br label %5, !dbg !76

5:                                                ; preds = %3, %1
  ret void, !dbg !77
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !78 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn uwtable
define i32 @mdb_midl_shrink(ptr nocapture noundef %0) local_unnamed_addr #6 !dbg !81 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !86, metadata !DIExpression()), !dbg !88
  %2 = load ptr, ptr %0, align 8, !dbg !89, !tbaa !90
  call void @llvm.dbg.value(metadata ptr %2, metadata !87, metadata !DIExpression()), !dbg !88
  %3 = getelementptr inbounds i64, ptr %2, i64 -1, !dbg !92
  call void @llvm.dbg.value(metadata ptr %3, metadata !87, metadata !DIExpression()), !dbg !88
  %4 = load i64, ptr %3, align 8, !dbg !94, !tbaa !54
  %5 = icmp ugt i64 %4, 131071, !dbg !95
  br i1 %5, label %6, label %9, !dbg !96

6:                                                ; preds = %1
  %7 = tail call dereferenceable_or_null(1048576) ptr @realloc(ptr noundef nonnull %3, i64 noundef 1048576) #17, !dbg !97
  call void @llvm.dbg.value(metadata ptr %7, metadata !87, metadata !DIExpression()), !dbg !88
  %8 = getelementptr inbounds i64, ptr %7, i64 1, !dbg !99
  call void @llvm.dbg.value(metadata ptr %8, metadata !87, metadata !DIExpression()), !dbg !88
  store i64 131071, ptr %7, align 8, !dbg !100, !tbaa !54
  store ptr %8, ptr %0, align 8, !dbg !101, !tbaa !90
  br label %9, !dbg !102

9:                                                ; preds = %1, %6
  %10 = phi i32 [ 1, %6 ], [ 0, %1 ], !dbg !88
  ret i32 %10, !dbg !103
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !104 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn uwtable
define i32 @mdb_midl_grow(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #6 !dbg !107 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !111, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i32 %1, metadata !112, metadata !DIExpression()), !dbg !114
  %3 = load ptr, ptr %0, align 8, !dbg !115, !tbaa !90
  %4 = getelementptr inbounds i64, ptr %3, i64 -1, !dbg !116
  call void @llvm.dbg.value(metadata ptr %4, metadata !113, metadata !DIExpression()), !dbg !114
  %5 = load i64, ptr %4, align 8, !dbg !117, !tbaa !54
  %6 = sext i32 %1 to i64, !dbg !118
  %7 = add i64 %5, %6, !dbg !119
  %8 = shl i64 %7, 3, !dbg !120
  %9 = add i64 %8, 16, !dbg !120
  %10 = tail call ptr @realloc(ptr noundef nonnull %4, i64 noundef %9) #17, !dbg !121
  call void @llvm.dbg.value(metadata ptr %10, metadata !113, metadata !DIExpression()), !dbg !114
  %11 = icmp eq ptr %10, null, !dbg !122
  br i1 %11, label %16, label %12, !dbg !124

12:                                               ; preds = %2
  %13 = getelementptr inbounds i64, ptr %10, i64 1, !dbg !125
  call void @llvm.dbg.value(metadata ptr %13, metadata !113, metadata !DIExpression()), !dbg !114
  %14 = load i64, ptr %10, align 8, !dbg !126, !tbaa !54
  %15 = add i64 %14, %6, !dbg !126
  store i64 %15, ptr %10, align 8, !dbg !126, !tbaa !54
  store ptr %13, ptr %0, align 8, !dbg !127, !tbaa !90
  br label %16, !dbg !128

16:                                               ; preds = %2, %12
  %17 = phi i32 [ 0, %12 ], [ 12, %2 ], !dbg !114
  ret i32 %17, !dbg !129
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define i32 @mdb_midl_append(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #6 !dbg !130 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !134, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i64 %1, metadata !135, metadata !DIExpression()), !dbg !137
  %3 = load ptr, ptr %0, align 8, !dbg !138, !tbaa !90
  call void @llvm.dbg.value(metadata ptr %3, metadata !136, metadata !DIExpression()), !dbg !137
  %4 = load i64, ptr %3, align 8, !dbg !139, !tbaa !54
  %5 = getelementptr inbounds i64, ptr %3, i64 -1, !dbg !141
  %6 = load i64, ptr %5, align 8, !dbg !141, !tbaa !54
  %7 = icmp ult i64 %4, %6, !dbg !142
  br i1 %7, label %18, label %8, !dbg !143

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %0, metadata !111, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i32 131071, metadata !112, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata ptr %5, metadata !113, metadata !DIExpression()), !dbg !144
  %9 = shl i64 %6, 3, !dbg !148
  %10 = add i64 %9, 1048584, !dbg !148
  %11 = tail call ptr @realloc(ptr noundef nonnull %5, i64 noundef %10) #17, !dbg !149
  call void @llvm.dbg.value(metadata ptr %11, metadata !113, metadata !DIExpression()), !dbg !144
  %12 = icmp eq ptr %11, null, !dbg !150
  br i1 %12, label %23, label %13, !dbg !151

13:                                               ; preds = %8
  %14 = getelementptr inbounds i64, ptr %11, i64 1, !dbg !152
  call void @llvm.dbg.value(metadata ptr %14, metadata !113, metadata !DIExpression()), !dbg !144
  %15 = load i64, ptr %11, align 8, !dbg !153, !tbaa !54
  %16 = add i64 %15, 131071, !dbg !153
  store i64 %16, ptr %11, align 8, !dbg !153, !tbaa !54
  store ptr %14, ptr %0, align 8, !dbg !154, !tbaa !90
  call void @llvm.dbg.value(metadata ptr %14, metadata !136, metadata !DIExpression()), !dbg !137
  %17 = load i64, ptr %14, align 8, !dbg !155, !tbaa !54
  br label %18, !dbg !156

18:                                               ; preds = %13, %2
  %19 = phi i64 [ %17, %13 ], [ %4, %2 ], !dbg !155
  %20 = phi ptr [ %14, %13 ], [ %3, %2 ], !dbg !137
  call void @llvm.dbg.value(metadata ptr %20, metadata !136, metadata !DIExpression()), !dbg !137
  %21 = add i64 %19, 1, !dbg !155
  store i64 %21, ptr %20, align 8, !dbg !155, !tbaa !54
  %22 = getelementptr inbounds i64, ptr %20, i64 %21, !dbg !157
  store i64 %1, ptr %22, align 8, !dbg !158, !tbaa !54
  br label %23, !dbg !159

23:                                               ; preds = %8, %18
  %24 = phi i32 [ 0, %18 ], [ 12, %8 ], !dbg !137
  ret i32 %24, !dbg !160
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define i32 @mdb_midl_append_list(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 !dbg !161 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !165, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata ptr %1, metadata !166, metadata !DIExpression()), !dbg !168
  %3 = load ptr, ptr %0, align 8, !dbg !169, !tbaa !90
  call void @llvm.dbg.value(metadata ptr %3, metadata !167, metadata !DIExpression()), !dbg !168
  %4 = load i64, ptr %3, align 8, !dbg !170, !tbaa !54
  %5 = load i64, ptr %1, align 8, !dbg !172, !tbaa !54
  %6 = add i64 %5, %4, !dbg !173
  %7 = getelementptr inbounds i64, ptr %3, i64 -1, !dbg !174
  %8 = load i64, ptr %7, align 8, !dbg !174, !tbaa !54
  %9 = icmp ult i64 %6, %8, !dbg !175
  br i1 %9, label %24, label %10, !dbg !176

10:                                               ; preds = %2
  call void @llvm.dbg.value(metadata ptr %0, metadata !111, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata i64 %5, metadata !112, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !177
  call void @llvm.dbg.value(metadata ptr %7, metadata !113, metadata !DIExpression()), !dbg !177
  %11 = shl i64 %5, 32, !dbg !181
  %12 = ashr exact i64 %11, 32, !dbg !181
  %13 = add i64 %12, %8, !dbg !182
  %14 = shl i64 %13, 3, !dbg !183
  %15 = add i64 %14, 16, !dbg !183
  %16 = tail call ptr @realloc(ptr noundef nonnull %7, i64 noundef %15) #17, !dbg !184
  call void @llvm.dbg.value(metadata ptr %16, metadata !113, metadata !DIExpression()), !dbg !177
  %17 = icmp eq ptr %16, null, !dbg !185
  br i1 %17, label %35, label %18, !dbg !186

18:                                               ; preds = %10
  %19 = getelementptr inbounds i64, ptr %16, i64 1, !dbg !187
  call void @llvm.dbg.value(metadata ptr %19, metadata !113, metadata !DIExpression()), !dbg !177
  %20 = load i64, ptr %16, align 8, !dbg !188, !tbaa !54
  %21 = add i64 %20, %12, !dbg !188
  store i64 %21, ptr %16, align 8, !dbg !188, !tbaa !54
  store ptr %19, ptr %0, align 8, !dbg !189, !tbaa !90
  call void @llvm.dbg.value(metadata ptr %19, metadata !167, metadata !DIExpression()), !dbg !168
  %22 = load i64, ptr %19, align 8, !dbg !190, !tbaa !54
  %23 = load i64, ptr %1, align 8, !dbg !191, !tbaa !54
  br label %24, !dbg !192

24:                                               ; preds = %18, %2
  %25 = phi i64 [ %23, %18 ], [ %5, %2 ], !dbg !191
  %26 = phi i64 [ %22, %18 ], [ %4, %2 ], !dbg !190
  %27 = phi ptr [ %19, %18 ], [ %3, %2 ], !dbg !168
  call void @llvm.dbg.value(metadata ptr %27, metadata !167, metadata !DIExpression()), !dbg !168
  %28 = add i64 %26, 1, !dbg !193
  %29 = getelementptr inbounds i64, ptr %27, i64 %28, !dbg !194
  %30 = getelementptr inbounds i64, ptr %1, i64 1, !dbg !195
  %31 = shl i64 %25, 3, !dbg !196
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %29, ptr nonnull align 8 %30, i64 %31, i1 false), !dbg !197
  %32 = load i64, ptr %1, align 8, !dbg !198, !tbaa !54
  %33 = load i64, ptr %27, align 8, !dbg !199, !tbaa !54
  %34 = add i64 %33, %32, !dbg !199
  store i64 %34, ptr %27, align 8, !dbg !199, !tbaa !54
  br label %35, !dbg !200

35:                                               ; preds = %10, %24
  %36 = phi i32 [ 0, %24 ], [ 12, %10 ], !dbg !168
  ret i32 %36, !dbg !201
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @mdb_midl_sort(ptr nocapture noundef %0) local_unnamed_addr #9 !dbg !202 {
  %2 = alloca [64 x i32], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !204, metadata !DIExpression()), !dbg !217
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #16, !dbg !218
  call void @llvm.dbg.declare(metadata ptr %2, metadata !205, metadata !DIExpression()), !dbg !219
  %3 = load i64, ptr %0, align 8, !dbg !220, !tbaa !54
  %4 = trunc i64 %3 to i32, !dbg !221
  call void @llvm.dbg.value(metadata i32 %4, metadata !213, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i32 1, metadata !212, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i32 0, metadata !214, metadata !DIExpression()), !dbg !217
  br label %5, !dbg !222

5:                                                ; preds = %60, %1
  %6 = phi i32 [ 1, %1 ], [ %61, %60 ]
  %7 = phi i32 [ %4, %1 ], [ %62, %60 ]
  %8 = phi i32 [ 0, %1 ], [ %63, %60 ]
  %9 = add nsw i32 %6, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, ptr %0, i64 %10
  %12 = sext i32 %6 to i64
  %13 = getelementptr inbounds i64, ptr %0, i64 %12
  br label %14, !dbg !223

14:                                               ; preds = %5, %126
  %15 = phi i32 [ %132, %126 ], [ %7, %5 ], !dbg !217
  %16 = phi i32 [ %122, %126 ], [ %8, %5 ], !dbg !217
  call void @llvm.dbg.value(metadata i32 %16, metadata !214, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i32 %15, metadata !213, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i32 %6, metadata !212, metadata !DIExpression()), !dbg !217
  %17 = sub nsw i32 %15, %6, !dbg !225
  %18 = icmp slt i32 %17, 8, !dbg !229
  br i1 %18, label %19, label %64, !dbg !230

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 %6, metadata !210, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !217
  %20 = icmp sgt i32 %15, %6, !dbg !231
  br i1 %20, label %21, label %49, !dbg !235

21:                                               ; preds = %19
  %22 = sext i32 %6 to i64, !dbg !235
  %23 = sext i32 %15 to i64, !dbg !231
  br label %24, !dbg !235

24:                                               ; preds = %21, %43
  %25 = phi i64 [ %22, %21 ], [ %26, %43 ]
  %26 = add nsw i64 %25, 1, !dbg !236
  %27 = getelementptr inbounds i64, ptr %0, i64 %26, !dbg !237
  %28 = load i64, ptr %27, align 8, !dbg !237, !tbaa !54
  call void @llvm.dbg.value(metadata i64 %28, metadata !215, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i64 %25, metadata !209, metadata !DIExpression()), !dbg !217
  %29 = icmp sgt i64 %25, 0, !dbg !239
  %30 = trunc i64 %25 to i32, !dbg !242
  br i1 %29, label %31, label %43, !dbg !242

31:                                               ; preds = %24, %37
  %32 = phi i32 [ %41, %37 ], [ %30, %24 ]
  call void @llvm.dbg.value(metadata i32 %32, metadata !209, metadata !DIExpression()), !dbg !217
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i64, ptr %0, i64 %33, !dbg !243
  %35 = load i64, ptr %34, align 8, !dbg !243, !tbaa !54
  %36 = icmp ult i64 %35, %28, !dbg !246
  br i1 %36, label %37, label %43, !dbg !247

37:                                               ; preds = %31
  %38 = add nuw nsw i32 %32, 1, !dbg !248
  %39 = zext i32 %38 to i64, !dbg !249
  %40 = getelementptr inbounds i64, ptr %0, i64 %39, !dbg !249
  store i64 %35, ptr %40, align 8, !dbg !250, !tbaa !54
  %41 = add nsw i32 %32, -1, !dbg !251
  call void @llvm.dbg.value(metadata i32 %41, metadata !209, metadata !DIExpression()), !dbg !217
  %42 = icmp sgt i32 %32, 1, !dbg !239
  br i1 %42, label %31, label %43, !dbg !242, !llvm.loop !252

43:                                               ; preds = %37, %31, %24
  %44 = phi i32 [ %30, %24 ], [ %32, %31 ], [ 0, %37 ], !dbg !255
  %45 = add nsw i32 %44, 1, !dbg !256
  %46 = sext i32 %45 to i64, !dbg !257
  %47 = getelementptr inbounds i64, ptr %0, i64 %46, !dbg !257
  store i64 %28, ptr %47, align 8, !dbg !258, !tbaa !54
  call void @llvm.dbg.value(metadata i64 %26, metadata !210, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !217
  %48 = icmp eq i64 %26, %23, !dbg !231
  br i1 %48, label %49, label %24, !dbg !235, !llvm.loop !259

49:                                               ; preds = %43, %19
  %50 = icmp eq i32 %16, 0, !dbg !261
  br i1 %50, label %142, label %51, !dbg !263

51:                                               ; preds = %49
  %52 = add nsw i32 %16, -1, !dbg !264
  call void @llvm.dbg.value(metadata i32 %52, metadata !214, metadata !DIExpression()), !dbg !217
  %53 = sext i32 %16 to i64, !dbg !265
  %54 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %53, !dbg !265
  %55 = load i32, ptr %54, align 4, !dbg !265, !tbaa !266
  call void @llvm.dbg.value(metadata i32 %55, metadata !213, metadata !DIExpression()), !dbg !217
  %56 = add nsw i32 %16, -2, !dbg !268
  call void @llvm.dbg.value(metadata i32 %56, metadata !214, metadata !DIExpression()), !dbg !217
  %57 = sext i32 %52 to i64, !dbg !269
  %58 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %57, !dbg !269
  %59 = load i32, ptr %58, align 4, !dbg !269, !tbaa !266
  call void @llvm.dbg.value(metadata i32 %59, metadata !212, metadata !DIExpression()), !dbg !217
  br label %60, !dbg !270

60:                                               ; preds = %51, %133
  %61 = phi i32 [ %134, %133 ], [ %59, %51 ]
  %62 = phi i32 [ %15, %133 ], [ %55, %51 ]
  %63 = phi i32 [ %122, %133 ], [ %56, %51 ]
  br label %5, !dbg !223, !llvm.loop !271

64:                                               ; preds = %14
  %65 = add nsw i32 %15, %6, !dbg !273
  %66 = ashr i32 %65, 1, !dbg !275
  call void @llvm.dbg.value(metadata i32 %66, metadata !211, metadata !DIExpression()), !dbg !217
  %67 = sext i32 %66 to i64, !dbg !276
  %68 = getelementptr inbounds i64, ptr %0, i64 %67, !dbg !276
  %69 = load i64, ptr %68, align 8, !dbg !276, !tbaa !54
  call void @llvm.dbg.value(metadata i64 %69, metadata !216, metadata !DIExpression()), !dbg !217
  %70 = load i64, ptr %11, align 8, !dbg !276, !tbaa !54
  store i64 %70, ptr %68, align 8, !dbg !276, !tbaa !54
  store i64 %69, ptr %11, align 8, !dbg !276, !tbaa !54
  %71 = load i64, ptr %13, align 8, !dbg !278, !tbaa !54
  %72 = sext i32 %15 to i64, !dbg !280
  %73 = getelementptr inbounds i64, ptr %0, i64 %72, !dbg !280
  %74 = load i64, ptr %73, align 8, !dbg !280, !tbaa !54
  %75 = icmp ult i64 %71, %74, !dbg !281
  br i1 %75, label %76, label %78, !dbg !282

76:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 %71, metadata !216, metadata !DIExpression()), !dbg !217
  store i64 %74, ptr %13, align 8, !dbg !283, !tbaa !54
  store i64 %71, ptr %73, align 8, !dbg !283, !tbaa !54
  %77 = load i64, ptr %11, align 8, !dbg !286, !tbaa !54
  br label %78, !dbg !288

78:                                               ; preds = %76, %64
  %79 = phi i64 [ %71, %76 ], [ %74, %64 ], !dbg !289
  %80 = phi i64 [ %77, %76 ], [ %69, %64 ], !dbg !286
  %81 = icmp ult i64 %80, %79, !dbg !290
  br i1 %81, label %82, label %84, !dbg !291

82:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 %80, metadata !216, metadata !DIExpression()), !dbg !217
  store i64 %79, ptr %11, align 8, !dbg !292, !tbaa !54
  store i64 %80, ptr %73, align 8, !dbg !292, !tbaa !54
  %83 = load i64, ptr %11, align 8, !dbg !295, !tbaa !54
  br label %84, !dbg !297

84:                                               ; preds = %82, %78
  %85 = phi i64 [ %83, %82 ], [ %80, %78 ], !dbg !295
  %86 = load i64, ptr %13, align 8, !dbg !298, !tbaa !54
  %87 = icmp ult i64 %86, %85, !dbg !299
  br i1 %87, label %88, label %89, !dbg !300

88:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 %86, metadata !216, metadata !DIExpression()), !dbg !217
  store i64 %85, ptr %13, align 8, !dbg !301, !tbaa !54
  store i64 %86, ptr %11, align 8, !dbg !301, !tbaa !54
  br label %89, !dbg !304

89:                                               ; preds = %88, %84
  %90 = phi i64 [ %86, %88 ], [ %85, %84 ], !dbg !305
  call void @llvm.dbg.value(metadata i32 %9, metadata !209, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i32 %15, metadata !210, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i64 %90, metadata !215, metadata !DIExpression()), !dbg !217
  br label %91, !dbg !306

91:                                               ; preds = %115, %89
  %92 = phi i32 [ %15, %89 ], [ %116, %115 ], !dbg !307
  %93 = phi i32 [ %9, %89 ], [ %103, %115 ], !dbg !307
  call void @llvm.dbg.value(metadata i32 %93, metadata !209, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i32 %92, metadata !210, metadata !DIExpression()), !dbg !217
  %94 = sext i32 %93 to i64, !dbg !308
  br label %95, !dbg !308

95:                                               ; preds = %95, %91
  %96 = phi i64 [ %97, %95 ], [ %94, %91 ], !dbg !307
  call void @llvm.dbg.value(metadata i64 %96, metadata !209, metadata !DIExpression()), !dbg !217
  %97 = add nsw i64 %96, 1, !dbg !312
  call void @llvm.dbg.value(metadata i64 %97, metadata !209, metadata !DIExpression()), !dbg !217
  %98 = getelementptr inbounds i64, ptr %0, i64 %97, !dbg !313
  %99 = load i64, ptr %98, align 8, !dbg !313, !tbaa !54
  %100 = icmp ugt i64 %99, %90, !dbg !314
  br i1 %100, label %95, label %101, !dbg !315, !llvm.loop !316

101:                                              ; preds = %95
  %102 = getelementptr inbounds i64, ptr %0, i64 %97, !dbg !313
  %103 = trunc i64 %97 to i32, !dbg !313
  %104 = sext i32 %92 to i64, !dbg !318
  br label %105, !dbg !318

105:                                              ; preds = %101, %105
  %106 = phi i64 [ %104, %101 ], [ %107, %105 ], !dbg !307
  call void @llvm.dbg.value(metadata i64 %106, metadata !210, metadata !DIExpression()), !dbg !217
  %107 = add i64 %106, -1, !dbg !319
  call void @llvm.dbg.value(metadata i64 %107, metadata !210, metadata !DIExpression()), !dbg !217
  %108 = getelementptr inbounds i64, ptr %0, i64 %107, !dbg !320
  %109 = load i64, ptr %108, align 8, !dbg !320, !tbaa !54
  %110 = icmp ult i64 %109, %90, !dbg !321
  br i1 %110, label %105, label %111, !dbg !322, !llvm.loop !323

111:                                              ; preds = %105
  %112 = getelementptr inbounds i64, ptr %0, i64 %107, !dbg !320
  %113 = trunc i64 %106 to i32, !dbg !320
  %114 = icmp sgt i32 %113, %103, !dbg !325
  br i1 %114, label %115, label %117, !dbg !327

115:                                              ; preds = %111
  %116 = trunc i64 %107 to i32, !dbg !320
  call void @llvm.dbg.value(metadata i64 %99, metadata !216, metadata !DIExpression()), !dbg !217
  store i64 %109, ptr %102, align 8, !dbg !328, !tbaa !54
  store i64 %99, ptr %112, align 8, !dbg !328, !tbaa !54
  br label %91, !dbg !330, !llvm.loop !331

117:                                              ; preds = %111
  %118 = trunc i64 %97 to i32, !dbg !313
  %119 = trunc i64 %106 to i32, !dbg !320
  %120 = trunc i64 %107 to i32, !dbg !320
  %121 = trunc i64 %96 to i32, !dbg !313
  store i64 %109, ptr %11, align 8, !dbg !334, !tbaa !54
  store i64 %90, ptr %112, align 8, !dbg !335, !tbaa !54
  %122 = add nsw i32 %16, 2, !dbg !336
  call void @llvm.dbg.value(metadata i32 %122, metadata !214, metadata !DIExpression()), !dbg !217
  %123 = sub i32 %15, %121, !dbg !337
  %124 = sub nsw i32 %120, %6, !dbg !339
  %125 = icmp slt i32 %123, %124, !dbg !340
  br i1 %125, label %133, label %126, !dbg !341

126:                                              ; preds = %117
  %127 = sext i32 %122 to i64, !dbg !342
  %128 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %127, !dbg !342
  store i32 %15, ptr %128, align 4, !dbg !344, !tbaa !266
  %129 = add nsw i32 %16, 1, !dbg !345
  %130 = sext i32 %129 to i64, !dbg !346
  %131 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %130, !dbg !346
  store i32 %118, ptr %131, align 4, !dbg !347, !tbaa !266
  %132 = add nsw i32 %119, -2, !dbg !348
  call void @llvm.dbg.value(metadata i32 %132, metadata !213, metadata !DIExpression()), !dbg !217
  br label %14, !dbg !349, !llvm.loop !271

133:                                              ; preds = %117
  %134 = trunc i64 %97 to i32, !dbg !313
  %135 = trunc i64 %106 to i32, !dbg !320
  %136 = add nsw i32 %135, -2, !dbg !350
  %137 = sext i32 %122 to i64, !dbg !352
  %138 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %137, !dbg !352
  store i32 %136, ptr %138, align 4, !dbg !353, !tbaa !266
  %139 = add nsw i32 %16, 1, !dbg !354
  %140 = sext i32 %139 to i64, !dbg !355
  %141 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %140, !dbg !355
  store i32 %6, ptr %141, align 4, !dbg !356, !tbaa !266
  call void @llvm.dbg.value(metadata i32 %134, metadata !212, metadata !DIExpression()), !dbg !217
  br label %60

142:                                              ; preds = %49
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #16, !dbg !357
  ret void, !dbg !357
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @mdb_mid2l_search(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !358 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !369, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i64 %1, metadata !370, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 0, metadata !371, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 1, metadata !372, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()), !dbg !377
  %3 = load i64, ptr %0, align 8, !dbg !378, !tbaa !379
  %4 = trunc i64 %3 to i32, !dbg !381
  call void @llvm.dbg.value(metadata i32 %4, metadata !374, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 1, metadata !372, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 0, metadata !371, metadata !DIExpression()), !dbg !377
  %5 = icmp eq i32 %4, 0, !dbg !382
  br i1 %5, label %28, label %6, !dbg !383

6:                                                ; preds = %2, %21
  %7 = phi i32 [ %23, %21 ], [ %4, %2 ]
  %8 = phi i32 [ %22, %21 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !374, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 %8, metadata !371, metadata !DIExpression()), !dbg !377
  %9 = lshr i32 %7, 1, !dbg !384
  call void @llvm.dbg.value(metadata i32 %9, metadata !375, metadata !DIExpression()), !dbg !385
  %10 = add i32 %8, 1, !dbg !386
  %11 = add i32 %10, %9, !dbg !387
  call void @llvm.dbg.value(metadata i32 %11, metadata !372, metadata !DIExpression()), !dbg !377
  %12 = zext i32 %11 to i64, !dbg !388
  %13 = getelementptr inbounds %struct.MDB_ID2, ptr %0, i64 %12, !dbg !388
  %14 = load i64, ptr %13, align 8, !dbg !388, !tbaa !379
  %15 = icmp ugt i64 %14, %1, !dbg !388
  %16 = icmp ult i64 %14, %1, !dbg !388
  call void @llvm.dbg.value(metadata i32 poison, metadata !373, metadata !DIExpression()), !dbg !377
  br i1 %15, label %21, label %17, !dbg !389

17:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i1 %16, metadata !373, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !377
  br i1 %16, label %18, label %28, !dbg !390

18:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i32 %11, metadata !371, metadata !DIExpression()), !dbg !377
  %19 = xor i32 %9, -1, !dbg !392
  %20 = add i32 %7, %19, !dbg !395
  call void @llvm.dbg.value(metadata i32 %20, metadata !374, metadata !DIExpression()), !dbg !377
  br label %21

21:                                               ; preds = %18, %6
  %22 = phi i32 [ %11, %18 ], [ %8, %6 ], !dbg !396
  %23 = phi i32 [ %20, %18 ], [ %9, %6 ], !dbg !377
  call void @llvm.dbg.value(metadata i32 %23, metadata !374, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 poison, metadata !373, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 %11, metadata !372, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 %22, metadata !371, metadata !DIExpression()), !dbg !377
  %24 = icmp eq i32 %23, 0, !dbg !382
  br i1 %24, label %25, label %6, !dbg !383, !llvm.loop !397

25:                                               ; preds = %21
  %26 = zext i1 %16 to i32, !dbg !399
  %27 = add i32 %11, %26, !dbg !400
  br label %28, !dbg !400

28:                                               ; preds = %17, %2, %25
  %29 = phi i32 [ %27, %25 ], [ 1, %2 ], [ %11, %17 ]
  ret i32 %29, !dbg !402
}

; Function Attrs: nounwind uwtable
define i32 @mdb_mid2l_insert(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !dbg !403 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !407, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %1, metadata !408, metadata !DIExpression()), !dbg !411
  %3 = load i64, ptr %1, align 8, !dbg !412, !tbaa !379
  call void @llvm.dbg.value(metadata ptr %0, metadata !369, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i64 %3, metadata !370, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 0, metadata !371, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 1, metadata !372, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()), !dbg !413
  %4 = load i64, ptr %0, align 8, !dbg !415, !tbaa !379
  %5 = trunc i64 %4 to i32, !dbg !416
  call void @llvm.dbg.value(metadata i32 %5, metadata !374, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 1, metadata !372, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 0, metadata !371, metadata !DIExpression()), !dbg !413
  %6 = icmp eq i32 %5, 0, !dbg !417
  br i1 %6, label %33, label %7, !dbg !418

7:                                                ; preds = %2, %22
  %8 = phi i32 [ %24, %22 ], [ %5, %2 ]
  %9 = phi i32 [ %23, %22 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !374, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 %9, metadata !371, metadata !DIExpression()), !dbg !413
  %10 = lshr i32 %8, 1, !dbg !419
  call void @llvm.dbg.value(metadata i32 %10, metadata !375, metadata !DIExpression()), !dbg !420
  %11 = add i32 %9, 1, !dbg !421
  %12 = add i32 %11, %10, !dbg !422
  call void @llvm.dbg.value(metadata i32 %12, metadata !372, metadata !DIExpression()), !dbg !413
  %13 = zext i32 %12 to i64, !dbg !423
  %14 = getelementptr inbounds %struct.MDB_ID2, ptr %0, i64 %13, !dbg !423
  %15 = load i64, ptr %14, align 8, !dbg !423, !tbaa !379
  %16 = icmp ugt i64 %15, %3, !dbg !423
  %17 = icmp ult i64 %15, %3, !dbg !423
  call void @llvm.dbg.value(metadata i32 poison, metadata !373, metadata !DIExpression()), !dbg !413
  br i1 %16, label %22, label %18, !dbg !424

18:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i1 %17, metadata !373, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !413
  br i1 %17, label %19, label %29, !dbg !425

19:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 %12, metadata !371, metadata !DIExpression()), !dbg !413
  %20 = xor i32 %10, -1, !dbg !426
  %21 = add i32 %8, %20, !dbg !427
  call void @llvm.dbg.value(metadata i32 %21, metadata !374, metadata !DIExpression()), !dbg !413
  br label %22

22:                                               ; preds = %19, %7
  %23 = phi i32 [ %12, %19 ], [ %9, %7 ], !dbg !428
  %24 = phi i32 [ %21, %19 ], [ %10, %7 ], !dbg !413
  call void @llvm.dbg.value(metadata i32 %24, metadata !374, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 poison, metadata !373, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 %12, metadata !372, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 %23, metadata !371, metadata !DIExpression()), !dbg !413
  %25 = icmp eq i32 %24, 0, !dbg !417
  br i1 %25, label %26, label %7, !dbg !418, !llvm.loop !429

26:                                               ; preds = %22
  %27 = zext i1 %17 to i32, !dbg !431
  %28 = add i32 %12, %27, !dbg !432
  br label %29, !dbg !432

29:                                               ; preds = %18, %26
  %30 = phi i32 [ %28, %26 ], [ %12, %18 ]
  call void @llvm.dbg.value(metadata i32 %30, metadata !409, metadata !DIExpression()), !dbg !411
  %31 = icmp eq i32 %30, 0, !dbg !433
  br i1 %31, label %32, label %33, !dbg !436

32:                                               ; preds = %29
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 276, ptr noundef nonnull @__PRETTY_FUNCTION__.mdb_mid2l_insert) #18, !dbg !433
  unreachable, !dbg !433

33:                                               ; preds = %2, %29
  %34 = phi i32 [ %30, %29 ], [ 1, %2 ]
  %35 = zext i32 %34 to i64, !dbg !437
  %36 = icmp ult i64 %4, %35, !dbg !439
  br i1 %36, label %41, label %37, !dbg !440

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.MDB_ID2, ptr %0, i64 %35, !dbg !441
  %39 = load i64, ptr %38, align 8, !dbg !442, !tbaa !379
  %40 = icmp eq i64 %39, %3, !dbg !443
  br i1 %40, label %74, label %41, !dbg !444

41:                                               ; preds = %37, %33
  %42 = icmp ugt i64 %4, 131070, !dbg !445
  br i1 %42, label %74, label %43, !dbg !447

43:                                               ; preds = %41
  %44 = add nuw nsw i64 %4, 1, !dbg !448
  store i64 %44, ptr %0, align 8, !dbg !448, !tbaa !379
  %45 = trunc i64 %44 to i32, !dbg !450
  call void @llvm.dbg.value(metadata i32 %45, metadata !410, metadata !DIExpression()), !dbg !411
  %46 = icmp ult i32 %34, %45, !dbg !452
  br i1 %46, label %47, label %72, !dbg !454

47:                                               ; preds = %43
  %48 = trunc i64 %4 to i32, !dbg !454
  %49 = add i32 %48, 1, !dbg !454
  %50 = sub i32 %49, %34, !dbg !454
  %51 = and i32 %50, 1, !dbg !454
  %52 = icmp eq i32 %51, 0, !dbg !454
  br i1 %52, label %57, label %53, !dbg !454

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i64 %44, metadata !410, metadata !DIExpression()), !dbg !411
  %54 = getelementptr inbounds %struct.MDB_ID2, ptr %0, i64 %44, !dbg !455
  %55 = and i64 %4, 4294967295, !dbg !456
  %56 = getelementptr inbounds %struct.MDB_ID2, ptr %0, i64 %55, !dbg !456
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull align 8 dereferenceable(16) %56, i64 16, i1 false), !dbg !456, !tbaa.struct !457
  call void @llvm.dbg.value(metadata i64 %4, metadata !410, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !411
  br label %57, !dbg !454

57:                                               ; preds = %53, %47
  %58 = phi i64 [ %44, %47 ], [ %4, %53 ]
  %59 = icmp eq i32 %34, %48, !dbg !454
  br i1 %59, label %72, label %60, !dbg !454

60:                                               ; preds = %57, %60
  %61 = phi i64 [ %67, %60 ], [ %58, %57 ]
  call void @llvm.dbg.value(metadata i64 %61, metadata !410, metadata !DIExpression()), !dbg !411
  %62 = getelementptr inbounds %struct.MDB_ID2, ptr %0, i64 %61, !dbg !455
  %63 = add nsw i64 %61, -1, !dbg !458
  %64 = and i64 %63, 4294967295, !dbg !456
  %65 = getelementptr inbounds %struct.MDB_ID2, ptr %0, i64 %64, !dbg !456
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, ptr noundef nonnull align 8 dereferenceable(16) %65, i64 16, i1 false), !dbg !456, !tbaa.struct !457
  call void @llvm.dbg.value(metadata i64 %63, metadata !410, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata i64 %63, metadata !410, metadata !DIExpression()), !dbg !411
  %66 = getelementptr inbounds %struct.MDB_ID2, ptr %0, i64 %63, !dbg !455
  %67 = add nsw i64 %61, -2, !dbg !458
  %68 = trunc i64 %67 to i32, !dbg !458
  %69 = and i64 %67, 4294967295, !dbg !456
  %70 = getelementptr inbounds %struct.MDB_ID2, ptr %0, i64 %69, !dbg !456
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %66, ptr noundef nonnull align 8 dereferenceable(16) %70, i64 16, i1 false), !dbg !456, !tbaa.struct !457
  call void @llvm.dbg.value(metadata i32 %68, metadata !410, metadata !DIExpression()), !dbg !411
  %71 = icmp ult i32 %34, %68, !dbg !452
  br i1 %71, label %60, label %72, !dbg !454, !llvm.loop !459

72:                                               ; preds = %57, %60, %43
  %73 = getelementptr inbounds %struct.MDB_ID2, ptr %0, i64 %35, !dbg !461
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %73, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !dbg !462, !tbaa.struct !457
  br label %74, !dbg !463

74:                                               ; preds = %41, %37, %72
  %75 = phi i32 [ 0, %72 ], [ -1, %37 ], [ -2, %41 ], !dbg !411
  ret i32 %75, !dbg !464
}

; Function Attrs: noreturn nounwind
declare !dbg !465 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i32 @mdb_mid2l_append(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 !dbg !470 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !472, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata ptr %1, metadata !473, metadata !DIExpression()), !dbg !474
  %3 = load i64, ptr %0, align 8, !dbg !475, !tbaa !379
  %4 = icmp ugt i64 %3, 131070, !dbg !477
  br i1 %4, label %8, label %5, !dbg !478

5:                                                ; preds = %2
  %6 = add nuw nsw i64 %3, 1, !dbg !479
  store i64 %6, ptr %0, align 8, !dbg !479, !tbaa !379
  %7 = getelementptr inbounds %struct.MDB_ID2, ptr %0, i64 %6, !dbg !480
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !dbg !481, !tbaa.struct !457
  br label %8, !dbg !482

8:                                                ; preds = %2, %5
  %9 = phi i32 [ 0, %5 ], [ -2, %2 ], !dbg !474
  ret i32 %9, !dbg !483
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #14

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(1) }
attributes #18 = { noreturn nounwind }

!llvm.dbg.cu = !{!18}
!llvm.module.flags = !{!24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 276, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./midl.c", directory: "/home/raj/FineDB/lib/lmdb", checksumkind: CSK_MD5, checksum: "e0cf8771d5849ea8cb76de6ecbfee323")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 276, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 276, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 336, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 42)
!18 = distinct !DICompileUnit(language: DW_LANG_C11, file: !19, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !20, globals: !23, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "midl.c", directory: "/home/raj/FineDB/lib/lmdb", checksumkind: CSK_MD5, checksum: "e0cf8771d5849ea8cb76de6ecbfee323")
!20 = !{!21, !22}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!0, !7, !12}
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 8, !"PIC Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 2}
!29 = !{!"clang version 16.0.0"}
!30 = distinct !DISubprogram(name: "mdb_midl_alloc", scope: !2, file: !2, line: 104, type: !31, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !40)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !21}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_IDL", file: !34, line: 53, baseType: !35)
!34 = !DIFile(filename: "./midl.h", directory: "/home/raj/FineDB/lib/lmdb", checksumkind: CSK_MD5, checksum: "6d1cee80969f26031bba0df557f605a0")
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_ID", file: !34, line: 45, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 46, baseType: !39)
!38 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !{!41, !42}
!41 = !DILocalVariable(name: "num", arg: 1, scope: !30, file: !2, line: 104, type: !21)
!42 = !DILocalVariable(name: "ids", scope: !30, file: !2, line: 106, type: !33)
!43 = !DILocation(line: 0, scope: !30)
!44 = !DILocation(line: 106, column: 27, scope: !30)
!45 = !DILocation(line: 106, column: 23, scope: !30)
!46 = !DILocation(line: 106, column: 31, scope: !30)
!47 = !DILocation(line: 106, column: 16, scope: !30)
!48 = !DILocation(line: 107, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !30, file: !2, line: 107, column: 6)
!50 = !DILocation(line: 107, column: 6, scope: !30)
!51 = !DILocation(line: 108, column: 12, scope: !49)
!52 = !DILocation(line: 108, column: 7, scope: !49)
!53 = !DILocation(line: 108, column: 10, scope: !49)
!54 = !{!55, !55, i64 0}
!55 = !{!"long", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !DILocation(line: 108, column: 3, scope: !49)
!59 = !DILocation(line: 109, column: 2, scope: !30)
!60 = !DISubprogram(name: "malloc", scope: !61, file: !61, line: 540, type: !62, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !65)
!61 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !37}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !{}
!66 = distinct !DISubprogram(name: "mdb_midl_free", scope: !2, file: !2, line: 112, type: !67, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !69)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !33}
!69 = !{!70}
!70 = !DILocalVariable(name: "ids", arg: 1, scope: !66, file: !2, line: 112, type: !33)
!71 = !DILocation(line: 0, scope: !66)
!72 = !DILocation(line: 114, column: 6, scope: !73)
!73 = distinct !DILexicalBlock(scope: !66, file: !2, line: 114, column: 6)
!74 = !DILocation(line: 114, column: 6, scope: !66)
!75 = !DILocation(line: 115, column: 11, scope: !73)
!76 = !DILocation(line: 115, column: 3, scope: !73)
!77 = !DILocation(line: 116, column: 1, scope: !66)
!78 = !DISubprogram(name: "free", scope: !61, file: !61, line: 555, type: !79, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !65)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !64}
!81 = distinct !DISubprogram(name: "mdb_midl_shrink", scope: !2, file: !2, line: 118, type: !82, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !85)
!82 = !DISubroutineType(types: !83)
!83 = !{!21, !84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!85 = !{!86, !87}
!86 = !DILocalVariable(name: "idp", arg: 1, scope: !81, file: !2, line: 118, type: !84)
!87 = !DILocalVariable(name: "ids", scope: !81, file: !2, line: 120, type: !33)
!88 = !DILocation(line: 0, scope: !81)
!89 = !DILocation(line: 120, column: 16, scope: !81)
!90 = !{!91, !91, i64 0}
!91 = !{!"any pointer", !56, i64 0}
!92 = !DILocation(line: 121, column: 8, scope: !93)
!93 = distinct !DILexicalBlock(scope: !81, file: !2, line: 121, column: 6)
!94 = !DILocation(line: 121, column: 6, scope: !93)
!95 = !DILocation(line: 121, column: 15, scope: !93)
!96 = !DILocation(line: 121, column: 6, scope: !81)
!97 = !DILocation(line: 122, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !2, line: 121, column: 33)
!99 = !DILocation(line: 123, column: 7, scope: !98)
!100 = !DILocation(line: 123, column: 10, scope: !98)
!101 = !DILocation(line: 124, column: 8, scope: !98)
!102 = !DILocation(line: 125, column: 3, scope: !98)
!103 = !DILocation(line: 128, column: 1, scope: !81)
!104 = !DISubprogram(name: "realloc", scope: !61, file: !61, line: 551, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !65)
!105 = !DISubroutineType(types: !106)
!106 = !{!64, !64, !37}
!107 = distinct !DISubprogram(name: "mdb_midl_grow", scope: !2, file: !2, line: 130, type: !108, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{!21, !84, !21}
!110 = !{!111, !112, !113}
!111 = !DILocalVariable(name: "idp", arg: 1, scope: !107, file: !2, line: 130, type: !84)
!112 = !DILocalVariable(name: "num", arg: 2, scope: !107, file: !2, line: 130, type: !21)
!113 = !DILocalVariable(name: "idn", scope: !107, file: !2, line: 132, type: !33)
!114 = !DILocation(line: 0, scope: !107)
!115 = !DILocation(line: 132, column: 16, scope: !107)
!116 = !DILocation(line: 132, column: 20, scope: !107)
!117 = !DILocation(line: 134, column: 22, scope: !107)
!118 = !DILocation(line: 134, column: 29, scope: !107)
!119 = !DILocation(line: 134, column: 27, scope: !107)
!120 = !DILocation(line: 134, column: 38, scope: !107)
!121 = !DILocation(line: 134, column: 8, scope: !107)
!122 = !DILocation(line: 135, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !107, file: !2, line: 135, column: 6)
!124 = !DILocation(line: 135, column: 6, scope: !107)
!125 = !DILocation(line: 137, column: 6, scope: !107)
!126 = !DILocation(line: 137, column: 9, scope: !107)
!127 = !DILocation(line: 138, column: 7, scope: !107)
!128 = !DILocation(line: 139, column: 2, scope: !107)
!129 = !DILocation(line: 140, column: 1, scope: !107)
!130 = distinct !DISubprogram(name: "mdb_midl_append", scope: !2, file: !2, line: 142, type: !131, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{!21, !84, !36}
!133 = !{!134, !135, !136}
!134 = !DILocalVariable(name: "idp", arg: 1, scope: !130, file: !2, line: 142, type: !84)
!135 = !DILocalVariable(name: "id", arg: 2, scope: !130, file: !2, line: 142, type: !36)
!136 = !DILocalVariable(name: "ids", scope: !130, file: !2, line: 144, type: !33)
!137 = !DILocation(line: 0, scope: !130)
!138 = !DILocation(line: 144, column: 16, scope: !130)
!139 = !DILocation(line: 146, column: 6, scope: !140)
!140 = distinct !DILexicalBlock(scope: !130, file: !2, line: 146, column: 6)
!141 = !DILocation(line: 146, column: 16, scope: !140)
!142 = !DILocation(line: 146, column: 13, scope: !140)
!143 = !DILocation(line: 146, column: 6, scope: !130)
!144 = !DILocation(line: 0, scope: !107, inlinedAt: !145)
!145 = distinct !DILocation(line: 147, column: 7, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !2, line: 147, column: 7)
!147 = distinct !DILexicalBlock(scope: !140, file: !2, line: 146, column: 25)
!148 = !DILocation(line: 134, column: 38, scope: !107, inlinedAt: !145)
!149 = !DILocation(line: 134, column: 8, scope: !107, inlinedAt: !145)
!150 = !DILocation(line: 135, column: 7, scope: !123, inlinedAt: !145)
!151 = !DILocation(line: 135, column: 6, scope: !107, inlinedAt: !145)
!152 = !DILocation(line: 137, column: 6, scope: !107, inlinedAt: !145)
!153 = !DILocation(line: 137, column: 9, scope: !107, inlinedAt: !145)
!154 = !DILocation(line: 138, column: 7, scope: !107, inlinedAt: !145)
!155 = !DILocation(line: 151, column: 8, scope: !130)
!156 = !DILocation(line: 150, column: 2, scope: !147)
!157 = !DILocation(line: 152, column: 2, scope: !130)
!158 = !DILocation(line: 152, column: 14, scope: !130)
!159 = !DILocation(line: 153, column: 2, scope: !130)
!160 = !DILocation(line: 154, column: 1, scope: !130)
!161 = distinct !DISubprogram(name: "mdb_midl_append_list", scope: !2, file: !2, line: 156, type: !162, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !164)
!162 = !DISubroutineType(types: !163)
!163 = !{!21, !84, !33}
!164 = !{!165, !166, !167}
!165 = !DILocalVariable(name: "idp", arg: 1, scope: !161, file: !2, line: 156, type: !84)
!166 = !DILocalVariable(name: "app", arg: 2, scope: !161, file: !2, line: 156, type: !33)
!167 = !DILocalVariable(name: "ids", scope: !161, file: !2, line: 158, type: !33)
!168 = !DILocation(line: 0, scope: !161)
!169 = !DILocation(line: 158, column: 16, scope: !161)
!170 = !DILocation(line: 160, column: 6, scope: !171)
!171 = distinct !DILexicalBlock(scope: !161, file: !2, line: 160, column: 6)
!172 = !DILocation(line: 160, column: 15, scope: !171)
!173 = !DILocation(line: 160, column: 13, scope: !171)
!174 = !DILocation(line: 160, column: 25, scope: !171)
!175 = !DILocation(line: 160, column: 22, scope: !171)
!176 = !DILocation(line: 160, column: 6, scope: !161)
!177 = !DILocation(line: 0, scope: !107, inlinedAt: !178)
!178 = distinct !DILocation(line: 161, column: 7, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !2, line: 161, column: 7)
!180 = distinct !DILexicalBlock(scope: !171, file: !2, line: 160, column: 34)
!181 = !DILocation(line: 134, column: 29, scope: !107, inlinedAt: !178)
!182 = !DILocation(line: 134, column: 27, scope: !107, inlinedAt: !178)
!183 = !DILocation(line: 134, column: 38, scope: !107, inlinedAt: !178)
!184 = !DILocation(line: 134, column: 8, scope: !107, inlinedAt: !178)
!185 = !DILocation(line: 135, column: 7, scope: !123, inlinedAt: !178)
!186 = !DILocation(line: 135, column: 6, scope: !107, inlinedAt: !178)
!187 = !DILocation(line: 137, column: 6, scope: !107, inlinedAt: !178)
!188 = !DILocation(line: 137, column: 9, scope: !107, inlinedAt: !178)
!189 = !DILocation(line: 138, column: 7, scope: !107, inlinedAt: !178)
!190 = !DILocation(line: 165, column: 14, scope: !161)
!191 = !DILocation(line: 165, column: 34, scope: !161)
!192 = !DILocation(line: 164, column: 2, scope: !180)
!193 = !DILocation(line: 165, column: 20, scope: !161)
!194 = !DILocation(line: 165, column: 10, scope: !161)
!195 = !DILocation(line: 165, column: 26, scope: !161)
!196 = !DILocation(line: 165, column: 41, scope: !161)
!197 = !DILocation(line: 165, column: 2, scope: !161)
!198 = !DILocation(line: 166, column: 12, scope: !161)
!199 = !DILocation(line: 166, column: 9, scope: !161)
!200 = !DILocation(line: 167, column: 2, scope: !161)
!201 = !DILocation(line: 168, column: 1, scope: !161)
!202 = distinct !DISubprogram(name: "mdb_midl_sort", scope: !2, file: !2, line: 176, type: !67, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !203)
!203 = !{!204, !205, !209, !210, !211, !212, !213, !214, !215, !216}
!204 = !DILocalVariable(name: "ids", arg: 1, scope: !202, file: !2, line: 176, type: !33)
!205 = !DILocalVariable(name: "istack", scope: !202, file: !2, line: 179, type: !206)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 64)
!209 = !DILocalVariable(name: "i", scope: !202, file: !2, line: 180, type: !21)
!210 = !DILocalVariable(name: "j", scope: !202, file: !2, line: 180, type: !21)
!211 = !DILocalVariable(name: "k", scope: !202, file: !2, line: 180, type: !21)
!212 = !DILocalVariable(name: "l", scope: !202, file: !2, line: 180, type: !21)
!213 = !DILocalVariable(name: "ir", scope: !202, file: !2, line: 180, type: !21)
!214 = !DILocalVariable(name: "jstack", scope: !202, file: !2, line: 180, type: !21)
!215 = !DILocalVariable(name: "a", scope: !202, file: !2, line: 181, type: !36)
!216 = !DILocalVariable(name: "itmp", scope: !202, file: !2, line: 181, type: !36)
!217 = !DILocation(line: 0, scope: !202)
!218 = !DILocation(line: 179, column: 2, scope: !202)
!219 = !DILocation(line: 179, column: 6, scope: !202)
!220 = !DILocation(line: 183, column: 12, scope: !202)
!221 = !DILocation(line: 183, column: 7, scope: !202)
!222 = !DILocation(line: 186, column: 2, scope: !202)
!223 = !DILocation(line: 186, column: 2, scope: !224)
!224 = distinct !DILexicalBlock(scope: !202, file: !2, line: 186, column: 2)
!225 = !DILocation(line: 187, column: 10, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !2, line: 187, column: 7)
!227 = distinct !DILexicalBlock(scope: !228, file: !2, line: 186, column: 10)
!228 = distinct !DILexicalBlock(scope: !224, file: !2, line: 186, column: 2)
!229 = !DILocation(line: 187, column: 14, scope: !226)
!230 = !DILocation(line: 187, column: 7, scope: !227)
!231 = !DILocation(line: 188, column: 16, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !2, line: 188, column: 4)
!233 = distinct !DILexicalBlock(scope: !234, file: !2, line: 188, column: 4)
!234 = distinct !DILexicalBlock(scope: !226, file: !2, line: 187, column: 23)
!235 = !DILocation(line: 188, column: 4, scope: !233)
!236 = !DILocation(line: 188, scope: !233)
!237 = !DILocation(line: 189, column: 9, scope: !238)
!238 = distinct !DILexicalBlock(scope: !232, file: !2, line: 188, column: 26)
!239 = !DILocation(line: 190, column: 17, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !2, line: 190, column: 5)
!241 = distinct !DILexicalBlock(scope: !238, file: !2, line: 190, column: 5)
!242 = !DILocation(line: 190, column: 5, scope: !241)
!243 = !DILocation(line: 191, column: 10, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !2, line: 191, column: 10)
!245 = distinct !DILexicalBlock(scope: !240, file: !2, line: 190, column: 26)
!246 = !DILocation(line: 191, column: 17, scope: !244)
!247 = !DILocation(line: 191, column: 10, scope: !245)
!248 = !DILocation(line: 192, column: 11, scope: !245)
!249 = !DILocation(line: 192, column: 6, scope: !245)
!250 = !DILocation(line: 192, column: 15, scope: !245)
!251 = !DILocation(line: 190, column: 22, scope: !240)
!252 = distinct !{!252, !242, !253, !254}
!253 = !DILocation(line: 193, column: 5, scope: !241)
!254 = !{!"llvm.loop.mustprogress"}
!255 = !DILocation(line: 190, scope: !241)
!256 = !DILocation(line: 194, column: 10, scope: !238)
!257 = !DILocation(line: 194, column: 5, scope: !238)
!258 = !DILocation(line: 194, column: 14, scope: !238)
!259 = distinct !{!259, !235, !260, !254}
!260 = !DILocation(line: 195, column: 4, scope: !233)
!261 = !DILocation(line: 196, column: 15, scope: !262)
!262 = distinct !DILexicalBlock(scope: !234, file: !2, line: 196, column: 8)
!263 = !DILocation(line: 196, column: 8, scope: !234)
!264 = !DILocation(line: 197, column: 22, scope: !234)
!265 = !DILocation(line: 197, column: 9, scope: !234)
!266 = !{!267, !267, i64 0}
!267 = !{!"int", !56, i64 0}
!268 = !DILocation(line: 198, column: 21, scope: !234)
!269 = !DILocation(line: 198, column: 8, scope: !234)
!270 = !DILocation(line: 199, column: 3, scope: !234)
!271 = distinct !{!271, !223, !272}
!272 = !DILocation(line: 233, column: 2, scope: !224)
!273 = !DILocation(line: 200, column: 11, scope: !274)
!274 = distinct !DILexicalBlock(scope: !226, file: !2, line: 199, column: 10)
!275 = !DILocation(line: 200, column: 17, scope: !274)
!276 = !DILocation(line: 201, column: 4, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !2, line: 201, column: 4)
!278 = !DILocation(line: 202, column: 8, scope: !279)
!279 = distinct !DILexicalBlock(scope: !274, file: !2, line: 202, column: 8)
!280 = !DILocation(line: 202, column: 17, scope: !279)
!281 = !DILocation(line: 202, column: 15, scope: !279)
!282 = !DILocation(line: 202, column: 8, scope: !274)
!283 = !DILocation(line: 203, column: 5, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !2, line: 203, column: 5)
!285 = distinct !DILexicalBlock(scope: !279, file: !2, line: 202, column: 26)
!286 = !DILocation(line: 205, column: 8, scope: !287)
!287 = distinct !DILexicalBlock(scope: !274, file: !2, line: 205, column: 8)
!288 = !DILocation(line: 204, column: 4, scope: !285)
!289 = !DILocation(line: 205, column: 19, scope: !287)
!290 = !DILocation(line: 205, column: 17, scope: !287)
!291 = !DILocation(line: 205, column: 8, scope: !274)
!292 = !DILocation(line: 206, column: 5, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !2, line: 206, column: 5)
!294 = distinct !DILexicalBlock(scope: !287, file: !2, line: 205, column: 28)
!295 = !DILocation(line: 208, column: 17, scope: !296)
!296 = distinct !DILexicalBlock(scope: !274, file: !2, line: 208, column: 8)
!297 = !DILocation(line: 207, column: 4, scope: !294)
!298 = !DILocation(line: 208, column: 8, scope: !296)
!299 = !DILocation(line: 208, column: 15, scope: !296)
!300 = !DILocation(line: 208, column: 8, scope: !274)
!301 = !DILocation(line: 209, column: 5, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !2, line: 209, column: 5)
!303 = distinct !DILexicalBlock(scope: !296, file: !2, line: 208, column: 27)
!304 = !DILocation(line: 210, column: 4, scope: !303)
!305 = !DILocation(line: 213, column: 8, scope: !274)
!306 = !DILocation(line: 214, column: 4, scope: !274)
!307 = !DILocation(line: 0, scope: !274)
!308 = !DILocation(line: 215, column: 5, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !2, line: 214, column: 12)
!310 = distinct !DILexicalBlock(scope: !311, file: !2, line: 214, column: 4)
!311 = distinct !DILexicalBlock(scope: !274, file: !2, line: 214, column: 4)
!312 = !DILocation(line: 215, column: 9, scope: !309)
!313 = !DILocation(line: 215, column: 19, scope: !309)
!314 = !DILocation(line: 215, column: 26, scope: !309)
!315 = !DILocation(line: 215, column: 8, scope: !309)
!316 = distinct !{!316, !308, !317, !254}
!317 = !DILocation(line: 215, column: 29, scope: !309)
!318 = !DILocation(line: 216, column: 5, scope: !309)
!319 = !DILocation(line: 216, column: 9, scope: !309)
!320 = !DILocation(line: 216, column: 19, scope: !309)
!321 = !DILocation(line: 216, column: 26, scope: !309)
!322 = !DILocation(line: 216, column: 8, scope: !309)
!323 = distinct !{!323, !318, !324, !254}
!324 = !DILocation(line: 216, column: 29, scope: !309)
!325 = !DILocation(line: 217, column: 11, scope: !326)
!326 = distinct !DILexicalBlock(scope: !309, file: !2, line: 217, column: 9)
!327 = !DILocation(line: 217, column: 9, scope: !309)
!328 = !DILocation(line: 218, column: 5, scope: !329)
!329 = distinct !DILexicalBlock(scope: !309, file: !2, line: 218, column: 5)
!330 = !DILocation(line: 214, column: 4, scope: !310)
!331 = distinct !{!331, !332, !333}
!332 = !DILocation(line: 214, column: 4, scope: !311)
!333 = !DILocation(line: 219, column: 4, scope: !311)
!334 = !DILocation(line: 220, column: 13, scope: !274)
!335 = !DILocation(line: 221, column: 11, scope: !274)
!336 = !DILocation(line: 222, column: 11, scope: !274)
!337 = !DILocation(line: 223, column: 12, scope: !338)
!338 = distinct !DILexicalBlock(scope: !274, file: !2, line: 223, column: 8)
!339 = !DILocation(line: 223, column: 19, scope: !338)
!340 = !DILocation(line: 223, column: 15, scope: !338)
!341 = !DILocation(line: 223, column: 8, scope: !274)
!342 = !DILocation(line: 224, column: 5, scope: !343)
!343 = distinct !DILexicalBlock(scope: !338, file: !2, line: 223, column: 23)
!344 = !DILocation(line: 224, column: 20, scope: !343)
!345 = !DILocation(line: 225, column: 18, scope: !343)
!346 = !DILocation(line: 225, column: 5, scope: !343)
!347 = !DILocation(line: 225, column: 22, scope: !343)
!348 = !DILocation(line: 226, column: 11, scope: !343)
!349 = !DILocation(line: 227, column: 4, scope: !343)
!350 = !DILocation(line: 228, column: 23, scope: !351)
!351 = distinct !DILexicalBlock(scope: !338, file: !2, line: 227, column: 11)
!352 = !DILocation(line: 228, column: 5, scope: !351)
!353 = !DILocation(line: 228, column: 20, scope: !351)
!354 = !DILocation(line: 229, column: 18, scope: !351)
!355 = !DILocation(line: 229, column: 5, scope: !351)
!356 = !DILocation(line: 229, column: 22, scope: !351)
!357 = !DILocation(line: 234, column: 1, scope: !202)
!358 = distinct !DISubprogram(name: "mdb_mid2l_search", scope: !2, file: !2, line: 236, type: !359, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !368)
!359 = !DISubroutineType(types: !360)
!360 = !{!22, !361, !36}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_ID2L", file: !34, line: 137, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_ID2", file: !34, line: 130, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_ID2", file: !34, line: 127, size: 128, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !364, file: !34, line: 128, baseType: !36, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mptr", scope: !364, file: !34, line: 129, baseType: !64, size: 64, offset: 64)
!368 = !{!369, !370, !371, !372, !373, !374, !375}
!369 = !DILocalVariable(name: "ids", arg: 1, scope: !358, file: !2, line: 236, type: !361)
!370 = !DILocalVariable(name: "id", arg: 2, scope: !358, file: !2, line: 236, type: !36)
!371 = !DILocalVariable(name: "base", scope: !358, file: !2, line: 243, type: !22)
!372 = !DILocalVariable(name: "cursor", scope: !358, file: !2, line: 244, type: !22)
!373 = !DILocalVariable(name: "val", scope: !358, file: !2, line: 245, type: !21)
!374 = !DILocalVariable(name: "n", scope: !358, file: !2, line: 246, type: !22)
!375 = !DILocalVariable(name: "pivot", scope: !376, file: !2, line: 249, type: !22)
!376 = distinct !DILexicalBlock(scope: !358, file: !2, line: 248, column: 17)
!377 = !DILocation(line: 0, scope: !358)
!378 = !DILocation(line: 246, column: 32, scope: !358)
!379 = !{!380, !55, i64 0}
!380 = !{!"MDB_ID2", !55, i64 0, !91, i64 8}
!381 = !DILocation(line: 246, column: 15, scope: !358)
!382 = !DILocation(line: 248, column: 11, scope: !358)
!383 = !DILocation(line: 248, column: 2, scope: !358)
!384 = !DILocation(line: 249, column: 22, scope: !376)
!385 = !DILocation(line: 0, scope: !376)
!386 = !DILocation(line: 250, column: 17, scope: !376)
!387 = !DILocation(line: 250, column: 25, scope: !376)
!388 = !DILocation(line: 251, column: 9, scope: !376)
!389 = !DILocation(line: 253, column: 7, scope: !376)
!390 = !DILocation(line: 256, column: 15, scope: !391)
!391 = distinct !DILexicalBlock(scope: !376, file: !2, line: 253, column: 7)
!392 = !DILocation(line: 258, column: 15, scope: !393)
!393 = distinct !DILexicalBlock(scope: !394, file: !2, line: 256, column: 25)
!394 = distinct !DILexicalBlock(scope: !391, file: !2, line: 256, column: 15)
!395 = !DILocation(line: 258, column: 6, scope: !393)
!396 = !DILocation(line: 243, column: 11, scope: !358)
!397 = distinct !{!397, !383, !398, !254}
!398 = !DILocation(line: 263, column: 2, scope: !358)
!399 = !DILocation(line: 265, column: 6, scope: !358)
!400 = !DILocation(line: 265, column: 10, scope: !401)
!401 = distinct !DILexicalBlock(scope: !358, file: !2, line: 265, column: 6)
!402 = !DILocation(line: 269, column: 1, scope: !358)
!403 = distinct !DISubprogram(name: "mdb_mid2l_insert", scope: !2, file: !2, line: 271, type: !404, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{!21, !361, !362}
!406 = !{!407, !408, !409, !410}
!407 = !DILocalVariable(name: "ids", arg: 1, scope: !403, file: !2, line: 271, type: !361)
!408 = !DILocalVariable(name: "id", arg: 2, scope: !403, file: !2, line: 271, type: !362)
!409 = !DILocalVariable(name: "x", scope: !403, file: !2, line: 273, type: !22)
!410 = !DILocalVariable(name: "i", scope: !403, file: !2, line: 273, type: !22)
!411 = !DILocation(line: 0, scope: !403)
!412 = !DILocation(line: 275, column: 33, scope: !403)
!413 = !DILocation(line: 0, scope: !358, inlinedAt: !414)
!414 = distinct !DILocation(line: 275, column: 6, scope: !403)
!415 = !DILocation(line: 246, column: 32, scope: !358, inlinedAt: !414)
!416 = !DILocation(line: 246, column: 15, scope: !358, inlinedAt: !414)
!417 = !DILocation(line: 248, column: 11, scope: !358, inlinedAt: !414)
!418 = !DILocation(line: 248, column: 2, scope: !358, inlinedAt: !414)
!419 = !DILocation(line: 249, column: 22, scope: !376, inlinedAt: !414)
!420 = !DILocation(line: 0, scope: !376, inlinedAt: !414)
!421 = !DILocation(line: 250, column: 17, scope: !376, inlinedAt: !414)
!422 = !DILocation(line: 250, column: 25, scope: !376, inlinedAt: !414)
!423 = !DILocation(line: 251, column: 9, scope: !376, inlinedAt: !414)
!424 = !DILocation(line: 253, column: 7, scope: !376, inlinedAt: !414)
!425 = !DILocation(line: 256, column: 15, scope: !391, inlinedAt: !414)
!426 = !DILocation(line: 258, column: 15, scope: !393, inlinedAt: !414)
!427 = !DILocation(line: 258, column: 6, scope: !393, inlinedAt: !414)
!428 = !DILocation(line: 243, column: 11, scope: !358, inlinedAt: !414)
!429 = distinct !{!429, !418, !430, !254}
!430 = !DILocation(line: 263, column: 2, scope: !358, inlinedAt: !414)
!431 = !DILocation(line: 265, column: 6, scope: !358, inlinedAt: !414)
!432 = !DILocation(line: 265, column: 10, scope: !401, inlinedAt: !414)
!433 = !DILocation(line: 276, column: 2, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !2, line: 276, column: 2)
!435 = distinct !DILexicalBlock(scope: !403, file: !2, line: 276, column: 2)
!436 = !DILocation(line: 276, column: 2, scope: !435)
!437 = !DILocation(line: 283, column: 7, scope: !438)
!438 = distinct !DILexicalBlock(scope: !403, file: !2, line: 283, column: 7)
!439 = !DILocation(line: 283, column: 9, scope: !438)
!440 = !DILocation(line: 283, column: 23, scope: !438)
!441 = !DILocation(line: 283, column: 26, scope: !438)
!442 = !DILocation(line: 283, column: 33, scope: !438)
!443 = !DILocation(line: 283, column: 37, scope: !438)
!444 = !DILocation(line: 283, column: 7, scope: !403)
!445 = !DILocation(line: 288, column: 18, scope: !446)
!446 = distinct !DILexicalBlock(scope: !403, file: !2, line: 288, column: 7)
!447 = !DILocation(line: 288, column: 7, scope: !403)
!448 = !DILocation(line: 294, column: 13, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !2, line: 292, column: 9)
!450 = !DILocation(line: 295, column: 10, scope: !451)
!451 = distinct !DILexicalBlock(scope: !449, file: !2, line: 295, column: 3)
!452 = !DILocation(line: 295, column: 33, scope: !453)
!453 = distinct !DILexicalBlock(scope: !451, file: !2, line: 295, column: 3)
!454 = !DILocation(line: 295, column: 3, scope: !451)
!455 = !DILocation(line: 296, column: 4, scope: !453)
!456 = !DILocation(line: 296, column: 13, scope: !453)
!457 = !{i64 0, i64 8, !54, i64 8, i64 8, !90}
!458 = !DILocation(line: 296, column: 18, scope: !453)
!459 = distinct !{!459, !454, !460, !254}
!460 = !DILocation(line: 296, column: 20, scope: !451)
!461 = !DILocation(line: 297, column: 3, scope: !449)
!462 = !DILocation(line: 297, column: 12, scope: !449)
!463 = !DILocation(line: 300, column: 2, scope: !403)
!464 = !DILocation(line: 301, column: 1, scope: !403)
!465 = !DISubprogram(name: "__assert_fail", scope: !466, file: !466, line: 69, type: !467, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !65)
!466 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!467 = !DISubroutineType(types: !468)
!468 = !{null, !469, !469, !22, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!470 = distinct !DISubprogram(name: "mdb_mid2l_append", scope: !2, file: !2, line: 303, type: !404, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !471)
!471 = !{!472, !473}
!472 = !DILocalVariable(name: "ids", arg: 1, scope: !470, file: !2, line: 303, type: !361)
!473 = !DILocalVariable(name: "id", arg: 2, scope: !470, file: !2, line: 303, type: !362)
!474 = !DILocation(line: 0, scope: !470)
!475 = !DILocation(line: 306, column: 13, scope: !476)
!476 = distinct !DILexicalBlock(scope: !470, file: !2, line: 306, column: 6)
!477 = !DILocation(line: 306, column: 17, scope: !476)
!478 = !DILocation(line: 306, column: 6, scope: !470)
!479 = !DILocation(line: 309, column: 12, scope: !470)
!480 = !DILocation(line: 310, column: 2, scope: !470)
!481 = !DILocation(line: 310, column: 20, scope: !470)
!482 = !DILocation(line: 311, column: 2, scope: !470)
!483 = !DILocation(line: 312, column: 1, scope: !470)
