; ModuleID = './meson-cc-tests/stdatomic-primitives-test.c'
source_filename = "./meson-cc-tests/stdatomic-primitives-test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atomic_flag = type { i8 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memory_barrier() #0 !dbg !21 {
  fence acq_rel, !dbg !26
  ret void, !dbg !27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atomic_add(ptr noundef %0) #0 !dbg !28 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !35, metadata !DIExpression()), !dbg !36
  %5 = load ptr, ptr %2, align 8, !dbg !37
  store i32 1, ptr %3, align 4, !dbg !38
  %6 = load i32, ptr %3, align 4, !dbg !38
  %7 = atomicrmw add ptr %5, i32 %6 monotonic, align 4, !dbg !38
  store i32 %7, ptr %4, align 4, !dbg !38
  %8 = load i32, ptr %4, align 4, !dbg !38
  ret i32 %8, !dbg !39
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mutex_trylock(ptr noundef %0) #0 !dbg !40 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !51, metadata !DIExpression()), !dbg !52
  %5 = load ptr, ptr %2, align 8, !dbg !53
  %6 = getelementptr inbounds %struct.atomic_flag, ptr %5, i32 0, i32 0, !dbg !53
  store i8 1, ptr %3, align 1, !dbg !53
  %7 = load i8, ptr %3, align 1, !dbg !53
  %8 = atomicrmw xchg ptr %6, i8 %7 acquire, align 1, !dbg !53
  store i8 %8, ptr %4, align 1, !dbg !53
  %9 = load i8, ptr %4, align 1, !dbg !53
  %10 = trunc i8 %9 to i1, !dbg !53
  %11 = zext i1 %10 to i32, !dbg !53
  ret i32 %11, !dbg !54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mutex_unlock(ptr noundef %0) #0 !dbg !55 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !58, metadata !DIExpression()), !dbg !59
  %4 = load ptr, ptr %2, align 8, !dbg !60
  %5 = getelementptr inbounds %struct.atomic_flag, ptr %4, i32 0, i32 0, !dbg !60
  store i8 0, ptr %3, align 1, !dbg !60
  %6 = load i8, ptr %3, align 1, !dbg !60
  store atomic i8 %6, ptr %5 release, align 1, !dbg !60
  ret void, !dbg !61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !62 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  ret i32 0, !dbg !65
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "meson-cc-tests/stdatomic-primitives-test.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "a4a2ade5b7d4b6b178ff8556d4423214")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", file: !4, line: 60, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stdatomic.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "2aec2bf8bd6e0ecaa362310432b26ada")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "memory_order_relaxed", value: 0)
!8 = !DIEnumerator(name: "memory_order_consume", value: 1)
!9 = !DIEnumerator(name: "memory_order_acquire", value: 2)
!10 = !DIEnumerator(name: "memory_order_release", value: 3)
!11 = !DIEnumerator(name: "memory_order_acq_rel", value: 4)
!12 = !DIEnumerator(name: "memory_order_seq_cst", value: 5)
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 16.0.0"}
!21 = distinct !DISubprogram(name: "memory_barrier", scope: !22, file: !22, line: 3, type: !23, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!22 = !DIFile(filename: "./meson-cc-tests/stdatomic-primitives-test.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "a4a2ade5b7d4b6b178ff8556d4423214")
!23 = !DISubroutineType(types: !24)
!24 = !{null}
!25 = !{}
!26 = !DILocation(line: 3, column: 30, scope: !21)
!27 = !DILocation(line: 3, column: 74, scope: !21)
!28 = distinct !DISubprogram(name: "atomic_add", scope: !22, file: !22, line: 4, type: !29, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !32}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_int", file: !4, line: 96, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !31)
!35 = !DILocalVariable(name: "i", arg: 1, scope: !28, file: !22, line: 4, type: !32)
!36 = !DILocation(line: 4, column: 29, scope: !28)
!37 = !DILocation(line: 4, column: 68, scope: !28)
!38 = !DILocation(line: 4, column: 41, scope: !28)
!39 = !DILocation(line: 4, column: 34, scope: !28)
!40 = distinct !DISubprogram(name: "mutex_trylock", scope: !22, file: !22, line: 5, type: !41, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!41 = !DISubroutineType(types: !42)
!42 = !{!31, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_flag", file: !4, line: 162, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_flag", file: !4, line: 162, size: 8, elements: !46)
!46 = !{!47}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_Value", scope: !45, file: !4, line: 162, baseType: !48, size: 8)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_bool", file: !4, line: 89, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !50)
!50 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!51 = !DILocalVariable(name: "m", arg: 1, scope: !40, file: !22, line: 5, type: !43)
!52 = !DILocation(line: 5, column: 33, scope: !40)
!53 = !DILocation(line: 5, column: 45, scope: !40)
!54 = !DILocation(line: 5, column: 38, scope: !40)
!55 = distinct !DISubprogram(name: "mutex_unlock", scope: !22, file: !22, line: 6, type: !56, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !43}
!58 = !DILocalVariable(name: "m", arg: 1, scope: !55, file: !22, line: 6, type: !43)
!59 = !DILocation(line: 6, column: 33, scope: !55)
!60 = !DILocation(line: 6, column: 38, scope: !55)
!61 = !DILocation(line: 6, column: 92, scope: !55)
!62 = distinct !DISubprogram(name: "main", scope: !22, file: !22, line: 8, type: !63, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!63 = !DISubroutineType(types: !64)
!64 = !{!31}
!65 = !DILocation(line: 8, column: 18, scope: !62)
