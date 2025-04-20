; ModuleID = './linenoise.c'
source_filename = "./linenoise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.linenoiseCompletions = type { i64, ptr }
%struct.linenoiseState = type { i32, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i32 }
%struct.winsize = type { i16, i16, i16, i16 }

@history = global ptr null, align 8, !dbg !0
@mlmode = internal global i32 0, align 4, !dbg !32
@.str = private unnamed_addr constant [8 x i8] c"\1B[H\1B[2J\00", align 1, !dbg !8
@completionCallback = internal global ptr null, align 8, !dbg !34
@history_len = internal global i32 0, align 4, !dbg !87
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !15
@stdout = external global ptr, align 8
@stdin = external global ptr, align 8
@history_max_len = internal global i32 100, align 4, !dbg !134
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1, !dbg !20
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !25
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !30
@.str.5 = private unnamed_addr constant [6 x i8] c"\1B[%dB\00", align 1, !dbg !54
@.str.6 = private unnamed_addr constant [13 x i8] c"\1B[0G\1B[0K\1B[1A\00", align 1, !dbg !59
@.str.7 = private unnamed_addr constant [9 x i8] c"\1B[0G\1B[0K\00", align 1, !dbg !64
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !69
@.str.9 = private unnamed_addr constant [5 x i8] c"\1B[0G\00", align 1, !dbg !71
@.str.10 = private unnamed_addr constant [6 x i8] c"\1B[%dA\00", align 1, !dbg !76
@.str.11 = private unnamed_addr constant [6 x i8] c"\1B[%dG\00", align 1, !dbg !78
@.str.12 = private unnamed_addr constant [5 x i8] c"\1B[0K\00", align 1, !dbg !80
@.str.13 = private unnamed_addr constant [10 x i8] c"\1B[0G\1B[%dC\00", align 1, !dbg !82
@.str.14 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !89
@unsupported_term = internal global [3 x ptr] [ptr @.str.15, ptr @.str.16, ptr null], align 16, !dbg !98
@.str.15 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !91
@.str.16 = private unnamed_addr constant [7 x i8] c"cons25\00", align 1, !dbg !93
@atexit_registered = internal global i32 0, align 4, !dbg !101
@orig_termios = internal global %struct.termios zeroinitializer, align 4, !dbg !103
@rawmode = internal global i32 0, align 4, !dbg !125
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !127
@stderr = external global ptr, align 8
@.str.18 = private unnamed_addr constant [2 x i8] c"\07\00", align 1, !dbg !132

; Function Attrs: noinline nounwind optnone uwtable
define void @linenoiseSetMultiLine(i32 noundef %0) #0 !dbg !143 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !147, metadata !DIExpression()), !dbg !148
  %3 = load i32, ptr %2, align 4, !dbg !149
  store i32 %3, ptr @mlmode, align 4, !dbg !150
  ret void, !dbg !151
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @linenoiseClearScreen() #0 !dbg !152 {
  %1 = call i64 @write(i32 noundef 0, ptr noundef @.str, i64 noundef 7), !dbg !155
  %2 = icmp sle i64 %1, 0, !dbg !157
  br i1 %2, label %3, label %4, !dbg !158

3:                                                ; preds = %0
  br label %4, !dbg !159

4:                                                ; preds = %3, %0
  ret void, !dbg !161
}

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @linenoiseSetCompletionCallback(ptr noundef %0) #0 !dbg !162 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !165, metadata !DIExpression()), !dbg !166
  %3 = load ptr, ptr %2, align 8, !dbg !167
  store ptr %3, ptr @completionCallback, align 8, !dbg !168
  ret void, !dbg !169
}

; Function Attrs: noinline nounwind optnone uwtable
define void @linenoiseAddCompletion(ptr noundef %0, ptr noundef %1) #0 !dbg !170 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !173, metadata !DIExpression()), !dbg !174
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata ptr %5, metadata !177, metadata !DIExpression()), !dbg !178
  %7 = load ptr, ptr %4, align 8, !dbg !179
  %8 = call i64 @strlen(ptr noundef %7) #10, !dbg !180
  store i64 %8, ptr %5, align 8, !dbg !178
  call void @llvm.dbg.declare(metadata ptr %6, metadata !181, metadata !DIExpression()), !dbg !182
  %9 = load i64, ptr %5, align 8, !dbg !183
  %10 = add i64 %9, 1, !dbg !184
  %11 = call noalias ptr @malloc(i64 noundef %10) #11, !dbg !185
  store ptr %11, ptr %6, align 8, !dbg !182
  %12 = load ptr, ptr %6, align 8, !dbg !186
  %13 = load ptr, ptr %4, align 8, !dbg !187
  %14 = load i64, ptr %5, align 8, !dbg !188
  %15 = add i64 %14, 1, !dbg !189
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %13, i64 %15, i1 false), !dbg !190
  %16 = load ptr, ptr %3, align 8, !dbg !191
  %17 = getelementptr inbounds %struct.linenoiseCompletions, ptr %16, i32 0, i32 1, !dbg !192
  %18 = load ptr, ptr %17, align 8, !dbg !192
  %19 = load ptr, ptr %3, align 8, !dbg !193
  %20 = getelementptr inbounds %struct.linenoiseCompletions, ptr %19, i32 0, i32 0, !dbg !194
  %21 = load i64, ptr %20, align 8, !dbg !194
  %22 = add i64 %21, 1, !dbg !195
  %23 = mul i64 8, %22, !dbg !196
  %24 = call ptr @realloc(ptr noundef %18, i64 noundef %23) #12, !dbg !197
  %25 = load ptr, ptr %3, align 8, !dbg !198
  %26 = getelementptr inbounds %struct.linenoiseCompletions, ptr %25, i32 0, i32 1, !dbg !199
  store ptr %24, ptr %26, align 8, !dbg !200
  %27 = load ptr, ptr %6, align 8, !dbg !201
  %28 = load ptr, ptr %3, align 8, !dbg !202
  %29 = getelementptr inbounds %struct.linenoiseCompletions, ptr %28, i32 0, i32 1, !dbg !203
  %30 = load ptr, ptr %29, align 8, !dbg !203
  %31 = load ptr, ptr %3, align 8, !dbg !204
  %32 = getelementptr inbounds %struct.linenoiseCompletions, ptr %31, i32 0, i32 0, !dbg !205
  %33 = load i64, ptr %32, align 8, !dbg !206
  %34 = add i64 %33, 1, !dbg !206
  store i64 %34, ptr %32, align 8, !dbg !206
  %35 = getelementptr inbounds ptr, ptr %30, i64 %33, !dbg !202
  store ptr %27, ptr %35, align 8, !dbg !207
  ret void, !dbg !208
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define i32 @linenoiseEditInsert(ptr noundef %0, i32 noundef %1) #0 !dbg !209 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !226, metadata !DIExpression()), !dbg !227
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !228, metadata !DIExpression()), !dbg !229
  %6 = load ptr, ptr %4, align 8, !dbg !230
  %7 = getelementptr inbounds %struct.linenoiseState, ptr %6, i32 0, i32 7, !dbg !232
  %8 = load i64, ptr %7, align 8, !dbg !232
  %9 = load ptr, ptr %4, align 8, !dbg !233
  %10 = getelementptr inbounds %struct.linenoiseState, ptr %9, i32 0, i32 2, !dbg !234
  %11 = load i64, ptr %10, align 8, !dbg !234
  %12 = icmp ult i64 %8, %11, !dbg !235
  br i1 %12, label %13, label %120, !dbg !236

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !237
  %15 = getelementptr inbounds %struct.linenoiseState, ptr %14, i32 0, i32 7, !dbg !240
  %16 = load i64, ptr %15, align 8, !dbg !240
  %17 = load ptr, ptr %4, align 8, !dbg !241
  %18 = getelementptr inbounds %struct.linenoiseState, ptr %17, i32 0, i32 5, !dbg !242
  %19 = load i64, ptr %18, align 8, !dbg !242
  %20 = icmp eq i64 %16, %19, !dbg !243
  br i1 %20, label %21, label %71, !dbg !244

21:                                               ; preds = %13
  %22 = load i32, ptr %5, align 4, !dbg !245
  %23 = trunc i32 %22 to i8, !dbg !245
  %24 = load ptr, ptr %4, align 8, !dbg !247
  %25 = getelementptr inbounds %struct.linenoiseState, ptr %24, i32 0, i32 1, !dbg !248
  %26 = load ptr, ptr %25, align 8, !dbg !248
  %27 = load ptr, ptr %4, align 8, !dbg !249
  %28 = getelementptr inbounds %struct.linenoiseState, ptr %27, i32 0, i32 5, !dbg !250
  %29 = load i64, ptr %28, align 8, !dbg !250
  %30 = getelementptr inbounds i8, ptr %26, i64 %29, !dbg !247
  store i8 %23, ptr %30, align 1, !dbg !251
  %31 = load ptr, ptr %4, align 8, !dbg !252
  %32 = getelementptr inbounds %struct.linenoiseState, ptr %31, i32 0, i32 5, !dbg !253
  %33 = load i64, ptr %32, align 8, !dbg !254
  %34 = add i64 %33, 1, !dbg !254
  store i64 %34, ptr %32, align 8, !dbg !254
  %35 = load ptr, ptr %4, align 8, !dbg !255
  %36 = getelementptr inbounds %struct.linenoiseState, ptr %35, i32 0, i32 7, !dbg !256
  %37 = load i64, ptr %36, align 8, !dbg !257
  %38 = add i64 %37, 1, !dbg !257
  store i64 %38, ptr %36, align 8, !dbg !257
  %39 = load ptr, ptr %4, align 8, !dbg !258
  %40 = getelementptr inbounds %struct.linenoiseState, ptr %39, i32 0, i32 1, !dbg !259
  %41 = load ptr, ptr %40, align 8, !dbg !259
  %42 = load ptr, ptr %4, align 8, !dbg !260
  %43 = getelementptr inbounds %struct.linenoiseState, ptr %42, i32 0, i32 7, !dbg !261
  %44 = load i64, ptr %43, align 8, !dbg !261
  %45 = getelementptr inbounds i8, ptr %41, i64 %44, !dbg !258
  store i8 0, ptr %45, align 1, !dbg !262
  %46 = load i32, ptr @mlmode, align 4, !dbg !263
  %47 = icmp ne i32 %46, 0, !dbg !263
  br i1 %47, label %68, label %48, !dbg !265

48:                                               ; preds = %21
  %49 = load ptr, ptr %4, align 8, !dbg !266
  %50 = getelementptr inbounds %struct.linenoiseState, ptr %49, i32 0, i32 4, !dbg !267
  %51 = load i64, ptr %50, align 8, !dbg !267
  %52 = load ptr, ptr %4, align 8, !dbg !268
  %53 = getelementptr inbounds %struct.linenoiseState, ptr %52, i32 0, i32 7, !dbg !269
  %54 = load i64, ptr %53, align 8, !dbg !269
  %55 = add i64 %51, %54, !dbg !270
  %56 = load ptr, ptr %4, align 8, !dbg !271
  %57 = getelementptr inbounds %struct.linenoiseState, ptr %56, i32 0, i32 8, !dbg !272
  %58 = load i64, ptr %57, align 8, !dbg !272
  %59 = icmp ult i64 %55, %58, !dbg !273
  br i1 %59, label %60, label %68, !dbg !274

60:                                               ; preds = %48
  %61 = load ptr, ptr %4, align 8, !dbg !275
  %62 = getelementptr inbounds %struct.linenoiseState, ptr %61, i32 0, i32 0, !dbg !278
  %63 = load i32, ptr %62, align 8, !dbg !278
  %64 = call i64 @write(i32 noundef %63, ptr noundef %5, i64 noundef 1), !dbg !279
  %65 = icmp eq i64 %64, -1, !dbg !280
  br i1 %65, label %66, label %67, !dbg !281

66:                                               ; preds = %60
  store i32 -1, ptr %3, align 4, !dbg !282
  br label %121, !dbg !282

67:                                               ; preds = %60
  br label %70, !dbg !283

68:                                               ; preds = %48, %21
  %69 = load ptr, ptr %4, align 8, !dbg !284
  call void @refreshLine(ptr noundef %69), !dbg !286
  br label %70

70:                                               ; preds = %68, %67
  br label %119, !dbg !287

71:                                               ; preds = %13
  %72 = load ptr, ptr %4, align 8, !dbg !288
  %73 = getelementptr inbounds %struct.linenoiseState, ptr %72, i32 0, i32 1, !dbg !290
  %74 = load ptr, ptr %73, align 8, !dbg !290
  %75 = load ptr, ptr %4, align 8, !dbg !291
  %76 = getelementptr inbounds %struct.linenoiseState, ptr %75, i32 0, i32 5, !dbg !292
  %77 = load i64, ptr %76, align 8, !dbg !292
  %78 = getelementptr inbounds i8, ptr %74, i64 %77, !dbg !293
  %79 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !294
  %80 = load ptr, ptr %4, align 8, !dbg !295
  %81 = getelementptr inbounds %struct.linenoiseState, ptr %80, i32 0, i32 1, !dbg !296
  %82 = load ptr, ptr %81, align 8, !dbg !296
  %83 = load ptr, ptr %4, align 8, !dbg !297
  %84 = getelementptr inbounds %struct.linenoiseState, ptr %83, i32 0, i32 5, !dbg !298
  %85 = load i64, ptr %84, align 8, !dbg !298
  %86 = getelementptr inbounds i8, ptr %82, i64 %85, !dbg !299
  %87 = load ptr, ptr %4, align 8, !dbg !300
  %88 = getelementptr inbounds %struct.linenoiseState, ptr %87, i32 0, i32 7, !dbg !301
  %89 = load i64, ptr %88, align 8, !dbg !301
  %90 = load ptr, ptr %4, align 8, !dbg !302
  %91 = getelementptr inbounds %struct.linenoiseState, ptr %90, i32 0, i32 5, !dbg !303
  %92 = load i64, ptr %91, align 8, !dbg !303
  %93 = sub i64 %89, %92, !dbg !304
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %79, ptr align 1 %86, i64 %93, i1 false), !dbg !305
  %94 = load i32, ptr %5, align 4, !dbg !306
  %95 = trunc i32 %94 to i8, !dbg !306
  %96 = load ptr, ptr %4, align 8, !dbg !307
  %97 = getelementptr inbounds %struct.linenoiseState, ptr %96, i32 0, i32 1, !dbg !308
  %98 = load ptr, ptr %97, align 8, !dbg !308
  %99 = load ptr, ptr %4, align 8, !dbg !309
  %100 = getelementptr inbounds %struct.linenoiseState, ptr %99, i32 0, i32 5, !dbg !310
  %101 = load i64, ptr %100, align 8, !dbg !310
  %102 = getelementptr inbounds i8, ptr %98, i64 %101, !dbg !307
  store i8 %95, ptr %102, align 1, !dbg !311
  %103 = load ptr, ptr %4, align 8, !dbg !312
  %104 = getelementptr inbounds %struct.linenoiseState, ptr %103, i32 0, i32 7, !dbg !313
  %105 = load i64, ptr %104, align 8, !dbg !314
  %106 = add i64 %105, 1, !dbg !314
  store i64 %106, ptr %104, align 8, !dbg !314
  %107 = load ptr, ptr %4, align 8, !dbg !315
  %108 = getelementptr inbounds %struct.linenoiseState, ptr %107, i32 0, i32 5, !dbg !316
  %109 = load i64, ptr %108, align 8, !dbg !317
  %110 = add i64 %109, 1, !dbg !317
  store i64 %110, ptr %108, align 8, !dbg !317
  %111 = load ptr, ptr %4, align 8, !dbg !318
  %112 = getelementptr inbounds %struct.linenoiseState, ptr %111, i32 0, i32 1, !dbg !319
  %113 = load ptr, ptr %112, align 8, !dbg !319
  %114 = load ptr, ptr %4, align 8, !dbg !320
  %115 = getelementptr inbounds %struct.linenoiseState, ptr %114, i32 0, i32 7, !dbg !321
  %116 = load i64, ptr %115, align 8, !dbg !321
  %117 = getelementptr inbounds i8, ptr %113, i64 %116, !dbg !318
  store i8 0, ptr %117, align 1, !dbg !322
  %118 = load ptr, ptr %4, align 8, !dbg !323
  call void @refreshLine(ptr noundef %118), !dbg !324
  br label %119

119:                                              ; preds = %71, %70
  br label %120, !dbg !325

120:                                              ; preds = %119, %2
  store i32 0, ptr %3, align 4, !dbg !326
  br label %121, !dbg !326

121:                                              ; preds = %120, %66
  %122 = load i32, ptr %3, align 4, !dbg !327
  ret i32 %122, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refreshLine(ptr noundef %0) #0 !dbg !328 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !331, metadata !DIExpression()), !dbg !332
  %3 = load i32, ptr @mlmode, align 4, !dbg !333
  %4 = icmp ne i32 %3, 0, !dbg !333
  br i1 %4, label %5, label %7, !dbg !335

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !336
  call void @refreshMultiLine(ptr noundef %6), !dbg !337
  br label %9, !dbg !337

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !338
  call void @refreshSingleLine(ptr noundef %8), !dbg !339
  br label %9

9:                                                ; preds = %7, %5
  ret void, !dbg !340
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define void @linenoiseEditMoveLeft(ptr noundef %0) #0 !dbg !341 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !342, metadata !DIExpression()), !dbg !343
  %3 = load ptr, ptr %2, align 8, !dbg !344
  %4 = getelementptr inbounds %struct.linenoiseState, ptr %3, i32 0, i32 5, !dbg !346
  %5 = load i64, ptr %4, align 8, !dbg !346
  %6 = icmp ugt i64 %5, 0, !dbg !347
  br i1 %6, label %7, label %13, !dbg !348

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !349
  %9 = getelementptr inbounds %struct.linenoiseState, ptr %8, i32 0, i32 5, !dbg !351
  %10 = load i64, ptr %9, align 8, !dbg !352
  %11 = add i64 %10, -1, !dbg !352
  store i64 %11, ptr %9, align 8, !dbg !352
  %12 = load ptr, ptr %2, align 8, !dbg !353
  call void @refreshLine(ptr noundef %12), !dbg !354
  br label %13, !dbg !355

13:                                               ; preds = %7, %1
  ret void, !dbg !356
}

; Function Attrs: noinline nounwind optnone uwtable
define void @linenoiseEditMoveRight(ptr noundef %0) #0 !dbg !357 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !358, metadata !DIExpression()), !dbg !359
  %3 = load ptr, ptr %2, align 8, !dbg !360
  %4 = getelementptr inbounds %struct.linenoiseState, ptr %3, i32 0, i32 5, !dbg !362
  %5 = load i64, ptr %4, align 8, !dbg !362
  %6 = load ptr, ptr %2, align 8, !dbg !363
  %7 = getelementptr inbounds %struct.linenoiseState, ptr %6, i32 0, i32 7, !dbg !364
  %8 = load i64, ptr %7, align 8, !dbg !364
  %9 = icmp ne i64 %5, %8, !dbg !365
  br i1 %9, label %10, label %16, !dbg !366

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !dbg !367
  %12 = getelementptr inbounds %struct.linenoiseState, ptr %11, i32 0, i32 5, !dbg !369
  %13 = load i64, ptr %12, align 8, !dbg !370
  %14 = add i64 %13, 1, !dbg !370
  store i64 %14, ptr %12, align 8, !dbg !370
  %15 = load ptr, ptr %2, align 8, !dbg !371
  call void @refreshLine(ptr noundef %15), !dbg !372
  br label %16, !dbg !373

16:                                               ; preds = %10, %1
  ret void, !dbg !374
}

; Function Attrs: noinline nounwind optnone uwtable
define void @linenoiseEditHistoryNext(ptr noundef %0, i32 noundef %1) #0 !dbg !375 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !378, metadata !DIExpression()), !dbg !379
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !380, metadata !DIExpression()), !dbg !381
  %5 = load i32, ptr @history_len, align 4, !dbg !382
  %6 = icmp sgt i32 %5, 1, !dbg !384
  br i1 %6, label %7, label %93, !dbg !385

7:                                                ; preds = %2
  %8 = load ptr, ptr @history, align 8, !dbg !386
  %9 = load i32, ptr @history_len, align 4, !dbg !388
  %10 = sub nsw i32 %9, 1, !dbg !389
  %11 = load ptr, ptr %3, align 8, !dbg !390
  %12 = getelementptr inbounds %struct.linenoiseState, ptr %11, i32 0, i32 10, !dbg !391
  %13 = load i32, ptr %12, align 8, !dbg !391
  %14 = sub nsw i32 %10, %13, !dbg !392
  %15 = sext i32 %14 to i64, !dbg !386
  %16 = getelementptr inbounds ptr, ptr %8, i64 %15, !dbg !386
  %17 = load ptr, ptr %16, align 8, !dbg !386
  call void @free(ptr noundef %17) #13, !dbg !393
  %18 = load ptr, ptr %3, align 8, !dbg !394
  %19 = getelementptr inbounds %struct.linenoiseState, ptr %18, i32 0, i32 1, !dbg !395
  %20 = load ptr, ptr %19, align 8, !dbg !395
  %21 = call noalias ptr @strdup(ptr noundef %20) #13, !dbg !396
  %22 = load ptr, ptr @history, align 8, !dbg !397
  %23 = load i32, ptr @history_len, align 4, !dbg !398
  %24 = sub nsw i32 %23, 1, !dbg !399
  %25 = load ptr, ptr %3, align 8, !dbg !400
  %26 = getelementptr inbounds %struct.linenoiseState, ptr %25, i32 0, i32 10, !dbg !401
  %27 = load i32, ptr %26, align 8, !dbg !401
  %28 = sub nsw i32 %24, %27, !dbg !402
  %29 = sext i32 %28 to i64, !dbg !397
  %30 = getelementptr inbounds ptr, ptr %22, i64 %29, !dbg !397
  store ptr %21, ptr %30, align 8, !dbg !403
  %31 = load i32, ptr %4, align 4, !dbg !404
  %32 = icmp eq i32 %31, 1, !dbg !405
  %33 = zext i1 %32 to i64, !dbg !406
  %34 = select i1 %32, i32 1, i32 -1, !dbg !406
  %35 = load ptr, ptr %3, align 8, !dbg !407
  %36 = getelementptr inbounds %struct.linenoiseState, ptr %35, i32 0, i32 10, !dbg !408
  %37 = load i32, ptr %36, align 8, !dbg !409
  %38 = add nsw i32 %37, %34, !dbg !409
  store i32 %38, ptr %36, align 8, !dbg !409
  %39 = load ptr, ptr %3, align 8, !dbg !410
  %40 = getelementptr inbounds %struct.linenoiseState, ptr %39, i32 0, i32 10, !dbg !412
  %41 = load i32, ptr %40, align 8, !dbg !412
  %42 = icmp slt i32 %41, 0, !dbg !413
  br i1 %42, label %43, label %46, !dbg !414

43:                                               ; preds = %7
  %44 = load ptr, ptr %3, align 8, !dbg !415
  %45 = getelementptr inbounds %struct.linenoiseState, ptr %44, i32 0, i32 10, !dbg !417
  store i32 0, ptr %45, align 8, !dbg !418
  br label %93, !dbg !419

46:                                               ; preds = %7
  %47 = load ptr, ptr %3, align 8, !dbg !420
  %48 = getelementptr inbounds %struct.linenoiseState, ptr %47, i32 0, i32 10, !dbg !422
  %49 = load i32, ptr %48, align 8, !dbg !422
  %50 = load i32, ptr @history_len, align 4, !dbg !423
  %51 = icmp sge i32 %49, %50, !dbg !424
  br i1 %51, label %52, label %57, !dbg !425

52:                                               ; preds = %46
  %53 = load i32, ptr @history_len, align 4, !dbg !426
  %54 = sub nsw i32 %53, 1, !dbg !428
  %55 = load ptr, ptr %3, align 8, !dbg !429
  %56 = getelementptr inbounds %struct.linenoiseState, ptr %55, i32 0, i32 10, !dbg !430
  store i32 %54, ptr %56, align 8, !dbg !431
  br label %93, !dbg !432

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57
  %59 = load ptr, ptr %3, align 8, !dbg !433
  %60 = getelementptr inbounds %struct.linenoiseState, ptr %59, i32 0, i32 1, !dbg !434
  %61 = load ptr, ptr %60, align 8, !dbg !434
  %62 = load ptr, ptr @history, align 8, !dbg !435
  %63 = load i32, ptr @history_len, align 4, !dbg !436
  %64 = sub nsw i32 %63, 1, !dbg !437
  %65 = load ptr, ptr %3, align 8, !dbg !438
  %66 = getelementptr inbounds %struct.linenoiseState, ptr %65, i32 0, i32 10, !dbg !439
  %67 = load i32, ptr %66, align 8, !dbg !439
  %68 = sub nsw i32 %64, %67, !dbg !440
  %69 = sext i32 %68 to i64, !dbg !435
  %70 = getelementptr inbounds ptr, ptr %62, i64 %69, !dbg !435
  %71 = load ptr, ptr %70, align 8, !dbg !435
  %72 = load ptr, ptr %3, align 8, !dbg !441
  %73 = getelementptr inbounds %struct.linenoiseState, ptr %72, i32 0, i32 2, !dbg !442
  %74 = load i64, ptr %73, align 8, !dbg !442
  %75 = call ptr @strncpy(ptr noundef %61, ptr noundef %71, i64 noundef %74) #13, !dbg !443
  %76 = load ptr, ptr %3, align 8, !dbg !444
  %77 = getelementptr inbounds %struct.linenoiseState, ptr %76, i32 0, i32 1, !dbg !445
  %78 = load ptr, ptr %77, align 8, !dbg !445
  %79 = load ptr, ptr %3, align 8, !dbg !446
  %80 = getelementptr inbounds %struct.linenoiseState, ptr %79, i32 0, i32 2, !dbg !447
  %81 = load i64, ptr %80, align 8, !dbg !447
  %82 = sub i64 %81, 1, !dbg !448
  %83 = getelementptr inbounds i8, ptr %78, i64 %82, !dbg !444
  store i8 0, ptr %83, align 1, !dbg !449
  %84 = load ptr, ptr %3, align 8, !dbg !450
  %85 = getelementptr inbounds %struct.linenoiseState, ptr %84, i32 0, i32 1, !dbg !451
  %86 = load ptr, ptr %85, align 8, !dbg !451
  %87 = call i64 @strlen(ptr noundef %86) #10, !dbg !452
  %88 = load ptr, ptr %3, align 8, !dbg !453
  %89 = getelementptr inbounds %struct.linenoiseState, ptr %88, i32 0, i32 5, !dbg !454
  store i64 %87, ptr %89, align 8, !dbg !455
  %90 = load ptr, ptr %3, align 8, !dbg !456
  %91 = getelementptr inbounds %struct.linenoiseState, ptr %90, i32 0, i32 7, !dbg !457
  store i64 %87, ptr %91, align 8, !dbg !458
  %92 = load ptr, ptr %3, align 8, !dbg !459
  call void @refreshLine(ptr noundef %92), !dbg !460
  br label %93, !dbg !461

93:                                               ; preds = %43, %52, %58, %2
  ret void, !dbg !462
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #7

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #7

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define void @linenoiseEditDelete(ptr noundef %0) #0 !dbg !463 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !465
  %3 = load ptr, ptr %2, align 8, !dbg !466
  %4 = getelementptr inbounds %struct.linenoiseState, ptr %3, i32 0, i32 7, !dbg !468
  %5 = load i64, ptr %4, align 8, !dbg !468
  %6 = icmp ugt i64 %5, 0, !dbg !469
  br i1 %6, label %7, label %51, !dbg !470

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !471
  %9 = getelementptr inbounds %struct.linenoiseState, ptr %8, i32 0, i32 5, !dbg !472
  %10 = load i64, ptr %9, align 8, !dbg !472
  %11 = load ptr, ptr %2, align 8, !dbg !473
  %12 = getelementptr inbounds %struct.linenoiseState, ptr %11, i32 0, i32 7, !dbg !474
  %13 = load i64, ptr %12, align 8, !dbg !474
  %14 = icmp ult i64 %10, %13, !dbg !475
  br i1 %14, label %15, label %51, !dbg !476

15:                                               ; preds = %7
  %16 = load ptr, ptr %2, align 8, !dbg !477
  %17 = getelementptr inbounds %struct.linenoiseState, ptr %16, i32 0, i32 1, !dbg !479
  %18 = load ptr, ptr %17, align 8, !dbg !479
  %19 = load ptr, ptr %2, align 8, !dbg !480
  %20 = getelementptr inbounds %struct.linenoiseState, ptr %19, i32 0, i32 5, !dbg !481
  %21 = load i64, ptr %20, align 8, !dbg !481
  %22 = getelementptr inbounds i8, ptr %18, i64 %21, !dbg !482
  %23 = load ptr, ptr %2, align 8, !dbg !483
  %24 = getelementptr inbounds %struct.linenoiseState, ptr %23, i32 0, i32 1, !dbg !484
  %25 = load ptr, ptr %24, align 8, !dbg !484
  %26 = load ptr, ptr %2, align 8, !dbg !485
  %27 = getelementptr inbounds %struct.linenoiseState, ptr %26, i32 0, i32 5, !dbg !486
  %28 = load i64, ptr %27, align 8, !dbg !486
  %29 = getelementptr inbounds i8, ptr %25, i64 %28, !dbg !487
  %30 = getelementptr inbounds i8, ptr %29, i64 1, !dbg !488
  %31 = load ptr, ptr %2, align 8, !dbg !489
  %32 = getelementptr inbounds %struct.linenoiseState, ptr %31, i32 0, i32 7, !dbg !490
  %33 = load i64, ptr %32, align 8, !dbg !490
  %34 = load ptr, ptr %2, align 8, !dbg !491
  %35 = getelementptr inbounds %struct.linenoiseState, ptr %34, i32 0, i32 5, !dbg !492
  %36 = load i64, ptr %35, align 8, !dbg !492
  %37 = sub i64 %33, %36, !dbg !493
  %38 = sub i64 %37, 1, !dbg !494
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %22, ptr align 1 %30, i64 %38, i1 false), !dbg !495
  %39 = load ptr, ptr %2, align 8, !dbg !496
  %40 = getelementptr inbounds %struct.linenoiseState, ptr %39, i32 0, i32 7, !dbg !497
  %41 = load i64, ptr %40, align 8, !dbg !498
  %42 = add i64 %41, -1, !dbg !498
  store i64 %42, ptr %40, align 8, !dbg !498
  %43 = load ptr, ptr %2, align 8, !dbg !499
  %44 = getelementptr inbounds %struct.linenoiseState, ptr %43, i32 0, i32 1, !dbg !500
  %45 = load ptr, ptr %44, align 8, !dbg !500
  %46 = load ptr, ptr %2, align 8, !dbg !501
  %47 = getelementptr inbounds %struct.linenoiseState, ptr %46, i32 0, i32 7, !dbg !502
  %48 = load i64, ptr %47, align 8, !dbg !502
  %49 = getelementptr inbounds i8, ptr %45, i64 %48, !dbg !499
  store i8 0, ptr %49, align 1, !dbg !503
  %50 = load ptr, ptr %2, align 8, !dbg !504
  call void @refreshLine(ptr noundef %50), !dbg !505
  br label %51, !dbg !506

51:                                               ; preds = %15, %7, %1
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define void @linenoiseEditBackspace(ptr noundef %0) #0 !dbg !508 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !509, metadata !DIExpression()), !dbg !510
  %3 = load ptr, ptr %2, align 8, !dbg !511
  %4 = getelementptr inbounds %struct.linenoiseState, ptr %3, i32 0, i32 5, !dbg !513
  %5 = load i64, ptr %4, align 8, !dbg !513
  %6 = icmp ugt i64 %5, 0, !dbg !514
  br i1 %6, label %7, label %51, !dbg !515

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !516
  %9 = getelementptr inbounds %struct.linenoiseState, ptr %8, i32 0, i32 7, !dbg !517
  %10 = load i64, ptr %9, align 8, !dbg !517
  %11 = icmp ugt i64 %10, 0, !dbg !518
  br i1 %11, label %12, label %51, !dbg !519

12:                                               ; preds = %7
  %13 = load ptr, ptr %2, align 8, !dbg !520
  %14 = getelementptr inbounds %struct.linenoiseState, ptr %13, i32 0, i32 1, !dbg !522
  %15 = load ptr, ptr %14, align 8, !dbg !522
  %16 = load ptr, ptr %2, align 8, !dbg !523
  %17 = getelementptr inbounds %struct.linenoiseState, ptr %16, i32 0, i32 5, !dbg !524
  %18 = load i64, ptr %17, align 8, !dbg !524
  %19 = getelementptr inbounds i8, ptr %15, i64 %18, !dbg !525
  %20 = getelementptr inbounds i8, ptr %19, i64 -1, !dbg !526
  %21 = load ptr, ptr %2, align 8, !dbg !527
  %22 = getelementptr inbounds %struct.linenoiseState, ptr %21, i32 0, i32 1, !dbg !528
  %23 = load ptr, ptr %22, align 8, !dbg !528
  %24 = load ptr, ptr %2, align 8, !dbg !529
  %25 = getelementptr inbounds %struct.linenoiseState, ptr %24, i32 0, i32 5, !dbg !530
  %26 = load i64, ptr %25, align 8, !dbg !530
  %27 = getelementptr inbounds i8, ptr %23, i64 %26, !dbg !531
  %28 = load ptr, ptr %2, align 8, !dbg !532
  %29 = getelementptr inbounds %struct.linenoiseState, ptr %28, i32 0, i32 7, !dbg !533
  %30 = load i64, ptr %29, align 8, !dbg !533
  %31 = load ptr, ptr %2, align 8, !dbg !534
  %32 = getelementptr inbounds %struct.linenoiseState, ptr %31, i32 0, i32 5, !dbg !535
  %33 = load i64, ptr %32, align 8, !dbg !535
  %34 = sub i64 %30, %33, !dbg !536
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %20, ptr align 1 %27, i64 %34, i1 false), !dbg !537
  %35 = load ptr, ptr %2, align 8, !dbg !538
  %36 = getelementptr inbounds %struct.linenoiseState, ptr %35, i32 0, i32 5, !dbg !539
  %37 = load i64, ptr %36, align 8, !dbg !540
  %38 = add i64 %37, -1, !dbg !540
  store i64 %38, ptr %36, align 8, !dbg !540
  %39 = load ptr, ptr %2, align 8, !dbg !541
  %40 = getelementptr inbounds %struct.linenoiseState, ptr %39, i32 0, i32 7, !dbg !542
  %41 = load i64, ptr %40, align 8, !dbg !543
  %42 = add i64 %41, -1, !dbg !543
  store i64 %42, ptr %40, align 8, !dbg !543
  %43 = load ptr, ptr %2, align 8, !dbg !544
  %44 = getelementptr inbounds %struct.linenoiseState, ptr %43, i32 0, i32 1, !dbg !545
  %45 = load ptr, ptr %44, align 8, !dbg !545
  %46 = load ptr, ptr %2, align 8, !dbg !546
  %47 = getelementptr inbounds %struct.linenoiseState, ptr %46, i32 0, i32 7, !dbg !547
  %48 = load i64, ptr %47, align 8, !dbg !547
  %49 = getelementptr inbounds i8, ptr %45, i64 %48, !dbg !544
  store i8 0, ptr %49, align 1, !dbg !548
  %50 = load ptr, ptr %2, align 8, !dbg !549
  call void @refreshLine(ptr noundef %50), !dbg !550
  br label %51, !dbg !551

51:                                               ; preds = %12, %7, %1
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define void @linenoiseEditDeletePrevWord(ptr noundef %0) #0 !dbg !553 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !554, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.declare(metadata ptr %3, metadata !556, metadata !DIExpression()), !dbg !557
  %5 = load ptr, ptr %2, align 8, !dbg !558
  %6 = getelementptr inbounds %struct.linenoiseState, ptr %5, i32 0, i32 5, !dbg !559
  %7 = load i64, ptr %6, align 8, !dbg !559
  store i64 %7, ptr %3, align 8, !dbg !557
  call void @llvm.dbg.declare(metadata ptr %4, metadata !560, metadata !DIExpression()), !dbg !561
  br label %8, !dbg !562

8:                                                ; preds = %27, %1
  %9 = load ptr, ptr %2, align 8, !dbg !563
  %10 = getelementptr inbounds %struct.linenoiseState, ptr %9, i32 0, i32 5, !dbg !564
  %11 = load i64, ptr %10, align 8, !dbg !564
  %12 = icmp ugt i64 %11, 0, !dbg !565
  br i1 %12, label %13, label %25, !dbg !566

13:                                               ; preds = %8
  %14 = load ptr, ptr %2, align 8, !dbg !567
  %15 = getelementptr inbounds %struct.linenoiseState, ptr %14, i32 0, i32 1, !dbg !568
  %16 = load ptr, ptr %15, align 8, !dbg !568
  %17 = load ptr, ptr %2, align 8, !dbg !569
  %18 = getelementptr inbounds %struct.linenoiseState, ptr %17, i32 0, i32 5, !dbg !570
  %19 = load i64, ptr %18, align 8, !dbg !570
  %20 = sub i64 %19, 1, !dbg !571
  %21 = getelementptr inbounds i8, ptr %16, i64 %20, !dbg !567
  %22 = load i8, ptr %21, align 1, !dbg !567
  %23 = sext i8 %22 to i32, !dbg !567
  %24 = icmp eq i32 %23, 32, !dbg !572
  br label %25

25:                                               ; preds = %13, %8
  %26 = phi i1 [ false, %8 ], [ %24, %13 ], !dbg !573
  br i1 %26, label %27, label %32, !dbg !562

27:                                               ; preds = %25
  %28 = load ptr, ptr %2, align 8, !dbg !574
  %29 = getelementptr inbounds %struct.linenoiseState, ptr %28, i32 0, i32 5, !dbg !575
  %30 = load i64, ptr %29, align 8, !dbg !576
  %31 = add i64 %30, -1, !dbg !576
  store i64 %31, ptr %29, align 8, !dbg !576
  br label %8, !dbg !562, !llvm.loop !577

32:                                               ; preds = %25
  br label %33, !dbg !578

33:                                               ; preds = %52, %32
  %34 = load ptr, ptr %2, align 8, !dbg !579
  %35 = getelementptr inbounds %struct.linenoiseState, ptr %34, i32 0, i32 5, !dbg !580
  %36 = load i64, ptr %35, align 8, !dbg !580
  %37 = icmp ugt i64 %36, 0, !dbg !581
  br i1 %37, label %38, label %50, !dbg !582

38:                                               ; preds = %33
  %39 = load ptr, ptr %2, align 8, !dbg !583
  %40 = getelementptr inbounds %struct.linenoiseState, ptr %39, i32 0, i32 1, !dbg !584
  %41 = load ptr, ptr %40, align 8, !dbg !584
  %42 = load ptr, ptr %2, align 8, !dbg !585
  %43 = getelementptr inbounds %struct.linenoiseState, ptr %42, i32 0, i32 5, !dbg !586
  %44 = load i64, ptr %43, align 8, !dbg !586
  %45 = sub i64 %44, 1, !dbg !587
  %46 = getelementptr inbounds i8, ptr %41, i64 %45, !dbg !583
  %47 = load i8, ptr %46, align 1, !dbg !583
  %48 = sext i8 %47 to i32, !dbg !583
  %49 = icmp ne i32 %48, 32, !dbg !588
  br label %50

50:                                               ; preds = %38, %33
  %51 = phi i1 [ false, %33 ], [ %49, %38 ], !dbg !573
  br i1 %51, label %52, label %57, !dbg !578

52:                                               ; preds = %50
  %53 = load ptr, ptr %2, align 8, !dbg !589
  %54 = getelementptr inbounds %struct.linenoiseState, ptr %53, i32 0, i32 5, !dbg !590
  %55 = load i64, ptr %54, align 8, !dbg !591
  %56 = add i64 %55, -1, !dbg !591
  store i64 %56, ptr %54, align 8, !dbg !591
  br label %33, !dbg !578, !llvm.loop !592

57:                                               ; preds = %50
  %58 = load i64, ptr %3, align 8, !dbg !593
  %59 = load ptr, ptr %2, align 8, !dbg !594
  %60 = getelementptr inbounds %struct.linenoiseState, ptr %59, i32 0, i32 5, !dbg !595
  %61 = load i64, ptr %60, align 8, !dbg !595
  %62 = sub i64 %58, %61, !dbg !596
  store i64 %62, ptr %4, align 8, !dbg !597
  %63 = load ptr, ptr %2, align 8, !dbg !598
  %64 = getelementptr inbounds %struct.linenoiseState, ptr %63, i32 0, i32 1, !dbg !599
  %65 = load ptr, ptr %64, align 8, !dbg !599
  %66 = load ptr, ptr %2, align 8, !dbg !600
  %67 = getelementptr inbounds %struct.linenoiseState, ptr %66, i32 0, i32 5, !dbg !601
  %68 = load i64, ptr %67, align 8, !dbg !601
  %69 = getelementptr inbounds i8, ptr %65, i64 %68, !dbg !602
  %70 = load ptr, ptr %2, align 8, !dbg !603
  %71 = getelementptr inbounds %struct.linenoiseState, ptr %70, i32 0, i32 1, !dbg !604
  %72 = load ptr, ptr %71, align 8, !dbg !604
  %73 = load i64, ptr %3, align 8, !dbg !605
  %74 = getelementptr inbounds i8, ptr %72, i64 %73, !dbg !606
  %75 = load ptr, ptr %2, align 8, !dbg !607
  %76 = getelementptr inbounds %struct.linenoiseState, ptr %75, i32 0, i32 7, !dbg !608
  %77 = load i64, ptr %76, align 8, !dbg !608
  %78 = load i64, ptr %3, align 8, !dbg !609
  %79 = sub i64 %77, %78, !dbg !610
  %80 = add i64 %79, 1, !dbg !611
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %69, ptr align 1 %74, i64 %80, i1 false), !dbg !612
  %81 = load i64, ptr %4, align 8, !dbg !613
  %82 = load ptr, ptr %2, align 8, !dbg !614
  %83 = getelementptr inbounds %struct.linenoiseState, ptr %82, i32 0, i32 7, !dbg !615
  %84 = load i64, ptr %83, align 8, !dbg !616
  %85 = sub i64 %84, %81, !dbg !616
  store i64 %85, ptr %83, align 8, !dbg !616
  %86 = load ptr, ptr %2, align 8, !dbg !617
  call void @refreshLine(ptr noundef %86), !dbg !618
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @linenoise(ptr noundef %0) #0 !dbg !620 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !623, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.declare(metadata ptr %4, metadata !625, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.declare(metadata ptr %5, metadata !630, metadata !DIExpression()), !dbg !631
  %7 = call i32 @isUnsupportedTerm(), !dbg !632
  %8 = icmp ne i32 %7, 0, !dbg !632
  br i1 %8, label %9, label %51, !dbg !634

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !635, metadata !DIExpression()), !dbg !637
  %10 = load ptr, ptr %3, align 8, !dbg !638
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10), !dbg !639
  %12 = load ptr, ptr @stdout, align 8, !dbg !640
  %13 = call i32 @fflush(ptr noundef %12), !dbg !641
  %14 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 0, !dbg !642
  %15 = load ptr, ptr @stdin, align 8, !dbg !644
  %16 = call ptr @fgets(ptr noundef %14, i32 noundef 4096, ptr noundef %15), !dbg !645
  %17 = icmp eq ptr %16, null, !dbg !646
  br i1 %17, label %18, label %19, !dbg !647

18:                                               ; preds = %9
  store ptr null, ptr %2, align 8, !dbg !648
  br label %61, !dbg !648

19:                                               ; preds = %9
  %20 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 0, !dbg !649
  %21 = call i64 @strlen(ptr noundef %20) #10, !dbg !650
  store i64 %21, ptr %6, align 8, !dbg !651
  br label %22, !dbg !652

22:                                               ; preds = %43, %19
  %23 = load i64, ptr %6, align 8, !dbg !653
  %24 = icmp ne i64 %23, 0, !dbg !653
  br i1 %24, label %25, label %41, !dbg !654

25:                                               ; preds = %22
  %26 = load i64, ptr %6, align 8, !dbg !655
  %27 = sub i64 %26, 1, !dbg !656
  %28 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 %27, !dbg !657
  %29 = load i8, ptr %28, align 1, !dbg !657
  %30 = sext i8 %29 to i32, !dbg !657
  %31 = icmp eq i32 %30, 10, !dbg !658
  br i1 %31, label %39, label %32, !dbg !659

32:                                               ; preds = %25
  %33 = load i64, ptr %6, align 8, !dbg !660
  %34 = sub i64 %33, 1, !dbg !661
  %35 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 %34, !dbg !662
  %36 = load i8, ptr %35, align 1, !dbg !662
  %37 = sext i8 %36 to i32, !dbg !662
  %38 = icmp eq i32 %37, 13, !dbg !663
  br label %39, !dbg !659

39:                                               ; preds = %32, %25
  %40 = phi i1 [ true, %25 ], [ %38, %32 ]
  br label %41

41:                                               ; preds = %39, %22
  %42 = phi i1 [ false, %22 ], [ %40, %39 ], !dbg !664
  br i1 %42, label %43, label %48, !dbg !652

43:                                               ; preds = %41
  %44 = load i64, ptr %6, align 8, !dbg !665
  %45 = add i64 %44, -1, !dbg !665
  store i64 %45, ptr %6, align 8, !dbg !665
  %46 = load i64, ptr %6, align 8, !dbg !667
  %47 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 %46, !dbg !668
  store i8 0, ptr %47, align 1, !dbg !669
  br label %22, !dbg !652, !llvm.loop !670

48:                                               ; preds = %41
  %49 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 0, !dbg !672
  %50 = call noalias ptr @strdup(ptr noundef %49) #13, !dbg !673
  store ptr %50, ptr %2, align 8, !dbg !674
  br label %61, !dbg !674

51:                                               ; preds = %1
  %52 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 0, !dbg !675
  %53 = load ptr, ptr %3, align 8, !dbg !677
  %54 = call i32 @linenoiseRaw(ptr noundef %52, i64 noundef 4096, ptr noundef %53), !dbg !678
  store i32 %54, ptr %5, align 4, !dbg !679
  %55 = load i32, ptr %5, align 4, !dbg !680
  %56 = icmp eq i32 %55, -1, !dbg !682
  br i1 %56, label %57, label %58, !dbg !683

57:                                               ; preds = %51
  store ptr null, ptr %2, align 8, !dbg !684
  br label %61, !dbg !684

58:                                               ; preds = %51
  %59 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 0, !dbg !685
  %60 = call noalias ptr @strdup(ptr noundef %59) #13, !dbg !686
  store ptr %60, ptr %2, align 8, !dbg !687
  br label %61, !dbg !687

61:                                               ; preds = %58, %57, %48, %18
  %62 = load ptr, ptr %2, align 8, !dbg !688
  ret ptr %62, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isUnsupportedTerm() #0 !dbg !689 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !692, metadata !DIExpression()), !dbg !693
  %4 = call ptr @getenv(ptr noundef @.str.14) #13, !dbg !694
  store ptr %4, ptr %2, align 8, !dbg !693
  call void @llvm.dbg.declare(metadata ptr %3, metadata !695, metadata !DIExpression()), !dbg !696
  %5 = load ptr, ptr %2, align 8, !dbg !697
  %6 = icmp eq ptr %5, null, !dbg !699
  br i1 %6, label %7, label %8, !dbg !700

7:                                                ; preds = %0
  store i32 0, ptr %1, align 4, !dbg !701
  br label %29, !dbg !701

8:                                                ; preds = %0
  store i32 0, ptr %3, align 4, !dbg !702
  br label %9, !dbg !704

9:                                                ; preds = %25, %8
  %10 = load i32, ptr %3, align 4, !dbg !705
  %11 = sext i32 %10 to i64, !dbg !707
  %12 = getelementptr inbounds [3 x ptr], ptr @unsupported_term, i64 0, i64 %11, !dbg !707
  %13 = load ptr, ptr %12, align 8, !dbg !707
  %14 = icmp ne ptr %13, null, !dbg !708
  br i1 %14, label %15, label %28, !dbg !708

15:                                               ; preds = %9
  %16 = load ptr, ptr %2, align 8, !dbg !709
  %17 = load i32, ptr %3, align 4, !dbg !711
  %18 = sext i32 %17 to i64, !dbg !712
  %19 = getelementptr inbounds [3 x ptr], ptr @unsupported_term, i64 0, i64 %18, !dbg !712
  %20 = load ptr, ptr %19, align 8, !dbg !712
  %21 = call i32 @strcasecmp(ptr noundef %16, ptr noundef %20) #10, !dbg !713
  %22 = icmp ne i32 %21, 0, !dbg !713
  br i1 %22, label %24, label %23, !dbg !714

23:                                               ; preds = %15
  store i32 1, ptr %1, align 4, !dbg !715
  br label %29, !dbg !715

24:                                               ; preds = %15
  br label %25, !dbg !716

25:                                               ; preds = %24
  %26 = load i32, ptr %3, align 4, !dbg !717
  %27 = add nsw i32 %26, 1, !dbg !717
  store i32 %27, ptr %3, align 4, !dbg !717
  br label %9, !dbg !718, !llvm.loop !719

28:                                               ; preds = %9
  store i32 0, ptr %1, align 4, !dbg !721
  br label %29, !dbg !721

29:                                               ; preds = %28, %23, %7
  %30 = load i32, ptr %1, align 4, !dbg !722
  ret i32 %30, !dbg !722
}

declare i32 @printf(ptr noundef, ...) #2

declare i32 @fflush(ptr noundef) #2

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linenoiseRaw(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !723 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !726, metadata !DIExpression()), !dbg !727
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !728, metadata !DIExpression()), !dbg !729
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !730, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.declare(metadata ptr %8, metadata !732, metadata !DIExpression()), !dbg !733
  store i32 0, ptr %8, align 4, !dbg !733
  call void @llvm.dbg.declare(metadata ptr %9, metadata !734, metadata !DIExpression()), !dbg !735
  %10 = load i64, ptr %6, align 8, !dbg !736
  %11 = icmp eq i64 %10, 0, !dbg !738
  br i1 %11, label %12, label %14, !dbg !739

12:                                               ; preds = %3
  %13 = call ptr @__errno_location() #14, !dbg !740
  store i32 22, ptr %13, align 4, !dbg !742
  store i32 -1, ptr %4, align 4, !dbg !743
  br label %63, !dbg !743

14:                                               ; preds = %3
  %15 = call i32 @isatty(i32 noundef 0) #13, !dbg !744
  %16 = icmp ne i32 %15, 0, !dbg !744
  br i1 %16, label %48, label %17, !dbg !746

17:                                               ; preds = %14
  %18 = load ptr, ptr %5, align 8, !dbg !747
  %19 = load i64, ptr %6, align 8, !dbg !750
  %20 = trunc i64 %19 to i32, !dbg !750
  %21 = load ptr, ptr @stdin, align 8, !dbg !751
  %22 = call ptr @fgets(ptr noundef %18, i32 noundef %20, ptr noundef %21), !dbg !752
  %23 = icmp eq ptr %22, null, !dbg !753
  br i1 %23, label %24, label %25, !dbg !754

24:                                               ; preds = %17
  store i32 -1, ptr %4, align 4, !dbg !755
  br label %63, !dbg !755

25:                                               ; preds = %17
  %26 = load ptr, ptr %5, align 8, !dbg !756
  %27 = call i64 @strlen(ptr noundef %26) #10, !dbg !757
  %28 = trunc i64 %27 to i32, !dbg !757
  store i32 %28, ptr %9, align 4, !dbg !758
  %29 = load i32, ptr %9, align 4, !dbg !759
  %30 = icmp ne i32 %29, 0, !dbg !759
  br i1 %30, label %31, label %47, !dbg !761

31:                                               ; preds = %25
  %32 = load ptr, ptr %5, align 8, !dbg !762
  %33 = load i32, ptr %9, align 4, !dbg !763
  %34 = sub nsw i32 %33, 1, !dbg !764
  %35 = sext i32 %34 to i64, !dbg !762
  %36 = getelementptr inbounds i8, ptr %32, i64 %35, !dbg !762
  %37 = load i8, ptr %36, align 1, !dbg !762
  %38 = sext i8 %37 to i32, !dbg !762
  %39 = icmp eq i32 %38, 10, !dbg !765
  br i1 %39, label %40, label %47, !dbg !766

40:                                               ; preds = %31
  %41 = load i32, ptr %9, align 4, !dbg !767
  %42 = add nsw i32 %41, -1, !dbg !767
  store i32 %42, ptr %9, align 4, !dbg !767
  %43 = load ptr, ptr %5, align 8, !dbg !769
  %44 = load i32, ptr %9, align 4, !dbg !770
  %45 = sext i32 %44 to i64, !dbg !769
  %46 = getelementptr inbounds i8, ptr %43, i64 %45, !dbg !769
  store i8 0, ptr %46, align 1, !dbg !771
  br label %47, !dbg !772

47:                                               ; preds = %40, %31, %25
  br label %61, !dbg !773

48:                                               ; preds = %14
  %49 = load i32, ptr %8, align 4, !dbg !774
  %50 = call i32 @enableRawMode(i32 noundef %49), !dbg !777
  %51 = icmp eq i32 %50, -1, !dbg !778
  br i1 %51, label %52, label %53, !dbg !779

52:                                               ; preds = %48
  store i32 -1, ptr %4, align 4, !dbg !780
  br label %63, !dbg !780

53:                                               ; preds = %48
  %54 = load i32, ptr %8, align 4, !dbg !781
  %55 = load ptr, ptr %5, align 8, !dbg !782
  %56 = load i64, ptr %6, align 8, !dbg !783
  %57 = load ptr, ptr %7, align 8, !dbg !784
  %58 = call i32 @linenoiseEdit(i32 noundef %54, ptr noundef %55, i64 noundef %56, ptr noundef %57), !dbg !785
  store i32 %58, ptr %9, align 4, !dbg !786
  %59 = load i32, ptr %8, align 4, !dbg !787
  call void @disableRawMode(i32 noundef %59), !dbg !788
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str.8), !dbg !789
  br label %61

61:                                               ; preds = %53, %47
  %62 = load i32, ptr %9, align 4, !dbg !790
  store i32 %62, ptr %4, align 4, !dbg !791
  br label %63, !dbg !791

63:                                               ; preds = %61, %52, %24, %12
  %64 = load i32, ptr %4, align 4, !dbg !792
  ret i32 %64, !dbg !792
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @linenoiseHistoryAdd(ptr noundef %0) #0 !dbg !793 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !796, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.declare(metadata ptr %4, metadata !798, metadata !DIExpression()), !dbg !799
  %5 = load i32, ptr @history_max_len, align 4, !dbg !800
  %6 = icmp eq i32 %5, 0, !dbg !802
  br i1 %6, label %7, label %8, !dbg !803

7:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !804
  br label %55, !dbg !804

8:                                                ; preds = %1
  %9 = load ptr, ptr @history, align 8, !dbg !805
  %10 = icmp eq ptr %9, null, !dbg !807
  br i1 %10, label %11, label %24, !dbg !808

11:                                               ; preds = %8
  %12 = load i32, ptr @history_max_len, align 4, !dbg !809
  %13 = sext i32 %12 to i64, !dbg !809
  %14 = mul i64 8, %13, !dbg !811
  %15 = call noalias ptr @malloc(i64 noundef %14) #11, !dbg !812
  store ptr %15, ptr @history, align 8, !dbg !813
  %16 = load ptr, ptr @history, align 8, !dbg !814
  %17 = icmp eq ptr %16, null, !dbg !816
  br i1 %17, label %18, label %19, !dbg !817

18:                                               ; preds = %11
  store i32 0, ptr %2, align 4, !dbg !818
  br label %55, !dbg !818

19:                                               ; preds = %11
  %20 = load ptr, ptr @history, align 8, !dbg !819
  %21 = load i32, ptr @history_max_len, align 4, !dbg !820
  %22 = sext i32 %21 to i64, !dbg !820
  %23 = mul i64 8, %22, !dbg !821
  call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 %23, i1 false), !dbg !822
  br label %24, !dbg !823

24:                                               ; preds = %19, %8
  %25 = load ptr, ptr %3, align 8, !dbg !824
  %26 = call noalias ptr @strdup(ptr noundef %25) #13, !dbg !825
  store ptr %26, ptr %4, align 8, !dbg !826
  %27 = load ptr, ptr %4, align 8, !dbg !827
  %28 = icmp ne ptr %27, null, !dbg !827
  br i1 %28, label %30, label %29, !dbg !829

29:                                               ; preds = %24
  store i32 0, ptr %2, align 4, !dbg !830
  br label %55, !dbg !830

30:                                               ; preds = %24
  %31 = load i32, ptr @history_len, align 4, !dbg !831
  %32 = load i32, ptr @history_max_len, align 4, !dbg !833
  %33 = icmp eq i32 %31, %32, !dbg !834
  br i1 %33, label %34, label %47, !dbg !835

34:                                               ; preds = %30
  %35 = load ptr, ptr @history, align 8, !dbg !836
  %36 = getelementptr inbounds ptr, ptr %35, i64 0, !dbg !836
  %37 = load ptr, ptr %36, align 8, !dbg !836
  call void @free(ptr noundef %37) #13, !dbg !838
  %38 = load ptr, ptr @history, align 8, !dbg !839
  %39 = load ptr, ptr @history, align 8, !dbg !840
  %40 = getelementptr inbounds ptr, ptr %39, i64 1, !dbg !841
  %41 = load i32, ptr @history_max_len, align 4, !dbg !842
  %42 = sub nsw i32 %41, 1, !dbg !843
  %43 = sext i32 %42 to i64, !dbg !844
  %44 = mul i64 8, %43, !dbg !845
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %38, ptr align 8 %40, i64 %44, i1 false), !dbg !846
  %45 = load i32, ptr @history_len, align 4, !dbg !847
  %46 = add nsw i32 %45, -1, !dbg !847
  store i32 %46, ptr @history_len, align 4, !dbg !847
  br label %47, !dbg !848

47:                                               ; preds = %34, %30
  %48 = load ptr, ptr %4, align 8, !dbg !849
  %49 = load ptr, ptr @history, align 8, !dbg !850
  %50 = load i32, ptr @history_len, align 4, !dbg !851
  %51 = sext i32 %50 to i64, !dbg !850
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51, !dbg !850
  store ptr %48, ptr %52, align 8, !dbg !852
  %53 = load i32, ptr @history_len, align 4, !dbg !853
  %54 = add nsw i32 %53, 1, !dbg !853
  store i32 %54, ptr @history_len, align 4, !dbg !853
  store i32 1, ptr %2, align 4, !dbg !854
  br label %55, !dbg !854

55:                                               ; preds = %47, %29, %18, %7
  %56 = load i32, ptr %2, align 4, !dbg !855
  ret i32 %56, !dbg !855
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @linenoiseHistorySetMaxLen(i32 noundef %0) #0 !dbg !856 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !859, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.declare(metadata ptr %4, metadata !861, metadata !DIExpression()), !dbg !862
  %7 = load i32, ptr %3, align 4, !dbg !863
  %8 = icmp slt i32 %7, 1, !dbg !865
  br i1 %8, label %9, label %10, !dbg !866

9:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !867
  br label %69, !dbg !867

10:                                               ; preds = %1
  %11 = load ptr, ptr @history, align 8, !dbg !868
  %12 = icmp ne ptr %11, null, !dbg !868
  br i1 %12, label %13, label %61, !dbg !870

13:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata ptr %5, metadata !871, metadata !DIExpression()), !dbg !873
  %14 = load i32, ptr @history_len, align 4, !dbg !874
  store i32 %14, ptr %5, align 4, !dbg !873
  %15 = load i32, ptr %3, align 4, !dbg !875
  %16 = sext i32 %15 to i64, !dbg !875
  %17 = mul i64 8, %16, !dbg !876
  %18 = call noalias ptr @malloc(i64 noundef %17) #11, !dbg !877
  store ptr %18, ptr %4, align 8, !dbg !878
  %19 = load ptr, ptr %4, align 8, !dbg !879
  %20 = icmp eq ptr %19, null, !dbg !881
  br i1 %20, label %21, label %22, !dbg !882

21:                                               ; preds = %13
  store i32 0, ptr %2, align 4, !dbg !883
  br label %69, !dbg !883

22:                                               ; preds = %13
  %23 = load i32, ptr %3, align 4, !dbg !884
  %24 = load i32, ptr %5, align 4, !dbg !886
  %25 = icmp slt i32 %23, %24, !dbg !887
  br i1 %25, label %26, label %44, !dbg !888

26:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %6, metadata !889, metadata !DIExpression()), !dbg !891
  store i32 0, ptr %6, align 4, !dbg !892
  br label %27, !dbg !894

27:                                               ; preds = %39, %26
  %28 = load i32, ptr %6, align 4, !dbg !895
  %29 = load i32, ptr %5, align 4, !dbg !897
  %30 = load i32, ptr %3, align 4, !dbg !898
  %31 = sub nsw i32 %29, %30, !dbg !899
  %32 = icmp slt i32 %28, %31, !dbg !900
  br i1 %32, label %33, label %42, !dbg !901

33:                                               ; preds = %27
  %34 = load ptr, ptr @history, align 8, !dbg !902
  %35 = load i32, ptr %6, align 4, !dbg !903
  %36 = sext i32 %35 to i64, !dbg !902
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36, !dbg !902
  %38 = load ptr, ptr %37, align 8, !dbg !902
  call void @free(ptr noundef %38) #13, !dbg !904
  br label %39, !dbg !904

39:                                               ; preds = %33
  %40 = load i32, ptr %6, align 4, !dbg !905
  %41 = add nsw i32 %40, 1, !dbg !905
  store i32 %41, ptr %6, align 4, !dbg !905
  br label %27, !dbg !906, !llvm.loop !907

42:                                               ; preds = %27
  %43 = load i32, ptr %3, align 4, !dbg !909
  store i32 %43, ptr %5, align 4, !dbg !910
  br label %44, !dbg !911

44:                                               ; preds = %42, %22
  %45 = load ptr, ptr %4, align 8, !dbg !912
  %46 = load i32, ptr %3, align 4, !dbg !913
  %47 = sext i32 %46 to i64, !dbg !913
  %48 = mul i64 8, %47, !dbg !914
  call void @llvm.memset.p0.i64(ptr align 8 %45, i8 0, i64 %48, i1 false), !dbg !915
  %49 = load ptr, ptr %4, align 8, !dbg !916
  %50 = load ptr, ptr @history, align 8, !dbg !917
  %51 = load i32, ptr @history_len, align 4, !dbg !918
  %52 = load i32, ptr %5, align 4, !dbg !919
  %53 = sub nsw i32 %51, %52, !dbg !920
  %54 = sext i32 %53 to i64, !dbg !921
  %55 = getelementptr inbounds ptr, ptr %50, i64 %54, !dbg !921
  %56 = load i32, ptr %5, align 4, !dbg !922
  %57 = sext i32 %56 to i64, !dbg !922
  %58 = mul i64 8, %57, !dbg !923
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %49, ptr align 8 %55, i64 %58, i1 false), !dbg !924
  %59 = load ptr, ptr @history, align 8, !dbg !925
  call void @free(ptr noundef %59) #13, !dbg !926
  %60 = load ptr, ptr %4, align 8, !dbg !927
  store ptr %60, ptr @history, align 8, !dbg !928
  br label %61, !dbg !929

61:                                               ; preds = %44, %10
  %62 = load i32, ptr %3, align 4, !dbg !930
  store i32 %62, ptr @history_max_len, align 4, !dbg !931
  %63 = load i32, ptr @history_len, align 4, !dbg !932
  %64 = load i32, ptr @history_max_len, align 4, !dbg !934
  %65 = icmp sgt i32 %63, %64, !dbg !935
  br i1 %65, label %66, label %68, !dbg !936

66:                                               ; preds = %61
  %67 = load i32, ptr @history_max_len, align 4, !dbg !937
  store i32 %67, ptr @history_len, align 4, !dbg !938
  br label %68, !dbg !939

68:                                               ; preds = %66, %61
  store i32 1, ptr %2, align 4, !dbg !940
  br label %69, !dbg !940

69:                                               ; preds = %68, %21, %9
  %70 = load i32, ptr %2, align 4, !dbg !941
  ret i32 %70, !dbg !941
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @linenoiseHistorySave(ptr noundef %0) #0 !dbg !942 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !945, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.declare(metadata ptr %4, metadata !947, metadata !DIExpression()), !dbg !1001
  %6 = load ptr, ptr %3, align 8, !dbg !1002
  %7 = call noalias ptr @fopen(ptr noundef %6, ptr noundef @.str.2), !dbg !1003
  store ptr %7, ptr %4, align 8, !dbg !1001
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1004, metadata !DIExpression()), !dbg !1005
  %8 = load ptr, ptr %4, align 8, !dbg !1006
  %9 = icmp eq ptr %8, null, !dbg !1008
  br i1 %9, label %10, label %11, !dbg !1009

10:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !1010
  br label %30, !dbg !1010

11:                                               ; preds = %1
  store i32 0, ptr %5, align 4, !dbg !1011
  br label %12, !dbg !1013

12:                                               ; preds = %24, %11
  %13 = load i32, ptr %5, align 4, !dbg !1014
  %14 = load i32, ptr @history_len, align 4, !dbg !1016
  %15 = icmp slt i32 %13, %14, !dbg !1017
  br i1 %15, label %16, label %27, !dbg !1018

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 8, !dbg !1019
  %18 = load ptr, ptr @history, align 8, !dbg !1020
  %19 = load i32, ptr %5, align 4, !dbg !1021
  %20 = sext i32 %19 to i64, !dbg !1020
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20, !dbg !1020
  %22 = load ptr, ptr %21, align 8, !dbg !1020
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.3, ptr noundef %22), !dbg !1022
  br label %24, !dbg !1022

24:                                               ; preds = %16
  %25 = load i32, ptr %5, align 4, !dbg !1023
  %26 = add nsw i32 %25, 1, !dbg !1023
  store i32 %26, ptr %5, align 4, !dbg !1023
  br label %12, !dbg !1024, !llvm.loop !1025

27:                                               ; preds = %12
  %28 = load ptr, ptr %4, align 8, !dbg !1027
  %29 = call i32 @fclose(ptr noundef %28), !dbg !1028
  store i32 0, ptr %2, align 4, !dbg !1029
  br label %30, !dbg !1029

30:                                               ; preds = %27, %10
  %31 = load i32, ptr %2, align 4, !dbg !1030
  ret i32 %31, !dbg !1030
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @fclose(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @linenoiseHistoryLoad(ptr noundef %0) #0 !dbg !1031 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1032, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1034, metadata !DIExpression()), !dbg !1035
  %7 = load ptr, ptr %3, align 8, !dbg !1036
  %8 = call noalias ptr @fopen(ptr noundef %7, ptr noundef @.str.4), !dbg !1037
  store ptr %8, ptr %4, align 8, !dbg !1035
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1038, metadata !DIExpression()), !dbg !1039
  %9 = load ptr, ptr %4, align 8, !dbg !1040
  %10 = icmp eq ptr %9, null, !dbg !1042
  br i1 %10, label %11, label %12, !dbg !1043

11:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !1044
  br label %37, !dbg !1044

12:                                               ; preds = %1
  br label %13, !dbg !1045

13:                                               ; preds = %31, %12
  %14 = getelementptr inbounds [4096 x i8], ptr %5, i64 0, i64 0, !dbg !1046
  %15 = load ptr, ptr %4, align 8, !dbg !1047
  %16 = call ptr @fgets(ptr noundef %14, i32 noundef 4096, ptr noundef %15), !dbg !1048
  %17 = icmp ne ptr %16, null, !dbg !1049
  br i1 %17, label %18, label %34, !dbg !1045

18:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1050, metadata !DIExpression()), !dbg !1052
  %19 = getelementptr inbounds [4096 x i8], ptr %5, i64 0, i64 0, !dbg !1053
  %20 = call ptr @strchr(ptr noundef %19, i32 noundef 13) #10, !dbg !1054
  store ptr %20, ptr %6, align 8, !dbg !1055
  %21 = load ptr, ptr %6, align 8, !dbg !1056
  %22 = icmp ne ptr %21, null, !dbg !1056
  br i1 %22, label %26, label %23, !dbg !1058

23:                                               ; preds = %18
  %24 = getelementptr inbounds [4096 x i8], ptr %5, i64 0, i64 0, !dbg !1059
  %25 = call ptr @strchr(ptr noundef %24, i32 noundef 10) #10, !dbg !1060
  store ptr %25, ptr %6, align 8, !dbg !1061
  br label %26, !dbg !1062

26:                                               ; preds = %23, %18
  %27 = load ptr, ptr %6, align 8, !dbg !1063
  %28 = icmp ne ptr %27, null, !dbg !1063
  br i1 %28, label %29, label %31, !dbg !1065

29:                                               ; preds = %26
  %30 = load ptr, ptr %6, align 8, !dbg !1066
  store i8 0, ptr %30, align 1, !dbg !1067
  br label %31, !dbg !1068

31:                                               ; preds = %29, %26
  %32 = getelementptr inbounds [4096 x i8], ptr %5, i64 0, i64 0, !dbg !1069
  %33 = call i32 @linenoiseHistoryAdd(ptr noundef %32), !dbg !1070
  br label %13, !dbg !1045, !llvm.loop !1071

34:                                               ; preds = %13
  %35 = load ptr, ptr %4, align 8, !dbg !1073
  %36 = call i32 @fclose(ptr noundef %35), !dbg !1074
  store i32 0, ptr %2, align 4, !dbg !1075
  br label %37, !dbg !1075

37:                                               ; preds = %34, %11
  %38 = load i32, ptr %2, align 4, !dbg !1076
  ret i32 %38, !dbg !1076
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refreshMultiLine(ptr noundef %0) #0 !dbg !1077 {
  %2 = alloca ptr, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1078, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1080, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1085, metadata !DIExpression()), !dbg !1086
  %11 = load ptr, ptr %2, align 8, !dbg !1087
  %12 = getelementptr inbounds %struct.linenoiseState, ptr %11, i32 0, i32 3, !dbg !1088
  %13 = load ptr, ptr %12, align 8, !dbg !1088
  %14 = call i64 @strlen(ptr noundef %13) #10, !dbg !1089
  %15 = trunc i64 %14 to i32, !dbg !1089
  store i32 %15, ptr %4, align 4, !dbg !1086
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1090, metadata !DIExpression()), !dbg !1091
  %16 = load i32, ptr %4, align 4, !dbg !1092
  %17 = sext i32 %16 to i64, !dbg !1092
  %18 = load ptr, ptr %2, align 8, !dbg !1093
  %19 = getelementptr inbounds %struct.linenoiseState, ptr %18, i32 0, i32 7, !dbg !1094
  %20 = load i64, ptr %19, align 8, !dbg !1094
  %21 = add i64 %17, %20, !dbg !1095
  %22 = load ptr, ptr %2, align 8, !dbg !1096
  %23 = getelementptr inbounds %struct.linenoiseState, ptr %22, i32 0, i32 8, !dbg !1097
  %24 = load i64, ptr %23, align 8, !dbg !1097
  %25 = add i64 %21, %24, !dbg !1098
  %26 = sub i64 %25, 1, !dbg !1099
  %27 = load ptr, ptr %2, align 8, !dbg !1100
  %28 = getelementptr inbounds %struct.linenoiseState, ptr %27, i32 0, i32 8, !dbg !1101
  %29 = load i64, ptr %28, align 8, !dbg !1101
  %30 = udiv i64 %26, %29, !dbg !1102
  %31 = trunc i64 %30 to i32, !dbg !1103
  store i32 %31, ptr %5, align 4, !dbg !1091
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1104, metadata !DIExpression()), !dbg !1105
  %32 = load i32, ptr %4, align 4, !dbg !1106
  %33 = sext i32 %32 to i64, !dbg !1106
  %34 = load ptr, ptr %2, align 8, !dbg !1107
  %35 = getelementptr inbounds %struct.linenoiseState, ptr %34, i32 0, i32 6, !dbg !1108
  %36 = load i64, ptr %35, align 8, !dbg !1108
  %37 = add i64 %33, %36, !dbg !1109
  %38 = load ptr, ptr %2, align 8, !dbg !1110
  %39 = getelementptr inbounds %struct.linenoiseState, ptr %38, i32 0, i32 8, !dbg !1111
  %40 = load i64, ptr %39, align 8, !dbg !1111
  %41 = add i64 %37, %40, !dbg !1112
  %42 = load ptr, ptr %2, align 8, !dbg !1113
  %43 = getelementptr inbounds %struct.linenoiseState, ptr %42, i32 0, i32 8, !dbg !1114
  %44 = load i64, ptr %43, align 8, !dbg !1114
  %45 = udiv i64 %41, %44, !dbg !1115
  %46 = trunc i64 %45 to i32, !dbg !1116
  store i32 %46, ptr %6, align 4, !dbg !1105
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1117, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1119, metadata !DIExpression()), !dbg !1120
  %47 = load ptr, ptr %2, align 8, !dbg !1121
  %48 = getelementptr inbounds %struct.linenoiseState, ptr %47, i32 0, i32 9, !dbg !1122
  %49 = load i64, ptr %48, align 8, !dbg !1122
  %50 = trunc i64 %49 to i32, !dbg !1121
  store i32 %50, ptr %8, align 4, !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1123, metadata !DIExpression()), !dbg !1124
  %51 = load ptr, ptr %2, align 8, !dbg !1125
  %52 = getelementptr inbounds %struct.linenoiseState, ptr %51, i32 0, i32 0, !dbg !1126
  %53 = load i32, ptr %52, align 8, !dbg !1126
  store i32 %53, ptr %9, align 4, !dbg !1124
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1127, metadata !DIExpression()), !dbg !1128
  %54 = load i32, ptr %5, align 4, !dbg !1129
  %55 = load ptr, ptr %2, align 8, !dbg !1131
  %56 = getelementptr inbounds %struct.linenoiseState, ptr %55, i32 0, i32 9, !dbg !1132
  %57 = load i64, ptr %56, align 8, !dbg !1132
  %58 = trunc i64 %57 to i32, !dbg !1133
  %59 = icmp sgt i32 %54, %58, !dbg !1134
  br i1 %59, label %60, label %65, !dbg !1135

60:                                               ; preds = %1
  %61 = load i32, ptr %5, align 4, !dbg !1136
  %62 = sext i32 %61 to i64, !dbg !1136
  %63 = load ptr, ptr %2, align 8, !dbg !1137
  %64 = getelementptr inbounds %struct.linenoiseState, ptr %63, i32 0, i32 9, !dbg !1138
  store i64 %62, ptr %64, align 8, !dbg !1139
  br label %65, !dbg !1137

65:                                               ; preds = %60, %1
  %66 = load i32, ptr %8, align 4, !dbg !1140
  %67 = load i32, ptr %6, align 4, !dbg !1142
  %68 = sub nsw i32 %66, %67, !dbg !1143
  %69 = icmp sgt i32 %68, 0, !dbg !1144
  br i1 %69, label %70, label %84, !dbg !1145

70:                                               ; preds = %65
  %71 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1146
  %72 = load i32, ptr %8, align 4, !dbg !1148
  %73 = load i32, ptr %6, align 4, !dbg !1149
  %74 = sub nsw i32 %72, %73, !dbg !1150
  %75 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %71, i64 noundef 64, ptr noundef @.str.5, i32 noundef %74) #13, !dbg !1151
  %76 = load i32, ptr %9, align 4, !dbg !1152
  %77 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1154
  %78 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1155
  %79 = call i64 @strlen(ptr noundef %78) #10, !dbg !1156
  %80 = call i64 @write(i32 noundef %76, ptr noundef %77, i64 noundef %79), !dbg !1157
  %81 = icmp eq i64 %80, -1, !dbg !1158
  br i1 %81, label %82, label %83, !dbg !1159

82:                                               ; preds = %70
  br label %254, !dbg !1160

83:                                               ; preds = %70
  br label %84, !dbg !1161

84:                                               ; preds = %83, %65
  store i32 0, ptr %10, align 4, !dbg !1162
  br label %85, !dbg !1164

85:                                               ; preds = %101, %84
  %86 = load i32, ptr %10, align 4, !dbg !1165
  %87 = load i32, ptr %8, align 4, !dbg !1167
  %88 = sub nsw i32 %87, 1, !dbg !1168
  %89 = icmp slt i32 %86, %88, !dbg !1169
  br i1 %89, label %90, label %104, !dbg !1170

90:                                               ; preds = %85
  %91 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1171
  %92 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %91, i64 noundef 64, ptr noundef @.str.6) #13, !dbg !1173
  %93 = load i32, ptr %9, align 4, !dbg !1174
  %94 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1176
  %95 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1177
  %96 = call i64 @strlen(ptr noundef %95) #10, !dbg !1178
  %97 = call i64 @write(i32 noundef %93, ptr noundef %94, i64 noundef %96), !dbg !1179
  %98 = icmp eq i64 %97, -1, !dbg !1180
  br i1 %98, label %99, label %100, !dbg !1181

99:                                               ; preds = %90
  br label %254, !dbg !1182

100:                                              ; preds = %90
  br label %101, !dbg !1183

101:                                              ; preds = %100
  %102 = load i32, ptr %10, align 4, !dbg !1184
  %103 = add nsw i32 %102, 1, !dbg !1184
  store i32 %103, ptr %10, align 4, !dbg !1184
  br label %85, !dbg !1185, !llvm.loop !1186

104:                                              ; preds = %85
  %105 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1188
  %106 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %105, i64 noundef 64, ptr noundef @.str.7) #13, !dbg !1189
  %107 = load i32, ptr %9, align 4, !dbg !1190
  %108 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1192
  %109 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1193
  %110 = call i64 @strlen(ptr noundef %109) #10, !dbg !1194
  %111 = call i64 @write(i32 noundef %107, ptr noundef %108, i64 noundef %110), !dbg !1195
  %112 = icmp eq i64 %111, -1, !dbg !1196
  br i1 %112, label %113, label %114, !dbg !1197

113:                                              ; preds = %104
  br label %254, !dbg !1198

114:                                              ; preds = %104
  %115 = load i32, ptr %9, align 4, !dbg !1199
  %116 = load ptr, ptr %2, align 8, !dbg !1201
  %117 = getelementptr inbounds %struct.linenoiseState, ptr %116, i32 0, i32 3, !dbg !1202
  %118 = load ptr, ptr %117, align 8, !dbg !1202
  %119 = load ptr, ptr %2, align 8, !dbg !1203
  %120 = getelementptr inbounds %struct.linenoiseState, ptr %119, i32 0, i32 3, !dbg !1204
  %121 = load ptr, ptr %120, align 8, !dbg !1204
  %122 = call i64 @strlen(ptr noundef %121) #10, !dbg !1205
  %123 = call i64 @write(i32 noundef %115, ptr noundef %118, i64 noundef %122), !dbg !1206
  %124 = icmp eq i64 %123, -1, !dbg !1207
  br i1 %124, label %125, label %126, !dbg !1208

125:                                              ; preds = %114
  br label %254, !dbg !1209

126:                                              ; preds = %114
  %127 = load i32, ptr %9, align 4, !dbg !1210
  %128 = load ptr, ptr %2, align 8, !dbg !1212
  %129 = getelementptr inbounds %struct.linenoiseState, ptr %128, i32 0, i32 1, !dbg !1213
  %130 = load ptr, ptr %129, align 8, !dbg !1213
  %131 = load ptr, ptr %2, align 8, !dbg !1214
  %132 = getelementptr inbounds %struct.linenoiseState, ptr %131, i32 0, i32 7, !dbg !1215
  %133 = load i64, ptr %132, align 8, !dbg !1215
  %134 = call i64 @write(i32 noundef %127, ptr noundef %130, i64 noundef %133), !dbg !1216
  %135 = icmp eq i64 %134, -1, !dbg !1217
  br i1 %135, label %136, label %137, !dbg !1218

136:                                              ; preds = %126
  br label %254, !dbg !1219

137:                                              ; preds = %126
  %138 = load ptr, ptr %2, align 8, !dbg !1220
  %139 = getelementptr inbounds %struct.linenoiseState, ptr %138, i32 0, i32 5, !dbg !1222
  %140 = load i64, ptr %139, align 8, !dbg !1222
  %141 = icmp ne i64 %140, 0, !dbg !1220
  br i1 %141, label %142, label %192, !dbg !1223

142:                                              ; preds = %137
  %143 = load ptr, ptr %2, align 8, !dbg !1224
  %144 = getelementptr inbounds %struct.linenoiseState, ptr %143, i32 0, i32 5, !dbg !1225
  %145 = load i64, ptr %144, align 8, !dbg !1225
  %146 = load ptr, ptr %2, align 8, !dbg !1226
  %147 = getelementptr inbounds %struct.linenoiseState, ptr %146, i32 0, i32 7, !dbg !1227
  %148 = load i64, ptr %147, align 8, !dbg !1227
  %149 = icmp eq i64 %145, %148, !dbg !1228
  br i1 %149, label %150, label %192, !dbg !1229

150:                                              ; preds = %142
  %151 = load ptr, ptr %2, align 8, !dbg !1230
  %152 = getelementptr inbounds %struct.linenoiseState, ptr %151, i32 0, i32 5, !dbg !1231
  %153 = load i64, ptr %152, align 8, !dbg !1231
  %154 = load i32, ptr %4, align 4, !dbg !1232
  %155 = sext i32 %154 to i64, !dbg !1232
  %156 = add i64 %153, %155, !dbg !1233
  %157 = load ptr, ptr %2, align 8, !dbg !1234
  %158 = getelementptr inbounds %struct.linenoiseState, ptr %157, i32 0, i32 8, !dbg !1235
  %159 = load i64, ptr %158, align 8, !dbg !1235
  %160 = urem i64 %156, %159, !dbg !1236
  %161 = icmp eq i64 %160, 0, !dbg !1237
  br i1 %161, label %162, label %192, !dbg !1238

162:                                              ; preds = %150
  %163 = load i32, ptr %9, align 4, !dbg !1239
  %164 = call i64 @write(i32 noundef %163, ptr noundef @.str.8, i64 noundef 1), !dbg !1242
  %165 = icmp eq i64 %164, -1, !dbg !1243
  br i1 %165, label %166, label %167, !dbg !1244

166:                                              ; preds = %162
  br label %254, !dbg !1245

167:                                              ; preds = %162
  %168 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1246
  %169 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %168, i64 noundef 64, ptr noundef @.str.9) #13, !dbg !1247
  %170 = load i32, ptr %9, align 4, !dbg !1248
  %171 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1250
  %172 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1251
  %173 = call i64 @strlen(ptr noundef %172) #10, !dbg !1252
  %174 = call i64 @write(i32 noundef %170, ptr noundef %171, i64 noundef %173), !dbg !1253
  %175 = icmp eq i64 %174, -1, !dbg !1254
  br i1 %175, label %176, label %177, !dbg !1255

176:                                              ; preds = %167
  br label %254, !dbg !1256

177:                                              ; preds = %167
  %178 = load i32, ptr %5, align 4, !dbg !1257
  %179 = add nsw i32 %178, 1, !dbg !1257
  store i32 %179, ptr %5, align 4, !dbg !1257
  %180 = load i32, ptr %5, align 4, !dbg !1258
  %181 = load ptr, ptr %2, align 8, !dbg !1260
  %182 = getelementptr inbounds %struct.linenoiseState, ptr %181, i32 0, i32 9, !dbg !1261
  %183 = load i64, ptr %182, align 8, !dbg !1261
  %184 = trunc i64 %183 to i32, !dbg !1262
  %185 = icmp sgt i32 %180, %184, !dbg !1263
  br i1 %185, label %186, label %191, !dbg !1264

186:                                              ; preds = %177
  %187 = load i32, ptr %5, align 4, !dbg !1265
  %188 = sext i32 %187 to i64, !dbg !1265
  %189 = load ptr, ptr %2, align 8, !dbg !1266
  %190 = getelementptr inbounds %struct.linenoiseState, ptr %189, i32 0, i32 9, !dbg !1267
  store i64 %188, ptr %190, align 8, !dbg !1268
  br label %191, !dbg !1266

191:                                              ; preds = %186, %177
  br label %192, !dbg !1269

192:                                              ; preds = %191, %150, %142, %137
  %193 = load i32, ptr %4, align 4, !dbg !1270
  %194 = sext i32 %193 to i64, !dbg !1270
  %195 = load ptr, ptr %2, align 8, !dbg !1271
  %196 = getelementptr inbounds %struct.linenoiseState, ptr %195, i32 0, i32 5, !dbg !1272
  %197 = load i64, ptr %196, align 8, !dbg !1272
  %198 = add i64 %194, %197, !dbg !1273
  %199 = load ptr, ptr %2, align 8, !dbg !1274
  %200 = getelementptr inbounds %struct.linenoiseState, ptr %199, i32 0, i32 8, !dbg !1275
  %201 = load i64, ptr %200, align 8, !dbg !1275
  %202 = add i64 %198, %201, !dbg !1276
  %203 = load ptr, ptr %2, align 8, !dbg !1277
  %204 = getelementptr inbounds %struct.linenoiseState, ptr %203, i32 0, i32 8, !dbg !1278
  %205 = load i64, ptr %204, align 8, !dbg !1278
  %206 = udiv i64 %202, %205, !dbg !1279
  %207 = trunc i64 %206 to i32, !dbg !1280
  store i32 %207, ptr %7, align 4, !dbg !1281
  %208 = load i32, ptr %5, align 4, !dbg !1282
  %209 = load i32, ptr %7, align 4, !dbg !1284
  %210 = sub nsw i32 %208, %209, !dbg !1285
  %211 = icmp sgt i32 %210, 0, !dbg !1286
  br i1 %211, label %212, label %226, !dbg !1287

212:                                              ; preds = %192
  %213 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1288
  %214 = load i32, ptr %5, align 4, !dbg !1290
  %215 = load i32, ptr %7, align 4, !dbg !1291
  %216 = sub nsw i32 %214, %215, !dbg !1292
  %217 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %213, i64 noundef 64, ptr noundef @.str.10, i32 noundef %216) #13, !dbg !1293
  %218 = load i32, ptr %9, align 4, !dbg !1294
  %219 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1296
  %220 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1297
  %221 = call i64 @strlen(ptr noundef %220) #10, !dbg !1298
  %222 = call i64 @write(i32 noundef %218, ptr noundef %219, i64 noundef %221), !dbg !1299
  %223 = icmp eq i64 %222, -1, !dbg !1300
  br i1 %223, label %224, label %225, !dbg !1301

224:                                              ; preds = %212
  br label %254, !dbg !1302

225:                                              ; preds = %212
  br label %226, !dbg !1303

226:                                              ; preds = %225, %192
  %227 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1304
  %228 = load i32, ptr %4, align 4, !dbg !1305
  %229 = load ptr, ptr %2, align 8, !dbg !1306
  %230 = getelementptr inbounds %struct.linenoiseState, ptr %229, i32 0, i32 5, !dbg !1307
  %231 = load i64, ptr %230, align 8, !dbg !1307
  %232 = trunc i64 %231 to i32, !dbg !1308
  %233 = add nsw i32 %228, %232, !dbg !1309
  %234 = load ptr, ptr %2, align 8, !dbg !1310
  %235 = getelementptr inbounds %struct.linenoiseState, ptr %234, i32 0, i32 8, !dbg !1311
  %236 = load i64, ptr %235, align 8, !dbg !1311
  %237 = trunc i64 %236 to i32, !dbg !1312
  %238 = srem i32 %233, %237, !dbg !1313
  %239 = add nsw i32 1, %238, !dbg !1314
  %240 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %227, i64 noundef 64, ptr noundef @.str.11, i32 noundef %239) #13, !dbg !1315
  %241 = load i32, ptr %9, align 4, !dbg !1316
  %242 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1318
  %243 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1319
  %244 = call i64 @strlen(ptr noundef %243) #10, !dbg !1320
  %245 = call i64 @write(i32 noundef %241, ptr noundef %242, i64 noundef %244), !dbg !1321
  %246 = icmp eq i64 %245, -1, !dbg !1322
  br i1 %246, label %247, label %248, !dbg !1323

247:                                              ; preds = %226
  br label %254, !dbg !1324

248:                                              ; preds = %226
  %249 = load ptr, ptr %2, align 8, !dbg !1325
  %250 = getelementptr inbounds %struct.linenoiseState, ptr %249, i32 0, i32 5, !dbg !1326
  %251 = load i64, ptr %250, align 8, !dbg !1326
  %252 = load ptr, ptr %2, align 8, !dbg !1327
  %253 = getelementptr inbounds %struct.linenoiseState, ptr %252, i32 0, i32 6, !dbg !1328
  store i64 %251, ptr %253, align 8, !dbg !1329
  br label %254, !dbg !1330

254:                                              ; preds = %248, %247, %224, %176, %166, %136, %125, %113, %99, %82
  ret void, !dbg !1330
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refreshSingleLine(ptr noundef %0) #0 !dbg !1331 {
  %2 = alloca ptr, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1332, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1334, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1336, metadata !DIExpression()), !dbg !1337
  %9 = load ptr, ptr %2, align 8, !dbg !1338
  %10 = getelementptr inbounds %struct.linenoiseState, ptr %9, i32 0, i32 3, !dbg !1339
  %11 = load ptr, ptr %10, align 8, !dbg !1339
  %12 = call i64 @strlen(ptr noundef %11) #10, !dbg !1340
  store i64 %12, ptr %4, align 8, !dbg !1337
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1341, metadata !DIExpression()), !dbg !1342
  %13 = load ptr, ptr %2, align 8, !dbg !1343
  %14 = getelementptr inbounds %struct.linenoiseState, ptr %13, i32 0, i32 0, !dbg !1344
  %15 = load i32, ptr %14, align 8, !dbg !1344
  store i32 %15, ptr %5, align 4, !dbg !1342
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1345, metadata !DIExpression()), !dbg !1346
  %16 = load ptr, ptr %2, align 8, !dbg !1347
  %17 = getelementptr inbounds %struct.linenoiseState, ptr %16, i32 0, i32 1, !dbg !1348
  %18 = load ptr, ptr %17, align 8, !dbg !1348
  store ptr %18, ptr %6, align 8, !dbg !1346
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1349, metadata !DIExpression()), !dbg !1350
  %19 = load ptr, ptr %2, align 8, !dbg !1351
  %20 = getelementptr inbounds %struct.linenoiseState, ptr %19, i32 0, i32 7, !dbg !1352
  %21 = load i64, ptr %20, align 8, !dbg !1352
  store i64 %21, ptr %7, align 8, !dbg !1350
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1353, metadata !DIExpression()), !dbg !1354
  %22 = load ptr, ptr %2, align 8, !dbg !1355
  %23 = getelementptr inbounds %struct.linenoiseState, ptr %22, i32 0, i32 5, !dbg !1356
  %24 = load i64, ptr %23, align 8, !dbg !1356
  store i64 %24, ptr %8, align 8, !dbg !1354
  br label %25, !dbg !1357

25:                                               ; preds = %33, %1
  %26 = load i64, ptr %4, align 8, !dbg !1358
  %27 = load i64, ptr %8, align 8, !dbg !1359
  %28 = add i64 %26, %27, !dbg !1360
  %29 = load ptr, ptr %2, align 8, !dbg !1361
  %30 = getelementptr inbounds %struct.linenoiseState, ptr %29, i32 0, i32 8, !dbg !1362
  %31 = load i64, ptr %30, align 8, !dbg !1362
  %32 = icmp uge i64 %28, %31, !dbg !1363
  br i1 %32, label %33, label %40, !dbg !1357

33:                                               ; preds = %25
  %34 = load ptr, ptr %6, align 8, !dbg !1364
  %35 = getelementptr inbounds i8, ptr %34, i32 1, !dbg !1364
  store ptr %35, ptr %6, align 8, !dbg !1364
  %36 = load i64, ptr %7, align 8, !dbg !1366
  %37 = add i64 %36, -1, !dbg !1366
  store i64 %37, ptr %7, align 8, !dbg !1366
  %38 = load i64, ptr %8, align 8, !dbg !1367
  %39 = add i64 %38, -1, !dbg !1367
  store i64 %39, ptr %8, align 8, !dbg !1367
  br label %25, !dbg !1357, !llvm.loop !1368

40:                                               ; preds = %25
  br label %41, !dbg !1370

41:                                               ; preds = %49, %40
  %42 = load i64, ptr %4, align 8, !dbg !1371
  %43 = load i64, ptr %7, align 8, !dbg !1372
  %44 = add i64 %42, %43, !dbg !1373
  %45 = load ptr, ptr %2, align 8, !dbg !1374
  %46 = getelementptr inbounds %struct.linenoiseState, ptr %45, i32 0, i32 8, !dbg !1375
  %47 = load i64, ptr %46, align 8, !dbg !1375
  %48 = icmp ugt i64 %44, %47, !dbg !1376
  br i1 %48, label %49, label %52, !dbg !1370

49:                                               ; preds = %41
  %50 = load i64, ptr %7, align 8, !dbg !1377
  %51 = add i64 %50, -1, !dbg !1377
  store i64 %51, ptr %7, align 8, !dbg !1377
  br label %41, !dbg !1370, !llvm.loop !1379

52:                                               ; preds = %41
  %53 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1381
  %54 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %53, i64 noundef 64, ptr noundef @.str.9) #13, !dbg !1382
  %55 = load i32, ptr %5, align 4, !dbg !1383
  %56 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1385
  %57 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1386
  %58 = call i64 @strlen(ptr noundef %57) #10, !dbg !1387
  %59 = call i64 @write(i32 noundef %55, ptr noundef %56, i64 noundef %58), !dbg !1388
  %60 = icmp eq i64 %59, -1, !dbg !1389
  br i1 %60, label %61, label %62, !dbg !1390

61:                                               ; preds = %52
  br label %105, !dbg !1391

62:                                               ; preds = %52
  %63 = load i32, ptr %5, align 4, !dbg !1392
  %64 = load ptr, ptr %2, align 8, !dbg !1394
  %65 = getelementptr inbounds %struct.linenoiseState, ptr %64, i32 0, i32 3, !dbg !1395
  %66 = load ptr, ptr %65, align 8, !dbg !1395
  %67 = load ptr, ptr %2, align 8, !dbg !1396
  %68 = getelementptr inbounds %struct.linenoiseState, ptr %67, i32 0, i32 3, !dbg !1397
  %69 = load ptr, ptr %68, align 8, !dbg !1397
  %70 = call i64 @strlen(ptr noundef %69) #10, !dbg !1398
  %71 = call i64 @write(i32 noundef %63, ptr noundef %66, i64 noundef %70), !dbg !1399
  %72 = icmp eq i64 %71, -1, !dbg !1400
  br i1 %72, label %73, label %74, !dbg !1401

73:                                               ; preds = %62
  br label %105, !dbg !1402

74:                                               ; preds = %62
  %75 = load i32, ptr %5, align 4, !dbg !1403
  %76 = load ptr, ptr %6, align 8, !dbg !1405
  %77 = load i64, ptr %7, align 8, !dbg !1406
  %78 = call i64 @write(i32 noundef %75, ptr noundef %76, i64 noundef %77), !dbg !1407
  %79 = icmp eq i64 %78, -1, !dbg !1408
  br i1 %79, label %80, label %81, !dbg !1409

80:                                               ; preds = %74
  br label %105, !dbg !1410

81:                                               ; preds = %74
  %82 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1411
  %83 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %82, i64 noundef 64, ptr noundef @.str.12) #13, !dbg !1412
  %84 = load i32, ptr %5, align 4, !dbg !1413
  %85 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1415
  %86 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1416
  %87 = call i64 @strlen(ptr noundef %86) #10, !dbg !1417
  %88 = call i64 @write(i32 noundef %84, ptr noundef %85, i64 noundef %87), !dbg !1418
  %89 = icmp eq i64 %88, -1, !dbg !1419
  br i1 %89, label %90, label %91, !dbg !1420

90:                                               ; preds = %81
  br label %105, !dbg !1421

91:                                               ; preds = %81
  %92 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1422
  %93 = load i64, ptr %8, align 8, !dbg !1423
  %94 = load i64, ptr %4, align 8, !dbg !1424
  %95 = add i64 %93, %94, !dbg !1425
  %96 = trunc i64 %95 to i32, !dbg !1426
  %97 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %92, i64 noundef 64, ptr noundef @.str.13, i32 noundef %96) #13, !dbg !1427
  %98 = load i32, ptr %5, align 4, !dbg !1428
  %99 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1430
  %100 = getelementptr inbounds [64 x i8], ptr %3, i64 0, i64 0, !dbg !1431
  %101 = call i64 @strlen(ptr noundef %100) #10, !dbg !1432
  %102 = call i64 @write(i32 noundef %98, ptr noundef %99, i64 noundef %101), !dbg !1433
  %103 = icmp eq i64 %102, -1, !dbg !1434
  br i1 %103, label %104, label %105, !dbg !1435

104:                                              ; preds = %91
  br label %105, !dbg !1436

105:                                              ; preds = %61, %73, %80, %90, %104, %91
  ret void, !dbg !1437
}

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #7

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #7

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #9

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enableRawMode(i32 noundef %0) #0 !dbg !1438 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.termios, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1439, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1441, metadata !DIExpression()), !dbg !1442
  %5 = call i32 @isatty(i32 noundef 0) #13, !dbg !1443
  %6 = icmp ne i32 %5, 0, !dbg !1443
  br i1 %6, label %8, label %7, !dbg !1445

7:                                                ; preds = %1
  br label %40, !dbg !1446

8:                                                ; preds = %1
  %9 = load i32, ptr @atexit_registered, align 4, !dbg !1447
  %10 = icmp ne i32 %9, 0, !dbg !1447
  br i1 %10, label %13, label %11, !dbg !1449

11:                                               ; preds = %8
  %12 = call i32 @atexit(ptr noundef @linenoiseAtExit) #13, !dbg !1450
  store i32 1, ptr @atexit_registered, align 4, !dbg !1452
  br label %13, !dbg !1453

13:                                               ; preds = %11, %8
  %14 = load i32, ptr %3, align 4, !dbg !1454
  %15 = call i32 @tcgetattr(i32 noundef %14, ptr noundef @orig_termios) #13, !dbg !1456
  %16 = icmp eq i32 %15, -1, !dbg !1457
  br i1 %16, label %17, label %18, !dbg !1458

17:                                               ; preds = %13
  br label %40, !dbg !1459

18:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 @orig_termios, i64 60, i1 false), !dbg !1460
  %19 = getelementptr inbounds %struct.termios, ptr %4, i32 0, i32 0, !dbg !1461
  %20 = load i32, ptr %19, align 4, !dbg !1462
  %21 = and i32 %20, -1331, !dbg !1462
  store i32 %21, ptr %19, align 4, !dbg !1462
  %22 = getelementptr inbounds %struct.termios, ptr %4, i32 0, i32 1, !dbg !1463
  %23 = load i32, ptr %22, align 4, !dbg !1464
  %24 = and i32 %23, -2, !dbg !1464
  store i32 %24, ptr %22, align 4, !dbg !1464
  %25 = getelementptr inbounds %struct.termios, ptr %4, i32 0, i32 2, !dbg !1465
  %26 = load i32, ptr %25, align 4, !dbg !1466
  %27 = or i32 %26, 48, !dbg !1466
  store i32 %27, ptr %25, align 4, !dbg !1466
  %28 = getelementptr inbounds %struct.termios, ptr %4, i32 0, i32 3, !dbg !1467
  %29 = load i32, ptr %28, align 4, !dbg !1468
  %30 = and i32 %29, -32780, !dbg !1468
  store i32 %30, ptr %28, align 4, !dbg !1468
  %31 = getelementptr inbounds %struct.termios, ptr %4, i32 0, i32 5, !dbg !1469
  %32 = getelementptr inbounds [32 x i8], ptr %31, i64 0, i64 6, !dbg !1470
  store i8 1, ptr %32, align 1, !dbg !1471
  %33 = getelementptr inbounds %struct.termios, ptr %4, i32 0, i32 5, !dbg !1472
  %34 = getelementptr inbounds [32 x i8], ptr %33, i64 0, i64 5, !dbg !1473
  store i8 0, ptr %34, align 1, !dbg !1474
  %35 = load i32, ptr %3, align 4, !dbg !1475
  %36 = call i32 @tcsetattr(i32 noundef %35, i32 noundef 2, ptr noundef %4) #13, !dbg !1477
  %37 = icmp slt i32 %36, 0, !dbg !1478
  br i1 %37, label %38, label %39, !dbg !1479

38:                                               ; preds = %18
  br label %40, !dbg !1480

39:                                               ; preds = %18
  store i32 1, ptr @rawmode, align 4, !dbg !1481
  store i32 0, ptr %2, align 4, !dbg !1482
  br label %42, !dbg !1482

40:                                               ; preds = %38, %17, %7
  call void @llvm.dbg.label(metadata !1483), !dbg !1484
  %41 = call ptr @__errno_location() #14, !dbg !1485
  store i32 25, ptr %41, align 4, !dbg !1486
  store i32 -1, ptr %2, align 4, !dbg !1487
  br label %42, !dbg !1487

42:                                               ; preds = %40, %39
  %43 = load i32, ptr %2, align 4, !dbg !1488
  ret i32 %43, !dbg !1488
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linenoiseEdit(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 !dbg !1489 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.linenoiseState, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca [2 x i8], align 1
  %14 = alloca [2 x i8], align 1
  %15 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1492, metadata !DIExpression()), !dbg !1493
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1494, metadata !DIExpression()), !dbg !1495
  store i64 %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1496, metadata !DIExpression()), !dbg !1497
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1498, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1500, metadata !DIExpression()), !dbg !1501
  %16 = load i32, ptr %6, align 4, !dbg !1502
  %17 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 0, !dbg !1503
  store i32 %16, ptr %17, align 8, !dbg !1504
  %18 = load ptr, ptr %7, align 8, !dbg !1505
  %19 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 1, !dbg !1506
  store ptr %18, ptr %19, align 8, !dbg !1507
  %20 = load i64, ptr %8, align 8, !dbg !1508
  %21 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 2, !dbg !1509
  store i64 %20, ptr %21, align 8, !dbg !1510
  %22 = load ptr, ptr %9, align 8, !dbg !1511
  %23 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 3, !dbg !1512
  store ptr %22, ptr %23, align 8, !dbg !1513
  %24 = load ptr, ptr %9, align 8, !dbg !1514
  %25 = call i64 @strlen(ptr noundef %24) #10, !dbg !1515
  %26 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 4, !dbg !1516
  store i64 %25, ptr %26, align 8, !dbg !1517
  %27 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 5, !dbg !1518
  store i64 0, ptr %27, align 8, !dbg !1519
  %28 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 6, !dbg !1520
  store i64 0, ptr %28, align 8, !dbg !1521
  %29 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 7, !dbg !1522
  store i64 0, ptr %29, align 8, !dbg !1523
  %30 = call i32 @getColumns(), !dbg !1524
  %31 = sext i32 %30 to i64, !dbg !1524
  %32 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 8, !dbg !1525
  store i64 %31, ptr %32, align 8, !dbg !1526
  %33 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 9, !dbg !1527
  store i64 0, ptr %33, align 8, !dbg !1528
  %34 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 10, !dbg !1529
  store i32 0, ptr %34, align 8, !dbg !1530
  %35 = load ptr, ptr %7, align 8, !dbg !1531
  %36 = getelementptr inbounds i8, ptr %35, i64 0, !dbg !1531
  store i8 0, ptr %36, align 1, !dbg !1532
  %37 = load i64, ptr %8, align 8, !dbg !1533
  %38 = add i64 %37, -1, !dbg !1533
  store i64 %38, ptr %8, align 8, !dbg !1533
  %39 = call i32 @linenoiseHistoryAdd(ptr noundef @.str.17), !dbg !1534
  %40 = load i32, ptr %6, align 4, !dbg !1535
  %41 = load ptr, ptr %9, align 8, !dbg !1537
  %42 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 4, !dbg !1538
  %43 = load i64, ptr %42, align 8, !dbg !1538
  %44 = call i64 @write(i32 noundef %40, ptr noundef %41, i64 noundef %43), !dbg !1539
  %45 = icmp eq i64 %44, -1, !dbg !1540
  br i1 %45, label %46, label %47, !dbg !1541

46:                                               ; preds = %4
  store i32 -1, ptr %5, align 4, !dbg !1542
  br label %278, !dbg !1542

47:                                               ; preds = %4
  br label %48, !dbg !1543

48:                                               ; preds = %47, %79, %277
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1544, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1547, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1549, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1551, metadata !DIExpression()), !dbg !1552
  %49 = load i32, ptr %6, align 4, !dbg !1553
  %50 = call i64 @read(i32 noundef %49, ptr noundef %11, i64 noundef 1), !dbg !1554
  %51 = trunc i64 %50 to i32, !dbg !1554
  store i32 %51, ptr %12, align 4, !dbg !1555
  %52 = load i32, ptr %12, align 4, !dbg !1556
  %53 = icmp sle i32 %52, 0, !dbg !1558
  br i1 %53, label %54, label %58, !dbg !1559

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 7, !dbg !1560
  %56 = load i64, ptr %55, align 8, !dbg !1560
  %57 = trunc i64 %56 to i32, !dbg !1561
  store i32 %57, ptr %5, align 4, !dbg !1562
  br label %278, !dbg !1562

58:                                               ; preds = %48
  %59 = load i8, ptr %11, align 1, !dbg !1563
  %60 = sext i8 %59 to i32, !dbg !1563
  %61 = icmp eq i32 %60, 9, !dbg !1565
  br i1 %61, label %62, label %81, !dbg !1566

62:                                               ; preds = %58
  %63 = load ptr, ptr @completionCallback, align 8, !dbg !1567
  %64 = icmp ne ptr %63, null, !dbg !1568
  br i1 %64, label %65, label %81, !dbg !1569

65:                                               ; preds = %62
  %66 = call i32 @completeLine(ptr noundef %10), !dbg !1570
  %67 = trunc i32 %66 to i8, !dbg !1570
  store i8 %67, ptr %11, align 1, !dbg !1572
  %68 = load i8, ptr %11, align 1, !dbg !1573
  %69 = sext i8 %68 to i32, !dbg !1573
  %70 = icmp slt i32 %69, 0, !dbg !1575
  br i1 %70, label %71, label %75, !dbg !1576

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 7, !dbg !1577
  %73 = load i64, ptr %72, align 8, !dbg !1577
  %74 = trunc i64 %73 to i32, !dbg !1578
  store i32 %74, ptr %5, align 4, !dbg !1579
  br label %278, !dbg !1579

75:                                               ; preds = %65
  %76 = load i8, ptr %11, align 1, !dbg !1580
  %77 = sext i8 %76 to i32, !dbg !1580
  %78 = icmp eq i32 %77, 0, !dbg !1582
  br i1 %78, label %79, label %80, !dbg !1583

79:                                               ; preds = %75
  br label %48, !dbg !1584, !llvm.loop !1585

80:                                               ; preds = %75
  br label %81, !dbg !1587

81:                                               ; preds = %80, %62, %58
  %82 = load i8, ptr %11, align 1, !dbg !1588
  %83 = sext i8 %82 to i32, !dbg !1588
  switch i32 %83, label %249 [
    i32 13, label %84
    i32 3, label %95
    i32 127, label %97
    i32 8, label %97
    i32 4, label %98
    i32 20, label %112
    i32 2, label %158
    i32 6, label %159
    i32 16, label %160
    i32 14, label %161
    i32 27, label %162
    i32 21, label %256
    i32 11, label %261
    i32 1, label %269
    i32 5, label %271
    i32 12, label %275
    i32 23, label %276
  ], !dbg !1589

84:                                               ; preds = %81
  %85 = load i32, ptr @history_len, align 4, !dbg !1590
  %86 = add nsw i32 %85, -1, !dbg !1590
  store i32 %86, ptr @history_len, align 4, !dbg !1590
  %87 = load ptr, ptr @history, align 8, !dbg !1592
  %88 = load i32, ptr @history_len, align 4, !dbg !1593
  %89 = sext i32 %88 to i64, !dbg !1592
  %90 = getelementptr inbounds ptr, ptr %87, i64 %89, !dbg !1592
  %91 = load ptr, ptr %90, align 8, !dbg !1592
  call void @free(ptr noundef %91) #13, !dbg !1594
  %92 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 7, !dbg !1595
  %93 = load i64, ptr %92, align 8, !dbg !1595
  %94 = trunc i64 %93 to i32, !dbg !1596
  store i32 %94, ptr %5, align 4, !dbg !1597
  br label %278, !dbg !1597

95:                                               ; preds = %81
  %96 = call ptr @__errno_location() #14, !dbg !1598
  store i32 11, ptr %96, align 4, !dbg !1599
  store i32 -1, ptr %5, align 4, !dbg !1600
  br label %278, !dbg !1600

97:                                               ; preds = %81, %81
  call void @linenoiseEditBackspace(ptr noundef %10), !dbg !1601
  br label %277, !dbg !1602

98:                                               ; preds = %81
  %99 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 7, !dbg !1603
  %100 = load i64, ptr %99, align 8, !dbg !1603
  %101 = icmp ugt i64 %100, 0, !dbg !1605
  br i1 %101, label %102, label %103, !dbg !1606

102:                                              ; preds = %98
  call void @linenoiseEditDelete(ptr noundef %10), !dbg !1607
  br label %111, !dbg !1609

103:                                              ; preds = %98
  %104 = load i32, ptr @history_len, align 4, !dbg !1610
  %105 = add nsw i32 %104, -1, !dbg !1610
  store i32 %105, ptr @history_len, align 4, !dbg !1610
  %106 = load ptr, ptr @history, align 8, !dbg !1612
  %107 = load i32, ptr @history_len, align 4, !dbg !1613
  %108 = sext i32 %107 to i64, !dbg !1612
  %109 = getelementptr inbounds ptr, ptr %106, i64 %108, !dbg !1612
  %110 = load ptr, ptr %109, align 8, !dbg !1612
  call void @free(ptr noundef %110) #13, !dbg !1614
  store i32 -1, ptr %5, align 4, !dbg !1615
  br label %278, !dbg !1615

111:                                              ; preds = %102
  br label %277, !dbg !1616

112:                                              ; preds = %81
  %113 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 5, !dbg !1617
  %114 = load i64, ptr %113, align 8, !dbg !1617
  %115 = icmp ugt i64 %114, 0, !dbg !1619
  br i1 %115, label %116, label %157, !dbg !1620

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 5, !dbg !1621
  %118 = load i64, ptr %117, align 8, !dbg !1621
  %119 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 7, !dbg !1622
  %120 = load i64, ptr %119, align 8, !dbg !1622
  %121 = icmp ult i64 %118, %120, !dbg !1623
  br i1 %121, label %122, label %157, !dbg !1624

122:                                              ; preds = %116
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1625, metadata !DIExpression()), !dbg !1627
  %123 = load ptr, ptr %7, align 8, !dbg !1628
  %124 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 5, !dbg !1629
  %125 = load i64, ptr %124, align 8, !dbg !1629
  %126 = sub i64 %125, 1, !dbg !1630
  %127 = getelementptr inbounds i8, ptr %123, i64 %126, !dbg !1628
  %128 = load i8, ptr %127, align 1, !dbg !1628
  %129 = sext i8 %128 to i32, !dbg !1628
  store i32 %129, ptr %15, align 4, !dbg !1627
  %130 = load ptr, ptr %7, align 8, !dbg !1631
  %131 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 5, !dbg !1632
  %132 = load i64, ptr %131, align 8, !dbg !1632
  %133 = getelementptr inbounds i8, ptr %130, i64 %132, !dbg !1631
  %134 = load i8, ptr %133, align 1, !dbg !1631
  %135 = load ptr, ptr %7, align 8, !dbg !1633
  %136 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 5, !dbg !1634
  %137 = load i64, ptr %136, align 8, !dbg !1634
  %138 = sub i64 %137, 1, !dbg !1635
  %139 = getelementptr inbounds i8, ptr %135, i64 %138, !dbg !1633
  store i8 %134, ptr %139, align 1, !dbg !1636
  %140 = load i32, ptr %15, align 4, !dbg !1637
  %141 = trunc i32 %140 to i8, !dbg !1637
  %142 = load ptr, ptr %7, align 8, !dbg !1638
  %143 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 5, !dbg !1639
  %144 = load i64, ptr %143, align 8, !dbg !1639
  %145 = getelementptr inbounds i8, ptr %142, i64 %144, !dbg !1638
  store i8 %141, ptr %145, align 1, !dbg !1640
  %146 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 5, !dbg !1641
  %147 = load i64, ptr %146, align 8, !dbg !1641
  %148 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 7, !dbg !1643
  %149 = load i64, ptr %148, align 8, !dbg !1643
  %150 = sub i64 %149, 1, !dbg !1644
  %151 = icmp ne i64 %147, %150, !dbg !1645
  br i1 %151, label %152, label %156, !dbg !1646

152:                                              ; preds = %122
  %153 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 5, !dbg !1647
  %154 = load i64, ptr %153, align 8, !dbg !1648
  %155 = add i64 %154, 1, !dbg !1648
  store i64 %155, ptr %153, align 8, !dbg !1648
  br label %156, !dbg !1649

156:                                              ; preds = %152, %122
  call void @refreshLine(ptr noundef %10), !dbg !1650
  br label %157, !dbg !1651

157:                                              ; preds = %156, %116, %112
  br label %277, !dbg !1652

158:                                              ; preds = %81
  call void @linenoiseEditMoveLeft(ptr noundef %10), !dbg !1653
  br label %277, !dbg !1654

159:                                              ; preds = %81
  call void @linenoiseEditMoveRight(ptr noundef %10), !dbg !1655
  br label %277, !dbg !1656

160:                                              ; preds = %81
  call void @linenoiseEditHistoryNext(ptr noundef %10, i32 noundef 1), !dbg !1657
  br label %277, !dbg !1658

161:                                              ; preds = %81
  call void @linenoiseEditHistoryNext(ptr noundef %10, i32 noundef 0), !dbg !1659
  br label %277, !dbg !1660

162:                                              ; preds = %81
  %163 = load i32, ptr %6, align 4, !dbg !1661
  %164 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 0, !dbg !1663
  %165 = call i64 @read(i32 noundef %163, ptr noundef %164, i64 noundef 2), !dbg !1664
  %166 = icmp eq i64 %165, -1, !dbg !1665
  br i1 %166, label %167, label %168, !dbg !1666

167:                                              ; preds = %162
  br label %277, !dbg !1667

168:                                              ; preds = %162
  %169 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 0, !dbg !1668
  %170 = load i8, ptr %169, align 1, !dbg !1668
  %171 = sext i8 %170 to i32, !dbg !1668
  %172 = icmp eq i32 %171, 91, !dbg !1670
  br i1 %172, label %173, label %179, !dbg !1671

173:                                              ; preds = %168
  %174 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 1, !dbg !1672
  %175 = load i8, ptr %174, align 1, !dbg !1672
  %176 = sext i8 %175 to i32, !dbg !1672
  %177 = icmp eq i32 %176, 68, !dbg !1673
  br i1 %177, label %178, label %179, !dbg !1674

178:                                              ; preds = %173
  call void @linenoiseEditMoveLeft(ptr noundef %10), !dbg !1675
  br label %248, !dbg !1677

179:                                              ; preds = %173, %168
  %180 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 0, !dbg !1678
  %181 = load i8, ptr %180, align 1, !dbg !1678
  %182 = sext i8 %181 to i32, !dbg !1678
  %183 = icmp eq i32 %182, 91, !dbg !1680
  br i1 %183, label %184, label %190, !dbg !1681

184:                                              ; preds = %179
  %185 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 1, !dbg !1682
  %186 = load i8, ptr %185, align 1, !dbg !1682
  %187 = sext i8 %186 to i32, !dbg !1682
  %188 = icmp eq i32 %187, 67, !dbg !1683
  br i1 %188, label %189, label %190, !dbg !1684

189:                                              ; preds = %184
  call void @linenoiseEditMoveRight(ptr noundef %10), !dbg !1685
  br label %247, !dbg !1687

190:                                              ; preds = %184, %179
  %191 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 0, !dbg !1688
  %192 = load i8, ptr %191, align 1, !dbg !1688
  %193 = sext i8 %192 to i32, !dbg !1688
  %194 = icmp eq i32 %193, 91, !dbg !1690
  br i1 %194, label %195, label %212, !dbg !1691

195:                                              ; preds = %190
  %196 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 1, !dbg !1692
  %197 = load i8, ptr %196, align 1, !dbg !1692
  %198 = sext i8 %197 to i32, !dbg !1692
  %199 = icmp eq i32 %198, 65, !dbg !1693
  br i1 %199, label %205, label %200, !dbg !1694

200:                                              ; preds = %195
  %201 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 1, !dbg !1695
  %202 = load i8, ptr %201, align 1, !dbg !1695
  %203 = sext i8 %202 to i32, !dbg !1695
  %204 = icmp eq i32 %203, 66, !dbg !1696
  br i1 %204, label %205, label %212, !dbg !1697

205:                                              ; preds = %200, %195
  %206 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 1, !dbg !1698
  %207 = load i8, ptr %206, align 1, !dbg !1698
  %208 = sext i8 %207 to i32, !dbg !1698
  %209 = icmp eq i32 %208, 65, !dbg !1700
  %210 = zext i1 %209 to i64, !dbg !1701
  %211 = select i1 %209, i32 1, i32 0, !dbg !1701
  call void @linenoiseEditHistoryNext(ptr noundef %10, i32 noundef %211), !dbg !1702
  br label %246, !dbg !1703

212:                                              ; preds = %200, %190
  %213 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 0, !dbg !1704
  %214 = load i8, ptr %213, align 1, !dbg !1704
  %215 = sext i8 %214 to i32, !dbg !1704
  %216 = icmp eq i32 %215, 91, !dbg !1706
  br i1 %216, label %217, label %245, !dbg !1707

217:                                              ; preds = %212
  %218 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 1, !dbg !1708
  %219 = load i8, ptr %218, align 1, !dbg !1708
  %220 = sext i8 %219 to i32, !dbg !1708
  %221 = icmp sgt i32 %220, 48, !dbg !1709
  br i1 %221, label %222, label %245, !dbg !1710

222:                                              ; preds = %217
  %223 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 1, !dbg !1711
  %224 = load i8, ptr %223, align 1, !dbg !1711
  %225 = sext i8 %224 to i32, !dbg !1711
  %226 = icmp slt i32 %225, 55, !dbg !1712
  br i1 %226, label %227, label %245, !dbg !1713

227:                                              ; preds = %222
  %228 = load i32, ptr %6, align 4, !dbg !1714
  %229 = getelementptr inbounds [2 x i8], ptr %14, i64 0, i64 0, !dbg !1717
  %230 = call i64 @read(i32 noundef %228, ptr noundef %229, i64 noundef 2), !dbg !1718
  %231 = icmp eq i64 %230, -1, !dbg !1719
  br i1 %231, label %232, label %233, !dbg !1720

232:                                              ; preds = %227
  br label %277, !dbg !1721

233:                                              ; preds = %227
  %234 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 1, !dbg !1722
  %235 = load i8, ptr %234, align 1, !dbg !1722
  %236 = sext i8 %235 to i32, !dbg !1722
  %237 = icmp eq i32 %236, 51, !dbg !1724
  br i1 %237, label %238, label %244, !dbg !1725

238:                                              ; preds = %233
  %239 = getelementptr inbounds [2 x i8], ptr %14, i64 0, i64 0, !dbg !1726
  %240 = load i8, ptr %239, align 1, !dbg !1726
  %241 = sext i8 %240 to i32, !dbg !1726
  %242 = icmp eq i32 %241, 126, !dbg !1727
  br i1 %242, label %243, label %244, !dbg !1728

243:                                              ; preds = %238
  call void @linenoiseEditDelete(ptr noundef %10), !dbg !1729
  br label %244, !dbg !1731

244:                                              ; preds = %243, %238, %233
  br label %245, !dbg !1732

245:                                              ; preds = %244, %222, %217, %212
  br label %246

246:                                              ; preds = %245, %205
  br label %247

247:                                              ; preds = %246, %189
  br label %248

248:                                              ; preds = %247, %178
  br label %277, !dbg !1733

249:                                              ; preds = %81
  %250 = load i8, ptr %11, align 1, !dbg !1734
  %251 = sext i8 %250 to i32, !dbg !1734
  %252 = call i32 @linenoiseEditInsert(ptr noundef %10, i32 noundef %251), !dbg !1736
  %253 = icmp ne i32 %252, 0, !dbg !1736
  br i1 %253, label %254, label %255, !dbg !1737

254:                                              ; preds = %249
  store i32 -1, ptr %5, align 4, !dbg !1738
  br label %278, !dbg !1738

255:                                              ; preds = %249
  br label %277, !dbg !1739

256:                                              ; preds = %81
  %257 = load ptr, ptr %7, align 8, !dbg !1740
  %258 = getelementptr inbounds i8, ptr %257, i64 0, !dbg !1740
  store i8 0, ptr %258, align 1, !dbg !1741
  %259 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 7, !dbg !1742
  store i64 0, ptr %259, align 8, !dbg !1743
  %260 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 5, !dbg !1744
  store i64 0, ptr %260, align 8, !dbg !1745
  call void @refreshLine(ptr noundef %10), !dbg !1746
  br label %277, !dbg !1747

261:                                              ; preds = %81
  %262 = load ptr, ptr %7, align 8, !dbg !1748
  %263 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 5, !dbg !1749
  %264 = load i64, ptr %263, align 8, !dbg !1749
  %265 = getelementptr inbounds i8, ptr %262, i64 %264, !dbg !1748
  store i8 0, ptr %265, align 1, !dbg !1750
  %266 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 5, !dbg !1751
  %267 = load i64, ptr %266, align 8, !dbg !1751
  %268 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 7, !dbg !1752
  store i64 %267, ptr %268, align 8, !dbg !1753
  call void @refreshLine(ptr noundef %10), !dbg !1754
  br label %277, !dbg !1755

269:                                              ; preds = %81
  %270 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 5, !dbg !1756
  store i64 0, ptr %270, align 8, !dbg !1757
  call void @refreshLine(ptr noundef %10), !dbg !1758
  br label %277, !dbg !1759

271:                                              ; preds = %81
  %272 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 7, !dbg !1760
  %273 = load i64, ptr %272, align 8, !dbg !1760
  %274 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 5, !dbg !1761
  store i64 %273, ptr %274, align 8, !dbg !1762
  call void @refreshLine(ptr noundef %10), !dbg !1763
  br label %277, !dbg !1764

275:                                              ; preds = %81
  call void @linenoiseClearScreen(), !dbg !1765
  call void @refreshLine(ptr noundef %10), !dbg !1766
  br label %277, !dbg !1767

276:                                              ; preds = %81
  call void @linenoiseEditDeletePrevWord(ptr noundef %10), !dbg !1768
  br label %277, !dbg !1769

277:                                              ; preds = %276, %275, %271, %269, %261, %256, %255, %248, %232, %167, %161, %160, %159, %158, %157, %111, %97
  br label %48, !dbg !1543, !llvm.loop !1585

278:                                              ; preds = %254, %103, %95, %84, %71, %54, %46
  %279 = load i32, ptr %5, align 4, !dbg !1770
  ret i32 %279, !dbg !1770
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disableRawMode(i32 noundef %0) #0 !dbg !1771 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1772, metadata !DIExpression()), !dbg !1773
  %3 = load i32, ptr @rawmode, align 4, !dbg !1774
  %4 = icmp ne i32 %3, 0, !dbg !1774
  br i1 %4, label %5, label %10, !dbg !1776

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !dbg !1777
  %7 = call i32 @tcsetattr(i32 noundef %6, i32 noundef 2, ptr noundef @orig_termios) #13, !dbg !1778
  %8 = icmp ne i32 %7, -1, !dbg !1779
  br i1 %8, label %9, label %10, !dbg !1780

9:                                                ; preds = %5
  store i32 0, ptr @rawmode, align 4, !dbg !1781
  br label %10, !dbg !1782

10:                                               ; preds = %9, %5, %1
  ret void, !dbg !1783
}

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linenoiseAtExit() #0 !dbg !1784 {
  call void @disableRawMode(i32 noundef 0), !dbg !1785
  call void @freeHistory(), !dbg !1786
  ret void, !dbg !1787
}

; Function Attrs: nounwind
declare i32 @tcgetattr(i32 noundef, ptr noundef) #7

; Function Attrs: nounwind
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeHistory() #0 !dbg !1788 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @history, align 8, !dbg !1789
  %3 = icmp ne ptr %2, null, !dbg !1789
  br i1 %3, label %4, label %20, !dbg !1791

4:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1792, metadata !DIExpression()), !dbg !1794
  store i32 0, ptr %1, align 4, !dbg !1795
  br label %5, !dbg !1797

5:                                                ; preds = %15, %4
  %6 = load i32, ptr %1, align 4, !dbg !1798
  %7 = load i32, ptr @history_len, align 4, !dbg !1800
  %8 = icmp slt i32 %6, %7, !dbg !1801
  br i1 %8, label %9, label %18, !dbg !1802

9:                                                ; preds = %5
  %10 = load ptr, ptr @history, align 8, !dbg !1803
  %11 = load i32, ptr %1, align 4, !dbg !1804
  %12 = sext i32 %11 to i64, !dbg !1803
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12, !dbg !1803
  %14 = load ptr, ptr %13, align 8, !dbg !1803
  call void @free(ptr noundef %14) #13, !dbg !1805
  br label %15, !dbg !1805

15:                                               ; preds = %9
  %16 = load i32, ptr %1, align 4, !dbg !1806
  %17 = add nsw i32 %16, 1, !dbg !1806
  store i32 %17, ptr %1, align 4, !dbg !1806
  br label %5, !dbg !1807, !llvm.loop !1808

18:                                               ; preds = %5
  %19 = load ptr, ptr @history, align 8, !dbg !1810
  call void @free(ptr noundef %19) #13, !dbg !1811
  br label %20, !dbg !1812

20:                                               ; preds = %18, %0
  ret void, !dbg !1813
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getColumns() #0 !dbg !1814 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.winsize, align 2
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1815, metadata !DIExpression()), !dbg !1823
  %3 = call i32 (i32, i64, ...) @ioctl(i32 noundef 1, i64 noundef 21523, ptr noundef %2) #13, !dbg !1824
  %4 = icmp eq i32 %3, -1, !dbg !1826
  br i1 %4, label %10, label %5, !dbg !1827

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.winsize, ptr %2, i32 0, i32 1, !dbg !1828
  %7 = load i16, ptr %6, align 2, !dbg !1828
  %8 = zext i16 %7 to i32, !dbg !1829
  %9 = icmp eq i32 %8, 0, !dbg !1830
  br i1 %9, label %10, label %11, !dbg !1831

10:                                               ; preds = %5, %0
  store i32 80, ptr %1, align 4, !dbg !1832
  br label %15, !dbg !1832

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.winsize, ptr %2, i32 0, i32 1, !dbg !1833
  %13 = load i16, ptr %12, align 2, !dbg !1833
  %14 = zext i16 %13 to i32, !dbg !1834
  store i32 %14, ptr %1, align 4, !dbg !1835
  br label %15, !dbg !1835

15:                                               ; preds = %11, %10
  %16 = load i32, ptr %1, align 4, !dbg !1836
  ret i32 %16, !dbg !1836
}

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @completeLine(ptr noundef %0) #0 !dbg !1837 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca %struct.linenoiseCompletions, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.linenoiseState, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1840, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1842, metadata !DIExpression()), !dbg !1843
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 16, i1 false), !dbg !1843
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1844, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1846, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1848, metadata !DIExpression()), !dbg !1849
  store i8 0, ptr %7, align 1, !dbg !1849
  %11 = load ptr, ptr @completionCallback, align 8, !dbg !1850
  %12 = load ptr, ptr %3, align 8, !dbg !1851
  %13 = getelementptr inbounds %struct.linenoiseState, ptr %12, i32 0, i32 1, !dbg !1852
  %14 = load ptr, ptr %13, align 8, !dbg !1852
  call void %11(ptr noundef %14, ptr noundef %4), !dbg !1850
  %15 = getelementptr inbounds %struct.linenoiseCompletions, ptr %4, i32 0, i32 0, !dbg !1853
  %16 = load i64, ptr %15, align 8, !dbg !1853
  %17 = icmp eq i64 %16, 0, !dbg !1855
  br i1 %17, label %18, label %19, !dbg !1856

18:                                               ; preds = %1
  call void @linenoiseBeep(), !dbg !1857
  br label %123, !dbg !1859

19:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1860, metadata !DIExpression()), !dbg !1862
  store i64 0, ptr %8, align 8, !dbg !1862
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1863, metadata !DIExpression()), !dbg !1864
  store i64 0, ptr %9, align 8, !dbg !1864
  br label %20, !dbg !1865

20:                                               ; preds = %121, %19
  %21 = load i64, ptr %8, align 8, !dbg !1866
  %22 = icmp ne i64 %21, 0, !dbg !1867
  %23 = xor i1 %22, true, !dbg !1867
  br i1 %23, label %24, label %122, !dbg !1865

24:                                               ; preds = %20
  %25 = load i64, ptr %9, align 8, !dbg !1868
  %26 = getelementptr inbounds %struct.linenoiseCompletions, ptr %4, i32 0, i32 0, !dbg !1871
  %27 = load i64, ptr %26, align 8, !dbg !1871
  %28 = icmp ult i64 %25, %27, !dbg !1872
  br i1 %28, label %29, label %61, !dbg !1873

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1874, metadata !DIExpression()), !dbg !1876
  %30 = load ptr, ptr %3, align 8, !dbg !1877
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %30, i64 88, i1 false), !dbg !1878
  %31 = getelementptr inbounds %struct.linenoiseCompletions, ptr %4, i32 0, i32 1, !dbg !1879
  %32 = load ptr, ptr %31, align 8, !dbg !1879
  %33 = load i64, ptr %9, align 8, !dbg !1880
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33, !dbg !1881
  %35 = load ptr, ptr %34, align 8, !dbg !1881
  %36 = call i64 @strlen(ptr noundef %35) #10, !dbg !1882
  %37 = load ptr, ptr %3, align 8, !dbg !1883
  %38 = getelementptr inbounds %struct.linenoiseState, ptr %37, i32 0, i32 5, !dbg !1884
  store i64 %36, ptr %38, align 8, !dbg !1885
  %39 = load ptr, ptr %3, align 8, !dbg !1886
  %40 = getelementptr inbounds %struct.linenoiseState, ptr %39, i32 0, i32 7, !dbg !1887
  store i64 %36, ptr %40, align 8, !dbg !1888
  %41 = getelementptr inbounds %struct.linenoiseCompletions, ptr %4, i32 0, i32 1, !dbg !1889
  %42 = load ptr, ptr %41, align 8, !dbg !1889
  %43 = load i64, ptr %9, align 8, !dbg !1890
  %44 = getelementptr inbounds ptr, ptr %42, i64 %43, !dbg !1891
  %45 = load ptr, ptr %44, align 8, !dbg !1891
  %46 = load ptr, ptr %3, align 8, !dbg !1892
  %47 = getelementptr inbounds %struct.linenoiseState, ptr %46, i32 0, i32 1, !dbg !1893
  store ptr %45, ptr %47, align 8, !dbg !1894
  %48 = load ptr, ptr %3, align 8, !dbg !1895
  call void @refreshLine(ptr noundef %48), !dbg !1896
  %49 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 7, !dbg !1897
  %50 = load i64, ptr %49, align 8, !dbg !1897
  %51 = load ptr, ptr %3, align 8, !dbg !1898
  %52 = getelementptr inbounds %struct.linenoiseState, ptr %51, i32 0, i32 7, !dbg !1899
  store i64 %50, ptr %52, align 8, !dbg !1900
  %53 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 5, !dbg !1901
  %54 = load i64, ptr %53, align 8, !dbg !1901
  %55 = load ptr, ptr %3, align 8, !dbg !1902
  %56 = getelementptr inbounds %struct.linenoiseState, ptr %55, i32 0, i32 5, !dbg !1903
  store i64 %54, ptr %56, align 8, !dbg !1904
  %57 = getelementptr inbounds %struct.linenoiseState, ptr %10, i32 0, i32 1, !dbg !1905
  %58 = load ptr, ptr %57, align 8, !dbg !1905
  %59 = load ptr, ptr %3, align 8, !dbg !1906
  %60 = getelementptr inbounds %struct.linenoiseState, ptr %59, i32 0, i32 1, !dbg !1907
  store ptr %58, ptr %60, align 8, !dbg !1908
  br label %63, !dbg !1909

61:                                               ; preds = %24
  %62 = load ptr, ptr %3, align 8, !dbg !1910
  call void @refreshLine(ptr noundef %62), !dbg !1912
  br label %63

63:                                               ; preds = %61, %29
  %64 = load ptr, ptr %3, align 8, !dbg !1913
  %65 = getelementptr inbounds %struct.linenoiseState, ptr %64, i32 0, i32 0, !dbg !1914
  %66 = load i32, ptr %65, align 8, !dbg !1914
  %67 = call i64 @read(i32 noundef %66, ptr noundef %7, i64 noundef 1), !dbg !1915
  %68 = trunc i64 %67 to i32, !dbg !1915
  store i32 %68, ptr %5, align 4, !dbg !1916
  %69 = load i32, ptr %5, align 4, !dbg !1917
  %70 = icmp sle i32 %69, 0, !dbg !1919
  br i1 %70, label %71, label %72, !dbg !1920

71:                                               ; preds = %63
  call void @freeCompletions(ptr noundef %4), !dbg !1921
  store i32 -1, ptr %2, align 4, !dbg !1923
  br label %126, !dbg !1923

72:                                               ; preds = %63
  %73 = load i8, ptr %7, align 1, !dbg !1924
  %74 = sext i8 %73 to i32, !dbg !1924
  switch i32 %74, label %96 [
    i32 9, label %75
    i32 27, label %88
  ], !dbg !1925

75:                                               ; preds = %72
  %76 = load i64, ptr %9, align 8, !dbg !1926
  %77 = add i64 %76, 1, !dbg !1928
  %78 = getelementptr inbounds %struct.linenoiseCompletions, ptr %4, i32 0, i32 0, !dbg !1929
  %79 = load i64, ptr %78, align 8, !dbg !1929
  %80 = add i64 %79, 1, !dbg !1930
  %81 = urem i64 %77, %80, !dbg !1931
  store i64 %81, ptr %9, align 8, !dbg !1932
  %82 = load i64, ptr %9, align 8, !dbg !1933
  %83 = getelementptr inbounds %struct.linenoiseCompletions, ptr %4, i32 0, i32 0, !dbg !1935
  %84 = load i64, ptr %83, align 8, !dbg !1935
  %85 = icmp eq i64 %82, %84, !dbg !1936
  br i1 %85, label %86, label %87, !dbg !1937

86:                                               ; preds = %75
  call void @linenoiseBeep(), !dbg !1938
  br label %87, !dbg !1938

87:                                               ; preds = %86, %75
  br label %121, !dbg !1939

88:                                               ; preds = %72
  %89 = load i64, ptr %9, align 8, !dbg !1940
  %90 = getelementptr inbounds %struct.linenoiseCompletions, ptr %4, i32 0, i32 0, !dbg !1942
  %91 = load i64, ptr %90, align 8, !dbg !1942
  %92 = icmp ult i64 %89, %91, !dbg !1943
  br i1 %92, label %93, label %95, !dbg !1944

93:                                               ; preds = %88
  %94 = load ptr, ptr %3, align 8, !dbg !1945
  call void @refreshLine(ptr noundef %94), !dbg !1946
  br label %95, !dbg !1946

95:                                               ; preds = %93, %88
  store i64 1, ptr %8, align 8, !dbg !1947
  br label %121, !dbg !1948

96:                                               ; preds = %72
  %97 = load i64, ptr %9, align 8, !dbg !1949
  %98 = getelementptr inbounds %struct.linenoiseCompletions, ptr %4, i32 0, i32 0, !dbg !1951
  %99 = load i64, ptr %98, align 8, !dbg !1951
  %100 = icmp ult i64 %97, %99, !dbg !1952
  br i1 %100, label %101, label %120, !dbg !1953

101:                                              ; preds = %96
  %102 = load ptr, ptr %3, align 8, !dbg !1954
  %103 = getelementptr inbounds %struct.linenoiseState, ptr %102, i32 0, i32 1, !dbg !1956
  %104 = load ptr, ptr %103, align 8, !dbg !1956
  %105 = load ptr, ptr %3, align 8, !dbg !1957
  %106 = getelementptr inbounds %struct.linenoiseState, ptr %105, i32 0, i32 2, !dbg !1958
  %107 = load i64, ptr %106, align 8, !dbg !1958
  %108 = getelementptr inbounds %struct.linenoiseCompletions, ptr %4, i32 0, i32 1, !dbg !1959
  %109 = load ptr, ptr %108, align 8, !dbg !1959
  %110 = load i64, ptr %9, align 8, !dbg !1960
  %111 = getelementptr inbounds ptr, ptr %109, i64 %110, !dbg !1961
  %112 = load ptr, ptr %111, align 8, !dbg !1961
  %113 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %104, i64 noundef %107, ptr noundef @.str.1, ptr noundef %112) #13, !dbg !1962
  store i32 %113, ptr %6, align 4, !dbg !1963
  %114 = load i32, ptr %6, align 4, !dbg !1964
  %115 = sext i32 %114 to i64, !dbg !1964
  %116 = load ptr, ptr %3, align 8, !dbg !1965
  %117 = getelementptr inbounds %struct.linenoiseState, ptr %116, i32 0, i32 5, !dbg !1966
  store i64 %115, ptr %117, align 8, !dbg !1967
  %118 = load ptr, ptr %3, align 8, !dbg !1968
  %119 = getelementptr inbounds %struct.linenoiseState, ptr %118, i32 0, i32 7, !dbg !1969
  store i64 %115, ptr %119, align 8, !dbg !1970
  br label %120, !dbg !1971

120:                                              ; preds = %101, %96
  store i64 1, ptr %8, align 8, !dbg !1972
  br label %121, !dbg !1973

121:                                              ; preds = %120, %95, %87
  br label %20, !dbg !1865, !llvm.loop !1974

122:                                              ; preds = %20
  br label %123

123:                                              ; preds = %122, %18
  call void @freeCompletions(ptr noundef %4), !dbg !1976
  %124 = load i8, ptr %7, align 1, !dbg !1977
  %125 = sext i8 %124 to i32, !dbg !1977
  store i32 %125, ptr %2, align 4, !dbg !1978
  br label %126, !dbg !1978

126:                                              ; preds = %123, %71
  %127 = load i32, ptr %2, align 4, !dbg !1979
  ret i32 %127, !dbg !1979
}

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linenoiseBeep() #0 !dbg !1980 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !1981
  %2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.18), !dbg !1982
  %3 = load ptr, ptr @stderr, align 8, !dbg !1983
  %4 = call i32 @fflush(ptr noundef %3), !dbg !1984
  ret void, !dbg !1985
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeCompletions(ptr noundef %0) #0 !dbg !1986 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1989, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1991, metadata !DIExpression()), !dbg !1992
  store i64 0, ptr %3, align 8, !dbg !1993
  br label %4, !dbg !1995

4:                                                ; preds = %17, %1
  %5 = load i64, ptr %3, align 8, !dbg !1996
  %6 = load ptr, ptr %2, align 8, !dbg !1998
  %7 = getelementptr inbounds %struct.linenoiseCompletions, ptr %6, i32 0, i32 0, !dbg !1999
  %8 = load i64, ptr %7, align 8, !dbg !1999
  %9 = icmp ult i64 %5, %8, !dbg !2000
  br i1 %9, label %10, label %20, !dbg !2001

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !dbg !2002
  %12 = getelementptr inbounds %struct.linenoiseCompletions, ptr %11, i32 0, i32 1, !dbg !2003
  %13 = load ptr, ptr %12, align 8, !dbg !2003
  %14 = load i64, ptr %3, align 8, !dbg !2004
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14, !dbg !2002
  %16 = load ptr, ptr %15, align 8, !dbg !2002
  call void @free(ptr noundef %16) #13, !dbg !2005
  br label %17, !dbg !2005

17:                                               ; preds = %10
  %18 = load i64, ptr %3, align 8, !dbg !2006
  %19 = add i64 %18, 1, !dbg !2006
  store i64 %19, ptr %3, align 8, !dbg !2006
  br label %4, !dbg !2007, !llvm.loop !2008

20:                                               ; preds = %4
  %21 = load ptr, ptr %2, align 8, !dbg !2010
  %22 = getelementptr inbounds %struct.linenoiseCompletions, ptr %21, i32 0, i32 1, !dbg !2012
  %23 = load ptr, ptr %22, align 8, !dbg !2012
  %24 = icmp ne ptr %23, null, !dbg !2013
  br i1 %24, label %25, label %29, !dbg !2014

25:                                               ; preds = %20
  %26 = load ptr, ptr %2, align 8, !dbg !2015
  %27 = getelementptr inbounds %struct.linenoiseCompletions, ptr %26, i32 0, i32 1, !dbg !2016
  %28 = load ptr, ptr %27, align 8, !dbg !2016
  call void @free(ptr noundef %28) #13, !dbg !2017
  br label %29, !dbg !2017

29:                                               ; preds = %25, %20
  ret void, !dbg !2018
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "history", scope: !2, file: !10, line: 120, type: !52, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "linenoise.c", directory: "/home/raj/FineDB/lib/linenoise", checksumkind: CSK_MD5, checksum: "7204d3931e5f44d2240d195c067011bf")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!0, !8, !15, !20, !25, !30, !32, !34, !54, !59, !64, !69, !71, !76, !78, !80, !82, !87, !89, !91, !93, !98, !101, !103, !125, !127, !132, !134}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !10, line: 222, type: !11, isLocal: true, isDefinition: true)
!10 = !DIFile(filename: "./linenoise.c", directory: "/home/raj/FineDB/lib/linenoise", checksumkind: CSK_MD5, checksum: "7204d3931e5f44d2240d195c067011bf")
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !13)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!14}
!14 = !DISubrange(count: 8)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !10, line: 768, type: !17, isLocal: true, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 24, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 3)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !10, line: 861, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 16, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 2)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !10, line: 866, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 4)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !10, line: 877, type: !22, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "mlmode", scope: !2, file: !10, line: 116, type: !6, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "completionCallback", scope: !2, file: !10, line: 112, type: !36, isLocal: true, isDefinition: true)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenoiseCompletionCallback", file: !38, line: 45, baseType: !39)
!38 = !DIFile(filename: "./linenoise.h", directory: "/home/raj/FineDB/lib/linenoise", checksumkind: CSK_MD5, checksum: "f1ded1c74c65db7d30c5f45ba2e5463d")
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !43}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenoiseCompletions", file: !38, line: 43, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linenoiseCompletions", file: !38, line: 40, size: 128, elements: !46)
!46 = !{!47, !51}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !45, file: !38, line: 41, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 46, baseType: !50)
!49 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "cvec", scope: !45, file: !38, line: 42, baseType: !52, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !10, line: 391, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 48, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 6)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !10, line: 400, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 104, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 13)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !10, line: 408, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 72, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 9)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !10, line: 424, type: !22, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !10, line: 425, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 40, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 5)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !10, line: 441, type: !56, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !10, line: 448, type: !56, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !10, line: 356, type: !73, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !10, line: 359, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 80, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 10)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "history_len", scope: !2, file: !10, line: 119, type: !6, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !10, line: 160, type: !73, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !10, line: 111, type: !73, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !10, line: 111, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 56, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 7)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "unsupported_term", scope: !2, file: !10, line: 111, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 192, elements: !18)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "atexit_registered", scope: !2, file: !10, line: 117, type: !6, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "orig_termios", scope: !2, file: !10, line: 114, type: !105, isLocal: true, isDefinition: true)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termios", file: !106, line: 24, size: 480, elements: !107)
!106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/termios-struct.h", directory: "", checksumkind: CSK_MD5, checksum: "a512dc8866a1d12d70982670557f907e")
!107 = !{!108, !112, !113, !114, !115, !118, !122, !124}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !105, file: !106, line: 26, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !110, line: 25, baseType: !111)
!110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/termios.h", directory: "", checksumkind: CSK_MD5, checksum: "8fb85635ee384e33fd6386ce833e946a")
!111 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !105, file: !106, line: 27, baseType: !109, size: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !105, file: !106, line: 28, baseType: !109, size: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !105, file: !106, line: 29, baseType: !109, size: 32, offset: 96)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !105, file: !106, line: 30, baseType: !116, size: 8, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !110, line: 23, baseType: !117)
!117 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !105, file: !106, line: 31, baseType: !119, size: 256, offset: 136)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 256, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !105, file: !106, line: 32, baseType: !123, size: 32, offset: 416)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !110, line: 24, baseType: !111)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !105, file: !106, line: 33, baseType: !123, size: 32, offset: 448)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "rawmode", scope: !2, file: !10, line: 115, type: !6, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !10, line: 608, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 1)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !10, line: 230, type: !22, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "history_max_len", scope: !2, file: !10, line: 118, type: !6, isLocal: true, isDefinition: true)
!136 = !{i32 7, !"Dwarf Version", i32 5}
!137 = !{i32 2, !"Debug Info Version", i32 3}
!138 = !{i32 1, !"wchar_size", i32 4}
!139 = !{i32 8, !"PIC Level", i32 2}
!140 = !{i32 7, !"uwtable", i32 2}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 16.0.0"}
!143 = distinct !DISubprogram(name: "linenoiseSetMultiLine", scope: !10, file: !10, line: 153, type: !144, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !6}
!146 = !{}
!147 = !DILocalVariable(name: "ml", arg: 1, scope: !143, file: !10, line: 153, type: !6)
!148 = !DILocation(line: 153, column: 32, scope: !143)
!149 = !DILocation(line: 154, column: 14, scope: !143)
!150 = !DILocation(line: 154, column: 12, scope: !143)
!151 = !DILocation(line: 155, column: 1, scope: !143)
!152 = distinct !DISubprogram(name: "linenoiseClearScreen", scope: !10, file: !10, line: 221, type: !153, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!153 = !DISubroutineType(types: !154)
!154 = !{null}
!155 = !DILocation(line: 222, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !10, line: 222, column: 9)
!157 = !DILocation(line: 222, column: 47, scope: !156)
!158 = !DILocation(line: 222, column: 9, scope: !152)
!159 = !DILocation(line: 224, column: 5, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !10, line: 222, column: 53)
!161 = !DILocation(line: 225, column: 1, scope: !152)
!162 = distinct !DISubprogram(name: "linenoiseSetCompletionCallback", scope: !10, file: !10, line: 310, type: !163, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !36}
!165 = !DILocalVariable(name: "fn", arg: 1, scope: !162, file: !10, line: 310, type: !36)
!166 = !DILocation(line: 310, column: 66, scope: !162)
!167 = !DILocation(line: 311, column: 26, scope: !162)
!168 = !DILocation(line: 311, column: 24, scope: !162)
!169 = !DILocation(line: 312, column: 1, scope: !162)
!170 = distinct !DISubprogram(name: "linenoiseAddCompletion", scope: !10, file: !10, line: 318, type: !171, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !43, !53}
!173 = !DILocalVariable(name: "lc", arg: 1, scope: !170, file: !10, line: 318, type: !43)
!174 = !DILocation(line: 318, column: 51, scope: !170)
!175 = !DILocalVariable(name: "str", arg: 2, scope: !170, file: !10, line: 318, type: !53)
!176 = !DILocation(line: 318, column: 61, scope: !170)
!177 = !DILocalVariable(name: "len", scope: !170, file: !10, line: 319, type: !48)
!178 = !DILocation(line: 319, column: 12, scope: !170)
!179 = !DILocation(line: 319, column: 25, scope: !170)
!180 = !DILocation(line: 319, column: 18, scope: !170)
!181 = !DILocalVariable(name: "copy", scope: !170, file: !10, line: 320, type: !53)
!182 = !DILocation(line: 320, column: 11, scope: !170)
!183 = !DILocation(line: 320, column: 25, scope: !170)
!184 = !DILocation(line: 320, column: 28, scope: !170)
!185 = !DILocation(line: 320, column: 18, scope: !170)
!186 = !DILocation(line: 321, column: 12, scope: !170)
!187 = !DILocation(line: 321, column: 17, scope: !170)
!188 = !DILocation(line: 321, column: 21, scope: !170)
!189 = !DILocation(line: 321, column: 24, scope: !170)
!190 = !DILocation(line: 321, column: 5, scope: !170)
!191 = !DILocation(line: 322, column: 24, scope: !170)
!192 = !DILocation(line: 322, column: 28, scope: !170)
!193 = !DILocation(line: 322, column: 48, scope: !170)
!194 = !DILocation(line: 322, column: 52, scope: !170)
!195 = !DILocation(line: 322, column: 55, scope: !170)
!196 = !DILocation(line: 322, column: 46, scope: !170)
!197 = !DILocation(line: 322, column: 16, scope: !170)
!198 = !DILocation(line: 322, column: 5, scope: !170)
!199 = !DILocation(line: 322, column: 9, scope: !170)
!200 = !DILocation(line: 322, column: 14, scope: !170)
!201 = !DILocation(line: 323, column: 27, scope: !170)
!202 = !DILocation(line: 323, column: 5, scope: !170)
!203 = !DILocation(line: 323, column: 9, scope: !170)
!204 = !DILocation(line: 323, column: 14, scope: !170)
!205 = !DILocation(line: 323, column: 18, scope: !170)
!206 = !DILocation(line: 323, column: 21, scope: !170)
!207 = !DILocation(line: 323, column: 25, scope: !170)
!208 = !DILocation(line: 324, column: 1, scope: !170)
!209 = distinct !DISubprogram(name: "linenoiseEditInsert", scope: !10, file: !10, line: 471, type: !210, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!210 = !DISubroutineType(types: !211)
!211 = !{!6, !212, !6}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linenoiseState", file: !10, line: 125, size: 704, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !213, file: !10, line: 126, baseType: !6, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !213, file: !10, line: 127, baseType: !53, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !213, file: !10, line: 128, baseType: !48, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "prompt", scope: !213, file: !10, line: 129, baseType: !41, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !213, file: !10, line: 130, baseType: !48, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !213, file: !10, line: 131, baseType: !48, size: 64, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "oldpos", scope: !213, file: !10, line: 132, baseType: !48, size: 64, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !213, file: !10, line: 133, baseType: !48, size: 64, offset: 448)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "cols", scope: !213, file: !10, line: 134, baseType: !48, size: 64, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "maxrows", scope: !213, file: !10, line: 135, baseType: !48, size: 64, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "history_index", scope: !213, file: !10, line: 136, baseType: !6, size: 32, offset: 640)
!226 = !DILocalVariable(name: "l", arg: 1, scope: !209, file: !10, line: 471, type: !212)
!227 = !DILocation(line: 471, column: 48, scope: !209)
!228 = !DILocalVariable(name: "c", arg: 2, scope: !209, file: !10, line: 471, type: !6)
!229 = !DILocation(line: 471, column: 55, scope: !209)
!230 = !DILocation(line: 472, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !209, file: !10, line: 472, column: 9)
!232 = !DILocation(line: 472, column: 12, scope: !231)
!233 = !DILocation(line: 472, column: 18, scope: !231)
!234 = !DILocation(line: 472, column: 21, scope: !231)
!235 = !DILocation(line: 472, column: 16, scope: !231)
!236 = !DILocation(line: 472, column: 9, scope: !209)
!237 = !DILocation(line: 473, column: 13, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !10, line: 473, column: 13)
!239 = distinct !DILexicalBlock(scope: !231, file: !10, line: 472, column: 29)
!240 = !DILocation(line: 473, column: 16, scope: !238)
!241 = !DILocation(line: 473, column: 23, scope: !238)
!242 = !DILocation(line: 473, column: 26, scope: !238)
!243 = !DILocation(line: 473, column: 20, scope: !238)
!244 = !DILocation(line: 473, column: 13, scope: !239)
!245 = !DILocation(line: 474, column: 30, scope: !246)
!246 = distinct !DILexicalBlock(scope: !238, file: !10, line: 473, column: 31)
!247 = !DILocation(line: 474, column: 13, scope: !246)
!248 = !DILocation(line: 474, column: 16, scope: !246)
!249 = !DILocation(line: 474, column: 20, scope: !246)
!250 = !DILocation(line: 474, column: 23, scope: !246)
!251 = !DILocation(line: 474, column: 28, scope: !246)
!252 = !DILocation(line: 475, column: 13, scope: !246)
!253 = !DILocation(line: 475, column: 16, scope: !246)
!254 = !DILocation(line: 475, column: 19, scope: !246)
!255 = !DILocation(line: 476, column: 13, scope: !246)
!256 = !DILocation(line: 476, column: 16, scope: !246)
!257 = !DILocation(line: 476, column: 19, scope: !246)
!258 = !DILocation(line: 477, column: 13, scope: !246)
!259 = !DILocation(line: 477, column: 16, scope: !246)
!260 = !DILocation(line: 477, column: 20, scope: !246)
!261 = !DILocation(line: 477, column: 23, scope: !246)
!262 = !DILocation(line: 477, column: 28, scope: !246)
!263 = !DILocation(line: 478, column: 19, scope: !264)
!264 = distinct !DILexicalBlock(scope: !246, file: !10, line: 478, column: 17)
!265 = !DILocation(line: 478, column: 26, scope: !264)
!266 = !DILocation(line: 478, column: 29, scope: !264)
!267 = !DILocation(line: 478, column: 32, scope: !264)
!268 = !DILocation(line: 478, column: 37, scope: !264)
!269 = !DILocation(line: 478, column: 40, scope: !264)
!270 = !DILocation(line: 478, column: 36, scope: !264)
!271 = !DILocation(line: 478, column: 46, scope: !264)
!272 = !DILocation(line: 478, column: 49, scope: !264)
!273 = !DILocation(line: 478, column: 44, scope: !264)
!274 = !DILocation(line: 478, column: 17, scope: !246)
!275 = !DILocation(line: 481, column: 27, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !10, line: 481, column: 21)
!277 = distinct !DILexicalBlock(scope: !264, file: !10, line: 478, column: 72)
!278 = !DILocation(line: 481, column: 30, scope: !276)
!279 = !DILocation(line: 481, column: 21, scope: !276)
!280 = !DILocation(line: 481, column: 39, scope: !276)
!281 = !DILocation(line: 481, column: 21, scope: !277)
!282 = !DILocation(line: 481, column: 46, scope: !276)
!283 = !DILocation(line: 482, column: 13, scope: !277)
!284 = !DILocation(line: 483, column: 29, scope: !285)
!285 = distinct !DILexicalBlock(scope: !264, file: !10, line: 482, column: 20)
!286 = !DILocation(line: 483, column: 17, scope: !285)
!287 = !DILocation(line: 485, column: 9, scope: !246)
!288 = !DILocation(line: 486, column: 21, scope: !289)
!289 = distinct !DILexicalBlock(scope: !238, file: !10, line: 485, column: 16)
!290 = !DILocation(line: 486, column: 24, scope: !289)
!291 = !DILocation(line: 486, column: 28, scope: !289)
!292 = !DILocation(line: 486, column: 31, scope: !289)
!293 = !DILocation(line: 486, column: 27, scope: !289)
!294 = !DILocation(line: 486, column: 34, scope: !289)
!295 = !DILocation(line: 486, column: 37, scope: !289)
!296 = !DILocation(line: 486, column: 40, scope: !289)
!297 = !DILocation(line: 486, column: 44, scope: !289)
!298 = !DILocation(line: 486, column: 47, scope: !289)
!299 = !DILocation(line: 486, column: 43, scope: !289)
!300 = !DILocation(line: 486, column: 51, scope: !289)
!301 = !DILocation(line: 486, column: 54, scope: !289)
!302 = !DILocation(line: 486, column: 58, scope: !289)
!303 = !DILocation(line: 486, column: 61, scope: !289)
!304 = !DILocation(line: 486, column: 57, scope: !289)
!305 = !DILocation(line: 486, column: 13, scope: !289)
!306 = !DILocation(line: 487, column: 30, scope: !289)
!307 = !DILocation(line: 487, column: 13, scope: !289)
!308 = !DILocation(line: 487, column: 16, scope: !289)
!309 = !DILocation(line: 487, column: 20, scope: !289)
!310 = !DILocation(line: 487, column: 23, scope: !289)
!311 = !DILocation(line: 487, column: 28, scope: !289)
!312 = !DILocation(line: 488, column: 13, scope: !289)
!313 = !DILocation(line: 488, column: 16, scope: !289)
!314 = !DILocation(line: 488, column: 19, scope: !289)
!315 = !DILocation(line: 489, column: 13, scope: !289)
!316 = !DILocation(line: 489, column: 16, scope: !289)
!317 = !DILocation(line: 489, column: 19, scope: !289)
!318 = !DILocation(line: 490, column: 13, scope: !289)
!319 = !DILocation(line: 490, column: 16, scope: !289)
!320 = !DILocation(line: 490, column: 20, scope: !289)
!321 = !DILocation(line: 490, column: 23, scope: !289)
!322 = !DILocation(line: 490, column: 28, scope: !289)
!323 = !DILocation(line: 491, column: 25, scope: !289)
!324 = !DILocation(line: 491, column: 13, scope: !289)
!325 = !DILocation(line: 493, column: 5, scope: !239)
!326 = !DILocation(line: 494, column: 5, scope: !209)
!327 = !DILocation(line: 495, column: 1, scope: !209)
!328 = distinct !DISubprogram(name: "refreshLine", scope: !10, file: !10, line: 461, type: !329, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !212}
!331 = !DILocalVariable(name: "l", arg: 1, scope: !328, file: !10, line: 461, type: !212)
!332 = !DILocation(line: 461, column: 48, scope: !328)
!333 = !DILocation(line: 462, column: 9, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !10, line: 462, column: 9)
!335 = !DILocation(line: 462, column: 9, scope: !328)
!336 = !DILocation(line: 463, column: 26, scope: !334)
!337 = !DILocation(line: 463, column: 9, scope: !334)
!338 = !DILocation(line: 465, column: 27, scope: !334)
!339 = !DILocation(line: 465, column: 9, scope: !334)
!340 = !DILocation(line: 466, column: 1, scope: !328)
!341 = distinct !DISubprogram(name: "linenoiseEditMoveLeft", scope: !10, file: !10, line: 498, type: !329, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!342 = !DILocalVariable(name: "l", arg: 1, scope: !341, file: !10, line: 498, type: !212)
!343 = !DILocation(line: 498, column: 51, scope: !341)
!344 = !DILocation(line: 499, column: 9, scope: !345)
!345 = distinct !DILexicalBlock(scope: !341, file: !10, line: 499, column: 9)
!346 = !DILocation(line: 499, column: 12, scope: !345)
!347 = !DILocation(line: 499, column: 16, scope: !345)
!348 = !DILocation(line: 499, column: 9, scope: !341)
!349 = !DILocation(line: 500, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !10, line: 499, column: 21)
!351 = !DILocation(line: 500, column: 12, scope: !350)
!352 = !DILocation(line: 500, column: 15, scope: !350)
!353 = !DILocation(line: 501, column: 21, scope: !350)
!354 = !DILocation(line: 501, column: 9, scope: !350)
!355 = !DILocation(line: 502, column: 5, scope: !350)
!356 = !DILocation(line: 503, column: 1, scope: !341)
!357 = distinct !DISubprogram(name: "linenoiseEditMoveRight", scope: !10, file: !10, line: 506, type: !329, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!358 = !DILocalVariable(name: "l", arg: 1, scope: !357, file: !10, line: 506, type: !212)
!359 = !DILocation(line: 506, column: 52, scope: !357)
!360 = !DILocation(line: 507, column: 9, scope: !361)
!361 = distinct !DILexicalBlock(scope: !357, file: !10, line: 507, column: 9)
!362 = !DILocation(line: 507, column: 12, scope: !361)
!363 = !DILocation(line: 507, column: 19, scope: !361)
!364 = !DILocation(line: 507, column: 22, scope: !361)
!365 = !DILocation(line: 507, column: 16, scope: !361)
!366 = !DILocation(line: 507, column: 9, scope: !357)
!367 = !DILocation(line: 508, column: 9, scope: !368)
!368 = distinct !DILexicalBlock(scope: !361, file: !10, line: 507, column: 27)
!369 = !DILocation(line: 508, column: 12, scope: !368)
!370 = !DILocation(line: 508, column: 15, scope: !368)
!371 = !DILocation(line: 509, column: 21, scope: !368)
!372 = !DILocation(line: 509, column: 9, scope: !368)
!373 = !DILocation(line: 510, column: 5, scope: !368)
!374 = !DILocation(line: 511, column: 1, scope: !357)
!375 = distinct !DISubprogram(name: "linenoiseEditHistoryNext", scope: !10, file: !10, line: 517, type: !376, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !212, !6}
!378 = !DILocalVariable(name: "l", arg: 1, scope: !375, file: !10, line: 517, type: !212)
!379 = !DILocation(line: 517, column: 54, scope: !375)
!380 = !DILocalVariable(name: "dir", arg: 2, scope: !375, file: !10, line: 517, type: !6)
!381 = !DILocation(line: 517, column: 61, scope: !375)
!382 = !DILocation(line: 518, column: 9, scope: !383)
!383 = distinct !DILexicalBlock(scope: !375, file: !10, line: 518, column: 9)
!384 = !DILocation(line: 518, column: 21, scope: !383)
!385 = !DILocation(line: 518, column: 9, scope: !375)
!386 = !DILocation(line: 521, column: 14, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !10, line: 518, column: 26)
!388 = !DILocation(line: 521, column: 22, scope: !387)
!389 = !DILocation(line: 521, column: 34, scope: !387)
!390 = !DILocation(line: 521, column: 40, scope: !387)
!391 = !DILocation(line: 521, column: 43, scope: !387)
!392 = !DILocation(line: 521, column: 38, scope: !387)
!393 = !DILocation(line: 521, column: 9, scope: !387)
!394 = !DILocation(line: 522, column: 62, scope: !387)
!395 = !DILocation(line: 522, column: 65, scope: !387)
!396 = !DILocation(line: 522, column: 55, scope: !387)
!397 = !DILocation(line: 522, column: 9, scope: !387)
!398 = !DILocation(line: 522, column: 17, scope: !387)
!399 = !DILocation(line: 522, column: 29, scope: !387)
!400 = !DILocation(line: 522, column: 35, scope: !387)
!401 = !DILocation(line: 522, column: 38, scope: !387)
!402 = !DILocation(line: 522, column: 33, scope: !387)
!403 = !DILocation(line: 522, column: 53, scope: !387)
!404 = !DILocation(line: 524, column: 30, scope: !387)
!405 = !DILocation(line: 524, column: 34, scope: !387)
!406 = !DILocation(line: 524, column: 29, scope: !387)
!407 = !DILocation(line: 524, column: 9, scope: !387)
!408 = !DILocation(line: 524, column: 12, scope: !387)
!409 = !DILocation(line: 524, column: 26, scope: !387)
!410 = !DILocation(line: 525, column: 13, scope: !411)
!411 = distinct !DILexicalBlock(scope: !387, file: !10, line: 525, column: 13)
!412 = !DILocation(line: 525, column: 16, scope: !411)
!413 = !DILocation(line: 525, column: 30, scope: !411)
!414 = !DILocation(line: 525, column: 13, scope: !387)
!415 = !DILocation(line: 526, column: 13, scope: !416)
!416 = distinct !DILexicalBlock(scope: !411, file: !10, line: 525, column: 35)
!417 = !DILocation(line: 526, column: 16, scope: !416)
!418 = !DILocation(line: 526, column: 30, scope: !416)
!419 = !DILocation(line: 527, column: 13, scope: !416)
!420 = !DILocation(line: 528, column: 20, scope: !421)
!421 = distinct !DILexicalBlock(scope: !411, file: !10, line: 528, column: 20)
!422 = !DILocation(line: 528, column: 23, scope: !421)
!423 = !DILocation(line: 528, column: 40, scope: !421)
!424 = !DILocation(line: 528, column: 37, scope: !421)
!425 = !DILocation(line: 528, column: 20, scope: !411)
!426 = !DILocation(line: 529, column: 32, scope: !427)
!427 = distinct !DILexicalBlock(scope: !421, file: !10, line: 528, column: 53)
!428 = !DILocation(line: 529, column: 43, scope: !427)
!429 = !DILocation(line: 529, column: 13, scope: !427)
!430 = !DILocation(line: 529, column: 16, scope: !427)
!431 = !DILocation(line: 529, column: 30, scope: !427)
!432 = !DILocation(line: 530, column: 13, scope: !427)
!433 = !DILocation(line: 532, column: 17, scope: !387)
!434 = !DILocation(line: 532, column: 20, scope: !387)
!435 = !DILocation(line: 532, column: 24, scope: !387)
!436 = !DILocation(line: 532, column: 32, scope: !387)
!437 = !DILocation(line: 532, column: 44, scope: !387)
!438 = !DILocation(line: 532, column: 50, scope: !387)
!439 = !DILocation(line: 532, column: 53, scope: !387)
!440 = !DILocation(line: 532, column: 48, scope: !387)
!441 = !DILocation(line: 532, column: 68, scope: !387)
!442 = !DILocation(line: 532, column: 71, scope: !387)
!443 = !DILocation(line: 532, column: 9, scope: !387)
!444 = !DILocation(line: 533, column: 9, scope: !387)
!445 = !DILocation(line: 533, column: 12, scope: !387)
!446 = !DILocation(line: 533, column: 16, scope: !387)
!447 = !DILocation(line: 533, column: 19, scope: !387)
!448 = !DILocation(line: 533, column: 25, scope: !387)
!449 = !DILocation(line: 533, column: 29, scope: !387)
!450 = !DILocation(line: 534, column: 34, scope: !387)
!451 = !DILocation(line: 534, column: 37, scope: !387)
!452 = !DILocation(line: 534, column: 27, scope: !387)
!453 = !DILocation(line: 534, column: 18, scope: !387)
!454 = !DILocation(line: 534, column: 21, scope: !387)
!455 = !DILocation(line: 534, column: 25, scope: !387)
!456 = !DILocation(line: 534, column: 9, scope: !387)
!457 = !DILocation(line: 534, column: 12, scope: !387)
!458 = !DILocation(line: 534, column: 16, scope: !387)
!459 = !DILocation(line: 535, column: 21, scope: !387)
!460 = !DILocation(line: 535, column: 9, scope: !387)
!461 = !DILocation(line: 536, column: 5, scope: !387)
!462 = !DILocation(line: 537, column: 1, scope: !375)
!463 = distinct !DISubprogram(name: "linenoiseEditDelete", scope: !10, file: !10, line: 541, type: !329, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!464 = !DILocalVariable(name: "l", arg: 1, scope: !463, file: !10, line: 541, type: !212)
!465 = !DILocation(line: 541, column: 49, scope: !463)
!466 = !DILocation(line: 542, column: 9, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !10, line: 542, column: 9)
!468 = !DILocation(line: 542, column: 12, scope: !467)
!469 = !DILocation(line: 542, column: 16, scope: !467)
!470 = !DILocation(line: 542, column: 20, scope: !467)
!471 = !DILocation(line: 542, column: 23, scope: !467)
!472 = !DILocation(line: 542, column: 26, scope: !467)
!473 = !DILocation(line: 542, column: 32, scope: !467)
!474 = !DILocation(line: 542, column: 35, scope: !467)
!475 = !DILocation(line: 542, column: 30, scope: !467)
!476 = !DILocation(line: 542, column: 9, scope: !463)
!477 = !DILocation(line: 543, column: 17, scope: !478)
!478 = distinct !DILexicalBlock(scope: !467, file: !10, line: 542, column: 40)
!479 = !DILocation(line: 543, column: 20, scope: !478)
!480 = !DILocation(line: 543, column: 24, scope: !478)
!481 = !DILocation(line: 543, column: 27, scope: !478)
!482 = !DILocation(line: 543, column: 23, scope: !478)
!483 = !DILocation(line: 543, column: 31, scope: !478)
!484 = !DILocation(line: 543, column: 34, scope: !478)
!485 = !DILocation(line: 543, column: 38, scope: !478)
!486 = !DILocation(line: 543, column: 41, scope: !478)
!487 = !DILocation(line: 543, column: 37, scope: !478)
!488 = !DILocation(line: 543, column: 44, scope: !478)
!489 = !DILocation(line: 543, column: 47, scope: !478)
!490 = !DILocation(line: 543, column: 50, scope: !478)
!491 = !DILocation(line: 543, column: 54, scope: !478)
!492 = !DILocation(line: 543, column: 57, scope: !478)
!493 = !DILocation(line: 543, column: 53, scope: !478)
!494 = !DILocation(line: 543, column: 60, scope: !478)
!495 = !DILocation(line: 543, column: 9, scope: !478)
!496 = !DILocation(line: 544, column: 9, scope: !478)
!497 = !DILocation(line: 544, column: 12, scope: !478)
!498 = !DILocation(line: 544, column: 15, scope: !478)
!499 = !DILocation(line: 545, column: 9, scope: !478)
!500 = !DILocation(line: 545, column: 12, scope: !478)
!501 = !DILocation(line: 545, column: 16, scope: !478)
!502 = !DILocation(line: 545, column: 19, scope: !478)
!503 = !DILocation(line: 545, column: 24, scope: !478)
!504 = !DILocation(line: 546, column: 21, scope: !478)
!505 = !DILocation(line: 546, column: 9, scope: !478)
!506 = !DILocation(line: 547, column: 5, scope: !478)
!507 = !DILocation(line: 548, column: 1, scope: !463)
!508 = distinct !DISubprogram(name: "linenoiseEditBackspace", scope: !10, file: !10, line: 551, type: !329, scopeLine: 551, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!509 = !DILocalVariable(name: "l", arg: 1, scope: !508, file: !10, line: 551, type: !212)
!510 = !DILocation(line: 551, column: 52, scope: !508)
!511 = !DILocation(line: 552, column: 9, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !10, line: 552, column: 9)
!513 = !DILocation(line: 552, column: 12, scope: !512)
!514 = !DILocation(line: 552, column: 16, scope: !512)
!515 = !DILocation(line: 552, column: 20, scope: !512)
!516 = !DILocation(line: 552, column: 23, scope: !512)
!517 = !DILocation(line: 552, column: 26, scope: !512)
!518 = !DILocation(line: 552, column: 30, scope: !512)
!519 = !DILocation(line: 552, column: 9, scope: !508)
!520 = !DILocation(line: 553, column: 17, scope: !521)
!521 = distinct !DILexicalBlock(scope: !512, file: !10, line: 552, column: 35)
!522 = !DILocation(line: 553, column: 20, scope: !521)
!523 = !DILocation(line: 553, column: 24, scope: !521)
!524 = !DILocation(line: 553, column: 27, scope: !521)
!525 = !DILocation(line: 553, column: 23, scope: !521)
!526 = !DILocation(line: 553, column: 30, scope: !521)
!527 = !DILocation(line: 553, column: 33, scope: !521)
!528 = !DILocation(line: 553, column: 36, scope: !521)
!529 = !DILocation(line: 553, column: 40, scope: !521)
!530 = !DILocation(line: 553, column: 43, scope: !521)
!531 = !DILocation(line: 553, column: 39, scope: !521)
!532 = !DILocation(line: 553, column: 47, scope: !521)
!533 = !DILocation(line: 553, column: 50, scope: !521)
!534 = !DILocation(line: 553, column: 54, scope: !521)
!535 = !DILocation(line: 553, column: 57, scope: !521)
!536 = !DILocation(line: 553, column: 53, scope: !521)
!537 = !DILocation(line: 553, column: 9, scope: !521)
!538 = !DILocation(line: 554, column: 9, scope: !521)
!539 = !DILocation(line: 554, column: 12, scope: !521)
!540 = !DILocation(line: 554, column: 15, scope: !521)
!541 = !DILocation(line: 555, column: 9, scope: !521)
!542 = !DILocation(line: 555, column: 12, scope: !521)
!543 = !DILocation(line: 555, column: 15, scope: !521)
!544 = !DILocation(line: 556, column: 9, scope: !521)
!545 = !DILocation(line: 556, column: 12, scope: !521)
!546 = !DILocation(line: 556, column: 16, scope: !521)
!547 = !DILocation(line: 556, column: 19, scope: !521)
!548 = !DILocation(line: 556, column: 24, scope: !521)
!549 = !DILocation(line: 557, column: 21, scope: !521)
!550 = !DILocation(line: 557, column: 9, scope: !521)
!551 = !DILocation(line: 558, column: 5, scope: !521)
!552 = !DILocation(line: 559, column: 1, scope: !508)
!553 = distinct !DISubprogram(name: "linenoiseEditDeletePrevWord", scope: !10, file: !10, line: 563, type: !329, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!554 = !DILocalVariable(name: "l", arg: 1, scope: !553, file: !10, line: 563, type: !212)
!555 = !DILocation(line: 563, column: 57, scope: !553)
!556 = !DILocalVariable(name: "old_pos", scope: !553, file: !10, line: 564, type: !48)
!557 = !DILocation(line: 564, column: 12, scope: !553)
!558 = !DILocation(line: 564, column: 22, scope: !553)
!559 = !DILocation(line: 564, column: 25, scope: !553)
!560 = !DILocalVariable(name: "diff", scope: !553, file: !10, line: 565, type: !48)
!561 = !DILocation(line: 565, column: 12, scope: !553)
!562 = !DILocation(line: 567, column: 5, scope: !553)
!563 = !DILocation(line: 567, column: 12, scope: !553)
!564 = !DILocation(line: 567, column: 15, scope: !553)
!565 = !DILocation(line: 567, column: 19, scope: !553)
!566 = !DILocation(line: 567, column: 23, scope: !553)
!567 = !DILocation(line: 567, column: 26, scope: !553)
!568 = !DILocation(line: 567, column: 29, scope: !553)
!569 = !DILocation(line: 567, column: 33, scope: !553)
!570 = !DILocation(line: 567, column: 36, scope: !553)
!571 = !DILocation(line: 567, column: 39, scope: !553)
!572 = !DILocation(line: 567, column: 43, scope: !553)
!573 = !DILocation(line: 0, scope: !553)
!574 = !DILocation(line: 568, column: 9, scope: !553)
!575 = !DILocation(line: 568, column: 12, scope: !553)
!576 = !DILocation(line: 568, column: 15, scope: !553)
!577 = distinct !{!577, !562, !576}
!578 = !DILocation(line: 569, column: 5, scope: !553)
!579 = !DILocation(line: 569, column: 12, scope: !553)
!580 = !DILocation(line: 569, column: 15, scope: !553)
!581 = !DILocation(line: 569, column: 19, scope: !553)
!582 = !DILocation(line: 569, column: 23, scope: !553)
!583 = !DILocation(line: 569, column: 26, scope: !553)
!584 = !DILocation(line: 569, column: 29, scope: !553)
!585 = !DILocation(line: 569, column: 33, scope: !553)
!586 = !DILocation(line: 569, column: 36, scope: !553)
!587 = !DILocation(line: 569, column: 39, scope: !553)
!588 = !DILocation(line: 569, column: 43, scope: !553)
!589 = !DILocation(line: 570, column: 9, scope: !553)
!590 = !DILocation(line: 570, column: 12, scope: !553)
!591 = !DILocation(line: 570, column: 15, scope: !553)
!592 = distinct !{!592, !578, !591}
!593 = !DILocation(line: 571, column: 12, scope: !553)
!594 = !DILocation(line: 571, column: 22, scope: !553)
!595 = !DILocation(line: 571, column: 25, scope: !553)
!596 = !DILocation(line: 571, column: 20, scope: !553)
!597 = !DILocation(line: 571, column: 10, scope: !553)
!598 = !DILocation(line: 572, column: 13, scope: !553)
!599 = !DILocation(line: 572, column: 16, scope: !553)
!600 = !DILocation(line: 572, column: 20, scope: !553)
!601 = !DILocation(line: 572, column: 23, scope: !553)
!602 = !DILocation(line: 572, column: 19, scope: !553)
!603 = !DILocation(line: 572, column: 27, scope: !553)
!604 = !DILocation(line: 572, column: 30, scope: !553)
!605 = !DILocation(line: 572, column: 34, scope: !553)
!606 = !DILocation(line: 572, column: 33, scope: !553)
!607 = !DILocation(line: 572, column: 42, scope: !553)
!608 = !DILocation(line: 572, column: 45, scope: !553)
!609 = !DILocation(line: 572, column: 49, scope: !553)
!610 = !DILocation(line: 572, column: 48, scope: !553)
!611 = !DILocation(line: 572, column: 56, scope: !553)
!612 = !DILocation(line: 572, column: 5, scope: !553)
!613 = !DILocation(line: 573, column: 15, scope: !553)
!614 = !DILocation(line: 573, column: 5, scope: !553)
!615 = !DILocation(line: 573, column: 8, scope: !553)
!616 = !DILocation(line: 573, column: 12, scope: !553)
!617 = !DILocation(line: 574, column: 17, scope: !553)
!618 = !DILocation(line: 574, column: 5, scope: !553)
!619 = !DILocation(line: 575, column: 1, scope: !553)
!620 = distinct !DISubprogram(name: "linenoise", scope: !10, file: !10, line: 761, type: !621, scopeLine: 761, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!621 = !DISubroutineType(types: !622)
!622 = !{!53, !41}
!623 = !DILocalVariable(name: "prompt", arg: 1, scope: !620, file: !10, line: 761, type: !41)
!624 = !DILocation(line: 761, column: 29, scope: !620)
!625 = !DILocalVariable(name: "buf", scope: !620, file: !10, line: 762, type: !626)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32768, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 4096)
!629 = !DILocation(line: 762, column: 10, scope: !620)
!630 = !DILocalVariable(name: "count", scope: !620, file: !10, line: 763, type: !6)
!631 = !DILocation(line: 763, column: 9, scope: !620)
!632 = !DILocation(line: 765, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !620, file: !10, line: 765, column: 9)
!634 = !DILocation(line: 765, column: 9, scope: !620)
!635 = !DILocalVariable(name: "len", scope: !636, file: !10, line: 766, type: !48)
!636 = distinct !DILexicalBlock(scope: !633, file: !10, line: 765, column: 30)
!637 = !DILocation(line: 766, column: 16, scope: !636)
!638 = !DILocation(line: 768, column: 21, scope: !636)
!639 = !DILocation(line: 768, column: 9, scope: !636)
!640 = !DILocation(line: 769, column: 16, scope: !636)
!641 = !DILocation(line: 769, column: 9, scope: !636)
!642 = !DILocation(line: 770, column: 19, scope: !643)
!643 = distinct !DILexicalBlock(scope: !636, file: !10, line: 770, column: 13)
!644 = !DILocation(line: 770, column: 42, scope: !643)
!645 = !DILocation(line: 770, column: 13, scope: !643)
!646 = !DILocation(line: 770, column: 49, scope: !643)
!647 = !DILocation(line: 770, column: 13, scope: !636)
!648 = !DILocation(line: 770, column: 58, scope: !643)
!649 = !DILocation(line: 771, column: 22, scope: !636)
!650 = !DILocation(line: 771, column: 15, scope: !636)
!651 = !DILocation(line: 771, column: 13, scope: !636)
!652 = !DILocation(line: 772, column: 9, scope: !636)
!653 = !DILocation(line: 772, column: 15, scope: !636)
!654 = !DILocation(line: 772, column: 19, scope: !636)
!655 = !DILocation(line: 772, column: 27, scope: !636)
!656 = !DILocation(line: 772, column: 30, scope: !636)
!657 = !DILocation(line: 772, column: 23, scope: !636)
!658 = !DILocation(line: 772, column: 34, scope: !636)
!659 = !DILocation(line: 772, column: 42, scope: !636)
!660 = !DILocation(line: 772, column: 49, scope: !636)
!661 = !DILocation(line: 772, column: 52, scope: !636)
!662 = !DILocation(line: 772, column: 45, scope: !636)
!663 = !DILocation(line: 772, column: 56, scope: !636)
!664 = !DILocation(line: 0, scope: !636)
!665 = !DILocation(line: 773, column: 16, scope: !666)
!666 = distinct !DILexicalBlock(scope: !636, file: !10, line: 772, column: 66)
!667 = !DILocation(line: 774, column: 17, scope: !666)
!668 = !DILocation(line: 774, column: 13, scope: !666)
!669 = !DILocation(line: 774, column: 22, scope: !666)
!670 = distinct !{!670, !652, !671}
!671 = !DILocation(line: 775, column: 9, scope: !636)
!672 = !DILocation(line: 776, column: 23, scope: !636)
!673 = !DILocation(line: 776, column: 16, scope: !636)
!674 = !DILocation(line: 776, column: 9, scope: !636)
!675 = !DILocation(line: 778, column: 30, scope: !676)
!676 = distinct !DILexicalBlock(scope: !633, file: !10, line: 777, column: 12)
!677 = !DILocation(line: 778, column: 53, scope: !676)
!678 = !DILocation(line: 778, column: 17, scope: !676)
!679 = !DILocation(line: 778, column: 15, scope: !676)
!680 = !DILocation(line: 779, column: 13, scope: !681)
!681 = distinct !DILexicalBlock(scope: !676, file: !10, line: 779, column: 13)
!682 = !DILocation(line: 779, column: 19, scope: !681)
!683 = !DILocation(line: 779, column: 13, scope: !676)
!684 = !DILocation(line: 779, column: 26, scope: !681)
!685 = !DILocation(line: 780, column: 23, scope: !676)
!686 = !DILocation(line: 780, column: 16, scope: !676)
!687 = !DILocation(line: 780, column: 9, scope: !676)
!688 = !DILocation(line: 782, column: 1, scope: !620)
!689 = distinct !DISubprogram(name: "isUnsupportedTerm", scope: !10, file: !10, line: 159, type: !690, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!690 = !DISubroutineType(types: !691)
!691 = !{!6}
!692 = !DILocalVariable(name: "term", scope: !689, file: !10, line: 160, type: !53)
!693 = !DILocation(line: 160, column: 11, scope: !689)
!694 = !DILocation(line: 160, column: 18, scope: !689)
!695 = !DILocalVariable(name: "j", scope: !689, file: !10, line: 161, type: !6)
!696 = !DILocation(line: 161, column: 9, scope: !689)
!697 = !DILocation(line: 163, column: 9, scope: !698)
!698 = distinct !DILexicalBlock(scope: !689, file: !10, line: 163, column: 9)
!699 = !DILocation(line: 163, column: 14, scope: !698)
!700 = !DILocation(line: 163, column: 9, scope: !689)
!701 = !DILocation(line: 163, column: 23, scope: !698)
!702 = !DILocation(line: 164, column: 12, scope: !703)
!703 = distinct !DILexicalBlock(scope: !689, file: !10, line: 164, column: 5)
!704 = !DILocation(line: 164, column: 10, scope: !703)
!705 = !DILocation(line: 164, column: 34, scope: !706)
!706 = distinct !DILexicalBlock(scope: !703, file: !10, line: 164, column: 5)
!707 = !DILocation(line: 164, column: 17, scope: !706)
!708 = !DILocation(line: 164, column: 5, scope: !703)
!709 = !DILocation(line: 165, column: 25, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !10, line: 165, column: 13)
!711 = !DILocation(line: 165, column: 47, scope: !710)
!712 = !DILocation(line: 165, column: 30, scope: !710)
!713 = !DILocation(line: 165, column: 14, scope: !710)
!714 = !DILocation(line: 165, column: 13, scope: !706)
!715 = !DILocation(line: 165, column: 52, scope: !710)
!716 = !DILocation(line: 165, column: 49, scope: !710)
!717 = !DILocation(line: 164, column: 39, scope: !706)
!718 = !DILocation(line: 164, column: 5, scope: !706)
!719 = distinct !{!719, !708, !720}
!720 = !DILocation(line: 165, column: 59, scope: !703)
!721 = !DILocation(line: 166, column: 5, scope: !689)
!722 = !DILocation(line: 167, column: 1, scope: !689)
!723 = distinct !DISubprogram(name: "linenoiseRaw", scope: !10, file: !10, line: 732, type: !724, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!724 = !DISubroutineType(types: !725)
!725 = !{!6, !53, !48, !41}
!726 = !DILocalVariable(name: "buf", arg: 1, scope: !723, file: !10, line: 732, type: !53)
!727 = !DILocation(line: 732, column: 31, scope: !723)
!728 = !DILocalVariable(name: "buflen", arg: 2, scope: !723, file: !10, line: 732, type: !48)
!729 = !DILocation(line: 732, column: 43, scope: !723)
!730 = !DILocalVariable(name: "prompt", arg: 3, scope: !723, file: !10, line: 732, type: !41)
!731 = !DILocation(line: 732, column: 63, scope: !723)
!732 = !DILocalVariable(name: "fd", scope: !723, file: !10, line: 733, type: !6)
!733 = !DILocation(line: 733, column: 9, scope: !723)
!734 = !DILocalVariable(name: "count", scope: !723, file: !10, line: 734, type: !6)
!735 = !DILocation(line: 734, column: 9, scope: !723)
!736 = !DILocation(line: 736, column: 9, scope: !737)
!737 = distinct !DILexicalBlock(scope: !723, file: !10, line: 736, column: 9)
!738 = !DILocation(line: 736, column: 16, scope: !737)
!739 = !DILocation(line: 736, column: 9, scope: !723)
!740 = !DILocation(line: 737, column: 9, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !10, line: 736, column: 22)
!742 = !DILocation(line: 737, column: 15, scope: !741)
!743 = !DILocation(line: 738, column: 9, scope: !741)
!744 = !DILocation(line: 740, column: 10, scope: !745)
!745 = distinct !DILexicalBlock(scope: !723, file: !10, line: 740, column: 9)
!746 = !DILocation(line: 740, column: 9, scope: !723)
!747 = !DILocation(line: 741, column: 19, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !10, line: 741, column: 13)
!749 = distinct !DILexicalBlock(scope: !745, file: !10, line: 740, column: 32)
!750 = !DILocation(line: 741, column: 24, scope: !748)
!751 = !DILocation(line: 741, column: 32, scope: !748)
!752 = !DILocation(line: 741, column: 13, scope: !748)
!753 = !DILocation(line: 741, column: 39, scope: !748)
!754 = !DILocation(line: 741, column: 13, scope: !749)
!755 = !DILocation(line: 741, column: 48, scope: !748)
!756 = !DILocation(line: 742, column: 24, scope: !749)
!757 = !DILocation(line: 742, column: 17, scope: !749)
!758 = !DILocation(line: 742, column: 15, scope: !749)
!759 = !DILocation(line: 743, column: 13, scope: !760)
!760 = distinct !DILexicalBlock(scope: !749, file: !10, line: 743, column: 13)
!761 = !DILocation(line: 743, column: 19, scope: !760)
!762 = !DILocation(line: 743, column: 22, scope: !760)
!763 = !DILocation(line: 743, column: 26, scope: !760)
!764 = !DILocation(line: 743, column: 31, scope: !760)
!765 = !DILocation(line: 743, column: 35, scope: !760)
!766 = !DILocation(line: 743, column: 13, scope: !749)
!767 = !DILocation(line: 744, column: 18, scope: !768)
!768 = distinct !DILexicalBlock(scope: !760, file: !10, line: 743, column: 44)
!769 = !DILocation(line: 745, column: 13, scope: !768)
!770 = !DILocation(line: 745, column: 17, scope: !768)
!771 = !DILocation(line: 745, column: 24, scope: !768)
!772 = !DILocation(line: 746, column: 9, scope: !768)
!773 = !DILocation(line: 747, column: 5, scope: !749)
!774 = !DILocation(line: 748, column: 27, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !10, line: 748, column: 13)
!776 = distinct !DILexicalBlock(scope: !745, file: !10, line: 747, column: 12)
!777 = !DILocation(line: 748, column: 13, scope: !775)
!778 = !DILocation(line: 748, column: 31, scope: !775)
!779 = !DILocation(line: 748, column: 13, scope: !776)
!780 = !DILocation(line: 748, column: 38, scope: !775)
!781 = !DILocation(line: 749, column: 31, scope: !776)
!782 = !DILocation(line: 749, column: 35, scope: !776)
!783 = !DILocation(line: 749, column: 40, scope: !776)
!784 = !DILocation(line: 749, column: 48, scope: !776)
!785 = !DILocation(line: 749, column: 17, scope: !776)
!786 = !DILocation(line: 749, column: 15, scope: !776)
!787 = !DILocation(line: 750, column: 24, scope: !776)
!788 = !DILocation(line: 750, column: 9, scope: !776)
!789 = !DILocation(line: 751, column: 9, scope: !776)
!790 = !DILocation(line: 753, column: 12, scope: !723)
!791 = !DILocation(line: 753, column: 5, scope: !723)
!792 = !DILocation(line: 754, column: 1, scope: !723)
!793 = distinct !DISubprogram(name: "linenoiseHistoryAdd", scope: !10, file: !10, line: 805, type: !794, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!794 = !DISubroutineType(types: !795)
!795 = !{!6, !41}
!796 = !DILocalVariable(name: "line", arg: 1, scope: !793, file: !10, line: 805, type: !41)
!797 = !DILocation(line: 805, column: 37, scope: !793)
!798 = !DILocalVariable(name: "linecopy", scope: !793, file: !10, line: 806, type: !53)
!799 = !DILocation(line: 806, column: 11, scope: !793)
!800 = !DILocation(line: 808, column: 9, scope: !801)
!801 = distinct !DILexicalBlock(scope: !793, file: !10, line: 808, column: 9)
!802 = !DILocation(line: 808, column: 25, scope: !801)
!803 = !DILocation(line: 808, column: 9, scope: !793)
!804 = !DILocation(line: 808, column: 31, scope: !801)
!805 = !DILocation(line: 809, column: 9, scope: !806)
!806 = distinct !DILexicalBlock(scope: !793, file: !10, line: 809, column: 9)
!807 = !DILocation(line: 809, column: 17, scope: !806)
!808 = !DILocation(line: 809, column: 9, scope: !793)
!809 = !DILocation(line: 810, column: 40, scope: !810)
!810 = distinct !DILexicalBlock(scope: !806, file: !10, line: 809, column: 26)
!811 = !DILocation(line: 810, column: 39, scope: !810)
!812 = !DILocation(line: 810, column: 19, scope: !810)
!813 = !DILocation(line: 810, column: 17, scope: !810)
!814 = !DILocation(line: 811, column: 13, scope: !815)
!815 = distinct !DILexicalBlock(scope: !810, file: !10, line: 811, column: 13)
!816 = !DILocation(line: 811, column: 21, scope: !815)
!817 = !DILocation(line: 811, column: 13, scope: !810)
!818 = !DILocation(line: 811, column: 30, scope: !815)
!819 = !DILocation(line: 812, column: 16, scope: !810)
!820 = !DILocation(line: 812, column: 41, scope: !810)
!821 = !DILocation(line: 812, column: 40, scope: !810)
!822 = !DILocation(line: 812, column: 9, scope: !810)
!823 = !DILocation(line: 813, column: 5, scope: !810)
!824 = !DILocation(line: 814, column: 23, scope: !793)
!825 = !DILocation(line: 814, column: 16, scope: !793)
!826 = !DILocation(line: 814, column: 14, scope: !793)
!827 = !DILocation(line: 815, column: 10, scope: !828)
!828 = distinct !DILexicalBlock(scope: !793, file: !10, line: 815, column: 9)
!829 = !DILocation(line: 815, column: 9, scope: !793)
!830 = !DILocation(line: 815, column: 20, scope: !828)
!831 = !DILocation(line: 816, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !793, file: !10, line: 816, column: 9)
!833 = !DILocation(line: 816, column: 24, scope: !832)
!834 = !DILocation(line: 816, column: 21, scope: !832)
!835 = !DILocation(line: 816, column: 9, scope: !793)
!836 = !DILocation(line: 817, column: 14, scope: !837)
!837 = distinct !DILexicalBlock(scope: !832, file: !10, line: 816, column: 41)
!838 = !DILocation(line: 817, column: 9, scope: !837)
!839 = !DILocation(line: 818, column: 17, scope: !837)
!840 = !DILocation(line: 818, column: 25, scope: !837)
!841 = !DILocation(line: 818, column: 32, scope: !837)
!842 = !DILocation(line: 818, column: 50, scope: !837)
!843 = !DILocation(line: 818, column: 65, scope: !837)
!844 = !DILocation(line: 818, column: 49, scope: !837)
!845 = !DILocation(line: 818, column: 48, scope: !837)
!846 = !DILocation(line: 818, column: 9, scope: !837)
!847 = !DILocation(line: 819, column: 20, scope: !837)
!848 = !DILocation(line: 820, column: 5, scope: !837)
!849 = !DILocation(line: 821, column: 28, scope: !793)
!850 = !DILocation(line: 821, column: 5, scope: !793)
!851 = !DILocation(line: 821, column: 13, scope: !793)
!852 = !DILocation(line: 821, column: 26, scope: !793)
!853 = !DILocation(line: 822, column: 16, scope: !793)
!854 = !DILocation(line: 823, column: 5, scope: !793)
!855 = !DILocation(line: 824, column: 1, scope: !793)
!856 = distinct !DISubprogram(name: "linenoiseHistorySetMaxLen", scope: !10, file: !10, line: 830, type: !857, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!857 = !DISubroutineType(types: !858)
!858 = !{!6, !6}
!859 = !DILocalVariable(name: "len", arg: 1, scope: !856, file: !10, line: 830, type: !6)
!860 = !DILocation(line: 830, column: 35, scope: !856)
!861 = !DILocalVariable(name: "new", scope: !856, file: !10, line: 831, type: !52)
!862 = !DILocation(line: 831, column: 12, scope: !856)
!863 = !DILocation(line: 833, column: 9, scope: !864)
!864 = distinct !DILexicalBlock(scope: !856, file: !10, line: 833, column: 9)
!865 = !DILocation(line: 833, column: 13, scope: !864)
!866 = !DILocation(line: 833, column: 9, scope: !856)
!867 = !DILocation(line: 833, column: 18, scope: !864)
!868 = !DILocation(line: 834, column: 9, scope: !869)
!869 = distinct !DILexicalBlock(scope: !856, file: !10, line: 834, column: 9)
!870 = !DILocation(line: 834, column: 9, scope: !856)
!871 = !DILocalVariable(name: "tocopy", scope: !872, file: !10, line: 835, type: !6)
!872 = distinct !DILexicalBlock(scope: !869, file: !10, line: 834, column: 18)
!873 = !DILocation(line: 835, column: 13, scope: !872)
!874 = !DILocation(line: 835, column: 22, scope: !872)
!875 = !DILocation(line: 837, column: 36, scope: !872)
!876 = !DILocation(line: 837, column: 35, scope: !872)
!877 = !DILocation(line: 837, column: 15, scope: !872)
!878 = !DILocation(line: 837, column: 13, scope: !872)
!879 = !DILocation(line: 838, column: 13, scope: !880)
!880 = distinct !DILexicalBlock(scope: !872, file: !10, line: 838, column: 13)
!881 = !DILocation(line: 838, column: 17, scope: !880)
!882 = !DILocation(line: 838, column: 13, scope: !872)
!883 = !DILocation(line: 838, column: 26, scope: !880)
!884 = !DILocation(line: 841, column: 13, scope: !885)
!885 = distinct !DILexicalBlock(scope: !872, file: !10, line: 841, column: 13)
!886 = !DILocation(line: 841, column: 19, scope: !885)
!887 = !DILocation(line: 841, column: 17, scope: !885)
!888 = !DILocation(line: 841, column: 13, scope: !872)
!889 = !DILocalVariable(name: "j", scope: !890, file: !10, line: 842, type: !6)
!890 = distinct !DILexicalBlock(scope: !885, file: !10, line: 841, column: 27)
!891 = !DILocation(line: 842, column: 17, scope: !890)
!892 = !DILocation(line: 844, column: 20, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !10, line: 844, column: 13)
!894 = !DILocation(line: 844, column: 18, scope: !893)
!895 = !DILocation(line: 844, column: 25, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !10, line: 844, column: 13)
!897 = !DILocation(line: 844, column: 29, scope: !896)
!898 = !DILocation(line: 844, column: 36, scope: !896)
!899 = !DILocation(line: 844, column: 35, scope: !896)
!900 = !DILocation(line: 844, column: 27, scope: !896)
!901 = !DILocation(line: 844, column: 13, scope: !893)
!902 = !DILocation(line: 844, column: 51, scope: !896)
!903 = !DILocation(line: 844, column: 59, scope: !896)
!904 = !DILocation(line: 844, column: 46, scope: !896)
!905 = !DILocation(line: 844, column: 42, scope: !896)
!906 = !DILocation(line: 844, column: 13, scope: !896)
!907 = distinct !{!907, !901, !908}
!908 = !DILocation(line: 844, column: 61, scope: !893)
!909 = !DILocation(line: 845, column: 22, scope: !890)
!910 = !DILocation(line: 845, column: 20, scope: !890)
!911 = !DILocation(line: 846, column: 9, scope: !890)
!912 = !DILocation(line: 847, column: 16, scope: !872)
!913 = !DILocation(line: 847, column: 36, scope: !872)
!914 = !DILocation(line: 847, column: 35, scope: !872)
!915 = !DILocation(line: 847, column: 9, scope: !872)
!916 = !DILocation(line: 848, column: 16, scope: !872)
!917 = !DILocation(line: 848, column: 20, scope: !872)
!918 = !DILocation(line: 848, column: 29, scope: !872)
!919 = !DILocation(line: 848, column: 41, scope: !872)
!920 = !DILocation(line: 848, column: 40, scope: !872)
!921 = !DILocation(line: 848, column: 27, scope: !872)
!922 = !DILocation(line: 848, column: 64, scope: !872)
!923 = !DILocation(line: 848, column: 63, scope: !872)
!924 = !DILocation(line: 848, column: 9, scope: !872)
!925 = !DILocation(line: 849, column: 14, scope: !872)
!926 = !DILocation(line: 849, column: 9, scope: !872)
!927 = !DILocation(line: 850, column: 19, scope: !872)
!928 = !DILocation(line: 850, column: 17, scope: !872)
!929 = !DILocation(line: 851, column: 5, scope: !872)
!930 = !DILocation(line: 852, column: 23, scope: !856)
!931 = !DILocation(line: 852, column: 21, scope: !856)
!932 = !DILocation(line: 853, column: 9, scope: !933)
!933 = distinct !DILexicalBlock(scope: !856, file: !10, line: 853, column: 9)
!934 = !DILocation(line: 853, column: 23, scope: !933)
!935 = !DILocation(line: 853, column: 21, scope: !933)
!936 = !DILocation(line: 853, column: 9, scope: !856)
!937 = !DILocation(line: 854, column: 23, scope: !933)
!938 = !DILocation(line: 854, column: 21, scope: !933)
!939 = !DILocation(line: 854, column: 9, scope: !933)
!940 = !DILocation(line: 855, column: 5, scope: !856)
!941 = !DILocation(line: 856, column: 1, scope: !856)
!942 = distinct !DISubprogram(name: "linenoiseHistorySave", scope: !10, file: !10, line: 860, type: !943, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!943 = !DISubroutineType(types: !944)
!944 = !{!6, !53}
!945 = !DILocalVariable(name: "filename", arg: 1, scope: !942, file: !10, line: 860, type: !53)
!946 = !DILocation(line: 860, column: 32, scope: !942)
!947 = !DILocalVariable(name: "fp", scope: !942, file: !10, line: 861, type: !948)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !950, line: 7, baseType: !951)
!950 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !952, line: 49, size: 1728, elements: !953)
!952 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !969, !971, !972, !973, !977, !979, !981, !982, !985, !987, !990, !993, !994, !995, !996, !997}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !951, file: !952, line: 51, baseType: !6, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !951, file: !952, line: 54, baseType: !53, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !951, file: !952, line: 55, baseType: !53, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !951, file: !952, line: 56, baseType: !53, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !951, file: !952, line: 57, baseType: !53, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !951, file: !952, line: 58, baseType: !53, size: 64, offset: 320)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !951, file: !952, line: 59, baseType: !53, size: 64, offset: 384)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !951, file: !952, line: 60, baseType: !53, size: 64, offset: 448)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !951, file: !952, line: 61, baseType: !53, size: 64, offset: 512)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !951, file: !952, line: 64, baseType: !53, size: 64, offset: 576)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !951, file: !952, line: 65, baseType: !53, size: 64, offset: 640)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !951, file: !952, line: 66, baseType: !53, size: 64, offset: 704)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !951, file: !952, line: 68, baseType: !967, size: 64, offset: 768)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !952, line: 36, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !951, file: !952, line: 70, baseType: !970, size: 64, offset: 832)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !951, file: !952, line: 72, baseType: !6, size: 32, offset: 896)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !951, file: !952, line: 73, baseType: !6, size: 32, offset: 928)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !951, file: !952, line: 74, baseType: !974, size: 64, offset: 960)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !975, line: 152, baseType: !976)
!975 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!976 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !951, file: !952, line: 77, baseType: !978, size: 16, offset: 1024)
!978 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !951, file: !952, line: 78, baseType: !980, size: 8, offset: 1040)
!980 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !951, file: !952, line: 79, baseType: !129, size: 8, offset: 1048)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !951, file: !952, line: 81, baseType: !983, size: 64, offset: 1088)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !952, line: 43, baseType: null)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !951, file: !952, line: 89, baseType: !986, size: 64, offset: 1152)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !975, line: 153, baseType: !976)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !951, file: !952, line: 91, baseType: !988, size: 64, offset: 1216)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !952, line: 37, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !951, file: !952, line: 92, baseType: !991, size: 64, offset: 1280)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !952, line: 38, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !951, file: !952, line: 93, baseType: !970, size: 64, offset: 1344)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !951, file: !952, line: 94, baseType: !5, size: 64, offset: 1408)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !951, file: !952, line: 95, baseType: !48, size: 64, offset: 1472)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !951, file: !952, line: 96, baseType: !6, size: 32, offset: 1536)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !951, file: !952, line: 98, baseType: !998, size: 160, offset: 1568)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !999)
!999 = !{!1000}
!1000 = !DISubrange(count: 20)
!1001 = !DILocation(line: 861, column: 11, scope: !942)
!1002 = !DILocation(line: 861, column: 22, scope: !942)
!1003 = !DILocation(line: 861, column: 16, scope: !942)
!1004 = !DILocalVariable(name: "j", scope: !942, file: !10, line: 862, type: !6)
!1005 = !DILocation(line: 862, column: 9, scope: !942)
!1006 = !DILocation(line: 864, column: 9, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !942, file: !10, line: 864, column: 9)
!1008 = !DILocation(line: 864, column: 12, scope: !1007)
!1009 = !DILocation(line: 864, column: 9, scope: !942)
!1010 = !DILocation(line: 864, column: 21, scope: !1007)
!1011 = !DILocation(line: 865, column: 12, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !942, file: !10, line: 865, column: 5)
!1013 = !DILocation(line: 865, column: 10, scope: !1012)
!1014 = !DILocation(line: 865, column: 17, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !10, line: 865, column: 5)
!1016 = !DILocation(line: 865, column: 21, scope: !1015)
!1017 = !DILocation(line: 865, column: 19, scope: !1015)
!1018 = !DILocation(line: 865, column: 5, scope: !1012)
!1019 = !DILocation(line: 866, column: 17, scope: !1015)
!1020 = !DILocation(line: 866, column: 27, scope: !1015)
!1021 = !DILocation(line: 866, column: 35, scope: !1015)
!1022 = !DILocation(line: 866, column: 9, scope: !1015)
!1023 = !DILocation(line: 865, column: 35, scope: !1015)
!1024 = !DILocation(line: 865, column: 5, scope: !1015)
!1025 = distinct !{!1025, !1018, !1026}
!1026 = !DILocation(line: 866, column: 37, scope: !1012)
!1027 = !DILocation(line: 867, column: 12, scope: !942)
!1028 = !DILocation(line: 867, column: 5, scope: !942)
!1029 = !DILocation(line: 868, column: 5, scope: !942)
!1030 = !DILocation(line: 869, column: 1, scope: !942)
!1031 = distinct !DISubprogram(name: "linenoiseHistoryLoad", scope: !10, file: !10, line: 876, type: !943, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1032 = !DILocalVariable(name: "filename", arg: 1, scope: !1031, file: !10, line: 876, type: !53)
!1033 = !DILocation(line: 876, column: 32, scope: !1031)
!1034 = !DILocalVariable(name: "fp", scope: !1031, file: !10, line: 877, type: !948)
!1035 = !DILocation(line: 877, column: 11, scope: !1031)
!1036 = !DILocation(line: 877, column: 22, scope: !1031)
!1037 = !DILocation(line: 877, column: 16, scope: !1031)
!1038 = !DILocalVariable(name: "buf", scope: !1031, file: !10, line: 878, type: !626)
!1039 = !DILocation(line: 878, column: 10, scope: !1031)
!1040 = !DILocation(line: 880, column: 9, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1031, file: !10, line: 880, column: 9)
!1042 = !DILocation(line: 880, column: 12, scope: !1041)
!1043 = !DILocation(line: 880, column: 9, scope: !1031)
!1044 = !DILocation(line: 880, column: 21, scope: !1041)
!1045 = !DILocation(line: 882, column: 5, scope: !1031)
!1046 = !DILocation(line: 882, column: 18, scope: !1031)
!1047 = !DILocation(line: 882, column: 41, scope: !1031)
!1048 = !DILocation(line: 882, column: 12, scope: !1031)
!1049 = !DILocation(line: 882, column: 45, scope: !1031)
!1050 = !DILocalVariable(name: "p", scope: !1051, file: !10, line: 883, type: !53)
!1051 = distinct !DILexicalBlock(scope: !1031, file: !10, line: 882, column: 54)
!1052 = !DILocation(line: 883, column: 15, scope: !1051)
!1053 = !DILocation(line: 885, column: 20, scope: !1051)
!1054 = !DILocation(line: 885, column: 13, scope: !1051)
!1055 = !DILocation(line: 885, column: 11, scope: !1051)
!1056 = !DILocation(line: 886, column: 14, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1051, file: !10, line: 886, column: 13)
!1058 = !DILocation(line: 886, column: 13, scope: !1051)
!1059 = !DILocation(line: 886, column: 28, scope: !1057)
!1060 = !DILocation(line: 886, column: 21, scope: !1057)
!1061 = !DILocation(line: 886, column: 19, scope: !1057)
!1062 = !DILocation(line: 886, column: 17, scope: !1057)
!1063 = !DILocation(line: 887, column: 13, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1051, file: !10, line: 887, column: 13)
!1065 = !DILocation(line: 887, column: 13, scope: !1051)
!1066 = !DILocation(line: 887, column: 17, scope: !1064)
!1067 = !DILocation(line: 887, column: 19, scope: !1064)
!1068 = !DILocation(line: 887, column: 16, scope: !1064)
!1069 = !DILocation(line: 888, column: 29, scope: !1051)
!1070 = !DILocation(line: 888, column: 9, scope: !1051)
!1071 = distinct !{!1071, !1045, !1072}
!1072 = !DILocation(line: 889, column: 5, scope: !1031)
!1073 = !DILocation(line: 890, column: 12, scope: !1031)
!1074 = !DILocation(line: 890, column: 5, scope: !1031)
!1075 = !DILocation(line: 891, column: 5, scope: !1031)
!1076 = !DILocation(line: 892, column: 1, scope: !1031)
!1077 = distinct !DISubprogram(name: "refreshMultiLine", scope: !10, file: !10, line: 367, type: !329, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1078 = !DILocalVariable(name: "l", arg: 1, scope: !1077, file: !10, line: 367, type: !212)
!1079 = !DILocation(line: 367, column: 53, scope: !1077)
!1080 = !DILocalVariable(name: "seq", scope: !1077, file: !10, line: 368, type: !1081)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 512, elements: !1082)
!1082 = !{!1083}
!1083 = !DISubrange(count: 64)
!1084 = !DILocation(line: 368, column: 10, scope: !1077)
!1085 = !DILocalVariable(name: "plen", scope: !1077, file: !10, line: 369, type: !6)
!1086 = !DILocation(line: 369, column: 9, scope: !1077)
!1087 = !DILocation(line: 369, column: 23, scope: !1077)
!1088 = !DILocation(line: 369, column: 26, scope: !1077)
!1089 = !DILocation(line: 369, column: 16, scope: !1077)
!1090 = !DILocalVariable(name: "rows", scope: !1077, file: !10, line: 370, type: !6)
!1091 = !DILocation(line: 370, column: 9, scope: !1077)
!1092 = !DILocation(line: 370, column: 17, scope: !1077)
!1093 = !DILocation(line: 370, column: 22, scope: !1077)
!1094 = !DILocation(line: 370, column: 25, scope: !1077)
!1095 = !DILocation(line: 370, column: 21, scope: !1077)
!1096 = !DILocation(line: 370, column: 29, scope: !1077)
!1097 = !DILocation(line: 370, column: 32, scope: !1077)
!1098 = !DILocation(line: 370, column: 28, scope: !1077)
!1099 = !DILocation(line: 370, column: 36, scope: !1077)
!1100 = !DILocation(line: 370, column: 40, scope: !1077)
!1101 = !DILocation(line: 370, column: 43, scope: !1077)
!1102 = !DILocation(line: 370, column: 39, scope: !1077)
!1103 = !DILocation(line: 370, column: 16, scope: !1077)
!1104 = !DILocalVariable(name: "rpos", scope: !1077, file: !10, line: 371, type: !6)
!1105 = !DILocation(line: 371, column: 9, scope: !1077)
!1106 = !DILocation(line: 371, column: 17, scope: !1077)
!1107 = !DILocation(line: 371, column: 22, scope: !1077)
!1108 = !DILocation(line: 371, column: 25, scope: !1077)
!1109 = !DILocation(line: 371, column: 21, scope: !1077)
!1110 = !DILocation(line: 371, column: 32, scope: !1077)
!1111 = !DILocation(line: 371, column: 35, scope: !1077)
!1112 = !DILocation(line: 371, column: 31, scope: !1077)
!1113 = !DILocation(line: 371, column: 41, scope: !1077)
!1114 = !DILocation(line: 371, column: 44, scope: !1077)
!1115 = !DILocation(line: 371, column: 40, scope: !1077)
!1116 = !DILocation(line: 371, column: 16, scope: !1077)
!1117 = !DILocalVariable(name: "rpos2", scope: !1077, file: !10, line: 372, type: !6)
!1118 = !DILocation(line: 372, column: 9, scope: !1077)
!1119 = !DILocalVariable(name: "old_rows", scope: !1077, file: !10, line: 373, type: !6)
!1120 = !DILocation(line: 373, column: 9, scope: !1077)
!1121 = !DILocation(line: 373, column: 20, scope: !1077)
!1122 = !DILocation(line: 373, column: 23, scope: !1077)
!1123 = !DILocalVariable(name: "fd", scope: !1077, file: !10, line: 374, type: !6)
!1124 = !DILocation(line: 374, column: 9, scope: !1077)
!1125 = !DILocation(line: 374, column: 14, scope: !1077)
!1126 = !DILocation(line: 374, column: 17, scope: !1077)
!1127 = !DILocalVariable(name: "j", scope: !1077, file: !10, line: 374, type: !6)
!1128 = !DILocation(line: 374, column: 21, scope: !1077)
!1129 = !DILocation(line: 377, column: 9, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1077, file: !10, line: 377, column: 9)
!1131 = !DILocation(line: 377, column: 21, scope: !1130)
!1132 = !DILocation(line: 377, column: 24, scope: !1130)
!1133 = !DILocation(line: 377, column: 16, scope: !1130)
!1134 = !DILocation(line: 377, column: 14, scope: !1130)
!1135 = !DILocation(line: 377, column: 9, scope: !1077)
!1136 = !DILocation(line: 377, column: 46, scope: !1130)
!1137 = !DILocation(line: 377, column: 33, scope: !1130)
!1138 = !DILocation(line: 377, column: 36, scope: !1130)
!1139 = !DILocation(line: 377, column: 44, scope: !1130)
!1140 = !DILocation(line: 387, column: 9, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1077, file: !10, line: 387, column: 9)
!1142 = !DILocation(line: 387, column: 18, scope: !1141)
!1143 = !DILocation(line: 387, column: 17, scope: !1141)
!1144 = !DILocation(line: 387, column: 23, scope: !1141)
!1145 = !DILocation(line: 387, column: 9, scope: !1077)
!1146 = !DILocation(line: 391, column: 18, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1141, file: !10, line: 387, column: 28)
!1148 = !DILocation(line: 391, column: 37, scope: !1147)
!1149 = !DILocation(line: 391, column: 46, scope: !1147)
!1150 = !DILocation(line: 391, column: 45, scope: !1147)
!1151 = !DILocation(line: 391, column: 9, scope: !1147)
!1152 = !DILocation(line: 392, column: 19, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1147, file: !10, line: 392, column: 13)
!1154 = !DILocation(line: 392, column: 22, scope: !1153)
!1155 = !DILocation(line: 392, column: 33, scope: !1153)
!1156 = !DILocation(line: 392, column: 26, scope: !1153)
!1157 = !DILocation(line: 392, column: 13, scope: !1153)
!1158 = !DILocation(line: 392, column: 39, scope: !1153)
!1159 = !DILocation(line: 392, column: 13, scope: !1147)
!1160 = !DILocation(line: 392, column: 46, scope: !1153)
!1161 = !DILocation(line: 393, column: 5, scope: !1147)
!1162 = !DILocation(line: 396, column: 12, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1077, file: !10, line: 396, column: 5)
!1164 = !DILocation(line: 396, column: 10, scope: !1163)
!1165 = !DILocation(line: 396, column: 17, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1163, file: !10, line: 396, column: 5)
!1167 = !DILocation(line: 396, column: 21, scope: !1166)
!1168 = !DILocation(line: 396, column: 29, scope: !1166)
!1169 = !DILocation(line: 396, column: 19, scope: !1166)
!1170 = !DILocation(line: 396, column: 5, scope: !1163)
!1171 = !DILocation(line: 400, column: 18, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1166, file: !10, line: 396, column: 38)
!1173 = !DILocation(line: 400, column: 9, scope: !1172)
!1174 = !DILocation(line: 401, column: 19, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !10, line: 401, column: 13)
!1176 = !DILocation(line: 401, column: 22, scope: !1175)
!1177 = !DILocation(line: 401, column: 33, scope: !1175)
!1178 = !DILocation(line: 401, column: 26, scope: !1175)
!1179 = !DILocation(line: 401, column: 13, scope: !1175)
!1180 = !DILocation(line: 401, column: 39, scope: !1175)
!1181 = !DILocation(line: 401, column: 13, scope: !1172)
!1182 = !DILocation(line: 401, column: 46, scope: !1175)
!1183 = !DILocation(line: 402, column: 5, scope: !1172)
!1184 = !DILocation(line: 396, column: 34, scope: !1166)
!1185 = !DILocation(line: 396, column: 5, scope: !1166)
!1186 = distinct !{!1186, !1170, !1187}
!1187 = !DILocation(line: 402, column: 5, scope: !1163)
!1188 = !DILocation(line: 408, column: 14, scope: !1077)
!1189 = !DILocation(line: 408, column: 5, scope: !1077)
!1190 = !DILocation(line: 409, column: 15, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1077, file: !10, line: 409, column: 9)
!1192 = !DILocation(line: 409, column: 18, scope: !1191)
!1193 = !DILocation(line: 409, column: 29, scope: !1191)
!1194 = !DILocation(line: 409, column: 22, scope: !1191)
!1195 = !DILocation(line: 409, column: 9, scope: !1191)
!1196 = !DILocation(line: 409, column: 35, scope: !1191)
!1197 = !DILocation(line: 409, column: 9, scope: !1077)
!1198 = !DILocation(line: 409, column: 42, scope: !1191)
!1199 = !DILocation(line: 412, column: 15, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1077, file: !10, line: 412, column: 9)
!1201 = !DILocation(line: 412, column: 18, scope: !1200)
!1202 = !DILocation(line: 412, column: 21, scope: !1200)
!1203 = !DILocation(line: 412, column: 35, scope: !1200)
!1204 = !DILocation(line: 412, column: 38, scope: !1200)
!1205 = !DILocation(line: 412, column: 28, scope: !1200)
!1206 = !DILocation(line: 412, column: 9, scope: !1200)
!1207 = !DILocation(line: 412, column: 47, scope: !1200)
!1208 = !DILocation(line: 412, column: 9, scope: !1077)
!1209 = !DILocation(line: 412, column: 54, scope: !1200)
!1210 = !DILocation(line: 413, column: 15, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1077, file: !10, line: 413, column: 9)
!1212 = !DILocation(line: 413, column: 18, scope: !1211)
!1213 = !DILocation(line: 413, column: 21, scope: !1211)
!1214 = !DILocation(line: 413, column: 25, scope: !1211)
!1215 = !DILocation(line: 413, column: 28, scope: !1211)
!1216 = !DILocation(line: 413, column: 9, scope: !1211)
!1217 = !DILocation(line: 413, column: 33, scope: !1211)
!1218 = !DILocation(line: 413, column: 9, scope: !1077)
!1219 = !DILocation(line: 413, column: 40, scope: !1211)
!1220 = !DILocation(line: 417, column: 9, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1077, file: !10, line: 417, column: 9)
!1222 = !DILocation(line: 417, column: 12, scope: !1221)
!1223 = !DILocation(line: 417, column: 16, scope: !1221)
!1224 = !DILocation(line: 418, column: 9, scope: !1221)
!1225 = !DILocation(line: 418, column: 12, scope: !1221)
!1226 = !DILocation(line: 418, column: 19, scope: !1221)
!1227 = !DILocation(line: 418, column: 22, scope: !1221)
!1228 = !DILocation(line: 418, column: 16, scope: !1221)
!1229 = !DILocation(line: 418, column: 26, scope: !1221)
!1230 = !DILocation(line: 419, column: 10, scope: !1221)
!1231 = !DILocation(line: 419, column: 13, scope: !1221)
!1232 = !DILocation(line: 419, column: 17, scope: !1221)
!1233 = !DILocation(line: 419, column: 16, scope: !1221)
!1234 = !DILocation(line: 419, column: 25, scope: !1221)
!1235 = !DILocation(line: 419, column: 28, scope: !1221)
!1236 = !DILocation(line: 419, column: 23, scope: !1221)
!1237 = !DILocation(line: 419, column: 33, scope: !1221)
!1238 = !DILocation(line: 417, column: 9, scope: !1077)
!1239 = !DILocation(line: 424, column: 19, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !10, line: 424, column: 13)
!1241 = distinct !DILexicalBlock(scope: !1221, file: !10, line: 420, column: 5)
!1242 = !DILocation(line: 424, column: 13, scope: !1240)
!1243 = !DILocation(line: 424, column: 30, scope: !1240)
!1244 = !DILocation(line: 424, column: 13, scope: !1241)
!1245 = !DILocation(line: 424, column: 37, scope: !1240)
!1246 = !DILocation(line: 425, column: 18, scope: !1241)
!1247 = !DILocation(line: 425, column: 9, scope: !1241)
!1248 = !DILocation(line: 426, column: 19, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1241, file: !10, line: 426, column: 13)
!1250 = !DILocation(line: 426, column: 22, scope: !1249)
!1251 = !DILocation(line: 426, column: 33, scope: !1249)
!1252 = !DILocation(line: 426, column: 26, scope: !1249)
!1253 = !DILocation(line: 426, column: 13, scope: !1249)
!1254 = !DILocation(line: 426, column: 39, scope: !1249)
!1255 = !DILocation(line: 426, column: 13, scope: !1241)
!1256 = !DILocation(line: 426, column: 46, scope: !1249)
!1257 = !DILocation(line: 427, column: 13, scope: !1241)
!1258 = !DILocation(line: 428, column: 13, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1241, file: !10, line: 428, column: 13)
!1260 = !DILocation(line: 428, column: 25, scope: !1259)
!1261 = !DILocation(line: 428, column: 28, scope: !1259)
!1262 = !DILocation(line: 428, column: 20, scope: !1259)
!1263 = !DILocation(line: 428, column: 18, scope: !1259)
!1264 = !DILocation(line: 428, column: 13, scope: !1241)
!1265 = !DILocation(line: 428, column: 50, scope: !1259)
!1266 = !DILocation(line: 428, column: 37, scope: !1259)
!1267 = !DILocation(line: 428, column: 40, scope: !1259)
!1268 = !DILocation(line: 428, column: 48, scope: !1259)
!1269 = !DILocation(line: 429, column: 5, scope: !1241)
!1270 = !DILocation(line: 432, column: 14, scope: !1077)
!1271 = !DILocation(line: 432, column: 19, scope: !1077)
!1272 = !DILocation(line: 432, column: 22, scope: !1077)
!1273 = !DILocation(line: 432, column: 18, scope: !1077)
!1274 = !DILocation(line: 432, column: 26, scope: !1077)
!1275 = !DILocation(line: 432, column: 29, scope: !1077)
!1276 = !DILocation(line: 432, column: 25, scope: !1077)
!1277 = !DILocation(line: 432, column: 35, scope: !1077)
!1278 = !DILocation(line: 432, column: 38, scope: !1077)
!1279 = !DILocation(line: 432, column: 34, scope: !1077)
!1280 = !DILocation(line: 432, column: 13, scope: !1077)
!1281 = !DILocation(line: 432, column: 11, scope: !1077)
!1282 = !DILocation(line: 437, column: 9, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1077, file: !10, line: 437, column: 9)
!1284 = !DILocation(line: 437, column: 14, scope: !1283)
!1285 = !DILocation(line: 437, column: 13, scope: !1283)
!1286 = !DILocation(line: 437, column: 20, scope: !1283)
!1287 = !DILocation(line: 437, column: 9, scope: !1077)
!1288 = !DILocation(line: 441, column: 18, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1283, file: !10, line: 437, column: 25)
!1290 = !DILocation(line: 441, column: 37, scope: !1289)
!1291 = !DILocation(line: 441, column: 42, scope: !1289)
!1292 = !DILocation(line: 441, column: 41, scope: !1289)
!1293 = !DILocation(line: 441, column: 9, scope: !1289)
!1294 = !DILocation(line: 442, column: 19, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1289, file: !10, line: 442, column: 13)
!1296 = !DILocation(line: 442, column: 22, scope: !1295)
!1297 = !DILocation(line: 442, column: 33, scope: !1295)
!1298 = !DILocation(line: 442, column: 26, scope: !1295)
!1299 = !DILocation(line: 442, column: 13, scope: !1295)
!1300 = !DILocation(line: 442, column: 39, scope: !1295)
!1301 = !DILocation(line: 442, column: 13, scope: !1289)
!1302 = !DILocation(line: 442, column: 46, scope: !1295)
!1303 = !DILocation(line: 443, column: 5, scope: !1289)
!1304 = !DILocation(line: 448, column: 14, scope: !1077)
!1305 = !DILocation(line: 448, column: 37, scope: !1077)
!1306 = !DILocation(line: 448, column: 47, scope: !1077)
!1307 = !DILocation(line: 448, column: 50, scope: !1077)
!1308 = !DILocation(line: 448, column: 42, scope: !1077)
!1309 = !DILocation(line: 448, column: 41, scope: !1077)
!1310 = !DILocation(line: 448, column: 62, scope: !1077)
!1311 = !DILocation(line: 448, column: 65, scope: !1077)
!1312 = !DILocation(line: 448, column: 57, scope: !1077)
!1313 = !DILocation(line: 448, column: 55, scope: !1077)
!1314 = !DILocation(line: 448, column: 34, scope: !1077)
!1315 = !DILocation(line: 448, column: 5, scope: !1077)
!1316 = !DILocation(line: 449, column: 15, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1077, file: !10, line: 449, column: 9)
!1318 = !DILocation(line: 449, column: 18, scope: !1317)
!1319 = !DILocation(line: 449, column: 29, scope: !1317)
!1320 = !DILocation(line: 449, column: 22, scope: !1317)
!1321 = !DILocation(line: 449, column: 9, scope: !1317)
!1322 = !DILocation(line: 449, column: 35, scope: !1317)
!1323 = !DILocation(line: 449, column: 9, scope: !1077)
!1324 = !DILocation(line: 449, column: 42, scope: !1317)
!1325 = !DILocation(line: 451, column: 17, scope: !1077)
!1326 = !DILocation(line: 451, column: 20, scope: !1077)
!1327 = !DILocation(line: 451, column: 5, scope: !1077)
!1328 = !DILocation(line: 451, column: 8, scope: !1077)
!1329 = !DILocation(line: 451, column: 15, scope: !1077)
!1330 = !DILocation(line: 457, column: 1, scope: !1077)
!1331 = distinct !DISubprogram(name: "refreshSingleLine", scope: !10, file: !10, line: 332, type: !329, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1332 = !DILocalVariable(name: "l", arg: 1, scope: !1331, file: !10, line: 332, type: !212)
!1333 = !DILocation(line: 332, column: 54, scope: !1331)
!1334 = !DILocalVariable(name: "seq", scope: !1331, file: !10, line: 333, type: !1081)
!1335 = !DILocation(line: 333, column: 10, scope: !1331)
!1336 = !DILocalVariable(name: "plen", scope: !1331, file: !10, line: 334, type: !48)
!1337 = !DILocation(line: 334, column: 12, scope: !1331)
!1338 = !DILocation(line: 334, column: 26, scope: !1331)
!1339 = !DILocation(line: 334, column: 29, scope: !1331)
!1340 = !DILocation(line: 334, column: 19, scope: !1331)
!1341 = !DILocalVariable(name: "fd", scope: !1331, file: !10, line: 335, type: !6)
!1342 = !DILocation(line: 335, column: 9, scope: !1331)
!1343 = !DILocation(line: 335, column: 14, scope: !1331)
!1344 = !DILocation(line: 335, column: 17, scope: !1331)
!1345 = !DILocalVariable(name: "buf", scope: !1331, file: !10, line: 336, type: !53)
!1346 = !DILocation(line: 336, column: 11, scope: !1331)
!1347 = !DILocation(line: 336, column: 17, scope: !1331)
!1348 = !DILocation(line: 336, column: 20, scope: !1331)
!1349 = !DILocalVariable(name: "len", scope: !1331, file: !10, line: 337, type: !48)
!1350 = !DILocation(line: 337, column: 12, scope: !1331)
!1351 = !DILocation(line: 337, column: 18, scope: !1331)
!1352 = !DILocation(line: 337, column: 21, scope: !1331)
!1353 = !DILocalVariable(name: "pos", scope: !1331, file: !10, line: 338, type: !48)
!1354 = !DILocation(line: 338, column: 12, scope: !1331)
!1355 = !DILocation(line: 338, column: 18, scope: !1331)
!1356 = !DILocation(line: 338, column: 21, scope: !1331)
!1357 = !DILocation(line: 340, column: 5, scope: !1331)
!1358 = !DILocation(line: 340, column: 12, scope: !1331)
!1359 = !DILocation(line: 340, column: 17, scope: !1331)
!1360 = !DILocation(line: 340, column: 16, scope: !1331)
!1361 = !DILocation(line: 340, column: 25, scope: !1331)
!1362 = !DILocation(line: 340, column: 28, scope: !1331)
!1363 = !DILocation(line: 340, column: 22, scope: !1331)
!1364 = !DILocation(line: 341, column: 12, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1331, file: !10, line: 340, column: 34)
!1366 = !DILocation(line: 342, column: 12, scope: !1365)
!1367 = !DILocation(line: 343, column: 12, scope: !1365)
!1368 = distinct !{!1368, !1357, !1369}
!1369 = !DILocation(line: 344, column: 5, scope: !1331)
!1370 = !DILocation(line: 345, column: 5, scope: !1331)
!1371 = !DILocation(line: 345, column: 12, scope: !1331)
!1372 = !DILocation(line: 345, column: 17, scope: !1331)
!1373 = !DILocation(line: 345, column: 16, scope: !1331)
!1374 = !DILocation(line: 345, column: 23, scope: !1331)
!1375 = !DILocation(line: 345, column: 26, scope: !1331)
!1376 = !DILocation(line: 345, column: 21, scope: !1331)
!1377 = !DILocation(line: 346, column: 12, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1331, file: !10, line: 345, column: 32)
!1379 = distinct !{!1379, !1370, !1380}
!1380 = !DILocation(line: 347, column: 5, scope: !1331)
!1381 = !DILocation(line: 350, column: 14, scope: !1331)
!1382 = !DILocation(line: 350, column: 5, scope: !1331)
!1383 = !DILocation(line: 351, column: 15, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1331, file: !10, line: 351, column: 9)
!1385 = !DILocation(line: 351, column: 18, scope: !1384)
!1386 = !DILocation(line: 351, column: 29, scope: !1384)
!1387 = !DILocation(line: 351, column: 22, scope: !1384)
!1388 = !DILocation(line: 351, column: 9, scope: !1384)
!1389 = !DILocation(line: 351, column: 35, scope: !1384)
!1390 = !DILocation(line: 351, column: 9, scope: !1331)
!1391 = !DILocation(line: 351, column: 42, scope: !1384)
!1392 = !DILocation(line: 353, column: 15, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1331, file: !10, line: 353, column: 9)
!1394 = !DILocation(line: 353, column: 18, scope: !1393)
!1395 = !DILocation(line: 353, column: 21, scope: !1393)
!1396 = !DILocation(line: 353, column: 35, scope: !1393)
!1397 = !DILocation(line: 353, column: 38, scope: !1393)
!1398 = !DILocation(line: 353, column: 28, scope: !1393)
!1399 = !DILocation(line: 353, column: 9, scope: !1393)
!1400 = !DILocation(line: 353, column: 47, scope: !1393)
!1401 = !DILocation(line: 353, column: 9, scope: !1331)
!1402 = !DILocation(line: 353, column: 54, scope: !1393)
!1403 = !DILocation(line: 354, column: 15, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1331, file: !10, line: 354, column: 9)
!1405 = !DILocation(line: 354, column: 18, scope: !1404)
!1406 = !DILocation(line: 354, column: 22, scope: !1404)
!1407 = !DILocation(line: 354, column: 9, scope: !1404)
!1408 = !DILocation(line: 354, column: 27, scope: !1404)
!1409 = !DILocation(line: 354, column: 9, scope: !1331)
!1410 = !DILocation(line: 354, column: 34, scope: !1404)
!1411 = !DILocation(line: 356, column: 14, scope: !1331)
!1412 = !DILocation(line: 356, column: 5, scope: !1331)
!1413 = !DILocation(line: 357, column: 15, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1331, file: !10, line: 357, column: 9)
!1415 = !DILocation(line: 357, column: 18, scope: !1414)
!1416 = !DILocation(line: 357, column: 29, scope: !1414)
!1417 = !DILocation(line: 357, column: 22, scope: !1414)
!1418 = !DILocation(line: 357, column: 9, scope: !1414)
!1419 = !DILocation(line: 357, column: 35, scope: !1414)
!1420 = !DILocation(line: 357, column: 9, scope: !1331)
!1421 = !DILocation(line: 357, column: 42, scope: !1414)
!1422 = !DILocation(line: 359, column: 14, scope: !1331)
!1423 = !DILocation(line: 359, column: 46, scope: !1331)
!1424 = !DILocation(line: 359, column: 50, scope: !1331)
!1425 = !DILocation(line: 359, column: 49, scope: !1331)
!1426 = !DILocation(line: 359, column: 40, scope: !1331)
!1427 = !DILocation(line: 359, column: 5, scope: !1331)
!1428 = !DILocation(line: 360, column: 15, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1331, file: !10, line: 360, column: 9)
!1430 = !DILocation(line: 360, column: 18, scope: !1429)
!1431 = !DILocation(line: 360, column: 29, scope: !1429)
!1432 = !DILocation(line: 360, column: 22, scope: !1429)
!1433 = !DILocation(line: 360, column: 9, scope: !1429)
!1434 = !DILocation(line: 360, column: 35, scope: !1429)
!1435 = !DILocation(line: 360, column: 9, scope: !1331)
!1436 = !DILocation(line: 360, column: 42, scope: !1429)
!1437 = !DILocation(line: 361, column: 1, scope: !1331)
!1438 = distinct !DISubprogram(name: "enableRawMode", scope: !10, file: !10, line: 170, type: !857, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1439 = !DILocalVariable(name: "fd", arg: 1, scope: !1438, file: !10, line: 170, type: !6)
!1440 = !DILocation(line: 170, column: 30, scope: !1438)
!1441 = !DILocalVariable(name: "raw", scope: !1438, file: !10, line: 171, type: !105)
!1442 = !DILocation(line: 171, column: 20, scope: !1438)
!1443 = !DILocation(line: 173, column: 10, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1438, file: !10, line: 173, column: 9)
!1445 = !DILocation(line: 173, column: 9, scope: !1438)
!1446 = !DILocation(line: 173, column: 32, scope: !1444)
!1447 = !DILocation(line: 174, column: 10, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1438, file: !10, line: 174, column: 9)
!1449 = !DILocation(line: 174, column: 9, scope: !1438)
!1450 = !DILocation(line: 175, column: 9, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1448, file: !10, line: 174, column: 29)
!1452 = !DILocation(line: 176, column: 27, scope: !1451)
!1453 = !DILocation(line: 177, column: 5, scope: !1451)
!1454 = !DILocation(line: 178, column: 19, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1438, file: !10, line: 178, column: 9)
!1456 = !DILocation(line: 178, column: 9, scope: !1455)
!1457 = !DILocation(line: 178, column: 37, scope: !1455)
!1458 = !DILocation(line: 178, column: 9, scope: !1438)
!1459 = !DILocation(line: 178, column: 44, scope: !1455)
!1460 = !DILocation(line: 180, column: 11, scope: !1438)
!1461 = !DILocation(line: 183, column: 9, scope: !1438)
!1462 = !DILocation(line: 183, column: 17, scope: !1438)
!1463 = !DILocation(line: 185, column: 9, scope: !1438)
!1464 = !DILocation(line: 185, column: 17, scope: !1438)
!1465 = !DILocation(line: 187, column: 9, scope: !1438)
!1466 = !DILocation(line: 187, column: 17, scope: !1438)
!1467 = !DILocation(line: 190, column: 9, scope: !1438)
!1468 = !DILocation(line: 190, column: 17, scope: !1438)
!1469 = !DILocation(line: 193, column: 9, scope: !1438)
!1470 = !DILocation(line: 193, column: 5, scope: !1438)
!1471 = !DILocation(line: 193, column: 20, scope: !1438)
!1472 = !DILocation(line: 193, column: 29, scope: !1438)
!1473 = !DILocation(line: 193, column: 25, scope: !1438)
!1474 = !DILocation(line: 193, column: 41, scope: !1438)
!1475 = !DILocation(line: 196, column: 19, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1438, file: !10, line: 196, column: 9)
!1477 = !DILocation(line: 196, column: 9, scope: !1476)
!1478 = !DILocation(line: 196, column: 38, scope: !1476)
!1479 = !DILocation(line: 196, column: 9, scope: !1438)
!1480 = !DILocation(line: 196, column: 43, scope: !1476)
!1481 = !DILocation(line: 197, column: 13, scope: !1438)
!1482 = !DILocation(line: 198, column: 5, scope: !1438)
!1483 = !DILabel(scope: !1438, name: "fatal", file: !10, line: 200)
!1484 = !DILocation(line: 200, column: 1, scope: !1438)
!1485 = !DILocation(line: 201, column: 5, scope: !1438)
!1486 = !DILocation(line: 201, column: 11, scope: !1438)
!1487 = !DILocation(line: 202, column: 5, scope: !1438)
!1488 = !DILocation(line: 203, column: 1, scope: !1438)
!1489 = distinct !DISubprogram(name: "linenoiseEdit", scope: !10, file: !10, line: 585, type: !1490, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!6, !6, !53, !48, !41}
!1492 = !DILocalVariable(name: "fd", arg: 1, scope: !1489, file: !10, line: 585, type: !6)
!1493 = !DILocation(line: 585, column: 30, scope: !1489)
!1494 = !DILocalVariable(name: "buf", arg: 2, scope: !1489, file: !10, line: 585, type: !53)
!1495 = !DILocation(line: 585, column: 40, scope: !1489)
!1496 = !DILocalVariable(name: "buflen", arg: 3, scope: !1489, file: !10, line: 585, type: !48)
!1497 = !DILocation(line: 585, column: 52, scope: !1489)
!1498 = !DILocalVariable(name: "prompt", arg: 4, scope: !1489, file: !10, line: 585, type: !41)
!1499 = !DILocation(line: 585, column: 72, scope: !1489)
!1500 = !DILocalVariable(name: "l", scope: !1489, file: !10, line: 587, type: !213)
!1501 = !DILocation(line: 587, column: 27, scope: !1489)
!1502 = !DILocation(line: 591, column: 12, scope: !1489)
!1503 = !DILocation(line: 591, column: 7, scope: !1489)
!1504 = !DILocation(line: 591, column: 10, scope: !1489)
!1505 = !DILocation(line: 592, column: 13, scope: !1489)
!1506 = !DILocation(line: 592, column: 7, scope: !1489)
!1507 = !DILocation(line: 592, column: 11, scope: !1489)
!1508 = !DILocation(line: 593, column: 16, scope: !1489)
!1509 = !DILocation(line: 593, column: 7, scope: !1489)
!1510 = !DILocation(line: 593, column: 14, scope: !1489)
!1511 = !DILocation(line: 594, column: 16, scope: !1489)
!1512 = !DILocation(line: 594, column: 7, scope: !1489)
!1513 = !DILocation(line: 594, column: 14, scope: !1489)
!1514 = !DILocation(line: 595, column: 21, scope: !1489)
!1515 = !DILocation(line: 595, column: 14, scope: !1489)
!1516 = !DILocation(line: 595, column: 7, scope: !1489)
!1517 = !DILocation(line: 595, column: 12, scope: !1489)
!1518 = !DILocation(line: 596, column: 18, scope: !1489)
!1519 = !DILocation(line: 596, column: 22, scope: !1489)
!1520 = !DILocation(line: 596, column: 7, scope: !1489)
!1521 = !DILocation(line: 596, column: 14, scope: !1489)
!1522 = !DILocation(line: 597, column: 7, scope: !1489)
!1523 = !DILocation(line: 597, column: 11, scope: !1489)
!1524 = !DILocation(line: 598, column: 14, scope: !1489)
!1525 = !DILocation(line: 598, column: 7, scope: !1489)
!1526 = !DILocation(line: 598, column: 12, scope: !1489)
!1527 = !DILocation(line: 599, column: 7, scope: !1489)
!1528 = !DILocation(line: 599, column: 15, scope: !1489)
!1529 = !DILocation(line: 600, column: 7, scope: !1489)
!1530 = !DILocation(line: 600, column: 21, scope: !1489)
!1531 = !DILocation(line: 603, column: 5, scope: !1489)
!1532 = !DILocation(line: 603, column: 12, scope: !1489)
!1533 = !DILocation(line: 604, column: 11, scope: !1489)
!1534 = !DILocation(line: 608, column: 5, scope: !1489)
!1535 = !DILocation(line: 610, column: 15, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1489, file: !10, line: 610, column: 9)
!1537 = !DILocation(line: 610, column: 18, scope: !1536)
!1538 = !DILocation(line: 610, column: 27, scope: !1536)
!1539 = !DILocation(line: 610, column: 9, scope: !1536)
!1540 = !DILocation(line: 610, column: 33, scope: !1536)
!1541 = !DILocation(line: 610, column: 9, scope: !1489)
!1542 = !DILocation(line: 610, column: 40, scope: !1536)
!1543 = !DILocation(line: 611, column: 5, scope: !1489)
!1544 = !DILocalVariable(name: "c", scope: !1545, file: !10, line: 612, type: !12)
!1545 = distinct !DILexicalBlock(scope: !1489, file: !10, line: 611, column: 14)
!1546 = !DILocation(line: 612, column: 14, scope: !1545)
!1547 = !DILocalVariable(name: "nread", scope: !1545, file: !10, line: 613, type: !6)
!1548 = !DILocation(line: 613, column: 13, scope: !1545)
!1549 = !DILocalVariable(name: "seq", scope: !1545, file: !10, line: 614, type: !22)
!1550 = !DILocation(line: 614, column: 14, scope: !1545)
!1551 = !DILocalVariable(name: "seq2", scope: !1545, file: !10, line: 614, type: !22)
!1552 = !DILocation(line: 614, column: 22, scope: !1545)
!1553 = !DILocation(line: 616, column: 22, scope: !1545)
!1554 = !DILocation(line: 616, column: 17, scope: !1545)
!1555 = !DILocation(line: 616, column: 15, scope: !1545)
!1556 = !DILocation(line: 617, column: 13, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1545, file: !10, line: 617, column: 13)
!1558 = !DILocation(line: 617, column: 19, scope: !1557)
!1559 = !DILocation(line: 617, column: 13, scope: !1545)
!1560 = !DILocation(line: 617, column: 34, scope: !1557)
!1561 = !DILocation(line: 617, column: 32, scope: !1557)
!1562 = !DILocation(line: 617, column: 25, scope: !1557)
!1563 = !DILocation(line: 622, column: 13, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1545, file: !10, line: 622, column: 13)
!1565 = !DILocation(line: 622, column: 15, scope: !1564)
!1566 = !DILocation(line: 622, column: 20, scope: !1564)
!1567 = !DILocation(line: 622, column: 23, scope: !1564)
!1568 = !DILocation(line: 622, column: 42, scope: !1564)
!1569 = !DILocation(line: 622, column: 13, scope: !1545)
!1570 = !DILocation(line: 623, column: 17, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1564, file: !10, line: 622, column: 51)
!1572 = !DILocation(line: 623, column: 15, scope: !1571)
!1573 = !DILocation(line: 625, column: 17, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1571, file: !10, line: 625, column: 17)
!1575 = !DILocation(line: 625, column: 19, scope: !1574)
!1576 = !DILocation(line: 625, column: 17, scope: !1571)
!1577 = !DILocation(line: 625, column: 33, scope: !1574)
!1578 = !DILocation(line: 625, column: 31, scope: !1574)
!1579 = !DILocation(line: 625, column: 24, scope: !1574)
!1580 = !DILocation(line: 627, column: 17, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1571, file: !10, line: 627, column: 17)
!1582 = !DILocation(line: 627, column: 19, scope: !1581)
!1583 = !DILocation(line: 627, column: 17, scope: !1571)
!1584 = !DILocation(line: 627, column: 25, scope: !1581)
!1585 = distinct !{!1585, !1543, !1586}
!1586 = !DILocation(line: 726, column: 5, scope: !1489)
!1587 = !DILocation(line: 628, column: 9, scope: !1571)
!1588 = !DILocation(line: 630, column: 16, scope: !1545)
!1589 = !DILocation(line: 630, column: 9, scope: !1545)
!1590 = !DILocation(line: 632, column: 24, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1545, file: !10, line: 630, column: 19)
!1592 = !DILocation(line: 633, column: 18, scope: !1591)
!1593 = !DILocation(line: 633, column: 26, scope: !1591)
!1594 = !DILocation(line: 633, column: 13, scope: !1591)
!1595 = !DILocation(line: 634, column: 27, scope: !1591)
!1596 = !DILocation(line: 634, column: 20, scope: !1591)
!1597 = !DILocation(line: 634, column: 13, scope: !1591)
!1598 = !DILocation(line: 636, column: 13, scope: !1591)
!1599 = !DILocation(line: 636, column: 19, scope: !1591)
!1600 = !DILocation(line: 637, column: 13, scope: !1591)
!1601 = !DILocation(line: 640, column: 13, scope: !1591)
!1602 = !DILocation(line: 641, column: 13, scope: !1591)
!1603 = !DILocation(line: 644, column: 19, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1591, file: !10, line: 644, column: 17)
!1605 = !DILocation(line: 644, column: 23, scope: !1604)
!1606 = !DILocation(line: 644, column: 17, scope: !1591)
!1607 = !DILocation(line: 645, column: 17, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1604, file: !10, line: 644, column: 28)
!1609 = !DILocation(line: 646, column: 13, scope: !1608)
!1610 = !DILocation(line: 647, column: 28, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1604, file: !10, line: 646, column: 20)
!1612 = !DILocation(line: 648, column: 22, scope: !1611)
!1613 = !DILocation(line: 648, column: 30, scope: !1611)
!1614 = !DILocation(line: 648, column: 17, scope: !1611)
!1615 = !DILocation(line: 649, column: 17, scope: !1611)
!1616 = !DILocation(line: 651, column: 13, scope: !1591)
!1617 = !DILocation(line: 653, column: 19, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1591, file: !10, line: 653, column: 17)
!1619 = !DILocation(line: 653, column: 23, scope: !1618)
!1620 = !DILocation(line: 653, column: 27, scope: !1618)
!1621 = !DILocation(line: 653, column: 32, scope: !1618)
!1622 = !DILocation(line: 653, column: 40, scope: !1618)
!1623 = !DILocation(line: 653, column: 36, scope: !1618)
!1624 = !DILocation(line: 653, column: 17, scope: !1591)
!1625 = !DILocalVariable(name: "aux", scope: !1626, file: !10, line: 654, type: !6)
!1626 = distinct !DILexicalBlock(scope: !1618, file: !10, line: 653, column: 45)
!1627 = !DILocation(line: 654, column: 21, scope: !1626)
!1628 = !DILocation(line: 654, column: 27, scope: !1626)
!1629 = !DILocation(line: 654, column: 33, scope: !1626)
!1630 = !DILocation(line: 654, column: 36, scope: !1626)
!1631 = !DILocation(line: 655, column: 32, scope: !1626)
!1632 = !DILocation(line: 655, column: 38, scope: !1626)
!1633 = !DILocation(line: 655, column: 17, scope: !1626)
!1634 = !DILocation(line: 655, column: 23, scope: !1626)
!1635 = !DILocation(line: 655, column: 26, scope: !1626)
!1636 = !DILocation(line: 655, column: 30, scope: !1626)
!1637 = !DILocation(line: 656, column: 30, scope: !1626)
!1638 = !DILocation(line: 656, column: 17, scope: !1626)
!1639 = !DILocation(line: 656, column: 23, scope: !1626)
!1640 = !DILocation(line: 656, column: 28, scope: !1626)
!1641 = !DILocation(line: 657, column: 23, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1626, file: !10, line: 657, column: 21)
!1643 = !DILocation(line: 657, column: 32, scope: !1642)
!1644 = !DILocation(line: 657, column: 35, scope: !1642)
!1645 = !DILocation(line: 657, column: 27, scope: !1642)
!1646 = !DILocation(line: 657, column: 21, scope: !1626)
!1647 = !DILocation(line: 657, column: 41, scope: !1642)
!1648 = !DILocation(line: 657, column: 44, scope: !1642)
!1649 = !DILocation(line: 657, column: 39, scope: !1642)
!1650 = !DILocation(line: 658, column: 17, scope: !1626)
!1651 = !DILocation(line: 659, column: 13, scope: !1626)
!1652 = !DILocation(line: 660, column: 13, scope: !1591)
!1653 = !DILocation(line: 662, column: 13, scope: !1591)
!1654 = !DILocation(line: 663, column: 13, scope: !1591)
!1655 = !DILocation(line: 665, column: 13, scope: !1591)
!1656 = !DILocation(line: 666, column: 13, scope: !1591)
!1657 = !DILocation(line: 668, column: 13, scope: !1591)
!1658 = !DILocation(line: 669, column: 13, scope: !1591)
!1659 = !DILocation(line: 671, column: 13, scope: !1591)
!1660 = !DILocation(line: 672, column: 13, scope: !1591)
!1661 = !DILocation(line: 675, column: 22, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1591, file: !10, line: 675, column: 17)
!1663 = !DILocation(line: 675, column: 25, scope: !1662)
!1664 = !DILocation(line: 675, column: 17, scope: !1662)
!1665 = !DILocation(line: 675, column: 32, scope: !1662)
!1666 = !DILocation(line: 675, column: 17, scope: !1591)
!1667 = !DILocation(line: 675, column: 39, scope: !1662)
!1668 = !DILocation(line: 677, column: 17, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1591, file: !10, line: 677, column: 17)
!1670 = !DILocation(line: 677, column: 24, scope: !1669)
!1671 = !DILocation(line: 677, column: 30, scope: !1669)
!1672 = !DILocation(line: 677, column: 33, scope: !1669)
!1673 = !DILocation(line: 677, column: 40, scope: !1669)
!1674 = !DILocation(line: 677, column: 17, scope: !1591)
!1675 = !DILocation(line: 679, column: 17, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1669, file: !10, line: 677, column: 47)
!1677 = !DILocation(line: 680, column: 13, scope: !1676)
!1678 = !DILocation(line: 680, column: 24, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1669, file: !10, line: 680, column: 24)
!1680 = !DILocation(line: 680, column: 31, scope: !1679)
!1681 = !DILocation(line: 680, column: 37, scope: !1679)
!1682 = !DILocation(line: 680, column: 40, scope: !1679)
!1683 = !DILocation(line: 680, column: 47, scope: !1679)
!1684 = !DILocation(line: 680, column: 24, scope: !1669)
!1685 = !DILocation(line: 682, column: 17, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1679, file: !10, line: 680, column: 54)
!1687 = !DILocation(line: 683, column: 13, scope: !1686)
!1688 = !DILocation(line: 683, column: 24, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1679, file: !10, line: 683, column: 24)
!1690 = !DILocation(line: 683, column: 31, scope: !1689)
!1691 = !DILocation(line: 683, column: 37, scope: !1689)
!1692 = !DILocation(line: 683, column: 41, scope: !1689)
!1693 = !DILocation(line: 683, column: 48, scope: !1689)
!1694 = !DILocation(line: 683, column: 54, scope: !1689)
!1695 = !DILocation(line: 683, column: 57, scope: !1689)
!1696 = !DILocation(line: 683, column: 64, scope: !1689)
!1697 = !DILocation(line: 683, column: 24, scope: !1679)
!1698 = !DILocation(line: 686, column: 22, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1689, file: !10, line: 683, column: 72)
!1700 = !DILocation(line: 686, column: 29, scope: !1699)
!1701 = !DILocation(line: 686, column: 21, scope: !1699)
!1702 = !DILocation(line: 685, column: 17, scope: !1699)
!1703 = !DILocation(line: 688, column: 13, scope: !1699)
!1704 = !DILocation(line: 688, column: 24, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1689, file: !10, line: 688, column: 24)
!1706 = !DILocation(line: 688, column: 31, scope: !1705)
!1707 = !DILocation(line: 688, column: 37, scope: !1705)
!1708 = !DILocation(line: 688, column: 40, scope: !1705)
!1709 = !DILocation(line: 688, column: 47, scope: !1705)
!1710 = !DILocation(line: 688, column: 52, scope: !1705)
!1711 = !DILocation(line: 688, column: 55, scope: !1705)
!1712 = !DILocation(line: 688, column: 62, scope: !1705)
!1713 = !DILocation(line: 688, column: 24, scope: !1689)
!1714 = !DILocation(line: 690, column: 26, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !10, line: 690, column: 21)
!1716 = distinct !DILexicalBlock(scope: !1705, file: !10, line: 688, column: 68)
!1717 = !DILocation(line: 690, column: 29, scope: !1715)
!1718 = !DILocation(line: 690, column: 21, scope: !1715)
!1719 = !DILocation(line: 690, column: 37, scope: !1715)
!1720 = !DILocation(line: 690, column: 21, scope: !1716)
!1721 = !DILocation(line: 690, column: 44, scope: !1715)
!1722 = !DILocation(line: 691, column: 21, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1716, file: !10, line: 691, column: 21)
!1724 = !DILocation(line: 691, column: 28, scope: !1723)
!1725 = !DILocation(line: 691, column: 34, scope: !1723)
!1726 = !DILocation(line: 691, column: 37, scope: !1723)
!1727 = !DILocation(line: 691, column: 45, scope: !1723)
!1728 = !DILocation(line: 691, column: 21, scope: !1716)
!1729 = !DILocation(line: 693, column: 21, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1723, file: !10, line: 691, column: 53)
!1731 = !DILocation(line: 694, column: 17, scope: !1730)
!1732 = !DILocation(line: 695, column: 13, scope: !1716)
!1733 = !DILocation(line: 696, column: 13, scope: !1591)
!1734 = !DILocation(line: 698, column: 40, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1591, file: !10, line: 698, column: 17)
!1736 = !DILocation(line: 698, column: 17, scope: !1735)
!1737 = !DILocation(line: 698, column: 17, scope: !1591)
!1738 = !DILocation(line: 698, column: 44, scope: !1735)
!1739 = !DILocation(line: 699, column: 13, scope: !1591)
!1740 = !DILocation(line: 701, column: 13, scope: !1591)
!1741 = !DILocation(line: 701, column: 20, scope: !1591)
!1742 = !DILocation(line: 702, column: 23, scope: !1591)
!1743 = !DILocation(line: 702, column: 27, scope: !1591)
!1744 = !DILocation(line: 702, column: 15, scope: !1591)
!1745 = !DILocation(line: 702, column: 19, scope: !1591)
!1746 = !DILocation(line: 703, column: 13, scope: !1591)
!1747 = !DILocation(line: 704, column: 13, scope: !1591)
!1748 = !DILocation(line: 706, column: 13, scope: !1591)
!1749 = !DILocation(line: 706, column: 19, scope: !1591)
!1750 = !DILocation(line: 706, column: 24, scope: !1591)
!1751 = !DILocation(line: 707, column: 23, scope: !1591)
!1752 = !DILocation(line: 707, column: 15, scope: !1591)
!1753 = !DILocation(line: 707, column: 19, scope: !1591)
!1754 = !DILocation(line: 708, column: 13, scope: !1591)
!1755 = !DILocation(line: 709, column: 13, scope: !1591)
!1756 = !DILocation(line: 711, column: 15, scope: !1591)
!1757 = !DILocation(line: 711, column: 19, scope: !1591)
!1758 = !DILocation(line: 712, column: 13, scope: !1591)
!1759 = !DILocation(line: 713, column: 13, scope: !1591)
!1760 = !DILocation(line: 715, column: 23, scope: !1591)
!1761 = !DILocation(line: 715, column: 15, scope: !1591)
!1762 = !DILocation(line: 715, column: 19, scope: !1591)
!1763 = !DILocation(line: 716, column: 13, scope: !1591)
!1764 = !DILocation(line: 717, column: 13, scope: !1591)
!1765 = !DILocation(line: 719, column: 13, scope: !1591)
!1766 = !DILocation(line: 720, column: 13, scope: !1591)
!1767 = !DILocation(line: 721, column: 13, scope: !1591)
!1768 = !DILocation(line: 723, column: 13, scope: !1591)
!1769 = !DILocation(line: 724, column: 13, scope: !1591)
!1770 = !DILocation(line: 728, column: 1, scope: !1489)
!1771 = distinct !DISubprogram(name: "disableRawMode", scope: !10, file: !10, line: 205, type: !144, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1772 = !DILocalVariable(name: "fd", arg: 1, scope: !1771, file: !10, line: 205, type: !6)
!1773 = !DILocation(line: 205, column: 32, scope: !1771)
!1774 = !DILocation(line: 207, column: 9, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1771, file: !10, line: 207, column: 9)
!1776 = !DILocation(line: 207, column: 17, scope: !1775)
!1777 = !DILocation(line: 207, column: 30, scope: !1775)
!1778 = !DILocation(line: 207, column: 20, scope: !1775)
!1779 = !DILocation(line: 207, column: 58, scope: !1775)
!1780 = !DILocation(line: 207, column: 9, scope: !1771)
!1781 = !DILocation(line: 208, column: 17, scope: !1775)
!1782 = !DILocation(line: 208, column: 9, scope: !1775)
!1783 = !DILocation(line: 209, column: 1, scope: !1771)
!1784 = distinct !DISubprogram(name: "linenoiseAtExit", scope: !10, file: !10, line: 799, type: !153, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1785 = !DILocation(line: 800, column: 5, scope: !1784)
!1786 = !DILocation(line: 801, column: 5, scope: !1784)
!1787 = !DILocation(line: 802, column: 1, scope: !1784)
!1788 = distinct !DISubprogram(name: "freeHistory", scope: !10, file: !10, line: 788, type: !153, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1789 = !DILocation(line: 789, column: 9, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1788, file: !10, line: 789, column: 9)
!1791 = !DILocation(line: 789, column: 9, scope: !1788)
!1792 = !DILocalVariable(name: "j", scope: !1793, file: !10, line: 790, type: !6)
!1793 = distinct !DILexicalBlock(scope: !1790, file: !10, line: 789, column: 18)
!1794 = !DILocation(line: 790, column: 13, scope: !1793)
!1795 = !DILocation(line: 792, column: 16, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1793, file: !10, line: 792, column: 9)
!1797 = !DILocation(line: 792, column: 14, scope: !1796)
!1798 = !DILocation(line: 792, column: 21, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1796, file: !10, line: 792, column: 9)
!1800 = !DILocation(line: 792, column: 25, scope: !1799)
!1801 = !DILocation(line: 792, column: 23, scope: !1799)
!1802 = !DILocation(line: 792, column: 9, scope: !1796)
!1803 = !DILocation(line: 793, column: 18, scope: !1799)
!1804 = !DILocation(line: 793, column: 26, scope: !1799)
!1805 = !DILocation(line: 793, column: 13, scope: !1799)
!1806 = !DILocation(line: 792, column: 39, scope: !1799)
!1807 = !DILocation(line: 792, column: 9, scope: !1799)
!1808 = distinct !{!1808, !1802, !1809}
!1809 = !DILocation(line: 793, column: 28, scope: !1796)
!1810 = !DILocation(line: 794, column: 14, scope: !1793)
!1811 = !DILocation(line: 794, column: 9, scope: !1793)
!1812 = !DILocation(line: 795, column: 5, scope: !1793)
!1813 = !DILocation(line: 796, column: 1, scope: !1788)
!1814 = distinct !DISubprogram(name: "getColumns", scope: !10, file: !10, line: 213, type: !690, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1815 = !DILocalVariable(name: "ws", scope: !1814, file: !10, line: 214, type: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !1817, line: 27, size: 64, elements: !1818)
!1817 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/ioctl-types.h", directory: "", checksumkind: CSK_MD5, checksum: "9c5f7d5180137ced2d76aeb981aa912b")
!1818 = !{!1819, !1820, !1821, !1822}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !1816, file: !1817, line: 29, baseType: !978, size: 16)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !1816, file: !1817, line: 30, baseType: !978, size: 16, offset: 16)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !1816, file: !1817, line: 31, baseType: !978, size: 16, offset: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !1816, file: !1817, line: 32, baseType: !978, size: 16, offset: 48)
!1823 = !DILocation(line: 214, column: 20, scope: !1814)
!1824 = !DILocation(line: 216, column: 9, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1814, file: !10, line: 216, column: 9)
!1826 = !DILocation(line: 216, column: 35, scope: !1825)
!1827 = !DILocation(line: 216, column: 41, scope: !1825)
!1828 = !DILocation(line: 216, column: 47, scope: !1825)
!1829 = !DILocation(line: 216, column: 44, scope: !1825)
!1830 = !DILocation(line: 216, column: 54, scope: !1825)
!1831 = !DILocation(line: 216, column: 9, scope: !1814)
!1832 = !DILocation(line: 216, column: 60, scope: !1825)
!1833 = !DILocation(line: 217, column: 15, scope: !1814)
!1834 = !DILocation(line: 217, column: 12, scope: !1814)
!1835 = !DILocation(line: 217, column: 5, scope: !1814)
!1836 = !DILocation(line: 218, column: 1, scope: !1814)
!1837 = distinct !DISubprogram(name: "completeLine", scope: !10, file: !10, line: 251, type: !1838, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!6, !212}
!1840 = !DILocalVariable(name: "ls", arg: 1, scope: !1837, file: !10, line: 251, type: !212)
!1841 = !DILocation(line: 251, column: 48, scope: !1837)
!1842 = !DILocalVariable(name: "lc", scope: !1837, file: !10, line: 252, type: !44)
!1843 = !DILocation(line: 252, column: 26, scope: !1837)
!1844 = !DILocalVariable(name: "nread", scope: !1837, file: !10, line: 253, type: !6)
!1845 = !DILocation(line: 253, column: 9, scope: !1837)
!1846 = !DILocalVariable(name: "nwritten", scope: !1837, file: !10, line: 253, type: !6)
!1847 = !DILocation(line: 253, column: 16, scope: !1837)
!1848 = !DILocalVariable(name: "c", scope: !1837, file: !10, line: 254, type: !12)
!1849 = !DILocation(line: 254, column: 10, scope: !1837)
!1850 = !DILocation(line: 256, column: 5, scope: !1837)
!1851 = !DILocation(line: 256, column: 24, scope: !1837)
!1852 = !DILocation(line: 256, column: 28, scope: !1837)
!1853 = !DILocation(line: 257, column: 12, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1837, file: !10, line: 257, column: 9)
!1855 = !DILocation(line: 257, column: 16, scope: !1854)
!1856 = !DILocation(line: 257, column: 9, scope: !1837)
!1857 = !DILocation(line: 258, column: 9, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !10, line: 257, column: 22)
!1859 = !DILocation(line: 259, column: 5, scope: !1858)
!1860 = !DILocalVariable(name: "stop", scope: !1861, file: !10, line: 260, type: !48)
!1861 = distinct !DILexicalBlock(scope: !1854, file: !10, line: 259, column: 12)
!1862 = !DILocation(line: 260, column: 16, scope: !1861)
!1863 = !DILocalVariable(name: "i", scope: !1861, file: !10, line: 260, type: !48)
!1864 = !DILocation(line: 260, column: 26, scope: !1861)
!1865 = !DILocation(line: 262, column: 9, scope: !1861)
!1866 = !DILocation(line: 262, column: 16, scope: !1861)
!1867 = !DILocation(line: 262, column: 15, scope: !1861)
!1868 = !DILocation(line: 264, column: 17, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !10, line: 264, column: 17)
!1870 = distinct !DILexicalBlock(scope: !1861, file: !10, line: 262, column: 22)
!1871 = !DILocation(line: 264, column: 24, scope: !1869)
!1872 = !DILocation(line: 264, column: 19, scope: !1869)
!1873 = !DILocation(line: 264, column: 17, scope: !1870)
!1874 = !DILocalVariable(name: "saved", scope: !1875, file: !10, line: 265, type: !213)
!1875 = distinct !DILexicalBlock(scope: !1869, file: !10, line: 264, column: 29)
!1876 = !DILocation(line: 265, column: 39, scope: !1875)
!1877 = !DILocation(line: 265, column: 48, scope: !1875)
!1878 = !DILocation(line: 265, column: 47, scope: !1875)
!1879 = !DILocation(line: 267, column: 47, scope: !1875)
!1880 = !DILocation(line: 267, column: 52, scope: !1875)
!1881 = !DILocation(line: 267, column: 44, scope: !1875)
!1882 = !DILocation(line: 267, column: 37, scope: !1875)
!1883 = !DILocation(line: 267, column: 27, scope: !1875)
!1884 = !DILocation(line: 267, column: 31, scope: !1875)
!1885 = !DILocation(line: 267, column: 35, scope: !1875)
!1886 = !DILocation(line: 267, column: 17, scope: !1875)
!1887 = !DILocation(line: 267, column: 21, scope: !1875)
!1888 = !DILocation(line: 267, column: 25, scope: !1875)
!1889 = !DILocation(line: 268, column: 30, scope: !1875)
!1890 = !DILocation(line: 268, column: 35, scope: !1875)
!1891 = !DILocation(line: 268, column: 27, scope: !1875)
!1892 = !DILocation(line: 268, column: 17, scope: !1875)
!1893 = !DILocation(line: 268, column: 21, scope: !1875)
!1894 = !DILocation(line: 268, column: 25, scope: !1875)
!1895 = !DILocation(line: 269, column: 29, scope: !1875)
!1896 = !DILocation(line: 269, column: 17, scope: !1875)
!1897 = !DILocation(line: 270, column: 33, scope: !1875)
!1898 = !DILocation(line: 270, column: 17, scope: !1875)
!1899 = !DILocation(line: 270, column: 21, scope: !1875)
!1900 = !DILocation(line: 270, column: 25, scope: !1875)
!1901 = !DILocation(line: 271, column: 33, scope: !1875)
!1902 = !DILocation(line: 271, column: 17, scope: !1875)
!1903 = !DILocation(line: 271, column: 21, scope: !1875)
!1904 = !DILocation(line: 271, column: 25, scope: !1875)
!1905 = !DILocation(line: 272, column: 33, scope: !1875)
!1906 = !DILocation(line: 272, column: 17, scope: !1875)
!1907 = !DILocation(line: 272, column: 21, scope: !1875)
!1908 = !DILocation(line: 272, column: 25, scope: !1875)
!1909 = !DILocation(line: 273, column: 13, scope: !1875)
!1910 = !DILocation(line: 274, column: 29, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1869, file: !10, line: 273, column: 20)
!1912 = !DILocation(line: 274, column: 17, scope: !1911)
!1913 = !DILocation(line: 277, column: 26, scope: !1870)
!1914 = !DILocation(line: 277, column: 30, scope: !1870)
!1915 = !DILocation(line: 277, column: 21, scope: !1870)
!1916 = !DILocation(line: 277, column: 19, scope: !1870)
!1917 = !DILocation(line: 278, column: 17, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1870, file: !10, line: 278, column: 17)
!1919 = !DILocation(line: 278, column: 23, scope: !1918)
!1920 = !DILocation(line: 278, column: 17, scope: !1870)
!1921 = !DILocation(line: 279, column: 17, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1918, file: !10, line: 278, column: 29)
!1923 = !DILocation(line: 280, column: 17, scope: !1922)
!1924 = !DILocation(line: 283, column: 20, scope: !1870)
!1925 = !DILocation(line: 283, column: 13, scope: !1870)
!1926 = !DILocation(line: 285, column: 26, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1870, file: !10, line: 283, column: 23)
!1928 = !DILocation(line: 285, column: 27, scope: !1927)
!1929 = !DILocation(line: 285, column: 37, scope: !1927)
!1930 = !DILocation(line: 285, column: 40, scope: !1927)
!1931 = !DILocation(line: 285, column: 31, scope: !1927)
!1932 = !DILocation(line: 285, column: 23, scope: !1927)
!1933 = !DILocation(line: 286, column: 25, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1927, file: !10, line: 286, column: 25)
!1935 = !DILocation(line: 286, column: 33, scope: !1934)
!1936 = !DILocation(line: 286, column: 27, scope: !1934)
!1937 = !DILocation(line: 286, column: 25, scope: !1927)
!1938 = !DILocation(line: 286, column: 38, scope: !1934)
!1939 = !DILocation(line: 287, column: 21, scope: !1927)
!1940 = !DILocation(line: 290, column: 25, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1927, file: !10, line: 290, column: 25)
!1942 = !DILocation(line: 290, column: 32, scope: !1941)
!1943 = !DILocation(line: 290, column: 27, scope: !1941)
!1944 = !DILocation(line: 290, column: 25, scope: !1927)
!1945 = !DILocation(line: 290, column: 49, scope: !1941)
!1946 = !DILocation(line: 290, column: 37, scope: !1941)
!1947 = !DILocation(line: 291, column: 26, scope: !1927)
!1948 = !DILocation(line: 292, column: 21, scope: !1927)
!1949 = !DILocation(line: 295, column: 25, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1927, file: !10, line: 295, column: 25)
!1951 = !DILocation(line: 295, column: 32, scope: !1950)
!1952 = !DILocation(line: 295, column: 27, scope: !1950)
!1953 = !DILocation(line: 295, column: 25, scope: !1927)
!1954 = !DILocation(line: 296, column: 45, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1950, file: !10, line: 295, column: 37)
!1956 = !DILocation(line: 296, column: 49, scope: !1955)
!1957 = !DILocation(line: 296, column: 53, scope: !1955)
!1958 = !DILocation(line: 296, column: 57, scope: !1955)
!1959 = !DILocation(line: 296, column: 72, scope: !1955)
!1960 = !DILocation(line: 296, column: 77, scope: !1955)
!1961 = !DILocation(line: 296, column: 69, scope: !1955)
!1962 = !DILocation(line: 296, column: 36, scope: !1955)
!1963 = !DILocation(line: 296, column: 34, scope: !1955)
!1964 = !DILocation(line: 297, column: 45, scope: !1955)
!1965 = !DILocation(line: 297, column: 35, scope: !1955)
!1966 = !DILocation(line: 297, column: 39, scope: !1955)
!1967 = !DILocation(line: 297, column: 43, scope: !1955)
!1968 = !DILocation(line: 297, column: 25, scope: !1955)
!1969 = !DILocation(line: 297, column: 29, scope: !1955)
!1970 = !DILocation(line: 297, column: 33, scope: !1955)
!1971 = !DILocation(line: 298, column: 21, scope: !1955)
!1972 = !DILocation(line: 299, column: 26, scope: !1927)
!1973 = !DILocation(line: 300, column: 21, scope: !1927)
!1974 = distinct !{!1974, !1865, !1975}
!1975 = !DILocation(line: 302, column: 9, scope: !1861)
!1976 = !DILocation(line: 305, column: 5, scope: !1837)
!1977 = !DILocation(line: 306, column: 12, scope: !1837)
!1978 = !DILocation(line: 306, column: 5, scope: !1837)
!1979 = !DILocation(line: 307, column: 1, scope: !1837)
!1980 = distinct !DISubprogram(name: "linenoiseBeep", scope: !10, file: !10, line: 229, type: !153, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1981 = !DILocation(line: 230, column: 13, scope: !1980)
!1982 = !DILocation(line: 230, column: 5, scope: !1980)
!1983 = !DILocation(line: 231, column: 12, scope: !1980)
!1984 = !DILocation(line: 231, column: 5, scope: !1980)
!1985 = !DILocation(line: 232, column: 1, scope: !1980)
!1986 = distinct !DISubprogram(name: "freeCompletions", scope: !10, file: !10, line: 237, type: !1987, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !43}
!1989 = !DILocalVariable(name: "lc", arg: 1, scope: !1986, file: !10, line: 237, type: !43)
!1990 = !DILocation(line: 237, column: 51, scope: !1986)
!1991 = !DILocalVariable(name: "i", scope: !1986, file: !10, line: 238, type: !48)
!1992 = !DILocation(line: 238, column: 12, scope: !1986)
!1993 = !DILocation(line: 239, column: 12, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1986, file: !10, line: 239, column: 5)
!1995 = !DILocation(line: 239, column: 10, scope: !1994)
!1996 = !DILocation(line: 239, column: 17, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1994, file: !10, line: 239, column: 5)
!1998 = !DILocation(line: 239, column: 21, scope: !1997)
!1999 = !DILocation(line: 239, column: 25, scope: !1997)
!2000 = !DILocation(line: 239, column: 19, scope: !1997)
!2001 = !DILocation(line: 239, column: 5, scope: !1994)
!2002 = !DILocation(line: 240, column: 14, scope: !1997)
!2003 = !DILocation(line: 240, column: 18, scope: !1997)
!2004 = !DILocation(line: 240, column: 23, scope: !1997)
!2005 = !DILocation(line: 240, column: 9, scope: !1997)
!2006 = !DILocation(line: 239, column: 31, scope: !1997)
!2007 = !DILocation(line: 239, column: 5, scope: !1997)
!2008 = distinct !{!2008, !2001, !2009}
!2009 = !DILocation(line: 240, column: 25, scope: !1994)
!2010 = !DILocation(line: 241, column: 9, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1986, file: !10, line: 241, column: 9)
!2012 = !DILocation(line: 241, column: 13, scope: !2011)
!2013 = !DILocation(line: 241, column: 18, scope: !2011)
!2014 = !DILocation(line: 241, column: 9, scope: !1986)
!2015 = !DILocation(line: 242, column: 14, scope: !2011)
!2016 = !DILocation(line: 242, column: 18, scope: !2011)
!2017 = !DILocation(line: 242, column: 9, scope: !2011)
!2018 = !DILocation(line: 243, column: 1, scope: !1986)
