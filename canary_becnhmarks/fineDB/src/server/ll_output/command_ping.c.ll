; ModuleID = 'command_ping.c'
source_filename = "command_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"command_ping.c\00", align 1, !dbg !0
@__FUNCTION__.command_ping = private unnamed_addr constant [13 x i8] c"command_ping\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [13 x i8] c"PING command\00", align 1, !dbg !13

; Function Attrs: nounwind uwtable
define dso_local i32 @command_ping(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 !dbg !52 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !110, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i32 %1, metadata !111, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i32 %2, metadata !112, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i32 %3, metadata !113, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr %4, metadata !114, metadata !DIExpression()), !dbg !115
  %6 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 13, ptr noundef nonnull @__FUNCTION__.command_ping, ptr noundef nonnull @.str.1) #3, !dbg !116
  %7 = tail call i32 @connection_send_response(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #3, !dbg !117
  ret i32 %7, !dbg !118
}

declare !dbg !119 i32 @ylog_write(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !125 i32 @connection_send_response(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!16}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 13, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "command_ping.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "b38166355381d93ac2785964c898e39b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 15)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 13, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 104, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 13)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 13, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !11)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !17, globals: !44, splitDebugInlining: false, nameTableKind: None)
!17 = !{!18, !24, !33}
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !19, line: 45, baseType: !20, size: 32, elements: !21)
!19 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "YFALSE", value: 0)
!23 = !DIEnumerator(name: "YTRUE", value: 1)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !25, line: 267, baseType: !20, size: 32, elements: !26)
!25 = !DIFile(filename: "../../lib/ylib/ylog.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!26 = !{!27, !28, !29, !30, !31, !32}
!27 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!28 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!29 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!30 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!31 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!32 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol_response_e", file: !34, line: 108, baseType: !20, size: 32, elements: !35)
!34 = !DIFile(filename: "./protocol.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "90e12b9ba2bd5e3d7e691fccfd080d02")
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43}
!36 = !DIEnumerator(name: "RESP_ERR_UNDEFINED", value: 0)
!37 = !DIEnumerator(name: "RESP_OK", value: 1)
!38 = !DIEnumerator(name: "RESP_ERR_PROTOCOL", value: 2)
!39 = !DIEnumerator(name: "RESP_ERR_SERVER", value: 3)
!40 = !DIEnumerator(name: "RESP_ERR_FULL_DB", value: 4)
!41 = !DIEnumerator(name: "RESP_ERR_TOO_MANY_DB", value: 5)
!42 = !DIEnumerator(name: "RESP_ERR_BAD_NAME", value: 6)
!43 = !DIEnumerator(name: "RESP_ERR_TRANSACTION", value: 7)
!44 = !{!0, !7, !13}
!45 = !{i32 7, !"Dwarf Version", i32 5}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 4}
!48 = !{i32 8, !"PIC Level", i32 2}
!49 = !{i32 7, !"PIE Level", i32 2}
!50 = !{i32 7, !"uwtable", i32 2}
!51 = !{!"clang version 16.0.0"}
!52 = distinct !DISubprogram(name: "command_ping", scope: !2, file: !2, line: 12, type: !53, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !109)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !58, !74, !74, !74, !98}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !56, line: 23, baseType: !57)
!56 = !DIFile(filename: "../../lib/ylib/yerror.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !60, line: 30, baseType: !61)
!60 = !DIFile(filename: "./connection_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "285f9cd07088f6d468faef64cb1dc74b")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !60, line: 23, size: 320, elements: !62)
!62 = !{!63, !67, !90, !91, !92, !94}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !61, file: !60, line: 24, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !65, line: 27, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!66 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !61, file: !60, line: 25, baseType: !68, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !70, line: 49, baseType: !71)
!70 = !DIFile(filename: "./finedb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "349d81e48e8fe143f3d7a471f97edb42")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !70, line: 41, size: 384, elements: !72)
!72 = !{!73, !75, !80, !81, !82, !83, !88}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !71, file: !70, line: 42, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !19, line: 52, baseType: !18)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !71, file: !70, line: 43, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_env", file: !78, line: 197, baseType: !79)
!78 = !DIFile(filename: "../../lib/lmdb/lmdb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9ff9d4834608bdc966449cf81c779c6a")
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_env", file: !78, line: 197, flags: DIFlagFwdDecl)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !71, file: !70, line: 44, baseType: !57, size: 32, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !71, file: !70, line: 45, baseType: !57, size: 32, offset: 160)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !71, file: !70, line: 46, baseType: !64, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !71, file: !70, line: 47, baseType: !84, size: 64, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "yvect_t", file: !85, line: 56, baseType: !86)
!85 = !DIFile(filename: "../../lib/ylib/yvect.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "73ac1eb655eaae5d93c48c36880d9ca2")
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !71, file: !70, line: 48, baseType: !89, size: 16, offset: 320)
!89 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !61, file: !60, line: 26, baseType: !57, size: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !61, file: !60, line: 27, baseType: !57, size: 32, offset: 160)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !61, file: !60, line: 28, baseType: !93, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !61, file: !60, line: 29, baseType: !95, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_txn", file: !78, line: 204, baseType: !97)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_txn", file: !78, line: 204, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !100, line: 45, baseType: !101)
!100 = !DIFile(filename: "../../lib/ylib/ydynabin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e9b56a3dd8293288d1beb69b8bafd958")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !100, line: 37, size: 256, elements: !102)
!102 = !{!103, !104, !107, !108}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !101, file: !100, line: 38, baseType: !87, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !101, file: !100, line: 39, baseType: !105, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !106, line: 46, baseType: !66)
!106 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!107 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !101, file: !100, line: 40, baseType: !105, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !101, file: !100, line: 41, baseType: !105, size: 64, offset: 192)
!109 = !{!110, !111, !112, !113, !114}
!110 = !DILocalVariable(name: "thread", arg: 1, scope: !52, file: !2, line: 12, type: !58)
!111 = !DILocalVariable(name: "sync", arg: 2, scope: !52, file: !2, line: 12, type: !74)
!112 = !DILocalVariable(name: "compress", arg: 3, scope: !52, file: !2, line: 12, type: !74)
!113 = !DILocalVariable(name: "serialized", arg: 4, scope: !52, file: !2, line: 12, type: !74)
!114 = !DILocalVariable(name: "buff", arg: 5, scope: !52, file: !2, line: 12, type: !98)
!115 = !DILocation(line: 0, scope: !52)
!116 = !DILocation(line: 13, column: 2, scope: !52)
!117 = !DILocation(line: 14, column: 10, scope: !52)
!118 = !DILocation(line: 14, column: 2, scope: !52)
!119 = !DISubprogram(name: "ylog_write", scope: !25, file: !25, line: 385, type: !120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !124)
!120 = !DISubroutineType(types: !121)
!121 = !{!74, !122, !123, !57, !123, !123, null}
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_priority_t", file: !25, line: 278, baseType: !24)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!124 = !{}
!125 = !DISubprogram(name: "connection_send_response", scope: !60, file: !60, line: 107, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !124)
!126 = !DISubroutineType(types: !127)
!127 = !{!55, !58, !128, !74, !74, !129, !105}
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_response_t", file: !34, line: 117, baseType: !33)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
