; ModuleID = '/home/raj/lwan/common/hash.c'
source_filename = "/home/raj/lwan/common/hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash = type { i32, ptr, ptr, ptr, ptr, [0 x %struct.hash_bucket] }
%struct.hash_bucket = type { ptr, i32, i32 }
%struct.hash_entry = type { ptr, ptr, i32 }
%struct.hash_iter = type { ptr, i32, i32 }

@odd_constant = internal global i32 668265261, align 4, !dbg !0
@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1, !dbg !27
@.str.1 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1, !dbg !33
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @initialize_odd_constant, ptr null }]

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_odd_constant() #0 !dbg !46 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !50, metadata !DIExpression()), !dbg !51
  %3 = call i64 (i64, ...) @syscall(i64 noundef 318, ptr noundef @odd_constant, i64 noundef 4, i32 noundef 0) #8, !dbg !52
  store i64 %3, ptr %1, align 8, !dbg !51
  %4 = load i64, ptr %1, align 8, !dbg !53
  %5 = icmp eq i64 %4, 4, !dbg !55
  br i1 %5, label %6, label %7, !dbg !56

6:                                                ; preds = %0
  br label %25, !dbg !57

7:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %2, metadata !58, metadata !DIExpression()), !dbg !59
  %8 = call i32 (ptr, i32, ...) @open(ptr noundef @.str, i32 noundef 524288), !dbg !60
  store i32 %8, ptr %2, align 4, !dbg !59
  %9 = load i32, ptr %2, align 4, !dbg !61
  %10 = icmp slt i32 %9, 0, !dbg !63
  br i1 %10, label %11, label %17, !dbg !64

11:                                               ; preds = %7
  %12 = call i32 (ptr, i32, ...) @open(ptr noundef @.str.1, i32 noundef 524288), !dbg !65
  store i32 %12, ptr %2, align 4, !dbg !67
  %13 = load i32, ptr %2, align 4, !dbg !68
  %14 = icmp slt i32 %13, 0, !dbg !70
  br i1 %14, label %15, label %16, !dbg !71

15:                                               ; preds = %11
  store i32 668265261, ptr @odd_constant, align 4, !dbg !72
  br label %29, !dbg !74

16:                                               ; preds = %11
  br label %17, !dbg !75

17:                                               ; preds = %16, %7
  %18 = load i32, ptr %2, align 4, !dbg !76
  %19 = call i64 @read(i32 noundef %18, ptr noundef @odd_constant, i64 noundef 4), !dbg !78
  %20 = icmp ne i64 %19, 4, !dbg !79
  br i1 %20, label %21, label %22, !dbg !80

21:                                               ; preds = %17
  store i32 668265261, ptr @odd_constant, align 4, !dbg !81
  br label %22, !dbg !82

22:                                               ; preds = %21, %17
  %23 = load i32, ptr %2, align 4, !dbg !83
  %24 = call i32 @close(i32 noundef %23), !dbg !84
  br label %25, !dbg !84

25:                                               ; preds = %22, %6
  call void @llvm.dbg.label(metadata !85), !dbg !86
  %26 = load i32, ptr @odd_constant, align 4, !dbg !87
  %27 = or i32 %26, 1, !dbg !87
  store i32 %27, ptr @odd_constant, align 4, !dbg !87
  %28 = load i32, ptr @odd_constant, align 4, !dbg !88
  call void @murmur3_set_seed(i32 noundef %28), !dbg !89
  br label %29, !dbg !90

29:                                               ; preds = %25, %15
  ret void, !dbg !90
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) #2

declare i32 @open(ptr noundef, i32 noundef, ...) #3

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #3

declare i32 @close(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare void @murmur3_set_seed(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @hash_int_new(ptr noundef %0, ptr noundef %1) #0 !dbg !91 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !125, metadata !DIExpression()), !dbg !126
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !127, metadata !DIExpression()), !dbg !128
  %5 = load ptr, ptr %3, align 8, !dbg !129
  %6 = load ptr, ptr %4, align 8, !dbg !130
  %7 = call ptr @hash_internal_new(ptr noundef @hash_int, ptr noundef @hash_int_key_cmp, ptr noundef %5, ptr noundef %6), !dbg !131
  ret ptr %7, !dbg !132
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @hash_internal_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !133 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !136, metadata !DIExpression()), !dbg !137
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !138, metadata !DIExpression()), !dbg !139
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !140, metadata !DIExpression()), !dbg !141
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata ptr %10, metadata !144, metadata !DIExpression()), !dbg !145
  %11 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 8232) #9, !dbg !146
  store ptr %11, ptr %10, align 8, !dbg !145
  %12 = load ptr, ptr %10, align 8, !dbg !147
  %13 = icmp eq ptr %12, null, !dbg !149
  br i1 %13, label %14, label %15, !dbg !150

14:                                               ; preds = %4
  store ptr null, ptr %5, align 8, !dbg !151
  br label %29, !dbg !151

15:                                               ; preds = %4
  %16 = load ptr, ptr %6, align 8, !dbg !152
  %17 = load ptr, ptr %10, align 8, !dbg !153
  %18 = getelementptr inbounds %struct.hash, ptr %17, i32 0, i32 1, !dbg !154
  store ptr %16, ptr %18, align 8, !dbg !155
  %19 = load ptr, ptr %7, align 8, !dbg !156
  %20 = load ptr, ptr %10, align 8, !dbg !157
  %21 = getelementptr inbounds %struct.hash, ptr %20, i32 0, i32 2, !dbg !158
  store ptr %19, ptr %21, align 8, !dbg !159
  %22 = load ptr, ptr %9, align 8, !dbg !160
  %23 = load ptr, ptr %10, align 8, !dbg !161
  %24 = getelementptr inbounds %struct.hash, ptr %23, i32 0, i32 3, !dbg !162
  store ptr %22, ptr %24, align 8, !dbg !163
  %25 = load ptr, ptr %8, align 8, !dbg !164
  %26 = load ptr, ptr %10, align 8, !dbg !165
  %27 = getelementptr inbounds %struct.hash, ptr %26, i32 0, i32 4, !dbg !166
  store ptr %25, ptr %27, align 8, !dbg !167
  %28 = load ptr, ptr %10, align 8, !dbg !168
  store ptr %28, ptr %5, align 8, !dbg !169
  br label %29, !dbg !169

29:                                               ; preds = %15, %14
  %30 = load ptr, ptr %5, align 8, !dbg !170
  ret ptr %30, !dbg !170
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_int(ptr noundef %0) #0 !dbg !171 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata ptr %3, metadata !174, metadata !DIExpression()), !dbg !175
  %5 = load ptr, ptr %2, align 8, !dbg !176
  %6 = ptrtoint ptr %5 to i64, !dbg !177
  %7 = trunc i64 %6 to i32, !dbg !178
  store i32 %7, ptr %3, align 4, !dbg !175
  call void @llvm.dbg.declare(metadata ptr %4, metadata !179, metadata !DIExpression()), !dbg !180
  %8 = load i32, ptr @odd_constant, align 4, !dbg !181
  store i32 %8, ptr %4, align 4, !dbg !180
  %9 = load i32, ptr %3, align 4, !dbg !182
  %10 = xor i32 %9, 61, !dbg !183
  %11 = load i32, ptr %3, align 4, !dbg !184
  %12 = lshr i32 %11, 16, !dbg !185
  %13 = xor i32 %10, %12, !dbg !186
  store i32 %13, ptr %3, align 4, !dbg !187
  %14 = load i32, ptr %3, align 4, !dbg !188
  %15 = shl i32 %14, 3, !dbg !189
  %16 = load i32, ptr %3, align 4, !dbg !190
  %17 = add i32 %16, %15, !dbg !190
  store i32 %17, ptr %3, align 4, !dbg !190
  %18 = load i32, ptr %3, align 4, !dbg !191
  %19 = lshr i32 %18, 4, !dbg !192
  %20 = load i32, ptr %3, align 4, !dbg !193
  %21 = xor i32 %20, %19, !dbg !193
  store i32 %21, ptr %3, align 4, !dbg !193
  %22 = load i32, ptr %4, align 4, !dbg !194
  %23 = load i32, ptr %3, align 4, !dbg !195
  %24 = mul i32 %23, %22, !dbg !195
  store i32 %24, ptr %3, align 4, !dbg !195
  %25 = load i32, ptr %3, align 4, !dbg !196
  %26 = lshr i32 %25, 15, !dbg !197
  %27 = load i32, ptr %3, align 4, !dbg !198
  %28 = xor i32 %27, %26, !dbg !198
  store i32 %28, ptr %3, align 4, !dbg !198
  %29 = load i32, ptr %3, align 4, !dbg !199
  ret i32 %29, !dbg !200
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_int_key_cmp(ptr noundef %0, ptr noundef %1) #0 !dbg !201 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !202, metadata !DIExpression()), !dbg !203
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata ptr %5, metadata !206, metadata !DIExpression()), !dbg !207
  %7 = load ptr, ptr %3, align 8, !dbg !208
  %8 = ptrtoint ptr %7 to i64, !dbg !209
  %9 = trunc i64 %8 to i32, !dbg !210
  store i32 %9, ptr %5, align 4, !dbg !207
  call void @llvm.dbg.declare(metadata ptr %6, metadata !211, metadata !DIExpression()), !dbg !212
  %10 = load ptr, ptr %4, align 8, !dbg !213
  %11 = ptrtoint ptr %10 to i64, !dbg !214
  %12 = trunc i64 %11 to i32, !dbg !215
  store i32 %12, ptr %6, align 4, !dbg !212
  %13 = load i32, ptr %5, align 4, !dbg !216
  %14 = load i32, ptr %6, align 4, !dbg !217
  %15 = icmp sgt i32 %13, %14, !dbg !218
  %16 = zext i1 %15 to i32, !dbg !218
  %17 = load i32, ptr %5, align 4, !dbg !219
  %18 = load i32, ptr %6, align 4, !dbg !220
  %19 = icmp slt i32 %17, %18, !dbg !221
  %20 = zext i1 %19 to i32, !dbg !221
  %21 = sub nsw i32 %16, %20, !dbg !222
  ret i32 %21, !dbg !223
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @hash_str_new(ptr noundef %0, ptr noundef %1) #0 !dbg !224 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !225, metadata !DIExpression()), !dbg !226
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata ptr %5, metadata !229, metadata !DIExpression()), !dbg !230
  store ptr @murmur3_simple, ptr %5, align 8, !dbg !231
  %6 = load ptr, ptr %5, align 8, !dbg !232
  %7 = load ptr, ptr %3, align 8, !dbg !233
  %8 = load ptr, ptr %4, align 8, !dbg !234
  %9 = call ptr @hash_internal_new(ptr noundef %6, ptr noundef @strcmp, ptr noundef %7, ptr noundef %8), !dbg !235
  ret ptr %9, !dbg !236
}

declare i32 @murmur3_simple(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_free(ptr noundef %0) #0 !dbg !237 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata ptr %3, metadata !242, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata ptr %4, metadata !245, metadata !DIExpression()), !dbg !246
  %7 = load ptr, ptr %2, align 8, !dbg !247
  %8 = icmp eq ptr %7, null, !dbg !249
  br i1 %8, label %9, label %10, !dbg !250

9:                                                ; preds = %1
  br label %71, !dbg !251

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !dbg !252
  %12 = getelementptr inbounds %struct.hash, ptr %11, i32 0, i32 5, !dbg !253
  %13 = getelementptr inbounds [0 x %struct.hash_bucket], ptr %12, i64 0, i64 0, !dbg !252
  store ptr %13, ptr %3, align 8, !dbg !254
  %14 = load ptr, ptr %3, align 8, !dbg !255
  %15 = getelementptr inbounds %struct.hash_bucket, ptr %14, i64 512, !dbg !256
  store ptr %15, ptr %4, align 8, !dbg !257
  br label %16, !dbg !258

16:                                               ; preds = %66, %10
  %17 = load ptr, ptr %3, align 8, !dbg !259
  %18 = load ptr, ptr %4, align 8, !dbg !262
  %19 = icmp ult ptr %17, %18, !dbg !263
  br i1 %19, label %20, label %69, !dbg !264

20:                                               ; preds = %16
  %21 = load ptr, ptr %2, align 8, !dbg !265
  %22 = getelementptr inbounds %struct.hash, ptr %21, i32 0, i32 3, !dbg !268
  %23 = load ptr, ptr %22, align 8, !dbg !268
  %24 = icmp ne ptr %23, null, !dbg !265
  br i1 %24, label %25, label %62, !dbg !269

25:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %5, metadata !270, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata ptr %6, metadata !273, metadata !DIExpression()), !dbg !274
  %26 = load ptr, ptr %3, align 8, !dbg !275
  %27 = getelementptr inbounds %struct.hash_bucket, ptr %26, i32 0, i32 0, !dbg !276
  %28 = load ptr, ptr %27, align 8, !dbg !276
  store ptr %28, ptr %5, align 8, !dbg !277
  %29 = load ptr, ptr %5, align 8, !dbg !278
  %30 = load ptr, ptr %3, align 8, !dbg !279
  %31 = getelementptr inbounds %struct.hash_bucket, ptr %30, i32 0, i32 1, !dbg !280
  %32 = load i32, ptr %31, align 8, !dbg !280
  %33 = zext i32 %32 to i64, !dbg !281
  %34 = getelementptr inbounds %struct.hash_entry, ptr %29, i64 %33, !dbg !281
  store ptr %34, ptr %6, align 8, !dbg !282
  br label %35, !dbg !283

35:                                               ; preds = %58, %25
  %36 = load ptr, ptr %5, align 8, !dbg !284
  %37 = load ptr, ptr %6, align 8, !dbg !287
  %38 = icmp ult ptr %36, %37, !dbg !288
  br i1 %38, label %39, label %61, !dbg !289

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 8, !dbg !290
  %41 = getelementptr inbounds %struct.hash, ptr %40, i32 0, i32 3, !dbg !292
  %42 = load ptr, ptr %41, align 8, !dbg !292
  %43 = load ptr, ptr %5, align 8, !dbg !293
  %44 = getelementptr inbounds %struct.hash_entry, ptr %43, i32 0, i32 1, !dbg !294
  %45 = load ptr, ptr %44, align 8, !dbg !294
  call void %42(ptr noundef %45), !dbg !290
  %46 = load ptr, ptr %2, align 8, !dbg !295
  %47 = getelementptr inbounds %struct.hash, ptr %46, i32 0, i32 4, !dbg !297
  %48 = load ptr, ptr %47, align 8, !dbg !297
  %49 = icmp ne ptr %48, null, !dbg !295
  br i1 %49, label %50, label %57, !dbg !298

50:                                               ; preds = %39
  %51 = load ptr, ptr %2, align 8, !dbg !299
  %52 = getelementptr inbounds %struct.hash, ptr %51, i32 0, i32 4, !dbg !300
  %53 = load ptr, ptr %52, align 8, !dbg !300
  %54 = load ptr, ptr %5, align 8, !dbg !301
  %55 = getelementptr inbounds %struct.hash_entry, ptr %54, i32 0, i32 0, !dbg !302
  %56 = load ptr, ptr %55, align 8, !dbg !302
  call void %53(ptr noundef %56), !dbg !299
  br label %57, !dbg !299

57:                                               ; preds = %50, %39
  br label %58, !dbg !303

58:                                               ; preds = %57
  %59 = load ptr, ptr %5, align 8, !dbg !304
  %60 = getelementptr inbounds %struct.hash_entry, ptr %59, i32 1, !dbg !304
  store ptr %60, ptr %5, align 8, !dbg !304
  br label %35, !dbg !305, !llvm.loop !306

61:                                               ; preds = %35
  br label %62, !dbg !309

62:                                               ; preds = %61, %20
  %63 = load ptr, ptr %3, align 8, !dbg !310
  %64 = getelementptr inbounds %struct.hash_bucket, ptr %63, i32 0, i32 0, !dbg !311
  %65 = load ptr, ptr %64, align 8, !dbg !311
  call void @free(ptr noundef %65) #8, !dbg !312
  br label %66, !dbg !313

66:                                               ; preds = %62
  %67 = load ptr, ptr %3, align 8, !dbg !314
  %68 = getelementptr inbounds %struct.hash_bucket, ptr %67, i32 1, !dbg !314
  store ptr %68, ptr %3, align 8, !dbg !314
  br label %16, !dbg !315, !llvm.loop !316

69:                                               ; preds = %16
  %70 = load ptr, ptr %2, align 8, !dbg !318
  call void @free(ptr noundef %70) #8, !dbg !319
  br label %71, !dbg !320

71:                                               ; preds = %69, %9
  ret void, !dbg !320
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !321 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !324, metadata !DIExpression()), !dbg !325
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !326, metadata !DIExpression()), !dbg !327
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !328, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.declare(metadata ptr %8, metadata !330, metadata !DIExpression()), !dbg !331
  %15 = load ptr, ptr %5, align 8, !dbg !332
  %16 = getelementptr inbounds %struct.hash, ptr %15, i32 0, i32 1, !dbg !333
  %17 = load ptr, ptr %16, align 8, !dbg !333
  %18 = load ptr, ptr %6, align 8, !dbg !334
  %19 = call i32 %17(ptr noundef %18), !dbg !332
  store i32 %19, ptr %8, align 4, !dbg !331
  call void @llvm.dbg.declare(metadata ptr %9, metadata !335, metadata !DIExpression()), !dbg !336
  %20 = load i32, ptr %8, align 4, !dbg !337
  %21 = and i32 %20, 511, !dbg !338
  store i32 %21, ptr %9, align 4, !dbg !336
  call void @llvm.dbg.declare(metadata ptr %10, metadata !339, metadata !DIExpression()), !dbg !340
  %22 = load ptr, ptr %5, align 8, !dbg !341
  %23 = getelementptr inbounds %struct.hash, ptr %22, i32 0, i32 5, !dbg !342
  %24 = getelementptr inbounds [0 x %struct.hash_bucket], ptr %23, i64 0, i64 0, !dbg !341
  %25 = load i32, ptr %9, align 4, !dbg !343
  %26 = zext i32 %25 to i64, !dbg !344
  %27 = getelementptr inbounds %struct.hash_bucket, ptr %24, i64 %26, !dbg !344
  store ptr %27, ptr %10, align 8, !dbg !340
  call void @llvm.dbg.declare(metadata ptr %11, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata ptr %12, metadata !347, metadata !DIExpression()), !dbg !348
  %28 = load ptr, ptr %10, align 8, !dbg !349
  %29 = getelementptr inbounds %struct.hash_bucket, ptr %28, i32 0, i32 1, !dbg !351
  %30 = load i32, ptr %29, align 8, !dbg !351
  %31 = add i32 %30, 1, !dbg !352
  %32 = load ptr, ptr %10, align 8, !dbg !353
  %33 = getelementptr inbounds %struct.hash_bucket, ptr %32, i32 0, i32 2, !dbg !354
  %34 = load i32, ptr %33, align 4, !dbg !354
  %35 = icmp uge i32 %31, %34, !dbg !355
  br i1 %35, label %36, label %60, !dbg !356

36:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %13, metadata !357, metadata !DIExpression()), !dbg !359
  %37 = load ptr, ptr %10, align 8, !dbg !360
  %38 = getelementptr inbounds %struct.hash_bucket, ptr %37, i32 0, i32 2, !dbg !361
  %39 = load i32, ptr %38, align 4, !dbg !361
  %40 = add i32 %39, 64, !dbg !362
  store i32 %40, ptr %13, align 4, !dbg !359
  call void @llvm.dbg.declare(metadata ptr %14, metadata !363, metadata !DIExpression()), !dbg !364
  %41 = load ptr, ptr %10, align 8, !dbg !365
  %42 = getelementptr inbounds %struct.hash_bucket, ptr %41, i32 0, i32 0, !dbg !366
  %43 = load ptr, ptr %42, align 8, !dbg !366
  %44 = load i32, ptr %13, align 4, !dbg !367
  %45 = zext i32 %44 to i64, !dbg !367
  %46 = call ptr @reallocarray(ptr noundef %43, i64 noundef %45, i64 noundef 24) #8, !dbg !368
  store ptr %46, ptr %14, align 8, !dbg !364
  %47 = load ptr, ptr %14, align 8, !dbg !369
  %48 = icmp eq ptr %47, null, !dbg !371
  br i1 %48, label %49, label %53, !dbg !372

49:                                               ; preds = %36
  %50 = call ptr @__errno_location() #10, !dbg !373
  %51 = load i32, ptr %50, align 4, !dbg !373
  %52 = sub nsw i32 0, %51, !dbg !374
  store i32 %52, ptr %4, align 4, !dbg !375
  br label %144, !dbg !375

53:                                               ; preds = %36
  %54 = load ptr, ptr %14, align 8, !dbg !376
  %55 = load ptr, ptr %10, align 8, !dbg !377
  %56 = getelementptr inbounds %struct.hash_bucket, ptr %55, i32 0, i32 0, !dbg !378
  store ptr %54, ptr %56, align 8, !dbg !379
  %57 = load i32, ptr %13, align 4, !dbg !380
  %58 = load ptr, ptr %10, align 8, !dbg !381
  %59 = getelementptr inbounds %struct.hash_bucket, ptr %58, i32 0, i32 2, !dbg !382
  store i32 %57, ptr %59, align 4, !dbg !383
  br label %60, !dbg !384

60:                                               ; preds = %53, %3
  %61 = load ptr, ptr %10, align 8, !dbg !385
  %62 = getelementptr inbounds %struct.hash_bucket, ptr %61, i32 0, i32 0, !dbg !386
  %63 = load ptr, ptr %62, align 8, !dbg !386
  store ptr %63, ptr %11, align 8, !dbg !387
  %64 = load ptr, ptr %11, align 8, !dbg !388
  %65 = load ptr, ptr %10, align 8, !dbg !389
  %66 = getelementptr inbounds %struct.hash_bucket, ptr %65, i32 0, i32 1, !dbg !390
  %67 = load i32, ptr %66, align 8, !dbg !390
  %68 = zext i32 %67 to i64, !dbg !391
  %69 = getelementptr inbounds %struct.hash_entry, ptr %64, i64 %68, !dbg !391
  store ptr %69, ptr %12, align 8, !dbg !392
  br label %70, !dbg !393

70:                                               ; preds = %123, %60
  %71 = load ptr, ptr %11, align 8, !dbg !394
  %72 = load ptr, ptr %12, align 8, !dbg !397
  %73 = icmp ult ptr %71, %72, !dbg !398
  br i1 %73, label %74, label %126, !dbg !399

74:                                               ; preds = %70
  %75 = load i32, ptr %8, align 4, !dbg !400
  %76 = load ptr, ptr %11, align 8, !dbg !403
  %77 = getelementptr inbounds %struct.hash_entry, ptr %76, i32 0, i32 2, !dbg !404
  %78 = load i32, ptr %77, align 8, !dbg !404
  %79 = icmp ne i32 %75, %78, !dbg !405
  br i1 %79, label %80, label %81, !dbg !406

80:                                               ; preds = %74
  br label %123, !dbg !407

81:                                               ; preds = %74
  %82 = load ptr, ptr %5, align 8, !dbg !408
  %83 = getelementptr inbounds %struct.hash, ptr %82, i32 0, i32 2, !dbg !410
  %84 = load ptr, ptr %83, align 8, !dbg !410
  %85 = load ptr, ptr %6, align 8, !dbg !411
  %86 = load ptr, ptr %11, align 8, !dbg !412
  %87 = getelementptr inbounds %struct.hash_entry, ptr %86, i32 0, i32 0, !dbg !413
  %88 = load ptr, ptr %87, align 8, !dbg !413
  %89 = call i32 %84(ptr noundef %85, ptr noundef %88), !dbg !408
  %90 = icmp ne i32 %89, 0, !dbg !414
  br i1 %90, label %91, label %92, !dbg !415

91:                                               ; preds = %81
  br label %123, !dbg !416

92:                                               ; preds = %81
  %93 = load ptr, ptr %5, align 8, !dbg !417
  %94 = getelementptr inbounds %struct.hash, ptr %93, i32 0, i32 3, !dbg !419
  %95 = load ptr, ptr %94, align 8, !dbg !419
  %96 = icmp ne ptr %95, null, !dbg !417
  br i1 %96, label %97, label %104, !dbg !420

97:                                               ; preds = %92
  %98 = load ptr, ptr %5, align 8, !dbg !421
  %99 = getelementptr inbounds %struct.hash, ptr %98, i32 0, i32 3, !dbg !422
  %100 = load ptr, ptr %99, align 8, !dbg !422
  %101 = load ptr, ptr %11, align 8, !dbg !423
  %102 = getelementptr inbounds %struct.hash_entry, ptr %101, i32 0, i32 1, !dbg !424
  %103 = load ptr, ptr %102, align 8, !dbg !424
  call void %100(ptr noundef %103), !dbg !421
  br label %104, !dbg !421

104:                                              ; preds = %97, %92
  %105 = load ptr, ptr %5, align 8, !dbg !425
  %106 = getelementptr inbounds %struct.hash, ptr %105, i32 0, i32 4, !dbg !427
  %107 = load ptr, ptr %106, align 8, !dbg !427
  %108 = icmp ne ptr %107, null, !dbg !425
  br i1 %108, label %109, label %116, !dbg !428

109:                                              ; preds = %104
  %110 = load ptr, ptr %5, align 8, !dbg !429
  %111 = getelementptr inbounds %struct.hash, ptr %110, i32 0, i32 4, !dbg !430
  %112 = load ptr, ptr %111, align 8, !dbg !430
  %113 = load ptr, ptr %11, align 8, !dbg !431
  %114 = getelementptr inbounds %struct.hash_entry, ptr %113, i32 0, i32 0, !dbg !432
  %115 = load ptr, ptr %114, align 8, !dbg !432
  call void %112(ptr noundef %115), !dbg !429
  br label %116, !dbg !429

116:                                              ; preds = %109, %104
  %117 = load ptr, ptr %6, align 8, !dbg !433
  %118 = load ptr, ptr %11, align 8, !dbg !434
  %119 = getelementptr inbounds %struct.hash_entry, ptr %118, i32 0, i32 0, !dbg !435
  store ptr %117, ptr %119, align 8, !dbg !436
  %120 = load ptr, ptr %7, align 8, !dbg !437
  %121 = load ptr, ptr %11, align 8, !dbg !438
  %122 = getelementptr inbounds %struct.hash_entry, ptr %121, i32 0, i32 1, !dbg !439
  store ptr %120, ptr %122, align 8, !dbg !440
  store i32 0, ptr %4, align 4, !dbg !441
  br label %144, !dbg !441

123:                                              ; preds = %91, %80
  %124 = load ptr, ptr %11, align 8, !dbg !442
  %125 = getelementptr inbounds %struct.hash_entry, ptr %124, i32 1, !dbg !442
  store ptr %125, ptr %11, align 8, !dbg !442
  br label %70, !dbg !443, !llvm.loop !444

126:                                              ; preds = %70
  %127 = load ptr, ptr %6, align 8, !dbg !446
  %128 = load ptr, ptr %11, align 8, !dbg !447
  %129 = getelementptr inbounds %struct.hash_entry, ptr %128, i32 0, i32 0, !dbg !448
  store ptr %127, ptr %129, align 8, !dbg !449
  %130 = load ptr, ptr %7, align 8, !dbg !450
  %131 = load ptr, ptr %11, align 8, !dbg !451
  %132 = getelementptr inbounds %struct.hash_entry, ptr %131, i32 0, i32 1, !dbg !452
  store ptr %130, ptr %132, align 8, !dbg !453
  %133 = load i32, ptr %8, align 4, !dbg !454
  %134 = load ptr, ptr %11, align 8, !dbg !455
  %135 = getelementptr inbounds %struct.hash_entry, ptr %134, i32 0, i32 2, !dbg !456
  store i32 %133, ptr %135, align 8, !dbg !457
  %136 = load ptr, ptr %10, align 8, !dbg !458
  %137 = getelementptr inbounds %struct.hash_bucket, ptr %136, i32 0, i32 1, !dbg !459
  %138 = load i32, ptr %137, align 8, !dbg !460
  %139 = add i32 %138, 1, !dbg !460
  store i32 %139, ptr %137, align 8, !dbg !460
  %140 = load ptr, ptr %5, align 8, !dbg !461
  %141 = getelementptr inbounds %struct.hash, ptr %140, i32 0, i32 0, !dbg !462
  %142 = load i32, ptr %141, align 8, !dbg !463
  %143 = add i32 %142, 1, !dbg !463
  store i32 %143, ptr %141, align 8, !dbg !463
  store i32 0, ptr %4, align 4, !dbg !464
  br label %144, !dbg !464

144:                                              ; preds = %126, %116, %49
  %145 = load i32, ptr %4, align 4, !dbg !465
  ret i32 %145, !dbg !465
}

; Function Attrs: nounwind
declare ptr @reallocarray(ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_add_unique(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !466 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !467, metadata !DIExpression()), !dbg !468
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !469, metadata !DIExpression()), !dbg !470
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata ptr %8, metadata !473, metadata !DIExpression()), !dbg !474
  %15 = load ptr, ptr %5, align 8, !dbg !475
  %16 = getelementptr inbounds %struct.hash, ptr %15, i32 0, i32 1, !dbg !476
  %17 = load ptr, ptr %16, align 8, !dbg !476
  %18 = load ptr, ptr %6, align 8, !dbg !477
  %19 = call i32 %17(ptr noundef %18), !dbg !475
  store i32 %19, ptr %8, align 4, !dbg !474
  call void @llvm.dbg.declare(metadata ptr %9, metadata !478, metadata !DIExpression()), !dbg !479
  %20 = load i32, ptr %8, align 4, !dbg !480
  %21 = and i32 %20, 511, !dbg !481
  store i32 %21, ptr %9, align 4, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %10, metadata !482, metadata !DIExpression()), !dbg !483
  %22 = load ptr, ptr %5, align 8, !dbg !484
  %23 = getelementptr inbounds %struct.hash, ptr %22, i32 0, i32 5, !dbg !485
  %24 = getelementptr inbounds [0 x %struct.hash_bucket], ptr %23, i64 0, i64 0, !dbg !484
  %25 = load i32, ptr %9, align 4, !dbg !486
  %26 = zext i32 %25 to i64, !dbg !487
  %27 = getelementptr inbounds %struct.hash_bucket, ptr %24, i64 %26, !dbg !487
  store ptr %27, ptr %10, align 8, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %11, metadata !488, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.declare(metadata ptr %12, metadata !490, metadata !DIExpression()), !dbg !491
  %28 = load ptr, ptr %10, align 8, !dbg !492
  %29 = getelementptr inbounds %struct.hash_bucket, ptr %28, i32 0, i32 1, !dbg !494
  %30 = load i32, ptr %29, align 8, !dbg !494
  %31 = add i32 %30, 1, !dbg !495
  %32 = load ptr, ptr %10, align 8, !dbg !496
  %33 = getelementptr inbounds %struct.hash_bucket, ptr %32, i32 0, i32 2, !dbg !497
  %34 = load i32, ptr %33, align 4, !dbg !497
  %35 = icmp uge i32 %31, %34, !dbg !498
  br i1 %35, label %36, label %60, !dbg !499

36:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %13, metadata !500, metadata !DIExpression()), !dbg !502
  %37 = load ptr, ptr %10, align 8, !dbg !503
  %38 = getelementptr inbounds %struct.hash_bucket, ptr %37, i32 0, i32 2, !dbg !504
  %39 = load i32, ptr %38, align 4, !dbg !504
  %40 = add i32 %39, 64, !dbg !505
  store i32 %40, ptr %13, align 4, !dbg !502
  call void @llvm.dbg.declare(metadata ptr %14, metadata !506, metadata !DIExpression()), !dbg !507
  %41 = load ptr, ptr %10, align 8, !dbg !508
  %42 = getelementptr inbounds %struct.hash_bucket, ptr %41, i32 0, i32 0, !dbg !509
  %43 = load ptr, ptr %42, align 8, !dbg !509
  %44 = load i32, ptr %13, align 4, !dbg !510
  %45 = zext i32 %44 to i64, !dbg !510
  %46 = call ptr @reallocarray(ptr noundef %43, i64 noundef %45, i64 noundef 24) #8, !dbg !511
  store ptr %46, ptr %14, align 8, !dbg !507
  %47 = load ptr, ptr %14, align 8, !dbg !512
  %48 = icmp eq ptr %47, null, !dbg !514
  br i1 %48, label %49, label %53, !dbg !515

49:                                               ; preds = %36
  %50 = call ptr @__errno_location() #10, !dbg !516
  %51 = load i32, ptr %50, align 4, !dbg !516
  %52 = sub nsw i32 0, %51, !dbg !517
  store i32 %52, ptr %4, align 4, !dbg !518
  br label %114, !dbg !518

53:                                               ; preds = %36
  %54 = load ptr, ptr %14, align 8, !dbg !519
  %55 = load ptr, ptr %10, align 8, !dbg !520
  %56 = getelementptr inbounds %struct.hash_bucket, ptr %55, i32 0, i32 0, !dbg !521
  store ptr %54, ptr %56, align 8, !dbg !522
  %57 = load i32, ptr %13, align 4, !dbg !523
  %58 = load ptr, ptr %10, align 8, !dbg !524
  %59 = getelementptr inbounds %struct.hash_bucket, ptr %58, i32 0, i32 2, !dbg !525
  store i32 %57, ptr %59, align 4, !dbg !526
  br label %60, !dbg !527

60:                                               ; preds = %53, %3
  %61 = load ptr, ptr %10, align 8, !dbg !528
  %62 = getelementptr inbounds %struct.hash_bucket, ptr %61, i32 0, i32 0, !dbg !529
  %63 = load ptr, ptr %62, align 8, !dbg !529
  store ptr %63, ptr %11, align 8, !dbg !530
  %64 = load ptr, ptr %11, align 8, !dbg !531
  %65 = load ptr, ptr %10, align 8, !dbg !532
  %66 = getelementptr inbounds %struct.hash_bucket, ptr %65, i32 0, i32 1, !dbg !533
  %67 = load i32, ptr %66, align 8, !dbg !533
  %68 = zext i32 %67 to i64, !dbg !534
  %69 = getelementptr inbounds %struct.hash_entry, ptr %64, i64 %68, !dbg !534
  store ptr %69, ptr %12, align 8, !dbg !535
  br label %70, !dbg !536

70:                                               ; preds = %93, %60
  %71 = load ptr, ptr %11, align 8, !dbg !537
  %72 = load ptr, ptr %12, align 8, !dbg !540
  %73 = icmp ult ptr %71, %72, !dbg !541
  br i1 %73, label %74, label %96, !dbg !542

74:                                               ; preds = %70
  %75 = load i32, ptr %8, align 4, !dbg !543
  %76 = load ptr, ptr %11, align 8, !dbg !546
  %77 = getelementptr inbounds %struct.hash_entry, ptr %76, i32 0, i32 2, !dbg !547
  %78 = load i32, ptr %77, align 8, !dbg !547
  %79 = icmp ne i32 %75, %78, !dbg !548
  br i1 %79, label %80, label %81, !dbg !549

80:                                               ; preds = %74
  br label %93, !dbg !550

81:                                               ; preds = %74
  %82 = load ptr, ptr %5, align 8, !dbg !551
  %83 = getelementptr inbounds %struct.hash, ptr %82, i32 0, i32 2, !dbg !553
  %84 = load ptr, ptr %83, align 8, !dbg !553
  %85 = load ptr, ptr %6, align 8, !dbg !554
  %86 = load ptr, ptr %11, align 8, !dbg !555
  %87 = getelementptr inbounds %struct.hash_entry, ptr %86, i32 0, i32 0, !dbg !556
  %88 = load ptr, ptr %87, align 8, !dbg !556
  %89 = call i32 %84(ptr noundef %85, ptr noundef %88), !dbg !551
  %90 = icmp eq i32 %89, 0, !dbg !557
  br i1 %90, label %91, label %92, !dbg !558

91:                                               ; preds = %81
  store i32 -17, ptr %4, align 4, !dbg !559
  br label %114, !dbg !559

92:                                               ; preds = %81
  br label %93, !dbg !560

93:                                               ; preds = %92, %80
  %94 = load ptr, ptr %11, align 8, !dbg !561
  %95 = getelementptr inbounds %struct.hash_entry, ptr %94, i32 1, !dbg !561
  store ptr %95, ptr %11, align 8, !dbg !561
  br label %70, !dbg !562, !llvm.loop !563

96:                                               ; preds = %70
  %97 = load ptr, ptr %6, align 8, !dbg !565
  %98 = load ptr, ptr %11, align 8, !dbg !566
  %99 = getelementptr inbounds %struct.hash_entry, ptr %98, i32 0, i32 0, !dbg !567
  store ptr %97, ptr %99, align 8, !dbg !568
  %100 = load ptr, ptr %7, align 8, !dbg !569
  %101 = load ptr, ptr %11, align 8, !dbg !570
  %102 = getelementptr inbounds %struct.hash_entry, ptr %101, i32 0, i32 1, !dbg !571
  store ptr %100, ptr %102, align 8, !dbg !572
  %103 = load i32, ptr %8, align 4, !dbg !573
  %104 = load ptr, ptr %11, align 8, !dbg !574
  %105 = getelementptr inbounds %struct.hash_entry, ptr %104, i32 0, i32 2, !dbg !575
  store i32 %103, ptr %105, align 8, !dbg !576
  %106 = load ptr, ptr %10, align 8, !dbg !577
  %107 = getelementptr inbounds %struct.hash_bucket, ptr %106, i32 0, i32 1, !dbg !578
  %108 = load i32, ptr %107, align 8, !dbg !579
  %109 = add i32 %108, 1, !dbg !579
  store i32 %109, ptr %107, align 8, !dbg !579
  %110 = load ptr, ptr %5, align 8, !dbg !580
  %111 = getelementptr inbounds %struct.hash, ptr %110, i32 0, i32 0, !dbg !581
  %112 = load i32, ptr %111, align 8, !dbg !582
  %113 = add i32 %112, 1, !dbg !582
  store i32 %113, ptr %111, align 8, !dbg !582
  store i32 0, ptr %4, align 4, !dbg !583
  br label %114, !dbg !583

114:                                              ; preds = %96, %91, %49
  %115 = load i32, ptr %4, align 4, !dbg !584
  ret i32 %115, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @hash_find(ptr noundef %0, ptr noundef %1) #0 !dbg !585 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !590, metadata !DIExpression()), !dbg !591
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !592, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.declare(metadata ptr %6, metadata !594, metadata !DIExpression()), !dbg !597
  %7 = load ptr, ptr %4, align 8, !dbg !598
  %8 = load ptr, ptr %5, align 8, !dbg !599
  %9 = load ptr, ptr %4, align 8, !dbg !600
  %10 = getelementptr inbounds %struct.hash, ptr %9, i32 0, i32 1, !dbg !601
  %11 = load ptr, ptr %10, align 8, !dbg !601
  %12 = load ptr, ptr %5, align 8, !dbg !602
  %13 = call i32 %11(ptr noundef %12), !dbg !600
  %14 = call ptr @hash_find_entry(ptr noundef %7, ptr noundef %8, i32 noundef %13), !dbg !603
  store ptr %14, ptr %6, align 8, !dbg !604
  %15 = load ptr, ptr %6, align 8, !dbg !605
  %16 = icmp ne ptr %15, null, !dbg !605
  br i1 %16, label %17, label %21, !dbg !607

17:                                               ; preds = %2
  %18 = load ptr, ptr %6, align 8, !dbg !608
  %19 = getelementptr inbounds %struct.hash_entry, ptr %18, i32 0, i32 1, !dbg !609
  %20 = load ptr, ptr %19, align 8, !dbg !609
  store ptr %20, ptr %3, align 8, !dbg !610
  br label %22, !dbg !610

21:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !611
  br label %22, !dbg !611

22:                                               ; preds = %21, %17
  %23 = load ptr, ptr %3, align 8, !dbg !612
  ret ptr %23, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @hash_find_entry(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !613 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !616, metadata !DIExpression()), !dbg !617
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !618, metadata !DIExpression()), !dbg !619
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !620, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.declare(metadata ptr %8, metadata !622, metadata !DIExpression()), !dbg !623
  %12 = load i32, ptr %7, align 4, !dbg !624
  %13 = and i32 %12, 511, !dbg !625
  store i32 %13, ptr %8, align 4, !dbg !623
  call void @llvm.dbg.declare(metadata ptr %9, metadata !626, metadata !DIExpression()), !dbg !629
  %14 = load ptr, ptr %5, align 8, !dbg !630
  %15 = getelementptr inbounds %struct.hash, ptr %14, i32 0, i32 5, !dbg !631
  %16 = getelementptr inbounds [0 x %struct.hash_bucket], ptr %15, i64 0, i64 0, !dbg !630
  %17 = load i32, ptr %8, align 4, !dbg !632
  %18 = zext i32 %17 to i64, !dbg !633
  %19 = getelementptr inbounds %struct.hash_bucket, ptr %16, i64 %18, !dbg !633
  store ptr %19, ptr %9, align 8, !dbg !629
  call void @llvm.dbg.declare(metadata ptr %10, metadata !634, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.declare(metadata ptr %11, metadata !636, metadata !DIExpression()), !dbg !637
  %20 = load ptr, ptr %9, align 8, !dbg !638
  %21 = getelementptr inbounds %struct.hash_bucket, ptr %20, i32 0, i32 0, !dbg !639
  %22 = load ptr, ptr %21, align 8, !dbg !639
  store ptr %22, ptr %10, align 8, !dbg !640
  %23 = load ptr, ptr %10, align 8, !dbg !641
  %24 = load ptr, ptr %9, align 8, !dbg !642
  %25 = getelementptr inbounds %struct.hash_bucket, ptr %24, i32 0, i32 1, !dbg !643
  %26 = load i32, ptr %25, align 8, !dbg !643
  %27 = zext i32 %26 to i64, !dbg !644
  %28 = getelementptr inbounds %struct.hash_entry, ptr %23, i64 %27, !dbg !644
  store ptr %28, ptr %11, align 8, !dbg !645
  br label %29, !dbg !646

29:                                               ; preds = %53, %3
  %30 = load ptr, ptr %10, align 8, !dbg !647
  %31 = load ptr, ptr %11, align 8, !dbg !650
  %32 = icmp ult ptr %30, %31, !dbg !651
  br i1 %32, label %33, label %56, !dbg !652

33:                                               ; preds = %29
  %34 = load i32, ptr %7, align 4, !dbg !653
  %35 = load ptr, ptr %10, align 8, !dbg !656
  %36 = getelementptr inbounds %struct.hash_entry, ptr %35, i32 0, i32 2, !dbg !657
  %37 = load i32, ptr %36, align 8, !dbg !657
  %38 = icmp ne i32 %34, %37, !dbg !658
  br i1 %38, label %39, label %40, !dbg !659

39:                                               ; preds = %33
  br label %53, !dbg !660

40:                                               ; preds = %33
  %41 = load ptr, ptr %5, align 8, !dbg !661
  %42 = getelementptr inbounds %struct.hash, ptr %41, i32 0, i32 2, !dbg !663
  %43 = load ptr, ptr %42, align 8, !dbg !663
  %44 = load ptr, ptr %6, align 8, !dbg !664
  %45 = load ptr, ptr %10, align 8, !dbg !665
  %46 = getelementptr inbounds %struct.hash_entry, ptr %45, i32 0, i32 0, !dbg !666
  %47 = load ptr, ptr %46, align 8, !dbg !666
  %48 = call i32 %43(ptr noundef %44, ptr noundef %47), !dbg !661
  %49 = icmp eq i32 %48, 0, !dbg !667
  br i1 %49, label %50, label %52, !dbg !668

50:                                               ; preds = %40
  %51 = load ptr, ptr %10, align 8, !dbg !669
  store ptr %51, ptr %4, align 8, !dbg !670
  br label %57, !dbg !670

52:                                               ; preds = %40
  br label %53, !dbg !671

53:                                               ; preds = %52, %39
  %54 = load ptr, ptr %10, align 8, !dbg !672
  %55 = getelementptr inbounds %struct.hash_entry, ptr %54, i32 1, !dbg !672
  store ptr %55, ptr %10, align 8, !dbg !672
  br label %29, !dbg !673, !llvm.loop !674

56:                                               ; preds = %29
  store ptr null, ptr %4, align 8, !dbg !676
  br label %57, !dbg !676

57:                                               ; preds = %56, %50
  %58 = load ptr, ptr %4, align 8, !dbg !677
  ret ptr %58, !dbg !677
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_del(ptr noundef %0, ptr noundef %1) #0 !dbg !678 {
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
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !681, metadata !DIExpression()), !dbg !682
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !683, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.declare(metadata ptr %6, metadata !685, metadata !DIExpression()), !dbg !686
  %14 = load ptr, ptr %4, align 8, !dbg !687
  %15 = getelementptr inbounds %struct.hash, ptr %14, i32 0, i32 1, !dbg !688
  %16 = load ptr, ptr %15, align 8, !dbg !688
  %17 = load ptr, ptr %5, align 8, !dbg !689
  %18 = call i32 %16(ptr noundef %17), !dbg !687
  store i32 %18, ptr %6, align 4, !dbg !686
  call void @llvm.dbg.declare(metadata ptr %7, metadata !690, metadata !DIExpression()), !dbg !691
  %19 = load i32, ptr %6, align 4, !dbg !692
  %20 = and i32 %19, 511, !dbg !693
  store i32 %20, ptr %7, align 4, !dbg !691
  call void @llvm.dbg.declare(metadata ptr %8, metadata !694, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.declare(metadata ptr %9, metadata !696, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.declare(metadata ptr %10, metadata !698, metadata !DIExpression()), !dbg !699
  %21 = load ptr, ptr %4, align 8, !dbg !700
  %22 = getelementptr inbounds %struct.hash, ptr %21, i32 0, i32 5, !dbg !701
  %23 = getelementptr inbounds [0 x %struct.hash_bucket], ptr %22, i64 0, i64 0, !dbg !700
  %24 = load i32, ptr %7, align 4, !dbg !702
  %25 = zext i32 %24 to i64, !dbg !703
  %26 = getelementptr inbounds %struct.hash_bucket, ptr %23, i64 %25, !dbg !703
  store ptr %26, ptr %10, align 8, !dbg !699
  call void @llvm.dbg.declare(metadata ptr %11, metadata !704, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.declare(metadata ptr %12, metadata !706, metadata !DIExpression()), !dbg !707
  %27 = load ptr, ptr %4, align 8, !dbg !708
  %28 = load ptr, ptr %5, align 8, !dbg !709
  %29 = load i32, ptr %6, align 4, !dbg !710
  %30 = call ptr @hash_find_entry(ptr noundef %27, ptr noundef %28, i32 noundef %29), !dbg !711
  store ptr %30, ptr %11, align 8, !dbg !712
  %31 = load ptr, ptr %11, align 8, !dbg !713
  %32 = icmp eq ptr %31, null, !dbg !715
  br i1 %32, label %33, label %34, !dbg !716

33:                                               ; preds = %2
  store i32 -2, ptr %3, align 4, !dbg !717
  br label %118, !dbg !717

34:                                               ; preds = %2
  %35 = load ptr, ptr %4, align 8, !dbg !718
  %36 = getelementptr inbounds %struct.hash, ptr %35, i32 0, i32 3, !dbg !720
  %37 = load ptr, ptr %36, align 8, !dbg !720
  %38 = icmp ne ptr %37, null, !dbg !718
  br i1 %38, label %39, label %46, !dbg !721

39:                                               ; preds = %34
  %40 = load ptr, ptr %4, align 8, !dbg !722
  %41 = getelementptr inbounds %struct.hash, ptr %40, i32 0, i32 3, !dbg !723
  %42 = load ptr, ptr %41, align 8, !dbg !723
  %43 = load ptr, ptr %11, align 8, !dbg !724
  %44 = getelementptr inbounds %struct.hash_entry, ptr %43, i32 0, i32 1, !dbg !725
  %45 = load ptr, ptr %44, align 8, !dbg !725
  call void %42(ptr noundef %45), !dbg !722
  br label %46, !dbg !722

46:                                               ; preds = %39, %34
  %47 = load ptr, ptr %4, align 8, !dbg !726
  %48 = getelementptr inbounds %struct.hash, ptr %47, i32 0, i32 4, !dbg !728
  %49 = load ptr, ptr %48, align 8, !dbg !728
  %50 = icmp ne ptr %49, null, !dbg !726
  br i1 %50, label %51, label %58, !dbg !729

51:                                               ; preds = %46
  %52 = load ptr, ptr %4, align 8, !dbg !730
  %53 = getelementptr inbounds %struct.hash, ptr %52, i32 0, i32 4, !dbg !731
  %54 = load ptr, ptr %53, align 8, !dbg !731
  %55 = load ptr, ptr %11, align 8, !dbg !732
  %56 = getelementptr inbounds %struct.hash_entry, ptr %55, i32 0, i32 0, !dbg !733
  %57 = load ptr, ptr %56, align 8, !dbg !733
  call void %54(ptr noundef %57), !dbg !730
  br label %58, !dbg !730

58:                                               ; preds = %51, %46
  %59 = load ptr, ptr %10, align 8, !dbg !734
  %60 = getelementptr inbounds %struct.hash_bucket, ptr %59, i32 0, i32 0, !dbg !735
  %61 = load ptr, ptr %60, align 8, !dbg !735
  %62 = load ptr, ptr %10, align 8, !dbg !736
  %63 = getelementptr inbounds %struct.hash_bucket, ptr %62, i32 0, i32 1, !dbg !737
  %64 = load i32, ptr %63, align 8, !dbg !737
  %65 = zext i32 %64 to i64, !dbg !738
  %66 = getelementptr inbounds %struct.hash_entry, ptr %61, i64 %65, !dbg !738
  store ptr %66, ptr %12, align 8, !dbg !739
  %67 = load ptr, ptr %11, align 8, !dbg !740
  %68 = load ptr, ptr %11, align 8, !dbg !741
  %69 = getelementptr inbounds %struct.hash_entry, ptr %68, i64 1, !dbg !742
  %70 = load ptr, ptr %12, align 8, !dbg !743
  %71 = load ptr, ptr %11, align 8, !dbg !744
  %72 = ptrtoint ptr %70 to i64, !dbg !745
  %73 = ptrtoint ptr %71 to i64, !dbg !745
  %74 = sub i64 %72, %73, !dbg !745
  %75 = sdiv exact i64 %74, 24, !dbg !745
  %76 = mul i64 %75, 24, !dbg !746
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %67, ptr align 8 %69, i64 %76, i1 false), !dbg !747
  %77 = load ptr, ptr %10, align 8, !dbg !748
  %78 = getelementptr inbounds %struct.hash_bucket, ptr %77, i32 0, i32 1, !dbg !749
  %79 = load i32, ptr %78, align 8, !dbg !750
  %80 = add i32 %79, -1, !dbg !750
  store i32 %80, ptr %78, align 8, !dbg !750
  %81 = load ptr, ptr %4, align 8, !dbg !751
  %82 = getelementptr inbounds %struct.hash, ptr %81, i32 0, i32 0, !dbg !752
  %83 = load i32, ptr %82, align 8, !dbg !753
  %84 = add i32 %83, -1, !dbg !753
  store i32 %84, ptr %82, align 8, !dbg !753
  %85 = load ptr, ptr %10, align 8, !dbg !754
  %86 = getelementptr inbounds %struct.hash_bucket, ptr %85, i32 0, i32 1, !dbg !755
  %87 = load i32, ptr %86, align 8, !dbg !755
  %88 = udiv i32 %87, 64, !dbg !756
  store i32 %88, ptr %8, align 4, !dbg !757
  %89 = load ptr, ptr %10, align 8, !dbg !758
  %90 = getelementptr inbounds %struct.hash_bucket, ptr %89, i32 0, i32 2, !dbg !759
  %91 = load i32, ptr %90, align 4, !dbg !759
  %92 = udiv i32 %91, 64, !dbg !760
  store i32 %92, ptr %9, align 4, !dbg !761
  %93 = load i32, ptr %8, align 4, !dbg !762
  %94 = add i32 %93, 1, !dbg !764
  %95 = load i32, ptr %9, align 4, !dbg !765
  %96 = icmp ult i32 %94, %95, !dbg !766
  br i1 %96, label %97, label %117, !dbg !767

97:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata ptr %13, metadata !768, metadata !DIExpression()), !dbg !770
  %98 = load ptr, ptr %10, align 8, !dbg !771
  %99 = getelementptr inbounds %struct.hash_bucket, ptr %98, i32 0, i32 0, !dbg !772
  %100 = load ptr, ptr %99, align 8, !dbg !772
  %101 = load i32, ptr %8, align 4, !dbg !773
  %102 = add i32 %101, 1, !dbg !774
  %103 = zext i32 %102 to i64, !dbg !773
  %104 = call ptr @reallocarray(ptr noundef %100, i64 noundef %103, i64 noundef 1536) #8, !dbg !775
  store ptr %104, ptr %13, align 8, !dbg !770
  %105 = load ptr, ptr %13, align 8, !dbg !776
  %106 = icmp ne ptr %105, null, !dbg !776
  br i1 %106, label %107, label %116, !dbg !778

107:                                              ; preds = %97
  %108 = load ptr, ptr %13, align 8, !dbg !779
  %109 = load ptr, ptr %10, align 8, !dbg !781
  %110 = getelementptr inbounds %struct.hash_bucket, ptr %109, i32 0, i32 0, !dbg !782
  store ptr %108, ptr %110, align 8, !dbg !783
  %111 = load i32, ptr %8, align 4, !dbg !784
  %112 = add i32 %111, 1, !dbg !785
  %113 = mul i32 %112, 64, !dbg !786
  %114 = load ptr, ptr %10, align 8, !dbg !787
  %115 = getelementptr inbounds %struct.hash_bucket, ptr %114, i32 0, i32 2, !dbg !788
  store i32 %113, ptr %115, align 4, !dbg !789
  br label %116, !dbg !790

116:                                              ; preds = %107, %97
  br label %117, !dbg !791

117:                                              ; preds = %116, %58
  store i32 0, ptr %3, align 4, !dbg !792
  br label %118, !dbg !792

118:                                              ; preds = %117, %33
  %119 = load i32, ptr %3, align 4, !dbg !793
  ret i32 %119, !dbg !793
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_get_count(ptr noundef %0) #0 !dbg !794 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !797, metadata !DIExpression()), !dbg !798
  %3 = load ptr, ptr %2, align 8, !dbg !799
  %4 = getelementptr inbounds %struct.hash, ptr %3, i32 0, i32 0, !dbg !800
  %5 = load i32, ptr %4, align 8, !dbg !800
  ret i32 %5, !dbg !801
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_iter_init(ptr noundef %0, ptr noundef %1) #0 !dbg !802 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !812, metadata !DIExpression()), !dbg !813
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !814, metadata !DIExpression()), !dbg !815
  %5 = load ptr, ptr %3, align 8, !dbg !816
  %6 = load ptr, ptr %4, align 8, !dbg !817
  %7 = getelementptr inbounds %struct.hash_iter, ptr %6, i32 0, i32 0, !dbg !818
  store ptr %5, ptr %7, align 8, !dbg !819
  %8 = load ptr, ptr %4, align 8, !dbg !820
  %9 = getelementptr inbounds %struct.hash_iter, ptr %8, i32 0, i32 1, !dbg !821
  store i32 0, ptr %9, align 8, !dbg !822
  %10 = load ptr, ptr %4, align 8, !dbg !823
  %11 = getelementptr inbounds %struct.hash_iter, ptr %10, i32 0, i32 2, !dbg !824
  store i32 -1, ptr %11, align 4, !dbg !825
  ret void, !dbg !826
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @hash_iter_next(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !827 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !832, metadata !DIExpression()), !dbg !833
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !834, metadata !DIExpression()), !dbg !835
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !836, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.declare(metadata ptr %8, metadata !838, metadata !DIExpression()), !dbg !839
  %10 = load ptr, ptr %5, align 8, !dbg !840
  %11 = getelementptr inbounds %struct.hash_iter, ptr %10, i32 0, i32 0, !dbg !841
  %12 = load ptr, ptr %11, align 8, !dbg !841
  %13 = getelementptr inbounds %struct.hash, ptr %12, i32 0, i32 5, !dbg !842
  %14 = getelementptr inbounds [0 x %struct.hash_bucket], ptr %13, i64 0, i64 0, !dbg !840
  %15 = load ptr, ptr %5, align 8, !dbg !843
  %16 = getelementptr inbounds %struct.hash_iter, ptr %15, i32 0, i32 1, !dbg !844
  %17 = load i32, ptr %16, align 8, !dbg !844
  %18 = zext i32 %17 to i64, !dbg !845
  %19 = getelementptr inbounds %struct.hash_bucket, ptr %14, i64 %18, !dbg !845
  store ptr %19, ptr %8, align 8, !dbg !839
  call void @llvm.dbg.declare(metadata ptr %9, metadata !846, metadata !DIExpression()), !dbg !847
  %20 = load ptr, ptr %5, align 8, !dbg !848
  %21 = getelementptr inbounds %struct.hash_iter, ptr %20, i32 0, i32 2, !dbg !849
  %22 = load i32, ptr %21, align 4, !dbg !850
  %23 = add nsw i32 %22, 1, !dbg !850
  store i32 %23, ptr %21, align 4, !dbg !850
  %24 = load ptr, ptr %5, align 8, !dbg !851
  %25 = getelementptr inbounds %struct.hash_iter, ptr %24, i32 0, i32 2, !dbg !853
  %26 = load i32, ptr %25, align 4, !dbg !853
  %27 = load ptr, ptr %8, align 8, !dbg !854
  %28 = getelementptr inbounds %struct.hash_bucket, ptr %27, i32 0, i32 1, !dbg !855
  %29 = load i32, ptr %28, align 8, !dbg !855
  %30 = icmp uge i32 %26, %29, !dbg !856
  br i1 %30, label %31, label %72, !dbg !857

31:                                               ; preds = %3
  %32 = load ptr, ptr %5, align 8, !dbg !858
  %33 = getelementptr inbounds %struct.hash_iter, ptr %32, i32 0, i32 2, !dbg !860
  store i32 0, ptr %33, align 4, !dbg !861
  %34 = load ptr, ptr %5, align 8, !dbg !862
  %35 = getelementptr inbounds %struct.hash_iter, ptr %34, i32 0, i32 1, !dbg !864
  %36 = load i32, ptr %35, align 8, !dbg !865
  %37 = add i32 %36, 1, !dbg !865
  store i32 %37, ptr %35, align 8, !dbg !865
  br label %38, !dbg !862

38:                                               ; preds = %60, %31
  %39 = load ptr, ptr %5, align 8, !dbg !866
  %40 = getelementptr inbounds %struct.hash_iter, ptr %39, i32 0, i32 1, !dbg !868
  %41 = load i32, ptr %40, align 8, !dbg !868
  %42 = icmp ult i32 %41, 512, !dbg !869
  br i1 %42, label %43, label %65, !dbg !870

43:                                               ; preds = %38
  %44 = load ptr, ptr %5, align 8, !dbg !871
  %45 = getelementptr inbounds %struct.hash_iter, ptr %44, i32 0, i32 0, !dbg !873
  %46 = load ptr, ptr %45, align 8, !dbg !873
  %47 = getelementptr inbounds %struct.hash, ptr %46, i32 0, i32 5, !dbg !874
  %48 = getelementptr inbounds [0 x %struct.hash_bucket], ptr %47, i64 0, i64 0, !dbg !871
  %49 = load ptr, ptr %5, align 8, !dbg !875
  %50 = getelementptr inbounds %struct.hash_iter, ptr %49, i32 0, i32 1, !dbg !876
  %51 = load i32, ptr %50, align 8, !dbg !876
  %52 = zext i32 %51 to i64, !dbg !877
  %53 = getelementptr inbounds %struct.hash_bucket, ptr %48, i64 %52, !dbg !877
  store ptr %53, ptr %8, align 8, !dbg !878
  %54 = load ptr, ptr %8, align 8, !dbg !879
  %55 = getelementptr inbounds %struct.hash_bucket, ptr %54, i32 0, i32 1, !dbg !881
  %56 = load i32, ptr %55, align 8, !dbg !881
  %57 = icmp ugt i32 %56, 0, !dbg !882
  br i1 %57, label %58, label %59, !dbg !883

58:                                               ; preds = %43
  br label %65, !dbg !884

59:                                               ; preds = %43
  br label %60, !dbg !885

60:                                               ; preds = %59
  %61 = load ptr, ptr %5, align 8, !dbg !886
  %62 = getelementptr inbounds %struct.hash_iter, ptr %61, i32 0, i32 1, !dbg !887
  %63 = load i32, ptr %62, align 8, !dbg !888
  %64 = add i32 %63, 1, !dbg !888
  store i32 %64, ptr %62, align 8, !dbg !888
  br label %38, !dbg !889, !llvm.loop !890

65:                                               ; preds = %58, %38
  %66 = load ptr, ptr %5, align 8, !dbg !892
  %67 = getelementptr inbounds %struct.hash_iter, ptr %66, i32 0, i32 1, !dbg !894
  %68 = load i32, ptr %67, align 8, !dbg !894
  %69 = icmp uge i32 %68, 512, !dbg !895
  br i1 %69, label %70, label %71, !dbg !896

70:                                               ; preds = %65
  store i1 false, ptr %4, align 1, !dbg !897
  br label %97, !dbg !897

71:                                               ; preds = %65
  br label %72, !dbg !898

72:                                               ; preds = %71, %3
  %73 = load ptr, ptr %8, align 8, !dbg !899
  %74 = getelementptr inbounds %struct.hash_bucket, ptr %73, i32 0, i32 0, !dbg !900
  %75 = load ptr, ptr %74, align 8, !dbg !900
  %76 = load ptr, ptr %5, align 8, !dbg !901
  %77 = getelementptr inbounds %struct.hash_iter, ptr %76, i32 0, i32 2, !dbg !902
  %78 = load i32, ptr %77, align 4, !dbg !902
  %79 = sext i32 %78 to i64, !dbg !903
  %80 = getelementptr inbounds %struct.hash_entry, ptr %75, i64 %79, !dbg !903
  store ptr %80, ptr %9, align 8, !dbg !904
  %81 = load ptr, ptr %7, align 8, !dbg !905
  %82 = icmp ne ptr %81, null, !dbg !907
  br i1 %82, label %83, label %88, !dbg !908

83:                                               ; preds = %72
  %84 = load ptr, ptr %9, align 8, !dbg !909
  %85 = getelementptr inbounds %struct.hash_entry, ptr %84, i32 0, i32 1, !dbg !910
  %86 = load ptr, ptr %85, align 8, !dbg !910
  %87 = load ptr, ptr %7, align 8, !dbg !911
  store ptr %86, ptr %87, align 8, !dbg !912
  br label %88, !dbg !913

88:                                               ; preds = %83, %72
  %89 = load ptr, ptr %6, align 8, !dbg !914
  %90 = icmp ne ptr %89, null, !dbg !916
  br i1 %90, label %91, label %96, !dbg !917

91:                                               ; preds = %88
  %92 = load ptr, ptr %9, align 8, !dbg !918
  %93 = getelementptr inbounds %struct.hash_entry, ptr %92, i32 0, i32 0, !dbg !919
  %94 = load ptr, ptr %93, align 8, !dbg !919
  %95 = load ptr, ptr %6, align 8, !dbg !920
  store ptr %94, ptr %95, align 8, !dbg !921
  br label %96, !dbg !922

96:                                               ; preds = %91, %88
  store i1 true, ptr %4, align 1, !dbg !923
  br label %97, !dbg !923

97:                                               ; preds = %96, %70
  %98 = load i1, ptr %4, align 1, !dbg !924
  ret i1 %98, !dbg !924
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #7

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "odd_constant", scope: !2, file: !6, line: 41, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/lwan/common/hash.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "00f74057e2e6dbf32d12ddc7b3b22e35")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 36, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "common/hash.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "00f74057e2e6dbf32d12ddc7b3b22e35")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "n_buckets", value: 512)
!10 = !DIEnumerator(name: "steps", value: 64)
!11 = !DIEnumerator(name: "default_odd_constant", value: 668265261)
!12 = !{!13, !19, !20, !7, !23, !16, !24}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !17, !17}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 46, baseType: !22)
!21 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !25, line: 87, baseType: !23)
!25 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!26 = !{!27, !33, !0}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !6, line: 73, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 104, elements: !31)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !{!32}
!32 = !DISubrange(count: 13)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !6, line: 75, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 96, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 12)
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 8, !"PIC Level", i32 2}
!42 = !{i32 7, !"PIE Level", i32 2}
!43 = !{i32 7, !"uwtable", i32 2}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 16.0.0"}
!46 = distinct !DISubprogram(name: "initialize_odd_constant", scope: !6, file: !6, line: 65, type: !47, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !49)
!47 = !DISubroutineType(types: !48)
!48 = !{null}
!49 = !{}
!50 = !DILocalVariable(name: "ret", scope: !46, file: !6, line: 68, type: !23)
!51 = !DILocation(line: 68, column: 11, scope: !46)
!52 = !DILocation(line: 68, column: 17, scope: !46)
!53 = !DILocation(line: 69, column: 6, scope: !54)
!54 = distinct !DILexicalBlock(scope: !46, file: !6, line: 69, column: 6)
!55 = !DILocation(line: 69, column: 10, scope: !54)
!56 = !DILocation(line: 69, column: 6, scope: !46)
!57 = !DILocation(line: 70, column: 3, scope: !54)
!58 = !DILocalVariable(name: "fd", scope: !46, file: !6, line: 73, type: !16)
!59 = !DILocation(line: 73, column: 6, scope: !46)
!60 = !DILocation(line: 73, column: 11, scope: !46)
!61 = !DILocation(line: 74, column: 6, scope: !62)
!62 = distinct !DILexicalBlock(scope: !46, file: !6, line: 74, column: 6)
!63 = !DILocation(line: 74, column: 9, scope: !62)
!64 = !DILocation(line: 74, column: 6, scope: !46)
!65 = !DILocation(line: 75, column: 8, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !6, line: 74, column: 14)
!67 = !DILocation(line: 75, column: 6, scope: !66)
!68 = !DILocation(line: 76, column: 7, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !6, line: 76, column: 7)
!70 = !DILocation(line: 76, column: 10, scope: !69)
!71 = !DILocation(line: 76, column: 7, scope: !66)
!72 = !DILocation(line: 77, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !6, line: 76, column: 15)
!74 = !DILocation(line: 78, column: 4, scope: !73)
!75 = !DILocation(line: 80, column: 2, scope: !66)
!76 = !DILocation(line: 81, column: 11, scope: !77)
!77 = distinct !DILexicalBlock(scope: !46, file: !6, line: 81, column: 6)
!78 = !DILocation(line: 81, column: 6, scope: !77)
!79 = !DILocation(line: 81, column: 52, scope: !77)
!80 = !DILocation(line: 81, column: 6, scope: !46)
!81 = !DILocation(line: 82, column: 16, scope: !77)
!82 = !DILocation(line: 82, column: 3, scope: !77)
!83 = !DILocation(line: 83, column: 8, scope: !46)
!84 = !DILocation(line: 83, column: 2, scope: !46)
!85 = !DILabel(scope: !46, name: "oddify_constant", file: !6, line: 85)
!86 = !DILocation(line: 85, column: 1, scope: !46)
!87 = !DILocation(line: 86, column: 15, scope: !46)
!88 = !DILocation(line: 87, column: 19, scope: !46)
!89 = !DILocation(line: 87, column: 2, scope: !46)
!90 = !DILocation(line: 88, column: 1, scope: !46)
!91 = distinct !DISubprogram(name: "hash_int_new", scope: !6, file: !6, line: 165, type: !92, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !49)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !104, !104}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash", file: !6, line: 55, size: 320, elements: !96)
!96 = !{!97, !98, !102, !103, !107, !108}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !95, file: !6, line: 56, baseType: !7, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !95, file: !6, line: 57, baseType: !99, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!7, !17}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "key_compare", scope: !95, file: !6, line: 58, baseType: !13, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "free_value", scope: !95, file: !6, line: 59, baseType: !104, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !19}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "free_key", scope: !95, file: !6, line: 60, baseType: !104, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !95, file: !6, line: 61, baseType: !109, offset: 320)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, elements: !123)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_bucket", file: !6, line: 49, size: 128, elements: !111)
!111 = !{!112, !121, !122}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !110, file: !6, line: 50, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_entry", file: !6, line: 43, size: 192, elements: !115)
!115 = !{!116, !119, !120}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !114, file: !6, line: 44, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !114, file: !6, line: 45, baseType: !17, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "hashval", scope: !114, file: !6, line: 46, baseType: !7, size: 32, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !110, file: !6, line: 51, baseType: !7, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !110, file: !6, line: 52, baseType: !7, size: 32, offset: 96)
!123 = !{!124}
!124 = !DISubrange(count: -1)
!125 = !DILocalVariable(name: "free_key", arg: 1, scope: !91, file: !6, line: 165, type: !104)
!126 = !DILocation(line: 165, column: 34, scope: !91)
!127 = !DILocalVariable(name: "free_value", arg: 2, scope: !91, file: !6, line: 166, type: !104)
!128 = !DILocation(line: 166, column: 11, scope: !91)
!129 = !DILocation(line: 170, column: 4, scope: !91)
!130 = !DILocation(line: 171, column: 4, scope: !91)
!131 = !DILocation(line: 168, column: 9, scope: !91)
!132 = !DILocation(line: 168, column: 2, scope: !91)
!133 = distinct !DISubprogram(name: "hash_internal_new", scope: !6, file: !6, line: 148, type: !134, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !49)
!134 = !DISubroutineType(types: !135)
!135 = !{!94, !99, !13, !104, !104}
!136 = !DILocalVariable(name: "hash_value", arg: 1, scope: !133, file: !6, line: 149, type: !99)
!137 = !DILocation(line: 149, column: 15, scope: !133)
!138 = !DILocalVariable(name: "key_compare", arg: 2, scope: !133, file: !6, line: 150, type: !13)
!139 = !DILocation(line: 150, column: 10, scope: !133)
!140 = !DILocalVariable(name: "free_key", arg: 3, scope: !133, file: !6, line: 151, type: !104)
!141 = !DILocation(line: 151, column: 11, scope: !133)
!142 = !DILocalVariable(name: "free_value", arg: 4, scope: !133, file: !6, line: 152, type: !104)
!143 = !DILocation(line: 152, column: 11, scope: !133)
!144 = !DILocalVariable(name: "hash", scope: !133, file: !6, line: 154, type: !94)
!145 = !DILocation(line: 154, column: 15, scope: !133)
!146 = !DILocation(line: 154, column: 22, scope: !133)
!147 = !DILocation(line: 156, column: 6, scope: !148)
!148 = distinct !DILexicalBlock(scope: !133, file: !6, line: 156, column: 6)
!149 = !DILocation(line: 156, column: 11, scope: !148)
!150 = !DILocation(line: 156, column: 6, scope: !133)
!151 = !DILocation(line: 157, column: 3, scope: !148)
!152 = !DILocation(line: 158, column: 21, scope: !133)
!153 = !DILocation(line: 158, column: 2, scope: !133)
!154 = !DILocation(line: 158, column: 8, scope: !133)
!155 = !DILocation(line: 158, column: 19, scope: !133)
!156 = !DILocation(line: 159, column: 22, scope: !133)
!157 = !DILocation(line: 159, column: 2, scope: !133)
!158 = !DILocation(line: 159, column: 8, scope: !133)
!159 = !DILocation(line: 159, column: 20, scope: !133)
!160 = !DILocation(line: 160, column: 21, scope: !133)
!161 = !DILocation(line: 160, column: 2, scope: !133)
!162 = !DILocation(line: 160, column: 8, scope: !133)
!163 = !DILocation(line: 160, column: 19, scope: !133)
!164 = !DILocation(line: 161, column: 19, scope: !133)
!165 = !DILocation(line: 161, column: 2, scope: !133)
!166 = !DILocation(line: 161, column: 8, scope: !133)
!167 = !DILocation(line: 161, column: 17, scope: !133)
!168 = !DILocation(line: 162, column: 9, scope: !133)
!169 = !DILocation(line: 162, column: 2, scope: !133)
!170 = !DILocation(line: 163, column: 1, scope: !133)
!171 = distinct !DISubprogram(name: "hash_int", scope: !6, file: !6, line: 90, type: !100, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !49)
!172 = !DILocalVariable(name: "keyptr", arg: 1, scope: !171, file: !6, line: 90, type: !17)
!173 = !DILocation(line: 90, column: 45, scope: !171)
!174 = !DILocalVariable(name: "key", scope: !171, file: !6, line: 93, type: !7)
!175 = !DILocation(line: 93, column: 11, scope: !171)
!176 = !DILocation(line: 93, column: 33, scope: !171)
!177 = !DILocation(line: 93, column: 27, scope: !171)
!178 = !DILocation(line: 93, column: 17, scope: !171)
!179 = !DILocalVariable(name: "c2", scope: !171, file: !6, line: 94, type: !7)
!180 = !DILocation(line: 94, column: 11, scope: !171)
!181 = !DILocation(line: 94, column: 16, scope: !171)
!182 = !DILocation(line: 96, column: 9, scope: !171)
!183 = !DILocation(line: 96, column: 13, scope: !171)
!184 = !DILocation(line: 96, column: 22, scope: !171)
!185 = !DILocation(line: 96, column: 26, scope: !171)
!186 = !DILocation(line: 96, column: 19, scope: !171)
!187 = !DILocation(line: 96, column: 6, scope: !171)
!188 = !DILocation(line: 97, column: 9, scope: !171)
!189 = !DILocation(line: 97, column: 13, scope: !171)
!190 = !DILocation(line: 97, column: 6, scope: !171)
!191 = !DILocation(line: 98, column: 9, scope: !171)
!192 = !DILocation(line: 98, column: 13, scope: !171)
!193 = !DILocation(line: 98, column: 6, scope: !171)
!194 = !DILocation(line: 99, column: 9, scope: !171)
!195 = !DILocation(line: 99, column: 6, scope: !171)
!196 = !DILocation(line: 100, column: 9, scope: !171)
!197 = !DILocation(line: 100, column: 13, scope: !171)
!198 = !DILocation(line: 100, column: 6, scope: !171)
!199 = !DILocation(line: 101, column: 9, scope: !171)
!200 = !DILocation(line: 101, column: 2, scope: !171)
!201 = distinct !DISubprogram(name: "hash_int_key_cmp", scope: !6, file: !6, line: 141, type: !14, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !49)
!202 = !DILocalVariable(name: "k1", arg: 1, scope: !201, file: !6, line: 141, type: !17)
!203 = !DILocation(line: 141, column: 48, scope: !201)
!204 = !DILocalVariable(name: "k2", arg: 2, scope: !201, file: !6, line: 141, type: !17)
!205 = !DILocation(line: 141, column: 64, scope: !201)
!206 = !DILocalVariable(name: "a", scope: !201, file: !6, line: 143, type: !16)
!207 = !DILocation(line: 143, column: 6, scope: !201)
!208 = !DILocation(line: 143, column: 25, scope: !201)
!209 = !DILocation(line: 143, column: 15, scope: !201)
!210 = !DILocation(line: 143, column: 10, scope: !201)
!211 = !DILocalVariable(name: "b", scope: !201, file: !6, line: 144, type: !16)
!212 = !DILocation(line: 144, column: 6, scope: !201)
!213 = !DILocation(line: 144, column: 25, scope: !201)
!214 = !DILocation(line: 144, column: 15, scope: !201)
!215 = !DILocation(line: 144, column: 10, scope: !201)
!216 = !DILocation(line: 145, column: 10, scope: !201)
!217 = !DILocation(line: 145, column: 14, scope: !201)
!218 = !DILocation(line: 145, column: 12, scope: !201)
!219 = !DILocation(line: 145, column: 20, scope: !201)
!220 = !DILocation(line: 145, column: 24, scope: !201)
!221 = !DILocation(line: 145, column: 22, scope: !201)
!222 = !DILocation(line: 145, column: 17, scope: !201)
!223 = !DILocation(line: 145, column: 2, scope: !201)
!224 = distinct !DISubprogram(name: "hash_str_new", scope: !6, file: !6, line: 174, type: !92, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !49)
!225 = !DILocalVariable(name: "free_key", arg: 1, scope: !224, file: !6, line: 174, type: !104)
!226 = !DILocation(line: 174, column: 34, scope: !224)
!227 = !DILocalVariable(name: "free_value", arg: 2, scope: !224, file: !6, line: 175, type: !104)
!228 = !DILocation(line: 175, column: 11, scope: !224)
!229 = !DILocalVariable(name: "hash_func", scope: !224, file: !6, line: 177, type: !99)
!230 = !DILocation(line: 177, column: 13, scope: !224)
!231 = !DILocation(line: 187, column: 12, scope: !224)
!232 = !DILocation(line: 191, column: 4, scope: !224)
!233 = !DILocation(line: 193, column: 4, scope: !224)
!234 = !DILocation(line: 194, column: 4, scope: !224)
!235 = !DILocation(line: 190, column: 9, scope: !224)
!236 = !DILocation(line: 190, column: 2, scope: !224)
!237 = distinct !DISubprogram(name: "hash_free", scope: !6, file: !6, line: 197, type: !238, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !49)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !94}
!240 = !DILocalVariable(name: "hash", arg: 1, scope: !237, file: !6, line: 197, type: !94)
!241 = !DILocation(line: 197, column: 29, scope: !237)
!242 = !DILocalVariable(name: "bucket", scope: !237, file: !6, line: 199, type: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!244 = !DILocation(line: 199, column: 22, scope: !237)
!245 = !DILocalVariable(name: "bucket_end", scope: !237, file: !6, line: 199, type: !243)
!246 = !DILocation(line: 199, column: 31, scope: !237)
!247 = !DILocation(line: 201, column: 6, scope: !248)
!248 = distinct !DILexicalBlock(scope: !237, file: !6, line: 201, column: 6)
!249 = !DILocation(line: 201, column: 11, scope: !248)
!250 = !DILocation(line: 201, column: 6, scope: !237)
!251 = !DILocation(line: 202, column: 3, scope: !248)
!252 = !DILocation(line: 204, column: 11, scope: !237)
!253 = !DILocation(line: 204, column: 17, scope: !237)
!254 = !DILocation(line: 204, column: 9, scope: !237)
!255 = !DILocation(line: 205, column: 15, scope: !237)
!256 = !DILocation(line: 205, column: 22, scope: !237)
!257 = !DILocation(line: 205, column: 13, scope: !237)
!258 = !DILocation(line: 206, column: 2, scope: !237)
!259 = !DILocation(line: 206, column: 9, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !6, line: 206, column: 2)
!261 = distinct !DILexicalBlock(scope: !237, file: !6, line: 206, column: 2)
!262 = !DILocation(line: 206, column: 18, scope: !260)
!263 = !DILocation(line: 206, column: 16, scope: !260)
!264 = !DILocation(line: 206, column: 2, scope: !261)
!265 = !DILocation(line: 207, column: 7, scope: !266)
!266 = distinct !DILexicalBlock(scope: !267, file: !6, line: 207, column: 7)
!267 = distinct !DILexicalBlock(scope: !260, file: !6, line: 206, column: 40)
!268 = !DILocation(line: 207, column: 13, scope: !266)
!269 = !DILocation(line: 207, column: 7, scope: !267)
!270 = !DILocalVariable(name: "entry", scope: !271, file: !6, line: 208, type: !113)
!271 = distinct !DILexicalBlock(scope: !266, file: !6, line: 207, column: 25)
!272 = !DILocation(line: 208, column: 23, scope: !271)
!273 = !DILocalVariable(name: "entry_end", scope: !271, file: !6, line: 208, type: !113)
!274 = !DILocation(line: 208, column: 31, scope: !271)
!275 = !DILocation(line: 209, column: 12, scope: !271)
!276 = !DILocation(line: 209, column: 20, scope: !271)
!277 = !DILocation(line: 209, column: 10, scope: !271)
!278 = !DILocation(line: 210, column: 16, scope: !271)
!279 = !DILocation(line: 210, column: 24, scope: !271)
!280 = !DILocation(line: 210, column: 32, scope: !271)
!281 = !DILocation(line: 210, column: 22, scope: !271)
!282 = !DILocation(line: 210, column: 14, scope: !271)
!283 = !DILocation(line: 211, column: 4, scope: !271)
!284 = !DILocation(line: 211, column: 11, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !6, line: 211, column: 4)
!286 = distinct !DILexicalBlock(scope: !271, file: !6, line: 211, column: 4)
!287 = !DILocation(line: 211, column: 19, scope: !285)
!288 = !DILocation(line: 211, column: 17, scope: !285)
!289 = !DILocation(line: 211, column: 4, scope: !286)
!290 = !DILocation(line: 212, column: 5, scope: !291)
!291 = distinct !DILexicalBlock(scope: !285, file: !6, line: 211, column: 39)
!292 = !DILocation(line: 212, column: 11, scope: !291)
!293 = !DILocation(line: 212, column: 30, scope: !291)
!294 = !DILocation(line: 212, column: 37, scope: !291)
!295 = !DILocation(line: 213, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !291, file: !6, line: 213, column: 9)
!297 = !DILocation(line: 213, column: 15, scope: !296)
!298 = !DILocation(line: 213, column: 9, scope: !291)
!299 = !DILocation(line: 214, column: 6, scope: !296)
!300 = !DILocation(line: 214, column: 12, scope: !296)
!301 = !DILocation(line: 214, column: 29, scope: !296)
!302 = !DILocation(line: 214, column: 36, scope: !296)
!303 = !DILocation(line: 215, column: 4, scope: !291)
!304 = !DILocation(line: 211, column: 35, scope: !285)
!305 = !DILocation(line: 211, column: 4, scope: !285)
!306 = distinct !{!306, !289, !307, !308}
!307 = !DILocation(line: 215, column: 4, scope: !286)
!308 = !{!"llvm.loop.mustprogress"}
!309 = !DILocation(line: 216, column: 3, scope: !271)
!310 = !DILocation(line: 217, column: 8, scope: !267)
!311 = !DILocation(line: 217, column: 16, scope: !267)
!312 = !DILocation(line: 217, column: 3, scope: !267)
!313 = !DILocation(line: 218, column: 2, scope: !267)
!314 = !DILocation(line: 206, column: 36, scope: !260)
!315 = !DILocation(line: 206, column: 2, scope: !260)
!316 = distinct !{!316, !264, !317, !308}
!317 = !DILocation(line: 218, column: 2, scope: !261)
!318 = !DILocation(line: 219, column: 7, scope: !237)
!319 = !DILocation(line: 219, column: 2, scope: !237)
!320 = !DILocation(line: 220, column: 1, scope: !237)
!321 = distinct !DISubprogram(name: "hash_add", scope: !6, file: !6, line: 228, type: !322, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !49)
!322 = !DISubroutineType(types: !323)
!323 = !{!16, !94, !17, !17}
!324 = !DILocalVariable(name: "hash", arg: 1, scope: !321, file: !6, line: 228, type: !94)
!325 = !DILocation(line: 228, column: 27, scope: !321)
!326 = !DILocalVariable(name: "key", arg: 2, scope: !321, file: !6, line: 228, type: !17)
!327 = !DILocation(line: 228, column: 45, scope: !321)
!328 = !DILocalVariable(name: "value", arg: 3, scope: !321, file: !6, line: 228, type: !17)
!329 = !DILocation(line: 228, column: 62, scope: !321)
!330 = !DILocalVariable(name: "hashval", scope: !321, file: !6, line: 230, type: !7)
!331 = !DILocation(line: 230, column: 11, scope: !321)
!332 = !DILocation(line: 230, column: 21, scope: !321)
!333 = !DILocation(line: 230, column: 27, scope: !321)
!334 = !DILocation(line: 230, column: 38, scope: !321)
!335 = !DILocalVariable(name: "pos", scope: !321, file: !6, line: 231, type: !7)
!336 = !DILocation(line: 231, column: 11, scope: !321)
!337 = !DILocation(line: 231, column: 17, scope: !321)
!338 = !DILocation(line: 231, column: 25, scope: !321)
!339 = !DILocalVariable(name: "bucket", scope: !321, file: !6, line: 232, type: !243)
!340 = !DILocation(line: 232, column: 22, scope: !321)
!341 = !DILocation(line: 232, column: 31, scope: !321)
!342 = !DILocation(line: 232, column: 37, scope: !321)
!343 = !DILocation(line: 232, column: 47, scope: !321)
!344 = !DILocation(line: 232, column: 45, scope: !321)
!345 = !DILocalVariable(name: "entry", scope: !321, file: !6, line: 233, type: !113)
!346 = !DILocation(line: 233, column: 21, scope: !321)
!347 = !DILocalVariable(name: "entry_end", scope: !321, file: !6, line: 233, type: !113)
!348 = !DILocation(line: 233, column: 29, scope: !321)
!349 = !DILocation(line: 235, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !321, file: !6, line: 235, column: 6)
!351 = !DILocation(line: 235, column: 14, scope: !350)
!352 = !DILocation(line: 235, column: 19, scope: !350)
!353 = !DILocation(line: 235, column: 26, scope: !350)
!354 = !DILocation(line: 235, column: 34, scope: !350)
!355 = !DILocation(line: 235, column: 23, scope: !350)
!356 = !DILocation(line: 235, column: 6, scope: !321)
!357 = !DILocalVariable(name: "new_total", scope: !358, file: !6, line: 236, type: !7)
!358 = distinct !DILexicalBlock(scope: !350, file: !6, line: 235, column: 41)
!359 = !DILocation(line: 236, column: 12, scope: !358)
!360 = !DILocation(line: 236, column: 24, scope: !358)
!361 = !DILocation(line: 236, column: 32, scope: !358)
!362 = !DILocation(line: 236, column: 38, scope: !358)
!363 = !DILocalVariable(name: "tmp", scope: !358, file: !6, line: 237, type: !113)
!364 = !DILocation(line: 237, column: 22, scope: !358)
!365 = !DILocation(line: 237, column: 41, scope: !358)
!366 = !DILocation(line: 237, column: 49, scope: !358)
!367 = !DILocation(line: 237, column: 58, scope: !358)
!368 = !DILocation(line: 237, column: 28, scope: !358)
!369 = !DILocation(line: 238, column: 7, scope: !370)
!370 = distinct !DILexicalBlock(scope: !358, file: !6, line: 238, column: 7)
!371 = !DILocation(line: 238, column: 11, scope: !370)
!372 = !DILocation(line: 238, column: 7, scope: !358)
!373 = !DILocation(line: 239, column: 12, scope: !370)
!374 = !DILocation(line: 239, column: 11, scope: !370)
!375 = !DILocation(line: 239, column: 4, scope: !370)
!376 = !DILocation(line: 240, column: 21, scope: !358)
!377 = !DILocation(line: 240, column: 3, scope: !358)
!378 = !DILocation(line: 240, column: 11, scope: !358)
!379 = !DILocation(line: 240, column: 19, scope: !358)
!380 = !DILocation(line: 241, column: 19, scope: !358)
!381 = !DILocation(line: 241, column: 3, scope: !358)
!382 = !DILocation(line: 241, column: 11, scope: !358)
!383 = !DILocation(line: 241, column: 17, scope: !358)
!384 = !DILocation(line: 242, column: 2, scope: !358)
!385 = !DILocation(line: 244, column: 10, scope: !321)
!386 = !DILocation(line: 244, column: 18, scope: !321)
!387 = !DILocation(line: 244, column: 8, scope: !321)
!388 = !DILocation(line: 245, column: 14, scope: !321)
!389 = !DILocation(line: 245, column: 22, scope: !321)
!390 = !DILocation(line: 245, column: 30, scope: !321)
!391 = !DILocation(line: 245, column: 20, scope: !321)
!392 = !DILocation(line: 245, column: 12, scope: !321)
!393 = !DILocation(line: 246, column: 2, scope: !321)
!394 = !DILocation(line: 246, column: 9, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !6, line: 246, column: 2)
!396 = distinct !DILexicalBlock(scope: !321, file: !6, line: 246, column: 2)
!397 = !DILocation(line: 246, column: 17, scope: !395)
!398 = !DILocation(line: 246, column: 15, scope: !395)
!399 = !DILocation(line: 246, column: 2, scope: !396)
!400 = !DILocation(line: 247, column: 7, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !6, line: 247, column: 7)
!402 = distinct !DILexicalBlock(scope: !395, file: !6, line: 246, column: 37)
!403 = !DILocation(line: 247, column: 18, scope: !401)
!404 = !DILocation(line: 247, column: 25, scope: !401)
!405 = !DILocation(line: 247, column: 15, scope: !401)
!406 = !DILocation(line: 247, column: 7, scope: !402)
!407 = !DILocation(line: 248, column: 4, scope: !401)
!408 = !DILocation(line: 249, column: 7, scope: !409)
!409 = distinct !DILexicalBlock(scope: !402, file: !6, line: 249, column: 7)
!410 = !DILocation(line: 249, column: 13, scope: !409)
!411 = !DILocation(line: 249, column: 25, scope: !409)
!412 = !DILocation(line: 249, column: 30, scope: !409)
!413 = !DILocation(line: 249, column: 37, scope: !409)
!414 = !DILocation(line: 249, column: 42, scope: !409)
!415 = !DILocation(line: 249, column: 7, scope: !402)
!416 = !DILocation(line: 250, column: 4, scope: !409)
!417 = !DILocation(line: 251, column: 7, scope: !418)
!418 = distinct !DILexicalBlock(scope: !402, file: !6, line: 251, column: 7)
!419 = !DILocation(line: 251, column: 13, scope: !418)
!420 = !DILocation(line: 251, column: 7, scope: !402)
!421 = !DILocation(line: 252, column: 4, scope: !418)
!422 = !DILocation(line: 252, column: 10, scope: !418)
!423 = !DILocation(line: 252, column: 29, scope: !418)
!424 = !DILocation(line: 252, column: 36, scope: !418)
!425 = !DILocation(line: 253, column: 7, scope: !426)
!426 = distinct !DILexicalBlock(scope: !402, file: !6, line: 253, column: 7)
!427 = !DILocation(line: 253, column: 13, scope: !426)
!428 = !DILocation(line: 253, column: 7, scope: !402)
!429 = !DILocation(line: 254, column: 4, scope: !426)
!430 = !DILocation(line: 254, column: 10, scope: !426)
!431 = !DILocation(line: 254, column: 27, scope: !426)
!432 = !DILocation(line: 254, column: 34, scope: !426)
!433 = !DILocation(line: 256, column: 16, scope: !402)
!434 = !DILocation(line: 256, column: 3, scope: !402)
!435 = !DILocation(line: 256, column: 10, scope: !402)
!436 = !DILocation(line: 256, column: 14, scope: !402)
!437 = !DILocation(line: 257, column: 18, scope: !402)
!438 = !DILocation(line: 257, column: 3, scope: !402)
!439 = !DILocation(line: 257, column: 10, scope: !402)
!440 = !DILocation(line: 257, column: 16, scope: !402)
!441 = !DILocation(line: 258, column: 3, scope: !402)
!442 = !DILocation(line: 246, column: 33, scope: !395)
!443 = !DILocation(line: 246, column: 2, scope: !395)
!444 = distinct !{!444, !399, !445, !308}
!445 = !DILocation(line: 259, column: 2, scope: !396)
!446 = !DILocation(line: 261, column: 15, scope: !321)
!447 = !DILocation(line: 261, column: 2, scope: !321)
!448 = !DILocation(line: 261, column: 9, scope: !321)
!449 = !DILocation(line: 261, column: 13, scope: !321)
!450 = !DILocation(line: 262, column: 17, scope: !321)
!451 = !DILocation(line: 262, column: 2, scope: !321)
!452 = !DILocation(line: 262, column: 9, scope: !321)
!453 = !DILocation(line: 262, column: 15, scope: !321)
!454 = !DILocation(line: 263, column: 19, scope: !321)
!455 = !DILocation(line: 263, column: 2, scope: !321)
!456 = !DILocation(line: 263, column: 9, scope: !321)
!457 = !DILocation(line: 263, column: 17, scope: !321)
!458 = !DILocation(line: 264, column: 2, scope: !321)
!459 = !DILocation(line: 264, column: 10, scope: !321)
!460 = !DILocation(line: 264, column: 14, scope: !321)
!461 = !DILocation(line: 265, column: 2, scope: !321)
!462 = !DILocation(line: 265, column: 8, scope: !321)
!463 = !DILocation(line: 265, column: 13, scope: !321)
!464 = !DILocation(line: 266, column: 2, scope: !321)
!465 = !DILocation(line: 267, column: 1, scope: !321)
!466 = distinct !DISubprogram(name: "hash_add_unique", scope: !6, file: !6, line: 270, type: !322, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !49)
!467 = !DILocalVariable(name: "hash", arg: 1, scope: !466, file: !6, line: 270, type: !94)
!468 = !DILocation(line: 270, column: 34, scope: !466)
!469 = !DILocalVariable(name: "key", arg: 2, scope: !466, file: !6, line: 270, type: !17)
!470 = !DILocation(line: 270, column: 52, scope: !466)
!471 = !DILocalVariable(name: "value", arg: 3, scope: !466, file: !6, line: 270, type: !17)
!472 = !DILocation(line: 270, column: 69, scope: !466)
!473 = !DILocalVariable(name: "hashval", scope: !466, file: !6, line: 272, type: !7)
!474 = !DILocation(line: 272, column: 11, scope: !466)
!475 = !DILocation(line: 272, column: 21, scope: !466)
!476 = !DILocation(line: 272, column: 27, scope: !466)
!477 = !DILocation(line: 272, column: 38, scope: !466)
!478 = !DILocalVariable(name: "pos", scope: !466, file: !6, line: 273, type: !7)
!479 = !DILocation(line: 273, column: 11, scope: !466)
!480 = !DILocation(line: 273, column: 17, scope: !466)
!481 = !DILocation(line: 273, column: 25, scope: !466)
!482 = !DILocalVariable(name: "bucket", scope: !466, file: !6, line: 274, type: !243)
!483 = !DILocation(line: 274, column: 22, scope: !466)
!484 = !DILocation(line: 274, column: 31, scope: !466)
!485 = !DILocation(line: 274, column: 37, scope: !466)
!486 = !DILocation(line: 274, column: 47, scope: !466)
!487 = !DILocation(line: 274, column: 45, scope: !466)
!488 = !DILocalVariable(name: "entry", scope: !466, file: !6, line: 275, type: !113)
!489 = !DILocation(line: 275, column: 21, scope: !466)
!490 = !DILocalVariable(name: "entry_end", scope: !466, file: !6, line: 275, type: !113)
!491 = !DILocation(line: 275, column: 29, scope: !466)
!492 = !DILocation(line: 277, column: 6, scope: !493)
!493 = distinct !DILexicalBlock(scope: !466, file: !6, line: 277, column: 6)
!494 = !DILocation(line: 277, column: 14, scope: !493)
!495 = !DILocation(line: 277, column: 19, scope: !493)
!496 = !DILocation(line: 277, column: 26, scope: !493)
!497 = !DILocation(line: 277, column: 34, scope: !493)
!498 = !DILocation(line: 277, column: 23, scope: !493)
!499 = !DILocation(line: 277, column: 6, scope: !466)
!500 = !DILocalVariable(name: "new_total", scope: !501, file: !6, line: 278, type: !7)
!501 = distinct !DILexicalBlock(scope: !493, file: !6, line: 277, column: 41)
!502 = !DILocation(line: 278, column: 12, scope: !501)
!503 = !DILocation(line: 278, column: 24, scope: !501)
!504 = !DILocation(line: 278, column: 32, scope: !501)
!505 = !DILocation(line: 278, column: 38, scope: !501)
!506 = !DILocalVariable(name: "tmp", scope: !501, file: !6, line: 279, type: !113)
!507 = !DILocation(line: 279, column: 22, scope: !501)
!508 = !DILocation(line: 279, column: 41, scope: !501)
!509 = !DILocation(line: 279, column: 49, scope: !501)
!510 = !DILocation(line: 279, column: 58, scope: !501)
!511 = !DILocation(line: 279, column: 28, scope: !501)
!512 = !DILocation(line: 280, column: 7, scope: !513)
!513 = distinct !DILexicalBlock(scope: !501, file: !6, line: 280, column: 7)
!514 = !DILocation(line: 280, column: 11, scope: !513)
!515 = !DILocation(line: 280, column: 7, scope: !501)
!516 = !DILocation(line: 281, column: 12, scope: !513)
!517 = !DILocation(line: 281, column: 11, scope: !513)
!518 = !DILocation(line: 281, column: 4, scope: !513)
!519 = !DILocation(line: 282, column: 21, scope: !501)
!520 = !DILocation(line: 282, column: 3, scope: !501)
!521 = !DILocation(line: 282, column: 11, scope: !501)
!522 = !DILocation(line: 282, column: 19, scope: !501)
!523 = !DILocation(line: 283, column: 19, scope: !501)
!524 = !DILocation(line: 283, column: 3, scope: !501)
!525 = !DILocation(line: 283, column: 11, scope: !501)
!526 = !DILocation(line: 283, column: 17, scope: !501)
!527 = !DILocation(line: 284, column: 2, scope: !501)
!528 = !DILocation(line: 286, column: 10, scope: !466)
!529 = !DILocation(line: 286, column: 18, scope: !466)
!530 = !DILocation(line: 286, column: 8, scope: !466)
!531 = !DILocation(line: 287, column: 14, scope: !466)
!532 = !DILocation(line: 287, column: 22, scope: !466)
!533 = !DILocation(line: 287, column: 30, scope: !466)
!534 = !DILocation(line: 287, column: 20, scope: !466)
!535 = !DILocation(line: 287, column: 12, scope: !466)
!536 = !DILocation(line: 288, column: 2, scope: !466)
!537 = !DILocation(line: 288, column: 9, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !6, line: 288, column: 2)
!539 = distinct !DILexicalBlock(scope: !466, file: !6, line: 288, column: 2)
!540 = !DILocation(line: 288, column: 17, scope: !538)
!541 = !DILocation(line: 288, column: 15, scope: !538)
!542 = !DILocation(line: 288, column: 2, scope: !539)
!543 = !DILocation(line: 289, column: 7, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !6, line: 289, column: 7)
!545 = distinct !DILexicalBlock(scope: !538, file: !6, line: 288, column: 37)
!546 = !DILocation(line: 289, column: 18, scope: !544)
!547 = !DILocation(line: 289, column: 25, scope: !544)
!548 = !DILocation(line: 289, column: 15, scope: !544)
!549 = !DILocation(line: 289, column: 7, scope: !545)
!550 = !DILocation(line: 290, column: 4, scope: !544)
!551 = !DILocation(line: 291, column: 7, scope: !552)
!552 = distinct !DILexicalBlock(scope: !545, file: !6, line: 291, column: 7)
!553 = !DILocation(line: 291, column: 13, scope: !552)
!554 = !DILocation(line: 291, column: 25, scope: !552)
!555 = !DILocation(line: 291, column: 30, scope: !552)
!556 = !DILocation(line: 291, column: 37, scope: !552)
!557 = !DILocation(line: 291, column: 42, scope: !552)
!558 = !DILocation(line: 291, column: 7, scope: !545)
!559 = !DILocation(line: 292, column: 4, scope: !552)
!560 = !DILocation(line: 293, column: 2, scope: !545)
!561 = !DILocation(line: 288, column: 33, scope: !538)
!562 = !DILocation(line: 288, column: 2, scope: !538)
!563 = distinct !{!563, !542, !564, !308}
!564 = !DILocation(line: 293, column: 2, scope: !539)
!565 = !DILocation(line: 295, column: 15, scope: !466)
!566 = !DILocation(line: 295, column: 2, scope: !466)
!567 = !DILocation(line: 295, column: 9, scope: !466)
!568 = !DILocation(line: 295, column: 13, scope: !466)
!569 = !DILocation(line: 296, column: 17, scope: !466)
!570 = !DILocation(line: 296, column: 2, scope: !466)
!571 = !DILocation(line: 296, column: 9, scope: !466)
!572 = !DILocation(line: 296, column: 15, scope: !466)
!573 = !DILocation(line: 297, column: 19, scope: !466)
!574 = !DILocation(line: 297, column: 2, scope: !466)
!575 = !DILocation(line: 297, column: 9, scope: !466)
!576 = !DILocation(line: 297, column: 17, scope: !466)
!577 = !DILocation(line: 298, column: 2, scope: !466)
!578 = !DILocation(line: 298, column: 10, scope: !466)
!579 = !DILocation(line: 298, column: 14, scope: !466)
!580 = !DILocation(line: 299, column: 2, scope: !466)
!581 = !DILocation(line: 299, column: 8, scope: !466)
!582 = !DILocation(line: 299, column: 13, scope: !466)
!583 = !DILocation(line: 300, column: 2, scope: !466)
!584 = !DILocation(line: 301, column: 1, scope: !466)
!585 = distinct !DISubprogram(name: "hash_find", scope: !6, file: !6, line: 323, type: !586, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !49)
!586 = !DISubroutineType(types: !587)
!587 = !{!19, !588, !17}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!590 = !DILocalVariable(name: "hash", arg: 1, scope: !585, file: !6, line: 323, type: !588)
!591 = !DILocation(line: 323, column: 36, scope: !585)
!592 = !DILocalVariable(name: "key", arg: 2, scope: !585, file: !6, line: 323, type: !17)
!593 = !DILocation(line: 323, column: 54, scope: !585)
!594 = !DILocalVariable(name: "entry", scope: !585, file: !6, line: 325, type: !595)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!597 = !DILocation(line: 325, column: 27, scope: !585)
!598 = !DILocation(line: 327, column: 26, scope: !585)
!599 = !DILocation(line: 327, column: 32, scope: !585)
!600 = !DILocation(line: 327, column: 37, scope: !585)
!601 = !DILocation(line: 327, column: 43, scope: !585)
!602 = !DILocation(line: 327, column: 54, scope: !585)
!603 = !DILocation(line: 327, column: 10, scope: !585)
!604 = !DILocation(line: 327, column: 8, scope: !585)
!605 = !DILocation(line: 328, column: 6, scope: !606)
!606 = distinct !DILexicalBlock(scope: !585, file: !6, line: 328, column: 6)
!607 = !DILocation(line: 328, column: 6, scope: !585)
!608 = !DILocation(line: 329, column: 18, scope: !606)
!609 = !DILocation(line: 329, column: 25, scope: !606)
!610 = !DILocation(line: 329, column: 3, scope: !606)
!611 = !DILocation(line: 330, column: 2, scope: !585)
!612 = !DILocation(line: 331, column: 1, scope: !585)
!613 = distinct !DISubprogram(name: "hash_find_entry", scope: !6, file: !6, line: 303, type: !614, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !49)
!614 = !DISubroutineType(types: !615)
!615 = !{!113, !588, !117, !7}
!616 = !DILocalVariable(name: "hash", arg: 1, scope: !613, file: !6, line: 303, type: !588)
!617 = !DILocation(line: 303, column: 69, scope: !613)
!618 = !DILocalVariable(name: "key", arg: 2, scope: !613, file: !6, line: 304, type: !117)
!619 = !DILocation(line: 304, column: 21, scope: !613)
!620 = !DILocalVariable(name: "hashval", arg: 3, scope: !613, file: !6, line: 305, type: !7)
!621 = !DILocation(line: 305, column: 18, scope: !613)
!622 = !DILocalVariable(name: "pos", scope: !613, file: !6, line: 307, type: !7)
!623 = !DILocation(line: 307, column: 11, scope: !613)
!624 = !DILocation(line: 307, column: 17, scope: !613)
!625 = !DILocation(line: 307, column: 25, scope: !613)
!626 = !DILocalVariable(name: "bucket", scope: !613, file: !6, line: 308, type: !627)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!629 = !DILocation(line: 308, column: 28, scope: !613)
!630 = !DILocation(line: 308, column: 37, scope: !613)
!631 = !DILocation(line: 308, column: 43, scope: !613)
!632 = !DILocation(line: 308, column: 53, scope: !613)
!633 = !DILocation(line: 308, column: 51, scope: !613)
!634 = !DILocalVariable(name: "entry", scope: !613, file: !6, line: 309, type: !113)
!635 = !DILocation(line: 309, column: 21, scope: !613)
!636 = !DILocalVariable(name: "entry_end", scope: !613, file: !6, line: 309, type: !113)
!637 = !DILocation(line: 309, column: 29, scope: !613)
!638 = !DILocation(line: 311, column: 10, scope: !613)
!639 = !DILocation(line: 311, column: 18, scope: !613)
!640 = !DILocation(line: 311, column: 8, scope: !613)
!641 = !DILocation(line: 312, column: 14, scope: !613)
!642 = !DILocation(line: 312, column: 22, scope: !613)
!643 = !DILocation(line: 312, column: 30, scope: !613)
!644 = !DILocation(line: 312, column: 20, scope: !613)
!645 = !DILocation(line: 312, column: 12, scope: !613)
!646 = !DILocation(line: 313, column: 2, scope: !613)
!647 = !DILocation(line: 313, column: 9, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !6, line: 313, column: 2)
!649 = distinct !DILexicalBlock(scope: !613, file: !6, line: 313, column: 2)
!650 = !DILocation(line: 313, column: 17, scope: !648)
!651 = !DILocation(line: 313, column: 15, scope: !648)
!652 = !DILocation(line: 313, column: 2, scope: !649)
!653 = !DILocation(line: 314, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !6, line: 314, column: 7)
!655 = distinct !DILexicalBlock(scope: !648, file: !6, line: 313, column: 37)
!656 = !DILocation(line: 314, column: 18, scope: !654)
!657 = !DILocation(line: 314, column: 25, scope: !654)
!658 = !DILocation(line: 314, column: 15, scope: !654)
!659 = !DILocation(line: 314, column: 7, scope: !655)
!660 = !DILocation(line: 315, column: 4, scope: !654)
!661 = !DILocation(line: 316, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !655, file: !6, line: 316, column: 7)
!663 = !DILocation(line: 316, column: 13, scope: !662)
!664 = !DILocation(line: 316, column: 25, scope: !662)
!665 = !DILocation(line: 316, column: 30, scope: !662)
!666 = !DILocation(line: 316, column: 37, scope: !662)
!667 = !DILocation(line: 316, column: 42, scope: !662)
!668 = !DILocation(line: 316, column: 7, scope: !655)
!669 = !DILocation(line: 317, column: 11, scope: !662)
!670 = !DILocation(line: 317, column: 4, scope: !662)
!671 = !DILocation(line: 318, column: 2, scope: !655)
!672 = !DILocation(line: 313, column: 33, scope: !648)
!673 = !DILocation(line: 313, column: 2, scope: !648)
!674 = distinct !{!674, !652, !675, !308}
!675 = !DILocation(line: 318, column: 2, scope: !649)
!676 = !DILocation(line: 320, column: 2, scope: !613)
!677 = !DILocation(line: 321, column: 1, scope: !613)
!678 = distinct !DISubprogram(name: "hash_del", scope: !6, file: !6, line: 333, type: !679, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !49)
!679 = !DISubroutineType(types: !680)
!680 = !{!16, !94, !17}
!681 = !DILocalVariable(name: "hash", arg: 1, scope: !678, file: !6, line: 333, type: !94)
!682 = !DILocation(line: 333, column: 27, scope: !678)
!683 = !DILocalVariable(name: "key", arg: 2, scope: !678, file: !6, line: 333, type: !17)
!684 = !DILocation(line: 333, column: 45, scope: !678)
!685 = !DILocalVariable(name: "hashval", scope: !678, file: !6, line: 335, type: !7)
!686 = !DILocation(line: 335, column: 11, scope: !678)
!687 = !DILocation(line: 335, column: 21, scope: !678)
!688 = !DILocation(line: 335, column: 27, scope: !678)
!689 = !DILocation(line: 335, column: 38, scope: !678)
!690 = !DILocalVariable(name: "pos", scope: !678, file: !6, line: 336, type: !7)
!691 = !DILocation(line: 336, column: 11, scope: !678)
!692 = !DILocation(line: 336, column: 17, scope: !678)
!693 = !DILocation(line: 336, column: 25, scope: !678)
!694 = !DILocalVariable(name: "steps_used", scope: !678, file: !6, line: 337, type: !7)
!695 = !DILocation(line: 337, column: 11, scope: !678)
!696 = !DILocalVariable(name: "steps_total", scope: !678, file: !6, line: 337, type: !7)
!697 = !DILocation(line: 337, column: 23, scope: !678)
!698 = !DILocalVariable(name: "bucket", scope: !678, file: !6, line: 338, type: !243)
!699 = !DILocation(line: 338, column: 22, scope: !678)
!700 = !DILocation(line: 338, column: 31, scope: !678)
!701 = !DILocation(line: 338, column: 37, scope: !678)
!702 = !DILocation(line: 338, column: 47, scope: !678)
!703 = !DILocation(line: 338, column: 45, scope: !678)
!704 = !DILocalVariable(name: "entry", scope: !678, file: !6, line: 339, type: !113)
!705 = !DILocation(line: 339, column: 21, scope: !678)
!706 = !DILocalVariable(name: "entry_end", scope: !678, file: !6, line: 339, type: !113)
!707 = !DILocation(line: 339, column: 29, scope: !678)
!708 = !DILocation(line: 341, column: 26, scope: !678)
!709 = !DILocation(line: 341, column: 32, scope: !678)
!710 = !DILocation(line: 341, column: 37, scope: !678)
!711 = !DILocation(line: 341, column: 10, scope: !678)
!712 = !DILocation(line: 341, column: 8, scope: !678)
!713 = !DILocation(line: 342, column: 6, scope: !714)
!714 = distinct !DILexicalBlock(scope: !678, file: !6, line: 342, column: 6)
!715 = !DILocation(line: 342, column: 12, scope: !714)
!716 = !DILocation(line: 342, column: 6, scope: !678)
!717 = !DILocation(line: 343, column: 3, scope: !714)
!718 = !DILocation(line: 345, column: 6, scope: !719)
!719 = distinct !DILexicalBlock(scope: !678, file: !6, line: 345, column: 6)
!720 = !DILocation(line: 345, column: 12, scope: !719)
!721 = !DILocation(line: 345, column: 6, scope: !678)
!722 = !DILocation(line: 346, column: 3, scope: !719)
!723 = !DILocation(line: 346, column: 9, scope: !719)
!724 = !DILocation(line: 346, column: 28, scope: !719)
!725 = !DILocation(line: 346, column: 35, scope: !719)
!726 = !DILocation(line: 347, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !678, file: !6, line: 347, column: 6)
!728 = !DILocation(line: 347, column: 12, scope: !727)
!729 = !DILocation(line: 347, column: 6, scope: !678)
!730 = !DILocation(line: 348, column: 3, scope: !727)
!731 = !DILocation(line: 348, column: 9, scope: !727)
!732 = !DILocation(line: 348, column: 26, scope: !727)
!733 = !DILocation(line: 348, column: 33, scope: !727)
!734 = !DILocation(line: 350, column: 14, scope: !678)
!735 = !DILocation(line: 350, column: 22, scope: !678)
!736 = !DILocation(line: 350, column: 32, scope: !678)
!737 = !DILocation(line: 350, column: 40, scope: !678)
!738 = !DILocation(line: 350, column: 30, scope: !678)
!739 = !DILocation(line: 350, column: 12, scope: !678)
!740 = !DILocation(line: 351, column: 10, scope: !678)
!741 = !DILocation(line: 351, column: 17, scope: !678)
!742 = !DILocation(line: 351, column: 23, scope: !678)
!743 = !DILocation(line: 352, column: 12, scope: !678)
!744 = !DILocation(line: 352, column: 24, scope: !678)
!745 = !DILocation(line: 352, column: 22, scope: !678)
!746 = !DILocation(line: 352, column: 31, scope: !678)
!747 = !DILocation(line: 351, column: 2, scope: !678)
!748 = !DILocation(line: 354, column: 2, scope: !678)
!749 = !DILocation(line: 354, column: 10, scope: !678)
!750 = !DILocation(line: 354, column: 14, scope: !678)
!751 = !DILocation(line: 355, column: 2, scope: !678)
!752 = !DILocation(line: 355, column: 8, scope: !678)
!753 = !DILocation(line: 355, column: 13, scope: !678)
!754 = !DILocation(line: 357, column: 15, scope: !678)
!755 = !DILocation(line: 357, column: 23, scope: !678)
!756 = !DILocation(line: 357, column: 28, scope: !678)
!757 = !DILocation(line: 357, column: 13, scope: !678)
!758 = !DILocation(line: 358, column: 16, scope: !678)
!759 = !DILocation(line: 358, column: 24, scope: !678)
!760 = !DILocation(line: 358, column: 30, scope: !678)
!761 = !DILocation(line: 358, column: 14, scope: !678)
!762 = !DILocation(line: 359, column: 6, scope: !763)
!763 = distinct !DILexicalBlock(scope: !678, file: !6, line: 359, column: 6)
!764 = !DILocation(line: 359, column: 17, scope: !763)
!765 = !DILocation(line: 359, column: 23, scope: !763)
!766 = !DILocation(line: 359, column: 21, scope: !763)
!767 = !DILocation(line: 359, column: 6, scope: !678)
!768 = !DILocalVariable(name: "tmp", scope: !769, file: !6, line: 360, type: !113)
!769 = distinct !DILexicalBlock(scope: !763, file: !6, line: 359, column: 36)
!770 = !DILocation(line: 360, column: 22, scope: !769)
!771 = !DILocation(line: 360, column: 41, scope: !769)
!772 = !DILocation(line: 360, column: 49, scope: !769)
!773 = !DILocation(line: 360, column: 58, scope: !769)
!774 = !DILocation(line: 360, column: 69, scope: !769)
!775 = !DILocation(line: 360, column: 28, scope: !769)
!776 = !DILocation(line: 362, column: 7, scope: !777)
!777 = distinct !DILexicalBlock(scope: !769, file: !6, line: 362, column: 7)
!778 = !DILocation(line: 362, column: 7, scope: !769)
!779 = !DILocation(line: 363, column: 22, scope: !780)
!780 = distinct !DILexicalBlock(scope: !777, file: !6, line: 362, column: 12)
!781 = !DILocation(line: 363, column: 4, scope: !780)
!782 = !DILocation(line: 363, column: 12, scope: !780)
!783 = !DILocation(line: 363, column: 20, scope: !780)
!784 = !DILocation(line: 364, column: 21, scope: !780)
!785 = !DILocation(line: 364, column: 32, scope: !780)
!786 = !DILocation(line: 364, column: 37, scope: !780)
!787 = !DILocation(line: 364, column: 4, scope: !780)
!788 = !DILocation(line: 364, column: 12, scope: !780)
!789 = !DILocation(line: 364, column: 18, scope: !780)
!790 = !DILocation(line: 365, column: 3, scope: !780)
!791 = !DILocation(line: 366, column: 2, scope: !769)
!792 = !DILocation(line: 368, column: 2, scope: !678)
!793 = !DILocation(line: 369, column: 1, scope: !678)
!794 = distinct !DISubprogram(name: "hash_get_count", scope: !6, file: !6, line: 371, type: !795, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !49)
!795 = !DISubroutineType(types: !796)
!796 = !{!7, !588}
!797 = !DILocalVariable(name: "hash", arg: 1, scope: !794, file: !6, line: 371, type: !588)
!798 = !DILocation(line: 371, column: 44, scope: !794)
!799 = !DILocation(line: 373, column: 9, scope: !794)
!800 = !DILocation(line: 373, column: 15, scope: !794)
!801 = !DILocation(line: 373, column: 2, scope: !794)
!802 = distinct !DISubprogram(name: "hash_iter_init", scope: !6, file: !6, line: 376, type: !803, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !49)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !588, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_iter", file: !807, line: 8, size: 128, elements: !808)
!807 = !DIFile(filename: "common/hash.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a7f0d7c578de44c7172c81fd9e8cd22")
!808 = !{!809, !810, !811}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !806, file: !807, line: 9, baseType: !588, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "bucket", scope: !806, file: !807, line: 10, baseType: !7, size: 32, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !806, file: !807, line: 11, baseType: !16, size: 32, offset: 96)
!812 = !DILocalVariable(name: "hash", arg: 1, scope: !802, file: !6, line: 376, type: !588)
!813 = !DILocation(line: 376, column: 40, scope: !802)
!814 = !DILocalVariable(name: "iter", arg: 2, scope: !802, file: !6, line: 376, type: !805)
!815 = !DILocation(line: 376, column: 64, scope: !802)
!816 = !DILocation(line: 378, column: 15, scope: !802)
!817 = !DILocation(line: 378, column: 2, scope: !802)
!818 = !DILocation(line: 378, column: 8, scope: !802)
!819 = !DILocation(line: 378, column: 13, scope: !802)
!820 = !DILocation(line: 379, column: 2, scope: !802)
!821 = !DILocation(line: 379, column: 8, scope: !802)
!822 = !DILocation(line: 379, column: 15, scope: !802)
!823 = !DILocation(line: 380, column: 2, scope: !802)
!824 = !DILocation(line: 380, column: 8, scope: !802)
!825 = !DILocation(line: 380, column: 14, scope: !802)
!826 = !DILocation(line: 381, column: 1, scope: !802)
!827 = distinct !DISubprogram(name: "hash_iter_next", scope: !6, file: !6, line: 383, type: !828, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !49)
!828 = !DISubroutineType(types: !829)
!829 = !{!830, !805, !831, !831}
!830 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!832 = !DILocalVariable(name: "iter", arg: 1, scope: !827, file: !6, line: 383, type: !805)
!833 = !DILocation(line: 383, column: 39, scope: !827)
!834 = !DILocalVariable(name: "key", arg: 2, scope: !827, file: !6, line: 383, type: !831)
!835 = !DILocation(line: 383, column: 58, scope: !827)
!836 = !DILocalVariable(name: "value", arg: 3, scope: !827, file: !6, line: 384, type: !831)
!837 = !DILocation(line: 384, column: 21, scope: !827)
!838 = !DILocalVariable(name: "b", scope: !827, file: !6, line: 386, type: !627)
!839 = !DILocation(line: 386, column: 28, scope: !827)
!840 = !DILocation(line: 386, column: 32, scope: !827)
!841 = !DILocation(line: 386, column: 38, scope: !827)
!842 = !DILocation(line: 386, column: 44, scope: !827)
!843 = !DILocation(line: 386, column: 54, scope: !827)
!844 = !DILocation(line: 386, column: 60, scope: !827)
!845 = !DILocation(line: 386, column: 52, scope: !827)
!846 = !DILocalVariable(name: "e", scope: !827, file: !6, line: 387, type: !595)
!847 = !DILocation(line: 387, column: 27, scope: !827)
!848 = !DILocation(line: 389, column: 2, scope: !827)
!849 = !DILocation(line: 389, column: 8, scope: !827)
!850 = !DILocation(line: 389, column: 13, scope: !827)
!851 = !DILocation(line: 391, column: 16, scope: !852)
!852 = distinct !DILexicalBlock(scope: !827, file: !6, line: 391, column: 6)
!853 = !DILocation(line: 391, column: 22, scope: !852)
!854 = !DILocation(line: 391, column: 31, scope: !852)
!855 = !DILocation(line: 391, column: 34, scope: !852)
!856 = !DILocation(line: 391, column: 28, scope: !852)
!857 = !DILocation(line: 391, column: 6, scope: !827)
!858 = !DILocation(line: 392, column: 3, scope: !859)
!859 = distinct !DILexicalBlock(scope: !852, file: !6, line: 391, column: 40)
!860 = !DILocation(line: 392, column: 9, scope: !859)
!861 = !DILocation(line: 392, column: 15, scope: !859)
!862 = !DILocation(line: 394, column: 8, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !6, line: 394, column: 3)
!864 = !DILocation(line: 394, column: 14, scope: !863)
!865 = !DILocation(line: 394, column: 20, scope: !863)
!866 = !DILocation(line: 394, column: 24, scope: !867)
!867 = distinct !DILexicalBlock(scope: !863, file: !6, line: 394, column: 3)
!868 = !DILocation(line: 394, column: 30, scope: !867)
!869 = !DILocation(line: 394, column: 37, scope: !867)
!870 = !DILocation(line: 394, column: 3, scope: !863)
!871 = !DILocation(line: 396, column: 8, scope: !872)
!872 = distinct !DILexicalBlock(scope: !867, file: !6, line: 395, column: 24)
!873 = !DILocation(line: 396, column: 14, scope: !872)
!874 = !DILocation(line: 396, column: 20, scope: !872)
!875 = !DILocation(line: 396, column: 30, scope: !872)
!876 = !DILocation(line: 396, column: 36, scope: !872)
!877 = !DILocation(line: 396, column: 28, scope: !872)
!878 = !DILocation(line: 396, column: 6, scope: !872)
!879 = !DILocation(line: 398, column: 8, scope: !880)
!880 = distinct !DILexicalBlock(scope: !872, file: !6, line: 398, column: 8)
!881 = !DILocation(line: 398, column: 11, scope: !880)
!882 = !DILocation(line: 398, column: 16, scope: !880)
!883 = !DILocation(line: 398, column: 8, scope: !872)
!884 = !DILocation(line: 399, column: 5, scope: !880)
!885 = !DILocation(line: 400, column: 3, scope: !872)
!886 = !DILocation(line: 395, column: 8, scope: !867)
!887 = !DILocation(line: 395, column: 14, scope: !867)
!888 = !DILocation(line: 395, column: 20, scope: !867)
!889 = !DILocation(line: 394, column: 3, scope: !867)
!890 = distinct !{!890, !870, !891, !308}
!891 = !DILocation(line: 400, column: 3, scope: !863)
!892 = !DILocation(line: 402, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !859, file: !6, line: 402, column: 7)
!894 = !DILocation(line: 402, column: 13, scope: !893)
!895 = !DILocation(line: 402, column: 20, scope: !893)
!896 = !DILocation(line: 402, column: 7, scope: !859)
!897 = !DILocation(line: 403, column: 4, scope: !893)
!898 = !DILocation(line: 404, column: 2, scope: !859)
!899 = !DILocation(line: 406, column: 6, scope: !827)
!900 = !DILocation(line: 406, column: 9, scope: !827)
!901 = !DILocation(line: 406, column: 19, scope: !827)
!902 = !DILocation(line: 406, column: 25, scope: !827)
!903 = !DILocation(line: 406, column: 17, scope: !827)
!904 = !DILocation(line: 406, column: 4, scope: !827)
!905 = !DILocation(line: 408, column: 6, scope: !906)
!906 = distinct !DILexicalBlock(scope: !827, file: !6, line: 408, column: 6)
!907 = !DILocation(line: 408, column: 12, scope: !906)
!908 = !DILocation(line: 408, column: 6, scope: !827)
!909 = !DILocation(line: 409, column: 12, scope: !906)
!910 = !DILocation(line: 409, column: 15, scope: !906)
!911 = !DILocation(line: 409, column: 4, scope: !906)
!912 = !DILocation(line: 409, column: 10, scope: !906)
!913 = !DILocation(line: 409, column: 3, scope: !906)
!914 = !DILocation(line: 410, column: 6, scope: !915)
!915 = distinct !DILexicalBlock(scope: !827, file: !6, line: 410, column: 6)
!916 = !DILocation(line: 410, column: 10, scope: !915)
!917 = !DILocation(line: 410, column: 6, scope: !827)
!918 = !DILocation(line: 411, column: 10, scope: !915)
!919 = !DILocation(line: 411, column: 13, scope: !915)
!920 = !DILocation(line: 411, column: 4, scope: !915)
!921 = !DILocation(line: 411, column: 8, scope: !915)
!922 = !DILocation(line: 411, column: 3, scope: !915)
!923 = !DILocation(line: 413, column: 2, scope: !827)
!924 = !DILocation(line: 414, column: 1, scope: !827)
