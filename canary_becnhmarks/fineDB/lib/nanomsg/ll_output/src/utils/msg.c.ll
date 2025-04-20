; ModuleID = './src/utils/msg.c'
source_filename = "./src/utils/msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_msg_init(ptr noundef %0, i64 noundef %1) #0 !dbg !10 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !36, metadata !DIExpression()), !dbg !37
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !38, metadata !DIExpression()), !dbg !39
  %5 = load ptr, ptr %3, align 8, !dbg !40
  %6 = getelementptr inbounds %struct.nn_msg, ptr %5, i32 0, i32 0, !dbg !41
  call void @nn_chunkref_init(ptr noundef %6, i64 noundef 0), !dbg !42
  %7 = load ptr, ptr %3, align 8, !dbg !43
  %8 = getelementptr inbounds %struct.nn_msg, ptr %7, i32 0, i32 1, !dbg !44
  %9 = load i64, ptr %4, align 8, !dbg !45
  call void @nn_chunkref_init(ptr noundef %8, i64 noundef %9), !dbg !46
  ret void, !dbg !47
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_chunkref_init(ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_msg_init_chunk(ptr noundef %0, ptr noundef %1) #0 !dbg !48 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !52, metadata !DIExpression()), !dbg !53
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !54, metadata !DIExpression()), !dbg !55
  %5 = load ptr, ptr %3, align 8, !dbg !56
  %6 = getelementptr inbounds %struct.nn_msg, ptr %5, i32 0, i32 0, !dbg !57
  call void @nn_chunkref_init(ptr noundef %6, i64 noundef 0), !dbg !58
  %7 = load ptr, ptr %3, align 8, !dbg !59
  %8 = getelementptr inbounds %struct.nn_msg, ptr %7, i32 0, i32 1, !dbg !60
  %9 = load ptr, ptr %4, align 8, !dbg !61
  call void @nn_chunkref_init_chunk(ptr noundef %8, ptr noundef %9), !dbg !62
  ret void, !dbg !63
}

declare void @nn_chunkref_init_chunk(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_msg_term(ptr noundef %0) #0 !dbg !64 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !67, metadata !DIExpression()), !dbg !68
  %3 = load ptr, ptr %2, align 8, !dbg !69
  %4 = getelementptr inbounds %struct.nn_msg, ptr %3, i32 0, i32 0, !dbg !70
  call void @nn_chunkref_term(ptr noundef %4), !dbg !71
  %5 = load ptr, ptr %2, align 8, !dbg !72
  %6 = getelementptr inbounds %struct.nn_msg, ptr %5, i32 0, i32 1, !dbg !73
  call void @nn_chunkref_term(ptr noundef %6), !dbg !74
  ret void, !dbg !75
}

declare void @nn_chunkref_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_msg_mv(ptr noundef %0, ptr noundef %1) #0 !dbg !76 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !79, metadata !DIExpression()), !dbg !80
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !81, metadata !DIExpression()), !dbg !82
  %5 = load ptr, ptr %3, align 8, !dbg !83
  %6 = getelementptr inbounds %struct.nn_msg, ptr %5, i32 0, i32 0, !dbg !84
  %7 = load ptr, ptr %4, align 8, !dbg !85
  %8 = getelementptr inbounds %struct.nn_msg, ptr %7, i32 0, i32 0, !dbg !86
  call void @nn_chunkref_mv(ptr noundef %6, ptr noundef %8), !dbg !87
  %9 = load ptr, ptr %3, align 8, !dbg !88
  %10 = getelementptr inbounds %struct.nn_msg, ptr %9, i32 0, i32 1, !dbg !89
  %11 = load ptr, ptr %4, align 8, !dbg !90
  %12 = getelementptr inbounds %struct.nn_msg, ptr %11, i32 0, i32 1, !dbg !91
  call void @nn_chunkref_mv(ptr noundef %10, ptr noundef %12), !dbg !92
  ret void, !dbg !93
}

declare void @nn_chunkref_mv(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_msg_cp(ptr noundef %0, ptr noundef %1) #0 !dbg !94 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !95, metadata !DIExpression()), !dbg !96
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !97, metadata !DIExpression()), !dbg !98
  %5 = load ptr, ptr %3, align 8, !dbg !99
  %6 = getelementptr inbounds %struct.nn_msg, ptr %5, i32 0, i32 0, !dbg !100
  %7 = load ptr, ptr %4, align 8, !dbg !101
  %8 = getelementptr inbounds %struct.nn_msg, ptr %7, i32 0, i32 0, !dbg !102
  call void @nn_chunkref_cp(ptr noundef %6, ptr noundef %8), !dbg !103
  %9 = load ptr, ptr %3, align 8, !dbg !104
  %10 = getelementptr inbounds %struct.nn_msg, ptr %9, i32 0, i32 1, !dbg !105
  %11 = load ptr, ptr %4, align 8, !dbg !106
  %12 = getelementptr inbounds %struct.nn_msg, ptr %11, i32 0, i32 1, !dbg !107
  call void @nn_chunkref_cp(ptr noundef %10, ptr noundef %12), !dbg !108
  ret void, !dbg !109
}

declare void @nn_chunkref_cp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_msg_bulkcopy_start(ptr noundef %0, i32 noundef %1) #0 !dbg !110 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !116, metadata !DIExpression()), !dbg !117
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !118, metadata !DIExpression()), !dbg !119
  %5 = load ptr, ptr %3, align 8, !dbg !120
  %6 = getelementptr inbounds %struct.nn_msg, ptr %5, i32 0, i32 0, !dbg !121
  %7 = load i32, ptr %4, align 4, !dbg !122
  call void @nn_chunkref_bulkcopy_start(ptr noundef %6, i32 noundef %7), !dbg !123
  %8 = load ptr, ptr %3, align 8, !dbg !124
  %9 = getelementptr inbounds %struct.nn_msg, ptr %8, i32 0, i32 1, !dbg !125
  %10 = load i32, ptr %4, align 4, !dbg !126
  call void @nn_chunkref_bulkcopy_start(ptr noundef %9, i32 noundef %10), !dbg !127
  ret void, !dbg !128
}

declare void @nn_chunkref_bulkcopy_start(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_msg_bulkcopy_cp(ptr noundef %0, ptr noundef %1) #0 !dbg !129 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !130, metadata !DIExpression()), !dbg !131
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !132, metadata !DIExpression()), !dbg !133
  %5 = load ptr, ptr %3, align 8, !dbg !134
  %6 = getelementptr inbounds %struct.nn_msg, ptr %5, i32 0, i32 0, !dbg !135
  %7 = load ptr, ptr %4, align 8, !dbg !136
  %8 = getelementptr inbounds %struct.nn_msg, ptr %7, i32 0, i32 0, !dbg !137
  call void @nn_chunkref_bulkcopy_cp(ptr noundef %6, ptr noundef %8), !dbg !138
  %9 = load ptr, ptr %3, align 8, !dbg !139
  %10 = getelementptr inbounds %struct.nn_msg, ptr %9, i32 0, i32 1, !dbg !140
  %11 = load ptr, ptr %4, align 8, !dbg !141
  %12 = getelementptr inbounds %struct.nn_msg, ptr %11, i32 0, i32 1, !dbg !142
  call void @nn_chunkref_bulkcopy_cp(ptr noundef %10, ptr noundef %12), !dbg !143
  ret void, !dbg !144
}

declare void @nn_chunkref_bulkcopy_cp(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/utils/msg.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ddc08fb647739daf624e8ba0735c97b9")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.0"}
!10 = distinct !DISubprogram(name: "nn_msg_init", scope: !11, file: !11, line: 27, type: !12, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!11 = !DIFile(filename: "./src/utils/msg.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ddc08fb647739daf624e8ba0735c97b9")
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !32}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !16, line: 30, size: 512, elements: !17)
!16 = !DIFile(filename: "./src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!17 = !{!18, !31}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !15, file: !16, line: 33, baseType: !19, size: 256)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !20, line: 39, size: 256, elements: !21)
!20 = !DIFile(filename: "./src/utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !19, file: !20, line: 40, baseType: !23, size: 256)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 256, elements: !29)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !25, line: 24, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !27, line: 38, baseType: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !{!30}
!30 = !DISubrange(count: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !15, file: !16, line: 36, baseType: !19, size: 256, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !{}
!36 = !DILocalVariable(name: "self", arg: 1, scope: !10, file: !11, line: 27, type: !14)
!37 = !DILocation(line: 27, column: 34, scope: !10)
!38 = !DILocalVariable(name: "size", arg: 2, scope: !10, file: !11, line: 27, type: !32)
!39 = !DILocation(line: 27, column: 47, scope: !10)
!40 = !DILocation(line: 29, column: 24, scope: !10)
!41 = !DILocation(line: 29, column: 30, scope: !10)
!42 = !DILocation(line: 29, column: 5, scope: !10)
!43 = !DILocation(line: 30, column: 24, scope: !10)
!44 = !DILocation(line: 30, column: 30, scope: !10)
!45 = !DILocation(line: 30, column: 36, scope: !10)
!46 = !DILocation(line: 30, column: 5, scope: !10)
!47 = !DILocation(line: 31, column: 1, scope: !10)
!48 = distinct !DISubprogram(name: "nn_msg_init_chunk", scope: !11, file: !11, line: 33, type: !49, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !14, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!52 = !DILocalVariable(name: "self", arg: 1, scope: !48, file: !11, line: 33, type: !14)
!53 = !DILocation(line: 33, column: 40, scope: !48)
!54 = !DILocalVariable(name: "chunk", arg: 2, scope: !48, file: !11, line: 33, type: !51)
!55 = !DILocation(line: 33, column: 52, scope: !48)
!56 = !DILocation(line: 35, column: 24, scope: !48)
!57 = !DILocation(line: 35, column: 30, scope: !48)
!58 = !DILocation(line: 35, column: 5, scope: !48)
!59 = !DILocation(line: 36, column: 30, scope: !48)
!60 = !DILocation(line: 36, column: 36, scope: !48)
!61 = !DILocation(line: 36, column: 42, scope: !48)
!62 = !DILocation(line: 36, column: 5, scope: !48)
!63 = !DILocation(line: 37, column: 1, scope: !48)
!64 = distinct !DISubprogram(name: "nn_msg_term", scope: !11, file: !11, line: 39, type: !65, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !14}
!67 = !DILocalVariable(name: "self", arg: 1, scope: !64, file: !11, line: 39, type: !14)
!68 = !DILocation(line: 39, column: 34, scope: !64)
!69 = !DILocation(line: 41, column: 24, scope: !64)
!70 = !DILocation(line: 41, column: 30, scope: !64)
!71 = !DILocation(line: 41, column: 5, scope: !64)
!72 = !DILocation(line: 42, column: 24, scope: !64)
!73 = !DILocation(line: 42, column: 30, scope: !64)
!74 = !DILocation(line: 42, column: 5, scope: !64)
!75 = !DILocation(line: 43, column: 1, scope: !64)
!76 = distinct !DISubprogram(name: "nn_msg_mv", scope: !11, file: !11, line: 45, type: !77, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !14, !14}
!79 = !DILocalVariable(name: "dst", arg: 1, scope: !76, file: !11, line: 45, type: !14)
!80 = !DILocation(line: 45, column: 32, scope: !76)
!81 = !DILocalVariable(name: "src", arg: 2, scope: !76, file: !11, line: 45, type: !14)
!82 = !DILocation(line: 45, column: 52, scope: !76)
!83 = !DILocation(line: 47, column: 22, scope: !76)
!84 = !DILocation(line: 47, column: 27, scope: !76)
!85 = !DILocation(line: 47, column: 33, scope: !76)
!86 = !DILocation(line: 47, column: 38, scope: !76)
!87 = !DILocation(line: 47, column: 5, scope: !76)
!88 = !DILocation(line: 48, column: 22, scope: !76)
!89 = !DILocation(line: 48, column: 27, scope: !76)
!90 = !DILocation(line: 48, column: 34, scope: !76)
!91 = !DILocation(line: 48, column: 39, scope: !76)
!92 = !DILocation(line: 48, column: 5, scope: !76)
!93 = !DILocation(line: 49, column: 1, scope: !76)
!94 = distinct !DISubprogram(name: "nn_msg_cp", scope: !11, file: !11, line: 51, type: !77, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!95 = !DILocalVariable(name: "dst", arg: 1, scope: !94, file: !11, line: 51, type: !14)
!96 = !DILocation(line: 51, column: 32, scope: !94)
!97 = !DILocalVariable(name: "src", arg: 2, scope: !94, file: !11, line: 51, type: !14)
!98 = !DILocation(line: 51, column: 52, scope: !94)
!99 = !DILocation(line: 53, column: 22, scope: !94)
!100 = !DILocation(line: 53, column: 27, scope: !94)
!101 = !DILocation(line: 53, column: 33, scope: !94)
!102 = !DILocation(line: 53, column: 38, scope: !94)
!103 = !DILocation(line: 53, column: 5, scope: !94)
!104 = !DILocation(line: 54, column: 22, scope: !94)
!105 = !DILocation(line: 54, column: 27, scope: !94)
!106 = !DILocation(line: 54, column: 34, scope: !94)
!107 = !DILocation(line: 54, column: 39, scope: !94)
!108 = !DILocation(line: 54, column: 5, scope: !94)
!109 = !DILocation(line: 55, column: 1, scope: !94)
!110 = distinct !DISubprogram(name: "nn_msg_bulkcopy_start", scope: !11, file: !11, line: 57, type: !111, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !14, !113}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 26, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !27, line: 42, baseType: !115)
!115 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!116 = !DILocalVariable(name: "self", arg: 1, scope: !110, file: !11, line: 57, type: !14)
!117 = !DILocation(line: 57, column: 44, scope: !110)
!118 = !DILocalVariable(name: "copies", arg: 2, scope: !110, file: !11, line: 57, type: !113)
!119 = !DILocation(line: 57, column: 59, scope: !110)
!120 = !DILocation(line: 59, column: 34, scope: !110)
!121 = !DILocation(line: 59, column: 40, scope: !110)
!122 = !DILocation(line: 59, column: 45, scope: !110)
!123 = !DILocation(line: 59, column: 5, scope: !110)
!124 = !DILocation(line: 60, column: 34, scope: !110)
!125 = !DILocation(line: 60, column: 40, scope: !110)
!126 = !DILocation(line: 60, column: 46, scope: !110)
!127 = !DILocation(line: 60, column: 5, scope: !110)
!128 = !DILocation(line: 61, column: 1, scope: !110)
!129 = distinct !DISubprogram(name: "nn_msg_bulkcopy_cp", scope: !11, file: !11, line: 63, type: !77, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!130 = !DILocalVariable(name: "dst", arg: 1, scope: !129, file: !11, line: 63, type: !14)
!131 = !DILocation(line: 63, column: 41, scope: !129)
!132 = !DILocalVariable(name: "src", arg: 2, scope: !129, file: !11, line: 63, type: !14)
!133 = !DILocation(line: 63, column: 61, scope: !129)
!134 = !DILocation(line: 65, column: 31, scope: !129)
!135 = !DILocation(line: 65, column: 36, scope: !129)
!136 = !DILocation(line: 65, column: 42, scope: !129)
!137 = !DILocation(line: 65, column: 47, scope: !129)
!138 = !DILocation(line: 65, column: 5, scope: !129)
!139 = !DILocation(line: 66, column: 31, scope: !129)
!140 = !DILocation(line: 66, column: 36, scope: !129)
!141 = !DILocation(line: 66, column: 43, scope: !129)
!142 = !DILocation(line: 66, column: 48, scope: !129)
!143 = !DILocation(line: 66, column: 5, scope: !129)
!144 = !DILocation(line: 67, column: 1, scope: !129)
