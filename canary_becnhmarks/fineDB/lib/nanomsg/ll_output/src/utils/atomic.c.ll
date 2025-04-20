; ModuleID = './src/utils/atomic.c'
source_filename = "./src/utils/atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_atomic = type { %struct.nn_mutex, i32 }
%struct.nn_mutex = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_atomic_init(ptr noundef %0, i32 noundef %1) #0 !dbg !10 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !65, metadata !DIExpression()), !dbg !66
  %5 = load i32, ptr %4, align 4, !dbg !67
  %6 = load ptr, ptr %3, align 8, !dbg !68
  %7 = getelementptr inbounds %struct.nn_atomic, ptr %6, i32 0, i32 1, !dbg !69
  store volatile i32 %5, ptr %7, align 8, !dbg !70
  %8 = load ptr, ptr %3, align 8, !dbg !71
  %9 = getelementptr inbounds %struct.nn_atomic, ptr %8, i32 0, i32 0, !dbg !72
  call void @nn_mutex_init(ptr noundef %9), !dbg !73
  ret void, !dbg !74
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_mutex_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_atomic_term(ptr noundef %0) #0 !dbg !75 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !78, metadata !DIExpression()), !dbg !79
  %3 = load ptr, ptr %2, align 8, !dbg !80
  %4 = getelementptr inbounds %struct.nn_atomic, ptr %3, i32 0, i32 0, !dbg !81
  call void @nn_mutex_term(ptr noundef %4), !dbg !82
  ret void, !dbg !83
}

declare void @nn_mutex_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_atomic_inc(ptr noundef %0, i32 noundef %1) #0 !dbg !84 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !87, metadata !DIExpression()), !dbg !88
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata ptr %5, metadata !91, metadata !DIExpression()), !dbg !92
  %6 = load ptr, ptr %3, align 8, !dbg !93
  %7 = getelementptr inbounds %struct.nn_atomic, ptr %6, i32 0, i32 0, !dbg !94
  call void @nn_mutex_lock(ptr noundef %7), !dbg !95
  %8 = load ptr, ptr %3, align 8, !dbg !96
  %9 = getelementptr inbounds %struct.nn_atomic, ptr %8, i32 0, i32 1, !dbg !97
  %10 = load volatile i32, ptr %9, align 8, !dbg !97
  store i32 %10, ptr %5, align 4, !dbg !98
  %11 = load i32, ptr %4, align 4, !dbg !99
  %12 = load ptr, ptr %3, align 8, !dbg !100
  %13 = getelementptr inbounds %struct.nn_atomic, ptr %12, i32 0, i32 1, !dbg !101
  %14 = load volatile i32, ptr %13, align 8, !dbg !102
  %15 = add i32 %14, %11, !dbg !102
  store volatile i32 %15, ptr %13, align 8, !dbg !102
  %16 = load ptr, ptr %3, align 8, !dbg !103
  %17 = getelementptr inbounds %struct.nn_atomic, ptr %16, i32 0, i32 0, !dbg !104
  call void @nn_mutex_unlock(ptr noundef %17), !dbg !105
  %18 = load i32, ptr %5, align 4, !dbg !106
  ret i32 %18, !dbg !107
}

declare void @nn_mutex_lock(ptr noundef) #2

declare void @nn_mutex_unlock(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_atomic_dec(ptr noundef %0, i32 noundef %1) #0 !dbg !108 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !109, metadata !DIExpression()), !dbg !110
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata ptr %5, metadata !113, metadata !DIExpression()), !dbg !114
  %6 = load ptr, ptr %3, align 8, !dbg !115
  %7 = getelementptr inbounds %struct.nn_atomic, ptr %6, i32 0, i32 0, !dbg !116
  call void @nn_mutex_lock(ptr noundef %7), !dbg !117
  %8 = load ptr, ptr %3, align 8, !dbg !118
  %9 = getelementptr inbounds %struct.nn_atomic, ptr %8, i32 0, i32 1, !dbg !119
  %10 = load volatile i32, ptr %9, align 8, !dbg !119
  store i32 %10, ptr %5, align 4, !dbg !120
  %11 = load i32, ptr %4, align 4, !dbg !121
  %12 = load ptr, ptr %3, align 8, !dbg !122
  %13 = getelementptr inbounds %struct.nn_atomic, ptr %12, i32 0, i32 1, !dbg !123
  %14 = load volatile i32, ptr %13, align 8, !dbg !124
  %15 = sub i32 %14, %11, !dbg !124
  store volatile i32 %15, ptr %13, align 8, !dbg !124
  %16 = load ptr, ptr %3, align 8, !dbg !125
  %17 = getelementptr inbounds %struct.nn_atomic, ptr %16, i32 0, i32 0, !dbg !126
  call void @nn_mutex_unlock(ptr noundef %17), !dbg !127
  %18 = load i32, ptr %5, align 4, !dbg !128
  ret i32 %18, !dbg !129
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/utils/atomic.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "c4fc2f83e395fccdf96e72220148fa76")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.0"}
!10 = distinct !DISubprogram(name: "nn_atomic_init", scope: !11, file: !11, line: 26, type: !12, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !62)
!11 = !DIFile(filename: "./src/utils/atomic.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "c4fc2f83e395fccdf96e72220148fa76")
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !58}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_atomic", file: !16, line: 38, size: 384, elements: !17)
!16 = !DIFile(filename: "./src/utils/atomic.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "05feb58b704f2e12cda95c62b9cebb8d")
!17 = !{!18, !56}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !15, file: !16, line: 40, baseType: !19, size: 320)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !20, line: 32, size: 320, elements: !21)
!20 = !DIFile(filename: "./src/utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !19, file: !20, line: 36, baseType: !23, size: 320)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !24, line: 72, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !24, line: 67, size: 320, elements: !26)
!26 = !{!27, !49, !54}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !25, file: !24, line: 69, baseType: !28, size: 320)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !29, line: 22, size: 320, elements: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!30 = !{!31, !33, !35, !36, !37, !38, !40, !41}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !28, file: !29, line: 24, baseType: !32, size: 32)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !28, file: !29, line: 25, baseType: !34, size: 32, offset: 32)
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !28, file: !29, line: 26, baseType: !32, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !28, file: !29, line: 28, baseType: !34, size: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !28, file: !29, line: 32, baseType: !32, size: 32, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !28, file: !29, line: 34, baseType: !39, size: 16, offset: 160)
!39 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !28, file: !29, line: 35, baseType: !39, size: 16, offset: 176)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !28, file: !29, line: 36, baseType: !42, size: 128, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !43, line: 55, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !43, line: 51, size: 128, elements: !45)
!45 = !{!46, !48}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !44, file: !43, line: 53, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !44, file: !43, line: 54, baseType: !47, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !25, file: !24, line: 70, baseType: !50, size: 320)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 320, elements: !52)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!52 = !{!53}
!53 = !DISubrange(count: 40)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !25, file: !24, line: 71, baseType: !55, size: 64)
!55 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !15, file: !16, line: 42, baseType: !57, size: 32, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !59, line: 26, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !61, line: 42, baseType: !34)
!61 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!62 = !{}
!63 = !DILocalVariable(name: "self", arg: 1, scope: !10, file: !11, line: 26, type: !14)
!64 = !DILocation(line: 26, column: 40, scope: !10)
!65 = !DILocalVariable(name: "n", arg: 2, scope: !10, file: !11, line: 26, type: !58)
!66 = !DILocation(line: 26, column: 55, scope: !10)
!67 = !DILocation(line: 28, column: 15, scope: !10)
!68 = !DILocation(line: 28, column: 5, scope: !10)
!69 = !DILocation(line: 28, column: 11, scope: !10)
!70 = !DILocation(line: 28, column: 13, scope: !10)
!71 = !DILocation(line: 30, column: 21, scope: !10)
!72 = !DILocation(line: 30, column: 27, scope: !10)
!73 = !DILocation(line: 30, column: 5, scope: !10)
!74 = !DILocation(line: 32, column: 1, scope: !10)
!75 = distinct !DISubprogram(name: "nn_atomic_term", scope: !11, file: !11, line: 34, type: !76, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !62)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !14}
!78 = !DILocalVariable(name: "self", arg: 1, scope: !75, file: !11, line: 34, type: !14)
!79 = !DILocation(line: 34, column: 40, scope: !75)
!80 = !DILocation(line: 37, column: 21, scope: !75)
!81 = !DILocation(line: 37, column: 27, scope: !75)
!82 = !DILocation(line: 37, column: 5, scope: !75)
!83 = !DILocation(line: 39, column: 1, scope: !75)
!84 = distinct !DISubprogram(name: "nn_atomic_inc", scope: !11, file: !11, line: 41, type: !85, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !62)
!85 = !DISubroutineType(types: !86)
!86 = !{!58, !14, !58}
!87 = !DILocalVariable(name: "self", arg: 1, scope: !84, file: !11, line: 41, type: !14)
!88 = !DILocation(line: 41, column: 43, scope: !84)
!89 = !DILocalVariable(name: "n", arg: 2, scope: !84, file: !11, line: 41, type: !58)
!90 = !DILocation(line: 41, column: 58, scope: !84)
!91 = !DILocalVariable(name: "res", scope: !84, file: !11, line: 48, type: !58)
!92 = !DILocation(line: 48, column: 14, scope: !84)
!93 = !DILocation(line: 49, column: 21, scope: !84)
!94 = !DILocation(line: 49, column: 27, scope: !84)
!95 = !DILocation(line: 49, column: 5, scope: !84)
!96 = !DILocation(line: 50, column: 11, scope: !84)
!97 = !DILocation(line: 50, column: 17, scope: !84)
!98 = !DILocation(line: 50, column: 9, scope: !84)
!99 = !DILocation(line: 51, column: 16, scope: !84)
!100 = !DILocation(line: 51, column: 5, scope: !84)
!101 = !DILocation(line: 51, column: 11, scope: !84)
!102 = !DILocation(line: 51, column: 13, scope: !84)
!103 = !DILocation(line: 52, column: 23, scope: !84)
!104 = !DILocation(line: 52, column: 29, scope: !84)
!105 = !DILocation(line: 52, column: 5, scope: !84)
!106 = !DILocation(line: 53, column: 12, scope: !84)
!107 = !DILocation(line: 53, column: 5, scope: !84)
!108 = distinct !DISubprogram(name: "nn_atomic_dec", scope: !11, file: !11, line: 59, type: !85, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !62)
!109 = !DILocalVariable(name: "self", arg: 1, scope: !108, file: !11, line: 59, type: !14)
!110 = !DILocation(line: 59, column: 43, scope: !108)
!111 = !DILocalVariable(name: "n", arg: 2, scope: !108, file: !11, line: 59, type: !58)
!112 = !DILocation(line: 59, column: 58, scope: !108)
!113 = !DILocalVariable(name: "res", scope: !108, file: !11, line: 66, type: !58)
!114 = !DILocation(line: 66, column: 14, scope: !108)
!115 = !DILocation(line: 67, column: 21, scope: !108)
!116 = !DILocation(line: 67, column: 27, scope: !108)
!117 = !DILocation(line: 67, column: 5, scope: !108)
!118 = !DILocation(line: 68, column: 11, scope: !108)
!119 = !DILocation(line: 68, column: 17, scope: !108)
!120 = !DILocation(line: 68, column: 9, scope: !108)
!121 = !DILocation(line: 69, column: 16, scope: !108)
!122 = !DILocation(line: 69, column: 5, scope: !108)
!123 = !DILocation(line: 69, column: 11, scope: !108)
!124 = !DILocation(line: 69, column: 13, scope: !108)
!125 = !DILocation(line: 70, column: 23, scope: !108)
!126 = !DILocation(line: 70, column: 29, scope: !108)
!127 = !DILocation(line: 70, column: 5, scope: !108)
!128 = !DILocation(line: 71, column: 12, scope: !108)
!129 = !DILocation(line: 71, column: 5, scope: !108)
