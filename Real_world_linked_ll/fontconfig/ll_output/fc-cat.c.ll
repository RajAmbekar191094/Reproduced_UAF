; ModuleID = './fc-cat/fc-cat.c'
source_filename = "./fc-cat/fc-cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._FcFontSet = type { i32, i32, ptr }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [8 x i8] c"recurse\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !11
@longopts = dso_local constant [5 x %struct.option] [%struct.option { ptr @.str, i32 0, ptr null, i32 86 }, %struct.option { ptr @.str.1, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.2, i32 0, ptr null, i32 114 }, %struct.option { ptr @.str.3, i32 0, ptr null, i32 104 }, %struct.option zeroinitializer], align 16, !dbg !16
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !30
@.str.5 = private unnamed_addr constant [5 x i8] c"Vvrh\00", align 1, !dbg !35
@stderr = external global ptr, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"fontconfig version %d.%d.%d\0A\00", align 1, !dbg !37
@optind = external global i32, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"%s: Can't initialize font config library\0A\00", align 1, !dbg !42
@.str.8 = private unnamed_addr constant [20 x i8] c"%s: malloc failure\0A\00", align 1, !dbg !47
@.str.9 = private unnamed_addr constant [34 x i8] c"%s: Unable to load the cache: %s\0A\00", align 1, !dbg !52
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !57
@.str.11 = private unnamed_addr constant [34 x i8] c"Directory: %s\0ACache: %s\0A--------\0A\00", align 1, !dbg !62
@stdout = external global ptr, align 8
@.str.12 = private unnamed_addr constant [69 x i8] c"usage: %s [-rv] [--recurse] [--verbose] [*-%s.cache-8|directory]...\0A\00", align 1, !dbg !64
@.str.13 = private unnamed_addr constant [5 x i8] c"le64\00", align 1, !dbg !69
@.str.14 = private unnamed_addr constant [38 x i8] c"       %s [-Vh] [--version] [--help]\0A\00", align 1, !dbg !71
@.str.15 = private unnamed_addr constant [36 x i8] c"Reads font information cache from:\0A\00", align 1, !dbg !76
@.str.16 = private unnamed_addr constant [37 x i8] c" 1) specified fontconfig cache file\0A\00", align 1, !dbg !81
@.str.17 = private unnamed_addr constant [44 x i8] c" 2) related to a particular font directory\0A\00", align 1, !dbg !86
@.str.18 = private unnamed_addr constant [52 x i8] c"  -r, --recurse        recurse into subdirectories\0A\00", align 1, !dbg !91
@.str.19 = private unnamed_addr constant [35 x i8] c"  -v, --verbose        be verbose\0A\00", align 1, !dbg !96
@.str.20 = private unnamed_addr constant [61 x i8] c"  -V, --version        display font config version and exit\0A\00", align 1, !dbg !101
@.str.21 = private unnamed_addr constant [51 x i8] c"  -h, --help           display this help and exit\0A\00", align 1, !dbg !106
@.str.22 = private unnamed_addr constant [5 x i8] c".dir\00", align 1, !dbg !111
@.str.23 = private unnamed_addr constant [11 x i8] c"%{=fccat}\0A\00", align 1, !dbg !113
@.str.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !118
@.str.25 = private unnamed_addr constant [9 x i8] c"<empty>\0A\00", align 1, !dbg !123

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !149 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca %struct.stat, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !154, metadata !DIExpression()), !dbg !155
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata ptr %6, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata ptr %7, metadata !160, metadata !DIExpression()), !dbg !161
  store i32 0, ptr %7, align 4, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %8, metadata !162, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata ptr %9, metadata !175, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata ptr %10, metadata !180, metadata !DIExpression()), !dbg !181
  store ptr null, ptr %10, align 8, !dbg !181
  call void @llvm.dbg.declare(metadata ptr %11, metadata !182, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata ptr %12, metadata !187, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata ptr %13, metadata !192, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata ptr %14, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata ptr %15, metadata !199, metadata !DIExpression()), !dbg !200
  store i32 0, ptr %15, align 4, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %16, metadata !201, metadata !DIExpression()), !dbg !202
  store i32 0, ptr %16, align 4, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %17, metadata !203, metadata !DIExpression()), !dbg !205
  store i32 1, ptr %17, align 4, !dbg !205
  call void @llvm.dbg.declare(metadata ptr %18, metadata !206, metadata !DIExpression()), !dbg !207
  %22 = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.4) #7, !dbg !208
  br label %23, !dbg !209

23:                                               ; preds = %47, %2
  %24 = load i32, ptr %4, align 4, !dbg !210
  %25 = load ptr, ptr %5, align 8, !dbg !211
  %26 = call i32 @getopt_long(i32 noundef %24, ptr noundef %25, ptr noundef @.str.5, ptr noundef @longopts, ptr noundef null) #7, !dbg !212
  store i32 %26, ptr %18, align 4, !dbg !213
  %27 = icmp ne i32 %26, -1, !dbg !214
  br i1 %27, label %28, label %48, !dbg !209

28:                                               ; preds = %23
  %29 = load i32, ptr %18, align 4, !dbg !215
  switch i32 %29, label %43 [
    i32 86, label %30
    i32 118, label %33
    i32 114, label %36
    i32 104, label %39
  ], !dbg !217

30:                                               ; preds = %28
  %31 = load ptr, ptr @stderr, align 8, !dbg !218
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.6, i32 noundef 2, i32 noundef 13, i32 noundef 94), !dbg !220
  call void @exit(i32 noundef 0) #8, !dbg !221
  unreachable, !dbg !221

33:                                               ; preds = %28
  %34 = load i32, ptr %15, align 4, !dbg !222
  %35 = add nsw i32 %34, 1, !dbg !222
  store i32 %35, ptr %15, align 4, !dbg !222
  br label %47, !dbg !223

36:                                               ; preds = %28
  %37 = load i32, ptr %16, align 4, !dbg !224
  %38 = add nsw i32 %37, 1, !dbg !224
  store i32 %38, ptr %16, align 4, !dbg !224
  br label %47, !dbg !225

39:                                               ; preds = %28
  %40 = load ptr, ptr %5, align 8, !dbg !226
  %41 = getelementptr inbounds ptr, ptr %40, i64 0, !dbg !226
  %42 = load ptr, ptr %41, align 8, !dbg !226
  call void @usage(ptr noundef %42, i32 noundef 0), !dbg !227
  br label %43, !dbg !227

43:                                               ; preds = %28, %39
  %44 = load ptr, ptr %5, align 8, !dbg !228
  %45 = getelementptr inbounds ptr, ptr %44, i64 0, !dbg !228
  %46 = load ptr, ptr %45, align 8, !dbg !228
  call void @usage(ptr noundef %46, i32 noundef 1), !dbg !229
  br label %47, !dbg !230

47:                                               ; preds = %43, %36, %33
  br label %23, !dbg !209, !llvm.loop !231

48:                                               ; preds = %23
  %49 = load i32, ptr @optind, align 4, !dbg !234
  store i32 %49, ptr %6, align 4, !dbg !235
  %50 = call ptr @FcInitLoadConfig(), !dbg !236
  store ptr %50, ptr %13, align 8, !dbg !237
  %51 = load ptr, ptr %13, align 8, !dbg !238
  %52 = icmp ne ptr %51, null, !dbg !238
  br i1 %52, label %59, label %53, !dbg !240

53:                                               ; preds = %48
  %54 = load ptr, ptr @stderr, align 8, !dbg !241
  %55 = load ptr, ptr %5, align 8, !dbg !243
  %56 = getelementptr inbounds ptr, ptr %55, i64 0, !dbg !243
  %57 = load ptr, ptr %56, align 8, !dbg !243
  %58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef @.str.7, ptr noundef %57), !dbg !244
  store i32 1, ptr %3, align 4, !dbg !245
  br label %236, !dbg !245

59:                                               ; preds = %48
  %60 = load ptr, ptr %13, align 8, !dbg !246
  %61 = call i32 @FcConfigSetCurrent(ptr noundef %60), !dbg !247
  %62 = load ptr, ptr %13, align 8, !dbg !248
  call void @FcConfigDestroy(ptr noundef %62), !dbg !249
  %63 = call ptr @FcStrSetCreate(), !dbg !250
  store ptr %63, ptr %10, align 8, !dbg !251
  %64 = load ptr, ptr %10, align 8, !dbg !252
  %65 = icmp ne ptr %64, null, !dbg !252
  br i1 %65, label %72, label %66, !dbg !254

66:                                               ; preds = %59
  %67 = load ptr, ptr @stderr, align 8, !dbg !255
  %68 = load ptr, ptr %5, align 8, !dbg !257
  %69 = getelementptr inbounds ptr, ptr %68, i64 0, !dbg !257
  %70 = load ptr, ptr %69, align 8, !dbg !257
  %71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str.8, ptr noundef %70), !dbg !258
  store i32 1, ptr %3, align 4, !dbg !259
  br label %236, !dbg !259

72:                                               ; preds = %59
  %73 = load i32, ptr %6, align 4, !dbg !260
  %74 = load i32, ptr %4, align 4, !dbg !262
  %75 = icmp slt i32 %73, %74, !dbg !263
  br i1 %75, label %76, label %101, !dbg !264

76:                                               ; preds = %72
  br label %77, !dbg !265

77:                                               ; preds = %97, %76
  %78 = load i32, ptr %6, align 4, !dbg !267
  %79 = load i32, ptr %4, align 4, !dbg !270
  %80 = icmp slt i32 %78, %79, !dbg !271
  br i1 %80, label %81, label %100, !dbg !272

81:                                               ; preds = %77
  %82 = load ptr, ptr %10, align 8, !dbg !273
  %83 = load ptr, ptr %5, align 8, !dbg !276
  %84 = load i32, ptr %6, align 4, !dbg !277
  %85 = sext i32 %84 to i64, !dbg !276
  %86 = getelementptr inbounds ptr, ptr %83, i64 %85, !dbg !276
  %87 = load ptr, ptr %86, align 8, !dbg !276
  %88 = call i32 @FcStrSetAddFilename(ptr noundef %82, ptr noundef %87), !dbg !278
  %89 = icmp ne i32 %88, 0, !dbg !278
  br i1 %89, label %96, label %90, !dbg !279

90:                                               ; preds = %81
  %91 = load ptr, ptr @stderr, align 8, !dbg !280
  %92 = load ptr, ptr %5, align 8, !dbg !282
  %93 = getelementptr inbounds ptr, ptr %92, i64 0, !dbg !282
  %94 = load ptr, ptr %93, align 8, !dbg !282
  %95 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @.str.8, ptr noundef %94), !dbg !283
  store i32 1, ptr %3, align 4, !dbg !284
  br label %236, !dbg !284

96:                                               ; preds = %81
  br label %97, !dbg !285

97:                                               ; preds = %96
  %98 = load i32, ptr %6, align 4, !dbg !286
  %99 = add nsw i32 %98, 1, !dbg !286
  store i32 %99, ptr %6, align 4, !dbg !286
  br label %77, !dbg !287, !llvm.loop !288

100:                                              ; preds = %77
  br label %124, !dbg !290

101:                                              ; preds = %72
  %102 = load i32, ptr %16, align 4, !dbg !291
  %103 = add nsw i32 %102, 1, !dbg !291
  store i32 %103, ptr %16, align 4, !dbg !291
  %104 = load ptr, ptr %13, align 8, !dbg !293
  %105 = call ptr @FcConfigGetFontDirs(ptr noundef %104), !dbg !294
  store ptr %105, ptr %11, align 8, !dbg !295
  br label %106, !dbg !296

106:                                              ; preds = %121, %101
  %107 = load ptr, ptr %11, align 8, !dbg !297
  %108 = call ptr @FcStrListNext(ptr noundef %107), !dbg !298
  store ptr %108, ptr %14, align 8, !dbg !299
  %109 = icmp ne ptr %108, null, !dbg !296
  br i1 %109, label %110, label %122, !dbg !296

110:                                              ; preds = %106
  %111 = load ptr, ptr %10, align 8, !dbg !300
  %112 = load ptr, ptr %14, align 8, !dbg !302
  %113 = call i32 @FcStrSetAdd(ptr noundef %111, ptr noundef %112), !dbg !303
  %114 = icmp ne i32 %113, 0, !dbg !303
  br i1 %114, label %121, label %115, !dbg !304

115:                                              ; preds = %110
  %116 = load ptr, ptr @stderr, align 8, !dbg !305
  %117 = load ptr, ptr %5, align 8, !dbg !307
  %118 = getelementptr inbounds ptr, ptr %117, i64 0, !dbg !307
  %119 = load ptr, ptr %118, align 8, !dbg !307
  %120 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef @.str.8, ptr noundef %119), !dbg !308
  store i32 1, ptr %3, align 4, !dbg !309
  br label %236, !dbg !309

121:                                              ; preds = %110
  br label %106, !dbg !296, !llvm.loop !310

122:                                              ; preds = %106
  %123 = load ptr, ptr %11, align 8, !dbg !312
  call void @FcStrListDone(ptr noundef %123), !dbg !313
  br label %124

124:                                              ; preds = %122, %100
  %125 = load ptr, ptr %10, align 8, !dbg !314
  %126 = call ptr @FcStrListCreate(ptr noundef %125), !dbg !315
  store ptr %126, ptr %11, align 8, !dbg !316
  %127 = load ptr, ptr %11, align 8, !dbg !317
  %128 = icmp ne ptr %127, null, !dbg !317
  br i1 %128, label %135, label %129, !dbg !319

129:                                              ; preds = %124
  %130 = load ptr, ptr @stderr, align 8, !dbg !320
  %131 = load ptr, ptr %5, align 8, !dbg !322
  %132 = getelementptr inbounds ptr, ptr %131, i64 0, !dbg !322
  %133 = load ptr, ptr %132, align 8, !dbg !322
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef @.str.8, ptr noundef %133), !dbg !323
  store i32 1, ptr %3, align 4, !dbg !324
  br label %236, !dbg !324

135:                                              ; preds = %124
  %136 = load ptr, ptr %10, align 8, !dbg !325
  call void @FcStrSetDestroy(ptr noundef %136), !dbg !326
  br label %137, !dbg !327

137:                                              ; preds = %233, %169, %135
  %138 = load ptr, ptr %11, align 8, !dbg !328
  %139 = call ptr @FcStrListNext(ptr noundef %138), !dbg !329
  store ptr %139, ptr %14, align 8, !dbg !330
  %140 = icmp ne ptr %139, null, !dbg !327
  br i1 %140, label %141, label %234, !dbg !327

141:                                              ; preds = %137
  call void @llvm.dbg.declare(metadata ptr %19, metadata !331, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata ptr %20, metadata !334, metadata !DIExpression()), !dbg !335
  store ptr null, ptr %20, align 8, !dbg !335
  call void @llvm.dbg.declare(metadata ptr %21, metadata !336, metadata !DIExpression()), !dbg !375
  %142 = call ptr @__errno_location() #9, !dbg !376
  store i32 0, ptr %142, align 4, !dbg !377
  %143 = load ptr, ptr %14, align 8, !dbg !378
  %144 = call i32 @FcFileIsDir(ptr noundef %143), !dbg !380
  %145 = icmp ne i32 %144, 0, !dbg !380
  br i1 %145, label %146, label %150, !dbg !381

146:                                              ; preds = %141
  %147 = load ptr, ptr %14, align 8, !dbg !382
  %148 = load ptr, ptr %13, align 8, !dbg !383
  %149 = call ptr @FcDirCacheLoad(ptr noundef %147, ptr noundef %148, ptr noundef %20), !dbg !384
  store ptr %149, ptr %12, align 8, !dbg !385
  br label %153, !dbg !386

150:                                              ; preds = %141
  %151 = load ptr, ptr %14, align 8, !dbg !387
  %152 = call ptr @FcDirCacheLoadFile(ptr noundef %151, ptr noundef %21), !dbg !388
  store ptr %152, ptr %12, align 8, !dbg !389
  br label %153

153:                                              ; preds = %150, %146
  %154 = load ptr, ptr %12, align 8, !dbg !390
  %155 = icmp ne ptr %154, null, !dbg !390
  br i1 %155, label %172, label %156, !dbg !392

156:                                              ; preds = %153
  %157 = call ptr @__errno_location() #9, !dbg !393
  %158 = load i32, ptr %157, align 4, !dbg !393
  %159 = icmp ne i32 %158, 0, !dbg !396
  br i1 %159, label %160, label %162, !dbg !397

160:                                              ; preds = %156
  %161 = load ptr, ptr %14, align 8, !dbg !398
  call void @perror(ptr noundef %161), !dbg !399
  br label %169, !dbg !399

162:                                              ; preds = %156
  %163 = load ptr, ptr @stderr, align 8, !dbg !400
  %164 = load ptr, ptr %5, align 8, !dbg !401
  %165 = getelementptr inbounds ptr, ptr %164, i64 0, !dbg !401
  %166 = load ptr, ptr %165, align 8, !dbg !401
  %167 = load ptr, ptr %14, align 8, !dbg !402
  %168 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef @.str.9, ptr noundef %166, ptr noundef %167), !dbg !403
  br label %169

169:                                              ; preds = %162, %160
  %170 = load i32, ptr %7, align 4, !dbg !404
  %171 = add nsw i32 %170, 1, !dbg !404
  store i32 %171, ptr %7, align 4, !dbg !404
  br label %137, !dbg !405, !llvm.loop !406

172:                                              ; preds = %153
  %173 = call ptr @FcStrSetCreate(), !dbg !408
  store ptr %173, ptr %9, align 8, !dbg !409
  %174 = load ptr, ptr %12, align 8, !dbg !410
  %175 = call ptr @FcCacheCopySet(ptr noundef %174), !dbg !411
  store ptr %175, ptr %8, align 8, !dbg !412
  store i32 0, ptr %19, align 4, !dbg !413
  br label %176, !dbg !415

176:                                              ; preds = %196, %172
  %177 = load i32, ptr %19, align 4, !dbg !416
  %178 = load ptr, ptr %12, align 8, !dbg !418
  %179 = call i32 @FcCacheNumSubdir(ptr noundef %178), !dbg !419
  %180 = icmp slt i32 %177, %179, !dbg !420
  br i1 %180, label %181, label %199, !dbg !421

181:                                              ; preds = %176
  %182 = load ptr, ptr %9, align 8, !dbg !422
  %183 = load ptr, ptr %12, align 8, !dbg !424
  %184 = load i32, ptr %19, align 4, !dbg !425
  %185 = call ptr @FcCacheSubdir(ptr noundef %183, i32 noundef %184), !dbg !426
  %186 = call i32 @FcStrSetAdd(ptr noundef %182, ptr noundef %185), !dbg !427
  %187 = load i32, ptr %16, align 4, !dbg !428
  %188 = icmp ne i32 %187, 0, !dbg !428
  br i1 %188, label %189, label %195, !dbg !430

189:                                              ; preds = %181
  %190 = load ptr, ptr %10, align 8, !dbg !431
  %191 = load ptr, ptr %12, align 8, !dbg !432
  %192 = load i32, ptr %19, align 4, !dbg !433
  %193 = call ptr @FcCacheSubdir(ptr noundef %191, i32 noundef %192), !dbg !434
  %194 = call i32 @FcStrSetAdd(ptr noundef %190, ptr noundef %193), !dbg !435
  br label %195, !dbg !435

195:                                              ; preds = %189, %181
  br label %196, !dbg !436

196:                                              ; preds = %195
  %197 = load i32, ptr %19, align 4, !dbg !437
  %198 = add nsw i32 %197, 1, !dbg !437
  store i32 %198, ptr %19, align 4, !dbg !437
  br label %176, !dbg !438, !llvm.loop !439

199:                                              ; preds = %176
  %200 = load i32, ptr %15, align 4, !dbg !441
  %201 = icmp ne i32 %200, 0, !dbg !441
  br i1 %201, label %202, label %219, !dbg !443

202:                                              ; preds = %199
  %203 = load i32, ptr %17, align 4, !dbg !444
  %204 = icmp ne i32 %203, 0, !dbg !444
  br i1 %204, label %207, label %205, !dbg !447

205:                                              ; preds = %202
  %206 = call i32 (ptr, ...) @printf(ptr noundef @.str.10), !dbg !448
  br label %207, !dbg !448

207:                                              ; preds = %205, %202
  %208 = load ptr, ptr %12, align 8, !dbg !449
  %209 = call ptr @FcCacheDir(ptr noundef %208), !dbg !450
  %210 = load ptr, ptr %20, align 8, !dbg !451
  %211 = icmp ne ptr %210, null, !dbg !451
  br i1 %211, label %212, label %214, !dbg !451

212:                                              ; preds = %207
  %213 = load ptr, ptr %20, align 8, !dbg !452
  br label %216, !dbg !451

214:                                              ; preds = %207
  %215 = load ptr, ptr %14, align 8, !dbg !453
  br label %216, !dbg !451

216:                                              ; preds = %214, %212
  %217 = phi ptr [ %213, %212 ], [ %215, %214 ], !dbg !451
  %218 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, ptr noundef %209, ptr noundef %217), !dbg !454
  store i32 0, ptr %17, align 4, !dbg !455
  br label %219, !dbg !456

219:                                              ; preds = %216, %199
  %220 = load ptr, ptr %8, align 8, !dbg !457
  %221 = load ptr, ptr %9, align 8, !dbg !458
  %222 = load ptr, ptr %12, align 8, !dbg !459
  %223 = call ptr @FcCacheDir(ptr noundef %222), !dbg !460
  %224 = load i32, ptr %15, align 4, !dbg !461
  %225 = call i32 @cache_print_set(ptr noundef %220, ptr noundef %221, ptr noundef %223, i32 noundef %224), !dbg !462
  %226 = load ptr, ptr %9, align 8, !dbg !463
  call void @FcStrSetDestroy(ptr noundef %226), !dbg !464
  %227 = load ptr, ptr %8, align 8, !dbg !465
  call void @FcFontSetDestroy(ptr noundef %227), !dbg !466
  %228 = load ptr, ptr %12, align 8, !dbg !467
  call void @FcDirCacheUnload(ptr noundef %228), !dbg !468
  %229 = load ptr, ptr %20, align 8, !dbg !469
  %230 = icmp ne ptr %229, null, !dbg !469
  br i1 %230, label %231, label %233, !dbg !471

231:                                              ; preds = %219
  %232 = load ptr, ptr %20, align 8, !dbg !472
  call void @FcStrFree(ptr noundef %232), !dbg !473
  br label %233, !dbg !473

233:                                              ; preds = %231, %219
  br label %137, !dbg !327, !llvm.loop !406

234:                                              ; preds = %137
  %235 = load ptr, ptr %11, align 8, !dbg !474
  call void @FcStrListDone(ptr noundef %235), !dbg !475
  call void @FcFini(), !dbg !476
  store i32 0, ptr %3, align 4, !dbg !477
  br label %236, !dbg !477

236:                                              ; preds = %234, %129, %115, %90, %66, %53
  %237 = load i32, ptr %3, align 4, !dbg !478
  ret i32 %237, !dbg !478
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(ptr noundef %0, i32 noundef %1) #0 !dbg !479 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !482, metadata !DIExpression()), !dbg !483
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !484, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.declare(metadata ptr %5, metadata !486, metadata !DIExpression()), !dbg !537
  %6 = load i32, ptr %4, align 4, !dbg !538
  %7 = icmp ne i32 %6, 0, !dbg !538
  br i1 %7, label %8, label %10, !dbg !538

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8, !dbg !539
  br label %12, !dbg !538

10:                                               ; preds = %2
  %11 = load ptr, ptr @stdout, align 8, !dbg !540
  br label %12, !dbg !538

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ], !dbg !538
  store ptr %13, ptr %5, align 8, !dbg !537
  %14 = load ptr, ptr %5, align 8, !dbg !541
  %15 = load ptr, ptr %3, align 8, !dbg !542
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.12, ptr noundef %15, ptr noundef @.str.13), !dbg !543
  %17 = load ptr, ptr %5, align 8, !dbg !544
  %18 = load ptr, ptr %3, align 8, !dbg !545
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.14, ptr noundef %18), !dbg !546
  %20 = load ptr, ptr %5, align 8, !dbg !547
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.15), !dbg !548
  %22 = load ptr, ptr %5, align 8, !dbg !549
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.16), !dbg !550
  %24 = load ptr, ptr %5, align 8, !dbg !551
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.17), !dbg !552
  %26 = load ptr, ptr %5, align 8, !dbg !553
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.10), !dbg !554
  %28 = load ptr, ptr %5, align 8, !dbg !555
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.18), !dbg !556
  %30 = load ptr, ptr %5, align 8, !dbg !557
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.19), !dbg !558
  %32 = load ptr, ptr %5, align 8, !dbg !559
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.20), !dbg !560
  %34 = load ptr, ptr %5, align 8, !dbg !561
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.21), !dbg !562
  %36 = load i32, ptr %4, align 4, !dbg !563
  call void @exit(i32 noundef %36) #8, !dbg !564
  unreachable, !dbg !564
}

declare ptr @FcInitLoadConfig() #3

declare i32 @FcConfigSetCurrent(ptr noundef) #3

declare void @FcConfigDestroy(ptr noundef) #3

declare ptr @FcStrSetCreate() #3

declare i32 @FcStrSetAddFilename(ptr noundef, ptr noundef) #3

declare ptr @FcConfigGetFontDirs(ptr noundef) #3

declare ptr @FcStrListNext(ptr noundef) #3

declare i32 @FcStrSetAdd(ptr noundef, ptr noundef) #3

declare void @FcStrListDone(ptr noundef) #3

declare ptr @FcStrListCreate(ptr noundef) #3

declare void @FcStrSetDestroy(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #5

declare i32 @FcFileIsDir(ptr noundef) #3

declare ptr @FcDirCacheLoad(ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @FcDirCacheLoadFile(ptr noundef, ptr noundef) #3

declare void @perror(ptr noundef) #3

declare ptr @FcCacheCopySet(ptr noundef) #3

declare i32 @FcCacheNumSubdir(ptr noundef) #3

declare ptr @FcCacheSubdir(ptr noundef, i32 noundef) #3

declare i32 @printf(ptr noundef, ...) #3

declare ptr @FcCacheDir(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_print_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !565 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !568, metadata !DIExpression()), !dbg !569
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !570, metadata !DIExpression()), !dbg !571
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !572, metadata !DIExpression()), !dbg !573
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !574, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata ptr %10, metadata !576, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.declare(metadata ptr %11, metadata !578, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.declare(metadata ptr %12, metadata !580, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.declare(metadata ptr %13, metadata !582, metadata !DIExpression()), !dbg !583
  store i32 0, ptr %13, align 4, !dbg !583
  call void @llvm.dbg.declare(metadata ptr %14, metadata !584, metadata !DIExpression()), !dbg !585
  %17 = load ptr, ptr %7, align 8, !dbg !586
  %18 = call ptr @FcStrListCreate(ptr noundef %17), !dbg !587
  store ptr %18, ptr %14, align 8, !dbg !588
  %19 = load ptr, ptr %14, align 8, !dbg !589
  %20 = icmp ne ptr %19, null, !dbg !589
  br i1 %20, label %22, label %21, !dbg !591

21:                                               ; preds = %4
  br label %108, !dbg !592

22:                                               ; preds = %4
  br label %23, !dbg !593

23:                                               ; preds = %61, %22
  %24 = load ptr, ptr %14, align 8, !dbg !594
  %25 = call ptr @FcStrListNext(ptr noundef %24), !dbg !595
  store ptr %25, ptr %10, align 8, !dbg !596
  %26 = icmp ne ptr %25, null, !dbg !593
  br i1 %26, label %27, label %64, !dbg !593

27:                                               ; preds = %23
  %28 = load ptr, ptr %8, align 8, !dbg !597
  %29 = load ptr, ptr %10, align 8, !dbg !599
  %30 = call ptr @file_base_name(ptr noundef %28, ptr noundef %29), !dbg !600
  store ptr %30, ptr %11, align 8, !dbg !601
  %31 = load ptr, ptr @stdout, align 8, !dbg !602
  %32 = load ptr, ptr %11, align 8, !dbg !604
  %33 = call i32 @write_string(ptr noundef %31, ptr noundef %32), !dbg !605
  %34 = icmp ne i32 %33, 0, !dbg !605
  br i1 %34, label %36, label %35, !dbg !606

35:                                               ; preds = %27
  br label %106, !dbg !607

36:                                               ; preds = %27
  %37 = load ptr, ptr @stdout, align 8, !dbg !608
  %38 = call i32 @putc(i32 noundef 32, ptr noundef %37), !dbg !608
  %39 = icmp eq i32 %38, -1, !dbg !610
  br i1 %39, label %40, label %41, !dbg !611

40:                                               ; preds = %36
  br label %106, !dbg !612

41:                                               ; preds = %36
  %42 = load ptr, ptr @stdout, align 8, !dbg !613
  %43 = call i32 @write_int(ptr noundef %42, i32 noundef 0), !dbg !615
  %44 = icmp ne i32 %43, 0, !dbg !615
  br i1 %44, label %46, label %45, !dbg !616

45:                                               ; preds = %41
  br label %106, !dbg !617

46:                                               ; preds = %41
  %47 = load ptr, ptr @stdout, align 8, !dbg !618
  %48 = call i32 @putc(i32 noundef 32, ptr noundef %47), !dbg !618
  %49 = icmp eq i32 %48, -1, !dbg !620
  br i1 %49, label %50, label %51, !dbg !621

50:                                               ; preds = %46
  br label %106, !dbg !622

51:                                               ; preds = %46
  %52 = load ptr, ptr @stdout, align 8, !dbg !623
  %53 = call i32 @write_string(ptr noundef %52, ptr noundef @.str.22), !dbg !625
  %54 = icmp ne i32 %53, 0, !dbg !625
  br i1 %54, label %56, label %55, !dbg !626

55:                                               ; preds = %51
  br label %106, !dbg !627

56:                                               ; preds = %51
  %57 = load ptr, ptr @stdout, align 8, !dbg !628
  %58 = call i32 @putc(i32 noundef 10, ptr noundef %57), !dbg !628
  %59 = icmp eq i32 %58, -1, !dbg !630
  br i1 %59, label %60, label %61, !dbg !631

60:                                               ; preds = %56
  br label %106, !dbg !632

61:                                               ; preds = %56
  %62 = load i32, ptr %13, align 4, !dbg !633
  %63 = add nsw i32 %62, 1, !dbg !633
  store i32 %63, ptr %13, align 4, !dbg !633
  br label %23, !dbg !593, !llvm.loop !634

64:                                               ; preds = %23
  store i32 0, ptr %12, align 4, !dbg !636
  br label %65, !dbg !638

65:                                               ; preds = %88, %64
  %66 = load i32, ptr %12, align 4, !dbg !639
  %67 = load ptr, ptr %6, align 8, !dbg !641
  %68 = getelementptr inbounds %struct._FcFontSet, ptr %67, i32 0, i32 0, !dbg !642
  %69 = load i32, ptr %68, align 8, !dbg !642
  %70 = icmp slt i32 %66, %69, !dbg !643
  br i1 %70, label %71, label %91, !dbg !644

71:                                               ; preds = %65
  call void @llvm.dbg.declare(metadata ptr %15, metadata !645, metadata !DIExpression()), !dbg !647
  %72 = load ptr, ptr %6, align 8, !dbg !648
  %73 = getelementptr inbounds %struct._FcFontSet, ptr %72, i32 0, i32 2, !dbg !649
  %74 = load ptr, ptr %73, align 8, !dbg !649
  %75 = load i32, ptr %12, align 4, !dbg !650
  %76 = sext i32 %75 to i64, !dbg !648
  %77 = getelementptr inbounds ptr, ptr %74, i64 %76, !dbg !648
  %78 = load ptr, ptr %77, align 8, !dbg !648
  store ptr %78, ptr %15, align 8, !dbg !647
  call void @llvm.dbg.declare(metadata ptr %16, metadata !651, metadata !DIExpression()), !dbg !652
  %79 = load ptr, ptr %15, align 8, !dbg !653
  %80 = call ptr @FcPatternFormat(ptr noundef %79, ptr noundef @.str.23), !dbg !654
  store ptr %80, ptr %16, align 8, !dbg !655
  %81 = load ptr, ptr %16, align 8, !dbg !656
  %82 = icmp ne ptr %81, null, !dbg !656
  br i1 %82, label %83, label %87, !dbg !658

83:                                               ; preds = %71
  %84 = load ptr, ptr %16, align 8, !dbg !659
  %85 = call i32 (ptr, ...) @printf(ptr noundef @.str.24, ptr noundef %84), !dbg !661
  %86 = load ptr, ptr %16, align 8, !dbg !662
  call void @FcStrFree(ptr noundef %86), !dbg !663
  br label %87, !dbg !664

87:                                               ; preds = %83, %71
  br label %88, !dbg !665

88:                                               ; preds = %87
  %89 = load i32, ptr %12, align 4, !dbg !666
  %90 = add nsw i32 %89, 1, !dbg !666
  store i32 %90, ptr %12, align 4, !dbg !666
  br label %65, !dbg !667, !llvm.loop !668

91:                                               ; preds = %65
  %92 = load i32, ptr %9, align 4, !dbg !670
  %93 = icmp ne i32 %92, 0, !dbg !670
  br i1 %93, label %94, label %104, !dbg !672

94:                                               ; preds = %91
  %95 = load ptr, ptr %6, align 8, !dbg !673
  %96 = getelementptr inbounds %struct._FcFontSet, ptr %95, i32 0, i32 0, !dbg !674
  %97 = load i32, ptr %96, align 8, !dbg !674
  %98 = icmp ne i32 %97, 0, !dbg !673
  br i1 %98, label %104, label %99, !dbg !675

99:                                               ; preds = %94
  %100 = load i32, ptr %13, align 4, !dbg !676
  %101 = icmp ne i32 %100, 0, !dbg !676
  br i1 %101, label %104, label %102, !dbg !677

102:                                              ; preds = %99
  %103 = call i32 (ptr, ...) @printf(ptr noundef @.str.25), !dbg !678
  br label %104, !dbg !678

104:                                              ; preds = %102, %99, %94, %91
  %105 = load ptr, ptr %14, align 8, !dbg !679
  call void @FcStrListDone(ptr noundef %105), !dbg !680
  store i32 1, ptr %5, align 4, !dbg !681
  br label %109, !dbg !681

106:                                              ; preds = %60, %55, %50, %45, %40, %35
  call void @llvm.dbg.label(metadata !682), !dbg !683
  %107 = load ptr, ptr %14, align 8, !dbg !684
  call void @FcStrListDone(ptr noundef %107), !dbg !685
  br label %108, !dbg !685

108:                                              ; preds = %106, %21
  call void @llvm.dbg.label(metadata !686), !dbg !687
  store i32 0, ptr %5, align 4, !dbg !688
  br label %109, !dbg !688

109:                                              ; preds = %108, %104
  %110 = load i32, ptr %5, align 4, !dbg !689
  ret i32 %110, !dbg !689
}

declare void @FcFontSetDestroy(ptr noundef) #3

declare void @FcDirCacheUnload(ptr noundef) #3

declare void @FcStrFree(ptr noundef) #3

declare void @FcFini() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @file_base_name(ptr noundef %0, ptr noundef %1) #0 !dbg !690 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !693, metadata !DIExpression()), !dbg !694
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !695, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.declare(metadata ptr %6, metadata !697, metadata !DIExpression()), !dbg !698
  %7 = load ptr, ptr %4, align 8, !dbg !699
  %8 = call i64 @strlen(ptr noundef %7) #10, !dbg !700
  %9 = trunc i64 %8 to i32, !dbg !700
  store i32 %9, ptr %6, align 4, !dbg !698
  %10 = load ptr, ptr %4, align 8, !dbg !701
  %11 = load ptr, ptr %5, align 8, !dbg !703
  %12 = load i32, ptr %6, align 4, !dbg !704
  %13 = sext i32 %12 to i64, !dbg !704
  %14 = call i32 @strncmp(ptr noundef %10, ptr noundef %11, i64 noundef %13) #10, !dbg !705
  %15 = icmp ne i32 %14, 0, !dbg !705
  br i1 %15, label %30, label %16, !dbg !706

16:                                               ; preds = %2
  %17 = load ptr, ptr %5, align 8, !dbg !707
  %18 = load i32, ptr %6, align 4, !dbg !708
  %19 = sext i32 %18 to i64, !dbg !707
  %20 = getelementptr inbounds i8, ptr %17, i64 %19, !dbg !707
  %21 = load i8, ptr %20, align 1, !dbg !707
  %22 = zext i8 %21 to i32, !dbg !707
  %23 = icmp eq i32 %22, 47, !dbg !709
  br i1 %23, label %24, label %30, !dbg !710

24:                                               ; preds = %16
  %25 = load ptr, ptr %5, align 8, !dbg !711
  %26 = load i32, ptr %6, align 4, !dbg !712
  %27 = sext i32 %26 to i64, !dbg !713
  %28 = getelementptr inbounds i8, ptr %25, i64 %27, !dbg !713
  %29 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !714
  store ptr %29, ptr %3, align 8, !dbg !715
  br label %32, !dbg !715

30:                                               ; preds = %16, %2
  %31 = load ptr, ptr %5, align 8, !dbg !716
  store ptr %31, ptr %3, align 8, !dbg !717
  br label %32, !dbg !717

32:                                               ; preds = %30, %24
  %33 = load ptr, ptr %3, align 8, !dbg !718
  ret ptr %33, !dbg !718
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_string(ptr noundef %0, ptr noundef %1) #0 !dbg !719 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !722, metadata !DIExpression()), !dbg !723
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !724, metadata !DIExpression()), !dbg !725
  %6 = load ptr, ptr %4, align 8, !dbg !726
  %7 = call i32 @putc(i32 noundef 34, ptr noundef %6), !dbg !726
  %8 = icmp eq i32 %7, -1, !dbg !728
  br i1 %8, label %9, label %10, !dbg !729

9:                                                ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !730
  br label %22, !dbg !730

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !731
  %12 = load ptr, ptr %5, align 8, !dbg !733
  %13 = call i32 @write_chars(ptr noundef %11, ptr noundef %12), !dbg !734
  %14 = icmp ne i32 %13, 0, !dbg !734
  br i1 %14, label %16, label %15, !dbg !735

15:                                               ; preds = %10
  store i32 0, ptr %3, align 4, !dbg !736
  br label %22, !dbg !736

16:                                               ; preds = %10
  %17 = load ptr, ptr %4, align 8, !dbg !737
  %18 = call i32 @putc(i32 noundef 34, ptr noundef %17), !dbg !737
  %19 = icmp eq i32 %18, -1, !dbg !739
  br i1 %19, label %20, label %21, !dbg !740

20:                                               ; preds = %16
  store i32 0, ptr %3, align 4, !dbg !741
  br label %22, !dbg !741

21:                                               ; preds = %16
  store i32 1, ptr %3, align 4, !dbg !742
  br label %22, !dbg !742

22:                                               ; preds = %21, %20, %15, %9
  %23 = load i32, ptr %3, align 4, !dbg !743
  ret i32 %23, !dbg !743
}

declare i32 @putc(i32 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_int(ptr noundef %0, i32 noundef %1) #0 !dbg !744 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !747, metadata !DIExpression()), !dbg !748
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !749, metadata !DIExpression()), !dbg !750
  %5 = load ptr, ptr %3, align 8, !dbg !751
  %6 = load i32, ptr %4, align 4, !dbg !752
  %7 = sext i32 %6 to i64, !dbg !753
  %8 = call i32 @write_ulong(ptr noundef %5, i64 noundef %7), !dbg !754
  ret i32 %8, !dbg !755
}

declare ptr @FcPatternFormat(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_chars(ptr noundef %0, ptr noundef %1) #0 !dbg !756 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !757, metadata !DIExpression()), !dbg !758
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !759, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.declare(metadata ptr %6, metadata !761, metadata !DIExpression()), !dbg !762
  br label %7, !dbg !763

7:                                                ; preds = %29, %2
  %8 = load ptr, ptr %5, align 8, !dbg !764
  %9 = getelementptr inbounds i8, ptr %8, i32 1, !dbg !764
  store ptr %9, ptr %5, align 8, !dbg !764
  %10 = load i8, ptr %8, align 1, !dbg !765
  store i8 %10, ptr %6, align 1, !dbg !766
  %11 = icmp ne i8 %10, 0, !dbg !763
  br i1 %11, label %12, label %30, !dbg !763

12:                                               ; preds = %7
  %13 = load i8, ptr %6, align 1, !dbg !767
  %14 = zext i8 %13 to i32, !dbg !767
  switch i32 %14, label %21 [
    i32 34, label %15
    i32 92, label %15
  ], !dbg !769

15:                                               ; preds = %12, %12
  %16 = load ptr, ptr %4, align 8, !dbg !770
  %17 = call i32 @putc(i32 noundef 92, ptr noundef %16), !dbg !770
  %18 = icmp eq i32 %17, -1, !dbg !773
  br i1 %18, label %19, label %20, !dbg !774

19:                                               ; preds = %15
  store i32 0, ptr %3, align 4, !dbg !775
  br label %31, !dbg !775

20:                                               ; preds = %15
  br label %21, !dbg !776

21:                                               ; preds = %12, %20
  %22 = load i8, ptr %6, align 1, !dbg !777
  %23 = zext i8 %22 to i32, !dbg !777
  %24 = load ptr, ptr %4, align 8, !dbg !777
  %25 = call i32 @putc(i32 noundef %23, ptr noundef %24), !dbg !777
  %26 = icmp eq i32 %25, -1, !dbg !779
  br i1 %26, label %27, label %28, !dbg !780

27:                                               ; preds = %21
  store i32 0, ptr %3, align 4, !dbg !781
  br label %31, !dbg !781

28:                                               ; preds = %21
  br label %29, !dbg !782

29:                                               ; preds = %28
  br label %7, !dbg !763, !llvm.loop !783

30:                                               ; preds = %7
  store i32 1, ptr %3, align 4, !dbg !785
  br label %31, !dbg !785

31:                                               ; preds = %30, %27, %19
  %32 = load i32, ptr %3, align 4, !dbg !786
  ret i32 %32, !dbg !786
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_ulong(ptr noundef %0, i64 noundef %1) #0 !dbg !787 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !790, metadata !DIExpression()), !dbg !791
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !792, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.declare(metadata ptr %6, metadata !794, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.declare(metadata ptr %7, metadata !796, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.declare(metadata ptr %8, metadata !798, metadata !DIExpression()), !dbg !799
  %9 = load i64, ptr %5, align 8, !dbg !800
  store i64 %9, ptr %7, align 8, !dbg !801
  store i32 1, ptr %6, align 4, !dbg !802
  br label %10, !dbg !803

10:                                               ; preds = %13, %2
  %11 = load i64, ptr %7, align 8, !dbg !804
  %12 = icmp uge i64 %11, 10, !dbg !805
  br i1 %12, label %13, label %18, !dbg !803

13:                                               ; preds = %10
  %14 = load i64, ptr %7, align 8, !dbg !806
  %15 = udiv i64 %14, 10, !dbg !806
  store i64 %15, ptr %7, align 8, !dbg !806
  %16 = load i32, ptr %6, align 4, !dbg !808
  %17 = mul nsw i32 %16, 10, !dbg !808
  store i32 %17, ptr %6, align 4, !dbg !808
  br label %10, !dbg !803, !llvm.loop !809

18:                                               ; preds = %10
  %19 = load i64, ptr %5, align 8, !dbg !811
  store i64 %19, ptr %7, align 8, !dbg !812
  br label %20, !dbg !813

20:                                               ; preds = %36, %18
  %21 = load i32, ptr %6, align 4, !dbg !814
  %22 = icmp ne i32 %21, 0, !dbg !813
  br i1 %22, label %23, label %45, !dbg !813

23:                                               ; preds = %20
  %24 = load i64, ptr %7, align 8, !dbg !815
  %25 = load i32, ptr %6, align 4, !dbg !817
  %26 = sext i32 %25 to i64, !dbg !817
  %27 = udiv i64 %24, %26, !dbg !818
  store i64 %27, ptr %8, align 8, !dbg !819
  %28 = load i64, ptr %8, align 8, !dbg !820
  %29 = trunc i64 %28 to i8, !dbg !820
  %30 = sext i8 %29 to i32, !dbg !820
  %31 = add nsw i32 %30, 48, !dbg !820
  %32 = load ptr, ptr %4, align 8, !dbg !820
  %33 = call i32 @putc(i32 noundef %31, ptr noundef %32), !dbg !820
  %34 = icmp eq i32 %33, -1, !dbg !822
  br i1 %34, label %35, label %36, !dbg !823

35:                                               ; preds = %23
  store i32 0, ptr %3, align 4, !dbg !824
  br label %46, !dbg !824

36:                                               ; preds = %23
  %37 = load i64, ptr %7, align 8, !dbg !825
  %38 = load i32, ptr %6, align 4, !dbg !826
  %39 = sext i32 %38 to i64, !dbg !826
  %40 = load i64, ptr %8, align 8, !dbg !827
  %41 = mul i64 %39, %40, !dbg !828
  %42 = sub i64 %37, %41, !dbg !829
  store i64 %42, ptr %7, align 8, !dbg !830
  %43 = load i32, ptr %6, align 4, !dbg !831
  %44 = sdiv i32 %43, 10, !dbg !832
  store i32 %44, ptr %6, align 4, !dbg !833
  br label %20, !dbg !813, !llvm.loop !834

45:                                               ; preds = %20
  store i32 1, ptr %3, align 4, !dbg !836
  br label %46, !dbg !836

46:                                               ; preds = %45, %35
  %47 = load i32, ptr %3, align 4, !dbg !837
  ret i32 %47, !dbg !837
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!18}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./fc-cat/fc-cat.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "e48c76153e740a70d65d94160153e804")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 8)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !3, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !13, isLocal: true, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 5)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "longopts", scope: !18, file: !2, line: 66, type: !128, isLocal: false, isDefinition: true)
!18 = distinct !DICompileUnit(language: DW_LANG_C11, file: !19, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !20, globals: !29, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "fc-cat/fc-cat.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "e48c76153e740a70d65d94160153e804")
!20 = !{!21, !26, !27, !28, !4}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcChar8", file: !24, line: 43, baseType: !25)
!24 = !DIFile(filename: "./fontconfig/fontconfig.h", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "05e262d1be6a508fc866c546b6803fc6")
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !{!0, !7, !9, !11, !16, !30, !35, !37, !42, !47, !52, !57, !62, !64, !69, !71, !76, !81, !86, !91, !96, !101, !106, !111, !113, !118, !123}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 1)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !13, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 286, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 29)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 309, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 42)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 318, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 20)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 369, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 34)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 386, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 2)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 387, type: !54, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 69)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !13, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 38)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 36)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 170, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 37)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 171, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 44)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 52)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 35)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 61)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 51)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !13, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 11)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 242, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 3)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 247, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 9)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 1280, elements: !14)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !131, line: 50, size: 256, elements: !132)
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!132 = !{!133, !136, !138, !140}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !131, line: 52, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !130, file: !131, line: 55, baseType: !137, size: 32, offset: 64)
!137 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !130, file: !131, line: 56, baseType: !139, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !130, file: !131, line: 57, baseType: !137, size: 32, offset: 192)
!141 = !{i32 7, !"Dwarf Version", i32 5}
!142 = !{i32 2, !"Debug Info Version", i32 3}
!143 = !{i32 1, !"wchar_size", i32 4}
!144 = !{i32 8, !"PIC Level", i32 2}
!145 = !{i32 7, !"PIE Level", i32 2}
!146 = !{i32 7, !"uwtable", i32 2}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 16.0.0"}
!149 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 260, type: !150, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !153)
!150 = !DISubroutineType(types: !151)
!151 = !{!137, !137, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!153 = !{}
!154 = !DILocalVariable(name: "argc", arg: 1, scope: !149, file: !2, line: 260, type: !137)
!155 = !DILocation(line: 260, column: 11, scope: !149)
!156 = !DILocalVariable(name: "argv", arg: 2, scope: !149, file: !2, line: 260, type: !152)
!157 = !DILocation(line: 260, column: 24, scope: !149)
!158 = !DILocalVariable(name: "i", scope: !149, file: !2, line: 262, type: !137)
!159 = !DILocation(line: 262, column: 10, scope: !149)
!160 = !DILocalVariable(name: "ret", scope: !149, file: !2, line: 263, type: !137)
!161 = !DILocation(line: 263, column: 10, scope: !149)
!162 = !DILocalVariable(name: "fs", scope: !149, file: !2, line: 264, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcFontSet", file: !24, line: 281, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FcFontSet", file: !24, line: 277, size: 128, elements: !166)
!166 = !{!167, !168, !169}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nfont", scope: !165, file: !24, line: 278, baseType: !137, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "sfont", scope: !165, file: !24, line: 279, baseType: !137, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "fonts", scope: !165, file: !24, line: 280, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcPattern", file: !24, line: 251, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcPattern", file: !24, line: 251, flags: DIFlagFwdDecl)
!174 = !DILocation(line: 264, column: 16, scope: !149)
!175 = !DILocalVariable(name: "dirs", scope: !149, file: !2, line: 265, type: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcStrSet", file: !24, line: 333, baseType: !178)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcStrSet", file: !24, line: 333, flags: DIFlagFwdDecl)
!179 = !DILocation(line: 265, column: 18, scope: !149)
!180 = !DILocalVariable(name: "args", scope: !149, file: !2, line: 266, type: !176)
!181 = !DILocation(line: 266, column: 15, scope: !149)
!182 = !DILocalVariable(name: "arglist", scope: !149, file: !2, line: 267, type: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcStrList", file: !24, line: 331, baseType: !185)
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcStrList", file: !24, line: 331, flags: DIFlagFwdDecl)
!186 = !DILocation(line: 267, column: 16, scope: !149)
!187 = !DILocalVariable(name: "cache", scope: !149, file: !2, line: 268, type: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcCache", file: !24, line: 335, baseType: !190)
!190 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcCache", file: !24, line: 335, flags: DIFlagFwdDecl)
!191 = !DILocation(line: 268, column: 14, scope: !149)
!192 = !DILocalVariable(name: "config", scope: !149, file: !2, line: 269, type: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcConfig", file: !24, line: 325, baseType: !195)
!195 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcConfig", file: !24, line: 325, flags: DIFlagFwdDecl)
!196 = !DILocation(line: 269, column: 15, scope: !149)
!197 = !DILocalVariable(name: "arg", scope: !149, file: !2, line: 270, type: !27)
!198 = !DILocation(line: 270, column: 14, scope: !149)
!199 = !DILocalVariable(name: "verbose", scope: !149, file: !2, line: 271, type: !137)
!200 = !DILocation(line: 271, column: 10, scope: !149)
!201 = !DILocalVariable(name: "recurse", scope: !149, file: !2, line: 272, type: !137)
!202 = !DILocation(line: 272, column: 10, scope: !149)
!203 = !DILocalVariable(name: "first", scope: !149, file: !2, line: 273, type: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcBool", file: !24, line: 46, baseType: !137)
!205 = !DILocation(line: 273, column: 12, scope: !149)
!206 = !DILocalVariable(name: "c", scope: !149, file: !2, line: 275, type: !137)
!207 = !DILocation(line: 275, column: 10, scope: !149)
!208 = !DILocation(line: 277, column: 5, scope: !149)
!209 = !DILocation(line: 279, column: 5, scope: !149)
!210 = !DILocation(line: 279, column: 30, scope: !149)
!211 = !DILocation(line: 279, column: 36, scope: !149)
!212 = !DILocation(line: 279, column: 17, scope: !149)
!213 = !DILocation(line: 279, column: 15, scope: !149)
!214 = !DILocation(line: 279, column: 67, scope: !149)
!215 = !DILocation(line: 284, column: 10, scope: !216)
!216 = distinct !DILexicalBlock(scope: !149, file: !2, line: 283, column: 5)
!217 = !DILocation(line: 284, column: 2, scope: !216)
!218 = !DILocation(line: 286, column: 15, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !2, line: 284, column: 13)
!220 = !DILocation(line: 286, column: 6, scope: !219)
!221 = !DILocation(line: 288, column: 6, scope: !219)
!222 = !DILocation(line: 290, column: 13, scope: !219)
!223 = !DILocation(line: 291, column: 6, scope: !219)
!224 = !DILocation(line: 293, column: 13, scope: !219)
!225 = !DILocation(line: 294, column: 6, scope: !219)
!226 = !DILocation(line: 296, column: 13, scope: !219)
!227 = !DILocation(line: 296, column: 6, scope: !219)
!228 = !DILocation(line: 298, column: 13, scope: !219)
!229 = !DILocation(line: 298, column: 6, scope: !219)
!230 = !DILocation(line: 299, column: 2, scope: !219)
!231 = distinct !{!231, !209, !232, !233}
!232 = !DILocation(line: 300, column: 5, scope: !149)
!233 = !{!"llvm.loop.mustprogress"}
!234 = !DILocation(line: 301, column: 9, scope: !149)
!235 = !DILocation(line: 301, column: 7, scope: !149)
!236 = !DILocation(line: 306, column: 14, scope: !149)
!237 = !DILocation(line: 306, column: 12, scope: !149)
!238 = !DILocation(line: 307, column: 10, scope: !239)
!239 = distinct !DILexicalBlock(scope: !149, file: !2, line: 307, column: 9)
!240 = !DILocation(line: 307, column: 9, scope: !149)
!241 = !DILocation(line: 309, column: 11, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !2, line: 308, column: 5)
!243 = !DILocation(line: 309, column: 68, scope: !242)
!244 = !DILocation(line: 309, column: 2, scope: !242)
!245 = !DILocation(line: 310, column: 2, scope: !242)
!246 = !DILocation(line: 312, column: 25, scope: !149)
!247 = !DILocation(line: 312, column: 5, scope: !149)
!248 = !DILocation(line: 313, column: 22, scope: !149)
!249 = !DILocation(line: 313, column: 5, scope: !149)
!250 = !DILocation(line: 315, column: 12, scope: !149)
!251 = !DILocation(line: 315, column: 10, scope: !149)
!252 = !DILocation(line: 316, column: 10, scope: !253)
!253 = distinct !DILexicalBlock(scope: !149, file: !2, line: 316, column: 9)
!254 = !DILocation(line: 316, column: 9, scope: !149)
!255 = !DILocation(line: 318, column: 11, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !2, line: 317, column: 5)
!257 = !DILocation(line: 318, column: 46, scope: !256)
!258 = !DILocation(line: 318, column: 2, scope: !256)
!259 = !DILocation(line: 319, column: 2, scope: !256)
!260 = !DILocation(line: 321, column: 9, scope: !261)
!261 = distinct !DILexicalBlock(scope: !149, file: !2, line: 321, column: 9)
!262 = !DILocation(line: 321, column: 13, scope: !261)
!263 = !DILocation(line: 321, column: 11, scope: !261)
!264 = !DILocation(line: 321, column: 9, scope: !149)
!265 = !DILocation(line: 323, column: 2, scope: !266)
!266 = distinct !DILexicalBlock(scope: !261, file: !2, line: 322, column: 5)
!267 = !DILocation(line: 323, column: 9, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !2, line: 323, column: 2)
!269 = distinct !DILexicalBlock(scope: !266, file: !2, line: 323, column: 2)
!270 = !DILocation(line: 323, column: 13, scope: !268)
!271 = !DILocation(line: 323, column: 11, scope: !268)
!272 = !DILocation(line: 323, column: 2, scope: !269)
!273 = !DILocation(line: 325, column: 32, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !2, line: 325, column: 10)
!275 = distinct !DILexicalBlock(scope: !268, file: !2, line: 324, column: 2)
!276 = !DILocation(line: 325, column: 56, scope: !274)
!277 = !DILocation(line: 325, column: 61, scope: !274)
!278 = !DILocation(line: 325, column: 11, scope: !274)
!279 = !DILocation(line: 325, column: 10, scope: !275)
!280 = !DILocation(line: 327, column: 12, scope: !281)
!281 = distinct !DILexicalBlock(scope: !274, file: !2, line: 326, column: 6)
!282 = !DILocation(line: 327, column: 47, scope: !281)
!283 = !DILocation(line: 327, column: 3, scope: !281)
!284 = !DILocation(line: 328, column: 3, scope: !281)
!285 = !DILocation(line: 330, column: 2, scope: !275)
!286 = !DILocation(line: 323, column: 20, scope: !268)
!287 = !DILocation(line: 323, column: 2, scope: !268)
!288 = distinct !{!288, !272, !289, !233}
!289 = !DILocation(line: 330, column: 2, scope: !269)
!290 = !DILocation(line: 331, column: 5, scope: !266)
!291 = !DILocation(line: 334, column: 9, scope: !292)
!292 = distinct !DILexicalBlock(scope: !261, file: !2, line: 333, column: 5)
!293 = !DILocation(line: 335, column: 33, scope: !292)
!294 = !DILocation(line: 335, column: 12, scope: !292)
!295 = !DILocation(line: 335, column: 10, scope: !292)
!296 = !DILocation(line: 336, column: 2, scope: !292)
!297 = !DILocation(line: 336, column: 31, scope: !292)
!298 = !DILocation(line: 336, column: 16, scope: !292)
!299 = !DILocation(line: 336, column: 14, scope: !292)
!300 = !DILocation(line: 337, column: 24, scope: !301)
!301 = distinct !DILexicalBlock(scope: !292, file: !2, line: 337, column: 10)
!302 = !DILocation(line: 337, column: 30, scope: !301)
!303 = !DILocation(line: 337, column: 11, scope: !301)
!304 = !DILocation(line: 337, column: 10, scope: !292)
!305 = !DILocation(line: 339, column: 12, scope: !306)
!306 = distinct !DILexicalBlock(scope: !301, file: !2, line: 338, column: 6)
!307 = !DILocation(line: 339, column: 47, scope: !306)
!308 = !DILocation(line: 339, column: 3, scope: !306)
!309 = !DILocation(line: 340, column: 3, scope: !306)
!310 = distinct !{!310, !296, !311, !233}
!311 = !DILocation(line: 341, column: 6, scope: !292)
!312 = !DILocation(line: 342, column: 17, scope: !292)
!313 = !DILocation(line: 342, column: 2, scope: !292)
!314 = !DILocation(line: 344, column: 32, scope: !149)
!315 = !DILocation(line: 344, column: 15, scope: !149)
!316 = !DILocation(line: 344, column: 13, scope: !149)
!317 = !DILocation(line: 345, column: 10, scope: !318)
!318 = distinct !DILexicalBlock(scope: !149, file: !2, line: 345, column: 9)
!319 = !DILocation(line: 345, column: 9, scope: !149)
!320 = !DILocation(line: 347, column: 11, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !2, line: 346, column: 5)
!322 = !DILocation(line: 347, column: 46, scope: !321)
!323 = !DILocation(line: 347, column: 2, scope: !321)
!324 = !DILocation(line: 348, column: 2, scope: !321)
!325 = !DILocation(line: 350, column: 22, scope: !149)
!326 = !DILocation(line: 350, column: 5, scope: !149)
!327 = !DILocation(line: 352, column: 5, scope: !149)
!328 = !DILocation(line: 352, column: 34, scope: !149)
!329 = !DILocation(line: 352, column: 19, scope: !149)
!330 = !DILocation(line: 352, column: 17, scope: !149)
!331 = !DILocalVariable(name: "j", scope: !332, file: !2, line: 354, type: !137)
!332 = distinct !DILexicalBlock(scope: !149, file: !2, line: 353, column: 5)
!333 = !DILocation(line: 354, column: 10, scope: !332)
!334 = !DILocalVariable(name: "cache_file", scope: !332, file: !2, line: 355, type: !27)
!335 = !DILocation(line: 355, column: 15, scope: !332)
!336 = !DILocalVariable(name: "file_stat", scope: !332, file: !2, line: 356, type: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !338, line: 26, size: 1152, elements: !339)
!338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!339 = !{!340, !343, !345, !347, !350, !352, !354, !355, !356, !359, !361, !363, !371, !372, !373}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !337, file: !338, line: 31, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !342, line: 145, baseType: !28)
!342 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!343 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !337, file: !338, line: 36, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !342, line: 148, baseType: !28)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !337, file: !338, line: 44, baseType: !346, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !342, line: 151, baseType: !28)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !337, file: !338, line: 45, baseType: !348, size: 32, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !342, line: 150, baseType: !349)
!349 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !337, file: !338, line: 47, baseType: !351, size: 32, offset: 224)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !342, line: 146, baseType: !349)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !337, file: !338, line: 48, baseType: !353, size: 32, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !342, line: 147, baseType: !349)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !337, file: !338, line: 50, baseType: !137, size: 32, offset: 288)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !337, file: !338, line: 52, baseType: !341, size: 64, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !337, file: !338, line: 57, baseType: !357, size: 64, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !342, line: 152, baseType: !358)
!358 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !337, file: !338, line: 61, baseType: !360, size: 64, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !342, line: 175, baseType: !358)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !337, file: !338, line: 63, baseType: !362, size: 64, offset: 512)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !342, line: 180, baseType: !358)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !337, file: !338, line: 74, baseType: !364, size: 128, offset: 576)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !365, line: 11, size: 128, elements: !366)
!365 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!366 = !{!367, !369}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !364, file: !365, line: 16, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !342, line: 160, baseType: !358)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !364, file: !365, line: 21, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !342, line: 197, baseType: !358)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !337, file: !338, line: 75, baseType: !364, size: 128, offset: 704)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !337, file: !338, line: 76, baseType: !364, size: 128, offset: 832)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !337, file: !338, line: 89, baseType: !374, size: 192, offset: 960)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 192, elements: !121)
!375 = !DILocation(line: 356, column: 14, scope: !332)
!376 = !DILocation(line: 359, column: 2, scope: !332)
!377 = !DILocation(line: 359, column: 8, scope: !332)
!378 = !DILocation(line: 360, column: 19, scope: !379)
!379 = distinct !DILexicalBlock(scope: !332, file: !2, line: 360, column: 6)
!380 = !DILocation(line: 360, column: 6, scope: !379)
!381 = !DILocation(line: 360, column: 6, scope: !332)
!382 = !DILocation(line: 361, column: 30, scope: !379)
!383 = !DILocation(line: 361, column: 35, scope: !379)
!384 = !DILocation(line: 361, column: 14, scope: !379)
!385 = !DILocation(line: 361, column: 12, scope: !379)
!386 = !DILocation(line: 361, column: 6, scope: !379)
!387 = !DILocation(line: 363, column: 34, scope: !379)
!388 = !DILocation(line: 363, column: 14, scope: !379)
!389 = !DILocation(line: 363, column: 12, scope: !379)
!390 = !DILocation(line: 364, column: 7, scope: !391)
!391 = distinct !DILexicalBlock(scope: !332, file: !2, line: 364, column: 6)
!392 = !DILocation(line: 364, column: 6, scope: !332)
!393 = !DILocation(line: 366, column: 10, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !2, line: 366, column: 10)
!395 = distinct !DILexicalBlock(scope: !391, file: !2, line: 365, column: 2)
!396 = !DILocation(line: 366, column: 16, scope: !394)
!397 = !DILocation(line: 366, column: 10, scope: !395)
!398 = !DILocation(line: 367, column: 20, scope: !394)
!399 = !DILocation(line: 367, column: 3, scope: !394)
!400 = !DILocation(line: 369, column: 12, scope: !394)
!401 = !DILocation(line: 369, column: 58, scope: !394)
!402 = !DILocation(line: 369, column: 67, scope: !394)
!403 = !DILocation(line: 369, column: 3, scope: !394)
!404 = !DILocation(line: 370, column: 9, scope: !395)
!405 = !DILocation(line: 371, column: 6, scope: !395)
!406 = distinct !{!406, !327, !407, !233}
!407 = !DILocation(line: 399, column: 5, scope: !149)
!408 = !DILocation(line: 374, column: 9, scope: !332)
!409 = !DILocation(line: 374, column: 7, scope: !332)
!410 = !DILocation(line: 375, column: 23, scope: !332)
!411 = !DILocation(line: 375, column: 7, scope: !332)
!412 = !DILocation(line: 375, column: 5, scope: !332)
!413 = !DILocation(line: 376, column: 9, scope: !414)
!414 = distinct !DILexicalBlock(scope: !332, file: !2, line: 376, column: 2)
!415 = !DILocation(line: 376, column: 7, scope: !414)
!416 = !DILocation(line: 376, column: 14, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !2, line: 376, column: 2)
!418 = !DILocation(line: 376, column: 36, scope: !417)
!419 = !DILocation(line: 376, column: 18, scope: !417)
!420 = !DILocation(line: 376, column: 16, scope: !417)
!421 = !DILocation(line: 376, column: 2, scope: !414)
!422 = !DILocation(line: 378, column: 19, scope: !423)
!423 = distinct !DILexicalBlock(scope: !417, file: !2, line: 377, column: 2)
!424 = !DILocation(line: 378, column: 40, scope: !423)
!425 = !DILocation(line: 378, column: 47, scope: !423)
!426 = !DILocation(line: 378, column: 25, scope: !423)
!427 = !DILocation(line: 378, column: 6, scope: !423)
!428 = !DILocation(line: 379, column: 10, scope: !429)
!429 = distinct !DILexicalBlock(scope: !423, file: !2, line: 379, column: 10)
!430 = !DILocation(line: 379, column: 10, scope: !423)
!431 = !DILocation(line: 380, column: 16, scope: !429)
!432 = !DILocation(line: 380, column: 37, scope: !429)
!433 = !DILocation(line: 380, column: 44, scope: !429)
!434 = !DILocation(line: 380, column: 22, scope: !429)
!435 = !DILocation(line: 380, column: 3, scope: !429)
!436 = !DILocation(line: 381, column: 2, scope: !423)
!437 = !DILocation(line: 376, column: 45, scope: !417)
!438 = !DILocation(line: 376, column: 2, scope: !417)
!439 = distinct !{!439, !421, !440, !233}
!440 = !DILocation(line: 381, column: 2, scope: !414)
!441 = !DILocation(line: 383, column: 6, scope: !442)
!442 = distinct !DILexicalBlock(scope: !332, file: !2, line: 383, column: 6)
!443 = !DILocation(line: 383, column: 6, scope: !332)
!444 = !DILocation(line: 385, column: 11, scope: !445)
!445 = distinct !DILexicalBlock(scope: !446, file: !2, line: 385, column: 10)
!446 = distinct !DILexicalBlock(scope: !442, file: !2, line: 384, column: 2)
!447 = !DILocation(line: 385, column: 10, scope: !446)
!448 = !DILocation(line: 386, column: 3, scope: !445)
!449 = !DILocation(line: 388, column: 18, scope: !446)
!450 = !DILocation(line: 388, column: 7, scope: !446)
!451 = !DILocation(line: 388, column: 26, scope: !446)
!452 = !DILocation(line: 388, column: 39, scope: !446)
!453 = !DILocation(line: 388, column: 52, scope: !446)
!454 = !DILocation(line: 387, column: 6, scope: !446)
!455 = !DILocation(line: 389, column: 12, scope: !446)
!456 = !DILocation(line: 390, column: 2, scope: !446)
!457 = !DILocation(line: 391, column: 26, scope: !332)
!458 = !DILocation(line: 391, column: 30, scope: !332)
!459 = !DILocation(line: 391, column: 48, scope: !332)
!460 = !DILocation(line: 391, column: 36, scope: !332)
!461 = !DILocation(line: 391, column: 56, scope: !332)
!462 = !DILocation(line: 391, column: 9, scope: !332)
!463 = !DILocation(line: 393, column: 19, scope: !332)
!464 = !DILocation(line: 393, column: 2, scope: !332)
!465 = !DILocation(line: 395, column: 20, scope: !332)
!466 = !DILocation(line: 395, column: 2, scope: !332)
!467 = !DILocation(line: 396, column: 20, scope: !332)
!468 = !DILocation(line: 396, column: 2, scope: !332)
!469 = !DILocation(line: 397, column: 6, scope: !470)
!470 = distinct !DILexicalBlock(scope: !332, file: !2, line: 397, column: 6)
!471 = !DILocation(line: 397, column: 6, scope: !332)
!472 = !DILocation(line: 398, column: 17, scope: !470)
!473 = !DILocation(line: 398, column: 6, scope: !470)
!474 = !DILocation(line: 400, column: 20, scope: !149)
!475 = !DILocation(line: 400, column: 5, scope: !149)
!476 = !DILocation(line: 402, column: 5, scope: !149)
!477 = !DILocation(line: 403, column: 5, scope: !149)
!478 = !DILocation(line: 404, column: 1, scope: !149)
!479 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 158, type: !480, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !18, retainedNodes: !153)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !26, !137}
!482 = !DILocalVariable(name: "program", arg: 1, scope: !479, file: !2, line: 158, type: !26)
!483 = !DILocation(line: 158, column: 14, scope: !479)
!484 = !DILocalVariable(name: "error", arg: 2, scope: !479, file: !2, line: 158, type: !137)
!485 = !DILocation(line: 158, column: 27, scope: !479)
!486 = !DILocalVariable(name: "file", scope: !479, file: !2, line: 160, type: !487)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !489, line: 7, baseType: !490)
!489 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !491, line: 49, size: 1728, elements: !492)
!491 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!492 = !{!493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !508, !510, !511, !512, !513, !515, !517, !518, !521, !523, !526, !529, !530, !532, !535, !536}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !490, file: !491, line: 51, baseType: !137, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !490, file: !491, line: 54, baseType: !26, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !490, file: !491, line: 55, baseType: !26, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !490, file: !491, line: 56, baseType: !26, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !490, file: !491, line: 57, baseType: !26, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !490, file: !491, line: 58, baseType: !26, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !490, file: !491, line: 59, baseType: !26, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !490, file: !491, line: 60, baseType: !26, size: 64, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !490, file: !491, line: 61, baseType: !26, size: 64, offset: 512)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !490, file: !491, line: 64, baseType: !26, size: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !490, file: !491, line: 65, baseType: !26, size: 64, offset: 640)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !490, file: !491, line: 66, baseType: !26, size: 64, offset: 704)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !490, file: !491, line: 68, baseType: !506, size: 64, offset: 768)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !491, line: 36, flags: DIFlagFwdDecl)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !490, file: !491, line: 70, baseType: !509, size: 64, offset: 832)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !490, file: !491, line: 72, baseType: !137, size: 32, offset: 896)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !490, file: !491, line: 73, baseType: !137, size: 32, offset: 928)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !490, file: !491, line: 74, baseType: !357, size: 64, offset: 960)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !490, file: !491, line: 77, baseType: !514, size: 16, offset: 1024)
!514 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !490, file: !491, line: 78, baseType: !516, size: 8, offset: 1040)
!516 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !490, file: !491, line: 79, baseType: !32, size: 8, offset: 1048)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !490, file: !491, line: 81, baseType: !519, size: 64, offset: 1088)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !491, line: 43, baseType: null)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !490, file: !491, line: 89, baseType: !522, size: 64, offset: 1152)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !342, line: 153, baseType: !358)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !490, file: !491, line: 91, baseType: !524, size: 64, offset: 1216)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !491, line: 37, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !490, file: !491, line: 92, baseType: !527, size: 64, offset: 1280)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !491, line: 38, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !490, file: !491, line: 93, baseType: !509, size: 64, offset: 1344)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !490, file: !491, line: 94, baseType: !531, size: 64, offset: 1408)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !490, file: !491, line: 95, baseType: !533, size: 64, offset: 1472)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !534, line: 46, baseType: !28)
!534 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !490, file: !491, line: 96, baseType: !137, size: 32, offset: 1536)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !490, file: !491, line: 98, baseType: !49, size: 160, offset: 1568)
!537 = !DILocation(line: 160, column: 11, scope: !479)
!538 = !DILocation(line: 160, column: 18, scope: !479)
!539 = !DILocation(line: 160, column: 26, scope: !479)
!540 = !DILocation(line: 160, column: 35, scope: !479)
!541 = !DILocation(line: 162, column: 14, scope: !479)
!542 = !DILocation(line: 163, column: 7, scope: !479)
!543 = !DILocation(line: 162, column: 5, scope: !479)
!544 = !DILocation(line: 164, column: 14, scope: !479)
!545 = !DILocation(line: 164, column: 62, scope: !479)
!546 = !DILocation(line: 164, column: 5, scope: !479)
!547 = !DILocation(line: 169, column: 14, scope: !479)
!548 = !DILocation(line: 169, column: 5, scope: !479)
!549 = !DILocation(line: 170, column: 14, scope: !479)
!550 = !DILocation(line: 170, column: 5, scope: !479)
!551 = !DILocation(line: 171, column: 14, scope: !479)
!552 = !DILocation(line: 171, column: 5, scope: !479)
!553 = !DILocation(line: 172, column: 14, scope: !479)
!554 = !DILocation(line: 172, column: 5, scope: !479)
!555 = !DILocation(line: 174, column: 14, scope: !479)
!556 = !DILocation(line: 174, column: 5, scope: !479)
!557 = !DILocation(line: 175, column: 14, scope: !479)
!558 = !DILocation(line: 175, column: 5, scope: !479)
!559 = !DILocation(line: 176, column: 14, scope: !479)
!560 = !DILocation(line: 176, column: 5, scope: !479)
!561 = !DILocation(line: 177, column: 14, scope: !479)
!562 = !DILocation(line: 177, column: 5, scope: !479)
!563 = !DILocation(line: 184, column: 11, scope: !479)
!564 = !DILocation(line: 184, column: 5, scope: !479)
!565 = distinct !DISubprogram(name: "cache_print_set", scope: !2, file: !2, line: 204, type: !566, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !18, retainedNodes: !153)
!566 = !DISubroutineType(types: !567)
!567 = !{!204, !163, !176, !21, !204}
!568 = !DILocalVariable(name: "set", arg: 1, scope: !565, file: !2, line: 204, type: !163)
!569 = !DILocation(line: 204, column: 29, scope: !565)
!570 = !DILocalVariable(name: "dirs", arg: 2, scope: !565, file: !2, line: 204, type: !176)
!571 = !DILocation(line: 204, column: 44, scope: !565)
!572 = !DILocalVariable(name: "base_name", arg: 3, scope: !565, file: !2, line: 204, type: !21)
!573 = !DILocation(line: 204, column: 65, scope: !565)
!574 = !DILocalVariable(name: "verbose", arg: 4, scope: !565, file: !2, line: 204, type: !204)
!575 = !DILocation(line: 204, column: 83, scope: !565)
!576 = !DILocalVariable(name: "dir", scope: !565, file: !2, line: 206, type: !27)
!577 = !DILocation(line: 206, column: 18, scope: !565)
!578 = !DILocalVariable(name: "base", scope: !565, file: !2, line: 207, type: !21)
!579 = !DILocation(line: 207, column: 22, scope: !565)
!580 = !DILocalVariable(name: "n", scope: !565, file: !2, line: 208, type: !137)
!581 = !DILocation(line: 208, column: 14, scope: !565)
!582 = !DILocalVariable(name: "ndir", scope: !565, file: !2, line: 209, type: !137)
!583 = !DILocation(line: 209, column: 14, scope: !565)
!584 = !DILocalVariable(name: "list", scope: !565, file: !2, line: 210, type: !183)
!585 = !DILocation(line: 210, column: 20, scope: !565)
!586 = !DILocation(line: 212, column: 29, scope: !565)
!587 = !DILocation(line: 212, column: 12, scope: !565)
!588 = !DILocation(line: 212, column: 10, scope: !565)
!589 = !DILocation(line: 213, column: 10, scope: !590)
!590 = distinct !DILexicalBlock(scope: !565, file: !2, line: 213, column: 9)
!591 = !DILocation(line: 213, column: 9, scope: !565)
!592 = !DILocation(line: 214, column: 2, scope: !590)
!593 = !DILocation(line: 216, column: 5, scope: !565)
!594 = !DILocation(line: 216, column: 34, scope: !565)
!595 = !DILocation(line: 216, column: 19, scope: !565)
!596 = !DILocation(line: 216, column: 17, scope: !565)
!597 = !DILocation(line: 218, column: 25, scope: !598)
!598 = distinct !DILexicalBlock(scope: !565, file: !2, line: 217, column: 5)
!599 = !DILocation(line: 218, column: 36, scope: !598)
!600 = !DILocation(line: 218, column: 9, scope: !598)
!601 = !DILocation(line: 218, column: 7, scope: !598)
!602 = !DILocation(line: 219, column: 21, scope: !603)
!603 = distinct !DILexicalBlock(scope: !598, file: !2, line: 219, column: 6)
!604 = !DILocation(line: 219, column: 29, scope: !603)
!605 = !DILocation(line: 219, column: 7, scope: !603)
!606 = !DILocation(line: 219, column: 6, scope: !598)
!607 = !DILocation(line: 220, column: 6, scope: !603)
!608 = !DILocation(line: 221, column: 6, scope: !609)
!609 = distinct !DILexicalBlock(scope: !598, file: !2, line: 221, column: 6)
!610 = !DILocation(line: 221, column: 25, scope: !609)
!611 = !DILocation(line: 221, column: 6, scope: !598)
!612 = !DILocation(line: 222, column: 6, scope: !609)
!613 = !DILocation(line: 223, column: 18, scope: !614)
!614 = distinct !DILexicalBlock(scope: !598, file: !2, line: 223, column: 6)
!615 = !DILocation(line: 223, column: 7, scope: !614)
!616 = !DILocation(line: 223, column: 6, scope: !598)
!617 = !DILocation(line: 224, column: 6, scope: !614)
!618 = !DILocation(line: 225, column: 13, scope: !619)
!619 = distinct !DILexicalBlock(scope: !598, file: !2, line: 225, column: 13)
!620 = !DILocation(line: 225, column: 32, scope: !619)
!621 = !DILocation(line: 225, column: 13, scope: !598)
!622 = !DILocation(line: 226, column: 6, scope: !619)
!623 = !DILocation(line: 227, column: 21, scope: !624)
!624 = distinct !DILexicalBlock(scope: !598, file: !2, line: 227, column: 6)
!625 = !DILocation(line: 227, column: 7, scope: !624)
!626 = !DILocation(line: 227, column: 6, scope: !598)
!627 = !DILocation(line: 228, column: 6, scope: !624)
!628 = !DILocation(line: 229, column: 6, scope: !629)
!629 = distinct !DILexicalBlock(scope: !598, file: !2, line: 229, column: 6)
!630 = !DILocation(line: 229, column: 26, scope: !629)
!631 = !DILocation(line: 229, column: 6, scope: !598)
!632 = !DILocation(line: 230, column: 6, scope: !629)
!633 = !DILocation(line: 231, column: 6, scope: !598)
!634 = distinct !{!634, !593, !635, !233}
!635 = !DILocation(line: 232, column: 5, scope: !565)
!636 = !DILocation(line: 234, column: 12, scope: !637)
!637 = distinct !DILexicalBlock(scope: !565, file: !2, line: 234, column: 5)
!638 = !DILocation(line: 234, column: 10, scope: !637)
!639 = !DILocation(line: 234, column: 17, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !2, line: 234, column: 5)
!641 = !DILocation(line: 234, column: 21, scope: !640)
!642 = !DILocation(line: 234, column: 26, scope: !640)
!643 = !DILocation(line: 234, column: 19, scope: !640)
!644 = !DILocation(line: 234, column: 5, scope: !637)
!645 = !DILocalVariable(name: "font", scope: !646, file: !2, line: 236, type: !171)
!646 = distinct !DILexicalBlock(scope: !640, file: !2, line: 235, column: 5)
!647 = !DILocation(line: 236, column: 15, scope: !646)
!648 = !DILocation(line: 236, column: 22, scope: !646)
!649 = !DILocation(line: 236, column: 27, scope: !646)
!650 = !DILocation(line: 236, column: 33, scope: !646)
!651 = !DILocalVariable(name: "s", scope: !646, file: !2, line: 237, type: !27)
!652 = !DILocation(line: 237, column: 11, scope: !646)
!653 = !DILocation(line: 239, column: 23, scope: !646)
!654 = !DILocation(line: 239, column: 6, scope: !646)
!655 = !DILocation(line: 239, column: 4, scope: !646)
!656 = !DILocation(line: 240, column: 6, scope: !657)
!657 = distinct !DILexicalBlock(scope: !646, file: !2, line: 240, column: 6)
!658 = !DILocation(line: 240, column: 6, scope: !646)
!659 = !DILocation(line: 242, column: 20, scope: !660)
!660 = distinct !DILexicalBlock(scope: !657, file: !2, line: 241, column: 2)
!661 = !DILocation(line: 242, column: 6, scope: !660)
!662 = !DILocation(line: 243, column: 17, scope: !660)
!663 = !DILocation(line: 243, column: 6, scope: !660)
!664 = !DILocation(line: 244, column: 2, scope: !660)
!665 = !DILocation(line: 245, column: 5, scope: !646)
!666 = !DILocation(line: 234, column: 34, scope: !640)
!667 = !DILocation(line: 234, column: 5, scope: !640)
!668 = distinct !{!668, !644, !669, !233}
!669 = !DILocation(line: 245, column: 5, scope: !637)
!670 = !DILocation(line: 246, column: 9, scope: !671)
!671 = distinct !DILexicalBlock(scope: !565, file: !2, line: 246, column: 9)
!672 = !DILocation(line: 246, column: 17, scope: !671)
!673 = !DILocation(line: 246, column: 21, scope: !671)
!674 = !DILocation(line: 246, column: 26, scope: !671)
!675 = !DILocation(line: 246, column: 32, scope: !671)
!676 = !DILocation(line: 246, column: 36, scope: !671)
!677 = !DILocation(line: 246, column: 9, scope: !565)
!678 = !DILocation(line: 247, column: 2, scope: !671)
!679 = !DILocation(line: 249, column: 20, scope: !565)
!680 = !DILocation(line: 249, column: 5, scope: !565)
!681 = !DILocation(line: 251, column: 5, scope: !565)
!682 = !DILabel(scope: !565, name: "bail3", file: !2, line: 253)
!683 = !DILocation(line: 253, column: 1, scope: !565)
!684 = !DILocation(line: 254, column: 20, scope: !565)
!685 = !DILocation(line: 254, column: 5, scope: !565)
!686 = !DILabel(scope: !565, name: "bail2", file: !2, line: 255)
!687 = !DILocation(line: 255, column: 1, scope: !565)
!688 = !DILocation(line: 256, column: 5, scope: !565)
!689 = !DILocation(line: 257, column: 1, scope: !565)
!690 = distinct !DISubprogram(name: "file_base_name", scope: !2, file: !2, line: 192, type: !691, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !18, retainedNodes: !153)
!691 = !DISubroutineType(types: !692)
!692 = !{!21, !21, !21}
!693 = !DILocalVariable(name: "cache", arg: 1, scope: !690, file: !2, line: 192, type: !21)
!694 = !DILocation(line: 192, column: 32, scope: !690)
!695 = !DILocalVariable(name: "file", arg: 2, scope: !690, file: !2, line: 192, type: !21)
!696 = !DILocation(line: 192, column: 54, scope: !690)
!697 = !DILocalVariable(name: "cache_len", scope: !690, file: !2, line: 194, type: !137)
!698 = !DILocation(line: 194, column: 14, scope: !690)
!699 = !DILocation(line: 194, column: 43, scope: !690)
!700 = !DILocation(line: 194, column: 26, scope: !690)
!701 = !DILocation(line: 196, column: 28, scope: !702)
!702 = distinct !DILexicalBlock(scope: !690, file: !2, line: 196, column: 9)
!703 = !DILocation(line: 196, column: 44, scope: !702)
!704 = !DILocation(line: 196, column: 50, scope: !702)
!705 = !DILocation(line: 196, column: 10, scope: !702)
!706 = !DILocation(line: 196, column: 61, scope: !702)
!707 = !DILocation(line: 196, column: 64, scope: !702)
!708 = !DILocation(line: 196, column: 69, scope: !702)
!709 = !DILocation(line: 196, column: 80, scope: !702)
!710 = !DILocation(line: 196, column: 9, scope: !690)
!711 = !DILocation(line: 197, column: 9, scope: !702)
!712 = !DILocation(line: 197, column: 16, scope: !702)
!713 = !DILocation(line: 197, column: 14, scope: !702)
!714 = !DILocation(line: 197, column: 26, scope: !702)
!715 = !DILocation(line: 197, column: 2, scope: !702)
!716 = !DILocation(line: 198, column: 12, scope: !690)
!717 = !DILocation(line: 198, column: 5, scope: !690)
!718 = !DILocation(line: 199, column: 1, scope: !690)
!719 = distinct !DISubprogram(name: "write_string", scope: !2, file: !2, line: 145, type: !720, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !18, retainedNodes: !153)
!720 = !DISubroutineType(types: !721)
!721 = !{!204, !487, !21}
!722 = !DILocalVariable(name: "f", arg: 1, scope: !719, file: !2, line: 145, type: !487)
!723 = !DILocation(line: 145, column: 21, scope: !719)
!724 = !DILocalVariable(name: "string", arg: 2, scope: !719, file: !2, line: 145, type: !21)
!725 = !DILocation(line: 145, column: 39, scope: !719)
!726 = !DILocation(line: 148, column: 9, scope: !727)
!727 = distinct !DILexicalBlock(scope: !719, file: !2, line: 148, column: 9)
!728 = !DILocation(line: 148, column: 23, scope: !727)
!729 = !DILocation(line: 148, column: 9, scope: !719)
!730 = !DILocation(line: 149, column: 2, scope: !727)
!731 = !DILocation(line: 150, column: 23, scope: !732)
!732 = distinct !DILexicalBlock(scope: !719, file: !2, line: 150, column: 9)
!733 = !DILocation(line: 150, column: 26, scope: !732)
!734 = !DILocation(line: 150, column: 10, scope: !732)
!735 = !DILocation(line: 150, column: 9, scope: !719)
!736 = !DILocation(line: 151, column: 2, scope: !732)
!737 = !DILocation(line: 152, column: 9, scope: !738)
!738 = distinct !DILexicalBlock(scope: !719, file: !2, line: 152, column: 9)
!739 = !DILocation(line: 152, column: 23, scope: !738)
!740 = !DILocation(line: 152, column: 9, scope: !719)
!741 = !DILocation(line: 153, column: 2, scope: !738)
!742 = !DILocation(line: 154, column: 5, scope: !719)
!743 = !DILocation(line: 155, column: 1, scope: !719)
!744 = distinct !DISubprogram(name: "write_int", scope: !2, file: !2, line: 139, type: !745, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !18, retainedNodes: !153)
!745 = !DISubroutineType(types: !746)
!746 = !{!204, !487, !137}
!747 = !DILocalVariable(name: "f", arg: 1, scope: !744, file: !2, line: 139, type: !487)
!748 = !DILocation(line: 139, column: 18, scope: !744)
!749 = !DILocalVariable(name: "i", arg: 2, scope: !744, file: !2, line: 139, type: !137)
!750 = !DILocation(line: 139, column: 25, scope: !744)
!751 = !DILocation(line: 141, column: 25, scope: !744)
!752 = !DILocation(line: 141, column: 44, scope: !744)
!753 = !DILocation(line: 141, column: 28, scope: !744)
!754 = !DILocation(line: 141, column: 12, scope: !744)
!755 = !DILocation(line: 141, column: 5, scope: !744)
!756 = distinct !DISubprogram(name: "write_chars", scope: !2, file: !2, line: 94, type: !720, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !18, retainedNodes: !153)
!757 = !DILocalVariable(name: "f", arg: 1, scope: !756, file: !2, line: 94, type: !487)
!758 = !DILocation(line: 94, column: 20, scope: !756)
!759 = !DILocalVariable(name: "chars", arg: 2, scope: !756, file: !2, line: 94, type: !21)
!760 = !DILocation(line: 94, column: 38, scope: !756)
!761 = !DILocalVariable(name: "c", scope: !756, file: !2, line: 96, type: !23)
!762 = !DILocation(line: 96, column: 16, scope: !756)
!763 = !DILocation(line: 97, column: 5, scope: !756)
!764 = !DILocation(line: 97, column: 23, scope: !756)
!765 = !DILocation(line: 97, column: 17, scope: !756)
!766 = !DILocation(line: 97, column: 15, scope: !756)
!767 = !DILocation(line: 99, column: 10, scope: !768)
!768 = distinct !DILexicalBlock(scope: !756, file: !2, line: 98, column: 5)
!769 = !DILocation(line: 99, column: 2, scope: !768)
!770 = !DILocation(line: 102, column: 10, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !2, line: 102, column: 10)
!772 = distinct !DILexicalBlock(scope: !768, file: !2, line: 99, column: 13)
!773 = !DILocation(line: 102, column: 25, scope: !771)
!774 = !DILocation(line: 102, column: 10, scope: !772)
!775 = !DILocation(line: 103, column: 3, scope: !771)
!776 = !DILocation(line: 102, column: 28, scope: !771)
!777 = !DILocation(line: 106, column: 10, scope: !778)
!778 = distinct !DILexicalBlock(scope: !772, file: !2, line: 106, column: 10)
!779 = !DILocation(line: 106, column: 22, scope: !778)
!780 = !DILocation(line: 106, column: 10, scope: !772)
!781 = !DILocation(line: 107, column: 3, scope: !778)
!782 = !DILocation(line: 108, column: 2, scope: !772)
!783 = distinct !{!783, !763, !784, !233}
!784 = !DILocation(line: 109, column: 5, scope: !756)
!785 = !DILocation(line: 110, column: 5, scope: !756)
!786 = !DILocation(line: 111, column: 1, scope: !756)
!787 = distinct !DISubprogram(name: "write_ulong", scope: !2, file: !2, line: 114, type: !788, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !18, retainedNodes: !153)
!788 = !DISubroutineType(types: !789)
!789 = !{!204, !487, !28}
!790 = !DILocalVariable(name: "f", arg: 1, scope: !787, file: !2, line: 114, type: !487)
!791 = !DILocation(line: 114, column: 20, scope: !787)
!792 = !DILocalVariable(name: "t", arg: 2, scope: !787, file: !2, line: 114, type: !28)
!793 = !DILocation(line: 114, column: 37, scope: !787)
!794 = !DILocalVariable(name: "pow", scope: !787, file: !2, line: 116, type: !137)
!795 = !DILocation(line: 116, column: 13, scope: !787)
!796 = !DILocalVariable(name: "temp", scope: !787, file: !2, line: 117, type: !28)
!797 = !DILocation(line: 117, column: 21, scope: !787)
!798 = !DILocalVariable(name: "digit", scope: !787, file: !2, line: 117, type: !28)
!799 = !DILocation(line: 117, column: 27, scope: !787)
!800 = !DILocation(line: 119, column: 12, scope: !787)
!801 = !DILocation(line: 119, column: 10, scope: !787)
!802 = !DILocation(line: 120, column: 9, scope: !787)
!803 = !DILocation(line: 121, column: 5, scope: !787)
!804 = !DILocation(line: 121, column: 12, scope: !787)
!805 = !DILocation(line: 121, column: 17, scope: !787)
!806 = !DILocation(line: 123, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !787, file: !2, line: 122, column: 5)
!808 = !DILocation(line: 124, column: 6, scope: !807)
!809 = distinct !{!809, !803, !810, !233}
!810 = !DILocation(line: 125, column: 5, scope: !787)
!811 = !DILocation(line: 126, column: 12, scope: !787)
!812 = !DILocation(line: 126, column: 10, scope: !787)
!813 = !DILocation(line: 127, column: 5, scope: !787)
!814 = !DILocation(line: 127, column: 12, scope: !787)
!815 = !DILocation(line: 129, column: 10, scope: !816)
!816 = distinct !DILexicalBlock(scope: !787, file: !2, line: 128, column: 5)
!817 = !DILocation(line: 129, column: 17, scope: !816)
!818 = !DILocation(line: 129, column: 15, scope: !816)
!819 = !DILocation(line: 129, column: 8, scope: !816)
!820 = !DILocation(line: 130, column: 6, scope: !821)
!821 = distinct !DILexicalBlock(scope: !816, file: !2, line: 130, column: 6)
!822 = !DILocation(line: 130, column: 35, scope: !821)
!823 = !DILocation(line: 130, column: 6, scope: !816)
!824 = !DILocation(line: 131, column: 6, scope: !821)
!825 = !DILocation(line: 132, column: 9, scope: !816)
!826 = !DILocation(line: 132, column: 16, scope: !816)
!827 = !DILocation(line: 132, column: 22, scope: !816)
!828 = !DILocation(line: 132, column: 20, scope: !816)
!829 = !DILocation(line: 132, column: 14, scope: !816)
!830 = !DILocation(line: 132, column: 7, scope: !816)
!831 = !DILocation(line: 133, column: 8, scope: !816)
!832 = !DILocation(line: 133, column: 12, scope: !816)
!833 = !DILocation(line: 133, column: 6, scope: !816)
!834 = distinct !{!834, !813, !835, !233}
!835 = !DILocation(line: 134, column: 5, scope: !787)
!836 = !DILocation(line: 135, column: 5, scope: !787)
!837 = !DILocation(line: 136, column: 1, scope: !787)
