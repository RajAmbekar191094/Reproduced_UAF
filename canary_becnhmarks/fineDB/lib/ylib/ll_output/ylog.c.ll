; ModuleID = './ylog.c'
source_filename = "./ylog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ylog_main_s = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@_ylog_gl = global %struct.ylog_main_s { ptr null, i32 1, ptr null, ptr null, ptr null, ptr null, i32 3, i32 524288, ptr null, i32 24 }, align 8, !dbg !0
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1, !dbg !30
@.str.1 = private unnamed_addr constant [9 x i8] c"./ylog.c\00", align 1, !dbg !37
@__FUNCTION__.ylog_init = private unnamed_addr constant [10 x i8] c"ylog_init\00", align 1, !dbg !42
@.str.2 = private unnamed_addr constant [23 x i8] c"Problem with file '%s'\00", align 1, !dbg !48
@.str.3 = private unnamed_addr constant [13 x i8] c"YLOG_MODULES\00", align 1, !dbg !53
@.str.4 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1, !dbg !58
@.str.5 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1, !dbg !63
@.str.6 = private unnamed_addr constant [5 x i8] c"NOTE\00", align 1, !dbg !68
@.str.7 = private unnamed_addr constant [5 x i8] c"WARN\00", align 1, !dbg !70
@.str.8 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1, !dbg !72
@.str.9 = private unnamed_addr constant [5 x i8] c"CRIT\00", align 1, !dbg !77
@__const.ylog_write.msg = private unnamed_addr constant [6 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], align 16
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !79
@.str.11 = private unnamed_addr constant [19 x i8] c"(%s|%d)[%s] %s: %s\00", align 1, !dbg !84
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !89
@.str.13 = private unnamed_addr constant [36 x i8] c"%04d-%02d-%02d %02d:%02d:%02d %s%s\0A\00", align 1, !dbg !94
@stderr = external global ptr, align 8
@__FUNCTION__.ylog_write = private unnamed_addr constant [11 x i8] c"ylog_write\00", align 1, !dbg !99
@.str.14 = private unnamed_addr constant [34 x i8] c"Problem to write log to file '%s'\00", align 1, !dbg !104
@.str.15 = private unnamed_addr constant [21 x i8] c"Unable to close file\00", align 1, !dbg !109
@.str.16 = private unnamed_addr constant [32 x i8] c"%s-%04d%02d%02d-%02d%02d%02d-%d\00", align 1, !dbg !114
@.str.17 = private unnamed_addr constant [2 x i8] c"w\00", align 1, !dbg !119
@.str.18 = private unnamed_addr constant [25 x i8] c"Unable to open file '%s'\00", align 1, !dbg !121

; Function Attrs: noinline nounwind optnone uwtable
define void @ylog_init(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !208 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !212, metadata !DIExpression()), !dbg !213
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !214, metadata !DIExpression()), !dbg !215
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !216, metadata !DIExpression()), !dbg !217
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata ptr %9, metadata !220, metadata !DIExpression()), !dbg !221
  store ptr null, ptr %9, align 8, !dbg !221
  call void @llvm.dbg.declare(metadata ptr %10, metadata !222, metadata !DIExpression()), !dbg !223
  store i32 0, ptr %10, align 4, !dbg !223
  %11 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !224
  %12 = and i32 %11, 2, !dbg !226
  %13 = icmp ne i32 %12, 0, !dbg !226
  br i1 %13, label %14, label %20, !dbg !227

14:                                               ; preds = %4
  %15 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !228
  %16 = icmp ne ptr %15, null, !dbg !229
  br i1 %16, label %17, label %20, !dbg !230

17:                                               ; preds = %14
  %18 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !231
  %19 = call i32 @fclose(ptr noundef %18), !dbg !232
  br label %20, !dbg !232

20:                                               ; preds = %17, %14, %4
  %21 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 4), align 8, !dbg !233
  %22 = icmp ne ptr %21, null, !dbg !233
  br i1 %22, label %23, label %25, !dbg !233

23:                                               ; preds = %20
  %24 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 4), align 8, !dbg !233
  call void @free(ptr noundef %24) #8, !dbg !233
  br label %26, !dbg !233

25:                                               ; preds = %20
  br label %26, !dbg !233

26:                                               ; preds = %25, %23
  %27 = phi ptr [ null, %23 ], [ null, %25 ], !dbg !233
  store ptr null, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 4), align 8, !dbg !233
  %28 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 8), align 8, !dbg !234
  %29 = icmp ne ptr %28, null, !dbg !234
  br i1 %29, label %30, label %32, !dbg !234

30:                                               ; preds = %26
  %31 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 8), align 8, !dbg !234
  call void @free(ptr noundef %31) #8, !dbg !234
  br label %33, !dbg !234

32:                                               ; preds = %26
  br label %33, !dbg !234

33:                                               ; preds = %32, %30
  %34 = phi ptr [ null, %30 ], [ null, %32 ], !dbg !234
  store ptr null, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 8), align 8, !dbg !234
  %35 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 2), align 8, !dbg !235
  %36 = icmp ne ptr %35, null, !dbg !235
  br i1 %36, label %37, label %39, !dbg !235

37:                                               ; preds = %33
  %38 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 2), align 8, !dbg !235
  call void @free(ptr noundef %38) #8, !dbg !235
  br label %40, !dbg !235

39:                                               ; preds = %33
  br label %40, !dbg !235

40:                                               ; preds = %39, %37
  %41 = phi ptr [ null, %37 ], [ null, %39 ], !dbg !235
  store ptr null, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 2), align 8, !dbg !235
  %42 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 5), align 8, !dbg !236
  %43 = icmp ne ptr %42, null, !dbg !236
  br i1 %43, label %44, label %46, !dbg !236

44:                                               ; preds = %40
  %45 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 5), align 8, !dbg !236
  call void @free(ptr noundef %45) #8, !dbg !236
  br label %47, !dbg !236

46:                                               ; preds = %40
  br label %47, !dbg !236

47:                                               ; preds = %46, %44
  %48 = phi ptr [ null, %44 ], [ null, %46 ], !dbg !236
  store ptr null, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 5), align 8, !dbg !236
  store i32 3, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 6), align 8, !dbg !237
  %49 = load i32, ptr %5, align 4, !dbg !238
  store i32 %49, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !239
  store ptr null, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !240
  store i32 24, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 9), align 8, !dbg !241
  %50 = load i32, ptr %8, align 4, !dbg !242
  %51 = icmp ne i32 %50, 0, !dbg !242
  br i1 %51, label %52, label %56, !dbg !243

52:                                               ; preds = %47
  %53 = load i32, ptr %8, align 4, !dbg !244
  %54 = icmp ult i32 %53, 102400, !dbg !245
  br i1 %54, label %55, label %56, !dbg !246

55:                                               ; preds = %52
  br label %58, !dbg !246

56:                                               ; preds = %52, %47
  %57 = load i32, ptr %8, align 4, !dbg !247
  br label %58, !dbg !246

58:                                               ; preds = %56, %55
  %59 = phi i32 [ 102400, %55 ], [ %57, %56 ], !dbg !246
  store i32 %59, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 7), align 4, !dbg !248
  %60 = load ptr, ptr %7, align 8, !dbg !249
  %61 = icmp ne ptr %60, null, !dbg !249
  br i1 %61, label %62, label %89, !dbg !251

62:                                               ; preds = %58
  %63 = load ptr, ptr %7, align 8, !dbg !252
  %64 = call i64 @strlen(ptr noundef %63) #9, !dbg !253
  %65 = icmp ne i64 %64, 0, !dbg !253
  br i1 %65, label %66, label %89, !dbg !254

66:                                               ; preds = %62
  %67 = load ptr, ptr %7, align 8, !dbg !255
  %68 = call ptr @strrchr(ptr noundef %67, i32 noundef 47) #9, !dbg !258
  store ptr %68, ptr %9, align 8, !dbg !259
  %69 = icmp ne ptr %68, null, !dbg !259
  br i1 %69, label %70, label %78, !dbg !260

70:                                               ; preds = %66
  %71 = load ptr, ptr %9, align 8, !dbg !261
  %72 = getelementptr inbounds i8, ptr %71, i64 1, !dbg !262
  %73 = call i64 @strlen(ptr noundef %72) #9, !dbg !263
  %74 = icmp ne i64 %73, 0, !dbg !263
  br i1 %74, label %75, label %78, !dbg !264

75:                                               ; preds = %70
  %76 = load ptr, ptr %9, align 8, !dbg !265
  %77 = getelementptr inbounds i8, ptr %76, i64 1, !dbg !266
  store ptr %77, ptr %7, align 8, !dbg !267
  br label %78, !dbg !268

78:                                               ; preds = %75, %70, %66
  %79 = load ptr, ptr %7, align 8, !dbg !269
  %80 = call i64 @strlen(ptr noundef %79) #9, !dbg !269
  %81 = add i64 %80, 1, !dbg !269
  %82 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %81) #10, !dbg !269
  store ptr %82, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 4), align 8, !dbg !271
  %83 = icmp ne ptr %82, null, !dbg !271
  br i1 %83, label %84, label %88, !dbg !272

84:                                               ; preds = %78
  %85 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 4), align 8, !dbg !273
  %86 = load ptr, ptr %7, align 8, !dbg !274
  %87 = call ptr @strcpy(ptr noundef %85, ptr noundef %86) #8, !dbg !275
  br label %88, !dbg !275

88:                                               ; preds = %84, %78
  br label %89, !dbg !276

89:                                               ; preds = %88, %62, %58
  %90 = load i32, ptr %5, align 4, !dbg !277
  %91 = and i32 %90, 2, !dbg !279
  %92 = icmp ne i32 %91, 0, !dbg !279
  br i1 %92, label %93, label %125, !dbg !280

93:                                               ; preds = %89
  %94 = load ptr, ptr %6, align 8, !dbg !281
  %95 = icmp ne ptr %94, null, !dbg !281
  br i1 %95, label %96, label %110, !dbg !284

96:                                               ; preds = %93
  %97 = load ptr, ptr %6, align 8, !dbg !285
  %98 = call i64 @strlen(ptr noundef %97) #9, !dbg !285
  %99 = add i64 %98, 1, !dbg !285
  %100 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %99) #10, !dbg !285
  store ptr %100, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 2), align 8, !dbg !286
  %101 = icmp ne ptr %100, null, !dbg !286
  br i1 %101, label %102, label %110, !dbg !287

102:                                              ; preds = %96
  %103 = load ptr, ptr %6, align 8, !dbg !288
  %104 = call noalias ptr @fopen(ptr noundef %103, ptr noundef @.str), !dbg !289
  store ptr %104, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !290
  %105 = icmp ne ptr %104, null, !dbg !290
  br i1 %105, label %106, label %110, !dbg !291

106:                                              ; preds = %102
  %107 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 2), align 8, !dbg !292
  %108 = load ptr, ptr %6, align 8, !dbg !293
  %109 = call ptr @strcpy(ptr noundef %107, ptr noundef %108) #8, !dbg !294
  br label %124, !dbg !294

110:                                              ; preds = %102, %96, %93
  %111 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 2), align 8, !dbg !295
  %112 = icmp ne ptr %111, null, !dbg !295
  br i1 %112, label %113, label %115, !dbg !295

113:                                              ; preds = %110
  %114 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 2), align 8, !dbg !295
  call void @free(ptr noundef %114) #8, !dbg !295
  br label %116, !dbg !295

115:                                              ; preds = %110
  br label %116, !dbg !295

116:                                              ; preds = %115, %113
  %117 = phi ptr [ null, %113 ], [ null, %115 ], !dbg !295
  store ptr null, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 2), align 8, !dbg !295
  %118 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !297
  %119 = xor i32 %118, 2, !dbg !297
  store i32 %119, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !297
  %120 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !298
  %121 = or i32 %120, 1, !dbg !298
  store i32 %121, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !298
  store ptr null, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !299
  %122 = load ptr, ptr %6, align 8, !dbg !300
  %123 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef @.str.1, i32 noundef 59, ptr noundef @__FUNCTION__.ylog_init, ptr noundef @.str.2, ptr noundef %122), !dbg !300
  br label %124

124:                                              ; preds = %116, %106
  br label %125, !dbg !301

125:                                              ; preds = %124, %89
  %126 = call ptr @getenv(ptr noundef @.str.3) #8, !dbg !302
  store ptr %126, ptr %9, align 8, !dbg !304
  %127 = icmp ne ptr %126, null, !dbg !304
  br i1 %127, label %128, label %143, !dbg !305

128:                                              ; preds = %125
  %129 = load ptr, ptr %9, align 8, !dbg !306
  %130 = call i64 @strlen(ptr noundef %129) #9, !dbg !307
  %131 = trunc i64 %130 to i32, !dbg !307
  store i32 %131, ptr %10, align 4, !dbg !308
  %132 = icmp ne i32 %131, 0, !dbg !308
  br i1 %132, label %133, label %143, !dbg !309

133:                                              ; preds = %128
  %134 = load i32, ptr %10, align 4, !dbg !310
  %135 = add nsw i32 %134, 1, !dbg !310
  %136 = sext i32 %135 to i64, !dbg !310
  %137 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %136) #10, !dbg !310
  store ptr %137, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 8), align 8, !dbg !311
  %138 = icmp ne ptr %137, null, !dbg !311
  br i1 %138, label %139, label %143, !dbg !312

139:                                              ; preds = %133
  %140 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 8), align 8, !dbg !313
  %141 = load ptr, ptr %9, align 8, !dbg !314
  %142 = call ptr @strcpy(ptr noundef %140, ptr noundef %141) #8, !dbg !315
  br label %144, !dbg !315

143:                                              ; preds = %133, %128, %125
  store ptr null, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 8), align 8, !dbg !316
  br label %144

144:                                              ; preds = %143, %139
  ret void, !dbg !317
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fclose(ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #5

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #3

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ylog_write(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ...) #0 !dbg !318 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca [6 x ptr], align 16
  %15 = alloca [1 x %struct.__va_list_tag], align 16
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.stat, align 8
  store i32 %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !322, metadata !DIExpression()), !dbg !323
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !324, metadata !DIExpression()), !dbg !325
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !326, metadata !DIExpression()), !dbg !327
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !328, metadata !DIExpression()), !dbg !329
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !330, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata ptr %12, metadata !332, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata ptr %13, metadata !337, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.declare(metadata ptr %14, metadata !354, metadata !DIExpression()), !dbg !356
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %14, ptr align 16 @__const.ylog_write.msg, i64 48, i1 false), !dbg !356
  call void @llvm.dbg.declare(metadata ptr %15, metadata !357, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.declare(metadata ptr %16, metadata !372, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata ptr %17, metadata !374, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata ptr %18, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata ptr %19, metadata !378, metadata !DIExpression()), !dbg !379
  store i32 1, ptr %19, align 4, !dbg !379
  call void @llvm.dbg.declare(metadata ptr %20, metadata !380, metadata !DIExpression()), !dbg !381
  %22 = load i32, ptr %7, align 4, !dbg !382
  %23 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 6), align 8, !dbg !384
  %24 = icmp ult i32 %22, %23, !dbg !385
  br i1 %24, label %25, label %26, !dbg !386

25:                                               ; preds = %5
  store i32 0, ptr %6, align 4, !dbg !387
  br label %284, !dbg !387

26:                                               ; preds = %5
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %15, i64 0, i64 0, !dbg !388
  call void @llvm.va_start(ptr %27), !dbg !388
  %28 = call i64 @time(ptr noundef null) #8, !dbg !389
  store i64 %28, ptr %12, align 8, !dbg !390
  %29 = call ptr @localtime(ptr noundef %12) #8, !dbg !391
  store ptr %29, ptr %13, align 8, !dbg !392
  %30 = call ptr @ys_new(ptr noundef @.str.10), !dbg !393
  store ptr %30, ptr %16, align 8, !dbg !394
  %31 = call ptr @ys_new(ptr noundef @.str.10), !dbg !395
  store ptr %31, ptr %17, align 8, !dbg !396
  %32 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !397
  %33 = and i32 %32, 2, !dbg !399
  %34 = icmp ne i32 %33, 0, !dbg !399
  br i1 %34, label %35, label %43, !dbg !400

35:                                               ; preds = %26
  %36 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !401
  %37 = icmp ne ptr %36, null, !dbg !402
  br i1 %37, label %43, label %38, !dbg !403

38:                                               ; preds = %35
  %39 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !404
  %40 = or i32 %39, 1, !dbg !404
  store i32 %40, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !404
  %41 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !406
  %42 = xor i32 %41, 2, !dbg !406
  store i32 %42, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !406
  br label %43, !dbg !407

43:                                               ; preds = %38, %35, %26
  %44 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !408
  %45 = and i32 %44, 8, !dbg !410
  %46 = icmp ne i32 %45, 0, !dbg !410
  br i1 %46, label %47, label %55, !dbg !411

47:                                               ; preds = %43
  %48 = load ptr, ptr @_ylog_gl, align 8, !dbg !412
  %49 = icmp ne ptr %48, null, !dbg !413
  br i1 %49, label %55, label %50, !dbg !414

50:                                               ; preds = %47
  %51 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !415
  %52 = or i32 %51, 1, !dbg !415
  store i32 %52, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !415
  %53 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !417
  %54 = xor i32 %53, 8, !dbg !417
  store i32 %54, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !417
  br label %55, !dbg !418

55:                                               ; preds = %50, %47, %43
  %56 = load ptr, ptr %8, align 8, !dbg !419
  %57 = icmp ne ptr %56, null, !dbg !419
  br i1 %57, label %58, label %60, !dbg !419

58:                                               ; preds = %55
  %59 = load ptr, ptr %8, align 8, !dbg !420
  br label %61, !dbg !419

60:                                               ; preds = %55
  br label %61, !dbg !419

61:                                               ; preds = %60, %58
  %62 = phi ptr [ %59, %58 ], [ @.str.10, %60 ], !dbg !419
  %63 = load i32, ptr %9, align 4, !dbg !421
  %64 = load i32, ptr %7, align 4, !dbg !422
  %65 = sext i32 %64 to i64, !dbg !423
  %66 = getelementptr inbounds [6 x ptr], ptr %14, i64 0, i64 %65, !dbg !423
  %67 = load ptr, ptr %66, align 8, !dbg !423
  %68 = load ptr, ptr %10, align 8, !dbg !424
  %69 = icmp ne ptr %68, null, !dbg !424
  br i1 %69, label %70, label %72, !dbg !424

70:                                               ; preds = %61
  %71 = load ptr, ptr %10, align 8, !dbg !425
  br label %73, !dbg !424

72:                                               ; preds = %61
  br label %73, !dbg !424

73:                                               ; preds = %72, %70
  %74 = phi ptr [ %71, %70 ], [ @.str.10, %72 ], !dbg !424
  %75 = load ptr, ptr %11, align 8, !dbg !426
  %76 = icmp ne ptr %75, null, !dbg !426
  br i1 %76, label %77, label %79, !dbg !426

77:                                               ; preds = %73
  %78 = load ptr, ptr %11, align 8, !dbg !427
  br label %80, !dbg !426

79:                                               ; preds = %73
  br label %80, !dbg !426

80:                                               ; preds = %79, %77
  %81 = phi ptr [ %78, %77 ], [ @.str.10, %79 ], !dbg !426
  %82 = call i32 (ptr, ptr, ...) @ys_printf(ptr noundef %16, ptr noundef @.str.11, ptr noundef %62, i32 noundef %63, ptr noundef %67, ptr noundef %74, ptr noundef %81), !dbg !428
  %83 = load ptr, ptr %16, align 8, !dbg !429
  %84 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %15, i64 0, i64 0, !dbg !430
  %85 = call i32 @ys_vprintf(ptr noundef %17, ptr noundef %83, ptr noundef %84), !dbg !431
  %86 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %15, i64 0, i64 0, !dbg !432
  call void @llvm.va_end(ptr %86), !dbg !432
  %87 = load ptr, ptr %16, align 8, !dbg !433
  call void @ys_trunc(ptr noundef %87), !dbg !434
  %88 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !435
  %89 = and i32 %88, 4, !dbg !437
  %90 = icmp ne i32 %89, 0, !dbg !437
  br i1 %90, label %91, label %146, !dbg !438

91:                                               ; preds = %80
  %92 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 5), align 8, !dbg !439
  %93 = icmp ne ptr %92, null, !dbg !441
  br i1 %93, label %94, label %96, !dbg !441

94:                                               ; preds = %91
  %95 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 5), align 8, !dbg !442
  br label %104, !dbg !441

96:                                               ; preds = %91
  %97 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 4), align 8, !dbg !443
  %98 = icmp ne ptr %97, null, !dbg !444
  br i1 %98, label %99, label %101, !dbg !444

99:                                               ; preds = %96
  %100 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 4), align 8, !dbg !445
  br label %102, !dbg !444

101:                                              ; preds = %96
  br label %102, !dbg !444

102:                                              ; preds = %101, %99
  %103 = phi ptr [ %100, %99 ], [ @.str.10, %101 ], !dbg !444
  br label %104, !dbg !441

104:                                              ; preds = %102, %94
  %105 = phi ptr [ %95, %94 ], [ %103, %102 ], !dbg !441
  %106 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 9), align 8, !dbg !446
  call void @openlog(ptr noundef %105, i32 noundef 0, i32 noundef %106), !dbg !447
  %107 = load i32, ptr %7, align 4, !dbg !448
  %108 = icmp eq i32 %107, 0, !dbg !449
  br i1 %108, label %109, label %110, !dbg !448

109:                                              ; preds = %104
  br label %139, !dbg !448

110:                                              ; preds = %104
  %111 = load i32, ptr %7, align 4, !dbg !450
  %112 = icmp eq i32 %111, 1, !dbg !451
  br i1 %112, label %113, label %114, !dbg !450

113:                                              ; preds = %110
  br label %137, !dbg !450

114:                                              ; preds = %110
  %115 = load i32, ptr %7, align 4, !dbg !452
  %116 = icmp eq i32 %115, 2, !dbg !453
  br i1 %116, label %117, label %118, !dbg !452

117:                                              ; preds = %114
  br label %135, !dbg !452

118:                                              ; preds = %114
  %119 = load i32, ptr %7, align 4, !dbg !454
  %120 = icmp eq i32 %119, 3, !dbg !455
  br i1 %120, label %121, label %122, !dbg !454

121:                                              ; preds = %118
  br label %133, !dbg !454

122:                                              ; preds = %118
  %123 = load i32, ptr %7, align 4, !dbg !456
  %124 = icmp eq i32 %123, 4, !dbg !457
  br i1 %124, label %125, label %126, !dbg !456

125:                                              ; preds = %122
  br label %131, !dbg !456

126:                                              ; preds = %122
  %127 = load i32, ptr %7, align 4, !dbg !458
  %128 = icmp eq i32 %127, 5, !dbg !459
  %129 = zext i1 %128 to i64, !dbg !458
  %130 = select i1 %128, i32 2, i32 7, !dbg !458
  br label %131, !dbg !456

131:                                              ; preds = %126, %125
  %132 = phi i32 [ 3, %125 ], [ %130, %126 ], !dbg !456
  br label %133, !dbg !454

133:                                              ; preds = %131, %121
  %134 = phi i32 [ 4, %121 ], [ %132, %131 ], !dbg !454
  br label %135, !dbg !452

135:                                              ; preds = %133, %117
  %136 = phi i32 [ 5, %117 ], [ %134, %133 ], !dbg !452
  br label %137, !dbg !450

137:                                              ; preds = %135, %113
  %138 = phi i32 [ 6, %113 ], [ %136, %135 ], !dbg !450
  br label %139, !dbg !448

139:                                              ; preds = %137, %109
  %140 = phi i32 [ 7, %109 ], [ %138, %137 ], !dbg !448
  %141 = load ptr, ptr %17, align 8, !dbg !460
  call void (i32, ptr, ...) @syslog(i32 noundef %140, ptr noundef @.str.12, ptr noundef %141), !dbg !461
  call void @closelog(), !dbg !462
  %142 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !463
  %143 = icmp eq i32 %142, 4, !dbg !465
  br i1 %143, label %144, label %145, !dbg !466

144:                                              ; preds = %139
  call void @ys_del(ptr noundef %17), !dbg !467
  call void @ys_del(ptr noundef %16), !dbg !469
  store i32 1, ptr %6, align 4, !dbg !470
  br label %284, !dbg !470

145:                                              ; preds = %139
  br label %146, !dbg !471

146:                                              ; preds = %145, %80
  %147 = load ptr, ptr %13, align 8, !dbg !472
  %148 = getelementptr inbounds %struct.tm, ptr %147, i32 0, i32 5, !dbg !473
  %149 = load i32, ptr %148, align 4, !dbg !473
  %150 = add nsw i32 %149, 1900, !dbg !474
  %151 = load ptr, ptr %13, align 8, !dbg !475
  %152 = getelementptr inbounds %struct.tm, ptr %151, i32 0, i32 4, !dbg !476
  %153 = load i32, ptr %152, align 8, !dbg !476
  %154 = add nsw i32 %153, 1, !dbg !477
  %155 = load ptr, ptr %13, align 8, !dbg !478
  %156 = getelementptr inbounds %struct.tm, ptr %155, i32 0, i32 3, !dbg !479
  %157 = load i32, ptr %156, align 4, !dbg !479
  %158 = load ptr, ptr %13, align 8, !dbg !480
  %159 = getelementptr inbounds %struct.tm, ptr %158, i32 0, i32 2, !dbg !481
  %160 = load i32, ptr %159, align 8, !dbg !481
  %161 = load ptr, ptr %13, align 8, !dbg !482
  %162 = getelementptr inbounds %struct.tm, ptr %161, i32 0, i32 1, !dbg !483
  %163 = load i32, ptr %162, align 4, !dbg !483
  %164 = load ptr, ptr %13, align 8, !dbg !484
  %165 = getelementptr inbounds %struct.tm, ptr %164, i32 0, i32 0, !dbg !485
  %166 = load i32, ptr %165, align 8, !dbg !485
  %167 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 4), align 8, !dbg !486
  %168 = icmp ne ptr %167, null, !dbg !487
  br i1 %168, label %169, label %171, !dbg !487

169:                                              ; preds = %146
  %170 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 4), align 8, !dbg !488
  br label %172, !dbg !487

171:                                              ; preds = %146
  br label %172, !dbg !487

172:                                              ; preds = %171, %169
  %173 = phi ptr [ %170, %169 ], [ @.str.10, %171 ], !dbg !487
  %174 = load ptr, ptr %17, align 8, !dbg !489
  %175 = call i32 (ptr, ptr, ...) @ys_printf(ptr noundef %16, ptr noundef @.str.13, i32 noundef %150, i32 noundef %154, i32 noundef %157, i32 noundef %160, i32 noundef %163, i32 noundef %166, ptr noundef %173, ptr noundef %174), !dbg !490
  call void @ys_del(ptr noundef %17), !dbg !491
  %176 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !492
  %177 = and i32 %176, 8, !dbg !494
  %178 = icmp ne i32 %177, 0, !dbg !494
  br i1 %178, label %179, label %182, !dbg !495

179:                                              ; preds = %172
  %180 = load ptr, ptr @_ylog_gl, align 8, !dbg !496
  %181 = load ptr, ptr %16, align 8, !dbg !497
  call void %180(ptr noundef %181), !dbg !498
  br label %182, !dbg !498

182:                                              ; preds = %179, %172
  %183 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !499
  %184 = and i32 %183, 1, !dbg !501
  %185 = icmp ne i32 %184, 0, !dbg !501
  br i1 %185, label %186, label %190, !dbg !502

186:                                              ; preds = %182
  %187 = load ptr, ptr %16, align 8, !dbg !503
  %188 = load ptr, ptr @stderr, align 8, !dbg !504
  %189 = call i32 @fputs(ptr noundef %187, ptr noundef %188), !dbg !505
  br label %190, !dbg !505

190:                                              ; preds = %186, %182
  %191 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !506
  %192 = and i32 %191, 2, !dbg !508
  %193 = icmp ne i32 %192, 0, !dbg !508
  br i1 %193, label %194, label %282, !dbg !509

194:                                              ; preds = %190
  %195 = load ptr, ptr %16, align 8, !dbg !510
  %196 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !513
  %197 = call i32 @fputs(ptr noundef %195, ptr noundef %196), !dbg !514
  %198 = icmp slt i32 %197, 0, !dbg !515
  br i1 %198, label %199, label %208, !dbg !516

199:                                              ; preds = %194
  %200 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !517
  %201 = call i32 @fclose(ptr noundef %200), !dbg !519
  store ptr null, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !520
  %202 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !521
  %203 = or i32 %202, 1, !dbg !521
  store i32 %203, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !521
  %204 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !522
  %205 = xor i32 %204, 2, !dbg !522
  store i32 %205, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !522
  %206 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 2), align 8, !dbg !523
  %207 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef @.str.1, i32 noundef 201, ptr noundef @__FUNCTION__.ylog_write, ptr noundef @.str.14, ptr noundef %206), !dbg !523
  store i32 0, ptr %19, align 4, !dbg !524
  br label %208, !dbg !525

208:                                              ; preds = %199, %194
  %209 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !526
  %210 = call i32 @fflush(ptr noundef %209), !dbg !527
  %211 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 7), align 4, !dbg !528
  %212 = icmp ne i32 %211, 0, !dbg !530
  br i1 %212, label %213, label %281, !dbg !531

213:                                              ; preds = %208
  call void @llvm.dbg.declare(metadata ptr %21, metadata !532, metadata !DIExpression()), !dbg !567
  %214 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !568
  %215 = call i32 @fileno(ptr noundef %214) #8, !dbg !570
  %216 = call i32 @fstat(i32 noundef %215, ptr noundef %21) #8, !dbg !571
  %217 = icmp ne i32 %216, 0, !dbg !571
  br i1 %217, label %280, label %218, !dbg !572

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.stat, ptr %21, i32 0, i32 8, !dbg !573
  %220 = load i64, ptr %219, align 8, !dbg !573
  %221 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 7), align 4, !dbg !574
  %222 = zext i32 %221 to i64, !dbg !575
  %223 = icmp sge i64 %220, %222, !dbg !576
  br i1 %223, label %224, label %280, !dbg !577

224:                                              ; preds = %218
  %225 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !578
  store ptr %225, ptr %18, align 8, !dbg !580
  store ptr null, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !581
  %226 = load ptr, ptr %18, align 8, !dbg !582
  %227 = call i32 @fclose(ptr noundef %226), !dbg !584
  %228 = icmp ne i32 %227, 0, !dbg !584
  br i1 %228, label %229, label %231, !dbg !585

229:                                              ; preds = %224
  %230 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef @.str.1, i32 noundef 215, ptr noundef @__FUNCTION__.ylog_write, ptr noundef @.str.15), !dbg !586
  br label %231, !dbg !586

231:                                              ; preds = %229, %224
  %232 = call ptr @ys_new(ptr noundef @.str.10), !dbg !587
  store ptr %232, ptr %16, align 8, !dbg !588
  store i32 0, ptr %20, align 4, !dbg !589
  br label %233, !dbg !591

233:                                              ; preds = %262, %231
  %234 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 2), align 8, !dbg !592
  %235 = load ptr, ptr %13, align 8, !dbg !595
  %236 = getelementptr inbounds %struct.tm, ptr %235, i32 0, i32 5, !dbg !596
  %237 = load i32, ptr %236, align 4, !dbg !596
  %238 = add nsw i32 %237, 1900, !dbg !597
  %239 = load ptr, ptr %13, align 8, !dbg !598
  %240 = getelementptr inbounds %struct.tm, ptr %239, i32 0, i32 4, !dbg !599
  %241 = load i32, ptr %240, align 8, !dbg !599
  %242 = add nsw i32 %241, 1, !dbg !600
  %243 = load ptr, ptr %13, align 8, !dbg !601
  %244 = getelementptr inbounds %struct.tm, ptr %243, i32 0, i32 3, !dbg !602
  %245 = load i32, ptr %244, align 4, !dbg !602
  %246 = load ptr, ptr %13, align 8, !dbg !603
  %247 = getelementptr inbounds %struct.tm, ptr %246, i32 0, i32 2, !dbg !604
  %248 = load i32, ptr %247, align 8, !dbg !604
  %249 = load ptr, ptr %13, align 8, !dbg !605
  %250 = getelementptr inbounds %struct.tm, ptr %249, i32 0, i32 1, !dbg !606
  %251 = load i32, ptr %250, align 4, !dbg !606
  %252 = load ptr, ptr %13, align 8, !dbg !607
  %253 = getelementptr inbounds %struct.tm, ptr %252, i32 0, i32 0, !dbg !608
  %254 = load i32, ptr %253, align 8, !dbg !608
  %255 = load i32, ptr %20, align 4, !dbg !609
  %256 = call i32 (ptr, ptr, ...) @ys_printf(ptr noundef %16, ptr noundef @.str.16, ptr noundef %234, i32 noundef %238, i32 noundef %242, i32 noundef %245, i32 noundef %248, i32 noundef %251, i32 noundef %254, i32 noundef %255), !dbg !610
  %257 = load ptr, ptr %16, align 8, !dbg !611
  %258 = call i32 @stat(ptr noundef %257, ptr noundef %21) #8, !dbg !613
  %259 = icmp ne i32 %258, 0, !dbg !613
  br i1 %259, label %260, label %261, !dbg !614

260:                                              ; preds = %233
  br label %265, !dbg !615

261:                                              ; preds = %233
  br label %262, !dbg !616

262:                                              ; preds = %261
  %263 = load i32, ptr %20, align 4, !dbg !617
  %264 = add nsw i32 %263, 1, !dbg !617
  store i32 %264, ptr %20, align 4, !dbg !617
  br label %233, !dbg !618, !llvm.loop !619

265:                                              ; preds = %260
  %266 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 2), align 8, !dbg !622
  %267 = load ptr, ptr %16, align 8, !dbg !623
  %268 = call i32 @rename(ptr noundef %266, ptr noundef %267) #8, !dbg !624
  %269 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 2), align 8, !dbg !625
  %270 = call noalias ptr @fopen(ptr noundef %269, ptr noundef @.str.17), !dbg !627
  store ptr %270, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !628
  %271 = icmp ne ptr %270, null, !dbg !628
  br i1 %271, label %279, label %272, !dbg !629

272:                                              ; preds = %265
  %273 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !630
  %274 = or i32 %273, 1, !dbg !630
  store i32 %274, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !630
  %275 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !632
  %276 = xor i32 %275, 2, !dbg !632
  store i32 %276, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !632
  %277 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 2), align 8, !dbg !633
  %278 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef @.str.1, i32 noundef 234, ptr noundef @__FUNCTION__.ylog_write, ptr noundef @.str.18, ptr noundef %277), !dbg !633
  br label %279, !dbg !634

279:                                              ; preds = %272, %265
  br label %280, !dbg !635

280:                                              ; preds = %279, %218, %213
  br label %281, !dbg !636

281:                                              ; preds = %280, %208
  br label %282, !dbg !637

282:                                              ; preds = %281, %190
  call void @ys_del(ptr noundef %16), !dbg !638
  %283 = load i32, ptr %19, align 4, !dbg !639
  store i32 %283, ptr %6, align 4, !dbg !640
  br label %284, !dbg !640

284:                                              ; preds = %282, %144, %25
  %285 = load i32, ptr %6, align 4, !dbg !641
  ret i32 %285, !dbg !641
}

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define void @ylog_set_prio(i32 noundef %0) #0 !dbg !642 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !645, metadata !DIExpression()), !dbg !646
  %3 = load i32, ptr %2, align 4, !dbg !647
  store i32 %3, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 6), align 8, !dbg !648
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define void @ylog_set_logsize(i32 noundef %0) #0 !dbg !650 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !653, metadata !DIExpression()), !dbg !654
  %3 = load i32, ptr %2, align 4, !dbg !655
  %4 = icmp ne i32 %3, 0, !dbg !655
  br i1 %4, label %5, label %9, !dbg !656

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !dbg !657
  %7 = icmp ult i32 %6, 102400, !dbg !658
  br i1 %7, label %8, label %9, !dbg !659

8:                                                ; preds = %5
  br label %11, !dbg !659

9:                                                ; preds = %5, %1
  %10 = load i32, ptr %2, align 4, !dbg !660
  br label %11, !dbg !659

11:                                               ; preds = %9, %8
  %12 = phi i32 [ 102400, %8 ], [ %10, %9 ], !dbg !659
  store i32 %12, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 7), align 4, !dbg !661
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define void @ylog_set_handler(ptr noundef %0) #0 !dbg !663 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !666, metadata !DIExpression()), !dbg !667
  %3 = load ptr, ptr %2, align 8, !dbg !668
  store ptr %3, ptr @_ylog_gl, align 8, !dbg !669
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define void @ylog_set_identname(ptr noundef %0) #0 !dbg !671 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !672, metadata !DIExpression()), !dbg !673
  %3 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 5), align 8, !dbg !674
  %4 = icmp ne ptr %3, null, !dbg !674
  br i1 %4, label %5, label %7, !dbg !674

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 5), align 8, !dbg !674
  call void @free(ptr noundef %6) #8, !dbg !674
  br label %8, !dbg !674

7:                                                ; preds = %1
  br label %8, !dbg !674

8:                                                ; preds = %7, %5
  %9 = phi ptr [ null, %5 ], [ null, %7 ], !dbg !674
  store ptr null, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 5), align 8, !dbg !674
  %10 = load ptr, ptr %2, align 8, !dbg !675
  %11 = icmp ne ptr %10, null, !dbg !675
  br i1 %11, label %12, label %15, !dbg !677

12:                                               ; preds = %8
  %13 = load ptr, ptr %2, align 8, !dbg !678
  %14 = call noalias ptr @strdup(ptr noundef %13) #8, !dbg !679
  store ptr %14, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 5), align 8, !dbg !680
  br label %15, !dbg !681

15:                                               ; preds = %12, %8
  ret void, !dbg !682
}

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define void @ylog_set_facility(i32 noundef %0) #0 !dbg !683 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !686, metadata !DIExpression()), !dbg !687
  %3 = load i32, ptr %2, align 4, !dbg !688
  store i32 %3, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 9), align 8, !dbg !689
  ret void, !dbg !690
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) #3

declare ptr @ys_new(ptr noundef) #2

declare i32 @ys_printf(ptr noundef, ptr noundef, ...) #2

declare i32 @ys_vprintf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

declare void @ys_trunc(ptr noundef) #2

declare void @openlog(ptr noundef, i32 noundef, i32 noundef) #2

declare void @syslog(i32 noundef, ptr noundef, ...) #2

declare void @closelog() #2

declare void @ys_del(ptr noundef) #2

declare i32 @fputs(ptr noundef, ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @rename(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ylog_check_module(ptr noundef %0) #0 !dbg !691 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !694, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.declare(metadata ptr %4, metadata !696, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.declare(metadata ptr %5, metadata !698, metadata !DIExpression()), !dbg !699
  %6 = load ptr, ptr %3, align 8, !dbg !700
  %7 = icmp ne ptr %6, null, !dbg !700
  br i1 %7, label %8, label %11, !dbg !702

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 8), align 8, !dbg !703
  %10 = icmp ne ptr %9, null, !dbg !704
  br i1 %10, label %12, label %11, !dbg !705

11:                                               ; preds = %8, %1
  store i32 1, ptr %2, align 4, !dbg !706
  br label %57, !dbg !706

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 8), align 8, !dbg !707
  %14 = load ptr, ptr %3, align 8, !dbg !709
  %15 = call ptr @strstr(ptr noundef %13, ptr noundef %14) #9, !dbg !710
  store ptr %15, ptr %4, align 8, !dbg !711
  %16 = icmp ne ptr %15, null, !dbg !711
  br i1 %16, label %18, label %17, !dbg !712

17:                                               ; preds = %12
  store i32 0, ptr %2, align 4, !dbg !713
  br label %57, !dbg !713

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8, !dbg !714
  %20 = load ptr, ptr %3, align 8, !dbg !715
  %21 = call i64 @strlen(ptr noundef %20) #9, !dbg !716
  %22 = getelementptr inbounds i8, ptr %19, i64 %21, !dbg !717
  %23 = load i8, ptr %22, align 1, !dbg !718
  store i8 %23, ptr %5, align 1, !dbg !719
  %24 = load i8, ptr %5, align 1, !dbg !720
  %25 = sext i8 %24 to i32, !dbg !720
  %26 = icmp eq i32 %25, 32, !dbg !720
  br i1 %26, label %56, label %27, !dbg !720

27:                                               ; preds = %18
  %28 = load i8, ptr %5, align 1, !dbg !720
  %29 = sext i8 %28 to i32, !dbg !720
  %30 = icmp eq i32 %29, 9, !dbg !720
  br i1 %30, label %56, label %31, !dbg !720

31:                                               ; preds = %27
  %32 = load i8, ptr %5, align 1, !dbg !720
  %33 = sext i8 %32 to i32, !dbg !720
  %34 = icmp eq i32 %33, 10, !dbg !720
  br i1 %34, label %56, label %35, !dbg !720

35:                                               ; preds = %31
  %36 = load i8, ptr %5, align 1, !dbg !720
  %37 = sext i8 %36 to i32, !dbg !720
  %38 = icmp eq i32 %37, 13, !dbg !720
  br i1 %38, label %56, label %39, !dbg !722

39:                                               ; preds = %35
  %40 = load i8, ptr %5, align 1, !dbg !723
  %41 = sext i8 %40 to i32, !dbg !723
  %42 = icmp ne i32 %41, 0, !dbg !724
  br i1 %42, label %43, label %56, !dbg !725

43:                                               ; preds = %39
  %44 = load i8, ptr %5, align 1, !dbg !726
  %45 = sext i8 %44 to i32, !dbg !726
  %46 = icmp ne i32 %45, 44, !dbg !727
  br i1 %46, label %47, label %56, !dbg !728

47:                                               ; preds = %43
  %48 = load i8, ptr %5, align 1, !dbg !729
  %49 = sext i8 %48 to i32, !dbg !729
  %50 = icmp ne i32 %49, 59, !dbg !730
  br i1 %50, label %51, label %56, !dbg !731

51:                                               ; preds = %47
  %52 = load i8, ptr %5, align 1, !dbg !732
  %53 = sext i8 %52 to i32, !dbg !732
  %54 = icmp ne i32 %53, 58, !dbg !733
  br i1 %54, label %55, label %56, !dbg !734

55:                                               ; preds = %51
  store i32 0, ptr %2, align 4, !dbg !735
  br label %57, !dbg !735

56:                                               ; preds = %51, %47, %43, %39, %35, %31, %27, %18
  store i32 1, ptr %2, align 4, !dbg !736
  br label %57, !dbg !736

57:                                               ; preds = %56, %55, %17, %11
  %58 = load i32, ptr %2, align 4, !dbg !737
  ret i32 %58, !dbg !737
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define void @ylog_close(i32 noundef %0) #0 !dbg !738 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !739, metadata !DIExpression()), !dbg !740
  %3 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 2), align 8, !dbg !741
  %4 = icmp ne ptr %3, null, !dbg !741
  br i1 %4, label %5, label %7, !dbg !741

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 2), align 8, !dbg !741
  call void @free(ptr noundef %6) #8, !dbg !741
  br label %8, !dbg !741

7:                                                ; preds = %1
  br label %8, !dbg !741

8:                                                ; preds = %7, %5
  %9 = phi ptr [ null, %5 ], [ null, %7 ], !dbg !741
  store ptr null, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 2), align 8, !dbg !741
  %10 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 8), align 8, !dbg !742
  %11 = icmp ne ptr %10, null, !dbg !742
  br i1 %11, label %12, label %14, !dbg !742

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 8), align 8, !dbg !742
  call void @free(ptr noundef %13) #8, !dbg !742
  br label %15, !dbg !742

14:                                               ; preds = %8
  br label %15, !dbg !742

15:                                               ; preds = %14, %12
  %16 = phi ptr [ null, %12 ], [ null, %14 ], !dbg !742
  store ptr null, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 8), align 8, !dbg !742
  %17 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 4), align 8, !dbg !743
  %18 = icmp ne ptr %17, null, !dbg !743
  br i1 %18, label %19, label %21, !dbg !743

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 4), align 8, !dbg !743
  call void @free(ptr noundef %20) #8, !dbg !743
  br label %22, !dbg !743

21:                                               ; preds = %15
  br label %22, !dbg !743

22:                                               ; preds = %21, %19
  %23 = phi ptr [ null, %19 ], [ null, %21 ], !dbg !743
  store ptr null, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 4), align 8, !dbg !743
  %24 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 5), align 8, !dbg !744
  %25 = icmp ne ptr %24, null, !dbg !744
  br i1 %25, label %26, label %28, !dbg !744

26:                                               ; preds = %22
  %27 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 5), align 8, !dbg !744
  call void @free(ptr noundef %27) #8, !dbg !744
  br label %29, !dbg !744

28:                                               ; preds = %22
  br label %29, !dbg !744

29:                                               ; preds = %28, %26
  %30 = phi ptr [ null, %26 ], [ null, %28 ], !dbg !744
  store ptr null, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 5), align 8, !dbg !744
  %31 = load i32, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !745
  %32 = and i32 %31, 2, !dbg !747
  %33 = icmp ne i32 %32, 0, !dbg !747
  br i1 %33, label %34, label %40, !dbg !748

34:                                               ; preds = %29
  %35 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !749
  %36 = icmp ne ptr %35, null, !dbg !750
  br i1 %36, label %37, label %40, !dbg !751

37:                                               ; preds = %34
  %38 = load ptr, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !752
  %39 = call i32 @fclose(ptr noundef %38), !dbg !753
  br label %40, !dbg !753

40:                                               ; preds = %37, %34, %29
  store i32 24, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 9), align 8, !dbg !754
  store ptr null, ptr @_ylog_gl, align 8, !dbg !755
  store i32 1, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 1), align 8, !dbg !756
  %41 = load ptr, ptr @stderr, align 8, !dbg !757
  store ptr %41, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 3), align 8, !dbg !758
  %42 = load i32, ptr %2, align 4, !dbg !759
  store i32 %42, ptr getelementptr inbounds (%struct.ylog_main_s, ptr @_ylog_gl, i32 0, i32 6), align 8, !dbg !760
  ret void, !dbg !761
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_ylog_gl", scope: !2, file: !32, line: 15, type: !126, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !29, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "ylog.c", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "a748015959dfccc736454f54326c69e1")
!4 = !{!5, !15, !21}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !6, line: 267, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./ylog.h", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!10 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!11 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!12 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!13 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!14 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_type_e", file: !6, line: 245, baseType: !7, size: 32, elements: !16)
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "YLOG_STDERR", value: 1)
!18 = !DIEnumerator(name: "YLOG_FILE", value: 2)
!19 = !DIEnumerator(name: "YLOG_SYSLOG", value: 4)
!20 = !DIEnumerator(name: "YLOG_HANDLER", value: 8)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !22, line: 45, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./ydefs.h", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "YFALSE", value: 0)
!25 = !DIEnumerator(name: "YTRUE", value: 1)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !{!0, !30, !37, !42, !48, !53, !58, !63, !68, !70, !72, !77, !79, !84, !89, !94, !99, !104, !109, !114, !119, !121}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !32, line: 51, type: !33, isLocal: true, isDefinition: true)
!32 = !DIFile(filename: "./ylog.c", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "a748015959dfccc736454f54326c69e1")
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 16, elements: !35)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !{!36}
!36 = !DISubrange(count: 2)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !32, line: 59, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 72, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 9)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !32, line: 59, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 80, elements: !46)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!46 = !{!47}
!47 = !DISubrange(count: 10)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !32, line: 59, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 184, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 23)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !32, line: 62, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 104, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 13)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !32, line: 127, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 48, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 6)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !32, line: 127, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 40, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 5)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !32, line: 127, type: !65, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !32, line: 127, type: !65, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !32, line: 127, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 4)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !32, line: 127, type: !65, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !32, line: 139, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !32, line: 153, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 152, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 19)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !32, line: 170, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 24, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 3)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !32, line: 180, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 288, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 36)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !32, line: 200, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 88, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 11)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !32, line: 200, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 272, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 34)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !32, line: 215, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 168, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 21)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !32, line: 220, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 256, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 32)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !32, line: 229, type: !33, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !32, line: 233, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 200, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 25)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_main_t", file: !6, line: 312, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ylog_main_s", file: !6, line: 297, size: 576, elements: !128)
!128 = !{!129, !134, !135, !137, !194, !195, !196, !198, !199, !200}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !127, file: !6, line: 299, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !127, file: !6, line: 300, baseType: !28, size: 32, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !127, file: !6, line: 301, baseType: !136, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !127, file: !6, line: 302, baseType: !138, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !140, line: 7, baseType: !141)
!140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !142, line: 49, size: 1728, elements: !143)
!142 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !159, !161, !162, !163, !167, !169, !171, !172, !175, !177, !180, !183, !184, !185, !189, !190}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !141, file: !142, line: 51, baseType: !28, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !141, file: !142, line: 54, baseType: !136, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !141, file: !142, line: 55, baseType: !136, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !141, file: !142, line: 56, baseType: !136, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !141, file: !142, line: 57, baseType: !136, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !141, file: !142, line: 58, baseType: !136, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !141, file: !142, line: 59, baseType: !136, size: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !141, file: !142, line: 60, baseType: !136, size: 64, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !141, file: !142, line: 61, baseType: !136, size: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !141, file: !142, line: 64, baseType: !136, size: 64, offset: 576)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !141, file: !142, line: 65, baseType: !136, size: 64, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !141, file: !142, line: 66, baseType: !136, size: 64, offset: 704)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !141, file: !142, line: 68, baseType: !157, size: 64, offset: 768)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !142, line: 36, flags: DIFlagFwdDecl)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !141, file: !142, line: 70, baseType: !160, size: 64, offset: 832)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !141, file: !142, line: 72, baseType: !28, size: 32, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !141, file: !142, line: 73, baseType: !28, size: 32, offset: 928)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !141, file: !142, line: 74, baseType: !164, size: 64, offset: 960)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !165, line: 152, baseType: !166)
!165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!166 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !141, file: !142, line: 77, baseType: !168, size: 16, offset: 1024)
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !141, file: !142, line: 78, baseType: !170, size: 8, offset: 1040)
!170 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !141, file: !142, line: 79, baseType: !81, size: 8, offset: 1048)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !141, file: !142, line: 81, baseType: !173, size: 64, offset: 1088)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !142, line: 43, baseType: null)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !141, file: !142, line: 89, baseType: !176, size: 64, offset: 1152)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !165, line: 153, baseType: !166)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !141, file: !142, line: 91, baseType: !178, size: 64, offset: 1216)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !142, line: 37, flags: DIFlagFwdDecl)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !141, file: !142, line: 92, baseType: !181, size: 64, offset: 1280)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !142, line: 38, flags: DIFlagFwdDecl)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !141, file: !142, line: 93, baseType: !160, size: 64, offset: 1344)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !141, file: !142, line: 94, baseType: !27, size: 64, offset: 1408)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !141, file: !142, line: 95, baseType: !186, size: 64, offset: 1472)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !187, line: 46, baseType: !188)
!187 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!188 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !141, file: !142, line: 96, baseType: !28, size: 32, offset: 1536)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !141, file: !142, line: 98, baseType: !191, size: 160, offset: 1568)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 20)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "progname", scope: !127, file: !6, line: 303, baseType: !136, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "identname", scope: !127, file: !6, line: 304, baseType: !136, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !127, file: !6, line: 305, baseType: !197, size: 32, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_priority_t", file: !6, line: 278, baseType: !5)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "max_log_size", scope: !127, file: !6, line: 306, baseType: !7, size: 32, offset: 416)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !127, file: !6, line: 307, baseType: !136, size: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "facility", scope: !127, file: !6, line: 308, baseType: !28, size: 32, offset: 512)
!201 = !{i32 7, !"Dwarf Version", i32 5}
!202 = !{i32 2, !"Debug Info Version", i32 3}
!203 = !{i32 1, !"wchar_size", i32 4}
!204 = !{i32 8, !"PIC Level", i32 2}
!205 = !{i32 7, !"uwtable", i32 2}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 16.0.0"}
!208 = distinct !DISubprogram(name: "ylog_init", scope: !32, file: !32, line: 23, type: !209, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !28, !136, !136, !7}
!211 = !{}
!212 = !DILocalVariable(name: "setup", arg: 1, scope: !208, file: !32, line: 23, type: !28)
!213 = !DILocation(line: 23, column: 20, scope: !208)
!214 = !DILocalVariable(name: "filename", arg: 2, scope: !208, file: !32, line: 23, type: !136)
!215 = !DILocation(line: 23, column: 33, scope: !208)
!216 = !DILocalVariable(name: "progname", arg: 3, scope: !208, file: !32, line: 23, type: !136)
!217 = !DILocation(line: 23, column: 49, scope: !208)
!218 = !DILocalVariable(name: "max_log_size", arg: 4, scope: !208, file: !32, line: 24, type: !7)
!219 = !DILocation(line: 24, column: 22, scope: !208)
!220 = !DILocalVariable(name: "pt", scope: !208, file: !32, line: 26, type: !136)
!221 = !DILocation(line: 26, column: 9, scope: !208)
!222 = !DILocalVariable(name: "i", scope: !208, file: !32, line: 27, type: !28)
!223 = !DILocation(line: 27, column: 7, scope: !208)
!224 = !DILocation(line: 29, column: 16, scope: !225)
!225 = distinct !DILexicalBlock(scope: !208, file: !32, line: 29, column: 7)
!226 = !DILocation(line: 29, column: 22, scope: !225)
!227 = !DILocation(line: 29, column: 34, scope: !225)
!228 = !DILocation(line: 29, column: 46, scope: !225)
!229 = !DILocation(line: 29, column: 37, scope: !225)
!230 = !DILocation(line: 29, column: 7, scope: !208)
!231 = !DILocation(line: 30, column: 21, scope: !225)
!232 = !DILocation(line: 30, column: 5, scope: !225)
!233 = !DILocation(line: 31, column: 3, scope: !208)
!234 = !DILocation(line: 32, column: 3, scope: !208)
!235 = !DILocation(line: 33, column: 3, scope: !208)
!236 = !DILocation(line: 34, column: 3, scope: !208)
!237 = !DILocation(line: 35, column: 17, scope: !208)
!238 = !DILocation(line: 36, column: 20, scope: !208)
!239 = !DILocation(line: 36, column: 18, scope: !208)
!240 = !DILocation(line: 37, column: 17, scope: !208)
!241 = !DILocation(line: 38, column: 21, scope: !208)
!242 = !DILocation(line: 39, column: 28, scope: !208)
!243 = !DILocation(line: 39, column: 41, scope: !208)
!244 = !DILocation(line: 39, column: 44, scope: !208)
!245 = !DILocation(line: 39, column: 57, scope: !208)
!246 = !DILocation(line: 39, column: 27, scope: !208)
!247 = !DILocation(line: 40, column: 13, scope: !208)
!248 = !DILocation(line: 39, column: 25, scope: !208)
!249 = !DILocation(line: 41, column: 7, scope: !250)
!250 = distinct !DILexicalBlock(scope: !208, file: !32, line: 41, column: 7)
!251 = !DILocation(line: 41, column: 16, scope: !250)
!252 = !DILocation(line: 41, column: 26, scope: !250)
!253 = !DILocation(line: 41, column: 19, scope: !250)
!254 = !DILocation(line: 41, column: 7, scope: !208)
!255 = !DILocation(line: 43, column: 25, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !32, line: 43, column: 11)
!257 = distinct !DILexicalBlock(scope: !250, file: !32, line: 42, column: 5)
!258 = !DILocation(line: 43, column: 17, scope: !256)
!259 = !DILocation(line: 43, column: 15, scope: !256)
!260 = !DILocation(line: 43, column: 43, scope: !256)
!261 = !DILocation(line: 43, column: 53, scope: !256)
!262 = !DILocation(line: 43, column: 56, scope: !256)
!263 = !DILocation(line: 43, column: 46, scope: !256)
!264 = !DILocation(line: 43, column: 11, scope: !257)
!265 = !DILocation(line: 44, column: 13, scope: !256)
!266 = !DILocation(line: 44, column: 16, scope: !256)
!267 = !DILocation(line: 44, column: 11, scope: !256)
!268 = !DILocation(line: 44, column: 2, scope: !256)
!269 = !DILocation(line: 45, column: 32, scope: !270)
!270 = distinct !DILexicalBlock(scope: !257, file: !32, line: 45, column: 11)
!271 = !DILocation(line: 45, column: 30, scope: !270)
!272 = !DILocation(line: 45, column: 11, scope: !257)
!273 = !DILocation(line: 46, column: 18, scope: !270)
!274 = !DILocation(line: 46, column: 28, scope: !270)
!275 = !DILocation(line: 46, column: 2, scope: !270)
!276 = !DILocation(line: 47, column: 5, scope: !257)
!277 = !DILocation(line: 48, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !208, file: !32, line: 48, column: 7)
!279 = !DILocation(line: 48, column: 13, scope: !278)
!280 = !DILocation(line: 48, column: 7, scope: !208)
!281 = !DILocation(line: 50, column: 11, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !32, line: 50, column: 11)
!283 = distinct !DILexicalBlock(scope: !278, file: !32, line: 49, column: 5)
!284 = !DILocation(line: 50, column: 20, scope: !282)
!285 = !DILocation(line: 50, column: 44, scope: !282)
!286 = !DILocation(line: 50, column: 42, scope: !282)
!287 = !DILocation(line: 50, column: 75, scope: !282)
!288 = !DILocation(line: 51, column: 27, scope: !282)
!289 = !DILocation(line: 51, column: 21, scope: !282)
!290 = !DILocation(line: 51, column: 19, scope: !282)
!291 = !DILocation(line: 50, column: 11, scope: !283)
!292 = !DILocation(line: 52, column: 18, scope: !282)
!293 = !DILocation(line: 52, column: 28, scope: !282)
!294 = !DILocation(line: 52, column: 2, scope: !282)
!295 = !DILocation(line: 55, column: 4, scope: !296)
!296 = distinct !DILexicalBlock(scope: !282, file: !32, line: 54, column: 2)
!297 = !DILocation(line: 56, column: 19, scope: !296)
!298 = !DILocation(line: 57, column: 19, scope: !296)
!299 = !DILocation(line: 58, column: 18, scope: !296)
!300 = !DILocation(line: 59, column: 4, scope: !296)
!301 = !DILocation(line: 61, column: 5, scope: !283)
!302 = !DILocation(line: 62, column: 13, scope: !303)
!303 = distinct !DILexicalBlock(scope: !208, file: !32, line: 62, column: 7)
!304 = !DILocation(line: 62, column: 11, scope: !303)
!305 = !DILocation(line: 62, column: 37, scope: !303)
!306 = !DILocation(line: 62, column: 52, scope: !303)
!307 = !DILocation(line: 62, column: 45, scope: !303)
!308 = !DILocation(line: 62, column: 43, scope: !303)
!309 = !DILocation(line: 62, column: 57, scope: !303)
!310 = !DILocation(line: 63, column: 27, scope: !303)
!311 = !DILocation(line: 63, column: 25, scope: !303)
!312 = !DILocation(line: 62, column: 7, scope: !208)
!313 = !DILocation(line: 64, column: 21, scope: !303)
!314 = !DILocation(line: 64, column: 30, scope: !303)
!315 = !DILocation(line: 64, column: 5, scope: !303)
!316 = !DILocation(line: 66, column: 22, scope: !303)
!317 = !DILocation(line: 67, column: 1, scope: !208)
!318 = distinct !DISubprogram(name: "ylog_write", scope: !32, file: !32, line: 122, type: !319, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !197, !133, !28, !133, !133, null}
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !22, line: 52, baseType: !21)
!322 = !DILocalVariable(name: "prio", arg: 1, scope: !318, file: !32, line: 122, type: !197)
!323 = !DILocation(line: 122, column: 36, scope: !318)
!324 = !DILocalVariable(name: "file", arg: 2, scope: !318, file: !32, line: 122, type: !133)
!325 = !DILocation(line: 122, column: 54, scope: !318)
!326 = !DILocalVariable(name: "line", arg: 3, scope: !318, file: !32, line: 122, type: !28)
!327 = !DILocation(line: 122, column: 64, scope: !318)
!328 = !DILocalVariable(name: "funcname", arg: 4, scope: !318, file: !32, line: 123, type: !133)
!329 = !DILocation(line: 123, column: 18, scope: !318)
!330 = !DILocalVariable(name: "str", arg: 5, scope: !318, file: !32, line: 123, type: !133)
!331 = !DILocation(line: 123, column: 40, scope: !318)
!332 = !DILocalVariable(name: "current_time", scope: !318, file: !32, line: 125, type: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !334, line: 10, baseType: !335)
!334 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !165, line: 160, baseType: !166)
!336 = !DILocation(line: 125, column: 10, scope: !318)
!337 = !DILocalVariable(name: "tm", scope: !318, file: !32, line: 126, type: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !340, line: 7, size: 448, elements: !341)
!340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "", checksumkind: CSK_MD5, checksum: "9e5545b565ef031c4cd0faf90b69386f")
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !339, file: !340, line: 9, baseType: !28, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !339, file: !340, line: 10, baseType: !28, size: 32, offset: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !339, file: !340, line: 11, baseType: !28, size: 32, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !339, file: !340, line: 12, baseType: !28, size: 32, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !339, file: !340, line: 13, baseType: !28, size: 32, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !339, file: !340, line: 14, baseType: !28, size: 32, offset: 160)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !339, file: !340, line: 15, baseType: !28, size: 32, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !339, file: !340, line: 16, baseType: !28, size: 32, offset: 224)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !339, file: !340, line: 17, baseType: !28, size: 32, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !339, file: !340, line: 20, baseType: !166, size: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !339, file: !340, line: 21, baseType: !133, size: 64, offset: 384)
!353 = !DILocation(line: 126, column: 14, scope: !318)
!354 = !DILocalVariable(name: "msg", scope: !318, file: !32, line: 127, type: !355)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 384, elements: !61)
!356 = !DILocation(line: 127, column: 9, scope: !318)
!357 = !DILocalVariable(name: "plist", scope: !318, file: !32, line: 128, type: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !359, line: 52, baseType: !360)
!359 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !361, line: 14, baseType: !362)
!361 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stdarg.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !363, baseType: !364)
!363 = !DIFile(filename: "ylog.c", directory: "/home/raj/FineDB/lib/ylib")
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 192, elements: !82)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !366)
!366 = !{!367, !368, !369, !370}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !365, file: !363, line: 128, baseType: !7, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !365, file: !363, line: 128, baseType: !7, size: 32, offset: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !365, file: !363, line: 128, baseType: !27, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !365, file: !363, line: 128, baseType: !27, size: 64, offset: 128)
!371 = !DILocation(line: 128, column: 11, scope: !318)
!372 = !DILocalVariable(name: "tmpstr", scope: !318, file: !32, line: 129, type: !136)
!373 = !DILocation(line: 129, column: 9, scope: !318)
!374 = !DILocalVariable(name: "tmp2", scope: !318, file: !32, line: 129, type: !136)
!375 = !DILocation(line: 129, column: 18, scope: !318)
!376 = !DILocalVariable(name: "tmp_file", scope: !318, file: !32, line: 130, type: !138)
!377 = !DILocation(line: 130, column: 9, scope: !318)
!378 = !DILocalVariable(name: "res", scope: !318, file: !32, line: 131, type: !321)
!379 = !DILocation(line: 131, column: 11, scope: !318)
!380 = !DILocalVariable(name: "i", scope: !318, file: !32, line: 132, type: !28)
!381 = !DILocation(line: 132, column: 7, scope: !318)
!382 = !DILocation(line: 134, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !318, file: !32, line: 134, column: 7)
!384 = !DILocation(line: 134, column: 23, scope: !383)
!385 = !DILocation(line: 134, column: 12, scope: !383)
!386 = !DILocation(line: 134, column: 7, scope: !318)
!387 = !DILocation(line: 135, column: 5, scope: !383)
!388 = !DILocation(line: 136, column: 3, scope: !318)
!389 = !DILocation(line: 137, column: 18, scope: !318)
!390 = !DILocation(line: 137, column: 16, scope: !318)
!391 = !DILocation(line: 138, column: 8, scope: !318)
!392 = !DILocation(line: 138, column: 6, scope: !318)
!393 = !DILocation(line: 139, column: 12, scope: !318)
!394 = !DILocation(line: 139, column: 10, scope: !318)
!395 = !DILocation(line: 140, column: 10, scope: !318)
!396 = !DILocation(line: 140, column: 8, scope: !318)
!397 = !DILocation(line: 142, column: 16, scope: !398)
!398 = distinct !DILexicalBlock(scope: !318, file: !32, line: 142, column: 7)
!399 = !DILocation(line: 142, column: 22, scope: !398)
!400 = !DILocation(line: 142, column: 34, scope: !398)
!401 = !DILocation(line: 142, column: 47, scope: !398)
!402 = !DILocation(line: 142, column: 38, scope: !398)
!403 = !DILocation(line: 142, column: 7, scope: !318)
!404 = !DILocation(line: 144, column: 22, scope: !405)
!405 = distinct !DILexicalBlock(scope: !398, file: !32, line: 143, column: 5)
!406 = !DILocation(line: 145, column: 22, scope: !405)
!407 = !DILocation(line: 146, column: 5, scope: !405)
!408 = !DILocation(line: 147, column: 16, scope: !409)
!409 = distinct !DILexicalBlock(scope: !318, file: !32, line: 147, column: 7)
!410 = !DILocation(line: 147, column: 22, scope: !409)
!411 = !DILocation(line: 147, column: 37, scope: !409)
!412 = !DILocation(line: 147, column: 50, scope: !409)
!413 = !DILocation(line: 147, column: 41, scope: !409)
!414 = !DILocation(line: 147, column: 7, scope: !318)
!415 = !DILocation(line: 149, column: 22, scope: !416)
!416 = distinct !DILexicalBlock(scope: !409, file: !32, line: 148, column: 5)
!417 = !DILocation(line: 150, column: 22, scope: !416)
!418 = !DILocation(line: 151, column: 5, scope: !416)
!419 = !DILocation(line: 153, column: 44, scope: !318)
!420 = !DILocation(line: 153, column: 51, scope: !318)
!421 = !DILocation(line: 153, column: 62, scope: !318)
!422 = !DILocation(line: 154, column: 15, scope: !318)
!423 = !DILocation(line: 154, column: 6, scope: !318)
!424 = !DILocation(line: 154, column: 22, scope: !318)
!425 = !DILocation(line: 154, column: 33, scope: !318)
!426 = !DILocation(line: 154, column: 48, scope: !318)
!427 = !DILocation(line: 154, column: 54, scope: !318)
!428 = !DILocation(line: 153, column: 3, scope: !318)
!429 = !DILocation(line: 155, column: 21, scope: !318)
!430 = !DILocation(line: 155, column: 29, scope: !318)
!431 = !DILocation(line: 155, column: 3, scope: !318)
!432 = !DILocation(line: 156, column: 3, scope: !318)
!433 = !DILocation(line: 157, column: 12, scope: !318)
!434 = !DILocation(line: 157, column: 3, scope: !318)
!435 = !DILocation(line: 159, column: 16, scope: !436)
!436 = distinct !DILexicalBlock(scope: !318, file: !32, line: 159, column: 7)
!437 = !DILocation(line: 159, column: 22, scope: !436)
!438 = !DILocation(line: 159, column: 7, scope: !318)
!439 = !DILocation(line: 161, column: 24, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !32, line: 160, column: 5)
!441 = !DILocation(line: 161, column: 15, scope: !440)
!442 = !DILocation(line: 161, column: 45, scope: !440)
!443 = !DILocation(line: 162, column: 17, scope: !440)
!444 = !DILocation(line: 162, column: 8, scope: !440)
!445 = !DILocation(line: 162, column: 37, scope: !440)
!446 = !DILocation(line: 163, column: 17, scope: !440)
!447 = !DILocation(line: 161, column: 7, scope: !440)
!448 = !DILocation(line: 164, column: 14, scope: !440)
!449 = !DILocation(line: 164, column: 19, scope: !440)
!450 = !DILocation(line: 165, column: 7, scope: !440)
!451 = !DILocation(line: 165, column: 12, scope: !440)
!452 = !DILocation(line: 166, column: 7, scope: !440)
!453 = !DILocation(line: 166, column: 12, scope: !440)
!454 = !DILocation(line: 167, column: 7, scope: !440)
!455 = !DILocation(line: 167, column: 12, scope: !440)
!456 = !DILocation(line: 168, column: 7, scope: !440)
!457 = !DILocation(line: 168, column: 12, scope: !440)
!458 = !DILocation(line: 169, column: 7, scope: !440)
!459 = !DILocation(line: 169, column: 12, scope: !440)
!460 = !DILocation(line: 170, column: 13, scope: !440)
!461 = !DILocation(line: 164, column: 7, scope: !440)
!462 = !DILocation(line: 171, column: 7, scope: !440)
!463 = !DILocation(line: 172, column: 20, scope: !464)
!464 = distinct !DILexicalBlock(scope: !440, file: !32, line: 172, column: 11)
!465 = !DILocation(line: 172, column: 26, scope: !464)
!466 = !DILocation(line: 172, column: 11, scope: !440)
!467 = !DILocation(line: 174, column: 4, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !32, line: 173, column: 2)
!469 = !DILocation(line: 175, column: 4, scope: !468)
!470 = !DILocation(line: 176, column: 4, scope: !468)
!471 = !DILocation(line: 178, column: 5, scope: !440)
!472 = !DILocation(line: 181, column: 6, scope: !318)
!473 = !DILocation(line: 181, column: 10, scope: !318)
!474 = !DILocation(line: 181, column: 18, scope: !318)
!475 = !DILocation(line: 181, column: 26, scope: !318)
!476 = !DILocation(line: 181, column: 30, scope: !318)
!477 = !DILocation(line: 181, column: 37, scope: !318)
!478 = !DILocation(line: 181, column: 42, scope: !318)
!479 = !DILocation(line: 181, column: 46, scope: !318)
!480 = !DILocation(line: 182, column: 6, scope: !318)
!481 = !DILocation(line: 182, column: 10, scope: !318)
!482 = !DILocation(line: 182, column: 19, scope: !318)
!483 = !DILocation(line: 182, column: 23, scope: !318)
!484 = !DILocation(line: 182, column: 31, scope: !318)
!485 = !DILocation(line: 182, column: 35, scope: !318)
!486 = !DILocation(line: 183, column: 15, scope: !318)
!487 = !DILocation(line: 183, column: 6, scope: !318)
!488 = !DILocation(line: 183, column: 35, scope: !318)
!489 = !DILocation(line: 183, column: 50, scope: !318)
!490 = !DILocation(line: 180, column: 3, scope: !318)
!491 = !DILocation(line: 184, column: 3, scope: !318)
!492 = !DILocation(line: 186, column: 16, scope: !493)
!493 = distinct !DILexicalBlock(scope: !318, file: !32, line: 186, column: 7)
!494 = !DILocation(line: 186, column: 22, scope: !493)
!495 = !DILocation(line: 186, column: 7, scope: !318)
!496 = !DILocation(line: 187, column: 14, scope: !493)
!497 = !DILocation(line: 187, column: 22, scope: !493)
!498 = !DILocation(line: 187, column: 5, scope: !493)
!499 = !DILocation(line: 189, column: 16, scope: !500)
!500 = distinct !DILexicalBlock(scope: !318, file: !32, line: 189, column: 7)
!501 = !DILocation(line: 189, column: 22, scope: !500)
!502 = !DILocation(line: 189, column: 7, scope: !318)
!503 = !DILocation(line: 190, column: 11, scope: !500)
!504 = !DILocation(line: 190, column: 19, scope: !500)
!505 = !DILocation(line: 190, column: 5, scope: !500)
!506 = !DILocation(line: 192, column: 16, scope: !507)
!507 = distinct !DILexicalBlock(scope: !318, file: !32, line: 192, column: 7)
!508 = !DILocation(line: 192, column: 22, scope: !507)
!509 = !DILocation(line: 192, column: 7, scope: !318)
!510 = !DILocation(line: 194, column: 17, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !32, line: 194, column: 11)
!512 = distinct !DILexicalBlock(scope: !507, file: !32, line: 193, column: 5)
!513 = !DILocation(line: 194, column: 34, scope: !511)
!514 = !DILocation(line: 194, column: 11, scope: !511)
!515 = !DILocation(line: 194, column: 40, scope: !511)
!516 = !DILocation(line: 194, column: 11, scope: !512)
!517 = !DILocation(line: 196, column: 20, scope: !518)
!518 = distinct !DILexicalBlock(scope: !511, file: !32, line: 195, column: 2)
!519 = !DILocation(line: 196, column: 4, scope: !518)
!520 = !DILocation(line: 197, column: 18, scope: !518)
!521 = !DILocation(line: 198, column: 19, scope: !518)
!522 = !DILocation(line: 199, column: 19, scope: !518)
!523 = !DILocation(line: 200, column: 4, scope: !518)
!524 = !DILocation(line: 202, column: 8, scope: !518)
!525 = !DILocation(line: 203, column: 2, scope: !518)
!526 = !DILocation(line: 204, column: 23, scope: !512)
!527 = !DILocation(line: 204, column: 7, scope: !512)
!528 = !DILocation(line: 205, column: 20, scope: !529)
!529 = distinct !DILexicalBlock(scope: !512, file: !32, line: 205, column: 11)
!530 = !DILocation(line: 205, column: 11, scope: !529)
!531 = !DILocation(line: 205, column: 11, scope: !512)
!532 = !DILocalVariable(name: "st", scope: !533, file: !32, line: 208, type: !534)
!533 = distinct !DILexicalBlock(scope: !529, file: !32, line: 206, column: 2)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !535, line: 26, size: 1152, elements: !536)
!535 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!536 = !{!537, !539, !541, !543, !545, !547, !549, !550, !551, !552, !554, !556, !563, !564, !565}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !534, file: !535, line: 31, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !165, line: 145, baseType: !188)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !534, file: !535, line: 36, baseType: !540, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !165, line: 148, baseType: !188)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !534, file: !535, line: 44, baseType: !542, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !165, line: 151, baseType: !188)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !534, file: !535, line: 45, baseType: !544, size: 32, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !165, line: 150, baseType: !7)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !534, file: !535, line: 47, baseType: !546, size: 32, offset: 224)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !165, line: 146, baseType: !7)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !534, file: !535, line: 48, baseType: !548, size: 32, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !165, line: 147, baseType: !7)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !534, file: !535, line: 50, baseType: !28, size: 32, offset: 288)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !534, file: !535, line: 52, baseType: !538, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !534, file: !535, line: 57, baseType: !164, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !534, file: !535, line: 61, baseType: !553, size: 64, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !165, line: 175, baseType: !166)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !534, file: !535, line: 63, baseType: !555, size: 64, offset: 512)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !165, line: 180, baseType: !166)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !534, file: !535, line: 74, baseType: !557, size: 128, offset: 576)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !558, line: 11, size: 128, elements: !559)
!558 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !557, file: !558, line: 16, baseType: !335, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !557, file: !558, line: 21, baseType: !562, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !165, line: 197, baseType: !166)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !534, file: !535, line: 75, baseType: !557, size: 128, offset: 704)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !534, file: !535, line: 76, baseType: !557, size: 128, offset: 832)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !534, file: !535, line: 89, baseType: !566, size: 192, offset: 960)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 192, elements: !92)
!567 = !DILocation(line: 208, column: 16, scope: !533)
!568 = !DILocation(line: 209, column: 31, scope: !569)
!569 = distinct !DILexicalBlock(scope: !533, file: !32, line: 209, column: 8)
!570 = !DILocation(line: 209, column: 15, scope: !569)
!571 = !DILocation(line: 209, column: 9, scope: !569)
!572 = !DILocation(line: 209, column: 43, scope: !569)
!573 = !DILocation(line: 210, column: 11, scope: !569)
!574 = !DILocation(line: 210, column: 31, scope: !569)
!575 = !DILocation(line: 210, column: 22, scope: !569)
!576 = !DILocation(line: 210, column: 19, scope: !569)
!577 = !DILocation(line: 209, column: 8, scope: !533)
!578 = !DILocation(line: 212, column: 28, scope: !579)
!579 = distinct !DILexicalBlock(scope: !569, file: !32, line: 211, column: 6)
!580 = !DILocation(line: 212, column: 17, scope: !579)
!581 = !DILocation(line: 213, column: 22, scope: !579)
!582 = !DILocation(line: 214, column: 19, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !32, line: 214, column: 12)
!584 = !DILocation(line: 214, column: 12, scope: !583)
!585 = !DILocation(line: 214, column: 12, scope: !579)
!586 = !DILocation(line: 215, column: 3, scope: !583)
!587 = !DILocation(line: 216, column: 17, scope: !579)
!588 = !DILocation(line: 216, column: 15, scope: !579)
!589 = !DILocation(line: 218, column: 15, scope: !590)
!590 = distinct !DILexicalBlock(scope: !579, file: !32, line: 218, column: 8)
!591 = !DILocation(line: 218, column: 13, scope: !590)
!592 = !DILocation(line: 221, column: 17, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !32, line: 219, column: 3)
!594 = distinct !DILexicalBlock(scope: !590, file: !32, line: 218, column: 8)
!595 = !DILocation(line: 221, column: 27, scope: !593)
!596 = !DILocation(line: 221, column: 31, scope: !593)
!597 = !DILocation(line: 221, column: 39, scope: !593)
!598 = !DILocation(line: 222, column: 8, scope: !593)
!599 = !DILocation(line: 222, column: 12, scope: !593)
!600 = !DILocation(line: 222, column: 19, scope: !593)
!601 = !DILocation(line: 222, column: 24, scope: !593)
!602 = !DILocation(line: 222, column: 28, scope: !593)
!603 = !DILocation(line: 222, column: 37, scope: !593)
!604 = !DILocation(line: 222, column: 41, scope: !593)
!605 = !DILocation(line: 223, column: 8, scope: !593)
!606 = !DILocation(line: 223, column: 12, scope: !593)
!607 = !DILocation(line: 223, column: 20, scope: !593)
!608 = !DILocation(line: 223, column: 24, scope: !593)
!609 = !DILocation(line: 223, column: 32, scope: !593)
!610 = !DILocation(line: 220, column: 5, scope: !593)
!611 = !DILocation(line: 224, column: 14, scope: !612)
!612 = distinct !DILexicalBlock(scope: !593, file: !32, line: 224, column: 9)
!613 = !DILocation(line: 224, column: 9, scope: !612)
!614 = !DILocation(line: 224, column: 9, scope: !593)
!615 = !DILocation(line: 225, column: 7, scope: !612)
!616 = !DILocation(line: 226, column: 3, scope: !593)
!617 = !DILocation(line: 218, column: 22, scope: !594)
!618 = !DILocation(line: 218, column: 8, scope: !594)
!619 = distinct !{!619, !620, !621}
!620 = !DILocation(line: 218, column: 8, scope: !590)
!621 = !DILocation(line: 226, column: 3, scope: !590)
!622 = !DILocation(line: 228, column: 24, scope: !579)
!623 = !DILocation(line: 228, column: 34, scope: !579)
!624 = !DILocation(line: 228, column: 8, scope: !579)
!625 = !DILocation(line: 229, column: 45, scope: !626)
!626 = distinct !DILexicalBlock(scope: !579, file: !32, line: 229, column: 12)
!627 = !DILocation(line: 229, column: 30, scope: !626)
!628 = !DILocation(line: 229, column: 28, scope: !626)
!629 = !DILocation(line: 229, column: 12, scope: !579)
!630 = !DILocation(line: 231, column: 20, scope: !631)
!631 = distinct !DILexicalBlock(scope: !626, file: !32, line: 230, column: 3)
!632 = !DILocation(line: 232, column: 20, scope: !631)
!633 = !DILocation(line: 233, column: 5, scope: !631)
!634 = !DILocation(line: 235, column: 3, scope: !631)
!635 = !DILocation(line: 236, column: 6, scope: !579)
!636 = !DILocation(line: 237, column: 2, scope: !533)
!637 = !DILocation(line: 238, column: 5, scope: !512)
!638 = !DILocation(line: 239, column: 3, scope: !318)
!639 = !DILocation(line: 240, column: 11, scope: !318)
!640 = !DILocation(line: 240, column: 3, scope: !318)
!641 = !DILocation(line: 241, column: 1, scope: !318)
!642 = distinct !DISubprogram(name: "ylog_set_prio", scope: !32, file: !32, line: 73, type: !643, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !197}
!645 = !DILocalVariable(name: "prio", arg: 1, scope: !642, file: !32, line: 73, type: !197)
!646 = !DILocation(line: 73, column: 36, scope: !642)
!647 = !DILocation(line: 75, column: 19, scope: !642)
!648 = !DILocation(line: 75, column: 17, scope: !642)
!649 = !DILocation(line: 76, column: 1, scope: !642)
!650 = distinct !DISubprogram(name: "ylog_set_logsize", scope: !32, file: !32, line: 82, type: !651, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !7}
!653 = !DILocalVariable(name: "max_log_size", arg: 1, scope: !650, file: !32, line: 82, type: !7)
!654 = !DILocation(line: 82, column: 36, scope: !650)
!655 = !DILocation(line: 84, column: 28, scope: !650)
!656 = !DILocation(line: 84, column: 41, scope: !650)
!657 = !DILocation(line: 84, column: 44, scope: !650)
!658 = !DILocation(line: 84, column: 57, scope: !650)
!659 = !DILocation(line: 84, column: 27, scope: !650)
!660 = !DILocation(line: 85, column: 13, scope: !650)
!661 = !DILocation(line: 84, column: 25, scope: !650)
!662 = !DILocation(line: 86, column: 1, scope: !650)
!663 = distinct !DISubprogram(name: "ylog_set_handler", scope: !32, file: !32, line: 93, type: !664, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !130}
!666 = !DILocalVariable(name: "f", arg: 1, scope: !663, file: !32, line: 93, type: !130)
!667 = !DILocation(line: 93, column: 30, scope: !663)
!668 = !DILocation(line: 95, column: 22, scope: !663)
!669 = !DILocation(line: 95, column: 20, scope: !663)
!670 = !DILocation(line: 96, column: 1, scope: !663)
!671 = distinct !DISubprogram(name: "ylog_set_identname", scope: !32, file: !32, line: 102, type: !131, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!672 = !DILocalVariable(name: "identname", arg: 1, scope: !671, file: !32, line: 102, type: !133)
!673 = !DILocation(line: 102, column: 37, scope: !671)
!674 = !DILocation(line: 104, column: 3, scope: !671)
!675 = !DILocation(line: 105, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !671, file: !32, line: 105, column: 7)
!677 = !DILocation(line: 105, column: 7, scope: !671)
!678 = !DILocation(line: 106, column: 33, scope: !676)
!679 = !DILocation(line: 106, column: 26, scope: !676)
!680 = !DILocation(line: 106, column: 24, scope: !676)
!681 = !DILocation(line: 106, column: 5, scope: !676)
!682 = !DILocation(line: 107, column: 1, scope: !671)
!683 = distinct !DISubprogram(name: "ylog_set_facility", scope: !32, file: !32, line: 113, type: !684, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !28}
!686 = !DILocalVariable(name: "facility", arg: 1, scope: !683, file: !32, line: 113, type: !28)
!687 = !DILocation(line: 113, column: 28, scope: !683)
!688 = !DILocation(line: 115, column: 23, scope: !683)
!689 = !DILocation(line: 115, column: 21, scope: !683)
!690 = !DILocation(line: 116, column: 1, scope: !683)
!691 = distinct !DISubprogram(name: "ylog_check_module", scope: !32, file: !32, line: 247, type: !692, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!692 = !DISubroutineType(types: !693)
!693 = !{!321, !136}
!694 = !DILocalVariable(name: "module", arg: 1, scope: !691, file: !32, line: 247, type: !136)
!695 = !DILocation(line: 247, column: 33, scope: !691)
!696 = !DILocalVariable(name: "pt", scope: !691, file: !32, line: 249, type: !136)
!697 = !DILocation(line: 249, column: 9, scope: !691)
!698 = !DILocalVariable(name: "c", scope: !691, file: !32, line: 249, type: !34)
!699 = !DILocation(line: 249, column: 13, scope: !691)
!700 = !DILocation(line: 251, column: 8, scope: !701)
!701 = distinct !DILexicalBlock(scope: !691, file: !32, line: 251, column: 7)
!702 = !DILocation(line: 251, column: 15, scope: !701)
!703 = !DILocation(line: 251, column: 28, scope: !701)
!704 = !DILocation(line: 251, column: 19, scope: !701)
!705 = !DILocation(line: 251, column: 7, scope: !691)
!706 = !DILocation(line: 252, column: 5, scope: !701)
!707 = !DILocation(line: 253, column: 30, scope: !708)
!708 = distinct !DILexicalBlock(scope: !691, file: !32, line: 253, column: 7)
!709 = !DILocation(line: 253, column: 39, scope: !708)
!710 = !DILocation(line: 253, column: 14, scope: !708)
!711 = !DILocation(line: 253, column: 12, scope: !708)
!712 = !DILocation(line: 253, column: 7, scope: !691)
!713 = !DILocation(line: 254, column: 5, scope: !708)
!714 = !DILocation(line: 255, column: 9, scope: !691)
!715 = !DILocation(line: 255, column: 21, scope: !691)
!716 = !DILocation(line: 255, column: 14, scope: !691)
!717 = !DILocation(line: 255, column: 12, scope: !691)
!718 = !DILocation(line: 255, column: 7, scope: !691)
!719 = !DILocation(line: 255, column: 5, scope: !691)
!720 = !DILocation(line: 256, column: 8, scope: !721)
!721 = distinct !DILexicalBlock(scope: !691, file: !32, line: 256, column: 7)
!722 = !DILocation(line: 256, column: 20, scope: !721)
!723 = !DILocation(line: 256, column: 23, scope: !721)
!724 = !DILocation(line: 256, column: 25, scope: !721)
!725 = !DILocation(line: 256, column: 33, scope: !721)
!726 = !DILocation(line: 256, column: 36, scope: !721)
!727 = !DILocation(line: 256, column: 38, scope: !721)
!728 = !DILocation(line: 256, column: 45, scope: !721)
!729 = !DILocation(line: 256, column: 48, scope: !721)
!730 = !DILocation(line: 256, column: 50, scope: !721)
!731 = !DILocation(line: 256, column: 57, scope: !721)
!732 = !DILocation(line: 256, column: 60, scope: !721)
!733 = !DILocation(line: 256, column: 62, scope: !721)
!734 = !DILocation(line: 256, column: 7, scope: !691)
!735 = !DILocation(line: 257, column: 5, scope: !721)
!736 = !DILocation(line: 258, column: 3, scope: !691)
!737 = !DILocation(line: 259, column: 1, scope: !691)
!738 = distinct !DISubprogram(name: "ylog_close", scope: !32, file: !32, line: 266, type: !643, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!739 = !DILocalVariable(name: "prio", arg: 1, scope: !738, file: !32, line: 266, type: !197)
!740 = !DILocation(line: 266, column: 33, scope: !738)
!741 = !DILocation(line: 268, column: 3, scope: !738)
!742 = !DILocation(line: 269, column: 3, scope: !738)
!743 = !DILocation(line: 270, column: 3, scope: !738)
!744 = !DILocation(line: 271, column: 3, scope: !738)
!745 = !DILocation(line: 272, column: 16, scope: !746)
!746 = distinct !DILexicalBlock(scope: !738, file: !32, line: 272, column: 7)
!747 = !DILocation(line: 272, column: 22, scope: !746)
!748 = !DILocation(line: 272, column: 34, scope: !746)
!749 = !DILocation(line: 272, column: 46, scope: !746)
!750 = !DILocation(line: 272, column: 37, scope: !746)
!751 = !DILocation(line: 272, column: 7, scope: !738)
!752 = !DILocation(line: 273, column: 21, scope: !746)
!753 = !DILocation(line: 273, column: 5, scope: !746)
!754 = !DILocation(line: 274, column: 21, scope: !738)
!755 = !DILocation(line: 275, column: 20, scope: !738)
!756 = !DILocation(line: 276, column: 18, scope: !738)
!757 = !DILocation(line: 277, column: 19, scope: !738)
!758 = !DILocation(line: 277, column: 17, scope: !738)
!759 = !DILocation(line: 278, column: 19, scope: !738)
!760 = !DILocation(line: 278, column: 17, scope: !738)
!761 = !DILocation(line: 279, column: 1, scope: !738)
