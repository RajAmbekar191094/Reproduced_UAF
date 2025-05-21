; ModuleID = './fc-list/fc-list.c'
source_filename = "./fc-list/fc-list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct._FcFontSet = type { i32, i32, ptr }

@.str = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"brief\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [7 x i8] c"format\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !21
@longopts = dso_local constant [7 x %struct.option] [%struct.option { ptr @.str, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.1, i32 0, ptr null, i32 98 }, %struct.option { ptr @.str.2, i32 1, ptr null, i32 102 }, %struct.option { ptr @.str.3, i32 0, ptr null, i32 113 }, %struct.option { ptr @.str.4, i32 0, ptr null, i32 86 }, %struct.option { ptr @.str.5, i32 0, ptr null, i32 104 }, %struct.option zeroinitializer], align 16, !dbg !26
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !39
@.str.7 = private unnamed_addr constant [8 x i8] c"vbf:qVh\00", align 1, !dbg !44
@optarg = external global ptr, align 8
@stderr = external global ptr, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"fontconfig version %d.%d.%d\0A\00", align 1, !dbg !46
@optind = external global i32, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"Unable to parse the pattern\0A\00", align 1, !dbg !51
@.str.10 = private unnamed_addr constant [7 x i8] c"family\00", align 1, !dbg !53
@.str.11 = private unnamed_addr constant [6 x i8] c"style\00", align 1, !dbg !55
@.str.12 = private unnamed_addr constant [5 x i8] c"file\00", align 1, !dbg !57
@.str.13 = private unnamed_addr constant [12 x i8] c"%{=fclist}\0A\00", align 1, !dbg !59
@.str.14 = private unnamed_addr constant [8 x i8] c"charset\00", align 1, !dbg !64
@.str.15 = private unnamed_addr constant [5 x i8] c"lang\00", align 1, !dbg !66
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !68
@stdout = external global ptr, align 8
@.str.17 = private unnamed_addr constant [128 x i8] c"usage: %s [-vbqVh] [-f FORMAT] [--verbose] [--brief] [--format=FORMAT] [--quiet] [--version] [--help] [pattern] {element ...} \0A\00", align 1, !dbg !73
@.str.18 = private unnamed_addr constant [31 x i8] c"List fonts matching [pattern]\0A\00", align 1, !dbg !78
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !83
@.str.20 = private unnamed_addr constant [62 x i8] c"  -v, --verbose        display entire font pattern verbosely\0A\00", align 1, !dbg !88
@.str.21 = private unnamed_addr constant [60 x i8] c"  -b, --brief          display entire font pattern briefly\0A\00", align 1, !dbg !93
@.str.22 = private unnamed_addr constant [52 x i8] c"  -f, --format=FORMAT  use the given output format\0A\00", align 1, !dbg !98
@.str.23 = private unnamed_addr constant [79 x i8] c"  -q, --quiet          suppress all normal output, exit 1 if no fonts matched\0A\00", align 1, !dbg !103
@.str.24 = private unnamed_addr constant [61 x i8] c"  -V, --version        display font config version and exit\0A\00", align 1, !dbg !108
@.str.25 = private unnamed_addr constant [51 x i8] c"  -h, --help           display this help and exit\0A\00", align 1, !dbg !113

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !139 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !144, metadata !DIExpression()), !dbg !145
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata ptr %6, metadata !148, metadata !DIExpression()), !dbg !149
  store i32 0, ptr %6, align 4, !dbg !149
  call void @llvm.dbg.declare(metadata ptr %7, metadata !150, metadata !DIExpression()), !dbg !151
  store i32 0, ptr %7, align 4, !dbg !151
  call void @llvm.dbg.declare(metadata ptr %8, metadata !152, metadata !DIExpression()), !dbg !153
  store i32 0, ptr %8, align 4, !dbg !153
  call void @llvm.dbg.declare(metadata ptr %9, metadata !154, metadata !DIExpression()), !dbg !155
  store ptr null, ptr %9, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata ptr %10, metadata !156, metadata !DIExpression()), !dbg !157
  store i32 0, ptr %10, align 4, !dbg !157
  call void @llvm.dbg.declare(metadata ptr %11, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata ptr %12, metadata !160, metadata !DIExpression()), !dbg !169
  store ptr null, ptr %12, align 8, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %13, metadata !170, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata ptr %14, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata ptr %15, metadata !185, metadata !DIExpression()), !dbg !186
  %18 = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.6) #5, !dbg !187
  br label %19, !dbg !188

19:                                               ; preds = %43, %2
  %20 = load i32, ptr %4, align 4, !dbg !189
  %21 = load ptr, ptr %5, align 8, !dbg !190
  %22 = call i32 @getopt_long(i32 noundef %20, ptr noundef %21, ptr noundef @.str.7, ptr noundef @longopts, ptr noundef null) #5, !dbg !191
  store i32 %22, ptr %15, align 4, !dbg !192
  %23 = icmp ne i32 %22, -1, !dbg !193
  br i1 %23, label %24, label %44, !dbg !188

24:                                               ; preds = %19
  %25 = load i32, ptr %15, align 4, !dbg !194
  switch i32 %25, label %39 [
    i32 118, label %26
    i32 98, label %27
    i32 102, label %28
    i32 113, label %31
    i32 86, label %32
    i32 104, label %35
  ], !dbg !196

26:                                               ; preds = %24
  store i32 1, ptr %6, align 4, !dbg !197
  br label %43, !dbg !199

27:                                               ; preds = %24
  store i32 1, ptr %7, align 4, !dbg !200
  br label %43, !dbg !201

28:                                               ; preds = %24
  %29 = load ptr, ptr @optarg, align 8, !dbg !202
  %30 = call noalias ptr @strdup(ptr noundef %29) #5, !dbg !203
  store ptr %30, ptr %9, align 8, !dbg !204
  br label %43, !dbg !205

31:                                               ; preds = %24
  store i32 1, ptr %8, align 4, !dbg !206
  br label %43, !dbg !207

32:                                               ; preds = %24
  %33 = load ptr, ptr @stderr, align 8, !dbg !208
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.8, i32 noundef 2, i32 noundef 13, i32 noundef 94), !dbg !209
  call void @exit(i32 noundef 0) #6, !dbg !210
  unreachable, !dbg !210

35:                                               ; preds = %24
  %36 = load ptr, ptr %5, align 8, !dbg !211
  %37 = getelementptr inbounds ptr, ptr %36, i64 0, !dbg !211
  %38 = load ptr, ptr %37, align 8, !dbg !211
  call void @usage(ptr noundef %38, i32 noundef 0), !dbg !212
  br label %39, !dbg !212

39:                                               ; preds = %24, %35
  %40 = load ptr, ptr %5, align 8, !dbg !213
  %41 = getelementptr inbounds ptr, ptr %40, i64 0, !dbg !213
  %42 = load ptr, ptr %41, align 8, !dbg !213
  call void @usage(ptr noundef %42, i32 noundef 1), !dbg !214
  br label %43, !dbg !215

43:                                               ; preds = %39, %31, %28, %27, %26
  br label %19, !dbg !188, !llvm.loop !216

44:                                               ; preds = %19
  %45 = load i32, ptr @optind, align 4, !dbg !219
  store i32 %45, ptr %11, align 4, !dbg !220
  %46 = load ptr, ptr %5, align 8, !dbg !221
  %47 = load i32, ptr %11, align 4, !dbg !223
  %48 = sext i32 %47 to i64, !dbg !221
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48, !dbg !221
  %50 = load ptr, ptr %49, align 8, !dbg !221
  %51 = icmp ne ptr %50, null, !dbg !221
  br i1 %51, label %52, label %87, !dbg !224

52:                                               ; preds = %44
  %53 = load ptr, ptr %5, align 8, !dbg !225
  %54 = load i32, ptr %11, align 4, !dbg !227
  %55 = sext i32 %54 to i64, !dbg !225
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55, !dbg !225
  %57 = load ptr, ptr %56, align 8, !dbg !225
  %58 = call ptr @FcNameParse(ptr noundef %57), !dbg !228
  store ptr %58, ptr %14, align 8, !dbg !229
  %59 = load ptr, ptr %14, align 8, !dbg !230
  %60 = icmp ne ptr %59, null, !dbg !230
  br i1 %60, label %64, label %61, !dbg !232

61:                                               ; preds = %52
  %62 = load ptr, ptr @stderr, align 8, !dbg !233
  %63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef @.str.9), !dbg !235
  store i32 1, ptr %3, align 4, !dbg !236
  br label %216, !dbg !236

64:                                               ; preds = %52
  br label %65, !dbg !237

65:                                               ; preds = %78, %64
  %66 = load ptr, ptr %5, align 8, !dbg !238
  %67 = load i32, ptr %11, align 4, !dbg !239
  %68 = add nsw i32 %67, 1, !dbg !239
  store i32 %68, ptr %11, align 4, !dbg !239
  %69 = sext i32 %68 to i64, !dbg !238
  %70 = getelementptr inbounds ptr, ptr %66, i64 %69, !dbg !238
  %71 = load ptr, ptr %70, align 8, !dbg !238
  %72 = icmp ne ptr %71, null, !dbg !237
  br i1 %72, label %73, label %86, !dbg !237

73:                                               ; preds = %65
  %74 = load ptr, ptr %12, align 8, !dbg !240
  %75 = icmp ne ptr %74, null, !dbg !240
  br i1 %75, label %78, label %76, !dbg !243

76:                                               ; preds = %73
  %77 = call ptr @FcObjectSetCreate(), !dbg !244
  store ptr %77, ptr %12, align 8, !dbg !245
  br label %78, !dbg !246

78:                                               ; preds = %76, %73
  %79 = load ptr, ptr %12, align 8, !dbg !247
  %80 = load ptr, ptr %5, align 8, !dbg !248
  %81 = load i32, ptr %11, align 4, !dbg !249
  %82 = sext i32 %81 to i64, !dbg !248
  %83 = getelementptr inbounds ptr, ptr %80, i64 %82, !dbg !248
  %84 = load ptr, ptr %83, align 8, !dbg !248
  %85 = call i32 @FcObjectSetAdd(ptr noundef %79, ptr noundef %84), !dbg !250
  br label %65, !dbg !237, !llvm.loop !251

86:                                               ; preds = %65
  br label %89, !dbg !253

87:                                               ; preds = %44
  %88 = call ptr @FcPatternCreate(), !dbg !254
  store ptr %88, ptr %14, align 8, !dbg !255
  br label %89

89:                                               ; preds = %87, %86
  %90 = load i32, ptr %8, align 4, !dbg !256
  %91 = icmp ne i32 %90, 0, !dbg !256
  br i1 %91, label %92, label %97, !dbg !258

92:                                               ; preds = %89
  %93 = load ptr, ptr %12, align 8, !dbg !259
  %94 = icmp ne ptr %93, null, !dbg !259
  br i1 %94, label %97, label %95, !dbg !260

95:                                               ; preds = %92
  %96 = call ptr @FcObjectSetCreate(), !dbg !261
  store ptr %96, ptr %12, align 8, !dbg !262
  br label %97, !dbg !263

97:                                               ; preds = %95, %92, %89
  %98 = load i32, ptr %6, align 4, !dbg !264
  %99 = icmp ne i32 %98, 0, !dbg !264
  br i1 %99, label %111, label %100, !dbg !266

100:                                              ; preds = %97
  %101 = load i32, ptr %7, align 4, !dbg !267
  %102 = icmp ne i32 %101, 0, !dbg !267
  br i1 %102, label %111, label %103, !dbg !268

103:                                              ; preds = %100
  %104 = load ptr, ptr %9, align 8, !dbg !269
  %105 = icmp ne ptr %104, null, !dbg !269
  br i1 %105, label %111, label %106, !dbg !270

106:                                              ; preds = %103
  %107 = load ptr, ptr %12, align 8, !dbg !271
  %108 = icmp ne ptr %107, null, !dbg !271
  br i1 %108, label %111, label %109, !dbg !272

109:                                              ; preds = %106
  %110 = call ptr (ptr, ...) @FcObjectSetBuild(ptr noundef @.str.10, ptr noundef @.str.11, ptr noundef @.str.12, ptr noundef null), !dbg !273
  store ptr %110, ptr %12, align 8, !dbg !274
  br label %111, !dbg !275

111:                                              ; preds = %109, %106, %103, %100, %97
  %112 = load ptr, ptr %9, align 8, !dbg !276
  %113 = icmp ne ptr %112, null, !dbg !276
  br i1 %113, label %115, label %114, !dbg !278

114:                                              ; preds = %111
  store ptr @.str.13, ptr %9, align 8, !dbg !279
  br label %115, !dbg !280

115:                                              ; preds = %114, %111
  %116 = load ptr, ptr %14, align 8, !dbg !281
  %117 = load ptr, ptr %12, align 8, !dbg !282
  %118 = call ptr @FcFontList(ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !283
  store ptr %118, ptr %13, align 8, !dbg !284
  %119 = load ptr, ptr %12, align 8, !dbg !285
  %120 = icmp ne ptr %119, null, !dbg !285
  br i1 %120, label %121, label %123, !dbg !287

121:                                              ; preds = %115
  %122 = load ptr, ptr %12, align 8, !dbg !288
  call void @FcObjectSetDestroy(ptr noundef %122), !dbg !289
  br label %123, !dbg !289

123:                                              ; preds = %121, %115
  %124 = load ptr, ptr %14, align 8, !dbg !290
  %125 = icmp ne ptr %124, null, !dbg !290
  br i1 %125, label %126, label %128, !dbg !292

126:                                              ; preds = %123
  %127 = load ptr, ptr %14, align 8, !dbg !293
  call void @FcPatternDestroy(ptr noundef %127), !dbg !294
  br label %128, !dbg !294

128:                                              ; preds = %126, %123
  %129 = load i32, ptr %8, align 4, !dbg !295
  %130 = icmp ne i32 %129, 0, !dbg !295
  br i1 %130, label %197, label %131, !dbg !297

131:                                              ; preds = %128
  %132 = load ptr, ptr %13, align 8, !dbg !298
  %133 = icmp ne ptr %132, null, !dbg !298
  br i1 %133, label %134, label %197, !dbg !299

134:                                              ; preds = %131
  call void @llvm.dbg.declare(metadata ptr %16, metadata !300, metadata !DIExpression()), !dbg !302
  store i32 0, ptr %16, align 4, !dbg !303
  br label %135, !dbg !305

135:                                              ; preds = %193, %134
  %136 = load i32, ptr %16, align 4, !dbg !306
  %137 = load ptr, ptr %13, align 8, !dbg !308
  %138 = getelementptr inbounds %struct._FcFontSet, ptr %137, i32 0, i32 0, !dbg !309
  %139 = load i32, ptr %138, align 8, !dbg !309
  %140 = icmp slt i32 %136, %139, !dbg !310
  br i1 %140, label %141, label %196, !dbg !311

141:                                              ; preds = %135
  %142 = load i32, ptr %6, align 4, !dbg !312
  %143 = icmp ne i32 %142, 0, !dbg !312
  br i1 %143, label %147, label %144, !dbg !315

144:                                              ; preds = %141
  %145 = load i32, ptr %7, align 4, !dbg !316
  %146 = icmp ne i32 %145, 0, !dbg !316
  br i1 %146, label %147, label %175, !dbg !317

147:                                              ; preds = %144, %141
  %148 = load i32, ptr %7, align 4, !dbg !318
  %149 = icmp ne i32 %148, 0, !dbg !318
  br i1 %149, label %150, label %167, !dbg !321

150:                                              ; preds = %147
  %151 = load ptr, ptr %13, align 8, !dbg !322
  %152 = getelementptr inbounds %struct._FcFontSet, ptr %151, i32 0, i32 2, !dbg !324
  %153 = load ptr, ptr %152, align 8, !dbg !324
  %154 = load i32, ptr %16, align 4, !dbg !325
  %155 = sext i32 %154 to i64, !dbg !322
  %156 = getelementptr inbounds ptr, ptr %153, i64 %155, !dbg !322
  %157 = load ptr, ptr %156, align 8, !dbg !322
  %158 = call i32 @FcPatternDel(ptr noundef %157, ptr noundef @.str.14), !dbg !326
  %159 = load ptr, ptr %13, align 8, !dbg !327
  %160 = getelementptr inbounds %struct._FcFontSet, ptr %159, i32 0, i32 2, !dbg !328
  %161 = load ptr, ptr %160, align 8, !dbg !328
  %162 = load i32, ptr %16, align 4, !dbg !329
  %163 = sext i32 %162 to i64, !dbg !327
  %164 = getelementptr inbounds ptr, ptr %161, i64 %163, !dbg !327
  %165 = load ptr, ptr %164, align 8, !dbg !327
  %166 = call i32 @FcPatternDel(ptr noundef %165, ptr noundef @.str.15), !dbg !330
  br label %167, !dbg !331

167:                                              ; preds = %150, %147
  %168 = load ptr, ptr %13, align 8, !dbg !332
  %169 = getelementptr inbounds %struct._FcFontSet, ptr %168, i32 0, i32 2, !dbg !333
  %170 = load ptr, ptr %169, align 8, !dbg !333
  %171 = load i32, ptr %16, align 4, !dbg !334
  %172 = sext i32 %171 to i64, !dbg !332
  %173 = getelementptr inbounds ptr, ptr %170, i64 %172, !dbg !332
  %174 = load ptr, ptr %173, align 8, !dbg !332
  call void @FcPatternPrint(ptr noundef %174), !dbg !335
  br label %192, !dbg !336

175:                                              ; preds = %144
  call void @llvm.dbg.declare(metadata ptr %17, metadata !337, metadata !DIExpression()), !dbg !339
  %176 = load ptr, ptr %13, align 8, !dbg !340
  %177 = getelementptr inbounds %struct._FcFontSet, ptr %176, i32 0, i32 2, !dbg !341
  %178 = load ptr, ptr %177, align 8, !dbg !341
  %179 = load i32, ptr %16, align 4, !dbg !342
  %180 = sext i32 %179 to i64, !dbg !340
  %181 = getelementptr inbounds ptr, ptr %178, i64 %180, !dbg !340
  %182 = load ptr, ptr %181, align 8, !dbg !340
  %183 = load ptr, ptr %9, align 8, !dbg !343
  %184 = call ptr @FcPatternFormat(ptr noundef %182, ptr noundef %183), !dbg !344
  store ptr %184, ptr %17, align 8, !dbg !345
  %185 = load ptr, ptr %17, align 8, !dbg !346
  %186 = icmp ne ptr %185, null, !dbg !346
  br i1 %186, label %187, label %191, !dbg !348

187:                                              ; preds = %175
  %188 = load ptr, ptr %17, align 8, !dbg !349
  %189 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, ptr noundef %188), !dbg !351
  %190 = load ptr, ptr %17, align 8, !dbg !352
  call void @FcStrFree(ptr noundef %190), !dbg !353
  br label %191, !dbg !354

191:                                              ; preds = %187, %175
  br label %192

192:                                              ; preds = %191, %167
  br label %193, !dbg !355

193:                                              ; preds = %192
  %194 = load i32, ptr %16, align 4, !dbg !356
  %195 = add nsw i32 %194, 1, !dbg !356
  store i32 %195, ptr %16, align 4, !dbg !356
  br label %135, !dbg !357, !llvm.loop !358

196:                                              ; preds = %135
  br label %197, !dbg !360

197:                                              ; preds = %196, %131, %128
  %198 = load ptr, ptr %13, align 8, !dbg !361
  %199 = icmp ne ptr %198, null, !dbg !361
  br i1 %199, label %200, label %205, !dbg !363

200:                                              ; preds = %197
  %201 = load ptr, ptr %13, align 8, !dbg !364
  %202 = getelementptr inbounds %struct._FcFontSet, ptr %201, i32 0, i32 0, !dbg !366
  %203 = load i32, ptr %202, align 8, !dbg !366
  store i32 %203, ptr %10, align 4, !dbg !367
  %204 = load ptr, ptr %13, align 8, !dbg !368
  call void @FcFontSetDestroy(ptr noundef %204), !dbg !369
  br label %205, !dbg !370

205:                                              ; preds = %200, %197
  call void @FcFini(), !dbg !371
  %206 = load i32, ptr %8, align 4, !dbg !372
  %207 = icmp ne i32 %206, 0, !dbg !372
  br i1 %207, label %208, label %213, !dbg !372

208:                                              ; preds = %205
  %209 = load i32, ptr %10, align 4, !dbg !373
  %210 = icmp eq i32 %209, 0, !dbg !374
  %211 = zext i1 %210 to i64, !dbg !373
  %212 = select i1 %210, i32 1, i32 0, !dbg !373
  br label %214, !dbg !372

213:                                              ; preds = %205
  br label %214, !dbg !372

214:                                              ; preds = %213, %208
  %215 = phi i32 [ %212, %208 ], [ 0, %213 ], !dbg !372
  store i32 %215, ptr %3, align 4, !dbg !375
  br label %216, !dbg !375

216:                                              ; preds = %214, %61
  %217 = load i32, ptr %3, align 4, !dbg !376
  ret i32 %217, !dbg !376
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
define internal void @usage(ptr noundef %0, i32 noundef %1) #0 !dbg !377 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !380, metadata !DIExpression()), !dbg !381
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata ptr %5, metadata !384, metadata !DIExpression()), !dbg !442
  %6 = load i32, ptr %4, align 4, !dbg !443
  %7 = icmp ne i32 %6, 0, !dbg !443
  br i1 %7, label %8, label %10, !dbg !443

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8, !dbg !444
  br label %12, !dbg !443

10:                                               ; preds = %2
  %11 = load ptr, ptr @stdout, align 8, !dbg !445
  br label %12, !dbg !443

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ], !dbg !443
  store ptr %13, ptr %5, align 8, !dbg !442
  %14 = load ptr, ptr %5, align 8, !dbg !446
  %15 = load ptr, ptr %3, align 8, !dbg !447
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.17, ptr noundef %15), !dbg !448
  %17 = load ptr, ptr %5, align 8, !dbg !449
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.18), !dbg !450
  %19 = load ptr, ptr %5, align 8, !dbg !451
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.19), !dbg !452
  %21 = load ptr, ptr %5, align 8, !dbg !453
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.20), !dbg !454
  %23 = load ptr, ptr %5, align 8, !dbg !455
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.21), !dbg !456
  %25 = load ptr, ptr %5, align 8, !dbg !457
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.22), !dbg !458
  %27 = load ptr, ptr %5, align 8, !dbg !459
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.23), !dbg !460
  %29 = load ptr, ptr %5, align 8, !dbg !461
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.24), !dbg !462
  %31 = load ptr, ptr %5, align 8, !dbg !463
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.25), !dbg !464
  %33 = load i32, ptr %4, align 4, !dbg !465
  call void @exit(i32 noundef %33) #6, !dbg !466
  unreachable, !dbg !466
}

declare ptr @FcNameParse(ptr noundef) #3

declare ptr @FcObjectSetCreate() #3

declare i32 @FcObjectSetAdd(ptr noundef, ptr noundef) #3

declare ptr @FcPatternCreate() #3

declare ptr @FcObjectSetBuild(ptr noundef, ...) #3

declare ptr @FcFontList(ptr noundef, ptr noundef, ptr noundef) #3

declare void @FcObjectSetDestroy(ptr noundef) #3

declare void @FcPatternDestroy(ptr noundef) #3

declare i32 @FcPatternDel(ptr noundef, ptr noundef) #3

declare void @FcPatternPrint(ptr noundef) #3

declare ptr @FcPatternFormat(ptr noundef, ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #3

declare void @FcStrFree(ptr noundef) #3

declare void @FcFontSetDestroy(ptr noundef) #3

declare void @FcFini() #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!28}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./fc-list/fc-list.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "00b7be764efc519cb52fa19e645310f4")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 8)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 7)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !9, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !3, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 5)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "longopts", scope: !28, file: !2, line: 62, type: !118, isLocal: false, isDefinition: true)
!28 = distinct !DICompileUnit(language: DW_LANG_C11, file: !29, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !30, globals: !38, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "fc-list/fc-list.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "00b7be764efc519cb52fa19e645310f4")
!30 = !{!31, !35, !36}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcChar8", file: !33, line: 43, baseType: !34)
!33 = !DIFile(filename: "./fontconfig/fontconfig.h", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "05e262d1be6a508fc866c546b6803fc6")
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!38 = !{!0, !7, !12, !17, !19, !21, !26, !39, !44, !46, !51, !53, !55, !57, !59, !64, !66, !68, !73, !78, !83, !88, !93, !98, !103, !108, !113}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 1)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !3, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 29)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !48, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !14, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !9, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !23, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 12)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !3, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !23, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 210, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 128)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 31)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 2)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 62)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 60)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 52)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 79)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 61)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 51)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 1792, elements: !15)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !121, line: 50, size: 256, elements: !122)
!121 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!122 = !{!123, !126, !128, !130}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !120, file: !121, line: 52, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !120, file: !121, line: 55, baseType: !127, size: 32, offset: 64)
!127 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !120, file: !121, line: 56, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !120, file: !121, line: 57, baseType: !127, size: 32, offset: 192)
!131 = !{i32 7, !"Dwarf Version", i32 5}
!132 = !{i32 2, !"Debug Info Version", i32 3}
!133 = !{i32 1, !"wchar_size", i32 4}
!134 = !{i32 8, !"PIC Level", i32 2}
!135 = !{i32 7, !"PIE Level", i32 2}
!136 = !{i32 7, !"uwtable", i32 2}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 16.0.0"}
!139 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 110, type: !140, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !143)
!140 = !DISubroutineType(types: !141)
!141 = !{!127, !127, !142}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!143 = !{}
!144 = !DILocalVariable(name: "argc", arg: 1, scope: !139, file: !2, line: 110, type: !127)
!145 = !DILocation(line: 110, column: 11, scope: !139)
!146 = !DILocalVariable(name: "argv", arg: 2, scope: !139, file: !2, line: 110, type: !142)
!147 = !DILocation(line: 110, column: 24, scope: !139)
!148 = !DILocalVariable(name: "verbose", scope: !139, file: !2, line: 112, type: !127)
!149 = !DILocation(line: 112, column: 11, scope: !139)
!150 = !DILocalVariable(name: "brief", scope: !139, file: !2, line: 113, type: !127)
!151 = !DILocation(line: 113, column: 11, scope: !139)
!152 = !DILocalVariable(name: "quiet", scope: !139, file: !2, line: 114, type: !127)
!153 = !DILocation(line: 114, column: 11, scope: !139)
!154 = !DILocalVariable(name: "format", scope: !139, file: !2, line: 115, type: !36)
!155 = !DILocation(line: 115, column: 20, scope: !139)
!156 = !DILocalVariable(name: "nfont", scope: !139, file: !2, line: 116, type: !127)
!157 = !DILocation(line: 116, column: 11, scope: !139)
!158 = !DILocalVariable(name: "i", scope: !139, file: !2, line: 117, type: !127)
!159 = !DILocation(line: 117, column: 11, scope: !139)
!160 = !DILocalVariable(name: "os", scope: !139, file: !2, line: 118, type: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcObjectSet", file: !33, line: 287, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FcObjectSet", file: !33, line: 283, size: 128, elements: !164)
!164 = !{!165, !166, !167}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nobject", scope: !163, file: !33, line: 284, baseType: !127, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "sobject", scope: !163, file: !33, line: 285, baseType: !127, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !163, file: !33, line: 286, baseType: !168, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!169 = !DILocation(line: 118, column: 19, scope: !139)
!170 = !DILocalVariable(name: "fs", scope: !139, file: !2, line: 119, type: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcFontSet", file: !33, line: 281, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FcFontSet", file: !33, line: 277, size: 128, elements: !174)
!174 = !{!175, !176, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nfont", scope: !173, file: !33, line: 278, baseType: !127, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "sfont", scope: !173, file: !33, line: 279, baseType: !127, size: 32, offset: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "fonts", scope: !173, file: !33, line: 280, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcPattern", file: !33, line: 251, baseType: !181)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcPattern", file: !33, line: 251, flags: DIFlagFwdDecl)
!182 = !DILocation(line: 119, column: 17, scope: !139)
!183 = !DILocalVariable(name: "pat", scope: !139, file: !2, line: 120, type: !179)
!184 = !DILocation(line: 120, column: 17, scope: !139)
!185 = !DILocalVariable(name: "c", scope: !139, file: !2, line: 122, type: !127)
!186 = !DILocation(line: 122, column: 11, scope: !139)
!187 = !DILocation(line: 124, column: 5, scope: !139)
!188 = !DILocation(line: 126, column: 5, scope: !139)
!189 = !DILocation(line: 126, column: 30, scope: !139)
!190 = !DILocation(line: 126, column: 36, scope: !139)
!191 = !DILocation(line: 126, column: 17, scope: !139)
!192 = !DILocation(line: 126, column: 15, scope: !139)
!193 = !DILocation(line: 126, column: 70, scope: !139)
!194 = !DILocation(line: 131, column: 10, scope: !195)
!195 = distinct !DILexicalBlock(scope: !139, file: !2, line: 130, column: 5)
!196 = !DILocation(line: 131, column: 2, scope: !195)
!197 = !DILocation(line: 133, column: 14, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !2, line: 131, column: 13)
!199 = !DILocation(line: 134, column: 6, scope: !198)
!200 = !DILocation(line: 136, column: 12, scope: !198)
!201 = !DILocation(line: 137, column: 6, scope: !198)
!202 = !DILocation(line: 139, column: 35, scope: !198)
!203 = !DILocation(line: 139, column: 27, scope: !198)
!204 = !DILocation(line: 139, column: 13, scope: !198)
!205 = !DILocation(line: 140, column: 6, scope: !198)
!206 = !DILocation(line: 142, column: 12, scope: !198)
!207 = !DILocation(line: 143, column: 6, scope: !198)
!208 = !DILocation(line: 145, column: 15, scope: !198)
!209 = !DILocation(line: 145, column: 6, scope: !198)
!210 = !DILocation(line: 147, column: 6, scope: !198)
!211 = !DILocation(line: 149, column: 13, scope: !198)
!212 = !DILocation(line: 149, column: 6, scope: !198)
!213 = !DILocation(line: 151, column: 13, scope: !198)
!214 = !DILocation(line: 151, column: 6, scope: !198)
!215 = !DILocation(line: 152, column: 2, scope: !198)
!216 = distinct !{!216, !188, !217, !218}
!217 = !DILocation(line: 153, column: 5, scope: !139)
!218 = !{!"llvm.loop.mustprogress"}
!219 = !DILocation(line: 154, column: 9, scope: !139)
!220 = !DILocation(line: 154, column: 7, scope: !139)
!221 = !DILocation(line: 159, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !139, file: !2, line: 159, column: 9)
!223 = !DILocation(line: 159, column: 14, scope: !222)
!224 = !DILocation(line: 159, column: 9, scope: !139)
!225 = !DILocation(line: 161, column: 33, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !2, line: 160, column: 5)
!227 = !DILocation(line: 161, column: 38, scope: !226)
!228 = !DILocation(line: 161, column: 8, scope: !226)
!229 = !DILocation(line: 161, column: 6, scope: !226)
!230 = !DILocation(line: 162, column: 7, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !2, line: 162, column: 6)
!232 = !DILocation(line: 162, column: 6, scope: !226)
!233 = !DILocation(line: 164, column: 15, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !2, line: 163, column: 2)
!235 = !DILocation(line: 164, column: 6, scope: !234)
!236 = !DILocation(line: 165, column: 6, scope: !234)
!237 = !DILocation(line: 167, column: 2, scope: !226)
!238 = !DILocation(line: 167, column: 9, scope: !226)
!239 = !DILocation(line: 167, column: 14, scope: !226)
!240 = !DILocation(line: 169, column: 11, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !2, line: 169, column: 10)
!242 = distinct !DILexicalBlock(scope: !226, file: !2, line: 168, column: 2)
!243 = !DILocation(line: 169, column: 10, scope: !242)
!244 = !DILocation(line: 170, column: 8, scope: !241)
!245 = !DILocation(line: 170, column: 6, scope: !241)
!246 = !DILocation(line: 170, column: 3, scope: !241)
!247 = !DILocation(line: 171, column: 22, scope: !242)
!248 = !DILocation(line: 171, column: 26, scope: !242)
!249 = !DILocation(line: 171, column: 31, scope: !242)
!250 = !DILocation(line: 171, column: 6, scope: !242)
!251 = distinct !{!251, !237, !252, !218}
!252 = !DILocation(line: 172, column: 2, scope: !226)
!253 = !DILocation(line: 173, column: 5, scope: !226)
!254 = !DILocation(line: 175, column: 8, scope: !222)
!255 = !DILocation(line: 175, column: 6, scope: !222)
!256 = !DILocation(line: 176, column: 9, scope: !257)
!257 = distinct !DILexicalBlock(scope: !139, file: !2, line: 176, column: 9)
!258 = !DILocation(line: 176, column: 15, scope: !257)
!259 = !DILocation(line: 176, column: 19, scope: !257)
!260 = !DILocation(line: 176, column: 9, scope: !139)
!261 = !DILocation(line: 177, column: 7, scope: !257)
!262 = !DILocation(line: 177, column: 5, scope: !257)
!263 = !DILocation(line: 177, column: 2, scope: !257)
!264 = !DILocation(line: 178, column: 10, scope: !265)
!265 = distinct !DILexicalBlock(scope: !139, file: !2, line: 178, column: 9)
!266 = !DILocation(line: 178, column: 18, scope: !265)
!267 = !DILocation(line: 178, column: 22, scope: !265)
!268 = !DILocation(line: 178, column: 28, scope: !265)
!269 = !DILocation(line: 178, column: 32, scope: !265)
!270 = !DILocation(line: 178, column: 39, scope: !265)
!271 = !DILocation(line: 178, column: 43, scope: !265)
!272 = !DILocation(line: 178, column: 9, scope: !139)
!273 = !DILocation(line: 179, column: 7, scope: !265)
!274 = !DILocation(line: 179, column: 5, scope: !265)
!275 = !DILocation(line: 179, column: 2, scope: !265)
!276 = !DILocation(line: 180, column: 10, scope: !277)
!277 = distinct !DILexicalBlock(scope: !139, file: !2, line: 180, column: 9)
!278 = !DILocation(line: 180, column: 9, scope: !139)
!279 = !DILocation(line: 181, column: 16, scope: !277)
!280 = !DILocation(line: 181, column: 9, scope: !277)
!281 = !DILocation(line: 182, column: 25, scope: !139)
!282 = !DILocation(line: 182, column: 30, scope: !139)
!283 = !DILocation(line: 182, column: 10, scope: !139)
!284 = !DILocation(line: 182, column: 8, scope: !139)
!285 = !DILocation(line: 183, column: 9, scope: !286)
!286 = distinct !DILexicalBlock(scope: !139, file: !2, line: 183, column: 9)
!287 = !DILocation(line: 183, column: 9, scope: !139)
!288 = !DILocation(line: 184, column: 22, scope: !286)
!289 = !DILocation(line: 184, column: 2, scope: !286)
!290 = !DILocation(line: 185, column: 9, scope: !291)
!291 = distinct !DILexicalBlock(scope: !139, file: !2, line: 185, column: 9)
!292 = !DILocation(line: 185, column: 9, scope: !139)
!293 = !DILocation(line: 186, column: 20, scope: !291)
!294 = !DILocation(line: 186, column: 2, scope: !291)
!295 = !DILocation(line: 188, column: 10, scope: !296)
!296 = distinct !DILexicalBlock(scope: !139, file: !2, line: 188, column: 9)
!297 = !DILocation(line: 188, column: 16, scope: !296)
!298 = !DILocation(line: 188, column: 19, scope: !296)
!299 = !DILocation(line: 188, column: 9, scope: !139)
!300 = !DILocalVariable(name: "j", scope: !301, file: !2, line: 190, type: !127)
!301 = distinct !DILexicalBlock(scope: !296, file: !2, line: 189, column: 5)
!302 = !DILocation(line: 190, column: 6, scope: !301)
!303 = !DILocation(line: 192, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !2, line: 192, column: 2)
!305 = !DILocation(line: 192, column: 7, scope: !304)
!306 = !DILocation(line: 192, column: 14, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !2, line: 192, column: 2)
!308 = !DILocation(line: 192, column: 18, scope: !307)
!309 = !DILocation(line: 192, column: 22, scope: !307)
!310 = !DILocation(line: 192, column: 16, scope: !307)
!311 = !DILocation(line: 192, column: 2, scope: !304)
!312 = !DILocation(line: 194, column: 10, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !2, line: 194, column: 10)
!314 = distinct !DILexicalBlock(scope: !307, file: !2, line: 193, column: 2)
!315 = !DILocation(line: 194, column: 18, scope: !313)
!316 = !DILocation(line: 194, column: 21, scope: !313)
!317 = !DILocation(line: 194, column: 10, scope: !314)
!318 = !DILocation(line: 196, column: 7, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !2, line: 196, column: 7)
!320 = distinct !DILexicalBlock(scope: !313, file: !2, line: 195, column: 6)
!321 = !DILocation(line: 196, column: 7, scope: !320)
!322 = !DILocation(line: 198, column: 21, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !2, line: 197, column: 3)
!324 = !DILocation(line: 198, column: 25, scope: !323)
!325 = !DILocation(line: 198, column: 31, scope: !323)
!326 = !DILocation(line: 198, column: 7, scope: !323)
!327 = !DILocation(line: 199, column: 21, scope: !323)
!328 = !DILocation(line: 199, column: 25, scope: !323)
!329 = !DILocation(line: 199, column: 31, scope: !323)
!330 = !DILocation(line: 199, column: 7, scope: !323)
!331 = !DILocation(line: 200, column: 3, scope: !323)
!332 = !DILocation(line: 201, column: 19, scope: !320)
!333 = !DILocation(line: 201, column: 23, scope: !320)
!334 = !DILocation(line: 201, column: 29, scope: !320)
!335 = !DILocation(line: 201, column: 3, scope: !320)
!336 = !DILocation(line: 202, column: 6, scope: !320)
!337 = !DILocalVariable(name: "s", scope: !338, file: !2, line: 205, type: !31)
!338 = distinct !DILexicalBlock(scope: !313, file: !2, line: 204, column: 6)
!339 = !DILocation(line: 205, column: 19, scope: !338)
!340 = !DILocation(line: 207, column: 24, scope: !338)
!341 = !DILocation(line: 207, column: 28, scope: !338)
!342 = !DILocation(line: 207, column: 34, scope: !338)
!343 = !DILocation(line: 207, column: 38, scope: !338)
!344 = !DILocation(line: 207, column: 7, scope: !338)
!345 = !DILocation(line: 207, column: 5, scope: !338)
!346 = !DILocation(line: 208, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !338, file: !2, line: 208, column: 7)
!348 = !DILocation(line: 208, column: 7, scope: !338)
!349 = !DILocation(line: 210, column: 21, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !2, line: 209, column: 3)
!351 = !DILocation(line: 210, column: 7, scope: !350)
!352 = !DILocation(line: 211, column: 18, scope: !350)
!353 = !DILocation(line: 211, column: 7, scope: !350)
!354 = !DILocation(line: 212, column: 3, scope: !350)
!355 = !DILocation(line: 214, column: 2, scope: !314)
!356 = !DILocation(line: 192, column: 30, scope: !307)
!357 = !DILocation(line: 192, column: 2, scope: !307)
!358 = distinct !{!358, !311, !359, !218}
!359 = !DILocation(line: 214, column: 2, scope: !304)
!360 = !DILocation(line: 215, column: 5, scope: !301)
!361 = !DILocation(line: 217, column: 9, scope: !362)
!362 = distinct !DILexicalBlock(scope: !139, file: !2, line: 217, column: 9)
!363 = !DILocation(line: 217, column: 9, scope: !139)
!364 = !DILocation(line: 218, column: 10, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !2, line: 217, column: 13)
!366 = !DILocation(line: 218, column: 14, scope: !365)
!367 = !DILocation(line: 218, column: 8, scope: !365)
!368 = !DILocation(line: 219, column: 20, scope: !365)
!369 = !DILocation(line: 219, column: 2, scope: !365)
!370 = !DILocation(line: 220, column: 5, scope: !365)
!371 = !DILocation(line: 222, column: 5, scope: !139)
!372 = !DILocation(line: 224, column: 12, scope: !139)
!373 = !DILocation(line: 224, column: 21, scope: !139)
!374 = !DILocation(line: 224, column: 27, scope: !139)
!375 = !DILocation(line: 224, column: 5, scope: !139)
!376 = !DILocation(line: 225, column: 1, scope: !139)
!377 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 79, type: !378, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !143)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !35, !127}
!380 = !DILocalVariable(name: "program", arg: 1, scope: !377, file: !2, line: 79, type: !35)
!381 = !DILocation(line: 79, column: 14, scope: !377)
!382 = !DILocalVariable(name: "error", arg: 2, scope: !377, file: !2, line: 79, type: !127)
!383 = !DILocation(line: 79, column: 27, scope: !377)
!384 = !DILocalVariable(name: "file", scope: !377, file: !2, line: 81, type: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !387, line: 7, baseType: !388)
!387 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !389, line: 49, size: 1728, elements: !390)
!389 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !406, !408, !409, !410, !414, !416, !418, !419, !422, !424, !427, !430, !431, !433, !437, !438}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !388, file: !389, line: 51, baseType: !127, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !388, file: !389, line: 54, baseType: !35, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !388, file: !389, line: 55, baseType: !35, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !388, file: !389, line: 56, baseType: !35, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !388, file: !389, line: 57, baseType: !35, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !388, file: !389, line: 58, baseType: !35, size: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !388, file: !389, line: 59, baseType: !35, size: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !388, file: !389, line: 60, baseType: !35, size: 64, offset: 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !388, file: !389, line: 61, baseType: !35, size: 64, offset: 512)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !388, file: !389, line: 64, baseType: !35, size: 64, offset: 576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !388, file: !389, line: 65, baseType: !35, size: 64, offset: 640)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !388, file: !389, line: 66, baseType: !35, size: 64, offset: 704)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !388, file: !389, line: 68, baseType: !404, size: 64, offset: 768)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !389, line: 36, flags: DIFlagFwdDecl)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !388, file: !389, line: 70, baseType: !407, size: 64, offset: 832)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !388, file: !389, line: 72, baseType: !127, size: 32, offset: 896)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !388, file: !389, line: 73, baseType: !127, size: 32, offset: 928)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !388, file: !389, line: 74, baseType: !411, size: 64, offset: 960)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !412, line: 152, baseType: !413)
!412 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!413 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !388, file: !389, line: 77, baseType: !415, size: 16, offset: 1024)
!415 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !388, file: !389, line: 78, baseType: !417, size: 8, offset: 1040)
!417 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !388, file: !389, line: 79, baseType: !41, size: 8, offset: 1048)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !388, file: !389, line: 81, baseType: !420, size: 64, offset: 1088)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !389, line: 43, baseType: null)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !388, file: !389, line: 89, baseType: !423, size: 64, offset: 1152)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !412, line: 153, baseType: !413)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !388, file: !389, line: 91, baseType: !425, size: 64, offset: 1216)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !389, line: 37, flags: DIFlagFwdDecl)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !388, file: !389, line: 92, baseType: !428, size: 64, offset: 1280)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !389, line: 38, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !388, file: !389, line: 93, baseType: !407, size: 64, offset: 1344)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !388, file: !389, line: 94, baseType: !432, size: 64, offset: 1408)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !388, file: !389, line: 95, baseType: !434, size: 64, offset: 1472)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !435, line: 46, baseType: !436)
!435 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!436 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !388, file: !389, line: 96, baseType: !127, size: 32, offset: 1536)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !388, file: !389, line: 98, baseType: !439, size: 160, offset: 1568)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 20)
!442 = !DILocation(line: 81, column: 11, scope: !377)
!443 = !DILocation(line: 81, column: 18, scope: !377)
!444 = !DILocation(line: 81, column: 26, scope: !377)
!445 = !DILocation(line: 81, column: 35, scope: !377)
!446 = !DILocation(line: 83, column: 14, scope: !377)
!447 = !DILocation(line: 84, column: 7, scope: !377)
!448 = !DILocation(line: 83, column: 5, scope: !377)
!449 = !DILocation(line: 89, column: 14, scope: !377)
!450 = !DILocation(line: 89, column: 5, scope: !377)
!451 = !DILocation(line: 90, column: 14, scope: !377)
!452 = !DILocation(line: 90, column: 5, scope: !377)
!453 = !DILocation(line: 92, column: 14, scope: !377)
!454 = !DILocation(line: 92, column: 5, scope: !377)
!455 = !DILocation(line: 93, column: 14, scope: !377)
!456 = !DILocation(line: 93, column: 5, scope: !377)
!457 = !DILocation(line: 94, column: 14, scope: !377)
!458 = !DILocation(line: 94, column: 5, scope: !377)
!459 = !DILocation(line: 95, column: 14, scope: !377)
!460 = !DILocation(line: 95, column: 5, scope: !377)
!461 = !DILocation(line: 96, column: 14, scope: !377)
!462 = !DILocation(line: 96, column: 5, scope: !377)
!463 = !DILocation(line: 97, column: 14, scope: !377)
!464 = !DILocation(line: 97, column: 5, scope: !377)
!465 = !DILocation(line: 106, column: 11, scope: !377)
!466 = !DILocation(line: 106, column: 5, scope: !377)
