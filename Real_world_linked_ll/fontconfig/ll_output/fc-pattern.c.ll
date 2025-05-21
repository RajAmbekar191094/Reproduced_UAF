; ModuleID = './fc-pattern/fc-pattern.c'
source_filename = "./fc-pattern/fc-pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"cdf:Vh\00", align 1, !dbg !7
@longopts = internal constant [6 x %struct.option] [%struct.option { ptr @.str.5, i32 0, ptr null, i32 99 }, %struct.option { ptr @.str.6, i32 0, ptr null, i32 100 }, %struct.option { ptr @.str.7, i32 1, ptr null, i32 102 }, %struct.option { ptr @.str.8, i32 0, ptr null, i32 86 }, %struct.option { ptr @.str.9, i32 0, ptr null, i32 104 }, %struct.option zeroinitializer], align 16, !dbg !12
@optarg = external global ptr, align 8
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"fontconfig version %d.%d.%d\0A\00", align 1, !dbg !31
@optind = external global i32, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Unable to parse the pattern\0A\00", align 1, !dbg !36
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !38
@.str.5 = private unnamed_addr constant [7 x i8] c"config\00", align 1, !dbg !43
@.str.6 = private unnamed_addr constant [8 x i8] c"default\00", align 1, !dbg !45
@.str.7 = private unnamed_addr constant [7 x i8] c"format\00", align 1, !dbg !50
@.str.8 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !52
@.str.9 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !54
@stdout = external global ptr, align 8
@.str.10 = private unnamed_addr constant [128 x i8] c"usage: %s [-cdVh] [-f FORMAT] [--config] [--default] [--verbose] [--format=FORMAT] [--version] [--help] [pattern] {element...}\0A\00", align 1, !dbg !59
@.str.11 = private unnamed_addr constant [35 x i8] c"List best font matching [pattern]\0A\00", align 1, !dbg !64
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !69
@.str.13 = private unnamed_addr constant [63 x i8] c"  -c, --config         perform config substitution on pattern\0A\00", align 1, !dbg !74
@.str.14 = private unnamed_addr constant [64 x i8] c"  -d, --default        perform default substitution on pattern\0A\00", align 1, !dbg !79
@.str.15 = private unnamed_addr constant [52 x i8] c"  -f, --format=FORMAT  use the given output format\0A\00", align 1, !dbg !84
@.str.16 = private unnamed_addr constant [61 x i8] c"  -V, --version        display font config version and exit\0A\00", align 1, !dbg !89
@.str.17 = private unnamed_addr constant [51 x i8] c"  -h, --help           display this help and exit\0A\00", align 1, !dbg !94

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !122 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !128, metadata !DIExpression()), !dbg !129
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata ptr %6, metadata !132, metadata !DIExpression()), !dbg !133
  store i32 0, ptr %6, align 4, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %7, metadata !134, metadata !DIExpression()), !dbg !135
  store i32 0, ptr %7, align 4, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %8, metadata !136, metadata !DIExpression()), !dbg !137
  store ptr null, ptr %8, align 8, !dbg !137
  call void @llvm.dbg.declare(metadata ptr %9, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata ptr %10, metadata !140, metadata !DIExpression()), !dbg !149
  store ptr null, ptr %10, align 8, !dbg !149
  call void @llvm.dbg.declare(metadata ptr %11, metadata !150, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata ptr %12, metadata !155, metadata !DIExpression()), !dbg !156
  %15 = call ptr @setlocale(i32 noundef 6, ptr noundef @.str) #5, !dbg !157
  br label %16, !dbg !158

16:                                               ; preds = %39, %2
  %17 = load i32, ptr %4, align 4, !dbg !159
  %18 = load ptr, ptr %5, align 8, !dbg !160
  %19 = call i32 @getopt_long(i32 noundef %17, ptr noundef %18, ptr noundef @.str.1, ptr noundef @longopts, ptr noundef null) #5, !dbg !161
  store i32 %19, ptr %12, align 4, !dbg !162
  %20 = icmp ne i32 %19, -1, !dbg !163
  br i1 %20, label %21, label %40, !dbg !158

21:                                               ; preds = %16
  %22 = load i32, ptr %12, align 4, !dbg !164
  switch i32 %22, label %35 [
    i32 99, label %23
    i32 100, label %24
    i32 102, label %25
    i32 86, label %28
    i32 104, label %31
  ], !dbg !166

23:                                               ; preds = %21
  store i32 1, ptr %6, align 4, !dbg !167
  br label %39, !dbg !169

24:                                               ; preds = %21
  store i32 1, ptr %7, align 4, !dbg !170
  br label %39, !dbg !171

25:                                               ; preds = %21
  %26 = load ptr, ptr @optarg, align 8, !dbg !172
  %27 = call noalias ptr @strdup(ptr noundef %26) #5, !dbg !173
  store ptr %27, ptr %8, align 8, !dbg !174
  br label %39, !dbg !175

28:                                               ; preds = %21
  %29 = load ptr, ptr @stderr, align 8, !dbg !176
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.2, i32 noundef 2, i32 noundef 13, i32 noundef 94), !dbg !177
  call void @exit(i32 noundef 0) #6, !dbg !178
  unreachable, !dbg !178

31:                                               ; preds = %21
  %32 = load ptr, ptr %5, align 8, !dbg !179
  %33 = getelementptr inbounds ptr, ptr %32, i64 0, !dbg !179
  %34 = load ptr, ptr %33, align 8, !dbg !179
  call void @usage(ptr noundef %34, i32 noundef 0), !dbg !180
  br label %35, !dbg !180

35:                                               ; preds = %21, %31
  %36 = load ptr, ptr %5, align 8, !dbg !181
  %37 = getelementptr inbounds ptr, ptr %36, i64 0, !dbg !181
  %38 = load ptr, ptr %37, align 8, !dbg !181
  call void @usage(ptr noundef %38, i32 noundef 1), !dbg !182
  br label %39, !dbg !183

39:                                               ; preds = %35, %25, %24, %23
  br label %16, !dbg !158, !llvm.loop !184

40:                                               ; preds = %16
  %41 = load i32, ptr @optind, align 4, !dbg !187
  store i32 %41, ptr %9, align 4, !dbg !188
  %42 = load ptr, ptr %5, align 8, !dbg !189
  %43 = load i32, ptr %9, align 4, !dbg !191
  %44 = sext i32 %43 to i64, !dbg !189
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44, !dbg !189
  %46 = load ptr, ptr %45, align 8, !dbg !189
  %47 = icmp ne ptr %46, null, !dbg !189
  br i1 %47, label %48, label %83, !dbg !192

48:                                               ; preds = %40
  %49 = load ptr, ptr %5, align 8, !dbg !193
  %50 = load i32, ptr %9, align 4, !dbg !195
  %51 = sext i32 %50 to i64, !dbg !193
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51, !dbg !193
  %53 = load ptr, ptr %52, align 8, !dbg !193
  %54 = call ptr @FcNameParse(ptr noundef %53), !dbg !196
  store ptr %54, ptr %11, align 8, !dbg !197
  %55 = load ptr, ptr %11, align 8, !dbg !198
  %56 = icmp ne ptr %55, null, !dbg !198
  br i1 %56, label %60, label %57, !dbg !200

57:                                               ; preds = %48
  %58 = load ptr, ptr @stderr, align 8, !dbg !201
  %59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.3), !dbg !203
  store i32 1, ptr %3, align 4, !dbg !204
  br label %132, !dbg !204

60:                                               ; preds = %48
  br label %61, !dbg !205

61:                                               ; preds = %74, %60
  %62 = load ptr, ptr %5, align 8, !dbg !206
  %63 = load i32, ptr %9, align 4, !dbg !207
  %64 = add nsw i32 %63, 1, !dbg !207
  store i32 %64, ptr %9, align 4, !dbg !207
  %65 = sext i32 %64 to i64, !dbg !206
  %66 = getelementptr inbounds ptr, ptr %62, i64 %65, !dbg !206
  %67 = load ptr, ptr %66, align 8, !dbg !206
  %68 = icmp ne ptr %67, null, !dbg !205
  br i1 %68, label %69, label %82, !dbg !205

69:                                               ; preds = %61
  %70 = load ptr, ptr %10, align 8, !dbg !208
  %71 = icmp ne ptr %70, null, !dbg !208
  br i1 %71, label %74, label %72, !dbg !211

72:                                               ; preds = %69
  %73 = call ptr @FcObjectSetCreate(), !dbg !212
  store ptr %73, ptr %10, align 8, !dbg !213
  br label %74, !dbg !214

74:                                               ; preds = %72, %69
  %75 = load ptr, ptr %10, align 8, !dbg !215
  %76 = load ptr, ptr %5, align 8, !dbg !216
  %77 = load i32, ptr %9, align 4, !dbg !217
  %78 = sext i32 %77 to i64, !dbg !216
  %79 = getelementptr inbounds ptr, ptr %76, i64 %78, !dbg !216
  %80 = load ptr, ptr %79, align 8, !dbg !216
  %81 = call i32 @FcObjectSetAdd(ptr noundef %75, ptr noundef %80), !dbg !218
  br label %61, !dbg !205, !llvm.loop !219

82:                                               ; preds = %61
  br label %85, !dbg !221

83:                                               ; preds = %40
  %84 = call ptr @FcPatternCreate(), !dbg !222
  store ptr %84, ptr %11, align 8, !dbg !223
  br label %85

85:                                               ; preds = %83, %82
  %86 = load ptr, ptr %11, align 8, !dbg !224
  %87 = icmp ne ptr %86, null, !dbg !224
  br i1 %87, label %89, label %88, !dbg !226

88:                                               ; preds = %85
  store i32 1, ptr %3, align 4, !dbg !227
  br label %132, !dbg !227

89:                                               ; preds = %85
  %90 = load i32, ptr %6, align 4, !dbg !228
  %91 = icmp ne i32 %90, 0, !dbg !228
  br i1 %91, label %92, label %95, !dbg !230

92:                                               ; preds = %89
  %93 = load ptr, ptr %11, align 8, !dbg !231
  %94 = call i32 @FcConfigSubstitute(ptr noundef null, ptr noundef %93, i32 noundef 0), !dbg !232
  br label %95, !dbg !232

95:                                               ; preds = %92, %89
  %96 = load i32, ptr %7, align 4, !dbg !233
  %97 = icmp ne i32 %96, 0, !dbg !233
  br i1 %97, label %98, label %100, !dbg !235

98:                                               ; preds = %95
  %99 = load ptr, ptr %11, align 8, !dbg !236
  call void @FcDefaultSubstitute(ptr noundef %99), !dbg !237
  br label %100, !dbg !237

100:                                              ; preds = %98, %95
  %101 = load ptr, ptr %10, align 8, !dbg !238
  %102 = icmp ne ptr %101, null, !dbg !238
  br i1 %102, label %103, label %109, !dbg !240

103:                                              ; preds = %100
  call void @llvm.dbg.declare(metadata ptr %13, metadata !241, metadata !DIExpression()), !dbg !243
  %104 = load ptr, ptr %11, align 8, !dbg !244
  %105 = load ptr, ptr %10, align 8, !dbg !245
  %106 = call ptr @FcPatternFilter(ptr noundef %104, ptr noundef %105), !dbg !246
  store ptr %106, ptr %13, align 8, !dbg !247
  %107 = load ptr, ptr %11, align 8, !dbg !248
  call void @FcPatternDestroy(ptr noundef %107), !dbg !249
  %108 = load ptr, ptr %13, align 8, !dbg !250
  store ptr %108, ptr %11, align 8, !dbg !251
  br label %109, !dbg !252

109:                                              ; preds = %103, %100
  %110 = load ptr, ptr %8, align 8, !dbg !253
  %111 = icmp ne ptr %110, null, !dbg !253
  br i1 %111, label %112, label %123, !dbg !255

112:                                              ; preds = %109
  call void @llvm.dbg.declare(metadata ptr %14, metadata !256, metadata !DIExpression()), !dbg !258
  %113 = load ptr, ptr %11, align 8, !dbg !259
  %114 = load ptr, ptr %8, align 8, !dbg !260
  %115 = call ptr @FcPatternFormat(ptr noundef %113, ptr noundef %114), !dbg !261
  store ptr %115, ptr %14, align 8, !dbg !262
  %116 = load ptr, ptr %14, align 8, !dbg !263
  %117 = icmp ne ptr %116, null, !dbg !263
  br i1 %117, label %118, label %122, !dbg !265

118:                                              ; preds = %112
  %119 = load ptr, ptr %14, align 8, !dbg !266
  %120 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %119), !dbg !268
  %121 = load ptr, ptr %14, align 8, !dbg !269
  call void @FcStrFree(ptr noundef %121), !dbg !270
  br label %122, !dbg !271

122:                                              ; preds = %118, %112
  br label %125, !dbg !272

123:                                              ; preds = %109
  %124 = load ptr, ptr %11, align 8, !dbg !273
  call void @FcPatternPrint(ptr noundef %124), !dbg !275
  br label %125

125:                                              ; preds = %123, %122
  %126 = load ptr, ptr %11, align 8, !dbg !276
  call void @FcPatternDestroy(ptr noundef %126), !dbg !277
  %127 = load ptr, ptr %10, align 8, !dbg !278
  %128 = icmp ne ptr %127, null, !dbg !278
  br i1 %128, label %129, label %131, !dbg !280

129:                                              ; preds = %125
  %130 = load ptr, ptr %10, align 8, !dbg !281
  call void @FcObjectSetDestroy(ptr noundef %130), !dbg !282
  br label %131, !dbg !282

131:                                              ; preds = %129, %125
  call void @FcFini(), !dbg !283
  store i32 0, ptr %3, align 4, !dbg !284
  br label %132, !dbg !284

132:                                              ; preds = %131, %88, %57
  %133 = load i32, ptr %3, align 4, !dbg !285
  ret i32 %133, !dbg !285
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
define internal void @usage(ptr noundef %0, i32 noundef %1) #0 !dbg !286 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !289, metadata !DIExpression()), !dbg !290
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata ptr %5, metadata !293, metadata !DIExpression()), !dbg !351
  %6 = load i32, ptr %4, align 4, !dbg !352
  %7 = icmp ne i32 %6, 0, !dbg !352
  br i1 %7, label %8, label %10, !dbg !352

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8, !dbg !353
  br label %12, !dbg !352

10:                                               ; preds = %2
  %11 = load ptr, ptr @stdout, align 8, !dbg !354
  br label %12, !dbg !352

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ], !dbg !352
  store ptr %13, ptr %5, align 8, !dbg !351
  %14 = load ptr, ptr %5, align 8, !dbg !355
  %15 = load ptr, ptr %3, align 8, !dbg !356
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.10, ptr noundef %15), !dbg !357
  %17 = load ptr, ptr %5, align 8, !dbg !358
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.11), !dbg !359
  %19 = load ptr, ptr %5, align 8, !dbg !360
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.12), !dbg !361
  %21 = load ptr, ptr %5, align 8, !dbg !362
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.13), !dbg !363
  %23 = load ptr, ptr %5, align 8, !dbg !364
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.14), !dbg !365
  %25 = load ptr, ptr %5, align 8, !dbg !366
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.15), !dbg !367
  %27 = load ptr, ptr %5, align 8, !dbg !368
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.16), !dbg !369
  %29 = load ptr, ptr %5, align 8, !dbg !370
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.17), !dbg !371
  %31 = load i32, ptr %4, align 4, !dbg !372
  call void @exit(i32 noundef %31) #6, !dbg !373
  unreachable, !dbg !373
}

declare ptr @FcNameParse(ptr noundef) #3

declare ptr @FcObjectSetCreate() #3

declare i32 @FcObjectSetAdd(ptr noundef, ptr noundef) #3

declare ptr @FcPatternCreate() #3

declare i32 @FcConfigSubstitute(ptr noundef, ptr noundef, i32 noundef) #3

declare void @FcDefaultSubstitute(ptr noundef) #3

declare ptr @FcPatternFilter(ptr noundef, ptr noundef) #3

declare void @FcPatternDestroy(ptr noundef) #3

declare ptr @FcPatternFormat(ptr noundef, ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #3

declare void @FcStrFree(ptr noundef) #3

declare void @FcPatternPrint(ptr noundef) #3

declare void @FcObjectSetDestroy(ptr noundef) #3

declare void @FcFini() #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./fc-pattern/fc-pattern.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "83f76cfa1c8e4817c66a19dd6e9e084e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 1)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "longopts", scope: !14, file: !2, line: 63, type: !99, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !15, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !26, globals: !30, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "fc-pattern/fc-pattern.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "83f76cfa1c8e4817c66a19dd6e9e084e")
!16 = !{!17}
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_FcMatchKind", file: !18, line: 289, baseType: !19, size: 32, elements: !20)
!18 = !DIFile(filename: "./fontconfig/fontconfig.h", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "05e262d1be6a508fc866c546b6803fc6")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "FcMatchPattern", value: 0)
!22 = !DIEnumerator(name: "FcMatchFont", value: 1)
!23 = !DIEnumerator(name: "FcMatchScan", value: 2)
!24 = !DIEnumerator(name: "FcMatchKindEnd", value: 3)
!25 = !DIEnumerator(name: "FcMatchKindBegin", value: 0)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcChar8", file: !18, line: 43, baseType: !29)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !{!0, !7, !31, !36, !38, !43, !45, !50, !52, !54, !12, !59, !64, !69, !74, !79, !84, !89, !94}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 29)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !33, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 191, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 3)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !9, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 8)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !9, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !47, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 5)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 128)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 35)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 2)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 63)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 64)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 52)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 61)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 51)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 1536, elements: !112)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !102, line: 50, size: 256, elements: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!103 = !{!104, !107, !109, !111}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !101, file: !102, line: 52, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !101, file: !102, line: 55, baseType: !108, size: 32, offset: 64)
!108 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !101, file: !102, line: 56, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !101, file: !102, line: 57, baseType: !108, size: 32, offset: 192)
!112 = !{!113}
!113 = !DISubrange(count: 6)
!114 = !{i32 7, !"Dwarf Version", i32 5}
!115 = !{i32 2, !"Debug Info Version", i32 3}
!116 = !{i32 1, !"wchar_size", i32 4}
!117 = !{i32 8, !"PIC Level", i32 2}
!118 = !{i32 7, !"PIE Level", i32 2}
!119 = !{i32 7, !"uwtable", i32 2}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 16.0.0"}
!122 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 108, type: !123, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !127)
!123 = !DISubroutineType(types: !124)
!124 = !{!108, !108, !125}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!127 = !{}
!128 = !DILocalVariable(name: "argc", arg: 1, scope: !122, file: !2, line: 108, type: !108)
!129 = !DILocation(line: 108, column: 11, scope: !122)
!130 = !DILocalVariable(name: "argv", arg: 2, scope: !122, file: !2, line: 108, type: !125)
!131 = !DILocation(line: 108, column: 24, scope: !122)
!132 = !DILocalVariable(name: "do_config", scope: !122, file: !2, line: 110, type: !108)
!133 = !DILocation(line: 110, column: 10, scope: !122)
!134 = !DILocalVariable(name: "do_default", scope: !122, file: !2, line: 110, type: !108)
!135 = !DILocation(line: 110, column: 25, scope: !122)
!136 = !DILocalVariable(name: "format", scope: !122, file: !2, line: 111, type: !27)
!137 = !DILocation(line: 111, column: 18, scope: !122)
!138 = !DILocalVariable(name: "i", scope: !122, file: !2, line: 112, type: !108)
!139 = !DILocation(line: 112, column: 10, scope: !122)
!140 = !DILocalVariable(name: "os", scope: !122, file: !2, line: 113, type: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcObjectSet", file: !18, line: 287, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FcObjectSet", file: !18, line: 283, size: 128, elements: !144)
!144 = !{!145, !146, !147}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nobject", scope: !143, file: !18, line: 284, baseType: !108, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sobject", scope: !143, file: !18, line: 285, baseType: !108, size: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !143, file: !18, line: 286, baseType: !148, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!149 = !DILocation(line: 113, column: 18, scope: !122)
!150 = !DILocalVariable(name: "pat", scope: !122, file: !2, line: 114, type: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcPattern", file: !18, line: 251, baseType: !153)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcPattern", file: !18, line: 251, flags: DIFlagFwdDecl)
!154 = !DILocation(line: 114, column: 18, scope: !122)
!155 = !DILocalVariable(name: "c", scope: !122, file: !2, line: 116, type: !108)
!156 = !DILocation(line: 116, column: 10, scope: !122)
!157 = !DILocation(line: 118, column: 5, scope: !122)
!158 = !DILocation(line: 120, column: 5, scope: !122)
!159 = !DILocation(line: 120, column: 30, scope: !122)
!160 = !DILocation(line: 120, column: 36, scope: !122)
!161 = !DILocation(line: 120, column: 17, scope: !122)
!162 = !DILocation(line: 120, column: 15, scope: !122)
!163 = !DILocation(line: 120, column: 69, scope: !122)
!164 = !DILocation(line: 125, column: 10, scope: !165)
!165 = distinct !DILexicalBlock(scope: !122, file: !2, line: 124, column: 5)
!166 = !DILocation(line: 125, column: 2, scope: !165)
!167 = !DILocation(line: 127, column: 16, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !2, line: 125, column: 13)
!169 = !DILocation(line: 128, column: 6, scope: !168)
!170 = !DILocation(line: 130, column: 17, scope: !168)
!171 = !DILocation(line: 131, column: 6, scope: !168)
!172 = !DILocation(line: 133, column: 35, scope: !168)
!173 = !DILocation(line: 133, column: 27, scope: !168)
!174 = !DILocation(line: 133, column: 13, scope: !168)
!175 = !DILocation(line: 134, column: 6, scope: !168)
!176 = !DILocation(line: 136, column: 15, scope: !168)
!177 = !DILocation(line: 136, column: 6, scope: !168)
!178 = !DILocation(line: 138, column: 6, scope: !168)
!179 = !DILocation(line: 140, column: 13, scope: !168)
!180 = !DILocation(line: 140, column: 6, scope: !168)
!181 = !DILocation(line: 142, column: 13, scope: !168)
!182 = !DILocation(line: 142, column: 6, scope: !168)
!183 = !DILocation(line: 143, column: 2, scope: !168)
!184 = distinct !{!184, !158, !185, !186}
!185 = !DILocation(line: 144, column: 5, scope: !122)
!186 = !{!"llvm.loop.mustprogress"}
!187 = !DILocation(line: 145, column: 9, scope: !122)
!188 = !DILocation(line: 145, column: 7, scope: !122)
!189 = !DILocation(line: 150, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !122, file: !2, line: 150, column: 9)
!191 = !DILocation(line: 150, column: 14, scope: !190)
!192 = !DILocation(line: 150, column: 9, scope: !122)
!193 = !DILocation(line: 152, column: 33, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !2, line: 151, column: 5)
!195 = !DILocation(line: 152, column: 38, scope: !194)
!196 = !DILocation(line: 152, column: 8, scope: !194)
!197 = !DILocation(line: 152, column: 6, scope: !194)
!198 = !DILocation(line: 153, column: 7, scope: !199)
!199 = distinct !DILexicalBlock(scope: !194, file: !2, line: 153, column: 6)
!200 = !DILocation(line: 153, column: 6, scope: !194)
!201 = !DILocation(line: 155, column: 15, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !2, line: 154, column: 2)
!203 = !DILocation(line: 155, column: 6, scope: !202)
!204 = !DILocation(line: 156, column: 6, scope: !202)
!205 = !DILocation(line: 158, column: 2, scope: !194)
!206 = !DILocation(line: 158, column: 9, scope: !194)
!207 = !DILocation(line: 158, column: 14, scope: !194)
!208 = !DILocation(line: 160, column: 11, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !2, line: 160, column: 10)
!210 = distinct !DILexicalBlock(scope: !194, file: !2, line: 159, column: 2)
!211 = !DILocation(line: 160, column: 10, scope: !210)
!212 = !DILocation(line: 161, column: 8, scope: !209)
!213 = !DILocation(line: 161, column: 6, scope: !209)
!214 = !DILocation(line: 161, column: 3, scope: !209)
!215 = !DILocation(line: 162, column: 22, scope: !210)
!216 = !DILocation(line: 162, column: 26, scope: !210)
!217 = !DILocation(line: 162, column: 31, scope: !210)
!218 = !DILocation(line: 162, column: 6, scope: !210)
!219 = distinct !{!219, !205, !220, !186}
!220 = !DILocation(line: 163, column: 2, scope: !194)
!221 = !DILocation(line: 164, column: 5, scope: !194)
!222 = !DILocation(line: 166, column: 8, scope: !190)
!223 = !DILocation(line: 166, column: 6, scope: !190)
!224 = !DILocation(line: 168, column: 10, scope: !225)
!225 = distinct !DILexicalBlock(scope: !122, file: !2, line: 168, column: 9)
!226 = !DILocation(line: 168, column: 9, scope: !122)
!227 = !DILocation(line: 169, column: 2, scope: !225)
!228 = !DILocation(line: 171, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !122, file: !2, line: 171, column: 9)
!230 = !DILocation(line: 171, column: 9, scope: !122)
!231 = !DILocation(line: 172, column: 30, scope: !229)
!232 = !DILocation(line: 172, column: 7, scope: !229)
!233 = !DILocation(line: 173, column: 9, scope: !234)
!234 = distinct !DILexicalBlock(scope: !122, file: !2, line: 173, column: 9)
!235 = !DILocation(line: 173, column: 9, scope: !122)
!236 = !DILocation(line: 174, column: 28, scope: !234)
!237 = !DILocation(line: 174, column: 7, scope: !234)
!238 = !DILocation(line: 176, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !122, file: !2, line: 176, column: 9)
!240 = !DILocation(line: 176, column: 9, scope: !122)
!241 = !DILocalVariable(name: "new", scope: !242, file: !2, line: 178, type: !151)
!242 = distinct !DILexicalBlock(scope: !239, file: !2, line: 177, column: 5)
!243 = !DILocation(line: 178, column: 18, scope: !242)
!244 = !DILocation(line: 179, column: 30, scope: !242)
!245 = !DILocation(line: 179, column: 35, scope: !242)
!246 = !DILocation(line: 179, column: 13, scope: !242)
!247 = !DILocation(line: 179, column: 11, scope: !242)
!248 = !DILocation(line: 180, column: 25, scope: !242)
!249 = !DILocation(line: 180, column: 7, scope: !242)
!250 = !DILocation(line: 181, column: 13, scope: !242)
!251 = !DILocation(line: 181, column: 11, scope: !242)
!252 = !DILocation(line: 182, column: 5, scope: !242)
!253 = !DILocation(line: 184, column: 9, scope: !254)
!254 = distinct !DILexicalBlock(scope: !122, file: !2, line: 184, column: 9)
!255 = !DILocation(line: 184, column: 9, scope: !122)
!256 = !DILocalVariable(name: "s", scope: !257, file: !2, line: 186, type: !27)
!257 = distinct !DILexicalBlock(scope: !254, file: !2, line: 185, column: 5)
!258 = !DILocation(line: 186, column: 11, scope: !257)
!259 = !DILocation(line: 188, column: 23, scope: !257)
!260 = !DILocation(line: 188, column: 28, scope: !257)
!261 = !DILocation(line: 188, column: 6, scope: !257)
!262 = !DILocation(line: 188, column: 4, scope: !257)
!263 = !DILocation(line: 189, column: 6, scope: !264)
!264 = distinct !DILexicalBlock(scope: !257, file: !2, line: 189, column: 6)
!265 = !DILocation(line: 189, column: 6, scope: !257)
!266 = !DILocation(line: 191, column: 20, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !2, line: 190, column: 2)
!268 = !DILocation(line: 191, column: 6, scope: !267)
!269 = !DILocation(line: 192, column: 17, scope: !267)
!270 = !DILocation(line: 192, column: 6, scope: !267)
!271 = !DILocation(line: 193, column: 2, scope: !267)
!272 = !DILocation(line: 194, column: 5, scope: !257)
!273 = !DILocation(line: 197, column: 18, scope: !274)
!274 = distinct !DILexicalBlock(scope: !254, file: !2, line: 196, column: 5)
!275 = !DILocation(line: 197, column: 2, scope: !274)
!276 = !DILocation(line: 200, column: 23, scope: !122)
!277 = !DILocation(line: 200, column: 5, scope: !122)
!278 = !DILocation(line: 202, column: 9, scope: !279)
!279 = distinct !DILexicalBlock(scope: !122, file: !2, line: 202, column: 9)
!280 = !DILocation(line: 202, column: 9, scope: !122)
!281 = !DILocation(line: 203, column: 22, scope: !279)
!282 = !DILocation(line: 203, column: 2, scope: !279)
!283 = !DILocation(line: 205, column: 5, scope: !122)
!284 = !DILocation(line: 207, column: 5, scope: !122)
!285 = !DILocation(line: 208, column: 1, scope: !122)
!286 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 79, type: !287, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !127)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !126, !108}
!289 = !DILocalVariable(name: "program", arg: 1, scope: !286, file: !2, line: 79, type: !126)
!290 = !DILocation(line: 79, column: 14, scope: !286)
!291 = !DILocalVariable(name: "error", arg: 2, scope: !286, file: !2, line: 79, type: !108)
!292 = !DILocation(line: 79, column: 27, scope: !286)
!293 = !DILocalVariable(name: "file", scope: !286, file: !2, line: 81, type: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !296, line: 7, baseType: !297)
!296 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !298, line: 49, size: 1728, elements: !299)
!298 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !315, !317, !318, !319, !323, !325, !327, !328, !331, !333, !336, !339, !340, !342, !346, !347}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !297, file: !298, line: 51, baseType: !108, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !297, file: !298, line: 54, baseType: !126, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !297, file: !298, line: 55, baseType: !126, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !297, file: !298, line: 56, baseType: !126, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !297, file: !298, line: 57, baseType: !126, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !297, file: !298, line: 58, baseType: !126, size: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !297, file: !298, line: 59, baseType: !126, size: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !297, file: !298, line: 60, baseType: !126, size: 64, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !297, file: !298, line: 61, baseType: !126, size: 64, offset: 512)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !297, file: !298, line: 64, baseType: !126, size: 64, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !297, file: !298, line: 65, baseType: !126, size: 64, offset: 640)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !297, file: !298, line: 66, baseType: !126, size: 64, offset: 704)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !297, file: !298, line: 68, baseType: !313, size: 64, offset: 768)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !298, line: 36, flags: DIFlagFwdDecl)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !297, file: !298, line: 70, baseType: !316, size: 64, offset: 832)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !297, file: !298, line: 72, baseType: !108, size: 32, offset: 896)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !297, file: !298, line: 73, baseType: !108, size: 32, offset: 928)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !297, file: !298, line: 74, baseType: !320, size: 64, offset: 960)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !321, line: 152, baseType: !322)
!321 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!322 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !297, file: !298, line: 77, baseType: !324, size: 16, offset: 1024)
!324 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !297, file: !298, line: 78, baseType: !326, size: 8, offset: 1040)
!326 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !297, file: !298, line: 79, baseType: !3, size: 8, offset: 1048)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !297, file: !298, line: 81, baseType: !329, size: 64, offset: 1088)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !298, line: 43, baseType: null)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !297, file: !298, line: 89, baseType: !332, size: 64, offset: 1152)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !321, line: 153, baseType: !322)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !297, file: !298, line: 91, baseType: !334, size: 64, offset: 1216)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !298, line: 37, flags: DIFlagFwdDecl)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !297, file: !298, line: 92, baseType: !337, size: 64, offset: 1280)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !298, line: 38, flags: DIFlagFwdDecl)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !297, file: !298, line: 93, baseType: !316, size: 64, offset: 1344)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !297, file: !298, line: 94, baseType: !341, size: 64, offset: 1408)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !297, file: !298, line: 95, baseType: !343, size: 64, offset: 1472)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !344, line: 46, baseType: !345)
!344 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!345 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !297, file: !298, line: 96, baseType: !108, size: 32, offset: 1536)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !297, file: !298, line: 98, baseType: !348, size: 160, offset: 1568)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 20)
!351 = !DILocation(line: 81, column: 11, scope: !286)
!352 = !DILocation(line: 81, column: 18, scope: !286)
!353 = !DILocation(line: 81, column: 26, scope: !286)
!354 = !DILocation(line: 81, column: 35, scope: !286)
!355 = !DILocation(line: 83, column: 14, scope: !286)
!356 = !DILocation(line: 84, column: 7, scope: !286)
!357 = !DILocation(line: 83, column: 5, scope: !286)
!358 = !DILocation(line: 89, column: 14, scope: !286)
!359 = !DILocation(line: 89, column: 5, scope: !286)
!360 = !DILocation(line: 90, column: 14, scope: !286)
!361 = !DILocation(line: 90, column: 5, scope: !286)
!362 = !DILocation(line: 92, column: 14, scope: !286)
!363 = !DILocation(line: 92, column: 5, scope: !286)
!364 = !DILocation(line: 93, column: 14, scope: !286)
!365 = !DILocation(line: 93, column: 5, scope: !286)
!366 = !DILocation(line: 94, column: 14, scope: !286)
!367 = !DILocation(line: 94, column: 5, scope: !286)
!368 = !DILocation(line: 95, column: 14, scope: !286)
!369 = !DILocation(line: 95, column: 5, scope: !286)
!370 = !DILocation(line: 96, column: 14, scope: !286)
!371 = !DILocation(line: 96, column: 5, scope: !286)
!372 = !DILocation(line: 104, column: 11, scope: !286)
!373 = !DILocation(line: 104, column: 5, scope: !286)
