; ModuleID = 'tools/mount.cpp'
source_filename = "tools/mount.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.passwd = type { ptr, ptr, i32, i32, ptr, ptr, ptr }

$_Z13hasCorrectUIDPKc = comdat any

$_Z6hasUIDPKc = comdat any

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [47 x i8] c"Usage: %s <-b|-r> <source path> <target path>\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [24 x i8] c"       %s -u <target>.\0A\00", align 1, !dbg !8
@.str.2 = private unnamed_addr constant [48 x i8] c"       -b bind and mount the source to target.\0A\00", align 1, !dbg !13
@.str.3 = private unnamed_addr constant [60 x i8] c"       -r bind and mount the source to target as readonly.\0A\00", align 1, !dbg !18
@.str.4 = private unnamed_addr constant [34 x i8] c"       -u to unmount the target.\0A\00", align 1, !dbg !23
@.str.5 = private unnamed_addr constant [10 x i8] c"coolmount\00", align 1, !dbg !28
@.str.6 = private unnamed_addr constant [11 x i8] c"Aborting.\0A\00", align 1, !dbg !33
@.str.7 = private unnamed_addr constant [3 x i8] c"-u\00", align 1, !dbg !38
@.str.8 = private unnamed_addr constant [40 x i8] c"%s: unmount failed to detach [%s]: %s.\0A\00", align 1, !dbg !43
@.str.9 = private unnamed_addr constant [40 x i8] c"%s: forced unmount of [%s] failed: %s.\0A\00", align 1, !dbg !48
@.str.10 = private unnamed_addr constant [54 x i8] c"%s: cannot mount from invalid source directory [%s].\0A\00", align 1, !dbg !50
@.str.11 = private unnamed_addr constant [52 x i8] c"%s: cannot mount on invalid target directory [%s].\0A\00", align 1, !dbg !55
@.str.12 = private unnamed_addr constant [3 x i8] c"-b\00", align 1, !dbg !60
@.str.13 = private unnamed_addr constant [44 x i8] c"%s: mount failed to bind [%s] to [%s]: %s.\0A\00", align 1, !dbg !62
@.str.14 = private unnamed_addr constant [3 x i8] c"-r\00", align 1, !dbg !67
@.str.15 = private unnamed_addr constant [45 x i8] c"%s: mount failed remount [%s] readonly: %s.\0A\00", align 1, !dbg !69
@.str.16 = private unnamed_addr constant [41 x i8] c"%s: mount failed make [%s] private: %s.\0A\00", align 1, !dbg !74
@.str.17 = private unnamed_addr constant [5 x i8] c"cool\00", align 1, !dbg !79
@.str.18 = private unnamed_addr constant [53 x i8] c"Security: %s incorrect user-name, other than 'cool'\0A\00", align 1, !dbg !85

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z5usagePKc(ptr noundef %0) #0 !dbg !139 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !144, metadata !DIExpression()), !dbg !145
  %3 = load ptr, ptr @stderr, align 8, !dbg !146
  %4 = load ptr, ptr %2, align 8, !dbg !147
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef %4), !dbg !148
  %6 = load ptr, ptr @stderr, align 8, !dbg !149
  %7 = load ptr, ptr %2, align 8, !dbg !150
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.1, ptr noundef %7), !dbg !151
  %9 = load ptr, ptr @stderr, align 8, !dbg !152
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.2), !dbg !153
  %11 = load ptr, ptr @stderr, align 8, !dbg !154
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.3), !dbg !155
  %13 = load ptr, ptr @stderr, align 8, !dbg !156
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.4), !dbg !157
  ret void, !dbg !158
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #3 !dbg !159 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca %struct.stat, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !164, metadata !DIExpression()), !dbg !165
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !166, metadata !DIExpression()), !dbg !167
  %18 = call noundef i32 @_Z13hasCorrectUIDPKc(ptr noundef @.str.5), !dbg !168
  %19 = icmp ne i32 %18, 0, !dbg !168
  br i1 %19, label %23, label %20, !dbg !170

20:                                               ; preds = %2
  %21 = load ptr, ptr @stderr, align 8, !dbg !171
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.6), !dbg !173
  store i32 70, ptr %3, align 4, !dbg !174
  br label %198, !dbg !174

23:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !175, metadata !DIExpression()), !dbg !176
  %24 = load ptr, ptr %5, align 8, !dbg !177
  %25 = getelementptr inbounds ptr, ptr %24, i64 0, !dbg !177
  %26 = load ptr, ptr %25, align 8, !dbg !177
  store ptr %26, ptr %6, align 8, !dbg !176
  %27 = load i32, ptr %4, align 4, !dbg !178
  %28 = icmp slt i32 %27, 3, !dbg !180
  br i1 %28, label %29, label %31, !dbg !181

29:                                               ; preds = %23
  %30 = load ptr, ptr %6, align 8, !dbg !182
  call void @_Z5usagePKc(ptr noundef %30), !dbg !184
  store i32 64, ptr %3, align 4, !dbg !185
  br label %198, !dbg !185

31:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %7, metadata !186, metadata !DIExpression()), !dbg !187
  %32 = load ptr, ptr %5, align 8, !dbg !188
  %33 = getelementptr inbounds ptr, ptr %32, i64 1, !dbg !188
  %34 = load ptr, ptr %33, align 8, !dbg !188
  store ptr %34, ptr %7, align 8, !dbg !187
  %35 = load i32, ptr %4, align 4, !dbg !189
  %36 = icmp eq i32 %35, 3, !dbg !191
  br i1 %36, label %37, label %95, !dbg !192

37:                                               ; preds = %31
  %38 = load ptr, ptr %7, align 8, !dbg !193
  %39 = call i32 @strcmp(ptr noundef %38, ptr noundef @.str.7) #7, !dbg !194
  %40 = icmp eq i32 %39, 0, !dbg !195
  br i1 %40, label %41, label %95, !dbg !196

41:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata ptr %8, metadata !197, metadata !DIExpression()), !dbg !199
  %42 = load ptr, ptr %5, align 8, !dbg !200
  %43 = getelementptr inbounds ptr, ptr %42, i64 2, !dbg !200
  %44 = load ptr, ptr %43, align 8, !dbg !200
  store ptr %44, ptr %8, align 8, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %9, metadata !201, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata ptr %10, metadata !241, metadata !DIExpression()), !dbg !244
  %45 = load ptr, ptr %8, align 8, !dbg !245
  %46 = call i32 @stat(ptr noundef %45, ptr noundef %9) #8, !dbg !246
  %47 = icmp eq i32 %46, 0, !dbg !247
  br i1 %47, label %48, label %53, !dbg !248

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 3, !dbg !249
  %50 = load i32, ptr %49, align 8, !dbg !249
  %51 = and i32 %50, 61440, !dbg !249
  %52 = icmp eq i32 %51, 16384, !dbg !249
  br label %53

53:                                               ; preds = %48, %41
  %54 = phi i1 [ false, %41 ], [ %52, %48 ], !dbg !250
  %55 = zext i1 %54 to i8, !dbg !244
  store i8 %55, ptr %10, align 1, !dbg !244
  %56 = load i8, ptr %10, align 1, !dbg !251
  %57 = trunc i8 %56 to i1, !dbg !251
  br i1 %57, label %58, label %94, !dbg !253

58:                                               ; preds = %53
  call void @llvm.dbg.declare(metadata ptr %11, metadata !254, metadata !DIExpression()), !dbg !256
  %59 = load ptr, ptr %8, align 8, !dbg !257
  %60 = call i32 @umount2(ptr noundef %59, i32 noundef 2) #8, !dbg !258
  store i32 %60, ptr %11, align 4, !dbg !256
  %61 = load i32, ptr %11, align 4, !dbg !259
  %62 = icmp ne i32 %61, 0, !dbg !261
  br i1 %62, label %63, label %76, !dbg !262

63:                                               ; preds = %58
  %64 = call ptr @__errno_location() #9, !dbg !263
  %65 = load i32, ptr %64, align 4, !dbg !263
  %66 = icmp ne i32 %65, 22, !dbg !266
  br i1 %66, label %67, label %75, !dbg !267

67:                                               ; preds = %63
  %68 = load ptr, ptr @stderr, align 8, !dbg !268
  %69 = load ptr, ptr %6, align 8, !dbg !269
  %70 = load ptr, ptr %8, align 8, !dbg !270
  %71 = call ptr @__errno_location() #9, !dbg !271
  %72 = load i32, ptr %71, align 4, !dbg !271
  %73 = call ptr @strerror(i32 noundef %72) #8, !dbg !272
  %74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef @.str.8, ptr noundef %69, ptr noundef %70, ptr noundef %73), !dbg !273
  br label %75, !dbg !273

75:                                               ; preds = %67, %63
  br label %76, !dbg !274

76:                                               ; preds = %75, %58
  %77 = load ptr, ptr %8, align 8, !dbg !275
  %78 = call i32 @umount2(ptr noundef %77, i32 noundef 1) #8, !dbg !276
  store i32 %78, ptr %11, align 4, !dbg !277
  %79 = load i32, ptr %11, align 4, !dbg !278
  %80 = icmp ne i32 %79, 0, !dbg !278
  br i1 %80, label %81, label %93, !dbg !280

81:                                               ; preds = %76
  %82 = call ptr @__errno_location() #9, !dbg !281
  %83 = load i32, ptr %82, align 4, !dbg !281
  %84 = icmp ne i32 %83, 22, !dbg !282
  br i1 %84, label %85, label %93, !dbg !283

85:                                               ; preds = %81
  %86 = load ptr, ptr @stderr, align 8, !dbg !284
  %87 = load ptr, ptr %6, align 8, !dbg !286
  %88 = load ptr, ptr %8, align 8, !dbg !287
  %89 = call ptr @__errno_location() #9, !dbg !288
  %90 = load i32, ptr %89, align 4, !dbg !288
  %91 = call ptr @strerror(i32 noundef %90) #8, !dbg !289
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef @.str.9, ptr noundef %87, ptr noundef %88, ptr noundef %91), !dbg !290
  store i32 70, ptr %3, align 4, !dbg !291
  br label %198, !dbg !291

93:                                               ; preds = %81, %76
  br label %94, !dbg !292

94:                                               ; preds = %93, %53
  br label %195, !dbg !293

95:                                               ; preds = %37, %31
  %96 = load i32, ptr %4, align 4, !dbg !294
  %97 = icmp eq i32 %96, 4, !dbg !296
  br i1 %97, label %98, label %192, !dbg !297

98:                                               ; preds = %95
  call void @llvm.dbg.declare(metadata ptr %12, metadata !298, metadata !DIExpression()), !dbg !300
  %99 = load ptr, ptr %5, align 8, !dbg !301
  %100 = getelementptr inbounds ptr, ptr %99, i64 2, !dbg !301
  %101 = load ptr, ptr %100, align 8, !dbg !301
  store ptr %101, ptr %12, align 8, !dbg !300
  call void @llvm.dbg.declare(metadata ptr %13, metadata !302, metadata !DIExpression()), !dbg !303
  %102 = load ptr, ptr %12, align 8, !dbg !304
  %103 = call i32 @stat(ptr noundef %102, ptr noundef %13) #8, !dbg !306
  %104 = icmp ne i32 %103, 0, !dbg !307
  br i1 %104, label %110, label %105, !dbg !308

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.stat, ptr %13, i32 0, i32 3, !dbg !309
  %107 = load i32, ptr %106, align 8, !dbg !309
  %108 = and i32 %107, 61440, !dbg !309
  %109 = icmp eq i32 %108, 16384, !dbg !309
  br i1 %109, label %115, label %110, !dbg !310

110:                                              ; preds = %105, %98
  %111 = load ptr, ptr @stderr, align 8, !dbg !311
  %112 = load ptr, ptr %6, align 8, !dbg !313
  %113 = load ptr, ptr %12, align 8, !dbg !314
  %114 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef @.str.10, ptr noundef %112, ptr noundef %113), !dbg !315
  store i32 64, ptr %3, align 4, !dbg !316
  br label %198, !dbg !316

115:                                              ; preds = %105
  call void @llvm.dbg.declare(metadata ptr %14, metadata !317, metadata !DIExpression()), !dbg !318
  %116 = load ptr, ptr %5, align 8, !dbg !319
  %117 = getelementptr inbounds ptr, ptr %116, i64 3, !dbg !319
  %118 = load ptr, ptr %117, align 8, !dbg !319
  store ptr %118, ptr %14, align 8, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %15, metadata !320, metadata !DIExpression()), !dbg !321
  %119 = load ptr, ptr %14, align 8, !dbg !322
  %120 = call i32 @stat(ptr noundef %119, ptr noundef %13) #8, !dbg !323
  %121 = icmp eq i32 %120, 0, !dbg !324
  br i1 %121, label %122, label %127, !dbg !325

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.stat, ptr %13, i32 0, i32 3, !dbg !326
  %124 = load i32, ptr %123, align 8, !dbg !326
  %125 = and i32 %124, 61440, !dbg !326
  %126 = icmp eq i32 %125, 16384, !dbg !326
  br label %127

127:                                              ; preds = %122, %115
  %128 = phi i1 [ false, %115 ], [ %126, %122 ], !dbg !327
  %129 = zext i1 %128 to i8, !dbg !321
  store i8 %129, ptr %15, align 1, !dbg !321
  %130 = load i8, ptr %15, align 1, !dbg !328
  %131 = trunc i8 %130 to i1, !dbg !328
  br i1 %131, label %137, label %132, !dbg !330

132:                                              ; preds = %127
  %133 = load ptr, ptr @stderr, align 8, !dbg !331
  %134 = load ptr, ptr %6, align 8, !dbg !333
  %135 = load ptr, ptr %14, align 8, !dbg !334
  %136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef @.str.11, ptr noundef %134, ptr noundef %135), !dbg !335
  store i32 64, ptr %3, align 4, !dbg !336
  br label %198, !dbg !336

137:                                              ; preds = %127
  %138 = load ptr, ptr %7, align 8, !dbg !337
  %139 = call i32 @strcmp(ptr noundef %138, ptr noundef @.str.12) #7, !dbg !339
  %140 = icmp eq i32 %139, 0, !dbg !340
  br i1 %140, label %141, label %157, !dbg !341

141:                                              ; preds = %137
  call void @llvm.dbg.declare(metadata ptr %16, metadata !342, metadata !DIExpression()), !dbg !345
  %142 = load ptr, ptr %12, align 8, !dbg !346
  %143 = load ptr, ptr %14, align 8, !dbg !347
  %144 = call i32 @mount(ptr noundef %142, ptr noundef %143, ptr noundef null, i64 noundef 3236777984, ptr noundef null) #8, !dbg !348
  store i32 %144, ptr %16, align 4, !dbg !345
  %145 = load i32, ptr %16, align 4, !dbg !349
  %146 = icmp ne i32 %145, 0, !dbg !349
  br i1 %146, label %147, label %156, !dbg !351

147:                                              ; preds = %141
  %148 = load ptr, ptr @stderr, align 8, !dbg !352
  %149 = load ptr, ptr %6, align 8, !dbg !354
  %150 = load ptr, ptr %12, align 8, !dbg !355
  %151 = load ptr, ptr %14, align 8, !dbg !356
  %152 = call ptr @__errno_location() #9, !dbg !357
  %153 = load i32, ptr %152, align 4, !dbg !357
  %154 = call ptr @strerror(i32 noundef %153) #8, !dbg !358
  %155 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef @.str.13, ptr noundef %149, ptr noundef %150, ptr noundef %151, ptr noundef %154), !dbg !359
  store i32 70, ptr %3, align 4, !dbg !360
  br label %198, !dbg !360

156:                                              ; preds = %141
  br label %191, !dbg !361

157:                                              ; preds = %137
  %158 = load ptr, ptr %7, align 8, !dbg !362
  %159 = call i32 @strcmp(ptr noundef %158, ptr noundef @.str.14) #7, !dbg !364
  %160 = icmp eq i32 %159, 0, !dbg !365
  br i1 %160, label %161, label %190, !dbg !366

161:                                              ; preds = %157
  call void @llvm.dbg.declare(metadata ptr %17, metadata !367, metadata !DIExpression()), !dbg !369
  %162 = load ptr, ptr %12, align 8, !dbg !370
  %163 = load ptr, ptr %14, align 8, !dbg !371
  %164 = call i32 @mount(ptr noundef %162, ptr noundef %163, ptr noundef null, i64 noundef 54311, ptr noundef null) #8, !dbg !372
  store i32 %164, ptr %17, align 4, !dbg !369
  %165 = load i32, ptr %17, align 4, !dbg !373
  %166 = icmp ne i32 %165, 0, !dbg !373
  br i1 %166, label %167, label %175, !dbg !375

167:                                              ; preds = %161
  %168 = load ptr, ptr @stderr, align 8, !dbg !376
  %169 = load ptr, ptr %6, align 8, !dbg !378
  %170 = load ptr, ptr %14, align 8, !dbg !379
  %171 = call ptr @__errno_location() #9, !dbg !380
  %172 = load i32, ptr %171, align 4, !dbg !380
  %173 = call ptr @strerror(i32 noundef %172) #8, !dbg !381
  %174 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef @.str.15, ptr noundef %169, ptr noundef %170, ptr noundef %173), !dbg !382
  store i32 70, ptr %3, align 4, !dbg !383
  br label %198, !dbg !383

175:                                              ; preds = %161
  %176 = load ptr, ptr %12, align 8, !dbg !384
  %177 = load ptr, ptr %14, align 8, !dbg !385
  %178 = call i32 @mount(ptr noundef %176, ptr noundef %177, ptr noundef null, i64 noundef 147456, ptr noundef null) #8, !dbg !386
  store i32 %178, ptr %17, align 4, !dbg !387
  %179 = load i32, ptr %17, align 4, !dbg !388
  %180 = icmp ne i32 %179, 0, !dbg !388
  br i1 %180, label %181, label %189, !dbg !390

181:                                              ; preds = %175
  %182 = load ptr, ptr @stderr, align 8, !dbg !391
  %183 = load ptr, ptr %6, align 8, !dbg !393
  %184 = load ptr, ptr %14, align 8, !dbg !394
  %185 = call ptr @__errno_location() #9, !dbg !395
  %186 = load i32, ptr %185, align 4, !dbg !395
  %187 = call ptr @strerror(i32 noundef %186) #8, !dbg !396
  %188 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef @.str.16, ptr noundef %183, ptr noundef %184, ptr noundef %187), !dbg !397
  store i32 70, ptr %3, align 4, !dbg !398
  br label %198, !dbg !398

189:                                              ; preds = %175
  br label %190, !dbg !399

190:                                              ; preds = %189, %157
  br label %191

191:                                              ; preds = %190, %156
  br label %194, !dbg !400

192:                                              ; preds = %95
  %193 = load ptr, ptr %6, align 8, !dbg !401
  call void @_Z5usagePKc(ptr noundef %193), !dbg !403
  store i32 64, ptr %3, align 4, !dbg !404
  br label %198, !dbg !404

194:                                              ; preds = %191
  br label %195

195:                                              ; preds = %194, %94
  %196 = load ptr, ptr @stderr, align 8, !dbg !405
  %197 = call i32 @fflush(ptr noundef %196), !dbg !406
  store i32 0, ptr %3, align 4, !dbg !407
  br label %198, !dbg !407

198:                                              ; preds = %195, %192, %181, %167, %147, %132, %110, %85, %29, %20
  %199 = load i32, ptr %3, align 4, !dbg !408
  ret i32 %199, !dbg !408
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32 @_Z13hasCorrectUIDPKc(ptr noundef %0) #0 comdat !dbg !409 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !412, metadata !DIExpression()), !dbg !413
  %4 = call noundef i32 @_Z6hasUIDPKc(ptr noundef @.str.17), !dbg !414
  %5 = icmp ne i32 %4, 0, !dbg !414
  br i1 %5, label %6, label %7, !dbg !416

6:                                                ; preds = %1
  store i32 1, ptr %2, align 4, !dbg !417
  br label %11, !dbg !417

7:                                                ; preds = %1
  %8 = load ptr, ptr @stderr, align 8, !dbg !418
  %9 = load ptr, ptr %3, align 8, !dbg !420
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.18, ptr noundef %9), !dbg !421
  store i32 0, ptr %2, align 4, !dbg !422
  br label %11, !dbg !422

11:                                               ; preds = %7, %6
  %12 = load i32, ptr %2, align 4, !dbg !423
  ret i32 %12, !dbg !423
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare i32 @umount2(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #5

; Function Attrs: nounwind
declare i32 @mount(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #5

declare i32 @fflush(ptr noundef) #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32 @_Z6hasUIDPKc(ptr noundef %0) #0 comdat !dbg !424 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.declare(metadata ptr %4, metadata !427, metadata !DIExpression()), !dbg !439
  %5 = call i32 @getuid() #8, !dbg !440
  %6 = call ptr @getpwuid(i32 noundef %5), !dbg !441
  store ptr %6, ptr %4, align 8, !dbg !439
  %7 = load ptr, ptr %4, align 8, !dbg !442
  %8 = icmp ne ptr %7, null, !dbg !442
  br i1 %8, label %9, label %22, !dbg !444

9:                                                ; preds = %1
  %10 = load ptr, ptr %4, align 8, !dbg !445
  %11 = getelementptr inbounds %struct.passwd, ptr %10, i32 0, i32 0, !dbg !446
  %12 = load ptr, ptr %11, align 8, !dbg !446
  %13 = icmp ne ptr %12, null, !dbg !445
  br i1 %13, label %14, label %22, !dbg !447

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8, !dbg !448
  %16 = getelementptr inbounds %struct.passwd, ptr %15, i32 0, i32 0, !dbg !449
  %17 = load ptr, ptr %16, align 8, !dbg !449
  %18 = load ptr, ptr %3, align 8, !dbg !450
  %19 = call i32 @strcmp(ptr noundef %17, ptr noundef %18) #7, !dbg !451
  %20 = icmp ne i32 %19, 0, !dbg !451
  br i1 %20, label %22, label %21, !dbg !452

21:                                               ; preds = %14
  store i32 1, ptr %2, align 4, !dbg !453
  br label %23, !dbg !453

22:                                               ; preds = %14, %9, %1
  store i32 0, ptr %2, align 4, !dbg !454
  br label %23, !dbg !454

23:                                               ; preds = %22, %21
  %24 = load i32, ptr %2, align 4, !dbg !455
  ret i32 %24, !dbg !455
}

declare ptr @getpwuid(i32 noundef) #2

; Function Attrs: nounwind
declare i32 @getuid() #5

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!90}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "tools/mount.cpp", directory: "/home/raj/sme2", checksumkind: CSK_MD5, checksum: "180abc9ed5f52e77f1e3ad8d60b1d6d6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 47)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 24)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 135, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 48)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 60)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 34)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 10)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 11)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 156, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 3)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 171, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 40)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !45, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 191, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 54)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 52)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 208, type: !40, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 44)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 219, type: !40, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 228, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 45)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 41)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !81, line: 68, type: !82, isLocal: true, isDefinition: true)
!81 = !DIFile(filename: "./common/security.h", directory: "/home/raj/sme2", checksumkind: CSK_MD5, checksum: "abf386bf9ed41ae742dd6181e633b7ff")
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 5)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !81, line: 71, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 53)
!90 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !2, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !91, globals: !130, splitDebugInlining: false, nameTableKind: None)
!91 = !{!92, !100}
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !93, line: 124, baseType: !94, size: 32, elements: !95)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/mount.h", directory: "", checksumkind: CSK_MD5, checksum: "c86e55d1b3ffa3f4d9d3b7efb9450899")
!94 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "MNT_FORCE", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "MNT_DETACH", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "MNT_EXPIRE", value: 4, isUnsigned: true)
!99 = !DIEnumerator(name: "UMOUNT_NOFOLLOW", value: 8, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !93, line: 33, baseType: !101, size: 32, elements: !102)
!101 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129}
!103 = !DIEnumerator(name: "MS_RDONLY", value: 1)
!104 = !DIEnumerator(name: "MS_NOSUID", value: 2)
!105 = !DIEnumerator(name: "MS_NODEV", value: 4)
!106 = !DIEnumerator(name: "MS_NOEXEC", value: 8)
!107 = !DIEnumerator(name: "MS_SYNCHRONOUS", value: 16)
!108 = !DIEnumerator(name: "MS_REMOUNT", value: 32)
!109 = !DIEnumerator(name: "MS_MANDLOCK", value: 64)
!110 = !DIEnumerator(name: "MS_DIRSYNC", value: 128)
!111 = !DIEnumerator(name: "MS_NOSYMFOLLOW", value: 256)
!112 = !DIEnumerator(name: "MS_NOATIME", value: 1024)
!113 = !DIEnumerator(name: "MS_NODIRATIME", value: 2048)
!114 = !DIEnumerator(name: "MS_BIND", value: 4096)
!115 = !DIEnumerator(name: "MS_MOVE", value: 8192)
!116 = !DIEnumerator(name: "MS_REC", value: 16384)
!117 = !DIEnumerator(name: "MS_SILENT", value: 32768)
!118 = !DIEnumerator(name: "MS_POSIXACL", value: 65536)
!119 = !DIEnumerator(name: "MS_UNBINDABLE", value: 131072)
!120 = !DIEnumerator(name: "MS_PRIVATE", value: 262144)
!121 = !DIEnumerator(name: "MS_SLAVE", value: 524288)
!122 = !DIEnumerator(name: "MS_SHARED", value: 1048576)
!123 = !DIEnumerator(name: "MS_RELATIME", value: 2097152)
!124 = !DIEnumerator(name: "MS_KERNMOUNT", value: 4194304)
!125 = !DIEnumerator(name: "MS_I_VERSION", value: 8388608)
!126 = !DIEnumerator(name: "MS_STRICTATIME", value: 16777216)
!127 = !DIEnumerator(name: "MS_LAZYTIME", value: 33554432)
!128 = !DIEnumerator(name: "MS_ACTIVE", value: 1073741824)
!129 = !DIEnumerator(name: "MS_NOUSER", value: -2147483648)
!130 = !{!0, !8, !13, !18, !23, !28, !33, !38, !43, !48, !50, !55, !60, !62, !67, !69, !74, !79, !85}
!131 = !{i32 7, !"Dwarf Version", i32 5}
!132 = !{i32 2, !"Debug Info Version", i32 3}
!133 = !{i32 1, !"wchar_size", i32 4}
!134 = !{i32 8, !"PIC Level", i32 2}
!135 = !{i32 7, !"PIE Level", i32 2}
!136 = !{i32 7, !"uwtable", i32 2}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 16.0.0"}
!139 = distinct !DISubprogram(name: "usage", linkageName: "_Z5usagePKc", scope: !2, file: !2, line: 131, type: !140, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !143)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !142}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!143 = !{}
!144 = !DILocalVariable(name: "program", arg: 1, scope: !139, file: !2, line: 131, type: !142)
!145 = !DILocation(line: 131, column: 24, scope: !139)
!146 = !DILocation(line: 133, column: 13, scope: !139)
!147 = !DILocation(line: 133, column: 72, scope: !139)
!148 = !DILocation(line: 133, column: 5, scope: !139)
!149 = !DILocation(line: 134, column: 13, scope: !139)
!150 = !DILocation(line: 134, column: 49, scope: !139)
!151 = !DILocation(line: 134, column: 5, scope: !139)
!152 = !DILocation(line: 135, column: 13, scope: !139)
!153 = !DILocation(line: 135, column: 5, scope: !139)
!154 = !DILocation(line: 136, column: 13, scope: !139)
!155 = !DILocation(line: 136, column: 5, scope: !139)
!156 = !DILocation(line: 137, column: 13, scope: !139)
!157 = !DILocation(line: 137, column: 5, scope: !139)
!158 = !DILocation(line: 138, column: 1, scope: !139)
!159 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 140, type: !160, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !143)
!160 = !DISubroutineType(types: !161)
!161 = !{!101, !101, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!164 = !DILocalVariable(name: "argc", arg: 1, scope: !159, file: !2, line: 140, type: !101)
!165 = !DILocation(line: 140, column: 14, scope: !159)
!166 = !DILocalVariable(name: "argv", arg: 2, scope: !159, file: !2, line: 140, type: !162)
!167 = !DILocation(line: 140, column: 27, scope: !159)
!168 = !DILocation(line: 142, column: 10, scope: !169)
!169 = distinct !DILexicalBlock(scope: !159, file: !2, line: 142, column: 9)
!170 = !DILocation(line: 142, column: 9, scope: !159)
!171 = !DILocation(line: 144, column: 17, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !2, line: 143, column: 5)
!173 = !DILocation(line: 144, column: 9, scope: !172)
!174 = !DILocation(line: 145, column: 9, scope: !172)
!175 = !DILocalVariable(name: "program", scope: !159, file: !2, line: 148, type: !142)
!176 = !DILocation(line: 148, column: 17, scope: !159)
!177 = !DILocation(line: 148, column: 27, scope: !159)
!178 = !DILocation(line: 149, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !159, file: !2, line: 149, column: 9)
!180 = !DILocation(line: 149, column: 14, scope: !179)
!181 = !DILocation(line: 149, column: 9, scope: !159)
!182 = !DILocation(line: 151, column: 15, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !2, line: 150, column: 5)
!184 = !DILocation(line: 151, column: 9, scope: !183)
!185 = !DILocation(line: 152, column: 9, scope: !183)
!186 = !DILocalVariable(name: "option", scope: !159, file: !2, line: 155, type: !142)
!187 = !DILocation(line: 155, column: 17, scope: !159)
!188 = !DILocation(line: 155, column: 26, scope: !159)
!189 = !DILocation(line: 156, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !159, file: !2, line: 156, column: 9)
!191 = !DILocation(line: 156, column: 14, scope: !190)
!192 = !DILocation(line: 156, column: 19, scope: !190)
!193 = !DILocation(line: 156, column: 29, scope: !190)
!194 = !DILocation(line: 156, column: 22, scope: !190)
!195 = !DILocation(line: 156, column: 43, scope: !190)
!196 = !DILocation(line: 156, column: 9, scope: !159)
!197 = !DILocalVariable(name: "target", scope: !198, file: !2, line: 158, type: !142)
!198 = distinct !DILexicalBlock(scope: !190, file: !2, line: 157, column: 5)
!199 = !DILocation(line: 158, column: 21, scope: !198)
!200 = !DILocation(line: 158, column: 30, scope: !198)
!201 = !DILocalVariable(name: "sb", scope: !198, file: !2, line: 160, type: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !203, line: 26, size: 1152, flags: DIFlagTypePassByValue, elements: !204, identifier: "_ZTS4stat")
!203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!204 = !{!205, !209, !211, !213, !215, !217, !219, !220, !221, !224, !226, !228, !236, !237, !238}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !202, file: !203, line: 31, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !207, line: 145, baseType: !208)
!207 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!208 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !202, file: !203, line: 36, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !207, line: 148, baseType: !208)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !202, file: !203, line: 44, baseType: !212, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !207, line: 151, baseType: !208)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !202, file: !203, line: 45, baseType: !214, size: 32, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !207, line: 150, baseType: !94)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !202, file: !203, line: 47, baseType: !216, size: 32, offset: 224)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !207, line: 146, baseType: !94)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !202, file: !203, line: 48, baseType: !218, size: 32, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !207, line: 147, baseType: !94)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !202, file: !203, line: 50, baseType: !101, size: 32, offset: 288)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !202, file: !203, line: 52, baseType: !206, size: 64, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !202, file: !203, line: 57, baseType: !222, size: 64, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !207, line: 152, baseType: !223)
!223 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !202, file: !203, line: 61, baseType: !225, size: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !207, line: 175, baseType: !223)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !202, file: !203, line: 63, baseType: !227, size: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !207, line: 180, baseType: !223)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !202, file: !203, line: 74, baseType: !229, size: 128, offset: 576)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !230, line: 11, size: 128, flags: DIFlagTypePassByValue, elements: !231, identifier: "_ZTS8timespec")
!230 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !229, file: !230, line: 16, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !207, line: 160, baseType: !223)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !229, file: !230, line: 21, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !207, line: 197, baseType: !223)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !202, file: !203, line: 75, baseType: !229, size: 128, offset: 704)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !202, file: !203, line: 76, baseType: !229, size: 128, offset: 832)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !202, file: !203, line: 89, baseType: !239, size: 192, offset: 960)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 192, elements: !41)
!240 = !DILocation(line: 160, column: 21, scope: !198)
!241 = !DILocalVariable(name: "target_exists", scope: !198, file: !2, line: 161, type: !242)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!244 = !DILocation(line: 161, column: 20, scope: !198)
!245 = !DILocation(line: 161, column: 42, scope: !198)
!246 = !DILocation(line: 161, column: 37, scope: !198)
!247 = !DILocation(line: 161, column: 55, scope: !198)
!248 = !DILocation(line: 161, column: 60, scope: !198)
!249 = !DILocation(line: 161, column: 63, scope: !198)
!250 = !DILocation(line: 0, scope: !198)
!251 = !DILocation(line: 164, column: 13, scope: !252)
!252 = distinct !DILexicalBlock(scope: !198, file: !2, line: 164, column: 13)
!253 = !DILocation(line: 164, column: 13, scope: !198)
!254 = !DILocalVariable(name: "retval", scope: !255, file: !2, line: 167, type: !101)
!255 = distinct !DILexicalBlock(scope: !252, file: !2, line: 165, column: 9)
!256 = !DILocation(line: 167, column: 17, scope: !255)
!257 = !DILocation(line: 167, column: 34, scope: !255)
!258 = !DILocation(line: 167, column: 26, scope: !255)
!259 = !DILocation(line: 168, column: 17, scope: !260)
!260 = distinct !DILexicalBlock(scope: !255, file: !2, line: 168, column: 17)
!261 = !DILocation(line: 168, column: 24, scope: !260)
!262 = !DILocation(line: 168, column: 17, scope: !255)
!263 = !DILocation(line: 170, column: 21, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !2, line: 170, column: 21)
!265 = distinct !DILexicalBlock(scope: !260, file: !2, line: 169, column: 13)
!266 = !DILocation(line: 170, column: 27, scope: !264)
!267 = !DILocation(line: 170, column: 21, scope: !265)
!268 = !DILocation(line: 171, column: 29, scope: !264)
!269 = !DILocation(line: 171, column: 81, scope: !264)
!270 = !DILocation(line: 171, column: 90, scope: !264)
!271 = !DILocation(line: 172, column: 38, scope: !264)
!272 = !DILocation(line: 172, column: 29, scope: !264)
!273 = !DILocation(line: 171, column: 21, scope: !264)
!274 = !DILocation(line: 173, column: 13, scope: !265)
!275 = !DILocation(line: 176, column: 30, scope: !255)
!276 = !DILocation(line: 176, column: 22, scope: !255)
!277 = !DILocation(line: 176, column: 20, scope: !255)
!278 = !DILocation(line: 177, column: 17, scope: !279)
!279 = distinct !DILexicalBlock(scope: !255, file: !2, line: 177, column: 17)
!280 = !DILocation(line: 177, column: 24, scope: !279)
!281 = !DILocation(line: 177, column: 27, scope: !279)
!282 = !DILocation(line: 177, column: 33, scope: !279)
!283 = !DILocation(line: 177, column: 17, scope: !255)
!284 = !DILocation(line: 179, column: 25, scope: !285)
!285 = distinct !DILexicalBlock(scope: !279, file: !2, line: 178, column: 13)
!286 = !DILocation(line: 179, column: 77, scope: !285)
!287 = !DILocation(line: 179, column: 86, scope: !285)
!288 = !DILocation(line: 180, column: 34, scope: !285)
!289 = !DILocation(line: 180, column: 25, scope: !285)
!290 = !DILocation(line: 179, column: 17, scope: !285)
!291 = !DILocation(line: 181, column: 17, scope: !285)
!292 = !DILocation(line: 183, column: 9, scope: !255)
!293 = !DILocation(line: 184, column: 5, scope: !198)
!294 = !DILocation(line: 185, column: 14, scope: !295)
!295 = distinct !DILexicalBlock(scope: !190, file: !2, line: 185, column: 14)
!296 = !DILocation(line: 185, column: 19, scope: !295)
!297 = !DILocation(line: 185, column: 14, scope: !190)
!298 = !DILocalVariable(name: "source", scope: !299, file: !2, line: 187, type: !142)
!299 = distinct !DILexicalBlock(scope: !295, file: !2, line: 186, column: 5)
!300 = !DILocation(line: 187, column: 21, scope: !299)
!301 = !DILocation(line: 187, column: 30, scope: !299)
!302 = !DILocalVariable(name: "sb", scope: !299, file: !2, line: 188, type: !202)
!303 = !DILocation(line: 188, column: 21, scope: !299)
!304 = !DILocation(line: 189, column: 18, scope: !305)
!305 = distinct !DILexicalBlock(scope: !299, file: !2, line: 189, column: 13)
!306 = !DILocation(line: 189, column: 13, scope: !305)
!307 = !DILocation(line: 189, column: 31, scope: !305)
!308 = !DILocation(line: 189, column: 36, scope: !305)
!309 = !DILocation(line: 189, column: 40, scope: !305)
!310 = !DILocation(line: 189, column: 13, scope: !299)
!311 = !DILocation(line: 191, column: 21, scope: !312)
!312 = distinct !DILexicalBlock(scope: !305, file: !2, line: 190, column: 9)
!313 = !DILocation(line: 191, column: 87, scope: !312)
!314 = !DILocation(line: 192, column: 21, scope: !312)
!315 = !DILocation(line: 191, column: 13, scope: !312)
!316 = !DILocation(line: 193, column: 13, scope: !312)
!317 = !DILocalVariable(name: "target", scope: !299, file: !2, line: 196, type: !142)
!318 = !DILocation(line: 196, column: 21, scope: !299)
!319 = !DILocation(line: 196, column: 30, scope: !299)
!320 = !DILocalVariable(name: "target_exists", scope: !299, file: !2, line: 197, type: !242)
!321 = !DILocation(line: 197, column: 20, scope: !299)
!322 = !DILocation(line: 197, column: 42, scope: !299)
!323 = !DILocation(line: 197, column: 37, scope: !299)
!324 = !DILocation(line: 197, column: 55, scope: !299)
!325 = !DILocation(line: 197, column: 60, scope: !299)
!326 = !DILocation(line: 197, column: 63, scope: !299)
!327 = !DILocation(line: 0, scope: !299)
!328 = !DILocation(line: 198, column: 14, scope: !329)
!329 = distinct !DILexicalBlock(scope: !299, file: !2, line: 198, column: 13)
!330 = !DILocation(line: 198, column: 13, scope: !299)
!331 = !DILocation(line: 200, column: 21, scope: !332)
!332 = distinct !DILexicalBlock(scope: !329, file: !2, line: 199, column: 9)
!333 = !DILocation(line: 200, column: 85, scope: !332)
!334 = !DILocation(line: 201, column: 21, scope: !332)
!335 = !DILocation(line: 200, column: 13, scope: !332)
!336 = !DILocation(line: 202, column: 13, scope: !332)
!337 = !DILocation(line: 208, column: 20, scope: !338)
!338 = distinct !DILexicalBlock(scope: !299, file: !2, line: 208, column: 13)
!339 = !DILocation(line: 208, column: 13, scope: !338)
!340 = !DILocation(line: 208, column: 34, scope: !338)
!341 = !DILocation(line: 208, column: 13, scope: !299)
!342 = !DILocalVariable(name: "retval", scope: !343, file: !2, line: 210, type: !344)
!343 = distinct !DILexicalBlock(scope: !338, file: !2, line: 209, column: 9)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!345 = !DILocation(line: 210, column: 23, scope: !343)
!346 = !DILocation(line: 211, column: 25, scope: !343)
!347 = !DILocation(line: 211, column: 33, scope: !343)
!348 = !DILocation(line: 211, column: 19, scope: !343)
!349 = !DILocation(line: 212, column: 17, scope: !350)
!350 = distinct !DILexicalBlock(scope: !343, file: !2, line: 212, column: 17)
!351 = !DILocation(line: 212, column: 17, scope: !343)
!352 = !DILocation(line: 214, column: 25, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !2, line: 213, column: 13)
!354 = !DILocation(line: 214, column: 81, scope: !353)
!355 = !DILocation(line: 214, column: 90, scope: !353)
!356 = !DILocation(line: 215, column: 25, scope: !353)
!357 = !DILocation(line: 215, column: 42, scope: !353)
!358 = !DILocation(line: 215, column: 33, scope: !353)
!359 = !DILocation(line: 214, column: 17, scope: !353)
!360 = !DILocation(line: 216, column: 17, scope: !353)
!361 = !DILocation(line: 218, column: 9, scope: !343)
!362 = !DILocation(line: 219, column: 25, scope: !363)
!363 = distinct !DILexicalBlock(scope: !338, file: !2, line: 219, column: 18)
!364 = !DILocation(line: 219, column: 18, scope: !363)
!365 = !DILocation(line: 219, column: 39, scope: !363)
!366 = !DILocation(line: 219, column: 18, scope: !338)
!367 = !DILocalVariable(name: "retval", scope: !368, file: !2, line: 222, type: !101)
!368 = distinct !DILexicalBlock(scope: !363, file: !2, line: 220, column: 9)
!369 = !DILocation(line: 222, column: 17, scope: !368)
!370 = !DILocation(line: 222, column: 32, scope: !368)
!371 = !DILocation(line: 222, column: 40, scope: !368)
!372 = !DILocation(line: 222, column: 26, scope: !368)
!373 = !DILocation(line: 226, column: 17, scope: !374)
!374 = distinct !DILexicalBlock(scope: !368, file: !2, line: 226, column: 17)
!375 = !DILocation(line: 226, column: 17, scope: !368)
!376 = !DILocation(line: 228, column: 25, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !2, line: 227, column: 13)
!378 = !DILocation(line: 228, column: 82, scope: !377)
!379 = !DILocation(line: 228, column: 91, scope: !377)
!380 = !DILocation(line: 229, column: 34, scope: !377)
!381 = !DILocation(line: 229, column: 25, scope: !377)
!382 = !DILocation(line: 228, column: 17, scope: !377)
!383 = !DILocation(line: 230, column: 17, scope: !377)
!384 = !DILocation(line: 233, column: 28, scope: !368)
!385 = !DILocation(line: 233, column: 36, scope: !368)
!386 = !DILocation(line: 233, column: 22, scope: !368)
!387 = !DILocation(line: 233, column: 20, scope: !368)
!388 = !DILocation(line: 234, column: 17, scope: !389)
!389 = distinct !DILexicalBlock(scope: !368, file: !2, line: 234, column: 17)
!390 = !DILocation(line: 234, column: 17, scope: !368)
!391 = !DILocation(line: 236, column: 25, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !2, line: 235, column: 13)
!393 = !DILocation(line: 236, column: 78, scope: !392)
!394 = !DILocation(line: 236, column: 87, scope: !392)
!395 = !DILocation(line: 237, column: 34, scope: !392)
!396 = !DILocation(line: 237, column: 25, scope: !392)
!397 = !DILocation(line: 236, column: 17, scope: !392)
!398 = !DILocation(line: 238, column: 17, scope: !392)
!399 = !DILocation(line: 240, column: 9, scope: !368)
!400 = !DILocation(line: 241, column: 5, scope: !299)
!401 = !DILocation(line: 244, column: 15, scope: !402)
!402 = distinct !DILexicalBlock(scope: !295, file: !2, line: 243, column: 5)
!403 = !DILocation(line: 244, column: 9, scope: !402)
!404 = !DILocation(line: 245, column: 9, scope: !402)
!405 = !DILocation(line: 248, column: 12, scope: !159)
!406 = !DILocation(line: 248, column: 5, scope: !159)
!407 = !DILocation(line: 249, column: 5, scope: !159)
!408 = !DILocation(line: 250, column: 1, scope: !159)
!409 = distinct !DISubprogram(name: "hasCorrectUID", linkageName: "_Z13hasCorrectUIDPKc", scope: !81, file: !81, line: 62, type: !410, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !143)
!410 = !DISubroutineType(types: !411)
!411 = !{!101, !142}
!412 = !DILocalVariable(name: "appName", arg: 1, scope: !409, file: !81, line: 62, type: !142)
!413 = !DILocation(line: 62, column: 38, scope: !409)
!414 = !DILocation(line: 68, column: 9, scope: !415)
!415 = distinct !DILexicalBlock(scope: !409, file: !81, line: 68, column: 9)
!416 = !DILocation(line: 68, column: 9, scope: !409)
!417 = !DILocation(line: 69, column: 9, scope: !415)
!418 = !DILocation(line: 71, column: 17, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !81, line: 70, column: 10)
!420 = !DILocation(line: 71, column: 94, scope: !419)
!421 = !DILocation(line: 71, column: 9, scope: !419)
!422 = !DILocation(line: 72, column: 9, scope: !419)
!423 = !DILocation(line: 75, column: 1, scope: !409)
!424 = distinct !DISubprogram(name: "hasUID", linkageName: "_Z6hasUIDPKc", scope: !81, file: !81, line: 28, type: !410, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !143)
!425 = !DILocalVariable(name: "userId", arg: 1, scope: !424, file: !81, line: 28, type: !142)
!426 = !DILocation(line: 28, column: 31, scope: !424)
!427 = !DILocalVariable(name: "pw", scope: !424, file: !81, line: 30, type: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !430, line: 49, size: 384, flags: DIFlagTypePassByValue, elements: !431, identifier: "_ZTS6passwd")
!430 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!431 = !{!432, !433, !434, !435, !436, !437, !438}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !429, file: !430, line: 51, baseType: !163, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !429, file: !430, line: 52, baseType: !163, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !429, file: !430, line: 54, baseType: !216, size: 32, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !429, file: !430, line: 55, baseType: !218, size: 32, offset: 160)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !429, file: !430, line: 56, baseType: !163, size: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !429, file: !430, line: 57, baseType: !163, size: 64, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !429, file: !430, line: 58, baseType: !163, size: 64, offset: 320)
!439 = !DILocation(line: 30, column: 20, scope: !424)
!440 = !DILocation(line: 30, column: 34, scope: !424)
!441 = !DILocation(line: 30, column: 25, scope: !424)
!442 = !DILocation(line: 31, column: 9, scope: !443)
!443 = distinct !DILexicalBlock(scope: !424, file: !81, line: 31, column: 9)
!444 = !DILocation(line: 31, column: 12, scope: !443)
!445 = !DILocation(line: 31, column: 15, scope: !443)
!446 = !DILocation(line: 31, column: 19, scope: !443)
!447 = !DILocation(line: 31, column: 27, scope: !443)
!448 = !DILocation(line: 31, column: 38, scope: !443)
!449 = !DILocation(line: 31, column: 42, scope: !443)
!450 = !DILocation(line: 31, column: 51, scope: !443)
!451 = !DILocation(line: 31, column: 31, scope: !443)
!452 = !DILocation(line: 31, column: 9, scope: !424)
!453 = !DILocation(line: 32, column: 9, scope: !443)
!454 = !DILocation(line: 34, column: 5, scope: !424)
!455 = !DILocation(line: 35, column: 1, scope: !424)
