; ModuleID = 'src/minizip/unzip.c'
source_filename = "src/minizip/unzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlib_filefunc64_32_def_s = type { %struct.zlib_filefunc64_def_s, ptr, ptr, ptr }
%struct.zlib_filefunc64_def_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.unz64_s = type { %struct.zlib_filefunc64_32_def_s, i32, ptr, %struct.unz_global_info64_s, i64, i64, i64, i64, i64, i64, i64, %struct.unz_file_info64_s, %struct.unz_file_info64_internal_s, ptr, i32, i32 }
%struct.unz_global_info64_s = type { i64, i64 }
%struct.unz_file_info64_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.tm_unz_s }
%struct.tm_unz_s = type { i32, i32, i32, i32, i32, i32 }
%struct.unz_file_info64_internal_s = type { i64 }
%struct.file_in_zip64_read_info_s = type { ptr, %struct.z_stream_s, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, %struct.zlib_filefunc64_32_def_s, ptr, i64, i64, i32 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.unz_global_info_s = type { i64, i64 }
%struct.unz_file_info_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.tm_unz_s }
%struct.unz64_file_pos_s = type { i64, i64 }
%struct.unz_file_pos_s = type { i64, i64 }

@unz_copyright = dso_local constant [81 x i8] c" unzip 1.01 Copyright 1998-2004 Gilles Vollant - http://www.winimage.com/zLibDll\00", align 16, !dbg !0
@.str = private unnamed_addr constant [7 x i8] c"1.2.11\00", align 1, !dbg !198

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzStringFileNameCompare(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !214 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !218, metadata !DIExpression()), !dbg !219
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !220, metadata !DIExpression()), !dbg !221
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !222, metadata !DIExpression()), !dbg !223
  %8 = load i32, ptr %7, align 4, !dbg !224
  %9 = icmp eq i32 %8, 0, !dbg !226
  br i1 %9, label %10, label %11, !dbg !227

10:                                               ; preds = %3
  store i32 1, ptr %7, align 4, !dbg !228
  br label %11, !dbg !229

11:                                               ; preds = %10, %3
  %12 = load i32, ptr %7, align 4, !dbg !230
  %13 = icmp eq i32 %12, 1, !dbg !232
  br i1 %13, label %14, label %18, !dbg !233

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 8, !dbg !234
  %16 = load ptr, ptr %6, align 8, !dbg !235
  %17 = call i32 @strcmp(ptr noundef %15, ptr noundef %16) #7, !dbg !236
  store i32 %17, ptr %4, align 4, !dbg !237
  br label %22, !dbg !237

18:                                               ; preds = %11
  %19 = load ptr, ptr %5, align 8, !dbg !238
  %20 = load ptr, ptr %6, align 8, !dbg !239
  %21 = call i32 @strcmpcasenosensitive_internal(ptr noundef %19, ptr noundef %20), !dbg !240
  store i32 %21, ptr %4, align 4, !dbg !241
  br label %22, !dbg !241

22:                                               ; preds = %18, %14
  %23 = load i32, ptr %4, align 4, !dbg !242
  ret i32 %23, !dbg !242
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strcmpcasenosensitive_internal(ptr noundef %0, ptr noundef %1) #0 !dbg !243 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !246, metadata !DIExpression()), !dbg !247
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !248, metadata !DIExpression()), !dbg !249
  br label %8, !dbg !250

8:                                                ; preds = %69, %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !251, metadata !DIExpression()), !dbg !255
  %9 = load ptr, ptr %4, align 8, !dbg !256
  %10 = getelementptr inbounds i8, ptr %9, i32 1, !dbg !256
  store ptr %10, ptr %4, align 8, !dbg !256
  %11 = load i8, ptr %9, align 1, !dbg !257
  store i8 %11, ptr %6, align 1, !dbg !255
  call void @llvm.dbg.declare(metadata ptr %7, metadata !258, metadata !DIExpression()), !dbg !259
  %12 = load ptr, ptr %5, align 8, !dbg !260
  %13 = getelementptr inbounds i8, ptr %12, i32 1, !dbg !260
  store ptr %13, ptr %5, align 8, !dbg !260
  %14 = load i8, ptr %12, align 1, !dbg !261
  store i8 %14, ptr %7, align 1, !dbg !259
  %15 = load i8, ptr %6, align 1, !dbg !262
  %16 = sext i8 %15 to i32, !dbg !262
  %17 = icmp sge i32 %16, 97, !dbg !264
  br i1 %17, label %18, label %27, !dbg !265

18:                                               ; preds = %8
  %19 = load i8, ptr %6, align 1, !dbg !266
  %20 = sext i8 %19 to i32, !dbg !266
  %21 = icmp sle i32 %20, 122, !dbg !267
  br i1 %21, label %22, label %27, !dbg !268

22:                                               ; preds = %18
  %23 = load i8, ptr %6, align 1, !dbg !269
  %24 = sext i8 %23 to i32, !dbg !269
  %25 = sub nsw i32 %24, 32, !dbg !269
  %26 = trunc i32 %25 to i8, !dbg !269
  store i8 %26, ptr %6, align 1, !dbg !269
  br label %27, !dbg !270

27:                                               ; preds = %22, %18, %8
  %28 = load i8, ptr %7, align 1, !dbg !271
  %29 = sext i8 %28 to i32, !dbg !271
  %30 = icmp sge i32 %29, 97, !dbg !273
  br i1 %30, label %31, label %40, !dbg !274

31:                                               ; preds = %27
  %32 = load i8, ptr %7, align 1, !dbg !275
  %33 = sext i8 %32 to i32, !dbg !275
  %34 = icmp sle i32 %33, 122, !dbg !276
  br i1 %34, label %35, label %40, !dbg !277

35:                                               ; preds = %31
  %36 = load i8, ptr %7, align 1, !dbg !278
  %37 = sext i8 %36 to i32, !dbg !278
  %38 = sub nsw i32 %37, 32, !dbg !278
  %39 = trunc i32 %38 to i8, !dbg !278
  store i8 %39, ptr %7, align 1, !dbg !278
  br label %40, !dbg !279

40:                                               ; preds = %35, %31, %27
  %41 = load i8, ptr %6, align 1, !dbg !280
  %42 = sext i8 %41 to i32, !dbg !280
  %43 = icmp eq i32 %42, 0, !dbg !282
  br i1 %43, label %44, label %50, !dbg !283

44:                                               ; preds = %40
  %45 = load i8, ptr %7, align 1, !dbg !284
  %46 = sext i8 %45 to i32, !dbg !284
  %47 = icmp eq i32 %46, 0, !dbg !285
  %48 = zext i1 %47 to i64, !dbg !286
  %49 = select i1 %47, i32 0, i32 -1, !dbg !286
  store i32 %49, ptr %3, align 4, !dbg !287
  br label %70, !dbg !287

50:                                               ; preds = %40
  %51 = load i8, ptr %7, align 1, !dbg !288
  %52 = sext i8 %51 to i32, !dbg !288
  %53 = icmp eq i32 %52, 0, !dbg !290
  br i1 %53, label %54, label %55, !dbg !291

54:                                               ; preds = %50
  store i32 1, ptr %3, align 4, !dbg !292
  br label %70, !dbg !292

55:                                               ; preds = %50
  %56 = load i8, ptr %6, align 1, !dbg !293
  %57 = sext i8 %56 to i32, !dbg !293
  %58 = load i8, ptr %7, align 1, !dbg !295
  %59 = sext i8 %58 to i32, !dbg !295
  %60 = icmp slt i32 %57, %59, !dbg !296
  br i1 %60, label %61, label %62, !dbg !297

61:                                               ; preds = %55
  store i32 -1, ptr %3, align 4, !dbg !298
  br label %70, !dbg !298

62:                                               ; preds = %55
  %63 = load i8, ptr %6, align 1, !dbg !299
  %64 = sext i8 %63 to i32, !dbg !299
  %65 = load i8, ptr %7, align 1, !dbg !301
  %66 = sext i8 %65 to i32, !dbg !301
  %67 = icmp sgt i32 %64, %66, !dbg !302
  br i1 %67, label %68, label %69, !dbg !303

68:                                               ; preds = %62
  store i32 1, ptr %3, align 4, !dbg !304
  br label %70, !dbg !304

69:                                               ; preds = %62
  br label %8, !dbg !305, !llvm.loop !306

70:                                               ; preds = %68, %61, %54, %44
  %71 = load i32, ptr %3, align 4, !dbg !309
  ret i32 %71, !dbg !309
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @unzOpen2(ptr noundef %0, ptr noundef %1) #0 !dbg !310 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.zlib_filefunc64_32_def_s, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !326, metadata !DIExpression()), !dbg !327
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !328, metadata !DIExpression()), !dbg !329
  %7 = load ptr, ptr %5, align 8, !dbg !330
  %8 = icmp ne ptr %7, null, !dbg !332
  br i1 %8, label %9, label %13, !dbg !333

9:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !334, metadata !DIExpression()), !dbg !336
  %10 = load ptr, ptr %5, align 8, !dbg !337
  call void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef %6, ptr noundef %10), !dbg !338
  %11 = load ptr, ptr %4, align 8, !dbg !339
  %12 = call ptr @unzOpenInternal(ptr noundef %11, ptr noundef %6, i32 noundef 0), !dbg !340
  store ptr %12, ptr %3, align 8, !dbg !341
  br label %16, !dbg !341

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !342
  %15 = call ptr @unzOpenInternal(ptr noundef %14, ptr noundef null, i32 noundef 0), !dbg !343
  store ptr %15, ptr %3, align 8, !dbg !344
  br label %16, !dbg !344

16:                                               ; preds = %13, %9
  %17 = load ptr, ptr %3, align 8, !dbg !345
  ret ptr %17, !dbg !345
}

declare void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @unzOpenInternal(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !346 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.unz64_s, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !350, metadata !DIExpression()), !dbg !351
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !352, metadata !DIExpression()), !dbg !353
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !354, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.declare(metadata ptr %8, metadata !356, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.declare(metadata ptr %9, metadata !358, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.declare(metadata ptr %10, metadata !360, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.declare(metadata ptr %11, metadata !362, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.declare(metadata ptr %12, metadata !364, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.declare(metadata ptr %13, metadata !366, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.declare(metadata ptr %14, metadata !368, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.declare(metadata ptr %15, metadata !370, metadata !DIExpression()), !dbg !371
  store i32 0, ptr %15, align 4, !dbg !371
  %18 = load i8, ptr @unz_copyright, align 16, !dbg !372
  %19 = sext i8 %18 to i32, !dbg !372
  %20 = icmp ne i32 %19, 32, !dbg !374
  br i1 %20, label %21, label %22, !dbg !375

21:                                               ; preds = %3
  store ptr null, ptr %4, align 8, !dbg !376
  br label %298, !dbg !376

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !377
  %24 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %23, i32 0, i32 3, !dbg !378
  store ptr null, ptr %24, align 8, !dbg !379
  %25 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !380
  %26 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %25, i32 0, i32 2, !dbg !381
  store ptr null, ptr %26, align 8, !dbg !382
  %27 = load ptr, ptr %6, align 8, !dbg !383
  %28 = icmp eq ptr %27, null, !dbg !385
  br i1 %28, label %29, label %32, !dbg !386

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !387
  %31 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %30, i32 0, i32 0, !dbg !388
  call void @fill_fopen64_filefunc(ptr noundef %31), !dbg !389
  br label %35, !dbg !389

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !390
  %34 = load ptr, ptr %6, align 8, !dbg !391
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %34, i64 96, i1 false), !dbg !392
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, ptr %7, align 4, !dbg !393
  %37 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 1, !dbg !394
  store i32 %36, ptr %37, align 8, !dbg !395
  %38 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !396
  %39 = load ptr, ptr %5, align 8, !dbg !396
  %40 = call ptr @call_zopen64(ptr noundef %38, ptr noundef %39, i32 noundef 5), !dbg !396
  %41 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !397
  store ptr %40, ptr %41, align 8, !dbg !398
  %42 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !399
  %43 = load ptr, ptr %42, align 8, !dbg !399
  %44 = icmp eq ptr %43, null, !dbg !401
  br i1 %44, label %45, label %46, !dbg !402

45:                                               ; preds = %35
  store ptr null, ptr %4, align 8, !dbg !403
  br label %298, !dbg !403

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !404
  %48 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !405
  %49 = load ptr, ptr %48, align 8, !dbg !405
  %50 = call i64 @unz64local_SearchCentralDir64(ptr noundef %47, ptr noundef %49), !dbg !406
  store i64 %50, ptr %10, align 8, !dbg !407
  %51 = load i64, ptr %10, align 8, !dbg !408
  %52 = icmp ne i64 %51, 0, !dbg !408
  br i1 %52, label %53, label %152, !dbg !410

53:                                               ; preds = %46
  call void @llvm.dbg.declare(metadata ptr %16, metadata !411, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata ptr %17, metadata !414, metadata !DIExpression()), !dbg !415
  %54 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 15, !dbg !416
  store i32 1, ptr %54, align 4, !dbg !417
  %55 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !418
  %56 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !418
  %57 = load ptr, ptr %56, align 8, !dbg !418
  %58 = load i64, ptr %10, align 8, !dbg !418
  %59 = call i64 @call_zseek64(ptr noundef %55, ptr noundef %57, i64 noundef %58, i32 noundef 0), !dbg !418
  %60 = icmp ne i64 %59, 0, !dbg !420
  br i1 %60, label %61, label %62, !dbg !421

61:                                               ; preds = %53
  store i32 -1, ptr %15, align 4, !dbg !422
  br label %62, !dbg !423

62:                                               ; preds = %61, %53
  %63 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !424
  %64 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !426
  %65 = load ptr, ptr %64, align 8, !dbg !426
  %66 = call i32 @unz64local_getLong(ptr noundef %63, ptr noundef %65, ptr noundef %11), !dbg !427
  %67 = icmp ne i32 %66, 0, !dbg !428
  br i1 %67, label %68, label %69, !dbg !429

68:                                               ; preds = %62
  store i32 -1, ptr %15, align 4, !dbg !430
  br label %69, !dbg !431

69:                                               ; preds = %68, %62
  %70 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !432
  %71 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !434
  %72 = load ptr, ptr %71, align 8, !dbg !434
  %73 = call i32 @unz64local_getLong64(ptr noundef %70, ptr noundef %72, ptr noundef %17), !dbg !435
  %74 = icmp ne i32 %73, 0, !dbg !436
  br i1 %74, label %75, label %76, !dbg !437

75:                                               ; preds = %69
  store i32 -1, ptr %15, align 4, !dbg !438
  br label %76, !dbg !439

76:                                               ; preds = %75, %69
  %77 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !440
  %78 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !442
  %79 = load ptr, ptr %78, align 8, !dbg !442
  %80 = call i32 @unz64local_getShort(ptr noundef %77, ptr noundef %79, ptr noundef %16), !dbg !443
  %81 = icmp ne i32 %80, 0, !dbg !444
  br i1 %81, label %82, label %83, !dbg !445

82:                                               ; preds = %76
  store i32 -1, ptr %15, align 4, !dbg !446
  br label %83, !dbg !447

83:                                               ; preds = %82, %76
  %84 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !448
  %85 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !450
  %86 = load ptr, ptr %85, align 8, !dbg !450
  %87 = call i32 @unz64local_getShort(ptr noundef %84, ptr noundef %86, ptr noundef %16), !dbg !451
  %88 = icmp ne i32 %87, 0, !dbg !452
  br i1 %88, label %89, label %90, !dbg !453

89:                                               ; preds = %83
  store i32 -1, ptr %15, align 4, !dbg !454
  br label %90, !dbg !455

90:                                               ; preds = %89, %83
  %91 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !456
  %92 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !458
  %93 = load ptr, ptr %92, align 8, !dbg !458
  %94 = call i32 @unz64local_getLong(ptr noundef %91, ptr noundef %93, ptr noundef %12), !dbg !459
  %95 = icmp ne i32 %94, 0, !dbg !460
  br i1 %95, label %96, label %97, !dbg !461

96:                                               ; preds = %90
  store i32 -1, ptr %15, align 4, !dbg !462
  br label %97, !dbg !463

97:                                               ; preds = %96, %90
  %98 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !464
  %99 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !466
  %100 = load ptr, ptr %99, align 8, !dbg !466
  %101 = call i32 @unz64local_getLong(ptr noundef %98, ptr noundef %100, ptr noundef %13), !dbg !467
  %102 = icmp ne i32 %101, 0, !dbg !468
  br i1 %102, label %103, label %104, !dbg !469

103:                                              ; preds = %97
  store i32 -1, ptr %15, align 4, !dbg !470
  br label %104, !dbg !471

104:                                              ; preds = %103, %97
  %105 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !472
  %106 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !474
  %107 = load ptr, ptr %106, align 8, !dbg !474
  %108 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 3, !dbg !475
  %109 = getelementptr inbounds %struct.unz_global_info64_s, ptr %108, i32 0, i32 0, !dbg !476
  %110 = call i32 @unz64local_getLong64(ptr noundef %105, ptr noundef %107, ptr noundef %109), !dbg !477
  %111 = icmp ne i32 %110, 0, !dbg !478
  br i1 %111, label %112, label %113, !dbg !479

112:                                              ; preds = %104
  store i32 -1, ptr %15, align 4, !dbg !480
  br label %113, !dbg !481

113:                                              ; preds = %112, %104
  %114 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !482
  %115 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !484
  %116 = load ptr, ptr %115, align 8, !dbg !484
  %117 = call i32 @unz64local_getLong64(ptr noundef %114, ptr noundef %116, ptr noundef %14), !dbg !485
  %118 = icmp ne i32 %117, 0, !dbg !486
  br i1 %118, label %119, label %120, !dbg !487

119:                                              ; preds = %113
  store i32 -1, ptr %15, align 4, !dbg !488
  br label %120, !dbg !489

120:                                              ; preds = %119, %113
  %121 = load i64, ptr %14, align 8, !dbg !490
  %122 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 3, !dbg !492
  %123 = getelementptr inbounds %struct.unz_global_info64_s, ptr %122, i32 0, i32 0, !dbg !493
  %124 = load i64, ptr %123, align 8, !dbg !493
  %125 = icmp ne i64 %121, %124, !dbg !494
  br i1 %125, label %132, label %126, !dbg !495

126:                                              ; preds = %120
  %127 = load i64, ptr %13, align 8, !dbg !496
  %128 = icmp ne i64 %127, 0, !dbg !497
  br i1 %128, label %132, label %129, !dbg !498

129:                                              ; preds = %126
  %130 = load i64, ptr %12, align 8, !dbg !499
  %131 = icmp ne i64 %130, 0, !dbg !500
  br i1 %131, label %132, label %133, !dbg !501

132:                                              ; preds = %129, %126, %120
  store i32 -103, ptr %15, align 4, !dbg !502
  br label %133, !dbg !503

133:                                              ; preds = %132, %129
  %134 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !504
  %135 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !506
  %136 = load ptr, ptr %135, align 8, !dbg !506
  %137 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 9, !dbg !507
  %138 = call i32 @unz64local_getLong64(ptr noundef %134, ptr noundef %136, ptr noundef %137), !dbg !508
  %139 = icmp ne i32 %138, 0, !dbg !509
  br i1 %139, label %140, label %141, !dbg !510

140:                                              ; preds = %133
  store i32 -1, ptr %15, align 4, !dbg !511
  br label %141, !dbg !512

141:                                              ; preds = %140, %133
  %142 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !513
  %143 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !515
  %144 = load ptr, ptr %143, align 8, !dbg !515
  %145 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 10, !dbg !516
  %146 = call i32 @unz64local_getLong64(ptr noundef %142, ptr noundef %144, ptr noundef %145), !dbg !517
  %147 = icmp ne i32 %146, 0, !dbg !518
  br i1 %147, label %148, label %149, !dbg !519

148:                                              ; preds = %141
  store i32 -1, ptr %15, align 4, !dbg !520
  br label %149, !dbg !521

149:                                              ; preds = %148, %141
  %150 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 3, !dbg !522
  %151 = getelementptr inbounds %struct.unz_global_info64_s, ptr %150, i32 0, i32 1, !dbg !523
  store i64 0, ptr %151, align 8, !dbg !524
  br label %249, !dbg !525

152:                                              ; preds = %46
  %153 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !526
  %154 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !528
  %155 = load ptr, ptr %154, align 8, !dbg !528
  %156 = call i64 @unz64local_SearchCentralDir(ptr noundef %153, ptr noundef %155), !dbg !529
  store i64 %156, ptr %10, align 8, !dbg !530
  %157 = load i64, ptr %10, align 8, !dbg !531
  %158 = icmp eq i64 %157, 0, !dbg !533
  br i1 %158, label %159, label %160, !dbg !534

159:                                              ; preds = %152
  store i32 -1, ptr %15, align 4, !dbg !535
  br label %160, !dbg !536

160:                                              ; preds = %159, %152
  %161 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 15, !dbg !537
  store i32 0, ptr %161, align 4, !dbg !538
  %162 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !539
  %163 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !539
  %164 = load ptr, ptr %163, align 8, !dbg !539
  %165 = load i64, ptr %10, align 8, !dbg !539
  %166 = call i64 @call_zseek64(ptr noundef %162, ptr noundef %164, i64 noundef %165, i32 noundef 0), !dbg !539
  %167 = icmp ne i64 %166, 0, !dbg !541
  br i1 %167, label %168, label %169, !dbg !542

168:                                              ; preds = %160
  store i32 -1, ptr %15, align 4, !dbg !543
  br label %169, !dbg !544

169:                                              ; preds = %168, %160
  %170 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !545
  %171 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !547
  %172 = load ptr, ptr %171, align 8, !dbg !547
  %173 = call i32 @unz64local_getLong(ptr noundef %170, ptr noundef %172, ptr noundef %11), !dbg !548
  %174 = icmp ne i32 %173, 0, !dbg !549
  br i1 %174, label %175, label %176, !dbg !550

175:                                              ; preds = %169
  store i32 -1, ptr %15, align 4, !dbg !551
  br label %176, !dbg !552

176:                                              ; preds = %175, %169
  %177 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !553
  %178 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !555
  %179 = load ptr, ptr %178, align 8, !dbg !555
  %180 = call i32 @unz64local_getShort(ptr noundef %177, ptr noundef %179, ptr noundef %12), !dbg !556
  %181 = icmp ne i32 %180, 0, !dbg !557
  br i1 %181, label %182, label %183, !dbg !558

182:                                              ; preds = %176
  store i32 -1, ptr %15, align 4, !dbg !559
  br label %183, !dbg !560

183:                                              ; preds = %182, %176
  %184 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !561
  %185 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !563
  %186 = load ptr, ptr %185, align 8, !dbg !563
  %187 = call i32 @unz64local_getShort(ptr noundef %184, ptr noundef %186, ptr noundef %13), !dbg !564
  %188 = icmp ne i32 %187, 0, !dbg !565
  br i1 %188, label %189, label %190, !dbg !566

189:                                              ; preds = %183
  store i32 -1, ptr %15, align 4, !dbg !567
  br label %190, !dbg !568

190:                                              ; preds = %189, %183
  %191 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !569
  %192 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !571
  %193 = load ptr, ptr %192, align 8, !dbg !571
  %194 = call i32 @unz64local_getShort(ptr noundef %191, ptr noundef %193, ptr noundef %11), !dbg !572
  %195 = icmp ne i32 %194, 0, !dbg !573
  br i1 %195, label %196, label %197, !dbg !574

196:                                              ; preds = %190
  store i32 -1, ptr %15, align 4, !dbg !575
  br label %197, !dbg !576

197:                                              ; preds = %196, %190
  %198 = load i64, ptr %11, align 8, !dbg !577
  %199 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 3, !dbg !578
  %200 = getelementptr inbounds %struct.unz_global_info64_s, ptr %199, i32 0, i32 0, !dbg !579
  store i64 %198, ptr %200, align 8, !dbg !580
  %201 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !581
  %202 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !583
  %203 = load ptr, ptr %202, align 8, !dbg !583
  %204 = call i32 @unz64local_getShort(ptr noundef %201, ptr noundef %203, ptr noundef %11), !dbg !584
  %205 = icmp ne i32 %204, 0, !dbg !585
  br i1 %205, label %206, label %207, !dbg !586

206:                                              ; preds = %197
  store i32 -1, ptr %15, align 4, !dbg !587
  br label %207, !dbg !588

207:                                              ; preds = %206, %197
  %208 = load i64, ptr %11, align 8, !dbg !589
  store i64 %208, ptr %14, align 8, !dbg !590
  %209 = load i64, ptr %14, align 8, !dbg !591
  %210 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 3, !dbg !593
  %211 = getelementptr inbounds %struct.unz_global_info64_s, ptr %210, i32 0, i32 0, !dbg !594
  %212 = load i64, ptr %211, align 8, !dbg !594
  %213 = icmp ne i64 %209, %212, !dbg !595
  br i1 %213, label %220, label %214, !dbg !596

214:                                              ; preds = %207
  %215 = load i64, ptr %13, align 8, !dbg !597
  %216 = icmp ne i64 %215, 0, !dbg !598
  br i1 %216, label %220, label %217, !dbg !599

217:                                              ; preds = %214
  %218 = load i64, ptr %12, align 8, !dbg !600
  %219 = icmp ne i64 %218, 0, !dbg !601
  br i1 %219, label %220, label %221, !dbg !602

220:                                              ; preds = %217, %214, %207
  store i32 -103, ptr %15, align 4, !dbg !603
  br label %221, !dbg !604

221:                                              ; preds = %220, %217
  %222 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !605
  %223 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !607
  %224 = load ptr, ptr %223, align 8, !dbg !607
  %225 = call i32 @unz64local_getLong(ptr noundef %222, ptr noundef %224, ptr noundef %11), !dbg !608
  %226 = icmp ne i32 %225, 0, !dbg !609
  br i1 %226, label %227, label %228, !dbg !610

227:                                              ; preds = %221
  store i32 -1, ptr %15, align 4, !dbg !611
  br label %228, !dbg !612

228:                                              ; preds = %227, %221
  %229 = load i64, ptr %11, align 8, !dbg !613
  %230 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 9, !dbg !614
  store i64 %229, ptr %230, align 8, !dbg !615
  %231 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !616
  %232 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !618
  %233 = load ptr, ptr %232, align 8, !dbg !618
  %234 = call i32 @unz64local_getLong(ptr noundef %231, ptr noundef %233, ptr noundef %11), !dbg !619
  %235 = icmp ne i32 %234, 0, !dbg !620
  br i1 %235, label %236, label %237, !dbg !621

236:                                              ; preds = %228
  store i32 -1, ptr %15, align 4, !dbg !622
  br label %237, !dbg !623

237:                                              ; preds = %236, %228
  %238 = load i64, ptr %11, align 8, !dbg !624
  %239 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 10, !dbg !625
  store i64 %238, ptr %239, align 8, !dbg !626
  %240 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !627
  %241 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !629
  %242 = load ptr, ptr %241, align 8, !dbg !629
  %243 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 3, !dbg !630
  %244 = getelementptr inbounds %struct.unz_global_info64_s, ptr %243, i32 0, i32 1, !dbg !631
  %245 = call i32 @unz64local_getShort(ptr noundef %240, ptr noundef %242, ptr noundef %244), !dbg !632
  %246 = icmp ne i32 %245, 0, !dbg !633
  br i1 %246, label %247, label %248, !dbg !634

247:                                              ; preds = %237
  store i32 -1, ptr %15, align 4, !dbg !635
  br label %248, !dbg !636

248:                                              ; preds = %247, %237
  br label %249

249:                                              ; preds = %248, %149
  %250 = load i64, ptr %10, align 8, !dbg !637
  %251 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 10, !dbg !639
  %252 = load i64, ptr %251, align 8, !dbg !639
  %253 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 9, !dbg !640
  %254 = load i64, ptr %253, align 8, !dbg !640
  %255 = add i64 %252, %254, !dbg !641
  %256 = icmp ult i64 %250, %255, !dbg !642
  br i1 %256, label %257, label %261, !dbg !643

257:                                              ; preds = %249
  %258 = load i32, ptr %15, align 4, !dbg !644
  %259 = icmp eq i32 %258, 0, !dbg !645
  br i1 %259, label %260, label %261, !dbg !646

260:                                              ; preds = %257
  store i32 -103, ptr %15, align 4, !dbg !647
  br label %261, !dbg !648

261:                                              ; preds = %260, %257, %249
  %262 = load i32, ptr %15, align 4, !dbg !649
  %263 = icmp ne i32 %262, 0, !dbg !651
  br i1 %263, label %264, label %276, !dbg !652

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !653
  %266 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %265, i32 0, i32 0, !dbg !653
  %267 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %266, i32 0, i32 6, !dbg !653
  %268 = load ptr, ptr %267, align 8, !dbg !653
  %269 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 0, !dbg !653
  %270 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %269, i32 0, i32 0, !dbg !653
  %271 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %270, i32 0, i32 8, !dbg !653
  %272 = load ptr, ptr %271, align 8, !dbg !653
  %273 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 2, !dbg !653
  %274 = load ptr, ptr %273, align 8, !dbg !653
  %275 = call i32 %268(ptr noundef %272, ptr noundef %274), !dbg !653
  store ptr null, ptr %4, align 8, !dbg !655
  br label %298, !dbg !655

276:                                              ; preds = %261
  %277 = load i64, ptr %10, align 8, !dbg !656
  %278 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 10, !dbg !657
  %279 = load i64, ptr %278, align 8, !dbg !657
  %280 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 9, !dbg !658
  %281 = load i64, ptr %280, align 8, !dbg !658
  %282 = add i64 %279, %281, !dbg !659
  %283 = sub i64 %277, %282, !dbg !660
  %284 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 4, !dbg !661
  store i64 %283, ptr %284, align 8, !dbg !662
  %285 = load i64, ptr %10, align 8, !dbg !663
  %286 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 8, !dbg !664
  store i64 %285, ptr %286, align 8, !dbg !665
  %287 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 13, !dbg !666
  store ptr null, ptr %287, align 8, !dbg !667
  %288 = getelementptr inbounds %struct.unz64_s, ptr %8, i32 0, i32 14, !dbg !668
  store i32 0, ptr %288, align 8, !dbg !669
  %289 = call noalias ptr @malloc(i64 noundef 344) #8, !dbg !670
  store ptr %289, ptr %9, align 8, !dbg !671
  %290 = load ptr, ptr %9, align 8, !dbg !672
  %291 = icmp ne ptr %290, null, !dbg !674
  br i1 %291, label %292, label %296, !dbg !675

292:                                              ; preds = %276
  %293 = load ptr, ptr %9, align 8, !dbg !676
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %293, ptr align 8 %8, i64 344, i1 false), !dbg !678
  %294 = load ptr, ptr %9, align 8, !dbg !679
  %295 = call i32 @unzGoToFirstFile(ptr noundef %294), !dbg !680
  br label %296, !dbg !681

296:                                              ; preds = %292, %276
  %297 = load ptr, ptr %9, align 8, !dbg !682
  store ptr %297, ptr %4, align 8, !dbg !683
  br label %298, !dbg !683

298:                                              ; preds = %296, %264, %45, %21
  %299 = load ptr, ptr %4, align 8, !dbg !684
  ret ptr %299, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @unzOpen2_64(ptr noundef %0, ptr noundef %1) #0 !dbg !685 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.zlib_filefunc64_32_def_s, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !689, metadata !DIExpression()), !dbg !690
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !691, metadata !DIExpression()), !dbg !692
  %7 = load ptr, ptr %5, align 8, !dbg !693
  %8 = icmp ne ptr %7, null, !dbg !695
  br i1 %8, label %9, label %16, !dbg !696

9:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !697, metadata !DIExpression()), !dbg !699
  %10 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %6, i32 0, i32 0, !dbg !700
  %11 = load ptr, ptr %5, align 8, !dbg !701
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %11, i64 72, i1 false), !dbg !702
  %12 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %6, i32 0, i32 2, !dbg !703
  store ptr null, ptr %12, align 8, !dbg !704
  %13 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %6, i32 0, i32 3, !dbg !705
  store ptr null, ptr %13, align 8, !dbg !706
  %14 = load ptr, ptr %4, align 8, !dbg !707
  %15 = call ptr @unzOpenInternal(ptr noundef %14, ptr noundef %6, i32 noundef 1), !dbg !708
  store ptr %15, ptr %3, align 8, !dbg !709
  br label %19, !dbg !709

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8, !dbg !710
  %18 = call ptr @unzOpenInternal(ptr noundef %17, ptr noundef null, i32 noundef 1), !dbg !711
  store ptr %18, ptr %3, align 8, !dbg !712
  br label %19, !dbg !712

19:                                               ; preds = %16, %9
  %20 = load ptr, ptr %3, align 8, !dbg !713
  ret ptr %20, !dbg !713
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @unzOpen(ptr noundef %0) #0 !dbg !714 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !717, metadata !DIExpression()), !dbg !718
  %3 = load ptr, ptr %2, align 8, !dbg !719
  %4 = call ptr @unzOpenInternal(ptr noundef %3, ptr noundef null, i32 noundef 0), !dbg !720
  ret ptr %4, !dbg !721
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @unzOpen64(ptr noundef %0) #0 !dbg !722 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !725, metadata !DIExpression()), !dbg !726
  %3 = load ptr, ptr %2, align 8, !dbg !727
  %4 = call ptr @unzOpenInternal(ptr noundef %3, ptr noundef null, i32 noundef 1), !dbg !728
  ret ptr %4, !dbg !729
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzClose(ptr noundef %0) #0 !dbg !730 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !733, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.declare(metadata ptr %4, metadata !735, metadata !DIExpression()), !dbg !736
  %5 = load ptr, ptr %3, align 8, !dbg !737
  %6 = icmp eq ptr %5, null, !dbg !739
  br i1 %6, label %7, label %8, !dbg !740

7:                                                ; preds = %1
  store i32 -102, ptr %2, align 4, !dbg !741
  br label %37, !dbg !741

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !742
  store ptr %9, ptr %4, align 8, !dbg !743
  %10 = load ptr, ptr %4, align 8, !dbg !744
  %11 = getelementptr inbounds %struct.unz64_s, ptr %10, i32 0, i32 13, !dbg !746
  %12 = load ptr, ptr %11, align 8, !dbg !746
  %13 = icmp ne ptr %12, null, !dbg !747
  br i1 %13, label %14, label %17, !dbg !748

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 8, !dbg !749
  %16 = call i32 @unzCloseCurrentFile(ptr noundef %15), !dbg !750
  br label %17, !dbg !750

17:                                               ; preds = %14, %8
  %18 = load ptr, ptr %4, align 8, !dbg !751
  %19 = getelementptr inbounds %struct.unz64_s, ptr %18, i32 0, i32 0, !dbg !751
  %20 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %19, i32 0, i32 0, !dbg !751
  %21 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %20, i32 0, i32 6, !dbg !751
  %22 = load ptr, ptr %21, align 8, !dbg !751
  %23 = load ptr, ptr %4, align 8, !dbg !751
  %24 = getelementptr inbounds %struct.unz64_s, ptr %23, i32 0, i32 0, !dbg !751
  %25 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %24, i32 0, i32 0, !dbg !751
  %26 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %25, i32 0, i32 8, !dbg !751
  %27 = load ptr, ptr %26, align 8, !dbg !751
  %28 = load ptr, ptr %4, align 8, !dbg !751
  %29 = getelementptr inbounds %struct.unz64_s, ptr %28, i32 0, i32 2, !dbg !751
  %30 = load ptr, ptr %29, align 8, !dbg !751
  %31 = call i32 %22(ptr noundef %27, ptr noundef %30), !dbg !751
  %32 = load ptr, ptr %4, align 8, !dbg !752
  %33 = icmp ne ptr %32, null, !dbg !752
  br i1 %33, label %34, label %36, !dbg !755

34:                                               ; preds = %17
  %35 = load ptr, ptr %4, align 8, !dbg !752
  call void @free(ptr noundef %35) #9, !dbg !752
  br label %36, !dbg !752

36:                                               ; preds = %34, %17
  store i32 0, ptr %2, align 4, !dbg !756
  br label %37, !dbg !756

37:                                               ; preds = %36, %7
  %38 = load i32, ptr %2, align 4, !dbg !757
  ret i32 %38, !dbg !757
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzCloseCurrentFile(ptr noundef %0) #0 !dbg !758 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !759, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.declare(metadata ptr %4, metadata !761, metadata !DIExpression()), !dbg !762
  store i32 0, ptr %4, align 4, !dbg !762
  call void @llvm.dbg.declare(metadata ptr %5, metadata !763, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.declare(metadata ptr %6, metadata !765, metadata !DIExpression()), !dbg !766
  %7 = load ptr, ptr %3, align 8, !dbg !767
  %8 = icmp eq ptr %7, null, !dbg !769
  br i1 %8, label %9, label %10, !dbg !770

9:                                                ; preds = %1
  store i32 -102, ptr %2, align 4, !dbg !771
  br label %69, !dbg !771

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !772
  store ptr %11, ptr %5, align 8, !dbg !773
  %12 = load ptr, ptr %5, align 8, !dbg !774
  %13 = getelementptr inbounds %struct.unz64_s, ptr %12, i32 0, i32 13, !dbg !775
  %14 = load ptr, ptr %13, align 8, !dbg !775
  store ptr %14, ptr %6, align 8, !dbg !776
  %15 = load ptr, ptr %6, align 8, !dbg !777
  %16 = icmp eq ptr %15, null, !dbg !779
  br i1 %16, label %17, label %18, !dbg !780

17:                                               ; preds = %10
  store i32 -102, ptr %2, align 4, !dbg !781
  br label %69, !dbg !781

18:                                               ; preds = %10
  %19 = load ptr, ptr %6, align 8, !dbg !782
  %20 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %19, i32 0, i32 11, !dbg !784
  %21 = load i64, ptr %20, align 8, !dbg !784
  %22 = icmp eq i64 %21, 0, !dbg !785
  br i1 %22, label %23, label %38, !dbg !786

23:                                               ; preds = %18
  %24 = load ptr, ptr %6, align 8, !dbg !787
  %25 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %24, i32 0, i32 16, !dbg !788
  %26 = load i32, ptr %25, align 8, !dbg !788
  %27 = icmp ne i32 %26, 0, !dbg !787
  br i1 %27, label %38, label %28, !dbg !789

28:                                               ; preds = %23
  %29 = load ptr, ptr %6, align 8, !dbg !790
  %30 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %29, i32 0, i32 8, !dbg !793
  %31 = load i64, ptr %30, align 8, !dbg !793
  %32 = load ptr, ptr %6, align 8, !dbg !794
  %33 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %32, i32 0, i32 9, !dbg !795
  %34 = load i64, ptr %33, align 8, !dbg !795
  %35 = icmp ne i64 %31, %34, !dbg !796
  br i1 %35, label %36, label %37, !dbg !797

36:                                               ; preds = %28
  store i32 -105, ptr %4, align 4, !dbg !798
  br label %37, !dbg !799

37:                                               ; preds = %36, %28
  br label %38, !dbg !800

38:                                               ; preds = %37, %23, %18
  %39 = load ptr, ptr %6, align 8, !dbg !801
  %40 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %39, i32 0, i32 0, !dbg !801
  %41 = load ptr, ptr %40, align 8, !dbg !801
  %42 = icmp ne ptr %41, null, !dbg !801
  br i1 %42, label %43, label %47, !dbg !804

43:                                               ; preds = %38
  %44 = load ptr, ptr %6, align 8, !dbg !801
  %45 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %44, i32 0, i32 0, !dbg !801
  %46 = load ptr, ptr %45, align 8, !dbg !801
  call void @free(ptr noundef %46) #9, !dbg !801
  br label %47, !dbg !801

47:                                               ; preds = %43, %38
  %48 = load ptr, ptr %6, align 8, !dbg !805
  %49 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %48, i32 0, i32 0, !dbg !806
  store ptr null, ptr %49, align 8, !dbg !807
  %50 = load ptr, ptr %6, align 8, !dbg !808
  %51 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %50, i32 0, i32 3, !dbg !810
  %52 = load i64, ptr %51, align 8, !dbg !810
  %53 = icmp eq i64 %52, 8, !dbg !811
  br i1 %53, label %54, label %58, !dbg !812

54:                                               ; preds = %47
  %55 = load ptr, ptr %6, align 8, !dbg !813
  %56 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %55, i32 0, i32 1, !dbg !814
  %57 = call i32 @inflateEnd(ptr noundef %56), !dbg !815
  br label %58, !dbg !815

58:                                               ; preds = %54, %47
  %59 = load ptr, ptr %6, align 8, !dbg !816
  %60 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %59, i32 0, i32 3, !dbg !817
  store i64 0, ptr %60, align 8, !dbg !818
  %61 = load ptr, ptr %6, align 8, !dbg !819
  %62 = icmp ne ptr %61, null, !dbg !819
  br i1 %62, label %63, label %65, !dbg !822

63:                                               ; preds = %58
  %64 = load ptr, ptr %6, align 8, !dbg !819
  call void @free(ptr noundef %64) #9, !dbg !819
  br label %65, !dbg !819

65:                                               ; preds = %63, %58
  %66 = load ptr, ptr %5, align 8, !dbg !823
  %67 = getelementptr inbounds %struct.unz64_s, ptr %66, i32 0, i32 13, !dbg !824
  store ptr null, ptr %67, align 8, !dbg !825
  %68 = load i32, ptr %4, align 4, !dbg !826
  store i32 %68, ptr %2, align 4, !dbg !827
  br label %69, !dbg !827

69:                                               ; preds = %65, %17, %9
  %70 = load i32, ptr %2, align 4, !dbg !828
  ret i32 %70, !dbg !828
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzGetGlobalInfo64(ptr noundef %0, ptr noundef %1) #0 !dbg !829 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !833, metadata !DIExpression()), !dbg !834
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !835, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.declare(metadata ptr %6, metadata !837, metadata !DIExpression()), !dbg !838
  %7 = load ptr, ptr %4, align 8, !dbg !839
  %8 = icmp eq ptr %7, null, !dbg !841
  br i1 %8, label %9, label %10, !dbg !842

9:                                                ; preds = %2
  store i32 -102, ptr %3, align 4, !dbg !843
  br label %15, !dbg !843

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !844
  store ptr %11, ptr %6, align 8, !dbg !845
  %12 = load ptr, ptr %5, align 8, !dbg !846
  %13 = load ptr, ptr %6, align 8, !dbg !847
  %14 = getelementptr inbounds %struct.unz64_s, ptr %13, i32 0, i32 3, !dbg !848
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %14, i64 16, i1 false), !dbg !848
  store i32 0, ptr %3, align 4, !dbg !849
  br label %15, !dbg !849

15:                                               ; preds = %10, %9
  %16 = load i32, ptr %3, align 4, !dbg !850
  ret i32 %16, !dbg !850
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzGetGlobalInfo(ptr noundef %0, ptr noundef %1) #0 !dbg !851 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !860, metadata !DIExpression()), !dbg !861
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !862, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.declare(metadata ptr %6, metadata !864, metadata !DIExpression()), !dbg !865
  %7 = load ptr, ptr %4, align 8, !dbg !866
  %8 = icmp eq ptr %7, null, !dbg !868
  br i1 %8, label %9, label %10, !dbg !869

9:                                                ; preds = %2
  store i32 -102, ptr %3, align 4, !dbg !870
  br label %24, !dbg !870

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !871
  store ptr %11, ptr %6, align 8, !dbg !872
  %12 = load ptr, ptr %6, align 8, !dbg !873
  %13 = getelementptr inbounds %struct.unz64_s, ptr %12, i32 0, i32 3, !dbg !874
  %14 = getelementptr inbounds %struct.unz_global_info64_s, ptr %13, i32 0, i32 0, !dbg !875
  %15 = load i64, ptr %14, align 8, !dbg !875
  %16 = load ptr, ptr %5, align 8, !dbg !876
  %17 = getelementptr inbounds %struct.unz_global_info_s, ptr %16, i32 0, i32 0, !dbg !877
  store i64 %15, ptr %17, align 8, !dbg !878
  %18 = load ptr, ptr %6, align 8, !dbg !879
  %19 = getelementptr inbounds %struct.unz64_s, ptr %18, i32 0, i32 3, !dbg !880
  %20 = getelementptr inbounds %struct.unz_global_info64_s, ptr %19, i32 0, i32 1, !dbg !881
  %21 = load i64, ptr %20, align 8, !dbg !881
  %22 = load ptr, ptr %5, align 8, !dbg !882
  %23 = getelementptr inbounds %struct.unz_global_info_s, ptr %22, i32 0, i32 1, !dbg !883
  store i64 %21, ptr %23, align 8, !dbg !884
  store i32 0, ptr %3, align 4, !dbg !885
  br label %24, !dbg !885

24:                                               ; preds = %10, %9
  %25 = load i32, ptr %3, align 4, !dbg !886
  ret i32 %25, !dbg !886
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzGetCurrentFileInfo64(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) #0 !dbg !887 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !891, metadata !DIExpression()), !dbg !892
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !893, metadata !DIExpression()), !dbg !894
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !895, metadata !DIExpression()), !dbg !896
  store i64 %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !897, metadata !DIExpression()), !dbg !898
  store ptr %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !899, metadata !DIExpression()), !dbg !900
  store i64 %5, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !901, metadata !DIExpression()), !dbg !902
  store ptr %6, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !903, metadata !DIExpression()), !dbg !904
  store i64 %7, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !905, metadata !DIExpression()), !dbg !906
  %17 = load ptr, ptr %9, align 8, !dbg !907
  %18 = load ptr, ptr %10, align 8, !dbg !908
  %19 = load ptr, ptr %11, align 8, !dbg !909
  %20 = load i64, ptr %12, align 8, !dbg !910
  %21 = load ptr, ptr %13, align 8, !dbg !911
  %22 = load i64, ptr %14, align 8, !dbg !912
  %23 = load ptr, ptr %15, align 8, !dbg !913
  %24 = load i64, ptr %16, align 8, !dbg !914
  %25 = call i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef %17, ptr noundef %18, ptr noundef null, ptr noundef %19, i64 noundef %20, ptr noundef %21, i64 noundef %22, ptr noundef %23, i64 noundef %24), !dbg !915
  ret i32 %25, !dbg !916
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8) #0 !dbg !917 {
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  %21 = alloca %struct.unz_file_info64_s, align 8
  %22 = alloca %struct.unz_file_info64_internal_s, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  store ptr %0, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !921, metadata !DIExpression()), !dbg !922
  store ptr %1, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !923, metadata !DIExpression()), !dbg !924
  store ptr %2, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !925, metadata !DIExpression()), !dbg !926
  store ptr %3, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !927, metadata !DIExpression()), !dbg !928
  store i64 %4, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !929, metadata !DIExpression()), !dbg !930
  store ptr %5, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !931, metadata !DIExpression()), !dbg !932
  store i64 %6, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !933, metadata !DIExpression()), !dbg !934
  store ptr %7, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !935, metadata !DIExpression()), !dbg !936
  store i64 %8, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !937, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.declare(metadata ptr %20, metadata !939, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.declare(metadata ptr %21, metadata !941, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.declare(metadata ptr %22, metadata !943, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.declare(metadata ptr %23, metadata !945, metadata !DIExpression()), !dbg !946
  store i32 0, ptr %23, align 4, !dbg !946
  call void @llvm.dbg.declare(metadata ptr %24, metadata !947, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.declare(metadata ptr %25, metadata !949, metadata !DIExpression()), !dbg !950
  store i64 0, ptr %25, align 8, !dbg !950
  call void @llvm.dbg.declare(metadata ptr %26, metadata !951, metadata !DIExpression()), !dbg !952
  %34 = load ptr, ptr %11, align 8, !dbg !953
  %35 = icmp eq ptr %34, null, !dbg !955
  br i1 %35, label %36, label %37, !dbg !956

36:                                               ; preds = %9
  store i32 -102, ptr %10, align 4, !dbg !957
  br label %578, !dbg !957

37:                                               ; preds = %9
  %38 = load ptr, ptr %11, align 8, !dbg !958
  store ptr %38, ptr %20, align 8, !dbg !959
  %39 = load ptr, ptr %20, align 8, !dbg !960
  %40 = getelementptr inbounds %struct.unz64_s, ptr %39, i32 0, i32 0, !dbg !960
  %41 = load ptr, ptr %20, align 8, !dbg !960
  %42 = getelementptr inbounds %struct.unz64_s, ptr %41, i32 0, i32 2, !dbg !960
  %43 = load ptr, ptr %42, align 8, !dbg !960
  %44 = load ptr, ptr %20, align 8, !dbg !960
  %45 = getelementptr inbounds %struct.unz64_s, ptr %44, i32 0, i32 6, !dbg !960
  %46 = load i64, ptr %45, align 8, !dbg !960
  %47 = load ptr, ptr %20, align 8, !dbg !960
  %48 = getelementptr inbounds %struct.unz64_s, ptr %47, i32 0, i32 4, !dbg !960
  %49 = load i64, ptr %48, align 8, !dbg !960
  %50 = add i64 %46, %49, !dbg !960
  %51 = call i64 @call_zseek64(ptr noundef %40, ptr noundef %43, i64 noundef %50, i32 noundef 0), !dbg !960
  %52 = icmp ne i64 %51, 0, !dbg !962
  br i1 %52, label %53, label %54, !dbg !963

53:                                               ; preds = %37
  store i32 -1, ptr %23, align 4, !dbg !964
  br label %54, !dbg !965

54:                                               ; preds = %53, %37
  %55 = load i32, ptr %23, align 4, !dbg !966
  %56 = icmp eq i32 %55, 0, !dbg !968
  br i1 %56, label %57, label %72, !dbg !969

57:                                               ; preds = %54
  %58 = load ptr, ptr %20, align 8, !dbg !970
  %59 = getelementptr inbounds %struct.unz64_s, ptr %58, i32 0, i32 0, !dbg !973
  %60 = load ptr, ptr %20, align 8, !dbg !974
  %61 = getelementptr inbounds %struct.unz64_s, ptr %60, i32 0, i32 2, !dbg !975
  %62 = load ptr, ptr %61, align 8, !dbg !975
  %63 = call i32 @unz64local_getLong(ptr noundef %59, ptr noundef %62, ptr noundef %24), !dbg !976
  %64 = icmp ne i32 %63, 0, !dbg !977
  br i1 %64, label %65, label %66, !dbg !978

65:                                               ; preds = %57
  store i32 -1, ptr %23, align 4, !dbg !979
  br label %71, !dbg !980

66:                                               ; preds = %57
  %67 = load i64, ptr %24, align 8, !dbg !981
  %68 = icmp ne i64 %67, 33639248, !dbg !983
  br i1 %68, label %69, label %70, !dbg !984

69:                                               ; preds = %66
  store i32 -103, ptr %23, align 4, !dbg !985
  br label %70, !dbg !986

70:                                               ; preds = %69, %66
  br label %71

71:                                               ; preds = %70, %65
  br label %72, !dbg !987

72:                                               ; preds = %71, %54
  %73 = load ptr, ptr %20, align 8, !dbg !988
  %74 = getelementptr inbounds %struct.unz64_s, ptr %73, i32 0, i32 0, !dbg !990
  %75 = load ptr, ptr %20, align 8, !dbg !991
  %76 = getelementptr inbounds %struct.unz64_s, ptr %75, i32 0, i32 2, !dbg !992
  %77 = load ptr, ptr %76, align 8, !dbg !992
  %78 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 0, !dbg !993
  %79 = call i32 @unz64local_getShort(ptr noundef %74, ptr noundef %77, ptr noundef %78), !dbg !994
  %80 = icmp ne i32 %79, 0, !dbg !995
  br i1 %80, label %81, label %82, !dbg !996

81:                                               ; preds = %72
  store i32 -1, ptr %23, align 4, !dbg !997
  br label %82, !dbg !998

82:                                               ; preds = %81, %72
  %83 = load ptr, ptr %20, align 8, !dbg !999
  %84 = getelementptr inbounds %struct.unz64_s, ptr %83, i32 0, i32 0, !dbg !1001
  %85 = load ptr, ptr %20, align 8, !dbg !1002
  %86 = getelementptr inbounds %struct.unz64_s, ptr %85, i32 0, i32 2, !dbg !1003
  %87 = load ptr, ptr %86, align 8, !dbg !1003
  %88 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 1, !dbg !1004
  %89 = call i32 @unz64local_getShort(ptr noundef %84, ptr noundef %87, ptr noundef %88), !dbg !1005
  %90 = icmp ne i32 %89, 0, !dbg !1006
  br i1 %90, label %91, label %92, !dbg !1007

91:                                               ; preds = %82
  store i32 -1, ptr %23, align 4, !dbg !1008
  br label %92, !dbg !1009

92:                                               ; preds = %91, %82
  %93 = load ptr, ptr %20, align 8, !dbg !1010
  %94 = getelementptr inbounds %struct.unz64_s, ptr %93, i32 0, i32 0, !dbg !1012
  %95 = load ptr, ptr %20, align 8, !dbg !1013
  %96 = getelementptr inbounds %struct.unz64_s, ptr %95, i32 0, i32 2, !dbg !1014
  %97 = load ptr, ptr %96, align 8, !dbg !1014
  %98 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 2, !dbg !1015
  %99 = call i32 @unz64local_getShort(ptr noundef %94, ptr noundef %97, ptr noundef %98), !dbg !1016
  %100 = icmp ne i32 %99, 0, !dbg !1017
  br i1 %100, label %101, label %102, !dbg !1018

101:                                              ; preds = %92
  store i32 -1, ptr %23, align 4, !dbg !1019
  br label %102, !dbg !1020

102:                                              ; preds = %101, %92
  %103 = load ptr, ptr %20, align 8, !dbg !1021
  %104 = getelementptr inbounds %struct.unz64_s, ptr %103, i32 0, i32 0, !dbg !1023
  %105 = load ptr, ptr %20, align 8, !dbg !1024
  %106 = getelementptr inbounds %struct.unz64_s, ptr %105, i32 0, i32 2, !dbg !1025
  %107 = load ptr, ptr %106, align 8, !dbg !1025
  %108 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 3, !dbg !1026
  %109 = call i32 @unz64local_getShort(ptr noundef %104, ptr noundef %107, ptr noundef %108), !dbg !1027
  %110 = icmp ne i32 %109, 0, !dbg !1028
  br i1 %110, label %111, label %112, !dbg !1029

111:                                              ; preds = %102
  store i32 -1, ptr %23, align 4, !dbg !1030
  br label %112, !dbg !1031

112:                                              ; preds = %111, %102
  %113 = load ptr, ptr %20, align 8, !dbg !1032
  %114 = getelementptr inbounds %struct.unz64_s, ptr %113, i32 0, i32 0, !dbg !1034
  %115 = load ptr, ptr %20, align 8, !dbg !1035
  %116 = getelementptr inbounds %struct.unz64_s, ptr %115, i32 0, i32 2, !dbg !1036
  %117 = load ptr, ptr %116, align 8, !dbg !1036
  %118 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 4, !dbg !1037
  %119 = call i32 @unz64local_getLong(ptr noundef %114, ptr noundef %117, ptr noundef %118), !dbg !1038
  %120 = icmp ne i32 %119, 0, !dbg !1039
  br i1 %120, label %121, label %122, !dbg !1040

121:                                              ; preds = %112
  store i32 -1, ptr %23, align 4, !dbg !1041
  br label %122, !dbg !1042

122:                                              ; preds = %121, %112
  %123 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 4, !dbg !1043
  %124 = load i64, ptr %123, align 8, !dbg !1043
  %125 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 14, !dbg !1044
  call void @unz64local_DosDateToTmuDate(i64 noundef %124, ptr noundef %125), !dbg !1045
  %126 = load ptr, ptr %20, align 8, !dbg !1046
  %127 = getelementptr inbounds %struct.unz64_s, ptr %126, i32 0, i32 0, !dbg !1048
  %128 = load ptr, ptr %20, align 8, !dbg !1049
  %129 = getelementptr inbounds %struct.unz64_s, ptr %128, i32 0, i32 2, !dbg !1050
  %130 = load ptr, ptr %129, align 8, !dbg !1050
  %131 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 5, !dbg !1051
  %132 = call i32 @unz64local_getLong(ptr noundef %127, ptr noundef %130, ptr noundef %131), !dbg !1052
  %133 = icmp ne i32 %132, 0, !dbg !1053
  br i1 %133, label %134, label %135, !dbg !1054

134:                                              ; preds = %122
  store i32 -1, ptr %23, align 4, !dbg !1055
  br label %135, !dbg !1056

135:                                              ; preds = %134, %122
  %136 = load ptr, ptr %20, align 8, !dbg !1057
  %137 = getelementptr inbounds %struct.unz64_s, ptr %136, i32 0, i32 0, !dbg !1059
  %138 = load ptr, ptr %20, align 8, !dbg !1060
  %139 = getelementptr inbounds %struct.unz64_s, ptr %138, i32 0, i32 2, !dbg !1061
  %140 = load ptr, ptr %139, align 8, !dbg !1061
  %141 = call i32 @unz64local_getLong(ptr noundef %137, ptr noundef %140, ptr noundef %26), !dbg !1062
  %142 = icmp ne i32 %141, 0, !dbg !1063
  br i1 %142, label %143, label %144, !dbg !1064

143:                                              ; preds = %135
  store i32 -1, ptr %23, align 4, !dbg !1065
  br label %144, !dbg !1066

144:                                              ; preds = %143, %135
  %145 = load i64, ptr %26, align 8, !dbg !1067
  %146 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 6, !dbg !1068
  store i64 %145, ptr %146, align 8, !dbg !1069
  %147 = load ptr, ptr %20, align 8, !dbg !1070
  %148 = getelementptr inbounds %struct.unz64_s, ptr %147, i32 0, i32 0, !dbg !1072
  %149 = load ptr, ptr %20, align 8, !dbg !1073
  %150 = getelementptr inbounds %struct.unz64_s, ptr %149, i32 0, i32 2, !dbg !1074
  %151 = load ptr, ptr %150, align 8, !dbg !1074
  %152 = call i32 @unz64local_getLong(ptr noundef %148, ptr noundef %151, ptr noundef %26), !dbg !1075
  %153 = icmp ne i32 %152, 0, !dbg !1076
  br i1 %153, label %154, label %155, !dbg !1077

154:                                              ; preds = %144
  store i32 -1, ptr %23, align 4, !dbg !1078
  br label %155, !dbg !1079

155:                                              ; preds = %154, %144
  %156 = load i64, ptr %26, align 8, !dbg !1080
  %157 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 7, !dbg !1081
  store i64 %156, ptr %157, align 8, !dbg !1082
  %158 = load ptr, ptr %20, align 8, !dbg !1083
  %159 = getelementptr inbounds %struct.unz64_s, ptr %158, i32 0, i32 0, !dbg !1085
  %160 = load ptr, ptr %20, align 8, !dbg !1086
  %161 = getelementptr inbounds %struct.unz64_s, ptr %160, i32 0, i32 2, !dbg !1087
  %162 = load ptr, ptr %161, align 8, !dbg !1087
  %163 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 8, !dbg !1088
  %164 = call i32 @unz64local_getShort(ptr noundef %159, ptr noundef %162, ptr noundef %163), !dbg !1089
  %165 = icmp ne i32 %164, 0, !dbg !1090
  br i1 %165, label %166, label %167, !dbg !1091

166:                                              ; preds = %155
  store i32 -1, ptr %23, align 4, !dbg !1092
  br label %167, !dbg !1093

167:                                              ; preds = %166, %155
  %168 = load ptr, ptr %20, align 8, !dbg !1094
  %169 = getelementptr inbounds %struct.unz64_s, ptr %168, i32 0, i32 0, !dbg !1096
  %170 = load ptr, ptr %20, align 8, !dbg !1097
  %171 = getelementptr inbounds %struct.unz64_s, ptr %170, i32 0, i32 2, !dbg !1098
  %172 = load ptr, ptr %171, align 8, !dbg !1098
  %173 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 9, !dbg !1099
  %174 = call i32 @unz64local_getShort(ptr noundef %169, ptr noundef %172, ptr noundef %173), !dbg !1100
  %175 = icmp ne i32 %174, 0, !dbg !1101
  br i1 %175, label %176, label %177, !dbg !1102

176:                                              ; preds = %167
  store i32 -1, ptr %23, align 4, !dbg !1103
  br label %177, !dbg !1104

177:                                              ; preds = %176, %167
  %178 = load ptr, ptr %20, align 8, !dbg !1105
  %179 = getelementptr inbounds %struct.unz64_s, ptr %178, i32 0, i32 0, !dbg !1107
  %180 = load ptr, ptr %20, align 8, !dbg !1108
  %181 = getelementptr inbounds %struct.unz64_s, ptr %180, i32 0, i32 2, !dbg !1109
  %182 = load ptr, ptr %181, align 8, !dbg !1109
  %183 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 10, !dbg !1110
  %184 = call i32 @unz64local_getShort(ptr noundef %179, ptr noundef %182, ptr noundef %183), !dbg !1111
  %185 = icmp ne i32 %184, 0, !dbg !1112
  br i1 %185, label %186, label %187, !dbg !1113

186:                                              ; preds = %177
  store i32 -1, ptr %23, align 4, !dbg !1114
  br label %187, !dbg !1115

187:                                              ; preds = %186, %177
  %188 = load ptr, ptr %20, align 8, !dbg !1116
  %189 = getelementptr inbounds %struct.unz64_s, ptr %188, i32 0, i32 0, !dbg !1118
  %190 = load ptr, ptr %20, align 8, !dbg !1119
  %191 = getelementptr inbounds %struct.unz64_s, ptr %190, i32 0, i32 2, !dbg !1120
  %192 = load ptr, ptr %191, align 8, !dbg !1120
  %193 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 11, !dbg !1121
  %194 = call i32 @unz64local_getShort(ptr noundef %189, ptr noundef %192, ptr noundef %193), !dbg !1122
  %195 = icmp ne i32 %194, 0, !dbg !1123
  br i1 %195, label %196, label %197, !dbg !1124

196:                                              ; preds = %187
  store i32 -1, ptr %23, align 4, !dbg !1125
  br label %197, !dbg !1126

197:                                              ; preds = %196, %187
  %198 = load ptr, ptr %20, align 8, !dbg !1127
  %199 = getelementptr inbounds %struct.unz64_s, ptr %198, i32 0, i32 0, !dbg !1129
  %200 = load ptr, ptr %20, align 8, !dbg !1130
  %201 = getelementptr inbounds %struct.unz64_s, ptr %200, i32 0, i32 2, !dbg !1131
  %202 = load ptr, ptr %201, align 8, !dbg !1131
  %203 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 12, !dbg !1132
  %204 = call i32 @unz64local_getShort(ptr noundef %199, ptr noundef %202, ptr noundef %203), !dbg !1133
  %205 = icmp ne i32 %204, 0, !dbg !1134
  br i1 %205, label %206, label %207, !dbg !1135

206:                                              ; preds = %197
  store i32 -1, ptr %23, align 4, !dbg !1136
  br label %207, !dbg !1137

207:                                              ; preds = %206, %197
  %208 = load ptr, ptr %20, align 8, !dbg !1138
  %209 = getelementptr inbounds %struct.unz64_s, ptr %208, i32 0, i32 0, !dbg !1140
  %210 = load ptr, ptr %20, align 8, !dbg !1141
  %211 = getelementptr inbounds %struct.unz64_s, ptr %210, i32 0, i32 2, !dbg !1142
  %212 = load ptr, ptr %211, align 8, !dbg !1142
  %213 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 13, !dbg !1143
  %214 = call i32 @unz64local_getLong(ptr noundef %209, ptr noundef %212, ptr noundef %213), !dbg !1144
  %215 = icmp ne i32 %214, 0, !dbg !1145
  br i1 %215, label %216, label %217, !dbg !1146

216:                                              ; preds = %207
  store i32 -1, ptr %23, align 4, !dbg !1147
  br label %217, !dbg !1148

217:                                              ; preds = %216, %207
  %218 = load ptr, ptr %20, align 8, !dbg !1149
  %219 = getelementptr inbounds %struct.unz64_s, ptr %218, i32 0, i32 0, !dbg !1151
  %220 = load ptr, ptr %20, align 8, !dbg !1152
  %221 = getelementptr inbounds %struct.unz64_s, ptr %220, i32 0, i32 2, !dbg !1153
  %222 = load ptr, ptr %221, align 8, !dbg !1153
  %223 = call i32 @unz64local_getLong(ptr noundef %219, ptr noundef %222, ptr noundef %26), !dbg !1154
  %224 = icmp ne i32 %223, 0, !dbg !1155
  br i1 %224, label %225, label %226, !dbg !1156

225:                                              ; preds = %217
  store i32 -1, ptr %23, align 4, !dbg !1157
  br label %226, !dbg !1158

226:                                              ; preds = %225, %217
  %227 = load i64, ptr %26, align 8, !dbg !1159
  %228 = getelementptr inbounds %struct.unz_file_info64_internal_s, ptr %22, i32 0, i32 0, !dbg !1160
  store i64 %227, ptr %228, align 8, !dbg !1161
  %229 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 8, !dbg !1162
  %230 = load i64, ptr %229, align 8, !dbg !1162
  %231 = load i64, ptr %25, align 8, !dbg !1163
  %232 = add i64 %231, %230, !dbg !1163
  store i64 %232, ptr %25, align 8, !dbg !1163
  %233 = load i32, ptr %23, align 4, !dbg !1164
  %234 = icmp eq i32 %233, 0, !dbg !1166
  br i1 %234, label %235, label %284, !dbg !1167

235:                                              ; preds = %226
  %236 = load ptr, ptr %14, align 8, !dbg !1168
  %237 = icmp ne ptr %236, null, !dbg !1169
  br i1 %237, label %238, label %284, !dbg !1170

238:                                              ; preds = %235
  call void @llvm.dbg.declare(metadata ptr %27, metadata !1171, metadata !DIExpression()), !dbg !1173
  %239 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 8, !dbg !1174
  %240 = load i64, ptr %239, align 8, !dbg !1174
  %241 = load i64, ptr %15, align 8, !dbg !1176
  %242 = icmp ult i64 %240, %241, !dbg !1177
  br i1 %242, label %243, label %250, !dbg !1178

243:                                              ; preds = %238
  %244 = load ptr, ptr %14, align 8, !dbg !1179
  %245 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 8, !dbg !1181
  %246 = load i64, ptr %245, align 8, !dbg !1181
  %247 = getelementptr inbounds i8, ptr %244, i64 %246, !dbg !1182
  store i8 0, ptr %247, align 1, !dbg !1183
  %248 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 8, !dbg !1184
  %249 = load i64, ptr %248, align 8, !dbg !1184
  store i64 %249, ptr %27, align 8, !dbg !1185
  br label %252, !dbg !1186

250:                                              ; preds = %238
  %251 = load i64, ptr %15, align 8, !dbg !1187
  store i64 %251, ptr %27, align 8, !dbg !1188
  br label %252

252:                                              ; preds = %250, %243
  %253 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 8, !dbg !1189
  %254 = load i64, ptr %253, align 8, !dbg !1189
  %255 = icmp ugt i64 %254, 0, !dbg !1191
  br i1 %255, label %256, label %280, !dbg !1192

256:                                              ; preds = %252
  %257 = load i64, ptr %15, align 8, !dbg !1193
  %258 = icmp ugt i64 %257, 0, !dbg !1194
  br i1 %258, label %259, label %280, !dbg !1195

259:                                              ; preds = %256
  %260 = load ptr, ptr %20, align 8, !dbg !1196
  %261 = getelementptr inbounds %struct.unz64_s, ptr %260, i32 0, i32 0, !dbg !1196
  %262 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %261, i32 0, i32 0, !dbg !1196
  %263 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %262, i32 0, i32 1, !dbg !1196
  %264 = load ptr, ptr %263, align 8, !dbg !1196
  %265 = load ptr, ptr %20, align 8, !dbg !1196
  %266 = getelementptr inbounds %struct.unz64_s, ptr %265, i32 0, i32 0, !dbg !1196
  %267 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %266, i32 0, i32 0, !dbg !1196
  %268 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %267, i32 0, i32 8, !dbg !1196
  %269 = load ptr, ptr %268, align 8, !dbg !1196
  %270 = load ptr, ptr %20, align 8, !dbg !1196
  %271 = getelementptr inbounds %struct.unz64_s, ptr %270, i32 0, i32 2, !dbg !1196
  %272 = load ptr, ptr %271, align 8, !dbg !1196
  %273 = load ptr, ptr %14, align 8, !dbg !1196
  %274 = load i64, ptr %27, align 8, !dbg !1196
  %275 = call i64 %264(ptr noundef %269, ptr noundef %272, ptr noundef %273, i64 noundef %274), !dbg !1196
  %276 = load i64, ptr %27, align 8, !dbg !1198
  %277 = icmp ne i64 %275, %276, !dbg !1199
  br i1 %277, label %278, label %279, !dbg !1200

278:                                              ; preds = %259
  store i32 -1, ptr %23, align 4, !dbg !1201
  br label %279, !dbg !1202

279:                                              ; preds = %278, %259
  br label %280, !dbg !1198

280:                                              ; preds = %279, %256, %252
  %281 = load i64, ptr %27, align 8, !dbg !1203
  %282 = load i64, ptr %25, align 8, !dbg !1204
  %283 = sub i64 %282, %281, !dbg !1204
  store i64 %283, ptr %25, align 8, !dbg !1204
  br label %284, !dbg !1205

284:                                              ; preds = %280, %235, %226
  %285 = load i32, ptr %23, align 4, !dbg !1206
  %286 = icmp eq i32 %285, 0, !dbg !1208
  br i1 %286, label %287, label %350, !dbg !1209

287:                                              ; preds = %284
  %288 = load ptr, ptr %16, align 8, !dbg !1210
  %289 = icmp ne ptr %288, null, !dbg !1211
  br i1 %289, label %290, label %350, !dbg !1212

290:                                              ; preds = %287
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1213, metadata !DIExpression()), !dbg !1215
  %291 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 9, !dbg !1216
  %292 = load i64, ptr %291, align 8, !dbg !1216
  %293 = load i64, ptr %17, align 8, !dbg !1218
  %294 = icmp ult i64 %292, %293, !dbg !1219
  br i1 %294, label %295, label %298, !dbg !1220

295:                                              ; preds = %290
  %296 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 9, !dbg !1221
  %297 = load i64, ptr %296, align 8, !dbg !1221
  store i64 %297, ptr %28, align 8, !dbg !1222
  br label %300, !dbg !1223

298:                                              ; preds = %290
  %299 = load i64, ptr %17, align 8, !dbg !1224
  store i64 %299, ptr %28, align 8, !dbg !1225
  br label %300

300:                                              ; preds = %298, %295
  %301 = load i64, ptr %25, align 8, !dbg !1226
  %302 = icmp ne i64 %301, 0, !dbg !1228
  br i1 %302, label %303, label %315, !dbg !1229

303:                                              ; preds = %300
  %304 = load ptr, ptr %20, align 8, !dbg !1230
  %305 = getelementptr inbounds %struct.unz64_s, ptr %304, i32 0, i32 0, !dbg !1230
  %306 = load ptr, ptr %20, align 8, !dbg !1230
  %307 = getelementptr inbounds %struct.unz64_s, ptr %306, i32 0, i32 2, !dbg !1230
  %308 = load ptr, ptr %307, align 8, !dbg !1230
  %309 = load i64, ptr %25, align 8, !dbg !1230
  %310 = call i64 @call_zseek64(ptr noundef %305, ptr noundef %308, i64 noundef %309, i32 noundef 1), !dbg !1230
  %311 = icmp eq i64 %310, 0, !dbg !1233
  br i1 %311, label %312, label %313, !dbg !1234

312:                                              ; preds = %303
  store i64 0, ptr %25, align 8, !dbg !1235
  br label %314, !dbg !1236

313:                                              ; preds = %303
  store i32 -1, ptr %23, align 4, !dbg !1237
  br label %314

314:                                              ; preds = %313, %312
  br label %315, !dbg !1238

315:                                              ; preds = %314, %300
  %316 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 9, !dbg !1239
  %317 = load i64, ptr %316, align 8, !dbg !1239
  %318 = icmp ugt i64 %317, 0, !dbg !1241
  br i1 %318, label %319, label %343, !dbg !1242

319:                                              ; preds = %315
  %320 = load i64, ptr %17, align 8, !dbg !1243
  %321 = icmp ugt i64 %320, 0, !dbg !1244
  br i1 %321, label %322, label %343, !dbg !1245

322:                                              ; preds = %319
  %323 = load ptr, ptr %20, align 8, !dbg !1246
  %324 = getelementptr inbounds %struct.unz64_s, ptr %323, i32 0, i32 0, !dbg !1246
  %325 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %324, i32 0, i32 0, !dbg !1246
  %326 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %325, i32 0, i32 1, !dbg !1246
  %327 = load ptr, ptr %326, align 8, !dbg !1246
  %328 = load ptr, ptr %20, align 8, !dbg !1246
  %329 = getelementptr inbounds %struct.unz64_s, ptr %328, i32 0, i32 0, !dbg !1246
  %330 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %329, i32 0, i32 0, !dbg !1246
  %331 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %330, i32 0, i32 8, !dbg !1246
  %332 = load ptr, ptr %331, align 8, !dbg !1246
  %333 = load ptr, ptr %20, align 8, !dbg !1246
  %334 = getelementptr inbounds %struct.unz64_s, ptr %333, i32 0, i32 2, !dbg !1246
  %335 = load ptr, ptr %334, align 8, !dbg !1246
  %336 = load ptr, ptr %16, align 8, !dbg !1246
  %337 = load i64, ptr %28, align 8, !dbg !1246
  %338 = call i64 %327(ptr noundef %332, ptr noundef %335, ptr noundef %336, i64 noundef %337), !dbg !1246
  %339 = load i64, ptr %28, align 8, !dbg !1248
  %340 = icmp ne i64 %338, %339, !dbg !1249
  br i1 %340, label %341, label %342, !dbg !1250

341:                                              ; preds = %322
  store i32 -1, ptr %23, align 4, !dbg !1251
  br label %342, !dbg !1252

342:                                              ; preds = %341, %322
  br label %343, !dbg !1248

343:                                              ; preds = %342, %319, %315
  %344 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 9, !dbg !1253
  %345 = load i64, ptr %344, align 8, !dbg !1253
  %346 = load i64, ptr %28, align 8, !dbg !1254
  %347 = sub i64 %345, %346, !dbg !1255
  %348 = load i64, ptr %25, align 8, !dbg !1256
  %349 = add i64 %348, %347, !dbg !1256
  store i64 %349, ptr %25, align 8, !dbg !1256
  br label %355, !dbg !1257

350:                                              ; preds = %287, %284
  %351 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 9, !dbg !1258
  %352 = load i64, ptr %351, align 8, !dbg !1258
  %353 = load i64, ptr %25, align 8, !dbg !1259
  %354 = add i64 %353, %352, !dbg !1259
  store i64 %354, ptr %25, align 8, !dbg !1259
  br label %355

355:                                              ; preds = %350, %343
  %356 = load i32, ptr %23, align 4, !dbg !1260
  %357 = icmp eq i32 %356, 0, !dbg !1262
  br i1 %357, label %358, label %485, !dbg !1263

358:                                              ; preds = %355
  %359 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 9, !dbg !1264
  %360 = load i64, ptr %359, align 8, !dbg !1264
  %361 = icmp ne i64 %360, 0, !dbg !1265
  br i1 %361, label %362, label %485, !dbg !1266

362:                                              ; preds = %358
  call void @llvm.dbg.declare(metadata ptr %29, metadata !1267, metadata !DIExpression()), !dbg !1269
  store i64 0, ptr %29, align 8, !dbg !1269
  %363 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 9, !dbg !1270
  %364 = load i64, ptr %363, align 8, !dbg !1270
  %365 = load i64, ptr %25, align 8, !dbg !1271
  %366 = sub i64 %365, %364, !dbg !1271
  store i64 %366, ptr %25, align 8, !dbg !1271
  %367 = load i64, ptr %25, align 8, !dbg !1272
  %368 = icmp ne i64 %367, 0, !dbg !1274
  br i1 %368, label %369, label %381, !dbg !1275

369:                                              ; preds = %362
  %370 = load ptr, ptr %20, align 8, !dbg !1276
  %371 = getelementptr inbounds %struct.unz64_s, ptr %370, i32 0, i32 0, !dbg !1276
  %372 = load ptr, ptr %20, align 8, !dbg !1276
  %373 = getelementptr inbounds %struct.unz64_s, ptr %372, i32 0, i32 2, !dbg !1276
  %374 = load ptr, ptr %373, align 8, !dbg !1276
  %375 = load i64, ptr %25, align 8, !dbg !1276
  %376 = call i64 @call_zseek64(ptr noundef %371, ptr noundef %374, i64 noundef %375, i32 noundef 1), !dbg !1276
  %377 = icmp eq i64 %376, 0, !dbg !1279
  br i1 %377, label %378, label %379, !dbg !1280

378:                                              ; preds = %369
  store i64 0, ptr %25, align 8, !dbg !1281
  br label %380, !dbg !1282

379:                                              ; preds = %369
  store i32 -1, ptr %23, align 4, !dbg !1283
  br label %380

380:                                              ; preds = %379, %378
  br label %381, !dbg !1284

381:                                              ; preds = %380, %362
  br label %382, !dbg !1285

382:                                              ; preds = %479, %381
  %383 = load i64, ptr %29, align 8, !dbg !1286
  %384 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 9, !dbg !1287
  %385 = load i64, ptr %384, align 8, !dbg !1287
  %386 = icmp ult i64 %383, %385, !dbg !1288
  br i1 %386, label %387, label %484, !dbg !1285

387:                                              ; preds = %382
  call void @llvm.dbg.declare(metadata ptr %30, metadata !1289, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.declare(metadata ptr %31, metadata !1292, metadata !DIExpression()), !dbg !1293
  %388 = load ptr, ptr %20, align 8, !dbg !1294
  %389 = getelementptr inbounds %struct.unz64_s, ptr %388, i32 0, i32 0, !dbg !1296
  %390 = load ptr, ptr %20, align 8, !dbg !1297
  %391 = getelementptr inbounds %struct.unz64_s, ptr %390, i32 0, i32 2, !dbg !1298
  %392 = load ptr, ptr %391, align 8, !dbg !1298
  %393 = call i32 @unz64local_getShort(ptr noundef %389, ptr noundef %392, ptr noundef %30), !dbg !1299
  %394 = icmp ne i32 %393, 0, !dbg !1300
  br i1 %394, label %395, label %396, !dbg !1301

395:                                              ; preds = %387
  store i32 -1, ptr %23, align 4, !dbg !1302
  br label %396, !dbg !1303

396:                                              ; preds = %395, %387
  %397 = load ptr, ptr %20, align 8, !dbg !1304
  %398 = getelementptr inbounds %struct.unz64_s, ptr %397, i32 0, i32 0, !dbg !1306
  %399 = load ptr, ptr %20, align 8, !dbg !1307
  %400 = getelementptr inbounds %struct.unz64_s, ptr %399, i32 0, i32 2, !dbg !1308
  %401 = load ptr, ptr %400, align 8, !dbg !1308
  %402 = call i32 @unz64local_getShort(ptr noundef %398, ptr noundef %401, ptr noundef %31), !dbg !1309
  %403 = icmp ne i32 %402, 0, !dbg !1310
  br i1 %403, label %404, label %405, !dbg !1311

404:                                              ; preds = %396
  store i32 -1, ptr %23, align 4, !dbg !1312
  br label %405, !dbg !1313

405:                                              ; preds = %404, %396
  %406 = load i64, ptr %30, align 8, !dbg !1314
  %407 = icmp eq i64 %406, 1, !dbg !1316
  br i1 %407, label %408, label %468, !dbg !1317

408:                                              ; preds = %405
  call void @llvm.dbg.declare(metadata ptr %32, metadata !1318, metadata !DIExpression()), !dbg !1320
  %409 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 7, !dbg !1321
  %410 = load i64, ptr %409, align 8, !dbg !1321
  %411 = icmp eq i64 %410, 4294967295, !dbg !1323
  br i1 %411, label %412, label %423, !dbg !1324

412:                                              ; preds = %408
  %413 = load ptr, ptr %20, align 8, !dbg !1325
  %414 = getelementptr inbounds %struct.unz64_s, ptr %413, i32 0, i32 0, !dbg !1328
  %415 = load ptr, ptr %20, align 8, !dbg !1329
  %416 = getelementptr inbounds %struct.unz64_s, ptr %415, i32 0, i32 2, !dbg !1330
  %417 = load ptr, ptr %416, align 8, !dbg !1330
  %418 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 7, !dbg !1331
  %419 = call i32 @unz64local_getLong64(ptr noundef %414, ptr noundef %417, ptr noundef %418), !dbg !1332
  %420 = icmp ne i32 %419, 0, !dbg !1333
  br i1 %420, label %421, label %422, !dbg !1334

421:                                              ; preds = %412
  store i32 -1, ptr %23, align 4, !dbg !1335
  br label %422, !dbg !1336

422:                                              ; preds = %421, %412
  br label %423, !dbg !1337

423:                                              ; preds = %422, %408
  %424 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 6, !dbg !1338
  %425 = load i64, ptr %424, align 8, !dbg !1338
  %426 = icmp eq i64 %425, 4294967295, !dbg !1340
  br i1 %426, label %427, label %438, !dbg !1341

427:                                              ; preds = %423
  %428 = load ptr, ptr %20, align 8, !dbg !1342
  %429 = getelementptr inbounds %struct.unz64_s, ptr %428, i32 0, i32 0, !dbg !1345
  %430 = load ptr, ptr %20, align 8, !dbg !1346
  %431 = getelementptr inbounds %struct.unz64_s, ptr %430, i32 0, i32 2, !dbg !1347
  %432 = load ptr, ptr %431, align 8, !dbg !1347
  %433 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 6, !dbg !1348
  %434 = call i32 @unz64local_getLong64(ptr noundef %429, ptr noundef %432, ptr noundef %433), !dbg !1349
  %435 = icmp ne i32 %434, 0, !dbg !1350
  br i1 %435, label %436, label %437, !dbg !1351

436:                                              ; preds = %427
  store i32 -1, ptr %23, align 4, !dbg !1352
  br label %437, !dbg !1353

437:                                              ; preds = %436, %427
  br label %438, !dbg !1354

438:                                              ; preds = %437, %423
  %439 = getelementptr inbounds %struct.unz_file_info64_internal_s, ptr %22, i32 0, i32 0, !dbg !1355
  %440 = load i64, ptr %439, align 8, !dbg !1355
  %441 = icmp eq i64 %440, 4294967295, !dbg !1357
  br i1 %441, label %442, label %453, !dbg !1358

442:                                              ; preds = %438
  %443 = load ptr, ptr %20, align 8, !dbg !1359
  %444 = getelementptr inbounds %struct.unz64_s, ptr %443, i32 0, i32 0, !dbg !1362
  %445 = load ptr, ptr %20, align 8, !dbg !1363
  %446 = getelementptr inbounds %struct.unz64_s, ptr %445, i32 0, i32 2, !dbg !1364
  %447 = load ptr, ptr %446, align 8, !dbg !1364
  %448 = getelementptr inbounds %struct.unz_file_info64_internal_s, ptr %22, i32 0, i32 0, !dbg !1365
  %449 = call i32 @unz64local_getLong64(ptr noundef %444, ptr noundef %447, ptr noundef %448), !dbg !1366
  %450 = icmp ne i32 %449, 0, !dbg !1367
  br i1 %450, label %451, label %452, !dbg !1368

451:                                              ; preds = %442
  store i32 -1, ptr %23, align 4, !dbg !1369
  br label %452, !dbg !1370

452:                                              ; preds = %451, %442
  br label %453, !dbg !1371

453:                                              ; preds = %452, %438
  %454 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 11, !dbg !1372
  %455 = load i64, ptr %454, align 8, !dbg !1372
  %456 = icmp eq i64 %455, 4294967295, !dbg !1374
  br i1 %456, label %457, label %467, !dbg !1375

457:                                              ; preds = %453
  %458 = load ptr, ptr %20, align 8, !dbg !1376
  %459 = getelementptr inbounds %struct.unz64_s, ptr %458, i32 0, i32 0, !dbg !1379
  %460 = load ptr, ptr %20, align 8, !dbg !1380
  %461 = getelementptr inbounds %struct.unz64_s, ptr %460, i32 0, i32 2, !dbg !1381
  %462 = load ptr, ptr %461, align 8, !dbg !1381
  %463 = call i32 @unz64local_getLong(ptr noundef %459, ptr noundef %462, ptr noundef %32), !dbg !1382
  %464 = icmp ne i32 %463, 0, !dbg !1383
  br i1 %464, label %465, label %466, !dbg !1384

465:                                              ; preds = %457
  store i32 -1, ptr %23, align 4, !dbg !1385
  br label %466, !dbg !1386

466:                                              ; preds = %465, %457
  br label %467, !dbg !1387

467:                                              ; preds = %466, %453
  br label %479, !dbg !1388

468:                                              ; preds = %405
  %469 = load ptr, ptr %20, align 8, !dbg !1389
  %470 = getelementptr inbounds %struct.unz64_s, ptr %469, i32 0, i32 0, !dbg !1389
  %471 = load ptr, ptr %20, align 8, !dbg !1389
  %472 = getelementptr inbounds %struct.unz64_s, ptr %471, i32 0, i32 2, !dbg !1389
  %473 = load ptr, ptr %472, align 8, !dbg !1389
  %474 = load i64, ptr %31, align 8, !dbg !1389
  %475 = call i64 @call_zseek64(ptr noundef %470, ptr noundef %473, i64 noundef %474, i32 noundef 1), !dbg !1389
  %476 = icmp ne i64 %475, 0, !dbg !1392
  br i1 %476, label %477, label %478, !dbg !1393

477:                                              ; preds = %468
  store i32 -1, ptr %23, align 4, !dbg !1394
  br label %478, !dbg !1395

478:                                              ; preds = %477, %468
  br label %479

479:                                              ; preds = %478, %467
  %480 = load i64, ptr %31, align 8, !dbg !1396
  %481 = add i64 4, %480, !dbg !1397
  %482 = load i64, ptr %29, align 8, !dbg !1398
  %483 = add i64 %482, %481, !dbg !1398
  store i64 %483, ptr %29, align 8, !dbg !1398
  br label %382, !dbg !1285, !llvm.loop !1399

484:                                              ; preds = %382
  br label %485, !dbg !1402

485:                                              ; preds = %484, %358, %355
  %486 = load i32, ptr %23, align 4, !dbg !1403
  %487 = icmp eq i32 %486, 0, !dbg !1405
  br i1 %487, label %488, label %555, !dbg !1406

488:                                              ; preds = %485
  %489 = load ptr, ptr %18, align 8, !dbg !1407
  %490 = icmp ne ptr %489, null, !dbg !1408
  br i1 %490, label %491, label %555, !dbg !1409

491:                                              ; preds = %488
  call void @llvm.dbg.declare(metadata ptr %33, metadata !1410, metadata !DIExpression()), !dbg !1412
  %492 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 10, !dbg !1413
  %493 = load i64, ptr %492, align 8, !dbg !1413
  %494 = load i64, ptr %19, align 8, !dbg !1415
  %495 = icmp ult i64 %493, %494, !dbg !1416
  br i1 %495, label %496, label %503, !dbg !1417

496:                                              ; preds = %491
  %497 = load ptr, ptr %18, align 8, !dbg !1418
  %498 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 10, !dbg !1420
  %499 = load i64, ptr %498, align 8, !dbg !1420
  %500 = getelementptr inbounds i8, ptr %497, i64 %499, !dbg !1421
  store i8 0, ptr %500, align 1, !dbg !1422
  %501 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 10, !dbg !1423
  %502 = load i64, ptr %501, align 8, !dbg !1423
  store i64 %502, ptr %33, align 8, !dbg !1424
  br label %505, !dbg !1425

503:                                              ; preds = %491
  %504 = load i64, ptr %19, align 8, !dbg !1426
  store i64 %504, ptr %33, align 8, !dbg !1427
  br label %505

505:                                              ; preds = %503, %496
  %506 = load i64, ptr %25, align 8, !dbg !1428
  %507 = icmp ne i64 %506, 0, !dbg !1430
  br i1 %507, label %508, label %520, !dbg !1431

508:                                              ; preds = %505
  %509 = load ptr, ptr %20, align 8, !dbg !1432
  %510 = getelementptr inbounds %struct.unz64_s, ptr %509, i32 0, i32 0, !dbg !1432
  %511 = load ptr, ptr %20, align 8, !dbg !1432
  %512 = getelementptr inbounds %struct.unz64_s, ptr %511, i32 0, i32 2, !dbg !1432
  %513 = load ptr, ptr %512, align 8, !dbg !1432
  %514 = load i64, ptr %25, align 8, !dbg !1432
  %515 = call i64 @call_zseek64(ptr noundef %510, ptr noundef %513, i64 noundef %514, i32 noundef 1), !dbg !1432
  %516 = icmp eq i64 %515, 0, !dbg !1435
  br i1 %516, label %517, label %518, !dbg !1436

517:                                              ; preds = %508
  store i64 0, ptr %25, align 8, !dbg !1437
  br label %519, !dbg !1438

518:                                              ; preds = %508
  store i32 -1, ptr %23, align 4, !dbg !1439
  br label %519

519:                                              ; preds = %518, %517
  br label %520, !dbg !1440

520:                                              ; preds = %519, %505
  %521 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 10, !dbg !1441
  %522 = load i64, ptr %521, align 8, !dbg !1441
  %523 = icmp ugt i64 %522, 0, !dbg !1443
  br i1 %523, label %524, label %548, !dbg !1444

524:                                              ; preds = %520
  %525 = load i64, ptr %19, align 8, !dbg !1445
  %526 = icmp ugt i64 %525, 0, !dbg !1446
  br i1 %526, label %527, label %548, !dbg !1447

527:                                              ; preds = %524
  %528 = load ptr, ptr %20, align 8, !dbg !1448
  %529 = getelementptr inbounds %struct.unz64_s, ptr %528, i32 0, i32 0, !dbg !1448
  %530 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %529, i32 0, i32 0, !dbg !1448
  %531 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %530, i32 0, i32 1, !dbg !1448
  %532 = load ptr, ptr %531, align 8, !dbg !1448
  %533 = load ptr, ptr %20, align 8, !dbg !1448
  %534 = getelementptr inbounds %struct.unz64_s, ptr %533, i32 0, i32 0, !dbg !1448
  %535 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %534, i32 0, i32 0, !dbg !1448
  %536 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %535, i32 0, i32 8, !dbg !1448
  %537 = load ptr, ptr %536, align 8, !dbg !1448
  %538 = load ptr, ptr %20, align 8, !dbg !1448
  %539 = getelementptr inbounds %struct.unz64_s, ptr %538, i32 0, i32 2, !dbg !1448
  %540 = load ptr, ptr %539, align 8, !dbg !1448
  %541 = load ptr, ptr %18, align 8, !dbg !1448
  %542 = load i64, ptr %33, align 8, !dbg !1448
  %543 = call i64 %532(ptr noundef %537, ptr noundef %540, ptr noundef %541, i64 noundef %542), !dbg !1448
  %544 = load i64, ptr %33, align 8, !dbg !1450
  %545 = icmp ne i64 %543, %544, !dbg !1451
  br i1 %545, label %546, label %547, !dbg !1452

546:                                              ; preds = %527
  store i32 -1, ptr %23, align 4, !dbg !1453
  br label %547, !dbg !1454

547:                                              ; preds = %546, %527
  br label %548, !dbg !1450

548:                                              ; preds = %547, %524, %520
  %549 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 10, !dbg !1455
  %550 = load i64, ptr %549, align 8, !dbg !1455
  %551 = load i64, ptr %33, align 8, !dbg !1456
  %552 = sub i64 %550, %551, !dbg !1457
  %553 = load i64, ptr %25, align 8, !dbg !1458
  %554 = add i64 %553, %552, !dbg !1458
  store i64 %554, ptr %25, align 8, !dbg !1458
  br label %560, !dbg !1459

555:                                              ; preds = %488, %485
  %556 = getelementptr inbounds %struct.unz_file_info64_s, ptr %21, i32 0, i32 10, !dbg !1460
  %557 = load i64, ptr %556, align 8, !dbg !1460
  %558 = load i64, ptr %25, align 8, !dbg !1461
  %559 = add i64 %558, %557, !dbg !1461
  store i64 %559, ptr %25, align 8, !dbg !1461
  br label %560

560:                                              ; preds = %555, %548
  %561 = load i32, ptr %23, align 4, !dbg !1462
  %562 = icmp eq i32 %561, 0, !dbg !1464
  br i1 %562, label %563, label %568, !dbg !1465

563:                                              ; preds = %560
  %564 = load ptr, ptr %12, align 8, !dbg !1466
  %565 = icmp ne ptr %564, null, !dbg !1467
  br i1 %565, label %566, label %568, !dbg !1468

566:                                              ; preds = %563
  %567 = load ptr, ptr %12, align 8, !dbg !1469
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %567, ptr align 8 %21, i64 136, i1 false), !dbg !1470
  br label %568, !dbg !1471

568:                                              ; preds = %566, %563, %560
  %569 = load i32, ptr %23, align 4, !dbg !1472
  %570 = icmp eq i32 %569, 0, !dbg !1474
  br i1 %570, label %571, label %576, !dbg !1475

571:                                              ; preds = %568
  %572 = load ptr, ptr %13, align 8, !dbg !1476
  %573 = icmp ne ptr %572, null, !dbg !1477
  br i1 %573, label %574, label %576, !dbg !1478

574:                                              ; preds = %571
  %575 = load ptr, ptr %13, align 8, !dbg !1479
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %575, ptr align 8 %22, i64 8, i1 false), !dbg !1480
  br label %576, !dbg !1481

576:                                              ; preds = %574, %571, %568
  %577 = load i32, ptr %23, align 4, !dbg !1482
  store i32 %577, ptr %10, align 4, !dbg !1483
  br label %578, !dbg !1483

578:                                              ; preds = %576, %36
  %579 = load i32, ptr %10, align 4, !dbg !1484
  ret i32 %579, !dbg !1484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzGetCurrentFileInfo(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) #0 !dbg !1485 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.unz_file_info64_s, align 8
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1507, metadata !DIExpression()), !dbg !1508
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1509, metadata !DIExpression()), !dbg !1510
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1511, metadata !DIExpression()), !dbg !1512
  store i64 %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1513, metadata !DIExpression()), !dbg !1514
  store ptr %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1515, metadata !DIExpression()), !dbg !1516
  store i64 %5, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1517, metadata !DIExpression()), !dbg !1518
  store ptr %6, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1519, metadata !DIExpression()), !dbg !1520
  store i64 %7, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1521, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1523, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1525, metadata !DIExpression()), !dbg !1526
  %19 = load ptr, ptr %9, align 8, !dbg !1527
  %20 = load ptr, ptr %11, align 8, !dbg !1528
  %21 = load i64, ptr %12, align 8, !dbg !1529
  %22 = load ptr, ptr %13, align 8, !dbg !1530
  %23 = load i64, ptr %14, align 8, !dbg !1531
  %24 = load ptr, ptr %15, align 8, !dbg !1532
  %25 = load i64, ptr %16, align 8, !dbg !1533
  %26 = call i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef %19, ptr noundef %18, ptr noundef null, ptr noundef %20, i64 noundef %21, ptr noundef %22, i64 noundef %23, ptr noundef %24, i64 noundef %25), !dbg !1534
  store i32 %26, ptr %17, align 4, !dbg !1535
  %27 = load i32, ptr %17, align 4, !dbg !1536
  %28 = icmp eq i32 %27, 0, !dbg !1538
  br i1 %28, label %29, label %92, !dbg !1539

29:                                               ; preds = %8
  %30 = load ptr, ptr %10, align 8, !dbg !1540
  %31 = icmp ne ptr %30, null, !dbg !1541
  br i1 %31, label %32, label %92, !dbg !1542

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.unz_file_info64_s, ptr %18, i32 0, i32 0, !dbg !1543
  %34 = load i64, ptr %33, align 8, !dbg !1543
  %35 = load ptr, ptr %10, align 8, !dbg !1545
  %36 = getelementptr inbounds %struct.unz_file_info_s, ptr %35, i32 0, i32 0, !dbg !1546
  store i64 %34, ptr %36, align 8, !dbg !1547
  %37 = getelementptr inbounds %struct.unz_file_info64_s, ptr %18, i32 0, i32 1, !dbg !1548
  %38 = load i64, ptr %37, align 8, !dbg !1548
  %39 = load ptr, ptr %10, align 8, !dbg !1549
  %40 = getelementptr inbounds %struct.unz_file_info_s, ptr %39, i32 0, i32 1, !dbg !1550
  store i64 %38, ptr %40, align 8, !dbg !1551
  %41 = getelementptr inbounds %struct.unz_file_info64_s, ptr %18, i32 0, i32 2, !dbg !1552
  %42 = load i64, ptr %41, align 8, !dbg !1552
  %43 = load ptr, ptr %10, align 8, !dbg !1553
  %44 = getelementptr inbounds %struct.unz_file_info_s, ptr %43, i32 0, i32 2, !dbg !1554
  store i64 %42, ptr %44, align 8, !dbg !1555
  %45 = getelementptr inbounds %struct.unz_file_info64_s, ptr %18, i32 0, i32 3, !dbg !1556
  %46 = load i64, ptr %45, align 8, !dbg !1556
  %47 = load ptr, ptr %10, align 8, !dbg !1557
  %48 = getelementptr inbounds %struct.unz_file_info_s, ptr %47, i32 0, i32 3, !dbg !1558
  store i64 %46, ptr %48, align 8, !dbg !1559
  %49 = getelementptr inbounds %struct.unz_file_info64_s, ptr %18, i32 0, i32 4, !dbg !1560
  %50 = load i64, ptr %49, align 8, !dbg !1560
  %51 = load ptr, ptr %10, align 8, !dbg !1561
  %52 = getelementptr inbounds %struct.unz_file_info_s, ptr %51, i32 0, i32 4, !dbg !1562
  store i64 %50, ptr %52, align 8, !dbg !1563
  %53 = getelementptr inbounds %struct.unz_file_info64_s, ptr %18, i32 0, i32 5, !dbg !1564
  %54 = load i64, ptr %53, align 8, !dbg !1564
  %55 = load ptr, ptr %10, align 8, !dbg !1565
  %56 = getelementptr inbounds %struct.unz_file_info_s, ptr %55, i32 0, i32 5, !dbg !1566
  store i64 %54, ptr %56, align 8, !dbg !1567
  %57 = getelementptr inbounds %struct.unz_file_info64_s, ptr %18, i32 0, i32 8, !dbg !1568
  %58 = load i64, ptr %57, align 8, !dbg !1568
  %59 = load ptr, ptr %10, align 8, !dbg !1569
  %60 = getelementptr inbounds %struct.unz_file_info_s, ptr %59, i32 0, i32 8, !dbg !1570
  store i64 %58, ptr %60, align 8, !dbg !1571
  %61 = getelementptr inbounds %struct.unz_file_info64_s, ptr %18, i32 0, i32 9, !dbg !1572
  %62 = load i64, ptr %61, align 8, !dbg !1572
  %63 = load ptr, ptr %10, align 8, !dbg !1573
  %64 = getelementptr inbounds %struct.unz_file_info_s, ptr %63, i32 0, i32 9, !dbg !1574
  store i64 %62, ptr %64, align 8, !dbg !1575
  %65 = getelementptr inbounds %struct.unz_file_info64_s, ptr %18, i32 0, i32 10, !dbg !1576
  %66 = load i64, ptr %65, align 8, !dbg !1576
  %67 = load ptr, ptr %10, align 8, !dbg !1577
  %68 = getelementptr inbounds %struct.unz_file_info_s, ptr %67, i32 0, i32 10, !dbg !1578
  store i64 %66, ptr %68, align 8, !dbg !1579
  %69 = getelementptr inbounds %struct.unz_file_info64_s, ptr %18, i32 0, i32 11, !dbg !1580
  %70 = load i64, ptr %69, align 8, !dbg !1580
  %71 = load ptr, ptr %10, align 8, !dbg !1581
  %72 = getelementptr inbounds %struct.unz_file_info_s, ptr %71, i32 0, i32 11, !dbg !1582
  store i64 %70, ptr %72, align 8, !dbg !1583
  %73 = getelementptr inbounds %struct.unz_file_info64_s, ptr %18, i32 0, i32 12, !dbg !1584
  %74 = load i64, ptr %73, align 8, !dbg !1584
  %75 = load ptr, ptr %10, align 8, !dbg !1585
  %76 = getelementptr inbounds %struct.unz_file_info_s, ptr %75, i32 0, i32 12, !dbg !1586
  store i64 %74, ptr %76, align 8, !dbg !1587
  %77 = getelementptr inbounds %struct.unz_file_info64_s, ptr %18, i32 0, i32 13, !dbg !1588
  %78 = load i64, ptr %77, align 8, !dbg !1588
  %79 = load ptr, ptr %10, align 8, !dbg !1589
  %80 = getelementptr inbounds %struct.unz_file_info_s, ptr %79, i32 0, i32 13, !dbg !1590
  store i64 %78, ptr %80, align 8, !dbg !1591
  %81 = load ptr, ptr %10, align 8, !dbg !1592
  %82 = getelementptr inbounds %struct.unz_file_info_s, ptr %81, i32 0, i32 14, !dbg !1593
  %83 = getelementptr inbounds %struct.unz_file_info64_s, ptr %18, i32 0, i32 14, !dbg !1594
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %82, ptr align 8 %83, i64 24, i1 false), !dbg !1594
  %84 = getelementptr inbounds %struct.unz_file_info64_s, ptr %18, i32 0, i32 6, !dbg !1595
  %85 = load i64, ptr %84, align 8, !dbg !1595
  %86 = load ptr, ptr %10, align 8, !dbg !1596
  %87 = getelementptr inbounds %struct.unz_file_info_s, ptr %86, i32 0, i32 6, !dbg !1597
  store i64 %85, ptr %87, align 8, !dbg !1598
  %88 = getelementptr inbounds %struct.unz_file_info64_s, ptr %18, i32 0, i32 7, !dbg !1599
  %89 = load i64, ptr %88, align 8, !dbg !1599
  %90 = load ptr, ptr %10, align 8, !dbg !1600
  %91 = getelementptr inbounds %struct.unz_file_info_s, ptr %90, i32 0, i32 7, !dbg !1601
  store i64 %89, ptr %91, align 8, !dbg !1602
  br label %92, !dbg !1603

92:                                               ; preds = %32, %29, %8
  %93 = load i32, ptr %17, align 4, !dbg !1604
  ret i32 %93, !dbg !1605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzGoToFirstFile(ptr noundef %0) #0 !dbg !1606 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1607, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1609, metadata !DIExpression()), !dbg !1610
  store i32 0, ptr %4, align 4, !dbg !1610
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1611, metadata !DIExpression()), !dbg !1612
  %6 = load ptr, ptr %3, align 8, !dbg !1613
  %7 = icmp eq ptr %6, null, !dbg !1615
  br i1 %7, label %8, label %9, !dbg !1616

8:                                                ; preds = %1
  store i32 -102, ptr %2, align 4, !dbg !1617
  br label %31, !dbg !1617

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !dbg !1618
  store ptr %10, ptr %5, align 8, !dbg !1619
  %11 = load ptr, ptr %5, align 8, !dbg !1620
  %12 = getelementptr inbounds %struct.unz64_s, ptr %11, i32 0, i32 10, !dbg !1621
  %13 = load i64, ptr %12, align 8, !dbg !1621
  %14 = load ptr, ptr %5, align 8, !dbg !1622
  %15 = getelementptr inbounds %struct.unz64_s, ptr %14, i32 0, i32 6, !dbg !1623
  store i64 %13, ptr %15, align 8, !dbg !1624
  %16 = load ptr, ptr %5, align 8, !dbg !1625
  %17 = getelementptr inbounds %struct.unz64_s, ptr %16, i32 0, i32 5, !dbg !1626
  store i64 0, ptr %17, align 8, !dbg !1627
  %18 = load ptr, ptr %3, align 8, !dbg !1628
  %19 = load ptr, ptr %5, align 8, !dbg !1629
  %20 = getelementptr inbounds %struct.unz64_s, ptr %19, i32 0, i32 11, !dbg !1630
  %21 = load ptr, ptr %5, align 8, !dbg !1631
  %22 = getelementptr inbounds %struct.unz64_s, ptr %21, i32 0, i32 12, !dbg !1632
  %23 = call i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef %18, ptr noundef %20, ptr noundef %22, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0), !dbg !1633
  store i32 %23, ptr %4, align 4, !dbg !1634
  %24 = load i32, ptr %4, align 4, !dbg !1635
  %25 = icmp eq i32 %24, 0, !dbg !1636
  %26 = zext i1 %25 to i32, !dbg !1636
  %27 = sext i32 %26 to i64, !dbg !1637
  %28 = load ptr, ptr %5, align 8, !dbg !1638
  %29 = getelementptr inbounds %struct.unz64_s, ptr %28, i32 0, i32 7, !dbg !1639
  store i64 %27, ptr %29, align 8, !dbg !1640
  %30 = load i32, ptr %4, align 4, !dbg !1641
  store i32 %30, ptr %2, align 4, !dbg !1642
  br label %31, !dbg !1642

31:                                               ; preds = %9, %8
  %32 = load i32, ptr %2, align 4, !dbg !1643
  ret i32 %32, !dbg !1643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzGoToNextFile(ptr noundef %0) #0 !dbg !1644 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1645, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1647, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1649, metadata !DIExpression()), !dbg !1650
  %6 = load ptr, ptr %3, align 8, !dbg !1651
  %7 = icmp eq ptr %6, null, !dbg !1653
  br i1 %7, label %8, label %9, !dbg !1654

8:                                                ; preds = %1
  store i32 -102, ptr %2, align 4, !dbg !1655
  br label %71, !dbg !1655

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !dbg !1656
  store ptr %10, ptr %4, align 8, !dbg !1657
  %11 = load ptr, ptr %4, align 8, !dbg !1658
  %12 = getelementptr inbounds %struct.unz64_s, ptr %11, i32 0, i32 7, !dbg !1660
  %13 = load i64, ptr %12, align 8, !dbg !1660
  %14 = icmp ne i64 %13, 0, !dbg !1658
  br i1 %14, label %16, label %15, !dbg !1661

15:                                               ; preds = %9
  store i32 -100, ptr %2, align 4, !dbg !1662
  br label %71, !dbg !1662

16:                                               ; preds = %9
  %17 = load ptr, ptr %4, align 8, !dbg !1663
  %18 = getelementptr inbounds %struct.unz64_s, ptr %17, i32 0, i32 3, !dbg !1665
  %19 = getelementptr inbounds %struct.unz_global_info64_s, ptr %18, i32 0, i32 0, !dbg !1666
  %20 = load i64, ptr %19, align 8, !dbg !1666
  %21 = icmp ne i64 %20, 65535, !dbg !1667
  br i1 %21, label %22, label %34, !dbg !1668

22:                                               ; preds = %16
  %23 = load ptr, ptr %4, align 8, !dbg !1669
  %24 = getelementptr inbounds %struct.unz64_s, ptr %23, i32 0, i32 5, !dbg !1671
  %25 = load i64, ptr %24, align 8, !dbg !1671
  %26 = add i64 %25, 1, !dbg !1672
  %27 = load ptr, ptr %4, align 8, !dbg !1673
  %28 = getelementptr inbounds %struct.unz64_s, ptr %27, i32 0, i32 3, !dbg !1674
  %29 = getelementptr inbounds %struct.unz_global_info64_s, ptr %28, i32 0, i32 0, !dbg !1675
  %30 = load i64, ptr %29, align 8, !dbg !1675
  %31 = icmp eq i64 %26, %30, !dbg !1676
  br i1 %31, label %32, label %33, !dbg !1677

32:                                               ; preds = %22
  store i32 -100, ptr %2, align 4, !dbg !1678
  br label %71, !dbg !1678

33:                                               ; preds = %22
  br label %34, !dbg !1675

34:                                               ; preds = %33, %16
  %35 = load ptr, ptr %4, align 8, !dbg !1679
  %36 = getelementptr inbounds %struct.unz64_s, ptr %35, i32 0, i32 11, !dbg !1680
  %37 = getelementptr inbounds %struct.unz_file_info64_s, ptr %36, i32 0, i32 8, !dbg !1681
  %38 = load i64, ptr %37, align 8, !dbg !1681
  %39 = add i64 46, %38, !dbg !1682
  %40 = load ptr, ptr %4, align 8, !dbg !1683
  %41 = getelementptr inbounds %struct.unz64_s, ptr %40, i32 0, i32 11, !dbg !1684
  %42 = getelementptr inbounds %struct.unz_file_info64_s, ptr %41, i32 0, i32 9, !dbg !1685
  %43 = load i64, ptr %42, align 8, !dbg !1685
  %44 = add i64 %39, %43, !dbg !1686
  %45 = load ptr, ptr %4, align 8, !dbg !1687
  %46 = getelementptr inbounds %struct.unz64_s, ptr %45, i32 0, i32 11, !dbg !1688
  %47 = getelementptr inbounds %struct.unz_file_info64_s, ptr %46, i32 0, i32 10, !dbg !1689
  %48 = load i64, ptr %47, align 8, !dbg !1689
  %49 = add i64 %44, %48, !dbg !1690
  %50 = load ptr, ptr %4, align 8, !dbg !1691
  %51 = getelementptr inbounds %struct.unz64_s, ptr %50, i32 0, i32 6, !dbg !1692
  %52 = load i64, ptr %51, align 8, !dbg !1693
  %53 = add i64 %52, %49, !dbg !1693
  store i64 %53, ptr %51, align 8, !dbg !1693
  %54 = load ptr, ptr %4, align 8, !dbg !1694
  %55 = getelementptr inbounds %struct.unz64_s, ptr %54, i32 0, i32 5, !dbg !1695
  %56 = load i64, ptr %55, align 8, !dbg !1696
  %57 = add i64 %56, 1, !dbg !1696
  store i64 %57, ptr %55, align 8, !dbg !1696
  %58 = load ptr, ptr %3, align 8, !dbg !1697
  %59 = load ptr, ptr %4, align 8, !dbg !1698
  %60 = getelementptr inbounds %struct.unz64_s, ptr %59, i32 0, i32 11, !dbg !1699
  %61 = load ptr, ptr %4, align 8, !dbg !1700
  %62 = getelementptr inbounds %struct.unz64_s, ptr %61, i32 0, i32 12, !dbg !1701
  %63 = call i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef %58, ptr noundef %60, ptr noundef %62, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0), !dbg !1702
  store i32 %63, ptr %5, align 4, !dbg !1703
  %64 = load i32, ptr %5, align 4, !dbg !1704
  %65 = icmp eq i32 %64, 0, !dbg !1705
  %66 = zext i1 %65 to i32, !dbg !1705
  %67 = sext i32 %66 to i64, !dbg !1706
  %68 = load ptr, ptr %4, align 8, !dbg !1707
  %69 = getelementptr inbounds %struct.unz64_s, ptr %68, i32 0, i32 7, !dbg !1708
  store i64 %67, ptr %69, align 8, !dbg !1709
  %70 = load i32, ptr %5, align 4, !dbg !1710
  store i32 %70, ptr %2, align 4, !dbg !1711
  br label %71, !dbg !1711

71:                                               ; preds = %34, %32, %15, %8
  %72 = load i32, ptr %2, align 4, !dbg !1712
  ret i32 %72, !dbg !1712
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzLocateFile(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1713 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.unz_file_info64_s, align 8
  %11 = alloca %struct.unz_file_info64_internal_s, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [257 x i8], align 16
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1716, metadata !DIExpression()), !dbg !1717
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1718, metadata !DIExpression()), !dbg !1719
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1720, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1722, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1724, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1726, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1728, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1730, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1732, metadata !DIExpression()), !dbg !1733
  %15 = load ptr, ptr %5, align 8, !dbg !1734
  %16 = icmp eq ptr %15, null, !dbg !1736
  br i1 %16, label %17, label %18, !dbg !1737

17:                                               ; preds = %3
  store i32 -102, ptr %4, align 4, !dbg !1738
  br label %75, !dbg !1738

18:                                               ; preds = %3
  %19 = load ptr, ptr %6, align 8, !dbg !1739
  %20 = call i64 @strlen(ptr noundef %19) #7, !dbg !1741
  %21 = icmp uge i64 %20, 256, !dbg !1742
  br i1 %21, label %22, label %23, !dbg !1743

22:                                               ; preds = %18
  store i32 -102, ptr %4, align 4, !dbg !1744
  br label %75, !dbg !1744

23:                                               ; preds = %18
  %24 = load ptr, ptr %5, align 8, !dbg !1745
  store ptr %24, ptr %8, align 8, !dbg !1746
  %25 = load ptr, ptr %8, align 8, !dbg !1747
  %26 = getelementptr inbounds %struct.unz64_s, ptr %25, i32 0, i32 7, !dbg !1749
  %27 = load i64, ptr %26, align 8, !dbg !1749
  %28 = icmp ne i64 %27, 0, !dbg !1747
  br i1 %28, label %30, label %29, !dbg !1750

29:                                               ; preds = %23
  store i32 -100, ptr %4, align 4, !dbg !1751
  br label %75, !dbg !1751

30:                                               ; preds = %23
  %31 = load ptr, ptr %8, align 8, !dbg !1752
  %32 = getelementptr inbounds %struct.unz64_s, ptr %31, i32 0, i32 5, !dbg !1753
  %33 = load i64, ptr %32, align 8, !dbg !1753
  store i64 %33, ptr %12, align 8, !dbg !1754
  %34 = load ptr, ptr %8, align 8, !dbg !1755
  %35 = getelementptr inbounds %struct.unz64_s, ptr %34, i32 0, i32 6, !dbg !1756
  %36 = load i64, ptr %35, align 8, !dbg !1756
  store i64 %36, ptr %13, align 8, !dbg !1757
  %37 = load ptr, ptr %8, align 8, !dbg !1758
  %38 = getelementptr inbounds %struct.unz64_s, ptr %37, i32 0, i32 11, !dbg !1759
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %38, i64 136, i1 false), !dbg !1759
  %39 = load ptr, ptr %8, align 8, !dbg !1760
  %40 = getelementptr inbounds %struct.unz64_s, ptr %39, i32 0, i32 12, !dbg !1761
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %40, i64 8, i1 false), !dbg !1761
  %41 = load ptr, ptr %5, align 8, !dbg !1762
  %42 = call i32 @unzGoToFirstFile(ptr noundef %41), !dbg !1763
  store i32 %42, ptr %9, align 4, !dbg !1764
  br label %43, !dbg !1765

43:                                               ; preds = %62, %30
  %44 = load i32, ptr %9, align 4, !dbg !1766
  %45 = icmp eq i32 %44, 0, !dbg !1767
  br i1 %45, label %46, label %63, !dbg !1765

46:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1768, metadata !DIExpression()), !dbg !1773
  %47 = load ptr, ptr %5, align 8, !dbg !1774
  %48 = getelementptr inbounds [257 x i8], ptr %14, i64 0, i64 0, !dbg !1775
  %49 = call i32 @unzGetCurrentFileInfo64(ptr noundef %47, ptr noundef null, ptr noundef %48, i64 noundef 256, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0), !dbg !1776
  store i32 %49, ptr %9, align 4, !dbg !1777
  %50 = load i32, ptr %9, align 4, !dbg !1778
  %51 = icmp eq i32 %50, 0, !dbg !1780
  br i1 %51, label %52, label %62, !dbg !1781

52:                                               ; preds = %46
  %53 = getelementptr inbounds [257 x i8], ptr %14, i64 0, i64 0, !dbg !1782
  %54 = load ptr, ptr %6, align 8, !dbg !1785
  %55 = load i32, ptr %7, align 4, !dbg !1786
  %56 = call i32 @unzStringFileNameCompare(ptr noundef %53, ptr noundef %54, i32 noundef %55), !dbg !1787
  %57 = icmp eq i32 %56, 0, !dbg !1788
  br i1 %57, label %58, label %59, !dbg !1789

58:                                               ; preds = %52
  store i32 0, ptr %4, align 4, !dbg !1790
  br label %75, !dbg !1790

59:                                               ; preds = %52
  %60 = load ptr, ptr %5, align 8, !dbg !1791
  %61 = call i32 @unzGoToNextFile(ptr noundef %60), !dbg !1792
  store i32 %61, ptr %9, align 4, !dbg !1793
  br label %62, !dbg !1794

62:                                               ; preds = %59, %46
  br label %43, !dbg !1765, !llvm.loop !1795

63:                                               ; preds = %43
  %64 = load i64, ptr %12, align 8, !dbg !1797
  %65 = load ptr, ptr %8, align 8, !dbg !1798
  %66 = getelementptr inbounds %struct.unz64_s, ptr %65, i32 0, i32 5, !dbg !1799
  store i64 %64, ptr %66, align 8, !dbg !1800
  %67 = load i64, ptr %13, align 8, !dbg !1801
  %68 = load ptr, ptr %8, align 8, !dbg !1802
  %69 = getelementptr inbounds %struct.unz64_s, ptr %68, i32 0, i32 6, !dbg !1803
  store i64 %67, ptr %69, align 8, !dbg !1804
  %70 = load ptr, ptr %8, align 8, !dbg !1805
  %71 = getelementptr inbounds %struct.unz64_s, ptr %70, i32 0, i32 11, !dbg !1806
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %71, ptr align 8 %10, i64 136, i1 false), !dbg !1807
  %72 = load ptr, ptr %8, align 8, !dbg !1808
  %73 = getelementptr inbounds %struct.unz64_s, ptr %72, i32 0, i32 12, !dbg !1809
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %73, ptr align 8 %11, i64 8, i1 false), !dbg !1810
  %74 = load i32, ptr %9, align 4, !dbg !1811
  store i32 %74, ptr %4, align 4, !dbg !1812
  br label %75, !dbg !1812

75:                                               ; preds = %63, %58, %29, %22, %17
  %76 = load i32, ptr %4, align 4, !dbg !1813
  ret i32 %76, !dbg !1813
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzGetFilePos64(ptr noundef %0, ptr noundef %1) #0 !dbg !1814 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1823, metadata !DIExpression()), !dbg !1824
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1825, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1827, metadata !DIExpression()), !dbg !1828
  %7 = load ptr, ptr %4, align 8, !dbg !1829
  %8 = icmp eq ptr %7, null, !dbg !1831
  br i1 %8, label %12, label %9, !dbg !1832

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !dbg !1833
  %11 = icmp eq ptr %10, null, !dbg !1834
  br i1 %11, label %12, label %13, !dbg !1835

12:                                               ; preds = %9, %2
  store i32 -102, ptr %3, align 4, !dbg !1836
  br label %31, !dbg !1836

13:                                               ; preds = %9
  %14 = load ptr, ptr %4, align 8, !dbg !1837
  store ptr %14, ptr %6, align 8, !dbg !1838
  %15 = load ptr, ptr %6, align 8, !dbg !1839
  %16 = getelementptr inbounds %struct.unz64_s, ptr %15, i32 0, i32 7, !dbg !1841
  %17 = load i64, ptr %16, align 8, !dbg !1841
  %18 = icmp ne i64 %17, 0, !dbg !1839
  br i1 %18, label %20, label %19, !dbg !1842

19:                                               ; preds = %13
  store i32 -100, ptr %3, align 4, !dbg !1843
  br label %31, !dbg !1843

20:                                               ; preds = %13
  %21 = load ptr, ptr %6, align 8, !dbg !1844
  %22 = getelementptr inbounds %struct.unz64_s, ptr %21, i32 0, i32 6, !dbg !1845
  %23 = load i64, ptr %22, align 8, !dbg !1845
  %24 = load ptr, ptr %5, align 8, !dbg !1846
  %25 = getelementptr inbounds %struct.unz64_file_pos_s, ptr %24, i32 0, i32 0, !dbg !1847
  store i64 %23, ptr %25, align 8, !dbg !1848
  %26 = load ptr, ptr %6, align 8, !dbg !1849
  %27 = getelementptr inbounds %struct.unz64_s, ptr %26, i32 0, i32 5, !dbg !1850
  %28 = load i64, ptr %27, align 8, !dbg !1850
  %29 = load ptr, ptr %5, align 8, !dbg !1851
  %30 = getelementptr inbounds %struct.unz64_file_pos_s, ptr %29, i32 0, i32 1, !dbg !1852
  store i64 %28, ptr %30, align 8, !dbg !1853
  store i32 0, ptr %3, align 4, !dbg !1854
  br label %31, !dbg !1854

31:                                               ; preds = %20, %19, %12
  %32 = load i32, ptr %3, align 4, !dbg !1855
  ret i32 %32, !dbg !1855
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzGetFilePos(ptr noundef %0, ptr noundef %1) #0 !dbg !1856 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.unz64_file_pos_s, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1865, metadata !DIExpression()), !dbg !1866
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1867, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1869, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1871, metadata !DIExpression()), !dbg !1872
  %7 = load ptr, ptr %3, align 8, !dbg !1873
  %8 = call i32 @unzGetFilePos64(ptr noundef %7, ptr noundef %5), !dbg !1874
  store i32 %8, ptr %6, align 4, !dbg !1872
  %9 = load i32, ptr %6, align 4, !dbg !1875
  %10 = icmp eq i32 %9, 0, !dbg !1877
  br i1 %10, label %11, label %20, !dbg !1878

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.unz64_file_pos_s, ptr %5, i32 0, i32 0, !dbg !1879
  %13 = load i64, ptr %12, align 8, !dbg !1879
  %14 = load ptr, ptr %4, align 8, !dbg !1881
  %15 = getelementptr inbounds %struct.unz_file_pos_s, ptr %14, i32 0, i32 0, !dbg !1882
  store i64 %13, ptr %15, align 8, !dbg !1883
  %16 = getelementptr inbounds %struct.unz64_file_pos_s, ptr %5, i32 0, i32 1, !dbg !1884
  %17 = load i64, ptr %16, align 8, !dbg !1884
  %18 = load ptr, ptr %4, align 8, !dbg !1885
  %19 = getelementptr inbounds %struct.unz_file_pos_s, ptr %18, i32 0, i32 1, !dbg !1886
  store i64 %17, ptr %19, align 8, !dbg !1887
  br label %20, !dbg !1888

20:                                               ; preds = %11, %2
  %21 = load i32, ptr %6, align 4, !dbg !1889
  ret i32 %21, !dbg !1890
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzGoToFilePos64(ptr noundef %0, ptr noundef %1) #0 !dbg !1891 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1896, metadata !DIExpression()), !dbg !1897
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1898, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1900, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1902, metadata !DIExpression()), !dbg !1903
  %8 = load ptr, ptr %4, align 8, !dbg !1904
  %9 = icmp eq ptr %8, null, !dbg !1906
  br i1 %9, label %13, label %10, !dbg !1907

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !dbg !1908
  %12 = icmp eq ptr %11, null, !dbg !1909
  br i1 %12, label %13, label %14, !dbg !1910

13:                                               ; preds = %10, %2
  store i32 -102, ptr %3, align 4, !dbg !1911
  br label %39, !dbg !1911

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 8, !dbg !1912
  store ptr %15, ptr %6, align 8, !dbg !1913
  %16 = load ptr, ptr %5, align 8, !dbg !1914
  %17 = getelementptr inbounds %struct.unz64_file_pos_s, ptr %16, i32 0, i32 0, !dbg !1915
  %18 = load i64, ptr %17, align 8, !dbg !1915
  %19 = load ptr, ptr %6, align 8, !dbg !1916
  %20 = getelementptr inbounds %struct.unz64_s, ptr %19, i32 0, i32 6, !dbg !1917
  store i64 %18, ptr %20, align 8, !dbg !1918
  %21 = load ptr, ptr %5, align 8, !dbg !1919
  %22 = getelementptr inbounds %struct.unz64_file_pos_s, ptr %21, i32 0, i32 1, !dbg !1920
  %23 = load i64, ptr %22, align 8, !dbg !1920
  %24 = load ptr, ptr %6, align 8, !dbg !1921
  %25 = getelementptr inbounds %struct.unz64_s, ptr %24, i32 0, i32 5, !dbg !1922
  store i64 %23, ptr %25, align 8, !dbg !1923
  %26 = load ptr, ptr %4, align 8, !dbg !1924
  %27 = load ptr, ptr %6, align 8, !dbg !1925
  %28 = getelementptr inbounds %struct.unz64_s, ptr %27, i32 0, i32 11, !dbg !1926
  %29 = load ptr, ptr %6, align 8, !dbg !1927
  %30 = getelementptr inbounds %struct.unz64_s, ptr %29, i32 0, i32 12, !dbg !1928
  %31 = call i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef %26, ptr noundef %28, ptr noundef %30, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0), !dbg !1929
  store i32 %31, ptr %7, align 4, !dbg !1930
  %32 = load i32, ptr %7, align 4, !dbg !1931
  %33 = icmp eq i32 %32, 0, !dbg !1932
  %34 = zext i1 %33 to i32, !dbg !1932
  %35 = sext i32 %34 to i64, !dbg !1933
  %36 = load ptr, ptr %6, align 8, !dbg !1934
  %37 = getelementptr inbounds %struct.unz64_s, ptr %36, i32 0, i32 7, !dbg !1935
  store i64 %35, ptr %37, align 8, !dbg !1936
  %38 = load i32, ptr %7, align 4, !dbg !1937
  store i32 %38, ptr %3, align 4, !dbg !1938
  br label %39, !dbg !1938

39:                                               ; preds = %14, %13
  %40 = load i32, ptr %3, align 4, !dbg !1939
  ret i32 %40, !dbg !1939
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzGoToFilePos(ptr noundef %0, ptr noundef %1) #0 !dbg !1940 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.unz64_file_pos_s, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1941, metadata !DIExpression()), !dbg !1942
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1943, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1945, metadata !DIExpression()), !dbg !1946
  %7 = load ptr, ptr %5, align 8, !dbg !1947
  %8 = icmp eq ptr %7, null, !dbg !1949
  br i1 %8, label %9, label %10, !dbg !1950

9:                                                ; preds = %2
  store i32 -102, ptr %3, align 4, !dbg !1951
  br label %21, !dbg !1951

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !dbg !1952
  %12 = getelementptr inbounds %struct.unz_file_pos_s, ptr %11, i32 0, i32 0, !dbg !1953
  %13 = load i64, ptr %12, align 8, !dbg !1953
  %14 = getelementptr inbounds %struct.unz64_file_pos_s, ptr %6, i32 0, i32 0, !dbg !1954
  store i64 %13, ptr %14, align 8, !dbg !1955
  %15 = load ptr, ptr %5, align 8, !dbg !1956
  %16 = getelementptr inbounds %struct.unz_file_pos_s, ptr %15, i32 0, i32 1, !dbg !1957
  %17 = load i64, ptr %16, align 8, !dbg !1957
  %18 = getelementptr inbounds %struct.unz64_file_pos_s, ptr %6, i32 0, i32 1, !dbg !1958
  store i64 %17, ptr %18, align 8, !dbg !1959
  %19 = load ptr, ptr %4, align 8, !dbg !1960
  %20 = call i32 @unzGoToFilePos64(ptr noundef %19, ptr noundef %6), !dbg !1961
  store i32 %20, ptr %3, align 4, !dbg !1962
  br label %21, !dbg !1962

21:                                               ; preds = %10, %9
  %22 = load i32, ptr %3, align 4, !dbg !1963
  ret i32 %22, !dbg !1963
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzOpenCurrentFile3(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 !dbg !1964 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1968, metadata !DIExpression()), !dbg !1969
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1970, metadata !DIExpression()), !dbg !1971
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1972, metadata !DIExpression()), !dbg !1973
  store i32 %3, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1974, metadata !DIExpression()), !dbg !1975
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1976, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1978, metadata !DIExpression()), !dbg !1979
  store i32 0, ptr %12, align 4, !dbg !1979
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1980, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1982, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1984, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1986, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1988, metadata !DIExpression()), !dbg !1989
  %18 = load ptr, ptr %11, align 8, !dbg !1990
  %19 = icmp ne ptr %18, null, !dbg !1992
  br i1 %19, label %20, label %21, !dbg !1993

20:                                               ; preds = %5
  store i32 -102, ptr %6, align 4, !dbg !1994
  br label %241, !dbg !1994

21:                                               ; preds = %5
  %22 = load ptr, ptr %7, align 8, !dbg !1995
  %23 = icmp eq ptr %22, null, !dbg !1997
  br i1 %23, label %24, label %25, !dbg !1998

24:                                               ; preds = %21
  store i32 -102, ptr %6, align 4, !dbg !1999
  br label %241, !dbg !1999

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 8, !dbg !2000
  store ptr %26, ptr %14, align 8, !dbg !2001
  %27 = load ptr, ptr %14, align 8, !dbg !2002
  %28 = getelementptr inbounds %struct.unz64_s, ptr %27, i32 0, i32 7, !dbg !2004
  %29 = load i64, ptr %28, align 8, !dbg !2004
  %30 = icmp ne i64 %29, 0, !dbg !2002
  br i1 %30, label %32, label %31, !dbg !2005

31:                                               ; preds = %25
  store i32 -102, ptr %6, align 4, !dbg !2006
  br label %241, !dbg !2006

32:                                               ; preds = %25
  %33 = load ptr, ptr %14, align 8, !dbg !2007
  %34 = getelementptr inbounds %struct.unz64_s, ptr %33, i32 0, i32 13, !dbg !2009
  %35 = load ptr, ptr %34, align 8, !dbg !2009
  %36 = icmp ne ptr %35, null, !dbg !2010
  br i1 %36, label %37, label %40, !dbg !2011

37:                                               ; preds = %32
  %38 = load ptr, ptr %7, align 8, !dbg !2012
  %39 = call i32 @unzCloseCurrentFile(ptr noundef %38), !dbg !2013
  br label %40, !dbg !2013

40:                                               ; preds = %37, %32
  %41 = load ptr, ptr %14, align 8, !dbg !2014
  %42 = call i32 @unz64local_CheckCurrentFileCoherencyHeader(ptr noundef %41, ptr noundef %13, ptr noundef %16, ptr noundef %17), !dbg !2016
  %43 = icmp ne i32 %42, 0, !dbg !2017
  br i1 %43, label %44, label %45, !dbg !2018

44:                                               ; preds = %40
  store i32 -103, ptr %6, align 4, !dbg !2019
  br label %241, !dbg !2019

45:                                               ; preds = %40
  %46 = call noalias ptr @malloc(i64 noundef 328) #8, !dbg !2020
  store ptr %46, ptr %15, align 8, !dbg !2021
  %47 = load ptr, ptr %15, align 8, !dbg !2022
  %48 = icmp eq ptr %47, null, !dbg !2024
  br i1 %48, label %49, label %50, !dbg !2025

49:                                               ; preds = %45
  store i32 -104, ptr %6, align 4, !dbg !2026
  br label %241, !dbg !2026

50:                                               ; preds = %45
  %51 = call noalias ptr @malloc(i64 noundef 16384) #8, !dbg !2027
  %52 = load ptr, ptr %15, align 8, !dbg !2028
  %53 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %52, i32 0, i32 0, !dbg !2029
  store ptr %51, ptr %53, align 8, !dbg !2030
  %54 = load i64, ptr %16, align 8, !dbg !2031
  %55 = load ptr, ptr %15, align 8, !dbg !2032
  %56 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %55, i32 0, i32 4, !dbg !2033
  store i64 %54, ptr %56, align 8, !dbg !2034
  %57 = load i32, ptr %17, align 4, !dbg !2035
  %58 = load ptr, ptr %15, align 8, !dbg !2036
  %59 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %58, i32 0, i32 5, !dbg !2037
  store i32 %57, ptr %59, align 8, !dbg !2038
  %60 = load ptr, ptr %15, align 8, !dbg !2039
  %61 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %60, i32 0, i32 6, !dbg !2040
  store i64 0, ptr %61, align 8, !dbg !2041
  %62 = load i32, ptr %10, align 4, !dbg !2042
  %63 = load ptr, ptr %15, align 8, !dbg !2043
  %64 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %63, i32 0, i32 16, !dbg !2044
  store i32 %62, ptr %64, align 8, !dbg !2045
  %65 = load ptr, ptr %15, align 8, !dbg !2046
  %66 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %65, i32 0, i32 0, !dbg !2048
  %67 = load ptr, ptr %66, align 8, !dbg !2048
  %68 = icmp eq ptr %67, null, !dbg !2049
  br i1 %68, label %69, label %75, !dbg !2050

69:                                               ; preds = %50
  %70 = load ptr, ptr %15, align 8, !dbg !2051
  %71 = icmp ne ptr %70, null, !dbg !2051
  br i1 %71, label %72, label %74, !dbg !2055

72:                                               ; preds = %69
  %73 = load ptr, ptr %15, align 8, !dbg !2051
  call void @free(ptr noundef %73) #9, !dbg !2051
  br label %74, !dbg !2051

74:                                               ; preds = %72, %69
  store i32 -104, ptr %6, align 4, !dbg !2056
  br label %241, !dbg !2056

75:                                               ; preds = %50
  %76 = load ptr, ptr %15, align 8, !dbg !2057
  %77 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %76, i32 0, i32 3, !dbg !2058
  store i64 0, ptr %77, align 8, !dbg !2059
  %78 = load ptr, ptr %8, align 8, !dbg !2060
  %79 = icmp ne ptr %78, null, !dbg !2062
  br i1 %79, label %80, label %87, !dbg !2063

80:                                               ; preds = %75
  %81 = load ptr, ptr %14, align 8, !dbg !2064
  %82 = getelementptr inbounds %struct.unz64_s, ptr %81, i32 0, i32 11, !dbg !2065
  %83 = getelementptr inbounds %struct.unz_file_info64_s, ptr %82, i32 0, i32 3, !dbg !2066
  %84 = load i64, ptr %83, align 8, !dbg !2066
  %85 = trunc i64 %84 to i32, !dbg !2067
  %86 = load ptr, ptr %8, align 8, !dbg !2068
  store i32 %85, ptr %86, align 4, !dbg !2069
  br label %87, !dbg !2070

87:                                               ; preds = %80, %75
  %88 = load ptr, ptr %9, align 8, !dbg !2071
  %89 = icmp ne ptr %88, null, !dbg !2073
  br i1 %89, label %90, label %104, !dbg !2074

90:                                               ; preds = %87
  %91 = load ptr, ptr %9, align 8, !dbg !2075
  store i32 6, ptr %91, align 4, !dbg !2077
  %92 = load ptr, ptr %14, align 8, !dbg !2078
  %93 = getelementptr inbounds %struct.unz64_s, ptr %92, i32 0, i32 11, !dbg !2079
  %94 = getelementptr inbounds %struct.unz_file_info64_s, ptr %93, i32 0, i32 2, !dbg !2080
  %95 = load i64, ptr %94, align 8, !dbg !2080
  %96 = and i64 %95, 6, !dbg !2081
  switch i64 %96, label %103 [
    i64 6, label %97
    i64 4, label %99
    i64 2, label %101
  ], !dbg !2082

97:                                               ; preds = %90
  %98 = load ptr, ptr %9, align 8, !dbg !2083
  store i32 1, ptr %98, align 4, !dbg !2085
  br label %103, !dbg !2086

99:                                               ; preds = %90
  %100 = load ptr, ptr %9, align 8, !dbg !2087
  store i32 2, ptr %100, align 4, !dbg !2088
  br label %103, !dbg !2089

101:                                              ; preds = %90
  %102 = load ptr, ptr %9, align 8, !dbg !2090
  store i32 9, ptr %102, align 4, !dbg !2091
  br label %103, !dbg !2092

103:                                              ; preds = %90, %101, %99, %97
  br label %104, !dbg !2093

104:                                              ; preds = %103, %87
  %105 = load ptr, ptr %14, align 8, !dbg !2094
  %106 = getelementptr inbounds %struct.unz64_s, ptr %105, i32 0, i32 11, !dbg !2096
  %107 = getelementptr inbounds %struct.unz_file_info64_s, ptr %106, i32 0, i32 3, !dbg !2097
  %108 = load i64, ptr %107, align 8, !dbg !2097
  %109 = icmp ne i64 %108, 0, !dbg !2098
  br i1 %109, label %110, label %123, !dbg !2099

110:                                              ; preds = %104
  %111 = load ptr, ptr %14, align 8, !dbg !2100
  %112 = getelementptr inbounds %struct.unz64_s, ptr %111, i32 0, i32 11, !dbg !2101
  %113 = getelementptr inbounds %struct.unz_file_info64_s, ptr %112, i32 0, i32 3, !dbg !2102
  %114 = load i64, ptr %113, align 8, !dbg !2102
  %115 = icmp ne i64 %114, 12, !dbg !2103
  br i1 %115, label %116, label %123, !dbg !2104

116:                                              ; preds = %110
  %117 = load ptr, ptr %14, align 8, !dbg !2105
  %118 = getelementptr inbounds %struct.unz64_s, ptr %117, i32 0, i32 11, !dbg !2106
  %119 = getelementptr inbounds %struct.unz_file_info64_s, ptr %118, i32 0, i32 3, !dbg !2107
  %120 = load i64, ptr %119, align 8, !dbg !2107
  %121 = icmp ne i64 %120, 8, !dbg !2108
  br i1 %121, label %122, label %123, !dbg !2109

122:                                              ; preds = %116
  store i32 -103, ptr %12, align 4, !dbg !2110
  br label %123, !dbg !2111

123:                                              ; preds = %122, %116, %110, %104
  %124 = load ptr, ptr %14, align 8, !dbg !2112
  %125 = getelementptr inbounds %struct.unz64_s, ptr %124, i32 0, i32 11, !dbg !2113
  %126 = getelementptr inbounds %struct.unz_file_info64_s, ptr %125, i32 0, i32 5, !dbg !2114
  %127 = load i64, ptr %126, align 8, !dbg !2114
  %128 = load ptr, ptr %15, align 8, !dbg !2115
  %129 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %128, i32 0, i32 9, !dbg !2116
  store i64 %127, ptr %129, align 8, !dbg !2117
  %130 = load ptr, ptr %15, align 8, !dbg !2118
  %131 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %130, i32 0, i32 8, !dbg !2119
  store i64 0, ptr %131, align 8, !dbg !2120
  %132 = load ptr, ptr %15, align 8, !dbg !2121
  %133 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %132, i32 0, i32 7, !dbg !2122
  store i64 0, ptr %133, align 8, !dbg !2123
  %134 = load ptr, ptr %14, align 8, !dbg !2124
  %135 = getelementptr inbounds %struct.unz64_s, ptr %134, i32 0, i32 11, !dbg !2125
  %136 = getelementptr inbounds %struct.unz_file_info64_s, ptr %135, i32 0, i32 3, !dbg !2126
  %137 = load i64, ptr %136, align 8, !dbg !2126
  %138 = load ptr, ptr %15, align 8, !dbg !2127
  %139 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %138, i32 0, i32 14, !dbg !2128
  store i64 %137, ptr %139, align 8, !dbg !2129
  %140 = load ptr, ptr %14, align 8, !dbg !2130
  %141 = getelementptr inbounds %struct.unz64_s, ptr %140, i32 0, i32 2, !dbg !2131
  %142 = load ptr, ptr %141, align 8, !dbg !2131
  %143 = load ptr, ptr %15, align 8, !dbg !2132
  %144 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %143, i32 0, i32 13, !dbg !2133
  store ptr %142, ptr %144, align 8, !dbg !2134
  %145 = load ptr, ptr %15, align 8, !dbg !2135
  %146 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %145, i32 0, i32 12, !dbg !2136
  %147 = load ptr, ptr %14, align 8, !dbg !2137
  %148 = getelementptr inbounds %struct.unz64_s, ptr %147, i32 0, i32 0, !dbg !2138
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %146, ptr align 8 %148, i64 96, i1 false), !dbg !2138
  %149 = load ptr, ptr %14, align 8, !dbg !2139
  %150 = getelementptr inbounds %struct.unz64_s, ptr %149, i32 0, i32 4, !dbg !2140
  %151 = load i64, ptr %150, align 8, !dbg !2140
  %152 = load ptr, ptr %15, align 8, !dbg !2141
  %153 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %152, i32 0, i32 15, !dbg !2142
  store i64 %151, ptr %153, align 8, !dbg !2143
  %154 = load ptr, ptr %15, align 8, !dbg !2144
  %155 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %154, i32 0, i32 1, !dbg !2145
  %156 = getelementptr inbounds %struct.z_stream_s, ptr %155, i32 0, i32 5, !dbg !2146
  store i64 0, ptr %156, align 8, !dbg !2147
  %157 = load ptr, ptr %14, align 8, !dbg !2148
  %158 = getelementptr inbounds %struct.unz64_s, ptr %157, i32 0, i32 11, !dbg !2150
  %159 = getelementptr inbounds %struct.unz_file_info64_s, ptr %158, i32 0, i32 3, !dbg !2151
  %160 = load i64, ptr %159, align 8, !dbg !2151
  %161 = icmp eq i64 %160, 12, !dbg !2152
  br i1 %161, label %162, label %168, !dbg !2153

162:                                              ; preds = %123
  %163 = load i32, ptr %10, align 4, !dbg !2154
  %164 = icmp ne i32 %163, 0, !dbg !2154
  br i1 %164, label %168, label %165, !dbg !2155

165:                                              ; preds = %162
  %166 = load ptr, ptr %15, align 8, !dbg !2156
  %167 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %166, i32 0, i32 16, !dbg !2158
  store i32 1, ptr %167, align 8, !dbg !2159
  br label %210, !dbg !2160

168:                                              ; preds = %162, %123
  %169 = load ptr, ptr %14, align 8, !dbg !2161
  %170 = getelementptr inbounds %struct.unz64_s, ptr %169, i32 0, i32 11, !dbg !2163
  %171 = getelementptr inbounds %struct.unz_file_info64_s, ptr %170, i32 0, i32 3, !dbg !2164
  %172 = load i64, ptr %171, align 8, !dbg !2164
  %173 = icmp eq i64 %172, 8, !dbg !2165
  br i1 %173, label %174, label %209, !dbg !2166

174:                                              ; preds = %168
  %175 = load i32, ptr %10, align 4, !dbg !2167
  %176 = icmp ne i32 %175, 0, !dbg !2167
  br i1 %176, label %209, label %177, !dbg !2168

177:                                              ; preds = %174
  %178 = load ptr, ptr %15, align 8, !dbg !2169
  %179 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %178, i32 0, i32 1, !dbg !2171
  %180 = getelementptr inbounds %struct.z_stream_s, ptr %179, i32 0, i32 8, !dbg !2172
  store ptr null, ptr %180, align 8, !dbg !2173
  %181 = load ptr, ptr %15, align 8, !dbg !2174
  %182 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %181, i32 0, i32 1, !dbg !2175
  %183 = getelementptr inbounds %struct.z_stream_s, ptr %182, i32 0, i32 9, !dbg !2176
  store ptr null, ptr %183, align 8, !dbg !2177
  %184 = load ptr, ptr %15, align 8, !dbg !2178
  %185 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %184, i32 0, i32 1, !dbg !2179
  %186 = getelementptr inbounds %struct.z_stream_s, ptr %185, i32 0, i32 10, !dbg !2180
  store ptr null, ptr %186, align 8, !dbg !2181
  %187 = load ptr, ptr %15, align 8, !dbg !2182
  %188 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %187, i32 0, i32 1, !dbg !2183
  %189 = getelementptr inbounds %struct.z_stream_s, ptr %188, i32 0, i32 0, !dbg !2184
  store ptr null, ptr %189, align 8, !dbg !2185
  %190 = load ptr, ptr %15, align 8, !dbg !2186
  %191 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %190, i32 0, i32 1, !dbg !2187
  %192 = getelementptr inbounds %struct.z_stream_s, ptr %191, i32 0, i32 1, !dbg !2188
  store i32 0, ptr %192, align 8, !dbg !2189
  %193 = load ptr, ptr %15, align 8, !dbg !2190
  %194 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %193, i32 0, i32 1, !dbg !2190
  %195 = call i32 @inflateInit2_(ptr noundef %194, i32 noundef -15, ptr noundef @.str, i32 noundef 112), !dbg !2190
  store i32 %195, ptr %12, align 4, !dbg !2191
  %196 = load i32, ptr %12, align 4, !dbg !2192
  %197 = icmp eq i32 %196, 0, !dbg !2194
  br i1 %197, label %198, label %201, !dbg !2195

198:                                              ; preds = %177
  %199 = load ptr, ptr %15, align 8, !dbg !2196
  %200 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %199, i32 0, i32 3, !dbg !2197
  store i64 8, ptr %200, align 8, !dbg !2198
  br label %208, !dbg !2196

201:                                              ; preds = %177
  %202 = load ptr, ptr %15, align 8, !dbg !2199
  %203 = icmp ne ptr %202, null, !dbg !2199
  br i1 %203, label %204, label %206, !dbg !2203

204:                                              ; preds = %201
  %205 = load ptr, ptr %15, align 8, !dbg !2199
  call void @free(ptr noundef %205) #9, !dbg !2199
  br label %206, !dbg !2199

206:                                              ; preds = %204, %201
  %207 = load i32, ptr %12, align 4, !dbg !2204
  store i32 %207, ptr %6, align 4, !dbg !2205
  br label %241, !dbg !2205

208:                                              ; preds = %198
  br label %209, !dbg !2206

209:                                              ; preds = %208, %174, %168
  br label %210

210:                                              ; preds = %209, %165
  %211 = load ptr, ptr %14, align 8, !dbg !2207
  %212 = getelementptr inbounds %struct.unz64_s, ptr %211, i32 0, i32 11, !dbg !2208
  %213 = getelementptr inbounds %struct.unz_file_info64_s, ptr %212, i32 0, i32 6, !dbg !2209
  %214 = load i64, ptr %213, align 8, !dbg !2209
  %215 = load ptr, ptr %15, align 8, !dbg !2210
  %216 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %215, i32 0, i32 10, !dbg !2211
  store i64 %214, ptr %216, align 8, !dbg !2212
  %217 = load ptr, ptr %14, align 8, !dbg !2213
  %218 = getelementptr inbounds %struct.unz64_s, ptr %217, i32 0, i32 11, !dbg !2214
  %219 = getelementptr inbounds %struct.unz_file_info64_s, ptr %218, i32 0, i32 7, !dbg !2215
  %220 = load i64, ptr %219, align 8, !dbg !2215
  %221 = load ptr, ptr %15, align 8, !dbg !2216
  %222 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %221, i32 0, i32 11, !dbg !2217
  store i64 %220, ptr %222, align 8, !dbg !2218
  %223 = load ptr, ptr %14, align 8, !dbg !2219
  %224 = getelementptr inbounds %struct.unz64_s, ptr %223, i32 0, i32 12, !dbg !2220
  %225 = getelementptr inbounds %struct.unz_file_info64_internal_s, ptr %224, i32 0, i32 0, !dbg !2221
  %226 = load i64, ptr %225, align 8, !dbg !2221
  %227 = add i64 %226, 30, !dbg !2222
  %228 = load i32, ptr %13, align 4, !dbg !2223
  %229 = zext i32 %228 to i64, !dbg !2223
  %230 = add i64 %227, %229, !dbg !2224
  %231 = load ptr, ptr %15, align 8, !dbg !2225
  %232 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %231, i32 0, i32 2, !dbg !2226
  store i64 %230, ptr %232, align 8, !dbg !2227
  %233 = load ptr, ptr %15, align 8, !dbg !2228
  %234 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %233, i32 0, i32 1, !dbg !2229
  %235 = getelementptr inbounds %struct.z_stream_s, ptr %234, i32 0, i32 1, !dbg !2230
  store i32 0, ptr %235, align 8, !dbg !2231
  %236 = load ptr, ptr %15, align 8, !dbg !2232
  %237 = load ptr, ptr %14, align 8, !dbg !2233
  %238 = getelementptr inbounds %struct.unz64_s, ptr %237, i32 0, i32 13, !dbg !2234
  store ptr %236, ptr %238, align 8, !dbg !2235
  %239 = load ptr, ptr %14, align 8, !dbg !2236
  %240 = getelementptr inbounds %struct.unz64_s, ptr %239, i32 0, i32 14, !dbg !2237
  store i32 0, ptr %240, align 8, !dbg !2238
  store i32 0, ptr %6, align 4, !dbg !2239
  br label %241, !dbg !2239

241:                                              ; preds = %210, %206, %74, %49, %44, %31, %24, %20
  %242 = load i32, ptr %6, align 4, !dbg !2240
  ret i32 %242, !dbg !2240
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unz64local_CheckCurrentFileCoherencyHeader(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !2241 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2246, metadata !DIExpression()), !dbg !2247
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2248, metadata !DIExpression()), !dbg !2249
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2250, metadata !DIExpression()), !dbg !2251
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2252, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2254, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2256, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2258, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2260, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2262, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2264, metadata !DIExpression()), !dbg !2265
  store i32 0, ptr %15, align 4, !dbg !2265
  %16 = load ptr, ptr %7, align 8, !dbg !2266
  store i32 0, ptr %16, align 4, !dbg !2267
  %17 = load ptr, ptr %8, align 8, !dbg !2268
  store i64 0, ptr %17, align 8, !dbg !2269
  %18 = load ptr, ptr %9, align 8, !dbg !2270
  store i32 0, ptr %18, align 4, !dbg !2271
  %19 = load ptr, ptr %6, align 8, !dbg !2272
  %20 = getelementptr inbounds %struct.unz64_s, ptr %19, i32 0, i32 0, !dbg !2272
  %21 = load ptr, ptr %6, align 8, !dbg !2272
  %22 = getelementptr inbounds %struct.unz64_s, ptr %21, i32 0, i32 2, !dbg !2272
  %23 = load ptr, ptr %22, align 8, !dbg !2272
  %24 = load ptr, ptr %6, align 8, !dbg !2272
  %25 = getelementptr inbounds %struct.unz64_s, ptr %24, i32 0, i32 12, !dbg !2272
  %26 = getelementptr inbounds %struct.unz_file_info64_internal_s, ptr %25, i32 0, i32 0, !dbg !2272
  %27 = load i64, ptr %26, align 8, !dbg !2272
  %28 = load ptr, ptr %6, align 8, !dbg !2272
  %29 = getelementptr inbounds %struct.unz64_s, ptr %28, i32 0, i32 4, !dbg !2272
  %30 = load i64, ptr %29, align 8, !dbg !2272
  %31 = add i64 %27, %30, !dbg !2272
  %32 = call i64 @call_zseek64(ptr noundef %20, ptr noundef %23, i64 noundef %31, i32 noundef 0), !dbg !2272
  %33 = icmp ne i64 %32, 0, !dbg !2274
  br i1 %33, label %34, label %35, !dbg !2275

34:                                               ; preds = %4
  store i32 -1, ptr %5, align 4, !dbg !2276
  br label %257, !dbg !2276

35:                                               ; preds = %4
  %36 = load i32, ptr %15, align 4, !dbg !2277
  %37 = icmp eq i32 %36, 0, !dbg !2279
  br i1 %37, label %38, label %53, !dbg !2280

38:                                               ; preds = %35
  %39 = load ptr, ptr %6, align 8, !dbg !2281
  %40 = getelementptr inbounds %struct.unz64_s, ptr %39, i32 0, i32 0, !dbg !2284
  %41 = load ptr, ptr %6, align 8, !dbg !2285
  %42 = getelementptr inbounds %struct.unz64_s, ptr %41, i32 0, i32 2, !dbg !2286
  %43 = load ptr, ptr %42, align 8, !dbg !2286
  %44 = call i32 @unz64local_getLong(ptr noundef %40, ptr noundef %43, ptr noundef %10), !dbg !2287
  %45 = icmp ne i32 %44, 0, !dbg !2288
  br i1 %45, label %46, label %47, !dbg !2289

46:                                               ; preds = %38
  store i32 -1, ptr %15, align 4, !dbg !2290
  br label %52, !dbg !2291

47:                                               ; preds = %38
  %48 = load i64, ptr %10, align 8, !dbg !2292
  %49 = icmp ne i64 %48, 67324752, !dbg !2294
  br i1 %49, label %50, label %51, !dbg !2295

50:                                               ; preds = %47
  store i32 -103, ptr %15, align 4, !dbg !2296
  br label %51, !dbg !2297

51:                                               ; preds = %50, %47
  br label %52

52:                                               ; preds = %51, %46
  br label %53, !dbg !2298

53:                                               ; preds = %52, %35
  %54 = load ptr, ptr %6, align 8, !dbg !2299
  %55 = getelementptr inbounds %struct.unz64_s, ptr %54, i32 0, i32 0, !dbg !2301
  %56 = load ptr, ptr %6, align 8, !dbg !2302
  %57 = getelementptr inbounds %struct.unz64_s, ptr %56, i32 0, i32 2, !dbg !2303
  %58 = load ptr, ptr %57, align 8, !dbg !2303
  %59 = call i32 @unz64local_getShort(ptr noundef %55, ptr noundef %58, ptr noundef %11), !dbg !2304
  %60 = icmp ne i32 %59, 0, !dbg !2305
  br i1 %60, label %61, label %62, !dbg !2306

61:                                               ; preds = %53
  store i32 -1, ptr %15, align 4, !dbg !2307
  br label %62, !dbg !2308

62:                                               ; preds = %61, %53
  %63 = load ptr, ptr %6, align 8, !dbg !2309
  %64 = getelementptr inbounds %struct.unz64_s, ptr %63, i32 0, i32 0, !dbg !2311
  %65 = load ptr, ptr %6, align 8, !dbg !2312
  %66 = getelementptr inbounds %struct.unz64_s, ptr %65, i32 0, i32 2, !dbg !2313
  %67 = load ptr, ptr %66, align 8, !dbg !2313
  %68 = call i32 @unz64local_getShort(ptr noundef %64, ptr noundef %67, ptr noundef %12), !dbg !2314
  %69 = icmp ne i32 %68, 0, !dbg !2315
  br i1 %69, label %70, label %71, !dbg !2316

70:                                               ; preds = %62
  store i32 -1, ptr %15, align 4, !dbg !2317
  br label %71, !dbg !2318

71:                                               ; preds = %70, %62
  %72 = load ptr, ptr %6, align 8, !dbg !2319
  %73 = getelementptr inbounds %struct.unz64_s, ptr %72, i32 0, i32 0, !dbg !2321
  %74 = load ptr, ptr %6, align 8, !dbg !2322
  %75 = getelementptr inbounds %struct.unz64_s, ptr %74, i32 0, i32 2, !dbg !2323
  %76 = load ptr, ptr %75, align 8, !dbg !2323
  %77 = call i32 @unz64local_getShort(ptr noundef %73, ptr noundef %76, ptr noundef %11), !dbg !2324
  %78 = icmp ne i32 %77, 0, !dbg !2325
  br i1 %78, label %79, label %80, !dbg !2326

79:                                               ; preds = %71
  store i32 -1, ptr %15, align 4, !dbg !2327
  br label %92, !dbg !2328

80:                                               ; preds = %71
  %81 = load i32, ptr %15, align 4, !dbg !2329
  %82 = icmp eq i32 %81, 0, !dbg !2331
  br i1 %82, label %83, label %91, !dbg !2332

83:                                               ; preds = %80
  %84 = load i64, ptr %11, align 8, !dbg !2333
  %85 = load ptr, ptr %6, align 8, !dbg !2334
  %86 = getelementptr inbounds %struct.unz64_s, ptr %85, i32 0, i32 11, !dbg !2335
  %87 = getelementptr inbounds %struct.unz_file_info64_s, ptr %86, i32 0, i32 3, !dbg !2336
  %88 = load i64, ptr %87, align 8, !dbg !2336
  %89 = icmp ne i64 %84, %88, !dbg !2337
  br i1 %89, label %90, label %91, !dbg !2338

90:                                               ; preds = %83
  store i32 -103, ptr %15, align 4, !dbg !2339
  br label %91, !dbg !2340

91:                                               ; preds = %90, %83, %80
  br label %92

92:                                               ; preds = %91, %79
  %93 = load i32, ptr %15, align 4, !dbg !2341
  %94 = icmp eq i32 %93, 0, !dbg !2343
  br i1 %94, label %95, label %114, !dbg !2344

95:                                               ; preds = %92
  %96 = load ptr, ptr %6, align 8, !dbg !2345
  %97 = getelementptr inbounds %struct.unz64_s, ptr %96, i32 0, i32 11, !dbg !2346
  %98 = getelementptr inbounds %struct.unz_file_info64_s, ptr %97, i32 0, i32 3, !dbg !2347
  %99 = load i64, ptr %98, align 8, !dbg !2347
  %100 = icmp ne i64 %99, 0, !dbg !2348
  br i1 %100, label %101, label %114, !dbg !2349

101:                                              ; preds = %95
  %102 = load ptr, ptr %6, align 8, !dbg !2350
  %103 = getelementptr inbounds %struct.unz64_s, ptr %102, i32 0, i32 11, !dbg !2351
  %104 = getelementptr inbounds %struct.unz_file_info64_s, ptr %103, i32 0, i32 3, !dbg !2352
  %105 = load i64, ptr %104, align 8, !dbg !2352
  %106 = icmp ne i64 %105, 12, !dbg !2353
  br i1 %106, label %107, label %114, !dbg !2354

107:                                              ; preds = %101
  %108 = load ptr, ptr %6, align 8, !dbg !2355
  %109 = getelementptr inbounds %struct.unz64_s, ptr %108, i32 0, i32 11, !dbg !2356
  %110 = getelementptr inbounds %struct.unz_file_info64_s, ptr %109, i32 0, i32 3, !dbg !2357
  %111 = load i64, ptr %110, align 8, !dbg !2357
  %112 = icmp ne i64 %111, 8, !dbg !2358
  br i1 %112, label %113, label %114, !dbg !2359

113:                                              ; preds = %107
  store i32 -103, ptr %15, align 4, !dbg !2360
  br label %114, !dbg !2361

114:                                              ; preds = %113, %107, %101, %95, %92
  %115 = load ptr, ptr %6, align 8, !dbg !2362
  %116 = getelementptr inbounds %struct.unz64_s, ptr %115, i32 0, i32 0, !dbg !2364
  %117 = load ptr, ptr %6, align 8, !dbg !2365
  %118 = getelementptr inbounds %struct.unz64_s, ptr %117, i32 0, i32 2, !dbg !2366
  %119 = load ptr, ptr %118, align 8, !dbg !2366
  %120 = call i32 @unz64local_getLong(ptr noundef %116, ptr noundef %119, ptr noundef %11), !dbg !2367
  %121 = icmp ne i32 %120, 0, !dbg !2368
  br i1 %121, label %122, label %123, !dbg !2369

122:                                              ; preds = %114
  store i32 -1, ptr %15, align 4, !dbg !2370
  br label %123, !dbg !2371

123:                                              ; preds = %122, %114
  %124 = load ptr, ptr %6, align 8, !dbg !2372
  %125 = getelementptr inbounds %struct.unz64_s, ptr %124, i32 0, i32 0, !dbg !2374
  %126 = load ptr, ptr %6, align 8, !dbg !2375
  %127 = getelementptr inbounds %struct.unz64_s, ptr %126, i32 0, i32 2, !dbg !2376
  %128 = load ptr, ptr %127, align 8, !dbg !2376
  %129 = call i32 @unz64local_getLong(ptr noundef %125, ptr noundef %128, ptr noundef %11), !dbg !2377
  %130 = icmp ne i32 %129, 0, !dbg !2378
  br i1 %130, label %131, label %132, !dbg !2379

131:                                              ; preds = %123
  store i32 -1, ptr %15, align 4, !dbg !2380
  br label %148, !dbg !2381

132:                                              ; preds = %123
  %133 = load i32, ptr %15, align 4, !dbg !2382
  %134 = icmp eq i32 %133, 0, !dbg !2384
  br i1 %134, label %135, label %147, !dbg !2385

135:                                              ; preds = %132
  %136 = load i64, ptr %11, align 8, !dbg !2386
  %137 = load ptr, ptr %6, align 8, !dbg !2387
  %138 = getelementptr inbounds %struct.unz64_s, ptr %137, i32 0, i32 11, !dbg !2388
  %139 = getelementptr inbounds %struct.unz_file_info64_s, ptr %138, i32 0, i32 5, !dbg !2389
  %140 = load i64, ptr %139, align 8, !dbg !2389
  %141 = icmp ne i64 %136, %140, !dbg !2390
  br i1 %141, label %142, label %147, !dbg !2391

142:                                              ; preds = %135
  %143 = load i64, ptr %12, align 8, !dbg !2392
  %144 = and i64 %143, 8, !dbg !2393
  %145 = icmp eq i64 %144, 0, !dbg !2394
  br i1 %145, label %146, label %147, !dbg !2395

146:                                              ; preds = %142
  store i32 -103, ptr %15, align 4, !dbg !2396
  br label %147, !dbg !2397

147:                                              ; preds = %146, %142, %135, %132
  br label %148

148:                                              ; preds = %147, %131
  %149 = load ptr, ptr %6, align 8, !dbg !2398
  %150 = getelementptr inbounds %struct.unz64_s, ptr %149, i32 0, i32 0, !dbg !2400
  %151 = load ptr, ptr %6, align 8, !dbg !2401
  %152 = getelementptr inbounds %struct.unz64_s, ptr %151, i32 0, i32 2, !dbg !2402
  %153 = load ptr, ptr %152, align 8, !dbg !2402
  %154 = call i32 @unz64local_getLong(ptr noundef %150, ptr noundef %153, ptr noundef %11), !dbg !2403
  %155 = icmp ne i32 %154, 0, !dbg !2404
  br i1 %155, label %156, label %157, !dbg !2405

156:                                              ; preds = %148
  store i32 -1, ptr %15, align 4, !dbg !2406
  br label %176, !dbg !2407

157:                                              ; preds = %148
  %158 = load i64, ptr %11, align 8, !dbg !2408
  %159 = icmp ne i64 %158, 4294967295, !dbg !2410
  br i1 %159, label %160, label %175, !dbg !2411

160:                                              ; preds = %157
  %161 = load i32, ptr %15, align 4, !dbg !2412
  %162 = icmp eq i32 %161, 0, !dbg !2413
  br i1 %162, label %163, label %175, !dbg !2414

163:                                              ; preds = %160
  %164 = load i64, ptr %11, align 8, !dbg !2415
  %165 = load ptr, ptr %6, align 8, !dbg !2416
  %166 = getelementptr inbounds %struct.unz64_s, ptr %165, i32 0, i32 11, !dbg !2417
  %167 = getelementptr inbounds %struct.unz_file_info64_s, ptr %166, i32 0, i32 6, !dbg !2418
  %168 = load i64, ptr %167, align 8, !dbg !2418
  %169 = icmp ne i64 %164, %168, !dbg !2419
  br i1 %169, label %170, label %175, !dbg !2420

170:                                              ; preds = %163
  %171 = load i64, ptr %12, align 8, !dbg !2421
  %172 = and i64 %171, 8, !dbg !2422
  %173 = icmp eq i64 %172, 0, !dbg !2423
  br i1 %173, label %174, label %175, !dbg !2424

174:                                              ; preds = %170
  store i32 -103, ptr %15, align 4, !dbg !2425
  br label %175, !dbg !2426

175:                                              ; preds = %174, %170, %163, %160, %157
  br label %176

176:                                              ; preds = %175, %156
  %177 = load ptr, ptr %6, align 8, !dbg !2427
  %178 = getelementptr inbounds %struct.unz64_s, ptr %177, i32 0, i32 0, !dbg !2429
  %179 = load ptr, ptr %6, align 8, !dbg !2430
  %180 = getelementptr inbounds %struct.unz64_s, ptr %179, i32 0, i32 2, !dbg !2431
  %181 = load ptr, ptr %180, align 8, !dbg !2431
  %182 = call i32 @unz64local_getLong(ptr noundef %178, ptr noundef %181, ptr noundef %11), !dbg !2432
  %183 = icmp ne i32 %182, 0, !dbg !2433
  br i1 %183, label %184, label %185, !dbg !2434

184:                                              ; preds = %176
  store i32 -1, ptr %15, align 4, !dbg !2435
  br label %204, !dbg !2436

185:                                              ; preds = %176
  %186 = load i64, ptr %11, align 8, !dbg !2437
  %187 = icmp ne i64 %186, 4294967295, !dbg !2439
  br i1 %187, label %188, label %203, !dbg !2440

188:                                              ; preds = %185
  %189 = load i32, ptr %15, align 4, !dbg !2441
  %190 = icmp eq i32 %189, 0, !dbg !2442
  br i1 %190, label %191, label %203, !dbg !2443

191:                                              ; preds = %188
  %192 = load i64, ptr %11, align 8, !dbg !2444
  %193 = load ptr, ptr %6, align 8, !dbg !2445
  %194 = getelementptr inbounds %struct.unz64_s, ptr %193, i32 0, i32 11, !dbg !2446
  %195 = getelementptr inbounds %struct.unz_file_info64_s, ptr %194, i32 0, i32 7, !dbg !2447
  %196 = load i64, ptr %195, align 8, !dbg !2447
  %197 = icmp ne i64 %192, %196, !dbg !2448
  br i1 %197, label %198, label %203, !dbg !2449

198:                                              ; preds = %191
  %199 = load i64, ptr %12, align 8, !dbg !2450
  %200 = and i64 %199, 8, !dbg !2451
  %201 = icmp eq i64 %200, 0, !dbg !2452
  br i1 %201, label %202, label %203, !dbg !2453

202:                                              ; preds = %198
  store i32 -103, ptr %15, align 4, !dbg !2454
  br label %203, !dbg !2455

203:                                              ; preds = %202, %198, %191, %188, %185
  br label %204

204:                                              ; preds = %203, %184
  %205 = load ptr, ptr %6, align 8, !dbg !2456
  %206 = getelementptr inbounds %struct.unz64_s, ptr %205, i32 0, i32 0, !dbg !2458
  %207 = load ptr, ptr %6, align 8, !dbg !2459
  %208 = getelementptr inbounds %struct.unz64_s, ptr %207, i32 0, i32 2, !dbg !2460
  %209 = load ptr, ptr %208, align 8, !dbg !2460
  %210 = call i32 @unz64local_getShort(ptr noundef %206, ptr noundef %209, ptr noundef %13), !dbg !2461
  %211 = icmp ne i32 %210, 0, !dbg !2462
  br i1 %211, label %212, label %213, !dbg !2463

212:                                              ; preds = %204
  store i32 -1, ptr %15, align 4, !dbg !2464
  br label %225, !dbg !2465

213:                                              ; preds = %204
  %214 = load i32, ptr %15, align 4, !dbg !2466
  %215 = icmp eq i32 %214, 0, !dbg !2468
  br i1 %215, label %216, label %224, !dbg !2469

216:                                              ; preds = %213
  %217 = load i64, ptr %13, align 8, !dbg !2470
  %218 = load ptr, ptr %6, align 8, !dbg !2471
  %219 = getelementptr inbounds %struct.unz64_s, ptr %218, i32 0, i32 11, !dbg !2472
  %220 = getelementptr inbounds %struct.unz_file_info64_s, ptr %219, i32 0, i32 8, !dbg !2473
  %221 = load i64, ptr %220, align 8, !dbg !2473
  %222 = icmp ne i64 %217, %221, !dbg !2474
  br i1 %222, label %223, label %224, !dbg !2475

223:                                              ; preds = %216
  store i32 -103, ptr %15, align 4, !dbg !2476
  br label %224, !dbg !2477

224:                                              ; preds = %223, %216, %213
  br label %225

225:                                              ; preds = %224, %212
  %226 = load i64, ptr %13, align 8, !dbg !2478
  %227 = trunc i64 %226 to i32, !dbg !2479
  %228 = load ptr, ptr %7, align 8, !dbg !2480
  %229 = load i32, ptr %228, align 4, !dbg !2481
  %230 = add i32 %229, %227, !dbg !2481
  store i32 %230, ptr %228, align 4, !dbg !2481
  %231 = load ptr, ptr %6, align 8, !dbg !2482
  %232 = getelementptr inbounds %struct.unz64_s, ptr %231, i32 0, i32 0, !dbg !2484
  %233 = load ptr, ptr %6, align 8, !dbg !2485
  %234 = getelementptr inbounds %struct.unz64_s, ptr %233, i32 0, i32 2, !dbg !2486
  %235 = load ptr, ptr %234, align 8, !dbg !2486
  %236 = call i32 @unz64local_getShort(ptr noundef %232, ptr noundef %235, ptr noundef %14), !dbg !2487
  %237 = icmp ne i32 %236, 0, !dbg !2488
  br i1 %237, label %238, label %239, !dbg !2489

238:                                              ; preds = %225
  store i32 -1, ptr %15, align 4, !dbg !2490
  br label %239, !dbg !2491

239:                                              ; preds = %238, %225
  %240 = load ptr, ptr %6, align 8, !dbg !2492
  %241 = getelementptr inbounds %struct.unz64_s, ptr %240, i32 0, i32 12, !dbg !2493
  %242 = getelementptr inbounds %struct.unz_file_info64_internal_s, ptr %241, i32 0, i32 0, !dbg !2494
  %243 = load i64, ptr %242, align 8, !dbg !2494
  %244 = add i64 %243, 30, !dbg !2495
  %245 = load i64, ptr %13, align 8, !dbg !2496
  %246 = add i64 %244, %245, !dbg !2497
  %247 = load ptr, ptr %8, align 8, !dbg !2498
  store i64 %246, ptr %247, align 8, !dbg !2499
  %248 = load i64, ptr %14, align 8, !dbg !2500
  %249 = trunc i64 %248 to i32, !dbg !2501
  %250 = load ptr, ptr %9, align 8, !dbg !2502
  store i32 %249, ptr %250, align 4, !dbg !2503
  %251 = load i64, ptr %14, align 8, !dbg !2504
  %252 = trunc i64 %251 to i32, !dbg !2505
  %253 = load ptr, ptr %7, align 8, !dbg !2506
  %254 = load i32, ptr %253, align 4, !dbg !2507
  %255 = add i32 %254, %252, !dbg !2507
  store i32 %255, ptr %253, align 4, !dbg !2507
  %256 = load i32, ptr %15, align 4, !dbg !2508
  store i32 %256, ptr %5, align 4, !dbg !2509
  br label %257, !dbg !2509

257:                                              ; preds = %239, %34
  %258 = load i32, ptr %5, align 4, !dbg !2510
  ret i32 %258, !dbg !2510
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzOpenCurrentFile(ptr noundef %0) #0 !dbg !2511 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2512, metadata !DIExpression()), !dbg !2513
  %3 = load ptr, ptr %2, align 8, !dbg !2514
  %4 = call i32 @unzOpenCurrentFile3(ptr noundef %3, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null), !dbg !2515
  ret i32 %4, !dbg !2516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzOpenCurrentFilePassword(ptr noundef %0, ptr noundef %1) #0 !dbg !2517 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2520, metadata !DIExpression()), !dbg !2521
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2522, metadata !DIExpression()), !dbg !2523
  %5 = load ptr, ptr %3, align 8, !dbg !2524
  %6 = load ptr, ptr %4, align 8, !dbg !2525
  %7 = call i32 @unzOpenCurrentFile3(ptr noundef %5, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %6), !dbg !2526
  ret i32 %7, !dbg !2527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzOpenCurrentFile2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !2528 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2531, metadata !DIExpression()), !dbg !2532
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2533, metadata !DIExpression()), !dbg !2534
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2535, metadata !DIExpression()), !dbg !2536
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2537, metadata !DIExpression()), !dbg !2538
  %9 = load ptr, ptr %5, align 8, !dbg !2539
  %10 = load ptr, ptr %6, align 8, !dbg !2540
  %11 = load ptr, ptr %7, align 8, !dbg !2541
  %12 = load i32, ptr %8, align 4, !dbg !2542
  %13 = call i32 @unzOpenCurrentFile3(ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef null), !dbg !2543
  ret i32 %13, !dbg !2544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @unzGetCurrentFileZStreamPos64(ptr noundef %0) #0 !dbg !2545 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2548, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2550, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2552, metadata !DIExpression()), !dbg !2553
  %6 = load ptr, ptr %3, align 8, !dbg !2554
  store ptr %6, ptr %4, align 8, !dbg !2555
  %7 = load ptr, ptr %3, align 8, !dbg !2556
  %8 = icmp eq ptr %7, null, !dbg !2558
  br i1 %8, label %9, label %10, !dbg !2559

9:                                                ; preds = %1
  store i64 0, ptr %2, align 8, !dbg !2560
  br label %25, !dbg !2560

10:                                               ; preds = %1
  %11 = load ptr, ptr %4, align 8, !dbg !2561
  %12 = getelementptr inbounds %struct.unz64_s, ptr %11, i32 0, i32 13, !dbg !2562
  %13 = load ptr, ptr %12, align 8, !dbg !2562
  store ptr %13, ptr %5, align 8, !dbg !2563
  %14 = load ptr, ptr %5, align 8, !dbg !2564
  %15 = icmp eq ptr %14, null, !dbg !2566
  br i1 %15, label %16, label %17, !dbg !2567

16:                                               ; preds = %10
  store i64 0, ptr %2, align 8, !dbg !2568
  br label %25, !dbg !2568

17:                                               ; preds = %10
  %18 = load ptr, ptr %5, align 8, !dbg !2569
  %19 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %18, i32 0, i32 2, !dbg !2570
  %20 = load i64, ptr %19, align 8, !dbg !2570
  %21 = load ptr, ptr %5, align 8, !dbg !2571
  %22 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %21, i32 0, i32 15, !dbg !2572
  %23 = load i64, ptr %22, align 8, !dbg !2572
  %24 = add i64 %20, %23, !dbg !2573
  store i64 %24, ptr %2, align 8, !dbg !2574
  br label %25, !dbg !2574

25:                                               ; preds = %17, %16, %9
  %26 = load i64, ptr %2, align 8, !dbg !2575
  ret i64 %26, !dbg !2575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzReadCurrentFile(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !2576 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2579, metadata !DIExpression()), !dbg !2580
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2581, metadata !DIExpression()), !dbg !2582
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2583, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2585, metadata !DIExpression()), !dbg !2586
  store i32 0, ptr %8, align 4, !dbg !2586
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2587, metadata !DIExpression()), !dbg !2588
  store i32 0, ptr %9, align 4, !dbg !2588
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2589, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2591, metadata !DIExpression()), !dbg !2592
  %20 = load ptr, ptr %5, align 8, !dbg !2593
  %21 = icmp eq ptr %20, null, !dbg !2595
  br i1 %21, label %22, label %23, !dbg !2596

22:                                               ; preds = %3
  store i32 -102, ptr %4, align 4, !dbg !2597
  br label %419, !dbg !2597

23:                                               ; preds = %3
  %24 = load ptr, ptr %5, align 8, !dbg !2598
  store ptr %24, ptr %10, align 8, !dbg !2599
  %25 = load ptr, ptr %10, align 8, !dbg !2600
  %26 = getelementptr inbounds %struct.unz64_s, ptr %25, i32 0, i32 13, !dbg !2601
  %27 = load ptr, ptr %26, align 8, !dbg !2601
  store ptr %27, ptr %11, align 8, !dbg !2602
  %28 = load ptr, ptr %11, align 8, !dbg !2603
  %29 = icmp eq ptr %28, null, !dbg !2605
  br i1 %29, label %30, label %31, !dbg !2606

30:                                               ; preds = %23
  store i32 -102, ptr %4, align 4, !dbg !2607
  br label %419, !dbg !2607

31:                                               ; preds = %23
  %32 = load ptr, ptr %11, align 8, !dbg !2608
  %33 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %32, i32 0, i32 0, !dbg !2610
  %34 = load ptr, ptr %33, align 8, !dbg !2610
  %35 = icmp eq ptr %34, null, !dbg !2611
  br i1 %35, label %36, label %37, !dbg !2612

36:                                               ; preds = %31
  store i32 -100, ptr %4, align 4, !dbg !2613
  br label %419, !dbg !2613

37:                                               ; preds = %31
  %38 = load i32, ptr %7, align 4, !dbg !2614
  %39 = icmp eq i32 %38, 0, !dbg !2616
  br i1 %39, label %40, label %41, !dbg !2617

40:                                               ; preds = %37
  store i32 0, ptr %4, align 4, !dbg !2618
  br label %419, !dbg !2618

41:                                               ; preds = %37
  %42 = load ptr, ptr %6, align 8, !dbg !2619
  %43 = load ptr, ptr %11, align 8, !dbg !2620
  %44 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %43, i32 0, i32 1, !dbg !2621
  %45 = getelementptr inbounds %struct.z_stream_s, ptr %44, i32 0, i32 3, !dbg !2622
  store ptr %42, ptr %45, align 8, !dbg !2623
  %46 = load i32, ptr %7, align 4, !dbg !2624
  %47 = load ptr, ptr %11, align 8, !dbg !2625
  %48 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %47, i32 0, i32 1, !dbg !2626
  %49 = getelementptr inbounds %struct.z_stream_s, ptr %48, i32 0, i32 4, !dbg !2627
  store i32 %46, ptr %49, align 8, !dbg !2628
  %50 = load i32, ptr %7, align 4, !dbg !2629
  %51 = zext i32 %50 to i64, !dbg !2629
  %52 = load ptr, ptr %11, align 8, !dbg !2631
  %53 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %52, i32 0, i32 11, !dbg !2632
  %54 = load i64, ptr %53, align 8, !dbg !2632
  %55 = icmp ugt i64 %51, %54, !dbg !2633
  br i1 %55, label %56, label %69, !dbg !2634

56:                                               ; preds = %41
  %57 = load ptr, ptr %11, align 8, !dbg !2635
  %58 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %57, i32 0, i32 16, !dbg !2636
  %59 = load i32, ptr %58, align 8, !dbg !2636
  %60 = icmp ne i32 %59, 0, !dbg !2637
  br i1 %60, label %69, label %61, !dbg !2638

61:                                               ; preds = %56
  %62 = load ptr, ptr %11, align 8, !dbg !2639
  %63 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %62, i32 0, i32 11, !dbg !2640
  %64 = load i64, ptr %63, align 8, !dbg !2640
  %65 = trunc i64 %64 to i32, !dbg !2641
  %66 = load ptr, ptr %11, align 8, !dbg !2642
  %67 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %66, i32 0, i32 1, !dbg !2643
  %68 = getelementptr inbounds %struct.z_stream_s, ptr %67, i32 0, i32 4, !dbg !2644
  store i32 %65, ptr %68, align 8, !dbg !2645
  br label %69, !dbg !2642

69:                                               ; preds = %61, %56, %41
  %70 = load i32, ptr %7, align 4, !dbg !2646
  %71 = zext i32 %70 to i64, !dbg !2646
  %72 = load ptr, ptr %11, align 8, !dbg !2648
  %73 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %72, i32 0, i32 10, !dbg !2649
  %74 = load i64, ptr %73, align 8, !dbg !2649
  %75 = load ptr, ptr %11, align 8, !dbg !2650
  %76 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %75, i32 0, i32 1, !dbg !2651
  %77 = getelementptr inbounds %struct.z_stream_s, ptr %76, i32 0, i32 1, !dbg !2652
  %78 = load i32, ptr %77, align 8, !dbg !2652
  %79 = zext i32 %78 to i64, !dbg !2650
  %80 = add i64 %74, %79, !dbg !2653
  %81 = icmp ugt i64 %71, %80, !dbg !2654
  br i1 %81, label %82, label %100, !dbg !2655

82:                                               ; preds = %69
  %83 = load ptr, ptr %11, align 8, !dbg !2656
  %84 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %83, i32 0, i32 16, !dbg !2657
  %85 = load i32, ptr %84, align 8, !dbg !2657
  %86 = icmp ne i32 %85, 0, !dbg !2658
  br i1 %86, label %87, label %100, !dbg !2659

87:                                               ; preds = %82
  %88 = load ptr, ptr %11, align 8, !dbg !2660
  %89 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %88, i32 0, i32 10, !dbg !2661
  %90 = load i64, ptr %89, align 8, !dbg !2661
  %91 = trunc i64 %90 to i32, !dbg !2662
  %92 = load ptr, ptr %11, align 8, !dbg !2663
  %93 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %92, i32 0, i32 1, !dbg !2664
  %94 = getelementptr inbounds %struct.z_stream_s, ptr %93, i32 0, i32 1, !dbg !2665
  %95 = load i32, ptr %94, align 8, !dbg !2665
  %96 = add i32 %91, %95, !dbg !2666
  %97 = load ptr, ptr %11, align 8, !dbg !2667
  %98 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %97, i32 0, i32 1, !dbg !2668
  %99 = getelementptr inbounds %struct.z_stream_s, ptr %98, i32 0, i32 4, !dbg !2669
  store i32 %96, ptr %99, align 8, !dbg !2670
  br label %100, !dbg !2667

100:                                              ; preds = %87, %82, %69
  br label %101, !dbg !2671

101:                                              ; preds = %411, %100
  %102 = load ptr, ptr %11, align 8, !dbg !2672
  %103 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %102, i32 0, i32 1, !dbg !2673
  %104 = getelementptr inbounds %struct.z_stream_s, ptr %103, i32 0, i32 4, !dbg !2674
  %105 = load i32, ptr %104, align 8, !dbg !2674
  %106 = icmp ugt i32 %105, 0, !dbg !2675
  br i1 %106, label %107, label %412, !dbg !2671

107:                                              ; preds = %101
  %108 = load ptr, ptr %11, align 8, !dbg !2676
  %109 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %108, i32 0, i32 1, !dbg !2679
  %110 = getelementptr inbounds %struct.z_stream_s, ptr %109, i32 0, i32 1, !dbg !2680
  %111 = load i32, ptr %110, align 8, !dbg !2680
  %112 = icmp eq i32 %111, 0, !dbg !2681
  br i1 %112, label %113, label %197, !dbg !2682

113:                                              ; preds = %107
  %114 = load ptr, ptr %11, align 8, !dbg !2683
  %115 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %114, i32 0, i32 10, !dbg !2684
  %116 = load i64, ptr %115, align 8, !dbg !2684
  %117 = icmp ugt i64 %116, 0, !dbg !2685
  br i1 %117, label %118, label %197, !dbg !2686

118:                                              ; preds = %113
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2687, metadata !DIExpression()), !dbg !2689
  store i32 16384, ptr %12, align 4, !dbg !2689
  %119 = load ptr, ptr %11, align 8, !dbg !2690
  %120 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %119, i32 0, i32 10, !dbg !2692
  %121 = load i64, ptr %120, align 8, !dbg !2692
  %122 = load i32, ptr %12, align 4, !dbg !2693
  %123 = zext i32 %122 to i64, !dbg !2693
  %124 = icmp ult i64 %121, %123, !dbg !2694
  br i1 %124, label %125, label %130, !dbg !2695

125:                                              ; preds = %118
  %126 = load ptr, ptr %11, align 8, !dbg !2696
  %127 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %126, i32 0, i32 10, !dbg !2697
  %128 = load i64, ptr %127, align 8, !dbg !2697
  %129 = trunc i64 %128 to i32, !dbg !2698
  store i32 %129, ptr %12, align 4, !dbg !2699
  br label %130, !dbg !2700

130:                                              ; preds = %125, %118
  %131 = load i32, ptr %12, align 4, !dbg !2701
  %132 = icmp eq i32 %131, 0, !dbg !2703
  br i1 %132, label %133, label %134, !dbg !2704

133:                                              ; preds = %130
  store i32 0, ptr %4, align 4, !dbg !2705
  br label %419, !dbg !2705

134:                                              ; preds = %130
  %135 = load ptr, ptr %11, align 8, !dbg !2706
  %136 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %135, i32 0, i32 12, !dbg !2706
  %137 = load ptr, ptr %11, align 8, !dbg !2706
  %138 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %137, i32 0, i32 13, !dbg !2706
  %139 = load ptr, ptr %138, align 8, !dbg !2706
  %140 = load ptr, ptr %11, align 8, !dbg !2706
  %141 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %140, i32 0, i32 2, !dbg !2706
  %142 = load i64, ptr %141, align 8, !dbg !2706
  %143 = load ptr, ptr %11, align 8, !dbg !2706
  %144 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %143, i32 0, i32 15, !dbg !2706
  %145 = load i64, ptr %144, align 8, !dbg !2706
  %146 = add i64 %142, %145, !dbg !2706
  %147 = call i64 @call_zseek64(ptr noundef %136, ptr noundef %139, i64 noundef %146, i32 noundef 0), !dbg !2706
  %148 = icmp ne i64 %147, 0, !dbg !2708
  br i1 %148, label %149, label %150, !dbg !2709

149:                                              ; preds = %134
  store i32 -1, ptr %4, align 4, !dbg !2710
  br label %419, !dbg !2710

150:                                              ; preds = %134
  %151 = load ptr, ptr %11, align 8, !dbg !2711
  %152 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %151, i32 0, i32 12, !dbg !2711
  %153 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %152, i32 0, i32 0, !dbg !2711
  %154 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %153, i32 0, i32 1, !dbg !2711
  %155 = load ptr, ptr %154, align 8, !dbg !2711
  %156 = load ptr, ptr %11, align 8, !dbg !2711
  %157 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %156, i32 0, i32 12, !dbg !2711
  %158 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %157, i32 0, i32 0, !dbg !2711
  %159 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %158, i32 0, i32 8, !dbg !2711
  %160 = load ptr, ptr %159, align 8, !dbg !2711
  %161 = load ptr, ptr %11, align 8, !dbg !2711
  %162 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %161, i32 0, i32 13, !dbg !2711
  %163 = load ptr, ptr %162, align 8, !dbg !2711
  %164 = load ptr, ptr %11, align 8, !dbg !2711
  %165 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %164, i32 0, i32 0, !dbg !2711
  %166 = load ptr, ptr %165, align 8, !dbg !2711
  %167 = load i32, ptr %12, align 4, !dbg !2711
  %168 = zext i32 %167 to i64, !dbg !2711
  %169 = call i64 %155(ptr noundef %160, ptr noundef %163, ptr noundef %166, i64 noundef %168), !dbg !2711
  %170 = load i32, ptr %12, align 4, !dbg !2713
  %171 = zext i32 %170 to i64, !dbg !2713
  %172 = icmp ne i64 %169, %171, !dbg !2714
  br i1 %172, label %173, label %174, !dbg !2715

173:                                              ; preds = %150
  store i32 -1, ptr %4, align 4, !dbg !2716
  br label %419, !dbg !2716

174:                                              ; preds = %150
  %175 = load i32, ptr %12, align 4, !dbg !2717
  %176 = zext i32 %175 to i64, !dbg !2717
  %177 = load ptr, ptr %11, align 8, !dbg !2718
  %178 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %177, i32 0, i32 2, !dbg !2719
  %179 = load i64, ptr %178, align 8, !dbg !2720
  %180 = add i64 %179, %176, !dbg !2720
  store i64 %180, ptr %178, align 8, !dbg !2720
  %181 = load i32, ptr %12, align 4, !dbg !2721
  %182 = zext i32 %181 to i64, !dbg !2721
  %183 = load ptr, ptr %11, align 8, !dbg !2722
  %184 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %183, i32 0, i32 10, !dbg !2723
  %185 = load i64, ptr %184, align 8, !dbg !2724
  %186 = sub i64 %185, %182, !dbg !2724
  store i64 %186, ptr %184, align 8, !dbg !2724
  %187 = load ptr, ptr %11, align 8, !dbg !2725
  %188 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %187, i32 0, i32 0, !dbg !2726
  %189 = load ptr, ptr %188, align 8, !dbg !2726
  %190 = load ptr, ptr %11, align 8, !dbg !2727
  %191 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %190, i32 0, i32 1, !dbg !2728
  %192 = getelementptr inbounds %struct.z_stream_s, ptr %191, i32 0, i32 0, !dbg !2729
  store ptr %189, ptr %192, align 8, !dbg !2730
  %193 = load i32, ptr %12, align 4, !dbg !2731
  %194 = load ptr, ptr %11, align 8, !dbg !2732
  %195 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %194, i32 0, i32 1, !dbg !2733
  %196 = getelementptr inbounds %struct.z_stream_s, ptr %195, i32 0, i32 1, !dbg !2734
  store i32 %193, ptr %196, align 8, !dbg !2735
  br label %197, !dbg !2736

197:                                              ; preds = %174, %113, %107
  %198 = load ptr, ptr %11, align 8, !dbg !2737
  %199 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %198, i32 0, i32 14, !dbg !2739
  %200 = load i64, ptr %199, align 8, !dbg !2739
  %201 = icmp eq i64 %200, 0, !dbg !2740
  br i1 %201, label %207, label %202, !dbg !2741

202:                                              ; preds = %197
  %203 = load ptr, ptr %11, align 8, !dbg !2742
  %204 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %203, i32 0, i32 16, !dbg !2743
  %205 = load i32, ptr %204, align 8, !dbg !2743
  %206 = icmp ne i32 %205, 0, !dbg !2744
  br i1 %206, label %207, label %332, !dbg !2745

207:                                              ; preds = %202, %197
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2746, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2749, metadata !DIExpression()), !dbg !2750
  %208 = load ptr, ptr %11, align 8, !dbg !2751
  %209 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %208, i32 0, i32 1, !dbg !2753
  %210 = getelementptr inbounds %struct.z_stream_s, ptr %209, i32 0, i32 1, !dbg !2754
  %211 = load i32, ptr %210, align 8, !dbg !2754
  %212 = icmp eq i32 %211, 0, !dbg !2755
  br i1 %212, label %213, label %226, !dbg !2756

213:                                              ; preds = %207
  %214 = load ptr, ptr %11, align 8, !dbg !2757
  %215 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %214, i32 0, i32 10, !dbg !2758
  %216 = load i64, ptr %215, align 8, !dbg !2758
  %217 = icmp eq i64 %216, 0, !dbg !2759
  br i1 %217, label %218, label %226, !dbg !2760

218:                                              ; preds = %213
  %219 = load i32, ptr %9, align 4, !dbg !2761
  %220 = icmp eq i32 %219, 0, !dbg !2762
  br i1 %220, label %221, label %222, !dbg !2763

221:                                              ; preds = %218
  br label %224, !dbg !2763

222:                                              ; preds = %218
  %223 = load i32, ptr %9, align 4, !dbg !2764
  br label %224, !dbg !2763

224:                                              ; preds = %222, %221
  %225 = phi i32 [ 0, %221 ], [ %223, %222 ], !dbg !2763
  store i32 %225, ptr %4, align 4, !dbg !2765
  br label %419, !dbg !2765

226:                                              ; preds = %213, %207
  %227 = load ptr, ptr %11, align 8, !dbg !2766
  %228 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %227, i32 0, i32 1, !dbg !2768
  %229 = getelementptr inbounds %struct.z_stream_s, ptr %228, i32 0, i32 4, !dbg !2769
  %230 = load i32, ptr %229, align 8, !dbg !2769
  %231 = load ptr, ptr %11, align 8, !dbg !2770
  %232 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %231, i32 0, i32 1, !dbg !2771
  %233 = getelementptr inbounds %struct.z_stream_s, ptr %232, i32 0, i32 1, !dbg !2772
  %234 = load i32, ptr %233, align 8, !dbg !2772
  %235 = icmp ult i32 %230, %234, !dbg !2773
  br i1 %235, label %236, label %241, !dbg !2774

236:                                              ; preds = %226
  %237 = load ptr, ptr %11, align 8, !dbg !2775
  %238 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %237, i32 0, i32 1, !dbg !2776
  %239 = getelementptr inbounds %struct.z_stream_s, ptr %238, i32 0, i32 4, !dbg !2777
  %240 = load i32, ptr %239, align 8, !dbg !2777
  store i32 %240, ptr %13, align 4, !dbg !2778
  br label %246, !dbg !2779

241:                                              ; preds = %226
  %242 = load ptr, ptr %11, align 8, !dbg !2780
  %243 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %242, i32 0, i32 1, !dbg !2781
  %244 = getelementptr inbounds %struct.z_stream_s, ptr %243, i32 0, i32 1, !dbg !2782
  %245 = load i32, ptr %244, align 8, !dbg !2782
  store i32 %245, ptr %13, align 4, !dbg !2783
  br label %246

246:                                              ; preds = %241, %236
  store i32 0, ptr %14, align 4, !dbg !2784
  br label %247, !dbg !2786

247:                                              ; preds = %267, %246
  %248 = load i32, ptr %14, align 4, !dbg !2787
  %249 = load i32, ptr %13, align 4, !dbg !2789
  %250 = icmp ult i32 %248, %249, !dbg !2790
  br i1 %250, label %251, label %270, !dbg !2791

251:                                              ; preds = %247
  %252 = load ptr, ptr %11, align 8, !dbg !2792
  %253 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %252, i32 0, i32 1, !dbg !2793
  %254 = getelementptr inbounds %struct.z_stream_s, ptr %253, i32 0, i32 0, !dbg !2794
  %255 = load ptr, ptr %254, align 8, !dbg !2794
  %256 = load i32, ptr %14, align 4, !dbg !2795
  %257 = zext i32 %256 to i64, !dbg !2796
  %258 = getelementptr inbounds i8, ptr %255, i64 %257, !dbg !2796
  %259 = load i8, ptr %258, align 1, !dbg !2797
  %260 = load ptr, ptr %11, align 8, !dbg !2798
  %261 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %260, i32 0, i32 1, !dbg !2799
  %262 = getelementptr inbounds %struct.z_stream_s, ptr %261, i32 0, i32 3, !dbg !2800
  %263 = load ptr, ptr %262, align 8, !dbg !2800
  %264 = load i32, ptr %14, align 4, !dbg !2801
  %265 = zext i32 %264 to i64, !dbg !2802
  %266 = getelementptr inbounds i8, ptr %263, i64 %265, !dbg !2802
  store i8 %259, ptr %266, align 1, !dbg !2803
  br label %267, !dbg !2804

267:                                              ; preds = %251
  %268 = load i32, ptr %14, align 4, !dbg !2805
  %269 = add i32 %268, 1, !dbg !2805
  store i32 %269, ptr %14, align 4, !dbg !2805
  br label %247, !dbg !2806, !llvm.loop !2807

270:                                              ; preds = %247
  %271 = load ptr, ptr %11, align 8, !dbg !2809
  %272 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %271, i32 0, i32 7, !dbg !2810
  %273 = load i64, ptr %272, align 8, !dbg !2810
  %274 = load i32, ptr %13, align 4, !dbg !2811
  %275 = zext i32 %274 to i64, !dbg !2811
  %276 = add i64 %273, %275, !dbg !2812
  %277 = load ptr, ptr %11, align 8, !dbg !2813
  %278 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %277, i32 0, i32 7, !dbg !2814
  store i64 %276, ptr %278, align 8, !dbg !2815
  %279 = load ptr, ptr %11, align 8, !dbg !2816
  %280 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %279, i32 0, i32 8, !dbg !2817
  %281 = load i64, ptr %280, align 8, !dbg !2817
  %282 = load ptr, ptr %11, align 8, !dbg !2818
  %283 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %282, i32 0, i32 1, !dbg !2819
  %284 = getelementptr inbounds %struct.z_stream_s, ptr %283, i32 0, i32 3, !dbg !2820
  %285 = load ptr, ptr %284, align 8, !dbg !2820
  %286 = load i32, ptr %13, align 4, !dbg !2821
  %287 = call i64 @crc32(i64 noundef %281, ptr noundef %285, i32 noundef %286), !dbg !2822
  %288 = load ptr, ptr %11, align 8, !dbg !2823
  %289 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %288, i32 0, i32 8, !dbg !2824
  store i64 %287, ptr %289, align 8, !dbg !2825
  %290 = load i32, ptr %13, align 4, !dbg !2826
  %291 = zext i32 %290 to i64, !dbg !2826
  %292 = load ptr, ptr %11, align 8, !dbg !2827
  %293 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %292, i32 0, i32 11, !dbg !2828
  %294 = load i64, ptr %293, align 8, !dbg !2829
  %295 = sub i64 %294, %291, !dbg !2829
  store i64 %295, ptr %293, align 8, !dbg !2829
  %296 = load i32, ptr %13, align 4, !dbg !2830
  %297 = load ptr, ptr %11, align 8, !dbg !2831
  %298 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %297, i32 0, i32 1, !dbg !2832
  %299 = getelementptr inbounds %struct.z_stream_s, ptr %298, i32 0, i32 1, !dbg !2833
  %300 = load i32, ptr %299, align 8, !dbg !2834
  %301 = sub i32 %300, %296, !dbg !2834
  store i32 %301, ptr %299, align 8, !dbg !2834
  %302 = load i32, ptr %13, align 4, !dbg !2835
  %303 = load ptr, ptr %11, align 8, !dbg !2836
  %304 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %303, i32 0, i32 1, !dbg !2837
  %305 = getelementptr inbounds %struct.z_stream_s, ptr %304, i32 0, i32 4, !dbg !2838
  %306 = load i32, ptr %305, align 8, !dbg !2839
  %307 = sub i32 %306, %302, !dbg !2839
  store i32 %307, ptr %305, align 8, !dbg !2839
  %308 = load i32, ptr %13, align 4, !dbg !2840
  %309 = load ptr, ptr %11, align 8, !dbg !2841
  %310 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %309, i32 0, i32 1, !dbg !2842
  %311 = getelementptr inbounds %struct.z_stream_s, ptr %310, i32 0, i32 3, !dbg !2843
  %312 = load ptr, ptr %311, align 8, !dbg !2844
  %313 = zext i32 %308 to i64, !dbg !2844
  %314 = getelementptr inbounds i8, ptr %312, i64 %313, !dbg !2844
  store ptr %314, ptr %311, align 8, !dbg !2844
  %315 = load i32, ptr %13, align 4, !dbg !2845
  %316 = load ptr, ptr %11, align 8, !dbg !2846
  %317 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %316, i32 0, i32 1, !dbg !2847
  %318 = getelementptr inbounds %struct.z_stream_s, ptr %317, i32 0, i32 0, !dbg !2848
  %319 = load ptr, ptr %318, align 8, !dbg !2849
  %320 = zext i32 %315 to i64, !dbg !2849
  %321 = getelementptr inbounds i8, ptr %319, i64 %320, !dbg !2849
  store ptr %321, ptr %318, align 8, !dbg !2849
  %322 = load i32, ptr %13, align 4, !dbg !2850
  %323 = zext i32 %322 to i64, !dbg !2850
  %324 = load ptr, ptr %11, align 8, !dbg !2851
  %325 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %324, i32 0, i32 1, !dbg !2852
  %326 = getelementptr inbounds %struct.z_stream_s, ptr %325, i32 0, i32 5, !dbg !2853
  %327 = load i64, ptr %326, align 8, !dbg !2854
  %328 = add i64 %327, %323, !dbg !2854
  store i64 %328, ptr %326, align 8, !dbg !2854
  %329 = load i32, ptr %13, align 4, !dbg !2855
  %330 = load i32, ptr %9, align 4, !dbg !2856
  %331 = add i32 %330, %329, !dbg !2856
  store i32 %331, ptr %9, align 4, !dbg !2856
  br label %411, !dbg !2857

332:                                              ; preds = %202
  %333 = load ptr, ptr %11, align 8, !dbg !2858
  %334 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %333, i32 0, i32 14, !dbg !2860
  %335 = load i64, ptr %334, align 8, !dbg !2860
  %336 = icmp eq i64 %335, 12, !dbg !2861
  br i1 %336, label %337, label %338, !dbg !2862

337:                                              ; preds = %332
  br label %410, !dbg !2863

338:                                              ; preds = %332
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2865, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2868, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2870, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2874, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2876, metadata !DIExpression()), !dbg !2877
  store i32 2, ptr %19, align 4, !dbg !2877
  %339 = load ptr, ptr %11, align 8, !dbg !2878
  %340 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %339, i32 0, i32 1, !dbg !2879
  %341 = getelementptr inbounds %struct.z_stream_s, ptr %340, i32 0, i32 5, !dbg !2880
  %342 = load i64, ptr %341, align 8, !dbg !2880
  store i64 %342, ptr %15, align 8, !dbg !2881
  %343 = load ptr, ptr %11, align 8, !dbg !2882
  %344 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %343, i32 0, i32 1, !dbg !2883
  %345 = getelementptr inbounds %struct.z_stream_s, ptr %344, i32 0, i32 3, !dbg !2884
  %346 = load ptr, ptr %345, align 8, !dbg !2884
  store ptr %346, ptr %17, align 8, !dbg !2885
  %347 = load ptr, ptr %11, align 8, !dbg !2886
  %348 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %347, i32 0, i32 1, !dbg !2887
  %349 = load i32, ptr %19, align 4, !dbg !2888
  %350 = call i32 @inflate(ptr noundef %348, i32 noundef %349), !dbg !2889
  store i32 %350, ptr %8, align 4, !dbg !2890
  %351 = load i32, ptr %8, align 4, !dbg !2891
  %352 = icmp sge i32 %351, 0, !dbg !2893
  br i1 %352, label %353, label %360, !dbg !2894

353:                                              ; preds = %338
  %354 = load ptr, ptr %11, align 8, !dbg !2895
  %355 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %354, i32 0, i32 1, !dbg !2896
  %356 = getelementptr inbounds %struct.z_stream_s, ptr %355, i32 0, i32 6, !dbg !2897
  %357 = load ptr, ptr %356, align 8, !dbg !2897
  %358 = icmp ne ptr %357, null, !dbg !2898
  br i1 %358, label %359, label %360, !dbg !2899

359:                                              ; preds = %353
  store i32 -3, ptr %8, align 4, !dbg !2900
  br label %360, !dbg !2901

360:                                              ; preds = %359, %353, %338
  %361 = load ptr, ptr %11, align 8, !dbg !2902
  %362 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %361, i32 0, i32 1, !dbg !2903
  %363 = getelementptr inbounds %struct.z_stream_s, ptr %362, i32 0, i32 5, !dbg !2904
  %364 = load i64, ptr %363, align 8, !dbg !2904
  store i64 %364, ptr %16, align 8, !dbg !2905
  %365 = load i64, ptr %16, align 8, !dbg !2906
  %366 = load i64, ptr %15, align 8, !dbg !2907
  %367 = sub i64 %365, %366, !dbg !2908
  store i64 %367, ptr %18, align 8, !dbg !2909
  %368 = load ptr, ptr %11, align 8, !dbg !2910
  %369 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %368, i32 0, i32 7, !dbg !2911
  %370 = load i64, ptr %369, align 8, !dbg !2911
  %371 = load i64, ptr %18, align 8, !dbg !2912
  %372 = add i64 %370, %371, !dbg !2913
  %373 = load ptr, ptr %11, align 8, !dbg !2914
  %374 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %373, i32 0, i32 7, !dbg !2915
  store i64 %372, ptr %374, align 8, !dbg !2916
  %375 = load ptr, ptr %11, align 8, !dbg !2917
  %376 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %375, i32 0, i32 8, !dbg !2918
  %377 = load i64, ptr %376, align 8, !dbg !2918
  %378 = load ptr, ptr %17, align 8, !dbg !2919
  %379 = load i64, ptr %18, align 8, !dbg !2920
  %380 = trunc i64 %379 to i32, !dbg !2921
  %381 = call i64 @crc32(i64 noundef %377, ptr noundef %378, i32 noundef %380), !dbg !2922
  %382 = load ptr, ptr %11, align 8, !dbg !2923
  %383 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %382, i32 0, i32 8, !dbg !2924
  store i64 %381, ptr %383, align 8, !dbg !2925
  %384 = load i64, ptr %18, align 8, !dbg !2926
  %385 = load ptr, ptr %11, align 8, !dbg !2927
  %386 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %385, i32 0, i32 11, !dbg !2928
  %387 = load i64, ptr %386, align 8, !dbg !2929
  %388 = sub i64 %387, %384, !dbg !2929
  store i64 %388, ptr %386, align 8, !dbg !2929
  %389 = load i64, ptr %16, align 8, !dbg !2930
  %390 = load i64, ptr %15, align 8, !dbg !2931
  %391 = sub i64 %389, %390, !dbg !2932
  %392 = trunc i64 %391 to i32, !dbg !2933
  %393 = load i32, ptr %9, align 4, !dbg !2934
  %394 = add i32 %393, %392, !dbg !2934
  store i32 %394, ptr %9, align 4, !dbg !2934
  %395 = load i32, ptr %8, align 4, !dbg !2935
  %396 = icmp eq i32 %395, 1, !dbg !2937
  br i1 %396, label %397, label %405, !dbg !2938

397:                                              ; preds = %360
  %398 = load i32, ptr %9, align 4, !dbg !2939
  %399 = icmp eq i32 %398, 0, !dbg !2940
  br i1 %399, label %400, label %401, !dbg !2941

400:                                              ; preds = %397
  br label %403, !dbg !2941

401:                                              ; preds = %397
  %402 = load i32, ptr %9, align 4, !dbg !2942
  br label %403, !dbg !2941

403:                                              ; preds = %401, %400
  %404 = phi i32 [ 0, %400 ], [ %402, %401 ], !dbg !2941
  store i32 %404, ptr %4, align 4, !dbg !2943
  br label %419, !dbg !2943

405:                                              ; preds = %360
  %406 = load i32, ptr %8, align 4, !dbg !2944
  %407 = icmp ne i32 %406, 0, !dbg !2946
  br i1 %407, label %408, label %409, !dbg !2947

408:                                              ; preds = %405
  br label %412, !dbg !2948

409:                                              ; preds = %405
  br label %410

410:                                              ; preds = %409, %337
  br label %411

411:                                              ; preds = %410, %270
  br label %101, !dbg !2671, !llvm.loop !2949

412:                                              ; preds = %408, %101
  %413 = load i32, ptr %8, align 4, !dbg !2951
  %414 = icmp eq i32 %413, 0, !dbg !2953
  br i1 %414, label %415, label %417, !dbg !2954

415:                                              ; preds = %412
  %416 = load i32, ptr %9, align 4, !dbg !2955
  store i32 %416, ptr %4, align 4, !dbg !2956
  br label %419, !dbg !2956

417:                                              ; preds = %412
  %418 = load i32, ptr %8, align 4, !dbg !2957
  store i32 %418, ptr %4, align 4, !dbg !2958
  br label %419, !dbg !2958

419:                                              ; preds = %417, %415, %403, %224, %173, %149, %133, %40, %36, %30, %22
  %420 = load i32, ptr %4, align 4, !dbg !2959
  ret i32 %420, !dbg !2959
}

declare i64 @call_zseek64(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #3

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #3

declare i32 @inflate(ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @unztell(ptr noundef %0) #0 !dbg !2960 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2963, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2965, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2967, metadata !DIExpression()), !dbg !2968
  %6 = load ptr, ptr %3, align 8, !dbg !2969
  %7 = icmp eq ptr %6, null, !dbg !2971
  br i1 %7, label %8, label %9, !dbg !2972

8:                                                ; preds = %1
  store i64 -102, ptr %2, align 8, !dbg !2973
  br label %22, !dbg !2973

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !dbg !2974
  store ptr %10, ptr %4, align 8, !dbg !2975
  %11 = load ptr, ptr %4, align 8, !dbg !2976
  %12 = getelementptr inbounds %struct.unz64_s, ptr %11, i32 0, i32 13, !dbg !2977
  %13 = load ptr, ptr %12, align 8, !dbg !2977
  store ptr %13, ptr %5, align 8, !dbg !2978
  %14 = load ptr, ptr %5, align 8, !dbg !2979
  %15 = icmp eq ptr %14, null, !dbg !2981
  br i1 %15, label %16, label %17, !dbg !2982

16:                                               ; preds = %9
  store i64 -102, ptr %2, align 8, !dbg !2983
  br label %22, !dbg !2983

17:                                               ; preds = %9
  %18 = load ptr, ptr %5, align 8, !dbg !2984
  %19 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %18, i32 0, i32 1, !dbg !2985
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %19, i32 0, i32 5, !dbg !2986
  %21 = load i64, ptr %20, align 8, !dbg !2986
  store i64 %21, ptr %2, align 8, !dbg !2987
  br label %22, !dbg !2987

22:                                               ; preds = %17, %16, %8
  %23 = load i64, ptr %2, align 8, !dbg !2988
  ret i64 %23, !dbg !2988
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @unztell64(ptr noundef %0) #0 !dbg !2989 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2990, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2992, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2994, metadata !DIExpression()), !dbg !2995
  %6 = load ptr, ptr %3, align 8, !dbg !2996
  %7 = icmp eq ptr %6, null, !dbg !2998
  br i1 %7, label %8, label %9, !dbg !2999

8:                                                ; preds = %1
  store i64 -1, ptr %2, align 8, !dbg !3000
  br label %21, !dbg !3000

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !dbg !3001
  store ptr %10, ptr %4, align 8, !dbg !3002
  %11 = load ptr, ptr %4, align 8, !dbg !3003
  %12 = getelementptr inbounds %struct.unz64_s, ptr %11, i32 0, i32 13, !dbg !3004
  %13 = load ptr, ptr %12, align 8, !dbg !3004
  store ptr %13, ptr %5, align 8, !dbg !3005
  %14 = load ptr, ptr %5, align 8, !dbg !3006
  %15 = icmp eq ptr %14, null, !dbg !3008
  br i1 %15, label %16, label %17, !dbg !3009

16:                                               ; preds = %9
  store i64 -1, ptr %2, align 8, !dbg !3010
  br label %21, !dbg !3010

17:                                               ; preds = %9
  %18 = load ptr, ptr %5, align 8, !dbg !3011
  %19 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %18, i32 0, i32 7, !dbg !3012
  %20 = load i64, ptr %19, align 8, !dbg !3012
  store i64 %20, ptr %2, align 8, !dbg !3013
  br label %21, !dbg !3013

21:                                               ; preds = %17, %16, %8
  %22 = load i64, ptr %2, align 8, !dbg !3014
  ret i64 %22, !dbg !3014
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzeof(ptr noundef %0) #0 !dbg !3015 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3016, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3018, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3020, metadata !DIExpression()), !dbg !3021
  %6 = load ptr, ptr %3, align 8, !dbg !3022
  %7 = icmp eq ptr %6, null, !dbg !3024
  br i1 %7, label %8, label %9, !dbg !3025

8:                                                ; preds = %1
  store i32 -102, ptr %2, align 4, !dbg !3026
  br label %24, !dbg !3026

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !dbg !3027
  store ptr %10, ptr %4, align 8, !dbg !3028
  %11 = load ptr, ptr %4, align 8, !dbg !3029
  %12 = getelementptr inbounds %struct.unz64_s, ptr %11, i32 0, i32 13, !dbg !3030
  %13 = load ptr, ptr %12, align 8, !dbg !3030
  store ptr %13, ptr %5, align 8, !dbg !3031
  %14 = load ptr, ptr %5, align 8, !dbg !3032
  %15 = icmp eq ptr %14, null, !dbg !3034
  br i1 %15, label %16, label %17, !dbg !3035

16:                                               ; preds = %9
  store i32 -102, ptr %2, align 4, !dbg !3036
  br label %24, !dbg !3036

17:                                               ; preds = %9
  %18 = load ptr, ptr %5, align 8, !dbg !3037
  %19 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %18, i32 0, i32 11, !dbg !3039
  %20 = load i64, ptr %19, align 8, !dbg !3039
  %21 = icmp eq i64 %20, 0, !dbg !3040
  br i1 %21, label %22, label %23, !dbg !3041

22:                                               ; preds = %17
  store i32 1, ptr %2, align 4, !dbg !3042
  br label %24, !dbg !3042

23:                                               ; preds = %17
  store i32 0, ptr %2, align 4, !dbg !3043
  br label %24, !dbg !3043

24:                                               ; preds = %23, %22, %16, %8
  %25 = load i32, ptr %2, align 4, !dbg !3044
  ret i32 %25, !dbg !3044
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzGetLocalExtrafield(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !3045 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3046, metadata !DIExpression()), !dbg !3047
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3048, metadata !DIExpression()), !dbg !3049
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3050, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3052, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3054, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3056, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3058, metadata !DIExpression()), !dbg !3059
  %12 = load ptr, ptr %5, align 8, !dbg !3060
  %13 = icmp eq ptr %12, null, !dbg !3062
  br i1 %13, label %14, label %15, !dbg !3063

14:                                               ; preds = %3
  store i32 -102, ptr %4, align 4, !dbg !3064
  br label %91, !dbg !3064

15:                                               ; preds = %3
  %16 = load ptr, ptr %5, align 8, !dbg !3065
  store ptr %16, ptr %8, align 8, !dbg !3066
  %17 = load ptr, ptr %8, align 8, !dbg !3067
  %18 = getelementptr inbounds %struct.unz64_s, ptr %17, i32 0, i32 13, !dbg !3068
  %19 = load ptr, ptr %18, align 8, !dbg !3068
  store ptr %19, ptr %9, align 8, !dbg !3069
  %20 = load ptr, ptr %9, align 8, !dbg !3070
  %21 = icmp eq ptr %20, null, !dbg !3072
  br i1 %21, label %22, label %23, !dbg !3073

22:                                               ; preds = %15
  store i32 -102, ptr %4, align 4, !dbg !3074
  br label %91, !dbg !3074

23:                                               ; preds = %15
  %24 = load ptr, ptr %9, align 8, !dbg !3075
  %25 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %24, i32 0, i32 5, !dbg !3076
  %26 = load i32, ptr %25, align 8, !dbg !3076
  %27 = zext i32 %26 to i64, !dbg !3075
  %28 = load ptr, ptr %9, align 8, !dbg !3077
  %29 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %28, i32 0, i32 6, !dbg !3078
  %30 = load i64, ptr %29, align 8, !dbg !3078
  %31 = sub i64 %27, %30, !dbg !3079
  store i64 %31, ptr %11, align 8, !dbg !3080
  %32 = load ptr, ptr %6, align 8, !dbg !3081
  %33 = icmp eq ptr %32, null, !dbg !3083
  br i1 %33, label %34, label %37, !dbg !3084

34:                                               ; preds = %23
  %35 = load i64, ptr %11, align 8, !dbg !3085
  %36 = trunc i64 %35 to i32, !dbg !3086
  store i32 %36, ptr %4, align 4, !dbg !3087
  br label %91, !dbg !3087

37:                                               ; preds = %23
  %38 = load i32, ptr %7, align 4, !dbg !3088
  %39 = zext i32 %38 to i64, !dbg !3088
  %40 = load i64, ptr %11, align 8, !dbg !3090
  %41 = icmp ugt i64 %39, %40, !dbg !3091
  br i1 %41, label %42, label %45, !dbg !3092

42:                                               ; preds = %37
  %43 = load i64, ptr %11, align 8, !dbg !3093
  %44 = trunc i64 %43 to i32, !dbg !3094
  store i32 %44, ptr %10, align 4, !dbg !3095
  br label %47, !dbg !3096

45:                                               ; preds = %37
  %46 = load i32, ptr %7, align 4, !dbg !3097
  store i32 %46, ptr %10, align 4, !dbg !3098
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i32, ptr %10, align 4, !dbg !3099
  %49 = icmp eq i32 %48, 0, !dbg !3101
  br i1 %49, label %50, label %51, !dbg !3102

50:                                               ; preds = %47
  store i32 0, ptr %4, align 4, !dbg !3103
  br label %91, !dbg !3103

51:                                               ; preds = %47
  %52 = load ptr, ptr %9, align 8, !dbg !3104
  %53 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %52, i32 0, i32 12, !dbg !3104
  %54 = load ptr, ptr %9, align 8, !dbg !3104
  %55 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %54, i32 0, i32 13, !dbg !3104
  %56 = load ptr, ptr %55, align 8, !dbg !3104
  %57 = load ptr, ptr %9, align 8, !dbg !3104
  %58 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %57, i32 0, i32 4, !dbg !3104
  %59 = load i64, ptr %58, align 8, !dbg !3104
  %60 = load ptr, ptr %9, align 8, !dbg !3104
  %61 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %60, i32 0, i32 6, !dbg !3104
  %62 = load i64, ptr %61, align 8, !dbg !3104
  %63 = add i64 %59, %62, !dbg !3104
  %64 = call i64 @call_zseek64(ptr noundef %53, ptr noundef %56, i64 noundef %63, i32 noundef 0), !dbg !3104
  %65 = icmp ne i64 %64, 0, !dbg !3106
  br i1 %65, label %66, label %67, !dbg !3107

66:                                               ; preds = %51
  store i32 -1, ptr %4, align 4, !dbg !3108
  br label %91, !dbg !3108

67:                                               ; preds = %51
  %68 = load ptr, ptr %9, align 8, !dbg !3109
  %69 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %68, i32 0, i32 12, !dbg !3109
  %70 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %69, i32 0, i32 0, !dbg !3109
  %71 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %70, i32 0, i32 1, !dbg !3109
  %72 = load ptr, ptr %71, align 8, !dbg !3109
  %73 = load ptr, ptr %9, align 8, !dbg !3109
  %74 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %73, i32 0, i32 12, !dbg !3109
  %75 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %74, i32 0, i32 0, !dbg !3109
  %76 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %75, i32 0, i32 8, !dbg !3109
  %77 = load ptr, ptr %76, align 8, !dbg !3109
  %78 = load ptr, ptr %9, align 8, !dbg !3109
  %79 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %78, i32 0, i32 13, !dbg !3109
  %80 = load ptr, ptr %79, align 8, !dbg !3109
  %81 = load ptr, ptr %6, align 8, !dbg !3109
  %82 = load i32, ptr %10, align 4, !dbg !3109
  %83 = zext i32 %82 to i64, !dbg !3109
  %84 = call i64 %72(ptr noundef %77, ptr noundef %80, ptr noundef %81, i64 noundef %83), !dbg !3109
  %85 = load i32, ptr %10, align 4, !dbg !3111
  %86 = zext i32 %85 to i64, !dbg !3111
  %87 = icmp ne i64 %84, %86, !dbg !3112
  br i1 %87, label %88, label %89, !dbg !3113

88:                                               ; preds = %67
  store i32 -1, ptr %4, align 4, !dbg !3114
  br label %91, !dbg !3114

89:                                               ; preds = %67
  %90 = load i32, ptr %10, align 4, !dbg !3115
  store i32 %90, ptr %4, align 4, !dbg !3116
  br label %91, !dbg !3116

91:                                               ; preds = %89, %88, %66, %50, %34, %22, %14
  %92 = load i32, ptr %4, align 4, !dbg !3117
  ret i32 %92, !dbg !3117
}

declare i32 @inflateEnd(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzGetGlobalComment(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !3118 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3121, metadata !DIExpression()), !dbg !3122
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3123, metadata !DIExpression()), !dbg !3124
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3125, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3127, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3129, metadata !DIExpression()), !dbg !3130
  %10 = load ptr, ptr %5, align 8, !dbg !3131
  %11 = icmp eq ptr %10, null, !dbg !3133
  br i1 %11, label %12, label %13, !dbg !3134

12:                                               ; preds = %3
  store i32 -102, ptr %4, align 4, !dbg !3135
  br label %85, !dbg !3135

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8, !dbg !3136
  store ptr %14, ptr %8, align 8, !dbg !3137
  %15 = load i64, ptr %7, align 8, !dbg !3138
  store i64 %15, ptr %9, align 8, !dbg !3139
  %16 = load i64, ptr %9, align 8, !dbg !3140
  %17 = load ptr, ptr %8, align 8, !dbg !3142
  %18 = getelementptr inbounds %struct.unz64_s, ptr %17, i32 0, i32 3, !dbg !3143
  %19 = getelementptr inbounds %struct.unz_global_info64_s, ptr %18, i32 0, i32 1, !dbg !3144
  %20 = load i64, ptr %19, align 8, !dbg !3144
  %21 = icmp ugt i64 %16, %20, !dbg !3145
  br i1 %21, label %22, label %27, !dbg !3146

22:                                               ; preds = %13
  %23 = load ptr, ptr %8, align 8, !dbg !3147
  %24 = getelementptr inbounds %struct.unz64_s, ptr %23, i32 0, i32 3, !dbg !3148
  %25 = getelementptr inbounds %struct.unz_global_info64_s, ptr %24, i32 0, i32 1, !dbg !3149
  %26 = load i64, ptr %25, align 8, !dbg !3149
  store i64 %26, ptr %9, align 8, !dbg !3150
  br label %27, !dbg !3151

27:                                               ; preds = %22, %13
  %28 = load ptr, ptr %8, align 8, !dbg !3152
  %29 = getelementptr inbounds %struct.unz64_s, ptr %28, i32 0, i32 0, !dbg !3152
  %30 = load ptr, ptr %8, align 8, !dbg !3152
  %31 = getelementptr inbounds %struct.unz64_s, ptr %30, i32 0, i32 2, !dbg !3152
  %32 = load ptr, ptr %31, align 8, !dbg !3152
  %33 = load ptr, ptr %8, align 8, !dbg !3152
  %34 = getelementptr inbounds %struct.unz64_s, ptr %33, i32 0, i32 8, !dbg !3152
  %35 = load i64, ptr %34, align 8, !dbg !3152
  %36 = add i64 %35, 22, !dbg !3152
  %37 = call i64 @call_zseek64(ptr noundef %29, ptr noundef %32, i64 noundef %36, i32 noundef 0), !dbg !3152
  %38 = icmp ne i64 %37, 0, !dbg !3154
  br i1 %38, label %39, label %40, !dbg !3155

39:                                               ; preds = %27
  store i32 -1, ptr %4, align 4, !dbg !3156
  br label %85, !dbg !3156

40:                                               ; preds = %27
  %41 = load i64, ptr %9, align 8, !dbg !3157
  %42 = icmp ugt i64 %41, 0, !dbg !3159
  br i1 %42, label %43, label %65, !dbg !3160

43:                                               ; preds = %40
  %44 = load ptr, ptr %6, align 8, !dbg !3161
  store i8 0, ptr %44, align 1, !dbg !3163
  %45 = load ptr, ptr %8, align 8, !dbg !3164
  %46 = getelementptr inbounds %struct.unz64_s, ptr %45, i32 0, i32 0, !dbg !3164
  %47 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %46, i32 0, i32 0, !dbg !3164
  %48 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %47, i32 0, i32 1, !dbg !3164
  %49 = load ptr, ptr %48, align 8, !dbg !3164
  %50 = load ptr, ptr %8, align 8, !dbg !3164
  %51 = getelementptr inbounds %struct.unz64_s, ptr %50, i32 0, i32 0, !dbg !3164
  %52 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %51, i32 0, i32 0, !dbg !3164
  %53 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %52, i32 0, i32 8, !dbg !3164
  %54 = load ptr, ptr %53, align 8, !dbg !3164
  %55 = load ptr, ptr %8, align 8, !dbg !3164
  %56 = getelementptr inbounds %struct.unz64_s, ptr %55, i32 0, i32 2, !dbg !3164
  %57 = load ptr, ptr %56, align 8, !dbg !3164
  %58 = load ptr, ptr %6, align 8, !dbg !3164
  %59 = load i64, ptr %9, align 8, !dbg !3164
  %60 = call i64 %49(ptr noundef %54, ptr noundef %57, ptr noundef %58, i64 noundef %59), !dbg !3164
  %61 = load i64, ptr %9, align 8, !dbg !3166
  %62 = icmp ne i64 %60, %61, !dbg !3167
  br i1 %62, label %63, label %64, !dbg !3168

63:                                               ; preds = %43
  store i32 -1, ptr %4, align 4, !dbg !3169
  br label %85, !dbg !3169

64:                                               ; preds = %43
  br label %65, !dbg !3170

65:                                               ; preds = %64, %40
  %66 = load ptr, ptr %6, align 8, !dbg !3171
  %67 = icmp ne ptr %66, null, !dbg !3173
  br i1 %67, label %68, label %82, !dbg !3174

68:                                               ; preds = %65
  %69 = load i64, ptr %7, align 8, !dbg !3175
  %70 = load ptr, ptr %8, align 8, !dbg !3176
  %71 = getelementptr inbounds %struct.unz64_s, ptr %70, i32 0, i32 3, !dbg !3177
  %72 = getelementptr inbounds %struct.unz_global_info64_s, ptr %71, i32 0, i32 1, !dbg !3178
  %73 = load i64, ptr %72, align 8, !dbg !3178
  %74 = icmp ugt i64 %69, %73, !dbg !3179
  br i1 %74, label %75, label %82, !dbg !3180

75:                                               ; preds = %68
  %76 = load ptr, ptr %6, align 8, !dbg !3181
  %77 = load ptr, ptr %8, align 8, !dbg !3182
  %78 = getelementptr inbounds %struct.unz64_s, ptr %77, i32 0, i32 3, !dbg !3183
  %79 = getelementptr inbounds %struct.unz_global_info64_s, ptr %78, i32 0, i32 1, !dbg !3184
  %80 = load i64, ptr %79, align 8, !dbg !3184
  %81 = getelementptr inbounds i8, ptr %76, i64 %80, !dbg !3185
  store i8 0, ptr %81, align 1, !dbg !3186
  br label %82, !dbg !3187

82:                                               ; preds = %75, %68, %65
  %83 = load i64, ptr %9, align 8, !dbg !3188
  %84 = trunc i64 %83 to i32, !dbg !3189
  store i32 %84, ptr %4, align 4, !dbg !3190
  br label %85, !dbg !3190

85:                                               ; preds = %82, %63, %39, %12
  %86 = load i32, ptr %4, align 4, !dbg !3191
  ret i32 %86, !dbg !3191
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @unzGetOffset64(ptr noundef %0) #0 !dbg !3192 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3193, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3195, metadata !DIExpression()), !dbg !3196
  %5 = load ptr, ptr %3, align 8, !dbg !3197
  %6 = icmp eq ptr %5, null, !dbg !3199
  br i1 %6, label %7, label %8, !dbg !3200

7:                                                ; preds = %1
  store i64 0, ptr %2, align 8, !dbg !3201
  br label %42, !dbg !3201

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !3202
  store ptr %9, ptr %4, align 8, !dbg !3203
  %10 = load ptr, ptr %4, align 8, !dbg !3204
  %11 = getelementptr inbounds %struct.unz64_s, ptr %10, i32 0, i32 7, !dbg !3206
  %12 = load i64, ptr %11, align 8, !dbg !3206
  %13 = icmp ne i64 %12, 0, !dbg !3204
  br i1 %13, label %15, label %14, !dbg !3207

14:                                               ; preds = %8
  store i64 0, ptr %2, align 8, !dbg !3208
  br label %42, !dbg !3208

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 8, !dbg !3209
  %17 = getelementptr inbounds %struct.unz64_s, ptr %16, i32 0, i32 3, !dbg !3211
  %18 = getelementptr inbounds %struct.unz_global_info64_s, ptr %17, i32 0, i32 0, !dbg !3212
  %19 = load i64, ptr %18, align 8, !dbg !3212
  %20 = icmp ne i64 %19, 0, !dbg !3213
  br i1 %20, label %21, label %38, !dbg !3214

21:                                               ; preds = %15
  %22 = load ptr, ptr %4, align 8, !dbg !3215
  %23 = getelementptr inbounds %struct.unz64_s, ptr %22, i32 0, i32 3, !dbg !3216
  %24 = getelementptr inbounds %struct.unz_global_info64_s, ptr %23, i32 0, i32 0, !dbg !3217
  %25 = load i64, ptr %24, align 8, !dbg !3217
  %26 = icmp ne i64 %25, 65535, !dbg !3218
  br i1 %26, label %27, label %38, !dbg !3219

27:                                               ; preds = %21
  %28 = load ptr, ptr %4, align 8, !dbg !3220
  %29 = getelementptr inbounds %struct.unz64_s, ptr %28, i32 0, i32 5, !dbg !3222
  %30 = load i64, ptr %29, align 8, !dbg !3222
  %31 = load ptr, ptr %4, align 8, !dbg !3223
  %32 = getelementptr inbounds %struct.unz64_s, ptr %31, i32 0, i32 3, !dbg !3224
  %33 = getelementptr inbounds %struct.unz_global_info64_s, ptr %32, i32 0, i32 0, !dbg !3225
  %34 = load i64, ptr %33, align 8, !dbg !3225
  %35 = icmp eq i64 %30, %34, !dbg !3226
  br i1 %35, label %36, label %37, !dbg !3227

36:                                               ; preds = %27
  store i64 0, ptr %2, align 8, !dbg !3228
  br label %42, !dbg !3228

37:                                               ; preds = %27
  br label %38, !dbg !3225

38:                                               ; preds = %37, %21, %15
  %39 = load ptr, ptr %4, align 8, !dbg !3229
  %40 = getelementptr inbounds %struct.unz64_s, ptr %39, i32 0, i32 6, !dbg !3230
  %41 = load i64, ptr %40, align 8, !dbg !3230
  store i64 %41, ptr %2, align 8, !dbg !3231
  br label %42, !dbg !3231

42:                                               ; preds = %38, %36, %14, %7
  %43 = load i64, ptr %2, align 8, !dbg !3232
  ret i64 %43, !dbg !3232
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @unzGetOffset(ptr noundef %0) #0 !dbg !3233 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3236, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3238, metadata !DIExpression()), !dbg !3239
  %5 = load ptr, ptr %3, align 8, !dbg !3240
  %6 = icmp eq ptr %5, null, !dbg !3242
  br i1 %6, label %7, label %8, !dbg !3243

7:                                                ; preds = %1
  store i64 0, ptr %2, align 8, !dbg !3244
  br label %12, !dbg !3244

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !3245
  %10 = call i64 @unzGetOffset64(ptr noundef %9), !dbg !3246
  store i64 %10, ptr %4, align 8, !dbg !3247
  %11 = load i64, ptr %4, align 8, !dbg !3248
  store i64 %11, ptr %2, align 8, !dbg !3249
  br label %12, !dbg !3249

12:                                               ; preds = %8, %7
  %13 = load i64, ptr %2, align 8, !dbg !3250
  ret i64 %13, !dbg !3250
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzSetOffset64(ptr noundef %0, i64 noundef %1) #0 !dbg !3251 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3254, metadata !DIExpression()), !dbg !3255
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3256, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3258, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3260, metadata !DIExpression()), !dbg !3261
  %8 = load ptr, ptr %4, align 8, !dbg !3262
  %9 = icmp eq ptr %8, null, !dbg !3264
  br i1 %9, label %10, label %11, !dbg !3265

10:                                               ; preds = %2
  store i32 -102, ptr %3, align 4, !dbg !3266
  br label %35, !dbg !3266

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !dbg !3267
  store ptr %12, ptr %6, align 8, !dbg !3268
  %13 = load i64, ptr %5, align 8, !dbg !3269
  %14 = load ptr, ptr %6, align 8, !dbg !3270
  %15 = getelementptr inbounds %struct.unz64_s, ptr %14, i32 0, i32 6, !dbg !3271
  store i64 %13, ptr %15, align 8, !dbg !3272
  %16 = load ptr, ptr %6, align 8, !dbg !3273
  %17 = getelementptr inbounds %struct.unz64_s, ptr %16, i32 0, i32 3, !dbg !3274
  %18 = getelementptr inbounds %struct.unz_global_info64_s, ptr %17, i32 0, i32 0, !dbg !3275
  %19 = load i64, ptr %18, align 8, !dbg !3275
  %20 = load ptr, ptr %6, align 8, !dbg !3276
  %21 = getelementptr inbounds %struct.unz64_s, ptr %20, i32 0, i32 5, !dbg !3277
  store i64 %19, ptr %21, align 8, !dbg !3278
  %22 = load ptr, ptr %4, align 8, !dbg !3279
  %23 = load ptr, ptr %6, align 8, !dbg !3280
  %24 = getelementptr inbounds %struct.unz64_s, ptr %23, i32 0, i32 11, !dbg !3281
  %25 = load ptr, ptr %6, align 8, !dbg !3282
  %26 = getelementptr inbounds %struct.unz64_s, ptr %25, i32 0, i32 12, !dbg !3283
  %27 = call i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef %22, ptr noundef %24, ptr noundef %26, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0), !dbg !3284
  store i32 %27, ptr %7, align 4, !dbg !3285
  %28 = load i32, ptr %7, align 4, !dbg !3286
  %29 = icmp eq i32 %28, 0, !dbg !3287
  %30 = zext i1 %29 to i32, !dbg !3287
  %31 = sext i32 %30 to i64, !dbg !3288
  %32 = load ptr, ptr %6, align 8, !dbg !3289
  %33 = getelementptr inbounds %struct.unz64_s, ptr %32, i32 0, i32 7, !dbg !3290
  store i64 %31, ptr %33, align 8, !dbg !3291
  %34 = load i32, ptr %7, align 4, !dbg !3292
  store i32 %34, ptr %3, align 4, !dbg !3293
  br label %35, !dbg !3293

35:                                               ; preds = %11, %10
  %36 = load i32, ptr %3, align 4, !dbg !3294
  ret i32 %36, !dbg !3294
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzSetOffset(ptr noundef %0, i64 noundef %1) #0 !dbg !3295 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3298, metadata !DIExpression()), !dbg !3299
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3300, metadata !DIExpression()), !dbg !3301
  %5 = load ptr, ptr %3, align 8, !dbg !3302
  %6 = load i64, ptr %4, align 8, !dbg !3303
  %7 = call i32 @unzSetOffset64(ptr noundef %5, i64 noundef %6), !dbg !3304
  ret i32 %7, !dbg !3305
}

declare void @fill_fopen64_filefunc(ptr noundef) #3

declare ptr @call_zopen64(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unz64local_SearchCentralDir64(ptr noundef %0, ptr noundef %1) #0 !dbg !3306 {
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
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3311, metadata !DIExpression()), !dbg !3312
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3313, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3315, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3317, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3319, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3321, metadata !DIExpression()), !dbg !3322
  store i64 65535, ptr %9, align 8, !dbg !3322
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3323, metadata !DIExpression()), !dbg !3324
  store i64 0, ptr %10, align 8, !dbg !3324
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3325, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3327, metadata !DIExpression()), !dbg !3328
  %16 = load ptr, ptr %4, align 8, !dbg !3329
  %17 = load ptr, ptr %5, align 8, !dbg !3329
  %18 = call i64 @call_zseek64(ptr noundef %16, ptr noundef %17, i64 noundef 0, i32 noundef 2), !dbg !3329
  %19 = icmp ne i64 %18, 0, !dbg !3331
  br i1 %19, label %20, label %21, !dbg !3332

20:                                               ; preds = %2
  store i64 0, ptr %3, align 8, !dbg !3333
  br label %208, !dbg !3333

21:                                               ; preds = %2
  %22 = load ptr, ptr %4, align 8, !dbg !3334
  %23 = load ptr, ptr %5, align 8, !dbg !3334
  %24 = call i64 @call_ztell64(ptr noundef %22, ptr noundef %23), !dbg !3334
  store i64 %24, ptr %7, align 8, !dbg !3335
  %25 = load i64, ptr %9, align 8, !dbg !3336
  %26 = load i64, ptr %7, align 8, !dbg !3338
  %27 = icmp ugt i64 %25, %26, !dbg !3339
  br i1 %27, label %28, label %30, !dbg !3340

28:                                               ; preds = %21
  %29 = load i64, ptr %7, align 8, !dbg !3341
  store i64 %29, ptr %9, align 8, !dbg !3342
  br label %30, !dbg !3343

30:                                               ; preds = %28, %21
  %31 = call noalias ptr @malloc(i64 noundef 1028) #8, !dbg !3344
  store ptr %31, ptr %6, align 8, !dbg !3345
  %32 = load ptr, ptr %6, align 8, !dbg !3346
  %33 = icmp eq ptr %32, null, !dbg !3348
  br i1 %33, label %34, label %35, !dbg !3349

34:                                               ; preds = %30
  store i64 0, ptr %3, align 8, !dbg !3350
  br label %208, !dbg !3350

35:                                               ; preds = %30
  store i64 4, ptr %8, align 8, !dbg !3351
  br label %36, !dbg !3352

36:                                               ; preds = %140, %35
  %37 = load i64, ptr %8, align 8, !dbg !3353
  %38 = load i64, ptr %9, align 8, !dbg !3354
  %39 = icmp ult i64 %37, %38, !dbg !3355
  br i1 %39, label %40, label %141, !dbg !3352

40:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3356, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3359, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3361, metadata !DIExpression()), !dbg !3362
  %41 = load i64, ptr %8, align 8, !dbg !3363
  %42 = add i64 %41, 1024, !dbg !3365
  %43 = load i64, ptr %9, align 8, !dbg !3366
  %44 = icmp ugt i64 %42, %43, !dbg !3367
  br i1 %44, label %45, label %47, !dbg !3368

45:                                               ; preds = %40
  %46 = load i64, ptr %9, align 8, !dbg !3369
  store i64 %46, ptr %8, align 8, !dbg !3370
  br label %50, !dbg !3371

47:                                               ; preds = %40
  %48 = load i64, ptr %8, align 8, !dbg !3372
  %49 = add i64 %48, 1024, !dbg !3372
  store i64 %49, ptr %8, align 8, !dbg !3372
  br label %50

50:                                               ; preds = %47, %45
  %51 = load i64, ptr %7, align 8, !dbg !3373
  %52 = load i64, ptr %8, align 8, !dbg !3374
  %53 = sub i64 %51, %52, !dbg !3375
  store i64 %53, ptr %14, align 8, !dbg !3376
  %54 = load i64, ptr %7, align 8, !dbg !3377
  %55 = load i64, ptr %14, align 8, !dbg !3378
  %56 = sub i64 %54, %55, !dbg !3379
  %57 = icmp ult i64 1028, %56, !dbg !3380
  br i1 %57, label %58, label %59, !dbg !3381

58:                                               ; preds = %50
  br label %63, !dbg !3381

59:                                               ; preds = %50
  %60 = load i64, ptr %7, align 8, !dbg !3382
  %61 = load i64, ptr %14, align 8, !dbg !3383
  %62 = sub i64 %60, %61, !dbg !3384
  br label %63, !dbg !3381

63:                                               ; preds = %59, %58
  %64 = phi i64 [ 1028, %58 ], [ %62, %59 ], !dbg !3381
  store i64 %64, ptr %13, align 8, !dbg !3385
  %65 = load ptr, ptr %4, align 8, !dbg !3386
  %66 = load ptr, ptr %5, align 8, !dbg !3386
  %67 = load i64, ptr %14, align 8, !dbg !3386
  %68 = call i64 @call_zseek64(ptr noundef %65, ptr noundef %66, i64 noundef %67, i32 noundef 0), !dbg !3386
  %69 = icmp ne i64 %68, 0, !dbg !3388
  br i1 %69, label %70, label %71, !dbg !3389

70:                                               ; preds = %63
  br label %141, !dbg !3390

71:                                               ; preds = %63
  %72 = load ptr, ptr %4, align 8, !dbg !3391
  %73 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %72, i32 0, i32 0, !dbg !3391
  %74 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %73, i32 0, i32 1, !dbg !3391
  %75 = load ptr, ptr %74, align 8, !dbg !3391
  %76 = load ptr, ptr %4, align 8, !dbg !3391
  %77 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %76, i32 0, i32 0, !dbg !3391
  %78 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %77, i32 0, i32 8, !dbg !3391
  %79 = load ptr, ptr %78, align 8, !dbg !3391
  %80 = load ptr, ptr %5, align 8, !dbg !3391
  %81 = load ptr, ptr %6, align 8, !dbg !3391
  %82 = load i64, ptr %13, align 8, !dbg !3391
  %83 = call i64 %75(ptr noundef %79, ptr noundef %80, ptr noundef %81, i64 noundef %82), !dbg !3391
  %84 = load i64, ptr %13, align 8, !dbg !3393
  %85 = icmp ne i64 %83, %84, !dbg !3394
  br i1 %85, label %86, label %87, !dbg !3395

86:                                               ; preds = %71
  br label %141, !dbg !3396

87:                                               ; preds = %71
  %88 = load i64, ptr %13, align 8, !dbg !3397
  %89 = trunc i64 %88 to i32, !dbg !3399
  %90 = sub nsw i32 %89, 3, !dbg !3400
  store i32 %90, ptr %15, align 4, !dbg !3401
  br label %91, !dbg !3402

91:                                               ; preds = %135, %87
  %92 = load i32, ptr %15, align 4, !dbg !3403
  %93 = add nsw i32 %92, -1, !dbg !3403
  store i32 %93, ptr %15, align 4, !dbg !3403
  %94 = icmp sgt i32 %92, 0, !dbg !3405
  br i1 %94, label %95, label %136, !dbg !3406

95:                                               ; preds = %91
  %96 = load ptr, ptr %6, align 8, !dbg !3407
  %97 = load i32, ptr %15, align 4, !dbg !3409
  %98 = sext i32 %97 to i64, !dbg !3410
  %99 = getelementptr inbounds i8, ptr %96, i64 %98, !dbg !3410
  %100 = load i8, ptr %99, align 1, !dbg !3411
  %101 = zext i8 %100 to i32, !dbg !3412
  %102 = icmp eq i32 %101, 80, !dbg !3413
  br i1 %102, label %103, label %135, !dbg !3414

103:                                              ; preds = %95
  %104 = load ptr, ptr %6, align 8, !dbg !3415
  %105 = load i32, ptr %15, align 4, !dbg !3416
  %106 = sext i32 %105 to i64, !dbg !3417
  %107 = getelementptr inbounds i8, ptr %104, i64 %106, !dbg !3417
  %108 = getelementptr inbounds i8, ptr %107, i64 1, !dbg !3418
  %109 = load i8, ptr %108, align 1, !dbg !3419
  %110 = zext i8 %109 to i32, !dbg !3420
  %111 = icmp eq i32 %110, 75, !dbg !3421
  br i1 %111, label %112, label %135, !dbg !3422

112:                                              ; preds = %103
  %113 = load ptr, ptr %6, align 8, !dbg !3423
  %114 = load i32, ptr %15, align 4, !dbg !3424
  %115 = sext i32 %114 to i64, !dbg !3425
  %116 = getelementptr inbounds i8, ptr %113, i64 %115, !dbg !3425
  %117 = getelementptr inbounds i8, ptr %116, i64 2, !dbg !3426
  %118 = load i8, ptr %117, align 1, !dbg !3427
  %119 = zext i8 %118 to i32, !dbg !3428
  %120 = icmp eq i32 %119, 6, !dbg !3429
  br i1 %120, label %121, label %135, !dbg !3430

121:                                              ; preds = %112
  %122 = load ptr, ptr %6, align 8, !dbg !3431
  %123 = load i32, ptr %15, align 4, !dbg !3432
  %124 = sext i32 %123 to i64, !dbg !3433
  %125 = getelementptr inbounds i8, ptr %122, i64 %124, !dbg !3433
  %126 = getelementptr inbounds i8, ptr %125, i64 3, !dbg !3434
  %127 = load i8, ptr %126, align 1, !dbg !3435
  %128 = zext i8 %127 to i32, !dbg !3436
  %129 = icmp eq i32 %128, 7, !dbg !3437
  br i1 %129, label %130, label %135, !dbg !3438

130:                                              ; preds = %121
  %131 = load i64, ptr %14, align 8, !dbg !3439
  %132 = load i32, ptr %15, align 4, !dbg !3441
  %133 = sext i32 %132 to i64, !dbg !3441
  %134 = add i64 %131, %133, !dbg !3442
  store i64 %134, ptr %10, align 8, !dbg !3443
  br label %136, !dbg !3444

135:                                              ; preds = %121, %112, %103, %95
  br label %91, !dbg !3445, !llvm.loop !3446

136:                                              ; preds = %130, %91
  %137 = load i64, ptr %10, align 8, !dbg !3448
  %138 = icmp ne i64 %137, 0, !dbg !3450
  br i1 %138, label %139, label %140, !dbg !3451

139:                                              ; preds = %136
  br label %141, !dbg !3452

140:                                              ; preds = %136
  br label %36, !dbg !3352, !llvm.loop !3453

141:                                              ; preds = %139, %86, %70, %36
  %142 = load ptr, ptr %6, align 8, !dbg !3455
  %143 = icmp ne ptr %142, null, !dbg !3455
  br i1 %143, label %144, label %146, !dbg !3458

144:                                              ; preds = %141
  %145 = load ptr, ptr %6, align 8, !dbg !3455
  call void @free(ptr noundef %145) #9, !dbg !3455
  br label %146, !dbg !3455

146:                                              ; preds = %144, %141
  %147 = load i64, ptr %10, align 8, !dbg !3459
  %148 = icmp eq i64 %147, 0, !dbg !3461
  br i1 %148, label %149, label %150, !dbg !3462

149:                                              ; preds = %146
  store i64 0, ptr %3, align 8, !dbg !3463
  br label %208, !dbg !3463

150:                                              ; preds = %146
  %151 = load ptr, ptr %4, align 8, !dbg !3464
  %152 = load ptr, ptr %5, align 8, !dbg !3464
  %153 = load i64, ptr %10, align 8, !dbg !3464
  %154 = call i64 @call_zseek64(ptr noundef %151, ptr noundef %152, i64 noundef %153, i32 noundef 0), !dbg !3464
  %155 = icmp ne i64 %154, 0, !dbg !3466
  br i1 %155, label %156, label %157, !dbg !3467

156:                                              ; preds = %150
  store i64 0, ptr %3, align 8, !dbg !3468
  br label %208, !dbg !3468

157:                                              ; preds = %150
  %158 = load ptr, ptr %4, align 8, !dbg !3469
  %159 = load ptr, ptr %5, align 8, !dbg !3471
  %160 = call i32 @unz64local_getLong(ptr noundef %158, ptr noundef %159, ptr noundef %11), !dbg !3472
  %161 = icmp ne i32 %160, 0, !dbg !3473
  br i1 %161, label %162, label %163, !dbg !3474

162:                                              ; preds = %157
  store i64 0, ptr %3, align 8, !dbg !3475
  br label %208, !dbg !3475

163:                                              ; preds = %157
  %164 = load ptr, ptr %4, align 8, !dbg !3476
  %165 = load ptr, ptr %5, align 8, !dbg !3478
  %166 = call i32 @unz64local_getLong(ptr noundef %164, ptr noundef %165, ptr noundef %11), !dbg !3479
  %167 = icmp ne i32 %166, 0, !dbg !3480
  br i1 %167, label %168, label %169, !dbg !3481

168:                                              ; preds = %163
  store i64 0, ptr %3, align 8, !dbg !3482
  br label %208, !dbg !3482

169:                                              ; preds = %163
  %170 = load i64, ptr %11, align 8, !dbg !3483
  %171 = icmp ne i64 %170, 0, !dbg !3485
  br i1 %171, label %172, label %173, !dbg !3486

172:                                              ; preds = %169
  store i64 0, ptr %3, align 8, !dbg !3487
  br label %208, !dbg !3487

173:                                              ; preds = %169
  %174 = load ptr, ptr %4, align 8, !dbg !3488
  %175 = load ptr, ptr %5, align 8, !dbg !3490
  %176 = call i32 @unz64local_getLong64(ptr noundef %174, ptr noundef %175, ptr noundef %12), !dbg !3491
  %177 = icmp ne i32 %176, 0, !dbg !3492
  br i1 %177, label %178, label %179, !dbg !3493

178:                                              ; preds = %173
  store i64 0, ptr %3, align 8, !dbg !3494
  br label %208, !dbg !3494

179:                                              ; preds = %173
  %180 = load ptr, ptr %4, align 8, !dbg !3495
  %181 = load ptr, ptr %5, align 8, !dbg !3497
  %182 = call i32 @unz64local_getLong(ptr noundef %180, ptr noundef %181, ptr noundef %11), !dbg !3498
  %183 = icmp ne i32 %182, 0, !dbg !3499
  br i1 %183, label %184, label %185, !dbg !3500

184:                                              ; preds = %179
  store i64 0, ptr %3, align 8, !dbg !3501
  br label %208, !dbg !3501

185:                                              ; preds = %179
  %186 = load i64, ptr %11, align 8, !dbg !3502
  %187 = icmp ne i64 %186, 1, !dbg !3504
  br i1 %187, label %188, label %189, !dbg !3505

188:                                              ; preds = %185
  store i64 0, ptr %3, align 8, !dbg !3506
  br label %208, !dbg !3506

189:                                              ; preds = %185
  %190 = load ptr, ptr %4, align 8, !dbg !3507
  %191 = load ptr, ptr %5, align 8, !dbg !3507
  %192 = load i64, ptr %12, align 8, !dbg !3507
  %193 = call i64 @call_zseek64(ptr noundef %190, ptr noundef %191, i64 noundef %192, i32 noundef 0), !dbg !3507
  %194 = icmp ne i64 %193, 0, !dbg !3509
  br i1 %194, label %195, label %196, !dbg !3510

195:                                              ; preds = %189
  store i64 0, ptr %3, align 8, !dbg !3511
  br label %208, !dbg !3511

196:                                              ; preds = %189
  %197 = load ptr, ptr %4, align 8, !dbg !3512
  %198 = load ptr, ptr %5, align 8, !dbg !3514
  %199 = call i32 @unz64local_getLong(ptr noundef %197, ptr noundef %198, ptr noundef %11), !dbg !3515
  %200 = icmp ne i32 %199, 0, !dbg !3516
  br i1 %200, label %201, label %202, !dbg !3517

201:                                              ; preds = %196
  store i64 0, ptr %3, align 8, !dbg !3518
  br label %208, !dbg !3518

202:                                              ; preds = %196
  %203 = load i64, ptr %11, align 8, !dbg !3519
  %204 = icmp ne i64 %203, 101075792, !dbg !3521
  br i1 %204, label %205, label %206, !dbg !3522

205:                                              ; preds = %202
  store i64 0, ptr %3, align 8, !dbg !3523
  br label %208, !dbg !3523

206:                                              ; preds = %202
  %207 = load i64, ptr %12, align 8, !dbg !3524
  store i64 %207, ptr %3, align 8, !dbg !3525
  br label %208, !dbg !3525

208:                                              ; preds = %206, %205, %201, %195, %188, %184, %178, %172, %168, %162, %156, %149, %34, %20
  %209 = load i64, ptr %3, align 8, !dbg !3526
  ret i64 %209, !dbg !3526
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unz64local_getLong(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !3527 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3531, metadata !DIExpression()), !dbg !3532
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3533, metadata !DIExpression()), !dbg !3534
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3535, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3537, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3539, metadata !DIExpression()), !dbg !3540
  store i32 0, ptr %8, align 4, !dbg !3540
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3541, metadata !DIExpression()), !dbg !3542
  %10 = load ptr, ptr %4, align 8, !dbg !3543
  %11 = load ptr, ptr %5, align 8, !dbg !3544
  %12 = call i32 @unz64local_getByte(ptr noundef %10, ptr noundef %11, ptr noundef %8), !dbg !3545
  store i32 %12, ptr %9, align 4, !dbg !3546
  %13 = load i32, ptr %8, align 4, !dbg !3547
  %14 = sext i32 %13 to i64, !dbg !3548
  store i64 %14, ptr %7, align 8, !dbg !3549
  %15 = load i32, ptr %9, align 4, !dbg !3550
  %16 = icmp eq i32 %15, 0, !dbg !3552
  br i1 %16, label %17, label %21, !dbg !3553

17:                                               ; preds = %3
  %18 = load ptr, ptr %4, align 8, !dbg !3554
  %19 = load ptr, ptr %5, align 8, !dbg !3555
  %20 = call i32 @unz64local_getByte(ptr noundef %18, ptr noundef %19, ptr noundef %8), !dbg !3556
  store i32 %20, ptr %9, align 4, !dbg !3557
  br label %21, !dbg !3558

21:                                               ; preds = %17, %3
  %22 = load i32, ptr %8, align 4, !dbg !3559
  %23 = sext i32 %22 to i64, !dbg !3560
  %24 = shl i64 %23, 8, !dbg !3561
  %25 = load i64, ptr %7, align 8, !dbg !3562
  %26 = or i64 %25, %24, !dbg !3562
  store i64 %26, ptr %7, align 8, !dbg !3562
  %27 = load i32, ptr %9, align 4, !dbg !3563
  %28 = icmp eq i32 %27, 0, !dbg !3565
  br i1 %28, label %29, label %33, !dbg !3566

29:                                               ; preds = %21
  %30 = load ptr, ptr %4, align 8, !dbg !3567
  %31 = load ptr, ptr %5, align 8, !dbg !3568
  %32 = call i32 @unz64local_getByte(ptr noundef %30, ptr noundef %31, ptr noundef %8), !dbg !3569
  store i32 %32, ptr %9, align 4, !dbg !3570
  br label %33, !dbg !3571

33:                                               ; preds = %29, %21
  %34 = load i32, ptr %8, align 4, !dbg !3572
  %35 = sext i32 %34 to i64, !dbg !3573
  %36 = shl i64 %35, 16, !dbg !3574
  %37 = load i64, ptr %7, align 8, !dbg !3575
  %38 = or i64 %37, %36, !dbg !3575
  store i64 %38, ptr %7, align 8, !dbg !3575
  %39 = load i32, ptr %9, align 4, !dbg !3576
  %40 = icmp eq i32 %39, 0, !dbg !3578
  br i1 %40, label %41, label %45, !dbg !3579

41:                                               ; preds = %33
  %42 = load ptr, ptr %4, align 8, !dbg !3580
  %43 = load ptr, ptr %5, align 8, !dbg !3581
  %44 = call i32 @unz64local_getByte(ptr noundef %42, ptr noundef %43, ptr noundef %8), !dbg !3582
  store i32 %44, ptr %9, align 4, !dbg !3583
  br label %45, !dbg !3584

45:                                               ; preds = %41, %33
  %46 = load i32, ptr %8, align 4, !dbg !3585
  %47 = sext i32 %46 to i64, !dbg !3586
  %48 = shl i64 %47, 24, !dbg !3587
  %49 = load i64, ptr %7, align 8, !dbg !3588
  %50 = add i64 %49, %48, !dbg !3588
  store i64 %50, ptr %7, align 8, !dbg !3588
  %51 = load i32, ptr %9, align 4, !dbg !3589
  %52 = icmp eq i32 %51, 0, !dbg !3591
  br i1 %52, label %53, label %56, !dbg !3592

53:                                               ; preds = %45
  %54 = load i64, ptr %7, align 8, !dbg !3593
  %55 = load ptr, ptr %6, align 8, !dbg !3594
  store i64 %54, ptr %55, align 8, !dbg !3595
  br label %58, !dbg !3596

56:                                               ; preds = %45
  %57 = load ptr, ptr %6, align 8, !dbg !3597
  store i64 0, ptr %57, align 8, !dbg !3598
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32, ptr %9, align 4, !dbg !3599
  ret i32 %59, !dbg !3600
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unz64local_getLong64(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !3601 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3604, metadata !DIExpression()), !dbg !3605
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3606, metadata !DIExpression()), !dbg !3607
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3608, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3610, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3612, metadata !DIExpression()), !dbg !3613
  store i32 0, ptr %8, align 4, !dbg !3613
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3614, metadata !DIExpression()), !dbg !3615
  %10 = load ptr, ptr %4, align 8, !dbg !3616
  %11 = load ptr, ptr %5, align 8, !dbg !3617
  %12 = call i32 @unz64local_getByte(ptr noundef %10, ptr noundef %11, ptr noundef %8), !dbg !3618
  store i32 %12, ptr %9, align 4, !dbg !3619
  %13 = load i32, ptr %8, align 4, !dbg !3620
  %14 = sext i32 %13 to i64, !dbg !3621
  store i64 %14, ptr %7, align 8, !dbg !3622
  %15 = load i32, ptr %9, align 4, !dbg !3623
  %16 = icmp eq i32 %15, 0, !dbg !3625
  br i1 %16, label %17, label %21, !dbg !3626

17:                                               ; preds = %3
  %18 = load ptr, ptr %4, align 8, !dbg !3627
  %19 = load ptr, ptr %5, align 8, !dbg !3628
  %20 = call i32 @unz64local_getByte(ptr noundef %18, ptr noundef %19, ptr noundef %8), !dbg !3629
  store i32 %20, ptr %9, align 4, !dbg !3630
  br label %21, !dbg !3631

21:                                               ; preds = %17, %3
  %22 = load i32, ptr %8, align 4, !dbg !3632
  %23 = sext i32 %22 to i64, !dbg !3633
  %24 = shl i64 %23, 8, !dbg !3634
  %25 = load i64, ptr %7, align 8, !dbg !3635
  %26 = or i64 %25, %24, !dbg !3635
  store i64 %26, ptr %7, align 8, !dbg !3635
  %27 = load i32, ptr %9, align 4, !dbg !3636
  %28 = icmp eq i32 %27, 0, !dbg !3638
  br i1 %28, label %29, label %33, !dbg !3639

29:                                               ; preds = %21
  %30 = load ptr, ptr %4, align 8, !dbg !3640
  %31 = load ptr, ptr %5, align 8, !dbg !3641
  %32 = call i32 @unz64local_getByte(ptr noundef %30, ptr noundef %31, ptr noundef %8), !dbg !3642
  store i32 %32, ptr %9, align 4, !dbg !3643
  br label %33, !dbg !3644

33:                                               ; preds = %29, %21
  %34 = load i32, ptr %8, align 4, !dbg !3645
  %35 = sext i32 %34 to i64, !dbg !3646
  %36 = shl i64 %35, 16, !dbg !3647
  %37 = load i64, ptr %7, align 8, !dbg !3648
  %38 = or i64 %37, %36, !dbg !3648
  store i64 %38, ptr %7, align 8, !dbg !3648
  %39 = load i32, ptr %9, align 4, !dbg !3649
  %40 = icmp eq i32 %39, 0, !dbg !3651
  br i1 %40, label %41, label %45, !dbg !3652

41:                                               ; preds = %33
  %42 = load ptr, ptr %4, align 8, !dbg !3653
  %43 = load ptr, ptr %5, align 8, !dbg !3654
  %44 = call i32 @unz64local_getByte(ptr noundef %42, ptr noundef %43, ptr noundef %8), !dbg !3655
  store i32 %44, ptr %9, align 4, !dbg !3656
  br label %45, !dbg !3657

45:                                               ; preds = %41, %33
  %46 = load i32, ptr %8, align 4, !dbg !3658
  %47 = sext i32 %46 to i64, !dbg !3659
  %48 = shl i64 %47, 24, !dbg !3660
  %49 = load i64, ptr %7, align 8, !dbg !3661
  %50 = or i64 %49, %48, !dbg !3661
  store i64 %50, ptr %7, align 8, !dbg !3661
  %51 = load i32, ptr %9, align 4, !dbg !3662
  %52 = icmp eq i32 %51, 0, !dbg !3664
  br i1 %52, label %53, label %57, !dbg !3665

53:                                               ; preds = %45
  %54 = load ptr, ptr %4, align 8, !dbg !3666
  %55 = load ptr, ptr %5, align 8, !dbg !3667
  %56 = call i32 @unz64local_getByte(ptr noundef %54, ptr noundef %55, ptr noundef %8), !dbg !3668
  store i32 %56, ptr %9, align 4, !dbg !3669
  br label %57, !dbg !3670

57:                                               ; preds = %53, %45
  %58 = load i32, ptr %8, align 4, !dbg !3671
  %59 = sext i32 %58 to i64, !dbg !3672
  %60 = shl i64 %59, 32, !dbg !3673
  %61 = load i64, ptr %7, align 8, !dbg !3674
  %62 = or i64 %61, %60, !dbg !3674
  store i64 %62, ptr %7, align 8, !dbg !3674
  %63 = load i32, ptr %9, align 4, !dbg !3675
  %64 = icmp eq i32 %63, 0, !dbg !3677
  br i1 %64, label %65, label %69, !dbg !3678

65:                                               ; preds = %57
  %66 = load ptr, ptr %4, align 8, !dbg !3679
  %67 = load ptr, ptr %5, align 8, !dbg !3680
  %68 = call i32 @unz64local_getByte(ptr noundef %66, ptr noundef %67, ptr noundef %8), !dbg !3681
  store i32 %68, ptr %9, align 4, !dbg !3682
  br label %69, !dbg !3683

69:                                               ; preds = %65, %57
  %70 = load i32, ptr %8, align 4, !dbg !3684
  %71 = sext i32 %70 to i64, !dbg !3685
  %72 = shl i64 %71, 40, !dbg !3686
  %73 = load i64, ptr %7, align 8, !dbg !3687
  %74 = or i64 %73, %72, !dbg !3687
  store i64 %74, ptr %7, align 8, !dbg !3687
  %75 = load i32, ptr %9, align 4, !dbg !3688
  %76 = icmp eq i32 %75, 0, !dbg !3690
  br i1 %76, label %77, label %81, !dbg !3691

77:                                               ; preds = %69
  %78 = load ptr, ptr %4, align 8, !dbg !3692
  %79 = load ptr, ptr %5, align 8, !dbg !3693
  %80 = call i32 @unz64local_getByte(ptr noundef %78, ptr noundef %79, ptr noundef %8), !dbg !3694
  store i32 %80, ptr %9, align 4, !dbg !3695
  br label %81, !dbg !3696

81:                                               ; preds = %77, %69
  %82 = load i32, ptr %8, align 4, !dbg !3697
  %83 = sext i32 %82 to i64, !dbg !3698
  %84 = shl i64 %83, 48, !dbg !3699
  %85 = load i64, ptr %7, align 8, !dbg !3700
  %86 = or i64 %85, %84, !dbg !3700
  store i64 %86, ptr %7, align 8, !dbg !3700
  %87 = load i32, ptr %9, align 4, !dbg !3701
  %88 = icmp eq i32 %87, 0, !dbg !3703
  br i1 %88, label %89, label %93, !dbg !3704

89:                                               ; preds = %81
  %90 = load ptr, ptr %4, align 8, !dbg !3705
  %91 = load ptr, ptr %5, align 8, !dbg !3706
  %92 = call i32 @unz64local_getByte(ptr noundef %90, ptr noundef %91, ptr noundef %8), !dbg !3707
  store i32 %92, ptr %9, align 4, !dbg !3708
  br label %93, !dbg !3709

93:                                               ; preds = %89, %81
  %94 = load i32, ptr %8, align 4, !dbg !3710
  %95 = sext i32 %94 to i64, !dbg !3711
  %96 = shl i64 %95, 56, !dbg !3712
  %97 = load i64, ptr %7, align 8, !dbg !3713
  %98 = or i64 %97, %96, !dbg !3713
  store i64 %98, ptr %7, align 8, !dbg !3713
  %99 = load i32, ptr %9, align 4, !dbg !3714
  %100 = icmp eq i32 %99, 0, !dbg !3716
  br i1 %100, label %101, label %104, !dbg !3717

101:                                              ; preds = %93
  %102 = load i64, ptr %7, align 8, !dbg !3718
  %103 = load ptr, ptr %6, align 8, !dbg !3719
  store i64 %102, ptr %103, align 8, !dbg !3720
  br label %106, !dbg !3721

104:                                              ; preds = %93
  %105 = load ptr, ptr %6, align 8, !dbg !3722
  store i64 0, ptr %105, align 8, !dbg !3723
  br label %106

106:                                              ; preds = %104, %101
  %107 = load i32, ptr %9, align 4, !dbg !3724
  ret i32 %107, !dbg !3725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unz64local_getShort(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !3726 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3727, metadata !DIExpression()), !dbg !3728
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3729, metadata !DIExpression()), !dbg !3730
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3731, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3733, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3735, metadata !DIExpression()), !dbg !3736
  store i32 0, ptr %8, align 4, !dbg !3736
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3737, metadata !DIExpression()), !dbg !3738
  %10 = load ptr, ptr %4, align 8, !dbg !3739
  %11 = load ptr, ptr %5, align 8, !dbg !3740
  %12 = call i32 @unz64local_getByte(ptr noundef %10, ptr noundef %11, ptr noundef %8), !dbg !3741
  store i32 %12, ptr %9, align 4, !dbg !3742
  %13 = load i32, ptr %8, align 4, !dbg !3743
  %14 = sext i32 %13 to i64, !dbg !3744
  store i64 %14, ptr %7, align 8, !dbg !3745
  %15 = load i32, ptr %9, align 4, !dbg !3746
  %16 = icmp eq i32 %15, 0, !dbg !3748
  br i1 %16, label %17, label %21, !dbg !3749

17:                                               ; preds = %3
  %18 = load ptr, ptr %4, align 8, !dbg !3750
  %19 = load ptr, ptr %5, align 8, !dbg !3751
  %20 = call i32 @unz64local_getByte(ptr noundef %18, ptr noundef %19, ptr noundef %8), !dbg !3752
  store i32 %20, ptr %9, align 4, !dbg !3753
  br label %21, !dbg !3754

21:                                               ; preds = %17, %3
  %22 = load i32, ptr %8, align 4, !dbg !3755
  %23 = sext i32 %22 to i64, !dbg !3756
  %24 = shl i64 %23, 8, !dbg !3757
  %25 = load i64, ptr %7, align 8, !dbg !3758
  %26 = or i64 %25, %24, !dbg !3758
  store i64 %26, ptr %7, align 8, !dbg !3758
  %27 = load i32, ptr %9, align 4, !dbg !3759
  %28 = icmp eq i32 %27, 0, !dbg !3761
  br i1 %28, label %29, label %32, !dbg !3762

29:                                               ; preds = %21
  %30 = load i64, ptr %7, align 8, !dbg !3763
  %31 = load ptr, ptr %6, align 8, !dbg !3764
  store i64 %30, ptr %31, align 8, !dbg !3765
  br label %34, !dbg !3766

32:                                               ; preds = %21
  %33 = load ptr, ptr %6, align 8, !dbg !3767
  store i64 0, ptr %33, align 8, !dbg !3768
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, ptr %9, align 4, !dbg !3769
  ret i32 %35, !dbg !3770
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unz64local_SearchCentralDir(ptr noundef %0, ptr noundef %1) #0 !dbg !3771 {
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
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3772, metadata !DIExpression()), !dbg !3773
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3774, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3776, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3778, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3780, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3782, metadata !DIExpression()), !dbg !3783
  store i64 65535, ptr %9, align 8, !dbg !3783
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3784, metadata !DIExpression()), !dbg !3785
  store i64 0, ptr %10, align 8, !dbg !3785
  %14 = load ptr, ptr %4, align 8, !dbg !3786
  %15 = load ptr, ptr %5, align 8, !dbg !3786
  %16 = call i64 @call_zseek64(ptr noundef %14, ptr noundef %15, i64 noundef 0, i32 noundef 2), !dbg !3786
  %17 = icmp ne i64 %16, 0, !dbg !3788
  br i1 %17, label %18, label %19, !dbg !3789

18:                                               ; preds = %2
  store i64 0, ptr %3, align 8, !dbg !3790
  br label %146, !dbg !3790

19:                                               ; preds = %2
  %20 = load ptr, ptr %4, align 8, !dbg !3791
  %21 = load ptr, ptr %5, align 8, !dbg !3791
  %22 = call i64 @call_ztell64(ptr noundef %20, ptr noundef %21), !dbg !3791
  store i64 %22, ptr %7, align 8, !dbg !3792
  %23 = load i64, ptr %9, align 8, !dbg !3793
  %24 = load i64, ptr %7, align 8, !dbg !3795
  %25 = icmp ugt i64 %23, %24, !dbg !3796
  br i1 %25, label %26, label %28, !dbg !3797

26:                                               ; preds = %19
  %27 = load i64, ptr %7, align 8, !dbg !3798
  store i64 %27, ptr %9, align 8, !dbg !3799
  br label %28, !dbg !3800

28:                                               ; preds = %26, %19
  %29 = call noalias ptr @malloc(i64 noundef 1028) #8, !dbg !3801
  store ptr %29, ptr %6, align 8, !dbg !3802
  %30 = load ptr, ptr %6, align 8, !dbg !3803
  %31 = icmp eq ptr %30, null, !dbg !3805
  br i1 %31, label %32, label %33, !dbg !3806

32:                                               ; preds = %28
  store i64 0, ptr %3, align 8, !dbg !3807
  br label %146, !dbg !3807

33:                                               ; preds = %28
  store i64 4, ptr %8, align 8, !dbg !3808
  br label %34, !dbg !3809

34:                                               ; preds = %138, %33
  %35 = load i64, ptr %8, align 8, !dbg !3810
  %36 = load i64, ptr %9, align 8, !dbg !3811
  %37 = icmp ult i64 %35, %36, !dbg !3812
  br i1 %37, label %38, label %139, !dbg !3809

38:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3813, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3816, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3818, metadata !DIExpression()), !dbg !3819
  %39 = load i64, ptr %8, align 8, !dbg !3820
  %40 = add i64 %39, 1024, !dbg !3822
  %41 = load i64, ptr %9, align 8, !dbg !3823
  %42 = icmp ugt i64 %40, %41, !dbg !3824
  br i1 %42, label %43, label %45, !dbg !3825

43:                                               ; preds = %38
  %44 = load i64, ptr %9, align 8, !dbg !3826
  store i64 %44, ptr %8, align 8, !dbg !3827
  br label %48, !dbg !3828

45:                                               ; preds = %38
  %46 = load i64, ptr %8, align 8, !dbg !3829
  %47 = add i64 %46, 1024, !dbg !3829
  store i64 %47, ptr %8, align 8, !dbg !3829
  br label %48

48:                                               ; preds = %45, %43
  %49 = load i64, ptr %7, align 8, !dbg !3830
  %50 = load i64, ptr %8, align 8, !dbg !3831
  %51 = sub i64 %49, %50, !dbg !3832
  store i64 %51, ptr %12, align 8, !dbg !3833
  %52 = load i64, ptr %7, align 8, !dbg !3834
  %53 = load i64, ptr %12, align 8, !dbg !3835
  %54 = sub i64 %52, %53, !dbg !3836
  %55 = icmp ult i64 1028, %54, !dbg !3837
  br i1 %55, label %56, label %57, !dbg !3838

56:                                               ; preds = %48
  br label %61, !dbg !3838

57:                                               ; preds = %48
  %58 = load i64, ptr %7, align 8, !dbg !3839
  %59 = load i64, ptr %12, align 8, !dbg !3840
  %60 = sub i64 %58, %59, !dbg !3841
  br label %61, !dbg !3838

61:                                               ; preds = %57, %56
  %62 = phi i64 [ 1028, %56 ], [ %60, %57 ], !dbg !3838
  store i64 %62, ptr %11, align 8, !dbg !3842
  %63 = load ptr, ptr %4, align 8, !dbg !3843
  %64 = load ptr, ptr %5, align 8, !dbg !3843
  %65 = load i64, ptr %12, align 8, !dbg !3843
  %66 = call i64 @call_zseek64(ptr noundef %63, ptr noundef %64, i64 noundef %65, i32 noundef 0), !dbg !3843
  %67 = icmp ne i64 %66, 0, !dbg !3845
  br i1 %67, label %68, label %69, !dbg !3846

68:                                               ; preds = %61
  br label %139, !dbg !3847

69:                                               ; preds = %61
  %70 = load ptr, ptr %4, align 8, !dbg !3848
  %71 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %70, i32 0, i32 0, !dbg !3848
  %72 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %71, i32 0, i32 1, !dbg !3848
  %73 = load ptr, ptr %72, align 8, !dbg !3848
  %74 = load ptr, ptr %4, align 8, !dbg !3848
  %75 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %74, i32 0, i32 0, !dbg !3848
  %76 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %75, i32 0, i32 8, !dbg !3848
  %77 = load ptr, ptr %76, align 8, !dbg !3848
  %78 = load ptr, ptr %5, align 8, !dbg !3848
  %79 = load ptr, ptr %6, align 8, !dbg !3848
  %80 = load i64, ptr %11, align 8, !dbg !3848
  %81 = call i64 %73(ptr noundef %77, ptr noundef %78, ptr noundef %79, i64 noundef %80), !dbg !3848
  %82 = load i64, ptr %11, align 8, !dbg !3850
  %83 = icmp ne i64 %81, %82, !dbg !3851
  br i1 %83, label %84, label %85, !dbg !3852

84:                                               ; preds = %69
  br label %139, !dbg !3853

85:                                               ; preds = %69
  %86 = load i64, ptr %11, align 8, !dbg !3854
  %87 = trunc i64 %86 to i32, !dbg !3856
  %88 = sub nsw i32 %87, 3, !dbg !3857
  store i32 %88, ptr %13, align 4, !dbg !3858
  br label %89, !dbg !3859

89:                                               ; preds = %133, %85
  %90 = load i32, ptr %13, align 4, !dbg !3860
  %91 = add nsw i32 %90, -1, !dbg !3860
  store i32 %91, ptr %13, align 4, !dbg !3860
  %92 = icmp sgt i32 %90, 0, !dbg !3862
  br i1 %92, label %93, label %134, !dbg !3863

93:                                               ; preds = %89
  %94 = load ptr, ptr %6, align 8, !dbg !3864
  %95 = load i32, ptr %13, align 4, !dbg !3866
  %96 = sext i32 %95 to i64, !dbg !3867
  %97 = getelementptr inbounds i8, ptr %94, i64 %96, !dbg !3867
  %98 = load i8, ptr %97, align 1, !dbg !3868
  %99 = zext i8 %98 to i32, !dbg !3869
  %100 = icmp eq i32 %99, 80, !dbg !3870
  br i1 %100, label %101, label %133, !dbg !3871

101:                                              ; preds = %93
  %102 = load ptr, ptr %6, align 8, !dbg !3872
  %103 = load i32, ptr %13, align 4, !dbg !3873
  %104 = sext i32 %103 to i64, !dbg !3874
  %105 = getelementptr inbounds i8, ptr %102, i64 %104, !dbg !3874
  %106 = getelementptr inbounds i8, ptr %105, i64 1, !dbg !3875
  %107 = load i8, ptr %106, align 1, !dbg !3876
  %108 = zext i8 %107 to i32, !dbg !3877
  %109 = icmp eq i32 %108, 75, !dbg !3878
  br i1 %109, label %110, label %133, !dbg !3879

110:                                              ; preds = %101
  %111 = load ptr, ptr %6, align 8, !dbg !3880
  %112 = load i32, ptr %13, align 4, !dbg !3881
  %113 = sext i32 %112 to i64, !dbg !3882
  %114 = getelementptr inbounds i8, ptr %111, i64 %113, !dbg !3882
  %115 = getelementptr inbounds i8, ptr %114, i64 2, !dbg !3883
  %116 = load i8, ptr %115, align 1, !dbg !3884
  %117 = zext i8 %116 to i32, !dbg !3885
  %118 = icmp eq i32 %117, 5, !dbg !3886
  br i1 %118, label %119, label %133, !dbg !3887

119:                                              ; preds = %110
  %120 = load ptr, ptr %6, align 8, !dbg !3888
  %121 = load i32, ptr %13, align 4, !dbg !3889
  %122 = sext i32 %121 to i64, !dbg !3890
  %123 = getelementptr inbounds i8, ptr %120, i64 %122, !dbg !3890
  %124 = getelementptr inbounds i8, ptr %123, i64 3, !dbg !3891
  %125 = load i8, ptr %124, align 1, !dbg !3892
  %126 = zext i8 %125 to i32, !dbg !3893
  %127 = icmp eq i32 %126, 6, !dbg !3894
  br i1 %127, label %128, label %133, !dbg !3895

128:                                              ; preds = %119
  %129 = load i64, ptr %12, align 8, !dbg !3896
  %130 = load i32, ptr %13, align 4, !dbg !3898
  %131 = sext i32 %130 to i64, !dbg !3898
  %132 = add i64 %129, %131, !dbg !3899
  store i64 %132, ptr %10, align 8, !dbg !3900
  br label %134, !dbg !3901

133:                                              ; preds = %119, %110, %101, %93
  br label %89, !dbg !3902, !llvm.loop !3903

134:                                              ; preds = %128, %89
  %135 = load i64, ptr %10, align 8, !dbg !3905
  %136 = icmp ne i64 %135, 0, !dbg !3907
  br i1 %136, label %137, label %138, !dbg !3908

137:                                              ; preds = %134
  br label %139, !dbg !3909

138:                                              ; preds = %134
  br label %34, !dbg !3809, !llvm.loop !3910

139:                                              ; preds = %137, %84, %68, %34
  %140 = load ptr, ptr %6, align 8, !dbg !3912
  %141 = icmp ne ptr %140, null, !dbg !3912
  br i1 %141, label %142, label %144, !dbg !3915

142:                                              ; preds = %139
  %143 = load ptr, ptr %6, align 8, !dbg !3912
  call void @free(ptr noundef %143) #9, !dbg !3912
  br label %144, !dbg !3912

144:                                              ; preds = %142, %139
  %145 = load i64, ptr %10, align 8, !dbg !3916
  store i64 %145, ptr %3, align 8, !dbg !3917
  br label %146, !dbg !3917

146:                                              ; preds = %144, %32, %18
  %147 = load i64, ptr %3, align 8, !dbg !3918
  ret i64 %147, !dbg !3918
}

declare i64 @call_ztell64(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unz64local_getByte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !3919 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3922, metadata !DIExpression()), !dbg !3923
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3924, metadata !DIExpression()), !dbg !3925
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3926, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3928, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3930, metadata !DIExpression()), !dbg !3931
  %10 = load ptr, ptr %5, align 8, !dbg !3932
  %11 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %10, i32 0, i32 0, !dbg !3932
  %12 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %11, i32 0, i32 1, !dbg !3932
  %13 = load ptr, ptr %12, align 8, !dbg !3932
  %14 = load ptr, ptr %5, align 8, !dbg !3932
  %15 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %14, i32 0, i32 0, !dbg !3932
  %16 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %15, i32 0, i32 8, !dbg !3932
  %17 = load ptr, ptr %16, align 8, !dbg !3932
  %18 = load ptr, ptr %6, align 8, !dbg !3932
  %19 = call i64 %13(ptr noundef %17, ptr noundef %18, ptr noundef %8, i64 noundef 1), !dbg !3932
  %20 = trunc i64 %19 to i32, !dbg !3933
  store i32 %20, ptr %9, align 4, !dbg !3931
  %21 = load i32, ptr %9, align 4, !dbg !3934
  %22 = icmp eq i32 %21, 1, !dbg !3936
  br i1 %22, label %23, label %27, !dbg !3937

23:                                               ; preds = %3
  %24 = load i8, ptr %8, align 1, !dbg !3938
  %25 = zext i8 %24 to i32, !dbg !3940
  %26 = load ptr, ptr %7, align 8, !dbg !3941
  store i32 %25, ptr %26, align 4, !dbg !3942
  store i32 0, ptr %4, align 4, !dbg !3943
  br label %41, !dbg !3943

27:                                               ; preds = %3
  %28 = load ptr, ptr %5, align 8, !dbg !3944
  %29 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %28, i32 0, i32 0, !dbg !3944
  %30 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i32 0, i32 7, !dbg !3944
  %31 = load ptr, ptr %30, align 8, !dbg !3944
  %32 = load ptr, ptr %5, align 8, !dbg !3944
  %33 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %32, i32 0, i32 0, !dbg !3944
  %34 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %33, i32 0, i32 8, !dbg !3944
  %35 = load ptr, ptr %34, align 8, !dbg !3944
  %36 = load ptr, ptr %6, align 8, !dbg !3944
  %37 = call i32 %31(ptr noundef %35, ptr noundef %36), !dbg !3944
  %38 = icmp ne i32 %37, 0, !dbg !3944
  br i1 %38, label %39, label %40, !dbg !3947

39:                                               ; preds = %27
  store i32 -1, ptr %4, align 4, !dbg !3948
  br label %41, !dbg !3948

40:                                               ; preds = %27
  store i32 0, ptr %4, align 4, !dbg !3949
  br label %41, !dbg !3949

41:                                               ; preds = %40, %39, %23
  %42 = load i32, ptr %4, align 4, !dbg !3950
  ret i32 %42, !dbg !3950
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unz64local_DosDateToTmuDate(i64 noundef %0, ptr noundef %1) #0 !dbg !3951 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3955, metadata !DIExpression()), !dbg !3956
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3957, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3959, metadata !DIExpression()), !dbg !3960
  %6 = load i64, ptr %3, align 8, !dbg !3961
  %7 = lshr i64 %6, 16, !dbg !3962
  store i64 %7, ptr %5, align 8, !dbg !3963
  %8 = load i64, ptr %5, align 8, !dbg !3964
  %9 = and i64 %8, 31, !dbg !3965
  %10 = trunc i64 %9 to i32, !dbg !3966
  %11 = load ptr, ptr %4, align 8, !dbg !3967
  %12 = getelementptr inbounds %struct.tm_unz_s, ptr %11, i32 0, i32 3, !dbg !3968
  store i32 %10, ptr %12, align 4, !dbg !3969
  %13 = load i64, ptr %5, align 8, !dbg !3970
  %14 = and i64 %13, 480, !dbg !3971
  %15 = udiv i64 %14, 32, !dbg !3972
  %16 = sub i64 %15, 1, !dbg !3973
  %17 = trunc i64 %16 to i32, !dbg !3974
  %18 = load ptr, ptr %4, align 8, !dbg !3975
  %19 = getelementptr inbounds %struct.tm_unz_s, ptr %18, i32 0, i32 4, !dbg !3976
  store i32 %17, ptr %19, align 4, !dbg !3977
  %20 = load i64, ptr %5, align 8, !dbg !3978
  %21 = and i64 %20, 65024, !dbg !3979
  %22 = udiv i64 %21, 512, !dbg !3980
  %23 = add i64 %22, 1980, !dbg !3981
  %24 = trunc i64 %23 to i32, !dbg !3982
  %25 = load ptr, ptr %4, align 8, !dbg !3983
  %26 = getelementptr inbounds %struct.tm_unz_s, ptr %25, i32 0, i32 5, !dbg !3984
  store i32 %24, ptr %26, align 4, !dbg !3985
  %27 = load i64, ptr %3, align 8, !dbg !3986
  %28 = and i64 %27, 63488, !dbg !3987
  %29 = udiv i64 %28, 2048, !dbg !3988
  %30 = trunc i64 %29 to i32, !dbg !3989
  %31 = load ptr, ptr %4, align 8, !dbg !3990
  %32 = getelementptr inbounds %struct.tm_unz_s, ptr %31, i32 0, i32 2, !dbg !3991
  store i32 %30, ptr %32, align 4, !dbg !3992
  %33 = load i64, ptr %3, align 8, !dbg !3993
  %34 = and i64 %33, 2016, !dbg !3994
  %35 = udiv i64 %34, 32, !dbg !3995
  %36 = trunc i64 %35 to i32, !dbg !3996
  %37 = load ptr, ptr %4, align 8, !dbg !3997
  %38 = getelementptr inbounds %struct.tm_unz_s, ptr %37, i32 0, i32 1, !dbg !3998
  store i32 %36, ptr %38, align 4, !dbg !3999
  %39 = load i64, ptr %3, align 8, !dbg !4000
  %40 = and i64 %39, 31, !dbg !4001
  %41 = mul i64 2, %40, !dbg !4002
  %42 = trunc i64 %41 to i32, !dbg !4003
  %43 = load ptr, ptr %4, align 8, !dbg !4004
  %44 = getelementptr inbounds %struct.tm_unz_s, ptr %43, i32 0, i32 0, !dbg !4005
  store i32 %42, ptr %44, align 4, !dbg !4006
  ret void, !dbg !4007
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!206, !207, !208, !209, !210, !211, !212}
!llvm.ident = !{!213}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "unz_copyright", scope: !2, file: !3, line: 122, type: !203, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !197, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/minizip/unzip.c", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "32c11ae2aa5ff05cd4c871c856450a42")
!4 = !{!5, !6, !34, !134, !139, !28, !160, !165, !24, !121, !146, !190, !51, !194, !196}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "unz64_s", file: !3, line: 193, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 165, size: 2752, elements: !9)
!9 = !{!10, !82, !83, !84, !91, !92, !93, !94, !95, !96, !97, !98, !128, !133, !188, !189}
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
!82 = !DIDerivedType(tag: DW_TAG_member, name: "is64bitOpenFunction", scope: !8, file: !3, line: 168, baseType: !28, size: 32, offset: 768)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "filestream", scope: !8, file: !3, line: 169, baseType: !24, size: 64, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "gi", scope: !8, file: !3, line: 170, baseType: !85, size: 128, offset: 896)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "unz_global_info64", file: !86, line: 101, baseType: !87)
!86 = !DIFile(filename: "src/minizip/unzip.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "11ae6a9d654c95c47da55fe16772a1e5")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unz_global_info64_s", file: !86, line: 96, size: 128, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "number_entry", scope: !87, file: !86, line: 98, baseType: !51, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "size_comment", scope: !87, file: !86, line: 100, baseType: !34, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "byte_before_the_zipfile", scope: !8, file: !3, line: 171, baseType: !51, size: 64, offset: 1024)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "num_file", scope: !8, file: !3, line: 172, baseType: !51, size: 64, offset: 1088)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pos_in_central_dir", scope: !8, file: !3, line: 173, baseType: !51, size: 64, offset: 1152)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "current_file_ok", scope: !8, file: !3, line: 174, baseType: !51, size: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "central_pos", scope: !8, file: !3, line: 175, baseType: !51, size: 64, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "size_central_dir", scope: !8, file: !3, line: 177, baseType: !51, size: 64, offset: 1344)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "offset_central_dir", scope: !8, file: !3, line: 178, baseType: !51, size: 64, offset: 1408)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "cur_file_info", scope: !8, file: !3, line: 181, baseType: !99, size: 1088, offset: 1472)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "unz_file_info64", file: !86, line: 130, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unz_file_info64_s", file: !86, line: 111, size: 1088, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !100, file: !86, line: 113, baseType: !34, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "version_needed", scope: !100, file: !86, line: 114, baseType: !34, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !100, file: !86, line: 115, baseType: !34, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "compression_method", scope: !100, file: !86, line: 116, baseType: !34, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "dosDate", scope: !100, file: !86, line: 117, baseType: !34, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !100, file: !86, line: 118, baseType: !34, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !100, file: !86, line: 119, baseType: !51, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !100, file: !86, line: 120, baseType: !51, size: 64, offset: 448)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "size_filename", scope: !100, file: !86, line: 121, baseType: !34, size: 64, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "size_file_extra", scope: !100, file: !86, line: 122, baseType: !34, size: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "size_file_comment", scope: !100, file: !86, line: 123, baseType: !34, size: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "disk_num_start", scope: !100, file: !86, line: 125, baseType: !34, size: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "internal_fa", scope: !100, file: !86, line: 126, baseType: !34, size: 64, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "external_fa", scope: !100, file: !86, line: 127, baseType: !34, size: 64, offset: 832)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tmu_date", scope: !100, file: !86, line: 129, baseType: !117, size: 192, offset: 896)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "tm_unz", file: !86, line: 92, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm_unz_s", file: !86, line: 84, size: 192, elements: !119)
!119 = !{!120, !123, !124, !125, !126, !127}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !118, file: !86, line: 86, baseType: !121, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !25, line: 393, baseType: !122)
!122 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !118, file: !86, line: 87, baseType: !121, size: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !118, file: !86, line: 88, baseType: !121, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !118, file: !86, line: 89, baseType: !121, size: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !118, file: !86, line: 90, baseType: !121, size: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !118, file: !86, line: 91, baseType: !121, size: 32, offset: 160)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "cur_file_info_internal", scope: !8, file: !3, line: 182, baseType: !129, size: 64, offset: 2560)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "unz_file_info64_internal", file: !3, line: 129, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unz_file_info64_internal_s", file: !3, line: 126, size: 64, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "offset_curfile", scope: !130, file: !3, line: 128, baseType: !51, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "pfile_in_zip_read", scope: !8, file: !3, line: 183, baseType: !134, size: 64, offset: 2624)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "file_in_zip64_read_info_s", file: !3, line: 160, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 134, size: 2624, elements: !137)
!137 = !{!138, !140, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "read_buffer", scope: !136, file: !3, line: 136, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !136, file: !3, line: 137, baseType: !141, size: 896, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !142, line: 106, baseType: !143)
!142 = !DIFile(filename: "/usr/include/zlib.h", directory: "", checksumkind: CSK_MD5, checksum: "69c0882c2071430ea4822b4f6c1edd30")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !142, line: 86, size: 896, elements: !144)
!144 = !{!145, !150, !151, !152, !153, !154, !155, !156, !159, !164, !169, !170, !171, !172}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !143, file: !142, line: 87, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !25, line: 400, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !25, line: 391, baseType: !149)
!149 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !143, file: !142, line: 88, baseType: !121, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !143, file: !142, line: 89, baseType: !34, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !143, file: !142, line: 91, baseType: !146, size: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !143, file: !142, line: 92, baseType: !121, size: 32, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !143, file: !142, line: 93, baseType: !34, size: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !143, file: !142, line: 95, baseType: !139, size: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !143, file: !142, line: 96, baseType: !157, size: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !142, line: 84, flags: DIFlagFwdDecl)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !143, file: !142, line: 98, baseType: !160, size: 64, offset: 512)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !142, line: 81, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!24, !24, !121, !121}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !143, file: !142, line: 99, baseType: !165, size: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !142, line: 82, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !24, !24}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !143, file: !142, line: 100, baseType: !24, size: 64, offset: 640)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !143, file: !142, line: 102, baseType: !28, size: 32, offset: 704)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !143, file: !142, line: 104, baseType: !34, size: 64, offset: 768)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !143, file: !142, line: 105, baseType: !34, size: 64, offset: 832)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pos_in_zipfile", scope: !136, file: !3, line: 143, baseType: !51, size: 64, offset: 960)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "stream_initialised", scope: !136, file: !3, line: 144, baseType: !34, size: 64, offset: 1024)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "offset_local_extrafield", scope: !136, file: !3, line: 146, baseType: !51, size: 64, offset: 1088)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "size_local_extrafield", scope: !136, file: !3, line: 147, baseType: !121, size: 32, offset: 1152)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pos_local_extrafield", scope: !136, file: !3, line: 148, baseType: !51, size: 64, offset: 1216)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "total_out_64", scope: !136, file: !3, line: 149, baseType: !51, size: 64, offset: 1280)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !136, file: !3, line: 151, baseType: !34, size: 64, offset: 1344)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "crc32_wait", scope: !136, file: !3, line: 152, baseType: !34, size: 64, offset: 1408)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "rest_read_compressed", scope: !136, file: !3, line: 153, baseType: !51, size: 64, offset: 1472)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "rest_read_uncompressed", scope: !136, file: !3, line: 154, baseType: !51, size: 64, offset: 1536)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "z_filefunc", scope: !136, file: !3, line: 155, baseType: !11, size: 768, offset: 1600)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "filestream", scope: !136, file: !3, line: 156, baseType: !24, size: 64, offset: 2368)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "compression_method", scope: !136, file: !3, line: 157, baseType: !34, size: 64, offset: 2432)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "byte_before_the_zipfile", scope: !136, file: !3, line: 158, baseType: !51, size: 64, offset: 2496)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !136, file: !3, line: 159, baseType: !28, size: 32, offset: 2560)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "encrypted", scope: !8, file: !3, line: 185, baseType: !28, size: 32, offset: 2688)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "isZip64", scope: !8, file: !3, line: 187, baseType: !28, size: 32, offset: 2720)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !191, line: 63, baseType: !192)
!191 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !193, line: 152, baseType: !58)
!193 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "unzFile", file: !86, line: 70, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidp", file: !25, line: 410, baseType: !5)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!197 = !{!0, !198}
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1584, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 56, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 7)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 648, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 81)
!206 = !{i32 7, !"Dwarf Version", i32 5}
!207 = !{i32 2, !"Debug Info Version", i32 3}
!208 = !{i32 1, !"wchar_size", i32 4}
!209 = !{i32 8, !"PIC Level", i32 2}
!210 = !{i32 7, !"PIE Level", i32 2}
!211 = !{i32 7, !"uwtable", i32 2}
!212 = !{i32 7, !"frame-pointer", i32 2}
!213 = !{!"clang version 16.0.0"}
!214 = distinct !DISubprogram(name: "unzStringFileNameCompare", scope: !3, file: !3, line: 390, type: !215, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{!28, !69, !69, !28}
!217 = !{}
!218 = !DILocalVariable(name: "fileName1", arg: 1, scope: !214, file: !3, line: 390, type: !69)
!219 = !DILocation(line: 390, column: 59, scope: !214)
!220 = !DILocalVariable(name: "fileName2", arg: 2, scope: !214, file: !3, line: 391, type: !69)
!221 = !DILocation(line: 391, column: 63, scope: !214)
!222 = !DILocalVariable(name: "iCaseSensitivity", arg: 3, scope: !214, file: !3, line: 392, type: !28)
!223 = !DILocation(line: 392, column: 54, scope: !214)
!224 = !DILocation(line: 395, column: 9, scope: !225)
!225 = distinct !DILexicalBlock(scope: !214, file: !3, line: 395, column: 9)
!226 = !DILocation(line: 395, column: 25, scope: !225)
!227 = !DILocation(line: 395, column: 9, scope: !214)
!228 = !DILocation(line: 396, column: 25, scope: !225)
!229 = !DILocation(line: 396, column: 9, scope: !225)
!230 = !DILocation(line: 398, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !214, file: !3, line: 398, column: 9)
!232 = !DILocation(line: 398, column: 25, scope: !231)
!233 = !DILocation(line: 398, column: 9, scope: !214)
!234 = !DILocation(line: 399, column: 23, scope: !231)
!235 = !DILocation(line: 399, column: 33, scope: !231)
!236 = !DILocation(line: 399, column: 16, scope: !231)
!237 = !DILocation(line: 399, column: 9, scope: !231)
!238 = !DILocation(line: 401, column: 40, scope: !214)
!239 = !DILocation(line: 401, column: 50, scope: !214)
!240 = !DILocation(line: 401, column: 12, scope: !214)
!241 = !DILocation(line: 401, column: 5, scope: !214)
!242 = !DILocation(line: 402, column: 1, scope: !214)
!243 = distinct !DISubprogram(name: "strcmpcasenosensitive_internal", scope: !3, file: !3, line: 349, type: !244, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!244 = !DISubroutineType(types: !245)
!245 = !{!28, !69, !69}
!246 = !DILocalVariable(name: "fileName1", arg: 1, scope: !243, file: !3, line: 349, type: !69)
!247 = !DILocation(line: 349, column: 55, scope: !243)
!248 = !DILocalVariable(name: "fileName2", arg: 2, scope: !243, file: !3, line: 349, type: !69)
!249 = !DILocation(line: 349, column: 78, scope: !243)
!250 = !DILocation(line: 351, column: 5, scope: !243)
!251 = !DILocalVariable(name: "c1", scope: !252, file: !3, line: 353, type: !71)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 352, column: 5)
!253 = distinct !DILexicalBlock(scope: !254, file: !3, line: 351, column: 5)
!254 = distinct !DILexicalBlock(scope: !243, file: !3, line: 351, column: 5)
!255 = !DILocation(line: 353, column: 14, scope: !252)
!256 = !DILocation(line: 353, column: 28, scope: !252)
!257 = !DILocation(line: 353, column: 17, scope: !252)
!258 = !DILocalVariable(name: "c2", scope: !252, file: !3, line: 354, type: !71)
!259 = !DILocation(line: 354, column: 14, scope: !252)
!260 = !DILocation(line: 354, column: 28, scope: !252)
!261 = !DILocation(line: 354, column: 17, scope: !252)
!262 = !DILocation(line: 355, column: 14, scope: !263)
!263 = distinct !DILexicalBlock(scope: !252, file: !3, line: 355, column: 13)
!264 = !DILocation(line: 355, column: 16, scope: !263)
!265 = !DILocation(line: 355, column: 23, scope: !263)
!266 = !DILocation(line: 355, column: 27, scope: !263)
!267 = !DILocation(line: 355, column: 29, scope: !263)
!268 = !DILocation(line: 355, column: 13, scope: !252)
!269 = !DILocation(line: 356, column: 16, scope: !263)
!270 = !DILocation(line: 356, column: 13, scope: !263)
!271 = !DILocation(line: 357, column: 14, scope: !272)
!272 = distinct !DILexicalBlock(scope: !252, file: !3, line: 357, column: 13)
!273 = !DILocation(line: 357, column: 16, scope: !272)
!274 = !DILocation(line: 357, column: 23, scope: !272)
!275 = !DILocation(line: 357, column: 27, scope: !272)
!276 = !DILocation(line: 357, column: 29, scope: !272)
!277 = !DILocation(line: 357, column: 13, scope: !252)
!278 = !DILocation(line: 358, column: 16, scope: !272)
!279 = !DILocation(line: 358, column: 13, scope: !272)
!280 = !DILocation(line: 359, column: 13, scope: !281)
!281 = distinct !DILexicalBlock(scope: !252, file: !3, line: 359, column: 13)
!282 = !DILocation(line: 359, column: 15, scope: !281)
!283 = !DILocation(line: 359, column: 13, scope: !252)
!284 = !DILocation(line: 360, column: 22, scope: !281)
!285 = !DILocation(line: 360, column: 24, scope: !281)
!286 = !DILocation(line: 360, column: 21, scope: !281)
!287 = !DILocation(line: 360, column: 13, scope: !281)
!288 = !DILocation(line: 361, column: 13, scope: !289)
!289 = distinct !DILexicalBlock(scope: !252, file: !3, line: 361, column: 13)
!290 = !DILocation(line: 361, column: 15, scope: !289)
!291 = !DILocation(line: 361, column: 13, scope: !252)
!292 = !DILocation(line: 362, column: 13, scope: !289)
!293 = !DILocation(line: 363, column: 13, scope: !294)
!294 = distinct !DILexicalBlock(scope: !252, file: !3, line: 363, column: 13)
!295 = !DILocation(line: 363, column: 16, scope: !294)
!296 = !DILocation(line: 363, column: 15, scope: !294)
!297 = !DILocation(line: 363, column: 13, scope: !252)
!298 = !DILocation(line: 364, column: 13, scope: !294)
!299 = !DILocation(line: 365, column: 13, scope: !300)
!300 = distinct !DILexicalBlock(scope: !252, file: !3, line: 365, column: 13)
!301 = !DILocation(line: 365, column: 16, scope: !300)
!302 = !DILocation(line: 365, column: 15, scope: !300)
!303 = !DILocation(line: 365, column: 13, scope: !252)
!304 = !DILocation(line: 366, column: 13, scope: !300)
!305 = !DILocation(line: 351, column: 5, scope: !253)
!306 = distinct !{!306, !307, !308}
!307 = !DILocation(line: 351, column: 5, scope: !254)
!308 = !DILocation(line: 367, column: 5, scope: !254)
!309 = !DILocation(line: 368, column: 1, scope: !243)
!310 = distinct !DISubprogram(name: "unzOpen2", scope: !3, file: !3, line: 765, type: !311, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!311 = !DISubroutineType(types: !312)
!312 = !{!194, !69, !313}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "zlib_filefunc_def", file: !12, line: 176, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zlib_filefunc_def_s", file: !12, line: 165, size: 576, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "zopen_file", scope: !315, file: !12, line: 167, baseType: !65, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "zread_file", scope: !315, file: !12, line: 168, baseType: !30, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "zwrite_file", scope: !315, file: !12, line: 169, baseType: !37, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "zflush_file", scope: !315, file: !12, line: 170, baseType: !42, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "ztell_file", scope: !315, file: !12, line: 171, baseType: !73, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "zseek_file", scope: !315, file: !12, line: 172, baseType: !78, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "zclose_file", scope: !315, file: !12, line: 173, baseType: !60, size: 64, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "zerror_file", scope: !315, file: !12, line: 174, baseType: !62, size: 64, offset: 448)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !315, file: !12, line: 175, baseType: !24, size: 64, offset: 512)
!326 = !DILocalVariable(name: "path", arg: 1, scope: !310, file: !3, line: 765, type: !69)
!327 = !DILocation(line: 765, column: 46, scope: !310)
!328 = !DILocalVariable(name: "pzlib_filefunc32_def", arg: 2, scope: !310, file: !3, line: 766, type: !313)
!329 = !DILocation(line: 766, column: 60, scope: !310)
!330 = !DILocation(line: 768, column: 9, scope: !331)
!331 = distinct !DILexicalBlock(scope: !310, file: !3, line: 768, column: 9)
!332 = !DILocation(line: 768, column: 30, scope: !331)
!333 = !DILocation(line: 768, column: 9, scope: !310)
!334 = !DILocalVariable(name: "zlib_filefunc64_32_def_fill", scope: !335, file: !3, line: 770, type: !11)
!335 = distinct !DILexicalBlock(scope: !331, file: !3, line: 769, column: 5)
!336 = !DILocation(line: 770, column: 32, scope: !335)
!337 = !DILocation(line: 771, column: 82, scope: !335)
!338 = !DILocation(line: 771, column: 9, scope: !335)
!339 = !DILocation(line: 772, column: 32, scope: !335)
!340 = !DILocation(line: 772, column: 16, scope: !335)
!341 = !DILocation(line: 772, column: 9, scope: !335)
!342 = !DILocation(line: 775, column: 32, scope: !331)
!343 = !DILocation(line: 775, column: 16, scope: !331)
!344 = !DILocation(line: 775, column: 9, scope: !331)
!345 = !DILocation(line: 776, column: 1, scope: !310)
!346 = distinct !DISubprogram(name: "unzOpenInternal", scope: !3, file: !3, line: 584, type: !347, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!347 = !DISubroutineType(types: !348)
!348 = !{!194, !26, !349, !28}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!350 = !DILocalVariable(name: "path", arg: 1, scope: !346, file: !3, line: 584, type: !26)
!351 = !DILocation(line: 584, column: 44, scope: !346)
!352 = !DILocalVariable(name: "pzlib_filefunc64_32_def", arg: 2, scope: !346, file: !3, line: 585, type: !349)
!353 = !DILocation(line: 585, column: 56, scope: !346)
!354 = !DILocalVariable(name: "is64bitOpenFunction", arg: 3, scope: !346, file: !3, line: 586, type: !28)
!355 = !DILocation(line: 586, column: 36, scope: !346)
!356 = !DILocalVariable(name: "us", scope: !346, file: !3, line: 588, type: !7)
!357 = !DILocation(line: 588, column: 13, scope: !346)
!358 = !DILocalVariable(name: "s", scope: !346, file: !3, line: 589, type: !6)
!359 = !DILocation(line: 589, column: 14, scope: !346)
!360 = !DILocalVariable(name: "central_pos", scope: !346, file: !3, line: 590, type: !51)
!361 = !DILocation(line: 590, column: 14, scope: !346)
!362 = !DILocalVariable(name: "uL", scope: !346, file: !3, line: 591, type: !34)
!363 = !DILocation(line: 591, column: 13, scope: !346)
!364 = !DILocalVariable(name: "number_disk", scope: !346, file: !3, line: 593, type: !34)
!365 = !DILocation(line: 593, column: 11, scope: !346)
!366 = !DILocalVariable(name: "number_disk_with_CD", scope: !346, file: !3, line: 595, type: !34)
!367 = !DILocation(line: 595, column: 11, scope: !346)
!368 = !DILocalVariable(name: "number_entry_CD", scope: !346, file: !3, line: 597, type: !51)
!369 = !DILocation(line: 597, column: 14, scope: !346)
!370 = !DILocalVariable(name: "err", scope: !346, file: !3, line: 601, type: !28)
!371 = !DILocation(line: 601, column: 9, scope: !346)
!372 = !DILocation(line: 603, column: 9, scope: !373)
!373 = distinct !DILexicalBlock(scope: !346, file: !3, line: 603, column: 9)
!374 = !DILocation(line: 603, column: 25, scope: !373)
!375 = !DILocation(line: 603, column: 9, scope: !346)
!376 = !DILocation(line: 604, column: 9, scope: !373)
!377 = !DILocation(line: 606, column: 8, scope: !346)
!378 = !DILocation(line: 606, column: 19, scope: !346)
!379 = !DILocation(line: 606, column: 32, scope: !346)
!380 = !DILocation(line: 607, column: 8, scope: !346)
!381 = !DILocation(line: 607, column: 19, scope: !346)
!382 = !DILocation(line: 607, column: 32, scope: !346)
!383 = !DILocation(line: 608, column: 9, scope: !384)
!384 = distinct !DILexicalBlock(scope: !346, file: !3, line: 608, column: 9)
!385 = !DILocation(line: 608, column: 32, scope: !384)
!386 = !DILocation(line: 608, column: 9, scope: !346)
!387 = !DILocation(line: 609, column: 35, scope: !384)
!388 = !DILocation(line: 609, column: 46, scope: !384)
!389 = !DILocation(line: 609, column: 9, scope: !384)
!390 = !DILocation(line: 611, column: 12, scope: !384)
!391 = !DILocation(line: 611, column: 26, scope: !384)
!392 = !DILocation(line: 611, column: 25, scope: !384)
!393 = !DILocation(line: 612, column: 30, scope: !346)
!394 = !DILocation(line: 612, column: 8, scope: !346)
!395 = !DILocation(line: 612, column: 28, scope: !346)
!396 = !DILocation(line: 616, column: 21, scope: !346)
!397 = !DILocation(line: 616, column: 8, scope: !346)
!398 = !DILocation(line: 616, column: 19, scope: !346)
!399 = !DILocation(line: 620, column: 12, scope: !400)
!400 = distinct !DILexicalBlock(scope: !346, file: !3, line: 620, column: 9)
!401 = !DILocation(line: 620, column: 22, scope: !400)
!402 = !DILocation(line: 620, column: 9, scope: !346)
!403 = !DILocation(line: 621, column: 9, scope: !400)
!404 = !DILocation(line: 623, column: 53, scope: !346)
!405 = !DILocation(line: 623, column: 67, scope: !346)
!406 = !DILocation(line: 623, column: 19, scope: !346)
!407 = !DILocation(line: 623, column: 17, scope: !346)
!408 = !DILocation(line: 624, column: 9, scope: !409)
!409 = distinct !DILexicalBlock(scope: !346, file: !3, line: 624, column: 9)
!410 = !DILocation(line: 624, column: 9, scope: !346)
!411 = !DILocalVariable(name: "uS", scope: !412, file: !3, line: 626, type: !34)
!412 = distinct !DILexicalBlock(scope: !409, file: !3, line: 625, column: 5)
!413 = !DILocation(line: 626, column: 15, scope: !412)
!414 = !DILocalVariable(name: "uL64", scope: !412, file: !3, line: 627, type: !51)
!415 = !DILocation(line: 627, column: 18, scope: !412)
!416 = !DILocation(line: 629, column: 12, scope: !412)
!417 = !DILocation(line: 629, column: 20, scope: !412)
!418 = !DILocation(line: 631, column: 13, scope: !419)
!419 = distinct !DILexicalBlock(scope: !412, file: !3, line: 631, column: 13)
!420 = !DILocation(line: 632, column: 74, scope: !419)
!421 = !DILocation(line: 631, column: 13, scope: !412)
!422 = !DILocation(line: 633, column: 12, scope: !419)
!423 = !DILocation(line: 633, column: 9, scope: !419)
!424 = !DILocation(line: 636, column: 36, scope: !425)
!425 = distinct !DILexicalBlock(scope: !412, file: !3, line: 636, column: 13)
!426 = !DILocation(line: 636, column: 51, scope: !425)
!427 = !DILocation(line: 636, column: 13, scope: !425)
!428 = !DILocation(line: 636, column: 66, scope: !425)
!429 = !DILocation(line: 636, column: 13, scope: !412)
!430 = !DILocation(line: 637, column: 16, scope: !425)
!431 = !DILocation(line: 637, column: 13, scope: !425)
!432 = !DILocation(line: 640, column: 38, scope: !433)
!433 = distinct !DILexicalBlock(scope: !412, file: !3, line: 640, column: 13)
!434 = !DILocation(line: 640, column: 53, scope: !433)
!435 = !DILocation(line: 640, column: 13, scope: !433)
!436 = !DILocation(line: 640, column: 70, scope: !433)
!437 = !DILocation(line: 640, column: 13, scope: !412)
!438 = !DILocation(line: 641, column: 16, scope: !433)
!439 = !DILocation(line: 641, column: 13, scope: !433)
!440 = !DILocation(line: 644, column: 37, scope: !441)
!441 = distinct !DILexicalBlock(scope: !412, file: !3, line: 644, column: 13)
!442 = !DILocation(line: 644, column: 52, scope: !441)
!443 = !DILocation(line: 644, column: 13, scope: !441)
!444 = !DILocation(line: 644, column: 67, scope: !441)
!445 = !DILocation(line: 644, column: 13, scope: !412)
!446 = !DILocation(line: 645, column: 16, scope: !441)
!447 = !DILocation(line: 645, column: 13, scope: !441)
!448 = !DILocation(line: 648, column: 37, scope: !449)
!449 = distinct !DILexicalBlock(scope: !412, file: !3, line: 648, column: 13)
!450 = !DILocation(line: 648, column: 52, scope: !449)
!451 = !DILocation(line: 648, column: 13, scope: !449)
!452 = !DILocation(line: 648, column: 67, scope: !449)
!453 = !DILocation(line: 648, column: 13, scope: !412)
!454 = !DILocation(line: 649, column: 16, scope: !449)
!455 = !DILocation(line: 649, column: 13, scope: !449)
!456 = !DILocation(line: 652, column: 36, scope: !457)
!457 = distinct !DILexicalBlock(scope: !412, file: !3, line: 652, column: 13)
!458 = !DILocation(line: 652, column: 51, scope: !457)
!459 = !DILocation(line: 652, column: 13, scope: !457)
!460 = !DILocation(line: 652, column: 75, scope: !457)
!461 = !DILocation(line: 652, column: 13, scope: !412)
!462 = !DILocation(line: 653, column: 16, scope: !457)
!463 = !DILocation(line: 653, column: 13, scope: !457)
!464 = !DILocation(line: 656, column: 36, scope: !465)
!465 = distinct !DILexicalBlock(scope: !412, file: !3, line: 656, column: 13)
!466 = !DILocation(line: 656, column: 51, scope: !465)
!467 = !DILocation(line: 656, column: 13, scope: !465)
!468 = !DILocation(line: 656, column: 83, scope: !465)
!469 = !DILocation(line: 656, column: 13, scope: !412)
!470 = !DILocation(line: 657, column: 16, scope: !465)
!471 = !DILocation(line: 657, column: 13, scope: !465)
!472 = !DILocation(line: 660, column: 38, scope: !473)
!473 = distinct !DILexicalBlock(scope: !412, file: !3, line: 660, column: 13)
!474 = !DILocation(line: 660, column: 53, scope: !473)
!475 = !DILocation(line: 660, column: 68, scope: !473)
!476 = !DILocation(line: 660, column: 71, scope: !473)
!477 = !DILocation(line: 660, column: 13, scope: !473)
!478 = !DILocation(line: 660, column: 84, scope: !473)
!479 = !DILocation(line: 660, column: 13, scope: !412)
!480 = !DILocation(line: 661, column: 16, scope: !473)
!481 = !DILocation(line: 661, column: 13, scope: !473)
!482 = !DILocation(line: 664, column: 38, scope: !483)
!483 = distinct !DILexicalBlock(scope: !412, file: !3, line: 664, column: 13)
!484 = !DILocation(line: 664, column: 53, scope: !483)
!485 = !DILocation(line: 664, column: 13, scope: !483)
!486 = !DILocation(line: 664, column: 81, scope: !483)
!487 = !DILocation(line: 664, column: 13, scope: !412)
!488 = !DILocation(line: 665, column: 16, scope: !483)
!489 = !DILocation(line: 665, column: 13, scope: !483)
!490 = !DILocation(line: 667, column: 14, scope: !491)
!491 = distinct !DILexicalBlock(scope: !412, file: !3, line: 667, column: 13)
!492 = !DILocation(line: 667, column: 34, scope: !491)
!493 = !DILocation(line: 667, column: 37, scope: !491)
!494 = !DILocation(line: 667, column: 29, scope: !491)
!495 = !DILocation(line: 667, column: 51, scope: !491)
!496 = !DILocation(line: 668, column: 14, scope: !491)
!497 = !DILocation(line: 668, column: 33, scope: !491)
!498 = !DILocation(line: 668, column: 38, scope: !491)
!499 = !DILocation(line: 669, column: 14, scope: !491)
!500 = !DILocation(line: 669, column: 25, scope: !491)
!501 = !DILocation(line: 667, column: 13, scope: !412)
!502 = !DILocation(line: 670, column: 16, scope: !491)
!503 = !DILocation(line: 670, column: 13, scope: !491)
!504 = !DILocation(line: 673, column: 38, scope: !505)
!505 = distinct !DILexicalBlock(scope: !412, file: !3, line: 673, column: 13)
!506 = !DILocation(line: 673, column: 53, scope: !505)
!507 = !DILocation(line: 673, column: 68, scope: !505)
!508 = !DILocation(line: 673, column: 13, scope: !505)
!509 = !DILocation(line: 673, column: 85, scope: !505)
!510 = !DILocation(line: 673, column: 13, scope: !412)
!511 = !DILocation(line: 674, column: 16, scope: !505)
!512 = !DILocation(line: 674, column: 13, scope: !505)
!513 = !DILocation(line: 678, column: 38, scope: !514)
!514 = distinct !DILexicalBlock(scope: !412, file: !3, line: 678, column: 13)
!515 = !DILocation(line: 678, column: 53, scope: !514)
!516 = !DILocation(line: 678, column: 68, scope: !514)
!517 = !DILocation(line: 678, column: 13, scope: !514)
!518 = !DILocation(line: 678, column: 87, scope: !514)
!519 = !DILocation(line: 678, column: 13, scope: !412)
!520 = !DILocation(line: 679, column: 16, scope: !514)
!521 = !DILocation(line: 679, column: 13, scope: !514)
!522 = !DILocation(line: 681, column: 12, scope: !412)
!523 = !DILocation(line: 681, column: 15, scope: !412)
!524 = !DILocation(line: 681, column: 28, scope: !412)
!525 = !DILocation(line: 682, column: 5, scope: !412)
!526 = !DILocation(line: 685, column: 55, scope: !527)
!527 = distinct !DILexicalBlock(scope: !409, file: !3, line: 684, column: 5)
!528 = !DILocation(line: 685, column: 69, scope: !527)
!529 = !DILocation(line: 685, column: 23, scope: !527)
!530 = !DILocation(line: 685, column: 21, scope: !527)
!531 = !DILocation(line: 686, column: 13, scope: !532)
!532 = distinct !DILexicalBlock(scope: !527, file: !3, line: 686, column: 13)
!533 = !DILocation(line: 686, column: 24, scope: !532)
!534 = !DILocation(line: 686, column: 13, scope: !527)
!535 = !DILocation(line: 687, column: 16, scope: !532)
!536 = !DILocation(line: 687, column: 13, scope: !532)
!537 = !DILocation(line: 689, column: 12, scope: !527)
!538 = !DILocation(line: 689, column: 20, scope: !527)
!539 = !DILocation(line: 691, column: 13, scope: !540)
!540 = distinct !DILexicalBlock(scope: !527, file: !3, line: 691, column: 13)
!541 = !DILocation(line: 692, column: 76, scope: !540)
!542 = !DILocation(line: 691, column: 13, scope: !527)
!543 = !DILocation(line: 693, column: 16, scope: !540)
!544 = !DILocation(line: 693, column: 13, scope: !540)
!545 = !DILocation(line: 696, column: 36, scope: !546)
!546 = distinct !DILexicalBlock(scope: !527, file: !3, line: 696, column: 13)
!547 = !DILocation(line: 696, column: 51, scope: !546)
!548 = !DILocation(line: 696, column: 13, scope: !546)
!549 = !DILocation(line: 696, column: 66, scope: !546)
!550 = !DILocation(line: 696, column: 13, scope: !527)
!551 = !DILocation(line: 697, column: 16, scope: !546)
!552 = !DILocation(line: 697, column: 13, scope: !546)
!553 = !DILocation(line: 700, column: 37, scope: !554)
!554 = distinct !DILexicalBlock(scope: !527, file: !3, line: 700, column: 13)
!555 = !DILocation(line: 700, column: 52, scope: !554)
!556 = !DILocation(line: 700, column: 13, scope: !554)
!557 = !DILocation(line: 700, column: 76, scope: !554)
!558 = !DILocation(line: 700, column: 13, scope: !527)
!559 = !DILocation(line: 701, column: 16, scope: !554)
!560 = !DILocation(line: 701, column: 13, scope: !554)
!561 = !DILocation(line: 704, column: 37, scope: !562)
!562 = distinct !DILexicalBlock(scope: !527, file: !3, line: 704, column: 13)
!563 = !DILocation(line: 704, column: 52, scope: !562)
!564 = !DILocation(line: 704, column: 13, scope: !562)
!565 = !DILocation(line: 704, column: 84, scope: !562)
!566 = !DILocation(line: 704, column: 13, scope: !527)
!567 = !DILocation(line: 705, column: 16, scope: !562)
!568 = !DILocation(line: 705, column: 13, scope: !562)
!569 = !DILocation(line: 708, column: 37, scope: !570)
!570 = distinct !DILexicalBlock(scope: !527, file: !3, line: 708, column: 13)
!571 = !DILocation(line: 708, column: 52, scope: !570)
!572 = !DILocation(line: 708, column: 13, scope: !570)
!573 = !DILocation(line: 708, column: 67, scope: !570)
!574 = !DILocation(line: 708, column: 13, scope: !527)
!575 = !DILocation(line: 709, column: 16, scope: !570)
!576 = !DILocation(line: 709, column: 13, scope: !570)
!577 = !DILocation(line: 710, column: 30, scope: !527)
!578 = !DILocation(line: 710, column: 12, scope: !527)
!579 = !DILocation(line: 710, column: 15, scope: !527)
!580 = !DILocation(line: 710, column: 28, scope: !527)
!581 = !DILocation(line: 713, column: 37, scope: !582)
!582 = distinct !DILexicalBlock(scope: !527, file: !3, line: 713, column: 13)
!583 = !DILocation(line: 713, column: 52, scope: !582)
!584 = !DILocation(line: 713, column: 13, scope: !582)
!585 = !DILocation(line: 713, column: 67, scope: !582)
!586 = !DILocation(line: 713, column: 13, scope: !527)
!587 = !DILocation(line: 714, column: 16, scope: !582)
!588 = !DILocation(line: 714, column: 13, scope: !582)
!589 = !DILocation(line: 715, column: 27, scope: !527)
!590 = !DILocation(line: 715, column: 25, scope: !527)
!591 = !DILocation(line: 717, column: 14, scope: !592)
!592 = distinct !DILexicalBlock(scope: !527, file: !3, line: 717, column: 13)
!593 = !DILocation(line: 717, column: 34, scope: !592)
!594 = !DILocation(line: 717, column: 37, scope: !592)
!595 = !DILocation(line: 717, column: 29, scope: !592)
!596 = !DILocation(line: 717, column: 51, scope: !592)
!597 = !DILocation(line: 718, column: 14, scope: !592)
!598 = !DILocation(line: 718, column: 33, scope: !592)
!599 = !DILocation(line: 718, column: 38, scope: !592)
!600 = !DILocation(line: 719, column: 14, scope: !592)
!601 = !DILocation(line: 719, column: 25, scope: !592)
!602 = !DILocation(line: 717, column: 13, scope: !527)
!603 = !DILocation(line: 720, column: 16, scope: !592)
!604 = !DILocation(line: 720, column: 13, scope: !592)
!605 = !DILocation(line: 723, column: 36, scope: !606)
!606 = distinct !DILexicalBlock(scope: !527, file: !3, line: 723, column: 13)
!607 = !DILocation(line: 723, column: 51, scope: !606)
!608 = !DILocation(line: 723, column: 13, scope: !606)
!609 = !DILocation(line: 723, column: 66, scope: !606)
!610 = !DILocation(line: 723, column: 13, scope: !527)
!611 = !DILocation(line: 724, column: 16, scope: !606)
!612 = !DILocation(line: 724, column: 13, scope: !606)
!613 = !DILocation(line: 725, column: 31, scope: !527)
!614 = !DILocation(line: 725, column: 12, scope: !527)
!615 = !DILocation(line: 725, column: 29, scope: !527)
!616 = !DILocation(line: 729, column: 36, scope: !617)
!617 = distinct !DILexicalBlock(scope: !527, file: !3, line: 729, column: 13)
!618 = !DILocation(line: 729, column: 51, scope: !617)
!619 = !DILocation(line: 729, column: 13, scope: !617)
!620 = !DILocation(line: 729, column: 66, scope: !617)
!621 = !DILocation(line: 729, column: 13, scope: !527)
!622 = !DILocation(line: 730, column: 16, scope: !617)
!623 = !DILocation(line: 730, column: 13, scope: !617)
!624 = !DILocation(line: 731, column: 33, scope: !527)
!625 = !DILocation(line: 731, column: 12, scope: !527)
!626 = !DILocation(line: 731, column: 31, scope: !527)
!627 = !DILocation(line: 734, column: 37, scope: !628)
!628 = distinct !DILexicalBlock(scope: !527, file: !3, line: 734, column: 13)
!629 = !DILocation(line: 734, column: 52, scope: !628)
!630 = !DILocation(line: 734, column: 67, scope: !628)
!631 = !DILocation(line: 734, column: 70, scope: !628)
!632 = !DILocation(line: 734, column: 13, scope: !628)
!633 = !DILocation(line: 734, column: 83, scope: !628)
!634 = !DILocation(line: 734, column: 13, scope: !527)
!635 = !DILocation(line: 735, column: 16, scope: !628)
!636 = !DILocation(line: 735, column: 13, scope: !628)
!637 = !DILocation(line: 738, column: 10, scope: !638)
!638 = distinct !DILexicalBlock(scope: !346, file: !3, line: 738, column: 9)
!639 = !DILocation(line: 738, column: 25, scope: !638)
!640 = !DILocation(line: 738, column: 47, scope: !638)
!641 = !DILocation(line: 738, column: 43, scope: !638)
!642 = !DILocation(line: 738, column: 21, scope: !638)
!643 = !DILocation(line: 738, column: 65, scope: !638)
!644 = !DILocation(line: 739, column: 10, scope: !638)
!645 = !DILocation(line: 739, column: 13, scope: !638)
!646 = !DILocation(line: 738, column: 9, scope: !346)
!647 = !DILocation(line: 740, column: 12, scope: !638)
!648 = !DILocation(line: 740, column: 9, scope: !638)
!649 = !DILocation(line: 742, column: 9, scope: !650)
!650 = distinct !DILexicalBlock(scope: !346, file: !3, line: 742, column: 9)
!651 = !DILocation(line: 742, column: 12, scope: !650)
!652 = !DILocation(line: 742, column: 9, scope: !346)
!653 = !DILocation(line: 744, column: 9, scope: !654)
!654 = distinct !DILexicalBlock(scope: !650, file: !3, line: 743, column: 5)
!655 = !DILocation(line: 745, column: 9, scope: !654)
!656 = !DILocation(line: 748, column: 34, scope: !346)
!657 = !DILocation(line: 749, column: 33, scope: !346)
!658 = !DILocation(line: 749, column: 55, scope: !346)
!659 = !DILocation(line: 749, column: 51, scope: !346)
!660 = !DILocation(line: 748, column: 46, scope: !346)
!661 = !DILocation(line: 748, column: 8, scope: !346)
!662 = !DILocation(line: 748, column: 32, scope: !346)
!663 = !DILocation(line: 750, column: 22, scope: !346)
!664 = !DILocation(line: 750, column: 8, scope: !346)
!665 = !DILocation(line: 750, column: 20, scope: !346)
!666 = !DILocation(line: 751, column: 8, scope: !346)
!667 = !DILocation(line: 751, column: 26, scope: !346)
!668 = !DILocation(line: 752, column: 8, scope: !346)
!669 = !DILocation(line: 752, column: 18, scope: !346)
!670 = !DILocation(line: 755, column: 17, scope: !346)
!671 = !DILocation(line: 755, column: 6, scope: !346)
!672 = !DILocation(line: 756, column: 9, scope: !673)
!673 = distinct !DILexicalBlock(scope: !346, file: !3, line: 756, column: 9)
!674 = !DILocation(line: 756, column: 11, scope: !673)
!675 = !DILocation(line: 756, column: 9, scope: !346)
!676 = !DILocation(line: 758, column: 10, scope: !677)
!677 = distinct !DILexicalBlock(scope: !673, file: !3, line: 757, column: 5)
!678 = !DILocation(line: 758, column: 12, scope: !677)
!679 = !DILocation(line: 759, column: 35, scope: !677)
!680 = !DILocation(line: 759, column: 9, scope: !677)
!681 = !DILocation(line: 760, column: 5, scope: !677)
!682 = !DILocation(line: 761, column: 21, scope: !346)
!683 = !DILocation(line: 761, column: 5, scope: !346)
!684 = !DILocation(line: 762, column: 1, scope: !346)
!685 = distinct !DISubprogram(name: "unzOpen2_64", scope: !3, file: !3, line: 778, type: !686, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!686 = !DISubroutineType(types: !687)
!687 = !{!194, !26, !688}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!689 = !DILocalVariable(name: "path", arg: 1, scope: !685, file: !3, line: 778, type: !26)
!690 = !DILocation(line: 778, column: 49, scope: !685)
!691 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 2, scope: !685, file: !3, line: 779, type: !688)
!692 = !DILocation(line: 779, column: 59, scope: !685)
!693 = !DILocation(line: 781, column: 9, scope: !694)
!694 = distinct !DILexicalBlock(scope: !685, file: !3, line: 781, column: 9)
!695 = !DILocation(line: 781, column: 28, scope: !694)
!696 = !DILocation(line: 781, column: 9, scope: !685)
!697 = !DILocalVariable(name: "zlib_filefunc64_32_def_fill", scope: !698, file: !3, line: 783, type: !11)
!698 = distinct !DILexicalBlock(scope: !694, file: !3, line: 782, column: 5)
!699 = !DILocation(line: 783, column: 32, scope: !698)
!700 = !DILocation(line: 784, column: 37, scope: !698)
!701 = !DILocation(line: 784, column: 53, scope: !698)
!702 = !DILocation(line: 784, column: 52, scope: !698)
!703 = !DILocation(line: 785, column: 37, scope: !698)
!704 = !DILocation(line: 785, column: 50, scope: !698)
!705 = !DILocation(line: 786, column: 37, scope: !698)
!706 = !DILocation(line: 786, column: 50, scope: !698)
!707 = !DILocation(line: 787, column: 32, scope: !698)
!708 = !DILocation(line: 787, column: 16, scope: !698)
!709 = !DILocation(line: 787, column: 9, scope: !698)
!710 = !DILocation(line: 790, column: 32, scope: !694)
!711 = !DILocation(line: 790, column: 16, scope: !694)
!712 = !DILocation(line: 790, column: 9, scope: !694)
!713 = !DILocation(line: 791, column: 1, scope: !685)
!714 = distinct !DISubprogram(name: "unzOpen", scope: !3, file: !3, line: 793, type: !715, scopeLine: 794, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!715 = !DISubroutineType(types: !716)
!716 = !{!194, !69}
!717 = !DILocalVariable(name: "path", arg: 1, scope: !714, file: !3, line: 793, type: !69)
!718 = !DILocation(line: 793, column: 45, scope: !714)
!719 = !DILocation(line: 795, column: 28, scope: !714)
!720 = !DILocation(line: 795, column: 12, scope: !714)
!721 = !DILocation(line: 795, column: 5, scope: !714)
!722 = distinct !DISubprogram(name: "unzOpen64", scope: !3, file: !3, line: 798, type: !723, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!723 = !DISubroutineType(types: !724)
!724 = !{!194, !26}
!725 = !DILocalVariable(name: "path", arg: 1, scope: !722, file: !3, line: 798, type: !26)
!726 = !DILocation(line: 798, column: 47, scope: !722)
!727 = !DILocation(line: 800, column: 28, scope: !722)
!728 = !DILocation(line: 800, column: 12, scope: !722)
!729 = !DILocation(line: 800, column: 5, scope: !722)
!730 = distinct !DISubprogram(name: "unzClose", scope: !3, file: !3, line: 808, type: !731, scopeLine: 809, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!731 = !DISubroutineType(types: !732)
!732 = !{!28, !194}
!733 = !DILocalVariable(name: "file", arg: 1, scope: !730, file: !3, line: 808, type: !194)
!734 = !DILocation(line: 808, column: 38, scope: !730)
!735 = !DILocalVariable(name: "s", scope: !730, file: !3, line: 810, type: !6)
!736 = !DILocation(line: 810, column: 14, scope: !730)
!737 = !DILocation(line: 811, column: 9, scope: !738)
!738 = distinct !DILexicalBlock(scope: !730, file: !3, line: 811, column: 9)
!739 = !DILocation(line: 811, column: 13, scope: !738)
!740 = !DILocation(line: 811, column: 9, scope: !730)
!741 = !DILocation(line: 812, column: 9, scope: !738)
!742 = !DILocation(line: 813, column: 17, scope: !730)
!743 = !DILocation(line: 813, column: 6, scope: !730)
!744 = !DILocation(line: 815, column: 9, scope: !745)
!745 = distinct !DILexicalBlock(scope: !730, file: !3, line: 815, column: 9)
!746 = !DILocation(line: 815, column: 12, scope: !745)
!747 = !DILocation(line: 815, column: 29, scope: !745)
!748 = !DILocation(line: 815, column: 9, scope: !730)
!749 = !DILocation(line: 816, column: 29, scope: !745)
!750 = !DILocation(line: 816, column: 9, scope: !745)
!751 = !DILocation(line: 818, column: 5, scope: !730)
!752 = !DILocation(line: 819, column: 5, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !3, line: 819, column: 5)
!754 = distinct !DILexicalBlock(scope: !730, file: !3, line: 819, column: 5)
!755 = !DILocation(line: 819, column: 5, scope: !754)
!756 = !DILocation(line: 820, column: 5, scope: !730)
!757 = !DILocation(line: 821, column: 1, scope: !730)
!758 = distinct !DISubprogram(name: "unzCloseCurrentFile", scope: !3, file: !3, line: 2004, type: !731, scopeLine: 2005, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!759 = !DILocalVariable(name: "file", arg: 1, scope: !758, file: !3, line: 2004, type: !194)
!760 = !DILocation(line: 2004, column: 49, scope: !758)
!761 = !DILocalVariable(name: "err", scope: !758, file: !3, line: 2006, type: !28)
!762 = !DILocation(line: 2006, column: 9, scope: !758)
!763 = !DILocalVariable(name: "s", scope: !758, file: !3, line: 2008, type: !6)
!764 = !DILocation(line: 2008, column: 14, scope: !758)
!765 = !DILocalVariable(name: "pfile_in_zip_read_info", scope: !758, file: !3, line: 2009, type: !134)
!766 = !DILocation(line: 2009, column: 32, scope: !758)
!767 = !DILocation(line: 2010, column: 9, scope: !768)
!768 = distinct !DILexicalBlock(scope: !758, file: !3, line: 2010, column: 9)
!769 = !DILocation(line: 2010, column: 13, scope: !768)
!770 = !DILocation(line: 2010, column: 9, scope: !758)
!771 = !DILocation(line: 2011, column: 9, scope: !768)
!772 = !DILocation(line: 2012, column: 17, scope: !758)
!773 = !DILocation(line: 2012, column: 6, scope: !758)
!774 = !DILocation(line: 2013, column: 28, scope: !758)
!775 = !DILocation(line: 2013, column: 31, scope: !758)
!776 = !DILocation(line: 2013, column: 27, scope: !758)
!777 = !DILocation(line: 2015, column: 9, scope: !778)
!778 = distinct !DILexicalBlock(scope: !758, file: !3, line: 2015, column: 9)
!779 = !DILocation(line: 2015, column: 31, scope: !778)
!780 = !DILocation(line: 2015, column: 9, scope: !758)
!781 = !DILocation(line: 2016, column: 9, scope: !778)
!782 = !DILocation(line: 2019, column: 10, scope: !783)
!783 = distinct !DILexicalBlock(scope: !758, file: !3, line: 2019, column: 9)
!784 = !DILocation(line: 2019, column: 34, scope: !783)
!785 = !DILocation(line: 2019, column: 57, scope: !783)
!786 = !DILocation(line: 2019, column: 63, scope: !783)
!787 = !DILocation(line: 2020, column: 11, scope: !783)
!788 = !DILocation(line: 2020, column: 35, scope: !783)
!789 = !DILocation(line: 2019, column: 9, scope: !758)
!790 = !DILocation(line: 2022, column: 13, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 2022, column: 13)
!792 = distinct !DILexicalBlock(scope: !783, file: !3, line: 2021, column: 5)
!793 = !DILocation(line: 2022, column: 37, scope: !791)
!794 = !DILocation(line: 2022, column: 46, scope: !791)
!795 = !DILocation(line: 2022, column: 70, scope: !791)
!796 = !DILocation(line: 2022, column: 43, scope: !791)
!797 = !DILocation(line: 2022, column: 13, scope: !792)
!798 = !DILocation(line: 2023, column: 16, scope: !791)
!799 = !DILocation(line: 2023, column: 13, scope: !791)
!800 = !DILocation(line: 2024, column: 5, scope: !792)
!801 = !DILocation(line: 2027, column: 5, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 2027, column: 5)
!803 = distinct !DILexicalBlock(scope: !758, file: !3, line: 2027, column: 5)
!804 = !DILocation(line: 2027, column: 5, scope: !803)
!805 = !DILocation(line: 2028, column: 5, scope: !758)
!806 = !DILocation(line: 2028, column: 29, scope: !758)
!807 = !DILocation(line: 2028, column: 41, scope: !758)
!808 = !DILocation(line: 2029, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !758, file: !3, line: 2029, column: 9)
!810 = !DILocation(line: 2029, column: 33, scope: !809)
!811 = !DILocation(line: 2029, column: 52, scope: !809)
!812 = !DILocation(line: 2029, column: 9, scope: !758)
!813 = !DILocation(line: 2030, column: 21, scope: !809)
!814 = !DILocation(line: 2030, column: 45, scope: !809)
!815 = !DILocation(line: 2030, column: 9, scope: !809)
!816 = !DILocation(line: 2037, column: 5, scope: !758)
!817 = !DILocation(line: 2037, column: 29, scope: !758)
!818 = !DILocation(line: 2037, column: 48, scope: !758)
!819 = !DILocation(line: 2038, column: 5, scope: !820)
!820 = distinct !DILexicalBlock(scope: !821, file: !3, line: 2038, column: 5)
!821 = distinct !DILexicalBlock(scope: !758, file: !3, line: 2038, column: 5)
!822 = !DILocation(line: 2038, column: 5, scope: !821)
!823 = !DILocation(line: 2040, column: 5, scope: !758)
!824 = !DILocation(line: 2040, column: 8, scope: !758)
!825 = !DILocation(line: 2040, column: 25, scope: !758)
!826 = !DILocation(line: 2042, column: 12, scope: !758)
!827 = !DILocation(line: 2042, column: 5, scope: !758)
!828 = !DILocation(line: 2043, column: 1, scope: !758)
!829 = distinct !DISubprogram(name: "unzGetGlobalInfo64", scope: !3, file: !3, line: 828, type: !830, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!830 = !DISubroutineType(types: !831)
!831 = !{!28, !194, !832}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!833 = !DILocalVariable(name: "file", arg: 1, scope: !829, file: !3, line: 828, type: !194)
!834 = !DILocation(line: 828, column: 48, scope: !829)
!835 = !DILocalVariable(name: "pglobal_info", arg: 2, scope: !829, file: !3, line: 828, type: !832)
!836 = !DILocation(line: 828, column: 73, scope: !829)
!837 = !DILocalVariable(name: "s", scope: !829, file: !3, line: 830, type: !6)
!838 = !DILocation(line: 830, column: 14, scope: !829)
!839 = !DILocation(line: 831, column: 9, scope: !840)
!840 = distinct !DILexicalBlock(scope: !829, file: !3, line: 831, column: 9)
!841 = !DILocation(line: 831, column: 13, scope: !840)
!842 = !DILocation(line: 831, column: 9, scope: !829)
!843 = !DILocation(line: 832, column: 9, scope: !840)
!844 = !DILocation(line: 833, column: 17, scope: !829)
!845 = !DILocation(line: 833, column: 6, scope: !829)
!846 = !DILocation(line: 834, column: 6, scope: !829)
!847 = !DILocation(line: 834, column: 19, scope: !829)
!848 = !DILocation(line: 834, column: 22, scope: !829)
!849 = !DILocation(line: 835, column: 5, scope: !829)
!850 = !DILocation(line: 836, column: 1, scope: !829)
!851 = distinct !DISubprogram(name: "unzGetGlobalInfo", scope: !3, file: !3, line: 838, type: !852, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!852 = !DISubroutineType(types: !853)
!853 = !{!28, !194, !854}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "unz_global_info", file: !86, line: 108, baseType: !856)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unz_global_info_s", file: !86, line: 103, size: 128, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "number_entry", scope: !856, file: !86, line: 105, baseType: !34, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "size_comment", scope: !856, file: !86, line: 107, baseType: !34, size: 64, offset: 64)
!860 = !DILocalVariable(name: "file", arg: 1, scope: !851, file: !3, line: 838, type: !194)
!861 = !DILocation(line: 838, column: 46, scope: !851)
!862 = !DILocalVariable(name: "pglobal_info32", arg: 2, scope: !851, file: !3, line: 838, type: !854)
!863 = !DILocation(line: 838, column: 69, scope: !851)
!864 = !DILocalVariable(name: "s", scope: !851, file: !3, line: 840, type: !6)
!865 = !DILocation(line: 840, column: 14, scope: !851)
!866 = !DILocation(line: 841, column: 9, scope: !867)
!867 = distinct !DILexicalBlock(scope: !851, file: !3, line: 841, column: 9)
!868 = !DILocation(line: 841, column: 13, scope: !867)
!869 = !DILocation(line: 841, column: 9, scope: !851)
!870 = !DILocation(line: 842, column: 9, scope: !867)
!871 = !DILocation(line: 843, column: 17, scope: !851)
!872 = !DILocation(line: 843, column: 6, scope: !851)
!873 = !DILocation(line: 845, column: 43, scope: !851)
!874 = !DILocation(line: 845, column: 46, scope: !851)
!875 = !DILocation(line: 845, column: 49, scope: !851)
!876 = !DILocation(line: 845, column: 5, scope: !851)
!877 = !DILocation(line: 845, column: 21, scope: !851)
!878 = !DILocation(line: 845, column: 34, scope: !851)
!879 = !DILocation(line: 846, column: 36, scope: !851)
!880 = !DILocation(line: 846, column: 39, scope: !851)
!881 = !DILocation(line: 846, column: 42, scope: !851)
!882 = !DILocation(line: 846, column: 5, scope: !851)
!883 = !DILocation(line: 846, column: 21, scope: !851)
!884 = !DILocation(line: 846, column: 34, scope: !851)
!885 = !DILocation(line: 847, column: 5, scope: !851)
!886 = !DILocation(line: 848, column: 1, scope: !851)
!887 = distinct !DISubprogram(name: "unzGetCurrentFileInfo64", scope: !3, file: !3, line: 1124, type: !888, scopeLine: 1129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!888 = !DISubroutineType(types: !889)
!889 = !{!28, !194, !890, !139, !34, !5, !34, !139, !34}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!891 = !DILocalVariable(name: "file", arg: 1, scope: !887, file: !3, line: 1124, type: !194)
!892 = !DILocation(line: 1124, column: 53, scope: !887)
!893 = !DILocalVariable(name: "pfile_info", arg: 2, scope: !887, file: !3, line: 1125, type: !890)
!894 = !DILocation(line: 1125, column: 61, scope: !887)
!895 = !DILocalVariable(name: "szFileName", arg: 3, scope: !887, file: !3, line: 1126, type: !139)
!896 = !DILocation(line: 1126, column: 50, scope: !887)
!897 = !DILocalVariable(name: "fileNameBufferSize", arg: 4, scope: !887, file: !3, line: 1126, type: !34)
!898 = !DILocation(line: 1126, column: 68, scope: !887)
!899 = !DILocalVariable(name: "extraField", arg: 5, scope: !887, file: !3, line: 1127, type: !5)
!900 = !DILocation(line: 1127, column: 49, scope: !887)
!901 = !DILocalVariable(name: "extraFieldBufferSize", arg: 6, scope: !887, file: !3, line: 1127, type: !34)
!902 = !DILocation(line: 1127, column: 67, scope: !887)
!903 = !DILocalVariable(name: "szComment", arg: 7, scope: !887, file: !3, line: 1128, type: !139)
!904 = !DILocation(line: 1128, column: 49, scope: !887)
!905 = !DILocalVariable(name: "commentBufferSize", arg: 8, scope: !887, file: !3, line: 1128, type: !34)
!906 = !DILocation(line: 1128, column: 67, scope: !887)
!907 = !DILocation(line: 1130, column: 50, scope: !887)
!908 = !DILocation(line: 1130, column: 55, scope: !887)
!909 = !DILocation(line: 1131, column: 49, scope: !887)
!910 = !DILocation(line: 1131, column: 60, scope: !887)
!911 = !DILocation(line: 1132, column: 49, scope: !887)
!912 = !DILocation(line: 1132, column: 60, scope: !887)
!913 = !DILocation(line: 1133, column: 49, scope: !887)
!914 = !DILocation(line: 1133, column: 59, scope: !887)
!915 = !DILocation(line: 1130, column: 12, scope: !887)
!916 = !DILocation(line: 1130, column: 5, scope: !887)
!917 = distinct !DISubprogram(name: "unz64local_GetCurrentFileInfoInternal", scope: !3, file: !3, line: 879, type: !918, scopeLine: 889, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!918 = !DISubroutineType(types: !919)
!919 = !{!28, !194, !890, !920, !139, !34, !5, !34, !139, !34}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!921 = !DILocalVariable(name: "file", arg: 1, scope: !917, file: !3, line: 879, type: !194)
!922 = !DILocation(line: 879, column: 58, scope: !917)
!923 = !DILocalVariable(name: "pfile_info", arg: 2, scope: !917, file: !3, line: 880, type: !890)
!924 = !DILocation(line: 880, column: 68, scope: !917)
!925 = !DILocalVariable(name: "pfile_info_internal", arg: 3, scope: !917, file: !3, line: 882, type: !920)
!926 = !DILocation(line: 882, column: 52, scope: !917)
!927 = !DILocalVariable(name: "szFileName", arg: 4, scope: !917, file: !3, line: 883, type: !139)
!928 = !DILocation(line: 883, column: 57, scope: !917)
!929 = !DILocalVariable(name: "fileNameBufferSize", arg: 5, scope: !917, file: !3, line: 884, type: !34)
!930 = !DILocation(line: 884, column: 57, scope: !917)
!931 = !DILocalVariable(name: "extraField", arg: 6, scope: !917, file: !3, line: 885, type: !5)
!932 = !DILocation(line: 885, column: 57, scope: !917)
!933 = !DILocalVariable(name: "extraFieldBufferSize", arg: 7, scope: !917, file: !3, line: 886, type: !34)
!934 = !DILocation(line: 886, column: 57, scope: !917)
!935 = !DILocalVariable(name: "szComment", arg: 8, scope: !917, file: !3, line: 887, type: !139)
!936 = !DILocation(line: 887, column: 57, scope: !917)
!937 = !DILocalVariable(name: "commentBufferSize", arg: 9, scope: !917, file: !3, line: 888, type: !34)
!938 = !DILocation(line: 888, column: 57, scope: !917)
!939 = !DILocalVariable(name: "s", scope: !917, file: !3, line: 890, type: !6)
!940 = !DILocation(line: 890, column: 14, scope: !917)
!941 = !DILocalVariable(name: "file_info", scope: !917, file: !3, line: 891, type: !99)
!942 = !DILocation(line: 891, column: 21, scope: !917)
!943 = !DILocalVariable(name: "file_info_internal", scope: !917, file: !3, line: 892, type: !129)
!944 = !DILocation(line: 892, column: 30, scope: !917)
!945 = !DILocalVariable(name: "err", scope: !917, file: !3, line: 893, type: !28)
!946 = !DILocation(line: 893, column: 9, scope: !917)
!947 = !DILocalVariable(name: "uMagic", scope: !917, file: !3, line: 894, type: !34)
!948 = !DILocation(line: 894, column: 11, scope: !917)
!949 = !DILocalVariable(name: "lSeek", scope: !917, file: !3, line: 895, type: !58)
!950 = !DILocation(line: 895, column: 10, scope: !917)
!951 = !DILocalVariable(name: "uL", scope: !917, file: !3, line: 896, type: !34)
!952 = !DILocation(line: 896, column: 11, scope: !917)
!953 = !DILocation(line: 898, column: 9, scope: !954)
!954 = distinct !DILexicalBlock(scope: !917, file: !3, line: 898, column: 9)
!955 = !DILocation(line: 898, column: 13, scope: !954)
!956 = !DILocation(line: 898, column: 9, scope: !917)
!957 = !DILocation(line: 899, column: 9, scope: !954)
!958 = !DILocation(line: 900, column: 17, scope: !917)
!959 = !DILocation(line: 900, column: 6, scope: !917)
!960 = !DILocation(line: 901, column: 9, scope: !961)
!961 = distinct !DILexicalBlock(scope: !917, file: !3, line: 901, column: 9)
!962 = !DILocation(line: 903, column: 38, scope: !961)
!963 = !DILocation(line: 901, column: 9, scope: !917)
!964 = !DILocation(line: 904, column: 12, scope: !961)
!965 = !DILocation(line: 904, column: 9, scope: !961)
!966 = !DILocation(line: 908, column: 9, scope: !967)
!967 = distinct !DILexicalBlock(scope: !917, file: !3, line: 908, column: 9)
!968 = !DILocation(line: 908, column: 12, scope: !967)
!969 = !DILocation(line: 908, column: 9, scope: !917)
!970 = !DILocation(line: 910, column: 33, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !3, line: 910, column: 13)
!972 = distinct !DILexicalBlock(scope: !967, file: !3, line: 909, column: 5)
!973 = !DILocation(line: 910, column: 36, scope: !971)
!974 = !DILocation(line: 910, column: 48, scope: !971)
!975 = !DILocation(line: 910, column: 51, scope: !971)
!976 = !DILocation(line: 910, column: 13, scope: !971)
!977 = !DILocation(line: 910, column: 71, scope: !971)
!978 = !DILocation(line: 910, column: 13, scope: !972)
!979 = !DILocation(line: 911, column: 16, scope: !971)
!980 = !DILocation(line: 911, column: 13, scope: !971)
!981 = !DILocation(line: 912, column: 18, scope: !982)
!982 = distinct !DILexicalBlock(scope: !971, file: !3, line: 912, column: 18)
!983 = !DILocation(line: 912, column: 24, scope: !982)
!984 = !DILocation(line: 912, column: 18, scope: !971)
!985 = !DILocation(line: 913, column: 16, scope: !982)
!986 = !DILocation(line: 913, column: 13, scope: !982)
!987 = !DILocation(line: 914, column: 5, scope: !972)
!988 = !DILocation(line: 916, column: 30, scope: !989)
!989 = distinct !DILexicalBlock(scope: !917, file: !3, line: 916, column: 9)
!990 = !DILocation(line: 916, column: 33, scope: !989)
!991 = !DILocation(line: 916, column: 45, scope: !989)
!992 = !DILocation(line: 916, column: 48, scope: !989)
!993 = !DILocation(line: 916, column: 70, scope: !989)
!994 = !DILocation(line: 916, column: 9, scope: !989)
!995 = !DILocation(line: 916, column: 79, scope: !989)
!996 = !DILocation(line: 916, column: 9, scope: !917)
!997 = !DILocation(line: 917, column: 12, scope: !989)
!998 = !DILocation(line: 917, column: 9, scope: !989)
!999 = !DILocation(line: 919, column: 30, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !917, file: !3, line: 919, column: 9)
!1001 = !DILocation(line: 919, column: 33, scope: !1000)
!1002 = !DILocation(line: 919, column: 45, scope: !1000)
!1003 = !DILocation(line: 919, column: 48, scope: !1000)
!1004 = !DILocation(line: 919, column: 70, scope: !1000)
!1005 = !DILocation(line: 919, column: 9, scope: !1000)
!1006 = !DILocation(line: 919, column: 86, scope: !1000)
!1007 = !DILocation(line: 919, column: 9, scope: !917)
!1008 = !DILocation(line: 920, column: 12, scope: !1000)
!1009 = !DILocation(line: 920, column: 9, scope: !1000)
!1010 = !DILocation(line: 922, column: 30, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !917, file: !3, line: 922, column: 9)
!1012 = !DILocation(line: 922, column: 33, scope: !1011)
!1013 = !DILocation(line: 922, column: 45, scope: !1011)
!1014 = !DILocation(line: 922, column: 48, scope: !1011)
!1015 = !DILocation(line: 922, column: 70, scope: !1011)
!1016 = !DILocation(line: 922, column: 9, scope: !1011)
!1017 = !DILocation(line: 922, column: 76, scope: !1011)
!1018 = !DILocation(line: 922, column: 9, scope: !917)
!1019 = !DILocation(line: 923, column: 12, scope: !1011)
!1020 = !DILocation(line: 923, column: 9, scope: !1011)
!1021 = !DILocation(line: 925, column: 30, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !917, file: !3, line: 925, column: 9)
!1023 = !DILocation(line: 925, column: 33, scope: !1022)
!1024 = !DILocation(line: 925, column: 45, scope: !1022)
!1025 = !DILocation(line: 925, column: 48, scope: !1022)
!1026 = !DILocation(line: 925, column: 70, scope: !1022)
!1027 = !DILocation(line: 925, column: 9, scope: !1022)
!1028 = !DILocation(line: 925, column: 90, scope: !1022)
!1029 = !DILocation(line: 925, column: 9, scope: !917)
!1030 = !DILocation(line: 926, column: 12, scope: !1022)
!1031 = !DILocation(line: 926, column: 9, scope: !1022)
!1032 = !DILocation(line: 928, column: 29, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !917, file: !3, line: 928, column: 9)
!1034 = !DILocation(line: 928, column: 32, scope: !1033)
!1035 = !DILocation(line: 928, column: 44, scope: !1033)
!1036 = !DILocation(line: 928, column: 47, scope: !1033)
!1037 = !DILocation(line: 928, column: 69, scope: !1033)
!1038 = !DILocation(line: 928, column: 9, scope: !1033)
!1039 = !DILocation(line: 928, column: 78, scope: !1033)
!1040 = !DILocation(line: 928, column: 9, scope: !917)
!1041 = !DILocation(line: 929, column: 12, scope: !1033)
!1042 = !DILocation(line: 929, column: 9, scope: !1033)
!1043 = !DILocation(line: 931, column: 43, scope: !917)
!1044 = !DILocation(line: 931, column: 62, scope: !917)
!1045 = !DILocation(line: 931, column: 5, scope: !917)
!1046 = !DILocation(line: 933, column: 29, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !917, file: !3, line: 933, column: 9)
!1048 = !DILocation(line: 933, column: 32, scope: !1047)
!1049 = !DILocation(line: 933, column: 44, scope: !1047)
!1050 = !DILocation(line: 933, column: 47, scope: !1047)
!1051 = !DILocation(line: 933, column: 69, scope: !1047)
!1052 = !DILocation(line: 933, column: 9, scope: !1047)
!1053 = !DILocation(line: 933, column: 74, scope: !1047)
!1054 = !DILocation(line: 933, column: 9, scope: !917)
!1055 = !DILocation(line: 934, column: 12, scope: !1047)
!1056 = !DILocation(line: 934, column: 9, scope: !1047)
!1057 = !DILocation(line: 936, column: 29, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !917, file: !3, line: 936, column: 9)
!1059 = !DILocation(line: 936, column: 32, scope: !1058)
!1060 = !DILocation(line: 936, column: 44, scope: !1058)
!1061 = !DILocation(line: 936, column: 47, scope: !1058)
!1062 = !DILocation(line: 936, column: 9, scope: !1058)
!1063 = !DILocation(line: 936, column: 63, scope: !1058)
!1064 = !DILocation(line: 936, column: 9, scope: !917)
!1065 = !DILocation(line: 937, column: 12, scope: !1058)
!1066 = !DILocation(line: 937, column: 9, scope: !1058)
!1067 = !DILocation(line: 938, column: 33, scope: !917)
!1068 = !DILocation(line: 938, column: 15, scope: !917)
!1069 = !DILocation(line: 938, column: 31, scope: !917)
!1070 = !DILocation(line: 940, column: 29, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !917, file: !3, line: 940, column: 9)
!1072 = !DILocation(line: 940, column: 32, scope: !1071)
!1073 = !DILocation(line: 940, column: 44, scope: !1071)
!1074 = !DILocation(line: 940, column: 47, scope: !1071)
!1075 = !DILocation(line: 940, column: 9, scope: !1071)
!1076 = !DILocation(line: 940, column: 63, scope: !1071)
!1077 = !DILocation(line: 940, column: 9, scope: !917)
!1078 = !DILocation(line: 941, column: 12, scope: !1071)
!1079 = !DILocation(line: 941, column: 9, scope: !1071)
!1080 = !DILocation(line: 942, column: 35, scope: !917)
!1081 = !DILocation(line: 942, column: 15, scope: !917)
!1082 = !DILocation(line: 942, column: 33, scope: !917)
!1083 = !DILocation(line: 944, column: 30, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !917, file: !3, line: 944, column: 9)
!1085 = !DILocation(line: 944, column: 33, scope: !1084)
!1086 = !DILocation(line: 944, column: 45, scope: !1084)
!1087 = !DILocation(line: 944, column: 48, scope: !1084)
!1088 = !DILocation(line: 944, column: 70, scope: !1084)
!1089 = !DILocation(line: 944, column: 9, scope: !1084)
!1090 = !DILocation(line: 944, column: 85, scope: !1084)
!1091 = !DILocation(line: 944, column: 9, scope: !917)
!1092 = !DILocation(line: 945, column: 12, scope: !1084)
!1093 = !DILocation(line: 945, column: 9, scope: !1084)
!1094 = !DILocation(line: 947, column: 30, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !917, file: !3, line: 947, column: 9)
!1096 = !DILocation(line: 947, column: 33, scope: !1095)
!1097 = !DILocation(line: 947, column: 45, scope: !1095)
!1098 = !DILocation(line: 947, column: 48, scope: !1095)
!1099 = !DILocation(line: 947, column: 70, scope: !1095)
!1100 = !DILocation(line: 947, column: 9, scope: !1095)
!1101 = !DILocation(line: 947, column: 87, scope: !1095)
!1102 = !DILocation(line: 947, column: 9, scope: !917)
!1103 = !DILocation(line: 948, column: 12, scope: !1095)
!1104 = !DILocation(line: 948, column: 9, scope: !1095)
!1105 = !DILocation(line: 950, column: 30, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !917, file: !3, line: 950, column: 9)
!1107 = !DILocation(line: 950, column: 33, scope: !1106)
!1108 = !DILocation(line: 950, column: 45, scope: !1106)
!1109 = !DILocation(line: 950, column: 48, scope: !1106)
!1110 = !DILocation(line: 950, column: 70, scope: !1106)
!1111 = !DILocation(line: 950, column: 9, scope: !1106)
!1112 = !DILocation(line: 950, column: 89, scope: !1106)
!1113 = !DILocation(line: 950, column: 9, scope: !917)
!1114 = !DILocation(line: 951, column: 12, scope: !1106)
!1115 = !DILocation(line: 951, column: 9, scope: !1106)
!1116 = !DILocation(line: 953, column: 30, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !917, file: !3, line: 953, column: 9)
!1118 = !DILocation(line: 953, column: 33, scope: !1117)
!1119 = !DILocation(line: 953, column: 45, scope: !1117)
!1120 = !DILocation(line: 953, column: 48, scope: !1117)
!1121 = !DILocation(line: 953, column: 70, scope: !1117)
!1122 = !DILocation(line: 953, column: 9, scope: !1117)
!1123 = !DILocation(line: 953, column: 86, scope: !1117)
!1124 = !DILocation(line: 953, column: 9, scope: !917)
!1125 = !DILocation(line: 954, column: 12, scope: !1117)
!1126 = !DILocation(line: 954, column: 9, scope: !1117)
!1127 = !DILocation(line: 956, column: 30, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !917, file: !3, line: 956, column: 9)
!1129 = !DILocation(line: 956, column: 33, scope: !1128)
!1130 = !DILocation(line: 956, column: 45, scope: !1128)
!1131 = !DILocation(line: 956, column: 48, scope: !1128)
!1132 = !DILocation(line: 956, column: 70, scope: !1128)
!1133 = !DILocation(line: 956, column: 9, scope: !1128)
!1134 = !DILocation(line: 956, column: 83, scope: !1128)
!1135 = !DILocation(line: 956, column: 9, scope: !917)
!1136 = !DILocation(line: 957, column: 12, scope: !1128)
!1137 = !DILocation(line: 957, column: 9, scope: !1128)
!1138 = !DILocation(line: 959, column: 29, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !917, file: !3, line: 959, column: 9)
!1140 = !DILocation(line: 959, column: 32, scope: !1139)
!1141 = !DILocation(line: 959, column: 44, scope: !1139)
!1142 = !DILocation(line: 959, column: 47, scope: !1139)
!1143 = !DILocation(line: 959, column: 69, scope: !1139)
!1144 = !DILocation(line: 959, column: 9, scope: !1139)
!1145 = !DILocation(line: 959, column: 82, scope: !1139)
!1146 = !DILocation(line: 959, column: 9, scope: !917)
!1147 = !DILocation(line: 960, column: 12, scope: !1139)
!1148 = !DILocation(line: 960, column: 9, scope: !1139)
!1149 = !DILocation(line: 963, column: 29, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !917, file: !3, line: 963, column: 9)
!1151 = !DILocation(line: 963, column: 32, scope: !1150)
!1152 = !DILocation(line: 963, column: 44, scope: !1150)
!1153 = !DILocation(line: 963, column: 47, scope: !1150)
!1154 = !DILocation(line: 963, column: 9, scope: !1150)
!1155 = !DILocation(line: 963, column: 63, scope: !1150)
!1156 = !DILocation(line: 963, column: 9, scope: !917)
!1157 = !DILocation(line: 964, column: 12, scope: !1150)
!1158 = !DILocation(line: 964, column: 9, scope: !1150)
!1159 = !DILocation(line: 965, column: 41, scope: !917)
!1160 = !DILocation(line: 965, column: 24, scope: !917)
!1161 = !DILocation(line: 965, column: 39, scope: !917)
!1162 = !DILocation(line: 967, column: 22, scope: !917)
!1163 = !DILocation(line: 967, column: 10, scope: !917)
!1164 = !DILocation(line: 968, column: 10, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !917, file: !3, line: 968, column: 9)
!1166 = !DILocation(line: 968, column: 13, scope: !1165)
!1167 = !DILocation(line: 968, column: 23, scope: !1165)
!1168 = !DILocation(line: 968, column: 27, scope: !1165)
!1169 = !DILocation(line: 968, column: 37, scope: !1165)
!1170 = !DILocation(line: 968, column: 9, scope: !917)
!1171 = !DILocalVariable(name: "uSizeRead", scope: !1172, file: !3, line: 970, type: !34)
!1172 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 969, column: 5)
!1173 = !DILocation(line: 970, column: 15, scope: !1172)
!1174 = !DILocation(line: 971, column: 23, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 971, column: 13)
!1176 = !DILocation(line: 971, column: 37, scope: !1175)
!1177 = !DILocation(line: 971, column: 36, scope: !1175)
!1178 = !DILocation(line: 971, column: 13, scope: !1172)
!1179 = !DILocation(line: 973, column: 15, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 972, column: 9)
!1181 = !DILocation(line: 973, column: 36, scope: !1180)
!1182 = !DILocation(line: 973, column: 25, scope: !1180)
!1183 = !DILocation(line: 973, column: 50, scope: !1180)
!1184 = !DILocation(line: 974, column: 35, scope: !1180)
!1185 = !DILocation(line: 974, column: 23, scope: !1180)
!1186 = !DILocation(line: 975, column: 9, scope: !1180)
!1187 = !DILocation(line: 977, column: 25, scope: !1175)
!1188 = !DILocation(line: 977, column: 23, scope: !1175)
!1189 = !DILocation(line: 979, column: 24, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 979, column: 13)
!1191 = !DILocation(line: 979, column: 37, scope: !1190)
!1192 = !DILocation(line: 979, column: 41, scope: !1190)
!1193 = !DILocation(line: 979, column: 45, scope: !1190)
!1194 = !DILocation(line: 979, column: 63, scope: !1190)
!1195 = !DILocation(line: 979, column: 13, scope: !1172)
!1196 = !DILocation(line: 980, column: 17, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 980, column: 17)
!1198 = !DILocation(line: 980, column: 77, scope: !1197)
!1199 = !DILocation(line: 980, column: 75, scope: !1197)
!1200 = !DILocation(line: 980, column: 17, scope: !1190)
!1201 = !DILocation(line: 981, column: 20, scope: !1197)
!1202 = !DILocation(line: 981, column: 17, scope: !1197)
!1203 = !DILocation(line: 982, column: 18, scope: !1172)
!1204 = !DILocation(line: 982, column: 15, scope: !1172)
!1205 = !DILocation(line: 983, column: 5, scope: !1172)
!1206 = !DILocation(line: 986, column: 10, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !917, file: !3, line: 986, column: 9)
!1208 = !DILocation(line: 986, column: 13, scope: !1207)
!1209 = !DILocation(line: 986, column: 23, scope: !1207)
!1210 = !DILocation(line: 986, column: 27, scope: !1207)
!1211 = !DILocation(line: 986, column: 37, scope: !1207)
!1212 = !DILocation(line: 986, column: 9, scope: !917)
!1213 = !DILocalVariable(name: "uSizeRead", scope: !1214, file: !3, line: 988, type: !51)
!1214 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 987, column: 5)
!1215 = !DILocation(line: 988, column: 18, scope: !1214)
!1216 = !DILocation(line: 989, column: 23, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 989, column: 13)
!1218 = !DILocation(line: 989, column: 39, scope: !1217)
!1219 = !DILocation(line: 989, column: 38, scope: !1217)
!1220 = !DILocation(line: 989, column: 13, scope: !1214)
!1221 = !DILocation(line: 990, column: 35, scope: !1217)
!1222 = !DILocation(line: 990, column: 23, scope: !1217)
!1223 = !DILocation(line: 990, column: 13, scope: !1217)
!1224 = !DILocation(line: 992, column: 25, scope: !1217)
!1225 = !DILocation(line: 992, column: 23, scope: !1217)
!1226 = !DILocation(line: 994, column: 13, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 994, column: 13)
!1228 = !DILocation(line: 994, column: 18, scope: !1227)
!1229 = !DILocation(line: 994, column: 13, scope: !1214)
!1230 = !DILocation(line: 996, column: 17, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 996, column: 17)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 995, column: 9)
!1233 = !DILocation(line: 996, column: 83, scope: !1231)
!1234 = !DILocation(line: 996, column: 17, scope: !1232)
!1235 = !DILocation(line: 997, column: 22, scope: !1231)
!1236 = !DILocation(line: 997, column: 17, scope: !1231)
!1237 = !DILocation(line: 999, column: 20, scope: !1231)
!1238 = !DILocation(line: 1000, column: 9, scope: !1232)
!1239 = !DILocation(line: 1002, column: 24, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 1002, column: 13)
!1241 = !DILocation(line: 1002, column: 39, scope: !1240)
!1242 = !DILocation(line: 1002, column: 43, scope: !1240)
!1243 = !DILocation(line: 1002, column: 47, scope: !1240)
!1244 = !DILocation(line: 1002, column: 67, scope: !1240)
!1245 = !DILocation(line: 1002, column: 13, scope: !1214)
!1246 = !DILocation(line: 1003, column: 17, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1003, column: 17)
!1248 = !DILocation(line: 1003, column: 84, scope: !1247)
!1249 = !DILocation(line: 1003, column: 82, scope: !1247)
!1250 = !DILocation(line: 1003, column: 17, scope: !1240)
!1251 = !DILocation(line: 1004, column: 20, scope: !1247)
!1252 = !DILocation(line: 1004, column: 17, scope: !1247)
!1253 = !DILocation(line: 1006, column: 28, scope: !1214)
!1254 = !DILocation(line: 1006, column: 53, scope: !1214)
!1255 = !DILocation(line: 1006, column: 44, scope: !1214)
!1256 = !DILocation(line: 1006, column: 15, scope: !1214)
!1257 = !DILocation(line: 1007, column: 5, scope: !1214)
!1258 = !DILocation(line: 1009, column: 28, scope: !1207)
!1259 = !DILocation(line: 1009, column: 15, scope: !1207)
!1260 = !DILocation(line: 1012, column: 10, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1012, column: 9)
!1262 = !DILocation(line: 1012, column: 13, scope: !1261)
!1263 = !DILocation(line: 1012, column: 23, scope: !1261)
!1264 = !DILocation(line: 1012, column: 37, scope: !1261)
!1265 = !DILocation(line: 1012, column: 53, scope: !1261)
!1266 = !DILocation(line: 1012, column: 9, scope: !917)
!1267 = !DILocalVariable(name: "acc", scope: !1268, file: !3, line: 1014, type: !34)
!1268 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 1013, column: 5)
!1269 = !DILocation(line: 1014, column: 39, scope: !1268)
!1270 = !DILocation(line: 1017, column: 28, scope: !1268)
!1271 = !DILocation(line: 1017, column: 15, scope: !1268)
!1272 = !DILocation(line: 1019, column: 13, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 1019, column: 13)
!1274 = !DILocation(line: 1019, column: 18, scope: !1273)
!1275 = !DILocation(line: 1019, column: 13, scope: !1268)
!1276 = !DILocation(line: 1021, column: 17, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 1021, column: 17)
!1278 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 1020, column: 9)
!1279 = !DILocation(line: 1021, column: 83, scope: !1277)
!1280 = !DILocation(line: 1021, column: 17, scope: !1278)
!1281 = !DILocation(line: 1022, column: 22, scope: !1277)
!1282 = !DILocation(line: 1022, column: 17, scope: !1277)
!1283 = !DILocation(line: 1024, column: 20, scope: !1277)
!1284 = !DILocation(line: 1025, column: 9, scope: !1278)
!1285 = !DILocation(line: 1027, column: 9, scope: !1268)
!1286 = !DILocation(line: 1027, column: 15, scope: !1268)
!1287 = !DILocation(line: 1027, column: 31, scope: !1268)
!1288 = !DILocation(line: 1027, column: 19, scope: !1268)
!1289 = !DILocalVariable(name: "headerId", scope: !1290, file: !3, line: 1029, type: !34)
!1290 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 1028, column: 9)
!1291 = !DILocation(line: 1029, column: 19, scope: !1290)
!1292 = !DILocalVariable(name: "dataSize", scope: !1290, file: !3, line: 1030, type: !34)
!1293 = !DILocation(line: 1030, column: 55, scope: !1290)
!1294 = !DILocation(line: 1032, column: 38, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1032, column: 17)
!1296 = !DILocation(line: 1032, column: 41, scope: !1295)
!1297 = !DILocation(line: 1032, column: 53, scope: !1295)
!1298 = !DILocation(line: 1032, column: 56, scope: !1295)
!1299 = !DILocation(line: 1032, column: 17, scope: !1295)
!1300 = !DILocation(line: 1032, column: 78, scope: !1295)
!1301 = !DILocation(line: 1032, column: 17, scope: !1290)
!1302 = !DILocation(line: 1033, column: 20, scope: !1295)
!1303 = !DILocation(line: 1033, column: 17, scope: !1295)
!1304 = !DILocation(line: 1035, column: 38, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1035, column: 17)
!1306 = !DILocation(line: 1035, column: 41, scope: !1305)
!1307 = !DILocation(line: 1035, column: 53, scope: !1305)
!1308 = !DILocation(line: 1035, column: 56, scope: !1305)
!1309 = !DILocation(line: 1035, column: 17, scope: !1305)
!1310 = !DILocation(line: 1035, column: 78, scope: !1305)
!1311 = !DILocation(line: 1035, column: 17, scope: !1290)
!1312 = !DILocation(line: 1036, column: 20, scope: !1305)
!1313 = !DILocation(line: 1036, column: 17, scope: !1305)
!1314 = !DILocation(line: 1039, column: 17, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1039, column: 17)
!1316 = !DILocation(line: 1039, column: 26, scope: !1315)
!1317 = !DILocation(line: 1039, column: 17, scope: !1290)
!1318 = !DILocalVariable(name: "uL", scope: !1319, file: !3, line: 1041, type: !34)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 1040, column: 13)
!1320 = !DILocation(line: 1041, column: 63, scope: !1319)
!1321 = !DILocation(line: 1043, column: 78, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 1043, column: 68)
!1323 = !DILocation(line: 1043, column: 96, scope: !1322)
!1324 = !DILocation(line: 1043, column: 68, scope: !1319)
!1325 = !DILocation(line: 1045, column: 99, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 1045, column: 77)
!1327 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 1044, column: 65)
!1328 = !DILocation(line: 1045, column: 102, scope: !1326)
!1329 = !DILocation(line: 1045, column: 114, scope: !1326)
!1330 = !DILocation(line: 1045, column: 117, scope: !1326)
!1331 = !DILocation(line: 1045, column: 139, scope: !1326)
!1332 = !DILocation(line: 1045, column: 77, scope: !1326)
!1333 = !DILocation(line: 1045, column: 158, scope: !1326)
!1334 = !DILocation(line: 1045, column: 77, scope: !1327)
!1335 = !DILocation(line: 1046, column: 92, scope: !1326)
!1336 = !DILocation(line: 1046, column: 89, scope: !1326)
!1337 = !DILocation(line: 1047, column: 65, scope: !1327)
!1338 = !DILocation(line: 1049, column: 78, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 1049, column: 68)
!1340 = !DILocation(line: 1049, column: 94, scope: !1339)
!1341 = !DILocation(line: 1049, column: 68, scope: !1319)
!1342 = !DILocation(line: 1051, column: 99, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 1051, column: 77)
!1344 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 1050, column: 65)
!1345 = !DILocation(line: 1051, column: 102, scope: !1343)
!1346 = !DILocation(line: 1051, column: 114, scope: !1343)
!1347 = !DILocation(line: 1051, column: 117, scope: !1343)
!1348 = !DILocation(line: 1051, column: 139, scope: !1343)
!1349 = !DILocation(line: 1051, column: 77, scope: !1343)
!1350 = !DILocation(line: 1051, column: 156, scope: !1343)
!1351 = !DILocation(line: 1051, column: 77, scope: !1344)
!1352 = !DILocation(line: 1052, column: 86, scope: !1343)
!1353 = !DILocation(line: 1052, column: 83, scope: !1343)
!1354 = !DILocation(line: 1053, column: 65, scope: !1344)
!1355 = !DILocation(line: 1055, column: 87, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 1055, column: 68)
!1357 = !DILocation(line: 1055, column: 102, scope: !1356)
!1358 = !DILocation(line: 1055, column: 68, scope: !1319)
!1359 = !DILocation(line: 1058, column: 99, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 1058, column: 77)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 1056, column: 65)
!1362 = !DILocation(line: 1058, column: 102, scope: !1360)
!1363 = !DILocation(line: 1058, column: 114, scope: !1360)
!1364 = !DILocation(line: 1058, column: 117, scope: !1360)
!1365 = !DILocation(line: 1058, column: 148, scope: !1360)
!1366 = !DILocation(line: 1058, column: 77, scope: !1360)
!1367 = !DILocation(line: 1058, column: 164, scope: !1360)
!1368 = !DILocation(line: 1058, column: 77, scope: !1361)
!1369 = !DILocation(line: 1059, column: 84, scope: !1360)
!1370 = !DILocation(line: 1059, column: 81, scope: !1360)
!1371 = !DILocation(line: 1060, column: 65, scope: !1361)
!1372 = !DILocation(line: 1062, column: 78, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 1062, column: 68)
!1374 = !DILocation(line: 1062, column: 93, scope: !1373)
!1375 = !DILocation(line: 1062, column: 68, scope: !1319)
!1376 = !DILocation(line: 1065, column: 97, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 1065, column: 77)
!1378 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 1063, column: 65)
!1379 = !DILocation(line: 1065, column: 100, scope: !1377)
!1380 = !DILocation(line: 1065, column: 112, scope: !1377)
!1381 = !DILocation(line: 1065, column: 115, scope: !1377)
!1382 = !DILocation(line: 1065, column: 77, scope: !1377)
!1383 = !DILocation(line: 1065, column: 131, scope: !1377)
!1384 = !DILocation(line: 1065, column: 77, scope: !1378)
!1385 = !DILocation(line: 1066, column: 84, scope: !1377)
!1386 = !DILocation(line: 1066, column: 81, scope: !1377)
!1387 = !DILocation(line: 1067, column: 65, scope: !1378)
!1388 = !DILocation(line: 1069, column: 13, scope: !1319)
!1389 = !DILocation(line: 1072, column: 21, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 1072, column: 21)
!1391 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 1071, column: 13)
!1392 = !DILocation(line: 1072, column: 90, scope: !1390)
!1393 = !DILocation(line: 1072, column: 21, scope: !1391)
!1394 = !DILocation(line: 1073, column: 24, scope: !1390)
!1395 = !DILocation(line: 1073, column: 21, scope: !1390)
!1396 = !DILocation(line: 1076, column: 28, scope: !1290)
!1397 = !DILocation(line: 1076, column: 26, scope: !1290)
!1398 = !DILocation(line: 1076, column: 17, scope: !1290)
!1399 = distinct !{!1399, !1285, !1400, !1401}
!1400 = !DILocation(line: 1077, column: 9, scope: !1268)
!1401 = !{!"llvm.loop.mustprogress"}
!1402 = !DILocation(line: 1078, column: 5, scope: !1268)
!1403 = !DILocation(line: 1080, column: 10, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1080, column: 9)
!1405 = !DILocation(line: 1080, column: 13, scope: !1404)
!1406 = !DILocation(line: 1080, column: 23, scope: !1404)
!1407 = !DILocation(line: 1080, column: 27, scope: !1404)
!1408 = !DILocation(line: 1080, column: 36, scope: !1404)
!1409 = !DILocation(line: 1080, column: 9, scope: !917)
!1410 = !DILocalVariable(name: "uSizeRead", scope: !1411, file: !3, line: 1082, type: !34)
!1411 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 1081, column: 5)
!1412 = !DILocation(line: 1082, column: 15, scope: !1411)
!1413 = !DILocation(line: 1083, column: 23, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1083, column: 13)
!1415 = !DILocation(line: 1083, column: 41, scope: !1414)
!1416 = !DILocation(line: 1083, column: 40, scope: !1414)
!1417 = !DILocation(line: 1083, column: 13, scope: !1411)
!1418 = !DILocation(line: 1085, column: 15, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 1084, column: 9)
!1420 = !DILocation(line: 1085, column: 35, scope: !1419)
!1421 = !DILocation(line: 1085, column: 24, scope: !1419)
!1422 = !DILocation(line: 1085, column: 53, scope: !1419)
!1423 = !DILocation(line: 1086, column: 35, scope: !1419)
!1424 = !DILocation(line: 1086, column: 23, scope: !1419)
!1425 = !DILocation(line: 1087, column: 9, scope: !1419)
!1426 = !DILocation(line: 1089, column: 25, scope: !1414)
!1427 = !DILocation(line: 1089, column: 23, scope: !1414)
!1428 = !DILocation(line: 1091, column: 13, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1091, column: 13)
!1430 = !DILocation(line: 1091, column: 18, scope: !1429)
!1431 = !DILocation(line: 1091, column: 13, scope: !1411)
!1432 = !DILocation(line: 1093, column: 17, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 1093, column: 17)
!1434 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 1092, column: 9)
!1435 = !DILocation(line: 1093, column: 83, scope: !1433)
!1436 = !DILocation(line: 1093, column: 17, scope: !1434)
!1437 = !DILocation(line: 1094, column: 22, scope: !1433)
!1438 = !DILocation(line: 1094, column: 17, scope: !1433)
!1439 = !DILocation(line: 1096, column: 20, scope: !1433)
!1440 = !DILocation(line: 1097, column: 9, scope: !1434)
!1441 = !DILocation(line: 1099, column: 24, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1099, column: 13)
!1443 = !DILocation(line: 1099, column: 41, scope: !1442)
!1444 = !DILocation(line: 1099, column: 45, scope: !1442)
!1445 = !DILocation(line: 1099, column: 49, scope: !1442)
!1446 = !DILocation(line: 1099, column: 66, scope: !1442)
!1447 = !DILocation(line: 1099, column: 13, scope: !1411)
!1448 = !DILocation(line: 1100, column: 17, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 1100, column: 17)
!1450 = !DILocation(line: 1100, column: 76, scope: !1449)
!1451 = !DILocation(line: 1100, column: 74, scope: !1449)
!1452 = !DILocation(line: 1100, column: 17, scope: !1442)
!1453 = !DILocation(line: 1101, column: 20, scope: !1449)
!1454 = !DILocation(line: 1101, column: 17, scope: !1449)
!1455 = !DILocation(line: 1102, column: 26, scope: !1411)
!1456 = !DILocation(line: 1102, column: 46, scope: !1411)
!1457 = !DILocation(line: 1102, column: 44, scope: !1411)
!1458 = !DILocation(line: 1102, column: 14, scope: !1411)
!1459 = !DILocation(line: 1103, column: 5, scope: !1411)
!1460 = !DILocation(line: 1105, column: 26, scope: !1404)
!1461 = !DILocation(line: 1105, column: 14, scope: !1404)
!1462 = !DILocation(line: 1108, column: 10, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1108, column: 9)
!1464 = !DILocation(line: 1108, column: 13, scope: !1463)
!1465 = !DILocation(line: 1108, column: 23, scope: !1463)
!1466 = !DILocation(line: 1108, column: 27, scope: !1463)
!1467 = !DILocation(line: 1108, column: 37, scope: !1463)
!1468 = !DILocation(line: 1108, column: 9, scope: !917)
!1469 = !DILocation(line: 1109, column: 10, scope: !1463)
!1470 = !DILocation(line: 1109, column: 21, scope: !1463)
!1471 = !DILocation(line: 1109, column: 9, scope: !1463)
!1472 = !DILocation(line: 1111, column: 10, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1111, column: 9)
!1474 = !DILocation(line: 1111, column: 13, scope: !1473)
!1475 = !DILocation(line: 1111, column: 23, scope: !1473)
!1476 = !DILocation(line: 1111, column: 27, scope: !1473)
!1477 = !DILocation(line: 1111, column: 46, scope: !1473)
!1478 = !DILocation(line: 1111, column: 9, scope: !917)
!1479 = !DILocation(line: 1112, column: 10, scope: !1473)
!1480 = !DILocation(line: 1112, column: 30, scope: !1473)
!1481 = !DILocation(line: 1112, column: 9, scope: !1473)
!1482 = !DILocation(line: 1114, column: 12, scope: !917)
!1483 = !DILocation(line: 1114, column: 5, scope: !917)
!1484 = !DILocation(line: 1115, column: 1, scope: !917)
!1485 = distinct !DISubprogram(name: "unzGetCurrentFileInfo", scope: !3, file: !3, line: 1136, type: !1486, scopeLine: 1141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!28, !194, !1488, !139, !34, !5, !34, !139, !34}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "unz_file_info", file: !86, line: 151, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unz_file_info_s", file: !86, line: 132, size: 1088, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1490, file: !86, line: 134, baseType: !34, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "version_needed", scope: !1490, file: !86, line: 135, baseType: !34, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1490, file: !86, line: 136, baseType: !34, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "compression_method", scope: !1490, file: !86, line: 137, baseType: !34, size: 64, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "dosDate", scope: !1490, file: !86, line: 138, baseType: !34, size: 64, offset: 256)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !1490, file: !86, line: 139, baseType: !34, size: 64, offset: 320)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !1490, file: !86, line: 140, baseType: !34, size: 64, offset: 384)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !1490, file: !86, line: 141, baseType: !34, size: 64, offset: 448)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "size_filename", scope: !1490, file: !86, line: 142, baseType: !34, size: 64, offset: 512)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "size_file_extra", scope: !1490, file: !86, line: 143, baseType: !34, size: 64, offset: 576)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "size_file_comment", scope: !1490, file: !86, line: 144, baseType: !34, size: 64, offset: 640)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "disk_num_start", scope: !1490, file: !86, line: 146, baseType: !34, size: 64, offset: 704)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "internal_fa", scope: !1490, file: !86, line: 147, baseType: !34, size: 64, offset: 768)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "external_fa", scope: !1490, file: !86, line: 148, baseType: !34, size: 64, offset: 832)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "tmu_date", scope: !1490, file: !86, line: 150, baseType: !117, size: 192, offset: 896)
!1507 = !DILocalVariable(name: "file", arg: 1, scope: !1485, file: !3, line: 1136, type: !194)
!1508 = !DILocation(line: 1136, column: 51, scope: !1485)
!1509 = !DILocalVariable(name: "pfile_info", arg: 2, scope: !1485, file: !3, line: 1137, type: !1488)
!1510 = !DILocation(line: 1137, column: 59, scope: !1485)
!1511 = !DILocalVariable(name: "szFileName", arg: 3, scope: !1485, file: !3, line: 1138, type: !139)
!1512 = !DILocation(line: 1138, column: 50, scope: !1485)
!1513 = !DILocalVariable(name: "fileNameBufferSize", arg: 4, scope: !1485, file: !3, line: 1138, type: !34)
!1514 = !DILocation(line: 1138, column: 68, scope: !1485)
!1515 = !DILocalVariable(name: "extraField", arg: 5, scope: !1485, file: !3, line: 1139, type: !5)
!1516 = !DILocation(line: 1139, column: 49, scope: !1485)
!1517 = !DILocalVariable(name: "extraFieldBufferSize", arg: 6, scope: !1485, file: !3, line: 1139, type: !34)
!1518 = !DILocation(line: 1139, column: 67, scope: !1485)
!1519 = !DILocalVariable(name: "szComment", arg: 7, scope: !1485, file: !3, line: 1140, type: !139)
!1520 = !DILocation(line: 1140, column: 49, scope: !1485)
!1521 = !DILocalVariable(name: "commentBufferSize", arg: 8, scope: !1485, file: !3, line: 1140, type: !34)
!1522 = !DILocation(line: 1140, column: 67, scope: !1485)
!1523 = !DILocalVariable(name: "err", scope: !1485, file: !3, line: 1142, type: !28)
!1524 = !DILocation(line: 1142, column: 9, scope: !1485)
!1525 = !DILocalVariable(name: "file_info64", scope: !1485, file: !3, line: 1143, type: !99)
!1526 = !DILocation(line: 1143, column: 21, scope: !1485)
!1527 = !DILocation(line: 1144, column: 49, scope: !1485)
!1528 = !DILocation(line: 1145, column: 49, scope: !1485)
!1529 = !DILocation(line: 1145, column: 60, scope: !1485)
!1530 = !DILocation(line: 1146, column: 49, scope: !1485)
!1531 = !DILocation(line: 1146, column: 60, scope: !1485)
!1532 = !DILocation(line: 1147, column: 49, scope: !1485)
!1533 = !DILocation(line: 1147, column: 59, scope: !1485)
!1534 = !DILocation(line: 1144, column: 11, scope: !1485)
!1535 = !DILocation(line: 1144, column: 9, scope: !1485)
!1536 = !DILocation(line: 1148, column: 10, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 1148, column: 9)
!1538 = !DILocation(line: 1148, column: 13, scope: !1537)
!1539 = !DILocation(line: 1148, column: 23, scope: !1537)
!1540 = !DILocation(line: 1148, column: 27, scope: !1537)
!1541 = !DILocation(line: 1148, column: 38, scope: !1537)
!1542 = !DILocation(line: 1148, column: 9, scope: !1485)
!1543 = !DILocation(line: 1150, column: 43, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 1149, column: 5)
!1545 = !DILocation(line: 1150, column: 9, scope: !1544)
!1546 = !DILocation(line: 1150, column: 21, scope: !1544)
!1547 = !DILocation(line: 1150, column: 29, scope: !1544)
!1548 = !DILocation(line: 1151, column: 50, scope: !1544)
!1549 = !DILocation(line: 1151, column: 9, scope: !1544)
!1550 = !DILocation(line: 1151, column: 21, scope: !1544)
!1551 = !DILocation(line: 1151, column: 36, scope: !1544)
!1552 = !DILocation(line: 1152, column: 40, scope: !1544)
!1553 = !DILocation(line: 1152, column: 9, scope: !1544)
!1554 = !DILocation(line: 1152, column: 21, scope: !1544)
!1555 = !DILocation(line: 1152, column: 26, scope: !1544)
!1556 = !DILocation(line: 1153, column: 54, scope: !1544)
!1557 = !DILocation(line: 1153, column: 9, scope: !1544)
!1558 = !DILocation(line: 1153, column: 21, scope: !1544)
!1559 = !DILocation(line: 1153, column: 40, scope: !1544)
!1560 = !DILocation(line: 1154, column: 43, scope: !1544)
!1561 = !DILocation(line: 1154, column: 9, scope: !1544)
!1562 = !DILocation(line: 1154, column: 21, scope: !1544)
!1563 = !DILocation(line: 1154, column: 29, scope: !1544)
!1564 = !DILocation(line: 1155, column: 39, scope: !1544)
!1565 = !DILocation(line: 1155, column: 9, scope: !1544)
!1566 = !DILocation(line: 1155, column: 21, scope: !1544)
!1567 = !DILocation(line: 1155, column: 25, scope: !1544)
!1568 = !DILocation(line: 1157, column: 49, scope: !1544)
!1569 = !DILocation(line: 1157, column: 9, scope: !1544)
!1570 = !DILocation(line: 1157, column: 21, scope: !1544)
!1571 = !DILocation(line: 1157, column: 35, scope: !1544)
!1572 = !DILocation(line: 1158, column: 51, scope: !1544)
!1573 = !DILocation(line: 1158, column: 9, scope: !1544)
!1574 = !DILocation(line: 1158, column: 21, scope: !1544)
!1575 = !DILocation(line: 1158, column: 37, scope: !1544)
!1576 = !DILocation(line: 1159, column: 53, scope: !1544)
!1577 = !DILocation(line: 1159, column: 9, scope: !1544)
!1578 = !DILocation(line: 1159, column: 21, scope: !1544)
!1579 = !DILocation(line: 1159, column: 39, scope: !1544)
!1580 = !DILocation(line: 1161, column: 50, scope: !1544)
!1581 = !DILocation(line: 1161, column: 9, scope: !1544)
!1582 = !DILocation(line: 1161, column: 21, scope: !1544)
!1583 = !DILocation(line: 1161, column: 36, scope: !1544)
!1584 = !DILocation(line: 1162, column: 47, scope: !1544)
!1585 = !DILocation(line: 1162, column: 9, scope: !1544)
!1586 = !DILocation(line: 1162, column: 21, scope: !1544)
!1587 = !DILocation(line: 1162, column: 33, scope: !1544)
!1588 = !DILocation(line: 1163, column: 47, scope: !1544)
!1589 = !DILocation(line: 1163, column: 9, scope: !1544)
!1590 = !DILocation(line: 1163, column: 21, scope: !1544)
!1591 = !DILocation(line: 1163, column: 33, scope: !1544)
!1592 = !DILocation(line: 1165, column: 9, scope: !1544)
!1593 = !DILocation(line: 1165, column: 21, scope: !1544)
!1594 = !DILocation(line: 1165, column: 44, scope: !1544)
!1595 = !DILocation(line: 1168, column: 58, scope: !1544)
!1596 = !DILocation(line: 1168, column: 9, scope: !1544)
!1597 = !DILocation(line: 1168, column: 21, scope: !1544)
!1598 = !DILocation(line: 1168, column: 37, scope: !1544)
!1599 = !DILocation(line: 1169, column: 60, scope: !1544)
!1600 = !DILocation(line: 1169, column: 9, scope: !1544)
!1601 = !DILocation(line: 1169, column: 21, scope: !1544)
!1602 = !DILocation(line: 1169, column: 39, scope: !1544)
!1603 = !DILocation(line: 1171, column: 5, scope: !1544)
!1604 = !DILocation(line: 1172, column: 12, scope: !1485)
!1605 = !DILocation(line: 1172, column: 5, scope: !1485)
!1606 = distinct !DISubprogram(name: "unzGoToFirstFile", scope: !3, file: !3, line: 1178, type: !731, scopeLine: 1179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!1607 = !DILocalVariable(name: "file", arg: 1, scope: !1606, file: !3, line: 1178, type: !194)
!1608 = !DILocation(line: 1178, column: 46, scope: !1606)
!1609 = !DILocalVariable(name: "err", scope: !1606, file: !3, line: 1180, type: !28)
!1610 = !DILocation(line: 1180, column: 9, scope: !1606)
!1611 = !DILocalVariable(name: "s", scope: !1606, file: !3, line: 1181, type: !6)
!1612 = !DILocation(line: 1181, column: 14, scope: !1606)
!1613 = !DILocation(line: 1182, column: 9, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 1182, column: 9)
!1615 = !DILocation(line: 1182, column: 13, scope: !1614)
!1616 = !DILocation(line: 1182, column: 9, scope: !1606)
!1617 = !DILocation(line: 1183, column: 9, scope: !1614)
!1618 = !DILocation(line: 1184, column: 17, scope: !1606)
!1619 = !DILocation(line: 1184, column: 6, scope: !1606)
!1620 = !DILocation(line: 1185, column: 27, scope: !1606)
!1621 = !DILocation(line: 1185, column: 30, scope: !1606)
!1622 = !DILocation(line: 1185, column: 5, scope: !1606)
!1623 = !DILocation(line: 1185, column: 8, scope: !1606)
!1624 = !DILocation(line: 1185, column: 26, scope: !1606)
!1625 = !DILocation(line: 1186, column: 5, scope: !1606)
!1626 = !DILocation(line: 1186, column: 8, scope: !1606)
!1627 = !DILocation(line: 1186, column: 16, scope: !1606)
!1628 = !DILocation(line: 1187, column: 47, scope: !1606)
!1629 = !DILocation(line: 1187, column: 53, scope: !1606)
!1630 = !DILocation(line: 1187, column: 56, scope: !1606)
!1631 = !DILocation(line: 1188, column: 47, scope: !1606)
!1632 = !DILocation(line: 1188, column: 50, scope: !1606)
!1633 = !DILocation(line: 1187, column: 9, scope: !1606)
!1634 = !DILocation(line: 1187, column: 8, scope: !1606)
!1635 = !DILocation(line: 1190, column: 27, scope: !1606)
!1636 = !DILocation(line: 1190, column: 31, scope: !1606)
!1637 = !DILocation(line: 1190, column: 26, scope: !1606)
!1638 = !DILocation(line: 1190, column: 5, scope: !1606)
!1639 = !DILocation(line: 1190, column: 8, scope: !1606)
!1640 = !DILocation(line: 1190, column: 24, scope: !1606)
!1641 = !DILocation(line: 1191, column: 12, scope: !1606)
!1642 = !DILocation(line: 1191, column: 5, scope: !1606)
!1643 = !DILocation(line: 1192, column: 1, scope: !1606)
!1644 = distinct !DISubprogram(name: "unzGoToNextFile", scope: !3, file: !3, line: 1199, type: !731, scopeLine: 1200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!1645 = !DILocalVariable(name: "file", arg: 1, scope: !1644, file: !3, line: 1199, type: !194)
!1646 = !DILocation(line: 1199, column: 46, scope: !1644)
!1647 = !DILocalVariable(name: "s", scope: !1644, file: !3, line: 1201, type: !6)
!1648 = !DILocation(line: 1201, column: 14, scope: !1644)
!1649 = !DILocalVariable(name: "err", scope: !1644, file: !3, line: 1202, type: !28)
!1650 = !DILocation(line: 1202, column: 9, scope: !1644)
!1651 = !DILocation(line: 1204, column: 9, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 1204, column: 9)
!1653 = !DILocation(line: 1204, column: 13, scope: !1652)
!1654 = !DILocation(line: 1204, column: 9, scope: !1644)
!1655 = !DILocation(line: 1205, column: 9, scope: !1652)
!1656 = !DILocation(line: 1206, column: 17, scope: !1644)
!1657 = !DILocation(line: 1206, column: 6, scope: !1644)
!1658 = !DILocation(line: 1207, column: 10, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 1207, column: 9)
!1660 = !DILocation(line: 1207, column: 13, scope: !1659)
!1661 = !DILocation(line: 1207, column: 9, scope: !1644)
!1662 = !DILocation(line: 1208, column: 9, scope: !1659)
!1663 = !DILocation(line: 1209, column: 9, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 1209, column: 9)
!1665 = !DILocation(line: 1209, column: 12, scope: !1664)
!1666 = !DILocation(line: 1209, column: 15, scope: !1664)
!1667 = !DILocation(line: 1209, column: 28, scope: !1664)
!1668 = !DILocation(line: 1209, column: 9, scope: !1644)
!1669 = !DILocation(line: 1210, column: 11, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 1210, column: 11)
!1671 = !DILocation(line: 1210, column: 14, scope: !1670)
!1672 = !DILocation(line: 1210, column: 22, scope: !1670)
!1673 = !DILocation(line: 1210, column: 26, scope: !1670)
!1674 = !DILocation(line: 1210, column: 29, scope: !1670)
!1675 = !DILocation(line: 1210, column: 32, scope: !1670)
!1676 = !DILocation(line: 1210, column: 24, scope: !1670)
!1677 = !DILocation(line: 1210, column: 11, scope: !1664)
!1678 = !DILocation(line: 1211, column: 9, scope: !1670)
!1679 = !DILocation(line: 1213, column: 51, scope: !1644)
!1680 = !DILocation(line: 1213, column: 54, scope: !1644)
!1681 = !DILocation(line: 1213, column: 68, scope: !1644)
!1682 = !DILocation(line: 1213, column: 49, scope: !1644)
!1683 = !DILocation(line: 1214, column: 13, scope: !1644)
!1684 = !DILocation(line: 1214, column: 16, scope: !1644)
!1685 = !DILocation(line: 1214, column: 30, scope: !1644)
!1686 = !DILocation(line: 1213, column: 82, scope: !1644)
!1687 = !DILocation(line: 1214, column: 48, scope: !1644)
!1688 = !DILocation(line: 1214, column: 51, scope: !1644)
!1689 = !DILocation(line: 1214, column: 65, scope: !1644)
!1690 = !DILocation(line: 1214, column: 46, scope: !1644)
!1691 = !DILocation(line: 1213, column: 5, scope: !1644)
!1692 = !DILocation(line: 1213, column: 8, scope: !1644)
!1693 = !DILocation(line: 1213, column: 27, scope: !1644)
!1694 = !DILocation(line: 1215, column: 5, scope: !1644)
!1695 = !DILocation(line: 1215, column: 8, scope: !1644)
!1696 = !DILocation(line: 1215, column: 16, scope: !1644)
!1697 = !DILocation(line: 1216, column: 49, scope: !1644)
!1698 = !DILocation(line: 1216, column: 55, scope: !1644)
!1699 = !DILocation(line: 1216, column: 58, scope: !1644)
!1700 = !DILocation(line: 1217, column: 49, scope: !1644)
!1701 = !DILocation(line: 1217, column: 52, scope: !1644)
!1702 = !DILocation(line: 1216, column: 11, scope: !1644)
!1703 = !DILocation(line: 1216, column: 9, scope: !1644)
!1704 = !DILocation(line: 1219, column: 27, scope: !1644)
!1705 = !DILocation(line: 1219, column: 31, scope: !1644)
!1706 = !DILocation(line: 1219, column: 26, scope: !1644)
!1707 = !DILocation(line: 1219, column: 5, scope: !1644)
!1708 = !DILocation(line: 1219, column: 8, scope: !1644)
!1709 = !DILocation(line: 1219, column: 24, scope: !1644)
!1710 = !DILocation(line: 1220, column: 12, scope: !1644)
!1711 = !DILocation(line: 1220, column: 5, scope: !1644)
!1712 = !DILocation(line: 1221, column: 1, scope: !1644)
!1713 = distinct !DISubprogram(name: "unzLocateFile", scope: !3, file: !3, line: 1232, type: !1714, scopeLine: 1233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!28, !194, !69, !28}
!1716 = !DILocalVariable(name: "file", arg: 1, scope: !1713, file: !3, line: 1232, type: !194)
!1717 = !DILocation(line: 1232, column: 43, scope: !1713)
!1718 = !DILocalVariable(name: "szFileName", arg: 2, scope: !1713, file: !3, line: 1232, type: !69)
!1719 = !DILocation(line: 1232, column: 61, scope: !1713)
!1720 = !DILocalVariable(name: "iCaseSensitivity", arg: 3, scope: !1713, file: !3, line: 1232, type: !28)
!1721 = !DILocation(line: 1232, column: 77, scope: !1713)
!1722 = !DILocalVariable(name: "s", scope: !1713, file: !3, line: 1234, type: !6)
!1723 = !DILocation(line: 1234, column: 14, scope: !1713)
!1724 = !DILocalVariable(name: "err", scope: !1713, file: !3, line: 1235, type: !28)
!1725 = !DILocation(line: 1235, column: 9, scope: !1713)
!1726 = !DILocalVariable(name: "cur_file_infoSaved", scope: !1713, file: !3, line: 1240, type: !99)
!1727 = !DILocation(line: 1240, column: 21, scope: !1713)
!1728 = !DILocalVariable(name: "cur_file_info_internalSaved", scope: !1713, file: !3, line: 1241, type: !129)
!1729 = !DILocation(line: 1241, column: 30, scope: !1713)
!1730 = !DILocalVariable(name: "num_fileSaved", scope: !1713, file: !3, line: 1242, type: !51)
!1731 = !DILocation(line: 1242, column: 14, scope: !1713)
!1732 = !DILocalVariable(name: "pos_in_central_dirSaved", scope: !1713, file: !3, line: 1243, type: !51)
!1733 = !DILocation(line: 1243, column: 14, scope: !1713)
!1734 = !DILocation(line: 1246, column: 9, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 1246, column: 9)
!1736 = !DILocation(line: 1246, column: 13, scope: !1735)
!1737 = !DILocation(line: 1246, column: 9, scope: !1713)
!1738 = !DILocation(line: 1247, column: 9, scope: !1735)
!1739 = !DILocation(line: 1249, column: 16, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 1249, column: 9)
!1741 = !DILocation(line: 1249, column: 9, scope: !1740)
!1742 = !DILocation(line: 1249, column: 27, scope: !1740)
!1743 = !DILocation(line: 1249, column: 9, scope: !1713)
!1744 = !DILocation(line: 1250, column: 9, scope: !1740)
!1745 = !DILocation(line: 1252, column: 17, scope: !1713)
!1746 = !DILocation(line: 1252, column: 6, scope: !1713)
!1747 = !DILocation(line: 1253, column: 10, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 1253, column: 9)
!1749 = !DILocation(line: 1253, column: 13, scope: !1748)
!1750 = !DILocation(line: 1253, column: 9, scope: !1713)
!1751 = !DILocation(line: 1254, column: 9, scope: !1748)
!1752 = !DILocation(line: 1257, column: 21, scope: !1713)
!1753 = !DILocation(line: 1257, column: 24, scope: !1713)
!1754 = !DILocation(line: 1257, column: 19, scope: !1713)
!1755 = !DILocation(line: 1258, column: 31, scope: !1713)
!1756 = !DILocation(line: 1258, column: 34, scope: !1713)
!1757 = !DILocation(line: 1258, column: 29, scope: !1713)
!1758 = !DILocation(line: 1259, column: 26, scope: !1713)
!1759 = !DILocation(line: 1259, column: 29, scope: !1713)
!1760 = !DILocation(line: 1260, column: 35, scope: !1713)
!1761 = !DILocation(line: 1260, column: 38, scope: !1713)
!1762 = !DILocation(line: 1262, column: 28, scope: !1713)
!1763 = !DILocation(line: 1262, column: 11, scope: !1713)
!1764 = !DILocation(line: 1262, column: 9, scope: !1713)
!1765 = !DILocation(line: 1264, column: 5, scope: !1713)
!1766 = !DILocation(line: 1264, column: 12, scope: !1713)
!1767 = !DILocation(line: 1264, column: 16, scope: !1713)
!1768 = !DILocalVariable(name: "szCurrentFileName", scope: !1769, file: !3, line: 1266, type: !1770)
!1769 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 1265, column: 5)
!1770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 2056, elements: !1771)
!1771 = !{!1772}
!1772 = !DISubrange(count: 257)
!1773 = !DILocation(line: 1266, column: 14, scope: !1769)
!1774 = !DILocation(line: 1267, column: 39, scope: !1769)
!1775 = !DILocation(line: 1268, column: 37, scope: !1769)
!1776 = !DILocation(line: 1267, column: 15, scope: !1769)
!1777 = !DILocation(line: 1267, column: 13, scope: !1769)
!1778 = !DILocation(line: 1270, column: 13, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 1270, column: 13)
!1780 = !DILocation(line: 1270, column: 17, scope: !1779)
!1781 = !DILocation(line: 1270, column: 13, scope: !1769)
!1782 = !DILocation(line: 1272, column: 42, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 1272, column: 17)
!1784 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 1271, column: 9)
!1785 = !DILocation(line: 1273, column: 45, scope: !1783)
!1786 = !DILocation(line: 1273, column: 56, scope: !1783)
!1787 = !DILocation(line: 1272, column: 17, scope: !1783)
!1788 = !DILocation(line: 1273, column: 73, scope: !1783)
!1789 = !DILocation(line: 1272, column: 17, scope: !1784)
!1790 = !DILocation(line: 1274, column: 17, scope: !1783)
!1791 = !DILocation(line: 1275, column: 35, scope: !1784)
!1792 = !DILocation(line: 1275, column: 19, scope: !1784)
!1793 = !DILocation(line: 1275, column: 17, scope: !1784)
!1794 = !DILocation(line: 1276, column: 9, scope: !1784)
!1795 = distinct !{!1795, !1765, !1796, !1401}
!1796 = !DILocation(line: 1277, column: 5, scope: !1713)
!1797 = !DILocation(line: 1282, column: 19, scope: !1713)
!1798 = !DILocation(line: 1282, column: 5, scope: !1713)
!1799 = !DILocation(line: 1282, column: 8, scope: !1713)
!1800 = !DILocation(line: 1282, column: 17, scope: !1713)
!1801 = !DILocation(line: 1283, column: 29, scope: !1713)
!1802 = !DILocation(line: 1283, column: 5, scope: !1713)
!1803 = !DILocation(line: 1283, column: 8, scope: !1713)
!1804 = !DILocation(line: 1283, column: 27, scope: !1713)
!1805 = !DILocation(line: 1284, column: 5, scope: !1713)
!1806 = !DILocation(line: 1284, column: 8, scope: !1713)
!1807 = !DILocation(line: 1284, column: 24, scope: !1713)
!1808 = !DILocation(line: 1285, column: 5, scope: !1713)
!1809 = !DILocation(line: 1285, column: 8, scope: !1713)
!1810 = !DILocation(line: 1285, column: 33, scope: !1713)
!1811 = !DILocation(line: 1286, column: 12, scope: !1713)
!1812 = !DILocation(line: 1286, column: 5, scope: !1713)
!1813 = !DILocation(line: 1287, column: 1, scope: !1713)
!1814 = distinct !DISubprogram(name: "unzGetFilePos64", scope: !3, file: !3, line: 1308, type: !1815, scopeLine: 1309, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!28, !194, !1817}
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "unz64_file_pos", file: !86, line: 276, baseType: !1819)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unz64_file_pos_s", file: !86, line: 272, size: 128, elements: !1820)
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "pos_in_zip_directory", scope: !1819, file: !86, line: 274, baseType: !51, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_file", scope: !1819, file: !86, line: 275, baseType: !51, size: 64, offset: 64)
!1823 = !DILocalVariable(name: "file", arg: 1, scope: !1814, file: !3, line: 1308, type: !194)
!1824 = !DILocation(line: 1308, column: 44, scope: !1814)
!1825 = !DILocalVariable(name: "file_pos", arg: 2, scope: !1814, file: !3, line: 1308, type: !1817)
!1826 = !DILocation(line: 1308, column: 67, scope: !1814)
!1827 = !DILocalVariable(name: "s", scope: !1814, file: !3, line: 1310, type: !6)
!1828 = !DILocation(line: 1310, column: 14, scope: !1814)
!1829 = !DILocation(line: 1312, column: 9, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 1312, column: 9)
!1831 = !DILocation(line: 1312, column: 13, scope: !1830)
!1832 = !DILocation(line: 1312, column: 20, scope: !1830)
!1833 = !DILocation(line: 1312, column: 23, scope: !1830)
!1834 = !DILocation(line: 1312, column: 31, scope: !1830)
!1835 = !DILocation(line: 1312, column: 9, scope: !1814)
!1836 = !DILocation(line: 1313, column: 9, scope: !1830)
!1837 = !DILocation(line: 1314, column: 17, scope: !1814)
!1838 = !DILocation(line: 1314, column: 6, scope: !1814)
!1839 = !DILocation(line: 1315, column: 10, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 1315, column: 9)
!1841 = !DILocation(line: 1315, column: 13, scope: !1840)
!1842 = !DILocation(line: 1315, column: 9, scope: !1814)
!1843 = !DILocation(line: 1316, column: 9, scope: !1840)
!1844 = !DILocation(line: 1318, column: 39, scope: !1814)
!1845 = !DILocation(line: 1318, column: 42, scope: !1814)
!1846 = !DILocation(line: 1318, column: 5, scope: !1814)
!1847 = !DILocation(line: 1318, column: 15, scope: !1814)
!1848 = !DILocation(line: 1318, column: 37, scope: !1814)
!1849 = !DILocation(line: 1319, column: 39, scope: !1814)
!1850 = !DILocation(line: 1319, column: 42, scope: !1814)
!1851 = !DILocation(line: 1319, column: 5, scope: !1814)
!1852 = !DILocation(line: 1319, column: 15, scope: !1814)
!1853 = !DILocation(line: 1319, column: 37, scope: !1814)
!1854 = !DILocation(line: 1321, column: 5, scope: !1814)
!1855 = !DILocation(line: 1322, column: 1, scope: !1814)
!1856 = distinct !DISubprogram(name: "unzGetFilePos", scope: !3, file: !3, line: 1324, type: !1857, scopeLine: 1327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!28, !194, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "unz_file_pos", file: !86, line: 262, baseType: !1861)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unz_file_pos_s", file: !86, line: 258, size: 128, elements: !1862)
!1862 = !{!1863, !1864}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "pos_in_zip_directory", scope: !1861, file: !86, line: 260, baseType: !34, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_file", scope: !1861, file: !86, line: 261, baseType: !34, size: 64, offset: 64)
!1865 = !DILocalVariable(name: "file", arg: 1, scope: !1856, file: !3, line: 1325, type: !194)
!1866 = !DILocation(line: 1325, column: 13, scope: !1856)
!1867 = !DILocalVariable(name: "file_pos", arg: 2, scope: !1856, file: !3, line: 1326, type: !1859)
!1868 = !DILocation(line: 1326, column: 19, scope: !1856)
!1869 = !DILocalVariable(name: "file_pos64", scope: !1856, file: !3, line: 1328, type: !1818)
!1870 = !DILocation(line: 1328, column: 20, scope: !1856)
!1871 = !DILocalVariable(name: "err", scope: !1856, file: !3, line: 1329, type: !28)
!1872 = !DILocation(line: 1329, column: 9, scope: !1856)
!1873 = !DILocation(line: 1329, column: 31, scope: !1856)
!1874 = !DILocation(line: 1329, column: 15, scope: !1856)
!1875 = !DILocation(line: 1330, column: 9, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 1330, column: 9)
!1877 = !DILocation(line: 1330, column: 12, scope: !1876)
!1878 = !DILocation(line: 1330, column: 9, scope: !1856)
!1879 = !DILocation(line: 1332, column: 60, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 1331, column: 5)
!1881 = !DILocation(line: 1332, column: 9, scope: !1880)
!1882 = !DILocation(line: 1332, column: 19, scope: !1880)
!1883 = !DILocation(line: 1332, column: 40, scope: !1880)
!1884 = !DILocation(line: 1333, column: 51, scope: !1880)
!1885 = !DILocation(line: 1333, column: 9, scope: !1880)
!1886 = !DILocation(line: 1333, column: 19, scope: !1880)
!1887 = !DILocation(line: 1333, column: 31, scope: !1880)
!1888 = !DILocation(line: 1334, column: 5, scope: !1880)
!1889 = !DILocation(line: 1335, column: 12, scope: !1856)
!1890 = !DILocation(line: 1335, column: 5, scope: !1856)
!1891 = distinct !DISubprogram(name: "unzGoToFilePos64", scope: !3, file: !3, line: 1338, type: !1892, scopeLine: 1339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!28, !194, !1894}
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1818)
!1896 = !DILocalVariable(name: "file", arg: 1, scope: !1891, file: !3, line: 1338, type: !194)
!1897 = !DILocation(line: 1338, column: 45, scope: !1891)
!1898 = !DILocalVariable(name: "file_pos", arg: 2, scope: !1891, file: !3, line: 1338, type: !1894)
!1899 = !DILocation(line: 1338, column: 73, scope: !1891)
!1900 = !DILocalVariable(name: "s", scope: !1891, file: !3, line: 1340, type: !6)
!1901 = !DILocation(line: 1340, column: 14, scope: !1891)
!1902 = !DILocalVariable(name: "err", scope: !1891, file: !3, line: 1341, type: !28)
!1903 = !DILocation(line: 1341, column: 9, scope: !1891)
!1904 = !DILocation(line: 1343, column: 9, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 1343, column: 9)
!1906 = !DILocation(line: 1343, column: 13, scope: !1905)
!1907 = !DILocation(line: 1343, column: 20, scope: !1905)
!1908 = !DILocation(line: 1343, column: 23, scope: !1905)
!1909 = !DILocation(line: 1343, column: 31, scope: !1905)
!1910 = !DILocation(line: 1343, column: 9, scope: !1891)
!1911 = !DILocation(line: 1344, column: 9, scope: !1905)
!1912 = !DILocation(line: 1345, column: 17, scope: !1891)
!1913 = !DILocation(line: 1345, column: 6, scope: !1891)
!1914 = !DILocation(line: 1348, column: 29, scope: !1891)
!1915 = !DILocation(line: 1348, column: 39, scope: !1891)
!1916 = !DILocation(line: 1348, column: 5, scope: !1891)
!1917 = !DILocation(line: 1348, column: 8, scope: !1891)
!1918 = !DILocation(line: 1348, column: 27, scope: !1891)
!1919 = !DILocation(line: 1349, column: 29, scope: !1891)
!1920 = !DILocation(line: 1349, column: 39, scope: !1891)
!1921 = !DILocation(line: 1349, column: 5, scope: !1891)
!1922 = !DILocation(line: 1349, column: 8, scope: !1891)
!1923 = !DILocation(line: 1349, column: 27, scope: !1891)
!1924 = !DILocation(line: 1352, column: 49, scope: !1891)
!1925 = !DILocation(line: 1352, column: 55, scope: !1891)
!1926 = !DILocation(line: 1352, column: 58, scope: !1891)
!1927 = !DILocation(line: 1353, column: 49, scope: !1891)
!1928 = !DILocation(line: 1353, column: 52, scope: !1891)
!1929 = !DILocation(line: 1352, column: 11, scope: !1891)
!1930 = !DILocation(line: 1352, column: 9, scope: !1891)
!1931 = !DILocation(line: 1356, column: 27, scope: !1891)
!1932 = !DILocation(line: 1356, column: 31, scope: !1891)
!1933 = !DILocation(line: 1356, column: 26, scope: !1891)
!1934 = !DILocation(line: 1356, column: 5, scope: !1891)
!1935 = !DILocation(line: 1356, column: 8, scope: !1891)
!1936 = !DILocation(line: 1356, column: 24, scope: !1891)
!1937 = !DILocation(line: 1357, column: 12, scope: !1891)
!1938 = !DILocation(line: 1357, column: 5, scope: !1891)
!1939 = !DILocation(line: 1358, column: 1, scope: !1891)
!1940 = distinct !DISubprogram(name: "unzGoToFilePos", scope: !3, file: !3, line: 1360, type: !1857, scopeLine: 1363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!1941 = !DILocalVariable(name: "file", arg: 1, scope: !1940, file: !3, line: 1361, type: !194)
!1942 = !DILocation(line: 1361, column: 13, scope: !1940)
!1943 = !DILocalVariable(name: "file_pos", arg: 2, scope: !1940, file: !3, line: 1362, type: !1859)
!1944 = !DILocation(line: 1362, column: 19, scope: !1940)
!1945 = !DILocalVariable(name: "file_pos64", scope: !1940, file: !3, line: 1364, type: !1818)
!1946 = !DILocation(line: 1364, column: 20, scope: !1940)
!1947 = !DILocation(line: 1365, column: 9, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 1365, column: 9)
!1949 = !DILocation(line: 1365, column: 18, scope: !1948)
!1950 = !DILocation(line: 1365, column: 9, scope: !1940)
!1951 = !DILocation(line: 1366, column: 9, scope: !1948)
!1952 = !DILocation(line: 1368, column: 39, scope: !1940)
!1953 = !DILocation(line: 1368, column: 49, scope: !1940)
!1954 = !DILocation(line: 1368, column: 16, scope: !1940)
!1955 = !DILocation(line: 1368, column: 37, scope: !1940)
!1956 = !DILocation(line: 1369, column: 30, scope: !1940)
!1957 = !DILocation(line: 1369, column: 40, scope: !1940)
!1958 = !DILocation(line: 1369, column: 16, scope: !1940)
!1959 = !DILocation(line: 1369, column: 28, scope: !1940)
!1960 = !DILocation(line: 1370, column: 29, scope: !1940)
!1961 = !DILocation(line: 1370, column: 12, scope: !1940)
!1962 = !DILocation(line: 1370, column: 5, scope: !1940)
!1963 = !DILocation(line: 1371, column: 1, scope: !1940)
!1964 = distinct !DISubprogram(name: "unzOpenCurrentFile3", scope: !3, file: !3, line: 1472, type: !1965, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!28, !194, !1967, !1967, !28, !69}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1968 = !DILocalVariable(name: "file", arg: 1, scope: !1964, file: !3, line: 1472, type: !194)
!1969 = !DILocation(line: 1472, column: 49, scope: !1964)
!1970 = !DILocalVariable(name: "method", arg: 2, scope: !1964, file: !3, line: 1472, type: !1967)
!1971 = !DILocation(line: 1472, column: 60, scope: !1964)
!1972 = !DILocalVariable(name: "level", arg: 3, scope: !1964, file: !3, line: 1473, type: !1967)
!1973 = !DILocation(line: 1473, column: 50, scope: !1964)
!1974 = !DILocalVariable(name: "raw", arg: 4, scope: !1964, file: !3, line: 1473, type: !28)
!1975 = !DILocation(line: 1473, column: 61, scope: !1964)
!1976 = !DILocalVariable(name: "password", arg: 5, scope: !1964, file: !3, line: 1473, type: !69)
!1977 = !DILocation(line: 1473, column: 78, scope: !1964)
!1978 = !DILocalVariable(name: "err", scope: !1964, file: !3, line: 1475, type: !28)
!1979 = !DILocation(line: 1475, column: 9, scope: !1964)
!1980 = !DILocalVariable(name: "iSizeVar", scope: !1964, file: !3, line: 1476, type: !121)
!1981 = !DILocation(line: 1476, column: 10, scope: !1964)
!1982 = !DILocalVariable(name: "s", scope: !1964, file: !3, line: 1477, type: !6)
!1983 = !DILocation(line: 1477, column: 14, scope: !1964)
!1984 = !DILocalVariable(name: "pfile_in_zip_read_info", scope: !1964, file: !3, line: 1478, type: !134)
!1985 = !DILocation(line: 1478, column: 32, scope: !1964)
!1986 = !DILocalVariable(name: "offset_local_extrafield", scope: !1964, file: !3, line: 1479, type: !51)
!1987 = !DILocation(line: 1479, column: 14, scope: !1964)
!1988 = !DILocalVariable(name: "size_local_extrafield", scope: !1964, file: !3, line: 1480, type: !121)
!1989 = !DILocation(line: 1480, column: 11, scope: !1964)
!1990 = !DILocation(line: 1484, column: 9, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1484, column: 9)
!1992 = !DILocation(line: 1484, column: 18, scope: !1991)
!1993 = !DILocation(line: 1484, column: 9, scope: !1964)
!1994 = !DILocation(line: 1485, column: 9, scope: !1991)
!1995 = !DILocation(line: 1488, column: 9, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1488, column: 9)
!1997 = !DILocation(line: 1488, column: 13, scope: !1996)
!1998 = !DILocation(line: 1488, column: 9, scope: !1964)
!1999 = !DILocation(line: 1489, column: 9, scope: !1996)
!2000 = !DILocation(line: 1490, column: 17, scope: !1964)
!2001 = !DILocation(line: 1490, column: 6, scope: !1964)
!2002 = !DILocation(line: 1491, column: 10, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1491, column: 9)
!2004 = !DILocation(line: 1491, column: 13, scope: !2003)
!2005 = !DILocation(line: 1491, column: 9, scope: !1964)
!2006 = !DILocation(line: 1492, column: 9, scope: !2003)
!2007 = !DILocation(line: 1494, column: 9, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1494, column: 9)
!2009 = !DILocation(line: 1494, column: 12, scope: !2008)
!2010 = !DILocation(line: 1494, column: 30, scope: !2008)
!2011 = !DILocation(line: 1494, column: 9, scope: !1964)
!2012 = !DILocation(line: 1495, column: 29, scope: !2008)
!2013 = !DILocation(line: 1495, column: 9, scope: !2008)
!2014 = !DILocation(line: 1497, column: 52, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1497, column: 9)
!2016 = !DILocation(line: 1497, column: 9, scope: !2015)
!2017 = !DILocation(line: 1497, column: 113, scope: !2015)
!2018 = !DILocation(line: 1497, column: 9, scope: !1964)
!2019 = !DILocation(line: 1498, column: 9, scope: !2015)
!2020 = !DILocation(line: 1500, column: 58, scope: !1964)
!2021 = !DILocation(line: 1500, column: 28, scope: !1964)
!2022 = !DILocation(line: 1501, column: 9, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1501, column: 9)
!2024 = !DILocation(line: 1501, column: 31, scope: !2023)
!2025 = !DILocation(line: 1501, column: 9, scope: !1964)
!2026 = !DILocation(line: 1502, column: 9, scope: !2023)
!2027 = !DILocation(line: 1504, column: 48, scope: !1964)
!2028 = !DILocation(line: 1504, column: 5, scope: !1964)
!2029 = !DILocation(line: 1504, column: 29, scope: !1964)
!2030 = !DILocation(line: 1504, column: 40, scope: !1964)
!2031 = !DILocation(line: 1505, column: 55, scope: !1964)
!2032 = !DILocation(line: 1505, column: 5, scope: !1964)
!2033 = !DILocation(line: 1505, column: 29, scope: !1964)
!2034 = !DILocation(line: 1505, column: 53, scope: !1964)
!2035 = !DILocation(line: 1506, column: 53, scope: !1964)
!2036 = !DILocation(line: 1506, column: 5, scope: !1964)
!2037 = !DILocation(line: 1506, column: 29, scope: !1964)
!2038 = !DILocation(line: 1506, column: 51, scope: !1964)
!2039 = !DILocation(line: 1507, column: 5, scope: !1964)
!2040 = !DILocation(line: 1507, column: 29, scope: !1964)
!2041 = !DILocation(line: 1507, column: 49, scope: !1964)
!2042 = !DILocation(line: 1508, column: 33, scope: !1964)
!2043 = !DILocation(line: 1508, column: 5, scope: !1964)
!2044 = !DILocation(line: 1508, column: 29, scope: !1964)
!2045 = !DILocation(line: 1508, column: 32, scope: !1964)
!2046 = !DILocation(line: 1510, column: 9, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1510, column: 9)
!2048 = !DILocation(line: 1510, column: 33, scope: !2047)
!2049 = !DILocation(line: 1510, column: 44, scope: !2047)
!2050 = !DILocation(line: 1510, column: 9, scope: !1964)
!2051 = !DILocation(line: 1512, column: 9, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 1512, column: 9)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 1512, column: 9)
!2054 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 1511, column: 5)
!2055 = !DILocation(line: 1512, column: 9, scope: !2053)
!2056 = !DILocation(line: 1513, column: 9, scope: !2054)
!2057 = !DILocation(line: 1516, column: 5, scope: !1964)
!2058 = !DILocation(line: 1516, column: 29, scope: !1964)
!2059 = !DILocation(line: 1516, column: 47, scope: !1964)
!2060 = !DILocation(line: 1518, column: 9, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1518, column: 9)
!2062 = !DILocation(line: 1518, column: 15, scope: !2061)
!2063 = !DILocation(line: 1518, column: 9, scope: !1964)
!2064 = !DILocation(line: 1519, column: 24, scope: !2061)
!2065 = !DILocation(line: 1519, column: 27, scope: !2061)
!2066 = !DILocation(line: 1519, column: 41, scope: !2061)
!2067 = !DILocation(line: 1519, column: 19, scope: !2061)
!2068 = !DILocation(line: 1519, column: 10, scope: !2061)
!2069 = !DILocation(line: 1519, column: 17, scope: !2061)
!2070 = !DILocation(line: 1519, column: 9, scope: !2061)
!2071 = !DILocation(line: 1521, column: 9, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1521, column: 9)
!2073 = !DILocation(line: 1521, column: 14, scope: !2072)
!2074 = !DILocation(line: 1521, column: 9, scope: !1964)
!2075 = !DILocation(line: 1523, column: 10, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 1522, column: 5)
!2077 = !DILocation(line: 1523, column: 16, scope: !2076)
!2078 = !DILocation(line: 1524, column: 17, scope: !2076)
!2079 = !DILocation(line: 1524, column: 20, scope: !2076)
!2080 = !DILocation(line: 1524, column: 34, scope: !2076)
!2081 = !DILocation(line: 1524, column: 39, scope: !2076)
!2082 = !DILocation(line: 1524, column: 9, scope: !2076)
!2083 = !DILocation(line: 1526, column: 21, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 1525, column: 9)
!2085 = !DILocation(line: 1526, column: 27, scope: !2084)
!2086 = !DILocation(line: 1526, column: 32, scope: !2084)
!2087 = !DILocation(line: 1527, column: 21, scope: !2084)
!2088 = !DILocation(line: 1527, column: 27, scope: !2084)
!2089 = !DILocation(line: 1527, column: 32, scope: !2084)
!2090 = !DILocation(line: 1528, column: 21, scope: !2084)
!2091 = !DILocation(line: 1528, column: 27, scope: !2084)
!2092 = !DILocation(line: 1528, column: 32, scope: !2084)
!2093 = !DILocation(line: 1530, column: 5, scope: !2076)
!2094 = !DILocation(line: 1532, column: 10, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1532, column: 9)
!2096 = !DILocation(line: 1532, column: 13, scope: !2095)
!2097 = !DILocation(line: 1532, column: 27, scope: !2095)
!2098 = !DILocation(line: 1532, column: 45, scope: !2095)
!2099 = !DILocation(line: 1532, column: 50, scope: !2095)
!2100 = !DILocation(line: 1534, column: 10, scope: !2095)
!2101 = !DILocation(line: 1534, column: 13, scope: !2095)
!2102 = !DILocation(line: 1534, column: 27, scope: !2095)
!2103 = !DILocation(line: 1534, column: 45, scope: !2095)
!2104 = !DILocation(line: 1534, column: 58, scope: !2095)
!2105 = !DILocation(line: 1536, column: 10, scope: !2095)
!2106 = !DILocation(line: 1536, column: 13, scope: !2095)
!2107 = !DILocation(line: 1536, column: 27, scope: !2095)
!2108 = !DILocation(line: 1536, column: 45, scope: !2095)
!2109 = !DILocation(line: 1532, column: 9, scope: !1964)
!2110 = !DILocation(line: 1538, column: 12, scope: !2095)
!2111 = !DILocation(line: 1538, column: 9, scope: !2095)
!2112 = !DILocation(line: 1540, column: 40, scope: !1964)
!2113 = !DILocation(line: 1540, column: 43, scope: !1964)
!2114 = !DILocation(line: 1540, column: 57, scope: !1964)
!2115 = !DILocation(line: 1540, column: 5, scope: !1964)
!2116 = !DILocation(line: 1540, column: 29, scope: !1964)
!2117 = !DILocation(line: 1540, column: 39, scope: !1964)
!2118 = !DILocation(line: 1541, column: 5, scope: !1964)
!2119 = !DILocation(line: 1541, column: 29, scope: !1964)
!2120 = !DILocation(line: 1541, column: 34, scope: !1964)
!2121 = !DILocation(line: 1542, column: 5, scope: !1964)
!2122 = !DILocation(line: 1542, column: 29, scope: !1964)
!2123 = !DILocation(line: 1542, column: 41, scope: !1964)
!2124 = !DILocation(line: 1543, column: 50, scope: !1964)
!2125 = !DILocation(line: 1543, column: 53, scope: !1964)
!2126 = !DILocation(line: 1543, column: 67, scope: !1964)
!2127 = !DILocation(line: 1543, column: 5, scope: !1964)
!2128 = !DILocation(line: 1543, column: 29, scope: !1964)
!2129 = !DILocation(line: 1543, column: 48, scope: !1964)
!2130 = !DILocation(line: 1544, column: 40, scope: !1964)
!2131 = !DILocation(line: 1544, column: 43, scope: !1964)
!2132 = !DILocation(line: 1544, column: 5, scope: !1964)
!2133 = !DILocation(line: 1544, column: 29, scope: !1964)
!2134 = !DILocation(line: 1544, column: 39, scope: !1964)
!2135 = !DILocation(line: 1545, column: 5, scope: !1964)
!2136 = !DILocation(line: 1545, column: 29, scope: !1964)
!2137 = !DILocation(line: 1545, column: 40, scope: !1964)
!2138 = !DILocation(line: 1545, column: 43, scope: !1964)
!2139 = !DILocation(line: 1546, column: 53, scope: !1964)
!2140 = !DILocation(line: 1546, column: 56, scope: !1964)
!2141 = !DILocation(line: 1546, column: 5, scope: !1964)
!2142 = !DILocation(line: 1546, column: 29, scope: !1964)
!2143 = !DILocation(line: 1546, column: 52, scope: !1964)
!2144 = !DILocation(line: 1548, column: 5, scope: !1964)
!2145 = !DILocation(line: 1548, column: 29, scope: !1964)
!2146 = !DILocation(line: 1548, column: 36, scope: !1964)
!2147 = !DILocation(line: 1548, column: 46, scope: !1964)
!2148 = !DILocation(line: 1550, column: 10, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1550, column: 9)
!2150 = !DILocation(line: 1550, column: 13, scope: !2149)
!2151 = !DILocation(line: 1550, column: 27, scope: !2149)
!2152 = !DILocation(line: 1550, column: 45, scope: !2149)
!2153 = !DILocation(line: 1550, column: 58, scope: !2149)
!2154 = !DILocation(line: 1550, column: 63, scope: !2149)
!2155 = !DILocation(line: 1550, column: 9, scope: !1964)
!2156 = !DILocation(line: 1573, column: 7, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 1551, column: 5)
!2158 = !DILocation(line: 1573, column: 31, scope: !2157)
!2159 = !DILocation(line: 1573, column: 34, scope: !2157)
!2160 = !DILocation(line: 1575, column: 5, scope: !2157)
!2161 = !DILocation(line: 1576, column: 15, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 1576, column: 14)
!2163 = !DILocation(line: 1576, column: 18, scope: !2162)
!2164 = !DILocation(line: 1576, column: 32, scope: !2162)
!2165 = !DILocation(line: 1576, column: 50, scope: !2162)
!2166 = !DILocation(line: 1576, column: 64, scope: !2162)
!2167 = !DILocation(line: 1576, column: 69, scope: !2162)
!2168 = !DILocation(line: 1576, column: 14, scope: !2149)
!2169 = !DILocation(line: 1578, column: 7, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 1577, column: 5)
!2171 = !DILocation(line: 1578, column: 31, scope: !2170)
!2172 = !DILocation(line: 1578, column: 38, scope: !2170)
!2173 = !DILocation(line: 1578, column: 45, scope: !2170)
!2174 = !DILocation(line: 1579, column: 7, scope: !2170)
!2175 = !DILocation(line: 1579, column: 31, scope: !2170)
!2176 = !DILocation(line: 1579, column: 38, scope: !2170)
!2177 = !DILocation(line: 1579, column: 44, scope: !2170)
!2178 = !DILocation(line: 1580, column: 7, scope: !2170)
!2179 = !DILocation(line: 1580, column: 31, scope: !2170)
!2180 = !DILocation(line: 1580, column: 38, scope: !2170)
!2181 = !DILocation(line: 1580, column: 45, scope: !2170)
!2182 = !DILocation(line: 1581, column: 7, scope: !2170)
!2183 = !DILocation(line: 1581, column: 31, scope: !2170)
!2184 = !DILocation(line: 1581, column: 38, scope: !2170)
!2185 = !DILocation(line: 1581, column: 46, scope: !2170)
!2186 = !DILocation(line: 1582, column: 7, scope: !2170)
!2187 = !DILocation(line: 1582, column: 31, scope: !2170)
!2188 = !DILocation(line: 1582, column: 38, scope: !2170)
!2189 = !DILocation(line: 1582, column: 47, scope: !2170)
!2190 = !DILocation(line: 1584, column: 11, scope: !2170)
!2191 = !DILocation(line: 1584, column: 10, scope: !2170)
!2192 = !DILocation(line: 1585, column: 11, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 1585, column: 11)
!2194 = !DILocation(line: 1585, column: 15, scope: !2193)
!2195 = !DILocation(line: 1585, column: 11, scope: !2170)
!2196 = !DILocation(line: 1586, column: 9, scope: !2193)
!2197 = !DILocation(line: 1586, column: 33, scope: !2193)
!2198 = !DILocation(line: 1586, column: 51, scope: !2193)
!2199 = !DILocation(line: 1589, column: 9, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 1589, column: 9)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 1589, column: 9)
!2202 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 1588, column: 7)
!2203 = !DILocation(line: 1589, column: 9, scope: !2201)
!2204 = !DILocation(line: 1590, column: 16, scope: !2202)
!2205 = !DILocation(line: 1590, column: 9, scope: !2202)
!2206 = !DILocation(line: 1599, column: 5, scope: !2170)
!2207 = !DILocation(line: 1601, column: 13, scope: !1964)
!2208 = !DILocation(line: 1601, column: 16, scope: !1964)
!2209 = !DILocation(line: 1601, column: 30, scope: !1964)
!2210 = !DILocation(line: 1600, column: 5, scope: !1964)
!2211 = !DILocation(line: 1600, column: 29, scope: !1964)
!2212 = !DILocation(line: 1600, column: 50, scope: !1964)
!2213 = !DILocation(line: 1603, column: 13, scope: !1964)
!2214 = !DILocation(line: 1603, column: 16, scope: !1964)
!2215 = !DILocation(line: 1603, column: 30, scope: !1964)
!2216 = !DILocation(line: 1602, column: 5, scope: !1964)
!2217 = !DILocation(line: 1602, column: 29, scope: !1964)
!2218 = !DILocation(line: 1602, column: 52, scope: !1964)
!2219 = !DILocation(line: 1607, column: 13, scope: !1964)
!2220 = !DILocation(line: 1607, column: 16, scope: !1964)
!2221 = !DILocation(line: 1607, column: 39, scope: !1964)
!2222 = !DILocation(line: 1607, column: 54, scope: !1964)
!2223 = !DILocation(line: 1608, column: 15, scope: !1964)
!2224 = !DILocation(line: 1607, column: 75, scope: !1964)
!2225 = !DILocation(line: 1606, column: 5, scope: !1964)
!2226 = !DILocation(line: 1606, column: 29, scope: !1964)
!2227 = !DILocation(line: 1606, column: 44, scope: !1964)
!2228 = !DILocation(line: 1610, column: 5, scope: !1964)
!2229 = !DILocation(line: 1610, column: 29, scope: !1964)
!2230 = !DILocation(line: 1610, column: 36, scope: !1964)
!2231 = !DILocation(line: 1610, column: 45, scope: !1964)
!2232 = !DILocation(line: 1612, column: 28, scope: !1964)
!2233 = !DILocation(line: 1612, column: 5, scope: !1964)
!2234 = !DILocation(line: 1612, column: 8, scope: !1964)
!2235 = !DILocation(line: 1612, column: 26, scope: !1964)
!2236 = !DILocation(line: 1613, column: 17, scope: !1964)
!2237 = !DILocation(line: 1613, column: 20, scope: !1964)
!2238 = !DILocation(line: 1613, column: 30, scope: !1964)
!2239 = !DILocation(line: 1638, column: 5, scope: !1964)
!2240 = !DILocation(line: 1639, column: 1, scope: !1964)
!2241 = distinct !DISubprogram(name: "unz64local_CheckCurrentFileCoherencyHeader", scope: !3, file: !3, line: 1385, type: !2242, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!28, !6, !2244, !2245, !2244}
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!2246 = !DILocalVariable(name: "s", arg: 1, scope: !2241, file: !3, line: 1385, type: !6)
!2247 = !DILocation(line: 1385, column: 64, scope: !2241)
!2248 = !DILocalVariable(name: "piSizeVar", arg: 2, scope: !2241, file: !3, line: 1385, type: !2244)
!2249 = !DILocation(line: 1385, column: 73, scope: !2241)
!2250 = !DILocalVariable(name: "poffset_local_extrafield", arg: 3, scope: !2241, file: !3, line: 1386, type: !2245)
!2251 = !DILocation(line: 1386, column: 64, scope: !2241)
!2252 = !DILocalVariable(name: "psize_local_extrafield", arg: 4, scope: !2241, file: !3, line: 1387, type: !2244)
!2253 = !DILocation(line: 1387, column: 61, scope: !2241)
!2254 = !DILocalVariable(name: "uMagic", scope: !2241, file: !3, line: 1389, type: !34)
!2255 = !DILocation(line: 1389, column: 11, scope: !2241)
!2256 = !DILocalVariable(name: "uData", scope: !2241, file: !3, line: 1389, type: !34)
!2257 = !DILocation(line: 1389, column: 18, scope: !2241)
!2258 = !DILocalVariable(name: "uFlags", scope: !2241, file: !3, line: 1389, type: !34)
!2259 = !DILocation(line: 1389, column: 24, scope: !2241)
!2260 = !DILocalVariable(name: "size_filename", scope: !2241, file: !3, line: 1390, type: !34)
!2261 = !DILocation(line: 1390, column: 11, scope: !2241)
!2262 = !DILocalVariable(name: "size_extra_field", scope: !2241, file: !3, line: 1391, type: !34)
!2263 = !DILocation(line: 1391, column: 11, scope: !2241)
!2264 = !DILocalVariable(name: "err", scope: !2241, file: !3, line: 1392, type: !28)
!2265 = !DILocation(line: 1392, column: 9, scope: !2241)
!2266 = !DILocation(line: 1394, column: 6, scope: !2241)
!2267 = !DILocation(line: 1394, column: 16, scope: !2241)
!2268 = !DILocation(line: 1395, column: 6, scope: !2241)
!2269 = !DILocation(line: 1395, column: 31, scope: !2241)
!2270 = !DILocation(line: 1396, column: 6, scope: !2241)
!2271 = !DILocation(line: 1396, column: 29, scope: !2241)
!2272 = !DILocation(line: 1398, column: 9, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 1398, column: 9)
!2274 = !DILocation(line: 1399, column: 83, scope: !2273)
!2275 = !DILocation(line: 1398, column: 9, scope: !2241)
!2276 = !DILocation(line: 1400, column: 9, scope: !2273)
!2277 = !DILocation(line: 1403, column: 9, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 1403, column: 9)
!2279 = !DILocation(line: 1403, column: 12, scope: !2278)
!2280 = !DILocation(line: 1403, column: 9, scope: !2241)
!2281 = !DILocation(line: 1405, column: 33, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 1405, column: 13)
!2283 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 1404, column: 5)
!2284 = !DILocation(line: 1405, column: 36, scope: !2282)
!2285 = !DILocation(line: 1405, column: 48, scope: !2282)
!2286 = !DILocation(line: 1405, column: 51, scope: !2282)
!2287 = !DILocation(line: 1405, column: 13, scope: !2282)
!2288 = !DILocation(line: 1405, column: 71, scope: !2282)
!2289 = !DILocation(line: 1405, column: 13, scope: !2283)
!2290 = !DILocation(line: 1406, column: 16, scope: !2282)
!2291 = !DILocation(line: 1406, column: 13, scope: !2282)
!2292 = !DILocation(line: 1407, column: 18, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 1407, column: 18)
!2294 = !DILocation(line: 1407, column: 24, scope: !2293)
!2295 = !DILocation(line: 1407, column: 18, scope: !2282)
!2296 = !DILocation(line: 1408, column: 16, scope: !2293)
!2297 = !DILocation(line: 1408, column: 13, scope: !2293)
!2298 = !DILocation(line: 1409, column: 5, scope: !2283)
!2299 = !DILocation(line: 1411, column: 30, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 1411, column: 9)
!2301 = !DILocation(line: 1411, column: 33, scope: !2300)
!2302 = !DILocation(line: 1411, column: 45, scope: !2300)
!2303 = !DILocation(line: 1411, column: 48, scope: !2300)
!2304 = !DILocation(line: 1411, column: 9, scope: !2300)
!2305 = !DILocation(line: 1411, column: 67, scope: !2300)
!2306 = !DILocation(line: 1411, column: 9, scope: !2241)
!2307 = !DILocation(line: 1412, column: 12, scope: !2300)
!2308 = !DILocation(line: 1412, column: 9, scope: !2300)
!2309 = !DILocation(line: 1417, column: 30, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 1417, column: 9)
!2311 = !DILocation(line: 1417, column: 33, scope: !2310)
!2312 = !DILocation(line: 1417, column: 45, scope: !2310)
!2313 = !DILocation(line: 1417, column: 48, scope: !2310)
!2314 = !DILocation(line: 1417, column: 9, scope: !2310)
!2315 = !DILocation(line: 1417, column: 68, scope: !2310)
!2316 = !DILocation(line: 1417, column: 9, scope: !2241)
!2317 = !DILocation(line: 1418, column: 12, scope: !2310)
!2318 = !DILocation(line: 1418, column: 9, scope: !2310)
!2319 = !DILocation(line: 1420, column: 30, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 1420, column: 9)
!2321 = !DILocation(line: 1420, column: 33, scope: !2320)
!2322 = !DILocation(line: 1420, column: 45, scope: !2320)
!2323 = !DILocation(line: 1420, column: 48, scope: !2320)
!2324 = !DILocation(line: 1420, column: 9, scope: !2320)
!2325 = !DILocation(line: 1420, column: 67, scope: !2320)
!2326 = !DILocation(line: 1420, column: 9, scope: !2241)
!2327 = !DILocation(line: 1421, column: 12, scope: !2320)
!2328 = !DILocation(line: 1421, column: 9, scope: !2320)
!2329 = !DILocation(line: 1422, column: 15, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 1422, column: 14)
!2331 = !DILocation(line: 1422, column: 18, scope: !2330)
!2332 = !DILocation(line: 1422, column: 28, scope: !2330)
!2333 = !DILocation(line: 1422, column: 32, scope: !2330)
!2334 = !DILocation(line: 1422, column: 39, scope: !2330)
!2335 = !DILocation(line: 1422, column: 42, scope: !2330)
!2336 = !DILocation(line: 1422, column: 56, scope: !2330)
!2337 = !DILocation(line: 1422, column: 37, scope: !2330)
!2338 = !DILocation(line: 1422, column: 14, scope: !2320)
!2339 = !DILocation(line: 1423, column: 12, scope: !2330)
!2340 = !DILocation(line: 1423, column: 9, scope: !2330)
!2341 = !DILocation(line: 1425, column: 10, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 1425, column: 9)
!2343 = !DILocation(line: 1425, column: 13, scope: !2342)
!2344 = !DILocation(line: 1425, column: 23, scope: !2342)
!2345 = !DILocation(line: 1425, column: 27, scope: !2342)
!2346 = !DILocation(line: 1425, column: 30, scope: !2342)
!2347 = !DILocation(line: 1425, column: 44, scope: !2342)
!2348 = !DILocation(line: 1425, column: 62, scope: !2342)
!2349 = !DILocation(line: 1425, column: 67, scope: !2342)
!2350 = !DILocation(line: 1427, column: 27, scope: !2342)
!2351 = !DILocation(line: 1427, column: 30, scope: !2342)
!2352 = !DILocation(line: 1427, column: 44, scope: !2342)
!2353 = !DILocation(line: 1427, column: 62, scope: !2342)
!2354 = !DILocation(line: 1427, column: 75, scope: !2342)
!2355 = !DILocation(line: 1429, column: 27, scope: !2342)
!2356 = !DILocation(line: 1429, column: 30, scope: !2342)
!2357 = !DILocation(line: 1429, column: 44, scope: !2342)
!2358 = !DILocation(line: 1429, column: 62, scope: !2342)
!2359 = !DILocation(line: 1425, column: 9, scope: !2241)
!2360 = !DILocation(line: 1430, column: 12, scope: !2342)
!2361 = !DILocation(line: 1430, column: 9, scope: !2342)
!2362 = !DILocation(line: 1432, column: 29, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 1432, column: 9)
!2364 = !DILocation(line: 1432, column: 32, scope: !2363)
!2365 = !DILocation(line: 1432, column: 44, scope: !2363)
!2366 = !DILocation(line: 1432, column: 47, scope: !2363)
!2367 = !DILocation(line: 1432, column: 9, scope: !2363)
!2368 = !DILocation(line: 1432, column: 66, scope: !2363)
!2369 = !DILocation(line: 1432, column: 9, scope: !2241)
!2370 = !DILocation(line: 1433, column: 12, scope: !2363)
!2371 = !DILocation(line: 1433, column: 9, scope: !2363)
!2372 = !DILocation(line: 1435, column: 29, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 1435, column: 9)
!2374 = !DILocation(line: 1435, column: 32, scope: !2373)
!2375 = !DILocation(line: 1435, column: 44, scope: !2373)
!2376 = !DILocation(line: 1435, column: 47, scope: !2373)
!2377 = !DILocation(line: 1435, column: 9, scope: !2373)
!2378 = !DILocation(line: 1435, column: 66, scope: !2373)
!2379 = !DILocation(line: 1435, column: 9, scope: !2241)
!2380 = !DILocation(line: 1436, column: 12, scope: !2373)
!2381 = !DILocation(line: 1436, column: 9, scope: !2373)
!2382 = !DILocation(line: 1437, column: 15, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 1437, column: 14)
!2384 = !DILocation(line: 1437, column: 18, scope: !2383)
!2385 = !DILocation(line: 1437, column: 28, scope: !2383)
!2386 = !DILocation(line: 1437, column: 32, scope: !2383)
!2387 = !DILocation(line: 1437, column: 39, scope: !2383)
!2388 = !DILocation(line: 1437, column: 42, scope: !2383)
!2389 = !DILocation(line: 1437, column: 56, scope: !2383)
!2390 = !DILocation(line: 1437, column: 37, scope: !2383)
!2391 = !DILocation(line: 1437, column: 61, scope: !2383)
!2392 = !DILocation(line: 1437, column: 66, scope: !2383)
!2393 = !DILocation(line: 1437, column: 73, scope: !2383)
!2394 = !DILocation(line: 1437, column: 77, scope: !2383)
!2395 = !DILocation(line: 1437, column: 14, scope: !2373)
!2396 = !DILocation(line: 1438, column: 12, scope: !2383)
!2397 = !DILocation(line: 1438, column: 9, scope: !2383)
!2398 = !DILocation(line: 1440, column: 29, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 1440, column: 9)
!2400 = !DILocation(line: 1440, column: 32, scope: !2399)
!2401 = !DILocation(line: 1440, column: 44, scope: !2399)
!2402 = !DILocation(line: 1440, column: 47, scope: !2399)
!2403 = !DILocation(line: 1440, column: 9, scope: !2399)
!2404 = !DILocation(line: 1440, column: 66, scope: !2399)
!2405 = !DILocation(line: 1440, column: 9, scope: !2241)
!2406 = !DILocation(line: 1441, column: 12, scope: !2399)
!2407 = !DILocation(line: 1441, column: 9, scope: !2399)
!2408 = !DILocation(line: 1442, column: 14, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 1442, column: 14)
!2410 = !DILocation(line: 1442, column: 20, scope: !2409)
!2411 = !DILocation(line: 1442, column: 34, scope: !2409)
!2412 = !DILocation(line: 1442, column: 38, scope: !2409)
!2413 = !DILocation(line: 1442, column: 41, scope: !2409)
!2414 = !DILocation(line: 1442, column: 51, scope: !2409)
!2415 = !DILocation(line: 1442, column: 55, scope: !2409)
!2416 = !DILocation(line: 1442, column: 62, scope: !2409)
!2417 = !DILocation(line: 1442, column: 65, scope: !2409)
!2418 = !DILocation(line: 1442, column: 79, scope: !2409)
!2419 = !DILocation(line: 1442, column: 60, scope: !2409)
!2420 = !DILocation(line: 1442, column: 96, scope: !2409)
!2421 = !DILocation(line: 1442, column: 101, scope: !2409)
!2422 = !DILocation(line: 1442, column: 108, scope: !2409)
!2423 = !DILocation(line: 1442, column: 112, scope: !2409)
!2424 = !DILocation(line: 1442, column: 14, scope: !2399)
!2425 = !DILocation(line: 1443, column: 12, scope: !2409)
!2426 = !DILocation(line: 1443, column: 9, scope: !2409)
!2427 = !DILocation(line: 1445, column: 29, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 1445, column: 9)
!2429 = !DILocation(line: 1445, column: 32, scope: !2428)
!2430 = !DILocation(line: 1445, column: 44, scope: !2428)
!2431 = !DILocation(line: 1445, column: 47, scope: !2428)
!2432 = !DILocation(line: 1445, column: 9, scope: !2428)
!2433 = !DILocation(line: 1445, column: 66, scope: !2428)
!2434 = !DILocation(line: 1445, column: 9, scope: !2241)
!2435 = !DILocation(line: 1446, column: 12, scope: !2428)
!2436 = !DILocation(line: 1446, column: 9, scope: !2428)
!2437 = !DILocation(line: 1447, column: 14, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 1447, column: 14)
!2439 = !DILocation(line: 1447, column: 20, scope: !2438)
!2440 = !DILocation(line: 1447, column: 34, scope: !2438)
!2441 = !DILocation(line: 1447, column: 38, scope: !2438)
!2442 = !DILocation(line: 1447, column: 41, scope: !2438)
!2443 = !DILocation(line: 1447, column: 51, scope: !2438)
!2444 = !DILocation(line: 1447, column: 55, scope: !2438)
!2445 = !DILocation(line: 1447, column: 62, scope: !2438)
!2446 = !DILocation(line: 1447, column: 65, scope: !2438)
!2447 = !DILocation(line: 1447, column: 79, scope: !2438)
!2448 = !DILocation(line: 1447, column: 60, scope: !2438)
!2449 = !DILocation(line: 1447, column: 98, scope: !2438)
!2450 = !DILocation(line: 1447, column: 103, scope: !2438)
!2451 = !DILocation(line: 1447, column: 110, scope: !2438)
!2452 = !DILocation(line: 1447, column: 114, scope: !2438)
!2453 = !DILocation(line: 1447, column: 14, scope: !2428)
!2454 = !DILocation(line: 1448, column: 12, scope: !2438)
!2455 = !DILocation(line: 1448, column: 9, scope: !2438)
!2456 = !DILocation(line: 1450, column: 30, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 1450, column: 9)
!2458 = !DILocation(line: 1450, column: 33, scope: !2457)
!2459 = !DILocation(line: 1450, column: 45, scope: !2457)
!2460 = !DILocation(line: 1450, column: 48, scope: !2457)
!2461 = !DILocation(line: 1450, column: 9, scope: !2457)
!2462 = !DILocation(line: 1450, column: 75, scope: !2457)
!2463 = !DILocation(line: 1450, column: 9, scope: !2241)
!2464 = !DILocation(line: 1451, column: 12, scope: !2457)
!2465 = !DILocation(line: 1451, column: 9, scope: !2457)
!2466 = !DILocation(line: 1452, column: 15, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 1452, column: 14)
!2468 = !DILocation(line: 1452, column: 18, scope: !2467)
!2469 = !DILocation(line: 1452, column: 28, scope: !2467)
!2470 = !DILocation(line: 1452, column: 32, scope: !2467)
!2471 = !DILocation(line: 1452, column: 47, scope: !2467)
!2472 = !DILocation(line: 1452, column: 50, scope: !2467)
!2473 = !DILocation(line: 1452, column: 64, scope: !2467)
!2474 = !DILocation(line: 1452, column: 45, scope: !2467)
!2475 = !DILocation(line: 1452, column: 14, scope: !2457)
!2476 = !DILocation(line: 1453, column: 12, scope: !2467)
!2477 = !DILocation(line: 1453, column: 9, scope: !2467)
!2478 = !DILocation(line: 1455, column: 25, scope: !2241)
!2479 = !DILocation(line: 1455, column: 19, scope: !2241)
!2480 = !DILocation(line: 1455, column: 6, scope: !2241)
!2481 = !DILocation(line: 1455, column: 16, scope: !2241)
!2482 = !DILocation(line: 1457, column: 30, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 1457, column: 9)
!2484 = !DILocation(line: 1457, column: 33, scope: !2483)
!2485 = !DILocation(line: 1457, column: 45, scope: !2483)
!2486 = !DILocation(line: 1457, column: 48, scope: !2483)
!2487 = !DILocation(line: 1457, column: 9, scope: !2483)
!2488 = !DILocation(line: 1457, column: 78, scope: !2483)
!2489 = !DILocation(line: 1457, column: 9, scope: !2241)
!2490 = !DILocation(line: 1458, column: 12, scope: !2483)
!2491 = !DILocation(line: 1458, column: 9, scope: !2483)
!2492 = !DILocation(line: 1459, column: 32, scope: !2241)
!2493 = !DILocation(line: 1459, column: 35, scope: !2241)
!2494 = !DILocation(line: 1459, column: 58, scope: !2241)
!2495 = !DILocation(line: 1459, column: 73, scope: !2241)
!2496 = !DILocation(line: 1460, column: 58, scope: !2241)
!2497 = !DILocation(line: 1460, column: 56, scope: !2241)
!2498 = !DILocation(line: 1459, column: 6, scope: !2241)
!2499 = !DILocation(line: 1459, column: 30, scope: !2241)
!2500 = !DILocation(line: 1461, column: 37, scope: !2241)
!2501 = !DILocation(line: 1461, column: 31, scope: !2241)
!2502 = !DILocation(line: 1461, column: 6, scope: !2241)
!2503 = !DILocation(line: 1461, column: 29, scope: !2241)
!2504 = !DILocation(line: 1463, column: 25, scope: !2241)
!2505 = !DILocation(line: 1463, column: 19, scope: !2241)
!2506 = !DILocation(line: 1463, column: 6, scope: !2241)
!2507 = !DILocation(line: 1463, column: 16, scope: !2241)
!2508 = !DILocation(line: 1465, column: 12, scope: !2241)
!2509 = !DILocation(line: 1465, column: 5, scope: !2241)
!2510 = !DILocation(line: 1466, column: 1, scope: !2241)
!2511 = distinct !DISubprogram(name: "unzOpenCurrentFile", scope: !3, file: !3, line: 1641, type: !731, scopeLine: 1642, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!2512 = !DILocalVariable(name: "file", arg: 1, scope: !2511, file: !3, line: 1641, type: !194)
!2513 = !DILocation(line: 1641, column: 48, scope: !2511)
!2514 = !DILocation(line: 1643, column: 32, scope: !2511)
!2515 = !DILocation(line: 1643, column: 12, scope: !2511)
!2516 = !DILocation(line: 1643, column: 5, scope: !2511)
!2517 = distinct !DISubprogram(name: "unzOpenCurrentFilePassword", scope: !3, file: !3, line: 1646, type: !2518, scopeLine: 1647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!28, !194, !69}
!2520 = !DILocalVariable(name: "file", arg: 1, scope: !2517, file: !3, line: 1646, type: !194)
!2521 = !DILocation(line: 1646, column: 56, scope: !2517)
!2522 = !DILocalVariable(name: "password", arg: 2, scope: !2517, file: !3, line: 1646, type: !69)
!2523 = !DILocation(line: 1646, column: 75, scope: !2517)
!2524 = !DILocation(line: 1648, column: 32, scope: !2517)
!2525 = !DILocation(line: 1648, column: 53, scope: !2517)
!2526 = !DILocation(line: 1648, column: 12, scope: !2517)
!2527 = !DILocation(line: 1648, column: 5, scope: !2517)
!2528 = distinct !DISubprogram(name: "unzOpenCurrentFile2", scope: !3, file: !3, line: 1651, type: !2529, scopeLine: 1652, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!28, !194, !1967, !1967, !28}
!2531 = !DILocalVariable(name: "file", arg: 1, scope: !2528, file: !3, line: 1651, type: !194)
!2532 = !DILocation(line: 1651, column: 49, scope: !2528)
!2533 = !DILocalVariable(name: "method", arg: 2, scope: !2528, file: !3, line: 1651, type: !1967)
!2534 = !DILocation(line: 1651, column: 60, scope: !2528)
!2535 = !DILocalVariable(name: "level", arg: 3, scope: !2528, file: !3, line: 1651, type: !1967)
!2536 = !DILocation(line: 1651, column: 73, scope: !2528)
!2537 = !DILocalVariable(name: "raw", arg: 4, scope: !2528, file: !3, line: 1651, type: !28)
!2538 = !DILocation(line: 1651, column: 84, scope: !2528)
!2539 = !DILocation(line: 1653, column: 32, scope: !2528)
!2540 = !DILocation(line: 1653, column: 38, scope: !2528)
!2541 = !DILocation(line: 1653, column: 46, scope: !2528)
!2542 = !DILocation(line: 1653, column: 53, scope: !2528)
!2543 = !DILocation(line: 1653, column: 12, scope: !2528)
!2544 = !DILocation(line: 1653, column: 5, scope: !2528)
!2545 = distinct !DISubprogram(name: "unzGetCurrentFileZStreamPos64", scope: !3, file: !3, line: 1658, type: !2546, scopeLine: 1659, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!51, !194}
!2548 = !DILocalVariable(name: "file", arg: 1, scope: !2545, file: !3, line: 1658, type: !194)
!2549 = !DILocation(line: 1658, column: 64, scope: !2545)
!2550 = !DILocalVariable(name: "s", scope: !2545, file: !3, line: 1660, type: !6)
!2551 = !DILocation(line: 1660, column: 14, scope: !2545)
!2552 = !DILocalVariable(name: "pfile_in_zip_read_info", scope: !2545, file: !3, line: 1661, type: !134)
!2553 = !DILocation(line: 1661, column: 32, scope: !2545)
!2554 = !DILocation(line: 1662, column: 17, scope: !2545)
!2555 = !DILocation(line: 1662, column: 6, scope: !2545)
!2556 = !DILocation(line: 1663, column: 9, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 1663, column: 9)
!2558 = !DILocation(line: 1663, column: 13, scope: !2557)
!2559 = !DILocation(line: 1663, column: 9, scope: !2545)
!2560 = !DILocation(line: 1664, column: 9, scope: !2557)
!2561 = !DILocation(line: 1665, column: 28, scope: !2545)
!2562 = !DILocation(line: 1665, column: 31, scope: !2545)
!2563 = !DILocation(line: 1665, column: 27, scope: !2545)
!2564 = !DILocation(line: 1666, column: 9, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 1666, column: 9)
!2566 = !DILocation(line: 1666, column: 31, scope: !2565)
!2567 = !DILocation(line: 1666, column: 9, scope: !2545)
!2568 = !DILocation(line: 1667, column: 9, scope: !2565)
!2569 = !DILocation(line: 1668, column: 12, scope: !2545)
!2570 = !DILocation(line: 1668, column: 36, scope: !2545)
!2571 = !DILocation(line: 1669, column: 26, scope: !2545)
!2572 = !DILocation(line: 1669, column: 50, scope: !2545)
!2573 = !DILocation(line: 1668, column: 51, scope: !2545)
!2574 = !DILocation(line: 1668, column: 5, scope: !2545)
!2575 = !DILocation(line: 1670, column: 1, scope: !2545)
!2576 = distinct !DISubprogram(name: "unzReadCurrentFile", scope: !3, file: !3, line: 1684, type: !2577, scopeLine: 1685, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!28, !194, !195, !122}
!2579 = !DILocalVariable(name: "file", arg: 1, scope: !2576, file: !3, line: 1684, type: !194)
!2580 = !DILocation(line: 1684, column: 49, scope: !2576)
!2581 = !DILocalVariable(name: "buf", arg: 2, scope: !2576, file: !3, line: 1684, type: !195)
!2582 = !DILocation(line: 1684, column: 61, scope: !2576)
!2583 = !DILocalVariable(name: "len", arg: 3, scope: !2576, file: !3, line: 1684, type: !122)
!2584 = !DILocation(line: 1684, column: 75, scope: !2576)
!2585 = !DILocalVariable(name: "err", scope: !2576, file: !3, line: 1686, type: !28)
!2586 = !DILocation(line: 1686, column: 9, scope: !2576)
!2587 = !DILocalVariable(name: "iRead", scope: !2576, file: !3, line: 1687, type: !121)
!2588 = !DILocation(line: 1687, column: 10, scope: !2576)
!2589 = !DILocalVariable(name: "s", scope: !2576, file: !3, line: 1688, type: !6)
!2590 = !DILocation(line: 1688, column: 14, scope: !2576)
!2591 = !DILocalVariable(name: "pfile_in_zip_read_info", scope: !2576, file: !3, line: 1689, type: !134)
!2592 = !DILocation(line: 1689, column: 32, scope: !2576)
!2593 = !DILocation(line: 1690, column: 9, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 1690, column: 9)
!2595 = !DILocation(line: 1690, column: 13, scope: !2594)
!2596 = !DILocation(line: 1690, column: 9, scope: !2576)
!2597 = !DILocation(line: 1691, column: 9, scope: !2594)
!2598 = !DILocation(line: 1692, column: 17, scope: !2576)
!2599 = !DILocation(line: 1692, column: 6, scope: !2576)
!2600 = !DILocation(line: 1693, column: 28, scope: !2576)
!2601 = !DILocation(line: 1693, column: 31, scope: !2576)
!2602 = !DILocation(line: 1693, column: 27, scope: !2576)
!2603 = !DILocation(line: 1695, column: 9, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 1695, column: 9)
!2605 = !DILocation(line: 1695, column: 31, scope: !2604)
!2606 = !DILocation(line: 1695, column: 9, scope: !2576)
!2607 = !DILocation(line: 1696, column: 9, scope: !2604)
!2608 = !DILocation(line: 1699, column: 9, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 1699, column: 9)
!2610 = !DILocation(line: 1699, column: 33, scope: !2609)
!2611 = !DILocation(line: 1699, column: 45, scope: !2609)
!2612 = !DILocation(line: 1699, column: 9, scope: !2576)
!2613 = !DILocation(line: 1700, column: 9, scope: !2609)
!2614 = !DILocation(line: 1701, column: 9, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 1701, column: 9)
!2616 = !DILocation(line: 1701, column: 12, scope: !2615)
!2617 = !DILocation(line: 1701, column: 9, scope: !2576)
!2618 = !DILocation(line: 1702, column: 9, scope: !2615)
!2619 = !DILocation(line: 1704, column: 55, scope: !2576)
!2620 = !DILocation(line: 1704, column: 5, scope: !2576)
!2621 = !DILocation(line: 1704, column: 29, scope: !2576)
!2622 = !DILocation(line: 1704, column: 36, scope: !2576)
!2623 = !DILocation(line: 1704, column: 45, scope: !2576)
!2624 = !DILocation(line: 1706, column: 54, scope: !2576)
!2625 = !DILocation(line: 1706, column: 5, scope: !2576)
!2626 = !DILocation(line: 1706, column: 29, scope: !2576)
!2627 = !DILocation(line: 1706, column: 36, scope: !2576)
!2628 = !DILocation(line: 1706, column: 46, scope: !2576)
!2629 = !DILocation(line: 1708, column: 10, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 1708, column: 9)
!2631 = !DILocation(line: 1708, column: 14, scope: !2630)
!2632 = !DILocation(line: 1708, column: 38, scope: !2630)
!2633 = !DILocation(line: 1708, column: 13, scope: !2630)
!2634 = !DILocation(line: 1708, column: 62, scope: !2630)
!2635 = !DILocation(line: 1709, column: 12, scope: !2630)
!2636 = !DILocation(line: 1709, column: 36, scope: !2630)
!2637 = !DILocation(line: 1709, column: 11, scope: !2630)
!2638 = !DILocation(line: 1708, column: 9, scope: !2576)
!2639 = !DILocation(line: 1711, column: 19, scope: !2630)
!2640 = !DILocation(line: 1711, column: 43, scope: !2630)
!2641 = !DILocation(line: 1711, column: 13, scope: !2630)
!2642 = !DILocation(line: 1710, column: 9, scope: !2630)
!2643 = !DILocation(line: 1710, column: 33, scope: !2630)
!2644 = !DILocation(line: 1710, column: 40, scope: !2630)
!2645 = !DILocation(line: 1710, column: 50, scope: !2630)
!2646 = !DILocation(line: 1713, column: 10, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 1713, column: 9)
!2648 = !DILocation(line: 1713, column: 14, scope: !2647)
!2649 = !DILocation(line: 1713, column: 38, scope: !2647)
!2650 = !DILocation(line: 1714, column: 12, scope: !2647)
!2651 = !DILocation(line: 1714, column: 36, scope: !2647)
!2652 = !DILocation(line: 1714, column: 43, scope: !2647)
!2653 = !DILocation(line: 1713, column: 58, scope: !2647)
!2654 = !DILocation(line: 1713, column: 13, scope: !2647)
!2655 = !DILocation(line: 1714, column: 53, scope: !2647)
!2656 = !DILocation(line: 1715, column: 11, scope: !2647)
!2657 = !DILocation(line: 1715, column: 35, scope: !2647)
!2658 = !DILocation(line: 1715, column: 10, scope: !2647)
!2659 = !DILocation(line: 1713, column: 9, scope: !2576)
!2660 = !DILocation(line: 1717, column: 19, scope: !2647)
!2661 = !DILocation(line: 1717, column: 43, scope: !2647)
!2662 = !DILocation(line: 1717, column: 13, scope: !2647)
!2663 = !DILocation(line: 1718, column: 13, scope: !2647)
!2664 = !DILocation(line: 1718, column: 37, scope: !2647)
!2665 = !DILocation(line: 1718, column: 44, scope: !2647)
!2666 = !DILocation(line: 1717, column: 63, scope: !2647)
!2667 = !DILocation(line: 1716, column: 9, scope: !2647)
!2668 = !DILocation(line: 1716, column: 33, scope: !2647)
!2669 = !DILocation(line: 1716, column: 40, scope: !2647)
!2670 = !DILocation(line: 1716, column: 50, scope: !2647)
!2671 = !DILocation(line: 1720, column: 5, scope: !2576)
!2672 = !DILocation(line: 1720, column: 12, scope: !2576)
!2673 = !DILocation(line: 1720, column: 36, scope: !2576)
!2674 = !DILocation(line: 1720, column: 43, scope: !2576)
!2675 = !DILocation(line: 1720, column: 52, scope: !2576)
!2676 = !DILocation(line: 1722, column: 14, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 1722, column: 13)
!2678 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 1721, column: 5)
!2679 = !DILocation(line: 1722, column: 38, scope: !2677)
!2680 = !DILocation(line: 1722, column: 45, scope: !2677)
!2681 = !DILocation(line: 1722, column: 53, scope: !2677)
!2682 = !DILocation(line: 1722, column: 58, scope: !2677)
!2683 = !DILocation(line: 1723, column: 14, scope: !2677)
!2684 = !DILocation(line: 1723, column: 38, scope: !2677)
!2685 = !DILocation(line: 1723, column: 58, scope: !2677)
!2686 = !DILocation(line: 1722, column: 13, scope: !2678)
!2687 = !DILocalVariable(name: "uReadThis", scope: !2688, file: !3, line: 1725, type: !121)
!2688 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 1724, column: 9)
!2689 = !DILocation(line: 1725, column: 18, scope: !2688)
!2690 = !DILocation(line: 1726, column: 17, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 1726, column: 17)
!2692 = !DILocation(line: 1726, column: 41, scope: !2691)
!2693 = !DILocation(line: 1726, column: 62, scope: !2691)
!2694 = !DILocation(line: 1726, column: 61, scope: !2691)
!2695 = !DILocation(line: 1726, column: 17, scope: !2688)
!2696 = !DILocation(line: 1727, column: 35, scope: !2691)
!2697 = !DILocation(line: 1727, column: 59, scope: !2691)
!2698 = !DILocation(line: 1727, column: 29, scope: !2691)
!2699 = !DILocation(line: 1727, column: 27, scope: !2691)
!2700 = !DILocation(line: 1727, column: 17, scope: !2691)
!2701 = !DILocation(line: 1728, column: 17, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 1728, column: 17)
!2703 = !DILocation(line: 1728, column: 27, scope: !2702)
!2704 = !DILocation(line: 1728, column: 17, scope: !2688)
!2705 = !DILocation(line: 1729, column: 17, scope: !2702)
!2706 = !DILocation(line: 1730, column: 17, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 1730, column: 17)
!2708 = !DILocation(line: 1734, column: 49, scope: !2707)
!2709 = !DILocation(line: 1730, column: 17, scope: !2688)
!2710 = !DILocation(line: 1735, column: 17, scope: !2707)
!2711 = !DILocation(line: 1736, column: 17, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 1736, column: 17)
!2713 = !DILocation(line: 1739, column: 35, scope: !2712)
!2714 = !DILocation(line: 1739, column: 33, scope: !2712)
!2715 = !DILocation(line: 1736, column: 17, scope: !2688)
!2716 = !DILocation(line: 1740, column: 17, scope: !2712)
!2717 = !DILocation(line: 1755, column: 55, scope: !2688)
!2718 = !DILocation(line: 1755, column: 13, scope: !2688)
!2719 = !DILocation(line: 1755, column: 37, scope: !2688)
!2720 = !DILocation(line: 1755, column: 52, scope: !2688)
!2721 = !DILocation(line: 1757, column: 59, scope: !2688)
!2722 = !DILocation(line: 1757, column: 13, scope: !2688)
!2723 = !DILocation(line: 1757, column: 37, scope: !2688)
!2724 = !DILocation(line: 1757, column: 57, scope: !2688)
!2725 = !DILocation(line: 1760, column: 25, scope: !2688)
!2726 = !DILocation(line: 1760, column: 49, scope: !2688)
!2727 = !DILocation(line: 1759, column: 13, scope: !2688)
!2728 = !DILocation(line: 1759, column: 37, scope: !2688)
!2729 = !DILocation(line: 1759, column: 44, scope: !2688)
!2730 = !DILocation(line: 1759, column: 52, scope: !2688)
!2731 = !DILocation(line: 1761, column: 61, scope: !2688)
!2732 = !DILocation(line: 1761, column: 13, scope: !2688)
!2733 = !DILocation(line: 1761, column: 37, scope: !2688)
!2734 = !DILocation(line: 1761, column: 44, scope: !2688)
!2735 = !DILocation(line: 1761, column: 53, scope: !2688)
!2736 = !DILocation(line: 1762, column: 9, scope: !2688)
!2737 = !DILocation(line: 1764, column: 14, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 1764, column: 13)
!2739 = !DILocation(line: 1764, column: 38, scope: !2738)
!2740 = !DILocation(line: 1764, column: 56, scope: !2738)
!2741 = !DILocation(line: 1764, column: 61, scope: !2738)
!2742 = !DILocation(line: 1764, column: 65, scope: !2738)
!2743 = !DILocation(line: 1764, column: 89, scope: !2738)
!2744 = !DILocation(line: 1764, column: 64, scope: !2738)
!2745 = !DILocation(line: 1764, column: 13, scope: !2678)
!2746 = !DILocalVariable(name: "uDoCopy", scope: !2747, file: !3, line: 1766, type: !121)
!2747 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 1765, column: 9)
!2748 = !DILocation(line: 1766, column: 18, scope: !2747)
!2749 = !DILocalVariable(name: "i", scope: !2747, file: !3, line: 1766, type: !121)
!2750 = !DILocation(line: 1766, column: 26, scope: !2747)
!2751 = !DILocation(line: 1768, column: 18, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 1768, column: 17)
!2753 = !DILocation(line: 1768, column: 42, scope: !2752)
!2754 = !DILocation(line: 1768, column: 49, scope: !2752)
!2755 = !DILocation(line: 1768, column: 58, scope: !2752)
!2756 = !DILocation(line: 1768, column: 64, scope: !2752)
!2757 = !DILocation(line: 1769, column: 18, scope: !2752)
!2758 = !DILocation(line: 1769, column: 42, scope: !2752)
!2759 = !DILocation(line: 1769, column: 63, scope: !2752)
!2760 = !DILocation(line: 1768, column: 17, scope: !2747)
!2761 = !DILocation(line: 1770, column: 25, scope: !2752)
!2762 = !DILocation(line: 1770, column: 30, scope: !2752)
!2763 = !DILocation(line: 1770, column: 24, scope: !2752)
!2764 = !DILocation(line: 1770, column: 47, scope: !2752)
!2765 = !DILocation(line: 1770, column: 17, scope: !2752)
!2766 = !DILocation(line: 1772, column: 17, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 1772, column: 17)
!2768 = !DILocation(line: 1772, column: 41, scope: !2767)
!2769 = !DILocation(line: 1772, column: 48, scope: !2767)
!2770 = !DILocation(line: 1773, column: 29, scope: !2767)
!2771 = !DILocation(line: 1773, column: 53, scope: !2767)
!2772 = !DILocation(line: 1773, column: 60, scope: !2767)
!2773 = !DILocation(line: 1772, column: 58, scope: !2767)
!2774 = !DILocation(line: 1772, column: 17, scope: !2747)
!2775 = !DILocation(line: 1774, column: 27, scope: !2767)
!2776 = !DILocation(line: 1774, column: 51, scope: !2767)
!2777 = !DILocation(line: 1774, column: 58, scope: !2767)
!2778 = !DILocation(line: 1774, column: 25, scope: !2767)
!2779 = !DILocation(line: 1774, column: 17, scope: !2767)
!2780 = !DILocation(line: 1776, column: 27, scope: !2767)
!2781 = !DILocation(line: 1776, column: 51, scope: !2767)
!2782 = !DILocation(line: 1776, column: 58, scope: !2767)
!2783 = !DILocation(line: 1776, column: 25, scope: !2767)
!2784 = !DILocation(line: 1778, column: 19, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 1778, column: 13)
!2786 = !DILocation(line: 1778, column: 18, scope: !2785)
!2787 = !DILocation(line: 1778, column: 22, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 1778, column: 13)
!2789 = !DILocation(line: 1778, column: 24, scope: !2788)
!2790 = !DILocation(line: 1778, column: 23, scope: !2788)
!2791 = !DILocation(line: 1778, column: 13, scope: !2785)
!2792 = !DILocation(line: 1780, column: 27, scope: !2788)
!2793 = !DILocation(line: 1780, column: 51, scope: !2788)
!2794 = !DILocation(line: 1780, column: 58, scope: !2788)
!2795 = !DILocation(line: 1780, column: 66, scope: !2788)
!2796 = !DILocation(line: 1780, column: 65, scope: !2788)
!2797 = !DILocation(line: 1780, column: 25, scope: !2788)
!2798 = !DILocation(line: 1779, column: 19, scope: !2788)
!2799 = !DILocation(line: 1779, column: 43, scope: !2788)
!2800 = !DILocation(line: 1779, column: 50, scope: !2788)
!2801 = !DILocation(line: 1779, column: 59, scope: !2788)
!2802 = !DILocation(line: 1779, column: 58, scope: !2788)
!2803 = !DILocation(line: 1779, column: 62, scope: !2788)
!2804 = !DILocation(line: 1779, column: 17, scope: !2788)
!2805 = !DILocation(line: 1778, column: 33, scope: !2788)
!2806 = !DILocation(line: 1778, column: 13, scope: !2788)
!2807 = distinct !{!2807, !2791, !2808, !1401}
!2808 = !DILocation(line: 1780, column: 67, scope: !2785)
!2809 = !DILocation(line: 1782, column: 52, scope: !2747)
!2810 = !DILocation(line: 1782, column: 76, scope: !2747)
!2811 = !DILocation(line: 1782, column: 91, scope: !2747)
!2812 = !DILocation(line: 1782, column: 89, scope: !2747)
!2813 = !DILocation(line: 1782, column: 13, scope: !2747)
!2814 = !DILocation(line: 1782, column: 37, scope: !2747)
!2815 = !DILocation(line: 1782, column: 50, scope: !2747)
!2816 = !DILocation(line: 1784, column: 51, scope: !2747)
!2817 = !DILocation(line: 1784, column: 75, scope: !2747)
!2818 = !DILocation(line: 1785, column: 33, scope: !2747)
!2819 = !DILocation(line: 1785, column: 57, scope: !2747)
!2820 = !DILocation(line: 1785, column: 64, scope: !2747)
!2821 = !DILocation(line: 1786, column: 33, scope: !2747)
!2822 = !DILocation(line: 1784, column: 45, scope: !2747)
!2823 = !DILocation(line: 1784, column: 13, scope: !2747)
!2824 = !DILocation(line: 1784, column: 37, scope: !2747)
!2825 = !DILocation(line: 1784, column: 43, scope: !2747)
!2826 = !DILocation(line: 1787, column: 61, scope: !2747)
!2827 = !DILocation(line: 1787, column: 13, scope: !2747)
!2828 = !DILocation(line: 1787, column: 37, scope: !2747)
!2829 = !DILocation(line: 1787, column: 59, scope: !2747)
!2830 = !DILocation(line: 1788, column: 56, scope: !2747)
!2831 = !DILocation(line: 1788, column: 13, scope: !2747)
!2832 = !DILocation(line: 1788, column: 37, scope: !2747)
!2833 = !DILocation(line: 1788, column: 44, scope: !2747)
!2834 = !DILocation(line: 1788, column: 53, scope: !2747)
!2835 = !DILocation(line: 1789, column: 57, scope: !2747)
!2836 = !DILocation(line: 1789, column: 13, scope: !2747)
!2837 = !DILocation(line: 1789, column: 37, scope: !2747)
!2838 = !DILocation(line: 1789, column: 44, scope: !2747)
!2839 = !DILocation(line: 1789, column: 54, scope: !2747)
!2840 = !DILocation(line: 1790, column: 56, scope: !2747)
!2841 = !DILocation(line: 1790, column: 13, scope: !2747)
!2842 = !DILocation(line: 1790, column: 37, scope: !2747)
!2843 = !DILocation(line: 1790, column: 44, scope: !2747)
!2844 = !DILocation(line: 1790, column: 53, scope: !2747)
!2845 = !DILocation(line: 1791, column: 55, scope: !2747)
!2846 = !DILocation(line: 1791, column: 13, scope: !2747)
!2847 = !DILocation(line: 1791, column: 37, scope: !2747)
!2848 = !DILocation(line: 1791, column: 44, scope: !2747)
!2849 = !DILocation(line: 1791, column: 52, scope: !2747)
!2850 = !DILocation(line: 1792, column: 57, scope: !2747)
!2851 = !DILocation(line: 1792, column: 13, scope: !2747)
!2852 = !DILocation(line: 1792, column: 37, scope: !2747)
!2853 = !DILocation(line: 1792, column: 44, scope: !2747)
!2854 = !DILocation(line: 1792, column: 54, scope: !2747)
!2855 = !DILocation(line: 1793, column: 22, scope: !2747)
!2856 = !DILocation(line: 1793, column: 19, scope: !2747)
!2857 = !DILocation(line: 1794, column: 9, scope: !2747)
!2858 = !DILocation(line: 1795, column: 18, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 1795, column: 18)
!2860 = !DILocation(line: 1795, column: 42, scope: !2859)
!2861 = !DILocation(line: 1795, column: 60, scope: !2859)
!2862 = !DILocation(line: 1795, column: 18, scope: !2738)
!2863 = !DILocation(line: 1837, column: 9, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 1796, column: 9)
!2865 = !DILocalVariable(name: "uTotalOutBefore", scope: !2866, file: !3, line: 1840, type: !51)
!2866 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 1839, column: 9)
!2867 = !DILocation(line: 1840, column: 22, scope: !2866)
!2868 = !DILocalVariable(name: "uTotalOutAfter", scope: !2866, file: !3, line: 1840, type: !51)
!2869 = !DILocation(line: 1840, column: 38, scope: !2866)
!2870 = !DILocalVariable(name: "bufBefore", scope: !2866, file: !3, line: 1841, type: !2871)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!2873 = !DILocation(line: 1841, column: 26, scope: !2866)
!2874 = !DILocalVariable(name: "uOutThis", scope: !2866, file: !3, line: 1842, type: !51)
!2875 = !DILocation(line: 1842, column: 22, scope: !2866)
!2876 = !DILocalVariable(name: "flush", scope: !2866, file: !3, line: 1843, type: !28)
!2877 = !DILocation(line: 1843, column: 17, scope: !2866)
!2878 = !DILocation(line: 1845, column: 31, scope: !2866)
!2879 = !DILocation(line: 1845, column: 55, scope: !2866)
!2880 = !DILocation(line: 1845, column: 62, scope: !2866)
!2881 = !DILocation(line: 1845, column: 29, scope: !2866)
!2882 = !DILocation(line: 1846, column: 25, scope: !2866)
!2883 = !DILocation(line: 1846, column: 49, scope: !2866)
!2884 = !DILocation(line: 1846, column: 56, scope: !2866)
!2885 = !DILocation(line: 1846, column: 23, scope: !2866)
!2886 = !DILocation(line: 1854, column: 26, scope: !2866)
!2887 = !DILocation(line: 1854, column: 50, scope: !2866)
!2888 = !DILocation(line: 1854, column: 57, scope: !2866)
!2889 = !DILocation(line: 1854, column: 17, scope: !2866)
!2890 = !DILocation(line: 1854, column: 16, scope: !2866)
!2891 = !DILocation(line: 1856, column: 18, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 1856, column: 17)
!2893 = !DILocation(line: 1856, column: 21, scope: !2892)
!2894 = !DILocation(line: 1856, column: 26, scope: !2892)
!2895 = !DILocation(line: 1856, column: 30, scope: !2892)
!2896 = !DILocation(line: 1856, column: 54, scope: !2892)
!2897 = !DILocation(line: 1856, column: 61, scope: !2892)
!2898 = !DILocation(line: 1856, column: 64, scope: !2892)
!2899 = !DILocation(line: 1856, column: 17, scope: !2866)
!2900 = !DILocation(line: 1857, column: 19, scope: !2892)
!2901 = !DILocation(line: 1857, column: 15, scope: !2892)
!2902 = !DILocation(line: 1859, column: 30, scope: !2866)
!2903 = !DILocation(line: 1859, column: 54, scope: !2866)
!2904 = !DILocation(line: 1859, column: 61, scope: !2866)
!2905 = !DILocation(line: 1859, column: 28, scope: !2866)
!2906 = !DILocation(line: 1860, column: 24, scope: !2866)
!2907 = !DILocation(line: 1860, column: 39, scope: !2866)
!2908 = !DILocation(line: 1860, column: 38, scope: !2866)
!2909 = !DILocation(line: 1860, column: 22, scope: !2866)
!2910 = !DILocation(line: 1862, column: 52, scope: !2866)
!2911 = !DILocation(line: 1862, column: 76, scope: !2866)
!2912 = !DILocation(line: 1862, column: 91, scope: !2866)
!2913 = !DILocation(line: 1862, column: 89, scope: !2866)
!2914 = !DILocation(line: 1862, column: 13, scope: !2866)
!2915 = !DILocation(line: 1862, column: 37, scope: !2866)
!2916 = !DILocation(line: 1862, column: 50, scope: !2866)
!2917 = !DILocation(line: 1865, column: 23, scope: !2866)
!2918 = !DILocation(line: 1865, column: 47, scope: !2866)
!2919 = !DILocation(line: 1865, column: 53, scope: !2866)
!2920 = !DILocation(line: 1866, column: 32, scope: !2866)
!2921 = !DILocation(line: 1866, column: 25, scope: !2866)
!2922 = !DILocation(line: 1865, column: 17, scope: !2866)
!2923 = !DILocation(line: 1864, column: 13, scope: !2866)
!2924 = !DILocation(line: 1864, column: 37, scope: !2866)
!2925 = !DILocation(line: 1864, column: 43, scope: !2866)
!2926 = !DILocation(line: 1869, column: 17, scope: !2866)
!2927 = !DILocation(line: 1868, column: 13, scope: !2866)
!2928 = !DILocation(line: 1868, column: 37, scope: !2866)
!2929 = !DILocation(line: 1868, column: 60, scope: !2866)
!2930 = !DILocation(line: 1871, column: 29, scope: !2866)
!2931 = !DILocation(line: 1871, column: 46, scope: !2866)
!2932 = !DILocation(line: 1871, column: 44, scope: !2866)
!2933 = !DILocation(line: 1871, column: 22, scope: !2866)
!2934 = !DILocation(line: 1871, column: 19, scope: !2866)
!2935 = !DILocation(line: 1873, column: 17, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 1873, column: 17)
!2937 = !DILocation(line: 1873, column: 20, scope: !2936)
!2938 = !DILocation(line: 1873, column: 17, scope: !2866)
!2939 = !DILocation(line: 1874, column: 25, scope: !2936)
!2940 = !DILocation(line: 1874, column: 30, scope: !2936)
!2941 = !DILocation(line: 1874, column: 24, scope: !2936)
!2942 = !DILocation(line: 1874, column: 47, scope: !2936)
!2943 = !DILocation(line: 1874, column: 17, scope: !2936)
!2944 = !DILocation(line: 1875, column: 17, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 1875, column: 17)
!2946 = !DILocation(line: 1875, column: 20, scope: !2945)
!2947 = !DILocation(line: 1875, column: 17, scope: !2866)
!2948 = !DILocation(line: 1876, column: 17, scope: !2945)
!2949 = distinct !{!2949, !2671, !2950, !1401}
!2950 = !DILocation(line: 1878, column: 5, scope: !2576)
!2951 = !DILocation(line: 1880, column: 9, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 1880, column: 9)
!2953 = !DILocation(line: 1880, column: 12, scope: !2952)
!2954 = !DILocation(line: 1880, column: 9, scope: !2576)
!2955 = !DILocation(line: 1881, column: 16, scope: !2952)
!2956 = !DILocation(line: 1881, column: 9, scope: !2952)
!2957 = !DILocation(line: 1882, column: 12, scope: !2576)
!2958 = !DILocation(line: 1882, column: 5, scope: !2576)
!2959 = !DILocation(line: 1883, column: 1, scope: !2576)
!2960 = distinct !DISubprogram(name: "unztell", scope: !3, file: !3, line: 1889, type: !2961, scopeLine: 1890, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!190, !194}
!2963 = !DILocalVariable(name: "file", arg: 1, scope: !2960, file: !3, line: 1889, type: !194)
!2964 = !DILocation(line: 1889, column: 41, scope: !2960)
!2965 = !DILocalVariable(name: "s", scope: !2960, file: !3, line: 1891, type: !6)
!2966 = !DILocation(line: 1891, column: 14, scope: !2960)
!2967 = !DILocalVariable(name: "pfile_in_zip_read_info", scope: !2960, file: !3, line: 1892, type: !134)
!2968 = !DILocation(line: 1892, column: 32, scope: !2960)
!2969 = !DILocation(line: 1893, column: 9, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 1893, column: 9)
!2971 = !DILocation(line: 1893, column: 13, scope: !2970)
!2972 = !DILocation(line: 1893, column: 9, scope: !2960)
!2973 = !DILocation(line: 1894, column: 9, scope: !2970)
!2974 = !DILocation(line: 1895, column: 17, scope: !2960)
!2975 = !DILocation(line: 1895, column: 6, scope: !2960)
!2976 = !DILocation(line: 1896, column: 28, scope: !2960)
!2977 = !DILocation(line: 1896, column: 31, scope: !2960)
!2978 = !DILocation(line: 1896, column: 27, scope: !2960)
!2979 = !DILocation(line: 1898, column: 9, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 1898, column: 9)
!2981 = !DILocation(line: 1898, column: 31, scope: !2980)
!2982 = !DILocation(line: 1898, column: 9, scope: !2960)
!2983 = !DILocation(line: 1899, column: 9, scope: !2980)
!2984 = !DILocation(line: 1901, column: 21, scope: !2960)
!2985 = !DILocation(line: 1901, column: 45, scope: !2960)
!2986 = !DILocation(line: 1901, column: 52, scope: !2960)
!2987 = !DILocation(line: 1901, column: 5, scope: !2960)
!2988 = !DILocation(line: 1902, column: 1, scope: !2960)
!2989 = distinct !DISubprogram(name: "unztell64", scope: !3, file: !3, line: 1904, type: !2546, scopeLine: 1905, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!2990 = !DILocalVariable(name: "file", arg: 1, scope: !2989, file: !3, line: 1904, type: !194)
!2991 = !DILocation(line: 1904, column: 44, scope: !2989)
!2992 = !DILocalVariable(name: "s", scope: !2989, file: !3, line: 1907, type: !6)
!2993 = !DILocation(line: 1907, column: 14, scope: !2989)
!2994 = !DILocalVariable(name: "pfile_in_zip_read_info", scope: !2989, file: !3, line: 1908, type: !134)
!2995 = !DILocation(line: 1908, column: 32, scope: !2989)
!2996 = !DILocation(line: 1909, column: 9, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1909, column: 9)
!2998 = !DILocation(line: 1909, column: 13, scope: !2997)
!2999 = !DILocation(line: 1909, column: 9, scope: !2989)
!3000 = !DILocation(line: 1910, column: 9, scope: !2997)
!3001 = !DILocation(line: 1911, column: 17, scope: !2989)
!3002 = !DILocation(line: 1911, column: 6, scope: !2989)
!3003 = !DILocation(line: 1912, column: 28, scope: !2989)
!3004 = !DILocation(line: 1912, column: 31, scope: !2989)
!3005 = !DILocation(line: 1912, column: 27, scope: !2989)
!3006 = !DILocation(line: 1914, column: 9, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1914, column: 9)
!3008 = !DILocation(line: 1914, column: 31, scope: !3007)
!3009 = !DILocation(line: 1914, column: 9, scope: !2989)
!3010 = !DILocation(line: 1915, column: 9, scope: !3007)
!3011 = !DILocation(line: 1917, column: 12, scope: !2989)
!3012 = !DILocation(line: 1917, column: 36, scope: !2989)
!3013 = !DILocation(line: 1917, column: 5, scope: !2989)
!3014 = !DILocation(line: 1918, column: 1, scope: !2989)
!3015 = distinct !DISubprogram(name: "unzeof", scope: !3, file: !3, line: 1924, type: !731, scopeLine: 1925, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3016 = !DILocalVariable(name: "file", arg: 1, scope: !3015, file: !3, line: 1924, type: !194)
!3017 = !DILocation(line: 1924, column: 36, scope: !3015)
!3018 = !DILocalVariable(name: "s", scope: !3015, file: !3, line: 1926, type: !6)
!3019 = !DILocation(line: 1926, column: 14, scope: !3015)
!3020 = !DILocalVariable(name: "pfile_in_zip_read_info", scope: !3015, file: !3, line: 1927, type: !134)
!3021 = !DILocation(line: 1927, column: 32, scope: !3015)
!3022 = !DILocation(line: 1928, column: 9, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 1928, column: 9)
!3024 = !DILocation(line: 1928, column: 13, scope: !3023)
!3025 = !DILocation(line: 1928, column: 9, scope: !3015)
!3026 = !DILocation(line: 1929, column: 9, scope: !3023)
!3027 = !DILocation(line: 1930, column: 17, scope: !3015)
!3028 = !DILocation(line: 1930, column: 6, scope: !3015)
!3029 = !DILocation(line: 1931, column: 28, scope: !3015)
!3030 = !DILocation(line: 1931, column: 31, scope: !3015)
!3031 = !DILocation(line: 1931, column: 27, scope: !3015)
!3032 = !DILocation(line: 1933, column: 9, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 1933, column: 9)
!3034 = !DILocation(line: 1933, column: 31, scope: !3033)
!3035 = !DILocation(line: 1933, column: 9, scope: !3015)
!3036 = !DILocation(line: 1934, column: 9, scope: !3033)
!3037 = !DILocation(line: 1936, column: 9, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 1936, column: 9)
!3039 = !DILocation(line: 1936, column: 33, scope: !3038)
!3040 = !DILocation(line: 1936, column: 56, scope: !3038)
!3041 = !DILocation(line: 1936, column: 9, scope: !3015)
!3042 = !DILocation(line: 1937, column: 9, scope: !3038)
!3043 = !DILocation(line: 1939, column: 9, scope: !3038)
!3044 = !DILocation(line: 1940, column: 1, scope: !3015)
!3045 = distinct !DISubprogram(name: "unzGetLocalExtrafield", scope: !3, file: !3, line: 1956, type: !2577, scopeLine: 1957, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3046 = !DILocalVariable(name: "file", arg: 1, scope: !3045, file: !3, line: 1956, type: !194)
!3047 = !DILocation(line: 1956, column: 51, scope: !3045)
!3048 = !DILocalVariable(name: "buf", arg: 2, scope: !3045, file: !3, line: 1956, type: !195)
!3049 = !DILocation(line: 1956, column: 63, scope: !3045)
!3050 = !DILocalVariable(name: "len", arg: 3, scope: !3045, file: !3, line: 1956, type: !122)
!3051 = !DILocation(line: 1956, column: 77, scope: !3045)
!3052 = !DILocalVariable(name: "s", scope: !3045, file: !3, line: 1958, type: !6)
!3053 = !DILocation(line: 1958, column: 14, scope: !3045)
!3054 = !DILocalVariable(name: "pfile_in_zip_read_info", scope: !3045, file: !3, line: 1959, type: !134)
!3055 = !DILocation(line: 1959, column: 32, scope: !3045)
!3056 = !DILocalVariable(name: "read_now", scope: !3045, file: !3, line: 1960, type: !121)
!3057 = !DILocation(line: 1960, column: 10, scope: !3045)
!3058 = !DILocalVariable(name: "size_to_read", scope: !3045, file: !3, line: 1961, type: !51)
!3059 = !DILocation(line: 1961, column: 14, scope: !3045)
!3060 = !DILocation(line: 1963, column: 9, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1963, column: 9)
!3062 = !DILocation(line: 1963, column: 13, scope: !3061)
!3063 = !DILocation(line: 1963, column: 9, scope: !3045)
!3064 = !DILocation(line: 1964, column: 9, scope: !3061)
!3065 = !DILocation(line: 1965, column: 17, scope: !3045)
!3066 = !DILocation(line: 1965, column: 6, scope: !3045)
!3067 = !DILocation(line: 1966, column: 28, scope: !3045)
!3068 = !DILocation(line: 1966, column: 31, scope: !3045)
!3069 = !DILocation(line: 1966, column: 27, scope: !3045)
!3070 = !DILocation(line: 1968, column: 9, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1968, column: 9)
!3072 = !DILocation(line: 1968, column: 31, scope: !3071)
!3073 = !DILocation(line: 1968, column: 9, scope: !3045)
!3074 = !DILocation(line: 1969, column: 9, scope: !3071)
!3075 = !DILocation(line: 1971, column: 21, scope: !3045)
!3076 = !DILocation(line: 1971, column: 45, scope: !3045)
!3077 = !DILocation(line: 1972, column: 17, scope: !3045)
!3078 = !DILocation(line: 1972, column: 41, scope: !3045)
!3079 = !DILocation(line: 1971, column: 67, scope: !3045)
!3080 = !DILocation(line: 1971, column: 18, scope: !3045)
!3081 = !DILocation(line: 1974, column: 9, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1974, column: 9)
!3083 = !DILocation(line: 1974, column: 12, scope: !3082)
!3084 = !DILocation(line: 1974, column: 9, scope: !3045)
!3085 = !DILocation(line: 1975, column: 21, scope: !3082)
!3086 = !DILocation(line: 1975, column: 16, scope: !3082)
!3087 = !DILocation(line: 1975, column: 9, scope: !3082)
!3088 = !DILocation(line: 1977, column: 9, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1977, column: 9)
!3090 = !DILocation(line: 1977, column: 13, scope: !3089)
!3091 = !DILocation(line: 1977, column: 12, scope: !3089)
!3092 = !DILocation(line: 1977, column: 9, scope: !3045)
!3093 = !DILocation(line: 1978, column: 26, scope: !3089)
!3094 = !DILocation(line: 1978, column: 20, scope: !3089)
!3095 = !DILocation(line: 1978, column: 18, scope: !3089)
!3096 = !DILocation(line: 1978, column: 9, scope: !3089)
!3097 = !DILocation(line: 1980, column: 26, scope: !3089)
!3098 = !DILocation(line: 1980, column: 18, scope: !3089)
!3099 = !DILocation(line: 1982, column: 9, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1982, column: 9)
!3101 = !DILocation(line: 1982, column: 17, scope: !3100)
!3102 = !DILocation(line: 1982, column: 9, scope: !3045)
!3103 = !DILocation(line: 1983, column: 9, scope: !3100)
!3104 = !DILocation(line: 1985, column: 9, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1985, column: 9)
!3106 = !DILocation(line: 1989, column: 38, scope: !3105)
!3107 = !DILocation(line: 1985, column: 9, scope: !3045)
!3108 = !DILocation(line: 1990, column: 9, scope: !3105)
!3109 = !DILocation(line: 1992, column: 9, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1992, column: 9)
!3111 = !DILocation(line: 1994, column: 30, scope: !3110)
!3112 = !DILocation(line: 1994, column: 28, scope: !3110)
!3113 = !DILocation(line: 1992, column: 9, scope: !3045)
!3114 = !DILocation(line: 1995, column: 9, scope: !3110)
!3115 = !DILocation(line: 1997, column: 17, scope: !3045)
!3116 = !DILocation(line: 1997, column: 5, scope: !3045)
!3117 = !DILocation(line: 1998, column: 1, scope: !3045)
!3118 = distinct !DISubprogram(name: "unzGetGlobalComment", scope: !3, file: !3, line: 2051, type: !3119, scopeLine: 2052, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!28, !194, !139, !34}
!3121 = !DILocalVariable(name: "file", arg: 1, scope: !3118, file: !3, line: 2051, type: !194)
!3122 = !DILocation(line: 2051, column: 49, scope: !3118)
!3123 = !DILocalVariable(name: "szComment", arg: 2, scope: !3118, file: !3, line: 2051, type: !139)
!3124 = !DILocation(line: 2051, column: 62, scope: !3118)
!3125 = !DILocalVariable(name: "uSizeBuf", arg: 3, scope: !3118, file: !3, line: 2051, type: !34)
!3126 = !DILocation(line: 2051, column: 79, scope: !3118)
!3127 = !DILocalVariable(name: "s", scope: !3118, file: !3, line: 2053, type: !6)
!3128 = !DILocation(line: 2053, column: 14, scope: !3118)
!3129 = !DILocalVariable(name: "uReadThis", scope: !3118, file: !3, line: 2054, type: !34)
!3130 = !DILocation(line: 2054, column: 11, scope: !3118)
!3131 = !DILocation(line: 2055, column: 9, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 2055, column: 9)
!3133 = !DILocation(line: 2055, column: 13, scope: !3132)
!3134 = !DILocation(line: 2055, column: 9, scope: !3118)
!3135 = !DILocation(line: 2056, column: 9, scope: !3132)
!3136 = !DILocation(line: 2057, column: 17, scope: !3118)
!3137 = !DILocation(line: 2057, column: 6, scope: !3118)
!3138 = !DILocation(line: 2059, column: 17, scope: !3118)
!3139 = !DILocation(line: 2059, column: 15, scope: !3118)
!3140 = !DILocation(line: 2060, column: 9, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 2060, column: 9)
!3142 = !DILocation(line: 2060, column: 19, scope: !3141)
!3143 = !DILocation(line: 2060, column: 22, scope: !3141)
!3144 = !DILocation(line: 2060, column: 25, scope: !3141)
!3145 = !DILocation(line: 2060, column: 18, scope: !3141)
!3146 = !DILocation(line: 2060, column: 9, scope: !3118)
!3147 = !DILocation(line: 2061, column: 21, scope: !3141)
!3148 = !DILocation(line: 2061, column: 24, scope: !3141)
!3149 = !DILocation(line: 2061, column: 27, scope: !3141)
!3150 = !DILocation(line: 2061, column: 19, scope: !3141)
!3151 = !DILocation(line: 2061, column: 9, scope: !3141)
!3152 = !DILocation(line: 2063, column: 9, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 2063, column: 9)
!3154 = !DILocation(line: 2063, column: 86, scope: !3153)
!3155 = !DILocation(line: 2063, column: 9, scope: !3118)
!3156 = !DILocation(line: 2064, column: 9, scope: !3153)
!3157 = !DILocation(line: 2066, column: 9, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 2066, column: 9)
!3159 = !DILocation(line: 2066, column: 18, scope: !3158)
!3160 = !DILocation(line: 2066, column: 9, scope: !3118)
!3161 = !DILocation(line: 2068, column: 8, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 2067, column: 5)
!3163 = !DILocation(line: 2068, column: 17, scope: !3162)
!3164 = !DILocation(line: 2069, column: 11, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 2069, column: 11)
!3166 = !DILocation(line: 2069, column: 69, scope: !3165)
!3167 = !DILocation(line: 2069, column: 67, scope: !3165)
!3168 = !DILocation(line: 2069, column: 11, scope: !3162)
!3169 = !DILocation(line: 2070, column: 9, scope: !3165)
!3170 = !DILocation(line: 2071, column: 5, scope: !3162)
!3171 = !DILocation(line: 2073, column: 10, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 2073, column: 9)
!3173 = !DILocation(line: 2073, column: 20, scope: !3172)
!3174 = !DILocation(line: 2073, column: 29, scope: !3172)
!3175 = !DILocation(line: 2073, column: 33, scope: !3172)
!3176 = !DILocation(line: 2073, column: 44, scope: !3172)
!3177 = !DILocation(line: 2073, column: 47, scope: !3172)
!3178 = !DILocation(line: 2073, column: 50, scope: !3172)
!3179 = !DILocation(line: 2073, column: 42, scope: !3172)
!3180 = !DILocation(line: 2073, column: 9, scope: !3118)
!3181 = !DILocation(line: 2074, column: 11, scope: !3172)
!3182 = !DILocation(line: 2074, column: 21, scope: !3172)
!3183 = !DILocation(line: 2074, column: 24, scope: !3172)
!3184 = !DILocation(line: 2074, column: 27, scope: !3172)
!3185 = !DILocation(line: 2074, column: 20, scope: !3172)
!3186 = !DILocation(line: 2074, column: 40, scope: !3172)
!3187 = !DILocation(line: 2074, column: 9, scope: !3172)
!3188 = !DILocation(line: 2075, column: 17, scope: !3118)
!3189 = !DILocation(line: 2075, column: 12, scope: !3118)
!3190 = !DILocation(line: 2075, column: 5, scope: !3118)
!3191 = !DILocation(line: 2076, column: 1, scope: !3118)
!3192 = distinct !DISubprogram(name: "unzGetOffset64", scope: !3, file: !3, line: 2079, type: !2546, scopeLine: 2080, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3193 = !DILocalVariable(name: "file", arg: 1, scope: !3192, file: !3, line: 2079, type: !194)
!3194 = !DILocation(line: 2079, column: 48, scope: !3192)
!3195 = !DILocalVariable(name: "s", scope: !3192, file: !3, line: 2081, type: !6)
!3196 = !DILocation(line: 2081, column: 14, scope: !3192)
!3197 = !DILocation(line: 2083, column: 9, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 2083, column: 9)
!3199 = !DILocation(line: 2083, column: 13, scope: !3198)
!3200 = !DILocation(line: 2083, column: 9, scope: !3192)
!3201 = !DILocation(line: 2084, column: 11, scope: !3198)
!3202 = !DILocation(line: 2085, column: 17, scope: !3192)
!3203 = !DILocation(line: 2085, column: 6, scope: !3192)
!3204 = !DILocation(line: 2086, column: 10, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 2086, column: 9)
!3206 = !DILocation(line: 2086, column: 13, scope: !3205)
!3207 = !DILocation(line: 2086, column: 9, scope: !3192)
!3208 = !DILocation(line: 2087, column: 7, scope: !3205)
!3209 = !DILocation(line: 2088, column: 9, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 2088, column: 9)
!3211 = !DILocation(line: 2088, column: 12, scope: !3210)
!3212 = !DILocation(line: 2088, column: 15, scope: !3210)
!3213 = !DILocation(line: 2088, column: 28, scope: !3210)
!3214 = !DILocation(line: 2088, column: 33, scope: !3210)
!3215 = !DILocation(line: 2088, column: 36, scope: !3210)
!3216 = !DILocation(line: 2088, column: 39, scope: !3210)
!3217 = !DILocation(line: 2088, column: 42, scope: !3210)
!3218 = !DILocation(line: 2088, column: 55, scope: !3210)
!3219 = !DILocation(line: 2088, column: 9, scope: !3192)
!3220 = !DILocation(line: 2089, column: 11, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 2089, column: 11)
!3222 = !DILocation(line: 2089, column: 14, scope: !3221)
!3223 = !DILocation(line: 2089, column: 24, scope: !3221)
!3224 = !DILocation(line: 2089, column: 27, scope: !3221)
!3225 = !DILocation(line: 2089, column: 30, scope: !3221)
!3226 = !DILocation(line: 2089, column: 22, scope: !3221)
!3227 = !DILocation(line: 2089, column: 11, scope: !3210)
!3228 = !DILocation(line: 2090, column: 10, scope: !3221)
!3229 = !DILocation(line: 2091, column: 12, scope: !3192)
!3230 = !DILocation(line: 2091, column: 15, scope: !3192)
!3231 = !DILocation(line: 2091, column: 5, scope: !3192)
!3232 = !DILocation(line: 2092, column: 1, scope: !3192)
!3233 = distinct !DISubprogram(name: "unzGetOffset", scope: !3, file: !3, line: 2094, type: !3234, scopeLine: 2095, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!34, !194}
!3236 = !DILocalVariable(name: "file", arg: 1, scope: !3233, file: !3, line: 2094, type: !194)
!3237 = !DILocation(line: 2094, column: 44, scope: !3233)
!3238 = !DILocalVariable(name: "offset64", scope: !3233, file: !3, line: 2096, type: !51)
!3239 = !DILocation(line: 2096, column: 14, scope: !3233)
!3240 = !DILocation(line: 2098, column: 9, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 2098, column: 9)
!3242 = !DILocation(line: 2098, column: 13, scope: !3241)
!3243 = !DILocation(line: 2098, column: 9, scope: !3233)
!3244 = !DILocation(line: 2099, column: 11, scope: !3241)
!3245 = !DILocation(line: 2100, column: 31, scope: !3233)
!3246 = !DILocation(line: 2100, column: 16, scope: !3233)
!3247 = !DILocation(line: 2100, column: 14, scope: !3233)
!3248 = !DILocation(line: 2101, column: 19, scope: !3233)
!3249 = !DILocation(line: 2101, column: 5, scope: !3233)
!3250 = !DILocation(line: 2102, column: 1, scope: !3233)
!3251 = distinct !DISubprogram(name: "unzSetOffset64", scope: !3, file: !3, line: 2104, type: !3252, scopeLine: 2105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!28, !194, !51}
!3254 = !DILocalVariable(name: "file", arg: 1, scope: !3251, file: !3, line: 2104, type: !194)
!3255 = !DILocation(line: 2104, column: 43, scope: !3251)
!3256 = !DILocalVariable(name: "pos", arg: 2, scope: !3251, file: !3, line: 2104, type: !51)
!3257 = !DILocation(line: 2104, column: 58, scope: !3251)
!3258 = !DILocalVariable(name: "s", scope: !3251, file: !3, line: 2106, type: !6)
!3259 = !DILocation(line: 2106, column: 14, scope: !3251)
!3260 = !DILocalVariable(name: "err", scope: !3251, file: !3, line: 2107, type: !28)
!3261 = !DILocation(line: 2107, column: 9, scope: !3251)
!3262 = !DILocation(line: 2109, column: 9, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 2109, column: 9)
!3264 = !DILocation(line: 2109, column: 13, scope: !3263)
!3265 = !DILocation(line: 2109, column: 9, scope: !3251)
!3266 = !DILocation(line: 2110, column: 9, scope: !3263)
!3267 = !DILocation(line: 2111, column: 17, scope: !3251)
!3268 = !DILocation(line: 2111, column: 6, scope: !3251)
!3269 = !DILocation(line: 2113, column: 29, scope: !3251)
!3270 = !DILocation(line: 2113, column: 5, scope: !3251)
!3271 = !DILocation(line: 2113, column: 8, scope: !3251)
!3272 = !DILocation(line: 2113, column: 27, scope: !3251)
!3273 = !DILocation(line: 2114, column: 19, scope: !3251)
!3274 = !DILocation(line: 2114, column: 22, scope: !3251)
!3275 = !DILocation(line: 2114, column: 25, scope: !3251)
!3276 = !DILocation(line: 2114, column: 5, scope: !3251)
!3277 = !DILocation(line: 2114, column: 8, scope: !3251)
!3278 = !DILocation(line: 2114, column: 17, scope: !3251)
!3279 = !DILocation(line: 2115, column: 49, scope: !3251)
!3280 = !DILocation(line: 2115, column: 55, scope: !3251)
!3281 = !DILocation(line: 2115, column: 58, scope: !3251)
!3282 = !DILocation(line: 2116, column: 48, scope: !3251)
!3283 = !DILocation(line: 2116, column: 51, scope: !3251)
!3284 = !DILocation(line: 2115, column: 11, scope: !3251)
!3285 = !DILocation(line: 2115, column: 9, scope: !3251)
!3286 = !DILocation(line: 2118, column: 27, scope: !3251)
!3287 = !DILocation(line: 2118, column: 31, scope: !3251)
!3288 = !DILocation(line: 2118, column: 26, scope: !3251)
!3289 = !DILocation(line: 2118, column: 5, scope: !3251)
!3290 = !DILocation(line: 2118, column: 8, scope: !3251)
!3291 = !DILocation(line: 2118, column: 24, scope: !3251)
!3292 = !DILocation(line: 2119, column: 12, scope: !3251)
!3293 = !DILocation(line: 2119, column: 5, scope: !3251)
!3294 = !DILocation(line: 2120, column: 1, scope: !3251)
!3295 = distinct !DISubprogram(name: "unzSetOffset", scope: !3, file: !3, line: 2122, type: !3296, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!28, !194, !34}
!3298 = !DILocalVariable(name: "file", arg: 1, scope: !3295, file: !3, line: 2122, type: !194)
!3299 = !DILocation(line: 2122, column: 42, scope: !3295)
!3300 = !DILocalVariable(name: "pos", arg: 2, scope: !3295, file: !3, line: 2122, type: !34)
!3301 = !DILocation(line: 2122, column: 54, scope: !3295)
!3302 = !DILocation(line: 2124, column: 27, scope: !3295)
!3303 = !DILocation(line: 2124, column: 32, scope: !3295)
!3304 = !DILocation(line: 2124, column: 12, scope: !3295)
!3305 = !DILocation(line: 2124, column: 5, scope: !3295)
!3306 = distinct !DISubprogram(name: "unz64local_SearchCentralDir64", scope: !3, file: !3, line: 478, type: !3307, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!51, !3309, !24}
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!3311 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 1, scope: !3306, file: !3, line: 478, type: !3309)
!3312 = !DILocation(line: 478, column: 76, scope: !3306)
!3313 = !DILocalVariable(name: "filestream", arg: 2, scope: !3306, file: !3, line: 479, type: !24)
!3314 = !DILocation(line: 479, column: 46, scope: !3306)
!3315 = !DILocalVariable(name: "buf", scope: !3306, file: !3, line: 481, type: !196)
!3316 = !DILocation(line: 481, column: 20, scope: !3306)
!3317 = !DILocalVariable(name: "uSizeFile", scope: !3306, file: !3, line: 482, type: !51)
!3318 = !DILocation(line: 482, column: 14, scope: !3306)
!3319 = !DILocalVariable(name: "uBackRead", scope: !3306, file: !3, line: 483, type: !51)
!3320 = !DILocation(line: 483, column: 14, scope: !3306)
!3321 = !DILocalVariable(name: "uMaxBack", scope: !3306, file: !3, line: 484, type: !51)
!3322 = !DILocation(line: 484, column: 14, scope: !3306)
!3323 = !DILocalVariable(name: "uPosFound", scope: !3306, file: !3, line: 485, type: !51)
!3324 = !DILocation(line: 485, column: 14, scope: !3306)
!3325 = !DILocalVariable(name: "uL", scope: !3306, file: !3, line: 486, type: !34)
!3326 = !DILocation(line: 486, column: 11, scope: !3306)
!3327 = !DILocalVariable(name: "relativeOffset", scope: !3306, file: !3, line: 487, type: !51)
!3328 = !DILocation(line: 487, column: 26, scope: !3306)
!3329 = !DILocation(line: 489, column: 9, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 489, column: 9)
!3331 = !DILocation(line: 489, column: 74, scope: !3330)
!3332 = !DILocation(line: 489, column: 9, scope: !3306)
!3333 = !DILocation(line: 490, column: 9, scope: !3330)
!3334 = !DILocation(line: 493, column: 17, scope: !3306)
!3335 = !DILocation(line: 493, column: 15, scope: !3306)
!3336 = !DILocation(line: 495, column: 9, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 495, column: 9)
!3338 = !DILocation(line: 495, column: 18, scope: !3337)
!3339 = !DILocation(line: 495, column: 17, scope: !3337)
!3340 = !DILocation(line: 495, column: 9, scope: !3306)
!3341 = !DILocation(line: 496, column: 20, scope: !3337)
!3342 = !DILocation(line: 496, column: 18, scope: !3337)
!3343 = !DILocation(line: 496, column: 9, scope: !3337)
!3344 = !DILocation(line: 498, column: 27, scope: !3306)
!3345 = !DILocation(line: 498, column: 9, scope: !3306)
!3346 = !DILocation(line: 499, column: 9, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 499, column: 9)
!3348 = !DILocation(line: 499, column: 12, scope: !3347)
!3349 = !DILocation(line: 499, column: 9, scope: !3306)
!3350 = !DILocation(line: 500, column: 9, scope: !3347)
!3351 = !DILocation(line: 502, column: 15, scope: !3306)
!3352 = !DILocation(line: 503, column: 5, scope: !3306)
!3353 = !DILocation(line: 503, column: 12, scope: !3306)
!3354 = !DILocation(line: 503, column: 22, scope: !3306)
!3355 = !DILocation(line: 503, column: 21, scope: !3306)
!3356 = !DILocalVariable(name: "uReadSize", scope: !3357, file: !3, line: 505, type: !34)
!3357 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 504, column: 5)
!3358 = !DILocation(line: 505, column: 15, scope: !3357)
!3359 = !DILocalVariable(name: "uReadPos", scope: !3357, file: !3, line: 506, type: !51)
!3360 = !DILocation(line: 506, column: 18, scope: !3357)
!3361 = !DILocalVariable(name: "i", scope: !3357, file: !3, line: 507, type: !28)
!3362 = !DILocation(line: 507, column: 13, scope: !3357)
!3363 = !DILocation(line: 508, column: 13, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 508, column: 13)
!3365 = !DILocation(line: 508, column: 22, scope: !3364)
!3366 = !DILocation(line: 508, column: 38, scope: !3364)
!3367 = !DILocation(line: 508, column: 37, scope: !3364)
!3368 = !DILocation(line: 508, column: 13, scope: !3357)
!3369 = !DILocation(line: 509, column: 25, scope: !3364)
!3370 = !DILocation(line: 509, column: 23, scope: !3364)
!3371 = !DILocation(line: 509, column: 13, scope: !3364)
!3372 = !DILocation(line: 511, column: 22, scope: !3364)
!3373 = !DILocation(line: 512, column: 20, scope: !3357)
!3374 = !DILocation(line: 512, column: 30, scope: !3357)
!3375 = !DILocation(line: 512, column: 29, scope: !3357)
!3376 = !DILocation(line: 512, column: 18, scope: !3357)
!3377 = !DILocation(line: 514, column: 44, scope: !3357)
!3378 = !DILocation(line: 514, column: 54, scope: !3357)
!3379 = !DILocation(line: 514, column: 53, scope: !3357)
!3380 = !DILocation(line: 514, column: 41, scope: !3357)
!3381 = !DILocation(line: 514, column: 21, scope: !3357)
!3382 = !DILocation(line: 515, column: 51, scope: !3357)
!3383 = !DILocation(line: 515, column: 61, scope: !3357)
!3384 = !DILocation(line: 515, column: 60, scope: !3357)
!3385 = !DILocation(line: 514, column: 19, scope: !3357)
!3386 = !DILocation(line: 516, column: 13, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 516, column: 13)
!3388 = !DILocation(line: 516, column: 84, scope: !3387)
!3389 = !DILocation(line: 516, column: 13, scope: !3357)
!3390 = !DILocation(line: 517, column: 13, scope: !3387)
!3391 = !DILocation(line: 519, column: 13, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 519, column: 13)
!3393 = !DILocation(line: 519, column: 68, scope: !3392)
!3394 = !DILocation(line: 519, column: 66, scope: !3392)
!3395 = !DILocation(line: 519, column: 13, scope: !3357)
!3396 = !DILocation(line: 520, column: 13, scope: !3392)
!3397 = !DILocation(line: 522, column: 21, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 522, column: 9)
!3399 = !DILocation(line: 522, column: 16, scope: !3398)
!3400 = !DILocation(line: 522, column: 30, scope: !3398)
!3401 = !DILocation(line: 522, column: 15, scope: !3398)
!3402 = !DILocation(line: 522, column: 14, scope: !3398)
!3403 = !DILocation(line: 522, column: 36, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 522, column: 9)
!3405 = !DILocation(line: 522, column: 39, scope: !3404)
!3406 = !DILocation(line: 522, column: 9, scope: !3398)
!3407 = !DILocation(line: 523, column: 21, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 523, column: 17)
!3409 = !DILocation(line: 523, column: 25, scope: !3408)
!3410 = !DILocation(line: 523, column: 24, scope: !3408)
!3411 = !DILocation(line: 523, column: 19, scope: !3408)
!3412 = !DILocation(line: 523, column: 18, scope: !3408)
!3413 = !DILocation(line: 523, column: 28, scope: !3408)
!3414 = !DILocation(line: 523, column: 36, scope: !3408)
!3415 = !DILocation(line: 523, column: 43, scope: !3408)
!3416 = !DILocation(line: 523, column: 47, scope: !3408)
!3417 = !DILocation(line: 523, column: 46, scope: !3408)
!3418 = !DILocation(line: 523, column: 48, scope: !3408)
!3419 = !DILocation(line: 523, column: 41, scope: !3408)
!3420 = !DILocation(line: 523, column: 40, scope: !3408)
!3421 = !DILocation(line: 523, column: 52, scope: !3408)
!3422 = !DILocation(line: 523, column: 60, scope: !3408)
!3423 = !DILocation(line: 524, column: 21, scope: !3408)
!3424 = !DILocation(line: 524, column: 25, scope: !3408)
!3425 = !DILocation(line: 524, column: 24, scope: !3408)
!3426 = !DILocation(line: 524, column: 26, scope: !3408)
!3427 = !DILocation(line: 524, column: 19, scope: !3408)
!3428 = !DILocation(line: 524, column: 18, scope: !3408)
!3429 = !DILocation(line: 524, column: 30, scope: !3408)
!3430 = !DILocation(line: 524, column: 38, scope: !3408)
!3431 = !DILocation(line: 524, column: 45, scope: !3408)
!3432 = !DILocation(line: 524, column: 49, scope: !3408)
!3433 = !DILocation(line: 524, column: 48, scope: !3408)
!3434 = !DILocation(line: 524, column: 50, scope: !3408)
!3435 = !DILocation(line: 524, column: 43, scope: !3408)
!3436 = !DILocation(line: 524, column: 42, scope: !3408)
!3437 = !DILocation(line: 524, column: 54, scope: !3408)
!3438 = !DILocation(line: 523, column: 17, scope: !3404)
!3439 = !DILocation(line: 526, column: 29, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3408, file: !3, line: 525, column: 13)
!3441 = !DILocation(line: 526, column: 38, scope: !3440)
!3442 = !DILocation(line: 526, column: 37, scope: !3440)
!3443 = !DILocation(line: 526, column: 27, scope: !3440)
!3444 = !DILocation(line: 527, column: 17, scope: !3440)
!3445 = !DILocation(line: 522, column: 9, scope: !3404)
!3446 = distinct !{!3446, !3406, !3447, !1401}
!3447 = !DILocation(line: 528, column: 13, scope: !3398)
!3448 = !DILocation(line: 530, column: 13, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 530, column: 13)
!3450 = !DILocation(line: 530, column: 22, scope: !3449)
!3451 = !DILocation(line: 530, column: 13, scope: !3357)
!3452 = !DILocation(line: 531, column: 13, scope: !3449)
!3453 = distinct !{!3453, !3352, !3454, !1401}
!3454 = !DILocation(line: 532, column: 5, scope: !3306)
!3455 = !DILocation(line: 533, column: 5, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 533, column: 5)
!3457 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 533, column: 5)
!3458 = !DILocation(line: 533, column: 5, scope: !3457)
!3459 = !DILocation(line: 534, column: 9, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 534, column: 9)
!3461 = !DILocation(line: 534, column: 19, scope: !3460)
!3462 = !DILocation(line: 534, column: 9, scope: !3306)
!3463 = !DILocation(line: 535, column: 9, scope: !3460)
!3464 = !DILocation(line: 538, column: 9, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 538, column: 9)
!3466 = !DILocation(line: 538, column: 82, scope: !3465)
!3467 = !DILocation(line: 538, column: 9, scope: !3306)
!3468 = !DILocation(line: 539, column: 9, scope: !3465)
!3469 = !DILocation(line: 542, column: 28, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 542, column: 9)
!3471 = !DILocation(line: 542, column: 47, scope: !3470)
!3472 = !DILocation(line: 542, column: 9, scope: !3470)
!3473 = !DILocation(line: 542, column: 62, scope: !3470)
!3474 = !DILocation(line: 542, column: 9, scope: !3306)
!3475 = !DILocation(line: 543, column: 9, scope: !3470)
!3476 = !DILocation(line: 546, column: 28, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 546, column: 9)
!3478 = !DILocation(line: 546, column: 47, scope: !3477)
!3479 = !DILocation(line: 546, column: 9, scope: !3477)
!3480 = !DILocation(line: 546, column: 62, scope: !3477)
!3481 = !DILocation(line: 546, column: 9, scope: !3306)
!3482 = !DILocation(line: 547, column: 9, scope: !3477)
!3483 = !DILocation(line: 548, column: 9, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 548, column: 9)
!3485 = !DILocation(line: 548, column: 12, scope: !3484)
!3486 = !DILocation(line: 548, column: 9, scope: !3306)
!3487 = !DILocation(line: 549, column: 9, scope: !3484)
!3488 = !DILocation(line: 552, column: 30, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 552, column: 9)
!3490 = !DILocation(line: 552, column: 49, scope: !3489)
!3491 = !DILocation(line: 552, column: 9, scope: !3489)
!3492 = !DILocation(line: 552, column: 76, scope: !3489)
!3493 = !DILocation(line: 552, column: 9, scope: !3306)
!3494 = !DILocation(line: 553, column: 9, scope: !3489)
!3495 = !DILocation(line: 556, column: 28, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 556, column: 9)
!3497 = !DILocation(line: 556, column: 47, scope: !3496)
!3498 = !DILocation(line: 556, column: 9, scope: !3496)
!3499 = !DILocation(line: 556, column: 62, scope: !3496)
!3500 = !DILocation(line: 556, column: 9, scope: !3306)
!3501 = !DILocation(line: 557, column: 9, scope: !3496)
!3502 = !DILocation(line: 558, column: 9, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 558, column: 9)
!3504 = !DILocation(line: 558, column: 12, scope: !3503)
!3505 = !DILocation(line: 558, column: 9, scope: !3306)
!3506 = !DILocation(line: 559, column: 9, scope: !3503)
!3507 = !DILocation(line: 562, column: 9, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 562, column: 9)
!3509 = !DILocation(line: 562, column: 87, scope: !3508)
!3510 = !DILocation(line: 562, column: 9, scope: !3306)
!3511 = !DILocation(line: 563, column: 9, scope: !3508)
!3512 = !DILocation(line: 566, column: 28, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 566, column: 9)
!3514 = !DILocation(line: 566, column: 47, scope: !3513)
!3515 = !DILocation(line: 566, column: 9, scope: !3513)
!3516 = !DILocation(line: 566, column: 62, scope: !3513)
!3517 = !DILocation(line: 566, column: 9, scope: !3306)
!3518 = !DILocation(line: 567, column: 9, scope: !3513)
!3519 = !DILocation(line: 569, column: 9, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 569, column: 9)
!3521 = !DILocation(line: 569, column: 12, scope: !3520)
!3522 = !DILocation(line: 569, column: 9, scope: !3306)
!3523 = !DILocation(line: 570, column: 9, scope: !3520)
!3524 = !DILocation(line: 572, column: 12, scope: !3306)
!3525 = !DILocation(line: 572, column: 5, scope: !3306)
!3526 = !DILocation(line: 573, column: 1, scope: !3306)
!3527 = distinct !DISubprogram(name: "unz64local_getLong", scope: !3, file: !3, line: 266, type: !3528, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!28, !3309, !24, !3530}
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!3531 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 1, scope: !3527, file: !3, line: 266, type: !3309)
!3532 = !DILocation(line: 266, column: 61, scope: !3527)
!3533 = !DILocalVariable(name: "filestream", arg: 2, scope: !3527, file: !3, line: 267, type: !24)
!3534 = !DILocation(line: 267, column: 36, scope: !3527)
!3535 = !DILocalVariable(name: "pX", arg: 3, scope: !3527, file: !3, line: 268, type: !3530)
!3536 = !DILocation(line: 268, column: 36, scope: !3527)
!3537 = !DILocalVariable(name: "x", scope: !3527, file: !3, line: 270, type: !34)
!3538 = !DILocation(line: 270, column: 11, scope: !3527)
!3539 = !DILocalVariable(name: "i", scope: !3527, file: !3, line: 271, type: !28)
!3540 = !DILocation(line: 271, column: 9, scope: !3527)
!3541 = !DILocalVariable(name: "err", scope: !3527, file: !3, line: 272, type: !28)
!3542 = !DILocation(line: 272, column: 9, scope: !3527)
!3543 = !DILocation(line: 274, column: 30, scope: !3527)
!3544 = !DILocation(line: 274, column: 49, scope: !3527)
!3545 = !DILocation(line: 274, column: 11, scope: !3527)
!3546 = !DILocation(line: 274, column: 9, scope: !3527)
!3547 = !DILocation(line: 275, column: 16, scope: !3527)
!3548 = !DILocation(line: 275, column: 9, scope: !3527)
!3549 = !DILocation(line: 275, column: 7, scope: !3527)
!3550 = !DILocation(line: 277, column: 9, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 277, column: 9)
!3552 = !DILocation(line: 277, column: 12, scope: !3551)
!3553 = !DILocation(line: 277, column: 9, scope: !3527)
!3554 = !DILocation(line: 278, column: 34, scope: !3551)
!3555 = !DILocation(line: 278, column: 53, scope: !3551)
!3556 = !DILocation(line: 278, column: 15, scope: !3551)
!3557 = !DILocation(line: 278, column: 13, scope: !3551)
!3558 = !DILocation(line: 278, column: 9, scope: !3551)
!3559 = !DILocation(line: 279, column: 18, scope: !3527)
!3560 = !DILocation(line: 279, column: 11, scope: !3527)
!3561 = !DILocation(line: 279, column: 20, scope: !3527)
!3562 = !DILocation(line: 279, column: 7, scope: !3527)
!3563 = !DILocation(line: 281, column: 9, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 281, column: 9)
!3565 = !DILocation(line: 281, column: 12, scope: !3564)
!3566 = !DILocation(line: 281, column: 9, scope: !3527)
!3567 = !DILocation(line: 282, column: 34, scope: !3564)
!3568 = !DILocation(line: 282, column: 53, scope: !3564)
!3569 = !DILocation(line: 282, column: 15, scope: !3564)
!3570 = !DILocation(line: 282, column: 13, scope: !3564)
!3571 = !DILocation(line: 282, column: 9, scope: !3564)
!3572 = !DILocation(line: 283, column: 18, scope: !3527)
!3573 = !DILocation(line: 283, column: 11, scope: !3527)
!3574 = !DILocation(line: 283, column: 20, scope: !3527)
!3575 = !DILocation(line: 283, column: 7, scope: !3527)
!3576 = !DILocation(line: 285, column: 9, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 285, column: 9)
!3578 = !DILocation(line: 285, column: 12, scope: !3577)
!3579 = !DILocation(line: 285, column: 9, scope: !3527)
!3580 = !DILocation(line: 286, column: 34, scope: !3577)
!3581 = !DILocation(line: 286, column: 53, scope: !3577)
!3582 = !DILocation(line: 286, column: 15, scope: !3577)
!3583 = !DILocation(line: 286, column: 13, scope: !3577)
!3584 = !DILocation(line: 286, column: 9, scope: !3577)
!3585 = !DILocation(line: 287, column: 18, scope: !3527)
!3586 = !DILocation(line: 287, column: 11, scope: !3527)
!3587 = !DILocation(line: 287, column: 20, scope: !3527)
!3588 = !DILocation(line: 287, column: 7, scope: !3527)
!3589 = !DILocation(line: 289, column: 9, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 289, column: 9)
!3591 = !DILocation(line: 289, column: 12, scope: !3590)
!3592 = !DILocation(line: 289, column: 9, scope: !3527)
!3593 = !DILocation(line: 290, column: 15, scope: !3590)
!3594 = !DILocation(line: 290, column: 10, scope: !3590)
!3595 = !DILocation(line: 290, column: 13, scope: !3590)
!3596 = !DILocation(line: 290, column: 9, scope: !3590)
!3597 = !DILocation(line: 292, column: 10, scope: !3590)
!3598 = !DILocation(line: 292, column: 13, scope: !3590)
!3599 = !DILocation(line: 293, column: 12, scope: !3527)
!3600 = !DILocation(line: 293, column: 5, scope: !3527)
!3601 = distinct !DISubprogram(name: "unz64local_getLong64", scope: !3, file: !3, line: 302, type: !3602, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!28, !3309, !24, !2245}
!3604 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 1, scope: !3601, file: !3, line: 302, type: !3309)
!3605 = !DILocation(line: 302, column: 63, scope: !3601)
!3606 = !DILocalVariable(name: "filestream", arg: 2, scope: !3601, file: !3, line: 303, type: !24)
!3607 = !DILocation(line: 303, column: 36, scope: !3601)
!3608 = !DILocalVariable(name: "pX", arg: 3, scope: !3601, file: !3, line: 304, type: !2245)
!3609 = !DILocation(line: 304, column: 39, scope: !3601)
!3610 = !DILocalVariable(name: "x", scope: !3601, file: !3, line: 306, type: !51)
!3611 = !DILocation(line: 306, column: 14, scope: !3601)
!3612 = !DILocalVariable(name: "i", scope: !3601, file: !3, line: 307, type: !28)
!3613 = !DILocation(line: 307, column: 9, scope: !3601)
!3614 = !DILocalVariable(name: "err", scope: !3601, file: !3, line: 308, type: !28)
!3615 = !DILocation(line: 308, column: 9, scope: !3601)
!3616 = !DILocation(line: 310, column: 30, scope: !3601)
!3617 = !DILocation(line: 310, column: 49, scope: !3601)
!3618 = !DILocation(line: 310, column: 11, scope: !3601)
!3619 = !DILocation(line: 310, column: 9, scope: !3601)
!3620 = !DILocation(line: 311, column: 19, scope: !3601)
!3621 = !DILocation(line: 311, column: 9, scope: !3601)
!3622 = !DILocation(line: 311, column: 7, scope: !3601)
!3623 = !DILocation(line: 313, column: 9, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 313, column: 9)
!3625 = !DILocation(line: 313, column: 12, scope: !3624)
!3626 = !DILocation(line: 313, column: 9, scope: !3601)
!3627 = !DILocation(line: 314, column: 34, scope: !3624)
!3628 = !DILocation(line: 314, column: 53, scope: !3624)
!3629 = !DILocation(line: 314, column: 15, scope: !3624)
!3630 = !DILocation(line: 314, column: 13, scope: !3624)
!3631 = !DILocation(line: 314, column: 9, scope: !3624)
!3632 = !DILocation(line: 315, column: 21, scope: !3601)
!3633 = !DILocation(line: 315, column: 11, scope: !3601)
!3634 = !DILocation(line: 315, column: 23, scope: !3601)
!3635 = !DILocation(line: 315, column: 7, scope: !3601)
!3636 = !DILocation(line: 317, column: 9, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 317, column: 9)
!3638 = !DILocation(line: 317, column: 12, scope: !3637)
!3639 = !DILocation(line: 317, column: 9, scope: !3601)
!3640 = !DILocation(line: 318, column: 34, scope: !3637)
!3641 = !DILocation(line: 318, column: 53, scope: !3637)
!3642 = !DILocation(line: 318, column: 15, scope: !3637)
!3643 = !DILocation(line: 318, column: 13, scope: !3637)
!3644 = !DILocation(line: 318, column: 9, scope: !3637)
!3645 = !DILocation(line: 319, column: 21, scope: !3601)
!3646 = !DILocation(line: 319, column: 11, scope: !3601)
!3647 = !DILocation(line: 319, column: 23, scope: !3601)
!3648 = !DILocation(line: 319, column: 7, scope: !3601)
!3649 = !DILocation(line: 321, column: 9, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 321, column: 9)
!3651 = !DILocation(line: 321, column: 12, scope: !3650)
!3652 = !DILocation(line: 321, column: 9, scope: !3601)
!3653 = !DILocation(line: 322, column: 34, scope: !3650)
!3654 = !DILocation(line: 322, column: 53, scope: !3650)
!3655 = !DILocation(line: 322, column: 15, scope: !3650)
!3656 = !DILocation(line: 322, column: 13, scope: !3650)
!3657 = !DILocation(line: 322, column: 9, scope: !3650)
!3658 = !DILocation(line: 323, column: 21, scope: !3601)
!3659 = !DILocation(line: 323, column: 11, scope: !3601)
!3660 = !DILocation(line: 323, column: 23, scope: !3601)
!3661 = !DILocation(line: 323, column: 7, scope: !3601)
!3662 = !DILocation(line: 325, column: 9, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 325, column: 9)
!3664 = !DILocation(line: 325, column: 12, scope: !3663)
!3665 = !DILocation(line: 325, column: 9, scope: !3601)
!3666 = !DILocation(line: 326, column: 34, scope: !3663)
!3667 = !DILocation(line: 326, column: 53, scope: !3663)
!3668 = !DILocation(line: 326, column: 15, scope: !3663)
!3669 = !DILocation(line: 326, column: 13, scope: !3663)
!3670 = !DILocation(line: 326, column: 9, scope: !3663)
!3671 = !DILocation(line: 327, column: 21, scope: !3601)
!3672 = !DILocation(line: 327, column: 11, scope: !3601)
!3673 = !DILocation(line: 327, column: 23, scope: !3601)
!3674 = !DILocation(line: 327, column: 7, scope: !3601)
!3675 = !DILocation(line: 329, column: 9, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 329, column: 9)
!3677 = !DILocation(line: 329, column: 12, scope: !3676)
!3678 = !DILocation(line: 329, column: 9, scope: !3601)
!3679 = !DILocation(line: 330, column: 34, scope: !3676)
!3680 = !DILocation(line: 330, column: 53, scope: !3676)
!3681 = !DILocation(line: 330, column: 15, scope: !3676)
!3682 = !DILocation(line: 330, column: 13, scope: !3676)
!3683 = !DILocation(line: 330, column: 9, scope: !3676)
!3684 = !DILocation(line: 331, column: 21, scope: !3601)
!3685 = !DILocation(line: 331, column: 11, scope: !3601)
!3686 = !DILocation(line: 331, column: 23, scope: !3601)
!3687 = !DILocation(line: 331, column: 7, scope: !3601)
!3688 = !DILocation(line: 333, column: 9, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 333, column: 9)
!3690 = !DILocation(line: 333, column: 12, scope: !3689)
!3691 = !DILocation(line: 333, column: 9, scope: !3601)
!3692 = !DILocation(line: 334, column: 34, scope: !3689)
!3693 = !DILocation(line: 334, column: 53, scope: !3689)
!3694 = !DILocation(line: 334, column: 15, scope: !3689)
!3695 = !DILocation(line: 334, column: 13, scope: !3689)
!3696 = !DILocation(line: 334, column: 9, scope: !3689)
!3697 = !DILocation(line: 335, column: 21, scope: !3601)
!3698 = !DILocation(line: 335, column: 11, scope: !3601)
!3699 = !DILocation(line: 335, column: 23, scope: !3601)
!3700 = !DILocation(line: 335, column: 7, scope: !3601)
!3701 = !DILocation(line: 337, column: 9, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 337, column: 9)
!3703 = !DILocation(line: 337, column: 12, scope: !3702)
!3704 = !DILocation(line: 337, column: 9, scope: !3601)
!3705 = !DILocation(line: 338, column: 34, scope: !3702)
!3706 = !DILocation(line: 338, column: 53, scope: !3702)
!3707 = !DILocation(line: 338, column: 15, scope: !3702)
!3708 = !DILocation(line: 338, column: 13, scope: !3702)
!3709 = !DILocation(line: 338, column: 9, scope: !3702)
!3710 = !DILocation(line: 339, column: 21, scope: !3601)
!3711 = !DILocation(line: 339, column: 11, scope: !3601)
!3712 = !DILocation(line: 339, column: 23, scope: !3601)
!3713 = !DILocation(line: 339, column: 7, scope: !3601)
!3714 = !DILocation(line: 341, column: 9, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 341, column: 9)
!3716 = !DILocation(line: 341, column: 12, scope: !3715)
!3717 = !DILocation(line: 341, column: 9, scope: !3601)
!3718 = !DILocation(line: 342, column: 15, scope: !3715)
!3719 = !DILocation(line: 342, column: 10, scope: !3715)
!3720 = !DILocation(line: 342, column: 13, scope: !3715)
!3721 = !DILocation(line: 342, column: 9, scope: !3715)
!3722 = !DILocation(line: 344, column: 10, scope: !3715)
!3723 = !DILocation(line: 344, column: 13, scope: !3715)
!3724 = !DILocation(line: 345, column: 12, scope: !3601)
!3725 = !DILocation(line: 345, column: 5, scope: !3601)
!3726 = distinct !DISubprogram(name: "unz64local_getShort", scope: !3, file: !3, line: 239, type: !3528, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3727 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 1, scope: !3726, file: !3, line: 239, type: !3309)
!3728 = !DILocation(line: 239, column: 62, scope: !3726)
!3729 = !DILocalVariable(name: "filestream", arg: 2, scope: !3726, file: !3, line: 240, type: !24)
!3730 = !DILocation(line: 240, column: 37, scope: !3726)
!3731 = !DILocalVariable(name: "pX", arg: 3, scope: !3726, file: !3, line: 241, type: !3530)
!3732 = !DILocation(line: 241, column: 37, scope: !3726)
!3733 = !DILocalVariable(name: "x", scope: !3726, file: !3, line: 243, type: !34)
!3734 = !DILocation(line: 243, column: 11, scope: !3726)
!3735 = !DILocalVariable(name: "i", scope: !3726, file: !3, line: 244, type: !28)
!3736 = !DILocation(line: 244, column: 9, scope: !3726)
!3737 = !DILocalVariable(name: "err", scope: !3726, file: !3, line: 245, type: !28)
!3738 = !DILocation(line: 245, column: 9, scope: !3726)
!3739 = !DILocation(line: 247, column: 30, scope: !3726)
!3740 = !DILocation(line: 247, column: 49, scope: !3726)
!3741 = !DILocation(line: 247, column: 11, scope: !3726)
!3742 = !DILocation(line: 247, column: 9, scope: !3726)
!3743 = !DILocation(line: 248, column: 16, scope: !3726)
!3744 = !DILocation(line: 248, column: 9, scope: !3726)
!3745 = !DILocation(line: 248, column: 7, scope: !3726)
!3746 = !DILocation(line: 250, column: 9, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 250, column: 9)
!3748 = !DILocation(line: 250, column: 12, scope: !3747)
!3749 = !DILocation(line: 250, column: 9, scope: !3726)
!3750 = !DILocation(line: 251, column: 34, scope: !3747)
!3751 = !DILocation(line: 251, column: 53, scope: !3747)
!3752 = !DILocation(line: 251, column: 15, scope: !3747)
!3753 = !DILocation(line: 251, column: 13, scope: !3747)
!3754 = !DILocation(line: 251, column: 9, scope: !3747)
!3755 = !DILocation(line: 252, column: 18, scope: !3726)
!3756 = !DILocation(line: 252, column: 11, scope: !3726)
!3757 = !DILocation(line: 252, column: 20, scope: !3726)
!3758 = !DILocation(line: 252, column: 7, scope: !3726)
!3759 = !DILocation(line: 254, column: 9, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 254, column: 9)
!3761 = !DILocation(line: 254, column: 12, scope: !3760)
!3762 = !DILocation(line: 254, column: 9, scope: !3726)
!3763 = !DILocation(line: 255, column: 15, scope: !3760)
!3764 = !DILocation(line: 255, column: 10, scope: !3760)
!3765 = !DILocation(line: 255, column: 13, scope: !3760)
!3766 = !DILocation(line: 255, column: 9, scope: !3760)
!3767 = !DILocation(line: 257, column: 10, scope: !3760)
!3768 = !DILocation(line: 257, column: 13, scope: !3760)
!3769 = !DILocation(line: 258, column: 12, scope: !3726)
!3770 = !DILocation(line: 258, column: 5, scope: !3726)
!3771 = distinct !DISubprogram(name: "unz64local_SearchCentralDir", scope: !3, file: !3, line: 413, type: !3307, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3772 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 1, scope: !3771, file: !3, line: 413, type: !3309)
!3773 = !DILocation(line: 413, column: 74, scope: !3771)
!3774 = !DILocalVariable(name: "filestream", arg: 2, scope: !3771, file: !3, line: 413, type: !24)
!3775 = !DILocation(line: 413, column: 101, scope: !3771)
!3776 = !DILocalVariable(name: "buf", scope: !3771, file: !3, line: 415, type: !196)
!3777 = !DILocation(line: 415, column: 20, scope: !3771)
!3778 = !DILocalVariable(name: "uSizeFile", scope: !3771, file: !3, line: 416, type: !51)
!3779 = !DILocation(line: 416, column: 14, scope: !3771)
!3780 = !DILocalVariable(name: "uBackRead", scope: !3771, file: !3, line: 417, type: !51)
!3781 = !DILocation(line: 417, column: 14, scope: !3771)
!3782 = !DILocalVariable(name: "uMaxBack", scope: !3771, file: !3, line: 418, type: !51)
!3783 = !DILocation(line: 418, column: 14, scope: !3771)
!3784 = !DILocalVariable(name: "uPosFound", scope: !3771, file: !3, line: 419, type: !51)
!3785 = !DILocation(line: 419, column: 14, scope: !3771)
!3786 = !DILocation(line: 421, column: 9, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 421, column: 9)
!3788 = !DILocation(line: 421, column: 74, scope: !3787)
!3789 = !DILocation(line: 421, column: 9, scope: !3771)
!3790 = !DILocation(line: 422, column: 9, scope: !3787)
!3791 = !DILocation(line: 425, column: 17, scope: !3771)
!3792 = !DILocation(line: 425, column: 15, scope: !3771)
!3793 = !DILocation(line: 427, column: 9, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 427, column: 9)
!3795 = !DILocation(line: 427, column: 18, scope: !3794)
!3796 = !DILocation(line: 427, column: 17, scope: !3794)
!3797 = !DILocation(line: 427, column: 9, scope: !3771)
!3798 = !DILocation(line: 428, column: 20, scope: !3794)
!3799 = !DILocation(line: 428, column: 18, scope: !3794)
!3800 = !DILocation(line: 428, column: 9, scope: !3794)
!3801 = !DILocation(line: 430, column: 27, scope: !3771)
!3802 = !DILocation(line: 430, column: 9, scope: !3771)
!3803 = !DILocation(line: 431, column: 9, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 431, column: 9)
!3805 = !DILocation(line: 431, column: 12, scope: !3804)
!3806 = !DILocation(line: 431, column: 9, scope: !3771)
!3807 = !DILocation(line: 432, column: 9, scope: !3804)
!3808 = !DILocation(line: 434, column: 15, scope: !3771)
!3809 = !DILocation(line: 435, column: 5, scope: !3771)
!3810 = !DILocation(line: 435, column: 12, scope: !3771)
!3811 = !DILocation(line: 435, column: 22, scope: !3771)
!3812 = !DILocation(line: 435, column: 21, scope: !3771)
!3813 = !DILocalVariable(name: "uReadSize", scope: !3814, file: !3, line: 437, type: !34)
!3814 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 436, column: 5)
!3815 = !DILocation(line: 437, column: 15, scope: !3814)
!3816 = !DILocalVariable(name: "uReadPos", scope: !3814, file: !3, line: 438, type: !51)
!3817 = !DILocation(line: 438, column: 18, scope: !3814)
!3818 = !DILocalVariable(name: "i", scope: !3814, file: !3, line: 439, type: !28)
!3819 = !DILocation(line: 439, column: 13, scope: !3814)
!3820 = !DILocation(line: 440, column: 13, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3814, file: !3, line: 440, column: 13)
!3822 = !DILocation(line: 440, column: 22, scope: !3821)
!3823 = !DILocation(line: 440, column: 38, scope: !3821)
!3824 = !DILocation(line: 440, column: 37, scope: !3821)
!3825 = !DILocation(line: 440, column: 13, scope: !3814)
!3826 = !DILocation(line: 441, column: 25, scope: !3821)
!3827 = !DILocation(line: 441, column: 23, scope: !3821)
!3828 = !DILocation(line: 441, column: 13, scope: !3821)
!3829 = !DILocation(line: 443, column: 22, scope: !3821)
!3830 = !DILocation(line: 444, column: 20, scope: !3814)
!3831 = !DILocation(line: 444, column: 30, scope: !3814)
!3832 = !DILocation(line: 444, column: 29, scope: !3814)
!3833 = !DILocation(line: 444, column: 18, scope: !3814)
!3834 = !DILocation(line: 446, column: 44, scope: !3814)
!3835 = !DILocation(line: 446, column: 54, scope: !3814)
!3836 = !DILocation(line: 446, column: 53, scope: !3814)
!3837 = !DILocation(line: 446, column: 41, scope: !3814)
!3838 = !DILocation(line: 446, column: 21, scope: !3814)
!3839 = !DILocation(line: 447, column: 51, scope: !3814)
!3840 = !DILocation(line: 447, column: 61, scope: !3814)
!3841 = !DILocation(line: 447, column: 60, scope: !3814)
!3842 = !DILocation(line: 446, column: 19, scope: !3814)
!3843 = !DILocation(line: 448, column: 13, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3814, file: !3, line: 448, column: 13)
!3845 = !DILocation(line: 448, column: 84, scope: !3844)
!3846 = !DILocation(line: 448, column: 13, scope: !3814)
!3847 = !DILocation(line: 449, column: 13, scope: !3844)
!3848 = !DILocation(line: 451, column: 13, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3814, file: !3, line: 451, column: 13)
!3850 = !DILocation(line: 451, column: 68, scope: !3849)
!3851 = !DILocation(line: 451, column: 66, scope: !3849)
!3852 = !DILocation(line: 451, column: 13, scope: !3814)
!3853 = !DILocation(line: 452, column: 13, scope: !3849)
!3854 = !DILocation(line: 454, column: 21, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3814, file: !3, line: 454, column: 9)
!3856 = !DILocation(line: 454, column: 16, scope: !3855)
!3857 = !DILocation(line: 454, column: 30, scope: !3855)
!3858 = !DILocation(line: 454, column: 15, scope: !3855)
!3859 = !DILocation(line: 454, column: 14, scope: !3855)
!3860 = !DILocation(line: 454, column: 36, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 454, column: 9)
!3862 = !DILocation(line: 454, column: 39, scope: !3861)
!3863 = !DILocation(line: 454, column: 9, scope: !3855)
!3864 = !DILocation(line: 455, column: 21, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3861, file: !3, line: 455, column: 17)
!3866 = !DILocation(line: 455, column: 25, scope: !3865)
!3867 = !DILocation(line: 455, column: 24, scope: !3865)
!3868 = !DILocation(line: 455, column: 19, scope: !3865)
!3869 = !DILocation(line: 455, column: 18, scope: !3865)
!3870 = !DILocation(line: 455, column: 28, scope: !3865)
!3871 = !DILocation(line: 455, column: 36, scope: !3865)
!3872 = !DILocation(line: 455, column: 43, scope: !3865)
!3873 = !DILocation(line: 455, column: 47, scope: !3865)
!3874 = !DILocation(line: 455, column: 46, scope: !3865)
!3875 = !DILocation(line: 455, column: 48, scope: !3865)
!3876 = !DILocation(line: 455, column: 41, scope: !3865)
!3877 = !DILocation(line: 455, column: 40, scope: !3865)
!3878 = !DILocation(line: 455, column: 52, scope: !3865)
!3879 = !DILocation(line: 455, column: 60, scope: !3865)
!3880 = !DILocation(line: 456, column: 21, scope: !3865)
!3881 = !DILocation(line: 456, column: 25, scope: !3865)
!3882 = !DILocation(line: 456, column: 24, scope: !3865)
!3883 = !DILocation(line: 456, column: 26, scope: !3865)
!3884 = !DILocation(line: 456, column: 19, scope: !3865)
!3885 = !DILocation(line: 456, column: 18, scope: !3865)
!3886 = !DILocation(line: 456, column: 30, scope: !3865)
!3887 = !DILocation(line: 456, column: 38, scope: !3865)
!3888 = !DILocation(line: 456, column: 45, scope: !3865)
!3889 = !DILocation(line: 456, column: 49, scope: !3865)
!3890 = !DILocation(line: 456, column: 48, scope: !3865)
!3891 = !DILocation(line: 456, column: 50, scope: !3865)
!3892 = !DILocation(line: 456, column: 43, scope: !3865)
!3893 = !DILocation(line: 456, column: 42, scope: !3865)
!3894 = !DILocation(line: 456, column: 54, scope: !3865)
!3895 = !DILocation(line: 455, column: 17, scope: !3861)
!3896 = !DILocation(line: 458, column: 29, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 457, column: 13)
!3898 = !DILocation(line: 458, column: 38, scope: !3897)
!3899 = !DILocation(line: 458, column: 37, scope: !3897)
!3900 = !DILocation(line: 458, column: 27, scope: !3897)
!3901 = !DILocation(line: 459, column: 17, scope: !3897)
!3902 = !DILocation(line: 454, column: 9, scope: !3861)
!3903 = distinct !{!3903, !3863, !3904, !1401}
!3904 = !DILocation(line: 460, column: 13, scope: !3855)
!3905 = !DILocation(line: 462, column: 13, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3814, file: !3, line: 462, column: 13)
!3907 = !DILocation(line: 462, column: 22, scope: !3906)
!3908 = !DILocation(line: 462, column: 13, scope: !3814)
!3909 = !DILocation(line: 463, column: 13, scope: !3906)
!3910 = distinct !{!3910, !3809, !3911, !1401}
!3911 = !DILocation(line: 464, column: 5, scope: !3771)
!3912 = !DILocation(line: 465, column: 5, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3914, file: !3, line: 465, column: 5)
!3914 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 465, column: 5)
!3915 = !DILocation(line: 465, column: 5, scope: !3914)
!3916 = !DILocation(line: 466, column: 12, scope: !3771)
!3917 = !DILocation(line: 466, column: 5, scope: !3771)
!3918 = !DILocation(line: 467, column: 1, scope: !3771)
!3919 = distinct !DISubprogram(name: "unz64local_getByte", scope: !3, file: !3, line: 212, type: !3920, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!28, !3309, !24, !1967}
!3922 = !DILocalVariable(name: "pzlib_filefunc_def", arg: 1, scope: !3919, file: !3, line: 212, type: !3309)
!3923 = !DILocation(line: 212, column: 60, scope: !3919)
!3924 = !DILocalVariable(name: "filestream", arg: 2, scope: !3919, file: !3, line: 212, type: !24)
!3925 = !DILocation(line: 212, column: 87, scope: !3919)
!3926 = !DILocalVariable(name: "pi", arg: 3, scope: !3919, file: !3, line: 212, type: !1967)
!3927 = !DILocation(line: 212, column: 104, scope: !3919)
!3928 = !DILocalVariable(name: "c", scope: !3919, file: !3, line: 214, type: !149)
!3929 = !DILocation(line: 214, column: 19, scope: !3919)
!3930 = !DILocalVariable(name: "err", scope: !3919, file: !3, line: 215, type: !28)
!3931 = !DILocation(line: 215, column: 9, scope: !3919)
!3932 = !DILocation(line: 215, column: 20, scope: !3919)
!3933 = !DILocation(line: 215, column: 15, scope: !3919)
!3934 = !DILocation(line: 216, column: 9, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 216, column: 9)
!3936 = !DILocation(line: 216, column: 12, scope: !3935)
!3937 = !DILocation(line: 216, column: 9, scope: !3919)
!3938 = !DILocation(line: 218, column: 20, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 217, column: 5)
!3940 = !DILocation(line: 218, column: 15, scope: !3939)
!3941 = !DILocation(line: 218, column: 10, scope: !3939)
!3942 = !DILocation(line: 218, column: 13, scope: !3939)
!3943 = !DILocation(line: 219, column: 9, scope: !3939)
!3944 = !DILocation(line: 223, column: 13, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3946, file: !3, line: 223, column: 13)
!3946 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 222, column: 5)
!3947 = !DILocation(line: 223, column: 13, scope: !3946)
!3948 = !DILocation(line: 224, column: 13, scope: !3945)
!3949 = !DILocation(line: 226, column: 13, scope: !3945)
!3950 = !DILocation(line: 228, column: 1, scope: !3919)
!3951 = distinct !DISubprogram(name: "unz64local_DosDateToTmuDate", scope: !3, file: !3, line: 852, type: !3952, scopeLine: 853, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{null, !51, !3954}
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!3955 = !DILocalVariable(name: "ulDosDate", arg: 1, scope: !3951, file: !3, line: 852, type: !51)
!3956 = !DILocation(line: 852, column: 50, scope: !3951)
!3957 = !DILocalVariable(name: "ptm", arg: 2, scope: !3951, file: !3, line: 852, type: !3954)
!3958 = !DILocation(line: 852, column: 69, scope: !3951)
!3959 = !DILocalVariable(name: "uDate", scope: !3951, file: !3, line: 854, type: !51)
!3960 = !DILocation(line: 854, column: 14, scope: !3951)
!3961 = !DILocation(line: 855, column: 24, scope: !3951)
!3962 = !DILocation(line: 855, column: 33, scope: !3951)
!3963 = !DILocation(line: 855, column: 11, scope: !3951)
!3964 = !DILocation(line: 856, column: 27, scope: !3951)
!3965 = !DILocation(line: 856, column: 32, scope: !3951)
!3966 = !DILocation(line: 856, column: 20, scope: !3951)
!3967 = !DILocation(line: 856, column: 5, scope: !3951)
!3968 = !DILocation(line: 856, column: 10, scope: !3951)
!3969 = !DILocation(line: 856, column: 18, scope: !3951)
!3970 = !DILocation(line: 857, column: 30, scope: !3951)
!3971 = !DILocation(line: 857, column: 36, scope: !3951)
!3972 = !DILocation(line: 857, column: 43, scope: !3951)
!3973 = !DILocation(line: 857, column: 49, scope: !3951)
!3974 = !DILocation(line: 857, column: 20, scope: !3951)
!3975 = !DILocation(line: 857, column: 5, scope: !3951)
!3976 = !DILocation(line: 857, column: 10, scope: !3951)
!3977 = !DILocation(line: 857, column: 17, scope: !3951)
!3978 = !DILocation(line: 858, column: 29, scope: !3951)
!3979 = !DILocation(line: 858, column: 34, scope: !3951)
!3980 = !DILocation(line: 858, column: 43, scope: !3951)
!3981 = !DILocation(line: 858, column: 51, scope: !3951)
!3982 = !DILocation(line: 858, column: 20, scope: !3951)
!3983 = !DILocation(line: 858, column: 5, scope: !3951)
!3984 = !DILocation(line: 858, column: 10, scope: !3951)
!3985 = !DILocation(line: 858, column: 18, scope: !3951)
!3986 = !DILocation(line: 860, column: 29, scope: !3951)
!3987 = !DILocation(line: 860, column: 39, scope: !3951)
!3988 = !DILocation(line: 860, column: 47, scope: !3951)
!3989 = !DILocation(line: 860, column: 20, scope: !3951)
!3990 = !DILocation(line: 860, column: 5, scope: !3951)
!3991 = !DILocation(line: 860, column: 10, scope: !3951)
!3992 = !DILocation(line: 860, column: 18, scope: !3951)
!3993 = !DILocation(line: 861, column: 29, scope: !3951)
!3994 = !DILocation(line: 861, column: 38, scope: !3951)
!3995 = !DILocation(line: 861, column: 45, scope: !3951)
!3996 = !DILocation(line: 861, column: 20, scope: !3951)
!3997 = !DILocation(line: 861, column: 5, scope: !3951)
!3998 = !DILocation(line: 861, column: 10, scope: !3951)
!3999 = !DILocation(line: 861, column: 17, scope: !3951)
!4000 = !DILocation(line: 862, column: 31, scope: !3951)
!4001 = !DILocation(line: 862, column: 40, scope: !3951)
!4002 = !DILocation(line: 862, column: 29, scope: !3951)
!4003 = !DILocation(line: 862, column: 20, scope: !3951)
!4004 = !DILocation(line: 862, column: 5, scope: !3951)
!4005 = !DILocation(line: 862, column: 10, scope: !3951)
!4006 = !DILocation(line: 862, column: 17, scope: !3951)
!4007 = !DILocation(line: 863, column: 1, scope: !3951)
