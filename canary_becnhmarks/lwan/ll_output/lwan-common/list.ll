; ModuleID = '/home/raj/lwan/common/list.c'
source_filename = "/home/raj/lwan/common/list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_node = type { ptr, ptr }
%struct.list_head = type { %struct.list_node }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [40 x i8] c"%s: prev corrupt in node %p (%u) of %p\0A\00", align 1, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @list_check_node(ptr noundef %0, ptr noundef %1) #0 !dbg !30 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !38, metadata !DIExpression()), !dbg !39
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata ptr %6, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata ptr %7, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata ptr %8, metadata !46, metadata !DIExpression()), !dbg !48
  store i32 0, ptr %8, align 4, !dbg !48
  %9 = load ptr, ptr %4, align 8, !dbg !49
  store ptr %9, ptr %6, align 8, !dbg !51
  %10 = load ptr, ptr %4, align 8, !dbg !52
  %11 = getelementptr inbounds %struct.list_node, ptr %10, i32 0, i32 0, !dbg !53
  %12 = load ptr, ptr %11, align 8, !dbg !53
  store ptr %12, ptr %7, align 8, !dbg !54
  br label %13, !dbg !55

13:                                               ; preds = %32, %2
  %14 = load ptr, ptr %7, align 8, !dbg !56
  %15 = load ptr, ptr %4, align 8, !dbg !58
  %16 = icmp ne ptr %14, %15, !dbg !59
  br i1 %16, label %17, label %37, !dbg !60

17:                                               ; preds = %13
  %18 = load i32, ptr %8, align 4, !dbg !61
  %19 = add i32 %18, 1, !dbg !61
  store i32 %19, ptr %8, align 4, !dbg !61
  %20 = load ptr, ptr %7, align 8, !dbg !63
  %21 = getelementptr inbounds %struct.list_node, ptr %20, i32 0, i32 1, !dbg !65
  %22 = load ptr, ptr %21, align 8, !dbg !65
  %23 = load ptr, ptr %6, align 8, !dbg !66
  %24 = icmp ne ptr %22, %23, !dbg !67
  br i1 %24, label %25, label %31, !dbg !68

25:                                               ; preds = %17
  %26 = load ptr, ptr %5, align 8, !dbg !69
  %27 = load ptr, ptr %4, align 8, !dbg !70
  %28 = load ptr, ptr %7, align 8, !dbg !71
  %29 = load i32, ptr %8, align 4, !dbg !72
  %30 = call ptr @corrupt(ptr noundef %26, ptr noundef %27, ptr noundef %28, i32 noundef %29), !dbg !73
  store ptr %30, ptr %3, align 8, !dbg !74
  br label %50, !dbg !74

31:                                               ; preds = %17
  br label %32, !dbg !75

32:                                               ; preds = %31
  %33 = load ptr, ptr %7, align 8, !dbg !76
  store ptr %33, ptr %6, align 8, !dbg !77
  %34 = load ptr, ptr %7, align 8, !dbg !78
  %35 = getelementptr inbounds %struct.list_node, ptr %34, i32 0, i32 0, !dbg !79
  %36 = load ptr, ptr %35, align 8, !dbg !79
  store ptr %36, ptr %7, align 8, !dbg !80
  br label %13, !dbg !81, !llvm.loop !82

37:                                               ; preds = %13
  %38 = load ptr, ptr %4, align 8, !dbg !85
  %39 = getelementptr inbounds %struct.list_node, ptr %38, i32 0, i32 1, !dbg !87
  %40 = load ptr, ptr %39, align 8, !dbg !87
  %41 = load ptr, ptr %6, align 8, !dbg !88
  %42 = icmp ne ptr %40, %41, !dbg !89
  br i1 %42, label %43, label %48, !dbg !90

43:                                               ; preds = %37
  %44 = load ptr, ptr %5, align 8, !dbg !91
  %45 = load ptr, ptr %4, align 8, !dbg !92
  %46 = load ptr, ptr %4, align 8, !dbg !93
  %47 = call ptr @corrupt(ptr noundef %44, ptr noundef %45, ptr noundef %46, i32 noundef 0), !dbg !94
  store ptr %47, ptr %3, align 8, !dbg !95
  br label %50, !dbg !95

48:                                               ; preds = %37
  %49 = load ptr, ptr %4, align 8, !dbg !96
  store ptr %49, ptr %3, align 8, !dbg !97
  br label %50, !dbg !97

50:                                               ; preds = %48, %43, %25
  %51 = load ptr, ptr %3, align 8, !dbg !98
  ret ptr %51, !dbg !98
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @corrupt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !99 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !102, metadata !DIExpression()), !dbg !103
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !104, metadata !DIExpression()), !dbg !105
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !106, metadata !DIExpression()), !dbg !107
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !108, metadata !DIExpression()), !dbg !109
  %9 = load ptr, ptr %5, align 8, !dbg !110
  %10 = icmp ne ptr %9, null, !dbg !110
  br i1 %10, label %11, label %18, !dbg !112

11:                                               ; preds = %4
  %12 = load ptr, ptr @stderr, align 8, !dbg !113
  %13 = load ptr, ptr %5, align 8, !dbg !115
  %14 = load ptr, ptr %7, align 8, !dbg !116
  %15 = load i32, ptr %8, align 4, !dbg !117
  %16 = load ptr, ptr %6, align 8, !dbg !118
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str, ptr noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %16), !dbg !119
  call void @abort() #4, !dbg !120
  unreachable, !dbg !120

18:                                               ; preds = %4
  ret ptr null, !dbg !121
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @list_check(ptr noundef %0, ptr noundef %1) #0 !dbg !122 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !127, metadata !DIExpression()), !dbg !128
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !129, metadata !DIExpression()), !dbg !130
  %6 = load ptr, ptr %4, align 8, !dbg !131
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !133
  %8 = load ptr, ptr %5, align 8, !dbg !134
  %9 = call ptr @list_check_node(ptr noundef %7, ptr noundef %8), !dbg !135
  %10 = icmp ne ptr %9, null, !dbg !135
  br i1 %10, label %12, label %11, !dbg !136

11:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !137
  br label %14, !dbg !137

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !dbg !138
  store ptr %13, ptr %3, align 8, !dbg !139
  br label %14, !dbg !139

14:                                               ; preds = %12, %11
  %15 = load ptr, ptr %3, align 8, !dbg !140
  ret ptr %15, !dbg !140
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "common/list.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "0a5860268a1418537132a40f402b0afc")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 40)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !9, globals: !21, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/raj/lwan/common/list.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "0a5860268a1418537132a40f402b0afc")
!9 = !{!10, !16, !20}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_node", file: !12, line: 191, size: 128, elements: !13)
!12 = !DIFile(filename: "common/list.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "c0dffb77b1bbbbb179ef8d69b9e1dd8c")
!13 = !{!14, !15}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !11, file: !12, line: 193, baseType: !10, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !11, file: !12, line: 193, baseType: !10, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !12, line: 208, size: 128, elements: !18)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !17, file: !12, line: 210, baseType: !11, size: 128)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !{!0}
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 8, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 2}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 16.0.0"}
!30 = distinct !DISubprogram(name: "list_check_node", scope: !2, file: !2, line: 48, type: !31, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !37)
!31 = !DISubroutineType(types: !32)
!32 = !{!10, !33, !35}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!37 = !{}
!38 = !DILocalVariable(name: "node", arg: 1, scope: !30, file: !2, line: 48, type: !33)
!39 = !DILocation(line: 48, column: 59, scope: !30)
!40 = !DILocalVariable(name: "abortstr", arg: 2, scope: !30, file: !2, line: 49, type: !35)
!41 = !DILocation(line: 49, column: 19, scope: !30)
!42 = !DILocalVariable(name: "p", scope: !30, file: !2, line: 51, type: !33)
!43 = !DILocation(line: 51, column: 26, scope: !30)
!44 = !DILocalVariable(name: "n", scope: !30, file: !2, line: 51, type: !33)
!45 = !DILocation(line: 51, column: 30, scope: !30)
!46 = !DILocalVariable(name: "count", scope: !30, file: !2, line: 52, type: !47)
!47 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!48 = !DILocation(line: 52, column: 15, scope: !30)
!49 = !DILocation(line: 54, column: 11, scope: !50)
!50 = distinct !DILexicalBlock(scope: !30, file: !2, line: 54, column: 2)
!51 = !DILocation(line: 54, column: 9, scope: !50)
!52 = !DILocation(line: 54, column: 21, scope: !50)
!53 = !DILocation(line: 54, column: 27, scope: !50)
!54 = !DILocation(line: 54, column: 19, scope: !50)
!55 = !DILocation(line: 54, column: 7, scope: !50)
!56 = !DILocation(line: 54, column: 33, scope: !57)
!57 = distinct !DILexicalBlock(scope: !50, file: !2, line: 54, column: 2)
!58 = !DILocation(line: 54, column: 38, scope: !57)
!59 = !DILocation(line: 54, column: 35, scope: !57)
!60 = !DILocation(line: 54, column: 2, scope: !50)
!61 = !DILocation(line: 55, column: 8, scope: !62)
!62 = distinct !DILexicalBlock(scope: !57, file: !2, line: 54, column: 64)
!63 = !DILocation(line: 56, column: 7, scope: !64)
!64 = distinct !DILexicalBlock(scope: !62, file: !2, line: 56, column: 7)
!65 = !DILocation(line: 56, column: 10, scope: !64)
!66 = !DILocation(line: 56, column: 18, scope: !64)
!67 = !DILocation(line: 56, column: 15, scope: !64)
!68 = !DILocation(line: 56, column: 7, scope: !62)
!69 = !DILocation(line: 57, column: 19, scope: !64)
!70 = !DILocation(line: 57, column: 29, scope: !64)
!71 = !DILocation(line: 57, column: 35, scope: !64)
!72 = !DILocation(line: 57, column: 38, scope: !64)
!73 = !DILocation(line: 57, column: 11, scope: !64)
!74 = !DILocation(line: 57, column: 4, scope: !64)
!75 = !DILocation(line: 58, column: 2, scope: !62)
!76 = !DILocation(line: 54, column: 48, scope: !57)
!77 = !DILocation(line: 54, column: 46, scope: !57)
!78 = !DILocation(line: 54, column: 55, scope: !57)
!79 = !DILocation(line: 54, column: 58, scope: !57)
!80 = !DILocation(line: 54, column: 53, scope: !57)
!81 = !DILocation(line: 54, column: 2, scope: !57)
!82 = distinct !{!82, !60, !83, !84}
!83 = !DILocation(line: 58, column: 2, scope: !50)
!84 = !{!"llvm.loop.mustprogress"}
!85 = !DILocation(line: 60, column: 6, scope: !86)
!86 = distinct !DILexicalBlock(scope: !30, file: !2, line: 60, column: 6)
!87 = !DILocation(line: 60, column: 12, scope: !86)
!88 = !DILocation(line: 60, column: 20, scope: !86)
!89 = !DILocation(line: 60, column: 17, scope: !86)
!90 = !DILocation(line: 60, column: 6, scope: !30)
!91 = !DILocation(line: 61, column: 18, scope: !86)
!92 = !DILocation(line: 61, column: 28, scope: !86)
!93 = !DILocation(line: 61, column: 34, scope: !86)
!94 = !DILocation(line: 61, column: 10, scope: !86)
!95 = !DILocation(line: 61, column: 3, scope: !86)
!96 = !DILocation(line: 63, column: 29, scope: !30)
!97 = !DILocation(line: 63, column: 2, scope: !30)
!98 = !DILocation(line: 64, column: 1, scope: !30)
!99 = distinct !DISubprogram(name: "corrupt", scope: !2, file: !2, line: 34, type: !100, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !37)
!100 = !DISubroutineType(types: !101)
!101 = !{!20, !35, !33, !33, !47}
!102 = !DILocalVariable(name: "abortstr", arg: 1, scope: !99, file: !2, line: 34, type: !35)
!103 = !DILocation(line: 34, column: 34, scope: !99)
!104 = !DILocalVariable(name: "head", arg: 2, scope: !99, file: !2, line: 35, type: !33)
!105 = !DILocation(line: 35, column: 32, scope: !99)
!106 = !DILocalVariable(name: "node", arg: 3, scope: !99, file: !2, line: 36, type: !33)
!107 = !DILocation(line: 36, column: 32, scope: !99)
!108 = !DILocalVariable(name: "count", arg: 4, scope: !99, file: !2, line: 37, type: !47)
!109 = !DILocation(line: 37, column: 21, scope: !99)
!110 = !DILocation(line: 39, column: 6, scope: !111)
!111 = distinct !DILexicalBlock(scope: !99, file: !2, line: 39, column: 6)
!112 = !DILocation(line: 39, column: 6, scope: !99)
!113 = !DILocation(line: 40, column: 11, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !2, line: 39, column: 16)
!115 = !DILocation(line: 42, column: 4, scope: !114)
!116 = !DILocation(line: 42, column: 14, scope: !114)
!117 = !DILocation(line: 42, column: 20, scope: !114)
!118 = !DILocation(line: 42, column: 27, scope: !114)
!119 = !DILocation(line: 40, column: 3, scope: !114)
!120 = !DILocation(line: 43, column: 3, scope: !114)
!121 = !DILocation(line: 45, column: 2, scope: !99)
!122 = distinct !DISubprogram(name: "list_check", scope: !2, file: !2, line: 66, type: !123, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !37)
!123 = !DISubroutineType(types: !124)
!124 = !{!16, !125, !35}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!127 = !DILocalVariable(name: "h", arg: 1, scope: !122, file: !2, line: 66, type: !125)
!128 = !DILocation(line: 66, column: 54, scope: !122)
!129 = !DILocalVariable(name: "abortstr", arg: 2, scope: !122, file: !2, line: 66, type: !35)
!130 = !DILocation(line: 66, column: 69, scope: !122)
!131 = !DILocation(line: 68, column: 24, scope: !132)
!132 = distinct !DILexicalBlock(scope: !122, file: !2, line: 68, column: 6)
!133 = !DILocation(line: 68, column: 27, scope: !132)
!134 = !DILocation(line: 68, column: 30, scope: !132)
!135 = !DILocation(line: 68, column: 7, scope: !132)
!136 = !DILocation(line: 68, column: 6, scope: !122)
!137 = !DILocation(line: 69, column: 3, scope: !132)
!138 = !DILocation(line: 70, column: 29, scope: !122)
!139 = !DILocation(line: 70, column: 2, scope: !122)
!140 = !DILocation(line: 71, column: 1, scope: !122)
