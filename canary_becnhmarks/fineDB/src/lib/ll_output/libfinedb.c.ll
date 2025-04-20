; ModuleID = 'libfinedb.c'
source_filename = "libfinedb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.finedb_client_s = type { ptr, i16, i32, i32, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.hostent = type { ptr, ptr, i32, i32, ptr }
%struct.iovec = type { ptr, i64 }
%struct.msghdr = type { ptr, i32, ptr, i64, ptr, i64, i32 }
%struct.ydynabin_s = type { ptr, i64, i64, i64 }
%struct.ybin_s = type { ptr, i64 }
%struct.snappy_env = type { ptr, ptr, ptr }

; Function Attrs: mustprogress nounwind willreturn uwtable
define noalias ptr @finedb_create(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #0 !dbg !93 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !110, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i16 %1, metadata !111, metadata !DIExpression()), !dbg !113
  %3 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #18, !dbg !114
  call void @llvm.dbg.value(metadata ptr %3, metadata !112, metadata !DIExpression()), !dbg !113
  %4 = icmp eq ptr %3, null, !dbg !116
  br i1 %4, label %12, label %5, !dbg !117

5:                                                ; preds = %2
  %6 = tail call noalias ptr @strdup(ptr noundef %0) #19, !dbg !118
  store ptr %6, ptr %3, align 8, !dbg !120, !tbaa !121
  %7 = icmp eq ptr %6, null, !dbg !128
  br i1 %7, label %8, label %9, !dbg !129

8:                                                ; preds = %5
  tail call void @free(ptr noundef nonnull %3) #19, !dbg !130
  call void @llvm.dbg.value(metadata ptr null, metadata !112, metadata !DIExpression()), !dbg !113
  br label %12, !dbg !132

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.finedb_client_s, ptr %3, i64 0, i32 1, !dbg !133
  store i16 %1, ptr %10, align 8, !dbg !134, !tbaa !135
  %11 = getelementptr inbounds %struct.finedb_client_s, ptr %3, i64 0, i32 2, !dbg !136
  store i32 -1, ptr %11, align 4, !dbg !137, !tbaa !138
  br label %12, !dbg !139

12:                                               ; preds = %2, %9, %8
  %13 = phi ptr [ null, %8 ], [ %3, %9 ], [ null, %2 ], !dbg !113
  ret ptr %13, !dbg !140
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !141 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !146 noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !150 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define void @finedb_delete(ptr nocapture noundef %0) local_unnamed_addr #6 !dbg !153 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata ptr %0, metadata !159, metadata !DIExpression()), !dbg !162
  %2 = getelementptr inbounds %struct.finedb_client_s, ptr %0, i64 0, i32 2, !dbg !164
  %3 = load i32, ptr %2, align 4, !dbg !164, !tbaa !138
  %4 = icmp sgt i32 %3, -1, !dbg !166
  br i1 %4, label %5, label %7, !dbg !167

5:                                                ; preds = %1
  %6 = tail call i32 @close(i32 noundef %3) #19, !dbg !168
  br label %7, !dbg !168

7:                                                ; preds = %1, %5
  %8 = load ptr, ptr %0, align 8, !dbg !169, !tbaa !121
  %9 = icmp eq ptr %8, null, !dbg !169
  br i1 %9, label %11, label %10, !dbg !169

10:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %8) #19, !dbg !169
  br label %11, !dbg !169

11:                                               ; preds = %7, %10
  tail call void @free(ptr noundef nonnull %0) #19, !dbg !170
  call void @llvm.dbg.value(metadata ptr null, metadata !157, metadata !DIExpression()), !dbg !158
  ret void, !dbg !171
}

; Function Attrs: nounwind uwtable
define void @finedb_disconnect(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !dbg !160 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !159, metadata !DIExpression()), !dbg !172
  %2 = getelementptr inbounds %struct.finedb_client_s, ptr %0, i64 0, i32 2, !dbg !173
  %3 = load i32, ptr %2, align 4, !dbg !173, !tbaa !138
  %4 = icmp sgt i32 %3, -1, !dbg !174
  br i1 %4, label %5, label %7, !dbg !175

5:                                                ; preds = %1
  %6 = tail call i32 @close(i32 noundef %3) #19, !dbg !176
  br label %7, !dbg !176

7:                                                ; preds = %5, %1
  ret void, !dbg !177
}

; Function Attrs: nounwind uwtable
define i32 @finedb_connect(ptr nocapture noundef %0) local_unnamed_addr #6 !dbg !178 {
  %2 = alloca %struct.sockaddr_in, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !182, metadata !DIExpression()), !dbg !211
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %2, metadata !184, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata ptr %0, metadata !159, metadata !DIExpression()), !dbg !214
  %3 = getelementptr inbounds %struct.finedb_client_s, ptr %0, i64 0, i32 2, !dbg !216
  %4 = load i32, ptr %3, align 4, !dbg !216, !tbaa !138
  %5 = icmp sgt i32 %4, -1, !dbg !217
  br i1 %5, label %6, label %8, !dbg !218

6:                                                ; preds = %1
  %7 = tail call i32 @close(i32 noundef %4) #19, !dbg !219
  br label %8, !dbg !219

8:                                                ; preds = %1, %6
  %9 = tail call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #19, !dbg !220
  call void @llvm.dbg.value(metadata i32 %9, metadata !183, metadata !DIExpression()), !dbg !211
  %10 = load ptr, ptr %0, align 8, !dbg !221, !tbaa !121
  %11 = tail call ptr @gethostbyname(ptr noundef %10) #19, !dbg !223
  call void @llvm.dbg.value(metadata ptr %11, metadata !200, metadata !DIExpression()), !dbg !211
  %12 = icmp eq ptr %11, null, !dbg !224
  br i1 %12, label %29, label %13, !dbg !225

13:                                               ; preds = %8
  call void @bzero(ptr noundef nonnull %2, i64 noundef 16) #19, !dbg !226
  store i16 2, ptr %2, align 4, !dbg !227, !tbaa !228
  %14 = getelementptr inbounds %struct.hostent, ptr %11, i64 0, i32 4, !dbg !231
  %15 = load ptr, ptr %14, align 8, !dbg !231, !tbaa !232
  %16 = load ptr, ptr %15, align 8, !dbg !234, !tbaa !235
  %17 = getelementptr inbounds %struct.sockaddr_in, ptr %2, i64 0, i32 2, !dbg !236
  %18 = getelementptr inbounds %struct.hostent, ptr %11, i64 0, i32 3, !dbg !237
  %19 = load i32, ptr %18, align 4, !dbg !237, !tbaa !238
  %20 = sext i32 %19 to i64, !dbg !239
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %17, ptr align 1 %16, i64 %20, i1 false), !dbg !240
  %21 = getelementptr inbounds %struct.finedb_client_s, ptr %0, i64 0, i32 1, !dbg !241
  %22 = load i16, ptr %21, align 8, !dbg !241, !tbaa !135
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %24 = getelementptr inbounds %struct.sockaddr_in, ptr %2, i64 0, i32 1, !dbg !242
  store i16 %23, ptr %24, align 2, !dbg !243, !tbaa !244
  %25 = call i32 @connect(i32 noundef %9, ptr nonnull %2, i32 noundef 16) #19, !dbg !245
  %26 = icmp sgt i32 %25, -1, !dbg !211
  %27 = select i1 %26, i32 %9, i32 -1, !dbg !211
  %28 = lshr i32 %25, 31, !dbg !211
  br label %29, !dbg !211

29:                                               ; preds = %13, %8
  %30 = phi i32 [ -1, %8 ], [ %27, %13 ]
  %31 = phi i32 [ 1, %8 ], [ %28, %13 ], !dbg !211
  store i32 %30, ptr %3, align 4, !dbg !211, !tbaa !138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19, !dbg !247
  ret i32 %31, !dbg !247
}

; Function Attrs: nounwind
declare !dbg !248 i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare !dbg !252 ptr @gethostbyname(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare !dbg !255 void @bzero(ptr nocapture noundef writeonly, i64 noundef) local_unnamed_addr #9

declare !dbg !259 i32 @connect(i32 noundef, ptr, i32 noundef) local_unnamed_addr #8

declare !dbg !354 i32 @close(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @finedb_sync(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 !dbg !357 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !359, metadata !DIExpression()), !dbg !360
  %2 = getelementptr inbounds %struct.finedb_client_s, ptr %0, i64 0, i32 3, !dbg !361
  store i32 1, ptr %2, align 8, !dbg !362, !tbaa !363
  ret void, !dbg !364
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @finedb_async(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 !dbg !365 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !367, metadata !DIExpression()), !dbg !368
  %2 = getelementptr inbounds %struct.finedb_client_s, ptr %0, i64 0, i32 3, !dbg !369
  store i32 0, ptr %2, align 8, !dbg !370, !tbaa !363
  ret void, !dbg !371
}

; Function Attrs: nounwind uwtable
define i32 @finedb_setdb(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #6 !dbg !372 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !376, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata ptr %1, metadata !377, metadata !DIExpression()), !dbg !383
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19, !dbg !384
  %4 = icmp eq ptr %1, null, !dbg !385
  br i1 %4, label %5, label %7, !dbg !385

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 2, metadata !381, metadata !DIExpression()), !dbg !383
  %6 = tail call noalias dereferenceable_or_null(2) ptr @calloc(i64 noundef 1, i64 noundef 2) #18, !dbg !386
  call void @llvm.dbg.value(metadata ptr %6, metadata !378, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata ptr %6, metadata !379, metadata !DIExpression()), !dbg !383
  store i8 4, ptr %6, align 1, !dbg !387, !tbaa !388
  call void @llvm.dbg.value(metadata ptr %6, metadata !379, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !383
  br label %16, !dbg !389

7:                                                ; preds = %2
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20, !dbg !390
  %9 = trunc i64 %8 to i32, !dbg !391
  %10 = add i32 %9, 2, !dbg !391
  call void @llvm.dbg.value(metadata i32 %10, metadata !381, metadata !DIExpression()), !dbg !383
  %11 = sext i32 %10 to i64, !dbg !386
  %12 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %11) #18, !dbg !386
  call void @llvm.dbg.value(metadata ptr %12, metadata !378, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata ptr %12, metadata !379, metadata !DIExpression()), !dbg !383
  store i8 4, ptr %12, align 1, !dbg !387, !tbaa !388
  call void @llvm.dbg.value(metadata ptr %12, metadata !379, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !383
  %13 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !392
  call void @llvm.dbg.value(metadata ptr %13, metadata !379, metadata !DIExpression()), !dbg !383
  %14 = trunc i64 %8 to i8, !dbg !393
  store i8 %14, ptr %13, align 1, !dbg !396, !tbaa !388
  %15 = getelementptr inbounds i8, ptr %12, i64 2, !dbg !397
  call void @llvm.dbg.value(metadata ptr %15, metadata !379, metadata !DIExpression()), !dbg !383
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %15, ptr nonnull align 1 %1, i64 %8, i1 false), !dbg !398
  br label %16, !dbg !399

16:                                               ; preds = %5, %7
  %17 = phi ptr [ %6, %5 ], [ %12, %7 ]
  %18 = phi i64 [ 2, %5 ], [ %11, %7 ]
  %19 = phi i32 [ 2, %5 ], [ %10, %7 ]
  %20 = getelementptr inbounds %struct.finedb_client_s, ptr %0, i64 0, i32 2, !dbg !400
  %21 = load i32, ptr %20, align 4, !dbg !400, !tbaa !138
  %22 = tail call i64 @write(i32 noundef %21, ptr noundef nonnull %17, i64 noundef %18) #19, !dbg !401
  %23 = trunc i64 %22 to i32, !dbg !401
  call void @llvm.dbg.value(metadata i32 %23, metadata !382, metadata !DIExpression()), !dbg !383
  tail call void @free(ptr noundef nonnull %17) #19, !dbg !402
  call void @llvm.dbg.value(metadata ptr null, metadata !378, metadata !DIExpression()), !dbg !383
  %24 = icmp eq i32 %19, %23, !dbg !403
  br i1 %24, label %25, label %36, !dbg !405

25:                                               ; preds = %16
  %26 = load i32, ptr %20, align 4, !dbg !406, !tbaa !138
  call void @llvm.dbg.value(metadata ptr %3, metadata !380, metadata !DIExpression(DW_OP_deref)), !dbg !383
  %27 = call i64 @read(i32 noundef %26, ptr noundef nonnull %3, i64 noundef 1) #19, !dbg !407
  call void @llvm.dbg.value(metadata i64 %27, metadata !382, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !383
  %28 = and i64 %27, 4294967295, !dbg !408
  %29 = icmp eq i64 %28, 1, !dbg !408
  br i1 %29, label %30, label %36, !dbg !410

30:                                               ; preds = %25
  %31 = load i8, ptr %3, align 1, !dbg !411, !tbaa !388
  call void @llvm.dbg.value(metadata i8 %31, metadata !380, metadata !DIExpression()), !dbg !383
  %32 = shl i8 %31, 1, !dbg !383
  %33 = and i8 %32, 2, !dbg !383
  %34 = xor i8 %33, 2, !dbg !383
  %35 = zext i8 %34 to i32, !dbg !383
  br label %36, !dbg !383

36:                                               ; preds = %30, %25, %16
  %37 = phi i32 [ 1, %16 ], [ 1, %25 ], [ %35, %30 ], !dbg !383
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19, !dbg !413
  ret i32 %37, !dbg !413
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !414 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nofree
declare !dbg !417 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree
declare !dbg !426 noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define i32 @finedb_get(ptr nocapture noundef readonly %0, ptr %1, i64 %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #6 !dbg !429 {
  %5 = alloca [8196 x i8], align 16
  %6 = alloca [8196 x i8], align 16
  %7 = alloca [8196 x i8], align 16
  %8 = alloca i8, align 1
  %9 = alloca [3 x %struct.iovec], align 16
  %10 = alloca %struct.msghdr, align 8
  %11 = alloca i16, align 2
  %12 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %1, metadata !441, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !493
  call void @llvm.dbg.value(metadata i64 %2, metadata !441, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !493
  call void @llvm.dbg.value(metadata ptr %0, metadata !440, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata ptr %3, metadata !442, metadata !DIExpression()), !dbg !493
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #19, !dbg !494
  call void @llvm.dbg.value(metadata i32 0, metadata !446, metadata !DIExpression()), !dbg !493
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #19, !dbg !495
  call void @llvm.dbg.declare(metadata ptr %9, metadata !447, metadata !DIExpression()), !dbg !496
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #19, !dbg !497
  call void @llvm.dbg.declare(metadata ptr %10, metadata !457, metadata !DIExpression()), !dbg !498
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #19, !dbg !499
  call void @llvm.dbg.value(metadata i8 65, metadata !443, metadata !DIExpression()), !dbg !493
  store i8 65, ptr %8, align 1, !dbg !500, !tbaa !388
  %13 = trunc i64 %2 to i16, !dbg !501
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  call void @llvm.dbg.value(metadata i16 %14, metadata !468, metadata !DIExpression()), !dbg !502
  store i16 %14, ptr %11, align 2, !dbg !503, !tbaa !504
  call void @bzero(ptr noundef nonnull %10, i64 noundef 56) #19, !dbg !505
  %15 = getelementptr inbounds %struct.msghdr, ptr %10, i64 0, i32 2, !dbg !506
  store ptr %9, ptr %15, align 8, !dbg !507, !tbaa !508
  %16 = getelementptr inbounds %struct.msghdr, ptr %10, i64 0, i32 3, !dbg !511
  store i64 3, ptr %16, align 8, !dbg !512, !tbaa !513
  store ptr %8, ptr %9, align 16, !dbg !514, !tbaa !515
  %17 = getelementptr inbounds %struct.iovec, ptr %9, i64 0, i32 1, !dbg !517
  store i64 1, ptr %17, align 8, !dbg !518, !tbaa !519
  %18 = getelementptr inbounds [3 x %struct.iovec], ptr %9, i64 0, i64 1, !dbg !520
  store ptr %11, ptr %18, align 16, !dbg !521, !tbaa !515
  %19 = getelementptr inbounds [3 x %struct.iovec], ptr %9, i64 0, i64 1, i32 1, !dbg !522
  store i64 2, ptr %19, align 8, !dbg !523, !tbaa !519
  %20 = getelementptr inbounds [3 x %struct.iovec], ptr %9, i64 0, i64 2, !dbg !524
  store ptr %1, ptr %20, align 16, !dbg !525, !tbaa !515
  %21 = getelementptr inbounds [3 x %struct.iovec], ptr %9, i64 0, i64 2, i32 1, !dbg !526
  store i64 %2, ptr %21, align 8, !dbg !527, !tbaa !519
  %22 = add i64 %2, 3, !dbg !528
  call void @llvm.dbg.value(metadata i64 %22, metadata !444, metadata !DIExpression()), !dbg !493
  %23 = getelementptr inbounds %struct.finedb_client_s, ptr %0, i64 0, i32 2, !dbg !529
  %24 = load i32, ptr %23, align 4, !dbg !529, !tbaa !138
  %25 = call i64 @sendmsg(i32 noundef %24, ptr noundef nonnull %10, i32 noundef 0) #19, !dbg !530
  call void @llvm.dbg.value(metadata i64 %25, metadata !445, metadata !DIExpression()), !dbg !493
  %26 = icmp eq i64 %25, %22, !dbg !531
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #19, !dbg !533
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #19, !dbg !533
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #19, !dbg !533
  br i1 %26, label %27, label %126

27:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr null, metadata !485, metadata !DIExpression()), !dbg !534
  %28 = call ptr @ydynabin_new(ptr noundef null, i64 noundef 0, i32 noundef 0) #19, !dbg !535
  call void @llvm.dbg.value(metadata ptr %28, metadata !474, metadata !DIExpression()), !dbg !534
  %29 = load i32, ptr %23, align 4, !dbg !536, !tbaa !138
  call void @llvm.dbg.value(metadata i32 %29, metadata !538, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata ptr %28, metadata !545, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i64 1, metadata !546, metadata !DIExpression()), !dbg !553
  call void @llvm.lifetime.start.p0(i64 8196, ptr nonnull %7) #19, !dbg !555
  call void @llvm.dbg.declare(metadata ptr %7, metadata !547, metadata !DIExpression()), !dbg !556
  %30 = getelementptr inbounds %struct.ydynabin_s, ptr %28, i64 0, i32 1, !dbg !557
  %31 = load i64, ptr %30, align 8, !dbg !557, !tbaa !559
  %32 = icmp eq i64 %31, 0, !dbg !561
  br i1 %32, label %36, label %48, !dbg !562

33:                                               ; preds = %44
  %34 = load i64, ptr %30, align 8, !dbg !563, !tbaa !559
  %35 = icmp eq i64 %34, 0, !dbg !564
  br i1 %35, label %36, label %48, !dbg !565

36:                                               ; preds = %27, %33
  %37 = call i64 @read(i32 noundef %29, ptr noundef nonnull %7, i64 noundef 8196) #19, !dbg !566
  call void @llvm.dbg.value(metadata i64 %37, metadata !551, metadata !DIExpression()), !dbg !553
  %38 = icmp slt i64 %37, 0, !dbg !569
  br i1 %38, label %47, label %39, !dbg !570

39:                                               ; preds = %36
  %40 = icmp eq i64 %37, 0, !dbg !571
  br i1 %40, label %41, label %44, !dbg !573

41:                                               ; preds = %39
  %42 = load i64, ptr %30, align 8, !dbg !574, !tbaa !559
  %43 = icmp eq i64 %42, 0, !dbg !577
  br i1 %43, label %47, label %48, !dbg !578

44:                                               ; preds = %39
  %45 = call i32 @ydynabin_expand(ptr noundef nonnull %28, ptr noundef nonnull %7, i64 noundef %37) #19, !dbg !579
  call void @llvm.dbg.value(metadata i32 %45, metadata !552, metadata !DIExpression()), !dbg !553
  %46 = icmp eq i32 %45, 1, !dbg !581
  br i1 %46, label %33, label %47, !dbg !582, !llvm.loop !583

47:                                               ; preds = %44, %36, %41
  call void @llvm.lifetime.end.p0(i64 8196, ptr nonnull %7) #19, !dbg !585
  br label %124, !dbg !586

48:                                               ; preds = %33, %41, %27
  call void @llvm.lifetime.end.p0(i64 8196, ptr nonnull %7) #19, !dbg !585
  %49 = call ptr @ydynabin_forward(ptr noundef nonnull %28, i64 noundef 1) #19, !dbg !587
  call void @llvm.dbg.value(metadata ptr %49, metadata !469, metadata !DIExpression()), !dbg !534
  %50 = load i8, ptr %49, align 1, !dbg !588, !tbaa !388
  call void @llvm.dbg.value(metadata i8 %50, metadata !443, metadata !DIExpression()), !dbg !493
  store i8 %50, ptr %8, align 1, !dbg !589, !tbaa !388
  %51 = and i8 %50, 1, !dbg !590
  %52 = icmp eq i8 %51, 0, !dbg !592
  br i1 %52, label %124, label %53, !dbg !593

53:                                               ; preds = %48
  %54 = load i32, ptr %23, align 4, !dbg !594, !tbaa !138
  call void @llvm.dbg.value(metadata i32 %54, metadata !538, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata ptr %28, metadata !545, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i64 4, metadata !546, metadata !DIExpression()), !dbg !596
  call void @llvm.lifetime.start.p0(i64 8196, ptr nonnull %6) #19, !dbg !598
  call void @llvm.dbg.declare(metadata ptr %6, metadata !547, metadata !DIExpression()), !dbg !599
  %55 = load i64, ptr %30, align 8, !dbg !600, !tbaa !559
  %56 = icmp ult i64 %55, 4, !dbg !601
  br i1 %56, label %60, label %72, !dbg !602

57:                                               ; preds = %68
  %58 = load i64, ptr %30, align 8, !dbg !603, !tbaa !559
  %59 = icmp ult i64 %58, 4, !dbg !604
  br i1 %59, label %60, label %72, !dbg !605

60:                                               ; preds = %53, %57
  %61 = call i64 @read(i32 noundef %54, ptr noundef nonnull %6, i64 noundef 8196) #19, !dbg !606
  call void @llvm.dbg.value(metadata i64 %61, metadata !551, metadata !DIExpression()), !dbg !596
  %62 = icmp slt i64 %61, 0, !dbg !607
  br i1 %62, label %71, label %63, !dbg !608

63:                                               ; preds = %60
  %64 = icmp eq i64 %61, 0, !dbg !609
  br i1 %64, label %65, label %68, !dbg !610

65:                                               ; preds = %63
  %66 = load i64, ptr %30, align 8, !dbg !611, !tbaa !559
  %67 = icmp ult i64 %66, 4, !dbg !612
  br i1 %67, label %71, label %72, !dbg !613

68:                                               ; preds = %63
  %69 = call i32 @ydynabin_expand(ptr noundef nonnull %28, ptr noundef nonnull %6, i64 noundef %61) #19, !dbg !614
  call void @llvm.dbg.value(metadata i32 %69, metadata !552, metadata !DIExpression()), !dbg !596
  %70 = icmp eq i32 %69, 1, !dbg !615
  br i1 %70, label %57, label %71, !dbg !616, !llvm.loop !617

71:                                               ; preds = %68, %60, %65
  call void @llvm.lifetime.end.p0(i64 8196, ptr nonnull %6) #19, !dbg !619
  br label %124, !dbg !620

72:                                               ; preds = %57, %65, %53
  call void @llvm.lifetime.end.p0(i64 8196, ptr nonnull %6) #19, !dbg !619
  %73 = call ptr @ydynabin_forward(ptr noundef nonnull %28, i64 noundef 4) #19, !dbg !621
  call void @llvm.dbg.value(metadata ptr %73, metadata !471, metadata !DIExpression()), !dbg !534
  %74 = load i32, ptr %73, align 4, !dbg !622, !tbaa !623
  call void @llvm.dbg.value(metadata i32 %74, metadata !624, metadata !DIExpression()), !dbg !630
  %75 = call i32 @llvm.bswap.i32(i32 %74), !dbg !632
  call void @llvm.dbg.value(metadata i32 %75, metadata !473, metadata !DIExpression()), !dbg !534
  %76 = icmp eq i32 %74, 0, !dbg !633
  br i1 %76, label %119, label %77, !dbg !634

77:                                               ; preds = %72
  %78 = load i32, ptr %23, align 4, !dbg !635, !tbaa !138
  %79 = zext i32 %75 to i64, !dbg !637
  call void @llvm.dbg.value(metadata i32 %78, metadata !538, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.value(metadata ptr %28, metadata !545, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.value(metadata i64 %79, metadata !546, metadata !DIExpression()), !dbg !638
  call void @llvm.lifetime.start.p0(i64 8196, ptr nonnull %5) #19, !dbg !640
  call void @llvm.dbg.declare(metadata ptr %5, metadata !547, metadata !DIExpression()), !dbg !641
  %80 = load i64, ptr %30, align 8, !dbg !642, !tbaa !559
  %81 = icmp ult i64 %80, %79, !dbg !643
  br i1 %81, label %82, label %97, !dbg !644

82:                                               ; preds = %77, %93
  %83 = load i64, ptr %30, align 8, !dbg !645, !tbaa !559
  %84 = icmp ult i64 %83, %79, !dbg !646
  br i1 %84, label %85, label %97, !dbg !647

85:                                               ; preds = %82
  %86 = call i64 @read(i32 noundef %78, ptr noundef nonnull %5, i64 noundef 8196) #19, !dbg !648
  call void @llvm.dbg.value(metadata i64 %86, metadata !551, metadata !DIExpression()), !dbg !638
  %87 = icmp slt i64 %86, 0, !dbg !649
  br i1 %87, label %96, label %88, !dbg !650

88:                                               ; preds = %85
  %89 = icmp eq i64 %86, 0, !dbg !651
  br i1 %89, label %90, label %93, !dbg !652

90:                                               ; preds = %88
  %91 = load i64, ptr %30, align 8, !dbg !653, !tbaa !559
  %92 = icmp ult i64 %91, %79, !dbg !654
  br i1 %92, label %96, label %97, !dbg !655

93:                                               ; preds = %88
  %94 = call i32 @ydynabin_expand(ptr noundef nonnull %28, ptr noundef nonnull %5, i64 noundef %86) #19, !dbg !656
  call void @llvm.dbg.value(metadata i32 %94, metadata !552, metadata !DIExpression()), !dbg !638
  %95 = icmp eq i32 %94, 1, !dbg !657
  br i1 %95, label %82, label %96, !dbg !658, !llvm.loop !659

96:                                               ; preds = %93, %85, %90
  call void @llvm.lifetime.end.p0(i64 8196, ptr nonnull %5) #19, !dbg !661
  br label %124, !dbg !662

97:                                               ; preds = %82, %90, %77
  call void @llvm.lifetime.end.p0(i64 8196, ptr nonnull %5) #19, !dbg !661
  %98 = call ptr @ydynabin_forward(ptr noundef nonnull %28, i64 noundef %79) #19, !dbg !663
  call void @llvm.dbg.value(metadata ptr %98, metadata !484, metadata !DIExpression()), !dbg !534
  %99 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %79) #18, !dbg !664
  call void @llvm.dbg.value(metadata ptr %99, metadata !485, metadata !DIExpression()), !dbg !534
  %100 = icmp eq ptr %99, null, !dbg !666
  br i1 %100, label %124, label %101, !dbg !667

101:                                              ; preds = %97
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %99, ptr align 1 %98, i64 %79, i1 false), !dbg !668
  %102 = load i8, ptr %8, align 1, !dbg !669, !tbaa !388
  call void @llvm.dbg.value(metadata i8 %102, metadata !443, metadata !DIExpression()), !dbg !493
  %103 = and i8 %102, 64, !dbg !669
  %104 = icmp eq i8 %103, 0, !dbg !669
  br i1 %104, label %119, label %105, !dbg !670

105:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19, !dbg !671
  call void @llvm.dbg.value(metadata ptr %12, metadata !486, metadata !DIExpression(DW_OP_deref)), !dbg !672
  %106 = call zeroext i1 @snappy_uncompressed_length(ptr noundef nonnull %99, i64 noundef %79, ptr noundef nonnull %12) #19, !dbg !673
  %107 = load i64, ptr %12, align 8, !dbg !674, !tbaa !676
  call void @llvm.dbg.value(metadata i64 %107, metadata !486, metadata !DIExpression()), !dbg !672
  %108 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %107) #18, !dbg !674
  call void @llvm.dbg.value(metadata ptr %108, metadata !491, metadata !DIExpression()), !dbg !672
  %109 = icmp eq ptr %108, null, !dbg !677
  br i1 %109, label %113, label %110, !dbg !678

110:                                              ; preds = %105
  %111 = call i32 @snappy_uncompress(ptr noundef nonnull %99, i64 noundef %79, ptr noundef nonnull %108) #19, !dbg !679
  %112 = icmp eq i32 %111, 0, !dbg !679
  call void @free(ptr noundef nonnull %99) #19, !dbg !672
  br i1 %112, label %116, label %113, !dbg !681

113:                                              ; preds = %110, %105
  %114 = phi ptr [ %99, %105 ], [ %108, %110 ]
  %115 = phi i32 [ 4, %105 ], [ 5, %110 ]
  call void @free(ptr noundef nonnull %114) #19, !dbg !672
  call void @llvm.dbg.value(metadata ptr poison, metadata !485, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata i32 %115, metadata !446, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i32 poison, metadata !473, metadata !DIExpression()), !dbg !534
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19, !dbg !682
  br label %124

116:                                              ; preds = %110
  call void @llvm.dbg.value(metadata ptr %108, metadata !485, metadata !DIExpression()), !dbg !534
  %117 = load i64, ptr %12, align 8, !dbg !683, !tbaa !676
  call void @llvm.dbg.value(metadata i64 %117, metadata !486, metadata !DIExpression()), !dbg !672
  %118 = trunc i64 %117 to i32, !dbg !683
  call void @llvm.dbg.value(metadata i32 0, metadata !446, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i32 %118, metadata !473, metadata !DIExpression()), !dbg !534
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19, !dbg !682
  br label %119

119:                                              ; preds = %116, %101, %72
  %120 = phi i32 [ %118, %116 ], [ %75, %101 ], [ 0, %72 ], !dbg !684
  %121 = phi ptr [ %108, %116 ], [ %99, %101 ], [ null, %72 ], !dbg !534
  call void @llvm.dbg.value(metadata ptr %121, metadata !485, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata i32 0, metadata !446, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i32 %120, metadata !473, metadata !DIExpression()), !dbg !534
  %122 = zext i32 %120 to i64, !dbg !685
  %123 = getelementptr inbounds %struct.ybin_s, ptr %3, i64 0, i32 1, !dbg !686
  store i64 %122, ptr %123, align 8, !dbg !687, !tbaa !688
  store ptr %121, ptr %3, align 8, !dbg !690, !tbaa !691
  br label %124, !dbg !692

124:                                              ; preds = %113, %96, %71, %47, %97, %48, %119
  %125 = phi i32 [ 0, %119 ], [ 2, %48 ], [ 4, %97 ], [ 1, %47 ], [ 1, %71 ], [ 1, %96 ], [ %115, %113 ], !dbg !534
  call void @llvm.dbg.value(metadata i32 %125, metadata !446, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.label(metadata !492), !dbg !693
  call void @ydynabin_delete(ptr noundef %28) #19, !dbg !694
  br label %126, !dbg !695

126:                                              ; preds = %4, %124
  %127 = phi i32 [ %125, %124 ], [ 1, %4 ], !dbg !493
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #19, !dbg !696
  ret i32 %127, !dbg !696
}

declare !dbg !697 i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare !dbg !702 ptr @ydynabin_new(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

declare !dbg !705 ptr @ydynabin_forward(ptr noundef, i64 noundef) local_unnamed_addr #8

declare !dbg !708 zeroext i1 @snappy_uncompressed_length(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

declare !dbg !714 i32 @snappy_uncompress(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare !dbg !717 void @ydynabin_delete(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define i32 @finedb_del(ptr nocapture noundef readonly %0, ptr %1, i64 %2) local_unnamed_addr #6 !dbg !720 {
  %4 = alloca i8, align 1
  %5 = alloca [3 x %struct.iovec], align 16
  %6 = alloca %struct.msghdr, align 8
  %7 = alloca i16, align 2
  call void @llvm.dbg.value(metadata ptr %1, metadata !725, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !733
  call void @llvm.dbg.value(metadata i64 %2, metadata !725, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !733
  call void @llvm.dbg.value(metadata ptr %0, metadata !724, metadata !DIExpression()), !dbg !733
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19, !dbg !734
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #19, !dbg !735
  call void @llvm.dbg.declare(metadata ptr %5, metadata !729, metadata !DIExpression()), !dbg !736
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #19, !dbg !737
  call void @llvm.dbg.declare(metadata ptr %6, metadata !731, metadata !DIExpression()), !dbg !738
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #19, !dbg !739
  call void @llvm.dbg.value(metadata i8 2, metadata !726, metadata !DIExpression()), !dbg !733
  %8 = getelementptr inbounds %struct.finedb_client_s, ptr %0, i64 0, i32 3, !dbg !740
  %9 = load i32, ptr %8, align 8, !dbg !740, !tbaa !363
  %10 = icmp eq i32 %9, 0, !dbg !742
  %11 = select i1 %10, i8 2, i8 18, !dbg !743
  store i8 %11, ptr %4, align 1, !dbg !744
  %12 = trunc i64 %2 to i16, !dbg !745
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  call void @llvm.dbg.value(metadata i16 %13, metadata !732, metadata !DIExpression()), !dbg !744
  store i16 %13, ptr %7, align 2, !dbg !746, !tbaa !504
  call void @bzero(ptr noundef nonnull %6, i64 noundef 56) #19, !dbg !747
  %14 = getelementptr inbounds %struct.msghdr, ptr %6, i64 0, i32 2, !dbg !748
  store ptr %5, ptr %14, align 8, !dbg !749, !tbaa !508
  %15 = getelementptr inbounds %struct.msghdr, ptr %6, i64 0, i32 3, !dbg !750
  store i64 3, ptr %15, align 8, !dbg !751, !tbaa !513
  store ptr %4, ptr %5, align 16, !dbg !752, !tbaa !515
  %16 = getelementptr inbounds %struct.iovec, ptr %5, i64 0, i32 1, !dbg !753
  store i64 1, ptr %16, align 8, !dbg !754, !tbaa !519
  %17 = getelementptr inbounds [3 x %struct.iovec], ptr %5, i64 0, i64 1, !dbg !755
  store ptr %7, ptr %17, align 16, !dbg !756, !tbaa !515
  %18 = getelementptr inbounds [3 x %struct.iovec], ptr %5, i64 0, i64 1, i32 1, !dbg !757
  store i64 2, ptr %18, align 8, !dbg !758, !tbaa !519
  %19 = getelementptr inbounds [3 x %struct.iovec], ptr %5, i64 0, i64 2, !dbg !759
  store ptr %1, ptr %19, align 16, !dbg !760, !tbaa !515
  %20 = getelementptr inbounds [3 x %struct.iovec], ptr %5, i64 0, i64 2, i32 1, !dbg !761
  store i64 %2, ptr %20, align 8, !dbg !762, !tbaa !519
  %21 = add i64 %2, 3, !dbg !763
  call void @llvm.dbg.value(metadata i64 %21, metadata !727, metadata !DIExpression()), !dbg !733
  %22 = getelementptr inbounds %struct.finedb_client_s, ptr %0, i64 0, i32 2, !dbg !764
  %23 = load i32, ptr %22, align 4, !dbg !764, !tbaa !138
  %24 = call i64 @sendmsg(i32 noundef %23, ptr noundef nonnull %6, i32 noundef 0) #19, !dbg !765
  call void @llvm.dbg.value(metadata i64 %24, metadata !728, metadata !DIExpression()), !dbg !733
  %25 = icmp eq i64 %24, %21, !dbg !766
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #19, !dbg !768
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #19, !dbg !768
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #19, !dbg !768
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load i32, ptr %22, align 4, !dbg !769, !tbaa !138
  call void @llvm.dbg.value(metadata ptr %4, metadata !726, metadata !DIExpression(DW_OP_deref)), !dbg !733
  %28 = call i64 @read(i32 noundef %27, ptr noundef nonnull %4, i64 noundef 1) #19, !dbg !770
  call void @llvm.dbg.value(metadata i64 %28, metadata !728, metadata !DIExpression()), !dbg !733
  %29 = icmp eq i64 %28, 1, !dbg !771
  br i1 %29, label %30, label %36, !dbg !773

30:                                               ; preds = %26
  %31 = load i8, ptr %4, align 1, !dbg !774, !tbaa !388
  call void @llvm.dbg.value(metadata i8 %31, metadata !726, metadata !DIExpression()), !dbg !733
  %32 = shl i8 %31, 1, !dbg !733
  %33 = and i8 %32, 2, !dbg !733
  %34 = xor i8 %33, 2, !dbg !733
  %35 = zext i8 %34 to i32, !dbg !733
  br label %36, !dbg !733

36:                                               ; preds = %30, %26, %3
  %37 = phi i32 [ 1, %3 ], [ 1, %26 ], [ %35, %30 ], !dbg !733
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19, !dbg !776
  ret i32 %37, !dbg !776
}

; Function Attrs: nounwind uwtable
define i32 @finedb_put(ptr nocapture noundef readonly %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #6 !dbg !777 {
  %6 = alloca %struct.ybin_s, align 8
  call void @llvm.dbg.value(metadata ptr %1, metadata !782, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !784
  call void @llvm.dbg.value(metadata i64 %2, metadata !782, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !784
  store ptr %3, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %6, i64 0, i32 1
  store i64 %4, ptr %7, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !781, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.declare(metadata ptr %6, metadata !783, metadata !DIExpression()), !dbg !785
  %8 = tail call fastcc i32 @_send_key_data(ptr noundef %0, ptr %1, i64 %2, ptr noundef nonnull byval(%struct.ybin_s) align 8 %6), !dbg !786
  ret i32 %8, !dbg !787
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_send_key_data(ptr nocapture noundef readonly %0, ptr %1, i64 %2, ptr nocapture noundef readonly byval(%struct.ybin_s) align 8 %3) unnamed_addr #6 !dbg !788 {
  %5 = alloca i8, align 1
  %6 = alloca [5 x %struct.iovec], align 16
  %7 = alloca %struct.msghdr, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca %struct.snappy_env, align 8
  %11 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %1, metadata !795, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !817
  call void @llvm.dbg.value(metadata i64 %2, metadata !795, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !817
  call void @llvm.dbg.value(metadata ptr %0, metadata !792, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i32 poison, metadata !793, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i32 poison, metadata !794, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.declare(metadata ptr %3, metadata !796, metadata !DIExpression()), !dbg !818
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19, !dbg !819
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #19, !dbg !820
  call void @llvm.dbg.declare(metadata ptr %6, metadata !800, metadata !DIExpression()), !dbg !821
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #19, !dbg !822
  call void @llvm.dbg.declare(metadata ptr %7, metadata !805, metadata !DIExpression()), !dbg !823
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #19, !dbg !824
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19, !dbg !825
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #19, !dbg !826
  call void @llvm.dbg.declare(metadata ptr %10, metadata !808, metadata !DIExpression()), !dbg !827
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19, !dbg !828
  call void @llvm.dbg.value(metadata ptr null, metadata !816, metadata !DIExpression()), !dbg !829
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !dbg !830
  %12 = call i32 @snappy_init_env(ptr noundef nonnull %10) #19, !dbg !831
  %13 = icmp eq i32 %12, 0, !dbg !831
  br i1 %13, label %14, label %25, !dbg !833

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ybin_s, ptr %3, i64 0, i32 1, !dbg !834
  %16 = load i64, ptr %15, align 8, !dbg !834, !tbaa !688
  %17 = call i64 @snappy_max_compressed_length(i64 noundef %16) #19, !dbg !834
  %18 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %17) #18, !dbg !834
  call void @llvm.dbg.value(metadata ptr %18, metadata !816, metadata !DIExpression()), !dbg !829
  %19 = icmp eq ptr %18, null, !dbg !836
  br i1 %19, label %25, label %20, !dbg !837

20:                                               ; preds = %14
  %21 = load ptr, ptr %3, align 8, !dbg !838, !tbaa !691
  call void @llvm.dbg.value(metadata ptr %11, metadata !815, metadata !DIExpression(DW_OP_deref)), !dbg !829
  %22 = call i32 @snappy_compress(ptr noundef nonnull %10, ptr noundef %21, i64 noundef %16, ptr noundef nonnull %18, ptr noundef nonnull %11) #19, !dbg !840
  %23 = icmp eq i32 %22, 0, !dbg !840
  br i1 %23, label %27, label %24, !dbg !841

24:                                               ; preds = %20
  call void @free(ptr noundef nonnull %18) #19, !dbg !842
  call void @llvm.dbg.value(metadata ptr null, metadata !816, metadata !DIExpression()), !dbg !829
  br label %25, !dbg !844

25:                                               ; preds = %24, %4, %14
  %26 = phi i32 [ 4, %14 ], [ 1, %4 ], [ 5, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19, !dbg !845
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #19, !dbg !845
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19, !dbg !845
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #19, !dbg !845
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19, !dbg !845
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #19, !dbg !845
  br label %66

27:                                               ; preds = %20
  %28 = load i64, ptr %11, align 8, !dbg !846, !tbaa !676
  call void @llvm.dbg.value(metadata i64 %28, metadata !815, metadata !DIExpression()), !dbg !829
  %29 = getelementptr inbounds i8, ptr %18, i64 %28, !dbg !847
  store i8 0, ptr %29, align 1, !dbg !848, !tbaa !388
  call void @snappy_free_env(ptr noundef nonnull %10) #19, !dbg !849
  call void @llvm.dbg.value(metadata i8 67, metadata !797, metadata !DIExpression()), !dbg !817
  %30 = getelementptr inbounds %struct.finedb_client_s, ptr %0, i64 0, i32 3, !dbg !850
  %31 = load i32, ptr %30, align 8, !dbg !850, !tbaa !363
  %32 = icmp eq i32 %31, 0, !dbg !852
  %33 = select i1 %32, i8 67, i8 83, !dbg !853
  store i8 %33, ptr %5, align 1, !dbg !829
  %34 = trunc i64 %2 to i16, !dbg !854
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  call void @llvm.dbg.value(metadata i16 %35, metadata !806, metadata !DIExpression()), !dbg !829
  store i16 %35, ptr %8, align 2, !dbg !855, !tbaa !504
  %36 = load i64, ptr %11, align 8, !dbg !856, !tbaa !676
  call void @llvm.dbg.value(metadata i64 %36, metadata !815, metadata !DIExpression()), !dbg !829
  %37 = trunc i64 %36 to i32, !dbg !856
  call void @llvm.dbg.value(metadata i32 %37, metadata !624, metadata !DIExpression()), !dbg !857
  %38 = call i32 @llvm.bswap.i32(i32 %37), !dbg !859
  call void @llvm.dbg.value(metadata i32 %38, metadata !807, metadata !DIExpression()), !dbg !829
  store i32 %38, ptr %9, align 4, !dbg !860, !tbaa !623
  call void @bzero(ptr noundef nonnull %7, i64 noundef 56) #19, !dbg !861
  %39 = getelementptr inbounds %struct.msghdr, ptr %7, i64 0, i32 2, !dbg !862
  store ptr %6, ptr %39, align 8, !dbg !863, !tbaa !508
  %40 = getelementptr inbounds %struct.msghdr, ptr %7, i64 0, i32 3, !dbg !864
  store i64 5, ptr %40, align 8, !dbg !865, !tbaa !513
  store ptr %5, ptr %6, align 16, !dbg !866, !tbaa !515
  %41 = getelementptr inbounds %struct.iovec, ptr %6, i64 0, i32 1, !dbg !867
  store i64 1, ptr %41, align 8, !dbg !868, !tbaa !519
  %42 = getelementptr inbounds [5 x %struct.iovec], ptr %6, i64 0, i64 1, !dbg !869
  store ptr %8, ptr %42, align 16, !dbg !870, !tbaa !515
  %43 = getelementptr inbounds [5 x %struct.iovec], ptr %6, i64 0, i64 1, i32 1, !dbg !871
  store i64 2, ptr %43, align 8, !dbg !872, !tbaa !519
  %44 = getelementptr inbounds [5 x %struct.iovec], ptr %6, i64 0, i64 2, !dbg !873
  store ptr %1, ptr %44, align 16, !dbg !874, !tbaa !515
  %45 = getelementptr inbounds [5 x %struct.iovec], ptr %6, i64 0, i64 2, i32 1, !dbg !875
  store i64 %2, ptr %45, align 8, !dbg !876, !tbaa !519
  %46 = getelementptr inbounds [5 x %struct.iovec], ptr %6, i64 0, i64 3, !dbg !877
  store ptr %9, ptr %46, align 16, !dbg !878, !tbaa !515
  %47 = getelementptr inbounds [5 x %struct.iovec], ptr %6, i64 0, i64 3, i32 1, !dbg !879
  store i64 4, ptr %47, align 8, !dbg !880, !tbaa !519
  %48 = getelementptr inbounds [5 x %struct.iovec], ptr %6, i64 0, i64 4, !dbg !881
  store ptr %18, ptr %48, align 16, !dbg !882, !tbaa !515
  %49 = getelementptr inbounds [5 x %struct.iovec], ptr %6, i64 0, i64 4, i32 1, !dbg !883
  store i64 %36, ptr %49, align 8, !dbg !884, !tbaa !519
  %50 = add i64 %2, 7, !dbg !885
  %51 = add i64 %50, %36, !dbg !886
  call void @llvm.dbg.value(metadata i64 %51, metadata !798, metadata !DIExpression()), !dbg !817
  %52 = getelementptr inbounds %struct.finedb_client_s, ptr %0, i64 0, i32 2, !dbg !887
  %53 = load i32, ptr %52, align 4, !dbg !887, !tbaa !138
  %54 = call i64 @sendmsg(i32 noundef %53, ptr noundef nonnull %7, i32 noundef 0) #19, !dbg !888
  call void @llvm.dbg.value(metadata i64 %54, metadata !799, metadata !DIExpression()), !dbg !817
  call void @free(ptr noundef nonnull %18) #19, !dbg !889
  call void @llvm.dbg.value(metadata ptr null, metadata !816, metadata !DIExpression()), !dbg !829
  %55 = icmp eq i64 %54, %51, !dbg !890
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19, !dbg !845
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #19, !dbg !845
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19, !dbg !845
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #19, !dbg !845
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19, !dbg !845
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #19, !dbg !845
  br i1 %55, label %56, label %66

56:                                               ; preds = %27
  %57 = load i32, ptr %52, align 4, !dbg !892, !tbaa !138
  call void @llvm.dbg.value(metadata ptr %5, metadata !797, metadata !DIExpression(DW_OP_deref)), !dbg !817
  %58 = call i64 @read(i32 noundef %57, ptr noundef nonnull %5, i64 noundef 1) #19, !dbg !893
  call void @llvm.dbg.value(metadata i64 %58, metadata !799, metadata !DIExpression()), !dbg !817
  %59 = icmp eq i64 %58, 1, !dbg !894
  br i1 %59, label %60, label %66, !dbg !896

60:                                               ; preds = %56
  %61 = load i8, ptr %5, align 1, !dbg !897, !tbaa !388
  call void @llvm.dbg.value(metadata i8 %61, metadata !797, metadata !DIExpression()), !dbg !817
  %62 = shl i8 %61, 1, !dbg !817
  %63 = and i8 %62, 2, !dbg !817
  %64 = xor i8 %63, 2, !dbg !817
  %65 = zext i8 %64 to i32, !dbg !817
  br label %66, !dbg !817

66:                                               ; preds = %25, %60, %56, %27
  %67 = phi i32 [ 1, %27 ], [ 1, %56 ], [ %65, %60 ], [ %26, %25 ], !dbg !817
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19, !dbg !899
  ret i32 %67, !dbg !899
}

; Function Attrs: nounwind uwtable
define i32 @finedb_add(ptr nocapture noundef readonly %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #6 !dbg !900 {
  %6 = alloca %struct.ybin_s, align 8
  call void @llvm.dbg.value(metadata ptr %1, metadata !903, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !905
  call void @llvm.dbg.value(metadata i64 %2, metadata !903, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !905
  store ptr %3, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %6, i64 0, i32 1
  store i64 %4, ptr %7, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !902, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.declare(metadata ptr %6, metadata !904, metadata !DIExpression()), !dbg !906
  %8 = tail call fastcc i32 @_send_key_data(ptr noundef %0, ptr %1, i64 %2, ptr noundef nonnull byval(%struct.ybin_s) align 8 %6), !dbg !907
  ret i32 %8, !dbg !908
}

; Function Attrs: nounwind uwtable
define i32 @finedb_update(ptr nocapture noundef readonly %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #6 !dbg !909 {
  %6 = alloca %struct.ybin_s, align 8
  call void @llvm.dbg.value(metadata ptr %1, metadata !912, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !914
  call void @llvm.dbg.value(metadata i64 %2, metadata !912, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !914
  store ptr %3, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %6, i64 0, i32 1
  store i64 %4, ptr %7, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !911, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.declare(metadata ptr %6, metadata !913, metadata !DIExpression()), !dbg !915
  %8 = tail call fastcc i32 @_send_key_data(ptr noundef %0, ptr %1, i64 %2, ptr noundef nonnull byval(%struct.ybin_s) align 8 %6), !dbg !916
  ret i32 %8, !dbg !917
}

; Function Attrs: nofree nounwind uwtable
define i32 @finedb_start(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !dbg !918 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !920, metadata !DIExpression()), !dbg !923
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2), !dbg !924
  call void @llvm.dbg.value(metadata ptr %0, metadata !929, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i8 5, metadata !930, metadata !DIExpression()), !dbg !924
  store i8 5, ptr %2, align 1, !tbaa !388
  call void @llvm.dbg.value(metadata ptr undef, metadata !931, metadata !DIExpression()), !dbg !924
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19, !dbg !935
  %4 = getelementptr inbounds %struct.finedb_client_s, ptr %0, i64 0, i32 2, !dbg !936
  %5 = load i32, ptr %4, align 4, !dbg !936, !tbaa !138
  call void @llvm.dbg.value(metadata ptr %2, metadata !930, metadata !DIExpression(DW_OP_deref)), !dbg !924
  %6 = call i64 @write(i32 noundef %5, ptr noundef nonnull %2, i64 noundef 1) #19, !dbg !937
  call void @llvm.dbg.value(metadata i64 %6, metadata !933, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !924
  %7 = and i64 %6, 4294967295, !dbg !938
  %8 = icmp eq i64 %7, 1, !dbg !938
  br i1 %8, label %9, label %14, !dbg !940

9:                                                ; preds = %1
  %10 = load i32, ptr %4, align 4, !dbg !941, !tbaa !138
  call void @llvm.dbg.value(metadata ptr %3, metadata !932, metadata !DIExpression(DW_OP_deref)), !dbg !924
  %11 = call i64 @read(i32 noundef %10, ptr noundef nonnull %3, i64 noundef 1) #19, !dbg !942
  call void @llvm.dbg.value(metadata i64 %11, metadata !933, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !924
  %12 = and i64 %11, 4294967295, !dbg !943
  %13 = icmp eq i64 %12, 1, !dbg !943
  br i1 %13, label %15, label %14, !dbg !945

14:                                               ; preds = %1, %9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19, !dbg !946
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2), !dbg !946
  call void @llvm.dbg.value(metadata i32 1, metadata !922, metadata !DIExpression()), !dbg !923
  br label %21, !dbg !947

15:                                               ; preds = %9
  %16 = load i8, ptr %3, align 1, !dbg !948, !tbaa !388
  call void @llvm.dbg.value(metadata i8 %16, metadata !932, metadata !DIExpression()), !dbg !924
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19, !dbg !946
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2), !dbg !946
  call void @llvm.dbg.value(metadata i32 0, metadata !922, metadata !DIExpression()), !dbg !923
  %17 = shl i8 %16, 1, !dbg !947
  %18 = and i8 %17, 2, !dbg !947
  %19 = xor i8 %18, 2, !dbg !947
  %20 = zext i8 %19 to i32, !dbg !947
  br label %21, !dbg !947

21:                                               ; preds = %14, %15
  %22 = phi i32 [ %20, %15 ], [ 1, %14 ]
  ret i32 %22, !dbg !950
}

; Function Attrs: nofree nounwind uwtable
define i32 @finedb_stop(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !dbg !951 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !953, metadata !DIExpression()), !dbg !956
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2), !dbg !957
  call void @llvm.dbg.value(metadata ptr %0, metadata !929, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i8 6, metadata !930, metadata !DIExpression()), !dbg !957
  store i8 6, ptr %2, align 1, !tbaa !388
  call void @llvm.dbg.value(metadata ptr undef, metadata !931, metadata !DIExpression()), !dbg !957
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19, !dbg !959
  %4 = getelementptr inbounds %struct.finedb_client_s, ptr %0, i64 0, i32 2, !dbg !960
  %5 = load i32, ptr %4, align 4, !dbg !960, !tbaa !138
  call void @llvm.dbg.value(metadata ptr %2, metadata !930, metadata !DIExpression(DW_OP_deref)), !dbg !957
  %6 = call i64 @write(i32 noundef %5, ptr noundef nonnull %2, i64 noundef 1) #19, !dbg !961
  call void @llvm.dbg.value(metadata i64 %6, metadata !933, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !957
  %7 = and i64 %6, 4294967295, !dbg !962
  %8 = icmp eq i64 %7, 1, !dbg !962
  br i1 %8, label %9, label %14, !dbg !963

9:                                                ; preds = %1
  %10 = load i32, ptr %4, align 4, !dbg !964, !tbaa !138
  call void @llvm.dbg.value(metadata ptr %3, metadata !932, metadata !DIExpression(DW_OP_deref)), !dbg !957
  %11 = call i64 @read(i32 noundef %10, ptr noundef nonnull %3, i64 noundef 1) #19, !dbg !965
  call void @llvm.dbg.value(metadata i64 %11, metadata !933, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !957
  %12 = and i64 %11, 4294967295, !dbg !966
  %13 = icmp eq i64 %12, 1, !dbg !966
  br i1 %13, label %15, label %14, !dbg !967

14:                                               ; preds = %1, %9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19, !dbg !968
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2), !dbg !968
  call void @llvm.dbg.value(metadata i32 1, metadata !955, metadata !DIExpression()), !dbg !956
  br label %21, !dbg !969

15:                                               ; preds = %9
  %16 = load i8, ptr %3, align 1, !dbg !970, !tbaa !388
  call void @llvm.dbg.value(metadata i8 %16, metadata !932, metadata !DIExpression()), !dbg !957
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19, !dbg !968
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2), !dbg !968
  call void @llvm.dbg.value(metadata i32 0, metadata !955, metadata !DIExpression()), !dbg !956
  %17 = shl i8 %16, 1, !dbg !969
  %18 = and i8 %17, 2, !dbg !969
  %19 = xor i8 %18, 2, !dbg !969
  %20 = zext i8 %19 to i32, !dbg !969
  br label %21, !dbg !969

21:                                               ; preds = %14, %15
  %22 = phi i32 [ %20, %15 ], [ 1, %14 ]
  ret i32 %22, !dbg !971
}

; Function Attrs: nofree nounwind uwtable
define i32 @finedb_ping(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !dbg !972 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !974, metadata !DIExpression()), !dbg !977
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2), !dbg !978
  call void @llvm.dbg.value(metadata ptr %0, metadata !929, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata i8 0, metadata !930, metadata !DIExpression()), !dbg !978
  store i8 0, ptr %2, align 1, !tbaa !388
  call void @llvm.dbg.value(metadata ptr undef, metadata !931, metadata !DIExpression()), !dbg !978
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19, !dbg !980
  %4 = getelementptr inbounds %struct.finedb_client_s, ptr %0, i64 0, i32 2, !dbg !981
  %5 = load i32, ptr %4, align 4, !dbg !981, !tbaa !138
  call void @llvm.dbg.value(metadata ptr %2, metadata !930, metadata !DIExpression(DW_OP_deref)), !dbg !978
  %6 = call i64 @write(i32 noundef %5, ptr noundef nonnull %2, i64 noundef 1) #19, !dbg !982
  call void @llvm.dbg.value(metadata i64 %6, metadata !933, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !978
  %7 = and i64 %6, 4294967295, !dbg !983
  %8 = icmp eq i64 %7, 1, !dbg !983
  br i1 %8, label %9, label %14, !dbg !984

9:                                                ; preds = %1
  %10 = load i32, ptr %4, align 4, !dbg !985, !tbaa !138
  call void @llvm.dbg.value(metadata ptr %3, metadata !932, metadata !DIExpression(DW_OP_deref)), !dbg !978
  %11 = call i64 @read(i32 noundef %10, ptr noundef nonnull %3, i64 noundef 1) #19, !dbg !986
  call void @llvm.dbg.value(metadata i64 %11, metadata !933, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !978
  %12 = and i64 %11, 4294967295, !dbg !987
  %13 = icmp eq i64 %12, 1, !dbg !987
  br i1 %13, label %15, label %14, !dbg !988

14:                                               ; preds = %1, %9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19, !dbg !989
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2), !dbg !989
  call void @llvm.dbg.value(metadata i32 1, metadata !976, metadata !DIExpression()), !dbg !977
  br label %21, !dbg !990

15:                                               ; preds = %9
  %16 = load i8, ptr %3, align 1, !dbg !991, !tbaa !388
  call void @llvm.dbg.value(metadata i8 %16, metadata !932, metadata !DIExpression()), !dbg !978
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19, !dbg !989
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2), !dbg !989
  call void @llvm.dbg.value(metadata i32 0, metadata !976, metadata !DIExpression()), !dbg !977
  %17 = shl i8 %16, 1, !dbg !990
  %18 = and i8 %17, 2, !dbg !990
  %19 = xor i8 %18, 2, !dbg !990
  %20 = zext i8 %19 to i32, !dbg !990
  br label %21, !dbg !990

21:                                               ; preds = %14, %15
  %22 = phi i32 [ %20, %15 ], [ 1, %14 ]
  ret i32 %22, !dbg !992
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

declare !dbg !993 i32 @snappy_init_env(ptr noundef) local_unnamed_addr #8

declare !dbg !997 i64 @snappy_max_compressed_length(i64 noundef) local_unnamed_addr #8

declare !dbg !1000 i32 @snappy_compress(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare !dbg !1003 void @snappy_free_env(ptr noundef) local_unnamed_addr #8

declare !dbg !1006 i32 @ydynabin_expand(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #16

attributes #0 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !58, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "libfinedb.c", directory: "/home/raj/FineDB/src/lib", checksumkind: CSK_MD5, checksum: "698e73a2edf65d528be85ecad40daf90")
!2 = !{!3, !9, !21, !30, !42, !52}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !4, line: 45, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/lib", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "YFALSE", value: 0)
!8 = !DIEnumerator(name: "YTRUE", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !10, line: 24, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20}
!12 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!13 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!14 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!15 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!16 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!17 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!18 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!19 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!20 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "finedb_result_e", file: !22, line: 17, baseType: !5, size: 32, elements: !23)
!22 = !DIFile(filename: "./libfinedb.h", directory: "/home/raj/FineDB/src/lib", checksumkind: CSK_MD5, checksum: "baafaf372fa9ce6db451dea2a43221cb")
!23 = !{!24, !25, !26, !27, !28, !29}
!24 = !DIEnumerator(name: "FINEDB_OK", value: 0)
!25 = !DIEnumerator(name: "FINEDB_ERR_NETWORK", value: 1)
!26 = !DIEnumerator(name: "FINEDB_ERR_SERVER", value: 2)
!27 = !DIEnumerator(name: "FINEDB_ERR_FILE", value: 3)
!28 = !DIEnumerator(name: "FINEDB_ERR_MEMORY", value: 4)
!29 = !DIEnumerator(name: "FINEDB_ERR_ZIP", value: 5)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol_command_e", file: !31, line: 68, baseType: !5, size: 32, elements: !32)
!31 = !DIFile(filename: "../server/protocol.h", directory: "/home/raj/FineDB/src/lib", checksumkind: CSK_MD5, checksum: "90e12b9ba2bd5e3d7e691fccfd080d02")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41}
!33 = !DIEnumerator(name: "PROTO_PING", value: 0)
!34 = !DIEnumerator(name: "PROTO_GET", value: 1)
!35 = !DIEnumerator(name: "PROTO_DEL", value: 2)
!36 = !DIEnumerator(name: "PROTO_PUT", value: 3)
!37 = !DIEnumerator(name: "PROTO_SETDB", value: 4)
!38 = !DIEnumerator(name: "PROTO_START", value: 5)
!39 = !DIEnumerator(name: "PROTO_STOP", value: 6)
!40 = !DIEnumerator(name: "PROTO_ADMIN", value: 14)
!41 = !DIEnumerator(name: "PROTO_EXTRA", value: 15)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol_response_e", file: !31, line: 108, baseType: !5, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51}
!44 = !DIEnumerator(name: "RESP_ERR_UNDEFINED", value: 0)
!45 = !DIEnumerator(name: "RESP_OK", value: 1)
!46 = !DIEnumerator(name: "RESP_ERR_PROTOCOL", value: 2)
!47 = !DIEnumerator(name: "RESP_ERR_SERVER", value: 3)
!48 = !DIEnumerator(name: "RESP_ERR_FULL_DB", value: 4)
!49 = !DIEnumerator(name: "RESP_ERR_TOO_MANY_DB", value: 5)
!50 = !DIEnumerator(name: "RESP_ERR_BAD_NAME", value: 6)
!51 = !DIEnumerator(name: "RESP_ERR_TRANSACTION", value: 7)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol_option_e", file: !31, line: 88, baseType: !5, size: 32, elements: !53)
!53 = !{!54, !55, !56, !57}
!54 = !DIEnumerator(name: "PROTO_OPT_SYNC", value: 16)
!55 = !DIEnumerator(name: "PROTO_OPT_SERIALIZED", value: 32)
!56 = !DIEnumerator(name: "PROTO_OPT_COMPRESSED", value: 64)
!57 = !DIEnumerator(name: "PROTO_OPT_SERVTOSERV", value: 128)
!58 = !{!59, !60, !73, !74, !78, !82, !76, !85}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !62, line: 180, size: 128, elements: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!63 = !{!64, !68}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !61, file: !62, line: 182, baseType: !65, size: 16)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !66, line: 28, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !61, file: !62, line: 183, baseType: !69, size: 112, offset: 16)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 112, elements: !71)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!71 = !{!72}
!72 = !DISubrange(count: 14)
!73 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !75, line: 25, baseType: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !77, line: 40, baseType: !67)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !79, line: 115, baseType: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !77, line: 204, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !83, line: 46, baseType: !84)
!83 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!84 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !75, line: 26, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !77, line: 42, baseType: !5)
!87 = !{i32 7, !"Dwarf Version", i32 5}
!88 = !{i32 2, !"Debug Info Version", i32 3}
!89 = !{i32 1, !"wchar_size", i32 4}
!90 = !{i32 8, !"PIC Level", i32 2}
!91 = !{i32 7, !"uwtable", i32 2}
!92 = !{!"clang version 16.0.0"}
!93 = distinct !DISubprogram(name: "finedb_create", scope: !1, file: !1, line: 31, type: !94, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !109)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !107, !67}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_client_t", file: !22, line: 41, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_client_s", file: !22, line: 35, size: 192, elements: !99)
!99 = !{!100, !101, !102, !104, !106}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !98, file: !22, line: 36, baseType: !81, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !98, file: !22, line: 37, baseType: !67, size: 16, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !98, file: !22, line: 38, baseType: !103, size: 32, offset: 96)
!103 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !98, file: !22, line: 39, baseType: !105, size: 32, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !4, line: 52, baseType: !3)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !98, file: !22, line: 40, baseType: !105, size: 32, offset: 160)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!109 = !{!110, !111, !112}
!110 = !DILocalVariable(name: "hostname", arg: 1, scope: !93, file: !1, line: 31, type: !107)
!111 = !DILocalVariable(name: "port", arg: 2, scope: !93, file: !1, line: 31, type: !67)
!112 = !DILocalVariable(name: "client", scope: !93, file: !1, line: 32, type: !96)
!113 = !DILocation(line: 0, scope: !93)
!114 = !DILocation(line: 34, column: 16, scope: !115)
!115 = distinct !DILexicalBlock(scope: !93, file: !1, line: 34, column: 6)
!116 = !DILocation(line: 34, column: 50, scope: !115)
!117 = !DILocation(line: 34, column: 6, scope: !93)
!118 = !DILocation(line: 36, column: 26, scope: !119)
!119 = distinct !DILexicalBlock(scope: !93, file: !1, line: 36, column: 6)
!120 = !DILocation(line: 36, column: 24, scope: !119)
!121 = !{!122, !123, i64 0}
!122 = !{!"finedb_client_s", !123, i64 0, !126, i64 8, !127, i64 12, !124, i64 16, !124, i64 20}
!123 = !{!"any pointer", !124, i64 0}
!124 = !{!"omnipotent char", !125, i64 0}
!125 = !{!"Simple C/C++ TBAA"}
!126 = !{!"short", !124, i64 0}
!127 = !{!"int", !124, i64 0}
!128 = !DILocation(line: 36, column: 44, scope: !119)
!129 = !DILocation(line: 36, column: 6, scope: !93)
!130 = !DILocation(line: 37, column: 3, scope: !131)
!131 = distinct !DILexicalBlock(scope: !119, file: !1, line: 36, column: 53)
!132 = !DILocation(line: 38, column: 3, scope: !131)
!133 = !DILocation(line: 40, column: 10, scope: !93)
!134 = !DILocation(line: 40, column: 15, scope: !93)
!135 = !{!122, !126, i64 8}
!136 = !DILocation(line: 41, column: 10, scope: !93)
!137 = !DILocation(line: 41, column: 15, scope: !93)
!138 = !{!122, !127, i64 12}
!139 = !DILocation(line: 42, column: 2, scope: !93)
!140 = !DILocation(line: 43, column: 1, scope: !93)
!141 = !DISubprogram(name: "calloc", scope: !142, file: !142, line: 543, type: !143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!142 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!143 = !DISubroutineType(types: !144)
!144 = !{!59, !82, !82}
!145 = !{}
!146 = !DISubprogram(name: "strdup", scope: !147, file: !147, line: 187, type: !148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!147 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!148 = !DISubroutineType(types: !149)
!149 = !{!81, !107}
!150 = !DISubprogram(name: "free", scope: !142, file: !142, line: 555, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !59}
!153 = distinct !DISubprogram(name: "finedb_delete", scope: !1, file: !1, line: 46, type: !154, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !156)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !96}
!156 = !{!157}
!157 = !DILocalVariable(name: "client", arg: 1, scope: !153, file: !1, line: 46, type: !96)
!158 = !DILocation(line: 0, scope: !153)
!159 = !DILocalVariable(name: "client", arg: 1, scope: !160, file: !1, line: 79, type: !96)
!160 = distinct !DISubprogram(name: "finedb_disconnect", scope: !1, file: !1, line: 79, type: !154, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !161)
!161 = !{!159}
!162 = !DILocation(line: 0, scope: !160, inlinedAt: !163)
!163 = distinct !DILocation(line: 47, column: 2, scope: !153)
!164 = !DILocation(line: 80, column: 14, scope: !165, inlinedAt: !163)
!165 = distinct !DILexicalBlock(scope: !160, file: !1, line: 80, column: 6)
!166 = !DILocation(line: 80, column: 19, scope: !165, inlinedAt: !163)
!167 = !DILocation(line: 80, column: 6, scope: !160, inlinedAt: !163)
!168 = !DILocation(line: 81, column: 3, scope: !165, inlinedAt: !163)
!169 = !DILocation(line: 48, column: 2, scope: !153)
!170 = !DILocation(line: 49, column: 2, scope: !153)
!171 = !DILocation(line: 50, column: 1, scope: !153)
!172 = !DILocation(line: 0, scope: !160)
!173 = !DILocation(line: 80, column: 14, scope: !165)
!174 = !DILocation(line: 80, column: 19, scope: !165)
!175 = !DILocation(line: 80, column: 6, scope: !160)
!176 = !DILocation(line: 81, column: 3, scope: !165)
!177 = !DILocation(line: 82, column: 1, scope: !160)
!178 = distinct !DISubprogram(name: "finedb_connect", scope: !1, file: !1, line: 53, type: !179, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !181)
!179 = !DISubroutineType(types: !180)
!180 = !{!103, !96}
!181 = !{!182, !183, !184, !200}
!182 = !DILocalVariable(name: "client", arg: 1, scope: !178, file: !1, line: 53, type: !96)
!183 = !DILocalVariable(name: "sockfd", scope: !178, file: !1, line: 54, type: !103)
!184 = !DILocalVariable(name: "serv_addr", scope: !178, file: !1, line: 55, type: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !186, line: 245, size: 128, elements: !187)
!186 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!187 = !{!188, !189, !191, !196}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !185, file: !186, line: 247, baseType: !65, size: 16)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !185, file: !186, line: 248, baseType: !190, size: 16, offset: 16)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !186, line: 123, baseType: !74)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !185, file: !186, line: 249, baseType: !192, size: 32, offset: 32)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !186, line: 31, size: 32, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !192, file: !186, line: 33, baseType: !195, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !186, line: 30, baseType: !85)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !185, file: !186, line: 252, baseType: !197, size: 64, offset: 64)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 8)
!200 = !DILocalVariable(name: "server", scope: !178, file: !1, line: 56, type: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hostent", file: !203, line: 98, size: 256, elements: !204)
!203 = !DIFile(filename: "/usr/include/netdb.h", directory: "", checksumkind: CSK_MD5, checksum: "dd84cdc2a8dcb66c232d326e9ca8b469")
!204 = !{!205, !206, !208, !209, !210}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "h_name", scope: !202, file: !203, line: 100, baseType: !81, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "h_aliases", scope: !202, file: !203, line: 101, baseType: !207, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "h_addrtype", scope: !202, file: !203, line: 102, baseType: !103, size: 32, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "h_length", scope: !202, file: !203, line: 103, baseType: !103, size: 32, offset: 160)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "h_addr_list", scope: !202, file: !203, line: 104, baseType: !207, size: 64, offset: 192)
!211 = !DILocation(line: 0, scope: !178)
!212 = !DILocation(line: 55, column: 2, scope: !178)
!213 = !DILocation(line: 55, column: 21, scope: !178)
!214 = !DILocation(line: 0, scope: !160, inlinedAt: !215)
!215 = distinct !DILocation(line: 59, column: 2, scope: !178)
!216 = !DILocation(line: 80, column: 14, scope: !165, inlinedAt: !215)
!217 = !DILocation(line: 80, column: 19, scope: !165, inlinedAt: !215)
!218 = !DILocation(line: 80, column: 6, scope: !160, inlinedAt: !215)
!219 = !DILocation(line: 81, column: 3, scope: !165, inlinedAt: !215)
!220 = !DILocation(line: 61, column: 11, scope: !178)
!221 = !DILocation(line: 62, column: 38, scope: !222)
!222 = distinct !DILexicalBlock(scope: !178, file: !1, line: 62, column: 6)
!223 = !DILocation(line: 62, column: 16, scope: !222)
!224 = !DILocation(line: 62, column: 49, scope: !222)
!225 = !DILocation(line: 62, column: 6, scope: !178)
!226 = !DILocation(line: 66, column: 2, scope: !178)
!227 = !DILocation(line: 67, column: 23, scope: !178)
!228 = !{!229, !126, i64 0}
!229 = !{!"sockaddr_in", !126, i64 0, !126, i64 2, !230, i64 4, !124, i64 8}
!230 = !{!"in_addr", !127, i64 0}
!231 = !DILocation(line: 68, column: 16, scope: !178)
!232 = !{!233, !123, i64 24}
!233 = !{!"hostent", !123, i64 0, !123, i64 8, !127, i64 16, !127, i64 20, !123, i64 24}
!234 = !DILocation(line: 68, column: 8, scope: !178)
!235 = !{!123, !123, i64 0}
!236 = !DILocation(line: 68, column: 35, scope: !178)
!237 = !DILocation(line: 68, column: 60, scope: !178)
!238 = !{!233, !127, i64 20}
!239 = !DILocation(line: 68, column: 52, scope: !178)
!240 = !DILocation(line: 68, column: 2, scope: !178)
!241 = !DILocation(line: 69, column: 23, scope: !178)
!242 = !DILocation(line: 69, column: 12, scope: !178)
!243 = !DILocation(line: 69, column: 21, scope: !178)
!244 = !{!229, !126, i64 2}
!245 = !DILocation(line: 70, column: 6, scope: !246)
!246 = distinct !DILexicalBlock(scope: !178, file: !1, line: 70, column: 6)
!247 = !DILocation(line: 76, column: 1, scope: !178)
!248 = !DISubprogram(name: "socket", scope: !249, file: !249, line: 102, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!249 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "619dab7fd722af1ca0fa7f4b6fd4f842")
!250 = !DISubroutineType(types: !251)
!251 = !{!103, !103, !103, !103}
!252 = !DISubprogram(name: "gethostbyname", scope: !203, file: !203, line: 142, type: !253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!253 = !DISubroutineType(types: !254)
!254 = !{!201, !107}
!255 = !DISubprogram(name: "bzero", scope: !256, file: !256, line: 42, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!256 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "7444da68ad94ab9f25ff447750787173")
!257 = !DISubroutineType(types: !258)
!258 = !{null, !59, !82}
!259 = !DISubprogram(name: "connect", scope: !249, file: !249, line: 126, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!260 = !DISubroutineType(types: !261)
!261 = !{!103, !103, !262, !351}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__CONST_SOCKADDR_ARG", file: !249, line: 84, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !249, line: 83, size: 64, elements: !264)
!264 = !{!265, !269, !274, !279, !284, !289, !293, !321, !326, !331, !336, !341, !346}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr__", scope: !263, file: !249, line: 83, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_at__", scope: !263, file: !249, line: 83, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_at", file: !249, line: 79, flags: DIFlagFwdDecl)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ax25__", scope: !263, file: !249, line: 83, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_ax25", file: !249, line: 79, flags: DIFlagFwdDecl)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_dl__", scope: !263, file: !249, line: 83, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_dl", file: !249, line: 79, flags: DIFlagFwdDecl)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_eon__", scope: !263, file: !249, line: 83, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_eon", file: !249, line: 79, flags: DIFlagFwdDecl)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_in__", scope: !263, file: !249, line: 83, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_in6__", scope: !263, file: !249, line: 83, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !186, line: 260, size: 224, elements: !298)
!298 = !{!299, !300, !301, !302, !320}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !297, file: !186, line: 262, baseType: !65, size: 16)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !297, file: !186, line: 263, baseType: !190, size: 16, offset: 16)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !297, file: !186, line: 264, baseType: !85, size: 32, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !297, file: !186, line: 265, baseType: !303, size: 128, offset: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !186, line: 219, size: 128, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !303, file: !186, line: 226, baseType: !306, size: 128)
!306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !186, line: 221, size: 128, elements: !307)
!307 = !{!308, !314, !316}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !306, file: !186, line: 223, baseType: !309, size: 128)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 128, elements: !312)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !75, line: 24, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !77, line: 38, baseType: !73)
!312 = !{!313}
!313 = !DISubrange(count: 16)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !306, file: !186, line: 224, baseType: !315, size: 128)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 128, elements: !198)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !306, file: !186, line: 225, baseType: !317, size: 128)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 4)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !297, file: !186, line: 266, baseType: !85, size: 32, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_inarp__", scope: !263, file: !249, line: 83, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_inarp", file: !249, line: 79, flags: DIFlagFwdDecl)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ipx__", scope: !263, file: !249, line: 83, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_ipx", file: !249, line: 79, flags: DIFlagFwdDecl)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_iso__", scope: !263, file: !249, line: 83, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_iso", file: !249, line: 79, flags: DIFlagFwdDecl)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ns__", scope: !263, file: !249, line: 83, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_ns", file: !249, line: 79, flags: DIFlagFwdDecl)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_un__", scope: !263, file: !249, line: 83, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !249, line: 79, flags: DIFlagFwdDecl)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_x25__", scope: !263, file: !249, line: 83, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_x25", file: !249, line: 79, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !352, line: 274, baseType: !353)
!352 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !77, line: 210, baseType: !5)
!354 = !DISubprogram(name: "close", scope: !352, file: !352, line: 358, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!355 = !DISubroutineType(types: !356)
!356 = !{!103, !103}
!357 = distinct !DISubprogram(name: "finedb_sync", scope: !1, file: !1, line: 85, type: !154, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !358)
!358 = !{!359}
!359 = !DILocalVariable(name: "client", arg: 1, scope: !357, file: !1, line: 85, type: !96)
!360 = !DILocation(line: 0, scope: !357)
!361 = !DILocation(line: 86, column: 10, scope: !357)
!362 = !DILocation(line: 86, column: 15, scope: !357)
!363 = !{!122, !124, i64 16}
!364 = !DILocation(line: 87, column: 1, scope: !357)
!365 = distinct !DISubprogram(name: "finedb_async", scope: !1, file: !1, line: 90, type: !154, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !366)
!366 = !{!367}
!367 = !DILocalVariable(name: "client", arg: 1, scope: !365, file: !1, line: 90, type: !96)
!368 = !DILocation(line: 0, scope: !365)
!369 = !DILocation(line: 91, column: 10, scope: !365)
!370 = !DILocation(line: 91, column: 15, scope: !365)
!371 = !DILocation(line: 92, column: 1, scope: !365)
!372 = distinct !DISubprogram(name: "finedb_setdb", scope: !1, file: !1, line: 95, type: !373, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !375)
!373 = !DISubroutineType(types: !374)
!374 = !{!103, !96, !81}
!375 = !{!376, !377, !378, !379, !380, !381, !382}
!376 = !DILocalVariable(name: "client", arg: 1, scope: !372, file: !1, line: 95, type: !96)
!377 = !DILocalVariable(name: "dbname", arg: 2, scope: !372, file: !1, line: 95, type: !81)
!378 = !DILocalVariable(name: "buff", scope: !372, file: !1, line: 96, type: !81)
!379 = !DILocalVariable(name: "pt", scope: !372, file: !1, line: 96, type: !81)
!380 = !DILocalVariable(name: "res", scope: !372, file: !1, line: 96, type: !70)
!381 = !DILocalVariable(name: "buflen", scope: !372, file: !1, line: 97, type: !103)
!382 = !DILocalVariable(name: "rc", scope: !372, file: !1, line: 97, type: !103)
!383 = !DILocation(line: 0, scope: !372)
!384 = !DILocation(line: 96, column: 2, scope: !372)
!385 = !DILocation(line: 99, column: 16, scope: !372)
!386 = !DILocation(line: 100, column: 9, scope: !372)
!387 = !DILocation(line: 102, column: 6, scope: !372)
!388 = !{!124, !124, i64 0}
!389 = !DILocation(line: 104, column: 6, scope: !372)
!390 = !DILocation(line: 99, column: 25, scope: !372)
!391 = !DILocation(line: 99, column: 11, scope: !372)
!392 = !DILocation(line: 103, column: 8, scope: !372)
!393 = !DILocation(line: 105, column: 9, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !1, line: 104, column: 14)
!395 = distinct !DILexicalBlock(scope: !372, file: !1, line: 104, column: 6)
!396 = !DILocation(line: 105, column: 7, scope: !394)
!397 = !DILocation(line: 106, column: 9, scope: !394)
!398 = !DILocation(line: 107, column: 3, scope: !394)
!399 = !DILocation(line: 108, column: 2, scope: !394)
!400 = !DILocation(line: 110, column: 21, scope: !372)
!401 = !DILocation(line: 110, column: 7, scope: !372)
!402 = !DILocation(line: 111, column: 2, scope: !372)
!403 = !DILocation(line: 112, column: 9, scope: !404)
!404 = distinct !DILexicalBlock(scope: !372, file: !1, line: 112, column: 6)
!405 = !DILocation(line: 112, column: 6, scope: !372)
!406 = !DILocation(line: 115, column: 20, scope: !372)
!407 = !DILocation(line: 115, column: 7, scope: !372)
!408 = !DILocation(line: 116, column: 9, scope: !409)
!409 = distinct !DILexicalBlock(scope: !372, file: !1, line: 116, column: 6)
!410 = !DILocation(line: 116, column: 6, scope: !372)
!411 = !DILocation(line: 118, column: 6, scope: !412)
!412 = distinct !DILexicalBlock(scope: !372, file: !1, line: 118, column: 6)
!413 = !DILocation(line: 121, column: 1, scope: !372)
!414 = !DISubprogram(name: "strlen", scope: !147, file: !147, line: 407, type: !415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!415 = !DISubroutineType(types: !416)
!416 = !{!84, !107}
!417 = !DISubprogram(name: "write", scope: !352, file: !352, line: 378, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!418 = !DISubroutineType(types: !419)
!419 = !{!420, !103, !424, !82}
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !421, line: 77, baseType: !422)
!421 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !77, line: 194, baseType: !423)
!423 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!426 = !DISubprogram(name: "read", scope: !352, file: !352, line: 371, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!427 = !DISubroutineType(types: !428)
!428 = !{!420, !103, !59, !82}
!429 = distinct !DISubprogram(name: "finedb_get", scope: !1, file: !1, line: 124, type: !430, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !439)
!430 = !DISubroutineType(types: !431)
!431 = !{!103, !96, !432, !438}
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !433, line: 33, baseType: !434)
!433 = !DIFile(filename: "../../lib/ylib/ybin.h", directory: "/home/raj/FineDB/src/lib", checksumkind: CSK_MD5, checksum: "7abd7d5e6afd31e8416cab6f0a6bf3b3")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !433, line: 27, size: 128, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !434, file: !433, line: 28, baseType: !59, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !434, file: !433, line: 29, baseType: !82, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!439 = !{!440, !441, !442, !443, !444, !445, !446, !447, !457, !468, !469, !471, !473, !474, !484, !485, !486, !491, !492}
!440 = !DILocalVariable(name: "client", arg: 1, scope: !429, file: !1, line: 124, type: !96)
!441 = !DILocalVariable(name: "key", arg: 2, scope: !429, file: !1, line: 124, type: !432)
!442 = !DILocalVariable(name: "value", arg: 3, scope: !429, file: !1, line: 124, type: !438)
!443 = !DILocalVariable(name: "code", scope: !429, file: !1, line: 125, type: !70)
!444 = !DILocalVariable(name: "expected", scope: !429, file: !1, line: 126, type: !420)
!445 = !DILocalVariable(name: "rc", scope: !429, file: !1, line: 126, type: !420)
!446 = !DILocalVariable(name: "retval", scope: !429, file: !1, line: 127, type: !103)
!447 = !DILocalVariable(name: "iov", scope: !448, file: !1, line: 131, type: !449)
!448 = distinct !DILexicalBlock(scope: !429, file: !1, line: 130, column: 2)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 384, elements: !455)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !451, line: 26, size: 128, elements: !452)
!451 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !450, file: !451, line: 28, baseType: !59, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !450, file: !451, line: 29, baseType: !82, size: 64, offset: 64)
!455 = !{!456}
!456 = !DISubrange(count: 3)
!457 = !DILocalVariable(name: "mh", scope: !448, file: !1, line: 132, type: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !62, line: 259, size: 448, elements: !459)
!459 = !{!460, !461, !462, !464, !465, !466, !467}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !458, file: !62, line: 261, baseType: !59, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !458, file: !62, line: 262, baseType: !351, size: 32, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !458, file: !62, line: 264, baseType: !463, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !458, file: !62, line: 265, baseType: !82, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !458, file: !62, line: 267, baseType: !59, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !458, file: !62, line: 268, baseType: !82, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !458, file: !62, line: 273, baseType: !103, size: 32, offset: 384)
!468 = !DILocalVariable(name: "key_nlen", scope: !448, file: !1, line: 133, type: !74)
!469 = !DILocalVariable(name: "pt", scope: !470, file: !1, line: 156, type: !81)
!470 = distinct !DILexicalBlock(scope: !429, file: !1, line: 155, column: 2)
!471 = !DILocalVariable(name: "pdata_len", scope: !470, file: !1, line: 157, type: !472)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!473 = !DILocalVariable(name: "data_len", scope: !470, file: !1, line: 157, type: !85)
!474 = !DILocalVariable(name: "buff", scope: !470, file: !1, line: 158, type: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !477, line: 45, baseType: !478)
!477 = !DIFile(filename: "../../lib/ylib/ydynabin.h", directory: "/home/raj/FineDB/src/lib", checksumkind: CSK_MD5, checksum: "e9b56a3dd8293288d1beb69b8bafd958")
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !477, line: 37, size: 256, elements: !479)
!479 = !{!480, !481, !482, !483}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !478, file: !477, line: 38, baseType: !59, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !478, file: !477, line: 39, baseType: !82, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !478, file: !477, line: 40, baseType: !82, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !478, file: !477, line: 41, baseType: !82, size: 64, offset: 192)
!484 = !DILocalVariable(name: "ptr", scope: !470, file: !1, line: 159, type: !59)
!485 = !DILocalVariable(name: "data", scope: !470, file: !1, line: 159, type: !59)
!486 = !DILocalVariable(name: "unzip_len", scope: !487, file: !1, line: 194, type: !82)
!487 = distinct !DILexicalBlock(scope: !488, file: !1, line: 193, column: 38)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 193, column: 8)
!489 = distinct !DILexicalBlock(scope: !490, file: !1, line: 181, column: 21)
!490 = distinct !DILexicalBlock(scope: !470, file: !1, line: 181, column: 7)
!491 = !DILocalVariable(name: "unzip_data", scope: !487, file: !1, line: 195, type: !81)
!492 = !DILabel(scope: !470, name: "end_of_process", file: !1, line: 217)
!493 = !DILocation(line: 0, scope: !429)
!494 = !DILocation(line: 125, column: 2, scope: !429)
!495 = !DILocation(line: 131, column: 3, scope: !448)
!496 = !DILocation(line: 131, column: 16, scope: !448)
!497 = !DILocation(line: 132, column: 3, scope: !448)
!498 = !DILocation(line: 132, column: 17, scope: !448)
!499 = !DILocation(line: 133, column: 3, scope: !448)
!500 = !DILocation(line: 136, column: 8, scope: !448)
!501 = !DILocation(line: 137, column: 14, scope: !448)
!502 = !DILocation(line: 0, scope: !448)
!503 = !DILocation(line: 137, column: 12, scope: !448)
!504 = !{!126, !126, i64 0}
!505 = !DILocation(line: 139, column: 3, scope: !448)
!506 = !DILocation(line: 140, column: 6, scope: !448)
!507 = !DILocation(line: 140, column: 14, scope: !448)
!508 = !{!509, !123, i64 16}
!509 = !{!"msghdr", !123, i64 0, !127, i64 8, !123, i64 16, !510, i64 24, !123, i64 32, !510, i64 40, !127, i64 48}
!510 = !{!"long", !124, i64 0}
!511 = !DILocation(line: 141, column: 6, scope: !448)
!512 = !DILocation(line: 141, column: 17, scope: !448)
!513 = !{!509, !510, i64 24}
!514 = !DILocation(line: 142, column: 19, scope: !448)
!515 = !{!516, !123, i64 0}
!516 = !{!"iovec", !123, i64 0, !510, i64 8}
!517 = !DILocation(line: 143, column: 10, scope: !448)
!518 = !DILocation(line: 143, column: 18, scope: !448)
!519 = !{!516, !510, i64 8}
!520 = !DILocation(line: 144, column: 3, scope: !448)
!521 = !DILocation(line: 144, column: 19, scope: !448)
!522 = !DILocation(line: 145, column: 10, scope: !448)
!523 = !DILocation(line: 145, column: 18, scope: !448)
!524 = !DILocation(line: 146, column: 3, scope: !448)
!525 = !DILocation(line: 146, column: 19, scope: !448)
!526 = !DILocation(line: 147, column: 10, scope: !448)
!527 = !DILocation(line: 147, column: 18, scope: !448)
!528 = !DILocation(line: 149, column: 35, scope: !448)
!529 = !DILocation(line: 150, column: 24, scope: !448)
!530 = !DILocation(line: 150, column: 8, scope: !448)
!531 = !DILocation(line: 151, column: 10, scope: !532)
!532 = distinct !DILexicalBlock(scope: !448, file: !1, line: 151, column: 7)
!533 = !DILocation(line: 153, column: 2, scope: !429)
!534 = !DILocation(line: 0, scope: !470)
!535 = !DILocation(line: 161, column: 10, scope: !470)
!536 = !DILocation(line: 163, column: 26, scope: !537)
!537 = distinct !DILexicalBlock(scope: !470, file: !1, line: 163, column: 7)
!538 = !DILocalVariable(name: "fd", arg: 1, scope: !539, file: !1, line: 522, type: !103)
!539 = distinct !DISubprogram(name: "_read_data", scope: !1, file: !1, line: 522, type: !540, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !544)
!540 = !DISubroutineType(types: !541)
!541 = !{!542, !103, !475, !82}
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !543, line: 23, baseType: !103)
!543 = !DIFile(filename: "../../lib/ylib/yerror.h", directory: "/home/raj/FineDB/src/lib", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!544 = !{!538, !545, !546, !547, !551, !552}
!545 = !DILocalVariable(name: "container", arg: 2, scope: !539, file: !1, line: 522, type: !475)
!546 = !DILocalVariable(name: "size", arg: 3, scope: !539, file: !1, line: 522, type: !82)
!547 = !DILocalVariable(name: "buff", scope: !539, file: !1, line: 523, type: !548)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 65568, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 8196)
!551 = !DILocalVariable(name: "bufsz", scope: !539, file: !1, line: 524, type: !420)
!552 = !DILocalVariable(name: "dynaerr", scope: !539, file: !1, line: 525, type: !542)
!553 = !DILocation(line: 0, scope: !539, inlinedAt: !554)
!554 = distinct !DILocation(line: 163, column: 7, scope: !537)
!555 = !DILocation(line: 523, column: 2, scope: !539, inlinedAt: !554)
!556 = !DILocation(line: 523, column: 7, scope: !539, inlinedAt: !554)
!557 = !DILocation(line: 527, column: 17, scope: !558, inlinedAt: !554)
!558 = distinct !DILexicalBlock(scope: !539, file: !1, line: 527, column: 6)
!559 = !{!560, !510, i64 8}
!560 = !{!"ydynabin_s", !123, i64 0, !510, i64 8, !510, i64 16, !510, i64 24}
!561 = !DILocation(line: 527, column: 21, scope: !558, inlinedAt: !554)
!562 = !DILocation(line: 527, column: 6, scope: !539, inlinedAt: !554)
!563 = !DILocation(line: 529, column: 20, scope: !539, inlinedAt: !554)
!564 = !DILocation(line: 529, column: 24, scope: !539, inlinedAt: !554)
!565 = !DILocation(line: 529, column: 2, scope: !539, inlinedAt: !554)
!566 = !DILocation(line: 530, column: 16, scope: !567, inlinedAt: !554)
!567 = distinct !DILexicalBlock(scope: !568, file: !1, line: 530, column: 7)
!568 = distinct !DILexicalBlock(scope: !539, file: !1, line: 529, column: 32)
!569 = !DILocation(line: 530, column: 38, scope: !567, inlinedAt: !554)
!570 = !DILocation(line: 530, column: 7, scope: !568, inlinedAt: !554)
!571 = !DILocation(line: 532, column: 13, scope: !572, inlinedAt: !554)
!572 = distinct !DILexicalBlock(scope: !568, file: !1, line: 532, column: 7)
!573 = !DILocation(line: 532, column: 7, scope: !568, inlinedAt: !554)
!574 = !DILocation(line: 533, column: 19, scope: !575, inlinedAt: !554)
!575 = distinct !DILexicalBlock(scope: !576, file: !1, line: 533, column: 8)
!576 = distinct !DILexicalBlock(scope: !572, file: !1, line: 532, column: 19)
!577 = !DILocation(line: 533, column: 23, scope: !575, inlinedAt: !554)
!578 = !DILocation(line: 533, column: 8, scope: !576, inlinedAt: !554)
!579 = !DILocation(line: 537, column: 18, scope: !580, inlinedAt: !554)
!580 = distinct !DILexicalBlock(scope: !568, file: !1, line: 537, column: 7)
!581 = !DILocation(line: 537, column: 67, scope: !580, inlinedAt: !554)
!582 = !DILocation(line: 537, column: 7, scope: !568, inlinedAt: !554)
!583 = distinct !{!583, !565, !584}
!584 = !DILocation(line: 539, column: 2, scope: !539, inlinedAt: !554)
!585 = !DILocation(line: 541, column: 1, scope: !539, inlinedAt: !554)
!586 = !DILocation(line: 163, column: 7, scope: !470)
!587 = !DILocation(line: 167, column: 8, scope: !470)
!588 = !DILocation(line: 168, column: 10, scope: !470)
!589 = !DILocation(line: 168, column: 8, scope: !470)
!590 = !DILocation(line: 169, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !470, file: !1, line: 169, column: 7)
!592 = !DILocation(line: 169, column: 29, scope: !591)
!593 = !DILocation(line: 169, column: 7, scope: !470)
!594 = !DILocation(line: 174, column: 26, scope: !595)
!595 = distinct !DILexicalBlock(scope: !470, file: !1, line: 174, column: 7)
!596 = !DILocation(line: 0, scope: !539, inlinedAt: !597)
!597 = distinct !DILocation(line: 174, column: 7, scope: !595)
!598 = !DILocation(line: 523, column: 2, scope: !539, inlinedAt: !597)
!599 = !DILocation(line: 523, column: 7, scope: !539, inlinedAt: !597)
!600 = !DILocation(line: 527, column: 17, scope: !558, inlinedAt: !597)
!601 = !DILocation(line: 527, column: 21, scope: !558, inlinedAt: !597)
!602 = !DILocation(line: 527, column: 6, scope: !539, inlinedAt: !597)
!603 = !DILocation(line: 529, column: 20, scope: !539, inlinedAt: !597)
!604 = !DILocation(line: 529, column: 24, scope: !539, inlinedAt: !597)
!605 = !DILocation(line: 529, column: 2, scope: !539, inlinedAt: !597)
!606 = !DILocation(line: 530, column: 16, scope: !567, inlinedAt: !597)
!607 = !DILocation(line: 530, column: 38, scope: !567, inlinedAt: !597)
!608 = !DILocation(line: 530, column: 7, scope: !568, inlinedAt: !597)
!609 = !DILocation(line: 532, column: 13, scope: !572, inlinedAt: !597)
!610 = !DILocation(line: 532, column: 7, scope: !568, inlinedAt: !597)
!611 = !DILocation(line: 533, column: 19, scope: !575, inlinedAt: !597)
!612 = !DILocation(line: 533, column: 23, scope: !575, inlinedAt: !597)
!613 = !DILocation(line: 533, column: 8, scope: !576, inlinedAt: !597)
!614 = !DILocation(line: 537, column: 18, scope: !580, inlinedAt: !597)
!615 = !DILocation(line: 537, column: 67, scope: !580, inlinedAt: !597)
!616 = !DILocation(line: 537, column: 7, scope: !568, inlinedAt: !597)
!617 = distinct !{!617, !605, !618}
!618 = !DILocation(line: 539, column: 2, scope: !539, inlinedAt: !597)
!619 = !DILocation(line: 541, column: 1, scope: !539, inlinedAt: !597)
!620 = !DILocation(line: 174, column: 7, scope: !470)
!621 = !DILocation(line: 178, column: 15, scope: !470)
!622 = !DILocation(line: 179, column: 14, scope: !470)
!623 = !{!127, !127, i64 0}
!624 = !DILocalVariable(name: "__bsx", arg: 1, scope: !625, file: !626, line: 49, type: !86)
!625 = distinct !DISubprogram(name: "__bswap_32", scope: !626, file: !626, line: 49, type: !627, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !629)
!626 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!627 = !DISubroutineType(types: !628)
!628 = !{!86, !86}
!629 = !{!624}
!630 = !DILocation(line: 0, scope: !625, inlinedAt: !631)
!631 = distinct !DILocation(line: 179, column: 14, scope: !470)
!632 = !DILocation(line: 54, column: 10, scope: !625, inlinedAt: !631)
!633 = !DILocation(line: 181, column: 16, scope: !490)
!634 = !DILocation(line: 181, column: 7, scope: !470)
!635 = !DILocation(line: 182, column: 27, scope: !636)
!636 = distinct !DILexicalBlock(scope: !489, file: !1, line: 182, column: 8)
!637 = !DILocation(line: 182, column: 39, scope: !636)
!638 = !DILocation(line: 0, scope: !539, inlinedAt: !639)
!639 = distinct !DILocation(line: 182, column: 8, scope: !636)
!640 = !DILocation(line: 523, column: 2, scope: !539, inlinedAt: !639)
!641 = !DILocation(line: 523, column: 7, scope: !539, inlinedAt: !639)
!642 = !DILocation(line: 527, column: 17, scope: !558, inlinedAt: !639)
!643 = !DILocation(line: 527, column: 21, scope: !558, inlinedAt: !639)
!644 = !DILocation(line: 527, column: 6, scope: !539, inlinedAt: !639)
!645 = !DILocation(line: 529, column: 20, scope: !539, inlinedAt: !639)
!646 = !DILocation(line: 529, column: 24, scope: !539, inlinedAt: !639)
!647 = !DILocation(line: 529, column: 2, scope: !539, inlinedAt: !639)
!648 = !DILocation(line: 530, column: 16, scope: !567, inlinedAt: !639)
!649 = !DILocation(line: 530, column: 38, scope: !567, inlinedAt: !639)
!650 = !DILocation(line: 530, column: 7, scope: !568, inlinedAt: !639)
!651 = !DILocation(line: 532, column: 13, scope: !572, inlinedAt: !639)
!652 = !DILocation(line: 532, column: 7, scope: !568, inlinedAt: !639)
!653 = !DILocation(line: 533, column: 19, scope: !575, inlinedAt: !639)
!654 = !DILocation(line: 533, column: 23, scope: !575, inlinedAt: !639)
!655 = !DILocation(line: 533, column: 8, scope: !576, inlinedAt: !639)
!656 = !DILocation(line: 537, column: 18, scope: !580, inlinedAt: !639)
!657 = !DILocation(line: 537, column: 67, scope: !580, inlinedAt: !639)
!658 = !DILocation(line: 537, column: 7, scope: !568, inlinedAt: !639)
!659 = distinct !{!659, !647, !660}
!660 = !DILocation(line: 539, column: 2, scope: !539, inlinedAt: !639)
!661 = !DILocation(line: 541, column: 1, scope: !539, inlinedAt: !639)
!662 = !DILocation(line: 182, column: 8, scope: !489)
!663 = !DILocation(line: 186, column: 10, scope: !489)
!664 = !DILocation(line: 187, column: 16, scope: !665)
!665 = distinct !DILexicalBlock(scope: !489, file: !1, line: 187, column: 8)
!666 = !DILocation(line: 187, column: 43, scope: !665)
!667 = !DILocation(line: 187, column: 8, scope: !489)
!668 = !DILocation(line: 191, column: 4, scope: !489)
!669 = !DILocation(line: 193, column: 8, scope: !488)
!670 = !DILocation(line: 193, column: 8, scope: !489)
!671 = !DILocation(line: 194, column: 5, scope: !487)
!672 = !DILocation(line: 0, scope: !487)
!673 = !DILocation(line: 197, column: 5, scope: !487)
!674 = !DILocation(line: 198, column: 23, scope: !675)
!675 = distinct !DILexicalBlock(scope: !487, file: !1, line: 198, column: 9)
!676 = !{!510, !510, i64 0}
!677 = !DILocation(line: 198, column: 43, scope: !675)
!678 = !DILocation(line: 198, column: 9, scope: !487)
!679 = !DILocation(line: 203, column: 9, scope: !680)
!680 = distinct !DILexicalBlock(scope: !487, file: !1, line: 203, column: 9)
!681 = !DILocation(line: 203, column: 9, scope: !487)
!682 = !DILocation(line: 212, column: 4, scope: !488)
!683 = !DILocation(line: 211, column: 16, scope: !487)
!684 = !DILocation(line: 179, column: 12, scope: !470)
!685 = !DILocation(line: 215, column: 16, scope: !470)
!686 = !DILocation(line: 215, column: 10, scope: !470)
!687 = !DILocation(line: 215, column: 14, scope: !470)
!688 = !{!689, !510, i64 8}
!689 = !{!"ybin_s", !123, i64 0, !510, i64 8}
!690 = !DILocation(line: 216, column: 15, scope: !470)
!691 = !{!689, !123, i64 0}
!692 = !DILocation(line: 216, column: 3, scope: !470)
!693 = !DILocation(line: 217, column: 1, scope: !470)
!694 = !DILocation(line: 218, column: 3, scope: !470)
!695 = !DILocation(line: 220, column: 2, scope: !429)
!696 = !DILocation(line: 221, column: 1, scope: !429)
!697 = !DISubprogram(name: "sendmsg", scope: !249, file: !249, line: 174, type: !698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!698 = !DISubroutineType(types: !699)
!699 = !{!420, !103, !700, !103}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!702 = !DISubprogram(name: "ydynabin_new", scope: !477, file: !477, line: 56, type: !703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!703 = !DISubroutineType(types: !704)
!704 = !{!475, !59, !82, !105}
!705 = !DISubprogram(name: "ydynabin_forward", scope: !477, file: !477, line: 82, type: !706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!706 = !DISubroutineType(types: !707)
!707 = !{!59, !475, !82}
!708 = !DISubprogram(name: "snappy_uncompressed_length", scope: !709, file: !709, line: 33, type: !710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!709 = !DIFile(filename: "../../lib/snappy-c/snappy.h", directory: "/home/raj/FineDB/src/lib", checksumkind: CSK_MD5, checksum: "cfb9bcda4cc85171bf9848efd16b1ae4")
!710 = !DISubroutineType(types: !711)
!711 = !{!712, !107, !82, !713}
!712 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!714 = !DISubprogram(name: "snappy_uncompress", scope: !709, file: !709, line: 20, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!715 = !DISubroutineType(types: !716)
!716 = !{!103, !107, !82, !81}
!717 = !DISubprogram(name: "ydynabin_delete", scope: !477, file: !477, line: 63, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !475}
!720 = distinct !DISubprogram(name: "finedb_del", scope: !1, file: !1, line: 224, type: !721, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !723)
!721 = !DISubroutineType(types: !722)
!722 = !{!103, !96, !432}
!723 = !{!724, !725, !726, !727, !728, !729, !731, !732}
!724 = !DILocalVariable(name: "client", arg: 1, scope: !720, file: !1, line: 224, type: !96)
!725 = !DILocalVariable(name: "key", arg: 2, scope: !720, file: !1, line: 224, type: !432)
!726 = !DILocalVariable(name: "code", scope: !720, file: !1, line: 225, type: !70)
!727 = !DILocalVariable(name: "expected", scope: !720, file: !1, line: 226, type: !420)
!728 = !DILocalVariable(name: "rc", scope: !720, file: !1, line: 226, type: !420)
!729 = !DILocalVariable(name: "iov", scope: !730, file: !1, line: 230, type: !449)
!730 = distinct !DILexicalBlock(scope: !720, file: !1, line: 229, column: 2)
!731 = !DILocalVariable(name: "mh", scope: !730, file: !1, line: 231, type: !458)
!732 = !DILocalVariable(name: "key_nlen", scope: !730, file: !1, line: 232, type: !74)
!733 = !DILocation(line: 0, scope: !720)
!734 = !DILocation(line: 225, column: 2, scope: !720)
!735 = !DILocation(line: 230, column: 3, scope: !730)
!736 = !DILocation(line: 230, column: 16, scope: !730)
!737 = !DILocation(line: 231, column: 3, scope: !730)
!738 = !DILocation(line: 231, column: 17, scope: !730)
!739 = !DILocation(line: 232, column: 3, scope: !730)
!740 = !DILocation(line: 235, column: 15, scope: !741)
!741 = distinct !DILexicalBlock(scope: !730, file: !1, line: 235, column: 7)
!742 = !DILocation(line: 235, column: 7, scope: !741)
!743 = !DILocation(line: 235, column: 7, scope: !730)
!744 = !DILocation(line: 0, scope: !730)
!745 = !DILocation(line: 237, column: 14, scope: !730)
!746 = !DILocation(line: 237, column: 12, scope: !730)
!747 = !DILocation(line: 239, column: 3, scope: !730)
!748 = !DILocation(line: 240, column: 6, scope: !730)
!749 = !DILocation(line: 240, column: 14, scope: !730)
!750 = !DILocation(line: 241, column: 6, scope: !730)
!751 = !DILocation(line: 241, column: 17, scope: !730)
!752 = !DILocation(line: 242, column: 19, scope: !730)
!753 = !DILocation(line: 243, column: 10, scope: !730)
!754 = !DILocation(line: 243, column: 18, scope: !730)
!755 = !DILocation(line: 244, column: 3, scope: !730)
!756 = !DILocation(line: 244, column: 19, scope: !730)
!757 = !DILocation(line: 245, column: 10, scope: !730)
!758 = !DILocation(line: 245, column: 18, scope: !730)
!759 = !DILocation(line: 246, column: 3, scope: !730)
!760 = !DILocation(line: 246, column: 19, scope: !730)
!761 = !DILocation(line: 247, column: 10, scope: !730)
!762 = !DILocation(line: 247, column: 18, scope: !730)
!763 = !DILocation(line: 249, column: 35, scope: !730)
!764 = !DILocation(line: 250, column: 24, scope: !730)
!765 = !DILocation(line: 250, column: 8, scope: !730)
!766 = !DILocation(line: 251, column: 10, scope: !767)
!767 = distinct !DILexicalBlock(scope: !730, file: !1, line: 251, column: 7)
!768 = !DILocation(line: 253, column: 2, scope: !720)
!769 = !DILocation(line: 255, column: 20, scope: !720)
!770 = !DILocation(line: 255, column: 7, scope: !720)
!771 = !DILocation(line: 256, column: 9, scope: !772)
!772 = distinct !DILexicalBlock(scope: !720, file: !1, line: 256, column: 6)
!773 = !DILocation(line: 256, column: 6, scope: !720)
!774 = !DILocation(line: 258, column: 6, scope: !775)
!775 = distinct !DILexicalBlock(scope: !720, file: !1, line: 258, column: 6)
!776 = !DILocation(line: 261, column: 1, scope: !720)
!777 = distinct !DISubprogram(name: "finedb_put", scope: !1, file: !1, line: 264, type: !778, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !780)
!778 = !DISubroutineType(types: !779)
!779 = !{!103, !96, !432, !432}
!780 = !{!781, !782, !783}
!781 = !DILocalVariable(name: "client", arg: 1, scope: !777, file: !1, line: 264, type: !96)
!782 = !DILocalVariable(name: "key", arg: 2, scope: !777, file: !1, line: 264, type: !432)
!783 = !DILocalVariable(name: "data", arg: 3, scope: !777, file: !1, line: 264, type: !432)
!784 = !DILocation(line: 0, scope: !777)
!785 = !DILocation(line: 264, column: 60, scope: !777)
!786 = !DILocation(line: 265, column: 10, scope: !777)
!787 = !DILocation(line: 265, column: 2, scope: !777)
!788 = distinct !DISubprogram(name: "_send_key_data", scope: !1, file: !1, line: 442, type: !789, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !791)
!789 = !DISubroutineType(cc: DW_CC_nocall, types: !790)
!790 = !{!103, !96, !105, !105, !432, !432}
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !805, !806, !807, !808, !815, !816}
!792 = !DILocalVariable(name: "client", arg: 1, scope: !788, file: !1, line: 442, type: !96)
!793 = !DILocalVariable(name: "create_only", arg: 2, scope: !788, file: !1, line: 442, type: !105)
!794 = !DILocalVariable(name: "update_only", arg: 3, scope: !788, file: !1, line: 443, type: !105)
!795 = !DILocalVariable(name: "key", arg: 4, scope: !788, file: !1, line: 443, type: !432)
!796 = !DILocalVariable(name: "data", arg: 5, scope: !788, file: !1, line: 443, type: !432)
!797 = !DILocalVariable(name: "code", scope: !788, file: !1, line: 444, type: !70)
!798 = !DILocalVariable(name: "expected", scope: !788, file: !1, line: 445, type: !420)
!799 = !DILocalVariable(name: "rc", scope: !788, file: !1, line: 445, type: !420)
!800 = !DILocalVariable(name: "iov", scope: !801, file: !1, line: 449, type: !802)
!801 = distinct !DILexicalBlock(scope: !788, file: !1, line: 448, column: 2)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 640, elements: !803)
!803 = !{!804}
!804 = !DISubrange(count: 5)
!805 = !DILocalVariable(name: "mh", scope: !801, file: !1, line: 450, type: !458)
!806 = !DILocalVariable(name: "key_nlen", scope: !801, file: !1, line: 451, type: !74)
!807 = !DILocalVariable(name: "data_nlen", scope: !801, file: !1, line: 452, type: !85)
!808 = !DILocalVariable(name: "zip_env", scope: !801, file: !1, line: 453, type: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snappy_env", file: !709, line: 8, size: 192, elements: !810)
!810 = !{!811, !813, !814}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !809, file: !709, line: 9, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !809, file: !709, line: 10, baseType: !59, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_output", scope: !809, file: !709, line: 11, baseType: !59, size: 64, offset: 128)
!815 = !DILocalVariable(name: "zip_len", scope: !801, file: !1, line: 454, type: !82)
!816 = !DILocalVariable(name: "zip_data", scope: !801, file: !1, line: 455, type: !81)
!817 = !DILocation(line: 0, scope: !788)
!818 = !DILocation(line: 443, column: 67, scope: !788)
!819 = !DILocation(line: 444, column: 2, scope: !788)
!820 = !DILocation(line: 449, column: 3, scope: !801)
!821 = !DILocation(line: 449, column: 16, scope: !801)
!822 = !DILocation(line: 450, column: 3, scope: !801)
!823 = !DILocation(line: 450, column: 17, scope: !801)
!824 = !DILocation(line: 451, column: 3, scope: !801)
!825 = !DILocation(line: 452, column: 3, scope: !801)
!826 = !DILocation(line: 453, column: 3, scope: !801)
!827 = !DILocation(line: 453, column: 21, scope: !801)
!828 = !DILocation(line: 454, column: 3, scope: !801)
!829 = !DILocation(line: 0, scope: !801)
!830 = !DILocation(line: 458, column: 3, scope: !801)
!831 = !DILocation(line: 459, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !801, file: !1, line: 459, column: 7)
!833 = !DILocation(line: 459, column: 7, scope: !801)
!834 = !DILocation(line: 462, column: 19, scope: !835)
!835 = distinct !DILexicalBlock(scope: !801, file: !1, line: 462, column: 7)
!836 = !DILocation(line: 462, column: 68, scope: !835)
!837 = !DILocation(line: 462, column: 7, scope: !801)
!838 = !DILocation(line: 465, column: 38, scope: !839)
!839 = distinct !DILexicalBlock(scope: !801, file: !1, line: 465, column: 7)
!840 = !DILocation(line: 465, column: 7, scope: !839)
!841 = !DILocation(line: 465, column: 7, scope: !801)
!842 = !DILocation(line: 466, column: 4, scope: !843)
!843 = distinct !DILexicalBlock(scope: !839, file: !1, line: 465, column: 75)
!844 = !DILocation(line: 467, column: 4, scope: !843)
!845 = !DILocation(line: 505, column: 2, scope: !788)
!846 = !DILocation(line: 469, column: 12, scope: !801)
!847 = !DILocation(line: 469, column: 3, scope: !801)
!848 = !DILocation(line: 469, column: 21, scope: !801)
!849 = !DILocation(line: 470, column: 3, scope: !801)
!850 = !DILocation(line: 481, column: 15, scope: !851)
!851 = distinct !DILexicalBlock(scope: !801, file: !1, line: 481, column: 7)
!852 = !DILocation(line: 481, column: 7, scope: !851)
!853 = !DILocation(line: 481, column: 7, scope: !801)
!854 = !DILocation(line: 483, column: 14, scope: !801)
!855 = !DILocation(line: 483, column: 12, scope: !801)
!856 = !DILocation(line: 484, column: 15, scope: !801)
!857 = !DILocation(line: 0, scope: !625, inlinedAt: !858)
!858 = distinct !DILocation(line: 484, column: 15, scope: !801)
!859 = !DILocation(line: 54, column: 10, scope: !625, inlinedAt: !858)
!860 = !DILocation(line: 484, column: 13, scope: !801)
!861 = !DILocation(line: 486, column: 3, scope: !801)
!862 = !DILocation(line: 487, column: 6, scope: !801)
!863 = !DILocation(line: 487, column: 14, scope: !801)
!864 = !DILocation(line: 488, column: 6, scope: !801)
!865 = !DILocation(line: 488, column: 17, scope: !801)
!866 = !DILocation(line: 489, column: 19, scope: !801)
!867 = !DILocation(line: 490, column: 10, scope: !801)
!868 = !DILocation(line: 490, column: 18, scope: !801)
!869 = !DILocation(line: 491, column: 3, scope: !801)
!870 = !DILocation(line: 491, column: 19, scope: !801)
!871 = !DILocation(line: 492, column: 10, scope: !801)
!872 = !DILocation(line: 492, column: 18, scope: !801)
!873 = !DILocation(line: 493, column: 3, scope: !801)
!874 = !DILocation(line: 493, column: 19, scope: !801)
!875 = !DILocation(line: 494, column: 10, scope: !801)
!876 = !DILocation(line: 494, column: 18, scope: !801)
!877 = !DILocation(line: 495, column: 3, scope: !801)
!878 = !DILocation(line: 495, column: 19, scope: !801)
!879 = !DILocation(line: 496, column: 10, scope: !801)
!880 = !DILocation(line: 496, column: 18, scope: !801)
!881 = !DILocation(line: 497, column: 3, scope: !801)
!882 = !DILocation(line: 497, column: 19, scope: !801)
!883 = !DILocation(line: 498, column: 10, scope: !801)
!884 = !DILocation(line: 498, column: 18, scope: !801)
!885 = !DILocation(line: 500, column: 45, scope: !801)
!886 = !DILocation(line: 500, column: 64, scope: !801)
!887 = !DILocation(line: 501, column: 24, scope: !801)
!888 = !DILocation(line: 501, column: 8, scope: !801)
!889 = !DILocation(line: 502, column: 3, scope: !801)
!890 = !DILocation(line: 503, column: 10, scope: !891)
!891 = distinct !DILexicalBlock(scope: !801, file: !1, line: 503, column: 7)
!892 = !DILocation(line: 507, column: 20, scope: !788)
!893 = !DILocation(line: 507, column: 7, scope: !788)
!894 = !DILocation(line: 508, column: 9, scope: !895)
!895 = distinct !DILexicalBlock(scope: !788, file: !1, line: 508, column: 6)
!896 = !DILocation(line: 508, column: 6, scope: !788)
!897 = !DILocation(line: 510, column: 6, scope: !898)
!898 = distinct !DILexicalBlock(scope: !788, file: !1, line: 510, column: 6)
!899 = !DILocation(line: 513, column: 1, scope: !788)
!900 = distinct !DISubprogram(name: "finedb_add", scope: !1, file: !1, line: 269, type: !778, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !901)
!901 = !{!902, !903, !904}
!902 = !DILocalVariable(name: "client", arg: 1, scope: !900, file: !1, line: 269, type: !96)
!903 = !DILocalVariable(name: "key", arg: 2, scope: !900, file: !1, line: 269, type: !432)
!904 = !DILocalVariable(name: "data", arg: 3, scope: !900, file: !1, line: 269, type: !432)
!905 = !DILocation(line: 0, scope: !900)
!906 = !DILocation(line: 269, column: 60, scope: !900)
!907 = !DILocation(line: 270, column: 10, scope: !900)
!908 = !DILocation(line: 270, column: 2, scope: !900)
!909 = distinct !DISubprogram(name: "finedb_update", scope: !1, file: !1, line: 274, type: !778, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !910)
!910 = !{!911, !912, !913}
!911 = !DILocalVariable(name: "client", arg: 1, scope: !909, file: !1, line: 274, type: !96)
!912 = !DILocalVariable(name: "key", arg: 2, scope: !909, file: !1, line: 274, type: !432)
!913 = !DILocalVariable(name: "data", arg: 3, scope: !909, file: !1, line: 274, type: !432)
!914 = !DILocation(line: 0, scope: !909)
!915 = !DILocation(line: 274, column: 63, scope: !909)
!916 = !DILocation(line: 275, column: 10, scope: !909)
!917 = !DILocation(line: 275, column: 2, scope: !909)
!918 = distinct !DISubprogram(name: "finedb_start", scope: !1, file: !1, line: 291, type: !179, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !919)
!919 = !{!920, !921, !922}
!920 = !DILocalVariable(name: "client", arg: 1, scope: !918, file: !1, line: 291, type: !96)
!921 = !DILocalVariable(name: "code", scope: !918, file: !1, line: 292, type: !70)
!922 = !DILocalVariable(name: "rc", scope: !918, file: !1, line: 293, type: !103)
!923 = !DILocation(line: 0, scope: !918)
!924 = !DILocation(line: 0, scope: !925, inlinedAt: !934)
!925 = distinct !DISubprogram(name: "_send_simple_request", scope: !1, file: !1, line: 338, type: !926, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !928)
!926 = !DISubroutineType(types: !927)
!927 = !{!103, !96, !108, !81}
!928 = !{!929, !930, !931, !932, !933}
!929 = !DILocalVariable(name: "client", arg: 1, scope: !925, file: !1, line: 338, type: !96)
!930 = !DILocalVariable(name: "code", arg: 2, scope: !925, file: !1, line: 338, type: !108)
!931 = !DILocalVariable(name: "response", arg: 3, scope: !925, file: !1, line: 338, type: !81)
!932 = !DILocalVariable(name: "res", scope: !925, file: !1, line: 339, type: !70)
!933 = !DILocalVariable(name: "rc", scope: !925, file: !1, line: 340, type: !103)
!934 = distinct !DILocation(line: 295, column: 7, scope: !918)
!935 = !DILocation(line: 339, column: 2, scope: !925, inlinedAt: !934)
!936 = !DILocation(line: 343, column: 21, scope: !925, inlinedAt: !934)
!937 = !DILocation(line: 343, column: 7, scope: !925, inlinedAt: !934)
!938 = !DILocation(line: 344, column: 9, scope: !939, inlinedAt: !934)
!939 = distinct !DILexicalBlock(scope: !925, file: !1, line: 344, column: 6)
!940 = !DILocation(line: 344, column: 6, scope: !925, inlinedAt: !934)
!941 = !DILocation(line: 347, column: 20, scope: !925, inlinedAt: !934)
!942 = !DILocation(line: 347, column: 7, scope: !925, inlinedAt: !934)
!943 = !DILocation(line: 348, column: 9, scope: !944, inlinedAt: !934)
!944 = distinct !DILexicalBlock(scope: !925, file: !1, line: 348, column: 6)
!945 = !DILocation(line: 348, column: 6, scope: !925, inlinedAt: !934)
!946 = !DILocation(line: 353, column: 1, scope: !925, inlinedAt: !934)
!947 = !DILocation(line: 296, column: 6, scope: !918)
!948 = !DILocation(line: 351, column: 15, scope: !949, inlinedAt: !934)
!949 = distinct !DILexicalBlock(scope: !925, file: !1, line: 350, column: 6)
!950 = !DILocation(line: 301, column: 1, scope: !918)
!951 = distinct !DISubprogram(name: "finedb_stop", scope: !1, file: !1, line: 304, type: !179, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !952)
!952 = !{!953, !954, !955}
!953 = !DILocalVariable(name: "client", arg: 1, scope: !951, file: !1, line: 304, type: !96)
!954 = !DILocalVariable(name: "code", scope: !951, file: !1, line: 305, type: !70)
!955 = !DILocalVariable(name: "rc", scope: !951, file: !1, line: 306, type: !103)
!956 = !DILocation(line: 0, scope: !951)
!957 = !DILocation(line: 0, scope: !925, inlinedAt: !958)
!958 = distinct !DILocation(line: 308, column: 7, scope: !951)
!959 = !DILocation(line: 339, column: 2, scope: !925, inlinedAt: !958)
!960 = !DILocation(line: 343, column: 21, scope: !925, inlinedAt: !958)
!961 = !DILocation(line: 343, column: 7, scope: !925, inlinedAt: !958)
!962 = !DILocation(line: 344, column: 9, scope: !939, inlinedAt: !958)
!963 = !DILocation(line: 344, column: 6, scope: !925, inlinedAt: !958)
!964 = !DILocation(line: 347, column: 20, scope: !925, inlinedAt: !958)
!965 = !DILocation(line: 347, column: 7, scope: !925, inlinedAt: !958)
!966 = !DILocation(line: 348, column: 9, scope: !944, inlinedAt: !958)
!967 = !DILocation(line: 348, column: 6, scope: !925, inlinedAt: !958)
!968 = !DILocation(line: 353, column: 1, scope: !925, inlinedAt: !958)
!969 = !DILocation(line: 309, column: 6, scope: !951)
!970 = !DILocation(line: 351, column: 15, scope: !949, inlinedAt: !958)
!971 = !DILocation(line: 314, column: 1, scope: !951)
!972 = distinct !DISubprogram(name: "finedb_ping", scope: !1, file: !1, line: 317, type: !179, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !973)
!973 = !{!974, !975, !976}
!974 = !DILocalVariable(name: "client", arg: 1, scope: !972, file: !1, line: 317, type: !96)
!975 = !DILocalVariable(name: "code", scope: !972, file: !1, line: 318, type: !70)
!976 = !DILocalVariable(name: "rc", scope: !972, file: !1, line: 319, type: !103)
!977 = !DILocation(line: 0, scope: !972)
!978 = !DILocation(line: 0, scope: !925, inlinedAt: !979)
!979 = distinct !DILocation(line: 321, column: 7, scope: !972)
!980 = !DILocation(line: 339, column: 2, scope: !925, inlinedAt: !979)
!981 = !DILocation(line: 343, column: 21, scope: !925, inlinedAt: !979)
!982 = !DILocation(line: 343, column: 7, scope: !925, inlinedAt: !979)
!983 = !DILocation(line: 344, column: 9, scope: !939, inlinedAt: !979)
!984 = !DILocation(line: 344, column: 6, scope: !925, inlinedAt: !979)
!985 = !DILocation(line: 347, column: 20, scope: !925, inlinedAt: !979)
!986 = !DILocation(line: 347, column: 7, scope: !925, inlinedAt: !979)
!987 = !DILocation(line: 348, column: 9, scope: !944, inlinedAt: !979)
!988 = !DILocation(line: 348, column: 6, scope: !925, inlinedAt: !979)
!989 = !DILocation(line: 353, column: 1, scope: !925, inlinedAt: !979)
!990 = !DILocation(line: 322, column: 6, scope: !972)
!991 = !DILocation(line: 351, column: 15, scope: !949, inlinedAt: !979)
!992 = !DILocation(line: 327, column: 1, scope: !972)
!993 = !DISubprogram(name: "snappy_init_env", scope: !709, file: !709, line: 15, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!994 = !DISubroutineType(types: !995)
!995 = !{!103, !996}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!997 = !DISubprogram(name: "snappy_max_compressed_length", scope: !709, file: !709, line: 34, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!998 = !DISubroutineType(types: !999)
!999 = !{!82, !82}
!1000 = !DISubprogram(name: "snappy_compress", scope: !709, file: !709, line: 21, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!103, !996, !107, !82, !81, !713}
!1003 = !DISubprogram(name: "snappy_free_env", scope: !709, file: !709, line: 17, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !996}
!1006 = !DISubprogram(name: "ydynabin_expand", scope: !477, file: !477, line: 73, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !145)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!542, !475, !59, !82}
