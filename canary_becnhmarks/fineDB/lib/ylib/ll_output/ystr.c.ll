; ModuleID = './ystr.c'
source_filename = "./ystr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ystr_head_s = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1, !dbg !26

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ys_new(ptr noundef %0) #0 !dbg !53 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata ptr %4, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata ptr %5, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata ptr %6, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata ptr %7, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata ptr %8, metadata !69, metadata !DIExpression()), !dbg !70
  %9 = load ptr, ptr %3, align 8, !dbg !71
  %10 = icmp ne ptr %9, null, !dbg !71
  br i1 %10, label %12, label %11, !dbg !72

11:                                               ; preds = %1
  br label %15, !dbg !72

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8, !dbg !73
  %14 = call i64 @strlen(ptr noundef %13) #8, !dbg !74
  br label %15, !dbg !72

15:                                               ; preds = %12, %11
  %16 = phi i64 [ 0, %11 ], [ %14, %12 ], !dbg !72
  %17 = trunc i64 %16 to i32, !dbg !72
  store i32 %17, ptr %5, align 4, !dbg !75
  %18 = load i32, ptr %5, align 4, !dbg !76
  %19 = icmp ult i32 %18, 4096, !dbg !78
  br i1 %19, label %20, label %21, !dbg !79

20:                                               ; preds = %15
  store i32 4096, ptr %6, align 4, !dbg !80
  br label %39, !dbg !81

21:                                               ; preds = %15
  %22 = load i32, ptr %5, align 4, !dbg !82
  %23 = icmp ult i32 %22, 65536, !dbg !84
  br i1 %23, label %24, label %25, !dbg !85

24:                                               ; preds = %21
  br label %30, !dbg !85

25:                                               ; preds = %21
  %26 = load i32, ptr %5, align 4, !dbg !86
  %27 = icmp ult i32 %26, 1048576, !dbg !87
  %28 = zext i1 %27 to i64, !dbg !88
  %29 = select i1 %27, i32 65536, i32 1048576, !dbg !88
  br label %30, !dbg !85

30:                                               ; preds = %25, %24
  %31 = phi i32 [ 4096, %24 ], [ %29, %25 ], !dbg !85
  store i32 %31, ptr %7, align 4, !dbg !89
  %32 = load i32, ptr %5, align 4, !dbg !90
  %33 = add i32 %32, 1, !dbg !91
  %34 = load i32, ptr %7, align 4, !dbg !92
  %35 = udiv i32 %33, %34, !dbg !93
  %36 = add i32 %35, 1, !dbg !94
  %37 = load i32, ptr %7, align 4, !dbg !95
  %38 = mul i32 %36, %37, !dbg !96
  store i32 %38, ptr %6, align 4, !dbg !97
  br label %39

39:                                               ; preds = %30, %20
  %40 = load i32, ptr %6, align 4, !dbg !98
  %41 = zext i32 %40 to i64, !dbg !98
  %42 = add i64 %41, 8, !dbg !98
  %43 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %42) #9, !dbg !98
  store ptr %43, ptr %4, align 8, !dbg !100
  %44 = icmp ne ptr %43, null, !dbg !100
  br i1 %44, label %47, label %45, !dbg !101

45:                                               ; preds = %39
  %46 = load ptr, ptr %4, align 8, !dbg !102
  store ptr %46, ptr %2, align 8, !dbg !103
  br label %67, !dbg !103

47:                                               ; preds = %39
  %48 = load ptr, ptr %4, align 8, !dbg !104
  store ptr %48, ptr %8, align 8, !dbg !105
  %49 = load ptr, ptr %4, align 8, !dbg !106
  %50 = getelementptr inbounds i8, ptr %49, i64 8, !dbg !106
  store ptr %50, ptr %4, align 8, !dbg !106
  %51 = load i32, ptr %6, align 4, !dbg !107
  %52 = load ptr, ptr %8, align 8, !dbg !108
  %53 = getelementptr inbounds %struct.ystr_head_s, ptr %52, i32 0, i32 0, !dbg !109
  store i32 %51, ptr %53, align 4, !dbg !110
  %54 = load i32, ptr %5, align 4, !dbg !111
  %55 = load ptr, ptr %8, align 8, !dbg !112
  %56 = getelementptr inbounds %struct.ystr_head_s, ptr %55, i32 0, i32 1, !dbg !113
  store i32 %54, ptr %56, align 4, !dbg !114
  %57 = load i32, ptr %5, align 4, !dbg !115
  %58 = icmp ne i32 %57, 0, !dbg !115
  br i1 %58, label %61, label %59, !dbg !117

59:                                               ; preds = %47
  %60 = load ptr, ptr %4, align 8, !dbg !118
  store i8 0, ptr %60, align 1, !dbg !119
  br label %65, !dbg !120

61:                                               ; preds = %47
  %62 = load ptr, ptr %4, align 8, !dbg !121
  %63 = load ptr, ptr %3, align 8, !dbg !122
  %64 = call ptr @strcpy(ptr noundef %62, ptr noundef %63) #10, !dbg !123
  br label %65

65:                                               ; preds = %61, %59
  %66 = load ptr, ptr %4, align 8, !dbg !124
  store ptr %66, ptr %2, align 8, !dbg !125
  br label %67, !dbg !125

67:                                               ; preds = %65, %45
  %68 = load ptr, ptr %2, align 8, !dbg !126
  ret ptr %68, !dbg !126
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ys_copy(ptr noundef %0) #0 !dbg !127 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata ptr %4, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata ptr %5, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata ptr %6, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata ptr %7, metadata !136, metadata !DIExpression()), !dbg !137
  %8 = load ptr, ptr %3, align 8, !dbg !138
  %9 = icmp ne ptr %8, null, !dbg !138
  br i1 %9, label %11, label %10, !dbg !139

10:                                               ; preds = %1
  br label %14, !dbg !139

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8, !dbg !140
  %13 = call i64 @strlen(ptr noundef %12) #8, !dbg !141
  br label %14, !dbg !139

14:                                               ; preds = %11, %10
  %15 = phi i64 [ 0, %10 ], [ %13, %11 ], !dbg !139
  %16 = trunc i64 %15 to i32, !dbg !139
  store i32 %16, ptr %5, align 4, !dbg !142
  %17 = load i32, ptr %5, align 4, !dbg !143
  %18 = add i32 %17, 1, !dbg !144
  store i32 %18, ptr %6, align 4, !dbg !145
  %19 = load i32, ptr %6, align 4, !dbg !146
  %20 = zext i32 %19 to i64, !dbg !146
  %21 = add i64 %20, 8, !dbg !146
  %22 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %21) #9, !dbg !146
  store ptr %22, ptr %4, align 8, !dbg !148
  %23 = icmp ne ptr %22, null, !dbg !148
  br i1 %23, label %26, label %24, !dbg !149

24:                                               ; preds = %14
  %25 = load ptr, ptr %4, align 8, !dbg !150
  store ptr %25, ptr %2, align 8, !dbg !151
  br label %46, !dbg !151

26:                                               ; preds = %14
  %27 = load ptr, ptr %4, align 8, !dbg !152
  store ptr %27, ptr %7, align 8, !dbg !153
  %28 = load ptr, ptr %4, align 8, !dbg !154
  %29 = getelementptr inbounds i8, ptr %28, i64 8, !dbg !154
  store ptr %29, ptr %4, align 8, !dbg !154
  %30 = load i32, ptr %6, align 4, !dbg !155
  %31 = load ptr, ptr %7, align 8, !dbg !156
  %32 = getelementptr inbounds %struct.ystr_head_s, ptr %31, i32 0, i32 0, !dbg !157
  store i32 %30, ptr %32, align 4, !dbg !158
  %33 = load i32, ptr %5, align 4, !dbg !159
  %34 = load ptr, ptr %7, align 8, !dbg !160
  %35 = getelementptr inbounds %struct.ystr_head_s, ptr %34, i32 0, i32 1, !dbg !161
  store i32 %33, ptr %35, align 4, !dbg !162
  %36 = load i32, ptr %5, align 4, !dbg !163
  %37 = icmp ne i32 %36, 0, !dbg !163
  br i1 %37, label %40, label %38, !dbg !165

38:                                               ; preds = %26
  %39 = load ptr, ptr %4, align 8, !dbg !166
  store i8 0, ptr %39, align 1, !dbg !167
  br label %44, !dbg !168

40:                                               ; preds = %26
  %41 = load ptr, ptr %4, align 8, !dbg !169
  %42 = load ptr, ptr %3, align 8, !dbg !170
  %43 = call ptr @strcpy(ptr noundef %41, ptr noundef %42) #10, !dbg !171
  br label %44

44:                                               ; preds = %40, %38
  %45 = load ptr, ptr %4, align 8, !dbg !172
  store ptr %45, ptr %2, align 8, !dbg !173
  br label %46, !dbg !173

46:                                               ; preds = %44, %24
  %47 = load ptr, ptr %2, align 8, !dbg !174
  ret ptr %47, !dbg !174
}

; Function Attrs: noinline nounwind optnone uwtable
define void @ys_del(ptr noundef %0) #0 !dbg !175 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata ptr %3, metadata !181, metadata !DIExpression()), !dbg !182
  %4 = load ptr, ptr %2, align 8, !dbg !183
  %5 = icmp ne ptr %4, null, !dbg !183
  br i1 %5, label %6, label %10, !dbg !185

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !186
  %8 = load ptr, ptr %7, align 8, !dbg !187
  %9 = icmp ne ptr %8, null, !dbg !187
  br i1 %9, label %11, label %10, !dbg !188

10:                                               ; preds = %6, %1
  br label %23, !dbg !189

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !dbg !190
  %13 = load ptr, ptr %12, align 8, !dbg !191
  %14 = getelementptr inbounds i8, ptr %13, i64 -8, !dbg !192
  store ptr %14, ptr %3, align 8, !dbg !193
  %15 = load ptr, ptr %3, align 8, !dbg !194
  %16 = icmp ne ptr %15, null, !dbg !194
  br i1 %16, label %17, label %19, !dbg !194

17:                                               ; preds = %11
  %18 = load ptr, ptr %3, align 8, !dbg !194
  call void @free(ptr noundef %18) #10, !dbg !194
  br label %20, !dbg !194

19:                                               ; preds = %11
  br label %20, !dbg !194

20:                                               ; preds = %19, %17
  %21 = phi ptr [ null, %17 ], [ null, %19 ], !dbg !194
  store ptr null, ptr %3, align 8, !dbg !194
  %22 = load ptr, ptr %2, align 8, !dbg !195
  store ptr null, ptr %22, align 8, !dbg !196
  br label %23, !dbg !197

23:                                               ; preds = %20, %10
  ret void, !dbg !197
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define void @ys_free(ptr noundef %0) #0 !dbg !198 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata ptr %3, metadata !203, metadata !DIExpression()), !dbg !204
  %4 = load ptr, ptr %2, align 8, !dbg !205
  %5 = icmp ne ptr %4, null, !dbg !205
  br i1 %5, label %7, label %6, !dbg !207

6:                                                ; preds = %1
  br label %17, !dbg !208

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !209
  %9 = getelementptr inbounds i8, ptr %8, i64 -8, !dbg !210
  store ptr %9, ptr %3, align 8, !dbg !211
  %10 = load ptr, ptr %3, align 8, !dbg !212
  %11 = icmp ne ptr %10, null, !dbg !212
  br i1 %11, label %12, label %14, !dbg !212

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !dbg !212
  call void @free(ptr noundef %13) #10, !dbg !212
  br label %15, !dbg !212

14:                                               ; preds = %7
  br label %15, !dbg !212

15:                                               ; preds = %14, %12
  %16 = phi ptr [ null, %12 ], [ null, %14 ], !dbg !212
  store ptr null, ptr %3, align 8, !dbg !212
  br label %17, !dbg !213

17:                                               ; preds = %15, %6
  ret void, !dbg !213
}

; Function Attrs: noinline nounwind optnone uwtable
define void @ys_trunc(ptr noundef %0) #0 !dbg !214 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata ptr %3, metadata !217, metadata !DIExpression()), !dbg !218
  %4 = load ptr, ptr %2, align 8, !dbg !219
  %5 = icmp ne ptr %4, null, !dbg !219
  br i1 %5, label %7, label %6, !dbg !221

6:                                                ; preds = %1
  br label %13, !dbg !222

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !223
  %9 = getelementptr inbounds i8, ptr %8, i64 -8, !dbg !224
  store ptr %9, ptr %3, align 8, !dbg !225
  %10 = load ptr, ptr %2, align 8, !dbg !226
  store i8 0, ptr %10, align 1, !dbg !227
  %11 = load ptr, ptr %3, align 8, !dbg !228
  %12 = getelementptr inbounds %struct.ystr_head_s, ptr %11, i32 0, i32 1, !dbg !229
  store i32 0, ptr %12, align 4, !dbg !230
  br label %13, !dbg !231

13:                                               ; preds = %7, %6
  ret void, !dbg !231
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ys_setsz(ptr noundef %0, i32 noundef %1) #0 !dbg !232 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !236, metadata !DIExpression()), !dbg !237
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata ptr %6, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata ptr %7, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata ptr %8, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata ptr %9, metadata !246, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata ptr %10, metadata !248, metadata !DIExpression()), !dbg !249
  %11 = load ptr, ptr %4, align 8, !dbg !250
  %12 = icmp ne ptr %11, null, !dbg !250
  br i1 %12, label %14, label %13, !dbg !252

13:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !253
  br label %76, !dbg !253

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !dbg !254
  %16 = load ptr, ptr %15, align 8, !dbg !255
  %17 = getelementptr inbounds i8, ptr %16, i64 -8, !dbg !256
  store ptr %17, ptr %6, align 8, !dbg !257
  %18 = load i32, ptr %5, align 4, !dbg !258
  %19 = load ptr, ptr %6, align 8, !dbg !260
  %20 = getelementptr inbounds %struct.ystr_head_s, ptr %19, i32 0, i32 0, !dbg !261
  %21 = load i32, ptr %20, align 4, !dbg !261
  %22 = icmp ule i32 %18, %21, !dbg !262
  br i1 %22, label %23, label %24, !dbg !263

23:                                               ; preds = %14
  store i32 1, ptr %3, align 4, !dbg !264
  br label %76, !dbg !264

24:                                               ; preds = %14
  %25 = load i32, ptr %5, align 4, !dbg !265
  %26 = icmp ult i32 %25, 65536, !dbg !266
  br i1 %26, label %27, label %28, !dbg !267

27:                                               ; preds = %24
  br label %33, !dbg !267

28:                                               ; preds = %24
  %29 = load i32, ptr %5, align 4, !dbg !268
  %30 = icmp ult i32 %29, 1048576, !dbg !269
  %31 = zext i1 %30 to i64, !dbg !270
  %32 = select i1 %30, i32 65536, i32 1048576, !dbg !270
  br label %33, !dbg !267

33:                                               ; preds = %28, %27
  %34 = phi i32 [ 4096, %27 ], [ %32, %28 ], !dbg !267
  store i32 %34, ptr %9, align 4, !dbg !271
  %35 = load i32, ptr %5, align 4, !dbg !272
  %36 = add i32 %35, 1, !dbg !273
  %37 = load i32, ptr %9, align 4, !dbg !274
  %38 = udiv i32 %36, %37, !dbg !275
  %39 = add i32 %38, 1, !dbg !276
  %40 = load i32, ptr %9, align 4, !dbg !277
  %41 = mul i32 %39, %40, !dbg !278
  store i32 %41, ptr %8, align 4, !dbg !279
  %42 = load i32, ptr %8, align 4, !dbg !280
  %43 = zext i32 %42 to i64, !dbg !280
  %44 = add i64 %43, 8, !dbg !280
  %45 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %44) #9, !dbg !280
  store ptr %45, ptr %10, align 8, !dbg !282
  %46 = icmp ne ptr %45, null, !dbg !282
  br i1 %46, label %48, label %47, !dbg !283

47:                                               ; preds = %33
  store i32 0, ptr %3, align 4, !dbg !284
  br label %76, !dbg !284

48:                                               ; preds = %33
  %49 = load ptr, ptr %10, align 8, !dbg !285
  store ptr %49, ptr %7, align 8, !dbg !286
  %50 = load ptr, ptr %10, align 8, !dbg !287
  %51 = getelementptr inbounds i8, ptr %50, i64 8, !dbg !287
  store ptr %51, ptr %10, align 8, !dbg !287
  %52 = load i32, ptr %8, align 4, !dbg !288
  %53 = load ptr, ptr %7, align 8, !dbg !289
  %54 = getelementptr inbounds %struct.ystr_head_s, ptr %53, i32 0, i32 0, !dbg !290
  store i32 %52, ptr %54, align 4, !dbg !291
  %55 = load ptr, ptr %6, align 8, !dbg !292
  %56 = getelementptr inbounds %struct.ystr_head_s, ptr %55, i32 0, i32 1, !dbg !293
  %57 = load i32, ptr %56, align 4, !dbg !293
  %58 = load ptr, ptr %7, align 8, !dbg !294
  %59 = getelementptr inbounds %struct.ystr_head_s, ptr %58, i32 0, i32 1, !dbg !295
  store i32 %57, ptr %59, align 4, !dbg !296
  %60 = load ptr, ptr %10, align 8, !dbg !297
  %61 = load ptr, ptr %4, align 8, !dbg !298
  %62 = load ptr, ptr %6, align 8, !dbg !299
  %63 = getelementptr inbounds %struct.ystr_head_s, ptr %62, i32 0, i32 1, !dbg !300
  %64 = load i32, ptr %63, align 4, !dbg !300
  %65 = add i32 %64, 1, !dbg !301
  %66 = zext i32 %65 to i64, !dbg !299
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 8 %61, i64 %66, i1 false), !dbg !302
  %67 = load ptr, ptr %6, align 8, !dbg !303
  %68 = icmp ne ptr %67, null, !dbg !303
  br i1 %68, label %69, label %71, !dbg !303

69:                                               ; preds = %48
  %70 = load ptr, ptr %6, align 8, !dbg !303
  call void @free(ptr noundef %70) #10, !dbg !303
  br label %72, !dbg !303

71:                                               ; preds = %48
  br label %72, !dbg !303

72:                                               ; preds = %71, %69
  %73 = phi ptr [ null, %69 ], [ null, %71 ], !dbg !303
  store ptr null, ptr %6, align 8, !dbg !303
  %74 = load ptr, ptr %10, align 8, !dbg !304
  %75 = load ptr, ptr %4, align 8, !dbg !305
  store ptr %74, ptr %75, align 8, !dbg !306
  store i32 1, ptr %3, align 4, !dbg !307
  br label %76, !dbg !307

76:                                               ; preds = %72, %47, %23, %13
  %77 = load i32, ptr %3, align 4, !dbg !308
  ret i32 %77, !dbg !308
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ys_len(ptr noundef %0) #0 !dbg !309 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !313, metadata !DIExpression()), !dbg !314
  %4 = load ptr, ptr %3, align 8, !dbg !315
  %5 = icmp ne ptr %4, null, !dbg !315
  br i1 %5, label %7, label %6, !dbg !317

6:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !318
  br label %12, !dbg !318

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !319
  %9 = getelementptr inbounds i8, ptr %8, i64 -8, !dbg !320
  %10 = getelementptr inbounds %struct.ystr_head_s, ptr %9, i32 0, i32 1, !dbg !321
  %11 = load i32, ptr %10, align 4, !dbg !321
  store i32 %11, ptr %2, align 4, !dbg !322
  br label %12, !dbg !322

12:                                               ; preds = %7, %6
  %13 = load i32, ptr %2, align 4, !dbg !323
  ret i32 %13, !dbg !323
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ys_cat(ptr noundef %0, ptr noundef %1) #0 !dbg !324 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !327, metadata !DIExpression()), !dbg !328
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !329, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.declare(metadata ptr %6, metadata !331, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata ptr %7, metadata !333, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata ptr %8, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata ptr %9, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata ptr %10, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata ptr %11, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata ptr %12, metadata !343, metadata !DIExpression()), !dbg !344
  %13 = load ptr, ptr %5, align 8, !dbg !345
  %14 = icmp ne ptr %13, null, !dbg !345
  br i1 %14, label %15, label %20, !dbg !347

15:                                               ; preds = %2
  %16 = load ptr, ptr %5, align 8, !dbg !348
  %17 = call i64 @strlen(ptr noundef %16) #8, !dbg !349
  %18 = trunc i64 %17 to i32, !dbg !349
  store i32 %18, ptr %6, align 4, !dbg !350
  %19 = icmp ne i32 %18, 0, !dbg !350
  br i1 %19, label %21, label %20, !dbg !351

20:                                               ; preds = %15, %2
  store i32 1, ptr %3, align 4, !dbg !352
  br label %125, !dbg !352

21:                                               ; preds = %15
  %22 = load ptr, ptr %4, align 8, !dbg !353
  %23 = load ptr, ptr %22, align 8, !dbg !355
  %24 = icmp ne ptr %23, null, !dbg !355
  br i1 %24, label %29, label %25, !dbg !356

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !dbg !357
  %27 = call ptr @ys_new(ptr noundef %26), !dbg !359
  %28 = load ptr, ptr %4, align 8, !dbg !360
  store ptr %27, ptr %28, align 8, !dbg !361
  store i32 1, ptr %3, align 4, !dbg !362
  br label %125, !dbg !362

29:                                               ; preds = %21
  %30 = load ptr, ptr %4, align 8, !dbg !363
  %31 = load ptr, ptr %30, align 8, !dbg !364
  %32 = getelementptr inbounds i8, ptr %31, i64 -8, !dbg !365
  store ptr %32, ptr %10, align 8, !dbg !366
  %33 = load ptr, ptr %10, align 8, !dbg !367
  %34 = getelementptr inbounds %struct.ystr_head_s, ptr %33, i32 0, i32 1, !dbg !369
  %35 = load i32, ptr %34, align 4, !dbg !369
  %36 = add i32 %35, 1, !dbg !370
  %37 = load i32, ptr %6, align 4, !dbg !371
  %38 = add i32 %36, %37, !dbg !372
  %39 = load ptr, ptr %10, align 8, !dbg !373
  %40 = getelementptr inbounds %struct.ystr_head_s, ptr %39, i32 0, i32 0, !dbg !374
  %41 = load i32, ptr %40, align 4, !dbg !374
  %42 = icmp ule i32 %38, %41, !dbg !375
  br i1 %42, label %43, label %60, !dbg !376

43:                                               ; preds = %29
  %44 = load ptr, ptr %4, align 8, !dbg !377
  %45 = load ptr, ptr %44, align 8, !dbg !379
  %46 = load ptr, ptr %10, align 8, !dbg !380
  %47 = getelementptr inbounds %struct.ystr_head_s, ptr %46, i32 0, i32 1, !dbg !381
  %48 = load i32, ptr %47, align 4, !dbg !381
  %49 = zext i32 %48 to i64, !dbg !382
  %50 = getelementptr inbounds i8, ptr %45, i64 %49, !dbg !382
  %51 = load ptr, ptr %5, align 8, !dbg !383
  %52 = load i32, ptr %6, align 4, !dbg !384
  %53 = add i32 %52, 1, !dbg !385
  %54 = zext i32 %53 to i64, !dbg !384
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %50, ptr align 1 %51, i64 %54, i1 false), !dbg !386
  %55 = load i32, ptr %6, align 4, !dbg !387
  %56 = load ptr, ptr %10, align 8, !dbg !388
  %57 = getelementptr inbounds %struct.ystr_head_s, ptr %56, i32 0, i32 1, !dbg !389
  %58 = load i32, ptr %57, align 4, !dbg !390
  %59 = add i32 %58, %55, !dbg !390
  store i32 %59, ptr %57, align 4, !dbg !390
  store i32 1, ptr %3, align 4, !dbg !391
  br label %125, !dbg !391

60:                                               ; preds = %29
  %61 = load ptr, ptr %10, align 8, !dbg !392
  %62 = getelementptr inbounds %struct.ystr_head_s, ptr %61, i32 0, i32 1, !dbg !393
  %63 = load i32, ptr %62, align 4, !dbg !393
  %64 = load i32, ptr %6, align 4, !dbg !394
  %65 = add i32 %63, %64, !dbg !395
  store i32 %65, ptr %7, align 4, !dbg !396
  %66 = load i32, ptr %7, align 4, !dbg !397
  %67 = icmp ult i32 %66, 65536, !dbg !398
  br i1 %67, label %68, label %69, !dbg !399

68:                                               ; preds = %60
  br label %74, !dbg !399

69:                                               ; preds = %60
  %70 = load i32, ptr %7, align 4, !dbg !400
  %71 = icmp ult i32 %70, 1048576, !dbg !401
  %72 = zext i1 %71 to i64, !dbg !402
  %73 = select i1 %71, i32 65536, i32 1048576, !dbg !402
  br label %74, !dbg !399

74:                                               ; preds = %69, %68
  %75 = phi i32 [ 4096, %68 ], [ %73, %69 ], !dbg !399
  store i32 %75, ptr %9, align 4, !dbg !403
  %76 = load i32, ptr %7, align 4, !dbg !404
  %77 = add i32 %76, 1, !dbg !405
  %78 = load i32, ptr %9, align 4, !dbg !406
  %79 = udiv i32 %77, %78, !dbg !407
  %80 = add i32 %79, 1, !dbg !408
  %81 = load i32, ptr %9, align 4, !dbg !409
  %82 = mul i32 %80, %81, !dbg !410
  store i32 %82, ptr %8, align 4, !dbg !411
  %83 = load i32, ptr %8, align 4, !dbg !412
  %84 = zext i32 %83 to i64, !dbg !412
  %85 = add i64 %84, 8, !dbg !412
  %86 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %85) #9, !dbg !412
  store ptr %86, ptr %12, align 8, !dbg !414
  %87 = icmp ne ptr %86, null, !dbg !414
  br i1 %87, label %89, label %88, !dbg !415

88:                                               ; preds = %74
  store i32 0, ptr %3, align 4, !dbg !416
  br label %125, !dbg !416

89:                                               ; preds = %74
  %90 = load ptr, ptr %12, align 8, !dbg !417
  store ptr %90, ptr %11, align 8, !dbg !418
  %91 = load ptr, ptr %12, align 8, !dbg !419
  %92 = getelementptr inbounds i8, ptr %91, i64 8, !dbg !419
  store ptr %92, ptr %12, align 8, !dbg !419
  %93 = load i32, ptr %8, align 4, !dbg !420
  %94 = load ptr, ptr %11, align 8, !dbg !421
  %95 = getelementptr inbounds %struct.ystr_head_s, ptr %94, i32 0, i32 0, !dbg !422
  store i32 %93, ptr %95, align 4, !dbg !423
  %96 = load i32, ptr %7, align 4, !dbg !424
  %97 = load ptr, ptr %11, align 8, !dbg !425
  %98 = getelementptr inbounds %struct.ystr_head_s, ptr %97, i32 0, i32 1, !dbg !426
  store i32 %96, ptr %98, align 4, !dbg !427
  %99 = load ptr, ptr %12, align 8, !dbg !428
  %100 = load ptr, ptr %4, align 8, !dbg !429
  %101 = load ptr, ptr %100, align 8, !dbg !430
  %102 = load ptr, ptr %10, align 8, !dbg !431
  %103 = getelementptr inbounds %struct.ystr_head_s, ptr %102, i32 0, i32 1, !dbg !432
  %104 = load i32, ptr %103, align 4, !dbg !432
  %105 = zext i32 %104 to i64, !dbg !431
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %99, ptr align 1 %101, i64 %105, i1 false), !dbg !433
  %106 = load ptr, ptr %12, align 8, !dbg !434
  %107 = load ptr, ptr %10, align 8, !dbg !435
  %108 = getelementptr inbounds %struct.ystr_head_s, ptr %107, i32 0, i32 1, !dbg !436
  %109 = load i32, ptr %108, align 4, !dbg !436
  %110 = zext i32 %109 to i64, !dbg !437
  %111 = getelementptr inbounds i8, ptr %106, i64 %110, !dbg !437
  %112 = load ptr, ptr %5, align 8, !dbg !438
  %113 = load i32, ptr %6, align 4, !dbg !439
  %114 = add i32 %113, 1, !dbg !440
  %115 = zext i32 %114 to i64, !dbg !439
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %111, ptr align 1 %112, i64 %115, i1 false), !dbg !441
  %116 = load ptr, ptr %10, align 8, !dbg !442
  %117 = icmp ne ptr %116, null, !dbg !442
  br i1 %117, label %118, label %120, !dbg !442

118:                                              ; preds = %89
  %119 = load ptr, ptr %10, align 8, !dbg !442
  call void @free(ptr noundef %119) #10, !dbg !442
  br label %121, !dbg !442

120:                                              ; preds = %89
  br label %121, !dbg !442

121:                                              ; preds = %120, %118
  %122 = phi ptr [ null, %118 ], [ null, %120 ], !dbg !442
  store ptr null, ptr %10, align 8, !dbg !442
  %123 = load ptr, ptr %12, align 8, !dbg !443
  %124 = load ptr, ptr %4, align 8, !dbg !444
  store ptr %123, ptr %124, align 8, !dbg !445
  store i32 1, ptr %3, align 4, !dbg !446
  br label %125, !dbg !446

125:                                              ; preds = %121, %88, %43, %25, %20
  %126 = load i32, ptr %3, align 4, !dbg !447
  ret i32 %126, !dbg !447
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ys_tac(ptr noundef %0, ptr noundef %1) #0 !dbg !448 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !449, metadata !DIExpression()), !dbg !450
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata ptr %6, metadata !453, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.declare(metadata ptr %7, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata ptr %8, metadata !457, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.declare(metadata ptr %9, metadata !459, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.declare(metadata ptr %10, metadata !461, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.declare(metadata ptr %11, metadata !463, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.declare(metadata ptr %12, metadata !465, metadata !DIExpression()), !dbg !466
  %15 = load ptr, ptr %5, align 8, !dbg !467
  %16 = icmp ne ptr %15, null, !dbg !467
  br i1 %16, label %17, label %22, !dbg !469

17:                                               ; preds = %2
  %18 = load ptr, ptr %5, align 8, !dbg !470
  %19 = call i64 @strlen(ptr noundef %18) #8, !dbg !471
  %20 = trunc i64 %19 to i32, !dbg !471
  store i32 %20, ptr %6, align 4, !dbg !472
  %21 = icmp ne i32 %20, 0, !dbg !472
  br i1 %21, label %23, label %22, !dbg !473

22:                                               ; preds = %17, %2
  store i32 1, ptr %3, align 4, !dbg !474
  br label %145, !dbg !474

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 8, !dbg !475
  %25 = load ptr, ptr %24, align 8, !dbg !477
  %26 = icmp ne ptr %25, null, !dbg !477
  br i1 %26, label %31, label %27, !dbg !478

27:                                               ; preds = %23
  %28 = load ptr, ptr %5, align 8, !dbg !479
  %29 = call ptr @ys_new(ptr noundef %28), !dbg !481
  %30 = load ptr, ptr %4, align 8, !dbg !482
  store ptr %29, ptr %30, align 8, !dbg !483
  store i32 1, ptr %3, align 4, !dbg !484
  br label %145, !dbg !484

31:                                               ; preds = %23
  %32 = load ptr, ptr %4, align 8, !dbg !485
  %33 = load ptr, ptr %32, align 8, !dbg !486
  %34 = getelementptr inbounds i8, ptr %33, i64 -8, !dbg !487
  store ptr %34, ptr %10, align 8, !dbg !488
  %35 = load ptr, ptr %10, align 8, !dbg !489
  %36 = getelementptr inbounds %struct.ystr_head_s, ptr %35, i32 0, i32 1, !dbg !491
  %37 = load i32, ptr %36, align 4, !dbg !491
  %38 = add i32 %37, 1, !dbg !492
  %39 = load i32, ptr %6, align 4, !dbg !493
  %40 = add i32 %38, %39, !dbg !494
  %41 = load ptr, ptr %10, align 8, !dbg !495
  %42 = getelementptr inbounds %struct.ystr_head_s, ptr %41, i32 0, i32 0, !dbg !496
  %43 = load i32, ptr %42, align 4, !dbg !496
  %44 = icmp ule i32 %40, %43, !dbg !497
  br i1 %44, label %45, label %82, !dbg !498

45:                                               ; preds = %31
  call void @llvm.dbg.declare(metadata ptr %13, metadata !499, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.declare(metadata ptr %14, metadata !502, metadata !DIExpression()), !dbg !503
  %46 = load ptr, ptr %4, align 8, !dbg !504
  %47 = load ptr, ptr %46, align 8, !dbg !506
  %48 = load ptr, ptr %10, align 8, !dbg !507
  %49 = getelementptr inbounds %struct.ystr_head_s, ptr %48, i32 0, i32 1, !dbg !508
  %50 = load i32, ptr %49, align 4, !dbg !508
  %51 = zext i32 %50 to i64, !dbg !509
  %52 = getelementptr inbounds i8, ptr %47, i64 %51, !dbg !509
  store ptr %52, ptr %13, align 8, !dbg !510
  %53 = load ptr, ptr %13, align 8, !dbg !511
  %54 = load i32, ptr %6, align 4, !dbg !512
  %55 = zext i32 %54 to i64, !dbg !513
  %56 = getelementptr inbounds i8, ptr %53, i64 %55, !dbg !513
  store ptr %56, ptr %14, align 8, !dbg !514
  br label %57, !dbg !515

57:                                               ; preds = %66, %45
  %58 = load ptr, ptr %13, align 8, !dbg !516
  %59 = load ptr, ptr %4, align 8, !dbg !518
  %60 = load ptr, ptr %59, align 8, !dbg !519
  %61 = icmp uge ptr %58, %60, !dbg !520
  br i1 %61, label %62, label %71, !dbg !521

62:                                               ; preds = %57
  %63 = load ptr, ptr %13, align 8, !dbg !522
  %64 = load i8, ptr %63, align 1, !dbg !523
  %65 = load ptr, ptr %14, align 8, !dbg !524
  store i8 %64, ptr %65, align 1, !dbg !525
  br label %66, !dbg !526

66:                                               ; preds = %62
  %67 = load ptr, ptr %13, align 8, !dbg !527
  %68 = getelementptr inbounds i8, ptr %67, i32 -1, !dbg !527
  store ptr %68, ptr %13, align 8, !dbg !527
  %69 = load ptr, ptr %14, align 8, !dbg !528
  %70 = getelementptr inbounds i8, ptr %69, i32 -1, !dbg !528
  store ptr %70, ptr %14, align 8, !dbg !528
  br label %57, !dbg !529, !llvm.loop !530

71:                                               ; preds = %57
  %72 = load ptr, ptr %4, align 8, !dbg !532
  %73 = load ptr, ptr %72, align 8, !dbg !533
  %74 = load ptr, ptr %5, align 8, !dbg !534
  %75 = load i32, ptr %6, align 4, !dbg !535
  %76 = zext i32 %75 to i64, !dbg !535
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %73, ptr align 1 %74, i64 %76, i1 false), !dbg !536
  %77 = load i32, ptr %6, align 4, !dbg !537
  %78 = load ptr, ptr %10, align 8, !dbg !538
  %79 = getelementptr inbounds %struct.ystr_head_s, ptr %78, i32 0, i32 1, !dbg !539
  %80 = load i32, ptr %79, align 4, !dbg !540
  %81 = add i32 %80, %77, !dbg !540
  store i32 %81, ptr %79, align 4, !dbg !540
  store i32 1, ptr %3, align 4, !dbg !541
  br label %145, !dbg !541

82:                                               ; preds = %31
  %83 = load ptr, ptr %10, align 8, !dbg !542
  %84 = getelementptr inbounds %struct.ystr_head_s, ptr %83, i32 0, i32 1, !dbg !543
  %85 = load i32, ptr %84, align 4, !dbg !543
  %86 = load i32, ptr %6, align 4, !dbg !544
  %87 = add i32 %85, %86, !dbg !545
  store i32 %87, ptr %7, align 4, !dbg !546
  %88 = load i32, ptr %7, align 4, !dbg !547
  %89 = icmp ult i32 %88, 65536, !dbg !548
  br i1 %89, label %90, label %91, !dbg !549

90:                                               ; preds = %82
  br label %96, !dbg !549

91:                                               ; preds = %82
  %92 = load i32, ptr %7, align 4, !dbg !550
  %93 = icmp ult i32 %92, 1048576, !dbg !551
  %94 = zext i1 %93 to i64, !dbg !552
  %95 = select i1 %93, i32 65536, i32 1048576, !dbg !552
  br label %96, !dbg !549

96:                                               ; preds = %91, %90
  %97 = phi i32 [ 4096, %90 ], [ %95, %91 ], !dbg !549
  store i32 %97, ptr %9, align 4, !dbg !553
  %98 = load i32, ptr %7, align 4, !dbg !554
  %99 = add i32 %98, 1, !dbg !555
  %100 = load i32, ptr %9, align 4, !dbg !556
  %101 = udiv i32 %99, %100, !dbg !557
  %102 = add i32 %101, 1, !dbg !558
  %103 = load i32, ptr %9, align 4, !dbg !559
  %104 = mul i32 %102, %103, !dbg !560
  store i32 %104, ptr %8, align 4, !dbg !561
  %105 = load i32, ptr %8, align 4, !dbg !562
  %106 = zext i32 %105 to i64, !dbg !562
  %107 = add i64 %106, 8, !dbg !562
  %108 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %107) #9, !dbg !562
  store ptr %108, ptr %12, align 8, !dbg !564
  %109 = icmp ne ptr %108, null, !dbg !564
  br i1 %109, label %111, label %110, !dbg !565

110:                                              ; preds = %96
  store i32 0, ptr %3, align 4, !dbg !566
  br label %145, !dbg !566

111:                                              ; preds = %96
  %112 = load ptr, ptr %12, align 8, !dbg !567
  store ptr %112, ptr %11, align 8, !dbg !568
  %113 = load ptr, ptr %12, align 8, !dbg !569
  %114 = getelementptr inbounds i8, ptr %113, i64 8, !dbg !569
  store ptr %114, ptr %12, align 8, !dbg !569
  %115 = load i32, ptr %8, align 4, !dbg !570
  %116 = load ptr, ptr %11, align 8, !dbg !571
  %117 = getelementptr inbounds %struct.ystr_head_s, ptr %116, i32 0, i32 0, !dbg !572
  store i32 %115, ptr %117, align 4, !dbg !573
  %118 = load i32, ptr %7, align 4, !dbg !574
  %119 = load ptr, ptr %11, align 8, !dbg !575
  %120 = getelementptr inbounds %struct.ystr_head_s, ptr %119, i32 0, i32 1, !dbg !576
  store i32 %118, ptr %120, align 4, !dbg !577
  %121 = load ptr, ptr %12, align 8, !dbg !578
  %122 = load ptr, ptr %5, align 8, !dbg !579
  %123 = load i32, ptr %6, align 4, !dbg !580
  %124 = zext i32 %123 to i64, !dbg !580
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %121, ptr align 1 %122, i64 %124, i1 false), !dbg !581
  %125 = load ptr, ptr %12, align 8, !dbg !582
  %126 = load i32, ptr %6, align 4, !dbg !583
  %127 = zext i32 %126 to i64, !dbg !584
  %128 = getelementptr inbounds i8, ptr %125, i64 %127, !dbg !584
  %129 = load ptr, ptr %4, align 8, !dbg !585
  %130 = load ptr, ptr %129, align 8, !dbg !586
  %131 = load ptr, ptr %10, align 8, !dbg !587
  %132 = getelementptr inbounds %struct.ystr_head_s, ptr %131, i32 0, i32 1, !dbg !588
  %133 = load i32, ptr %132, align 4, !dbg !588
  %134 = add i32 %133, 1, !dbg !589
  %135 = zext i32 %134 to i64, !dbg !587
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %128, ptr align 1 %130, i64 %135, i1 false), !dbg !590
  %136 = load ptr, ptr %10, align 8, !dbg !591
  %137 = icmp ne ptr %136, null, !dbg !591
  br i1 %137, label %138, label %140, !dbg !591

138:                                              ; preds = %111
  %139 = load ptr, ptr %10, align 8, !dbg !591
  call void @free(ptr noundef %139) #10, !dbg !591
  br label %141, !dbg !591

140:                                              ; preds = %111
  br label %141, !dbg !591

141:                                              ; preds = %140, %138
  %142 = phi ptr [ null, %138 ], [ null, %140 ], !dbg !591
  store ptr null, ptr %10, align 8, !dbg !591
  %143 = load ptr, ptr %12, align 8, !dbg !592
  %144 = load ptr, ptr %4, align 8, !dbg !593
  store ptr %143, ptr %144, align 8, !dbg !594
  store i32 1, ptr %3, align 4, !dbg !595
  br label %145, !dbg !595

145:                                              ; preds = %141, %110, %71, %27, %22
  %146 = load i32, ptr %3, align 4, !dbg !596
  ret i32 %146, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ys_ncat(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !597 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !600, metadata !DIExpression()), !dbg !601
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !602, metadata !DIExpression()), !dbg !603
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !604, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.declare(metadata ptr %8, metadata !606, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.declare(metadata ptr %9, metadata !608, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.declare(metadata ptr %10, metadata !610, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.declare(metadata ptr %11, metadata !612, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.declare(metadata ptr %12, metadata !614, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.declare(metadata ptr %13, metadata !616, metadata !DIExpression()), !dbg !617
  %14 = load ptr, ptr %6, align 8, !dbg !618
  %15 = icmp ne ptr %14, null, !dbg !618
  br i1 %15, label %16, label %19, !dbg !620

16:                                               ; preds = %3
  %17 = load i32, ptr %7, align 4, !dbg !621
  %18 = icmp ne i32 %17, 0, !dbg !621
  br i1 %18, label %20, label %19, !dbg !622

19:                                               ; preds = %16, %3
  store i32 1, ptr %4, align 4, !dbg !623
  br label %134, !dbg !623

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8, !dbg !624
  %22 = load ptr, ptr %21, align 8, !dbg !626
  %23 = icmp ne ptr %22, null, !dbg !626
  br i1 %23, label %28, label %24, !dbg !627

24:                                               ; preds = %20
  %25 = load ptr, ptr %6, align 8, !dbg !628
  %26 = call ptr @ys_new(ptr noundef %25), !dbg !630
  %27 = load ptr, ptr %5, align 8, !dbg !631
  store ptr %26, ptr %27, align 8, !dbg !632
  store i32 1, ptr %4, align 4, !dbg !633
  br label %134, !dbg !633

28:                                               ; preds = %20
  %29 = load ptr, ptr %5, align 8, !dbg !634
  %30 = load ptr, ptr %29, align 8, !dbg !635
  %31 = getelementptr inbounds i8, ptr %30, i64 -8, !dbg !636
  store ptr %31, ptr %11, align 8, !dbg !637
  %32 = load ptr, ptr %11, align 8, !dbg !638
  %33 = getelementptr inbounds %struct.ystr_head_s, ptr %32, i32 0, i32 1, !dbg !640
  %34 = load i32, ptr %33, align 4, !dbg !640
  %35 = add i32 %34, 1, !dbg !641
  %36 = load i32, ptr %7, align 4, !dbg !642
  %37 = add i32 %35, %36, !dbg !643
  %38 = load ptr, ptr %11, align 8, !dbg !644
  %39 = getelementptr inbounds %struct.ystr_head_s, ptr %38, i32 0, i32 0, !dbg !645
  %40 = load i32, ptr %39, align 4, !dbg !645
  %41 = icmp ule i32 %37, %40, !dbg !646
  br i1 %41, label %42, label %66, !dbg !647

42:                                               ; preds = %28
  %43 = load ptr, ptr %5, align 8, !dbg !648
  %44 = load ptr, ptr %43, align 8, !dbg !650
  %45 = load ptr, ptr %11, align 8, !dbg !651
  %46 = getelementptr inbounds %struct.ystr_head_s, ptr %45, i32 0, i32 1, !dbg !652
  %47 = load i32, ptr %46, align 4, !dbg !652
  %48 = zext i32 %47 to i64, !dbg !653
  %49 = getelementptr inbounds i8, ptr %44, i64 %48, !dbg !653
  %50 = load ptr, ptr %6, align 8, !dbg !654
  %51 = load i32, ptr %7, align 4, !dbg !655
  %52 = zext i32 %51 to i64, !dbg !655
  %53 = call ptr @strncpy(ptr noundef %49, ptr noundef %50, i64 noundef %52) #10, !dbg !656
  %54 = load i32, ptr %7, align 4, !dbg !657
  %55 = load ptr, ptr %11, align 8, !dbg !658
  %56 = getelementptr inbounds %struct.ystr_head_s, ptr %55, i32 0, i32 1, !dbg !659
  %57 = load i32, ptr %56, align 4, !dbg !660
  %58 = add i32 %57, %54, !dbg !660
  store i32 %58, ptr %56, align 4, !dbg !660
  %59 = load ptr, ptr %5, align 8, !dbg !661
  %60 = load ptr, ptr %59, align 8, !dbg !662
  %61 = load ptr, ptr %11, align 8, !dbg !663
  %62 = getelementptr inbounds %struct.ystr_head_s, ptr %61, i32 0, i32 1, !dbg !664
  %63 = load i32, ptr %62, align 4, !dbg !664
  %64 = zext i32 %63 to i64, !dbg !665
  %65 = getelementptr inbounds i8, ptr %60, i64 %64, !dbg !665
  store i8 0, ptr %65, align 1, !dbg !666
  store i32 1, ptr %4, align 4, !dbg !667
  br label %134, !dbg !667

66:                                               ; preds = %28
  %67 = load ptr, ptr %11, align 8, !dbg !668
  %68 = getelementptr inbounds %struct.ystr_head_s, ptr %67, i32 0, i32 1, !dbg !669
  %69 = load i32, ptr %68, align 4, !dbg !669
  %70 = load i32, ptr %7, align 4, !dbg !670
  %71 = add i32 %69, %70, !dbg !671
  store i32 %71, ptr %8, align 4, !dbg !672
  %72 = load i32, ptr %8, align 4, !dbg !673
  %73 = icmp ult i32 %72, 65536, !dbg !674
  br i1 %73, label %74, label %75, !dbg !675

74:                                               ; preds = %66
  br label %80, !dbg !675

75:                                               ; preds = %66
  %76 = load i32, ptr %8, align 4, !dbg !676
  %77 = icmp ult i32 %76, 1048576, !dbg !677
  %78 = zext i1 %77 to i64, !dbg !678
  %79 = select i1 %77, i32 65536, i32 1048576, !dbg !678
  br label %80, !dbg !675

80:                                               ; preds = %75, %74
  %81 = phi i32 [ 4096, %74 ], [ %79, %75 ], !dbg !675
  store i32 %81, ptr %10, align 4, !dbg !679
  %82 = load i32, ptr %8, align 4, !dbg !680
  %83 = add i32 %82, 1, !dbg !681
  %84 = load i32, ptr %10, align 4, !dbg !682
  %85 = udiv i32 %83, %84, !dbg !683
  %86 = add i32 %85, 1, !dbg !684
  %87 = load i32, ptr %10, align 4, !dbg !685
  %88 = mul i32 %86, %87, !dbg !686
  store i32 %88, ptr %9, align 4, !dbg !687
  %89 = load i32, ptr %9, align 4, !dbg !688
  %90 = zext i32 %89 to i64, !dbg !688
  %91 = add i64 %90, 8, !dbg !688
  %92 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %91) #9, !dbg !688
  store ptr %92, ptr %13, align 8, !dbg !690
  %93 = icmp ne ptr %92, null, !dbg !690
  br i1 %93, label %95, label %94, !dbg !691

94:                                               ; preds = %80
  store i32 0, ptr %4, align 4, !dbg !692
  br label %134, !dbg !692

95:                                               ; preds = %80
  %96 = load ptr, ptr %13, align 8, !dbg !693
  store ptr %96, ptr %12, align 8, !dbg !694
  %97 = load ptr, ptr %13, align 8, !dbg !695
  %98 = getelementptr inbounds i8, ptr %97, i64 8, !dbg !695
  store ptr %98, ptr %13, align 8, !dbg !695
  %99 = load i32, ptr %9, align 4, !dbg !696
  %100 = load ptr, ptr %12, align 8, !dbg !697
  %101 = getelementptr inbounds %struct.ystr_head_s, ptr %100, i32 0, i32 0, !dbg !698
  store i32 %99, ptr %101, align 4, !dbg !699
  %102 = load i32, ptr %8, align 4, !dbg !700
  %103 = load ptr, ptr %12, align 8, !dbg !701
  %104 = getelementptr inbounds %struct.ystr_head_s, ptr %103, i32 0, i32 1, !dbg !702
  store i32 %102, ptr %104, align 4, !dbg !703
  %105 = load ptr, ptr %13, align 8, !dbg !704
  %106 = load ptr, ptr %5, align 8, !dbg !705
  %107 = load ptr, ptr %106, align 8, !dbg !706
  %108 = call ptr @strcpy(ptr noundef %105, ptr noundef %107) #10, !dbg !707
  %109 = load ptr, ptr %13, align 8, !dbg !708
  %110 = load ptr, ptr %11, align 8, !dbg !709
  %111 = getelementptr inbounds %struct.ystr_head_s, ptr %110, i32 0, i32 1, !dbg !710
  %112 = load i32, ptr %111, align 4, !dbg !710
  %113 = zext i32 %112 to i64, !dbg !711
  %114 = getelementptr inbounds i8, ptr %109, i64 %113, !dbg !711
  %115 = load ptr, ptr %6, align 8, !dbg !712
  %116 = load i32, ptr %7, align 4, !dbg !713
  %117 = zext i32 %116 to i64, !dbg !713
  %118 = call ptr @strncpy(ptr noundef %114, ptr noundef %115, i64 noundef %117) #10, !dbg !714
  %119 = load ptr, ptr %13, align 8, !dbg !715
  %120 = load ptr, ptr %12, align 8, !dbg !716
  %121 = getelementptr inbounds %struct.ystr_head_s, ptr %120, i32 0, i32 1, !dbg !717
  %122 = load i32, ptr %121, align 4, !dbg !717
  %123 = zext i32 %122 to i64, !dbg !715
  %124 = getelementptr inbounds i8, ptr %119, i64 %123, !dbg !715
  store i8 0, ptr %124, align 1, !dbg !718
  %125 = load ptr, ptr %11, align 8, !dbg !719
  %126 = icmp ne ptr %125, null, !dbg !719
  br i1 %126, label %127, label %129, !dbg !719

127:                                              ; preds = %95
  %128 = load ptr, ptr %11, align 8, !dbg !719
  call void @free(ptr noundef %128) #10, !dbg !719
  br label %130, !dbg !719

129:                                              ; preds = %95
  br label %130, !dbg !719

130:                                              ; preds = %129, %127
  %131 = phi ptr [ null, %127 ], [ null, %129 ], !dbg !719
  store ptr null, ptr %11, align 8, !dbg !719
  %132 = load ptr, ptr %13, align 8, !dbg !720
  %133 = load ptr, ptr %5, align 8, !dbg !721
  store ptr %132, ptr %133, align 8, !dbg !722
  store i32 1, ptr %4, align 4, !dbg !723
  br label %134, !dbg !723

134:                                              ; preds = %130, %94, %42, %24, %19
  %135 = load i32, ptr %4, align 4, !dbg !724
  ret i32 %135, !dbg !724
}

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ys_ntac(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !725 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !726, metadata !DIExpression()), !dbg !727
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !728, metadata !DIExpression()), !dbg !729
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !730, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.declare(metadata ptr %8, metadata !732, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.declare(metadata ptr %9, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.declare(metadata ptr %10, metadata !736, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.declare(metadata ptr %11, metadata !738, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.declare(metadata ptr %12, metadata !740, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.declare(metadata ptr %13, metadata !742, metadata !DIExpression()), !dbg !743
  %16 = load ptr, ptr %6, align 8, !dbg !744
  %17 = icmp ne ptr %16, null, !dbg !744
  br i1 %17, label %18, label %21, !dbg !746

18:                                               ; preds = %3
  %19 = load i32, ptr %7, align 4, !dbg !747
  %20 = icmp ne i32 %19, 0, !dbg !747
  br i1 %20, label %22, label %21, !dbg !748

21:                                               ; preds = %18, %3
  store i32 1, ptr %4, align 4, !dbg !749
  br label %158, !dbg !749

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !dbg !750
  %24 = load ptr, ptr %23, align 8, !dbg !752
  %25 = icmp ne ptr %24, null, !dbg !752
  br i1 %25, label %30, label %26, !dbg !753

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 8, !dbg !754
  %28 = call ptr @ys_new(ptr noundef %27), !dbg !756
  %29 = load ptr, ptr %5, align 8, !dbg !757
  store ptr %28, ptr %29, align 8, !dbg !758
  store i32 1, ptr %4, align 4, !dbg !759
  br label %158, !dbg !759

30:                                               ; preds = %22
  %31 = load ptr, ptr %6, align 8, !dbg !760
  %32 = call i64 @strlen(ptr noundef %31) #8, !dbg !761
  %33 = load i32, ptr %7, align 4, !dbg !762
  %34 = zext i32 %33 to i64, !dbg !762
  %35 = icmp ult i64 %32, %34, !dbg !763
  br i1 %35, label %36, label %39, !dbg !764

36:                                               ; preds = %30
  %37 = load ptr, ptr %6, align 8, !dbg !765
  %38 = call i64 @strlen(ptr noundef %37) #8, !dbg !766
  br label %42, !dbg !764

39:                                               ; preds = %30
  %40 = load i32, ptr %7, align 4, !dbg !767
  %41 = zext i32 %40 to i64, !dbg !767
  br label %42, !dbg !764

42:                                               ; preds = %39, %36
  %43 = phi i64 [ %38, %36 ], [ %41, %39 ], !dbg !764
  %44 = trunc i64 %43 to i32, !dbg !764
  store i32 %44, ptr %7, align 4, !dbg !768
  %45 = load ptr, ptr %5, align 8, !dbg !769
  %46 = load ptr, ptr %45, align 8, !dbg !770
  %47 = getelementptr inbounds i8, ptr %46, i64 -8, !dbg !771
  store ptr %47, ptr %11, align 8, !dbg !772
  %48 = load ptr, ptr %11, align 8, !dbg !773
  %49 = getelementptr inbounds %struct.ystr_head_s, ptr %48, i32 0, i32 1, !dbg !775
  %50 = load i32, ptr %49, align 4, !dbg !775
  %51 = add i32 %50, 1, !dbg !776
  %52 = load i32, ptr %7, align 4, !dbg !777
  %53 = add i32 %51, %52, !dbg !778
  %54 = load ptr, ptr %11, align 8, !dbg !779
  %55 = getelementptr inbounds %struct.ystr_head_s, ptr %54, i32 0, i32 0, !dbg !780
  %56 = load i32, ptr %55, align 4, !dbg !780
  %57 = icmp ule i32 %53, %56, !dbg !781
  br i1 %57, label %58, label %95, !dbg !782

58:                                               ; preds = %42
  call void @llvm.dbg.declare(metadata ptr %14, metadata !783, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.declare(metadata ptr %15, metadata !786, metadata !DIExpression()), !dbg !787
  %59 = load ptr, ptr %5, align 8, !dbg !788
  %60 = load ptr, ptr %59, align 8, !dbg !790
  %61 = load ptr, ptr %11, align 8, !dbg !791
  %62 = getelementptr inbounds %struct.ystr_head_s, ptr %61, i32 0, i32 1, !dbg !792
  %63 = load i32, ptr %62, align 4, !dbg !792
  %64 = zext i32 %63 to i64, !dbg !793
  %65 = getelementptr inbounds i8, ptr %60, i64 %64, !dbg !793
  store ptr %65, ptr %14, align 8, !dbg !794
  %66 = load ptr, ptr %14, align 8, !dbg !795
  %67 = load i32, ptr %7, align 4, !dbg !796
  %68 = zext i32 %67 to i64, !dbg !797
  %69 = getelementptr inbounds i8, ptr %66, i64 %68, !dbg !797
  store ptr %69, ptr %15, align 8, !dbg !798
  br label %70, !dbg !799

70:                                               ; preds = %79, %58
  %71 = load ptr, ptr %14, align 8, !dbg !800
  %72 = load ptr, ptr %5, align 8, !dbg !802
  %73 = load ptr, ptr %72, align 8, !dbg !803
  %74 = icmp uge ptr %71, %73, !dbg !804
  br i1 %74, label %75, label %84, !dbg !805

75:                                               ; preds = %70
  %76 = load ptr, ptr %14, align 8, !dbg !806
  %77 = load i8, ptr %76, align 1, !dbg !807
  %78 = load ptr, ptr %15, align 8, !dbg !808
  store i8 %77, ptr %78, align 1, !dbg !809
  br label %79, !dbg !810

79:                                               ; preds = %75
  %80 = load ptr, ptr %14, align 8, !dbg !811
  %81 = getelementptr inbounds i8, ptr %80, i32 -1, !dbg !811
  store ptr %81, ptr %14, align 8, !dbg !811
  %82 = load ptr, ptr %15, align 8, !dbg !812
  %83 = getelementptr inbounds i8, ptr %82, i32 -1, !dbg !812
  store ptr %83, ptr %15, align 8, !dbg !812
  br label %70, !dbg !813, !llvm.loop !814

84:                                               ; preds = %70
  %85 = load ptr, ptr %5, align 8, !dbg !816
  %86 = load ptr, ptr %85, align 8, !dbg !817
  %87 = load ptr, ptr %6, align 8, !dbg !818
  %88 = load i32, ptr %7, align 4, !dbg !819
  %89 = zext i32 %88 to i64, !dbg !819
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %86, ptr align 1 %87, i64 %89, i1 false), !dbg !820
  %90 = load i32, ptr %7, align 4, !dbg !821
  %91 = load ptr, ptr %11, align 8, !dbg !822
  %92 = getelementptr inbounds %struct.ystr_head_s, ptr %91, i32 0, i32 1, !dbg !823
  %93 = load i32, ptr %92, align 4, !dbg !824
  %94 = add i32 %93, %90, !dbg !824
  store i32 %94, ptr %92, align 4, !dbg !824
  store i32 1, ptr %4, align 4, !dbg !825
  br label %158, !dbg !825

95:                                               ; preds = %42
  %96 = load ptr, ptr %11, align 8, !dbg !826
  %97 = getelementptr inbounds %struct.ystr_head_s, ptr %96, i32 0, i32 1, !dbg !827
  %98 = load i32, ptr %97, align 4, !dbg !827
  %99 = load i32, ptr %7, align 4, !dbg !828
  %100 = add i32 %98, %99, !dbg !829
  store i32 %100, ptr %8, align 4, !dbg !830
  %101 = load i32, ptr %8, align 4, !dbg !831
  %102 = icmp ult i32 %101, 65536, !dbg !832
  br i1 %102, label %103, label %104, !dbg !833

103:                                              ; preds = %95
  br label %109, !dbg !833

104:                                              ; preds = %95
  %105 = load i32, ptr %8, align 4, !dbg !834
  %106 = icmp ult i32 %105, 1048576, !dbg !835
  %107 = zext i1 %106 to i64, !dbg !836
  %108 = select i1 %106, i32 65536, i32 1048576, !dbg !836
  br label %109, !dbg !833

109:                                              ; preds = %104, %103
  %110 = phi i32 [ 4096, %103 ], [ %108, %104 ], !dbg !833
  store i32 %110, ptr %10, align 4, !dbg !837
  %111 = load i32, ptr %8, align 4, !dbg !838
  %112 = add i32 %111, 1, !dbg !839
  %113 = load i32, ptr %10, align 4, !dbg !840
  %114 = udiv i32 %112, %113, !dbg !841
  %115 = add i32 %114, 1, !dbg !842
  %116 = load i32, ptr %10, align 4, !dbg !843
  %117 = mul i32 %115, %116, !dbg !844
  store i32 %117, ptr %9, align 4, !dbg !845
  %118 = load i32, ptr %9, align 4, !dbg !846
  %119 = zext i32 %118 to i64, !dbg !846
  %120 = add i64 %119, 8, !dbg !846
  %121 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %120) #9, !dbg !846
  store ptr %121, ptr %13, align 8, !dbg !848
  %122 = icmp ne ptr %121, null, !dbg !848
  br i1 %122, label %124, label %123, !dbg !849

123:                                              ; preds = %109
  store i32 0, ptr %4, align 4, !dbg !850
  br label %158, !dbg !850

124:                                              ; preds = %109
  %125 = load ptr, ptr %13, align 8, !dbg !851
  store ptr %125, ptr %12, align 8, !dbg !852
  %126 = load ptr, ptr %13, align 8, !dbg !853
  %127 = getelementptr inbounds i8, ptr %126, i64 8, !dbg !853
  store ptr %127, ptr %13, align 8, !dbg !853
  %128 = load i32, ptr %9, align 4, !dbg !854
  %129 = load ptr, ptr %12, align 8, !dbg !855
  %130 = getelementptr inbounds %struct.ystr_head_s, ptr %129, i32 0, i32 0, !dbg !856
  store i32 %128, ptr %130, align 4, !dbg !857
  %131 = load i32, ptr %8, align 4, !dbg !858
  %132 = load ptr, ptr %12, align 8, !dbg !859
  %133 = getelementptr inbounds %struct.ystr_head_s, ptr %132, i32 0, i32 1, !dbg !860
  store i32 %131, ptr %133, align 4, !dbg !861
  %134 = load ptr, ptr %13, align 8, !dbg !862
  %135 = load ptr, ptr %6, align 8, !dbg !863
  %136 = load i32, ptr %7, align 4, !dbg !864
  %137 = zext i32 %136 to i64, !dbg !864
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %134, ptr align 1 %135, i64 %137, i1 false), !dbg !865
  %138 = load ptr, ptr %13, align 8, !dbg !866
  %139 = load i32, ptr %7, align 4, !dbg !867
  %140 = zext i32 %139 to i64, !dbg !868
  %141 = getelementptr inbounds i8, ptr %138, i64 %140, !dbg !868
  %142 = load ptr, ptr %5, align 8, !dbg !869
  %143 = load ptr, ptr %142, align 8, !dbg !870
  %144 = load ptr, ptr %11, align 8, !dbg !871
  %145 = getelementptr inbounds %struct.ystr_head_s, ptr %144, i32 0, i32 1, !dbg !872
  %146 = load i32, ptr %145, align 4, !dbg !872
  %147 = add i32 %146, 1, !dbg !873
  %148 = zext i32 %147 to i64, !dbg !871
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %141, ptr align 1 %143, i64 %148, i1 false), !dbg !874
  %149 = load ptr, ptr %11, align 8, !dbg !875
  %150 = icmp ne ptr %149, null, !dbg !875
  br i1 %150, label %151, label %153, !dbg !875

151:                                              ; preds = %124
  %152 = load ptr, ptr %11, align 8, !dbg !875
  call void @free(ptr noundef %152) #10, !dbg !875
  br label %154, !dbg !875

153:                                              ; preds = %124
  br label %154, !dbg !875

154:                                              ; preds = %153, %151
  %155 = phi ptr [ null, %151 ], [ null, %153 ], !dbg !875
  store ptr null, ptr %11, align 8, !dbg !875
  %156 = load ptr, ptr %13, align 8, !dbg !876
  %157 = load ptr, ptr %5, align 8, !dbg !877
  store ptr %156, ptr %157, align 8, !dbg !878
  store i32 1, ptr %4, align 4, !dbg !879
  br label %158, !dbg !879

158:                                              ; preds = %154, %123, %84, %26, %21
  %159 = load i32, ptr %4, align 4, !dbg !880
  ret i32 %159, !dbg !880
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ys_dup(ptr noundef %0) #0 !dbg !881 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !884, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.declare(metadata ptr %4, metadata !886, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.declare(metadata ptr %5, metadata !888, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.declare(metadata ptr %6, metadata !890, metadata !DIExpression()), !dbg !891
  %7 = load ptr, ptr %3, align 8, !dbg !892
  %8 = icmp ne ptr %7, null, !dbg !892
  br i1 %8, label %11, label %9, !dbg !894

9:                                                ; preds = %1
  %10 = call ptr @ys_new(ptr noundef @.str), !dbg !895
  store ptr %10, ptr %2, align 8, !dbg !896
  br label %50, !dbg !896

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8, !dbg !897
  %13 = getelementptr inbounds i8, ptr %12, i64 -8, !dbg !898
  store ptr %13, ptr %4, align 8, !dbg !899
  %14 = load ptr, ptr %4, align 8, !dbg !900
  %15 = getelementptr inbounds %struct.ystr_head_s, ptr %14, i32 0, i32 0, !dbg !900
  %16 = load i32, ptr %15, align 4, !dbg !900
  %17 = zext i32 %16 to i64, !dbg !900
  %18 = add i64 %17, 8, !dbg !900
  %19 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %18) #9, !dbg !900
  store ptr %19, ptr %6, align 8, !dbg !902
  %20 = icmp ne ptr %19, null, !dbg !902
  br i1 %20, label %23, label %21, !dbg !903

21:                                               ; preds = %11
  %22 = load ptr, ptr %6, align 8, !dbg !904
  store ptr %22, ptr %2, align 8, !dbg !905
  br label %50, !dbg !905

23:                                               ; preds = %11
  %24 = load ptr, ptr %6, align 8, !dbg !906
  store ptr %24, ptr %5, align 8, !dbg !907
  %25 = load ptr, ptr %6, align 8, !dbg !908
  %26 = getelementptr inbounds i8, ptr %25, i64 8, !dbg !908
  store ptr %26, ptr %6, align 8, !dbg !908
  %27 = load ptr, ptr %4, align 8, !dbg !909
  %28 = getelementptr inbounds %struct.ystr_head_s, ptr %27, i32 0, i32 0, !dbg !910
  %29 = load i32, ptr %28, align 4, !dbg !910
  %30 = load ptr, ptr %5, align 8, !dbg !911
  %31 = getelementptr inbounds %struct.ystr_head_s, ptr %30, i32 0, i32 0, !dbg !912
  store i32 %29, ptr %31, align 4, !dbg !913
  %32 = load ptr, ptr %4, align 8, !dbg !914
  %33 = getelementptr inbounds %struct.ystr_head_s, ptr %32, i32 0, i32 1, !dbg !915
  %34 = load i32, ptr %33, align 4, !dbg !915
  %35 = load ptr, ptr %5, align 8, !dbg !916
  %36 = getelementptr inbounds %struct.ystr_head_s, ptr %35, i32 0, i32 1, !dbg !917
  store i32 %34, ptr %36, align 4, !dbg !918
  %37 = load ptr, ptr %6, align 8, !dbg !919
  %38 = load ptr, ptr %3, align 8, !dbg !920
  %39 = load ptr, ptr %4, align 8, !dbg !921
  %40 = getelementptr inbounds %struct.ystr_head_s, ptr %39, i32 0, i32 1, !dbg !922
  %41 = load i32, ptr %40, align 4, !dbg !922
  %42 = zext i32 %41 to i64, !dbg !921
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 1 %38, i64 %42, i1 false), !dbg !923
  %43 = load ptr, ptr %6, align 8, !dbg !924
  %44 = load ptr, ptr %4, align 8, !dbg !925
  %45 = getelementptr inbounds %struct.ystr_head_s, ptr %44, i32 0, i32 1, !dbg !926
  %46 = load i32, ptr %45, align 4, !dbg !926
  %47 = zext i32 %46 to i64, !dbg !924
  %48 = getelementptr inbounds i8, ptr %43, i64 %47, !dbg !924
  store i8 0, ptr %48, align 1, !dbg !927
  %49 = load ptr, ptr %6, align 8, !dbg !928
  store ptr %49, ptr %2, align 8, !dbg !929
  br label %50, !dbg !929

50:                                               ; preds = %23, %21, %9
  %51 = load ptr, ptr %2, align 8, !dbg !930
  ret ptr %51, !dbg !930
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ys_string(ptr noundef %0) #0 !dbg !931 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !934, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.declare(metadata ptr %4, metadata !936, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.declare(metadata ptr %5, metadata !938, metadata !DIExpression()), !dbg !939
  %6 = load ptr, ptr %3, align 8, !dbg !940
  %7 = icmp ne ptr %6, null, !dbg !940
  br i1 %7, label %9, label %8, !dbg !942

8:                                                ; preds = %1
  store ptr null, ptr %2, align 8, !dbg !943
  br label %28, !dbg !943

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !dbg !944
  %11 = getelementptr inbounds i8, ptr %10, i64 -8, !dbg !945
  store ptr %11, ptr %4, align 8, !dbg !946
  %12 = load ptr, ptr %4, align 8, !dbg !947
  %13 = getelementptr inbounds %struct.ystr_head_s, ptr %12, i32 0, i32 1, !dbg !947
  %14 = load i32, ptr %13, align 4, !dbg !947
  %15 = add i32 %14, 1, !dbg !947
  %16 = zext i32 %15 to i64, !dbg !947
  %17 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %16) #9, !dbg !947
  store ptr %17, ptr %5, align 8, !dbg !949
  %18 = icmp ne ptr %17, null, !dbg !949
  br i1 %18, label %20, label %19, !dbg !950

19:                                               ; preds = %9
  store ptr null, ptr %2, align 8, !dbg !951
  br label %28, !dbg !951

20:                                               ; preds = %9
  %21 = load ptr, ptr %5, align 8, !dbg !952
  %22 = load ptr, ptr %3, align 8, !dbg !953
  %23 = load ptr, ptr %4, align 8, !dbg !954
  %24 = getelementptr inbounds %struct.ystr_head_s, ptr %23, i32 0, i32 1, !dbg !955
  %25 = load i32, ptr %24, align 4, !dbg !955
  %26 = add i32 %25, 1, !dbg !956
  %27 = zext i32 %26 to i64, !dbg !954
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %22, i64 %27, i1 false), !dbg !957
  store ptr %21, ptr %2, align 8, !dbg !958
  br label %28, !dbg !958

28:                                               ; preds = %20, %19, %8
  %29 = load ptr, ptr %2, align 8, !dbg !959
  ret ptr %29, !dbg !959
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ys_concat(ptr noundef %0, ptr noundef %1) #0 !dbg !960 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !963, metadata !DIExpression()), !dbg !964
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !965, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.declare(metadata ptr %5, metadata !967, metadata !DIExpression()), !dbg !968
  %6 = load ptr, ptr %3, align 8, !dbg !969
  %7 = call ptr @ys_new(ptr noundef %6), !dbg !970
  store ptr %7, ptr %5, align 8, !dbg !971
  %8 = load ptr, ptr %4, align 8, !dbg !972
  %9 = call i32 @ys_cat(ptr noundef %5, ptr noundef %8), !dbg !973
  %10 = load ptr, ptr %5, align 8, !dbg !974
  ret ptr %10, !dbg !975
}

; Function Attrs: noinline nounwind optnone uwtable
define void @ys_ltrim(ptr noundef %0) #0 !dbg !976 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !977, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.declare(metadata ptr %3, metadata !979, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.declare(metadata ptr %4, metadata !981, metadata !DIExpression()), !dbg !982
  %5 = load ptr, ptr %2, align 8, !dbg !983
  %6 = getelementptr inbounds i8, ptr %5, i64 -8, !dbg !984
  store ptr %6, ptr %3, align 8, !dbg !985
  %7 = load ptr, ptr %2, align 8, !dbg !986
  store ptr %7, ptr %4, align 8, !dbg !988
  br label %8, !dbg !989

8:                                                ; preds = %31, %1
  %9 = load ptr, ptr %4, align 8, !dbg !990
  %10 = load i8, ptr %9, align 1, !dbg !992
  %11 = sext i8 %10 to i32, !dbg !992
  %12 = icmp eq i32 %11, 32, !dbg !993
  br i1 %12, label %28, label %13, !dbg !994

13:                                               ; preds = %8
  %14 = load ptr, ptr %4, align 8, !dbg !995
  %15 = load i8, ptr %14, align 1, !dbg !996
  %16 = sext i8 %15 to i32, !dbg !996
  %17 = icmp eq i32 %16, 9, !dbg !997
  br i1 %17, label %28, label %18, !dbg !998

18:                                               ; preds = %13
  %19 = load ptr, ptr %4, align 8, !dbg !999
  %20 = load i8, ptr %19, align 1, !dbg !1000
  %21 = sext i8 %20 to i32, !dbg !1000
  %22 = icmp eq i32 %21, 10, !dbg !1001
  br i1 %22, label %28, label %23, !dbg !1002

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 8, !dbg !1003
  %25 = load i8, ptr %24, align 1, !dbg !1004
  %26 = sext i8 %25 to i32, !dbg !1004
  %27 = icmp eq i32 %26, 13, !dbg !1005
  br label %28, !dbg !1002

28:                                               ; preds = %23, %18, %13, %8
  %29 = phi i1 [ true, %18 ], [ true, %13 ], [ true, %8 ], [ %27, %23 ]
  br i1 %29, label %30, label %38, !dbg !1006

30:                                               ; preds = %28
  br label %31, !dbg !1006

31:                                               ; preds = %30
  %32 = load ptr, ptr %4, align 8, !dbg !1007
  %33 = getelementptr inbounds i8, ptr %32, i32 1, !dbg !1007
  store ptr %33, ptr %4, align 8, !dbg !1007
  %34 = load ptr, ptr %3, align 8, !dbg !1008
  %35 = getelementptr inbounds %struct.ystr_head_s, ptr %34, i32 0, i32 1, !dbg !1009
  %36 = load i32, ptr %35, align 4, !dbg !1010
  %37 = add i32 %36, -1, !dbg !1010
  store i32 %37, ptr %35, align 4, !dbg !1010
  br label %8, !dbg !1011, !llvm.loop !1012

38:                                               ; preds = %28
  %39 = load ptr, ptr %4, align 8, !dbg !1014
  %40 = load ptr, ptr %2, align 8, !dbg !1016
  %41 = icmp eq ptr %39, %40, !dbg !1017
  br i1 %41, label %42, label %43, !dbg !1018

42:                                               ; preds = %38
  br label %59, !dbg !1019

43:                                               ; preds = %38
  br label %44, !dbg !1020

44:                                               ; preds = %52, %43
  %45 = load ptr, ptr %4, align 8, !dbg !1021
  %46 = load i8, ptr %45, align 1, !dbg !1024
  %47 = icmp ne i8 %46, 0, !dbg !1025
  br i1 %47, label %48, label %57, !dbg !1025

48:                                               ; preds = %44
  %49 = load ptr, ptr %4, align 8, !dbg !1026
  %50 = load i8, ptr %49, align 1, !dbg !1027
  %51 = load ptr, ptr %2, align 8, !dbg !1028
  store i8 %50, ptr %51, align 1, !dbg !1029
  br label %52, !dbg !1030

52:                                               ; preds = %48
  %53 = load ptr, ptr %4, align 8, !dbg !1031
  %54 = getelementptr inbounds i8, ptr %53, i32 1, !dbg !1031
  store ptr %54, ptr %4, align 8, !dbg !1031
  %55 = load ptr, ptr %2, align 8, !dbg !1032
  %56 = getelementptr inbounds i8, ptr %55, i32 1, !dbg !1032
  store ptr %56, ptr %2, align 8, !dbg !1032
  br label %44, !dbg !1033, !llvm.loop !1034

57:                                               ; preds = %44
  %58 = load ptr, ptr %2, align 8, !dbg !1036
  store i8 0, ptr %58, align 1, !dbg !1037
  br label %59, !dbg !1038

59:                                               ; preds = %57, %42
  ret void, !dbg !1038
}

; Function Attrs: noinline nounwind optnone uwtable
define void @ys_rtrim(ptr noundef %0) #0 !dbg !1039 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1040, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1042, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1044, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1046, metadata !DIExpression()), !dbg !1047
  %6 = load ptr, ptr %2, align 8, !dbg !1048
  %7 = getelementptr inbounds i8, ptr %6, i64 -8, !dbg !1049
  store ptr %7, ptr %3, align 8, !dbg !1050
  %8 = load ptr, ptr %3, align 8, !dbg !1051
  %9 = getelementptr inbounds %struct.ystr_head_s, ptr %8, i32 0, i32 1, !dbg !1052
  %10 = load i32, ptr %9, align 4, !dbg !1052
  store i32 %10, ptr %5, align 4, !dbg !1053
  %11 = load ptr, ptr %2, align 8, !dbg !1054
  %12 = load ptr, ptr %3, align 8, !dbg !1056
  %13 = getelementptr inbounds %struct.ystr_head_s, ptr %12, i32 0, i32 1, !dbg !1057
  %14 = load i32, ptr %13, align 4, !dbg !1057
  %15 = zext i32 %14 to i64, !dbg !1058
  %16 = getelementptr inbounds i8, ptr %11, i64 %15, !dbg !1058
  %17 = getelementptr inbounds i8, ptr %16, i64 -1, !dbg !1059
  store ptr %17, ptr %4, align 8, !dbg !1060
  br label %18, !dbg !1061

18:                                               ; preds = %53, %1
  %19 = load ptr, ptr %4, align 8, !dbg !1062
  %20 = load i8, ptr %19, align 1, !dbg !1064
  %21 = sext i8 %20 to i32, !dbg !1064
  %22 = icmp eq i32 %21, 32, !dbg !1065
  br i1 %22, label %38, label %23, !dbg !1066

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 8, !dbg !1067
  %25 = load i8, ptr %24, align 1, !dbg !1068
  %26 = sext i8 %25 to i32, !dbg !1068
  %27 = icmp eq i32 %26, 9, !dbg !1069
  br i1 %27, label %38, label %28, !dbg !1070

28:                                               ; preds = %23
  %29 = load ptr, ptr %4, align 8, !dbg !1071
  %30 = load i8, ptr %29, align 1, !dbg !1072
  %31 = sext i8 %30 to i32, !dbg !1072
  %32 = icmp eq i32 %31, 10, !dbg !1073
  br i1 %32, label %38, label %33, !dbg !1074

33:                                               ; preds = %28
  %34 = load ptr, ptr %4, align 8, !dbg !1075
  %35 = load i8, ptr %34, align 1, !dbg !1076
  %36 = sext i8 %35 to i32, !dbg !1076
  %37 = icmp eq i32 %36, 13, !dbg !1077
  br label %38, !dbg !1074

38:                                               ; preds = %33, %28, %23, %18
  %39 = phi i1 [ true, %28 ], [ true, %23 ], [ true, %18 ], [ %37, %33 ]
  br i1 %39, label %40, label %56, !dbg !1078

40:                                               ; preds = %38
  %41 = load ptr, ptr %4, align 8, !dbg !1079
  %42 = load ptr, ptr %2, align 8, !dbg !1082
  %43 = icmp eq ptr %41, %42, !dbg !1083
  br i1 %43, label %44, label %48, !dbg !1084

44:                                               ; preds = %40
  %45 = load ptr, ptr %4, align 8, !dbg !1085
  store i8 0, ptr %45, align 1, !dbg !1087
  %46 = load ptr, ptr %3, align 8, !dbg !1088
  %47 = getelementptr inbounds %struct.ystr_head_s, ptr %46, i32 0, i32 1, !dbg !1089
  store i32 0, ptr %47, align 4, !dbg !1090
  br label %65, !dbg !1091

48:                                               ; preds = %40
  %49 = load ptr, ptr %3, align 8, !dbg !1092
  %50 = getelementptr inbounds %struct.ystr_head_s, ptr %49, i32 0, i32 1, !dbg !1093
  %51 = load i32, ptr %50, align 4, !dbg !1094
  %52 = add i32 %51, -1, !dbg !1094
  store i32 %52, ptr %50, align 4, !dbg !1094
  br label %53, !dbg !1095

53:                                               ; preds = %48
  %54 = load ptr, ptr %4, align 8, !dbg !1096
  %55 = getelementptr inbounds i8, ptr %54, i32 -1, !dbg !1096
  store ptr %55, ptr %4, align 8, !dbg !1096
  br label %18, !dbg !1097, !llvm.loop !1098

56:                                               ; preds = %38
  %57 = load i32, ptr %5, align 4, !dbg !1100
  %58 = load ptr, ptr %3, align 8, !dbg !1102
  %59 = getelementptr inbounds %struct.ystr_head_s, ptr %58, i32 0, i32 1, !dbg !1103
  %60 = load i32, ptr %59, align 4, !dbg !1103
  %61 = icmp ne i32 %57, %60, !dbg !1104
  br i1 %61, label %62, label %65, !dbg !1105

62:                                               ; preds = %56
  %63 = load ptr, ptr %4, align 8, !dbg !1106
  %64 = getelementptr inbounds i8, ptr %63, i64 1, !dbg !1107
  store i8 0, ptr %64, align 1, !dbg !1108
  br label %65, !dbg !1109

65:                                               ; preds = %44, %62, %56
  ret void, !dbg !1110
}

; Function Attrs: noinline nounwind optnone uwtable
define void @ys_trim(ptr noundef %0) #0 !dbg !1111 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1112, metadata !DIExpression()), !dbg !1113
  %3 = load ptr, ptr %2, align 8, !dbg !1114
  call void @ys_ltrim(ptr noundef %3), !dbg !1115
  %4 = load ptr, ptr %2, align 8, !dbg !1116
  call void @ys_rtrim(ptr noundef %4), !dbg !1117
  ret void, !dbg !1118
}

; Function Attrs: noinline nounwind optnone uwtable
define signext i8 @ys_lshift(ptr noundef %0) #0 !dbg !1119 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1122, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1124, metadata !DIExpression()), !dbg !1125
  %5 = load ptr, ptr %3, align 8, !dbg !1126
  %6 = icmp ne ptr %5, null, !dbg !1126
  br i1 %6, label %7, label %11, !dbg !1128

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !1129
  %9 = load i8, ptr %8, align 1, !dbg !1130
  %10 = icmp ne i8 %9, 0, !dbg !1130
  br i1 %10, label %12, label %11, !dbg !1131

11:                                               ; preds = %7, %1
  store i8 0, ptr %2, align 1, !dbg !1132
  br label %18, !dbg !1132

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !dbg !1133
  %14 = load i8, ptr %13, align 1, !dbg !1134
  store i8 %14, ptr %4, align 1, !dbg !1135
  %15 = load ptr, ptr %3, align 8, !dbg !1136
  store i8 32, ptr %15, align 1, !dbg !1137
  %16 = load ptr, ptr %3, align 8, !dbg !1138
  call void @ys_ltrim(ptr noundef %16), !dbg !1139
  %17 = load i8, ptr %4, align 1, !dbg !1140
  store i8 %17, ptr %2, align 1, !dbg !1141
  br label %18, !dbg !1141

18:                                               ; preds = %12, %11
  %19 = load i8, ptr %2, align 1, !dbg !1142
  ret i8 %19, !dbg !1142
}

; Function Attrs: noinline nounwind optnone uwtable
define signext i8 @ys_rshift(ptr noundef %0) #0 !dbg !1143 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1144, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1146, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1148, metadata !DIExpression()), !dbg !1149
  %6 = load ptr, ptr %3, align 8, !dbg !1150
  %7 = icmp ne ptr %6, null, !dbg !1150
  br i1 %7, label %8, label %12, !dbg !1152

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !1153
  %10 = load i8, ptr %9, align 1, !dbg !1154
  %11 = icmp ne i8 %10, 0, !dbg !1154
  br i1 %11, label %13, label %12, !dbg !1155

12:                                               ; preds = %8, %1
  store i8 0, ptr %2, align 1, !dbg !1156
  br label %36, !dbg !1156

13:                                               ; preds = %8
  %14 = load ptr, ptr %3, align 8, !dbg !1157
  %15 = getelementptr inbounds i8, ptr %14, i64 -8, !dbg !1158
  store ptr %15, ptr %4, align 8, !dbg !1159
  %16 = load ptr, ptr %3, align 8, !dbg !1160
  %17 = load ptr, ptr %4, align 8, !dbg !1161
  %18 = getelementptr inbounds %struct.ystr_head_s, ptr %17, i32 0, i32 1, !dbg !1162
  %19 = load i32, ptr %18, align 4, !dbg !1162
  %20 = zext i32 %19 to i64, !dbg !1163
  %21 = getelementptr inbounds i8, ptr %16, i64 %20, !dbg !1163
  %22 = getelementptr inbounds i8, ptr %21, i64 -1, !dbg !1164
  %23 = load i8, ptr %22, align 1, !dbg !1165
  store i8 %23, ptr %5, align 1, !dbg !1166
  %24 = load ptr, ptr %3, align 8, !dbg !1167
  %25 = load ptr, ptr %4, align 8, !dbg !1168
  %26 = getelementptr inbounds %struct.ystr_head_s, ptr %25, i32 0, i32 1, !dbg !1169
  %27 = load i32, ptr %26, align 4, !dbg !1169
  %28 = zext i32 %27 to i64, !dbg !1170
  %29 = getelementptr inbounds i8, ptr %24, i64 %28, !dbg !1170
  %30 = getelementptr inbounds i8, ptr %29, i64 -1, !dbg !1171
  store i8 0, ptr %30, align 1, !dbg !1172
  %31 = load ptr, ptr %4, align 8, !dbg !1173
  %32 = getelementptr inbounds %struct.ystr_head_s, ptr %31, i32 0, i32 1, !dbg !1174
  %33 = load i32, ptr %32, align 4, !dbg !1175
  %34 = add i32 %33, -1, !dbg !1175
  store i32 %34, ptr %32, align 4, !dbg !1175
  %35 = load i8, ptr %5, align 1, !dbg !1176
  store i8 %35, ptr %2, align 1, !dbg !1177
  br label %36, !dbg !1177

36:                                               ; preds = %13, %12
  %37 = load i8, ptr %2, align 1, !dbg !1178
  ret i8 %37, !dbg !1178
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ys_putc(ptr noundef %0, i8 noundef signext %1) #0 !dbg !1179 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i8], align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1182, metadata !DIExpression()), !dbg !1183
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1184, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1186, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1188, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1190, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1192, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1194, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1196, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1198, metadata !DIExpression()), !dbg !1199
  %14 = load i8, ptr %5, align 1, !dbg !1200
  %15 = sext i8 %14 to i32, !dbg !1200
  %16 = icmp eq i32 %15, 0, !dbg !1202
  br i1 %16, label %17, label %18, !dbg !1203

17:                                               ; preds = %2
  store i32 1, ptr %3, align 4, !dbg !1204
  br label %135, !dbg !1204

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 8, !dbg !1205
  %20 = load ptr, ptr %19, align 8, !dbg !1207
  %21 = icmp ne ptr %20, null, !dbg !1207
  br i1 %21, label %28, label %22, !dbg !1208

22:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1209, metadata !DIExpression()), !dbg !1214
  call void @llvm.memset.p0.i64(ptr align 1 %13, i8 0, i64 2, i1 false), !dbg !1214
  %23 = load i8, ptr %5, align 1, !dbg !1215
  %24 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 0, !dbg !1216
  store i8 %23, ptr %24, align 1, !dbg !1217
  %25 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 0, !dbg !1218
  %26 = call ptr @ys_new(ptr noundef %25), !dbg !1219
  %27 = load ptr, ptr %4, align 8, !dbg !1220
  store ptr %26, ptr %27, align 8, !dbg !1221
  store i32 1, ptr %3, align 4, !dbg !1222
  br label %135, !dbg !1222

28:                                               ; preds = %18
  %29 = load ptr, ptr %4, align 8, !dbg !1223
  %30 = load ptr, ptr %29, align 8, !dbg !1224
  %31 = getelementptr inbounds i8, ptr %30, i64 -8, !dbg !1225
  store ptr %31, ptr %6, align 8, !dbg !1226
  %32 = load ptr, ptr %6, align 8, !dbg !1227
  %33 = getelementptr inbounds %struct.ystr_head_s, ptr %32, i32 0, i32 0, !dbg !1229
  %34 = load i32, ptr %33, align 4, !dbg !1229
  %35 = load ptr, ptr %6, align 8, !dbg !1230
  %36 = getelementptr inbounds %struct.ystr_head_s, ptr %35, i32 0, i32 1, !dbg !1231
  %37 = load i32, ptr %36, align 4, !dbg !1231
  %38 = add i32 %37, 2, !dbg !1232
  %39 = icmp uge i32 %34, %38, !dbg !1233
  br i1 %39, label %40, label %72, !dbg !1234

40:                                               ; preds = %28
  %41 = load ptr, ptr %4, align 8, !dbg !1235
  %42 = load ptr, ptr %41, align 8, !dbg !1238
  %43 = load ptr, ptr %6, align 8, !dbg !1239
  %44 = getelementptr inbounds %struct.ystr_head_s, ptr %43, i32 0, i32 1, !dbg !1240
  %45 = load i32, ptr %44, align 4, !dbg !1240
  %46 = zext i32 %45 to i64, !dbg !1241
  %47 = getelementptr inbounds i8, ptr %42, i64 %46, !dbg !1241
  store ptr %47, ptr %8, align 8, !dbg !1242
  %48 = load ptr, ptr %8, align 8, !dbg !1243
  %49 = getelementptr inbounds i8, ptr %48, i64 1, !dbg !1244
  store ptr %49, ptr %9, align 8, !dbg !1245
  br label %50, !dbg !1246

50:                                               ; preds = %59, %40
  %51 = load ptr, ptr %8, align 8, !dbg !1247
  %52 = load ptr, ptr %4, align 8, !dbg !1249
  %53 = load ptr, ptr %52, align 8, !dbg !1250
  %54 = icmp uge ptr %51, %53, !dbg !1251
  br i1 %54, label %55, label %64, !dbg !1252

55:                                               ; preds = %50
  %56 = load ptr, ptr %8, align 8, !dbg !1253
  %57 = load i8, ptr %56, align 1, !dbg !1254
  %58 = load ptr, ptr %9, align 8, !dbg !1255
  store i8 %57, ptr %58, align 1, !dbg !1256
  br label %59, !dbg !1257

59:                                               ; preds = %55
  %60 = load ptr, ptr %8, align 8, !dbg !1258
  %61 = getelementptr inbounds i8, ptr %60, i32 -1, !dbg !1258
  store ptr %61, ptr %8, align 8, !dbg !1258
  %62 = load ptr, ptr %9, align 8, !dbg !1259
  %63 = getelementptr inbounds i8, ptr %62, i32 -1, !dbg !1259
  store ptr %63, ptr %9, align 8, !dbg !1259
  br label %50, !dbg !1260, !llvm.loop !1261

64:                                               ; preds = %50
  %65 = load i8, ptr %5, align 1, !dbg !1263
  %66 = load ptr, ptr %4, align 8, !dbg !1264
  %67 = load ptr, ptr %66, align 8, !dbg !1265
  store i8 %65, ptr %67, align 1, !dbg !1266
  %68 = load ptr, ptr %6, align 8, !dbg !1267
  %69 = getelementptr inbounds %struct.ystr_head_s, ptr %68, i32 0, i32 1, !dbg !1268
  %70 = load i32, ptr %69, align 4, !dbg !1269
  %71 = add i32 %70, 1, !dbg !1269
  store i32 %71, ptr %69, align 4, !dbg !1269
  store i32 1, ptr %3, align 4, !dbg !1270
  br label %135, !dbg !1270

72:                                               ; preds = %28
  %73 = load ptr, ptr %6, align 8, !dbg !1271
  %74 = getelementptr inbounds %struct.ystr_head_s, ptr %73, i32 0, i32 1, !dbg !1272
  %75 = load i32, ptr %74, align 4, !dbg !1272
  %76 = icmp ult i32 %75, 65536, !dbg !1273
  br i1 %76, label %77, label %78, !dbg !1274

77:                                               ; preds = %72
  br label %85, !dbg !1274

78:                                               ; preds = %72
  %79 = load ptr, ptr %6, align 8, !dbg !1275
  %80 = getelementptr inbounds %struct.ystr_head_s, ptr %79, i32 0, i32 1, !dbg !1276
  %81 = load i32, ptr %80, align 4, !dbg !1276
  %82 = icmp ult i32 %81, 1048576, !dbg !1277
  %83 = zext i1 %82 to i64, !dbg !1278
  %84 = select i1 %82, i32 65536, i32 1048576, !dbg !1278
  br label %85, !dbg !1274

85:                                               ; preds = %78, %77
  %86 = phi i32 [ 4096, %77 ], [ %84, %78 ], !dbg !1274
  store i32 %86, ptr %12, align 4, !dbg !1279
  %87 = load ptr, ptr %6, align 8, !dbg !1280
  %88 = getelementptr inbounds %struct.ystr_head_s, ptr %87, i32 0, i32 1, !dbg !1281
  %89 = load i32, ptr %88, align 4, !dbg !1281
  %90 = add i32 %89, 2, !dbg !1282
  %91 = load i32, ptr %12, align 4, !dbg !1283
  %92 = udiv i32 %90, %91, !dbg !1284
  %93 = add i32 %92, 1, !dbg !1285
  %94 = load i32, ptr %12, align 4, !dbg !1286
  %95 = mul i32 %93, %94, !dbg !1287
  store i32 %95, ptr %11, align 4, !dbg !1288
  %96 = load i32, ptr %11, align 4, !dbg !1289
  %97 = zext i32 %96 to i64, !dbg !1289
  %98 = add i64 %97, 8, !dbg !1289
  %99 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %98) #9, !dbg !1289
  store ptr %99, ptr %10, align 8, !dbg !1291
  %100 = icmp ne ptr %99, null, !dbg !1291
  br i1 %100, label %102, label %101, !dbg !1292

101:                                              ; preds = %85
  store i32 0, ptr %3, align 4, !dbg !1293
  br label %135, !dbg !1293

102:                                              ; preds = %85
  %103 = load ptr, ptr %10, align 8, !dbg !1294
  store ptr %103, ptr %7, align 8, !dbg !1295
  %104 = load ptr, ptr %10, align 8, !dbg !1296
  %105 = getelementptr inbounds i8, ptr %104, i64 8, !dbg !1296
  store ptr %105, ptr %10, align 8, !dbg !1296
  %106 = load i32, ptr %11, align 4, !dbg !1297
  %107 = load ptr, ptr %7, align 8, !dbg !1298
  %108 = getelementptr inbounds %struct.ystr_head_s, ptr %107, i32 0, i32 0, !dbg !1299
  store i32 %106, ptr %108, align 4, !dbg !1300
  %109 = load ptr, ptr %6, align 8, !dbg !1301
  %110 = getelementptr inbounds %struct.ystr_head_s, ptr %109, i32 0, i32 1, !dbg !1302
  %111 = load i32, ptr %110, align 4, !dbg !1302
  %112 = add i32 %111, 1, !dbg !1303
  %113 = load ptr, ptr %7, align 8, !dbg !1304
  %114 = getelementptr inbounds %struct.ystr_head_s, ptr %113, i32 0, i32 1, !dbg !1305
  store i32 %112, ptr %114, align 4, !dbg !1306
  %115 = load i8, ptr %5, align 1, !dbg !1307
  %116 = load ptr, ptr %10, align 8, !dbg !1308
  store i8 %115, ptr %116, align 1, !dbg !1309
  %117 = load ptr, ptr %10, align 8, !dbg !1310
  %118 = getelementptr inbounds i8, ptr %117, i64 1, !dbg !1311
  %119 = load ptr, ptr %4, align 8, !dbg !1312
  %120 = load ptr, ptr %119, align 8, !dbg !1313
  %121 = load ptr, ptr %6, align 8, !dbg !1314
  %122 = getelementptr inbounds %struct.ystr_head_s, ptr %121, i32 0, i32 1, !dbg !1315
  %123 = load i32, ptr %122, align 4, !dbg !1315
  %124 = add i32 %123, 1, !dbg !1316
  %125 = zext i32 %124 to i64, !dbg !1314
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %118, ptr align 1 %120, i64 %125, i1 false), !dbg !1317
  %126 = load ptr, ptr %6, align 8, !dbg !1318
  %127 = icmp ne ptr %126, null, !dbg !1318
  br i1 %127, label %128, label %130, !dbg !1318

128:                                              ; preds = %102
  %129 = load ptr, ptr %6, align 8, !dbg !1318
  call void @free(ptr noundef %129) #10, !dbg !1318
  br label %131, !dbg !1318

130:                                              ; preds = %102
  br label %131, !dbg !1318

131:                                              ; preds = %130, %128
  %132 = phi ptr [ null, %128 ], [ null, %130 ], !dbg !1318
  store ptr null, ptr %6, align 8, !dbg !1318
  %133 = load ptr, ptr %10, align 8, !dbg !1319
  %134 = load ptr, ptr %4, align 8, !dbg !1320
  store ptr %133, ptr %134, align 8, !dbg !1321
  store i32 1, ptr %3, align 4, !dbg !1322
  br label %135, !dbg !1322

135:                                              ; preds = %131, %101, %64, %22, %17
  %136 = load i32, ptr %3, align 4, !dbg !1323
  ret i32 %136, !dbg !1323
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ys_addc(ptr noundef %0, i8 noundef signext %1) #0 !dbg !1324 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca [2 x i8], align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1325, metadata !DIExpression()), !dbg !1326
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1327, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1329, metadata !DIExpression()), !dbg !1330
  call void @llvm.memset.p0.i64(ptr align 1 %5, i8 0, i64 2, i1 false), !dbg !1330
  %6 = load i8, ptr %4, align 1, !dbg !1331
  %7 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 0, !dbg !1332
  store i8 %6, ptr %7, align 1, !dbg !1333
  %8 = load ptr, ptr %3, align 8, !dbg !1334
  %9 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 0, !dbg !1335
  %10 = call i32 @ys_cat(ptr noundef %8, ptr noundef %9), !dbg !1336
  ret i32 %10, !dbg !1337
}

; Function Attrs: noinline nounwind optnone uwtable
define void @ys_upcase(ptr noundef %0) #0 !dbg !1338 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1341, metadata !DIExpression()), !dbg !1342
  %3 = load ptr, ptr %2, align 8, !dbg !1343
  %4 = icmp ne ptr %3, null, !dbg !1343
  br i1 %4, label %6, label %5, !dbg !1345

5:                                                ; preds = %1
  br label %33, !dbg !1346

6:                                                ; preds = %1
  br label %7, !dbg !1347

7:                                                ; preds = %30, %6
  %8 = load ptr, ptr %2, align 8, !dbg !1348
  %9 = load i8, ptr %8, align 1, !dbg !1351
  %10 = icmp ne i8 %9, 0, !dbg !1352
  br i1 %10, label %11, label %33, !dbg !1352

11:                                               ; preds = %7
  %12 = load ptr, ptr %2, align 8, !dbg !1353
  %13 = load i8, ptr %12, align 1, !dbg !1355
  %14 = sext i8 %13 to i32, !dbg !1355
  %15 = icmp sge i32 %14, 97, !dbg !1356
  br i1 %15, label %16, label %29, !dbg !1357

16:                                               ; preds = %11
  %17 = load ptr, ptr %2, align 8, !dbg !1358
  %18 = load i8, ptr %17, align 1, !dbg !1359
  %19 = sext i8 %18 to i32, !dbg !1359
  %20 = icmp sle i32 %19, 122, !dbg !1360
  br i1 %20, label %21, label %29, !dbg !1361

21:                                               ; preds = %16
  %22 = load ptr, ptr %2, align 8, !dbg !1362
  %23 = load i8, ptr %22, align 1, !dbg !1363
  %24 = sext i8 %23 to i32, !dbg !1363
  %25 = sub nsw i32 %24, 97, !dbg !1364
  %26 = add nsw i32 65, %25, !dbg !1365
  %27 = trunc i32 %26 to i8, !dbg !1366
  %28 = load ptr, ptr %2, align 8, !dbg !1367
  store i8 %27, ptr %28, align 1, !dbg !1368
  br label %29, !dbg !1369

29:                                               ; preds = %21, %16, %11
  br label %30, !dbg !1370

30:                                               ; preds = %29
  %31 = load ptr, ptr %2, align 8, !dbg !1371
  %32 = getelementptr inbounds i8, ptr %31, i32 1, !dbg !1371
  store ptr %32, ptr %2, align 8, !dbg !1371
  br label %7, !dbg !1372, !llvm.loop !1373

33:                                               ; preds = %5, %7
  ret void, !dbg !1375
}

; Function Attrs: noinline nounwind optnone uwtable
define void @ys_lowcase(ptr noundef %0) #0 !dbg !1376 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1377, metadata !DIExpression()), !dbg !1378
  %3 = load ptr, ptr %2, align 8, !dbg !1379
  %4 = icmp ne ptr %3, null, !dbg !1379
  br i1 %4, label %6, label %5, !dbg !1381

5:                                                ; preds = %1
  br label %33, !dbg !1382

6:                                                ; preds = %1
  br label %7, !dbg !1383

7:                                                ; preds = %30, %6
  %8 = load ptr, ptr %2, align 8, !dbg !1384
  %9 = load i8, ptr %8, align 1, !dbg !1387
  %10 = icmp ne i8 %9, 0, !dbg !1388
  br i1 %10, label %11, label %33, !dbg !1388

11:                                               ; preds = %7
  %12 = load ptr, ptr %2, align 8, !dbg !1389
  %13 = load i8, ptr %12, align 1, !dbg !1391
  %14 = sext i8 %13 to i32, !dbg !1391
  %15 = icmp sge i32 %14, 65, !dbg !1392
  br i1 %15, label %16, label %29, !dbg !1393

16:                                               ; preds = %11
  %17 = load ptr, ptr %2, align 8, !dbg !1394
  %18 = load i8, ptr %17, align 1, !dbg !1395
  %19 = sext i8 %18 to i32, !dbg !1395
  %20 = icmp sle i32 %19, 90, !dbg !1396
  br i1 %20, label %21, label %29, !dbg !1397

21:                                               ; preds = %16
  %22 = load ptr, ptr %2, align 8, !dbg !1398
  %23 = load i8, ptr %22, align 1, !dbg !1399
  %24 = sext i8 %23 to i32, !dbg !1399
  %25 = sub nsw i32 %24, 65, !dbg !1400
  %26 = add nsw i32 97, %25, !dbg !1401
  %27 = trunc i32 %26 to i8, !dbg !1402
  %28 = load ptr, ptr %2, align 8, !dbg !1403
  store i8 %27, ptr %28, align 1, !dbg !1404
  br label %29, !dbg !1405

29:                                               ; preds = %21, %16, %11
  br label %30, !dbg !1406

30:                                               ; preds = %29
  %31 = load ptr, ptr %2, align 8, !dbg !1407
  %32 = getelementptr inbounds i8, ptr %31, i32 1, !dbg !1407
  store ptr %32, ptr %2, align 8, !dbg !1407
  br label %7, !dbg !1408, !llvm.loop !1409

33:                                               ; preds = %5, %7
  ret void, !dbg !1411
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ys_printf(ptr noundef %0, ptr noundef %1, ...) #0 !dbg !1412 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1415, metadata !DIExpression()), !dbg !1416
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1417, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1419, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1432, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1434, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1436, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1438, metadata !DIExpression()), !dbg !1439
  %11 = load ptr, ptr %4, align 8, !dbg !1440
  %12 = load ptr, ptr %11, align 8, !dbg !1441
  %13 = getelementptr inbounds i8, ptr %12, i64 -8, !dbg !1442
  store ptr %13, ptr %7, align 8, !dbg !1443
  %14 = load ptr, ptr %7, align 8, !dbg !1444
  %15 = getelementptr inbounds %struct.ystr_head_s, ptr %14, i32 0, i32 0, !dbg !1444
  %16 = load i32, ptr %15, align 4, !dbg !1444
  %17 = zext i32 %16 to i64, !dbg !1444
  %18 = add i64 %17, 8, !dbg !1444
  %19 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %18) #9, !dbg !1444
  store ptr %19, ptr %10, align 8, !dbg !1446
  %20 = icmp ne ptr %19, null, !dbg !1446
  br i1 %20, label %22, label %21, !dbg !1447

21:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !1448
  br label %63, !dbg !1448

22:                                               ; preds = %2
  %23 = load ptr, ptr %10, align 8, !dbg !1449
  store ptr %23, ptr %8, align 8, !dbg !1450
  %24 = load ptr, ptr %10, align 8, !dbg !1451
  %25 = getelementptr inbounds i8, ptr %24, i64 8, !dbg !1451
  store ptr %25, ptr %10, align 8, !dbg !1451
  %26 = load ptr, ptr %7, align 8, !dbg !1452
  %27 = getelementptr inbounds %struct.ystr_head_s, ptr %26, i32 0, i32 0, !dbg !1453
  %28 = load i32, ptr %27, align 4, !dbg !1453
  %29 = load ptr, ptr %8, align 8, !dbg !1454
  %30 = getelementptr inbounds %struct.ystr_head_s, ptr %29, i32 0, i32 0, !dbg !1455
  store i32 %28, ptr %30, align 4, !dbg !1456
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !1457
  call void @llvm.va_start(ptr %31), !dbg !1457
  %32 = load ptr, ptr %10, align 8, !dbg !1458
  %33 = load ptr, ptr %7, align 8, !dbg !1460
  %34 = getelementptr inbounds %struct.ystr_head_s, ptr %33, i32 0, i32 0, !dbg !1461
  %35 = load i32, ptr %34, align 4, !dbg !1461
  %36 = zext i32 %35 to i64, !dbg !1460
  %37 = load ptr, ptr %5, align 8, !dbg !1462
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !1463
  %39 = call i32 @vsnprintf(ptr noundef %32, i64 noundef %36, ptr noundef %37, ptr noundef %38) #10, !dbg !1464
  store i32 %39, ptr %9, align 4, !dbg !1465
  %40 = icmp eq i32 %39, -1, !dbg !1466
  br i1 %40, label %41, label %49, !dbg !1467

41:                                               ; preds = %22
  %42 = load ptr, ptr %8, align 8, !dbg !1468
  %43 = icmp ne ptr %42, null, !dbg !1468
  br i1 %43, label %44, label %46, !dbg !1468

44:                                               ; preds = %41
  %45 = load ptr, ptr %8, align 8, !dbg !1468
  call void @free(ptr noundef %45) #10, !dbg !1468
  br label %47, !dbg !1468

46:                                               ; preds = %41
  br label %47, !dbg !1468

47:                                               ; preds = %46, %44
  %48 = phi ptr [ null, %44 ], [ null, %46 ], !dbg !1468
  store ptr null, ptr %8, align 8, !dbg !1468
  store i32 0, ptr %3, align 4, !dbg !1470
  br label %63, !dbg !1470

49:                                               ; preds = %22
  %50 = load i32, ptr %9, align 4, !dbg !1471
  %51 = load ptr, ptr %8, align 8, !dbg !1472
  %52 = getelementptr inbounds %struct.ystr_head_s, ptr %51, i32 0, i32 1, !dbg !1473
  store i32 %50, ptr %52, align 4, !dbg !1474
  %53 = load ptr, ptr %7, align 8, !dbg !1475
  %54 = icmp ne ptr %53, null, !dbg !1475
  br i1 %54, label %55, label %57, !dbg !1475

55:                                               ; preds = %49
  %56 = load ptr, ptr %7, align 8, !dbg !1475
  call void @free(ptr noundef %56) #10, !dbg !1475
  br label %58, !dbg !1475

57:                                               ; preds = %49
  br label %58, !dbg !1475

58:                                               ; preds = %57, %55
  %59 = phi ptr [ null, %55 ], [ null, %57 ], !dbg !1475
  store ptr null, ptr %7, align 8, !dbg !1475
  %60 = load ptr, ptr %10, align 8, !dbg !1476
  %61 = load ptr, ptr %4, align 8, !dbg !1477
  store ptr %60, ptr %61, align 8, !dbg !1478
  %62 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !1479
  call void @llvm.va_end(ptr %62), !dbg !1479
  store i32 1, ptr %3, align 4, !dbg !1480
  br label %63, !dbg !1480

63:                                               ; preds = %58, %47, %21
  %64 = load i32, ptr %3, align 4, !dbg !1481
  ret i32 %64, !dbg !1481
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nounwind
declare i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ys_vprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1482 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1486, metadata !DIExpression()), !dbg !1487
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1488, metadata !DIExpression()), !dbg !1489
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1490, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1492, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1494, metadata !DIExpression()), !dbg !1495
  %9 = load ptr, ptr %4, align 8, !dbg !1496
  %10 = load ptr, ptr %9, align 8, !dbg !1497
  %11 = getelementptr inbounds i8, ptr %10, i64 -8, !dbg !1498
  store ptr %11, ptr %7, align 8, !dbg !1499
  %12 = load ptr, ptr %4, align 8, !dbg !1500
  %13 = load ptr, ptr %12, align 8, !dbg !1502
  %14 = load ptr, ptr %7, align 8, !dbg !1503
  %15 = getelementptr inbounds %struct.ystr_head_s, ptr %14, i32 0, i32 0, !dbg !1504
  %16 = load i32, ptr %15, align 4, !dbg !1504
  %17 = zext i32 %16 to i64, !dbg !1503
  %18 = load ptr, ptr %5, align 8, !dbg !1505
  %19 = load ptr, ptr %6, align 8, !dbg !1506
  %20 = call i32 @vsnprintf(ptr noundef %13, i64 noundef %17, ptr noundef %18, ptr noundef %19) #10, !dbg !1507
  store i32 %20, ptr %8, align 4, !dbg !1508
  %21 = icmp eq i32 %20, -1, !dbg !1509
  br i1 %21, label %22, label %25, !dbg !1510

22:                                               ; preds = %3
  %23 = load ptr, ptr %4, align 8, !dbg !1511
  %24 = load ptr, ptr %23, align 8, !dbg !1512
  store i8 0, ptr %24, align 1, !dbg !1513
  br label %25, !dbg !1514

25:                                               ; preds = %22, %3
  %26 = load i32, ptr %8, align 4, !dbg !1515
  %27 = icmp eq i32 %26, -1, !dbg !1516
  %28 = zext i1 %27 to i64, !dbg !1515
  %29 = select i1 %27, i32 0, i32 1, !dbg !1515
  %30 = load ptr, ptr %7, align 8, !dbg !1517
  %31 = getelementptr inbounds %struct.ystr_head_s, ptr %30, i32 0, i32 1, !dbg !1518
  store i32 %29, ptr %31, align 4, !dbg !1519
  %32 = load i32, ptr %8, align 4, !dbg !1520
  %33 = icmp eq i32 %32, -1, !dbg !1521
  %34 = zext i1 %33 to i64, !dbg !1520
  %35 = select i1 %33, i32 0, i32 1, !dbg !1520
  ret i32 %35, !dbg !1522
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ys_str2hexa(ptr noundef %0) #0 !dbg !1523 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [3 x i8], align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1526, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1528, metadata !DIExpression()), !dbg !1529
  call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 3, i1 false), !dbg !1529
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1530, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1532, metadata !DIExpression()), !dbg !1533
  %7 = load ptr, ptr %3, align 8, !dbg !1534
  %8 = icmp ne ptr %7, null, !dbg !1534
  br i1 %8, label %9, label %12, !dbg !1536

9:                                                ; preds = %1
  %10 = call ptr @ys_new(ptr noundef @.str), !dbg !1537
  store ptr %10, ptr %6, align 8, !dbg !1538
  %11 = icmp ne ptr %10, null, !dbg !1538
  br i1 %11, label %13, label %12, !dbg !1539

12:                                               ; preds = %9, %1
  store ptr null, ptr %2, align 8, !dbg !1540
  br label %32, !dbg !1540

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 8, !dbg !1541
  store ptr %14, ptr %5, align 8, !dbg !1543
  br label %15, !dbg !1544

15:                                               ; preds = %27, %13
  %16 = load ptr, ptr %5, align 8, !dbg !1545
  %17 = load i8, ptr %16, align 1, !dbg !1547
  %18 = icmp ne i8 %17, 0, !dbg !1548
  br i1 %18, label %19, label %30, !dbg !1548

19:                                               ; preds = %15
  %20 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 0, !dbg !1549
  %21 = load ptr, ptr %5, align 8, !dbg !1551
  %22 = load i8, ptr %21, align 1, !dbg !1552
  %23 = sext i8 %22 to i32, !dbg !1552
  %24 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %20, i64 noundef 3, ptr noundef @.str.1, i32 noundef %23) #10, !dbg !1553
  %25 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 0, !dbg !1554
  %26 = call i32 @ys_cat(ptr noundef %6, ptr noundef %25), !dbg !1555
  br label %27, !dbg !1556

27:                                               ; preds = %19
  %28 = load ptr, ptr %5, align 8, !dbg !1557
  %29 = getelementptr inbounds i8, ptr %28, i32 1, !dbg !1557
  store ptr %29, ptr %5, align 8, !dbg !1557
  br label %15, !dbg !1558, !llvm.loop !1559

30:                                               ; preds = %15
  %31 = load ptr, ptr %6, align 8, !dbg !1561
  store ptr %31, ptr %2, align 8, !dbg !1562
  br label %32, !dbg !1562

32:                                               ; preds = %30, %12
  %33 = load ptr, ptr %2, align 8, !dbg !1563
  ret ptr %33, !dbg !1563
}

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ys_subs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1564 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1567, metadata !DIExpression()), !dbg !1568
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1569, metadata !DIExpression()), !dbg !1570
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1571, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1573, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1575, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1577, metadata !DIExpression()), !dbg !1578
  %11 = load ptr, ptr %5, align 8, !dbg !1579
  %12 = icmp ne ptr %11, null, !dbg !1579
  br i1 %12, label %13, label %16, !dbg !1581

13:                                               ; preds = %3
  %14 = call ptr @ys_new(ptr noundef @.str), !dbg !1582
  store ptr %14, ptr %8, align 8, !dbg !1583
  %15 = icmp ne ptr %14, null, !dbg !1583
  br i1 %15, label %17, label %16, !dbg !1584

16:                                               ; preds = %13, %3
  store ptr null, ptr %4, align 8, !dbg !1585
  br label %60, !dbg !1585

17:                                               ; preds = %13
  %18 = load ptr, ptr %6, align 8, !dbg !1586
  %19 = icmp ne ptr %18, null, !dbg !1587
  br i1 %19, label %20, label %23, !dbg !1587

20:                                               ; preds = %17
  %21 = load ptr, ptr %6, align 8, !dbg !1588
  %22 = call i64 @strlen(ptr noundef %21) #8, !dbg !1589
  br label %24, !dbg !1587

23:                                               ; preds = %17
  br label %24, !dbg !1587

24:                                               ; preds = %23, %20
  %25 = phi i64 [ %22, %20 ], [ 0, %23 ], !dbg !1587
  %26 = trunc i64 %25 to i32, !dbg !1587
  store i32 %26, ptr %10, align 4, !dbg !1590
  %27 = load ptr, ptr %5, align 8, !dbg !1591
  store ptr %27, ptr %9, align 8, !dbg !1593
  br label %28, !dbg !1594

28:                                               ; preds = %55, %24
  %29 = load ptr, ptr %9, align 8, !dbg !1595
  %30 = load i8, ptr %29, align 1, !dbg !1597
  %31 = icmp ne i8 %30, 0, !dbg !1598
  br i1 %31, label %32, label %58, !dbg !1598

32:                                               ; preds = %28
  %33 = load i32, ptr %10, align 4, !dbg !1599
  %34 = icmp ne i32 %33, 0, !dbg !1599
  br i1 %34, label %35, label %50, !dbg !1602

35:                                               ; preds = %32
  %36 = load ptr, ptr %6, align 8, !dbg !1603
  %37 = load ptr, ptr %9, align 8, !dbg !1604
  %38 = load i32, ptr %10, align 4, !dbg !1605
  %39 = zext i32 %38 to i64, !dbg !1605
  %40 = call i32 @strncmp(ptr noundef %36, ptr noundef %37, i64 noundef %39) #8, !dbg !1606
  %41 = icmp ne i32 %40, 0, !dbg !1606
  br i1 %41, label %50, label %42, !dbg !1607

42:                                               ; preds = %35
  %43 = load ptr, ptr %7, align 8, !dbg !1608
  %44 = call i32 @ys_cat(ptr noundef %8, ptr noundef %43), !dbg !1610
  %45 = load ptr, ptr %9, align 8, !dbg !1611
  %46 = load i32, ptr %10, align 4, !dbg !1612
  %47 = zext i32 %46 to i64, !dbg !1613
  %48 = getelementptr inbounds i8, ptr %45, i64 %47, !dbg !1613
  %49 = getelementptr inbounds i8, ptr %48, i64 -1, !dbg !1614
  store ptr %49, ptr %9, align 8, !dbg !1615
  br label %54, !dbg !1616

50:                                               ; preds = %35, %32
  %51 = load ptr, ptr %9, align 8, !dbg !1617
  %52 = load i8, ptr %51, align 1, !dbg !1618
  %53 = call i32 @ys_addc(ptr noundef %8, i8 noundef signext %52), !dbg !1619
  br label %54

54:                                               ; preds = %50, %42
  br label %55, !dbg !1620

55:                                               ; preds = %54
  %56 = load ptr, ptr %9, align 8, !dbg !1621
  %57 = getelementptr inbounds i8, ptr %56, i32 1, !dbg !1621
  store ptr %57, ptr %9, align 8, !dbg !1621
  br label %28, !dbg !1622, !llvm.loop !1623

58:                                               ; preds = %28
  %59 = load ptr, ptr %8, align 8, !dbg !1625
  store ptr %59, ptr %4, align 8, !dbg !1626
  br label %60, !dbg !1626

60:                                               ; preds = %58, %16
  %61 = load ptr, ptr %4, align 8, !dbg !1627
  ret ptr %61, !dbg !1627
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ys_casesubs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1628 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1629, metadata !DIExpression()), !dbg !1630
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1631, metadata !DIExpression()), !dbg !1632
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1633, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1635, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1637, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1639, metadata !DIExpression()), !dbg !1640
  %11 = load ptr, ptr %5, align 8, !dbg !1641
  %12 = icmp ne ptr %11, null, !dbg !1641
  br i1 %12, label %13, label %16, !dbg !1643

13:                                               ; preds = %3
  %14 = call ptr @ys_new(ptr noundef @.str), !dbg !1644
  store ptr %14, ptr %8, align 8, !dbg !1645
  %15 = icmp ne ptr %14, null, !dbg !1645
  br i1 %15, label %17, label %16, !dbg !1646

16:                                               ; preds = %13, %3
  store ptr null, ptr %4, align 8, !dbg !1647
  br label %60, !dbg !1647

17:                                               ; preds = %13
  %18 = load ptr, ptr %6, align 8, !dbg !1648
  %19 = icmp ne ptr %18, null, !dbg !1649
  br i1 %19, label %20, label %23, !dbg !1649

20:                                               ; preds = %17
  %21 = load ptr, ptr %6, align 8, !dbg !1650
  %22 = call i64 @strlen(ptr noundef %21) #8, !dbg !1651
  br label %24, !dbg !1649

23:                                               ; preds = %17
  br label %24, !dbg !1649

24:                                               ; preds = %23, %20
  %25 = phi i64 [ %22, %20 ], [ 0, %23 ], !dbg !1649
  %26 = trunc i64 %25 to i32, !dbg !1649
  store i32 %26, ptr %10, align 4, !dbg !1652
  %27 = load ptr, ptr %5, align 8, !dbg !1653
  store ptr %27, ptr %9, align 8, !dbg !1655
  br label %28, !dbg !1656

28:                                               ; preds = %55, %24
  %29 = load ptr, ptr %9, align 8, !dbg !1657
  %30 = load i8, ptr %29, align 1, !dbg !1659
  %31 = icmp ne i8 %30, 0, !dbg !1660
  br i1 %31, label %32, label %58, !dbg !1660

32:                                               ; preds = %28
  %33 = load i32, ptr %10, align 4, !dbg !1661
  %34 = icmp ne i32 %33, 0, !dbg !1661
  br i1 %34, label %35, label %50, !dbg !1664

35:                                               ; preds = %32
  %36 = load ptr, ptr %6, align 8, !dbg !1665
  %37 = load ptr, ptr %9, align 8, !dbg !1666
  %38 = load i32, ptr %10, align 4, !dbg !1667
  %39 = zext i32 %38 to i64, !dbg !1667
  %40 = call i32 @strncasecmp(ptr noundef %36, ptr noundef %37, i64 noundef %39) #8, !dbg !1668
  %41 = icmp ne i32 %40, 0, !dbg !1668
  br i1 %41, label %50, label %42, !dbg !1669

42:                                               ; preds = %35
  %43 = load ptr, ptr %7, align 8, !dbg !1670
  %44 = call i32 @ys_cat(ptr noundef %8, ptr noundef %43), !dbg !1672
  %45 = load ptr, ptr %9, align 8, !dbg !1673
  %46 = load i32, ptr %10, align 4, !dbg !1674
  %47 = zext i32 %46 to i64, !dbg !1675
  %48 = getelementptr inbounds i8, ptr %45, i64 %47, !dbg !1675
  %49 = getelementptr inbounds i8, ptr %48, i64 -1, !dbg !1676
  store ptr %49, ptr %9, align 8, !dbg !1677
  br label %54, !dbg !1678

50:                                               ; preds = %35, %32
  %51 = load ptr, ptr %9, align 8, !dbg !1679
  %52 = load i8, ptr %51, align 1, !dbg !1680
  %53 = call i32 @ys_addc(ptr noundef %8, i8 noundef signext %52), !dbg !1681
  br label %54

54:                                               ; preds = %50, %42
  br label %55, !dbg !1682

55:                                               ; preds = %54
  %56 = load ptr, ptr %9, align 8, !dbg !1683
  %57 = getelementptr inbounds i8, ptr %56, i32 1, !dbg !1683
  store ptr %57, ptr %9, align 8, !dbg !1683
  br label %28, !dbg !1684, !llvm.loop !1685

58:                                               ; preds = %28
  %59 = load ptr, ptr %8, align 8, !dbg !1687
  store ptr %59, ptr %4, align 8, !dbg !1688
  br label %60, !dbg !1688

60:                                               ; preds = %58, %16
  %61 = load ptr, ptr %4, align 8, !dbg !1689
  ret ptr %61, !dbg !1689
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define ptr @str2xmlentity(ptr noundef %0) #0 !dbg !1690 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1693, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1695, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1697, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1699, metadata !DIExpression()), !dbg !1700
  %7 = load ptr, ptr %3, align 8, !dbg !1701
  %8 = icmp ne ptr %7, null, !dbg !1701
  br i1 %8, label %9, label %12, !dbg !1703

9:                                                ; preds = %1
  %10 = call ptr @ys_new(ptr noundef @.str), !dbg !1704
  store ptr %10, ptr %6, align 8, !dbg !1705
  %11 = icmp ne ptr %10, null, !dbg !1705
  br i1 %11, label %13, label %12, !dbg !1706

12:                                               ; preds = %9, %1
  store ptr null, ptr %2, align 8, !dbg !1707
  br label %70, !dbg !1707

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 8, !dbg !1708
  store ptr %14, ptr %4, align 8, !dbg !1710
  br label %15, !dbg !1711

15:                                               ; preds = %63, %13
  %16 = load ptr, ptr %4, align 8, !dbg !1712
  %17 = load i8, ptr %16, align 1, !dbg !1714
  %18 = icmp ne i8 %17, 0, !dbg !1715
  br i1 %18, label %19, label %66, !dbg !1715

19:                                               ; preds = %15
  %20 = load ptr, ptr %4, align 8, !dbg !1716
  %21 = load i8, ptr %20, align 1, !dbg !1719
  %22 = sext i8 %21 to i32, !dbg !1719
  %23 = icmp eq i32 %22, 60, !dbg !1720
  br i1 %23, label %24, label %26, !dbg !1721

24:                                               ; preds = %19
  %25 = call i32 @ys_cat(ptr noundef %6, ptr noundef @.str.2), !dbg !1722
  br label %62, !dbg !1722

26:                                               ; preds = %19
  %27 = load ptr, ptr %4, align 8, !dbg !1723
  %28 = load i8, ptr %27, align 1, !dbg !1725
  %29 = sext i8 %28 to i32, !dbg !1725
  %30 = icmp eq i32 %29, 62, !dbg !1726
  br i1 %30, label %31, label %33, !dbg !1727

31:                                               ; preds = %26
  %32 = call i32 @ys_cat(ptr noundef %6, ptr noundef @.str.3), !dbg !1728
  br label %61, !dbg !1728

33:                                               ; preds = %26
  %34 = load ptr, ptr %4, align 8, !dbg !1729
  %35 = load i8, ptr %34, align 1, !dbg !1731
  %36 = sext i8 %35 to i32, !dbg !1731
  %37 = icmp eq i32 %36, 34, !dbg !1732
  br i1 %37, label %38, label %40, !dbg !1733

38:                                               ; preds = %33
  %39 = call i32 @ys_cat(ptr noundef %6, ptr noundef @.str.4), !dbg !1734
  br label %60, !dbg !1734

40:                                               ; preds = %33
  %41 = load ptr, ptr %4, align 8, !dbg !1735
  %42 = load i8, ptr %41, align 1, !dbg !1737
  %43 = sext i8 %42 to i32, !dbg !1737
  %44 = icmp eq i32 %43, 39, !dbg !1738
  br i1 %44, label %45, label %47, !dbg !1739

45:                                               ; preds = %40
  %46 = call i32 @ys_cat(ptr noundef %6, ptr noundef @.str.5), !dbg !1740
  br label %59, !dbg !1740

47:                                               ; preds = %40
  %48 = load ptr, ptr %4, align 8, !dbg !1741
  %49 = load i8, ptr %48, align 1, !dbg !1743
  %50 = sext i8 %49 to i32, !dbg !1743
  %51 = icmp eq i32 %50, 38, !dbg !1744
  br i1 %51, label %52, label %54, !dbg !1745

52:                                               ; preds = %47
  %53 = call i32 @ys_cat(ptr noundef %6, ptr noundef @.str.6), !dbg !1746
  br label %58, !dbg !1746

54:                                               ; preds = %47
  %55 = load ptr, ptr %4, align 8, !dbg !1747
  %56 = load i8, ptr %55, align 1, !dbg !1748
  %57 = call i32 @ys_addc(ptr noundef %6, i8 noundef signext %56), !dbg !1749
  br label %58

58:                                               ; preds = %54, %52
  br label %59

59:                                               ; preds = %58, %45
  br label %60

60:                                               ; preds = %59, %38
  br label %61

61:                                               ; preds = %60, %31
  br label %62

62:                                               ; preds = %61, %24
  br label %63, !dbg !1750

63:                                               ; preds = %62
  %64 = load ptr, ptr %4, align 8, !dbg !1751
  %65 = getelementptr inbounds i8, ptr %64, i32 1, !dbg !1751
  store ptr %65, ptr %4, align 8, !dbg !1751
  br label %15, !dbg !1752, !llvm.loop !1753

66:                                               ; preds = %15
  %67 = load ptr, ptr %6, align 8, !dbg !1755
  %68 = call ptr @ys_string(ptr noundef %67), !dbg !1756
  store ptr %68, ptr %5, align 8, !dbg !1757
  call void @ys_del(ptr noundef %6), !dbg !1758
  %69 = load ptr, ptr %5, align 8, !dbg !1759
  store ptr %69, ptr %2, align 8, !dbg !1760
  br label %70, !dbg !1760

70:                                               ; preds = %66, %12
  %71 = load ptr, ptr %2, align 8, !dbg !1761
  ret ptr %71, !dbg !1761
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @xmlentity2str(ptr noundef %0) #0 !dbg !1762 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1763, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1765, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1767, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1769, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1771, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1773, metadata !DIExpression()), !dbg !1774
  %9 = load ptr, ptr %3, align 8, !dbg !1775
  %10 = icmp ne ptr %9, null, !dbg !1775
  br i1 %10, label %11, label %14, !dbg !1777

11:                                               ; preds = %1
  %12 = call ptr @ys_new(ptr noundef @.str), !dbg !1778
  store ptr %12, ptr %4, align 8, !dbg !1779
  %13 = icmp ne ptr %12, null, !dbg !1779
  br i1 %13, label %15, label %14, !dbg !1780

14:                                               ; preds = %11, %1
  store ptr null, ptr %2, align 8, !dbg !1781
  br label %104, !dbg !1781

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 8, !dbg !1782
  store ptr %16, ptr %5, align 8, !dbg !1784
  br label %17, !dbg !1785

17:                                               ; preds = %95, %15
  %18 = load ptr, ptr %5, align 8, !dbg !1786
  %19 = load i8, ptr %18, align 1, !dbg !1788
  %20 = icmp ne i8 %19, 0, !dbg !1789
  br i1 %20, label %21, label %100, !dbg !1789

21:                                               ; preds = %17
  %22 = load ptr, ptr %5, align 8, !dbg !1790
  %23 = load i8, ptr %22, align 1, !dbg !1793
  %24 = sext i8 %23 to i32, !dbg !1793
  %25 = icmp ne i32 %24, 38, !dbg !1794
  br i1 %25, label %26, label %30, !dbg !1795

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 8, !dbg !1796
  %28 = load i8, ptr %27, align 1, !dbg !1798
  %29 = call i32 @ys_addc(ptr noundef %4, i8 noundef signext %28), !dbg !1799
  store i32 1, ptr %8, align 4, !dbg !1800
  br label %94, !dbg !1801

30:                                               ; preds = %21
  %31 = load ptr, ptr %5, align 8, !dbg !1802
  store i32 5, ptr %8, align 4, !dbg !1804
  %32 = call i32 @strncmp(ptr noundef %31, ptr noundef @.str.6, i64 noundef 5) #8, !dbg !1805
  %33 = icmp ne i32 %32, 0, !dbg !1805
  br i1 %33, label %36, label %34, !dbg !1806

34:                                               ; preds = %30
  %35 = call i32 @ys_addc(ptr noundef %4, i8 noundef signext 38), !dbg !1807
  br label %93, !dbg !1807

36:                                               ; preds = %30
  %37 = load ptr, ptr %5, align 8, !dbg !1808
  store i32 4, ptr %8, align 4, !dbg !1810
  %38 = call i32 @strncmp(ptr noundef %37, ptr noundef @.str.2, i64 noundef 4) #8, !dbg !1811
  %39 = icmp ne i32 %38, 0, !dbg !1811
  br i1 %39, label %42, label %40, !dbg !1812

40:                                               ; preds = %36
  %41 = call i32 @ys_addc(ptr noundef %4, i8 noundef signext 60), !dbg !1813
  br label %92, !dbg !1813

42:                                               ; preds = %36
  %43 = load ptr, ptr %5, align 8, !dbg !1814
  store i32 4, ptr %8, align 4, !dbg !1816
  %44 = call i32 @strncmp(ptr noundef %43, ptr noundef @.str.3, i64 noundef 4) #8, !dbg !1817
  %45 = icmp ne i32 %44, 0, !dbg !1817
  br i1 %45, label %48, label %46, !dbg !1818

46:                                               ; preds = %42
  %47 = call i32 @ys_addc(ptr noundef %4, i8 noundef signext 62), !dbg !1819
  br label %91, !dbg !1819

48:                                               ; preds = %42
  %49 = load ptr, ptr %5, align 8, !dbg !1820
  store i32 6, ptr %8, align 4, !dbg !1822
  %50 = call i32 @strncmp(ptr noundef %49, ptr noundef @.str.4, i64 noundef 6) #8, !dbg !1823
  %51 = icmp ne i32 %50, 0, !dbg !1823
  br i1 %51, label %54, label %52, !dbg !1824

52:                                               ; preds = %48
  %53 = call i32 @ys_addc(ptr noundef %4, i8 noundef signext 34), !dbg !1825
  br label %90, !dbg !1825

54:                                               ; preds = %48
  %55 = load ptr, ptr %5, align 8, !dbg !1826
  store i32 6, ptr %8, align 4, !dbg !1828
  %56 = call i32 @strncmp(ptr noundef %55, ptr noundef @.str.5, i64 noundef 6) #8, !dbg !1829
  %57 = icmp ne i32 %56, 0, !dbg !1829
  br i1 %57, label %60, label %58, !dbg !1830

58:                                               ; preds = %54
  %59 = call i32 @ys_addc(ptr noundef %4, i8 noundef signext 39), !dbg !1831
  br label %89, !dbg !1831

60:                                               ; preds = %54
  %61 = load ptr, ptr %5, align 8, !dbg !1832
  %62 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !1834
  %63 = load i8, ptr %62, align 1, !dbg !1835
  %64 = sext i8 %63 to i32, !dbg !1835
  %65 = icmp eq i32 %64, 35, !dbg !1836
  br i1 %65, label %66, label %84, !dbg !1837

66:                                               ; preds = %60
  %67 = load ptr, ptr %5, align 8, !dbg !1838
  %68 = getelementptr inbounds i8, ptr %67, i64 2, !dbg !1839
  %69 = call ptr @strchr(ptr noundef %68, i32 noundef 59) #8, !dbg !1840
  store ptr %69, ptr %7, align 8, !dbg !1841
  %70 = icmp ne ptr %69, null, !dbg !1841
  br i1 %70, label %71, label %84, !dbg !1842

71:                                               ; preds = %66
  %72 = load ptr, ptr %5, align 8, !dbg !1843
  %73 = getelementptr inbounds i8, ptr %72, i64 2, !dbg !1845
  %74 = call i32 @atoi(ptr noundef %73) #8, !dbg !1846
  %75 = trunc i32 %74 to i8, !dbg !1846
  %76 = call i32 @ys_addc(ptr noundef %4, i8 noundef signext %75), !dbg !1847
  %77 = load ptr, ptr %7, align 8, !dbg !1848
  %78 = load ptr, ptr %5, align 8, !dbg !1849
  %79 = ptrtoint ptr %77 to i64, !dbg !1850
  %80 = ptrtoint ptr %78 to i64, !dbg !1850
  %81 = sub i64 %79, %80, !dbg !1850
  %82 = add nsw i64 %81, 1, !dbg !1851
  %83 = trunc i64 %82 to i32, !dbg !1852
  store i32 %83, ptr %8, align 4, !dbg !1853
  br label %88, !dbg !1854

84:                                               ; preds = %66, %60
  %85 = load ptr, ptr %5, align 8, !dbg !1855
  %86 = load i8, ptr %85, align 1, !dbg !1857
  %87 = call i32 @ys_addc(ptr noundef %4, i8 noundef signext %86), !dbg !1858
  store i32 1, ptr %8, align 4, !dbg !1859
  br label %88

88:                                               ; preds = %84, %71
  br label %89

89:                                               ; preds = %88, %58
  br label %90

90:                                               ; preds = %89, %52
  br label %91

91:                                               ; preds = %90, %46
  br label %92

92:                                               ; preds = %91, %40
  br label %93

93:                                               ; preds = %92, %34
  br label %94

94:                                               ; preds = %93, %26
  br label %95, !dbg !1860

95:                                               ; preds = %94
  %96 = load i32, ptr %8, align 4, !dbg !1861
  %97 = load ptr, ptr %5, align 8, !dbg !1862
  %98 = sext i32 %96 to i64, !dbg !1862
  %99 = getelementptr inbounds i8, ptr %97, i64 %98, !dbg !1862
  store ptr %99, ptr %5, align 8, !dbg !1862
  br label %17, !dbg !1863, !llvm.loop !1864

100:                                              ; preds = %17
  %101 = load ptr, ptr %4, align 8, !dbg !1866
  %102 = call ptr @ys_string(ptr noundef %101), !dbg !1867
  store ptr %102, ptr %6, align 8, !dbg !1868
  call void @ys_del(ptr noundef %4), !dbg !1869
  %103 = load ptr, ptr %6, align 8, !dbg !1870
  store ptr %103, ptr %2, align 8, !dbg !1871
  br label %104, !dbg !1871

104:                                              ; preds = %100, %14
  %105 = load ptr, ptr %2, align 8, !dbg !1872
  ret ptr %105, !dbg !1872
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!31}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 332, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./ystr.c", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "b042729bf63add8ebeced22af3f60d0a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 1)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 613, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 3)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 686, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 5)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 688, type: !14, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 690, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 7)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 692, type: !21, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 694, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 6)
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !33, globals: !45, splitDebugInlining: false, nameTableKind: None)
!32 = !DIFile(filename: "ystr.c", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "b042729bf63add8ebeced22af3f60d0a")
!33 = !{!34, !35, !43, !44}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "ystr_head_t", file: !37, line: 52, baseType: !38)
!37 = !DIFile(filename: "./ystr.h", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "2a55d9eb654314ce5ba15fa996aba148")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ystr_head_s", file: !37, line: 45, size: 64, elements: !39)
!39 = !{!40, !42}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !38, file: !37, line: 47, baseType: !41, size: 32)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !38, file: !37, line: 48, baseType: !41, size: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "ystr_t", file: !37, line: 56, baseType: !34)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !{!0, !7, !12, !17, !19, !24, !26}
!46 = !{i32 7, !"Dwarf Version", i32 5}
!47 = !{i32 2, !"Debug Info Version", i32 3}
!48 = !{i32 1, !"wchar_size", i32 4}
!49 = !{i32 8, !"PIC Level", i32 2}
!50 = !{i32 7, !"uwtable", i32 2}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 16.0.0"}
!53 = distinct !DISubprogram(name: "ys_new", scope: !2, file: !2, line: 11, type: !54, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!54 = !DISubroutineType(types: !55)
!55 = !{!43, !56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!58 = !{}
!59 = !DILocalVariable(name: "s", arg: 1, scope: !53, file: !2, line: 11, type: !56)
!60 = !DILocation(line: 11, column: 27, scope: !53)
!61 = !DILocalVariable(name: "res", scope: !53, file: !2, line: 13, type: !34)
!62 = !DILocation(line: 13, column: 9, scope: !53)
!63 = !DILocalVariable(name: "strsz", scope: !53, file: !2, line: 14, type: !41)
!64 = !DILocation(line: 14, column: 16, scope: !53)
!65 = !DILocalVariable(name: "totalsz", scope: !53, file: !2, line: 14, type: !41)
!66 = !DILocation(line: 14, column: 23, scope: !53)
!67 = !DILocalVariable(name: "leap", scope: !53, file: !2, line: 14, type: !41)
!68 = !DILocation(line: 14, column: 32, scope: !53)
!69 = !DILocalVariable(name: "y", scope: !53, file: !2, line: 15, type: !35)
!70 = !DILocation(line: 15, column: 16, scope: !53)
!71 = !DILocation(line: 17, column: 13, scope: !53)
!72 = !DILocation(line: 17, column: 11, scope: !53)
!73 = !DILocation(line: 17, column: 29, scope: !53)
!74 = !DILocation(line: 17, column: 22, scope: !53)
!75 = !DILocation(line: 17, column: 9, scope: !53)
!76 = !DILocation(line: 18, column: 7, scope: !77)
!77 = distinct !DILexicalBlock(scope: !53, file: !2, line: 18, column: 7)
!78 = !DILocation(line: 18, column: 13, scope: !77)
!79 = !DILocation(line: 18, column: 7, scope: !53)
!80 = !DILocation(line: 19, column: 13, scope: !77)
!81 = !DILocation(line: 19, column: 5, scope: !77)
!82 = !DILocation(line: 22, column: 15, scope: !83)
!83 = distinct !DILexicalBlock(scope: !77, file: !2, line: 21, column: 5)
!84 = !DILocation(line: 22, column: 21, scope: !83)
!85 = !DILocation(line: 22, column: 14, scope: !83)
!86 = !DILocation(line: 23, column: 3, scope: !83)
!87 = !DILocation(line: 23, column: 9, scope: !83)
!88 = !DILocation(line: 23, column: 2, scope: !83)
!89 = !DILocation(line: 22, column: 12, scope: !83)
!90 = !DILocation(line: 24, column: 20, scope: !83)
!91 = !DILocation(line: 24, column: 26, scope: !83)
!92 = !DILocation(line: 24, column: 33, scope: !83)
!93 = !DILocation(line: 24, column: 31, scope: !83)
!94 = !DILocation(line: 24, column: 39, scope: !83)
!95 = !DILocation(line: 24, column: 46, scope: !83)
!96 = !DILocation(line: 24, column: 44, scope: !83)
!97 = !DILocation(line: 24, column: 15, scope: !83)
!98 = !DILocation(line: 26, column: 22, scope: !99)
!99 = distinct !DILexicalBlock(scope: !53, file: !2, line: 26, column: 7)
!100 = !DILocation(line: 26, column: 13, scope: !99)
!101 = !DILocation(line: 26, column: 7, scope: !53)
!102 = !DILocation(line: 27, column: 13, scope: !99)
!103 = !DILocation(line: 27, column: 5, scope: !99)
!104 = !DILocation(line: 28, column: 21, scope: !53)
!105 = !DILocation(line: 28, column: 5, scope: !53)
!106 = !DILocation(line: 29, column: 7, scope: !53)
!107 = !DILocation(line: 30, column: 14, scope: !53)
!108 = !DILocation(line: 30, column: 3, scope: !53)
!109 = !DILocation(line: 30, column: 6, scope: !53)
!110 = !DILocation(line: 30, column: 12, scope: !53)
!111 = !DILocation(line: 31, column: 13, scope: !53)
!112 = !DILocation(line: 31, column: 3, scope: !53)
!113 = !DILocation(line: 31, column: 6, scope: !53)
!114 = !DILocation(line: 31, column: 11, scope: !53)
!115 = !DILocation(line: 32, column: 8, scope: !116)
!116 = distinct !DILexicalBlock(scope: !53, file: !2, line: 32, column: 7)
!117 = !DILocation(line: 32, column: 7, scope: !53)
!118 = !DILocation(line: 33, column: 6, scope: !116)
!119 = !DILocation(line: 33, column: 10, scope: !116)
!120 = !DILocation(line: 33, column: 5, scope: !116)
!121 = !DILocation(line: 35, column: 12, scope: !116)
!122 = !DILocation(line: 35, column: 17, scope: !116)
!123 = !DILocation(line: 35, column: 5, scope: !116)
!124 = !DILocation(line: 36, column: 19, scope: !53)
!125 = !DILocation(line: 36, column: 3, scope: !53)
!126 = !DILocation(line: 37, column: 1, scope: !53)
!127 = distinct !DISubprogram(name: "ys_copy", scope: !2, file: !2, line: 43, type: !54, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!128 = !DILocalVariable(name: "s", arg: 1, scope: !127, file: !2, line: 43, type: !56)
!129 = !DILocation(line: 43, column: 28, scope: !127)
!130 = !DILocalVariable(name: "res", scope: !127, file: !2, line: 44, type: !34)
!131 = !DILocation(line: 44, column: 10, scope: !127)
!132 = !DILocalVariable(name: "strsz", scope: !127, file: !2, line: 45, type: !41)
!133 = !DILocation(line: 45, column: 15, scope: !127)
!134 = !DILocalVariable(name: "totalsz", scope: !127, file: !2, line: 45, type: !41)
!135 = !DILocation(line: 45, column: 22, scope: !127)
!136 = !DILocalVariable(name: "y", scope: !127, file: !2, line: 46, type: !35)
!137 = !DILocation(line: 46, column: 15, scope: !127)
!138 = !DILocation(line: 48, column: 12, scope: !127)
!139 = !DILocation(line: 48, column: 10, scope: !127)
!140 = !DILocation(line: 48, column: 28, scope: !127)
!141 = !DILocation(line: 48, column: 21, scope: !127)
!142 = !DILocation(line: 48, column: 8, scope: !127)
!143 = !DILocation(line: 49, column: 12, scope: !127)
!144 = !DILocation(line: 49, column: 18, scope: !127)
!145 = !DILocation(line: 49, column: 10, scope: !127)
!146 = !DILocation(line: 50, column: 21, scope: !147)
!147 = distinct !DILexicalBlock(scope: !127, file: !2, line: 50, column: 6)
!148 = !DILocation(line: 50, column: 12, scope: !147)
!149 = !DILocation(line: 50, column: 6, scope: !127)
!150 = !DILocation(line: 51, column: 11, scope: !147)
!151 = !DILocation(line: 51, column: 3, scope: !147)
!152 = !DILocation(line: 52, column: 20, scope: !127)
!153 = !DILocation(line: 52, column: 4, scope: !127)
!154 = !DILocation(line: 53, column: 6, scope: !127)
!155 = !DILocation(line: 54, column: 13, scope: !127)
!156 = !DILocation(line: 54, column: 2, scope: !127)
!157 = !DILocation(line: 54, column: 5, scope: !127)
!158 = !DILocation(line: 54, column: 11, scope: !127)
!159 = !DILocation(line: 55, column: 12, scope: !127)
!160 = !DILocation(line: 55, column: 2, scope: !127)
!161 = !DILocation(line: 55, column: 5, scope: !127)
!162 = !DILocation(line: 55, column: 10, scope: !127)
!163 = !DILocation(line: 56, column: 7, scope: !164)
!164 = distinct !DILexicalBlock(scope: !127, file: !2, line: 56, column: 6)
!165 = !DILocation(line: 56, column: 6, scope: !127)
!166 = !DILocation(line: 57, column: 4, scope: !164)
!167 = !DILocation(line: 57, column: 8, scope: !164)
!168 = !DILocation(line: 57, column: 3, scope: !164)
!169 = !DILocation(line: 59, column: 10, scope: !164)
!170 = !DILocation(line: 59, column: 15, scope: !164)
!171 = !DILocation(line: 59, column: 3, scope: !164)
!172 = !DILocation(line: 60, column: 18, scope: !127)
!173 = !DILocation(line: 60, column: 2, scope: !127)
!174 = !DILocation(line: 61, column: 1, scope: !127)
!175 = distinct !DISubprogram(name: "ys_del", scope: !2, file: !2, line: 67, type: !176, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!179 = !DILocalVariable(name: "s", arg: 1, scope: !175, file: !2, line: 67, type: !178)
!180 = !DILocation(line: 67, column: 21, scope: !175)
!181 = !DILocalVariable(name: "y", scope: !175, file: !2, line: 69, type: !35)
!182 = !DILocation(line: 69, column: 16, scope: !175)
!183 = !DILocation(line: 71, column: 8, scope: !184)
!184 = distinct !DILexicalBlock(scope: !175, file: !2, line: 71, column: 7)
!185 = !DILocation(line: 71, column: 10, scope: !184)
!186 = !DILocation(line: 71, column: 15, scope: !184)
!187 = !DILocation(line: 71, column: 14, scope: !184)
!188 = !DILocation(line: 71, column: 7, scope: !175)
!189 = !DILocation(line: 72, column: 5, scope: !184)
!190 = !DILocation(line: 73, column: 23, scope: !175)
!191 = !DILocation(line: 73, column: 22, scope: !175)
!192 = !DILocation(line: 73, column: 25, scope: !175)
!193 = !DILocation(line: 73, column: 5, scope: !175)
!194 = !DILocation(line: 74, column: 3, scope: !175)
!195 = !DILocation(line: 75, column: 4, scope: !175)
!196 = !DILocation(line: 75, column: 6, scope: !175)
!197 = !DILocation(line: 76, column: 1, scope: !175)
!198 = distinct !DISubprogram(name: "ys_free", scope: !2, file: !2, line: 82, type: !199, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !43}
!201 = !DILocalVariable(name: "s", arg: 1, scope: !198, file: !2, line: 82, type: !43)
!202 = !DILocation(line: 82, column: 21, scope: !198)
!203 = !DILocalVariable(name: "y", scope: !198, file: !2, line: 83, type: !35)
!204 = !DILocation(line: 83, column: 15, scope: !198)
!205 = !DILocation(line: 85, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !198, file: !2, line: 85, column: 6)
!207 = !DILocation(line: 85, column: 6, scope: !198)
!208 = !DILocation(line: 86, column: 3, scope: !206)
!209 = !DILocation(line: 87, column: 21, scope: !198)
!210 = !DILocation(line: 87, column: 23, scope: !198)
!211 = !DILocation(line: 87, column: 4, scope: !198)
!212 = !DILocation(line: 88, column: 2, scope: !198)
!213 = !DILocation(line: 89, column: 1, scope: !198)
!214 = distinct !DISubprogram(name: "ys_trunc", scope: !2, file: !2, line: 95, type: !199, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!215 = !DILocalVariable(name: "s", arg: 1, scope: !214, file: !2, line: 95, type: !43)
!216 = !DILocation(line: 95, column: 22, scope: !214)
!217 = !DILocalVariable(name: "y", scope: !214, file: !2, line: 97, type: !35)
!218 = !DILocation(line: 97, column: 16, scope: !214)
!219 = !DILocation(line: 99, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !214, file: !2, line: 99, column: 7)
!221 = !DILocation(line: 99, column: 7, scope: !214)
!222 = !DILocation(line: 100, column: 5, scope: !220)
!223 = !DILocation(line: 101, column: 22, scope: !214)
!224 = !DILocation(line: 101, column: 24, scope: !214)
!225 = !DILocation(line: 101, column: 5, scope: !214)
!226 = !DILocation(line: 102, column: 4, scope: !214)
!227 = !DILocation(line: 102, column: 6, scope: !214)
!228 = !DILocation(line: 103, column: 3, scope: !214)
!229 = !DILocation(line: 103, column: 6, scope: !214)
!230 = !DILocation(line: 103, column: 11, scope: !214)
!231 = !DILocation(line: 104, column: 1, scope: !214)
!232 = distinct !DISubprogram(name: "ys_setsz", scope: !2, file: !2, line: 110, type: !233, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !178, !41}
!235 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!236 = !DILocalVariable(name: "s", arg: 1, scope: !232, file: !2, line: 110, type: !178)
!237 = !DILocation(line: 110, column: 22, scope: !232)
!238 = !DILocalVariable(name: "sz", arg: 2, scope: !232, file: !2, line: 110, type: !41)
!239 = !DILocation(line: 110, column: 38, scope: !232)
!240 = !DILocalVariable(name: "y", scope: !232, file: !2, line: 112, type: !35)
!241 = !DILocation(line: 112, column: 16, scope: !232)
!242 = !DILocalVariable(name: "ny", scope: !232, file: !2, line: 112, type: !35)
!243 = !DILocation(line: 112, column: 20, scope: !232)
!244 = !DILocalVariable(name: "totalsz", scope: !232, file: !2, line: 113, type: !41)
!245 = !DILocation(line: 113, column: 16, scope: !232)
!246 = !DILocalVariable(name: "leap", scope: !232, file: !2, line: 113, type: !41)
!247 = !DILocation(line: 113, column: 25, scope: !232)
!248 = !DILocalVariable(name: "ns", scope: !232, file: !2, line: 114, type: !34)
!249 = !DILocation(line: 114, column: 9, scope: !232)
!250 = !DILocation(line: 116, column: 8, scope: !251)
!251 = distinct !DILexicalBlock(scope: !232, file: !2, line: 116, column: 7)
!252 = !DILocation(line: 116, column: 7, scope: !232)
!253 = !DILocation(line: 117, column: 5, scope: !251)
!254 = !DILocation(line: 118, column: 23, scope: !232)
!255 = !DILocation(line: 118, column: 22, scope: !232)
!256 = !DILocation(line: 118, column: 25, scope: !232)
!257 = !DILocation(line: 118, column: 5, scope: !232)
!258 = !DILocation(line: 119, column: 7, scope: !259)
!259 = distinct !DILexicalBlock(scope: !232, file: !2, line: 119, column: 7)
!260 = !DILocation(line: 119, column: 13, scope: !259)
!261 = !DILocation(line: 119, column: 16, scope: !259)
!262 = !DILocation(line: 119, column: 10, scope: !259)
!263 = !DILocation(line: 119, column: 7, scope: !232)
!264 = !DILocation(line: 120, column: 5, scope: !259)
!265 = !DILocation(line: 121, column: 11, scope: !232)
!266 = !DILocation(line: 121, column: 14, scope: !232)
!267 = !DILocation(line: 121, column: 10, scope: !232)
!268 = !DILocation(line: 122, column: 6, scope: !232)
!269 = !DILocation(line: 122, column: 9, scope: !232)
!270 = !DILocation(line: 122, column: 5, scope: !232)
!271 = !DILocation(line: 121, column: 8, scope: !232)
!272 = !DILocation(line: 123, column: 16, scope: !232)
!273 = !DILocation(line: 123, column: 19, scope: !232)
!274 = !DILocation(line: 123, column: 26, scope: !232)
!275 = !DILocation(line: 123, column: 24, scope: !232)
!276 = !DILocation(line: 123, column: 32, scope: !232)
!277 = !DILocation(line: 123, column: 39, scope: !232)
!278 = !DILocation(line: 123, column: 37, scope: !232)
!279 = !DILocation(line: 123, column: 11, scope: !232)
!280 = !DILocation(line: 124, column: 21, scope: !281)
!281 = distinct !DILexicalBlock(scope: !232, file: !2, line: 124, column: 7)
!282 = !DILocation(line: 124, column: 12, scope: !281)
!283 = !DILocation(line: 124, column: 7, scope: !232)
!284 = !DILocation(line: 125, column: 5, scope: !281)
!285 = !DILocation(line: 126, column: 22, scope: !232)
!286 = !DILocation(line: 126, column: 6, scope: !232)
!287 = !DILocation(line: 127, column: 6, scope: !232)
!288 = !DILocation(line: 128, column: 15, scope: !232)
!289 = !DILocation(line: 128, column: 3, scope: !232)
!290 = !DILocation(line: 128, column: 7, scope: !232)
!291 = !DILocation(line: 128, column: 13, scope: !232)
!292 = !DILocation(line: 129, column: 14, scope: !232)
!293 = !DILocation(line: 129, column: 17, scope: !232)
!294 = !DILocation(line: 129, column: 3, scope: !232)
!295 = !DILocation(line: 129, column: 7, scope: !232)
!296 = !DILocation(line: 129, column: 12, scope: !232)
!297 = !DILocation(line: 130, column: 10, scope: !232)
!298 = !DILocation(line: 130, column: 14, scope: !232)
!299 = !DILocation(line: 130, column: 17, scope: !232)
!300 = !DILocation(line: 130, column: 20, scope: !232)
!301 = !DILocation(line: 130, column: 25, scope: !232)
!302 = !DILocation(line: 130, column: 3, scope: !232)
!303 = !DILocation(line: 131, column: 3, scope: !232)
!304 = !DILocation(line: 132, column: 8, scope: !232)
!305 = !DILocation(line: 132, column: 4, scope: !232)
!306 = !DILocation(line: 132, column: 6, scope: !232)
!307 = !DILocation(line: 133, column: 3, scope: !232)
!308 = !DILocation(line: 134, column: 1, scope: !232)
!309 = distinct !DISubprogram(name: "ys_len", scope: !2, file: !2, line: 140, type: !310, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!310 = !DISubroutineType(types: !311)
!311 = !{!41, !312}
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!313 = !DILocalVariable(name: "s", arg: 1, scope: !309, file: !2, line: 140, type: !312)
!314 = !DILocation(line: 140, column: 34, scope: !309)
!315 = !DILocation(line: 142, column: 8, scope: !316)
!316 = distinct !DILexicalBlock(scope: !309, file: !2, line: 142, column: 7)
!317 = !DILocation(line: 142, column: 7, scope: !309)
!318 = !DILocation(line: 143, column: 5, scope: !316)
!319 = !DILocation(line: 144, column: 27, scope: !309)
!320 = !DILocation(line: 144, column: 29, scope: !309)
!321 = !DILocation(line: 144, column: 54, scope: !309)
!322 = !DILocation(line: 144, column: 3, scope: !309)
!323 = !DILocation(line: 145, column: 1, scope: !309)
!324 = distinct !DISubprogram(name: "ys_cat", scope: !2, file: !2, line: 151, type: !325, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!325 = !DISubroutineType(types: !326)
!326 = !{!235, !178, !56}
!327 = !DILocalVariable(name: "dest", arg: 1, scope: !324, file: !2, line: 151, type: !178)
!328 = !DILocation(line: 151, column: 20, scope: !324)
!329 = !DILocalVariable(name: "src", arg: 2, scope: !324, file: !2, line: 151, type: !56)
!330 = !DILocation(line: 151, column: 38, scope: !324)
!331 = !DILocalVariable(name: "srcsz", scope: !324, file: !2, line: 153, type: !41)
!332 = !DILocation(line: 153, column: 16, scope: !324)
!333 = !DILocalVariable(name: "strsz", scope: !324, file: !2, line: 153, type: !41)
!334 = !DILocation(line: 153, column: 23, scope: !324)
!335 = !DILocalVariable(name: "totalsz", scope: !324, file: !2, line: 153, type: !41)
!336 = !DILocation(line: 153, column: 30, scope: !324)
!337 = !DILocalVariable(name: "leap", scope: !324, file: !2, line: 153, type: !41)
!338 = !DILocation(line: 153, column: 39, scope: !324)
!339 = !DILocalVariable(name: "y", scope: !324, file: !2, line: 154, type: !35)
!340 = !DILocation(line: 154, column: 16, scope: !324)
!341 = !DILocalVariable(name: "ny", scope: !324, file: !2, line: 154, type: !35)
!342 = !DILocation(line: 154, column: 20, scope: !324)
!343 = !DILocalVariable(name: "ns", scope: !324, file: !2, line: 155, type: !34)
!344 = !DILocation(line: 155, column: 9, scope: !324)
!345 = !DILocation(line: 157, column: 8, scope: !346)
!346 = distinct !DILexicalBlock(scope: !324, file: !2, line: 157, column: 7)
!347 = !DILocation(line: 157, column: 12, scope: !346)
!348 = !DILocation(line: 157, column: 32, scope: !346)
!349 = !DILocation(line: 157, column: 25, scope: !346)
!350 = !DILocation(line: 157, column: 23, scope: !346)
!351 = !DILocation(line: 157, column: 7, scope: !324)
!352 = !DILocation(line: 158, column: 5, scope: !346)
!353 = !DILocation(line: 159, column: 9, scope: !354)
!354 = distinct !DILexicalBlock(scope: !324, file: !2, line: 159, column: 7)
!355 = !DILocation(line: 159, column: 8, scope: !354)
!356 = !DILocation(line: 159, column: 7, scope: !324)
!357 = !DILocation(line: 161, column: 22, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !2, line: 160, column: 5)
!359 = !DILocation(line: 161, column: 15, scope: !358)
!360 = !DILocation(line: 161, column: 8, scope: !358)
!361 = !DILocation(line: 161, column: 13, scope: !358)
!362 = !DILocation(line: 162, column: 7, scope: !358)
!363 = !DILocation(line: 164, column: 23, scope: !324)
!364 = !DILocation(line: 164, column: 22, scope: !324)
!365 = !DILocation(line: 164, column: 28, scope: !324)
!366 = !DILocation(line: 164, column: 5, scope: !324)
!367 = !DILocation(line: 165, column: 8, scope: !368)
!368 = distinct !DILexicalBlock(scope: !324, file: !2, line: 165, column: 7)
!369 = !DILocation(line: 165, column: 11, scope: !368)
!370 = !DILocation(line: 165, column: 16, scope: !368)
!371 = !DILocation(line: 165, column: 22, scope: !368)
!372 = !DILocation(line: 165, column: 20, scope: !368)
!373 = !DILocation(line: 165, column: 32, scope: !368)
!374 = !DILocation(line: 165, column: 35, scope: !368)
!375 = !DILocation(line: 165, column: 29, scope: !368)
!376 = !DILocation(line: 165, column: 7, scope: !324)
!377 = !DILocation(line: 167, column: 15, scope: !378)
!378 = distinct !DILexicalBlock(scope: !368, file: !2, line: 166, column: 5)
!379 = !DILocation(line: 167, column: 14, scope: !378)
!380 = !DILocation(line: 167, column: 22, scope: !378)
!381 = !DILocation(line: 167, column: 25, scope: !378)
!382 = !DILocation(line: 167, column: 20, scope: !378)
!383 = !DILocation(line: 167, column: 31, scope: !378)
!384 = !DILocation(line: 167, column: 36, scope: !378)
!385 = !DILocation(line: 167, column: 42, scope: !378)
!386 = !DILocation(line: 167, column: 7, scope: !378)
!387 = !DILocation(line: 168, column: 18, scope: !378)
!388 = !DILocation(line: 168, column: 7, scope: !378)
!389 = !DILocation(line: 168, column: 10, scope: !378)
!390 = !DILocation(line: 168, column: 15, scope: !378)
!391 = !DILocation(line: 169, column: 7, scope: !378)
!392 = !DILocation(line: 171, column: 11, scope: !324)
!393 = !DILocation(line: 171, column: 14, scope: !324)
!394 = !DILocation(line: 171, column: 21, scope: !324)
!395 = !DILocation(line: 171, column: 19, scope: !324)
!396 = !DILocation(line: 171, column: 9, scope: !324)
!397 = !DILocation(line: 172, column: 11, scope: !324)
!398 = !DILocation(line: 172, column: 17, scope: !324)
!399 = !DILocation(line: 172, column: 10, scope: !324)
!400 = !DILocation(line: 173, column: 6, scope: !324)
!401 = !DILocation(line: 173, column: 12, scope: !324)
!402 = !DILocation(line: 173, column: 5, scope: !324)
!403 = !DILocation(line: 172, column: 8, scope: !324)
!404 = !DILocation(line: 174, column: 16, scope: !324)
!405 = !DILocation(line: 174, column: 22, scope: !324)
!406 = !DILocation(line: 174, column: 29, scope: !324)
!407 = !DILocation(line: 174, column: 27, scope: !324)
!408 = !DILocation(line: 174, column: 35, scope: !324)
!409 = !DILocation(line: 174, column: 42, scope: !324)
!410 = !DILocation(line: 174, column: 40, scope: !324)
!411 = !DILocation(line: 174, column: 11, scope: !324)
!412 = !DILocation(line: 175, column: 21, scope: !413)
!413 = distinct !DILexicalBlock(scope: !324, file: !2, line: 175, column: 7)
!414 = !DILocation(line: 175, column: 12, scope: !413)
!415 = !DILocation(line: 175, column: 7, scope: !324)
!416 = !DILocation(line: 176, column: 5, scope: !413)
!417 = !DILocation(line: 177, column: 22, scope: !324)
!418 = !DILocation(line: 177, column: 6, scope: !324)
!419 = !DILocation(line: 178, column: 6, scope: !324)
!420 = !DILocation(line: 179, column: 15, scope: !324)
!421 = !DILocation(line: 179, column: 3, scope: !324)
!422 = !DILocation(line: 179, column: 7, scope: !324)
!423 = !DILocation(line: 179, column: 13, scope: !324)
!424 = !DILocation(line: 180, column: 14, scope: !324)
!425 = !DILocation(line: 180, column: 3, scope: !324)
!426 = !DILocation(line: 180, column: 7, scope: !324)
!427 = !DILocation(line: 180, column: 12, scope: !324)
!428 = !DILocation(line: 181, column: 10, scope: !324)
!429 = !DILocation(line: 181, column: 15, scope: !324)
!430 = !DILocation(line: 181, column: 14, scope: !324)
!431 = !DILocation(line: 181, column: 21, scope: !324)
!432 = !DILocation(line: 181, column: 24, scope: !324)
!433 = !DILocation(line: 181, column: 3, scope: !324)
!434 = !DILocation(line: 182, column: 10, scope: !324)
!435 = !DILocation(line: 182, column: 15, scope: !324)
!436 = !DILocation(line: 182, column: 18, scope: !324)
!437 = !DILocation(line: 182, column: 13, scope: !324)
!438 = !DILocation(line: 182, column: 24, scope: !324)
!439 = !DILocation(line: 182, column: 29, scope: !324)
!440 = !DILocation(line: 182, column: 35, scope: !324)
!441 = !DILocation(line: 182, column: 3, scope: !324)
!442 = !DILocation(line: 183, column: 3, scope: !324)
!443 = !DILocation(line: 184, column: 11, scope: !324)
!444 = !DILocation(line: 184, column: 4, scope: !324)
!445 = !DILocation(line: 184, column: 9, scope: !324)
!446 = !DILocation(line: 185, column: 3, scope: !324)
!447 = !DILocation(line: 186, column: 1, scope: !324)
!448 = distinct !DISubprogram(name: "ys_tac", scope: !2, file: !2, line: 192, type: !325, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!449 = !DILocalVariable(name: "dest", arg: 1, scope: !448, file: !2, line: 192, type: !178)
!450 = !DILocation(line: 192, column: 20, scope: !448)
!451 = !DILocalVariable(name: "src", arg: 2, scope: !448, file: !2, line: 192, type: !56)
!452 = !DILocation(line: 192, column: 38, scope: !448)
!453 = !DILocalVariable(name: "srcsz", scope: !448, file: !2, line: 194, type: !41)
!454 = !DILocation(line: 194, column: 16, scope: !448)
!455 = !DILocalVariable(name: "strsz", scope: !448, file: !2, line: 194, type: !41)
!456 = !DILocation(line: 194, column: 23, scope: !448)
!457 = !DILocalVariable(name: "totalsz", scope: !448, file: !2, line: 194, type: !41)
!458 = !DILocation(line: 194, column: 30, scope: !448)
!459 = !DILocalVariable(name: "leap", scope: !448, file: !2, line: 194, type: !41)
!460 = !DILocation(line: 194, column: 39, scope: !448)
!461 = !DILocalVariable(name: "y", scope: !448, file: !2, line: 195, type: !35)
!462 = !DILocation(line: 195, column: 16, scope: !448)
!463 = !DILocalVariable(name: "ny", scope: !448, file: !2, line: 195, type: !35)
!464 = !DILocation(line: 195, column: 20, scope: !448)
!465 = !DILocalVariable(name: "ns", scope: !448, file: !2, line: 196, type: !34)
!466 = !DILocation(line: 196, column: 9, scope: !448)
!467 = !DILocation(line: 198, column: 8, scope: !468)
!468 = distinct !DILexicalBlock(scope: !448, file: !2, line: 198, column: 7)
!469 = !DILocation(line: 198, column: 12, scope: !468)
!470 = !DILocation(line: 198, column: 32, scope: !468)
!471 = !DILocation(line: 198, column: 25, scope: !468)
!472 = !DILocation(line: 198, column: 23, scope: !468)
!473 = !DILocation(line: 198, column: 7, scope: !448)
!474 = !DILocation(line: 199, column: 5, scope: !468)
!475 = !DILocation(line: 200, column: 9, scope: !476)
!476 = distinct !DILexicalBlock(scope: !448, file: !2, line: 200, column: 7)
!477 = !DILocation(line: 200, column: 8, scope: !476)
!478 = !DILocation(line: 200, column: 7, scope: !448)
!479 = !DILocation(line: 202, column: 22, scope: !480)
!480 = distinct !DILexicalBlock(scope: !476, file: !2, line: 201, column: 5)
!481 = !DILocation(line: 202, column: 15, scope: !480)
!482 = !DILocation(line: 202, column: 8, scope: !480)
!483 = !DILocation(line: 202, column: 13, scope: !480)
!484 = !DILocation(line: 203, column: 7, scope: !480)
!485 = !DILocation(line: 205, column: 23, scope: !448)
!486 = !DILocation(line: 205, column: 22, scope: !448)
!487 = !DILocation(line: 205, column: 28, scope: !448)
!488 = !DILocation(line: 205, column: 5, scope: !448)
!489 = !DILocation(line: 206, column: 8, scope: !490)
!490 = distinct !DILexicalBlock(scope: !448, file: !2, line: 206, column: 7)
!491 = !DILocation(line: 206, column: 11, scope: !490)
!492 = !DILocation(line: 206, column: 16, scope: !490)
!493 = !DILocation(line: 206, column: 22, scope: !490)
!494 = !DILocation(line: 206, column: 20, scope: !490)
!495 = !DILocation(line: 206, column: 32, scope: !490)
!496 = !DILocation(line: 206, column: 35, scope: !490)
!497 = !DILocation(line: 206, column: 29, scope: !490)
!498 = !DILocation(line: 206, column: 7, scope: !448)
!499 = !DILocalVariable(name: "pt1", scope: !500, file: !2, line: 208, type: !34)
!500 = distinct !DILexicalBlock(scope: !490, file: !2, line: 207, column: 5)
!501 = !DILocation(line: 208, column: 13, scope: !500)
!502 = !DILocalVariable(name: "pt2", scope: !500, file: !2, line: 208, type: !34)
!503 = !DILocation(line: 208, column: 19, scope: !500)
!504 = !DILocation(line: 209, column: 19, scope: !505)
!505 = distinct !DILexicalBlock(scope: !500, file: !2, line: 209, column: 7)
!506 = !DILocation(line: 209, column: 18, scope: !505)
!507 = !DILocation(line: 209, column: 26, scope: !505)
!508 = !DILocation(line: 209, column: 29, scope: !505)
!509 = !DILocation(line: 209, column: 24, scope: !505)
!510 = !DILocation(line: 209, column: 16, scope: !505)
!511 = !DILocation(line: 209, column: 41, scope: !505)
!512 = !DILocation(line: 209, column: 47, scope: !505)
!513 = !DILocation(line: 209, column: 45, scope: !505)
!514 = !DILocation(line: 209, column: 39, scope: !505)
!515 = !DILocation(line: 209, column: 12, scope: !505)
!516 = !DILocation(line: 210, column: 5, scope: !517)
!517 = distinct !DILexicalBlock(scope: !505, file: !2, line: 209, column: 7)
!518 = !DILocation(line: 210, column: 13, scope: !517)
!519 = !DILocation(line: 210, column: 12, scope: !517)
!520 = !DILocation(line: 210, column: 9, scope: !517)
!521 = !DILocation(line: 209, column: 7, scope: !505)
!522 = !DILocation(line: 211, column: 10, scope: !517)
!523 = !DILocation(line: 211, column: 9, scope: !517)
!524 = !DILocation(line: 211, column: 3, scope: !517)
!525 = !DILocation(line: 211, column: 7, scope: !517)
!526 = !DILocation(line: 211, column: 2, scope: !517)
!527 = !DILocation(line: 210, column: 19, scope: !517)
!528 = !DILocation(line: 210, column: 26, scope: !517)
!529 = !DILocation(line: 209, column: 7, scope: !517)
!530 = distinct !{!530, !521, !531}
!531 = !DILocation(line: 211, column: 10, scope: !505)
!532 = !DILocation(line: 212, column: 15, scope: !500)
!533 = !DILocation(line: 212, column: 14, scope: !500)
!534 = !DILocation(line: 212, column: 21, scope: !500)
!535 = !DILocation(line: 212, column: 26, scope: !500)
!536 = !DILocation(line: 212, column: 7, scope: !500)
!537 = !DILocation(line: 213, column: 18, scope: !500)
!538 = !DILocation(line: 213, column: 7, scope: !500)
!539 = !DILocation(line: 213, column: 10, scope: !500)
!540 = !DILocation(line: 213, column: 15, scope: !500)
!541 = !DILocation(line: 214, column: 7, scope: !500)
!542 = !DILocation(line: 216, column: 11, scope: !448)
!543 = !DILocation(line: 216, column: 14, scope: !448)
!544 = !DILocation(line: 216, column: 21, scope: !448)
!545 = !DILocation(line: 216, column: 19, scope: !448)
!546 = !DILocation(line: 216, column: 9, scope: !448)
!547 = !DILocation(line: 217, column: 11, scope: !448)
!548 = !DILocation(line: 217, column: 17, scope: !448)
!549 = !DILocation(line: 217, column: 10, scope: !448)
!550 = !DILocation(line: 218, column: 6, scope: !448)
!551 = !DILocation(line: 218, column: 12, scope: !448)
!552 = !DILocation(line: 218, column: 5, scope: !448)
!553 = !DILocation(line: 217, column: 8, scope: !448)
!554 = !DILocation(line: 219, column: 16, scope: !448)
!555 = !DILocation(line: 219, column: 22, scope: !448)
!556 = !DILocation(line: 219, column: 29, scope: !448)
!557 = !DILocation(line: 219, column: 27, scope: !448)
!558 = !DILocation(line: 219, column: 35, scope: !448)
!559 = !DILocation(line: 219, column: 42, scope: !448)
!560 = !DILocation(line: 219, column: 40, scope: !448)
!561 = !DILocation(line: 219, column: 11, scope: !448)
!562 = !DILocation(line: 220, column: 21, scope: !563)
!563 = distinct !DILexicalBlock(scope: !448, file: !2, line: 220, column: 7)
!564 = !DILocation(line: 220, column: 12, scope: !563)
!565 = !DILocation(line: 220, column: 7, scope: !448)
!566 = !DILocation(line: 221, column: 5, scope: !563)
!567 = !DILocation(line: 222, column: 22, scope: !448)
!568 = !DILocation(line: 222, column: 6, scope: !448)
!569 = !DILocation(line: 223, column: 6, scope: !448)
!570 = !DILocation(line: 224, column: 15, scope: !448)
!571 = !DILocation(line: 224, column: 3, scope: !448)
!572 = !DILocation(line: 224, column: 7, scope: !448)
!573 = !DILocation(line: 224, column: 13, scope: !448)
!574 = !DILocation(line: 225, column: 14, scope: !448)
!575 = !DILocation(line: 225, column: 3, scope: !448)
!576 = !DILocation(line: 225, column: 7, scope: !448)
!577 = !DILocation(line: 225, column: 12, scope: !448)
!578 = !DILocation(line: 226, column: 10, scope: !448)
!579 = !DILocation(line: 226, column: 14, scope: !448)
!580 = !DILocation(line: 226, column: 19, scope: !448)
!581 = !DILocation(line: 226, column: 3, scope: !448)
!582 = !DILocation(line: 227, column: 10, scope: !448)
!583 = !DILocation(line: 227, column: 15, scope: !448)
!584 = !DILocation(line: 227, column: 13, scope: !448)
!585 = !DILocation(line: 227, column: 23, scope: !448)
!586 = !DILocation(line: 227, column: 22, scope: !448)
!587 = !DILocation(line: 227, column: 29, scope: !448)
!588 = !DILocation(line: 227, column: 32, scope: !448)
!589 = !DILocation(line: 227, column: 37, scope: !448)
!590 = !DILocation(line: 227, column: 3, scope: !448)
!591 = !DILocation(line: 228, column: 3, scope: !448)
!592 = !DILocation(line: 229, column: 11, scope: !448)
!593 = !DILocation(line: 229, column: 4, scope: !448)
!594 = !DILocation(line: 229, column: 9, scope: !448)
!595 = !DILocation(line: 230, column: 3, scope: !448)
!596 = !DILocation(line: 231, column: 1, scope: !448)
!597 = distinct !DISubprogram(name: "ys_ncat", scope: !2, file: !2, line: 237, type: !598, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!598 = !DISubroutineType(types: !599)
!599 = !{!235, !178, !56, !41}
!600 = !DILocalVariable(name: "dest", arg: 1, scope: !597, file: !2, line: 237, type: !178)
!601 = !DILocation(line: 237, column: 21, scope: !597)
!602 = !DILocalVariable(name: "src", arg: 2, scope: !597, file: !2, line: 237, type: !56)
!603 = !DILocation(line: 237, column: 39, scope: !597)
!604 = !DILocalVariable(name: "n", arg: 3, scope: !597, file: !2, line: 237, type: !41)
!605 = !DILocation(line: 237, column: 57, scope: !597)
!606 = !DILocalVariable(name: "strsz", scope: !597, file: !2, line: 239, type: !41)
!607 = !DILocation(line: 239, column: 16, scope: !597)
!608 = !DILocalVariable(name: "totalsz", scope: !597, file: !2, line: 239, type: !41)
!609 = !DILocation(line: 239, column: 23, scope: !597)
!610 = !DILocalVariable(name: "leap", scope: !597, file: !2, line: 239, type: !41)
!611 = !DILocation(line: 239, column: 32, scope: !597)
!612 = !DILocalVariable(name: "y", scope: !597, file: !2, line: 240, type: !35)
!613 = !DILocation(line: 240, column: 16, scope: !597)
!614 = !DILocalVariable(name: "ny", scope: !597, file: !2, line: 240, type: !35)
!615 = !DILocation(line: 240, column: 20, scope: !597)
!616 = !DILocalVariable(name: "ns", scope: !597, file: !2, line: 241, type: !34)
!617 = !DILocation(line: 241, column: 9, scope: !597)
!618 = !DILocation(line: 243, column: 8, scope: !619)
!619 = distinct !DILexicalBlock(scope: !597, file: !2, line: 243, column: 7)
!620 = !DILocation(line: 243, column: 12, scope: !619)
!621 = !DILocation(line: 243, column: 16, scope: !619)
!622 = !DILocation(line: 243, column: 7, scope: !597)
!623 = !DILocation(line: 244, column: 5, scope: !619)
!624 = !DILocation(line: 245, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !597, file: !2, line: 245, column: 7)
!626 = !DILocation(line: 245, column: 8, scope: !625)
!627 = !DILocation(line: 245, column: 7, scope: !597)
!628 = !DILocation(line: 247, column: 22, scope: !629)
!629 = distinct !DILexicalBlock(scope: !625, file: !2, line: 246, column: 5)
!630 = !DILocation(line: 247, column: 15, scope: !629)
!631 = !DILocation(line: 247, column: 8, scope: !629)
!632 = !DILocation(line: 247, column: 13, scope: !629)
!633 = !DILocation(line: 248, column: 7, scope: !629)
!634 = !DILocation(line: 250, column: 23, scope: !597)
!635 = !DILocation(line: 250, column: 22, scope: !597)
!636 = !DILocation(line: 250, column: 28, scope: !597)
!637 = !DILocation(line: 250, column: 5, scope: !597)
!638 = !DILocation(line: 251, column: 8, scope: !639)
!639 = distinct !DILexicalBlock(scope: !597, file: !2, line: 251, column: 7)
!640 = !DILocation(line: 251, column: 11, scope: !639)
!641 = !DILocation(line: 251, column: 16, scope: !639)
!642 = !DILocation(line: 251, column: 22, scope: !639)
!643 = !DILocation(line: 251, column: 20, scope: !639)
!644 = !DILocation(line: 251, column: 28, scope: !639)
!645 = !DILocation(line: 251, column: 31, scope: !639)
!646 = !DILocation(line: 251, column: 25, scope: !639)
!647 = !DILocation(line: 251, column: 7, scope: !597)
!648 = !DILocation(line: 253, column: 16, scope: !649)
!649 = distinct !DILexicalBlock(scope: !639, file: !2, line: 252, column: 5)
!650 = !DILocation(line: 253, column: 15, scope: !649)
!651 = !DILocation(line: 253, column: 23, scope: !649)
!652 = !DILocation(line: 253, column: 26, scope: !649)
!653 = !DILocation(line: 253, column: 21, scope: !649)
!654 = !DILocation(line: 253, column: 32, scope: !649)
!655 = !DILocation(line: 253, column: 37, scope: !649)
!656 = !DILocation(line: 253, column: 7, scope: !649)
!657 = !DILocation(line: 254, column: 18, scope: !649)
!658 = !DILocation(line: 254, column: 7, scope: !649)
!659 = !DILocation(line: 254, column: 10, scope: !649)
!660 = !DILocation(line: 254, column: 15, scope: !649)
!661 = !DILocation(line: 255, column: 9, scope: !649)
!662 = !DILocation(line: 255, column: 8, scope: !649)
!663 = !DILocation(line: 255, column: 15, scope: !649)
!664 = !DILocation(line: 255, column: 18, scope: !649)
!665 = !DILocation(line: 255, column: 7, scope: !649)
!666 = !DILocation(line: 255, column: 24, scope: !649)
!667 = !DILocation(line: 256, column: 7, scope: !649)
!668 = !DILocation(line: 258, column: 11, scope: !597)
!669 = !DILocation(line: 258, column: 14, scope: !597)
!670 = !DILocation(line: 258, column: 21, scope: !597)
!671 = !DILocation(line: 258, column: 19, scope: !597)
!672 = !DILocation(line: 258, column: 9, scope: !597)
!673 = !DILocation(line: 259, column: 11, scope: !597)
!674 = !DILocation(line: 259, column: 17, scope: !597)
!675 = !DILocation(line: 259, column: 10, scope: !597)
!676 = !DILocation(line: 260, column: 6, scope: !597)
!677 = !DILocation(line: 260, column: 12, scope: !597)
!678 = !DILocation(line: 260, column: 5, scope: !597)
!679 = !DILocation(line: 259, column: 8, scope: !597)
!680 = !DILocation(line: 261, column: 16, scope: !597)
!681 = !DILocation(line: 261, column: 22, scope: !597)
!682 = !DILocation(line: 261, column: 29, scope: !597)
!683 = !DILocation(line: 261, column: 27, scope: !597)
!684 = !DILocation(line: 261, column: 35, scope: !597)
!685 = !DILocation(line: 261, column: 42, scope: !597)
!686 = !DILocation(line: 261, column: 40, scope: !597)
!687 = !DILocation(line: 261, column: 11, scope: !597)
!688 = !DILocation(line: 262, column: 21, scope: !689)
!689 = distinct !DILexicalBlock(scope: !597, file: !2, line: 262, column: 7)
!690 = !DILocation(line: 262, column: 12, scope: !689)
!691 = !DILocation(line: 262, column: 7, scope: !597)
!692 = !DILocation(line: 263, column: 5, scope: !689)
!693 = !DILocation(line: 264, column: 22, scope: !597)
!694 = !DILocation(line: 264, column: 6, scope: !597)
!695 = !DILocation(line: 265, column: 6, scope: !597)
!696 = !DILocation(line: 266, column: 15, scope: !597)
!697 = !DILocation(line: 266, column: 3, scope: !597)
!698 = !DILocation(line: 266, column: 7, scope: !597)
!699 = !DILocation(line: 266, column: 13, scope: !597)
!700 = !DILocation(line: 267, column: 14, scope: !597)
!701 = !DILocation(line: 267, column: 3, scope: !597)
!702 = !DILocation(line: 267, column: 7, scope: !597)
!703 = !DILocation(line: 267, column: 12, scope: !597)
!704 = !DILocation(line: 268, column: 10, scope: !597)
!705 = !DILocation(line: 268, column: 15, scope: !597)
!706 = !DILocation(line: 268, column: 14, scope: !597)
!707 = !DILocation(line: 268, column: 3, scope: !597)
!708 = !DILocation(line: 269, column: 11, scope: !597)
!709 = !DILocation(line: 269, column: 16, scope: !597)
!710 = !DILocation(line: 269, column: 19, scope: !597)
!711 = !DILocation(line: 269, column: 14, scope: !597)
!712 = !DILocation(line: 269, column: 25, scope: !597)
!713 = !DILocation(line: 269, column: 30, scope: !597)
!714 = !DILocation(line: 269, column: 3, scope: !597)
!715 = !DILocation(line: 270, column: 3, scope: !597)
!716 = !DILocation(line: 270, column: 6, scope: !597)
!717 = !DILocation(line: 270, column: 10, scope: !597)
!718 = !DILocation(line: 270, column: 16, scope: !597)
!719 = !DILocation(line: 271, column: 3, scope: !597)
!720 = !DILocation(line: 272, column: 11, scope: !597)
!721 = !DILocation(line: 272, column: 4, scope: !597)
!722 = !DILocation(line: 272, column: 9, scope: !597)
!723 = !DILocation(line: 273, column: 3, scope: !597)
!724 = !DILocation(line: 274, column: 1, scope: !597)
!725 = distinct !DISubprogram(name: "ys_ntac", scope: !2, file: !2, line: 280, type: !598, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!726 = !DILocalVariable(name: "dest", arg: 1, scope: !725, file: !2, line: 280, type: !178)
!727 = !DILocation(line: 280, column: 21, scope: !725)
!728 = !DILocalVariable(name: "src", arg: 2, scope: !725, file: !2, line: 280, type: !56)
!729 = !DILocation(line: 280, column: 39, scope: !725)
!730 = !DILocalVariable(name: "n", arg: 3, scope: !725, file: !2, line: 280, type: !41)
!731 = !DILocation(line: 280, column: 57, scope: !725)
!732 = !DILocalVariable(name: "strsz", scope: !725, file: !2, line: 282, type: !41)
!733 = !DILocation(line: 282, column: 16, scope: !725)
!734 = !DILocalVariable(name: "totalsz", scope: !725, file: !2, line: 282, type: !41)
!735 = !DILocation(line: 282, column: 23, scope: !725)
!736 = !DILocalVariable(name: "leap", scope: !725, file: !2, line: 282, type: !41)
!737 = !DILocation(line: 282, column: 32, scope: !725)
!738 = !DILocalVariable(name: "y", scope: !725, file: !2, line: 283, type: !35)
!739 = !DILocation(line: 283, column: 16, scope: !725)
!740 = !DILocalVariable(name: "ny", scope: !725, file: !2, line: 283, type: !35)
!741 = !DILocation(line: 283, column: 20, scope: !725)
!742 = !DILocalVariable(name: "ns", scope: !725, file: !2, line: 284, type: !34)
!743 = !DILocation(line: 284, column: 9, scope: !725)
!744 = !DILocation(line: 286, column: 8, scope: !745)
!745 = distinct !DILexicalBlock(scope: !725, file: !2, line: 286, column: 7)
!746 = !DILocation(line: 286, column: 12, scope: !745)
!747 = !DILocation(line: 286, column: 16, scope: !745)
!748 = !DILocation(line: 286, column: 7, scope: !725)
!749 = !DILocation(line: 287, column: 5, scope: !745)
!750 = !DILocation(line: 288, column: 9, scope: !751)
!751 = distinct !DILexicalBlock(scope: !725, file: !2, line: 288, column: 7)
!752 = !DILocation(line: 288, column: 8, scope: !751)
!753 = !DILocation(line: 288, column: 7, scope: !725)
!754 = !DILocation(line: 290, column: 22, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !2, line: 289, column: 5)
!756 = !DILocation(line: 290, column: 15, scope: !755)
!757 = !DILocation(line: 290, column: 8, scope: !755)
!758 = !DILocation(line: 290, column: 13, scope: !755)
!759 = !DILocation(line: 291, column: 7, scope: !755)
!760 = !DILocation(line: 293, column: 15, scope: !725)
!761 = !DILocation(line: 293, column: 8, scope: !725)
!762 = !DILocation(line: 293, column: 22, scope: !725)
!763 = !DILocation(line: 293, column: 20, scope: !725)
!764 = !DILocation(line: 293, column: 7, scope: !725)
!765 = !DILocation(line: 293, column: 34, scope: !725)
!766 = !DILocation(line: 293, column: 27, scope: !725)
!767 = !DILocation(line: 293, column: 41, scope: !725)
!768 = !DILocation(line: 293, column: 5, scope: !725)
!769 = !DILocation(line: 294, column: 23, scope: !725)
!770 = !DILocation(line: 294, column: 22, scope: !725)
!771 = !DILocation(line: 294, column: 28, scope: !725)
!772 = !DILocation(line: 294, column: 5, scope: !725)
!773 = !DILocation(line: 295, column: 8, scope: !774)
!774 = distinct !DILexicalBlock(scope: !725, file: !2, line: 295, column: 7)
!775 = !DILocation(line: 295, column: 11, scope: !774)
!776 = !DILocation(line: 295, column: 16, scope: !774)
!777 = !DILocation(line: 295, column: 22, scope: !774)
!778 = !DILocation(line: 295, column: 20, scope: !774)
!779 = !DILocation(line: 295, column: 28, scope: !774)
!780 = !DILocation(line: 295, column: 31, scope: !774)
!781 = !DILocation(line: 295, column: 25, scope: !774)
!782 = !DILocation(line: 295, column: 7, scope: !725)
!783 = !DILocalVariable(name: "pt1", scope: !784, file: !2, line: 297, type: !34)
!784 = distinct !DILexicalBlock(scope: !774, file: !2, line: 296, column: 5)
!785 = !DILocation(line: 297, column: 13, scope: !784)
!786 = !DILocalVariable(name: "pt2", scope: !784, file: !2, line: 297, type: !34)
!787 = !DILocation(line: 297, column: 19, scope: !784)
!788 = !DILocation(line: 298, column: 19, scope: !789)
!789 = distinct !DILexicalBlock(scope: !784, file: !2, line: 298, column: 7)
!790 = !DILocation(line: 298, column: 18, scope: !789)
!791 = !DILocation(line: 298, column: 26, scope: !789)
!792 = !DILocation(line: 298, column: 29, scope: !789)
!793 = !DILocation(line: 298, column: 24, scope: !789)
!794 = !DILocation(line: 298, column: 16, scope: !789)
!795 = !DILocation(line: 298, column: 41, scope: !789)
!796 = !DILocation(line: 298, column: 47, scope: !789)
!797 = !DILocation(line: 298, column: 45, scope: !789)
!798 = !DILocation(line: 298, column: 39, scope: !789)
!799 = !DILocation(line: 298, column: 12, scope: !789)
!800 = !DILocation(line: 299, column: 5, scope: !801)
!801 = distinct !DILexicalBlock(scope: !789, file: !2, line: 298, column: 7)
!802 = !DILocation(line: 299, column: 13, scope: !801)
!803 = !DILocation(line: 299, column: 12, scope: !801)
!804 = !DILocation(line: 299, column: 9, scope: !801)
!805 = !DILocation(line: 298, column: 7, scope: !789)
!806 = !DILocation(line: 300, column: 10, scope: !801)
!807 = !DILocation(line: 300, column: 9, scope: !801)
!808 = !DILocation(line: 300, column: 3, scope: !801)
!809 = !DILocation(line: 300, column: 7, scope: !801)
!810 = !DILocation(line: 300, column: 2, scope: !801)
!811 = !DILocation(line: 299, column: 19, scope: !801)
!812 = !DILocation(line: 299, column: 26, scope: !801)
!813 = !DILocation(line: 298, column: 7, scope: !801)
!814 = distinct !{!814, !805, !815}
!815 = !DILocation(line: 300, column: 10, scope: !789)
!816 = !DILocation(line: 301, column: 15, scope: !784)
!817 = !DILocation(line: 301, column: 14, scope: !784)
!818 = !DILocation(line: 301, column: 21, scope: !784)
!819 = !DILocation(line: 301, column: 26, scope: !784)
!820 = !DILocation(line: 301, column: 7, scope: !784)
!821 = !DILocation(line: 302, column: 18, scope: !784)
!822 = !DILocation(line: 302, column: 7, scope: !784)
!823 = !DILocation(line: 302, column: 10, scope: !784)
!824 = !DILocation(line: 302, column: 15, scope: !784)
!825 = !DILocation(line: 303, column: 7, scope: !784)
!826 = !DILocation(line: 305, column: 11, scope: !725)
!827 = !DILocation(line: 305, column: 14, scope: !725)
!828 = !DILocation(line: 305, column: 21, scope: !725)
!829 = !DILocation(line: 305, column: 19, scope: !725)
!830 = !DILocation(line: 305, column: 9, scope: !725)
!831 = !DILocation(line: 306, column: 11, scope: !725)
!832 = !DILocation(line: 306, column: 17, scope: !725)
!833 = !DILocation(line: 306, column: 10, scope: !725)
!834 = !DILocation(line: 307, column: 6, scope: !725)
!835 = !DILocation(line: 307, column: 12, scope: !725)
!836 = !DILocation(line: 307, column: 5, scope: !725)
!837 = !DILocation(line: 306, column: 8, scope: !725)
!838 = !DILocation(line: 308, column: 16, scope: !725)
!839 = !DILocation(line: 308, column: 22, scope: !725)
!840 = !DILocation(line: 308, column: 29, scope: !725)
!841 = !DILocation(line: 308, column: 27, scope: !725)
!842 = !DILocation(line: 308, column: 35, scope: !725)
!843 = !DILocation(line: 308, column: 42, scope: !725)
!844 = !DILocation(line: 308, column: 40, scope: !725)
!845 = !DILocation(line: 308, column: 11, scope: !725)
!846 = !DILocation(line: 309, column: 21, scope: !847)
!847 = distinct !DILexicalBlock(scope: !725, file: !2, line: 309, column: 7)
!848 = !DILocation(line: 309, column: 12, scope: !847)
!849 = !DILocation(line: 309, column: 7, scope: !725)
!850 = !DILocation(line: 310, column: 5, scope: !847)
!851 = !DILocation(line: 311, column: 22, scope: !725)
!852 = !DILocation(line: 311, column: 6, scope: !725)
!853 = !DILocation(line: 312, column: 6, scope: !725)
!854 = !DILocation(line: 313, column: 15, scope: !725)
!855 = !DILocation(line: 313, column: 3, scope: !725)
!856 = !DILocation(line: 313, column: 7, scope: !725)
!857 = !DILocation(line: 313, column: 13, scope: !725)
!858 = !DILocation(line: 314, column: 14, scope: !725)
!859 = !DILocation(line: 314, column: 3, scope: !725)
!860 = !DILocation(line: 314, column: 7, scope: !725)
!861 = !DILocation(line: 314, column: 12, scope: !725)
!862 = !DILocation(line: 315, column: 10, scope: !725)
!863 = !DILocation(line: 315, column: 14, scope: !725)
!864 = !DILocation(line: 315, column: 19, scope: !725)
!865 = !DILocation(line: 315, column: 3, scope: !725)
!866 = !DILocation(line: 316, column: 10, scope: !725)
!867 = !DILocation(line: 316, column: 15, scope: !725)
!868 = !DILocation(line: 316, column: 13, scope: !725)
!869 = !DILocation(line: 316, column: 19, scope: !725)
!870 = !DILocation(line: 316, column: 18, scope: !725)
!871 = !DILocation(line: 316, column: 25, scope: !725)
!872 = !DILocation(line: 316, column: 28, scope: !725)
!873 = !DILocation(line: 316, column: 33, scope: !725)
!874 = !DILocation(line: 316, column: 3, scope: !725)
!875 = !DILocation(line: 317, column: 3, scope: !725)
!876 = !DILocation(line: 318, column: 11, scope: !725)
!877 = !DILocation(line: 318, column: 4, scope: !725)
!878 = !DILocation(line: 318, column: 9, scope: !725)
!879 = !DILocation(line: 319, column: 3, scope: !725)
!880 = !DILocation(line: 320, column: 1, scope: !725)
!881 = distinct !DISubprogram(name: "ys_dup", scope: !2, file: !2, line: 326, type: !882, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!882 = !DISubroutineType(types: !883)
!883 = !{!43, !312}
!884 = !DILocalVariable(name: "s", arg: 1, scope: !881, file: !2, line: 326, type: !312)
!885 = !DILocation(line: 326, column: 28, scope: !881)
!886 = !DILocalVariable(name: "y", scope: !881, file: !2, line: 328, type: !35)
!887 = !DILocation(line: 328, column: 16, scope: !881)
!888 = !DILocalVariable(name: "ny", scope: !881, file: !2, line: 328, type: !35)
!889 = !DILocation(line: 328, column: 20, scope: !881)
!890 = !DILocalVariable(name: "ns", scope: !881, file: !2, line: 329, type: !34)
!891 = !DILocation(line: 329, column: 9, scope: !881)
!892 = !DILocation(line: 331, column: 8, scope: !893)
!893 = distinct !DILexicalBlock(scope: !881, file: !2, line: 331, column: 7)
!894 = !DILocation(line: 331, column: 7, scope: !881)
!895 = !DILocation(line: 332, column: 13, scope: !893)
!896 = !DILocation(line: 332, column: 5, scope: !893)
!897 = !DILocation(line: 333, column: 22, scope: !881)
!898 = !DILocation(line: 333, column: 24, scope: !881)
!899 = !DILocation(line: 333, column: 5, scope: !881)
!900 = !DILocation(line: 334, column: 21, scope: !901)
!901 = distinct !DILexicalBlock(scope: !881, file: !2, line: 334, column: 7)
!902 = !DILocation(line: 334, column: 12, scope: !901)
!903 = !DILocation(line: 334, column: 7, scope: !881)
!904 = !DILocation(line: 335, column: 13, scope: !901)
!905 = !DILocation(line: 335, column: 5, scope: !901)
!906 = !DILocation(line: 336, column: 22, scope: !881)
!907 = !DILocation(line: 336, column: 6, scope: !881)
!908 = !DILocation(line: 337, column: 6, scope: !881)
!909 = !DILocation(line: 338, column: 15, scope: !881)
!910 = !DILocation(line: 338, column: 18, scope: !881)
!911 = !DILocation(line: 338, column: 3, scope: !881)
!912 = !DILocation(line: 338, column: 7, scope: !881)
!913 = !DILocation(line: 338, column: 13, scope: !881)
!914 = !DILocation(line: 339, column: 14, scope: !881)
!915 = !DILocation(line: 339, column: 17, scope: !881)
!916 = !DILocation(line: 339, column: 3, scope: !881)
!917 = !DILocation(line: 339, column: 7, scope: !881)
!918 = !DILocation(line: 339, column: 12, scope: !881)
!919 = !DILocation(line: 340, column: 10, scope: !881)
!920 = !DILocation(line: 340, column: 14, scope: !881)
!921 = !DILocation(line: 340, column: 17, scope: !881)
!922 = !DILocation(line: 340, column: 20, scope: !881)
!923 = !DILocation(line: 340, column: 3, scope: !881)
!924 = !DILocation(line: 341, column: 3, scope: !881)
!925 = !DILocation(line: 341, column: 6, scope: !881)
!926 = !DILocation(line: 341, column: 9, scope: !881)
!927 = !DILocation(line: 341, column: 15, scope: !881)
!928 = !DILocation(line: 342, column: 19, scope: !881)
!929 = !DILocation(line: 342, column: 3, scope: !881)
!930 = !DILocation(line: 343, column: 1, scope: !881)
!931 = distinct !DISubprogram(name: "ys_string", scope: !2, file: !2, line: 350, type: !932, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!932 = !DISubroutineType(types: !933)
!933 = !{!34, !312}
!934 = !DILocalVariable(name: "s", arg: 1, scope: !931, file: !2, line: 350, type: !312)
!935 = !DILocation(line: 350, column: 30, scope: !931)
!936 = !DILocalVariable(name: "y", scope: !931, file: !2, line: 352, type: !35)
!937 = !DILocation(line: 352, column: 16, scope: !931)
!938 = !DILocalVariable(name: "res", scope: !931, file: !2, line: 353, type: !34)
!939 = !DILocation(line: 353, column: 9, scope: !931)
!940 = !DILocation(line: 355, column: 8, scope: !941)
!941 = distinct !DILexicalBlock(scope: !931, file: !2, line: 355, column: 7)
!942 = !DILocation(line: 355, column: 7, scope: !931)
!943 = !DILocation(line: 356, column: 5, scope: !941)
!944 = !DILocation(line: 357, column: 22, scope: !931)
!945 = !DILocation(line: 357, column: 24, scope: !931)
!946 = !DILocation(line: 357, column: 5, scope: !931)
!947 = !DILocation(line: 358, column: 22, scope: !948)
!948 = distinct !DILexicalBlock(scope: !931, file: !2, line: 358, column: 7)
!949 = !DILocation(line: 358, column: 13, scope: !948)
!950 = !DILocation(line: 358, column: 7, scope: !931)
!951 = !DILocation(line: 359, column: 5, scope: !948)
!952 = !DILocation(line: 360, column: 18, scope: !931)
!953 = !DILocation(line: 360, column: 23, scope: !931)
!954 = !DILocation(line: 360, column: 26, scope: !931)
!955 = !DILocation(line: 360, column: 29, scope: !931)
!956 = !DILocation(line: 360, column: 34, scope: !931)
!957 = !DILocation(line: 360, column: 11, scope: !931)
!958 = !DILocation(line: 360, column: 3, scope: !931)
!959 = !DILocation(line: 361, column: 1, scope: !931)
!960 = distinct !DISubprogram(name: "ys_concat", scope: !2, file: !2, line: 367, type: !961, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!961 = !DISubroutineType(types: !962)
!962 = !{!43, !56, !56}
!963 = !DILocalVariable(name: "s1", arg: 1, scope: !960, file: !2, line: 367, type: !56)
!964 = !DILocation(line: 367, column: 30, scope: !960)
!965 = !DILocalVariable(name: "s2", arg: 2, scope: !960, file: !2, line: 367, type: !56)
!966 = !DILocation(line: 367, column: 46, scope: !960)
!967 = !DILocalVariable(name: "ns", scope: !960, file: !2, line: 369, type: !34)
!968 = !DILocation(line: 369, column: 9, scope: !960)
!969 = !DILocation(line: 371, column: 15, scope: !960)
!970 = !DILocation(line: 371, column: 8, scope: !960)
!971 = !DILocation(line: 371, column: 6, scope: !960)
!972 = !DILocation(line: 372, column: 15, scope: !960)
!973 = !DILocation(line: 372, column: 3, scope: !960)
!974 = !DILocation(line: 373, column: 19, scope: !960)
!975 = !DILocation(line: 373, column: 3, scope: !960)
!976 = distinct !DISubprogram(name: "ys_ltrim", scope: !2, file: !2, line: 380, type: !199, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!977 = !DILocalVariable(name: "s", arg: 1, scope: !976, file: !2, line: 380, type: !43)
!978 = !DILocation(line: 380, column: 22, scope: !976)
!979 = !DILocalVariable(name: "y", scope: !976, file: !2, line: 382, type: !35)
!980 = !DILocation(line: 382, column: 16, scope: !976)
!981 = !DILocalVariable(name: "pt", scope: !976, file: !2, line: 383, type: !34)
!982 = !DILocation(line: 383, column: 9, scope: !976)
!983 = !DILocation(line: 385, column: 22, scope: !976)
!984 = !DILocation(line: 385, column: 24, scope: !976)
!985 = !DILocation(line: 385, column: 5, scope: !976)
!986 = !DILocation(line: 386, column: 13, scope: !987)
!987 = distinct !DILexicalBlock(scope: !976, file: !2, line: 386, column: 3)
!988 = !DILocation(line: 386, column: 11, scope: !987)
!989 = !DILocation(line: 386, column: 8, scope: !987)
!990 = !DILocation(line: 387, column: 9, scope: !991)
!991 = distinct !DILexicalBlock(scope: !987, file: !2, line: 386, column: 3)
!992 = !DILocation(line: 387, column: 8, scope: !991)
!993 = !DILocation(line: 387, column: 12, scope: !991)
!994 = !DILocation(line: 387, column: 19, scope: !991)
!995 = !DILocation(line: 387, column: 23, scope: !991)
!996 = !DILocation(line: 387, column: 22, scope: !991)
!997 = !DILocation(line: 387, column: 26, scope: !991)
!998 = !DILocation(line: 387, column: 34, scope: !991)
!999 = !DILocation(line: 387, column: 38, scope: !991)
!1000 = !DILocation(line: 387, column: 37, scope: !991)
!1001 = !DILocation(line: 387, column: 41, scope: !991)
!1002 = !DILocation(line: 387, column: 49, scope: !991)
!1003 = !DILocation(line: 387, column: 53, scope: !991)
!1004 = !DILocation(line: 387, column: 52, scope: !991)
!1005 = !DILocation(line: 387, column: 56, scope: !991)
!1006 = !DILocation(line: 386, column: 3, scope: !987)
!1007 = !DILocation(line: 388, column: 8, scope: !991)
!1008 = !DILocation(line: 388, column: 14, scope: !991)
!1009 = !DILocation(line: 388, column: 17, scope: !991)
!1010 = !DILocation(line: 388, column: 21, scope: !991)
!1011 = !DILocation(line: 386, column: 3, scope: !991)
!1012 = distinct !{!1012, !1006, !1013}
!1013 = !DILocation(line: 389, column: 5, scope: !987)
!1014 = !DILocation(line: 390, column: 7, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !976, file: !2, line: 390, column: 7)
!1016 = !DILocation(line: 390, column: 13, scope: !1015)
!1017 = !DILocation(line: 390, column: 10, scope: !1015)
!1018 = !DILocation(line: 390, column: 7, scope: !976)
!1019 = !DILocation(line: 391, column: 5, scope: !1015)
!1020 = !DILocation(line: 392, column: 3, scope: !976)
!1021 = !DILocation(line: 392, column: 11, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 392, column: 3)
!1023 = distinct !DILexicalBlock(scope: !976, file: !2, line: 392, column: 3)
!1024 = !DILocation(line: 392, column: 10, scope: !1022)
!1025 = !DILocation(line: 392, column: 3, scope: !1023)
!1026 = !DILocation(line: 393, column: 11, scope: !1022)
!1027 = !DILocation(line: 393, column: 10, scope: !1022)
!1028 = !DILocation(line: 393, column: 6, scope: !1022)
!1029 = !DILocation(line: 393, column: 8, scope: !1022)
!1030 = !DILocation(line: 393, column: 5, scope: !1022)
!1031 = !DILocation(line: 392, column: 15, scope: !1022)
!1032 = !DILocation(line: 392, column: 21, scope: !1022)
!1033 = !DILocation(line: 392, column: 3, scope: !1022)
!1034 = distinct !{!1034, !1025, !1035}
!1035 = !DILocation(line: 393, column: 11, scope: !1023)
!1036 = !DILocation(line: 394, column: 4, scope: !976)
!1037 = !DILocation(line: 394, column: 6, scope: !976)
!1038 = !DILocation(line: 395, column: 1, scope: !976)
!1039 = distinct !DISubprogram(name: "ys_rtrim", scope: !2, file: !2, line: 401, type: !199, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!1040 = !DILocalVariable(name: "s", arg: 1, scope: !1039, file: !2, line: 401, type: !43)
!1041 = !DILocation(line: 401, column: 22, scope: !1039)
!1042 = !DILocalVariable(name: "y", scope: !1039, file: !2, line: 403, type: !35)
!1043 = !DILocation(line: 403, column: 16, scope: !1039)
!1044 = !DILocalVariable(name: "pt", scope: !1039, file: !2, line: 404, type: !34)
!1045 = !DILocation(line: 404, column: 9, scope: !1039)
!1046 = !DILocalVariable(name: "initsz", scope: !1039, file: !2, line: 405, type: !41)
!1047 = !DILocation(line: 405, column: 16, scope: !1039)
!1048 = !DILocation(line: 407, column: 22, scope: !1039)
!1049 = !DILocation(line: 407, column: 24, scope: !1039)
!1050 = !DILocation(line: 407, column: 5, scope: !1039)
!1051 = !DILocation(line: 408, column: 12, scope: !1039)
!1052 = !DILocation(line: 408, column: 15, scope: !1039)
!1053 = !DILocation(line: 408, column: 10, scope: !1039)
!1054 = !DILocation(line: 409, column: 13, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 409, column: 3)
!1056 = !DILocation(line: 409, column: 17, scope: !1055)
!1057 = !DILocation(line: 409, column: 20, scope: !1055)
!1058 = !DILocation(line: 409, column: 15, scope: !1055)
!1059 = !DILocation(line: 409, column: 25, scope: !1055)
!1060 = !DILocation(line: 409, column: 11, scope: !1055)
!1061 = !DILocation(line: 409, column: 8, scope: !1055)
!1062 = !DILocation(line: 410, column: 9, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 409, column: 3)
!1064 = !DILocation(line: 410, column: 8, scope: !1063)
!1065 = !DILocation(line: 410, column: 12, scope: !1063)
!1066 = !DILocation(line: 410, column: 19, scope: !1063)
!1067 = !DILocation(line: 410, column: 23, scope: !1063)
!1068 = !DILocation(line: 410, column: 22, scope: !1063)
!1069 = !DILocation(line: 410, column: 26, scope: !1063)
!1070 = !DILocation(line: 410, column: 34, scope: !1063)
!1071 = !DILocation(line: 410, column: 38, scope: !1063)
!1072 = !DILocation(line: 410, column: 37, scope: !1063)
!1073 = !DILocation(line: 410, column: 41, scope: !1063)
!1074 = !DILocation(line: 410, column: 49, scope: !1063)
!1075 = !DILocation(line: 410, column: 53, scope: !1063)
!1076 = !DILocation(line: 410, column: 52, scope: !1063)
!1077 = !DILocation(line: 410, column: 56, scope: !1063)
!1078 = !DILocation(line: 409, column: 3, scope: !1055)
!1079 = !DILocation(line: 413, column: 11, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 413, column: 11)
!1081 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 412, column: 5)
!1082 = !DILocation(line: 413, column: 17, scope: !1080)
!1083 = !DILocation(line: 413, column: 14, scope: !1080)
!1084 = !DILocation(line: 413, column: 11, scope: !1081)
!1085 = !DILocation(line: 415, column: 5, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 414, column: 2)
!1087 = !DILocation(line: 415, column: 8, scope: !1086)
!1088 = !DILocation(line: 416, column: 4, scope: !1086)
!1089 = !DILocation(line: 416, column: 7, scope: !1086)
!1090 = !DILocation(line: 416, column: 12, scope: !1086)
!1091 = !DILocation(line: 417, column: 4, scope: !1086)
!1092 = !DILocation(line: 419, column: 7, scope: !1081)
!1093 = !DILocation(line: 419, column: 10, scope: !1081)
!1094 = !DILocation(line: 419, column: 14, scope: !1081)
!1095 = !DILocation(line: 420, column: 5, scope: !1081)
!1096 = !DILocation(line: 411, column: 8, scope: !1063)
!1097 = !DILocation(line: 409, column: 3, scope: !1063)
!1098 = distinct !{!1098, !1078, !1099}
!1099 = !DILocation(line: 420, column: 5, scope: !1055)
!1100 = !DILocation(line: 421, column: 7, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 421, column: 7)
!1102 = !DILocation(line: 421, column: 17, scope: !1101)
!1103 = !DILocation(line: 421, column: 20, scope: !1101)
!1104 = !DILocation(line: 421, column: 14, scope: !1101)
!1105 = !DILocation(line: 421, column: 7, scope: !1039)
!1106 = !DILocation(line: 422, column: 7, scope: !1101)
!1107 = !DILocation(line: 422, column: 10, scope: !1101)
!1108 = !DILocation(line: 422, column: 15, scope: !1101)
!1109 = !DILocation(line: 422, column: 5, scope: !1101)
!1110 = !DILocation(line: 423, column: 1, scope: !1039)
!1111 = distinct !DISubprogram(name: "ys_trim", scope: !2, file: !2, line: 429, type: !199, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!1112 = !DILocalVariable(name: "s", arg: 1, scope: !1111, file: !2, line: 429, type: !43)
!1113 = !DILocation(line: 429, column: 21, scope: !1111)
!1114 = !DILocation(line: 431, column: 12, scope: !1111)
!1115 = !DILocation(line: 431, column: 3, scope: !1111)
!1116 = !DILocation(line: 432, column: 12, scope: !1111)
!1117 = !DILocation(line: 432, column: 3, scope: !1111)
!1118 = !DILocation(line: 433, column: 1, scope: !1111)
!1119 = distinct !DISubprogram(name: "ys_lshift", scope: !2, file: !2, line: 439, type: !1120, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!4, !43}
!1122 = !DILocalVariable(name: "s", arg: 1, scope: !1119, file: !2, line: 439, type: !43)
!1123 = !DILocation(line: 439, column: 23, scope: !1119)
!1124 = !DILocalVariable(name: "c", scope: !1119, file: !2, line: 441, type: !4)
!1125 = !DILocation(line: 441, column: 8, scope: !1119)
!1126 = !DILocation(line: 443, column: 8, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 443, column: 7)
!1128 = !DILocation(line: 443, column: 10, scope: !1127)
!1129 = !DILocation(line: 443, column: 15, scope: !1127)
!1130 = !DILocation(line: 443, column: 14, scope: !1127)
!1131 = !DILocation(line: 443, column: 7, scope: !1119)
!1132 = !DILocation(line: 444, column: 5, scope: !1127)
!1133 = !DILocation(line: 445, column: 8, scope: !1119)
!1134 = !DILocation(line: 445, column: 7, scope: !1119)
!1135 = !DILocation(line: 445, column: 5, scope: !1119)
!1136 = !DILocation(line: 446, column: 4, scope: !1119)
!1137 = !DILocation(line: 446, column: 6, scope: !1119)
!1138 = !DILocation(line: 447, column: 12, scope: !1119)
!1139 = !DILocation(line: 447, column: 3, scope: !1119)
!1140 = !DILocation(line: 448, column: 11, scope: !1119)
!1141 = !DILocation(line: 448, column: 3, scope: !1119)
!1142 = !DILocation(line: 449, column: 1, scope: !1119)
!1143 = distinct !DISubprogram(name: "ys_rshift", scope: !2, file: !2, line: 455, type: !1120, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!1144 = !DILocalVariable(name: "s", arg: 1, scope: !1143, file: !2, line: 455, type: !43)
!1145 = !DILocation(line: 455, column: 23, scope: !1143)
!1146 = !DILocalVariable(name: "y", scope: !1143, file: !2, line: 457, type: !35)
!1147 = !DILocation(line: 457, column: 16, scope: !1143)
!1148 = !DILocalVariable(name: "c", scope: !1143, file: !2, line: 458, type: !4)
!1149 = !DILocation(line: 458, column: 8, scope: !1143)
!1150 = !DILocation(line: 460, column: 8, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 460, column: 7)
!1152 = !DILocation(line: 460, column: 10, scope: !1151)
!1153 = !DILocation(line: 460, column: 15, scope: !1151)
!1154 = !DILocation(line: 460, column: 14, scope: !1151)
!1155 = !DILocation(line: 460, column: 7, scope: !1143)
!1156 = !DILocation(line: 461, column: 5, scope: !1151)
!1157 = !DILocation(line: 462, column: 22, scope: !1143)
!1158 = !DILocation(line: 462, column: 24, scope: !1143)
!1159 = !DILocation(line: 462, column: 5, scope: !1143)
!1160 = !DILocation(line: 463, column: 9, scope: !1143)
!1161 = !DILocation(line: 463, column: 13, scope: !1143)
!1162 = !DILocation(line: 463, column: 16, scope: !1143)
!1163 = !DILocation(line: 463, column: 11, scope: !1143)
!1164 = !DILocation(line: 463, column: 21, scope: !1143)
!1165 = !DILocation(line: 463, column: 7, scope: !1143)
!1166 = !DILocation(line: 463, column: 5, scope: !1143)
!1167 = !DILocation(line: 464, column: 5, scope: !1143)
!1168 = !DILocation(line: 464, column: 9, scope: !1143)
!1169 = !DILocation(line: 464, column: 12, scope: !1143)
!1170 = !DILocation(line: 464, column: 7, scope: !1143)
!1171 = !DILocation(line: 464, column: 17, scope: !1143)
!1172 = !DILocation(line: 464, column: 22, scope: !1143)
!1173 = !DILocation(line: 465, column: 3, scope: !1143)
!1174 = !DILocation(line: 465, column: 6, scope: !1143)
!1175 = !DILocation(line: 465, column: 10, scope: !1143)
!1176 = !DILocation(line: 466, column: 11, scope: !1143)
!1177 = !DILocation(line: 466, column: 3, scope: !1143)
!1178 = !DILocation(line: 467, column: 1, scope: !1143)
!1179 = distinct !DISubprogram(name: "ys_putc", scope: !2, file: !2, line: 473, type: !1180, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!235, !178, !4}
!1182 = !DILocalVariable(name: "s", arg: 1, scope: !1179, file: !2, line: 473, type: !178)
!1183 = !DILocation(line: 473, column: 21, scope: !1179)
!1184 = !DILocalVariable(name: "c", arg: 2, scope: !1179, file: !2, line: 473, type: !4)
!1185 = !DILocation(line: 473, column: 29, scope: !1179)
!1186 = !DILocalVariable(name: "y", scope: !1179, file: !2, line: 475, type: !35)
!1187 = !DILocation(line: 475, column: 16, scope: !1179)
!1188 = !DILocalVariable(name: "ny", scope: !1179, file: !2, line: 475, type: !35)
!1189 = !DILocation(line: 475, column: 20, scope: !1179)
!1190 = !DILocalVariable(name: "pt1", scope: !1179, file: !2, line: 476, type: !34)
!1191 = !DILocation(line: 476, column: 9, scope: !1179)
!1192 = !DILocalVariable(name: "pt2", scope: !1179, file: !2, line: 476, type: !34)
!1193 = !DILocation(line: 476, column: 15, scope: !1179)
!1194 = !DILocalVariable(name: "ns", scope: !1179, file: !2, line: 476, type: !34)
!1195 = !DILocation(line: 476, column: 21, scope: !1179)
!1196 = !DILocalVariable(name: "totalsz", scope: !1179, file: !2, line: 477, type: !41)
!1197 = !DILocation(line: 477, column: 16, scope: !1179)
!1198 = !DILocalVariable(name: "leap", scope: !1179, file: !2, line: 477, type: !41)
!1199 = !DILocation(line: 477, column: 25, scope: !1179)
!1200 = !DILocation(line: 479, column: 7, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 479, column: 7)
!1202 = !DILocation(line: 479, column: 9, scope: !1201)
!1203 = !DILocation(line: 479, column: 7, scope: !1179)
!1204 = !DILocation(line: 480, column: 5, scope: !1201)
!1205 = !DILocation(line: 481, column: 9, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 481, column: 7)
!1207 = !DILocation(line: 481, column: 8, scope: !1206)
!1208 = !DILocation(line: 481, column: 7, scope: !1179)
!1209 = !DILocalVariable(name: "tc", scope: !1210, file: !2, line: 483, type: !1211)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 482, column: 5)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !1212)
!1212 = !{!1213}
!1213 = !DISubrange(count: 2)
!1214 = !DILocation(line: 483, column: 12, scope: !1210)
!1215 = !DILocation(line: 484, column: 15, scope: !1210)
!1216 = !DILocation(line: 484, column: 7, scope: !1210)
!1217 = !DILocation(line: 484, column: 13, scope: !1210)
!1218 = !DILocation(line: 485, column: 19, scope: !1210)
!1219 = !DILocation(line: 485, column: 12, scope: !1210)
!1220 = !DILocation(line: 485, column: 8, scope: !1210)
!1221 = !DILocation(line: 485, column: 10, scope: !1210)
!1222 = !DILocation(line: 486, column: 7, scope: !1210)
!1223 = !DILocation(line: 488, column: 23, scope: !1179)
!1224 = !DILocation(line: 488, column: 22, scope: !1179)
!1225 = !DILocation(line: 488, column: 25, scope: !1179)
!1226 = !DILocation(line: 488, column: 5, scope: !1179)
!1227 = !DILocation(line: 489, column: 7, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 489, column: 7)
!1229 = !DILocation(line: 489, column: 10, scope: !1228)
!1230 = !DILocation(line: 489, column: 20, scope: !1228)
!1231 = !DILocation(line: 489, column: 23, scope: !1228)
!1232 = !DILocation(line: 489, column: 28, scope: !1228)
!1233 = !DILocation(line: 489, column: 16, scope: !1228)
!1234 = !DILocation(line: 489, column: 7, scope: !1179)
!1235 = !DILocation(line: 491, column: 19, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 491, column: 7)
!1237 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 490, column: 5)
!1238 = !DILocation(line: 491, column: 18, scope: !1236)
!1239 = !DILocation(line: 491, column: 23, scope: !1236)
!1240 = !DILocation(line: 491, column: 26, scope: !1236)
!1241 = !DILocation(line: 491, column: 21, scope: !1236)
!1242 = !DILocation(line: 491, column: 16, scope: !1236)
!1243 = !DILocation(line: 491, column: 38, scope: !1236)
!1244 = !DILocation(line: 491, column: 42, scope: !1236)
!1245 = !DILocation(line: 491, column: 36, scope: !1236)
!1246 = !DILocation(line: 491, column: 12, scope: !1236)
!1247 = !DILocation(line: 491, column: 47, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1236, file: !2, line: 491, column: 7)
!1249 = !DILocation(line: 491, column: 55, scope: !1248)
!1250 = !DILocation(line: 491, column: 54, scope: !1248)
!1251 = !DILocation(line: 491, column: 51, scope: !1248)
!1252 = !DILocation(line: 491, column: 7, scope: !1236)
!1253 = !DILocation(line: 492, column: 10, scope: !1248)
!1254 = !DILocation(line: 492, column: 9, scope: !1248)
!1255 = !DILocation(line: 492, column: 3, scope: !1248)
!1256 = !DILocation(line: 492, column: 7, scope: !1248)
!1257 = !DILocation(line: 492, column: 2, scope: !1248)
!1258 = !DILocation(line: 491, column: 58, scope: !1248)
!1259 = !DILocation(line: 491, column: 65, scope: !1248)
!1260 = !DILocation(line: 491, column: 7, scope: !1248)
!1261 = distinct !{!1261, !1252, !1262}
!1262 = !DILocation(line: 492, column: 10, scope: !1236)
!1263 = !DILocation(line: 493, column: 13, scope: !1237)
!1264 = !DILocation(line: 493, column: 9, scope: !1237)
!1265 = !DILocation(line: 493, column: 8, scope: !1237)
!1266 = !DILocation(line: 493, column: 11, scope: !1237)
!1267 = !DILocation(line: 494, column: 7, scope: !1237)
!1268 = !DILocation(line: 494, column: 10, scope: !1237)
!1269 = !DILocation(line: 494, column: 14, scope: !1237)
!1270 = !DILocation(line: 495, column: 7, scope: !1237)
!1271 = !DILocation(line: 497, column: 11, scope: !1179)
!1272 = !DILocation(line: 497, column: 14, scope: !1179)
!1273 = !DILocation(line: 497, column: 19, scope: !1179)
!1274 = !DILocation(line: 497, column: 10, scope: !1179)
!1275 = !DILocation(line: 498, column: 6, scope: !1179)
!1276 = !DILocation(line: 498, column: 9, scope: !1179)
!1277 = !DILocation(line: 498, column: 14, scope: !1179)
!1278 = !DILocation(line: 498, column: 5, scope: !1179)
!1279 = !DILocation(line: 497, column: 8, scope: !1179)
!1280 = !DILocation(line: 499, column: 16, scope: !1179)
!1281 = !DILocation(line: 499, column: 19, scope: !1179)
!1282 = !DILocation(line: 499, column: 24, scope: !1179)
!1283 = !DILocation(line: 499, column: 31, scope: !1179)
!1284 = !DILocation(line: 499, column: 29, scope: !1179)
!1285 = !DILocation(line: 499, column: 37, scope: !1179)
!1286 = !DILocation(line: 499, column: 44, scope: !1179)
!1287 = !DILocation(line: 499, column: 42, scope: !1179)
!1288 = !DILocation(line: 499, column: 11, scope: !1179)
!1289 = !DILocation(line: 500, column: 21, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 500, column: 7)
!1291 = !DILocation(line: 500, column: 12, scope: !1290)
!1292 = !DILocation(line: 500, column: 7, scope: !1179)
!1293 = !DILocation(line: 501, column: 5, scope: !1290)
!1294 = !DILocation(line: 502, column: 22, scope: !1179)
!1295 = !DILocation(line: 502, column: 6, scope: !1179)
!1296 = !DILocation(line: 503, column: 6, scope: !1179)
!1297 = !DILocation(line: 504, column: 15, scope: !1179)
!1298 = !DILocation(line: 504, column: 3, scope: !1179)
!1299 = !DILocation(line: 504, column: 7, scope: !1179)
!1300 = !DILocation(line: 504, column: 13, scope: !1179)
!1301 = !DILocation(line: 505, column: 14, scope: !1179)
!1302 = !DILocation(line: 505, column: 17, scope: !1179)
!1303 = !DILocation(line: 505, column: 22, scope: !1179)
!1304 = !DILocation(line: 505, column: 3, scope: !1179)
!1305 = !DILocation(line: 505, column: 7, scope: !1179)
!1306 = !DILocation(line: 505, column: 12, scope: !1179)
!1307 = !DILocation(line: 506, column: 9, scope: !1179)
!1308 = !DILocation(line: 506, column: 4, scope: !1179)
!1309 = !DILocation(line: 506, column: 7, scope: !1179)
!1310 = !DILocation(line: 507, column: 10, scope: !1179)
!1311 = !DILocation(line: 507, column: 13, scope: !1179)
!1312 = !DILocation(line: 507, column: 19, scope: !1179)
!1313 = !DILocation(line: 507, column: 18, scope: !1179)
!1314 = !DILocation(line: 507, column: 22, scope: !1179)
!1315 = !DILocation(line: 507, column: 25, scope: !1179)
!1316 = !DILocation(line: 507, column: 30, scope: !1179)
!1317 = !DILocation(line: 507, column: 3, scope: !1179)
!1318 = !DILocation(line: 508, column: 3, scope: !1179)
!1319 = !DILocation(line: 509, column: 8, scope: !1179)
!1320 = !DILocation(line: 509, column: 4, scope: !1179)
!1321 = !DILocation(line: 509, column: 6, scope: !1179)
!1322 = !DILocation(line: 510, column: 3, scope: !1179)
!1323 = !DILocation(line: 511, column: 1, scope: !1179)
!1324 = distinct !DISubprogram(name: "ys_addc", scope: !2, file: !2, line: 517, type: !1180, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!1325 = !DILocalVariable(name: "s", arg: 1, scope: !1324, file: !2, line: 517, type: !178)
!1326 = !DILocation(line: 517, column: 21, scope: !1324)
!1327 = !DILocalVariable(name: "c", arg: 2, scope: !1324, file: !2, line: 517, type: !4)
!1328 = !DILocation(line: 517, column: 29, scope: !1324)
!1329 = !DILocalVariable(name: "tc", scope: !1324, file: !2, line: 519, type: !1211)
!1330 = !DILocation(line: 519, column: 8, scope: !1324)
!1331 = !DILocation(line: 521, column: 11, scope: !1324)
!1332 = !DILocation(line: 521, column: 3, scope: !1324)
!1333 = !DILocation(line: 521, column: 9, scope: !1324)
!1334 = !DILocation(line: 522, column: 18, scope: !1324)
!1335 = !DILocation(line: 522, column: 21, scope: !1324)
!1336 = !DILocation(line: 522, column: 11, scope: !1324)
!1337 = !DILocation(line: 522, column: 3, scope: !1324)
!1338 = distinct !DISubprogram(name: "ys_upcase", scope: !2, file: !2, line: 529, type: !1339, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !34}
!1341 = !DILocalVariable(name: "s", arg: 1, scope: !1338, file: !2, line: 529, type: !34)
!1342 = !DILocation(line: 529, column: 22, scope: !1338)
!1343 = !DILocation(line: 531, column: 8, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 531, column: 7)
!1345 = !DILocation(line: 531, column: 7, scope: !1338)
!1346 = !DILocation(line: 532, column: 5, scope: !1344)
!1347 = !DILocation(line: 533, column: 3, scope: !1338)
!1348 = !DILocation(line: 533, column: 11, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 533, column: 3)
!1350 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 533, column: 3)
!1351 = !DILocation(line: 533, column: 10, scope: !1349)
!1352 = !DILocation(line: 533, column: 3, scope: !1350)
!1353 = !DILocation(line: 534, column: 10, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1349, file: !2, line: 534, column: 9)
!1355 = !DILocation(line: 534, column: 9, scope: !1354)
!1356 = !DILocation(line: 534, column: 12, scope: !1354)
!1357 = !DILocation(line: 534, column: 19, scope: !1354)
!1358 = !DILocation(line: 534, column: 23, scope: !1354)
!1359 = !DILocation(line: 534, column: 22, scope: !1354)
!1360 = !DILocation(line: 534, column: 25, scope: !1354)
!1361 = !DILocation(line: 534, column: 9, scope: !1349)
!1362 = !DILocation(line: 535, column: 20, scope: !1354)
!1363 = !DILocation(line: 535, column: 19, scope: !1354)
!1364 = !DILocation(line: 535, column: 22, scope: !1354)
!1365 = !DILocation(line: 535, column: 16, scope: !1354)
!1366 = !DILocation(line: 535, column: 12, scope: !1354)
!1367 = !DILocation(line: 535, column: 8, scope: !1354)
!1368 = !DILocation(line: 535, column: 10, scope: !1354)
!1369 = !DILocation(line: 535, column: 7, scope: !1354)
!1370 = !DILocation(line: 534, column: 28, scope: !1354)
!1371 = !DILocation(line: 533, column: 14, scope: !1349)
!1372 = !DILocation(line: 533, column: 3, scope: !1349)
!1373 = distinct !{!1373, !1352, !1374}
!1374 = !DILocation(line: 535, column: 27, scope: !1350)
!1375 = !DILocation(line: 536, column: 1, scope: !1338)
!1376 = distinct !DISubprogram(name: "ys_lowcase", scope: !2, file: !2, line: 542, type: !1339, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!1377 = !DILocalVariable(name: "s", arg: 1, scope: !1376, file: !2, line: 542, type: !34)
!1378 = !DILocation(line: 542, column: 23, scope: !1376)
!1379 = !DILocation(line: 544, column: 8, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 544, column: 7)
!1381 = !DILocation(line: 544, column: 7, scope: !1376)
!1382 = !DILocation(line: 545, column: 5, scope: !1380)
!1383 = !DILocation(line: 546, column: 3, scope: !1376)
!1384 = !DILocation(line: 546, column: 11, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !2, line: 546, column: 3)
!1386 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 546, column: 3)
!1387 = !DILocation(line: 546, column: 10, scope: !1385)
!1388 = !DILocation(line: 546, column: 3, scope: !1386)
!1389 = !DILocation(line: 547, column: 10, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 547, column: 9)
!1391 = !DILocation(line: 547, column: 9, scope: !1390)
!1392 = !DILocation(line: 547, column: 12, scope: !1390)
!1393 = !DILocation(line: 547, column: 19, scope: !1390)
!1394 = !DILocation(line: 547, column: 23, scope: !1390)
!1395 = !DILocation(line: 547, column: 22, scope: !1390)
!1396 = !DILocation(line: 547, column: 25, scope: !1390)
!1397 = !DILocation(line: 547, column: 9, scope: !1385)
!1398 = !DILocation(line: 548, column: 20, scope: !1390)
!1399 = !DILocation(line: 548, column: 19, scope: !1390)
!1400 = !DILocation(line: 548, column: 22, scope: !1390)
!1401 = !DILocation(line: 548, column: 16, scope: !1390)
!1402 = !DILocation(line: 548, column: 12, scope: !1390)
!1403 = !DILocation(line: 548, column: 8, scope: !1390)
!1404 = !DILocation(line: 548, column: 10, scope: !1390)
!1405 = !DILocation(line: 548, column: 7, scope: !1390)
!1406 = !DILocation(line: 547, column: 28, scope: !1390)
!1407 = !DILocation(line: 546, column: 14, scope: !1385)
!1408 = !DILocation(line: 546, column: 3, scope: !1385)
!1409 = distinct !{!1409, !1388, !1410}
!1410 = !DILocation(line: 548, column: 27, scope: !1386)
!1411 = !DILocation(line: 549, column: 1, scope: !1376)
!1412 = distinct !DISubprogram(name: "ys_printf", scope: !2, file: !2, line: 557, type: !1413, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!235, !178, !34, null}
!1415 = !DILocalVariable(name: "s", arg: 1, scope: !1412, file: !2, line: 557, type: !178)
!1416 = !DILocation(line: 557, column: 23, scope: !1412)
!1417 = !DILocalVariable(name: "format", arg: 2, scope: !1412, file: !2, line: 557, type: !34)
!1418 = !DILocation(line: 557, column: 32, scope: !1412)
!1419 = !DILocalVariable(name: "p_list", scope: !1412, file: !2, line: 559, type: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1421, line: 22, baseType: !1422)
!1421 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stdarg.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1423, baseType: !1424)
!1423 = !DIFile(filename: "ystr.c", directory: "/home/raj/FineDB/lib/ylib")
!1424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1425, size: 192, elements: !5)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1430}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1425, file: !1423, line: 559, baseType: !41, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1425, file: !1423, line: 559, baseType: !41, size: 32, offset: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1425, file: !1423, line: 559, baseType: !44, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1425, file: !1423, line: 559, baseType: !44, size: 64, offset: 128)
!1431 = !DILocation(line: 559, column: 11, scope: !1412)
!1432 = !DILocalVariable(name: "y", scope: !1412, file: !2, line: 560, type: !35)
!1433 = !DILocation(line: 560, column: 16, scope: !1412)
!1434 = !DILocalVariable(name: "ny", scope: !1412, file: !2, line: 560, type: !35)
!1435 = !DILocation(line: 560, column: 20, scope: !1412)
!1436 = !DILocalVariable(name: "i", scope: !1412, file: !2, line: 561, type: !235)
!1437 = !DILocation(line: 561, column: 7, scope: !1412)
!1438 = !DILocalVariable(name: "ns", scope: !1412, file: !2, line: 562, type: !34)
!1439 = !DILocation(line: 562, column: 9, scope: !1412)
!1440 = !DILocation(line: 564, column: 23, scope: !1412)
!1441 = !DILocation(line: 564, column: 22, scope: !1412)
!1442 = !DILocation(line: 564, column: 25, scope: !1412)
!1443 = !DILocation(line: 564, column: 5, scope: !1412)
!1444 = !DILocation(line: 565, column: 21, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 565, column: 7)
!1446 = !DILocation(line: 565, column: 12, scope: !1445)
!1447 = !DILocation(line: 565, column: 7, scope: !1412)
!1448 = !DILocation(line: 566, column: 5, scope: !1445)
!1449 = !DILocation(line: 567, column: 22, scope: !1412)
!1450 = !DILocation(line: 567, column: 6, scope: !1412)
!1451 = !DILocation(line: 568, column: 6, scope: !1412)
!1452 = !DILocation(line: 569, column: 15, scope: !1412)
!1453 = !DILocation(line: 569, column: 18, scope: !1412)
!1454 = !DILocation(line: 569, column: 3, scope: !1412)
!1455 = !DILocation(line: 569, column: 7, scope: !1412)
!1456 = !DILocation(line: 569, column: 13, scope: !1412)
!1457 = !DILocation(line: 570, column: 3, scope: !1412)
!1458 = !DILocation(line: 571, column: 22, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 571, column: 7)
!1460 = !DILocation(line: 571, column: 26, scope: !1459)
!1461 = !DILocation(line: 571, column: 29, scope: !1459)
!1462 = !DILocation(line: 571, column: 36, scope: !1459)
!1463 = !DILocation(line: 571, column: 44, scope: !1459)
!1464 = !DILocation(line: 571, column: 12, scope: !1459)
!1465 = !DILocation(line: 571, column: 10, scope: !1459)
!1466 = !DILocation(line: 571, column: 53, scope: !1459)
!1467 = !DILocation(line: 571, column: 7, scope: !1412)
!1468 = !DILocation(line: 573, column: 7, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 572, column: 5)
!1470 = !DILocation(line: 574, column: 7, scope: !1469)
!1471 = !DILocation(line: 576, column: 14, scope: !1412)
!1472 = !DILocation(line: 576, column: 3, scope: !1412)
!1473 = !DILocation(line: 576, column: 7, scope: !1412)
!1474 = !DILocation(line: 576, column: 12, scope: !1412)
!1475 = !DILocation(line: 577, column: 3, scope: !1412)
!1476 = !DILocation(line: 578, column: 8, scope: !1412)
!1477 = !DILocation(line: 578, column: 4, scope: !1412)
!1478 = !DILocation(line: 578, column: 6, scope: !1412)
!1479 = !DILocation(line: 579, column: 3, scope: !1412)
!1480 = !DILocation(line: 580, column: 3, scope: !1412)
!1481 = !DILocation(line: 581, column: 1, scope: !1412)
!1482 = distinct !DISubprogram(name: "ys_vprintf", scope: !2, file: !2, line: 588, type: !1483, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!235, !178, !34, !1485}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1486 = !DILocalVariable(name: "s", arg: 1, scope: !1482, file: !2, line: 588, type: !178)
!1487 = !DILocation(line: 588, column: 24, scope: !1482)
!1488 = !DILocalVariable(name: "format", arg: 2, scope: !1482, file: !2, line: 588, type: !34)
!1489 = !DILocation(line: 588, column: 33, scope: !1482)
!1490 = !DILocalVariable(name: "args", arg: 3, scope: !1482, file: !2, line: 588, type: !1485)
!1491 = !DILocation(line: 588, column: 49, scope: !1482)
!1492 = !DILocalVariable(name: "y", scope: !1482, file: !2, line: 590, type: !35)
!1493 = !DILocation(line: 590, column: 16, scope: !1482)
!1494 = !DILocalVariable(name: "i", scope: !1482, file: !2, line: 591, type: !235)
!1495 = !DILocation(line: 591, column: 7, scope: !1482)
!1496 = !DILocation(line: 593, column: 23, scope: !1482)
!1497 = !DILocation(line: 593, column: 22, scope: !1482)
!1498 = !DILocation(line: 593, column: 25, scope: !1482)
!1499 = !DILocation(line: 593, column: 5, scope: !1482)
!1500 = !DILocation(line: 594, column: 23, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 594, column: 7)
!1502 = !DILocation(line: 594, column: 22, scope: !1501)
!1503 = !DILocation(line: 594, column: 26, scope: !1501)
!1504 = !DILocation(line: 594, column: 29, scope: !1501)
!1505 = !DILocation(line: 594, column: 36, scope: !1501)
!1506 = !DILocation(line: 594, column: 44, scope: !1501)
!1507 = !DILocation(line: 594, column: 12, scope: !1501)
!1508 = !DILocation(line: 594, column: 10, scope: !1501)
!1509 = !DILocation(line: 594, column: 51, scope: !1501)
!1510 = !DILocation(line: 594, column: 7, scope: !1482)
!1511 = !DILocation(line: 595, column: 7, scope: !1501)
!1512 = !DILocation(line: 595, column: 6, scope: !1501)
!1513 = !DILocation(line: 595, column: 9, scope: !1501)
!1514 = !DILocation(line: 595, column: 5, scope: !1501)
!1515 = !DILocation(line: 596, column: 13, scope: !1482)
!1516 = !DILocation(line: 596, column: 15, scope: !1482)
!1517 = !DILocation(line: 596, column: 3, scope: !1482)
!1518 = !DILocation(line: 596, column: 6, scope: !1482)
!1519 = !DILocation(line: 596, column: 11, scope: !1482)
!1520 = !DILocation(line: 597, column: 11, scope: !1482)
!1521 = !DILocation(line: 597, column: 13, scope: !1482)
!1522 = !DILocation(line: 597, column: 3, scope: !1482)
!1523 = distinct !DISubprogram(name: "ys_str2hexa", scope: !2, file: !2, line: 604, type: !1524, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!43, !34}
!1526 = !DILocalVariable(name: "str", arg: 1, scope: !1523, file: !2, line: 604, type: !34)
!1527 = !DILocation(line: 604, column: 26, scope: !1523)
!1528 = !DILocalVariable(name: "h", scope: !1523, file: !2, line: 606, type: !9)
!1529 = !DILocation(line: 606, column: 8, scope: !1523)
!1530 = !DILocalVariable(name: "pt", scope: !1523, file: !2, line: 606, type: !34)
!1531 = !DILocation(line: 606, column: 36, scope: !1523)
!1532 = !DILocalVariable(name: "ys", scope: !1523, file: !2, line: 607, type: !43)
!1533 = !DILocation(line: 607, column: 10, scope: !1523)
!1534 = !DILocation(line: 609, column: 8, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 609, column: 7)
!1536 = !DILocation(line: 609, column: 12, scope: !1535)
!1537 = !DILocation(line: 609, column: 22, scope: !1535)
!1538 = !DILocation(line: 609, column: 20, scope: !1535)
!1539 = !DILocation(line: 609, column: 7, scope: !1523)
!1540 = !DILocation(line: 610, column: 5, scope: !1535)
!1541 = !DILocation(line: 611, column: 13, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 611, column: 3)
!1543 = !DILocation(line: 611, column: 11, scope: !1542)
!1544 = !DILocation(line: 611, column: 8, scope: !1542)
!1545 = !DILocation(line: 611, column: 19, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 611, column: 3)
!1547 = !DILocation(line: 611, column: 18, scope: !1546)
!1548 = !DILocation(line: 611, column: 3, scope: !1542)
!1549 = !DILocation(line: 613, column: 16, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 612, column: 5)
!1551 = !DILocation(line: 613, column: 29, scope: !1550)
!1552 = !DILocation(line: 613, column: 28, scope: !1550)
!1553 = !DILocation(line: 613, column: 7, scope: !1550)
!1554 = !DILocation(line: 614, column: 19, scope: !1550)
!1555 = !DILocation(line: 614, column: 7, scope: !1550)
!1556 = !DILocation(line: 615, column: 5, scope: !1550)
!1557 = !DILocation(line: 611, column: 23, scope: !1546)
!1558 = !DILocation(line: 611, column: 3, scope: !1546)
!1559 = distinct !{!1559, !1548, !1560}
!1560 = !DILocation(line: 615, column: 5, scope: !1542)
!1561 = !DILocation(line: 616, column: 11, scope: !1523)
!1562 = !DILocation(line: 616, column: 3, scope: !1523)
!1563 = !DILocation(line: 617, column: 1, scope: !1523)
!1564 = distinct !DISubprogram(name: "ys_subs", scope: !2, file: !2, line: 623, type: !1565, scopeLine: 624, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!43, !56, !56, !56}
!1567 = !DILocalVariable(name: "orig", arg: 1, scope: !1564, file: !2, line: 623, type: !56)
!1568 = !DILocation(line: 623, column: 28, scope: !1564)
!1569 = !DILocalVariable(name: "from", arg: 2, scope: !1564, file: !2, line: 623, type: !56)
!1570 = !DILocation(line: 623, column: 46, scope: !1564)
!1571 = !DILocalVariable(name: "to", arg: 3, scope: !1564, file: !2, line: 623, type: !56)
!1572 = !DILocation(line: 623, column: 64, scope: !1564)
!1573 = !DILocalVariable(name: "ys", scope: !1564, file: !2, line: 625, type: !43)
!1574 = !DILocation(line: 625, column: 10, scope: !1564)
!1575 = !DILocalVariable(name: "pt", scope: !1564, file: !2, line: 626, type: !56)
!1576 = !DILocation(line: 626, column: 15, scope: !1564)
!1577 = !DILocalVariable(name: "from_len", scope: !1564, file: !2, line: 627, type: !41)
!1578 = !DILocation(line: 627, column: 16, scope: !1564)
!1579 = !DILocation(line: 629, column: 8, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1564, file: !2, line: 629, column: 7)
!1581 = !DILocation(line: 629, column: 13, scope: !1580)
!1582 = !DILocation(line: 629, column: 23, scope: !1580)
!1583 = !DILocation(line: 629, column: 21, scope: !1580)
!1584 = !DILocation(line: 629, column: 7, scope: !1564)
!1585 = !DILocation(line: 630, column: 5, scope: !1580)
!1586 = !DILocation(line: 631, column: 15, scope: !1564)
!1587 = !DILocation(line: 631, column: 14, scope: !1564)
!1588 = !DILocation(line: 631, column: 30, scope: !1564)
!1589 = !DILocation(line: 631, column: 23, scope: !1564)
!1590 = !DILocation(line: 631, column: 12, scope: !1564)
!1591 = !DILocation(line: 632, column: 13, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1564, file: !2, line: 632, column: 3)
!1593 = !DILocation(line: 632, column: 11, scope: !1592)
!1594 = !DILocation(line: 632, column: 8, scope: !1592)
!1595 = !DILocation(line: 632, column: 20, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !2, line: 632, column: 3)
!1597 = !DILocation(line: 632, column: 19, scope: !1596)
!1598 = !DILocation(line: 632, column: 3, scope: !1592)
!1599 = !DILocation(line: 634, column: 11, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 634, column: 11)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 633, column: 5)
!1602 = !DILocation(line: 634, column: 20, scope: !1600)
!1603 = !DILocation(line: 634, column: 32, scope: !1600)
!1604 = !DILocation(line: 634, column: 38, scope: !1600)
!1605 = !DILocation(line: 634, column: 42, scope: !1600)
!1606 = !DILocation(line: 634, column: 24, scope: !1600)
!1607 = !DILocation(line: 634, column: 11, scope: !1601)
!1608 = !DILocation(line: 636, column: 23, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1600, file: !2, line: 635, column: 9)
!1610 = !DILocation(line: 636, column: 11, scope: !1609)
!1611 = !DILocation(line: 637, column: 16, scope: !1609)
!1612 = !DILocation(line: 637, column: 21, scope: !1609)
!1613 = !DILocation(line: 637, column: 19, scope: !1609)
!1614 = !DILocation(line: 637, column: 30, scope: !1609)
!1615 = !DILocation(line: 637, column: 14, scope: !1609)
!1616 = !DILocation(line: 638, column: 9, scope: !1609)
!1617 = !DILocation(line: 640, column: 23, scope: !1600)
!1618 = !DILocation(line: 640, column: 22, scope: !1600)
!1619 = !DILocation(line: 640, column: 9, scope: !1600)
!1620 = !DILocation(line: 641, column: 5, scope: !1601)
!1621 = !DILocation(line: 632, column: 24, scope: !1596)
!1622 = !DILocation(line: 632, column: 3, scope: !1596)
!1623 = distinct !{!1623, !1598, !1624}
!1624 = !DILocation(line: 641, column: 5, scope: !1592)
!1625 = !DILocation(line: 642, column: 11, scope: !1564)
!1626 = !DILocation(line: 642, column: 3, scope: !1564)
!1627 = !DILocation(line: 643, column: 1, scope: !1564)
!1628 = distinct !DISubprogram(name: "ys_casesubs", scope: !2, file: !2, line: 649, type: !1565, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!1629 = !DILocalVariable(name: "orig", arg: 1, scope: !1628, file: !2, line: 649, type: !56)
!1630 = !DILocation(line: 649, column: 32, scope: !1628)
!1631 = !DILocalVariable(name: "from", arg: 2, scope: !1628, file: !2, line: 649, type: !56)
!1632 = !DILocation(line: 649, column: 50, scope: !1628)
!1633 = !DILocalVariable(name: "to", arg: 3, scope: !1628, file: !2, line: 649, type: !56)
!1634 = !DILocation(line: 649, column: 68, scope: !1628)
!1635 = !DILocalVariable(name: "ys", scope: !1628, file: !2, line: 651, type: !43)
!1636 = !DILocation(line: 651, column: 10, scope: !1628)
!1637 = !DILocalVariable(name: "pt", scope: !1628, file: !2, line: 652, type: !56)
!1638 = !DILocation(line: 652, column: 15, scope: !1628)
!1639 = !DILocalVariable(name: "from_len", scope: !1628, file: !2, line: 653, type: !41)
!1640 = !DILocation(line: 653, column: 16, scope: !1628)
!1641 = !DILocation(line: 655, column: 8, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1628, file: !2, line: 655, column: 7)
!1643 = !DILocation(line: 655, column: 13, scope: !1642)
!1644 = !DILocation(line: 655, column: 23, scope: !1642)
!1645 = !DILocation(line: 655, column: 21, scope: !1642)
!1646 = !DILocation(line: 655, column: 7, scope: !1628)
!1647 = !DILocation(line: 656, column: 5, scope: !1642)
!1648 = !DILocation(line: 657, column: 15, scope: !1628)
!1649 = !DILocation(line: 657, column: 14, scope: !1628)
!1650 = !DILocation(line: 657, column: 30, scope: !1628)
!1651 = !DILocation(line: 657, column: 23, scope: !1628)
!1652 = !DILocation(line: 657, column: 12, scope: !1628)
!1653 = !DILocation(line: 658, column: 13, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1628, file: !2, line: 658, column: 3)
!1655 = !DILocation(line: 658, column: 11, scope: !1654)
!1656 = !DILocation(line: 658, column: 8, scope: !1654)
!1657 = !DILocation(line: 658, column: 20, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 658, column: 3)
!1659 = !DILocation(line: 658, column: 19, scope: !1658)
!1660 = !DILocation(line: 658, column: 3, scope: !1654)
!1661 = !DILocation(line: 660, column: 11, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !2, line: 660, column: 11)
!1663 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 659, column: 5)
!1664 = !DILocation(line: 660, column: 20, scope: !1662)
!1665 = !DILocation(line: 660, column: 36, scope: !1662)
!1666 = !DILocation(line: 660, column: 42, scope: !1662)
!1667 = !DILocation(line: 660, column: 46, scope: !1662)
!1668 = !DILocation(line: 660, column: 24, scope: !1662)
!1669 = !DILocation(line: 660, column: 11, scope: !1663)
!1670 = !DILocation(line: 662, column: 23, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1662, file: !2, line: 661, column: 9)
!1672 = !DILocation(line: 662, column: 11, scope: !1671)
!1673 = !DILocation(line: 663, column: 16, scope: !1671)
!1674 = !DILocation(line: 663, column: 21, scope: !1671)
!1675 = !DILocation(line: 663, column: 19, scope: !1671)
!1676 = !DILocation(line: 663, column: 30, scope: !1671)
!1677 = !DILocation(line: 663, column: 14, scope: !1671)
!1678 = !DILocation(line: 664, column: 9, scope: !1671)
!1679 = !DILocation(line: 666, column: 23, scope: !1662)
!1680 = !DILocation(line: 666, column: 22, scope: !1662)
!1681 = !DILocation(line: 666, column: 9, scope: !1662)
!1682 = !DILocation(line: 667, column: 5, scope: !1663)
!1683 = !DILocation(line: 658, column: 24, scope: !1658)
!1684 = !DILocation(line: 658, column: 3, scope: !1658)
!1685 = distinct !{!1685, !1660, !1686}
!1686 = !DILocation(line: 667, column: 5, scope: !1654)
!1687 = !DILocation(line: 668, column: 11, scope: !1628)
!1688 = !DILocation(line: 668, column: 3, scope: !1628)
!1689 = !DILocation(line: 669, column: 1, scope: !1628)
!1690 = distinct !DISubprogram(name: "str2xmlentity", scope: !2, file: !2, line: 676, type: !1691, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!34, !34}
!1693 = !DILocalVariable(name: "str", arg: 1, scope: !1690, file: !2, line: 676, type: !34)
!1694 = !DILocation(line: 676, column: 27, scope: !1690)
!1695 = !DILocalVariable(name: "pt", scope: !1690, file: !2, line: 678, type: !34)
!1696 = !DILocation(line: 678, column: 9, scope: !1690)
!1697 = !DILocalVariable(name: "result", scope: !1690, file: !2, line: 678, type: !34)
!1698 = !DILocation(line: 678, column: 14, scope: !1690)
!1699 = !DILocalVariable(name: "res", scope: !1690, file: !2, line: 679, type: !43)
!1700 = !DILocation(line: 679, column: 10, scope: !1690)
!1701 = !DILocation(line: 681, column: 8, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1690, file: !2, line: 681, column: 7)
!1703 = !DILocation(line: 681, column: 12, scope: !1702)
!1704 = !DILocation(line: 681, column: 23, scope: !1702)
!1705 = !DILocation(line: 681, column: 21, scope: !1702)
!1706 = !DILocation(line: 681, column: 7, scope: !1690)
!1707 = !DILocation(line: 682, column: 5, scope: !1702)
!1708 = !DILocation(line: 683, column: 13, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1690, file: !2, line: 683, column: 3)
!1710 = !DILocation(line: 683, column: 11, scope: !1709)
!1711 = !DILocation(line: 683, column: 8, scope: !1709)
!1712 = !DILocation(line: 683, column: 19, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1709, file: !2, line: 683, column: 3)
!1714 = !DILocation(line: 683, column: 18, scope: !1713)
!1715 = !DILocation(line: 683, column: 3, scope: !1709)
!1716 = !DILocation(line: 685, column: 12, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !2, line: 685, column: 11)
!1718 = distinct !DILexicalBlock(scope: !1713, file: !2, line: 684, column: 5)
!1719 = !DILocation(line: 685, column: 11, scope: !1717)
!1720 = !DILocation(line: 685, column: 15, scope: !1717)
!1721 = !DILocation(line: 685, column: 11, scope: !1718)
!1722 = !DILocation(line: 686, column: 2, scope: !1717)
!1723 = !DILocation(line: 687, column: 17, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 687, column: 16)
!1725 = !DILocation(line: 687, column: 16, scope: !1724)
!1726 = !DILocation(line: 687, column: 20, scope: !1724)
!1727 = !DILocation(line: 687, column: 16, scope: !1717)
!1728 = !DILocation(line: 688, column: 2, scope: !1724)
!1729 = !DILocation(line: 689, column: 17, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 689, column: 16)
!1731 = !DILocation(line: 689, column: 16, scope: !1730)
!1732 = !DILocation(line: 689, column: 20, scope: !1730)
!1733 = !DILocation(line: 689, column: 16, scope: !1724)
!1734 = !DILocation(line: 690, column: 2, scope: !1730)
!1735 = !DILocation(line: 691, column: 17, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1730, file: !2, line: 691, column: 16)
!1737 = !DILocation(line: 691, column: 16, scope: !1736)
!1738 = !DILocation(line: 691, column: 20, scope: !1736)
!1739 = !DILocation(line: 691, column: 16, scope: !1730)
!1740 = !DILocation(line: 692, column: 2, scope: !1736)
!1741 = !DILocation(line: 693, column: 17, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1736, file: !2, line: 693, column: 16)
!1743 = !DILocation(line: 693, column: 16, scope: !1742)
!1744 = !DILocation(line: 693, column: 20, scope: !1742)
!1745 = !DILocation(line: 693, column: 16, scope: !1736)
!1746 = !DILocation(line: 694, column: 2, scope: !1742)
!1747 = !DILocation(line: 696, column: 17, scope: !1742)
!1748 = !DILocation(line: 696, column: 16, scope: !1742)
!1749 = !DILocation(line: 696, column: 2, scope: !1742)
!1750 = !DILocation(line: 697, column: 5, scope: !1718)
!1751 = !DILocation(line: 683, column: 23, scope: !1713)
!1752 = !DILocation(line: 683, column: 3, scope: !1713)
!1753 = distinct !{!1753, !1715, !1754}
!1754 = !DILocation(line: 697, column: 5, scope: !1709)
!1755 = !DILocation(line: 698, column: 22, scope: !1690)
!1756 = !DILocation(line: 698, column: 12, scope: !1690)
!1757 = !DILocation(line: 698, column: 10, scope: !1690)
!1758 = !DILocation(line: 699, column: 3, scope: !1690)
!1759 = !DILocation(line: 700, column: 11, scope: !1690)
!1760 = !DILocation(line: 700, column: 3, scope: !1690)
!1761 = !DILocation(line: 701, column: 1, scope: !1690)
!1762 = distinct !DISubprogram(name: "xmlentity2str", scope: !2, file: !2, line: 708, type: !1691, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !58)
!1763 = !DILocalVariable(name: "str", arg: 1, scope: !1762, file: !2, line: 708, type: !34)
!1764 = !DILocation(line: 708, column: 27, scope: !1762)
!1765 = !DILocalVariable(name: "res", scope: !1762, file: !2, line: 710, type: !43)
!1766 = !DILocation(line: 710, column: 10, scope: !1762)
!1767 = !DILocalVariable(name: "pt", scope: !1762, file: !2, line: 711, type: !34)
!1768 = !DILocation(line: 711, column: 9, scope: !1762)
!1769 = !DILocalVariable(name: "result", scope: !1762, file: !2, line: 711, type: !34)
!1770 = !DILocation(line: 711, column: 14, scope: !1762)
!1771 = !DILocalVariable(name: "pt2", scope: !1762, file: !2, line: 711, type: !34)
!1772 = !DILocation(line: 711, column: 23, scope: !1762)
!1773 = !DILocalVariable(name: "i", scope: !1762, file: !2, line: 712, type: !235)
!1774 = !DILocation(line: 712, column: 7, scope: !1762)
!1775 = !DILocation(line: 714, column: 8, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 714, column: 7)
!1777 = !DILocation(line: 714, column: 12, scope: !1776)
!1778 = !DILocation(line: 714, column: 23, scope: !1776)
!1779 = !DILocation(line: 714, column: 21, scope: !1776)
!1780 = !DILocation(line: 714, column: 7, scope: !1762)
!1781 = !DILocation(line: 715, column: 5, scope: !1776)
!1782 = !DILocation(line: 716, column: 13, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 716, column: 3)
!1784 = !DILocation(line: 716, column: 11, scope: !1783)
!1785 = !DILocation(line: 716, column: 8, scope: !1783)
!1786 = !DILocation(line: 716, column: 19, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1783, file: !2, line: 716, column: 3)
!1788 = !DILocation(line: 716, column: 18, scope: !1787)
!1789 = !DILocation(line: 716, column: 3, scope: !1783)
!1790 = !DILocation(line: 718, column: 12, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !2, line: 718, column: 11)
!1792 = distinct !DILexicalBlock(scope: !1787, file: !2, line: 717, column: 5)
!1793 = !DILocation(line: 718, column: 11, scope: !1791)
!1794 = !DILocation(line: 718, column: 15, scope: !1791)
!1795 = !DILocation(line: 718, column: 11, scope: !1792)
!1796 = !DILocation(line: 720, column: 19, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1791, file: !2, line: 719, column: 2)
!1798 = !DILocation(line: 720, column: 18, scope: !1797)
!1799 = !DILocation(line: 720, column: 4, scope: !1797)
!1800 = !DILocation(line: 721, column: 6, scope: !1797)
!1801 = !DILocation(line: 722, column: 2, scope: !1797)
!1802 = !DILocation(line: 723, column: 25, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1791, file: !2, line: 723, column: 16)
!1804 = !DILocation(line: 723, column: 41, scope: !1803)
!1805 = !DILocation(line: 723, column: 17, scope: !1803)
!1806 = !DILocation(line: 723, column: 16, scope: !1791)
!1807 = !DILocation(line: 724, column: 2, scope: !1803)
!1808 = !DILocation(line: 725, column: 25, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1803, file: !2, line: 725, column: 16)
!1810 = !DILocation(line: 725, column: 40, scope: !1809)
!1811 = !DILocation(line: 725, column: 17, scope: !1809)
!1812 = !DILocation(line: 725, column: 16, scope: !1803)
!1813 = !DILocation(line: 726, column: 2, scope: !1809)
!1814 = !DILocation(line: 727, column: 25, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1809, file: !2, line: 727, column: 16)
!1816 = !DILocation(line: 727, column: 40, scope: !1815)
!1817 = !DILocation(line: 727, column: 17, scope: !1815)
!1818 = !DILocation(line: 727, column: 16, scope: !1809)
!1819 = !DILocation(line: 728, column: 2, scope: !1815)
!1820 = !DILocation(line: 729, column: 25, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1815, file: !2, line: 729, column: 16)
!1822 = !DILocation(line: 729, column: 42, scope: !1821)
!1823 = !DILocation(line: 729, column: 17, scope: !1821)
!1824 = !DILocation(line: 729, column: 16, scope: !1815)
!1825 = !DILocation(line: 730, column: 2, scope: !1821)
!1826 = !DILocation(line: 731, column: 25, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1821, file: !2, line: 731, column: 16)
!1828 = !DILocation(line: 731, column: 42, scope: !1827)
!1829 = !DILocation(line: 731, column: 17, scope: !1827)
!1830 = !DILocation(line: 731, column: 16, scope: !1821)
!1831 = !DILocation(line: 732, column: 2, scope: !1827)
!1832 = !DILocation(line: 733, column: 18, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1827, file: !2, line: 733, column: 16)
!1834 = !DILocation(line: 733, column: 21, scope: !1833)
!1835 = !DILocation(line: 733, column: 16, scope: !1833)
!1836 = !DILocation(line: 733, column: 26, scope: !1833)
!1837 = !DILocation(line: 733, column: 35, scope: !1833)
!1838 = !DILocation(line: 733, column: 52, scope: !1833)
!1839 = !DILocation(line: 733, column: 55, scope: !1833)
!1840 = !DILocation(line: 733, column: 45, scope: !1833)
!1841 = !DILocation(line: 733, column: 43, scope: !1833)
!1842 = !DILocation(line: 733, column: 16, scope: !1827)
!1843 = !DILocation(line: 735, column: 23, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1833, file: !2, line: 734, column: 2)
!1845 = !DILocation(line: 735, column: 26, scope: !1844)
!1846 = !DILocation(line: 735, column: 18, scope: !1844)
!1847 = !DILocation(line: 735, column: 4, scope: !1844)
!1848 = !DILocation(line: 736, column: 9, scope: !1844)
!1849 = !DILocation(line: 736, column: 15, scope: !1844)
!1850 = !DILocation(line: 736, column: 13, scope: !1844)
!1851 = !DILocation(line: 736, column: 19, scope: !1844)
!1852 = !DILocation(line: 736, column: 8, scope: !1844)
!1853 = !DILocation(line: 736, column: 6, scope: !1844)
!1854 = !DILocation(line: 737, column: 2, scope: !1844)
!1855 = !DILocation(line: 740, column: 19, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1833, file: !2, line: 739, column: 2)
!1857 = !DILocation(line: 740, column: 18, scope: !1856)
!1858 = !DILocation(line: 740, column: 4, scope: !1856)
!1859 = !DILocation(line: 741, column: 6, scope: !1856)
!1860 = !DILocation(line: 743, column: 5, scope: !1792)
!1861 = !DILocation(line: 716, column: 29, scope: !1787)
!1862 = !DILocation(line: 716, column: 26, scope: !1787)
!1863 = !DILocation(line: 716, column: 3, scope: !1787)
!1864 = distinct !{!1864, !1789, !1865}
!1865 = !DILocation(line: 743, column: 5, scope: !1783)
!1866 = !DILocation(line: 744, column: 22, scope: !1762)
!1867 = !DILocation(line: 744, column: 12, scope: !1762)
!1868 = !DILocation(line: 744, column: 10, scope: !1762)
!1869 = !DILocation(line: 745, column: 3, scope: !1762)
!1870 = !DILocation(line: 746, column: 11, scope: !1762)
!1871 = !DILocation(line: 746, column: 3, scope: !1762)
!1872 = !DILocation(line: 747, column: 1, scope: !1762)
