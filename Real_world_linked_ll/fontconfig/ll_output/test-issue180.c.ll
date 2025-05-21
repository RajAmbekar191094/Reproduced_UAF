; ModuleID = './test/test-issue180.c'
source_filename = "./test/test-issue180.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"<fontconfig>\0A  <cachedir></cachedir>\0A</fontconfig>\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [65 x i8] c"<fontconfig>\0A  <cachedir prefix=\22xdg\22></cachedir>\0A</fontconfig>\0A\00", align 1, !dbg !7
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to load a config from memory.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [33 x i8] c"There was one or more cachedirs\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [52 x i8] c"Unable to load a config from memory (with prefix).\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [47 x i8] c"There was one or more cachedirs (with prefix)\0A\00", align 1, !dbg !24

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !47 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !52, metadata !DIExpression()), !dbg !53
  store ptr @.str, ptr %2, align 8, !dbg !53
  call void @llvm.dbg.declare(metadata ptr %3, metadata !54, metadata !DIExpression()), !dbg !55
  store ptr @.str.1, ptr %3, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata ptr %4, metadata !56, metadata !DIExpression()), !dbg !60
  %7 = call ptr @FcConfigCreate(), !dbg !61
  store ptr %7, ptr %4, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata ptr %5, metadata !62, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata ptr %6, metadata !67, metadata !DIExpression()), !dbg !69
  %8 = load ptr, ptr %4, align 8, !dbg !70
  %9 = load ptr, ptr %2, align 8, !dbg !72
  %10 = call i32 @FcConfigParseAndLoadFromMemory(ptr noundef %8, ptr noundef %9, i32 noundef 1), !dbg !73
  %11 = icmp ne i32 %10, 0, !dbg !73
  br i1 %11, label %15, label %12, !dbg !74

12:                                               ; preds = %0
  %13 = load ptr, ptr @stderr, align 8, !dbg !75
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.2), !dbg !77
  store i32 1, ptr %1, align 4, !dbg !78
  br label %47, !dbg !78

15:                                               ; preds = %0
  %16 = load ptr, ptr %4, align 8, !dbg !79
  %17 = call ptr @FcConfigGetCacheDirs(ptr noundef %16), !dbg !80
  store ptr %17, ptr %5, align 8, !dbg !81
  %18 = load ptr, ptr %5, align 8, !dbg !82
  %19 = call ptr @FcStrListNext(ptr noundef %18), !dbg !84
  store ptr %19, ptr %6, align 8, !dbg !85
  %20 = icmp ne ptr %19, null, !dbg !86
  br i1 %20, label %21, label %24, !dbg !87

21:                                               ; preds = %15
  %22 = load ptr, ptr @stderr, align 8, !dbg !88
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.3), !dbg !90
  store i32 1, ptr %1, align 4, !dbg !91
  br label %47, !dbg !91

24:                                               ; preds = %15
  %25 = load ptr, ptr %5, align 8, !dbg !92
  call void @FcStrListDone(ptr noundef %25), !dbg !93
  %26 = load ptr, ptr %4, align 8, !dbg !94
  call void @FcConfigDestroy(ptr noundef %26), !dbg !95
  %27 = call ptr @FcConfigCreate(), !dbg !96
  store ptr %27, ptr %4, align 8, !dbg !97
  %28 = load ptr, ptr %4, align 8, !dbg !98
  %29 = load ptr, ptr %3, align 8, !dbg !100
  %30 = call i32 @FcConfigParseAndLoadFromMemory(ptr noundef %28, ptr noundef %29, i32 noundef 1), !dbg !101
  %31 = icmp ne i32 %30, 0, !dbg !101
  br i1 %31, label %35, label %32, !dbg !102

32:                                               ; preds = %24
  %33 = load ptr, ptr @stderr, align 8, !dbg !103
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.4), !dbg !105
  store i32 1, ptr %1, align 4, !dbg !106
  br label %47, !dbg !106

35:                                               ; preds = %24
  %36 = load ptr, ptr %4, align 8, !dbg !107
  %37 = call ptr @FcConfigGetCacheDirs(ptr noundef %36), !dbg !108
  store ptr %37, ptr %5, align 8, !dbg !109
  %38 = load ptr, ptr %5, align 8, !dbg !110
  %39 = call ptr @FcStrListNext(ptr noundef %38), !dbg !112
  store ptr %39, ptr %6, align 8, !dbg !113
  %40 = icmp ne ptr %39, null, !dbg !114
  br i1 %40, label %41, label %44, !dbg !115

41:                                               ; preds = %35
  %42 = load ptr, ptr @stderr, align 8, !dbg !116
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.5), !dbg !118
  store i32 1, ptr %1, align 4, !dbg !119
  br label %47, !dbg !119

44:                                               ; preds = %35
  %45 = load ptr, ptr %5, align 8, !dbg !120
  call void @FcStrListDone(ptr noundef %45), !dbg !121
  %46 = load ptr, ptr %4, align 8, !dbg !122
  call void @FcConfigDestroy(ptr noundef %46), !dbg !123
  store i32 0, ptr %1, align 4, !dbg !124
  br label %47, !dbg !124

47:                                               ; preds = %44, %41, %32, %21, %12
  %48 = load i32, ptr %1, align 4, !dbg !125
  ret i32 %48, !dbg !125
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @FcConfigCreate() #2

declare i32 @FcConfigParseAndLoadFromMemory(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare ptr @FcConfigGetCacheDirs(ptr noundef) #2

declare ptr @FcStrListNext(ptr noundef) #2

declare void @FcStrListDone(ptr noundef) #2

declare void @FcConfigDestroy(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!29}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./test/test-issue180.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "f7870b92919cebe15e4af9fe5a463b91")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 52)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 65)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 38)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 33)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !3, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 47)
!29 = distinct !DICompileUnit(language: DW_LANG_C11, file: !30, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !31, globals: !38, splitDebugInlining: false, nameTableKind: None)
!30 = !DIFile(filename: "test/test-issue180.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "f7870b92919cebe15e4af9fe5a463b91")
!31 = !{!32, !37}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcChar8", file: !35, line: 43, baseType: !36)
!35 = !DIFile(filename: "./fontconfig/fontconfig.h", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "05e262d1be6a508fc866c546b6803fc6")
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !{!0, !7, !12, !17, !22, !24}
!39 = !{i32 7, !"Dwarf Version", i32 5}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = !{i32 8, !"PIC Level", i32 2}
!43 = !{i32 7, !"PIE Level", i32 2}
!44 = !{i32 7, !"uwtable", i32 2}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 16.0.0"}
!47 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 29, type: !48, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !29, retainedNodes: !51)
!48 = !DISubroutineType(types: !49)
!49 = !{!50}
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !{}
!52 = !DILocalVariable(name: "doc", scope: !47, file: !2, line: 31, type: !32)
!53 = !DILocation(line: 31, column: 20, scope: !47)
!54 = !DILocalVariable(name: "doc2", scope: !47, file: !2, line: 36, type: !32)
!55 = !DILocation(line: 36, column: 20, scope: !47)
!56 = !DILocalVariable(name: "cfg", scope: !47, file: !2, line: 41, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcConfig", file: !35, line: 325, baseType: !59)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcConfig", file: !35, line: 325, flags: DIFlagFwdDecl)
!60 = !DILocation(line: 41, column: 15, scope: !47)
!61 = !DILocation(line: 41, column: 21, scope: !47)
!62 = !DILocalVariable(name: "l", scope: !47, file: !2, line: 42, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcStrList", file: !35, line: 331, baseType: !65)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcStrList", file: !35, line: 331, flags: DIFlagFwdDecl)
!66 = !DILocation(line: 42, column: 16, scope: !47)
!67 = !DILocalVariable(name: "p", scope: !47, file: !2, line: 43, type: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!69 = !DILocation(line: 43, column: 14, scope: !47)
!70 = !DILocation(line: 45, column: 42, scope: !71)
!71 = distinct !DILexicalBlock(scope: !47, file: !2, line: 45, column: 9)
!72 = !DILocation(line: 45, column: 47, scope: !71)
!73 = !DILocation(line: 45, column: 10, scope: !71)
!74 = !DILocation(line: 45, column: 9, scope: !47)
!75 = !DILocation(line: 47, column: 11, scope: !76)
!76 = distinct !DILexicalBlock(scope: !71, file: !2, line: 46, column: 5)
!77 = !DILocation(line: 47, column: 2, scope: !76)
!78 = !DILocation(line: 48, column: 2, scope: !76)
!79 = !DILocation(line: 50, column: 31, scope: !47)
!80 = !DILocation(line: 50, column: 9, scope: !47)
!81 = !DILocation(line: 50, column: 7, scope: !47)
!82 = !DILocation(line: 51, column: 29, scope: !83)
!83 = distinct !DILexicalBlock(scope: !47, file: !2, line: 51, column: 9)
!84 = !DILocation(line: 51, column: 14, scope: !83)
!85 = !DILocation(line: 51, column: 12, scope: !83)
!86 = !DILocation(line: 51, column: 33, scope: !83)
!87 = !DILocation(line: 51, column: 9, scope: !47)
!88 = !DILocation(line: 53, column: 11, scope: !89)
!89 = distinct !DILexicalBlock(scope: !83, file: !2, line: 52, column: 5)
!90 = !DILocation(line: 53, column: 2, scope: !89)
!91 = !DILocation(line: 54, column: 2, scope: !89)
!92 = !DILocation(line: 56, column: 20, scope: !47)
!93 = !DILocation(line: 56, column: 5, scope: !47)
!94 = !DILocation(line: 57, column: 22, scope: !47)
!95 = !DILocation(line: 57, column: 5, scope: !47)
!96 = !DILocation(line: 59, column: 11, scope: !47)
!97 = !DILocation(line: 59, column: 9, scope: !47)
!98 = !DILocation(line: 60, column: 42, scope: !99)
!99 = distinct !DILexicalBlock(scope: !47, file: !2, line: 60, column: 9)
!100 = !DILocation(line: 60, column: 47, scope: !99)
!101 = !DILocation(line: 60, column: 10, scope: !99)
!102 = !DILocation(line: 60, column: 9, scope: !47)
!103 = !DILocation(line: 62, column: 11, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !2, line: 61, column: 5)
!105 = !DILocation(line: 62, column: 2, scope: !104)
!106 = !DILocation(line: 63, column: 2, scope: !104)
!107 = !DILocation(line: 65, column: 31, scope: !47)
!108 = !DILocation(line: 65, column: 9, scope: !47)
!109 = !DILocation(line: 65, column: 7, scope: !47)
!110 = !DILocation(line: 66, column: 29, scope: !111)
!111 = distinct !DILexicalBlock(scope: !47, file: !2, line: 66, column: 9)
!112 = !DILocation(line: 66, column: 14, scope: !111)
!113 = !DILocation(line: 66, column: 12, scope: !111)
!114 = !DILocation(line: 66, column: 33, scope: !111)
!115 = !DILocation(line: 66, column: 9, scope: !47)
!116 = !DILocation(line: 68, column: 11, scope: !117)
!117 = distinct !DILexicalBlock(scope: !111, file: !2, line: 67, column: 5)
!118 = !DILocation(line: 68, column: 2, scope: !117)
!119 = !DILocation(line: 69, column: 2, scope: !117)
!120 = !DILocation(line: 71, column: 20, scope: !47)
!121 = !DILocation(line: 71, column: 5, scope: !47)
!122 = !DILocation(line: 72, column: 22, scope: !47)
!123 = !DILocation(line: 72, column: 5, scope: !47)
!124 = !DILocation(line: 74, column: 5, scope: !47)
!125 = !DILocation(line: 75, column: 1, scope: !47)
