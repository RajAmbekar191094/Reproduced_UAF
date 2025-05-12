; ModuleID = './fc-match/fc-match.c'
source_filename = "./fc-match/fc-match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct._FcFontSet = type { i32, i32, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"asvbf:Vh\00", align 1, !dbg !7
@longopts = internal constant [8 x %struct.option] [%struct.option { ptr @.str.10, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.11, i32 0, ptr null, i32 97 }, %struct.option { ptr @.str.12, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.13, i32 0, ptr null, i32 98 }, %struct.option { ptr @.str.14, i32 1, ptr null, i32 102 }, %struct.option { ptr @.str.15, i32 0, ptr null, i32 86 }, %struct.option { ptr @.str.16, i32 0, ptr null, i32 104 }, %struct.option zeroinitializer], align 16, !dbg !12
@optarg = external global ptr, align 8
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"fontconfig version %d.%d.%d\0A\00", align 1, !dbg !41
@optind = external global i32, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Unable to parse the pattern\0A\00", align 1, !dbg !46
@.str.4 = private unnamed_addr constant [34 x i8] c"No fonts installed on the system\0A\00", align 1, !dbg !48
@.str.5 = private unnamed_addr constant [13 x i8] c"%{=unparse}\0A\00", align 1, !dbg !53
@.str.6 = private unnamed_addr constant [13 x i8] c"%{=fcmatch}\0A\00", align 1, !dbg !58
@.str.7 = private unnamed_addr constant [8 x i8] c"charset\00", align 1, !dbg !60
@.str.8 = private unnamed_addr constant [5 x i8] c"lang\00", align 1, !dbg !65
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !70
@.str.10 = private unnamed_addr constant [5 x i8] c"sort\00", align 1, !dbg !75
@.str.11 = private unnamed_addr constant [4 x i8] c"all\00", align 1, !dbg !77
@.str.12 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !82
@.str.13 = private unnamed_addr constant [6 x i8] c"brief\00", align 1, !dbg !84
@.str.14 = private unnamed_addr constant [7 x i8] c"format\00", align 1, !dbg !89
@.str.15 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !94
@.str.16 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !96
@stdout = external global ptr, align 8
@.str.17 = private unnamed_addr constant [134 x i8] c"usage: %s [-savbVh] [-f FORMAT] [--sort] [--all] [--verbose] [--brief] [--format=FORMAT] [--version] [--help] [pattern] {element...}\0A\00", align 1, !dbg !98
@.str.18 = private unnamed_addr constant [35 x i8] c"List best font matching [pattern]\0A\00", align 1, !dbg !103
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !108
@.str.20 = private unnamed_addr constant [55 x i8] c"  -s, --sort           display sorted list of matches\0A\00", align 1, !dbg !113
@.str.21 = private unnamed_addr constant [64 x i8] c"  -a, --all            display unpruned sorted list of matches\0A\00", align 1, !dbg !118
@.str.22 = private unnamed_addr constant [62 x i8] c"  -v, --verbose        display entire font pattern verbosely\0A\00", align 1, !dbg !123
@.str.23 = private unnamed_addr constant [60 x i8] c"  -b, --brief          display entire font pattern briefly\0A\00", align 1, !dbg !128
@.str.24 = private unnamed_addr constant [52 x i8] c"  -f, --format=FORMAT  use the given output format\0A\00", align 1, !dbg !133
@.str.25 = private unnamed_addr constant [61 x i8] c"  -V, --version        display font config version and exit\0A\00", align 1, !dbg !138
@.str.26 = private unnamed_addr constant [51 x i8] c"  -h, --help           display this help and exit\0A\00", align 1, !dbg !143

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !169 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !175, metadata !DIExpression()), !dbg !176
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata ptr %6, metadata !179, metadata !DIExpression()), !dbg !180
  store i32 0, ptr %6, align 4, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %7, metadata !181, metadata !DIExpression()), !dbg !182
  store i32 0, ptr %7, align 4, !dbg !182
  call void @llvm.dbg.declare(metadata ptr %8, metadata !183, metadata !DIExpression()), !dbg !184
  store i32 0, ptr %8, align 4, !dbg !184
  call void @llvm.dbg.declare(metadata ptr %9, metadata !185, metadata !DIExpression()), !dbg !186
  store i32 0, ptr %9, align 4, !dbg !186
  call void @llvm.dbg.declare(metadata ptr %10, metadata !187, metadata !DIExpression()), !dbg !188
  store ptr null, ptr %10, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata ptr %11, metadata !189, metadata !DIExpression()), !dbg !190
  store ptr null, ptr %11, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata ptr %12, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata ptr %13, metadata !193, metadata !DIExpression()), !dbg !202
  store ptr null, ptr %13, align 8, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %14, metadata !203, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata ptr %15, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata ptr %16, metadata !218, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata ptr %17, metadata !221, metadata !DIExpression()), !dbg !222
  %25 = call ptr @setlocale(i32 noundef 6, ptr noundef @.str) #5, !dbg !223
  br label %26, !dbg !224

26:                                               ; preds = %51, %2
  %27 = load i32, ptr %4, align 4, !dbg !225
  %28 = load ptr, ptr %5, align 8, !dbg !226
  %29 = call i32 @getopt_long(i32 noundef %27, ptr noundef %28, ptr noundef @.str.1, ptr noundef @longopts, ptr noundef null) #5, !dbg !227
  store i32 %29, ptr %17, align 4, !dbg !228
  %30 = icmp ne i32 %29, -1, !dbg !229
  br i1 %30, label %31, label %52, !dbg !224

31:                                               ; preds = %26
  %32 = load i32, ptr %17, align 4, !dbg !230
  switch i32 %32, label %47 [
    i32 97, label %33
    i32 115, label %34
    i32 118, label %35
    i32 98, label %36
    i32 102, label %37
    i32 86, label %40
    i32 104, label %43
  ], !dbg !232

33:                                               ; preds = %31
  store i32 1, ptr %9, align 4, !dbg !233
  br label %51, !dbg !235

34:                                               ; preds = %31
  store i32 1, ptr %8, align 4, !dbg !236
  br label %51, !dbg !237

35:                                               ; preds = %31
  store i32 1, ptr %6, align 4, !dbg !238
  br label %51, !dbg !239

36:                                               ; preds = %31
  store i32 1, ptr %7, align 4, !dbg !240
  br label %51, !dbg !241

37:                                               ; preds = %31
  %38 = load ptr, ptr @optarg, align 8, !dbg !242
  %39 = call noalias ptr @strdup(ptr noundef %38) #5, !dbg !243
  store ptr %39, ptr %11, align 8, !dbg !244
  store ptr %39, ptr %10, align 8, !dbg !245
  br label %51, !dbg !246

40:                                               ; preds = %31
  %41 = load ptr, ptr @stderr, align 8, !dbg !247
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.2, i32 noundef 2, i32 noundef 13, i32 noundef 94), !dbg !248
  call void @exit(i32 noundef 0) #6, !dbg !249
  unreachable, !dbg !249

43:                                               ; preds = %31
  %44 = load ptr, ptr %5, align 8, !dbg !250
  %45 = getelementptr inbounds ptr, ptr %44, i64 0, !dbg !250
  %46 = load ptr, ptr %45, align 8, !dbg !250
  call void @usage(ptr noundef %46, i32 noundef 0), !dbg !251
  br label %47, !dbg !251

47:                                               ; preds = %31, %43
  %48 = load ptr, ptr %5, align 8, !dbg !252
  %49 = getelementptr inbounds ptr, ptr %48, i64 0, !dbg !252
  %50 = load ptr, ptr %49, align 8, !dbg !252
  call void @usage(ptr noundef %50, i32 noundef 1), !dbg !253
  br label %51, !dbg !254

51:                                               ; preds = %47, %37, %36, %35, %34, %33
  br label %26, !dbg !224, !llvm.loop !255

52:                                               ; preds = %26
  %53 = load i32, ptr @optind, align 4, !dbg !258
  store i32 %53, ptr %12, align 4, !dbg !259
  %54 = load ptr, ptr %5, align 8, !dbg !260
  %55 = load i32, ptr %12, align 4, !dbg !262
  %56 = sext i32 %55 to i64, !dbg !260
  %57 = getelementptr inbounds ptr, ptr %54, i64 %56, !dbg !260
  %58 = load ptr, ptr %57, align 8, !dbg !260
  %59 = icmp ne ptr %58, null, !dbg !260
  br i1 %59, label %60, label %95, !dbg !263

60:                                               ; preds = %52
  %61 = load ptr, ptr %5, align 8, !dbg !264
  %62 = load i32, ptr %12, align 4, !dbg !266
  %63 = sext i32 %62 to i64, !dbg !264
  %64 = getelementptr inbounds ptr, ptr %61, i64 %63, !dbg !264
  %65 = load ptr, ptr %64, align 8, !dbg !264
  %66 = call ptr @FcNameParse(ptr noundef %65), !dbg !267
  store ptr %66, ptr %15, align 8, !dbg !268
  %67 = load ptr, ptr %15, align 8, !dbg !269
  %68 = icmp ne ptr %67, null, !dbg !269
  br i1 %68, label %72, label %69, !dbg !271

69:                                               ; preds = %60
  %70 = load ptr, ptr @stderr, align 8, !dbg !272
  %71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef @.str.3), !dbg !274
  store i32 1, ptr %3, align 4, !dbg !275
  br label %241, !dbg !275

72:                                               ; preds = %60
  br label %73, !dbg !276

73:                                               ; preds = %86, %72
  %74 = load ptr, ptr %5, align 8, !dbg !277
  %75 = load i32, ptr %12, align 4, !dbg !278
  %76 = add nsw i32 %75, 1, !dbg !278
  store i32 %76, ptr %12, align 4, !dbg !278
  %77 = sext i32 %76 to i64, !dbg !277
  %78 = getelementptr inbounds ptr, ptr %74, i64 %77, !dbg !277
  %79 = load ptr, ptr %78, align 8, !dbg !277
  %80 = icmp ne ptr %79, null, !dbg !276
  br i1 %80, label %81, label %94, !dbg !276

81:                                               ; preds = %73
  %82 = load ptr, ptr %13, align 8, !dbg !279
  %83 = icmp ne ptr %82, null, !dbg !279
  br i1 %83, label %86, label %84, !dbg !282

84:                                               ; preds = %81
  %85 = call ptr @FcObjectSetCreate(), !dbg !283
  store ptr %85, ptr %13, align 8, !dbg !284
  br label %86, !dbg !285

86:                                               ; preds = %84, %81
  %87 = load ptr, ptr %13, align 8, !dbg !286
  %88 = load ptr, ptr %5, align 8, !dbg !287
  %89 = load i32, ptr %12, align 4, !dbg !288
  %90 = sext i32 %89 to i64, !dbg !287
  %91 = getelementptr inbounds ptr, ptr %88, i64 %90, !dbg !287
  %92 = load ptr, ptr %91, align 8, !dbg !287
  %93 = call i32 @FcObjectSetAdd(ptr noundef %87, ptr noundef %92), !dbg !289
  br label %73, !dbg !276, !llvm.loop !290

94:                                               ; preds = %73
  br label %97, !dbg !292

95:                                               ; preds = %52
  %96 = call ptr @FcPatternCreate(), !dbg !293
  store ptr %96, ptr %15, align 8, !dbg !294
  br label %97

97:                                               ; preds = %95, %94
  %98 = load ptr, ptr %15, align 8, !dbg !295
  %99 = icmp ne ptr %98, null, !dbg !295
  br i1 %99, label %101, label %100, !dbg !297

100:                                              ; preds = %97
  store i32 1, ptr %3, align 4, !dbg !298
  br label %241, !dbg !298

101:                                              ; preds = %97
  %102 = load ptr, ptr %15, align 8, !dbg !299
  %103 = call i32 @FcConfigSubstitute(ptr noundef null, ptr noundef %102, i32 noundef 0), !dbg !300
  %104 = load ptr, ptr %15, align 8, !dbg !301
  call void @FcDefaultSubstitute(ptr noundef %104), !dbg !302
  %105 = call ptr @FcFontSetCreate(), !dbg !303
  store ptr %105, ptr %14, align 8, !dbg !304
  %106 = load i32, ptr %8, align 4, !dbg !305
  %107 = icmp ne i32 %106, 0, !dbg !305
  br i1 %107, label %111, label %108, !dbg !307

108:                                              ; preds = %101
  %109 = load i32, ptr %9, align 4, !dbg !308
  %110 = icmp ne i32 %109, 0, !dbg !308
  br i1 %110, label %111, label %157, !dbg !309

111:                                              ; preds = %108, %101
  call void @llvm.dbg.declare(metadata ptr %18, metadata !310, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata ptr %19, metadata !313, metadata !DIExpression()), !dbg !314
  %112 = load ptr, ptr %15, align 8, !dbg !315
  %113 = load i32, ptr %9, align 4, !dbg !316
  %114 = icmp ne i32 %113, 0, !dbg !316
  %115 = zext i1 %114 to i64, !dbg !316
  %116 = select i1 %114, i32 0, i32 1, !dbg !316
  %117 = call ptr @FcFontSort(ptr noundef null, ptr noundef %112, i32 noundef %116, ptr noundef null, ptr noundef %16), !dbg !317
  store ptr %117, ptr %18, align 8, !dbg !318
  %118 = load ptr, ptr %18, align 8, !dbg !319
  %119 = icmp ne ptr %118, null, !dbg !319
  br i1 %119, label %120, label %125, !dbg !321

120:                                              ; preds = %111
  %121 = load ptr, ptr %18, align 8, !dbg !322
  %122 = getelementptr inbounds %struct._FcFontSet, ptr %121, i32 0, i32 0, !dbg !323
  %123 = load i32, ptr %122, align 8, !dbg !323
  %124 = icmp eq i32 %123, 0, !dbg !324
  br i1 %124, label %125, label %128, !dbg !325

125:                                              ; preds = %120, %111
  %126 = load ptr, ptr @stderr, align 8, !dbg !326
  %127 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef @.str.4), !dbg !328
  store i32 1, ptr %3, align 4, !dbg !329
  br label %241, !dbg !329

128:                                              ; preds = %120
  store i32 0, ptr %19, align 4, !dbg !330
  br label %129, !dbg !332

129:                                              ; preds = %152, %128
  %130 = load i32, ptr %19, align 4, !dbg !333
  %131 = load ptr, ptr %18, align 8, !dbg !335
  %132 = getelementptr inbounds %struct._FcFontSet, ptr %131, i32 0, i32 0, !dbg !336
  %133 = load i32, ptr %132, align 8, !dbg !336
  %134 = icmp slt i32 %130, %133, !dbg !337
  br i1 %134, label %135, label %155, !dbg !338

135:                                              ; preds = %129
  call void @llvm.dbg.declare(metadata ptr %20, metadata !339, metadata !DIExpression()), !dbg !341
  %136 = load ptr, ptr %15, align 8, !dbg !342
  %137 = load ptr, ptr %18, align 8, !dbg !343
  %138 = getelementptr inbounds %struct._FcFontSet, ptr %137, i32 0, i32 2, !dbg !344
  %139 = load ptr, ptr %138, align 8, !dbg !344
  %140 = load i32, ptr %19, align 4, !dbg !345
  %141 = sext i32 %140 to i64, !dbg !343
  %142 = getelementptr inbounds ptr, ptr %139, i64 %141, !dbg !343
  %143 = load ptr, ptr %142, align 8, !dbg !343
  %144 = call ptr @FcFontRenderPrepare(ptr noundef null, ptr noundef %136, ptr noundef %143), !dbg !346
  store ptr %144, ptr %20, align 8, !dbg !347
  %145 = load ptr, ptr %20, align 8, !dbg !348
  %146 = icmp ne ptr %145, null, !dbg !348
  br i1 %146, label %147, label %151, !dbg !350

147:                                              ; preds = %135
  %148 = load ptr, ptr %14, align 8, !dbg !351
  %149 = load ptr, ptr %20, align 8, !dbg !352
  %150 = call i32 @FcFontSetAdd(ptr noundef %148, ptr noundef %149), !dbg !353
  br label %151, !dbg !353

151:                                              ; preds = %147, %135
  br label %152, !dbg !354

152:                                              ; preds = %151
  %153 = load i32, ptr %19, align 4, !dbg !355
  %154 = add nsw i32 %153, 1, !dbg !355
  store i32 %154, ptr %19, align 4, !dbg !355
  br label %129, !dbg !356, !llvm.loop !357

155:                                              ; preds = %129
  %156 = load ptr, ptr %18, align 8, !dbg !359
  call void @FcFontSetSortDestroy(ptr noundef %156), !dbg !360
  br label %167, !dbg !361

157:                                              ; preds = %108
  call void @llvm.dbg.declare(metadata ptr %21, metadata !362, metadata !DIExpression()), !dbg !364
  %158 = load ptr, ptr %15, align 8, !dbg !365
  %159 = call ptr @FcFontMatch(ptr noundef null, ptr noundef %158, ptr noundef %16), !dbg !366
  store ptr %159, ptr %21, align 8, !dbg !367
  %160 = load ptr, ptr %21, align 8, !dbg !368
  %161 = icmp ne ptr %160, null, !dbg !368
  br i1 %161, label %162, label %166, !dbg !370

162:                                              ; preds = %157
  %163 = load ptr, ptr %14, align 8, !dbg !371
  %164 = load ptr, ptr %21, align 8, !dbg !372
  %165 = call i32 @FcFontSetAdd(ptr noundef %163, ptr noundef %164), !dbg !373
  br label %166, !dbg !373

166:                                              ; preds = %162, %157
  br label %167

167:                                              ; preds = %166, %155
  %168 = load ptr, ptr %15, align 8, !dbg !374
  call void @FcPatternDestroy(ptr noundef %168), !dbg !375
  %169 = load ptr, ptr %10, align 8, !dbg !376
  %170 = icmp ne ptr %169, null, !dbg !376
  br i1 %170, label %177, label %171, !dbg !378

171:                                              ; preds = %167
  %172 = load ptr, ptr %13, align 8, !dbg !379
  %173 = icmp ne ptr %172, null, !dbg !379
  br i1 %173, label %174, label %175, !dbg !382

174:                                              ; preds = %171
  store ptr @.str.5, ptr %10, align 8, !dbg !383
  br label %176, !dbg !384

175:                                              ; preds = %171
  store ptr @.str.6, ptr %10, align 8, !dbg !385
  br label %176

176:                                              ; preds = %175, %174
  br label %177, !dbg !386

177:                                              ; preds = %176, %167
  %178 = load ptr, ptr %14, align 8, !dbg !387
  %179 = icmp ne ptr %178, null, !dbg !387
  br i1 %179, label %180, label %230, !dbg !389

180:                                              ; preds = %177
  call void @llvm.dbg.declare(metadata ptr %22, metadata !390, metadata !DIExpression()), !dbg !392
  store i32 0, ptr %22, align 4, !dbg !393
  br label %181, !dbg !395

181:                                              ; preds = %225, %180
  %182 = load i32, ptr %22, align 4, !dbg !396
  %183 = load ptr, ptr %14, align 8, !dbg !398
  %184 = getelementptr inbounds %struct._FcFontSet, ptr %183, i32 0, i32 0, !dbg !399
  %185 = load i32, ptr %184, align 8, !dbg !399
  %186 = icmp slt i32 %182, %185, !dbg !400
  br i1 %186, label %187, label %228, !dbg !401

187:                                              ; preds = %181
  call void @llvm.dbg.declare(metadata ptr %23, metadata !402, metadata !DIExpression()), !dbg !404
  %188 = load ptr, ptr %14, align 8, !dbg !405
  %189 = getelementptr inbounds %struct._FcFontSet, ptr %188, i32 0, i32 2, !dbg !406
  %190 = load ptr, ptr %189, align 8, !dbg !406
  %191 = load i32, ptr %22, align 4, !dbg !407
  %192 = sext i32 %191 to i64, !dbg !405
  %193 = getelementptr inbounds ptr, ptr %190, i64 %192, !dbg !405
  %194 = load ptr, ptr %193, align 8, !dbg !405
  %195 = load ptr, ptr %13, align 8, !dbg !408
  %196 = call ptr @FcPatternFilter(ptr noundef %194, ptr noundef %195), !dbg !409
  store ptr %196, ptr %23, align 8, !dbg !410
  %197 = load i32, ptr %6, align 4, !dbg !411
  %198 = icmp ne i32 %197, 0, !dbg !411
  br i1 %198, label %202, label %199, !dbg !413

199:                                              ; preds = %187
  %200 = load i32, ptr %7, align 4, !dbg !414
  %201 = icmp ne i32 %200, 0, !dbg !414
  br i1 %201, label %202, label %212, !dbg !415

202:                                              ; preds = %199, %187
  %203 = load i32, ptr %7, align 4, !dbg !416
  %204 = icmp ne i32 %203, 0, !dbg !416
  br i1 %204, label %205, label %210, !dbg !419

205:                                              ; preds = %202
  %206 = load ptr, ptr %23, align 8, !dbg !420
  %207 = call i32 @FcPatternDel(ptr noundef %206, ptr noundef @.str.7), !dbg !422
  %208 = load ptr, ptr %23, align 8, !dbg !423
  %209 = call i32 @FcPatternDel(ptr noundef %208, ptr noundef @.str.8), !dbg !424
  br label %210, !dbg !425

210:                                              ; preds = %205, %202
  %211 = load ptr, ptr %23, align 8, !dbg !426
  call void @FcPatternPrint(ptr noundef %211), !dbg !427
  br label %223, !dbg !428

212:                                              ; preds = %199
  call void @llvm.dbg.declare(metadata ptr %24, metadata !429, metadata !DIExpression()), !dbg !431
  %213 = load ptr, ptr %23, align 8, !dbg !432
  %214 = load ptr, ptr %10, align 8, !dbg !433
  %215 = call ptr @FcPatternFormat(ptr noundef %213, ptr noundef %214), !dbg !434
  store ptr %215, ptr %24, align 8, !dbg !435
  %216 = load ptr, ptr %24, align 8, !dbg !436
  %217 = icmp ne ptr %216, null, !dbg !436
  br i1 %217, label %218, label %222, !dbg !438

218:                                              ; preds = %212
  %219 = load ptr, ptr %24, align 8, !dbg !439
  %220 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %219), !dbg !441
  %221 = load ptr, ptr %24, align 8, !dbg !442
  call void @FcStrFree(ptr noundef %221), !dbg !443
  br label %222, !dbg !444

222:                                              ; preds = %218, %212
  br label %223

223:                                              ; preds = %222, %210
  %224 = load ptr, ptr %23, align 8, !dbg !445
  call void @FcPatternDestroy(ptr noundef %224), !dbg !446
  br label %225, !dbg !447

225:                                              ; preds = %223
  %226 = load i32, ptr %22, align 4, !dbg !448
  %227 = add nsw i32 %226, 1, !dbg !448
  store i32 %227, ptr %22, align 4, !dbg !448
  br label %181, !dbg !449, !llvm.loop !450

228:                                              ; preds = %181
  %229 = load ptr, ptr %14, align 8, !dbg !452
  call void @FcFontSetDestroy(ptr noundef %229), !dbg !453
  br label %230, !dbg !454

230:                                              ; preds = %228, %177
  %231 = load ptr, ptr %13, align 8, !dbg !455
  %232 = icmp ne ptr %231, null, !dbg !455
  br i1 %232, label %233, label %235, !dbg !457

233:                                              ; preds = %230
  %234 = load ptr, ptr %13, align 8, !dbg !458
  call void @FcObjectSetDestroy(ptr noundef %234), !dbg !459
  br label %235, !dbg !459

235:                                              ; preds = %233, %230
  call void @FcFini(), !dbg !460
  %236 = load ptr, ptr %11, align 8, !dbg !461
  %237 = icmp ne ptr %236, null, !dbg !461
  br i1 %237, label %238, label %240, !dbg !463

238:                                              ; preds = %235
  %239 = load ptr, ptr %11, align 8, !dbg !464
  call void @free(ptr noundef %239) #5, !dbg !466
  store ptr null, ptr %11, align 8, !dbg !467
  br label %240, !dbg !468

240:                                              ; preds = %238, %235
  store i32 0, ptr %3, align 4, !dbg !469
  br label %241, !dbg !469

241:                                              ; preds = %240, %125, %100, %69
  %242 = load i32, ptr %3, align 4, !dbg !470
  ret i32 %242, !dbg !470
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(ptr noundef %0, i32 noundef %1) #0 !dbg !471 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !474, metadata !DIExpression()), !dbg !475
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !476, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.declare(metadata ptr %5, metadata !478, metadata !DIExpression()), !dbg !535
  %6 = load i32, ptr %4, align 4, !dbg !536
  %7 = icmp ne i32 %6, 0, !dbg !536
  br i1 %7, label %8, label %10, !dbg !536

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8, !dbg !537
  br label %12, !dbg !536

10:                                               ; preds = %2
  %11 = load ptr, ptr @stdout, align 8, !dbg !538
  br label %12, !dbg !536

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ], !dbg !536
  store ptr %13, ptr %5, align 8, !dbg !535
  %14 = load ptr, ptr %5, align 8, !dbg !539
  %15 = load ptr, ptr %3, align 8, !dbg !540
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.17, ptr noundef %15), !dbg !541
  %17 = load ptr, ptr %5, align 8, !dbg !542
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.18), !dbg !543
  %19 = load ptr, ptr %5, align 8, !dbg !544
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.19), !dbg !545
  %21 = load ptr, ptr %5, align 8, !dbg !546
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.20), !dbg !547
  %23 = load ptr, ptr %5, align 8, !dbg !548
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.21), !dbg !549
  %25 = load ptr, ptr %5, align 8, !dbg !550
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.22), !dbg !551
  %27 = load ptr, ptr %5, align 8, !dbg !552
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.23), !dbg !553
  %29 = load ptr, ptr %5, align 8, !dbg !554
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.24), !dbg !555
  %31 = load ptr, ptr %5, align 8, !dbg !556
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.25), !dbg !557
  %33 = load ptr, ptr %5, align 8, !dbg !558
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.26), !dbg !559
  %35 = load i32, ptr %4, align 4, !dbg !560
  call void @exit(i32 noundef %35) #6, !dbg !561
  unreachable, !dbg !561
}

declare ptr @FcNameParse(ptr noundef) #3

declare ptr @FcObjectSetCreate() #3

declare i32 @FcObjectSetAdd(ptr noundef, ptr noundef) #3

declare ptr @FcPatternCreate() #3

declare i32 @FcConfigSubstitute(ptr noundef, ptr noundef, i32 noundef) #3

declare void @FcDefaultSubstitute(ptr noundef) #3

declare ptr @FcFontSetCreate() #3

declare ptr @FcFontSort(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare ptr @FcFontRenderPrepare(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @FcFontSetAdd(ptr noundef, ptr noundef) #3

declare void @FcFontSetSortDestroy(ptr noundef) #3

declare ptr @FcFontMatch(ptr noundef, ptr noundef, ptr noundef) #3

declare void @FcPatternDestroy(ptr noundef) #3

declare ptr @FcPatternFilter(ptr noundef, ptr noundef) #3

declare i32 @FcPatternDel(ptr noundef, ptr noundef) #3

declare void @FcPatternPrint(ptr noundef) #3

declare ptr @FcPatternFormat(ptr noundef, ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #3

declare void @FcStrFree(ptr noundef) #3

declare void @FcFontSetDestroy(ptr noundef) #3

declare void @FcObjectSetDestroy(ptr noundef) #3

declare void @FcFini() #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./fc-match/fc-match.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "5387bcc9af4aac814291b0b88a234164")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 1)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "longopts", scope: !14, file: !2, line: 63, type: !148, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !15, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !33, globals: !40, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "fc-match/fc-match.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "5387bcc9af4aac814291b0b88a234164")
!16 = !{!17, !26}
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_FcResult", file: !18, line: 240, baseType: !19, size: 32, elements: !20)
!18 = !DIFile(filename: "./fontconfig/fontconfig.h", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "05e262d1be6a508fc866c546b6803fc6")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "FcResultMatch", value: 0)
!22 = !DIEnumerator(name: "FcResultNoMatch", value: 1)
!23 = !DIEnumerator(name: "FcResultTypeMismatch", value: 2)
!24 = !DIEnumerator(name: "FcResultNoId", value: 3)
!25 = !DIEnumerator(name: "FcResultOutOfMemory", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_FcMatchKind", file: !18, line: 289, baseType: !19, size: 32, elements: !27)
!27 = !{!28, !29, !30, !31, !32}
!28 = !DIEnumerator(name: "FcMatchPattern", value: 0)
!29 = !DIEnumerator(name: "FcMatchFont", value: 1)
!30 = !DIEnumerator(name: "FcMatchScan", value: 2)
!31 = !DIEnumerator(name: "FcMatchKindEnd", value: 3)
!32 = !DIEnumerator(name: "FcMatchKindBegin", value: 0)
!33 = !{!34, !37, !39}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcChar8", file: !18, line: 43, baseType: !36)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !{!0, !7, !41, !46, !48, !53, !58, !60, !65, !70, !75, !77, !82, !84, !89, !94, !96, !12, !98, !103, !108, !113, !118, !123, !128, !133, !138, !143}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 29)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !43, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 34)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 13)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !55, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 246, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 8)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 247, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 5)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !67, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 4)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !62, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 6)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 7)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !62, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !67, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1072, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 134)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 35)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 2)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 55)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 64)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 62)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 60)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 52)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 61)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 51)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 2048, elements: !63)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !151, line: 50, size: 256, elements: !152)
!151 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!152 = !{!153, !156, !158, !160}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !150, file: !151, line: 52, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !150, file: !151, line: 55, baseType: !157, size: 32, offset: 64)
!157 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !150, file: !151, line: 56, baseType: !159, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !150, file: !151, line: 57, baseType: !157, size: 32, offset: 192)
!161 = !{i32 7, !"Dwarf Version", i32 5}
!162 = !{i32 2, !"Debug Info Version", i32 3}
!163 = !{i32 1, !"wchar_size", i32 4}
!164 = !{i32 8, !"PIC Level", i32 2}
!165 = !{i32 7, !"PIE Level", i32 2}
!166 = !{i32 7, !"uwtable", i32 2}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 16.0.0"}
!169 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 114, type: !170, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !174)
!170 = !DISubroutineType(types: !171)
!171 = !{!157, !157, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!174 = !{}
!175 = !DILocalVariable(name: "argc", arg: 1, scope: !169, file: !2, line: 114, type: !157)
!176 = !DILocation(line: 114, column: 11, scope: !169)
!177 = !DILocalVariable(name: "argv", arg: 2, scope: !169, file: !2, line: 114, type: !172)
!178 = !DILocation(line: 114, column: 24, scope: !169)
!179 = !DILocalVariable(name: "verbose", scope: !169, file: !2, line: 116, type: !157)
!180 = !DILocation(line: 116, column: 11, scope: !169)
!181 = !DILocalVariable(name: "brief", scope: !169, file: !2, line: 117, type: !157)
!182 = !DILocation(line: 117, column: 11, scope: !169)
!183 = !DILocalVariable(name: "sort", scope: !169, file: !2, line: 118, type: !157)
!184 = !DILocation(line: 118, column: 11, scope: !169)
!185 = !DILocalVariable(name: "all", scope: !169, file: !2, line: 118, type: !157)
!186 = !DILocation(line: 118, column: 21, scope: !169)
!187 = !DILocalVariable(name: "format", scope: !169, file: !2, line: 119, type: !37)
!188 = !DILocation(line: 119, column: 20, scope: !169)
!189 = !DILocalVariable(name: "format_optarg", scope: !169, file: !2, line: 120, type: !37)
!190 = !DILocation(line: 120, column: 20, scope: !169)
!191 = !DILocalVariable(name: "i", scope: !169, file: !2, line: 121, type: !157)
!192 = !DILocation(line: 121, column: 11, scope: !169)
!193 = !DILocalVariable(name: "os", scope: !169, file: !2, line: 122, type: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcObjectSet", file: !18, line: 287, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FcObjectSet", file: !18, line: 283, size: 128, elements: !197)
!197 = !{!198, !199, !200}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "nobject", scope: !196, file: !18, line: 284, baseType: !157, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sobject", scope: !196, file: !18, line: 285, baseType: !157, size: 32, offset: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !196, file: !18, line: 286, baseType: !201, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!202 = !DILocation(line: 122, column: 19, scope: !169)
!203 = !DILocalVariable(name: "fs", scope: !169, file: !2, line: 123, type: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcFontSet", file: !18, line: 281, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FcFontSet", file: !18, line: 277, size: 128, elements: !207)
!207 = !{!208, !209, !210}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "nfont", scope: !206, file: !18, line: 278, baseType: !157, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sfont", scope: !206, file: !18, line: 279, baseType: !157, size: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "fonts", scope: !206, file: !18, line: 280, baseType: !211, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcPattern", file: !18, line: 251, baseType: !214)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcPattern", file: !18, line: 251, flags: DIFlagFwdDecl)
!215 = !DILocation(line: 123, column: 17, scope: !169)
!216 = !DILocalVariable(name: "pat", scope: !169, file: !2, line: 124, type: !212)
!217 = !DILocation(line: 124, column: 17, scope: !169)
!218 = !DILocalVariable(name: "result", scope: !169, file: !2, line: 125, type: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcResult", file: !18, line: 243, baseType: !17)
!220 = !DILocation(line: 125, column: 15, scope: !169)
!221 = !DILocalVariable(name: "c", scope: !169, file: !2, line: 127, type: !157)
!222 = !DILocation(line: 127, column: 11, scope: !169)
!223 = !DILocation(line: 129, column: 5, scope: !169)
!224 = !DILocation(line: 131, column: 5, scope: !169)
!225 = !DILocation(line: 131, column: 30, scope: !169)
!226 = !DILocation(line: 131, column: 36, scope: !169)
!227 = !DILocation(line: 131, column: 17, scope: !169)
!228 = !DILocation(line: 131, column: 15, scope: !169)
!229 = !DILocation(line: 131, column: 71, scope: !169)
!230 = !DILocation(line: 136, column: 10, scope: !231)
!231 = distinct !DILexicalBlock(scope: !169, file: !2, line: 135, column: 5)
!232 = !DILocation(line: 136, column: 2, scope: !231)
!233 = !DILocation(line: 138, column: 10, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !2, line: 136, column: 13)
!235 = !DILocation(line: 139, column: 6, scope: !234)
!236 = !DILocation(line: 141, column: 11, scope: !234)
!237 = !DILocation(line: 142, column: 6, scope: !234)
!238 = !DILocation(line: 144, column: 14, scope: !234)
!239 = !DILocation(line: 145, column: 6, scope: !234)
!240 = !DILocation(line: 147, column: 12, scope: !234)
!241 = !DILocation(line: 148, column: 6, scope: !234)
!242 = !DILocation(line: 150, column: 51, scope: !234)
!243 = !DILocation(line: 150, column: 43, scope: !234)
!244 = !DILocation(line: 150, column: 29, scope: !234)
!245 = !DILocation(line: 150, column: 13, scope: !234)
!246 = !DILocation(line: 151, column: 6, scope: !234)
!247 = !DILocation(line: 153, column: 15, scope: !234)
!248 = !DILocation(line: 153, column: 6, scope: !234)
!249 = !DILocation(line: 155, column: 6, scope: !234)
!250 = !DILocation(line: 157, column: 13, scope: !234)
!251 = !DILocation(line: 157, column: 6, scope: !234)
!252 = !DILocation(line: 159, column: 13, scope: !234)
!253 = !DILocation(line: 159, column: 6, scope: !234)
!254 = !DILocation(line: 160, column: 2, scope: !234)
!255 = distinct !{!255, !224, !256, !257}
!256 = !DILocation(line: 161, column: 5, scope: !169)
!257 = !{!"llvm.loop.mustprogress"}
!258 = !DILocation(line: 162, column: 9, scope: !169)
!259 = !DILocation(line: 162, column: 7, scope: !169)
!260 = !DILocation(line: 167, column: 9, scope: !261)
!261 = distinct !DILexicalBlock(scope: !169, file: !2, line: 167, column: 9)
!262 = !DILocation(line: 167, column: 14, scope: !261)
!263 = !DILocation(line: 167, column: 9, scope: !169)
!264 = !DILocation(line: 169, column: 33, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !2, line: 168, column: 5)
!266 = !DILocation(line: 169, column: 38, scope: !265)
!267 = !DILocation(line: 169, column: 8, scope: !265)
!268 = !DILocation(line: 169, column: 6, scope: !265)
!269 = !DILocation(line: 170, column: 7, scope: !270)
!270 = distinct !DILexicalBlock(scope: !265, file: !2, line: 170, column: 6)
!271 = !DILocation(line: 170, column: 6, scope: !265)
!272 = !DILocation(line: 172, column: 15, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !2, line: 171, column: 2)
!274 = !DILocation(line: 172, column: 6, scope: !273)
!275 = !DILocation(line: 173, column: 6, scope: !273)
!276 = !DILocation(line: 175, column: 2, scope: !265)
!277 = !DILocation(line: 175, column: 9, scope: !265)
!278 = !DILocation(line: 175, column: 14, scope: !265)
!279 = !DILocation(line: 177, column: 11, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !2, line: 177, column: 10)
!281 = distinct !DILexicalBlock(scope: !265, file: !2, line: 176, column: 2)
!282 = !DILocation(line: 177, column: 10, scope: !281)
!283 = !DILocation(line: 178, column: 8, scope: !280)
!284 = !DILocation(line: 178, column: 6, scope: !280)
!285 = !DILocation(line: 178, column: 3, scope: !280)
!286 = !DILocation(line: 179, column: 22, scope: !281)
!287 = !DILocation(line: 179, column: 26, scope: !281)
!288 = !DILocation(line: 179, column: 31, scope: !281)
!289 = !DILocation(line: 179, column: 6, scope: !281)
!290 = distinct !{!290, !276, !291, !257}
!291 = !DILocation(line: 180, column: 2, scope: !265)
!292 = !DILocation(line: 181, column: 5, scope: !265)
!293 = !DILocation(line: 183, column: 8, scope: !261)
!294 = !DILocation(line: 183, column: 6, scope: !261)
!295 = !DILocation(line: 185, column: 10, scope: !296)
!296 = distinct !DILexicalBlock(scope: !169, file: !2, line: 185, column: 9)
!297 = !DILocation(line: 185, column: 9, scope: !169)
!298 = !DILocation(line: 186, column: 2, scope: !296)
!299 = !DILocation(line: 188, column: 28, scope: !169)
!300 = !DILocation(line: 188, column: 5, scope: !169)
!301 = !DILocation(line: 189, column: 26, scope: !169)
!302 = !DILocation(line: 189, column: 5, scope: !169)
!303 = !DILocation(line: 191, column: 10, scope: !169)
!304 = !DILocation(line: 191, column: 8, scope: !169)
!305 = !DILocation(line: 193, column: 9, scope: !306)
!306 = distinct !DILexicalBlock(scope: !169, file: !2, line: 193, column: 9)
!307 = !DILocation(line: 193, column: 14, scope: !306)
!308 = !DILocation(line: 193, column: 17, scope: !306)
!309 = !DILocation(line: 193, column: 9, scope: !169)
!310 = !DILocalVariable(name: "font_patterns", scope: !311, file: !2, line: 195, type: !204)
!311 = distinct !DILexicalBlock(scope: !306, file: !2, line: 194, column: 5)
!312 = !DILocation(line: 195, column: 13, scope: !311)
!313 = !DILocalVariable(name: "j", scope: !311, file: !2, line: 196, type: !157)
!314 = !DILocation(line: 196, column: 6, scope: !311)
!315 = !DILocation(line: 197, column: 33, scope: !311)
!316 = !DILocation(line: 197, column: 38, scope: !311)
!317 = !DILocation(line: 197, column: 18, scope: !311)
!318 = !DILocation(line: 197, column: 16, scope: !311)
!319 = !DILocation(line: 199, column: 7, scope: !320)
!320 = distinct !DILexicalBlock(scope: !311, file: !2, line: 199, column: 6)
!321 = !DILocation(line: 199, column: 21, scope: !320)
!322 = !DILocation(line: 199, column: 24, scope: !320)
!323 = !DILocation(line: 199, column: 39, scope: !320)
!324 = !DILocation(line: 199, column: 45, scope: !320)
!325 = !DILocation(line: 199, column: 6, scope: !311)
!326 = !DILocation(line: 201, column: 15, scope: !327)
!327 = distinct !DILexicalBlock(scope: !320, file: !2, line: 200, column: 2)
!328 = !DILocation(line: 201, column: 6, scope: !327)
!329 = !DILocation(line: 202, column: 6, scope: !327)
!330 = !DILocation(line: 204, column: 9, scope: !331)
!331 = distinct !DILexicalBlock(scope: !311, file: !2, line: 204, column: 2)
!332 = !DILocation(line: 204, column: 7, scope: !331)
!333 = !DILocation(line: 204, column: 14, scope: !334)
!334 = distinct !DILexicalBlock(scope: !331, file: !2, line: 204, column: 2)
!335 = !DILocation(line: 204, column: 18, scope: !334)
!336 = !DILocation(line: 204, column: 33, scope: !334)
!337 = !DILocation(line: 204, column: 16, scope: !334)
!338 = !DILocation(line: 204, column: 2, scope: !331)
!339 = !DILocalVariable(name: "font_pattern", scope: !340, file: !2, line: 206, type: !212)
!340 = distinct !DILexicalBlock(scope: !334, file: !2, line: 205, column: 2)
!341 = !DILocation(line: 206, column: 18, scope: !340)
!342 = !DILocation(line: 208, column: 48, scope: !340)
!343 = !DILocation(line: 208, column: 53, scope: !340)
!344 = !DILocation(line: 208, column: 68, scope: !340)
!345 = !DILocation(line: 208, column: 74, scope: !340)
!346 = !DILocation(line: 208, column: 21, scope: !340)
!347 = !DILocation(line: 208, column: 19, scope: !340)
!348 = !DILocation(line: 209, column: 10, scope: !349)
!349 = distinct !DILexicalBlock(scope: !340, file: !2, line: 209, column: 10)
!350 = !DILocation(line: 209, column: 10, scope: !340)
!351 = !DILocation(line: 210, column: 17, scope: !349)
!352 = !DILocation(line: 210, column: 21, scope: !349)
!353 = !DILocation(line: 210, column: 3, scope: !349)
!354 = !DILocation(line: 211, column: 2, scope: !340)
!355 = !DILocation(line: 204, column: 41, scope: !334)
!356 = !DILocation(line: 204, column: 2, scope: !334)
!357 = distinct !{!357, !338, !358, !257}
!358 = !DILocation(line: 211, column: 2, scope: !331)
!359 = !DILocation(line: 213, column: 24, scope: !311)
!360 = !DILocation(line: 213, column: 2, scope: !311)
!361 = !DILocation(line: 214, column: 5, scope: !311)
!362 = !DILocalVariable(name: "match", scope: !363, file: !2, line: 217, type: !212)
!363 = distinct !DILexicalBlock(scope: !306, file: !2, line: 216, column: 5)
!364 = !DILocation(line: 217, column: 15, scope: !363)
!365 = !DILocation(line: 218, column: 26, scope: !363)
!366 = !DILocation(line: 218, column: 10, scope: !363)
!367 = !DILocation(line: 218, column: 8, scope: !363)
!368 = !DILocation(line: 219, column: 6, scope: !369)
!369 = distinct !DILexicalBlock(scope: !363, file: !2, line: 219, column: 6)
!370 = !DILocation(line: 219, column: 6, scope: !363)
!371 = !DILocation(line: 220, column: 20, scope: !369)
!372 = !DILocation(line: 220, column: 24, scope: !369)
!373 = !DILocation(line: 220, column: 6, scope: !369)
!374 = !DILocation(line: 222, column: 23, scope: !169)
!375 = !DILocation(line: 222, column: 5, scope: !169)
!376 = !DILocation(line: 224, column: 10, scope: !377)
!377 = distinct !DILexicalBlock(scope: !169, file: !2, line: 224, column: 9)
!378 = !DILocation(line: 224, column: 9, scope: !169)
!379 = !DILocation(line: 226, column: 6, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !2, line: 226, column: 6)
!381 = distinct !DILexicalBlock(scope: !377, file: !2, line: 225, column: 5)
!382 = !DILocation(line: 226, column: 6, scope: !381)
!383 = !DILocation(line: 227, column: 13, scope: !380)
!384 = !DILocation(line: 227, column: 6, scope: !380)
!385 = !DILocation(line: 229, column: 13, scope: !380)
!386 = !DILocation(line: 230, column: 5, scope: !381)
!387 = !DILocation(line: 232, column: 9, scope: !388)
!388 = distinct !DILexicalBlock(scope: !169, file: !2, line: 232, column: 9)
!389 = !DILocation(line: 232, column: 9, scope: !169)
!390 = !DILocalVariable(name: "j", scope: !391, file: !2, line: 234, type: !157)
!391 = distinct !DILexicalBlock(scope: !388, file: !2, line: 233, column: 5)
!392 = !DILocation(line: 234, column: 6, scope: !391)
!393 = !DILocation(line: 236, column: 9, scope: !394)
!394 = distinct !DILexicalBlock(scope: !391, file: !2, line: 236, column: 2)
!395 = !DILocation(line: 236, column: 7, scope: !394)
!396 = !DILocation(line: 236, column: 14, scope: !397)
!397 = distinct !DILexicalBlock(scope: !394, file: !2, line: 236, column: 2)
!398 = !DILocation(line: 236, column: 18, scope: !397)
!399 = !DILocation(line: 236, column: 22, scope: !397)
!400 = !DILocation(line: 236, column: 16, scope: !397)
!401 = !DILocation(line: 236, column: 2, scope: !394)
!402 = !DILocalVariable(name: "font", scope: !403, file: !2, line: 238, type: !212)
!403 = distinct !DILexicalBlock(scope: !397, file: !2, line: 237, column: 2)
!404 = !DILocation(line: 238, column: 17, scope: !403)
!405 = !DILocation(line: 240, column: 30, scope: !403)
!406 = !DILocation(line: 240, column: 34, scope: !403)
!407 = !DILocation(line: 240, column: 40, scope: !403)
!408 = !DILocation(line: 240, column: 44, scope: !403)
!409 = !DILocation(line: 240, column: 13, scope: !403)
!410 = !DILocation(line: 240, column: 11, scope: !403)
!411 = !DILocation(line: 242, column: 10, scope: !412)
!412 = distinct !DILexicalBlock(scope: !403, file: !2, line: 242, column: 10)
!413 = !DILocation(line: 242, column: 18, scope: !412)
!414 = !DILocation(line: 242, column: 21, scope: !412)
!415 = !DILocation(line: 242, column: 10, scope: !403)
!416 = !DILocation(line: 244, column: 7, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !2, line: 244, column: 7)
!418 = distinct !DILexicalBlock(scope: !412, file: !2, line: 243, column: 6)
!419 = !DILocation(line: 244, column: 7, scope: !418)
!420 = !DILocation(line: 246, column: 21, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !2, line: 245, column: 3)
!422 = !DILocation(line: 246, column: 7, scope: !421)
!423 = !DILocation(line: 247, column: 21, scope: !421)
!424 = !DILocation(line: 247, column: 7, scope: !421)
!425 = !DILocation(line: 248, column: 3, scope: !421)
!426 = !DILocation(line: 249, column: 19, scope: !418)
!427 = !DILocation(line: 249, column: 3, scope: !418)
!428 = !DILocation(line: 250, column: 6, scope: !418)
!429 = !DILocalVariable(name: "s", scope: !430, file: !2, line: 253, type: !34)
!430 = distinct !DILexicalBlock(scope: !412, file: !2, line: 252, column: 6)
!431 = !DILocation(line: 253, column: 19, scope: !430)
!432 = !DILocation(line: 255, column: 24, scope: !430)
!433 = !DILocation(line: 255, column: 30, scope: !430)
!434 = !DILocation(line: 255, column: 7, scope: !430)
!435 = !DILocation(line: 255, column: 5, scope: !430)
!436 = !DILocation(line: 256, column: 7, scope: !437)
!437 = distinct !DILexicalBlock(scope: !430, file: !2, line: 256, column: 7)
!438 = !DILocation(line: 256, column: 7, scope: !430)
!439 = !DILocation(line: 258, column: 21, scope: !440)
!440 = distinct !DILexicalBlock(scope: !437, file: !2, line: 257, column: 3)
!441 = !DILocation(line: 258, column: 7, scope: !440)
!442 = !DILocation(line: 259, column: 18, scope: !440)
!443 = !DILocation(line: 259, column: 7, scope: !440)
!444 = !DILocation(line: 260, column: 3, scope: !440)
!445 = !DILocation(line: 263, column: 24, scope: !403)
!446 = !DILocation(line: 263, column: 6, scope: !403)
!447 = !DILocation(line: 264, column: 2, scope: !403)
!448 = !DILocation(line: 236, column: 30, scope: !397)
!449 = !DILocation(line: 236, column: 2, scope: !397)
!450 = distinct !{!450, !401, !451, !257}
!451 = !DILocation(line: 264, column: 2, scope: !394)
!452 = !DILocation(line: 265, column: 20, scope: !391)
!453 = !DILocation(line: 265, column: 2, scope: !391)
!454 = !DILocation(line: 266, column: 5, scope: !391)
!455 = !DILocation(line: 268, column: 9, scope: !456)
!456 = distinct !DILexicalBlock(scope: !169, file: !2, line: 268, column: 9)
!457 = !DILocation(line: 268, column: 9, scope: !169)
!458 = !DILocation(line: 269, column: 22, scope: !456)
!459 = !DILocation(line: 269, column: 2, scope: !456)
!460 = !DILocation(line: 271, column: 5, scope: !169)
!461 = !DILocation(line: 273, column: 9, scope: !462)
!462 = distinct !DILexicalBlock(scope: !169, file: !2, line: 273, column: 9)
!463 = !DILocation(line: 273, column: 9, scope: !169)
!464 = !DILocation(line: 274, column: 15, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !2, line: 273, column: 24)
!466 = !DILocation(line: 274, column: 2, scope: !465)
!467 = !DILocation(line: 275, column: 16, scope: !465)
!468 = !DILocation(line: 276, column: 5, scope: !465)
!469 = !DILocation(line: 278, column: 5, scope: !169)
!470 = !DILocation(line: 279, column: 1, scope: !169)
!471 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 81, type: !472, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !174)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !173, !157}
!474 = !DILocalVariable(name: "program", arg: 1, scope: !471, file: !2, line: 81, type: !173)
!475 = !DILocation(line: 81, column: 14, scope: !471)
!476 = !DILocalVariable(name: "error", arg: 2, scope: !471, file: !2, line: 81, type: !157)
!477 = !DILocation(line: 81, column: 27, scope: !471)
!478 = !DILocalVariable(name: "file", scope: !471, file: !2, line: 83, type: !479)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !481, line: 7, baseType: !482)
!481 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !483, line: 49, size: 1728, elements: !484)
!483 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!484 = !{!485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !500, !502, !503, !504, !508, !510, !512, !513, !516, !518, !521, !524, !525, !526, !530, !531}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !482, file: !483, line: 51, baseType: !157, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !482, file: !483, line: 54, baseType: !173, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !482, file: !483, line: 55, baseType: !173, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !482, file: !483, line: 56, baseType: !173, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !482, file: !483, line: 57, baseType: !173, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !482, file: !483, line: 58, baseType: !173, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !482, file: !483, line: 59, baseType: !173, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !482, file: !483, line: 60, baseType: !173, size: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !482, file: !483, line: 61, baseType: !173, size: 64, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !482, file: !483, line: 64, baseType: !173, size: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !482, file: !483, line: 65, baseType: !173, size: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !482, file: !483, line: 66, baseType: !173, size: 64, offset: 704)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !482, file: !483, line: 68, baseType: !498, size: 64, offset: 768)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !483, line: 36, flags: DIFlagFwdDecl)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !482, file: !483, line: 70, baseType: !501, size: 64, offset: 832)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !482, file: !483, line: 72, baseType: !157, size: 32, offset: 896)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !482, file: !483, line: 73, baseType: !157, size: 32, offset: 928)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !482, file: !483, line: 74, baseType: !505, size: 64, offset: 960)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !506, line: 152, baseType: !507)
!506 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!507 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !482, file: !483, line: 77, baseType: !509, size: 16, offset: 1024)
!509 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !482, file: !483, line: 78, baseType: !511, size: 8, offset: 1040)
!511 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !482, file: !483, line: 79, baseType: !3, size: 8, offset: 1048)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !482, file: !483, line: 81, baseType: !514, size: 64, offset: 1088)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !483, line: 43, baseType: null)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !482, file: !483, line: 89, baseType: !517, size: 64, offset: 1152)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !506, line: 153, baseType: !507)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !482, file: !483, line: 91, baseType: !519, size: 64, offset: 1216)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !483, line: 37, flags: DIFlagFwdDecl)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !482, file: !483, line: 92, baseType: !522, size: 64, offset: 1280)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !483, line: 38, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !482, file: !483, line: 93, baseType: !501, size: 64, offset: 1344)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !482, file: !483, line: 94, baseType: !39, size: 64, offset: 1408)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !482, file: !483, line: 95, baseType: !527, size: 64, offset: 1472)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !528, line: 46, baseType: !529)
!528 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!529 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !482, file: !483, line: 96, baseType: !157, size: 32, offset: 1536)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !482, file: !483, line: 98, baseType: !532, size: 160, offset: 1568)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 20)
!535 = !DILocation(line: 83, column: 11, scope: !471)
!536 = !DILocation(line: 83, column: 18, scope: !471)
!537 = !DILocation(line: 83, column: 26, scope: !471)
!538 = !DILocation(line: 83, column: 35, scope: !471)
!539 = !DILocation(line: 85, column: 14, scope: !471)
!540 = !DILocation(line: 86, column: 7, scope: !471)
!541 = !DILocation(line: 85, column: 5, scope: !471)
!542 = !DILocation(line: 91, column: 14, scope: !471)
!543 = !DILocation(line: 91, column: 5, scope: !471)
!544 = !DILocation(line: 92, column: 14, scope: !471)
!545 = !DILocation(line: 92, column: 5, scope: !471)
!546 = !DILocation(line: 94, column: 14, scope: !471)
!547 = !DILocation(line: 94, column: 5, scope: !471)
!548 = !DILocation(line: 95, column: 14, scope: !471)
!549 = !DILocation(line: 95, column: 5, scope: !471)
!550 = !DILocation(line: 96, column: 14, scope: !471)
!551 = !DILocation(line: 96, column: 5, scope: !471)
!552 = !DILocation(line: 97, column: 14, scope: !471)
!553 = !DILocation(line: 97, column: 5, scope: !471)
!554 = !DILocation(line: 98, column: 14, scope: !471)
!555 = !DILocation(line: 98, column: 5, scope: !471)
!556 = !DILocation(line: 99, column: 14, scope: !471)
!557 = !DILocation(line: 99, column: 5, scope: !471)
!558 = !DILocation(line: 100, column: 14, scope: !471)
!559 = !DILocation(line: 100, column: 5, scope: !471)
!560 = !DILocation(line: 110, column: 11, scope: !471)
!561 = !DILocation(line: 110, column: 5, scope: !471)
