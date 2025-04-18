; ModuleID = 'src/htszlib.c'
source_filename = "src/htszlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_fileinfo = type { %struct.tm_zip_s, i64, i64, i64 }
%struct.tm_zip_s = type { i32, i32, i32, i32, i32, i32 }
%struct.unz_file_info_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.tm_unz_s }
%struct.tm_unz_s = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [18 x i8] c"hts-cache/new.zip\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [19 x i8] c"hts-cache/meta.zip\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [39 x i8] c"Meta-data extracted by HTTrack/3.48-21\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [9 x i8] c"no error\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [20 x i8] c"end of list of file\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [16 x i8] c"parameter error\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [13 x i8] c"bad zip file\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [10 x i8] c"crc error\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1, !dbg !54

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hts_zunpack(ptr noundef %0, ptr noundef %1) #0 !dbg !78 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8192 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1024 x i8], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !82, metadata !DIExpression()), !dbg !83
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata ptr %5, metadata !86, metadata !DIExpression()), !dbg !87
  store i32 -1, ptr %5, align 4, !dbg !87
  %15 = load ptr, ptr %3, align 8, !dbg !88
  %16 = icmp ne ptr %15, null, !dbg !90
  br i1 %16, label %17, label %111, !dbg !91

17:                                               ; preds = %2
  %18 = load ptr, ptr %4, align 8, !dbg !92
  %19 = icmp ne ptr %18, null, !dbg !93
  br i1 %19, label %20, label %111, !dbg !94

20:                                               ; preds = %17
  %21 = load ptr, ptr %3, align 8, !dbg !95
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !95
  %23 = load i8, ptr %22, align 1, !dbg !95
  %24 = sext i8 %23 to i32, !dbg !95
  %25 = icmp ne i32 %24, 0, !dbg !95
  br i1 %25, label %26, label %110, !dbg !98

26:                                               ; preds = %20
  %27 = load ptr, ptr %4, align 8, !dbg !99
  %28 = getelementptr inbounds i8, ptr %27, i64 0, !dbg !99
  %29 = load i8, ptr %28, align 1, !dbg !99
  %30 = sext i8 %29 to i32, !dbg !99
  %31 = icmp ne i32 %30, 0, !dbg !99
  br i1 %31, label %32, label %110, !dbg !100

32:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %6, metadata !101, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata ptr %7, metadata !107, metadata !DIExpression()), !dbg !165
  %33 = getelementptr inbounds [8192 x i8], ptr %6, i64 0, i64 0, !dbg !166
  %34 = load ptr, ptr %3, align 8, !dbg !166
  %35 = call ptr @fconv(ptr noundef %33, i64 noundef 8192, ptr noundef %34), !dbg !166
  %36 = call noalias ptr @fopen(ptr noundef %35, ptr noundef @.str), !dbg !167
  store ptr %36, ptr %7, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata ptr %8, metadata !168, metadata !DIExpression()), !dbg !170
  %37 = load ptr, ptr %7, align 8, !dbg !171
  %38 = icmp ne ptr %37, null, !dbg !172
  br i1 %38, label %39, label %42, !dbg !171

39:                                               ; preds = %32
  %40 = load ptr, ptr %7, align 8, !dbg !173
  %41 = call i32 @fileno(ptr noundef %40) #7, !dbg !174
  br label %43, !dbg !171

42:                                               ; preds = %32
  br label %43, !dbg !171

43:                                               ; preds = %42, %39
  %44 = phi i32 [ %41, %39 ], [ -1, %42 ], !dbg !171
  store i32 %44, ptr %8, align 4, !dbg !170
  call void @llvm.dbg.declare(metadata ptr %9, metadata !175, metadata !DIExpression()), !dbg !176
  %45 = load i32, ptr %8, align 4, !dbg !177
  %46 = icmp ne i32 %45, -1, !dbg !178
  br i1 %46, label %47, label %50, !dbg !177

47:                                               ; preds = %43
  %48 = load i32, ptr %8, align 4, !dbg !179
  %49 = call i32 @dup(i32 noundef %48) #7, !dbg !180
  br label %51, !dbg !177

50:                                               ; preds = %43
  br label %51, !dbg !177

51:                                               ; preds = %50, %47
  %52 = phi i32 [ %49, %47 ], [ -1, %50 ], !dbg !177
  store i32 %52, ptr %9, align 4, !dbg !176
  call void @llvm.dbg.declare(metadata ptr %10, metadata !181, metadata !DIExpression()), !dbg !196
  %53 = load i32, ptr %9, align 4, !dbg !197
  %54 = icmp ne i32 %53, -1, !dbg !198
  br i1 %54, label %55, label %58, !dbg !197

55:                                               ; preds = %51
  %56 = load i32, ptr %9, align 4, !dbg !199
  %57 = call ptr @gzdopen(i32 noundef %56, ptr noundef @.str), !dbg !200
  br label %59, !dbg !197

58:                                               ; preds = %51
  br label %59, !dbg !197

59:                                               ; preds = %58, %55
  %60 = phi ptr [ %57, %55 ], [ null, %58 ], !dbg !197
  store ptr %60, ptr %10, align 8, !dbg !196
  %61 = load ptr, ptr %10, align 8, !dbg !201
  %62 = icmp ne ptr %61, null, !dbg !201
  br i1 %62, label %63, label %103, !dbg !203

63:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata ptr %11, metadata !204, metadata !DIExpression()), !dbg !206
  %64 = getelementptr inbounds [8192 x i8], ptr %6, i64 0, i64 0, !dbg !207
  %65 = load ptr, ptr %4, align 8, !dbg !207
  %66 = call ptr @fconv(ptr noundef %64, i64 noundef 8192, ptr noundef %65), !dbg !207
  %67 = call noalias ptr @fopen(ptr noundef %66, ptr noundef @.str.1), !dbg !208
  store ptr %67, ptr %11, align 8, !dbg !206
  call void @llvm.dbg.declare(metadata ptr %12, metadata !209, metadata !DIExpression()), !dbg !210
  store i32 0, ptr %12, align 4, !dbg !210
  %68 = load ptr, ptr %11, align 8, !dbg !211
  %69 = icmp ne ptr %68, null, !dbg !211
  br i1 %69, label %70, label %98, !dbg !213

70:                                               ; preds = %63
  call void @llvm.dbg.declare(metadata ptr %13, metadata !214, metadata !DIExpression()), !dbg !216
  br label %71, !dbg !217

71:                                               ; preds = %92, %70
  call void @llvm.dbg.declare(metadata ptr %14, metadata !218, metadata !DIExpression()), !dbg !223
  %72 = load ptr, ptr %10, align 8, !dbg !224
  %73 = getelementptr inbounds [1024 x i8], ptr %14, i64 0, i64 0, !dbg !225
  %74 = call i32 @gzread(ptr noundef %72, ptr noundef %73, i32 noundef 1024), !dbg !226
  store i32 %74, ptr %13, align 4, !dbg !227
  %75 = load i32, ptr %13, align 4, !dbg !228
  %76 = icmp sgt i32 %75, 0, !dbg !230
  br i1 %76, label %77, label %91, !dbg !231

77:                                               ; preds = %71
  %78 = load i32, ptr %13, align 4, !dbg !232
  %79 = load i32, ptr %12, align 4, !dbg !234
  %80 = add nsw i32 %79, %78, !dbg !234
  store i32 %80, ptr %12, align 4, !dbg !234
  %81 = getelementptr inbounds [1024 x i8], ptr %14, i64 0, i64 0, !dbg !235
  %82 = load i32, ptr %13, align 4, !dbg !237
  %83 = sext i32 %82 to i64, !dbg !237
  %84 = load ptr, ptr %11, align 8, !dbg !238
  %85 = call i64 @fwrite(ptr noundef %81, i64 noundef 1, i64 noundef %83, ptr noundef %84), !dbg !239
  %86 = load i32, ptr %13, align 4, !dbg !240
  %87 = sext i32 %86 to i64, !dbg !240
  %88 = icmp ne i64 %85, %87, !dbg !241
  br i1 %88, label %89, label %90, !dbg !242

89:                                               ; preds = %77
  store i32 -1, ptr %12, align 4, !dbg !243
  store i32 -1, ptr %13, align 4, !dbg !244
  br label %90, !dbg !245

90:                                               ; preds = %89, %77
  br label %91, !dbg !246

91:                                               ; preds = %90, %71
  br label %92, !dbg !247

92:                                               ; preds = %91
  %93 = load i32, ptr %13, align 4, !dbg !248
  %94 = icmp sgt i32 %93, 0, !dbg !249
  br i1 %94, label %71, label %95, !dbg !247, !llvm.loop !250

95:                                               ; preds = %92
  %96 = load ptr, ptr %11, align 8, !dbg !253
  %97 = call i32 @fclose(ptr noundef %96), !dbg !254
  br label %99, !dbg !255

98:                                               ; preds = %63
  store i32 -1, ptr %12, align 4, !dbg !256
  br label %99

99:                                               ; preds = %98, %95
  %100 = load ptr, ptr %10, align 8, !dbg !257
  %101 = call i32 @gzclose(ptr noundef %100), !dbg !258
  %102 = load i32, ptr %12, align 4, !dbg !259
  store i32 %102, ptr %5, align 4, !dbg !260
  br label %103, !dbg !261

103:                                              ; preds = %99, %59
  %104 = load ptr, ptr %7, align 8, !dbg !262
  %105 = icmp ne ptr %104, null, !dbg !264
  br i1 %105, label %106, label %109, !dbg !265

106:                                              ; preds = %103
  %107 = load ptr, ptr %7, align 8, !dbg !266
  %108 = call i32 @fclose(ptr noundef %107), !dbg !268
  br label %109, !dbg !269

109:                                              ; preds = %106, %103
  br label %110, !dbg !270

110:                                              ; preds = %109, %26, %20
  br label %111, !dbg !271

111:                                              ; preds = %110, %17, %2
  %112 = load i32, ptr %5, align 4, !dbg !272
  ret i32 %112, !dbg !273
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare ptr @fconv(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @dup(i32 noundef) #3

declare ptr @gzdopen(i32 noundef, ptr noundef) #2

declare i32 @gzread(ptr noundef, ptr noundef, i32 noundef) #2

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

declare i32 @gzclose(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hts_extract_meta(ptr noundef %0) #0 !dbg !274 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca [8192 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.zip_fileinfo, align 8
  %8 = alloca %struct.unz_file_info_s, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca [8192 x i8], align 16
  %11 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata ptr %4, metadata !279, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata ptr %5, metadata !281, metadata !DIExpression()), !dbg !286
  %12 = getelementptr inbounds [8192 x i8], ptr %4, i64 0, i64 0, !dbg !287
  %13 = load ptr, ptr %3, align 8, !dbg !287
  %14 = call ptr @fconcat(ptr noundef %12, i64 noundef 8192, ptr noundef %13, ptr noundef @.str.2), !dbg !287
  %15 = call ptr @unzOpen(ptr noundef %14), !dbg !288
  store ptr %15, ptr %5, align 8, !dbg !286
  call void @llvm.dbg.declare(metadata ptr %6, metadata !289, metadata !DIExpression()), !dbg !292
  %16 = getelementptr inbounds [8192 x i8], ptr %4, i64 0, i64 0, !dbg !293
  %17 = load ptr, ptr %3, align 8, !dbg !293
  %18 = call ptr @fconcat(ptr noundef %16, i64 noundef 8192, ptr noundef %17, ptr noundef @.str.3), !dbg !293
  %19 = call ptr @zipOpen(ptr noundef %18, i32 noundef 0), !dbg !294
  store ptr %19, ptr %6, align 8, !dbg !292
  %20 = load ptr, ptr %5, align 8, !dbg !295
  %21 = icmp ne ptr %20, null, !dbg !297
  br i1 %21, label %22, label %94, !dbg !298

22:                                               ; preds = %1
  %23 = load ptr, ptr %6, align 8, !dbg !299
  %24 = icmp ne ptr %23, null, !dbg !300
  br i1 %24, label %25, label %94, !dbg !301

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 8, !dbg !302
  %27 = call i32 @unzGoToFirstFile(ptr noundef %26), !dbg !305
  %28 = icmp eq i32 %27, 0, !dbg !306
  br i1 %28, label %29, label %89, !dbg !307

29:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata ptr %7, metadata !308, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.declare(metadata ptr %8, metadata !329, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.declare(metadata ptr %9, metadata !358, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata ptr %10, metadata !363, metadata !DIExpression()), !dbg !364
  %30 = getelementptr inbounds [8192 x i8], ptr %10, i64 0, i64 0, !dbg !365
  call void @llvm.memset.p0.i64(ptr align 16 %30, i8 0, i64 8192, i1 false), !dbg !365
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 48, i1 false), !dbg !366
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 136, i1 false), !dbg !367
  br label %31, !dbg !368

31:                                               ; preds = %84, %29
  call void @llvm.dbg.declare(metadata ptr %11, metadata !369, metadata !DIExpression()), !dbg !371
  %32 = getelementptr inbounds [4096 x i8], ptr %9, i64 0, i64 0, !dbg !372
  store i8 0, ptr %32, align 16, !dbg !373
  %33 = getelementptr inbounds [8192 x i8], ptr %10, i64 0, i64 0, !dbg !374
  store i8 0, ptr %33, align 16, !dbg !375
  %34 = load ptr, ptr %5, align 8, !dbg !376
  %35 = call i32 @unzOpenCurrentFile(ptr noundef %34), !dbg !378
  %36 = icmp eq i32 %35, 0, !dbg !379
  br i1 %36, label %37, label %83, !dbg !380

37:                                               ; preds = %31
  %38 = load ptr, ptr %5, align 8, !dbg !381
  %39 = getelementptr inbounds [8192 x i8], ptr %10, i64 0, i64 0, !dbg !384
  %40 = call i32 @unzGetLocalExtrafield(ptr noundef %38, ptr noundef %39, i32 noundef 8190), !dbg !385
  store i32 %40, ptr %11, align 4, !dbg !386
  %41 = icmp sgt i32 %40, 0, !dbg !387
  br i1 %41, label %42, label %80, !dbg !388

42:                                               ; preds = %37
  %43 = load ptr, ptr %5, align 8, !dbg !389
  %44 = getelementptr inbounds [4096 x i8], ptr %9, i64 0, i64 0, !dbg !390
  %45 = call i32 @unzGetCurrentFileInfo(ptr noundef %43, ptr noundef %8, ptr noundef %44, i64 noundef 4094, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0), !dbg !391
  %46 = icmp eq i32 %45, 0, !dbg !392
  br i1 %46, label %47, label %80, !dbg !393

47:                                               ; preds = %42
  %48 = load i32, ptr %11, align 4, !dbg !394
  %49 = sext i32 %48 to i64, !dbg !396
  %50 = getelementptr inbounds [8192 x i8], ptr %10, i64 0, i64 %49, !dbg !396
  store i8 0, ptr %50, align 1, !dbg !397
  %51 = getelementptr inbounds %struct.unz_file_info_s, ptr %8, i32 0, i32 4, !dbg !398
  %52 = load i64, ptr %51, align 8, !dbg !398
  %53 = getelementptr inbounds %struct.zip_fileinfo, ptr %7, i32 0, i32 1, !dbg !399
  store i64 %52, ptr %53, align 8, !dbg !400
  %54 = getelementptr inbounds %struct.unz_file_info_s, ptr %8, i32 0, i32 12, !dbg !401
  %55 = load i64, ptr %54, align 8, !dbg !401
  %56 = getelementptr inbounds %struct.zip_fileinfo, ptr %7, i32 0, i32 2, !dbg !402
  store i64 %55, ptr %56, align 8, !dbg !403
  %57 = getelementptr inbounds %struct.unz_file_info_s, ptr %8, i32 0, i32 13, !dbg !404
  %58 = load i64, ptr %57, align 8, !dbg !404
  %59 = getelementptr inbounds %struct.zip_fileinfo, ptr %7, i32 0, i32 3, !dbg !405
  store i64 %58, ptr %59, align 8, !dbg !406
  %60 = load ptr, ptr %6, align 8, !dbg !407
  %61 = getelementptr inbounds [4096 x i8], ptr %9, i64 0, i64 0, !dbg !409
  %62 = call i32 @zipOpenNewFileInZip(ptr noundef %60, ptr noundef %61, ptr noundef %7, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 8, i32 noundef -1), !dbg !410
  %63 = icmp eq i32 %62, 0, !dbg !411
  br i1 %63, label %64, label %79, !dbg !412

64:                                               ; preds = %47
  %65 = load ptr, ptr %6, align 8, !dbg !413
  %66 = getelementptr inbounds [8192 x i8], ptr %10, i64 0, i64 0, !dbg !416
  %67 = getelementptr inbounds [8192 x i8], ptr %10, i64 0, i64 0, !dbg !417
  %68 = call i64 @strlen(ptr noundef %67) #8, !dbg !418
  %69 = trunc i64 %68 to i32, !dbg !419
  %70 = call i32 @zipWriteInFileInZip(ptr noundef %65, ptr noundef %66, i32 noundef %69), !dbg !420
  %71 = icmp ne i32 %70, 0, !dbg !421
  br i1 %71, label %72, label %73, !dbg !422

72:                                               ; preds = %64
  br label %73, !dbg !423

73:                                               ; preds = %72, %64
  %74 = load ptr, ptr %6, align 8, !dbg !425
  %75 = call i32 @zipCloseFileInZip(ptr noundef %74), !dbg !427
  %76 = icmp ne i32 %75, 0, !dbg !428
  br i1 %76, label %77, label %78, !dbg !429

77:                                               ; preds = %73
  br label %78, !dbg !430

78:                                               ; preds = %77, %73
  br label %79, !dbg !432

79:                                               ; preds = %78, %47
  br label %80, !dbg !433

80:                                               ; preds = %79, %42, %37
  %81 = load ptr, ptr %5, align 8, !dbg !434
  %82 = call i32 @unzCloseCurrentFile(ptr noundef %81), !dbg !435
  br label %83, !dbg !436

83:                                               ; preds = %80, %31
  br label %84, !dbg !437

84:                                               ; preds = %83
  %85 = load ptr, ptr %5, align 8, !dbg !438
  %86 = call i32 @unzGoToNextFile(ptr noundef %85), !dbg !439
  %87 = icmp eq i32 %86, 0, !dbg !440
  br i1 %87, label %31, label %88, !dbg !437, !llvm.loop !441

88:                                               ; preds = %84
  br label %89, !dbg !443

89:                                               ; preds = %88, %25
  %90 = load ptr, ptr %6, align 8, !dbg !444
  %91 = call i32 @zipClose(ptr noundef %90, ptr noundef @.str.4), !dbg !445
  %92 = load ptr, ptr %5, align 8, !dbg !446
  %93 = call i32 @unzClose(ptr noundef %92), !dbg !447
  store i32 1, ptr %2, align 4, !dbg !448
  br label %95, !dbg !448

94:                                               ; preds = %22, %1
  store i32 0, ptr %2, align 4, !dbg !449
  br label %95, !dbg !449

95:                                               ; preds = %94, %89
  %96 = load i32, ptr %2, align 4, !dbg !450
  ret i32 %96, !dbg !450
}

declare ptr @unzOpen(ptr noundef) #2

declare ptr @fconcat(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare ptr @zipOpen(ptr noundef, i32 noundef) #2

declare i32 @unzGoToFirstFile(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @unzOpenCurrentFile(ptr noundef) #2

declare i32 @unzGetLocalExtrafield(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @unzGetCurrentFileInfo(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

declare i32 @zipOpenNewFileInZip(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @zipWriteInFileInZip(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

declare i32 @zipCloseFileInZip(ptr noundef) #2

declare i32 @unzCloseCurrentFile(ptr noundef) #2

declare i32 @unzGoToNextFile(ptr noundef) #2

declare i32 @zipClose(ptr noundef, ptr noundef) #2

declare i32 @unzClose(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @hts_get_zerror(i32 noundef %0) #0 !dbg !451 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !454, metadata !DIExpression()), !dbg !455
  %4 = load i32, ptr %3, align 4, !dbg !456
  switch i32 %4, label %15 [
    i32 0, label %5
    i32 -100, label %6
    i32 -1, label %7
    i32 -102, label %11
    i32 -103, label %12
    i32 -104, label %13
    i32 -105, label %14
  ], !dbg !457

5:                                                ; preds = %1
  store ptr @.str.5, ptr %2, align 8, !dbg !458
  br label %16, !dbg !458

6:                                                ; preds = %1
  store ptr @.str.6, ptr %2, align 8, !dbg !460
  br label %16, !dbg !460

7:                                                ; preds = %1
  %8 = call ptr @__errno_location() #9, !dbg !461
  %9 = load i32, ptr %8, align 4, !dbg !461
  %10 = call ptr @strerror(i32 noundef %9) #7, !dbg !462
  store ptr %10, ptr %2, align 8, !dbg !463
  br label %16, !dbg !463

11:                                               ; preds = %1
  store ptr @.str.7, ptr %2, align 8, !dbg !464
  br label %16, !dbg !464

12:                                               ; preds = %1
  store ptr @.str.8, ptr %2, align 8, !dbg !465
  br label %16, !dbg !465

13:                                               ; preds = %1
  store ptr @.str.9, ptr %2, align 8, !dbg !466
  br label %16, !dbg !466

14:                                               ; preds = %1
  store ptr @.str.10, ptr %2, align 8, !dbg !467
  br label %16, !dbg !467

15:                                               ; preds = %1
  store ptr @.str.11, ptr %2, align 8, !dbg !468
  br label %16, !dbg !468

16:                                               ; preds = %15, %14, %13, %12, %11, %7, %6, %5
  %17 = load ptr, ptr %2, align 8, !dbg !469
  ret ptr %17, !dbg !469
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!59}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/htszlib.c", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "982ce5642b4811e593bb5b75e62d39ef")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 18)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 19)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 39)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 9)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 20)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 16)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 13)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 166, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 15)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 10)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 14)
!59 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !60, globals: !69, splitDebugInlining: false, nameTableKind: None)
!60 = !{!61, !62, !66, !67}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!69 = !{!0, !7, !9, !14, !19, !24, !29, !34, !39, !44, !49, !54}
!70 = !{i32 7, !"Dwarf Version", i32 5}
!71 = !{i32 2, !"Debug Info Version", i32 3}
!72 = !{i32 1, !"wchar_size", i32 4}
!73 = !{i32 8, !"PIC Level", i32 2}
!74 = !{i32 7, !"PIE Level", i32 2}
!75 = !{i32 7, !"uwtable", i32 2}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 16.0.0"}
!78 = distinct !DISubprogram(name: "hts_zunpack", scope: !2, file: !2, line: 54, type: !79, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{!66, !65, !65}
!81 = !{}
!82 = !DILocalVariable(name: "filename", arg: 1, scope: !78, file: !2, line: 54, type: !65)
!83 = !DILocation(line: 54, column: 23, scope: !78)
!84 = !DILocalVariable(name: "newfile", arg: 2, scope: !78, file: !2, line: 54, type: !65)
!85 = !DILocation(line: 54, column: 39, scope: !78)
!86 = !DILocalVariable(name: "ret", scope: !78, file: !2, line: 55, type: !66)
!87 = !DILocation(line: 55, column: 7, scope: !78)
!88 = !DILocation(line: 57, column: 7, scope: !89)
!89 = distinct !DILexicalBlock(scope: !78, file: !2, line: 57, column: 7)
!90 = !DILocation(line: 57, column: 16, scope: !89)
!91 = !DILocation(line: 57, column: 24, scope: !89)
!92 = !DILocation(line: 57, column: 27, scope: !89)
!93 = !DILocation(line: 57, column: 35, scope: !89)
!94 = !DILocation(line: 57, column: 7, scope: !78)
!95 = !DILocation(line: 58, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 58, column: 9)
!97 = distinct !DILexicalBlock(scope: !89, file: !2, line: 57, column: 44)
!98 = !DILocation(line: 58, column: 21, scope: !96)
!99 = !DILocation(line: 58, column: 24, scope: !96)
!100 = !DILocation(line: 58, column: 9, scope: !97)
!101 = !DILocalVariable(name: "catbuff", scope: !102, file: !2, line: 59, type: !103)
!102 = distinct !DILexicalBlock(scope: !96, file: !2, line: 58, column: 36)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65536, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 8192)
!106 = !DILocation(line: 59, column: 12, scope: !102)
!107 = !DILocalVariable(name: "in", scope: !102, file: !2, line: 60, type: !108)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !112)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !114)
!113 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !130, !132, !133, !134, !138, !140, !142, !146, !149, !151, !154, !157, !158, !159, !163, !164}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !112, file: !113, line: 51, baseType: !66, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !112, file: !113, line: 54, baseType: !65, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !112, file: !113, line: 55, baseType: !65, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !112, file: !113, line: 56, baseType: !65, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !112, file: !113, line: 57, baseType: !65, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !112, file: !113, line: 58, baseType: !65, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !112, file: !113, line: 59, baseType: !65, size: 64, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !112, file: !113, line: 60, baseType: !65, size: 64, offset: 448)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !112, file: !113, line: 61, baseType: !65, size: 64, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !112, file: !113, line: 64, baseType: !65, size: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !112, file: !113, line: 65, baseType: !65, size: 64, offset: 640)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !112, file: !113, line: 66, baseType: !65, size: 64, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !112, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !113, line: 36, flags: DIFlagFwdDecl)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !112, file: !113, line: 70, baseType: !131, size: 64, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !112, file: !113, line: 72, baseType: !66, size: 32, offset: 896)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !112, file: !113, line: 73, baseType: !66, size: 32, offset: 928)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !112, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !136, line: 152, baseType: !137)
!136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!137 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !112, file: !113, line: 77, baseType: !139, size: 16, offset: 1024)
!139 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !112, file: !113, line: 78, baseType: !141, size: 8, offset: 1040)
!141 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !112, file: !113, line: 79, baseType: !143, size: 8, offset: 1048)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 1)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !112, file: !113, line: 81, baseType: !147, size: 64, offset: 1088)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !113, line: 43, baseType: null)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !112, file: !113, line: 89, baseType: !150, size: 64, offset: 1152)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !136, line: 153, baseType: !137)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !112, file: !113, line: 91, baseType: !152, size: 64, offset: 1216)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !113, line: 37, flags: DIFlagFwdDecl)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !112, file: !113, line: 92, baseType: !155, size: 64, offset: 1280)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !113, line: 38, flags: DIFlagFwdDecl)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !112, file: !113, line: 93, baseType: !131, size: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !112, file: !113, line: 94, baseType: !61, size: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !112, file: !113, line: 95, baseType: !160, size: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !161, line: 46, baseType: !162)
!161 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!162 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !112, file: !113, line: 96, baseType: !66, size: 32, offset: 1536)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !112, file: !113, line: 98, baseType: !31, size: 160, offset: 1568)
!165 = !DILocation(line: 60, column: 19, scope: !102)
!166 = !DILocation(line: 60, column: 30, scope: !102)
!167 = !DILocation(line: 60, column: 24, scope: !102)
!168 = !DILocalVariable(name: "fd", scope: !102, file: !2, line: 61, type: !169)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!170 = !DILocation(line: 61, column: 17, scope: !102)
!171 = !DILocation(line: 61, column: 22, scope: !102)
!172 = !DILocation(line: 61, column: 25, scope: !102)
!173 = !DILocation(line: 61, column: 42, scope: !102)
!174 = !DILocation(line: 61, column: 35, scope: !102)
!175 = !DILocalVariable(name: "dup_fd", scope: !102, file: !2, line: 62, type: !169)
!176 = !DILocation(line: 62, column: 17, scope: !102)
!177 = !DILocation(line: 62, column: 26, scope: !102)
!178 = !DILocation(line: 62, column: 29, scope: !102)
!179 = !DILocation(line: 62, column: 41, scope: !102)
!180 = !DILocation(line: 62, column: 37, scope: !102)
!181 = !DILocalVariable(name: "gz", scope: !102, file: !2, line: 64, type: !182)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzFile", file: !184, line: 1301, baseType: !185)
!184 = !DIFile(filename: "/usr/include/zlib.h", directory: "", checksumkind: CSK_MD5, checksum: "69c0882c2071430ea4822b4f6c1edd30")
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gzFile_s", file: !184, line: 1818, size: 192, elements: !187)
!187 = !{!188, !190, !193}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !186, file: !184, line: 1819, baseType: !189, size: 32)
!189 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !186, file: !184, line: 1820, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !186, file: !184, line: 1821, baseType: !194, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !195, line: 63, baseType: !135)
!195 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!196 = !DILocation(line: 64, column: 20, scope: !102)
!197 = !DILocation(line: 64, column: 25, scope: !102)
!198 = !DILocation(line: 64, column: 32, scope: !102)
!199 = !DILocation(line: 64, column: 48, scope: !102)
!200 = !DILocation(line: 64, column: 40, scope: !102)
!201 = !DILocation(line: 66, column: 11, scope: !202)
!202 = distinct !DILexicalBlock(scope: !102, file: !2, line: 66, column: 11)
!203 = !DILocation(line: 66, column: 11, scope: !102)
!204 = !DILocalVariable(name: "fpout", scope: !205, file: !2, line: 67, type: !108)
!205 = distinct !DILexicalBlock(scope: !202, file: !2, line: 66, column: 15)
!206 = !DILocation(line: 67, column: 21, scope: !205)
!207 = !DILocation(line: 67, column: 35, scope: !205)
!208 = !DILocation(line: 67, column: 29, scope: !205)
!209 = !DILocalVariable(name: "size", scope: !205, file: !2, line: 68, type: !66)
!210 = !DILocation(line: 68, column: 13, scope: !205)
!211 = !DILocation(line: 70, column: 13, scope: !212)
!212 = distinct !DILexicalBlock(scope: !205, file: !2, line: 70, column: 13)
!213 = !DILocation(line: 70, column: 13, scope: !205)
!214 = !DILocalVariable(name: "nr", scope: !215, file: !2, line: 71, type: !66)
!215 = distinct !DILexicalBlock(scope: !212, file: !2, line: 70, column: 20)
!216 = !DILocation(line: 71, column: 15, scope: !215)
!217 = !DILocation(line: 73, column: 11, scope: !215)
!218 = !DILocalVariable(name: "buff", scope: !219, file: !2, line: 74, type: !220)
!219 = distinct !DILexicalBlock(scope: !215, file: !2, line: 73, column: 14)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 1024)
!223 = !DILocation(line: 74, column: 25, scope: !219)
!224 = !DILocation(line: 76, column: 25, scope: !219)
!225 = !DILocation(line: 76, column: 29, scope: !219)
!226 = !DILocation(line: 76, column: 18, scope: !219)
!227 = !DILocation(line: 76, column: 16, scope: !219)
!228 = !DILocation(line: 77, column: 17, scope: !229)
!229 = distinct !DILexicalBlock(scope: !219, file: !2, line: 77, column: 17)
!230 = !DILocation(line: 77, column: 20, scope: !229)
!231 = !DILocation(line: 77, column: 17, scope: !219)
!232 = !DILocation(line: 78, column: 23, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !2, line: 77, column: 25)
!234 = !DILocation(line: 78, column: 20, scope: !233)
!235 = !DILocation(line: 79, column: 26, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !2, line: 79, column: 19)
!237 = !DILocation(line: 79, column: 35, scope: !236)
!238 = !DILocation(line: 79, column: 39, scope: !236)
!239 = !DILocation(line: 79, column: 19, scope: !236)
!240 = !DILocation(line: 79, column: 49, scope: !236)
!241 = !DILocation(line: 79, column: 46, scope: !236)
!242 = !DILocation(line: 79, column: 19, scope: !233)
!243 = !DILocation(line: 80, column: 27, scope: !236)
!244 = !DILocation(line: 80, column: 20, scope: !236)
!245 = !DILocation(line: 80, column: 17, scope: !236)
!246 = !DILocation(line: 81, column: 13, scope: !233)
!247 = !DILocation(line: 82, column: 11, scope: !219)
!248 = !DILocation(line: 82, column: 19, scope: !215)
!249 = !DILocation(line: 82, column: 22, scope: !215)
!250 = distinct !{!250, !217, !251, !252}
!251 = !DILocation(line: 82, column: 25, scope: !215)
!252 = !{!"llvm.loop.mustprogress"}
!253 = !DILocation(line: 83, column: 18, scope: !215)
!254 = !DILocation(line: 83, column: 11, scope: !215)
!255 = !DILocation(line: 84, column: 9, scope: !215)
!256 = !DILocation(line: 85, column: 16, scope: !212)
!257 = !DILocation(line: 86, column: 17, scope: !205)
!258 = !DILocation(line: 86, column: 9, scope: !205)
!259 = !DILocation(line: 87, column: 21, scope: !205)
!260 = !DILocation(line: 87, column: 13, scope: !205)
!261 = !DILocation(line: 88, column: 7, scope: !205)
!262 = !DILocation(line: 89, column: 11, scope: !263)
!263 = distinct !DILexicalBlock(scope: !102, file: !2, line: 89, column: 11)
!264 = !DILocation(line: 89, column: 14, scope: !263)
!265 = !DILocation(line: 89, column: 11, scope: !102)
!266 = !DILocation(line: 90, column: 16, scope: !267)
!267 = distinct !DILexicalBlock(scope: !263, file: !2, line: 89, column: 23)
!268 = !DILocation(line: 90, column: 9, scope: !267)
!269 = !DILocation(line: 91, column: 7, scope: !267)
!270 = !DILocation(line: 92, column: 5, scope: !102)
!271 = !DILocation(line: 93, column: 3, scope: !97)
!272 = !DILocation(line: 94, column: 10, scope: !78)
!273 = !DILocation(line: 94, column: 3, scope: !78)
!274 = distinct !DISubprogram(name: "hts_extract_meta", scope: !2, file: !2, line: 97, type: !275, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !81)
!275 = !DISubroutineType(types: !276)
!276 = !{!66, !67}
!277 = !DILocalVariable(name: "path", arg: 1, scope: !274, file: !2, line: 97, type: !67)
!278 = !DILocation(line: 97, column: 34, scope: !274)
!279 = !DILocalVariable(name: "catbuff", scope: !274, file: !2, line: 98, type: !103)
!280 = !DILocation(line: 98, column: 8, scope: !274)
!281 = !DILocalVariable(name: "zFile", scope: !274, file: !2, line: 99, type: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "unzFile", file: !283, line: 70, baseType: !284)
!283 = !DIFile(filename: "./src/minizip/unzip.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "11ae6a9d654c95c47da55fe16772a1e5")
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidp", file: !285, line: 410, baseType: !61)
!285 = !DIFile(filename: "/usr/include/zconf.h", directory: "", checksumkind: CSK_MD5, checksum: "95e83c46958f6395f746c80cc6799e76")
!286 = !DILocation(line: 99, column: 11, scope: !274)
!287 = !DILocation(line: 99, column: 27, scope: !274)
!288 = !DILocation(line: 99, column: 19, scope: !274)
!289 = !DILocalVariable(name: "zFileOut", scope: !274, file: !2, line: 100, type: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "zipFile", file: !291, line: 69, baseType: !284)
!291 = !DIFile(filename: "./src/minizip/zip.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "e2067124d539336fa48f8e1adc0a9592")
!292 = !DILocation(line: 100, column: 11, scope: !274)
!293 = !DILocation(line: 100, column: 30, scope: !274)
!294 = !DILocation(line: 100, column: 22, scope: !274)
!295 = !DILocation(line: 102, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !274, file: !2, line: 102, column: 7)
!297 = !DILocation(line: 102, column: 13, scope: !296)
!298 = !DILocation(line: 102, column: 21, scope: !296)
!299 = !DILocation(line: 102, column: 24, scope: !296)
!300 = !DILocation(line: 102, column: 33, scope: !296)
!301 = !DILocation(line: 102, column: 7, scope: !274)
!302 = !DILocation(line: 103, column: 26, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !2, line: 103, column: 9)
!304 = distinct !DILexicalBlock(scope: !296, file: !2, line: 102, column: 42)
!305 = !DILocation(line: 103, column: 9, scope: !303)
!306 = !DILocation(line: 103, column: 33, scope: !303)
!307 = !DILocation(line: 103, column: 9, scope: !304)
!308 = !DILocalVariable(name: "fi", scope: !309, file: !2, line: 104, type: !310)
!309 = distinct !DILexicalBlock(scope: !303, file: !2, line: 103, column: 42)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_fileinfo", file: !291, line: 107, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !291, line: 99, size: 384, elements: !312)
!312 = !{!313, !324, !326, !327}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tmz_date", scope: !311, file: !291, line: 101, baseType: !314, size: 192)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "tm_zip", file: !291, line: 97, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm_zip_s", file: !291, line: 89, size: 192, elements: !316)
!316 = !{!317, !319, !320, !321, !322, !323}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !315, file: !291, line: 91, baseType: !318, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !285, line: 393, baseType: !189)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !315, file: !291, line: 92, baseType: !318, size: 32, offset: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !315, file: !291, line: 93, baseType: !318, size: 32, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !315, file: !291, line: 94, baseType: !318, size: 32, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !315, file: !291, line: 95, baseType: !318, size: 32, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !315, file: !291, line: 96, baseType: !318, size: 32, offset: 160)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "dosDate", scope: !311, file: !291, line: 102, baseType: !325, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !285, line: 394, baseType: !162)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "internal_fa", scope: !311, file: !291, line: 105, baseType: !325, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "external_fa", scope: !311, file: !291, line: 106, baseType: !325, size: 64, offset: 320)
!328 = !DILocation(line: 104, column: 20, scope: !309)
!329 = !DILocalVariable(name: "ufi", scope: !309, file: !2, line: 105, type: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "unz_file_info", file: !283, line: 151, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unz_file_info_s", file: !283, line: 132, size: 1088, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !331, file: !283, line: 134, baseType: !325, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "version_needed", scope: !331, file: !283, line: 135, baseType: !325, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !331, file: !283, line: 136, baseType: !325, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "compression_method", scope: !331, file: !283, line: 137, baseType: !325, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dosDate", scope: !331, file: !283, line: 138, baseType: !325, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !331, file: !283, line: 139, baseType: !325, size: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !331, file: !283, line: 140, baseType: !325, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !331, file: !283, line: 141, baseType: !325, size: 64, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "size_filename", scope: !331, file: !283, line: 142, baseType: !325, size: 64, offset: 512)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "size_file_extra", scope: !331, file: !283, line: 143, baseType: !325, size: 64, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "size_file_comment", scope: !331, file: !283, line: 144, baseType: !325, size: 64, offset: 640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "disk_num_start", scope: !331, file: !283, line: 146, baseType: !325, size: 64, offset: 704)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "internal_fa", scope: !331, file: !283, line: 147, baseType: !325, size: 64, offset: 768)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "external_fa", scope: !331, file: !283, line: 148, baseType: !325, size: 64, offset: 832)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tmu_date", scope: !331, file: !283, line: 150, baseType: !348, size: 192, offset: 896)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "tm_unz", file: !283, line: 92, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm_unz_s", file: !283, line: 84, size: 192, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !349, file: !283, line: 86, baseType: !318, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !349, file: !283, line: 87, baseType: !318, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !349, file: !283, line: 88, baseType: !318, size: 32, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !349, file: !283, line: 89, baseType: !318, size: 32, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !349, file: !283, line: 90, baseType: !318, size: 32, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !349, file: !283, line: 91, baseType: !318, size: 32, offset: 160)
!357 = !DILocation(line: 105, column: 21, scope: !309)
!358 = !DILocalVariable(name: "filename", scope: !309, file: !2, line: 106, type: !359)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 4096)
!362 = !DILocation(line: 106, column: 19, scope: !309)
!363 = !DILocalVariable(name: "comment", scope: !309, file: !2, line: 107, type: !103)
!364 = !DILocation(line: 107, column: 19, scope: !309)
!365 = !DILocation(line: 109, column: 7, scope: !309)
!366 = !DILocation(line: 110, column: 7, scope: !309)
!367 = !DILocation(line: 111, column: 7, scope: !309)
!368 = !DILocation(line: 112, column: 7, scope: !309)
!369 = !DILocalVariable(name: "readSizeHeader", scope: !370, file: !2, line: 113, type: !66)
!370 = distinct !DILexicalBlock(scope: !309, file: !2, line: 112, column: 10)
!371 = !DILocation(line: 113, column: 13, scope: !370)
!372 = !DILocation(line: 115, column: 9, scope: !370)
!373 = !DILocation(line: 115, column: 21, scope: !370)
!374 = !DILocation(line: 116, column: 9, scope: !370)
!375 = !DILocation(line: 116, column: 20, scope: !370)
!376 = !DILocation(line: 118, column: 32, scope: !377)
!377 = distinct !DILexicalBlock(scope: !370, file: !2, line: 118, column: 13)
!378 = !DILocation(line: 118, column: 13, scope: !377)
!379 = !DILocation(line: 118, column: 39, scope: !377)
!380 = !DILocation(line: 118, column: 13, scope: !370)
!381 = !DILocation(line: 120, column: 38, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !2, line: 119, column: 15)
!383 = distinct !DILexicalBlock(scope: !377, file: !2, line: 118, column: 48)
!384 = !DILocation(line: 120, column: 45, scope: !382)
!385 = !DILocation(line: 120, column: 16, scope: !382)
!386 = !DILocation(line: 119, column: 31, scope: !382)
!387 = !DILocation(line: 120, column: 76, scope: !382)
!388 = !DILocation(line: 121, column: 15, scope: !382)
!389 = !DILocation(line: 121, column: 40, scope: !382)
!390 = !DILocation(line: 121, column: 53, scope: !382)
!391 = !DILocation(line: 121, column: 18, scope: !382)
!392 = !DILocation(line: 123, column: 43, scope: !382)
!393 = !DILocation(line: 119, column: 15, scope: !383)
!394 = !DILocation(line: 124, column: 21, scope: !395)
!395 = distinct !DILexicalBlock(scope: !382, file: !2, line: 123, column: 52)
!396 = !DILocation(line: 124, column: 13, scope: !395)
!397 = !DILocation(line: 124, column: 37, scope: !395)
!398 = !DILocation(line: 125, column: 30, scope: !395)
!399 = !DILocation(line: 125, column: 16, scope: !395)
!400 = !DILocation(line: 125, column: 24, scope: !395)
!401 = !DILocation(line: 126, column: 34, scope: !395)
!402 = !DILocation(line: 126, column: 16, scope: !395)
!403 = !DILocation(line: 126, column: 28, scope: !395)
!404 = !DILocation(line: 127, column: 34, scope: !395)
!405 = !DILocation(line: 127, column: 16, scope: !395)
!406 = !DILocation(line: 127, column: 28, scope: !395)
!407 = !DILocation(line: 128, column: 37, scope: !408)
!408 = distinct !DILexicalBlock(scope: !395, file: !2, line: 128, column: 17)
!409 = !DILocation(line: 128, column: 47, scope: !408)
!410 = !DILocation(line: 128, column: 17, scope: !408)
!411 = !DILocation(line: 129, column: 72, scope: !408)
!412 = !DILocation(line: 128, column: 17, scope: !395)
!413 = !DILocation(line: 130, column: 39, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !2, line: 130, column: 19)
!415 = distinct !DILexicalBlock(scope: !408, file: !2, line: 129, column: 81)
!416 = !DILocation(line: 130, column: 49, scope: !414)
!417 = !DILocation(line: 130, column: 71, scope: !414)
!418 = !DILocation(line: 130, column: 64, scope: !414)
!419 = !DILocation(line: 130, column: 58, scope: !414)
!420 = !DILocation(line: 130, column: 19, scope: !414)
!421 = !DILocation(line: 131, column: 19, scope: !414)
!422 = !DILocation(line: 130, column: 19, scope: !415)
!423 = !DILocation(line: 132, column: 15, scope: !424)
!424 = distinct !DILexicalBlock(scope: !414, file: !2, line: 131, column: 28)
!425 = !DILocation(line: 133, column: 37, scope: !426)
!426 = distinct !DILexicalBlock(scope: !415, file: !2, line: 133, column: 19)
!427 = !DILocation(line: 133, column: 19, scope: !426)
!428 = !DILocation(line: 133, column: 47, scope: !426)
!429 = !DILocation(line: 133, column: 19, scope: !415)
!430 = !DILocation(line: 134, column: 15, scope: !431)
!431 = distinct !DILexicalBlock(scope: !426, file: !2, line: 133, column: 56)
!432 = !DILocation(line: 135, column: 13, scope: !415)
!433 = !DILocation(line: 136, column: 11, scope: !395)
!434 = !DILocation(line: 137, column: 31, scope: !383)
!435 = !DILocation(line: 137, column: 11, scope: !383)
!436 = !DILocation(line: 138, column: 9, scope: !383)
!437 = !DILocation(line: 139, column: 7, scope: !370)
!438 = !DILocation(line: 139, column: 31, scope: !309)
!439 = !DILocation(line: 139, column: 15, scope: !309)
!440 = !DILocation(line: 139, column: 38, scope: !309)
!441 = distinct !{!441, !368, !442, !252}
!442 = !DILocation(line: 139, column: 45, scope: !309)
!443 = !DILocation(line: 140, column: 5, scope: !309)
!444 = !DILocation(line: 141, column: 14, scope: !304)
!445 = !DILocation(line: 141, column: 5, scope: !304)
!446 = !DILocation(line: 142, column: 14, scope: !304)
!447 = !DILocation(line: 142, column: 5, scope: !304)
!448 = !DILocation(line: 143, column: 5, scope: !304)
!449 = !DILocation(line: 145, column: 3, scope: !274)
!450 = !DILocation(line: 146, column: 1, scope: !274)
!451 = distinct !DISubprogram(name: "hts_get_zerror", scope: !2, file: !2, line: 148, type: !452, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !81)
!452 = !DISubroutineType(types: !453)
!453 = !{!67, !66}
!454 = !DILocalVariable(name: "err", arg: 1, scope: !451, file: !2, line: 148, type: !66)
!455 = !DILocation(line: 148, column: 32, scope: !451)
!456 = !DILocation(line: 149, column: 11, scope: !451)
!457 = !DILocation(line: 149, column: 3, scope: !451)
!458 = !DILocation(line: 151, column: 5, scope: !459)
!459 = distinct !DILexicalBlock(scope: !451, file: !2, line: 149, column: 16)
!460 = !DILocation(line: 154, column: 5, scope: !459)
!461 = !DILocation(line: 157, column: 36, scope: !459)
!462 = !DILocation(line: 157, column: 27, scope: !459)
!463 = !DILocation(line: 157, column: 5, scope: !459)
!464 = !DILocation(line: 160, column: 5, scope: !459)
!465 = !DILocation(line: 163, column: 5, scope: !459)
!466 = !DILocation(line: 166, column: 5, scope: !459)
!467 = !DILocation(line: 169, column: 5, scope: !459)
!468 = !DILocation(line: 172, column: 5, scope: !459)
!469 = !DILocation(line: 175, column: 1, scope: !451)
