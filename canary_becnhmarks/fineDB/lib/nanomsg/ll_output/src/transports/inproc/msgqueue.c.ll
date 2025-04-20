; ModuleID = './src/transports/inproc/msgqueue.c'
source_filename = "./src/transports/inproc/msgqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_msgqueue = type { %struct.anon, %struct.anon.0, i64, i64, i64, ptr }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.nn_msgqueue_chunk = type { [126 x %struct.nn_msg], ptr }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [35 x i8] c"./src/transports/inproc/msgqueue.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [34 x i8] c"self->in.chunk == self->out.chunk\00", align 1, !dbg !22

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_msgqueue_init(ptr noundef %0, i64 noundef %1) #0 !dbg !40 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !90, metadata !DIExpression()), !dbg !91
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata ptr %5, metadata !94, metadata !DIExpression()), !dbg !95
  %6 = load ptr, ptr %3, align 8, !dbg !96
  %7 = getelementptr inbounds %struct.nn_msgqueue, ptr %6, i32 0, i32 2, !dbg !97
  store i64 0, ptr %7, align 8, !dbg !98
  %8 = load ptr, ptr %3, align 8, !dbg !99
  %9 = getelementptr inbounds %struct.nn_msgqueue, ptr %8, i32 0, i32 3, !dbg !100
  store i64 0, ptr %9, align 8, !dbg !101
  %10 = load i64, ptr %4, align 8, !dbg !102
  %11 = load ptr, ptr %3, align 8, !dbg !103
  %12 = getelementptr inbounds %struct.nn_msgqueue, ptr %11, i32 0, i32 4, !dbg !104
  store i64 %10, ptr %12, align 8, !dbg !105
  %13 = call ptr @nn_alloc_(i64 noundef 8072), !dbg !106
  store ptr %13, ptr %5, align 8, !dbg !107
  br label %14, !dbg !108

14:                                               ; preds = %2
  %15 = load ptr, ptr %5, align 8, !dbg !109
  %16 = icmp ne ptr %15, null, !dbg !109
  %17 = xor i1 %16, true, !dbg !109
  %18 = zext i1 %17 to i32, !dbg !109
  %19 = sext i32 %18 to i64, !dbg !109
  %20 = icmp ne i64 %19, 0, !dbg !109
  br i1 %20, label %21, label %24, !dbg !112

21:                                               ; preds = %14
  %22 = load ptr, ptr @stderr, align 8, !dbg !113
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 40), !dbg !113
  call void @nn_err_abort() #4, !dbg !113
  unreachable, !dbg !113

24:                                               ; preds = %14
  br label %25, !dbg !112

25:                                               ; preds = %24
  %26 = load ptr, ptr %5, align 8, !dbg !115
  %27 = getelementptr inbounds %struct.nn_msgqueue_chunk, ptr %26, i32 0, i32 1, !dbg !116
  store ptr null, ptr %27, align 8, !dbg !117
  %28 = load ptr, ptr %5, align 8, !dbg !118
  %29 = load ptr, ptr %3, align 8, !dbg !119
  %30 = getelementptr inbounds %struct.nn_msgqueue, ptr %29, i32 0, i32 0, !dbg !120
  %31 = getelementptr inbounds %struct.anon, ptr %30, i32 0, i32 0, !dbg !121
  store ptr %28, ptr %31, align 8, !dbg !122
  %32 = load ptr, ptr %3, align 8, !dbg !123
  %33 = getelementptr inbounds %struct.nn_msgqueue, ptr %32, i32 0, i32 0, !dbg !124
  %34 = getelementptr inbounds %struct.anon, ptr %33, i32 0, i32 1, !dbg !125
  store i32 0, ptr %34, align 8, !dbg !126
  %35 = load ptr, ptr %5, align 8, !dbg !127
  %36 = load ptr, ptr %3, align 8, !dbg !128
  %37 = getelementptr inbounds %struct.nn_msgqueue, ptr %36, i32 0, i32 1, !dbg !129
  %38 = getelementptr inbounds %struct.anon.0, ptr %37, i32 0, i32 0, !dbg !130
  store ptr %35, ptr %38, align 8, !dbg !131
  %39 = load ptr, ptr %3, align 8, !dbg !132
  %40 = getelementptr inbounds %struct.nn_msgqueue, ptr %39, i32 0, i32 1, !dbg !133
  %41 = getelementptr inbounds %struct.anon.0, ptr %40, i32 0, i32 1, !dbg !134
  store i32 0, ptr %41, align 8, !dbg !135
  %42 = load ptr, ptr %3, align 8, !dbg !136
  %43 = getelementptr inbounds %struct.nn_msgqueue, ptr %42, i32 0, i32 5, !dbg !137
  store ptr null, ptr %43, align 8, !dbg !138
  ret void, !dbg !139
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_msgqueue_term(ptr noundef %0) #0 !dbg !140 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nn_msg, align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata ptr %3, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata ptr %4, metadata !147, metadata !DIExpression()), !dbg !148
  br label %5, !dbg !149

5:                                                ; preds = %1, %28
  %6 = load ptr, ptr %2, align 8, !dbg !150
  %7 = call i32 @nn_msgqueue_recv(ptr noundef %6, ptr noundef %4), !dbg !152
  store i32 %7, ptr %3, align 4, !dbg !153
  %8 = load i32, ptr %3, align 4, !dbg !154
  %9 = icmp eq i32 %8, -11, !dbg !156
  br i1 %9, label %10, label %11, !dbg !157

10:                                               ; preds = %5
  br label %29, !dbg !158

11:                                               ; preds = %5
  br label %12, !dbg !159

12:                                               ; preds = %11
  %13 = load i32, ptr %3, align 4, !dbg !160
  %14 = icmp sge i32 %13, 0, !dbg !160
  %15 = xor i1 %14, true, !dbg !160
  %16 = zext i1 %15 to i32, !dbg !160
  %17 = sext i32 %16 to i64, !dbg !160
  %18 = icmp ne i64 %17, 0, !dbg !160
  br i1 %18, label %19, label %27, !dbg !163

19:                                               ; preds = %12
  %20 = load ptr, ptr @stderr, align 8, !dbg !164
  %21 = load i32, ptr %3, align 4, !dbg !164
  %22 = sub nsw i32 0, %21, !dbg !164
  %23 = call ptr @nn_err_strerror(i32 noundef %22), !dbg !164
  %24 = load i32, ptr %3, align 4, !dbg !164
  %25 = sub nsw i32 0, %24, !dbg !164
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.2, ptr noundef %23, i32 noundef %25, ptr noundef @.str.1, i32 noundef 61), !dbg !164
  call void @nn_err_abort() #4, !dbg !164
  unreachable, !dbg !164

27:                                               ; preds = %12
  br label %28, !dbg !163

28:                                               ; preds = %27
  call void @nn_msg_term(ptr noundef %4), !dbg !166
  br label %5, !dbg !149, !llvm.loop !167

29:                                               ; preds = %10
  br label %30, !dbg !169

30:                                               ; preds = %29
  %31 = load ptr, ptr %2, align 8, !dbg !170
  %32 = getelementptr inbounds %struct.nn_msgqueue, ptr %31, i32 0, i32 1, !dbg !170
  %33 = getelementptr inbounds %struct.anon.0, ptr %32, i32 0, i32 0, !dbg !170
  %34 = load ptr, ptr %33, align 8, !dbg !170
  %35 = load ptr, ptr %2, align 8, !dbg !170
  %36 = getelementptr inbounds %struct.nn_msgqueue, ptr %35, i32 0, i32 0, !dbg !170
  %37 = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 0, !dbg !170
  %38 = load ptr, ptr %37, align 8, !dbg !170
  %39 = icmp eq ptr %34, %38, !dbg !170
  %40 = xor i1 %39, true, !dbg !170
  %41 = zext i1 %40 to i32, !dbg !170
  %42 = sext i32 %41 to i64, !dbg !170
  %43 = icmp ne i64 %42, 0, !dbg !170
  br i1 %43, label %44, label %47, !dbg !173

44:                                               ; preds = %30
  %45 = load ptr, ptr @stderr, align 8, !dbg !174
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 67), !dbg !174
  call void @nn_err_abort() #4, !dbg !174
  unreachable, !dbg !174

47:                                               ; preds = %30
  br label %48, !dbg !173

48:                                               ; preds = %47
  %49 = load ptr, ptr %2, align 8, !dbg !176
  %50 = getelementptr inbounds %struct.nn_msgqueue, ptr %49, i32 0, i32 1, !dbg !177
  %51 = getelementptr inbounds %struct.anon.0, ptr %50, i32 0, i32 0, !dbg !178
  %52 = load ptr, ptr %51, align 8, !dbg !178
  call void @nn_free(ptr noundef %52), !dbg !179
  %53 = load ptr, ptr %2, align 8, !dbg !180
  %54 = getelementptr inbounds %struct.nn_msgqueue, ptr %53, i32 0, i32 5, !dbg !182
  %55 = load ptr, ptr %54, align 8, !dbg !182
  %56 = icmp ne ptr %55, null, !dbg !180
  br i1 %56, label %57, label %61, !dbg !183

57:                                               ; preds = %48
  %58 = load ptr, ptr %2, align 8, !dbg !184
  %59 = getelementptr inbounds %struct.nn_msgqueue, ptr %58, i32 0, i32 5, !dbg !185
  %60 = load ptr, ptr %59, align 8, !dbg !185
  call void @nn_free(ptr noundef %60), !dbg !186
  br label %61, !dbg !186

61:                                               ; preds = %57, %48
  ret void, !dbg !187
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_msgqueue_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !188 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !192, metadata !DIExpression()), !dbg !193
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata ptr %6, metadata !196, metadata !DIExpression()), !dbg !197
  %7 = load ptr, ptr %4, align 8, !dbg !198
  %8 = getelementptr inbounds %struct.nn_msgqueue, ptr %7, i32 0, i32 2, !dbg !198
  %9 = load i64, ptr %8, align 8, !dbg !198
  %10 = icmp ne i64 %9, 0, !dbg !198
  %11 = xor i1 %10, true, !dbg !198
  %12 = zext i1 %11 to i32, !dbg !198
  %13 = sext i32 %12 to i64, !dbg !198
  %14 = icmp ne i64 %13, 0, !dbg !198
  br i1 %14, label %15, label %16, !dbg !200

15:                                               ; preds = %2
  store i32 -11, ptr %3, align 4, !dbg !201
  br label %90, !dbg !201

16:                                               ; preds = %2
  %17 = load ptr, ptr %5, align 8, !dbg !202
  %18 = load ptr, ptr %4, align 8, !dbg !203
  %19 = getelementptr inbounds %struct.nn_msgqueue, ptr %18, i32 0, i32 1, !dbg !204
  %20 = getelementptr inbounds %struct.anon.0, ptr %19, i32 0, i32 0, !dbg !205
  %21 = load ptr, ptr %20, align 8, !dbg !205
  %22 = getelementptr inbounds %struct.nn_msgqueue_chunk, ptr %21, i32 0, i32 0, !dbg !206
  %23 = load ptr, ptr %4, align 8, !dbg !207
  %24 = getelementptr inbounds %struct.nn_msgqueue, ptr %23, i32 0, i32 1, !dbg !208
  %25 = getelementptr inbounds %struct.anon.0, ptr %24, i32 0, i32 1, !dbg !209
  %26 = load i32, ptr %25, align 8, !dbg !209
  %27 = sext i32 %26 to i64, !dbg !203
  %28 = getelementptr inbounds [126 x %struct.nn_msg], ptr %22, i64 0, i64 %27, !dbg !203
  call void @nn_msg_mv(ptr noundef %17, ptr noundef %28), !dbg !210
  %29 = load ptr, ptr %4, align 8, !dbg !211
  %30 = getelementptr inbounds %struct.nn_msgqueue, ptr %29, i32 0, i32 1, !dbg !212
  %31 = getelementptr inbounds %struct.anon.0, ptr %30, i32 0, i32 1, !dbg !213
  %32 = load i32, ptr %31, align 8, !dbg !214
  %33 = add nsw i32 %32, 1, !dbg !214
  store i32 %33, ptr %31, align 8, !dbg !214
  %34 = load ptr, ptr %4, align 8, !dbg !215
  %35 = getelementptr inbounds %struct.nn_msgqueue, ptr %34, i32 0, i32 1, !dbg !215
  %36 = getelementptr inbounds %struct.anon.0, ptr %35, i32 0, i32 1, !dbg !215
  %37 = load i32, ptr %36, align 8, !dbg !215
  %38 = icmp eq i32 %37, 126, !dbg !215
  %39 = zext i1 %38 to i32, !dbg !215
  %40 = sext i32 %39 to i64, !dbg !215
  %41 = icmp ne i64 %40, 0, !dbg !215
  br i1 %41, label %42, label %74, !dbg !217

42:                                               ; preds = %16
  %43 = load ptr, ptr %4, align 8, !dbg !218
  %44 = getelementptr inbounds %struct.nn_msgqueue, ptr %43, i32 0, i32 1, !dbg !220
  %45 = getelementptr inbounds %struct.anon.0, ptr %44, i32 0, i32 0, !dbg !221
  %46 = load ptr, ptr %45, align 8, !dbg !221
  store ptr %46, ptr %6, align 8, !dbg !222
  %47 = load ptr, ptr %4, align 8, !dbg !223
  %48 = getelementptr inbounds %struct.nn_msgqueue, ptr %47, i32 0, i32 1, !dbg !224
  %49 = getelementptr inbounds %struct.anon.0, ptr %48, i32 0, i32 0, !dbg !225
  %50 = load ptr, ptr %49, align 8, !dbg !225
  %51 = getelementptr inbounds %struct.nn_msgqueue_chunk, ptr %50, i32 0, i32 1, !dbg !226
  %52 = load ptr, ptr %51, align 8, !dbg !226
  %53 = load ptr, ptr %4, align 8, !dbg !227
  %54 = getelementptr inbounds %struct.nn_msgqueue, ptr %53, i32 0, i32 1, !dbg !228
  %55 = getelementptr inbounds %struct.anon.0, ptr %54, i32 0, i32 0, !dbg !229
  store ptr %52, ptr %55, align 8, !dbg !230
  %56 = load ptr, ptr %4, align 8, !dbg !231
  %57 = getelementptr inbounds %struct.nn_msgqueue, ptr %56, i32 0, i32 1, !dbg !232
  %58 = getelementptr inbounds %struct.anon.0, ptr %57, i32 0, i32 1, !dbg !233
  store i32 0, ptr %58, align 8, !dbg !234
  %59 = load ptr, ptr %4, align 8, !dbg !235
  %60 = getelementptr inbounds %struct.nn_msgqueue, ptr %59, i32 0, i32 5, !dbg !235
  %61 = load ptr, ptr %60, align 8, !dbg !235
  %62 = icmp ne ptr %61, null, !dbg !235
  %63 = xor i1 %62, true, !dbg !235
  %64 = zext i1 %63 to i32, !dbg !235
  %65 = sext i32 %64 to i64, !dbg !235
  %66 = icmp ne i64 %65, 0, !dbg !235
  br i1 %66, label %67, label %71, !dbg !237

67:                                               ; preds = %42
  %68 = load ptr, ptr %6, align 8, !dbg !238
  %69 = load ptr, ptr %4, align 8, !dbg !239
  %70 = getelementptr inbounds %struct.nn_msgqueue, ptr %69, i32 0, i32 5, !dbg !240
  store ptr %68, ptr %70, align 8, !dbg !241
  br label %73, !dbg !239

71:                                               ; preds = %42
  %72 = load ptr, ptr %6, align 8, !dbg !242
  call void @nn_free(ptr noundef %72), !dbg !243
  br label %73

73:                                               ; preds = %71, %67
  br label %74, !dbg !244

74:                                               ; preds = %73, %16
  %75 = load ptr, ptr %4, align 8, !dbg !245
  %76 = getelementptr inbounds %struct.nn_msgqueue, ptr %75, i32 0, i32 2, !dbg !246
  %77 = load i64, ptr %76, align 8, !dbg !247
  %78 = add i64 %77, -1, !dbg !247
  store i64 %78, ptr %76, align 8, !dbg !247
  %79 = load ptr, ptr %5, align 8, !dbg !248
  %80 = getelementptr inbounds %struct.nn_msg, ptr %79, i32 0, i32 0, !dbg !249
  %81 = call i64 @nn_chunkref_size(ptr noundef %80), !dbg !250
  %82 = load ptr, ptr %5, align 8, !dbg !251
  %83 = getelementptr inbounds %struct.nn_msg, ptr %82, i32 0, i32 1, !dbg !252
  %84 = call i64 @nn_chunkref_size(ptr noundef %83), !dbg !253
  %85 = add i64 %81, %84, !dbg !254
  %86 = load ptr, ptr %4, align 8, !dbg !255
  %87 = getelementptr inbounds %struct.nn_msgqueue, ptr %86, i32 0, i32 3, !dbg !256
  %88 = load i64, ptr %87, align 8, !dbg !257
  %89 = sub i64 %88, %85, !dbg !257
  store i64 %89, ptr %87, align 8, !dbg !257
  store i32 0, ptr %3, align 4, !dbg !258
  br label %90, !dbg !258

90:                                               ; preds = %74, %15
  %91 = load i32, ptr %3, align 4, !dbg !259
  ret i32 %91, !dbg !259
}

declare ptr @nn_err_strerror(i32 noundef) #2

declare void @nn_msg_term(ptr noundef) #2

declare void @nn_free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_msgqueue_empty(ptr noundef %0) #0 !dbg !260 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !263, metadata !DIExpression()), !dbg !264
  %3 = load ptr, ptr %2, align 8, !dbg !265
  %4 = getelementptr inbounds %struct.nn_msgqueue, ptr %3, i32 0, i32 2, !dbg !266
  %5 = load i64, ptr %4, align 8, !dbg !266
  %6 = icmp eq i64 %5, 0, !dbg !267
  %7 = zext i1 %6 to i64, !dbg !265
  %8 = select i1 %6, i32 1, i32 0, !dbg !265
  ret i32 %8, !dbg !268
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_msgqueue_send(ptr noundef %0, ptr noundef %1) #0 !dbg !269 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !270, metadata !DIExpression()), !dbg !271
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !272, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.declare(metadata ptr %6, metadata !274, metadata !DIExpression()), !dbg !275
  %7 = load ptr, ptr %5, align 8, !dbg !276
  %8 = getelementptr inbounds %struct.nn_msg, ptr %7, i32 0, i32 0, !dbg !277
  %9 = call i64 @nn_chunkref_size(ptr noundef %8), !dbg !278
  %10 = load ptr, ptr %5, align 8, !dbg !279
  %11 = getelementptr inbounds %struct.nn_msg, ptr %10, i32 0, i32 1, !dbg !280
  %12 = call i64 @nn_chunkref_size(ptr noundef %11), !dbg !281
  %13 = add i64 %9, %12, !dbg !282
  store i64 %13, ptr %6, align 8, !dbg !283
  %14 = load ptr, ptr %4, align 8, !dbg !284
  %15 = getelementptr inbounds %struct.nn_msgqueue, ptr %14, i32 0, i32 2, !dbg !284
  %16 = load i64, ptr %15, align 8, !dbg !284
  %17 = icmp ugt i64 %16, 0, !dbg !284
  br i1 %17, label %18, label %28, !dbg !284

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 8, !dbg !284
  %20 = getelementptr inbounds %struct.nn_msgqueue, ptr %19, i32 0, i32 3, !dbg !284
  %21 = load i64, ptr %20, align 8, !dbg !284
  %22 = load i64, ptr %6, align 8, !dbg !284
  %23 = add i64 %21, %22, !dbg !284
  %24 = load ptr, ptr %4, align 8, !dbg !284
  %25 = getelementptr inbounds %struct.nn_msgqueue, ptr %24, i32 0, i32 4, !dbg !284
  %26 = load i64, ptr %25, align 8, !dbg !284
  %27 = icmp uge i64 %23, %26, !dbg !284
  br label %28

28:                                               ; preds = %18, %2
  %29 = phi i1 [ false, %2 ], [ %27, %18 ], !dbg !286
  %30 = zext i1 %29 to i32, !dbg !284
  %31 = sext i32 %30 to i64, !dbg !284
  %32 = icmp ne i64 %31, 0, !dbg !284
  br i1 %32, label %33, label %34, !dbg !287

33:                                               ; preds = %28
  store i32 -11, ptr %3, align 4, !dbg !288
  br label %121, !dbg !288

34:                                               ; preds = %28
  %35 = load ptr, ptr %4, align 8, !dbg !289
  %36 = getelementptr inbounds %struct.nn_msgqueue, ptr %35, i32 0, i32 2, !dbg !290
  %37 = load i64, ptr %36, align 8, !dbg !291
  %38 = add i64 %37, 1, !dbg !291
  store i64 %38, ptr %36, align 8, !dbg !291
  %39 = load i64, ptr %6, align 8, !dbg !292
  %40 = load ptr, ptr %4, align 8, !dbg !293
  %41 = getelementptr inbounds %struct.nn_msgqueue, ptr %40, i32 0, i32 3, !dbg !294
  %42 = load i64, ptr %41, align 8, !dbg !295
  %43 = add i64 %42, %39, !dbg !295
  store i64 %43, ptr %41, align 8, !dbg !295
  %44 = load ptr, ptr %4, align 8, !dbg !296
  %45 = getelementptr inbounds %struct.nn_msgqueue, ptr %44, i32 0, i32 0, !dbg !297
  %46 = getelementptr inbounds %struct.anon, ptr %45, i32 0, i32 0, !dbg !298
  %47 = load ptr, ptr %46, align 8, !dbg !298
  %48 = getelementptr inbounds %struct.nn_msgqueue_chunk, ptr %47, i32 0, i32 0, !dbg !299
  %49 = load ptr, ptr %4, align 8, !dbg !300
  %50 = getelementptr inbounds %struct.nn_msgqueue, ptr %49, i32 0, i32 0, !dbg !301
  %51 = getelementptr inbounds %struct.anon, ptr %50, i32 0, i32 1, !dbg !302
  %52 = load i32, ptr %51, align 8, !dbg !302
  %53 = sext i32 %52 to i64, !dbg !296
  %54 = getelementptr inbounds [126 x %struct.nn_msg], ptr %48, i64 0, i64 %53, !dbg !296
  %55 = load ptr, ptr %5, align 8, !dbg !303
  call void @nn_msg_mv(ptr noundef %54, ptr noundef %55), !dbg !304
  %56 = load ptr, ptr %4, align 8, !dbg !305
  %57 = getelementptr inbounds %struct.nn_msgqueue, ptr %56, i32 0, i32 0, !dbg !306
  %58 = getelementptr inbounds %struct.anon, ptr %57, i32 0, i32 1, !dbg !307
  %59 = load i32, ptr %58, align 8, !dbg !308
  %60 = add nsw i32 %59, 1, !dbg !308
  store i32 %60, ptr %58, align 8, !dbg !308
  %61 = load ptr, ptr %4, align 8, !dbg !309
  %62 = getelementptr inbounds %struct.nn_msgqueue, ptr %61, i32 0, i32 0, !dbg !309
  %63 = getelementptr inbounds %struct.anon, ptr %62, i32 0, i32 1, !dbg !309
  %64 = load i32, ptr %63, align 8, !dbg !309
  %65 = icmp eq i32 %64, 126, !dbg !309
  %66 = zext i1 %65 to i32, !dbg !309
  %67 = sext i32 %66 to i64, !dbg !309
  %68 = icmp ne i64 %67, 0, !dbg !309
  br i1 %68, label %69, label %120, !dbg !311

69:                                               ; preds = %34
  %70 = load ptr, ptr %4, align 8, !dbg !312
  %71 = getelementptr inbounds %struct.nn_msgqueue, ptr %70, i32 0, i32 5, !dbg !312
  %72 = load ptr, ptr %71, align 8, !dbg !312
  %73 = icmp ne ptr %72, null, !dbg !312
  %74 = xor i1 %73, true, !dbg !312
  %75 = zext i1 %74 to i32, !dbg !312
  %76 = sext i32 %75 to i64, !dbg !312
  %77 = icmp ne i64 %76, 0, !dbg !312
  br i1 %77, label %78, label %100, !dbg !315

78:                                               ; preds = %69
  %79 = call ptr @nn_alloc_(i64 noundef 8072), !dbg !316
  %80 = load ptr, ptr %4, align 8, !dbg !318
  %81 = getelementptr inbounds %struct.nn_msgqueue, ptr %80, i32 0, i32 5, !dbg !319
  store ptr %79, ptr %81, align 8, !dbg !320
  br label %82, !dbg !321

82:                                               ; preds = %78
  %83 = load ptr, ptr %4, align 8, !dbg !322
  %84 = getelementptr inbounds %struct.nn_msgqueue, ptr %83, i32 0, i32 5, !dbg !322
  %85 = load ptr, ptr %84, align 8, !dbg !322
  %86 = icmp ne ptr %85, null, !dbg !322
  %87 = xor i1 %86, true, !dbg !322
  %88 = zext i1 %87 to i32, !dbg !322
  %89 = sext i32 %88 to i64, !dbg !322
  %90 = icmp ne i64 %89, 0, !dbg !322
  br i1 %90, label %91, label %94, !dbg !325

91:                                               ; preds = %82
  %92 = load ptr, ptr @stderr, align 8, !dbg !326
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 105), !dbg !326
  call void @nn_err_abort() #4, !dbg !326
  unreachable, !dbg !326

94:                                               ; preds = %82
  br label %95, !dbg !325

95:                                               ; preds = %94
  %96 = load ptr, ptr %4, align 8, !dbg !328
  %97 = getelementptr inbounds %struct.nn_msgqueue, ptr %96, i32 0, i32 5, !dbg !329
  %98 = load ptr, ptr %97, align 8, !dbg !329
  %99 = getelementptr inbounds %struct.nn_msgqueue_chunk, ptr %98, i32 0, i32 1, !dbg !330
  store ptr null, ptr %99, align 8, !dbg !331
  br label %100, !dbg !332

100:                                              ; preds = %95, %69
  %101 = load ptr, ptr %4, align 8, !dbg !333
  %102 = getelementptr inbounds %struct.nn_msgqueue, ptr %101, i32 0, i32 5, !dbg !334
  %103 = load ptr, ptr %102, align 8, !dbg !334
  %104 = load ptr, ptr %4, align 8, !dbg !335
  %105 = getelementptr inbounds %struct.nn_msgqueue, ptr %104, i32 0, i32 0, !dbg !336
  %106 = getelementptr inbounds %struct.anon, ptr %105, i32 0, i32 0, !dbg !337
  %107 = load ptr, ptr %106, align 8, !dbg !337
  %108 = getelementptr inbounds %struct.nn_msgqueue_chunk, ptr %107, i32 0, i32 1, !dbg !338
  store ptr %103, ptr %108, align 8, !dbg !339
  %109 = load ptr, ptr %4, align 8, !dbg !340
  %110 = getelementptr inbounds %struct.nn_msgqueue, ptr %109, i32 0, i32 5, !dbg !341
  %111 = load ptr, ptr %110, align 8, !dbg !341
  %112 = load ptr, ptr %4, align 8, !dbg !342
  %113 = getelementptr inbounds %struct.nn_msgqueue, ptr %112, i32 0, i32 0, !dbg !343
  %114 = getelementptr inbounds %struct.anon, ptr %113, i32 0, i32 0, !dbg !344
  store ptr %111, ptr %114, align 8, !dbg !345
  %115 = load ptr, ptr %4, align 8, !dbg !346
  %116 = getelementptr inbounds %struct.nn_msgqueue, ptr %115, i32 0, i32 5, !dbg !347
  store ptr null, ptr %116, align 8, !dbg !348
  %117 = load ptr, ptr %4, align 8, !dbg !349
  %118 = getelementptr inbounds %struct.nn_msgqueue, ptr %117, i32 0, i32 0, !dbg !350
  %119 = getelementptr inbounds %struct.anon, ptr %118, i32 0, i32 1, !dbg !351
  store i32 0, ptr %119, align 8, !dbg !352
  br label %120, !dbg !353

120:                                              ; preds = %100, %34
  store i32 0, ptr %3, align 4, !dbg !354
  br label %121, !dbg !354

121:                                              ; preds = %120, %33
  %122 = load i32, ptr %3, align 4, !dbg !355
  ret i32 %122, !dbg !355
}

declare i64 @nn_chunkref_size(ptr noundef) #2

declare void @nn_msg_mv(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/transports/inproc/msgqueue.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bfbcf82e25c77ed70db15c70b3e8efd6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 35)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 17)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 30)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 34)
!27 = distinct !DICompileUnit(language: DW_LANG_C11, file: !28, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !29, globals: !31, splitDebugInlining: false, nameTableKind: None)
!28 = !DIFile(filename: "src/transports/inproc/msgqueue.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bfbcf82e25c77ed70db15c70b3e8efd6")
!29 = !{!30}
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !{!0, !7, !12, !17, !22}
!32 = !{i32 7, !"Dwarf Version", i32 5}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 8, !"PIC Level", i32 2}
!36 = !{i32 7, !"PIE Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 2}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 16.0.0"}
!40 = distinct !DISubprogram(name: "nn_msgqueue_init", scope: !2, file: !2, line: 31, type: !41, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !89)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !83}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msgqueue", file: !45, line: 40, size: 512, elements: !46)
!45 = !DIFile(filename: "./src/transports/inproc/msgqueue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "03057ddde493a8150c86b1bc38c7f2a4")
!46 = !{!47, !77, !82, !86, !87, !88}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !44, file: !45, line: 47, baseType: !48, size: 128)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !45, line: 44, size: 128, elements: !49)
!49 = !{!50, !76}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !48, file: !45, line: 45, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msgqueue_chunk", file: !45, line: 35, size: 64576, elements: !53)
!53 = !{!54, !75}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "msgs", scope: !52, file: !45, line: 36, baseType: !55, size: 64512)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 64512, elements: !73)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !57, line: 30, size: 512, elements: !58)
!57 = !DIFile(filename: "./src/transports/inproc/../../utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!58 = !{!59, !72}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !56, file: !57, line: 33, baseType: !60, size: 256)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !61, line: 39, size: 256, elements: !62)
!61 = !DIFile(filename: "./src/transports/inproc/../../utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !60, file: !61, line: 40, baseType: !64, size: 256)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 256, elements: !70)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !66, line: 24, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !68, line: 38, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!69 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!70 = !{!71}
!71 = !DISubrange(count: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !56, file: !57, line: 36, baseType: !60, size: 256, offset: 256)
!73 = !{!74}
!74 = !DISubrange(count: 126)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !52, file: !45, line: 37, baseType: !51, size: 64, offset: 64512)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !48, file: !45, line: 46, baseType: !30, size: 32, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !44, file: !45, line: 53, baseType: !78, size: 128, offset: 128)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !45, line: 50, size: 128, elements: !79)
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !78, file: !45, line: 51, baseType: !51, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !78, file: !45, line: 52, baseType: !30, size: 32, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !44, file: !45, line: 56, baseType: !83, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !84, line: 46, baseType: !85)
!84 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!85 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !44, file: !45, line: 59, baseType: !83, size: 64, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "maxmem", scope: !44, file: !45, line: 62, baseType: !83, size: 64, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !44, file: !45, line: 66, baseType: !51, size: 64, offset: 448)
!89 = !{}
!90 = !DILocalVariable(name: "self", arg: 1, scope: !40, file: !2, line: 31, type: !43)
!91 = !DILocation(line: 31, column: 44, scope: !40)
!92 = !DILocalVariable(name: "maxmem", arg: 2, scope: !40, file: !2, line: 31, type: !83)
!93 = !DILocation(line: 31, column: 57, scope: !40)
!94 = !DILocalVariable(name: "chunk", scope: !40, file: !2, line: 33, type: !51)
!95 = !DILocation(line: 33, column: 31, scope: !40)
!96 = !DILocation(line: 35, column: 5, scope: !40)
!97 = !DILocation(line: 35, column: 11, scope: !40)
!98 = !DILocation(line: 35, column: 17, scope: !40)
!99 = !DILocation(line: 36, column: 5, scope: !40)
!100 = !DILocation(line: 36, column: 11, scope: !40)
!101 = !DILocation(line: 36, column: 15, scope: !40)
!102 = !DILocation(line: 37, column: 20, scope: !40)
!103 = !DILocation(line: 37, column: 5, scope: !40)
!104 = !DILocation(line: 37, column: 11, scope: !40)
!105 = !DILocation(line: 37, column: 18, scope: !40)
!106 = !DILocation(line: 39, column: 13, scope: !40)
!107 = !DILocation(line: 39, column: 11, scope: !40)
!108 = !DILocation(line: 40, column: 5, scope: !40)
!109 = !DILocation(line: 40, column: 5, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 40, column: 5)
!111 = distinct !DILexicalBlock(scope: !40, file: !2, line: 40, column: 5)
!112 = !DILocation(line: 40, column: 5, scope: !111)
!113 = !DILocation(line: 40, column: 5, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !2, line: 40, column: 5)
!115 = !DILocation(line: 41, column: 5, scope: !40)
!116 = !DILocation(line: 41, column: 12, scope: !40)
!117 = !DILocation(line: 41, column: 17, scope: !40)
!118 = !DILocation(line: 43, column: 23, scope: !40)
!119 = !DILocation(line: 43, column: 5, scope: !40)
!120 = !DILocation(line: 43, column: 11, scope: !40)
!121 = !DILocation(line: 43, column: 15, scope: !40)
!122 = !DILocation(line: 43, column: 21, scope: !40)
!123 = !DILocation(line: 44, column: 5, scope: !40)
!124 = !DILocation(line: 44, column: 11, scope: !40)
!125 = !DILocation(line: 44, column: 15, scope: !40)
!126 = !DILocation(line: 44, column: 19, scope: !40)
!127 = !DILocation(line: 45, column: 22, scope: !40)
!128 = !DILocation(line: 45, column: 5, scope: !40)
!129 = !DILocation(line: 45, column: 11, scope: !40)
!130 = !DILocation(line: 45, column: 14, scope: !40)
!131 = !DILocation(line: 45, column: 20, scope: !40)
!132 = !DILocation(line: 46, column: 5, scope: !40)
!133 = !DILocation(line: 46, column: 11, scope: !40)
!134 = !DILocation(line: 46, column: 14, scope: !40)
!135 = !DILocation(line: 46, column: 18, scope: !40)
!136 = !DILocation(line: 48, column: 5, scope: !40)
!137 = !DILocation(line: 48, column: 11, scope: !40)
!138 = !DILocation(line: 48, column: 17, scope: !40)
!139 = !DILocation(line: 49, column: 1, scope: !40)
!140 = distinct !DISubprogram(name: "nn_msgqueue_term", scope: !2, file: !2, line: 51, type: !141, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !89)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !43}
!143 = !DILocalVariable(name: "self", arg: 1, scope: !140, file: !2, line: 51, type: !43)
!144 = !DILocation(line: 51, column: 44, scope: !140)
!145 = !DILocalVariable(name: "rc", scope: !140, file: !2, line: 53, type: !30)
!146 = !DILocation(line: 53, column: 9, scope: !140)
!147 = !DILocalVariable(name: "msg", scope: !140, file: !2, line: 54, type: !56)
!148 = !DILocation(line: 54, column: 19, scope: !140)
!149 = !DILocation(line: 57, column: 5, scope: !140)
!150 = !DILocation(line: 58, column: 32, scope: !151)
!151 = distinct !DILexicalBlock(scope: !140, file: !2, line: 57, column: 15)
!152 = !DILocation(line: 58, column: 14, scope: !151)
!153 = !DILocation(line: 58, column: 12, scope: !151)
!154 = !DILocation(line: 59, column: 13, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !2, line: 59, column: 13)
!156 = !DILocation(line: 59, column: 16, scope: !155)
!157 = !DILocation(line: 59, column: 13, scope: !151)
!158 = !DILocation(line: 60, column: 13, scope: !155)
!159 = !DILocation(line: 61, column: 9, scope: !151)
!160 = !DILocation(line: 61, column: 9, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !2, line: 61, column: 9)
!162 = distinct !DILexicalBlock(scope: !151, file: !2, line: 61, column: 9)
!163 = !DILocation(line: 61, column: 9, scope: !162)
!164 = !DILocation(line: 61, column: 9, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !2, line: 61, column: 9)
!166 = !DILocation(line: 62, column: 9, scope: !151)
!167 = distinct !{!167, !149, !168}
!168 = !DILocation(line: 63, column: 5, scope: !140)
!169 = !DILocation(line: 67, column: 5, scope: !140)
!170 = !DILocation(line: 67, column: 5, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !2, line: 67, column: 5)
!172 = distinct !DILexicalBlock(scope: !140, file: !2, line: 67, column: 5)
!173 = !DILocation(line: 67, column: 5, scope: !172)
!174 = !DILocation(line: 67, column: 5, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !2, line: 67, column: 5)
!176 = !DILocation(line: 68, column: 14, scope: !140)
!177 = !DILocation(line: 68, column: 20, scope: !140)
!178 = !DILocation(line: 68, column: 23, scope: !140)
!179 = !DILocation(line: 68, column: 5, scope: !140)
!180 = !DILocation(line: 71, column: 9, scope: !181)
!181 = distinct !DILexicalBlock(scope: !140, file: !2, line: 71, column: 9)
!182 = !DILocation(line: 71, column: 15, scope: !181)
!183 = !DILocation(line: 71, column: 9, scope: !140)
!184 = !DILocation(line: 72, column: 18, scope: !181)
!185 = !DILocation(line: 72, column: 24, scope: !181)
!186 = !DILocation(line: 72, column: 9, scope: !181)
!187 = !DILocation(line: 73, column: 1, scope: !140)
!188 = distinct !DISubprogram(name: "nn_msgqueue_recv", scope: !2, file: !2, line: 117, type: !189, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !89)
!189 = !DISubroutineType(types: !190)
!190 = !{!30, !43, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!192 = !DILocalVariable(name: "self", arg: 1, scope: !188, file: !2, line: 117, type: !43)
!193 = !DILocation(line: 117, column: 43, scope: !188)
!194 = !DILocalVariable(name: "msg", arg: 2, scope: !188, file: !2, line: 117, type: !191)
!195 = !DILocation(line: 117, column: 64, scope: !188)
!196 = !DILocalVariable(name: "o", scope: !188, file: !2, line: 119, type: !51)
!197 = !DILocation(line: 119, column: 31, scope: !188)
!198 = !DILocation(line: 122, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !188, file: !2, line: 122, column: 9)
!200 = !DILocation(line: 122, column: 9, scope: !188)
!201 = !DILocation(line: 123, column: 9, scope: !199)
!202 = !DILocation(line: 126, column: 16, scope: !188)
!203 = !DILocation(line: 126, column: 22, scope: !188)
!204 = !DILocation(line: 126, column: 28, scope: !188)
!205 = !DILocation(line: 126, column: 31, scope: !188)
!206 = !DILocation(line: 126, column: 38, scope: !188)
!207 = !DILocation(line: 126, column: 44, scope: !188)
!208 = !DILocation(line: 126, column: 50, scope: !188)
!209 = !DILocation(line: 126, column: 53, scope: !188)
!210 = !DILocation(line: 126, column: 5, scope: !188)
!211 = !DILocation(line: 129, column: 7, scope: !188)
!212 = !DILocation(line: 129, column: 13, scope: !188)
!213 = !DILocation(line: 129, column: 16, scope: !188)
!214 = !DILocation(line: 129, column: 5, scope: !188)
!215 = !DILocation(line: 130, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !188, file: !2, line: 130, column: 9)
!217 = !DILocation(line: 130, column: 9, scope: !188)
!218 = !DILocation(line: 131, column: 13, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !2, line: 130, column: 60)
!220 = !DILocation(line: 131, column: 19, scope: !219)
!221 = !DILocation(line: 131, column: 22, scope: !219)
!222 = !DILocation(line: 131, column: 11, scope: !219)
!223 = !DILocation(line: 132, column: 26, scope: !219)
!224 = !DILocation(line: 132, column: 32, scope: !219)
!225 = !DILocation(line: 132, column: 35, scope: !219)
!226 = !DILocation(line: 132, column: 42, scope: !219)
!227 = !DILocation(line: 132, column: 9, scope: !219)
!228 = !DILocation(line: 132, column: 15, scope: !219)
!229 = !DILocation(line: 132, column: 18, scope: !219)
!230 = !DILocation(line: 132, column: 24, scope: !219)
!231 = !DILocation(line: 133, column: 9, scope: !219)
!232 = !DILocation(line: 133, column: 15, scope: !219)
!233 = !DILocation(line: 133, column: 18, scope: !219)
!234 = !DILocation(line: 133, column: 22, scope: !219)
!235 = !DILocation(line: 134, column: 13, scope: !236)
!236 = distinct !DILexicalBlock(scope: !219, file: !2, line: 134, column: 13)
!237 = !DILocation(line: 134, column: 13, scope: !219)
!238 = !DILocation(line: 135, column: 27, scope: !236)
!239 = !DILocation(line: 135, column: 13, scope: !236)
!240 = !DILocation(line: 135, column: 19, scope: !236)
!241 = !DILocation(line: 135, column: 25, scope: !236)
!242 = !DILocation(line: 137, column: 22, scope: !236)
!243 = !DILocation(line: 137, column: 13, scope: !236)
!244 = !DILocation(line: 138, column: 5, scope: !219)
!245 = !DILocation(line: 141, column: 7, scope: !188)
!246 = !DILocation(line: 141, column: 13, scope: !188)
!247 = !DILocation(line: 141, column: 5, scope: !188)
!248 = !DILocation(line: 142, column: 38, scope: !188)
!249 = !DILocation(line: 142, column: 43, scope: !188)
!250 = !DILocation(line: 142, column: 19, scope: !188)
!251 = !DILocation(line: 142, column: 69, scope: !188)
!252 = !DILocation(line: 142, column: 74, scope: !188)
!253 = !DILocation(line: 142, column: 50, scope: !188)
!254 = !DILocation(line: 142, column: 48, scope: !188)
!255 = !DILocation(line: 142, column: 5, scope: !188)
!256 = !DILocation(line: 142, column: 11, scope: !188)
!257 = !DILocation(line: 142, column: 15, scope: !188)
!258 = !DILocation(line: 144, column: 5, scope: !188)
!259 = !DILocation(line: 145, column: 1, scope: !188)
!260 = distinct !DISubprogram(name: "nn_msgqueue_empty", scope: !2, file: !2, line: 75, type: !261, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !89)
!261 = !DISubroutineType(types: !262)
!262 = !{!30, !43}
!263 = !DILocalVariable(name: "self", arg: 1, scope: !260, file: !2, line: 75, type: !43)
!264 = !DILocation(line: 75, column: 44, scope: !260)
!265 = !DILocation(line: 77, column: 12, scope: !260)
!266 = !DILocation(line: 77, column: 18, scope: !260)
!267 = !DILocation(line: 77, column: 24, scope: !260)
!268 = !DILocation(line: 77, column: 5, scope: !260)
!269 = distinct !DISubprogram(name: "nn_msgqueue_send", scope: !2, file: !2, line: 80, type: !189, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !89)
!270 = !DILocalVariable(name: "self", arg: 1, scope: !269, file: !2, line: 80, type: !43)
!271 = !DILocation(line: 80, column: 43, scope: !269)
!272 = !DILocalVariable(name: "msg", arg: 2, scope: !269, file: !2, line: 80, type: !191)
!273 = !DILocation(line: 80, column: 64, scope: !269)
!274 = !DILocalVariable(name: "msgsz", scope: !269, file: !2, line: 82, type: !83)
!275 = !DILocation(line: 82, column: 12, scope: !269)
!276 = !DILocation(line: 87, column: 32, scope: !269)
!277 = !DILocation(line: 87, column: 37, scope: !269)
!278 = !DILocation(line: 87, column: 13, scope: !269)
!279 = !DILocation(line: 87, column: 63, scope: !269)
!280 = !DILocation(line: 87, column: 68, scope: !269)
!281 = !DILocation(line: 87, column: 44, scope: !269)
!282 = !DILocation(line: 87, column: 42, scope: !269)
!283 = !DILocation(line: 87, column: 11, scope: !269)
!284 = !DILocation(line: 88, column: 9, scope: !285)
!285 = distinct !DILexicalBlock(scope: !269, file: !2, line: 88, column: 9)
!286 = !DILocation(line: 0, scope: !285)
!287 = !DILocation(line: 88, column: 9, scope: !269)
!288 = !DILocation(line: 89, column: 9, scope: !285)
!289 = !DILocation(line: 92, column: 7, scope: !269)
!290 = !DILocation(line: 92, column: 13, scope: !269)
!291 = !DILocation(line: 92, column: 5, scope: !269)
!292 = !DILocation(line: 93, column: 18, scope: !269)
!293 = !DILocation(line: 93, column: 5, scope: !269)
!294 = !DILocation(line: 93, column: 11, scope: !269)
!295 = !DILocation(line: 93, column: 15, scope: !269)
!296 = !DILocation(line: 96, column: 17, scope: !269)
!297 = !DILocation(line: 96, column: 23, scope: !269)
!298 = !DILocation(line: 96, column: 27, scope: !269)
!299 = !DILocation(line: 96, column: 34, scope: !269)
!300 = !DILocation(line: 96, column: 40, scope: !269)
!301 = !DILocation(line: 96, column: 46, scope: !269)
!302 = !DILocation(line: 96, column: 50, scope: !269)
!303 = !DILocation(line: 96, column: 56, scope: !269)
!304 = !DILocation(line: 96, column: 5, scope: !269)
!305 = !DILocation(line: 97, column: 7, scope: !269)
!306 = !DILocation(line: 97, column: 13, scope: !269)
!307 = !DILocation(line: 97, column: 17, scope: !269)
!308 = !DILocation(line: 97, column: 5, scope: !269)
!309 = !DILocation(line: 101, column: 9, scope: !310)
!310 = distinct !DILexicalBlock(scope: !269, file: !2, line: 101, column: 9)
!311 = !DILocation(line: 101, column: 9, scope: !269)
!312 = !DILocation(line: 102, column: 13, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !2, line: 102, column: 13)
!314 = distinct !DILexicalBlock(scope: !310, file: !2, line: 101, column: 61)
!315 = !DILocation(line: 102, column: 13, scope: !314)
!316 = !DILocation(line: 103, column: 27, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !2, line: 102, column: 37)
!318 = !DILocation(line: 103, column: 13, scope: !317)
!319 = !DILocation(line: 103, column: 19, scope: !317)
!320 = !DILocation(line: 103, column: 25, scope: !317)
!321 = !DILocation(line: 105, column: 13, scope: !317)
!322 = !DILocation(line: 105, column: 13, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !2, line: 105, column: 13)
!324 = distinct !DILexicalBlock(scope: !317, file: !2, line: 105, column: 13)
!325 = !DILocation(line: 105, column: 13, scope: !324)
!326 = !DILocation(line: 105, column: 13, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !2, line: 105, column: 13)
!328 = !DILocation(line: 106, column: 13, scope: !317)
!329 = !DILocation(line: 106, column: 19, scope: !317)
!330 = !DILocation(line: 106, column: 26, scope: !317)
!331 = !DILocation(line: 106, column: 31, scope: !317)
!332 = !DILocation(line: 107, column: 9, scope: !317)
!333 = !DILocation(line: 108, column: 33, scope: !314)
!334 = !DILocation(line: 108, column: 39, scope: !314)
!335 = !DILocation(line: 108, column: 9, scope: !314)
!336 = !DILocation(line: 108, column: 15, scope: !314)
!337 = !DILocation(line: 108, column: 19, scope: !314)
!338 = !DILocation(line: 108, column: 26, scope: !314)
!339 = !DILocation(line: 108, column: 31, scope: !314)
!340 = !DILocation(line: 109, column: 27, scope: !314)
!341 = !DILocation(line: 109, column: 33, scope: !314)
!342 = !DILocation(line: 109, column: 9, scope: !314)
!343 = !DILocation(line: 109, column: 15, scope: !314)
!344 = !DILocation(line: 109, column: 19, scope: !314)
!345 = !DILocation(line: 109, column: 25, scope: !314)
!346 = !DILocation(line: 110, column: 9, scope: !314)
!347 = !DILocation(line: 110, column: 15, scope: !314)
!348 = !DILocation(line: 110, column: 21, scope: !314)
!349 = !DILocation(line: 111, column: 9, scope: !314)
!350 = !DILocation(line: 111, column: 15, scope: !314)
!351 = !DILocation(line: 111, column: 19, scope: !314)
!352 = !DILocation(line: 111, column: 23, scope: !314)
!353 = !DILocation(line: 112, column: 5, scope: !314)
!354 = !DILocation(line: 114, column: 5, scope: !269)
!355 = !DILocation(line: 115, column: 1, scope: !269)
