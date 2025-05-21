; ModuleID = './test/test-bz1744377.c'
source_filename = "./test/test-bz1744377.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [83 x i8] c"<fontconfig>\0A  <include ignore_missing=\22yes\22>blahblahblah</include>\0A</fontconfig>\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [82 x i8] c"<fontconfig>\0A  <include ignore_missing=\22no\22>blahblahblah</include>\0A</fontconfig>\0A\00", align 1, !dbg !7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !29 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !34, metadata !DIExpression()), !dbg !35
  store ptr @.str, ptr %2, align 8, !dbg !35
  call void @llvm.dbg.declare(metadata ptr %3, metadata !36, metadata !DIExpression()), !dbg !37
  store ptr @.str.1, ptr %3, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata ptr %4, metadata !38, metadata !DIExpression()), !dbg !42
  %5 = call ptr @FcConfigCreate(), !dbg !43
  store ptr %5, ptr %4, align 8, !dbg !42
  %6 = load ptr, ptr %4, align 8, !dbg !44
  %7 = load ptr, ptr %2, align 8, !dbg !46
  %8 = call i32 @FcConfigParseAndLoadFromMemory(ptr noundef %6, ptr noundef %7, i32 noundef 1), !dbg !47
  %9 = icmp ne i32 %8, 0, !dbg !47
  br i1 %9, label %11, label %10, !dbg !48

10:                                               ; preds = %0
  store i32 1, ptr %1, align 4, !dbg !49
  br label %25, !dbg !49

11:                                               ; preds = %0
  %12 = load ptr, ptr %4, align 8, !dbg !50
  %13 = load ptr, ptr %3, align 8, !dbg !52
  %14 = call i32 @FcConfigParseAndLoadFromMemory(ptr noundef %12, ptr noundef %13, i32 noundef 1), !dbg !53
  %15 = icmp ne i32 %14, 0, !dbg !53
  br i1 %15, label %16, label %17, !dbg !54

16:                                               ; preds = %11
  store i32 1, ptr %1, align 4, !dbg !55
  br label %25, !dbg !55

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 8, !dbg !56
  %19 = load ptr, ptr %3, align 8, !dbg !58
  %20 = call i32 @FcConfigParseAndLoadFromMemory(ptr noundef %18, ptr noundef %19, i32 noundef 0), !dbg !59
  %21 = icmp ne i32 %20, 0, !dbg !59
  br i1 %21, label %23, label %22, !dbg !60

22:                                               ; preds = %17
  store i32 1, ptr %1, align 4, !dbg !61
  br label %25, !dbg !61

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 8, !dbg !62
  call void @FcConfigDestroy(ptr noundef %24), !dbg !63
  store i32 0, ptr %1, align 4, !dbg !64
  br label %25, !dbg !64

25:                                               ; preds = %23, %22, %16, %10
  %26 = load i32, ptr %1, align 4, !dbg !65
  ret i32 %26, !dbg !65
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @FcConfigCreate() #2

declare i32 @FcConfigParseAndLoadFromMemory(ptr noundef, ptr noundef, i32 noundef) #2

declare void @FcConfigDestroy(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 29, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./test/test-bz1744377.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "290a5f873f273b97a50216c4e1a67fbe")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 664, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 83)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 656, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 82)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !13, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !14, globals: !20, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "test/test-bz1744377.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "290a5f873f273b97a50216c4e1a67fbe")
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcChar8", file: !18, line: 43, baseType: !19)
!18 = !DIFile(filename: "./fontconfig/fontconfig.h", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "05e262d1be6a508fc866c546b6803fc6")
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !{!0, !7}
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 8, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 16.0.0"}
!29 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 27, type: !30, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{!32}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !{}
!34 = !DILocalVariable(name: "doc", scope: !29, file: !2, line: 29, type: !15)
!35 = !DILocation(line: 29, column: 20, scope: !29)
!36 = !DILocalVariable(name: "doc2", scope: !29, file: !2, line: 34, type: !15)
!37 = !DILocation(line: 34, column: 20, scope: !29)
!38 = !DILocalVariable(name: "cfg", scope: !29, file: !2, line: 39, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcConfig", file: !18, line: 325, baseType: !41)
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcConfig", file: !18, line: 325, flags: DIFlagFwdDecl)
!42 = !DILocation(line: 39, column: 15, scope: !29)
!43 = !DILocation(line: 39, column: 21, scope: !29)
!44 = !DILocation(line: 41, column: 42, scope: !45)
!45 = distinct !DILexicalBlock(scope: !29, file: !2, line: 41, column: 9)
!46 = !DILocation(line: 41, column: 47, scope: !45)
!47 = !DILocation(line: 41, column: 10, scope: !45)
!48 = !DILocation(line: 41, column: 9, scope: !29)
!49 = !DILocation(line: 42, column: 2, scope: !45)
!50 = !DILocation(line: 43, column: 41, scope: !51)
!51 = distinct !DILexicalBlock(scope: !29, file: !2, line: 43, column: 9)
!52 = !DILocation(line: 43, column: 46, scope: !51)
!53 = !DILocation(line: 43, column: 9, scope: !51)
!54 = !DILocation(line: 43, column: 9, scope: !29)
!55 = !DILocation(line: 44, column: 2, scope: !51)
!56 = !DILocation(line: 45, column: 42, scope: !57)
!57 = distinct !DILexicalBlock(scope: !29, file: !2, line: 45, column: 9)
!58 = !DILocation(line: 45, column: 47, scope: !57)
!59 = !DILocation(line: 45, column: 10, scope: !57)
!60 = !DILocation(line: 45, column: 9, scope: !29)
!61 = !DILocation(line: 46, column: 2, scope: !57)
!62 = !DILocation(line: 48, column: 22, scope: !29)
!63 = !DILocation(line: 48, column: 5, scope: !29)
!64 = !DILocation(line: 50, column: 5, scope: !29)
!65 = !DILocation(line: 51, column: 1, scope: !29)
