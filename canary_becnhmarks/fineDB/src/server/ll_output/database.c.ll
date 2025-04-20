; ModuleID = 'database.c'
source_filename = "database.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ybin_s = type { ptr, i64 }
%struct.MDB_val = type { i64, ptr }

@.str = private unnamed_addr constant [11 x i8] c"database.c\00", align 1, !dbg !0
@__FUNCTION__.database_open = private unnamed_addr constant [14 x i8] c"database_open\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [15 x i8] c"Open database.\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to open database on '%s' (%s).\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [34 x i8] c"Unable to set mapsize to %d (%s).\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [32 x i8] c"Unable to set max readers (%s).\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [28 x i8] c"Unable to set max dbs (%s).\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [43 x i8] c"Unable to open database environmenti (%s).\00", align 1, !dbg !38
@.str.7 = private unnamed_addr constant [17 x i8] c"Database opened.\00", align 1, !dbg !43
@__FUNCTION__.database_close = private unnamed_addr constant [15 x i8] c"database_close\00", align 1, !dbg !48
@.str.8 = private unnamed_addr constant [16 x i8] c"Close database.\00", align 1, !dbg !51
@.str.9 = private unnamed_addr constant [17 x i8] c"Database closed.\00", align 1, !dbg !56
@__FUNCTION__.database_transaction_start = private unnamed_addr constant [27 x i8] c"database_transaction_start\00", align 1, !dbg !58
@.str.10 = private unnamed_addr constant [35 x i8] c"Unable to create transaction (%s).\00", align 1, !dbg !63
@__FUNCTION__.database_transaction_commit = private unnamed_addr constant [28 x i8] c"database_transaction_commit\00", align 1, !dbg !68
@.str.11 = private unnamed_addr constant [35 x i8] c"Unable to commit transaction (%s).\00", align 1, !dbg !71
@__FUNCTION__.database_put = private unnamed_addr constant [13 x i8] c"database_put\00", align 1, !dbg !73
@.str.12 = private unnamed_addr constant [37 x i8] c"Unable to open database handle (%s).\00", align 1, !dbg !78
@.str.13 = private unnamed_addr constant [39 x i8] c"Unable to write data in database (%s).\00", align 1, !dbg !83
@__FUNCTION__.database_del = private unnamed_addr constant [13 x i8] c"database_del\00", align 1, !dbg !88
@__FUNCTION__.database_get = private unnamed_addr constant [13 x i8] c"database_get\00", align 1, !dbg !90
@.str.14 = private unnamed_addr constant [14 x i8] c"No data (%s).\00", align 1, !dbg !92
@.str.15 = private unnamed_addr constant [38 x i8] c"Unable to read data in database (%s).\00", align 1, !dbg !95
@__FUNCTION__.database_list = private unnamed_addr constant [14 x i8] c"database_list\00", align 1, !dbg !97
@.str.16 = private unnamed_addr constant [40 x i8] c"Unable to open cursor on database (%s).\00", align 1, !dbg !99
@__FUNCTION__.database_drop = private unnamed_addr constant [14 x i8] c"database_drop\00", align 1, !dbg !104
@.str.17 = private unnamed_addr constant [30 x i8] c"Unable to drop database (%s).\00", align 1, !dbg !106

; Function Attrs: nounwind uwtable
define dso_local ptr @database_open(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !159 {
  %5 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !170, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata i64 %1, metadata !171, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata i32 %2, metadata !172, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata i32 %3, metadata !173, metadata !DIExpression()), !dbg !177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6, !dbg !178
  %6 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 8, ptr noundef nonnull @__FUNCTION__.database_open, ptr noundef nonnull @.str.1) #6, !dbg !179
  call void @llvm.dbg.value(metadata ptr %5, metadata !174, metadata !DIExpression(DW_OP_deref)), !dbg !177
  %7 = call i32 @mdb_env_create(ptr noundef nonnull %5) #6, !dbg !180
  call void @llvm.dbg.value(metadata i32 %7, metadata !175, metadata !DIExpression()), !dbg !177
  %8 = icmp eq i32 %7, 0, !dbg !181
  br i1 %8, label %12, label %9, !dbg !183

9:                                                ; preds = %4
  %10 = call ptr @mdb_strerror(i32 noundef %7) #6, !dbg !184
  %11 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 12, ptr noundef nonnull @__FUNCTION__.database_open, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef %10) #6, !dbg !184
  br label %48, !dbg !186

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 8, !dbg !187, !tbaa !188
  call void @llvm.dbg.value(metadata ptr %13, metadata !174, metadata !DIExpression()), !dbg !177
  %14 = call i32 @mdb_env_set_mapsize(ptr noundef %13, i64 noundef %1) #6, !dbg !192
  call void @llvm.dbg.value(metadata i32 %14, metadata !175, metadata !DIExpression()), !dbg !177
  %15 = icmp eq i32 %14, 0, !dbg !193
  br i1 %15, label %19, label %16, !dbg !195

16:                                               ; preds = %12
  %17 = call ptr @mdb_strerror(i32 noundef %14) #6, !dbg !196
  %18 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 18, ptr noundef nonnull @__FUNCTION__.database_open, ptr noundef nonnull @.str.3, i64 noundef %1, ptr noundef %17) #6, !dbg !196
  br label %48, !dbg !198

19:                                               ; preds = %12
  %20 = icmp ugt i32 %2, 126, !dbg !199
  br i1 %20, label %21, label %28, !dbg !201

21:                                               ; preds = %19
  %22 = load ptr, ptr %5, align 8, !dbg !202, !tbaa !188
  call void @llvm.dbg.value(metadata ptr %22, metadata !174, metadata !DIExpression()), !dbg !177
  %23 = call i32 @mdb_env_set_maxreaders(ptr noundef %22, i32 noundef %2) #6, !dbg !204
  call void @llvm.dbg.value(metadata i32 %23, metadata !175, metadata !DIExpression()), !dbg !177
  %24 = icmp eq i32 %23, 0, !dbg !205
  br i1 %24, label %28, label %25, !dbg !207

25:                                               ; preds = %21
  %26 = call ptr @mdb_strerror(i32 noundef %23) #6, !dbg !208
  %27 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 25, ptr noundef nonnull @__FUNCTION__.database_open, ptr noundef nonnull @.str.4, ptr noundef %26) #6, !dbg !208
  br label %48, !dbg !210

28:                                               ; preds = %21, %19
  %29 = icmp ugt i32 %3, 1, !dbg !211
  br i1 %29, label %30, label %37, !dbg !213

30:                                               ; preds = %28
  %31 = load ptr, ptr %5, align 8, !dbg !214, !tbaa !188
  call void @llvm.dbg.value(metadata ptr %31, metadata !174, metadata !DIExpression()), !dbg !177
  %32 = call i32 @mdb_env_set_maxdbs(ptr noundef %31, i32 noundef %3) #6, !dbg !216
  call void @llvm.dbg.value(metadata i32 %32, metadata !175, metadata !DIExpression()), !dbg !177
  %33 = icmp eq i32 %32, 0, !dbg !217
  br i1 %33, label %37, label %34, !dbg !219

34:                                               ; preds = %30
  %35 = call ptr @mdb_strerror(i32 noundef %32) #6, !dbg !220
  %36 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 33, ptr noundef nonnull @__FUNCTION__.database_open, ptr noundef nonnull @.str.5, ptr noundef %35) #6, !dbg !220
  br label %48, !dbg !222

37:                                               ; preds = %30, %28
  %38 = load ptr, ptr %5, align 8, !dbg !223, !tbaa !188
  call void @llvm.dbg.value(metadata ptr %38, metadata !174, metadata !DIExpression()), !dbg !177
  %39 = call i32 @mdb_env_open(ptr noundef %38, ptr noundef %0, i32 noundef 2621440, i32 noundef 436) #6, !dbg !224
  call void @llvm.dbg.value(metadata i32 %39, metadata !175, metadata !DIExpression()), !dbg !177
  %40 = icmp eq i32 %39, 0, !dbg !225
  br i1 %40, label %45, label %41, !dbg !227

41:                                               ; preds = %37
  %42 = call ptr @mdb_strerror(i32 noundef %39) #6, !dbg !228
  %43 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 40, ptr noundef nonnull @__FUNCTION__.database_open, ptr noundef nonnull @.str.6, ptr noundef %42) #6, !dbg !228
  %44 = load ptr, ptr %5, align 8, !dbg !230, !tbaa !188
  call void @llvm.dbg.value(metadata ptr %44, metadata !174, metadata !DIExpression()), !dbg !177
  call void @mdb_env_close(ptr noundef %44) #6, !dbg !231
  br label %48, !dbg !232

45:                                               ; preds = %37
  %46 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 44, ptr noundef nonnull @__FUNCTION__.database_open, ptr noundef nonnull @.str.7) #6, !dbg !233
  %47 = load ptr, ptr %5, align 8, !dbg !234, !tbaa !188
  call void @llvm.dbg.value(metadata ptr %47, metadata !174, metadata !DIExpression()), !dbg !177
  br label %48, !dbg !235

48:                                               ; preds = %45, %41, %34, %25, %16, %9
  %49 = phi ptr [ null, %9 ], [ null, %16 ], [ null, %25 ], [ null, %34 ], [ null, %41 ], [ %47, %45 ], !dbg !177
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6, !dbg !236
  ret ptr %49, !dbg !236
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !237 i32 @ylog_write(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !243 i32 @mdb_env_create(ptr noundef) local_unnamed_addr #3

declare !dbg !247 ptr @mdb_strerror(i32 noundef) local_unnamed_addr #3

declare !dbg !251 i32 @mdb_env_set_mapsize(ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !254 i32 @mdb_env_set_maxreaders(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !257 i32 @mdb_env_set_maxdbs(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !261 i32 @mdb_env_open(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !269 void @mdb_env_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @database_close(ptr noundef %0) local_unnamed_addr #0 !dbg !272 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !274, metadata !DIExpression()), !dbg !275
  %2 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 50, ptr noundef nonnull @__FUNCTION__.database_close, ptr noundef nonnull @.str.8) #6, !dbg !276
  tail call void @mdb_env_close(ptr noundef %0) #6, !dbg !277
  %3 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 52, ptr noundef nonnull @__FUNCTION__.database_close, ptr noundef nonnull @.str.9) #6, !dbg !278
  ret void, !dbg !279
}

; Function Attrs: nounwind uwtable
define dso_local ptr @database_transaction_start(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !280 {
  %3 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !287, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 %1, metadata !288, metadata !DIExpression()), !dbg !292
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6, !dbg !293
  call void @llvm.dbg.value(metadata i32 0, metadata !290, metadata !DIExpression()), !dbg !292
  %4 = icmp eq i32 %1, 0, !dbg !294
  %5 = select i1 %4, i32 0, i32 131072, !dbg !296
  call void @llvm.dbg.value(metadata i32 %5, metadata !290, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata ptr %3, metadata !289, metadata !DIExpression(DW_OP_deref)), !dbg !292
  %6 = call i32 @mdb_txn_begin(ptr noundef %0, ptr noundef null, i32 noundef %5, ptr noundef nonnull %3) #6, !dbg !297
  call void @llvm.dbg.value(metadata i32 %6, metadata !291, metadata !DIExpression()), !dbg !292
  %7 = icmp eq i32 %6, 0, !dbg !298
  br i1 %7, label %11, label %8, !dbg !300

8:                                                ; preds = %2
  %9 = call ptr @mdb_strerror(i32 noundef %6) #6, !dbg !301
  %10 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 65, ptr noundef nonnull @__FUNCTION__.database_transaction_start, ptr noundef nonnull @.str.10, ptr noundef %9) #6, !dbg !301
  br label %13, !dbg !303

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !dbg !304, !tbaa !188
  call void @llvm.dbg.value(metadata ptr %12, metadata !289, metadata !DIExpression()), !dbg !292
  br label %13, !dbg !305

13:                                               ; preds = %11, %8
  %14 = phi ptr [ null, %8 ], [ %12, %11 ], !dbg !292
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6, !dbg !306
  ret ptr %14, !dbg !306
}

declare !dbg !307 i32 @mdb_txn_begin(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @database_transaction_commit(ptr noundef %0) local_unnamed_addr #0 !dbg !311 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !317, metadata !DIExpression()), !dbg !319
  %2 = tail call i32 @mdb_txn_commit(ptr noundef %0) #6, !dbg !320
  call void @llvm.dbg.value(metadata i32 %2, metadata !318, metadata !DIExpression()), !dbg !319
  %3 = icmp eq i32 %2, 0, !dbg !321
  br i1 %3, label %7, label %4, !dbg !323

4:                                                ; preds = %1
  %5 = tail call ptr @mdb_strerror(i32 noundef %2) #6, !dbg !324
  %6 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 77, ptr noundef nonnull @__FUNCTION__.database_transaction_commit, ptr noundef nonnull @.str.11, ptr noundef %5) #6, !dbg !324
  br label %7, !dbg !326

7:                                                ; preds = %1, %4
  %8 = phi i32 [ -13, %4 ], [ 1, %1 ], !dbg !319
  ret i32 %8, !dbg !327
}

declare !dbg !328 i32 @mdb_txn_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @database_transaction_rollback(ptr noundef %0) local_unnamed_addr #0 !dbg !331 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !335, metadata !DIExpression()), !dbg !336
  tail call void @mdb_txn_abort(ptr noundef %0) #6, !dbg !337
  ret void, !dbg !338
}

declare !dbg !339 void @mdb_txn_abort(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @database_put(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr %4, i64 %5, ptr nocapture noundef readonly byval(%struct.ybin_s) align 8 %6) local_unnamed_addr #0 !dbg !340 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.MDB_val, align 8
  %11 = alloca %struct.MDB_val, align 8
  call void @llvm.dbg.value(metadata ptr %4, metadata !354, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !369
  call void @llvm.dbg.value(metadata i64 %5, metadata !354, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !369
  call void @llvm.dbg.value(metadata ptr %0, metadata !350, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %1, metadata !351, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %2, metadata !352, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %3, metadata !353, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.declare(metadata ptr %6, metadata !355, metadata !DIExpression()), !dbg !370
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6, !dbg !371
  call void @llvm.dbg.value(metadata ptr %1, metadata !357, metadata !DIExpression()), !dbg !369
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6, !dbg !372
  call void @llvm.dbg.declare(metadata ptr %10, metadata !358, metadata !DIExpression()), !dbg !373
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #6, !dbg !372
  call void @llvm.dbg.declare(metadata ptr %11, metadata !364, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i32 0, metadata !366, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 1, metadata !367, metadata !DIExpression()), !dbg !369
  %12 = icmp eq i32 %2, 0, !dbg !375
  %13 = select i1 %12, i32 0, i32 16, !dbg !377
  call void @llvm.dbg.value(metadata i32 %13, metadata !366, metadata !DIExpression()), !dbg !369
  %14 = icmp eq ptr %1, null, !dbg !378
  br i1 %14, label %15, label %24, !dbg !380

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !287, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 0, metadata !288, metadata !DIExpression()), !dbg !381
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6, !dbg !383
  call void @llvm.dbg.value(metadata i32 0, metadata !290, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i32 0, metadata !290, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata ptr %8, metadata !289, metadata !DIExpression(DW_OP_deref)), !dbg !381
  %16 = call i32 @mdb_txn_begin(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %8) #6, !dbg !384
  call void @llvm.dbg.value(metadata i32 %16, metadata !291, metadata !DIExpression()), !dbg !381
  %17 = icmp eq i32 %16, 0, !dbg !385
  br i1 %17, label %21, label %18, !dbg !386

18:                                               ; preds = %15
  %19 = call ptr @mdb_strerror(i32 noundef %16) #6, !dbg !387
  %20 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 65, ptr noundef nonnull @__FUNCTION__.database_transaction_start, ptr noundef nonnull @.str.10, ptr noundef %19) #6, !dbg !387
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6, !dbg !388
  call void @llvm.dbg.value(metadata ptr null, metadata !357, metadata !DIExpression()), !dbg !369
  br label %55, !dbg !389

21:                                               ; preds = %15
  %22 = load ptr, ptr %8, align 8, !dbg !390, !tbaa !188
  call void @llvm.dbg.value(metadata ptr %22, metadata !289, metadata !DIExpression()), !dbg !381
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6, !dbg !388
  call void @llvm.dbg.value(metadata ptr %22, metadata !357, metadata !DIExpression()), !dbg !369
  %23 = icmp eq ptr %22, null, !dbg !391
  br i1 %23, label %55, label %24, !dbg !389

24:                                               ; preds = %21, %7
  %25 = phi ptr [ %22, %21 ], [ %1, %7 ], !dbg !369
  call void @llvm.dbg.value(metadata ptr %25, metadata !357, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr %9, metadata !356, metadata !DIExpression(DW_OP_deref)), !dbg !369
  %26 = call i32 @mdb_dbi_open(ptr noundef nonnull %25, ptr noundef %3, i32 noundef 262144, ptr noundef nonnull %9) #6, !dbg !392
  call void @llvm.dbg.value(metadata i32 %26, metadata !365, metadata !DIExpression()), !dbg !369
  %27 = icmp eq i32 %26, 0, !dbg !393
  br i1 %27, label %31, label %28, !dbg !395

28:                                               ; preds = %24
  %29 = call ptr @mdb_strerror(i32 noundef %26) #6, !dbg !396
  %30 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 106, ptr noundef nonnull @__FUNCTION__.database_put, ptr noundef nonnull @.str.12, ptr noundef %29) #6, !dbg !396
  call void @llvm.dbg.value(metadata i32 -13, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.label(metadata !368), !dbg !398
  br label %53, !dbg !399

31:                                               ; preds = %24
  store i64 %5, ptr %10, align 8, !dbg !401, !tbaa !402
  %32 = getelementptr inbounds %struct.MDB_val, ptr %10, i64 0, i32 1, !dbg !405
  store ptr %4, ptr %32, align 8, !dbg !406, !tbaa !407
  %33 = getelementptr inbounds %struct.ybin_s, ptr %6, i64 0, i32 1, !dbg !408
  %34 = load i64, ptr %33, align 8, !dbg !408, !tbaa !409
  store i64 %34, ptr %11, align 8, !dbg !411, !tbaa !402
  %35 = load ptr, ptr %6, align 8, !dbg !412, !tbaa !413
  %36 = getelementptr inbounds %struct.MDB_val, ptr %11, i64 0, i32 1, !dbg !414
  store ptr %35, ptr %36, align 8, !dbg !415, !tbaa !407
  %37 = load i32, ptr %9, align 4, !dbg !416, !tbaa !417
  call void @llvm.dbg.value(metadata i32 %37, metadata !356, metadata !DIExpression()), !dbg !369
  %38 = call i32 @mdb_put(ptr noundef nonnull %25, i32 noundef %37, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %13) #6, !dbg !419
  call void @llvm.dbg.value(metadata i32 %38, metadata !365, metadata !DIExpression()), !dbg !369
  %39 = icmp eq i32 %38, 0, !dbg !420
  br i1 %39, label %44, label %40, !dbg !422

40:                                               ; preds = %31
  %41 = call ptr @mdb_strerror(i32 noundef %38) #6, !dbg !423
  %42 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 118, ptr noundef nonnull @__FUNCTION__.database_put, ptr noundef nonnull @.str.13, ptr noundef %41) #6, !dbg !423
  call void @llvm.dbg.value(metadata i32 -13, metadata !367, metadata !DIExpression()), !dbg !369
  %43 = load i32, ptr %9, align 4, !dbg !425, !tbaa !417
  call void @llvm.dbg.value(metadata i32 %43, metadata !356, metadata !DIExpression()), !dbg !369
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %43) #6, !dbg !426
  call void @llvm.dbg.label(metadata !368), !dbg !398
  br label %53, !dbg !399

44:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i32 1, metadata !367, metadata !DIExpression()), !dbg !369
  %45 = load i32, ptr %9, align 4, !dbg !425, !tbaa !417
  call void @llvm.dbg.value(metadata i32 %45, metadata !356, metadata !DIExpression()), !dbg !369
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %45) #6, !dbg !426
  call void @llvm.dbg.label(metadata !368), !dbg !398
  %46 = and i1 %14, %39, !dbg !399
  br i1 %46, label %47, label %55, !dbg !399

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata ptr %25, metadata !317, metadata !DIExpression()), !dbg !427
  %48 = call i32 @mdb_txn_commit(ptr noundef nonnull %25) #6, !dbg !429
  call void @llvm.dbg.value(metadata i32 %48, metadata !318, metadata !DIExpression()), !dbg !427
  %49 = icmp eq i32 %48, 0, !dbg !430
  br i1 %49, label %55, label %50, !dbg !431

50:                                               ; preds = %47
  %51 = call ptr @mdb_strerror(i32 noundef %48) #6, !dbg !432
  %52 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 77, ptr noundef nonnull @__FUNCTION__.database_transaction_commit, ptr noundef nonnull @.str.11, ptr noundef %51) #6, !dbg !432
  br label %53, !dbg !433

53:                                               ; preds = %40, %50, %28
  call void @llvm.dbg.value(metadata i32 -13, metadata !367, metadata !DIExpression()), !dbg !369
  br i1 %14, label %54, label %55, !dbg !434

54:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr %25, metadata !335, metadata !DIExpression()), !dbg !436
  call void @mdb_txn_abort(ptr noundef nonnull %25) #6, !dbg !438
  br label %55, !dbg !439

55:                                               ; preds = %44, %47, %18, %53, %54, %21
  %56 = phi i32 [ -13, %21 ], [ -13, %54 ], [ -13, %53 ], [ -13, %18 ], [ 1, %47 ], [ 1, %44 ], !dbg !369
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #6, !dbg !440
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6, !dbg !440
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6, !dbg !440
  ret i32 %56, !dbg !440
}

declare !dbg !441 i32 @mdb_dbi_open(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !445 i32 @mdb_put(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !449 void @mdb_dbi_close(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @database_del(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 !dbg !452 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.MDB_val, align 8
  call void @llvm.dbg.value(metadata ptr %3, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !466
  call void @llvm.dbg.value(metadata i64 %4, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !466
  call void @llvm.dbg.value(metadata ptr %0, metadata !456, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata ptr %1, metadata !457, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata ptr %2, metadata !458, metadata !DIExpression()), !dbg !466
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6, !dbg !467
  call void @llvm.dbg.value(metadata ptr %1, metadata !461, metadata !DIExpression()), !dbg !466
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !468
  call void @llvm.dbg.declare(metadata ptr %8, metadata !462, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata i32 1, metadata !464, metadata !DIExpression()), !dbg !466
  %9 = icmp eq ptr %1, null, !dbg !470
  br i1 %9, label %10, label %19, !dbg !472

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %0, metadata !287, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i32 0, metadata !288, metadata !DIExpression()), !dbg !473
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6, !dbg !475
  call void @llvm.dbg.value(metadata i32 0, metadata !290, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i32 0, metadata !290, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata ptr %6, metadata !289, metadata !DIExpression(DW_OP_deref)), !dbg !473
  %11 = call i32 @mdb_txn_begin(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %6) #6, !dbg !476
  call void @llvm.dbg.value(metadata i32 %11, metadata !291, metadata !DIExpression()), !dbg !473
  %12 = icmp eq i32 %11, 0, !dbg !477
  br i1 %12, label %16, label %13, !dbg !478

13:                                               ; preds = %10
  %14 = call ptr @mdb_strerror(i32 noundef %11) #6, !dbg !479
  %15 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 65, ptr noundef nonnull @__FUNCTION__.database_transaction_start, ptr noundef nonnull @.str.10, ptr noundef %14) #6, !dbg !479
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6, !dbg !480
  call void @llvm.dbg.value(metadata ptr null, metadata !461, metadata !DIExpression()), !dbg !466
  br label %46, !dbg !481

16:                                               ; preds = %10
  %17 = load ptr, ptr %6, align 8, !dbg !482, !tbaa !188
  call void @llvm.dbg.value(metadata ptr %17, metadata !289, metadata !DIExpression()), !dbg !473
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6, !dbg !480
  call void @llvm.dbg.value(metadata ptr %17, metadata !461, metadata !DIExpression()), !dbg !466
  %18 = icmp eq ptr %17, null, !dbg !483
  br i1 %18, label %46, label %19, !dbg !481

19:                                               ; preds = %16, %5
  %20 = phi ptr [ %17, %16 ], [ %1, %5 ], !dbg !466
  call void @llvm.dbg.value(metadata ptr %20, metadata !461, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata ptr %7, metadata !460, metadata !DIExpression(DW_OP_deref)), !dbg !466
  %21 = call i32 @mdb_dbi_open(ptr noundef nonnull %20, ptr noundef %2, i32 noundef 0, ptr noundef nonnull %7) #6, !dbg !484
  call void @llvm.dbg.value(metadata i32 %21, metadata !463, metadata !DIExpression()), !dbg !466
  %22 = icmp eq i32 %21, 0, !dbg !485
  br i1 %22, label %26, label %23, !dbg !487

23:                                               ; preds = %19
  %24 = call ptr @mdb_strerror(i32 noundef %21) #6, !dbg !488
  %25 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 147, ptr noundef nonnull @__FUNCTION__.database_del, ptr noundef nonnull @.str.12, ptr noundef %24) #6, !dbg !488
  call void @llvm.dbg.value(metadata i32 -13, metadata !464, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.label(metadata !465), !dbg !490
  br label %44, !dbg !491

26:                                               ; preds = %19
  store i64 %4, ptr %8, align 8, !dbg !493, !tbaa !402
  %27 = getelementptr inbounds %struct.MDB_val, ptr %8, i64 0, i32 1, !dbg !494
  store ptr %3, ptr %27, align 8, !dbg !495, !tbaa !407
  %28 = load i32, ptr %7, align 4, !dbg !496, !tbaa !417
  call void @llvm.dbg.value(metadata i32 %28, metadata !460, metadata !DIExpression()), !dbg !466
  %29 = call i32 @mdb_del(ptr noundef nonnull %20, i32 noundef %28, ptr noundef nonnull %8, ptr noundef null) #6, !dbg !497
  call void @llvm.dbg.value(metadata i32 %29, metadata !463, metadata !DIExpression()), !dbg !466
  %30 = icmp eq i32 %29, 0, !dbg !498
  br i1 %30, label %35, label %31, !dbg !500

31:                                               ; preds = %26
  %32 = call ptr @mdb_strerror(i32 noundef %29) #6, !dbg !501
  %33 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 157, ptr noundef nonnull @__FUNCTION__.database_del, ptr noundef nonnull @.str.13, ptr noundef %32) #6, !dbg !501
  call void @llvm.dbg.value(metadata i32 -13, metadata !464, metadata !DIExpression()), !dbg !466
  %34 = load i32, ptr %7, align 4, !dbg !503, !tbaa !417
  call void @llvm.dbg.value(metadata i32 %34, metadata !460, metadata !DIExpression()), !dbg !466
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %34) #6, !dbg !504
  call void @llvm.dbg.label(metadata !465), !dbg !490
  br label %44, !dbg !491

35:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 1, metadata !464, metadata !DIExpression()), !dbg !466
  %36 = load i32, ptr %7, align 4, !dbg !503, !tbaa !417
  call void @llvm.dbg.value(metadata i32 %36, metadata !460, metadata !DIExpression()), !dbg !466
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %36) #6, !dbg !504
  call void @llvm.dbg.label(metadata !465), !dbg !490
  %37 = and i1 %9, %30, !dbg !491
  br i1 %37, label %38, label %46, !dbg !491

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata ptr %20, metadata !317, metadata !DIExpression()), !dbg !505
  %39 = call i32 @mdb_txn_commit(ptr noundef nonnull %20) #6, !dbg !507
  call void @llvm.dbg.value(metadata i32 %39, metadata !318, metadata !DIExpression()), !dbg !505
  %40 = icmp eq i32 %39, 0, !dbg !508
  br i1 %40, label %46, label %41, !dbg !509

41:                                               ; preds = %38
  %42 = call ptr @mdb_strerror(i32 noundef %39) #6, !dbg !510
  %43 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 77, ptr noundef nonnull @__FUNCTION__.database_transaction_commit, ptr noundef nonnull @.str.11, ptr noundef %42) #6, !dbg !510
  br label %44, !dbg !511

44:                                               ; preds = %31, %41, %23
  call void @llvm.dbg.value(metadata i32 -13, metadata !464, metadata !DIExpression()), !dbg !466
  br i1 %9, label %45, label %46, !dbg !512

45:                                               ; preds = %44
  call void @llvm.dbg.value(metadata ptr %20, metadata !335, metadata !DIExpression()), !dbg !514
  call void @mdb_txn_abort(ptr noundef nonnull %20) #6, !dbg !516
  br label %46, !dbg !517

46:                                               ; preds = %35, %38, %13, %44, %45, %16
  %47 = phi i32 [ -13, %16 ], [ -13, %45 ], [ -13, %44 ], [ -13, %13 ], [ 1, %38 ], [ 1, %35 ], !dbg !466
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !518
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6, !dbg !518
  ret i32 %47, !dbg !518
}

declare !dbg !519 i32 @mdb_del(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @database_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 !dbg !522 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.MDB_val, align 8
  %10 = alloca %struct.MDB_val, align 8
  call void @llvm.dbg.value(metadata ptr %3, metadata !530, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !539
  call void @llvm.dbg.value(metadata i64 %4, metadata !530, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !539
  call void @llvm.dbg.value(metadata ptr %0, metadata !527, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %1, metadata !528, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %2, metadata !529, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %5, metadata !531, metadata !DIExpression()), !dbg !539
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6, !dbg !540
  call void @llvm.dbg.value(metadata ptr %1, metadata !533, metadata !DIExpression()), !dbg !539
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %9, metadata !534, metadata !DIExpression()), !dbg !542
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %10, metadata !535, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata i32 1, metadata !537, metadata !DIExpression()), !dbg !539
  %11 = icmp eq ptr %1, null, !dbg !544
  br i1 %11, label %12, label %21, !dbg !546

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata ptr %0, metadata !287, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i32 1, metadata !288, metadata !DIExpression()), !dbg !547
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6, !dbg !549
  call void @llvm.dbg.value(metadata i32 0, metadata !290, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i32 131072, metadata !290, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata ptr %7, metadata !289, metadata !DIExpression(DW_OP_deref)), !dbg !547
  %13 = call i32 @mdb_txn_begin(ptr noundef %0, ptr noundef null, i32 noundef 131072, ptr noundef nonnull %7) #6, !dbg !550
  call void @llvm.dbg.value(metadata i32 %13, metadata !291, metadata !DIExpression()), !dbg !547
  %14 = icmp eq i32 %13, 0, !dbg !551
  br i1 %14, label %18, label %15, !dbg !552

15:                                               ; preds = %12
  %16 = call ptr @mdb_strerror(i32 noundef %13) #6, !dbg !553
  %17 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 65, ptr noundef nonnull @__FUNCTION__.database_transaction_start, ptr noundef nonnull @.str.10, ptr noundef %16) #6, !dbg !553
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6, !dbg !554
  call void @llvm.dbg.value(metadata ptr null, metadata !533, metadata !DIExpression()), !dbg !539
  br label %50, !dbg !555

18:                                               ; preds = %12
  %19 = load ptr, ptr %7, align 8, !dbg !556, !tbaa !188
  call void @llvm.dbg.value(metadata ptr %19, metadata !289, metadata !DIExpression()), !dbg !547
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6, !dbg !554
  call void @llvm.dbg.value(metadata ptr %19, metadata !533, metadata !DIExpression()), !dbg !539
  %20 = icmp eq ptr %19, null, !dbg !557
  br i1 %20, label %50, label %21, !dbg !555

21:                                               ; preds = %18, %6
  %22 = phi ptr [ %19, %18 ], [ %1, %6 ], !dbg !539
  call void @llvm.dbg.value(metadata ptr %22, metadata !533, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %8, metadata !532, metadata !DIExpression(DW_OP_deref)), !dbg !539
  %23 = call i32 @mdb_dbi_open(ptr noundef nonnull %22, ptr noundef %2, i32 noundef 0, ptr noundef nonnull %8) #6, !dbg !558
  call void @llvm.dbg.value(metadata i32 %23, metadata !536, metadata !DIExpression()), !dbg !539
  %24 = icmp eq i32 %23, 0, !dbg !559
  br i1 %24, label %25, label %38, !dbg !561

25:                                               ; preds = %21
  store i64 %4, ptr %9, align 8, !dbg !562, !tbaa !402
  %26 = getelementptr inbounds %struct.MDB_val, ptr %9, i64 0, i32 1, !dbg !563
  store ptr %3, ptr %26, align 8, !dbg !564, !tbaa !407
  %27 = load i32, ptr %8, align 4, !dbg !565, !tbaa !417
  call void @llvm.dbg.value(metadata i32 %27, metadata !532, metadata !DIExpression()), !dbg !539
  %28 = call i32 @mdb_get(ptr noundef nonnull %22, i32 noundef %27, ptr noundef nonnull %9, ptr noundef nonnull %10) #6, !dbg !566
  call void @llvm.dbg.value(metadata i32 %28, metadata !536, metadata !DIExpression()), !dbg !539
  br i1 %11, label %29, label %30, !dbg !567

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %22, metadata !335, metadata !DIExpression()), !dbg !568
  call void @mdb_txn_abort(ptr noundef nonnull %22) #6, !dbg !571
  br label %30, !dbg !572

30:                                               ; preds = %25, %29
  call void @llvm.dbg.value(metadata i32 poison, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32 %28, metadata !536, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.label(metadata !538), !dbg !573
  %31 = load i32, ptr %8, align 4, !dbg !574, !tbaa !417
  call void @llvm.dbg.value(metadata i32 %31, metadata !532, metadata !DIExpression()), !dbg !539
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %31) #6, !dbg !575
  %32 = icmp eq i32 %28, 0, !dbg !576
  br i1 %32, label %33, label %42, !dbg !578

33:                                               ; preds = %30
  %34 = load i64, ptr %10, align 8, !dbg !579, !tbaa !402
  %35 = getelementptr inbounds %struct.ybin_s, ptr %5, i64 0, i32 1, !dbg !581
  store i64 %34, ptr %35, align 8, !dbg !582, !tbaa !409
  %36 = getelementptr inbounds %struct.MDB_val, ptr %10, i64 0, i32 1, !dbg !583
  %37 = load ptr, ptr %36, align 8, !dbg !583, !tbaa !407
  store ptr %37, ptr %5, align 8, !dbg !584, !tbaa !413
  br label %50, !dbg !585

38:                                               ; preds = %21
  %39 = call ptr @mdb_strerror(i32 noundef %23) #6, !dbg !586
  %40 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 186, ptr noundef nonnull @__FUNCTION__.database_get, ptr noundef nonnull @.str.12, ptr noundef %39) #6, !dbg !586
  call void @llvm.dbg.value(metadata i32 -13, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32 %23, metadata !536, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.label(metadata !538), !dbg !573
  %41 = load i32, ptr %8, align 4, !dbg !574, !tbaa !417
  call void @llvm.dbg.value(metadata i32 %41, metadata !532, metadata !DIExpression()), !dbg !539
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %41) #6, !dbg !575
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !588
  br label %50, !dbg !589

42:                                               ; preds = %30
  %43 = icmp eq i32 %28, -30798, !dbg !590
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !588
  br i1 %43, label %44, label %47, !dbg !592

44:                                               ; preds = %42
  %45 = call ptr @mdb_strerror(i32 noundef -30798) #6, !dbg !593
  %46 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 214, ptr noundef nonnull @__FUNCTION__.database_get, ptr noundef nonnull @.str.14, ptr noundef %45) #6, !dbg !593
  br label %50, !dbg !595

47:                                               ; preds = %42
  %48 = call ptr @mdb_strerror(i32 noundef %28) #6, !dbg !596
  %49 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 217, ptr noundef nonnull @__FUNCTION__.database_get, ptr noundef nonnull @.str.15, ptr noundef %48) #6, !dbg !596
  br label %50, !dbg !597

50:                                               ; preds = %38, %15, %18, %47, %44, %33
  %51 = phi i32 [ -61, %44 ], [ -13, %47 ], [ 1, %33 ], [ -13, %18 ], [ -13, %38 ], [ -13, %15 ], !dbg !539
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6, !dbg !598
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6, !dbg !598
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6, !dbg !598
  ret i32 %51, !dbg !598
}

declare !dbg !599 i32 @mdb_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @database_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 !dbg !600 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca %struct.MDB_val, align 8
  %10 = alloca %struct.MDB_val, align 8
  %11 = alloca %struct.ybin_s, align 8
  %12 = alloca %struct.ybin_s, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !609, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata ptr %1, metadata !610, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata ptr %2, metadata !611, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata ptr %3, metadata !612, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata ptr %4, metadata !613, metadata !DIExpression()), !dbg !629
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6, !dbg !630
  call void @llvm.dbg.value(metadata ptr %1, metadata !615, metadata !DIExpression()), !dbg !629
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6, !dbg !631
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6, !dbg !632
  call void @llvm.dbg.declare(metadata ptr %9, metadata !620, metadata !DIExpression()), !dbg !633
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6, !dbg !632
  call void @llvm.dbg.declare(metadata ptr %10, metadata !621, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i32 1, metadata !623, metadata !DIExpression()), !dbg !629
  %13 = icmp eq ptr %1, null, !dbg !635
  br i1 %13, label %14, label %23, !dbg !637

14:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %0, metadata !287, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.value(metadata i32 1, metadata !288, metadata !DIExpression()), !dbg !638
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6, !dbg !640
  call void @llvm.dbg.value(metadata i32 0, metadata !290, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.value(metadata i32 131072, metadata !290, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.value(metadata ptr %6, metadata !289, metadata !DIExpression(DW_OP_deref)), !dbg !638
  %15 = call i32 @mdb_txn_begin(ptr noundef %0, ptr noundef null, i32 noundef 131072, ptr noundef nonnull %6) #6, !dbg !641
  call void @llvm.dbg.value(metadata i32 %15, metadata !291, metadata !DIExpression()), !dbg !638
  %16 = icmp eq i32 %15, 0, !dbg !642
  br i1 %16, label %20, label %17, !dbg !643

17:                                               ; preds = %14
  %18 = call ptr @mdb_strerror(i32 noundef %15) #6, !dbg !644
  %19 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 65, ptr noundef nonnull @__FUNCTION__.database_transaction_start, ptr noundef nonnull @.str.10, ptr noundef %18) #6, !dbg !644
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6, !dbg !645
  call void @llvm.dbg.value(metadata ptr null, metadata !615, metadata !DIExpression()), !dbg !629
  br label %67, !dbg !646

20:                                               ; preds = %14
  %21 = load ptr, ptr %6, align 8, !dbg !647, !tbaa !188
  call void @llvm.dbg.value(metadata ptr %21, metadata !289, metadata !DIExpression()), !dbg !638
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6, !dbg !645
  call void @llvm.dbg.value(metadata ptr %21, metadata !615, metadata !DIExpression()), !dbg !629
  %22 = icmp eq ptr %21, null, !dbg !648
  br i1 %22, label %67, label %23, !dbg !646

23:                                               ; preds = %20, %5
  %24 = phi ptr [ %21, %20 ], [ %1, %5 ], !dbg !629
  call void @llvm.dbg.value(metadata ptr %24, metadata !615, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata ptr %7, metadata !614, metadata !DIExpression(DW_OP_deref)), !dbg !629
  %25 = call i32 @mdb_dbi_open(ptr noundef nonnull %24, ptr noundef %2, i32 noundef 0, ptr noundef nonnull %7) #6, !dbg !649
  call void @llvm.dbg.value(metadata i32 %25, metadata !622, metadata !DIExpression()), !dbg !629
  %26 = icmp eq i32 %25, 0, !dbg !650
  br i1 %26, label %30, label %27, !dbg !652

27:                                               ; preds = %23
  %28 = call ptr @mdb_strerror(i32 noundef %25) #6, !dbg !653
  %29 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @__FUNCTION__.database_list, ptr noundef nonnull @.str.12, ptr noundef %28) #6, !dbg !653
  call void @llvm.dbg.value(metadata i32 -13, metadata !623, metadata !DIExpression()), !dbg !629
  br label %64, !dbg !655

30:                                               ; preds = %23
  %31 = load i32, ptr %7, align 4, !dbg !656, !tbaa !417
  call void @llvm.dbg.value(metadata i32 %31, metadata !614, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata ptr %8, metadata !616, metadata !DIExpression(DW_OP_deref)), !dbg !629
  %32 = call i32 @mdb_cursor_open(ptr noundef nonnull %24, i32 noundef %31, ptr noundef nonnull %8) #6, !dbg !657
  call void @llvm.dbg.value(metadata i32 %32, metadata !622, metadata !DIExpression()), !dbg !629
  %33 = icmp eq i32 %32, 0, !dbg !658
  br i1 %33, label %34, label %39, !dbg !660

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.MDB_val, ptr %9, i64 0, i32 1
  %36 = getelementptr inbounds %struct.MDB_val, ptr %10, i64 0, i32 1
  %37 = getelementptr inbounds { ptr, i64 }, ptr %11, i64 0, i32 1
  %38 = getelementptr inbounds { ptr, i64 }, ptr %12, i64 0, i32 1
  br label %42, !dbg !661

39:                                               ; preds = %30
  %40 = call ptr @mdb_strerror(i32 noundef %32) #6, !dbg !662
  %41 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 243, ptr noundef nonnull @__FUNCTION__.database_list, ptr noundef nonnull @.str.16, ptr noundef %40) #6, !dbg !662
  call void @llvm.dbg.value(metadata i32 -13, metadata !623, metadata !DIExpression()), !dbg !629
  br label %61, !dbg !664

42:                                               ; preds = %34, %46
  %43 = load ptr, ptr %8, align 8, !dbg !665, !tbaa !188
  call void @llvm.dbg.value(metadata ptr %43, metadata !616, metadata !DIExpression()), !dbg !629
  %44 = call i32 @mdb_cursor_get(ptr noundef %43, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef 8) #6, !dbg !666
  call void @llvm.dbg.value(metadata i32 %44, metadata !622, metadata !DIExpression()), !dbg !629
  %45 = icmp eq i32 %44, 0, !dbg !667
  br i1 %45, label %46, label %59, !dbg !661

46:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #6, !dbg !668
  call void @llvm.dbg.declare(metadata ptr %11, metadata !624, metadata !DIExpression()), !dbg !669
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #6, !dbg !668
  call void @llvm.dbg.declare(metadata ptr %12, metadata !626, metadata !DIExpression()), !dbg !670
  %47 = load ptr, ptr %35, align 8, !dbg !671, !tbaa !407
  %48 = load i64, ptr %9, align 8, !dbg !672, !tbaa !402
  %49 = call ptr @ybin_set(ptr noundef nonnull %11, ptr noundef %47, i64 noundef %48) #6, !dbg !673
  %50 = load ptr, ptr %36, align 8, !dbg !674, !tbaa !407
  %51 = load i64, ptr %10, align 8, !dbg !675, !tbaa !402
  %52 = call ptr @ybin_set(ptr noundef nonnull %12, ptr noundef %50, i64 noundef %51) #6, !dbg !676
  %53 = load ptr, ptr %11, align 8, !dbg !677
  %54 = load i64, ptr %37, align 8, !dbg !677
  %55 = load ptr, ptr %12, align 8, !dbg !677
  %56 = load i64, ptr %38, align 8, !dbg !677
  %57 = call i32 %3(ptr noundef %4, ptr %53, i64 %54, ptr %55, i64 %56) #6, !dbg !677
  %58 = icmp eq i32 %57, 1, !dbg !679
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #6, !dbg !680
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #6, !dbg !680
  br i1 %58, label %42, label %59

59:                                               ; preds = %46, %42
  %60 = load ptr, ptr %8, align 8, !dbg !681, !tbaa !188
  call void @llvm.dbg.value(metadata ptr %60, metadata !616, metadata !DIExpression()), !dbg !629
  call void @mdb_cursor_close(ptr noundef %60) #6, !dbg !682
  br label %61, !dbg !682

61:                                               ; preds = %59, %39
  %62 = phi i32 [ -13, %39 ], [ 1, %59 ], !dbg !629
  call void @llvm.dbg.value(metadata i32 %62, metadata !623, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.label(metadata !627), !dbg !683
  %63 = load i32, ptr %7, align 4, !dbg !684, !tbaa !417
  call void @llvm.dbg.value(metadata i32 %63, metadata !614, metadata !DIExpression()), !dbg !629
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %63) #6, !dbg !685
  br label %64, !dbg !685

64:                                               ; preds = %61, %27
  %65 = phi i32 [ -13, %27 ], [ %62, %61 ], !dbg !629
  call void @llvm.dbg.value(metadata i32 %65, metadata !623, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.label(metadata !628), !dbg !686
  br i1 %13, label %66, label %67, !dbg !687

66:                                               ; preds = %64
  call void @llvm.dbg.value(metadata ptr %24, metadata !335, metadata !DIExpression()), !dbg !688
  call void @mdb_txn_abort(ptr noundef %24) #6, !dbg !691
  br label %67, !dbg !692

67:                                               ; preds = %17, %64, %66, %20
  %68 = phi i32 [ -13, %20 ], [ %65, %66 ], [ %65, %64 ], [ -13, %17 ], !dbg !629
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6, !dbg !693
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6, !dbg !693
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6, !dbg !693
  ret i32 %68, !dbg !693
}

declare !dbg !694 i32 @mdb_cursor_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !698 i32 @mdb_cursor_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !702 ptr @ybin_set(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !705 void @mdb_cursor_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @database_drop(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !708 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !712, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata ptr %1, metadata !713, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata ptr %2, metadata !714, metadata !DIExpression()), !dbg !720
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6, !dbg !721
  call void @llvm.dbg.value(metadata ptr %1, metadata !716, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i32 1, metadata !718, metadata !DIExpression()), !dbg !720
  %6 = icmp eq ptr %1, null, !dbg !722
  br i1 %6, label %7, label %16, !dbg !724

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !287, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32 0, metadata !288, metadata !DIExpression()), !dbg !725
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6, !dbg !727
  call void @llvm.dbg.value(metadata i32 0, metadata !290, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32 0, metadata !290, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %4, metadata !289, metadata !DIExpression(DW_OP_deref)), !dbg !725
  %8 = call i32 @mdb_txn_begin(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4) #6, !dbg !728
  call void @llvm.dbg.value(metadata i32 %8, metadata !291, metadata !DIExpression()), !dbg !725
  %9 = icmp eq i32 %8, 0, !dbg !729
  br i1 %9, label %13, label %10, !dbg !730

10:                                               ; preds = %7
  %11 = call ptr @mdb_strerror(i32 noundef %8) #6, !dbg !731
  %12 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 65, ptr noundef nonnull @__FUNCTION__.database_transaction_start, ptr noundef nonnull @.str.10, ptr noundef %11) #6, !dbg !731
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6, !dbg !732
  call void @llvm.dbg.value(metadata ptr null, metadata !716, metadata !DIExpression()), !dbg !720
  br label %42, !dbg !733

13:                                               ; preds = %7
  %14 = load ptr, ptr %4, align 8, !dbg !734, !tbaa !188
  call void @llvm.dbg.value(metadata ptr %14, metadata !289, metadata !DIExpression()), !dbg !725
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6, !dbg !732
  call void @llvm.dbg.value(metadata ptr %14, metadata !716, metadata !DIExpression()), !dbg !720
  %15 = icmp eq ptr %14, null, !dbg !735
  br i1 %15, label %42, label %16, !dbg !733

16:                                               ; preds = %13, %3
  %17 = phi ptr [ %14, %13 ], [ %1, %3 ], !dbg !720
  call void @llvm.dbg.value(metadata ptr %17, metadata !716, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata ptr %5, metadata !715, metadata !DIExpression(DW_OP_deref)), !dbg !720
  %18 = call i32 @mdb_dbi_open(ptr noundef nonnull %17, ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #6, !dbg !736
  call void @llvm.dbg.value(metadata i32 %18, metadata !717, metadata !DIExpression()), !dbg !720
  %19 = icmp eq i32 %18, 0, !dbg !737
  br i1 %19, label %23, label %20, !dbg !739

20:                                               ; preds = %16
  %21 = call ptr @mdb_strerror(i32 noundef %18) #6, !dbg !740
  %22 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 281, ptr noundef nonnull @__FUNCTION__.database_drop, ptr noundef nonnull @.str.12, ptr noundef %21) #6, !dbg !740
  call void @llvm.dbg.value(metadata i32 -13, metadata !718, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.label(metadata !719), !dbg !742
  br label %40, !dbg !743

23:                                               ; preds = %16
  %24 = load i32, ptr %5, align 4, !dbg !745, !tbaa !417
  call void @llvm.dbg.value(metadata i32 %24, metadata !715, metadata !DIExpression()), !dbg !720
  %25 = call i32 @mdb_drop(ptr noundef nonnull %17, i32 noundef %24, i32 noundef 1) #6, !dbg !746
  call void @llvm.dbg.value(metadata i32 %25, metadata !717, metadata !DIExpression()), !dbg !720
  %26 = icmp eq i32 %25, 0, !dbg !747
  br i1 %26, label %31, label %27, !dbg !749

27:                                               ; preds = %23
  %28 = call ptr @mdb_strerror(i32 noundef %25) #6, !dbg !750
  %29 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 288, ptr noundef nonnull @__FUNCTION__.database_drop, ptr noundef nonnull @.str.17, ptr noundef %28) #6, !dbg !750
  call void @llvm.dbg.value(metadata i32 -13, metadata !718, metadata !DIExpression()), !dbg !720
  %30 = load i32, ptr %5, align 4, !dbg !752, !tbaa !417
  call void @llvm.dbg.value(metadata i32 %30, metadata !715, metadata !DIExpression()), !dbg !720
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %30) #6, !dbg !753
  call void @llvm.dbg.label(metadata !719), !dbg !742
  br label %40, !dbg !743

31:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 1, metadata !718, metadata !DIExpression()), !dbg !720
  %32 = load i32, ptr %5, align 4, !dbg !752, !tbaa !417
  call void @llvm.dbg.value(metadata i32 %32, metadata !715, metadata !DIExpression()), !dbg !720
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %32) #6, !dbg !753
  call void @llvm.dbg.label(metadata !719), !dbg !742
  %33 = and i1 %6, %26, !dbg !743
  br i1 %33, label %34, label %42, !dbg !743

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata ptr %17, metadata !317, metadata !DIExpression()), !dbg !754
  %35 = call i32 @mdb_txn_commit(ptr noundef nonnull %17) #6, !dbg !756
  call void @llvm.dbg.value(metadata i32 %35, metadata !318, metadata !DIExpression()), !dbg !754
  %36 = icmp eq i32 %35, 0, !dbg !757
  br i1 %36, label %42, label %37, !dbg !758

37:                                               ; preds = %34
  %38 = call ptr @mdb_strerror(i32 noundef %35) #6, !dbg !759
  %39 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 77, ptr noundef nonnull @__FUNCTION__.database_transaction_commit, ptr noundef nonnull @.str.11, ptr noundef %38) #6, !dbg !759
  br label %42, !dbg !760

40:                                               ; preds = %27, %20
  br i1 %6, label %41, label %42, !dbg !761

41:                                               ; preds = %40
  call void @llvm.dbg.value(metadata ptr %17, metadata !335, metadata !DIExpression()), !dbg !763
  call void @mdb_txn_abort(ptr noundef nonnull %17) #6, !dbg !765
  br label %42, !dbg !766

42:                                               ; preds = %31, %34, %37, %10, %40, %41, %13
  %43 = phi i32 [ -13, %13 ], [ -13, %37 ], [ -13, %41 ], [ -13, %40 ], [ -13, %10 ], [ 1, %34 ], [ 1, %31 ], !dbg !720
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6, !dbg !767
  ret i32 %43, !dbg !767
}

declare !dbg !768 i32 @mdb_drop(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!111}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 8, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "database.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "00058a6d5c3cfab231afd3ed67f1b000")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 11)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 8, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 112, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 14)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 8, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 15)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 12, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 38)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 34)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 32)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 28)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 43)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 17)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 120, elements: !16)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 16)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !45, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 216, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 27)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 35)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 224, elements: !36)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !65, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 104, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 13)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 37)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 39)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !75, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !75, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !11)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !20, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !9, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 243, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 40)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !9, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 288, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 30)
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, retainedTypes: !149, globals: !151, splitDebugInlining: false, nameTableKind: None)
!112 = !{!113, !123, !128}
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !114, line: 267, baseType: !115, size: 32, elements: !116)
!114 = !DIFile(filename: "../../lib/ylib/ylog.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!115 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!116 = !{!117, !118, !119, !120, !121, !122}
!117 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!118 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!119 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!120 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!121 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!122 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !124, line: 45, baseType: !115, size: 32, elements: !125)
!124 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!125 = !{!126, !127}
!126 = !DIEnumerator(name: "YFALSE", value: 0)
!127 = !DIEnumerator(name: "YTRUE", value: 1)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MDB_cursor_op", file: !129, line: 321, baseType: !115, size: 32, elements: !130)
!129 = !DIFile(filename: "../../lib/lmdb/lmdb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9ff9d4834608bdc966449cf81c779c6a")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!131 = !DIEnumerator(name: "MDB_FIRST", value: 0)
!132 = !DIEnumerator(name: "MDB_FIRST_DUP", value: 1)
!133 = !DIEnumerator(name: "MDB_GET_BOTH", value: 2)
!134 = !DIEnumerator(name: "MDB_GET_BOTH_RANGE", value: 3)
!135 = !DIEnumerator(name: "MDB_GET_CURRENT", value: 4)
!136 = !DIEnumerator(name: "MDB_GET_MULTIPLE", value: 5)
!137 = !DIEnumerator(name: "MDB_LAST", value: 6)
!138 = !DIEnumerator(name: "MDB_LAST_DUP", value: 7)
!139 = !DIEnumerator(name: "MDB_NEXT", value: 8)
!140 = !DIEnumerator(name: "MDB_NEXT_DUP", value: 9)
!141 = !DIEnumerator(name: "MDB_NEXT_MULTIPLE", value: 10)
!142 = !DIEnumerator(name: "MDB_NEXT_NODUP", value: 11)
!143 = !DIEnumerator(name: "MDB_PREV", value: 12)
!144 = !DIEnumerator(name: "MDB_PREV_DUP", value: 13)
!145 = !DIEnumerator(name: "MDB_PREV_NODUP", value: 14)
!146 = !DIEnumerator(name: "MDB_SET", value: 15)
!147 = !DIEnumerator(name: "MDB_SET_KEY", value: 16)
!148 = !DIEnumerator(name: "MDB_SET_RANGE", value: 17)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!151 = !{!0, !7, !13, !18, !23, !28, !33, !38, !43, !48, !51, !56, !58, !63, !68, !71, !73, !78, !83, !88, !90, !92, !95, !97, !99, !104, !106}
!152 = !{i32 7, !"Dwarf Version", i32 5}
!153 = !{i32 2, !"Debug Info Version", i32 3}
!154 = !{i32 1, !"wchar_size", i32 4}
!155 = !{i32 8, !"PIC Level", i32 2}
!156 = !{i32 7, !"PIE Level", i32 2}
!157 = !{i32 7, !"uwtable", i32 2}
!158 = !{!"clang version 16.0.0"}
!159 = distinct !DISubprogram(name: "database_open", scope: !2, file: !2, line: 4, type: !160, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !169)
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !165, !166, !115, !115}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_env", file: !129, line: 197, baseType: !164)
!164 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_env", file: !129, line: 197, flags: DIFlagFwdDecl)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !167, line: 46, baseType: !168)
!167 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!168 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!169 = !{!170, !171, !172, !173, !174, !175}
!170 = !DILocalVariable(name: "path", arg: 1, scope: !159, file: !2, line: 4, type: !165)
!171 = !DILocalVariable(name: "mapsize", arg: 2, scope: !159, file: !2, line: 4, type: !166)
!172 = !DILocalVariable(name: "nbr_readers", arg: 3, scope: !159, file: !2, line: 4, type: !115)
!173 = !DILocalVariable(name: "nbr_dbs", arg: 4, scope: !159, file: !2, line: 4, type: !115)
!174 = !DILocalVariable(name: "env", scope: !159, file: !2, line: 5, type: !162)
!175 = !DILocalVariable(name: "rc", scope: !159, file: !2, line: 6, type: !176)
!176 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!177 = !DILocation(line: 0, scope: !159)
!178 = !DILocation(line: 5, column: 2, scope: !159)
!179 = !DILocation(line: 8, column: 2, scope: !159)
!180 = !DILocation(line: 10, column: 7, scope: !159)
!181 = !DILocation(line: 11, column: 6, scope: !182)
!182 = distinct !DILexicalBlock(scope: !159, file: !2, line: 11, column: 6)
!183 = !DILocation(line: 11, column: 6, scope: !159)
!184 = !DILocation(line: 12, column: 3, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !2, line: 11, column: 10)
!186 = !DILocation(line: 13, column: 3, scope: !185)
!187 = !DILocation(line: 16, column: 27, scope: !159)
!188 = !{!189, !189, i64 0}
!189 = !{!"any pointer", !190, i64 0}
!190 = !{!"omnipotent char", !191, i64 0}
!191 = !{!"Simple C/C++ TBAA"}
!192 = !DILocation(line: 16, column: 7, scope: !159)
!193 = !DILocation(line: 17, column: 6, scope: !194)
!194 = distinct !DILexicalBlock(scope: !159, file: !2, line: 17, column: 6)
!195 = !DILocation(line: 17, column: 6, scope: !159)
!196 = !DILocation(line: 18, column: 3, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !2, line: 17, column: 10)
!198 = !DILocation(line: 19, column: 3, scope: !197)
!199 = !DILocation(line: 22, column: 18, scope: !200)
!200 = distinct !DILexicalBlock(scope: !159, file: !2, line: 22, column: 6)
!201 = !DILocation(line: 22, column: 6, scope: !159)
!202 = !DILocation(line: 23, column: 31, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !2, line: 22, column: 25)
!204 = !DILocation(line: 23, column: 8, scope: !203)
!205 = !DILocation(line: 24, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !203, file: !2, line: 24, column: 7)
!207 = !DILocation(line: 24, column: 7, scope: !203)
!208 = !DILocation(line: 25, column: 4, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !2, line: 24, column: 11)
!210 = !DILocation(line: 26, column: 4, scope: !209)
!211 = !DILocation(line: 30, column: 14, scope: !212)
!212 = distinct !DILexicalBlock(scope: !159, file: !2, line: 30, column: 6)
!213 = !DILocation(line: 30, column: 6, scope: !159)
!214 = !DILocation(line: 31, column: 27, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !2, line: 30, column: 19)
!216 = !DILocation(line: 31, column: 8, scope: !215)
!217 = !DILocation(line: 32, column: 7, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !2, line: 32, column: 7)
!219 = !DILocation(line: 32, column: 7, scope: !215)
!220 = !DILocation(line: 33, column: 4, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !2, line: 32, column: 11)
!222 = !DILocation(line: 34, column: 4, scope: !221)
!223 = !DILocation(line: 38, column: 20, scope: !159)
!224 = !DILocation(line: 38, column: 7, scope: !159)
!225 = !DILocation(line: 39, column: 6, scope: !226)
!226 = distinct !DILexicalBlock(scope: !159, file: !2, line: 39, column: 6)
!227 = !DILocation(line: 39, column: 6, scope: !159)
!228 = !DILocation(line: 40, column: 3, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !2, line: 39, column: 10)
!230 = !DILocation(line: 41, column: 17, scope: !229)
!231 = !DILocation(line: 41, column: 3, scope: !229)
!232 = !DILocation(line: 42, column: 3, scope: !229)
!233 = !DILocation(line: 44, column: 2, scope: !159)
!234 = !DILocation(line: 45, column: 10, scope: !159)
!235 = !DILocation(line: 45, column: 2, scope: !159)
!236 = !DILocation(line: 46, column: 1, scope: !159)
!237 = !DISubprogram(name: "ylog_write", scope: !114, file: !114, line: 385, type: !238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!238 = !DISubroutineType(types: !239)
!239 = !{!240, !241, !165, !176, !165, !165, null}
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !124, line: 52, baseType: !123)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_priority_t", file: !114, line: 278, baseType: !113)
!242 = !{}
!243 = !DISubprogram(name: "mdb_env_create", scope: !129, file: !129, line: 445, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!244 = !DISubroutineType(types: !245)
!245 = !{!176, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!247 = !DISubprogram(name: "mdb_strerror", scope: !129, file: !129, line: 432, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !176}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!251 = !DISubprogram(name: "mdb_env_set_mapsize", scope: !129, file: !129, line: 661, type: !252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!252 = !DISubroutineType(types: !253)
!253 = !{!176, !162, !166}
!254 = !DISubprogram(name: "mdb_env_set_maxreaders", scope: !129, file: !129, line: 680, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!255 = !DISubroutineType(types: !256)
!256 = !{!176, !162, !115}
!257 = !DISubprogram(name: "mdb_env_set_maxdbs", scope: !129, file: !129, line: 708, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!258 = !DISubroutineType(types: !259)
!259 = !{!176, !162, !260}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_dbi", file: !129, line: 207, baseType: !115)
!261 = !DISubprogram(name: "mdb_env_open", scope: !129, file: !129, line: 532, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!262 = !DISubroutineType(types: !263)
!263 = !{!176, !162, !165, !115, !264}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "mdb_mode_t", file: !129, line: 144, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !266, line: 69, baseType: !267)
!266 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !268, line: 150, baseType: !115)
!268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!269 = !DISubprogram(name: "mdb_env_close", scope: !129, file: !129, line: 600, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !162}
!272 = distinct !DISubprogram(name: "database_close", scope: !2, file: !2, line: 49, type: !270, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !273)
!273 = !{!274}
!274 = !DILocalVariable(name: "env", arg: 1, scope: !272, file: !2, line: 49, type: !162)
!275 = !DILocation(line: 0, scope: !272)
!276 = !DILocation(line: 50, column: 2, scope: !272)
!277 = !DILocation(line: 51, column: 2, scope: !272)
!278 = !DILocation(line: 52, column: 2, scope: !272)
!279 = !DILocation(line: 53, column: 1, scope: !272)
!280 = distinct !DISubprogram(name: "database_transaction_start", scope: !2, file: !2, line: 56, type: !281, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !286)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !162, !240}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_txn", file: !129, line: 204, baseType: !285)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_txn", file: !129, line: 204, flags: DIFlagFwdDecl)
!286 = !{!287, !288, !289, !290, !291}
!287 = !DILocalVariable(name: "env", arg: 1, scope: !280, file: !2, line: 56, type: !162)
!288 = !DILocalVariable(name: "readonly", arg: 2, scope: !280, file: !2, line: 56, type: !240)
!289 = !DILocalVariable(name: "txn", scope: !280, file: !2, line: 57, type: !283)
!290 = !DILocalVariable(name: "flags", scope: !280, file: !2, line: 58, type: !115)
!291 = !DILocalVariable(name: "rc", scope: !280, file: !2, line: 59, type: !176)
!292 = !DILocation(line: 0, scope: !280)
!293 = !DILocation(line: 57, column: 2, scope: !280)
!294 = !DILocation(line: 61, column: 6, scope: !295)
!295 = distinct !DILexicalBlock(scope: !280, file: !2, line: 61, column: 6)
!296 = !DILocation(line: 61, column: 6, scope: !280)
!297 = !DILocation(line: 63, column: 7, scope: !280)
!298 = !DILocation(line: 64, column: 6, scope: !299)
!299 = distinct !DILexicalBlock(scope: !280, file: !2, line: 64, column: 6)
!300 = !DILocation(line: 64, column: 6, scope: !280)
!301 = !DILocation(line: 65, column: 3, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !2, line: 64, column: 10)
!303 = !DILocation(line: 66, column: 3, scope: !302)
!304 = !DILocation(line: 68, column: 10, scope: !280)
!305 = !DILocation(line: 68, column: 2, scope: !280)
!306 = !DILocation(line: 69, column: 1, scope: !280)
!307 = !DISubprogram(name: "mdb_txn_begin", scope: !129, file: !129, line: 743, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!308 = !DISubroutineType(types: !309)
!309 = !{!176, !162, !283, !115, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!311 = distinct !DISubprogram(name: "database_transaction_commit", scope: !2, file: !2, line: 72, type: !312, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !316)
!312 = !DISubroutineType(types: !313)
!313 = !{!314, !283}
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !315, line: 23, baseType: !176)
!315 = !DIFile(filename: "../../lib/ylib/yerror.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!316 = !{!317, !318}
!317 = !DILocalVariable(name: "transaction", arg: 1, scope: !311, file: !2, line: 72, type: !283)
!318 = !DILocalVariable(name: "rc", scope: !311, file: !2, line: 73, type: !176)
!319 = !DILocation(line: 0, scope: !311)
!320 = !DILocation(line: 75, column: 7, scope: !311)
!321 = !DILocation(line: 76, column: 6, scope: !322)
!322 = distinct !DILexicalBlock(scope: !311, file: !2, line: 76, column: 6)
!323 = !DILocation(line: 76, column: 6, scope: !311)
!324 = !DILocation(line: 77, column: 3, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !2, line: 76, column: 10)
!326 = !DILocation(line: 78, column: 3, scope: !325)
!327 = !DILocation(line: 81, column: 1, scope: !311)
!328 = !DISubprogram(name: "mdb_txn_commit", scope: !129, file: !129, line: 761, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!329 = !DISubroutineType(types: !330)
!330 = !{!176, !283}
!331 = distinct !DISubprogram(name: "database_transaction_rollback", scope: !2, file: !2, line: 84, type: !332, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !334)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !283}
!334 = !{!335}
!335 = !DILocalVariable(name: "transaction", arg: 1, scope: !331, file: !2, line: 84, type: !283)
!336 = !DILocation(line: 0, scope: !331)
!337 = !DILocation(line: 85, column: 2, scope: !331)
!338 = !DILocation(line: 86, column: 1, scope: !331)
!339 = !DISubprogram(name: "mdb_txn_abort", scope: !129, file: !129, line: 771, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!340 = distinct !DISubprogram(name: "database_put", scope: !2, file: !2, line: 89, type: !341, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !349)
!341 = !DISubroutineType(types: !342)
!342 = !{!314, !162, !283, !240, !165, !343, !343}
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !344, line: 33, baseType: !345)
!344 = !DIFile(filename: "../../lib/ylib/ybin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "7abd7d5e6afd31e8416cab6f0a6bf3b3")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !344, line: 27, size: 128, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !345, file: !344, line: 28, baseType: !150, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !345, file: !344, line: 29, baseType: !166, size: 64, offset: 64)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !364, !365, !366, !367, !368}
!350 = !DILocalVariable(name: "env", arg: 1, scope: !340, file: !2, line: 89, type: !162)
!351 = !DILocalVariable(name: "transaction", arg: 2, scope: !340, file: !2, line: 89, type: !283)
!352 = !DILocalVariable(name: "create_only", arg: 3, scope: !340, file: !2, line: 89, type: !240)
!353 = !DILocalVariable(name: "name", arg: 4, scope: !340, file: !2, line: 89, type: !165)
!354 = !DILocalVariable(name: "key", arg: 5, scope: !340, file: !2, line: 89, type: !343)
!355 = !DILocalVariable(name: "data", arg: 6, scope: !340, file: !2, line: 89, type: !343)
!356 = !DILocalVariable(name: "dbi", scope: !340, file: !2, line: 90, type: !260)
!357 = !DILocalVariable(name: "txn", scope: !340, file: !2, line: 91, type: !283)
!358 = !DILocalVariable(name: "db_key", scope: !340, file: !2, line: 92, type: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_val", file: !129, line: 226, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_val", file: !129, line: 223, size: 128, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mv_size", scope: !360, file: !129, line: 224, baseType: !166, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "mv_data", scope: !360, file: !129, line: 225, baseType: !150, size: 64, offset: 64)
!364 = !DILocalVariable(name: "db_data", scope: !340, file: !2, line: 92, type: !359)
!365 = !DILocalVariable(name: "rc", scope: !340, file: !2, line: 93, type: !176)
!366 = !DILocalVariable(name: "flags", scope: !340, file: !2, line: 94, type: !115)
!367 = !DILocalVariable(name: "retval", scope: !340, file: !2, line: 95, type: !314)
!368 = !DILabel(scope: !340, name: "end_of_process", file: !2, line: 123)
!369 = !DILocation(line: 0, scope: !340)
!370 = !DILocation(line: 89, column: 115, scope: !340)
!371 = !DILocation(line: 90, column: 2, scope: !340)
!372 = !DILocation(line: 92, column: 2, scope: !340)
!373 = !DILocation(line: 92, column: 10, scope: !340)
!374 = !DILocation(line: 92, column: 18, scope: !340)
!375 = !DILocation(line: 98, column: 6, scope: !376)
!376 = distinct !DILexicalBlock(scope: !340, file: !2, line: 98, column: 6)
!377 = !DILocation(line: 98, column: 6, scope: !340)
!378 = !DILocation(line: 101, column: 10, scope: !379)
!379 = distinct !DILexicalBlock(scope: !340, file: !2, line: 101, column: 6)
!380 = !DILocation(line: 101, column: 18, scope: !379)
!381 = !DILocation(line: 0, scope: !280, inlinedAt: !382)
!382 = distinct !DILocation(line: 101, column: 28, scope: !379)
!383 = !DILocation(line: 57, column: 2, scope: !280, inlinedAt: !382)
!384 = !DILocation(line: 63, column: 7, scope: !280, inlinedAt: !382)
!385 = !DILocation(line: 64, column: 6, scope: !299, inlinedAt: !382)
!386 = !DILocation(line: 64, column: 6, scope: !280, inlinedAt: !382)
!387 = !DILocation(line: 65, column: 3, scope: !302, inlinedAt: !382)
!388 = !DILocation(line: 69, column: 1, scope: !280, inlinedAt: !382)
!389 = !DILocation(line: 101, column: 6, scope: !340)
!390 = !DILocation(line: 68, column: 10, scope: !280, inlinedAt: !382)
!391 = !DILocation(line: 101, column: 69, scope: !379)
!392 = !DILocation(line: 104, column: 7, scope: !340)
!393 = !DILocation(line: 105, column: 6, scope: !394)
!394 = distinct !DILexicalBlock(scope: !340, file: !2, line: 105, column: 6)
!395 = !DILocation(line: 105, column: 6, scope: !340)
!396 = !DILocation(line: 106, column: 3, scope: !397)
!397 = distinct !DILexicalBlock(scope: !394, file: !2, line: 105, column: 10)
!398 = !DILocation(line: 123, column: 1, scope: !340)
!399 = !DILocation(line: 125, column: 24, scope: !400)
!400 = distinct !DILexicalBlock(scope: !340, file: !2, line: 125, column: 6)
!401 = !DILocation(line: 111, column: 17, scope: !340)
!402 = !{!403, !404, i64 0}
!403 = !{!"MDB_val", !404, i64 0, !189, i64 8}
!404 = !{!"long", !190, i64 0}
!405 = !DILocation(line: 112, column: 9, scope: !340)
!406 = !DILocation(line: 112, column: 17, scope: !340)
!407 = !{!403, !189, i64 8}
!408 = !DILocation(line: 113, column: 25, scope: !340)
!409 = !{!410, !404, i64 8}
!410 = !{!"ybin_s", !189, i64 0, !404, i64 8}
!411 = !DILocation(line: 113, column: 18, scope: !340)
!412 = !DILocation(line: 114, column: 25, scope: !340)
!413 = !{!410, !189, i64 0}
!414 = !DILocation(line: 114, column: 10, scope: !340)
!415 = !DILocation(line: 114, column: 18, scope: !340)
!416 = !DILocation(line: 116, column: 20, scope: !340)
!417 = !{!418, !418, i64 0}
!418 = !{!"int", !190, i64 0}
!419 = !DILocation(line: 116, column: 7, scope: !340)
!420 = !DILocation(line: 117, column: 6, scope: !421)
!421 = distinct !DILexicalBlock(scope: !340, file: !2, line: 117, column: 6)
!422 = !DILocation(line: 117, column: 6, scope: !340)
!423 = !DILocation(line: 118, column: 3, scope: !424)
!424 = distinct !DILexicalBlock(scope: !421, file: !2, line: 117, column: 10)
!425 = !DILocation(line: 122, column: 21, scope: !340)
!426 = !DILocation(line: 122, column: 2, scope: !340)
!427 = !DILocation(line: 0, scope: !311, inlinedAt: !428)
!428 = distinct !DILocation(line: 126, column: 6, scope: !400)
!429 = !DILocation(line: 75, column: 7, scope: !311, inlinedAt: !428)
!430 = !DILocation(line: 76, column: 6, scope: !322, inlinedAt: !428)
!431 = !DILocation(line: 76, column: 6, scope: !311, inlinedAt: !428)
!432 = !DILocation(line: 77, column: 3, scope: !325, inlinedAt: !428)
!433 = !DILocation(line: 125, column: 6, scope: !340)
!434 = !DILocation(line: 128, column: 24, scope: !435)
!435 = distinct !DILexicalBlock(scope: !340, file: !2, line: 128, column: 6)
!436 = !DILocation(line: 0, scope: !331, inlinedAt: !437)
!437 = distinct !DILocation(line: 129, column: 3, scope: !435)
!438 = !DILocation(line: 85, column: 2, scope: !331, inlinedAt: !437)
!439 = !DILocation(line: 129, column: 3, scope: !435)
!440 = !DILocation(line: 131, column: 1, scope: !340)
!441 = !DISubprogram(name: "mdb_dbi_open", scope: !129, file: !129, line: 876, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!442 = !DISubroutineType(types: !443)
!443 = !{!176, !283, !165, !115, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!445 = !DISubprogram(name: "mdb_put", scope: !129, file: !129, line: 1068, type: !446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!446 = !DISubroutineType(types: !447)
!447 = !{!176, !283, !260, !448, !448, !115}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!449 = !DISubprogram(name: "mdb_dbi_close", scope: !129, file: !129, line: 901, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !162, !260}
!452 = distinct !DISubprogram(name: "database_del", scope: !2, file: !2, line: 134, type: !453, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{!314, !162, !283, !165, !343}
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463, !464, !465}
!456 = !DILocalVariable(name: "env", arg: 1, scope: !452, file: !2, line: 134, type: !162)
!457 = !DILocalVariable(name: "transaction", arg: 2, scope: !452, file: !2, line: 134, type: !283)
!458 = !DILocalVariable(name: "name", arg: 3, scope: !452, file: !2, line: 134, type: !165)
!459 = !DILocalVariable(name: "key", arg: 4, scope: !452, file: !2, line: 134, type: !343)
!460 = !DILocalVariable(name: "dbi", scope: !452, file: !2, line: 135, type: !260)
!461 = !DILocalVariable(name: "txn", scope: !452, file: !2, line: 136, type: !283)
!462 = !DILocalVariable(name: "db_key", scope: !452, file: !2, line: 137, type: !359)
!463 = !DILocalVariable(name: "rc", scope: !452, file: !2, line: 138, type: !176)
!464 = !DILocalVariable(name: "retval", scope: !452, file: !2, line: 139, type: !314)
!465 = !DILabel(scope: !452, name: "end_of_process", file: !2, line: 162)
!466 = !DILocation(line: 0, scope: !452)
!467 = !DILocation(line: 135, column: 2, scope: !452)
!468 = !DILocation(line: 137, column: 2, scope: !452)
!469 = !DILocation(line: 137, column: 10, scope: !452)
!470 = !DILocation(line: 142, column: 10, scope: !471)
!471 = distinct !DILexicalBlock(scope: !452, file: !2, line: 142, column: 6)
!472 = !DILocation(line: 142, column: 18, scope: !471)
!473 = !DILocation(line: 0, scope: !280, inlinedAt: !474)
!474 = distinct !DILocation(line: 142, column: 28, scope: !471)
!475 = !DILocation(line: 57, column: 2, scope: !280, inlinedAt: !474)
!476 = !DILocation(line: 63, column: 7, scope: !280, inlinedAt: !474)
!477 = !DILocation(line: 64, column: 6, scope: !299, inlinedAt: !474)
!478 = !DILocation(line: 64, column: 6, scope: !280, inlinedAt: !474)
!479 = !DILocation(line: 65, column: 3, scope: !302, inlinedAt: !474)
!480 = !DILocation(line: 69, column: 1, scope: !280, inlinedAt: !474)
!481 = !DILocation(line: 142, column: 6, scope: !452)
!482 = !DILocation(line: 68, column: 10, scope: !280, inlinedAt: !474)
!483 = !DILocation(line: 142, column: 69, scope: !471)
!484 = !DILocation(line: 145, column: 7, scope: !452)
!485 = !DILocation(line: 146, column: 6, scope: !486)
!486 = distinct !DILexicalBlock(scope: !452, file: !2, line: 146, column: 6)
!487 = !DILocation(line: 146, column: 6, scope: !452)
!488 = !DILocation(line: 147, column: 3, scope: !489)
!489 = distinct !DILexicalBlock(scope: !486, file: !2, line: 146, column: 10)
!490 = !DILocation(line: 162, column: 1, scope: !452)
!491 = !DILocation(line: 164, column: 24, scope: !492)
!492 = distinct !DILexicalBlock(scope: !452, file: !2, line: 164, column: 6)
!493 = !DILocation(line: 152, column: 17, scope: !452)
!494 = !DILocation(line: 153, column: 9, scope: !452)
!495 = !DILocation(line: 153, column: 17, scope: !452)
!496 = !DILocation(line: 155, column: 20, scope: !452)
!497 = !DILocation(line: 155, column: 7, scope: !452)
!498 = !DILocation(line: 156, column: 6, scope: !499)
!499 = distinct !DILexicalBlock(scope: !452, file: !2, line: 156, column: 6)
!500 = !DILocation(line: 156, column: 6, scope: !452)
!501 = !DILocation(line: 157, column: 3, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !2, line: 156, column: 10)
!503 = !DILocation(line: 161, column: 21, scope: !452)
!504 = !DILocation(line: 161, column: 2, scope: !452)
!505 = !DILocation(line: 0, scope: !311, inlinedAt: !506)
!506 = distinct !DILocation(line: 165, column: 6, scope: !492)
!507 = !DILocation(line: 75, column: 7, scope: !311, inlinedAt: !506)
!508 = !DILocation(line: 76, column: 6, scope: !322, inlinedAt: !506)
!509 = !DILocation(line: 76, column: 6, scope: !311, inlinedAt: !506)
!510 = !DILocation(line: 77, column: 3, scope: !325, inlinedAt: !506)
!511 = !DILocation(line: 164, column: 6, scope: !452)
!512 = !DILocation(line: 167, column: 24, scope: !513)
!513 = distinct !DILexicalBlock(scope: !452, file: !2, line: 167, column: 6)
!514 = !DILocation(line: 0, scope: !331, inlinedAt: !515)
!515 = distinct !DILocation(line: 168, column: 3, scope: !513)
!516 = !DILocation(line: 85, column: 2, scope: !331, inlinedAt: !515)
!517 = !DILocation(line: 168, column: 3, scope: !513)
!518 = !DILocation(line: 170, column: 1, scope: !452)
!519 = !DISubprogram(name: "mdb_del", scope: !129, file: !129, line: 1093, type: !520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!520 = !DISubroutineType(types: !521)
!521 = !{!176, !283, !260, !448, !448}
!522 = distinct !DISubprogram(name: "database_get", scope: !2, file: !2, line: 173, type: !523, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !526)
!523 = !DISubroutineType(types: !524)
!524 = !{!314, !162, !283, !165, !343, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!527 = !DILocalVariable(name: "env", arg: 1, scope: !522, file: !2, line: 173, type: !162)
!528 = !DILocalVariable(name: "transaction", arg: 2, scope: !522, file: !2, line: 173, type: !283)
!529 = !DILocalVariable(name: "name", arg: 3, scope: !522, file: !2, line: 173, type: !165)
!530 = !DILocalVariable(name: "key", arg: 4, scope: !522, file: !2, line: 173, type: !343)
!531 = !DILocalVariable(name: "data", arg: 5, scope: !522, file: !2, line: 173, type: !525)
!532 = !DILocalVariable(name: "dbi", scope: !522, file: !2, line: 174, type: !260)
!533 = !DILocalVariable(name: "txn", scope: !522, file: !2, line: 175, type: !283)
!534 = !DILocalVariable(name: "db_key", scope: !522, file: !2, line: 176, type: !359)
!535 = !DILocalVariable(name: "db_data", scope: !522, file: !2, line: 176, type: !359)
!536 = !DILocalVariable(name: "rc", scope: !522, file: !2, line: 177, type: !176)
!537 = !DILocalVariable(name: "retval", scope: !522, file: !2, line: 178, type: !314)
!538 = !DILabel(scope: !522, name: "end_of_process", file: !2, line: 198)
!539 = !DILocation(line: 0, scope: !522)
!540 = !DILocation(line: 174, column: 2, scope: !522)
!541 = !DILocation(line: 176, column: 2, scope: !522)
!542 = !DILocation(line: 176, column: 10, scope: !522)
!543 = !DILocation(line: 176, column: 18, scope: !522)
!544 = !DILocation(line: 181, column: 10, scope: !545)
!545 = distinct !DILexicalBlock(scope: !522, file: !2, line: 181, column: 6)
!546 = !DILocation(line: 181, column: 18, scope: !545)
!547 = !DILocation(line: 0, scope: !280, inlinedAt: !548)
!548 = distinct !DILocation(line: 181, column: 28, scope: !545)
!549 = !DILocation(line: 57, column: 2, scope: !280, inlinedAt: !548)
!550 = !DILocation(line: 63, column: 7, scope: !280, inlinedAt: !548)
!551 = !DILocation(line: 64, column: 6, scope: !299, inlinedAt: !548)
!552 = !DILocation(line: 64, column: 6, scope: !280, inlinedAt: !548)
!553 = !DILocation(line: 65, column: 3, scope: !302, inlinedAt: !548)
!554 = !DILocation(line: 69, column: 1, scope: !280, inlinedAt: !548)
!555 = !DILocation(line: 181, column: 6, scope: !522)
!556 = !DILocation(line: 68, column: 10, scope: !280, inlinedAt: !548)
!557 = !DILocation(line: 181, column: 68, scope: !545)
!558 = !DILocation(line: 184, column: 7, scope: !522)
!559 = !DILocation(line: 185, column: 6, scope: !560)
!560 = distinct !DILexicalBlock(scope: !522, file: !2, line: 185, column: 6)
!561 = !DILocation(line: 185, column: 6, scope: !522)
!562 = !DILocation(line: 191, column: 17, scope: !522)
!563 = !DILocation(line: 192, column: 9, scope: !522)
!564 = !DILocation(line: 192, column: 17, scope: !522)
!565 = !DILocation(line: 194, column: 20, scope: !522)
!566 = !DILocation(line: 194, column: 7, scope: !522)
!567 = !DILocation(line: 196, column: 6, scope: !522)
!568 = !DILocation(line: 0, scope: !331, inlinedAt: !569)
!569 = distinct !DILocation(line: 197, column: 3, scope: !570)
!570 = distinct !DILexicalBlock(scope: !522, file: !2, line: 196, column: 6)
!571 = !DILocation(line: 85, column: 2, scope: !331, inlinedAt: !569)
!572 = !DILocation(line: 197, column: 3, scope: !570)
!573 = !DILocation(line: 198, column: 1, scope: !522)
!574 = !DILocation(line: 200, column: 21, scope: !522)
!575 = !DILocation(line: 200, column: 2, scope: !522)
!576 = !DILocation(line: 202, column: 7, scope: !577)
!577 = distinct !DILexicalBlock(scope: !522, file: !2, line: 202, column: 6)
!578 = !DILocation(line: 202, column: 6, scope: !522)
!579 = !DILocation(line: 204, column: 23, scope: !580)
!580 = distinct !DILexicalBlock(scope: !577, file: !2, line: 202, column: 11)
!581 = !DILocation(line: 204, column: 9, scope: !580)
!582 = !DILocation(line: 204, column: 13, scope: !580)
!583 = !DILocation(line: 205, column: 24, scope: !580)
!584 = !DILocation(line: 205, column: 14, scope: !580)
!585 = !DILocation(line: 206, column: 3, scope: !580)
!586 = !DILocation(line: 186, column: 3, scope: !587)
!587 = distinct !DILexicalBlock(scope: !560, file: !2, line: 185, column: 10)
!588 = !DILocation(line: 210, column: 13, scope: !522)
!589 = !DILocation(line: 211, column: 6, scope: !522)
!590 = !DILocation(line: 213, column: 9, scope: !591)
!591 = distinct !DILexicalBlock(scope: !522, file: !2, line: 213, column: 6)
!592 = !DILocation(line: 213, column: 6, scope: !522)
!593 = !DILocation(line: 214, column: 3, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !2, line: 213, column: 26)
!595 = !DILocation(line: 215, column: 3, scope: !594)
!596 = !DILocation(line: 217, column: 2, scope: !522)
!597 = !DILocation(line: 218, column: 2, scope: !522)
!598 = !DILocation(line: 219, column: 1, scope: !522)
!599 = !DISubprogram(name: "mdb_get", scope: !129, file: !129, line: 1021, type: !520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!600 = distinct !DISubprogram(name: "database_list", scope: !2, file: !2, line: 222, type: !601, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !608)
!601 = !DISubroutineType(types: !602)
!602 = !{!314, !162, !283, !165, !603, !150}
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "database_callback", file: !604, line: 11, baseType: !605)
!604 = !DIFile(filename: "./database.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e933d92e866140a8ca260943c439739b")
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!314, !150, !343, !343}
!608 = !{!609, !610, !611, !612, !613, !614, !615, !616, !620, !621, !622, !623, !624, !626, !627, !628}
!609 = !DILocalVariable(name: "env", arg: 1, scope: !600, file: !2, line: 222, type: !162)
!610 = !DILocalVariable(name: "transaction", arg: 2, scope: !600, file: !2, line: 222, type: !283)
!611 = !DILocalVariable(name: "name", arg: 3, scope: !600, file: !2, line: 222, type: !165)
!612 = !DILocalVariable(name: "cb", arg: 4, scope: !600, file: !2, line: 222, type: !603)
!613 = !DILocalVariable(name: "cb_data", arg: 5, scope: !600, file: !2, line: 222, type: !150)
!614 = !DILocalVariable(name: "dbi", scope: !600, file: !2, line: 223, type: !260)
!615 = !DILocalVariable(name: "txn", scope: !600, file: !2, line: 224, type: !283)
!616 = !DILocalVariable(name: "cursor", scope: !600, file: !2, line: 225, type: !617)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_cursor", file: !129, line: 210, baseType: !619)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_cursor", file: !129, line: 210, flags: DIFlagFwdDecl)
!620 = !DILocalVariable(name: "db_key", scope: !600, file: !2, line: 226, type: !359)
!621 = !DILocalVariable(name: "db_data", scope: !600, file: !2, line: 226, type: !359)
!622 = !DILocalVariable(name: "rc", scope: !600, file: !2, line: 227, type: !176)
!623 = !DILocalVariable(name: "retval", scope: !600, file: !2, line: 228, type: !314)
!624 = !DILocalVariable(name: "key", scope: !625, file: !2, line: 249, type: !343)
!625 = distinct !DILexicalBlock(scope: !600, file: !2, line: 248, column: 74)
!626 = !DILocalVariable(name: "data", scope: !625, file: !2, line: 249, type: !343)
!627 = !DILabel(scope: !600, name: "end_of_process", file: !2, line: 258)
!628 = !DILabel(scope: !600, name: "failure", file: !2, line: 261)
!629 = !DILocation(line: 0, scope: !600)
!630 = !DILocation(line: 223, column: 2, scope: !600)
!631 = !DILocation(line: 225, column: 2, scope: !600)
!632 = !DILocation(line: 226, column: 2, scope: !600)
!633 = !DILocation(line: 226, column: 10, scope: !600)
!634 = !DILocation(line: 226, column: 18, scope: !600)
!635 = !DILocation(line: 231, column: 10, scope: !636)
!636 = distinct !DILexicalBlock(scope: !600, file: !2, line: 231, column: 6)
!637 = !DILocation(line: 231, column: 18, scope: !636)
!638 = !DILocation(line: 0, scope: !280, inlinedAt: !639)
!639 = distinct !DILocation(line: 231, column: 28, scope: !636)
!640 = !DILocation(line: 57, column: 2, scope: !280, inlinedAt: !639)
!641 = !DILocation(line: 63, column: 7, scope: !280, inlinedAt: !639)
!642 = !DILocation(line: 64, column: 6, scope: !299, inlinedAt: !639)
!643 = !DILocation(line: 64, column: 6, scope: !280, inlinedAt: !639)
!644 = !DILocation(line: 65, column: 3, scope: !302, inlinedAt: !639)
!645 = !DILocation(line: 69, column: 1, scope: !280, inlinedAt: !639)
!646 = !DILocation(line: 231, column: 6, scope: !600)
!647 = !DILocation(line: 68, column: 10, scope: !280, inlinedAt: !639)
!648 = !DILocation(line: 231, column: 68, scope: !636)
!649 = !DILocation(line: 234, column: 7, scope: !600)
!650 = !DILocation(line: 235, column: 6, scope: !651)
!651 = distinct !DILexicalBlock(scope: !600, file: !2, line: 235, column: 6)
!652 = !DILocation(line: 235, column: 6, scope: !600)
!653 = !DILocation(line: 236, column: 3, scope: !654)
!654 = distinct !DILexicalBlock(scope: !651, file: !2, line: 235, column: 10)
!655 = !DILocation(line: 238, column: 3, scope: !654)
!656 = !DILocation(line: 241, column: 28, scope: !600)
!657 = !DILocation(line: 241, column: 7, scope: !600)
!658 = !DILocation(line: 242, column: 6, scope: !659)
!659 = distinct !DILexicalBlock(scope: !600, file: !2, line: 242, column: 6)
!660 = !DILocation(line: 242, column: 6, scope: !600)
!661 = !DILocation(line: 248, column: 2, scope: !600)
!662 = !DILocation(line: 243, column: 3, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !2, line: 242, column: 10)
!664 = !DILocation(line: 245, column: 3, scope: !663)
!665 = !DILocation(line: 248, column: 30, scope: !600)
!666 = !DILocation(line: 248, column: 15, scope: !600)
!667 = !DILocation(line: 248, column: 68, scope: !600)
!668 = !DILocation(line: 249, column: 3, scope: !625)
!669 = !DILocation(line: 249, column: 10, scope: !625)
!670 = !DILocation(line: 249, column: 15, scope: !625)
!671 = !DILocation(line: 251, column: 25, scope: !625)
!672 = !DILocation(line: 251, column: 41, scope: !625)
!673 = !DILocation(line: 251, column: 3, scope: !625)
!674 = !DILocation(line: 252, column: 27, scope: !625)
!675 = !DILocation(line: 252, column: 44, scope: !625)
!676 = !DILocation(line: 252, column: 3, scope: !625)
!677 = !DILocation(line: 253, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !625, file: !2, line: 253, column: 7)
!679 = !DILocation(line: 253, column: 30, scope: !678)
!680 = !DILocation(line: 255, column: 2, scope: !600)
!681 = !DILocation(line: 257, column: 19, scope: !600)
!682 = !DILocation(line: 257, column: 2, scope: !600)
!683 = !DILocation(line: 258, column: 1, scope: !600)
!684 = !DILocation(line: 260, column: 21, scope: !600)
!685 = !DILocation(line: 260, column: 2, scope: !600)
!686 = !DILocation(line: 261, column: 1, scope: !600)
!687 = !DILocation(line: 263, column: 6, scope: !600)
!688 = !DILocation(line: 0, scope: !331, inlinedAt: !689)
!689 = distinct !DILocation(line: 264, column: 3, scope: !690)
!690 = distinct !DILexicalBlock(scope: !600, file: !2, line: 263, column: 6)
!691 = !DILocation(line: 85, column: 2, scope: !331, inlinedAt: !689)
!692 = !DILocation(line: 264, column: 3, scope: !690)
!693 = !DILocation(line: 266, column: 1, scope: !600)
!694 = !DISubprogram(name: "mdb_cursor_open", scope: !129, file: !129, line: 1117, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!695 = !DISubroutineType(types: !696)
!696 = !{!176, !283, !260, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!698 = !DISubprogram(name: "mdb_cursor_get", scope: !129, file: !129, line: 1176, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!699 = !DISubroutineType(types: !700)
!700 = !{!176, !617, !448, !448, !701}
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_cursor_op", file: !129, line: 346, baseType: !128)
!702 = !DISubprogram(name: "ybin_set", scope: !344, file: !344, line: 46, type: !703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!703 = !DISubroutineType(types: !704)
!704 = !{!525, !525, !150, !166}
!705 = !DISubprogram(name: "mdb_cursor_close", scope: !129, file: !129, line: 1125, type: !706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !617}
!708 = distinct !DISubprogram(name: "database_drop", scope: !2, file: !2, line: 269, type: !709, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !711)
!709 = !DISubroutineType(types: !710)
!710 = !{!314, !162, !283, !165}
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719}
!712 = !DILocalVariable(name: "env", arg: 1, scope: !708, file: !2, line: 269, type: !162)
!713 = !DILocalVariable(name: "transaction", arg: 2, scope: !708, file: !2, line: 269, type: !283)
!714 = !DILocalVariable(name: "name", arg: 3, scope: !708, file: !2, line: 269, type: !165)
!715 = !DILocalVariable(name: "dbi", scope: !708, file: !2, line: 270, type: !260)
!716 = !DILocalVariable(name: "txn", scope: !708, file: !2, line: 271, type: !283)
!717 = !DILocalVariable(name: "rc", scope: !708, file: !2, line: 272, type: !176)
!718 = !DILocalVariable(name: "retval", scope: !708, file: !2, line: 273, type: !314)
!719 = !DILabel(scope: !708, name: "end_of_process", file: !2, line: 293)
!720 = !DILocation(line: 0, scope: !708)
!721 = !DILocation(line: 270, column: 2, scope: !708)
!722 = !DILocation(line: 276, column: 10, scope: !723)
!723 = distinct !DILexicalBlock(scope: !708, file: !2, line: 276, column: 6)
!724 = !DILocation(line: 276, column: 18, scope: !723)
!725 = !DILocation(line: 0, scope: !280, inlinedAt: !726)
!726 = distinct !DILocation(line: 276, column: 28, scope: !723)
!727 = !DILocation(line: 57, column: 2, scope: !280, inlinedAt: !726)
!728 = !DILocation(line: 63, column: 7, scope: !280, inlinedAt: !726)
!729 = !DILocation(line: 64, column: 6, scope: !299, inlinedAt: !726)
!730 = !DILocation(line: 64, column: 6, scope: !280, inlinedAt: !726)
!731 = !DILocation(line: 65, column: 3, scope: !302, inlinedAt: !726)
!732 = !DILocation(line: 69, column: 1, scope: !280, inlinedAt: !726)
!733 = !DILocation(line: 276, column: 6, scope: !708)
!734 = !DILocation(line: 68, column: 10, scope: !280, inlinedAt: !726)
!735 = !DILocation(line: 276, column: 69, scope: !723)
!736 = !DILocation(line: 279, column: 7, scope: !708)
!737 = !DILocation(line: 280, column: 6, scope: !738)
!738 = distinct !DILexicalBlock(scope: !708, file: !2, line: 280, column: 6)
!739 = !DILocation(line: 280, column: 6, scope: !708)
!740 = !DILocation(line: 281, column: 3, scope: !741)
!741 = distinct !DILexicalBlock(scope: !738, file: !2, line: 280, column: 10)
!742 = !DILocation(line: 293, column: 1, scope: !708)
!743 = !DILocation(line: 295, column: 24, scope: !744)
!744 = distinct !DILexicalBlock(scope: !708, file: !2, line: 295, column: 6)
!745 = !DILocation(line: 286, column: 21, scope: !708)
!746 = !DILocation(line: 286, column: 7, scope: !708)
!747 = !DILocation(line: 287, column: 6, scope: !748)
!748 = distinct !DILexicalBlock(scope: !708, file: !2, line: 287, column: 6)
!749 = !DILocation(line: 287, column: 6, scope: !708)
!750 = !DILocation(line: 288, column: 3, scope: !751)
!751 = distinct !DILexicalBlock(scope: !748, file: !2, line: 287, column: 10)
!752 = !DILocation(line: 292, column: 21, scope: !708)
!753 = !DILocation(line: 292, column: 2, scope: !708)
!754 = !DILocation(line: 0, scope: !311, inlinedAt: !755)
!755 = distinct !DILocation(line: 296, column: 6, scope: !744)
!756 = !DILocation(line: 75, column: 7, scope: !311, inlinedAt: !755)
!757 = !DILocation(line: 76, column: 6, scope: !322, inlinedAt: !755)
!758 = !DILocation(line: 76, column: 6, scope: !311, inlinedAt: !755)
!759 = !DILocation(line: 77, column: 3, scope: !325, inlinedAt: !755)
!760 = !DILocation(line: 295, column: 6, scope: !708)
!761 = !DILocation(line: 298, column: 24, scope: !762)
!762 = distinct !DILexicalBlock(scope: !708, file: !2, line: 298, column: 6)
!763 = !DILocation(line: 0, scope: !331, inlinedAt: !764)
!764 = distinct !DILocation(line: 299, column: 3, scope: !762)
!765 = !DILocation(line: 85, column: 2, scope: !331, inlinedAt: !764)
!766 = !DILocation(line: 299, column: 3, scope: !762)
!767 = !DILocation(line: 301, column: 1, scope: !708)
!768 = !DISubprogram(name: "mdb_drop", scope: !129, file: !129, line: 913, type: !769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!769 = !DISubroutineType(types: !770)
!770 = !{!176, !283, !260, !176}
