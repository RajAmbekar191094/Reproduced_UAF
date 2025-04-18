; ModuleID = 'src/htsbauth.c'
source_filename = "src/htsbauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_cookie = type { i32, [32768 x i8], %struct.bauth_chain }
%struct.bauth_chain = type { [1024 x i8], [1024 x i8], ptr }

@.str = private unnamed_addr constant [42 x i8] c"overflow while copying 'domain' to 'cook'\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [15 x i8] c"src/htsbauth.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [2 x i8] c"\09\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [42 x i8] c"overflow while appending '\22\\t\22' to 'cook'\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [44 x i8] c"overflow while appending '\22TRUE\22' to 'cook'\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [42 x i8] c"overflow while appending 'path' to 'cook'\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [45 x i8] c"overflow while appending '\22FALSE\22' to 'cook'\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [11 x i8] c"1999999999\00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [50 x i8] c"overflow while appending '\221999999999\22' to 'cook'\00", align 1, !dbg !46
@.str.11 = private unnamed_addr constant [47 x i8] c"overflow while appending 'cook_name' to 'cook'\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [48 x i8] c"overflow while appending 'cook_value' to 'cook'\00", align 1, !dbg !56
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !61
@.str.14 = private unnamed_addr constant [42 x i8] c"overflow while appending '\22\\n\22' to 'cook'\00", align 1, !dbg !63
@.str.15 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !65
@.str.16 = private unnamed_addr constant [65 x i8] c"overflow while copying 'cookie_get(buffer, line, 0)' to 'domain'\00", align 1, !dbg !70
@.str.17 = private unnamed_addr constant [63 x i8] c"overflow while copying 'cookie_get(buffer, line, 2)' to 'path'\00", align 1, !dbg !75
@.str.18 = private unnamed_addr constant [68 x i8] c"overflow while copying 'cookie_get(buffer, line, 5)' to 'cook_name'\00", align 1, !dbg !80
@.str.19 = private unnamed_addr constant [69 x i8] c"overflow while copying 'cookie_get(buffer, line, 6)' to 'cook_value'\00", align 1, !dbg !85
@.str.20 = private unnamed_addr constant [3 x i8] c"wb\00", align 1, !dbg !90
@.str.21 = private unnamed_addr constant [93 x i8] c"# HTTrack Website Copier Cookie File\0A# This file format is compatible with Netscape cookies\0A\00", align 1, !dbg !92
@.str.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !97
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !102
@.str.24 = private unnamed_addr constant [47 x i8] c"overflow while copying 'auth' to 'chain->auth'\00", align 1, !dbg !107
@.str.25 = private unnamed_addr constant [51 x i8] c"overflow while copying 'prefix' to 'chain->prefix'\00", align 1, !dbg !109
@.str.26 = private unnamed_addr constant [17 x i8] c"sizeof_dest != 0\00", align 1, !dbg !114
@stderr = external global ptr, align 8
@.str.27 = private unnamed_addr constant [20 x i8] c"%s failed at %s:%d\0A\00", align 1, !dbg !120
@.str.28 = private unnamed_addr constant [15 x i8] c"source != NULL\00", align 1, !dbg !125
@.str.29 = private unnamed_addr constant [21 x i8] c"size < sizeof_source\00", align 1, !dbg !127

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cookie_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !164 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [8192 x i8], align 16
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca [16384 x i8], align 16
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !180, metadata !DIExpression()), !dbg !181
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !182, metadata !DIExpression()), !dbg !183
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !184, metadata !DIExpression()), !dbg !185
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !186, metadata !DIExpression()), !dbg !187
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata ptr %12, metadata !190, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata ptr %13, metadata !195, metadata !DIExpression()), !dbg !196
  %16 = load ptr, ptr %7, align 8, !dbg !197
  %17 = getelementptr inbounds %struct.t_cookie, ptr %16, i32 0, i32 1, !dbg !198
  %18 = getelementptr inbounds [32768 x i8], ptr %17, i64 0, i64 0, !dbg !197
  store ptr %18, ptr %13, align 8, !dbg !196
  call void @llvm.dbg.declare(metadata ptr %14, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata ptr %15, metadata !201, metadata !DIExpression()), !dbg !205
  %19 = load ptr, ptr %7, align 8, !dbg !206
  %20 = load ptr, ptr %8, align 8, !dbg !207
  %21 = load ptr, ptr %10, align 8, !dbg !208
  %22 = load ptr, ptr %11, align 8, !dbg !209
  %23 = call i32 @cookie_del(ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22), !dbg !210
  %24 = load ptr, ptr %9, align 8, !dbg !211
  %25 = call i64 @strlen(ptr noundef %24) #9, !dbg !213
  %26 = icmp ugt i64 %25, 1024, !dbg !214
  br i1 %26, label %27, label %28, !dbg !215

27:                                               ; preds = %5
  store i32 -1, ptr %6, align 4, !dbg !216
  br label %168, !dbg !216

28:                                               ; preds = %5
  %29 = load ptr, ptr %8, align 8, !dbg !217
  %30 = call i64 @strlen(ptr noundef %29) #9, !dbg !219
  %31 = icmp ugt i64 %30, 256, !dbg !220
  br i1 %31, label %32, label %33, !dbg !221

32:                                               ; preds = %28
  store i32 -1, ptr %6, align 4, !dbg !222
  br label %168, !dbg !222

33:                                               ; preds = %28
  %34 = load ptr, ptr %10, align 8, !dbg !223
  %35 = call i64 @strlen(ptr noundef %34) #9, !dbg !225
  %36 = icmp ugt i64 %35, 256, !dbg !226
  br i1 %36, label %37, label %38, !dbg !227

37:                                               ; preds = %33
  store i32 -1, ptr %6, align 4, !dbg !228
  br label %168, !dbg !228

38:                                               ; preds = %33
  %39 = load ptr, ptr %11, align 8, !dbg !229
  %40 = call i64 @strlen(ptr noundef %39) #9, !dbg !231
  %41 = icmp ugt i64 %40, 256, !dbg !232
  br i1 %41, label %42, label %43, !dbg !233

42:                                               ; preds = %38
  store i32 -1, ptr %6, align 4, !dbg !234
  br label %168, !dbg !234

43:                                               ; preds = %38
  %44 = load ptr, ptr %7, align 8, !dbg !235
  %45 = getelementptr inbounds %struct.t_cookie, ptr %44, i32 0, i32 1, !dbg !237
  %46 = getelementptr inbounds [32768 x i8], ptr %45, i64 0, i64 0, !dbg !235
  %47 = call i64 @strlen(ptr noundef %46) #9, !dbg !238
  %48 = load ptr, ptr %9, align 8, !dbg !239
  %49 = call i64 @strlen(ptr noundef %48) #9, !dbg !240
  %50 = add i64 %47, %49, !dbg !241
  %51 = load ptr, ptr %8, align 8, !dbg !242
  %52 = call i64 @strlen(ptr noundef %51) #9, !dbg !243
  %53 = add i64 %50, %52, !dbg !244
  %54 = load ptr, ptr %10, align 8, !dbg !245
  %55 = call i64 @strlen(ptr noundef %54) #9, !dbg !246
  %56 = add i64 %53, %55, !dbg !247
  %57 = load ptr, ptr %11, align 8, !dbg !248
  %58 = call i64 @strlen(ptr noundef %57) #9, !dbg !249
  %59 = add i64 %56, %58, !dbg !250
  %60 = add i64 %59, 256, !dbg !251
  %61 = load ptr, ptr %7, align 8, !dbg !252
  %62 = getelementptr inbounds %struct.t_cookie, ptr %61, i32 0, i32 0, !dbg !253
  %63 = load i32, ptr %62, align 8, !dbg !253
  %64 = sext i32 %63 to i64, !dbg !252
  %65 = icmp ugt i64 %60, %64, !dbg !254
  br i1 %65, label %66, label %67, !dbg !255

66:                                               ; preds = %43
  store i32 -1, ptr %6, align 4, !dbg !256
  br label %168, !dbg !256

67:                                               ; preds = %43
  %68 = load ptr, ptr %13, align 8, !dbg !257
  store ptr %68, ptr %14, align 8, !dbg !258
  br label %69, !dbg !259

69:                                               ; preds = %118, %67
  %70 = load ptr, ptr %13, align 8, !dbg !260
  %71 = load i8, ptr %70, align 1, !dbg !261
  %72 = icmp ne i8 %71, 0, !dbg !259
  br i1 %72, label %73, label %119, !dbg !259

73:                                               ; preds = %69
  %74 = getelementptr inbounds [8192 x i8], ptr %12, i64 0, i64 0, !dbg !262
  %75 = load ptr, ptr %13, align 8, !dbg !265
  %76 = call ptr @cookie_get(ptr noundef %74, ptr noundef %75, i32 noundef 2), !dbg !266
  %77 = call i64 @strlen(ptr noundef %76) #9, !dbg !267
  %78 = load ptr, ptr %11, align 8, !dbg !268
  %79 = call i64 @strlen(ptr noundef %78) #9, !dbg !269
  %80 = icmp ult i64 %77, %79, !dbg !270
  br i1 %80, label %81, label %90, !dbg !271

81:                                               ; preds = %73
  %82 = load ptr, ptr %7, align 8, !dbg !272
  %83 = getelementptr inbounds %struct.t_cookie, ptr %82, i32 0, i32 1, !dbg !273
  %84 = getelementptr inbounds [32768 x i8], ptr %83, i64 0, i64 0, !dbg !272
  %85 = load ptr, ptr %7, align 8, !dbg !274
  %86 = getelementptr inbounds %struct.t_cookie, ptr %85, i32 0, i32 1, !dbg !275
  %87 = getelementptr inbounds [32768 x i8], ptr %86, i64 0, i64 0, !dbg !274
  %88 = call i64 @strlen(ptr noundef %87) #9, !dbg !276
  %89 = getelementptr inbounds i8, ptr %84, i64 %88, !dbg !277
  store ptr %89, ptr %13, align 8, !dbg !278
  br label %118, !dbg !279

90:                                               ; preds = %73
  %91 = load ptr, ptr %13, align 8, !dbg !280
  %92 = call ptr @strchr(ptr noundef %91, i32 noundef 10) #9, !dbg !282
  store ptr %92, ptr %13, align 8, !dbg !283
  %93 = load ptr, ptr %13, align 8, !dbg !284
  %94 = icmp eq ptr %93, null, !dbg !286
  br i1 %94, label %95, label %104, !dbg !287

95:                                               ; preds = %90
  %96 = load ptr, ptr %7, align 8, !dbg !288
  %97 = getelementptr inbounds %struct.t_cookie, ptr %96, i32 0, i32 1, !dbg !289
  %98 = getelementptr inbounds [32768 x i8], ptr %97, i64 0, i64 0, !dbg !288
  %99 = load ptr, ptr %7, align 8, !dbg !290
  %100 = getelementptr inbounds %struct.t_cookie, ptr %99, i32 0, i32 1, !dbg !291
  %101 = getelementptr inbounds [32768 x i8], ptr %100, i64 0, i64 0, !dbg !290
  %102 = call i64 @strlen(ptr noundef %101) #9, !dbg !292
  %103 = getelementptr inbounds i8, ptr %98, i64 %102, !dbg !293
  store ptr %103, ptr %13, align 8, !dbg !294
  br label %107, !dbg !295

104:                                              ; preds = %90
  %105 = load ptr, ptr %13, align 8, !dbg !296
  %106 = getelementptr inbounds i8, ptr %105, i32 1, !dbg !296
  store ptr %106, ptr %13, align 8, !dbg !296
  br label %107

107:                                              ; preds = %104, %95
  br label %108, !dbg !297

108:                                              ; preds = %113, %107
  %109 = load ptr, ptr %13, align 8, !dbg !298
  %110 = load i8, ptr %109, align 1, !dbg !299
  %111 = sext i8 %110 to i32, !dbg !299
  %112 = icmp eq i32 %111, 10, !dbg !300
  br i1 %112, label %113, label %116, !dbg !297

113:                                              ; preds = %108
  %114 = load ptr, ptr %13, align 8, !dbg !301
  %115 = getelementptr inbounds i8, ptr %114, i32 1, !dbg !301
  store ptr %115, ptr %13, align 8, !dbg !301
  br label %108, !dbg !297, !llvm.loop !302

116:                                              ; preds = %108
  %117 = load ptr, ptr %13, align 8, !dbg !304
  store ptr %117, ptr %14, align 8, !dbg !305
  br label %118

118:                                              ; preds = %116, %81
  br label %69, !dbg !259, !llvm.loop !306

119:                                              ; preds = %69
  %120 = getelementptr inbounds [16384 x i8], ptr %15, i64 0, i64 0, !dbg !308
  %121 = load ptr, ptr %10, align 8, !dbg !308
  %122 = call ptr @strcpy_safe_(ptr noundef %120, i64 noundef 16384, ptr noundef %121, i64 noundef -1, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 89), !dbg !308
  %123 = getelementptr inbounds [16384 x i8], ptr %15, i64 0, i64 0, !dbg !309
  %124 = call ptr @strncat_safe_(ptr noundef %123, i64 noundef 16384, ptr noundef @.str.2, i64 noundef 2, i64 noundef -1, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 90), !dbg !309
  %125 = getelementptr inbounds [16384 x i8], ptr %15, i64 0, i64 0, !dbg !310
  %126 = call ptr @strncat_safe_(ptr noundef %125, i64 noundef 16384, ptr noundef @.str.4, i64 noundef 5, i64 noundef -1, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 91), !dbg !310
  %127 = getelementptr inbounds [16384 x i8], ptr %15, i64 0, i64 0, !dbg !311
  %128 = call ptr @strncat_safe_(ptr noundef %127, i64 noundef 16384, ptr noundef @.str.2, i64 noundef 2, i64 noundef -1, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 92), !dbg !311
  %129 = getelementptr inbounds [16384 x i8], ptr %15, i64 0, i64 0, !dbg !312
  %130 = load ptr, ptr %11, align 8, !dbg !312
  %131 = call ptr @strncat_safe_(ptr noundef %129, i64 noundef 16384, ptr noundef %130, i64 noundef -1, i64 noundef -1, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 93), !dbg !312
  %132 = getelementptr inbounds [16384 x i8], ptr %15, i64 0, i64 0, !dbg !313
  %133 = call ptr @strncat_safe_(ptr noundef %132, i64 noundef 16384, ptr noundef @.str.2, i64 noundef 2, i64 noundef -1, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 94), !dbg !313
  %134 = getelementptr inbounds [16384 x i8], ptr %15, i64 0, i64 0, !dbg !314
  %135 = call ptr @strncat_safe_(ptr noundef %134, i64 noundef 16384, ptr noundef @.str.7, i64 noundef 6, i64 noundef -1, ptr noundef @.str.8, ptr noundef @.str.1, i32 noundef 95), !dbg !314
  %136 = getelementptr inbounds [16384 x i8], ptr %15, i64 0, i64 0, !dbg !315
  %137 = call ptr @strncat_safe_(ptr noundef %136, i64 noundef 16384, ptr noundef @.str.2, i64 noundef 2, i64 noundef -1, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 96), !dbg !315
  %138 = getelementptr inbounds [16384 x i8], ptr %15, i64 0, i64 0, !dbg !316
  %139 = call ptr @strncat_safe_(ptr noundef %138, i64 noundef 16384, ptr noundef @.str.9, i64 noundef 11, i64 noundef -1, ptr noundef @.str.10, ptr noundef @.str.1, i32 noundef 97), !dbg !316
  %140 = getelementptr inbounds [16384 x i8], ptr %15, i64 0, i64 0, !dbg !317
  %141 = call ptr @strncat_safe_(ptr noundef %140, i64 noundef 16384, ptr noundef @.str.2, i64 noundef 2, i64 noundef -1, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 98), !dbg !317
  %142 = getelementptr inbounds [16384 x i8], ptr %15, i64 0, i64 0, !dbg !318
  %143 = load ptr, ptr %8, align 8, !dbg !318
  %144 = call ptr @strncat_safe_(ptr noundef %142, i64 noundef 16384, ptr noundef %143, i64 noundef -1, i64 noundef -1, ptr noundef @.str.11, ptr noundef @.str.1, i32 noundef 99), !dbg !318
  %145 = getelementptr inbounds [16384 x i8], ptr %15, i64 0, i64 0, !dbg !319
  %146 = call ptr @strncat_safe_(ptr noundef %145, i64 noundef 16384, ptr noundef @.str.2, i64 noundef 2, i64 noundef -1, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 100), !dbg !319
  %147 = getelementptr inbounds [16384 x i8], ptr %15, i64 0, i64 0, !dbg !320
  %148 = load ptr, ptr %9, align 8, !dbg !320
  %149 = call ptr @strncat_safe_(ptr noundef %147, i64 noundef 16384, ptr noundef %148, i64 noundef -1, i64 noundef -1, ptr noundef @.str.12, ptr noundef @.str.1, i32 noundef 101), !dbg !320
  %150 = getelementptr inbounds [16384 x i8], ptr %15, i64 0, i64 0, !dbg !321
  %151 = call ptr @strncat_safe_(ptr noundef %150, i64 noundef 16384, ptr noundef @.str.13, i64 noundef 2, i64 noundef -1, ptr noundef @.str.14, ptr noundef @.str.1, i32 noundef 102), !dbg !321
  %152 = load ptr, ptr %7, align 8, !dbg !322
  %153 = getelementptr inbounds %struct.t_cookie, ptr %152, i32 0, i32 1, !dbg !324
  %154 = getelementptr inbounds [32768 x i8], ptr %153, i64 0, i64 0, !dbg !322
  %155 = call i64 @strlen(ptr noundef %154) #9, !dbg !325
  %156 = getelementptr inbounds [16384 x i8], ptr %15, i64 0, i64 0, !dbg !326
  %157 = call i64 @strlen(ptr noundef %156) #9, !dbg !327
  %158 = add i64 %155, %157, !dbg !328
  %159 = load ptr, ptr %7, align 8, !dbg !329
  %160 = getelementptr inbounds %struct.t_cookie, ptr %159, i32 0, i32 0, !dbg !330
  %161 = load i32, ptr %160, align 8, !dbg !330
  %162 = sext i32 %161 to i64, !dbg !329
  %163 = icmp ult i64 %158, %162, !dbg !331
  br i1 %163, label %165, label %164, !dbg !332

164:                                              ; preds = %119
  store i32 -1, ptr %6, align 4, !dbg !333
  br label %168, !dbg !333

165:                                              ; preds = %119
  %166 = load ptr, ptr %14, align 8, !dbg !334
  %167 = getelementptr inbounds [16384 x i8], ptr %15, i64 0, i64 0, !dbg !335
  call void @cookie_insert(ptr noundef %166, ptr noundef %167), !dbg !336
  store i32 0, ptr %6, align 4, !dbg !337
  br label %168, !dbg !337

168:                                              ; preds = %165, %164, %66, %42, %37, %32, %27
  %169 = load i32, ptr %6, align 4, !dbg !338
  ret i32 %169, !dbg !338
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cookie_del(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !339 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !342, metadata !DIExpression()), !dbg !343
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !344, metadata !DIExpression()), !dbg !345
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !346, metadata !DIExpression()), !dbg !347
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !348, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.declare(metadata ptr %9, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.declare(metadata ptr %10, metadata !352, metadata !DIExpression()), !dbg !353
  %11 = load ptr, ptr %5, align 8, !dbg !354
  %12 = getelementptr inbounds %struct.t_cookie, ptr %11, i32 0, i32 1, !dbg !355
  %13 = getelementptr inbounds [32768 x i8], ptr %12, i64 0, i64 0, !dbg !354
  %14 = load ptr, ptr %6, align 8, !dbg !356
  %15 = load ptr, ptr %7, align 8, !dbg !357
  %16 = load ptr, ptr %8, align 8, !dbg !358
  %17 = call ptr @cookie_find(ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16), !dbg !359
  store ptr %17, ptr %10, align 8, !dbg !360
  %18 = load ptr, ptr %10, align 8, !dbg !361
  %19 = icmp ne ptr %18, null, !dbg !361
  br i1 %19, label %20, label %29, !dbg !363

20:                                               ; preds = %4
  %21 = load ptr, ptr %10, align 8, !dbg !364
  %22 = call ptr @cookie_nextfield(ptr noundef %21), !dbg !366
  store ptr %22, ptr %9, align 8, !dbg !367
  %23 = load ptr, ptr %10, align 8, !dbg !368
  %24 = load ptr, ptr %9, align 8, !dbg !369
  %25 = load ptr, ptr %10, align 8, !dbg !370
  %26 = ptrtoint ptr %24 to i64, !dbg !371
  %27 = ptrtoint ptr %25 to i64, !dbg !371
  %28 = sub i64 %26, %27, !dbg !371
  call void @cookie_delete(ptr noundef %23, i64 noundef %28), !dbg !372
  br label %29, !dbg !373

29:                                               ; preds = %20, %4
  ret i32 0, !dbg !374
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @cookie_get(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !375 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !378, metadata !DIExpression()), !dbg !379
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !380, metadata !DIExpression()), !dbg !381
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata ptr %8, metadata !384, metadata !DIExpression()), !dbg !385
  br label %11, !dbg !386

11:                                               ; preds = %16, %3
  %12 = load ptr, ptr %6, align 8, !dbg !387
  %13 = load i8, ptr %12, align 1, !dbg !388
  %14 = sext i8 %13 to i32, !dbg !388
  %15 = icmp eq i32 %14, 10, !dbg !389
  br i1 %15, label %16, label %19, !dbg !386

16:                                               ; preds = %11
  %17 = load ptr, ptr %6, align 8, !dbg !390
  %18 = getelementptr inbounds i8, ptr %17, i32 1, !dbg !390
  store ptr %18, ptr %6, align 8, !dbg !390
  br label %11, !dbg !386, !llvm.loop !391

19:                                               ; preds = %11
  %20 = load ptr, ptr %6, align 8, !dbg !392
  %21 = call ptr @strchr(ptr noundef %20, i32 noundef 10) #9, !dbg !393
  store ptr %21, ptr %8, align 8, !dbg !394
  %22 = load ptr, ptr %8, align 8, !dbg !395
  %23 = icmp ne ptr %22, null, !dbg !395
  br i1 %23, label %29, label %24, !dbg !397

24:                                               ; preds = %19
  %25 = load ptr, ptr %6, align 8, !dbg !398
  %26 = load ptr, ptr %6, align 8, !dbg !399
  %27 = call i64 @strlen(ptr noundef %26) #9, !dbg !400
  %28 = getelementptr inbounds i8, ptr %25, i64 %27, !dbg !401
  store ptr %28, ptr %8, align 8, !dbg !402
  br label %29, !dbg !403

29:                                               ; preds = %24, %19
  %30 = load ptr, ptr %8, align 8, !dbg !404
  %31 = icmp ne ptr %30, null, !dbg !404
  br i1 %31, label %32, label %102, !dbg !406

32:                                               ; preds = %29
  %33 = load i32, ptr %7, align 4, !dbg !407
  %34 = icmp ne i32 %33, 0, !dbg !407
  br i1 %34, label %35, label %57, !dbg !410

35:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %9, metadata !411, metadata !DIExpression()), !dbg !413
  store i32 0, ptr %9, align 4, !dbg !414
  br label %36, !dbg !416

36:                                               ; preds = %53, %35
  %37 = load i32, ptr %9, align 4, !dbg !417
  %38 = load i32, ptr %7, align 4, !dbg !419
  %39 = icmp slt i32 %37, %38, !dbg !420
  br i1 %39, label %40, label %56, !dbg !421

40:                                               ; preds = %36
  %41 = load ptr, ptr %6, align 8, !dbg !422
  %42 = icmp ne ptr %41, null, !dbg !422
  br i1 %42, label %43, label %52, !dbg !425

43:                                               ; preds = %40
  %44 = load ptr, ptr %6, align 8, !dbg !426
  %45 = call ptr @strchr(ptr noundef %44, i32 noundef 9) #9, !dbg !428
  store ptr %45, ptr %6, align 8, !dbg !429
  %46 = load ptr, ptr %6, align 8, !dbg !430
  %47 = icmp ne ptr %46, null, !dbg !430
  br i1 %47, label %48, label %51, !dbg !432

48:                                               ; preds = %43
  %49 = load ptr, ptr %6, align 8, !dbg !433
  %50 = getelementptr inbounds i8, ptr %49, i32 1, !dbg !433
  store ptr %50, ptr %6, align 8, !dbg !433
  br label %51, !dbg !434

51:                                               ; preds = %48, %43
  br label %52, !dbg !435

52:                                               ; preds = %51, %40
  br label %53, !dbg !436

53:                                               ; preds = %52
  %54 = load i32, ptr %9, align 4, !dbg !437
  %55 = add nsw i32 %54, 1, !dbg !437
  store i32 %55, ptr %9, align 4, !dbg !437
  br label %36, !dbg !438, !llvm.loop !439

56:                                               ; preds = %36
  br label %57, !dbg !441

57:                                               ; preds = %56, %32
  %58 = load ptr, ptr %6, align 8, !dbg !442
  %59 = icmp ne ptr %58, null, !dbg !442
  br i1 %59, label %60, label %101, !dbg !444

60:                                               ; preds = %57
  %61 = load ptr, ptr %6, align 8, !dbg !445
  %62 = load ptr, ptr %8, align 8, !dbg !448
  %63 = icmp ult ptr %61, %62, !dbg !449
  br i1 %63, label %64, label %100, !dbg !450

64:                                               ; preds = %60
  call void @llvm.dbg.declare(metadata ptr %10, metadata !451, metadata !DIExpression()), !dbg !453
  %65 = load ptr, ptr %6, align 8, !dbg !454
  store ptr %65, ptr %10, align 8, !dbg !453
  br label %66, !dbg !455

66:                                               ; preds = %83, %64
  %67 = load ptr, ptr %10, align 8, !dbg !456
  %68 = load i8, ptr %67, align 1, !dbg !457
  %69 = sext i8 %68 to i32, !dbg !458
  %70 = icmp ne i32 %69, 0, !dbg !458
  br i1 %70, label %71, label %81, !dbg !459

71:                                               ; preds = %66
  %72 = load ptr, ptr %10, align 8, !dbg !460
  %73 = load i8, ptr %72, align 1, !dbg !461
  %74 = sext i8 %73 to i32, !dbg !461
  %75 = icmp ne i32 %74, 9, !dbg !462
  br i1 %75, label %76, label %81, !dbg !463

76:                                               ; preds = %71
  %77 = load ptr, ptr %10, align 8, !dbg !464
  %78 = load i8, ptr %77, align 1, !dbg !465
  %79 = sext i8 %78 to i32, !dbg !465
  %80 = icmp ne i32 %79, 10, !dbg !466
  br label %81

81:                                               ; preds = %76, %71, %66
  %82 = phi i1 [ false, %71 ], [ false, %66 ], [ %80, %76 ], !dbg !467
  br i1 %82, label %83, label %86, !dbg !455

83:                                               ; preds = %81
  %84 = load ptr, ptr %10, align 8, !dbg !468
  %85 = getelementptr inbounds i8, ptr %84, i32 1, !dbg !468
  store ptr %85, ptr %10, align 8, !dbg !468
  br label %66, !dbg !455, !llvm.loop !469

86:                                               ; preds = %81
  %87 = load ptr, ptr %5, align 8, !dbg !470
  %88 = getelementptr inbounds i8, ptr %87, i64 0, !dbg !470
  store i8 0, ptr %88, align 1, !dbg !471
  %89 = load ptr, ptr %5, align 8, !dbg !472
  %90 = load ptr, ptr %6, align 8, !dbg !472
  %91 = load ptr, ptr %10, align 8, !dbg !472
  %92 = load ptr, ptr %6, align 8, !dbg !472
  %93 = ptrtoint ptr %91 to i64, !dbg !472
  %94 = ptrtoint ptr %92 to i64, !dbg !472
  %95 = sub i64 %93, %94, !dbg !472
  %96 = trunc i64 %95 to i32, !dbg !472
  %97 = sext i32 %96 to i64, !dbg !472
  %98 = call ptr @strncat(ptr noundef %89, ptr noundef %90, i64 noundef %97) #10, !dbg !472
  %99 = load ptr, ptr %5, align 8, !dbg !473
  store ptr %99, ptr %4, align 8, !dbg !474
  br label %103, !dbg !474

100:                                              ; preds = %60
  store ptr @.str.23, ptr %4, align 8, !dbg !475
  br label %103, !dbg !475

101:                                              ; preds = %57
  store ptr @.str.23, ptr %4, align 8, !dbg !476
  br label %103, !dbg !476

102:                                              ; preds = %29
  store ptr @.str.23, ptr %4, align 8, !dbg !477
  br label %103, !dbg !477

103:                                              ; preds = %102, %101, %100, %86
  %104 = load ptr, ptr %4, align 8, !dbg !478
  ret ptr %104, !dbg !478
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @strcpy_safe_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !dbg !479 {
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !485, metadata !DIExpression()), !dbg !486
  store i64 %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !487, metadata !DIExpression()), !dbg !488
  store ptr %2, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !489, metadata !DIExpression()), !dbg !490
  store i64 %3, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !491, metadata !DIExpression()), !dbg !492
  store ptr %4, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !493, metadata !DIExpression()), !dbg !494
  store ptr %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !495, metadata !DIExpression()), !dbg !496
  store i32 %6, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !497, metadata !DIExpression()), !dbg !498
  %15 = load i64, ptr %9, align 8, !dbg !499
  %16 = icmp ne i64 %15, 0, !dbg !499
  br i1 %16, label %20, label %17, !dbg !499

17:                                               ; preds = %7
  %18 = load ptr, ptr %13, align 8, !dbg !499
  %19 = load i32, ptr %14, align 4, !dbg !499
  call void @abortf_(ptr noundef @.str.26, ptr noundef %18, i32 noundef %19), !dbg !499
  br label %20, !dbg !499

20:                                               ; preds = %17, %7
  %21 = phi i1 [ true, %7 ], [ false, %17 ]
  %22 = zext i1 %21 to i32, !dbg !499
  %23 = load ptr, ptr %8, align 8, !dbg !500
  %24 = getelementptr inbounds i8, ptr %23, i64 0, !dbg !500
  store i8 0, ptr %24, align 1, !dbg !501
  %25 = load ptr, ptr %8, align 8, !dbg !502
  %26 = load i64, ptr %9, align 8, !dbg !503
  %27 = load ptr, ptr %10, align 8, !dbg !504
  %28 = load i64, ptr %11, align 8, !dbg !505
  %29 = load ptr, ptr %12, align 8, !dbg !506
  %30 = load ptr, ptr %13, align 8, !dbg !507
  %31 = load i32, ptr %14, align 4, !dbg !508
  %32 = call ptr @strncat_safe_(ptr noundef %25, i64 noundef %26, ptr noundef %27, i64 noundef %28, i64 noundef -1, ptr noundef %29, ptr noundef %30, i32 noundef %31), !dbg !509
  ret ptr %32, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @strncat_safe_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) #0 !dbg !511 {
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
  call void @llvm.dbg.declare(metadata ptr %9, metadata !514, metadata !DIExpression()), !dbg !515
  store i64 %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !516, metadata !DIExpression()), !dbg !517
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !518, metadata !DIExpression()), !dbg !519
  store i64 %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !520, metadata !DIExpression()), !dbg !521
  store i64 %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !522, metadata !DIExpression()), !dbg !523
  store ptr %5, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !524, metadata !DIExpression()), !dbg !525
  store ptr %6, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !526, metadata !DIExpression()), !dbg !527
  store i32 %7, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !528, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.declare(metadata ptr %17, metadata !530, metadata !DIExpression()), !dbg !531
  %21 = load ptr, ptr %11, align 8, !dbg !532
  %22 = load i64, ptr %12, align 8, !dbg !533
  %23 = load ptr, ptr %15, align 8, !dbg !534
  %24 = load i32, ptr %16, align 4, !dbg !535
  %25 = call i64 @strlen_safe_(ptr noundef %21, i64 noundef %22, ptr noundef %23, i32 noundef %24), !dbg !536
  store i64 %25, ptr %17, align 8, !dbg !531
  call void @llvm.dbg.declare(metadata ptr %18, metadata !537, metadata !DIExpression()), !dbg !538
  %26 = load ptr, ptr %9, align 8, !dbg !539
  %27 = load i64, ptr %10, align 8, !dbg !540
  %28 = load ptr, ptr %15, align 8, !dbg !541
  %29 = load i32, ptr %16, align 4, !dbg !542
  %30 = call i64 @strlen_safe_(ptr noundef %26, i64 noundef %27, ptr noundef %28, i32 noundef %29), !dbg !543
  store i64 %30, ptr %18, align 8, !dbg !538
  call void @llvm.dbg.declare(metadata ptr %19, metadata !544, metadata !DIExpression()), !dbg !545
  %31 = load i64, ptr %17, align 8, !dbg !546
  %32 = load i64, ptr %13, align 8, !dbg !547
  %33 = icmp ule i64 %31, %32, !dbg !548
  br i1 %33, label %34, label %36, !dbg !546

34:                                               ; preds = %8
  %35 = load i64, ptr %17, align 8, !dbg !549
  br label %38, !dbg !546

36:                                               ; preds = %8
  %37 = load i64, ptr %13, align 8, !dbg !550
  br label %38, !dbg !546

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ %37, %36 ], !dbg !546
  store i64 %39, ptr %19, align 8, !dbg !545
  call void @llvm.dbg.declare(metadata ptr %20, metadata !551, metadata !DIExpression()), !dbg !552
  %40 = load i64, ptr %18, align 8, !dbg !553
  %41 = load i64, ptr %19, align 8, !dbg !554
  %42 = add i64 %40, %41, !dbg !555
  store i64 %42, ptr %20, align 8, !dbg !552
  %43 = load i64, ptr %20, align 8, !dbg !556
  %44 = load i64, ptr %10, align 8, !dbg !556
  %45 = icmp ult i64 %43, %44, !dbg !556
  br i1 %45, label %50, label %46, !dbg !556

46:                                               ; preds = %38
  %47 = load ptr, ptr %14, align 8, !dbg !556
  %48 = load ptr, ptr %15, align 8, !dbg !556
  %49 = load i32, ptr %16, align 4, !dbg !556
  call void @abortf_(ptr noundef %47, ptr noundef %48, i32 noundef %49), !dbg !556
  br label %50, !dbg !556

50:                                               ; preds = %46, %38
  %51 = phi i1 [ true, %38 ], [ false, %46 ]
  %52 = zext i1 %51 to i32, !dbg !556
  %53 = load ptr, ptr %9, align 8, !dbg !557
  %54 = load i64, ptr %18, align 8, !dbg !558
  %55 = getelementptr inbounds i8, ptr %53, i64 %54, !dbg !559
  %56 = load ptr, ptr %11, align 8, !dbg !560
  %57 = load i64, ptr %19, align 8, !dbg !561
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 1 %56, i64 %57, i1 false), !dbg !562
  %58 = load ptr, ptr %9, align 8, !dbg !563
  %59 = load i64, ptr %20, align 8, !dbg !564
  %60 = getelementptr inbounds i8, ptr %58, i64 %59, !dbg !563
  store i8 0, ptr %60, align 1, !dbg !565
  %61 = load ptr, ptr %9, align 8, !dbg !566
  ret ptr %61, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cookie_insert(ptr noundef %0, ptr noundef %1) #0 !dbg !568 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !571, metadata !DIExpression()), !dbg !572
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !573, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.declare(metadata ptr %5, metadata !575, metadata !DIExpression()), !dbg !576
  %6 = load ptr, ptr %3, align 8, !dbg !577
  %7 = icmp ne ptr %6, null, !dbg !577
  br i1 %7, label %8, label %14, !dbg !577

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !dbg !577
  %10 = getelementptr inbounds i8, ptr %9, i64 0, !dbg !577
  %11 = load i8, ptr %10, align 1, !dbg !577
  %12 = sext i8 %11 to i32, !dbg !577
  %13 = icmp ne i32 %12, 0, !dbg !577
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi i1 [ false, %2 ], [ %13, %8 ], !dbg !579
  %16 = zext i1 %15 to i32, !dbg !577
  %17 = icmp eq i32 %16, 0, !dbg !580
  br i1 %17, label %18, label %22, !dbg !581

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 8, !dbg !582
  %20 = load ptr, ptr %4, align 8, !dbg !582
  %21 = call ptr @strcat(ptr noundef %19, ptr noundef %20) #10, !dbg !582
  br label %47, !dbg !584

22:                                               ; preds = %14
  %23 = load ptr, ptr %3, align 8, !dbg !585
  %24 = call i64 @strlen(ptr noundef %23) #9, !dbg !585
  %25 = add i64 %24, 1, !dbg !585
  %26 = call noalias ptr @malloc(i64 noundef %25) #11, !dbg !585
  store ptr %26, ptr %5, align 8, !dbg !587
  %27 = load ptr, ptr %5, align 8, !dbg !588
  %28 = icmp ne ptr %27, null, !dbg !588
  br i1 %28, label %29, label %46, !dbg !590

29:                                               ; preds = %22
  %30 = load ptr, ptr %5, align 8, !dbg !591
  %31 = load ptr, ptr %3, align 8, !dbg !591
  %32 = call ptr @strcpy(ptr noundef %30, ptr noundef %31) #10, !dbg !591
  %33 = load ptr, ptr %3, align 8, !dbg !593
  %34 = load ptr, ptr %4, align 8, !dbg !593
  %35 = call ptr @strcpy(ptr noundef %33, ptr noundef %34) #10, !dbg !593
  %36 = load ptr, ptr %3, align 8, !dbg !594
  %37 = load ptr, ptr %5, align 8, !dbg !594
  %38 = call ptr @strcat(ptr noundef %36, ptr noundef %37) #10, !dbg !594
  br label %39, !dbg !595

39:                                               ; preds = %29
  %40 = load ptr, ptr %5, align 8, !dbg !596
  %41 = icmp ne ptr %40, null, !dbg !596
  br i1 %41, label %42, label %44, !dbg !599

42:                                               ; preds = %39
  %43 = load ptr, ptr %5, align 8, !dbg !600
  call void @free(ptr noundef %43) #10, !dbg !600
  store ptr null, ptr %5, align 8, !dbg !600
  br label %44, !dbg !600

44:                                               ; preds = %42, %39
  br label %45, !dbg !599

45:                                               ; preds = %44
  br label %46, !dbg !602

46:                                               ; preds = %45, %22
  br label %47

47:                                               ; preds = %46, %18
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @cookie_find(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !604 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [8192 x i8], align 16
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !607, metadata !DIExpression()), !dbg !608
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !609, metadata !DIExpression()), !dbg !610
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !611, metadata !DIExpression()), !dbg !612
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !613, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.declare(metadata ptr %10, metadata !615, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.declare(metadata ptr %11, metadata !617, metadata !DIExpression()), !dbg !618
  %15 = load ptr, ptr %6, align 8, !dbg !619
  store ptr %15, ptr %11, align 8, !dbg !618
  br label %16, !dbg !620

16:                                               ; preds = %92, %4
  %17 = load ptr, ptr %11, align 8, !dbg !621
  %18 = load i8, ptr %17, align 1, !dbg !622
  %19 = icmp ne i8 %18, 0, !dbg !620
  br i1 %19, label %20, label %95, !dbg !620

20:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %12, metadata !623, metadata !DIExpression()), !dbg !625
  %21 = load ptr, ptr %7, align 8, !dbg !626
  %22 = icmp ne ptr %21, null, !dbg !626
  br i1 %22, label %23, label %29, !dbg !626

23:                                               ; preds = %20
  %24 = load ptr, ptr %7, align 8, !dbg !626
  %25 = getelementptr inbounds i8, ptr %24, i64 0, !dbg !626
  %26 = load i8, ptr %25, align 1, !dbg !626
  %27 = sext i8 %26 to i32, !dbg !626
  %28 = icmp ne i32 %27, 0, !dbg !626
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i1 [ false, %20 ], [ %28, %23 ], !dbg !628
  %31 = zext i1 %30 to i32, !dbg !626
  %32 = icmp eq i32 %31, 0, !dbg !629
  br i1 %32, label %33, label %34, !dbg !630

33:                                               ; preds = %29
  store i32 1, ptr %12, align 4, !dbg !631
  br label %42, !dbg !632

34:                                               ; preds = %29
  %35 = getelementptr inbounds [8192 x i8], ptr %10, i64 0, i64 0, !dbg !633
  %36 = load ptr, ptr %11, align 8, !dbg !634
  %37 = call ptr @cookie_get(ptr noundef %35, ptr noundef %36, i32 noundef 5), !dbg !635
  %38 = load ptr, ptr %7, align 8, !dbg !636
  %39 = call i32 @strcmp(ptr noundef %37, ptr noundef %38) #9, !dbg !637
  %40 = icmp eq i32 %39, 0, !dbg !638
  %41 = zext i1 %40 to i32, !dbg !638
  store i32 %41, ptr %12, align 4, !dbg !639
  br label %42

42:                                               ; preds = %34, %33
  %43 = load i32, ptr %12, align 4, !dbg !640
  %44 = icmp ne i32 %43, 0, !dbg !640
  br i1 %44, label %45, label %92, !dbg !642

45:                                               ; preds = %42
  call void @llvm.dbg.declare(metadata ptr %13, metadata !643, metadata !DIExpression()), !dbg !645
  %46 = getelementptr inbounds [8192 x i8], ptr %10, i64 0, i64 0, !dbg !646
  %47 = load ptr, ptr %11, align 8, !dbg !647
  %48 = call ptr @cookie_get(ptr noundef %46, ptr noundef %47, i32 noundef 0), !dbg !648
  store ptr %48, ptr %13, align 8, !dbg !645
  %49 = load ptr, ptr %13, align 8, !dbg !649
  %50 = call i64 @strlen(ptr noundef %49) #9, !dbg !651
  %51 = load ptr, ptr %8, align 8, !dbg !652
  %52 = call i64 @strlen(ptr noundef %51) #9, !dbg !653
  %53 = icmp ule i64 %50, %52, !dbg !654
  br i1 %53, label %54, label %66, !dbg !655

54:                                               ; preds = %45
  %55 = load ptr, ptr %13, align 8, !dbg !656
  %56 = load ptr, ptr %8, align 8, !dbg !657
  %57 = load ptr, ptr %8, align 8, !dbg !658
  %58 = call i64 @strlen(ptr noundef %57) #9, !dbg !659
  %59 = getelementptr inbounds i8, ptr %56, i64 %58, !dbg !660
  %60 = load ptr, ptr %13, align 8, !dbg !661
  %61 = call i64 @strlen(ptr noundef %60) #9, !dbg !662
  %62 = sub i64 0, %61, !dbg !663
  %63 = getelementptr inbounds i8, ptr %59, i64 %62, !dbg !663
  %64 = call i32 @strcmp(ptr noundef %55, ptr noundef %63) #9, !dbg !664
  %65 = icmp eq i32 %64, 0, !dbg !665
  br i1 %65, label %71, label %66, !dbg !666

66:                                               ; preds = %54, %45
  %67 = load ptr, ptr %13, align 8, !dbg !667
  %68 = load ptr, ptr %8, align 8, !dbg !668
  %69 = call i32 @cookie_cmp_wildcard_domain(ptr noundef %67, ptr noundef %68), !dbg !669
  %70 = icmp ne i32 %69, 0, !dbg !669
  br i1 %70, label %91, label %71, !dbg !670

71:                                               ; preds = %66, %54
  call void @llvm.dbg.declare(metadata ptr %14, metadata !671, metadata !DIExpression()), !dbg !673
  %72 = getelementptr inbounds [8192 x i8], ptr %10, i64 0, i64 0, !dbg !674
  %73 = load ptr, ptr %11, align 8, !dbg !675
  %74 = call ptr @cookie_get(ptr noundef %72, ptr noundef %73, i32 noundef 2), !dbg !676
  store ptr %74, ptr %14, align 8, !dbg !673
  %75 = load ptr, ptr %14, align 8, !dbg !677
  %76 = call i64 @strlen(ptr noundef %75) #9, !dbg !679
  %77 = load ptr, ptr %9, align 8, !dbg !680
  %78 = call i64 @strlen(ptr noundef %77) #9, !dbg !681
  %79 = icmp ule i64 %76, %78, !dbg !682
  br i1 %79, label %80, label %90, !dbg !683

80:                                               ; preds = %71
  %81 = load ptr, ptr %9, align 8, !dbg !684
  %82 = load ptr, ptr %14, align 8, !dbg !687
  %83 = load ptr, ptr %14, align 8, !dbg !688
  %84 = call i64 @strlen(ptr noundef %83) #9, !dbg !689
  %85 = call i32 @strncmp(ptr noundef %81, ptr noundef %82, i64 noundef %84) #9, !dbg !690
  %86 = icmp eq i32 %85, 0, !dbg !691
  br i1 %86, label %87, label %89, !dbg !692

87:                                               ; preds = %80
  %88 = load ptr, ptr %11, align 8, !dbg !693
  store ptr %88, ptr %5, align 8, !dbg !695
  br label %96, !dbg !695

89:                                               ; preds = %80
  br label %90, !dbg !696

90:                                               ; preds = %89, %71
  br label %91, !dbg !697

91:                                               ; preds = %90, %66
  br label %92, !dbg !698

92:                                               ; preds = %91, %42
  %93 = load ptr, ptr %11, align 8, !dbg !699
  %94 = call ptr @cookie_nextfield(ptr noundef %93), !dbg !700
  store ptr %94, ptr %11, align 8, !dbg !701
  br label %16, !dbg !620, !llvm.loop !702

95:                                               ; preds = %16
  store ptr null, ptr %5, align 8, !dbg !704
  br label %96, !dbg !704

96:                                               ; preds = %95, %87
  %97 = load ptr, ptr %5, align 8, !dbg !705
  ret ptr %97, !dbg !705
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @cookie_nextfield(ptr noundef %0) #0 !dbg !706 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !709, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.declare(metadata ptr %3, metadata !711, metadata !DIExpression()), !dbg !712
  %4 = load ptr, ptr %2, align 8, !dbg !713
  store ptr %4, ptr %3, align 8, !dbg !712
  %5 = load ptr, ptr %2, align 8, !dbg !714
  %6 = call ptr @strchr(ptr noundef %5, i32 noundef 10) #9, !dbg !715
  store ptr %6, ptr %2, align 8, !dbg !716
  %7 = load ptr, ptr %2, align 8, !dbg !717
  %8 = icmp eq ptr %7, null, !dbg !719
  br i1 %8, label %9, label %14, !dbg !720

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !dbg !721
  %11 = load ptr, ptr %3, align 8, !dbg !722
  %12 = call i64 @strlen(ptr noundef %11) #9, !dbg !723
  %13 = getelementptr inbounds i8, ptr %10, i64 %12, !dbg !724
  store ptr %13, ptr %2, align 8, !dbg !725
  br label %17, !dbg !726

14:                                               ; preds = %1
  %15 = load ptr, ptr %2, align 8, !dbg !727
  %16 = getelementptr inbounds i8, ptr %15, i32 1, !dbg !727
  store ptr %16, ptr %2, align 8, !dbg !727
  br label %17

17:                                               ; preds = %14, %9
  br label %18, !dbg !728

18:                                               ; preds = %23, %17
  %19 = load ptr, ptr %2, align 8, !dbg !729
  %20 = load i8, ptr %19, align 1, !dbg !730
  %21 = sext i8 %20 to i32, !dbg !730
  %22 = icmp eq i32 %21, 10, !dbg !731
  br i1 %22, label %23, label %26, !dbg !728

23:                                               ; preds = %18
  %24 = load ptr, ptr %2, align 8, !dbg !732
  %25 = getelementptr inbounds i8, ptr %24, i32 1, !dbg !732
  store ptr %25, ptr %2, align 8, !dbg !732
  br label %18, !dbg !728, !llvm.loop !733

26:                                               ; preds = %18
  %27 = load ptr, ptr %2, align 8, !dbg !734
  ret ptr %27, !dbg !735
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cookie_delete(ptr noundef %0, i64 noundef %1) #0 !dbg !736 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !739, metadata !DIExpression()), !dbg !740
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !741, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.declare(metadata ptr %5, metadata !743, metadata !DIExpression()), !dbg !744
  %6 = load ptr, ptr %3, align 8, !dbg !745
  %7 = load i64, ptr %4, align 8, !dbg !745
  %8 = getelementptr inbounds i8, ptr %6, i64 %7, !dbg !745
  %9 = icmp ne ptr %8, null, !dbg !745
  br i1 %9, label %10, label %18, !dbg !745

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !dbg !745
  %12 = load i64, ptr %4, align 8, !dbg !745
  %13 = getelementptr inbounds i8, ptr %11, i64 %12, !dbg !745
  %14 = getelementptr inbounds i8, ptr %13, i64 0, !dbg !745
  %15 = load i8, ptr %14, align 1, !dbg !745
  %16 = sext i8 %15 to i32, !dbg !745
  %17 = icmp ne i32 %16, 0, !dbg !745
  br label %18

18:                                               ; preds = %10, %2
  %19 = phi i1 [ false, %2 ], [ %17, %10 ], !dbg !747
  %20 = zext i1 %19 to i32, !dbg !745
  %21 = icmp eq i32 %20, 0, !dbg !748
  br i1 %21, label %22, label %25, !dbg !749

22:                                               ; preds = %18
  %23 = load ptr, ptr %3, align 8, !dbg !750
  %24 = getelementptr inbounds i8, ptr %23, i64 0, !dbg !750
  store i8 0, ptr %24, align 1, !dbg !752
  br label %51, !dbg !753

25:                                               ; preds = %18
  %26 = load ptr, ptr %3, align 8, !dbg !754
  %27 = load i64, ptr %4, align 8, !dbg !754
  %28 = getelementptr inbounds i8, ptr %26, i64 %27, !dbg !754
  %29 = call i64 @strlen(ptr noundef %28) #9, !dbg !754
  %30 = add i64 %29, 1, !dbg !754
  %31 = call noalias ptr @malloc(i64 noundef %30) #11, !dbg !754
  store ptr %31, ptr %5, align 8, !dbg !756
  %32 = load ptr, ptr %5, align 8, !dbg !757
  %33 = icmp ne ptr %32, null, !dbg !757
  br i1 %33, label %34, label %50, !dbg !759

34:                                               ; preds = %25
  %35 = load ptr, ptr %5, align 8, !dbg !760
  %36 = load ptr, ptr %3, align 8, !dbg !760
  %37 = load i64, ptr %4, align 8, !dbg !760
  %38 = getelementptr inbounds i8, ptr %36, i64 %37, !dbg !760
  %39 = call ptr @strcpy(ptr noundef %35, ptr noundef %38) #10, !dbg !760
  %40 = load ptr, ptr %3, align 8, !dbg !762
  %41 = load ptr, ptr %5, align 8, !dbg !762
  %42 = call ptr @strcpy(ptr noundef %40, ptr noundef %41) #10, !dbg !762
  br label %43, !dbg !763

43:                                               ; preds = %34
  %44 = load ptr, ptr %5, align 8, !dbg !764
  %45 = icmp ne ptr %44, null, !dbg !764
  br i1 %45, label %46, label %48, !dbg !767

46:                                               ; preds = %43
  %47 = load ptr, ptr %5, align 8, !dbg !768
  call void @free(ptr noundef %47) #10, !dbg !768
  store ptr null, ptr %5, align 8, !dbg !768
  br label %48, !dbg !768

48:                                               ; preds = %46, %43
  br label %49, !dbg !767

49:                                               ; preds = %48
  br label %50, !dbg !770

50:                                               ; preds = %49, %25
  br label %51

51:                                               ; preds = %50, %22
  ret void, !dbg !771
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cookie_cmp_wildcard_domain(ptr noundef %0, ptr noundef %1) #0 !dbg !772 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !775, metadata !DIExpression()), !dbg !776
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !777, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.declare(metadata ptr %6, metadata !779, metadata !DIExpression()), !dbg !780
  %10 = load ptr, ptr %4, align 8, !dbg !781
  %11 = call i64 @strlen(ptr noundef %10) #9, !dbg !782
  store i64 %11, ptr %6, align 8, !dbg !780
  call void @llvm.dbg.declare(metadata ptr %7, metadata !783, metadata !DIExpression()), !dbg !784
  %12 = load ptr, ptr %5, align 8, !dbg !785
  %13 = call i64 @strlen(ptr noundef %12) #9, !dbg !786
  store i64 %13, ptr %7, align 8, !dbg !784
  call void @llvm.dbg.declare(metadata ptr %8, metadata !787, metadata !DIExpression()), !dbg !788
  %14 = load i64, ptr %6, align 8, !dbg !789
  %15 = load i64, ptr %7, align 8, !dbg !790
  %16 = icmp ult i64 %14, %15, !dbg !791
  br i1 %16, label %17, label %19, !dbg !789

17:                                               ; preds = %2
  %18 = load i64, ptr %6, align 8, !dbg !792
  br label %21, !dbg !789

19:                                               ; preds = %2
  %20 = load i64, ptr %7, align 8, !dbg !793
  br label %21, !dbg !789

21:                                               ; preds = %19, %17
  %22 = phi i64 [ %18, %17 ], [ %20, %19 ], !dbg !789
  store i64 %22, ptr %8, align 8, !dbg !788
  call void @llvm.dbg.declare(metadata ptr %9, metadata !794, metadata !DIExpression()), !dbg !795
  %23 = load i64, ptr %8, align 8, !dbg !796
  %24 = sub i64 %23, 1, !dbg !798
  store i64 %24, ptr %9, align 8, !dbg !799
  br label %25, !dbg !800

25:                                               ; preds = %48, %21
  %26 = load i64, ptr %9, align 8, !dbg !801
  %27 = icmp uge i64 %26, 0, !dbg !803
  br i1 %27, label %28, label %51, !dbg !804

28:                                               ; preds = %25
  %29 = load ptr, ptr %4, align 8, !dbg !805
  %30 = load i64, ptr %6, align 8, !dbg !808
  %31 = load i64, ptr %9, align 8, !dbg !809
  %32 = sub i64 %30, %31, !dbg !810
  %33 = sub i64 %32, 1, !dbg !811
  %34 = getelementptr inbounds i8, ptr %29, i64 %33, !dbg !805
  %35 = load i8, ptr %34, align 1, !dbg !805
  %36 = sext i8 %35 to i32, !dbg !805
  %37 = load ptr, ptr %5, align 8, !dbg !812
  %38 = load i64, ptr %7, align 8, !dbg !813
  %39 = load i64, ptr %9, align 8, !dbg !814
  %40 = sub i64 %38, %39, !dbg !815
  %41 = sub i64 %40, 1, !dbg !816
  %42 = getelementptr inbounds i8, ptr %37, i64 %41, !dbg !812
  %43 = load i8, ptr %42, align 1, !dbg !812
  %44 = sext i8 %43 to i32, !dbg !812
  %45 = icmp ne i32 %36, %44, !dbg !817
  br i1 %45, label %46, label %47, !dbg !818

46:                                               ; preds = %28
  store i32 1, ptr %3, align 4, !dbg !819
  br label %69, !dbg !819

47:                                               ; preds = %28
  br label %48, !dbg !821

48:                                               ; preds = %47
  %49 = load i64, ptr %9, align 8, !dbg !822
  %50 = add i64 %49, -1, !dbg !822
  store i64 %50, ptr %9, align 8, !dbg !822
  br label %25, !dbg !823, !llvm.loop !824

51:                                               ; preds = %25
  %52 = load i64, ptr %7, align 8, !dbg !826
  %53 = load i64, ptr %6, align 8, !dbg !828
  %54 = icmp ult i64 %52, %53, !dbg !829
  br i1 %54, label %55, label %62, !dbg !830

55:                                               ; preds = %51
  %56 = load ptr, ptr %4, align 8, !dbg !831
  %57 = getelementptr inbounds i8, ptr %56, i64 0, !dbg !831
  %58 = load i8, ptr %57, align 1, !dbg !831
  %59 = sext i8 %58 to i32, !dbg !831
  %60 = icmp eq i32 %59, 46, !dbg !832
  br i1 %60, label %61, label %62, !dbg !833

61:                                               ; preds = %55
  store i32 0, ptr %3, align 4, !dbg !834
  br label %69, !dbg !834

62:                                               ; preds = %55, %51
  %63 = load i64, ptr %7, align 8, !dbg !836
  %64 = load i64, ptr %6, align 8, !dbg !838
  %65 = icmp ne i64 %63, %64, !dbg !839
  br i1 %65, label %66, label %67, !dbg !840

66:                                               ; preds = %62
  store i32 1, ptr %3, align 4, !dbg !841
  br label %69, !dbg !841

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67
  store i32 0, ptr %3, align 4, !dbg !843
  br label %69, !dbg !843

69:                                               ; preds = %68, %66, %61, %46
  %70 = load i32, ptr %3, align 4, !dbg !844
  ret i32 %70, !dbg !844
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cookie_load(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !845 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [8192 x i8], align 16
  %9 = alloca [8192 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca [8192 x i8], align 16
  %12 = alloca [256 x i8], align 16
  %13 = alloca [256 x i8], align 16
  %14 = alloca [1024 x i8], align 16
  %15 = alloca [8192 x i8], align 16
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !848, metadata !DIExpression()), !dbg !849
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !850, metadata !DIExpression()), !dbg !851
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !852, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.declare(metadata ptr %8, metadata !854, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.declare(metadata ptr %9, metadata !856, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.declare(metadata ptr %10, metadata !858, metadata !DIExpression()), !dbg !910
  %16 = getelementptr inbounds [8192 x i8], ptr %8, i64 0, i64 0, !dbg !911
  %17 = load ptr, ptr %6, align 8, !dbg !911
  %18 = load ptr, ptr %7, align 8, !dbg !911
  %19 = call ptr @fconcat(ptr noundef %16, i64 noundef 8192, ptr noundef %17, ptr noundef %18), !dbg !911
  %20 = call noalias ptr @fopen(ptr noundef %19, ptr noundef @.str.15), !dbg !912
  store ptr %20, ptr %10, align 8, !dbg !910
  %21 = load ptr, ptr %10, align 8, !dbg !913
  %22 = icmp ne ptr %21, null, !dbg !913
  br i1 %22, label %23, label %89, !dbg !915

23:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %11, metadata !916, metadata !DIExpression()), !dbg !918
  br label %24, !dbg !919

24:                                               ; preds = %85, %23
  %25 = load ptr, ptr %10, align 8, !dbg !920
  %26 = call i32 @feof(ptr noundef %25) #10, !dbg !921
  %27 = icmp ne i32 %26, 0, !dbg !921
  br i1 %27, label %38, label %28, !dbg !922

28:                                               ; preds = %24
  %29 = load ptr, ptr %5, align 8, !dbg !923
  %30 = getelementptr inbounds %struct.t_cookie, ptr %29, i32 0, i32 1, !dbg !924
  %31 = getelementptr inbounds [32768 x i8], ptr %30, i64 0, i64 0, !dbg !923
  %32 = call i64 @strlen(ptr noundef %31) #9, !dbg !925
  %33 = trunc i64 %32 to i32, !dbg !926
  %34 = load ptr, ptr %5, align 8, !dbg !927
  %35 = getelementptr inbounds %struct.t_cookie, ptr %34, i32 0, i32 0, !dbg !928
  %36 = load i32, ptr %35, align 8, !dbg !928
  %37 = icmp slt i32 %33, %36, !dbg !929
  br label %38

38:                                               ; preds = %28, %24
  %39 = phi i1 [ false, %24 ], [ %37, %28 ], !dbg !930
  br i1 %39, label %40, label %86, !dbg !919

40:                                               ; preds = %38
  %41 = load ptr, ptr %10, align 8, !dbg !931
  %42 = getelementptr inbounds [8192 x i8], ptr %11, i64 0, i64 0, !dbg !933
  call void @rawlinput(ptr noundef %41, ptr noundef %42, i32 noundef 8100), !dbg !934
  %43 = getelementptr inbounds [8192 x i8], ptr %11, i64 0, i64 0, !dbg !935
  %44 = load i8, ptr %43, align 16, !dbg !935
  %45 = sext i8 %44 to i32, !dbg !935
  %46 = icmp ne i32 %45, 0, !dbg !935
  br i1 %46, label %47, label %85, !dbg !937

47:                                               ; preds = %40
  %48 = getelementptr inbounds [8192 x i8], ptr %11, i64 0, i64 0, !dbg !938
  %49 = call i64 @strlen(ptr noundef %48) #9, !dbg !941
  %50 = icmp ult i64 %49, 8000, !dbg !942
  br i1 %50, label %51, label %84, !dbg !943

51:                                               ; preds = %47
  %52 = getelementptr inbounds [8192 x i8], ptr %11, i64 0, i64 0, !dbg !944
  %53 = load i8, ptr %52, align 16, !dbg !944
  %54 = sext i8 %53 to i32, !dbg !944
  %55 = icmp ne i32 %54, 35, !dbg !947
  br i1 %55, label %56, label %83, !dbg !948

56:                                               ; preds = %51
  call void @llvm.dbg.declare(metadata ptr %12, metadata !949, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.declare(metadata ptr %13, metadata !955, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.declare(metadata ptr %14, metadata !957, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.declare(metadata ptr %15, metadata !959, metadata !DIExpression()), !dbg !960
  %57 = getelementptr inbounds [256 x i8], ptr %12, i64 0, i64 0, !dbg !961
  %58 = getelementptr inbounds [8192 x i8], ptr %9, i64 0, i64 0, !dbg !961
  %59 = getelementptr inbounds [8192 x i8], ptr %11, i64 0, i64 0, !dbg !961
  %60 = call ptr @cookie_get(ptr noundef %58, ptr noundef %59, i32 noundef 0), !dbg !961
  %61 = call ptr @strcpy_safe_(ptr noundef %57, i64 noundef 256, ptr noundef %60, i64 noundef -1, ptr noundef @.str.16, ptr noundef @.str.1, i32 noundef 293), !dbg !961
  %62 = getelementptr inbounds [256 x i8], ptr %13, i64 0, i64 0, !dbg !962
  %63 = getelementptr inbounds [8192 x i8], ptr %9, i64 0, i64 0, !dbg !962
  %64 = getelementptr inbounds [8192 x i8], ptr %11, i64 0, i64 0, !dbg !962
  %65 = call ptr @cookie_get(ptr noundef %63, ptr noundef %64, i32 noundef 2), !dbg !962
  %66 = call ptr @strcpy_safe_(ptr noundef %62, i64 noundef 256, ptr noundef %65, i64 noundef -1, ptr noundef @.str.17, ptr noundef @.str.1, i32 noundef 294), !dbg !962
  %67 = getelementptr inbounds [1024 x i8], ptr %14, i64 0, i64 0, !dbg !963
  %68 = getelementptr inbounds [8192 x i8], ptr %9, i64 0, i64 0, !dbg !963
  %69 = getelementptr inbounds [8192 x i8], ptr %11, i64 0, i64 0, !dbg !963
  %70 = call ptr @cookie_get(ptr noundef %68, ptr noundef %69, i32 noundef 5), !dbg !963
  %71 = call ptr @strcpy_safe_(ptr noundef %67, i64 noundef 1024, ptr noundef %70, i64 noundef -1, ptr noundef @.str.18, ptr noundef @.str.1, i32 noundef 295), !dbg !963
  %72 = getelementptr inbounds [8192 x i8], ptr %15, i64 0, i64 0, !dbg !964
  %73 = getelementptr inbounds [8192 x i8], ptr %9, i64 0, i64 0, !dbg !964
  %74 = getelementptr inbounds [8192 x i8], ptr %11, i64 0, i64 0, !dbg !964
  %75 = call ptr @cookie_get(ptr noundef %73, ptr noundef %74, i32 noundef 6), !dbg !964
  %76 = call ptr @strcpy_safe_(ptr noundef %72, i64 noundef 8192, ptr noundef %75, i64 noundef -1, ptr noundef @.str.19, ptr noundef @.str.1, i32 noundef 296), !dbg !964
  %77 = load ptr, ptr %5, align 8, !dbg !965
  %78 = getelementptr inbounds [1024 x i8], ptr %14, i64 0, i64 0, !dbg !966
  %79 = getelementptr inbounds [8192 x i8], ptr %15, i64 0, i64 0, !dbg !967
  %80 = getelementptr inbounds [256 x i8], ptr %12, i64 0, i64 0, !dbg !968
  %81 = getelementptr inbounds [256 x i8], ptr %13, i64 0, i64 0, !dbg !969
  %82 = call i32 @cookie_add(ptr noundef %77, ptr noundef %78, ptr noundef %79, ptr noundef %80, ptr noundef %81), !dbg !970
  br label %83, !dbg !971

83:                                               ; preds = %56, %51
  br label %84, !dbg !972

84:                                               ; preds = %83, %47
  br label %85, !dbg !973

85:                                               ; preds = %84, %40
  br label %24, !dbg !919, !llvm.loop !974

86:                                               ; preds = %38
  %87 = load ptr, ptr %10, align 8, !dbg !976
  %88 = call i32 @fclose(ptr noundef %87), !dbg !977
  store i32 0, ptr %4, align 4, !dbg !978
  br label %90, !dbg !978

89:                                               ; preds = %3
  store i32 -1, ptr %4, align 4, !dbg !979
  br label %90, !dbg !979

90:                                               ; preds = %89, %86
  %91 = load i32, ptr %4, align 4, !dbg !980
  ret i32 %91, !dbg !980
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #3

declare ptr @fconcat(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @feof(ptr noundef) #4

declare void @rawlinput(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @fclose(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cookie_save(ptr noundef %0, ptr noundef %1) #0 !dbg !981 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [8192 x i8], align 16
  %7 = alloca [8192 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !984, metadata !DIExpression()), !dbg !985
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !986, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.declare(metadata ptr %6, metadata !988, metadata !DIExpression()), !dbg !989
  %10 = load ptr, ptr %4, align 8, !dbg !990
  %11 = getelementptr inbounds %struct.t_cookie, ptr %10, i32 0, i32 1, !dbg !990
  %12 = getelementptr inbounds [32768 x i8], ptr %11, i64 0, i64 0, !dbg !990
  %13 = icmp ne ptr %12, null, !dbg !990
  br i1 %13, label %14, label %53, !dbg !990

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !dbg !990
  %16 = getelementptr inbounds %struct.t_cookie, ptr %15, i32 0, i32 1, !dbg !990
  %17 = getelementptr inbounds [32768 x i8], ptr %16, i64 0, i64 0, !dbg !990
  %18 = load i8, ptr %17, align 4, !dbg !990
  %19 = sext i8 %18 to i32, !dbg !990
  %20 = icmp ne i32 %19, 0, !dbg !990
  br i1 %20, label %21, label %53, !dbg !992

21:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %7, metadata !993, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.declare(metadata ptr %8, metadata !996, metadata !DIExpression()), !dbg !997
  %22 = getelementptr inbounds [8192 x i8], ptr %6, i64 0, i64 0, !dbg !998
  %23 = load ptr, ptr %5, align 8, !dbg !998
  %24 = call ptr @fconv(ptr noundef %22, i64 noundef 8192, ptr noundef %23), !dbg !998
  %25 = call noalias ptr @fopen(ptr noundef %24, ptr noundef @.str.20), !dbg !999
  store ptr %25, ptr %8, align 8, !dbg !997
  %26 = load ptr, ptr %8, align 8, !dbg !1000
  %27 = icmp ne ptr %26, null, !dbg !1000
  br i1 %27, label %28, label %52, !dbg !1002

28:                                               ; preds = %21
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1003, metadata !DIExpression()), !dbg !1005
  %29 = load ptr, ptr %4, align 8, !dbg !1006
  %30 = getelementptr inbounds %struct.t_cookie, ptr %29, i32 0, i32 1, !dbg !1007
  %31 = getelementptr inbounds [32768 x i8], ptr %30, i64 0, i64 0, !dbg !1006
  store ptr %31, ptr %9, align 8, !dbg !1005
  %32 = load ptr, ptr %8, align 8, !dbg !1008
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.21), !dbg !1009
  br label %34, !dbg !1010

34:                                               ; preds = %44, %28
  %35 = load ptr, ptr %9, align 8, !dbg !1011
  %36 = getelementptr inbounds [8192 x i8], ptr %7, i64 0, i64 0, !dbg !1013
  %37 = call i32 @binput(ptr noundef %35, ptr noundef %36, i32 noundef 8000), !dbg !1014
  %38 = load ptr, ptr %9, align 8, !dbg !1015
  %39 = sext i32 %37 to i64, !dbg !1015
  %40 = getelementptr inbounds i8, ptr %38, i64 %39, !dbg !1015
  store ptr %40, ptr %9, align 8, !dbg !1015
  %41 = load ptr, ptr %8, align 8, !dbg !1016
  %42 = getelementptr inbounds [8192 x i8], ptr %7, i64 0, i64 0, !dbg !1017
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.22, ptr noundef %42), !dbg !1018
  br label %44, !dbg !1019

44:                                               ; preds = %34
  %45 = getelementptr inbounds [8192 x i8], ptr %7, i64 0, i64 0, !dbg !1020
  %46 = load i8, ptr %45, align 16, !dbg !1020
  %47 = sext i8 %46 to i32, !dbg !1020
  %48 = icmp ne i32 %47, 0, !dbg !1020
  br i1 %48, label %34, label %49, !dbg !1019, !llvm.loop !1021

49:                                               ; preds = %44
  %50 = load ptr, ptr %8, align 8, !dbg !1023
  %51 = call i32 @fclose(ptr noundef %50), !dbg !1024
  store i32 0, ptr %3, align 4, !dbg !1025
  br label %55, !dbg !1025

52:                                               ; preds = %21
  br label %54, !dbg !1026

53:                                               ; preds = %14, %2
  store i32 0, ptr %3, align 4, !dbg !1027
  br label %55, !dbg !1027

54:                                               ; preds = %52
  store i32 -1, ptr %3, align 4, !dbg !1028
  br label %55, !dbg !1028

55:                                               ; preds = %54, %53, %49
  %56 = load i32, ptr %3, align 4, !dbg !1029
  ret i32 %56, !dbg !1029
}

declare ptr @fconv(ptr noundef, i64 noundef, ptr noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @binput(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: nounwind
declare ptr @strncat(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bauth_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1030 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [2048 x i8], align 16
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1031, metadata !DIExpression()), !dbg !1032
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1033, metadata !DIExpression()), !dbg !1034
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1035, metadata !DIExpression()), !dbg !1036
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1037, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1039, metadata !DIExpression()), !dbg !1043
  %13 = load ptr, ptr %6, align 8, !dbg !1044
  %14 = icmp ne ptr %13, null, !dbg !1044
  br i1 %14, label %15, label %63, !dbg !1046

15:                                               ; preds = %4
  %16 = load ptr, ptr %6, align 8, !dbg !1047
  %17 = load ptr, ptr %7, align 8, !dbg !1050
  %18 = load ptr, ptr %8, align 8, !dbg !1051
  %19 = call ptr @bauth_check(ptr noundef %16, ptr noundef %17, ptr noundef %18), !dbg !1052
  %20 = icmp ne ptr %19, null, !dbg !1052
  br i1 %20, label %62, label %21, !dbg !1053

21:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1054, metadata !DIExpression()), !dbg !1056
  %22 = load ptr, ptr %6, align 8, !dbg !1057
  %23 = getelementptr inbounds %struct.t_cookie, ptr %22, i32 0, i32 2, !dbg !1058
  store ptr %23, ptr %11, align 8, !dbg !1056
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1059, metadata !DIExpression()), !dbg !1060
  %24 = getelementptr inbounds [2048 x i8], ptr %10, i64 0, i64 0, !dbg !1061
  %25 = load ptr, ptr %7, align 8, !dbg !1062
  %26 = load ptr, ptr %8, align 8, !dbg !1063
  %27 = call ptr @bauth_prefix(ptr noundef %24, ptr noundef %25, ptr noundef %26), !dbg !1064
  store ptr %27, ptr %12, align 8, !dbg !1060
  br label %28, !dbg !1065

28:                                               ; preds = %33, %21
  %29 = load ptr, ptr %11, align 8, !dbg !1066
  %30 = getelementptr inbounds %struct.bauth_chain, ptr %29, i32 0, i32 2, !dbg !1067
  %31 = load ptr, ptr %30, align 8, !dbg !1067
  %32 = icmp ne ptr %31, null, !dbg !1065
  br i1 %32, label %33, label %37, !dbg !1065

33:                                               ; preds = %28
  %34 = load ptr, ptr %11, align 8, !dbg !1068
  %35 = getelementptr inbounds %struct.bauth_chain, ptr %34, i32 0, i32 2, !dbg !1069
  %36 = load ptr, ptr %35, align 8, !dbg !1069
  store ptr %36, ptr %11, align 8, !dbg !1070
  br label %28, !dbg !1065, !llvm.loop !1071

37:                                               ; preds = %28
  %38 = call noalias ptr @calloc(i64 noundef 2056, i64 noundef 1) #12, !dbg !1072
  %39 = load ptr, ptr %11, align 8, !dbg !1073
  %40 = getelementptr inbounds %struct.bauth_chain, ptr %39, i32 0, i32 2, !dbg !1074
  store ptr %38, ptr %40, align 8, !dbg !1075
  %41 = load ptr, ptr %11, align 8, !dbg !1076
  %42 = getelementptr inbounds %struct.bauth_chain, ptr %41, i32 0, i32 2, !dbg !1078
  %43 = load ptr, ptr %42, align 8, !dbg !1078
  %44 = icmp ne ptr %43, null, !dbg !1076
  br i1 %44, label %45, label %61, !dbg !1079

45:                                               ; preds = %37
  %46 = load ptr, ptr %11, align 8, !dbg !1080
  %47 = getelementptr inbounds %struct.bauth_chain, ptr %46, i32 0, i32 2, !dbg !1082
  %48 = load ptr, ptr %47, align 8, !dbg !1082
  store ptr %48, ptr %11, align 8, !dbg !1083
  %49 = load ptr, ptr %11, align 8, !dbg !1084
  %50 = getelementptr inbounds %struct.bauth_chain, ptr %49, i32 0, i32 2, !dbg !1085
  store ptr null, ptr %50, align 8, !dbg !1086
  %51 = load ptr, ptr %11, align 8, !dbg !1087
  %52 = getelementptr inbounds %struct.bauth_chain, ptr %51, i32 0, i32 1, !dbg !1087
  %53 = getelementptr inbounds [1024 x i8], ptr %52, i64 0, i64 0, !dbg !1087
  %54 = load ptr, ptr %9, align 8, !dbg !1087
  %55 = call ptr @strcpy_safe_(ptr noundef %53, i64 noundef 1024, ptr noundef %54, i64 noundef -1, ptr noundef @.str.24, ptr noundef @.str.1, i32 noundef 431), !dbg !1087
  %56 = load ptr, ptr %11, align 8, !dbg !1088
  %57 = getelementptr inbounds %struct.bauth_chain, ptr %56, i32 0, i32 0, !dbg !1088
  %58 = getelementptr inbounds [1024 x i8], ptr %57, i64 0, i64 0, !dbg !1088
  %59 = load ptr, ptr %12, align 8, !dbg !1088
  %60 = call ptr @strcpy_safe_(ptr noundef %58, i64 noundef 1024, ptr noundef %59, i64 noundef -1, ptr noundef @.str.25, ptr noundef @.str.1, i32 noundef 432), !dbg !1088
  store i32 1, ptr %5, align 4, !dbg !1089
  br label %64, !dbg !1089

61:                                               ; preds = %37
  br label %62, !dbg !1090

62:                                               ; preds = %61, %15
  br label %63, !dbg !1091

63:                                               ; preds = %62, %4
  store i32 0, ptr %5, align 4, !dbg !1092
  br label %64, !dbg !1092

64:                                               ; preds = %63, %45
  %65 = load i32, ptr %5, align 4, !dbg !1093
  ret i32 %65, !dbg !1093
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @bauth_check(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1094 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [2048 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1097, metadata !DIExpression()), !dbg !1098
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1099, metadata !DIExpression()), !dbg !1100
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1101, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1103, metadata !DIExpression()), !dbg !1104
  %11 = load ptr, ptr %5, align 8, !dbg !1105
  %12 = icmp ne ptr %11, null, !dbg !1105
  br i1 %12, label %13, label %56, !dbg !1107

13:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1108, metadata !DIExpression()), !dbg !1110
  %14 = load ptr, ptr %5, align 8, !dbg !1111
  %15 = getelementptr inbounds %struct.t_cookie, ptr %14, i32 0, i32 2, !dbg !1112
  store ptr %15, ptr %9, align 8, !dbg !1110
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1113, metadata !DIExpression()), !dbg !1114
  %16 = getelementptr inbounds [2048 x i8], ptr %8, i64 0, i64 0, !dbg !1115
  %17 = load ptr, ptr %6, align 8, !dbg !1116
  %18 = load ptr, ptr %7, align 8, !dbg !1117
  %19 = call ptr @bauth_prefix(ptr noundef %16, ptr noundef %17, ptr noundef %18), !dbg !1118
  store ptr %19, ptr %10, align 8, !dbg !1114
  br label %20, !dbg !1119

20:                                               ; preds = %51, %13
  %21 = load ptr, ptr %9, align 8, !dbg !1120
  %22 = icmp ne ptr %21, null, !dbg !1119
  br i1 %22, label %23, label %55, !dbg !1119

23:                                               ; preds = %20
  %24 = load ptr, ptr %9, align 8, !dbg !1121
  %25 = getelementptr inbounds %struct.bauth_chain, ptr %24, i32 0, i32 0, !dbg !1121
  %26 = getelementptr inbounds [1024 x i8], ptr %25, i64 0, i64 0, !dbg !1121
  %27 = icmp ne ptr %26, null, !dbg !1121
  br i1 %27, label %28, label %51, !dbg !1121

28:                                               ; preds = %23
  %29 = load ptr, ptr %9, align 8, !dbg !1121
  %30 = getelementptr inbounds %struct.bauth_chain, ptr %29, i32 0, i32 0, !dbg !1121
  %31 = getelementptr inbounds [1024 x i8], ptr %30, i64 0, i64 0, !dbg !1121
  %32 = load i8, ptr %31, align 8, !dbg !1121
  %33 = sext i8 %32 to i32, !dbg !1121
  %34 = icmp ne i32 %33, 0, !dbg !1121
  br i1 %34, label %35, label %51, !dbg !1124

35:                                               ; preds = %28
  %36 = load ptr, ptr %10, align 8, !dbg !1125
  %37 = load ptr, ptr %9, align 8, !dbg !1128
  %38 = getelementptr inbounds %struct.bauth_chain, ptr %37, i32 0, i32 0, !dbg !1129
  %39 = getelementptr inbounds [1024 x i8], ptr %38, i64 0, i64 0, !dbg !1128
  %40 = load ptr, ptr %9, align 8, !dbg !1130
  %41 = getelementptr inbounds %struct.bauth_chain, ptr %40, i32 0, i32 0, !dbg !1131
  %42 = getelementptr inbounds [1024 x i8], ptr %41, i64 0, i64 0, !dbg !1130
  %43 = call i64 @strlen(ptr noundef %42) #9, !dbg !1132
  %44 = call i32 @strncmp(ptr noundef %36, ptr noundef %39, i64 noundef %43) #9, !dbg !1133
  %45 = icmp eq i32 %44, 0, !dbg !1134
  br i1 %45, label %46, label %50, !dbg !1135

46:                                               ; preds = %35
  %47 = load ptr, ptr %9, align 8, !dbg !1136
  %48 = getelementptr inbounds %struct.bauth_chain, ptr %47, i32 0, i32 1, !dbg !1138
  %49 = getelementptr inbounds [1024 x i8], ptr %48, i64 0, i64 0, !dbg !1136
  store ptr %49, ptr %4, align 8, !dbg !1139
  br label %57, !dbg !1139

50:                                               ; preds = %35
  br label %51, !dbg !1140

51:                                               ; preds = %50, %28, %23
  %52 = load ptr, ptr %9, align 8, !dbg !1141
  %53 = getelementptr inbounds %struct.bauth_chain, ptr %52, i32 0, i32 2, !dbg !1142
  %54 = load ptr, ptr %53, align 8, !dbg !1142
  store ptr %54, ptr %9, align 8, !dbg !1143
  br label %20, !dbg !1119, !llvm.loop !1144

55:                                               ; preds = %20
  br label %56, !dbg !1146

56:                                               ; preds = %55, %3
  store ptr null, ptr %4, align 8, !dbg !1147
  br label %57, !dbg !1147

57:                                               ; preds = %56, %46
  %58 = load ptr, ptr %4, align 8, !dbg !1148
  ret ptr %58, !dbg !1148
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @bauth_prefix(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1149 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1152, metadata !DIExpression()), !dbg !1153
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1154, metadata !DIExpression()), !dbg !1155
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1156, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1158, metadata !DIExpression()), !dbg !1159
  %8 = load ptr, ptr %4, align 8, !dbg !1160
  %9 = load ptr, ptr %5, align 8, !dbg !1160
  %10 = call ptr @jump_identification_const(ptr noundef %9), !dbg !1160
  %11 = call ptr @strcpy(ptr noundef %8, ptr noundef %10) #10, !dbg !1160
  %12 = load ptr, ptr %4, align 8, !dbg !1161
  %13 = load ptr, ptr %6, align 8, !dbg !1161
  %14 = call ptr @strcat(ptr noundef %12, ptr noundef %13) #10, !dbg !1161
  %15 = load ptr, ptr %4, align 8, !dbg !1162
  %16 = call ptr @strchr(ptr noundef %15, i32 noundef 63) #9, !dbg !1163
  store ptr %16, ptr %7, align 8, !dbg !1164
  %17 = load ptr, ptr %7, align 8, !dbg !1165
  %18 = icmp ne ptr %17, null, !dbg !1165
  br i1 %18, label %19, label %21, !dbg !1167

19:                                               ; preds = %3
  %20 = load ptr, ptr %7, align 8, !dbg !1168
  store i8 0, ptr %20, align 1, !dbg !1169
  br label %21, !dbg !1170

21:                                               ; preds = %19, %3
  %22 = load ptr, ptr %4, align 8, !dbg !1171
  %23 = call ptr @strchr(ptr noundef %22, i32 noundef 47) #9, !dbg !1173
  %24 = icmp ne ptr %23, null, !dbg !1173
  br i1 %24, label %25, label %42, !dbg !1174

25:                                               ; preds = %21
  %26 = load ptr, ptr %4, align 8, !dbg !1175
  %27 = load ptr, ptr %4, align 8, !dbg !1177
  %28 = call i64 @strlen(ptr noundef %27) #9, !dbg !1178
  %29 = getelementptr inbounds i8, ptr %26, i64 %28, !dbg !1179
  %30 = getelementptr inbounds i8, ptr %29, i64 -1, !dbg !1180
  store ptr %30, ptr %7, align 8, !dbg !1181
  br label %31, !dbg !1182

31:                                               ; preds = %36, %25
  %32 = load ptr, ptr %7, align 8, !dbg !1183
  %33 = load i8, ptr %32, align 1, !dbg !1184
  %34 = sext i8 %33 to i32, !dbg !1184
  %35 = icmp ne i32 %34, 47, !dbg !1185
  br i1 %35, label %36, label %39, !dbg !1182

36:                                               ; preds = %31
  %37 = load ptr, ptr %7, align 8, !dbg !1186
  %38 = getelementptr inbounds i8, ptr %37, i32 -1, !dbg !1186
  store ptr %38, ptr %7, align 8, !dbg !1186
  br label %31, !dbg !1182, !llvm.loop !1187

39:                                               ; preds = %31
  %40 = load ptr, ptr %7, align 8, !dbg !1188
  %41 = getelementptr inbounds i8, ptr %40, i64 1, !dbg !1189
  store i8 0, ptr %41, align 1, !dbg !1190
  br label %42, !dbg !1191

42:                                               ; preds = %39, %21
  %43 = load ptr, ptr %4, align 8, !dbg !1192
  ret ptr %43, !dbg !1193
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #6

declare ptr @jump_identification_const(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abortf_(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1194 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1197, metadata !DIExpression()), !dbg !1198
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1199, metadata !DIExpression()), !dbg !1200
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1201, metadata !DIExpression()), !dbg !1202
  %7 = load ptr, ptr %4, align 8, !dbg !1203
  %8 = load ptr, ptr %5, align 8, !dbg !1204
  %9 = load i32, ptr %6, align 4, !dbg !1205
  call void @log_abort_(ptr noundef %7, ptr noundef %8, i32 noundef %9), !dbg !1206
  call void @abort() #13, !dbg !1207
  unreachable, !dbg !1207
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_abort_(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1208 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1209, metadata !DIExpression()), !dbg !1210
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1211, metadata !DIExpression()), !dbg !1212
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1213, metadata !DIExpression()), !dbg !1214
  %7 = load ptr, ptr @stderr, align 8, !dbg !1215
  %8 = load ptr, ptr %4, align 8, !dbg !1216
  %9 = load ptr, ptr %5, align 8, !dbg !1217
  %10 = load i32, ptr %6, align 4, !dbg !1218
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.27, ptr noundef %8, ptr noundef %9, i32 noundef %10), !dbg !1219
  %12 = load ptr, ptr @stderr, align 8, !dbg !1220
  %13 = call i32 @fflush(ptr noundef %12), !dbg !1221
  ret void, !dbg !1222
}

; Function Attrs: noreturn nounwind
declare void @abort() #7

declare i32 @fflush(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @strlen_safe_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1223 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1226, metadata !DIExpression()), !dbg !1227
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1228, metadata !DIExpression()), !dbg !1229
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1230, metadata !DIExpression()), !dbg !1231
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1232, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1234, metadata !DIExpression()), !dbg !1235
  %10 = load ptr, ptr %5, align 8, !dbg !1236
  %11 = icmp ne ptr %10, null, !dbg !1236
  br i1 %11, label %15, label %12, !dbg !1236

12:                                               ; preds = %4
  %13 = load ptr, ptr %7, align 8, !dbg !1236
  %14 = load i32, ptr %8, align 4, !dbg !1236
  call void @abortf_(ptr noundef @.str.28, ptr noundef %13, i32 noundef %14), !dbg !1236
  br label %15, !dbg !1236

15:                                               ; preds = %12, %4
  %16 = phi i1 [ true, %4 ], [ false, %12 ]
  %17 = zext i1 %16 to i32, !dbg !1236
  %18 = load i64, ptr %6, align 8, !dbg !1237
  %19 = icmp ne i64 %18, -1, !dbg !1238
  br i1 %19, label %20, label %24, !dbg !1237

20:                                               ; preds = %15
  %21 = load ptr, ptr %5, align 8, !dbg !1239
  %22 = load i64, ptr %6, align 8, !dbg !1240
  %23 = call i64 @strnlen(ptr noundef %21, i64 noundef %22) #9, !dbg !1241
  br label %27, !dbg !1237

24:                                               ; preds = %15
  %25 = load ptr, ptr %5, align 8, !dbg !1242
  %26 = call i64 @strlen(ptr noundef %25) #9, !dbg !1243
  br label %27, !dbg !1237

27:                                               ; preds = %24, %20
  %28 = phi i64 [ %23, %20 ], [ %26, %24 ], !dbg !1237
  store i64 %28, ptr %9, align 8, !dbg !1244
  %29 = load i64, ptr %9, align 8, !dbg !1245
  %30 = load i64, ptr %6, align 8, !dbg !1245
  %31 = icmp ult i64 %29, %30, !dbg !1245
  br i1 %31, label %35, label %32, !dbg !1245

32:                                               ; preds = %27
  %33 = load ptr, ptr %7, align 8, !dbg !1245
  %34 = load i32, ptr %8, align 4, !dbg !1245
  call void @abortf_(ptr noundef @.str.29, ptr noundef %33, i32 noundef %34), !dbg !1245
  br label %35, !dbg !1245

35:                                               ; preds = %32, %27
  %36 = phi i1 [ true, %27 ], [ false, %32 ]
  %37 = zext i1 %36 to i32, !dbg !1245
  %38 = load i64, ptr %9, align 8, !dbg !1246
  ret i64 %38, !dbg !1247
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strnlen(ptr noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { noreturn nounwind }

!llvm.dbg.cu = !{!132}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/htsbauth.c", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "60e5fa150de2f8dcac559adcd6cb85ae")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 42)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 15)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 2)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !3, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 5)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 44)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !3, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 6)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 45)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 11)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 50)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 47)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 48)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !14, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !3, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 278, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 293, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 65)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 63)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 544, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 68)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 296, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 69)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 319, type: !67, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 325, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 744, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 93)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 329, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 4)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 404, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 1)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 431, type: !53, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 432, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 51)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !116, line: 215, type: !117, isLocal: true, isDefinition: true)
!116 = !DIFile(filename: "./src/htssafe.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "0a24d1c0939efbe916010d30091bc9cc")
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 17)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !116, line: 91, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 20)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !116, line: 190, type: !9, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !116, line: 193, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 21)
!132 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !133, globals: !155, splitDebugInlining: false, nameTableKind: None)
!133 = !{!134, !135, !138, !142, !141, !143}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !136, line: 46, baseType: !137)
!136 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!137 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!142 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "bauth_chain", file: !145, line: 42, baseType: !146)
!145 = !DIFile(filename: "./src/htsbauth.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "2c305fa8769d56cd3c433c11e4cc3006")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bauth_chain", file: !145, line: 44, size: 16448, elements: !147)
!147 = !{!148, !152, !153}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !146, file: !145, line: 45, baseType: !149, size: 8192)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 1024)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "auth", scope: !146, file: !145, line: 46, baseType: !149, size: 8192, offset: 8192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !145, line: 47, baseType: !154, size: 64, offset: 16384)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!155 = !{!0, !7, !12, !17, !19, !24, !29, !31, !36, !41, !46, !51, !56, !61, !63, !65, !70, !75, !80, !85, !90, !92, !97, !102, !107, !109, !114, !120, !125, !127}
!156 = !{i32 7, !"Dwarf Version", i32 5}
!157 = !{i32 2, !"Debug Info Version", i32 3}
!158 = !{i32 1, !"wchar_size", i32 4}
!159 = !{i32 8, !"PIC Level", i32 2}
!160 = !{i32 7, !"PIE Level", i32 2}
!161 = !{i32 7, !"uwtable", i32 2}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 16.0.0"}
!164 = distinct !DISubprogram(name: "cookie_add", scope: !2, file: !2, line: 48, type: !165, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !179)
!165 = !DISubroutineType(types: !166)
!166 = !{!142, !167, !177, !177, !177, !177}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_cookie", file: !145, line: 53, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_cookie", file: !145, line: 55, size: 278656, elements: !170)
!170 = !{!171, !172, !176}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "max_len", scope: !169, file: !145, line: 56, baseType: !142, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !169, file: !145, line: 57, baseType: !173, size: 262144, offset: 32)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 262144, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 32768)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "auth", scope: !169, file: !145, line: 58, baseType: !144, size: 16448, offset: 262208)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!179 = !{}
!180 = !DILocalVariable(name: "cookie", arg: 1, scope: !164, file: !2, line: 48, type: !167)
!181 = !DILocation(line: 48, column: 27, scope: !164)
!182 = !DILocalVariable(name: "cook_name", arg: 2, scope: !164, file: !2, line: 48, type: !177)
!183 = !DILocation(line: 48, column: 47, scope: !164)
!184 = !DILocalVariable(name: "cook_value", arg: 3, scope: !164, file: !2, line: 48, type: !177)
!185 = !DILocation(line: 48, column: 70, scope: !164)
!186 = !DILocalVariable(name: "domain", arg: 4, scope: !164, file: !2, line: 49, type: !177)
!187 = !DILocation(line: 49, column: 28, scope: !164)
!188 = !DILocalVariable(name: "path", arg: 5, scope: !164, file: !2, line: 49, type: !177)
!189 = !DILocation(line: 49, column: 48, scope: !164)
!190 = !DILocalVariable(name: "buffer", scope: !164, file: !2, line: 50, type: !191)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65536, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 8192)
!194 = !DILocation(line: 50, column: 8, scope: !164)
!195 = !DILocalVariable(name: "a", scope: !164, file: !2, line: 51, type: !141)
!196 = !DILocation(line: 51, column: 9, scope: !164)
!197 = !DILocation(line: 51, column: 13, scope: !164)
!198 = !DILocation(line: 51, column: 21, scope: !164)
!199 = !DILocalVariable(name: "insert", scope: !164, file: !2, line: 52, type: !141)
!200 = !DILocation(line: 52, column: 9, scope: !164)
!201 = !DILocalVariable(name: "cook", scope: !164, file: !2, line: 53, type: !202)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 131072, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 16384)
!205 = !DILocation(line: 53, column: 8, scope: !164)
!206 = !DILocation(line: 56, column: 14, scope: !164)
!207 = !DILocation(line: 56, column: 22, scope: !164)
!208 = !DILocation(line: 56, column: 33, scope: !164)
!209 = !DILocation(line: 56, column: 41, scope: !164)
!210 = !DILocation(line: 56, column: 3, scope: !164)
!211 = !DILocation(line: 57, column: 14, scope: !212)
!212 = distinct !DILexicalBlock(scope: !164, file: !2, line: 57, column: 7)
!213 = !DILocation(line: 57, column: 7, scope: !212)
!214 = !DILocation(line: 57, column: 26, scope: !212)
!215 = !DILocation(line: 57, column: 7, scope: !164)
!216 = !DILocation(line: 58, column: 5, scope: !212)
!217 = !DILocation(line: 59, column: 14, scope: !218)
!218 = distinct !DILexicalBlock(scope: !164, file: !2, line: 59, column: 7)
!219 = !DILocation(line: 59, column: 7, scope: !218)
!220 = !DILocation(line: 59, column: 25, scope: !218)
!221 = !DILocation(line: 59, column: 7, scope: !164)
!222 = !DILocation(line: 60, column: 5, scope: !218)
!223 = !DILocation(line: 61, column: 14, scope: !224)
!224 = distinct !DILexicalBlock(scope: !164, file: !2, line: 61, column: 7)
!225 = !DILocation(line: 61, column: 7, scope: !224)
!226 = !DILocation(line: 61, column: 22, scope: !224)
!227 = !DILocation(line: 61, column: 7, scope: !164)
!228 = !DILocation(line: 62, column: 5, scope: !224)
!229 = !DILocation(line: 63, column: 14, scope: !230)
!230 = distinct !DILexicalBlock(scope: !164, file: !2, line: 63, column: 7)
!231 = !DILocation(line: 63, column: 7, scope: !230)
!232 = !DILocation(line: 63, column: 20, scope: !230)
!233 = !DILocation(line: 63, column: 7, scope: !164)
!234 = !DILocation(line: 64, column: 5, scope: !230)
!235 = !DILocation(line: 65, column: 14, scope: !236)
!236 = distinct !DILexicalBlock(scope: !164, file: !2, line: 65, column: 7)
!237 = !DILocation(line: 65, column: 22, scope: !236)
!238 = !DILocation(line: 65, column: 7, scope: !236)
!239 = !DILocation(line: 66, column: 23, scope: !236)
!240 = !DILocation(line: 66, column: 16, scope: !236)
!241 = !DILocation(line: 66, column: 14, scope: !236)
!242 = !DILocation(line: 67, column: 23, scope: !236)
!243 = !DILocation(line: 67, column: 16, scope: !236)
!244 = !DILocation(line: 67, column: 14, scope: !236)
!245 = !DILocation(line: 68, column: 23, scope: !236)
!246 = !DILocation(line: 68, column: 16, scope: !236)
!247 = !DILocation(line: 68, column: 14, scope: !236)
!248 = !DILocation(line: 69, column: 23, scope: !236)
!249 = !DILocation(line: 69, column: 16, scope: !236)
!250 = !DILocation(line: 69, column: 14, scope: !236)
!251 = !DILocation(line: 70, column: 14, scope: !236)
!252 = !DILocation(line: 70, column: 22, scope: !236)
!253 = !DILocation(line: 70, column: 30, scope: !236)
!254 = !DILocation(line: 70, column: 20, scope: !236)
!255 = !DILocation(line: 65, column: 7, scope: !164)
!256 = !DILocation(line: 71, column: 5, scope: !236)
!257 = !DILocation(line: 73, column: 12, scope: !164)
!258 = !DILocation(line: 73, column: 10, scope: !164)
!259 = !DILocation(line: 74, column: 3, scope: !164)
!260 = !DILocation(line: 74, column: 10, scope: !164)
!261 = !DILocation(line: 74, column: 9, scope: !164)
!262 = !DILocation(line: 75, column: 27, scope: !263)
!263 = distinct !DILexicalBlock(scope: !264, file: !2, line: 75, column: 9)
!264 = distinct !DILexicalBlock(scope: !164, file: !2, line: 74, column: 13)
!265 = !DILocation(line: 75, column: 35, scope: !263)
!266 = !DILocation(line: 75, column: 16, scope: !263)
!267 = !DILocation(line: 75, column: 9, scope: !263)
!268 = !DILocation(line: 75, column: 51, scope: !263)
!269 = !DILocation(line: 75, column: 44, scope: !263)
!270 = !DILocation(line: 75, column: 42, scope: !263)
!271 = !DILocation(line: 75, column: 9, scope: !264)
!272 = !DILocation(line: 76, column: 11, scope: !263)
!273 = !DILocation(line: 76, column: 19, scope: !263)
!274 = !DILocation(line: 76, column: 33, scope: !263)
!275 = !DILocation(line: 76, column: 41, scope: !263)
!276 = !DILocation(line: 76, column: 26, scope: !263)
!277 = !DILocation(line: 76, column: 24, scope: !263)
!278 = !DILocation(line: 76, column: 9, scope: !263)
!279 = !DILocation(line: 76, column: 7, scope: !263)
!280 = !DILocation(line: 78, column: 18, scope: !281)
!281 = distinct !DILexicalBlock(scope: !263, file: !2, line: 77, column: 10)
!282 = !DILocation(line: 78, column: 11, scope: !281)
!283 = !DILocation(line: 78, column: 9, scope: !281)
!284 = !DILocation(line: 79, column: 11, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !2, line: 79, column: 11)
!286 = !DILocation(line: 79, column: 13, scope: !285)
!287 = !DILocation(line: 79, column: 11, scope: !281)
!288 = !DILocation(line: 80, column: 13, scope: !285)
!289 = !DILocation(line: 80, column: 21, scope: !285)
!290 = !DILocation(line: 80, column: 35, scope: !285)
!291 = !DILocation(line: 80, column: 43, scope: !285)
!292 = !DILocation(line: 80, column: 28, scope: !285)
!293 = !DILocation(line: 80, column: 26, scope: !285)
!294 = !DILocation(line: 80, column: 11, scope: !285)
!295 = !DILocation(line: 80, column: 9, scope: !285)
!296 = !DILocation(line: 82, column: 10, scope: !285)
!297 = !DILocation(line: 83, column: 7, scope: !281)
!298 = !DILocation(line: 83, column: 14, scope: !281)
!299 = !DILocation(line: 83, column: 13, scope: !281)
!300 = !DILocation(line: 83, column: 16, scope: !281)
!301 = !DILocation(line: 84, column: 10, scope: !281)
!302 = distinct !{!302, !297, !301, !303}
!303 = !{!"llvm.loop.mustprogress"}
!304 = !DILocation(line: 85, column: 16, scope: !281)
!305 = !DILocation(line: 85, column: 14, scope: !281)
!306 = distinct !{!306, !259, !307, !303}
!307 = !DILocation(line: 87, column: 3, scope: !164)
!308 = !DILocation(line: 89, column: 3, scope: !164)
!309 = !DILocation(line: 90, column: 3, scope: !164)
!310 = !DILocation(line: 91, column: 3, scope: !164)
!311 = !DILocation(line: 92, column: 3, scope: !164)
!312 = !DILocation(line: 93, column: 3, scope: !164)
!313 = !DILocation(line: 94, column: 3, scope: !164)
!314 = !DILocation(line: 95, column: 3, scope: !164)
!315 = !DILocation(line: 96, column: 3, scope: !164)
!316 = !DILocation(line: 97, column: 3, scope: !164)
!317 = !DILocation(line: 98, column: 3, scope: !164)
!318 = !DILocation(line: 99, column: 3, scope: !164)
!319 = !DILocation(line: 100, column: 3, scope: !164)
!320 = !DILocation(line: 101, column: 3, scope: !164)
!321 = !DILocation(line: 102, column: 3, scope: !164)
!322 = !DILocation(line: 103, column: 17, scope: !323)
!323 = distinct !DILexicalBlock(scope: !164, file: !2, line: 103, column: 7)
!324 = !DILocation(line: 103, column: 25, scope: !323)
!325 = !DILocation(line: 103, column: 10, scope: !323)
!326 = !DILocation(line: 103, column: 40, scope: !323)
!327 = !DILocation(line: 103, column: 33, scope: !323)
!328 = !DILocation(line: 103, column: 31, scope: !323)
!329 = !DILocation(line: 103, column: 49, scope: !323)
!330 = !DILocation(line: 103, column: 57, scope: !323)
!331 = !DILocation(line: 103, column: 47, scope: !323)
!332 = !DILocation(line: 103, column: 7, scope: !164)
!333 = !DILocation(line: 104, column: 5, scope: !323)
!334 = !DILocation(line: 105, column: 17, scope: !164)
!335 = !DILocation(line: 105, column: 25, scope: !164)
!336 = !DILocation(line: 105, column: 3, scope: !164)
!337 = !DILocation(line: 111, column: 3, scope: !164)
!338 = !DILocation(line: 112, column: 1, scope: !164)
!339 = distinct !DISubprogram(name: "cookie_del", scope: !2, file: !2, line: 115, type: !340, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !179)
!340 = !DISubroutineType(types: !341)
!341 = !{!142, !167, !177, !177, !177}
!342 = !DILocalVariable(name: "cookie", arg: 1, scope: !339, file: !2, line: 115, type: !167)
!343 = !DILocation(line: 115, column: 27, scope: !339)
!344 = !DILocalVariable(name: "cook_name", arg: 2, scope: !339, file: !2, line: 115, type: !177)
!345 = !DILocation(line: 115, column: 47, scope: !339)
!346 = !DILocalVariable(name: "domain", arg: 3, scope: !339, file: !2, line: 115, type: !177)
!347 = !DILocation(line: 115, column: 70, scope: !339)
!348 = !DILocalVariable(name: "path", arg: 4, scope: !339, file: !2, line: 115, type: !177)
!349 = !DILocation(line: 115, column: 90, scope: !339)
!350 = !DILocalVariable(name: "a", scope: !339, file: !2, line: 116, type: !141)
!351 = !DILocation(line: 116, column: 9, scope: !339)
!352 = !DILocalVariable(name: "b", scope: !339, file: !2, line: 116, type: !141)
!353 = !DILocation(line: 116, column: 13, scope: !339)
!354 = !DILocation(line: 118, column: 19, scope: !339)
!355 = !DILocation(line: 118, column: 27, scope: !339)
!356 = !DILocation(line: 118, column: 33, scope: !339)
!357 = !DILocation(line: 118, column: 44, scope: !339)
!358 = !DILocation(line: 118, column: 52, scope: !339)
!359 = !DILocation(line: 118, column: 7, scope: !339)
!360 = !DILocation(line: 118, column: 5, scope: !339)
!361 = !DILocation(line: 119, column: 7, scope: !362)
!362 = distinct !DILexicalBlock(scope: !339, file: !2, line: 119, column: 7)
!363 = !DILocation(line: 119, column: 7, scope: !339)
!364 = !DILocation(line: 120, column: 26, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !2, line: 119, column: 10)
!366 = !DILocation(line: 120, column: 9, scope: !365)
!367 = !DILocation(line: 120, column: 7, scope: !365)
!368 = !DILocation(line: 121, column: 19, scope: !365)
!369 = !DILocation(line: 121, column: 22, scope: !365)
!370 = !DILocation(line: 121, column: 26, scope: !365)
!371 = !DILocation(line: 121, column: 24, scope: !365)
!372 = !DILocation(line: 121, column: 5, scope: !365)
!373 = !DILocation(line: 125, column: 3, scope: !365)
!374 = !DILocation(line: 126, column: 3, scope: !339)
!375 = distinct !DISubprogram(name: "cookie_get", scope: !2, file: !2, line: 374, type: !376, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !179)
!376 = !DISubroutineType(types: !377)
!377 = !{!177, !141, !177, !142}
!378 = !DILocalVariable(name: "buffer", arg: 1, scope: !375, file: !2, line: 374, type: !141)
!379 = !DILocation(line: 374, column: 30, scope: !375)
!380 = !DILocalVariable(name: "cookie_base", arg: 2, scope: !375, file: !2, line: 374, type: !177)
!381 = !DILocation(line: 374, column: 50, scope: !375)
!382 = !DILocalVariable(name: "param", arg: 3, scope: !375, file: !2, line: 374, type: !142)
!383 = !DILocation(line: 374, column: 67, scope: !375)
!384 = !DILocalVariable(name: "limit", scope: !375, file: !2, line: 375, type: !177)
!385 = !DILocation(line: 375, column: 15, scope: !375)
!386 = !DILocation(line: 377, column: 3, scope: !375)
!387 = !DILocation(line: 377, column: 10, scope: !375)
!388 = !DILocation(line: 377, column: 9, scope: !375)
!389 = !DILocation(line: 377, column: 22, scope: !375)
!390 = !DILocation(line: 378, column: 16, scope: !375)
!391 = distinct !{!391, !386, !390, !303}
!392 = !DILocation(line: 379, column: 18, scope: !375)
!393 = !DILocation(line: 379, column: 11, scope: !375)
!394 = !DILocation(line: 379, column: 9, scope: !375)
!395 = !DILocation(line: 380, column: 8, scope: !396)
!396 = distinct !DILexicalBlock(scope: !375, file: !2, line: 380, column: 7)
!397 = !DILocation(line: 380, column: 7, scope: !375)
!398 = !DILocation(line: 381, column: 13, scope: !396)
!399 = !DILocation(line: 381, column: 34, scope: !396)
!400 = !DILocation(line: 381, column: 27, scope: !396)
!401 = !DILocation(line: 381, column: 25, scope: !396)
!402 = !DILocation(line: 381, column: 11, scope: !396)
!403 = !DILocation(line: 381, column: 5, scope: !396)
!404 = !DILocation(line: 382, column: 7, scope: !405)
!405 = distinct !DILexicalBlock(scope: !375, file: !2, line: 382, column: 7)
!406 = !DILocation(line: 382, column: 7, scope: !375)
!407 = !DILocation(line: 383, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !2, line: 383, column: 9)
!409 = distinct !DILexicalBlock(scope: !405, file: !2, line: 382, column: 14)
!410 = !DILocation(line: 383, column: 9, scope: !409)
!411 = !DILocalVariable(name: "i", scope: !412, file: !2, line: 384, type: !142)
!412 = distinct !DILexicalBlock(scope: !408, file: !2, line: 383, column: 16)
!413 = !DILocation(line: 384, column: 11, scope: !412)
!414 = !DILocation(line: 386, column: 13, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !2, line: 386, column: 7)
!416 = !DILocation(line: 386, column: 11, scope: !415)
!417 = !DILocation(line: 386, column: 18, scope: !418)
!418 = distinct !DILexicalBlock(scope: !415, file: !2, line: 386, column: 7)
!419 = !DILocation(line: 386, column: 22, scope: !418)
!420 = !DILocation(line: 386, column: 20, scope: !418)
!421 = !DILocation(line: 386, column: 7, scope: !415)
!422 = !DILocation(line: 387, column: 13, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !2, line: 387, column: 13)
!424 = distinct !DILexicalBlock(scope: !418, file: !2, line: 386, column: 34)
!425 = !DILocation(line: 387, column: 13, scope: !424)
!426 = !DILocation(line: 388, column: 32, scope: !427)
!427 = distinct !DILexicalBlock(scope: !423, file: !2, line: 387, column: 26)
!428 = !DILocation(line: 388, column: 25, scope: !427)
!429 = !DILocation(line: 388, column: 23, scope: !427)
!430 = !DILocation(line: 389, column: 15, scope: !431)
!431 = distinct !DILexicalBlock(scope: !427, file: !2, line: 389, column: 15)
!432 = !DILocation(line: 389, column: 15, scope: !427)
!433 = !DILocation(line: 390, column: 24, scope: !431)
!434 = !DILocation(line: 390, column: 13, scope: !431)
!435 = !DILocation(line: 391, column: 9, scope: !427)
!436 = !DILocation(line: 392, column: 7, scope: !424)
!437 = !DILocation(line: 386, column: 30, scope: !418)
!438 = !DILocation(line: 386, column: 7, scope: !418)
!439 = distinct !{!439, !421, !440, !303}
!440 = !DILocation(line: 392, column: 7, scope: !415)
!441 = !DILocation(line: 393, column: 5, scope: !412)
!442 = !DILocation(line: 394, column: 9, scope: !443)
!443 = distinct !DILexicalBlock(scope: !409, file: !2, line: 394, column: 9)
!444 = !DILocation(line: 394, column: 9, scope: !409)
!445 = !DILocation(line: 395, column: 11, scope: !446)
!446 = distinct !DILexicalBlock(scope: !447, file: !2, line: 395, column: 11)
!447 = distinct !DILexicalBlock(scope: !443, file: !2, line: 394, column: 22)
!448 = !DILocation(line: 395, column: 25, scope: !446)
!449 = !DILocation(line: 395, column: 23, scope: !446)
!450 = !DILocation(line: 395, column: 11, scope: !447)
!451 = !DILocalVariable(name: "a", scope: !452, file: !2, line: 396, type: !177)
!452 = distinct !DILexicalBlock(scope: !446, file: !2, line: 395, column: 32)
!453 = !DILocation(line: 396, column: 21, scope: !452)
!454 = !DILocation(line: 396, column: 25, scope: !452)
!455 = !DILocation(line: 398, column: 9, scope: !452)
!456 = !DILocation(line: 398, column: 17, scope: !452)
!457 = !DILocation(line: 398, column: 16, scope: !452)
!458 = !DILocation(line: 398, column: 15, scope: !452)
!459 = !DILocation(line: 398, column: 20, scope: !452)
!460 = !DILocation(line: 398, column: 25, scope: !452)
!461 = !DILocation(line: 398, column: 24, scope: !452)
!462 = !DILocation(line: 398, column: 27, scope: !452)
!463 = !DILocation(line: 398, column: 36, scope: !452)
!464 = !DILocation(line: 398, column: 41, scope: !452)
!465 = !DILocation(line: 398, column: 40, scope: !452)
!466 = !DILocation(line: 398, column: 43, scope: !452)
!467 = !DILocation(line: 0, scope: !452)
!468 = !DILocation(line: 399, column: 12, scope: !452)
!469 = distinct !{!469, !455, !468, !303}
!470 = !DILocation(line: 400, column: 9, scope: !452)
!471 = !DILocation(line: 400, column: 19, scope: !452)
!472 = !DILocation(line: 401, column: 9, scope: !452)
!473 = !DILocation(line: 402, column: 16, scope: !452)
!474 = !DILocation(line: 402, column: 9, scope: !452)
!475 = !DILocation(line: 404, column: 9, scope: !446)
!476 = !DILocation(line: 406, column: 7, scope: !443)
!477 = !DILocation(line: 408, column: 5, scope: !405)
!478 = !DILocation(line: 409, column: 1, scope: !375)
!479 = distinct !DISubprogram(name: "strcpy_safe_", scope: !116, file: !116, line: 212, type: !480, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !179)
!480 = !DISubroutineType(types: !481)
!481 = !{!141, !482, !483, !484, !483, !177, !177, !142}
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!485 = !DILocalVariable(name: "dest", arg: 1, scope: !479, file: !116, line: 212, type: !482)
!486 = !DILocation(line: 212, column: 61, scope: !479)
!487 = !DILocalVariable(name: "sizeof_dest", arg: 2, scope: !479, file: !116, line: 212, type: !483)
!488 = !DILocation(line: 212, column: 80, scope: !479)
!489 = !DILocalVariable(name: "source", arg: 3, scope: !479, file: !116, line: 213, type: !484)
!490 = !DILocation(line: 213, column: 67, scope: !479)
!491 = !DILocalVariable(name: "sizeof_source", arg: 4, scope: !479, file: !116, line: 213, type: !483)
!492 = !DILocation(line: 213, column: 88, scope: !479)
!493 = !DILocalVariable(name: "exp", arg: 5, scope: !479, file: !116, line: 214, type: !177)
!494 = !DILocation(line: 214, column: 61, scope: !479)
!495 = !DILocalVariable(name: "file", arg: 6, scope: !479, file: !116, line: 214, type: !177)
!496 = !DILocation(line: 214, column: 78, scope: !479)
!497 = !DILocalVariable(name: "line", arg: 7, scope: !479, file: !116, line: 214, type: !142)
!498 = !DILocation(line: 214, column: 88, scope: !479)
!499 = !DILocation(line: 215, column: 3, scope: !479)
!500 = !DILocation(line: 216, column: 3, scope: !479)
!501 = !DILocation(line: 216, column: 11, scope: !479)
!502 = !DILocation(line: 217, column: 24, scope: !479)
!503 = !DILocation(line: 217, column: 30, scope: !479)
!504 = !DILocation(line: 217, column: 43, scope: !479)
!505 = !DILocation(line: 217, column: 51, scope: !479)
!506 = !DILocation(line: 217, column: 79, scope: !479)
!507 = !DILocation(line: 217, column: 84, scope: !479)
!508 = !DILocation(line: 217, column: 90, scope: !479)
!509 = !DILocation(line: 217, column: 10, scope: !479)
!510 = !DILocation(line: 217, column: 3, scope: !479)
!511 = distinct !DISubprogram(name: "strncat_safe_", scope: !116, file: !116, line: 197, type: !512, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !179)
!512 = !DISubroutineType(types: !513)
!513 = !{!141, !482, !483, !484, !483, !483, !177, !177, !142}
!514 = !DILocalVariable(name: "dest", arg: 1, scope: !511, file: !116, line: 197, type: !482)
!515 = !DILocation(line: 197, column: 62, scope: !511)
!516 = !DILocalVariable(name: "sizeof_dest", arg: 2, scope: !511, file: !116, line: 197, type: !483)
!517 = !DILocation(line: 197, column: 81, scope: !511)
!518 = !DILocalVariable(name: "source", arg: 3, scope: !511, file: !116, line: 198, type: !484)
!519 = !DILocation(line: 198, column: 68, scope: !511)
!520 = !DILocalVariable(name: "sizeof_source", arg: 4, scope: !511, file: !116, line: 198, type: !483)
!521 = !DILocation(line: 198, column: 89, scope: !511)
!522 = !DILocalVariable(name: "n", arg: 5, scope: !511, file: !116, line: 199, type: !483)
!523 = !DILocation(line: 199, column: 63, scope: !511)
!524 = !DILocalVariable(name: "exp", arg: 6, scope: !511, file: !116, line: 200, type: !177)
!525 = !DILocation(line: 200, column: 62, scope: !511)
!526 = !DILocalVariable(name: "file", arg: 7, scope: !511, file: !116, line: 200, type: !177)
!527 = !DILocation(line: 200, column: 79, scope: !511)
!528 = !DILocalVariable(name: "line", arg: 8, scope: !511, file: !116, line: 200, type: !142)
!529 = !DILocation(line: 200, column: 89, scope: !511)
!530 = !DILocalVariable(name: "source_len", scope: !511, file: !116, line: 201, type: !483)
!531 = !DILocation(line: 201, column: 16, scope: !511)
!532 = !DILocation(line: 201, column: 42, scope: !511)
!533 = !DILocation(line: 201, column: 50, scope: !511)
!534 = !DILocation(line: 201, column: 65, scope: !511)
!535 = !DILocation(line: 201, column: 71, scope: !511)
!536 = !DILocation(line: 201, column: 29, scope: !511)
!537 = !DILocalVariable(name: "dest_len", scope: !511, file: !116, line: 202, type: !483)
!538 = !DILocation(line: 202, column: 16, scope: !511)
!539 = !DILocation(line: 202, column: 40, scope: !511)
!540 = !DILocation(line: 202, column: 46, scope: !511)
!541 = !DILocation(line: 202, column: 59, scope: !511)
!542 = !DILocation(line: 202, column: 65, scope: !511)
!543 = !DILocation(line: 202, column: 27, scope: !511)
!544 = !DILocalVariable(name: "source_copy", scope: !511, file: !116, line: 204, type: !483)
!545 = !DILocation(line: 204, column: 16, scope: !511)
!546 = !DILocation(line: 204, column: 30, scope: !511)
!547 = !DILocation(line: 204, column: 44, scope: !511)
!548 = !DILocation(line: 204, column: 41, scope: !511)
!549 = !DILocation(line: 204, column: 48, scope: !511)
!550 = !DILocation(line: 204, column: 61, scope: !511)
!551 = !DILocalVariable(name: "dest_final_len", scope: !511, file: !116, line: 205, type: !483)
!552 = !DILocation(line: 205, column: 16, scope: !511)
!553 = !DILocation(line: 205, column: 33, scope: !511)
!554 = !DILocation(line: 205, column: 44, scope: !511)
!555 = !DILocation(line: 205, column: 42, scope: !511)
!556 = !DILocation(line: 206, column: 3, scope: !511)
!557 = !DILocation(line: 207, column: 10, scope: !511)
!558 = !DILocation(line: 207, column: 17, scope: !511)
!559 = !DILocation(line: 207, column: 15, scope: !511)
!560 = !DILocation(line: 207, column: 27, scope: !511)
!561 = !DILocation(line: 207, column: 35, scope: !511)
!562 = !DILocation(line: 207, column: 3, scope: !511)
!563 = !DILocation(line: 208, column: 3, scope: !511)
!564 = !DILocation(line: 208, column: 8, scope: !511)
!565 = !DILocation(line: 208, column: 24, scope: !511)
!566 = !DILocation(line: 209, column: 10, scope: !511)
!567 = !DILocation(line: 209, column: 3, scope: !511)
!568 = distinct !DISubprogram(name: "cookie_insert", scope: !2, file: !2, line: 340, type: !569, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !179)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !141, !177}
!571 = !DILocalVariable(name: "s", arg: 1, scope: !568, file: !2, line: 340, type: !141)
!572 = !DILocation(line: 340, column: 26, scope: !568)
!573 = !DILocalVariable(name: "ins", arg: 2, scope: !568, file: !2, line: 340, type: !177)
!574 = !DILocation(line: 340, column: 41, scope: !568)
!575 = !DILocalVariable(name: "buff", scope: !568, file: !2, line: 341, type: !141)
!576 = !DILocation(line: 341, column: 9, scope: !568)
!577 = !DILocation(line: 343, column: 7, scope: !578)
!578 = distinct !DILexicalBlock(scope: !568, file: !2, line: 343, column: 7)
!579 = !DILocation(line: 0, scope: !578)
!580 = !DILocation(line: 343, column: 22, scope: !578)
!581 = !DILocation(line: 343, column: 7, scope: !568)
!582 = !DILocation(line: 344, column: 5, scope: !583)
!583 = distinct !DILexicalBlock(scope: !578, file: !2, line: 343, column: 28)
!584 = !DILocation(line: 345, column: 3, scope: !583)
!585 = !DILocation(line: 346, column: 21, scope: !586)
!586 = distinct !DILexicalBlock(scope: !578, file: !2, line: 345, column: 10)
!587 = !DILocation(line: 346, column: 10, scope: !586)
!588 = !DILocation(line: 347, column: 9, scope: !589)
!589 = distinct !DILexicalBlock(scope: !586, file: !2, line: 347, column: 9)
!590 = !DILocation(line: 347, column: 9, scope: !586)
!591 = !DILocation(line: 348, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !589, file: !2, line: 347, column: 15)
!593 = !DILocation(line: 349, column: 7, scope: !592)
!594 = !DILocation(line: 350, column: 7, scope: !592)
!595 = !DILocation(line: 351, column: 7, scope: !592)
!596 = !DILocation(line: 351, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !2, line: 351, column: 7)
!598 = distinct !DILexicalBlock(scope: !592, file: !2, line: 351, column: 7)
!599 = !DILocation(line: 351, column: 7, scope: !598)
!600 = !DILocation(line: 351, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !597, file: !2, line: 351, column: 7)
!602 = !DILocation(line: 352, column: 5, scope: !592)
!603 = !DILocation(line: 354, column: 1, scope: !568)
!604 = distinct !DISubprogram(name: "cookie_find", scope: !2, file: !2, line: 156, type: !605, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !179)
!605 = !DISubroutineType(types: !606)
!606 = !{!141, !141, !177, !177, !177}
!607 = !DILocalVariable(name: "s", arg: 1, scope: !604, file: !2, line: 156, type: !141)
!608 = !DILocation(line: 156, column: 25, scope: !604)
!609 = !DILocalVariable(name: "cook_name", arg: 2, scope: !604, file: !2, line: 156, type: !177)
!610 = !DILocation(line: 156, column: 40, scope: !604)
!611 = !DILocalVariable(name: "domain", arg: 3, scope: !604, file: !2, line: 156, type: !177)
!612 = !DILocation(line: 156, column: 63, scope: !604)
!613 = !DILocalVariable(name: "path", arg: 4, scope: !604, file: !2, line: 156, type: !177)
!614 = !DILocation(line: 156, column: 83, scope: !604)
!615 = !DILocalVariable(name: "buffer", scope: !604, file: !2, line: 157, type: !191)
!616 = !DILocation(line: 157, column: 8, scope: !604)
!617 = !DILocalVariable(name: "a", scope: !604, file: !2, line: 158, type: !141)
!618 = !DILocation(line: 158, column: 9, scope: !604)
!619 = !DILocation(line: 158, column: 13, scope: !604)
!620 = !DILocation(line: 160, column: 3, scope: !604)
!621 = !DILocation(line: 160, column: 10, scope: !604)
!622 = !DILocation(line: 160, column: 9, scope: !604)
!623 = !DILocalVariable(name: "t", scope: !624, file: !2, line: 161, type: !142)
!624 = distinct !DILexicalBlock(scope: !604, file: !2, line: 160, column: 13)
!625 = !DILocation(line: 161, column: 9, scope: !624)
!626 = !DILocation(line: 163, column: 9, scope: !627)
!627 = distinct !DILexicalBlock(scope: !624, file: !2, line: 163, column: 9)
!628 = !DILocation(line: 0, scope: !627)
!629 = !DILocation(line: 163, column: 32, scope: !627)
!630 = !DILocation(line: 163, column: 9, scope: !624)
!631 = !DILocation(line: 164, column: 9, scope: !627)
!632 = !DILocation(line: 164, column: 7, scope: !627)
!633 = !DILocation(line: 166, column: 30, scope: !627)
!634 = !DILocation(line: 166, column: 38, scope: !627)
!635 = !DILocation(line: 166, column: 19, scope: !627)
!636 = !DILocation(line: 166, column: 45, scope: !627)
!637 = !DILocation(line: 166, column: 12, scope: !627)
!638 = !DILocation(line: 166, column: 56, scope: !627)
!639 = !DILocation(line: 166, column: 9, scope: !627)
!640 = !DILocation(line: 167, column: 9, scope: !641)
!641 = distinct !DILexicalBlock(scope: !624, file: !2, line: 167, column: 9)
!642 = !DILocation(line: 167, column: 9, scope: !624)
!643 = !DILocalVariable(name: "chk_dom", scope: !644, file: !2, line: 169, type: !177)
!644 = distinct !DILexicalBlock(scope: !641, file: !2, line: 167, column: 12)
!645 = !DILocation(line: 169, column: 19, scope: !644)
!646 = !DILocation(line: 169, column: 40, scope: !644)
!647 = !DILocation(line: 169, column: 48, scope: !644)
!648 = !DILocation(line: 169, column: 29, scope: !644)
!649 = !DILocation(line: 171, column: 19, scope: !650)
!650 = distinct !DILexicalBlock(scope: !644, file: !2, line: 171, column: 11)
!651 = !DILocation(line: 171, column: 12, scope: !650)
!652 = !DILocation(line: 171, column: 38, scope: !650)
!653 = !DILocation(line: 171, column: 31, scope: !650)
!654 = !DILocation(line: 171, column: 28, scope: !650)
!655 = !DILocation(line: 171, column: 46, scope: !650)
!656 = !DILocation(line: 172, column: 16, scope: !650)
!657 = !DILocation(line: 172, column: 25, scope: !650)
!658 = !DILocation(line: 172, column: 41, scope: !650)
!659 = !DILocation(line: 172, column: 34, scope: !650)
!660 = !DILocation(line: 172, column: 32, scope: !650)
!661 = !DILocation(line: 172, column: 58, scope: !650)
!662 = !DILocation(line: 172, column: 51, scope: !650)
!663 = !DILocation(line: 172, column: 49, scope: !650)
!664 = !DILocation(line: 172, column: 9, scope: !650)
!665 = !DILocation(line: 172, column: 68, scope: !650)
!666 = !DILocation(line: 172, column: 74, scope: !650)
!667 = !DILocation(line: 173, column: 37, scope: !650)
!668 = !DILocation(line: 173, column: 46, scope: !650)
!669 = !DILocation(line: 173, column: 10, scope: !650)
!670 = !DILocation(line: 171, column: 11, scope: !644)
!671 = !DILocalVariable(name: "chk_path", scope: !672, file: !2, line: 175, type: !177)
!672 = distinct !DILexicalBlock(scope: !650, file: !2, line: 173, column: 55)
!673 = !DILocation(line: 175, column: 21, scope: !672)
!674 = !DILocation(line: 175, column: 43, scope: !672)
!675 = !DILocation(line: 175, column: 51, scope: !672)
!676 = !DILocation(line: 175, column: 32, scope: !672)
!677 = !DILocation(line: 177, column: 20, scope: !678)
!678 = distinct !DILexicalBlock(scope: !672, file: !2, line: 177, column: 13)
!679 = !DILocation(line: 177, column: 13, scope: !678)
!680 = !DILocation(line: 177, column: 40, scope: !678)
!681 = !DILocation(line: 177, column: 33, scope: !678)
!682 = !DILocation(line: 177, column: 30, scope: !678)
!683 = !DILocation(line: 177, column: 13, scope: !672)
!684 = !DILocation(line: 178, column: 23, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !2, line: 178, column: 15)
!686 = distinct !DILexicalBlock(scope: !678, file: !2, line: 177, column: 47)
!687 = !DILocation(line: 178, column: 29, scope: !685)
!688 = !DILocation(line: 178, column: 46, scope: !685)
!689 = !DILocation(line: 178, column: 39, scope: !685)
!690 = !DILocation(line: 178, column: 15, scope: !685)
!691 = !DILocation(line: 178, column: 57, scope: !685)
!692 = !DILocation(line: 178, column: 15, scope: !686)
!693 = !DILocation(line: 179, column: 20, scope: !694)
!694 = distinct !DILexicalBlock(scope: !685, file: !2, line: 178, column: 63)
!695 = !DILocation(line: 179, column: 13, scope: !694)
!696 = !DILocation(line: 181, column: 9, scope: !686)
!697 = !DILocation(line: 182, column: 7, scope: !672)
!698 = !DILocation(line: 183, column: 5, scope: !644)
!699 = !DILocation(line: 184, column: 26, scope: !624)
!700 = !DILocation(line: 184, column: 9, scope: !624)
!701 = !DILocation(line: 184, column: 7, scope: !624)
!702 = distinct !{!702, !620, !703, !303}
!703 = !DILocation(line: 185, column: 3, scope: !604)
!704 = !DILocation(line: 186, column: 3, scope: !604)
!705 = !DILocation(line: 187, column: 1, scope: !604)
!706 = distinct !DISubprogram(name: "cookie_nextfield", scope: !2, file: !2, line: 190, type: !707, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !179)
!707 = !DISubroutineType(types: !708)
!708 = !{!141, !141}
!709 = !DILocalVariable(name: "a", arg: 1, scope: !706, file: !2, line: 190, type: !141)
!710 = !DILocation(line: 190, column: 30, scope: !706)
!711 = !DILocalVariable(name: "b", scope: !706, file: !2, line: 191, type: !141)
!712 = !DILocation(line: 191, column: 9, scope: !706)
!713 = !DILocation(line: 191, column: 13, scope: !706)
!714 = !DILocation(line: 193, column: 14, scope: !706)
!715 = !DILocation(line: 193, column: 7, scope: !706)
!716 = !DILocation(line: 193, column: 5, scope: !706)
!717 = !DILocation(line: 194, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !706, file: !2, line: 194, column: 7)
!719 = !DILocation(line: 194, column: 9, scope: !718)
!720 = !DILocation(line: 194, column: 7, scope: !706)
!721 = !DILocation(line: 195, column: 9, scope: !718)
!722 = !DILocation(line: 195, column: 20, scope: !718)
!723 = !DILocation(line: 195, column: 13, scope: !718)
!724 = !DILocation(line: 195, column: 11, scope: !718)
!725 = !DILocation(line: 195, column: 7, scope: !718)
!726 = !DILocation(line: 195, column: 5, scope: !718)
!727 = !DILocation(line: 197, column: 6, scope: !718)
!728 = !DILocation(line: 198, column: 3, scope: !706)
!729 = !DILocation(line: 198, column: 10, scope: !706)
!730 = !DILocation(line: 198, column: 9, scope: !706)
!731 = !DILocation(line: 198, column: 12, scope: !706)
!732 = !DILocation(line: 199, column: 6, scope: !706)
!733 = distinct !{!733, !728, !732, !303}
!734 = !DILocation(line: 200, column: 10, scope: !706)
!735 = !DILocation(line: 200, column: 3, scope: !706)
!736 = distinct !DISubprogram(name: "cookie_delete", scope: !2, file: !2, line: 357, type: !737, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !179)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !141, !135}
!739 = !DILocalVariable(name: "s", arg: 1, scope: !736, file: !2, line: 357, type: !141)
!740 = !DILocation(line: 357, column: 26, scope: !736)
!741 = !DILocalVariable(name: "pos", arg: 2, scope: !736, file: !2, line: 357, type: !135)
!742 = !DILocation(line: 357, column: 36, scope: !736)
!743 = !DILocalVariable(name: "buff", scope: !736, file: !2, line: 358, type: !141)
!744 = !DILocation(line: 358, column: 9, scope: !736)
!745 = !DILocation(line: 360, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !736, file: !2, line: 360, column: 7)
!747 = !DILocation(line: 0, scope: !746)
!748 = !DILocation(line: 360, column: 28, scope: !746)
!749 = !DILocation(line: 360, column: 7, scope: !736)
!750 = !DILocation(line: 361, column: 5, scope: !751)
!751 = distinct !DILexicalBlock(scope: !746, file: !2, line: 360, column: 34)
!752 = !DILocation(line: 361, column: 10, scope: !751)
!753 = !DILocation(line: 362, column: 3, scope: !751)
!754 = !DILocation(line: 363, column: 21, scope: !755)
!755 = distinct !DILexicalBlock(scope: !746, file: !2, line: 362, column: 10)
!756 = !DILocation(line: 363, column: 10, scope: !755)
!757 = !DILocation(line: 364, column: 9, scope: !758)
!758 = distinct !DILexicalBlock(scope: !755, file: !2, line: 364, column: 9)
!759 = !DILocation(line: 364, column: 9, scope: !755)
!760 = !DILocation(line: 365, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !758, file: !2, line: 364, column: 15)
!762 = !DILocation(line: 366, column: 7, scope: !761)
!763 = !DILocation(line: 367, column: 7, scope: !761)
!764 = !DILocation(line: 367, column: 7, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !2, line: 367, column: 7)
!766 = distinct !DILexicalBlock(scope: !761, file: !2, line: 367, column: 7)
!767 = !DILocation(line: 367, column: 7, scope: !766)
!768 = !DILocation(line: 367, column: 7, scope: !769)
!769 = distinct !DILexicalBlock(scope: !765, file: !2, line: 367, column: 7)
!770 = !DILocation(line: 368, column: 5, scope: !761)
!771 = !DILocation(line: 370, column: 1, scope: !736)
!772 = distinct !DISubprogram(name: "cookie_cmp_wildcard_domain", scope: !2, file: !2, line: 132, type: !773, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !179)
!773 = !DISubroutineType(types: !774)
!774 = !{!142, !177, !177}
!775 = !DILocalVariable(name: "chk_dom", arg: 1, scope: !772, file: !2, line: 132, type: !177)
!776 = !DILocation(line: 132, column: 51, scope: !772)
!777 = !DILocalVariable(name: "domain", arg: 2, scope: !772, file: !2, line: 132, type: !177)
!778 = !DILocation(line: 132, column: 72, scope: !772)
!779 = !DILocalVariable(name: "n", scope: !772, file: !2, line: 133, type: !483)
!780 = !DILocation(line: 133, column: 16, scope: !772)
!781 = !DILocation(line: 133, column: 27, scope: !772)
!782 = !DILocation(line: 133, column: 20, scope: !772)
!783 = !DILocalVariable(name: "m", scope: !772, file: !2, line: 134, type: !483)
!784 = !DILocation(line: 134, column: 16, scope: !772)
!785 = !DILocation(line: 134, column: 27, scope: !772)
!786 = !DILocation(line: 134, column: 20, scope: !772)
!787 = !DILocalVariable(name: "l", scope: !772, file: !2, line: 135, type: !483)
!788 = !DILocation(line: 135, column: 16, scope: !772)
!789 = !DILocation(line: 135, column: 20, scope: !772)
!790 = !DILocation(line: 135, column: 24, scope: !772)
!791 = !DILocation(line: 135, column: 22, scope: !772)
!792 = !DILocation(line: 135, column: 28, scope: !772)
!793 = !DILocation(line: 135, column: 32, scope: !772)
!794 = !DILocalVariable(name: "i", scope: !772, file: !2, line: 136, type: !135)
!795 = !DILocation(line: 136, column: 10, scope: !772)
!796 = !DILocation(line: 137, column: 12, scope: !797)
!797 = distinct !DILexicalBlock(scope: !772, file: !2, line: 137, column: 3)
!798 = !DILocation(line: 137, column: 14, scope: !797)
!799 = !DILocation(line: 137, column: 10, scope: !797)
!800 = !DILocation(line: 137, column: 8, scope: !797)
!801 = !DILocation(line: 137, column: 19, scope: !802)
!802 = distinct !DILexicalBlock(scope: !797, file: !2, line: 137, column: 3)
!803 = !DILocation(line: 137, column: 21, scope: !802)
!804 = !DILocation(line: 137, column: 3, scope: !797)
!805 = !DILocation(line: 138, column: 9, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !2, line: 138, column: 9)
!807 = distinct !DILexicalBlock(scope: !802, file: !2, line: 137, column: 32)
!808 = !DILocation(line: 138, column: 17, scope: !806)
!809 = !DILocation(line: 138, column: 21, scope: !806)
!810 = !DILocation(line: 138, column: 19, scope: !806)
!811 = !DILocation(line: 138, column: 23, scope: !806)
!812 = !DILocation(line: 138, column: 31, scope: !806)
!813 = !DILocation(line: 138, column: 38, scope: !806)
!814 = !DILocation(line: 138, column: 42, scope: !806)
!815 = !DILocation(line: 138, column: 40, scope: !806)
!816 = !DILocation(line: 138, column: 44, scope: !806)
!817 = !DILocation(line: 138, column: 28, scope: !806)
!818 = !DILocation(line: 138, column: 9, scope: !807)
!819 = !DILocation(line: 139, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !806, file: !2, line: 138, column: 50)
!821 = !DILocation(line: 141, column: 3, scope: !807)
!822 = !DILocation(line: 137, column: 28, scope: !802)
!823 = !DILocation(line: 137, column: 3, scope: !802)
!824 = distinct !{!824, !804, !825, !303}
!825 = !DILocation(line: 141, column: 3, scope: !797)
!826 = !DILocation(line: 142, column: 7, scope: !827)
!827 = distinct !DILexicalBlock(scope: !772, file: !2, line: 142, column: 7)
!828 = !DILocation(line: 142, column: 11, scope: !827)
!829 = !DILocation(line: 142, column: 9, scope: !827)
!830 = !DILocation(line: 142, column: 13, scope: !827)
!831 = !DILocation(line: 142, column: 16, scope: !827)
!832 = !DILocation(line: 142, column: 27, scope: !827)
!833 = !DILocation(line: 142, column: 7, scope: !772)
!834 = !DILocation(line: 143, column: 5, scope: !835)
!835 = distinct !DILexicalBlock(scope: !827, file: !2, line: 142, column: 35)
!836 = !DILocation(line: 145, column: 12, scope: !837)
!837 = distinct !DILexicalBlock(scope: !827, file: !2, line: 145, column: 12)
!838 = !DILocation(line: 145, column: 17, scope: !837)
!839 = !DILocation(line: 145, column: 14, scope: !837)
!840 = !DILocation(line: 145, column: 12, scope: !827)
!841 = !DILocation(line: 146, column: 5, scope: !842)
!842 = distinct !DILexicalBlock(scope: !837, file: !2, line: 145, column: 20)
!843 = !DILocation(line: 148, column: 3, scope: !772)
!844 = !DILocation(line: 149, column: 1, scope: !772)
!845 = distinct !DISubprogram(name: "cookie_load", scope: !2, file: !2, line: 206, type: !846, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !179)
!846 = !DISubroutineType(types: !847)
!847 = !{!142, !167, !177, !177}
!848 = !DILocalVariable(name: "cookie", arg: 1, scope: !845, file: !2, line: 206, type: !167)
!849 = !DILocation(line: 206, column: 28, scope: !845)
!850 = !DILocalVariable(name: "fpath", arg: 2, scope: !845, file: !2, line: 206, type: !177)
!851 = !DILocation(line: 206, column: 48, scope: !845)
!852 = !DILocalVariable(name: "name", arg: 3, scope: !845, file: !2, line: 206, type: !177)
!853 = !DILocation(line: 206, column: 67, scope: !845)
!854 = !DILocalVariable(name: "catbuff", scope: !845, file: !2, line: 207, type: !191)
!855 = !DILocation(line: 207, column: 8, scope: !845)
!856 = !DILocalVariable(name: "buffer", scope: !845, file: !2, line: 208, type: !191)
!857 = !DILocation(line: 208, column: 8, scope: !845)
!858 = !DILocalVariable(name: "fp", scope: !859, file: !2, line: 278, type: !860)
!859 = distinct !DILexicalBlock(scope: !845, file: !2, line: 277, column: 3)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !862, line: 7, baseType: !863)
!862 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !864, line: 49, size: 1728, elements: !865)
!864 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!865 = !{!866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !881, !883, !884, !885, !889, !891, !893, !894, !897, !899, !902, !905, !906, !907, !908, !909}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !863, file: !864, line: 51, baseType: !142, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !863, file: !864, line: 54, baseType: !141, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !863, file: !864, line: 55, baseType: !141, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !863, file: !864, line: 56, baseType: !141, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !863, file: !864, line: 57, baseType: !141, size: 64, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !863, file: !864, line: 58, baseType: !141, size: 64, offset: 320)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !863, file: !864, line: 59, baseType: !141, size: 64, offset: 384)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !863, file: !864, line: 60, baseType: !141, size: 64, offset: 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !863, file: !864, line: 61, baseType: !141, size: 64, offset: 512)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !863, file: !864, line: 64, baseType: !141, size: 64, offset: 576)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !863, file: !864, line: 65, baseType: !141, size: 64, offset: 640)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !863, file: !864, line: 66, baseType: !141, size: 64, offset: 704)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !863, file: !864, line: 68, baseType: !879, size: 64, offset: 768)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !864, line: 36, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !863, file: !864, line: 70, baseType: !882, size: 64, offset: 832)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !863, file: !864, line: 72, baseType: !142, size: 32, offset: 896)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !863, file: !864, line: 73, baseType: !142, size: 32, offset: 928)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !863, file: !864, line: 74, baseType: !886, size: 64, offset: 960)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !887, line: 152, baseType: !888)
!887 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!888 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !863, file: !864, line: 77, baseType: !890, size: 16, offset: 1024)
!890 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !863, file: !864, line: 78, baseType: !892, size: 8, offset: 1040)
!892 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !863, file: !864, line: 79, baseType: !104, size: 8, offset: 1048)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !863, file: !864, line: 81, baseType: !895, size: 64, offset: 1088)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !864, line: 43, baseType: null)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !863, file: !864, line: 89, baseType: !898, size: 64, offset: 1152)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !887, line: 153, baseType: !888)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !863, file: !864, line: 91, baseType: !900, size: 64, offset: 1216)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !864, line: 37, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !863, file: !864, line: 92, baseType: !903, size: 64, offset: 1280)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !864, line: 38, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !863, file: !864, line: 93, baseType: !882, size: 64, offset: 1344)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !863, file: !864, line: 94, baseType: !134, size: 64, offset: 1408)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !863, file: !864, line: 95, baseType: !135, size: 64, offset: 1472)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !863, file: !864, line: 96, baseType: !142, size: 32, offset: 1536)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !863, file: !864, line: 98, baseType: !122, size: 160, offset: 1568)
!910 = !DILocation(line: 278, column: 11, scope: !859)
!911 = !DILocation(line: 278, column: 22, scope: !859)
!912 = !DILocation(line: 278, column: 16, scope: !859)
!913 = !DILocation(line: 280, column: 9, scope: !914)
!914 = distinct !DILexicalBlock(scope: !859, file: !2, line: 280, column: 9)
!915 = !DILocation(line: 280, column: 9, scope: !859)
!916 = !DILocalVariable(name: "line", scope: !917, file: !2, line: 281, type: !191)
!917 = distinct !DILexicalBlock(scope: !914, file: !2, line: 280, column: 13)
!918 = !DILocation(line: 281, column: 19, scope: !917)
!919 = !DILocation(line: 283, column: 7, scope: !917)
!920 = !DILocation(line: 283, column: 20, scope: !917)
!921 = !DILocation(line: 283, column: 15, scope: !917)
!922 = !DILocation(line: 283, column: 25, scope: !917)
!923 = !DILocation(line: 283, column: 43, scope: !917)
!924 = !DILocation(line: 283, column: 51, scope: !917)
!925 = !DILocation(line: 283, column: 36, scope: !917)
!926 = !DILocation(line: 283, column: 30, scope: !917)
!927 = !DILocation(line: 283, column: 60, scope: !917)
!928 = !DILocation(line: 283, column: 68, scope: !917)
!929 = !DILocation(line: 283, column: 58, scope: !917)
!930 = !DILocation(line: 0, scope: !917)
!931 = !DILocation(line: 284, column: 19, scope: !932)
!932 = distinct !DILexicalBlock(scope: !917, file: !2, line: 283, column: 78)
!933 = !DILocation(line: 284, column: 23, scope: !932)
!934 = !DILocation(line: 284, column: 9, scope: !932)
!935 = !DILocation(line: 285, column: 13, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !2, line: 285, column: 13)
!937 = !DILocation(line: 285, column: 13, scope: !932)
!938 = !DILocation(line: 286, column: 22, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !2, line: 286, column: 15)
!940 = distinct !DILexicalBlock(scope: !936, file: !2, line: 285, column: 32)
!941 = !DILocation(line: 286, column: 15, scope: !939)
!942 = !DILocation(line: 286, column: 28, scope: !939)
!943 = !DILocation(line: 286, column: 15, scope: !940)
!944 = !DILocation(line: 287, column: 17, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !2, line: 287, column: 17)
!946 = distinct !DILexicalBlock(scope: !939, file: !2, line: 286, column: 36)
!947 = !DILocation(line: 287, column: 25, scope: !945)
!948 = !DILocation(line: 287, column: 17, scope: !946)
!949 = !DILocalVariable(name: "domain", scope: !950, file: !2, line: 288, type: !951)
!950 = distinct !DILexicalBlock(scope: !945, file: !2, line: 287, column: 33)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !952)
!952 = !{!953}
!953 = !DISubrange(count: 256)
!954 = !DILocation(line: 288, column: 20, scope: !950)
!955 = !DILocalVariable(name: "path", scope: !950, file: !2, line: 289, type: !951)
!956 = !DILocation(line: 289, column: 20, scope: !950)
!957 = !DILocalVariable(name: "cook_name", scope: !950, file: !2, line: 290, type: !149)
!958 = !DILocation(line: 290, column: 20, scope: !950)
!959 = !DILocalVariable(name: "cook_value", scope: !950, file: !2, line: 291, type: !191)
!960 = !DILocation(line: 291, column: 27, scope: !950)
!961 = !DILocation(line: 293, column: 15, scope: !950)
!962 = !DILocation(line: 294, column: 15, scope: !950)
!963 = !DILocation(line: 295, column: 15, scope: !950)
!964 = !DILocation(line: 296, column: 15, scope: !950)
!965 = !DILocation(line: 300, column: 26, scope: !950)
!966 = !DILocation(line: 300, column: 34, scope: !950)
!967 = !DILocation(line: 300, column: 45, scope: !950)
!968 = !DILocation(line: 300, column: 57, scope: !950)
!969 = !DILocation(line: 300, column: 65, scope: !950)
!970 = !DILocation(line: 300, column: 15, scope: !950)
!971 = !DILocation(line: 301, column: 13, scope: !950)
!972 = !DILocation(line: 302, column: 11, scope: !946)
!973 = !DILocation(line: 303, column: 9, scope: !940)
!974 = distinct !{!974, !919, !975, !303}
!975 = !DILocation(line: 304, column: 7, scope: !917)
!976 = !DILocation(line: 305, column: 14, scope: !917)
!977 = !DILocation(line: 305, column: 7, scope: !917)
!978 = !DILocation(line: 306, column: 7, scope: !917)
!979 = !DILocation(line: 309, column: 3, scope: !845)
!980 = !DILocation(line: 310, column: 1, scope: !845)
!981 = distinct !DISubprogram(name: "cookie_save", scope: !2, file: !2, line: 314, type: !982, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !179)
!982 = !DISubroutineType(types: !983)
!983 = !{!142, !167, !177}
!984 = !DILocalVariable(name: "cookie", arg: 1, scope: !981, file: !2, line: 314, type: !167)
!985 = !DILocation(line: 314, column: 28, scope: !981)
!986 = !DILocalVariable(name: "name", arg: 2, scope: !981, file: !2, line: 314, type: !177)
!987 = !DILocation(line: 314, column: 48, scope: !981)
!988 = !DILocalVariable(name: "catbuff", scope: !981, file: !2, line: 315, type: !191)
!989 = !DILocation(line: 315, column: 8, scope: !981)
!990 = !DILocation(line: 317, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !981, file: !2, line: 317, column: 7)
!992 = !DILocation(line: 317, column: 7, scope: !981)
!993 = !DILocalVariable(name: "line", scope: !994, file: !2, line: 318, type: !191)
!994 = distinct !DILexicalBlock(scope: !991, file: !2, line: 317, column: 34)
!995 = !DILocation(line: 318, column: 17, scope: !994)
!996 = !DILocalVariable(name: "fp", scope: !994, file: !2, line: 319, type: !860)
!997 = !DILocation(line: 319, column: 11, scope: !994)
!998 = !DILocation(line: 319, column: 22, scope: !994)
!999 = !DILocation(line: 319, column: 16, scope: !994)
!1000 = !DILocation(line: 321, column: 9, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !994, file: !2, line: 321, column: 9)
!1002 = !DILocation(line: 321, column: 9, scope: !994)
!1003 = !DILocalVariable(name: "a", scope: !1004, file: !2, line: 322, type: !141)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 321, column: 13)
!1005 = !DILocation(line: 322, column: 13, scope: !1004)
!1006 = !DILocation(line: 322, column: 17, scope: !1004)
!1007 = !DILocation(line: 322, column: 25, scope: !1004)
!1008 = !DILocation(line: 324, column: 15, scope: !1004)
!1009 = !DILocation(line: 324, column: 7, scope: !1004)
!1010 = !DILocation(line: 327, column: 7, scope: !1004)
!1011 = !DILocation(line: 328, column: 21, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 327, column: 10)
!1013 = !DILocation(line: 328, column: 24, scope: !1012)
!1014 = !DILocation(line: 328, column: 14, scope: !1012)
!1015 = !DILocation(line: 328, column: 11, scope: !1012)
!1016 = !DILocation(line: 329, column: 17, scope: !1012)
!1017 = !DILocation(line: 329, column: 30, scope: !1012)
!1018 = !DILocation(line: 329, column: 9, scope: !1012)
!1019 = !DILocation(line: 330, column: 7, scope: !1012)
!1020 = !DILocation(line: 330, column: 15, scope: !1004)
!1021 = distinct !{!1021, !1010, !1022, !303}
!1022 = !DILocation(line: 330, column: 32, scope: !1004)
!1023 = !DILocation(line: 331, column: 14, scope: !1004)
!1024 = !DILocation(line: 331, column: 7, scope: !1004)
!1025 = !DILocation(line: 332, column: 7, scope: !1004)
!1026 = !DILocation(line: 334, column: 3, scope: !994)
!1027 = !DILocation(line: 335, column: 5, scope: !991)
!1028 = !DILocation(line: 336, column: 3, scope: !981)
!1029 = !DILocation(line: 337, column: 1, scope: !981)
!1030 = distinct !DISubprogram(name: "bauth_add", scope: !2, file: !2, line: 416, type: !340, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !179)
!1031 = !DILocalVariable(name: "cookie", arg: 1, scope: !1030, file: !2, line: 416, type: !167)
!1032 = !DILocation(line: 416, column: 26, scope: !1030)
!1033 = !DILocalVariable(name: "adr", arg: 2, scope: !1030, file: !2, line: 416, type: !177)
!1034 = !DILocation(line: 416, column: 46, scope: !1030)
!1035 = !DILocalVariable(name: "fil", arg: 3, scope: !1030, file: !2, line: 416, type: !177)
!1036 = !DILocation(line: 416, column: 63, scope: !1030)
!1037 = !DILocalVariable(name: "auth", arg: 4, scope: !1030, file: !2, line: 416, type: !177)
!1038 = !DILocation(line: 416, column: 80, scope: !1030)
!1039 = !DILocalVariable(name: "buffer", scope: !1030, file: !2, line: 417, type: !1040)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1041)
!1041 = !{!1042}
!1042 = !DISubrange(count: 2048)
!1043 = !DILocation(line: 417, column: 8, scope: !1030)
!1044 = !DILocation(line: 419, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 419, column: 7)
!1046 = !DILocation(line: 419, column: 7, scope: !1030)
!1047 = !DILocation(line: 420, column: 22, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 420, column: 9)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 419, column: 15)
!1050 = !DILocation(line: 420, column: 30, scope: !1048)
!1051 = !DILocation(line: 420, column: 35, scope: !1048)
!1052 = !DILocation(line: 420, column: 10, scope: !1048)
!1053 = !DILocation(line: 420, column: 9, scope: !1049)
!1054 = !DILocalVariable(name: "chain", scope: !1055, file: !2, line: 421, type: !143)
!1055 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 420, column: 41)
!1056 = !DILocation(line: 421, column: 20, scope: !1055)
!1057 = !DILocation(line: 421, column: 29, scope: !1055)
!1058 = !DILocation(line: 421, column: 37, scope: !1055)
!1059 = !DILocalVariable(name: "prefix", scope: !1055, file: !2, line: 422, type: !141)
!1060 = !DILocation(line: 422, column: 13, scope: !1055)
!1061 = !DILocation(line: 422, column: 35, scope: !1055)
!1062 = !DILocation(line: 422, column: 43, scope: !1055)
!1063 = !DILocation(line: 422, column: 48, scope: !1055)
!1064 = !DILocation(line: 422, column: 22, scope: !1055)
!1065 = !DILocation(line: 425, column: 7, scope: !1055)
!1066 = !DILocation(line: 425, column: 13, scope: !1055)
!1067 = !DILocation(line: 425, column: 20, scope: !1055)
!1068 = !DILocation(line: 426, column: 17, scope: !1055)
!1069 = !DILocation(line: 426, column: 24, scope: !1055)
!1070 = !DILocation(line: 426, column: 15, scope: !1055)
!1071 = distinct !{!1071, !1065, !1069, !303}
!1072 = !DILocation(line: 427, column: 37, scope: !1055)
!1073 = !DILocation(line: 427, column: 7, scope: !1055)
!1074 = !DILocation(line: 427, column: 14, scope: !1055)
!1075 = !DILocation(line: 427, column: 19, scope: !1055)
!1076 = !DILocation(line: 428, column: 11, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 428, column: 11)
!1078 = !DILocation(line: 428, column: 18, scope: !1077)
!1079 = !DILocation(line: 428, column: 11, scope: !1055)
!1080 = !DILocation(line: 429, column: 17, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 428, column: 24)
!1082 = !DILocation(line: 429, column: 24, scope: !1081)
!1083 = !DILocation(line: 429, column: 15, scope: !1081)
!1084 = !DILocation(line: 430, column: 9, scope: !1081)
!1085 = !DILocation(line: 430, column: 16, scope: !1081)
!1086 = !DILocation(line: 430, column: 21, scope: !1081)
!1087 = !DILocation(line: 431, column: 9, scope: !1081)
!1088 = !DILocation(line: 432, column: 9, scope: !1081)
!1089 = !DILocation(line: 433, column: 9, scope: !1081)
!1090 = !DILocation(line: 435, column: 5, scope: !1055)
!1091 = !DILocation(line: 436, column: 3, scope: !1049)
!1092 = !DILocation(line: 437, column: 3, scope: !1030)
!1093 = !DILocation(line: 438, column: 1, scope: !1030)
!1094 = distinct !DISubprogram(name: "bauth_check", scope: !2, file: !2, line: 442, type: !1095, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !179)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!141, !167, !177, !177}
!1097 = !DILocalVariable(name: "cookie", arg: 1, scope: !1094, file: !2, line: 442, type: !167)
!1098 = !DILocation(line: 442, column: 30, scope: !1094)
!1099 = !DILocalVariable(name: "adr", arg: 2, scope: !1094, file: !2, line: 442, type: !177)
!1100 = !DILocation(line: 442, column: 50, scope: !1094)
!1101 = !DILocalVariable(name: "fil", arg: 3, scope: !1094, file: !2, line: 442, type: !177)
!1102 = !DILocation(line: 442, column: 67, scope: !1094)
!1103 = !DILocalVariable(name: "buffer", scope: !1094, file: !2, line: 443, type: !1040)
!1104 = !DILocation(line: 443, column: 8, scope: !1094)
!1105 = !DILocation(line: 445, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 445, column: 7)
!1107 = !DILocation(line: 445, column: 7, scope: !1094)
!1108 = !DILocalVariable(name: "chain", scope: !1109, file: !2, line: 446, type: !143)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 445, column: 15)
!1110 = !DILocation(line: 446, column: 18, scope: !1109)
!1111 = !DILocation(line: 446, column: 27, scope: !1109)
!1112 = !DILocation(line: 446, column: 35, scope: !1109)
!1113 = !DILocalVariable(name: "prefix", scope: !1109, file: !2, line: 447, type: !141)
!1114 = !DILocation(line: 447, column: 11, scope: !1109)
!1115 = !DILocation(line: 447, column: 33, scope: !1109)
!1116 = !DILocation(line: 447, column: 41, scope: !1109)
!1117 = !DILocation(line: 447, column: 46, scope: !1109)
!1118 = !DILocation(line: 447, column: 20, scope: !1109)
!1119 = !DILocation(line: 449, column: 5, scope: !1109)
!1120 = !DILocation(line: 449, column: 11, scope: !1109)
!1121 = !DILocation(line: 450, column: 11, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 450, column: 11)
!1123 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 449, column: 18)
!1124 = !DILocation(line: 450, column: 11, scope: !1123)
!1125 = !DILocation(line: 451, column: 21, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 451, column: 13)
!1127 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 450, column: 39)
!1128 = !DILocation(line: 451, column: 29, scope: !1126)
!1129 = !DILocation(line: 451, column: 36, scope: !1126)
!1130 = !DILocation(line: 451, column: 51, scope: !1126)
!1131 = !DILocation(line: 451, column: 58, scope: !1126)
!1132 = !DILocation(line: 451, column: 44, scope: !1126)
!1133 = !DILocation(line: 451, column: 13, scope: !1126)
!1134 = !DILocation(line: 451, column: 67, scope: !1126)
!1135 = !DILocation(line: 451, column: 13, scope: !1127)
!1136 = !DILocation(line: 452, column: 18, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 451, column: 73)
!1138 = !DILocation(line: 452, column: 25, scope: !1137)
!1139 = !DILocation(line: 452, column: 11, scope: !1137)
!1140 = !DILocation(line: 454, column: 7, scope: !1127)
!1141 = !DILocation(line: 455, column: 15, scope: !1123)
!1142 = !DILocation(line: 455, column: 22, scope: !1123)
!1143 = !DILocation(line: 455, column: 13, scope: !1123)
!1144 = distinct !{!1144, !1119, !1145, !303}
!1145 = !DILocation(line: 456, column: 5, scope: !1109)
!1146 = !DILocation(line: 457, column: 3, scope: !1109)
!1147 = !DILocation(line: 458, column: 3, scope: !1094)
!1148 = !DILocation(line: 459, column: 1, scope: !1094)
!1149 = distinct !DISubprogram(name: "bauth_prefix", scope: !2, file: !2, line: 461, type: !1150, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !179)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!141, !141, !177, !177}
!1152 = !DILocalVariable(name: "prefix", arg: 1, scope: !1149, file: !2, line: 461, type: !141)
!1153 = !DILocation(line: 461, column: 26, scope: !1149)
!1154 = !DILocalVariable(name: "adr", arg: 2, scope: !1149, file: !2, line: 461, type: !177)
!1155 = !DILocation(line: 461, column: 46, scope: !1149)
!1156 = !DILocalVariable(name: "fil", arg: 3, scope: !1149, file: !2, line: 461, type: !177)
!1157 = !DILocation(line: 461, column: 63, scope: !1149)
!1158 = !DILocalVariable(name: "a", scope: !1149, file: !2, line: 462, type: !141)
!1159 = !DILocation(line: 462, column: 9, scope: !1149)
!1160 = !DILocation(line: 464, column: 3, scope: !1149)
!1161 = !DILocation(line: 465, column: 3, scope: !1149)
!1162 = !DILocation(line: 466, column: 14, scope: !1149)
!1163 = !DILocation(line: 466, column: 7, scope: !1149)
!1164 = !DILocation(line: 466, column: 5, scope: !1149)
!1165 = !DILocation(line: 467, column: 7, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 467, column: 7)
!1167 = !DILocation(line: 467, column: 7, scope: !1149)
!1168 = !DILocation(line: 468, column: 6, scope: !1166)
!1169 = !DILocation(line: 468, column: 8, scope: !1166)
!1170 = !DILocation(line: 468, column: 5, scope: !1166)
!1171 = !DILocation(line: 469, column: 14, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 469, column: 7)
!1173 = !DILocation(line: 469, column: 7, scope: !1172)
!1174 = !DILocation(line: 469, column: 7, scope: !1149)
!1175 = !DILocation(line: 470, column: 9, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 469, column: 28)
!1177 = !DILocation(line: 470, column: 25, scope: !1176)
!1178 = !DILocation(line: 470, column: 18, scope: !1176)
!1179 = !DILocation(line: 470, column: 16, scope: !1176)
!1180 = !DILocation(line: 470, column: 33, scope: !1176)
!1181 = !DILocation(line: 470, column: 7, scope: !1176)
!1182 = !DILocation(line: 471, column: 5, scope: !1176)
!1183 = !DILocation(line: 471, column: 12, scope: !1176)
!1184 = !DILocation(line: 471, column: 11, scope: !1176)
!1185 = !DILocation(line: 471, column: 14, scope: !1176)
!1186 = !DILocation(line: 472, column: 8, scope: !1176)
!1187 = distinct !{!1187, !1182, !1186, !303}
!1188 = !DILocation(line: 473, column: 7, scope: !1176)
!1189 = !DILocation(line: 473, column: 9, scope: !1176)
!1190 = !DILocation(line: 473, column: 14, scope: !1176)
!1191 = !DILocation(line: 474, column: 3, scope: !1176)
!1192 = !DILocation(line: 475, column: 10, scope: !1149)
!1193 = !DILocation(line: 475, column: 3, scope: !1149)
!1194 = distinct !DISubprogram(name: "abortf_", scope: !116, file: !116, line: 95, type: !1195, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !179)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !177, !177, !142}
!1197 = !DILocalVariable(name: "exp", arg: 1, scope: !1194, file: !116, line: 95, type: !177)
!1198 = !DILocation(line: 95, column: 44, scope: !1194)
!1199 = !DILocalVariable(name: "file", arg: 2, scope: !1194, file: !116, line: 95, type: !177)
!1200 = !DILocation(line: 95, column: 61, scope: !1194)
!1201 = !DILocalVariable(name: "line", arg: 3, scope: !1194, file: !116, line: 95, type: !142)
!1202 = !DILocation(line: 95, column: 71, scope: !1194)
!1203 = !DILocation(line: 99, column: 14, scope: !1194)
!1204 = !DILocation(line: 99, column: 19, scope: !1194)
!1205 = !DILocation(line: 99, column: 25, scope: !1194)
!1206 = !DILocation(line: 99, column: 3, scope: !1194)
!1207 = !DILocation(line: 100, column: 3, scope: !1194)
!1208 = distinct !DISubprogram(name: "log_abort_", scope: !116, file: !116, line: 90, type: !1195, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !179)
!1209 = !DILocalVariable(name: "msg", arg: 1, scope: !1208, file: !116, line: 90, type: !177)
!1210 = !DILocation(line: 90, column: 47, scope: !1208)
!1211 = !DILocalVariable(name: "file", arg: 2, scope: !1208, file: !116, line: 90, type: !177)
!1212 = !DILocation(line: 90, column: 64, scope: !1208)
!1213 = !DILocalVariable(name: "line", arg: 3, scope: !1208, file: !116, line: 90, type: !142)
!1214 = !DILocation(line: 90, column: 74, scope: !1208)
!1215 = !DILocation(line: 91, column: 11, scope: !1208)
!1216 = !DILocation(line: 91, column: 43, scope: !1208)
!1217 = !DILocation(line: 91, column: 48, scope: !1208)
!1218 = !DILocation(line: 91, column: 54, scope: !1208)
!1219 = !DILocation(line: 91, column: 3, scope: !1208)
!1220 = !DILocation(line: 92, column: 10, scope: !1208)
!1221 = !DILocation(line: 92, column: 3, scope: !1208)
!1222 = !DILocation(line: 93, column: 1, scope: !1208)
!1223 = distinct !DISubprogram(name: "strlen_safe_", scope: !116, file: !116, line: 187, type: !1224, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !179)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!135, !177, !483, !177, !142}
!1226 = !DILocalVariable(name: "source", arg: 1, scope: !1223, file: !116, line: 187, type: !177)
!1227 = !DILocation(line: 187, column: 62, scope: !1223)
!1228 = !DILocalVariable(name: "sizeof_source", arg: 2, scope: !1223, file: !116, line: 187, type: !483)
!1229 = !DILocation(line: 187, column: 83, scope: !1223)
!1230 = !DILocalVariable(name: "file", arg: 3, scope: !1223, file: !116, line: 188, type: !177)
!1231 = !DILocation(line: 188, column: 62, scope: !1223)
!1232 = !DILocalVariable(name: "line", arg: 4, scope: !1223, file: !116, line: 188, type: !142)
!1233 = !DILocation(line: 188, column: 72, scope: !1223)
!1234 = !DILocalVariable(name: "size", scope: !1223, file: !116, line: 189, type: !135)
!1235 = !DILocation(line: 189, column: 10, scope: !1223)
!1236 = !DILocation(line: 190, column: 3, scope: !1223)
!1237 = !DILocation(line: 191, column: 10, scope: !1223)
!1238 = !DILocation(line: 191, column: 24, scope: !1223)
!1239 = !DILocation(line: 192, column: 15, scope: !1223)
!1240 = !DILocation(line: 192, column: 23, scope: !1223)
!1241 = !DILocation(line: 192, column: 7, scope: !1223)
!1242 = !DILocation(line: 192, column: 47, scope: !1223)
!1243 = !DILocation(line: 192, column: 40, scope: !1223)
!1244 = !DILocation(line: 191, column: 8, scope: !1223)
!1245 = !DILocation(line: 193, column: 3, scope: !1223)
!1246 = !DILocation(line: 194, column: 10, scope: !1223)
!1247 = !DILocation(line: 194, column: 3, scope: !1223)
