; ModuleID = 'src/htsindex.c'
source_filename = "src/htsindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hts_index_init = dso_local global i32 1, align 4, !dbg !0
@hts_primindex_size = dso_local global i32 0, align 4, !dbg !23
@fp_tmpproject = dso_local global ptr null, align 8, !dbg !25
@hts_primindex_words = dso_local global i32 0, align 4, !dbg !83
@.str = private unnamed_addr constant [10 x i8] c"index.txt\00", align 1, !dbg !85
@.str.1 = private unnamed_addr constant [12 x i8] c"sindex.html\00", align 1, !dbg !90
@.str.2 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1, !dbg !95
@.str.3 = private unnamed_addr constant [22 x i8] c"application/xhtml+xml\00", align 1, !dbg !97
@.str.4 = private unnamed_addr constant [14 x i8] c"image/svg+xml\00", align 1, !dbg !102
@.str.5 = private unnamed_addr constant [14 x i8] c"image/svg-xml\00", align 1, !dbg !107
@.str.6 = private unnamed_addr constant [25 x i8] c"application/x-javascript\00", align 1, !dbg !109
@.str.7 = private unnamed_addr constant [9 x i8] c"text/css\00", align 1, !dbg !114
@.str.8 = private unnamed_addr constant [8 x i8] c"<script\00", align 1, !dbg !119
@.str.9 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1, !dbg !124
@.str.10 = private unnamed_addr constant [9 x i8] c"</script\00", align 1, !dbg !129
@.str.11 = private unnamed_addr constant [4 x i8] c"-->\00", align 1, !dbg !131
@.str.12 = private unnamed_addr constant [93 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ\C3\A0\C3\A2\C3\A4\C3\80\C3\82\C3\84\C3\A9\C3\A8\C3\AA\C3\AB\C3\88\C3\88\C3\8A\C3\8B\C3\AC\C3\AE\C3\AF\C3\8C\C3\8E\C3\8F\C3\B2\C3\B4\C3\B6\C3\92\C3\94\C3\96\C3\B9\C3\BB\C3\BC\C3\99\C3\9B\C3\9C\C3\BF\00", align 1, !dbg !136
@.str.13 = private unnamed_addr constant [60 x i8] c"abcdefghijklmnopqrstuvwxyzaaaaaaeeeeeeeeiiiiiioooooouuuuuuy\00", align 1, !dbg !141
@.str.14 = private unnamed_addr constant [40 x i8] c"abcdefghijklmnopqrstuvwxyz0123456789-_.\00", align 1, !dbg !146
@.str.15 = private unnamed_addr constant [4 x i8] c"-_.\00", align 1, !dbg !151
@.str.16 = private unnamed_addr constant [14 x i8] c" ',;:!?\22\0D\0A\09\0B\0C\00", align 1, !dbg !153
@.str.17 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1, !dbg !155
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !160
@.str.19 = private unnamed_addr constant [67 x i8] c"overflow while copying 'filename + strlen(indexpath)' to 'savelst'\00", align 1, !dbg !162
@.str.20 = private unnamed_addr constant [15 x i8] c"src/htsindex.c\00", align 1, !dbg !167
@.str.21 = private unnamed_addr constant [47 x i8] c"overflow while copying 'filename' to 'savelst'\00", align 1, !dbg !172
@.str.22 = private unnamed_addr constant [10 x i8] c"%s %d %s\0A\00", align 1, !dbg !177
@.str.23 = private unnamed_addr constant [3 x i8] c"wb\00", align 1, !dbg !179
@.str.24 = private unnamed_addr constant [24 x i8] c" <a href=\22#%c\22>%c</a>\0D\0A\00", align 1, !dbg !184
@.str.25 = private unnamed_addr constant [11 x i8] c"<br><br>\0D\0A\00", align 1, !dbg !189
@.str.26 = private unnamed_addr constant [70 x i8] c"<table width=\22100%%\22 border=\220\22>\0D\0A<tr>\0D\0A<td>word</td>\0D\0A<td>location\0D\0A\00", align 1, !dbg !191
@.str.27 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1, !dbg !196
@.str.28 = private unnamed_addr constant [7 x i8] c"\09=%d\0D\0A\00", align 1, !dbg !201
@.str.29 = private unnamed_addr constant [16 x i8] c"\09ignored (%d)\0D\0A\00", align 1, !dbg !206
@.str.30 = private unnamed_addr constant [26 x i8] c"(ignored) [%d hits]<br>\0D\0A\00", align 1, !dbg !211
@.str.31 = private unnamed_addr constant [8 x i8] c"\09(%d)\0D\0A\00", align 1, !dbg !216
@.str.32 = private unnamed_addr constant [5 x i8] c"%s\0D\0A\00", align 1, !dbg !218
@.str.33 = private unnamed_addr constant [13 x i8] c"</td></tr>\0D\0A\00", align 1, !dbg !220
@.str.34 = private unnamed_addr constant [14 x i8] c"<th>%c</th>\0D\0A\00", align 1, !dbg !225
@.str.35 = private unnamed_addr constant [20 x i8] c"<a name=\22%c\22></a>\0D\0A\00", align 1, !dbg !227
@.str.36 = private unnamed_addr constant [26 x i8] c"<tr>\0D\0A<td>%s</td>\0D\0A<td>\0D\0A\00", align 1, !dbg !229
@.str.37 = private unnamed_addr constant [48 x i8] c"overflow while copying 'word' to 'current_word'\00", align 1, !dbg !231
@.str.38 = private unnamed_addr constant [9 x i8] c"\09%d %s\0D\0A\00", align 1, !dbg !236
@.str.39 = private unnamed_addr constant [36 x i8] c"<a href=\22%s\22>%s</a> [%d hits]<br>\0D\0A\00", align 1, !dbg !238
@.str.40 = private unnamed_addr constant [23 x i8] c"</td></tr>\0D\0A</table>\0D\0A\00", align 1, !dbg !243
@.str.41 = private unnamed_addr constant [17 x i8] c"sizeof_dest != 0\00", align 1, !dbg !248
@stderr = external global ptr, align 8
@.str.42 = private unnamed_addr constant [20 x i8] c"%s failed at %s:%d\0A\00", align 1, !dbg !254
@.str.43 = private unnamed_addr constant [15 x i8] c"source != NULL\00", align 1, !dbg !256
@.str.44 = private unnamed_addr constant [21 x i8] c"size < sizeof_source\00", align 1, !dbg !258

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @index_init(ptr noundef %0) #0 !dbg !271 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !275, metadata !DIExpression()), !dbg !276
  store i32 1, ptr @hts_index_init, align 4, !dbg !277
  store i32 0, ptr @hts_primindex_size, align 4, !dbg !278
  store i32 0, ptr @hts_primindex_words, align 4, !dbg !279
  %3 = call noalias ptr @tmpfile(), !dbg !280
  store ptr %3, ptr @fp_tmpproject, align 8, !dbg !281
  ret void, !dbg !282
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias ptr @tmpfile() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @index_keyword(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !283 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [8192 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [82 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [82 x i8], align 16
  %25 = alloca i64, align 8
  %26 = alloca [2048 x i8], align 16
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !287, metadata !DIExpression()), !dbg !288
  store i64 %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !289, metadata !DIExpression()), !dbg !290
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !291, metadata !DIExpression()), !dbg !292
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !293, metadata !DIExpression()), !dbg !294
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata ptr %12, metadata !297, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata ptr %13, metadata !302, metadata !DIExpression()), !dbg !303
  store i32 0, ptr %13, align 4, !dbg !303
  call void @llvm.dbg.declare(metadata ptr %14, metadata !304, metadata !DIExpression()), !dbg !305
  store i32 0, ptr %14, align 4, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %15, metadata !306, metadata !DIExpression()), !dbg !307
  store i32 0, ptr %15, align 4, !dbg !307
  call void @llvm.dbg.declare(metadata ptr %16, metadata !308, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata ptr %17, metadata !313, metadata !DIExpression()), !dbg !314
  store i32 0, ptr %17, align 4, !dbg !314
  call void @llvm.dbg.declare(metadata ptr %18, metadata !315, metadata !DIExpression()), !dbg !320
  store ptr null, ptr %18, align 8, !dbg !320
  call void @llvm.dbg.declare(metadata ptr %19, metadata !321, metadata !DIExpression()), !dbg !322
  store ptr null, ptr %19, align 8, !dbg !322
  %27 = load ptr, ptr %7, align 8, !dbg !323
  %28 = icmp ne ptr %27, null, !dbg !323
  br i1 %28, label %30, label %29, !dbg !325

29:                                               ; preds = %5
  store i32 0, ptr %6, align 4, !dbg !326
  br label %387, !dbg !326

30:                                               ; preds = %5
  %31 = load i64, ptr %8, align 8, !dbg !327
  %32 = icmp ne i64 %31, 0, !dbg !327
  br i1 %32, label %34, label %33, !dbg !329

33:                                               ; preds = %30
  store i32 0, ptr %6, align 4, !dbg !330
  br label %387, !dbg !330

34:                                               ; preds = %30
  %35 = load ptr, ptr %9, align 8, !dbg !331
  %36 = icmp ne ptr %35, null, !dbg !331
  br i1 %36, label %38, label %37, !dbg !333

37:                                               ; preds = %34
  store i32 0, ptr %6, align 4, !dbg !334
  br label %387, !dbg !334

38:                                               ; preds = %34
  %39 = load ptr, ptr %10, align 8, !dbg !335
  %40 = icmp ne ptr %39, null, !dbg !335
  br i1 %40, label %42, label %41, !dbg !337

41:                                               ; preds = %38
  store i32 0, ptr %6, align 4, !dbg !338
  br label %387, !dbg !338

42:                                               ; preds = %38
  %43 = load i32, ptr @hts_index_init, align 4, !dbg !339
  %44 = icmp ne i32 %43, 0, !dbg !339
  br i1 %44, label %45, label %54, !dbg !341

45:                                               ; preds = %42
  %46 = getelementptr inbounds [8192 x i8], ptr %12, i64 0, i64 0, !dbg !342
  %47 = load ptr, ptr %11, align 8, !dbg !342
  %48 = call ptr @concat(ptr noundef %46, i64 noundef 8192, ptr noundef %47, ptr noundef @.str), !dbg !342
  %49 = call i32 @unlink(ptr noundef %48) #8, !dbg !344
  %50 = getelementptr inbounds [8192 x i8], ptr %12, i64 0, i64 0, !dbg !345
  %51 = load ptr, ptr %11, align 8, !dbg !345
  %52 = call ptr @concat(ptr noundef %50, i64 noundef 8192, ptr noundef %51, ptr noundef @.str.1), !dbg !345
  %53 = call i32 @unlink(ptr noundef %52) #8, !dbg !346
  store i32 0, ptr @hts_index_init, align 4, !dbg !347
  br label %54, !dbg !348

54:                                               ; preds = %45, %42
  %55 = load ptr, ptr %9, align 8, !dbg !349
  %56 = call i64 @strlen(ptr noundef %55) #9, !dbg !349
  %57 = icmp ne i64 %56, 9, !dbg !349
  br i1 %57, label %58, label %59, !dbg !349

58:                                               ; preds = %54
  br label %62, !dbg !349

59:                                               ; preds = %54
  %60 = load ptr, ptr %9, align 8, !dbg !349
  %61 = call i32 @strfield(ptr noundef %60, ptr noundef @.str.2), !dbg !349
  br label %62, !dbg !349

62:                                               ; preds = %59, %58
  %63 = phi i32 [ 0, %58 ], [ %61, %59 ], !dbg !349
  %64 = icmp ne i32 %63, 0, !dbg !349
  br i1 %64, label %76, label %65, !dbg !349

65:                                               ; preds = %62
  %66 = load ptr, ptr %9, align 8, !dbg !349
  %67 = call i64 @strlen(ptr noundef %66) #9, !dbg !349
  %68 = icmp ne i64 %67, 21, !dbg !349
  br i1 %68, label %69, label %70, !dbg !349

69:                                               ; preds = %65
  br label %73, !dbg !349

70:                                               ; preds = %65
  %71 = load ptr, ptr %9, align 8, !dbg !349
  %72 = call i32 @strfield(ptr noundef %71, ptr noundef @.str.3), !dbg !349
  br label %73, !dbg !349

73:                                               ; preds = %70, %69
  %74 = phi i32 [ 0, %69 ], [ %72, %70 ], !dbg !349
  %75 = icmp ne i32 %74, 0, !dbg !349
  br i1 %75, label %76, label %77, !dbg !351

76:                                               ; preds = %73, %62
  store i32 0, ptr %14, align 4, !dbg !352
  br label %118, !dbg !354

77:                                               ; preds = %73
  %78 = load ptr, ptr %9, align 8, !dbg !355
  %79 = call i64 @strlen(ptr noundef %78) #9, !dbg !355
  %80 = icmp ne i64 %79, 13, !dbg !355
  br i1 %80, label %81, label %82, !dbg !357

81:                                               ; preds = %77
  br i1 false, label %95, label %86, !dbg !355

82:                                               ; preds = %77
  %83 = load ptr, ptr %9, align 8, !dbg !355
  %84 = call i32 @strfield(ptr noundef %83, ptr noundef @.str.4), !dbg !355
  %85 = icmp ne i32 %84, 0, !dbg !355
  br i1 %85, label %95, label %86, !dbg !357

86:                                               ; preds = %82, %81
  %87 = load ptr, ptr %9, align 8, !dbg !358
  %88 = call i64 @strlen(ptr noundef %87) #9, !dbg !358
  %89 = icmp ne i64 %88, 13, !dbg !358
  br i1 %89, label %90, label %91, !dbg !359

90:                                               ; preds = %86
  br i1 false, label %95, label %96, !dbg !358

91:                                               ; preds = %86
  %92 = load ptr, ptr %9, align 8, !dbg !358
  %93 = call i32 @strfield(ptr noundef %92, ptr noundef @.str.5), !dbg !358
  %94 = icmp ne i32 %93, 0, !dbg !358
  br i1 %94, label %95, label %96, !dbg !359

95:                                               ; preds = %91, %90, %82, %81
  store i32 0, ptr %14, align 4, !dbg !360
  br label %117, !dbg !362

96:                                               ; preds = %91, %90
  %97 = load ptr, ptr %9, align 8, !dbg !363
  %98 = call i64 @strlen(ptr noundef %97) #9, !dbg !363
  %99 = icmp ne i64 %98, 24, !dbg !363
  br i1 %99, label %100, label %101, !dbg !365

100:                                              ; preds = %96
  br i1 false, label %114, label %105, !dbg !363

101:                                              ; preds = %96
  %102 = load ptr, ptr %9, align 8, !dbg !363
  %103 = call i32 @strfield(ptr noundef %102, ptr noundef @.str.6), !dbg !363
  %104 = icmp ne i32 %103, 0, !dbg !363
  br i1 %104, label %114, label %105, !dbg !365

105:                                              ; preds = %101, %100
  %106 = load ptr, ptr %9, align 8, !dbg !366
  %107 = call i64 @strlen(ptr noundef %106) #9, !dbg !366
  %108 = icmp ne i64 %107, 8, !dbg !366
  br i1 %108, label %109, label %110, !dbg !367

109:                                              ; preds = %105
  br i1 false, label %114, label %115, !dbg !366

110:                                              ; preds = %105
  %111 = load ptr, ptr %9, align 8, !dbg !366
  %112 = call i32 @strfield(ptr noundef %111, ptr noundef @.str.7), !dbg !366
  %113 = icmp ne i32 %112, 0, !dbg !366
  br i1 %113, label %114, label %115, !dbg !367

114:                                              ; preds = %110, %109, %101, %100
  store i32 1, ptr %14, align 4, !dbg !368
  br label %116, !dbg !370

115:                                              ; preds = %110, %109
  store i32 0, ptr %6, align 4, !dbg !371
  br label %387, !dbg !371

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %116, %95
  br label %118

118:                                              ; preds = %117, %76
  %119 = call noalias ptr @tmpfile(), !dbg !372
  store ptr %119, ptr %19, align 8, !dbg !373
  %120 = load ptr, ptr %19, align 8, !dbg !374
  %121 = icmp ne ptr %120, null, !dbg !374
  br i1 %121, label %123, label %122, !dbg !376

122:                                              ; preds = %118
  store i32 0, ptr %6, align 4, !dbg !377
  br label %387, !dbg !377

123:                                              ; preds = %118
  %124 = call ptr @coucal_new(i64 noundef 0), !dbg !378
  store ptr %124, ptr %18, align 8, !dbg !379
  %125 = load ptr, ptr %18, align 8, !dbg !380
  %126 = icmp ne ptr %125, null, !dbg !380
  br i1 %126, label %128, label %127, !dbg !382

127:                                              ; preds = %123
  store i32 0, ptr %6, align 4, !dbg !383
  br label %387, !dbg !383

128:                                              ; preds = %123
  %129 = getelementptr inbounds [82 x i8], ptr %16, i64 0, i64 0, !dbg !384
  store i8 0, ptr %129, align 16, !dbg !385
  br label %130, !dbg !386

130:                                              ; preds = %322, %128
  %131 = load i32, ptr %17, align 4, !dbg !387
  %132 = sext i32 %131 to i64, !dbg !387
  %133 = load i64, ptr %8, align 8, !dbg !388
  %134 = icmp slt i64 %132, %133, !dbg !389
  br i1 %134, label %135, label %325, !dbg !386

135:                                              ; preds = %130
  %136 = load ptr, ptr %7, align 8, !dbg !390
  %137 = load i32, ptr %17, align 4, !dbg !393
  %138 = sext i32 %137 to i64, !dbg !394
  %139 = getelementptr inbounds i8, ptr %136, i64 %138, !dbg !394
  %140 = call i32 @strfield(ptr noundef %139, ptr noundef @.str.8), !dbg !395
  %141 = icmp ne i32 %140, 0, !dbg !395
  br i1 %141, label %142, label %143, !dbg !396

142:                                              ; preds = %135
  store i32 1, ptr %14, align 4, !dbg !397
  br label %322, !dbg !399

143:                                              ; preds = %135
  %144 = load ptr, ptr %7, align 8, !dbg !400
  %145 = load i32, ptr %17, align 4, !dbg !402
  %146 = sext i32 %145 to i64, !dbg !403
  %147 = getelementptr inbounds i8, ptr %144, i64 %146, !dbg !403
  %148 = call i32 @strfield(ptr noundef %147, ptr noundef @.str.9), !dbg !404
  %149 = icmp ne i32 %148, 0, !dbg !404
  br i1 %149, label %150, label %151, !dbg !405

150:                                              ; preds = %143
  store i32 1, ptr %15, align 4, !dbg !406
  br label %321, !dbg !408

151:                                              ; preds = %143
  %152 = load ptr, ptr %7, align 8, !dbg !409
  %153 = load i32, ptr %17, align 4, !dbg !411
  %154 = sext i32 %153 to i64, !dbg !412
  %155 = getelementptr inbounds i8, ptr %152, i64 %154, !dbg !412
  %156 = call i32 @strfield(ptr noundef %155, ptr noundef @.str.10), !dbg !413
  %157 = icmp ne i32 %156, 0, !dbg !413
  br i1 %157, label %158, label %163, !dbg !414

158:                                              ; preds = %151
  %159 = load i32, ptr %15, align 4, !dbg !415
  %160 = icmp ne i32 %159, 0, !dbg !415
  br i1 %160, label %162, label %161, !dbg !418

161:                                              ; preds = %158
  store i32 0, ptr %14, align 4, !dbg !419
  br label %162, !dbg !420

162:                                              ; preds = %161, %158
  br label %320, !dbg !421

163:                                              ; preds = %151
  %164 = load ptr, ptr %7, align 8, !dbg !422
  %165 = load i32, ptr %17, align 4, !dbg !424
  %166 = sext i32 %165 to i64, !dbg !425
  %167 = getelementptr inbounds i8, ptr %164, i64 %166, !dbg !425
  %168 = call i32 @strfield(ptr noundef %167, ptr noundef @.str.11), !dbg !426
  %169 = icmp ne i32 %168, 0, !dbg !426
  br i1 %169, label %170, label %171, !dbg !427

170:                                              ; preds = %163
  store i32 0, ptr %15, align 4, !dbg !428
  br label %319, !dbg !430

171:                                              ; preds = %163
  %172 = load ptr, ptr %7, align 8, !dbg !431
  %173 = load i32, ptr %17, align 4, !dbg !433
  %174 = sext i32 %173 to i64, !dbg !431
  %175 = getelementptr inbounds i8, ptr %172, i64 %174, !dbg !431
  %176 = load i8, ptr %175, align 1, !dbg !431
  %177 = sext i8 %176 to i32, !dbg !431
  %178 = icmp eq i32 %177, 60, !dbg !434
  br i1 %178, label %179, label %184, !dbg !435

179:                                              ; preds = %171
  %180 = load i32, ptr %14, align 4, !dbg !436
  %181 = icmp ne i32 %180, 0, !dbg !436
  br i1 %181, label %183, label %182, !dbg !439

182:                                              ; preds = %179
  store i32 1, ptr %13, align 4, !dbg !440
  br label %183, !dbg !441

183:                                              ; preds = %182, %179
  br label %318, !dbg !442

184:                                              ; preds = %171
  %185 = load ptr, ptr %7, align 8, !dbg !443
  %186 = load i32, ptr %17, align 4, !dbg !445
  %187 = sext i32 %186 to i64, !dbg !443
  %188 = getelementptr inbounds i8, ptr %185, i64 %187, !dbg !443
  %189 = load i8, ptr %188, align 1, !dbg !443
  %190 = sext i8 %189 to i32, !dbg !443
  %191 = icmp eq i32 %190, 62, !dbg !446
  br i1 %191, label %192, label %193, !dbg !447

192:                                              ; preds = %184
  store i32 0, ptr %13, align 4, !dbg !448
  br label %317, !dbg !450

193:                                              ; preds = %184
  %194 = load i32, ptr %14, align 4, !dbg !451
  %195 = icmp ne i32 %194, 0, !dbg !451
  br i1 %195, label %316, label %196, !dbg !454

196:                                              ; preds = %193
  %197 = load i32, ptr %15, align 4, !dbg !455
  %198 = icmp ne i32 %197, 0, !dbg !455
  br i1 %198, label %316, label %199, !dbg !456

199:                                              ; preds = %196
  %200 = load i32, ptr %13, align 4, !dbg !457
  %201 = icmp ne i32 %200, 0, !dbg !457
  br i1 %201, label %316, label %202, !dbg !458

202:                                              ; preds = %199
  call void @llvm.dbg.declare(metadata ptr %20, metadata !459, metadata !DIExpression()), !dbg !461
  %203 = load ptr, ptr %7, align 8, !dbg !462
  %204 = load i32, ptr %17, align 4, !dbg !463
  %205 = sext i32 %204 to i64, !dbg !462
  %206 = getelementptr inbounds i8, ptr %203, i64 %205, !dbg !462
  %207 = load i8, ptr %206, align 1, !dbg !462
  store i8 %207, ptr %20, align 1, !dbg !461
  call void @llvm.dbg.declare(metadata ptr %21, metadata !464, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.declare(metadata ptr %22, metadata !466, metadata !DIExpression()), !dbg !467
  %208 = getelementptr inbounds [82 x i8], ptr %16, i64 0, i64 0, !dbg !468
  %209 = call i64 @strlen(ptr noundef %208) #9, !dbg !469
  %210 = trunc i64 %209 to i32, !dbg !470
  store i32 %210, ptr %22, align 4, !dbg !467
  %211 = load i8, ptr %20, align 1, !dbg !471
  %212 = call i32 @strcpos(ptr noundef @.str.12, i8 noundef signext %211), !dbg !473
  store i32 %212, ptr %21, align 4, !dbg !474
  %213 = icmp sge i32 %212, 0, !dbg !475
  br i1 %213, label %214, label %219, !dbg !476

214:                                              ; preds = %202
  %215 = load i32, ptr %21, align 4, !dbg !477
  %216 = sext i32 %215 to i64, !dbg !478
  %217 = getelementptr inbounds [60 x i8], ptr @.str.13, i64 0, i64 %216, !dbg !478
  %218 = load i8, ptr %217, align 1, !dbg !478
  store i8 %218, ptr %20, align 1, !dbg !479
  br label %219, !dbg !480

219:                                              ; preds = %214, %202
  %220 = load i8, ptr %20, align 1, !dbg !481
  %221 = sext i8 %220 to i32, !dbg !481
  %222 = call ptr @strchr(ptr noundef @.str.14, i32 noundef %221) #9, !dbg !483
  %223 = icmp ne ptr %222, null, !dbg !483
  br i1 %223, label %224, label %242, !dbg !484

224:                                              ; preds = %219
  %225 = load i32, ptr %22, align 4, !dbg !485
  %226 = icmp sgt i32 %225, 0, !dbg !488
  br i1 %226, label %232, label %227, !dbg !489

227:                                              ; preds = %224
  %228 = load i8, ptr %20, align 1, !dbg !490
  %229 = sext i8 %228 to i32, !dbg !490
  %230 = call ptr @strchr(ptr noundef @.str.15, i32 noundef %229) #9, !dbg !491
  %231 = icmp ne ptr %230, null, !dbg !491
  br i1 %231, label %241, label %232, !dbg !492

232:                                              ; preds = %227, %224
  %233 = load i8, ptr %20, align 1, !dbg !493
  %234 = load i32, ptr %22, align 4, !dbg !495
  %235 = add nsw i32 %234, 1, !dbg !495
  store i32 %235, ptr %22, align 4, !dbg !495
  %236 = sext i32 %234 to i64, !dbg !496
  %237 = getelementptr inbounds [82 x i8], ptr %16, i64 0, i64 %236, !dbg !496
  store i8 %233, ptr %237, align 1, !dbg !497
  %238 = load i32, ptr %22, align 4, !dbg !498
  %239 = sext i32 %238 to i64, !dbg !499
  %240 = getelementptr inbounds [82 x i8], ptr %16, i64 0, i64 %239, !dbg !499
  store i8 0, ptr %240, align 1, !dbg !500
  br label %241, !dbg !501

241:                                              ; preds = %232, %227
  br label %310, !dbg !502

242:                                              ; preds = %219
  %243 = load i8, ptr %20, align 1, !dbg !503
  %244 = sext i8 %243 to i32, !dbg !503
  %245 = call ptr @strchr(ptr noundef @.str.16, i32 noundef %244) #9, !dbg !505
  %246 = icmp ne ptr %245, null, !dbg !505
  br i1 %246, label %250, label %247, !dbg !506

247:                                              ; preds = %242
  %248 = load i8, ptr %20, align 1, !dbg !507
  %249 = icmp ne i8 %248, 0, !dbg !507
  br i1 %249, label %307, label %250, !dbg !508

250:                                              ; preds = %247, %242
  %251 = load i32, ptr %22, align 4, !dbg !509
  %252 = icmp sgt i32 %251, 0, !dbg !512
  br i1 %252, label %253, label %262, !dbg !513

253:                                              ; preds = %250
  %254 = getelementptr inbounds [82 x i8], ptr %16, i64 0, i64 0, !dbg !514
  %255 = load i8, ptr %254, align 16, !dbg !514
  %256 = sext i8 %255 to i32, !dbg !514
  %257 = call ptr @strchr(ptr noundef @.str.17, i32 noundef %256) #9, !dbg !517
  %258 = icmp ne ptr %257, null, !dbg !517
  br i1 %258, label %259, label %261, !dbg !518

259:                                              ; preds = %253
  store i32 0, ptr %22, align 4, !dbg !519
  %260 = getelementptr inbounds [82 x i8], ptr %16, i64 0, i64 0, !dbg !521
  store i8 0, ptr %260, align 16, !dbg !522
  br label %261, !dbg !523

261:                                              ; preds = %259, %253
  br label %262, !dbg !524

262:                                              ; preds = %261, %250
  call void @llvm.dbg.declare(metadata ptr %23, metadata !525, metadata !DIExpression()), !dbg !527
  store i32 0, ptr %23, align 4, !dbg !527
  br label %263, !dbg !528

263:                                              ; preds = %289, %262
  %264 = getelementptr inbounds [82 x i8], ptr %16, i64 0, i64 0, !dbg !529
  %265 = call i64 @strlen(ptr noundef %264) #9, !dbg !530
  %266 = trunc i64 %265 to i32, !dbg !531
  store i32 %266, ptr %22, align 4, !dbg !532
  %267 = icmp ne i32 %266, 0, !dbg !532
  br i1 %267, label %268, label %272, !dbg !533

268:                                              ; preds = %263
  %269 = load i32, ptr %23, align 4, !dbg !534
  %270 = icmp ne i32 %269, 0, !dbg !535
  %271 = xor i1 %270, true, !dbg !535
  br label %272

272:                                              ; preds = %268, %263
  %273 = phi i1 [ false, %263 ], [ %271, %268 ], !dbg !536
  br i1 %273, label %274, label %290, !dbg !528

274:                                              ; preds = %272
  %275 = load i32, ptr %22, align 4, !dbg !537
  %276 = sub nsw i32 %275, 1, !dbg !540
  %277 = sext i32 %276 to i64, !dbg !541
  %278 = getelementptr inbounds [82 x i8], ptr %16, i64 0, i64 %277, !dbg !541
  %279 = load i8, ptr %278, align 1, !dbg !541
  %280 = sext i8 %279 to i32, !dbg !541
  %281 = call ptr @strchr(ptr noundef @.str.15, i32 noundef %280) #9, !dbg !542
  %282 = icmp ne ptr %281, null, !dbg !542
  br i1 %282, label %283, label %288, !dbg !543

283:                                              ; preds = %274
  %284 = load i32, ptr %22, align 4, !dbg !544
  %285 = sub nsw i32 %284, 1, !dbg !546
  %286 = sext i32 %285 to i64, !dbg !547
  %287 = getelementptr inbounds [82 x i8], ptr %16, i64 0, i64 %286, !dbg !547
  store i8 0, ptr %287, align 1, !dbg !548
  br label %289, !dbg !549

288:                                              ; preds = %274
  store i32 1, ptr %23, align 4, !dbg !550
  br label %289

289:                                              ; preds = %288, %283
  br label %263, !dbg !528, !llvm.loop !551

290:                                              ; preds = %272
  %291 = load i32, ptr %22, align 4, !dbg !554
  %292 = icmp sge i32 %291, 3, !dbg !556
  br i1 %292, label %293, label %305, !dbg !557

293:                                              ; preds = %290
  %294 = load i32, ptr @hts_primindex_words, align 4, !dbg !558
  %295 = add nsw i32 %294, 1, !dbg !558
  store i32 %295, ptr @hts_primindex_words, align 4, !dbg !558
  %296 = load ptr, ptr %18, align 8, !dbg !560
  %297 = getelementptr inbounds [82 x i8], ptr %16, i64 0, i64 0, !dbg !562
  %298 = call i32 @coucal_inc(ptr noundef %296, ptr noundef %297), !dbg !563
  %299 = icmp ne i32 %298, 0, !dbg !563
  br i1 %299, label %300, label %304, !dbg !564

300:                                              ; preds = %293
  %301 = load ptr, ptr %19, align 8, !dbg !565
  %302 = getelementptr inbounds [82 x i8], ptr %16, i64 0, i64 0, !dbg !567
  %303 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %301, ptr noundef @.str.18, ptr noundef %302), !dbg !568
  br label %304, !dbg !569

304:                                              ; preds = %300, %293
  br label %305, !dbg !570

305:                                              ; preds = %304, %290
  store i32 0, ptr %22, align 4, !dbg !571
  %306 = getelementptr inbounds [82 x i8], ptr %16, i64 0, i64 0, !dbg !572
  store i8 0, ptr %306, align 16, !dbg !573
  br label %309, !dbg !574

307:                                              ; preds = %247
  store i32 0, ptr %22, align 4, !dbg !575
  %308 = getelementptr inbounds [82 x i8], ptr %16, i64 0, i64 0, !dbg !576
  store i8 0, ptr %308, align 16, !dbg !577
  br label %309

309:                                              ; preds = %307, %305
  br label %310

310:                                              ; preds = %309, %241
  %311 = load i32, ptr %22, align 4, !dbg !578
  %312 = icmp sgt i32 %311, 50, !dbg !580
  br i1 %312, label %313, label %315, !dbg !581

313:                                              ; preds = %310
  store i32 0, ptr %22, align 4, !dbg !582
  %314 = getelementptr inbounds [82 x i8], ptr %16, i64 0, i64 0, !dbg !584
  store i8 0, ptr %314, align 16, !dbg !585
  br label %315, !dbg !586

315:                                              ; preds = %313, %310
  br label %316, !dbg !587

316:                                              ; preds = %315, %199, %196, %193
  br label %317

317:                                              ; preds = %316, %192
  br label %318

318:                                              ; preds = %317, %183
  br label %319

319:                                              ; preds = %318, %170
  br label %320

320:                                              ; preds = %319, %162
  br label %321

321:                                              ; preds = %320, %150
  br label %322

322:                                              ; preds = %321, %142
  %323 = load i32, ptr %17, align 4, !dbg !588
  %324 = add nsw i32 %323, 1, !dbg !588
  store i32 %324, ptr %17, align 4, !dbg !588
  br label %130, !dbg !386, !llvm.loop !589

325:                                              ; preds = %130
  %326 = load ptr, ptr %19, align 8, !dbg !591
  %327 = call i32 @fseek(ptr noundef %326, i64 noundef 0, i32 noundef 0), !dbg !592
  %328 = load ptr, ptr @fp_tmpproject, align 8, !dbg !593
  %329 = icmp ne ptr %328, null, !dbg !593
  br i1 %329, label %330, label %384, !dbg !596

330:                                              ; preds = %325
  br label %331, !dbg !597

331:                                              ; preds = %382, %330
  %332 = load ptr, ptr %19, align 8, !dbg !599
  %333 = call i32 @feof(ptr noundef %332) #8, !dbg !600
  %334 = icmp ne i32 %333, 0, !dbg !601
  %335 = xor i1 %334, true, !dbg !601
  br i1 %335, label %336, label %383, !dbg !597

336:                                              ; preds = %331
  call void @llvm.dbg.declare(metadata ptr %24, metadata !602, metadata !DIExpression()), !dbg !604
  %337 = load ptr, ptr %19, align 8, !dbg !605
  %338 = getelementptr inbounds [82 x i8], ptr %24, i64 0, i64 0, !dbg !606
  %339 = call i32 @linput(ptr noundef %337, ptr noundef %338, i32 noundef 52), !dbg !607
  %340 = getelementptr inbounds [82 x i8], ptr %24, i64 0, i64 0, !dbg !608
  %341 = load i8, ptr %340, align 16, !dbg !608
  %342 = sext i8 %341 to i32, !dbg !608
  %343 = icmp ne i32 %342, 0, !dbg !608
  br i1 %343, label %344, label %382, !dbg !610

344:                                              ; preds = %336
  call void @llvm.dbg.declare(metadata ptr %25, metadata !611, metadata !DIExpression()), !dbg !615
  store i64 0, ptr %25, align 8, !dbg !615
  %345 = load ptr, ptr %18, align 8, !dbg !616
  %346 = getelementptr inbounds [82 x i8], ptr %24, i64 0, i64 0, !dbg !618
  %347 = call i32 @coucal_read(ptr noundef %345, ptr noundef %346, ptr noundef %25), !dbg !619
  %348 = icmp ne i32 %347, 0, !dbg !619
  br i1 %348, label %349, label %381, !dbg !620

349:                                              ; preds = %344
  call void @llvm.dbg.declare(metadata ptr %26, metadata !621, metadata !DIExpression()), !dbg !626
  %350 = load i64, ptr %25, align 8, !dbg !627
  %351 = add nsw i64 %350, 1, !dbg !627
  store i64 %351, ptr %25, align 8, !dbg !627
  %352 = getelementptr inbounds [8192 x i8], ptr %12, i64 0, i64 0, !dbg !628
  %353 = load ptr, ptr %11, align 8, !dbg !628
  %354 = call ptr @fslash(ptr noundef %352, i64 noundef 8192, ptr noundef %353), !dbg !628
  %355 = load ptr, ptr %10, align 8, !dbg !630
  %356 = load ptr, ptr %11, align 8, !dbg !631
  %357 = call i64 @strlen(ptr noundef %356) #9, !dbg !632
  %358 = call i32 @strncmp(ptr noundef %354, ptr noundef %355, i64 noundef %357) #9, !dbg !633
  %359 = icmp eq i32 %358, 0, !dbg !634
  br i1 %359, label %360, label %367, !dbg !635

360:                                              ; preds = %349
  %361 = getelementptr inbounds [2048 x i8], ptr %26, i64 0, i64 0, !dbg !636
  %362 = load ptr, ptr %10, align 8, !dbg !636
  %363 = load ptr, ptr %11, align 8, !dbg !636
  %364 = call i64 @strlen(ptr noundef %363) #9, !dbg !636
  %365 = getelementptr inbounds i8, ptr %362, i64 %364, !dbg !636
  %366 = call ptr @strcpy_safe_(ptr noundef %361, i64 noundef 2048, ptr noundef %365, i64 noundef -1, ptr noundef @.str.19, ptr noundef @.str.20, i32 noundef 295), !dbg !636
  br label %371, !dbg !636

367:                                              ; preds = %349
  %368 = getelementptr inbounds [2048 x i8], ptr %26, i64 0, i64 0, !dbg !637
  %369 = load ptr, ptr %10, align 8, !dbg !637
  %370 = call ptr @strcpy_safe_(ptr noundef %368, i64 noundef 2048, ptr noundef %369, i64 noundef -1, ptr noundef @.str.21, ptr noundef @.str.20, i32 noundef 297), !dbg !637
  br label %371

371:                                              ; preds = %367, %360
  %372 = load ptr, ptr @fp_tmpproject, align 8, !dbg !638
  %373 = getelementptr inbounds [82 x i8], ptr %24, i64 0, i64 0, !dbg !639
  %374 = load i64, ptr %25, align 8, !dbg !640
  %375 = sub nsw i64 999999999, %374, !dbg !641
  %376 = trunc i64 %375 to i32, !dbg !642
  %377 = getelementptr inbounds [2048 x i8], ptr %26, i64 0, i64 0, !dbg !643
  %378 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %372, ptr noundef @.str.22, ptr noundef %373, i32 noundef %376, ptr noundef %377), !dbg !644
  %379 = load i32, ptr @hts_primindex_size, align 4, !dbg !645
  %380 = add nsw i32 %379, 1, !dbg !645
  store i32 %380, ptr @hts_primindex_size, align 4, !dbg !645
  br label %381, !dbg !646

381:                                              ; preds = %371, %344
  br label %382, !dbg !647

382:                                              ; preds = %381, %336
  br label %331, !dbg !597, !llvm.loop !648

383:                                              ; preds = %331
  br label %384, !dbg !650

384:                                              ; preds = %383, %325
  %385 = load ptr, ptr %19, align 8, !dbg !651
  %386 = call i32 @fclose(ptr noundef %385), !dbg !652
  store ptr null, ptr %19, align 8, !dbg !653
  call void @coucal_delete(ptr noundef %18), !dbg !654
  store i32 1, ptr %6, align 4, !dbg !655
  br label %387, !dbg !655

387:                                              ; preds = %384, %127, %122, %115, %41, %37, %33, %29
  %388 = load i32, ptr %6, align 4, !dbg !656
  ret i32 %388, !dbg !656
}

; Function Attrs: nounwind
declare i32 @unlink(ptr noundef) #3

declare ptr @concat(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strfield(ptr noundef %0, ptr noundef %1) #0 !dbg !657 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !661, metadata !DIExpression()), !dbg !662
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !663, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.declare(metadata ptr %6, metadata !665, metadata !DIExpression()), !dbg !666
  store i32 0, ptr %6, align 4, !dbg !666
  br label %7, !dbg !667

7:                                                ; preds = %61, %2
  %8 = load ptr, ptr %4, align 8, !dbg !668
  %9 = load i8, ptr %8, align 1, !dbg !668
  %10 = sext i8 %9 to i32, !dbg !668
  %11 = icmp sge i32 %10, 97, !dbg !668
  br i1 %11, label %12, label %22, !dbg !668

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 8, !dbg !668
  %14 = load i8, ptr %13, align 1, !dbg !668
  %15 = sext i8 %14 to i32, !dbg !668
  %16 = icmp sle i32 %15, 122, !dbg !668
  br i1 %16, label %17, label %22, !dbg !668

17:                                               ; preds = %12
  %18 = load ptr, ptr %4, align 8, !dbg !668
  %19 = load i8, ptr %18, align 1, !dbg !668
  %20 = sext i8 %19 to i32, !dbg !668
  %21 = sub nsw i32 %20, 32, !dbg !668
  br label %26, !dbg !668

22:                                               ; preds = %12, %7
  %23 = load ptr, ptr %4, align 8, !dbg !668
  %24 = load i8, ptr %23, align 1, !dbg !668
  %25 = sext i8 %24 to i32, !dbg !668
  br label %26, !dbg !668

26:                                               ; preds = %22, %17
  %27 = phi i32 [ %21, %17 ], [ %25, %22 ], !dbg !668
  %28 = load ptr, ptr %5, align 8, !dbg !668
  %29 = load i8, ptr %28, align 1, !dbg !668
  %30 = sext i8 %29 to i32, !dbg !668
  %31 = icmp sge i32 %30, 97, !dbg !668
  br i1 %31, label %32, label %42, !dbg !668

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 8, !dbg !668
  %34 = load i8, ptr %33, align 1, !dbg !668
  %35 = sext i8 %34 to i32, !dbg !668
  %36 = icmp sle i32 %35, 122, !dbg !668
  br i1 %36, label %37, label %42, !dbg !668

37:                                               ; preds = %32
  %38 = load ptr, ptr %5, align 8, !dbg !668
  %39 = load i8, ptr %38, align 1, !dbg !668
  %40 = sext i8 %39 to i32, !dbg !668
  %41 = sub nsw i32 %40, 32, !dbg !668
  br label %46, !dbg !668

42:                                               ; preds = %32, %26
  %43 = load ptr, ptr %5, align 8, !dbg !668
  %44 = load i8, ptr %43, align 1, !dbg !668
  %45 = sext i8 %44 to i32, !dbg !668
  br label %46, !dbg !668

46:                                               ; preds = %42, %37
  %47 = phi i32 [ %41, %37 ], [ %45, %42 ], !dbg !668
  %48 = icmp eq i32 %27, %47, !dbg !668
  br i1 %48, label %49, label %59, !dbg !669

49:                                               ; preds = %46
  %50 = load ptr, ptr %4, align 8, !dbg !670
  %51 = load i8, ptr %50, align 1, !dbg !671
  %52 = sext i8 %51 to i32, !dbg !672
  %53 = icmp ne i32 %52, 0, !dbg !673
  br i1 %53, label %54, label %59, !dbg !674

54:                                               ; preds = %49
  %55 = load ptr, ptr %5, align 8, !dbg !675
  %56 = load i8, ptr %55, align 1, !dbg !676
  %57 = sext i8 %56 to i32, !dbg !677
  %58 = icmp ne i32 %57, 0, !dbg !678
  br label %59

59:                                               ; preds = %54, %49, %46
  %60 = phi i1 [ false, %49 ], [ false, %46 ], [ %58, %54 ], !dbg !679
  br i1 %60, label %61, label %68, !dbg !667

61:                                               ; preds = %59
  %62 = load ptr, ptr %4, align 8, !dbg !680
  %63 = getelementptr inbounds i8, ptr %62, i32 1, !dbg !680
  store ptr %63, ptr %4, align 8, !dbg !680
  %64 = load ptr, ptr %5, align 8, !dbg !682
  %65 = getelementptr inbounds i8, ptr %64, i32 1, !dbg !682
  store ptr %65, ptr %5, align 8, !dbg !682
  %66 = load i32, ptr %6, align 4, !dbg !683
  %67 = add nsw i32 %66, 1, !dbg !683
  store i32 %67, ptr %6, align 4, !dbg !683
  br label %7, !dbg !667, !llvm.loop !684

68:                                               ; preds = %59
  %69 = load ptr, ptr %5, align 8, !dbg !686
  %70 = load i8, ptr %69, align 1, !dbg !688
  %71 = sext i8 %70 to i32, !dbg !688
  %72 = icmp eq i32 %71, 0, !dbg !689
  br i1 %72, label %73, label %75, !dbg !690

73:                                               ; preds = %68
  %74 = load i32, ptr %6, align 4, !dbg !691
  store i32 %74, ptr %3, align 4, !dbg !692
  br label %76, !dbg !692

75:                                               ; preds = %68
  store i32 0, ptr %3, align 4, !dbg !693
  br label %76, !dbg !693

76:                                               ; preds = %75, %73
  %77 = load i32, ptr %3, align 4, !dbg !694
  ret i32 %77, !dbg !694
}

declare ptr @coucal_new(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strcpos(ptr noundef %0, i8 noundef signext %1) #0 !dbg !695 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !698, metadata !DIExpression()), !dbg !699
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !700, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.declare(metadata ptr %6, metadata !702, metadata !DIExpression()), !dbg !703
  %7 = load ptr, ptr %4, align 8, !dbg !704
  %8 = load i8, ptr %5, align 1, !dbg !705
  %9 = sext i8 %8 to i32, !dbg !705
  %10 = call ptr @strchr(ptr noundef %7, i32 noundef %9) #9, !dbg !706
  store ptr %10, ptr %6, align 8, !dbg !703
  %11 = load ptr, ptr %6, align 8, !dbg !707
  %12 = icmp ne ptr %11, null, !dbg !707
  br i1 %12, label %13, label %20, !dbg !709

13:                                               ; preds = %2
  %14 = load ptr, ptr %6, align 8, !dbg !710
  %15 = load ptr, ptr %4, align 8, !dbg !711
  %16 = ptrtoint ptr %14 to i64, !dbg !712
  %17 = ptrtoint ptr %15 to i64, !dbg !712
  %18 = sub i64 %16, %17, !dbg !712
  %19 = trunc i64 %18 to i32, !dbg !713
  store i32 %19, ptr %3, align 4, !dbg !714
  br label %21, !dbg !714

20:                                               ; preds = %2
  store i32 -1, ptr %3, align 4, !dbg !715
  br label %21, !dbg !715

21:                                               ; preds = %20, %13
  %22 = load i32, ptr %3, align 4, !dbg !716
  ret i32 %22, !dbg !716
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #4

declare i32 @coucal_inc(ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @feof(ptr noundef) #3

declare i32 @linput(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @coucal_read(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

declare ptr @fslash(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @strcpy_safe_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !dbg !717 {
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !722, metadata !DIExpression()), !dbg !723
  store i64 %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !724, metadata !DIExpression()), !dbg !725
  store ptr %2, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !726, metadata !DIExpression()), !dbg !727
  store i64 %3, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !728, metadata !DIExpression()), !dbg !729
  store ptr %4, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !730, metadata !DIExpression()), !dbg !731
  store ptr %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !732, metadata !DIExpression()), !dbg !733
  store i32 %6, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !734, metadata !DIExpression()), !dbg !735
  %15 = load i64, ptr %9, align 8, !dbg !736
  %16 = icmp ne i64 %15, 0, !dbg !736
  br i1 %16, label %20, label %17, !dbg !736

17:                                               ; preds = %7
  %18 = load ptr, ptr %13, align 8, !dbg !736
  %19 = load i32, ptr %14, align 4, !dbg !736
  call void @abortf_(ptr noundef @.str.41, ptr noundef %18, i32 noundef %19), !dbg !736
  br label %20, !dbg !736

20:                                               ; preds = %17, %7
  %21 = phi i1 [ true, %7 ], [ false, %17 ]
  %22 = zext i1 %21 to i32, !dbg !736
  %23 = load ptr, ptr %8, align 8, !dbg !737
  %24 = getelementptr inbounds i8, ptr %23, i64 0, !dbg !737
  store i8 0, ptr %24, align 1, !dbg !738
  %25 = load ptr, ptr %8, align 8, !dbg !739
  %26 = load i64, ptr %9, align 8, !dbg !740
  %27 = load ptr, ptr %10, align 8, !dbg !741
  %28 = load i64, ptr %11, align 8, !dbg !742
  %29 = load ptr, ptr %12, align 8, !dbg !743
  %30 = load ptr, ptr %13, align 8, !dbg !744
  %31 = load i32, ptr %14, align 4, !dbg !745
  %32 = call ptr @strncat_safe_(ptr noundef %25, i64 noundef %26, ptr noundef %27, i64 noundef %28, i64 noundef -1, ptr noundef %29, ptr noundef %30, i32 noundef %31), !dbg !746
  ret ptr %32, !dbg !747
}

declare i32 @fclose(ptr noundef) #2

declare void @coucal_delete(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @index_finish(ptr noundef %0, i32 noundef %1) #0 !dbg !748 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8192 x i8], align 16
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca [82 x i8], align 16
  %15 = alloca [82 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !751, metadata !DIExpression()), !dbg !752
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !753, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.declare(metadata ptr %5, metadata !755, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.declare(metadata ptr %6, metadata !757, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.declare(metadata ptr %7, metadata !759, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.declare(metadata ptr %8, metadata !761, metadata !DIExpression()), !dbg !764
  %22 = load ptr, ptr @fp_tmpproject, align 8, !dbg !765
  %23 = call i64 @fpsize(ptr noundef %22), !dbg !766
  store i64 %23, ptr %8, align 8, !dbg !764
  %24 = load i64, ptr %8, align 8, !dbg !767
  %25 = icmp sgt i64 %24, 0, !dbg !769
  br i1 %25, label %26, label %325, !dbg !770

26:                                               ; preds = %2
  %27 = load ptr, ptr @fp_tmpproject, align 8, !dbg !771
  %28 = icmp ne ptr %27, null, !dbg !771
  br i1 %28, label %29, label %324, !dbg !774

29:                                               ; preds = %26
  %30 = load i32, ptr @hts_primindex_size, align 4, !dbg !775
  %31 = add nsw i32 %30, 2, !dbg !775
  %32 = sext i32 %31 to i64, !dbg !775
  %33 = mul i64 8, %32, !dbg !775
  %34 = call noalias ptr @malloc(i64 noundef %33) #10, !dbg !775
  store ptr %34, ptr %6, align 8, !dbg !777
  %35 = load ptr, ptr %6, align 8, !dbg !778
  %36 = icmp ne ptr %35, null, !dbg !778
  br i1 %36, label %37, label %323, !dbg !780

37:                                               ; preds = %29
  %38 = load i64, ptr %8, align 8, !dbg !781
  %39 = add nsw i64 %38, 4, !dbg !781
  %40 = call noalias ptr @malloc(i64 noundef %39) #10, !dbg !781
  store ptr %40, ptr %7, align 8, !dbg !783
  %41 = load ptr, ptr %7, align 8, !dbg !784
  %42 = icmp ne ptr %41, null, !dbg !784
  br i1 %42, label %43, label %315, !dbg !786

43:                                               ; preds = %37
  %44 = load ptr, ptr @fp_tmpproject, align 8, !dbg !787
  %45 = call i32 @fseek(ptr noundef %44, i64 noundef 0, i32 noundef 0), !dbg !789
  %46 = load ptr, ptr %7, align 8, !dbg !790
  %47 = load i64, ptr %8, align 8, !dbg !792
  %48 = load ptr, ptr @fp_tmpproject, align 8, !dbg !793
  %49 = call i64 @fread(ptr noundef %46, i64 noundef 1, i64 noundef %47, ptr noundef %48), !dbg !794
  %50 = trunc i64 %49 to i32, !dbg !795
  %51 = sext i32 %50 to i64, !dbg !795
  %52 = load i64, ptr %8, align 8, !dbg !796
  %53 = icmp eq i64 %51, %52, !dbg !797
  br i1 %53, label %54, label %307, !dbg !798

54:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata ptr %9, metadata !799, metadata !DIExpression()), !dbg !801
  %55 = load ptr, ptr %7, align 8, !dbg !802
  store ptr %55, ptr %9, align 8, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %10, metadata !803, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.declare(metadata ptr %11, metadata !805, metadata !DIExpression()), !dbg !806
  store i32 0, ptr %11, align 4, !dbg !806
  call void @llvm.dbg.declare(metadata ptr %12, metadata !807, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.declare(metadata ptr %13, metadata !809, metadata !DIExpression()), !dbg !810
  br label %56, !dbg !811

56:                                               ; preds = %66, %54
  %57 = load ptr, ptr %9, align 8, !dbg !812
  %58 = call ptr @strchr(ptr noundef %57, i32 noundef 10) #9, !dbg !813
  store ptr %58, ptr %10, align 8, !dbg !814
  %59 = icmp ne ptr %58, null, !dbg !814
  br i1 %59, label %60, label %64, !dbg !815

60:                                               ; preds = %56
  %61 = load i32, ptr %11, align 4, !dbg !816
  %62 = load i32, ptr @hts_primindex_size, align 4, !dbg !817
  %63 = icmp slt i32 %61, %62, !dbg !818
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i1 [ false, %56 ], [ %63, %60 ], !dbg !819
  br i1 %65, label %66, label %76, !dbg !811

66:                                               ; preds = %64
  %67 = load ptr, ptr %9, align 8, !dbg !820
  %68 = load ptr, ptr %6, align 8, !dbg !822
  %69 = load i32, ptr %11, align 4, !dbg !823
  %70 = add nsw i32 %69, 1, !dbg !823
  store i32 %70, ptr %11, align 4, !dbg !823
  %71 = sext i32 %69 to i64, !dbg !822
  %72 = getelementptr inbounds ptr, ptr %68, i64 %71, !dbg !822
  store ptr %67, ptr %72, align 8, !dbg !824
  %73 = load ptr, ptr %10, align 8, !dbg !825
  store i8 0, ptr %73, align 1, !dbg !826
  %74 = load ptr, ptr %10, align 8, !dbg !827
  %75 = getelementptr inbounds i8, ptr %74, i64 1, !dbg !828
  store ptr %75, ptr %9, align 8, !dbg !829
  br label %56, !dbg !811, !llvm.loop !830

76:                                               ; preds = %64
  %77 = load ptr, ptr %6, align 8, !dbg !832
  %78 = load i32, ptr %11, align 4, !dbg !833
  %79 = sext i32 %78 to i64, !dbg !833
  call void @qsort(ptr noundef %77, i64 noundef %79, i64 noundef 8, ptr noundef @mystrcmp), !dbg !834
  %80 = load ptr, ptr @fp_tmpproject, align 8, !dbg !835
  %81 = call i32 @fclose(ptr noundef %80), !dbg !836
  store ptr null, ptr @fp_tmpproject, align 8, !dbg !837
  %82 = load i32, ptr %4, align 4, !dbg !838
  %83 = icmp eq i32 %82, 1, !dbg !840
  br i1 %83, label %84, label %89, !dbg !841

84:                                               ; preds = %76
  %85 = getelementptr inbounds [8192 x i8], ptr %5, i64 0, i64 0, !dbg !842
  %86 = load ptr, ptr %3, align 8, !dbg !842
  %87 = call ptr @concat(ptr noundef %85, i64 noundef 8192, ptr noundef %86, ptr noundef @.str), !dbg !842
  %88 = call noalias ptr @fopen(ptr noundef %87, ptr noundef @.str.23), !dbg !843
  store ptr %88, ptr %13, align 8, !dbg !844
  br label %94, !dbg !845

89:                                               ; preds = %76
  %90 = getelementptr inbounds [8192 x i8], ptr %5, i64 0, i64 0, !dbg !846
  %91 = load ptr, ptr %3, align 8, !dbg !846
  %92 = call ptr @concat(ptr noundef %90, i64 noundef 8192, ptr noundef %91, ptr noundef @.str.1), !dbg !846
  %93 = call noalias ptr @fopen(ptr noundef %92, ptr noundef @.str.23), !dbg !847
  store ptr %93, ptr %13, align 8, !dbg !848
  br label %94

94:                                               ; preds = %89, %84
  %95 = load ptr, ptr %13, align 8, !dbg !849
  %96 = icmp ne ptr %95, null, !dbg !849
  br i1 %96, label %97, label %306, !dbg !851

97:                                               ; preds = %94
  call void @llvm.dbg.declare(metadata ptr %14, metadata !852, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.declare(metadata ptr %15, metadata !855, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.declare(metadata ptr %16, metadata !857, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.declare(metadata ptr %17, metadata !859, metadata !DIExpression()), !dbg !860
  store i32 0, ptr %17, align 4, !dbg !860
  call void @llvm.dbg.declare(metadata ptr %18, metadata !861, metadata !DIExpression()), !dbg !862
  store i32 0, ptr %18, align 4, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %19, metadata !863, metadata !DIExpression()), !dbg !864
  store i32 0, ptr %19, align 4, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %20, metadata !865, metadata !DIExpression()), !dbg !866
  store i8 0, ptr %20, align 1, !dbg !866
  %98 = getelementptr inbounds [82 x i8], ptr %14, i64 0, i64 0, !dbg !867
  store i8 0, ptr %98, align 16, !dbg !868
  %99 = load i32, ptr %4, align 4, !dbg !869
  %100 = icmp eq i32 %99, 2, !dbg !871
  br i1 %100, label %101, label %141, !dbg !872

101:                                              ; preds = %97
  store i32 0, ptr %12, align 4, !dbg !873
  br label %102, !dbg !876

102:                                              ; preds = %133, %101
  %103 = load i32, ptr %12, align 4, !dbg !877
  %104 = load i32, ptr %11, align 4, !dbg !879
  %105 = icmp slt i32 %103, %104, !dbg !880
  br i1 %105, label %106, label %136, !dbg !881

106:                                              ; preds = %102
  %107 = load i8, ptr %20, align 1, !dbg !882
  %108 = sext i8 %107 to i32, !dbg !882
  %109 = load ptr, ptr %6, align 8, !dbg !885
  %110 = load i32, ptr %12, align 4, !dbg !886
  %111 = sext i32 %110 to i64, !dbg !885
  %112 = getelementptr inbounds ptr, ptr %109, i64 %111, !dbg !885
  %113 = load ptr, ptr %112, align 8, !dbg !885
  %114 = getelementptr inbounds i8, ptr %113, i64 0, !dbg !885
  %115 = load i8, ptr %114, align 1, !dbg !885
  %116 = sext i8 %115 to i32, !dbg !885
  %117 = icmp ne i32 %108, %116, !dbg !887
  br i1 %117, label %118, label %132, !dbg !888

118:                                              ; preds = %106
  %119 = load ptr, ptr %6, align 8, !dbg !889
  %120 = load i32, ptr %12, align 4, !dbg !891
  %121 = sext i32 %120 to i64, !dbg !889
  %122 = getelementptr inbounds ptr, ptr %119, i64 %121, !dbg !889
  %123 = load ptr, ptr %122, align 8, !dbg !889
  %124 = getelementptr inbounds i8, ptr %123, i64 0, !dbg !889
  %125 = load i8, ptr %124, align 1, !dbg !889
  store i8 %125, ptr %20, align 1, !dbg !892
  %126 = load ptr, ptr %13, align 8, !dbg !893
  %127 = load i8, ptr %20, align 1, !dbg !894
  %128 = sext i8 %127 to i32, !dbg !894
  %129 = load i8, ptr %20, align 1, !dbg !895
  %130 = sext i8 %129 to i32, !dbg !895
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef @.str.24, i32 noundef %128, i32 noundef %130), !dbg !896
  br label %132, !dbg !897

132:                                              ; preds = %118, %106
  br label %133, !dbg !898

133:                                              ; preds = %132
  %134 = load i32, ptr %12, align 4, !dbg !899
  %135 = add nsw i32 %134, 1, !dbg !899
  store i32 %135, ptr %12, align 4, !dbg !899
  br label %102, !dbg !900, !llvm.loop !901

136:                                              ; preds = %102
  store i8 0, ptr %20, align 1, !dbg !903
  %137 = load ptr, ptr %13, align 8, !dbg !904
  %138 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef @.str.25), !dbg !905
  %139 = load ptr, ptr %13, align 8, !dbg !906
  %140 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef @.str.26), !dbg !907
  br label %141, !dbg !908

141:                                              ; preds = %136, %97
  store i32 0, ptr %12, align 4, !dbg !909
  br label %142, !dbg !911

142:                                              ; preds = %294, %141
  %143 = load i32, ptr %12, align 4, !dbg !912
  %144 = load i32, ptr %11, align 4, !dbg !914
  %145 = icmp slt i32 %143, %144, !dbg !915
  br i1 %145, label %146, label %297, !dbg !916

146:                                              ; preds = %142
  %147 = load ptr, ptr %6, align 8, !dbg !917
  %148 = load i32, ptr %12, align 4, !dbg !920
  %149 = sext i32 %148 to i64, !dbg !917
  %150 = getelementptr inbounds ptr, ptr %147, i64 %149, !dbg !917
  %151 = load ptr, ptr %150, align 8, !dbg !917
  %152 = getelementptr inbounds [82 x i8], ptr %15, i64 0, i64 0, !dbg !921
  %153 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %151, ptr noundef @.str.27, ptr noundef %152, ptr noundef %16) #8, !dbg !922
  %154 = icmp eq i32 %153, 2, !dbg !923
  br i1 %154, label %155, label %293, !dbg !924

155:                                              ; preds = %146
  call void @llvm.dbg.declare(metadata ptr %21, metadata !925, metadata !DIExpression()), !dbg !927
  %156 = load ptr, ptr %6, align 8, !dbg !928
  %157 = load i32, ptr %12, align 4, !dbg !929
  %158 = sext i32 %157 to i64, !dbg !928
  %159 = getelementptr inbounds ptr, ptr %156, i64 %158, !dbg !928
  %160 = load ptr, ptr %159, align 8, !dbg !928
  %161 = call ptr @strchr(ptr noundef %160, i32 noundef 32) #9, !dbg !930
  store ptr %161, ptr %21, align 8, !dbg !927
  %162 = load ptr, ptr %21, align 8, !dbg !931
  %163 = icmp ne ptr %162, null, !dbg !931
  br i1 %163, label %164, label %168, !dbg !933

164:                                              ; preds = %155
  %165 = load ptr, ptr %21, align 8, !dbg !934
  %166 = getelementptr inbounds i8, ptr %165, i64 1, !dbg !935
  %167 = call ptr @strchr(ptr noundef %166, i32 noundef 32) #9, !dbg !936
  store ptr %167, ptr %21, align 8, !dbg !937
  br label %168, !dbg !938

168:                                              ; preds = %164, %155
  %169 = load ptr, ptr %21, align 8, !dbg !939
  %170 = getelementptr inbounds i8, ptr %169, i32 1, !dbg !939
  store ptr %170, ptr %21, align 8, !dbg !939
  %171 = icmp ne ptr %169, null, !dbg !939
  br i1 %171, label %172, label %292, !dbg !941

172:                                              ; preds = %168
  %173 = load i32, ptr %16, align 4, !dbg !942
  %174 = sub nsw i32 999999999, %173, !dbg !944
  store i32 %174, ptr %16, align 4, !dbg !945
  %175 = getelementptr inbounds [82 x i8], ptr %15, i64 0, i64 0, !dbg !946
  %176 = getelementptr inbounds [82 x i8], ptr %14, i64 0, i64 0, !dbg !948
  %177 = call i32 @strcmp(ptr noundef %175, ptr noundef %176) #9, !dbg !949
  %178 = icmp ne i32 %177, 0, !dbg !949
  br i1 %178, label %179, label %272, !dbg !950

179:                                              ; preds = %172
  %180 = load i32, ptr %17, align 4, !dbg !951
  %181 = icmp ne i32 %180, 0, !dbg !951
  br i1 %181, label %182, label %232, !dbg !954

182:                                              ; preds = %179
  %183 = load i32, ptr %4, align 4, !dbg !955
  %184 = icmp eq i32 %183, 1, !dbg !958
  br i1 %184, label %185, label %189, !dbg !959

185:                                              ; preds = %182
  %186 = load ptr, ptr %13, align 8, !dbg !960
  %187 = load i32, ptr %17, align 4, !dbg !961
  %188 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef @.str.28, i32 noundef %187), !dbg !962
  br label %189, !dbg !962

189:                                              ; preds = %185, %182
  %190 = load i32, ptr %17, align 4, !dbg !963
  %191 = mul nsw i32 %190, 1000, !dbg !965
  %192 = load i32, ptr @hts_primindex_words, align 4, !dbg !966
  %193 = sdiv i32 %191, %192, !dbg !967
  %194 = icmp sge i32 %193, 5, !dbg !968
  br i1 %194, label %201, label %195, !dbg !969

195:                                              ; preds = %189
  %196 = load i32, ptr %18, align 4, !dbg !970
  %197 = mul nsw i32 %196, 1000, !dbg !971
  %198 = load i32, ptr %11, align 4, !dbg !972
  %199 = sdiv i32 %197, %198, !dbg !973
  %200 = icmp sge i32 %199, 800, !dbg !974
  br i1 %200, label %201, label %220, !dbg !975

201:                                              ; preds = %195, %189
  %202 = load ptr, ptr %13, align 8, !dbg !976
  %203 = load i32, ptr %19, align 4, !dbg !978
  %204 = sext i32 %203 to i64, !dbg !978
  %205 = call i32 @fseek(ptr noundef %202, i64 noundef %204, i32 noundef 0), !dbg !979
  %206 = load i32, ptr %4, align 4, !dbg !980
  %207 = icmp eq i32 %206, 1, !dbg !982
  br i1 %207, label %208, label %215, !dbg !983

208:                                              ; preds = %201
  %209 = load ptr, ptr %13, align 8, !dbg !984
  %210 = load i32, ptr %17, align 4, !dbg !985
  %211 = mul nsw i32 %210, 1000, !dbg !986
  %212 = load i32, ptr @hts_primindex_words, align 4, !dbg !987
  %213 = sdiv i32 %211, %212, !dbg !988
  %214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %209, ptr noundef @.str.29, i32 noundef %213), !dbg !989
  br label %219, !dbg !989

215:                                              ; preds = %201
  %216 = load ptr, ptr %13, align 8, !dbg !990
  %217 = load i32, ptr %17, align 4, !dbg !991
  %218 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %216, ptr noundef @.str.30, i32 noundef %217), !dbg !992
  br label %219

219:                                              ; preds = %215, %208
  br label %231, !dbg !993

220:                                              ; preds = %195
  %221 = load i32, ptr %4, align 4, !dbg !994
  %222 = icmp eq i32 %221, 1, !dbg !997
  br i1 %222, label %223, label %230, !dbg !998

223:                                              ; preds = %220
  %224 = load ptr, ptr %13, align 8, !dbg !999
  %225 = load i32, ptr %17, align 4, !dbg !1000
  %226 = mul nsw i32 %225, 1000, !dbg !1001
  %227 = load i32, ptr @hts_primindex_words, align 4, !dbg !1002
  %228 = sdiv i32 %226, %227, !dbg !1003
  %229 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %224, ptr noundef @.str.31, i32 noundef %228), !dbg !1004
  br label %230, !dbg !1004

230:                                              ; preds = %223, %220
  br label %231

231:                                              ; preds = %230, %219
  br label %232, !dbg !1005

232:                                              ; preds = %231, %179
  %233 = load i32, ptr %4, align 4, !dbg !1006
  %234 = icmp eq i32 %233, 1, !dbg !1008
  br i1 %234, label %235, label %239, !dbg !1009

235:                                              ; preds = %232
  %236 = load ptr, ptr %13, align 8, !dbg !1010
  %237 = getelementptr inbounds [82 x i8], ptr %15, i64 0, i64 0, !dbg !1011
  %238 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %236, ptr noundef @.str.32, ptr noundef %237), !dbg !1012
  br label %263, !dbg !1012

239:                                              ; preds = %232
  %240 = load ptr, ptr %13, align 8, !dbg !1013
  %241 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %240, ptr noundef @.str.33), !dbg !1015
  %242 = load i8, ptr %20, align 1, !dbg !1016
  %243 = sext i8 %242 to i32, !dbg !1016
  %244 = getelementptr inbounds [82 x i8], ptr %15, i64 0, i64 0, !dbg !1018
  %245 = load i8, ptr %244, align 16, !dbg !1018
  %246 = sext i8 %245 to i32, !dbg !1018
  %247 = icmp ne i32 %243, %246, !dbg !1019
  br i1 %247, label %248, label %259, !dbg !1020

248:                                              ; preds = %239
  %249 = getelementptr inbounds [82 x i8], ptr %15, i64 0, i64 0, !dbg !1021
  %250 = load i8, ptr %249, align 16, !dbg !1021
  store i8 %250, ptr %20, align 1, !dbg !1023
  %251 = load ptr, ptr %13, align 8, !dbg !1024
  %252 = load i8, ptr %20, align 1, !dbg !1025
  %253 = sext i8 %252 to i32, !dbg !1025
  %254 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %251, ptr noundef @.str.34, i32 noundef %253), !dbg !1026
  %255 = load ptr, ptr %13, align 8, !dbg !1027
  %256 = load i8, ptr %20, align 1, !dbg !1028
  %257 = sext i8 %256 to i32, !dbg !1028
  %258 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %255, ptr noundef @.str.35, i32 noundef %257), !dbg !1029
  br label %259, !dbg !1030

259:                                              ; preds = %248, %239
  %260 = load ptr, ptr %13, align 8, !dbg !1031
  %261 = getelementptr inbounds [82 x i8], ptr %15, i64 0, i64 0, !dbg !1032
  %262 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %260, ptr noundef @.str.36, ptr noundef %261), !dbg !1033
  br label %263

263:                                              ; preds = %259, %235
  %264 = load ptr, ptr %13, align 8, !dbg !1034
  %265 = call i32 @fflush(ptr noundef %264), !dbg !1035
  %266 = load ptr, ptr %13, align 8, !dbg !1036
  %267 = call i64 @ftell(ptr noundef %266), !dbg !1037
  %268 = trunc i64 %267 to i32, !dbg !1037
  store i32 %268, ptr %19, align 4, !dbg !1038
  %269 = getelementptr inbounds [82 x i8], ptr %14, i64 0, i64 0, !dbg !1039
  %270 = getelementptr inbounds [82 x i8], ptr %15, i64 0, i64 0, !dbg !1039
  %271 = call ptr @strcpy_safe_(ptr noundef %269, i64 noundef 82, ptr noundef %270, i64 noundef 82, ptr noundef @.str.37, ptr noundef @.str.20, i32 noundef 435), !dbg !1039
  store i32 0, ptr %18, align 4, !dbg !1040
  store i32 0, ptr %17, align 4, !dbg !1041
  br label %272, !dbg !1042

272:                                              ; preds = %263, %172
  %273 = load i32, ptr %16, align 4, !dbg !1043
  %274 = load i32, ptr %17, align 4, !dbg !1044
  %275 = add nsw i32 %274, %273, !dbg !1044
  store i32 %275, ptr %17, align 4, !dbg !1044
  %276 = load i32, ptr %18, align 4, !dbg !1045
  %277 = add nsw i32 %276, 1, !dbg !1045
  store i32 %277, ptr %18, align 4, !dbg !1045
  %278 = load i32, ptr %4, align 4, !dbg !1046
  %279 = icmp eq i32 %278, 1, !dbg !1048
  br i1 %279, label %280, label %285, !dbg !1049

280:                                              ; preds = %272
  %281 = load ptr, ptr %13, align 8, !dbg !1050
  %282 = load i32, ptr %16, align 4, !dbg !1051
  %283 = load ptr, ptr %21, align 8, !dbg !1052
  %284 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %281, ptr noundef @.str.38, i32 noundef %282, ptr noundef %283), !dbg !1053
  br label %291, !dbg !1053

285:                                              ; preds = %272
  %286 = load ptr, ptr %13, align 8, !dbg !1054
  %287 = load ptr, ptr %21, align 8, !dbg !1055
  %288 = load ptr, ptr %21, align 8, !dbg !1056
  %289 = load i32, ptr %16, align 4, !dbg !1057
  %290 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %286, ptr noundef @.str.39, ptr noundef %287, ptr noundef %288, i32 noundef %289), !dbg !1058
  br label %291

291:                                              ; preds = %285, %280
  br label %292, !dbg !1059

292:                                              ; preds = %291, %168
  br label %293, !dbg !1060

293:                                              ; preds = %292, %146
  br label %294, !dbg !1061

294:                                              ; preds = %293
  %295 = load i32, ptr %12, align 4, !dbg !1062
  %296 = add nsw i32 %295, 1, !dbg !1062
  store i32 %296, ptr %12, align 4, !dbg !1062
  br label %142, !dbg !1063, !llvm.loop !1064

297:                                              ; preds = %142
  %298 = load i32, ptr %4, align 4, !dbg !1066
  %299 = icmp eq i32 %298, 2, !dbg !1068
  br i1 %299, label %300, label %303, !dbg !1069

300:                                              ; preds = %297
  %301 = load ptr, ptr %13, align 8, !dbg !1070
  %302 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %301, ptr noundef @.str.40), !dbg !1071
  br label %303, !dbg !1071

303:                                              ; preds = %300, %297
  %304 = load ptr, ptr %13, align 8, !dbg !1072
  %305 = call i32 @fclose(ptr noundef %304), !dbg !1073
  br label %306, !dbg !1074

306:                                              ; preds = %303, %94
  br label %307, !dbg !1075

307:                                              ; preds = %306, %43
  br label %308, !dbg !1076

308:                                              ; preds = %307
  %309 = load ptr, ptr %7, align 8, !dbg !1077
  %310 = icmp ne ptr %309, null, !dbg !1077
  br i1 %310, label %311, label %313, !dbg !1080

311:                                              ; preds = %308
  %312 = load ptr, ptr %7, align 8, !dbg !1081
  call void @free(ptr noundef %312) #8, !dbg !1081
  store ptr null, ptr %7, align 8, !dbg !1081
  br label %313, !dbg !1081

313:                                              ; preds = %311, %308
  br label %314, !dbg !1080

314:                                              ; preds = %313
  br label %315, !dbg !1083

315:                                              ; preds = %314, %37
  br label %316, !dbg !1084

316:                                              ; preds = %315
  %317 = load ptr, ptr %6, align 8, !dbg !1085
  %318 = icmp ne ptr %317, null, !dbg !1085
  br i1 %318, label %319, label %321, !dbg !1088

319:                                              ; preds = %316
  %320 = load ptr, ptr %6, align 8, !dbg !1089
  call void @free(ptr noundef %320) #8, !dbg !1089
  store ptr null, ptr %6, align 8, !dbg !1089
  br label %321, !dbg !1089

321:                                              ; preds = %319, %316
  br label %322, !dbg !1088

322:                                              ; preds = %321
  br label %323, !dbg !1091

323:                                              ; preds = %322, %29
  br label %324, !dbg !1092

324:                                              ; preds = %323, %26
  br label %325, !dbg !1093

325:                                              ; preds = %324, %2
  %326 = load ptr, ptr @fp_tmpproject, align 8, !dbg !1094
  %327 = icmp ne ptr %326, null, !dbg !1094
  br i1 %327, label %328, label %331, !dbg !1096

328:                                              ; preds = %325
  %329 = load ptr, ptr @fp_tmpproject, align 8, !dbg !1097
  %330 = call i32 @fclose(ptr noundef %329), !dbg !1098
  br label %331, !dbg !1098

331:                                              ; preds = %328, %325
  store ptr null, ptr @fp_tmpproject, align 8, !dbg !1099
  ret void, !dbg !1100
}

declare i64 @fpsize(ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mystrcmp(ptr noundef %0, ptr noundef %1) #0 !dbg !1101 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1106, metadata !DIExpression()), !dbg !1107
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1108, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1110, metadata !DIExpression()), !dbg !1112
  %7 = load ptr, ptr %3, align 8, !dbg !1113
  store ptr %7, ptr %5, align 8, !dbg !1112
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1114, metadata !DIExpression()), !dbg !1115
  %8 = load ptr, ptr %4, align 8, !dbg !1116
  store ptr %8, ptr %6, align 8, !dbg !1115
  %9 = load ptr, ptr %5, align 8, !dbg !1117
  %10 = load ptr, ptr %9, align 8, !dbg !1118
  %11 = load ptr, ptr %6, align 8, !dbg !1119
  %12 = load ptr, ptr %11, align 8, !dbg !1120
  %13 = call i32 @strcmp(ptr noundef %10, ptr noundef %12) #9, !dbg !1121
  ret i32 %13, !dbg !1122
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

declare i32 @fflush(ptr noundef) #2

declare i64 @ftell(ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abortf_(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1123 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1126, metadata !DIExpression()), !dbg !1127
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1128, metadata !DIExpression()), !dbg !1129
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1130, metadata !DIExpression()), !dbg !1131
  %7 = load ptr, ptr %4, align 8, !dbg !1132
  %8 = load ptr, ptr %5, align 8, !dbg !1133
  %9 = load i32, ptr %6, align 4, !dbg !1134
  call void @log_abort_(ptr noundef %7, ptr noundef %8, i32 noundef %9), !dbg !1135
  call void @abort() #11, !dbg !1136
  unreachable, !dbg !1136
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @strncat_safe_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) #0 !dbg !1137 {
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1140, metadata !DIExpression()), !dbg !1141
  store i64 %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1142, metadata !DIExpression()), !dbg !1143
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1144, metadata !DIExpression()), !dbg !1145
  store i64 %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1146, metadata !DIExpression()), !dbg !1147
  store i64 %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1148, metadata !DIExpression()), !dbg !1149
  store ptr %5, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1150, metadata !DIExpression()), !dbg !1151
  store ptr %6, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1152, metadata !DIExpression()), !dbg !1153
  store i32 %7, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1154, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1156, metadata !DIExpression()), !dbg !1157
  %21 = load ptr, ptr %11, align 8, !dbg !1158
  %22 = load i64, ptr %12, align 8, !dbg !1159
  %23 = load ptr, ptr %15, align 8, !dbg !1160
  %24 = load i32, ptr %16, align 4, !dbg !1161
  %25 = call i64 @strlen_safe_(ptr noundef %21, i64 noundef %22, ptr noundef %23, i32 noundef %24), !dbg !1162
  store i64 %25, ptr %17, align 8, !dbg !1157
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1163, metadata !DIExpression()), !dbg !1164
  %26 = load ptr, ptr %9, align 8, !dbg !1165
  %27 = load i64, ptr %10, align 8, !dbg !1166
  %28 = load ptr, ptr %15, align 8, !dbg !1167
  %29 = load i32, ptr %16, align 4, !dbg !1168
  %30 = call i64 @strlen_safe_(ptr noundef %26, i64 noundef %27, ptr noundef %28, i32 noundef %29), !dbg !1169
  store i64 %30, ptr %18, align 8, !dbg !1164
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1170, metadata !DIExpression()), !dbg !1171
  %31 = load i64, ptr %17, align 8, !dbg !1172
  %32 = load i64, ptr %13, align 8, !dbg !1173
  %33 = icmp ule i64 %31, %32, !dbg !1174
  br i1 %33, label %34, label %36, !dbg !1172

34:                                               ; preds = %8
  %35 = load i64, ptr %17, align 8, !dbg !1175
  br label %38, !dbg !1172

36:                                               ; preds = %8
  %37 = load i64, ptr %13, align 8, !dbg !1176
  br label %38, !dbg !1172

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ %37, %36 ], !dbg !1172
  store i64 %39, ptr %19, align 8, !dbg !1171
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1177, metadata !DIExpression()), !dbg !1178
  %40 = load i64, ptr %18, align 8, !dbg !1179
  %41 = load i64, ptr %19, align 8, !dbg !1180
  %42 = add i64 %40, %41, !dbg !1181
  store i64 %42, ptr %20, align 8, !dbg !1178
  %43 = load i64, ptr %20, align 8, !dbg !1182
  %44 = load i64, ptr %10, align 8, !dbg !1182
  %45 = icmp ult i64 %43, %44, !dbg !1182
  br i1 %45, label %50, label %46, !dbg !1182

46:                                               ; preds = %38
  %47 = load ptr, ptr %14, align 8, !dbg !1182
  %48 = load ptr, ptr %15, align 8, !dbg !1182
  %49 = load i32, ptr %16, align 4, !dbg !1182
  call void @abortf_(ptr noundef %47, ptr noundef %48, i32 noundef %49), !dbg !1182
  br label %50, !dbg !1182

50:                                               ; preds = %46, %38
  %51 = phi i1 [ true, %38 ], [ false, %46 ]
  %52 = zext i1 %51 to i32, !dbg !1182
  %53 = load ptr, ptr %9, align 8, !dbg !1183
  %54 = load i64, ptr %18, align 8, !dbg !1184
  %55 = getelementptr inbounds i8, ptr %53, i64 %54, !dbg !1185
  %56 = load ptr, ptr %11, align 8, !dbg !1186
  %57 = load i64, ptr %19, align 8, !dbg !1187
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 1 %56, i64 %57, i1 false), !dbg !1188
  %58 = load ptr, ptr %9, align 8, !dbg !1189
  %59 = load i64, ptr %20, align 8, !dbg !1190
  %60 = getelementptr inbounds i8, ptr %58, i64 %59, !dbg !1189
  store i8 0, ptr %60, align 1, !dbg !1191
  %61 = load ptr, ptr %9, align 8, !dbg !1192
  ret ptr %61, !dbg !1193
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_abort_(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1194 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1195, metadata !DIExpression()), !dbg !1196
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1197, metadata !DIExpression()), !dbg !1198
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1199, metadata !DIExpression()), !dbg !1200
  %7 = load ptr, ptr @stderr, align 8, !dbg !1201
  %8 = load ptr, ptr %4, align 8, !dbg !1202
  %9 = load ptr, ptr %5, align 8, !dbg !1203
  %10 = load i32, ptr %6, align 4, !dbg !1204
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.42, ptr noundef %8, ptr noundef %9, i32 noundef %10), !dbg !1205
  %12 = load ptr, ptr @stderr, align 8, !dbg !1206
  %13 = call i32 @fflush(ptr noundef %12), !dbg !1207
  ret void, !dbg !1208
}

; Function Attrs: noreturn nounwind
declare void @abort() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @strlen_safe_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1209 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1212, metadata !DIExpression()), !dbg !1213
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1214, metadata !DIExpression()), !dbg !1215
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1216, metadata !DIExpression()), !dbg !1217
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1218, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1220, metadata !DIExpression()), !dbg !1221
  %10 = load ptr, ptr %5, align 8, !dbg !1222
  %11 = icmp ne ptr %10, null, !dbg !1222
  br i1 %11, label %15, label %12, !dbg !1222

12:                                               ; preds = %4
  %13 = load ptr, ptr %7, align 8, !dbg !1222
  %14 = load i32, ptr %8, align 4, !dbg !1222
  call void @abortf_(ptr noundef @.str.43, ptr noundef %13, i32 noundef %14), !dbg !1222
  br label %15, !dbg !1222

15:                                               ; preds = %12, %4
  %16 = phi i1 [ true, %4 ], [ false, %12 ]
  %17 = zext i1 %16 to i32, !dbg !1222
  %18 = load i64, ptr %6, align 8, !dbg !1223
  %19 = icmp ne i64 %18, -1, !dbg !1224
  br i1 %19, label %20, label %24, !dbg !1223

20:                                               ; preds = %15
  %21 = load ptr, ptr %5, align 8, !dbg !1225
  %22 = load i64, ptr %6, align 8, !dbg !1226
  %23 = call i64 @strnlen(ptr noundef %21, i64 noundef %22) #9, !dbg !1227
  br label %27, !dbg !1223

24:                                               ; preds = %15
  %25 = load ptr, ptr %5, align 8, !dbg !1228
  %26 = call i64 @strlen(ptr noundef %25) #9, !dbg !1229
  br label %27, !dbg !1223

27:                                               ; preds = %24, %20
  %28 = phi i64 [ %23, %20 ], [ %26, %24 ], !dbg !1223
  store i64 %28, ptr %9, align 8, !dbg !1230
  %29 = load i64, ptr %9, align 8, !dbg !1231
  %30 = load i64, ptr %6, align 8, !dbg !1231
  %31 = icmp ult i64 %29, %30, !dbg !1231
  br i1 %31, label %35, label %32, !dbg !1231

32:                                               ; preds = %27
  %33 = load ptr, ptr %7, align 8, !dbg !1231
  %34 = load i32, ptr %8, align 4, !dbg !1231
  call void @abortf_(ptr noundef @.str.44, ptr noundef %33, i32 noundef %34), !dbg !1231
  br label %35, !dbg !1231

35:                                               ; preds = %32, %27
  %36 = phi i1 [ true, %27 ], [ false, %32 ]
  %37 = zext i1 %36 to i32, !dbg !1231
  %38 = load i64, ptr %9, align 8, !dbg !1232
  ret i64 %38, !dbg !1233
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strnlen(ptr noundef, i64 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!263, !264, !265, !266, !267, !268, !269}
!llvm.ident = !{!270}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hts_index_init", scope: !2, file: !3, line: 110, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/htsindex.c", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "3c61d07515a6703838f3f0215c89e99a")
!4 = !{!5, !10, !11, !12, !14, !17, !18, !20}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DISubroutineType(types: !7)
!7 = !{null, !8}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 46, baseType: !16)
!15 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTsys", file: !19, line: 311, baseType: !11)
!19 = !DIFile(filename: "./src/htsglobal.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "fb20c0ed09319430675cc60ef3f4ae78")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!22 = !{!0, !23, !25, !83, !85, !90, !95, !97, !102, !107, !109, !114, !119, !124, !129, !131, !136, !141, !146, !151, !153, !155, !160, !162, !167, !172, !177, !179, !184, !189, !191, !196, !201, !206, !211, !216, !218, !220, !225, !227, !229, !231, !236, !238, !243, !248, !254, !256, !258}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "hts_primindex_size", scope: !2, file: !3, line: 111, type: !11, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "fp_tmpproject", scope: !2, file: !3, line: 112, type: !27, isLocal: false, isDefinition: true)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !29, line: 7, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !31, line: 49, size: 1728, elements: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !48, !50, !51, !52, !56, !58, !60, !64, !67, !69, !72, !75, !76, !77, !78, !79}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !30, file: !31, line: 51, baseType: !11, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !30, file: !31, line: 54, baseType: !8, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !30, file: !31, line: 55, baseType: !8, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !30, file: !31, line: 56, baseType: !8, size: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !30, file: !31, line: 57, baseType: !8, size: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !30, file: !31, line: 58, baseType: !8, size: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !30, file: !31, line: 59, baseType: !8, size: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !30, file: !31, line: 60, baseType: !8, size: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !30, file: !31, line: 61, baseType: !8, size: 64, offset: 512)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !30, file: !31, line: 64, baseType: !8, size: 64, offset: 576)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !30, file: !31, line: 65, baseType: !8, size: 64, offset: 640)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !30, file: !31, line: 66, baseType: !8, size: 64, offset: 704)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !30, file: !31, line: 68, baseType: !46, size: 64, offset: 768)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !31, line: 36, flags: DIFlagFwdDecl)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !30, file: !31, line: 70, baseType: !49, size: 64, offset: 832)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !30, file: !31, line: 72, baseType: !11, size: 32, offset: 896)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !30, file: !31, line: 73, baseType: !11, size: 32, offset: 928)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !30, file: !31, line: 74, baseType: !53, size: 64, offset: 960)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !54, line: 152, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!55 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !30, file: !31, line: 77, baseType: !57, size: 16, offset: 1024)
!57 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !30, file: !31, line: 78, baseType: !59, size: 8, offset: 1040)
!59 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !30, file: !31, line: 79, baseType: !61, size: 8, offset: 1048)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 1)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !30, file: !31, line: 81, baseType: !65, size: 64, offset: 1088)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !31, line: 43, baseType: null)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !30, file: !31, line: 89, baseType: !68, size: 64, offset: 1152)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !54, line: 153, baseType: !55)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !30, file: !31, line: 91, baseType: !70, size: 64, offset: 1216)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !31, line: 37, flags: DIFlagFwdDecl)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !30, file: !31, line: 92, baseType: !73, size: 64, offset: 1280)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !31, line: 38, flags: DIFlagFwdDecl)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !30, file: !31, line: 93, baseType: !49, size: 64, offset: 1344)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !30, file: !31, line: 94, baseType: !10, size: 64, offset: 1408)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !30, file: !31, line: 95, baseType: !14, size: 64, offset: 1472)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !30, file: !31, line: 96, baseType: !11, size: 32, offset: 1536)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !30, file: !31, line: 98, baseType: !80, size: 160, offset: 1568)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 20)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "hts_primindex_words", scope: !2, file: !3, line: 113, type: !11, isLocal: false, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !3, line: 164, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 80, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 10)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !3, line: 165, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 96, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 12)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !87, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 176, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 22)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 174, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 112, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 14)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !104, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 200, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 25)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 72, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 9)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !3, line: 200, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 8)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !3, line: 202, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 40, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 5)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !3, line: 204, type: !116, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !3, line: 207, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 4)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !3, line: 222, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 744, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 93)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !3, line: 223, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 480, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 60)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !3, line: 225, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 320, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 40)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !3, line: 227, type: !133, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !3, line: 231, type: !104, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !3, line: 235, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 88, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 11)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !3, line: 256, type: !133, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !3, line: 295, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 536, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 67)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !3, line: 295, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 120, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 15)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 376, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 47)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !3, line: 300, type: !87, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !3, line: 361, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 24, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 3)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !3, line: 379, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 24)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !3, line: 383, type: !157, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !3, line: 385, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 560, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 70)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !3, line: 389, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 48, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 6)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !3, line: 399, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 56, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 7)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !3, line: 409, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 128, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 16)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !3, line: 412, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 208, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 26)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !3, line: 416, type: !121, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 423, type: !126, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !3, line: 425, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 104, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 13)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !3, line: 428, type: !104, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !3, line: 429, type: !80, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !3, line: 431, type: !213, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !3, line: 435, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 384, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 48)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !3, line: 441, type: !116, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !3, line: 443, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 288, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 36)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !3, line: 449, type: !245, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 184, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 23)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !250, line: 215, type: !251, isLocal: true, isDefinition: true)
!250 = !DIFile(filename: "./src/htssafe.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "0a24d1c0939efbe916010d30091bc9cc")
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 136, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 17)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !250, line: 91, type: !80, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !250, line: 190, type: !169, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !250, line: 193, type: !260, isLocal: true, isDefinition: true)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 168, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 21)
!263 = !{i32 7, !"Dwarf Version", i32 5}
!264 = !{i32 2, !"Debug Info Version", i32 3}
!265 = !{i32 1, !"wchar_size", i32 4}
!266 = !{i32 8, !"PIC Level", i32 2}
!267 = !{i32 7, !"PIE Level", i32 2}
!268 = !{i32 7, !"uwtable", i32 2}
!269 = !{i32 7, !"frame-pointer", i32 2}
!270 = !{!"clang version 16.0.0"}
!271 = distinct !DISubprogram(name: "index_init", scope: !3, file: !3, line: 120, type: !272, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !274)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !12}
!274 = !{}
!275 = !DILocalVariable(name: "indexpath", arg: 1, scope: !271, file: !3, line: 120, type: !12)
!276 = !DILocation(line: 120, column: 29, scope: !271)
!277 = !DILocation(line: 123, column: 18, scope: !271)
!278 = !DILocation(line: 124, column: 22, scope: !271)
!279 = !DILocation(line: 125, column: 23, scope: !271)
!280 = !DILocation(line: 126, column: 19, scope: !271)
!281 = !DILocation(line: 126, column: 17, scope: !271)
!282 = !DILocation(line: 128, column: 1, scope: !271)
!283 = distinct !DISubprogram(name: "index_keyword", scope: !3, file: !3, line: 137, type: !284, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !274)
!284 = !DISubroutineType(types: !285)
!285 = !{!11, !12, !286, !12, !12, !12}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "LLint", file: !19, line: 283, baseType: !55)
!287 = !DILocalVariable(name: "html_data", arg: 1, scope: !283, file: !3, line: 137, type: !12)
!288 = !DILocation(line: 137, column: 31, scope: !283)
!289 = !DILocalVariable(name: "size", arg: 2, scope: !283, file: !3, line: 137, type: !286)
!290 = !DILocation(line: 137, column: 48, scope: !283)
!291 = !DILocalVariable(name: "mime", arg: 3, scope: !283, file: !3, line: 137, type: !12)
!292 = !DILocation(line: 137, column: 66, scope: !283)
!293 = !DILocalVariable(name: "filename", arg: 4, scope: !283, file: !3, line: 138, type: !12)
!294 = !DILocation(line: 138, column: 31, scope: !283)
!295 = !DILocalVariable(name: "indexpath", arg: 5, scope: !283, file: !3, line: 138, type: !12)
!296 = !DILocation(line: 138, column: 53, scope: !283)
!297 = !DILocalVariable(name: "catbuff", scope: !283, file: !3, line: 140, type: !298)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 65536, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 8192)
!301 = !DILocation(line: 140, column: 8, scope: !283)
!302 = !DILocalVariable(name: "intag", scope: !283, file: !3, line: 141, type: !11)
!303 = !DILocation(line: 141, column: 7, scope: !283)
!304 = !DILocalVariable(name: "inscript", scope: !283, file: !3, line: 141, type: !11)
!305 = !DILocation(line: 141, column: 18, scope: !283)
!306 = !DILocalVariable(name: "incomment", scope: !283, file: !3, line: 141, type: !11)
!307 = !DILocation(line: 141, column: 32, scope: !283)
!308 = !DILocalVariable(name: "keyword", scope: !283, file: !3, line: 142, type: !309)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 656, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 82)
!312 = !DILocation(line: 142, column: 8, scope: !283)
!313 = !DILocalVariable(name: "i", scope: !283, file: !3, line: 143, type: !11)
!314 = !DILocation(line: 143, column: 7, scope: !283)
!315 = !DILocalVariable(name: "WordIndexHash", scope: !283, file: !3, line: 147, type: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "coucal", file: !317, line: 210, baseType: !318)
!317 = !DIFile(filename: "./src/htsopt.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "4c13c78c9669919a80461e39e206d058")
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "struct_coucal", file: !317, line: 210, flags: DIFlagFwdDecl)
!320 = !DILocation(line: 147, column: 10, scope: !283)
!321 = !DILocalVariable(name: "tmpfp", scope: !283, file: !3, line: 148, type: !27)
!322 = !DILocation(line: 148, column: 9, scope: !283)
!323 = !DILocation(line: 153, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !283, file: !3, line: 153, column: 7)
!325 = !DILocation(line: 153, column: 7, scope: !283)
!326 = !DILocation(line: 154, column: 5, scope: !324)
!327 = !DILocation(line: 155, column: 8, scope: !328)
!328 = distinct !DILexicalBlock(scope: !283, file: !3, line: 155, column: 7)
!329 = !DILocation(line: 155, column: 7, scope: !283)
!330 = !DILocation(line: 156, column: 5, scope: !328)
!331 = !DILocation(line: 157, column: 8, scope: !332)
!332 = distinct !DILexicalBlock(scope: !283, file: !3, line: 157, column: 7)
!333 = !DILocation(line: 157, column: 7, scope: !283)
!334 = !DILocation(line: 158, column: 5, scope: !332)
!335 = !DILocation(line: 159, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !283, file: !3, line: 159, column: 7)
!337 = !DILocation(line: 159, column: 7, scope: !283)
!338 = !DILocation(line: 160, column: 5, scope: !336)
!339 = !DILocation(line: 163, column: 7, scope: !340)
!340 = distinct !DILexicalBlock(scope: !283, file: !3, line: 163, column: 7)
!341 = !DILocation(line: 163, column: 7, scope: !283)
!342 = !DILocation(line: 164, column: 12, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !3, line: 163, column: 23)
!344 = !DILocation(line: 164, column: 5, scope: !343)
!345 = !DILocation(line: 165, column: 12, scope: !343)
!346 = !DILocation(line: 165, column: 5, scope: !343)
!347 = !DILocation(line: 166, column: 20, scope: !343)
!348 = !DILocation(line: 167, column: 3, scope: !343)
!349 = !DILocation(line: 169, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !283, file: !3, line: 169, column: 7)
!351 = !DILocation(line: 169, column: 7, scope: !283)
!352 = !DILocation(line: 170, column: 14, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !3, line: 169, column: 32)
!354 = !DILocation(line: 171, column: 3, scope: !353)
!355 = !DILocation(line: 174, column: 13, scope: !356)
!356 = distinct !DILexicalBlock(scope: !350, file: !3, line: 174, column: 12)
!357 = !DILocation(line: 175, column: 12, scope: !356)
!358 = !DILocation(line: 175, column: 16, scope: !356)
!359 = !DILocation(line: 174, column: 12, scope: !350)
!360 = !DILocation(line: 176, column: 14, scope: !361)
!361 = distinct !DILexicalBlock(scope: !356, file: !3, line: 175, column: 51)
!362 = !DILocation(line: 177, column: 3, scope: !361)
!363 = !DILocation(line: 177, column: 15, scope: !364)
!364 = distinct !DILexicalBlock(scope: !356, file: !3, line: 177, column: 14)
!365 = !DILocation(line: 178, column: 14, scope: !364)
!366 = !DILocation(line: 178, column: 18, scope: !364)
!367 = !DILocation(line: 177, column: 14, scope: !356)
!368 = !DILocation(line: 180, column: 14, scope: !369)
!369 = distinct !DILexicalBlock(scope: !364, file: !3, line: 179, column: 7)
!370 = !DILocation(line: 183, column: 3, scope: !369)
!371 = !DILocation(line: 184, column: 5, scope: !364)
!372 = !DILocation(line: 187, column: 11, scope: !283)
!373 = !DILocation(line: 187, column: 9, scope: !283)
!374 = !DILocation(line: 188, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !283, file: !3, line: 188, column: 7)
!376 = !DILocation(line: 188, column: 7, scope: !283)
!377 = !DILocation(line: 189, column: 5, scope: !375)
!378 = !DILocation(line: 193, column: 19, scope: !283)
!379 = !DILocation(line: 193, column: 17, scope: !283)
!380 = !DILocation(line: 194, column: 8, scope: !381)
!381 = distinct !DILexicalBlock(scope: !283, file: !3, line: 194, column: 7)
!382 = !DILocation(line: 194, column: 7, scope: !283)
!383 = !DILocation(line: 195, column: 5, scope: !381)
!384 = !DILocation(line: 198, column: 3, scope: !283)
!385 = !DILocation(line: 198, column: 14, scope: !283)
!386 = !DILocation(line: 199, column: 3, scope: !283)
!387 = !DILocation(line: 199, column: 9, scope: !283)
!388 = !DILocation(line: 199, column: 13, scope: !283)
!389 = !DILocation(line: 199, column: 11, scope: !283)
!390 = !DILocation(line: 200, column: 18, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !3, line: 200, column: 9)
!392 = distinct !DILexicalBlock(scope: !283, file: !3, line: 199, column: 19)
!393 = !DILocation(line: 200, column: 30, scope: !391)
!394 = !DILocation(line: 200, column: 28, scope: !391)
!395 = !DILocation(line: 200, column: 9, scope: !391)
!396 = !DILocation(line: 200, column: 9, scope: !392)
!397 = !DILocation(line: 201, column: 16, scope: !398)
!398 = distinct !DILexicalBlock(scope: !391, file: !3, line: 200, column: 45)
!399 = !DILocation(line: 202, column: 5, scope: !398)
!400 = !DILocation(line: 202, column: 25, scope: !401)
!401 = distinct !DILexicalBlock(scope: !391, file: !3, line: 202, column: 16)
!402 = !DILocation(line: 202, column: 37, scope: !401)
!403 = !DILocation(line: 202, column: 35, scope: !401)
!404 = !DILocation(line: 202, column: 16, scope: !401)
!405 = !DILocation(line: 202, column: 16, scope: !391)
!406 = !DILocation(line: 203, column: 17, scope: !407)
!407 = distinct !DILexicalBlock(scope: !401, file: !3, line: 202, column: 49)
!408 = !DILocation(line: 204, column: 5, scope: !407)
!409 = !DILocation(line: 204, column: 25, scope: !410)
!410 = distinct !DILexicalBlock(scope: !401, file: !3, line: 204, column: 16)
!411 = !DILocation(line: 204, column: 37, scope: !410)
!412 = !DILocation(line: 204, column: 35, scope: !410)
!413 = !DILocation(line: 204, column: 16, scope: !410)
!414 = !DILocation(line: 204, column: 16, scope: !401)
!415 = !DILocation(line: 205, column: 12, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 205, column: 11)
!417 = distinct !DILexicalBlock(scope: !410, file: !3, line: 204, column: 53)
!418 = !DILocation(line: 205, column: 11, scope: !417)
!419 = !DILocation(line: 206, column: 18, scope: !416)
!420 = !DILocation(line: 206, column: 9, scope: !416)
!421 = !DILocation(line: 207, column: 5, scope: !417)
!422 = !DILocation(line: 207, column: 25, scope: !423)
!423 = distinct !DILexicalBlock(scope: !410, file: !3, line: 207, column: 16)
!424 = !DILocation(line: 207, column: 37, scope: !423)
!425 = !DILocation(line: 207, column: 35, scope: !423)
!426 = !DILocation(line: 207, column: 16, scope: !423)
!427 = !DILocation(line: 207, column: 16, scope: !410)
!428 = !DILocation(line: 208, column: 17, scope: !429)
!429 = distinct !DILexicalBlock(scope: !423, file: !3, line: 207, column: 48)
!430 = !DILocation(line: 209, column: 5, scope: !429)
!431 = !DILocation(line: 209, column: 16, scope: !432)
!432 = distinct !DILexicalBlock(scope: !423, file: !3, line: 209, column: 16)
!433 = !DILocation(line: 209, column: 26, scope: !432)
!434 = !DILocation(line: 209, column: 29, scope: !432)
!435 = !DILocation(line: 209, column: 16, scope: !423)
!436 = !DILocation(line: 210, column: 12, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 210, column: 11)
!438 = distinct !DILexicalBlock(scope: !432, file: !3, line: 209, column: 37)
!439 = !DILocation(line: 210, column: 11, scope: !438)
!440 = !DILocation(line: 211, column: 15, scope: !437)
!441 = !DILocation(line: 211, column: 9, scope: !437)
!442 = !DILocation(line: 212, column: 5, scope: !438)
!443 = !DILocation(line: 212, column: 16, scope: !444)
!444 = distinct !DILexicalBlock(scope: !432, file: !3, line: 212, column: 16)
!445 = !DILocation(line: 212, column: 26, scope: !444)
!446 = !DILocation(line: 212, column: 29, scope: !444)
!447 = !DILocation(line: 212, column: 16, scope: !432)
!448 = !DILocation(line: 213, column: 13, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !3, line: 212, column: 37)
!450 = !DILocation(line: 214, column: 5, scope: !449)
!451 = !DILocation(line: 216, column: 13, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !3, line: 216, column: 11)
!453 = distinct !DILexicalBlock(scope: !444, file: !3, line: 214, column: 12)
!454 = !DILocation(line: 216, column: 23, scope: !452)
!455 = !DILocation(line: 216, column: 28, scope: !452)
!456 = !DILocation(line: 216, column: 39, scope: !452)
!457 = !DILocation(line: 216, column: 44, scope: !452)
!458 = !DILocation(line: 216, column: 11, scope: !453)
!459 = !DILocalVariable(name: "cchar", scope: !460, file: !3, line: 217, type: !9)
!460 = distinct !DILexicalBlock(scope: !452, file: !3, line: 216, column: 52)
!461 = !DILocation(line: 217, column: 14, scope: !460)
!462 = !DILocation(line: 217, column: 22, scope: !460)
!463 = !DILocation(line: 217, column: 32, scope: !460)
!464 = !DILocalVariable(name: "pos", scope: !460, file: !3, line: 218, type: !11)
!465 = !DILocation(line: 218, column: 13, scope: !460)
!466 = !DILocalVariable(name: "len", scope: !460, file: !3, line: 219, type: !11)
!467 = !DILocation(line: 219, column: 13, scope: !460)
!468 = !DILocation(line: 219, column: 32, scope: !460)
!469 = !DILocation(line: 219, column: 25, scope: !460)
!470 = !DILocation(line: 219, column: 19, scope: !460)
!471 = !DILocation(line: 222, column: 49, scope: !472)
!472 = distinct !DILexicalBlock(scope: !460, file: !3, line: 222, column: 13)
!473 = !DILocation(line: 222, column: 20, scope: !472)
!474 = !DILocation(line: 222, column: 18, scope: !472)
!475 = !DILocation(line: 222, column: 57, scope: !472)
!476 = !DILocation(line: 222, column: 13, scope: !460)
!477 = !DILocation(line: 223, column: 37, scope: !472)
!478 = !DILocation(line: 223, column: 19, scope: !472)
!479 = !DILocation(line: 223, column: 17, scope: !472)
!480 = !DILocation(line: 223, column: 11, scope: !472)
!481 = !DILocation(line: 225, column: 33, scope: !482)
!482 = distinct !DILexicalBlock(scope: !460, file: !3, line: 225, column: 13)
!483 = !DILocation(line: 225, column: 13, scope: !482)
!484 = !DILocation(line: 225, column: 13, scope: !460)
!485 = !DILocation(line: 227, column: 16, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 227, column: 15)
!487 = distinct !DILexicalBlock(scope: !482, file: !3, line: 225, column: 41)
!488 = !DILocation(line: 227, column: 20, scope: !486)
!489 = !DILocation(line: 227, column: 25, scope: !486)
!490 = !DILocation(line: 227, column: 54, scope: !486)
!491 = !DILocation(line: 227, column: 30, scope: !486)
!492 = !DILocation(line: 227, column: 15, scope: !487)
!493 = !DILocation(line: 228, column: 30, scope: !494)
!494 = distinct !DILexicalBlock(scope: !486, file: !3, line: 227, column: 63)
!495 = !DILocation(line: 228, column: 24, scope: !494)
!496 = !DILocation(line: 228, column: 13, scope: !494)
!497 = !DILocation(line: 228, column: 28, scope: !494)
!498 = !DILocation(line: 229, column: 21, scope: !494)
!499 = !DILocation(line: 229, column: 13, scope: !494)
!500 = !DILocation(line: 229, column: 26, scope: !494)
!501 = !DILocation(line: 230, column: 11, scope: !494)
!502 = !DILocation(line: 231, column: 9, scope: !487)
!503 = !DILocation(line: 231, column: 40, scope: !504)
!504 = distinct !DILexicalBlock(scope: !482, file: !3, line: 231, column: 20)
!505 = !DILocation(line: 231, column: 21, scope: !504)
!506 = !DILocation(line: 231, column: 48, scope: !504)
!507 = !DILocation(line: 231, column: 53, scope: !504)
!508 = !DILocation(line: 231, column: 20, scope: !482)
!509 = !DILocation(line: 234, column: 15, scope: !510)
!510 = distinct !DILexicalBlock(scope: !511, file: !3, line: 234, column: 15)
!511 = distinct !DILexicalBlock(scope: !504, file: !3, line: 231, column: 61)
!512 = !DILocation(line: 234, column: 19, scope: !510)
!513 = !DILocation(line: 234, column: 15, scope: !511)
!514 = !DILocation(line: 235, column: 38, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !3, line: 235, column: 17)
!516 = distinct !DILexicalBlock(scope: !510, file: !3, line: 234, column: 24)
!517 = !DILocation(line: 235, column: 17, scope: !515)
!518 = !DILocation(line: 235, column: 17, scope: !516)
!519 = !DILocation(line: 236, column: 28, scope: !520)
!520 = distinct !DILexicalBlock(scope: !515, file: !3, line: 235, column: 51)
!521 = !DILocation(line: 236, column: 15, scope: !520)
!522 = !DILocation(line: 236, column: 34, scope: !520)
!523 = !DILocation(line: 237, column: 13, scope: !520)
!524 = !DILocation(line: 238, column: 11, scope: !516)
!525 = !DILocalVariable(name: "ok", scope: !526, file: !3, line: 242, type: !11)
!526 = distinct !DILexicalBlock(scope: !511, file: !3, line: 241, column: 11)
!527 = !DILocation(line: 242, column: 17, scope: !526)
!528 = !DILocation(line: 244, column: 13, scope: !526)
!529 = !DILocation(line: 244, column: 39, scope: !526)
!530 = !DILocation(line: 244, column: 32, scope: !526)
!531 = !DILocation(line: 244, column: 26, scope: !526)
!532 = !DILocation(line: 244, column: 24, scope: !526)
!533 = !DILocation(line: 244, column: 49, scope: !526)
!534 = !DILocation(line: 244, column: 54, scope: !526)
!535 = !DILocation(line: 244, column: 53, scope: !526)
!536 = !DILocation(line: 0, scope: !526)
!537 = !DILocation(line: 245, column: 50, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !3, line: 245, column: 19)
!539 = distinct !DILexicalBlock(scope: !526, file: !3, line: 244, column: 59)
!540 = !DILocation(line: 245, column: 54, scope: !538)
!541 = !DILocation(line: 245, column: 42, scope: !538)
!542 = !DILocation(line: 245, column: 19, scope: !538)
!543 = !DILocation(line: 245, column: 19, scope: !539)
!544 = !DILocation(line: 246, column: 25, scope: !545)
!545 = distinct !DILexicalBlock(scope: !538, file: !3, line: 245, column: 61)
!546 = !DILocation(line: 246, column: 29, scope: !545)
!547 = !DILocation(line: 246, column: 17, scope: !545)
!548 = !DILocation(line: 246, column: 34, scope: !545)
!549 = !DILocation(line: 247, column: 15, scope: !545)
!550 = !DILocation(line: 248, column: 20, scope: !538)
!551 = distinct !{!551, !528, !552, !553}
!552 = !DILocation(line: 249, column: 13, scope: !526)
!553 = !{!"llvm.loop.mustprogress"}
!554 = !DILocation(line: 253, column: 15, scope: !555)
!555 = distinct !DILexicalBlock(scope: !511, file: !3, line: 253, column: 15)
!556 = !DILocation(line: 253, column: 19, scope: !555)
!557 = !DILocation(line: 253, column: 15, scope: !511)
!558 = !DILocation(line: 254, column: 32, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !3, line: 253, column: 36)
!560 = !DILocation(line: 255, column: 28, scope: !561)
!561 = distinct !DILexicalBlock(scope: !559, file: !3, line: 255, column: 17)
!562 = !DILocation(line: 255, column: 43, scope: !561)
!563 = !DILocation(line: 255, column: 17, scope: !561)
!564 = !DILocation(line: 255, column: 17, scope: !559)
!565 = !DILocation(line: 256, column: 23, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !3, line: 255, column: 53)
!567 = !DILocation(line: 256, column: 38, scope: !566)
!568 = !DILocation(line: 256, column: 15, scope: !566)
!569 = !DILocation(line: 257, column: 13, scope: !566)
!570 = !DILocation(line: 258, column: 11, scope: !559)
!571 = !DILocation(line: 259, column: 24, scope: !511)
!572 = !DILocation(line: 259, column: 11, scope: !511)
!573 = !DILocation(line: 259, column: 30, scope: !511)
!574 = !DILocation(line: 260, column: 9, scope: !511)
!575 = !DILocation(line: 261, column: 24, scope: !504)
!576 = !DILocation(line: 261, column: 11, scope: !504)
!577 = !DILocation(line: 261, column: 30, scope: !504)
!578 = !DILocation(line: 263, column: 13, scope: !579)
!579 = distinct !DILexicalBlock(scope: !460, file: !3, line: 263, column: 13)
!580 = !DILocation(line: 263, column: 17, scope: !579)
!581 = !DILocation(line: 263, column: 13, scope: !460)
!582 = !DILocation(line: 264, column: 24, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !3, line: 263, column: 29)
!584 = !DILocation(line: 264, column: 11, scope: !583)
!585 = !DILocation(line: 264, column: 30, scope: !583)
!586 = !DILocation(line: 265, column: 9, scope: !583)
!587 = !DILocation(line: 266, column: 7, scope: !460)
!588 = !DILocation(line: 270, column: 6, scope: !392)
!589 = distinct !{!589, !386, !590, !553}
!590 = !DILocation(line: 271, column: 3, scope: !283)
!591 = !DILocation(line: 274, column: 9, scope: !283)
!592 = !DILocation(line: 274, column: 3, scope: !283)
!593 = !DILocation(line: 280, column: 9, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !3, line: 280, column: 9)
!595 = distinct !DILexicalBlock(scope: !283, file: !3, line: 277, column: 3)
!596 = !DILocation(line: 280, column: 9, scope: !595)
!597 = !DILocation(line: 281, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !594, file: !3, line: 280, column: 24)
!599 = !DILocation(line: 281, column: 19, scope: !598)
!600 = !DILocation(line: 281, column: 14, scope: !598)
!601 = !DILocation(line: 281, column: 13, scope: !598)
!602 = !DILocalVariable(name: "line", scope: !603, file: !3, line: 282, type: !309)
!603 = distinct !DILexicalBlock(scope: !598, file: !3, line: 281, column: 27)
!604 = !DILocation(line: 282, column: 14, scope: !603)
!605 = !DILocation(line: 284, column: 16, scope: !603)
!606 = !DILocation(line: 284, column: 23, scope: !603)
!607 = !DILocation(line: 284, column: 9, scope: !603)
!608 = !DILocation(line: 285, column: 13, scope: !609)
!609 = distinct !DILexicalBlock(scope: !603, file: !3, line: 285, column: 13)
!610 = !DILocation(line: 285, column: 13, scope: !603)
!611 = !DILocalVariable(name: "e", scope: !612, file: !3, line: 286, type: !613)
!612 = distinct !DILexicalBlock(scope: !609, file: !3, line: 285, column: 32)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !614, line: 87, baseType: !55)
!614 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!615 = !DILocation(line: 286, column: 20, scope: !612)
!616 = !DILocation(line: 288, column: 27, scope: !617)
!617 = distinct !DILexicalBlock(scope: !612, file: !3, line: 288, column: 15)
!618 = !DILocation(line: 288, column: 42, scope: !617)
!619 = !DILocation(line: 288, column: 15, scope: !617)
!620 = !DILocation(line: 288, column: 15, scope: !612)
!621 = !DILocalVariable(name: "savelst", scope: !622, file: !3, line: 290, type: !623)
!622 = distinct !DILexicalBlock(scope: !617, file: !3, line: 288, column: 53)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 16384, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 2048)
!626 = !DILocation(line: 290, column: 25, scope: !622)
!627 = !DILocation(line: 292, column: 14, scope: !622)
!628 = !DILocation(line: 294, column: 40, scope: !629)
!629 = distinct !DILexicalBlock(scope: !622, file: !3, line: 294, column: 17)
!630 = !DILocation(line: 294, column: 100, scope: !629)
!631 = !DILocation(line: 294, column: 117, scope: !629)
!632 = !DILocation(line: 294, column: 110, scope: !629)
!633 = !DILocation(line: 294, column: 17, scope: !629)
!634 = !DILocation(line: 294, column: 129, scope: !629)
!635 = !DILocation(line: 294, column: 17, scope: !622)
!636 = !DILocation(line: 295, column: 15, scope: !629)
!637 = !DILocation(line: 297, column: 15, scope: !629)
!638 = !DILocation(line: 300, column: 21, scope: !622)
!639 = !DILocation(line: 300, column: 50, scope: !622)
!640 = !DILocation(line: 301, column: 49, scope: !622)
!641 = !DILocation(line: 301, column: 47, scope: !622)
!642 = !DILocation(line: 301, column: 21, scope: !622)
!643 = !DILocation(line: 301, column: 53, scope: !622)
!644 = !DILocation(line: 300, column: 13, scope: !622)
!645 = !DILocation(line: 302, column: 31, scope: !622)
!646 = !DILocation(line: 304, column: 11, scope: !622)
!647 = !DILocation(line: 305, column: 9, scope: !612)
!648 = distinct !{!648, !597, !649, !553}
!649 = !DILocation(line: 306, column: 7, scope: !598)
!650 = !DILocation(line: 308, column: 5, scope: !598)
!651 = !DILocation(line: 312, column: 10, scope: !283)
!652 = !DILocation(line: 312, column: 3, scope: !283)
!653 = !DILocation(line: 313, column: 9, scope: !283)
!654 = !DILocation(line: 316, column: 3, scope: !283)
!655 = !DILocation(line: 318, column: 3, scope: !283)
!656 = !DILocation(line: 319, column: 1, scope: !283)
!657 = distinct !DISubprogram(name: "strfield", scope: !658, file: !658, line: 431, type: !659, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !274)
!658 = !DIFile(filename: "./src/htslib.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "b8775ab5fd3d72ae1f56a38e4cc386f9")
!659 = !DISubroutineType(types: !660)
!660 = !{!11, !12, !12}
!661 = !DILocalVariable(name: "f", arg: 1, scope: !657, file: !658, line: 431, type: !12)
!662 = !DILocation(line: 431, column: 37, scope: !657)
!663 = !DILocalVariable(name: "s", arg: 2, scope: !657, file: !658, line: 431, type: !12)
!664 = !DILocation(line: 431, column: 52, scope: !657)
!665 = !DILocalVariable(name: "r", scope: !657, file: !658, line: 432, type: !11)
!666 = !DILocation(line: 432, column: 7, scope: !657)
!667 = !DILocation(line: 434, column: 3, scope: !657)
!668 = !DILocation(line: 434, column: 9, scope: !657)
!669 = !DILocation(line: 434, column: 24, scope: !657)
!670 = !DILocation(line: 434, column: 30, scope: !657)
!671 = !DILocation(line: 434, column: 29, scope: !657)
!672 = !DILocation(line: 434, column: 28, scope: !657)
!673 = !DILocation(line: 434, column: 33, scope: !657)
!674 = !DILocation(line: 434, column: 39, scope: !657)
!675 = !DILocation(line: 434, column: 45, scope: !657)
!676 = !DILocation(line: 434, column: 44, scope: !657)
!677 = !DILocation(line: 434, column: 43, scope: !657)
!678 = !DILocation(line: 434, column: 48, scope: !657)
!679 = !DILocation(line: 0, scope: !657)
!680 = !DILocation(line: 435, column: 6, scope: !681)
!681 = distinct !DILexicalBlock(scope: !657, file: !658, line: 434, column: 55)
!682 = !DILocation(line: 436, column: 6, scope: !681)
!683 = !DILocation(line: 437, column: 6, scope: !681)
!684 = distinct !{!684, !667, !685, !553}
!685 = !DILocation(line: 438, column: 3, scope: !657)
!686 = !DILocation(line: 439, column: 8, scope: !687)
!687 = distinct !DILexicalBlock(scope: !657, file: !658, line: 439, column: 7)
!688 = !DILocation(line: 439, column: 7, scope: !687)
!689 = !DILocation(line: 439, column: 10, scope: !687)
!690 = !DILocation(line: 439, column: 7, scope: !657)
!691 = !DILocation(line: 440, column: 12, scope: !687)
!692 = !DILocation(line: 440, column: 5, scope: !687)
!693 = !DILocation(line: 442, column: 5, scope: !687)
!694 = !DILocation(line: 443, column: 1, scope: !657)
!695 = distinct !DISubprogram(name: "strcpos", scope: !3, file: !3, line: 471, type: !696, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !274)
!696 = !DISubroutineType(types: !697)
!697 = !{!11, !12, !9}
!698 = !DILocalVariable(name: "adr", arg: 1, scope: !695, file: !3, line: 471, type: !12)
!699 = !DILocation(line: 471, column: 25, scope: !695)
!700 = !DILocalVariable(name: "c", arg: 2, scope: !695, file: !3, line: 471, type: !9)
!701 = !DILocation(line: 471, column: 35, scope: !695)
!702 = !DILocalVariable(name: "apos", scope: !695, file: !3, line: 472, type: !12)
!703 = !DILocation(line: 472, column: 15, scope: !695)
!704 = !DILocation(line: 472, column: 29, scope: !695)
!705 = !DILocation(line: 472, column: 34, scope: !695)
!706 = !DILocation(line: 472, column: 22, scope: !695)
!707 = !DILocation(line: 474, column: 7, scope: !708)
!708 = distinct !DILexicalBlock(scope: !695, file: !3, line: 474, column: 7)
!709 = !DILocation(line: 474, column: 7, scope: !695)
!710 = !DILocation(line: 475, column: 19, scope: !708)
!711 = !DILocation(line: 475, column: 26, scope: !708)
!712 = !DILocation(line: 475, column: 24, scope: !708)
!713 = !DILocation(line: 475, column: 12, scope: !708)
!714 = !DILocation(line: 475, column: 5, scope: !708)
!715 = !DILocation(line: 477, column: 5, scope: !708)
!716 = !DILocation(line: 478, column: 1, scope: !695)
!717 = distinct !DISubprogram(name: "strcpy_safe_", scope: !250, file: !250, line: 212, type: !718, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !274)
!718 = !DISubroutineType(types: !719)
!719 = !{!8, !720, !721, !21, !721, !12, !12, !11}
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!722 = !DILocalVariable(name: "dest", arg: 1, scope: !717, file: !250, line: 212, type: !720)
!723 = !DILocation(line: 212, column: 61, scope: !717)
!724 = !DILocalVariable(name: "sizeof_dest", arg: 2, scope: !717, file: !250, line: 212, type: !721)
!725 = !DILocation(line: 212, column: 80, scope: !717)
!726 = !DILocalVariable(name: "source", arg: 3, scope: !717, file: !250, line: 213, type: !21)
!727 = !DILocation(line: 213, column: 67, scope: !717)
!728 = !DILocalVariable(name: "sizeof_source", arg: 4, scope: !717, file: !250, line: 213, type: !721)
!729 = !DILocation(line: 213, column: 88, scope: !717)
!730 = !DILocalVariable(name: "exp", arg: 5, scope: !717, file: !250, line: 214, type: !12)
!731 = !DILocation(line: 214, column: 61, scope: !717)
!732 = !DILocalVariable(name: "file", arg: 6, scope: !717, file: !250, line: 214, type: !12)
!733 = !DILocation(line: 214, column: 78, scope: !717)
!734 = !DILocalVariable(name: "line", arg: 7, scope: !717, file: !250, line: 214, type: !11)
!735 = !DILocation(line: 214, column: 88, scope: !717)
!736 = !DILocation(line: 215, column: 3, scope: !717)
!737 = !DILocation(line: 216, column: 3, scope: !717)
!738 = !DILocation(line: 216, column: 11, scope: !717)
!739 = !DILocation(line: 217, column: 24, scope: !717)
!740 = !DILocation(line: 217, column: 30, scope: !717)
!741 = !DILocation(line: 217, column: 43, scope: !717)
!742 = !DILocation(line: 217, column: 51, scope: !717)
!743 = !DILocation(line: 217, column: 79, scope: !717)
!744 = !DILocation(line: 217, column: 84, scope: !717)
!745 = !DILocation(line: 217, column: 90, scope: !717)
!746 = !DILocation(line: 217, column: 10, scope: !717)
!747 = !DILocation(line: 217, column: 3, scope: !717)
!748 = distinct !DISubprogram(name: "index_finish", scope: !3, file: !3, line: 325, type: !749, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !274)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !12, !11}
!751 = !DILocalVariable(name: "indexpath", arg: 1, scope: !748, file: !3, line: 325, type: !12)
!752 = !DILocation(line: 325, column: 31, scope: !748)
!753 = !DILocalVariable(name: "mode", arg: 2, scope: !748, file: !3, line: 325, type: !11)
!754 = !DILocation(line: 325, column: 46, scope: !748)
!755 = !DILocalVariable(name: "catbuff", scope: !748, file: !3, line: 327, type: !298)
!756 = !DILocation(line: 327, column: 8, scope: !748)
!757 = !DILocalVariable(name: "tab", scope: !748, file: !3, line: 328, type: !17)
!758 = !DILocation(line: 328, column: 10, scope: !748)
!759 = !DILocalVariable(name: "blk", scope: !748, file: !3, line: 329, type: !8)
!760 = !DILocation(line: 329, column: 9, scope: !748)
!761 = !DILocalVariable(name: "size", scope: !748, file: !3, line: 330, type: !762)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !763, line: 63, baseType: !53)
!763 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!764 = !DILocation(line: 330, column: 9, scope: !748)
!765 = !DILocation(line: 330, column: 23, scope: !748)
!766 = !DILocation(line: 330, column: 16, scope: !748)
!767 = !DILocation(line: 332, column: 7, scope: !768)
!768 = distinct !DILexicalBlock(scope: !748, file: !3, line: 332, column: 7)
!769 = !DILocation(line: 332, column: 12, scope: !768)
!770 = !DILocation(line: 332, column: 7, scope: !748)
!771 = !DILocation(line: 334, column: 9, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 334, column: 9)
!773 = distinct !DILexicalBlock(scope: !768, file: !3, line: 332, column: 17)
!774 = !DILocation(line: 334, column: 9, scope: !773)
!775 = !DILocation(line: 335, column: 23, scope: !776)
!776 = distinct !DILexicalBlock(scope: !772, file: !3, line: 334, column: 24)
!777 = !DILocation(line: 335, column: 11, scope: !776)
!778 = !DILocation(line: 336, column: 11, scope: !779)
!779 = distinct !DILexicalBlock(scope: !776, file: !3, line: 336, column: 11)
!780 = !DILocation(line: 336, column: 11, scope: !776)
!781 = !DILocation(line: 337, column: 15, scope: !782)
!782 = distinct !DILexicalBlock(scope: !779, file: !3, line: 336, column: 16)
!783 = !DILocation(line: 337, column: 13, scope: !782)
!784 = !DILocation(line: 338, column: 13, scope: !785)
!785 = distinct !DILexicalBlock(scope: !782, file: !3, line: 338, column: 13)
!786 = !DILocation(line: 338, column: 13, scope: !782)
!787 = !DILocation(line: 339, column: 17, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !3, line: 338, column: 18)
!789 = !DILocation(line: 339, column: 11, scope: !788)
!790 = !DILocation(line: 340, column: 30, scope: !791)
!791 = distinct !DILexicalBlock(scope: !788, file: !3, line: 340, column: 15)
!792 = !DILocation(line: 340, column: 38, scope: !791)
!793 = !DILocation(line: 340, column: 44, scope: !791)
!794 = !DILocation(line: 340, column: 24, scope: !791)
!795 = !DILocation(line: 340, column: 15, scope: !791)
!796 = !DILocation(line: 340, column: 62, scope: !791)
!797 = !DILocation(line: 340, column: 59, scope: !791)
!798 = !DILocation(line: 340, column: 15, scope: !788)
!799 = !DILocalVariable(name: "a", scope: !800, file: !3, line: 341, type: !8)
!800 = distinct !DILexicalBlock(scope: !791, file: !3, line: 340, column: 68)
!801 = !DILocation(line: 341, column: 19, scope: !800)
!802 = !DILocation(line: 341, column: 23, scope: !800)
!803 = !DILocalVariable(name: "b", scope: !800, file: !3, line: 341, type: !8)
!804 = !DILocation(line: 341, column: 29, scope: !800)
!805 = !DILocalVariable(name: "index", scope: !800, file: !3, line: 342, type: !11)
!806 = !DILocation(line: 342, column: 17, scope: !800)
!807 = !DILocalVariable(name: "i", scope: !800, file: !3, line: 343, type: !11)
!808 = !DILocation(line: 343, column: 17, scope: !800)
!809 = !DILocalVariable(name: "fp", scope: !800, file: !3, line: 344, type: !27)
!810 = !DILocation(line: 344, column: 19, scope: !800)
!811 = !DILocation(line: 346, column: 13, scope: !800)
!812 = !DILocation(line: 346, column: 31, scope: !800)
!813 = !DILocation(line: 346, column: 24, scope: !800)
!814 = !DILocation(line: 346, column: 22, scope: !800)
!815 = !DILocation(line: 346, column: 41, scope: !800)
!816 = !DILocation(line: 346, column: 45, scope: !800)
!817 = !DILocation(line: 346, column: 53, scope: !800)
!818 = !DILocation(line: 346, column: 51, scope: !800)
!819 = !DILocation(line: 0, scope: !800)
!820 = !DILocation(line: 347, column: 30, scope: !821)
!821 = distinct !DILexicalBlock(scope: !800, file: !3, line: 346, column: 74)
!822 = !DILocation(line: 347, column: 15, scope: !821)
!823 = !DILocation(line: 347, column: 24, scope: !821)
!824 = !DILocation(line: 347, column: 28, scope: !821)
!825 = !DILocation(line: 348, column: 16, scope: !821)
!826 = !DILocation(line: 348, column: 18, scope: !821)
!827 = !DILocation(line: 349, column: 19, scope: !821)
!828 = !DILocation(line: 349, column: 21, scope: !821)
!829 = !DILocation(line: 349, column: 17, scope: !821)
!830 = distinct !{!830, !811, !831, !553}
!831 = !DILocation(line: 350, column: 13, scope: !800)
!832 = !DILocation(line: 353, column: 19, scope: !800)
!833 = !DILocation(line: 353, column: 24, scope: !800)
!834 = !DILocation(line: 353, column: 13, scope: !800)
!835 = !DILocation(line: 356, column: 20, scope: !800)
!836 = !DILocation(line: 356, column: 13, scope: !800)
!837 = !DILocation(line: 357, column: 27, scope: !800)
!838 = !DILocation(line: 360, column: 17, scope: !839)
!839 = distinct !DILexicalBlock(scope: !800, file: !3, line: 360, column: 17)
!840 = !DILocation(line: 360, column: 22, scope: !839)
!841 = !DILocation(line: 360, column: 17, scope: !800)
!842 = !DILocation(line: 361, column: 26, scope: !839)
!843 = !DILocation(line: 361, column: 20, scope: !839)
!844 = !DILocation(line: 361, column: 18, scope: !839)
!845 = !DILocation(line: 361, column: 15, scope: !839)
!846 = !DILocation(line: 363, column: 26, scope: !839)
!847 = !DILocation(line: 363, column: 20, scope: !839)
!848 = !DILocation(line: 363, column: 18, scope: !839)
!849 = !DILocation(line: 364, column: 17, scope: !850)
!850 = distinct !DILexicalBlock(scope: !800, file: !3, line: 364, column: 17)
!851 = !DILocation(line: 364, column: 17, scope: !800)
!852 = !DILocalVariable(name: "current_word", scope: !853, file: !3, line: 365, type: !309)
!853 = distinct !DILexicalBlock(scope: !850, file: !3, line: 364, column: 21)
!854 = !DILocation(line: 365, column: 20, scope: !853)
!855 = !DILocalVariable(name: "word", scope: !853, file: !3, line: 366, type: !309)
!856 = !DILocation(line: 366, column: 20, scope: !853)
!857 = !DILocalVariable(name: "hit", scope: !853, file: !3, line: 367, type: !11)
!858 = !DILocation(line: 367, column: 19, scope: !853)
!859 = !DILocalVariable(name: "total_hit", scope: !853, file: !3, line: 368, type: !11)
!860 = !DILocation(line: 368, column: 19, scope: !853)
!861 = !DILocalVariable(name: "total_line", scope: !853, file: !3, line: 369, type: !11)
!862 = !DILocation(line: 369, column: 19, scope: !853)
!863 = !DILocalVariable(name: "last_pos", scope: !853, file: !3, line: 370, type: !11)
!864 = !DILocation(line: 370, column: 19, scope: !853)
!865 = !DILocalVariable(name: "word0", scope: !853, file: !3, line: 371, type: !9)
!866 = !DILocation(line: 371, column: 20, scope: !853)
!867 = !DILocation(line: 373, column: 15, scope: !853)
!868 = !DILocation(line: 373, column: 31, scope: !853)
!869 = !DILocation(line: 375, column: 19, scope: !870)
!870 = distinct !DILexicalBlock(scope: !853, file: !3, line: 375, column: 19)
!871 = !DILocation(line: 375, column: 24, scope: !870)
!872 = !DILocation(line: 375, column: 19, scope: !853)
!873 = !DILocation(line: 376, column: 23, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 376, column: 17)
!875 = distinct !DILexicalBlock(scope: !870, file: !3, line: 375, column: 30)
!876 = !DILocation(line: 376, column: 21, scope: !874)
!877 = !DILocation(line: 376, column: 28, scope: !878)
!878 = distinct !DILexicalBlock(scope: !874, file: !3, line: 376, column: 17)
!879 = !DILocation(line: 376, column: 32, scope: !878)
!880 = !DILocation(line: 376, column: 30, scope: !878)
!881 = !DILocation(line: 376, column: 17, scope: !874)
!882 = !DILocation(line: 377, column: 23, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !3, line: 377, column: 23)
!884 = distinct !DILexicalBlock(scope: !878, file: !3, line: 376, column: 44)
!885 = !DILocation(line: 377, column: 32, scope: !883)
!886 = !DILocation(line: 377, column: 36, scope: !883)
!887 = !DILocation(line: 377, column: 29, scope: !883)
!888 = !DILocation(line: 377, column: 23, scope: !884)
!889 = !DILocation(line: 378, column: 29, scope: !890)
!890 = distinct !DILexicalBlock(scope: !883, file: !3, line: 377, column: 43)
!891 = !DILocation(line: 378, column: 33, scope: !890)
!892 = !DILocation(line: 378, column: 27, scope: !890)
!893 = !DILocation(line: 379, column: 29, scope: !890)
!894 = !DILocation(line: 379, column: 64, scope: !890)
!895 = !DILocation(line: 379, column: 71, scope: !890)
!896 = !DILocation(line: 379, column: 21, scope: !890)
!897 = !DILocation(line: 380, column: 19, scope: !890)
!898 = !DILocation(line: 381, column: 17, scope: !884)
!899 = !DILocation(line: 376, column: 40, scope: !878)
!900 = !DILocation(line: 376, column: 17, scope: !878)
!901 = distinct !{!901, !881, !902, !553}
!902 = !DILocation(line: 381, column: 17, scope: !874)
!903 = !DILocation(line: 382, column: 23, scope: !875)
!904 = !DILocation(line: 383, column: 25, scope: !875)
!905 = !DILocation(line: 383, column: 17, scope: !875)
!906 = !DILocation(line: 384, column: 25, scope: !875)
!907 = !DILocation(line: 384, column: 17, scope: !875)
!908 = !DILocation(line: 386, column: 15, scope: !875)
!909 = !DILocation(line: 388, column: 21, scope: !910)
!910 = distinct !DILexicalBlock(scope: !853, file: !3, line: 388, column: 15)
!911 = !DILocation(line: 388, column: 19, scope: !910)
!912 = !DILocation(line: 388, column: 26, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !3, line: 388, column: 15)
!914 = !DILocation(line: 388, column: 30, scope: !913)
!915 = !DILocation(line: 388, column: 28, scope: !913)
!916 = !DILocation(line: 388, column: 15, scope: !910)
!917 = !DILocation(line: 389, column: 28, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 389, column: 21)
!919 = distinct !DILexicalBlock(scope: !913, file: !3, line: 388, column: 42)
!920 = !DILocation(line: 389, column: 32, scope: !918)
!921 = !DILocation(line: 389, column: 45, scope: !918)
!922 = !DILocation(line: 389, column: 21, scope: !918)
!923 = !DILocation(line: 389, column: 57, scope: !918)
!924 = !DILocation(line: 389, column: 21, scope: !919)
!925 = !DILocalVariable(name: "a", scope: !926, file: !3, line: 390, type: !8)
!926 = distinct !DILexicalBlock(scope: !918, file: !3, line: 389, column: 63)
!927 = !DILocation(line: 390, column: 25, scope: !926)
!928 = !DILocation(line: 390, column: 36, scope: !926)
!929 = !DILocation(line: 390, column: 40, scope: !926)
!930 = !DILocation(line: 390, column: 29, scope: !926)
!931 = !DILocation(line: 392, column: 23, scope: !932)
!932 = distinct !DILexicalBlock(scope: !926, file: !3, line: 392, column: 23)
!933 = !DILocation(line: 392, column: 23, scope: !926)
!934 = !DILocation(line: 393, column: 32, scope: !932)
!935 = !DILocation(line: 393, column: 34, scope: !932)
!936 = !DILocation(line: 393, column: 25, scope: !932)
!937 = !DILocation(line: 393, column: 23, scope: !932)
!938 = !DILocation(line: 393, column: 21, scope: !932)
!939 = !DILocation(line: 394, column: 24, scope: !940)
!940 = distinct !DILexicalBlock(scope: !926, file: !3, line: 394, column: 23)
!941 = !DILocation(line: 394, column: 23, scope: !926)
!942 = !DILocation(line: 395, column: 48, scope: !943)
!943 = distinct !DILexicalBlock(scope: !940, file: !3, line: 394, column: 28)
!944 = !DILocation(line: 395, column: 46, scope: !943)
!945 = !DILocation(line: 395, column: 25, scope: !943)
!946 = !DILocation(line: 396, column: 32, scope: !947)
!947 = distinct !DILexicalBlock(scope: !943, file: !3, line: 396, column: 25)
!948 = !DILocation(line: 396, column: 38, scope: !947)
!949 = !DILocation(line: 396, column: 25, scope: !947)
!950 = !DILocation(line: 396, column: 25, scope: !943)
!951 = !DILocation(line: 397, column: 27, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !3, line: 397, column: 27)
!953 = distinct !DILexicalBlock(scope: !947, file: !3, line: 396, column: 53)
!954 = !DILocation(line: 397, column: 27, scope: !953)
!955 = !DILocation(line: 398, column: 29, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 398, column: 29)
!957 = distinct !DILexicalBlock(scope: !952, file: !3, line: 397, column: 38)
!958 = !DILocation(line: 398, column: 34, scope: !956)
!959 = !DILocation(line: 398, column: 29, scope: !957)
!960 = !DILocation(line: 399, column: 35, scope: !956)
!961 = !DILocation(line: 399, column: 52, scope: !956)
!962 = !DILocation(line: 399, column: 27, scope: !956)
!963 = !DILocation(line: 402, column: 32, scope: !964)
!964 = distinct !DILexicalBlock(scope: !957, file: !3, line: 402, column: 29)
!965 = !DILocation(line: 402, column: 42, scope: !964)
!966 = !DILocation(line: 402, column: 52, scope: !964)
!967 = !DILocation(line: 402, column: 50, scope: !964)
!968 = !DILocation(line: 402, column: 73, scope: !964)
!969 = !DILocation(line: 404, column: 29, scope: !964)
!970 = !DILocation(line: 404, column: 35, scope: !964)
!971 = !DILocation(line: 404, column: 46, scope: !964)
!972 = !DILocation(line: 404, column: 56, scope: !964)
!973 = !DILocation(line: 404, column: 54, scope: !964)
!974 = !DILocation(line: 404, column: 63, scope: !964)
!975 = !DILocation(line: 402, column: 29, scope: !957)
!976 = !DILocation(line: 407, column: 33, scope: !977)
!977 = distinct !DILexicalBlock(scope: !964, file: !3, line: 406, column: 29)
!978 = !DILocation(line: 407, column: 37, scope: !977)
!979 = !DILocation(line: 407, column: 27, scope: !977)
!980 = !DILocation(line: 408, column: 31, scope: !981)
!981 = distinct !DILexicalBlock(scope: !977, file: !3, line: 408, column: 31)
!982 = !DILocation(line: 408, column: 36, scope: !981)
!983 = !DILocation(line: 408, column: 31, scope: !977)
!984 = !DILocation(line: 409, column: 37, scope: !981)
!985 = !DILocation(line: 410, column: 39, scope: !981)
!986 = !DILocation(line: 410, column: 49, scope: !981)
!987 = !DILocation(line: 410, column: 59, scope: !981)
!988 = !DILocation(line: 410, column: 57, scope: !981)
!989 = !DILocation(line: 409, column: 29, scope: !981)
!990 = !DILocation(line: 412, column: 37, scope: !981)
!991 = !DILocation(line: 413, column: 37, scope: !981)
!992 = !DILocation(line: 412, column: 29, scope: !981)
!993 = !DILocation(line: 414, column: 25, scope: !977)
!994 = !DILocation(line: 415, column: 31, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 415, column: 31)
!996 = distinct !DILexicalBlock(scope: !964, file: !3, line: 414, column: 32)
!997 = !DILocation(line: 415, column: 36, scope: !995)
!998 = !DILocation(line: 415, column: 31, scope: !996)
!999 = !DILocation(line: 416, column: 37, scope: !995)
!1000 = !DILocation(line: 417, column: 39, scope: !995)
!1001 = !DILocation(line: 417, column: 49, scope: !995)
!1002 = !DILocation(line: 417, column: 59, scope: !995)
!1003 = !DILocation(line: 417, column: 57, scope: !995)
!1004 = !DILocation(line: 416, column: 29, scope: !995)
!1005 = !DILocation(line: 421, column: 23, scope: !957)
!1006 = !DILocation(line: 422, column: 27, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !953, file: !3, line: 422, column: 27)
!1008 = !DILocation(line: 422, column: 32, scope: !1007)
!1009 = !DILocation(line: 422, column: 27, scope: !953)
!1010 = !DILocation(line: 423, column: 33, scope: !1007)
!1011 = !DILocation(line: 423, column: 47, scope: !1007)
!1012 = !DILocation(line: 423, column: 25, scope: !1007)
!1013 = !DILocation(line: 425, column: 33, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 424, column: 28)
!1015 = !DILocation(line: 425, column: 25, scope: !1014)
!1016 = !DILocation(line: 426, column: 29, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 426, column: 29)
!1018 = !DILocation(line: 426, column: 38, scope: !1017)
!1019 = !DILocation(line: 426, column: 35, scope: !1017)
!1020 = !DILocation(line: 426, column: 29, scope: !1014)
!1021 = !DILocation(line: 427, column: 35, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 426, column: 47)
!1023 = !DILocation(line: 427, column: 33, scope: !1022)
!1024 = !DILocation(line: 428, column: 35, scope: !1022)
!1025 = !DILocation(line: 428, column: 58, scope: !1022)
!1026 = !DILocation(line: 428, column: 27, scope: !1022)
!1027 = !DILocation(line: 429, column: 35, scope: !1022)
!1028 = !DILocation(line: 429, column: 66, scope: !1022)
!1029 = !DILocation(line: 429, column: 27, scope: !1022)
!1030 = !DILocation(line: 430, column: 25, scope: !1022)
!1031 = !DILocation(line: 431, column: 33, scope: !1014)
!1032 = !DILocation(line: 431, column: 72, scope: !1014)
!1033 = !DILocation(line: 431, column: 25, scope: !1014)
!1034 = !DILocation(line: 433, column: 30, scope: !953)
!1035 = !DILocation(line: 433, column: 23, scope: !953)
!1036 = !DILocation(line: 434, column: 40, scope: !953)
!1037 = !DILocation(line: 434, column: 34, scope: !953)
!1038 = !DILocation(line: 434, column: 32, scope: !953)
!1039 = !DILocation(line: 435, column: 23, scope: !953)
!1040 = !DILocation(line: 436, column: 46, scope: !953)
!1041 = !DILocation(line: 436, column: 33, scope: !953)
!1042 = !DILocation(line: 437, column: 21, scope: !953)
!1043 = !DILocation(line: 438, column: 34, scope: !943)
!1044 = !DILocation(line: 438, column: 31, scope: !943)
!1045 = !DILocation(line: 439, column: 31, scope: !943)
!1046 = !DILocation(line: 440, column: 25, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !943, file: !3, line: 440, column: 25)
!1048 = !DILocation(line: 440, column: 30, scope: !1047)
!1049 = !DILocation(line: 440, column: 25, scope: !943)
!1050 = !DILocation(line: 441, column: 31, scope: !1047)
!1051 = !DILocation(line: 441, column: 50, scope: !1047)
!1052 = !DILocation(line: 441, column: 55, scope: !1047)
!1053 = !DILocation(line: 441, column: 23, scope: !1047)
!1054 = !DILocation(line: 443, column: 31, scope: !1047)
!1055 = !DILocation(line: 443, column: 78, scope: !1047)
!1056 = !DILocation(line: 444, column: 31, scope: !1047)
!1057 = !DILocation(line: 444, column: 34, scope: !1047)
!1058 = !DILocation(line: 443, column: 23, scope: !1047)
!1059 = !DILocation(line: 445, column: 19, scope: !943)
!1060 = !DILocation(line: 446, column: 17, scope: !926)
!1061 = !DILocation(line: 447, column: 15, scope: !919)
!1062 = !DILocation(line: 388, column: 38, scope: !913)
!1063 = !DILocation(line: 388, column: 15, scope: !913)
!1064 = distinct !{!1064, !916, !1065, !553}
!1065 = !DILocation(line: 447, column: 15, scope: !910)
!1066 = !DILocation(line: 448, column: 19, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !853, file: !3, line: 448, column: 19)
!1068 = !DILocation(line: 448, column: 24, scope: !1067)
!1069 = !DILocation(line: 448, column: 19, scope: !853)
!1070 = !DILocation(line: 449, column: 25, scope: !1067)
!1071 = !DILocation(line: 449, column: 17, scope: !1067)
!1072 = !DILocation(line: 450, column: 22, scope: !853)
!1073 = !DILocation(line: 450, column: 15, scope: !853)
!1074 = !DILocation(line: 451, column: 13, scope: !853)
!1075 = !DILocation(line: 453, column: 11, scope: !800)
!1076 = !DILocation(line: 454, column: 11, scope: !788)
!1077 = !DILocation(line: 454, column: 11, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 454, column: 11)
!1079 = distinct !DILexicalBlock(scope: !788, file: !3, line: 454, column: 11)
!1080 = !DILocation(line: 454, column: 11, scope: !1079)
!1081 = !DILocation(line: 454, column: 11, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 454, column: 11)
!1083 = !DILocation(line: 455, column: 9, scope: !788)
!1084 = !DILocation(line: 456, column: 9, scope: !782)
!1085 = !DILocation(line: 456, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 456, column: 9)
!1087 = distinct !DILexicalBlock(scope: !782, file: !3, line: 456, column: 9)
!1088 = !DILocation(line: 456, column: 9, scope: !1087)
!1089 = !DILocation(line: 456, column: 9, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 456, column: 9)
!1091 = !DILocation(line: 457, column: 7, scope: !782)
!1092 = !DILocation(line: 459, column: 5, scope: !776)
!1093 = !DILocation(line: 461, column: 3, scope: !773)
!1094 = !DILocation(line: 462, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !748, file: !3, line: 462, column: 7)
!1096 = !DILocation(line: 462, column: 7, scope: !748)
!1097 = !DILocation(line: 463, column: 12, scope: !1095)
!1098 = !DILocation(line: 463, column: 5, scope: !1095)
!1099 = !DILocation(line: 464, column: 17, scope: !748)
!1100 = !DILocation(line: 466, column: 1, scope: !748)
!1101 = distinct !DISubprogram(name: "mystrcmp", scope: !3, file: !3, line: 480, type: !1102, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !274)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!11, !1104, !1104}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1106 = !DILocalVariable(name: "_e1", arg: 1, scope: !1101, file: !3, line: 480, type: !1104)
!1107 = !DILocation(line: 480, column: 26, scope: !1101)
!1108 = !DILocalVariable(name: "_e2", arg: 2, scope: !1101, file: !3, line: 480, type: !1104)
!1109 = !DILocation(line: 480, column: 43, scope: !1101)
!1110 = !DILocalVariable(name: "e1", scope: !1101, file: !3, line: 481, type: !1111)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!1112 = !DILocation(line: 481, column: 27, scope: !1101)
!1113 = !DILocation(line: 481, column: 53, scope: !1101)
!1114 = !DILocalVariable(name: "e2", scope: !1101, file: !3, line: 482, type: !1111)
!1115 = !DILocation(line: 482, column: 27, scope: !1101)
!1116 = !DILocation(line: 482, column: 53, scope: !1101)
!1117 = !DILocation(line: 484, column: 18, scope: !1101)
!1118 = !DILocation(line: 484, column: 17, scope: !1101)
!1119 = !DILocation(line: 484, column: 23, scope: !1101)
!1120 = !DILocation(line: 484, column: 22, scope: !1101)
!1121 = !DILocation(line: 484, column: 10, scope: !1101)
!1122 = !DILocation(line: 484, column: 3, scope: !1101)
!1123 = distinct !DISubprogram(name: "abortf_", scope: !250, file: !250, line: 95, type: !1124, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !274)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !12, !12, !11}
!1126 = !DILocalVariable(name: "exp", arg: 1, scope: !1123, file: !250, line: 95, type: !12)
!1127 = !DILocation(line: 95, column: 44, scope: !1123)
!1128 = !DILocalVariable(name: "file", arg: 2, scope: !1123, file: !250, line: 95, type: !12)
!1129 = !DILocation(line: 95, column: 61, scope: !1123)
!1130 = !DILocalVariable(name: "line", arg: 3, scope: !1123, file: !250, line: 95, type: !11)
!1131 = !DILocation(line: 95, column: 71, scope: !1123)
!1132 = !DILocation(line: 99, column: 14, scope: !1123)
!1133 = !DILocation(line: 99, column: 19, scope: !1123)
!1134 = !DILocation(line: 99, column: 25, scope: !1123)
!1135 = !DILocation(line: 99, column: 3, scope: !1123)
!1136 = !DILocation(line: 100, column: 3, scope: !1123)
!1137 = distinct !DISubprogram(name: "strncat_safe_", scope: !250, file: !250, line: 197, type: !1138, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !274)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!8, !720, !721, !21, !721, !721, !12, !12, !11}
!1140 = !DILocalVariable(name: "dest", arg: 1, scope: !1137, file: !250, line: 197, type: !720)
!1141 = !DILocation(line: 197, column: 62, scope: !1137)
!1142 = !DILocalVariable(name: "sizeof_dest", arg: 2, scope: !1137, file: !250, line: 197, type: !721)
!1143 = !DILocation(line: 197, column: 81, scope: !1137)
!1144 = !DILocalVariable(name: "source", arg: 3, scope: !1137, file: !250, line: 198, type: !21)
!1145 = !DILocation(line: 198, column: 68, scope: !1137)
!1146 = !DILocalVariable(name: "sizeof_source", arg: 4, scope: !1137, file: !250, line: 198, type: !721)
!1147 = !DILocation(line: 198, column: 89, scope: !1137)
!1148 = !DILocalVariable(name: "n", arg: 5, scope: !1137, file: !250, line: 199, type: !721)
!1149 = !DILocation(line: 199, column: 63, scope: !1137)
!1150 = !DILocalVariable(name: "exp", arg: 6, scope: !1137, file: !250, line: 200, type: !12)
!1151 = !DILocation(line: 200, column: 62, scope: !1137)
!1152 = !DILocalVariable(name: "file", arg: 7, scope: !1137, file: !250, line: 200, type: !12)
!1153 = !DILocation(line: 200, column: 79, scope: !1137)
!1154 = !DILocalVariable(name: "line", arg: 8, scope: !1137, file: !250, line: 200, type: !11)
!1155 = !DILocation(line: 200, column: 89, scope: !1137)
!1156 = !DILocalVariable(name: "source_len", scope: !1137, file: !250, line: 201, type: !721)
!1157 = !DILocation(line: 201, column: 16, scope: !1137)
!1158 = !DILocation(line: 201, column: 42, scope: !1137)
!1159 = !DILocation(line: 201, column: 50, scope: !1137)
!1160 = !DILocation(line: 201, column: 65, scope: !1137)
!1161 = !DILocation(line: 201, column: 71, scope: !1137)
!1162 = !DILocation(line: 201, column: 29, scope: !1137)
!1163 = !DILocalVariable(name: "dest_len", scope: !1137, file: !250, line: 202, type: !721)
!1164 = !DILocation(line: 202, column: 16, scope: !1137)
!1165 = !DILocation(line: 202, column: 40, scope: !1137)
!1166 = !DILocation(line: 202, column: 46, scope: !1137)
!1167 = !DILocation(line: 202, column: 59, scope: !1137)
!1168 = !DILocation(line: 202, column: 65, scope: !1137)
!1169 = !DILocation(line: 202, column: 27, scope: !1137)
!1170 = !DILocalVariable(name: "source_copy", scope: !1137, file: !250, line: 204, type: !721)
!1171 = !DILocation(line: 204, column: 16, scope: !1137)
!1172 = !DILocation(line: 204, column: 30, scope: !1137)
!1173 = !DILocation(line: 204, column: 44, scope: !1137)
!1174 = !DILocation(line: 204, column: 41, scope: !1137)
!1175 = !DILocation(line: 204, column: 48, scope: !1137)
!1176 = !DILocation(line: 204, column: 61, scope: !1137)
!1177 = !DILocalVariable(name: "dest_final_len", scope: !1137, file: !250, line: 205, type: !721)
!1178 = !DILocation(line: 205, column: 16, scope: !1137)
!1179 = !DILocation(line: 205, column: 33, scope: !1137)
!1180 = !DILocation(line: 205, column: 44, scope: !1137)
!1181 = !DILocation(line: 205, column: 42, scope: !1137)
!1182 = !DILocation(line: 206, column: 3, scope: !1137)
!1183 = !DILocation(line: 207, column: 10, scope: !1137)
!1184 = !DILocation(line: 207, column: 17, scope: !1137)
!1185 = !DILocation(line: 207, column: 15, scope: !1137)
!1186 = !DILocation(line: 207, column: 27, scope: !1137)
!1187 = !DILocation(line: 207, column: 35, scope: !1137)
!1188 = !DILocation(line: 207, column: 3, scope: !1137)
!1189 = !DILocation(line: 208, column: 3, scope: !1137)
!1190 = !DILocation(line: 208, column: 8, scope: !1137)
!1191 = !DILocation(line: 208, column: 24, scope: !1137)
!1192 = !DILocation(line: 209, column: 10, scope: !1137)
!1193 = !DILocation(line: 209, column: 3, scope: !1137)
!1194 = distinct !DISubprogram(name: "log_abort_", scope: !250, file: !250, line: 90, type: !1124, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !274)
!1195 = !DILocalVariable(name: "msg", arg: 1, scope: !1194, file: !250, line: 90, type: !12)
!1196 = !DILocation(line: 90, column: 47, scope: !1194)
!1197 = !DILocalVariable(name: "file", arg: 2, scope: !1194, file: !250, line: 90, type: !12)
!1198 = !DILocation(line: 90, column: 64, scope: !1194)
!1199 = !DILocalVariable(name: "line", arg: 3, scope: !1194, file: !250, line: 90, type: !11)
!1200 = !DILocation(line: 90, column: 74, scope: !1194)
!1201 = !DILocation(line: 91, column: 11, scope: !1194)
!1202 = !DILocation(line: 91, column: 43, scope: !1194)
!1203 = !DILocation(line: 91, column: 48, scope: !1194)
!1204 = !DILocation(line: 91, column: 54, scope: !1194)
!1205 = !DILocation(line: 91, column: 3, scope: !1194)
!1206 = !DILocation(line: 92, column: 10, scope: !1194)
!1207 = !DILocation(line: 92, column: 3, scope: !1194)
!1208 = !DILocation(line: 93, column: 1, scope: !1194)
!1209 = distinct !DISubprogram(name: "strlen_safe_", scope: !250, file: !250, line: 187, type: !1210, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !274)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!14, !12, !721, !12, !11}
!1212 = !DILocalVariable(name: "source", arg: 1, scope: !1209, file: !250, line: 187, type: !12)
!1213 = !DILocation(line: 187, column: 62, scope: !1209)
!1214 = !DILocalVariable(name: "sizeof_source", arg: 2, scope: !1209, file: !250, line: 187, type: !721)
!1215 = !DILocation(line: 187, column: 83, scope: !1209)
!1216 = !DILocalVariable(name: "file", arg: 3, scope: !1209, file: !250, line: 188, type: !12)
!1217 = !DILocation(line: 188, column: 62, scope: !1209)
!1218 = !DILocalVariable(name: "line", arg: 4, scope: !1209, file: !250, line: 188, type: !11)
!1219 = !DILocation(line: 188, column: 72, scope: !1209)
!1220 = !DILocalVariable(name: "size", scope: !1209, file: !250, line: 189, type: !14)
!1221 = !DILocation(line: 189, column: 10, scope: !1209)
!1222 = !DILocation(line: 190, column: 3, scope: !1209)
!1223 = !DILocation(line: 191, column: 10, scope: !1209)
!1224 = !DILocation(line: 191, column: 24, scope: !1209)
!1225 = !DILocation(line: 192, column: 15, scope: !1209)
!1226 = !DILocation(line: 192, column: 23, scope: !1209)
!1227 = !DILocation(line: 192, column: 7, scope: !1209)
!1228 = !DILocation(line: 192, column: 47, scope: !1209)
!1229 = !DILocation(line: 192, column: 40, scope: !1209)
!1230 = !DILocation(line: 191, column: 8, scope: !1209)
!1231 = !DILocation(line: 193, column: 3, scope: !1209)
!1232 = !DILocation(line: 194, column: 10, scope: !1209)
!1233 = !DILocation(line: 194, column: 3, scope: !1209)
