; ModuleID = './test/test-family-matching.c'
source_filename = "./test/test-family-matching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"family\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"family1\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [8 x i8] c"family2\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [8 x i8] c"family3\00", align 1, !dbg !14
@stderr = external global ptr, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Unable to build pattern.\0A\00", align 1, !dbg !16
@.str.5 = private unnamed_addr constant [83 x i8] c"<test qual=\22all\22 name=\22family\22 compare=\22not_eq\22>\0A    <string>foo</string>\0A</test>\0A\00", align 1, !dbg !21
@.str.6 = private unnamed_addr constant [87 x i8] c"<test qual=\22all\22 name=\22family\22 compare=\22not_eq\22>\0A    <string>family2</string>\0A</test>\0A\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [83 x i8] c"<test qual=\22any\22 name=\22family\22 compare=\22eq\22>\0A    <string>family3</string>\0A</test>\0A\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [79 x i8] c"<test qual=\22any\22 name=\22family\22 compare=\22eq\22>\0A    <string>foo</string>\0A</test>\0A\00", align 1, !dbg !33
@.str.9 = private unnamed_addr constant [40 x i8] c"Following test unexpectedly matched:\0A%s\00", align 1, !dbg !38
@.str.10 = private unnamed_addr constant [4 x i8] c"on\0A\00", align 1, !dbg !43
@.str.11 = private unnamed_addr constant [39 x i8] c"Following test should have matched:\0A%s\00", align 1, !dbg !48
@.str.12 = private unnamed_addr constant [35 x i8] c"This shouldn't have been reached.\0A\00", align 1, !dbg !53
@.str.13 = private unnamed_addr constant [24 x i8] c"<fontconfig>\0A  <match>\0A\00", align 1, !dbg !58
@.str.14 = private unnamed_addr constant [91 x i8] c"    <edit name=\22testresult\22>\0A      <bool>true</bool>\0A    </edit>\0A  </match>\0A</fontconfig>\0A\00", align 1, !dbg !63
@.str.15 = private unnamed_addr constant [30 x i8] c"Unable to duplicate pattern.\0A\00", align 1, !dbg !68
@.str.16 = private unnamed_addr constant [23 x i8] c"Concatenation failed.\0A\00", align 1, !dbg !73
@.str.17 = private unnamed_addr constant [38 x i8] c"Unable to create a new empty config.\0A\00", align 1, !dbg !78
@.str.18 = private unnamed_addr constant [38 x i8] c"Unable to load a config from memory.\0A\00", align 1, !dbg !83
@.str.19 = private unnamed_addr constant [30 x i8] c"Unable to substitute config.\0A\00", align 1, !dbg !85
@.str.20 = private unnamed_addr constant [11 x i8] c"testresult\00", align 1, !dbg !87
@.str.21 = private unnamed_addr constant [26 x i8] c"Unable to check pattern.\0A\00", align 1, !dbg !92

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !152 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = call i32 @TestFamily(), !dbg !156
  ret i32 %2, !dbg !157
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TestFamily() #0 !dbg !158 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !162, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata ptr %3, metadata !166, metadata !DIExpression()), !dbg !167
  store i32 0, ptr %3, align 4, !dbg !167
  call void @llvm.dbg.declare(metadata ptr %4, metadata !168, metadata !DIExpression()), !dbg !172
  %5 = call ptr (ptr, ...) @FcPatternBuild(ptr noundef null, ptr noundef @.str, i32 noundef 3, ptr noundef @.str.1, ptr noundef @.str, i32 noundef 3, ptr noundef @.str.2, ptr noundef @.str, i32 noundef 3, ptr noundef @.str.3, ptr noundef null), !dbg !173
  store ptr %5, ptr %4, align 8, !dbg !172
  %6 = load ptr, ptr %4, align 8, !dbg !174
  %7 = icmp ne ptr %6, null, !dbg !174
  br i1 %7, label %11, label %8, !dbg !176

8:                                                ; preds = %0
  %9 = load ptr, ptr @stderr, align 8, !dbg !177
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.4), !dbg !179
  store i32 2, ptr %1, align 4, !dbg !180
  br label %30, !dbg !180

11:                                               ; preds = %0
  store ptr @.str.5, ptr %2, align 8, !dbg !181
  %12 = load ptr, ptr %2, align 8, !dbg !182
  %13 = load ptr, ptr %4, align 8, !dbg !182
  %14 = call i32 @TestShouldMatchPattern(ptr noundef %12, ptr noundef %13, i32 noundef 0), !dbg !182
  %15 = call i32 @UpdateResult(ptr noundef %3, i32 noundef %14), !dbg !182
  store ptr @.str.6, ptr %2, align 8, !dbg !183
  %16 = load ptr, ptr %2, align 8, !dbg !184
  %17 = load ptr, ptr %4, align 8, !dbg !184
  %18 = call i32 @TestShouldMatchPattern(ptr noundef %16, ptr noundef %17, i32 noundef 1), !dbg !184
  %19 = call i32 @UpdateResult(ptr noundef %3, i32 noundef %18), !dbg !184
  store ptr @.str.7, ptr %2, align 8, !dbg !185
  %20 = load ptr, ptr %2, align 8, !dbg !186
  %21 = load ptr, ptr %4, align 8, !dbg !186
  %22 = call i32 @TestShouldMatchPattern(ptr noundef %20, ptr noundef %21, i32 noundef 0), !dbg !186
  %23 = call i32 @UpdateResult(ptr noundef %3, i32 noundef %22), !dbg !186
  store ptr @.str.8, ptr %2, align 8, !dbg !187
  %24 = load ptr, ptr %2, align 8, !dbg !188
  %25 = load ptr, ptr %4, align 8, !dbg !188
  %26 = call i32 @TestShouldMatchPattern(ptr noundef %24, ptr noundef %25, i32 noundef 1), !dbg !188
  %27 = call i32 @UpdateResult(ptr noundef %3, i32 noundef %26), !dbg !188
  %28 = load ptr, ptr %4, align 8, !dbg !189
  call void @FcPatternDestroy(ptr noundef %28), !dbg !190
  %29 = load i32, ptr %3, align 4, !dbg !191
  store i32 %29, ptr %1, align 4, !dbg !192
  br label %30, !dbg !192

30:                                               ; preds = %11, %8
  %31 = load i32, ptr %1, align 4, !dbg !193
  ret i32 %31, !dbg !193
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @FcPatternBuild(ptr noundef, ...) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateResult(ptr noundef %0, i32 noundef %1) #0 !dbg !194 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !198, metadata !DIExpression()), !dbg !199
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !200, metadata !DIExpression()), !dbg !201
  %5 = load ptr, ptr %3, align 8, !dbg !202
  %6 = load i32, ptr %5, align 4, !dbg !202
  %7 = load i32, ptr %4, align 4, !dbg !202
  %8 = icmp ugt i32 %6, %7, !dbg !202
  br i1 %8, label %9, label %12, !dbg !202

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !202
  %11 = load i32, ptr %10, align 4, !dbg !202
  br label %14, !dbg !202

12:                                               ; preds = %2
  %13 = load i32, ptr %4, align 4, !dbg !202
  br label %14, !dbg !202

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %11, %9 ], [ %13, %12 ], !dbg !202
  %16 = load ptr, ptr %3, align 8, !dbg !203
  store i32 %15, ptr %16, align 4, !dbg !204
  %17 = load ptr, ptr %3, align 8, !dbg !205
  %18 = load i32, ptr %17, align 4, !dbg !206
  ret i32 %18, !dbg !207
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TestShouldMatchPattern(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !208 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !211, metadata !DIExpression()), !dbg !212
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !213, metadata !DIExpression()), !dbg !214
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !215, metadata !DIExpression()), !dbg !216
  %8 = load ptr, ptr %5, align 8, !dbg !217
  %9 = load ptr, ptr %6, align 8, !dbg !218
  %10 = call i32 @TestMatchPattern(ptr noundef %8, ptr noundef %9), !dbg !219
  switch i32 %10, label %30 [
    i32 0, label %11
    i32 1, label %20
    i32 2, label %29
  ], !dbg !220

11:                                               ; preds = %3
  %12 = load i32, ptr %7, align 4, !dbg !221
  %13 = icmp ne i32 %12, 0, !dbg !221
  br i1 %13, label %15, label %14, !dbg !224

14:                                               ; preds = %11
  store i32 0, ptr %4, align 4, !dbg !225
  br label %33, !dbg !225

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 8, !dbg !227
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %16), !dbg !229
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.10), !dbg !230
  %19 = load ptr, ptr %6, align 8, !dbg !231
  call void @FcPatternPrint(ptr noundef %19), !dbg !232
  store i32 1, ptr %4, align 4, !dbg !233
  br label %33, !dbg !233

20:                                               ; preds = %3
  %21 = load i32, ptr %7, align 4, !dbg !234
  %22 = icmp ne i32 %21, 0, !dbg !234
  br i1 %22, label %28, label %23, !dbg !236

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 8, !dbg !237
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, ptr noundef %24), !dbg !239
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.10), !dbg !240
  %27 = load ptr, ptr %6, align 8, !dbg !241
  call void @FcPatternPrint(ptr noundef %27), !dbg !242
  store i32 1, ptr %4, align 4, !dbg !243
  br label %33, !dbg !243

28:                                               ; preds = %20
  store i32 0, ptr %4, align 4, !dbg !244
  br label %33, !dbg !244

29:                                               ; preds = %3
  store i32 2, ptr %4, align 4, !dbg !246
  br label %33, !dbg !246

30:                                               ; preds = %3
  %31 = load ptr, ptr @stderr, align 8, !dbg !247
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.12), !dbg !248
  store i32 2, ptr %4, align 4, !dbg !249
  br label %33, !dbg !249

33:                                               ; preds = %30, %29, %28, %23, %15, %14
  %34 = load i32, ptr %4, align 4, !dbg !250
  ret i32 %34, !dbg !250
}

declare void @FcPatternDestroy(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TestMatchPattern(ptr noundef %0, ptr noundef %1) #0 !dbg !251 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !255, metadata !DIExpression()), !dbg !256
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata ptr %5, metadata !259, metadata !DIExpression()), !dbg !260
  store ptr @.str.13, ptr %5, align 8, !dbg !260
  call void @llvm.dbg.declare(metadata ptr %6, metadata !261, metadata !DIExpression()), !dbg !262
  store ptr @.str.14, ptr %6, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata ptr %7, metadata !263, metadata !DIExpression()), !dbg !264
  store ptr null, ptr %7, align 8, !dbg !264
  call void @llvm.dbg.declare(metadata ptr %8, metadata !265, metadata !DIExpression()), !dbg !267
  store ptr null, ptr %8, align 8, !dbg !267
  call void @llvm.dbg.declare(metadata ptr %9, metadata !268, metadata !DIExpression()), !dbg !269
  store ptr null, ptr %9, align 8, !dbg !269
  call void @llvm.dbg.declare(metadata ptr %10, metadata !270, metadata !DIExpression()), !dbg !274
  store ptr null, ptr %10, align 8, !dbg !274
  call void @llvm.dbg.declare(metadata ptr %11, metadata !275, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata ptr %12, metadata !278, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata ptr %13, metadata !281, metadata !DIExpression()), !dbg !282
  store i32 2, ptr %13, align 4, !dbg !282
  %14 = load ptr, ptr %4, align 8, !dbg !283
  %15 = call ptr @FcPatternDuplicate(ptr noundef %14), !dbg !284
  store ptr %15, ptr %7, align 8, !dbg !285
  %16 = load ptr, ptr %7, align 8, !dbg !286
  %17 = icmp ne ptr %16, null, !dbg !286
  br i1 %17, label %21, label %18, !dbg !288

18:                                               ; preds = %2
  %19 = load ptr, ptr @stderr, align 8, !dbg !289
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.15), !dbg !291
  br label %72, !dbg !292

21:                                               ; preds = %2
  %22 = load ptr, ptr %5, align 8, !dbg !293
  %23 = load ptr, ptr %3, align 8, !dbg !294
  %24 = call ptr @FcStrPlus(ptr noundef %22, ptr noundef %23), !dbg !295
  store ptr %24, ptr %8, align 8, !dbg !296
  %25 = load ptr, ptr %8, align 8, !dbg !297
  %26 = icmp ne ptr %25, null, !dbg !297
  br i1 %26, label %30, label %27, !dbg !299

27:                                               ; preds = %21
  %28 = load ptr, ptr @stderr, align 8, !dbg !300
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.16), !dbg !302
  br label %72, !dbg !303

30:                                               ; preds = %21
  %31 = load ptr, ptr %8, align 8, !dbg !304
  %32 = load ptr, ptr %6, align 8, !dbg !305
  %33 = call ptr @FcStrPlus(ptr noundef %31, ptr noundef %32), !dbg !306
  store ptr %33, ptr %9, align 8, !dbg !307
  %34 = load ptr, ptr %9, align 8, !dbg !308
  %35 = icmp ne ptr %34, null, !dbg !308
  br i1 %35, label %39, label %36, !dbg !310

36:                                               ; preds = %30
  %37 = load ptr, ptr @stderr, align 8, !dbg !311
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.16), !dbg !313
  br label %72, !dbg !314

39:                                               ; preds = %30
  %40 = call ptr @FcConfigCreate(), !dbg !315
  store ptr %40, ptr %10, align 8, !dbg !316
  %41 = load ptr, ptr %10, align 8, !dbg !317
  %42 = icmp ne ptr %41, null, !dbg !317
  br i1 %42, label %46, label %43, !dbg !319

43:                                               ; preds = %39
  %44 = load ptr, ptr @stderr, align 8, !dbg !320
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.17), !dbg !322
  br label %72, !dbg !323

46:                                               ; preds = %39
  %47 = load ptr, ptr %10, align 8, !dbg !324
  %48 = load ptr, ptr %9, align 8, !dbg !326
  %49 = call i32 @FcConfigParseAndLoadFromMemory(ptr noundef %47, ptr noundef %48, i32 noundef 1), !dbg !327
  %50 = icmp ne i32 %49, 0, !dbg !327
  br i1 %50, label %54, label %51, !dbg !328

51:                                               ; preds = %46
  %52 = load ptr, ptr @stderr, align 8, !dbg !329
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.18), !dbg !331
  br label %72, !dbg !332

54:                                               ; preds = %46
  %55 = load ptr, ptr %10, align 8, !dbg !333
  %56 = load ptr, ptr %7, align 8, !dbg !335
  %57 = call i32 @FcConfigSubstitute(ptr noundef %55, ptr noundef %56, i32 noundef 0), !dbg !336
  %58 = icmp ne i32 %57, 0, !dbg !336
  br i1 %58, label %62, label %59, !dbg !337

59:                                               ; preds = %54
  %60 = load ptr, ptr @stderr, align 8, !dbg !338
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.19), !dbg !340
  br label %72, !dbg !341

62:                                               ; preds = %54
  %63 = load ptr, ptr %7, align 8, !dbg !342
  %64 = call i32 @FcPatternGetBool(ptr noundef %63, ptr noundef @.str.20, i32 noundef 0, ptr noundef %12), !dbg !343
  store i32 %64, ptr %11, align 4, !dbg !344
  %65 = load i32, ptr %11, align 4, !dbg !345
  switch i32 %65, label %68 [
    i32 0, label %66
    i32 1, label %67
  ], !dbg !346

66:                                               ; preds = %62
  store i32 0, ptr %13, align 4, !dbg !347
  br label %71, !dbg !349

67:                                               ; preds = %62
  store i32 1, ptr %13, align 4, !dbg !350
  br label %71, !dbg !351

68:                                               ; preds = %62
  %69 = load ptr, ptr @stderr, align 8, !dbg !352
  %70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.21), !dbg !353
  br label %71, !dbg !354

71:                                               ; preds = %68, %67, %66
  br label %72, !dbg !355

72:                                               ; preds = %71, %59, %51, %43, %36, %27, %18
  call void @llvm.dbg.label(metadata !356), !dbg !357
  %73 = load ptr, ptr %10, align 8, !dbg !358
  %74 = icmp ne ptr %73, null, !dbg !358
  br i1 %74, label %75, label %77, !dbg !360

75:                                               ; preds = %72
  %76 = load ptr, ptr %10, align 8, !dbg !361
  call void @FcConfigDestroy(ptr noundef %76), !dbg !362
  br label %77, !dbg !362

77:                                               ; preds = %75, %72
  %78 = load ptr, ptr %9, align 8, !dbg !363
  %79 = icmp ne ptr %78, null, !dbg !363
  br i1 %79, label %80, label %82, !dbg !365

80:                                               ; preds = %77
  %81 = load ptr, ptr %9, align 8, !dbg !366
  call void @FcStrFree(ptr noundef %81), !dbg !367
  br label %82, !dbg !367

82:                                               ; preds = %80, %77
  %83 = load ptr, ptr %8, align 8, !dbg !368
  %84 = icmp ne ptr %83, null, !dbg !368
  br i1 %84, label %85, label %87, !dbg !370

85:                                               ; preds = %82
  %86 = load ptr, ptr %8, align 8, !dbg !371
  call void @FcStrFree(ptr noundef %86), !dbg !372
  br label %87, !dbg !372

87:                                               ; preds = %85, %82
  %88 = load ptr, ptr %7, align 8, !dbg !373
  %89 = icmp ne ptr %88, null, !dbg !373
  br i1 %89, label %90, label %92, !dbg !375

90:                                               ; preds = %87
  %91 = load ptr, ptr %7, align 8, !dbg !376
  call void @FcPatternDestroy(ptr noundef %91), !dbg !377
  br label %92, !dbg !377

92:                                               ; preds = %90, %87
  %93 = load i32, ptr %13, align 4, !dbg !378
  ret i32 %93, !dbg !379
}

declare i32 @printf(ptr noundef, ...) #2

declare void @FcPatternPrint(ptr noundef) #2

declare ptr @FcPatternDuplicate(ptr noundef) #2

declare ptr @FcStrPlus(ptr noundef, ptr noundef) #2

declare ptr @FcConfigCreate() #2

declare i32 @FcConfigParseAndLoadFromMemory(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @FcConfigSubstitute(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @FcPatternGetBool(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare void @FcConfigDestroy(ptr noundef) #2

declare void @FcStrFree(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!94}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 184, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./test/test-family-matching.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "20378c0b8f6d847b6a8e507d17a4de82")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 7)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 184, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 8)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !9, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 191, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 26)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 664, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 83)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 696, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 87)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !23, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 220, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 79)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 40)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 4)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 39)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 35)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 24)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 728, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 91)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 30)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 23)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 38)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !80, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !70, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 11)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !18, isLocal: true, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C11, file: !95, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !96, retainedTypes: !137, globals: !143, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "test/test-family-matching.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "20378c0b8f6d847b6a8e507d17a4de82")
!96 = !{!97, !103, !118, !123, !130}
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_TestResult", file: !2, line: 36, baseType: !98, size: 32, elements: !99)
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = !{!100, !101, !102}
!100 = !DIEnumerator(name: "TestPassed", value: 0)
!101 = !DIEnumerator(name: "TestFailed", value: 1)
!102 = !DIEnumerator(name: "TestError", value: 2)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_FcType", file: !104, line: 201, baseType: !105, size: 32, elements: !106)
!104 = !DIFile(filename: "./fontconfig/fontconfig.h", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "05e262d1be6a508fc866c546b6803fc6")
!105 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!107 = !DIEnumerator(name: "FcTypeUnknown", value: -1)
!108 = !DIEnumerator(name: "FcTypeVoid", value: 0)
!109 = !DIEnumerator(name: "FcTypeInteger", value: 1)
!110 = !DIEnumerator(name: "FcTypeDouble", value: 2)
!111 = !DIEnumerator(name: "FcTypeString", value: 3)
!112 = !DIEnumerator(name: "FcTypeBool", value: 4)
!113 = !DIEnumerator(name: "FcTypeMatrix", value: 5)
!114 = !DIEnumerator(name: "FcTypeCharSet", value: 6)
!115 = !DIEnumerator(name: "FcTypeFTFace", value: 7)
!116 = !DIEnumerator(name: "FcTypeLangSet", value: 8)
!117 = !DIEnumerator(name: "FcTypeRange", value: 9)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_TestMatchResult", file: !2, line: 30, baseType: !98, size: 32, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "TestMatch", value: 0)
!121 = !DIEnumerator(name: "TestNoMatch", value: 1)
!122 = !DIEnumerator(name: "TestMatchError", value: 2)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_FcResult", file: !104, line: 240, baseType: !98, size: 32, elements: !124)
!124 = !{!125, !126, !127, !128, !129}
!125 = !DIEnumerator(name: "FcResultMatch", value: 0)
!126 = !DIEnumerator(name: "FcResultNoMatch", value: 1)
!127 = !DIEnumerator(name: "FcResultTypeMismatch", value: 2)
!128 = !DIEnumerator(name: "FcResultNoId", value: 3)
!129 = !DIEnumerator(name: "FcResultOutOfMemory", value: 4)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_FcMatchKind", file: !104, line: 289, baseType: !98, size: 32, elements: !131)
!131 = !{!132, !133, !134, !135, !136}
!132 = !DIEnumerator(name: "FcMatchPattern", value: 0)
!133 = !DIEnumerator(name: "FcMatchFont", value: 1)
!134 = !DIEnumerator(name: "FcMatchScan", value: 2)
!135 = !DIEnumerator(name: "FcMatchKindEnd", value: 3)
!136 = !DIEnumerator(name: "FcMatchKindBegin", value: 0)
!137 = !{!138, !139}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcChar8", file: !104, line: 43, baseType: !142)
!142 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!143 = !{!0, !7, !12, !14, !16, !21, !26, !31, !33, !38, !43, !48, !53, !58, !63, !68, !73, !78, !83, !85, !87, !92}
!144 = !{i32 7, !"Dwarf Version", i32 5}
!145 = !{i32 2, !"Debug Info Version", i32 3}
!146 = !{i32 1, !"wchar_size", i32 4}
!147 = !{i32 8, !"PIC Level", i32 2}
!148 = !{i32 7, !"PIE Level", i32 2}
!149 = !{i32 7, !"uwtable", i32 2}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 16.0.0"}
!152 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 232, type: !153, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !155)
!153 = !DISubroutineType(types: !154)
!154 = !{!105}
!155 = !{}
!156 = !DILocation(line: 234, column: 13, scope: !152)
!157 = !DILocation(line: 234, column: 5, scope: !152)
!158 = distinct !DISubprogram(name: "TestFamily", scope: !2, file: !2, line: 178, type: !159, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !94, retainedNodes: !155)
!159 = !DISubroutineType(types: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "TestResult", file: !2, line: 40, baseType: !97)
!162 = !DILocalVariable(name: "test", scope: !158, file: !2, line: 180, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!165 = !DILocation(line: 180, column: 17, scope: !158)
!166 = !DILocalVariable(name: "res", scope: !158, file: !2, line: 181, type: !161)
!167 = !DILocation(line: 181, column: 16, scope: !158)
!168 = !DILocalVariable(name: "pat", scope: !158, file: !2, line: 183, type: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcPattern", file: !104, line: 251, baseType: !171)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcPattern", file: !104, line: 251, flags: DIFlagFwdDecl)
!172 = !DILocation(line: 183, column: 16, scope: !158)
!173 = !DILocation(line: 183, column: 22, scope: !158)
!174 = !DILocation(line: 189, column: 10, scope: !175)
!175 = distinct !DILexicalBlock(scope: !158, file: !2, line: 189, column: 9)
!176 = !DILocation(line: 189, column: 9, scope: !158)
!177 = !DILocation(line: 191, column: 18, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !2, line: 190, column: 5)
!179 = !DILocation(line: 191, column: 9, scope: !178)
!180 = !DILocation(line: 192, column: 9, scope: !178)
!181 = !DILocation(line: 200, column: 10, scope: !158)
!182 = !DILocation(line: 204, column: 5, scope: !158)
!183 = !DILocation(line: 206, column: 10, scope: !158)
!184 = !DILocation(line: 211, column: 5, scope: !158)
!185 = !DILocation(line: 213, column: 10, scope: !158)
!186 = !DILocation(line: 218, column: 5, scope: !158)
!187 = !DILocation(line: 220, column: 10, scope: !158)
!188 = !DILocation(line: 225, column: 5, scope: !158)
!189 = !DILocation(line: 227, column: 23, scope: !158)
!190 = !DILocation(line: 227, column: 5, scope: !158)
!191 = !DILocation(line: 228, column: 12, scope: !158)
!192 = !DILocation(line: 228, column: 5, scope: !158)
!193 = !DILocation(line: 229, column: 1, scope: !158)
!194 = distinct !DISubprogram(name: "UpdateResult", scope: !2, file: !2, line: 171, type: !195, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !94, retainedNodes: !155)
!195 = !DISubroutineType(types: !196)
!196 = !{!161, !197, !161}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!198 = !DILocalVariable(name: "res", arg: 1, scope: !194, file: !2, line: 171, type: !197)
!199 = !DILocation(line: 171, column: 27, scope: !194)
!200 = !DILocalVariable(name: "resNew", arg: 2, scope: !194, file: !2, line: 171, type: !161)
!201 = !DILocation(line: 171, column: 43, scope: !194)
!202 = !DILocation(line: 173, column: 12, scope: !194)
!203 = !DILocation(line: 173, column: 6, scope: !194)
!204 = !DILocation(line: 173, column: 10, scope: !194)
!205 = !DILocation(line: 174, column: 13, scope: !194)
!206 = !DILocation(line: 174, column: 12, scope: !194)
!207 = !DILocation(line: 174, column: 5, scope: !194)
!208 = distinct !DISubprogram(name: "TestShouldMatchPattern", scope: !2, file: !2, line: 132, type: !209, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !94, retainedNodes: !155)
!209 = !DISubroutineType(types: !210)
!210 = !{!161, !163, !169, !105}
!211 = !DILocalVariable(name: "test", arg: 1, scope: !208, file: !2, line: 132, type: !163)
!212 = !DILocation(line: 132, column: 36, scope: !208)
!213 = !DILocalVariable(name: "pat", arg: 2, scope: !208, file: !2, line: 132, type: !169)
!214 = !DILocation(line: 132, column: 53, scope: !208)
!215 = !DILocalVariable(name: "negate", arg: 3, scope: !208, file: !2, line: 132, type: !105)
!216 = !DILocation(line: 132, column: 62, scope: !208)
!217 = !DILocation(line: 134, column: 31, scope: !208)
!218 = !DILocation(line: 134, column: 37, scope: !208)
!219 = !DILocation(line: 134, column: 13, scope: !208)
!220 = !DILocation(line: 134, column: 5, scope: !208)
!221 = !DILocation(line: 136, column: 14, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !2, line: 136, column: 13)
!223 = distinct !DILexicalBlock(scope: !208, file: !2, line: 134, column: 43)
!224 = !DILocation(line: 136, column: 13, scope: !223)
!225 = !DILocation(line: 137, column: 13, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !2, line: 136, column: 22)
!227 = !DILocation(line: 141, column: 65, scope: !228)
!228 = distinct !DILexicalBlock(scope: !222, file: !2, line: 140, column: 9)
!229 = !DILocation(line: 141, column: 13, scope: !228)
!230 = !DILocation(line: 142, column: 13, scope: !228)
!231 = !DILocation(line: 143, column: 29, scope: !228)
!232 = !DILocation(line: 143, column: 13, scope: !228)
!233 = !DILocation(line: 144, column: 13, scope: !228)
!234 = !DILocation(line: 148, column: 14, scope: !235)
!235 = distinct !DILexicalBlock(scope: !223, file: !2, line: 148, column: 13)
!236 = !DILocation(line: 148, column: 13, scope: !223)
!237 = !DILocation(line: 149, column: 64, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !2, line: 148, column: 22)
!239 = !DILocation(line: 149, column: 13, scope: !238)
!240 = !DILocation(line: 150, column: 13, scope: !238)
!241 = !DILocation(line: 151, column: 29, scope: !238)
!242 = !DILocation(line: 151, column: 13, scope: !238)
!243 = !DILocation(line: 152, column: 13, scope: !238)
!244 = !DILocation(line: 156, column: 13, scope: !245)
!245 = distinct !DILexicalBlock(scope: !235, file: !2, line: 155, column: 9)
!246 = !DILocation(line: 160, column: 9, scope: !223)
!247 = !DILocation(line: 163, column: 18, scope: !223)
!248 = !DILocation(line: 163, column: 9, scope: !223)
!249 = !DILocation(line: 164, column: 9, scope: !223)
!250 = !DILocation(line: 166, column: 1, scope: !208)
!251 = distinct !DISubprogram(name: "TestMatchPattern", scope: !2, file: !2, line: 43, type: !252, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !94, retainedNodes: !155)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !163, !169}
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "TestMatchResult", file: !2, line: 34, baseType: !118)
!255 = !DILocalVariable(name: "test", arg: 1, scope: !251, file: !2, line: 43, type: !163)
!256 = !DILocation(line: 43, column: 31, scope: !251)
!257 = !DILocalVariable(name: "p", arg: 2, scope: !251, file: !2, line: 43, type: !169)
!258 = !DILocation(line: 43, column: 48, scope: !251)
!259 = !DILocalVariable(name: "xml_pre", scope: !251, file: !2, line: 45, type: !139)
!260 = !DILocation(line: 45, column: 20, scope: !251)
!261 = !DILocalVariable(name: "xml_post", scope: !251, file: !2, line: 50, type: !139)
!262 = !DILocation(line: 50, column: 20, scope: !251)
!263 = !DILocalVariable(name: "pat", scope: !251, file: !2, line: 58, type: !169)
!264 = !DILocation(line: 58, column: 16, scope: !251)
!265 = !DILocalVariable(name: "concat", scope: !251, file: !2, line: 59, type: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!267 = !DILocation(line: 59, column: 14, scope: !251)
!268 = !DILocalVariable(name: "xml", scope: !251, file: !2, line: 60, type: !266)
!269 = !DILocation(line: 60, column: 14, scope: !251)
!270 = !DILocalVariable(name: "cfg", scope: !251, file: !2, line: 61, type: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcConfig", file: !104, line: 325, baseType: !273)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcConfig", file: !104, line: 325, flags: DIFlagFwdDecl)
!274 = !DILocation(line: 61, column: 15, scope: !251)
!275 = !DILocalVariable(name: "result", scope: !251, file: !2, line: 62, type: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcResult", file: !104, line: 243, baseType: !123)
!277 = !DILocation(line: 62, column: 14, scope: !251)
!278 = !DILocalVariable(name: "dummy", scope: !251, file: !2, line: 63, type: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcBool", file: !104, line: 46, baseType: !105)
!280 = !DILocation(line: 63, column: 12, scope: !251)
!281 = !DILocalVariable(name: "ret", scope: !251, file: !2, line: 64, type: !254)
!282 = !DILocation(line: 64, column: 21, scope: !251)
!283 = !DILocation(line: 66, column: 31, scope: !251)
!284 = !DILocation(line: 66, column: 11, scope: !251)
!285 = !DILocation(line: 66, column: 9, scope: !251)
!286 = !DILocation(line: 67, column: 10, scope: !287)
!287 = distinct !DILexicalBlock(scope: !251, file: !2, line: 67, column: 9)
!288 = !DILocation(line: 67, column: 9, scope: !251)
!289 = !DILocation(line: 69, column: 18, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !2, line: 68, column: 5)
!291 = !DILocation(line: 69, column: 9, scope: !290)
!292 = !DILocation(line: 70, column: 9, scope: !290)
!293 = !DILocation(line: 73, column: 25, scope: !251)
!294 = !DILocation(line: 73, column: 52, scope: !251)
!295 = !DILocation(line: 73, column: 14, scope: !251)
!296 = !DILocation(line: 73, column: 12, scope: !251)
!297 = !DILocation(line: 74, column: 10, scope: !298)
!298 = distinct !DILexicalBlock(scope: !251, file: !2, line: 74, column: 9)
!299 = !DILocation(line: 74, column: 9, scope: !251)
!300 = !DILocation(line: 76, column: 18, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !2, line: 75, column: 5)
!302 = !DILocation(line: 76, column: 9, scope: !301)
!303 = !DILocation(line: 77, column: 9, scope: !301)
!304 = !DILocation(line: 80, column: 22, scope: !251)
!305 = !DILocation(line: 80, column: 30, scope: !251)
!306 = !DILocation(line: 80, column: 11, scope: !251)
!307 = !DILocation(line: 80, column: 9, scope: !251)
!308 = !DILocation(line: 81, column: 10, scope: !309)
!309 = distinct !DILexicalBlock(scope: !251, file: !2, line: 81, column: 9)
!310 = !DILocation(line: 81, column: 9, scope: !251)
!311 = !DILocation(line: 83, column: 18, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !2, line: 82, column: 5)
!313 = !DILocation(line: 83, column: 9, scope: !312)
!314 = !DILocation(line: 84, column: 9, scope: !312)
!315 = !DILocation(line: 87, column: 11, scope: !251)
!316 = !DILocation(line: 87, column: 9, scope: !251)
!317 = !DILocation(line: 88, column: 10, scope: !318)
!318 = distinct !DILexicalBlock(scope: !251, file: !2, line: 88, column: 9)
!319 = !DILocation(line: 88, column: 9, scope: !251)
!320 = !DILocation(line: 90, column: 18, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !2, line: 89, column: 5)
!322 = !DILocation(line: 90, column: 9, scope: !321)
!323 = !DILocation(line: 91, column: 9, scope: !321)
!324 = !DILocation(line: 94, column: 42, scope: !325)
!325 = distinct !DILexicalBlock(scope: !251, file: !2, line: 94, column: 9)
!326 = !DILocation(line: 94, column: 47, scope: !325)
!327 = !DILocation(line: 94, column: 10, scope: !325)
!328 = !DILocation(line: 94, column: 9, scope: !251)
!329 = !DILocation(line: 96, column: 18, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !2, line: 95, column: 5)
!331 = !DILocation(line: 96, column: 9, scope: !330)
!332 = !DILocation(line: 97, column: 9, scope: !330)
!333 = !DILocation(line: 100, column: 30, scope: !334)
!334 = distinct !DILexicalBlock(scope: !251, file: !2, line: 100, column: 9)
!335 = !DILocation(line: 100, column: 35, scope: !334)
!336 = !DILocation(line: 100, column: 10, scope: !334)
!337 = !DILocation(line: 100, column: 9, scope: !251)
!338 = !DILocation(line: 102, column: 18, scope: !339)
!339 = distinct !DILexicalBlock(scope: !334, file: !2, line: 101, column: 5)
!340 = !DILocation(line: 102, column: 9, scope: !339)
!341 = !DILocation(line: 103, column: 9, scope: !339)
!342 = !DILocation(line: 106, column: 32, scope: !251)
!343 = !DILocation(line: 106, column: 14, scope: !251)
!344 = !DILocation(line: 106, column: 12, scope: !251)
!345 = !DILocation(line: 107, column: 13, scope: !251)
!346 = !DILocation(line: 107, column: 5, scope: !251)
!347 = !DILocation(line: 109, column: 13, scope: !348)
!348 = distinct !DILexicalBlock(scope: !251, file: !2, line: 107, column: 21)
!349 = !DILocation(line: 110, column: 9, scope: !348)
!350 = !DILocation(line: 112, column: 13, scope: !348)
!351 = !DILocation(line: 113, column: 9, scope: !348)
!352 = !DILocation(line: 115, column: 18, scope: !348)
!353 = !DILocation(line: 115, column: 9, scope: !348)
!354 = !DILocation(line: 116, column: 9, scope: !348)
!355 = !DILocation(line: 117, column: 5, scope: !348)
!356 = !DILabel(scope: !251, name: "bail", file: !2, line: 119)
!357 = !DILocation(line: 119, column: 1, scope: !251)
!358 = !DILocation(line: 120, column: 9, scope: !359)
!359 = distinct !DILexicalBlock(scope: !251, file: !2, line: 120, column: 9)
!360 = !DILocation(line: 120, column: 9, scope: !251)
!361 = !DILocation(line: 121, column: 19, scope: !359)
!362 = !DILocation(line: 121, column: 2, scope: !359)
!363 = !DILocation(line: 122, column: 9, scope: !364)
!364 = distinct !DILexicalBlock(scope: !251, file: !2, line: 122, column: 9)
!365 = !DILocation(line: 122, column: 9, scope: !251)
!366 = !DILocation(line: 123, column: 13, scope: !364)
!367 = !DILocation(line: 123, column: 2, scope: !364)
!368 = !DILocation(line: 124, column: 9, scope: !369)
!369 = distinct !DILexicalBlock(scope: !251, file: !2, line: 124, column: 9)
!370 = !DILocation(line: 124, column: 9, scope: !251)
!371 = !DILocation(line: 125, column: 13, scope: !369)
!372 = !DILocation(line: 125, column: 2, scope: !369)
!373 = !DILocation(line: 126, column: 9, scope: !374)
!374 = distinct !DILexicalBlock(scope: !251, file: !2, line: 126, column: 9)
!375 = !DILocation(line: 126, column: 9, scope: !251)
!376 = !DILocation(line: 127, column: 20, scope: !374)
!377 = !DILocation(line: 127, column: 2, scope: !374)
!378 = !DILocation(line: 128, column: 12, scope: !251)
!379 = !DILocation(line: 128, column: 5, scope: !251)
