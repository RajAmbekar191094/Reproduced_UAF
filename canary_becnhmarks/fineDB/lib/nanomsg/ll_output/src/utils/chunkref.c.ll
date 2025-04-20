; ModuleID = './src/utils/chunkref.c'
source_filename = "./src/utils/chunkref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_chunkref = type { [32 x i8] }
%struct.nn_chunkref_chunk = type { i8, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [23 x i8] c"./src/utils/chunkref.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [19 x i8] c"self->ref [0] >= n\00", align 1, !dbg !14

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_chunkref_init(ptr noundef %0, i64 noundef %1) #0 !dbg !42 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !57, metadata !DIExpression()), !dbg !58
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata ptr %5, metadata !61, metadata !DIExpression()), !dbg !62
  %6 = load i64, ptr %4, align 8, !dbg !63
  %7 = icmp ult i64 %6, 32, !dbg !65
  br i1 %7, label %8, label %14, !dbg !66

8:                                                ; preds = %2
  %9 = load i64, ptr %4, align 8, !dbg !67
  %10 = trunc i64 %9 to i8, !dbg !69
  %11 = load ptr, ptr %3, align 8, !dbg !70
  %12 = getelementptr inbounds %struct.nn_chunkref, ptr %11, i32 0, i32 0, !dbg !71
  %13 = getelementptr inbounds [32 x i8], ptr %12, i64 0, i64 0, !dbg !70
  store i8 %10, ptr %13, align 1, !dbg !72
  br label %35, !dbg !73

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8, !dbg !74
  store ptr %15, ptr %5, align 8, !dbg !75
  %16 = load ptr, ptr %5, align 8, !dbg !76
  %17 = getelementptr inbounds %struct.nn_chunkref_chunk, ptr %16, i32 0, i32 0, !dbg !77
  store i8 -1, ptr %17, align 8, !dbg !78
  %18 = load i64, ptr %4, align 8, !dbg !79
  %19 = call ptr @nn_chunk_alloc(i64 noundef %18, i32 noundef 0), !dbg !80
  %20 = load ptr, ptr %5, align 8, !dbg !81
  %21 = getelementptr inbounds %struct.nn_chunkref_chunk, ptr %20, i32 0, i32 1, !dbg !82
  store ptr %19, ptr %21, align 8, !dbg !83
  br label %22, !dbg !84

22:                                               ; preds = %14
  %23 = load ptr, ptr %5, align 8, !dbg !85
  %24 = getelementptr inbounds %struct.nn_chunkref_chunk, ptr %23, i32 0, i32 1, !dbg !85
  %25 = load ptr, ptr %24, align 8, !dbg !85
  %26 = icmp ne ptr %25, null, !dbg !85
  %27 = xor i1 %26, true, !dbg !85
  %28 = zext i1 %27 to i32, !dbg !85
  %29 = sext i32 %28 to i64, !dbg !85
  %30 = icmp ne i64 %29, 0, !dbg !85
  br i1 %30, label %31, label %34, !dbg !88

31:                                               ; preds = %22
  %32 = load ptr, ptr @stderr, align 8, !dbg !89
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 54), !dbg !89
  call void @nn_err_abort() #5, !dbg !89
  unreachable, !dbg !89

34:                                               ; preds = %22
  br label %35, !dbg !88

35:                                               ; preds = %8, %34
  ret void, !dbg !91
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @nn_chunk_alloc(i64 noundef, i32 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_chunkref_init_chunk(ptr noundef %0, ptr noundef %1) #0 !dbg !92 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !95, metadata !DIExpression()), !dbg !96
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata ptr %5, metadata !99, metadata !DIExpression()), !dbg !100
  %6 = load ptr, ptr %3, align 8, !dbg !101
  store ptr %6, ptr %5, align 8, !dbg !102
  %7 = load ptr, ptr %5, align 8, !dbg !103
  %8 = getelementptr inbounds %struct.nn_chunkref_chunk, ptr %7, i32 0, i32 0, !dbg !104
  store i8 -1, ptr %8, align 8, !dbg !105
  %9 = load ptr, ptr %4, align 8, !dbg !106
  %10 = load ptr, ptr %5, align 8, !dbg !107
  %11 = getelementptr inbounds %struct.nn_chunkref_chunk, ptr %10, i32 0, i32 1, !dbg !108
  store ptr %9, ptr %11, align 8, !dbg !109
  ret void, !dbg !110
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_chunkref_term(ptr noundef %0) #0 !dbg !111 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata ptr %3, metadata !116, metadata !DIExpression()), !dbg !117
  %4 = load ptr, ptr %2, align 8, !dbg !118
  %5 = getelementptr inbounds %struct.nn_chunkref, ptr %4, i32 0, i32 0, !dbg !120
  %6 = getelementptr inbounds [32 x i8], ptr %5, i64 0, i64 0, !dbg !118
  %7 = load i8, ptr %6, align 1, !dbg !118
  %8 = zext i8 %7 to i32, !dbg !118
  %9 = icmp eq i32 %8, 255, !dbg !121
  br i1 %9, label %10, label %15, !dbg !122

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !dbg !123
  store ptr %11, ptr %3, align 8, !dbg !125
  %12 = load ptr, ptr %3, align 8, !dbg !126
  %13 = getelementptr inbounds %struct.nn_chunkref_chunk, ptr %12, i32 0, i32 1, !dbg !127
  %14 = load ptr, ptr %13, align 8, !dbg !127
  call void @nn_chunk_free(ptr noundef %14), !dbg !128
  br label %15, !dbg !129

15:                                               ; preds = %10, %1
  ret void, !dbg !130
}

declare void @nn_chunk_free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_chunkref_getchunk(ptr noundef %0) #0 !dbg !131 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata ptr %4, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata ptr %5, metadata !138, metadata !DIExpression()), !dbg !139
  %6 = load ptr, ptr %3, align 8, !dbg !140
  %7 = getelementptr inbounds %struct.nn_chunkref, ptr %6, i32 0, i32 0, !dbg !142
  %8 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 0, !dbg !140
  %9 = load i8, ptr %8, align 1, !dbg !140
  %10 = zext i8 %9 to i32, !dbg !140
  %11 = icmp eq i32 %10, 255, !dbg !143
  br i1 %11, label %12, label %20, !dbg !144

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8, !dbg !145
  store ptr %13, ptr %4, align 8, !dbg !147
  %14 = load ptr, ptr %3, align 8, !dbg !148
  %15 = getelementptr inbounds %struct.nn_chunkref, ptr %14, i32 0, i32 0, !dbg !149
  %16 = getelementptr inbounds [32 x i8], ptr %15, i64 0, i64 0, !dbg !148
  store i8 0, ptr %16, align 1, !dbg !150
  %17 = load ptr, ptr %4, align 8, !dbg !151
  %18 = getelementptr inbounds %struct.nn_chunkref_chunk, ptr %17, i32 0, i32 1, !dbg !152
  %19 = load ptr, ptr %18, align 8, !dbg !152
  store ptr %19, ptr %2, align 8, !dbg !153
  br label %52, !dbg !153

20:                                               ; preds = %1
  %21 = load ptr, ptr %3, align 8, !dbg !154
  %22 = getelementptr inbounds %struct.nn_chunkref, ptr %21, i32 0, i32 0, !dbg !155
  %23 = getelementptr inbounds [32 x i8], ptr %22, i64 0, i64 0, !dbg !154
  %24 = load i8, ptr %23, align 1, !dbg !154
  %25 = zext i8 %24 to i64, !dbg !154
  %26 = call ptr @nn_chunk_alloc(i64 noundef %25, i32 noundef 0), !dbg !156
  store ptr %26, ptr %5, align 8, !dbg !157
  br label %27, !dbg !158

27:                                               ; preds = %20
  %28 = load ptr, ptr %5, align 8, !dbg !159
  %29 = icmp ne ptr %28, null, !dbg !159
  %30 = xor i1 %29, true, !dbg !159
  %31 = zext i1 %30 to i32, !dbg !159
  %32 = sext i32 %31 to i64, !dbg !159
  %33 = icmp ne i64 %32, 0, !dbg !159
  br i1 %33, label %34, label %37, !dbg !162

34:                                               ; preds = %27
  %35 = load ptr, ptr @stderr, align 8, !dbg !163
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 88), !dbg !163
  call void @nn_err_abort() #5, !dbg !163
  unreachable, !dbg !163

37:                                               ; preds = %27
  br label %38, !dbg !162

38:                                               ; preds = %37
  %39 = load ptr, ptr %5, align 8, !dbg !165
  %40 = load ptr, ptr %3, align 8, !dbg !166
  %41 = getelementptr inbounds %struct.nn_chunkref, ptr %40, i32 0, i32 0, !dbg !167
  %42 = getelementptr inbounds [32 x i8], ptr %41, i64 0, i64 1, !dbg !166
  %43 = load ptr, ptr %3, align 8, !dbg !168
  %44 = getelementptr inbounds %struct.nn_chunkref, ptr %43, i32 0, i32 0, !dbg !169
  %45 = getelementptr inbounds [32 x i8], ptr %44, i64 0, i64 0, !dbg !168
  %46 = load i8, ptr %45, align 1, !dbg !168
  %47 = zext i8 %46 to i64, !dbg !168
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 1 %42, i64 %47, i1 false), !dbg !170
  %48 = load ptr, ptr %3, align 8, !dbg !171
  %49 = getelementptr inbounds %struct.nn_chunkref, ptr %48, i32 0, i32 0, !dbg !172
  %50 = getelementptr inbounds [32 x i8], ptr %49, i64 0, i64 0, !dbg !171
  store i8 0, ptr %50, align 1, !dbg !173
  %51 = load ptr, ptr %5, align 8, !dbg !174
  store ptr %51, ptr %2, align 8, !dbg !175
  br label %52, !dbg !175

52:                                               ; preds = %38, %12
  %53 = load ptr, ptr %2, align 8, !dbg !176
  ret ptr %53, !dbg !176
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_chunkref_mv(ptr noundef %0, ptr noundef %1) #0 !dbg !177 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !180, metadata !DIExpression()), !dbg !181
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !182, metadata !DIExpression()), !dbg !183
  %5 = load ptr, ptr %3, align 8, !dbg !184
  %6 = load ptr, ptr %4, align 8, !dbg !185
  %7 = load ptr, ptr %4, align 8, !dbg !186
  %8 = getelementptr inbounds %struct.nn_chunkref, ptr %7, i32 0, i32 0, !dbg !187
  %9 = getelementptr inbounds [32 x i8], ptr %8, i64 0, i64 0, !dbg !186
  %10 = load i8, ptr %9, align 1, !dbg !186
  %11 = zext i8 %10 to i32, !dbg !186
  %12 = icmp eq i32 %11, 255, !dbg !188
  br i1 %12, label %13, label %14, !dbg !186

13:                                               ; preds = %2
  br label %22, !dbg !186

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !dbg !189
  %16 = getelementptr inbounds %struct.nn_chunkref, ptr %15, i32 0, i32 0, !dbg !190
  %17 = getelementptr inbounds [32 x i8], ptr %16, i64 0, i64 0, !dbg !189
  %18 = load i8, ptr %17, align 1, !dbg !189
  %19 = zext i8 %18 to i32, !dbg !189
  %20 = add nsw i32 %19, 1, !dbg !191
  %21 = sext i32 %20 to i64, !dbg !189
  br label %22, !dbg !186

22:                                               ; preds = %14, %13
  %23 = phi i64 [ 16, %13 ], [ %21, %14 ], !dbg !186
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %6, i64 %23, i1 false), !dbg !192
  ret void, !dbg !193
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_chunkref_cp(ptr noundef %0, ptr noundef %1) #0 !dbg !194 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !195, metadata !DIExpression()), !dbg !196
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata ptr %5, metadata !199, metadata !DIExpression()), !dbg !200
  %6 = load ptr, ptr %4, align 8, !dbg !201
  %7 = getelementptr inbounds %struct.nn_chunkref, ptr %6, i32 0, i32 0, !dbg !203
  %8 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 0, !dbg !201
  %9 = load i8, ptr %8, align 1, !dbg !201
  %10 = zext i8 %9 to i32, !dbg !201
  %11 = icmp eq i32 %10, 255, !dbg !204
  br i1 %11, label %12, label %17, !dbg !205

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !dbg !206
  store ptr %13, ptr %5, align 8, !dbg !208
  %14 = load ptr, ptr %5, align 8, !dbg !209
  %15 = getelementptr inbounds %struct.nn_chunkref_chunk, ptr %14, i32 0, i32 1, !dbg !210
  %16 = load ptr, ptr %15, align 8, !dbg !210
  call void @nn_chunk_addref(ptr noundef %16, i32 noundef 1), !dbg !211
  br label %17, !dbg !212

17:                                               ; preds = %12, %2
  %18 = load ptr, ptr %3, align 8, !dbg !213
  %19 = load ptr, ptr %4, align 8, !dbg !214
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 %19, i64 32, i1 false), !dbg !215
  ret void, !dbg !216
}

declare void @nn_chunk_addref(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_chunkref_data(ptr noundef %0) #0 !dbg !217 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !218, metadata !DIExpression()), !dbg !219
  %3 = load ptr, ptr %2, align 8, !dbg !220
  %4 = getelementptr inbounds %struct.nn_chunkref, ptr %3, i32 0, i32 0, !dbg !221
  %5 = getelementptr inbounds [32 x i8], ptr %4, i64 0, i64 0, !dbg !220
  %6 = load i8, ptr %5, align 1, !dbg !220
  %7 = zext i8 %6 to i32, !dbg !220
  %8 = icmp eq i32 %7, 255, !dbg !222
  br i1 %8, label %9, label %13, !dbg !220

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !dbg !223
  %11 = getelementptr inbounds %struct.nn_chunkref_chunk, ptr %10, i32 0, i32 1, !dbg !224
  %12 = load ptr, ptr %11, align 8, !dbg !224
  br label %17, !dbg !220

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 8, !dbg !225
  %15 = getelementptr inbounds %struct.nn_chunkref, ptr %14, i32 0, i32 0, !dbg !226
  %16 = getelementptr inbounds [32 x i8], ptr %15, i64 0, i64 1, !dbg !225
  br label %17, !dbg !220

17:                                               ; preds = %13, %9
  %18 = phi ptr [ %12, %9 ], [ %16, %13 ], !dbg !220
  ret ptr %18, !dbg !227
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nn_chunkref_size(ptr noundef %0) #0 !dbg !228 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !231, metadata !DIExpression()), !dbg !232
  %3 = load ptr, ptr %2, align 8, !dbg !233
  %4 = getelementptr inbounds %struct.nn_chunkref, ptr %3, i32 0, i32 0, !dbg !234
  %5 = getelementptr inbounds [32 x i8], ptr %4, i64 0, i64 0, !dbg !233
  %6 = load i8, ptr %5, align 1, !dbg !233
  %7 = zext i8 %6 to i32, !dbg !233
  %8 = icmp eq i32 %7, 255, !dbg !235
  br i1 %8, label %9, label %14, !dbg !233

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !dbg !236
  %11 = getelementptr inbounds %struct.nn_chunkref_chunk, ptr %10, i32 0, i32 1, !dbg !237
  %12 = load ptr, ptr %11, align 8, !dbg !237
  %13 = call i64 @nn_chunk_size(ptr noundef %12), !dbg !238
  br label %20, !dbg !233

14:                                               ; preds = %1
  %15 = load ptr, ptr %2, align 8, !dbg !239
  %16 = getelementptr inbounds %struct.nn_chunkref, ptr %15, i32 0, i32 0, !dbg !240
  %17 = getelementptr inbounds [32 x i8], ptr %16, i64 0, i64 0, !dbg !239
  %18 = load i8, ptr %17, align 1, !dbg !239
  %19 = zext i8 %18 to i64, !dbg !239
  br label %20, !dbg !233

20:                                               ; preds = %14, %9
  %21 = phi i64 [ %13, %9 ], [ %19, %14 ], !dbg !233
  ret i64 %21, !dbg !241
}

declare i64 @nn_chunk_size(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_chunkref_trim(ptr noundef %0, i64 noundef %1) #0 !dbg !242 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !243, metadata !DIExpression()), !dbg !244
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata ptr %5, metadata !247, metadata !DIExpression()), !dbg !248
  %6 = load ptr, ptr %3, align 8, !dbg !249
  %7 = getelementptr inbounds %struct.nn_chunkref, ptr %6, i32 0, i32 0, !dbg !251
  %8 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 0, !dbg !249
  %9 = load i8, ptr %8, align 1, !dbg !249
  %10 = zext i8 %9 to i32, !dbg !249
  %11 = icmp eq i32 %10, 255, !dbg !252
  br i1 %11, label %12, label %21, !dbg !253

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !dbg !254
  store ptr %13, ptr %5, align 8, !dbg !256
  %14 = load ptr, ptr %5, align 8, !dbg !257
  %15 = getelementptr inbounds %struct.nn_chunkref_chunk, ptr %14, i32 0, i32 1, !dbg !258
  %16 = load ptr, ptr %15, align 8, !dbg !258
  %17 = load i64, ptr %4, align 8, !dbg !259
  %18 = call ptr @nn_chunk_trim(ptr noundef %16, i64 noundef %17), !dbg !260
  %19 = load ptr, ptr %5, align 8, !dbg !261
  %20 = getelementptr inbounds %struct.nn_chunkref_chunk, ptr %19, i32 0, i32 1, !dbg !262
  store ptr %18, ptr %20, align 8, !dbg !263
  br label %62, !dbg !264

21:                                               ; preds = %2
  br label %22, !dbg !265

22:                                               ; preds = %21
  %23 = load ptr, ptr %3, align 8, !dbg !266
  %24 = getelementptr inbounds %struct.nn_chunkref, ptr %23, i32 0, i32 0, !dbg !266
  %25 = getelementptr inbounds [32 x i8], ptr %24, i64 0, i64 0, !dbg !266
  %26 = load i8, ptr %25, align 1, !dbg !266
  %27 = zext i8 %26 to i64, !dbg !266
  %28 = load i64, ptr %4, align 8, !dbg !266
  %29 = icmp uge i64 %27, %28, !dbg !266
  %30 = xor i1 %29, true, !dbg !266
  %31 = zext i1 %30 to i32, !dbg !266
  %32 = sext i32 %31 to i64, !dbg !266
  %33 = icmp ne i64 %32, 0, !dbg !266
  br i1 %33, label %34, label %37, !dbg !269

34:                                               ; preds = %22
  %35 = load ptr, ptr @stderr, align 8, !dbg !270
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 135), !dbg !270
  call void @nn_err_abort() #5, !dbg !270
  unreachable, !dbg !270

37:                                               ; preds = %22
  br label %38, !dbg !269

38:                                               ; preds = %37
  %39 = load ptr, ptr %3, align 8, !dbg !272
  %40 = getelementptr inbounds %struct.nn_chunkref, ptr %39, i32 0, i32 0, !dbg !273
  %41 = getelementptr inbounds [32 x i8], ptr %40, i64 0, i64 1, !dbg !272
  %42 = load ptr, ptr %3, align 8, !dbg !274
  %43 = getelementptr inbounds %struct.nn_chunkref, ptr %42, i32 0, i32 0, !dbg !275
  %44 = load i64, ptr %4, align 8, !dbg !276
  %45 = add i64 1, %44, !dbg !277
  %46 = getelementptr inbounds [32 x i8], ptr %43, i64 0, i64 %45, !dbg !274
  %47 = load ptr, ptr %3, align 8, !dbg !278
  %48 = getelementptr inbounds %struct.nn_chunkref, ptr %47, i32 0, i32 0, !dbg !279
  %49 = getelementptr inbounds [32 x i8], ptr %48, i64 0, i64 0, !dbg !278
  %50 = load i8, ptr %49, align 1, !dbg !278
  %51 = zext i8 %50 to i64, !dbg !278
  %52 = load i64, ptr %4, align 8, !dbg !280
  %53 = sub i64 %51, %52, !dbg !281
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %41, ptr align 1 %46, i64 %53, i1 false), !dbg !282
  %54 = load i64, ptr %4, align 8, !dbg !283
  %55 = load ptr, ptr %3, align 8, !dbg !284
  %56 = getelementptr inbounds %struct.nn_chunkref, ptr %55, i32 0, i32 0, !dbg !285
  %57 = getelementptr inbounds [32 x i8], ptr %56, i64 0, i64 0, !dbg !284
  %58 = load i8, ptr %57, align 1, !dbg !286
  %59 = zext i8 %58 to i64, !dbg !286
  %60 = sub i64 %59, %54, !dbg !286
  %61 = trunc i64 %60 to i8, !dbg !286
  store i8 %61, ptr %57, align 1, !dbg !286
  br label %62, !dbg !287

62:                                               ; preds = %38, %12
  ret void, !dbg !287
}

declare ptr @nn_chunk_trim(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_chunkref_bulkcopy_start(ptr noundef %0, i32 noundef %1) #0 !dbg !288 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !294, metadata !DIExpression()), !dbg !295
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata ptr %5, metadata !298, metadata !DIExpression()), !dbg !299
  %6 = load ptr, ptr %3, align 8, !dbg !300
  %7 = getelementptr inbounds %struct.nn_chunkref, ptr %6, i32 0, i32 0, !dbg !302
  %8 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 0, !dbg !300
  %9 = load i8, ptr %8, align 1, !dbg !300
  %10 = zext i8 %9 to i32, !dbg !300
  %11 = icmp eq i32 %10, 255, !dbg !303
  br i1 %11, label %12, label %18, !dbg !304

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !dbg !305
  store ptr %13, ptr %5, align 8, !dbg !307
  %14 = load ptr, ptr %5, align 8, !dbg !308
  %15 = getelementptr inbounds %struct.nn_chunkref_chunk, ptr %14, i32 0, i32 1, !dbg !309
  %16 = load ptr, ptr %15, align 8, !dbg !309
  %17 = load i32, ptr %4, align 4, !dbg !310
  call void @nn_chunk_addref(ptr noundef %16, i32 noundef %17), !dbg !311
  br label %18, !dbg !312

18:                                               ; preds = %12, %2
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_chunkref_bulkcopy_cp(ptr noundef %0, ptr noundef %1) #0 !dbg !314 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !315, metadata !DIExpression()), !dbg !316
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !317, metadata !DIExpression()), !dbg !318
  %5 = load ptr, ptr %3, align 8, !dbg !319
  %6 = load ptr, ptr %4, align 8, !dbg !320
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %6, i64 32, i1 false), !dbg !321
  ret void, !dbg !322
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/utils/chunkref.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4675d0dac5341bb43cc56c1e087146bc")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 135, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 30)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 135, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 19)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !20, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !21, globals: !33, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "src/utils/chunkref.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4675d0dac5341bb43cc56c1e087146bc")
!21 = !{!22, !27}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !23, line: 24, baseType: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !25, line: 38, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!26 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref_chunk", file: !2, line: 30, size: 128, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !28, file: !2, line: 31, baseType: !22, size: 8)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !28, file: !2, line: 32, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !{!0, !7, !9, !14}
!34 = !{i32 7, !"Dwarf Version", i32 5}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 4}
!37 = !{i32 8, !"PIC Level", i32 2}
!38 = !{i32 7, !"PIE Level", i32 2}
!39 = !{i32 7, !"uwtable", i32 2}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 16.0.0"}
!42 = distinct !DISubprogram(name: "nn_chunkref_init", scope: !2, file: !2, line: 42, type: !43, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !56)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !53}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !47, line: 39, size: 256, elements: !48)
!47 = !DIFile(filename: "./src/utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !46, file: !47, line: 40, baseType: !50, size: 256)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 46, baseType: !55)
!54 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!55 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!56 = !{}
!57 = !DILocalVariable(name: "self", arg: 1, scope: !42, file: !2, line: 42, type: !45)
!58 = !DILocation(line: 42, column: 44, scope: !42)
!59 = !DILocalVariable(name: "size", arg: 2, scope: !42, file: !2, line: 42, type: !53)
!60 = !DILocation(line: 42, column: 57, scope: !42)
!61 = !DILocalVariable(name: "ch", scope: !42, file: !2, line: 44, type: !27)
!62 = !DILocation(line: 44, column: 31, scope: !42)
!63 = !DILocation(line: 46, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !42, file: !2, line: 46, column: 9)
!65 = !DILocation(line: 46, column: 14, scope: !64)
!66 = !DILocation(line: 46, column: 9, scope: !42)
!67 = !DILocation(line: 47, column: 35, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !2, line: 46, column: 33)
!69 = !DILocation(line: 47, column: 25, scope: !68)
!70 = !DILocation(line: 47, column: 9, scope: !68)
!71 = !DILocation(line: 47, column: 15, scope: !68)
!72 = !DILocation(line: 47, column: 23, scope: !68)
!73 = !DILocation(line: 48, column: 9, scope: !68)
!74 = !DILocation(line: 51, column: 38, scope: !42)
!75 = !DILocation(line: 51, column: 8, scope: !42)
!76 = !DILocation(line: 52, column: 5, scope: !42)
!77 = !DILocation(line: 52, column: 9, scope: !42)
!78 = !DILocation(line: 52, column: 13, scope: !42)
!79 = !DILocation(line: 53, column: 33, scope: !42)
!80 = !DILocation(line: 53, column: 17, scope: !42)
!81 = !DILocation(line: 53, column: 5, scope: !42)
!82 = !DILocation(line: 53, column: 9, scope: !42)
!83 = !DILocation(line: 53, column: 15, scope: !42)
!84 = !DILocation(line: 54, column: 5, scope: !42)
!85 = !DILocation(line: 54, column: 5, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 54, column: 5)
!87 = distinct !DILexicalBlock(scope: !42, file: !2, line: 54, column: 5)
!88 = !DILocation(line: 54, column: 5, scope: !87)
!89 = !DILocation(line: 54, column: 5, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !2, line: 54, column: 5)
!91 = !DILocation(line: 55, column: 1, scope: !42)
!92 = distinct !DISubprogram(name: "nn_chunkref_init_chunk", scope: !2, file: !2, line: 57, type: !93, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !56)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !45, !32}
!95 = !DILocalVariable(name: "self", arg: 1, scope: !92, file: !2, line: 57, type: !45)
!96 = !DILocation(line: 57, column: 50, scope: !92)
!97 = !DILocalVariable(name: "chunk", arg: 2, scope: !92, file: !2, line: 57, type: !32)
!98 = !DILocation(line: 57, column: 62, scope: !92)
!99 = !DILocalVariable(name: "ch", scope: !92, file: !2, line: 59, type: !27)
!100 = !DILocation(line: 59, column: 31, scope: !92)
!101 = !DILocation(line: 61, column: 38, scope: !92)
!102 = !DILocation(line: 61, column: 8, scope: !92)
!103 = !DILocation(line: 62, column: 5, scope: !92)
!104 = !DILocation(line: 62, column: 9, scope: !92)
!105 = !DILocation(line: 62, column: 13, scope: !92)
!106 = !DILocation(line: 63, column: 17, scope: !92)
!107 = !DILocation(line: 63, column: 5, scope: !92)
!108 = !DILocation(line: 63, column: 9, scope: !92)
!109 = !DILocation(line: 63, column: 15, scope: !92)
!110 = !DILocation(line: 64, column: 1, scope: !92)
!111 = distinct !DISubprogram(name: "nn_chunkref_term", scope: !2, file: !2, line: 66, type: !112, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !56)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !45}
!114 = !DILocalVariable(name: "self", arg: 1, scope: !111, file: !2, line: 66, type: !45)
!115 = !DILocation(line: 66, column: 44, scope: !111)
!116 = !DILocalVariable(name: "ch", scope: !111, file: !2, line: 68, type: !27)
!117 = !DILocation(line: 68, column: 31, scope: !111)
!118 = !DILocation(line: 70, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !111, file: !2, line: 70, column: 9)
!120 = !DILocation(line: 70, column: 15, scope: !119)
!121 = !DILocation(line: 70, column: 23, scope: !119)
!122 = !DILocation(line: 70, column: 9, scope: !111)
!123 = !DILocation(line: 71, column: 42, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !2, line: 70, column: 32)
!125 = !DILocation(line: 71, column: 12, scope: !124)
!126 = !DILocation(line: 72, column: 24, scope: !124)
!127 = !DILocation(line: 72, column: 28, scope: !124)
!128 = !DILocation(line: 72, column: 9, scope: !124)
!129 = !DILocation(line: 73, column: 5, scope: !124)
!130 = !DILocation(line: 74, column: 1, scope: !111)
!131 = distinct !DISubprogram(name: "nn_chunkref_getchunk", scope: !2, file: !2, line: 76, type: !132, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !56)
!132 = !DISubroutineType(types: !133)
!133 = !{!32, !45}
!134 = !DILocalVariable(name: "self", arg: 1, scope: !131, file: !2, line: 76, type: !45)
!135 = !DILocation(line: 76, column: 49, scope: !131)
!136 = !DILocalVariable(name: "ch", scope: !131, file: !2, line: 78, type: !27)
!137 = !DILocation(line: 78, column: 31, scope: !131)
!138 = !DILocalVariable(name: "chunk", scope: !131, file: !2, line: 79, type: !32)
!139 = !DILocation(line: 79, column: 11, scope: !131)
!140 = !DILocation(line: 81, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !131, file: !2, line: 81, column: 9)
!142 = !DILocation(line: 81, column: 15, scope: !141)
!143 = !DILocation(line: 81, column: 23, scope: !141)
!144 = !DILocation(line: 81, column: 9, scope: !131)
!145 = !DILocation(line: 82, column: 42, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !2, line: 81, column: 32)
!147 = !DILocation(line: 82, column: 12, scope: !146)
!148 = !DILocation(line: 83, column: 9, scope: !146)
!149 = !DILocation(line: 83, column: 15, scope: !146)
!150 = !DILocation(line: 83, column: 23, scope: !146)
!151 = !DILocation(line: 84, column: 16, scope: !146)
!152 = !DILocation(line: 84, column: 20, scope: !146)
!153 = !DILocation(line: 84, column: 9, scope: !146)
!154 = !DILocation(line: 87, column: 29, scope: !131)
!155 = !DILocation(line: 87, column: 35, scope: !131)
!156 = !DILocation(line: 87, column: 13, scope: !131)
!157 = !DILocation(line: 87, column: 11, scope: !131)
!158 = !DILocation(line: 88, column: 5, scope: !131)
!159 = !DILocation(line: 88, column: 5, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !2, line: 88, column: 5)
!161 = distinct !DILexicalBlock(scope: !131, file: !2, line: 88, column: 5)
!162 = !DILocation(line: 88, column: 5, scope: !161)
!163 = !DILocation(line: 88, column: 5, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !2, line: 88, column: 5)
!165 = !DILocation(line: 89, column: 13, scope: !131)
!166 = !DILocation(line: 89, column: 21, scope: !131)
!167 = !DILocation(line: 89, column: 27, scope: !131)
!168 = !DILocation(line: 89, column: 36, scope: !131)
!169 = !DILocation(line: 89, column: 42, scope: !131)
!170 = !DILocation(line: 89, column: 5, scope: !131)
!171 = !DILocation(line: 90, column: 5, scope: !131)
!172 = !DILocation(line: 90, column: 11, scope: !131)
!173 = !DILocation(line: 90, column: 19, scope: !131)
!174 = !DILocation(line: 91, column: 12, scope: !131)
!175 = !DILocation(line: 91, column: 5, scope: !131)
!176 = !DILocation(line: 92, column: 1, scope: !131)
!177 = distinct !DISubprogram(name: "nn_chunkref_mv", scope: !2, file: !2, line: 94, type: !178, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !56)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !45, !45}
!180 = !DILocalVariable(name: "dst", arg: 1, scope: !177, file: !2, line: 94, type: !45)
!181 = !DILocation(line: 94, column: 42, scope: !177)
!182 = !DILocalVariable(name: "src", arg: 2, scope: !177, file: !2, line: 94, type: !45)
!183 = !DILocation(line: 94, column: 67, scope: !177)
!184 = !DILocation(line: 96, column: 13, scope: !177)
!185 = !DILocation(line: 96, column: 18, scope: !177)
!186 = !DILocation(line: 96, column: 23, scope: !177)
!187 = !DILocation(line: 96, column: 28, scope: !177)
!188 = !DILocation(line: 96, column: 36, scope: !177)
!189 = !DILocation(line: 97, column: 45, scope: !177)
!190 = !DILocation(line: 97, column: 50, scope: !177)
!191 = !DILocation(line: 97, column: 58, scope: !177)
!192 = !DILocation(line: 96, column: 5, scope: !177)
!193 = !DILocation(line: 98, column: 1, scope: !177)
!194 = distinct !DISubprogram(name: "nn_chunkref_cp", scope: !2, file: !2, line: 100, type: !178, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !56)
!195 = !DILocalVariable(name: "dst", arg: 1, scope: !194, file: !2, line: 100, type: !45)
!196 = !DILocation(line: 100, column: 42, scope: !194)
!197 = !DILocalVariable(name: "src", arg: 2, scope: !194, file: !2, line: 100, type: !45)
!198 = !DILocation(line: 100, column: 67, scope: !194)
!199 = !DILocalVariable(name: "ch", scope: !194, file: !2, line: 102, type: !27)
!200 = !DILocation(line: 102, column: 31, scope: !194)
!201 = !DILocation(line: 104, column: 9, scope: !202)
!202 = distinct !DILexicalBlock(scope: !194, file: !2, line: 104, column: 9)
!203 = !DILocation(line: 104, column: 14, scope: !202)
!204 = !DILocation(line: 104, column: 22, scope: !202)
!205 = !DILocation(line: 104, column: 9, scope: !194)
!206 = !DILocation(line: 105, column: 42, scope: !207)
!207 = distinct !DILexicalBlock(scope: !202, file: !2, line: 104, column: 31)
!208 = !DILocation(line: 105, column: 12, scope: !207)
!209 = !DILocation(line: 106, column: 26, scope: !207)
!210 = !DILocation(line: 106, column: 30, scope: !207)
!211 = !DILocation(line: 106, column: 9, scope: !207)
!212 = !DILocation(line: 107, column: 5, scope: !207)
!213 = !DILocation(line: 108, column: 13, scope: !194)
!214 = !DILocation(line: 108, column: 18, scope: !194)
!215 = !DILocation(line: 108, column: 5, scope: !194)
!216 = !DILocation(line: 109, column: 1, scope: !194)
!217 = distinct !DISubprogram(name: "nn_chunkref_data", scope: !2, file: !2, line: 111, type: !132, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !56)
!218 = !DILocalVariable(name: "self", arg: 1, scope: !217, file: !2, line: 111, type: !45)
!219 = !DILocation(line: 111, column: 45, scope: !217)
!220 = !DILocation(line: 113, column: 12, scope: !217)
!221 = !DILocation(line: 113, column: 18, scope: !217)
!222 = !DILocation(line: 113, column: 26, scope: !217)
!223 = !DILocation(line: 114, column: 38, scope: !217)
!224 = !DILocation(line: 114, column: 45, scope: !217)
!225 = !DILocation(line: 115, column: 10, scope: !217)
!226 = !DILocation(line: 115, column: 16, scope: !217)
!227 = !DILocation(line: 113, column: 5, scope: !217)
!228 = distinct !DISubprogram(name: "nn_chunkref_size", scope: !2, file: !2, line: 118, type: !229, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !56)
!229 = !DISubroutineType(types: !230)
!230 = !{!53, !45}
!231 = !DILocalVariable(name: "self", arg: 1, scope: !228, file: !2, line: 118, type: !45)
!232 = !DILocation(line: 118, column: 46, scope: !228)
!233 = !DILocation(line: 120, column: 12, scope: !228)
!234 = !DILocation(line: 120, column: 18, scope: !228)
!235 = !DILocation(line: 120, column: 26, scope: !228)
!236 = !DILocation(line: 121, column: 53, scope: !228)
!237 = !DILocation(line: 121, column: 60, scope: !228)
!238 = !DILocation(line: 121, column: 9, scope: !228)
!239 = !DILocation(line: 122, column: 9, scope: !228)
!240 = !DILocation(line: 122, column: 15, scope: !228)
!241 = !DILocation(line: 120, column: 5, scope: !228)
!242 = distinct !DISubprogram(name: "nn_chunkref_trim", scope: !2, file: !2, line: 125, type: !43, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !56)
!243 = !DILocalVariable(name: "self", arg: 1, scope: !242, file: !2, line: 125, type: !45)
!244 = !DILocation(line: 125, column: 44, scope: !242)
!245 = !DILocalVariable(name: "n", arg: 2, scope: !242, file: !2, line: 125, type: !53)
!246 = !DILocation(line: 125, column: 57, scope: !242)
!247 = !DILocalVariable(name: "ch", scope: !242, file: !2, line: 127, type: !27)
!248 = !DILocation(line: 127, column: 31, scope: !242)
!249 = !DILocation(line: 129, column: 9, scope: !250)
!250 = distinct !DILexicalBlock(scope: !242, file: !2, line: 129, column: 9)
!251 = !DILocation(line: 129, column: 15, scope: !250)
!252 = !DILocation(line: 129, column: 23, scope: !250)
!253 = !DILocation(line: 129, column: 9, scope: !242)
!254 = !DILocation(line: 130, column: 42, scope: !255)
!255 = distinct !DILexicalBlock(scope: !250, file: !2, line: 129, column: 32)
!256 = !DILocation(line: 130, column: 12, scope: !255)
!257 = !DILocation(line: 131, column: 36, scope: !255)
!258 = !DILocation(line: 131, column: 40, scope: !255)
!259 = !DILocation(line: 131, column: 47, scope: !255)
!260 = !DILocation(line: 131, column: 21, scope: !255)
!261 = !DILocation(line: 131, column: 9, scope: !255)
!262 = !DILocation(line: 131, column: 13, scope: !255)
!263 = !DILocation(line: 131, column: 19, scope: !255)
!264 = !DILocation(line: 132, column: 9, scope: !255)
!265 = !DILocation(line: 135, column: 5, scope: !242)
!266 = !DILocation(line: 135, column: 5, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !2, line: 135, column: 5)
!268 = distinct !DILexicalBlock(scope: !242, file: !2, line: 135, column: 5)
!269 = !DILocation(line: 135, column: 5, scope: !268)
!270 = !DILocation(line: 135, column: 5, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !2, line: 135, column: 5)
!272 = !DILocation(line: 136, column: 15, scope: !242)
!273 = !DILocation(line: 136, column: 21, scope: !242)
!274 = !DILocation(line: 136, column: 31, scope: !242)
!275 = !DILocation(line: 136, column: 37, scope: !242)
!276 = !DILocation(line: 136, column: 46, scope: !242)
!277 = !DILocation(line: 136, column: 44, scope: !242)
!278 = !DILocation(line: 136, column: 50, scope: !242)
!279 = !DILocation(line: 136, column: 56, scope: !242)
!280 = !DILocation(line: 136, column: 66, scope: !242)
!281 = !DILocation(line: 136, column: 64, scope: !242)
!282 = !DILocation(line: 136, column: 5, scope: !242)
!283 = !DILocation(line: 137, column: 22, scope: !242)
!284 = !DILocation(line: 137, column: 5, scope: !242)
!285 = !DILocation(line: 137, column: 11, scope: !242)
!286 = !DILocation(line: 137, column: 19, scope: !242)
!287 = !DILocation(line: 138, column: 1, scope: !242)
!288 = distinct !DISubprogram(name: "nn_chunkref_bulkcopy_start", scope: !2, file: !2, line: 140, type: !289, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !56)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !45, !291}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !23, line: 26, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !25, line: 42, baseType: !293)
!293 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!294 = !DILocalVariable(name: "self", arg: 1, scope: !288, file: !2, line: 140, type: !45)
!295 = !DILocation(line: 140, column: 54, scope: !288)
!296 = !DILocalVariable(name: "copies", arg: 2, scope: !288, file: !2, line: 140, type: !291)
!297 = !DILocation(line: 140, column: 69, scope: !288)
!298 = !DILocalVariable(name: "ch", scope: !288, file: !2, line: 142, type: !27)
!299 = !DILocation(line: 142, column: 31, scope: !288)
!300 = !DILocation(line: 144, column: 9, scope: !301)
!301 = distinct !DILexicalBlock(scope: !288, file: !2, line: 144, column: 9)
!302 = !DILocation(line: 144, column: 15, scope: !301)
!303 = !DILocation(line: 144, column: 23, scope: !301)
!304 = !DILocation(line: 144, column: 9, scope: !288)
!305 = !DILocation(line: 145, column: 42, scope: !306)
!306 = distinct !DILexicalBlock(scope: !301, file: !2, line: 144, column: 32)
!307 = !DILocation(line: 145, column: 12, scope: !306)
!308 = !DILocation(line: 146, column: 26, scope: !306)
!309 = !DILocation(line: 146, column: 30, scope: !306)
!310 = !DILocation(line: 146, column: 37, scope: !306)
!311 = !DILocation(line: 146, column: 9, scope: !306)
!312 = !DILocation(line: 147, column: 5, scope: !306)
!313 = !DILocation(line: 148, column: 1, scope: !288)
!314 = distinct !DISubprogram(name: "nn_chunkref_bulkcopy_cp", scope: !2, file: !2, line: 150, type: !178, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !56)
!315 = !DILocalVariable(name: "dst", arg: 1, scope: !314, file: !2, line: 150, type: !45)
!316 = !DILocation(line: 150, column: 51, scope: !314)
!317 = !DILocalVariable(name: "src", arg: 2, scope: !314, file: !2, line: 150, type: !45)
!318 = !DILocation(line: 150, column: 76, scope: !314)
!319 = !DILocation(line: 152, column: 13, scope: !314)
!320 = !DILocation(line: 152, column: 18, scope: !314)
!321 = !DILocation(line: 152, column: 5, scope: !314)
!322 = !DILocation(line: 153, column: 1, scope: !314)
