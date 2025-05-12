; ModuleID = './test/test-bz106618.c'
source_filename = "./test/test-bz106618.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._FcFontSet = type { i32, i32, ptr }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !37 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !44, metadata !DIExpression()), !dbg !45
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata ptr %6, metadata !48, metadata !DIExpression()), !dbg !60
  %10 = call ptr @FcConfigGetFonts(ptr noundef null, i32 noundef 0), !dbg !61
  store ptr %10, ptr %6, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata ptr %7, metadata !62, metadata !DIExpression()), !dbg !63
  %11 = load ptr, ptr %6, align 8, !dbg !64
  %12 = icmp ne ptr %11, null, !dbg !64
  br i1 %12, label %14, label %13, !dbg !66

13:                                               ; preds = %2
  store i32 1, ptr %3, align 4, !dbg !67
  br label %41, !dbg !67

14:                                               ; preds = %2
  store i32 0, ptr %7, align 4, !dbg !68
  br label %15, !dbg !70

15:                                               ; preds = %36, %14
  %16 = load i32, ptr %7, align 4, !dbg !71
  %17 = load ptr, ptr %6, align 8, !dbg !73
  %18 = getelementptr inbounds %struct._FcFontSet, ptr %17, i32 0, i32 0, !dbg !74
  %19 = load i32, ptr %18, align 8, !dbg !74
  %20 = icmp slt i32 %16, %19, !dbg !75
  br i1 %20, label %21, label %39, !dbg !76

21:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %8, metadata !77, metadata !DIExpression()), !dbg !79
  %22 = load ptr, ptr %6, align 8, !dbg !80
  %23 = getelementptr inbounds %struct._FcFontSet, ptr %22, i32 0, i32 2, !dbg !81
  %24 = load ptr, ptr %23, align 8, !dbg !81
  %25 = load i32, ptr %7, align 4, !dbg !82
  %26 = sext i32 %25 to i64, !dbg !80
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26, !dbg !80
  %28 = load ptr, ptr %27, align 8, !dbg !80
  store ptr %28, ptr %8, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata ptr %9, metadata !83, metadata !DIExpression()), !dbg !87
  %29 = load ptr, ptr %8, align 8, !dbg !88
  %30 = call i32 @FcPatternGetString(ptr noundef %29, ptr noundef @.str, i32 noundef 0, ptr noundef %9), !dbg !90
  %31 = icmp ne i32 %30, 0, !dbg !91
  br i1 %31, label %32, label %33, !dbg !92

32:                                               ; preds = %21
  store i32 1, ptr %3, align 4, !dbg !93
  br label %41, !dbg !93

33:                                               ; preds = %21
  %34 = load ptr, ptr %9, align 8, !dbg !94
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %34), !dbg !95
  br label %36, !dbg !96

36:                                               ; preds = %33
  %37 = load i32, ptr %7, align 4, !dbg !97
  %38 = add nsw i32 %37, 1, !dbg !97
  store i32 %38, ptr %7, align 4, !dbg !97
  br label %15, !dbg !98, !llvm.loop !99

39:                                               ; preds = %15
  %40 = load ptr, ptr %6, align 8, !dbg !102
  call void @FcFontSetDestroy(ptr noundef %40), !dbg !103
  store i32 0, ptr %3, align 4, !dbg !104
  br label %41, !dbg !104

41:                                               ; preds = %39, %32, %13
  %42 = load i32, ptr %3, align 4, !dbg !105
  ret i32 %42, !dbg !105
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @FcConfigGetFonts(ptr noundef, i32 noundef) #2

declare i32 @FcPatternGetString(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

declare void @FcFontSetDestroy(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./test/test-bz106618.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "d8a24269bf97c892bd0e2bcd376936d5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !13, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !14, globals: !28, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "test/test-bz106618.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "d8a24269bf97c892bd0e2bcd376936d5")
!14 = !{!15, !21}
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_FcSetName", file: !16, line: 302, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "./fontconfig/fontconfig.h", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "05e262d1be6a508fc866c546b6803fc6")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "FcSetSystem", value: 0)
!20 = !DIEnumerator(name: "FcSetApplication", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_FcResult", file: !16, line: 240, baseType: !17, size: 32, elements: !22)
!22 = !{!23, !24, !25, !26, !27}
!23 = !DIEnumerator(name: "FcResultMatch", value: 0)
!24 = !DIEnumerator(name: "FcResultNoMatch", value: 1)
!25 = !DIEnumerator(name: "FcResultTypeMismatch", value: 2)
!26 = !DIEnumerator(name: "FcResultNoId", value: 3)
!27 = !DIEnumerator(name: "FcResultOutOfMemory", value: 4)
!28 = !{!0, !7}
!29 = !{i32 7, !"Dwarf Version", i32 5}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{i32 8, !"PIC Level", i32 2}
!33 = !{i32 7, !"PIE Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 2}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 16.0.0"}
!37 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 28, type: !38, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !43)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !40, !41}
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!43 = !{}
!44 = !DILocalVariable(name: "argc", arg: 1, scope: !37, file: !2, line: 28, type: !40)
!45 = !DILocation(line: 28, column: 11, scope: !37)
!46 = !DILocalVariable(name: "argv", arg: 2, scope: !37, file: !2, line: 28, type: !41)
!47 = !DILocation(line: 28, column: 24, scope: !37)
!48 = !DILocalVariable(name: "fs", scope: !37, file: !2, line: 30, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcFontSet", file: !16, line: 281, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FcFontSet", file: !16, line: 277, size: 128, elements: !52)
!52 = !{!53, !54, !55}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nfont", scope: !51, file: !16, line: 278, baseType: !40, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "sfont", scope: !51, file: !16, line: 279, baseType: !40, size: 32, offset: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "fonts", scope: !51, file: !16, line: 280, baseType: !56, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcPattern", file: !16, line: 251, baseType: !59)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcPattern", file: !16, line: 251, flags: DIFlagFwdDecl)
!60 = !DILocation(line: 30, column: 16, scope: !37)
!61 = !DILocation(line: 30, column: 21, scope: !37)
!62 = !DILocalVariable(name: "i", scope: !37, file: !2, line: 31, type: !40)
!63 = !DILocation(line: 31, column: 9, scope: !37)
!64 = !DILocation(line: 33, column: 10, scope: !65)
!65 = distinct !DILexicalBlock(scope: !37, file: !2, line: 33, column: 9)
!66 = !DILocation(line: 33, column: 9, scope: !37)
!67 = !DILocation(line: 34, column: 2, scope: !65)
!68 = !DILocation(line: 35, column: 12, scope: !69)
!69 = distinct !DILexicalBlock(scope: !37, file: !2, line: 35, column: 5)
!70 = !DILocation(line: 35, column: 10, scope: !69)
!71 = !DILocation(line: 35, column: 17, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !2, line: 35, column: 5)
!73 = !DILocation(line: 35, column: 21, scope: !72)
!74 = !DILocation(line: 35, column: 25, scope: !72)
!75 = !DILocation(line: 35, column: 19, scope: !72)
!76 = !DILocation(line: 35, column: 5, scope: !69)
!77 = !DILocalVariable(name: "p", scope: !78, file: !2, line: 37, type: !57)
!78 = distinct !DILexicalBlock(scope: !72, file: !2, line: 36, column: 5)
!79 = !DILocation(line: 37, column: 13, scope: !78)
!80 = !DILocation(line: 37, column: 17, scope: !78)
!81 = !DILocation(line: 37, column: 21, scope: !78)
!82 = !DILocation(line: 37, column: 27, scope: !78)
!83 = !DILocalVariable(name: "file", scope: !78, file: !2, line: 38, type: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcChar8", file: !16, line: 43, baseType: !86)
!86 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!87 = !DILocation(line: 38, column: 11, scope: !78)
!88 = !DILocation(line: 40, column: 26, scope: !89)
!89 = distinct !DILexicalBlock(scope: !78, file: !2, line: 40, column: 6)
!90 = !DILocation(line: 40, column: 6, scope: !89)
!91 = !DILocation(line: 40, column: 48, scope: !89)
!92 = !DILocation(line: 40, column: 6, scope: !78)
!93 = !DILocation(line: 41, column: 6, scope: !89)
!94 = !DILocation(line: 42, column: 18, scope: !78)
!95 = !DILocation(line: 42, column: 2, scope: !78)
!96 = !DILocation(line: 43, column: 5, scope: !78)
!97 = !DILocation(line: 35, column: 33, scope: !72)
!98 = !DILocation(line: 35, column: 5, scope: !72)
!99 = distinct !{!99, !76, !100, !101}
!100 = !DILocation(line: 43, column: 5, scope: !69)
!101 = !{!"llvm.loop.mustprogress"}
!102 = !DILocation(line: 44, column: 23, scope: !37)
!103 = !DILocation(line: 44, column: 5, scope: !37)
!104 = !DILocation(line: 46, column: 5, scope: !37)
!105 = !DILocation(line: 47, column: 1, scope: !37)
