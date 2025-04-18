; ModuleID = 'src/minizip/ioapi.c'
source_filename = "src/minizip/ioapi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlib_filefunc64_32_def_s = type { %struct.zlib_filefunc64_def_s, ptr, ptr, ptr }
%struct.zlib_filefunc64_def_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.zlib_filefunc_def_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1, !dbg !12

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @call_zopen64(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !94 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !160, metadata !DIExpression()), !dbg !161
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !162, metadata !DIExpression()), !dbg !163
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !164, metadata !DIExpression()), !dbg !165
  %8 = load ptr, ptr %5, align 8, !dbg !166
  %9 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %8, i32 0, i32 0, !dbg !168
  %10 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %9, i32 0, i32 0, !dbg !169
  %11 = load ptr, ptr %10, align 8, !dbg !169
  %12 = icmp ne ptr %11, null, !dbg !170
  br i1 %12, label %13, label %25, !dbg !171

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8, !dbg !172
  %15 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %14, i32 0, i32 0, !dbg !173
  %16 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %15, i32 0, i32 0, !dbg !174
  %17 = load ptr, ptr %16, align 8, !dbg !174
  %18 = load ptr, ptr %5, align 8, !dbg !175
  %19 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %18, i32 0, i32 0, !dbg !176
  %20 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %19, i32 0, i32 8, !dbg !177
  %21 = load ptr, ptr %20, align 8, !dbg !177
  %22 = load ptr, ptr %6, align 8, !dbg !178
  %23 = load i32, ptr %7, align 4, !dbg !179
  %24 = call ptr %17(ptr noundef %21, ptr noundef %22, i32 noundef %23), !dbg !180
  store ptr %24, ptr %4, align 8, !dbg !181
  br label %36, !dbg !181

25:                                               ; preds = %3
  %26 = load ptr, ptr %5, align 8, !dbg !182
  %27 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %26, i32 0, i32 1, !dbg !184
  %28 = load ptr, ptr %27, align 8, !dbg !184
  %29 = load ptr, ptr %5, align 8, !dbg !185
  %30 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %29, i32 0, i32 0, !dbg !186
  %31 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %30, i32 0, i32 8, !dbg !187
  %32 = load ptr, ptr %31, align 8, !dbg !187
  %33 = load ptr, ptr %6, align 8, !dbg !188
  %34 = load i32, ptr %7, align 4, !dbg !189
  %35 = call ptr %28(ptr noundef %32, ptr noundef %33, i32 noundef %34), !dbg !190
  store ptr %35, ptr %4, align 8, !dbg !191
  br label %36, !dbg !191

36:                                               ; preds = %25, %13
  %37 = load ptr, ptr %4, align 8, !dbg !192
  ret ptr %37, !dbg !192
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @call_zseek64(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 !dbg !193 {
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !196, metadata !DIExpression()), !dbg !197
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !198, metadata !DIExpression()), !dbg !199
  store i64 %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !200, metadata !DIExpression()), !dbg !201
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !202, metadata !DIExpression()), !dbg !203
  %11 = load ptr, ptr %6, align 8, !dbg !204
  %12 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %11, i32 0, i32 0, !dbg !206
  %13 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %12, i32 0, i32 5, !dbg !207
  %14 = load ptr, ptr %13, align 8, !dbg !207
  %15 = icmp ne ptr %14, null, !dbg !208
  br i1 %15, label %16, label %29, !dbg !209

16:                                               ; preds = %4
  %17 = load ptr, ptr %6, align 8, !dbg !210
  %18 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %17, i32 0, i32 0, !dbg !211
  %19 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %18, i32 0, i32 5, !dbg !212
  %20 = load ptr, ptr %19, align 8, !dbg !212
  %21 = load ptr, ptr %6, align 8, !dbg !213
  %22 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %21, i32 0, i32 0, !dbg !214
  %23 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %22, i32 0, i32 8, !dbg !215
  %24 = load ptr, ptr %23, align 8, !dbg !215
  %25 = load ptr, ptr %7, align 8, !dbg !216
  %26 = load i64, ptr %8, align 8, !dbg !217
  %27 = load i32, ptr %9, align 4, !dbg !218
  %28 = call i64 %20(ptr noundef %24, ptr noundef %25, i64 noundef %26, i32 noundef %27), !dbg !219
  store i64 %28, ptr %5, align 8, !dbg !220
  br label %47, !dbg !220

29:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !221, metadata !DIExpression()), !dbg !223
  %30 = load i64, ptr %8, align 8, !dbg !224
  store i64 %30, ptr %10, align 8, !dbg !223
  %31 = load i64, ptr %10, align 8, !dbg !225
  %32 = load i64, ptr %8, align 8, !dbg !227
  %33 = icmp ne i64 %31, %32, !dbg !228
  br i1 %33, label %34, label %35, !dbg !229

34:                                               ; preds = %29
  store i64 -1, ptr %5, align 8, !dbg !230
  br label %47, !dbg !230

35:                                               ; preds = %29
  %36 = load ptr, ptr %6, align 8, !dbg !231
  %37 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %36, i32 0, i32 3, !dbg !232
  %38 = load ptr, ptr %37, align 8, !dbg !232
  %39 = load ptr, ptr %6, align 8, !dbg !233
  %40 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %39, i32 0, i32 0, !dbg !234
  %41 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %40, i32 0, i32 8, !dbg !235
  %42 = load ptr, ptr %41, align 8, !dbg !235
  %43 = load ptr, ptr %7, align 8, !dbg !236
  %44 = load i64, ptr %10, align 8, !dbg !237
  %45 = load i32, ptr %9, align 4, !dbg !238
  %46 = call i64 %38(ptr noundef %42, ptr noundef %43, i64 noundef %44, i32 noundef %45), !dbg !239
  store i64 %46, ptr %5, align 8, !dbg !240
  br label %47, !dbg !240

47:                                               ; preds = %35, %34, %16
  %48 = load i64, ptr %5, align 8, !dbg !241
  ret i64 %48, !dbg !241
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @call_ztell64(ptr noundef %0, ptr noundef %1) #0 !dbg !242 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !245, metadata !DIExpression()), !dbg !246
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !247, metadata !DIExpression()), !dbg !248
  %7 = load ptr, ptr %4, align 8, !dbg !249
  %8 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %7, i32 0, i32 0, !dbg !251
  %9 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %8, i32 0, i32 5, !dbg !252
  %10 = load ptr, ptr %9, align 8, !dbg !252
  %11 = icmp ne ptr %10, null, !dbg !253
  br i1 %11, label %12, label %23, !dbg !254

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !dbg !255
  %14 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %13, i32 0, i32 0, !dbg !256
  %15 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %14, i32 0, i32 4, !dbg !257
  %16 = load ptr, ptr %15, align 8, !dbg !257
  %17 = load ptr, ptr %4, align 8, !dbg !258
  %18 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %17, i32 0, i32 0, !dbg !259
  %19 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %18, i32 0, i32 8, !dbg !260
  %20 = load ptr, ptr %19, align 8, !dbg !260
  %21 = load ptr, ptr %5, align 8, !dbg !261
  %22 = call i64 %16(ptr noundef %20, ptr noundef %21), !dbg !262
  store i64 %22, ptr %3, align 8, !dbg !263
  br label %38, !dbg !263

23:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !264, metadata !DIExpression()), !dbg !266
  %24 = load ptr, ptr %4, align 8, !dbg !267
  %25 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %24, i32 0, i32 2, !dbg !268
  %26 = load ptr, ptr %25, align 8, !dbg !268
  %27 = load ptr, ptr %4, align 8, !dbg !269
  %28 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %27, i32 0, i32 0, !dbg !270
  %29 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %28, i32 0, i32 8, !dbg !271
  %30 = load ptr, ptr %29, align 8, !dbg !271
  %31 = load ptr, ptr %5, align 8, !dbg !272
  %32 = call i64 %26(ptr noundef %30, ptr noundef %31), !dbg !273
  store i64 %32, ptr %6, align 8, !dbg !266
  %33 = load i64, ptr %6, align 8, !dbg !274
  %34 = icmp eq i64 %33, 4294967295, !dbg !276
  br i1 %34, label %35, label %36, !dbg !277

35:                                               ; preds = %23
  store i64 -1, ptr %3, align 8, !dbg !278
  br label %38, !dbg !278

36:                                               ; preds = %23
  %37 = load i64, ptr %6, align 8, !dbg !279
  store i64 %37, ptr %3, align 8, !dbg !280
  br label %38, !dbg !280

38:                                               ; preds = %36, %35, %12
  %39 = load i64, ptr %3, align 8, !dbg !281
  ret i64 %39, !dbg !281
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef %0, ptr noundef %1) #0 !dbg !282 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !300, metadata !DIExpression()), !dbg !301
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !302, metadata !DIExpression()), !dbg !303
  %5 = load ptr, ptr %3, align 8, !dbg !304
  %6 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %5, i32 0, i32 0, !dbg !305
  %7 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %6, i32 0, i32 0, !dbg !306
  store ptr null, ptr %7, align 8, !dbg !307
  %8 = load ptr, ptr %4, align 8, !dbg !308
  %9 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %8, i32 0, i32 0, !dbg !309
  %10 = load ptr, ptr %9, align 8, !dbg !309
  %11 = load ptr, ptr %3, align 8, !dbg !310
  %12 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %11, i32 0, i32 1, !dbg !311
  store ptr %10, ptr %12, align 8, !dbg !312
  %13 = load ptr, ptr %4, align 8, !dbg !313
  %14 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %13, i32 0, i32 7, !dbg !314
  %15 = load ptr, ptr %14, align 8, !dbg !314
  %16 = load ptr, ptr %3, align 8, !dbg !315
  %17 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %16, i32 0, i32 0, !dbg !316
  %18 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %17, i32 0, i32 7, !dbg !317
  store ptr %15, ptr %18, align 8, !dbg !318
  %19 = load ptr, ptr %4, align 8, !dbg !319
  %20 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %19, i32 0, i32 1, !dbg !320
  %21 = load ptr, ptr %20, align 8, !dbg !320
  %22 = load ptr, ptr %3, align 8, !dbg !321
  %23 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %22, i32 0, i32 0, !dbg !322
  %24 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %23, i32 0, i32 1, !dbg !323
  store ptr %21, ptr %24, align 8, !dbg !324
  %25 = load ptr, ptr %4, align 8, !dbg !325
  %26 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %25, i32 0, i32 2, !dbg !326
  %27 = load ptr, ptr %26, align 8, !dbg !326
  %28 = load ptr, ptr %3, align 8, !dbg !327
  %29 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %28, i32 0, i32 0, !dbg !328
  %30 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i32 0, i32 2, !dbg !329
  store ptr %27, ptr %30, align 8, !dbg !330
  %31 = load ptr, ptr %4, align 8, !dbg !331
  %32 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %31, i32 0, i32 3, !dbg !332
  %33 = load ptr, ptr %32, align 8, !dbg !332
  %34 = load ptr, ptr %3, align 8, !dbg !333
  %35 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %34, i32 0, i32 0, !dbg !334
  %36 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %35, i32 0, i32 3, !dbg !335
  store ptr %33, ptr %36, align 8, !dbg !336
  %37 = load ptr, ptr %3, align 8, !dbg !337
  %38 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %37, i32 0, i32 0, !dbg !338
  %39 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %38, i32 0, i32 4, !dbg !339
  store ptr null, ptr %39, align 8, !dbg !340
  %40 = load ptr, ptr %3, align 8, !dbg !341
  %41 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %40, i32 0, i32 0, !dbg !342
  %42 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %41, i32 0, i32 5, !dbg !343
  store ptr null, ptr %42, align 8, !dbg !344
  %43 = load ptr, ptr %4, align 8, !dbg !345
  %44 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %43, i32 0, i32 6, !dbg !346
  %45 = load ptr, ptr %44, align 8, !dbg !346
  %46 = load ptr, ptr %3, align 8, !dbg !347
  %47 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %46, i32 0, i32 0, !dbg !348
  %48 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %47, i32 0, i32 6, !dbg !349
  store ptr %45, ptr %48, align 8, !dbg !350
  %49 = load ptr, ptr %4, align 8, !dbg !351
  %50 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %49, i32 0, i32 7, !dbg !352
  %51 = load ptr, ptr %50, align 8, !dbg !352
  %52 = load ptr, ptr %3, align 8, !dbg !353
  %53 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %52, i32 0, i32 0, !dbg !354
  %54 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %53, i32 0, i32 7, !dbg !355
  store ptr %51, ptr %54, align 8, !dbg !356
  %55 = load ptr, ptr %4, align 8, !dbg !357
  %56 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %55, i32 0, i32 8, !dbg !358
  %57 = load ptr, ptr %56, align 8, !dbg !358
  %58 = load ptr, ptr %3, align 8, !dbg !359
  %59 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %58, i32 0, i32 0, !dbg !360
  %60 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %59, i32 0, i32 8, !dbg !361
  store ptr %57, ptr %60, align 8, !dbg !362
  %61 = load ptr, ptr %4, align 8, !dbg !363
  %62 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %61, i32 0, i32 5, !dbg !364
  %63 = load ptr, ptr %62, align 8, !dbg !364
  %64 = load ptr, ptr %3, align 8, !dbg !365
  %65 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %64, i32 0, i32 3, !dbg !366
  store ptr %63, ptr %65, align 8, !dbg !367
  %66 = load ptr, ptr %4, align 8, !dbg !368
  %67 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %66, i32 0, i32 4, !dbg !369
  %68 = load ptr, ptr %67, align 8, !dbg !369
  %69 = load ptr, ptr %3, align 8, !dbg !370
  %70 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %69, i32 0, i32 2, !dbg !371
  store ptr %68, ptr %70, align 8, !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_fopen_filefunc(ptr noundef %0) #0 !dbg !374 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !378, metadata !DIExpression()), !dbg !379
  %3 = load ptr, ptr %2, align 8, !dbg !380
  %4 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %3, i32 0, i32 0, !dbg !381
  store ptr @fopen_file_func, ptr %4, align 8, !dbg !382
  %5 = load ptr, ptr %2, align 8, !dbg !383
  %6 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %5, i32 0, i32 1, !dbg !384
  store ptr @fread_file_func, ptr %6, align 8, !dbg !385
  %7 = load ptr, ptr %2, align 8, !dbg !386
  %8 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %7, i32 0, i32 2, !dbg !387
  store ptr @fwrite_file_func, ptr %8, align 8, !dbg !388
  %9 = load ptr, ptr %2, align 8, !dbg !389
  %10 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %9, i32 0, i32 4, !dbg !390
  store ptr @ftell_file_func, ptr %10, align 8, !dbg !391
  %11 = load ptr, ptr %2, align 8, !dbg !392
  %12 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %11, i32 0, i32 5, !dbg !393
  store ptr @fseek_file_func, ptr %12, align 8, !dbg !394
  %13 = load ptr, ptr %2, align 8, !dbg !395
  %14 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %13, i32 0, i32 3, !dbg !396
  store ptr @fflush_file_func, ptr %14, align 8, !dbg !397
  %15 = load ptr, ptr %2, align 8, !dbg !398
  %16 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %15, i32 0, i32 6, !dbg !399
  store ptr @fclose_file_func, ptr %16, align 8, !dbg !400
  %17 = load ptr, ptr %2, align 8, !dbg !401
  %18 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %17, i32 0, i32 7, !dbg !402
  store ptr @ferror_file_func, ptr %18, align 8, !dbg !403
  %19 = load ptr, ptr %2, align 8, !dbg !404
  %20 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %19, i32 0, i32 8, !dbg !405
  store ptr null, ptr %20, align 8, !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @fopen_file_func(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !408 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !409, metadata !DIExpression()), !dbg !410
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !411, metadata !DIExpression()), !dbg !412
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.declare(metadata ptr %7, metadata !415, metadata !DIExpression()), !dbg !416
  store ptr null, ptr %7, align 8, !dbg !416
  call void @llvm.dbg.declare(metadata ptr %8, metadata !417, metadata !DIExpression()), !dbg !418
  store ptr null, ptr %8, align 8, !dbg !418
  %9 = load i32, ptr %6, align 4, !dbg !419
  %10 = and i32 %9, 3, !dbg !421
  %11 = icmp eq i32 %10, 1, !dbg !422
  br i1 %11, label %12, label %13, !dbg !423

12:                                               ; preds = %3
  store ptr @.str, ptr %8, align 8, !dbg !424
  br label %25, !dbg !425

13:                                               ; preds = %3
  %14 = load i32, ptr %6, align 4, !dbg !426
  %15 = and i32 %14, 4, !dbg !428
  %16 = icmp ne i32 %15, 0, !dbg !428
  br i1 %16, label %17, label %18, !dbg !429

17:                                               ; preds = %13
  store ptr @.str.1, ptr %8, align 8, !dbg !430
  br label %24, !dbg !431

18:                                               ; preds = %13
  %19 = load i32, ptr %6, align 4, !dbg !432
  %20 = and i32 %19, 8, !dbg !434
  %21 = icmp ne i32 %20, 0, !dbg !434
  br i1 %21, label %22, label %23, !dbg !435

22:                                               ; preds = %18
  store ptr @.str.2, ptr %8, align 8, !dbg !436
  br label %23, !dbg !437

23:                                               ; preds = %22, %18
  br label %24

24:                                               ; preds = %23, %17
  br label %25

25:                                               ; preds = %24, %12
  %26 = load ptr, ptr %5, align 8, !dbg !438
  %27 = icmp ne ptr %26, null, !dbg !440
  br i1 %27, label %28, label %35, !dbg !441

28:                                               ; preds = %25
  %29 = load ptr, ptr %8, align 8, !dbg !442
  %30 = icmp ne ptr %29, null, !dbg !443
  br i1 %30, label %31, label %35, !dbg !444

31:                                               ; preds = %28
  %32 = load ptr, ptr %5, align 8, !dbg !445
  %33 = load ptr, ptr %8, align 8, !dbg !446
  %34 = call noalias ptr @fopen(ptr noundef %32, ptr noundef %33), !dbg !447
  store ptr %34, ptr %7, align 8, !dbg !448
  br label %35, !dbg !449

35:                                               ; preds = %31, %28, %25
  %36 = load ptr, ptr %7, align 8, !dbg !450
  ret ptr %36, !dbg !451
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fread_file_func(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 !dbg !452 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !453, metadata !DIExpression()), !dbg !454
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !455, metadata !DIExpression()), !dbg !456
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !457, metadata !DIExpression()), !dbg !458
  store i64 %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !459, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.declare(metadata ptr %9, metadata !461, metadata !DIExpression()), !dbg !462
  %10 = load ptr, ptr %7, align 8, !dbg !463
  %11 = load i64, ptr %8, align 8, !dbg !464
  %12 = load ptr, ptr %6, align 8, !dbg !465
  %13 = call i64 @fread(ptr noundef %10, i64 noundef 1, i64 noundef %11, ptr noundef %12), !dbg !466
  store i64 %13, ptr %9, align 8, !dbg !467
  %14 = load i64, ptr %9, align 8, !dbg !468
  ret i64 %14, !dbg !469
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fwrite_file_func(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 !dbg !470 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !471, metadata !DIExpression()), !dbg !472
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !473, metadata !DIExpression()), !dbg !474
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !475, metadata !DIExpression()), !dbg !476
  store i64 %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata ptr %9, metadata !479, metadata !DIExpression()), !dbg !480
  %10 = load ptr, ptr %7, align 8, !dbg !481
  %11 = load i64, ptr %8, align 8, !dbg !482
  %12 = load ptr, ptr %6, align 8, !dbg !483
  %13 = call i64 @fwrite(ptr noundef %10, i64 noundef 1, i64 noundef %11, ptr noundef %12), !dbg !484
  store i64 %13, ptr %9, align 8, !dbg !485
  %14 = load i64, ptr %9, align 8, !dbg !486
  ret i64 %14, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ftell_file_func(ptr noundef %0, ptr noundef %1) #0 !dbg !488 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !489, metadata !DIExpression()), !dbg !490
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata ptr %5, metadata !493, metadata !DIExpression()), !dbg !494
  %6 = load ptr, ptr %4, align 8, !dbg !495
  %7 = call i64 @ftell(ptr noundef %6), !dbg !496
  store i64 %7, ptr %5, align 8, !dbg !497
  %8 = load i64, ptr %5, align 8, !dbg !498
  ret i64 %8, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fseek_file_func(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 !dbg !500 {
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !501, metadata !DIExpression()), !dbg !502
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !503, metadata !DIExpression()), !dbg !504
  store i64 %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !505, metadata !DIExpression()), !dbg !506
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !507, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.declare(metadata ptr %10, metadata !509, metadata !DIExpression()), !dbg !510
  store i32 0, ptr %10, align 4, !dbg !510
  call void @llvm.dbg.declare(metadata ptr %11, metadata !511, metadata !DIExpression()), !dbg !512
  %12 = load i32, ptr %9, align 4, !dbg !513
  switch i32 %12, label %16 [
    i32 1, label %13
    i32 2, label %14
    i32 0, label %15
  ], !dbg !514

13:                                               ; preds = %4
  store i32 1, ptr %10, align 4, !dbg !515
  br label %17, !dbg !517

14:                                               ; preds = %4
  store i32 2, ptr %10, align 4, !dbg !518
  br label %17, !dbg !519

15:                                               ; preds = %4
  store i32 0, ptr %10, align 4, !dbg !520
  br label %17, !dbg !521

16:                                               ; preds = %4
  store i64 -1, ptr %5, align 8, !dbg !522
  br label %26, !dbg !522

17:                                               ; preds = %15, %14, %13
  store i64 0, ptr %11, align 8, !dbg !523
  %18 = load ptr, ptr %7, align 8, !dbg !524
  %19 = load i64, ptr %8, align 8, !dbg !526
  %20 = load i32, ptr %10, align 4, !dbg !527
  %21 = call i32 @fseek(ptr noundef %18, i64 noundef %19, i32 noundef %20), !dbg !528
  %22 = icmp ne i32 %21, 0, !dbg !529
  br i1 %22, label %23, label %24, !dbg !530

23:                                               ; preds = %17
  store i64 -1, ptr %11, align 8, !dbg !531
  br label %24, !dbg !532

24:                                               ; preds = %23, %17
  %25 = load i64, ptr %11, align 8, !dbg !533
  store i64 %25, ptr %5, align 8, !dbg !534
  br label %26, !dbg !534

26:                                               ; preds = %24, %16
  %27 = load i64, ptr %5, align 8, !dbg !535
  ret i64 %27, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fflush_file_func(ptr noundef %0, ptr noundef %1) #0 !dbg !536 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !537, metadata !DIExpression()), !dbg !538
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !539, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.declare(metadata ptr %5, metadata !541, metadata !DIExpression()), !dbg !542
  %6 = load ptr, ptr %4, align 8, !dbg !543
  %7 = call i32 @fflush(ptr noundef %6), !dbg !544
  store i32 %7, ptr %5, align 4, !dbg !545
  %8 = load i32, ptr %5, align 4, !dbg !546
  ret i32 %8, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fclose_file_func(ptr noundef %0, ptr noundef %1) #0 !dbg !548 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !549, metadata !DIExpression()), !dbg !550
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !551, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.declare(metadata ptr %5, metadata !553, metadata !DIExpression()), !dbg !554
  %6 = load ptr, ptr %4, align 8, !dbg !555
  %7 = call i32 @fclose(ptr noundef %6), !dbg !556
  store i32 %7, ptr %5, align 4, !dbg !557
  %8 = load i32, ptr %5, align 4, !dbg !558
  ret i32 %8, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ferror_file_func(ptr noundef %0, ptr noundef %1) #0 !dbg !560 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !561, metadata !DIExpression()), !dbg !562
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !563, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.declare(metadata ptr %5, metadata !565, metadata !DIExpression()), !dbg !566
  %6 = load ptr, ptr %4, align 8, !dbg !567
  %7 = call i32 @ferror(ptr noundef %6) #4, !dbg !568
  store i32 %7, ptr %5, align 4, !dbg !569
  %8 = load i32, ptr %5, align 4, !dbg !570
  ret i32 %8, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_fopen64_filefunc(ptr noundef %0) #0 !dbg !572 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !576, metadata !DIExpression()), !dbg !577
  %3 = load ptr, ptr %2, align 8, !dbg !578
  %4 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %3, i32 0, i32 0, !dbg !579
  store ptr @fopen64_file_func, ptr %4, align 8, !dbg !580
  %5 = load ptr, ptr %2, align 8, !dbg !581
  %6 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %5, i32 0, i32 1, !dbg !582
  store ptr @fread_file_func, ptr %6, align 8, !dbg !583
  %7 = load ptr, ptr %2, align 8, !dbg !584
  %8 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %7, i32 0, i32 2, !dbg !585
  store ptr @fwrite_file_func, ptr %8, align 8, !dbg !586
  %9 = load ptr, ptr %2, align 8, !dbg !587
  %10 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %9, i32 0, i32 4, !dbg !588
  store ptr @ftell64_file_func, ptr %10, align 8, !dbg !589
  %11 = load ptr, ptr %2, align 8, !dbg !590
  %12 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %11, i32 0, i32 5, !dbg !591
  store ptr @fseek64_file_func, ptr %12, align 8, !dbg !592
  %13 = load ptr, ptr %2, align 8, !dbg !593
  %14 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %13, i32 0, i32 3, !dbg !594
  store ptr @fflush_file_func, ptr %14, align 8, !dbg !595
  %15 = load ptr, ptr %2, align 8, !dbg !596
  %16 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %15, i32 0, i32 6, !dbg !597
  store ptr @fclose_file_func, ptr %16, align 8, !dbg !598
  %17 = load ptr, ptr %2, align 8, !dbg !599
  %18 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %17, i32 0, i32 7, !dbg !600
  store ptr @ferror_file_func, ptr %18, align 8, !dbg !601
  %19 = load ptr, ptr %2, align 8, !dbg !602
  %20 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %19, i32 0, i32 8, !dbg !603
  store ptr null, ptr %20, align 8, !dbg !604
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @fopen64_file_func(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !606 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !607, metadata !DIExpression()), !dbg !608
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !609, metadata !DIExpression()), !dbg !610
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !611, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.declare(metadata ptr %7, metadata !613, metadata !DIExpression()), !dbg !614
  store ptr null, ptr %7, align 8, !dbg !614
  call void @llvm.dbg.declare(metadata ptr %8, metadata !615, metadata !DIExpression()), !dbg !616
  store ptr null, ptr %8, align 8, !dbg !616
  %9 = load i32, ptr %6, align 4, !dbg !617
  %10 = and i32 %9, 3, !dbg !619
  %11 = icmp eq i32 %10, 1, !dbg !620
  br i1 %11, label %12, label %13, !dbg !621

12:                                               ; preds = %3
  store ptr @.str, ptr %8, align 8, !dbg !622
  br label %25, !dbg !623

13:                                               ; preds = %3
  %14 = load i32, ptr %6, align 4, !dbg !624
  %15 = and i32 %14, 4, !dbg !626
  %16 = icmp ne i32 %15, 0, !dbg !626
  br i1 %16, label %17, label %18, !dbg !627

17:                                               ; preds = %13
  store ptr @.str.1, ptr %8, align 8, !dbg !628
  br label %24, !dbg !629

18:                                               ; preds = %13
  %19 = load i32, ptr %6, align 4, !dbg !630
  %20 = and i32 %19, 8, !dbg !632
  %21 = icmp ne i32 %20, 0, !dbg !632
  br i1 %21, label %22, label %23, !dbg !633

22:                                               ; preds = %18
  store ptr @.str.2, ptr %8, align 8, !dbg !634
  br label %23, !dbg !635

23:                                               ; preds = %22, %18
  br label %24

24:                                               ; preds = %23, %17
  br label %25

25:                                               ; preds = %24, %12
  %26 = load ptr, ptr %5, align 8, !dbg !636
  %27 = icmp ne ptr %26, null, !dbg !638
  br i1 %27, label %28, label %35, !dbg !639

28:                                               ; preds = %25
  %29 = load ptr, ptr %8, align 8, !dbg !640
  %30 = icmp ne ptr %29, null, !dbg !641
  br i1 %30, label %31, label %35, !dbg !642

31:                                               ; preds = %28
  %32 = load ptr, ptr %5, align 8, !dbg !643
  %33 = load ptr, ptr %8, align 8, !dbg !643
  %34 = call noalias ptr @fopen64(ptr noundef %32, ptr noundef %33), !dbg !643
  store ptr %34, ptr %7, align 8, !dbg !644
  br label %35, !dbg !645

35:                                               ; preds = %31, %28, %25
  %36 = load ptr, ptr %7, align 8, !dbg !646
  ret ptr %36, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ftell64_file_func(ptr noundef %0, ptr noundef %1) #0 !dbg !648 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !649, metadata !DIExpression()), !dbg !650
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !651, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.declare(metadata ptr %5, metadata !653, metadata !DIExpression()), !dbg !654
  %6 = load ptr, ptr %4, align 8, !dbg !655
  %7 = call i64 @ftello64(ptr noundef %6), !dbg !655
  store i64 %7, ptr %5, align 8, !dbg !656
  %8 = load i64, ptr %5, align 8, !dbg !657
  ret i64 %8, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fseek64_file_func(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 !dbg !659 {
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !660, metadata !DIExpression()), !dbg !661
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !662, metadata !DIExpression()), !dbg !663
  store i64 %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !664, metadata !DIExpression()), !dbg !665
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !666, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.declare(metadata ptr %10, metadata !668, metadata !DIExpression()), !dbg !669
  store i32 0, ptr %10, align 4, !dbg !669
  call void @llvm.dbg.declare(metadata ptr %11, metadata !670, metadata !DIExpression()), !dbg !671
  %12 = load i32, ptr %9, align 4, !dbg !672
  switch i32 %12, label %16 [
    i32 1, label %13
    i32 2, label %14
    i32 0, label %15
  ], !dbg !673

13:                                               ; preds = %4
  store i32 1, ptr %10, align 4, !dbg !674
  br label %17, !dbg !676

14:                                               ; preds = %4
  store i32 2, ptr %10, align 4, !dbg !677
  br label %17, !dbg !678

15:                                               ; preds = %4
  store i32 0, ptr %10, align 4, !dbg !679
  br label %17, !dbg !680

16:                                               ; preds = %4
  store i64 -1, ptr %5, align 8, !dbg !681
  br label %26, !dbg !681

17:                                               ; preds = %15, %14, %13
  store i64 0, ptr %11, align 8, !dbg !682
  %18 = load ptr, ptr %7, align 8, !dbg !683
  %19 = load i64, ptr %8, align 8, !dbg !683
  %20 = load i32, ptr %10, align 4, !dbg !683
  %21 = call i32 @fseeko64(ptr noundef %18, i64 noundef %19, i32 noundef %20), !dbg !683
  %22 = icmp ne i32 %21, 0, !dbg !685
  br i1 %22, label %23, label %24, !dbg !686

23:                                               ; preds = %17
  store i64 -1, ptr %11, align 8, !dbg !687
  br label %24, !dbg !688

24:                                               ; preds = %23, %17
  %25 = load i64, ptr %11, align 8, !dbg !689
  store i64 %25, ptr %5, align 8, !dbg !690
  br label %26, !dbg !690

26:                                               ; preds = %24, %16
  %27 = load i64, ptr %5, align 8, !dbg !691
  ret i64 %27, !dbg !691
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i64 @ftell(ptr noundef) #2

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #2

declare i32 @fflush(ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #3

declare noalias ptr @fopen64(ptr noundef, ptr noundef) #2

declare i64 @ftello64(ptr noundef) #2

declare i32 @fseeko64(ptr noundef, i64 noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/minizip/ioapi.c", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "e7fa8173386f38099c38d21f1c1c7527")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !3, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !15, globals: !85, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !17, !19, !22, !25, !27}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !20, line: 394, baseType: !21)
!20 = !DIFile(filename: "/usr/include/zconf.h", directory: "", checksumkind: CSK_MD5, checksum: "95e83c46958f6395f746c80cc6799e76")
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZPOS64_T", file: !23, line: 118, baseType: !24)
!23 = !DIFile(filename: "src/minizip/ioapi.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "a4dac867a80298bfdbdc2d3a375e5352")
!24 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !21)
!26 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !29, line: 7, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !31, line: 49, size: 1728, elements: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!32 = !{!33, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !50, !52, !53, !54, !58, !60, !62, !66, !69, !71, !74, !77, !78, !79, !80, !81}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !30, file: !31, line: 51, baseType: !34, size: 32)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !30, file: !31, line: 54, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !30, file: !31, line: 55, baseType: !36, size: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !30, file: !31, line: 56, baseType: !36, size: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !30, file: !31, line: 57, baseType: !36, size: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !30, file: !31, line: 58, baseType: !36, size: 64, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !30, file: !31, line: 59, baseType: !36, size: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !30, file: !31, line: 60, baseType: !36, size: 64, offset: 448)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !30, file: !31, line: 61, baseType: !36, size: 64, offset: 512)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !30, file: !31, line: 64, baseType: !36, size: 64, offset: 576)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !30, file: !31, line: 65, baseType: !36, size: 64, offset: 640)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !30, file: !31, line: 66, baseType: !36, size: 64, offset: 704)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !30, file: !31, line: 68, baseType: !48, size: 64, offset: 768)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !31, line: 36, flags: DIFlagFwdDecl)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !30, file: !31, line: 70, baseType: !51, size: 64, offset: 832)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !30, file: !31, line: 72, baseType: !34, size: 32, offset: 896)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !30, file: !31, line: 73, baseType: !34, size: 32, offset: 928)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !30, file: !31, line: 74, baseType: !55, size: 64, offset: 960)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !56, line: 152, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!57 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !30, file: !31, line: 77, baseType: !59, size: 16, offset: 1024)
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !30, file: !31, line: 78, baseType: !61, size: 8, offset: 1040)
!61 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !30, file: !31, line: 79, baseType: !63, size: 8, offset: 1048)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 1)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !30, file: !31, line: 81, baseType: !67, size: 64, offset: 1088)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !31, line: 43, baseType: null)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !30, file: !31, line: 89, baseType: !70, size: 64, offset: 1152)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !56, line: 153, baseType: !57)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !30, file: !31, line: 91, baseType: !72, size: 64, offset: 1216)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !31, line: 37, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !30, file: !31, line: 92, baseType: !75, size: 64, offset: 1280)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !31, line: 38, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !30, file: !31, line: 93, baseType: !51, size: 64, offset: 1344)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !30, file: !31, line: 94, baseType: !16, size: 64, offset: 1408)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !30, file: !31, line: 95, baseType: !25, size: 64, offset: 1472)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !30, file: !31, line: 96, baseType: !34, size: 32, offset: 1536)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !30, file: !31, line: 98, baseType: !82, size: 160, offset: 1568)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 20)
!85 = !{!0, !7, !12}
!86 = !{i32 7, !"Dwarf Version", i32 5}
!87 = !{i32 2, !"Debug Info Version", i32 3}
!88 = !{i32 1, !"wchar_size", i32 4}
!89 = !{i32 8, !"PIC Level", i32 2}
!90 = !{i32 7, !"PIE Level", i32 2}
!91 = !{i32 7, !"uwtable", i32 2}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 16.0.0"}
!94 = distinct !DISubprogram(name: "call_zopen64", scope: !2, file: !2, line: 31, type: !95, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !159)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !98, !112, !34}
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !20, line: 409, baseType: !16)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "zlib_filefunc64_32_def", file: !23, line: 205, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zlib_filefunc64_32_def_s", file: !23, line: 199, size: 768, elements: !102)
!102 = !{!103, !144, !149, !154}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "zfile_func64", scope: !101, file: !23, line: 201, baseType: !104, size: 576)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "zlib_filefunc64_def", file: !23, line: 193, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zlib_filefunc64_def_s", file: !23, line: 182, size: 576, elements: !106)
!106 = !{!107, !114, !119, !124, !129, !134, !139, !141, !143}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "zopen64_file", scope: !105, file: !23, line: 184, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "open64_file_func", file: !23, line: 180, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!97, !97, !112, !34}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "zread_file", scope: !105, file: !23, line: 185, baseType: !115, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "read_file_func", file: !23, line: 154, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!19, !97, !97, !16, !19}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "zwrite_file", scope: !105, file: !23, line: 186, baseType: !120, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "write_file_func", file: !23, line: 155, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!19, !97, !97, !112, !19}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "zflush_file", scope: !105, file: !23, line: 187, baseType: !125, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "flush_file_func", file: !23, line: 156, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!34, !97, !97}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ztell64_file", scope: !105, file: !23, line: 188, baseType: !130, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "tell64_file_func", file: !23, line: 178, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!22, !97, !97}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "zseek64_file", scope: !105, file: !23, line: 189, baseType: !135, size: 64, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "seek64_file_func", file: !23, line: 179, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!57, !97, !97, !22, !34}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "zclose_file", scope: !105, file: !23, line: 190, baseType: !140, size: 64, offset: 384)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "close_file_func", file: !23, line: 157, baseType: !126)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "zerror_file", scope: !105, file: !23, line: 191, baseType: !142, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "testerror_file_func", file: !23, line: 158, baseType: !126)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !105, file: !23, line: 192, baseType: !97, size: 64, offset: 512)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "zopen32_file", scope: !101, file: !23, line: 202, baseType: !145, size: 64, offset: 576)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "open_file_func", file: !23, line: 153, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!97, !97, !17, !34}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ztell32_file", scope: !101, file: !23, line: 203, baseType: !150, size: 64, offset: 640)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "tell_file_func", file: !23, line: 160, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!57, !97, !97}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "zseek32_file", scope: !101, file: !23, line: 204, baseType: !155, size: 64, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "seek_file_func", file: !23, line: 161, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!57, !97, !97, !19, !34}
!159 = !{}
!160 = !DILocalVariable(name: "pfilefunc", arg: 1, scope: !94, file: !2, line: 31, type: !98)
!161 = !DILocation(line: 31, column: 52, scope: !94)
!162 = !DILocalVariable(name: "filename", arg: 2, scope: !94, file: !2, line: 31, type: !112)
!163 = !DILocation(line: 31, column: 73, scope: !94)
!164 = !DILocalVariable(name: "mode", arg: 3, scope: !94, file: !2, line: 31, type: !34)
!165 = !DILocation(line: 31, column: 86, scope: !94)
!166 = !DILocation(line: 33, column: 9, scope: !167)
!167 = distinct !DILexicalBlock(scope: !94, file: !2, line: 33, column: 9)
!168 = !DILocation(line: 33, column: 20, scope: !167)
!169 = !DILocation(line: 33, column: 33, scope: !167)
!170 = !DILocation(line: 33, column: 46, scope: !167)
!171 = !DILocation(line: 33, column: 9, scope: !94)
!172 = !DILocation(line: 34, column: 19, scope: !167)
!173 = !DILocation(line: 34, column: 30, scope: !167)
!174 = !DILocation(line: 34, column: 43, scope: !167)
!175 = !DILocation(line: 34, column: 59, scope: !167)
!176 = !DILocation(line: 34, column: 70, scope: !167)
!177 = !DILocation(line: 34, column: 83, scope: !167)
!178 = !DILocation(line: 34, column: 90, scope: !167)
!179 = !DILocation(line: 34, column: 99, scope: !167)
!180 = !DILocation(line: 34, column: 16, scope: !167)
!181 = !DILocation(line: 34, column: 9, scope: !167)
!182 = !DILocation(line: 37, column: 19, scope: !183)
!183 = distinct !DILexicalBlock(scope: !167, file: !2, line: 36, column: 5)
!184 = !DILocation(line: 37, column: 30, scope: !183)
!185 = !DILocation(line: 37, column: 45, scope: !183)
!186 = !DILocation(line: 37, column: 56, scope: !183)
!187 = !DILocation(line: 37, column: 69, scope: !183)
!188 = !DILocation(line: 37, column: 89, scope: !183)
!189 = !DILocation(line: 37, column: 98, scope: !183)
!190 = !DILocation(line: 37, column: 16, scope: !183)
!191 = !DILocation(line: 37, column: 9, scope: !183)
!192 = !DILocation(line: 39, column: 1, scope: !94)
!193 = distinct !DISubprogram(name: "call_zseek64", scope: !2, file: !2, line: 41, type: !194, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !159)
!194 = !DISubroutineType(types: !195)
!195 = !{!57, !98, !97, !22, !34}
!196 = !DILocalVariable(name: "pfilefunc", arg: 1, scope: !193, file: !2, line: 41, type: !98)
!197 = !DILocation(line: 41, column: 50, scope: !193)
!198 = !DILocalVariable(name: "filestream", arg: 2, scope: !193, file: !2, line: 41, type: !97)
!199 = !DILocation(line: 41, column: 67, scope: !193)
!200 = !DILocalVariable(name: "offset", arg: 3, scope: !193, file: !2, line: 41, type: !22)
!201 = !DILocation(line: 41, column: 88, scope: !193)
!202 = !DILocalVariable(name: "origin", arg: 4, scope: !193, file: !2, line: 41, type: !34)
!203 = !DILocation(line: 41, column: 100, scope: !193)
!204 = !DILocation(line: 43, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !193, file: !2, line: 43, column: 9)
!206 = !DILocation(line: 43, column: 20, scope: !205)
!207 = !DILocation(line: 43, column: 33, scope: !205)
!208 = !DILocation(line: 43, column: 46, scope: !205)
!209 = !DILocation(line: 43, column: 9, scope: !193)
!210 = !DILocation(line: 44, column: 19, scope: !205)
!211 = !DILocation(line: 44, column: 30, scope: !205)
!212 = !DILocation(line: 44, column: 43, scope: !205)
!213 = !DILocation(line: 44, column: 59, scope: !205)
!214 = !DILocation(line: 44, column: 70, scope: !205)
!215 = !DILocation(line: 44, column: 83, scope: !205)
!216 = !DILocation(line: 44, column: 90, scope: !205)
!217 = !DILocation(line: 44, column: 101, scope: !205)
!218 = !DILocation(line: 44, column: 108, scope: !205)
!219 = !DILocation(line: 44, column: 16, scope: !205)
!220 = !DILocation(line: 44, column: 9, scope: !205)
!221 = !DILocalVariable(name: "offsetTruncated", scope: !222, file: !2, line: 47, type: !19)
!222 = distinct !DILexicalBlock(scope: !205, file: !2, line: 46, column: 5)
!223 = !DILocation(line: 47, column: 15, scope: !222)
!224 = !DILocation(line: 47, column: 40, scope: !222)
!225 = !DILocation(line: 48, column: 13, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !2, line: 48, column: 13)
!227 = !DILocation(line: 48, column: 32, scope: !226)
!228 = !DILocation(line: 48, column: 29, scope: !226)
!229 = !DILocation(line: 48, column: 13, scope: !222)
!230 = !DILocation(line: 49, column: 13, scope: !226)
!231 = !DILocation(line: 51, column: 23, scope: !226)
!232 = !DILocation(line: 51, column: 34, scope: !226)
!233 = !DILocation(line: 51, column: 49, scope: !226)
!234 = !DILocation(line: 51, column: 60, scope: !226)
!235 = !DILocation(line: 51, column: 73, scope: !226)
!236 = !DILocation(line: 51, column: 80, scope: !226)
!237 = !DILocation(line: 51, column: 91, scope: !226)
!238 = !DILocation(line: 51, column: 107, scope: !226)
!239 = !DILocation(line: 51, column: 20, scope: !226)
!240 = !DILocation(line: 51, column: 13, scope: !226)
!241 = !DILocation(line: 53, column: 1, scope: !193)
!242 = distinct !DISubprogram(name: "call_ztell64", scope: !2, file: !2, line: 55, type: !243, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !159)
!243 = !DISubroutineType(types: !244)
!244 = !{!22, !98, !97}
!245 = !DILocalVariable(name: "pfilefunc", arg: 1, scope: !242, file: !2, line: 55, type: !98)
!246 = !DILocation(line: 55, column: 54, scope: !242)
!247 = !DILocalVariable(name: "filestream", arg: 2, scope: !242, file: !2, line: 55, type: !97)
!248 = !DILocation(line: 55, column: 71, scope: !242)
!249 = !DILocation(line: 57, column: 9, scope: !250)
!250 = distinct !DILexicalBlock(scope: !242, file: !2, line: 57, column: 9)
!251 = !DILocation(line: 57, column: 20, scope: !250)
!252 = !DILocation(line: 57, column: 33, scope: !250)
!253 = !DILocation(line: 57, column: 46, scope: !250)
!254 = !DILocation(line: 57, column: 9, scope: !242)
!255 = !DILocation(line: 58, column: 19, scope: !250)
!256 = !DILocation(line: 58, column: 30, scope: !250)
!257 = !DILocation(line: 58, column: 43, scope: !250)
!258 = !DILocation(line: 58, column: 59, scope: !250)
!259 = !DILocation(line: 58, column: 70, scope: !250)
!260 = !DILocation(line: 58, column: 83, scope: !250)
!261 = !DILocation(line: 58, column: 90, scope: !250)
!262 = !DILocation(line: 58, column: 16, scope: !250)
!263 = !DILocation(line: 58, column: 9, scope: !250)
!264 = !DILocalVariable(name: "tell_uLong", scope: !265, file: !2, line: 61, type: !19)
!265 = distinct !DILexicalBlock(scope: !250, file: !2, line: 60, column: 5)
!266 = !DILocation(line: 61, column: 15, scope: !265)
!267 = !DILocation(line: 61, column: 31, scope: !265)
!268 = !DILocation(line: 61, column: 42, scope: !265)
!269 = !DILocation(line: 61, column: 57, scope: !265)
!270 = !DILocation(line: 61, column: 68, scope: !265)
!271 = !DILocation(line: 61, column: 81, scope: !265)
!272 = !DILocation(line: 61, column: 88, scope: !265)
!273 = !DILocation(line: 61, column: 28, scope: !265)
!274 = !DILocation(line: 62, column: 14, scope: !275)
!275 = distinct !DILexicalBlock(scope: !265, file: !2, line: 62, column: 13)
!276 = !DILocation(line: 62, column: 26, scope: !275)
!277 = !DILocation(line: 62, column: 13, scope: !265)
!278 = !DILocation(line: 63, column: 13, scope: !275)
!279 = !DILocation(line: 65, column: 20, scope: !275)
!280 = !DILocation(line: 65, column: 13, scope: !275)
!281 = !DILocation(line: 67, column: 1, scope: !242)
!282 = distinct !DISubprogram(name: "fill_zlib_filefunc64_32_def_from_filefunc32", scope: !2, file: !2, line: 69, type: !283, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !159)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !285, !286}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "zlib_filefunc_def", file: !23, line: 176, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zlib_filefunc_def_s", file: !23, line: 165, size: 576, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "zopen_file", scope: !289, file: !23, line: 167, baseType: !145, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "zread_file", scope: !289, file: !23, line: 168, baseType: !115, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "zwrite_file", scope: !289, file: !23, line: 169, baseType: !120, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "zflush_file", scope: !289, file: !23, line: 170, baseType: !125, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ztell_file", scope: !289, file: !23, line: 171, baseType: !150, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "zseek_file", scope: !289, file: !23, line: 172, baseType: !155, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "zclose_file", scope: !289, file: !23, line: 173, baseType: !140, size: 64, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "zerror_file", scope: !289, file: !23, line: 174, baseType: !142, size: 64, offset: 448)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !289, file: !23, line: 175, baseType: !97, size: 64, offset: 512)
!300 = !DILocalVariable(name: "p_filefunc64_32", arg: 1, scope: !282, file: !2, line: 69, type: !285)
!301 = !DILocation(line: 69, column: 74, scope: !282)
!302 = !DILocalVariable(name: "p_filefunc32", arg: 2, scope: !282, file: !2, line: 69, type: !286)
!303 = !DILocation(line: 69, column: 115, scope: !282)
!304 = !DILocation(line: 71, column: 5, scope: !282)
!305 = !DILocation(line: 71, column: 22, scope: !282)
!306 = !DILocation(line: 71, column: 35, scope: !282)
!307 = !DILocation(line: 71, column: 48, scope: !282)
!308 = !DILocation(line: 72, column: 37, scope: !282)
!309 = !DILocation(line: 72, column: 51, scope: !282)
!310 = !DILocation(line: 72, column: 5, scope: !282)
!311 = !DILocation(line: 72, column: 22, scope: !282)
!312 = !DILocation(line: 72, column: 35, scope: !282)
!313 = !DILocation(line: 73, column: 49, scope: !282)
!314 = !DILocation(line: 73, column: 63, scope: !282)
!315 = !DILocation(line: 73, column: 5, scope: !282)
!316 = !DILocation(line: 73, column: 22, scope: !282)
!317 = !DILocation(line: 73, column: 35, scope: !282)
!318 = !DILocation(line: 73, column: 47, scope: !282)
!319 = !DILocation(line: 74, column: 48, scope: !282)
!320 = !DILocation(line: 74, column: 62, scope: !282)
!321 = !DILocation(line: 74, column: 5, scope: !282)
!322 = !DILocation(line: 74, column: 22, scope: !282)
!323 = !DILocation(line: 74, column: 35, scope: !282)
!324 = !DILocation(line: 74, column: 46, scope: !282)
!325 = !DILocation(line: 75, column: 49, scope: !282)
!326 = !DILocation(line: 75, column: 63, scope: !282)
!327 = !DILocation(line: 75, column: 5, scope: !282)
!328 = !DILocation(line: 75, column: 22, scope: !282)
!329 = !DILocation(line: 75, column: 35, scope: !282)
!330 = !DILocation(line: 75, column: 47, scope: !282)
!331 = !DILocation(line: 76, column: 49, scope: !282)
!332 = !DILocation(line: 76, column: 63, scope: !282)
!333 = !DILocation(line: 76, column: 5, scope: !282)
!334 = !DILocation(line: 76, column: 22, scope: !282)
!335 = !DILocation(line: 76, column: 35, scope: !282)
!336 = !DILocation(line: 76, column: 47, scope: !282)
!337 = !DILocation(line: 77, column: 5, scope: !282)
!338 = !DILocation(line: 77, column: 22, scope: !282)
!339 = !DILocation(line: 77, column: 35, scope: !282)
!340 = !DILocation(line: 77, column: 48, scope: !282)
!341 = !DILocation(line: 78, column: 5, scope: !282)
!342 = !DILocation(line: 78, column: 22, scope: !282)
!343 = !DILocation(line: 78, column: 35, scope: !282)
!344 = !DILocation(line: 78, column: 48, scope: !282)
!345 = !DILocation(line: 79, column: 49, scope: !282)
!346 = !DILocation(line: 79, column: 63, scope: !282)
!347 = !DILocation(line: 79, column: 5, scope: !282)
!348 = !DILocation(line: 79, column: 22, scope: !282)
!349 = !DILocation(line: 79, column: 35, scope: !282)
!350 = !DILocation(line: 79, column: 47, scope: !282)
!351 = !DILocation(line: 80, column: 49, scope: !282)
!352 = !DILocation(line: 80, column: 63, scope: !282)
!353 = !DILocation(line: 80, column: 5, scope: !282)
!354 = !DILocation(line: 80, column: 22, scope: !282)
!355 = !DILocation(line: 80, column: 35, scope: !282)
!356 = !DILocation(line: 80, column: 47, scope: !282)
!357 = !DILocation(line: 81, column: 44, scope: !282)
!358 = !DILocation(line: 81, column: 58, scope: !282)
!359 = !DILocation(line: 81, column: 5, scope: !282)
!360 = !DILocation(line: 81, column: 22, scope: !282)
!361 = !DILocation(line: 81, column: 35, scope: !282)
!362 = !DILocation(line: 81, column: 42, scope: !282)
!363 = !DILocation(line: 82, column: 37, scope: !282)
!364 = !DILocation(line: 82, column: 51, scope: !282)
!365 = !DILocation(line: 82, column: 5, scope: !282)
!366 = !DILocation(line: 82, column: 22, scope: !282)
!367 = !DILocation(line: 82, column: 35, scope: !282)
!368 = !DILocation(line: 83, column: 37, scope: !282)
!369 = !DILocation(line: 83, column: 51, scope: !282)
!370 = !DILocation(line: 83, column: 5, scope: !282)
!371 = !DILocation(line: 83, column: 22, scope: !282)
!372 = !DILocation(line: 83, column: 35, scope: !282)
!373 = !DILocation(line: 84, column: 1, scope: !282)
!374 = distinct !DISubprogram(name: "fill_fopen_filefunc", scope: !2, file: !2, line: 233, type: !375, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !159)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!378 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 1, scope: !374, file: !2, line: 233, type: !377)
!379 = !DILocation(line: 233, column: 46, scope: !374)
!380 = !DILocation(line: 235, column: 5, scope: !374)
!381 = !DILocation(line: 235, column: 25, scope: !374)
!382 = !DILocation(line: 235, column: 36, scope: !374)
!383 = !DILocation(line: 236, column: 5, scope: !374)
!384 = !DILocation(line: 236, column: 25, scope: !374)
!385 = !DILocation(line: 236, column: 36, scope: !374)
!386 = !DILocation(line: 237, column: 5, scope: !374)
!387 = !DILocation(line: 237, column: 25, scope: !374)
!388 = !DILocation(line: 237, column: 37, scope: !374)
!389 = !DILocation(line: 238, column: 5, scope: !374)
!390 = !DILocation(line: 238, column: 25, scope: !374)
!391 = !DILocation(line: 238, column: 36, scope: !374)
!392 = !DILocation(line: 239, column: 5, scope: !374)
!393 = !DILocation(line: 239, column: 25, scope: !374)
!394 = !DILocation(line: 239, column: 36, scope: !374)
!395 = !DILocation(line: 240, column: 5, scope: !374)
!396 = !DILocation(line: 240, column: 25, scope: !374)
!397 = !DILocation(line: 240, column: 37, scope: !374)
!398 = !DILocation(line: 241, column: 5, scope: !374)
!399 = !DILocation(line: 241, column: 25, scope: !374)
!400 = !DILocation(line: 241, column: 37, scope: !374)
!401 = !DILocation(line: 242, column: 5, scope: !374)
!402 = !DILocation(line: 242, column: 25, scope: !374)
!403 = !DILocation(line: 242, column: 37, scope: !374)
!404 = !DILocation(line: 243, column: 5, scope: !374)
!405 = !DILocation(line: 243, column: 25, scope: !374)
!406 = !DILocation(line: 243, column: 32, scope: !374)
!407 = !DILocation(line: 244, column: 1, scope: !374)
!408 = distinct !DISubprogram(name: "fopen_file_func", scope: !2, file: !2, line: 98, type: !147, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !159)
!409 = !DILocalVariable(name: "opaque", arg: 1, scope: !408, file: !2, line: 98, type: !97)
!410 = !DILocation(line: 98, column: 49, scope: !408)
!411 = !DILocalVariable(name: "filename", arg: 2, scope: !408, file: !2, line: 98, type: !17)
!412 = !DILocation(line: 98, column: 69, scope: !408)
!413 = !DILocalVariable(name: "mode", arg: 3, scope: !408, file: !2, line: 98, type: !34)
!414 = !DILocation(line: 98, column: 83, scope: !408)
!415 = !DILocalVariable(name: "file", scope: !408, file: !2, line: 100, type: !27)
!416 = !DILocation(line: 100, column: 11, scope: !408)
!417 = !DILocalVariable(name: "mode_fopen", scope: !408, file: !2, line: 101, type: !17)
!418 = !DILocation(line: 101, column: 17, scope: !408)
!419 = !DILocation(line: 102, column: 10, scope: !420)
!420 = distinct !DILexicalBlock(scope: !408, file: !2, line: 102, column: 9)
!421 = !DILocation(line: 102, column: 15, scope: !420)
!422 = !DILocation(line: 102, column: 52, scope: !420)
!423 = !DILocation(line: 102, column: 9, scope: !408)
!424 = !DILocation(line: 103, column: 20, scope: !420)
!425 = !DILocation(line: 103, column: 9, scope: !420)
!426 = !DILocation(line: 105, column: 9, scope: !427)
!427 = distinct !DILexicalBlock(scope: !420, file: !2, line: 105, column: 9)
!428 = !DILocation(line: 105, column: 14, scope: !427)
!429 = !DILocation(line: 105, column: 9, scope: !420)
!430 = !DILocation(line: 106, column: 20, scope: !427)
!431 = !DILocation(line: 106, column: 9, scope: !427)
!432 = !DILocation(line: 108, column: 9, scope: !433)
!433 = distinct !DILexicalBlock(scope: !427, file: !2, line: 108, column: 9)
!434 = !DILocation(line: 108, column: 14, scope: !433)
!435 = !DILocation(line: 108, column: 9, scope: !427)
!436 = !DILocation(line: 109, column: 20, scope: !433)
!437 = !DILocation(line: 109, column: 9, scope: !433)
!438 = !DILocation(line: 111, column: 10, scope: !439)
!439 = distinct !DILexicalBlock(scope: !408, file: !2, line: 111, column: 9)
!440 = !DILocation(line: 111, column: 18, scope: !439)
!441 = !DILocation(line: 111, column: 26, scope: !439)
!442 = !DILocation(line: 111, column: 30, scope: !439)
!443 = !DILocation(line: 111, column: 41, scope: !439)
!444 = !DILocation(line: 111, column: 9, scope: !408)
!445 = !DILocation(line: 112, column: 22, scope: !439)
!446 = !DILocation(line: 112, column: 32, scope: !439)
!447 = !DILocation(line: 112, column: 16, scope: !439)
!448 = !DILocation(line: 112, column: 14, scope: !439)
!449 = !DILocation(line: 112, column: 9, scope: !439)
!450 = !DILocation(line: 113, column: 12, scope: !408)
!451 = !DILocation(line: 113, column: 5, scope: !408)
!452 = distinct !DISubprogram(name: "fread_file_func", scope: !2, file: !2, line: 135, type: !117, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !159)
!453 = !DILocalVariable(name: "opaque", arg: 1, scope: !452, file: !2, line: 135, type: !97)
!454 = !DILocation(line: 135, column: 48, scope: !452)
!455 = !DILocalVariable(name: "stream", arg: 2, scope: !452, file: !2, line: 135, type: !97)
!456 = !DILocation(line: 135, column: 63, scope: !452)
!457 = !DILocalVariable(name: "buf", arg: 3, scope: !452, file: !2, line: 135, type: !16)
!458 = !DILocation(line: 135, column: 77, scope: !452)
!459 = !DILocalVariable(name: "size", arg: 4, scope: !452, file: !2, line: 135, type: !19)
!460 = !DILocation(line: 135, column: 88, scope: !452)
!461 = !DILocalVariable(name: "ret", scope: !452, file: !2, line: 137, type: !19)
!462 = !DILocation(line: 137, column: 11, scope: !452)
!463 = !DILocation(line: 138, column: 24, scope: !452)
!464 = !DILocation(line: 138, column: 40, scope: !452)
!465 = !DILocation(line: 138, column: 54, scope: !452)
!466 = !DILocation(line: 138, column: 18, scope: !452)
!467 = !DILocation(line: 138, column: 9, scope: !452)
!468 = !DILocation(line: 139, column: 12, scope: !452)
!469 = !DILocation(line: 139, column: 5, scope: !452)
!470 = distinct !DISubprogram(name: "fwrite_file_func", scope: !2, file: !2, line: 142, type: !122, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !159)
!471 = !DILocalVariable(name: "opaque", arg: 1, scope: !470, file: !2, line: 142, type: !97)
!472 = !DILocation(line: 142, column: 49, scope: !470)
!473 = !DILocalVariable(name: "stream", arg: 2, scope: !470, file: !2, line: 142, type: !97)
!474 = !DILocation(line: 142, column: 64, scope: !470)
!475 = !DILocalVariable(name: "buf", arg: 3, scope: !470, file: !2, line: 142, type: !112)
!476 = !DILocation(line: 142, column: 84, scope: !470)
!477 = !DILocalVariable(name: "size", arg: 4, scope: !470, file: !2, line: 142, type: !19)
!478 = !DILocation(line: 142, column: 95, scope: !470)
!479 = !DILocalVariable(name: "ret", scope: !470, file: !2, line: 144, type: !19)
!480 = !DILocation(line: 144, column: 11, scope: !470)
!481 = !DILocation(line: 145, column: 25, scope: !470)
!482 = !DILocation(line: 145, column: 41, scope: !470)
!483 = !DILocation(line: 145, column: 55, scope: !470)
!484 = !DILocation(line: 145, column: 18, scope: !470)
!485 = !DILocation(line: 145, column: 9, scope: !470)
!486 = !DILocation(line: 146, column: 12, scope: !470)
!487 = !DILocation(line: 146, column: 5, scope: !470)
!488 = distinct !DISubprogram(name: "ftell_file_func", scope: !2, file: !2, line: 149, type: !152, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !159)
!489 = !DILocalVariable(name: "opaque", arg: 1, scope: !488, file: !2, line: 149, type: !97)
!490 = !DILocation(line: 149, column: 47, scope: !488)
!491 = !DILocalVariable(name: "stream", arg: 2, scope: !488, file: !2, line: 149, type: !97)
!492 = !DILocation(line: 149, column: 62, scope: !488)
!493 = !DILocalVariable(name: "ret", scope: !488, file: !2, line: 151, type: !57)
!494 = !DILocation(line: 151, column: 10, scope: !488)
!495 = !DILocation(line: 152, column: 25, scope: !488)
!496 = !DILocation(line: 152, column: 11, scope: !488)
!497 = !DILocation(line: 152, column: 9, scope: !488)
!498 = !DILocation(line: 153, column: 12, scope: !488)
!499 = !DILocation(line: 153, column: 5, scope: !488)
!500 = distinct !DISubprogram(name: "fseek_file_func", scope: !2, file: !2, line: 164, type: !157, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !159)
!501 = !DILocalVariable(name: "opaque", arg: 1, scope: !500, file: !2, line: 164, type: !97)
!502 = !DILocation(line: 164, column: 48, scope: !500)
!503 = !DILocalVariable(name: "stream", arg: 2, scope: !500, file: !2, line: 164, type: !97)
!504 = !DILocation(line: 164, column: 63, scope: !500)
!505 = !DILocalVariable(name: "offset", arg: 3, scope: !500, file: !2, line: 164, type: !19)
!506 = !DILocation(line: 164, column: 77, scope: !500)
!507 = !DILocalVariable(name: "origin", arg: 4, scope: !500, file: !2, line: 164, type: !34)
!508 = !DILocation(line: 164, column: 89, scope: !500)
!509 = !DILocalVariable(name: "fseek_origin", scope: !500, file: !2, line: 166, type: !34)
!510 = !DILocation(line: 166, column: 9, scope: !500)
!511 = !DILocalVariable(name: "ret", scope: !500, file: !2, line: 167, type: !57)
!512 = !DILocation(line: 167, column: 10, scope: !500)
!513 = !DILocation(line: 168, column: 13, scope: !500)
!514 = !DILocation(line: 168, column: 5, scope: !500)
!515 = !DILocation(line: 171, column: 22, scope: !516)
!516 = distinct !DILexicalBlock(scope: !500, file: !2, line: 169, column: 5)
!517 = !DILocation(line: 172, column: 9, scope: !516)
!518 = !DILocation(line: 174, column: 22, scope: !516)
!519 = !DILocation(line: 175, column: 9, scope: !516)
!520 = !DILocation(line: 177, column: 22, scope: !516)
!521 = !DILocation(line: 178, column: 9, scope: !516)
!522 = !DILocation(line: 179, column: 14, scope: !516)
!523 = !DILocation(line: 181, column: 9, scope: !500)
!524 = !DILocation(line: 182, column: 23, scope: !525)
!525 = distinct !DILexicalBlock(scope: !500, file: !2, line: 182, column: 9)
!526 = !DILocation(line: 182, column: 31, scope: !525)
!527 = !DILocation(line: 182, column: 39, scope: !525)
!528 = !DILocation(line: 182, column: 9, scope: !525)
!529 = !DILocation(line: 182, column: 53, scope: !525)
!530 = !DILocation(line: 182, column: 9, scope: !500)
!531 = !DILocation(line: 183, column: 13, scope: !525)
!532 = !DILocation(line: 183, column: 9, scope: !525)
!533 = !DILocation(line: 184, column: 12, scope: !500)
!534 = !DILocation(line: 184, column: 5, scope: !500)
!535 = !DILocation(line: 185, column: 1, scope: !500)
!536 = distinct !DISubprogram(name: "fflush_file_func", scope: !2, file: !2, line: 212, type: !127, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !159)
!537 = !DILocalVariable(name: "opaque", arg: 1, scope: !536, file: !2, line: 212, type: !97)
!538 = !DILocation(line: 212, column: 47, scope: !536)
!539 = !DILocalVariable(name: "stream", arg: 2, scope: !536, file: !2, line: 212, type: !97)
!540 = !DILocation(line: 212, column: 62, scope: !536)
!541 = !DILocalVariable(name: "ret", scope: !536, file: !2, line: 214, type: !34)
!542 = !DILocation(line: 214, column: 9, scope: !536)
!543 = !DILocation(line: 215, column: 26, scope: !536)
!544 = !DILocation(line: 215, column: 11, scope: !536)
!545 = !DILocation(line: 215, column: 9, scope: !536)
!546 = !DILocation(line: 216, column: 12, scope: !536)
!547 = !DILocation(line: 216, column: 5, scope: !536)
!548 = distinct !DISubprogram(name: "fclose_file_func", scope: !2, file: !2, line: 219, type: !127, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !159)
!549 = !DILocalVariable(name: "opaque", arg: 1, scope: !548, file: !2, line: 219, type: !97)
!550 = !DILocation(line: 219, column: 47, scope: !548)
!551 = !DILocalVariable(name: "stream", arg: 2, scope: !548, file: !2, line: 219, type: !97)
!552 = !DILocation(line: 219, column: 62, scope: !548)
!553 = !DILocalVariable(name: "ret", scope: !548, file: !2, line: 221, type: !34)
!554 = !DILocation(line: 221, column: 9, scope: !548)
!555 = !DILocation(line: 222, column: 26, scope: !548)
!556 = !DILocation(line: 222, column: 11, scope: !548)
!557 = !DILocation(line: 222, column: 9, scope: !548)
!558 = !DILocation(line: 223, column: 12, scope: !548)
!559 = !DILocation(line: 223, column: 5, scope: !548)
!560 = distinct !DISubprogram(name: "ferror_file_func", scope: !2, file: !2, line: 226, type: !127, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !159)
!561 = !DILocalVariable(name: "opaque", arg: 1, scope: !560, file: !2, line: 226, type: !97)
!562 = !DILocation(line: 226, column: 47, scope: !560)
!563 = !DILocalVariable(name: "stream", arg: 2, scope: !560, file: !2, line: 226, type: !97)
!564 = !DILocation(line: 226, column: 62, scope: !560)
!565 = !DILocalVariable(name: "ret", scope: !560, file: !2, line: 228, type: !34)
!566 = !DILocation(line: 228, column: 9, scope: !560)
!567 = !DILocation(line: 229, column: 26, scope: !560)
!568 = !DILocation(line: 229, column: 11, scope: !560)
!569 = !DILocation(line: 229, column: 9, scope: !560)
!570 = !DILocation(line: 230, column: 12, scope: !560)
!571 = !DILocation(line: 230, column: 5, scope: !560)
!572 = distinct !DISubprogram(name: "fill_fopen64_filefunc", scope: !2, file: !2, line: 246, type: !573, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !159)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!576 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 1, scope: !572, file: !2, line: 246, type: !575)
!577 = !DILocation(line: 246, column: 51, scope: !572)
!578 = !DILocation(line: 248, column: 5, scope: !572)
!579 = !DILocation(line: 248, column: 25, scope: !572)
!580 = !DILocation(line: 248, column: 38, scope: !572)
!581 = !DILocation(line: 249, column: 5, scope: !572)
!582 = !DILocation(line: 249, column: 25, scope: !572)
!583 = !DILocation(line: 249, column: 36, scope: !572)
!584 = !DILocation(line: 250, column: 5, scope: !572)
!585 = !DILocation(line: 250, column: 25, scope: !572)
!586 = !DILocation(line: 250, column: 37, scope: !572)
!587 = !DILocation(line: 251, column: 5, scope: !572)
!588 = !DILocation(line: 251, column: 25, scope: !572)
!589 = !DILocation(line: 251, column: 38, scope: !572)
!590 = !DILocation(line: 252, column: 5, scope: !572)
!591 = !DILocation(line: 252, column: 25, scope: !572)
!592 = !DILocation(line: 252, column: 38, scope: !572)
!593 = !DILocation(line: 253, column: 5, scope: !572)
!594 = !DILocation(line: 253, column: 25, scope: !572)
!595 = !DILocation(line: 253, column: 37, scope: !572)
!596 = !DILocation(line: 254, column: 5, scope: !572)
!597 = !DILocation(line: 254, column: 25, scope: !572)
!598 = !DILocation(line: 254, column: 37, scope: !572)
!599 = !DILocation(line: 255, column: 5, scope: !572)
!600 = !DILocation(line: 255, column: 25, scope: !572)
!601 = !DILocation(line: 255, column: 37, scope: !572)
!602 = !DILocation(line: 256, column: 5, scope: !572)
!603 = !DILocation(line: 256, column: 25, scope: !572)
!604 = !DILocation(line: 256, column: 32, scope: !572)
!605 = !DILocation(line: 257, column: 1, scope: !572)
!606 = distinct !DISubprogram(name: "fopen64_file_func", scope: !2, file: !2, line: 116, type: !110, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !159)
!607 = !DILocalVariable(name: "opaque", arg: 1, scope: !606, file: !2, line: 116, type: !97)
!608 = !DILocation(line: 116, column: 51, scope: !606)
!609 = !DILocalVariable(name: "filename", arg: 2, scope: !606, file: !2, line: 116, type: !112)
!610 = !DILocation(line: 116, column: 71, scope: !606)
!611 = !DILocalVariable(name: "mode", arg: 3, scope: !606, file: !2, line: 116, type: !34)
!612 = !DILocation(line: 116, column: 85, scope: !606)
!613 = !DILocalVariable(name: "file", scope: !606, file: !2, line: 118, type: !27)
!614 = !DILocation(line: 118, column: 11, scope: !606)
!615 = !DILocalVariable(name: "mode_fopen", scope: !606, file: !2, line: 119, type: !17)
!616 = !DILocation(line: 119, column: 17, scope: !606)
!617 = !DILocation(line: 120, column: 10, scope: !618)
!618 = distinct !DILexicalBlock(scope: !606, file: !2, line: 120, column: 9)
!619 = !DILocation(line: 120, column: 15, scope: !618)
!620 = !DILocation(line: 120, column: 52, scope: !618)
!621 = !DILocation(line: 120, column: 9, scope: !606)
!622 = !DILocation(line: 121, column: 20, scope: !618)
!623 = !DILocation(line: 121, column: 9, scope: !618)
!624 = !DILocation(line: 123, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !618, file: !2, line: 123, column: 9)
!626 = !DILocation(line: 123, column: 14, scope: !625)
!627 = !DILocation(line: 123, column: 9, scope: !618)
!628 = !DILocation(line: 124, column: 20, scope: !625)
!629 = !DILocation(line: 124, column: 9, scope: !625)
!630 = !DILocation(line: 126, column: 9, scope: !631)
!631 = distinct !DILexicalBlock(scope: !625, file: !2, line: 126, column: 9)
!632 = !DILocation(line: 126, column: 14, scope: !631)
!633 = !DILocation(line: 126, column: 9, scope: !625)
!634 = !DILocation(line: 127, column: 20, scope: !631)
!635 = !DILocation(line: 127, column: 9, scope: !631)
!636 = !DILocation(line: 129, column: 10, scope: !637)
!637 = distinct !DILexicalBlock(scope: !606, file: !2, line: 129, column: 9)
!638 = !DILocation(line: 129, column: 18, scope: !637)
!639 = !DILocation(line: 129, column: 26, scope: !637)
!640 = !DILocation(line: 129, column: 30, scope: !637)
!641 = !DILocation(line: 129, column: 41, scope: !637)
!642 = !DILocation(line: 129, column: 9, scope: !606)
!643 = !DILocation(line: 130, column: 16, scope: !637)
!644 = !DILocation(line: 130, column: 14, scope: !637)
!645 = !DILocation(line: 130, column: 9, scope: !637)
!646 = !DILocation(line: 131, column: 12, scope: !606)
!647 = !DILocation(line: 131, column: 5, scope: !606)
!648 = distinct !DISubprogram(name: "ftell64_file_func", scope: !2, file: !2, line: 157, type: !132, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !159)
!649 = !DILocalVariable(name: "opaque", arg: 1, scope: !648, file: !2, line: 157, type: !97)
!650 = !DILocation(line: 157, column: 53, scope: !648)
!651 = !DILocalVariable(name: "stream", arg: 2, scope: !648, file: !2, line: 157, type: !97)
!652 = !DILocation(line: 157, column: 68, scope: !648)
!653 = !DILocalVariable(name: "ret", scope: !648, file: !2, line: 159, type: !22)
!654 = !DILocation(line: 159, column: 14, scope: !648)
!655 = !DILocation(line: 160, column: 11, scope: !648)
!656 = !DILocation(line: 160, column: 9, scope: !648)
!657 = !DILocation(line: 161, column: 12, scope: !648)
!658 = !DILocation(line: 161, column: 5, scope: !648)
!659 = distinct !DISubprogram(name: "fseek64_file_func", scope: !2, file: !2, line: 187, type: !137, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !159)
!660 = !DILocalVariable(name: "opaque", arg: 1, scope: !659, file: !2, line: 187, type: !97)
!661 = !DILocation(line: 187, column: 50, scope: !659)
!662 = !DILocalVariable(name: "stream", arg: 2, scope: !659, file: !2, line: 187, type: !97)
!663 = !DILocation(line: 187, column: 65, scope: !659)
!664 = !DILocalVariable(name: "offset", arg: 3, scope: !659, file: !2, line: 187, type: !22)
!665 = !DILocation(line: 187, column: 82, scope: !659)
!666 = !DILocalVariable(name: "origin", arg: 4, scope: !659, file: !2, line: 187, type: !34)
!667 = !DILocation(line: 187, column: 94, scope: !659)
!668 = !DILocalVariable(name: "fseek_origin", scope: !659, file: !2, line: 189, type: !34)
!669 = !DILocation(line: 189, column: 9, scope: !659)
!670 = !DILocalVariable(name: "ret", scope: !659, file: !2, line: 190, type: !57)
!671 = !DILocation(line: 190, column: 10, scope: !659)
!672 = !DILocation(line: 191, column: 13, scope: !659)
!673 = !DILocation(line: 191, column: 5, scope: !659)
!674 = !DILocation(line: 194, column: 22, scope: !675)
!675 = distinct !DILexicalBlock(scope: !659, file: !2, line: 192, column: 5)
!676 = !DILocation(line: 195, column: 9, scope: !675)
!677 = !DILocation(line: 197, column: 22, scope: !675)
!678 = !DILocation(line: 198, column: 9, scope: !675)
!679 = !DILocation(line: 200, column: 22, scope: !675)
!680 = !DILocation(line: 201, column: 9, scope: !675)
!681 = !DILocation(line: 202, column: 14, scope: !675)
!682 = !DILocation(line: 204, column: 9, scope: !659)
!683 = !DILocation(line: 206, column: 8, scope: !684)
!684 = distinct !DILexicalBlock(scope: !659, file: !2, line: 206, column: 8)
!685 = !DILocation(line: 206, column: 58, scope: !684)
!686 = !DILocation(line: 206, column: 8, scope: !659)
!687 = !DILocation(line: 207, column: 29, scope: !684)
!688 = !DILocation(line: 207, column: 25, scope: !684)
!689 = !DILocation(line: 209, column: 12, scope: !659)
!690 = !DILocation(line: 209, column: 5, scope: !659)
!691 = !DILocation(line: 210, column: 1, scope: !659)
