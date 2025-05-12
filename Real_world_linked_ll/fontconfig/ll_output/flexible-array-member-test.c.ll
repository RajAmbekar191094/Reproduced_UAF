; ModuleID = './meson-cc-tests/flexible-array-member-test.c'
source_filename = "./meson-cc-tests/flexible-array-member-test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32, [0 x double] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !20, metadata !DIExpression()), !dbg !21
  %4 = call i32 @getchar(), !dbg !22
  store i32 %4, ptr %2, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata ptr %3, metadata !23, metadata !DIExpression()), !dbg !32
  %5 = load i32, ptr %2, align 4, !dbg !33
  %6 = sext i32 %5 to i64, !dbg !33
  %7 = mul i64 %6, 8, !dbg !34
  %8 = add i64 8, %7, !dbg !35
  %9 = call noalias ptr @malloc(i64 noundef %8) #4, !dbg !36
  store ptr %9, ptr %3, align 8, !dbg !32
  %10 = load ptr, ptr %3, align 8, !dbg !37
  %11 = getelementptr inbounds %struct.s, ptr %10, i32 0, i32 1, !dbg !38
  %12 = getelementptr inbounds [0 x double], ptr %11, i64 0, i64 0, !dbg !37
  store double 0.000000e+00, ptr %12, align 8, !dbg !39
  %13 = load ptr, ptr %3, align 8, !dbg !40
  %14 = getelementptr inbounds %struct.s, ptr %13, i32 0, i32 1, !dbg !41
  %15 = getelementptr inbounds [0 x double], ptr %14, i64 0, i64 0, !dbg !40
  %16 = icmp ne ptr %15, null, !dbg !42
  %17 = zext i1 %16 to i32, !dbg !42
  ret i32 %17, !dbg !43
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @getchar() #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "meson-cc-tests/flexible-array-member-test.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "e93c068e1bff526bf7f2ec7305bb9f97")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 16.0.0"}
!14 = distinct !DISubprogram(name: "main", scope: !15, file: !15, line: 7, type: !16, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!15 = !DIFile(filename: "./meson-cc-tests/flexible-array-member-test.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "e93c068e1bff526bf7f2ec7305bb9f97")
!16 = !DISubroutineType(types: !17)
!17 = !{!18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{}
!20 = !DILocalVariable(name: "m", scope: !14, file: !15, line: 9, type: !18)
!21 = !DILocation(line: 9, column: 7, scope: !14)
!22 = !DILocation(line: 9, column: 11, scope: !14)
!23 = !DILocalVariable(name: "p", scope: !14, file: !15, line: 10, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s", file: !15, line: 5, size: 64, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !25, file: !15, line: 5, baseType: !18, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !25, file: !15, line: 5, baseType: !29, offset: 64)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: -1)
!32 = !DILocation(line: 10, column: 13, scope: !14)
!33 = !DILocation(line: 11, column: 27, scope: !14)
!34 = !DILocation(line: 11, column: 29, scope: !14)
!35 = !DILocation(line: 11, column: 25, scope: !14)
!36 = !DILocation(line: 10, column: 17, scope: !14)
!37 = !DILocation(line: 12, column: 3, scope: !14)
!38 = !DILocation(line: 12, column: 6, scope: !14)
!39 = !DILocation(line: 12, column: 11, scope: !14)
!40 = !DILocation(line: 13, column: 10, scope: !14)
!41 = !DILocation(line: 13, column: 13, scope: !14)
!42 = !DILocation(line: 13, column: 15, scope: !14)
!43 = !DILocation(line: 13, column: 3, scope: !14)
