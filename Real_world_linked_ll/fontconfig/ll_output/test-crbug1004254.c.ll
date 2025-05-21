; ModuleID = './test/test-crbug1004254.c'
source_filename = "./test/test-crbug1004254.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thr_arg_s = type { i32 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [42 x i8] c"Thread %d (worker %d round %d): creating\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [25 x i8] c"Cannot create thread %d\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [18 x i8] c"Joined thread %d\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [31 x i8] c"Worker %d: started (round %d)\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [28 x i8] c"Worker %d: done (round %d)\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [7 x i8] c"family\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [11 x i8] c"sans-serif\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [9 x i8] c"scalable\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [25 x i8] c"ERROR: No matches found\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [30 x i8] c"ERROR: Reinitializing failed\0A\00", align 1, !dbg !44

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !88 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca [3000 x i64], align 16
  %7 = alloca [3000 x %struct.thr_arg_s], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !94, metadata !DIExpression()), !dbg !95
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata ptr %6, metadata !98, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata ptr %7, metadata !106, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata ptr %8, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata ptr %9, metadata !111, metadata !DIExpression()), !dbg !112
  store i32 0, ptr %8, align 4, !dbg !113
  br label %11, !dbg !115

11:                                               ; preds = %41, %2
  %12 = load i32, ptr %8, align 4, !dbg !116
  %13 = icmp slt i32 %12, 3000, !dbg !118
  br i1 %13, label %14, label %44, !dbg !119

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %10, metadata !120, metadata !DIExpression()), !dbg !122
  %15 = load ptr, ptr @stderr, align 8, !dbg !123
  %16 = load i32, ptr %8, align 4, !dbg !124
  %17 = load i32, ptr %8, align 4, !dbg !125
  %18 = srem i32 %17, 2, !dbg !126
  %19 = load i32, ptr %8, align 4, !dbg !127
  %20 = sdiv i32 %19, 2, !dbg !128
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, i32 noundef %16, i32 noundef %18, i32 noundef %20), !dbg !129
  %22 = load i32, ptr %8, align 4, !dbg !130
  %23 = load i32, ptr %8, align 4, !dbg !131
  %24 = sext i32 %23 to i64, !dbg !132
  %25 = getelementptr inbounds [3000 x %struct.thr_arg_s], ptr %7, i64 0, i64 %24, !dbg !132
  %26 = getelementptr inbounds %struct.thr_arg_s, ptr %25, i32 0, i32 0, !dbg !133
  store i32 %22, ptr %26, align 4, !dbg !134
  %27 = load i32, ptr %8, align 4, !dbg !135
  %28 = sext i32 %27 to i64, !dbg !136
  %29 = getelementptr inbounds [3000 x i64], ptr %6, i64 0, i64 %28, !dbg !136
  %30 = load i32, ptr %8, align 4, !dbg !137
  %31 = sext i32 %30 to i64, !dbg !138
  %32 = getelementptr inbounds [3000 x %struct.thr_arg_s], ptr %7, i64 0, i64 %31, !dbg !138
  %33 = call i32 @pthread_create(ptr noundef %29, ptr noundef null, ptr noundef @run_test_in_thread, ptr noundef %32) #4, !dbg !139
  store i32 %33, ptr %10, align 4, !dbg !140
  %34 = load i32, ptr %10, align 4, !dbg !141
  %35 = icmp ne i32 %34, 0, !dbg !143
  br i1 %35, label %36, label %40, !dbg !144

36:                                               ; preds = %14
  %37 = load ptr, ptr @stderr, align 8, !dbg !145
  %38 = load i32, ptr %8, align 4, !dbg !147
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.1, i32 noundef %38), !dbg !148
  br label %44, !dbg !149

40:                                               ; preds = %14
  br label %41, !dbg !150

41:                                               ; preds = %40
  %42 = load i32, ptr %8, align 4, !dbg !151
  %43 = add nsw i32 %42, 1, !dbg !151
  store i32 %43, ptr %8, align 4, !dbg !151
  br label %11, !dbg !152, !llvm.loop !153

44:                                               ; preds = %36, %11
  store i32 0, ptr %9, align 4, !dbg !156
  br label %45, !dbg !158

45:                                               ; preds = %58, %44
  %46 = load i32, ptr %9, align 4, !dbg !159
  %47 = load i32, ptr %8, align 4, !dbg !161
  %48 = icmp slt i32 %46, %47, !dbg !162
  br i1 %48, label %49, label %61, !dbg !163

49:                                               ; preds = %45
  %50 = load i32, ptr %9, align 4, !dbg !164
  %51 = sext i32 %50 to i64, !dbg !166
  %52 = getelementptr inbounds [3000 x i64], ptr %6, i64 0, i64 %51, !dbg !166
  %53 = load i64, ptr %52, align 8, !dbg !166
  %54 = call i32 @pthread_join(i64 noundef %53, ptr noundef null), !dbg !167
  %55 = load ptr, ptr @stderr, align 8, !dbg !168
  %56 = load i32, ptr %9, align 4, !dbg !169
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.2, i32 noundef %56), !dbg !170
  br label %58, !dbg !171

58:                                               ; preds = %49
  %59 = load i32, ptr %9, align 4, !dbg !172
  %60 = add nsw i32 %59, 1, !dbg !172
  store i32 %60, ptr %9, align 4, !dbg !172
  br label %45, !dbg !173, !llvm.loop !174

61:                                               ; preds = %45
  call void @FcFini(), !dbg !176
  ret i32 0, !dbg !177
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @run_test_in_thread(ptr noundef %0) #0 !dbg !178 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata ptr %3, metadata !183, metadata !DIExpression()), !dbg !184
  %5 = load ptr, ptr %2, align 8, !dbg !185
  store ptr %5, ptr %3, align 8, !dbg !184
  call void @llvm.dbg.declare(metadata ptr %4, metadata !186, metadata !DIExpression()), !dbg !187
  %6 = load ptr, ptr %3, align 8, !dbg !188
  %7 = getelementptr inbounds %struct.thr_arg_s, ptr %6, i32 0, i32 0, !dbg !189
  %8 = load i32, ptr %7, align 4, !dbg !189
  store i32 %8, ptr %4, align 4, !dbg !187
  %9 = load ptr, ptr @stderr, align 8, !dbg !190
  %10 = load i32, ptr %4, align 4, !dbg !191
  %11 = srem i32 %10, 2, !dbg !192
  %12 = load i32, ptr %4, align 4, !dbg !193
  %13 = sdiv i32 %12, 2, !dbg !194
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.3, i32 noundef %11, i32 noundef %13), !dbg !195
  %15 = load i32, ptr %4, align 4, !dbg !196
  %16 = srem i32 %15, 2, !dbg !198
  %17 = icmp eq i32 %16, 0, !dbg !199
  br i1 %17, label %18, label %19, !dbg !200

18:                                               ; preds = %1
  call void @run_query(), !dbg !201
  br label %20, !dbg !203

19:                                               ; preds = %1
  call void @run_reinit(), !dbg !204
  br label %20

20:                                               ; preds = %19, %18
  %21 = load ptr, ptr @stderr, align 8, !dbg !206
  %22 = load i32, ptr %4, align 4, !dbg !207
  %23 = srem i32 %22, 2, !dbg !208
  %24 = load i32, ptr %4, align 4, !dbg !209
  %25 = sdiv i32 %24, 2, !dbg !210
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.4, i32 noundef %23, i32 noundef %25), !dbg !211
  ret ptr null, !dbg !212
}

declare i32 @pthread_join(i64 noundef, ptr noundef) #2

declare void @FcFini() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_query() #0 !dbg !213 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !216, metadata !DIExpression()), !dbg !220
  %4 = call ptr @FcPatternCreate(), !dbg !221
  store ptr %4, ptr %1, align 8, !dbg !220
  call void @llvm.dbg.declare(metadata ptr %2, metadata !222, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata ptr %3, metadata !224, metadata !DIExpression()), !dbg !226
  %5 = load ptr, ptr %1, align 8, !dbg !227
  %6 = call i32 @FcPatternAddString(ptr noundef %5, ptr noundef @.str.5, ptr noundef @.str.6), !dbg !228
  %7 = load ptr, ptr %1, align 8, !dbg !229
  %8 = call i32 @FcPatternAddBool(ptr noundef %7, ptr noundef @.str.7, i32 noundef 1), !dbg !230
  %9 = load ptr, ptr %1, align 8, !dbg !231
  %10 = call i32 @FcConfigSubstitute(ptr noundef null, ptr noundef %9, i32 noundef 0), !dbg !232
  %11 = load ptr, ptr %1, align 8, !dbg !233
  call void @FcDefaultSubstitute(ptr noundef %11), !dbg !234
  %12 = load ptr, ptr %1, align 8, !dbg !235
  %13 = call ptr @FcFontMatch(ptr noundef null, ptr noundef %12, ptr noundef %3), !dbg !236
  store ptr %13, ptr %2, align 8, !dbg !237
  %14 = load i32, ptr %3, align 4, !dbg !238
  %15 = icmp ne i32 %14, 0, !dbg !240
  br i1 %15, label %19, label %16, !dbg !241

16:                                               ; preds = %0
  %17 = load ptr, ptr %2, align 8, !dbg !242
  %18 = icmp ne ptr %17, null, !dbg !242
  br i1 %18, label %22, label %19, !dbg !243

19:                                               ; preds = %16, %0
  %20 = load ptr, ptr @stderr, align 8, !dbg !244
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.8), !dbg !246
  br label %22, !dbg !247

22:                                               ; preds = %19, %16
  %23 = load ptr, ptr %2, align 8, !dbg !248
  %24 = icmp ne ptr %23, null, !dbg !248
  br i1 %24, label %25, label %27, !dbg !250

25:                                               ; preds = %22
  %26 = load ptr, ptr %2, align 8, !dbg !251
  call void @FcPatternDestroy(ptr noundef %26), !dbg !252
  br label %27, !dbg !252

27:                                               ; preds = %25, %22
  %28 = load ptr, ptr %1, align 8, !dbg !253
  call void @FcPatternDestroy(ptr noundef %28), !dbg !254
  ret void, !dbg !255
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_reinit() #0 !dbg !256 {
  %1 = call i32 @FcInitReinitialize(), !dbg !257
  %2 = icmp ne i32 %1, 0, !dbg !257
  br i1 %2, label %6, label %3, !dbg !259

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !dbg !260
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.9), !dbg !262
  br label %6, !dbg !263

6:                                                ; preds = %3, %0
  ret void, !dbg !264
}

declare ptr @FcPatternCreate() #2

declare i32 @FcPatternAddString(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @FcPatternAddBool(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @FcConfigSubstitute(ptr noundef, ptr noundef, i32 noundef) #2

declare void @FcDefaultSubstitute(ptr noundef) #2

declare ptr @FcFontMatch(ptr noundef, ptr noundef, ptr noundef) #2

declare void @FcPatternDestroy(ptr noundef) #2

declare i32 @FcInitReinitialize() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!49}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./test/test-crbug1004254.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "187533ad421189bcaf87e0f7df457099")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 42)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 25)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 18)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 31)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 28)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 7)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 11)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 9)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !9, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 30)
!49 = distinct !DICompileUnit(language: DW_LANG_C11, file: !50, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, retainedTypes: !68, globals: !79, splitDebugInlining: false, nameTableKind: None)
!50 = !DIFile(filename: "test/test-crbug1004254.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "187533ad421189bcaf87e0f7df457099")
!51 = !{!52, !61}
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_FcResult", file: !53, line: 240, baseType: !54, size: 32, elements: !55)
!53 = !DIFile(filename: "./fontconfig/fontconfig.h", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "05e262d1be6a508fc866c546b6803fc6")
!54 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "FcResultMatch", value: 0)
!57 = !DIEnumerator(name: "FcResultNoMatch", value: 1)
!58 = !DIEnumerator(name: "FcResultTypeMismatch", value: 2)
!59 = !DIEnumerator(name: "FcResultNoId", value: 3)
!60 = !DIEnumerator(name: "FcResultOutOfMemory", value: 4)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_FcMatchKind", file: !53, line: 289, baseType: !54, size: 32, elements: !62)
!62 = !{!63, !64, !65, !66, !67}
!63 = !DIEnumerator(name: "FcMatchPattern", value: 0)
!64 = !DIEnumerator(name: "FcMatchFont", value: 1)
!65 = !DIEnumerator(name: "FcMatchScan", value: 2)
!66 = !DIEnumerator(name: "FcMatchKindEnd", value: 3)
!67 = !DIEnumerator(name: "FcMatchKindBegin", value: 0)
!68 = !{!69, !70, !75}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thr_arg_s", file: !2, line: 31, size: 32, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "thr_num", scope: !71, file: !2, line: 33, baseType: !74, size: 32)
!74 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcChar8", file: !53, line: 43, baseType: !78)
!78 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !44}
!80 = !{i32 7, !"Dwarf Version", i32 5}
!81 = !{i32 2, !"Debug Info Version", i32 3}
!82 = !{i32 1, !"wchar_size", i32 4}
!83 = !{i32 8, !"PIC Level", i32 2}
!84 = !{i32 7, !"PIE Level", i32 2}
!85 = !{i32 7, !"uwtable", i32 2}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 16.0.0"}
!88 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 88, type: !89, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !93)
!89 = !DISubroutineType(types: !90)
!90 = !{!74, !74, !91}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!93 = !{}
!94 = !DILocalVariable(name: "argc", arg: 1, scope: !88, file: !2, line: 88, type: !74)
!95 = !DILocation(line: 88, column: 11, scope: !88)
!96 = !DILocalVariable(name: "argv", arg: 2, scope: !88, file: !2, line: 88, type: !91)
!97 = !DILocation(line: 88, column: 24, scope: !88)
!98 = !DILocalVariable(name: "threads", scope: !88, file: !2, line: 90, type: !99)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 192000, elements: !103)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !101, line: 27, baseType: !102)
!101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!102 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!103 = !{!104}
!104 = !DISubrange(count: 3000)
!105 = !DILocation(line: 90, column: 15, scope: !88)
!106 = !DILocalVariable(name: "thr_arg", scope: !88, file: !2, line: 91, type: !107)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 96000, elements: !103)
!108 = !DILocation(line: 91, column: 22, scope: !88)
!109 = !DILocalVariable(name: "i", scope: !88, file: !2, line: 92, type: !74)
!110 = !DILocation(line: 92, column: 9, scope: !88)
!111 = !DILocalVariable(name: "j", scope: !88, file: !2, line: 92, type: !74)
!112 = !DILocation(line: 92, column: 12, scope: !88)
!113 = !DILocation(line: 94, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !88, file: !2, line: 94, column: 5)
!115 = !DILocation(line: 94, column: 10, scope: !114)
!116 = !DILocation(line: 94, column: 17, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !2, line: 94, column: 5)
!118 = !DILocation(line: 94, column: 19, scope: !117)
!119 = !DILocation(line: 94, column: 5, scope: !114)
!120 = !DILocalVariable(name: "result", scope: !121, file: !2, line: 96, type: !74)
!121 = distinct !DILexicalBlock(scope: !117, file: !2, line: 95, column: 5)
!122 = !DILocation(line: 96, column: 6, scope: !121)
!123 = !DILocation(line: 98, column: 11, scope: !121)
!124 = !DILocation(line: 98, column: 65, scope: !121)
!125 = !DILocation(line: 98, column: 68, scope: !121)
!126 = !DILocation(line: 98, column: 70, scope: !121)
!127 = !DILocation(line: 98, column: 75, scope: !121)
!128 = !DILocation(line: 98, column: 77, scope: !121)
!129 = !DILocation(line: 98, column: 2, scope: !121)
!130 = !DILocation(line: 99, column: 23, scope: !121)
!131 = !DILocation(line: 99, column: 10, scope: !121)
!132 = !DILocation(line: 99, column: 2, scope: !121)
!133 = !DILocation(line: 99, column: 13, scope: !121)
!134 = !DILocation(line: 99, column: 21, scope: !121)
!135 = !DILocation(line: 100, column: 36, scope: !121)
!136 = !DILocation(line: 100, column: 28, scope: !121)
!137 = !DILocation(line: 101, column: 24, scope: !121)
!138 = !DILocation(line: 101, column: 16, scope: !121)
!139 = !DILocation(line: 100, column: 11, scope: !121)
!140 = !DILocation(line: 100, column: 9, scope: !121)
!141 = !DILocation(line: 102, column: 6, scope: !142)
!142 = distinct !DILexicalBlock(scope: !121, file: !2, line: 102, column: 6)
!143 = !DILocation(line: 102, column: 13, scope: !142)
!144 = !DILocation(line: 102, column: 6, scope: !121)
!145 = !DILocation(line: 104, column: 15, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !2, line: 103, column: 2)
!147 = !DILocation(line: 104, column: 52, scope: !146)
!148 = !DILocation(line: 104, column: 6, scope: !146)
!149 = !DILocation(line: 105, column: 6, scope: !146)
!150 = !DILocation(line: 107, column: 5, scope: !121)
!151 = !DILocation(line: 94, column: 29, scope: !117)
!152 = !DILocation(line: 94, column: 5, scope: !117)
!153 = distinct !{!153, !119, !154, !155}
!154 = !DILocation(line: 107, column: 5, scope: !114)
!155 = !{!"llvm.loop.mustprogress"}
!156 = !DILocation(line: 108, column: 12, scope: !157)
!157 = distinct !DILexicalBlock(scope: !88, file: !2, line: 108, column: 5)
!158 = !DILocation(line: 108, column: 10, scope: !157)
!159 = !DILocation(line: 108, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !2, line: 108, column: 5)
!161 = !DILocation(line: 108, column: 21, scope: !160)
!162 = !DILocation(line: 108, column: 19, scope: !160)
!163 = !DILocation(line: 108, column: 5, scope: !157)
!164 = !DILocation(line: 110, column: 23, scope: !165)
!165 = distinct !DILexicalBlock(scope: !160, file: !2, line: 109, column: 5)
!166 = !DILocation(line: 110, column: 15, scope: !165)
!167 = !DILocation(line: 110, column: 2, scope: !165)
!168 = !DILocation(line: 111, column: 11, scope: !165)
!169 = !DILocation(line: 111, column: 41, scope: !165)
!170 = !DILocation(line: 111, column: 2, scope: !165)
!171 = !DILocation(line: 112, column: 5, scope: !165)
!172 = !DILocation(line: 108, column: 25, scope: !160)
!173 = !DILocation(line: 108, column: 5, scope: !160)
!174 = distinct !{!174, !163, !175, !155}
!175 = !DILocation(line: 112, column: 5, scope: !157)
!176 = !DILocation(line: 113, column: 5, scope: !88)
!177 = !DILocation(line: 115, column: 5, scope: !88)
!178 = distinct !DISubprogram(name: "run_test_in_thread", scope: !2, file: !2, line: 68, type: !179, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !49, retainedNodes: !93)
!179 = !DISubroutineType(types: !180)
!180 = !{!69, !69}
!181 = !DILocalVariable(name: "arg", arg: 1, scope: !178, file: !2, line: 68, type: !69)
!182 = !DILocation(line: 68, column: 27, scope: !178)
!183 = !DILocalVariable(name: "thr_arg", scope: !178, file: !2, line: 70, type: !70)
!184 = !DILocation(line: 70, column: 23, scope: !178)
!185 = !DILocation(line: 70, column: 54, scope: !178)
!186 = !DILocalVariable(name: "thread_num", scope: !178, file: !2, line: 71, type: !74)
!187 = !DILocation(line: 71, column: 9, scope: !178)
!188 = !DILocation(line: 71, column: 22, scope: !178)
!189 = !DILocation(line: 71, column: 31, scope: !178)
!190 = !DILocation(line: 73, column: 14, scope: !178)
!191 = !DILocation(line: 73, column: 57, scope: !178)
!192 = !DILocation(line: 73, column: 68, scope: !178)
!193 = !DILocation(line: 73, column: 73, scope: !178)
!194 = !DILocation(line: 73, column: 84, scope: !178)
!195 = !DILocation(line: 73, column: 5, scope: !178)
!196 = !DILocation(line: 74, column: 10, scope: !197)
!197 = distinct !DILexicalBlock(scope: !178, file: !2, line: 74, column: 9)
!198 = !DILocation(line: 74, column: 21, scope: !197)
!199 = !DILocation(line: 74, column: 26, scope: !197)
!200 = !DILocation(line: 74, column: 9, scope: !178)
!201 = !DILocation(line: 76, column: 2, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !2, line: 75, column: 5)
!203 = !DILocation(line: 77, column: 5, scope: !202)
!204 = !DILocation(line: 80, column: 2, scope: !205)
!205 = distinct !DILexicalBlock(scope: !197, file: !2, line: 79, column: 5)
!206 = !DILocation(line: 82, column: 14, scope: !178)
!207 = !DILocation(line: 82, column: 54, scope: !178)
!208 = !DILocation(line: 82, column: 65, scope: !178)
!209 = !DILocation(line: 82, column: 70, scope: !178)
!210 = !DILocation(line: 82, column: 81, scope: !178)
!211 = !DILocation(line: 82, column: 5, scope: !178)
!212 = !DILocation(line: 84, column: 5, scope: !178)
!213 = distinct !DISubprogram(name: "run_query", scope: !2, file: !2, line: 37, type: !214, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !49, retainedNodes: !93)
!214 = !DISubroutineType(types: !215)
!215 = !{null}
!216 = !DILocalVariable(name: "pat", scope: !213, file: !2, line: 39, type: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcPattern", file: !53, line: 251, baseType: !219)
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcPattern", file: !53, line: 251, flags: DIFlagFwdDecl)
!220 = !DILocation(line: 39, column: 16, scope: !213)
!221 = !DILocation(line: 39, column: 22, scope: !213)
!222 = !DILocalVariable(name: "match", scope: !213, file: !2, line: 39, type: !217)
!223 = !DILocation(line: 39, column: 43, scope: !213)
!224 = !DILocalVariable(name: "result", scope: !213, file: !2, line: 40, type: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcResult", file: !53, line: 243, baseType: !52)
!226 = !DILocation(line: 40, column: 14, scope: !213)
!227 = !DILocation(line: 42, column: 25, scope: !213)
!228 = !DILocation(line: 42, column: 5, scope: !213)
!229 = !DILocation(line: 43, column: 23, scope: !213)
!230 = !DILocation(line: 43, column: 5, scope: !213)
!231 = !DILocation(line: 44, column: 31, scope: !213)
!232 = !DILocation(line: 44, column: 5, scope: !213)
!233 = !DILocation(line: 45, column: 26, scope: !213)
!234 = !DILocation(line: 45, column: 5, scope: !213)
!235 = !DILocation(line: 46, column: 32, scope: !213)
!236 = !DILocation(line: 46, column: 13, scope: !213)
!237 = !DILocation(line: 46, column: 11, scope: !213)
!238 = !DILocation(line: 47, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !213, file: !2, line: 47, column: 9)
!240 = !DILocation(line: 47, column: 16, scope: !239)
!241 = !DILocation(line: 47, column: 33, scope: !239)
!242 = !DILocation(line: 47, column: 37, scope: !239)
!243 = !DILocation(line: 47, column: 9, scope: !213)
!244 = !DILocation(line: 49, column: 11, scope: !245)
!245 = distinct !DILexicalBlock(scope: !239, file: !2, line: 48, column: 5)
!246 = !DILocation(line: 49, column: 2, scope: !245)
!247 = !DILocation(line: 50, column: 5, scope: !245)
!248 = !DILocation(line: 51, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !213, file: !2, line: 51, column: 9)
!250 = !DILocation(line: 51, column: 9, scope: !213)
!251 = !DILocation(line: 52, column: 20, scope: !249)
!252 = !DILocation(line: 52, column: 2, scope: !249)
!253 = !DILocation(line: 53, column: 23, scope: !213)
!254 = !DILocation(line: 53, column: 5, scope: !213)
!255 = !DILocation(line: 54, column: 1, scope: !213)
!256 = distinct !DISubprogram(name: "run_reinit", scope: !2, file: !2, line: 57, type: !214, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !49, retainedNodes: !93)
!257 = !DILocation(line: 59, column: 10, scope: !258)
!258 = distinct !DILexicalBlock(scope: !256, file: !2, line: 59, column: 9)
!259 = !DILocation(line: 59, column: 9, scope: !256)
!260 = !DILocation(line: 61, column: 11, scope: !261)
!261 = distinct !DILexicalBlock(scope: !258, file: !2, line: 60, column: 5)
!262 = !DILocation(line: 61, column: 2, scope: !261)
!263 = !DILocation(line: 62, column: 5, scope: !261)
!264 = !DILocation(line: 63, column: 1, scope: !256)
