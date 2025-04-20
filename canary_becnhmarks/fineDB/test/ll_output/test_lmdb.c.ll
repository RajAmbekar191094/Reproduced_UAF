; ModuleID = 'test_lmdb.c'
source_filename = "test_lmdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ybin_s = type { ptr, i64 }
%struct.MDB_val = type { i64, ptr }

@.str = private unnamed_addr constant [12 x i8] c"cle_de_test\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [20 x i8] c"RES : '%s' => '%s'\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [36 x i8] c"Unable to create transaction (%s).\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [38 x i8] c"Unable to open database handle (%s).\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [40 x i8] c"Unable to write data in database (%s).\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [21 x i8] c"apr\C3\A8s le put : %lx\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [36 x i8] c"Unable to commit transaction (%s).\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [39 x i8] c"Unable to read data in database (%s).\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [28 x i8] c"Unable to create env (%s).\0A\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [16 x i8] c"../var/database\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [31 x i8] c"Unable to open database (%s).\0A\00", align 1, !dbg !49

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !70 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ybin_s, align 8
  %3 = alloca %struct.ybin_s, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !75, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata ptr %2, metadata !81, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata ptr %3, metadata !89, metadata !DIExpression()), !dbg !90
  %4 = call ptr @database_open(), !dbg !91
  store ptr %4, ptr %1, align 8, !dbg !92
  %5 = call ptr @ybin_set(ptr noundef %2, ptr noundef @.str, i64 noundef 12), !dbg !93
  %6 = load ptr, ptr %1, align 8, !dbg !94
  %7 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0, !dbg !95
  %8 = load ptr, ptr %7, align 8, !dbg !95
  %9 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1, !dbg !95
  %10 = load i64, ptr %9, align 8, !dbg !95
  %11 = call i32 @database_get(ptr noundef %6, ptr noundef null, ptr %8, i64 %10, ptr noundef %3), !dbg !95
  %12 = getelementptr inbounds %struct.ybin_s, ptr %2, i32 0, i32 0, !dbg !96
  %13 = load ptr, ptr %12, align 8, !dbg !96
  %14 = getelementptr inbounds %struct.ybin_s, ptr %3, i32 0, i32 0, !dbg !97
  %15 = load ptr, ptr %14, align 8, !dbg !97
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %13, ptr noundef %15), !dbg !98
  %17 = load ptr, ptr %1, align 8, !dbg !99
  call void @database_close(ptr noundef %17), !dbg !100
  ret i32 0, !dbg !101
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @database_open() #0 !dbg !102 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata ptr %2, metadata !107, metadata !DIExpression()), !dbg !108
  %3 = call i32 @mdb_env_create(ptr noundef %1), !dbg !109
  store i32 %3, ptr %2, align 4, !dbg !111
  %4 = icmp ne i32 %3, 0, !dbg !111
  br i1 %4, label %5, label %9, !dbg !112

5:                                                ; preds = %0
  %6 = load i32, ptr %2, align 4, !dbg !113
  %7 = call ptr @mdb_strerror(i32 noundef %6), !dbg !115
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %7), !dbg !116
  call void @exit(i32 noundef 1) #5, !dbg !117
  unreachable, !dbg !117

9:                                                ; preds = %0
  %10 = load ptr, ptr %1, align 8, !dbg !118
  %11 = call i32 @mdb_env_open(ptr noundef %10, ptr noundef @.str.9, i32 noundef 2621440, i32 noundef 436), !dbg !120
  store i32 %11, ptr %2, align 4, !dbg !121
  %12 = icmp ne i32 %11, 0, !dbg !121
  br i1 %12, label %13, label %17, !dbg !122

13:                                               ; preds = %9
  %14 = load i32, ptr %2, align 4, !dbg !123
  %15 = call ptr @mdb_strerror(i32 noundef %14), !dbg !125
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %15), !dbg !126
  call void @exit(i32 noundef 2) #5, !dbg !127
  unreachable, !dbg !127

17:                                               ; preds = %9
  %18 = load ptr, ptr %1, align 8, !dbg !128
  ret ptr %18, !dbg !129
}

declare ptr @ybin_set(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @database_get(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef %4) #0 !dbg !130 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ybin_s, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca %struct.MDB_val, align 8
  %14 = alloca %struct.MDB_val, align 8
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds { ptr, i64 }, ptr %7, i32 0, i32 0
  store ptr %2, ptr %16, align 8
  %17 = getelementptr inbounds { ptr, i64 }, ptr %7, i32 0, i32 1
  store i64 %3, ptr %17, align 8
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !138, metadata !DIExpression()), !dbg !139
  store ptr %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata ptr %7, metadata !142, metadata !DIExpression()), !dbg !143
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata ptr %11, metadata !146, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata ptr %12, metadata !150, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata ptr %13, metadata !155, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata ptr %14, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata ptr %15, metadata !164, metadata !DIExpression()), !dbg !165
  %18 = load ptr, ptr %8, align 8, !dbg !166
  %19 = call i32 @mdb_txn_begin(ptr noundef %18, ptr noundef null, i32 noundef 131072, ptr noundef %12), !dbg !167
  store i32 %19, ptr %15, align 4, !dbg !168
  %20 = load i32, ptr %15, align 4, !dbg !169
  %21 = icmp ne i32 %20, 0, !dbg !169
  br i1 %21, label %22, label %26, !dbg !171

22:                                               ; preds = %5
  %23 = load i32, ptr %15, align 4, !dbg !172
  %24 = call ptr @mdb_strerror(i32 noundef %23), !dbg !174
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %24), !dbg !175
  store i32 -13, ptr %6, align 4, !dbg !176
  br label %64, !dbg !176

26:                                               ; preds = %5
  %27 = load ptr, ptr %12, align 8, !dbg !177
  %28 = load ptr, ptr %9, align 8, !dbg !178
  %29 = call i32 @mdb_dbi_open(ptr noundef %27, ptr noundef %28, i32 noundef 0, ptr noundef %11), !dbg !179
  store i32 %29, ptr %15, align 4, !dbg !180
  %30 = load i32, ptr %15, align 4, !dbg !181
  %31 = icmp ne i32 %30, 0, !dbg !181
  br i1 %31, label %32, label %36, !dbg !183

32:                                               ; preds = %26
  %33 = load i32, ptr %15, align 4, !dbg !184
  %34 = call ptr @mdb_strerror(i32 noundef %33), !dbg !186
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %34), !dbg !187
  store i32 -13, ptr %6, align 4, !dbg !188
  br label %64, !dbg !188

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.ybin_s, ptr %7, i32 0, i32 1, !dbg !189
  %38 = load i64, ptr %37, align 8, !dbg !189
  %39 = getelementptr inbounds %struct.MDB_val, ptr %13, i32 0, i32 0, !dbg !190
  store i64 %38, ptr %39, align 8, !dbg !191
  %40 = getelementptr inbounds %struct.ybin_s, ptr %7, i32 0, i32 0, !dbg !192
  %41 = load ptr, ptr %40, align 8, !dbg !192
  %42 = getelementptr inbounds %struct.MDB_val, ptr %13, i32 0, i32 1, !dbg !193
  store ptr %41, ptr %42, align 8, !dbg !194
  %43 = load ptr, ptr %12, align 8, !dbg !195
  %44 = load i32, ptr %11, align 4, !dbg !196
  %45 = call i32 @mdb_get(ptr noundef %43, i32 noundef %44, ptr noundef %13, ptr noundef %14), !dbg !197
  store i32 %45, ptr %15, align 4, !dbg !198
  %46 = load i32, ptr %15, align 4, !dbg !199
  %47 = icmp ne i32 %46, 0, !dbg !199
  br i1 %47, label %48, label %52, !dbg !201

48:                                               ; preds = %36
  %49 = load i32, ptr %15, align 4, !dbg !202
  %50 = call ptr @mdb_strerror(i32 noundef %49), !dbg !204
  %51 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %50), !dbg !205
  store i32 -13, ptr %6, align 4, !dbg !206
  br label %64, !dbg !206

52:                                               ; preds = %36
  %53 = load ptr, ptr %8, align 8, !dbg !207
  %54 = load i32, ptr %11, align 4, !dbg !208
  call void @mdb_dbi_close(ptr noundef %53, i32 noundef %54), !dbg !209
  %55 = load ptr, ptr %12, align 8, !dbg !210
  call void @mdb_txn_abort(ptr noundef %55), !dbg !211
  %56 = getelementptr inbounds %struct.MDB_val, ptr %14, i32 0, i32 0, !dbg !212
  %57 = load i64, ptr %56, align 8, !dbg !212
  %58 = load ptr, ptr %10, align 8, !dbg !213
  %59 = getelementptr inbounds %struct.ybin_s, ptr %58, i32 0, i32 1, !dbg !214
  store i64 %57, ptr %59, align 8, !dbg !215
  %60 = getelementptr inbounds %struct.MDB_val, ptr %14, i32 0, i32 1, !dbg !216
  %61 = load ptr, ptr %60, align 8, !dbg !216
  %62 = load ptr, ptr %10, align 8, !dbg !217
  %63 = getelementptr inbounds %struct.ybin_s, ptr %62, i32 0, i32 0, !dbg !218
  store ptr %61, ptr %63, align 8, !dbg !219
  store i32 1, ptr %6, align 4, !dbg !220
  br label %64, !dbg !220

64:                                               ; preds = %52, %48, %32, %22
  %65 = load i32, ptr %6, align 4, !dbg !221
  ret i32 %65, !dbg !221
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @database_close(ptr noundef %0) #0 !dbg !222 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !225, metadata !DIExpression()), !dbg !226
  %3 = load ptr, ptr %2, align 8, !dbg !227
  call void @mdb_env_close(ptr noundef %3), !dbg !228
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @database_put(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) #0 !dbg !230 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ybin_s, align 8
  %9 = alloca %struct.ybin_s, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca %struct.MDB_val, align 8
  %15 = alloca %struct.MDB_val, align 8
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds { ptr, i64 }, ptr %8, i32 0, i32 0
  store ptr %2, ptr %17, align 8
  %18 = getelementptr inbounds { ptr, i64 }, ptr %8, i32 0, i32 1
  store i64 %3, ptr %18, align 8
  %19 = getelementptr inbounds { ptr, i64 }, ptr %9, i32 0, i32 0
  store ptr %4, ptr %19, align 8
  %20 = getelementptr inbounds { ptr, i64 }, ptr %9, i32 0, i32 1
  store i64 %5, ptr %20, align 8
  store ptr %0, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !233, metadata !DIExpression()), !dbg !234
  store ptr %1, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata ptr %8, metadata !237, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata ptr %9, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata ptr %12, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata ptr %13, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata ptr %14, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata ptr %15, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata ptr %16, metadata !249, metadata !DIExpression()), !dbg !250
  %21 = load ptr, ptr %10, align 8, !dbg !251
  %22 = call i32 @mdb_txn_begin(ptr noundef %21, ptr noundef null, i32 noundef 0, ptr noundef %13), !dbg !252
  store i32 %22, ptr %16, align 4, !dbg !253
  %23 = load i32, ptr %16, align 4, !dbg !254
  %24 = icmp ne i32 %23, 0, !dbg !254
  br i1 %24, label %25, label %29, !dbg !256

25:                                               ; preds = %6
  %26 = load i32, ptr %16, align 4, !dbg !257
  %27 = call ptr @mdb_strerror(i32 noundef %26), !dbg !259
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %27), !dbg !260
  store i32 -13, ptr %7, align 4, !dbg !261
  br label %81, !dbg !261

29:                                               ; preds = %6
  %30 = load ptr, ptr %13, align 8, !dbg !262
  %31 = load ptr, ptr %11, align 8, !dbg !263
  %32 = call i32 @mdb_dbi_open(ptr noundef %30, ptr noundef %31, i32 noundef 262144, ptr noundef %12), !dbg !264
  store i32 %32, ptr %16, align 4, !dbg !265
  %33 = load i32, ptr %16, align 4, !dbg !266
  %34 = icmp ne i32 %33, 0, !dbg !266
  br i1 %34, label %35, label %39, !dbg !268

35:                                               ; preds = %29
  %36 = load i32, ptr %16, align 4, !dbg !269
  %37 = call ptr @mdb_strerror(i32 noundef %36), !dbg !271
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %37), !dbg !272
  store i32 -13, ptr %7, align 4, !dbg !273
  br label %81, !dbg !273

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.ybin_s, ptr %8, i32 0, i32 1, !dbg !274
  %41 = load i64, ptr %40, align 8, !dbg !274
  %42 = getelementptr inbounds %struct.MDB_val, ptr %14, i32 0, i32 0, !dbg !275
  store i64 %41, ptr %42, align 8, !dbg !276
  %43 = getelementptr inbounds %struct.ybin_s, ptr %8, i32 0, i32 0, !dbg !277
  %44 = load ptr, ptr %43, align 8, !dbg !277
  %45 = getelementptr inbounds %struct.MDB_val, ptr %14, i32 0, i32 1, !dbg !278
  store ptr %44, ptr %45, align 8, !dbg !279
  %46 = getelementptr inbounds %struct.ybin_s, ptr %9, i32 0, i32 1, !dbg !280
  %47 = load i64, ptr %46, align 8, !dbg !280
  %48 = getelementptr inbounds %struct.MDB_val, ptr %15, i32 0, i32 0, !dbg !281
  store i64 %47, ptr %48, align 8, !dbg !282
  %49 = getelementptr inbounds %struct.MDB_val, ptr %15, i32 0, i32 1, !dbg !283
  store ptr null, ptr %49, align 8, !dbg !284
  %50 = load ptr, ptr %13, align 8, !dbg !285
  %51 = load i32, ptr %12, align 4, !dbg !286
  %52 = call i32 @mdb_put(ptr noundef %50, i32 noundef %51, ptr noundef %14, ptr noundef %15, i32 noundef 65536), !dbg !287
  store i32 %52, ptr %16, align 4, !dbg !288
  %53 = load i32, ptr %16, align 4, !dbg !289
  %54 = icmp ne i32 %53, 0, !dbg !289
  br i1 %54, label %55, label %59, !dbg !291

55:                                               ; preds = %39
  %56 = load i32, ptr %16, align 4, !dbg !292
  %57 = call ptr @mdb_strerror(i32 noundef %56), !dbg !294
  %58 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %57), !dbg !295
  store i32 -13, ptr %7, align 4, !dbg !296
  br label %81, !dbg !296

59:                                               ; preds = %39
  %60 = getelementptr inbounds %struct.MDB_val, ptr %15, i32 0, i32 1, !dbg !297
  %61 = load ptr, ptr %60, align 8, !dbg !297
  %62 = ptrtoint ptr %61 to i64, !dbg !298
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i64 noundef %62), !dbg !299
  %64 = getelementptr inbounds %struct.MDB_val, ptr %15, i32 0, i32 1, !dbg !300
  %65 = load ptr, ptr %64, align 8, !dbg !300
  %66 = getelementptr inbounds %struct.ybin_s, ptr %9, i32 0, i32 0, !dbg !301
  %67 = load ptr, ptr %66, align 8, !dbg !301
  %68 = getelementptr inbounds %struct.ybin_s, ptr %9, i32 0, i32 1, !dbg !302
  %69 = load i64, ptr %68, align 8, !dbg !302
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr align 1 %67, i64 %69, i1 false), !dbg !303
  %70 = load ptr, ptr %10, align 8, !dbg !304
  %71 = load i32, ptr %12, align 4, !dbg !305
  call void @mdb_dbi_close(ptr noundef %70, i32 noundef %71), !dbg !306
  %72 = load ptr, ptr %13, align 8, !dbg !307
  %73 = call i32 @mdb_txn_commit(ptr noundef %72), !dbg !308
  store i32 %73, ptr %16, align 4, !dbg !309
  %74 = load i32, ptr %16, align 4, !dbg !310
  %75 = icmp ne i32 %74, 0, !dbg !310
  br i1 %75, label %76, label %80, !dbg !312

76:                                               ; preds = %59
  %77 = load i32, ptr %16, align 4, !dbg !313
  %78 = call ptr @mdb_strerror(i32 noundef %77), !dbg !315
  %79 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %78), !dbg !316
  store i32 -13, ptr %7, align 4, !dbg !317
  br label %81, !dbg !317

80:                                               ; preds = %59
  store i32 1, ptr %7, align 4, !dbg !318
  br label %81, !dbg !318

81:                                               ; preds = %80, %76, %55, %35, %25
  %82 = load i32, ptr %7, align 4, !dbg !319
  ret i32 %82, !dbg !319
}

declare i32 @mdb_txn_begin(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare ptr @mdb_strerror(i32 noundef) #2

declare i32 @mdb_dbi_open(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @mdb_put(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @mdb_dbi_close(ptr noundef, i32 noundef) #2

declare i32 @mdb_txn_commit(ptr noundef) #2

declare i32 @mdb_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @mdb_txn_abort(ptr noundef) #2

declare i32 @mdb_env_create(ptr noundef) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

declare i32 @mdb_env_open(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @mdb_env_close(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!54}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "test_lmdb.c", directory: "/home/raj/FineDB/test", checksumkind: CSK_MD5, checksum: "95dea6f9b066a488d61032844a139531")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 12)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 21, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 20)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 36)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 38)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 40)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 21)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !14, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 39)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 28)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 16)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 31)
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !55, globals: !61, splitDebugInlining: false, nameTableKind: None)
!55 = !{!56, !57, !58}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 46, baseType: !60)
!59 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!60 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!61 = !{!0, !7, !12, !17, !22, !27, !32, !34, !39, !44, !49}
!62 = !{i32 7, !"Dwarf Version", i32 5}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 4}
!65 = !{i32 8, !"PIC Level", i32 2}
!66 = !{i32 7, !"PIE Level", i32 2}
!67 = !{i32 7, !"uwtable", i32 2}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 16.0.0"}
!70 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 12, type: !71, scopeLine: 12, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !74)
!71 = !DISubroutineType(types: !72)
!72 = !{!73}
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !{}
!75 = !DILocalVariable(name: "env", scope: !70, file: !2, line: 13, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_env", file: !78, line: 197, baseType: !79)
!78 = !DIFile(filename: "../lib/lmdb/lmdb.h", directory: "/home/raj/FineDB/test", checksumkind: CSK_MD5, checksum: "9ff9d4834608bdc966449cf81c779c6a")
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_env", file: !78, line: 197, flags: DIFlagFwdDecl)
!80 = !DILocation(line: 13, column: 11, scope: !70)
!81 = !DILocalVariable(name: "key", scope: !70, file: !2, line: 14, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !83, line: 33, baseType: !84)
!83 = !DIFile(filename: "../lib/ylib/ybin.h", directory: "/home/raj/FineDB/test", checksumkind: CSK_MD5, checksum: "7abd7d5e6afd31e8416cab6f0a6bf3b3")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !83, line: 27, size: 128, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !84, file: !83, line: 28, baseType: !57, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !84, file: !83, line: 29, baseType: !58, size: 64, offset: 64)
!88 = !DILocation(line: 14, column: 9, scope: !70)
!89 = !DILocalVariable(name: "data", scope: !70, file: !2, line: 14, type: !82)
!90 = !DILocation(line: 14, column: 14, scope: !70)
!91 = !DILocation(line: 16, column: 8, scope: !70)
!92 = !DILocation(line: 16, column: 6, scope: !70)
!93 = !DILocation(line: 17, column: 2, scope: !70)
!94 = !DILocation(line: 20, column: 15, scope: !70)
!95 = !DILocation(line: 20, column: 2, scope: !70)
!96 = !DILocation(line: 21, column: 44, scope: !70)
!97 = !DILocation(line: 21, column: 62, scope: !70)
!98 = !DILocation(line: 21, column: 2, scope: !70)
!99 = !DILocation(line: 22, column: 17, scope: !70)
!100 = !DILocation(line: 22, column: 2, scope: !70)
!101 = !DILocation(line: 23, column: 1, scope: !70)
!102 = distinct !DISubprogram(name: "database_open", scope: !2, file: !2, line: 104, type: !103, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !74)
!103 = !DISubroutineType(types: !104)
!104 = !{!76}
!105 = !DILocalVariable(name: "env", scope: !102, file: !2, line: 105, type: !76)
!106 = !DILocation(line: 105, column: 11, scope: !102)
!107 = !DILocalVariable(name: "rc", scope: !102, file: !2, line: 106, type: !73)
!108 = !DILocation(line: 106, column: 6, scope: !102)
!109 = !DILocation(line: 108, column: 12, scope: !110)
!110 = distinct !DILexicalBlock(scope: !102, file: !2, line: 108, column: 6)
!111 = !DILocation(line: 108, column: 10, scope: !110)
!112 = !DILocation(line: 108, column: 6, scope: !102)
!113 = !DILocation(line: 109, column: 55, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !2, line: 108, column: 35)
!115 = !DILocation(line: 109, column: 42, scope: !114)
!116 = !DILocation(line: 109, column: 3, scope: !114)
!117 = !DILocation(line: 110, column: 3, scope: !114)
!118 = !DILocation(line: 113, column: 25, scope: !119)
!119 = distinct !DILexicalBlock(scope: !102, file: !2, line: 113, column: 6)
!120 = !DILocation(line: 113, column: 12, scope: !119)
!121 = !DILocation(line: 113, column: 10, scope: !119)
!122 = !DILocation(line: 113, column: 6, scope: !102)
!123 = !DILocation(line: 114, column: 58, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !2, line: 113, column: 83)
!125 = !DILocation(line: 114, column: 45, scope: !124)
!126 = !DILocation(line: 114, column: 3, scope: !124)
!127 = !DILocation(line: 115, column: 3, scope: !124)
!128 = !DILocation(line: 117, column: 10, scope: !102)
!129 = !DILocation(line: 117, column: 2, scope: !102)
!130 = distinct !DISubprogram(name: "database_get", scope: !2, file: !2, line: 67, type: !131, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !74)
!131 = !DISubroutineType(types: !132)
!132 = !{!133, !76, !135, !82, !137}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !134, line: 23, baseType: !73)
!134 = !DIFile(filename: "../lib/ylib/yerror.h", directory: "/home/raj/FineDB/test", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!138 = !DILocalVariable(name: "env", arg: 1, scope: !130, file: !2, line: 67, type: !76)
!139 = !DILocation(line: 67, column: 30, scope: !130)
!140 = !DILocalVariable(name: "name", arg: 2, scope: !130, file: !2, line: 67, type: !135)
!141 = !DILocation(line: 67, column: 47, scope: !130)
!142 = !DILocalVariable(name: "key", arg: 3, scope: !130, file: !2, line: 67, type: !82)
!143 = !DILocation(line: 67, column: 60, scope: !130)
!144 = !DILocalVariable(name: "data", arg: 4, scope: !130, file: !2, line: 67, type: !137)
!145 = !DILocation(line: 67, column: 73, scope: !130)
!146 = !DILocalVariable(name: "dbi", scope: !130, file: !2, line: 68, type: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_dbi", file: !78, line: 207, baseType: !148)
!148 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!149 = !DILocation(line: 68, column: 10, scope: !130)
!150 = !DILocalVariable(name: "txn", scope: !130, file: !2, line: 69, type: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_txn", file: !78, line: 204, baseType: !153)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_txn", file: !78, line: 204, flags: DIFlagFwdDecl)
!154 = !DILocation(line: 69, column: 11, scope: !130)
!155 = !DILocalVariable(name: "db_key", scope: !130, file: !2, line: 70, type: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_val", file: !78, line: 226, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_val", file: !78, line: 223, size: 128, elements: !158)
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "mv_size", scope: !157, file: !78, line: 224, baseType: !58, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "mv_data", scope: !157, file: !78, line: 225, baseType: !57, size: 64, offset: 64)
!161 = !DILocation(line: 70, column: 10, scope: !130)
!162 = !DILocalVariable(name: "db_data", scope: !130, file: !2, line: 70, type: !156)
!163 = !DILocation(line: 70, column: 18, scope: !130)
!164 = !DILocalVariable(name: "rc", scope: !130, file: !2, line: 71, type: !73)
!165 = !DILocation(line: 71, column: 6, scope: !130)
!166 = !DILocation(line: 74, column: 21, scope: !130)
!167 = !DILocation(line: 74, column: 7, scope: !130)
!168 = !DILocation(line: 74, column: 5, scope: !130)
!169 = !DILocation(line: 75, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !130, file: !2, line: 75, column: 6)
!171 = !DILocation(line: 75, column: 6, scope: !130)
!172 = !DILocation(line: 76, column: 63, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !2, line: 75, column: 10)
!174 = !DILocation(line: 76, column: 50, scope: !173)
!175 = !DILocation(line: 76, column: 3, scope: !173)
!176 = !DILocation(line: 77, column: 3, scope: !173)
!177 = !DILocation(line: 80, column: 20, scope: !130)
!178 = !DILocation(line: 80, column: 25, scope: !130)
!179 = !DILocation(line: 80, column: 7, scope: !130)
!180 = !DILocation(line: 80, column: 5, scope: !130)
!181 = !DILocation(line: 81, column: 6, scope: !182)
!182 = distinct !DILexicalBlock(scope: !130, file: !2, line: 81, column: 6)
!183 = !DILocation(line: 81, column: 6, scope: !130)
!184 = !DILocation(line: 82, column: 65, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !2, line: 81, column: 10)
!186 = !DILocation(line: 82, column: 52, scope: !185)
!187 = !DILocation(line: 82, column: 3, scope: !185)
!188 = !DILocation(line: 83, column: 3, scope: !185)
!189 = !DILocation(line: 86, column: 23, scope: !130)
!190 = !DILocation(line: 86, column: 9, scope: !130)
!191 = !DILocation(line: 86, column: 17, scope: !130)
!192 = !DILocation(line: 87, column: 23, scope: !130)
!193 = !DILocation(line: 87, column: 9, scope: !130)
!194 = !DILocation(line: 87, column: 17, scope: !130)
!195 = !DILocation(line: 89, column: 15, scope: !130)
!196 = !DILocation(line: 89, column: 20, scope: !130)
!197 = !DILocation(line: 89, column: 7, scope: !130)
!198 = !DILocation(line: 89, column: 5, scope: !130)
!199 = !DILocation(line: 90, column: 6, scope: !200)
!200 = distinct !DILexicalBlock(scope: !130, file: !2, line: 90, column: 6)
!201 = !DILocation(line: 90, column: 6, scope: !130)
!202 = !DILocation(line: 91, column: 66, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !2, line: 90, column: 10)
!204 = !DILocation(line: 91, column: 53, scope: !203)
!205 = !DILocation(line: 91, column: 3, scope: !203)
!206 = !DILocation(line: 92, column: 3, scope: !203)
!207 = !DILocation(line: 95, column: 16, scope: !130)
!208 = !DILocation(line: 95, column: 21, scope: !130)
!209 = !DILocation(line: 95, column: 2, scope: !130)
!210 = !DILocation(line: 97, column: 16, scope: !130)
!211 = !DILocation(line: 97, column: 2, scope: !130)
!212 = !DILocation(line: 99, column: 22, scope: !130)
!213 = !DILocation(line: 99, column: 2, scope: !130)
!214 = !DILocation(line: 99, column: 8, scope: !130)
!215 = !DILocation(line: 99, column: 12, scope: !130)
!216 = !DILocation(line: 100, column: 23, scope: !130)
!217 = !DILocation(line: 100, column: 2, scope: !130)
!218 = !DILocation(line: 100, column: 8, scope: !130)
!219 = !DILocation(line: 100, column: 13, scope: !130)
!220 = !DILocation(line: 101, column: 2, scope: !130)
!221 = !DILocation(line: 102, column: 1, scope: !130)
!222 = distinct !DISubprogram(name: "database_close", scope: !2, file: !2, line: 120, type: !223, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !74)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !76}
!225 = !DILocalVariable(name: "env", arg: 1, scope: !222, file: !2, line: 120, type: !76)
!226 = !DILocation(line: 120, column: 30, scope: !222)
!227 = !DILocation(line: 121, column: 16, scope: !222)
!228 = !DILocation(line: 121, column: 2, scope: !222)
!229 = !DILocation(line: 122, column: 1, scope: !222)
!230 = distinct !DISubprogram(name: "database_put", scope: !2, file: !2, line: 25, type: !231, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !74)
!231 = !DISubroutineType(types: !232)
!232 = !{!133, !76, !135, !82, !82}
!233 = !DILocalVariable(name: "env", arg: 1, scope: !230, file: !2, line: 25, type: !76)
!234 = !DILocation(line: 25, column: 30, scope: !230)
!235 = !DILocalVariable(name: "name", arg: 2, scope: !230, file: !2, line: 25, type: !135)
!236 = !DILocation(line: 25, column: 47, scope: !230)
!237 = !DILocalVariable(name: "key", arg: 3, scope: !230, file: !2, line: 25, type: !82)
!238 = !DILocation(line: 25, column: 60, scope: !230)
!239 = !DILocalVariable(name: "data", arg: 4, scope: !230, file: !2, line: 25, type: !82)
!240 = !DILocation(line: 25, column: 72, scope: !230)
!241 = !DILocalVariable(name: "dbi", scope: !230, file: !2, line: 26, type: !147)
!242 = !DILocation(line: 26, column: 10, scope: !230)
!243 = !DILocalVariable(name: "txn", scope: !230, file: !2, line: 27, type: !151)
!244 = !DILocation(line: 27, column: 11, scope: !230)
!245 = !DILocalVariable(name: "db_key", scope: !230, file: !2, line: 28, type: !156)
!246 = !DILocation(line: 28, column: 10, scope: !230)
!247 = !DILocalVariable(name: "db_data", scope: !230, file: !2, line: 28, type: !156)
!248 = !DILocation(line: 28, column: 18, scope: !230)
!249 = !DILocalVariable(name: "rc", scope: !230, file: !2, line: 29, type: !73)
!250 = !DILocation(line: 29, column: 6, scope: !230)
!251 = !DILocation(line: 32, column: 21, scope: !230)
!252 = !DILocation(line: 32, column: 7, scope: !230)
!253 = !DILocation(line: 32, column: 5, scope: !230)
!254 = !DILocation(line: 33, column: 6, scope: !255)
!255 = distinct !DILexicalBlock(scope: !230, file: !2, line: 33, column: 6)
!256 = !DILocation(line: 33, column: 6, scope: !230)
!257 = !DILocation(line: 34, column: 63, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !2, line: 33, column: 10)
!259 = !DILocation(line: 34, column: 50, scope: !258)
!260 = !DILocation(line: 34, column: 3, scope: !258)
!261 = !DILocation(line: 35, column: 3, scope: !258)
!262 = !DILocation(line: 38, column: 20, scope: !230)
!263 = !DILocation(line: 38, column: 25, scope: !230)
!264 = !DILocation(line: 38, column: 7, scope: !230)
!265 = !DILocation(line: 38, column: 5, scope: !230)
!266 = !DILocation(line: 39, column: 6, scope: !267)
!267 = distinct !DILexicalBlock(scope: !230, file: !2, line: 39, column: 6)
!268 = !DILocation(line: 39, column: 6, scope: !230)
!269 = !DILocation(line: 40, column: 65, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !2, line: 39, column: 10)
!271 = !DILocation(line: 40, column: 52, scope: !270)
!272 = !DILocation(line: 40, column: 3, scope: !270)
!273 = !DILocation(line: 41, column: 3, scope: !270)
!274 = !DILocation(line: 44, column: 23, scope: !230)
!275 = !DILocation(line: 44, column: 9, scope: !230)
!276 = !DILocation(line: 44, column: 17, scope: !230)
!277 = !DILocation(line: 45, column: 23, scope: !230)
!278 = !DILocation(line: 45, column: 9, scope: !230)
!279 = !DILocation(line: 45, column: 17, scope: !230)
!280 = !DILocation(line: 46, column: 25, scope: !230)
!281 = !DILocation(line: 46, column: 10, scope: !230)
!282 = !DILocation(line: 46, column: 18, scope: !230)
!283 = !DILocation(line: 47, column: 10, scope: !230)
!284 = !DILocation(line: 47, column: 18, scope: !230)
!285 = !DILocation(line: 49, column: 15, scope: !230)
!286 = !DILocation(line: 49, column: 20, scope: !230)
!287 = !DILocation(line: 49, column: 7, scope: !230)
!288 = !DILocation(line: 49, column: 5, scope: !230)
!289 = !DILocation(line: 50, column: 6, scope: !290)
!290 = distinct !DILexicalBlock(scope: !230, file: !2, line: 50, column: 6)
!291 = !DILocation(line: 50, column: 6, scope: !230)
!292 = !DILocation(line: 51, column: 67, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !2, line: 50, column: 10)
!294 = !DILocation(line: 51, column: 54, scope: !293)
!295 = !DILocation(line: 51, column: 3, scope: !293)
!296 = !DILocation(line: 52, column: 3, scope: !293)
!297 = !DILocation(line: 54, column: 50, scope: !230)
!298 = !DILocation(line: 54, column: 34, scope: !230)
!299 = !DILocation(line: 54, column: 2, scope: !230)
!300 = !DILocation(line: 55, column: 17, scope: !230)
!301 = !DILocation(line: 55, column: 31, scope: !230)
!302 = !DILocation(line: 55, column: 42, scope: !230)
!303 = !DILocation(line: 55, column: 2, scope: !230)
!304 = !DILocation(line: 57, column: 16, scope: !230)
!305 = !DILocation(line: 57, column: 21, scope: !230)
!306 = !DILocation(line: 57, column: 2, scope: !230)
!307 = !DILocation(line: 59, column: 22, scope: !230)
!308 = !DILocation(line: 59, column: 7, scope: !230)
!309 = !DILocation(line: 59, column: 5, scope: !230)
!310 = !DILocation(line: 60, column: 6, scope: !311)
!311 = distinct !DILexicalBlock(scope: !230, file: !2, line: 60, column: 6)
!312 = !DILocation(line: 60, column: 6, scope: !230)
!313 = !DILocation(line: 61, column: 63, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !2, line: 60, column: 10)
!315 = !DILocation(line: 61, column: 50, scope: !314)
!316 = !DILocation(line: 61, column: 3, scope: !314)
!317 = !DILocation(line: 62, column: 3, scope: !314)
!318 = !DILocation(line: 64, column: 2, scope: !230)
!319 = !DILocation(line: 65, column: 1, scope: !230)
