; ModuleID = './meson-cc-tests/intel-atomic-primitives-test.c'
source_filename = "./meson-cc-tests/intel-atomic-primitives-test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memory_barrier() #0 !dbg !10 {
  fence seq_cst, !dbg !15
  ret void, !dbg !16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atomic_add(ptr noundef %0) #0 !dbg !17 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !22, metadata !DIExpression()), !dbg !23
  %3 = load ptr, ptr %2, align 8, !dbg !24
  %4 = atomicrmw add ptr %3, i32 1 seq_cst, align 4, !dbg !25
  ret i32 %4, !dbg !26
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mutex_trylock(ptr noundef %0) #0 !dbg !27 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !28, metadata !DIExpression()), !dbg !29
  %3 = load ptr, ptr %2, align 8, !dbg !30
  %4 = atomicrmw xchg ptr %3, i32 1 seq_cst, align 4, !dbg !31
  ret i32 %4, !dbg !32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mutex_unlock(ptr noundef %0) #0 !dbg !33 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !36, metadata !DIExpression()), !dbg !37
  %3 = load ptr, ptr %2, align 8, !dbg !38
  store atomic i32 0, ptr %3 release, align 4, !dbg !39
  ret void, !dbg !40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !41 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  ret i32 0, !dbg !44
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "meson-cc-tests/intel-atomic-primitives-test.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "a7ccbec03e894a892a02ab0f4a836d60")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.0"}
!10 = distinct !DISubprogram(name: "memory_barrier", scope: !11, file: !11, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DIFile(filename: "./meson-cc-tests/intel-atomic-primitives-test.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "a7ccbec03e894a892a02ab0f4a836d60")
!12 = !DISubroutineType(types: !13)
!13 = !{null}
!14 = !{}
!15 = !DILocation(line: 1, column: 30, scope: !10)
!16 = !DILocation(line: 1, column: 53, scope: !10)
!17 = distinct !DISubprogram(name: "atomic_add", scope: !11, file: !11, line: 2, type: !18, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !21}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!22 = !DILocalVariable(name: "i", arg: 1, scope: !17, file: !11, line: 2, type: !21)
!23 = !DILocation(line: 2, column: 22, scope: !17)
!24 = !DILocation(line: 2, column: 56, scope: !17)
!25 = !DILocation(line: 2, column: 34, scope: !17)
!26 = !DILocation(line: 2, column: 27, scope: !17)
!27 = distinct !DISubprogram(name: "mutex_trylock", scope: !11, file: !11, line: 3, type: !18, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!28 = !DILocalVariable(name: "m", arg: 1, scope: !27, file: !11, line: 3, type: !21)
!29 = !DILocation(line: 3, column: 25, scope: !27)
!30 = !DILocation(line: 3, column: 63, scope: !27)
!31 = !DILocation(line: 3, column: 37, scope: !27)
!32 = !DILocation(line: 3, column: 30, scope: !27)
!33 = distinct !DISubprogram(name: "mutex_unlock", scope: !11, file: !11, line: 4, type: !34, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !21}
!36 = !DILocalVariable(name: "m", arg: 1, scope: !33, file: !11, line: 4, type: !21)
!37 = !DILocation(line: 4, column: 25, scope: !33)
!38 = !DILocation(line: 4, column: 51, scope: !33)
!39 = !DILocation(line: 4, column: 30, scope: !33)
!40 = !DILocation(line: 4, column: 55, scope: !33)
!41 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 6, type: !42, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!42 = !DISubroutineType(types: !43)
!43 = !{!20}
!44 = !DILocation(line: 6, column: 18, scope: !41)
