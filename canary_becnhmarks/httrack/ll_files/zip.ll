; ModuleID = 'src/minizip/zip.c'
source_filename = "src/minizip/zip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip64_internal = type { %struct.zlib_filefunc64_32_def_s, ptr, %struct.linkedlist_data_s, i32, %struct.curfile64_info, i64, i64, i64, ptr }
%struct.zlib_filefunc64_32_def_s = type { %struct.zlib_filefunc64_def_s, ptr, ptr, ptr }
%struct.zlib_filefunc64_def_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linkedlist_data_s = type { ptr, ptr }
%struct.curfile64_info = type { %struct.z_stream_s, i32, i32, i64, ptr, i64, i64, i64, i64, i32, i32, [65536 x i8], i64, i64, i32, i32, i64, i64, i64, [3 x i64], ptr, i32 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.zip_fileinfo = type { %struct.tm_zip_s, i64, i64, i64 }
%struct.tm_zip_s = type { i32, i32, i32, i32, i32, i32 }
%struct.linkedlist_datablock_internal_s = type { ptr, i64, i64, i64, [4080 x i8] }

@zip_copyright = dso_local constant [79 x i8] c" zip 1.01 Copyright 1998-2004 Gilles Vollant - http://www.winimage.com/zLibDll\00", align 16, !dbg !0
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !186
@.str.1 = private unnamed_addr constant [7 x i8] c"1.2.11\00", align 1, !dbg !191
@crypthead.calls = internal global i32 0, align 4, !dbg !196

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @zipOpen3(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !215 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.zip64_internal, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !221, metadata !DIExpression()), !dbg !222
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !223, metadata !DIExpression()), !dbg !224
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !225, metadata !DIExpression()), !dbg !226
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata ptr %10, metadata !229, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata ptr %11, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata ptr %12, metadata !233, metadata !DIExpression()), !dbg !234
  store i32 0, ptr %12, align 4, !dbg !234
  %13 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 0, !dbg !235
  %14 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %13, i32 0, i32 3, !dbg !236
  store ptr null, ptr %14, align 8, !dbg !237
  %15 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 0, !dbg !238
  %16 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %15, i32 0, i32 2, !dbg !239
  store ptr null, ptr %16, align 8, !dbg !240
  %17 = load ptr, ptr %9, align 8, !dbg !241
  %18 = icmp eq ptr %17, null, !dbg !243
  br i1 %18, label %19, label %22, !dbg !244

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 0, !dbg !245
  %21 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %20, i32 0, i32 0, !dbg !246
  call void @fill_fopen64_filefunc(ptr noundef %21), !dbg !247
  br label %25, !dbg !247

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 0, !dbg !248
  %24 = load ptr, ptr %9, align 8, !dbg !249
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %23, ptr align 8 %24, i64 96, i1 false), !dbg !250
  br label %25

25:                                               ; preds = %22, %19
  %26 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 0, !dbg !251
  %27 = load ptr, ptr %6, align 8, !dbg !251
  %28 = load i32, ptr %7, align 4, !dbg !251
  %29 = icmp eq i32 %28, 0, !dbg !251
  %30 = zext i1 %29 to i64, !dbg !251
  %31 = select i1 %29, i32 11, i32 7, !dbg !251
  %32 = call ptr @call_zopen64(ptr noundef %26, ptr noundef %27, i32 noundef %31), !dbg !251
  %33 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 1, !dbg !252
  store ptr %32, ptr %33, align 8, !dbg !253
  %34 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 1, !dbg !254
  %35 = load ptr, ptr %34, align 8, !dbg !254
  %36 = icmp eq ptr %35, null, !dbg !256
  br i1 %36, label %37, label %38, !dbg !257

37:                                               ; preds = %25
  store ptr null, ptr %5, align 8, !dbg !258
  br label %105, !dbg !258

38:                                               ; preds = %25
  %39 = load i32, ptr %7, align 4, !dbg !259
  %40 = icmp eq i32 %39, 1, !dbg !261
  br i1 %40, label %41, label %46, !dbg !262

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 0, !dbg !263
  %43 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 1, !dbg !263
  %44 = load ptr, ptr %43, align 8, !dbg !263
  %45 = call i64 @call_zseek64(ptr noundef %42, ptr noundef %44, i64 noundef 0, i32 noundef 2), !dbg !263
  br label %46, !dbg !263

46:                                               ; preds = %41, %38
  %47 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 0, !dbg !264
  %48 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 1, !dbg !264
  %49 = load ptr, ptr %48, align 8, !dbg !264
  %50 = call i64 @call_ztell64(ptr noundef %47, ptr noundef %49), !dbg !264
  %51 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 5, !dbg !265
  store i64 %50, ptr %51, align 8, !dbg !266
  %52 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 3, !dbg !267
  store i32 0, ptr %52, align 8, !dbg !268
  %53 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 4, !dbg !269
  %54 = getelementptr inbounds %struct.curfile64_info, ptr %53, i32 0, i32 1, !dbg !270
  store i32 0, ptr %54, align 8, !dbg !271
  %55 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 7, !dbg !272
  store i64 0, ptr %55, align 8, !dbg !273
  %56 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 6, !dbg !274
  store i64 0, ptr %56, align 8, !dbg !275
  %57 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 2, !dbg !276
  call void @init_linkedlist(ptr noundef %57), !dbg !277
  %58 = call noalias ptr @malloc(i64 noundef 65960) #8, !dbg !278
  store ptr %58, ptr %11, align 8, !dbg !279
  %59 = load ptr, ptr %11, align 8, !dbg !280
  %60 = icmp eq ptr %59, null, !dbg !282
  br i1 %60, label %61, label %73, !dbg !283

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 0, !dbg !284
  %63 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %62, i32 0, i32 0, !dbg !284
  %64 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %63, i32 0, i32 6, !dbg !284
  %65 = load ptr, ptr %64, align 8, !dbg !284
  %66 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 0, !dbg !284
  %67 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %66, i32 0, i32 0, !dbg !284
  %68 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %67, i32 0, i32 8, !dbg !284
  %69 = load ptr, ptr %68, align 8, !dbg !284
  %70 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 1, !dbg !284
  %71 = load ptr, ptr %70, align 8, !dbg !284
  %72 = call i32 %65(ptr noundef %69, ptr noundef %71), !dbg !284
  store ptr null, ptr %5, align 8, !dbg !286
  br label %105, !dbg !286

73:                                               ; preds = %46
  %74 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 8, !dbg !287
  store ptr null, ptr %74, align 8, !dbg !288
  %75 = load i32, ptr %7, align 4, !dbg !289
  %76 = icmp eq i32 %75, 2, !dbg !291
  br i1 %76, label %77, label %79, !dbg !292

77:                                               ; preds = %73
  %78 = call i32 @LoadCentralDirectoryRecord(ptr noundef %10), !dbg !293
  store i32 %78, ptr %12, align 4, !dbg !295
  br label %79, !dbg !296

79:                                               ; preds = %77, %73
  %80 = load ptr, ptr %8, align 8, !dbg !297
  %81 = icmp ne ptr %80, null, !dbg !297
  br i1 %81, label %82, label %86, !dbg !299

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 8, !dbg !300
  %84 = load ptr, ptr %83, align 8, !dbg !300
  %85 = load ptr, ptr %8, align 8, !dbg !302
  store ptr %84, ptr %85, align 8, !dbg !303
  br label %86, !dbg !304

86:                                               ; preds = %82, %79
  %87 = load i32, ptr %12, align 4, !dbg !305
  %88 = icmp ne i32 %87, 0, !dbg !307
  br i1 %88, label %89, label %102, !dbg !308

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 8, !dbg !309
  %91 = load ptr, ptr %90, align 8, !dbg !309
  %92 = icmp ne ptr %91, null, !dbg !309
  br i1 %92, label %93, label %96, !dbg !313

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 8, !dbg !309
  %95 = load ptr, ptr %94, align 8, !dbg !309
  call void @free(ptr noundef %95) #9, !dbg !309
  br label %96, !dbg !309

96:                                               ; preds = %93, %89
  %97 = load ptr, ptr %11, align 8, !dbg !314
  %98 = icmp ne ptr %97, null, !dbg !314
  br i1 %98, label %99, label %101, !dbg !317

99:                                               ; preds = %96
  %100 = load ptr, ptr %11, align 8, !dbg !314
  call void @free(ptr noundef %100) #9, !dbg !314
  br label %101, !dbg !314

101:                                              ; preds = %99, %96
  store ptr null, ptr %5, align 8, !dbg !318
  br label %105, !dbg !318

102:                                              ; preds = %86
  %103 = load ptr, ptr %11, align 8, !dbg !319
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %103, ptr align 8 %10, i64 65960, i1 false), !dbg !321
  %104 = load ptr, ptr %11, align 8, !dbg !322
  store ptr %104, ptr %5, align 8, !dbg !323
  br label %105, !dbg !323

105:                                              ; preds = %102, %101, %61, %37
  %106 = load ptr, ptr %5, align 8, !dbg !324
  ret ptr %106, !dbg !324
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @fill_fopen64_filefunc(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare ptr @call_zopen64(ptr noundef, ptr noundef, i32 noundef) #2

declare i64 @call_zseek64(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare i64 @call_ztell64(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_linkedlist(ptr noundef %0) #0 !dbg !325 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !329, metadata !DIExpression()), !dbg !330
  %3 = load ptr, ptr %2, align 8, !dbg !331
  %4 = getelementptr inbounds %struct.linkedlist_data_s, ptr %3, i32 0, i32 1, !dbg !332
  store ptr null, ptr %4, align 8, !dbg !333
  %5 = load ptr, ptr %2, align 8, !dbg !334
  %6 = getelementptr inbounds %struct.linkedlist_data_s, ptr %5, i32 0, i32 0, !dbg !335
  store ptr null, ptr %6, align 8, !dbg !336
  ret void, !dbg !337
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadCentralDirectoryRecord(ptr noundef %0) #0 !dbg !338 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata ptr %4, metadata !343, metadata !DIExpression()), !dbg !344
  store i32 0, ptr %4, align 4, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %5, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata ptr %6, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata ptr %7, metadata !349, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata ptr %8, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata ptr %9, metadata !353, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.declare(metadata ptr %10, metadata !355, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata ptr %11, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata ptr %12, metadata !359, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.declare(metadata ptr %13, metadata !361, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata ptr %14, metadata !363, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata ptr %15, metadata !365, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.declare(metadata ptr %16, metadata !367, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.declare(metadata ptr %17, metadata !369, metadata !DIExpression()), !dbg !370
  store i32 0, ptr %17, align 4, !dbg !370
  %23 = load ptr, ptr %3, align 8, !dbg !371
  %24 = getelementptr inbounds %struct.zip64_internal, ptr %23, i32 0, i32 0, !dbg !372
  %25 = load ptr, ptr %3, align 8, !dbg !373
  %26 = getelementptr inbounds %struct.zip64_internal, ptr %25, i32 0, i32 1, !dbg !374
  %27 = load ptr, ptr %26, align 8, !dbg !374
  %28 = call i64 @zip64local_SearchCentralDir64(ptr noundef %24, ptr noundef %27), !dbg !375
  store i64 %28, ptr %8, align 8, !dbg !376
  %29 = load i64, ptr %8, align 8, !dbg !377
  %30 = icmp ugt i64 %29, 0, !dbg !379
  br i1 %30, label %31, label %32, !dbg !380

31:                                               ; preds = %1
  store i32 1, ptr %17, align 4, !dbg !381
  br label %43, !dbg !383

32:                                               ; preds = %1
  %33 = load i64, ptr %8, align 8, !dbg !384
  %34 = icmp eq i64 %33, 0, !dbg !386
  br i1 %34, label %35, label %42, !dbg !387

35:                                               ; preds = %32
  %36 = load ptr, ptr %3, align 8, !dbg !388
  %37 = getelementptr inbounds %struct.zip64_internal, ptr %36, i32 0, i32 0, !dbg !390
  %38 = load ptr, ptr %3, align 8, !dbg !391
  %39 = getelementptr inbounds %struct.zip64_internal, ptr %38, i32 0, i32 1, !dbg !392
  %40 = load ptr, ptr %39, align 8, !dbg !392
  %41 = call i64 @zip64local_SearchCentralDir(ptr noundef %37, ptr noundef %40), !dbg !393
  store i64 %41, ptr %8, align 8, !dbg !394
  br label %42, !dbg !395

42:                                               ; preds = %35, %32
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, ptr %17, align 4, !dbg !396
  %45 = icmp ne i32 %44, 0, !dbg !396
  br i1 %45, label %46, label %158, !dbg !398

46:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata ptr %18, metadata !399, metadata !DIExpression()), !dbg !401
  %47 = load ptr, ptr %3, align 8, !dbg !402
  %48 = getelementptr inbounds %struct.zip64_internal, ptr %47, i32 0, i32 0, !dbg !402
  %49 = load ptr, ptr %3, align 8, !dbg !402
  %50 = getelementptr inbounds %struct.zip64_internal, ptr %49, i32 0, i32 1, !dbg !402
  %51 = load ptr, ptr %50, align 8, !dbg !402
  %52 = load i64, ptr %8, align 8, !dbg !402
  %53 = call i64 @call_zseek64(ptr noundef %48, ptr noundef %51, i64 noundef %52, i32 noundef 0), !dbg !402
  %54 = icmp ne i64 %53, 0, !dbg !404
  br i1 %54, label %55, label %56, !dbg !405

55:                                               ; preds = %46
  store i32 -1, ptr %4, align 4, !dbg !406
  br label %56, !dbg !407

56:                                               ; preds = %55, %46
  %57 = load ptr, ptr %3, align 8, !dbg !408
  %58 = getelementptr inbounds %struct.zip64_internal, ptr %57, i32 0, i32 0, !dbg !410
  %59 = load ptr, ptr %3, align 8, !dbg !411
  %60 = getelementptr inbounds %struct.zip64_internal, ptr %59, i32 0, i32 1, !dbg !412
  %61 = load ptr, ptr %60, align 8, !dbg !412
  %62 = call i32 @zip64local_getLong(ptr noundef %58, ptr noundef %61, ptr noundef %9), !dbg !413
  %63 = icmp ne i32 %62, 0, !dbg !414
  br i1 %63, label %64, label %65, !dbg !415

64:                                               ; preds = %56
  store i32 -1, ptr %4, align 4, !dbg !416
  br label %65, !dbg !417

65:                                               ; preds = %64, %56
  %66 = load ptr, ptr %3, align 8, !dbg !418
  %67 = getelementptr inbounds %struct.zip64_internal, ptr %66, i32 0, i32 0, !dbg !420
  %68 = load ptr, ptr %3, align 8, !dbg !421
  %69 = getelementptr inbounds %struct.zip64_internal, ptr %68, i32 0, i32 1, !dbg !422
  %70 = load ptr, ptr %69, align 8, !dbg !422
  %71 = call i32 @zip64local_getLong64(ptr noundef %67, ptr noundef %70, ptr noundef %18), !dbg !423
  %72 = icmp ne i32 %71, 0, !dbg !424
  br i1 %72, label %73, label %74, !dbg !425

73:                                               ; preds = %65
  store i32 -1, ptr %4, align 4, !dbg !426
  br label %74, !dbg !427

74:                                               ; preds = %73, %65
  %75 = load ptr, ptr %3, align 8, !dbg !428
  %76 = getelementptr inbounds %struct.zip64_internal, ptr %75, i32 0, i32 0, !dbg !430
  %77 = load ptr, ptr %3, align 8, !dbg !431
  %78 = getelementptr inbounds %struct.zip64_internal, ptr %77, i32 0, i32 1, !dbg !432
  %79 = load ptr, ptr %78, align 8, !dbg !432
  %80 = call i32 @zip64local_getShort(ptr noundef %76, ptr noundef %79, ptr noundef %14), !dbg !433
  %81 = icmp ne i32 %80, 0, !dbg !434
  br i1 %81, label %82, label %83, !dbg !435

82:                                               ; preds = %74
  store i32 -1, ptr %4, align 4, !dbg !436
  br label %83, !dbg !437

83:                                               ; preds = %82, %74
  %84 = load ptr, ptr %3, align 8, !dbg !438
  %85 = getelementptr inbounds %struct.zip64_internal, ptr %84, i32 0, i32 0, !dbg !440
  %86 = load ptr, ptr %3, align 8, !dbg !441
  %87 = getelementptr inbounds %struct.zip64_internal, ptr %86, i32 0, i32 1, !dbg !442
  %88 = load ptr, ptr %87, align 8, !dbg !442
  %89 = call i32 @zip64local_getShort(ptr noundef %85, ptr noundef %88, ptr noundef %15), !dbg !443
  %90 = icmp ne i32 %89, 0, !dbg !444
  br i1 %90, label %91, label %92, !dbg !445

91:                                               ; preds = %83
  store i32 -1, ptr %4, align 4, !dbg !446
  br label %92, !dbg !447

92:                                               ; preds = %91, %83
  %93 = load ptr, ptr %3, align 8, !dbg !448
  %94 = getelementptr inbounds %struct.zip64_internal, ptr %93, i32 0, i32 0, !dbg !450
  %95 = load ptr, ptr %3, align 8, !dbg !451
  %96 = getelementptr inbounds %struct.zip64_internal, ptr %95, i32 0, i32 1, !dbg !452
  %97 = load ptr, ptr %96, align 8, !dbg !452
  %98 = call i32 @zip64local_getLong(ptr noundef %94, ptr noundef %97, ptr noundef %10), !dbg !453
  %99 = icmp ne i32 %98, 0, !dbg !454
  br i1 %99, label %100, label %101, !dbg !455

100:                                              ; preds = %92
  store i32 -1, ptr %4, align 4, !dbg !456
  br label %101, !dbg !457

101:                                              ; preds = %100, %92
  %102 = load ptr, ptr %3, align 8, !dbg !458
  %103 = getelementptr inbounds %struct.zip64_internal, ptr %102, i32 0, i32 0, !dbg !460
  %104 = load ptr, ptr %3, align 8, !dbg !461
  %105 = getelementptr inbounds %struct.zip64_internal, ptr %104, i32 0, i32 1, !dbg !462
  %106 = load ptr, ptr %105, align 8, !dbg !462
  %107 = call i32 @zip64local_getLong(ptr noundef %103, ptr noundef %106, ptr noundef %11), !dbg !463
  %108 = icmp ne i32 %107, 0, !dbg !464
  br i1 %108, label %109, label %110, !dbg !465

109:                                              ; preds = %101
  store i32 -1, ptr %4, align 4, !dbg !466
  br label %110, !dbg !467

110:                                              ; preds = %109, %101
  %111 = load ptr, ptr %3, align 8, !dbg !468
  %112 = getelementptr inbounds %struct.zip64_internal, ptr %111, i32 0, i32 0, !dbg !470
  %113 = load ptr, ptr %3, align 8, !dbg !471
  %114 = getelementptr inbounds %struct.zip64_internal, ptr %113, i32 0, i32 1, !dbg !472
  %115 = load ptr, ptr %114, align 8, !dbg !472
  %116 = call i32 @zip64local_getLong64(ptr noundef %112, ptr noundef %115, ptr noundef %12), !dbg !473
  %117 = icmp ne i32 %116, 0, !dbg !474
  br i1 %117, label %118, label %119, !dbg !475

118:                                              ; preds = %110
  store i32 -1, ptr %4, align 4, !dbg !476
  br label %119, !dbg !477

119:                                              ; preds = %118, %110
  %120 = load ptr, ptr %3, align 8, !dbg !478
  %121 = getelementptr inbounds %struct.zip64_internal, ptr %120, i32 0, i32 0, !dbg !480
  %122 = load ptr, ptr %3, align 8, !dbg !481
  %123 = getelementptr inbounds %struct.zip64_internal, ptr %122, i32 0, i32 1, !dbg !482
  %124 = load ptr, ptr %123, align 8, !dbg !482
  %125 = call i32 @zip64local_getLong64(ptr noundef %121, ptr noundef %124, ptr noundef %13), !dbg !483
  %126 = icmp ne i32 %125, 0, !dbg !484
  br i1 %126, label %127, label %128, !dbg !485

127:                                              ; preds = %119
  store i32 -1, ptr %4, align 4, !dbg !486
  br label %128, !dbg !487

128:                                              ; preds = %127, %119
  %129 = load i64, ptr %13, align 8, !dbg !488
  %130 = load i64, ptr %12, align 8, !dbg !490
  %131 = icmp ne i64 %129, %130, !dbg !491
  br i1 %131, label %138, label %132, !dbg !492

132:                                              ; preds = %128
  %133 = load i64, ptr %11, align 8, !dbg !493
  %134 = icmp ne i64 %133, 0, !dbg !494
  br i1 %134, label %138, label %135, !dbg !495

135:                                              ; preds = %132
  %136 = load i64, ptr %10, align 8, !dbg !496
  %137 = icmp ne i64 %136, 0, !dbg !497
  br i1 %137, label %138, label %139, !dbg !498

138:                                              ; preds = %135, %132, %128
  store i32 -103, ptr %4, align 4, !dbg !499
  br label %139, !dbg !500

139:                                              ; preds = %138, %135
  %140 = load ptr, ptr %3, align 8, !dbg !501
  %141 = getelementptr inbounds %struct.zip64_internal, ptr %140, i32 0, i32 0, !dbg !503
  %142 = load ptr, ptr %3, align 8, !dbg !504
  %143 = getelementptr inbounds %struct.zip64_internal, ptr %142, i32 0, i32 1, !dbg !505
  %144 = load ptr, ptr %143, align 8, !dbg !505
  %145 = call i32 @zip64local_getLong64(ptr noundef %141, ptr noundef %144, ptr noundef %6), !dbg !506
  %146 = icmp ne i32 %145, 0, !dbg !507
  br i1 %146, label %147, label %148, !dbg !508

147:                                              ; preds = %139
  store i32 -1, ptr %4, align 4, !dbg !509
  br label %148, !dbg !510

148:                                              ; preds = %147, %139
  %149 = load ptr, ptr %3, align 8, !dbg !511
  %150 = getelementptr inbounds %struct.zip64_internal, ptr %149, i32 0, i32 0, !dbg !513
  %151 = load ptr, ptr %3, align 8, !dbg !514
  %152 = getelementptr inbounds %struct.zip64_internal, ptr %151, i32 0, i32 1, !dbg !515
  %153 = load ptr, ptr %152, align 8, !dbg !515
  %154 = call i32 @zip64local_getLong64(ptr noundef %150, ptr noundef %153, ptr noundef %7), !dbg !516
  %155 = icmp ne i32 %154, 0, !dbg !517
  br i1 %155, label %156, label %157, !dbg !518

156:                                              ; preds = %148
  store i32 -1, ptr %4, align 4, !dbg !519
  br label %157, !dbg !520

157:                                              ; preds = %156, %148
  store i64 0, ptr %16, align 8, !dbg !521
  br label %260, !dbg !522

158:                                              ; preds = %43
  %159 = load ptr, ptr %3, align 8, !dbg !523
  %160 = getelementptr inbounds %struct.zip64_internal, ptr %159, i32 0, i32 0, !dbg !523
  %161 = load ptr, ptr %3, align 8, !dbg !523
  %162 = getelementptr inbounds %struct.zip64_internal, ptr %161, i32 0, i32 1, !dbg !523
  %163 = load ptr, ptr %162, align 8, !dbg !523
  %164 = load i64, ptr %8, align 8, !dbg !523
  %165 = call i64 @call_zseek64(ptr noundef %160, ptr noundef %163, i64 noundef %164, i32 noundef 0), !dbg !523
  %166 = icmp ne i64 %165, 0, !dbg !526
  br i1 %166, label %167, label %168, !dbg !527

167:                                              ; preds = %158
  store i32 -1, ptr %4, align 4, !dbg !528
  br label %168, !dbg !529

168:                                              ; preds = %167, %158
  %169 = load ptr, ptr %3, align 8, !dbg !530
  %170 = getelementptr inbounds %struct.zip64_internal, ptr %169, i32 0, i32 0, !dbg !532
  %171 = load ptr, ptr %3, align 8, !dbg !533
  %172 = getelementptr inbounds %struct.zip64_internal, ptr %171, i32 0, i32 1, !dbg !534
  %173 = load ptr, ptr %172, align 8, !dbg !534
  %174 = call i32 @zip64local_getLong(ptr noundef %170, ptr noundef %173, ptr noundef %9), !dbg !535
  %175 = icmp ne i32 %174, 0, !dbg !536
  br i1 %175, label %176, label %177, !dbg !537

176:                                              ; preds = %168
  store i32 -1, ptr %4, align 4, !dbg !538
  br label %177, !dbg !539

177:                                              ; preds = %176, %168
  %178 = load ptr, ptr %3, align 8, !dbg !540
  %179 = getelementptr inbounds %struct.zip64_internal, ptr %178, i32 0, i32 0, !dbg !542
  %180 = load ptr, ptr %3, align 8, !dbg !543
  %181 = getelementptr inbounds %struct.zip64_internal, ptr %180, i32 0, i32 1, !dbg !544
  %182 = load ptr, ptr %181, align 8, !dbg !544
  %183 = call i32 @zip64local_getShort(ptr noundef %179, ptr noundef %182, ptr noundef %10), !dbg !545
  %184 = icmp ne i32 %183, 0, !dbg !546
  br i1 %184, label %185, label %186, !dbg !547

185:                                              ; preds = %177
  store i32 -1, ptr %4, align 4, !dbg !548
  br label %186, !dbg !549

186:                                              ; preds = %185, %177
  %187 = load ptr, ptr %3, align 8, !dbg !550
  %188 = getelementptr inbounds %struct.zip64_internal, ptr %187, i32 0, i32 0, !dbg !552
  %189 = load ptr, ptr %3, align 8, !dbg !553
  %190 = getelementptr inbounds %struct.zip64_internal, ptr %189, i32 0, i32 1, !dbg !554
  %191 = load ptr, ptr %190, align 8, !dbg !554
  %192 = call i32 @zip64local_getShort(ptr noundef %188, ptr noundef %191, ptr noundef %11), !dbg !555
  %193 = icmp ne i32 %192, 0, !dbg !556
  br i1 %193, label %194, label %195, !dbg !557

194:                                              ; preds = %186
  store i32 -1, ptr %4, align 4, !dbg !558
  br label %195, !dbg !559

195:                                              ; preds = %194, %186
  store i64 0, ptr %12, align 8, !dbg !560
  %196 = load ptr, ptr %3, align 8, !dbg !561
  %197 = getelementptr inbounds %struct.zip64_internal, ptr %196, i32 0, i32 0, !dbg !563
  %198 = load ptr, ptr %3, align 8, !dbg !564
  %199 = getelementptr inbounds %struct.zip64_internal, ptr %198, i32 0, i32 1, !dbg !565
  %200 = load ptr, ptr %199, align 8, !dbg !565
  %201 = call i32 @zip64local_getShort(ptr noundef %197, ptr noundef %200, ptr noundef %9), !dbg !566
  %202 = icmp ne i32 %201, 0, !dbg !567
  br i1 %202, label %203, label %204, !dbg !568

203:                                              ; preds = %195
  store i32 -1, ptr %4, align 4, !dbg !569
  br label %206, !dbg !570

204:                                              ; preds = %195
  %205 = load i64, ptr %9, align 8, !dbg !571
  store i64 %205, ptr %12, align 8, !dbg !572
  br label %206

206:                                              ; preds = %204, %203
  store i64 0, ptr %13, align 8, !dbg !573
  %207 = load ptr, ptr %3, align 8, !dbg !574
  %208 = getelementptr inbounds %struct.zip64_internal, ptr %207, i32 0, i32 0, !dbg !576
  %209 = load ptr, ptr %3, align 8, !dbg !577
  %210 = getelementptr inbounds %struct.zip64_internal, ptr %209, i32 0, i32 1, !dbg !578
  %211 = load ptr, ptr %210, align 8, !dbg !578
  %212 = call i32 @zip64local_getShort(ptr noundef %208, ptr noundef %211, ptr noundef %9), !dbg !579
  %213 = icmp ne i32 %212, 0, !dbg !580
  br i1 %213, label %214, label %215, !dbg !581

214:                                              ; preds = %206
  store i32 -1, ptr %4, align 4, !dbg !582
  br label %217, !dbg !583

215:                                              ; preds = %206
  %216 = load i64, ptr %9, align 8, !dbg !584
  store i64 %216, ptr %13, align 8, !dbg !585
  br label %217

217:                                              ; preds = %215, %214
  %218 = load i64, ptr %13, align 8, !dbg !586
  %219 = load i64, ptr %12, align 8, !dbg !588
  %220 = icmp ne i64 %218, %219, !dbg !589
  br i1 %220, label %227, label %221, !dbg !590

221:                                              ; preds = %217
  %222 = load i64, ptr %11, align 8, !dbg !591
  %223 = icmp ne i64 %222, 0, !dbg !592
  br i1 %223, label %227, label %224, !dbg !593

224:                                              ; preds = %221
  %225 = load i64, ptr %10, align 8, !dbg !594
  %226 = icmp ne i64 %225, 0, !dbg !595
  br i1 %226, label %227, label %228, !dbg !596

227:                                              ; preds = %224, %221, %217
  store i32 -103, ptr %4, align 4, !dbg !597
  br label %228, !dbg !598

228:                                              ; preds = %227, %224
  store i64 0, ptr %6, align 8, !dbg !599
  %229 = load ptr, ptr %3, align 8, !dbg !600
  %230 = getelementptr inbounds %struct.zip64_internal, ptr %229, i32 0, i32 0, !dbg !602
  %231 = load ptr, ptr %3, align 8, !dbg !603
  %232 = getelementptr inbounds %struct.zip64_internal, ptr %231, i32 0, i32 1, !dbg !604
  %233 = load ptr, ptr %232, align 8, !dbg !604
  %234 = call i32 @zip64local_getLong(ptr noundef %230, ptr noundef %233, ptr noundef %9), !dbg !605
  %235 = icmp ne i32 %234, 0, !dbg !606
  br i1 %235, label %236, label %237, !dbg !607

236:                                              ; preds = %228
  store i32 -1, ptr %4, align 4, !dbg !608
  br label %239, !dbg !609

237:                                              ; preds = %228
  %238 = load i64, ptr %9, align 8, !dbg !610
  store i64 %238, ptr %6, align 8, !dbg !611
  br label %239

239:                                              ; preds = %237, %236
  store i64 0, ptr %7, align 8, !dbg !612
  %240 = load ptr, ptr %3, align 8, !dbg !613
  %241 = getelementptr inbounds %struct.zip64_internal, ptr %240, i32 0, i32 0, !dbg !615
  %242 = load ptr, ptr %3, align 8, !dbg !616
  %243 = getelementptr inbounds %struct.zip64_internal, ptr %242, i32 0, i32 1, !dbg !617
  %244 = load ptr, ptr %243, align 8, !dbg !617
  %245 = call i32 @zip64local_getLong(ptr noundef %241, ptr noundef %244, ptr noundef %9), !dbg !618
  %246 = icmp ne i32 %245, 0, !dbg !619
  br i1 %246, label %247, label %248, !dbg !620

247:                                              ; preds = %239
  store i32 -1, ptr %4, align 4, !dbg !621
  br label %250, !dbg !622

248:                                              ; preds = %239
  %249 = load i64, ptr %9, align 8, !dbg !623
  store i64 %249, ptr %7, align 8, !dbg !624
  br label %250

250:                                              ; preds = %248, %247
  %251 = load ptr, ptr %3, align 8, !dbg !625
  %252 = getelementptr inbounds %struct.zip64_internal, ptr %251, i32 0, i32 0, !dbg !627
  %253 = load ptr, ptr %3, align 8, !dbg !628
  %254 = getelementptr inbounds %struct.zip64_internal, ptr %253, i32 0, i32 1, !dbg !629
  %255 = load ptr, ptr %254, align 8, !dbg !629
  %256 = call i32 @zip64local_getShort(ptr noundef %252, ptr noundef %255, ptr noundef %16), !dbg !630
  %257 = icmp ne i32 %256, 0, !dbg !631
  br i1 %257, label %258, label %259, !dbg !632

258:                                              ; preds = %250
  store i32 -1, ptr %4, align 4, !dbg !633
  br label %259, !dbg !634

259:                                              ; preds = %258, %250
  br label %260

260:                                              ; preds = %259, %157
  %261 = load i64, ptr %8, align 8, !dbg !635
  %262 = load i64, ptr %7, align 8, !dbg !637
  %263 = load i64, ptr %6, align 8, !dbg !638
  %264 = add i64 %262, %263, !dbg !639
  %265 = icmp ult i64 %261, %264, !dbg !640
  br i1 %265, label %266, label %270, !dbg !641

266:                                              ; preds = %260
  %267 = load i32, ptr %4, align 4, !dbg !642
  %268 = icmp eq i32 %267, 0, !dbg !643
  br i1 %268, label %269, label %270, !dbg !644

269:                                              ; preds = %266
  store i32 -103, ptr %4, align 4, !dbg !645
  br label %270, !dbg !646

270:                                              ; preds = %269, %266, %260
  %271 = load i32, ptr %4, align 4, !dbg !647
  %272 = icmp ne i32 %271, 0, !dbg !649
  br i1 %272, label %273, label %288, !dbg !650

273:                                              ; preds = %270
  %274 = load ptr, ptr %3, align 8, !dbg !651
  %275 = getelementptr inbounds %struct.zip64_internal, ptr %274, i32 0, i32 0, !dbg !651
  %276 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %275, i32 0, i32 0, !dbg !651
  %277 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %276, i32 0, i32 6, !dbg !651
  %278 = load ptr, ptr %277, align 8, !dbg !651
  %279 = load ptr, ptr %3, align 8, !dbg !651
  %280 = getelementptr inbounds %struct.zip64_internal, ptr %279, i32 0, i32 0, !dbg !651
  %281 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %280, i32 0, i32 0, !dbg !651
  %282 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %281, i32 0, i32 8, !dbg !651
  %283 = load ptr, ptr %282, align 8, !dbg !651
  %284 = load ptr, ptr %3, align 8, !dbg !651
  %285 = getelementptr inbounds %struct.zip64_internal, ptr %284, i32 0, i32 1, !dbg !651
  %286 = load ptr, ptr %285, align 8, !dbg !651
  %287 = call i32 %278(ptr noundef %283, ptr noundef %286), !dbg !651
  store i32 -1, ptr %2, align 4, !dbg !653
  br label %422, !dbg !653

288:                                              ; preds = %270
  %289 = load i64, ptr %16, align 8, !dbg !654
  %290 = icmp ugt i64 %289, 0, !dbg !656
  br i1 %290, label %291, label %326, !dbg !657

291:                                              ; preds = %288
  %292 = load i64, ptr %16, align 8, !dbg !658
  %293 = add i64 %292, 1, !dbg !658
  %294 = call noalias ptr @malloc(i64 noundef %293) #8, !dbg !658
  %295 = load ptr, ptr %3, align 8, !dbg !660
  %296 = getelementptr inbounds %struct.zip64_internal, ptr %295, i32 0, i32 8, !dbg !661
  store ptr %294, ptr %296, align 8, !dbg !662
  %297 = load ptr, ptr %3, align 8, !dbg !663
  %298 = getelementptr inbounds %struct.zip64_internal, ptr %297, i32 0, i32 8, !dbg !665
  %299 = load ptr, ptr %298, align 8, !dbg !665
  %300 = icmp ne ptr %299, null, !dbg !663
  br i1 %300, label %301, label %325, !dbg !666

301:                                              ; preds = %291
  %302 = load ptr, ptr %3, align 8, !dbg !667
  %303 = getelementptr inbounds %struct.zip64_internal, ptr %302, i32 0, i32 0, !dbg !667
  %304 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %303, i32 0, i32 0, !dbg !667
  %305 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %304, i32 0, i32 1, !dbg !667
  %306 = load ptr, ptr %305, align 8, !dbg !667
  %307 = load ptr, ptr %3, align 8, !dbg !667
  %308 = getelementptr inbounds %struct.zip64_internal, ptr %307, i32 0, i32 0, !dbg !667
  %309 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %308, i32 0, i32 0, !dbg !667
  %310 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %309, i32 0, i32 8, !dbg !667
  %311 = load ptr, ptr %310, align 8, !dbg !667
  %312 = load ptr, ptr %3, align 8, !dbg !667
  %313 = getelementptr inbounds %struct.zip64_internal, ptr %312, i32 0, i32 1, !dbg !667
  %314 = load ptr, ptr %313, align 8, !dbg !667
  %315 = load ptr, ptr %3, align 8, !dbg !667
  %316 = getelementptr inbounds %struct.zip64_internal, ptr %315, i32 0, i32 8, !dbg !667
  %317 = load ptr, ptr %316, align 8, !dbg !667
  %318 = load i64, ptr %16, align 8, !dbg !667
  %319 = call i64 %306(ptr noundef %311, ptr noundef %314, ptr noundef %317, i64 noundef %318), !dbg !667
  store i64 %319, ptr %16, align 8, !dbg !669
  %320 = load ptr, ptr %3, align 8, !dbg !670
  %321 = getelementptr inbounds %struct.zip64_internal, ptr %320, i32 0, i32 8, !dbg !671
  %322 = load ptr, ptr %321, align 8, !dbg !671
  %323 = load i64, ptr %16, align 8, !dbg !672
  %324 = getelementptr inbounds i8, ptr %322, i64 %323, !dbg !670
  store i8 0, ptr %324, align 1, !dbg !673
  br label %325, !dbg !674

325:                                              ; preds = %301, %291
  br label %326, !dbg !675

326:                                              ; preds = %325, %288
  %327 = load i64, ptr %8, align 8, !dbg !676
  %328 = load i64, ptr %7, align 8, !dbg !677
  %329 = load i64, ptr %6, align 8, !dbg !678
  %330 = add i64 %328, %329, !dbg !679
  %331 = sub i64 %327, %330, !dbg !680
  store i64 %331, ptr %5, align 8, !dbg !681
  %332 = load i64, ptr %5, align 8, !dbg !682
  %333 = load ptr, ptr %3, align 8, !dbg !683
  %334 = getelementptr inbounds %struct.zip64_internal, ptr %333, i32 0, i32 6, !dbg !684
  store i64 %332, ptr %334, align 8, !dbg !685
  call void @llvm.dbg.declare(metadata ptr %19, metadata !686, metadata !DIExpression()), !dbg !688
  %335 = load i64, ptr %6, align 8, !dbg !689
  store i64 %335, ptr %19, align 8, !dbg !688
  call void @llvm.dbg.declare(metadata ptr %20, metadata !690, metadata !DIExpression()), !dbg !693
  store i64 4080, ptr %20, align 8, !dbg !693
  call void @llvm.dbg.declare(metadata ptr %21, metadata !694, metadata !DIExpression()), !dbg !695
  %336 = load i64, ptr %20, align 8, !dbg !696
  %337 = call noalias ptr @malloc(i64 noundef %336) #8, !dbg !696
  store ptr %337, ptr %21, align 8, !dbg !695
  %338 = load ptr, ptr %3, align 8, !dbg !697
  %339 = getelementptr inbounds %struct.zip64_internal, ptr %338, i32 0, i32 0, !dbg !697
  %340 = load ptr, ptr %3, align 8, !dbg !697
  %341 = getelementptr inbounds %struct.zip64_internal, ptr %340, i32 0, i32 1, !dbg !697
  %342 = load ptr, ptr %341, align 8, !dbg !697
  %343 = load i64, ptr %7, align 8, !dbg !697
  %344 = load i64, ptr %5, align 8, !dbg !697
  %345 = add i64 %343, %344, !dbg !697
  %346 = call i64 @call_zseek64(ptr noundef %339, ptr noundef %342, i64 noundef %345, i32 noundef 0), !dbg !697
  %347 = icmp ne i64 %346, 0, !dbg !699
  br i1 %347, label %348, label %349, !dbg !700

348:                                              ; preds = %326
  store i32 -1, ptr %4, align 4, !dbg !701
  br label %349, !dbg !702

349:                                              ; preds = %348, %326
  br label %350, !dbg !703

350:                                              ; preds = %393, %349
  %351 = load i64, ptr %19, align 8, !dbg !704
  %352 = icmp ugt i64 %351, 0, !dbg !705
  br i1 %352, label %353, label %356, !dbg !706

353:                                              ; preds = %350
  %354 = load i32, ptr %4, align 4, !dbg !707
  %355 = icmp eq i32 %354, 0, !dbg !708
  br label %356

356:                                              ; preds = %353, %350
  %357 = phi i1 [ false, %350 ], [ %355, %353 ], !dbg !709
  br i1 %357, label %358, label %397, !dbg !703

358:                                              ; preds = %356
  call void @llvm.dbg.declare(metadata ptr %22, metadata !710, metadata !DIExpression()), !dbg !712
  store i64 4080, ptr %22, align 8, !dbg !712
  %359 = load i64, ptr %22, align 8, !dbg !713
  %360 = load i64, ptr %19, align 8, !dbg !715
  %361 = icmp ugt i64 %359, %360, !dbg !716
  br i1 %361, label %362, label %364, !dbg !717

362:                                              ; preds = %358
  %363 = load i64, ptr %19, align 8, !dbg !718
  store i64 %363, ptr %22, align 8, !dbg !719
  br label %364, !dbg !720

364:                                              ; preds = %362, %358
  %365 = load ptr, ptr %3, align 8, !dbg !721
  %366 = getelementptr inbounds %struct.zip64_internal, ptr %365, i32 0, i32 0, !dbg !721
  %367 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %366, i32 0, i32 0, !dbg !721
  %368 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %367, i32 0, i32 1, !dbg !721
  %369 = load ptr, ptr %368, align 8, !dbg !721
  %370 = load ptr, ptr %3, align 8, !dbg !721
  %371 = getelementptr inbounds %struct.zip64_internal, ptr %370, i32 0, i32 0, !dbg !721
  %372 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %371, i32 0, i32 0, !dbg !721
  %373 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %372, i32 0, i32 8, !dbg !721
  %374 = load ptr, ptr %373, align 8, !dbg !721
  %375 = load ptr, ptr %3, align 8, !dbg !721
  %376 = getelementptr inbounds %struct.zip64_internal, ptr %375, i32 0, i32 1, !dbg !721
  %377 = load ptr, ptr %376, align 8, !dbg !721
  %378 = load ptr, ptr %21, align 8, !dbg !721
  %379 = load i64, ptr %22, align 8, !dbg !721
  %380 = call i64 %369(ptr noundef %374, ptr noundef %377, ptr noundef %378, i64 noundef %379), !dbg !721
  %381 = load i64, ptr %22, align 8, !dbg !723
  %382 = icmp ne i64 %380, %381, !dbg !724
  br i1 %382, label %383, label %384, !dbg !725

383:                                              ; preds = %364
  store i32 -1, ptr %4, align 4, !dbg !726
  br label %384, !dbg !727

384:                                              ; preds = %383, %364
  %385 = load i32, ptr %4, align 4, !dbg !728
  %386 = icmp eq i32 %385, 0, !dbg !730
  br i1 %386, label %387, label %393, !dbg !731

387:                                              ; preds = %384
  %388 = load ptr, ptr %3, align 8, !dbg !732
  %389 = getelementptr inbounds %struct.zip64_internal, ptr %388, i32 0, i32 2, !dbg !733
  %390 = load ptr, ptr %21, align 8, !dbg !734
  %391 = load i64, ptr %22, align 8, !dbg !735
  %392 = call i32 @add_data_in_datablock(ptr noundef %389, ptr noundef %390, i64 noundef %391), !dbg !736
  store i32 %392, ptr %4, align 4, !dbg !737
  br label %393, !dbg !738

393:                                              ; preds = %387, %384
  %394 = load i64, ptr %22, align 8, !dbg !739
  %395 = load i64, ptr %19, align 8, !dbg !740
  %396 = sub i64 %395, %394, !dbg !740
  store i64 %396, ptr %19, align 8, !dbg !740
  br label %350, !dbg !703, !llvm.loop !741

397:                                              ; preds = %356
  %398 = load ptr, ptr %21, align 8, !dbg !744
  %399 = icmp ne ptr %398, null, !dbg !744
  br i1 %399, label %400, label %402, !dbg !747

400:                                              ; preds = %397
  %401 = load ptr, ptr %21, align 8, !dbg !744
  call void @free(ptr noundef %401) #9, !dbg !744
  br label %402, !dbg !744

402:                                              ; preds = %400, %397
  %403 = load i64, ptr %5, align 8, !dbg !748
  %404 = load ptr, ptr %3, align 8, !dbg !749
  %405 = getelementptr inbounds %struct.zip64_internal, ptr %404, i32 0, i32 5, !dbg !750
  store i64 %403, ptr %405, align 8, !dbg !751
  %406 = load i64, ptr %13, align 8, !dbg !752
  %407 = load ptr, ptr %3, align 8, !dbg !753
  %408 = getelementptr inbounds %struct.zip64_internal, ptr %407, i32 0, i32 7, !dbg !754
  store i64 %406, ptr %408, align 8, !dbg !755
  %409 = load ptr, ptr %3, align 8, !dbg !756
  %410 = getelementptr inbounds %struct.zip64_internal, ptr %409, i32 0, i32 0, !dbg !756
  %411 = load ptr, ptr %3, align 8, !dbg !756
  %412 = getelementptr inbounds %struct.zip64_internal, ptr %411, i32 0, i32 1, !dbg !756
  %413 = load ptr, ptr %412, align 8, !dbg !756
  %414 = load i64, ptr %7, align 8, !dbg !756
  %415 = load i64, ptr %5, align 8, !dbg !756
  %416 = add i64 %414, %415, !dbg !756
  %417 = call i64 @call_zseek64(ptr noundef %410, ptr noundef %413, i64 noundef %416, i32 noundef 0), !dbg !756
  %418 = icmp ne i64 %417, 0, !dbg !758
  br i1 %418, label %419, label %420, !dbg !759

419:                                              ; preds = %402
  store i32 -1, ptr %4, align 4, !dbg !760
  br label %420, !dbg !761

420:                                              ; preds = %419, %402
  %421 = load i32, ptr %4, align 4, !dbg !762
  store i32 %421, ptr %2, align 4, !dbg !763
  br label %422, !dbg !763

422:                                              ; preds = %420, %273
  %423 = load i32, ptr %2, align 4, !dbg !764
  ret i32 %423, !dbg !764
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @zipOpen2(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !765 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.zlib_filefunc64_32_def_s, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !781, metadata !DIExpression()), !dbg !782
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !783, metadata !DIExpression()), !dbg !784
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !785, metadata !DIExpression()), !dbg !786
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !787, metadata !DIExpression()), !dbg !788
  %11 = load ptr, ptr %9, align 8, !dbg !789
  %12 = icmp ne ptr %11, null, !dbg !791
  br i1 %12, label %13, label %19, !dbg !792

13:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !793, metadata !DIExpression()), !dbg !795
  %14 = load ptr, ptr %9, align 8, !dbg !796
  call void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef %10, ptr noundef %14), !dbg !797
  %15 = load ptr, ptr %6, align 8, !dbg !798
  %16 = load i32, ptr %7, align 4, !dbg !799
  %17 = load ptr, ptr %8, align 8, !dbg !800
  %18 = call ptr @zipOpen3(ptr noundef %15, i32 noundef %16, ptr noundef %17, ptr noundef %10), !dbg !801
  store ptr %18, ptr %5, align 8, !dbg !802
  br label %24, !dbg !802

19:                                               ; preds = %4
  %20 = load ptr, ptr %6, align 8, !dbg !803
  %21 = load i32, ptr %7, align 4, !dbg !804
  %22 = load ptr, ptr %8, align 8, !dbg !805
  %23 = call ptr @zipOpen3(ptr noundef %20, i32 noundef %21, ptr noundef %22, ptr noundef null), !dbg !806
  store ptr %23, ptr %5, align 8, !dbg !807
  br label %24, !dbg !807

24:                                               ; preds = %19, %13
  %25 = load ptr, ptr %5, align 8, !dbg !808
  ret ptr %25, !dbg !808
}

declare void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @zipOpen2_64(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !809 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.zlib_filefunc64_32_def_s, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !813, metadata !DIExpression()), !dbg !814
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !815, metadata !DIExpression()), !dbg !816
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !817, metadata !DIExpression()), !dbg !818
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !819, metadata !DIExpression()), !dbg !820
  %11 = load ptr, ptr %9, align 8, !dbg !821
  %12 = icmp ne ptr %11, null, !dbg !823
  br i1 %12, label %13, label %22, !dbg !824

13:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !825, metadata !DIExpression()), !dbg !827
  %14 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %10, i32 0, i32 0, !dbg !828
  %15 = load ptr, ptr %9, align 8, !dbg !829
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %15, i64 72, i1 false), !dbg !830
  %16 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %10, i32 0, i32 2, !dbg !831
  store ptr null, ptr %16, align 8, !dbg !832
  %17 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %10, i32 0, i32 3, !dbg !833
  store ptr null, ptr %17, align 8, !dbg !834
  %18 = load ptr, ptr %6, align 8, !dbg !835
  %19 = load i32, ptr %7, align 4, !dbg !836
  %20 = load ptr, ptr %8, align 8, !dbg !837
  %21 = call ptr @zipOpen3(ptr noundef %18, i32 noundef %19, ptr noundef %20, ptr noundef %10), !dbg !838
  store ptr %21, ptr %5, align 8, !dbg !839
  br label %27, !dbg !839

22:                                               ; preds = %4
  %23 = load ptr, ptr %6, align 8, !dbg !840
  %24 = load i32, ptr %7, align 4, !dbg !841
  %25 = load ptr, ptr %8, align 8, !dbg !842
  %26 = call ptr @zipOpen3(ptr noundef %23, i32 noundef %24, ptr noundef %25, ptr noundef null), !dbg !843
  store ptr %26, ptr %5, align 8, !dbg !844
  br label %27, !dbg !844

27:                                               ; preds = %22, %13
  %28 = load ptr, ptr %5, align 8, !dbg !845
  ret ptr %28, !dbg !845
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @zipOpen(ptr noundef %0, i32 noundef %1) #0 !dbg !846 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !849, metadata !DIExpression()), !dbg !850
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !851, metadata !DIExpression()), !dbg !852
  %5 = load ptr, ptr %3, align 8, !dbg !853
  %6 = load i32, ptr %4, align 4, !dbg !854
  %7 = call ptr @zipOpen3(ptr noundef %5, i32 noundef %6, ptr noundef null, ptr noundef null), !dbg !855
  ret ptr %7, !dbg !856
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @zipOpen64(ptr noundef %0, i32 noundef %1) #0 !dbg !857 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !860, metadata !DIExpression()), !dbg !861
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !862, metadata !DIExpression()), !dbg !863
  %5 = load ptr, ptr %3, align 8, !dbg !864
  %6 = load i32, ptr %4, align 4, !dbg !865
  %7 = call ptr @zipOpen3(ptr noundef %5, i32 noundef %6, ptr noundef null, ptr noundef null), !dbg !866
  ret ptr %7, !dbg !867
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipOpenNewFileInZip4_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i32 noundef %18) #0 !dbg !868 {
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 8
  %27 = alloca i32, align 4
  %28 = alloca ptr, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca ptr, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i32, align 4
  %40 = alloca ptr, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca [12 x i8], align 1
  %46 = alloca i32, align 4
  store ptr %0, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !889, metadata !DIExpression()), !dbg !890
  store ptr %1, ptr %22, align 8
  call void @llvm.dbg.declare(metadata ptr %22, metadata !891, metadata !DIExpression()), !dbg !892
  store ptr %2, ptr %23, align 8
  call void @llvm.dbg.declare(metadata ptr %23, metadata !893, metadata !DIExpression()), !dbg !894
  store ptr %3, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %24, metadata !895, metadata !DIExpression()), !dbg !896
  store i32 %4, ptr %25, align 4
  call void @llvm.dbg.declare(metadata ptr %25, metadata !897, metadata !DIExpression()), !dbg !898
  store ptr %5, ptr %26, align 8
  call void @llvm.dbg.declare(metadata ptr %26, metadata !899, metadata !DIExpression()), !dbg !900
  store i32 %6, ptr %27, align 4
  call void @llvm.dbg.declare(metadata ptr %27, metadata !901, metadata !DIExpression()), !dbg !902
  store ptr %7, ptr %28, align 8
  call void @llvm.dbg.declare(metadata ptr %28, metadata !903, metadata !DIExpression()), !dbg !904
  store i32 %8, ptr %29, align 4
  call void @llvm.dbg.declare(metadata ptr %29, metadata !905, metadata !DIExpression()), !dbg !906
  store i32 %9, ptr %30, align 4
  call void @llvm.dbg.declare(metadata ptr %30, metadata !907, metadata !DIExpression()), !dbg !908
  store i32 %10, ptr %31, align 4
  call void @llvm.dbg.declare(metadata ptr %31, metadata !909, metadata !DIExpression()), !dbg !910
  store i32 %11, ptr %32, align 4
  call void @llvm.dbg.declare(metadata ptr %32, metadata !911, metadata !DIExpression()), !dbg !912
  store i32 %12, ptr %33, align 4
  call void @llvm.dbg.declare(metadata ptr %33, metadata !913, metadata !DIExpression()), !dbg !914
  store i32 %13, ptr %34, align 4
  call void @llvm.dbg.declare(metadata ptr %34, metadata !915, metadata !DIExpression()), !dbg !916
  store ptr %14, ptr %35, align 8
  call void @llvm.dbg.declare(metadata ptr %35, metadata !917, metadata !DIExpression()), !dbg !918
  store i64 %15, ptr %36, align 8
  call void @llvm.dbg.declare(metadata ptr %36, metadata !919, metadata !DIExpression()), !dbg !920
  store i64 %16, ptr %37, align 8
  call void @llvm.dbg.declare(metadata ptr %37, metadata !921, metadata !DIExpression()), !dbg !922
  store i64 %17, ptr %38, align 8
  call void @llvm.dbg.declare(metadata ptr %38, metadata !923, metadata !DIExpression()), !dbg !924
  store i32 %18, ptr %39, align 4
  call void @llvm.dbg.declare(metadata ptr %39, metadata !925, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.declare(metadata ptr %40, metadata !927, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.declare(metadata ptr %41, metadata !929, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.declare(metadata ptr %42, metadata !931, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.declare(metadata ptr %43, metadata !933, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.declare(metadata ptr %44, metadata !935, metadata !DIExpression()), !dbg !936
  store i32 0, ptr %44, align 4, !dbg !936
  %47 = load ptr, ptr %21, align 8, !dbg !937
  %48 = icmp eq ptr %47, null, !dbg !939
  br i1 %48, label %49, label %50, !dbg !940

49:                                               ; preds = %19
  store i32 -102, ptr %20, align 4, !dbg !941
  br label %619, !dbg !941

50:                                               ; preds = %19
  %51 = load i32, ptr %29, align 4, !dbg !942
  %52 = icmp ne i32 %51, 0, !dbg !944
  br i1 %52, label %53, label %57, !dbg !945

53:                                               ; preds = %50
  %54 = load i32, ptr %29, align 4, !dbg !946
  %55 = icmp ne i32 %54, 8, !dbg !947
  br i1 %55, label %56, label %57, !dbg !948

56:                                               ; preds = %53
  store i32 -102, ptr %20, align 4, !dbg !949
  br label %619, !dbg !949

57:                                               ; preds = %53, %50
  %58 = load ptr, ptr %21, align 8, !dbg !950
  store ptr %58, ptr %40, align 8, !dbg !951
  %59 = load ptr, ptr %40, align 8, !dbg !952
  %60 = getelementptr inbounds %struct.zip64_internal, ptr %59, i32 0, i32 3, !dbg !954
  %61 = load i32, ptr %60, align 8, !dbg !954
  %62 = icmp eq i32 %61, 1, !dbg !955
  br i1 %62, label %63, label %71, !dbg !956

63:                                               ; preds = %57
  %64 = load ptr, ptr %21, align 8, !dbg !957
  %65 = call i32 @zipCloseFileInZip(ptr noundef %64), !dbg !959
  store i32 %65, ptr %44, align 4, !dbg !960
  %66 = load i32, ptr %44, align 4, !dbg !961
  %67 = icmp ne i32 %66, 0, !dbg !963
  br i1 %67, label %68, label %70, !dbg !964

68:                                               ; preds = %63
  %69 = load i32, ptr %44, align 4, !dbg !965
  store i32 %69, ptr %20, align 4, !dbg !966
  br label %619, !dbg !966

70:                                               ; preds = %63
  br label %71, !dbg !967

71:                                               ; preds = %70, %57
  %72 = load ptr, ptr %22, align 8, !dbg !968
  %73 = icmp eq ptr %72, null, !dbg !970
  br i1 %73, label %74, label %75, !dbg !971

74:                                               ; preds = %71
  store ptr @.str, ptr %22, align 8, !dbg !972
  br label %75, !dbg !973

75:                                               ; preds = %74, %71
  %76 = load ptr, ptr %28, align 8, !dbg !974
  %77 = icmp eq ptr %76, null, !dbg !976
  br i1 %77, label %78, label %79, !dbg !977

78:                                               ; preds = %75
  store i32 0, ptr %42, align 4, !dbg !978
  br label %83, !dbg !979

79:                                               ; preds = %75
  %80 = load ptr, ptr %28, align 8, !dbg !980
  %81 = call i64 @strlen(ptr noundef %80) #10, !dbg !981
  %82 = trunc i64 %81 to i32, !dbg !982
  store i32 %82, ptr %42, align 4, !dbg !983
  br label %83

83:                                               ; preds = %79, %78
  %84 = load ptr, ptr %22, align 8, !dbg !984
  %85 = call i64 @strlen(ptr noundef %84) #10, !dbg !985
  %86 = trunc i64 %85 to i32, !dbg !986
  store i32 %86, ptr %41, align 4, !dbg !987
  %87 = load ptr, ptr %23, align 8, !dbg !988
  %88 = icmp eq ptr %87, null, !dbg !990
  br i1 %88, label %89, label %93, !dbg !991

89:                                               ; preds = %83
  %90 = load ptr, ptr %40, align 8, !dbg !992
  %91 = getelementptr inbounds %struct.zip64_internal, ptr %90, i32 0, i32 4, !dbg !993
  %92 = getelementptr inbounds %struct.curfile64_info, ptr %91, i32 0, i32 12, !dbg !994
  store i64 0, ptr %92, align 8, !dbg !995
  br label %113, !dbg !992

93:                                               ; preds = %83
  %94 = load ptr, ptr %23, align 8, !dbg !996
  %95 = getelementptr inbounds %struct.zip_fileinfo, ptr %94, i32 0, i32 1, !dbg !999
  %96 = load i64, ptr %95, align 8, !dbg !999
  %97 = icmp ne i64 %96, 0, !dbg !1000
  br i1 %97, label %98, label %105, !dbg !1001

98:                                               ; preds = %93
  %99 = load ptr, ptr %23, align 8, !dbg !1002
  %100 = getelementptr inbounds %struct.zip_fileinfo, ptr %99, i32 0, i32 1, !dbg !1003
  %101 = load i64, ptr %100, align 8, !dbg !1003
  %102 = load ptr, ptr %40, align 8, !dbg !1004
  %103 = getelementptr inbounds %struct.zip64_internal, ptr %102, i32 0, i32 4, !dbg !1005
  %104 = getelementptr inbounds %struct.curfile64_info, ptr %103, i32 0, i32 12, !dbg !1006
  store i64 %101, ptr %104, align 8, !dbg !1007
  br label %112, !dbg !1004

105:                                              ; preds = %93
  %106 = load ptr, ptr %23, align 8, !dbg !1008
  %107 = getelementptr inbounds %struct.zip_fileinfo, ptr %106, i32 0, i32 0, !dbg !1009
  %108 = call i64 @zip64local_TmzDateToDosDate(ptr noundef %107), !dbg !1010
  %109 = load ptr, ptr %40, align 8, !dbg !1011
  %110 = getelementptr inbounds %struct.zip64_internal, ptr %109, i32 0, i32 4, !dbg !1012
  %111 = getelementptr inbounds %struct.curfile64_info, ptr %110, i32 0, i32 12, !dbg !1013
  store i64 %108, ptr %111, align 8, !dbg !1014
  br label %112

112:                                              ; preds = %105, %98
  br label %113

113:                                              ; preds = %112, %89
  %114 = load i64, ptr %38, align 8, !dbg !1015
  %115 = load ptr, ptr %40, align 8, !dbg !1016
  %116 = getelementptr inbounds %struct.zip64_internal, ptr %115, i32 0, i32 4, !dbg !1017
  %117 = getelementptr inbounds %struct.curfile64_info, ptr %116, i32 0, i32 8, !dbg !1018
  store i64 %114, ptr %117, align 8, !dbg !1019
  %118 = load i32, ptr %30, align 4, !dbg !1020
  %119 = icmp eq i32 %118, 8, !dbg !1022
  br i1 %119, label %123, label %120, !dbg !1023

120:                                              ; preds = %113
  %121 = load i32, ptr %30, align 4, !dbg !1024
  %122 = icmp eq i32 %121, 9, !dbg !1025
  br i1 %122, label %123, label %129, !dbg !1026

123:                                              ; preds = %120, %113
  %124 = load ptr, ptr %40, align 8, !dbg !1027
  %125 = getelementptr inbounds %struct.zip64_internal, ptr %124, i32 0, i32 4, !dbg !1028
  %126 = getelementptr inbounds %struct.curfile64_info, ptr %125, i32 0, i32 8, !dbg !1029
  %127 = load i64, ptr %126, align 8, !dbg !1030
  %128 = or i64 %127, 2, !dbg !1030
  store i64 %128, ptr %126, align 8, !dbg !1030
  br label %129, !dbg !1027

129:                                              ; preds = %123, %120
  %130 = load i32, ptr %30, align 4, !dbg !1031
  %131 = icmp eq i32 %130, 2, !dbg !1033
  br i1 %131, label %132, label %138, !dbg !1034

132:                                              ; preds = %129
  %133 = load ptr, ptr %40, align 8, !dbg !1035
  %134 = getelementptr inbounds %struct.zip64_internal, ptr %133, i32 0, i32 4, !dbg !1036
  %135 = getelementptr inbounds %struct.curfile64_info, ptr %134, i32 0, i32 8, !dbg !1037
  %136 = load i64, ptr %135, align 8, !dbg !1038
  %137 = or i64 %136, 4, !dbg !1038
  store i64 %137, ptr %135, align 8, !dbg !1038
  br label %138, !dbg !1035

138:                                              ; preds = %132, %129
  %139 = load i32, ptr %30, align 4, !dbg !1039
  %140 = icmp eq i32 %139, 1, !dbg !1041
  br i1 %140, label %141, label %147, !dbg !1042

141:                                              ; preds = %138
  %142 = load ptr, ptr %40, align 8, !dbg !1043
  %143 = getelementptr inbounds %struct.zip64_internal, ptr %142, i32 0, i32 4, !dbg !1044
  %144 = getelementptr inbounds %struct.curfile64_info, ptr %143, i32 0, i32 8, !dbg !1045
  %145 = load i64, ptr %144, align 8, !dbg !1046
  %146 = or i64 %145, 6, !dbg !1046
  store i64 %146, ptr %144, align 8, !dbg !1046
  br label %147, !dbg !1043

147:                                              ; preds = %141, %138
  %148 = load ptr, ptr %35, align 8, !dbg !1047
  %149 = icmp ne ptr %148, null, !dbg !1049
  br i1 %149, label %150, label %156, !dbg !1050

150:                                              ; preds = %147
  %151 = load ptr, ptr %40, align 8, !dbg !1051
  %152 = getelementptr inbounds %struct.zip64_internal, ptr %151, i32 0, i32 4, !dbg !1052
  %153 = getelementptr inbounds %struct.curfile64_info, ptr %152, i32 0, i32 8, !dbg !1053
  %154 = load i64, ptr %153, align 8, !dbg !1054
  %155 = or i64 %154, 1, !dbg !1054
  store i64 %155, ptr %153, align 8, !dbg !1054
  br label %156, !dbg !1051

156:                                              ; preds = %150, %147
  %157 = load ptr, ptr %40, align 8, !dbg !1055
  %158 = getelementptr inbounds %struct.zip64_internal, ptr %157, i32 0, i32 4, !dbg !1056
  %159 = getelementptr inbounds %struct.curfile64_info, ptr %158, i32 0, i32 13, !dbg !1057
  store i64 0, ptr %159, align 8, !dbg !1058
  %160 = load i32, ptr %29, align 4, !dbg !1059
  %161 = load ptr, ptr %40, align 8, !dbg !1060
  %162 = getelementptr inbounds %struct.zip64_internal, ptr %161, i32 0, i32 4, !dbg !1061
  %163 = getelementptr inbounds %struct.curfile64_info, ptr %162, i32 0, i32 9, !dbg !1062
  store i32 %160, ptr %163, align 8, !dbg !1063
  %164 = load ptr, ptr %40, align 8, !dbg !1064
  %165 = getelementptr inbounds %struct.zip64_internal, ptr %164, i32 0, i32 4, !dbg !1065
  %166 = getelementptr inbounds %struct.curfile64_info, ptr %165, i32 0, i32 14, !dbg !1066
  store i32 0, ptr %166, align 8, !dbg !1067
  %167 = load ptr, ptr %40, align 8, !dbg !1068
  %168 = getelementptr inbounds %struct.zip64_internal, ptr %167, i32 0, i32 4, !dbg !1069
  %169 = getelementptr inbounds %struct.curfile64_info, ptr %168, i32 0, i32 1, !dbg !1070
  store i32 0, ptr %169, align 8, !dbg !1071
  %170 = load ptr, ptr %40, align 8, !dbg !1072
  %171 = getelementptr inbounds %struct.zip64_internal, ptr %170, i32 0, i32 4, !dbg !1073
  %172 = getelementptr inbounds %struct.curfile64_info, ptr %171, i32 0, i32 2, !dbg !1074
  store i32 0, ptr %172, align 4, !dbg !1075
  %173 = load i32, ptr %31, align 4, !dbg !1076
  %174 = load ptr, ptr %40, align 8, !dbg !1077
  %175 = getelementptr inbounds %struct.zip64_internal, ptr %174, i32 0, i32 4, !dbg !1078
  %176 = getelementptr inbounds %struct.curfile64_info, ptr %175, i32 0, i32 10, !dbg !1079
  store i32 %173, ptr %176, align 4, !dbg !1080
  %177 = load ptr, ptr %40, align 8, !dbg !1081
  %178 = getelementptr inbounds %struct.zip64_internal, ptr %177, i32 0, i32 0, !dbg !1081
  %179 = load ptr, ptr %40, align 8, !dbg !1081
  %180 = getelementptr inbounds %struct.zip64_internal, ptr %179, i32 0, i32 1, !dbg !1081
  %181 = load ptr, ptr %180, align 8, !dbg !1081
  %182 = call i64 @call_ztell64(ptr noundef %178, ptr noundef %181), !dbg !1081
  %183 = load ptr, ptr %40, align 8, !dbg !1082
  %184 = getelementptr inbounds %struct.zip64_internal, ptr %183, i32 0, i32 4, !dbg !1083
  %185 = getelementptr inbounds %struct.curfile64_info, ptr %184, i32 0, i32 3, !dbg !1084
  store i64 %182, ptr %185, align 8, !dbg !1085
  %186 = load i32, ptr %41, align 4, !dbg !1086
  %187 = add i32 46, %186, !dbg !1087
  %188 = load i32, ptr %27, align 4, !dbg !1088
  %189 = add i32 %187, %188, !dbg !1089
  %190 = load i32, ptr %42, align 4, !dbg !1090
  %191 = add i32 %189, %190, !dbg !1091
  %192 = zext i32 %191 to i64, !dbg !1092
  %193 = load ptr, ptr %40, align 8, !dbg !1093
  %194 = getelementptr inbounds %struct.zip64_internal, ptr %193, i32 0, i32 4, !dbg !1094
  %195 = getelementptr inbounds %struct.curfile64_info, ptr %194, i32 0, i32 6, !dbg !1095
  store i64 %192, ptr %195, align 8, !dbg !1096
  %196 = load ptr, ptr %40, align 8, !dbg !1097
  %197 = getelementptr inbounds %struct.zip64_internal, ptr %196, i32 0, i32 4, !dbg !1098
  %198 = getelementptr inbounds %struct.curfile64_info, ptr %197, i32 0, i32 7, !dbg !1099
  store i64 32, ptr %198, align 8, !dbg !1100
  %199 = load ptr, ptr %40, align 8, !dbg !1101
  %200 = getelementptr inbounds %struct.zip64_internal, ptr %199, i32 0, i32 4, !dbg !1101
  %201 = getelementptr inbounds %struct.curfile64_info, ptr %200, i32 0, i32 6, !dbg !1101
  %202 = load i64, ptr %201, align 8, !dbg !1101
  %203 = trunc i64 %202 to i32, !dbg !1101
  %204 = zext i32 %203 to i64, !dbg !1101
  %205 = load ptr, ptr %40, align 8, !dbg !1101
  %206 = getelementptr inbounds %struct.zip64_internal, ptr %205, i32 0, i32 4, !dbg !1101
  %207 = getelementptr inbounds %struct.curfile64_info, ptr %206, i32 0, i32 7, !dbg !1101
  %208 = load i64, ptr %207, align 8, !dbg !1101
  %209 = add i64 %204, %208, !dbg !1101
  %210 = call noalias ptr @malloc(i64 noundef %209) #8, !dbg !1101
  %211 = load ptr, ptr %40, align 8, !dbg !1102
  %212 = getelementptr inbounds %struct.zip64_internal, ptr %211, i32 0, i32 4, !dbg !1103
  %213 = getelementptr inbounds %struct.curfile64_info, ptr %212, i32 0, i32 4, !dbg !1104
  store ptr %210, ptr %213, align 8, !dbg !1105
  %214 = load i32, ptr %27, align 4, !dbg !1106
  %215 = zext i32 %214 to i64, !dbg !1106
  %216 = load ptr, ptr %40, align 8, !dbg !1107
  %217 = getelementptr inbounds %struct.zip64_internal, ptr %216, i32 0, i32 4, !dbg !1108
  %218 = getelementptr inbounds %struct.curfile64_info, ptr %217, i32 0, i32 5, !dbg !1109
  store i64 %215, ptr %218, align 8, !dbg !1110
  %219 = load ptr, ptr %40, align 8, !dbg !1111
  %220 = getelementptr inbounds %struct.zip64_internal, ptr %219, i32 0, i32 4, !dbg !1112
  %221 = getelementptr inbounds %struct.curfile64_info, ptr %220, i32 0, i32 4, !dbg !1113
  %222 = load ptr, ptr %221, align 8, !dbg !1113
  call void @zip64local_putValue_inmemory(ptr noundef %222, i64 noundef 33639248, i32 noundef 4), !dbg !1114
  %223 = load ptr, ptr %40, align 8, !dbg !1115
  %224 = getelementptr inbounds %struct.zip64_internal, ptr %223, i32 0, i32 4, !dbg !1116
  %225 = getelementptr inbounds %struct.curfile64_info, ptr %224, i32 0, i32 4, !dbg !1117
  %226 = load ptr, ptr %225, align 8, !dbg !1117
  %227 = getelementptr inbounds i8, ptr %226, i64 4, !dbg !1118
  %228 = load i64, ptr %37, align 8, !dbg !1119
  call void @zip64local_putValue_inmemory(ptr noundef %227, i64 noundef %228, i32 noundef 2), !dbg !1120
  %229 = load ptr, ptr %40, align 8, !dbg !1121
  %230 = getelementptr inbounds %struct.zip64_internal, ptr %229, i32 0, i32 4, !dbg !1122
  %231 = getelementptr inbounds %struct.curfile64_info, ptr %230, i32 0, i32 4, !dbg !1123
  %232 = load ptr, ptr %231, align 8, !dbg !1123
  %233 = getelementptr inbounds i8, ptr %232, i64 6, !dbg !1124
  call void @zip64local_putValue_inmemory(ptr noundef %233, i64 noundef 20, i32 noundef 2), !dbg !1125
  %234 = load ptr, ptr %40, align 8, !dbg !1126
  %235 = getelementptr inbounds %struct.zip64_internal, ptr %234, i32 0, i32 4, !dbg !1127
  %236 = getelementptr inbounds %struct.curfile64_info, ptr %235, i32 0, i32 4, !dbg !1128
  %237 = load ptr, ptr %236, align 8, !dbg !1128
  %238 = getelementptr inbounds i8, ptr %237, i64 8, !dbg !1129
  %239 = load ptr, ptr %40, align 8, !dbg !1130
  %240 = getelementptr inbounds %struct.zip64_internal, ptr %239, i32 0, i32 4, !dbg !1131
  %241 = getelementptr inbounds %struct.curfile64_info, ptr %240, i32 0, i32 8, !dbg !1132
  %242 = load i64, ptr %241, align 8, !dbg !1132
  call void @zip64local_putValue_inmemory(ptr noundef %238, i64 noundef %242, i32 noundef 2), !dbg !1133
  %243 = load ptr, ptr %40, align 8, !dbg !1134
  %244 = getelementptr inbounds %struct.zip64_internal, ptr %243, i32 0, i32 4, !dbg !1135
  %245 = getelementptr inbounds %struct.curfile64_info, ptr %244, i32 0, i32 4, !dbg !1136
  %246 = load ptr, ptr %245, align 8, !dbg !1136
  %247 = getelementptr inbounds i8, ptr %246, i64 10, !dbg !1137
  %248 = load ptr, ptr %40, align 8, !dbg !1138
  %249 = getelementptr inbounds %struct.zip64_internal, ptr %248, i32 0, i32 4, !dbg !1139
  %250 = getelementptr inbounds %struct.curfile64_info, ptr %249, i32 0, i32 9, !dbg !1140
  %251 = load i32, ptr %250, align 8, !dbg !1140
  %252 = sext i32 %251 to i64, !dbg !1141
  call void @zip64local_putValue_inmemory(ptr noundef %247, i64 noundef %252, i32 noundef 2), !dbg !1142
  %253 = load ptr, ptr %40, align 8, !dbg !1143
  %254 = getelementptr inbounds %struct.zip64_internal, ptr %253, i32 0, i32 4, !dbg !1144
  %255 = getelementptr inbounds %struct.curfile64_info, ptr %254, i32 0, i32 4, !dbg !1145
  %256 = load ptr, ptr %255, align 8, !dbg !1145
  %257 = getelementptr inbounds i8, ptr %256, i64 12, !dbg !1146
  %258 = load ptr, ptr %40, align 8, !dbg !1147
  %259 = getelementptr inbounds %struct.zip64_internal, ptr %258, i32 0, i32 4, !dbg !1148
  %260 = getelementptr inbounds %struct.curfile64_info, ptr %259, i32 0, i32 12, !dbg !1149
  %261 = load i64, ptr %260, align 8, !dbg !1149
  call void @zip64local_putValue_inmemory(ptr noundef %257, i64 noundef %261, i32 noundef 4), !dbg !1150
  %262 = load ptr, ptr %40, align 8, !dbg !1151
  %263 = getelementptr inbounds %struct.zip64_internal, ptr %262, i32 0, i32 4, !dbg !1152
  %264 = getelementptr inbounds %struct.curfile64_info, ptr %263, i32 0, i32 4, !dbg !1153
  %265 = load ptr, ptr %264, align 8, !dbg !1153
  %266 = getelementptr inbounds i8, ptr %265, i64 16, !dbg !1154
  call void @zip64local_putValue_inmemory(ptr noundef %266, i64 noundef 0, i32 noundef 4), !dbg !1155
  %267 = load ptr, ptr %40, align 8, !dbg !1156
  %268 = getelementptr inbounds %struct.zip64_internal, ptr %267, i32 0, i32 4, !dbg !1157
  %269 = getelementptr inbounds %struct.curfile64_info, ptr %268, i32 0, i32 4, !dbg !1158
  %270 = load ptr, ptr %269, align 8, !dbg !1158
  %271 = getelementptr inbounds i8, ptr %270, i64 20, !dbg !1159
  call void @zip64local_putValue_inmemory(ptr noundef %271, i64 noundef 0, i32 noundef 4), !dbg !1160
  %272 = load ptr, ptr %40, align 8, !dbg !1161
  %273 = getelementptr inbounds %struct.zip64_internal, ptr %272, i32 0, i32 4, !dbg !1162
  %274 = getelementptr inbounds %struct.curfile64_info, ptr %273, i32 0, i32 4, !dbg !1163
  %275 = load ptr, ptr %274, align 8, !dbg !1163
  %276 = getelementptr inbounds i8, ptr %275, i64 24, !dbg !1164
  call void @zip64local_putValue_inmemory(ptr noundef %276, i64 noundef 0, i32 noundef 4), !dbg !1165
  %277 = load ptr, ptr %40, align 8, !dbg !1166
  %278 = getelementptr inbounds %struct.zip64_internal, ptr %277, i32 0, i32 4, !dbg !1167
  %279 = getelementptr inbounds %struct.curfile64_info, ptr %278, i32 0, i32 4, !dbg !1168
  %280 = load ptr, ptr %279, align 8, !dbg !1168
  %281 = getelementptr inbounds i8, ptr %280, i64 28, !dbg !1169
  %282 = load i32, ptr %41, align 4, !dbg !1170
  %283 = zext i32 %282 to i64, !dbg !1171
  call void @zip64local_putValue_inmemory(ptr noundef %281, i64 noundef %283, i32 noundef 2), !dbg !1172
  %284 = load ptr, ptr %40, align 8, !dbg !1173
  %285 = getelementptr inbounds %struct.zip64_internal, ptr %284, i32 0, i32 4, !dbg !1174
  %286 = getelementptr inbounds %struct.curfile64_info, ptr %285, i32 0, i32 4, !dbg !1175
  %287 = load ptr, ptr %286, align 8, !dbg !1175
  %288 = getelementptr inbounds i8, ptr %287, i64 30, !dbg !1176
  %289 = load i32, ptr %27, align 4, !dbg !1177
  %290 = zext i32 %289 to i64, !dbg !1178
  call void @zip64local_putValue_inmemory(ptr noundef %288, i64 noundef %290, i32 noundef 2), !dbg !1179
  %291 = load ptr, ptr %40, align 8, !dbg !1180
  %292 = getelementptr inbounds %struct.zip64_internal, ptr %291, i32 0, i32 4, !dbg !1181
  %293 = getelementptr inbounds %struct.curfile64_info, ptr %292, i32 0, i32 4, !dbg !1182
  %294 = load ptr, ptr %293, align 8, !dbg !1182
  %295 = getelementptr inbounds i8, ptr %294, i64 32, !dbg !1183
  %296 = load i32, ptr %42, align 4, !dbg !1184
  %297 = zext i32 %296 to i64, !dbg !1185
  call void @zip64local_putValue_inmemory(ptr noundef %295, i64 noundef %297, i32 noundef 2), !dbg !1186
  %298 = load ptr, ptr %40, align 8, !dbg !1187
  %299 = getelementptr inbounds %struct.zip64_internal, ptr %298, i32 0, i32 4, !dbg !1188
  %300 = getelementptr inbounds %struct.curfile64_info, ptr %299, i32 0, i32 4, !dbg !1189
  %301 = load ptr, ptr %300, align 8, !dbg !1189
  %302 = getelementptr inbounds i8, ptr %301, i64 34, !dbg !1190
  call void @zip64local_putValue_inmemory(ptr noundef %302, i64 noundef 0, i32 noundef 2), !dbg !1191
  %303 = load ptr, ptr %23, align 8, !dbg !1192
  %304 = icmp eq ptr %303, null, !dbg !1194
  br i1 %304, label %305, label %311, !dbg !1195

305:                                              ; preds = %156
  %306 = load ptr, ptr %40, align 8, !dbg !1196
  %307 = getelementptr inbounds %struct.zip64_internal, ptr %306, i32 0, i32 4, !dbg !1197
  %308 = getelementptr inbounds %struct.curfile64_info, ptr %307, i32 0, i32 4, !dbg !1198
  %309 = load ptr, ptr %308, align 8, !dbg !1198
  %310 = getelementptr inbounds i8, ptr %309, i64 36, !dbg !1199
  call void @zip64local_putValue_inmemory(ptr noundef %310, i64 noundef 0, i32 noundef 2), !dbg !1200
  br label %320, !dbg !1200

311:                                              ; preds = %156
  %312 = load ptr, ptr %40, align 8, !dbg !1201
  %313 = getelementptr inbounds %struct.zip64_internal, ptr %312, i32 0, i32 4, !dbg !1202
  %314 = getelementptr inbounds %struct.curfile64_info, ptr %313, i32 0, i32 4, !dbg !1203
  %315 = load ptr, ptr %314, align 8, !dbg !1203
  %316 = getelementptr inbounds i8, ptr %315, i64 36, !dbg !1204
  %317 = load ptr, ptr %23, align 8, !dbg !1205
  %318 = getelementptr inbounds %struct.zip_fileinfo, ptr %317, i32 0, i32 2, !dbg !1206
  %319 = load i64, ptr %318, align 8, !dbg !1206
  call void @zip64local_putValue_inmemory(ptr noundef %316, i64 noundef %319, i32 noundef 2), !dbg !1207
  br label %320

320:                                              ; preds = %311, %305
  %321 = load ptr, ptr %23, align 8, !dbg !1208
  %322 = icmp eq ptr %321, null, !dbg !1210
  br i1 %322, label %323, label %329, !dbg !1211

323:                                              ; preds = %320
  %324 = load ptr, ptr %40, align 8, !dbg !1212
  %325 = getelementptr inbounds %struct.zip64_internal, ptr %324, i32 0, i32 4, !dbg !1213
  %326 = getelementptr inbounds %struct.curfile64_info, ptr %325, i32 0, i32 4, !dbg !1214
  %327 = load ptr, ptr %326, align 8, !dbg !1214
  %328 = getelementptr inbounds i8, ptr %327, i64 38, !dbg !1215
  call void @zip64local_putValue_inmemory(ptr noundef %328, i64 noundef 0, i32 noundef 4), !dbg !1216
  br label %338, !dbg !1216

329:                                              ; preds = %320
  %330 = load ptr, ptr %40, align 8, !dbg !1217
  %331 = getelementptr inbounds %struct.zip64_internal, ptr %330, i32 0, i32 4, !dbg !1218
  %332 = getelementptr inbounds %struct.curfile64_info, ptr %331, i32 0, i32 4, !dbg !1219
  %333 = load ptr, ptr %332, align 8, !dbg !1219
  %334 = getelementptr inbounds i8, ptr %333, i64 38, !dbg !1220
  %335 = load ptr, ptr %23, align 8, !dbg !1221
  %336 = getelementptr inbounds %struct.zip_fileinfo, ptr %335, i32 0, i32 3, !dbg !1222
  %337 = load i64, ptr %336, align 8, !dbg !1222
  call void @zip64local_putValue_inmemory(ptr noundef %334, i64 noundef %337, i32 noundef 4), !dbg !1223
  br label %338

338:                                              ; preds = %329, %323
  %339 = load ptr, ptr %40, align 8, !dbg !1224
  %340 = getelementptr inbounds %struct.zip64_internal, ptr %339, i32 0, i32 4, !dbg !1226
  %341 = getelementptr inbounds %struct.curfile64_info, ptr %340, i32 0, i32 3, !dbg !1227
  %342 = load i64, ptr %341, align 8, !dbg !1227
  %343 = icmp uge i64 %342, 4294967295, !dbg !1228
  br i1 %343, label %344, label %350, !dbg !1229

344:                                              ; preds = %338
  %345 = load ptr, ptr %40, align 8, !dbg !1230
  %346 = getelementptr inbounds %struct.zip64_internal, ptr %345, i32 0, i32 4, !dbg !1231
  %347 = getelementptr inbounds %struct.curfile64_info, ptr %346, i32 0, i32 4, !dbg !1232
  %348 = load ptr, ptr %347, align 8, !dbg !1232
  %349 = getelementptr inbounds i8, ptr %348, i64 42, !dbg !1233
  call void @zip64local_putValue_inmemory(ptr noundef %349, i64 noundef 4294967295, i32 noundef 4), !dbg !1234
  br label %364, !dbg !1234

350:                                              ; preds = %338
  %351 = load ptr, ptr %40, align 8, !dbg !1235
  %352 = getelementptr inbounds %struct.zip64_internal, ptr %351, i32 0, i32 4, !dbg !1236
  %353 = getelementptr inbounds %struct.curfile64_info, ptr %352, i32 0, i32 4, !dbg !1237
  %354 = load ptr, ptr %353, align 8, !dbg !1237
  %355 = getelementptr inbounds i8, ptr %354, i64 42, !dbg !1238
  %356 = load ptr, ptr %40, align 8, !dbg !1239
  %357 = getelementptr inbounds %struct.zip64_internal, ptr %356, i32 0, i32 4, !dbg !1240
  %358 = getelementptr inbounds %struct.curfile64_info, ptr %357, i32 0, i32 3, !dbg !1241
  %359 = load i64, ptr %358, align 8, !dbg !1241
  %360 = load ptr, ptr %40, align 8, !dbg !1242
  %361 = getelementptr inbounds %struct.zip64_internal, ptr %360, i32 0, i32 6, !dbg !1243
  %362 = load i64, ptr %361, align 8, !dbg !1243
  %363 = sub i64 %359, %362, !dbg !1244
  call void @zip64local_putValue_inmemory(ptr noundef %355, i64 noundef %363, i32 noundef 4), !dbg !1245
  br label %364

364:                                              ; preds = %350, %344
  store i32 0, ptr %43, align 4, !dbg !1246
  br label %365, !dbg !1248

365:                                              ; preds = %383, %364
  %366 = load i32, ptr %43, align 4, !dbg !1249
  %367 = load i32, ptr %41, align 4, !dbg !1251
  %368 = icmp ult i32 %366, %367, !dbg !1252
  br i1 %368, label %369, label %386, !dbg !1253

369:                                              ; preds = %365
  %370 = load ptr, ptr %22, align 8, !dbg !1254
  %371 = load i32, ptr %43, align 4, !dbg !1255
  %372 = zext i32 %371 to i64, !dbg !1256
  %373 = getelementptr inbounds i8, ptr %370, i64 %372, !dbg !1256
  %374 = load i8, ptr %373, align 1, !dbg !1257
  %375 = load ptr, ptr %40, align 8, !dbg !1258
  %376 = getelementptr inbounds %struct.zip64_internal, ptr %375, i32 0, i32 4, !dbg !1259
  %377 = getelementptr inbounds %struct.curfile64_info, ptr %376, i32 0, i32 4, !dbg !1260
  %378 = load ptr, ptr %377, align 8, !dbg !1260
  %379 = getelementptr inbounds i8, ptr %378, i64 46, !dbg !1261
  %380 = load i32, ptr %43, align 4, !dbg !1262
  %381 = zext i32 %380 to i64, !dbg !1263
  %382 = getelementptr inbounds i8, ptr %379, i64 %381, !dbg !1263
  store i8 %374, ptr %382, align 1, !dbg !1264
  br label %383, !dbg !1265

383:                                              ; preds = %369
  %384 = load i32, ptr %43, align 4, !dbg !1266
  %385 = add i32 %384, 1, !dbg !1266
  store i32 %385, ptr %43, align 4, !dbg !1266
  br label %365, !dbg !1267, !llvm.loop !1268

386:                                              ; preds = %365
  store i32 0, ptr %43, align 4, !dbg !1270
  br label %387, !dbg !1272

387:                                              ; preds = %408, %386
  %388 = load i32, ptr %43, align 4, !dbg !1273
  %389 = load i32, ptr %27, align 4, !dbg !1275
  %390 = icmp ult i32 %388, %389, !dbg !1276
  br i1 %390, label %391, label %411, !dbg !1277

391:                                              ; preds = %387
  %392 = load ptr, ptr %26, align 8, !dbg !1278
  %393 = load i32, ptr %43, align 4, !dbg !1279
  %394 = zext i32 %393 to i64, !dbg !1280
  %395 = getelementptr inbounds i8, ptr %392, i64 %394, !dbg !1280
  %396 = load i8, ptr %395, align 1, !dbg !1281
  %397 = load ptr, ptr %40, align 8, !dbg !1282
  %398 = getelementptr inbounds %struct.zip64_internal, ptr %397, i32 0, i32 4, !dbg !1283
  %399 = getelementptr inbounds %struct.curfile64_info, ptr %398, i32 0, i32 4, !dbg !1284
  %400 = load ptr, ptr %399, align 8, !dbg !1284
  %401 = getelementptr inbounds i8, ptr %400, i64 46, !dbg !1285
  %402 = load i32, ptr %41, align 4, !dbg !1286
  %403 = zext i32 %402 to i64, !dbg !1287
  %404 = getelementptr inbounds i8, ptr %401, i64 %403, !dbg !1287
  %405 = load i32, ptr %43, align 4, !dbg !1288
  %406 = zext i32 %405 to i64, !dbg !1289
  %407 = getelementptr inbounds i8, ptr %404, i64 %406, !dbg !1289
  store i8 %396, ptr %407, align 1, !dbg !1290
  br label %408, !dbg !1291

408:                                              ; preds = %391
  %409 = load i32, ptr %43, align 4, !dbg !1292
  %410 = add i32 %409, 1, !dbg !1292
  store i32 %410, ptr %43, align 4, !dbg !1292
  br label %387, !dbg !1293, !llvm.loop !1294

411:                                              ; preds = %387
  store i32 0, ptr %43, align 4, !dbg !1296
  br label %412, !dbg !1298

412:                                              ; preds = %436, %411
  %413 = load i32, ptr %43, align 4, !dbg !1299
  %414 = load i32, ptr %42, align 4, !dbg !1301
  %415 = icmp ult i32 %413, %414, !dbg !1302
  br i1 %415, label %416, label %439, !dbg !1303

416:                                              ; preds = %412
  %417 = load ptr, ptr %28, align 8, !dbg !1304
  %418 = load i32, ptr %43, align 4, !dbg !1305
  %419 = zext i32 %418 to i64, !dbg !1306
  %420 = getelementptr inbounds i8, ptr %417, i64 %419, !dbg !1306
  %421 = load i8, ptr %420, align 1, !dbg !1307
  %422 = load ptr, ptr %40, align 8, !dbg !1308
  %423 = getelementptr inbounds %struct.zip64_internal, ptr %422, i32 0, i32 4, !dbg !1309
  %424 = getelementptr inbounds %struct.curfile64_info, ptr %423, i32 0, i32 4, !dbg !1310
  %425 = load ptr, ptr %424, align 8, !dbg !1310
  %426 = getelementptr inbounds i8, ptr %425, i64 46, !dbg !1311
  %427 = load i32, ptr %41, align 4, !dbg !1312
  %428 = zext i32 %427 to i64, !dbg !1313
  %429 = getelementptr inbounds i8, ptr %426, i64 %428, !dbg !1313
  %430 = load i32, ptr %27, align 4, !dbg !1314
  %431 = zext i32 %430 to i64, !dbg !1315
  %432 = getelementptr inbounds i8, ptr %429, i64 %431, !dbg !1315
  %433 = load i32, ptr %43, align 4, !dbg !1316
  %434 = zext i32 %433 to i64, !dbg !1317
  %435 = getelementptr inbounds i8, ptr %432, i64 %434, !dbg !1317
  store i8 %421, ptr %435, align 1, !dbg !1318
  br label %436, !dbg !1319

436:                                              ; preds = %416
  %437 = load i32, ptr %43, align 4, !dbg !1320
  %438 = add i32 %437, 1, !dbg !1320
  store i32 %438, ptr %43, align 4, !dbg !1320
  br label %412, !dbg !1321, !llvm.loop !1322

439:                                              ; preds = %412
  %440 = load ptr, ptr %40, align 8, !dbg !1324
  %441 = getelementptr inbounds %struct.zip64_internal, ptr %440, i32 0, i32 4, !dbg !1326
  %442 = getelementptr inbounds %struct.curfile64_info, ptr %441, i32 0, i32 4, !dbg !1327
  %443 = load ptr, ptr %442, align 8, !dbg !1327
  %444 = icmp eq ptr %443, null, !dbg !1328
  br i1 %444, label %445, label %446, !dbg !1329

445:                                              ; preds = %439
  store i32 -104, ptr %20, align 4, !dbg !1330
  br label %619, !dbg !1330

446:                                              ; preds = %439
  %447 = load i32, ptr %39, align 4, !dbg !1331
  %448 = load ptr, ptr %40, align 8, !dbg !1332
  %449 = getelementptr inbounds %struct.zip64_internal, ptr %448, i32 0, i32 4, !dbg !1333
  %450 = getelementptr inbounds %struct.curfile64_info, ptr %449, i32 0, i32 15, !dbg !1334
  store i32 %447, ptr %450, align 4, !dbg !1335
  %451 = load ptr, ptr %40, align 8, !dbg !1336
  %452 = getelementptr inbounds %struct.zip64_internal, ptr %451, i32 0, i32 4, !dbg !1337
  %453 = getelementptr inbounds %struct.curfile64_info, ptr %452, i32 0, i32 17, !dbg !1338
  store i64 0, ptr %453, align 8, !dbg !1339
  %454 = load ptr, ptr %40, align 8, !dbg !1340
  %455 = getelementptr inbounds %struct.zip64_internal, ptr %454, i32 0, i32 4, !dbg !1341
  %456 = getelementptr inbounds %struct.curfile64_info, ptr %455, i32 0, i32 18, !dbg !1342
  store i64 0, ptr %456, align 8, !dbg !1343
  %457 = load ptr, ptr %40, align 8, !dbg !1344
  %458 = getelementptr inbounds %struct.zip64_internal, ptr %457, i32 0, i32 4, !dbg !1345
  %459 = getelementptr inbounds %struct.curfile64_info, ptr %458, i32 0, i32 16, !dbg !1346
  store i64 0, ptr %459, align 8, !dbg !1347
  %460 = load ptr, ptr %40, align 8, !dbg !1348
  %461 = load ptr, ptr %22, align 8, !dbg !1349
  %462 = load i32, ptr %25, align 4, !dbg !1350
  %463 = load ptr, ptr %24, align 8, !dbg !1351
  %464 = call i32 @Write_LocalFileHeader(ptr noundef %460, ptr noundef %461, i32 noundef %462, ptr noundef %463), !dbg !1352
  store i32 %464, ptr %44, align 4, !dbg !1353
  %465 = load ptr, ptr %40, align 8, !dbg !1354
  %466 = getelementptr inbounds %struct.zip64_internal, ptr %465, i32 0, i32 4, !dbg !1355
  %467 = getelementptr inbounds %struct.curfile64_info, ptr %466, i32 0, i32 0, !dbg !1356
  %468 = getelementptr inbounds %struct.z_stream_s, ptr %467, i32 0, i32 1, !dbg !1357
  store i32 0, ptr %468, align 8, !dbg !1358
  %469 = load ptr, ptr %40, align 8, !dbg !1359
  %470 = getelementptr inbounds %struct.zip64_internal, ptr %469, i32 0, i32 4, !dbg !1360
  %471 = getelementptr inbounds %struct.curfile64_info, ptr %470, i32 0, i32 0, !dbg !1361
  %472 = getelementptr inbounds %struct.z_stream_s, ptr %471, i32 0, i32 4, !dbg !1362
  store i32 65536, ptr %472, align 8, !dbg !1363
  %473 = load ptr, ptr %40, align 8, !dbg !1364
  %474 = getelementptr inbounds %struct.zip64_internal, ptr %473, i32 0, i32 4, !dbg !1365
  %475 = getelementptr inbounds %struct.curfile64_info, ptr %474, i32 0, i32 11, !dbg !1366
  %476 = getelementptr inbounds [65536 x i8], ptr %475, i64 0, i64 0, !dbg !1364
  %477 = load ptr, ptr %40, align 8, !dbg !1367
  %478 = getelementptr inbounds %struct.zip64_internal, ptr %477, i32 0, i32 4, !dbg !1368
  %479 = getelementptr inbounds %struct.curfile64_info, ptr %478, i32 0, i32 0, !dbg !1369
  %480 = getelementptr inbounds %struct.z_stream_s, ptr %479, i32 0, i32 3, !dbg !1370
  store ptr %476, ptr %480, align 8, !dbg !1371
  %481 = load ptr, ptr %40, align 8, !dbg !1372
  %482 = getelementptr inbounds %struct.zip64_internal, ptr %481, i32 0, i32 4, !dbg !1373
  %483 = getelementptr inbounds %struct.curfile64_info, ptr %482, i32 0, i32 0, !dbg !1374
  %484 = getelementptr inbounds %struct.z_stream_s, ptr %483, i32 0, i32 2, !dbg !1375
  store i64 0, ptr %484, align 8, !dbg !1376
  %485 = load ptr, ptr %40, align 8, !dbg !1377
  %486 = getelementptr inbounds %struct.zip64_internal, ptr %485, i32 0, i32 4, !dbg !1378
  %487 = getelementptr inbounds %struct.curfile64_info, ptr %486, i32 0, i32 0, !dbg !1379
  %488 = getelementptr inbounds %struct.z_stream_s, ptr %487, i32 0, i32 5, !dbg !1380
  store i64 0, ptr %488, align 8, !dbg !1381
  %489 = load ptr, ptr %40, align 8, !dbg !1382
  %490 = getelementptr inbounds %struct.zip64_internal, ptr %489, i32 0, i32 4, !dbg !1383
  %491 = getelementptr inbounds %struct.curfile64_info, ptr %490, i32 0, i32 0, !dbg !1384
  %492 = getelementptr inbounds %struct.z_stream_s, ptr %491, i32 0, i32 11, !dbg !1385
  store i32 0, ptr %492, align 8, !dbg !1386
  %493 = load i32, ptr %44, align 4, !dbg !1387
  %494 = icmp eq i32 %493, 0, !dbg !1389
  br i1 %494, label %495, label %556, !dbg !1390

495:                                              ; preds = %446
  %496 = load ptr, ptr %40, align 8, !dbg !1391
  %497 = getelementptr inbounds %struct.zip64_internal, ptr %496, i32 0, i32 4, !dbg !1392
  %498 = getelementptr inbounds %struct.curfile64_info, ptr %497, i32 0, i32 9, !dbg !1393
  %499 = load i32, ptr %498, align 8, !dbg !1393
  %500 = icmp eq i32 %499, 8, !dbg !1394
  br i1 %500, label %501, label %556, !dbg !1395

501:                                              ; preds = %495
  %502 = load ptr, ptr %40, align 8, !dbg !1396
  %503 = getelementptr inbounds %struct.zip64_internal, ptr %502, i32 0, i32 4, !dbg !1397
  %504 = getelementptr inbounds %struct.curfile64_info, ptr %503, i32 0, i32 10, !dbg !1398
  %505 = load i32, ptr %504, align 4, !dbg !1398
  %506 = icmp ne i32 %505, 0, !dbg !1396
  br i1 %506, label %556, label %507, !dbg !1399

507:                                              ; preds = %501
  %508 = load ptr, ptr %40, align 8, !dbg !1400
  %509 = getelementptr inbounds %struct.zip64_internal, ptr %508, i32 0, i32 4, !dbg !1403
  %510 = getelementptr inbounds %struct.curfile64_info, ptr %509, i32 0, i32 9, !dbg !1404
  %511 = load i32, ptr %510, align 8, !dbg !1404
  %512 = icmp eq i32 %511, 8, !dbg !1405
  br i1 %512, label %513, label %547, !dbg !1406

513:                                              ; preds = %507
  %514 = load ptr, ptr %40, align 8, !dbg !1407
  %515 = getelementptr inbounds %struct.zip64_internal, ptr %514, i32 0, i32 4, !dbg !1409
  %516 = getelementptr inbounds %struct.curfile64_info, ptr %515, i32 0, i32 0, !dbg !1410
  %517 = getelementptr inbounds %struct.z_stream_s, ptr %516, i32 0, i32 8, !dbg !1411
  store ptr null, ptr %517, align 8, !dbg !1412
  %518 = load ptr, ptr %40, align 8, !dbg !1413
  %519 = getelementptr inbounds %struct.zip64_internal, ptr %518, i32 0, i32 4, !dbg !1414
  %520 = getelementptr inbounds %struct.curfile64_info, ptr %519, i32 0, i32 0, !dbg !1415
  %521 = getelementptr inbounds %struct.z_stream_s, ptr %520, i32 0, i32 9, !dbg !1416
  store ptr null, ptr %521, align 8, !dbg !1417
  %522 = load ptr, ptr %40, align 8, !dbg !1418
  %523 = getelementptr inbounds %struct.zip64_internal, ptr %522, i32 0, i32 4, !dbg !1419
  %524 = getelementptr inbounds %struct.curfile64_info, ptr %523, i32 0, i32 0, !dbg !1420
  %525 = getelementptr inbounds %struct.z_stream_s, ptr %524, i32 0, i32 10, !dbg !1421
  store ptr null, ptr %525, align 8, !dbg !1422
  %526 = load i32, ptr %32, align 4, !dbg !1423
  %527 = icmp sgt i32 %526, 0, !dbg !1425
  br i1 %527, label %528, label %531, !dbg !1426

528:                                              ; preds = %513
  %529 = load i32, ptr %32, align 4, !dbg !1427
  %530 = sub nsw i32 0, %529, !dbg !1428
  store i32 %530, ptr %32, align 4, !dbg !1429
  br label %531, !dbg !1430

531:                                              ; preds = %528, %513
  %532 = load ptr, ptr %40, align 8, !dbg !1431
  %533 = getelementptr inbounds %struct.zip64_internal, ptr %532, i32 0, i32 4, !dbg !1431
  %534 = getelementptr inbounds %struct.curfile64_info, ptr %533, i32 0, i32 0, !dbg !1431
  %535 = load i32, ptr %30, align 4, !dbg !1431
  %536 = load i32, ptr %32, align 4, !dbg !1431
  %537 = load i32, ptr %33, align 4, !dbg !1431
  %538 = load i32, ptr %34, align 4, !dbg !1431
  %539 = call i32 @deflateInit2_(ptr noundef %534, i32 noundef %535, i32 noundef 8, i32 noundef %536, i32 noundef %537, i32 noundef %538, ptr noundef @.str.1, i32 noundef 112), !dbg !1431
  store i32 %539, ptr %44, align 4, !dbg !1432
  %540 = load i32, ptr %44, align 4, !dbg !1433
  %541 = icmp eq i32 %540, 0, !dbg !1435
  br i1 %541, label %542, label %546, !dbg !1436

542:                                              ; preds = %531
  %543 = load ptr, ptr %40, align 8, !dbg !1437
  %544 = getelementptr inbounds %struct.zip64_internal, ptr %543, i32 0, i32 4, !dbg !1438
  %545 = getelementptr inbounds %struct.curfile64_info, ptr %544, i32 0, i32 1, !dbg !1439
  store i32 8, ptr %545, align 8, !dbg !1440
  br label %546, !dbg !1437

546:                                              ; preds = %542, %531
  br label %555, !dbg !1441

547:                                              ; preds = %507
  %548 = load ptr, ptr %40, align 8, !dbg !1442
  %549 = getelementptr inbounds %struct.zip64_internal, ptr %548, i32 0, i32 4, !dbg !1444
  %550 = getelementptr inbounds %struct.curfile64_info, ptr %549, i32 0, i32 9, !dbg !1445
  %551 = load i32, ptr %550, align 8, !dbg !1445
  %552 = icmp eq i32 %551, 12, !dbg !1446
  br i1 %552, label %553, label %554, !dbg !1447

553:                                              ; preds = %547
  br label %554, !dbg !1448

554:                                              ; preds = %553, %547
  br label %555

555:                                              ; preds = %554, %546
  br label %556, !dbg !1450

556:                                              ; preds = %555, %501, %495, %446
  %557 = load ptr, ptr %40, align 8, !dbg !1451
  %558 = getelementptr inbounds %struct.zip64_internal, ptr %557, i32 0, i32 4, !dbg !1452
  %559 = getelementptr inbounds %struct.curfile64_info, ptr %558, i32 0, i32 21, !dbg !1453
  store i32 0, ptr %559, align 8, !dbg !1454
  %560 = load i32, ptr %44, align 4, !dbg !1455
  %561 = icmp eq i32 %560, 0, !dbg !1457
  br i1 %561, label %562, label %611, !dbg !1458

562:                                              ; preds = %556
  %563 = load ptr, ptr %35, align 8, !dbg !1459
  %564 = icmp ne ptr %563, null, !dbg !1460
  br i1 %564, label %565, label %611, !dbg !1461

565:                                              ; preds = %562
  call void @llvm.dbg.declare(metadata ptr %45, metadata !1462, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.declare(metadata ptr %46, metadata !1468, metadata !DIExpression()), !dbg !1469
  %566 = load ptr, ptr %40, align 8, !dbg !1470
  %567 = getelementptr inbounds %struct.zip64_internal, ptr %566, i32 0, i32 4, !dbg !1471
  %568 = getelementptr inbounds %struct.curfile64_info, ptr %567, i32 0, i32 14, !dbg !1472
  store i32 1, ptr %568, align 8, !dbg !1473
  %569 = call ptr @get_crc_table(), !dbg !1474
  %570 = load ptr, ptr %40, align 8, !dbg !1475
  %571 = getelementptr inbounds %struct.zip64_internal, ptr %570, i32 0, i32 4, !dbg !1476
  %572 = getelementptr inbounds %struct.curfile64_info, ptr %571, i32 0, i32 20, !dbg !1477
  store ptr %569, ptr %572, align 8, !dbg !1478
  %573 = load ptr, ptr %35, align 8, !dbg !1479
  %574 = getelementptr inbounds [12 x i8], ptr %45, i64 0, i64 0, !dbg !1480
  %575 = load ptr, ptr %40, align 8, !dbg !1481
  %576 = getelementptr inbounds %struct.zip64_internal, ptr %575, i32 0, i32 4, !dbg !1482
  %577 = getelementptr inbounds %struct.curfile64_info, ptr %576, i32 0, i32 19, !dbg !1483
  %578 = getelementptr inbounds [3 x i64], ptr %577, i64 0, i64 0, !dbg !1481
  %579 = load ptr, ptr %40, align 8, !dbg !1484
  %580 = getelementptr inbounds %struct.zip64_internal, ptr %579, i32 0, i32 4, !dbg !1485
  %581 = getelementptr inbounds %struct.curfile64_info, ptr %580, i32 0, i32 20, !dbg !1486
  %582 = load ptr, ptr %581, align 8, !dbg !1486
  %583 = load i64, ptr %36, align 8, !dbg !1487
  %584 = call i32 @crypthead(ptr noundef %573, ptr noundef %574, i32 noundef 12, ptr noundef %578, ptr noundef %582, i64 noundef %583), !dbg !1488
  store i32 %584, ptr %46, align 4, !dbg !1489
  %585 = load i32, ptr %46, align 4, !dbg !1490
  %586 = load ptr, ptr %40, align 8, !dbg !1491
  %587 = getelementptr inbounds %struct.zip64_internal, ptr %586, i32 0, i32 4, !dbg !1492
  %588 = getelementptr inbounds %struct.curfile64_info, ptr %587, i32 0, i32 21, !dbg !1493
  store i32 %585, ptr %588, align 8, !dbg !1494
  %589 = load ptr, ptr %40, align 8, !dbg !1495
  %590 = getelementptr inbounds %struct.zip64_internal, ptr %589, i32 0, i32 0, !dbg !1495
  %591 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %590, i32 0, i32 0, !dbg !1495
  %592 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %591, i32 0, i32 2, !dbg !1495
  %593 = load ptr, ptr %592, align 8, !dbg !1495
  %594 = load ptr, ptr %40, align 8, !dbg !1495
  %595 = getelementptr inbounds %struct.zip64_internal, ptr %594, i32 0, i32 0, !dbg !1495
  %596 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %595, i32 0, i32 0, !dbg !1495
  %597 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %596, i32 0, i32 8, !dbg !1495
  %598 = load ptr, ptr %597, align 8, !dbg !1495
  %599 = load ptr, ptr %40, align 8, !dbg !1495
  %600 = getelementptr inbounds %struct.zip64_internal, ptr %599, i32 0, i32 1, !dbg !1495
  %601 = load ptr, ptr %600, align 8, !dbg !1495
  %602 = getelementptr inbounds [12 x i8], ptr %45, i64 0, i64 0, !dbg !1495
  %603 = load i32, ptr %46, align 4, !dbg !1495
  %604 = zext i32 %603 to i64, !dbg !1495
  %605 = call i64 %593(ptr noundef %598, ptr noundef %601, ptr noundef %602, i64 noundef %604), !dbg !1495
  %606 = load i32, ptr %46, align 4, !dbg !1497
  %607 = zext i32 %606 to i64, !dbg !1497
  %608 = icmp ne i64 %605, %607, !dbg !1498
  br i1 %608, label %609, label %610, !dbg !1499

609:                                              ; preds = %565
  store i32 -1, ptr %44, align 4, !dbg !1500
  br label %610, !dbg !1501

610:                                              ; preds = %609, %565
  br label %611, !dbg !1502

611:                                              ; preds = %610, %562, %556
  %612 = load i32, ptr %44, align 4, !dbg !1503
  %613 = icmp eq i32 %612, 0, !dbg !1505
  br i1 %613, label %614, label %617, !dbg !1506

614:                                              ; preds = %611
  %615 = load ptr, ptr %40, align 8, !dbg !1507
  %616 = getelementptr inbounds %struct.zip64_internal, ptr %615, i32 0, i32 3, !dbg !1508
  store i32 1, ptr %616, align 8, !dbg !1509
  br label %617, !dbg !1507

617:                                              ; preds = %614, %611
  %618 = load i32, ptr %44, align 4, !dbg !1510
  store i32 %618, ptr %20, align 4, !dbg !1511
  br label %619, !dbg !1511

619:                                              ; preds = %617, %445, %68, %56, %49
  %620 = load i32, ptr %20, align 4, !dbg !1512
  ret i32 %620, !dbg !1512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipCloseFileInZip(ptr noundef %0) #0 !dbg !1513 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1516, metadata !DIExpression()), !dbg !1517
  %3 = load ptr, ptr %2, align 8, !dbg !1518
  %4 = call i32 @zipCloseFileInZipRaw(ptr noundef %3, i64 noundef 0, i64 noundef 0), !dbg !1519
  ret i32 %4, !dbg !1520
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zip64local_TmzDateToDosDate(ptr noundef %0) #0 !dbg !1521 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1526, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1528, metadata !DIExpression()), !dbg !1529
  %4 = load ptr, ptr %2, align 8, !dbg !1530
  %5 = getelementptr inbounds %struct.tm_zip_s, ptr %4, i32 0, i32 5, !dbg !1531
  %6 = load i32, ptr %5, align 4, !dbg !1531
  %7 = zext i32 %6 to i64, !dbg !1532
  store i64 %7, ptr %3, align 8, !dbg !1529
  %8 = load i64, ptr %3, align 8, !dbg !1533
  %9 = icmp uge i64 %8, 1980, !dbg !1535
  br i1 %9, label %10, label %13, !dbg !1536

10:                                               ; preds = %1
  %11 = load i64, ptr %3, align 8, !dbg !1537
  %12 = sub i64 %11, 1980, !dbg !1537
  store i64 %12, ptr %3, align 8, !dbg !1537
  br label %20, !dbg !1538

13:                                               ; preds = %1
  %14 = load i64, ptr %3, align 8, !dbg !1539
  %15 = icmp uge i64 %14, 80, !dbg !1541
  br i1 %15, label %16, label %19, !dbg !1542

16:                                               ; preds = %13
  %17 = load i64, ptr %3, align 8, !dbg !1543
  %18 = sub i64 %17, 80, !dbg !1543
  store i64 %18, ptr %3, align 8, !dbg !1543
  br label %19, !dbg !1544

19:                                               ; preds = %16, %13
  br label %20

20:                                               ; preds = %19, %10
  %21 = load ptr, ptr %2, align 8, !dbg !1545
  %22 = getelementptr inbounds %struct.tm_zip_s, ptr %21, i32 0, i32 3, !dbg !1546
  %23 = load i32, ptr %22, align 4, !dbg !1546
  %24 = load ptr, ptr %2, align 8, !dbg !1547
  %25 = getelementptr inbounds %struct.tm_zip_s, ptr %24, i32 0, i32 4, !dbg !1548
  %26 = load i32, ptr %25, align 4, !dbg !1548
  %27 = add i32 %26, 1, !dbg !1549
  %28 = mul i32 32, %27, !dbg !1550
  %29 = add i32 %23, %28, !dbg !1551
  %30 = zext i32 %29 to i64, !dbg !1552
  %31 = load i64, ptr %3, align 8, !dbg !1553
  %32 = mul i64 512, %31, !dbg !1554
  %33 = add i64 %30, %32, !dbg !1555
  %34 = shl i64 %33, 16, !dbg !1556
  %35 = load ptr, ptr %2, align 8, !dbg !1557
  %36 = getelementptr inbounds %struct.tm_zip_s, ptr %35, i32 0, i32 0, !dbg !1558
  %37 = load i32, ptr %36, align 4, !dbg !1558
  %38 = udiv i32 %37, 2, !dbg !1559
  %39 = load ptr, ptr %2, align 8, !dbg !1560
  %40 = getelementptr inbounds %struct.tm_zip_s, ptr %39, i32 0, i32 1, !dbg !1561
  %41 = load i32, ptr %40, align 4, !dbg !1561
  %42 = mul i32 32, %41, !dbg !1562
  %43 = add i32 %38, %42, !dbg !1563
  %44 = zext i32 %43 to i64, !dbg !1564
  %45 = load ptr, ptr %2, align 8, !dbg !1565
  %46 = getelementptr inbounds %struct.tm_zip_s, ptr %45, i32 0, i32 2, !dbg !1566
  %47 = load i32, ptr %46, align 4, !dbg !1566
  %48 = zext i32 %47 to i64, !dbg !1567
  %49 = mul i64 2048, %48, !dbg !1568
  %50 = add i64 %44, %49, !dbg !1569
  %51 = or i64 %34, %50, !dbg !1570
  ret i64 %51, !dbg !1571
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zip64local_putValue_inmemory(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 !dbg !1572 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1575, metadata !DIExpression()), !dbg !1576
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1577, metadata !DIExpression()), !dbg !1578
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1579, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1581, metadata !DIExpression()), !dbg !1582
  %9 = load ptr, ptr %4, align 8, !dbg !1583
  store ptr %9, ptr %7, align 8, !dbg !1582
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1584, metadata !DIExpression()), !dbg !1585
  store i32 0, ptr %8, align 4, !dbg !1586
  br label %10, !dbg !1588

10:                                               ; preds = %24, %3
  %11 = load i32, ptr %8, align 4, !dbg !1589
  %12 = load i32, ptr %6, align 4, !dbg !1591
  %13 = icmp slt i32 %11, %12, !dbg !1592
  br i1 %13, label %14, label %27, !dbg !1593

14:                                               ; preds = %10
  %15 = load i64, ptr %5, align 8, !dbg !1594
  %16 = and i64 %15, 255, !dbg !1596
  %17 = trunc i64 %16 to i8, !dbg !1597
  %18 = load ptr, ptr %7, align 8, !dbg !1598
  %19 = load i32, ptr %8, align 4, !dbg !1599
  %20 = sext i32 %19 to i64, !dbg !1598
  %21 = getelementptr inbounds i8, ptr %18, i64 %20, !dbg !1598
  store i8 %17, ptr %21, align 1, !dbg !1600
  %22 = load i64, ptr %5, align 8, !dbg !1601
  %23 = lshr i64 %22, 8, !dbg !1601
  store i64 %23, ptr %5, align 8, !dbg !1601
  br label %24, !dbg !1602

24:                                               ; preds = %14
  %25 = load i32, ptr %8, align 4, !dbg !1603
  %26 = add nsw i32 %25, 1, !dbg !1603
  store i32 %26, ptr %8, align 4, !dbg !1603
  br label %10, !dbg !1604, !llvm.loop !1605

27:                                               ; preds = %10
  %28 = load i64, ptr %5, align 8, !dbg !1607
  %29 = icmp ne i64 %28, 0, !dbg !1609
  br i1 %29, label %30, label %44, !dbg !1610

30:                                               ; preds = %27
  store i32 0, ptr %8, align 4, !dbg !1611
  br label %31, !dbg !1614

31:                                               ; preds = %40, %30
  %32 = load i32, ptr %8, align 4, !dbg !1615
  %33 = load i32, ptr %6, align 4, !dbg !1617
  %34 = icmp slt i32 %32, %33, !dbg !1618
  br i1 %34, label %35, label %43, !dbg !1619

35:                                               ; preds = %31
  %36 = load ptr, ptr %7, align 8, !dbg !1620
  %37 = load i32, ptr %8, align 4, !dbg !1622
  %38 = sext i32 %37 to i64, !dbg !1620
  %39 = getelementptr inbounds i8, ptr %36, i64 %38, !dbg !1620
  store i8 -1, ptr %39, align 1, !dbg !1623
  br label %40, !dbg !1624

40:                                               ; preds = %35
  %41 = load i32, ptr %8, align 4, !dbg !1625
  %42 = add nsw i32 %41, 1, !dbg !1625
  store i32 %42, ptr %8, align 4, !dbg !1625
  br label %31, !dbg !1626, !llvm.loop !1627

43:                                               ; preds = %31
  br label %44, !dbg !1629

44:                                               ; preds = %43, %27
  ret void, !dbg !1630
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Write_LocalFileHeader(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !1631 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1634, metadata !DIExpression()), !dbg !1635
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1636, metadata !DIExpression()), !dbg !1637
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1638, metadata !DIExpression()), !dbg !1639
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1640, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1642, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1644, metadata !DIExpression()), !dbg !1645
  %16 = load ptr, ptr %6, align 8, !dbg !1646
  %17 = call i64 @strlen(ptr noundef %16) #10, !dbg !1647
  %18 = trunc i64 %17 to i32, !dbg !1648
  store i32 %18, ptr %10, align 4, !dbg !1645
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1649, metadata !DIExpression()), !dbg !1650
  %19 = load i32, ptr %7, align 4, !dbg !1651
  store i32 %19, ptr %11, align 4, !dbg !1650
  %20 = load ptr, ptr %5, align 8, !dbg !1652
  %21 = getelementptr inbounds %struct.zip64_internal, ptr %20, i32 0, i32 0, !dbg !1653
  %22 = load ptr, ptr %5, align 8, !dbg !1654
  %23 = getelementptr inbounds %struct.zip64_internal, ptr %22, i32 0, i32 1, !dbg !1655
  %24 = load ptr, ptr %23, align 8, !dbg !1655
  %25 = call i32 @zip64local_putValue(ptr noundef %21, ptr noundef %24, i64 noundef 67324752, i32 noundef 4), !dbg !1656
  store i32 %25, ptr %9, align 4, !dbg !1657
  %26 = load i32, ptr %9, align 4, !dbg !1658
  %27 = icmp eq i32 %26, 0, !dbg !1660
  br i1 %27, label %28, label %49, !dbg !1661

28:                                               ; preds = %4
  %29 = load ptr, ptr %5, align 8, !dbg !1662
  %30 = getelementptr inbounds %struct.zip64_internal, ptr %29, i32 0, i32 4, !dbg !1665
  %31 = getelementptr inbounds %struct.curfile64_info, ptr %30, i32 0, i32 15, !dbg !1666
  %32 = load i32, ptr %31, align 4, !dbg !1666
  %33 = icmp ne i32 %32, 0, !dbg !1662
  br i1 %33, label %34, label %41, !dbg !1667

34:                                               ; preds = %28
  %35 = load ptr, ptr %5, align 8, !dbg !1668
  %36 = getelementptr inbounds %struct.zip64_internal, ptr %35, i32 0, i32 0, !dbg !1669
  %37 = load ptr, ptr %5, align 8, !dbg !1670
  %38 = getelementptr inbounds %struct.zip64_internal, ptr %37, i32 0, i32 1, !dbg !1671
  %39 = load ptr, ptr %38, align 8, !dbg !1671
  %40 = call i32 @zip64local_putValue(ptr noundef %36, ptr noundef %39, i64 noundef 45, i32 noundef 2), !dbg !1672
  store i32 %40, ptr %9, align 4, !dbg !1673
  br label %48, !dbg !1674

41:                                               ; preds = %28
  %42 = load ptr, ptr %5, align 8, !dbg !1675
  %43 = getelementptr inbounds %struct.zip64_internal, ptr %42, i32 0, i32 0, !dbg !1676
  %44 = load ptr, ptr %5, align 8, !dbg !1677
  %45 = getelementptr inbounds %struct.zip64_internal, ptr %44, i32 0, i32 1, !dbg !1678
  %46 = load ptr, ptr %45, align 8, !dbg !1678
  %47 = call i32 @zip64local_putValue(ptr noundef %43, ptr noundef %46, i64 noundef 20, i32 noundef 2), !dbg !1679
  store i32 %47, ptr %9, align 4, !dbg !1680
  br label %48

48:                                               ; preds = %41, %34
  br label %49, !dbg !1681

49:                                               ; preds = %48, %4
  %50 = load i32, ptr %9, align 4, !dbg !1682
  %51 = icmp eq i32 %50, 0, !dbg !1684
  br i1 %51, label %52, label %63, !dbg !1685

52:                                               ; preds = %49
  %53 = load ptr, ptr %5, align 8, !dbg !1686
  %54 = getelementptr inbounds %struct.zip64_internal, ptr %53, i32 0, i32 0, !dbg !1687
  %55 = load ptr, ptr %5, align 8, !dbg !1688
  %56 = getelementptr inbounds %struct.zip64_internal, ptr %55, i32 0, i32 1, !dbg !1689
  %57 = load ptr, ptr %56, align 8, !dbg !1689
  %58 = load ptr, ptr %5, align 8, !dbg !1690
  %59 = getelementptr inbounds %struct.zip64_internal, ptr %58, i32 0, i32 4, !dbg !1691
  %60 = getelementptr inbounds %struct.curfile64_info, ptr %59, i32 0, i32 8, !dbg !1692
  %61 = load i64, ptr %60, align 8, !dbg !1692
  %62 = call i32 @zip64local_putValue(ptr noundef %54, ptr noundef %57, i64 noundef %61, i32 noundef 2), !dbg !1693
  store i32 %62, ptr %9, align 4, !dbg !1694
  br label %63, !dbg !1695

63:                                               ; preds = %52, %49
  %64 = load i32, ptr %9, align 4, !dbg !1696
  %65 = icmp eq i32 %64, 0, !dbg !1698
  br i1 %65, label %66, label %78, !dbg !1699

66:                                               ; preds = %63
  %67 = load ptr, ptr %5, align 8, !dbg !1700
  %68 = getelementptr inbounds %struct.zip64_internal, ptr %67, i32 0, i32 0, !dbg !1701
  %69 = load ptr, ptr %5, align 8, !dbg !1702
  %70 = getelementptr inbounds %struct.zip64_internal, ptr %69, i32 0, i32 1, !dbg !1703
  %71 = load ptr, ptr %70, align 8, !dbg !1703
  %72 = load ptr, ptr %5, align 8, !dbg !1704
  %73 = getelementptr inbounds %struct.zip64_internal, ptr %72, i32 0, i32 4, !dbg !1705
  %74 = getelementptr inbounds %struct.curfile64_info, ptr %73, i32 0, i32 9, !dbg !1706
  %75 = load i32, ptr %74, align 8, !dbg !1706
  %76 = sext i32 %75 to i64, !dbg !1707
  %77 = call i32 @zip64local_putValue(ptr noundef %68, ptr noundef %71, i64 noundef %76, i32 noundef 2), !dbg !1708
  store i32 %77, ptr %9, align 4, !dbg !1709
  br label %78, !dbg !1710

78:                                               ; preds = %66, %63
  %79 = load i32, ptr %9, align 4, !dbg !1711
  %80 = icmp eq i32 %79, 0, !dbg !1713
  br i1 %80, label %81, label %92, !dbg !1714

81:                                               ; preds = %78
  %82 = load ptr, ptr %5, align 8, !dbg !1715
  %83 = getelementptr inbounds %struct.zip64_internal, ptr %82, i32 0, i32 0, !dbg !1716
  %84 = load ptr, ptr %5, align 8, !dbg !1717
  %85 = getelementptr inbounds %struct.zip64_internal, ptr %84, i32 0, i32 1, !dbg !1718
  %86 = load ptr, ptr %85, align 8, !dbg !1718
  %87 = load ptr, ptr %5, align 8, !dbg !1719
  %88 = getelementptr inbounds %struct.zip64_internal, ptr %87, i32 0, i32 4, !dbg !1720
  %89 = getelementptr inbounds %struct.curfile64_info, ptr %88, i32 0, i32 12, !dbg !1721
  %90 = load i64, ptr %89, align 8, !dbg !1721
  %91 = call i32 @zip64local_putValue(ptr noundef %83, ptr noundef %86, i64 noundef %90, i32 noundef 4), !dbg !1722
  store i32 %91, ptr %9, align 4, !dbg !1723
  br label %92, !dbg !1724

92:                                               ; preds = %81, %78
  %93 = load i32, ptr %9, align 4, !dbg !1725
  %94 = icmp eq i32 %93, 0, !dbg !1727
  br i1 %94, label %95, label %102, !dbg !1728

95:                                               ; preds = %92
  %96 = load ptr, ptr %5, align 8, !dbg !1729
  %97 = getelementptr inbounds %struct.zip64_internal, ptr %96, i32 0, i32 0, !dbg !1730
  %98 = load ptr, ptr %5, align 8, !dbg !1731
  %99 = getelementptr inbounds %struct.zip64_internal, ptr %98, i32 0, i32 1, !dbg !1732
  %100 = load ptr, ptr %99, align 8, !dbg !1732
  %101 = call i32 @zip64local_putValue(ptr noundef %97, ptr noundef %100, i64 noundef 0, i32 noundef 4), !dbg !1733
  store i32 %101, ptr %9, align 4, !dbg !1734
  br label %102, !dbg !1735

102:                                              ; preds = %95, %92
  %103 = load i32, ptr %9, align 4, !dbg !1736
  %104 = icmp eq i32 %103, 0, !dbg !1738
  br i1 %104, label %105, label %126, !dbg !1739

105:                                              ; preds = %102
  %106 = load ptr, ptr %5, align 8, !dbg !1740
  %107 = getelementptr inbounds %struct.zip64_internal, ptr %106, i32 0, i32 4, !dbg !1743
  %108 = getelementptr inbounds %struct.curfile64_info, ptr %107, i32 0, i32 15, !dbg !1744
  %109 = load i32, ptr %108, align 4, !dbg !1744
  %110 = icmp ne i32 %109, 0, !dbg !1740
  br i1 %110, label %111, label %118, !dbg !1745

111:                                              ; preds = %105
  %112 = load ptr, ptr %5, align 8, !dbg !1746
  %113 = getelementptr inbounds %struct.zip64_internal, ptr %112, i32 0, i32 0, !dbg !1747
  %114 = load ptr, ptr %5, align 8, !dbg !1748
  %115 = getelementptr inbounds %struct.zip64_internal, ptr %114, i32 0, i32 1, !dbg !1749
  %116 = load ptr, ptr %115, align 8, !dbg !1749
  %117 = call i32 @zip64local_putValue(ptr noundef %113, ptr noundef %116, i64 noundef 4294967295, i32 noundef 4), !dbg !1750
  store i32 %117, ptr %9, align 4, !dbg !1751
  br label %125, !dbg !1752

118:                                              ; preds = %105
  %119 = load ptr, ptr %5, align 8, !dbg !1753
  %120 = getelementptr inbounds %struct.zip64_internal, ptr %119, i32 0, i32 0, !dbg !1754
  %121 = load ptr, ptr %5, align 8, !dbg !1755
  %122 = getelementptr inbounds %struct.zip64_internal, ptr %121, i32 0, i32 1, !dbg !1756
  %123 = load ptr, ptr %122, align 8, !dbg !1756
  %124 = call i32 @zip64local_putValue(ptr noundef %120, ptr noundef %123, i64 noundef 0, i32 noundef 4), !dbg !1757
  store i32 %124, ptr %9, align 4, !dbg !1758
  br label %125

125:                                              ; preds = %118, %111
  br label %126, !dbg !1759

126:                                              ; preds = %125, %102
  %127 = load i32, ptr %9, align 4, !dbg !1760
  %128 = icmp eq i32 %127, 0, !dbg !1762
  br i1 %128, label %129, label %150, !dbg !1763

129:                                              ; preds = %126
  %130 = load ptr, ptr %5, align 8, !dbg !1764
  %131 = getelementptr inbounds %struct.zip64_internal, ptr %130, i32 0, i32 4, !dbg !1767
  %132 = getelementptr inbounds %struct.curfile64_info, ptr %131, i32 0, i32 15, !dbg !1768
  %133 = load i32, ptr %132, align 4, !dbg !1768
  %134 = icmp ne i32 %133, 0, !dbg !1764
  br i1 %134, label %135, label %142, !dbg !1769

135:                                              ; preds = %129
  %136 = load ptr, ptr %5, align 8, !dbg !1770
  %137 = getelementptr inbounds %struct.zip64_internal, ptr %136, i32 0, i32 0, !dbg !1771
  %138 = load ptr, ptr %5, align 8, !dbg !1772
  %139 = getelementptr inbounds %struct.zip64_internal, ptr %138, i32 0, i32 1, !dbg !1773
  %140 = load ptr, ptr %139, align 8, !dbg !1773
  %141 = call i32 @zip64local_putValue(ptr noundef %137, ptr noundef %140, i64 noundef 4294967295, i32 noundef 4), !dbg !1774
  store i32 %141, ptr %9, align 4, !dbg !1775
  br label %149, !dbg !1776

142:                                              ; preds = %129
  %143 = load ptr, ptr %5, align 8, !dbg !1777
  %144 = getelementptr inbounds %struct.zip64_internal, ptr %143, i32 0, i32 0, !dbg !1778
  %145 = load ptr, ptr %5, align 8, !dbg !1779
  %146 = getelementptr inbounds %struct.zip64_internal, ptr %145, i32 0, i32 1, !dbg !1780
  %147 = load ptr, ptr %146, align 8, !dbg !1780
  %148 = call i32 @zip64local_putValue(ptr noundef %144, ptr noundef %147, i64 noundef 0, i32 noundef 4), !dbg !1781
  store i32 %148, ptr %9, align 4, !dbg !1782
  br label %149

149:                                              ; preds = %142, %135
  br label %150, !dbg !1783

150:                                              ; preds = %149, %126
  %151 = load i32, ptr %9, align 4, !dbg !1784
  %152 = icmp eq i32 %151, 0, !dbg !1786
  br i1 %152, label %153, label %162, !dbg !1787

153:                                              ; preds = %150
  %154 = load ptr, ptr %5, align 8, !dbg !1788
  %155 = getelementptr inbounds %struct.zip64_internal, ptr %154, i32 0, i32 0, !dbg !1789
  %156 = load ptr, ptr %5, align 8, !dbg !1790
  %157 = getelementptr inbounds %struct.zip64_internal, ptr %156, i32 0, i32 1, !dbg !1791
  %158 = load ptr, ptr %157, align 8, !dbg !1791
  %159 = load i32, ptr %10, align 4, !dbg !1792
  %160 = zext i32 %159 to i64, !dbg !1793
  %161 = call i32 @zip64local_putValue(ptr noundef %155, ptr noundef %158, i64 noundef %160, i32 noundef 2), !dbg !1794
  store i32 %161, ptr %9, align 4, !dbg !1795
  br label %162, !dbg !1796

162:                                              ; preds = %153, %150
  %163 = load ptr, ptr %5, align 8, !dbg !1797
  %164 = getelementptr inbounds %struct.zip64_internal, ptr %163, i32 0, i32 4, !dbg !1799
  %165 = getelementptr inbounds %struct.curfile64_info, ptr %164, i32 0, i32 15, !dbg !1800
  %166 = load i32, ptr %165, align 4, !dbg !1800
  %167 = icmp ne i32 %166, 0, !dbg !1797
  br i1 %167, label %168, label %171, !dbg !1801

168:                                              ; preds = %162
  %169 = load i32, ptr %11, align 4, !dbg !1802
  %170 = add i32 %169, 20, !dbg !1802
  store i32 %170, ptr %11, align 4, !dbg !1802
  br label %171, !dbg !1804

171:                                              ; preds = %168, %162
  %172 = load i32, ptr %9, align 4, !dbg !1805
  %173 = icmp eq i32 %172, 0, !dbg !1807
  br i1 %173, label %174, label %183, !dbg !1808

174:                                              ; preds = %171
  %175 = load ptr, ptr %5, align 8, !dbg !1809
  %176 = getelementptr inbounds %struct.zip64_internal, ptr %175, i32 0, i32 0, !dbg !1810
  %177 = load ptr, ptr %5, align 8, !dbg !1811
  %178 = getelementptr inbounds %struct.zip64_internal, ptr %177, i32 0, i32 1, !dbg !1812
  %179 = load ptr, ptr %178, align 8, !dbg !1812
  %180 = load i32, ptr %11, align 4, !dbg !1813
  %181 = zext i32 %180 to i64, !dbg !1814
  %182 = call i32 @zip64local_putValue(ptr noundef %176, ptr noundef %179, i64 noundef %181, i32 noundef 2), !dbg !1815
  store i32 %182, ptr %9, align 4, !dbg !1816
  br label %183, !dbg !1817

183:                                              ; preds = %174, %171
  %184 = load i32, ptr %9, align 4, !dbg !1818
  %185 = icmp eq i32 %184, 0, !dbg !1820
  br i1 %185, label %186, label %212, !dbg !1821

186:                                              ; preds = %183
  %187 = load i32, ptr %10, align 4, !dbg !1822
  %188 = icmp ugt i32 %187, 0, !dbg !1823
  br i1 %188, label %189, label %212, !dbg !1824

189:                                              ; preds = %186
  %190 = load ptr, ptr %5, align 8, !dbg !1825
  %191 = getelementptr inbounds %struct.zip64_internal, ptr %190, i32 0, i32 0, !dbg !1825
  %192 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %191, i32 0, i32 0, !dbg !1825
  %193 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %192, i32 0, i32 2, !dbg !1825
  %194 = load ptr, ptr %193, align 8, !dbg !1825
  %195 = load ptr, ptr %5, align 8, !dbg !1825
  %196 = getelementptr inbounds %struct.zip64_internal, ptr %195, i32 0, i32 0, !dbg !1825
  %197 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %196, i32 0, i32 0, !dbg !1825
  %198 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %197, i32 0, i32 8, !dbg !1825
  %199 = load ptr, ptr %198, align 8, !dbg !1825
  %200 = load ptr, ptr %5, align 8, !dbg !1825
  %201 = getelementptr inbounds %struct.zip64_internal, ptr %200, i32 0, i32 1, !dbg !1825
  %202 = load ptr, ptr %201, align 8, !dbg !1825
  %203 = load ptr, ptr %6, align 8, !dbg !1825
  %204 = load i32, ptr %10, align 4, !dbg !1825
  %205 = zext i32 %204 to i64, !dbg !1825
  %206 = call i64 %194(ptr noundef %199, ptr noundef %202, ptr noundef %203, i64 noundef %205), !dbg !1825
  %207 = load i32, ptr %10, align 4, !dbg !1828
  %208 = zext i32 %207 to i64, !dbg !1828
  %209 = icmp ne i64 %206, %208, !dbg !1829
  br i1 %209, label %210, label %211, !dbg !1830

210:                                              ; preds = %189
  store i32 -1, ptr %9, align 4, !dbg !1831
  br label %211, !dbg !1832

211:                                              ; preds = %210, %189
  br label %212, !dbg !1833

212:                                              ; preds = %211, %186, %183
  %213 = load i32, ptr %9, align 4, !dbg !1834
  %214 = icmp eq i32 %213, 0, !dbg !1836
  br i1 %214, label %215, label %241, !dbg !1837

215:                                              ; preds = %212
  %216 = load i32, ptr %7, align 4, !dbg !1838
  %217 = icmp ugt i32 %216, 0, !dbg !1839
  br i1 %217, label %218, label %241, !dbg !1840

218:                                              ; preds = %215
  %219 = load ptr, ptr %5, align 8, !dbg !1841
  %220 = getelementptr inbounds %struct.zip64_internal, ptr %219, i32 0, i32 0, !dbg !1841
  %221 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %220, i32 0, i32 0, !dbg !1841
  %222 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %221, i32 0, i32 2, !dbg !1841
  %223 = load ptr, ptr %222, align 8, !dbg !1841
  %224 = load ptr, ptr %5, align 8, !dbg !1841
  %225 = getelementptr inbounds %struct.zip64_internal, ptr %224, i32 0, i32 0, !dbg !1841
  %226 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %225, i32 0, i32 0, !dbg !1841
  %227 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %226, i32 0, i32 8, !dbg !1841
  %228 = load ptr, ptr %227, align 8, !dbg !1841
  %229 = load ptr, ptr %5, align 8, !dbg !1841
  %230 = getelementptr inbounds %struct.zip64_internal, ptr %229, i32 0, i32 1, !dbg !1841
  %231 = load ptr, ptr %230, align 8, !dbg !1841
  %232 = load ptr, ptr %8, align 8, !dbg !1841
  %233 = load i32, ptr %7, align 4, !dbg !1841
  %234 = zext i32 %233 to i64, !dbg !1841
  %235 = call i64 %223(ptr noundef %228, ptr noundef %231, ptr noundef %232, i64 noundef %234), !dbg !1841
  %236 = load i32, ptr %7, align 4, !dbg !1844
  %237 = zext i32 %236 to i64, !dbg !1844
  %238 = icmp ne i64 %235, %237, !dbg !1845
  br i1 %238, label %239, label %240, !dbg !1846

239:                                              ; preds = %218
  store i32 -1, ptr %9, align 4, !dbg !1847
  br label %240, !dbg !1848

240:                                              ; preds = %239, %218
  br label %241, !dbg !1849

241:                                              ; preds = %240, %215, %212
  %242 = load i32, ptr %9, align 4, !dbg !1850
  %243 = icmp eq i32 %242, 0, !dbg !1852
  br i1 %243, label %244, label %290, !dbg !1853

244:                                              ; preds = %241
  %245 = load ptr, ptr %5, align 8, !dbg !1854
  %246 = getelementptr inbounds %struct.zip64_internal, ptr %245, i32 0, i32 4, !dbg !1855
  %247 = getelementptr inbounds %struct.curfile64_info, ptr %246, i32 0, i32 15, !dbg !1856
  %248 = load i32, ptr %247, align 4, !dbg !1856
  %249 = icmp ne i32 %248, 0, !dbg !1857
  br i1 %249, label %250, label %290, !dbg !1858

250:                                              ; preds = %244
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1859, metadata !DIExpression()), !dbg !1861
  store i16 1, ptr %12, align 2, !dbg !1861
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1862, metadata !DIExpression()), !dbg !1863
  store i16 16, ptr %13, align 2, !dbg !1863
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1864, metadata !DIExpression()), !dbg !1865
  store i64 0, ptr %14, align 8, !dbg !1865
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1866, metadata !DIExpression()), !dbg !1867
  store i64 0, ptr %15, align 8, !dbg !1867
  %251 = load ptr, ptr %5, align 8, !dbg !1868
  %252 = getelementptr inbounds %struct.zip64_internal, ptr %251, i32 0, i32 0, !dbg !1868
  %253 = load ptr, ptr %5, align 8, !dbg !1868
  %254 = getelementptr inbounds %struct.zip64_internal, ptr %253, i32 0, i32 1, !dbg !1868
  %255 = load ptr, ptr %254, align 8, !dbg !1868
  %256 = call i64 @call_ztell64(ptr noundef %252, ptr noundef %255), !dbg !1868
  %257 = load ptr, ptr %5, align 8, !dbg !1869
  %258 = getelementptr inbounds %struct.zip64_internal, ptr %257, i32 0, i32 4, !dbg !1870
  %259 = getelementptr inbounds %struct.curfile64_info, ptr %258, i32 0, i32 16, !dbg !1871
  store i64 %256, ptr %259, align 8, !dbg !1872
  %260 = load ptr, ptr %5, align 8, !dbg !1873
  %261 = getelementptr inbounds %struct.zip64_internal, ptr %260, i32 0, i32 0, !dbg !1874
  %262 = load ptr, ptr %5, align 8, !dbg !1875
  %263 = getelementptr inbounds %struct.zip64_internal, ptr %262, i32 0, i32 1, !dbg !1876
  %264 = load ptr, ptr %263, align 8, !dbg !1876
  %265 = load i16, ptr %12, align 2, !dbg !1877
  %266 = sext i16 %265 to i64, !dbg !1878
  %267 = call i32 @zip64local_putValue(ptr noundef %261, ptr noundef %264, i64 noundef %266, i32 noundef 2), !dbg !1879
  store i32 %267, ptr %9, align 4, !dbg !1880
  %268 = load ptr, ptr %5, align 8, !dbg !1881
  %269 = getelementptr inbounds %struct.zip64_internal, ptr %268, i32 0, i32 0, !dbg !1882
  %270 = load ptr, ptr %5, align 8, !dbg !1883
  %271 = getelementptr inbounds %struct.zip64_internal, ptr %270, i32 0, i32 1, !dbg !1884
  %272 = load ptr, ptr %271, align 8, !dbg !1884
  %273 = load i16, ptr %13, align 2, !dbg !1885
  %274 = sext i16 %273 to i64, !dbg !1886
  %275 = call i32 @zip64local_putValue(ptr noundef %269, ptr noundef %272, i64 noundef %274, i32 noundef 2), !dbg !1887
  store i32 %275, ptr %9, align 4, !dbg !1888
  %276 = load ptr, ptr %5, align 8, !dbg !1889
  %277 = getelementptr inbounds %struct.zip64_internal, ptr %276, i32 0, i32 0, !dbg !1890
  %278 = load ptr, ptr %5, align 8, !dbg !1891
  %279 = getelementptr inbounds %struct.zip64_internal, ptr %278, i32 0, i32 1, !dbg !1892
  %280 = load ptr, ptr %279, align 8, !dbg !1892
  %281 = load i64, ptr %15, align 8, !dbg !1893
  %282 = call i32 @zip64local_putValue(ptr noundef %277, ptr noundef %280, i64 noundef %281, i32 noundef 8), !dbg !1894
  store i32 %282, ptr %9, align 4, !dbg !1895
  %283 = load ptr, ptr %5, align 8, !dbg !1896
  %284 = getelementptr inbounds %struct.zip64_internal, ptr %283, i32 0, i32 0, !dbg !1897
  %285 = load ptr, ptr %5, align 8, !dbg !1898
  %286 = getelementptr inbounds %struct.zip64_internal, ptr %285, i32 0, i32 1, !dbg !1899
  %287 = load ptr, ptr %286, align 8, !dbg !1899
  %288 = load i64, ptr %14, align 8, !dbg !1900
  %289 = call i32 @zip64local_putValue(ptr noundef %284, ptr noundef %287, i64 noundef %288, i32 noundef 8), !dbg !1901
  store i32 %289, ptr %9, align 4, !dbg !1902
  br label %290, !dbg !1903

290:                                              ; preds = %250, %244, %241
  %291 = load i32, ptr %9, align 4, !dbg !1904
  ret i32 %291, !dbg !1905
}

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare ptr @get_crc_table() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypthead(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #0 !dbg !198 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [10 x i8], align 1
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1906, metadata !DIExpression()), !dbg !1907
  store ptr %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1908, metadata !DIExpression()), !dbg !1909
  store i32 %2, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1910, metadata !DIExpression()), !dbg !1911
  store ptr %3, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1912, metadata !DIExpression()), !dbg !1913
  store ptr %4, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1914, metadata !DIExpression()), !dbg !1915
  store i64 %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1916, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1918, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1920, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1922, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1924, metadata !DIExpression()), !dbg !1928
  %18 = load i32, ptr %10, align 4, !dbg !1929
  %19 = icmp slt i32 %18, 12, !dbg !1931
  br i1 %19, label %20, label %21, !dbg !1932

20:                                               ; preds = %6
  store i32 0, ptr %7, align 4, !dbg !1933
  br label %137, !dbg !1933

21:                                               ; preds = %6
  %22 = load i32, ptr @crypthead.calls, align 4, !dbg !1934
  %23 = add i32 %22, 1, !dbg !1934
  store i32 %23, ptr @crypthead.calls, align 4, !dbg !1934
  %24 = icmp eq i32 %23, 1, !dbg !1936
  br i1 %24, label %25, label %29, !dbg !1937

25:                                               ; preds = %21
  %26 = call i64 @time(ptr noundef null) #9, !dbg !1938
  %27 = xor i64 %26, 3141592654, !dbg !1940
  %28 = trunc i64 %27 to i32, !dbg !1941
  call void @srand(i32 noundef %28) #9, !dbg !1942
  br label %29, !dbg !1943

29:                                               ; preds = %25, %21
  %30 = load ptr, ptr %8, align 8, !dbg !1944
  %31 = load ptr, ptr %11, align 8, !dbg !1945
  %32 = load ptr, ptr %12, align 8, !dbg !1946
  call void @init_keys(ptr noundef %30, ptr noundef %31, ptr noundef %32), !dbg !1947
  store i32 0, ptr %14, align 4, !dbg !1948
  br label %33, !dbg !1950

33:                                               ; preds = %54, %29
  %34 = load i32, ptr %14, align 4, !dbg !1951
  %35 = icmp slt i32 %34, 10, !dbg !1953
  br i1 %35, label %36, label %57, !dbg !1954

36:                                               ; preds = %33
  %37 = call i32 @rand() #9, !dbg !1955
  %38 = ashr i32 %37, 7, !dbg !1957
  %39 = and i32 %38, 255, !dbg !1958
  store i32 %39, ptr %16, align 4, !dbg !1959
  %40 = load ptr, ptr %11, align 8, !dbg !1960
  %41 = load ptr, ptr %12, align 8, !dbg !1960
  %42 = call i32 @decrypt_byte(ptr noundef %40, ptr noundef %41), !dbg !1960
  store i32 %42, ptr %15, align 4, !dbg !1960
  %43 = load ptr, ptr %11, align 8, !dbg !1960
  %44 = load ptr, ptr %12, align 8, !dbg !1960
  %45 = load i32, ptr %16, align 4, !dbg !1960
  %46 = call i32 @update_keys(ptr noundef %43, ptr noundef %44, i32 noundef %45), !dbg !1960
  %47 = load i32, ptr %15, align 4, !dbg !1960
  %48 = load i32, ptr %16, align 4, !dbg !1960
  %49 = xor i32 %47, %48, !dbg !1960
  %50 = trunc i32 %49 to i8, !dbg !1961
  %51 = load i32, ptr %14, align 4, !dbg !1962
  %52 = sext i32 %51 to i64, !dbg !1963
  %53 = getelementptr inbounds [10 x i8], ptr %17, i64 0, i64 %52, !dbg !1963
  store i8 %50, ptr %53, align 1, !dbg !1964
  br label %54, !dbg !1965

54:                                               ; preds = %36
  %55 = load i32, ptr %14, align 4, !dbg !1966
  %56 = add nsw i32 %55, 1, !dbg !1966
  store i32 %56, ptr %14, align 4, !dbg !1966
  br label %33, !dbg !1967, !llvm.loop !1968

57:                                               ; preds = %33
  %58 = load ptr, ptr %8, align 8, !dbg !1970
  %59 = load ptr, ptr %11, align 8, !dbg !1971
  %60 = load ptr, ptr %12, align 8, !dbg !1972
  call void @init_keys(ptr noundef %58, ptr noundef %59, ptr noundef %60), !dbg !1973
  store i32 0, ptr %14, align 4, !dbg !1974
  br label %61, !dbg !1976

61:                                               ; preds = %88, %57
  %62 = load i32, ptr %14, align 4, !dbg !1977
  %63 = icmp slt i32 %62, 10, !dbg !1979
  br i1 %63, label %64, label %91, !dbg !1980

64:                                               ; preds = %61
  %65 = load ptr, ptr %11, align 8, !dbg !1981
  %66 = load ptr, ptr %12, align 8, !dbg !1981
  %67 = call i32 @decrypt_byte(ptr noundef %65, ptr noundef %66), !dbg !1981
  store i32 %67, ptr %15, align 4, !dbg !1981
  %68 = load ptr, ptr %11, align 8, !dbg !1981
  %69 = load ptr, ptr %12, align 8, !dbg !1981
  %70 = load i32, ptr %14, align 4, !dbg !1981
  %71 = sext i32 %70 to i64, !dbg !1981
  %72 = getelementptr inbounds [10 x i8], ptr %17, i64 0, i64 %71, !dbg !1981
  %73 = load i8, ptr %72, align 1, !dbg !1981
  %74 = zext i8 %73 to i32, !dbg !1981
  %75 = call i32 @update_keys(ptr noundef %68, ptr noundef %69, i32 noundef %74), !dbg !1981
  %76 = load i32, ptr %15, align 4, !dbg !1981
  %77 = load i32, ptr %14, align 4, !dbg !1981
  %78 = sext i32 %77 to i64, !dbg !1981
  %79 = getelementptr inbounds [10 x i8], ptr %17, i64 0, i64 %78, !dbg !1981
  %80 = load i8, ptr %79, align 1, !dbg !1981
  %81 = zext i8 %80 to i32, !dbg !1981
  %82 = xor i32 %76, %81, !dbg !1981
  %83 = trunc i32 %82 to i8, !dbg !1983
  %84 = load ptr, ptr %9, align 8, !dbg !1984
  %85 = load i32, ptr %14, align 4, !dbg !1985
  %86 = sext i32 %85 to i64, !dbg !1984
  %87 = getelementptr inbounds i8, ptr %84, i64 %86, !dbg !1984
  store i8 %83, ptr %87, align 1, !dbg !1986
  br label %88, !dbg !1987

88:                                               ; preds = %64
  %89 = load i32, ptr %14, align 4, !dbg !1988
  %90 = add nsw i32 %89, 1, !dbg !1988
  store i32 %90, ptr %14, align 4, !dbg !1988
  br label %61, !dbg !1989, !llvm.loop !1990

91:                                               ; preds = %61
  %92 = load ptr, ptr %11, align 8, !dbg !1992
  %93 = load ptr, ptr %12, align 8, !dbg !1992
  %94 = call i32 @decrypt_byte(ptr noundef %92, ptr noundef %93), !dbg !1992
  store i32 %94, ptr %15, align 4, !dbg !1992
  %95 = load ptr, ptr %11, align 8, !dbg !1992
  %96 = load ptr, ptr %12, align 8, !dbg !1992
  %97 = load i64, ptr %13, align 8, !dbg !1992
  %98 = lshr i64 %97, 16, !dbg !1992
  %99 = trunc i64 %98 to i32, !dbg !1992
  %100 = and i32 %99, 255, !dbg !1992
  %101 = call i32 @update_keys(ptr noundef %95, ptr noundef %96, i32 noundef %100), !dbg !1992
  %102 = load i32, ptr %15, align 4, !dbg !1992
  %103 = load i64, ptr %13, align 8, !dbg !1992
  %104 = lshr i64 %103, 16, !dbg !1992
  %105 = trunc i64 %104 to i32, !dbg !1992
  %106 = and i32 %105, 255, !dbg !1992
  %107 = xor i32 %102, %106, !dbg !1992
  %108 = trunc i32 %107 to i8, !dbg !1993
  %109 = load ptr, ptr %9, align 8, !dbg !1994
  %110 = load i32, ptr %14, align 4, !dbg !1995
  %111 = add nsw i32 %110, 1, !dbg !1995
  store i32 %111, ptr %14, align 4, !dbg !1995
  %112 = sext i32 %110 to i64, !dbg !1994
  %113 = getelementptr inbounds i8, ptr %109, i64 %112, !dbg !1994
  store i8 %108, ptr %113, align 1, !dbg !1996
  %114 = load ptr, ptr %11, align 8, !dbg !1997
  %115 = load ptr, ptr %12, align 8, !dbg !1997
  %116 = call i32 @decrypt_byte(ptr noundef %114, ptr noundef %115), !dbg !1997
  store i32 %116, ptr %15, align 4, !dbg !1997
  %117 = load ptr, ptr %11, align 8, !dbg !1997
  %118 = load ptr, ptr %12, align 8, !dbg !1997
  %119 = load i64, ptr %13, align 8, !dbg !1997
  %120 = lshr i64 %119, 24, !dbg !1997
  %121 = trunc i64 %120 to i32, !dbg !1997
  %122 = and i32 %121, 255, !dbg !1997
  %123 = call i32 @update_keys(ptr noundef %117, ptr noundef %118, i32 noundef %122), !dbg !1997
  %124 = load i32, ptr %15, align 4, !dbg !1997
  %125 = load i64, ptr %13, align 8, !dbg !1997
  %126 = lshr i64 %125, 24, !dbg !1997
  %127 = trunc i64 %126 to i32, !dbg !1997
  %128 = and i32 %127, 255, !dbg !1997
  %129 = xor i32 %124, %128, !dbg !1997
  %130 = trunc i32 %129 to i8, !dbg !1998
  %131 = load ptr, ptr %9, align 8, !dbg !1999
  %132 = load i32, ptr %14, align 4, !dbg !2000
  %133 = add nsw i32 %132, 1, !dbg !2000
  store i32 %133, ptr %14, align 4, !dbg !2000
  %134 = sext i32 %132 to i64, !dbg !1999
  %135 = getelementptr inbounds i8, ptr %131, i64 %134, !dbg !1999
  store i8 %130, ptr %135, align 1, !dbg !2001
  %136 = load i32, ptr %14, align 4, !dbg !2002
  store i32 %136, ptr %7, align 4, !dbg !2003
  br label %137, !dbg !2003

137:                                              ; preds = %91, %20
  %138 = load i32, ptr %7, align 4, !dbg !2004
  ret i32 %138, !dbg !2004
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipOpenNewFileInZip4(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17) #0 !dbg !2005 {
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca i32, align 4
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca ptr, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  store ptr %0, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2008, metadata !DIExpression()), !dbg !2009
  store ptr %1, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2010, metadata !DIExpression()), !dbg !2011
  store ptr %2, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2012, metadata !DIExpression()), !dbg !2013
  store ptr %3, ptr %22, align 8
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2014, metadata !DIExpression()), !dbg !2015
  store i32 %4, ptr %23, align 4
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2016, metadata !DIExpression()), !dbg !2017
  store ptr %5, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2018, metadata !DIExpression()), !dbg !2019
  store i32 %6, ptr %25, align 4
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2020, metadata !DIExpression()), !dbg !2021
  store ptr %7, ptr %26, align 8
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2022, metadata !DIExpression()), !dbg !2023
  store i32 %8, ptr %27, align 4
  call void @llvm.dbg.declare(metadata ptr %27, metadata !2024, metadata !DIExpression()), !dbg !2025
  store i32 %9, ptr %28, align 4
  call void @llvm.dbg.declare(metadata ptr %28, metadata !2026, metadata !DIExpression()), !dbg !2027
  store i32 %10, ptr %29, align 4
  call void @llvm.dbg.declare(metadata ptr %29, metadata !2028, metadata !DIExpression()), !dbg !2029
  store i32 %11, ptr %30, align 4
  call void @llvm.dbg.declare(metadata ptr %30, metadata !2030, metadata !DIExpression()), !dbg !2031
  store i32 %12, ptr %31, align 4
  call void @llvm.dbg.declare(metadata ptr %31, metadata !2032, metadata !DIExpression()), !dbg !2033
  store i32 %13, ptr %32, align 4
  call void @llvm.dbg.declare(metadata ptr %32, metadata !2034, metadata !DIExpression()), !dbg !2035
  store ptr %14, ptr %33, align 8
  call void @llvm.dbg.declare(metadata ptr %33, metadata !2036, metadata !DIExpression()), !dbg !2037
  store i64 %15, ptr %34, align 8
  call void @llvm.dbg.declare(metadata ptr %34, metadata !2038, metadata !DIExpression()), !dbg !2039
  store i64 %16, ptr %35, align 8
  call void @llvm.dbg.declare(metadata ptr %35, metadata !2040, metadata !DIExpression()), !dbg !2041
  store i64 %17, ptr %36, align 8
  call void @llvm.dbg.declare(metadata ptr %36, metadata !2042, metadata !DIExpression()), !dbg !2043
  %37 = load ptr, ptr %19, align 8, !dbg !2044
  %38 = load ptr, ptr %20, align 8, !dbg !2045
  %39 = load ptr, ptr %21, align 8, !dbg !2046
  %40 = load ptr, ptr %22, align 8, !dbg !2047
  %41 = load i32, ptr %23, align 4, !dbg !2048
  %42 = load ptr, ptr %24, align 8, !dbg !2049
  %43 = load i32, ptr %25, align 4, !dbg !2050
  %44 = load ptr, ptr %26, align 8, !dbg !2051
  %45 = load i32, ptr %27, align 4, !dbg !2052
  %46 = load i32, ptr %28, align 4, !dbg !2053
  %47 = load i32, ptr %29, align 4, !dbg !2054
  %48 = load i32, ptr %30, align 4, !dbg !2055
  %49 = load i32, ptr %31, align 4, !dbg !2056
  %50 = load i32, ptr %32, align 4, !dbg !2057
  %51 = load ptr, ptr %33, align 8, !dbg !2058
  %52 = load i64, ptr %34, align 8, !dbg !2059
  %53 = load i64, ptr %35, align 8, !dbg !2060
  %54 = load i64, ptr %36, align 8, !dbg !2061
  %55 = call i32 @zipOpenNewFileInZip4_64(ptr noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef %40, i32 noundef %41, ptr noundef %42, i32 noundef %43, ptr noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %47, i32 noundef %48, i32 noundef %49, i32 noundef %50, ptr noundef %51, i64 noundef %52, i64 noundef %53, i64 noundef %54, i32 noundef 0), !dbg !2062
  ret i32 %55, !dbg !2063
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipOpenNewFileInZip3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, i64 noundef %15) #0 !dbg !2064 {
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca ptr, align 8
  %23 = alloca i32, align 4
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca ptr, align 8
  %32 = alloca i64, align 8
  store ptr %0, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2067, metadata !DIExpression()), !dbg !2068
  store ptr %1, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2069, metadata !DIExpression()), !dbg !2070
  store ptr %2, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2071, metadata !DIExpression()), !dbg !2072
  store ptr %3, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2073, metadata !DIExpression()), !dbg !2074
  store i32 %4, ptr %21, align 4
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2075, metadata !DIExpression()), !dbg !2076
  store ptr %5, ptr %22, align 8
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2077, metadata !DIExpression()), !dbg !2078
  store i32 %6, ptr %23, align 4
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2079, metadata !DIExpression()), !dbg !2080
  store ptr %7, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2081, metadata !DIExpression()), !dbg !2082
  store i32 %8, ptr %25, align 4
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2083, metadata !DIExpression()), !dbg !2084
  store i32 %9, ptr %26, align 4
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2085, metadata !DIExpression()), !dbg !2086
  store i32 %10, ptr %27, align 4
  call void @llvm.dbg.declare(metadata ptr %27, metadata !2087, metadata !DIExpression()), !dbg !2088
  store i32 %11, ptr %28, align 4
  call void @llvm.dbg.declare(metadata ptr %28, metadata !2089, metadata !DIExpression()), !dbg !2090
  store i32 %12, ptr %29, align 4
  call void @llvm.dbg.declare(metadata ptr %29, metadata !2091, metadata !DIExpression()), !dbg !2092
  store i32 %13, ptr %30, align 4
  call void @llvm.dbg.declare(metadata ptr %30, metadata !2093, metadata !DIExpression()), !dbg !2094
  store ptr %14, ptr %31, align 8
  call void @llvm.dbg.declare(metadata ptr %31, metadata !2095, metadata !DIExpression()), !dbg !2096
  store i64 %15, ptr %32, align 8
  call void @llvm.dbg.declare(metadata ptr %32, metadata !2097, metadata !DIExpression()), !dbg !2098
  %33 = load ptr, ptr %17, align 8, !dbg !2099
  %34 = load ptr, ptr %18, align 8, !dbg !2100
  %35 = load ptr, ptr %19, align 8, !dbg !2101
  %36 = load ptr, ptr %20, align 8, !dbg !2102
  %37 = load i32, ptr %21, align 4, !dbg !2103
  %38 = load ptr, ptr %22, align 8, !dbg !2104
  %39 = load i32, ptr %23, align 4, !dbg !2105
  %40 = load ptr, ptr %24, align 8, !dbg !2106
  %41 = load i32, ptr %25, align 4, !dbg !2107
  %42 = load i32, ptr %26, align 4, !dbg !2108
  %43 = load i32, ptr %27, align 4, !dbg !2109
  %44 = load i32, ptr %28, align 4, !dbg !2110
  %45 = load i32, ptr %29, align 4, !dbg !2111
  %46 = load i32, ptr %30, align 4, !dbg !2112
  %47 = load ptr, ptr %31, align 8, !dbg !2113
  %48 = load i64, ptr %32, align 8, !dbg !2114
  %49 = call i32 @zipOpenNewFileInZip4_64(ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36, i32 noundef %37, ptr noundef %38, i32 noundef %39, ptr noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %46, ptr noundef %47, i64 noundef %48, i64 noundef 0, i64 noundef 0, i32 noundef 0), !dbg !2115
  ret i32 %49, !dbg !2116
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipOpenNewFileInZip3_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %16) #0 !dbg !2117 {
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca ptr, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca ptr, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  store ptr %0, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2120, metadata !DIExpression()), !dbg !2121
  store ptr %1, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2122, metadata !DIExpression()), !dbg !2123
  store ptr %2, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2124, metadata !DIExpression()), !dbg !2125
  store ptr %3, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2126, metadata !DIExpression()), !dbg !2127
  store i32 %4, ptr %22, align 4
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2128, metadata !DIExpression()), !dbg !2129
  store ptr %5, ptr %23, align 8
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2130, metadata !DIExpression()), !dbg !2131
  store i32 %6, ptr %24, align 4
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2132, metadata !DIExpression()), !dbg !2133
  store ptr %7, ptr %25, align 8
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2134, metadata !DIExpression()), !dbg !2135
  store i32 %8, ptr %26, align 4
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2136, metadata !DIExpression()), !dbg !2137
  store i32 %9, ptr %27, align 4
  call void @llvm.dbg.declare(metadata ptr %27, metadata !2138, metadata !DIExpression()), !dbg !2139
  store i32 %10, ptr %28, align 4
  call void @llvm.dbg.declare(metadata ptr %28, metadata !2140, metadata !DIExpression()), !dbg !2141
  store i32 %11, ptr %29, align 4
  call void @llvm.dbg.declare(metadata ptr %29, metadata !2142, metadata !DIExpression()), !dbg !2143
  store i32 %12, ptr %30, align 4
  call void @llvm.dbg.declare(metadata ptr %30, metadata !2144, metadata !DIExpression()), !dbg !2145
  store i32 %13, ptr %31, align 4
  call void @llvm.dbg.declare(metadata ptr %31, metadata !2146, metadata !DIExpression()), !dbg !2147
  store ptr %14, ptr %32, align 8
  call void @llvm.dbg.declare(metadata ptr %32, metadata !2148, metadata !DIExpression()), !dbg !2149
  store i64 %15, ptr %33, align 8
  call void @llvm.dbg.declare(metadata ptr %33, metadata !2150, metadata !DIExpression()), !dbg !2151
  store i32 %16, ptr %34, align 4
  call void @llvm.dbg.declare(metadata ptr %34, metadata !2152, metadata !DIExpression()), !dbg !2153
  %35 = load ptr, ptr %18, align 8, !dbg !2154
  %36 = load ptr, ptr %19, align 8, !dbg !2155
  %37 = load ptr, ptr %20, align 8, !dbg !2156
  %38 = load ptr, ptr %21, align 8, !dbg !2157
  %39 = load i32, ptr %22, align 4, !dbg !2158
  %40 = load ptr, ptr %23, align 8, !dbg !2159
  %41 = load i32, ptr %24, align 4, !dbg !2160
  %42 = load ptr, ptr %25, align 8, !dbg !2161
  %43 = load i32, ptr %26, align 4, !dbg !2162
  %44 = load i32, ptr %27, align 4, !dbg !2163
  %45 = load i32, ptr %28, align 4, !dbg !2164
  %46 = load i32, ptr %29, align 4, !dbg !2165
  %47 = load i32, ptr %30, align 4, !dbg !2166
  %48 = load i32, ptr %31, align 4, !dbg !2167
  %49 = load ptr, ptr %32, align 8, !dbg !2168
  %50 = load i64, ptr %33, align 8, !dbg !2169
  %51 = load i32, ptr %34, align 4, !dbg !2170
  %52 = call i32 @zipOpenNewFileInZip4_64(ptr noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38, i32 noundef %39, ptr noundef %40, i32 noundef %41, ptr noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %47, i32 noundef %48, ptr noundef %49, i64 noundef %50, i64 noundef 0, i64 noundef 0, i32 noundef %51), !dbg !2171
  ret i32 %52, !dbg !2172
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipOpenNewFileInZip2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #0 !dbg !2173 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store ptr %0, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2176, metadata !DIExpression()), !dbg !2177
  store ptr %1, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2178, metadata !DIExpression()), !dbg !2179
  store ptr %2, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2180, metadata !DIExpression()), !dbg !2181
  store ptr %3, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2182, metadata !DIExpression()), !dbg !2183
  store i32 %4, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2184, metadata !DIExpression()), !dbg !2185
  store ptr %5, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2186, metadata !DIExpression()), !dbg !2187
  store i32 %6, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2188, metadata !DIExpression()), !dbg !2189
  store ptr %7, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2190, metadata !DIExpression()), !dbg !2191
  store i32 %8, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2192, metadata !DIExpression()), !dbg !2193
  store i32 %9, ptr %21, align 4
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2194, metadata !DIExpression()), !dbg !2195
  store i32 %10, ptr %22, align 4
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2196, metadata !DIExpression()), !dbg !2197
  %23 = load ptr, ptr %12, align 8, !dbg !2198
  %24 = load ptr, ptr %13, align 8, !dbg !2199
  %25 = load ptr, ptr %14, align 8, !dbg !2200
  %26 = load ptr, ptr %15, align 8, !dbg !2201
  %27 = load i32, ptr %16, align 4, !dbg !2202
  %28 = load ptr, ptr %17, align 8, !dbg !2203
  %29 = load i32, ptr %18, align 4, !dbg !2204
  %30 = load ptr, ptr %19, align 8, !dbg !2205
  %31 = load i32, ptr %20, align 4, !dbg !2206
  %32 = load i32, ptr %21, align 4, !dbg !2207
  %33 = load i32, ptr %22, align 4, !dbg !2208
  %34 = call i32 @zipOpenNewFileInZip4_64(ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, i32 noundef %27, ptr noundef %28, i32 noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 0), !dbg !2209
  ret i32 %34, !dbg !2210
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipOpenNewFileInZip2_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) #0 !dbg !2211 {
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store ptr %0, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2214, metadata !DIExpression()), !dbg !2215
  store ptr %1, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2216, metadata !DIExpression()), !dbg !2217
  store ptr %2, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2218, metadata !DIExpression()), !dbg !2219
  store ptr %3, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2220, metadata !DIExpression()), !dbg !2221
  store i32 %4, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2222, metadata !DIExpression()), !dbg !2223
  store ptr %5, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2224, metadata !DIExpression()), !dbg !2225
  store i32 %6, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2226, metadata !DIExpression()), !dbg !2227
  store ptr %7, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2228, metadata !DIExpression()), !dbg !2229
  store i32 %8, ptr %21, align 4
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2230, metadata !DIExpression()), !dbg !2231
  store i32 %9, ptr %22, align 4
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2232, metadata !DIExpression()), !dbg !2233
  store i32 %10, ptr %23, align 4
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2234, metadata !DIExpression()), !dbg !2235
  store i32 %11, ptr %24, align 4
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2236, metadata !DIExpression()), !dbg !2237
  %25 = load ptr, ptr %13, align 8, !dbg !2238
  %26 = load ptr, ptr %14, align 8, !dbg !2239
  %27 = load ptr, ptr %15, align 8, !dbg !2240
  %28 = load ptr, ptr %16, align 8, !dbg !2241
  %29 = load i32, ptr %17, align 4, !dbg !2242
  %30 = load ptr, ptr %18, align 8, !dbg !2243
  %31 = load i32, ptr %19, align 4, !dbg !2244
  %32 = load ptr, ptr %20, align 8, !dbg !2245
  %33 = load i32, ptr %21, align 4, !dbg !2246
  %34 = load i32, ptr %22, align 4, !dbg !2247
  %35 = load i32, ptr %23, align 4, !dbg !2248
  %36 = load i32, ptr %24, align 4, !dbg !2249
  %37 = call i32 @zipOpenNewFileInZip4_64(ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, i32 noundef %29, ptr noundef %30, i32 noundef %31, ptr noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef %36), !dbg !2250
  ret i32 %37, !dbg !2251
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipOpenNewFileInZip64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #0 !dbg !2252 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store ptr %0, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2253, metadata !DIExpression()), !dbg !2254
  store ptr %1, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2255, metadata !DIExpression()), !dbg !2256
  store ptr %2, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2257, metadata !DIExpression()), !dbg !2258
  store ptr %3, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2259, metadata !DIExpression()), !dbg !2260
  store i32 %4, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2261, metadata !DIExpression()), !dbg !2262
  store ptr %5, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2263, metadata !DIExpression()), !dbg !2264
  store i32 %6, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2265, metadata !DIExpression()), !dbg !2266
  store ptr %7, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2267, metadata !DIExpression()), !dbg !2268
  store i32 %8, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2269, metadata !DIExpression()), !dbg !2270
  store i32 %9, ptr %21, align 4
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2271, metadata !DIExpression()), !dbg !2272
  store i32 %10, ptr %22, align 4
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2273, metadata !DIExpression()), !dbg !2274
  %23 = load ptr, ptr %12, align 8, !dbg !2275
  %24 = load ptr, ptr %13, align 8, !dbg !2276
  %25 = load ptr, ptr %14, align 8, !dbg !2277
  %26 = load ptr, ptr %15, align 8, !dbg !2278
  %27 = load i32, ptr %16, align 4, !dbg !2279
  %28 = load ptr, ptr %17, align 8, !dbg !2280
  %29 = load i32, ptr %18, align 4, !dbg !2281
  %30 = load ptr, ptr %19, align 8, !dbg !2282
  %31 = load i32, ptr %20, align 4, !dbg !2283
  %32 = load i32, ptr %21, align 4, !dbg !2284
  %33 = load i32, ptr %22, align 4, !dbg !2285
  %34 = call i32 @zipOpenNewFileInZip4_64(ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, i32 noundef %27, ptr noundef %28, i32 noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef 0, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef %33), !dbg !2286
  ret i32 %34, !dbg !2287
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipOpenNewFileInZip(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) #0 !dbg !2288 {
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store ptr %0, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2291, metadata !DIExpression()), !dbg !2292
  store ptr %1, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2293, metadata !DIExpression()), !dbg !2294
  store ptr %2, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2295, metadata !DIExpression()), !dbg !2296
  store ptr %3, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2297, metadata !DIExpression()), !dbg !2298
  store i32 %4, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2299, metadata !DIExpression()), !dbg !2300
  store ptr %5, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2301, metadata !DIExpression()), !dbg !2302
  store i32 %6, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2303, metadata !DIExpression()), !dbg !2304
  store ptr %7, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2305, metadata !DIExpression()), !dbg !2306
  store i32 %8, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2307, metadata !DIExpression()), !dbg !2308
  store i32 %9, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2309, metadata !DIExpression()), !dbg !2310
  %21 = load ptr, ptr %11, align 8, !dbg !2311
  %22 = load ptr, ptr %12, align 8, !dbg !2312
  %23 = load ptr, ptr %13, align 8, !dbg !2313
  %24 = load ptr, ptr %14, align 8, !dbg !2314
  %25 = load i32, ptr %15, align 4, !dbg !2315
  %26 = load ptr, ptr %16, align 8, !dbg !2316
  %27 = load i32, ptr %17, align 4, !dbg !2317
  %28 = load ptr, ptr %18, align 8, !dbg !2318
  %29 = load i32, ptr %19, align 4, !dbg !2319
  %30 = load i32, ptr %20, align 4, !dbg !2320
  %31 = call i32 @zipOpenNewFileInZip4_64(ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, i32 noundef %25, ptr noundef %26, i32 noundef %27, ptr noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef 0, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 0), !dbg !2321
  ret i32 %31, !dbg !2322
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipWriteInFileInZip(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !2323 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2326, metadata !DIExpression()), !dbg !2327
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2328, metadata !DIExpression()), !dbg !2329
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2330, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2332, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2334, metadata !DIExpression()), !dbg !2335
  store i32 0, ptr %9, align 4, !dbg !2335
  %14 = load ptr, ptr %5, align 8, !dbg !2336
  %15 = icmp eq ptr %14, null, !dbg !2338
  br i1 %15, label %16, label %17, !dbg !2339

16:                                               ; preds = %3
  store i32 -102, ptr %4, align 4, !dbg !2340
  br label %238, !dbg !2340

17:                                               ; preds = %3
  %18 = load ptr, ptr %5, align 8, !dbg !2341
  store ptr %18, ptr %8, align 8, !dbg !2342
  %19 = load ptr, ptr %8, align 8, !dbg !2343
  %20 = getelementptr inbounds %struct.zip64_internal, ptr %19, i32 0, i32 3, !dbg !2345
  %21 = load i32, ptr %20, align 8, !dbg !2345
  %22 = icmp eq i32 %21, 0, !dbg !2346
  br i1 %22, label %23, label %24, !dbg !2347

23:                                               ; preds = %17
  store i32 -102, ptr %4, align 4, !dbg !2348
  br label %238, !dbg !2348

24:                                               ; preds = %17
  %25 = load ptr, ptr %8, align 8, !dbg !2349
  %26 = getelementptr inbounds %struct.zip64_internal, ptr %25, i32 0, i32 4, !dbg !2350
  %27 = getelementptr inbounds %struct.curfile64_info, ptr %26, i32 0, i32 13, !dbg !2351
  %28 = load i64, ptr %27, align 8, !dbg !2351
  %29 = load ptr, ptr %6, align 8, !dbg !2352
  %30 = load i32, ptr %7, align 4, !dbg !2353
  %31 = call i64 @crc32(i64 noundef %28, ptr noundef %29, i32 noundef %30), !dbg !2354
  %32 = load ptr, ptr %8, align 8, !dbg !2355
  %33 = getelementptr inbounds %struct.zip64_internal, ptr %32, i32 0, i32 4, !dbg !2356
  %34 = getelementptr inbounds %struct.curfile64_info, ptr %33, i32 0, i32 13, !dbg !2357
  store i64 %31, ptr %34, align 8, !dbg !2358
  %35 = load ptr, ptr %6, align 8, !dbg !2359
  %36 = load ptr, ptr %8, align 8, !dbg !2361
  %37 = getelementptr inbounds %struct.zip64_internal, ptr %36, i32 0, i32 4, !dbg !2362
  %38 = getelementptr inbounds %struct.curfile64_info, ptr %37, i32 0, i32 0, !dbg !2363
  %39 = getelementptr inbounds %struct.z_stream_s, ptr %38, i32 0, i32 0, !dbg !2364
  store ptr %35, ptr %39, align 8, !dbg !2365
  %40 = load i32, ptr %7, align 4, !dbg !2366
  %41 = load ptr, ptr %8, align 8, !dbg !2367
  %42 = getelementptr inbounds %struct.zip64_internal, ptr %41, i32 0, i32 4, !dbg !2368
  %43 = getelementptr inbounds %struct.curfile64_info, ptr %42, i32 0, i32 0, !dbg !2369
  %44 = getelementptr inbounds %struct.z_stream_s, ptr %43, i32 0, i32 1, !dbg !2370
  store i32 %40, ptr %44, align 8, !dbg !2371
  br label %45, !dbg !2372

45:                                               ; preds = %235, %24
  %46 = load i32, ptr %9, align 4, !dbg !2373
  %47 = icmp eq i32 %46, 0, !dbg !2374
  br i1 %47, label %48, label %55, !dbg !2375

48:                                               ; preds = %45
  %49 = load ptr, ptr %8, align 8, !dbg !2376
  %50 = getelementptr inbounds %struct.zip64_internal, ptr %49, i32 0, i32 4, !dbg !2377
  %51 = getelementptr inbounds %struct.curfile64_info, ptr %50, i32 0, i32 0, !dbg !2378
  %52 = getelementptr inbounds %struct.z_stream_s, ptr %51, i32 0, i32 1, !dbg !2379
  %53 = load i32, ptr %52, align 8, !dbg !2379
  %54 = icmp ugt i32 %53, 0, !dbg !2380
  br label %55

55:                                               ; preds = %48, %45
  %56 = phi i1 [ false, %45 ], [ %54, %48 ], !dbg !2381
  br i1 %56, label %57, label %236, !dbg !2372

57:                                               ; preds = %55
  %58 = load ptr, ptr %8, align 8, !dbg !2382
  %59 = getelementptr inbounds %struct.zip64_internal, ptr %58, i32 0, i32 4, !dbg !2385
  %60 = getelementptr inbounds %struct.curfile64_info, ptr %59, i32 0, i32 0, !dbg !2386
  %61 = getelementptr inbounds %struct.z_stream_s, ptr %60, i32 0, i32 4, !dbg !2387
  %62 = load i32, ptr %61, align 8, !dbg !2387
  %63 = icmp eq i32 %62, 0, !dbg !2388
  br i1 %63, label %64, label %82, !dbg !2389

64:                                               ; preds = %57
  %65 = load ptr, ptr %8, align 8, !dbg !2390
  %66 = call i32 @zip64FlushWriteBuffer(ptr noundef %65), !dbg !2393
  %67 = icmp eq i32 %66, -1, !dbg !2394
  br i1 %67, label %68, label %69, !dbg !2395

68:                                               ; preds = %64
  store i32 -1, ptr %9, align 4, !dbg !2396
  br label %69, !dbg !2397

69:                                               ; preds = %68, %64
  %70 = load ptr, ptr %8, align 8, !dbg !2398
  %71 = getelementptr inbounds %struct.zip64_internal, ptr %70, i32 0, i32 4, !dbg !2399
  %72 = getelementptr inbounds %struct.curfile64_info, ptr %71, i32 0, i32 0, !dbg !2400
  %73 = getelementptr inbounds %struct.z_stream_s, ptr %72, i32 0, i32 4, !dbg !2401
  store i32 65536, ptr %73, align 8, !dbg !2402
  %74 = load ptr, ptr %8, align 8, !dbg !2403
  %75 = getelementptr inbounds %struct.zip64_internal, ptr %74, i32 0, i32 4, !dbg !2404
  %76 = getelementptr inbounds %struct.curfile64_info, ptr %75, i32 0, i32 11, !dbg !2405
  %77 = getelementptr inbounds [65536 x i8], ptr %76, i64 0, i64 0, !dbg !2403
  %78 = load ptr, ptr %8, align 8, !dbg !2406
  %79 = getelementptr inbounds %struct.zip64_internal, ptr %78, i32 0, i32 4, !dbg !2407
  %80 = getelementptr inbounds %struct.curfile64_info, ptr %79, i32 0, i32 0, !dbg !2408
  %81 = getelementptr inbounds %struct.z_stream_s, ptr %80, i32 0, i32 3, !dbg !2409
  store ptr %77, ptr %81, align 8, !dbg !2410
  br label %82, !dbg !2411

82:                                               ; preds = %69, %57
  %83 = load i32, ptr %9, align 4, !dbg !2412
  %84 = icmp ne i32 %83, 0, !dbg !2414
  br i1 %84, label %85, label %86, !dbg !2415

85:                                               ; preds = %82
  br label %236, !dbg !2416

86:                                               ; preds = %82
  %87 = load ptr, ptr %8, align 8, !dbg !2417
  %88 = getelementptr inbounds %struct.zip64_internal, ptr %87, i32 0, i32 4, !dbg !2419
  %89 = getelementptr inbounds %struct.curfile64_info, ptr %88, i32 0, i32 9, !dbg !2420
  %90 = load i32, ptr %89, align 8, !dbg !2420
  %91 = icmp eq i32 %90, 8, !dbg !2421
  br i1 %91, label %92, label %132, !dbg !2422

92:                                               ; preds = %86
  %93 = load ptr, ptr %8, align 8, !dbg !2423
  %94 = getelementptr inbounds %struct.zip64_internal, ptr %93, i32 0, i32 4, !dbg !2424
  %95 = getelementptr inbounds %struct.curfile64_info, ptr %94, i32 0, i32 10, !dbg !2425
  %96 = load i32, ptr %95, align 4, !dbg !2425
  %97 = icmp ne i32 %96, 0, !dbg !2423
  br i1 %97, label %132, label %98, !dbg !2426

98:                                               ; preds = %92
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2427, metadata !DIExpression()), !dbg !2429
  %99 = load ptr, ptr %8, align 8, !dbg !2430
  %100 = getelementptr inbounds %struct.zip64_internal, ptr %99, i32 0, i32 4, !dbg !2431
  %101 = getelementptr inbounds %struct.curfile64_info, ptr %100, i32 0, i32 0, !dbg !2432
  %102 = getelementptr inbounds %struct.z_stream_s, ptr %101, i32 0, i32 5, !dbg !2433
  %103 = load i64, ptr %102, align 8, !dbg !2433
  store i64 %103, ptr %10, align 8, !dbg !2429
  %104 = load ptr, ptr %8, align 8, !dbg !2434
  %105 = getelementptr inbounds %struct.zip64_internal, ptr %104, i32 0, i32 4, !dbg !2435
  %106 = getelementptr inbounds %struct.curfile64_info, ptr %105, i32 0, i32 0, !dbg !2436
  %107 = call i32 @deflate(ptr noundef %106, i32 noundef 0), !dbg !2437
  store i32 %107, ptr %9, align 4, !dbg !2438
  %108 = load i64, ptr %10, align 8, !dbg !2439
  %109 = load ptr, ptr %8, align 8, !dbg !2441
  %110 = getelementptr inbounds %struct.zip64_internal, ptr %109, i32 0, i32 4, !dbg !2442
  %111 = getelementptr inbounds %struct.curfile64_info, ptr %110, i32 0, i32 0, !dbg !2443
  %112 = getelementptr inbounds %struct.z_stream_s, ptr %111, i32 0, i32 5, !dbg !2444
  %113 = load i64, ptr %112, align 8, !dbg !2444
  %114 = icmp ugt i64 %108, %113, !dbg !2445
  br i1 %114, label %115, label %118, !dbg !2446

115:                                              ; preds = %98
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2447, metadata !DIExpression()), !dbg !2449
  store i32 0, ptr %11, align 4, !dbg !2449
  %116 = load i32, ptr %11, align 4, !dbg !2450
  %117 = add nsw i32 %116, 1, !dbg !2450
  store i32 %117, ptr %11, align 4, !dbg !2450
  br label %118, !dbg !2451

118:                                              ; preds = %115, %98
  %119 = load ptr, ptr %8, align 8, !dbg !2452
  %120 = getelementptr inbounds %struct.zip64_internal, ptr %119, i32 0, i32 4, !dbg !2453
  %121 = getelementptr inbounds %struct.curfile64_info, ptr %120, i32 0, i32 0, !dbg !2454
  %122 = getelementptr inbounds %struct.z_stream_s, ptr %121, i32 0, i32 5, !dbg !2455
  %123 = load i64, ptr %122, align 8, !dbg !2455
  %124 = load i64, ptr %10, align 8, !dbg !2456
  %125 = sub i64 %123, %124, !dbg !2457
  %126 = trunc i64 %125 to i32, !dbg !2458
  %127 = load ptr, ptr %8, align 8, !dbg !2459
  %128 = getelementptr inbounds %struct.zip64_internal, ptr %127, i32 0, i32 4, !dbg !2460
  %129 = getelementptr inbounds %struct.curfile64_info, ptr %128, i32 0, i32 2, !dbg !2461
  %130 = load i32, ptr %129, align 4, !dbg !2462
  %131 = add i32 %130, %126, !dbg !2462
  store i32 %131, ptr %129, align 4, !dbg !2462
  br label %235, !dbg !2463

132:                                              ; preds = %92, %86
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2464, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2467, metadata !DIExpression()), !dbg !2468
  %133 = load ptr, ptr %8, align 8, !dbg !2469
  %134 = getelementptr inbounds %struct.zip64_internal, ptr %133, i32 0, i32 4, !dbg !2471
  %135 = getelementptr inbounds %struct.curfile64_info, ptr %134, i32 0, i32 0, !dbg !2472
  %136 = getelementptr inbounds %struct.z_stream_s, ptr %135, i32 0, i32 1, !dbg !2473
  %137 = load i32, ptr %136, align 8, !dbg !2473
  %138 = load ptr, ptr %8, align 8, !dbg !2474
  %139 = getelementptr inbounds %struct.zip64_internal, ptr %138, i32 0, i32 4, !dbg !2475
  %140 = getelementptr inbounds %struct.curfile64_info, ptr %139, i32 0, i32 0, !dbg !2476
  %141 = getelementptr inbounds %struct.z_stream_s, ptr %140, i32 0, i32 4, !dbg !2477
  %142 = load i32, ptr %141, align 8, !dbg !2477
  %143 = icmp ult i32 %137, %142, !dbg !2478
  br i1 %143, label %144, label %150, !dbg !2479

144:                                              ; preds = %132
  %145 = load ptr, ptr %8, align 8, !dbg !2480
  %146 = getelementptr inbounds %struct.zip64_internal, ptr %145, i32 0, i32 4, !dbg !2481
  %147 = getelementptr inbounds %struct.curfile64_info, ptr %146, i32 0, i32 0, !dbg !2482
  %148 = getelementptr inbounds %struct.z_stream_s, ptr %147, i32 0, i32 1, !dbg !2483
  %149 = load i32, ptr %148, align 8, !dbg !2483
  store i32 %149, ptr %12, align 4, !dbg !2484
  br label %156, !dbg !2485

150:                                              ; preds = %132
  %151 = load ptr, ptr %8, align 8, !dbg !2486
  %152 = getelementptr inbounds %struct.zip64_internal, ptr %151, i32 0, i32 4, !dbg !2487
  %153 = getelementptr inbounds %struct.curfile64_info, ptr %152, i32 0, i32 0, !dbg !2488
  %154 = getelementptr inbounds %struct.z_stream_s, ptr %153, i32 0, i32 4, !dbg !2489
  %155 = load i32, ptr %154, align 8, !dbg !2489
  store i32 %155, ptr %12, align 4, !dbg !2490
  br label %156

156:                                              ; preds = %150, %144
  store i32 0, ptr %13, align 4, !dbg !2491
  br label %157, !dbg !2493

157:                                              ; preds = %179, %156
  %158 = load i32, ptr %13, align 4, !dbg !2494
  %159 = load i32, ptr %12, align 4, !dbg !2496
  %160 = icmp ult i32 %158, %159, !dbg !2497
  br i1 %160, label %161, label %182, !dbg !2498

161:                                              ; preds = %157
  %162 = load ptr, ptr %8, align 8, !dbg !2499
  %163 = getelementptr inbounds %struct.zip64_internal, ptr %162, i32 0, i32 4, !dbg !2500
  %164 = getelementptr inbounds %struct.curfile64_info, ptr %163, i32 0, i32 0, !dbg !2501
  %165 = getelementptr inbounds %struct.z_stream_s, ptr %164, i32 0, i32 0, !dbg !2502
  %166 = load ptr, ptr %165, align 8, !dbg !2502
  %167 = load i32, ptr %13, align 4, !dbg !2503
  %168 = zext i32 %167 to i64, !dbg !2504
  %169 = getelementptr inbounds i8, ptr %166, i64 %168, !dbg !2504
  %170 = load i8, ptr %169, align 1, !dbg !2505
  %171 = load ptr, ptr %8, align 8, !dbg !2506
  %172 = getelementptr inbounds %struct.zip64_internal, ptr %171, i32 0, i32 4, !dbg !2507
  %173 = getelementptr inbounds %struct.curfile64_info, ptr %172, i32 0, i32 0, !dbg !2508
  %174 = getelementptr inbounds %struct.z_stream_s, ptr %173, i32 0, i32 3, !dbg !2509
  %175 = load ptr, ptr %174, align 8, !dbg !2509
  %176 = load i32, ptr %13, align 4, !dbg !2510
  %177 = zext i32 %176 to i64, !dbg !2511
  %178 = getelementptr inbounds i8, ptr %175, i64 %177, !dbg !2511
  store i8 %170, ptr %178, align 1, !dbg !2512
  br label %179, !dbg !2513

179:                                              ; preds = %161
  %180 = load i32, ptr %13, align 4, !dbg !2514
  %181 = add i32 %180, 1, !dbg !2514
  store i32 %181, ptr %13, align 4, !dbg !2514
  br label %157, !dbg !2515, !llvm.loop !2516

182:                                              ; preds = %157
  %183 = load i32, ptr %12, align 4, !dbg !2518
  %184 = load ptr, ptr %8, align 8, !dbg !2520
  %185 = getelementptr inbounds %struct.zip64_internal, ptr %184, i32 0, i32 4, !dbg !2521
  %186 = getelementptr inbounds %struct.curfile64_info, ptr %185, i32 0, i32 0, !dbg !2522
  %187 = getelementptr inbounds %struct.z_stream_s, ptr %186, i32 0, i32 1, !dbg !2523
  %188 = load i32, ptr %187, align 8, !dbg !2524
  %189 = sub i32 %188, %183, !dbg !2524
  store i32 %189, ptr %187, align 8, !dbg !2524
  %190 = load i32, ptr %12, align 4, !dbg !2525
  %191 = load ptr, ptr %8, align 8, !dbg !2526
  %192 = getelementptr inbounds %struct.zip64_internal, ptr %191, i32 0, i32 4, !dbg !2527
  %193 = getelementptr inbounds %struct.curfile64_info, ptr %192, i32 0, i32 0, !dbg !2528
  %194 = getelementptr inbounds %struct.z_stream_s, ptr %193, i32 0, i32 4, !dbg !2529
  %195 = load i32, ptr %194, align 8, !dbg !2530
  %196 = sub i32 %195, %190, !dbg !2530
  store i32 %196, ptr %194, align 8, !dbg !2530
  %197 = load i32, ptr %12, align 4, !dbg !2531
  %198 = load ptr, ptr %8, align 8, !dbg !2532
  %199 = getelementptr inbounds %struct.zip64_internal, ptr %198, i32 0, i32 4, !dbg !2533
  %200 = getelementptr inbounds %struct.curfile64_info, ptr %199, i32 0, i32 0, !dbg !2534
  %201 = getelementptr inbounds %struct.z_stream_s, ptr %200, i32 0, i32 0, !dbg !2535
  %202 = load ptr, ptr %201, align 8, !dbg !2536
  %203 = zext i32 %197 to i64, !dbg !2536
  %204 = getelementptr inbounds i8, ptr %202, i64 %203, !dbg !2536
  store ptr %204, ptr %201, align 8, !dbg !2536
  %205 = load i32, ptr %12, align 4, !dbg !2537
  %206 = load ptr, ptr %8, align 8, !dbg !2538
  %207 = getelementptr inbounds %struct.zip64_internal, ptr %206, i32 0, i32 4, !dbg !2539
  %208 = getelementptr inbounds %struct.curfile64_info, ptr %207, i32 0, i32 0, !dbg !2540
  %209 = getelementptr inbounds %struct.z_stream_s, ptr %208, i32 0, i32 3, !dbg !2541
  %210 = load ptr, ptr %209, align 8, !dbg !2542
  %211 = zext i32 %205 to i64, !dbg !2542
  %212 = getelementptr inbounds i8, ptr %210, i64 %211, !dbg !2542
  store ptr %212, ptr %209, align 8, !dbg !2542
  %213 = load i32, ptr %12, align 4, !dbg !2543
  %214 = zext i32 %213 to i64, !dbg !2543
  %215 = load ptr, ptr %8, align 8, !dbg !2544
  %216 = getelementptr inbounds %struct.zip64_internal, ptr %215, i32 0, i32 4, !dbg !2545
  %217 = getelementptr inbounds %struct.curfile64_info, ptr %216, i32 0, i32 0, !dbg !2546
  %218 = getelementptr inbounds %struct.z_stream_s, ptr %217, i32 0, i32 2, !dbg !2547
  %219 = load i64, ptr %218, align 8, !dbg !2548
  %220 = add i64 %219, %214, !dbg !2548
  store i64 %220, ptr %218, align 8, !dbg !2548
  %221 = load i32, ptr %12, align 4, !dbg !2549
  %222 = zext i32 %221 to i64, !dbg !2549
  %223 = load ptr, ptr %8, align 8, !dbg !2550
  %224 = getelementptr inbounds %struct.zip64_internal, ptr %223, i32 0, i32 4, !dbg !2551
  %225 = getelementptr inbounds %struct.curfile64_info, ptr %224, i32 0, i32 0, !dbg !2552
  %226 = getelementptr inbounds %struct.z_stream_s, ptr %225, i32 0, i32 5, !dbg !2553
  %227 = load i64, ptr %226, align 8, !dbg !2554
  %228 = add i64 %227, %222, !dbg !2554
  store i64 %228, ptr %226, align 8, !dbg !2554
  %229 = load i32, ptr %12, align 4, !dbg !2555
  %230 = load ptr, ptr %8, align 8, !dbg !2556
  %231 = getelementptr inbounds %struct.zip64_internal, ptr %230, i32 0, i32 4, !dbg !2557
  %232 = getelementptr inbounds %struct.curfile64_info, ptr %231, i32 0, i32 2, !dbg !2558
  %233 = load i32, ptr %232, align 4, !dbg !2559
  %234 = add i32 %233, %229, !dbg !2559
  store i32 %234, ptr %232, align 4, !dbg !2559
  br label %235

235:                                              ; preds = %182, %118
  br label %45, !dbg !2372, !llvm.loop !2560

236:                                              ; preds = %85, %55
  %237 = load i32, ptr %9, align 4, !dbg !2562
  store i32 %237, ptr %4, align 4, !dbg !2563
  br label %238, !dbg !2563

238:                                              ; preds = %236, %23, %16
  %239 = load i32, ptr %4, align 4, !dbg !2564
  ret i32 %239, !dbg !2564
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip64FlushWriteBuffer(ptr noundef %0) #0 !dbg !2565 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2566, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2568, metadata !DIExpression()), !dbg !2569
  store i32 0, ptr %3, align 4, !dbg !2569
  %6 = load ptr, ptr %2, align 8, !dbg !2570
  %7 = getelementptr inbounds %struct.zip64_internal, ptr %6, i32 0, i32 4, !dbg !2572
  %8 = getelementptr inbounds %struct.curfile64_info, ptr %7, i32 0, i32 14, !dbg !2573
  %9 = load i32, ptr %8, align 8, !dbg !2573
  %10 = icmp ne i32 %9, 0, !dbg !2574
  br i1 %10, label %11, label %67, !dbg !2575

11:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2576, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2579, metadata !DIExpression()), !dbg !2580
  store i32 0, ptr %4, align 4, !dbg !2581
  br label %12, !dbg !2583

12:                                               ; preds = %63, %11
  %13 = load i32, ptr %4, align 4, !dbg !2584
  %14 = load ptr, ptr %2, align 8, !dbg !2586
  %15 = getelementptr inbounds %struct.zip64_internal, ptr %14, i32 0, i32 4, !dbg !2587
  %16 = getelementptr inbounds %struct.curfile64_info, ptr %15, i32 0, i32 2, !dbg !2588
  %17 = load i32, ptr %16, align 4, !dbg !2588
  %18 = icmp ult i32 %13, %17, !dbg !2589
  br i1 %18, label %19, label %66, !dbg !2590

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 8, !dbg !2591
  %21 = getelementptr inbounds %struct.zip64_internal, ptr %20, i32 0, i32 4, !dbg !2591
  %22 = getelementptr inbounds %struct.curfile64_info, ptr %21, i32 0, i32 19, !dbg !2591
  %23 = getelementptr inbounds [3 x i64], ptr %22, i64 0, i64 0, !dbg !2591
  %24 = load ptr, ptr %2, align 8, !dbg !2591
  %25 = getelementptr inbounds %struct.zip64_internal, ptr %24, i32 0, i32 4, !dbg !2591
  %26 = getelementptr inbounds %struct.curfile64_info, ptr %25, i32 0, i32 20, !dbg !2591
  %27 = load ptr, ptr %26, align 8, !dbg !2591
  %28 = call i32 @decrypt_byte(ptr noundef %23, ptr noundef %27), !dbg !2591
  store i32 %28, ptr %5, align 4, !dbg !2591
  %29 = load ptr, ptr %2, align 8, !dbg !2591
  %30 = getelementptr inbounds %struct.zip64_internal, ptr %29, i32 0, i32 4, !dbg !2591
  %31 = getelementptr inbounds %struct.curfile64_info, ptr %30, i32 0, i32 19, !dbg !2591
  %32 = getelementptr inbounds [3 x i64], ptr %31, i64 0, i64 0, !dbg !2591
  %33 = load ptr, ptr %2, align 8, !dbg !2591
  %34 = getelementptr inbounds %struct.zip64_internal, ptr %33, i32 0, i32 4, !dbg !2591
  %35 = getelementptr inbounds %struct.curfile64_info, ptr %34, i32 0, i32 20, !dbg !2591
  %36 = load ptr, ptr %35, align 8, !dbg !2591
  %37 = load ptr, ptr %2, align 8, !dbg !2591
  %38 = getelementptr inbounds %struct.zip64_internal, ptr %37, i32 0, i32 4, !dbg !2591
  %39 = getelementptr inbounds %struct.curfile64_info, ptr %38, i32 0, i32 11, !dbg !2591
  %40 = load i32, ptr %4, align 4, !dbg !2591
  %41 = zext i32 %40 to i64, !dbg !2591
  %42 = getelementptr inbounds [65536 x i8], ptr %39, i64 0, i64 %41, !dbg !2591
  %43 = load i8, ptr %42, align 1, !dbg !2591
  %44 = zext i8 %43 to i32, !dbg !2591
  %45 = call i32 @update_keys(ptr noundef %32, ptr noundef %36, i32 noundef %44), !dbg !2591
  %46 = load i32, ptr %5, align 4, !dbg !2591
  %47 = load ptr, ptr %2, align 8, !dbg !2591
  %48 = getelementptr inbounds %struct.zip64_internal, ptr %47, i32 0, i32 4, !dbg !2591
  %49 = getelementptr inbounds %struct.curfile64_info, ptr %48, i32 0, i32 11, !dbg !2591
  %50 = load i32, ptr %4, align 4, !dbg !2591
  %51 = zext i32 %50 to i64, !dbg !2591
  %52 = getelementptr inbounds [65536 x i8], ptr %49, i64 0, i64 %51, !dbg !2591
  %53 = load i8, ptr %52, align 1, !dbg !2591
  %54 = zext i8 %53 to i32, !dbg !2591
  %55 = xor i32 %46, %54, !dbg !2591
  %56 = trunc i32 %55 to i8, !dbg !2591
  %57 = load ptr, ptr %2, align 8, !dbg !2592
  %58 = getelementptr inbounds %struct.zip64_internal, ptr %57, i32 0, i32 4, !dbg !2593
  %59 = getelementptr inbounds %struct.curfile64_info, ptr %58, i32 0, i32 11, !dbg !2594
  %60 = load i32, ptr %4, align 4, !dbg !2595
  %61 = zext i32 %60 to i64, !dbg !2592
  %62 = getelementptr inbounds [65536 x i8], ptr %59, i64 0, i64 %61, !dbg !2592
  store i8 %56, ptr %62, align 1, !dbg !2596
  br label %63, !dbg !2592

63:                                               ; preds = %19
  %64 = load i32, ptr %4, align 4, !dbg !2597
  %65 = add i32 %64, 1, !dbg !2597
  store i32 %65, ptr %4, align 4, !dbg !2597
  br label %12, !dbg !2598, !llvm.loop !2599

66:                                               ; preds = %12
  br label %67, !dbg !2601

67:                                               ; preds = %66, %1
  %68 = load ptr, ptr %2, align 8, !dbg !2602
  %69 = getelementptr inbounds %struct.zip64_internal, ptr %68, i32 0, i32 0, !dbg !2602
  %70 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %69, i32 0, i32 0, !dbg !2602
  %71 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %70, i32 0, i32 2, !dbg !2602
  %72 = load ptr, ptr %71, align 8, !dbg !2602
  %73 = load ptr, ptr %2, align 8, !dbg !2602
  %74 = getelementptr inbounds %struct.zip64_internal, ptr %73, i32 0, i32 0, !dbg !2602
  %75 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %74, i32 0, i32 0, !dbg !2602
  %76 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %75, i32 0, i32 8, !dbg !2602
  %77 = load ptr, ptr %76, align 8, !dbg !2602
  %78 = load ptr, ptr %2, align 8, !dbg !2602
  %79 = getelementptr inbounds %struct.zip64_internal, ptr %78, i32 0, i32 1, !dbg !2602
  %80 = load ptr, ptr %79, align 8, !dbg !2602
  %81 = load ptr, ptr %2, align 8, !dbg !2602
  %82 = getelementptr inbounds %struct.zip64_internal, ptr %81, i32 0, i32 4, !dbg !2602
  %83 = getelementptr inbounds %struct.curfile64_info, ptr %82, i32 0, i32 11, !dbg !2602
  %84 = getelementptr inbounds [65536 x i8], ptr %83, i64 0, i64 0, !dbg !2602
  %85 = load ptr, ptr %2, align 8, !dbg !2602
  %86 = getelementptr inbounds %struct.zip64_internal, ptr %85, i32 0, i32 4, !dbg !2602
  %87 = getelementptr inbounds %struct.curfile64_info, ptr %86, i32 0, i32 2, !dbg !2602
  %88 = load i32, ptr %87, align 4, !dbg !2602
  %89 = zext i32 %88 to i64, !dbg !2602
  %90 = call i64 %72(ptr noundef %77, ptr noundef %80, ptr noundef %84, i64 noundef %89), !dbg !2602
  %91 = load ptr, ptr %2, align 8, !dbg !2604
  %92 = getelementptr inbounds %struct.zip64_internal, ptr %91, i32 0, i32 4, !dbg !2605
  %93 = getelementptr inbounds %struct.curfile64_info, ptr %92, i32 0, i32 2, !dbg !2606
  %94 = load i32, ptr %93, align 4, !dbg !2606
  %95 = zext i32 %94 to i64, !dbg !2604
  %96 = icmp ne i64 %90, %95, !dbg !2607
  br i1 %96, label %97, label %98, !dbg !2608

97:                                               ; preds = %67
  store i32 -1, ptr %3, align 4, !dbg !2609
  br label %98, !dbg !2610

98:                                               ; preds = %97, %67
  %99 = load ptr, ptr %2, align 8, !dbg !2611
  %100 = getelementptr inbounds %struct.zip64_internal, ptr %99, i32 0, i32 4, !dbg !2612
  %101 = getelementptr inbounds %struct.curfile64_info, ptr %100, i32 0, i32 2, !dbg !2613
  %102 = load i32, ptr %101, align 4, !dbg !2613
  %103 = zext i32 %102 to i64, !dbg !2611
  %104 = load ptr, ptr %2, align 8, !dbg !2614
  %105 = getelementptr inbounds %struct.zip64_internal, ptr %104, i32 0, i32 4, !dbg !2615
  %106 = getelementptr inbounds %struct.curfile64_info, ptr %105, i32 0, i32 17, !dbg !2616
  %107 = load i64, ptr %106, align 8, !dbg !2617
  %108 = add i64 %107, %103, !dbg !2617
  store i64 %108, ptr %106, align 8, !dbg !2617
  %109 = load ptr, ptr %2, align 8, !dbg !2618
  %110 = getelementptr inbounds %struct.zip64_internal, ptr %109, i32 0, i32 4, !dbg !2620
  %111 = getelementptr inbounds %struct.curfile64_info, ptr %110, i32 0, i32 0, !dbg !2621
  %112 = getelementptr inbounds %struct.z_stream_s, ptr %111, i32 0, i32 2, !dbg !2622
  %113 = load i64, ptr %112, align 8, !dbg !2622
  %114 = load ptr, ptr %2, align 8, !dbg !2623
  %115 = getelementptr inbounds %struct.zip64_internal, ptr %114, i32 0, i32 4, !dbg !2624
  %116 = getelementptr inbounds %struct.curfile64_info, ptr %115, i32 0, i32 18, !dbg !2625
  %117 = load i64, ptr %116, align 8, !dbg !2626
  %118 = add i64 %117, %113, !dbg !2626
  store i64 %118, ptr %116, align 8, !dbg !2626
  %119 = load ptr, ptr %2, align 8, !dbg !2627
  %120 = getelementptr inbounds %struct.zip64_internal, ptr %119, i32 0, i32 4, !dbg !2628
  %121 = getelementptr inbounds %struct.curfile64_info, ptr %120, i32 0, i32 0, !dbg !2629
  %122 = getelementptr inbounds %struct.z_stream_s, ptr %121, i32 0, i32 2, !dbg !2630
  store i64 0, ptr %122, align 8, !dbg !2631
  %123 = load ptr, ptr %2, align 8, !dbg !2632
  %124 = getelementptr inbounds %struct.zip64_internal, ptr %123, i32 0, i32 4, !dbg !2633
  %125 = getelementptr inbounds %struct.curfile64_info, ptr %124, i32 0, i32 2, !dbg !2634
  store i32 0, ptr %125, align 4, !dbg !2635
  %126 = load i32, ptr %3, align 4, !dbg !2636
  ret i32 %126, !dbg !2637
}

declare i32 @deflate(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipCloseFileInZipRaw(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 !dbg !2638 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2641, metadata !DIExpression()), !dbg !2642
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2643, metadata !DIExpression()), !dbg !2644
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2645, metadata !DIExpression()), !dbg !2646
  %7 = load ptr, ptr %4, align 8, !dbg !2647
  %8 = load i64, ptr %5, align 8, !dbg !2648
  %9 = load i64, ptr %6, align 8, !dbg !2649
  %10 = call i32 @zipCloseFileInZipRaw64(ptr noundef %7, i64 noundef %8, i64 noundef %9), !dbg !2650
  ret i32 %10, !dbg !2651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipCloseFileInZipRaw64(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 !dbg !2652 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2655, metadata !DIExpression()), !dbg !2656
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2657, metadata !DIExpression()), !dbg !2658
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2659, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2661, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2663, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2665, metadata !DIExpression()), !dbg !2666
  store i64 4294967295, ptr %10, align 8, !dbg !2666
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2667, metadata !DIExpression()), !dbg !2668
  store i16 0, ptr %11, align 2, !dbg !2668
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2669, metadata !DIExpression()), !dbg !2670
  store i32 0, ptr %12, align 4, !dbg !2670
  %17 = load ptr, ptr %5, align 8, !dbg !2671
  %18 = icmp eq ptr %17, null, !dbg !2673
  br i1 %18, label %19, label %20, !dbg !2674

19:                                               ; preds = %3
  store i32 -102, ptr %4, align 4, !dbg !2675
  br label %528, !dbg !2675

20:                                               ; preds = %3
  %21 = load ptr, ptr %5, align 8, !dbg !2676
  store ptr %21, ptr %8, align 8, !dbg !2677
  %22 = load ptr, ptr %8, align 8, !dbg !2678
  %23 = getelementptr inbounds %struct.zip64_internal, ptr %22, i32 0, i32 3, !dbg !2680
  %24 = load i32, ptr %23, align 8, !dbg !2680
  %25 = icmp eq i32 %24, 0, !dbg !2681
  br i1 %25, label %26, label %27, !dbg !2682

26:                                               ; preds = %20
  store i32 -102, ptr %4, align 4, !dbg !2683
  br label %528, !dbg !2683

27:                                               ; preds = %20
  %28 = load ptr, ptr %8, align 8, !dbg !2684
  %29 = getelementptr inbounds %struct.zip64_internal, ptr %28, i32 0, i32 4, !dbg !2685
  %30 = getelementptr inbounds %struct.curfile64_info, ptr %29, i32 0, i32 0, !dbg !2686
  %31 = getelementptr inbounds %struct.z_stream_s, ptr %30, i32 0, i32 1, !dbg !2687
  store i32 0, ptr %31, align 8, !dbg !2688
  %32 = load ptr, ptr %8, align 8, !dbg !2689
  %33 = getelementptr inbounds %struct.zip64_internal, ptr %32, i32 0, i32 4, !dbg !2691
  %34 = getelementptr inbounds %struct.curfile64_info, ptr %33, i32 0, i32 9, !dbg !2692
  %35 = load i32, ptr %34, align 8, !dbg !2692
  %36 = icmp eq i32 %35, 8, !dbg !2693
  br i1 %36, label %37, label %96, !dbg !2694

37:                                               ; preds = %27
  %38 = load ptr, ptr %8, align 8, !dbg !2695
  %39 = getelementptr inbounds %struct.zip64_internal, ptr %38, i32 0, i32 4, !dbg !2696
  %40 = getelementptr inbounds %struct.curfile64_info, ptr %39, i32 0, i32 10, !dbg !2697
  %41 = load i32, ptr %40, align 4, !dbg !2697
  %42 = icmp ne i32 %41, 0, !dbg !2695
  br i1 %42, label %96, label %43, !dbg !2698

43:                                               ; preds = %37
  br label %44, !dbg !2699

44:                                               ; preds = %72, %43
  %45 = load i32, ptr %12, align 4, !dbg !2701
  %46 = icmp eq i32 %45, 0, !dbg !2702
  br i1 %46, label %47, label %95, !dbg !2699

47:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2703, metadata !DIExpression()), !dbg !2705
  %48 = load ptr, ptr %8, align 8, !dbg !2706
  %49 = getelementptr inbounds %struct.zip64_internal, ptr %48, i32 0, i32 4, !dbg !2708
  %50 = getelementptr inbounds %struct.curfile64_info, ptr %49, i32 0, i32 0, !dbg !2709
  %51 = getelementptr inbounds %struct.z_stream_s, ptr %50, i32 0, i32 4, !dbg !2710
  %52 = load i32, ptr %51, align 8, !dbg !2710
  %53 = icmp eq i32 %52, 0, !dbg !2711
  br i1 %53, label %54, label %72, !dbg !2712

54:                                               ; preds = %47
  %55 = load ptr, ptr %8, align 8, !dbg !2713
  %56 = call i32 @zip64FlushWriteBuffer(ptr noundef %55), !dbg !2716
  %57 = icmp eq i32 %56, -1, !dbg !2717
  br i1 %57, label %58, label %59, !dbg !2718

58:                                               ; preds = %54
  store i32 -1, ptr %12, align 4, !dbg !2719
  br label %59, !dbg !2720

59:                                               ; preds = %58, %54
  %60 = load ptr, ptr %8, align 8, !dbg !2721
  %61 = getelementptr inbounds %struct.zip64_internal, ptr %60, i32 0, i32 4, !dbg !2722
  %62 = getelementptr inbounds %struct.curfile64_info, ptr %61, i32 0, i32 0, !dbg !2723
  %63 = getelementptr inbounds %struct.z_stream_s, ptr %62, i32 0, i32 4, !dbg !2724
  store i32 65536, ptr %63, align 8, !dbg !2725
  %64 = load ptr, ptr %8, align 8, !dbg !2726
  %65 = getelementptr inbounds %struct.zip64_internal, ptr %64, i32 0, i32 4, !dbg !2727
  %66 = getelementptr inbounds %struct.curfile64_info, ptr %65, i32 0, i32 11, !dbg !2728
  %67 = getelementptr inbounds [65536 x i8], ptr %66, i64 0, i64 0, !dbg !2726
  %68 = load ptr, ptr %8, align 8, !dbg !2729
  %69 = getelementptr inbounds %struct.zip64_internal, ptr %68, i32 0, i32 4, !dbg !2730
  %70 = getelementptr inbounds %struct.curfile64_info, ptr %69, i32 0, i32 0, !dbg !2731
  %71 = getelementptr inbounds %struct.z_stream_s, ptr %70, i32 0, i32 3, !dbg !2732
  store ptr %67, ptr %71, align 8, !dbg !2733
  br label %72, !dbg !2734

72:                                               ; preds = %59, %47
  %73 = load ptr, ptr %8, align 8, !dbg !2735
  %74 = getelementptr inbounds %struct.zip64_internal, ptr %73, i32 0, i32 4, !dbg !2736
  %75 = getelementptr inbounds %struct.curfile64_info, ptr %74, i32 0, i32 0, !dbg !2737
  %76 = getelementptr inbounds %struct.z_stream_s, ptr %75, i32 0, i32 5, !dbg !2738
  %77 = load i64, ptr %76, align 8, !dbg !2738
  store i64 %77, ptr %13, align 8, !dbg !2739
  %78 = load ptr, ptr %8, align 8, !dbg !2740
  %79 = getelementptr inbounds %struct.zip64_internal, ptr %78, i32 0, i32 4, !dbg !2741
  %80 = getelementptr inbounds %struct.curfile64_info, ptr %79, i32 0, i32 0, !dbg !2742
  %81 = call i32 @deflate(ptr noundef %80, i32 noundef 4), !dbg !2743
  store i32 %81, ptr %12, align 4, !dbg !2744
  %82 = load ptr, ptr %8, align 8, !dbg !2745
  %83 = getelementptr inbounds %struct.zip64_internal, ptr %82, i32 0, i32 4, !dbg !2746
  %84 = getelementptr inbounds %struct.curfile64_info, ptr %83, i32 0, i32 0, !dbg !2747
  %85 = getelementptr inbounds %struct.z_stream_s, ptr %84, i32 0, i32 5, !dbg !2748
  %86 = load i64, ptr %85, align 8, !dbg !2748
  %87 = load i64, ptr %13, align 8, !dbg !2749
  %88 = sub i64 %86, %87, !dbg !2750
  %89 = trunc i64 %88 to i32, !dbg !2751
  %90 = load ptr, ptr %8, align 8, !dbg !2752
  %91 = getelementptr inbounds %struct.zip64_internal, ptr %90, i32 0, i32 4, !dbg !2753
  %92 = getelementptr inbounds %struct.curfile64_info, ptr %91, i32 0, i32 2, !dbg !2754
  %93 = load i32, ptr %92, align 4, !dbg !2755
  %94 = add i32 %93, %89, !dbg !2755
  store i32 %94, ptr %92, align 4, !dbg !2755
  br label %44, !dbg !2699, !llvm.loop !2756

95:                                               ; preds = %44
  br label %110, !dbg !2758

96:                                               ; preds = %37, %27
  %97 = load ptr, ptr %8, align 8, !dbg !2759
  %98 = getelementptr inbounds %struct.zip64_internal, ptr %97, i32 0, i32 4, !dbg !2761
  %99 = getelementptr inbounds %struct.curfile64_info, ptr %98, i32 0, i32 9, !dbg !2762
  %100 = load i32, ptr %99, align 8, !dbg !2762
  %101 = icmp eq i32 %100, 12, !dbg !2763
  br i1 %101, label %102, label %109, !dbg !2764

102:                                              ; preds = %96
  %103 = load ptr, ptr %8, align 8, !dbg !2765
  %104 = getelementptr inbounds %struct.zip64_internal, ptr %103, i32 0, i32 4, !dbg !2766
  %105 = getelementptr inbounds %struct.curfile64_info, ptr %104, i32 0, i32 10, !dbg !2767
  %106 = load i32, ptr %105, align 4, !dbg !2767
  %107 = icmp ne i32 %106, 0, !dbg !2765
  br i1 %107, label %109, label %108, !dbg !2768

108:                                              ; preds = %102
  br label %109, !dbg !2769

109:                                              ; preds = %108, %102, %96
  br label %110

110:                                              ; preds = %109, %95
  %111 = load i32, ptr %12, align 4, !dbg !2771
  %112 = icmp eq i32 %111, 1, !dbg !2773
  br i1 %112, label %113, label %114, !dbg !2774

113:                                              ; preds = %110
  store i32 0, ptr %12, align 4, !dbg !2775
  br label %114, !dbg !2776

114:                                              ; preds = %113, %110
  %115 = load ptr, ptr %8, align 8, !dbg !2777
  %116 = getelementptr inbounds %struct.zip64_internal, ptr %115, i32 0, i32 4, !dbg !2779
  %117 = getelementptr inbounds %struct.curfile64_info, ptr %116, i32 0, i32 2, !dbg !2780
  %118 = load i32, ptr %117, align 4, !dbg !2780
  %119 = icmp ugt i32 %118, 0, !dbg !2781
  br i1 %119, label %120, label %129, !dbg !2782

120:                                              ; preds = %114
  %121 = load i32, ptr %12, align 4, !dbg !2783
  %122 = icmp eq i32 %121, 0, !dbg !2784
  br i1 %122, label %123, label %129, !dbg !2785

123:                                              ; preds = %120
  %124 = load ptr, ptr %8, align 8, !dbg !2786
  %125 = call i32 @zip64FlushWriteBuffer(ptr noundef %124), !dbg !2789
  %126 = icmp eq i32 %125, -1, !dbg !2790
  br i1 %126, label %127, label %128, !dbg !2791

127:                                              ; preds = %123
  store i32 -1, ptr %12, align 4, !dbg !2792
  br label %128, !dbg !2793

128:                                              ; preds = %127, %123
  br label %129, !dbg !2794

129:                                              ; preds = %128, %120, %114
  %130 = load ptr, ptr %8, align 8, !dbg !2795
  %131 = getelementptr inbounds %struct.zip64_internal, ptr %130, i32 0, i32 4, !dbg !2797
  %132 = getelementptr inbounds %struct.curfile64_info, ptr %131, i32 0, i32 9, !dbg !2798
  %133 = load i32, ptr %132, align 8, !dbg !2798
  %134 = icmp eq i32 %133, 8, !dbg !2799
  br i1 %134, label %135, label %154, !dbg !2800

135:                                              ; preds = %129
  %136 = load ptr, ptr %8, align 8, !dbg !2801
  %137 = getelementptr inbounds %struct.zip64_internal, ptr %136, i32 0, i32 4, !dbg !2802
  %138 = getelementptr inbounds %struct.curfile64_info, ptr %137, i32 0, i32 10, !dbg !2803
  %139 = load i32, ptr %138, align 4, !dbg !2803
  %140 = icmp ne i32 %139, 0, !dbg !2801
  br i1 %140, label %154, label %141, !dbg !2804

141:                                              ; preds = %135
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2805, metadata !DIExpression()), !dbg !2807
  %142 = load ptr, ptr %8, align 8, !dbg !2808
  %143 = getelementptr inbounds %struct.zip64_internal, ptr %142, i32 0, i32 4, !dbg !2809
  %144 = getelementptr inbounds %struct.curfile64_info, ptr %143, i32 0, i32 0, !dbg !2810
  %145 = call i32 @deflateEnd(ptr noundef %144), !dbg !2811
  store i32 %145, ptr %14, align 4, !dbg !2807
  %146 = load i32, ptr %12, align 4, !dbg !2812
  %147 = icmp eq i32 %146, 0, !dbg !2814
  br i1 %147, label %148, label %150, !dbg !2815

148:                                              ; preds = %141
  %149 = load i32, ptr %14, align 4, !dbg !2816
  store i32 %149, ptr %12, align 4, !dbg !2817
  br label %150, !dbg !2818

150:                                              ; preds = %148, %141
  %151 = load ptr, ptr %8, align 8, !dbg !2819
  %152 = getelementptr inbounds %struct.zip64_internal, ptr %151, i32 0, i32 4, !dbg !2820
  %153 = getelementptr inbounds %struct.curfile64_info, ptr %152, i32 0, i32 1, !dbg !2821
  store i32 0, ptr %153, align 8, !dbg !2822
  br label %154, !dbg !2823

154:                                              ; preds = %150, %135, %129
  %155 = load ptr, ptr %8, align 8, !dbg !2824
  %156 = getelementptr inbounds %struct.zip64_internal, ptr %155, i32 0, i32 4, !dbg !2826
  %157 = getelementptr inbounds %struct.curfile64_info, ptr %156, i32 0, i32 10, !dbg !2827
  %158 = load i32, ptr %157, align 4, !dbg !2827
  %159 = icmp ne i32 %158, 0, !dbg !2824
  br i1 %159, label %169, label %160, !dbg !2828

160:                                              ; preds = %154
  %161 = load ptr, ptr %8, align 8, !dbg !2829
  %162 = getelementptr inbounds %struct.zip64_internal, ptr %161, i32 0, i32 4, !dbg !2831
  %163 = getelementptr inbounds %struct.curfile64_info, ptr %162, i32 0, i32 13, !dbg !2832
  %164 = load i64, ptr %163, align 8, !dbg !2832
  store i64 %164, ptr %7, align 8, !dbg !2833
  %165 = load ptr, ptr %8, align 8, !dbg !2834
  %166 = getelementptr inbounds %struct.zip64_internal, ptr %165, i32 0, i32 4, !dbg !2835
  %167 = getelementptr inbounds %struct.curfile64_info, ptr %166, i32 0, i32 18, !dbg !2836
  %168 = load i64, ptr %167, align 8, !dbg !2836
  store i64 %168, ptr %6, align 8, !dbg !2837
  br label %169, !dbg !2838

169:                                              ; preds = %160, %154
  %170 = load ptr, ptr %8, align 8, !dbg !2839
  %171 = getelementptr inbounds %struct.zip64_internal, ptr %170, i32 0, i32 4, !dbg !2840
  %172 = getelementptr inbounds %struct.curfile64_info, ptr %171, i32 0, i32 17, !dbg !2841
  %173 = load i64, ptr %172, align 8, !dbg !2841
  store i64 %173, ptr %9, align 8, !dbg !2842
  %174 = load ptr, ptr %8, align 8, !dbg !2843
  %175 = getelementptr inbounds %struct.zip64_internal, ptr %174, i32 0, i32 4, !dbg !2844
  %176 = getelementptr inbounds %struct.curfile64_info, ptr %175, i32 0, i32 21, !dbg !2845
  %177 = load i32, ptr %176, align 8, !dbg !2845
  %178 = sext i32 %177 to i64, !dbg !2843
  %179 = load i64, ptr %9, align 8, !dbg !2846
  %180 = add i64 %179, %178, !dbg !2846
  store i64 %180, ptr %9, align 8, !dbg !2846
  %181 = load i64, ptr %9, align 8, !dbg !2847
  %182 = icmp uge i64 %181, 4294967295, !dbg !2849
  br i1 %182, label %192, label %183, !dbg !2850

183:                                              ; preds = %169
  %184 = load i64, ptr %6, align 8, !dbg !2851
  %185 = icmp uge i64 %184, 4294967295, !dbg !2852
  br i1 %185, label %192, label %186, !dbg !2853

186:                                              ; preds = %183
  %187 = load ptr, ptr %8, align 8, !dbg !2854
  %188 = getelementptr inbounds %struct.zip64_internal, ptr %187, i32 0, i32 4, !dbg !2855
  %189 = getelementptr inbounds %struct.curfile64_info, ptr %188, i32 0, i32 3, !dbg !2856
  %190 = load i64, ptr %189, align 8, !dbg !2856
  %191 = icmp uge i64 %190, 4294967295, !dbg !2857
  br i1 %191, label %192, label %203, !dbg !2858

192:                                              ; preds = %186, %183, %169
  %193 = load ptr, ptr %8, align 8, !dbg !2859
  %194 = getelementptr inbounds %struct.zip64_internal, ptr %193, i32 0, i32 4, !dbg !2861
  %195 = getelementptr inbounds %struct.curfile64_info, ptr %194, i32 0, i32 4, !dbg !2862
  %196 = load ptr, ptr %195, align 8, !dbg !2862
  %197 = getelementptr inbounds i8, ptr %196, i64 4, !dbg !2863
  call void @zip64local_putValue_inmemory(ptr noundef %197, i64 noundef 45, i32 noundef 2), !dbg !2864
  %198 = load ptr, ptr %8, align 8, !dbg !2865
  %199 = getelementptr inbounds %struct.zip64_internal, ptr %198, i32 0, i32 4, !dbg !2866
  %200 = getelementptr inbounds %struct.curfile64_info, ptr %199, i32 0, i32 4, !dbg !2867
  %201 = load ptr, ptr %200, align 8, !dbg !2867
  %202 = getelementptr inbounds i8, ptr %201, i64 6, !dbg !2868
  call void @zip64local_putValue_inmemory(ptr noundef %202, i64 noundef 45, i32 noundef 2), !dbg !2869
  br label %203, !dbg !2870

203:                                              ; preds = %192, %186
  %204 = load ptr, ptr %8, align 8, !dbg !2871
  %205 = getelementptr inbounds %struct.zip64_internal, ptr %204, i32 0, i32 4, !dbg !2872
  %206 = getelementptr inbounds %struct.curfile64_info, ptr %205, i32 0, i32 4, !dbg !2873
  %207 = load ptr, ptr %206, align 8, !dbg !2873
  %208 = getelementptr inbounds i8, ptr %207, i64 16, !dbg !2874
  %209 = load i64, ptr %7, align 8, !dbg !2875
  call void @zip64local_putValue_inmemory(ptr noundef %208, i64 noundef %209, i32 noundef 4), !dbg !2876
  %210 = load i64, ptr %9, align 8, !dbg !2877
  %211 = icmp uge i64 %210, 4294967295, !dbg !2879
  br i1 %211, label %212, label %219, !dbg !2880

212:                                              ; preds = %203
  %213 = load ptr, ptr %8, align 8, !dbg !2881
  %214 = getelementptr inbounds %struct.zip64_internal, ptr %213, i32 0, i32 4, !dbg !2882
  %215 = getelementptr inbounds %struct.curfile64_info, ptr %214, i32 0, i32 4, !dbg !2883
  %216 = load ptr, ptr %215, align 8, !dbg !2883
  %217 = getelementptr inbounds i8, ptr %216, i64 20, !dbg !2884
  %218 = load i64, ptr %10, align 8, !dbg !2885
  call void @zip64local_putValue_inmemory(ptr noundef %217, i64 noundef %218, i32 noundef 4), !dbg !2886
  br label %226, !dbg !2886

219:                                              ; preds = %203
  %220 = load ptr, ptr %8, align 8, !dbg !2887
  %221 = getelementptr inbounds %struct.zip64_internal, ptr %220, i32 0, i32 4, !dbg !2888
  %222 = getelementptr inbounds %struct.curfile64_info, ptr %221, i32 0, i32 4, !dbg !2889
  %223 = load ptr, ptr %222, align 8, !dbg !2889
  %224 = getelementptr inbounds i8, ptr %223, i64 20, !dbg !2890
  %225 = load i64, ptr %9, align 8, !dbg !2891
  call void @zip64local_putValue_inmemory(ptr noundef %224, i64 noundef %225, i32 noundef 4), !dbg !2892
  br label %226

226:                                              ; preds = %219, %212
  %227 = load ptr, ptr %8, align 8, !dbg !2893
  %228 = getelementptr inbounds %struct.zip64_internal, ptr %227, i32 0, i32 4, !dbg !2895
  %229 = getelementptr inbounds %struct.curfile64_info, ptr %228, i32 0, i32 0, !dbg !2896
  %230 = getelementptr inbounds %struct.z_stream_s, ptr %229, i32 0, i32 11, !dbg !2897
  %231 = load i32, ptr %230, align 8, !dbg !2897
  %232 = icmp eq i32 %231, 1, !dbg !2898
  br i1 %232, label %233, label %239, !dbg !2899

233:                                              ; preds = %226
  %234 = load ptr, ptr %8, align 8, !dbg !2900
  %235 = getelementptr inbounds %struct.zip64_internal, ptr %234, i32 0, i32 4, !dbg !2901
  %236 = getelementptr inbounds %struct.curfile64_info, ptr %235, i32 0, i32 4, !dbg !2902
  %237 = load ptr, ptr %236, align 8, !dbg !2902
  %238 = getelementptr inbounds i8, ptr %237, i64 36, !dbg !2903
  call void @zip64local_putValue_inmemory(ptr noundef %238, i64 noundef 1, i32 noundef 2), !dbg !2904
  br label %239, !dbg !2904

239:                                              ; preds = %233, %226
  %240 = load i64, ptr %6, align 8, !dbg !2905
  %241 = icmp uge i64 %240, 4294967295, !dbg !2907
  br i1 %241, label %242, label %249, !dbg !2908

242:                                              ; preds = %239
  %243 = load ptr, ptr %8, align 8, !dbg !2909
  %244 = getelementptr inbounds %struct.zip64_internal, ptr %243, i32 0, i32 4, !dbg !2910
  %245 = getelementptr inbounds %struct.curfile64_info, ptr %244, i32 0, i32 4, !dbg !2911
  %246 = load ptr, ptr %245, align 8, !dbg !2911
  %247 = getelementptr inbounds i8, ptr %246, i64 24, !dbg !2912
  %248 = load i64, ptr %10, align 8, !dbg !2913
  call void @zip64local_putValue_inmemory(ptr noundef %247, i64 noundef %248, i32 noundef 4), !dbg !2914
  br label %256, !dbg !2914

249:                                              ; preds = %239
  %250 = load ptr, ptr %8, align 8, !dbg !2915
  %251 = getelementptr inbounds %struct.zip64_internal, ptr %250, i32 0, i32 4, !dbg !2916
  %252 = getelementptr inbounds %struct.curfile64_info, ptr %251, i32 0, i32 4, !dbg !2917
  %253 = load ptr, ptr %252, align 8, !dbg !2917
  %254 = getelementptr inbounds i8, ptr %253, i64 24, !dbg !2918
  %255 = load i64, ptr %6, align 8, !dbg !2919
  call void @zip64local_putValue_inmemory(ptr noundef %254, i64 noundef %255, i32 noundef 4), !dbg !2920
  br label %256

256:                                              ; preds = %249, %242
  %257 = load i64, ptr %6, align 8, !dbg !2921
  %258 = icmp uge i64 %257, 4294967295, !dbg !2923
  br i1 %258, label %259, label %264, !dbg !2924

259:                                              ; preds = %256
  %260 = load i16, ptr %11, align 2, !dbg !2925
  %261 = sext i16 %260 to i32, !dbg !2925
  %262 = add nsw i32 %261, 8, !dbg !2925
  %263 = trunc i32 %262 to i16, !dbg !2925
  store i16 %263, ptr %11, align 2, !dbg !2925
  br label %264, !dbg !2926

264:                                              ; preds = %259, %256
  %265 = load i64, ptr %9, align 8, !dbg !2927
  %266 = icmp uge i64 %265, 4294967295, !dbg !2929
  br i1 %266, label %267, label %272, !dbg !2930

267:                                              ; preds = %264
  %268 = load i16, ptr %11, align 2, !dbg !2931
  %269 = sext i16 %268 to i32, !dbg !2931
  %270 = add nsw i32 %269, 8, !dbg !2931
  %271 = trunc i32 %270 to i16, !dbg !2931
  store i16 %271, ptr %11, align 2, !dbg !2931
  br label %272, !dbg !2932

272:                                              ; preds = %267, %264
  %273 = load ptr, ptr %8, align 8, !dbg !2933
  %274 = getelementptr inbounds %struct.zip64_internal, ptr %273, i32 0, i32 4, !dbg !2935
  %275 = getelementptr inbounds %struct.curfile64_info, ptr %274, i32 0, i32 3, !dbg !2936
  %276 = load i64, ptr %275, align 8, !dbg !2936
  %277 = icmp uge i64 %276, 4294967295, !dbg !2937
  br i1 %277, label %278, label %283, !dbg !2938

278:                                              ; preds = %272
  %279 = load i16, ptr %11, align 2, !dbg !2939
  %280 = sext i16 %279 to i32, !dbg !2939
  %281 = add nsw i32 %280, 8, !dbg !2939
  %282 = trunc i32 %281 to i16, !dbg !2939
  store i16 %282, ptr %11, align 2, !dbg !2939
  br label %283, !dbg !2940

283:                                              ; preds = %278, %272
  %284 = load i16, ptr %11, align 2, !dbg !2941
  %285 = sext i16 %284 to i32, !dbg !2941
  %286 = icmp sgt i32 %285, 0, !dbg !2943
  br i1 %286, label %287, label %382, !dbg !2944

287:                                              ; preds = %283
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2945, metadata !DIExpression()), !dbg !2947
  store ptr null, ptr %15, align 8, !dbg !2947
  %288 = load i16, ptr %11, align 2, !dbg !2948
  %289 = sext i16 %288 to i32, !dbg !2948
  %290 = add nsw i32 %289, 4, !dbg !2950
  %291 = sext i32 %290 to i64, !dbg !2951
  %292 = load ptr, ptr %8, align 8, !dbg !2952
  %293 = getelementptr inbounds %struct.zip64_internal, ptr %292, i32 0, i32 4, !dbg !2953
  %294 = getelementptr inbounds %struct.curfile64_info, ptr %293, i32 0, i32 7, !dbg !2954
  %295 = load i64, ptr %294, align 8, !dbg !2954
  %296 = icmp ugt i64 %291, %295, !dbg !2955
  br i1 %296, label %297, label %298, !dbg !2956

297:                                              ; preds = %287
  store i32 -103, ptr %4, align 4, !dbg !2957
  br label %528, !dbg !2957

298:                                              ; preds = %287
  %299 = load ptr, ptr %8, align 8, !dbg !2959
  %300 = getelementptr inbounds %struct.zip64_internal, ptr %299, i32 0, i32 4, !dbg !2960
  %301 = getelementptr inbounds %struct.curfile64_info, ptr %300, i32 0, i32 4, !dbg !2961
  %302 = load ptr, ptr %301, align 8, !dbg !2961
  %303 = load ptr, ptr %8, align 8, !dbg !2962
  %304 = getelementptr inbounds %struct.zip64_internal, ptr %303, i32 0, i32 4, !dbg !2963
  %305 = getelementptr inbounds %struct.curfile64_info, ptr %304, i32 0, i32 6, !dbg !2964
  %306 = load i64, ptr %305, align 8, !dbg !2964
  %307 = getelementptr inbounds i8, ptr %302, i64 %306, !dbg !2965
  store ptr %307, ptr %15, align 8, !dbg !2966
  %308 = load ptr, ptr %15, align 8, !dbg !2967
  call void @zip64local_putValue_inmemory(ptr noundef %308, i64 noundef 1, i32 noundef 2), !dbg !2968
  %309 = load ptr, ptr %15, align 8, !dbg !2969
  %310 = getelementptr inbounds i8, ptr %309, i64 2, !dbg !2969
  store ptr %310, ptr %15, align 8, !dbg !2969
  %311 = load ptr, ptr %15, align 8, !dbg !2970
  %312 = load i16, ptr %11, align 2, !dbg !2971
  %313 = sext i16 %312 to i64, !dbg !2971
  call void @zip64local_putValue_inmemory(ptr noundef %311, i64 noundef %313, i32 noundef 2), !dbg !2972
  %314 = load ptr, ptr %15, align 8, !dbg !2973
  %315 = getelementptr inbounds i8, ptr %314, i64 2, !dbg !2973
  store ptr %315, ptr %15, align 8, !dbg !2973
  %316 = load i64, ptr %6, align 8, !dbg !2974
  %317 = icmp uge i64 %316, 4294967295, !dbg !2976
  br i1 %317, label %318, label %323, !dbg !2977

318:                                              ; preds = %298
  %319 = load ptr, ptr %15, align 8, !dbg !2978
  %320 = load i64, ptr %6, align 8, !dbg !2980
  call void @zip64local_putValue_inmemory(ptr noundef %319, i64 noundef %320, i32 noundef 8), !dbg !2981
  %321 = load ptr, ptr %15, align 8, !dbg !2982
  %322 = getelementptr inbounds i8, ptr %321, i64 8, !dbg !2982
  store ptr %322, ptr %15, align 8, !dbg !2982
  br label %323, !dbg !2983

323:                                              ; preds = %318, %298
  %324 = load i64, ptr %9, align 8, !dbg !2984
  %325 = icmp uge i64 %324, 4294967295, !dbg !2986
  br i1 %325, label %326, label %331, !dbg !2987

326:                                              ; preds = %323
  %327 = load ptr, ptr %15, align 8, !dbg !2988
  %328 = load i64, ptr %9, align 8, !dbg !2990
  call void @zip64local_putValue_inmemory(ptr noundef %327, i64 noundef %328, i32 noundef 8), !dbg !2991
  %329 = load ptr, ptr %15, align 8, !dbg !2992
  %330 = getelementptr inbounds i8, ptr %329, i64 8, !dbg !2992
  store ptr %330, ptr %15, align 8, !dbg !2992
  br label %331, !dbg !2993

331:                                              ; preds = %326, %323
  %332 = load ptr, ptr %8, align 8, !dbg !2994
  %333 = getelementptr inbounds %struct.zip64_internal, ptr %332, i32 0, i32 4, !dbg !2996
  %334 = getelementptr inbounds %struct.curfile64_info, ptr %333, i32 0, i32 3, !dbg !2997
  %335 = load i64, ptr %334, align 8, !dbg !2997
  %336 = icmp uge i64 %335, 4294967295, !dbg !2998
  br i1 %336, label %337, label %345, !dbg !2999

337:                                              ; preds = %331
  %338 = load ptr, ptr %15, align 8, !dbg !3000
  %339 = load ptr, ptr %8, align 8, !dbg !3002
  %340 = getelementptr inbounds %struct.zip64_internal, ptr %339, i32 0, i32 4, !dbg !3003
  %341 = getelementptr inbounds %struct.curfile64_info, ptr %340, i32 0, i32 3, !dbg !3004
  %342 = load i64, ptr %341, align 8, !dbg !3004
  call void @zip64local_putValue_inmemory(ptr noundef %338, i64 noundef %342, i32 noundef 8), !dbg !3005
  %343 = load ptr, ptr %15, align 8, !dbg !3006
  %344 = getelementptr inbounds i8, ptr %343, i64 8, !dbg !3006
  store ptr %344, ptr %15, align 8, !dbg !3006
  br label %345, !dbg !3007

345:                                              ; preds = %337, %331
  %346 = load i16, ptr %11, align 2, !dbg !3008
  %347 = sext i16 %346 to i32, !dbg !3008
  %348 = add nsw i32 %347, 4, !dbg !3009
  %349 = sext i32 %348 to i64, !dbg !3008
  %350 = load ptr, ptr %8, align 8, !dbg !3010
  %351 = getelementptr inbounds %struct.zip64_internal, ptr %350, i32 0, i32 4, !dbg !3011
  %352 = getelementptr inbounds %struct.curfile64_info, ptr %351, i32 0, i32 7, !dbg !3012
  %353 = load i64, ptr %352, align 8, !dbg !3013
  %354 = sub i64 %353, %349, !dbg !3013
  store i64 %354, ptr %352, align 8, !dbg !3013
  %355 = load i16, ptr %11, align 2, !dbg !3014
  %356 = sext i16 %355 to i32, !dbg !3014
  %357 = add nsw i32 %356, 4, !dbg !3015
  %358 = sext i32 %357 to i64, !dbg !3014
  %359 = load ptr, ptr %8, align 8, !dbg !3016
  %360 = getelementptr inbounds %struct.zip64_internal, ptr %359, i32 0, i32 4, !dbg !3017
  %361 = getelementptr inbounds %struct.curfile64_info, ptr %360, i32 0, i32 6, !dbg !3018
  %362 = load i64, ptr %361, align 8, !dbg !3019
  %363 = add i64 %362, %358, !dbg !3019
  store i64 %363, ptr %361, align 8, !dbg !3019
  %364 = load i16, ptr %11, align 2, !dbg !3020
  %365 = sext i16 %364 to i32, !dbg !3020
  %366 = add nsw i32 %365, 4, !dbg !3021
  %367 = sext i32 %366 to i64, !dbg !3020
  %368 = load ptr, ptr %8, align 8, !dbg !3022
  %369 = getelementptr inbounds %struct.zip64_internal, ptr %368, i32 0, i32 4, !dbg !3023
  %370 = getelementptr inbounds %struct.curfile64_info, ptr %369, i32 0, i32 5, !dbg !3024
  %371 = load i64, ptr %370, align 8, !dbg !3025
  %372 = add i64 %371, %367, !dbg !3025
  store i64 %372, ptr %370, align 8, !dbg !3025
  %373 = load ptr, ptr %8, align 8, !dbg !3026
  %374 = getelementptr inbounds %struct.zip64_internal, ptr %373, i32 0, i32 4, !dbg !3027
  %375 = getelementptr inbounds %struct.curfile64_info, ptr %374, i32 0, i32 4, !dbg !3028
  %376 = load ptr, ptr %375, align 8, !dbg !3028
  %377 = getelementptr inbounds i8, ptr %376, i64 30, !dbg !3029
  %378 = load ptr, ptr %8, align 8, !dbg !3030
  %379 = getelementptr inbounds %struct.zip64_internal, ptr %378, i32 0, i32 4, !dbg !3031
  %380 = getelementptr inbounds %struct.curfile64_info, ptr %379, i32 0, i32 5, !dbg !3032
  %381 = load i64, ptr %380, align 8, !dbg !3032
  call void @zip64local_putValue_inmemory(ptr noundef %377, i64 noundef %381, i32 noundef 2), !dbg !3033
  br label %382, !dbg !3034

382:                                              ; preds = %345, %283
  %383 = load i32, ptr %12, align 4, !dbg !3035
  %384 = icmp eq i32 %383, 0, !dbg !3037
  br i1 %384, label %385, label %397, !dbg !3038

385:                                              ; preds = %382
  %386 = load ptr, ptr %8, align 8, !dbg !3039
  %387 = getelementptr inbounds %struct.zip64_internal, ptr %386, i32 0, i32 2, !dbg !3040
  %388 = load ptr, ptr %8, align 8, !dbg !3041
  %389 = getelementptr inbounds %struct.zip64_internal, ptr %388, i32 0, i32 4, !dbg !3042
  %390 = getelementptr inbounds %struct.curfile64_info, ptr %389, i32 0, i32 4, !dbg !3043
  %391 = load ptr, ptr %390, align 8, !dbg !3043
  %392 = load ptr, ptr %8, align 8, !dbg !3044
  %393 = getelementptr inbounds %struct.zip64_internal, ptr %392, i32 0, i32 4, !dbg !3045
  %394 = getelementptr inbounds %struct.curfile64_info, ptr %393, i32 0, i32 6, !dbg !3046
  %395 = load i64, ptr %394, align 8, !dbg !3046
  %396 = call i32 @add_data_in_datablock(ptr noundef %387, ptr noundef %391, i64 noundef %395), !dbg !3047
  store i32 %396, ptr %12, align 4, !dbg !3048
  br label %397, !dbg !3049

397:                                              ; preds = %385, %382
  %398 = load ptr, ptr %8, align 8, !dbg !3050
  %399 = getelementptr inbounds %struct.zip64_internal, ptr %398, i32 0, i32 4, !dbg !3051
  %400 = getelementptr inbounds %struct.curfile64_info, ptr %399, i32 0, i32 4, !dbg !3052
  %401 = load ptr, ptr %400, align 8, !dbg !3052
  call void @free(ptr noundef %401) #9, !dbg !3053
  %402 = load i32, ptr %12, align 4, !dbg !3054
  %403 = icmp eq i32 %402, 0, !dbg !3056
  br i1 %403, label %404, label %520, !dbg !3057

404:                                              ; preds = %397
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3058, metadata !DIExpression()), !dbg !3060
  %405 = load ptr, ptr %8, align 8, !dbg !3061
  %406 = getelementptr inbounds %struct.zip64_internal, ptr %405, i32 0, i32 0, !dbg !3061
  %407 = load ptr, ptr %8, align 8, !dbg !3061
  %408 = getelementptr inbounds %struct.zip64_internal, ptr %407, i32 0, i32 1, !dbg !3061
  %409 = load ptr, ptr %408, align 8, !dbg !3061
  %410 = call i64 @call_ztell64(ptr noundef %406, ptr noundef %409), !dbg !3061
  store i64 %410, ptr %16, align 8, !dbg !3060
  %411 = load ptr, ptr %8, align 8, !dbg !3062
  %412 = getelementptr inbounds %struct.zip64_internal, ptr %411, i32 0, i32 0, !dbg !3062
  %413 = load ptr, ptr %8, align 8, !dbg !3062
  %414 = getelementptr inbounds %struct.zip64_internal, ptr %413, i32 0, i32 1, !dbg !3062
  %415 = load ptr, ptr %414, align 8, !dbg !3062
  %416 = load ptr, ptr %8, align 8, !dbg !3062
  %417 = getelementptr inbounds %struct.zip64_internal, ptr %416, i32 0, i32 4, !dbg !3062
  %418 = getelementptr inbounds %struct.curfile64_info, ptr %417, i32 0, i32 3, !dbg !3062
  %419 = load i64, ptr %418, align 8, !dbg !3062
  %420 = add i64 %419, 14, !dbg !3062
  %421 = call i64 @call_zseek64(ptr noundef %412, ptr noundef %415, i64 noundef %420, i32 noundef 0), !dbg !3062
  %422 = icmp ne i64 %421, 0, !dbg !3064
  br i1 %422, label %423, label %424, !dbg !3065

423:                                              ; preds = %404
  store i32 -1, ptr %12, align 4, !dbg !3066
  br label %424, !dbg !3067

424:                                              ; preds = %423, %404
  %425 = load i32, ptr %12, align 4, !dbg !3068
  %426 = icmp eq i32 %425, 0, !dbg !3070
  br i1 %426, label %427, label %435, !dbg !3071

427:                                              ; preds = %424
  %428 = load ptr, ptr %8, align 8, !dbg !3072
  %429 = getelementptr inbounds %struct.zip64_internal, ptr %428, i32 0, i32 0, !dbg !3073
  %430 = load ptr, ptr %8, align 8, !dbg !3074
  %431 = getelementptr inbounds %struct.zip64_internal, ptr %430, i32 0, i32 1, !dbg !3075
  %432 = load ptr, ptr %431, align 8, !dbg !3075
  %433 = load i64, ptr %7, align 8, !dbg !3076
  %434 = call i32 @zip64local_putValue(ptr noundef %429, ptr noundef %432, i64 noundef %433, i32 noundef 4), !dbg !3077
  store i32 %434, ptr %12, align 4, !dbg !3078
  br label %435, !dbg !3079

435:                                              ; preds = %427, %424
  %436 = load i64, ptr %6, align 8, !dbg !3080
  %437 = icmp uge i64 %436, 4294967295, !dbg !3082
  br i1 %437, label %441, label %438, !dbg !3083

438:                                              ; preds = %435
  %439 = load i64, ptr %9, align 8, !dbg !3084
  %440 = icmp uge i64 %439, 4294967295, !dbg !3085
  br i1 %440, label %441, label %486, !dbg !3086

441:                                              ; preds = %438, %435
  %442 = load ptr, ptr %8, align 8, !dbg !3087
  %443 = getelementptr inbounds %struct.zip64_internal, ptr %442, i32 0, i32 4, !dbg !3090
  %444 = getelementptr inbounds %struct.curfile64_info, ptr %443, i32 0, i32 16, !dbg !3091
  %445 = load i64, ptr %444, align 8, !dbg !3091
  %446 = icmp ugt i64 %445, 0, !dbg !3092
  br i1 %446, label %447, label %484, !dbg !3093

447:                                              ; preds = %441
  %448 = load ptr, ptr %8, align 8, !dbg !3094
  %449 = getelementptr inbounds %struct.zip64_internal, ptr %448, i32 0, i32 0, !dbg !3094
  %450 = load ptr, ptr %8, align 8, !dbg !3094
  %451 = getelementptr inbounds %struct.zip64_internal, ptr %450, i32 0, i32 1, !dbg !3094
  %452 = load ptr, ptr %451, align 8, !dbg !3094
  %453 = load ptr, ptr %8, align 8, !dbg !3094
  %454 = getelementptr inbounds %struct.zip64_internal, ptr %453, i32 0, i32 4, !dbg !3094
  %455 = getelementptr inbounds %struct.curfile64_info, ptr %454, i32 0, i32 16, !dbg !3094
  %456 = load i64, ptr %455, align 8, !dbg !3094
  %457 = add i64 %456, 4, !dbg !3094
  %458 = call i64 @call_zseek64(ptr noundef %449, ptr noundef %452, i64 noundef %457, i32 noundef 0), !dbg !3094
  %459 = icmp ne i64 %458, 0, !dbg !3097
  br i1 %459, label %460, label %461, !dbg !3098

460:                                              ; preds = %447
  store i32 -1, ptr %12, align 4, !dbg !3099
  br label %461, !dbg !3100

461:                                              ; preds = %460, %447
  %462 = load i32, ptr %12, align 4, !dbg !3101
  %463 = icmp eq i32 %462, 0, !dbg !3103
  br i1 %463, label %464, label %472, !dbg !3104

464:                                              ; preds = %461
  %465 = load ptr, ptr %8, align 8, !dbg !3105
  %466 = getelementptr inbounds %struct.zip64_internal, ptr %465, i32 0, i32 0, !dbg !3106
  %467 = load ptr, ptr %8, align 8, !dbg !3107
  %468 = getelementptr inbounds %struct.zip64_internal, ptr %467, i32 0, i32 1, !dbg !3108
  %469 = load ptr, ptr %468, align 8, !dbg !3108
  %470 = load i64, ptr %6, align 8, !dbg !3109
  %471 = call i32 @zip64local_putValue(ptr noundef %466, ptr noundef %469, i64 noundef %470, i32 noundef 8), !dbg !3110
  store i32 %471, ptr %12, align 4, !dbg !3111
  br label %472, !dbg !3112

472:                                              ; preds = %464, %461
  %473 = load i32, ptr %12, align 4, !dbg !3113
  %474 = icmp eq i32 %473, 0, !dbg !3115
  br i1 %474, label %475, label %483, !dbg !3116

475:                                              ; preds = %472
  %476 = load ptr, ptr %8, align 8, !dbg !3117
  %477 = getelementptr inbounds %struct.zip64_internal, ptr %476, i32 0, i32 0, !dbg !3118
  %478 = load ptr, ptr %8, align 8, !dbg !3119
  %479 = getelementptr inbounds %struct.zip64_internal, ptr %478, i32 0, i32 1, !dbg !3120
  %480 = load ptr, ptr %479, align 8, !dbg !3120
  %481 = load i64, ptr %9, align 8, !dbg !3121
  %482 = call i32 @zip64local_putValue(ptr noundef %477, ptr noundef %480, i64 noundef %481, i32 noundef 8), !dbg !3122
  store i32 %482, ptr %12, align 4, !dbg !3123
  br label %483, !dbg !3124

483:                                              ; preds = %475, %472
  br label %485, !dbg !3125

484:                                              ; preds = %441
  store i32 -103, ptr %12, align 4, !dbg !3126
  br label %485

485:                                              ; preds = %484, %483
  br label %509, !dbg !3127

486:                                              ; preds = %438
  %487 = load i32, ptr %12, align 4, !dbg !3128
  %488 = icmp eq i32 %487, 0, !dbg !3131
  br i1 %488, label %489, label %497, !dbg !3132

489:                                              ; preds = %486
  %490 = load ptr, ptr %8, align 8, !dbg !3133
  %491 = getelementptr inbounds %struct.zip64_internal, ptr %490, i32 0, i32 0, !dbg !3134
  %492 = load ptr, ptr %8, align 8, !dbg !3135
  %493 = getelementptr inbounds %struct.zip64_internal, ptr %492, i32 0, i32 1, !dbg !3136
  %494 = load ptr, ptr %493, align 8, !dbg !3136
  %495 = load i64, ptr %9, align 8, !dbg !3137
  %496 = call i32 @zip64local_putValue(ptr noundef %491, ptr noundef %494, i64 noundef %495, i32 noundef 4), !dbg !3138
  store i32 %496, ptr %12, align 4, !dbg !3139
  br label %497, !dbg !3140

497:                                              ; preds = %489, %486
  %498 = load i32, ptr %12, align 4, !dbg !3141
  %499 = icmp eq i32 %498, 0, !dbg !3143
  br i1 %499, label %500, label %508, !dbg !3144

500:                                              ; preds = %497
  %501 = load ptr, ptr %8, align 8, !dbg !3145
  %502 = getelementptr inbounds %struct.zip64_internal, ptr %501, i32 0, i32 0, !dbg !3146
  %503 = load ptr, ptr %8, align 8, !dbg !3147
  %504 = getelementptr inbounds %struct.zip64_internal, ptr %503, i32 0, i32 1, !dbg !3148
  %505 = load ptr, ptr %504, align 8, !dbg !3148
  %506 = load i64, ptr %6, align 8, !dbg !3149
  %507 = call i32 @zip64local_putValue(ptr noundef %502, ptr noundef %505, i64 noundef %506, i32 noundef 4), !dbg !3150
  store i32 %507, ptr %12, align 4, !dbg !3151
  br label %508, !dbg !3152

508:                                              ; preds = %500, %497
  br label %509

509:                                              ; preds = %508, %485
  %510 = load ptr, ptr %8, align 8, !dbg !3153
  %511 = getelementptr inbounds %struct.zip64_internal, ptr %510, i32 0, i32 0, !dbg !3153
  %512 = load ptr, ptr %8, align 8, !dbg !3153
  %513 = getelementptr inbounds %struct.zip64_internal, ptr %512, i32 0, i32 1, !dbg !3153
  %514 = load ptr, ptr %513, align 8, !dbg !3153
  %515 = load i64, ptr %16, align 8, !dbg !3153
  %516 = call i64 @call_zseek64(ptr noundef %511, ptr noundef %514, i64 noundef %515, i32 noundef 0), !dbg !3153
  %517 = icmp ne i64 %516, 0, !dbg !3155
  br i1 %517, label %518, label %519, !dbg !3156

518:                                              ; preds = %509
  store i32 -1, ptr %12, align 4, !dbg !3157
  br label %519, !dbg !3158

519:                                              ; preds = %518, %509
  br label %520, !dbg !3159

520:                                              ; preds = %519, %397
  %521 = load ptr, ptr %8, align 8, !dbg !3160
  %522 = getelementptr inbounds %struct.zip64_internal, ptr %521, i32 0, i32 7, !dbg !3161
  %523 = load i64, ptr %522, align 8, !dbg !3162
  %524 = add i64 %523, 1, !dbg !3162
  store i64 %524, ptr %522, align 8, !dbg !3162
  %525 = load ptr, ptr %8, align 8, !dbg !3163
  %526 = getelementptr inbounds %struct.zip64_internal, ptr %525, i32 0, i32 3, !dbg !3164
  store i32 0, ptr %526, align 8, !dbg !3165
  %527 = load i32, ptr %12, align 4, !dbg !3166
  store i32 %527, ptr %4, align 4, !dbg !3167
  br label %528, !dbg !3167

528:                                              ; preds = %520, %297, %26, %19
  %529 = load i32, ptr %4, align 4, !dbg !3168
  ret i32 %529, !dbg !3168
}

declare i32 @deflateEnd(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_data_in_datablock(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !3169 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3172, metadata !DIExpression()), !dbg !3173
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3174, metadata !DIExpression()), !dbg !3175
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3176, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3178, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3180, metadata !DIExpression()), !dbg !3181
  %13 = load ptr, ptr %5, align 8, !dbg !3182
  %14 = icmp eq ptr %13, null, !dbg !3184
  br i1 %14, label %15, label %16, !dbg !3185

15:                                               ; preds = %3
  store i32 -104, ptr %4, align 4, !dbg !3186
  br label %122, !dbg !3186

16:                                               ; preds = %3
  %17 = load ptr, ptr %5, align 8, !dbg !3187
  %18 = getelementptr inbounds %struct.linkedlist_data_s, ptr %17, i32 0, i32 1, !dbg !3189
  %19 = load ptr, ptr %18, align 8, !dbg !3189
  %20 = icmp eq ptr %19, null, !dbg !3190
  br i1 %20, label %21, label %33, !dbg !3191

21:                                               ; preds = %16
  %22 = call ptr @allocate_new_datablock(), !dbg !3192
  %23 = load ptr, ptr %5, align 8, !dbg !3194
  %24 = getelementptr inbounds %struct.linkedlist_data_s, ptr %23, i32 0, i32 1, !dbg !3195
  store ptr %22, ptr %24, align 8, !dbg !3196
  %25 = load ptr, ptr %5, align 8, !dbg !3197
  %26 = getelementptr inbounds %struct.linkedlist_data_s, ptr %25, i32 0, i32 0, !dbg !3198
  store ptr %22, ptr %26, align 8, !dbg !3199
  %27 = load ptr, ptr %5, align 8, !dbg !3200
  %28 = getelementptr inbounds %struct.linkedlist_data_s, ptr %27, i32 0, i32 0, !dbg !3202
  %29 = load ptr, ptr %28, align 8, !dbg !3202
  %30 = icmp eq ptr %29, null, !dbg !3203
  br i1 %30, label %31, label %32, !dbg !3204

31:                                               ; preds = %21
  store i32 -104, ptr %4, align 4, !dbg !3205
  br label %122, !dbg !3205

32:                                               ; preds = %21
  br label %33, !dbg !3206

33:                                               ; preds = %32, %16
  %34 = load ptr, ptr %5, align 8, !dbg !3207
  %35 = getelementptr inbounds %struct.linkedlist_data_s, ptr %34, i32 0, i32 1, !dbg !3208
  %36 = load ptr, ptr %35, align 8, !dbg !3208
  store ptr %36, ptr %8, align 8, !dbg !3209
  %37 = load ptr, ptr %6, align 8, !dbg !3210
  store ptr %37, ptr %9, align 8, !dbg !3211
  br label %38, !dbg !3212

38:                                               ; preds = %100, %33
  %39 = load i64, ptr %7, align 8, !dbg !3213
  %40 = icmp ugt i64 %39, 0, !dbg !3214
  br i1 %40, label %41, label %121, !dbg !3212

41:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3215, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3218, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3220, metadata !DIExpression()), !dbg !3221
  %42 = load ptr, ptr %8, align 8, !dbg !3222
  %43 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %42, i32 0, i32 1, !dbg !3224
  %44 = load i64, ptr %43, align 8, !dbg !3224
  %45 = icmp eq i64 %44, 0, !dbg !3225
  br i1 %45, label %46, label %62, !dbg !3226

46:                                               ; preds = %41
  %47 = call ptr @allocate_new_datablock(), !dbg !3227
  %48 = load ptr, ptr %8, align 8, !dbg !3229
  %49 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %48, i32 0, i32 0, !dbg !3230
  store ptr %47, ptr %49, align 8, !dbg !3231
  %50 = load ptr, ptr %8, align 8, !dbg !3232
  %51 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %50, i32 0, i32 0, !dbg !3234
  %52 = load ptr, ptr %51, align 8, !dbg !3234
  %53 = icmp eq ptr %52, null, !dbg !3235
  br i1 %53, label %54, label %55, !dbg !3236

54:                                               ; preds = %46
  store i32 -104, ptr %4, align 4, !dbg !3237
  br label %122, !dbg !3237

55:                                               ; preds = %46
  %56 = load ptr, ptr %8, align 8, !dbg !3238
  %57 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %56, i32 0, i32 0, !dbg !3239
  %58 = load ptr, ptr %57, align 8, !dbg !3239
  store ptr %58, ptr %8, align 8, !dbg !3240
  %59 = load ptr, ptr %8, align 8, !dbg !3241
  %60 = load ptr, ptr %5, align 8, !dbg !3242
  %61 = getelementptr inbounds %struct.linkedlist_data_s, ptr %60, i32 0, i32 1, !dbg !3243
  store ptr %59, ptr %61, align 8, !dbg !3244
  br label %62, !dbg !3245

62:                                               ; preds = %55, %41
  %63 = load ptr, ptr %8, align 8, !dbg !3246
  %64 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %63, i32 0, i32 1, !dbg !3248
  %65 = load i64, ptr %64, align 8, !dbg !3248
  %66 = load i64, ptr %7, align 8, !dbg !3249
  %67 = icmp ult i64 %65, %66, !dbg !3250
  br i1 %67, label %68, label %73, !dbg !3251

68:                                               ; preds = %62
  %69 = load ptr, ptr %8, align 8, !dbg !3252
  %70 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %69, i32 0, i32 1, !dbg !3253
  %71 = load i64, ptr %70, align 8, !dbg !3253
  %72 = trunc i64 %71 to i32, !dbg !3254
  store i32 %72, ptr %10, align 4, !dbg !3255
  br label %76, !dbg !3256

73:                                               ; preds = %62
  %74 = load i64, ptr %7, align 8, !dbg !3257
  %75 = trunc i64 %74 to i32, !dbg !3258
  store i32 %75, ptr %10, align 4, !dbg !3259
  br label %76

76:                                               ; preds = %73, %68
  %77 = load ptr, ptr %8, align 8, !dbg !3260
  %78 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %77, i32 0, i32 4, !dbg !3261
  %79 = load ptr, ptr %8, align 8, !dbg !3262
  %80 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %79, i32 0, i32 2, !dbg !3263
  %81 = load i64, ptr %80, align 8, !dbg !3263
  %82 = getelementptr inbounds [4080 x i8], ptr %78, i64 0, i64 %81, !dbg !3260
  store ptr %82, ptr %12, align 8, !dbg !3264
  store i32 0, ptr %11, align 4, !dbg !3265
  br label %83, !dbg !3267

83:                                               ; preds = %97, %76
  %84 = load i32, ptr %11, align 4, !dbg !3268
  %85 = load i32, ptr %10, align 4, !dbg !3270
  %86 = icmp ult i32 %84, %85, !dbg !3271
  br i1 %86, label %87, label %100, !dbg !3272

87:                                               ; preds = %83
  %88 = load ptr, ptr %9, align 8, !dbg !3273
  %89 = load i32, ptr %11, align 4, !dbg !3274
  %90 = zext i32 %89 to i64, !dbg !3275
  %91 = getelementptr inbounds i8, ptr %88, i64 %90, !dbg !3275
  %92 = load i8, ptr %91, align 1, !dbg !3276
  %93 = load ptr, ptr %12, align 8, !dbg !3277
  %94 = load i32, ptr %11, align 4, !dbg !3278
  %95 = zext i32 %94 to i64, !dbg !3279
  %96 = getelementptr inbounds i8, ptr %93, i64 %95, !dbg !3279
  store i8 %92, ptr %96, align 1, !dbg !3280
  br label %97, !dbg !3281

97:                                               ; preds = %87
  %98 = load i32, ptr %11, align 4, !dbg !3282
  %99 = add i32 %98, 1, !dbg !3282
  store i32 %99, ptr %11, align 4, !dbg !3282
  br label %83, !dbg !3283, !llvm.loop !3284

100:                                              ; preds = %83
  %101 = load i32, ptr %10, align 4, !dbg !3286
  %102 = zext i32 %101 to i64, !dbg !3286
  %103 = load ptr, ptr %8, align 8, !dbg !3287
  %104 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %103, i32 0, i32 2, !dbg !3288
  %105 = load i64, ptr %104, align 8, !dbg !3289
  %106 = add i64 %105, %102, !dbg !3289
  store i64 %106, ptr %104, align 8, !dbg !3289
  %107 = load i32, ptr %10, align 4, !dbg !3290
  %108 = zext i32 %107 to i64, !dbg !3290
  %109 = load ptr, ptr %8, align 8, !dbg !3291
  %110 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %109, i32 0, i32 1, !dbg !3292
  %111 = load i64, ptr %110, align 8, !dbg !3293
  %112 = sub i64 %111, %108, !dbg !3293
  store i64 %112, ptr %110, align 8, !dbg !3293
  %113 = load i32, ptr %10, align 4, !dbg !3294
  %114 = load ptr, ptr %9, align 8, !dbg !3295
  %115 = zext i32 %113 to i64, !dbg !3295
  %116 = getelementptr inbounds i8, ptr %114, i64 %115, !dbg !3295
  store ptr %116, ptr %9, align 8, !dbg !3295
  %117 = load i32, ptr %10, align 4, !dbg !3296
  %118 = zext i32 %117 to i64, !dbg !3296
  %119 = load i64, ptr %7, align 8, !dbg !3297
  %120 = sub i64 %119, %118, !dbg !3297
  store i64 %120, ptr %7, align 8, !dbg !3297
  br label %38, !dbg !3212, !llvm.loop !3298

121:                                              ; preds = %38
  store i32 0, ptr %4, align 4, !dbg !3300
  br label %122, !dbg !3300

122:                                              ; preds = %121, %54, %31, %15
  %123 = load i32, ptr %4, align 4, !dbg !3301
  ret i32 %123, !dbg !3301
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip64local_putValue(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 !dbg !3302 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8 x i8], align 1
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3307, metadata !DIExpression()), !dbg !3308
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3309, metadata !DIExpression()), !dbg !3310
  store i64 %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3311, metadata !DIExpression()), !dbg !3312
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3313, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3315, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3320, metadata !DIExpression()), !dbg !3321
  store i32 0, ptr %11, align 4, !dbg !3322
  br label %12, !dbg !3324

12:                                               ; preds = %25, %4
  %13 = load i32, ptr %11, align 4, !dbg !3325
  %14 = load i32, ptr %9, align 4, !dbg !3327
  %15 = icmp slt i32 %13, %14, !dbg !3328
  br i1 %15, label %16, label %28, !dbg !3329

16:                                               ; preds = %12
  %17 = load i64, ptr %8, align 8, !dbg !3330
  %18 = and i64 %17, 255, !dbg !3332
  %19 = trunc i64 %18 to i8, !dbg !3333
  %20 = load i32, ptr %11, align 4, !dbg !3334
  %21 = sext i32 %20 to i64, !dbg !3335
  %22 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 %21, !dbg !3335
  store i8 %19, ptr %22, align 1, !dbg !3336
  %23 = load i64, ptr %8, align 8, !dbg !3337
  %24 = lshr i64 %23, 8, !dbg !3337
  store i64 %24, ptr %8, align 8, !dbg !3337
  br label %25, !dbg !3338

25:                                               ; preds = %16
  %26 = load i32, ptr %11, align 4, !dbg !3339
  %27 = add nsw i32 %26, 1, !dbg !3339
  store i32 %27, ptr %11, align 4, !dbg !3339
  br label %12, !dbg !3340, !llvm.loop !3341

28:                                               ; preds = %12
  %29 = load i64, ptr %8, align 8, !dbg !3343
  %30 = icmp ne i64 %29, 0, !dbg !3345
  br i1 %30, label %31, label %44, !dbg !3346

31:                                               ; preds = %28
  store i32 0, ptr %11, align 4, !dbg !3347
  br label %32, !dbg !3350

32:                                               ; preds = %40, %31
  %33 = load i32, ptr %11, align 4, !dbg !3351
  %34 = load i32, ptr %9, align 4, !dbg !3353
  %35 = icmp slt i32 %33, %34, !dbg !3354
  br i1 %35, label %36, label %43, !dbg !3355

36:                                               ; preds = %32
  %37 = load i32, ptr %11, align 4, !dbg !3356
  %38 = sext i32 %37 to i64, !dbg !3358
  %39 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 %38, !dbg !3358
  store i8 -1, ptr %39, align 1, !dbg !3359
  br label %40, !dbg !3360

40:                                               ; preds = %36
  %41 = load i32, ptr %11, align 4, !dbg !3361
  %42 = add nsw i32 %41, 1, !dbg !3361
  store i32 %42, ptr %11, align 4, !dbg !3361
  br label %32, !dbg !3362, !llvm.loop !3363

43:                                               ; preds = %32
  br label %44, !dbg !3365

44:                                               ; preds = %43, %28
  %45 = load ptr, ptr %6, align 8, !dbg !3366
  %46 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %45, i32 0, i32 0, !dbg !3366
  %47 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %46, i32 0, i32 2, !dbg !3366
  %48 = load ptr, ptr %47, align 8, !dbg !3366
  %49 = load ptr, ptr %6, align 8, !dbg !3366
  %50 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %49, i32 0, i32 0, !dbg !3366
  %51 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %50, i32 0, i32 8, !dbg !3366
  %52 = load ptr, ptr %51, align 8, !dbg !3366
  %53 = load ptr, ptr %7, align 8, !dbg !3366
  %54 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 0, !dbg !3366
  %55 = load i32, ptr %9, align 4, !dbg !3366
  %56 = sext i32 %55 to i64, !dbg !3366
  %57 = call i64 %48(ptr noundef %52, ptr noundef %53, ptr noundef %54, i64 noundef %56), !dbg !3366
  %58 = load i32, ptr %9, align 4, !dbg !3368
  %59 = sext i32 %58 to i64, !dbg !3369
  %60 = icmp ne i64 %57, %59, !dbg !3370
  br i1 %60, label %61, label %62, !dbg !3371

61:                                               ; preds = %44
  store i32 -1, ptr %5, align 4, !dbg !3372
  br label %63, !dbg !3372

62:                                               ; preds = %44
  store i32 0, ptr %5, align 4, !dbg !3373
  br label %63, !dbg !3373

63:                                               ; preds = %62, %61
  %64 = load i32, ptr %5, align 4, !dbg !3374
  ret i32 %64, !dbg !3374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipFlush(ptr noundef %0) #0 !dbg !3375 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3376, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3378, metadata !DIExpression()), !dbg !3379
  %5 = load ptr, ptr %3, align 8, !dbg !3380
  %6 = icmp eq ptr %5, null, !dbg !3382
  br i1 %6, label %7, label %8, !dbg !3383

7:                                                ; preds = %1
  store i32 -102, ptr %2, align 4, !dbg !3384
  br label %24, !dbg !3384

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !3385
  store ptr %9, ptr %4, align 8, !dbg !3386
  %10 = load ptr, ptr %4, align 8, !dbg !3387
  %11 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 0, !dbg !3387
  %12 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %11, i32 0, i32 0, !dbg !3387
  %13 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %12, i32 0, i32 3, !dbg !3387
  %14 = load ptr, ptr %13, align 8, !dbg !3387
  %15 = load ptr, ptr %4, align 8, !dbg !3387
  %16 = getelementptr inbounds %struct.zip64_internal, ptr %15, i32 0, i32 0, !dbg !3387
  %17 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %16, i32 0, i32 0, !dbg !3387
  %18 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %17, i32 0, i32 8, !dbg !3387
  %19 = load ptr, ptr %18, align 8, !dbg !3387
  %20 = load ptr, ptr %4, align 8, !dbg !3387
  %21 = getelementptr inbounds %struct.zip64_internal, ptr %20, i32 0, i32 1, !dbg !3387
  %22 = load ptr, ptr %21, align 8, !dbg !3387
  %23 = call i32 %14(ptr noundef %19, ptr noundef %22), !dbg !3387
  store i32 %23, ptr %2, align 4, !dbg !3388
  br label %24, !dbg !3388

24:                                               ; preds = %8, %7
  %25 = load i32, ptr %2, align 4, !dbg !3389
  ret i32 %25, !dbg !3389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipClose(ptr noundef %0, ptr noundef %1) #0 !dbg !3390 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3393, metadata !DIExpression()), !dbg !3394
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3395, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3399, metadata !DIExpression()), !dbg !3400
  store i32 0, ptr %7, align 4, !dbg !3400
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3401, metadata !DIExpression()), !dbg !3402
  store i64 0, ptr %8, align 8, !dbg !3402
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3403, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3405, metadata !DIExpression()), !dbg !3406
  %13 = load ptr, ptr %4, align 8, !dbg !3407
  %14 = icmp eq ptr %13, null, !dbg !3409
  br i1 %14, label %15, label %16, !dbg !3410

15:                                               ; preds = %2
  store i32 -102, ptr %3, align 4, !dbg !3411
  br label %175, !dbg !3411

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8, !dbg !3412
  store ptr %17, ptr %6, align 8, !dbg !3413
  %18 = load ptr, ptr %6, align 8, !dbg !3414
  %19 = getelementptr inbounds %struct.zip64_internal, ptr %18, i32 0, i32 3, !dbg !3416
  %20 = load i32, ptr %19, align 8, !dbg !3416
  %21 = icmp eq i32 %20, 1, !dbg !3417
  br i1 %21, label %22, label %25, !dbg !3418

22:                                               ; preds = %16
  %23 = load ptr, ptr %4, align 8, !dbg !3419
  %24 = call i32 @zipCloseFileInZip(ptr noundef %23), !dbg !3421
  store i32 %24, ptr %7, align 4, !dbg !3422
  br label %25, !dbg !3423

25:                                               ; preds = %22, %16
  %26 = load ptr, ptr %5, align 8, !dbg !3424
  %27 = icmp eq ptr %26, null, !dbg !3426
  br i1 %27, label %28, label %32, !dbg !3427

28:                                               ; preds = %25
  %29 = load ptr, ptr %6, align 8, !dbg !3428
  %30 = getelementptr inbounds %struct.zip64_internal, ptr %29, i32 0, i32 8, !dbg !3429
  %31 = load ptr, ptr %30, align 8, !dbg !3429
  store ptr %31, ptr %5, align 8, !dbg !3430
  br label %32, !dbg !3431

32:                                               ; preds = %28, %25
  %33 = load ptr, ptr %6, align 8, !dbg !3432
  %34 = getelementptr inbounds %struct.zip64_internal, ptr %33, i32 0, i32 0, !dbg !3432
  %35 = load ptr, ptr %6, align 8, !dbg !3432
  %36 = getelementptr inbounds %struct.zip64_internal, ptr %35, i32 0, i32 1, !dbg !3432
  %37 = load ptr, ptr %36, align 8, !dbg !3432
  %38 = call i64 @call_ztell64(ptr noundef %34, ptr noundef %37), !dbg !3432
  store i64 %38, ptr %9, align 8, !dbg !3433
  %39 = load i32, ptr %7, align 4, !dbg !3434
  %40 = icmp eq i32 %39, 0, !dbg !3436
  br i1 %40, label %41, label %94, !dbg !3437

41:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3438, metadata !DIExpression()), !dbg !3440
  %42 = load ptr, ptr %6, align 8, !dbg !3441
  %43 = getelementptr inbounds %struct.zip64_internal, ptr %42, i32 0, i32 2, !dbg !3442
  %44 = getelementptr inbounds %struct.linkedlist_data_s, ptr %43, i32 0, i32 0, !dbg !3443
  %45 = load ptr, ptr %44, align 8, !dbg !3443
  store ptr %45, ptr %11, align 8, !dbg !3440
  br label %46, !dbg !3444

46:                                               ; preds = %84, %41
  %47 = load ptr, ptr %11, align 8, !dbg !3445
  %48 = icmp ne ptr %47, null, !dbg !3446
  br i1 %48, label %49, label %93, !dbg !3444

49:                                               ; preds = %46
  %50 = load i32, ptr %7, align 4, !dbg !3447
  %51 = icmp eq i32 %50, 0, !dbg !3450
  br i1 %51, label %52, label %84, !dbg !3451

52:                                               ; preds = %49
  %53 = load ptr, ptr %11, align 8, !dbg !3452
  %54 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %53, i32 0, i32 2, !dbg !3453
  %55 = load i64, ptr %54, align 8, !dbg !3453
  %56 = icmp ugt i64 %55, 0, !dbg !3454
  br i1 %56, label %57, label %84, !dbg !3455

57:                                               ; preds = %52
  %58 = load ptr, ptr %6, align 8, !dbg !3456
  %59 = getelementptr inbounds %struct.zip64_internal, ptr %58, i32 0, i32 0, !dbg !3456
  %60 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %59, i32 0, i32 0, !dbg !3456
  %61 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %60, i32 0, i32 2, !dbg !3456
  %62 = load ptr, ptr %61, align 8, !dbg !3456
  %63 = load ptr, ptr %6, align 8, !dbg !3456
  %64 = getelementptr inbounds %struct.zip64_internal, ptr %63, i32 0, i32 0, !dbg !3456
  %65 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %64, i32 0, i32 0, !dbg !3456
  %66 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %65, i32 0, i32 8, !dbg !3456
  %67 = load ptr, ptr %66, align 8, !dbg !3456
  %68 = load ptr, ptr %6, align 8, !dbg !3456
  %69 = getelementptr inbounds %struct.zip64_internal, ptr %68, i32 0, i32 1, !dbg !3456
  %70 = load ptr, ptr %69, align 8, !dbg !3456
  %71 = load ptr, ptr %11, align 8, !dbg !3456
  %72 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %71, i32 0, i32 4, !dbg !3456
  %73 = getelementptr inbounds [4080 x i8], ptr %72, i64 0, i64 0, !dbg !3456
  %74 = load ptr, ptr %11, align 8, !dbg !3456
  %75 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %74, i32 0, i32 2, !dbg !3456
  %76 = load i64, ptr %75, align 8, !dbg !3456
  %77 = call i64 %62(ptr noundef %67, ptr noundef %70, ptr noundef %73, i64 noundef %76), !dbg !3456
  %78 = load ptr, ptr %11, align 8, !dbg !3459
  %79 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %78, i32 0, i32 2, !dbg !3460
  %80 = load i64, ptr %79, align 8, !dbg !3460
  %81 = icmp ne i64 %77, %80, !dbg !3461
  br i1 %81, label %82, label %83, !dbg !3462

82:                                               ; preds = %57
  store i32 -1, ptr %7, align 4, !dbg !3463
  br label %83, !dbg !3464

83:                                               ; preds = %82, %57
  br label %84, !dbg !3465

84:                                               ; preds = %83, %52, %49
  %85 = load ptr, ptr %11, align 8, !dbg !3466
  %86 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %85, i32 0, i32 2, !dbg !3467
  %87 = load i64, ptr %86, align 8, !dbg !3467
  %88 = load i64, ptr %8, align 8, !dbg !3468
  %89 = add i64 %88, %87, !dbg !3468
  store i64 %89, ptr %8, align 8, !dbg !3468
  %90 = load ptr, ptr %11, align 8, !dbg !3469
  %91 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %90, i32 0, i32 0, !dbg !3470
  %92 = load ptr, ptr %91, align 8, !dbg !3470
  store ptr %92, ptr %11, align 8, !dbg !3471
  br label %46, !dbg !3444, !llvm.loop !3472

93:                                               ; preds = %46
  br label %94, !dbg !3474

94:                                               ; preds = %93, %32
  %95 = load ptr, ptr %6, align 8, !dbg !3475
  %96 = getelementptr inbounds %struct.zip64_internal, ptr %95, i32 0, i32 2, !dbg !3476
  call void @free_linkedlist(ptr noundef %96), !dbg !3477
  %97 = load i64, ptr %9, align 8, !dbg !3478
  %98 = load ptr, ptr %6, align 8, !dbg !3479
  %99 = getelementptr inbounds %struct.zip64_internal, ptr %98, i32 0, i32 6, !dbg !3480
  %100 = load i64, ptr %99, align 8, !dbg !3480
  %101 = sub i64 %97, %100, !dbg !3481
  store i64 %101, ptr %10, align 8, !dbg !3482
  %102 = load i64, ptr %10, align 8, !dbg !3483
  %103 = icmp uge i64 %102, 4294967295, !dbg !3485
  br i1 %103, label %109, label %104, !dbg !3486

104:                                              ; preds = %94
  %105 = load ptr, ptr %6, align 8, !dbg !3487
  %106 = getelementptr inbounds %struct.zip64_internal, ptr %105, i32 0, i32 7, !dbg !3488
  %107 = load i64, ptr %106, align 8, !dbg !3488
  %108 = icmp ugt i64 %107, 65535, !dbg !3489
  br i1 %108, label %109, label %123, !dbg !3490

109:                                              ; preds = %104, %94
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3491, metadata !DIExpression()), !dbg !3493
  %110 = load ptr, ptr %6, align 8, !dbg !3494
  %111 = getelementptr inbounds %struct.zip64_internal, ptr %110, i32 0, i32 0, !dbg !3494
  %112 = load ptr, ptr %6, align 8, !dbg !3494
  %113 = getelementptr inbounds %struct.zip64_internal, ptr %112, i32 0, i32 1, !dbg !3494
  %114 = load ptr, ptr %113, align 8, !dbg !3494
  %115 = call i64 @call_ztell64(ptr noundef %111, ptr noundef %114), !dbg !3494
  store i64 %115, ptr %12, align 8, !dbg !3493
  %116 = load ptr, ptr %6, align 8, !dbg !3495
  %117 = load i64, ptr %8, align 8, !dbg !3496
  %118 = load i64, ptr %9, align 8, !dbg !3497
  %119 = call i32 @Write_Zip64EndOfCentralDirectoryRecord(ptr noundef %116, i64 noundef %117, i64 noundef %118), !dbg !3498
  %120 = load ptr, ptr %6, align 8, !dbg !3499
  %121 = load i64, ptr %12, align 8, !dbg !3500
  %122 = call i32 @Write_Zip64EndOfCentralDirectoryLocator(ptr noundef %120, i64 noundef %121), !dbg !3501
  br label %123, !dbg !3502

123:                                              ; preds = %109, %104
  %124 = load i32, ptr %7, align 4, !dbg !3503
  %125 = icmp eq i32 %124, 0, !dbg !3505
  br i1 %125, label %126, label %131, !dbg !3506

126:                                              ; preds = %123
  %127 = load ptr, ptr %6, align 8, !dbg !3507
  %128 = load i64, ptr %8, align 8, !dbg !3508
  %129 = load i64, ptr %9, align 8, !dbg !3509
  %130 = call i32 @Write_EndOfCentralDirectoryRecord(ptr noundef %127, i64 noundef %128, i64 noundef %129), !dbg !3510
  store i32 %130, ptr %7, align 4, !dbg !3511
  br label %131, !dbg !3512

131:                                              ; preds = %126, %123
  %132 = load i32, ptr %7, align 4, !dbg !3513
  %133 = icmp eq i32 %132, 0, !dbg !3515
  br i1 %133, label %134, label %138, !dbg !3516

134:                                              ; preds = %131
  %135 = load ptr, ptr %6, align 8, !dbg !3517
  %136 = load ptr, ptr %5, align 8, !dbg !3518
  %137 = call i32 @Write_GlobalComment(ptr noundef %135, ptr noundef %136), !dbg !3519
  store i32 %137, ptr %7, align 4, !dbg !3520
  br label %138, !dbg !3521

138:                                              ; preds = %134, %131
  %139 = load ptr, ptr %6, align 8, !dbg !3522
  %140 = getelementptr inbounds %struct.zip64_internal, ptr %139, i32 0, i32 0, !dbg !3522
  %141 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %140, i32 0, i32 0, !dbg !3522
  %142 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %141, i32 0, i32 6, !dbg !3522
  %143 = load ptr, ptr %142, align 8, !dbg !3522
  %144 = load ptr, ptr %6, align 8, !dbg !3522
  %145 = getelementptr inbounds %struct.zip64_internal, ptr %144, i32 0, i32 0, !dbg !3522
  %146 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %145, i32 0, i32 0, !dbg !3522
  %147 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %146, i32 0, i32 8, !dbg !3522
  %148 = load ptr, ptr %147, align 8, !dbg !3522
  %149 = load ptr, ptr %6, align 8, !dbg !3522
  %150 = getelementptr inbounds %struct.zip64_internal, ptr %149, i32 0, i32 1, !dbg !3522
  %151 = load ptr, ptr %150, align 8, !dbg !3522
  %152 = call i32 %143(ptr noundef %148, ptr noundef %151), !dbg !3522
  %153 = icmp ne i32 %152, 0, !dbg !3524
  br i1 %153, label %154, label %159, !dbg !3525

154:                                              ; preds = %138
  %155 = load i32, ptr %7, align 4, !dbg !3526
  %156 = icmp eq i32 %155, 0, !dbg !3528
  br i1 %156, label %157, label %158, !dbg !3529

157:                                              ; preds = %154
  store i32 -1, ptr %7, align 4, !dbg !3530
  br label %158, !dbg !3531

158:                                              ; preds = %157, %154
  br label %159, !dbg !3532

159:                                              ; preds = %158, %138
  %160 = load ptr, ptr %6, align 8, !dbg !3533
  %161 = getelementptr inbounds %struct.zip64_internal, ptr %160, i32 0, i32 8, !dbg !3533
  %162 = load ptr, ptr %161, align 8, !dbg !3533
  %163 = icmp ne ptr %162, null, !dbg !3533
  br i1 %163, label %164, label %168, !dbg !3536

164:                                              ; preds = %159
  %165 = load ptr, ptr %6, align 8, !dbg !3533
  %166 = getelementptr inbounds %struct.zip64_internal, ptr %165, i32 0, i32 8, !dbg !3533
  %167 = load ptr, ptr %166, align 8, !dbg !3533
  call void @free(ptr noundef %167) #9, !dbg !3533
  br label %168, !dbg !3533

168:                                              ; preds = %164, %159
  %169 = load ptr, ptr %6, align 8, !dbg !3537
  %170 = icmp ne ptr %169, null, !dbg !3537
  br i1 %170, label %171, label %173, !dbg !3540

171:                                              ; preds = %168
  %172 = load ptr, ptr %6, align 8, !dbg !3537
  call void @free(ptr noundef %172) #9, !dbg !3537
  br label %173, !dbg !3537

173:                                              ; preds = %171, %168
  %174 = load i32, ptr %7, align 4, !dbg !3541
  store i32 %174, ptr %3, align 4, !dbg !3542
  br label %175, !dbg !3542

175:                                              ; preds = %173, %15
  %176 = load i32, ptr %3, align 4, !dbg !3543
  ret i32 %176, !dbg !3543
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_linkedlist(ptr noundef %0) #0 !dbg !3544 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3545, metadata !DIExpression()), !dbg !3546
  %3 = load ptr, ptr %2, align 8, !dbg !3547
  %4 = getelementptr inbounds %struct.linkedlist_data_s, ptr %3, i32 0, i32 0, !dbg !3548
  %5 = load ptr, ptr %4, align 8, !dbg !3548
  call void @free_datablock(ptr noundef %5), !dbg !3549
  %6 = load ptr, ptr %2, align 8, !dbg !3550
  %7 = getelementptr inbounds %struct.linkedlist_data_s, ptr %6, i32 0, i32 1, !dbg !3551
  store ptr null, ptr %7, align 8, !dbg !3552
  %8 = load ptr, ptr %2, align 8, !dbg !3553
  %9 = getelementptr inbounds %struct.linkedlist_data_s, ptr %8, i32 0, i32 0, !dbg !3554
  store ptr null, ptr %9, align 8, !dbg !3555
  ret void, !dbg !3556
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Write_Zip64EndOfCentralDirectoryRecord(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 !dbg !3557 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3560, metadata !DIExpression()), !dbg !3561
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3562, metadata !DIExpression()), !dbg !3563
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3564, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3566, metadata !DIExpression()), !dbg !3567
  store i32 0, ptr %7, align 4, !dbg !3567
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3568, metadata !DIExpression()), !dbg !3569
  store i64 44, ptr %8, align 8, !dbg !3569
  %10 = load ptr, ptr %4, align 8, !dbg !3570
  %11 = getelementptr inbounds %struct.zip64_internal, ptr %10, i32 0, i32 0, !dbg !3571
  %12 = load ptr, ptr %4, align 8, !dbg !3572
  %13 = getelementptr inbounds %struct.zip64_internal, ptr %12, i32 0, i32 1, !dbg !3573
  %14 = load ptr, ptr %13, align 8, !dbg !3573
  %15 = call i32 @zip64local_putValue(ptr noundef %11, ptr noundef %14, i64 noundef 101075792, i32 noundef 4), !dbg !3574
  store i32 %15, ptr %7, align 4, !dbg !3575
  %16 = load i32, ptr %7, align 4, !dbg !3576
  %17 = icmp eq i32 %16, 0, !dbg !3578
  br i1 %17, label %18, label %26, !dbg !3579

18:                                               ; preds = %3
  %19 = load ptr, ptr %4, align 8, !dbg !3580
  %20 = getelementptr inbounds %struct.zip64_internal, ptr %19, i32 0, i32 0, !dbg !3581
  %21 = load ptr, ptr %4, align 8, !dbg !3582
  %22 = getelementptr inbounds %struct.zip64_internal, ptr %21, i32 0, i32 1, !dbg !3583
  %23 = load ptr, ptr %22, align 8, !dbg !3583
  %24 = load i64, ptr %8, align 8, !dbg !3584
  %25 = call i32 @zip64local_putValue(ptr noundef %20, ptr noundef %23, i64 noundef %24, i32 noundef 8), !dbg !3585
  store i32 %25, ptr %7, align 4, !dbg !3586
  br label %26, !dbg !3587

26:                                               ; preds = %18, %3
  %27 = load i32, ptr %7, align 4, !dbg !3588
  %28 = icmp eq i32 %27, 0, !dbg !3590
  br i1 %28, label %29, label %36, !dbg !3591

29:                                               ; preds = %26
  %30 = load ptr, ptr %4, align 8, !dbg !3592
  %31 = getelementptr inbounds %struct.zip64_internal, ptr %30, i32 0, i32 0, !dbg !3593
  %32 = load ptr, ptr %4, align 8, !dbg !3594
  %33 = getelementptr inbounds %struct.zip64_internal, ptr %32, i32 0, i32 1, !dbg !3595
  %34 = load ptr, ptr %33, align 8, !dbg !3595
  %35 = call i32 @zip64local_putValue(ptr noundef %31, ptr noundef %34, i64 noundef 45, i32 noundef 2), !dbg !3596
  store i32 %35, ptr %7, align 4, !dbg !3597
  br label %36, !dbg !3598

36:                                               ; preds = %29, %26
  %37 = load i32, ptr %7, align 4, !dbg !3599
  %38 = icmp eq i32 %37, 0, !dbg !3601
  br i1 %38, label %39, label %46, !dbg !3602

39:                                               ; preds = %36
  %40 = load ptr, ptr %4, align 8, !dbg !3603
  %41 = getelementptr inbounds %struct.zip64_internal, ptr %40, i32 0, i32 0, !dbg !3604
  %42 = load ptr, ptr %4, align 8, !dbg !3605
  %43 = getelementptr inbounds %struct.zip64_internal, ptr %42, i32 0, i32 1, !dbg !3606
  %44 = load ptr, ptr %43, align 8, !dbg !3606
  %45 = call i32 @zip64local_putValue(ptr noundef %41, ptr noundef %44, i64 noundef 45, i32 noundef 2), !dbg !3607
  store i32 %45, ptr %7, align 4, !dbg !3608
  br label %46, !dbg !3609

46:                                               ; preds = %39, %36
  %47 = load i32, ptr %7, align 4, !dbg !3610
  %48 = icmp eq i32 %47, 0, !dbg !3612
  br i1 %48, label %49, label %56, !dbg !3613

49:                                               ; preds = %46
  %50 = load ptr, ptr %4, align 8, !dbg !3614
  %51 = getelementptr inbounds %struct.zip64_internal, ptr %50, i32 0, i32 0, !dbg !3615
  %52 = load ptr, ptr %4, align 8, !dbg !3616
  %53 = getelementptr inbounds %struct.zip64_internal, ptr %52, i32 0, i32 1, !dbg !3617
  %54 = load ptr, ptr %53, align 8, !dbg !3617
  %55 = call i32 @zip64local_putValue(ptr noundef %51, ptr noundef %54, i64 noundef 0, i32 noundef 4), !dbg !3618
  store i32 %55, ptr %7, align 4, !dbg !3619
  br label %56, !dbg !3620

56:                                               ; preds = %49, %46
  %57 = load i32, ptr %7, align 4, !dbg !3621
  %58 = icmp eq i32 %57, 0, !dbg !3623
  br i1 %58, label %59, label %66, !dbg !3624

59:                                               ; preds = %56
  %60 = load ptr, ptr %4, align 8, !dbg !3625
  %61 = getelementptr inbounds %struct.zip64_internal, ptr %60, i32 0, i32 0, !dbg !3626
  %62 = load ptr, ptr %4, align 8, !dbg !3627
  %63 = getelementptr inbounds %struct.zip64_internal, ptr %62, i32 0, i32 1, !dbg !3628
  %64 = load ptr, ptr %63, align 8, !dbg !3628
  %65 = call i32 @zip64local_putValue(ptr noundef %61, ptr noundef %64, i64 noundef 0, i32 noundef 4), !dbg !3629
  store i32 %65, ptr %7, align 4, !dbg !3630
  br label %66, !dbg !3631

66:                                               ; preds = %59, %56
  %67 = load i32, ptr %7, align 4, !dbg !3632
  %68 = icmp eq i32 %67, 0, !dbg !3634
  br i1 %68, label %69, label %79, !dbg !3635

69:                                               ; preds = %66
  %70 = load ptr, ptr %4, align 8, !dbg !3636
  %71 = getelementptr inbounds %struct.zip64_internal, ptr %70, i32 0, i32 0, !dbg !3637
  %72 = load ptr, ptr %4, align 8, !dbg !3638
  %73 = getelementptr inbounds %struct.zip64_internal, ptr %72, i32 0, i32 1, !dbg !3639
  %74 = load ptr, ptr %73, align 8, !dbg !3639
  %75 = load ptr, ptr %4, align 8, !dbg !3640
  %76 = getelementptr inbounds %struct.zip64_internal, ptr %75, i32 0, i32 7, !dbg !3641
  %77 = load i64, ptr %76, align 8, !dbg !3641
  %78 = call i32 @zip64local_putValue(ptr noundef %71, ptr noundef %74, i64 noundef %77, i32 noundef 8), !dbg !3642
  store i32 %78, ptr %7, align 4, !dbg !3643
  br label %79, !dbg !3644

79:                                               ; preds = %69, %66
  %80 = load i32, ptr %7, align 4, !dbg !3645
  %81 = icmp eq i32 %80, 0, !dbg !3647
  br i1 %81, label %82, label %92, !dbg !3648

82:                                               ; preds = %79
  %83 = load ptr, ptr %4, align 8, !dbg !3649
  %84 = getelementptr inbounds %struct.zip64_internal, ptr %83, i32 0, i32 0, !dbg !3650
  %85 = load ptr, ptr %4, align 8, !dbg !3651
  %86 = getelementptr inbounds %struct.zip64_internal, ptr %85, i32 0, i32 1, !dbg !3652
  %87 = load ptr, ptr %86, align 8, !dbg !3652
  %88 = load ptr, ptr %4, align 8, !dbg !3653
  %89 = getelementptr inbounds %struct.zip64_internal, ptr %88, i32 0, i32 7, !dbg !3654
  %90 = load i64, ptr %89, align 8, !dbg !3654
  %91 = call i32 @zip64local_putValue(ptr noundef %84, ptr noundef %87, i64 noundef %90, i32 noundef 8), !dbg !3655
  store i32 %91, ptr %7, align 4, !dbg !3656
  br label %92, !dbg !3657

92:                                               ; preds = %82, %79
  %93 = load i32, ptr %7, align 4, !dbg !3658
  %94 = icmp eq i32 %93, 0, !dbg !3660
  br i1 %94, label %95, label %103, !dbg !3661

95:                                               ; preds = %92
  %96 = load ptr, ptr %4, align 8, !dbg !3662
  %97 = getelementptr inbounds %struct.zip64_internal, ptr %96, i32 0, i32 0, !dbg !3663
  %98 = load ptr, ptr %4, align 8, !dbg !3664
  %99 = getelementptr inbounds %struct.zip64_internal, ptr %98, i32 0, i32 1, !dbg !3665
  %100 = load ptr, ptr %99, align 8, !dbg !3665
  %101 = load i64, ptr %5, align 8, !dbg !3666
  %102 = call i32 @zip64local_putValue(ptr noundef %97, ptr noundef %100, i64 noundef %101, i32 noundef 8), !dbg !3667
  store i32 %102, ptr %7, align 4, !dbg !3668
  br label %103, !dbg !3669

103:                                              ; preds = %95, %92
  %104 = load i32, ptr %7, align 4, !dbg !3670
  %105 = icmp eq i32 %104, 0, !dbg !3672
  br i1 %105, label %106, label %119, !dbg !3673

106:                                              ; preds = %103
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3674, metadata !DIExpression()), !dbg !3676
  %107 = load i64, ptr %6, align 8, !dbg !3677
  %108 = load ptr, ptr %4, align 8, !dbg !3678
  %109 = getelementptr inbounds %struct.zip64_internal, ptr %108, i32 0, i32 6, !dbg !3679
  %110 = load i64, ptr %109, align 8, !dbg !3679
  %111 = sub i64 %107, %110, !dbg !3680
  store i64 %111, ptr %9, align 8, !dbg !3676
  %112 = load ptr, ptr %4, align 8, !dbg !3681
  %113 = getelementptr inbounds %struct.zip64_internal, ptr %112, i32 0, i32 0, !dbg !3682
  %114 = load ptr, ptr %4, align 8, !dbg !3683
  %115 = getelementptr inbounds %struct.zip64_internal, ptr %114, i32 0, i32 1, !dbg !3684
  %116 = load ptr, ptr %115, align 8, !dbg !3684
  %117 = load i64, ptr %9, align 8, !dbg !3685
  %118 = call i32 @zip64local_putValue(ptr noundef %113, ptr noundef %116, i64 noundef %117, i32 noundef 8), !dbg !3686
  store i32 %118, ptr %7, align 4, !dbg !3687
  br label %119, !dbg !3688

119:                                              ; preds = %106, %103
  %120 = load i32, ptr %7, align 4, !dbg !3689
  ret i32 %120, !dbg !3690
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Write_Zip64EndOfCentralDirectoryLocator(ptr noundef %0, i64 noundef %1) #0 !dbg !3691 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3694, metadata !DIExpression()), !dbg !3695
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3696, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3698, metadata !DIExpression()), !dbg !3699
  store i32 0, ptr %5, align 4, !dbg !3699
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3700, metadata !DIExpression()), !dbg !3701
  %7 = load i64, ptr %4, align 8, !dbg !3702
  %8 = load ptr, ptr %3, align 8, !dbg !3703
  %9 = getelementptr inbounds %struct.zip64_internal, ptr %8, i32 0, i32 6, !dbg !3704
  %10 = load i64, ptr %9, align 8, !dbg !3704
  %11 = sub i64 %7, %10, !dbg !3705
  store i64 %11, ptr %6, align 8, !dbg !3701
  %12 = load ptr, ptr %3, align 8, !dbg !3706
  %13 = getelementptr inbounds %struct.zip64_internal, ptr %12, i32 0, i32 0, !dbg !3707
  %14 = load ptr, ptr %3, align 8, !dbg !3708
  %15 = getelementptr inbounds %struct.zip64_internal, ptr %14, i32 0, i32 1, !dbg !3709
  %16 = load ptr, ptr %15, align 8, !dbg !3709
  %17 = call i32 @zip64local_putValue(ptr noundef %13, ptr noundef %16, i64 noundef 117853008, i32 noundef 4), !dbg !3710
  store i32 %17, ptr %5, align 4, !dbg !3711
  %18 = load i32, ptr %5, align 4, !dbg !3712
  %19 = icmp eq i32 %18, 0, !dbg !3714
  br i1 %19, label %20, label %27, !dbg !3715

20:                                               ; preds = %2
  %21 = load ptr, ptr %3, align 8, !dbg !3716
  %22 = getelementptr inbounds %struct.zip64_internal, ptr %21, i32 0, i32 0, !dbg !3717
  %23 = load ptr, ptr %3, align 8, !dbg !3718
  %24 = getelementptr inbounds %struct.zip64_internal, ptr %23, i32 0, i32 1, !dbg !3719
  %25 = load ptr, ptr %24, align 8, !dbg !3719
  %26 = call i32 @zip64local_putValue(ptr noundef %22, ptr noundef %25, i64 noundef 0, i32 noundef 4), !dbg !3720
  store i32 %26, ptr %5, align 4, !dbg !3721
  br label %27, !dbg !3722

27:                                               ; preds = %20, %2
  %28 = load i32, ptr %5, align 4, !dbg !3723
  %29 = icmp eq i32 %28, 0, !dbg !3725
  br i1 %29, label %30, label %38, !dbg !3726

30:                                               ; preds = %27
  %31 = load ptr, ptr %3, align 8, !dbg !3727
  %32 = getelementptr inbounds %struct.zip64_internal, ptr %31, i32 0, i32 0, !dbg !3728
  %33 = load ptr, ptr %3, align 8, !dbg !3729
  %34 = getelementptr inbounds %struct.zip64_internal, ptr %33, i32 0, i32 1, !dbg !3730
  %35 = load ptr, ptr %34, align 8, !dbg !3730
  %36 = load i64, ptr %6, align 8, !dbg !3731
  %37 = call i32 @zip64local_putValue(ptr noundef %32, ptr noundef %35, i64 noundef %36, i32 noundef 8), !dbg !3732
  store i32 %37, ptr %5, align 4, !dbg !3733
  br label %38, !dbg !3734

38:                                               ; preds = %30, %27
  %39 = load i32, ptr %5, align 4, !dbg !3735
  %40 = icmp eq i32 %39, 0, !dbg !3737
  br i1 %40, label %41, label %48, !dbg !3738

41:                                               ; preds = %38
  %42 = load ptr, ptr %3, align 8, !dbg !3739
  %43 = getelementptr inbounds %struct.zip64_internal, ptr %42, i32 0, i32 0, !dbg !3740
  %44 = load ptr, ptr %3, align 8, !dbg !3741
  %45 = getelementptr inbounds %struct.zip64_internal, ptr %44, i32 0, i32 1, !dbg !3742
  %46 = load ptr, ptr %45, align 8, !dbg !3742
  %47 = call i32 @zip64local_putValue(ptr noundef %43, ptr noundef %46, i64 noundef 1, i32 noundef 4), !dbg !3743
  store i32 %47, ptr %5, align 4, !dbg !3744
  br label %48, !dbg !3745

48:                                               ; preds = %41, %38
  %49 = load i32, ptr %5, align 4, !dbg !3746
  ret i32 %49, !dbg !3747
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Write_EndOfCentralDirectoryRecord(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 !dbg !3748 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3749, metadata !DIExpression()), !dbg !3750
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3751, metadata !DIExpression()), !dbg !3752
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3753, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3755, metadata !DIExpression()), !dbg !3756
  store i32 0, ptr %7, align 4, !dbg !3756
  %9 = load ptr, ptr %4, align 8, !dbg !3757
  %10 = getelementptr inbounds %struct.zip64_internal, ptr %9, i32 0, i32 0, !dbg !3758
  %11 = load ptr, ptr %4, align 8, !dbg !3759
  %12 = getelementptr inbounds %struct.zip64_internal, ptr %11, i32 0, i32 1, !dbg !3760
  %13 = load ptr, ptr %12, align 8, !dbg !3760
  %14 = call i32 @zip64local_putValue(ptr noundef %10, ptr noundef %13, i64 noundef 101010256, i32 noundef 4), !dbg !3761
  store i32 %14, ptr %7, align 4, !dbg !3762
  %15 = load i32, ptr %7, align 4, !dbg !3763
  %16 = icmp eq i32 %15, 0, !dbg !3765
  br i1 %16, label %17, label %24, !dbg !3766

17:                                               ; preds = %3
  %18 = load ptr, ptr %4, align 8, !dbg !3767
  %19 = getelementptr inbounds %struct.zip64_internal, ptr %18, i32 0, i32 0, !dbg !3768
  %20 = load ptr, ptr %4, align 8, !dbg !3769
  %21 = getelementptr inbounds %struct.zip64_internal, ptr %20, i32 0, i32 1, !dbg !3770
  %22 = load ptr, ptr %21, align 8, !dbg !3770
  %23 = call i32 @zip64local_putValue(ptr noundef %19, ptr noundef %22, i64 noundef 0, i32 noundef 2), !dbg !3771
  store i32 %23, ptr %7, align 4, !dbg !3772
  br label %24, !dbg !3773

24:                                               ; preds = %17, %3
  %25 = load i32, ptr %7, align 4, !dbg !3774
  %26 = icmp eq i32 %25, 0, !dbg !3776
  br i1 %26, label %27, label %34, !dbg !3777

27:                                               ; preds = %24
  %28 = load ptr, ptr %4, align 8, !dbg !3778
  %29 = getelementptr inbounds %struct.zip64_internal, ptr %28, i32 0, i32 0, !dbg !3779
  %30 = load ptr, ptr %4, align 8, !dbg !3780
  %31 = getelementptr inbounds %struct.zip64_internal, ptr %30, i32 0, i32 1, !dbg !3781
  %32 = load ptr, ptr %31, align 8, !dbg !3781
  %33 = call i32 @zip64local_putValue(ptr noundef %29, ptr noundef %32, i64 noundef 0, i32 noundef 2), !dbg !3782
  store i32 %33, ptr %7, align 4, !dbg !3783
  br label %34, !dbg !3784

34:                                               ; preds = %27, %24
  %35 = load i32, ptr %7, align 4, !dbg !3785
  %36 = icmp eq i32 %35, 0, !dbg !3787
  br i1 %36, label %37, label %60, !dbg !3788

37:                                               ; preds = %34
  %38 = load ptr, ptr %4, align 8, !dbg !3789
  %39 = getelementptr inbounds %struct.zip64_internal, ptr %38, i32 0, i32 7, !dbg !3793
  %40 = load i64, ptr %39, align 8, !dbg !3793
  %41 = icmp uge i64 %40, 65535, !dbg !3794
  br i1 %41, label %42, label %49, !dbg !3795

42:                                               ; preds = %37
  %43 = load ptr, ptr %4, align 8, !dbg !3796
  %44 = getelementptr inbounds %struct.zip64_internal, ptr %43, i32 0, i32 0, !dbg !3797
  %45 = load ptr, ptr %4, align 8, !dbg !3798
  %46 = getelementptr inbounds %struct.zip64_internal, ptr %45, i32 0, i32 1, !dbg !3799
  %47 = load ptr, ptr %46, align 8, !dbg !3799
  %48 = call i32 @zip64local_putValue(ptr noundef %44, ptr noundef %47, i64 noundef 65535, i32 noundef 2), !dbg !3800
  store i32 %48, ptr %7, align 4, !dbg !3801
  br label %59, !dbg !3802

49:                                               ; preds = %37
  %50 = load ptr, ptr %4, align 8, !dbg !3803
  %51 = getelementptr inbounds %struct.zip64_internal, ptr %50, i32 0, i32 0, !dbg !3804
  %52 = load ptr, ptr %4, align 8, !dbg !3805
  %53 = getelementptr inbounds %struct.zip64_internal, ptr %52, i32 0, i32 1, !dbg !3806
  %54 = load ptr, ptr %53, align 8, !dbg !3806
  %55 = load ptr, ptr %4, align 8, !dbg !3807
  %56 = getelementptr inbounds %struct.zip64_internal, ptr %55, i32 0, i32 7, !dbg !3808
  %57 = load i64, ptr %56, align 8, !dbg !3808
  %58 = call i32 @zip64local_putValue(ptr noundef %51, ptr noundef %54, i64 noundef %57, i32 noundef 2), !dbg !3809
  store i32 %58, ptr %7, align 4, !dbg !3810
  br label %59

59:                                               ; preds = %49, %42
  br label %60, !dbg !3811

60:                                               ; preds = %59, %34
  %61 = load i32, ptr %7, align 4, !dbg !3812
  %62 = icmp eq i32 %61, 0, !dbg !3814
  br i1 %62, label %63, label %86, !dbg !3815

63:                                               ; preds = %60
  %64 = load ptr, ptr %4, align 8, !dbg !3816
  %65 = getelementptr inbounds %struct.zip64_internal, ptr %64, i32 0, i32 7, !dbg !3819
  %66 = load i64, ptr %65, align 8, !dbg !3819
  %67 = icmp uge i64 %66, 65535, !dbg !3820
  br i1 %67, label %68, label %75, !dbg !3821

68:                                               ; preds = %63
  %69 = load ptr, ptr %4, align 8, !dbg !3822
  %70 = getelementptr inbounds %struct.zip64_internal, ptr %69, i32 0, i32 0, !dbg !3823
  %71 = load ptr, ptr %4, align 8, !dbg !3824
  %72 = getelementptr inbounds %struct.zip64_internal, ptr %71, i32 0, i32 1, !dbg !3825
  %73 = load ptr, ptr %72, align 8, !dbg !3825
  %74 = call i32 @zip64local_putValue(ptr noundef %70, ptr noundef %73, i64 noundef 65535, i32 noundef 2), !dbg !3826
  store i32 %74, ptr %7, align 4, !dbg !3827
  br label %85, !dbg !3828

75:                                               ; preds = %63
  %76 = load ptr, ptr %4, align 8, !dbg !3829
  %77 = getelementptr inbounds %struct.zip64_internal, ptr %76, i32 0, i32 0, !dbg !3830
  %78 = load ptr, ptr %4, align 8, !dbg !3831
  %79 = getelementptr inbounds %struct.zip64_internal, ptr %78, i32 0, i32 1, !dbg !3832
  %80 = load ptr, ptr %79, align 8, !dbg !3832
  %81 = load ptr, ptr %4, align 8, !dbg !3833
  %82 = getelementptr inbounds %struct.zip64_internal, ptr %81, i32 0, i32 7, !dbg !3834
  %83 = load i64, ptr %82, align 8, !dbg !3834
  %84 = call i32 @zip64local_putValue(ptr noundef %77, ptr noundef %80, i64 noundef %83, i32 noundef 2), !dbg !3835
  store i32 %84, ptr %7, align 4, !dbg !3836
  br label %85

85:                                               ; preds = %75, %68
  br label %86, !dbg !3837

86:                                               ; preds = %85, %60
  %87 = load i32, ptr %7, align 4, !dbg !3838
  %88 = icmp eq i32 %87, 0, !dbg !3840
  br i1 %88, label %89, label %97, !dbg !3841

89:                                               ; preds = %86
  %90 = load ptr, ptr %4, align 8, !dbg !3842
  %91 = getelementptr inbounds %struct.zip64_internal, ptr %90, i32 0, i32 0, !dbg !3843
  %92 = load ptr, ptr %4, align 8, !dbg !3844
  %93 = getelementptr inbounds %struct.zip64_internal, ptr %92, i32 0, i32 1, !dbg !3845
  %94 = load ptr, ptr %93, align 8, !dbg !3845
  %95 = load i64, ptr %5, align 8, !dbg !3846
  %96 = call i32 @zip64local_putValue(ptr noundef %91, ptr noundef %94, i64 noundef %95, i32 noundef 4), !dbg !3847
  store i32 %96, ptr %7, align 4, !dbg !3848
  br label %97, !dbg !3849

97:                                               ; preds = %89, %86
  %98 = load i32, ptr %7, align 4, !dbg !3850
  %99 = icmp eq i32 %98, 0, !dbg !3852
  br i1 %99, label %100, label %128, !dbg !3853

100:                                              ; preds = %97
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3854, metadata !DIExpression()), !dbg !3856
  %101 = load i64, ptr %6, align 8, !dbg !3857
  %102 = load ptr, ptr %4, align 8, !dbg !3858
  %103 = getelementptr inbounds %struct.zip64_internal, ptr %102, i32 0, i32 6, !dbg !3859
  %104 = load i64, ptr %103, align 8, !dbg !3859
  %105 = sub i64 %101, %104, !dbg !3860
  store i64 %105, ptr %8, align 8, !dbg !3856
  %106 = load i64, ptr %8, align 8, !dbg !3861
  %107 = icmp uge i64 %106, 4294967295, !dbg !3863
  br i1 %107, label %108, label %115, !dbg !3864

108:                                              ; preds = %100
  %109 = load ptr, ptr %4, align 8, !dbg !3865
  %110 = getelementptr inbounds %struct.zip64_internal, ptr %109, i32 0, i32 0, !dbg !3867
  %111 = load ptr, ptr %4, align 8, !dbg !3868
  %112 = getelementptr inbounds %struct.zip64_internal, ptr %111, i32 0, i32 1, !dbg !3869
  %113 = load ptr, ptr %112, align 8, !dbg !3869
  %114 = call i32 @zip64local_putValue(ptr noundef %110, ptr noundef %113, i64 noundef 4294967295, i32 noundef 4), !dbg !3870
  store i32 %114, ptr %7, align 4, !dbg !3871
  br label %127, !dbg !3872

115:                                              ; preds = %100
  %116 = load ptr, ptr %4, align 8, !dbg !3873
  %117 = getelementptr inbounds %struct.zip64_internal, ptr %116, i32 0, i32 0, !dbg !3874
  %118 = load ptr, ptr %4, align 8, !dbg !3875
  %119 = getelementptr inbounds %struct.zip64_internal, ptr %118, i32 0, i32 1, !dbg !3876
  %120 = load ptr, ptr %119, align 8, !dbg !3876
  %121 = load i64, ptr %6, align 8, !dbg !3877
  %122 = load ptr, ptr %4, align 8, !dbg !3878
  %123 = getelementptr inbounds %struct.zip64_internal, ptr %122, i32 0, i32 6, !dbg !3879
  %124 = load i64, ptr %123, align 8, !dbg !3879
  %125 = sub i64 %121, %124, !dbg !3880
  %126 = call i32 @zip64local_putValue(ptr noundef %117, ptr noundef %120, i64 noundef %125, i32 noundef 4), !dbg !3881
  store i32 %126, ptr %7, align 4, !dbg !3882
  br label %127

127:                                              ; preds = %115, %108
  br label %128, !dbg !3883

128:                                              ; preds = %127, %97
  %129 = load i32, ptr %7, align 4, !dbg !3884
  ret i32 %129, !dbg !3885
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Write_GlobalComment(ptr noundef %0, ptr noundef %1) #0 !dbg !3886 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3889, metadata !DIExpression()), !dbg !3890
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3891, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3893, metadata !DIExpression()), !dbg !3894
  store i32 0, ptr %5, align 4, !dbg !3894
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3895, metadata !DIExpression()), !dbg !3896
  store i32 0, ptr %6, align 4, !dbg !3896
  %7 = load ptr, ptr %4, align 8, !dbg !3897
  %8 = icmp ne ptr %7, null, !dbg !3899
  br i1 %8, label %9, label %13, !dbg !3900

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !3901
  %11 = call i64 @strlen(ptr noundef %10) #10, !dbg !3902
  %12 = trunc i64 %11 to i32, !dbg !3903
  store i32 %12, ptr %6, align 4, !dbg !3904
  br label %13, !dbg !3905

13:                                               ; preds = %9, %2
  %14 = load ptr, ptr %3, align 8, !dbg !3906
  %15 = getelementptr inbounds %struct.zip64_internal, ptr %14, i32 0, i32 0, !dbg !3907
  %16 = load ptr, ptr %3, align 8, !dbg !3908
  %17 = getelementptr inbounds %struct.zip64_internal, ptr %16, i32 0, i32 1, !dbg !3909
  %18 = load ptr, ptr %17, align 8, !dbg !3909
  %19 = load i32, ptr %6, align 4, !dbg !3910
  %20 = zext i32 %19 to i64, !dbg !3911
  %21 = call i32 @zip64local_putValue(ptr noundef %15, ptr noundef %18, i64 noundef %20, i32 noundef 2), !dbg !3912
  store i32 %21, ptr %5, align 4, !dbg !3913
  %22 = load i32, ptr %5, align 4, !dbg !3914
  %23 = icmp eq i32 %22, 0, !dbg !3916
  br i1 %23, label %24, label %50, !dbg !3917

24:                                               ; preds = %13
  %25 = load i32, ptr %6, align 4, !dbg !3918
  %26 = icmp ugt i32 %25, 0, !dbg !3919
  br i1 %26, label %27, label %50, !dbg !3920

27:                                               ; preds = %24
  %28 = load ptr, ptr %3, align 8, !dbg !3921
  %29 = getelementptr inbounds %struct.zip64_internal, ptr %28, i32 0, i32 0, !dbg !3921
  %30 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %29, i32 0, i32 0, !dbg !3921
  %31 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %30, i32 0, i32 2, !dbg !3921
  %32 = load ptr, ptr %31, align 8, !dbg !3921
  %33 = load ptr, ptr %3, align 8, !dbg !3921
  %34 = getelementptr inbounds %struct.zip64_internal, ptr %33, i32 0, i32 0, !dbg !3921
  %35 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %34, i32 0, i32 0, !dbg !3921
  %36 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %35, i32 0, i32 8, !dbg !3921
  %37 = load ptr, ptr %36, align 8, !dbg !3921
  %38 = load ptr, ptr %3, align 8, !dbg !3921
  %39 = getelementptr inbounds %struct.zip64_internal, ptr %38, i32 0, i32 1, !dbg !3921
  %40 = load ptr, ptr %39, align 8, !dbg !3921
  %41 = load ptr, ptr %4, align 8, !dbg !3921
  %42 = load i32, ptr %6, align 4, !dbg !3921
  %43 = zext i32 %42 to i64, !dbg !3921
  %44 = call i64 %32(ptr noundef %37, ptr noundef %40, ptr noundef %41, i64 noundef %43), !dbg !3921
  %45 = load i32, ptr %6, align 4, !dbg !3924
  %46 = zext i32 %45 to i64, !dbg !3924
  %47 = icmp ne i64 %44, %46, !dbg !3925
  br i1 %47, label %48, label %49, !dbg !3926

48:                                               ; preds = %27
  store i32 -1, ptr %5, align 4, !dbg !3927
  br label %49, !dbg !3928

49:                                               ; preds = %48, %27
  br label %50, !dbg !3929

50:                                               ; preds = %49, %24, %13
  %51 = load i32, ptr %5, align 4, !dbg !3930
  ret i32 %51, !dbg !3931
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipRemoveExtraInfoBlock(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) #0 !dbg !3932 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i16, align 2
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3936, metadata !DIExpression()), !dbg !3937
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3938, metadata !DIExpression()), !dbg !3939
  store i16 %2, ptr %7, align 2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3940, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3942, metadata !DIExpression()), !dbg !3943
  %15 = load ptr, ptr %5, align 8, !dbg !3944
  store ptr %15, ptr %8, align 8, !dbg !3943
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3945, metadata !DIExpression()), !dbg !3946
  store i32 0, ptr %9, align 4, !dbg !3946
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3947, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3949, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3951, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3953, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3955, metadata !DIExpression()), !dbg !3956
  store i32 0, ptr %14, align 4, !dbg !3956
  %16 = load ptr, ptr %5, align 8, !dbg !3957
  %17 = icmp eq ptr %16, null, !dbg !3959
  br i1 %17, label %22, label %18, !dbg !3960

18:                                               ; preds = %3
  %19 = load ptr, ptr %6, align 8, !dbg !3961
  %20 = load i32, ptr %19, align 4, !dbg !3962
  %21 = icmp slt i32 %20, 4, !dbg !3963
  br i1 %21, label %22, label %23, !dbg !3964

22:                                               ; preds = %18, %3
  store i32 -102, ptr %4, align 4, !dbg !3965
  br label %102, !dbg !3965

23:                                               ; preds = %18
  %24 = load ptr, ptr %6, align 8, !dbg !3966
  %25 = load i32, ptr %24, align 4, !dbg !3966
  %26 = sext i32 %25 to i64, !dbg !3966
  %27 = call noalias ptr @malloc(i64 noundef %26) #8, !dbg !3966
  store ptr %27, ptr %10, align 8, !dbg !3967
  %28 = load ptr, ptr %10, align 8, !dbg !3968
  store ptr %28, ptr %11, align 8, !dbg !3969
  br label %29, !dbg !3970

29:                                               ; preds = %73, %23
  %30 = load ptr, ptr %8, align 8, !dbg !3971
  %31 = load ptr, ptr %5, align 8, !dbg !3972
  %32 = load ptr, ptr %6, align 8, !dbg !3973
  %33 = load i32, ptr %32, align 4, !dbg !3974
  %34 = sext i32 %33 to i64, !dbg !3975
  %35 = getelementptr inbounds i8, ptr %31, i64 %34, !dbg !3975
  %36 = icmp ult ptr %30, %35, !dbg !3976
  br i1 %36, label %37, label %74, !dbg !3970

37:                                               ; preds = %29
  %38 = load ptr, ptr %8, align 8, !dbg !3977
  %39 = load i16, ptr %38, align 2, !dbg !3979
  store i16 %39, ptr %12, align 2, !dbg !3980
  %40 = load ptr, ptr %8, align 8, !dbg !3981
  %41 = getelementptr inbounds i16, ptr %40, i64 1, !dbg !3982
  %42 = load i16, ptr %41, align 2, !dbg !3983
  store i16 %42, ptr %13, align 2, !dbg !3984
  %43 = load i16, ptr %12, align 2, !dbg !3985
  %44 = sext i16 %43 to i32, !dbg !3985
  %45 = load i16, ptr %7, align 2, !dbg !3987
  %46 = sext i16 %45 to i32, !dbg !3987
  %47 = icmp eq i32 %44, %46, !dbg !3988
  br i1 %47, label %48, label %55, !dbg !3989

48:                                               ; preds = %37
  %49 = load i16, ptr %13, align 2, !dbg !3990
  %50 = sext i16 %49 to i32, !dbg !3990
  %51 = add nsw i32 %50, 4, !dbg !3992
  %52 = load ptr, ptr %8, align 8, !dbg !3993
  %53 = sext i32 %51 to i64, !dbg !3993
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3993
  store ptr %54, ptr %8, align 8, !dbg !3993
  br label %73, !dbg !3994

55:                                               ; preds = %37
  %56 = load ptr, ptr %11, align 8, !dbg !3995
  %57 = load ptr, ptr %8, align 8, !dbg !3997
  %58 = load i16, ptr %13, align 2, !dbg !3998
  %59 = sext i16 %58 to i32, !dbg !3998
  %60 = add nsw i32 %59, 4, !dbg !3999
  %61 = sext i32 %60 to i64, !dbg !3998
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %57, i64 %61, i1 false), !dbg !4000
  %62 = load i16, ptr %13, align 2, !dbg !4001
  %63 = sext i16 %62 to i32, !dbg !4001
  %64 = add nsw i32 %63, 4, !dbg !4002
  %65 = load ptr, ptr %8, align 8, !dbg !4003
  %66 = sext i32 %64 to i64, !dbg !4003
  %67 = getelementptr inbounds i8, ptr %65, i64 %66, !dbg !4003
  store ptr %67, ptr %8, align 8, !dbg !4003
  %68 = load i16, ptr %13, align 2, !dbg !4004
  %69 = sext i16 %68 to i32, !dbg !4004
  %70 = add nsw i32 %69, 4, !dbg !4005
  %71 = load i32, ptr %9, align 4, !dbg !4006
  %72 = add nsw i32 %71, %70, !dbg !4006
  store i32 %72, ptr %9, align 4, !dbg !4006
  br label %73

73:                                               ; preds = %55, %48
  br label %29, !dbg !3970, !llvm.loop !4007

74:                                               ; preds = %29
  %75 = load i32, ptr %9, align 4, !dbg !4009
  %76 = load ptr, ptr %6, align 8, !dbg !4011
  %77 = load i32, ptr %76, align 4, !dbg !4012
  %78 = icmp slt i32 %75, %77, !dbg !4013
  br i1 %78, label %79, label %94, !dbg !4014

79:                                               ; preds = %74
  %80 = load ptr, ptr %5, align 8, !dbg !4015
  %81 = load ptr, ptr %6, align 8, !dbg !4017
  %82 = load i32, ptr %81, align 4, !dbg !4018
  %83 = sext i32 %82 to i64, !dbg !4018
  call void @llvm.memset.p0.i64(ptr align 1 %80, i8 0, i64 %83, i1 false), !dbg !4019
  %84 = load i32, ptr %9, align 4, !dbg !4020
  %85 = icmp sgt i32 %84, 0, !dbg !4022
  br i1 %85, label %86, label %91, !dbg !4023

86:                                               ; preds = %79
  %87 = load ptr, ptr %5, align 8, !dbg !4024
  %88 = load ptr, ptr %10, align 8, !dbg !4025
  %89 = load i32, ptr %9, align 4, !dbg !4026
  %90 = sext i32 %89 to i64, !dbg !4026
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %87, ptr align 1 %88, i64 %90, i1 false), !dbg !4027
  br label %91, !dbg !4027

91:                                               ; preds = %86, %79
  %92 = load i32, ptr %9, align 4, !dbg !4028
  %93 = load ptr, ptr %6, align 8, !dbg !4029
  store i32 %92, ptr %93, align 4, !dbg !4030
  store i32 0, ptr %14, align 4, !dbg !4031
  br label %95, !dbg !4032

94:                                               ; preds = %74
  store i32 -1, ptr %14, align 4, !dbg !4033
  br label %95

95:                                               ; preds = %94, %91
  %96 = load ptr, ptr %10, align 8, !dbg !4034
  %97 = icmp ne ptr %96, null, !dbg !4034
  br i1 %97, label %98, label %100, !dbg !4037

98:                                               ; preds = %95
  %99 = load ptr, ptr %10, align 8, !dbg !4034
  call void @free(ptr noundef %99) #9, !dbg !4034
  br label %100, !dbg !4034

100:                                              ; preds = %98, %95
  %101 = load i32, ptr %14, align 4, !dbg !4038
  store i32 %101, ptr %4, align 4, !dbg !4039
  br label %102, !dbg !4039

102:                                              ; preds = %100, %22
  %103 = load i32, ptr %4, align 4, !dbg !4040
  ret i32 %103, !dbg !4040
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zip64local_SearchCentralDir64(ptr noundef %0, ptr noundef %1) #0 !dbg !4041 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4044, metadata !DIExpression()), !dbg !4045
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4046, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4048, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4050, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4052, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4054, metadata !DIExpression()), !dbg !4055
  store i64 65535, ptr %9, align 8, !dbg !4055
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4056, metadata !DIExpression()), !dbg !4057
  store i64 0, ptr %10, align 8, !dbg !4057
  call void @llvm.dbg.declare(metadata ptr %11, metadata !4058, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.declare(metadata ptr %12, metadata !4060, metadata !DIExpression()), !dbg !4061
  %16 = load ptr, ptr %4, align 8, !dbg !4062
  %17 = load ptr, ptr %5, align 8, !dbg !4062
  %18 = call i64 @call_zseek64(ptr noundef %16, ptr noundef %17, i64 noundef 0, i32 noundef 2), !dbg !4062
  %19 = icmp ne i64 %18, 0, !dbg !4064
  br i1 %19, label %20, label %21, !dbg !4065

20:                                               ; preds = %2
  store i64 0, ptr %3, align 8, !dbg !4066
  br label %208, !dbg !4066

21:                                               ; preds = %2
  %22 = load ptr, ptr %4, align 8, !dbg !4067
  %23 = load ptr, ptr %5, align 8, !dbg !4067
  %24 = call i64 @call_ztell64(ptr noundef %22, ptr noundef %23), !dbg !4067
  store i64 %24, ptr %7, align 8, !dbg !4068
  %25 = load i64, ptr %9, align 8, !dbg !4069
  %26 = load i64, ptr %7, align 8, !dbg !4071
  %27 = icmp ugt i64 %25, %26, !dbg !4072
  br i1 %27, label %28, label %30, !dbg !4073

28:                                               ; preds = %21
  %29 = load i64, ptr %7, align 8, !dbg !4074
  store i64 %29, ptr %9, align 8, !dbg !4075
  br label %30, !dbg !4076

30:                                               ; preds = %28, %21
  %31 = call noalias ptr @malloc(i64 noundef 1028) #8, !dbg !4077
  store ptr %31, ptr %6, align 8, !dbg !4078
  %32 = load ptr, ptr %6, align 8, !dbg !4079
  %33 = icmp eq ptr %32, null, !dbg !4081
  br i1 %33, label %34, label %35, !dbg !4082

34:                                               ; preds = %30
  store i64 0, ptr %3, align 8, !dbg !4083
  br label %208, !dbg !4083

35:                                               ; preds = %30
  store i64 4, ptr %8, align 8, !dbg !4084
  br label %36, !dbg !4085

36:                                               ; preds = %140, %35
  %37 = load i64, ptr %8, align 8, !dbg !4086
  %38 = load i64, ptr %9, align 8, !dbg !4087
  %39 = icmp ult i64 %37, %38, !dbg !4088
  br i1 %39, label %40, label %141, !dbg !4085

40:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata ptr %13, metadata !4089, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.declare(metadata ptr %14, metadata !4092, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.declare(metadata ptr %15, metadata !4094, metadata !DIExpression()), !dbg !4095
  %41 = load i64, ptr %8, align 8, !dbg !4096
  %42 = add i64 %41, 1024, !dbg !4098
  %43 = load i64, ptr %9, align 8, !dbg !4099
  %44 = icmp ugt i64 %42, %43, !dbg !4100
  br i1 %44, label %45, label %47, !dbg !4101

45:                                               ; preds = %40
  %46 = load i64, ptr %9, align 8, !dbg !4102
  store i64 %46, ptr %8, align 8, !dbg !4103
  br label %50, !dbg !4104

47:                                               ; preds = %40
  %48 = load i64, ptr %8, align 8, !dbg !4105
  %49 = add i64 %48, 1024, !dbg !4105
  store i64 %49, ptr %8, align 8, !dbg !4105
  br label %50

50:                                               ; preds = %47, %45
  %51 = load i64, ptr %7, align 8, !dbg !4106
  %52 = load i64, ptr %8, align 8, !dbg !4107
  %53 = sub i64 %51, %52, !dbg !4108
  store i64 %53, ptr %14, align 8, !dbg !4109
  %54 = load i64, ptr %7, align 8, !dbg !4110
  %55 = load i64, ptr %14, align 8, !dbg !4111
  %56 = sub i64 %54, %55, !dbg !4112
  %57 = icmp ult i64 1028, %56, !dbg !4113
  br i1 %57, label %58, label %59, !dbg !4114

58:                                               ; preds = %50
  br label %63, !dbg !4114

59:                                               ; preds = %50
  %60 = load i64, ptr %7, align 8, !dbg !4115
  %61 = load i64, ptr %14, align 8, !dbg !4116
  %62 = sub i64 %60, %61, !dbg !4117
  br label %63, !dbg !4114

63:                                               ; preds = %59, %58
  %64 = phi i64 [ 1028, %58 ], [ %62, %59 ], !dbg !4114
  store i64 %64, ptr %13, align 8, !dbg !4118
  %65 = load ptr, ptr %4, align 8, !dbg !4119
  %66 = load ptr, ptr %5, align 8, !dbg !4119
  %67 = load i64, ptr %14, align 8, !dbg !4119
  %68 = call i64 @call_zseek64(ptr noundef %65, ptr noundef %66, i64 noundef %67, i32 noundef 0), !dbg !4119
  %69 = icmp ne i64 %68, 0, !dbg !4121
  br i1 %69, label %70, label %71, !dbg !4122

70:                                               ; preds = %63
  br label %141, !dbg !4123

71:                                               ; preds = %63
  %72 = load ptr, ptr %4, align 8, !dbg !4124
  %73 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %72, i32 0, i32 0, !dbg !4124
  %74 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %73, i32 0, i32 1, !dbg !4124
  %75 = load ptr, ptr %74, align 8, !dbg !4124
  %76 = load ptr, ptr %4, align 8, !dbg !4124
  %77 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %76, i32 0, i32 0, !dbg !4124
  %78 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %77, i32 0, i32 8, !dbg !4124
  %79 = load ptr, ptr %78, align 8, !dbg !4124
  %80 = load ptr, ptr %5, align 8, !dbg !4124
  %81 = load ptr, ptr %6, align 8, !dbg !4124
  %82 = load i64, ptr %13, align 8, !dbg !4124
  %83 = call i64 %75(ptr noundef %79, ptr noundef %80, ptr noundef %81, i64 noundef %82), !dbg !4124
  %84 = load i64, ptr %13, align 8, !dbg !4126
  %85 = icmp ne i64 %83, %84, !dbg !4127
  br i1 %85, label %86, label %87, !dbg !4128

86:                                               ; preds = %71
  br label %141, !dbg !4129

87:                                               ; preds = %71
  %88 = load i64, ptr %13, align 8, !dbg !4130
  %89 = trunc i64 %88 to i32, !dbg !4132
  %90 = sub nsw i32 %89, 3, !dbg !4133
  store i32 %90, ptr %15, align 4, !dbg !4134
  br label %91, !dbg !4135

91:                                               ; preds = %135, %87
  %92 = load i32, ptr %15, align 4, !dbg !4136
  %93 = add nsw i32 %92, -1, !dbg !4136
  store i32 %93, ptr %15, align 4, !dbg !4136
  %94 = icmp sgt i32 %92, 0, !dbg !4138
  br i1 %94, label %95, label %136, !dbg !4139

95:                                               ; preds = %91
  %96 = load ptr, ptr %6, align 8, !dbg !4140
  %97 = load i32, ptr %15, align 4, !dbg !4143
  %98 = sext i32 %97 to i64, !dbg !4144
  %99 = getelementptr inbounds i8, ptr %96, i64 %98, !dbg !4144
  %100 = load i8, ptr %99, align 1, !dbg !4145
  %101 = zext i8 %100 to i32, !dbg !4146
  %102 = icmp eq i32 %101, 80, !dbg !4147
  br i1 %102, label %103, label %135, !dbg !4148

103:                                              ; preds = %95
  %104 = load ptr, ptr %6, align 8, !dbg !4149
  %105 = load i32, ptr %15, align 4, !dbg !4150
  %106 = sext i32 %105 to i64, !dbg !4151
  %107 = getelementptr inbounds i8, ptr %104, i64 %106, !dbg !4151
  %108 = getelementptr inbounds i8, ptr %107, i64 1, !dbg !4152
  %109 = load i8, ptr %108, align 1, !dbg !4153
  %110 = zext i8 %109 to i32, !dbg !4154
  %111 = icmp eq i32 %110, 75, !dbg !4155
  br i1 %111, label %112, label %135, !dbg !4156

112:                                              ; preds = %103
  %113 = load ptr, ptr %6, align 8, !dbg !4157
  %114 = load i32, ptr %15, align 4, !dbg !4158
  %115 = sext i32 %114 to i64, !dbg !4159
  %116 = getelementptr inbounds i8, ptr %113, i64 %115, !dbg !4159
  %117 = getelementptr inbounds i8, ptr %116, i64 2, !dbg !4160
  %118 = load i8, ptr %117, align 1, !dbg !4161
  %119 = zext i8 %118 to i32, !dbg !4162
  %120 = icmp eq i32 %119, 6, !dbg !4163
  br i1 %120, label %121, label %135, !dbg !4164

121:                                              ; preds = %112
  %122 = load ptr, ptr %6, align 8, !dbg !4165
  %123 = load i32, ptr %15, align 4, !dbg !4166
  %124 = sext i32 %123 to i64, !dbg !4167
  %125 = getelementptr inbounds i8, ptr %122, i64 %124, !dbg !4167
  %126 = getelementptr inbounds i8, ptr %125, i64 3, !dbg !4168
  %127 = load i8, ptr %126, align 1, !dbg !4169
  %128 = zext i8 %127 to i32, !dbg !4170
  %129 = icmp eq i32 %128, 7, !dbg !4171
  br i1 %129, label %130, label %135, !dbg !4172

130:                                              ; preds = %121
  %131 = load i64, ptr %14, align 8, !dbg !4173
  %132 = load i32, ptr %15, align 4, !dbg !4175
  %133 = sext i32 %132 to i64, !dbg !4175
  %134 = add i64 %131, %133, !dbg !4176
  store i64 %134, ptr %10, align 8, !dbg !4177
  br label %136, !dbg !4178

135:                                              ; preds = %121, %112, %103, %95
  br label %91, !dbg !4179, !llvm.loop !4180

136:                                              ; preds = %130, %91
  %137 = load i64, ptr %10, align 8, !dbg !4182
  %138 = icmp ne i64 %137, 0, !dbg !4184
  br i1 %138, label %139, label %140, !dbg !4185

139:                                              ; preds = %136
  br label %141, !dbg !4186

140:                                              ; preds = %136
  br label %36, !dbg !4085, !llvm.loop !4187

141:                                              ; preds = %139, %86, %70, %36
  %142 = load ptr, ptr %6, align 8, !dbg !4189
  %143 = icmp ne ptr %142, null, !dbg !4189
  br i1 %143, label %144, label %146, !dbg !4192

144:                                              ; preds = %141
  %145 = load ptr, ptr %6, align 8, !dbg !4189
  call void @free(ptr noundef %145) #9, !dbg !4189
  br label %146, !dbg !4189

146:                                              ; preds = %144, %141
  %147 = load i64, ptr %10, align 8, !dbg !4193
  %148 = icmp eq i64 %147, 0, !dbg !4195
  br i1 %148, label %149, label %150, !dbg !4196

149:                                              ; preds = %146
  store i64 0, ptr %3, align 8, !dbg !4197
  br label %208, !dbg !4197

150:                                              ; preds = %146
  %151 = load ptr, ptr %4, align 8, !dbg !4198
  %152 = load ptr, ptr %5, align 8, !dbg !4198
  %153 = load i64, ptr %10, align 8, !dbg !4198
  %154 = call i64 @call_zseek64(ptr noundef %151, ptr noundef %152, i64 noundef %153, i32 noundef 0), !dbg !4198
  %155 = icmp ne i64 %154, 0, !dbg !4200
  br i1 %155, label %156, label %157, !dbg !4201

156:                                              ; preds = %150
  store i64 0, ptr %3, align 8, !dbg !4202
  br label %208, !dbg !4202

157:                                              ; preds = %150
  %158 = load ptr, ptr %4, align 8, !dbg !4203
  %159 = load ptr, ptr %5, align 8, !dbg !4205
  %160 = call i32 @zip64local_getLong(ptr noundef %158, ptr noundef %159, ptr noundef %11), !dbg !4206
  %161 = icmp ne i32 %160, 0, !dbg !4207
  br i1 %161, label %162, label %163, !dbg !4208

162:                                              ; preds = %157
  store i64 0, ptr %3, align 8, !dbg !4209
  br label %208, !dbg !4209

163:                                              ; preds = %157
  %164 = load ptr, ptr %4, align 8, !dbg !4210
  %165 = load ptr, ptr %5, align 8, !dbg !4212
  %166 = call i32 @zip64local_getLong(ptr noundef %164, ptr noundef %165, ptr noundef %11), !dbg !4213
  %167 = icmp ne i32 %166, 0, !dbg !4214
  br i1 %167, label %168, label %169, !dbg !4215

168:                                              ; preds = %163
  store i64 0, ptr %3, align 8, !dbg !4216
  br label %208, !dbg !4216

169:                                              ; preds = %163
  %170 = load i64, ptr %11, align 8, !dbg !4217
  %171 = icmp ne i64 %170, 0, !dbg !4219
  br i1 %171, label %172, label %173, !dbg !4220

172:                                              ; preds = %169
  store i64 0, ptr %3, align 8, !dbg !4221
  br label %208, !dbg !4221

173:                                              ; preds = %169
  %174 = load ptr, ptr %4, align 8, !dbg !4222
  %175 = load ptr, ptr %5, align 8, !dbg !4224
  %176 = call i32 @zip64local_getLong64(ptr noundef %174, ptr noundef %175, ptr noundef %12), !dbg !4225
  %177 = icmp ne i32 %176, 0, !dbg !4226
  br i1 %177, label %178, label %179, !dbg !4227

178:                                              ; preds = %173
  store i64 0, ptr %3, align 8, !dbg !4228
  br label %208, !dbg !4228

179:                                              ; preds = %173
  %180 = load ptr, ptr %4, align 8, !dbg !4229
  %181 = load ptr, ptr %5, align 8, !dbg !4231
  %182 = call i32 @zip64local_getLong(ptr noundef %180, ptr noundef %181, ptr noundef %11), !dbg !4232
  %183 = icmp ne i32 %182, 0, !dbg !4233
  br i1 %183, label %184, label %185, !dbg !4234

184:                                              ; preds = %179
  store i64 0, ptr %3, align 8, !dbg !4235
  br label %208, !dbg !4235

185:                                              ; preds = %179
  %186 = load i64, ptr %11, align 8, !dbg !4236
  %187 = icmp ne i64 %186, 1, !dbg !4238
  br i1 %187, label %188, label %189, !dbg !4239

188:                                              ; preds = %185
  store i64 0, ptr %3, align 8, !dbg !4240
  br label %208, !dbg !4240

189:                                              ; preds = %185
  %190 = load ptr, ptr %4, align 8, !dbg !4241
  %191 = load ptr, ptr %5, align 8, !dbg !4241
  %192 = load i64, ptr %12, align 8, !dbg !4241
  %193 = call i64 @call_zseek64(ptr noundef %190, ptr noundef %191, i64 noundef %192, i32 noundef 0), !dbg !4241
  %194 = icmp ne i64 %193, 0, !dbg !4243
  br i1 %194, label %195, label %196, !dbg !4244

195:                                              ; preds = %189
  store i64 0, ptr %3, align 8, !dbg !4245
  br label %208, !dbg !4245

196:                                              ; preds = %189
  %197 = load ptr, ptr %4, align 8, !dbg !4246
  %198 = load ptr, ptr %5, align 8, !dbg !4248
  %199 = call i32 @zip64local_getLong(ptr noundef %197, ptr noundef %198, ptr noundef %11), !dbg !4249
  %200 = icmp ne i32 %199, 0, !dbg !4250
  br i1 %200, label %201, label %202, !dbg !4251

201:                                              ; preds = %196
  store i64 0, ptr %3, align 8, !dbg !4252
  br label %208, !dbg !4252

202:                                              ; preds = %196
  %203 = load i64, ptr %11, align 8, !dbg !4253
  %204 = icmp ne i64 %203, 101075792, !dbg !4255
  br i1 %204, label %205, label %206, !dbg !4256

205:                                              ; preds = %202
  store i64 0, ptr %3, align 8, !dbg !4257
  br label %208, !dbg !4257

206:                                              ; preds = %202
  %207 = load i64, ptr %12, align 8, !dbg !4258
  store i64 %207, ptr %3, align 8, !dbg !4259
  br label %208, !dbg !4259

208:                                              ; preds = %206, %205, %201, %195, %188, %184, %178, %172, %168, %162, %156, %149, %34, %20
  %209 = load i64, ptr %3, align 8, !dbg !4260
  ret i64 %209, !dbg !4260
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zip64local_SearchCentralDir(ptr noundef %0, ptr noundef %1) #0 !dbg !4261 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4262, metadata !DIExpression()), !dbg !4263
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4264, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4266, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4268, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4270, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4272, metadata !DIExpression()), !dbg !4273
  store i64 65535, ptr %9, align 8, !dbg !4273
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4274, metadata !DIExpression()), !dbg !4275
  store i64 0, ptr %10, align 8, !dbg !4275
  %14 = load ptr, ptr %4, align 8, !dbg !4276
  %15 = load ptr, ptr %5, align 8, !dbg !4276
  %16 = call i64 @call_zseek64(ptr noundef %14, ptr noundef %15, i64 noundef 0, i32 noundef 2), !dbg !4276
  %17 = icmp ne i64 %16, 0, !dbg !4278
  br i1 %17, label %18, label %19, !dbg !4279

18:                                               ; preds = %2
  store i64 0, ptr %3, align 8, !dbg !4280
  br label %146, !dbg !4280

19:                                               ; preds = %2
  %20 = load ptr, ptr %4, align 8, !dbg !4281
  %21 = load ptr, ptr %5, align 8, !dbg !4281
  %22 = call i64 @call_ztell64(ptr noundef %20, ptr noundef %21), !dbg !4281
  store i64 %22, ptr %7, align 8, !dbg !4282
  %23 = load i64, ptr %9, align 8, !dbg !4283
  %24 = load i64, ptr %7, align 8, !dbg !4285
  %25 = icmp ugt i64 %23, %24, !dbg !4286
  br i1 %25, label %26, label %28, !dbg !4287

26:                                               ; preds = %19
  %27 = load i64, ptr %7, align 8, !dbg !4288
  store i64 %27, ptr %9, align 8, !dbg !4289
  br label %28, !dbg !4290

28:                                               ; preds = %26, %19
  %29 = call noalias ptr @malloc(i64 noundef 1028) #8, !dbg !4291
  store ptr %29, ptr %6, align 8, !dbg !4292
  %30 = load ptr, ptr %6, align 8, !dbg !4293
  %31 = icmp eq ptr %30, null, !dbg !4295
  br i1 %31, label %32, label %33, !dbg !4296

32:                                               ; preds = %28
  store i64 0, ptr %3, align 8, !dbg !4297
  br label %146, !dbg !4297

33:                                               ; preds = %28
  store i64 4, ptr %8, align 8, !dbg !4298
  br label %34, !dbg !4299

34:                                               ; preds = %138, %33
  %35 = load i64, ptr %8, align 8, !dbg !4300
  %36 = load i64, ptr %9, align 8, !dbg !4301
  %37 = icmp ult i64 %35, %36, !dbg !4302
  br i1 %37, label %38, label %139, !dbg !4299

38:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata ptr %11, metadata !4303, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.declare(metadata ptr %12, metadata !4306, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.declare(metadata ptr %13, metadata !4308, metadata !DIExpression()), !dbg !4309
  %39 = load i64, ptr %8, align 8, !dbg !4310
  %40 = add i64 %39, 1024, !dbg !4312
  %41 = load i64, ptr %9, align 8, !dbg !4313
  %42 = icmp ugt i64 %40, %41, !dbg !4314
  br i1 %42, label %43, label %45, !dbg !4315

43:                                               ; preds = %38
  %44 = load i64, ptr %9, align 8, !dbg !4316
  store i64 %44, ptr %8, align 8, !dbg !4317
  br label %48, !dbg !4318

45:                                               ; preds = %38
  %46 = load i64, ptr %8, align 8, !dbg !4319
  %47 = add i64 %46, 1024, !dbg !4319
  store i64 %47, ptr %8, align 8, !dbg !4319
  br label %48

48:                                               ; preds = %45, %43
  %49 = load i64, ptr %7, align 8, !dbg !4320
  %50 = load i64, ptr %8, align 8, !dbg !4321
  %51 = sub i64 %49, %50, !dbg !4322
  store i64 %51, ptr %12, align 8, !dbg !4323
  %52 = load i64, ptr %7, align 8, !dbg !4324
  %53 = load i64, ptr %12, align 8, !dbg !4325
  %54 = sub i64 %52, %53, !dbg !4326
  %55 = icmp ult i64 1028, %54, !dbg !4327
  br i1 %55, label %56, label %57, !dbg !4328

56:                                               ; preds = %48
  br label %61, !dbg !4328

57:                                               ; preds = %48
  %58 = load i64, ptr %7, align 8, !dbg !4329
  %59 = load i64, ptr %12, align 8, !dbg !4330
  %60 = sub i64 %58, %59, !dbg !4331
  br label %61, !dbg !4328

61:                                               ; preds = %57, %56
  %62 = phi i64 [ 1028, %56 ], [ %60, %57 ], !dbg !4328
  store i64 %62, ptr %11, align 8, !dbg !4332
  %63 = load ptr, ptr %4, align 8, !dbg !4333
  %64 = load ptr, ptr %5, align 8, !dbg !4333
  %65 = load i64, ptr %12, align 8, !dbg !4333
  %66 = call i64 @call_zseek64(ptr noundef %63, ptr noundef %64, i64 noundef %65, i32 noundef 0), !dbg !4333
  %67 = icmp ne i64 %66, 0, !dbg !4335
  br i1 %67, label %68, label %69, !dbg !4336

68:                                               ; preds = %61
  br label %139, !dbg !4337

69:                                               ; preds = %61
  %70 = load ptr, ptr %4, align 8, !dbg !4338
  %71 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %70, i32 0, i32 0, !dbg !4338
  %72 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %71, i32 0, i32 1, !dbg !4338
  %73 = load ptr, ptr %72, align 8, !dbg !4338
  %74 = load ptr, ptr %4, align 8, !dbg !4338
  %75 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %74, i32 0, i32 0, !dbg !4338
  %76 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %75, i32 0, i32 8, !dbg !4338
  %77 = load ptr, ptr %76, align 8, !dbg !4338
  %78 = load ptr, ptr %5, align 8, !dbg !4338
  %79 = load ptr, ptr %6, align 8, !dbg !4338
  %80 = load i64, ptr %11, align 8, !dbg !4338
  %81 = call i64 %73(ptr noundef %77, ptr noundef %78, ptr noundef %79, i64 noundef %80), !dbg !4338
  %82 = load i64, ptr %11, align 8, !dbg !4340
  %83 = icmp ne i64 %81, %82, !dbg !4341
  br i1 %83, label %84, label %85, !dbg !4342

84:                                               ; preds = %69
  br label %139, !dbg !4343

85:                                               ; preds = %69
  %86 = load i64, ptr %11, align 8, !dbg !4344
  %87 = trunc i64 %86 to i32, !dbg !4346
  %88 = sub nsw i32 %87, 3, !dbg !4347
  store i32 %88, ptr %13, align 4, !dbg !4348
  br label %89, !dbg !4349

89:                                               ; preds = %133, %85
  %90 = load i32, ptr %13, align 4, !dbg !4350
  %91 = add nsw i32 %90, -1, !dbg !4350
  store i32 %91, ptr %13, align 4, !dbg !4350
  %92 = icmp sgt i32 %90, 0, !dbg !4352
  br i1 %92, label %93, label %134, !dbg !4353

93:                                               ; preds = %89
  %94 = load ptr, ptr %6, align 8, !dbg !4354
  %95 = load i32, ptr %13, align 4, !dbg !4356
  %96 = sext i32 %95 to i64, !dbg !4357
  %97 = getelementptr inbounds i8, ptr %94, i64 %96, !dbg !4357
  %98 = load i8, ptr %97, align 1, !dbg !4358
  %99 = zext i8 %98 to i32, !dbg !4359
  %100 = icmp eq i32 %99, 80, !dbg !4360
  br i1 %100, label %101, label %133, !dbg !4361

101:                                              ; preds = %93
  %102 = load ptr, ptr %6, align 8, !dbg !4362
  %103 = load i32, ptr %13, align 4, !dbg !4363
  %104 = sext i32 %103 to i64, !dbg !4364
  %105 = getelementptr inbounds i8, ptr %102, i64 %104, !dbg !4364
  %106 = getelementptr inbounds i8, ptr %105, i64 1, !dbg !4365
  %107 = load i8, ptr %106, align 1, !dbg !4366
  %108 = zext i8 %107 to i32, !dbg !4367
  %109 = icmp eq i32 %108, 75, !dbg !4368
  br i1 %109, label %110, label %133, !dbg !4369

110:                                              ; preds = %101
  %111 = load ptr, ptr %6, align 8, !dbg !4370
  %112 = load i32, ptr %13, align 4, !dbg !4371
  %113 = sext i32 %112 to i64, !dbg !4372
  %114 = getelementptr inbounds i8, ptr %111, i64 %113, !dbg !4372
  %115 = getelementptr inbounds i8, ptr %114, i64 2, !dbg !4373
  %116 = load i8, ptr %115, align 1, !dbg !4374
  %117 = zext i8 %116 to i32, !dbg !4375
  %118 = icmp eq i32 %117, 5, !dbg !4376
  br i1 %118, label %119, label %133, !dbg !4377

119:                                              ; preds = %110
  %120 = load ptr, ptr %6, align 8, !dbg !4378
  %121 = load i32, ptr %13, align 4, !dbg !4379
  %122 = sext i32 %121 to i64, !dbg !4380
  %123 = getelementptr inbounds i8, ptr %120, i64 %122, !dbg !4380
  %124 = getelementptr inbounds i8, ptr %123, i64 3, !dbg !4381
  %125 = load i8, ptr %124, align 1, !dbg !4382
  %126 = zext i8 %125 to i32, !dbg !4383
  %127 = icmp eq i32 %126, 6, !dbg !4384
  br i1 %127, label %128, label %133, !dbg !4385

128:                                              ; preds = %119
  %129 = load i64, ptr %12, align 8, !dbg !4386
  %130 = load i32, ptr %13, align 4, !dbg !4388
  %131 = sext i32 %130 to i64, !dbg !4388
  %132 = add i64 %129, %131, !dbg !4389
  store i64 %132, ptr %10, align 8, !dbg !4390
  br label %134, !dbg !4391

133:                                              ; preds = %119, %110, %101, %93
  br label %89, !dbg !4392, !llvm.loop !4393

134:                                              ; preds = %128, %89
  %135 = load i64, ptr %10, align 8, !dbg !4395
  %136 = icmp ne i64 %135, 0, !dbg !4397
  br i1 %136, label %137, label %138, !dbg !4398

137:                                              ; preds = %134
  br label %139, !dbg !4399

138:                                              ; preds = %134
  br label %34, !dbg !4299, !llvm.loop !4400

139:                                              ; preds = %137, %84, %68, %34
  %140 = load ptr, ptr %6, align 8, !dbg !4402
  %141 = icmp ne ptr %140, null, !dbg !4402
  br i1 %141, label %142, label %144, !dbg !4405

142:                                              ; preds = %139
  %143 = load ptr, ptr %6, align 8, !dbg !4402
  call void @free(ptr noundef %143) #9, !dbg !4402
  br label %144, !dbg !4402

144:                                              ; preds = %142, %139
  %145 = load i64, ptr %10, align 8, !dbg !4406
  store i64 %145, ptr %3, align 8, !dbg !4407
  br label %146, !dbg !4407

146:                                              ; preds = %144, %32, %18
  %147 = load i64, ptr %3, align 8, !dbg !4408
  ret i64 %147, !dbg !4408
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip64local_getLong(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !4409 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4413, metadata !DIExpression()), !dbg !4414
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4415, metadata !DIExpression()), !dbg !4416
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4417, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4419, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4421, metadata !DIExpression()), !dbg !4422
  store i32 0, ptr %8, align 4, !dbg !4422
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4423, metadata !DIExpression()), !dbg !4424
  %10 = load ptr, ptr %4, align 8, !dbg !4425
  %11 = load ptr, ptr %5, align 8, !dbg !4426
  %12 = call i32 @zip64local_getByte(ptr noundef %10, ptr noundef %11, ptr noundef %8), !dbg !4427
  store i32 %12, ptr %9, align 4, !dbg !4428
  %13 = load i32, ptr %8, align 4, !dbg !4429
  %14 = sext i32 %13 to i64, !dbg !4430
  store i64 %14, ptr %7, align 8, !dbg !4431
  %15 = load i32, ptr %9, align 4, !dbg !4432
  %16 = icmp eq i32 %15, 0, !dbg !4434
  br i1 %16, label %17, label %21, !dbg !4435

17:                                               ; preds = %3
  %18 = load ptr, ptr %4, align 8, !dbg !4436
  %19 = load ptr, ptr %5, align 8, !dbg !4437
  %20 = call i32 @zip64local_getByte(ptr noundef %18, ptr noundef %19, ptr noundef %8), !dbg !4438
  store i32 %20, ptr %9, align 4, !dbg !4439
  br label %21, !dbg !4440

21:                                               ; preds = %17, %3
  %22 = load i32, ptr %8, align 4, !dbg !4441
  %23 = sext i32 %22 to i64, !dbg !4442
  %24 = shl i64 %23, 8, !dbg !4443
  %25 = load i64, ptr %7, align 8, !dbg !4444
  %26 = add i64 %25, %24, !dbg !4444
  store i64 %26, ptr %7, align 8, !dbg !4444
  %27 = load i32, ptr %9, align 4, !dbg !4445
  %28 = icmp eq i32 %27, 0, !dbg !4447
  br i1 %28, label %29, label %33, !dbg !4448

29:                                               ; preds = %21
  %30 = load ptr, ptr %4, align 8, !dbg !4449
  %31 = load ptr, ptr %5, align 8, !dbg !4450
  %32 = call i32 @zip64local_getByte(ptr noundef %30, ptr noundef %31, ptr noundef %8), !dbg !4451
  store i32 %32, ptr %9, align 4, !dbg !4452
  br label %33, !dbg !4453

33:                                               ; preds = %29, %21
  %34 = load i32, ptr %8, align 4, !dbg !4454
  %35 = sext i32 %34 to i64, !dbg !4455
  %36 = shl i64 %35, 16, !dbg !4456
  %37 = load i64, ptr %7, align 8, !dbg !4457
  %38 = add i64 %37, %36, !dbg !4457
  store i64 %38, ptr %7, align 8, !dbg !4457
  %39 = load i32, ptr %9, align 4, !dbg !4458
  %40 = icmp eq i32 %39, 0, !dbg !4460
  br i1 %40, label %41, label %45, !dbg !4461

41:                                               ; preds = %33
  %42 = load ptr, ptr %4, align 8, !dbg !4462
  %43 = load ptr, ptr %5, align 8, !dbg !4463
  %44 = call i32 @zip64local_getByte(ptr noundef %42, ptr noundef %43, ptr noundef %8), !dbg !4464
  store i32 %44, ptr %9, align 4, !dbg !4465
  br label %45, !dbg !4466

45:                                               ; preds = %41, %33
  %46 = load i32, ptr %8, align 4, !dbg !4467
  %47 = sext i32 %46 to i64, !dbg !4468
  %48 = shl i64 %47, 24, !dbg !4469
  %49 = load i64, ptr %7, align 8, !dbg !4470
  %50 = add i64 %49, %48, !dbg !4470
  store i64 %50, ptr %7, align 8, !dbg !4470
  %51 = load i32, ptr %9, align 4, !dbg !4471
  %52 = icmp eq i32 %51, 0, !dbg !4473
  br i1 %52, label %53, label %56, !dbg !4474

53:                                               ; preds = %45
  %54 = load i64, ptr %7, align 8, !dbg !4475
  %55 = load ptr, ptr %6, align 8, !dbg !4476
  store i64 %54, ptr %55, align 8, !dbg !4477
  br label %58, !dbg !4478

56:                                               ; preds = %45
  %57 = load ptr, ptr %6, align 8, !dbg !4479
  store i64 0, ptr %57, align 8, !dbg !4480
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32, ptr %9, align 4, !dbg !4481
  ret i32 %59, !dbg !4482
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip64local_getLong64(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !4483 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4487, metadata !DIExpression()), !dbg !4488
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4489, metadata !DIExpression()), !dbg !4490
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4493, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4495, metadata !DIExpression()), !dbg !4496
  store i32 0, ptr %8, align 4, !dbg !4496
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4497, metadata !DIExpression()), !dbg !4498
  %10 = load ptr, ptr %4, align 8, !dbg !4499
  %11 = load ptr, ptr %5, align 8, !dbg !4500
  %12 = call i32 @zip64local_getByte(ptr noundef %10, ptr noundef %11, ptr noundef %8), !dbg !4501
  store i32 %12, ptr %9, align 4, !dbg !4502
  %13 = load i32, ptr %8, align 4, !dbg !4503
  %14 = sext i32 %13 to i64, !dbg !4504
  store i64 %14, ptr %7, align 8, !dbg !4505
  %15 = load i32, ptr %9, align 4, !dbg !4506
  %16 = icmp eq i32 %15, 0, !dbg !4508
  br i1 %16, label %17, label %21, !dbg !4509

17:                                               ; preds = %3
  %18 = load ptr, ptr %4, align 8, !dbg !4510
  %19 = load ptr, ptr %5, align 8, !dbg !4511
  %20 = call i32 @zip64local_getByte(ptr noundef %18, ptr noundef %19, ptr noundef %8), !dbg !4512
  store i32 %20, ptr %9, align 4, !dbg !4513
  br label %21, !dbg !4514

21:                                               ; preds = %17, %3
  %22 = load i32, ptr %8, align 4, !dbg !4515
  %23 = sext i32 %22 to i64, !dbg !4516
  %24 = shl i64 %23, 8, !dbg !4517
  %25 = load i64, ptr %7, align 8, !dbg !4518
  %26 = add i64 %25, %24, !dbg !4518
  store i64 %26, ptr %7, align 8, !dbg !4518
  %27 = load i32, ptr %9, align 4, !dbg !4519
  %28 = icmp eq i32 %27, 0, !dbg !4521
  br i1 %28, label %29, label %33, !dbg !4522

29:                                               ; preds = %21
  %30 = load ptr, ptr %4, align 8, !dbg !4523
  %31 = load ptr, ptr %5, align 8, !dbg !4524
  %32 = call i32 @zip64local_getByte(ptr noundef %30, ptr noundef %31, ptr noundef %8), !dbg !4525
  store i32 %32, ptr %9, align 4, !dbg !4526
  br label %33, !dbg !4527

33:                                               ; preds = %29, %21
  %34 = load i32, ptr %8, align 4, !dbg !4528
  %35 = sext i32 %34 to i64, !dbg !4529
  %36 = shl i64 %35, 16, !dbg !4530
  %37 = load i64, ptr %7, align 8, !dbg !4531
  %38 = add i64 %37, %36, !dbg !4531
  store i64 %38, ptr %7, align 8, !dbg !4531
  %39 = load i32, ptr %9, align 4, !dbg !4532
  %40 = icmp eq i32 %39, 0, !dbg !4534
  br i1 %40, label %41, label %45, !dbg !4535

41:                                               ; preds = %33
  %42 = load ptr, ptr %4, align 8, !dbg !4536
  %43 = load ptr, ptr %5, align 8, !dbg !4537
  %44 = call i32 @zip64local_getByte(ptr noundef %42, ptr noundef %43, ptr noundef %8), !dbg !4538
  store i32 %44, ptr %9, align 4, !dbg !4539
  br label %45, !dbg !4540

45:                                               ; preds = %41, %33
  %46 = load i32, ptr %8, align 4, !dbg !4541
  %47 = sext i32 %46 to i64, !dbg !4542
  %48 = shl i64 %47, 24, !dbg !4543
  %49 = load i64, ptr %7, align 8, !dbg !4544
  %50 = add i64 %49, %48, !dbg !4544
  store i64 %50, ptr %7, align 8, !dbg !4544
  %51 = load i32, ptr %9, align 4, !dbg !4545
  %52 = icmp eq i32 %51, 0, !dbg !4547
  br i1 %52, label %53, label %57, !dbg !4548

53:                                               ; preds = %45
  %54 = load ptr, ptr %4, align 8, !dbg !4549
  %55 = load ptr, ptr %5, align 8, !dbg !4550
  %56 = call i32 @zip64local_getByte(ptr noundef %54, ptr noundef %55, ptr noundef %8), !dbg !4551
  store i32 %56, ptr %9, align 4, !dbg !4552
  br label %57, !dbg !4553

57:                                               ; preds = %53, %45
  %58 = load i32, ptr %8, align 4, !dbg !4554
  %59 = sext i32 %58 to i64, !dbg !4555
  %60 = shl i64 %59, 32, !dbg !4556
  %61 = load i64, ptr %7, align 8, !dbg !4557
  %62 = add i64 %61, %60, !dbg !4557
  store i64 %62, ptr %7, align 8, !dbg !4557
  %63 = load i32, ptr %9, align 4, !dbg !4558
  %64 = icmp eq i32 %63, 0, !dbg !4560
  br i1 %64, label %65, label %69, !dbg !4561

65:                                               ; preds = %57
  %66 = load ptr, ptr %4, align 8, !dbg !4562
  %67 = load ptr, ptr %5, align 8, !dbg !4563
  %68 = call i32 @zip64local_getByte(ptr noundef %66, ptr noundef %67, ptr noundef %8), !dbg !4564
  store i32 %68, ptr %9, align 4, !dbg !4565
  br label %69, !dbg !4566

69:                                               ; preds = %65, %57
  %70 = load i32, ptr %8, align 4, !dbg !4567
  %71 = sext i32 %70 to i64, !dbg !4568
  %72 = shl i64 %71, 40, !dbg !4569
  %73 = load i64, ptr %7, align 8, !dbg !4570
  %74 = add i64 %73, %72, !dbg !4570
  store i64 %74, ptr %7, align 8, !dbg !4570
  %75 = load i32, ptr %9, align 4, !dbg !4571
  %76 = icmp eq i32 %75, 0, !dbg !4573
  br i1 %76, label %77, label %81, !dbg !4574

77:                                               ; preds = %69
  %78 = load ptr, ptr %4, align 8, !dbg !4575
  %79 = load ptr, ptr %5, align 8, !dbg !4576
  %80 = call i32 @zip64local_getByte(ptr noundef %78, ptr noundef %79, ptr noundef %8), !dbg !4577
  store i32 %80, ptr %9, align 4, !dbg !4578
  br label %81, !dbg !4579

81:                                               ; preds = %77, %69
  %82 = load i32, ptr %8, align 4, !dbg !4580
  %83 = sext i32 %82 to i64, !dbg !4581
  %84 = shl i64 %83, 48, !dbg !4582
  %85 = load i64, ptr %7, align 8, !dbg !4583
  %86 = add i64 %85, %84, !dbg !4583
  store i64 %86, ptr %7, align 8, !dbg !4583
  %87 = load i32, ptr %9, align 4, !dbg !4584
  %88 = icmp eq i32 %87, 0, !dbg !4586
  br i1 %88, label %89, label %93, !dbg !4587

89:                                               ; preds = %81
  %90 = load ptr, ptr %4, align 8, !dbg !4588
  %91 = load ptr, ptr %5, align 8, !dbg !4589
  %92 = call i32 @zip64local_getByte(ptr noundef %90, ptr noundef %91, ptr noundef %8), !dbg !4590
  store i32 %92, ptr %9, align 4, !dbg !4591
  br label %93, !dbg !4592

93:                                               ; preds = %89, %81
  %94 = load i32, ptr %8, align 4, !dbg !4593
  %95 = sext i32 %94 to i64, !dbg !4594
  %96 = shl i64 %95, 56, !dbg !4595
  %97 = load i64, ptr %7, align 8, !dbg !4596
  %98 = add i64 %97, %96, !dbg !4596
  store i64 %98, ptr %7, align 8, !dbg !4596
  %99 = load i32, ptr %9, align 4, !dbg !4597
  %100 = icmp eq i32 %99, 0, !dbg !4599
  br i1 %100, label %101, label %104, !dbg !4600

101:                                              ; preds = %93
  %102 = load i64, ptr %7, align 8, !dbg !4601
  %103 = load ptr, ptr %6, align 8, !dbg !4602
  store i64 %102, ptr %103, align 8, !dbg !4603
  br label %106, !dbg !4604

104:                                              ; preds = %93
  %105 = load ptr, ptr %6, align 8, !dbg !4605
  store i64 0, ptr %105, align 8, !dbg !4606
  br label %106

106:                                              ; preds = %104, %101
  %107 = load i32, ptr %9, align 4, !dbg !4607
  ret i32 %107, !dbg !4608
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip64local_getShort(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !4609 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4610, metadata !DIExpression()), !dbg !4611
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4612, metadata !DIExpression()), !dbg !4613
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4614, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4616, metadata !DIExpression()), !dbg !4617
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4618, metadata !DIExpression()), !dbg !4619
  store i32 0, ptr %8, align 4, !dbg !4619
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4620, metadata !DIExpression()), !dbg !4621
  %10 = load ptr, ptr %4, align 8, !dbg !4622
  %11 = load ptr, ptr %5, align 8, !dbg !4623
  %12 = call i32 @zip64local_getByte(ptr noundef %10, ptr noundef %11, ptr noundef %8), !dbg !4624
  store i32 %12, ptr %9, align 4, !dbg !4625
  %13 = load i32, ptr %8, align 4, !dbg !4626
  %14 = sext i32 %13 to i64, !dbg !4627
  store i64 %14, ptr %7, align 8, !dbg !4628
  %15 = load i32, ptr %9, align 4, !dbg !4629
  %16 = icmp eq i32 %15, 0, !dbg !4631
  br i1 %16, label %17, label %21, !dbg !4632

17:                                               ; preds = %3
  %18 = load ptr, ptr %4, align 8, !dbg !4633
  %19 = load ptr, ptr %5, align 8, !dbg !4634
  %20 = call i32 @zip64local_getByte(ptr noundef %18, ptr noundef %19, ptr noundef %8), !dbg !4635
  store i32 %20, ptr %9, align 4, !dbg !4636
  br label %21, !dbg !4637

21:                                               ; preds = %17, %3
  %22 = load i32, ptr %8, align 4, !dbg !4638
  %23 = sext i32 %22 to i64, !dbg !4639
  %24 = shl i64 %23, 8, !dbg !4640
  %25 = load i64, ptr %7, align 8, !dbg !4641
  %26 = add i64 %25, %24, !dbg !4641
  store i64 %26, ptr %7, align 8, !dbg !4641
  %27 = load i32, ptr %9, align 4, !dbg !4642
  %28 = icmp eq i32 %27, 0, !dbg !4644
  br i1 %28, label %29, label %32, !dbg !4645

29:                                               ; preds = %21
  %30 = load i64, ptr %7, align 8, !dbg !4646
  %31 = load ptr, ptr %6, align 8, !dbg !4647
  store i64 %30, ptr %31, align 8, !dbg !4648
  br label %34, !dbg !4649

32:                                               ; preds = %21
  %33 = load ptr, ptr %6, align 8, !dbg !4650
  store i64 0, ptr %33, align 8, !dbg !4651
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, ptr %9, align 4, !dbg !4652
  ret i32 %35, !dbg !4653
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip64local_getByte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !4654 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4657, metadata !DIExpression()), !dbg !4658
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4659, metadata !DIExpression()), !dbg !4660
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4661, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4663, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4665, metadata !DIExpression()), !dbg !4666
  %10 = load ptr, ptr %5, align 8, !dbg !4667
  %11 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %10, i32 0, i32 0, !dbg !4667
  %12 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %11, i32 0, i32 1, !dbg !4667
  %13 = load ptr, ptr %12, align 8, !dbg !4667
  %14 = load ptr, ptr %5, align 8, !dbg !4667
  %15 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %14, i32 0, i32 0, !dbg !4667
  %16 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %15, i32 0, i32 8, !dbg !4667
  %17 = load ptr, ptr %16, align 8, !dbg !4667
  %18 = load ptr, ptr %6, align 8, !dbg !4667
  %19 = call i64 %13(ptr noundef %17, ptr noundef %18, ptr noundef %8, i64 noundef 1), !dbg !4667
  %20 = trunc i64 %19 to i32, !dbg !4668
  store i32 %20, ptr %9, align 4, !dbg !4666
  %21 = load i32, ptr %9, align 4, !dbg !4669
  %22 = icmp eq i32 %21, 1, !dbg !4671
  br i1 %22, label %23, label %27, !dbg !4672

23:                                               ; preds = %3
  %24 = load i8, ptr %8, align 1, !dbg !4673
  %25 = zext i8 %24 to i32, !dbg !4675
  %26 = load ptr, ptr %7, align 8, !dbg !4676
  store i32 %25, ptr %26, align 4, !dbg !4677
  store i32 0, ptr %4, align 4, !dbg !4678
  br label %41, !dbg !4678

27:                                               ; preds = %3
  %28 = load ptr, ptr %5, align 8, !dbg !4679
  %29 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %28, i32 0, i32 0, !dbg !4679
  %30 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i32 0, i32 7, !dbg !4679
  %31 = load ptr, ptr %30, align 8, !dbg !4679
  %32 = load ptr, ptr %5, align 8, !dbg !4679
  %33 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %32, i32 0, i32 0, !dbg !4679
  %34 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %33, i32 0, i32 8, !dbg !4679
  %35 = load ptr, ptr %34, align 8, !dbg !4679
  %36 = load ptr, ptr %6, align 8, !dbg !4679
  %37 = call i32 %31(ptr noundef %35, ptr noundef %36), !dbg !4679
  %38 = icmp ne i32 %37, 0, !dbg !4679
  br i1 %38, label %39, label %40, !dbg !4682

39:                                               ; preds = %27
  store i32 -1, ptr %4, align 4, !dbg !4683
  br label %41, !dbg !4683

40:                                               ; preds = %27
  store i32 0, ptr %4, align 4, !dbg !4684
  br label %41, !dbg !4684

41:                                               ; preds = %40, %39, %23
  %42 = load i32, ptr %4, align 4, !dbg !4685
  ret i32 %42, !dbg !4685
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) #5

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_keys(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !4686 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4689, metadata !DIExpression()), !dbg !4690
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4691, metadata !DIExpression()), !dbg !4692
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4693, metadata !DIExpression()), !dbg !4694
  %7 = load ptr, ptr %5, align 8, !dbg !4695
  %8 = getelementptr inbounds i64, ptr %7, i64 0, !dbg !4696
  store i64 305419896, ptr %8, align 8, !dbg !4697
  %9 = load ptr, ptr %5, align 8, !dbg !4698
  %10 = getelementptr inbounds i64, ptr %9, i64 1, !dbg !4699
  store i64 591751049, ptr %10, align 8, !dbg !4700
  %11 = load ptr, ptr %5, align 8, !dbg !4701
  %12 = getelementptr inbounds i64, ptr %11, i64 2, !dbg !4702
  store i64 878082192, ptr %12, align 8, !dbg !4703
  br label %13, !dbg !4704

13:                                               ; preds = %18, %3
  %14 = load ptr, ptr %4, align 8, !dbg !4705
  %15 = load i8, ptr %14, align 1, !dbg !4706
  %16 = sext i8 %15 to i32, !dbg !4706
  %17 = icmp ne i32 %16, 0, !dbg !4707
  br i1 %17, label %18, label %27, !dbg !4704

18:                                               ; preds = %13
  %19 = load ptr, ptr %5, align 8, !dbg !4708
  %20 = load ptr, ptr %6, align 8, !dbg !4710
  %21 = load ptr, ptr %4, align 8, !dbg !4711
  %22 = load i8, ptr %21, align 1, !dbg !4712
  %23 = sext i8 %22 to i32, !dbg !4713
  %24 = call i32 @update_keys(ptr noundef %19, ptr noundef %20, i32 noundef %23), !dbg !4714
  %25 = load ptr, ptr %4, align 8, !dbg !4715
  %26 = getelementptr inbounds i8, ptr %25, i32 1, !dbg !4715
  store ptr %26, ptr %4, align 8, !dbg !4715
  br label %13, !dbg !4704, !llvm.loop !4716

27:                                               ; preds = %13
  ret void, !dbg !4718
}

; Function Attrs: nounwind
declare i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decrypt_byte(ptr noundef %0, ptr noundef %1) #0 !dbg !4719 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4722, metadata !DIExpression()), !dbg !4723
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4724, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4726, metadata !DIExpression()), !dbg !4727
  %6 = load ptr, ptr %3, align 8, !dbg !4728
  %7 = getelementptr inbounds i64, ptr %6, i64 2, !dbg !4729
  %8 = load i64, ptr %7, align 8, !dbg !4730
  %9 = trunc i64 %8 to i32, !dbg !4731
  %10 = and i32 %9, 65535, !dbg !4732
  %11 = or i32 %10, 2, !dbg !4733
  store i32 %11, ptr %5, align 4, !dbg !4734
  %12 = load i32, ptr %5, align 4, !dbg !4735
  %13 = load i32, ptr %5, align 4, !dbg !4736
  %14 = xor i32 %13, 1, !dbg !4737
  %15 = mul i32 %12, %14, !dbg !4738
  %16 = lshr i32 %15, 8, !dbg !4739
  %17 = and i32 %16, 255, !dbg !4740
  ret i32 %17, !dbg !4741
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_keys(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !4742 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4745, metadata !DIExpression()), !dbg !4746
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4747, metadata !DIExpression()), !dbg !4748
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4749, metadata !DIExpression()), !dbg !4750
  %8 = load ptr, ptr %5, align 8, !dbg !4751
  %9 = load ptr, ptr %4, align 8, !dbg !4751
  %10 = getelementptr inbounds i64, ptr %9, i64 0, !dbg !4751
  %11 = load i64, ptr %10, align 8, !dbg !4751
  %12 = trunc i64 %11 to i32, !dbg !4751
  %13 = load i32, ptr %6, align 4, !dbg !4751
  %14 = xor i32 %12, %13, !dbg !4751
  %15 = and i32 %14, 255, !dbg !4751
  %16 = sext i32 %15 to i64, !dbg !4751
  %17 = getelementptr inbounds i32, ptr %8, i64 %16, !dbg !4751
  %18 = load i32, ptr %17, align 4, !dbg !4751
  %19 = zext i32 %18 to i64, !dbg !4751
  %20 = load ptr, ptr %4, align 8, !dbg !4751
  %21 = getelementptr inbounds i64, ptr %20, i64 0, !dbg !4751
  %22 = load i64, ptr %21, align 8, !dbg !4751
  %23 = lshr i64 %22, 8, !dbg !4751
  %24 = xor i64 %19, %23, !dbg !4751
  %25 = load ptr, ptr %4, align 8, !dbg !4752
  %26 = getelementptr inbounds i64, ptr %25, i64 0, !dbg !4753
  store i64 %24, ptr %26, align 8, !dbg !4754
  %27 = load ptr, ptr %4, align 8, !dbg !4755
  %28 = getelementptr inbounds i64, ptr %27, i64 0, !dbg !4756
  %29 = load i64, ptr %28, align 8, !dbg !4757
  %30 = and i64 %29, 255, !dbg !4758
  %31 = load ptr, ptr %4, align 8, !dbg !4759
  %32 = getelementptr inbounds i64, ptr %31, i64 1, !dbg !4760
  %33 = load i64, ptr %32, align 8, !dbg !4761
  %34 = add i64 %33, %30, !dbg !4761
  store i64 %34, ptr %32, align 8, !dbg !4761
  %35 = load ptr, ptr %4, align 8, !dbg !4762
  %36 = getelementptr inbounds i64, ptr %35, i64 1, !dbg !4763
  %37 = load i64, ptr %36, align 8, !dbg !4764
  %38 = mul i64 %37, 134775813, !dbg !4765
  %39 = add i64 %38, 1, !dbg !4766
  %40 = load ptr, ptr %4, align 8, !dbg !4767
  %41 = getelementptr inbounds i64, ptr %40, i64 1, !dbg !4768
  store i64 %39, ptr %41, align 8, !dbg !4769
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4770, metadata !DIExpression()), !dbg !4772
  %42 = load ptr, ptr %4, align 8, !dbg !4773
  %43 = getelementptr inbounds i64, ptr %42, i64 1, !dbg !4774
  %44 = load i64, ptr %43, align 8, !dbg !4775
  %45 = lshr i64 %44, 24, !dbg !4776
  %46 = trunc i64 %45 to i32, !dbg !4777
  store i32 %46, ptr %7, align 4, !dbg !4772
  %47 = load ptr, ptr %5, align 8, !dbg !4778
  %48 = load ptr, ptr %4, align 8, !dbg !4778
  %49 = getelementptr inbounds i64, ptr %48, i64 2, !dbg !4778
  %50 = load i64, ptr %49, align 8, !dbg !4778
  %51 = trunc i64 %50 to i32, !dbg !4778
  %52 = load i32, ptr %7, align 4, !dbg !4778
  %53 = xor i32 %51, %52, !dbg !4778
  %54 = and i32 %53, 255, !dbg !4778
  %55 = sext i32 %54 to i64, !dbg !4778
  %56 = getelementptr inbounds i32, ptr %47, i64 %55, !dbg !4778
  %57 = load i32, ptr %56, align 4, !dbg !4778
  %58 = zext i32 %57 to i64, !dbg !4778
  %59 = load ptr, ptr %4, align 8, !dbg !4778
  %60 = getelementptr inbounds i64, ptr %59, i64 2, !dbg !4778
  %61 = load i64, ptr %60, align 8, !dbg !4778
  %62 = lshr i64 %61, 8, !dbg !4778
  %63 = xor i64 %58, %62, !dbg !4778
  %64 = load ptr, ptr %4, align 8, !dbg !4779
  %65 = getelementptr inbounds i64, ptr %64, i64 2, !dbg !4780
  store i64 %63, ptr %65, align 8, !dbg !4781
  %66 = load i32, ptr %6, align 4, !dbg !4782
  ret i32 %66, !dbg !4783
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @allocate_new_datablock() #0 !dbg !4784 {
  %1 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !4787, metadata !DIExpression()), !dbg !4788
  %2 = call noalias ptr @malloc(i64 noundef 4112) #8, !dbg !4789
  store ptr %2, ptr %1, align 8, !dbg !4790
  %3 = load ptr, ptr %1, align 8, !dbg !4791
  %4 = icmp ne ptr %3, null, !dbg !4793
  br i1 %4, label %5, label %12, !dbg !4794

5:                                                ; preds = %0
  %6 = load ptr, ptr %1, align 8, !dbg !4795
  %7 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %6, i32 0, i32 0, !dbg !4797
  store ptr null, ptr %7, align 8, !dbg !4798
  %8 = load ptr, ptr %1, align 8, !dbg !4799
  %9 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %8, i32 0, i32 2, !dbg !4800
  store i64 0, ptr %9, align 8, !dbg !4801
  %10 = load ptr, ptr %1, align 8, !dbg !4802
  %11 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %10, i32 0, i32 1, !dbg !4803
  store i64 4080, ptr %11, align 8, !dbg !4804
  br label %12, !dbg !4805

12:                                               ; preds = %5, %0
  %13 = load ptr, ptr %1, align 8, !dbg !4806
  ret ptr %13, !dbg !4807
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_datablock(ptr noundef %0) #0 !dbg !4808 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4811, metadata !DIExpression()), !dbg !4812
  br label %4, !dbg !4813

4:                                                ; preds = %15, %1
  %5 = load ptr, ptr %2, align 8, !dbg !4814
  %6 = icmp ne ptr %5, null, !dbg !4815
  br i1 %6, label %7, label %17, !dbg !4813

7:                                                ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4816, metadata !DIExpression()), !dbg !4818
  %8 = load ptr, ptr %2, align 8, !dbg !4819
  %9 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %8, i32 0, i32 0, !dbg !4820
  %10 = load ptr, ptr %9, align 8, !dbg !4820
  store ptr %10, ptr %3, align 8, !dbg !4818
  %11 = load ptr, ptr %2, align 8, !dbg !4821
  %12 = icmp ne ptr %11, null, !dbg !4821
  br i1 %12, label %13, label %15, !dbg !4824

13:                                               ; preds = %7
  %14 = load ptr, ptr %2, align 8, !dbg !4821
  call void @free(ptr noundef %14) #9, !dbg !4821
  br label %15, !dbg !4821

15:                                               ; preds = %13, %7
  %16 = load ptr, ptr %3, align 8, !dbg !4825
  store ptr %16, ptr %2, align 8, !dbg !4826
  br label %4, !dbg !4813, !llvm.loop !4827

17:                                               ; preds = %4
  ret void, !dbg !4829
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!207, !208, !209, !210, !211, !212, !213}
!llvm.ident = !{!214}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "zip_copyright", scope: !2, file: !3, line: 98, type: !204, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !185, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/minizip/zip.c", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "f85a91e83fcac3c493f48855b5b30a33")
!4 = !{!5, !6, !177, !26, !118, !125, !34, !69, !130, !135, !24, !28, !180, !182, !51, !99, !181, !119, !183, !88}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip64_internal", file: !3, line: 181, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 165, size: 527680, elements: !9)
!9 = !{!10, !82, !83, !103, !104, !173, !174, !175, !176}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "z_filefunc", scope: !8, file: !3, line: 167, baseType: !11, size: 768)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "zlib_filefunc64_32_def", file: !12, line: 205, baseType: !13)
!12 = !DIFile(filename: "src/minizip/ioapi.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "a4dac867a80298bfdbdc2d3a375e5352")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zlib_filefunc64_32_def_s", file: !12, line: 199, size: 768, elements: !14)
!14 = !{!15, !64, !72, !77}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "zfile_func64", scope: !13, file: !12, line: 201, baseType: !16, size: 576)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "zlib_filefunc64_def", file: !12, line: 193, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zlib_filefunc64_def_s", file: !12, line: 182, size: 576, elements: !18)
!18 = !{!19, !29, !36, !41, !46, !53, !59, !61, !63}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "zopen64_file", scope: !17, file: !12, line: 184, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "open64_file_func", file: !12, line: 180, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !24, !26, !28}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !25, line: 409, baseType: !5)
!25 = !DIFile(filename: "/usr/include/zconf.h", directory: "", checksumkind: CSK_MD5, checksum: "95e83c46958f6395f746c80cc6799e76")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "zread_file", scope: !17, file: !12, line: 185, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "read_file_func", file: !12, line: 154, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !24, !24, !5, !34}
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !25, line: 394, baseType: !35)
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "zwrite_file", scope: !17, file: !12, line: 186, baseType: !37, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "write_file_func", file: !12, line: 155, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!34, !24, !24, !26, !34}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "zflush_file", scope: !17, file: !12, line: 187, baseType: !42, size: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "flush_file_func", file: !12, line: 156, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!28, !24, !24}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ztell64_file", scope: !17, file: !12, line: 188, baseType: !47, size: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "tell64_file_func", file: !12, line: 178, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !24, !24}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZPOS64_T", file: !12, line: 118, baseType: !52)
!52 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "zseek64_file", scope: !17, file: !12, line: 189, baseType: !54, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "seek64_file_func", file: !12, line: 179, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !24, !24, !51, !28}
!58 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "zclose_file", scope: !17, file: !12, line: 190, baseType: !60, size: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "close_file_func", file: !12, line: 157, baseType: !43)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "zerror_file", scope: !17, file: !12, line: 191, baseType: !62, size: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "testerror_file_func", file: !12, line: 158, baseType: !43)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !17, file: !12, line: 192, baseType: !24, size: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "zopen32_file", scope: !13, file: !12, line: 202, baseType: !65, size: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "open_file_func", file: !12, line: 153, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!24, !24, !69, !28}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ztell32_file", scope: !13, file: !12, line: 203, baseType: !73, size: 64, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "tell_file_func", file: !12, line: 160, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!58, !24, !24}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "zseek32_file", scope: !13, file: !12, line: 204, baseType: !78, size: 64, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "seek_file_func", file: !12, line: 161, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!58, !24, !24, !34, !28}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "filestream", scope: !8, file: !3, line: 168, baseType: !24, size: 64, offset: 768)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "central_dir", scope: !8, file: !3, line: 169, baseType: !84, size: 128, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "linkedlist_data", file: !3, line: 127, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linkedlist_data_s", file: !3, line: 123, size: 128, elements: !86)
!86 = !{!87, !102}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "first_block", scope: !85, file: !3, line: 125, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "linkedlist_datablock_internal", file: !3, line: 121, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linkedlist_datablock_internal_s", file: !3, line: 114, size: 32896, elements: !91)
!91 = !{!92, !94, !95, !96, !97}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next_datablock", scope: !90, file: !3, line: 116, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in_this_block", scope: !90, file: !3, line: 117, baseType: !34, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "filled_in_this_block", scope: !90, file: !3, line: 118, baseType: !34, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !90, file: !3, line: 119, baseType: !34, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !90, file: !3, line: 120, baseType: !98, size: 32640, offset: 256)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 32640, elements: !100)
!99 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!100 = !{!101}
!101 = !DISubrange(count: 4080)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "last_block", scope: !85, file: !3, line: 126, baseType: !88, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "in_opened_file_inzip", scope: !8, file: !3, line: 170, baseType: !28, size: 32, offset: 960)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !8, file: !3, line: 171, baseType: !105, size: 526400, offset: 1024)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "curfile64_info", file: !3, line: 163, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 130, size: 526400, elements: !107)
!107 = !{!108, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !157, !158, !159, !160, !161, !162, !163, !164, !168, !172}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !106, file: !3, line: 132, baseType: !109, size: 896)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !110, line: 106, baseType: !111)
!110 = !DIFile(filename: "/usr/include/zlib.h", directory: "", checksumkind: CSK_MD5, checksum: "69c0882c2071430ea4822b4f6c1edd30")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !110, line: 86, size: 896, elements: !112)
!112 = !{!113, !117, !120, !121, !122, !123, !124, !126, !129, !134, !139, !140, !141, !142}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !111, file: !110, line: 87, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !25, line: 400, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !25, line: 391, baseType: !99)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !111, file: !110, line: 88, baseType: !118, size: 32, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !25, line: 393, baseType: !119)
!119 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !111, file: !110, line: 89, baseType: !34, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !111, file: !110, line: 91, baseType: !114, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !111, file: !110, line: 92, baseType: !118, size: 32, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !111, file: !110, line: 93, baseType: !34, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !111, file: !110, line: 95, baseType: !125, size: 64, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !111, file: !110, line: 96, baseType: !127, size: 64, offset: 448)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !110, line: 84, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !111, file: !110, line: 98, baseType: !130, size: 64, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !110, line: 81, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!24, !24, !118, !118}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !111, file: !110, line: 99, baseType: !135, size: 64, offset: 576)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !110, line: 82, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !24, !24}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !111, file: !110, line: 100, baseType: !24, size: 64, offset: 640)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !111, file: !110, line: 102, baseType: !28, size: 32, offset: 704)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !111, file: !110, line: 104, baseType: !34, size: 64, offset: 768)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !111, file: !110, line: 105, baseType: !34, size: 64, offset: 832)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "stream_initialised", scope: !106, file: !3, line: 137, baseType: !28, size: 32, offset: 896)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pos_in_buffered_data", scope: !106, file: !3, line: 138, baseType: !118, size: 32, offset: 928)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "pos_local_header", scope: !106, file: !3, line: 140, baseType: !51, size: 64, offset: 960)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "central_header", scope: !106, file: !3, line: 142, baseType: !125, size: 64, offset: 1024)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "size_centralExtra", scope: !106, file: !3, line: 143, baseType: !34, size: 64, offset: 1088)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "size_centralheader", scope: !106, file: !3, line: 144, baseType: !34, size: 64, offset: 1152)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "size_centralExtraFree", scope: !106, file: !3, line: 145, baseType: !34, size: 64, offset: 1216)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !106, file: !3, line: 146, baseType: !34, size: 64, offset: 1280)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !106, file: !3, line: 148, baseType: !28, size: 32, offset: 1344)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !106, file: !3, line: 149, baseType: !28, size: 32, offset: 1376)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_data", scope: !106, file: !3, line: 150, baseType: !154, size: 524288, offset: 1408)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 524288, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 65536)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "dosDate", scope: !106, file: !3, line: 151, baseType: !34, size: 64, offset: 525696)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !106, file: !3, line: 152, baseType: !34, size: 64, offset: 525760)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "encrypt", scope: !106, file: !3, line: 153, baseType: !28, size: 32, offset: 525824)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "zip64", scope: !106, file: !3, line: 154, baseType: !28, size: 32, offset: 525856)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pos_zip64extrainfo", scope: !106, file: !3, line: 155, baseType: !51, size: 64, offset: 525888)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "totalCompressedData", scope: !106, file: !3, line: 156, baseType: !51, size: 64, offset: 525952)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "totalUncompressedData", scope: !106, file: !3, line: 157, baseType: !51, size: 64, offset: 526016)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !106, file: !3, line: 159, baseType: !165, size: 192, offset: 526080)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 3)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "pcrc_32_tab", scope: !106, file: !3, line: 160, baseType: !169, size: 64, offset: 526272)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_crc_t", file: !25, line: 429, baseType: !119)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "crypt_header_size", scope: !106, file: !3, line: 161, baseType: !28, size: 32, offset: 526336)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "begin_pos", scope: !8, file: !3, line: 173, baseType: !51, size: 64, offset: 527424)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "add_position_when_writting_offset", scope: !8, file: !3, line: 174, baseType: !51, size: 64, offset: 527488)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "number_entry", scope: !8, file: !3, line: 175, baseType: !51, size: 64, offset: 527552)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "globalcomment", scope: !8, file: !3, line: 178, baseType: !125, size: 64, offset: 527616)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "zipFile", file: !178, line: 69, baseType: !179)
!178 = !DIFile(filename: "src/minizip/zip.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "e2067124d539336fa48f8e1adc0a9592")
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidp", file: !25, line: 410, baseType: !5)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!185 = !{!0, !186, !191, !196}
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1096, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 16, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 2)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1221, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 56, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 7)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "calls", scope: !198, file: !199, line: 101, type: !119, isLocal: true, isDefinition: true)
!198 = distinct !DISubprogram(name: "crypthead", scope: !199, file: !199, line: 90, type: !200, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!199 = !DIFile(filename: "src/minizip/crypt.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "6e72c46776f0db175ec8f15144a3c250")
!200 = !DISubroutineType(types: !201)
!201 = !{!28, !69, !182, !28, !202, !169, !35}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!203 = !{}
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 632, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 79)
!207 = !{i32 7, !"Dwarf Version", i32 5}
!208 = !{i32 2, !"Debug Info Version", i32 3}
!209 = !{i32 1, !"wchar_size", i32 4}
!210 = !{i32 8, !"PIC Level", i32 2}
!211 = !{i32 7, !"PIE Level", i32 2}
!212 = !{i32 7, !"uwtable", i32 2}
!213 = !{i32 7, !"frame-pointer", i32 2}
!214 = !{!"clang version 16.0.0"}
!215 = distinct !DISubprogram(name: "zipOpen3", scope: !3, file: !3, line: 849, type: !216, scopeLine: 850, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!216 = !DISubroutineType(types: !217)
!217 = !{!177, !26, !28, !218, !220}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "zipcharpc", file: !178, line: 109, baseType: !69)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!221 = !DILocalVariable(name: "pathname", arg: 1, scope: !215, file: !3, line: 849, type: !26)
!222 = !DILocation(line: 849, column: 46, scope: !215)
!223 = !DILocalVariable(name: "append", arg: 2, scope: !215, file: !3, line: 849, type: !28)
!224 = !DILocation(line: 849, column: 60, scope: !215)
!225 = !DILocalVariable(name: "globalcomment", arg: 3, scope: !215, file: !3, line: 849, type: !218)
!226 = !DILocation(line: 849, column: 79, scope: !215)
!227 = !DILocalVariable(name: "pzlib_filefunc64_32_def", arg: 4, scope: !215, file: !3, line: 849, type: !220)
!228 = !DILocation(line: 849, column: 118, scope: !215)
!229 = !DILocalVariable(name: "ziinit", scope: !215, file: !3, line: 851, type: !7)
!230 = !DILocation(line: 851, column: 20, scope: !215)
!231 = !DILocalVariable(name: "zi", scope: !215, file: !3, line: 852, type: !6)
!232 = !DILocation(line: 852, column: 21, scope: !215)
!233 = !DILocalVariable(name: "err", scope: !215, file: !3, line: 853, type: !28)
!234 = !DILocation(line: 853, column: 9, scope: !215)
!235 = !DILocation(line: 855, column: 12, scope: !215)
!236 = !DILocation(line: 855, column: 23, scope: !215)
!237 = !DILocation(line: 855, column: 36, scope: !215)
!238 = !DILocation(line: 856, column: 12, scope: !215)
!239 = !DILocation(line: 856, column: 23, scope: !215)
!240 = !DILocation(line: 856, column: 36, scope: !215)
!241 = !DILocation(line: 857, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !215, file: !3, line: 857, column: 9)
!243 = !DILocation(line: 857, column: 32, scope: !242)
!244 = !DILocation(line: 857, column: 9, scope: !215)
!245 = !DILocation(line: 858, column: 39, scope: !242)
!246 = !DILocation(line: 858, column: 50, scope: !242)
!247 = !DILocation(line: 858, column: 9, scope: !242)
!248 = !DILocation(line: 860, column: 16, scope: !242)
!249 = !DILocation(line: 860, column: 30, scope: !242)
!250 = !DILocation(line: 860, column: 29, scope: !242)
!251 = !DILocation(line: 862, column: 25, scope: !215)
!252 = !DILocation(line: 862, column: 12, scope: !215)
!253 = !DILocation(line: 862, column: 23, scope: !215)
!254 = !DILocation(line: 868, column: 16, scope: !255)
!255 = distinct !DILexicalBlock(scope: !215, file: !3, line: 868, column: 9)
!256 = !DILocation(line: 868, column: 27, scope: !255)
!257 = !DILocation(line: 868, column: 9, scope: !215)
!258 = !DILocation(line: 869, column: 9, scope: !255)
!259 = !DILocation(line: 871, column: 9, scope: !260)
!260 = distinct !DILexicalBlock(scope: !215, file: !3, line: 871, column: 9)
!261 = !DILocation(line: 871, column: 16, scope: !260)
!262 = !DILocation(line: 871, column: 9, scope: !215)
!263 = !DILocation(line: 872, column: 9, scope: !260)
!264 = !DILocation(line: 874, column: 24, scope: !215)
!265 = !DILocation(line: 874, column: 12, scope: !215)
!266 = !DILocation(line: 874, column: 22, scope: !215)
!267 = !DILocation(line: 875, column: 12, scope: !215)
!268 = !DILocation(line: 875, column: 33, scope: !215)
!269 = !DILocation(line: 876, column: 12, scope: !215)
!270 = !DILocation(line: 876, column: 15, scope: !215)
!271 = !DILocation(line: 876, column: 34, scope: !215)
!272 = !DILocation(line: 877, column: 12, scope: !215)
!273 = !DILocation(line: 877, column: 25, scope: !215)
!274 = !DILocation(line: 878, column: 12, scope: !215)
!275 = !DILocation(line: 878, column: 46, scope: !215)
!276 = !DILocation(line: 879, column: 30, scope: !215)
!277 = !DILocation(line: 879, column: 5, scope: !215)
!278 = !DILocation(line: 883, column: 27, scope: !215)
!279 = !DILocation(line: 883, column: 8, scope: !215)
!280 = !DILocation(line: 884, column: 9, scope: !281)
!281 = distinct !DILexicalBlock(scope: !215, file: !3, line: 884, column: 9)
!282 = !DILocation(line: 884, column: 11, scope: !281)
!283 = !DILocation(line: 884, column: 9, scope: !215)
!284 = !DILocation(line: 886, column: 9, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !3, line: 885, column: 5)
!286 = !DILocation(line: 887, column: 9, scope: !285)
!287 = !DILocation(line: 892, column: 12, scope: !215)
!288 = !DILocation(line: 892, column: 26, scope: !215)
!289 = !DILocation(line: 893, column: 9, scope: !290)
!290 = distinct !DILexicalBlock(scope: !215, file: !3, line: 893, column: 9)
!291 = !DILocation(line: 893, column: 16, scope: !290)
!292 = !DILocation(line: 893, column: 9, scope: !215)
!293 = !DILocation(line: 896, column: 13, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !3, line: 894, column: 5)
!295 = !DILocation(line: 896, column: 11, scope: !294)
!296 = !DILocation(line: 897, column: 5, scope: !294)
!297 = !DILocation(line: 899, column: 9, scope: !298)
!298 = distinct !DILexicalBlock(scope: !215, file: !3, line: 899, column: 9)
!299 = !DILocation(line: 899, column: 9, scope: !215)
!300 = !DILocation(line: 901, column: 31, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !3, line: 900, column: 5)
!302 = !DILocation(line: 901, column: 8, scope: !301)
!303 = !DILocation(line: 901, column: 22, scope: !301)
!304 = !DILocation(line: 902, column: 5, scope: !301)
!305 = !DILocation(line: 905, column: 9, scope: !306)
!306 = distinct !DILexicalBlock(scope: !215, file: !3, line: 905, column: 9)
!307 = !DILocation(line: 905, column: 13, scope: !306)
!308 = !DILocation(line: 905, column: 9, scope: !215)
!309 = !DILocation(line: 908, column: 9, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !3, line: 908, column: 9)
!311 = distinct !DILexicalBlock(scope: !312, file: !3, line: 908, column: 9)
!312 = distinct !DILexicalBlock(scope: !306, file: !3, line: 906, column: 5)
!313 = !DILocation(line: 908, column: 9, scope: !311)
!314 = !DILocation(line: 910, column: 9, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !3, line: 910, column: 9)
!316 = distinct !DILexicalBlock(scope: !312, file: !3, line: 910, column: 9)
!317 = !DILocation(line: 910, column: 9, scope: !316)
!318 = !DILocation(line: 911, column: 9, scope: !312)
!319 = !DILocation(line: 915, column: 10, scope: !320)
!320 = distinct !DILexicalBlock(scope: !306, file: !3, line: 914, column: 5)
!321 = !DILocation(line: 915, column: 15, scope: !320)
!322 = !DILocation(line: 916, column: 25, scope: !320)
!323 = !DILocation(line: 916, column: 9, scope: !320)
!324 = !DILocation(line: 918, column: 1, scope: !215)
!325 = distinct !DISubprogram(name: "init_linkedlist", scope: !3, file: !3, line: 213, type: !326, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!329 = !DILocalVariable(name: "ll", arg: 1, scope: !325, file: !3, line: 213, type: !328)
!330 = !DILocation(line: 213, column: 45, scope: !325)
!331 = !DILocation(line: 215, column: 23, scope: !325)
!332 = !DILocation(line: 215, column: 27, scope: !325)
!333 = !DILocation(line: 215, column: 38, scope: !325)
!334 = !DILocation(line: 215, column: 5, scope: !325)
!335 = !DILocation(line: 215, column: 9, scope: !325)
!336 = !DILocation(line: 215, column: 21, scope: !325)
!337 = !DILocation(line: 216, column: 1, scope: !325)
!338 = distinct !DISubprogram(name: "LoadCentralDirectoryRecord", scope: !3, file: !3, line: 640, type: !339, scopeLine: 641, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!339 = !DISubroutineType(types: !340)
!340 = !{!28, !6}
!341 = !DILocalVariable(name: "pziinit", arg: 1, scope: !338, file: !3, line: 640, type: !6)
!342 = !DILocation(line: 640, column: 54, scope: !338)
!343 = !DILocalVariable(name: "err", scope: !338, file: !3, line: 642, type: !28)
!344 = !DILocation(line: 642, column: 7, scope: !338)
!345 = !DILocalVariable(name: "byte_before_the_zipfile", scope: !338, file: !3, line: 643, type: !51)
!346 = !DILocation(line: 643, column: 12, scope: !338)
!347 = !DILocalVariable(name: "size_central_dir", scope: !338, file: !3, line: 645, type: !51)
!348 = !DILocation(line: 645, column: 12, scope: !338)
!349 = !DILocalVariable(name: "offset_central_dir", scope: !338, file: !3, line: 646, type: !51)
!350 = !DILocation(line: 646, column: 12, scope: !338)
!351 = !DILocalVariable(name: "central_pos", scope: !338, file: !3, line: 647, type: !51)
!352 = !DILocation(line: 647, column: 12, scope: !338)
!353 = !DILocalVariable(name: "uL", scope: !338, file: !3, line: 648, type: !34)
!354 = !DILocation(line: 648, column: 9, scope: !338)
!355 = !DILocalVariable(name: "number_disk", scope: !338, file: !3, line: 650, type: !34)
!356 = !DILocation(line: 650, column: 9, scope: !338)
!357 = !DILocalVariable(name: "number_disk_with_CD", scope: !338, file: !3, line: 652, type: !34)
!358 = !DILocation(line: 652, column: 9, scope: !338)
!359 = !DILocalVariable(name: "number_entry", scope: !338, file: !3, line: 654, type: !51)
!360 = !DILocation(line: 654, column: 12, scope: !338)
!361 = !DILocalVariable(name: "number_entry_CD", scope: !338, file: !3, line: 655, type: !51)
!362 = !DILocation(line: 655, column: 12, scope: !338)
!363 = !DILocalVariable(name: "VersionMadeBy", scope: !338, file: !3, line: 658, type: !34)
!364 = !DILocation(line: 658, column: 9, scope: !338)
!365 = !DILocalVariable(name: "VersionNeeded", scope: !338, file: !3, line: 659, type: !34)
!366 = !DILocation(line: 659, column: 9, scope: !338)
!367 = !DILocalVariable(name: "size_comment", scope: !338, file: !3, line: 660, type: !34)
!368 = !DILocation(line: 660, column: 9, scope: !338)
!369 = !DILocalVariable(name: "hasZIP64Record", scope: !338, file: !3, line: 662, type: !28)
!370 = !DILocation(line: 662, column: 7, scope: !338)
!371 = !DILocation(line: 665, column: 48, scope: !338)
!372 = !DILocation(line: 665, column: 57, scope: !338)
!373 = !DILocation(line: 665, column: 68, scope: !338)
!374 = !DILocation(line: 665, column: 77, scope: !338)
!375 = !DILocation(line: 665, column: 17, scope: !338)
!376 = !DILocation(line: 665, column: 15, scope: !338)
!377 = !DILocation(line: 666, column: 6, scope: !378)
!378 = distinct !DILexicalBlock(scope: !338, file: !3, line: 666, column: 6)
!379 = !DILocation(line: 666, column: 18, scope: !378)
!380 = !DILocation(line: 666, column: 6, scope: !338)
!381 = !DILocation(line: 668, column: 20, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !3, line: 667, column: 3)
!383 = !DILocation(line: 669, column: 3, scope: !382)
!384 = !DILocation(line: 670, column: 11, scope: !385)
!385 = distinct !DILexicalBlock(scope: !378, file: !3, line: 670, column: 11)
!386 = !DILocation(line: 670, column: 23, scope: !385)
!387 = !DILocation(line: 670, column: 11, scope: !378)
!388 = !DILocation(line: 672, column: 48, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !3, line: 671, column: 3)
!390 = !DILocation(line: 672, column: 57, scope: !389)
!391 = !DILocation(line: 672, column: 68, scope: !389)
!392 = !DILocation(line: 672, column: 77, scope: !389)
!393 = !DILocation(line: 672, column: 19, scope: !389)
!394 = !DILocation(line: 672, column: 17, scope: !389)
!395 = !DILocation(line: 673, column: 3, scope: !389)
!396 = !DILocation(line: 680, column: 6, scope: !397)
!397 = distinct !DILexicalBlock(scope: !338, file: !3, line: 680, column: 6)
!398 = !DILocation(line: 680, column: 6, scope: !338)
!399 = !DILocalVariable(name: "sizeEndOfCentralDirectory", scope: !400, file: !3, line: 682, type: !51)
!400 = distinct !DILexicalBlock(scope: !397, file: !3, line: 681, column: 3)
!401 = !DILocation(line: 682, column: 14, scope: !400)
!402 = !DILocation(line: 683, column: 9, scope: !403)
!403 = distinct !DILexicalBlock(scope: !400, file: !3, line: 683, column: 9)
!404 = !DILocation(line: 683, column: 96, scope: !403)
!405 = !DILocation(line: 683, column: 9, scope: !400)
!406 = !DILocation(line: 684, column: 10, scope: !403)
!407 = !DILocation(line: 684, column: 7, scope: !403)
!408 = !DILocation(line: 687, column: 29, scope: !409)
!409 = distinct !DILexicalBlock(scope: !400, file: !3, line: 687, column: 9)
!410 = !DILocation(line: 687, column: 38, scope: !409)
!411 = !DILocation(line: 687, column: 50, scope: !409)
!412 = !DILocation(line: 687, column: 59, scope: !409)
!413 = !DILocation(line: 687, column: 9, scope: !409)
!414 = !DILocation(line: 687, column: 74, scope: !409)
!415 = !DILocation(line: 687, column: 9, scope: !400)
!416 = !DILocation(line: 688, column: 10, scope: !409)
!417 = !DILocation(line: 688, column: 7, scope: !409)
!418 = !DILocation(line: 691, column: 31, scope: !419)
!419 = distinct !DILexicalBlock(scope: !400, file: !3, line: 691, column: 9)
!420 = !DILocation(line: 691, column: 40, scope: !419)
!421 = !DILocation(line: 691, column: 52, scope: !419)
!422 = !DILocation(line: 691, column: 61, scope: !419)
!423 = !DILocation(line: 691, column: 9, scope: !419)
!424 = !DILocation(line: 691, column: 100, scope: !419)
!425 = !DILocation(line: 691, column: 9, scope: !400)
!426 = !DILocation(line: 692, column: 10, scope: !419)
!427 = !DILocation(line: 692, column: 7, scope: !419)
!428 = !DILocation(line: 695, column: 30, scope: !429)
!429 = distinct !DILexicalBlock(scope: !400, file: !3, line: 695, column: 9)
!430 = !DILocation(line: 695, column: 39, scope: !429)
!431 = !DILocation(line: 695, column: 51, scope: !429)
!432 = !DILocation(line: 695, column: 60, scope: !429)
!433 = !DILocation(line: 695, column: 9, scope: !429)
!434 = !DILocation(line: 695, column: 87, scope: !429)
!435 = !DILocation(line: 695, column: 9, scope: !400)
!436 = !DILocation(line: 696, column: 10, scope: !429)
!437 = !DILocation(line: 696, column: 7, scope: !429)
!438 = !DILocation(line: 699, column: 30, scope: !439)
!439 = distinct !DILexicalBlock(scope: !400, file: !3, line: 699, column: 9)
!440 = !DILocation(line: 699, column: 39, scope: !439)
!441 = !DILocation(line: 699, column: 51, scope: !439)
!442 = !DILocation(line: 699, column: 60, scope: !439)
!443 = !DILocation(line: 699, column: 9, scope: !439)
!444 = !DILocation(line: 699, column: 87, scope: !439)
!445 = !DILocation(line: 699, column: 9, scope: !400)
!446 = !DILocation(line: 700, column: 10, scope: !439)
!447 = !DILocation(line: 700, column: 7, scope: !439)
!448 = !DILocation(line: 703, column: 29, scope: !449)
!449 = distinct !DILexicalBlock(scope: !400, file: !3, line: 703, column: 9)
!450 = !DILocation(line: 703, column: 38, scope: !449)
!451 = !DILocation(line: 703, column: 50, scope: !449)
!452 = !DILocation(line: 703, column: 59, scope: !449)
!453 = !DILocation(line: 703, column: 9, scope: !449)
!454 = !DILocation(line: 703, column: 83, scope: !449)
!455 = !DILocation(line: 703, column: 9, scope: !400)
!456 = !DILocation(line: 704, column: 10, scope: !449)
!457 = !DILocation(line: 704, column: 7, scope: !449)
!458 = !DILocation(line: 707, column: 29, scope: !459)
!459 = distinct !DILexicalBlock(scope: !400, file: !3, line: 707, column: 9)
!460 = !DILocation(line: 707, column: 38, scope: !459)
!461 = !DILocation(line: 707, column: 50, scope: !459)
!462 = !DILocation(line: 707, column: 59, scope: !459)
!463 = !DILocation(line: 707, column: 9, scope: !459)
!464 = !DILocation(line: 707, column: 91, scope: !459)
!465 = !DILocation(line: 707, column: 9, scope: !400)
!466 = !DILocation(line: 708, column: 10, scope: !459)
!467 = !DILocation(line: 708, column: 7, scope: !459)
!468 = !DILocation(line: 711, column: 31, scope: !469)
!469 = distinct !DILexicalBlock(scope: !400, file: !3, line: 711, column: 9)
!470 = !DILocation(line: 711, column: 40, scope: !469)
!471 = !DILocation(line: 711, column: 52, scope: !469)
!472 = !DILocation(line: 711, column: 61, scope: !469)
!473 = !DILocation(line: 711, column: 9, scope: !469)
!474 = !DILocation(line: 711, column: 87, scope: !469)
!475 = !DILocation(line: 711, column: 9, scope: !400)
!476 = !DILocation(line: 712, column: 10, scope: !469)
!477 = !DILocation(line: 712, column: 7, scope: !469)
!478 = !DILocation(line: 715, column: 31, scope: !479)
!479 = distinct !DILexicalBlock(scope: !400, file: !3, line: 715, column: 9)
!480 = !DILocation(line: 715, column: 40, scope: !479)
!481 = !DILocation(line: 715, column: 52, scope: !479)
!482 = !DILocation(line: 715, column: 61, scope: !479)
!483 = !DILocation(line: 715, column: 9, scope: !479)
!484 = !DILocation(line: 715, column: 89, scope: !479)
!485 = !DILocation(line: 715, column: 9, scope: !400)
!486 = !DILocation(line: 716, column: 10, scope: !479)
!487 = !DILocation(line: 716, column: 7, scope: !479)
!488 = !DILocation(line: 718, column: 10, scope: !489)
!489 = distinct !DILexicalBlock(scope: !400, file: !3, line: 718, column: 9)
!490 = !DILocation(line: 718, column: 27, scope: !489)
!491 = !DILocation(line: 718, column: 25, scope: !489)
!492 = !DILocation(line: 718, column: 41, scope: !489)
!493 = !DILocation(line: 718, column: 45, scope: !489)
!494 = !DILocation(line: 718, column: 64, scope: !489)
!495 = !DILocation(line: 718, column: 69, scope: !489)
!496 = !DILocation(line: 718, column: 73, scope: !489)
!497 = !DILocation(line: 718, column: 84, scope: !489)
!498 = !DILocation(line: 718, column: 9, scope: !400)
!499 = !DILocation(line: 719, column: 10, scope: !489)
!500 = !DILocation(line: 719, column: 7, scope: !489)
!501 = !DILocation(line: 722, column: 31, scope: !502)
!502 = distinct !DILexicalBlock(scope: !400, file: !3, line: 722, column: 9)
!503 = !DILocation(line: 722, column: 40, scope: !502)
!504 = !DILocation(line: 722, column: 52, scope: !502)
!505 = !DILocation(line: 722, column: 61, scope: !502)
!506 = !DILocation(line: 722, column: 9, scope: !502)
!507 = !DILocation(line: 722, column: 90, scope: !502)
!508 = !DILocation(line: 722, column: 9, scope: !400)
!509 = !DILocation(line: 723, column: 10, scope: !502)
!510 = !DILocation(line: 723, column: 7, scope: !502)
!511 = !DILocation(line: 727, column: 31, scope: !512)
!512 = distinct !DILexicalBlock(scope: !400, file: !3, line: 727, column: 9)
!513 = !DILocation(line: 727, column: 40, scope: !512)
!514 = !DILocation(line: 727, column: 52, scope: !512)
!515 = !DILocation(line: 727, column: 61, scope: !512)
!516 = !DILocation(line: 727, column: 9, scope: !512)
!517 = !DILocation(line: 727, column: 92, scope: !512)
!518 = !DILocation(line: 727, column: 9, scope: !400)
!519 = !DILocation(line: 728, column: 10, scope: !512)
!520 = !DILocation(line: 728, column: 7, scope: !512)
!521 = !DILocation(line: 732, column: 18, scope: !400)
!522 = !DILocation(line: 733, column: 3, scope: !400)
!523 = !DILocation(line: 737, column: 9, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 737, column: 9)
!525 = distinct !DILexicalBlock(scope: !397, file: !3, line: 735, column: 3)
!526 = !DILocation(line: 737, column: 94, scope: !524)
!527 = !DILocation(line: 737, column: 9, scope: !525)
!528 = !DILocation(line: 738, column: 10, scope: !524)
!529 = !DILocation(line: 738, column: 7, scope: !524)
!530 = !DILocation(line: 741, column: 29, scope: !531)
!531 = distinct !DILexicalBlock(scope: !525, file: !3, line: 741, column: 9)
!532 = !DILocation(line: 741, column: 38, scope: !531)
!533 = !DILocation(line: 741, column: 50, scope: !531)
!534 = !DILocation(line: 741, column: 59, scope: !531)
!535 = !DILocation(line: 741, column: 9, scope: !531)
!536 = !DILocation(line: 741, column: 74, scope: !531)
!537 = !DILocation(line: 741, column: 9, scope: !525)
!538 = !DILocation(line: 742, column: 10, scope: !531)
!539 = !DILocation(line: 742, column: 7, scope: !531)
!540 = !DILocation(line: 745, column: 30, scope: !541)
!541 = distinct !DILexicalBlock(scope: !525, file: !3, line: 745, column: 9)
!542 = !DILocation(line: 745, column: 39, scope: !541)
!543 = !DILocation(line: 745, column: 51, scope: !541)
!544 = !DILocation(line: 745, column: 60, scope: !541)
!545 = !DILocation(line: 745, column: 9, scope: !541)
!546 = !DILocation(line: 745, column: 84, scope: !541)
!547 = !DILocation(line: 745, column: 9, scope: !525)
!548 = !DILocation(line: 746, column: 10, scope: !541)
!549 = !DILocation(line: 746, column: 7, scope: !541)
!550 = !DILocation(line: 749, column: 30, scope: !551)
!551 = distinct !DILexicalBlock(scope: !525, file: !3, line: 749, column: 9)
!552 = !DILocation(line: 749, column: 39, scope: !551)
!553 = !DILocation(line: 749, column: 51, scope: !551)
!554 = !DILocation(line: 749, column: 60, scope: !551)
!555 = !DILocation(line: 749, column: 9, scope: !551)
!556 = !DILocation(line: 749, column: 92, scope: !551)
!557 = !DILocation(line: 749, column: 9, scope: !525)
!558 = !DILocation(line: 750, column: 10, scope: !551)
!559 = !DILocation(line: 750, column: 7, scope: !551)
!560 = !DILocation(line: 753, column: 18, scope: !525)
!561 = !DILocation(line: 754, column: 30, scope: !562)
!562 = distinct !DILexicalBlock(scope: !525, file: !3, line: 754, column: 9)
!563 = !DILocation(line: 754, column: 39, scope: !562)
!564 = !DILocation(line: 754, column: 51, scope: !562)
!565 = !DILocation(line: 754, column: 60, scope: !562)
!566 = !DILocation(line: 754, column: 9, scope: !562)
!567 = !DILocation(line: 754, column: 76, scope: !562)
!568 = !DILocation(line: 754, column: 9, scope: !525)
!569 = !DILocation(line: 755, column: 10, scope: !562)
!570 = !DILocation(line: 755, column: 7, scope: !562)
!571 = !DILocation(line: 757, column: 22, scope: !562)
!572 = !DILocation(line: 757, column: 20, scope: !562)
!573 = !DILocation(line: 760, column: 21, scope: !525)
!574 = !DILocation(line: 761, column: 30, scope: !575)
!575 = distinct !DILexicalBlock(scope: !525, file: !3, line: 761, column: 9)
!576 = !DILocation(line: 761, column: 39, scope: !575)
!577 = !DILocation(line: 761, column: 51, scope: !575)
!578 = !DILocation(line: 761, column: 60, scope: !575)
!579 = !DILocation(line: 761, column: 9, scope: !575)
!580 = !DILocation(line: 761, column: 76, scope: !575)
!581 = !DILocation(line: 761, column: 9, scope: !525)
!582 = !DILocation(line: 762, column: 10, scope: !575)
!583 = !DILocation(line: 762, column: 7, scope: !575)
!584 = !DILocation(line: 764, column: 25, scope: !575)
!585 = !DILocation(line: 764, column: 23, scope: !575)
!586 = !DILocation(line: 766, column: 10, scope: !587)
!587 = distinct !DILexicalBlock(scope: !525, file: !3, line: 766, column: 9)
!588 = !DILocation(line: 766, column: 27, scope: !587)
!589 = !DILocation(line: 766, column: 25, scope: !587)
!590 = !DILocation(line: 766, column: 41, scope: !587)
!591 = !DILocation(line: 766, column: 45, scope: !587)
!592 = !DILocation(line: 766, column: 64, scope: !587)
!593 = !DILocation(line: 766, column: 69, scope: !587)
!594 = !DILocation(line: 766, column: 73, scope: !587)
!595 = !DILocation(line: 766, column: 84, scope: !587)
!596 = !DILocation(line: 766, column: 9, scope: !525)
!597 = !DILocation(line: 767, column: 10, scope: !587)
!598 = !DILocation(line: 767, column: 7, scope: !587)
!599 = !DILocation(line: 770, column: 22, scope: !525)
!600 = !DILocation(line: 771, column: 29, scope: !601)
!601 = distinct !DILexicalBlock(scope: !525, file: !3, line: 771, column: 9)
!602 = !DILocation(line: 771, column: 38, scope: !601)
!603 = !DILocation(line: 771, column: 50, scope: !601)
!604 = !DILocation(line: 771, column: 59, scope: !601)
!605 = !DILocation(line: 771, column: 9, scope: !601)
!606 = !DILocation(line: 771, column: 75, scope: !601)
!607 = !DILocation(line: 771, column: 9, scope: !525)
!608 = !DILocation(line: 772, column: 10, scope: !601)
!609 = !DILocation(line: 772, column: 7, scope: !601)
!610 = !DILocation(line: 774, column: 26, scope: !601)
!611 = !DILocation(line: 774, column: 24, scope: !601)
!612 = !DILocation(line: 777, column: 24, scope: !525)
!613 = !DILocation(line: 778, column: 29, scope: !614)
!614 = distinct !DILexicalBlock(scope: !525, file: !3, line: 778, column: 9)
!615 = !DILocation(line: 778, column: 38, scope: !614)
!616 = !DILocation(line: 778, column: 50, scope: !614)
!617 = !DILocation(line: 778, column: 59, scope: !614)
!618 = !DILocation(line: 778, column: 9, scope: !614)
!619 = !DILocation(line: 778, column: 75, scope: !614)
!620 = !DILocation(line: 778, column: 9, scope: !525)
!621 = !DILocation(line: 779, column: 10, scope: !614)
!622 = !DILocation(line: 779, column: 7, scope: !614)
!623 = !DILocation(line: 781, column: 28, scope: !614)
!624 = !DILocation(line: 781, column: 26, scope: !614)
!625 = !DILocation(line: 785, column: 30, scope: !626)
!626 = distinct !DILexicalBlock(scope: !525, file: !3, line: 785, column: 9)
!627 = !DILocation(line: 785, column: 39, scope: !626)
!628 = !DILocation(line: 785, column: 51, scope: !626)
!629 = !DILocation(line: 785, column: 60, scope: !626)
!630 = !DILocation(line: 785, column: 9, scope: !626)
!631 = !DILocation(line: 785, column: 86, scope: !626)
!632 = !DILocation(line: 785, column: 9, scope: !525)
!633 = !DILocation(line: 786, column: 10, scope: !626)
!634 = !DILocation(line: 786, column: 7, scope: !626)
!635 = !DILocation(line: 789, column: 8, scope: !636)
!636 = distinct !DILexicalBlock(scope: !338, file: !3, line: 789, column: 7)
!637 = !DILocation(line: 789, column: 20, scope: !636)
!638 = !DILocation(line: 789, column: 39, scope: !636)
!639 = !DILocation(line: 789, column: 38, scope: !636)
!640 = !DILocation(line: 789, column: 19, scope: !636)
!641 = !DILocation(line: 789, column: 57, scope: !636)
!642 = !DILocation(line: 790, column: 6, scope: !636)
!643 = !DILocation(line: 790, column: 9, scope: !636)
!644 = !DILocation(line: 789, column: 7, scope: !338)
!645 = !DILocation(line: 791, column: 8, scope: !636)
!646 = !DILocation(line: 791, column: 5, scope: !636)
!647 = !DILocation(line: 793, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !338, file: !3, line: 793, column: 7)
!649 = !DILocation(line: 793, column: 10, scope: !648)
!650 = !DILocation(line: 793, column: 7, scope: !338)
!651 = !DILocation(line: 795, column: 5, scope: !652)
!652 = distinct !DILexicalBlock(scope: !648, file: !3, line: 794, column: 3)
!653 = !DILocation(line: 796, column: 5, scope: !652)
!654 = !DILocation(line: 799, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !338, file: !3, line: 799, column: 7)
!656 = !DILocation(line: 799, column: 19, scope: !655)
!657 = !DILocation(line: 799, column: 7, scope: !338)
!658 = !DILocation(line: 801, column: 37, scope: !659)
!659 = distinct !DILexicalBlock(scope: !655, file: !3, line: 800, column: 3)
!660 = !DILocation(line: 801, column: 5, scope: !659)
!661 = !DILocation(line: 801, column: 14, scope: !659)
!662 = !DILocation(line: 801, column: 28, scope: !659)
!663 = !DILocation(line: 802, column: 9, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !3, line: 802, column: 9)
!665 = !DILocation(line: 802, column: 18, scope: !664)
!666 = !DILocation(line: 802, column: 9, scope: !659)
!667 = !DILocation(line: 804, column: 22, scope: !668)
!668 = distinct !DILexicalBlock(scope: !664, file: !3, line: 803, column: 5)
!669 = !DILocation(line: 804, column: 20, scope: !668)
!670 = !DILocation(line: 805, column: 7, scope: !668)
!671 = !DILocation(line: 805, column: 16, scope: !668)
!672 = !DILocation(line: 805, column: 30, scope: !668)
!673 = !DILocation(line: 805, column: 43, scope: !668)
!674 = !DILocation(line: 806, column: 5, scope: !668)
!675 = !DILocation(line: 807, column: 3, scope: !659)
!676 = !DILocation(line: 809, column: 29, scope: !338)
!677 = !DILocation(line: 809, column: 44, scope: !338)
!678 = !DILocation(line: 809, column: 63, scope: !338)
!679 = !DILocation(line: 809, column: 62, scope: !338)
!680 = !DILocation(line: 809, column: 41, scope: !338)
!681 = !DILocation(line: 809, column: 27, scope: !338)
!682 = !DILocation(line: 810, column: 48, scope: !338)
!683 = !DILocation(line: 810, column: 3, scope: !338)
!684 = !DILocation(line: 810, column: 12, scope: !338)
!685 = !DILocation(line: 810, column: 46, scope: !338)
!686 = !DILocalVariable(name: "size_central_dir_to_read", scope: !687, file: !3, line: 813, type: !51)
!687 = distinct !DILexicalBlock(scope: !338, file: !3, line: 812, column: 3)
!688 = !DILocation(line: 813, column: 14, scope: !687)
!689 = !DILocation(line: 813, column: 41, scope: !687)
!690 = !DILocalVariable(name: "buf_size", scope: !687, file: !3, line: 814, type: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !692, line: 46, baseType: !35)
!692 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!693 = !DILocation(line: 814, column: 12, scope: !687)
!694 = !DILocalVariable(name: "buf_read", scope: !687, file: !3, line: 815, type: !5)
!695 = !DILocation(line: 815, column: 11, scope: !687)
!696 = !DILocation(line: 815, column: 29, scope: !687)
!697 = !DILocation(line: 816, column: 9, scope: !698)
!698 = distinct !DILexicalBlock(scope: !687, file: !3, line: 816, column: 9)
!699 = !DILocation(line: 816, column: 129, scope: !698)
!700 = !DILocation(line: 816, column: 9, scope: !687)
!701 = !DILocation(line: 817, column: 10, scope: !698)
!702 = !DILocation(line: 817, column: 7, scope: !698)
!703 = !DILocation(line: 819, column: 5, scope: !687)
!704 = !DILocation(line: 819, column: 13, scope: !687)
!705 = !DILocation(line: 819, column: 37, scope: !687)
!706 = !DILocation(line: 819, column: 41, scope: !687)
!707 = !DILocation(line: 819, column: 45, scope: !687)
!708 = !DILocation(line: 819, column: 48, scope: !687)
!709 = !DILocation(line: 0, scope: !687)
!710 = !DILocalVariable(name: "read_this", scope: !711, file: !3, line: 821, type: !51)
!711 = distinct !DILexicalBlock(scope: !687, file: !3, line: 820, column: 5)
!712 = !DILocation(line: 821, column: 16, scope: !711)
!713 = !DILocation(line: 822, column: 11, scope: !714)
!714 = distinct !DILexicalBlock(scope: !711, file: !3, line: 822, column: 11)
!715 = !DILocation(line: 822, column: 23, scope: !714)
!716 = !DILocation(line: 822, column: 21, scope: !714)
!717 = !DILocation(line: 822, column: 11, scope: !711)
!718 = !DILocation(line: 823, column: 21, scope: !714)
!719 = !DILocation(line: 823, column: 19, scope: !714)
!720 = !DILocation(line: 823, column: 9, scope: !714)
!721 = !DILocation(line: 825, column: 11, scope: !722)
!722 = distinct !DILexicalBlock(scope: !711, file: !3, line: 825, column: 11)
!723 = !DILocation(line: 825, column: 90, scope: !722)
!724 = !DILocation(line: 825, column: 87, scope: !722)
!725 = !DILocation(line: 825, column: 11, scope: !711)
!726 = !DILocation(line: 826, column: 12, scope: !722)
!727 = !DILocation(line: 826, column: 9, scope: !722)
!728 = !DILocation(line: 828, column: 11, scope: !729)
!729 = distinct !DILexicalBlock(scope: !711, file: !3, line: 828, column: 11)
!730 = !DILocation(line: 828, column: 14, scope: !729)
!731 = !DILocation(line: 828, column: 11, scope: !711)
!732 = !DILocation(line: 829, column: 38, scope: !729)
!733 = !DILocation(line: 829, column: 47, scope: !729)
!734 = !DILocation(line: 829, column: 59, scope: !729)
!735 = !DILocation(line: 829, column: 76, scope: !729)
!736 = !DILocation(line: 829, column: 15, scope: !729)
!737 = !DILocation(line: 829, column: 13, scope: !729)
!738 = !DILocation(line: 829, column: 9, scope: !729)
!739 = !DILocation(line: 831, column: 33, scope: !711)
!740 = !DILocation(line: 831, column: 31, scope: !711)
!741 = distinct !{!741, !703, !742, !743}
!742 = !DILocation(line: 832, column: 5, scope: !687)
!743 = !{!"llvm.loop.mustprogress"}
!744 = !DILocation(line: 833, column: 5, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !3, line: 833, column: 5)
!746 = distinct !DILexicalBlock(scope: !687, file: !3, line: 833, column: 5)
!747 = !DILocation(line: 833, column: 5, scope: !746)
!748 = !DILocation(line: 835, column: 24, scope: !338)
!749 = !DILocation(line: 835, column: 3, scope: !338)
!750 = !DILocation(line: 835, column: 12, scope: !338)
!751 = !DILocation(line: 835, column: 22, scope: !338)
!752 = !DILocation(line: 836, column: 27, scope: !338)
!753 = !DILocation(line: 836, column: 3, scope: !338)
!754 = !DILocation(line: 836, column: 12, scope: !338)
!755 = !DILocation(line: 836, column: 25, scope: !338)
!756 = !DILocation(line: 838, column: 7, scope: !757)
!757 = distinct !DILexicalBlock(scope: !338, file: !3, line: 838, column: 7)
!758 = !DILocation(line: 838, column: 124, scope: !757)
!759 = !DILocation(line: 838, column: 7, scope: !338)
!760 = !DILocation(line: 839, column: 8, scope: !757)
!761 = !DILocation(line: 839, column: 5, scope: !757)
!762 = !DILocation(line: 841, column: 10, scope: !338)
!763 = !DILocation(line: 841, column: 3, scope: !338)
!764 = !DILocation(line: 842, column: 1, scope: !338)
!765 = distinct !DISubprogram(name: "zipOpen2", scope: !3, file: !3, line: 920, type: !766, scopeLine: 921, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!766 = !DISubroutineType(types: !767)
!767 = !{!177, !69, !28, !218, !768}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "zlib_filefunc_def", file: !12, line: 176, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zlib_filefunc_def_s", file: !12, line: 165, size: 576, elements: !771)
!771 = !{!772, !773, !774, !775, !776, !777, !778, !779, !780}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "zopen_file", scope: !770, file: !12, line: 167, baseType: !65, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "zread_file", scope: !770, file: !12, line: 168, baseType: !30, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "zwrite_file", scope: !770, file: !12, line: 169, baseType: !37, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "zflush_file", scope: !770, file: !12, line: 170, baseType: !42, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ztell_file", scope: !770, file: !12, line: 171, baseType: !73, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "zseek_file", scope: !770, file: !12, line: 172, baseType: !78, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "zclose_file", scope: !770, file: !12, line: 173, baseType: !60, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "zerror_file", scope: !770, file: !12, line: 174, baseType: !62, size: 64, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !770, file: !12, line: 175, baseType: !24, size: 64, offset: 512)
!781 = !DILocalVariable(name: "pathname", arg: 1, scope: !765, file: !3, line: 920, type: !69)
!782 = !DILocation(line: 920, column: 46, scope: !765)
!783 = !DILocalVariable(name: "append", arg: 2, scope: !765, file: !3, line: 920, type: !28)
!784 = !DILocation(line: 920, column: 60, scope: !765)
!785 = !DILocalVariable(name: "globalcomment", arg: 3, scope: !765, file: !3, line: 920, type: !218)
!786 = !DILocation(line: 920, column: 79, scope: !765)
!787 = !DILocalVariable(name: "pzlib_filefunc32_def", arg: 4, scope: !765, file: !3, line: 920, type: !768)
!788 = !DILocation(line: 920, column: 113, scope: !765)
!789 = !DILocation(line: 922, column: 9, scope: !790)
!790 = distinct !DILexicalBlock(scope: !765, file: !3, line: 922, column: 9)
!791 = !DILocation(line: 922, column: 30, scope: !790)
!792 = !DILocation(line: 922, column: 9, scope: !765)
!793 = !DILocalVariable(name: "zlib_filefunc64_32_def_fill", scope: !794, file: !3, line: 924, type: !11)
!794 = distinct !DILexicalBlock(scope: !790, file: !3, line: 923, column: 5)
!795 = !DILocation(line: 924, column: 32, scope: !794)
!796 = !DILocation(line: 925, column: 82, scope: !794)
!797 = !DILocation(line: 925, column: 9, scope: !794)
!798 = !DILocation(line: 926, column: 25, scope: !794)
!799 = !DILocation(line: 926, column: 35, scope: !794)
!800 = !DILocation(line: 926, column: 43, scope: !794)
!801 = !DILocation(line: 926, column: 16, scope: !794)
!802 = !DILocation(line: 926, column: 9, scope: !794)
!803 = !DILocation(line: 929, column: 25, scope: !790)
!804 = !DILocation(line: 929, column: 35, scope: !790)
!805 = !DILocation(line: 929, column: 43, scope: !790)
!806 = !DILocation(line: 929, column: 16, scope: !790)
!807 = !DILocation(line: 929, column: 9, scope: !790)
!808 = !DILocation(line: 930, column: 1, scope: !765)
!809 = distinct !DISubprogram(name: "zipOpen2_64", scope: !3, file: !3, line: 932, type: !810, scopeLine: 933, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!810 = !DISubroutineType(types: !811)
!811 = !{!177, !26, !28, !218, !812}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!813 = !DILocalVariable(name: "pathname", arg: 1, scope: !809, file: !3, line: 932, type: !26)
!814 = !DILocation(line: 932, column: 49, scope: !809)
!815 = !DILocalVariable(name: "append", arg: 2, scope: !809, file: !3, line: 932, type: !28)
!816 = !DILocation(line: 932, column: 63, scope: !809)
!817 = !DILocalVariable(name: "globalcomment", arg: 3, scope: !809, file: !3, line: 932, type: !218)
!818 = !DILocation(line: 932, column: 82, scope: !809)
!819 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 4, scope: !809, file: !3, line: 932, type: !812)
!820 = !DILocation(line: 932, column: 118, scope: !809)
!821 = !DILocation(line: 934, column: 9, scope: !822)
!822 = distinct !DILexicalBlock(scope: !809, file: !3, line: 934, column: 9)
!823 = !DILocation(line: 934, column: 28, scope: !822)
!824 = !DILocation(line: 934, column: 9, scope: !809)
!825 = !DILocalVariable(name: "zlib_filefunc64_32_def_fill", scope: !826, file: !3, line: 936, type: !11)
!826 = distinct !DILexicalBlock(scope: !822, file: !3, line: 935, column: 5)
!827 = !DILocation(line: 936, column: 32, scope: !826)
!828 = !DILocation(line: 937, column: 37, scope: !826)
!829 = !DILocation(line: 937, column: 53, scope: !826)
!830 = !DILocation(line: 937, column: 52, scope: !826)
!831 = !DILocation(line: 938, column: 37, scope: !826)
!832 = !DILocation(line: 938, column: 50, scope: !826)
!833 = !DILocation(line: 939, column: 37, scope: !826)
!834 = !DILocation(line: 939, column: 50, scope: !826)
!835 = !DILocation(line: 940, column: 25, scope: !826)
!836 = !DILocation(line: 940, column: 35, scope: !826)
!837 = !DILocation(line: 940, column: 43, scope: !826)
!838 = !DILocation(line: 940, column: 16, scope: !826)
!839 = !DILocation(line: 940, column: 9, scope: !826)
!840 = !DILocation(line: 943, column: 25, scope: !822)
!841 = !DILocation(line: 943, column: 35, scope: !822)
!842 = !DILocation(line: 943, column: 43, scope: !822)
!843 = !DILocation(line: 943, column: 16, scope: !822)
!844 = !DILocation(line: 943, column: 9, scope: !822)
!845 = !DILocation(line: 944, column: 1, scope: !809)
!846 = distinct !DISubprogram(name: "zipOpen", scope: !3, file: !3, line: 948, type: !847, scopeLine: 949, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!847 = !DISubroutineType(types: !848)
!848 = !{!177, !69, !28}
!849 = !DILocalVariable(name: "pathname", arg: 1, scope: !846, file: !3, line: 948, type: !69)
!850 = !DILocation(line: 948, column: 45, scope: !846)
!851 = !DILocalVariable(name: "append", arg: 2, scope: !846, file: !3, line: 948, type: !28)
!852 = !DILocation(line: 948, column: 59, scope: !846)
!853 = !DILocation(line: 950, column: 34, scope: !846)
!854 = !DILocation(line: 950, column: 43, scope: !846)
!855 = !DILocation(line: 950, column: 12, scope: !846)
!856 = !DILocation(line: 950, column: 5, scope: !846)
!857 = distinct !DISubprogram(name: "zipOpen64", scope: !3, file: !3, line: 953, type: !858, scopeLine: 954, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!858 = !DISubroutineType(types: !859)
!859 = !{!177, !26, !28}
!860 = !DILocalVariable(name: "pathname", arg: 1, scope: !857, file: !3, line: 953, type: !26)
!861 = !DILocation(line: 953, column: 47, scope: !857)
!862 = !DILocalVariable(name: "append", arg: 2, scope: !857, file: !3, line: 953, type: !28)
!863 = !DILocation(line: 953, column: 61, scope: !857)
!864 = !DILocation(line: 955, column: 21, scope: !857)
!865 = !DILocation(line: 955, column: 30, scope: !857)
!866 = !DILocation(line: 955, column: 12, scope: !857)
!867 = !DILocation(line: 955, column: 5, scope: !857)
!868 = distinct !DISubprogram(name: "zipOpenNewFileInZip4_64", scope: !3, file: !3, line: 1055, type: !869, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!869 = !DISubroutineType(types: !870)
!870 = !{!28, !177, !69, !871, !26, !118, !26, !118, !69, !28, !28, !28, !28, !28, !28, !69, !34, !34, !34, !28}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_fileinfo", file: !178, line: 107, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 99, size: 384, elements: !875)
!875 = !{!876, !886, !887, !888}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "tmz_date", scope: !874, file: !178, line: 101, baseType: !877, size: 192)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "tm_zip", file: !178, line: 97, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm_zip_s", file: !178, line: 89, size: 192, elements: !879)
!879 = !{!880, !881, !882, !883, !884, !885}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !878, file: !178, line: 91, baseType: !118, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !878, file: !178, line: 92, baseType: !118, size: 32, offset: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !878, file: !178, line: 93, baseType: !118, size: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !878, file: !178, line: 94, baseType: !118, size: 32, offset: 96)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !878, file: !178, line: 95, baseType: !118, size: 32, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !878, file: !178, line: 96, baseType: !118, size: 32, offset: 160)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "dosDate", scope: !874, file: !178, line: 102, baseType: !34, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "internal_fa", scope: !874, file: !178, line: 105, baseType: !34, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "external_fa", scope: !874, file: !178, line: 106, baseType: !34, size: 64, offset: 320)
!889 = !DILocalVariable(name: "file", arg: 1, scope: !868, file: !3, line: 1055, type: !177)
!890 = !DILocation(line: 1055, column: 53, scope: !868)
!891 = !DILocalVariable(name: "filename", arg: 2, scope: !868, file: !3, line: 1055, type: !69)
!892 = !DILocation(line: 1055, column: 71, scope: !868)
!893 = !DILocalVariable(name: "zipfi", arg: 3, scope: !868, file: !3, line: 1055, type: !871)
!894 = !DILocation(line: 1055, column: 101, scope: !868)
!895 = !DILocalVariable(name: "extrafield_local", arg: 4, scope: !868, file: !3, line: 1056, type: !26)
!896 = !DILocation(line: 1056, column: 54, scope: !868)
!897 = !DILocalVariable(name: "size_extrafield_local", arg: 5, scope: !868, file: !3, line: 1056, type: !118)
!898 = !DILocation(line: 1056, column: 77, scope: !868)
!899 = !DILocalVariable(name: "extrafield_global", arg: 6, scope: !868, file: !3, line: 1057, type: !26)
!900 = !DILocation(line: 1057, column: 54, scope: !868)
!901 = !DILocalVariable(name: "size_extrafield_global", arg: 7, scope: !868, file: !3, line: 1057, type: !118)
!902 = !DILocation(line: 1057, column: 78, scope: !868)
!903 = !DILocalVariable(name: "comment", arg: 8, scope: !868, file: !3, line: 1058, type: !69)
!904 = !DILocation(line: 1058, column: 54, scope: !868)
!905 = !DILocalVariable(name: "method", arg: 9, scope: !868, file: !3, line: 1058, type: !28)
!906 = !DILocation(line: 1058, column: 67, scope: !868)
!907 = !DILocalVariable(name: "level", arg: 10, scope: !868, file: !3, line: 1058, type: !28)
!908 = !DILocation(line: 1058, column: 79, scope: !868)
!909 = !DILocalVariable(name: "raw", arg: 11, scope: !868, file: !3, line: 1058, type: !28)
!910 = !DILocation(line: 1058, column: 90, scope: !868)
!911 = !DILocalVariable(name: "windowBits", arg: 12, scope: !868, file: !3, line: 1059, type: !28)
!912 = !DILocation(line: 1059, column: 46, scope: !868)
!913 = !DILocalVariable(name: "memLevel", arg: 13, scope: !868, file: !3, line: 1059, type: !28)
!914 = !DILocation(line: 1059, column: 61, scope: !868)
!915 = !DILocalVariable(name: "strategy", arg: 14, scope: !868, file: !3, line: 1059, type: !28)
!916 = !DILocation(line: 1059, column: 75, scope: !868)
!917 = !DILocalVariable(name: "password", arg: 15, scope: !868, file: !3, line: 1060, type: !69)
!918 = !DILocation(line: 1060, column: 54, scope: !868)
!919 = !DILocalVariable(name: "crcForCrypting", arg: 16, scope: !868, file: !3, line: 1060, type: !34)
!920 = !DILocation(line: 1060, column: 70, scope: !868)
!921 = !DILocalVariable(name: "versionMadeBy", arg: 17, scope: !868, file: !3, line: 1061, type: !34)
!922 = !DILocation(line: 1061, column: 48, scope: !868)
!923 = !DILocalVariable(name: "flagBase", arg: 18, scope: !868, file: !3, line: 1061, type: !34)
!924 = !DILocation(line: 1061, column: 69, scope: !868)
!925 = !DILocalVariable(name: "zip64", arg: 19, scope: !868, file: !3, line: 1061, type: !28)
!926 = !DILocation(line: 1061, column: 83, scope: !868)
!927 = !DILocalVariable(name: "zi", scope: !868, file: !3, line: 1063, type: !6)
!928 = !DILocation(line: 1063, column: 21, scope: !868)
!929 = !DILocalVariable(name: "size_filename", scope: !868, file: !3, line: 1064, type: !118)
!930 = !DILocation(line: 1064, column: 10, scope: !868)
!931 = !DILocalVariable(name: "size_comment", scope: !868, file: !3, line: 1065, type: !118)
!932 = !DILocation(line: 1065, column: 10, scope: !868)
!933 = !DILocalVariable(name: "i", scope: !868, file: !3, line: 1066, type: !118)
!934 = !DILocation(line: 1066, column: 10, scope: !868)
!935 = !DILocalVariable(name: "err", scope: !868, file: !3, line: 1067, type: !28)
!936 = !DILocation(line: 1067, column: 9, scope: !868)
!937 = !DILocation(line: 1075, column: 9, scope: !938)
!938 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1075, column: 9)
!939 = !DILocation(line: 1075, column: 14, scope: !938)
!940 = !DILocation(line: 1075, column: 9, scope: !868)
!941 = !DILocation(line: 1076, column: 9, scope: !938)
!942 = !DILocation(line: 1082, column: 10, scope: !943)
!943 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1082, column: 9)
!944 = !DILocation(line: 1082, column: 16, scope: !943)
!945 = !DILocation(line: 1082, column: 21, scope: !943)
!946 = !DILocation(line: 1082, column: 25, scope: !943)
!947 = !DILocation(line: 1082, column: 31, scope: !943)
!948 = !DILocation(line: 1082, column: 9, scope: !868)
!949 = !DILocation(line: 1083, column: 7, scope: !943)
!950 = !DILocation(line: 1086, column: 27, scope: !868)
!951 = !DILocation(line: 1086, column: 8, scope: !868)
!952 = !DILocation(line: 1088, column: 9, scope: !953)
!953 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1088, column: 9)
!954 = !DILocation(line: 1088, column: 13, scope: !953)
!955 = !DILocation(line: 1088, column: 34, scope: !953)
!956 = !DILocation(line: 1088, column: 9, scope: !868)
!957 = !DILocation(line: 1090, column: 34, scope: !958)
!958 = distinct !DILexicalBlock(scope: !953, file: !3, line: 1089, column: 5)
!959 = !DILocation(line: 1090, column: 15, scope: !958)
!960 = !DILocation(line: 1090, column: 13, scope: !958)
!961 = !DILocation(line: 1091, column: 13, scope: !962)
!962 = distinct !DILexicalBlock(scope: !958, file: !3, line: 1091, column: 13)
!963 = !DILocation(line: 1091, column: 17, scope: !962)
!964 = !DILocation(line: 1091, column: 13, scope: !958)
!965 = !DILocation(line: 1092, column: 20, scope: !962)
!966 = !DILocation(line: 1092, column: 13, scope: !962)
!967 = !DILocation(line: 1093, column: 5, scope: !958)
!968 = !DILocation(line: 1095, column: 9, scope: !969)
!969 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1095, column: 9)
!970 = !DILocation(line: 1095, column: 17, scope: !969)
!971 = !DILocation(line: 1095, column: 9, scope: !868)
!972 = !DILocation(line: 1096, column: 17, scope: !969)
!973 = !DILocation(line: 1096, column: 9, scope: !969)
!974 = !DILocation(line: 1098, column: 9, scope: !975)
!975 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1098, column: 9)
!976 = !DILocation(line: 1098, column: 16, scope: !975)
!977 = !DILocation(line: 1098, column: 9, scope: !868)
!978 = !DILocation(line: 1099, column: 22, scope: !975)
!979 = !DILocation(line: 1099, column: 9, scope: !975)
!980 = !DILocation(line: 1101, column: 37, scope: !975)
!981 = !DILocation(line: 1101, column: 30, scope: !975)
!982 = !DILocation(line: 1101, column: 24, scope: !975)
!983 = !DILocation(line: 1101, column: 22, scope: !975)
!984 = !DILocation(line: 1103, column: 34, scope: !868)
!985 = !DILocation(line: 1103, column: 27, scope: !868)
!986 = !DILocation(line: 1103, column: 21, scope: !868)
!987 = !DILocation(line: 1103, column: 19, scope: !868)
!988 = !DILocation(line: 1105, column: 9, scope: !989)
!989 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1105, column: 9)
!990 = !DILocation(line: 1105, column: 15, scope: !989)
!991 = !DILocation(line: 1105, column: 9, scope: !868)
!992 = !DILocation(line: 1106, column: 9, scope: !989)
!993 = !DILocation(line: 1106, column: 13, scope: !989)
!994 = !DILocation(line: 1106, column: 16, scope: !989)
!995 = !DILocation(line: 1106, column: 24, scope: !989)
!996 = !DILocation(line: 1109, column: 13, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !3, line: 1109, column: 13)
!998 = distinct !DILexicalBlock(scope: !989, file: !3, line: 1108, column: 5)
!999 = !DILocation(line: 1109, column: 20, scope: !997)
!1000 = !DILocation(line: 1109, column: 28, scope: !997)
!1001 = !DILocation(line: 1109, column: 13, scope: !998)
!1002 = !DILocation(line: 1110, column: 30, scope: !997)
!1003 = !DILocation(line: 1110, column: 37, scope: !997)
!1004 = !DILocation(line: 1110, column: 13, scope: !997)
!1005 = !DILocation(line: 1110, column: 17, scope: !997)
!1006 = !DILocation(line: 1110, column: 20, scope: !997)
!1007 = !DILocation(line: 1110, column: 28, scope: !997)
!1008 = !DILocation(line: 1112, column: 57, scope: !997)
!1009 = !DILocation(line: 1112, column: 64, scope: !997)
!1010 = !DILocation(line: 1112, column: 28, scope: !997)
!1011 = !DILocation(line: 1112, column: 11, scope: !997)
!1012 = !DILocation(line: 1112, column: 15, scope: !997)
!1013 = !DILocation(line: 1112, column: 18, scope: !997)
!1014 = !DILocation(line: 1112, column: 26, scope: !997)
!1015 = !DILocation(line: 1115, column: 19, scope: !868)
!1016 = !DILocation(line: 1115, column: 5, scope: !868)
!1017 = !DILocation(line: 1115, column: 9, scope: !868)
!1018 = !DILocation(line: 1115, column: 12, scope: !868)
!1019 = !DILocation(line: 1115, column: 17, scope: !868)
!1020 = !DILocation(line: 1116, column: 10, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1116, column: 9)
!1022 = !DILocation(line: 1116, column: 15, scope: !1021)
!1023 = !DILocation(line: 1116, column: 20, scope: !1021)
!1024 = !DILocation(line: 1116, column: 24, scope: !1021)
!1025 = !DILocation(line: 1116, column: 29, scope: !1021)
!1026 = !DILocation(line: 1116, column: 9, scope: !868)
!1027 = !DILocation(line: 1117, column: 7, scope: !1021)
!1028 = !DILocation(line: 1117, column: 11, scope: !1021)
!1029 = !DILocation(line: 1117, column: 14, scope: !1021)
!1030 = !DILocation(line: 1117, column: 19, scope: !1021)
!1031 = !DILocation(line: 1118, column: 9, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1118, column: 9)
!1033 = !DILocation(line: 1118, column: 14, scope: !1032)
!1034 = !DILocation(line: 1118, column: 9, scope: !868)
!1035 = !DILocation(line: 1119, column: 7, scope: !1032)
!1036 = !DILocation(line: 1119, column: 11, scope: !1032)
!1037 = !DILocation(line: 1119, column: 14, scope: !1032)
!1038 = !DILocation(line: 1119, column: 19, scope: !1032)
!1039 = !DILocation(line: 1120, column: 9, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1120, column: 9)
!1041 = !DILocation(line: 1120, column: 14, scope: !1040)
!1042 = !DILocation(line: 1120, column: 9, scope: !868)
!1043 = !DILocation(line: 1121, column: 7, scope: !1040)
!1044 = !DILocation(line: 1121, column: 11, scope: !1040)
!1045 = !DILocation(line: 1121, column: 14, scope: !1040)
!1046 = !DILocation(line: 1121, column: 19, scope: !1040)
!1047 = !DILocation(line: 1122, column: 9, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1122, column: 9)
!1049 = !DILocation(line: 1122, column: 18, scope: !1048)
!1050 = !DILocation(line: 1122, column: 9, scope: !868)
!1051 = !DILocation(line: 1123, column: 7, scope: !1048)
!1052 = !DILocation(line: 1123, column: 11, scope: !1048)
!1053 = !DILocation(line: 1123, column: 14, scope: !1048)
!1054 = !DILocation(line: 1123, column: 19, scope: !1048)
!1055 = !DILocation(line: 1125, column: 5, scope: !868)
!1056 = !DILocation(line: 1125, column: 9, scope: !868)
!1057 = !DILocation(line: 1125, column: 12, scope: !868)
!1058 = !DILocation(line: 1125, column: 18, scope: !868)
!1059 = !DILocation(line: 1126, column: 21, scope: !868)
!1060 = !DILocation(line: 1126, column: 5, scope: !868)
!1061 = !DILocation(line: 1126, column: 9, scope: !868)
!1062 = !DILocation(line: 1126, column: 12, scope: !868)
!1063 = !DILocation(line: 1126, column: 19, scope: !868)
!1064 = !DILocation(line: 1127, column: 5, scope: !868)
!1065 = !DILocation(line: 1127, column: 9, scope: !868)
!1066 = !DILocation(line: 1127, column: 12, scope: !868)
!1067 = !DILocation(line: 1127, column: 20, scope: !868)
!1068 = !DILocation(line: 1128, column: 5, scope: !868)
!1069 = !DILocation(line: 1128, column: 9, scope: !868)
!1070 = !DILocation(line: 1128, column: 12, scope: !868)
!1071 = !DILocation(line: 1128, column: 31, scope: !868)
!1072 = !DILocation(line: 1129, column: 5, scope: !868)
!1073 = !DILocation(line: 1129, column: 9, scope: !868)
!1074 = !DILocation(line: 1129, column: 12, scope: !868)
!1075 = !DILocation(line: 1129, column: 33, scope: !868)
!1076 = !DILocation(line: 1130, column: 18, scope: !868)
!1077 = !DILocation(line: 1130, column: 5, scope: !868)
!1078 = !DILocation(line: 1130, column: 9, scope: !868)
!1079 = !DILocation(line: 1130, column: 12, scope: !868)
!1080 = !DILocation(line: 1130, column: 16, scope: !868)
!1081 = !DILocation(line: 1131, column: 31, scope: !868)
!1082 = !DILocation(line: 1131, column: 5, scope: !868)
!1083 = !DILocation(line: 1131, column: 9, scope: !868)
!1084 = !DILocation(line: 1131, column: 12, scope: !868)
!1085 = !DILocation(line: 1131, column: 29, scope: !868)
!1086 = !DILocation(line: 1133, column: 53, scope: !868)
!1087 = !DILocation(line: 1133, column: 51, scope: !868)
!1088 = !DILocation(line: 1133, column: 69, scope: !868)
!1089 = !DILocation(line: 1133, column: 67, scope: !868)
!1090 = !DILocation(line: 1133, column: 94, scope: !868)
!1091 = !DILocation(line: 1133, column: 92, scope: !868)
!1092 = !DILocation(line: 1133, column: 33, scope: !868)
!1093 = !DILocation(line: 1133, column: 5, scope: !868)
!1094 = !DILocation(line: 1133, column: 9, scope: !868)
!1095 = !DILocation(line: 1133, column: 12, scope: !868)
!1096 = !DILocation(line: 1133, column: 31, scope: !868)
!1097 = !DILocation(line: 1134, column: 5, scope: !868)
!1098 = !DILocation(line: 1134, column: 9, scope: !868)
!1099 = !DILocation(line: 1134, column: 12, scope: !868)
!1100 = !DILocation(line: 1134, column: 34, scope: !868)
!1101 = !DILocation(line: 1136, column: 36, scope: !868)
!1102 = !DILocation(line: 1136, column: 5, scope: !868)
!1103 = !DILocation(line: 1136, column: 9, scope: !868)
!1104 = !DILocation(line: 1136, column: 12, scope: !868)
!1105 = !DILocation(line: 1136, column: 27, scope: !868)
!1106 = !DILocation(line: 1138, column: 32, scope: !868)
!1107 = !DILocation(line: 1138, column: 5, scope: !868)
!1108 = !DILocation(line: 1138, column: 9, scope: !868)
!1109 = !DILocation(line: 1138, column: 12, scope: !868)
!1110 = !DILocation(line: 1138, column: 30, scope: !868)
!1111 = !DILocation(line: 1139, column: 34, scope: !868)
!1112 = !DILocation(line: 1139, column: 38, scope: !868)
!1113 = !DILocation(line: 1139, column: 41, scope: !868)
!1114 = !DILocation(line: 1139, column: 5, scope: !868)
!1115 = !DILocation(line: 1141, column: 34, scope: !868)
!1116 = !DILocation(line: 1141, column: 38, scope: !868)
!1117 = !DILocation(line: 1141, column: 41, scope: !868)
!1118 = !DILocation(line: 1141, column: 55, scope: !868)
!1119 = !DILocation(line: 1141, column: 65, scope: !868)
!1120 = !DILocation(line: 1141, column: 5, scope: !868)
!1121 = !DILocation(line: 1142, column: 34, scope: !868)
!1122 = !DILocation(line: 1142, column: 38, scope: !868)
!1123 = !DILocation(line: 1142, column: 41, scope: !868)
!1124 = !DILocation(line: 1142, column: 55, scope: !868)
!1125 = !DILocation(line: 1142, column: 5, scope: !868)
!1126 = !DILocation(line: 1143, column: 34, scope: !868)
!1127 = !DILocation(line: 1143, column: 38, scope: !868)
!1128 = !DILocation(line: 1143, column: 41, scope: !868)
!1129 = !DILocation(line: 1143, column: 55, scope: !868)
!1130 = !DILocation(line: 1143, column: 65, scope: !868)
!1131 = !DILocation(line: 1143, column: 69, scope: !868)
!1132 = !DILocation(line: 1143, column: 72, scope: !868)
!1133 = !DILocation(line: 1143, column: 5, scope: !868)
!1134 = !DILocation(line: 1144, column: 34, scope: !868)
!1135 = !DILocation(line: 1144, column: 38, scope: !868)
!1136 = !DILocation(line: 1144, column: 41, scope: !868)
!1137 = !DILocation(line: 1144, column: 55, scope: !868)
!1138 = !DILocation(line: 1144, column: 66, scope: !868)
!1139 = !DILocation(line: 1144, column: 70, scope: !868)
!1140 = !DILocation(line: 1144, column: 73, scope: !868)
!1141 = !DILocation(line: 1144, column: 59, scope: !868)
!1142 = !DILocation(line: 1144, column: 5, scope: !868)
!1143 = !DILocation(line: 1145, column: 34, scope: !868)
!1144 = !DILocation(line: 1145, column: 38, scope: !868)
!1145 = !DILocation(line: 1145, column: 41, scope: !868)
!1146 = !DILocation(line: 1145, column: 55, scope: !868)
!1147 = !DILocation(line: 1145, column: 66, scope: !868)
!1148 = !DILocation(line: 1145, column: 70, scope: !868)
!1149 = !DILocation(line: 1145, column: 73, scope: !868)
!1150 = !DILocation(line: 1145, column: 5, scope: !868)
!1151 = !DILocation(line: 1146, column: 34, scope: !868)
!1152 = !DILocation(line: 1146, column: 38, scope: !868)
!1153 = !DILocation(line: 1146, column: 41, scope: !868)
!1154 = !DILocation(line: 1146, column: 55, scope: !868)
!1155 = !DILocation(line: 1146, column: 5, scope: !868)
!1156 = !DILocation(line: 1147, column: 34, scope: !868)
!1157 = !DILocation(line: 1147, column: 38, scope: !868)
!1158 = !DILocation(line: 1147, column: 41, scope: !868)
!1159 = !DILocation(line: 1147, column: 55, scope: !868)
!1160 = !DILocation(line: 1147, column: 5, scope: !868)
!1161 = !DILocation(line: 1148, column: 34, scope: !868)
!1162 = !DILocation(line: 1148, column: 38, scope: !868)
!1163 = !DILocation(line: 1148, column: 41, scope: !868)
!1164 = !DILocation(line: 1148, column: 55, scope: !868)
!1165 = !DILocation(line: 1148, column: 5, scope: !868)
!1166 = !DILocation(line: 1149, column: 34, scope: !868)
!1167 = !DILocation(line: 1149, column: 38, scope: !868)
!1168 = !DILocation(line: 1149, column: 41, scope: !868)
!1169 = !DILocation(line: 1149, column: 55, scope: !868)
!1170 = !DILocation(line: 1149, column: 66, scope: !868)
!1171 = !DILocation(line: 1149, column: 59, scope: !868)
!1172 = !DILocation(line: 1149, column: 5, scope: !868)
!1173 = !DILocation(line: 1150, column: 34, scope: !868)
!1174 = !DILocation(line: 1150, column: 38, scope: !868)
!1175 = !DILocation(line: 1150, column: 41, scope: !868)
!1176 = !DILocation(line: 1150, column: 55, scope: !868)
!1177 = !DILocation(line: 1150, column: 66, scope: !868)
!1178 = !DILocation(line: 1150, column: 59, scope: !868)
!1179 = !DILocation(line: 1150, column: 5, scope: !868)
!1180 = !DILocation(line: 1151, column: 34, scope: !868)
!1181 = !DILocation(line: 1151, column: 38, scope: !868)
!1182 = !DILocation(line: 1151, column: 41, scope: !868)
!1183 = !DILocation(line: 1151, column: 55, scope: !868)
!1184 = !DILocation(line: 1151, column: 66, scope: !868)
!1185 = !DILocation(line: 1151, column: 59, scope: !868)
!1186 = !DILocation(line: 1151, column: 5, scope: !868)
!1187 = !DILocation(line: 1152, column: 34, scope: !868)
!1188 = !DILocation(line: 1152, column: 38, scope: !868)
!1189 = !DILocation(line: 1152, column: 41, scope: !868)
!1190 = !DILocation(line: 1152, column: 55, scope: !868)
!1191 = !DILocation(line: 1152, column: 5, scope: !868)
!1192 = !DILocation(line: 1154, column: 9, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1154, column: 9)
!1194 = !DILocation(line: 1154, column: 14, scope: !1193)
!1195 = !DILocation(line: 1154, column: 9, scope: !868)
!1196 = !DILocation(line: 1155, column: 38, scope: !1193)
!1197 = !DILocation(line: 1155, column: 42, scope: !1193)
!1198 = !DILocation(line: 1155, column: 45, scope: !1193)
!1199 = !DILocation(line: 1155, column: 59, scope: !1193)
!1200 = !DILocation(line: 1155, column: 9, scope: !1193)
!1201 = !DILocation(line: 1157, column: 38, scope: !1193)
!1202 = !DILocation(line: 1157, column: 42, scope: !1193)
!1203 = !DILocation(line: 1157, column: 45, scope: !1193)
!1204 = !DILocation(line: 1157, column: 59, scope: !1193)
!1205 = !DILocation(line: 1157, column: 70, scope: !1193)
!1206 = !DILocation(line: 1157, column: 77, scope: !1193)
!1207 = !DILocation(line: 1157, column: 9, scope: !1193)
!1208 = !DILocation(line: 1159, column: 9, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1159, column: 9)
!1210 = !DILocation(line: 1159, column: 14, scope: !1209)
!1211 = !DILocation(line: 1159, column: 9, scope: !868)
!1212 = !DILocation(line: 1160, column: 38, scope: !1209)
!1213 = !DILocation(line: 1160, column: 42, scope: !1209)
!1214 = !DILocation(line: 1160, column: 45, scope: !1209)
!1215 = !DILocation(line: 1160, column: 59, scope: !1209)
!1216 = !DILocation(line: 1160, column: 9, scope: !1209)
!1217 = !DILocation(line: 1162, column: 38, scope: !1209)
!1218 = !DILocation(line: 1162, column: 42, scope: !1209)
!1219 = !DILocation(line: 1162, column: 45, scope: !1209)
!1220 = !DILocation(line: 1162, column: 59, scope: !1209)
!1221 = !DILocation(line: 1162, column: 70, scope: !1209)
!1222 = !DILocation(line: 1162, column: 77, scope: !1209)
!1223 = !DILocation(line: 1162, column: 9, scope: !1209)
!1224 = !DILocation(line: 1164, column: 8, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1164, column: 8)
!1226 = !DILocation(line: 1164, column: 12, scope: !1225)
!1227 = !DILocation(line: 1164, column: 15, scope: !1225)
!1228 = !DILocation(line: 1164, column: 32, scope: !1225)
!1229 = !DILocation(line: 1164, column: 8, scope: !868)
!1230 = !DILocation(line: 1165, column: 36, scope: !1225)
!1231 = !DILocation(line: 1165, column: 40, scope: !1225)
!1232 = !DILocation(line: 1165, column: 43, scope: !1225)
!1233 = !DILocation(line: 1165, column: 57, scope: !1225)
!1234 = !DILocation(line: 1165, column: 7, scope: !1225)
!1235 = !DILocation(line: 1167, column: 36, scope: !1225)
!1236 = !DILocation(line: 1167, column: 40, scope: !1225)
!1237 = !DILocation(line: 1167, column: 43, scope: !1225)
!1238 = !DILocation(line: 1167, column: 57, scope: !1225)
!1239 = !DILocation(line: 1167, column: 68, scope: !1225)
!1240 = !DILocation(line: 1167, column: 72, scope: !1225)
!1241 = !DILocation(line: 1167, column: 75, scope: !1225)
!1242 = !DILocation(line: 1167, column: 94, scope: !1225)
!1243 = !DILocation(line: 1167, column: 98, scope: !1225)
!1244 = !DILocation(line: 1167, column: 92, scope: !1225)
!1245 = !DILocation(line: 1167, column: 7, scope: !1225)
!1246 = !DILocation(line: 1169, column: 11, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1169, column: 5)
!1248 = !DILocation(line: 1169, column: 10, scope: !1247)
!1249 = !DILocation(line: 1169, column: 14, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 1169, column: 5)
!1251 = !DILocation(line: 1169, column: 16, scope: !1250)
!1252 = !DILocation(line: 1169, column: 15, scope: !1250)
!1253 = !DILocation(line: 1169, column: 5, scope: !1247)
!1254 = !DILocation(line: 1170, column: 58, scope: !1250)
!1255 = !DILocation(line: 1170, column: 67, scope: !1250)
!1256 = !DILocation(line: 1170, column: 66, scope: !1250)
!1257 = !DILocation(line: 1170, column: 56, scope: !1250)
!1258 = !DILocation(line: 1170, column: 11, scope: !1250)
!1259 = !DILocation(line: 1170, column: 15, scope: !1250)
!1260 = !DILocation(line: 1170, column: 18, scope: !1250)
!1261 = !DILocation(line: 1170, column: 32, scope: !1250)
!1262 = !DILocation(line: 1170, column: 51, scope: !1250)
!1263 = !DILocation(line: 1170, column: 50, scope: !1250)
!1264 = !DILocation(line: 1170, column: 54, scope: !1250)
!1265 = !DILocation(line: 1170, column: 9, scope: !1250)
!1266 = !DILocation(line: 1169, column: 31, scope: !1250)
!1267 = !DILocation(line: 1169, column: 5, scope: !1250)
!1268 = distinct !{!1268, !1253, !1269, !743}
!1269 = !DILocation(line: 1170, column: 68, scope: !1247)
!1270 = !DILocation(line: 1172, column: 11, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1172, column: 5)
!1272 = !DILocation(line: 1172, column: 10, scope: !1271)
!1273 = !DILocation(line: 1172, column: 14, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 1172, column: 5)
!1275 = !DILocation(line: 1172, column: 16, scope: !1274)
!1276 = !DILocation(line: 1172, column: 15, scope: !1274)
!1277 = !DILocation(line: 1172, column: 5, scope: !1271)
!1278 = !DILocation(line: 1174, column: 31, scope: !1274)
!1279 = !DILocation(line: 1174, column: 50, scope: !1274)
!1280 = !DILocation(line: 1174, column: 49, scope: !1274)
!1281 = !DILocation(line: 1174, column: 15, scope: !1274)
!1282 = !DILocation(line: 1173, column: 11, scope: !1274)
!1283 = !DILocation(line: 1173, column: 15, scope: !1274)
!1284 = !DILocation(line: 1173, column: 18, scope: !1274)
!1285 = !DILocation(line: 1173, column: 32, scope: !1274)
!1286 = !DILocation(line: 1173, column: 51, scope: !1274)
!1287 = !DILocation(line: 1173, column: 50, scope: !1274)
!1288 = !DILocation(line: 1173, column: 65, scope: !1274)
!1289 = !DILocation(line: 1173, column: 64, scope: !1274)
!1290 = !DILocation(line: 1173, column: 68, scope: !1274)
!1291 = !DILocation(line: 1173, column: 9, scope: !1274)
!1292 = !DILocation(line: 1172, column: 40, scope: !1274)
!1293 = !DILocation(line: 1172, column: 5, scope: !1274)
!1294 = distinct !{!1294, !1277, !1295, !743}
!1295 = !DILocation(line: 1174, column: 51, scope: !1271)
!1296 = !DILocation(line: 1176, column: 11, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1176, column: 5)
!1298 = !DILocation(line: 1176, column: 10, scope: !1297)
!1299 = !DILocation(line: 1176, column: 14, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 1176, column: 5)
!1301 = !DILocation(line: 1176, column: 16, scope: !1300)
!1302 = !DILocation(line: 1176, column: 15, scope: !1300)
!1303 = !DILocation(line: 1176, column: 5, scope: !1297)
!1304 = !DILocation(line: 1178, column: 45, scope: !1300)
!1305 = !DILocation(line: 1178, column: 53, scope: !1300)
!1306 = !DILocation(line: 1178, column: 52, scope: !1300)
!1307 = !DILocation(line: 1178, column: 43, scope: !1300)
!1308 = !DILocation(line: 1177, column: 11, scope: !1300)
!1309 = !DILocation(line: 1177, column: 15, scope: !1300)
!1310 = !DILocation(line: 1177, column: 18, scope: !1300)
!1311 = !DILocation(line: 1177, column: 32, scope: !1300)
!1312 = !DILocation(line: 1177, column: 51, scope: !1300)
!1313 = !DILocation(line: 1177, column: 50, scope: !1300)
!1314 = !DILocation(line: 1178, column: 15, scope: !1300)
!1315 = !DILocation(line: 1177, column: 64, scope: !1300)
!1316 = !DILocation(line: 1178, column: 38, scope: !1300)
!1317 = !DILocation(line: 1178, column: 37, scope: !1300)
!1318 = !DILocation(line: 1178, column: 41, scope: !1300)
!1319 = !DILocation(line: 1177, column: 9, scope: !1300)
!1320 = !DILocation(line: 1176, column: 30, scope: !1300)
!1321 = !DILocation(line: 1176, column: 5, scope: !1300)
!1322 = distinct !{!1322, !1303, !1323, !743}
!1323 = !DILocation(line: 1178, column: 54, scope: !1297)
!1324 = !DILocation(line: 1179, column: 9, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1179, column: 9)
!1326 = !DILocation(line: 1179, column: 13, scope: !1325)
!1327 = !DILocation(line: 1179, column: 16, scope: !1325)
!1328 = !DILocation(line: 1179, column: 31, scope: !1325)
!1329 = !DILocation(line: 1179, column: 9, scope: !868)
!1330 = !DILocation(line: 1180, column: 9, scope: !1325)
!1331 = !DILocation(line: 1182, column: 20, scope: !868)
!1332 = !DILocation(line: 1182, column: 5, scope: !868)
!1333 = !DILocation(line: 1182, column: 9, scope: !868)
!1334 = !DILocation(line: 1182, column: 12, scope: !868)
!1335 = !DILocation(line: 1182, column: 18, scope: !868)
!1336 = !DILocation(line: 1183, column: 5, scope: !868)
!1337 = !DILocation(line: 1183, column: 9, scope: !868)
!1338 = !DILocation(line: 1183, column: 12, scope: !868)
!1339 = !DILocation(line: 1183, column: 32, scope: !868)
!1340 = !DILocation(line: 1184, column: 5, scope: !868)
!1341 = !DILocation(line: 1184, column: 9, scope: !868)
!1342 = !DILocation(line: 1184, column: 12, scope: !868)
!1343 = !DILocation(line: 1184, column: 34, scope: !868)
!1344 = !DILocation(line: 1185, column: 5, scope: !868)
!1345 = !DILocation(line: 1185, column: 9, scope: !868)
!1346 = !DILocation(line: 1185, column: 12, scope: !868)
!1347 = !DILocation(line: 1185, column: 31, scope: !868)
!1348 = !DILocation(line: 1187, column: 33, scope: !868)
!1349 = !DILocation(line: 1187, column: 37, scope: !868)
!1350 = !DILocation(line: 1187, column: 47, scope: !868)
!1351 = !DILocation(line: 1187, column: 70, scope: !868)
!1352 = !DILocation(line: 1187, column: 11, scope: !868)
!1353 = !DILocation(line: 1187, column: 9, scope: !868)
!1354 = !DILocation(line: 1199, column: 5, scope: !868)
!1355 = !DILocation(line: 1199, column: 9, scope: !868)
!1356 = !DILocation(line: 1199, column: 12, scope: !868)
!1357 = !DILocation(line: 1199, column: 19, scope: !868)
!1358 = !DILocation(line: 1199, column: 28, scope: !868)
!1359 = !DILocation(line: 1200, column: 5, scope: !868)
!1360 = !DILocation(line: 1200, column: 9, scope: !868)
!1361 = !DILocation(line: 1200, column: 12, scope: !868)
!1362 = !DILocation(line: 1200, column: 19, scope: !868)
!1363 = !DILocation(line: 1200, column: 29, scope: !868)
!1364 = !DILocation(line: 1201, column: 30, scope: !868)
!1365 = !DILocation(line: 1201, column: 34, scope: !868)
!1366 = !DILocation(line: 1201, column: 37, scope: !868)
!1367 = !DILocation(line: 1201, column: 5, scope: !868)
!1368 = !DILocation(line: 1201, column: 9, scope: !868)
!1369 = !DILocation(line: 1201, column: 12, scope: !868)
!1370 = !DILocation(line: 1201, column: 19, scope: !868)
!1371 = !DILocation(line: 1201, column: 28, scope: !868)
!1372 = !DILocation(line: 1202, column: 5, scope: !868)
!1373 = !DILocation(line: 1202, column: 9, scope: !868)
!1374 = !DILocation(line: 1202, column: 12, scope: !868)
!1375 = !DILocation(line: 1202, column: 19, scope: !868)
!1376 = !DILocation(line: 1202, column: 28, scope: !868)
!1377 = !DILocation(line: 1203, column: 5, scope: !868)
!1378 = !DILocation(line: 1203, column: 9, scope: !868)
!1379 = !DILocation(line: 1203, column: 12, scope: !868)
!1380 = !DILocation(line: 1203, column: 19, scope: !868)
!1381 = !DILocation(line: 1203, column: 29, scope: !868)
!1382 = !DILocation(line: 1204, column: 5, scope: !868)
!1383 = !DILocation(line: 1204, column: 9, scope: !868)
!1384 = !DILocation(line: 1204, column: 12, scope: !868)
!1385 = !DILocation(line: 1204, column: 19, scope: !868)
!1386 = !DILocation(line: 1204, column: 29, scope: !868)
!1387 = !DILocation(line: 1209, column: 10, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1209, column: 9)
!1389 = !DILocation(line: 1209, column: 13, scope: !1388)
!1390 = !DILocation(line: 1209, column: 23, scope: !1388)
!1391 = !DILocation(line: 1209, column: 27, scope: !1388)
!1392 = !DILocation(line: 1209, column: 31, scope: !1388)
!1393 = !DILocation(line: 1209, column: 34, scope: !1388)
!1394 = !DILocation(line: 1209, column: 41, scope: !1388)
!1395 = !DILocation(line: 1209, column: 56, scope: !1388)
!1396 = !DILocation(line: 1209, column: 61, scope: !1388)
!1397 = !DILocation(line: 1209, column: 65, scope: !1388)
!1398 = !DILocation(line: 1209, column: 68, scope: !1388)
!1399 = !DILocation(line: 1209, column: 9, scope: !868)
!1400 = !DILocation(line: 1212, column: 12, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 1212, column: 12)
!1402 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 1211, column: 5)
!1403 = !DILocation(line: 1212, column: 16, scope: !1401)
!1404 = !DILocation(line: 1212, column: 19, scope: !1401)
!1405 = !DILocation(line: 1212, column: 26, scope: !1401)
!1406 = !DILocation(line: 1212, column: 12, scope: !1402)
!1407 = !DILocation(line: 1214, column: 11, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 1213, column: 9)
!1409 = !DILocation(line: 1214, column: 15, scope: !1408)
!1410 = !DILocation(line: 1214, column: 18, scope: !1408)
!1411 = !DILocation(line: 1214, column: 25, scope: !1408)
!1412 = !DILocation(line: 1214, column: 32, scope: !1408)
!1413 = !DILocation(line: 1215, column: 11, scope: !1408)
!1414 = !DILocation(line: 1215, column: 15, scope: !1408)
!1415 = !DILocation(line: 1215, column: 18, scope: !1408)
!1416 = !DILocation(line: 1215, column: 25, scope: !1408)
!1417 = !DILocation(line: 1215, column: 31, scope: !1408)
!1418 = !DILocation(line: 1216, column: 11, scope: !1408)
!1419 = !DILocation(line: 1216, column: 15, scope: !1408)
!1420 = !DILocation(line: 1216, column: 18, scope: !1408)
!1421 = !DILocation(line: 1216, column: 25, scope: !1408)
!1422 = !DILocation(line: 1216, column: 32, scope: !1408)
!1423 = !DILocation(line: 1218, column: 15, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 1218, column: 15)
!1425 = !DILocation(line: 1218, column: 25, scope: !1424)
!1426 = !DILocation(line: 1218, column: 15, scope: !1408)
!1427 = !DILocation(line: 1219, column: 29, scope: !1424)
!1428 = !DILocation(line: 1219, column: 28, scope: !1424)
!1429 = !DILocation(line: 1219, column: 26, scope: !1424)
!1430 = !DILocation(line: 1219, column: 15, scope: !1424)
!1431 = !DILocation(line: 1221, column: 17, scope: !1408)
!1432 = !DILocation(line: 1221, column: 15, scope: !1408)
!1433 = !DILocation(line: 1223, column: 15, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 1223, column: 15)
!1435 = !DILocation(line: 1223, column: 18, scope: !1434)
!1436 = !DILocation(line: 1223, column: 15, scope: !1408)
!1437 = !DILocation(line: 1224, column: 15, scope: !1434)
!1438 = !DILocation(line: 1224, column: 19, scope: !1434)
!1439 = !DILocation(line: 1224, column: 22, scope: !1434)
!1440 = !DILocation(line: 1224, column: 41, scope: !1434)
!1441 = !DILocation(line: 1225, column: 9, scope: !1408)
!1442 = !DILocation(line: 1226, column: 17, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 1226, column: 17)
!1444 = !DILocation(line: 1226, column: 21, scope: !1443)
!1445 = !DILocation(line: 1226, column: 24, scope: !1443)
!1446 = !DILocation(line: 1226, column: 31, scope: !1443)
!1447 = !DILocation(line: 1226, column: 17, scope: !1401)
!1448 = !DILocation(line: 1238, column: 9, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 1227, column: 9)
!1450 = !DILocation(line: 1240, column: 5, scope: !1402)
!1451 = !DILocation(line: 1243, column: 5, scope: !868)
!1452 = !DILocation(line: 1243, column: 9, scope: !868)
!1453 = !DILocation(line: 1243, column: 12, scope: !868)
!1454 = !DILocation(line: 1243, column: 30, scope: !868)
!1455 = !DILocation(line: 1244, column: 10, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1244, column: 9)
!1457 = !DILocation(line: 1244, column: 13, scope: !1456)
!1458 = !DILocation(line: 1244, column: 21, scope: !1456)
!1459 = !DILocation(line: 1244, column: 25, scope: !1456)
!1460 = !DILocation(line: 1244, column: 34, scope: !1456)
!1461 = !DILocation(line: 1244, column: 9, scope: !868)
!1462 = !DILocalVariable(name: "bufHead", scope: !1463, file: !3, line: 1246, type: !1464)
!1463 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 1245, column: 5)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 96, elements: !1465)
!1465 = !{!1466}
!1466 = !DISubrange(count: 12)
!1467 = !DILocation(line: 1246, column: 23, scope: !1463)
!1468 = !DILocalVariable(name: "sizeHead", scope: !1463, file: !3, line: 1247, type: !119)
!1469 = !DILocation(line: 1247, column: 22, scope: !1463)
!1470 = !DILocation(line: 1248, column: 9, scope: !1463)
!1471 = !DILocation(line: 1248, column: 13, scope: !1463)
!1472 = !DILocation(line: 1248, column: 16, scope: !1463)
!1473 = !DILocation(line: 1248, column: 24, scope: !1463)
!1474 = !DILocation(line: 1249, column: 30, scope: !1463)
!1475 = !DILocation(line: 1249, column: 9, scope: !1463)
!1476 = !DILocation(line: 1249, column: 13, scope: !1463)
!1477 = !DILocation(line: 1249, column: 16, scope: !1463)
!1478 = !DILocation(line: 1249, column: 28, scope: !1463)
!1479 = !DILocation(line: 1252, column: 28, scope: !1463)
!1480 = !DILocation(line: 1252, column: 37, scope: !1463)
!1481 = !DILocation(line: 1252, column: 59, scope: !1463)
!1482 = !DILocation(line: 1252, column: 63, scope: !1463)
!1483 = !DILocation(line: 1252, column: 66, scope: !1463)
!1484 = !DILocation(line: 1252, column: 71, scope: !1463)
!1485 = !DILocation(line: 1252, column: 75, scope: !1463)
!1486 = !DILocation(line: 1252, column: 78, scope: !1463)
!1487 = !DILocation(line: 1252, column: 90, scope: !1463)
!1488 = !DILocation(line: 1252, column: 18, scope: !1463)
!1489 = !DILocation(line: 1252, column: 17, scope: !1463)
!1490 = !DILocation(line: 1253, column: 36, scope: !1463)
!1491 = !DILocation(line: 1253, column: 9, scope: !1463)
!1492 = !DILocation(line: 1253, column: 13, scope: !1463)
!1493 = !DILocation(line: 1253, column: 16, scope: !1463)
!1494 = !DILocation(line: 1253, column: 34, scope: !1463)
!1495 = !DILocation(line: 1255, column: 13, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 1255, column: 13)
!1497 = !DILocation(line: 1255, column: 73, scope: !1496)
!1498 = !DILocation(line: 1255, column: 70, scope: !1496)
!1499 = !DILocation(line: 1255, column: 13, scope: !1463)
!1500 = !DILocation(line: 1256, column: 21, scope: !1496)
!1501 = !DILocation(line: 1256, column: 17, scope: !1496)
!1502 = !DILocation(line: 1257, column: 5, scope: !1463)
!1503 = !DILocation(line: 1260, column: 9, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1260, column: 9)
!1505 = !DILocation(line: 1260, column: 12, scope: !1504)
!1506 = !DILocation(line: 1260, column: 9, scope: !868)
!1507 = !DILocation(line: 1261, column: 9, scope: !1504)
!1508 = !DILocation(line: 1261, column: 13, scope: !1504)
!1509 = !DILocation(line: 1261, column: 34, scope: !1504)
!1510 = !DILocation(line: 1262, column: 12, scope: !868)
!1511 = !DILocation(line: 1262, column: 5, scope: !868)
!1512 = !DILocation(line: 1263, column: 1, scope: !868)
!1513 = distinct !DISubprogram(name: "zipCloseFileInZip", scope: !3, file: !3, line: 1750, type: !1514, scopeLine: 1751, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!28, !177}
!1516 = !DILocalVariable(name: "file", arg: 1, scope: !1513, file: !3, line: 1750, type: !177)
!1517 = !DILocation(line: 1750, column: 47, scope: !1513)
!1518 = !DILocation(line: 1752, column: 34, scope: !1513)
!1519 = !DILocation(line: 1752, column: 12, scope: !1513)
!1520 = !DILocation(line: 1752, column: 5, scope: !1513)
!1521 = distinct !DISubprogram(name: "zip64local_TmzDateToDosDate", scope: !3, file: !3, line: 332, type: !1522, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!34, !1524}
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!1526 = !DILocalVariable(name: "ptm", arg: 1, scope: !1521, file: !3, line: 332, type: !1524)
!1527 = !DILocation(line: 332, column: 55, scope: !1521)
!1528 = !DILocalVariable(name: "year", scope: !1521, file: !3, line: 334, type: !34)
!1529 = !DILocation(line: 334, column: 11, scope: !1521)
!1530 = !DILocation(line: 334, column: 25, scope: !1521)
!1531 = !DILocation(line: 334, column: 30, scope: !1521)
!1532 = !DILocation(line: 334, column: 18, scope: !1521)
!1533 = !DILocation(line: 335, column: 9, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 335, column: 9)
!1535 = !DILocation(line: 335, column: 13, scope: !1534)
!1536 = !DILocation(line: 335, column: 9, scope: !1521)
!1537 = !DILocation(line: 336, column: 13, scope: !1534)
!1538 = !DILocation(line: 336, column: 9, scope: !1534)
!1539 = !DILocation(line: 337, column: 14, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 337, column: 14)
!1541 = !DILocation(line: 337, column: 18, scope: !1540)
!1542 = !DILocation(line: 337, column: 14, scope: !1534)
!1543 = !DILocation(line: 338, column: 13, scope: !1540)
!1544 = !DILocation(line: 338, column: 9, scope: !1540)
!1545 = !DILocation(line: 340, column: 18, scope: !1521)
!1546 = !DILocation(line: 340, column: 23, scope: !1521)
!1547 = !DILocation(line: 340, column: 41, scope: !1521)
!1548 = !DILocation(line: 340, column: 46, scope: !1521)
!1549 = !DILocation(line: 340, column: 52, scope: !1521)
!1550 = !DILocation(line: 340, column: 38, scope: !1521)
!1551 = !DILocation(line: 340, column: 32, scope: !1521)
!1552 = !DILocation(line: 340, column: 17, scope: !1521)
!1553 = !DILocation(line: 340, column: 66, scope: !1521)
!1554 = !DILocation(line: 340, column: 64, scope: !1521)
!1555 = !DILocation(line: 340, column: 57, scope: !1521)
!1556 = !DILocation(line: 340, column: 73, scope: !1521)
!1557 = !DILocation(line: 341, column: 11, scope: !1521)
!1558 = !DILocation(line: 341, column: 16, scope: !1521)
!1559 = !DILocation(line: 341, column: 22, scope: !1521)
!1560 = !DILocation(line: 341, column: 33, scope: !1521)
!1561 = !DILocation(line: 341, column: 38, scope: !1521)
!1562 = !DILocation(line: 341, column: 31, scope: !1521)
!1563 = !DILocation(line: 341, column: 26, scope: !1521)
!1564 = !DILocation(line: 341, column: 10, scope: !1521)
!1565 = !DILocation(line: 341, column: 63, scope: !1521)
!1566 = !DILocation(line: 341, column: 68, scope: !1521)
!1567 = !DILocation(line: 341, column: 56, scope: !1521)
!1568 = !DILocation(line: 341, column: 54, scope: !1521)
!1569 = !DILocation(line: 341, column: 46, scope: !1521)
!1570 = !DILocation(line: 340, column: 80, scope: !1521)
!1571 = !DILocation(line: 339, column: 5, scope: !1521)
!1572 = distinct !DISubprogram(name: "zip64local_putValue_inmemory", scope: !3, file: !3, line: 311, type: !1573, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !5, !51, !28}
!1575 = !DILocalVariable(name: "dest", arg: 1, scope: !1572, file: !3, line: 311, type: !5)
!1576 = !DILocation(line: 311, column: 48, scope: !1572)
!1577 = !DILocalVariable(name: "x", arg: 2, scope: !1572, file: !3, line: 311, type: !51)
!1578 = !DILocation(line: 311, column: 63, scope: !1572)
!1579 = !DILocalVariable(name: "nbByte", arg: 3, scope: !1572, file: !3, line: 311, type: !28)
!1580 = !DILocation(line: 311, column: 70, scope: !1572)
!1581 = !DILocalVariable(name: "buf", scope: !1572, file: !3, line: 313, type: !182)
!1582 = !DILocation(line: 313, column: 20, scope: !1572)
!1583 = !DILocation(line: 313, column: 40, scope: !1572)
!1584 = !DILocalVariable(name: "n", scope: !1572, file: !3, line: 314, type: !28)
!1585 = !DILocation(line: 314, column: 9, scope: !1572)
!1586 = !DILocation(line: 315, column: 12, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 315, column: 5)
!1588 = !DILocation(line: 315, column: 10, scope: !1587)
!1589 = !DILocation(line: 315, column: 17, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 315, column: 5)
!1591 = !DILocation(line: 315, column: 21, scope: !1590)
!1592 = !DILocation(line: 315, column: 19, scope: !1590)
!1593 = !DILocation(line: 315, column: 5, scope: !1587)
!1594 = !DILocation(line: 316, column: 34, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 315, column: 34)
!1596 = !DILocation(line: 316, column: 36, scope: !1595)
!1597 = !DILocation(line: 316, column: 18, scope: !1595)
!1598 = !DILocation(line: 316, column: 9, scope: !1595)
!1599 = !DILocation(line: 316, column: 13, scope: !1595)
!1600 = !DILocation(line: 316, column: 16, scope: !1595)
!1601 = !DILocation(line: 317, column: 11, scope: !1595)
!1602 = !DILocation(line: 318, column: 5, scope: !1595)
!1603 = !DILocation(line: 315, column: 30, scope: !1590)
!1604 = !DILocation(line: 315, column: 5, scope: !1590)
!1605 = distinct !{!1605, !1593, !1606, !743}
!1606 = !DILocation(line: 318, column: 5, scope: !1587)
!1607 = !DILocation(line: 320, column: 9, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 320, column: 9)
!1609 = !DILocation(line: 320, column: 11, scope: !1608)
!1610 = !DILocation(line: 320, column: 9, scope: !1572)
!1611 = !DILocation(line: 322, column: 15, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 322, column: 8)
!1613 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 321, column: 5)
!1614 = !DILocation(line: 322, column: 13, scope: !1612)
!1615 = !DILocation(line: 322, column: 20, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 322, column: 8)
!1617 = !DILocation(line: 322, column: 24, scope: !1616)
!1618 = !DILocation(line: 322, column: 22, scope: !1616)
!1619 = !DILocation(line: 322, column: 8, scope: !1612)
!1620 = !DILocation(line: 324, column: 11, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 323, column: 8)
!1622 = !DILocation(line: 324, column: 15, scope: !1621)
!1623 = !DILocation(line: 324, column: 18, scope: !1621)
!1624 = !DILocation(line: 325, column: 8, scope: !1621)
!1625 = !DILocation(line: 322, column: 33, scope: !1616)
!1626 = !DILocation(line: 322, column: 8, scope: !1616)
!1627 = distinct !{!1627, !1619, !1628, !743}
!1628 = !DILocation(line: 325, column: 8, scope: !1612)
!1629 = !DILocation(line: 326, column: 5, scope: !1613)
!1630 = !DILocation(line: 327, column: 1, scope: !1572)
!1631 = distinct !DISubprogram(name: "Write_LocalFileHeader", scope: !3, file: !3, line: 958, type: !1632, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!28, !6, !69, !118, !26}
!1634 = !DILocalVariable(name: "zi", arg: 1, scope: !1631, file: !3, line: 958, type: !6)
!1635 = !DILocation(line: 958, column: 49, scope: !1631)
!1636 = !DILocalVariable(name: "filename", arg: 2, scope: !1631, file: !3, line: 958, type: !69)
!1637 = !DILocation(line: 958, column: 65, scope: !1631)
!1638 = !DILocalVariable(name: "size_extrafield_local", arg: 3, scope: !1631, file: !3, line: 958, type: !118)
!1639 = !DILocation(line: 958, column: 80, scope: !1631)
!1640 = !DILocalVariable(name: "extrafield_local", arg: 4, scope: !1631, file: !3, line: 958, type: !26)
!1641 = !DILocation(line: 958, column: 115, scope: !1631)
!1642 = !DILocalVariable(name: "err", scope: !1631, file: !3, line: 961, type: !28)
!1643 = !DILocation(line: 961, column: 7, scope: !1631)
!1644 = !DILocalVariable(name: "size_filename", scope: !1631, file: !3, line: 962, type: !118)
!1645 = !DILocation(line: 962, column: 8, scope: !1631)
!1646 = !DILocation(line: 962, column: 37, scope: !1631)
!1647 = !DILocation(line: 962, column: 30, scope: !1631)
!1648 = !DILocation(line: 962, column: 24, scope: !1631)
!1649 = !DILocalVariable(name: "size_extrafield", scope: !1631, file: !3, line: 963, type: !118)
!1650 = !DILocation(line: 963, column: 8, scope: !1631)
!1651 = !DILocation(line: 963, column: 26, scope: !1631)
!1652 = !DILocation(line: 965, column: 30, scope: !1631)
!1653 = !DILocation(line: 965, column: 34, scope: !1631)
!1654 = !DILocation(line: 965, column: 45, scope: !1631)
!1655 = !DILocation(line: 965, column: 49, scope: !1631)
!1656 = !DILocation(line: 965, column: 9, scope: !1631)
!1657 = !DILocation(line: 965, column: 7, scope: !1631)
!1658 = !DILocation(line: 967, column: 7, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 967, column: 7)
!1660 = !DILocation(line: 967, column: 10, scope: !1659)
!1661 = !DILocation(line: 967, column: 7, scope: !1631)
!1662 = !DILocation(line: 969, column: 8, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 969, column: 8)
!1664 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 968, column: 3)
!1665 = !DILocation(line: 969, column: 12, scope: !1663)
!1666 = !DILocation(line: 969, column: 15, scope: !1663)
!1667 = !DILocation(line: 969, column: 8, scope: !1664)
!1668 = !DILocation(line: 970, column: 34, scope: !1663)
!1669 = !DILocation(line: 970, column: 38, scope: !1663)
!1670 = !DILocation(line: 970, column: 49, scope: !1663)
!1671 = !DILocation(line: 970, column: 53, scope: !1663)
!1672 = !DILocation(line: 970, column: 13, scope: !1663)
!1673 = !DILocation(line: 970, column: 11, scope: !1663)
!1674 = !DILocation(line: 970, column: 7, scope: !1663)
!1675 = !DILocation(line: 972, column: 34, scope: !1663)
!1676 = !DILocation(line: 972, column: 38, scope: !1663)
!1677 = !DILocation(line: 972, column: 49, scope: !1663)
!1678 = !DILocation(line: 972, column: 53, scope: !1663)
!1679 = !DILocation(line: 972, column: 13, scope: !1663)
!1680 = !DILocation(line: 972, column: 11, scope: !1663)
!1681 = !DILocation(line: 973, column: 3, scope: !1664)
!1682 = !DILocation(line: 975, column: 7, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 975, column: 7)
!1684 = !DILocation(line: 975, column: 10, scope: !1683)
!1685 = !DILocation(line: 975, column: 7, scope: !1631)
!1686 = !DILocation(line: 976, column: 32, scope: !1683)
!1687 = !DILocation(line: 976, column: 36, scope: !1683)
!1688 = !DILocation(line: 976, column: 47, scope: !1683)
!1689 = !DILocation(line: 976, column: 51, scope: !1683)
!1690 = !DILocation(line: 976, column: 69, scope: !1683)
!1691 = !DILocation(line: 976, column: 73, scope: !1683)
!1692 = !DILocation(line: 976, column: 76, scope: !1683)
!1693 = !DILocation(line: 976, column: 11, scope: !1683)
!1694 = !DILocation(line: 976, column: 9, scope: !1683)
!1695 = !DILocation(line: 976, column: 5, scope: !1683)
!1696 = !DILocation(line: 978, column: 7, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 978, column: 7)
!1698 = !DILocation(line: 978, column: 10, scope: !1697)
!1699 = !DILocation(line: 978, column: 7, scope: !1631)
!1700 = !DILocation(line: 979, column: 32, scope: !1697)
!1701 = !DILocation(line: 979, column: 36, scope: !1697)
!1702 = !DILocation(line: 979, column: 47, scope: !1697)
!1703 = !DILocation(line: 979, column: 51, scope: !1697)
!1704 = !DILocation(line: 979, column: 69, scope: !1697)
!1705 = !DILocation(line: 979, column: 73, scope: !1697)
!1706 = !DILocation(line: 979, column: 76, scope: !1697)
!1707 = !DILocation(line: 979, column: 62, scope: !1697)
!1708 = !DILocation(line: 979, column: 11, scope: !1697)
!1709 = !DILocation(line: 979, column: 9, scope: !1697)
!1710 = !DILocation(line: 979, column: 5, scope: !1697)
!1711 = !DILocation(line: 981, column: 7, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 981, column: 7)
!1713 = !DILocation(line: 981, column: 10, scope: !1712)
!1714 = !DILocation(line: 981, column: 7, scope: !1631)
!1715 = !DILocation(line: 982, column: 32, scope: !1712)
!1716 = !DILocation(line: 982, column: 36, scope: !1712)
!1717 = !DILocation(line: 982, column: 47, scope: !1712)
!1718 = !DILocation(line: 982, column: 51, scope: !1712)
!1719 = !DILocation(line: 982, column: 69, scope: !1712)
!1720 = !DILocation(line: 982, column: 73, scope: !1712)
!1721 = !DILocation(line: 982, column: 76, scope: !1712)
!1722 = !DILocation(line: 982, column: 11, scope: !1712)
!1723 = !DILocation(line: 982, column: 9, scope: !1712)
!1724 = !DILocation(line: 982, column: 5, scope: !1712)
!1725 = !DILocation(line: 985, column: 7, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 985, column: 7)
!1727 = !DILocation(line: 985, column: 10, scope: !1726)
!1728 = !DILocation(line: 985, column: 7, scope: !1631)
!1729 = !DILocation(line: 986, column: 32, scope: !1726)
!1730 = !DILocation(line: 986, column: 36, scope: !1726)
!1731 = !DILocation(line: 986, column: 47, scope: !1726)
!1732 = !DILocation(line: 986, column: 51, scope: !1726)
!1733 = !DILocation(line: 986, column: 11, scope: !1726)
!1734 = !DILocation(line: 986, column: 9, scope: !1726)
!1735 = !DILocation(line: 986, column: 5, scope: !1726)
!1736 = !DILocation(line: 987, column: 7, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 987, column: 7)
!1738 = !DILocation(line: 987, column: 10, scope: !1737)
!1739 = !DILocation(line: 987, column: 7, scope: !1631)
!1740 = !DILocation(line: 989, column: 8, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 989, column: 8)
!1742 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 988, column: 3)
!1743 = !DILocation(line: 989, column: 12, scope: !1741)
!1744 = !DILocation(line: 989, column: 15, scope: !1741)
!1745 = !DILocation(line: 989, column: 8, scope: !1742)
!1746 = !DILocation(line: 990, column: 34, scope: !1741)
!1747 = !DILocation(line: 990, column: 38, scope: !1741)
!1748 = !DILocation(line: 990, column: 49, scope: !1741)
!1749 = !DILocation(line: 990, column: 53, scope: !1741)
!1750 = !DILocation(line: 990, column: 13, scope: !1741)
!1751 = !DILocation(line: 990, column: 11, scope: !1741)
!1752 = !DILocation(line: 990, column: 7, scope: !1741)
!1753 = !DILocation(line: 992, column: 34, scope: !1741)
!1754 = !DILocation(line: 992, column: 38, scope: !1741)
!1755 = !DILocation(line: 992, column: 49, scope: !1741)
!1756 = !DILocation(line: 992, column: 53, scope: !1741)
!1757 = !DILocation(line: 992, column: 13, scope: !1741)
!1758 = !DILocation(line: 992, column: 11, scope: !1741)
!1759 = !DILocation(line: 993, column: 3, scope: !1742)
!1760 = !DILocation(line: 994, column: 7, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 994, column: 7)
!1762 = !DILocation(line: 994, column: 10, scope: !1761)
!1763 = !DILocation(line: 994, column: 7, scope: !1631)
!1764 = !DILocation(line: 996, column: 8, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 996, column: 8)
!1766 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 995, column: 3)
!1767 = !DILocation(line: 996, column: 12, scope: !1765)
!1768 = !DILocation(line: 996, column: 15, scope: !1765)
!1769 = !DILocation(line: 996, column: 8, scope: !1766)
!1770 = !DILocation(line: 997, column: 34, scope: !1765)
!1771 = !DILocation(line: 997, column: 38, scope: !1765)
!1772 = !DILocation(line: 997, column: 49, scope: !1765)
!1773 = !DILocation(line: 997, column: 53, scope: !1765)
!1774 = !DILocation(line: 997, column: 13, scope: !1765)
!1775 = !DILocation(line: 997, column: 11, scope: !1765)
!1776 = !DILocation(line: 997, column: 7, scope: !1765)
!1777 = !DILocation(line: 999, column: 34, scope: !1765)
!1778 = !DILocation(line: 999, column: 38, scope: !1765)
!1779 = !DILocation(line: 999, column: 49, scope: !1765)
!1780 = !DILocation(line: 999, column: 53, scope: !1765)
!1781 = !DILocation(line: 999, column: 13, scope: !1765)
!1782 = !DILocation(line: 999, column: 11, scope: !1765)
!1783 = !DILocation(line: 1000, column: 3, scope: !1766)
!1784 = !DILocation(line: 1002, column: 7, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 1002, column: 7)
!1786 = !DILocation(line: 1002, column: 10, scope: !1785)
!1787 = !DILocation(line: 1002, column: 7, scope: !1631)
!1788 = !DILocation(line: 1003, column: 32, scope: !1785)
!1789 = !DILocation(line: 1003, column: 36, scope: !1785)
!1790 = !DILocation(line: 1003, column: 47, scope: !1785)
!1791 = !DILocation(line: 1003, column: 51, scope: !1785)
!1792 = !DILocation(line: 1003, column: 69, scope: !1785)
!1793 = !DILocation(line: 1003, column: 62, scope: !1785)
!1794 = !DILocation(line: 1003, column: 11, scope: !1785)
!1795 = !DILocation(line: 1003, column: 9, scope: !1785)
!1796 = !DILocation(line: 1003, column: 5, scope: !1785)
!1797 = !DILocation(line: 1005, column: 6, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 1005, column: 6)
!1799 = !DILocation(line: 1005, column: 10, scope: !1798)
!1800 = !DILocation(line: 1005, column: 13, scope: !1798)
!1801 = !DILocation(line: 1005, column: 6, scope: !1631)
!1802 = !DILocation(line: 1007, column: 21, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 1006, column: 3)
!1804 = !DILocation(line: 1008, column: 3, scope: !1803)
!1805 = !DILocation(line: 1010, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 1010, column: 7)
!1807 = !DILocation(line: 1010, column: 10, scope: !1806)
!1808 = !DILocation(line: 1010, column: 7, scope: !1631)
!1809 = !DILocation(line: 1011, column: 32, scope: !1806)
!1810 = !DILocation(line: 1011, column: 36, scope: !1806)
!1811 = !DILocation(line: 1011, column: 47, scope: !1806)
!1812 = !DILocation(line: 1011, column: 51, scope: !1806)
!1813 = !DILocation(line: 1011, column: 69, scope: !1806)
!1814 = !DILocation(line: 1011, column: 62, scope: !1806)
!1815 = !DILocation(line: 1011, column: 11, scope: !1806)
!1816 = !DILocation(line: 1011, column: 9, scope: !1806)
!1817 = !DILocation(line: 1011, column: 5, scope: !1806)
!1818 = !DILocation(line: 1013, column: 8, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 1013, column: 7)
!1820 = !DILocation(line: 1013, column: 11, scope: !1819)
!1821 = !DILocation(line: 1013, column: 21, scope: !1819)
!1822 = !DILocation(line: 1013, column: 25, scope: !1819)
!1823 = !DILocation(line: 1013, column: 39, scope: !1819)
!1824 = !DILocation(line: 1013, column: 7, scope: !1631)
!1825 = !DILocation(line: 1015, column: 9, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 1015, column: 9)
!1827 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 1014, column: 3)
!1828 = !DILocation(line: 1015, column: 73, scope: !1826)
!1829 = !DILocation(line: 1015, column: 71, scope: !1826)
!1830 = !DILocation(line: 1015, column: 9, scope: !1827)
!1831 = !DILocation(line: 1016, column: 11, scope: !1826)
!1832 = !DILocation(line: 1016, column: 7, scope: !1826)
!1833 = !DILocation(line: 1017, column: 3, scope: !1827)
!1834 = !DILocation(line: 1019, column: 8, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 1019, column: 7)
!1836 = !DILocation(line: 1019, column: 11, scope: !1835)
!1837 = !DILocation(line: 1019, column: 21, scope: !1835)
!1838 = !DILocation(line: 1019, column: 25, scope: !1835)
!1839 = !DILocation(line: 1019, column: 47, scope: !1835)
!1840 = !DILocation(line: 1019, column: 7, scope: !1631)
!1841 = !DILocation(line: 1021, column: 9, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 1021, column: 9)
!1843 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 1020, column: 3)
!1844 = !DILocation(line: 1021, column: 94, scope: !1842)
!1845 = !DILocation(line: 1021, column: 91, scope: !1842)
!1846 = !DILocation(line: 1021, column: 9, scope: !1843)
!1847 = !DILocation(line: 1022, column: 11, scope: !1842)
!1848 = !DILocation(line: 1022, column: 7, scope: !1842)
!1849 = !DILocation(line: 1023, column: 3, scope: !1843)
!1850 = !DILocation(line: 1026, column: 8, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 1026, column: 7)
!1852 = !DILocation(line: 1026, column: 11, scope: !1851)
!1853 = !DILocation(line: 1026, column: 21, scope: !1851)
!1854 = !DILocation(line: 1026, column: 25, scope: !1851)
!1855 = !DILocation(line: 1026, column: 29, scope: !1851)
!1856 = !DILocation(line: 1026, column: 32, scope: !1851)
!1857 = !DILocation(line: 1026, column: 24, scope: !1851)
!1858 = !DILocation(line: 1026, column: 7, scope: !1631)
!1859 = !DILocalVariable(name: "HeaderID", scope: !1860, file: !3, line: 1029, type: !181)
!1860 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 1027, column: 3)
!1861 = !DILocation(line: 1029, column: 13, scope: !1860)
!1862 = !DILocalVariable(name: "DataSize", scope: !1860, file: !3, line: 1030, type: !181)
!1863 = !DILocation(line: 1030, column: 13, scope: !1860)
!1864 = !DILocalVariable(name: "CompressedSize", scope: !1860, file: !3, line: 1031, type: !51)
!1865 = !DILocation(line: 1031, column: 16, scope: !1860)
!1866 = !DILocalVariable(name: "UncompressedSize", scope: !1860, file: !3, line: 1032, type: !51)
!1867 = !DILocation(line: 1032, column: 16, scope: !1860)
!1868 = !DILocation(line: 1035, column: 35, scope: !1860)
!1869 = !DILocation(line: 1035, column: 7, scope: !1860)
!1870 = !DILocation(line: 1035, column: 11, scope: !1860)
!1871 = !DILocation(line: 1035, column: 14, scope: !1860)
!1872 = !DILocation(line: 1035, column: 33, scope: !1860)
!1873 = !DILocation(line: 1037, column: 34, scope: !1860)
!1874 = !DILocation(line: 1037, column: 38, scope: !1860)
!1875 = !DILocation(line: 1037, column: 50, scope: !1860)
!1876 = !DILocation(line: 1037, column: 54, scope: !1860)
!1877 = !DILocation(line: 1037, column: 73, scope: !1860)
!1878 = !DILocation(line: 1037, column: 66, scope: !1860)
!1879 = !DILocation(line: 1037, column: 13, scope: !1860)
!1880 = !DILocation(line: 1037, column: 11, scope: !1860)
!1881 = !DILocation(line: 1038, column: 34, scope: !1860)
!1882 = !DILocation(line: 1038, column: 38, scope: !1860)
!1883 = !DILocation(line: 1038, column: 50, scope: !1860)
!1884 = !DILocation(line: 1038, column: 54, scope: !1860)
!1885 = !DILocation(line: 1038, column: 73, scope: !1860)
!1886 = !DILocation(line: 1038, column: 66, scope: !1860)
!1887 = !DILocation(line: 1038, column: 13, scope: !1860)
!1888 = !DILocation(line: 1038, column: 11, scope: !1860)
!1889 = !DILocation(line: 1040, column: 34, scope: !1860)
!1890 = !DILocation(line: 1040, column: 38, scope: !1860)
!1891 = !DILocation(line: 1040, column: 50, scope: !1860)
!1892 = !DILocation(line: 1040, column: 54, scope: !1860)
!1893 = !DILocation(line: 1040, column: 76, scope: !1860)
!1894 = !DILocation(line: 1040, column: 13, scope: !1860)
!1895 = !DILocation(line: 1040, column: 11, scope: !1860)
!1896 = !DILocation(line: 1041, column: 34, scope: !1860)
!1897 = !DILocation(line: 1041, column: 38, scope: !1860)
!1898 = !DILocation(line: 1041, column: 50, scope: !1860)
!1899 = !DILocation(line: 1041, column: 54, scope: !1860)
!1900 = !DILocation(line: 1041, column: 76, scope: !1860)
!1901 = !DILocation(line: 1041, column: 13, scope: !1860)
!1902 = !DILocation(line: 1041, column: 11, scope: !1860)
!1903 = !DILocation(line: 1042, column: 3, scope: !1860)
!1904 = !DILocation(line: 1044, column: 10, scope: !1631)
!1905 = !DILocation(line: 1044, column: 3, scope: !1631)
!1906 = !DILocalVariable(name: "passwd", arg: 1, scope: !198, file: !199, line: 90, type: !69)
!1907 = !DILocation(line: 90, column: 34, scope: !198)
!1908 = !DILocalVariable(name: "buf", arg: 2, scope: !198, file: !199, line: 91, type: !182)
!1909 = !DILocation(line: 91, column: 37, scope: !198)
!1910 = !DILocalVariable(name: "bufSize", arg: 3, scope: !198, file: !199, line: 92, type: !28)
!1911 = !DILocation(line: 92, column: 26, scope: !198)
!1912 = !DILocalVariable(name: "pkeys", arg: 4, scope: !198, file: !199, line: 93, type: !202)
!1913 = !DILocation(line: 93, column: 37, scope: !198)
!1914 = !DILocalVariable(name: "pcrc_32_tab", arg: 5, scope: !198, file: !199, line: 94, type: !169)
!1915 = !DILocation(line: 94, column: 37, scope: !198)
!1916 = !DILocalVariable(name: "crcForCrypting", arg: 6, scope: !198, file: !199, line: 95, type: !35)
!1917 = !DILocation(line: 95, column: 36, scope: !198)
!1918 = !DILocalVariable(name: "n", scope: !198, file: !199, line: 97, type: !28)
!1919 = !DILocation(line: 97, column: 9, scope: !198)
!1920 = !DILocalVariable(name: "t", scope: !198, file: !199, line: 98, type: !28)
!1921 = !DILocation(line: 98, column: 9, scope: !198)
!1922 = !DILocalVariable(name: "c", scope: !198, file: !199, line: 99, type: !28)
!1923 = !DILocation(line: 99, column: 9, scope: !198)
!1924 = !DILocalVariable(name: "header", scope: !198, file: !199, line: 100, type: !1925)
!1925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 80, elements: !1926)
!1926 = !{!1927}
!1927 = !DISubrange(count: 10)
!1928 = !DILocation(line: 100, column: 19, scope: !198)
!1929 = !DILocation(line: 103, column: 9, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !198, file: !199, line: 103, column: 9)
!1931 = !DILocation(line: 103, column: 16, scope: !1930)
!1932 = !DILocation(line: 103, column: 9, scope: !198)
!1933 = !DILocation(line: 104, column: 7, scope: !1930)
!1934 = !DILocation(line: 110, column: 9, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !198, file: !199, line: 110, column: 9)
!1936 = !DILocation(line: 110, column: 17, scope: !1935)
!1937 = !DILocation(line: 110, column: 9, scope: !198)
!1938 = !DILocation(line: 112, column: 26, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1935, file: !199, line: 111, column: 5)
!1940 = !DILocation(line: 112, column: 37, scope: !1939)
!1941 = !DILocation(line: 112, column: 15, scope: !1939)
!1942 = !DILocation(line: 112, column: 9, scope: !1939)
!1943 = !DILocation(line: 113, column: 5, scope: !1939)
!1944 = !DILocation(line: 114, column: 15, scope: !198)
!1945 = !DILocation(line: 114, column: 23, scope: !198)
!1946 = !DILocation(line: 114, column: 30, scope: !198)
!1947 = !DILocation(line: 114, column: 5, scope: !198)
!1948 = !DILocation(line: 115, column: 12, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !198, file: !199, line: 115, column: 5)
!1950 = !DILocation(line: 115, column: 10, scope: !1949)
!1951 = !DILocation(line: 115, column: 17, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1949, file: !199, line: 115, column: 5)
!1953 = !DILocation(line: 115, column: 19, scope: !1952)
!1954 = !DILocation(line: 115, column: 5, scope: !1949)
!1955 = !DILocation(line: 117, column: 14, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1952, file: !199, line: 116, column: 5)
!1957 = !DILocation(line: 117, column: 21, scope: !1956)
!1958 = !DILocation(line: 117, column: 27, scope: !1956)
!1959 = !DILocation(line: 117, column: 11, scope: !1956)
!1960 = !DILocation(line: 118, column: 36, scope: !1956)
!1961 = !DILocation(line: 118, column: 21, scope: !1956)
!1962 = !DILocation(line: 118, column: 16, scope: !1956)
!1963 = !DILocation(line: 118, column: 9, scope: !1956)
!1964 = !DILocation(line: 118, column: 19, scope: !1956)
!1965 = !DILocation(line: 119, column: 5, scope: !1956)
!1966 = !DILocation(line: 115, column: 39, scope: !1952)
!1967 = !DILocation(line: 115, column: 5, scope: !1952)
!1968 = distinct !{!1968, !1954, !1969, !743}
!1969 = !DILocation(line: 119, column: 5, scope: !1949)
!1970 = !DILocation(line: 121, column: 15, scope: !198)
!1971 = !DILocation(line: 121, column: 23, scope: !198)
!1972 = !DILocation(line: 121, column: 30, scope: !198)
!1973 = !DILocation(line: 121, column: 5, scope: !198)
!1974 = !DILocation(line: 122, column: 12, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !198, file: !199, line: 122, column: 5)
!1976 = !DILocation(line: 122, column: 10, scope: !1975)
!1977 = !DILocation(line: 122, column: 17, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1975, file: !199, line: 122, column: 5)
!1979 = !DILocation(line: 122, column: 19, scope: !1978)
!1980 = !DILocation(line: 122, column: 5, scope: !1975)
!1981 = !DILocation(line: 124, column: 33, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1978, file: !199, line: 123, column: 5)
!1983 = !DILocation(line: 124, column: 18, scope: !1982)
!1984 = !DILocation(line: 124, column: 9, scope: !1982)
!1985 = !DILocation(line: 124, column: 13, scope: !1982)
!1986 = !DILocation(line: 124, column: 16, scope: !1982)
!1987 = !DILocation(line: 125, column: 5, scope: !1982)
!1988 = !DILocation(line: 122, column: 39, scope: !1978)
!1989 = !DILocation(line: 122, column: 5, scope: !1978)
!1990 = distinct !{!1990, !1980, !1991, !743}
!1991 = !DILocation(line: 125, column: 5, scope: !1975)
!1992 = !DILocation(line: 126, column: 31, scope: !198)
!1993 = !DILocation(line: 126, column: 16, scope: !198)
!1994 = !DILocation(line: 126, column: 5, scope: !198)
!1995 = !DILocation(line: 126, column: 10, scope: !198)
!1996 = !DILocation(line: 126, column: 14, scope: !198)
!1997 = !DILocation(line: 127, column: 31, scope: !198)
!1998 = !DILocation(line: 127, column: 16, scope: !198)
!1999 = !DILocation(line: 127, column: 5, scope: !198)
!2000 = !DILocation(line: 127, column: 10, scope: !198)
!2001 = !DILocation(line: 127, column: 14, scope: !198)
!2002 = !DILocation(line: 128, column: 12, scope: !198)
!2003 = !DILocation(line: 128, column: 5, scope: !198)
!2004 = !DILocation(line: 129, column: 1, scope: !198)
!2005 = distinct !DISubprogram(name: "zipOpenNewFileInZip4", scope: !3, file: !3, line: 1265, type: !2006, scopeLine: 1272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!28, !177, !69, !871, !26, !118, !26, !118, !69, !28, !28, !28, !28, !28, !28, !69, !34, !34, !34}
!2008 = !DILocalVariable(name: "file", arg: 1, scope: !2005, file: !3, line: 1265, type: !177)
!2009 = !DILocation(line: 1265, column: 50, scope: !2005)
!2010 = !DILocalVariable(name: "filename", arg: 2, scope: !2005, file: !3, line: 1265, type: !69)
!2011 = !DILocation(line: 1265, column: 68, scope: !2005)
!2012 = !DILocalVariable(name: "zipfi", arg: 3, scope: !2005, file: !3, line: 1265, type: !871)
!2013 = !DILocation(line: 1265, column: 98, scope: !2005)
!2014 = !DILocalVariable(name: "extrafield_local", arg: 4, scope: !2005, file: !3, line: 1266, type: !26)
!2015 = !DILocation(line: 1266, column: 54, scope: !2005)
!2016 = !DILocalVariable(name: "size_extrafield_local", arg: 5, scope: !2005, file: !3, line: 1266, type: !118)
!2017 = !DILocation(line: 1266, column: 77, scope: !2005)
!2018 = !DILocalVariable(name: "extrafield_global", arg: 6, scope: !2005, file: !3, line: 1267, type: !26)
!2019 = !DILocation(line: 1267, column: 54, scope: !2005)
!2020 = !DILocalVariable(name: "size_extrafield_global", arg: 7, scope: !2005, file: !3, line: 1267, type: !118)
!2021 = !DILocation(line: 1267, column: 78, scope: !2005)
!2022 = !DILocalVariable(name: "comment", arg: 8, scope: !2005, file: !3, line: 1268, type: !69)
!2023 = !DILocation(line: 1268, column: 54, scope: !2005)
!2024 = !DILocalVariable(name: "method", arg: 9, scope: !2005, file: !3, line: 1268, type: !28)
!2025 = !DILocation(line: 1268, column: 67, scope: !2005)
!2026 = !DILocalVariable(name: "level", arg: 10, scope: !2005, file: !3, line: 1268, type: !28)
!2027 = !DILocation(line: 1268, column: 79, scope: !2005)
!2028 = !DILocalVariable(name: "raw", arg: 11, scope: !2005, file: !3, line: 1268, type: !28)
!2029 = !DILocation(line: 1268, column: 90, scope: !2005)
!2030 = !DILocalVariable(name: "windowBits", arg: 12, scope: !2005, file: !3, line: 1269, type: !28)
!2031 = !DILocation(line: 1269, column: 46, scope: !2005)
!2032 = !DILocalVariable(name: "memLevel", arg: 13, scope: !2005, file: !3, line: 1269, type: !28)
!2033 = !DILocation(line: 1269, column: 61, scope: !2005)
!2034 = !DILocalVariable(name: "strategy", arg: 14, scope: !2005, file: !3, line: 1269, type: !28)
!2035 = !DILocation(line: 1269, column: 75, scope: !2005)
!2036 = !DILocalVariable(name: "password", arg: 15, scope: !2005, file: !3, line: 1270, type: !69)
!2037 = !DILocation(line: 1270, column: 54, scope: !2005)
!2038 = !DILocalVariable(name: "crcForCrypting", arg: 16, scope: !2005, file: !3, line: 1270, type: !34)
!2039 = !DILocation(line: 1270, column: 70, scope: !2005)
!2040 = !DILocalVariable(name: "versionMadeBy", arg: 17, scope: !2005, file: !3, line: 1271, type: !34)
!2041 = !DILocation(line: 1271, column: 48, scope: !2005)
!2042 = !DILocalVariable(name: "flagBase", arg: 18, scope: !2005, file: !3, line: 1271, type: !34)
!2043 = !DILocation(line: 1271, column: 69, scope: !2005)
!2044 = !DILocation(line: 1273, column: 37, scope: !2005)
!2045 = !DILocation(line: 1273, column: 43, scope: !2005)
!2046 = !DILocation(line: 1273, column: 53, scope: !2005)
!2047 = !DILocation(line: 1274, column: 34, scope: !2005)
!2048 = !DILocation(line: 1274, column: 52, scope: !2005)
!2049 = !DILocation(line: 1275, column: 34, scope: !2005)
!2050 = !DILocation(line: 1275, column: 53, scope: !2005)
!2051 = !DILocation(line: 1276, column: 34, scope: !2005)
!2052 = !DILocation(line: 1276, column: 43, scope: !2005)
!2053 = !DILocation(line: 1276, column: 51, scope: !2005)
!2054 = !DILocation(line: 1276, column: 58, scope: !2005)
!2055 = !DILocation(line: 1277, column: 34, scope: !2005)
!2056 = !DILocation(line: 1277, column: 46, scope: !2005)
!2057 = !DILocation(line: 1277, column: 56, scope: !2005)
!2058 = !DILocation(line: 1278, column: 34, scope: !2005)
!2059 = !DILocation(line: 1278, column: 44, scope: !2005)
!2060 = !DILocation(line: 1278, column: 60, scope: !2005)
!2061 = !DILocation(line: 1278, column: 75, scope: !2005)
!2062 = !DILocation(line: 1273, column: 12, scope: !2005)
!2063 = !DILocation(line: 1273, column: 5, scope: !2005)
!2064 = distinct !DISubprogram(name: "zipOpenNewFileInZip3", scope: !3, file: !3, line: 1281, type: !2065, scopeLine: 1287, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!28, !177, !69, !871, !26, !118, !26, !118, !69, !28, !28, !28, !28, !28, !28, !69, !34}
!2067 = !DILocalVariable(name: "file", arg: 1, scope: !2064, file: !3, line: 1281, type: !177)
!2068 = !DILocation(line: 1281, column: 50, scope: !2064)
!2069 = !DILocalVariable(name: "filename", arg: 2, scope: !2064, file: !3, line: 1281, type: !69)
!2070 = !DILocation(line: 1281, column: 68, scope: !2064)
!2071 = !DILocalVariable(name: "zipfi", arg: 3, scope: !2064, file: !3, line: 1281, type: !871)
!2072 = !DILocation(line: 1281, column: 98, scope: !2064)
!2073 = !DILocalVariable(name: "extrafield_local", arg: 4, scope: !2064, file: !3, line: 1282, type: !26)
!2074 = !DILocation(line: 1282, column: 54, scope: !2064)
!2075 = !DILocalVariable(name: "size_extrafield_local", arg: 5, scope: !2064, file: !3, line: 1282, type: !118)
!2076 = !DILocation(line: 1282, column: 77, scope: !2064)
!2077 = !DILocalVariable(name: "extrafield_global", arg: 6, scope: !2064, file: !3, line: 1283, type: !26)
!2078 = !DILocation(line: 1283, column: 54, scope: !2064)
!2079 = !DILocalVariable(name: "size_extrafield_global", arg: 7, scope: !2064, file: !3, line: 1283, type: !118)
!2080 = !DILocation(line: 1283, column: 78, scope: !2064)
!2081 = !DILocalVariable(name: "comment", arg: 8, scope: !2064, file: !3, line: 1284, type: !69)
!2082 = !DILocation(line: 1284, column: 54, scope: !2064)
!2083 = !DILocalVariable(name: "method", arg: 9, scope: !2064, file: !3, line: 1284, type: !28)
!2084 = !DILocation(line: 1284, column: 67, scope: !2064)
!2085 = !DILocalVariable(name: "level", arg: 10, scope: !2064, file: !3, line: 1284, type: !28)
!2086 = !DILocation(line: 1284, column: 79, scope: !2064)
!2087 = !DILocalVariable(name: "raw", arg: 11, scope: !2064, file: !3, line: 1284, type: !28)
!2088 = !DILocation(line: 1284, column: 90, scope: !2064)
!2089 = !DILocalVariable(name: "windowBits", arg: 12, scope: !2064, file: !3, line: 1285, type: !28)
!2090 = !DILocation(line: 1285, column: 46, scope: !2064)
!2091 = !DILocalVariable(name: "memLevel", arg: 13, scope: !2064, file: !3, line: 1285, type: !28)
!2092 = !DILocation(line: 1285, column: 61, scope: !2064)
!2093 = !DILocalVariable(name: "strategy", arg: 14, scope: !2064, file: !3, line: 1285, type: !28)
!2094 = !DILocation(line: 1285, column: 75, scope: !2064)
!2095 = !DILocalVariable(name: "password", arg: 15, scope: !2064, file: !3, line: 1286, type: !69)
!2096 = !DILocation(line: 1286, column: 54, scope: !2064)
!2097 = !DILocalVariable(name: "crcForCrypting", arg: 16, scope: !2064, file: !3, line: 1286, type: !34)
!2098 = !DILocation(line: 1286, column: 70, scope: !2064)
!2099 = !DILocation(line: 1288, column: 37, scope: !2064)
!2100 = !DILocation(line: 1288, column: 43, scope: !2064)
!2101 = !DILocation(line: 1288, column: 53, scope: !2064)
!2102 = !DILocation(line: 1289, column: 34, scope: !2064)
!2103 = !DILocation(line: 1289, column: 52, scope: !2064)
!2104 = !DILocation(line: 1290, column: 34, scope: !2064)
!2105 = !DILocation(line: 1290, column: 53, scope: !2064)
!2106 = !DILocation(line: 1291, column: 34, scope: !2064)
!2107 = !DILocation(line: 1291, column: 43, scope: !2064)
!2108 = !DILocation(line: 1291, column: 51, scope: !2064)
!2109 = !DILocation(line: 1291, column: 58, scope: !2064)
!2110 = !DILocation(line: 1292, column: 34, scope: !2064)
!2111 = !DILocation(line: 1292, column: 46, scope: !2064)
!2112 = !DILocation(line: 1292, column: 56, scope: !2064)
!2113 = !DILocation(line: 1293, column: 34, scope: !2064)
!2114 = !DILocation(line: 1293, column: 44, scope: !2064)
!2115 = !DILocation(line: 1288, column: 12, scope: !2064)
!2116 = !DILocation(line: 1288, column: 5, scope: !2064)
!2117 = distinct !DISubprogram(name: "zipOpenNewFileInZip3_64", scope: !3, file: !3, line: 1296, type: !2118, scopeLine: 1302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!28, !177, !69, !871, !26, !118, !26, !118, !69, !28, !28, !28, !28, !28, !28, !69, !34, !28}
!2120 = !DILocalVariable(name: "file", arg: 1, scope: !2117, file: !3, line: 1296, type: !177)
!2121 = !DILocation(line: 1296, column: 52, scope: !2117)
!2122 = !DILocalVariable(name: "filename", arg: 2, scope: !2117, file: !3, line: 1296, type: !69)
!2123 = !DILocation(line: 1296, column: 70, scope: !2117)
!2124 = !DILocalVariable(name: "zipfi", arg: 3, scope: !2117, file: !3, line: 1296, type: !871)
!2125 = !DILocation(line: 1296, column: 100, scope: !2117)
!2126 = !DILocalVariable(name: "extrafield_local", arg: 4, scope: !2117, file: !3, line: 1297, type: !26)
!2127 = !DILocation(line: 1297, column: 54, scope: !2117)
!2128 = !DILocalVariable(name: "size_extrafield_local", arg: 5, scope: !2117, file: !3, line: 1297, type: !118)
!2129 = !DILocation(line: 1297, column: 77, scope: !2117)
!2130 = !DILocalVariable(name: "extrafield_global", arg: 6, scope: !2117, file: !3, line: 1298, type: !26)
!2131 = !DILocation(line: 1298, column: 54, scope: !2117)
!2132 = !DILocalVariable(name: "size_extrafield_global", arg: 7, scope: !2117, file: !3, line: 1298, type: !118)
!2133 = !DILocation(line: 1298, column: 78, scope: !2117)
!2134 = !DILocalVariable(name: "comment", arg: 8, scope: !2117, file: !3, line: 1299, type: !69)
!2135 = !DILocation(line: 1299, column: 54, scope: !2117)
!2136 = !DILocalVariable(name: "method", arg: 9, scope: !2117, file: !3, line: 1299, type: !28)
!2137 = !DILocation(line: 1299, column: 67, scope: !2117)
!2138 = !DILocalVariable(name: "level", arg: 10, scope: !2117, file: !3, line: 1299, type: !28)
!2139 = !DILocation(line: 1299, column: 79, scope: !2117)
!2140 = !DILocalVariable(name: "raw", arg: 11, scope: !2117, file: !3, line: 1299, type: !28)
!2141 = !DILocation(line: 1299, column: 90, scope: !2117)
!2142 = !DILocalVariable(name: "windowBits", arg: 12, scope: !2117, file: !3, line: 1300, type: !28)
!2143 = !DILocation(line: 1300, column: 46, scope: !2117)
!2144 = !DILocalVariable(name: "memLevel", arg: 13, scope: !2117, file: !3, line: 1300, type: !28)
!2145 = !DILocation(line: 1300, column: 61, scope: !2117)
!2146 = !DILocalVariable(name: "strategy", arg: 14, scope: !2117, file: !3, line: 1300, type: !28)
!2147 = !DILocation(line: 1300, column: 75, scope: !2117)
!2148 = !DILocalVariable(name: "password", arg: 15, scope: !2117, file: !3, line: 1301, type: !69)
!2149 = !DILocation(line: 1301, column: 54, scope: !2117)
!2150 = !DILocalVariable(name: "crcForCrypting", arg: 16, scope: !2117, file: !3, line: 1301, type: !34)
!2151 = !DILocation(line: 1301, column: 70, scope: !2117)
!2152 = !DILocalVariable(name: "zip64", arg: 17, scope: !2117, file: !3, line: 1301, type: !28)
!2153 = !DILocation(line: 1301, column: 90, scope: !2117)
!2154 = !DILocation(line: 1303, column: 37, scope: !2117)
!2155 = !DILocation(line: 1303, column: 43, scope: !2117)
!2156 = !DILocation(line: 1303, column: 53, scope: !2117)
!2157 = !DILocation(line: 1304, column: 34, scope: !2117)
!2158 = !DILocation(line: 1304, column: 52, scope: !2117)
!2159 = !DILocation(line: 1305, column: 34, scope: !2117)
!2160 = !DILocation(line: 1305, column: 53, scope: !2117)
!2161 = !DILocation(line: 1306, column: 34, scope: !2117)
!2162 = !DILocation(line: 1306, column: 43, scope: !2117)
!2163 = !DILocation(line: 1306, column: 51, scope: !2117)
!2164 = !DILocation(line: 1306, column: 58, scope: !2117)
!2165 = !DILocation(line: 1307, column: 34, scope: !2117)
!2166 = !DILocation(line: 1307, column: 46, scope: !2117)
!2167 = !DILocation(line: 1307, column: 56, scope: !2117)
!2168 = !DILocation(line: 1308, column: 34, scope: !2117)
!2169 = !DILocation(line: 1308, column: 44, scope: !2117)
!2170 = !DILocation(line: 1308, column: 78, scope: !2117)
!2171 = !DILocation(line: 1303, column: 12, scope: !2117)
!2172 = !DILocation(line: 1303, column: 5, scope: !2117)
!2173 = distinct !DISubprogram(name: "zipOpenNewFileInZip2", scope: !3, file: !3, line: 1311, type: !2174, scopeLine: 1315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!28, !177, !69, !871, !26, !118, !26, !118, !69, !28, !28, !28}
!2176 = !DILocalVariable(name: "file", arg: 1, scope: !2173, file: !3, line: 1311, type: !177)
!2177 = !DILocation(line: 1311, column: 49, scope: !2173)
!2178 = !DILocalVariable(name: "filename", arg: 2, scope: !2173, file: !3, line: 1311, type: !69)
!2179 = !DILocation(line: 1311, column: 67, scope: !2173)
!2180 = !DILocalVariable(name: "zipfi", arg: 3, scope: !2173, file: !3, line: 1311, type: !871)
!2181 = !DILocation(line: 1311, column: 97, scope: !2173)
!2182 = !DILocalVariable(name: "extrafield_local", arg: 4, scope: !2173, file: !3, line: 1312, type: !26)
!2183 = !DILocation(line: 1312, column: 53, scope: !2173)
!2184 = !DILocalVariable(name: "size_extrafield_local", arg: 5, scope: !2173, file: !3, line: 1312, type: !118)
!2185 = !DILocation(line: 1312, column: 76, scope: !2173)
!2186 = !DILocalVariable(name: "extrafield_global", arg: 6, scope: !2173, file: !3, line: 1313, type: !26)
!2187 = !DILocation(line: 1313, column: 53, scope: !2173)
!2188 = !DILocalVariable(name: "size_extrafield_global", arg: 7, scope: !2173, file: !3, line: 1313, type: !118)
!2189 = !DILocation(line: 1313, column: 77, scope: !2173)
!2190 = !DILocalVariable(name: "comment", arg: 8, scope: !2173, file: !3, line: 1314, type: !69)
!2191 = !DILocation(line: 1314, column: 53, scope: !2173)
!2192 = !DILocalVariable(name: "method", arg: 9, scope: !2173, file: !3, line: 1314, type: !28)
!2193 = !DILocation(line: 1314, column: 66, scope: !2173)
!2194 = !DILocalVariable(name: "level", arg: 10, scope: !2173, file: !3, line: 1314, type: !28)
!2195 = !DILocation(line: 1314, column: 78, scope: !2173)
!2196 = !DILocalVariable(name: "raw", arg: 11, scope: !2173, file: !3, line: 1314, type: !28)
!2197 = !DILocation(line: 1314, column: 89, scope: !2173)
!2198 = !DILocation(line: 1316, column: 37, scope: !2173)
!2199 = !DILocation(line: 1316, column: 43, scope: !2173)
!2200 = !DILocation(line: 1316, column: 53, scope: !2173)
!2201 = !DILocation(line: 1317, column: 34, scope: !2173)
!2202 = !DILocation(line: 1317, column: 52, scope: !2173)
!2203 = !DILocation(line: 1318, column: 34, scope: !2173)
!2204 = !DILocation(line: 1318, column: 53, scope: !2173)
!2205 = !DILocation(line: 1319, column: 34, scope: !2173)
!2206 = !DILocation(line: 1319, column: 43, scope: !2173)
!2207 = !DILocation(line: 1319, column: 51, scope: !2173)
!2208 = !DILocation(line: 1319, column: 58, scope: !2173)
!2209 = !DILocation(line: 1316, column: 12, scope: !2173)
!2210 = !DILocation(line: 1316, column: 5, scope: !2173)
!2211 = distinct !DISubprogram(name: "zipOpenNewFileInZip2_64", scope: !3, file: !3, line: 1324, type: !2212, scopeLine: 1328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!28, !177, !69, !871, !26, !118, !26, !118, !69, !28, !28, !28, !28}
!2214 = !DILocalVariable(name: "file", arg: 1, scope: !2211, file: !3, line: 1324, type: !177)
!2215 = !DILocation(line: 1324, column: 52, scope: !2211)
!2216 = !DILocalVariable(name: "filename", arg: 2, scope: !2211, file: !3, line: 1324, type: !69)
!2217 = !DILocation(line: 1324, column: 70, scope: !2211)
!2218 = !DILocalVariable(name: "zipfi", arg: 3, scope: !2211, file: !3, line: 1324, type: !871)
!2219 = !DILocation(line: 1324, column: 100, scope: !2211)
!2220 = !DILocalVariable(name: "extrafield_local", arg: 4, scope: !2211, file: !3, line: 1325, type: !26)
!2221 = !DILocation(line: 1325, column: 53, scope: !2211)
!2222 = !DILocalVariable(name: "size_extrafield_local", arg: 5, scope: !2211, file: !3, line: 1325, type: !118)
!2223 = !DILocation(line: 1325, column: 76, scope: !2211)
!2224 = !DILocalVariable(name: "extrafield_global", arg: 6, scope: !2211, file: !3, line: 1326, type: !26)
!2225 = !DILocation(line: 1326, column: 53, scope: !2211)
!2226 = !DILocalVariable(name: "size_extrafield_global", arg: 7, scope: !2211, file: !3, line: 1326, type: !118)
!2227 = !DILocation(line: 1326, column: 77, scope: !2211)
!2228 = !DILocalVariable(name: "comment", arg: 8, scope: !2211, file: !3, line: 1327, type: !69)
!2229 = !DILocation(line: 1327, column: 53, scope: !2211)
!2230 = !DILocalVariable(name: "method", arg: 9, scope: !2211, file: !3, line: 1327, type: !28)
!2231 = !DILocation(line: 1327, column: 66, scope: !2211)
!2232 = !DILocalVariable(name: "level", arg: 10, scope: !2211, file: !3, line: 1327, type: !28)
!2233 = !DILocation(line: 1327, column: 78, scope: !2211)
!2234 = !DILocalVariable(name: "raw", arg: 11, scope: !2211, file: !3, line: 1327, type: !28)
!2235 = !DILocation(line: 1327, column: 89, scope: !2211)
!2236 = !DILocalVariable(name: "zip64", arg: 12, scope: !2211, file: !3, line: 1327, type: !28)
!2237 = !DILocation(line: 1327, column: 98, scope: !2211)
!2238 = !DILocation(line: 1329, column: 37, scope: !2211)
!2239 = !DILocation(line: 1329, column: 43, scope: !2211)
!2240 = !DILocation(line: 1329, column: 53, scope: !2211)
!2241 = !DILocation(line: 1330, column: 34, scope: !2211)
!2242 = !DILocation(line: 1330, column: 52, scope: !2211)
!2243 = !DILocation(line: 1331, column: 34, scope: !2211)
!2244 = !DILocation(line: 1331, column: 53, scope: !2211)
!2245 = !DILocation(line: 1332, column: 34, scope: !2211)
!2246 = !DILocation(line: 1332, column: 43, scope: !2211)
!2247 = !DILocation(line: 1332, column: 51, scope: !2211)
!2248 = !DILocation(line: 1332, column: 58, scope: !2211)
!2249 = !DILocation(line: 1334, column: 61, scope: !2211)
!2250 = !DILocation(line: 1329, column: 12, scope: !2211)
!2251 = !DILocation(line: 1329, column: 5, scope: !2211)
!2252 = distinct !DISubprogram(name: "zipOpenNewFileInZip64", scope: !3, file: !3, line: 1337, type: !2174, scopeLine: 1341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!2253 = !DILocalVariable(name: "file", arg: 1, scope: !2252, file: !3, line: 1337, type: !177)
!2254 = !DILocation(line: 1337, column: 51, scope: !2252)
!2255 = !DILocalVariable(name: "filename", arg: 2, scope: !2252, file: !3, line: 1337, type: !69)
!2256 = !DILocation(line: 1337, column: 69, scope: !2252)
!2257 = !DILocalVariable(name: "zipfi", arg: 3, scope: !2252, file: !3, line: 1337, type: !871)
!2258 = !DILocation(line: 1337, column: 99, scope: !2252)
!2259 = !DILocalVariable(name: "extrafield_local", arg: 4, scope: !2252, file: !3, line: 1338, type: !26)
!2260 = !DILocation(line: 1338, column: 53, scope: !2252)
!2261 = !DILocalVariable(name: "size_extrafield_local", arg: 5, scope: !2252, file: !3, line: 1338, type: !118)
!2262 = !DILocation(line: 1338, column: 76, scope: !2252)
!2263 = !DILocalVariable(name: "extrafield_global", arg: 6, scope: !2252, file: !3, line: 1339, type: !26)
!2264 = !DILocation(line: 1339, column: 52, scope: !2252)
!2265 = !DILocalVariable(name: "size_extrafield_global", arg: 7, scope: !2252, file: !3, line: 1339, type: !118)
!2266 = !DILocation(line: 1339, column: 76, scope: !2252)
!2267 = !DILocalVariable(name: "comment", arg: 8, scope: !2252, file: !3, line: 1340, type: !69)
!2268 = !DILocation(line: 1340, column: 53, scope: !2252)
!2269 = !DILocalVariable(name: "method", arg: 9, scope: !2252, file: !3, line: 1340, type: !28)
!2270 = !DILocation(line: 1340, column: 66, scope: !2252)
!2271 = !DILocalVariable(name: "level", arg: 10, scope: !2252, file: !3, line: 1340, type: !28)
!2272 = !DILocation(line: 1340, column: 78, scope: !2252)
!2273 = !DILocalVariable(name: "zip64", arg: 11, scope: !2252, file: !3, line: 1340, type: !28)
!2274 = !DILocation(line: 1340, column: 89, scope: !2252)
!2275 = !DILocation(line: 1342, column: 37, scope: !2252)
!2276 = !DILocation(line: 1342, column: 43, scope: !2252)
!2277 = !DILocation(line: 1342, column: 53, scope: !2252)
!2278 = !DILocation(line: 1343, column: 34, scope: !2252)
!2279 = !DILocation(line: 1343, column: 52, scope: !2252)
!2280 = !DILocation(line: 1344, column: 34, scope: !2252)
!2281 = !DILocation(line: 1344, column: 53, scope: !2252)
!2282 = !DILocation(line: 1345, column: 34, scope: !2252)
!2283 = !DILocation(line: 1345, column: 43, scope: !2252)
!2284 = !DILocation(line: 1345, column: 51, scope: !2252)
!2285 = !DILocation(line: 1347, column: 61, scope: !2252)
!2286 = !DILocation(line: 1342, column: 12, scope: !2252)
!2287 = !DILocation(line: 1342, column: 5, scope: !2252)
!2288 = distinct !DISubprogram(name: "zipOpenNewFileInZip", scope: !3, file: !3, line: 1350, type: !2289, scopeLine: 1354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!28, !177, !69, !871, !26, !118, !26, !118, !69, !28, !28}
!2291 = !DILocalVariable(name: "file", arg: 1, scope: !2288, file: !3, line: 1350, type: !177)
!2292 = !DILocation(line: 1350, column: 49, scope: !2288)
!2293 = !DILocalVariable(name: "filename", arg: 2, scope: !2288, file: !3, line: 1350, type: !69)
!2294 = !DILocation(line: 1350, column: 67, scope: !2288)
!2295 = !DILocalVariable(name: "zipfi", arg: 3, scope: !2288, file: !3, line: 1350, type: !871)
!2296 = !DILocation(line: 1350, column: 97, scope: !2288)
!2297 = !DILocalVariable(name: "extrafield_local", arg: 4, scope: !2288, file: !3, line: 1351, type: !26)
!2298 = !DILocation(line: 1351, column: 53, scope: !2288)
!2299 = !DILocalVariable(name: "size_extrafield_local", arg: 5, scope: !2288, file: !3, line: 1351, type: !118)
!2300 = !DILocation(line: 1351, column: 76, scope: !2288)
!2301 = !DILocalVariable(name: "extrafield_global", arg: 6, scope: !2288, file: !3, line: 1352, type: !26)
!2302 = !DILocation(line: 1352, column: 52, scope: !2288)
!2303 = !DILocalVariable(name: "size_extrafield_global", arg: 7, scope: !2288, file: !3, line: 1352, type: !118)
!2304 = !DILocation(line: 1352, column: 76, scope: !2288)
!2305 = !DILocalVariable(name: "comment", arg: 8, scope: !2288, file: !3, line: 1353, type: !69)
!2306 = !DILocation(line: 1353, column: 53, scope: !2288)
!2307 = !DILocalVariable(name: "method", arg: 9, scope: !2288, file: !3, line: 1353, type: !28)
!2308 = !DILocation(line: 1353, column: 66, scope: !2288)
!2309 = !DILocalVariable(name: "level", arg: 10, scope: !2288, file: !3, line: 1353, type: !28)
!2310 = !DILocation(line: 1353, column: 78, scope: !2288)
!2311 = !DILocation(line: 1355, column: 37, scope: !2288)
!2312 = !DILocation(line: 1355, column: 43, scope: !2288)
!2313 = !DILocation(line: 1355, column: 53, scope: !2288)
!2314 = !DILocation(line: 1356, column: 34, scope: !2288)
!2315 = !DILocation(line: 1356, column: 52, scope: !2288)
!2316 = !DILocation(line: 1357, column: 34, scope: !2288)
!2317 = !DILocation(line: 1357, column: 53, scope: !2288)
!2318 = !DILocation(line: 1358, column: 34, scope: !2288)
!2319 = !DILocation(line: 1358, column: 43, scope: !2288)
!2320 = !DILocation(line: 1358, column: 51, scope: !2288)
!2321 = !DILocation(line: 1355, column: 12, scope: !2288)
!2322 = !DILocation(line: 1355, column: 5, scope: !2288)
!2323 = distinct !DISubprogram(name: "zipWriteInFileInZip", scope: !3, file: !3, line: 1402, type: !2324, scopeLine: 1403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!28, !177, !26, !119}
!2326 = !DILocalVariable(name: "file", arg: 1, scope: !2323, file: !3, line: 1402, type: !177)
!2327 = !DILocation(line: 1402, column: 49, scope: !2323)
!2328 = !DILocalVariable(name: "buf", arg: 2, scope: !2323, file: !3, line: 1402, type: !26)
!2329 = !DILocation(line: 1402, column: 66, scope: !2323)
!2330 = !DILocalVariable(name: "len", arg: 3, scope: !2323, file: !3, line: 1402, type: !119)
!2331 = !DILocation(line: 1402, column: 83, scope: !2323)
!2332 = !DILocalVariable(name: "zi", scope: !2323, file: !3, line: 1404, type: !6)
!2333 = !DILocation(line: 1404, column: 21, scope: !2323)
!2334 = !DILocalVariable(name: "err", scope: !2323, file: !3, line: 1405, type: !28)
!2335 = !DILocation(line: 1405, column: 9, scope: !2323)
!2336 = !DILocation(line: 1407, column: 9, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 1407, column: 9)
!2338 = !DILocation(line: 1407, column: 14, scope: !2337)
!2339 = !DILocation(line: 1407, column: 9, scope: !2323)
!2340 = !DILocation(line: 1408, column: 9, scope: !2337)
!2341 = !DILocation(line: 1409, column: 27, scope: !2323)
!2342 = !DILocation(line: 1409, column: 8, scope: !2323)
!2343 = !DILocation(line: 1411, column: 9, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 1411, column: 9)
!2345 = !DILocation(line: 1411, column: 13, scope: !2344)
!2346 = !DILocation(line: 1411, column: 34, scope: !2344)
!2347 = !DILocation(line: 1411, column: 9, scope: !2323)
!2348 = !DILocation(line: 1412, column: 9, scope: !2344)
!2349 = !DILocation(line: 1414, column: 26, scope: !2323)
!2350 = !DILocation(line: 1414, column: 30, scope: !2323)
!2351 = !DILocation(line: 1414, column: 33, scope: !2323)
!2352 = !DILocation(line: 1414, column: 39, scope: !2323)
!2353 = !DILocation(line: 1414, column: 49, scope: !2323)
!2354 = !DILocation(line: 1414, column: 20, scope: !2323)
!2355 = !DILocation(line: 1414, column: 5, scope: !2323)
!2356 = !DILocation(line: 1414, column: 9, scope: !2323)
!2357 = !DILocation(line: 1414, column: 12, scope: !2323)
!2358 = !DILocation(line: 1414, column: 18, scope: !2323)
!2359 = !DILocation(line: 1453, column: 31, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 1452, column: 5)
!2361 = !DILocation(line: 1453, column: 7, scope: !2360)
!2362 = !DILocation(line: 1453, column: 11, scope: !2360)
!2363 = !DILocation(line: 1453, column: 14, scope: !2360)
!2364 = !DILocation(line: 1453, column: 21, scope: !2360)
!2365 = !DILocation(line: 1453, column: 29, scope: !2360)
!2366 = !DILocation(line: 1454, column: 32, scope: !2360)
!2367 = !DILocation(line: 1454, column: 7, scope: !2360)
!2368 = !DILocation(line: 1454, column: 11, scope: !2360)
!2369 = !DILocation(line: 1454, column: 14, scope: !2360)
!2370 = !DILocation(line: 1454, column: 21, scope: !2360)
!2371 = !DILocation(line: 1454, column: 30, scope: !2360)
!2372 = !DILocation(line: 1456, column: 7, scope: !2360)
!2373 = !DILocation(line: 1456, column: 15, scope: !2360)
!2374 = !DILocation(line: 1456, column: 18, scope: !2360)
!2375 = !DILocation(line: 1456, column: 28, scope: !2360)
!2376 = !DILocation(line: 1456, column: 32, scope: !2360)
!2377 = !DILocation(line: 1456, column: 36, scope: !2360)
!2378 = !DILocation(line: 1456, column: 39, scope: !2360)
!2379 = !DILocation(line: 1456, column: 46, scope: !2360)
!2380 = !DILocation(line: 1456, column: 54, scope: !2360)
!2381 = !DILocation(line: 0, scope: !2360)
!2382 = !DILocation(line: 1458, column: 15, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 1458, column: 15)
!2384 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 1457, column: 7)
!2385 = !DILocation(line: 1458, column: 19, scope: !2383)
!2386 = !DILocation(line: 1458, column: 22, scope: !2383)
!2387 = !DILocation(line: 1458, column: 29, scope: !2383)
!2388 = !DILocation(line: 1458, column: 39, scope: !2383)
!2389 = !DILocation(line: 1458, column: 15, scope: !2384)
!2390 = !DILocation(line: 1460, column: 41, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 1460, column: 19)
!2392 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 1459, column: 11)
!2393 = !DILocation(line: 1460, column: 19, scope: !2391)
!2394 = !DILocation(line: 1460, column: 45, scope: !2391)
!2395 = !DILocation(line: 1460, column: 19, scope: !2392)
!2396 = !DILocation(line: 1461, column: 23, scope: !2391)
!2397 = !DILocation(line: 1461, column: 19, scope: !2391)
!2398 = !DILocation(line: 1462, column: 15, scope: !2392)
!2399 = !DILocation(line: 1462, column: 19, scope: !2392)
!2400 = !DILocation(line: 1462, column: 22, scope: !2392)
!2401 = !DILocation(line: 1462, column: 29, scope: !2392)
!2402 = !DILocation(line: 1462, column: 39, scope: !2392)
!2403 = !DILocation(line: 1463, column: 40, scope: !2392)
!2404 = !DILocation(line: 1463, column: 44, scope: !2392)
!2405 = !DILocation(line: 1463, column: 47, scope: !2392)
!2406 = !DILocation(line: 1463, column: 15, scope: !2392)
!2407 = !DILocation(line: 1463, column: 19, scope: !2392)
!2408 = !DILocation(line: 1463, column: 22, scope: !2392)
!2409 = !DILocation(line: 1463, column: 29, scope: !2392)
!2410 = !DILocation(line: 1463, column: 38, scope: !2392)
!2411 = !DILocation(line: 1464, column: 11, scope: !2392)
!2412 = !DILocation(line: 1467, column: 14, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 1467, column: 14)
!2414 = !DILocation(line: 1467, column: 18, scope: !2413)
!2415 = !DILocation(line: 1467, column: 14, scope: !2384)
!2416 = !DILocation(line: 1468, column: 15, scope: !2413)
!2417 = !DILocation(line: 1470, column: 16, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 1470, column: 15)
!2419 = !DILocation(line: 1470, column: 20, scope: !2418)
!2420 = !DILocation(line: 1470, column: 23, scope: !2418)
!2421 = !DILocation(line: 1470, column: 30, scope: !2418)
!2422 = !DILocation(line: 1470, column: 45, scope: !2418)
!2423 = !DILocation(line: 1470, column: 50, scope: !2418)
!2424 = !DILocation(line: 1470, column: 54, scope: !2418)
!2425 = !DILocation(line: 1470, column: 57, scope: !2418)
!2426 = !DILocation(line: 1470, column: 15, scope: !2384)
!2427 = !DILocalVariable(name: "uTotalOutBefore", scope: !2428, file: !3, line: 1472, type: !34)
!2428 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 1471, column: 11)
!2429 = !DILocation(line: 1472, column: 21, scope: !2428)
!2430 = !DILocation(line: 1472, column: 39, scope: !2428)
!2431 = !DILocation(line: 1472, column: 43, scope: !2428)
!2432 = !DILocation(line: 1472, column: 46, scope: !2428)
!2433 = !DILocation(line: 1472, column: 53, scope: !2428)
!2434 = !DILocation(line: 1473, column: 28, scope: !2428)
!2435 = !DILocation(line: 1473, column: 32, scope: !2428)
!2436 = !DILocation(line: 1473, column: 35, scope: !2428)
!2437 = !DILocation(line: 1473, column: 19, scope: !2428)
!2438 = !DILocation(line: 1473, column: 18, scope: !2428)
!2439 = !DILocation(line: 1474, column: 18, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 1474, column: 18)
!2441 = !DILocation(line: 1474, column: 36, scope: !2440)
!2442 = !DILocation(line: 1474, column: 40, scope: !2440)
!2443 = !DILocation(line: 1474, column: 43, scope: !2440)
!2444 = !DILocation(line: 1474, column: 50, scope: !2440)
!2445 = !DILocation(line: 1474, column: 34, scope: !2440)
!2446 = !DILocation(line: 1474, column: 18, scope: !2428)
!2447 = !DILocalVariable(name: "bBreak", scope: !2448, file: !3, line: 1476, type: !28)
!2448 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1475, column: 15)
!2449 = !DILocation(line: 1476, column: 21, scope: !2448)
!2450 = !DILocation(line: 1477, column: 23, scope: !2448)
!2451 = !DILocation(line: 1478, column: 15, scope: !2448)
!2452 = !DILocation(line: 1480, column: 53, scope: !2428)
!2453 = !DILocation(line: 1480, column: 57, scope: !2428)
!2454 = !DILocation(line: 1480, column: 60, scope: !2428)
!2455 = !DILocation(line: 1480, column: 67, scope: !2428)
!2456 = !DILocation(line: 1480, column: 79, scope: !2428)
!2457 = !DILocation(line: 1480, column: 77, scope: !2428)
!2458 = !DILocation(line: 1480, column: 46, scope: !2428)
!2459 = !DILocation(line: 1480, column: 15, scope: !2428)
!2460 = !DILocation(line: 1480, column: 19, scope: !2428)
!2461 = !DILocation(line: 1480, column: 22, scope: !2428)
!2462 = !DILocation(line: 1480, column: 43, scope: !2428)
!2463 = !DILocation(line: 1481, column: 11, scope: !2428)
!2464 = !DILocalVariable(name: "copy_this", scope: !2465, file: !3, line: 1484, type: !118)
!2465 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 1483, column: 11)
!2466 = !DILocation(line: 1484, column: 20, scope: !2465)
!2467 = !DILocalVariable(name: "i", scope: !2465, file: !3, line: 1484, type: !118)
!2468 = !DILocation(line: 1484, column: 30, scope: !2465)
!2469 = !DILocation(line: 1485, column: 19, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1485, column: 19)
!2471 = !DILocation(line: 1485, column: 23, scope: !2470)
!2472 = !DILocation(line: 1485, column: 26, scope: !2470)
!2473 = !DILocation(line: 1485, column: 33, scope: !2470)
!2474 = !DILocation(line: 1485, column: 44, scope: !2470)
!2475 = !DILocation(line: 1485, column: 48, scope: !2470)
!2476 = !DILocation(line: 1485, column: 51, scope: !2470)
!2477 = !DILocation(line: 1485, column: 58, scope: !2470)
!2478 = !DILocation(line: 1485, column: 42, scope: !2470)
!2479 = !DILocation(line: 1485, column: 19, scope: !2465)
!2480 = !DILocation(line: 1486, column: 31, scope: !2470)
!2481 = !DILocation(line: 1486, column: 35, scope: !2470)
!2482 = !DILocation(line: 1486, column: 38, scope: !2470)
!2483 = !DILocation(line: 1486, column: 45, scope: !2470)
!2484 = !DILocation(line: 1486, column: 29, scope: !2470)
!2485 = !DILocation(line: 1486, column: 19, scope: !2470)
!2486 = !DILocation(line: 1488, column: 31, scope: !2470)
!2487 = !DILocation(line: 1488, column: 35, scope: !2470)
!2488 = !DILocation(line: 1488, column: 38, scope: !2470)
!2489 = !DILocation(line: 1488, column: 45, scope: !2470)
!2490 = !DILocation(line: 1488, column: 29, scope: !2470)
!2491 = !DILocation(line: 1490, column: 22, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1490, column: 15)
!2493 = !DILocation(line: 1490, column: 20, scope: !2492)
!2494 = !DILocation(line: 1490, column: 27, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 1490, column: 15)
!2496 = !DILocation(line: 1490, column: 31, scope: !2495)
!2497 = !DILocation(line: 1490, column: 29, scope: !2495)
!2498 = !DILocation(line: 1490, column: 15, scope: !2492)
!2499 = !DILocation(line: 1492, column: 39, scope: !2495)
!2500 = !DILocation(line: 1492, column: 43, scope: !2495)
!2501 = !DILocation(line: 1492, column: 46, scope: !2495)
!2502 = !DILocation(line: 1492, column: 53, scope: !2495)
!2503 = !DILocation(line: 1492, column: 62, scope: !2495)
!2504 = !DILocation(line: 1492, column: 61, scope: !2495)
!2505 = !DILocation(line: 1492, column: 23, scope: !2495)
!2506 = !DILocation(line: 1491, column: 29, scope: !2495)
!2507 = !DILocation(line: 1491, column: 33, scope: !2495)
!2508 = !DILocation(line: 1491, column: 36, scope: !2495)
!2509 = !DILocation(line: 1491, column: 43, scope: !2495)
!2510 = !DILocation(line: 1491, column: 53, scope: !2495)
!2511 = !DILocation(line: 1491, column: 52, scope: !2495)
!2512 = !DILocation(line: 1491, column: 56, scope: !2495)
!2513 = !DILocation(line: 1491, column: 19, scope: !2495)
!2514 = !DILocation(line: 1490, column: 43, scope: !2495)
!2515 = !DILocation(line: 1490, column: 15, scope: !2495)
!2516 = distinct !{!2516, !2498, !2517, !743}
!2517 = !DILocation(line: 1492, column: 63, scope: !2492)
!2518 = !DILocation(line: 1494, column: 45, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1493, column: 15)
!2520 = !DILocation(line: 1494, column: 19, scope: !2519)
!2521 = !DILocation(line: 1494, column: 23, scope: !2519)
!2522 = !DILocation(line: 1494, column: 26, scope: !2519)
!2523 = !DILocation(line: 1494, column: 33, scope: !2519)
!2524 = !DILocation(line: 1494, column: 42, scope: !2519)
!2525 = !DILocation(line: 1495, column: 45, scope: !2519)
!2526 = !DILocation(line: 1495, column: 19, scope: !2519)
!2527 = !DILocation(line: 1495, column: 23, scope: !2519)
!2528 = !DILocation(line: 1495, column: 26, scope: !2519)
!2529 = !DILocation(line: 1495, column: 33, scope: !2519)
!2530 = !DILocation(line: 1495, column: 42, scope: !2519)
!2531 = !DILocation(line: 1496, column: 43, scope: !2519)
!2532 = !DILocation(line: 1496, column: 19, scope: !2519)
!2533 = !DILocation(line: 1496, column: 23, scope: !2519)
!2534 = !DILocation(line: 1496, column: 26, scope: !2519)
!2535 = !DILocation(line: 1496, column: 33, scope: !2519)
!2536 = !DILocation(line: 1496, column: 40, scope: !2519)
!2537 = !DILocation(line: 1497, column: 44, scope: !2519)
!2538 = !DILocation(line: 1497, column: 19, scope: !2519)
!2539 = !DILocation(line: 1497, column: 23, scope: !2519)
!2540 = !DILocation(line: 1497, column: 26, scope: !2519)
!2541 = !DILocation(line: 1497, column: 33, scope: !2519)
!2542 = !DILocation(line: 1497, column: 41, scope: !2519)
!2543 = !DILocation(line: 1498, column: 44, scope: !2519)
!2544 = !DILocation(line: 1498, column: 19, scope: !2519)
!2545 = !DILocation(line: 1498, column: 23, scope: !2519)
!2546 = !DILocation(line: 1498, column: 26, scope: !2519)
!2547 = !DILocation(line: 1498, column: 33, scope: !2519)
!2548 = !DILocation(line: 1498, column: 41, scope: !2519)
!2549 = !DILocation(line: 1499, column: 45, scope: !2519)
!2550 = !DILocation(line: 1499, column: 19, scope: !2519)
!2551 = !DILocation(line: 1499, column: 23, scope: !2519)
!2552 = !DILocation(line: 1499, column: 26, scope: !2519)
!2553 = !DILocation(line: 1499, column: 33, scope: !2519)
!2554 = !DILocation(line: 1499, column: 42, scope: !2519)
!2555 = !DILocation(line: 1500, column: 50, scope: !2519)
!2556 = !DILocation(line: 1500, column: 19, scope: !2519)
!2557 = !DILocation(line: 1500, column: 23, scope: !2519)
!2558 = !DILocation(line: 1500, column: 26, scope: !2519)
!2559 = !DILocation(line: 1500, column: 47, scope: !2519)
!2560 = distinct !{!2560, !2372, !2561, !743}
!2561 = !DILocation(line: 1503, column: 7, scope: !2360)
!2562 = !DILocation(line: 1506, column: 12, scope: !2323)
!2563 = !DILocation(line: 1506, column: 5, scope: !2323)
!2564 = !DILocation(line: 1507, column: 1, scope: !2323)
!2565 = distinct !DISubprogram(name: "zip64FlushWriteBuffer", scope: !3, file: !3, line: 1363, type: !339, scopeLine: 1364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!2566 = !DILocalVariable(name: "zi", arg: 1, scope: !2565, file: !3, line: 1363, type: !6)
!2567 = !DILocation(line: 1363, column: 49, scope: !2565)
!2568 = !DILocalVariable(name: "err", scope: !2565, file: !3, line: 1365, type: !28)
!2569 = !DILocation(line: 1365, column: 9, scope: !2565)
!2570 = !DILocation(line: 1367, column: 9, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 1367, column: 9)
!2572 = !DILocation(line: 1367, column: 13, scope: !2571)
!2573 = !DILocation(line: 1367, column: 16, scope: !2571)
!2574 = !DILocation(line: 1367, column: 24, scope: !2571)
!2575 = !DILocation(line: 1367, column: 9, scope: !2565)
!2576 = !DILocalVariable(name: "i", scope: !2577, file: !3, line: 1370, type: !118)
!2577 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 1368, column: 5)
!2578 = !DILocation(line: 1370, column: 14, scope: !2577)
!2579 = !DILocalVariable(name: "t", scope: !2577, file: !3, line: 1371, type: !28)
!2580 = !DILocation(line: 1371, column: 13, scope: !2577)
!2581 = !DILocation(line: 1372, column: 15, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 1372, column: 9)
!2583 = !DILocation(line: 1372, column: 14, scope: !2582)
!2584 = !DILocation(line: 1372, column: 18, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 1372, column: 9)
!2586 = !DILocation(line: 1372, column: 20, scope: !2585)
!2587 = !DILocation(line: 1372, column: 24, scope: !2585)
!2588 = !DILocation(line: 1372, column: 27, scope: !2585)
!2589 = !DILocation(line: 1372, column: 19, scope: !2585)
!2590 = !DILocation(line: 1372, column: 9, scope: !2582)
!2591 = !DILocation(line: 1373, column: 39, scope: !2585)
!2592 = !DILocation(line: 1373, column: 13, scope: !2585)
!2593 = !DILocation(line: 1373, column: 17, scope: !2585)
!2594 = !DILocation(line: 1373, column: 20, scope: !2585)
!2595 = !DILocation(line: 1373, column: 34, scope: !2585)
!2596 = !DILocation(line: 1373, column: 37, scope: !2585)
!2597 = !DILocation(line: 1372, column: 49, scope: !2585)
!2598 = !DILocation(line: 1372, column: 9, scope: !2585)
!2599 = distinct !{!2599, !2590, !2600, !743}
!2600 = !DILocation(line: 1373, column: 39, scope: !2582)
!2601 = !DILocation(line: 1375, column: 5, scope: !2577)
!2602 = !DILocation(line: 1377, column: 9, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 1377, column: 9)
!2604 = !DILocation(line: 1377, column: 101, scope: !2603)
!2605 = !DILocation(line: 1377, column: 105, scope: !2603)
!2606 = !DILocation(line: 1377, column: 108, scope: !2603)
!2607 = !DILocation(line: 1377, column: 98, scope: !2603)
!2608 = !DILocation(line: 1377, column: 9, scope: !2565)
!2609 = !DILocation(line: 1378, column: 11, scope: !2603)
!2610 = !DILocation(line: 1378, column: 7, scope: !2603)
!2611 = !DILocation(line: 1380, column: 35, scope: !2565)
!2612 = !DILocation(line: 1380, column: 39, scope: !2565)
!2613 = !DILocation(line: 1380, column: 42, scope: !2565)
!2614 = !DILocation(line: 1380, column: 5, scope: !2565)
!2615 = !DILocation(line: 1380, column: 9, scope: !2565)
!2616 = !DILocation(line: 1380, column: 12, scope: !2565)
!2617 = !DILocation(line: 1380, column: 32, scope: !2565)
!2618 = !DILocation(line: 1392, column: 39, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 1391, column: 5)
!2620 = !DILocation(line: 1392, column: 43, scope: !2619)
!2621 = !DILocation(line: 1392, column: 46, scope: !2619)
!2622 = !DILocation(line: 1392, column: 53, scope: !2619)
!2623 = !DILocation(line: 1392, column: 7, scope: !2619)
!2624 = !DILocation(line: 1392, column: 11, scope: !2619)
!2625 = !DILocation(line: 1392, column: 14, scope: !2619)
!2626 = !DILocation(line: 1392, column: 36, scope: !2619)
!2627 = !DILocation(line: 1393, column: 7, scope: !2619)
!2628 = !DILocation(line: 1393, column: 11, scope: !2619)
!2629 = !DILocation(line: 1393, column: 14, scope: !2619)
!2630 = !DILocation(line: 1393, column: 21, scope: !2619)
!2631 = !DILocation(line: 1393, column: 30, scope: !2619)
!2632 = !DILocation(line: 1397, column: 5, scope: !2565)
!2633 = !DILocation(line: 1397, column: 9, scope: !2565)
!2634 = !DILocation(line: 1397, column: 12, scope: !2565)
!2635 = !DILocation(line: 1397, column: 33, scope: !2565)
!2636 = !DILocation(line: 1399, column: 12, scope: !2565)
!2637 = !DILocation(line: 1399, column: 5, scope: !2565)
!2638 = distinct !DISubprogram(name: "zipCloseFileInZipRaw", scope: !3, file: !3, line: 1509, type: !2639, scopeLine: 1510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!28, !177, !34, !34}
!2641 = !DILocalVariable(name: "file", arg: 1, scope: !2638, file: !3, line: 1509, type: !177)
!2642 = !DILocation(line: 1509, column: 50, scope: !2638)
!2643 = !DILocalVariable(name: "uncompressed_size", arg: 2, scope: !2638, file: !3, line: 1509, type: !34)
!2644 = !DILocation(line: 1509, column: 62, scope: !2638)
!2645 = !DILocalVariable(name: "crc32", arg: 3, scope: !2638, file: !3, line: 1509, type: !34)
!2646 = !DILocation(line: 1509, column: 87, scope: !2638)
!2647 = !DILocation(line: 1511, column: 36, scope: !2638)
!2648 = !DILocation(line: 1511, column: 42, scope: !2638)
!2649 = !DILocation(line: 1511, column: 61, scope: !2638)
!2650 = !DILocation(line: 1511, column: 12, scope: !2638)
!2651 = !DILocation(line: 1511, column: 5, scope: !2638)
!2652 = distinct !DISubprogram(name: "zipCloseFileInZipRaw64", scope: !3, file: !3, line: 1514, type: !2653, scopeLine: 1515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!28, !177, !51, !34}
!2655 = !DILocalVariable(name: "file", arg: 1, scope: !2652, file: !3, line: 1514, type: !177)
!2656 = !DILocation(line: 1514, column: 52, scope: !2652)
!2657 = !DILocalVariable(name: "uncompressed_size", arg: 2, scope: !2652, file: !3, line: 1514, type: !51)
!2658 = !DILocation(line: 1514, column: 67, scope: !2652)
!2659 = !DILocalVariable(name: "crc32", arg: 3, scope: !2652, file: !3, line: 1514, type: !34)
!2660 = !DILocation(line: 1514, column: 92, scope: !2652)
!2661 = !DILocalVariable(name: "zi", scope: !2652, file: !3, line: 1516, type: !6)
!2662 = !DILocation(line: 1516, column: 21, scope: !2652)
!2663 = !DILocalVariable(name: "compressed_size", scope: !2652, file: !3, line: 1517, type: !51)
!2664 = !DILocation(line: 1517, column: 14, scope: !2652)
!2665 = !DILocalVariable(name: "invalidValue", scope: !2652, file: !3, line: 1518, type: !34)
!2666 = !DILocation(line: 1518, column: 11, scope: !2652)
!2667 = !DILocalVariable(name: "datasize", scope: !2652, file: !3, line: 1519, type: !181)
!2668 = !DILocation(line: 1519, column: 11, scope: !2652)
!2669 = !DILocalVariable(name: "err", scope: !2652, file: !3, line: 1520, type: !28)
!2670 = !DILocation(line: 1520, column: 9, scope: !2652)
!2671 = !DILocation(line: 1522, column: 9, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1522, column: 9)
!2673 = !DILocation(line: 1522, column: 14, scope: !2672)
!2674 = !DILocation(line: 1522, column: 9, scope: !2652)
!2675 = !DILocation(line: 1523, column: 9, scope: !2672)
!2676 = !DILocation(line: 1524, column: 27, scope: !2652)
!2677 = !DILocation(line: 1524, column: 8, scope: !2652)
!2678 = !DILocation(line: 1526, column: 9, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1526, column: 9)
!2680 = !DILocation(line: 1526, column: 13, scope: !2679)
!2681 = !DILocation(line: 1526, column: 34, scope: !2679)
!2682 = !DILocation(line: 1526, column: 9, scope: !2652)
!2683 = !DILocation(line: 1527, column: 9, scope: !2679)
!2684 = !DILocation(line: 1528, column: 5, scope: !2652)
!2685 = !DILocation(line: 1528, column: 9, scope: !2652)
!2686 = !DILocation(line: 1528, column: 12, scope: !2652)
!2687 = !DILocation(line: 1528, column: 19, scope: !2652)
!2688 = !DILocation(line: 1528, column: 28, scope: !2652)
!2689 = !DILocation(line: 1530, column: 10, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1530, column: 9)
!2691 = !DILocation(line: 1530, column: 14, scope: !2690)
!2692 = !DILocation(line: 1530, column: 17, scope: !2690)
!2693 = !DILocation(line: 1530, column: 24, scope: !2690)
!2694 = !DILocation(line: 1530, column: 39, scope: !2690)
!2695 = !DILocation(line: 1530, column: 44, scope: !2690)
!2696 = !DILocation(line: 1530, column: 48, scope: !2690)
!2697 = !DILocation(line: 1530, column: 51, scope: !2690)
!2698 = !DILocation(line: 1530, column: 9, scope: !2652)
!2699 = !DILocation(line: 1532, column: 25, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 1531, column: 17)
!2701 = !DILocation(line: 1532, column: 32, scope: !2700)
!2702 = !DILocation(line: 1532, column: 35, scope: !2700)
!2703 = !DILocalVariable(name: "uTotalOutBefore", scope: !2704, file: !3, line: 1534, type: !34)
!2704 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 1533, column: 25)
!2705 = !DILocation(line: 1534, column: 39, scope: !2704)
!2706 = !DILocation(line: 1535, column: 37, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 1535, column: 37)
!2708 = !DILocation(line: 1535, column: 41, scope: !2707)
!2709 = !DILocation(line: 1535, column: 44, scope: !2707)
!2710 = !DILocation(line: 1535, column: 51, scope: !2707)
!2711 = !DILocation(line: 1535, column: 61, scope: !2707)
!2712 = !DILocation(line: 1535, column: 37, scope: !2704)
!2713 = !DILocation(line: 1537, column: 67, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !3, line: 1537, column: 45)
!2715 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 1536, column: 33)
!2716 = !DILocation(line: 1537, column: 45, scope: !2714)
!2717 = !DILocation(line: 1537, column: 71, scope: !2714)
!2718 = !DILocation(line: 1537, column: 45, scope: !2715)
!2719 = !DILocation(line: 1538, column: 53, scope: !2714)
!2720 = !DILocation(line: 1538, column: 49, scope: !2714)
!2721 = !DILocation(line: 1539, column: 41, scope: !2715)
!2722 = !DILocation(line: 1539, column: 45, scope: !2715)
!2723 = !DILocation(line: 1539, column: 48, scope: !2715)
!2724 = !DILocation(line: 1539, column: 55, scope: !2715)
!2725 = !DILocation(line: 1539, column: 65, scope: !2715)
!2726 = !DILocation(line: 1540, column: 66, scope: !2715)
!2727 = !DILocation(line: 1540, column: 70, scope: !2715)
!2728 = !DILocation(line: 1540, column: 73, scope: !2715)
!2729 = !DILocation(line: 1540, column: 41, scope: !2715)
!2730 = !DILocation(line: 1540, column: 45, scope: !2715)
!2731 = !DILocation(line: 1540, column: 48, scope: !2715)
!2732 = !DILocation(line: 1540, column: 55, scope: !2715)
!2733 = !DILocation(line: 1540, column: 64, scope: !2715)
!2734 = !DILocation(line: 1541, column: 33, scope: !2715)
!2735 = !DILocation(line: 1542, column: 51, scope: !2704)
!2736 = !DILocation(line: 1542, column: 55, scope: !2704)
!2737 = !DILocation(line: 1542, column: 58, scope: !2704)
!2738 = !DILocation(line: 1542, column: 65, scope: !2704)
!2739 = !DILocation(line: 1542, column: 49, scope: !2704)
!2740 = !DILocation(line: 1543, column: 46, scope: !2704)
!2741 = !DILocation(line: 1543, column: 50, scope: !2704)
!2742 = !DILocation(line: 1543, column: 53, scope: !2704)
!2743 = !DILocation(line: 1543, column: 37, scope: !2704)
!2744 = !DILocation(line: 1543, column: 36, scope: !2704)
!2745 = !DILocation(line: 1544, column: 71, scope: !2704)
!2746 = !DILocation(line: 1544, column: 75, scope: !2704)
!2747 = !DILocation(line: 1544, column: 78, scope: !2704)
!2748 = !DILocation(line: 1544, column: 85, scope: !2704)
!2749 = !DILocation(line: 1544, column: 97, scope: !2704)
!2750 = !DILocation(line: 1544, column: 95, scope: !2704)
!2751 = !DILocation(line: 1544, column: 64, scope: !2704)
!2752 = !DILocation(line: 1544, column: 33, scope: !2704)
!2753 = !DILocation(line: 1544, column: 37, scope: !2704)
!2754 = !DILocation(line: 1544, column: 40, scope: !2704)
!2755 = !DILocation(line: 1544, column: 61, scope: !2704)
!2756 = distinct !{!2756, !2699, !2757, !743}
!2757 = !DILocation(line: 1545, column: 25, scope: !2700)
!2758 = !DILocation(line: 1546, column: 17, scope: !2700)
!2759 = !DILocation(line: 1547, column: 15, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 1547, column: 14)
!2761 = !DILocation(line: 1547, column: 19, scope: !2760)
!2762 = !DILocation(line: 1547, column: 22, scope: !2760)
!2763 = !DILocation(line: 1547, column: 29, scope: !2760)
!2764 = !DILocation(line: 1547, column: 43, scope: !2760)
!2765 = !DILocation(line: 1547, column: 48, scope: !2760)
!2766 = !DILocation(line: 1547, column: 52, scope: !2760)
!2767 = !DILocation(line: 1547, column: 55, scope: !2760)
!2768 = !DILocation(line: 1547, column: 14, scope: !2690)
!2769 = !DILocation(line: 1572, column: 5, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 1548, column: 5)
!2771 = !DILocation(line: 1574, column: 9, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1574, column: 9)
!2773 = !DILocation(line: 1574, column: 12, scope: !2772)
!2774 = !DILocation(line: 1574, column: 9, scope: !2652)
!2775 = !DILocation(line: 1575, column: 12, scope: !2772)
!2776 = !DILocation(line: 1575, column: 9, scope: !2772)
!2777 = !DILocation(line: 1577, column: 10, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1577, column: 9)
!2779 = !DILocation(line: 1577, column: 14, scope: !2778)
!2780 = !DILocation(line: 1577, column: 17, scope: !2778)
!2781 = !DILocation(line: 1577, column: 37, scope: !2778)
!2782 = !DILocation(line: 1577, column: 41, scope: !2778)
!2783 = !DILocation(line: 1577, column: 45, scope: !2778)
!2784 = !DILocation(line: 1577, column: 48, scope: !2778)
!2785 = !DILocation(line: 1577, column: 9, scope: !2652)
!2786 = !DILocation(line: 1579, column: 35, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 1579, column: 13)
!2788 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 1578, column: 17)
!2789 = !DILocation(line: 1579, column: 13, scope: !2787)
!2790 = !DILocation(line: 1579, column: 38, scope: !2787)
!2791 = !DILocation(line: 1579, column: 13, scope: !2788)
!2792 = !DILocation(line: 1580, column: 17, scope: !2787)
!2793 = !DILocation(line: 1580, column: 13, scope: !2787)
!2794 = !DILocation(line: 1581, column: 17, scope: !2788)
!2795 = !DILocation(line: 1583, column: 10, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1583, column: 9)
!2797 = !DILocation(line: 1583, column: 14, scope: !2796)
!2798 = !DILocation(line: 1583, column: 17, scope: !2796)
!2799 = !DILocation(line: 1583, column: 24, scope: !2796)
!2800 = !DILocation(line: 1583, column: 39, scope: !2796)
!2801 = !DILocation(line: 1583, column: 44, scope: !2796)
!2802 = !DILocation(line: 1583, column: 48, scope: !2796)
!2803 = !DILocation(line: 1583, column: 51, scope: !2796)
!2804 = !DILocation(line: 1583, column: 9, scope: !2652)
!2805 = !DILocalVariable(name: "tmp_err", scope: !2806, file: !3, line: 1585, type: !28)
!2806 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 1584, column: 5)
!2807 = !DILocation(line: 1585, column: 13, scope: !2806)
!2808 = !DILocation(line: 1585, column: 35, scope: !2806)
!2809 = !DILocation(line: 1585, column: 39, scope: !2806)
!2810 = !DILocation(line: 1585, column: 42, scope: !2806)
!2811 = !DILocation(line: 1585, column: 23, scope: !2806)
!2812 = !DILocation(line: 1586, column: 13, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 1586, column: 13)
!2814 = !DILocation(line: 1586, column: 17, scope: !2813)
!2815 = !DILocation(line: 1586, column: 13, scope: !2806)
!2816 = !DILocation(line: 1587, column: 19, scope: !2813)
!2817 = !DILocation(line: 1587, column: 17, scope: !2813)
!2818 = !DILocation(line: 1587, column: 13, scope: !2813)
!2819 = !DILocation(line: 1588, column: 9, scope: !2806)
!2820 = !DILocation(line: 1588, column: 13, scope: !2806)
!2821 = !DILocation(line: 1588, column: 16, scope: !2806)
!2822 = !DILocation(line: 1588, column: 35, scope: !2806)
!2823 = !DILocation(line: 1589, column: 5, scope: !2806)
!2824 = !DILocation(line: 1600, column: 10, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1600, column: 9)
!2826 = !DILocation(line: 1600, column: 14, scope: !2825)
!2827 = !DILocation(line: 1600, column: 17, scope: !2825)
!2828 = !DILocation(line: 1600, column: 9, scope: !2652)
!2829 = !DILocation(line: 1602, column: 24, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 1601, column: 5)
!2831 = !DILocation(line: 1602, column: 28, scope: !2830)
!2832 = !DILocation(line: 1602, column: 31, scope: !2830)
!2833 = !DILocation(line: 1602, column: 15, scope: !2830)
!2834 = !DILocation(line: 1603, column: 29, scope: !2830)
!2835 = !DILocation(line: 1603, column: 33, scope: !2830)
!2836 = !DILocation(line: 1603, column: 36, scope: !2830)
!2837 = !DILocation(line: 1603, column: 27, scope: !2830)
!2838 = !DILocation(line: 1604, column: 5, scope: !2830)
!2839 = !DILocation(line: 1605, column: 23, scope: !2652)
!2840 = !DILocation(line: 1605, column: 27, scope: !2652)
!2841 = !DILocation(line: 1605, column: 30, scope: !2652)
!2842 = !DILocation(line: 1605, column: 21, scope: !2652)
!2843 = !DILocation(line: 1608, column: 24, scope: !2652)
!2844 = !DILocation(line: 1608, column: 28, scope: !2652)
!2845 = !DILocation(line: 1608, column: 31, scope: !2652)
!2846 = !DILocation(line: 1608, column: 21, scope: !2652)
!2847 = !DILocation(line: 1612, column: 8, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1612, column: 8)
!2849 = !DILocation(line: 1612, column: 24, scope: !2848)
!2850 = !DILocation(line: 1612, column: 38, scope: !2848)
!2851 = !DILocation(line: 1612, column: 41, scope: !2848)
!2852 = !DILocation(line: 1612, column: 59, scope: !2848)
!2853 = !DILocation(line: 1612, column: 73, scope: !2848)
!2854 = !DILocation(line: 1612, column: 76, scope: !2848)
!2855 = !DILocation(line: 1612, column: 80, scope: !2848)
!2856 = !DILocation(line: 1612, column: 83, scope: !2848)
!2857 = !DILocation(line: 1612, column: 100, scope: !2848)
!2858 = !DILocation(line: 1612, column: 8, scope: !2652)
!2859 = !DILocation(line: 1615, column: 36, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 1613, column: 5)
!2861 = !DILocation(line: 1615, column: 40, scope: !2860)
!2862 = !DILocation(line: 1615, column: 43, scope: !2860)
!2863 = !DILocation(line: 1615, column: 57, scope: !2860)
!2864 = !DILocation(line: 1615, column: 7, scope: !2860)
!2865 = !DILocation(line: 1617, column: 36, scope: !2860)
!2866 = !DILocation(line: 1617, column: 40, scope: !2860)
!2867 = !DILocation(line: 1617, column: 43, scope: !2860)
!2868 = !DILocation(line: 1617, column: 57, scope: !2860)
!2869 = !DILocation(line: 1617, column: 7, scope: !2860)
!2870 = !DILocation(line: 1619, column: 5, scope: !2860)
!2871 = !DILocation(line: 1621, column: 34, scope: !2652)
!2872 = !DILocation(line: 1621, column: 38, scope: !2652)
!2873 = !DILocation(line: 1621, column: 41, scope: !2652)
!2874 = !DILocation(line: 1621, column: 55, scope: !2652)
!2875 = !DILocation(line: 1621, column: 59, scope: !2652)
!2876 = !DILocation(line: 1621, column: 5, scope: !2652)
!2877 = !DILocation(line: 1624, column: 8, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1624, column: 8)
!2879 = !DILocation(line: 1624, column: 24, scope: !2878)
!2880 = !DILocation(line: 1624, column: 8, scope: !2652)
!2881 = !DILocation(line: 1625, column: 36, scope: !2878)
!2882 = !DILocation(line: 1625, column: 40, scope: !2878)
!2883 = !DILocation(line: 1625, column: 43, scope: !2878)
!2884 = !DILocation(line: 1625, column: 57, scope: !2878)
!2885 = !DILocation(line: 1625, column: 62, scope: !2878)
!2886 = !DILocation(line: 1625, column: 7, scope: !2878)
!2887 = !DILocation(line: 1627, column: 36, scope: !2878)
!2888 = !DILocation(line: 1627, column: 40, scope: !2878)
!2889 = !DILocation(line: 1627, column: 43, scope: !2878)
!2890 = !DILocation(line: 1627, column: 57, scope: !2878)
!2891 = !DILocation(line: 1627, column: 62, scope: !2878)
!2892 = !DILocation(line: 1627, column: 7, scope: !2878)
!2893 = !DILocation(line: 1630, column: 9, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1630, column: 9)
!2895 = !DILocation(line: 1630, column: 13, scope: !2894)
!2896 = !DILocation(line: 1630, column: 16, scope: !2894)
!2897 = !DILocation(line: 1630, column: 23, scope: !2894)
!2898 = !DILocation(line: 1630, column: 33, scope: !2894)
!2899 = !DILocation(line: 1630, column: 9, scope: !2652)
!2900 = !DILocation(line: 1631, column: 38, scope: !2894)
!2901 = !DILocation(line: 1631, column: 42, scope: !2894)
!2902 = !DILocation(line: 1631, column: 45, scope: !2894)
!2903 = !DILocation(line: 1631, column: 59, scope: !2894)
!2904 = !DILocation(line: 1631, column: 9, scope: !2894)
!2905 = !DILocation(line: 1633, column: 8, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1633, column: 8)
!2907 = !DILocation(line: 1633, column: 26, scope: !2906)
!2908 = !DILocation(line: 1633, column: 8, scope: !2652)
!2909 = !DILocation(line: 1634, column: 36, scope: !2906)
!2910 = !DILocation(line: 1634, column: 40, scope: !2906)
!2911 = !DILocation(line: 1634, column: 43, scope: !2906)
!2912 = !DILocation(line: 1634, column: 57, scope: !2906)
!2913 = !DILocation(line: 1634, column: 62, scope: !2906)
!2914 = !DILocation(line: 1634, column: 7, scope: !2906)
!2915 = !DILocation(line: 1636, column: 36, scope: !2906)
!2916 = !DILocation(line: 1636, column: 40, scope: !2906)
!2917 = !DILocation(line: 1636, column: 43, scope: !2906)
!2918 = !DILocation(line: 1636, column: 57, scope: !2906)
!2919 = !DILocation(line: 1636, column: 62, scope: !2906)
!2920 = !DILocation(line: 1636, column: 7, scope: !2906)
!2921 = !DILocation(line: 1639, column: 8, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1639, column: 8)
!2923 = !DILocation(line: 1639, column: 26, scope: !2922)
!2924 = !DILocation(line: 1639, column: 8, scope: !2652)
!2925 = !DILocation(line: 1640, column: 16, scope: !2922)
!2926 = !DILocation(line: 1640, column: 7, scope: !2922)
!2927 = !DILocation(line: 1643, column: 8, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1643, column: 8)
!2929 = !DILocation(line: 1643, column: 24, scope: !2928)
!2930 = !DILocation(line: 1643, column: 8, scope: !2652)
!2931 = !DILocation(line: 1644, column: 16, scope: !2928)
!2932 = !DILocation(line: 1644, column: 7, scope: !2928)
!2933 = !DILocation(line: 1647, column: 8, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1647, column: 8)
!2935 = !DILocation(line: 1647, column: 12, scope: !2934)
!2936 = !DILocation(line: 1647, column: 15, scope: !2934)
!2937 = !DILocation(line: 1647, column: 32, scope: !2934)
!2938 = !DILocation(line: 1647, column: 8, scope: !2652)
!2939 = !DILocation(line: 1648, column: 16, scope: !2934)
!2940 = !DILocation(line: 1648, column: 7, scope: !2934)
!2941 = !DILocation(line: 1650, column: 8, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1650, column: 8)
!2943 = !DILocation(line: 1650, column: 17, scope: !2942)
!2944 = !DILocation(line: 1650, column: 8, scope: !2652)
!2945 = !DILocalVariable(name: "p", scope: !2946, file: !3, line: 1652, type: !125)
!2946 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 1651, column: 5)
!2947 = !DILocation(line: 1652, column: 13, scope: !2946)
!2948 = !DILocation(line: 1654, column: 18, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 1654, column: 10)
!2950 = !DILocation(line: 1654, column: 27, scope: !2949)
!2951 = !DILocation(line: 1654, column: 10, scope: !2949)
!2952 = !DILocation(line: 1654, column: 34, scope: !2949)
!2953 = !DILocation(line: 1654, column: 38, scope: !2949)
!2954 = !DILocation(line: 1654, column: 41, scope: !2949)
!2955 = !DILocation(line: 1654, column: 32, scope: !2949)
!2956 = !DILocation(line: 1654, column: 10, scope: !2946)
!2957 = !DILocation(line: 1657, column: 9, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 1655, column: 7)
!2959 = !DILocation(line: 1660, column: 11, scope: !2946)
!2960 = !DILocation(line: 1660, column: 15, scope: !2946)
!2961 = !DILocation(line: 1660, column: 18, scope: !2946)
!2962 = !DILocation(line: 1660, column: 35, scope: !2946)
!2963 = !DILocation(line: 1660, column: 39, scope: !2946)
!2964 = !DILocation(line: 1660, column: 42, scope: !2946)
!2965 = !DILocation(line: 1660, column: 33, scope: !2946)
!2966 = !DILocation(line: 1660, column: 9, scope: !2946)
!2967 = !DILocation(line: 1663, column: 36, scope: !2946)
!2968 = !DILocation(line: 1663, column: 7, scope: !2946)
!2969 = !DILocation(line: 1664, column: 9, scope: !2946)
!2970 = !DILocation(line: 1665, column: 36, scope: !2946)
!2971 = !DILocation(line: 1665, column: 39, scope: !2946)
!2972 = !DILocation(line: 1665, column: 7, scope: !2946)
!2973 = !DILocation(line: 1666, column: 9, scope: !2946)
!2974 = !DILocation(line: 1668, column: 10, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 1668, column: 10)
!2976 = !DILocation(line: 1668, column: 28, scope: !2975)
!2977 = !DILocation(line: 1668, column: 10, scope: !2946)
!2978 = !DILocation(line: 1670, column: 38, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 1669, column: 7)
!2980 = !DILocation(line: 1670, column: 41, scope: !2979)
!2981 = !DILocation(line: 1670, column: 9, scope: !2979)
!2982 = !DILocation(line: 1671, column: 11, scope: !2979)
!2983 = !DILocation(line: 1672, column: 7, scope: !2979)
!2984 = !DILocation(line: 1674, column: 10, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 1674, column: 10)
!2986 = !DILocation(line: 1674, column: 26, scope: !2985)
!2987 = !DILocation(line: 1674, column: 10, scope: !2946)
!2988 = !DILocation(line: 1676, column: 38, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 1675, column: 7)
!2990 = !DILocation(line: 1676, column: 41, scope: !2989)
!2991 = !DILocation(line: 1676, column: 9, scope: !2989)
!2992 = !DILocation(line: 1677, column: 11, scope: !2989)
!2993 = !DILocation(line: 1678, column: 7, scope: !2989)
!2994 = !DILocation(line: 1680, column: 10, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 1680, column: 10)
!2996 = !DILocation(line: 1680, column: 14, scope: !2995)
!2997 = !DILocation(line: 1680, column: 17, scope: !2995)
!2998 = !DILocation(line: 1680, column: 34, scope: !2995)
!2999 = !DILocation(line: 1680, column: 10, scope: !2946)
!3000 = !DILocation(line: 1682, column: 38, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 1681, column: 7)
!3002 = !DILocation(line: 1682, column: 41, scope: !3001)
!3003 = !DILocation(line: 1682, column: 45, scope: !3001)
!3004 = !DILocation(line: 1682, column: 48, scope: !3001)
!3005 = !DILocation(line: 1682, column: 9, scope: !3001)
!3006 = !DILocation(line: 1683, column: 11, scope: !3001)
!3007 = !DILocation(line: 1684, column: 7, scope: !3001)
!3008 = !DILocation(line: 1689, column: 39, scope: !2946)
!3009 = !DILocation(line: 1689, column: 48, scope: !2946)
!3010 = !DILocation(line: 1689, column: 7, scope: !2946)
!3011 = !DILocation(line: 1689, column: 11, scope: !2946)
!3012 = !DILocation(line: 1689, column: 14, scope: !2946)
!3013 = !DILocation(line: 1689, column: 36, scope: !2946)
!3014 = !DILocation(line: 1690, column: 36, scope: !2946)
!3015 = !DILocation(line: 1690, column: 45, scope: !2946)
!3016 = !DILocation(line: 1690, column: 7, scope: !2946)
!3017 = !DILocation(line: 1690, column: 11, scope: !2946)
!3018 = !DILocation(line: 1690, column: 14, scope: !2946)
!3019 = !DILocation(line: 1690, column: 33, scope: !2946)
!3020 = !DILocation(line: 1693, column: 35, scope: !2946)
!3021 = !DILocation(line: 1693, column: 44, scope: !2946)
!3022 = !DILocation(line: 1693, column: 7, scope: !2946)
!3023 = !DILocation(line: 1693, column: 11, scope: !2946)
!3024 = !DILocation(line: 1693, column: 14, scope: !2946)
!3025 = !DILocation(line: 1693, column: 32, scope: !2946)
!3026 = !DILocation(line: 1694, column: 36, scope: !2946)
!3027 = !DILocation(line: 1694, column: 40, scope: !2946)
!3028 = !DILocation(line: 1694, column: 43, scope: !2946)
!3029 = !DILocation(line: 1694, column: 57, scope: !2946)
!3030 = !DILocation(line: 1694, column: 68, scope: !2946)
!3031 = !DILocation(line: 1694, column: 72, scope: !2946)
!3032 = !DILocation(line: 1694, column: 75, scope: !2946)
!3033 = !DILocation(line: 1694, column: 7, scope: !2946)
!3034 = !DILocation(line: 1695, column: 5, scope: !2946)
!3035 = !DILocation(line: 1697, column: 9, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1697, column: 9)
!3037 = !DILocation(line: 1697, column: 12, scope: !3036)
!3038 = !DILocation(line: 1697, column: 9, scope: !2652)
!3039 = !DILocation(line: 1698, column: 38, scope: !3036)
!3040 = !DILocation(line: 1698, column: 42, scope: !3036)
!3041 = !DILocation(line: 1698, column: 55, scope: !3036)
!3042 = !DILocation(line: 1698, column: 59, scope: !3036)
!3043 = !DILocation(line: 1698, column: 62, scope: !3036)
!3044 = !DILocation(line: 1698, column: 85, scope: !3036)
!3045 = !DILocation(line: 1698, column: 89, scope: !3036)
!3046 = !DILocation(line: 1698, column: 92, scope: !3036)
!3047 = !DILocation(line: 1698, column: 15, scope: !3036)
!3048 = !DILocation(line: 1698, column: 13, scope: !3036)
!3049 = !DILocation(line: 1698, column: 9, scope: !3036)
!3050 = !DILocation(line: 1700, column: 10, scope: !2652)
!3051 = !DILocation(line: 1700, column: 14, scope: !2652)
!3052 = !DILocation(line: 1700, column: 17, scope: !2652)
!3053 = !DILocation(line: 1700, column: 5, scope: !2652)
!3054 = !DILocation(line: 1702, column: 9, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1702, column: 9)
!3056 = !DILocation(line: 1702, column: 12, scope: !3055)
!3057 = !DILocation(line: 1702, column: 9, scope: !2652)
!3058 = !DILocalVariable(name: "cur_pos_inzip", scope: !3059, file: !3, line: 1706, type: !51)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 1703, column: 5)
!3060 = !DILocation(line: 1706, column: 18, scope: !3059)
!3061 = !DILocation(line: 1706, column: 34, scope: !3059)
!3062 = !DILocation(line: 1708, column: 13, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 1708, column: 13)
!3064 = !DILocation(line: 1708, column: 104, scope: !3063)
!3065 = !DILocation(line: 1708, column: 13, scope: !3059)
!3066 = !DILocation(line: 1709, column: 17, scope: !3063)
!3067 = !DILocation(line: 1709, column: 13, scope: !3063)
!3068 = !DILocation(line: 1711, column: 13, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 1711, column: 13)
!3070 = !DILocation(line: 1711, column: 16, scope: !3069)
!3071 = !DILocation(line: 1711, column: 13, scope: !3059)
!3072 = !DILocation(line: 1712, column: 40, scope: !3069)
!3073 = !DILocation(line: 1712, column: 44, scope: !3069)
!3074 = !DILocation(line: 1712, column: 55, scope: !3069)
!3075 = !DILocation(line: 1712, column: 59, scope: !3069)
!3076 = !DILocation(line: 1712, column: 70, scope: !3069)
!3077 = !DILocation(line: 1712, column: 19, scope: !3069)
!3078 = !DILocation(line: 1712, column: 17, scope: !3069)
!3079 = !DILocation(line: 1712, column: 13, scope: !3069)
!3080 = !DILocation(line: 1714, column: 12, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 1714, column: 12)
!3082 = !DILocation(line: 1714, column: 30, scope: !3081)
!3083 = !DILocation(line: 1714, column: 44, scope: !3081)
!3084 = !DILocation(line: 1714, column: 47, scope: !3081)
!3085 = !DILocation(line: 1714, column: 63, scope: !3081)
!3086 = !DILocation(line: 1714, column: 12, scope: !3059)
!3087 = !DILocation(line: 1716, column: 14, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 1716, column: 14)
!3089 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 1715, column: 9)
!3090 = !DILocation(line: 1716, column: 18, scope: !3088)
!3091 = !DILocation(line: 1716, column: 21, scope: !3088)
!3092 = !DILocation(line: 1716, column: 40, scope: !3088)
!3093 = !DILocation(line: 1716, column: 14, scope: !3089)
!3094 = !DILocation(line: 1719, column: 17, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 1719, column: 17)
!3096 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 1717, column: 11)
!3097 = !DILocation(line: 1719, column: 109, scope: !3095)
!3098 = !DILocation(line: 1719, column: 17, scope: !3096)
!3099 = !DILocation(line: 1720, column: 19, scope: !3095)
!3100 = !DILocation(line: 1720, column: 15, scope: !3095)
!3101 = !DILocation(line: 1722, column: 17, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 1722, column: 17)
!3103 = !DILocation(line: 1722, column: 20, scope: !3102)
!3104 = !DILocation(line: 1722, column: 17, scope: !3096)
!3105 = !DILocation(line: 1723, column: 42, scope: !3102)
!3106 = !DILocation(line: 1723, column: 46, scope: !3102)
!3107 = !DILocation(line: 1723, column: 58, scope: !3102)
!3108 = !DILocation(line: 1723, column: 62, scope: !3102)
!3109 = !DILocation(line: 1723, column: 74, scope: !3102)
!3110 = !DILocation(line: 1723, column: 21, scope: !3102)
!3111 = !DILocation(line: 1723, column: 19, scope: !3102)
!3112 = !DILocation(line: 1723, column: 15, scope: !3102)
!3113 = !DILocation(line: 1725, column: 17, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 1725, column: 17)
!3115 = !DILocation(line: 1725, column: 20, scope: !3114)
!3116 = !DILocation(line: 1725, column: 17, scope: !3096)
!3117 = !DILocation(line: 1726, column: 42, scope: !3114)
!3118 = !DILocation(line: 1726, column: 46, scope: !3114)
!3119 = !DILocation(line: 1726, column: 58, scope: !3114)
!3120 = !DILocation(line: 1726, column: 62, scope: !3114)
!3121 = !DILocation(line: 1726, column: 74, scope: !3114)
!3122 = !DILocation(line: 1726, column: 21, scope: !3114)
!3123 = !DILocation(line: 1726, column: 19, scope: !3114)
!3124 = !DILocation(line: 1726, column: 15, scope: !3114)
!3125 = !DILocation(line: 1727, column: 11, scope: !3096)
!3126 = !DILocation(line: 1729, column: 19, scope: !3088)
!3127 = !DILocation(line: 1730, column: 9, scope: !3089)
!3128 = !DILocation(line: 1733, column: 15, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 1733, column: 15)
!3130 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 1732, column: 9)
!3131 = !DILocation(line: 1733, column: 18, scope: !3129)
!3132 = !DILocation(line: 1733, column: 15, scope: !3130)
!3133 = !DILocation(line: 1734, column: 42, scope: !3129)
!3134 = !DILocation(line: 1734, column: 46, scope: !3129)
!3135 = !DILocation(line: 1734, column: 57, scope: !3129)
!3136 = !DILocation(line: 1734, column: 61, scope: !3129)
!3137 = !DILocation(line: 1734, column: 72, scope: !3129)
!3138 = !DILocation(line: 1734, column: 21, scope: !3129)
!3139 = !DILocation(line: 1734, column: 19, scope: !3129)
!3140 = !DILocation(line: 1734, column: 15, scope: !3129)
!3141 = !DILocation(line: 1736, column: 15, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 1736, column: 15)
!3143 = !DILocation(line: 1736, column: 18, scope: !3142)
!3144 = !DILocation(line: 1736, column: 15, scope: !3130)
!3145 = !DILocation(line: 1737, column: 42, scope: !3142)
!3146 = !DILocation(line: 1737, column: 46, scope: !3142)
!3147 = !DILocation(line: 1737, column: 57, scope: !3142)
!3148 = !DILocation(line: 1737, column: 61, scope: !3142)
!3149 = !DILocation(line: 1737, column: 72, scope: !3142)
!3150 = !DILocation(line: 1737, column: 21, scope: !3142)
!3151 = !DILocation(line: 1737, column: 19, scope: !3142)
!3152 = !DILocation(line: 1737, column: 15, scope: !3142)
!3153 = !DILocation(line: 1740, column: 13, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 1740, column: 13)
!3155 = !DILocation(line: 1740, column: 89, scope: !3154)
!3156 = !DILocation(line: 1740, column: 13, scope: !3059)
!3157 = !DILocation(line: 1741, column: 17, scope: !3154)
!3158 = !DILocation(line: 1741, column: 13, scope: !3154)
!3159 = !DILocation(line: 1742, column: 5, scope: !3059)
!3160 = !DILocation(line: 1744, column: 5, scope: !2652)
!3161 = !DILocation(line: 1744, column: 9, scope: !2652)
!3162 = !DILocation(line: 1744, column: 22, scope: !2652)
!3163 = !DILocation(line: 1745, column: 5, scope: !2652)
!3164 = !DILocation(line: 1745, column: 9, scope: !2652)
!3165 = !DILocation(line: 1745, column: 30, scope: !2652)
!3166 = !DILocation(line: 1747, column: 12, scope: !2652)
!3167 = !DILocation(line: 1747, column: 5, scope: !2652)
!3168 = !DILocation(line: 1748, column: 1, scope: !2652)
!3169 = distinct !DISubprogram(name: "add_data_in_datablock", scope: !3, file: !3, line: 225, type: !3170, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!28, !328, !26, !34}
!3172 = !DILocalVariable(name: "ll", arg: 1, scope: !3169, file: !3, line: 225, type: !328)
!3173 = !DILocation(line: 225, column: 50, scope: !3169)
!3174 = !DILocalVariable(name: "buf", arg: 2, scope: !3169, file: !3, line: 225, type: !26)
!3175 = !DILocation(line: 225, column: 66, scope: !3169)
!3176 = !DILocalVariable(name: "len", arg: 3, scope: !3169, file: !3, line: 225, type: !34)
!3177 = !DILocation(line: 225, column: 77, scope: !3169)
!3178 = !DILocalVariable(name: "ldi", scope: !3169, file: !3, line: 227, type: !88)
!3179 = !DILocation(line: 227, column: 36, scope: !3169)
!3180 = !DILocalVariable(name: "from_copy", scope: !3169, file: !3, line: 228, type: !183)
!3181 = !DILocation(line: 228, column: 26, scope: !3169)
!3182 = !DILocation(line: 230, column: 9, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 230, column: 9)
!3184 = !DILocation(line: 230, column: 11, scope: !3183)
!3185 = !DILocation(line: 230, column: 9, scope: !3169)
!3186 = !DILocation(line: 231, column: 9, scope: !3183)
!3187 = !DILocation(line: 233, column: 9, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 233, column: 9)
!3189 = !DILocation(line: 233, column: 13, scope: !3188)
!3190 = !DILocation(line: 233, column: 24, scope: !3188)
!3191 = !DILocation(line: 233, column: 9, scope: !3169)
!3192 = !DILocation(line: 235, column: 44, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 234, column: 5)
!3194 = !DILocation(line: 235, column: 27, scope: !3193)
!3195 = !DILocation(line: 235, column: 31, scope: !3193)
!3196 = !DILocation(line: 235, column: 42, scope: !3193)
!3197 = !DILocation(line: 235, column: 9, scope: !3193)
!3198 = !DILocation(line: 235, column: 13, scope: !3193)
!3199 = !DILocation(line: 235, column: 25, scope: !3193)
!3200 = !DILocation(line: 236, column: 13, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 236, column: 13)
!3202 = !DILocation(line: 236, column: 17, scope: !3201)
!3203 = !DILocation(line: 236, column: 29, scope: !3201)
!3204 = !DILocation(line: 236, column: 13, scope: !3193)
!3205 = !DILocation(line: 237, column: 13, scope: !3201)
!3206 = !DILocation(line: 238, column: 5, scope: !3193)
!3207 = !DILocation(line: 240, column: 11, scope: !3169)
!3208 = !DILocation(line: 240, column: 15, scope: !3169)
!3209 = !DILocation(line: 240, column: 9, scope: !3169)
!3210 = !DILocation(line: 241, column: 39, scope: !3169)
!3211 = !DILocation(line: 241, column: 15, scope: !3169)
!3212 = !DILocation(line: 243, column: 5, scope: !3169)
!3213 = !DILocation(line: 243, column: 12, scope: !3169)
!3214 = !DILocation(line: 243, column: 15, scope: !3169)
!3215 = !DILocalVariable(name: "copy_this", scope: !3216, file: !3, line: 245, type: !118)
!3216 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 244, column: 5)
!3217 = !DILocation(line: 245, column: 14, scope: !3216)
!3218 = !DILocalVariable(name: "i", scope: !3216, file: !3, line: 246, type: !118)
!3219 = !DILocation(line: 246, column: 14, scope: !3216)
!3220 = !DILocalVariable(name: "to_copy", scope: !3216, file: !3, line: 247, type: !182)
!3221 = !DILocation(line: 247, column: 24, scope: !3216)
!3222 = !DILocation(line: 249, column: 13, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 249, column: 13)
!3224 = !DILocation(line: 249, column: 18, scope: !3223)
!3225 = !DILocation(line: 249, column: 37, scope: !3223)
!3226 = !DILocation(line: 249, column: 13, scope: !3216)
!3227 = !DILocation(line: 251, column: 35, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 250, column: 9)
!3229 = !DILocation(line: 251, column: 13, scope: !3228)
!3230 = !DILocation(line: 251, column: 18, scope: !3228)
!3231 = !DILocation(line: 251, column: 33, scope: !3228)
!3232 = !DILocation(line: 252, column: 17, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 252, column: 17)
!3234 = !DILocation(line: 252, column: 22, scope: !3233)
!3235 = !DILocation(line: 252, column: 37, scope: !3233)
!3236 = !DILocation(line: 252, column: 17, scope: !3228)
!3237 = !DILocation(line: 253, column: 17, scope: !3233)
!3238 = !DILocation(line: 254, column: 19, scope: !3228)
!3239 = !DILocation(line: 254, column: 24, scope: !3228)
!3240 = !DILocation(line: 254, column: 17, scope: !3228)
!3241 = !DILocation(line: 255, column: 30, scope: !3228)
!3242 = !DILocation(line: 255, column: 13, scope: !3228)
!3243 = !DILocation(line: 255, column: 17, scope: !3228)
!3244 = !DILocation(line: 255, column: 28, scope: !3228)
!3245 = !DILocation(line: 256, column: 9, scope: !3228)
!3246 = !DILocation(line: 258, column: 13, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 258, column: 13)
!3248 = !DILocation(line: 258, column: 18, scope: !3247)
!3249 = !DILocation(line: 258, column: 40, scope: !3247)
!3250 = !DILocation(line: 258, column: 38, scope: !3247)
!3251 = !DILocation(line: 258, column: 13, scope: !3216)
!3252 = !DILocation(line: 259, column: 31, scope: !3247)
!3253 = !DILocation(line: 259, column: 36, scope: !3247)
!3254 = !DILocation(line: 259, column: 25, scope: !3247)
!3255 = !DILocation(line: 259, column: 23, scope: !3247)
!3256 = !DILocation(line: 259, column: 13, scope: !3247)
!3257 = !DILocation(line: 261, column: 31, scope: !3247)
!3258 = !DILocation(line: 261, column: 25, scope: !3247)
!3259 = !DILocation(line: 261, column: 23, scope: !3247)
!3260 = !DILocation(line: 263, column: 21, scope: !3216)
!3261 = !DILocation(line: 263, column: 26, scope: !3216)
!3262 = !DILocation(line: 263, column: 31, scope: !3216)
!3263 = !DILocation(line: 263, column: 36, scope: !3216)
!3264 = !DILocation(line: 263, column: 17, scope: !3216)
!3265 = !DILocation(line: 265, column: 15, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 265, column: 9)
!3267 = !DILocation(line: 265, column: 14, scope: !3266)
!3268 = !DILocation(line: 265, column: 18, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 265, column: 9)
!3270 = !DILocation(line: 265, column: 20, scope: !3269)
!3271 = !DILocation(line: 265, column: 19, scope: !3269)
!3272 = !DILocation(line: 265, column: 9, scope: !3266)
!3273 = !DILocation(line: 266, column: 28, scope: !3269)
!3274 = !DILocation(line: 266, column: 38, scope: !3269)
!3275 = !DILocation(line: 266, column: 37, scope: !3269)
!3276 = !DILocation(line: 266, column: 26, scope: !3269)
!3277 = !DILocation(line: 266, column: 15, scope: !3269)
!3278 = !DILocation(line: 266, column: 23, scope: !3269)
!3279 = !DILocation(line: 266, column: 22, scope: !3269)
!3280 = !DILocation(line: 266, column: 25, scope: !3269)
!3281 = !DILocation(line: 266, column: 13, scope: !3269)
!3282 = !DILocation(line: 265, column: 31, scope: !3269)
!3283 = !DILocation(line: 265, column: 9, scope: !3269)
!3284 = distinct !{!3284, !3272, !3285, !743}
!3285 = !DILocation(line: 266, column: 39, scope: !3266)
!3286 = !DILocation(line: 268, column: 38, scope: !3216)
!3287 = !DILocation(line: 268, column: 9, scope: !3216)
!3288 = !DILocation(line: 268, column: 14, scope: !3216)
!3289 = !DILocation(line: 268, column: 35, scope: !3216)
!3290 = !DILocation(line: 269, column: 37, scope: !3216)
!3291 = !DILocation(line: 269, column: 9, scope: !3216)
!3292 = !DILocation(line: 269, column: 14, scope: !3216)
!3293 = !DILocation(line: 269, column: 34, scope: !3216)
!3294 = !DILocation(line: 270, column: 22, scope: !3216)
!3295 = !DILocation(line: 270, column: 19, scope: !3216)
!3296 = !DILocation(line: 271, column: 16, scope: !3216)
!3297 = !DILocation(line: 271, column: 13, scope: !3216)
!3298 = distinct !{!3298, !3212, !3299, !743}
!3299 = !DILocation(line: 272, column: 5, scope: !3169)
!3300 = !DILocation(line: 273, column: 5, scope: !3169)
!3301 = !DILocation(line: 274, column: 1, scope: !3169)
!3302 = distinct !DISubprogram(name: "zip64local_putValue", scope: !3, file: !3, line: 287, type: !3303, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!28, !3305, !24, !51, !28}
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!3307 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 1, scope: !3302, file: !3, line: 287, type: !3305)
!3308 = !DILocation(line: 287, column: 62, scope: !3302)
!3309 = !DILocalVariable(name: "filestream", arg: 2, scope: !3302, file: !3, line: 287, type: !24)
!3310 = !DILocation(line: 287, column: 89, scope: !3302)
!3311 = !DILocalVariable(name: "x", arg: 3, scope: !3302, file: !3, line: 287, type: !51)
!3312 = !DILocation(line: 287, column: 110, scope: !3302)
!3313 = !DILocalVariable(name: "nbByte", arg: 4, scope: !3302, file: !3, line: 287, type: !28)
!3314 = !DILocation(line: 287, column: 117, scope: !3302)
!3315 = !DILocalVariable(name: "buf", scope: !3302, file: !3, line: 289, type: !3316)
!3316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 64, elements: !3317)
!3317 = !{!3318}
!3318 = !DISubrange(count: 8)
!3319 = !DILocation(line: 289, column: 19, scope: !3302)
!3320 = !DILocalVariable(name: "n", scope: !3302, file: !3, line: 290, type: !28)
!3321 = !DILocation(line: 290, column: 9, scope: !3302)
!3322 = !DILocation(line: 291, column: 12, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 291, column: 5)
!3324 = !DILocation(line: 291, column: 10, scope: !3323)
!3325 = !DILocation(line: 291, column: 17, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 291, column: 5)
!3327 = !DILocation(line: 291, column: 21, scope: !3326)
!3328 = !DILocation(line: 291, column: 19, scope: !3326)
!3329 = !DILocation(line: 291, column: 5, scope: !3323)
!3330 = !DILocation(line: 293, column: 34, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 292, column: 5)
!3332 = !DILocation(line: 293, column: 36, scope: !3331)
!3333 = !DILocation(line: 293, column: 18, scope: !3331)
!3334 = !DILocation(line: 293, column: 13, scope: !3331)
!3335 = !DILocation(line: 293, column: 9, scope: !3331)
!3336 = !DILocation(line: 293, column: 16, scope: !3331)
!3337 = !DILocation(line: 294, column: 11, scope: !3331)
!3338 = !DILocation(line: 295, column: 5, scope: !3331)
!3339 = !DILocation(line: 291, column: 30, scope: !3326)
!3340 = !DILocation(line: 291, column: 5, scope: !3326)
!3341 = distinct !{!3341, !3329, !3342, !743}
!3342 = !DILocation(line: 295, column: 5, scope: !3323)
!3343 = !DILocation(line: 296, column: 9, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 296, column: 9)
!3345 = !DILocation(line: 296, column: 11, scope: !3344)
!3346 = !DILocation(line: 296, column: 9, scope: !3302)
!3347 = !DILocation(line: 298, column: 14, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 298, column: 7)
!3349 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 297, column: 7)
!3350 = !DILocation(line: 298, column: 12, scope: !3348)
!3351 = !DILocation(line: 298, column: 19, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 298, column: 7)
!3353 = !DILocation(line: 298, column: 23, scope: !3352)
!3354 = !DILocation(line: 298, column: 21, scope: !3352)
!3355 = !DILocation(line: 298, column: 7, scope: !3348)
!3356 = !DILocation(line: 300, column: 15, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 299, column: 9)
!3358 = !DILocation(line: 300, column: 11, scope: !3357)
!3359 = !DILocation(line: 300, column: 18, scope: !3357)
!3360 = !DILocation(line: 301, column: 9, scope: !3357)
!3361 = !DILocation(line: 298, column: 32, scope: !3352)
!3362 = !DILocation(line: 298, column: 7, scope: !3352)
!3363 = distinct !{!3363, !3355, !3364, !743}
!3364 = !DILocation(line: 301, column: 9, scope: !3348)
!3365 = !DILocation(line: 302, column: 7, scope: !3349)
!3366 = !DILocation(line: 304, column: 9, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 304, column: 9)
!3368 = !DILocation(line: 304, column: 69, scope: !3367)
!3369 = !DILocation(line: 304, column: 62, scope: !3367)
!3370 = !DILocation(line: 304, column: 60, scope: !3367)
!3371 = !DILocation(line: 304, column: 9, scope: !3302)
!3372 = !DILocation(line: 305, column: 9, scope: !3367)
!3373 = !DILocation(line: 307, column: 9, scope: !3367)
!3374 = !DILocation(line: 308, column: 1, scope: !3302)
!3375 = distinct !DISubprogram(name: "zipFlush", scope: !3, file: !3, line: 1883, type: !1514, scopeLine: 1884, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3376 = !DILocalVariable(name: "file", arg: 1, scope: !3375, file: !3, line: 1883, type: !177)
!3377 = !DILocation(line: 1883, column: 38, scope: !3375)
!3378 = !DILocalVariable(name: "zi", scope: !3375, file: !3, line: 1885, type: !6)
!3379 = !DILocation(line: 1885, column: 21, scope: !3375)
!3380 = !DILocation(line: 1887, column: 9, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 1887, column: 9)
!3382 = !DILocation(line: 1887, column: 14, scope: !3381)
!3383 = !DILocation(line: 1887, column: 9, scope: !3375)
!3384 = !DILocation(line: 1888, column: 9, scope: !3381)
!3385 = !DILocation(line: 1890, column: 27, scope: !3375)
!3386 = !DILocation(line: 1890, column: 8, scope: !3375)
!3387 = !DILocation(line: 1892, column: 12, scope: !3375)
!3388 = !DILocation(line: 1892, column: 5, scope: !3375)
!3389 = !DILocation(line: 1893, column: 1, scope: !3375)
!3390 = distinct !DISubprogram(name: "zipClose", scope: !3, file: !3, line: 1895, type: !3391, scopeLine: 1896, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!28, !177, !69}
!3393 = !DILocalVariable(name: "file", arg: 1, scope: !3390, file: !3, line: 1895, type: !177)
!3394 = !DILocation(line: 1895, column: 38, scope: !3390)
!3395 = !DILocalVariable(name: "global_comment", arg: 2, scope: !3390, file: !3, line: 1895, type: !69)
!3396 = !DILocation(line: 1895, column: 56, scope: !3390)
!3397 = !DILocalVariable(name: "zi", scope: !3390, file: !3, line: 1897, type: !6)
!3398 = !DILocation(line: 1897, column: 21, scope: !3390)
!3399 = !DILocalVariable(name: "err", scope: !3390, file: !3, line: 1898, type: !28)
!3400 = !DILocation(line: 1898, column: 9, scope: !3390)
!3401 = !DILocalVariable(name: "size_centraldir", scope: !3390, file: !3, line: 1899, type: !34)
!3402 = !DILocation(line: 1899, column: 11, scope: !3390)
!3403 = !DILocalVariable(name: "centraldir_pos_inzip", scope: !3390, file: !3, line: 1900, type: !51)
!3404 = !DILocation(line: 1900, column: 14, scope: !3390)
!3405 = !DILocalVariable(name: "pos", scope: !3390, file: !3, line: 1901, type: !51)
!3406 = !DILocation(line: 1901, column: 14, scope: !3390)
!3407 = !DILocation(line: 1903, column: 9, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 1903, column: 9)
!3409 = !DILocation(line: 1903, column: 14, scope: !3408)
!3410 = !DILocation(line: 1903, column: 9, scope: !3390)
!3411 = !DILocation(line: 1904, column: 9, scope: !3408)
!3412 = !DILocation(line: 1906, column: 27, scope: !3390)
!3413 = !DILocation(line: 1906, column: 8, scope: !3390)
!3414 = !DILocation(line: 1908, column: 9, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 1908, column: 9)
!3416 = !DILocation(line: 1908, column: 13, scope: !3415)
!3417 = !DILocation(line: 1908, column: 34, scope: !3415)
!3418 = !DILocation(line: 1908, column: 9, scope: !3390)
!3419 = !DILocation(line: 1910, column: 34, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 1909, column: 5)
!3421 = !DILocation(line: 1910, column: 15, scope: !3420)
!3422 = !DILocation(line: 1910, column: 13, scope: !3420)
!3423 = !DILocation(line: 1911, column: 5, scope: !3420)
!3424 = !DILocation(line: 1914, column: 9, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 1914, column: 9)
!3426 = !DILocation(line: 1914, column: 23, scope: !3425)
!3427 = !DILocation(line: 1914, column: 9, scope: !3390)
!3428 = !DILocation(line: 1915, column: 26, scope: !3425)
!3429 = !DILocation(line: 1915, column: 30, scope: !3425)
!3430 = !DILocation(line: 1915, column: 24, scope: !3425)
!3431 = !DILocation(line: 1915, column: 9, scope: !3425)
!3432 = !DILocation(line: 1918, column: 28, scope: !3390)
!3433 = !DILocation(line: 1918, column: 26, scope: !3390)
!3434 = !DILocation(line: 1920, column: 9, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 1920, column: 9)
!3436 = !DILocation(line: 1920, column: 12, scope: !3435)
!3437 = !DILocation(line: 1920, column: 9, scope: !3390)
!3438 = !DILocalVariable(name: "ldi", scope: !3439, file: !3, line: 1922, type: !88)
!3439 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 1921, column: 5)
!3440 = !DILocation(line: 1922, column: 40, scope: !3439)
!3441 = !DILocation(line: 1922, column: 46, scope: !3439)
!3442 = !DILocation(line: 1922, column: 50, scope: !3439)
!3443 = !DILocation(line: 1922, column: 62, scope: !3439)
!3444 = !DILocation(line: 1923, column: 9, scope: !3439)
!3445 = !DILocation(line: 1923, column: 16, scope: !3439)
!3446 = !DILocation(line: 1923, column: 19, scope: !3439)
!3447 = !DILocation(line: 1925, column: 18, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 1925, column: 17)
!3449 = distinct !DILexicalBlock(scope: !3439, file: !3, line: 1924, column: 9)
!3450 = !DILocation(line: 1925, column: 21, scope: !3448)
!3451 = !DILocation(line: 1925, column: 31, scope: !3448)
!3452 = !DILocation(line: 1925, column: 35, scope: !3448)
!3453 = !DILocation(line: 1925, column: 40, scope: !3448)
!3454 = !DILocation(line: 1925, column: 60, scope: !3448)
!3455 = !DILocation(line: 1925, column: 17, scope: !3449)
!3456 = !DILocation(line: 1927, column: 21, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 1927, column: 21)
!3458 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 1926, column: 13)
!3459 = !DILocation(line: 1927, column: 102, scope: !3457)
!3460 = !DILocation(line: 1927, column: 107, scope: !3457)
!3461 = !DILocation(line: 1927, column: 99, scope: !3457)
!3462 = !DILocation(line: 1927, column: 21, scope: !3458)
!3463 = !DILocation(line: 1928, column: 25, scope: !3457)
!3464 = !DILocation(line: 1928, column: 21, scope: !3457)
!3465 = !DILocation(line: 1929, column: 13, scope: !3458)
!3466 = !DILocation(line: 1931, column: 32, scope: !3449)
!3467 = !DILocation(line: 1931, column: 37, scope: !3449)
!3468 = !DILocation(line: 1931, column: 29, scope: !3449)
!3469 = !DILocation(line: 1932, column: 19, scope: !3449)
!3470 = !DILocation(line: 1932, column: 24, scope: !3449)
!3471 = !DILocation(line: 1932, column: 17, scope: !3449)
!3472 = distinct !{!3472, !3444, !3473, !743}
!3473 = !DILocation(line: 1933, column: 9, scope: !3439)
!3474 = !DILocation(line: 1934, column: 5, scope: !3439)
!3475 = !DILocation(line: 1935, column: 23, scope: !3390)
!3476 = !DILocation(line: 1935, column: 27, scope: !3390)
!3477 = !DILocation(line: 1935, column: 5, scope: !3390)
!3478 = !DILocation(line: 1937, column: 11, scope: !3390)
!3479 = !DILocation(line: 1937, column: 34, scope: !3390)
!3480 = !DILocation(line: 1937, column: 38, scope: !3390)
!3481 = !DILocation(line: 1937, column: 32, scope: !3390)
!3482 = !DILocation(line: 1937, column: 9, scope: !3390)
!3483 = !DILocation(line: 1938, column: 8, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 1938, column: 8)
!3485 = !DILocation(line: 1938, column: 12, scope: !3484)
!3486 = !DILocation(line: 1938, column: 26, scope: !3484)
!3487 = !DILocation(line: 1938, column: 29, scope: !3484)
!3488 = !DILocation(line: 1938, column: 33, scope: !3484)
!3489 = !DILocation(line: 1938, column: 46, scope: !3484)
!3490 = !DILocation(line: 1938, column: 8, scope: !3390)
!3491 = !DILocalVariable(name: "Zip64EOCDpos", scope: !3492, file: !3, line: 1940, type: !51)
!3492 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 1939, column: 5)
!3493 = !DILocation(line: 1940, column: 16, scope: !3492)
!3494 = !DILocation(line: 1940, column: 31, scope: !3492)
!3495 = !DILocation(line: 1941, column: 46, scope: !3492)
!3496 = !DILocation(line: 1941, column: 50, scope: !3492)
!3497 = !DILocation(line: 1941, column: 67, scope: !3492)
!3498 = !DILocation(line: 1941, column: 7, scope: !3492)
!3499 = !DILocation(line: 1943, column: 47, scope: !3492)
!3500 = !DILocation(line: 1943, column: 51, scope: !3492)
!3501 = !DILocation(line: 1943, column: 7, scope: !3492)
!3502 = !DILocation(line: 1944, column: 5, scope: !3492)
!3503 = !DILocation(line: 1946, column: 9, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 1946, column: 9)
!3505 = !DILocation(line: 1946, column: 12, scope: !3504)
!3506 = !DILocation(line: 1946, column: 9, scope: !3390)
!3507 = !DILocation(line: 1947, column: 47, scope: !3504)
!3508 = !DILocation(line: 1947, column: 51, scope: !3504)
!3509 = !DILocation(line: 1947, column: 68, scope: !3504)
!3510 = !DILocation(line: 1947, column: 13, scope: !3504)
!3511 = !DILocation(line: 1947, column: 11, scope: !3504)
!3512 = !DILocation(line: 1947, column: 7, scope: !3504)
!3513 = !DILocation(line: 1949, column: 8, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 1949, column: 8)
!3515 = !DILocation(line: 1949, column: 12, scope: !3514)
!3516 = !DILocation(line: 1949, column: 8, scope: !3390)
!3517 = !DILocation(line: 1950, column: 33, scope: !3514)
!3518 = !DILocation(line: 1950, column: 37, scope: !3514)
!3519 = !DILocation(line: 1950, column: 13, scope: !3514)
!3520 = !DILocation(line: 1950, column: 11, scope: !3514)
!3521 = !DILocation(line: 1950, column: 7, scope: !3514)
!3522 = !DILocation(line: 1952, column: 9, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 1952, column: 9)
!3524 = !DILocation(line: 1952, column: 49, scope: !3523)
!3525 = !DILocation(line: 1952, column: 9, scope: !3390)
!3526 = !DILocation(line: 1953, column: 13, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 1953, column: 13)
!3528 = !DILocation(line: 1953, column: 17, scope: !3527)
!3529 = !DILocation(line: 1953, column: 13, scope: !3523)
!3530 = !DILocation(line: 1954, column: 17, scope: !3527)
!3531 = !DILocation(line: 1954, column: 13, scope: !3527)
!3532 = !DILocation(line: 1953, column: 20, scope: !3527)
!3533 = !DILocation(line: 1957, column: 5, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 1957, column: 5)
!3535 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 1957, column: 5)
!3536 = !DILocation(line: 1957, column: 5, scope: !3535)
!3537 = !DILocation(line: 1959, column: 5, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 1959, column: 5)
!3539 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 1959, column: 5)
!3540 = !DILocation(line: 1959, column: 5, scope: !3539)
!3541 = !DILocation(line: 1961, column: 12, scope: !3390)
!3542 = !DILocation(line: 1961, column: 5, scope: !3390)
!3543 = !DILocation(line: 1962, column: 1, scope: !3390)
!3544 = distinct !DISubprogram(name: "free_linkedlist", scope: !3, file: !3, line: 218, type: !326, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3545 = !DILocalVariable(name: "ll", arg: 1, scope: !3544, file: !3, line: 218, type: !328)
!3546 = !DILocation(line: 218, column: 45, scope: !3544)
!3547 = !DILocation(line: 220, column: 20, scope: !3544)
!3548 = !DILocation(line: 220, column: 24, scope: !3544)
!3549 = !DILocation(line: 220, column: 5, scope: !3544)
!3550 = !DILocation(line: 221, column: 23, scope: !3544)
!3551 = !DILocation(line: 221, column: 27, scope: !3544)
!3552 = !DILocation(line: 221, column: 38, scope: !3544)
!3553 = !DILocation(line: 221, column: 5, scope: !3544)
!3554 = !DILocation(line: 221, column: 9, scope: !3544)
!3555 = !DILocation(line: 221, column: 21, scope: !3544)
!3556 = !DILocation(line: 222, column: 1, scope: !3544)
!3557 = distinct !DISubprogram(name: "Write_Zip64EndOfCentralDirectoryRecord", scope: !3, file: !3, line: 1777, type: !3558, scopeLine: 1778, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!28, !6, !34, !51}
!3560 = !DILocalVariable(name: "zi", arg: 1, scope: !3557, file: !3, line: 1777, type: !6)
!3561 = !DILocation(line: 1777, column: 66, scope: !3557)
!3562 = !DILocalVariable(name: "size_centraldir", arg: 2, scope: !3557, file: !3, line: 1777, type: !34)
!3563 = !DILocation(line: 1777, column: 76, scope: !3557)
!3564 = !DILocalVariable(name: "centraldir_pos_inzip", arg: 3, scope: !3557, file: !3, line: 1777, type: !51)
!3565 = !DILocation(line: 1777, column: 102, scope: !3557)
!3566 = !DILocalVariable(name: "err", scope: !3557, file: !3, line: 1779, type: !28)
!3567 = !DILocation(line: 1779, column: 7, scope: !3557)
!3568 = !DILocalVariable(name: "Zip64DataSize", scope: !3557, file: !3, line: 1781, type: !34)
!3569 = !DILocation(line: 1781, column: 9, scope: !3557)
!3570 = !DILocation(line: 1783, column: 30, scope: !3557)
!3571 = !DILocation(line: 1783, column: 34, scope: !3557)
!3572 = !DILocation(line: 1783, column: 45, scope: !3557)
!3573 = !DILocation(line: 1783, column: 49, scope: !3557)
!3574 = !DILocation(line: 1783, column: 9, scope: !3557)
!3575 = !DILocation(line: 1783, column: 7, scope: !3557)
!3576 = !DILocation(line: 1785, column: 7, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 1785, column: 7)
!3578 = !DILocation(line: 1785, column: 10, scope: !3577)
!3579 = !DILocation(line: 1785, column: 7, scope: !3557)
!3580 = !DILocation(line: 1786, column: 32, scope: !3577)
!3581 = !DILocation(line: 1786, column: 36, scope: !3577)
!3582 = !DILocation(line: 1786, column: 47, scope: !3577)
!3583 = !DILocation(line: 1786, column: 51, scope: !3577)
!3584 = !DILocation(line: 1786, column: 72, scope: !3577)
!3585 = !DILocation(line: 1786, column: 11, scope: !3577)
!3586 = !DILocation(line: 1786, column: 9, scope: !3577)
!3587 = !DILocation(line: 1786, column: 5, scope: !3577)
!3588 = !DILocation(line: 1788, column: 7, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 1788, column: 7)
!3590 = !DILocation(line: 1788, column: 10, scope: !3589)
!3591 = !DILocation(line: 1788, column: 7, scope: !3557)
!3592 = !DILocation(line: 1789, column: 32, scope: !3589)
!3593 = !DILocation(line: 1789, column: 36, scope: !3589)
!3594 = !DILocation(line: 1789, column: 47, scope: !3589)
!3595 = !DILocation(line: 1789, column: 51, scope: !3589)
!3596 = !DILocation(line: 1789, column: 11, scope: !3589)
!3597 = !DILocation(line: 1789, column: 9, scope: !3589)
!3598 = !DILocation(line: 1789, column: 5, scope: !3589)
!3599 = !DILocation(line: 1791, column: 7, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 1791, column: 7)
!3601 = !DILocation(line: 1791, column: 10, scope: !3600)
!3602 = !DILocation(line: 1791, column: 7, scope: !3557)
!3603 = !DILocation(line: 1792, column: 32, scope: !3600)
!3604 = !DILocation(line: 1792, column: 36, scope: !3600)
!3605 = !DILocation(line: 1792, column: 47, scope: !3600)
!3606 = !DILocation(line: 1792, column: 51, scope: !3600)
!3607 = !DILocation(line: 1792, column: 11, scope: !3600)
!3608 = !DILocation(line: 1792, column: 9, scope: !3600)
!3609 = !DILocation(line: 1792, column: 5, scope: !3600)
!3610 = !DILocation(line: 1794, column: 7, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 1794, column: 7)
!3612 = !DILocation(line: 1794, column: 10, scope: !3611)
!3613 = !DILocation(line: 1794, column: 7, scope: !3557)
!3614 = !DILocation(line: 1795, column: 32, scope: !3611)
!3615 = !DILocation(line: 1795, column: 36, scope: !3611)
!3616 = !DILocation(line: 1795, column: 47, scope: !3611)
!3617 = !DILocation(line: 1795, column: 51, scope: !3611)
!3618 = !DILocation(line: 1795, column: 11, scope: !3611)
!3619 = !DILocation(line: 1795, column: 9, scope: !3611)
!3620 = !DILocation(line: 1795, column: 5, scope: !3611)
!3621 = !DILocation(line: 1797, column: 7, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 1797, column: 7)
!3623 = !DILocation(line: 1797, column: 10, scope: !3622)
!3624 = !DILocation(line: 1797, column: 7, scope: !3557)
!3625 = !DILocation(line: 1798, column: 32, scope: !3622)
!3626 = !DILocation(line: 1798, column: 36, scope: !3622)
!3627 = !DILocation(line: 1798, column: 47, scope: !3622)
!3628 = !DILocation(line: 1798, column: 51, scope: !3622)
!3629 = !DILocation(line: 1798, column: 11, scope: !3622)
!3630 = !DILocation(line: 1798, column: 9, scope: !3622)
!3631 = !DILocation(line: 1798, column: 5, scope: !3622)
!3632 = !DILocation(line: 1800, column: 7, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 1800, column: 7)
!3634 = !DILocation(line: 1800, column: 10, scope: !3633)
!3635 = !DILocation(line: 1800, column: 7, scope: !3557)
!3636 = !DILocation(line: 1801, column: 32, scope: !3633)
!3637 = !DILocation(line: 1801, column: 36, scope: !3633)
!3638 = !DILocation(line: 1801, column: 48, scope: !3633)
!3639 = !DILocation(line: 1801, column: 52, scope: !3633)
!3640 = !DILocation(line: 1801, column: 64, scope: !3633)
!3641 = !DILocation(line: 1801, column: 68, scope: !3633)
!3642 = !DILocation(line: 1801, column: 11, scope: !3633)
!3643 = !DILocation(line: 1801, column: 9, scope: !3633)
!3644 = !DILocation(line: 1801, column: 5, scope: !3633)
!3645 = !DILocation(line: 1803, column: 7, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 1803, column: 7)
!3647 = !DILocation(line: 1803, column: 10, scope: !3646)
!3648 = !DILocation(line: 1803, column: 7, scope: !3557)
!3649 = !DILocation(line: 1804, column: 32, scope: !3646)
!3650 = !DILocation(line: 1804, column: 36, scope: !3646)
!3651 = !DILocation(line: 1804, column: 48, scope: !3646)
!3652 = !DILocation(line: 1804, column: 52, scope: !3646)
!3653 = !DILocation(line: 1804, column: 64, scope: !3646)
!3654 = !DILocation(line: 1804, column: 68, scope: !3646)
!3655 = !DILocation(line: 1804, column: 11, scope: !3646)
!3656 = !DILocation(line: 1804, column: 9, scope: !3646)
!3657 = !DILocation(line: 1804, column: 5, scope: !3646)
!3658 = !DILocation(line: 1806, column: 7, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 1806, column: 7)
!3660 = !DILocation(line: 1806, column: 10, scope: !3659)
!3661 = !DILocation(line: 1806, column: 7, scope: !3557)
!3662 = !DILocation(line: 1807, column: 32, scope: !3659)
!3663 = !DILocation(line: 1807, column: 36, scope: !3659)
!3664 = !DILocation(line: 1807, column: 47, scope: !3659)
!3665 = !DILocation(line: 1807, column: 51, scope: !3659)
!3666 = !DILocation(line: 1807, column: 72, scope: !3659)
!3667 = !DILocation(line: 1807, column: 11, scope: !3659)
!3668 = !DILocation(line: 1807, column: 9, scope: !3659)
!3669 = !DILocation(line: 1807, column: 5, scope: !3659)
!3670 = !DILocation(line: 1809, column: 7, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 1809, column: 7)
!3672 = !DILocation(line: 1809, column: 10, scope: !3671)
!3673 = !DILocation(line: 1809, column: 7, scope: !3557)
!3674 = !DILocalVariable(name: "pos", scope: !3675, file: !3, line: 1811, type: !51)
!3675 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 1810, column: 3)
!3676 = !DILocation(line: 1811, column: 14, scope: !3675)
!3677 = !DILocation(line: 1811, column: 20, scope: !3675)
!3678 = !DILocation(line: 1811, column: 43, scope: !3675)
!3679 = !DILocation(line: 1811, column: 47, scope: !3675)
!3680 = !DILocation(line: 1811, column: 41, scope: !3675)
!3681 = !DILocation(line: 1812, column: 32, scope: !3675)
!3682 = !DILocation(line: 1812, column: 36, scope: !3675)
!3683 = !DILocation(line: 1812, column: 47, scope: !3675)
!3684 = !DILocation(line: 1812, column: 51, scope: !3675)
!3685 = !DILocation(line: 1812, column: 73, scope: !3675)
!3686 = !DILocation(line: 1812, column: 11, scope: !3675)
!3687 = !DILocation(line: 1812, column: 9, scope: !3675)
!3688 = !DILocation(line: 1813, column: 3, scope: !3675)
!3689 = !DILocation(line: 1814, column: 10, scope: !3557)
!3690 = !DILocation(line: 1814, column: 3, scope: !3557)
!3691 = distinct !DISubprogram(name: "Write_Zip64EndOfCentralDirectoryLocator", scope: !3, file: !3, line: 1755, type: !3692, scopeLine: 1756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!28, !6, !51}
!3694 = !DILocalVariable(name: "zi", arg: 1, scope: !3691, file: !3, line: 1755, type: !6)
!3695 = !DILocation(line: 1755, column: 67, scope: !3691)
!3696 = !DILocalVariable(name: "zip64eocd_pos_inzip", arg: 2, scope: !3691, file: !3, line: 1755, type: !51)
!3697 = !DILocation(line: 1755, column: 80, scope: !3691)
!3698 = !DILocalVariable(name: "err", scope: !3691, file: !3, line: 1757, type: !28)
!3699 = !DILocation(line: 1757, column: 7, scope: !3691)
!3700 = !DILocalVariable(name: "pos", scope: !3691, file: !3, line: 1758, type: !51)
!3701 = !DILocation(line: 1758, column: 12, scope: !3691)
!3702 = !DILocation(line: 1758, column: 18, scope: !3691)
!3703 = !DILocation(line: 1758, column: 40, scope: !3691)
!3704 = !DILocation(line: 1758, column: 44, scope: !3691)
!3705 = !DILocation(line: 1758, column: 38, scope: !3691)
!3706 = !DILocation(line: 1760, column: 30, scope: !3691)
!3707 = !DILocation(line: 1760, column: 34, scope: !3691)
!3708 = !DILocation(line: 1760, column: 45, scope: !3691)
!3709 = !DILocation(line: 1760, column: 49, scope: !3691)
!3710 = !DILocation(line: 1760, column: 9, scope: !3691)
!3711 = !DILocation(line: 1760, column: 7, scope: !3691)
!3712 = !DILocation(line: 1763, column: 9, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 1763, column: 9)
!3714 = !DILocation(line: 1763, column: 12, scope: !3713)
!3715 = !DILocation(line: 1763, column: 9, scope: !3691)
!3716 = !DILocation(line: 1764, column: 34, scope: !3713)
!3717 = !DILocation(line: 1764, column: 38, scope: !3713)
!3718 = !DILocation(line: 1764, column: 49, scope: !3713)
!3719 = !DILocation(line: 1764, column: 53, scope: !3713)
!3720 = !DILocation(line: 1764, column: 13, scope: !3713)
!3721 = !DILocation(line: 1764, column: 11, scope: !3713)
!3722 = !DILocation(line: 1764, column: 7, scope: !3713)
!3723 = !DILocation(line: 1767, column: 9, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 1767, column: 9)
!3725 = !DILocation(line: 1767, column: 12, scope: !3724)
!3726 = !DILocation(line: 1767, column: 9, scope: !3691)
!3727 = !DILocation(line: 1768, column: 34, scope: !3724)
!3728 = !DILocation(line: 1768, column: 38, scope: !3724)
!3729 = !DILocation(line: 1768, column: 49, scope: !3724)
!3730 = !DILocation(line: 1768, column: 53, scope: !3724)
!3731 = !DILocation(line: 1768, column: 65, scope: !3724)
!3732 = !DILocation(line: 1768, column: 13, scope: !3724)
!3733 = !DILocation(line: 1768, column: 11, scope: !3724)
!3734 = !DILocation(line: 1768, column: 7, scope: !3724)
!3735 = !DILocation(line: 1771, column: 9, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 1771, column: 9)
!3737 = !DILocation(line: 1771, column: 12, scope: !3736)
!3738 = !DILocation(line: 1771, column: 9, scope: !3691)
!3739 = !DILocation(line: 1772, column: 34, scope: !3736)
!3740 = !DILocation(line: 1772, column: 38, scope: !3736)
!3741 = !DILocation(line: 1772, column: 49, scope: !3736)
!3742 = !DILocation(line: 1772, column: 53, scope: !3736)
!3743 = !DILocation(line: 1772, column: 13, scope: !3736)
!3744 = !DILocation(line: 1772, column: 11, scope: !3736)
!3745 = !DILocation(line: 1772, column: 7, scope: !3736)
!3746 = !DILocation(line: 1774, column: 12, scope: !3691)
!3747 = !DILocation(line: 1774, column: 5, scope: !3691)
!3748 = distinct !DISubprogram(name: "Write_EndOfCentralDirectoryRecord", scope: !3, file: !3, line: 1817, type: !3558, scopeLine: 1818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3749 = !DILocalVariable(name: "zi", arg: 1, scope: !3748, file: !3, line: 1817, type: !6)
!3750 = !DILocation(line: 1817, column: 61, scope: !3748)
!3751 = !DILocalVariable(name: "size_centraldir", arg: 2, scope: !3748, file: !3, line: 1817, type: !34)
!3752 = !DILocation(line: 1817, column: 71, scope: !3748)
!3753 = !DILocalVariable(name: "centraldir_pos_inzip", arg: 3, scope: !3748, file: !3, line: 1817, type: !51)
!3754 = !DILocation(line: 1817, column: 97, scope: !3748)
!3755 = !DILocalVariable(name: "err", scope: !3748, file: !3, line: 1819, type: !28)
!3756 = !DILocation(line: 1819, column: 7, scope: !3748)
!3757 = !DILocation(line: 1822, column: 30, scope: !3748)
!3758 = !DILocation(line: 1822, column: 34, scope: !3748)
!3759 = !DILocation(line: 1822, column: 45, scope: !3748)
!3760 = !DILocation(line: 1822, column: 49, scope: !3748)
!3761 = !DILocation(line: 1822, column: 9, scope: !3748)
!3762 = !DILocation(line: 1822, column: 7, scope: !3748)
!3763 = !DILocation(line: 1824, column: 7, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 1824, column: 7)
!3765 = !DILocation(line: 1824, column: 10, scope: !3764)
!3766 = !DILocation(line: 1824, column: 7, scope: !3748)
!3767 = !DILocation(line: 1825, column: 32, scope: !3764)
!3768 = !DILocation(line: 1825, column: 36, scope: !3764)
!3769 = !DILocation(line: 1825, column: 47, scope: !3764)
!3770 = !DILocation(line: 1825, column: 51, scope: !3764)
!3771 = !DILocation(line: 1825, column: 11, scope: !3764)
!3772 = !DILocation(line: 1825, column: 9, scope: !3764)
!3773 = !DILocation(line: 1825, column: 5, scope: !3764)
!3774 = !DILocation(line: 1827, column: 7, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 1827, column: 7)
!3776 = !DILocation(line: 1827, column: 10, scope: !3775)
!3777 = !DILocation(line: 1827, column: 7, scope: !3748)
!3778 = !DILocation(line: 1828, column: 32, scope: !3775)
!3779 = !DILocation(line: 1828, column: 36, scope: !3775)
!3780 = !DILocation(line: 1828, column: 47, scope: !3775)
!3781 = !DILocation(line: 1828, column: 51, scope: !3775)
!3782 = !DILocation(line: 1828, column: 11, scope: !3775)
!3783 = !DILocation(line: 1828, column: 9, scope: !3775)
!3784 = !DILocation(line: 1828, column: 5, scope: !3775)
!3785 = !DILocation(line: 1830, column: 7, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 1830, column: 7)
!3787 = !DILocation(line: 1830, column: 10, scope: !3786)
!3788 = !DILocation(line: 1830, column: 7, scope: !3748)
!3789 = !DILocation(line: 1833, column: 10, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3791, file: !3, line: 1833, column: 10)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !3, line: 1832, column: 5)
!3792 = distinct !DILexicalBlock(scope: !3786, file: !3, line: 1831, column: 3)
!3793 = !DILocation(line: 1833, column: 14, scope: !3790)
!3794 = !DILocation(line: 1833, column: 27, scope: !3790)
!3795 = !DILocation(line: 1833, column: 10, scope: !3791)
!3796 = !DILocation(line: 1834, column: 36, scope: !3790)
!3797 = !DILocation(line: 1834, column: 40, scope: !3790)
!3798 = !DILocation(line: 1834, column: 51, scope: !3790)
!3799 = !DILocation(line: 1834, column: 55, scope: !3790)
!3800 = !DILocation(line: 1834, column: 15, scope: !3790)
!3801 = !DILocation(line: 1834, column: 13, scope: !3790)
!3802 = !DILocation(line: 1834, column: 9, scope: !3790)
!3803 = !DILocation(line: 1836, column: 36, scope: !3790)
!3804 = !DILocation(line: 1836, column: 40, scope: !3790)
!3805 = !DILocation(line: 1836, column: 51, scope: !3790)
!3806 = !DILocation(line: 1836, column: 55, scope: !3790)
!3807 = !DILocation(line: 1836, column: 73, scope: !3790)
!3808 = !DILocation(line: 1836, column: 77, scope: !3790)
!3809 = !DILocation(line: 1836, column: 15, scope: !3790)
!3810 = !DILocation(line: 1836, column: 13, scope: !3790)
!3811 = !DILocation(line: 1838, column: 3, scope: !3792)
!3812 = !DILocation(line: 1840, column: 7, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 1840, column: 7)
!3814 = !DILocation(line: 1840, column: 10, scope: !3813)
!3815 = !DILocation(line: 1840, column: 7, scope: !3748)
!3816 = !DILocation(line: 1842, column: 8, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !3, line: 1842, column: 8)
!3818 = distinct !DILexicalBlock(scope: !3813, file: !3, line: 1841, column: 3)
!3819 = !DILocation(line: 1842, column: 12, scope: !3817)
!3820 = !DILocation(line: 1842, column: 25, scope: !3817)
!3821 = !DILocation(line: 1842, column: 8, scope: !3818)
!3822 = !DILocation(line: 1843, column: 34, scope: !3817)
!3823 = !DILocation(line: 1843, column: 38, scope: !3817)
!3824 = !DILocation(line: 1843, column: 49, scope: !3817)
!3825 = !DILocation(line: 1843, column: 53, scope: !3817)
!3826 = !DILocation(line: 1843, column: 13, scope: !3817)
!3827 = !DILocation(line: 1843, column: 11, scope: !3817)
!3828 = !DILocation(line: 1843, column: 7, scope: !3817)
!3829 = !DILocation(line: 1845, column: 34, scope: !3817)
!3830 = !DILocation(line: 1845, column: 38, scope: !3817)
!3831 = !DILocation(line: 1845, column: 49, scope: !3817)
!3832 = !DILocation(line: 1845, column: 53, scope: !3817)
!3833 = !DILocation(line: 1845, column: 71, scope: !3817)
!3834 = !DILocation(line: 1845, column: 75, scope: !3817)
!3835 = !DILocation(line: 1845, column: 13, scope: !3817)
!3836 = !DILocation(line: 1845, column: 11, scope: !3817)
!3837 = !DILocation(line: 1846, column: 3, scope: !3818)
!3838 = !DILocation(line: 1848, column: 7, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 1848, column: 7)
!3840 = !DILocation(line: 1848, column: 10, scope: !3839)
!3841 = !DILocation(line: 1848, column: 7, scope: !3748)
!3842 = !DILocation(line: 1849, column: 32, scope: !3839)
!3843 = !DILocation(line: 1849, column: 36, scope: !3839)
!3844 = !DILocation(line: 1849, column: 47, scope: !3839)
!3845 = !DILocation(line: 1849, column: 51, scope: !3839)
!3846 = !DILocation(line: 1849, column: 69, scope: !3839)
!3847 = !DILocation(line: 1849, column: 11, scope: !3839)
!3848 = !DILocation(line: 1849, column: 9, scope: !3839)
!3849 = !DILocation(line: 1849, column: 5, scope: !3839)
!3850 = !DILocation(line: 1851, column: 7, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 1851, column: 7)
!3852 = !DILocation(line: 1851, column: 10, scope: !3851)
!3853 = !DILocation(line: 1851, column: 7, scope: !3748)
!3854 = !DILocalVariable(name: "pos", scope: !3855, file: !3, line: 1853, type: !51)
!3855 = distinct !DILexicalBlock(scope: !3851, file: !3, line: 1852, column: 3)
!3856 = !DILocation(line: 1853, column: 14, scope: !3855)
!3857 = !DILocation(line: 1853, column: 20, scope: !3855)
!3858 = !DILocation(line: 1853, column: 43, scope: !3855)
!3859 = !DILocation(line: 1853, column: 47, scope: !3855)
!3860 = !DILocation(line: 1853, column: 41, scope: !3855)
!3861 = !DILocation(line: 1854, column: 8, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 1854, column: 8)
!3863 = !DILocation(line: 1854, column: 12, scope: !3862)
!3864 = !DILocation(line: 1854, column: 8, scope: !3855)
!3865 = !DILocation(line: 1856, column: 34, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3862, file: !3, line: 1855, column: 5)
!3867 = !DILocation(line: 1856, column: 38, scope: !3866)
!3868 = !DILocation(line: 1856, column: 49, scope: !3866)
!3869 = !DILocation(line: 1856, column: 53, scope: !3866)
!3870 = !DILocation(line: 1856, column: 13, scope: !3866)
!3871 = !DILocation(line: 1856, column: 11, scope: !3866)
!3872 = !DILocation(line: 1857, column: 5, scope: !3866)
!3873 = !DILocation(line: 1859, column: 34, scope: !3862)
!3874 = !DILocation(line: 1859, column: 38, scope: !3862)
!3875 = !DILocation(line: 1859, column: 49, scope: !3862)
!3876 = !DILocation(line: 1859, column: 53, scope: !3862)
!3877 = !DILocation(line: 1859, column: 73, scope: !3862)
!3878 = !DILocation(line: 1859, column: 96, scope: !3862)
!3879 = !DILocation(line: 1859, column: 100, scope: !3862)
!3880 = !DILocation(line: 1859, column: 94, scope: !3862)
!3881 = !DILocation(line: 1859, column: 13, scope: !3862)
!3882 = !DILocation(line: 1859, column: 11, scope: !3862)
!3883 = !DILocation(line: 1860, column: 3, scope: !3855)
!3884 = !DILocation(line: 1862, column: 11, scope: !3748)
!3885 = !DILocation(line: 1862, column: 4, scope: !3748)
!3886 = distinct !DISubprogram(name: "Write_GlobalComment", scope: !3, file: !3, line: 1865, type: !3887, scopeLine: 1866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!28, !6, !69}
!3889 = !DILocalVariable(name: "zi", arg: 1, scope: !3886, file: !3, line: 1865, type: !6)
!3890 = !DILocation(line: 1865, column: 47, scope: !3886)
!3891 = !DILocalVariable(name: "global_comment", arg: 2, scope: !3886, file: !3, line: 1865, type: !69)
!3892 = !DILocation(line: 1865, column: 63, scope: !3886)
!3893 = !DILocalVariable(name: "err", scope: !3886, file: !3, line: 1867, type: !28)
!3894 = !DILocation(line: 1867, column: 7, scope: !3886)
!3895 = !DILocalVariable(name: "size_global_comment", scope: !3886, file: !3, line: 1868, type: !118)
!3896 = !DILocation(line: 1868, column: 8, scope: !3886)
!3897 = !DILocation(line: 1870, column: 6, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3886, file: !3, line: 1870, column: 6)
!3899 = !DILocation(line: 1870, column: 21, scope: !3898)
!3900 = !DILocation(line: 1870, column: 6, scope: !3886)
!3901 = !DILocation(line: 1871, column: 40, scope: !3898)
!3902 = !DILocation(line: 1871, column: 33, scope: !3898)
!3903 = !DILocation(line: 1871, column: 27, scope: !3898)
!3904 = !DILocation(line: 1871, column: 25, scope: !3898)
!3905 = !DILocation(line: 1871, column: 5, scope: !3898)
!3906 = !DILocation(line: 1873, column: 30, scope: !3886)
!3907 = !DILocation(line: 1873, column: 34, scope: !3886)
!3908 = !DILocation(line: 1873, column: 45, scope: !3886)
!3909 = !DILocation(line: 1873, column: 49, scope: !3886)
!3910 = !DILocation(line: 1873, column: 67, scope: !3886)
!3911 = !DILocation(line: 1873, column: 60, scope: !3886)
!3912 = !DILocation(line: 1873, column: 9, scope: !3886)
!3913 = !DILocation(line: 1873, column: 7, scope: !3886)
!3914 = !DILocation(line: 1875, column: 7, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3886, file: !3, line: 1875, column: 7)
!3916 = !DILocation(line: 1875, column: 11, scope: !3915)
!3917 = !DILocation(line: 1875, column: 21, scope: !3915)
!3918 = !DILocation(line: 1875, column: 24, scope: !3915)
!3919 = !DILocation(line: 1875, column: 44, scope: !3915)
!3920 = !DILocation(line: 1875, column: 7, scope: !3886)
!3921 = !DILocation(line: 1877, column: 9, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3923, file: !3, line: 1877, column: 9)
!3923 = distinct !DILexicalBlock(scope: !3915, file: !3, line: 1876, column: 3)
!3924 = !DILocation(line: 1877, column: 89, scope: !3922)
!3925 = !DILocation(line: 1877, column: 86, scope: !3922)
!3926 = !DILocation(line: 1877, column: 9, scope: !3923)
!3927 = !DILocation(line: 1878, column: 11, scope: !3922)
!3928 = !DILocation(line: 1878, column: 7, scope: !3922)
!3929 = !DILocation(line: 1879, column: 3, scope: !3923)
!3930 = !DILocation(line: 1880, column: 10, scope: !3886)
!3931 = !DILocation(line: 1880, column: 3, scope: !3886)
!3932 = distinct !DISubprogram(name: "zipRemoveExtraInfoBlock", scope: !3, file: !3, line: 1964, type: !3933, scopeLine: 1965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!28, !125, !3935, !181}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!3936 = !DILocalVariable(name: "pData", arg: 1, scope: !3932, file: !3, line: 1964, type: !125)
!3937 = !DILocation(line: 1964, column: 51, scope: !3932)
!3938 = !DILocalVariable(name: "dataLen", arg: 2, scope: !3932, file: !3, line: 1964, type: !3935)
!3939 = !DILocation(line: 1964, column: 63, scope: !3932)
!3940 = !DILocalVariable(name: "sHeader", arg: 3, scope: !3932, file: !3, line: 1964, type: !181)
!3941 = !DILocation(line: 1964, column: 78, scope: !3932)
!3942 = !DILocalVariable(name: "p", scope: !3932, file: !3, line: 1966, type: !125)
!3943 = !DILocation(line: 1966, column: 9, scope: !3932)
!3944 = !DILocation(line: 1966, column: 13, scope: !3932)
!3945 = !DILocalVariable(name: "size", scope: !3932, file: !3, line: 1967, type: !28)
!3946 = !DILocation(line: 1967, column: 7, scope: !3932)
!3947 = !DILocalVariable(name: "pNewHeader", scope: !3932, file: !3, line: 1968, type: !125)
!3948 = !DILocation(line: 1968, column: 9, scope: !3932)
!3949 = !DILocalVariable(name: "pTmp", scope: !3932, file: !3, line: 1969, type: !125)
!3950 = !DILocation(line: 1969, column: 9, scope: !3932)
!3951 = !DILocalVariable(name: "header", scope: !3932, file: !3, line: 1970, type: !181)
!3952 = !DILocation(line: 1970, column: 9, scope: !3932)
!3953 = !DILocalVariable(name: "dataSize", scope: !3932, file: !3, line: 1971, type: !181)
!3954 = !DILocation(line: 1971, column: 9, scope: !3932)
!3955 = !DILocalVariable(name: "retVal", scope: !3932, file: !3, line: 1973, type: !28)
!3956 = !DILocation(line: 1973, column: 7, scope: !3932)
!3957 = !DILocation(line: 1975, column: 6, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 1975, column: 6)
!3959 = !DILocation(line: 1975, column: 12, scope: !3958)
!3960 = !DILocation(line: 1975, column: 20, scope: !3958)
!3961 = !DILocation(line: 1975, column: 24, scope: !3958)
!3962 = !DILocation(line: 1975, column: 23, scope: !3958)
!3963 = !DILocation(line: 1975, column: 32, scope: !3958)
!3964 = !DILocation(line: 1975, column: 6, scope: !3932)
!3965 = !DILocation(line: 1976, column: 5, scope: !3958)
!3966 = !DILocation(line: 1978, column: 23, scope: !3932)
!3967 = !DILocation(line: 1978, column: 14, scope: !3932)
!3968 = !DILocation(line: 1979, column: 10, scope: !3932)
!3969 = !DILocation(line: 1979, column: 8, scope: !3932)
!3970 = !DILocation(line: 1981, column: 3, scope: !3932)
!3971 = !DILocation(line: 1981, column: 9, scope: !3932)
!3972 = !DILocation(line: 1981, column: 14, scope: !3932)
!3973 = !DILocation(line: 1981, column: 23, scope: !3932)
!3974 = !DILocation(line: 1981, column: 22, scope: !3932)
!3975 = !DILocation(line: 1981, column: 20, scope: !3932)
!3976 = !DILocation(line: 1981, column: 11, scope: !3932)
!3977 = !DILocation(line: 1983, column: 23, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 1982, column: 3)
!3979 = !DILocation(line: 1983, column: 14, scope: !3978)
!3980 = !DILocation(line: 1983, column: 12, scope: !3978)
!3981 = !DILocation(line: 1984, column: 27, scope: !3978)
!3982 = !DILocation(line: 1984, column: 29, scope: !3978)
!3983 = !DILocation(line: 1984, column: 16, scope: !3978)
!3984 = !DILocation(line: 1984, column: 14, scope: !3978)
!3985 = !DILocation(line: 1986, column: 9, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3978, file: !3, line: 1986, column: 9)
!3987 = !DILocation(line: 1986, column: 19, scope: !3986)
!3988 = !DILocation(line: 1986, column: 16, scope: !3986)
!3989 = !DILocation(line: 1986, column: 9, scope: !3978)
!3990 = !DILocation(line: 1988, column: 12, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 1987, column: 5)
!3992 = !DILocation(line: 1988, column: 21, scope: !3991)
!3993 = !DILocation(line: 1988, column: 9, scope: !3991)
!3994 = !DILocation(line: 1989, column: 5, scope: !3991)
!3995 = !DILocation(line: 1993, column: 14, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 1991, column: 5)
!3997 = !DILocation(line: 1993, column: 20, scope: !3996)
!3998 = !DILocation(line: 1993, column: 23, scope: !3996)
!3999 = !DILocation(line: 1993, column: 32, scope: !3996)
!4000 = !DILocation(line: 1993, column: 7, scope: !3996)
!4001 = !DILocation(line: 1994, column: 12, scope: !3996)
!4002 = !DILocation(line: 1994, column: 21, scope: !3996)
!4003 = !DILocation(line: 1994, column: 9, scope: !3996)
!4004 = !DILocation(line: 1995, column: 15, scope: !3996)
!4005 = !DILocation(line: 1995, column: 24, scope: !3996)
!4006 = !DILocation(line: 1995, column: 12, scope: !3996)
!4007 = distinct !{!4007, !3970, !4008, !743}
!4008 = !DILocation(line: 1998, column: 3, scope: !3932)
!4009 = !DILocation(line: 2000, column: 6, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 2000, column: 6)
!4011 = !DILocation(line: 2000, column: 14, scope: !4010)
!4012 = !DILocation(line: 2000, column: 13, scope: !4010)
!4013 = !DILocation(line: 2000, column: 11, scope: !4010)
!4014 = !DILocation(line: 2000, column: 6, scope: !3932)
!4015 = !DILocation(line: 2003, column: 12, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 2001, column: 3)
!4017 = !DILocation(line: 2003, column: 22, scope: !4016)
!4018 = !DILocation(line: 2003, column: 21, scope: !4016)
!4019 = !DILocation(line: 2003, column: 5, scope: !4016)
!4020 = !DILocation(line: 2006, column: 8, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 2006, column: 8)
!4022 = !DILocation(line: 2006, column: 13, scope: !4021)
!4023 = !DILocation(line: 2006, column: 8, scope: !4016)
!4024 = !DILocation(line: 2007, column: 14, scope: !4021)
!4025 = !DILocation(line: 2007, column: 21, scope: !4021)
!4026 = !DILocation(line: 2007, column: 33, scope: !4021)
!4027 = !DILocation(line: 2007, column: 7, scope: !4021)
!4028 = !DILocation(line: 2010, column: 16, scope: !4016)
!4029 = !DILocation(line: 2010, column: 6, scope: !4016)
!4030 = !DILocation(line: 2010, column: 14, scope: !4016)
!4031 = !DILocation(line: 2012, column: 12, scope: !4016)
!4032 = !DILocation(line: 2013, column: 3, scope: !4016)
!4033 = !DILocation(line: 2015, column: 12, scope: !4010)
!4034 = !DILocation(line: 2017, column: 3, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4036, file: !3, line: 2017, column: 3)
!4036 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 2017, column: 3)
!4037 = !DILocation(line: 2017, column: 3, scope: !4036)
!4038 = !DILocation(line: 2019, column: 10, scope: !3932)
!4039 = !DILocation(line: 2019, column: 3, scope: !3932)
!4040 = !DILocation(line: 2020, column: 1, scope: !3932)
!4041 = distinct !DISubprogram(name: "zip64local_SearchCentralDir64", scope: !3, file: !3, line: 542, type: !4042, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!51, !3305, !24}
!4044 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 1, scope: !4041, file: !3, line: 542, type: !3305)
!4045 = !DILocation(line: 542, column: 76, scope: !4041)
!4046 = !DILocalVariable(name: "filestream", arg: 2, scope: !4041, file: !3, line: 542, type: !24)
!4047 = !DILocation(line: 542, column: 103, scope: !4041)
!4048 = !DILocalVariable(name: "buf", scope: !4041, file: !3, line: 544, type: !182)
!4049 = !DILocation(line: 544, column: 18, scope: !4041)
!4050 = !DILocalVariable(name: "uSizeFile", scope: !4041, file: !3, line: 545, type: !51)
!4051 = !DILocation(line: 545, column: 12, scope: !4041)
!4052 = !DILocalVariable(name: "uBackRead", scope: !4041, file: !3, line: 546, type: !51)
!4053 = !DILocation(line: 546, column: 12, scope: !4041)
!4054 = !DILocalVariable(name: "uMaxBack", scope: !4041, file: !3, line: 547, type: !51)
!4055 = !DILocation(line: 547, column: 12, scope: !4041)
!4056 = !DILocalVariable(name: "uPosFound", scope: !4041, file: !3, line: 548, type: !51)
!4057 = !DILocation(line: 548, column: 12, scope: !4041)
!4058 = !DILocalVariable(name: "uL", scope: !4041, file: !3, line: 549, type: !34)
!4059 = !DILocation(line: 549, column: 9, scope: !4041)
!4060 = !DILocalVariable(name: "relativeOffset", scope: !4041, file: !3, line: 550, type: !51)
!4061 = !DILocation(line: 550, column: 12, scope: !4041)
!4062 = !DILocation(line: 552, column: 7, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 552, column: 7)
!4064 = !DILocation(line: 552, column: 72, scope: !4063)
!4065 = !DILocation(line: 552, column: 7, scope: !4041)
!4066 = !DILocation(line: 553, column: 5, scope: !4063)
!4067 = !DILocation(line: 555, column: 15, scope: !4041)
!4068 = !DILocation(line: 555, column: 13, scope: !4041)
!4069 = !DILocation(line: 557, column: 7, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 557, column: 7)
!4071 = !DILocation(line: 557, column: 16, scope: !4070)
!4072 = !DILocation(line: 557, column: 15, scope: !4070)
!4073 = !DILocation(line: 557, column: 7, scope: !4041)
!4074 = !DILocation(line: 558, column: 16, scope: !4070)
!4075 = !DILocation(line: 558, column: 14, scope: !4070)
!4076 = !DILocation(line: 558, column: 5, scope: !4070)
!4077 = !DILocation(line: 560, column: 25, scope: !4041)
!4078 = !DILocation(line: 560, column: 7, scope: !4041)
!4079 = !DILocation(line: 561, column: 7, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 561, column: 7)
!4081 = !DILocation(line: 561, column: 10, scope: !4080)
!4082 = !DILocation(line: 561, column: 7, scope: !4041)
!4083 = !DILocation(line: 562, column: 5, scope: !4080)
!4084 = !DILocation(line: 564, column: 13, scope: !4041)
!4085 = !DILocation(line: 565, column: 3, scope: !4041)
!4086 = !DILocation(line: 565, column: 10, scope: !4041)
!4087 = !DILocation(line: 565, column: 20, scope: !4041)
!4088 = !DILocation(line: 565, column: 19, scope: !4041)
!4089 = !DILocalVariable(name: "uReadSize", scope: !4090, file: !3, line: 567, type: !34)
!4090 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 566, column: 3)
!4091 = !DILocation(line: 567, column: 11, scope: !4090)
!4092 = !DILocalVariable(name: "uReadPos", scope: !4090, file: !3, line: 568, type: !51)
!4093 = !DILocation(line: 568, column: 14, scope: !4090)
!4094 = !DILocalVariable(name: "i", scope: !4090, file: !3, line: 569, type: !28)
!4095 = !DILocation(line: 569, column: 9, scope: !4090)
!4096 = !DILocation(line: 570, column: 9, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 570, column: 9)
!4098 = !DILocation(line: 570, column: 18, scope: !4097)
!4099 = !DILocation(line: 570, column: 34, scope: !4097)
!4100 = !DILocation(line: 570, column: 33, scope: !4097)
!4101 = !DILocation(line: 570, column: 9, scope: !4090)
!4102 = !DILocation(line: 571, column: 19, scope: !4097)
!4103 = !DILocation(line: 571, column: 17, scope: !4097)
!4104 = !DILocation(line: 571, column: 7, scope: !4097)
!4105 = !DILocation(line: 573, column: 16, scope: !4097)
!4106 = !DILocation(line: 574, column: 16, scope: !4090)
!4107 = !DILocation(line: 574, column: 26, scope: !4090)
!4108 = !DILocation(line: 574, column: 25, scope: !4090)
!4109 = !DILocation(line: 574, column: 14, scope: !4090)
!4110 = !DILocation(line: 576, column: 40, scope: !4090)
!4111 = !DILocation(line: 576, column: 50, scope: !4090)
!4112 = !DILocation(line: 576, column: 49, scope: !4090)
!4113 = !DILocation(line: 576, column: 37, scope: !4090)
!4114 = !DILocation(line: 576, column: 17, scope: !4090)
!4115 = !DILocation(line: 577, column: 36, scope: !4090)
!4116 = !DILocation(line: 577, column: 46, scope: !4090)
!4117 = !DILocation(line: 577, column: 45, scope: !4090)
!4118 = !DILocation(line: 576, column: 15, scope: !4090)
!4119 = !DILocation(line: 578, column: 9, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 578, column: 9)
!4121 = !DILocation(line: 578, column: 80, scope: !4120)
!4122 = !DILocation(line: 578, column: 9, scope: !4090)
!4123 = !DILocation(line: 579, column: 7, scope: !4120)
!4124 = !DILocation(line: 581, column: 9, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 581, column: 9)
!4126 = !DILocation(line: 581, column: 64, scope: !4125)
!4127 = !DILocation(line: 581, column: 62, scope: !4125)
!4128 = !DILocation(line: 581, column: 9, scope: !4090)
!4129 = !DILocation(line: 582, column: 7, scope: !4125)
!4130 = !DILocation(line: 584, column: 17, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 584, column: 5)
!4132 = !DILocation(line: 584, column: 12, scope: !4131)
!4133 = !DILocation(line: 584, column: 26, scope: !4131)
!4134 = !DILocation(line: 584, column: 11, scope: !4131)
!4135 = !DILocation(line: 584, column: 10, scope: !4131)
!4136 = !DILocation(line: 584, column: 32, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 584, column: 5)
!4138 = !DILocation(line: 584, column: 35, scope: !4137)
!4139 = !DILocation(line: 584, column: 5, scope: !4131)
!4140 = !DILocation(line: 587, column: 15, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 587, column: 11)
!4142 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 585, column: 5)
!4143 = !DILocation(line: 587, column: 19, scope: !4141)
!4144 = !DILocation(line: 587, column: 18, scope: !4141)
!4145 = !DILocation(line: 587, column: 13, scope: !4141)
!4146 = !DILocation(line: 587, column: 12, scope: !4141)
!4147 = !DILocation(line: 587, column: 22, scope: !4141)
!4148 = !DILocation(line: 587, column: 30, scope: !4141)
!4149 = !DILocation(line: 587, column: 37, scope: !4141)
!4150 = !DILocation(line: 587, column: 41, scope: !4141)
!4151 = !DILocation(line: 587, column: 40, scope: !4141)
!4152 = !DILocation(line: 587, column: 42, scope: !4141)
!4153 = !DILocation(line: 587, column: 35, scope: !4141)
!4154 = !DILocation(line: 587, column: 34, scope: !4141)
!4155 = !DILocation(line: 587, column: 46, scope: !4141)
!4156 = !DILocation(line: 587, column: 54, scope: !4141)
!4157 = !DILocation(line: 587, column: 61, scope: !4141)
!4158 = !DILocation(line: 587, column: 65, scope: !4141)
!4159 = !DILocation(line: 587, column: 64, scope: !4141)
!4160 = !DILocation(line: 587, column: 66, scope: !4141)
!4161 = !DILocation(line: 587, column: 59, scope: !4141)
!4162 = !DILocation(line: 587, column: 58, scope: !4141)
!4163 = !DILocation(line: 587, column: 70, scope: !4141)
!4164 = !DILocation(line: 587, column: 78, scope: !4141)
!4165 = !DILocation(line: 587, column: 85, scope: !4141)
!4166 = !DILocation(line: 587, column: 89, scope: !4141)
!4167 = !DILocation(line: 587, column: 88, scope: !4141)
!4168 = !DILocation(line: 587, column: 90, scope: !4141)
!4169 = !DILocation(line: 587, column: 83, scope: !4141)
!4170 = !DILocation(line: 587, column: 82, scope: !4141)
!4171 = !DILocation(line: 587, column: 94, scope: !4141)
!4172 = !DILocation(line: 587, column: 11, scope: !4142)
!4173 = !DILocation(line: 589, column: 21, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 588, column: 7)
!4175 = !DILocation(line: 589, column: 30, scope: !4174)
!4176 = !DILocation(line: 589, column: 29, scope: !4174)
!4177 = !DILocation(line: 589, column: 19, scope: !4174)
!4178 = !DILocation(line: 590, column: 9, scope: !4174)
!4179 = !DILocation(line: 584, column: 5, scope: !4137)
!4180 = distinct !{!4180, !4139, !4181, !743}
!4181 = !DILocation(line: 592, column: 5, scope: !4131)
!4182 = !DILocation(line: 594, column: 11, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 594, column: 11)
!4184 = !DILocation(line: 594, column: 20, scope: !4183)
!4185 = !DILocation(line: 594, column: 11, scope: !4090)
!4186 = !DILocation(line: 595, column: 9, scope: !4183)
!4187 = distinct !{!4187, !4085, !4188, !743}
!4188 = !DILocation(line: 596, column: 3, scope: !4041)
!4189 = !DILocation(line: 598, column: 3, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 598, column: 3)
!4191 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 598, column: 3)
!4192 = !DILocation(line: 598, column: 3, scope: !4191)
!4193 = !DILocation(line: 599, column: 7, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 599, column: 7)
!4195 = !DILocation(line: 599, column: 17, scope: !4194)
!4196 = !DILocation(line: 599, column: 7, scope: !4041)
!4197 = !DILocation(line: 600, column: 5, scope: !4194)
!4198 = !DILocation(line: 603, column: 7, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 603, column: 7)
!4200 = !DILocation(line: 603, column: 80, scope: !4199)
!4201 = !DILocation(line: 603, column: 7, scope: !4041)
!4202 = !DILocation(line: 604, column: 5, scope: !4199)
!4203 = !DILocation(line: 607, column: 26, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 607, column: 7)
!4205 = !DILocation(line: 607, column: 45, scope: !4204)
!4206 = !DILocation(line: 607, column: 7, scope: !4204)
!4207 = !DILocation(line: 607, column: 60, scope: !4204)
!4208 = !DILocation(line: 607, column: 7, scope: !4041)
!4209 = !DILocation(line: 608, column: 5, scope: !4204)
!4210 = !DILocation(line: 611, column: 26, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 611, column: 7)
!4212 = !DILocation(line: 611, column: 45, scope: !4211)
!4213 = !DILocation(line: 611, column: 7, scope: !4211)
!4214 = !DILocation(line: 611, column: 60, scope: !4211)
!4215 = !DILocation(line: 611, column: 7, scope: !4041)
!4216 = !DILocation(line: 612, column: 5, scope: !4211)
!4217 = !DILocation(line: 613, column: 7, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 613, column: 7)
!4219 = !DILocation(line: 613, column: 10, scope: !4218)
!4220 = !DILocation(line: 613, column: 7, scope: !4041)
!4221 = !DILocation(line: 614, column: 5, scope: !4218)
!4222 = !DILocation(line: 617, column: 28, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 617, column: 7)
!4224 = !DILocation(line: 617, column: 47, scope: !4223)
!4225 = !DILocation(line: 617, column: 7, scope: !4223)
!4226 = !DILocation(line: 617, column: 74, scope: !4223)
!4227 = !DILocation(line: 617, column: 7, scope: !4041)
!4228 = !DILocation(line: 618, column: 5, scope: !4223)
!4229 = !DILocation(line: 621, column: 26, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 621, column: 7)
!4231 = !DILocation(line: 621, column: 45, scope: !4230)
!4232 = !DILocation(line: 621, column: 7, scope: !4230)
!4233 = !DILocation(line: 621, column: 60, scope: !4230)
!4234 = !DILocation(line: 621, column: 7, scope: !4041)
!4235 = !DILocation(line: 622, column: 5, scope: !4230)
!4236 = !DILocation(line: 623, column: 7, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 623, column: 7)
!4238 = !DILocation(line: 623, column: 10, scope: !4237)
!4239 = !DILocation(line: 623, column: 7, scope: !4041)
!4240 = !DILocation(line: 624, column: 5, scope: !4237)
!4241 = !DILocation(line: 627, column: 7, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 627, column: 7)
!4243 = !DILocation(line: 627, column: 85, scope: !4242)
!4244 = !DILocation(line: 627, column: 7, scope: !4041)
!4245 = !DILocation(line: 628, column: 5, scope: !4242)
!4246 = !DILocation(line: 631, column: 26, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 631, column: 7)
!4248 = !DILocation(line: 631, column: 45, scope: !4247)
!4249 = !DILocation(line: 631, column: 7, scope: !4247)
!4250 = !DILocation(line: 631, column: 60, scope: !4247)
!4251 = !DILocation(line: 631, column: 7, scope: !4041)
!4252 = !DILocation(line: 632, column: 5, scope: !4247)
!4253 = !DILocation(line: 634, column: 7, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 634, column: 7)
!4255 = !DILocation(line: 634, column: 10, scope: !4254)
!4256 = !DILocation(line: 634, column: 7, scope: !4041)
!4257 = !DILocation(line: 635, column: 5, scope: !4254)
!4258 = !DILocation(line: 637, column: 10, scope: !4041)
!4259 = !DILocation(line: 637, column: 3, scope: !4041)
!4260 = !DILocation(line: 638, column: 1, scope: !4041)
!4261 = distinct !DISubprogram(name: "zip64local_SearchCentralDir", scope: !3, file: !3, line: 480, type: !4042, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4262 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 1, scope: !4261, file: !3, line: 480, type: !3305)
!4263 = !DILocation(line: 480, column: 74, scope: !4261)
!4264 = !DILocalVariable(name: "filestream", arg: 2, scope: !4261, file: !3, line: 480, type: !24)
!4265 = !DILocation(line: 480, column: 101, scope: !4261)
!4266 = !DILocalVariable(name: "buf", scope: !4261, file: !3, line: 482, type: !182)
!4267 = !DILocation(line: 482, column: 18, scope: !4261)
!4268 = !DILocalVariable(name: "uSizeFile", scope: !4261, file: !3, line: 483, type: !51)
!4269 = !DILocation(line: 483, column: 12, scope: !4261)
!4270 = !DILocalVariable(name: "uBackRead", scope: !4261, file: !3, line: 484, type: !51)
!4271 = !DILocation(line: 484, column: 12, scope: !4261)
!4272 = !DILocalVariable(name: "uMaxBack", scope: !4261, file: !3, line: 485, type: !51)
!4273 = !DILocation(line: 485, column: 12, scope: !4261)
!4274 = !DILocalVariable(name: "uPosFound", scope: !4261, file: !3, line: 486, type: !51)
!4275 = !DILocation(line: 486, column: 12, scope: !4261)
!4276 = !DILocation(line: 488, column: 7, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 488, column: 7)
!4278 = !DILocation(line: 488, column: 72, scope: !4277)
!4279 = !DILocation(line: 488, column: 7, scope: !4261)
!4280 = !DILocation(line: 489, column: 5, scope: !4277)
!4281 = !DILocation(line: 492, column: 15, scope: !4261)
!4282 = !DILocation(line: 492, column: 13, scope: !4261)
!4283 = !DILocation(line: 494, column: 7, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 494, column: 7)
!4285 = !DILocation(line: 494, column: 16, scope: !4284)
!4286 = !DILocation(line: 494, column: 15, scope: !4284)
!4287 = !DILocation(line: 494, column: 7, scope: !4261)
!4288 = !DILocation(line: 495, column: 16, scope: !4284)
!4289 = !DILocation(line: 495, column: 14, scope: !4284)
!4290 = !DILocation(line: 495, column: 5, scope: !4284)
!4291 = !DILocation(line: 497, column: 25, scope: !4261)
!4292 = !DILocation(line: 497, column: 7, scope: !4261)
!4293 = !DILocation(line: 498, column: 7, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 498, column: 7)
!4295 = !DILocation(line: 498, column: 10, scope: !4294)
!4296 = !DILocation(line: 498, column: 7, scope: !4261)
!4297 = !DILocation(line: 499, column: 5, scope: !4294)
!4298 = !DILocation(line: 501, column: 13, scope: !4261)
!4299 = !DILocation(line: 502, column: 3, scope: !4261)
!4300 = !DILocation(line: 502, column: 10, scope: !4261)
!4301 = !DILocation(line: 502, column: 20, scope: !4261)
!4302 = !DILocation(line: 502, column: 19, scope: !4261)
!4303 = !DILocalVariable(name: "uReadSize", scope: !4304, file: !3, line: 504, type: !34)
!4304 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 503, column: 3)
!4305 = !DILocation(line: 504, column: 11, scope: !4304)
!4306 = !DILocalVariable(name: "uReadPos", scope: !4304, file: !3, line: 505, type: !51)
!4307 = !DILocation(line: 505, column: 14, scope: !4304)
!4308 = !DILocalVariable(name: "i", scope: !4304, file: !3, line: 506, type: !28)
!4309 = !DILocation(line: 506, column: 9, scope: !4304)
!4310 = !DILocation(line: 507, column: 9, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 507, column: 9)
!4312 = !DILocation(line: 507, column: 18, scope: !4311)
!4313 = !DILocation(line: 507, column: 34, scope: !4311)
!4314 = !DILocation(line: 507, column: 33, scope: !4311)
!4315 = !DILocation(line: 507, column: 9, scope: !4304)
!4316 = !DILocation(line: 508, column: 19, scope: !4311)
!4317 = !DILocation(line: 508, column: 17, scope: !4311)
!4318 = !DILocation(line: 508, column: 7, scope: !4311)
!4319 = !DILocation(line: 510, column: 16, scope: !4311)
!4320 = !DILocation(line: 511, column: 16, scope: !4304)
!4321 = !DILocation(line: 511, column: 26, scope: !4304)
!4322 = !DILocation(line: 511, column: 25, scope: !4304)
!4323 = !DILocation(line: 511, column: 14, scope: !4304)
!4324 = !DILocation(line: 513, column: 40, scope: !4304)
!4325 = !DILocation(line: 513, column: 50, scope: !4304)
!4326 = !DILocation(line: 513, column: 49, scope: !4304)
!4327 = !DILocation(line: 513, column: 37, scope: !4304)
!4328 = !DILocation(line: 513, column: 17, scope: !4304)
!4329 = !DILocation(line: 514, column: 36, scope: !4304)
!4330 = !DILocation(line: 514, column: 46, scope: !4304)
!4331 = !DILocation(line: 514, column: 45, scope: !4304)
!4332 = !DILocation(line: 513, column: 15, scope: !4304)
!4333 = !DILocation(line: 515, column: 9, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 515, column: 9)
!4335 = !DILocation(line: 515, column: 80, scope: !4334)
!4336 = !DILocation(line: 515, column: 9, scope: !4304)
!4337 = !DILocation(line: 516, column: 7, scope: !4334)
!4338 = !DILocation(line: 518, column: 9, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 518, column: 9)
!4340 = !DILocation(line: 518, column: 64, scope: !4339)
!4341 = !DILocation(line: 518, column: 62, scope: !4339)
!4342 = !DILocation(line: 518, column: 9, scope: !4304)
!4343 = !DILocation(line: 519, column: 7, scope: !4339)
!4344 = !DILocation(line: 521, column: 17, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 521, column: 5)
!4346 = !DILocation(line: 521, column: 12, scope: !4345)
!4347 = !DILocation(line: 521, column: 26, scope: !4345)
!4348 = !DILocation(line: 521, column: 11, scope: !4345)
!4349 = !DILocation(line: 521, column: 10, scope: !4345)
!4350 = !DILocation(line: 521, column: 32, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 521, column: 5)
!4352 = !DILocation(line: 521, column: 35, scope: !4351)
!4353 = !DILocation(line: 521, column: 5, scope: !4345)
!4354 = !DILocation(line: 522, column: 15, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 522, column: 11)
!4356 = !DILocation(line: 522, column: 19, scope: !4355)
!4357 = !DILocation(line: 522, column: 18, scope: !4355)
!4358 = !DILocation(line: 522, column: 13, scope: !4355)
!4359 = !DILocation(line: 522, column: 12, scope: !4355)
!4360 = !DILocation(line: 522, column: 22, scope: !4355)
!4361 = !DILocation(line: 522, column: 30, scope: !4355)
!4362 = !DILocation(line: 522, column: 37, scope: !4355)
!4363 = !DILocation(line: 522, column: 41, scope: !4355)
!4364 = !DILocation(line: 522, column: 40, scope: !4355)
!4365 = !DILocation(line: 522, column: 42, scope: !4355)
!4366 = !DILocation(line: 522, column: 35, scope: !4355)
!4367 = !DILocation(line: 522, column: 34, scope: !4355)
!4368 = !DILocation(line: 522, column: 46, scope: !4355)
!4369 = !DILocation(line: 522, column: 54, scope: !4355)
!4370 = !DILocation(line: 523, column: 13, scope: !4355)
!4371 = !DILocation(line: 523, column: 17, scope: !4355)
!4372 = !DILocation(line: 523, column: 16, scope: !4355)
!4373 = !DILocation(line: 523, column: 18, scope: !4355)
!4374 = !DILocation(line: 523, column: 11, scope: !4355)
!4375 = !DILocation(line: 523, column: 10, scope: !4355)
!4376 = !DILocation(line: 523, column: 22, scope: !4355)
!4377 = !DILocation(line: 523, column: 30, scope: !4355)
!4378 = !DILocation(line: 523, column: 37, scope: !4355)
!4379 = !DILocation(line: 523, column: 41, scope: !4355)
!4380 = !DILocation(line: 523, column: 40, scope: !4355)
!4381 = !DILocation(line: 523, column: 42, scope: !4355)
!4382 = !DILocation(line: 523, column: 35, scope: !4355)
!4383 = !DILocation(line: 523, column: 34, scope: !4355)
!4384 = !DILocation(line: 523, column: 46, scope: !4355)
!4385 = !DILocation(line: 522, column: 11, scope: !4351)
!4386 = !DILocation(line: 525, column: 21, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 524, column: 7)
!4388 = !DILocation(line: 525, column: 30, scope: !4387)
!4389 = !DILocation(line: 525, column: 29, scope: !4387)
!4390 = !DILocation(line: 525, column: 19, scope: !4387)
!4391 = !DILocation(line: 526, column: 9, scope: !4387)
!4392 = !DILocation(line: 521, column: 5, scope: !4351)
!4393 = distinct !{!4393, !4353, !4394, !743}
!4394 = !DILocation(line: 527, column: 7, scope: !4345)
!4395 = !DILocation(line: 529, column: 11, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 529, column: 11)
!4397 = !DILocation(line: 529, column: 20, scope: !4396)
!4398 = !DILocation(line: 529, column: 11, scope: !4304)
!4399 = !DILocation(line: 530, column: 9, scope: !4396)
!4400 = distinct !{!4400, !4299, !4401, !743}
!4401 = !DILocation(line: 531, column: 3, scope: !4261)
!4402 = !DILocation(line: 532, column: 3, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 532, column: 3)
!4404 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 532, column: 3)
!4405 = !DILocation(line: 532, column: 3, scope: !4404)
!4406 = !DILocation(line: 533, column: 10, scope: !4261)
!4407 = !DILocation(line: 533, column: 3, scope: !4261)
!4408 = !DILocation(line: 534, column: 1, scope: !4261)
!4409 = distinct !DISubprogram(name: "zip64local_getLong", scope: !3, file: !3, line: 395, type: !4410, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!28, !3305, !24, !4412}
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!4413 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 1, scope: !4409, file: !3, line: 395, type: !3305)
!4414 = !DILocation(line: 395, column: 61, scope: !4409)
!4415 = !DILocalVariable(name: "filestream", arg: 2, scope: !4409, file: !3, line: 395, type: !24)
!4416 = !DILocation(line: 395, column: 88, scope: !4409)
!4417 = !DILocalVariable(name: "pX", arg: 3, scope: !4409, file: !3, line: 395, type: !4412)
!4418 = !DILocation(line: 395, column: 107, scope: !4409)
!4419 = !DILocalVariable(name: "x", scope: !4409, file: !3, line: 397, type: !34)
!4420 = !DILocation(line: 397, column: 11, scope: !4409)
!4421 = !DILocalVariable(name: "i", scope: !4409, file: !3, line: 398, type: !28)
!4422 = !DILocation(line: 398, column: 9, scope: !4409)
!4423 = !DILocalVariable(name: "err", scope: !4409, file: !3, line: 399, type: !28)
!4424 = !DILocation(line: 399, column: 9, scope: !4409)
!4425 = !DILocation(line: 401, column: 30, scope: !4409)
!4426 = !DILocation(line: 401, column: 49, scope: !4409)
!4427 = !DILocation(line: 401, column: 11, scope: !4409)
!4428 = !DILocation(line: 401, column: 9, scope: !4409)
!4429 = !DILocation(line: 402, column: 16, scope: !4409)
!4430 = !DILocation(line: 402, column: 9, scope: !4409)
!4431 = !DILocation(line: 402, column: 7, scope: !4409)
!4432 = !DILocation(line: 404, column: 9, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 404, column: 9)
!4434 = !DILocation(line: 404, column: 12, scope: !4433)
!4435 = !DILocation(line: 404, column: 9, scope: !4409)
!4436 = !DILocation(line: 405, column: 34, scope: !4433)
!4437 = !DILocation(line: 405, column: 53, scope: !4433)
!4438 = !DILocation(line: 405, column: 15, scope: !4433)
!4439 = !DILocation(line: 405, column: 13, scope: !4433)
!4440 = !DILocation(line: 405, column: 9, scope: !4433)
!4441 = !DILocation(line: 406, column: 18, scope: !4409)
!4442 = !DILocation(line: 406, column: 11, scope: !4409)
!4443 = !DILocation(line: 406, column: 20, scope: !4409)
!4444 = !DILocation(line: 406, column: 7, scope: !4409)
!4445 = !DILocation(line: 408, column: 9, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 408, column: 9)
!4447 = !DILocation(line: 408, column: 12, scope: !4446)
!4448 = !DILocation(line: 408, column: 9, scope: !4409)
!4449 = !DILocation(line: 409, column: 34, scope: !4446)
!4450 = !DILocation(line: 409, column: 53, scope: !4446)
!4451 = !DILocation(line: 409, column: 15, scope: !4446)
!4452 = !DILocation(line: 409, column: 13, scope: !4446)
!4453 = !DILocation(line: 409, column: 9, scope: !4446)
!4454 = !DILocation(line: 410, column: 18, scope: !4409)
!4455 = !DILocation(line: 410, column: 11, scope: !4409)
!4456 = !DILocation(line: 410, column: 20, scope: !4409)
!4457 = !DILocation(line: 410, column: 7, scope: !4409)
!4458 = !DILocation(line: 412, column: 9, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 412, column: 9)
!4460 = !DILocation(line: 412, column: 12, scope: !4459)
!4461 = !DILocation(line: 412, column: 9, scope: !4409)
!4462 = !DILocation(line: 413, column: 34, scope: !4459)
!4463 = !DILocation(line: 413, column: 53, scope: !4459)
!4464 = !DILocation(line: 413, column: 15, scope: !4459)
!4465 = !DILocation(line: 413, column: 13, scope: !4459)
!4466 = !DILocation(line: 413, column: 9, scope: !4459)
!4467 = !DILocation(line: 414, column: 18, scope: !4409)
!4468 = !DILocation(line: 414, column: 11, scope: !4409)
!4469 = !DILocation(line: 414, column: 20, scope: !4409)
!4470 = !DILocation(line: 414, column: 7, scope: !4409)
!4471 = !DILocation(line: 416, column: 9, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 416, column: 9)
!4473 = !DILocation(line: 416, column: 12, scope: !4472)
!4474 = !DILocation(line: 416, column: 9, scope: !4409)
!4475 = !DILocation(line: 417, column: 15, scope: !4472)
!4476 = !DILocation(line: 417, column: 10, scope: !4472)
!4477 = !DILocation(line: 417, column: 13, scope: !4472)
!4478 = !DILocation(line: 417, column: 9, scope: !4472)
!4479 = !DILocation(line: 419, column: 10, scope: !4472)
!4480 = !DILocation(line: 419, column: 13, scope: !4472)
!4481 = !DILocation(line: 420, column: 12, scope: !4409)
!4482 = !DILocation(line: 420, column: 5, scope: !4409)
!4483 = distinct !DISubprogram(name: "zip64local_getLong64", scope: !3, file: !3, line: 426, type: !4484, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!28, !3305, !24, !4486}
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!4487 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 1, scope: !4483, file: !3, line: 426, type: !3305)
!4488 = !DILocation(line: 426, column: 63, scope: !4483)
!4489 = !DILocalVariable(name: "filestream", arg: 2, scope: !4483, file: !3, line: 426, type: !24)
!4490 = !DILocation(line: 426, column: 90, scope: !4483)
!4491 = !DILocalVariable(name: "pX", arg: 3, scope: !4483, file: !3, line: 426, type: !4486)
!4492 = !DILocation(line: 426, column: 112, scope: !4483)
!4493 = !DILocalVariable(name: "x", scope: !4483, file: !3, line: 428, type: !51)
!4494 = !DILocation(line: 428, column: 12, scope: !4483)
!4495 = !DILocalVariable(name: "i", scope: !4483, file: !3, line: 429, type: !28)
!4496 = !DILocation(line: 429, column: 7, scope: !4483)
!4497 = !DILocalVariable(name: "err", scope: !4483, file: !3, line: 430, type: !28)
!4498 = !DILocation(line: 430, column: 7, scope: !4483)
!4499 = !DILocation(line: 432, column: 28, scope: !4483)
!4500 = !DILocation(line: 432, column: 47, scope: !4483)
!4501 = !DILocation(line: 432, column: 9, scope: !4483)
!4502 = !DILocation(line: 432, column: 7, scope: !4483)
!4503 = !DILocation(line: 433, column: 17, scope: !4483)
!4504 = !DILocation(line: 433, column: 7, scope: !4483)
!4505 = !DILocation(line: 433, column: 5, scope: !4483)
!4506 = !DILocation(line: 435, column: 7, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 435, column: 7)
!4508 = !DILocation(line: 435, column: 10, scope: !4507)
!4509 = !DILocation(line: 435, column: 7, scope: !4483)
!4510 = !DILocation(line: 436, column: 30, scope: !4507)
!4511 = !DILocation(line: 436, column: 49, scope: !4507)
!4512 = !DILocation(line: 436, column: 11, scope: !4507)
!4513 = !DILocation(line: 436, column: 9, scope: !4507)
!4514 = !DILocation(line: 436, column: 5, scope: !4507)
!4515 = !DILocation(line: 437, column: 19, scope: !4483)
!4516 = !DILocation(line: 437, column: 9, scope: !4483)
!4517 = !DILocation(line: 437, column: 21, scope: !4483)
!4518 = !DILocation(line: 437, column: 5, scope: !4483)
!4519 = !DILocation(line: 439, column: 7, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 439, column: 7)
!4521 = !DILocation(line: 439, column: 10, scope: !4520)
!4522 = !DILocation(line: 439, column: 7, scope: !4483)
!4523 = !DILocation(line: 440, column: 30, scope: !4520)
!4524 = !DILocation(line: 440, column: 49, scope: !4520)
!4525 = !DILocation(line: 440, column: 11, scope: !4520)
!4526 = !DILocation(line: 440, column: 9, scope: !4520)
!4527 = !DILocation(line: 440, column: 5, scope: !4520)
!4528 = !DILocation(line: 441, column: 19, scope: !4483)
!4529 = !DILocation(line: 441, column: 9, scope: !4483)
!4530 = !DILocation(line: 441, column: 21, scope: !4483)
!4531 = !DILocation(line: 441, column: 5, scope: !4483)
!4532 = !DILocation(line: 443, column: 7, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 443, column: 7)
!4534 = !DILocation(line: 443, column: 10, scope: !4533)
!4535 = !DILocation(line: 443, column: 7, scope: !4483)
!4536 = !DILocation(line: 444, column: 30, scope: !4533)
!4537 = !DILocation(line: 444, column: 49, scope: !4533)
!4538 = !DILocation(line: 444, column: 11, scope: !4533)
!4539 = !DILocation(line: 444, column: 9, scope: !4533)
!4540 = !DILocation(line: 444, column: 5, scope: !4533)
!4541 = !DILocation(line: 445, column: 19, scope: !4483)
!4542 = !DILocation(line: 445, column: 9, scope: !4483)
!4543 = !DILocation(line: 445, column: 21, scope: !4483)
!4544 = !DILocation(line: 445, column: 5, scope: !4483)
!4545 = !DILocation(line: 447, column: 7, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 447, column: 7)
!4547 = !DILocation(line: 447, column: 10, scope: !4546)
!4548 = !DILocation(line: 447, column: 7, scope: !4483)
!4549 = !DILocation(line: 448, column: 30, scope: !4546)
!4550 = !DILocation(line: 448, column: 49, scope: !4546)
!4551 = !DILocation(line: 448, column: 11, scope: !4546)
!4552 = !DILocation(line: 448, column: 9, scope: !4546)
!4553 = !DILocation(line: 448, column: 5, scope: !4546)
!4554 = !DILocation(line: 449, column: 19, scope: !4483)
!4555 = !DILocation(line: 449, column: 9, scope: !4483)
!4556 = !DILocation(line: 449, column: 21, scope: !4483)
!4557 = !DILocation(line: 449, column: 5, scope: !4483)
!4558 = !DILocation(line: 451, column: 7, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 451, column: 7)
!4560 = !DILocation(line: 451, column: 10, scope: !4559)
!4561 = !DILocation(line: 451, column: 7, scope: !4483)
!4562 = !DILocation(line: 452, column: 30, scope: !4559)
!4563 = !DILocation(line: 452, column: 49, scope: !4559)
!4564 = !DILocation(line: 452, column: 11, scope: !4559)
!4565 = !DILocation(line: 452, column: 9, scope: !4559)
!4566 = !DILocation(line: 452, column: 5, scope: !4559)
!4567 = !DILocation(line: 453, column: 19, scope: !4483)
!4568 = !DILocation(line: 453, column: 9, scope: !4483)
!4569 = !DILocation(line: 453, column: 21, scope: !4483)
!4570 = !DILocation(line: 453, column: 5, scope: !4483)
!4571 = !DILocation(line: 455, column: 7, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 455, column: 7)
!4573 = !DILocation(line: 455, column: 10, scope: !4572)
!4574 = !DILocation(line: 455, column: 7, scope: !4483)
!4575 = !DILocation(line: 456, column: 30, scope: !4572)
!4576 = !DILocation(line: 456, column: 49, scope: !4572)
!4577 = !DILocation(line: 456, column: 11, scope: !4572)
!4578 = !DILocation(line: 456, column: 9, scope: !4572)
!4579 = !DILocation(line: 456, column: 5, scope: !4572)
!4580 = !DILocation(line: 457, column: 19, scope: !4483)
!4581 = !DILocation(line: 457, column: 9, scope: !4483)
!4582 = !DILocation(line: 457, column: 21, scope: !4483)
!4583 = !DILocation(line: 457, column: 5, scope: !4483)
!4584 = !DILocation(line: 459, column: 7, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 459, column: 7)
!4586 = !DILocation(line: 459, column: 10, scope: !4585)
!4587 = !DILocation(line: 459, column: 7, scope: !4483)
!4588 = !DILocation(line: 460, column: 30, scope: !4585)
!4589 = !DILocation(line: 460, column: 49, scope: !4585)
!4590 = !DILocation(line: 460, column: 11, scope: !4585)
!4591 = !DILocation(line: 460, column: 9, scope: !4585)
!4592 = !DILocation(line: 460, column: 5, scope: !4585)
!4593 = !DILocation(line: 461, column: 19, scope: !4483)
!4594 = !DILocation(line: 461, column: 9, scope: !4483)
!4595 = !DILocation(line: 461, column: 21, scope: !4483)
!4596 = !DILocation(line: 461, column: 5, scope: !4483)
!4597 = !DILocation(line: 463, column: 7, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 463, column: 7)
!4599 = !DILocation(line: 463, column: 10, scope: !4598)
!4600 = !DILocation(line: 463, column: 7, scope: !4483)
!4601 = !DILocation(line: 464, column: 11, scope: !4598)
!4602 = !DILocation(line: 464, column: 6, scope: !4598)
!4603 = !DILocation(line: 464, column: 9, scope: !4598)
!4604 = !DILocation(line: 464, column: 5, scope: !4598)
!4605 = !DILocation(line: 466, column: 6, scope: !4598)
!4606 = !DILocation(line: 466, column: 9, scope: !4598)
!4607 = !DILocation(line: 468, column: 10, scope: !4483)
!4608 = !DILocation(line: 468, column: 3, scope: !4483)
!4609 = distinct !DISubprogram(name: "zip64local_getShort", scope: !3, file: !3, line: 373, type: !4410, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4610 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 1, scope: !4609, file: !3, line: 373, type: !3305)
!4611 = !DILocation(line: 373, column: 62, scope: !4609)
!4612 = !DILocalVariable(name: "filestream", arg: 2, scope: !4609, file: !3, line: 373, type: !24)
!4613 = !DILocation(line: 373, column: 89, scope: !4609)
!4614 = !DILocalVariable(name: "pX", arg: 3, scope: !4609, file: !3, line: 373, type: !4412)
!4615 = !DILocation(line: 373, column: 108, scope: !4609)
!4616 = !DILocalVariable(name: "x", scope: !4609, file: !3, line: 375, type: !34)
!4617 = !DILocation(line: 375, column: 11, scope: !4609)
!4618 = !DILocalVariable(name: "i", scope: !4609, file: !3, line: 376, type: !28)
!4619 = !DILocation(line: 376, column: 9, scope: !4609)
!4620 = !DILocalVariable(name: "err", scope: !4609, file: !3, line: 377, type: !28)
!4621 = !DILocation(line: 377, column: 9, scope: !4609)
!4622 = !DILocation(line: 379, column: 30, scope: !4609)
!4623 = !DILocation(line: 379, column: 49, scope: !4609)
!4624 = !DILocation(line: 379, column: 11, scope: !4609)
!4625 = !DILocation(line: 379, column: 9, scope: !4609)
!4626 = !DILocation(line: 380, column: 16, scope: !4609)
!4627 = !DILocation(line: 380, column: 9, scope: !4609)
!4628 = !DILocation(line: 380, column: 7, scope: !4609)
!4629 = !DILocation(line: 382, column: 9, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 382, column: 9)
!4631 = !DILocation(line: 382, column: 12, scope: !4630)
!4632 = !DILocation(line: 382, column: 9, scope: !4609)
!4633 = !DILocation(line: 383, column: 34, scope: !4630)
!4634 = !DILocation(line: 383, column: 53, scope: !4630)
!4635 = !DILocation(line: 383, column: 15, scope: !4630)
!4636 = !DILocation(line: 383, column: 13, scope: !4630)
!4637 = !DILocation(line: 383, column: 9, scope: !4630)
!4638 = !DILocation(line: 384, column: 18, scope: !4609)
!4639 = !DILocation(line: 384, column: 11, scope: !4609)
!4640 = !DILocation(line: 384, column: 20, scope: !4609)
!4641 = !DILocation(line: 384, column: 7, scope: !4609)
!4642 = !DILocation(line: 386, column: 9, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 386, column: 9)
!4644 = !DILocation(line: 386, column: 12, scope: !4643)
!4645 = !DILocation(line: 386, column: 9, scope: !4609)
!4646 = !DILocation(line: 387, column: 15, scope: !4643)
!4647 = !DILocation(line: 387, column: 10, scope: !4643)
!4648 = !DILocation(line: 387, column: 13, scope: !4643)
!4649 = !DILocation(line: 387, column: 9, scope: !4643)
!4650 = !DILocation(line: 389, column: 10, scope: !4643)
!4651 = !DILocation(line: 389, column: 13, scope: !4643)
!4652 = !DILocation(line: 390, column: 12, scope: !4609)
!4653 = !DILocation(line: 390, column: 5, scope: !4609)
!4654 = distinct !DISubprogram(name: "zip64local_getByte", scope: !3, file: !3, line: 349, type: !4655, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!28, !3305, !24, !3935}
!4657 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 1, scope: !4654, file: !3, line: 349, type: !3305)
!4658 = !DILocation(line: 349, column: 60, scope: !4654)
!4659 = !DILocalVariable(name: "filestream", arg: 2, scope: !4654, file: !3, line: 349, type: !24)
!4660 = !DILocation(line: 349, column: 86, scope: !4654)
!4661 = !DILocalVariable(name: "pi", arg: 3, scope: !4654, file: !3, line: 349, type: !3935)
!4662 = !DILocation(line: 349, column: 102, scope: !4654)
!4663 = !DILocalVariable(name: "c", scope: !4654, file: !3, line: 351, type: !99)
!4664 = !DILocation(line: 351, column: 19, scope: !4654)
!4665 = !DILocalVariable(name: "err", scope: !4654, file: !3, line: 352, type: !28)
!4666 = !DILocation(line: 352, column: 9, scope: !4654)
!4667 = !DILocation(line: 352, column: 20, scope: !4654)
!4668 = !DILocation(line: 352, column: 15, scope: !4654)
!4669 = !DILocation(line: 353, column: 9, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 353, column: 9)
!4671 = !DILocation(line: 353, column: 12, scope: !4670)
!4672 = !DILocation(line: 353, column: 9, scope: !4654)
!4673 = !DILocation(line: 355, column: 20, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 354, column: 5)
!4675 = !DILocation(line: 355, column: 15, scope: !4674)
!4676 = !DILocation(line: 355, column: 10, scope: !4674)
!4677 = !DILocation(line: 355, column: 13, scope: !4674)
!4678 = !DILocation(line: 356, column: 9, scope: !4674)
!4679 = !DILocation(line: 360, column: 13, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 360, column: 13)
!4681 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 359, column: 5)
!4682 = !DILocation(line: 360, column: 13, scope: !4681)
!4683 = !DILocation(line: 361, column: 13, scope: !4680)
!4684 = !DILocation(line: 363, column: 13, scope: !4680)
!4685 = !DILocation(line: 365, column: 1, scope: !4654)
!4686 = distinct !DISubprogram(name: "init_keys", scope: !199, file: !199, line: 65, type: !4687, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{null, !69, !202, !169}
!4689 = !DILocalVariable(name: "passwd", arg: 1, scope: !4686, file: !199, line: 65, type: !69)
!4690 = !DILocation(line: 65, column: 35, scope: !4686)
!4691 = !DILocalVariable(name: "pkeys", arg: 2, scope: !4686, file: !199, line: 65, type: !202)
!4692 = !DILocation(line: 65, column: 57, scope: !4686)
!4693 = !DILocalVariable(name: "pcrc_32_tab", arg: 3, scope: !4686, file: !199, line: 65, type: !169)
!4694 = !DILocation(line: 65, column: 78, scope: !4686)
!4695 = !DILocation(line: 67, column: 7, scope: !4686)
!4696 = !DILocation(line: 67, column: 12, scope: !4686)
!4697 = !DILocation(line: 67, column: 16, scope: !4686)
!4698 = !DILocation(line: 68, column: 7, scope: !4686)
!4699 = !DILocation(line: 68, column: 12, scope: !4686)
!4700 = !DILocation(line: 68, column: 16, scope: !4686)
!4701 = !DILocation(line: 69, column: 7, scope: !4686)
!4702 = !DILocation(line: 69, column: 12, scope: !4686)
!4703 = !DILocation(line: 69, column: 16, scope: !4686)
!4704 = !DILocation(line: 70, column: 5, scope: !4686)
!4705 = !DILocation(line: 70, column: 13, scope: !4686)
!4706 = !DILocation(line: 70, column: 12, scope: !4686)
!4707 = !DILocation(line: 70, column: 20, scope: !4686)
!4708 = !DILocation(line: 71, column: 21, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4686, file: !199, line: 70, column: 29)
!4710 = !DILocation(line: 71, column: 27, scope: !4709)
!4711 = !DILocation(line: 71, column: 45, scope: !4709)
!4712 = !DILocation(line: 71, column: 44, scope: !4709)
!4713 = !DILocation(line: 71, column: 39, scope: !4709)
!4714 = !DILocation(line: 71, column: 9, scope: !4709)
!4715 = !DILocation(line: 72, column: 15, scope: !4709)
!4716 = distinct !{!4716, !4704, !4717, !743}
!4717 = !DILocation(line: 73, column: 5, scope: !4686)
!4718 = !DILocation(line: 74, column: 1, scope: !4686)
!4719 = distinct !DISubprogram(name: "decrypt_byte", scope: !199, file: !199, line: 35, type: !4720, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!28, !202, !169}
!4722 = !DILocalVariable(name: "pkeys", arg: 1, scope: !4719, file: !199, line: 35, type: !202)
!4723 = !DILocation(line: 35, column: 40, scope: !4719)
!4724 = !DILocalVariable(name: "pcrc_32_tab", arg: 2, scope: !4719, file: !199, line: 35, type: !169)
!4725 = !DILocation(line: 35, column: 62, scope: !4719)
!4726 = !DILocalVariable(name: "temp", scope: !4719, file: !199, line: 37, type: !119)
!4727 = !DILocation(line: 37, column: 14, scope: !4719)
!4728 = !DILocation(line: 41, column: 26, scope: !4719)
!4729 = !DILocation(line: 41, column: 31, scope: !4719)
!4730 = !DILocation(line: 41, column: 24, scope: !4719)
!4731 = !DILocation(line: 41, column: 13, scope: !4719)
!4732 = !DILocation(line: 41, column: 36, scope: !4719)
!4733 = !DILocation(line: 41, column: 46, scope: !4719)
!4734 = !DILocation(line: 41, column: 10, scope: !4719)
!4735 = !DILocation(line: 42, column: 20, scope: !4719)
!4736 = !DILocation(line: 42, column: 28, scope: !4719)
!4737 = !DILocation(line: 42, column: 33, scope: !4719)
!4738 = !DILocation(line: 42, column: 25, scope: !4719)
!4739 = !DILocation(line: 42, column: 39, scope: !4719)
!4740 = !DILocation(line: 42, column: 45, scope: !4719)
!4741 = !DILocation(line: 42, column: 5, scope: !4719)
!4742 = distinct !DISubprogram(name: "update_keys", scope: !199, file: !199, line: 48, type: !4743, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!28, !202, !169, !28}
!4745 = !DILocalVariable(name: "pkeys", arg: 1, scope: !4742, file: !199, line: 48, type: !202)
!4746 = !DILocation(line: 48, column: 39, scope: !4742)
!4747 = !DILocalVariable(name: "pcrc_32_tab", arg: 2, scope: !4742, file: !199, line: 48, type: !169)
!4748 = !DILocation(line: 48, column: 60, scope: !4742)
!4749 = !DILocalVariable(name: "c", arg: 3, scope: !4742, file: !199, line: 48, type: !28)
!4750 = !DILocation(line: 48, column: 76, scope: !4742)
!4751 = !DILocation(line: 50, column: 20, scope: !4742)
!4752 = !DILocation(line: 50, column: 8, scope: !4742)
!4753 = !DILocation(line: 50, column: 13, scope: !4742)
!4754 = !DILocation(line: 50, column: 18, scope: !4742)
!4755 = !DILocation(line: 51, column: 24, scope: !4742)
!4756 = !DILocation(line: 51, column: 29, scope: !4742)
!4757 = !DILocation(line: 51, column: 22, scope: !4742)
!4758 = !DILocation(line: 51, column: 34, scope: !4742)
!4759 = !DILocation(line: 51, column: 8, scope: !4742)
!4760 = !DILocation(line: 51, column: 13, scope: !4742)
!4761 = !DILocation(line: 51, column: 18, scope: !4742)
!4762 = !DILocation(line: 52, column: 23, scope: !4742)
!4763 = !DILocation(line: 52, column: 28, scope: !4742)
!4764 = !DILocation(line: 52, column: 21, scope: !4742)
!4765 = !DILocation(line: 52, column: 33, scope: !4742)
!4766 = !DILocation(line: 52, column: 46, scope: !4742)
!4767 = !DILocation(line: 52, column: 8, scope: !4742)
!4768 = !DILocation(line: 52, column: 13, scope: !4742)
!4769 = !DILocation(line: 52, column: 18, scope: !4742)
!4770 = !DILocalVariable(name: "keyshift", scope: !4771, file: !199, line: 54, type: !28)
!4771 = distinct !DILexicalBlock(scope: !4742, file: !199, line: 53, column: 5)
!4772 = !DILocation(line: 54, column: 20, scope: !4771)
!4773 = !DILocation(line: 54, column: 40, scope: !4771)
!4774 = !DILocation(line: 54, column: 45, scope: !4771)
!4775 = !DILocation(line: 54, column: 38, scope: !4771)
!4776 = !DILocation(line: 54, column: 50, scope: !4771)
!4777 = !DILocation(line: 54, column: 31, scope: !4771)
!4778 = !DILocation(line: 55, column: 22, scope: !4771)
!4779 = !DILocation(line: 55, column: 10, scope: !4771)
!4780 = !DILocation(line: 55, column: 15, scope: !4771)
!4781 = !DILocation(line: 55, column: 20, scope: !4771)
!4782 = !DILocation(line: 57, column: 12, scope: !4742)
!4783 = !DILocation(line: 57, column: 5, scope: !4742)
!4784 = distinct !DISubprogram(name: "allocate_new_datablock", scope: !3, file: !3, line: 189, type: !4785, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!88}
!4787 = !DILocalVariable(name: "ldi", scope: !4784, file: !3, line: 191, type: !88)
!4788 = !DILocation(line: 191, column: 36, scope: !4784)
!4789 = !DILocation(line: 193, column: 18, scope: !4784)
!4790 = !DILocation(line: 192, column: 9, scope: !4784)
!4791 = !DILocation(line: 194, column: 9, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 194, column: 9)
!4793 = !DILocation(line: 194, column: 12, scope: !4792)
!4794 = !DILocation(line: 194, column: 9, scope: !4784)
!4795 = !DILocation(line: 196, column: 9, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 195, column: 5)
!4797 = !DILocation(line: 196, column: 14, scope: !4796)
!4798 = !DILocation(line: 196, column: 29, scope: !4796)
!4799 = !DILocation(line: 197, column: 9, scope: !4796)
!4800 = !DILocation(line: 197, column: 14, scope: !4796)
!4801 = !DILocation(line: 197, column: 35, scope: !4796)
!4802 = !DILocation(line: 198, column: 9, scope: !4796)
!4803 = !DILocation(line: 198, column: 14, scope: !4796)
!4804 = !DILocation(line: 198, column: 34, scope: !4796)
!4805 = !DILocation(line: 199, column: 5, scope: !4796)
!4806 = !DILocation(line: 200, column: 12, scope: !4784)
!4807 = !DILocation(line: 200, column: 5, scope: !4784)
!4808 = distinct !DISubprogram(name: "free_datablock", scope: !3, file: !3, line: 203, type: !4809, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{null, !88}
!4811 = !DILocalVariable(name: "ldi", arg: 1, scope: !4808, file: !3, line: 203, type: !88)
!4812 = !DILocation(line: 203, column: 58, scope: !4808)
!4813 = !DILocation(line: 205, column: 5, scope: !4808)
!4814 = !DILocation(line: 205, column: 12, scope: !4808)
!4815 = !DILocation(line: 205, column: 15, scope: !4808)
!4816 = !DILocalVariable(name: "ldinext", scope: !4817, file: !3, line: 207, type: !88)
!4817 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 206, column: 5)
!4818 = !DILocation(line: 207, column: 40, scope: !4817)
!4819 = !DILocation(line: 207, column: 50, scope: !4817)
!4820 = !DILocation(line: 207, column: 55, scope: !4817)
!4821 = !DILocation(line: 208, column: 9, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 208, column: 9)
!4823 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 208, column: 9)
!4824 = !DILocation(line: 208, column: 9, scope: !4823)
!4825 = !DILocation(line: 209, column: 15, scope: !4817)
!4826 = !DILocation(line: 209, column: 13, scope: !4817)
!4827 = distinct !{!4827, !4813, !4828, !743}
!4828 = !DILocation(line: 210, column: 5, scope: !4808)
!4829 = !DILocation(line: 211, column: 1, scope: !4808)
