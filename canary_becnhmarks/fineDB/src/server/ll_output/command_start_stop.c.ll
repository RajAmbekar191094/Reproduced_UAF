; ModuleID = 'command_start_stop.c'
source_filename = "command_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_thread_s = type { i64, ptr, i32, i32, ptr, ptr }
%struct.finedb_s = type { i32, ptr, i32, i32, i64, ptr, i16 }

@.str = private unnamed_addr constant [21 x i8] c"command_start_stop.c\00", align 1, !dbg !0
@__FUNCTION__.command_start = private unnamed_addr constant [14 x i8] c"command_start\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [14 x i8] c"START command\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [12 x i8] c"START error\00", align 1, !dbg !16
@__FUNCTION__.command_stop = private unnamed_addr constant [13 x i8] c"command_stop\00", align 1, !dbg !21
@.str.3 = private unnamed_addr constant [13 x i8] c"STOP command\00", align 1, !dbg !26
@.str.4 = private unnamed_addr constant [11 x i8] c"STOP error\00", align 1, !dbg !29

; Function Attrs: nounwind uwtable
define dso_local i32 @command_start(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 !dbg !72 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !129, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata i32 %1, metadata !130, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata i32 %2, metadata !131, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata i32 %3, metadata !132, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata ptr %4, metadata !133, metadata !DIExpression()), !dbg !135
  %6 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 8, ptr noundef nonnull @__FUNCTION__.command_start, ptr noundef nonnull @.str.1) #4, !dbg !136
  %7 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5, !dbg !137
  %8 = load ptr, ptr %7, align 8, !dbg !137, !tbaa !139
  %9 = icmp eq ptr %8, null, !dbg !146
  br i1 %9, label %11, label %10, !dbg !147

10:                                               ; preds = %5
  tail call void @database_transaction_rollback(ptr noundef nonnull %8) #4, !dbg !148
  br label %11, !dbg !148

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 1, !dbg !149
  %13 = load ptr, ptr %12, align 8, !dbg !149, !tbaa !150
  %14 = getelementptr inbounds %struct.finedb_s, ptr %13, i64 0, i32 1, !dbg !151
  %15 = load ptr, ptr %14, align 8, !dbg !151, !tbaa !152
  %16 = tail call ptr @database_transaction_start(ptr noundef %15, i32 noundef 1) #4, !dbg !155
  store ptr %16, ptr %7, align 8, !dbg !156, !tbaa !139
  %17 = icmp eq ptr %16, null, !dbg !157
  br i1 %17, label %18, label %20, !dbg !159

18:                                               ; preds = %11
  call void @llvm.dbg.label(metadata !134), !dbg !160
  %19 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 19, ptr noundef nonnull @__FUNCTION__.command_start, ptr noundef nonnull @.str.2) #4, !dbg !161
  br label %20, !dbg !162

20:                                               ; preds = %11, %18
  %21 = phi i32 [ 7, %18 ], [ 1, %11 ]
  %22 = phi i32 [ -13, %18 ], [ 1, %11 ], !dbg !135
  %23 = tail call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef %21, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #4, !dbg !135
  ret i32 %22, !dbg !163
}

declare !dbg !164 i32 @ylog_write(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !170 void @database_transaction_rollback(ptr noundef) local_unnamed_addr #1

declare !dbg !174 ptr @database_transaction_start(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !177 i32 @connection_send_response(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @command_stop(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 !dbg !183 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !185, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %1, metadata !186, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %2, metadata !187, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %3, metadata !188, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata ptr %4, metadata !189, metadata !DIExpression()), !dbg !191
  %6 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 26, ptr noundef nonnull @__FUNCTION__.command_stop, ptr noundef nonnull @.str.3) #4, !dbg !192
  %7 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5, !dbg !193
  %8 = load ptr, ptr %7, align 8, !dbg !193, !tbaa !139
  %9 = icmp eq ptr %8, null, !dbg !195
  br i1 %9, label %11, label %10, !dbg !196

10:                                               ; preds = %5
  tail call void @database_transaction_rollback(ptr noundef nonnull %8) #4, !dbg !197
  store ptr null, ptr %7, align 8, !dbg !198, !tbaa !139
  br label %13, !dbg !199

11:                                               ; preds = %5
  call void @llvm.dbg.label(metadata !190), !dbg !200
  %12 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 36, ptr noundef nonnull @__FUNCTION__.command_stop, ptr noundef nonnull @.str.4) #4, !dbg !201
  br label %13, !dbg !202

13:                                               ; preds = %11, %10
  %14 = phi i32 [ 7, %11 ], [ 1, %10 ]
  %15 = phi i32 [ -13, %11 ], [ 1, %10 ], !dbg !191
  %16 = tail call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef %14, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #4, !dbg !191
  ret i32 %15, !dbg !203
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 8, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "command_start_stop.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "6742c9ae510390180624d8006d030220")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 8, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 112, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 14)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 8, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !11)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 12)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 104, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 13)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !24)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 11)
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !62, globals: !64, splitDebugInlining: false, nameTableKind: None)
!35 = !{!36, !42, !51}
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !37, line: 45, baseType: !38, size: 32, elements: !39)
!37 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !{!40, !41}
!40 = !DIEnumerator(name: "YFALSE", value: 0)
!41 = !DIEnumerator(name: "YTRUE", value: 1)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !43, line: 267, baseType: !38, size: 32, elements: !44)
!43 = !DIFile(filename: "../../lib/ylib/ylog.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!44 = !{!45, !46, !47, !48, !49, !50}
!45 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!46 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!47 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!48 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!49 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!50 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol_response_e", file: !52, line: 108, baseType: !38, size: 32, elements: !53)
!52 = !DIFile(filename: "./protocol.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "90e12b9ba2bd5e3d7e691fccfd080d02")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61}
!54 = !DIEnumerator(name: "RESP_ERR_UNDEFINED", value: 0)
!55 = !DIEnumerator(name: "RESP_OK", value: 1)
!56 = !DIEnumerator(name: "RESP_ERR_PROTOCOL", value: 2)
!57 = !DIEnumerator(name: "RESP_ERR_SERVER", value: 3)
!58 = !DIEnumerator(name: "RESP_ERR_FULL_DB", value: 4)
!59 = !DIEnumerator(name: "RESP_ERR_TOO_MANY_DB", value: 5)
!60 = !DIEnumerator(name: "RESP_ERR_BAD_NAME", value: 6)
!61 = !DIEnumerator(name: "RESP_ERR_TRANSACTION", value: 7)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !{!0, !7, !13, !16, !21, !26, !29}
!65 = !{i32 7, !"Dwarf Version", i32 5}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 4}
!68 = !{i32 8, !"PIC Level", i32 2}
!69 = !{i32 7, !"PIE Level", i32 2}
!70 = !{i32 7, !"uwtable", i32 2}
!71 = !{!"clang version 16.0.0"}
!72 = distinct !DISubprogram(name: "command_start", scope: !2, file: !2, line: 7, type: !73, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !128)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !78, !94, !94, !94, !117}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !76, line: 23, baseType: !77)
!76 = !DIFile(filename: "../../lib/ylib/yerror.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!77 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !80, line: 30, baseType: !81)
!80 = !DIFile(filename: "./connection_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "285f9cd07088f6d468faef64cb1dc74b")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !80, line: 23, size: 320, elements: !82)
!82 = !{!83, !87, !109, !110, !111, !113}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !81, file: !80, line: 24, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !85, line: 27, baseType: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!86 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !81, file: !80, line: 25, baseType: !88, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !90, line: 49, baseType: !91)
!90 = !DIFile(filename: "./finedb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "349d81e48e8fe143f3d7a471f97edb42")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !90, line: 41, size: 384, elements: !92)
!92 = !{!93, !95, !100, !101, !102, !103, !107}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !91, file: !90, line: 42, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !37, line: 52, baseType: !36)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !91, file: !90, line: 43, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_env", file: !98, line: 197, baseType: !99)
!98 = !DIFile(filename: "../../lib/lmdb/lmdb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9ff9d4834608bdc966449cf81c779c6a")
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_env", file: !98, line: 197, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !91, file: !90, line: 44, baseType: !77, size: 32, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !91, file: !90, line: 45, baseType: !77, size: 32, offset: 160)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !91, file: !90, line: 46, baseType: !84, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !91, file: !90, line: 47, baseType: !104, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "yvect_t", file: !105, line: 56, baseType: !106)
!105 = !DIFile(filename: "../../lib/ylib/yvect.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "73ac1eb655eaae5d93c48c36880d9ca2")
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !91, file: !90, line: 48, baseType: !108, size: 16, offset: 320)
!108 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !81, file: !80, line: 26, baseType: !77, size: 32, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !81, file: !80, line: 27, baseType: !77, size: 32, offset: 160)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !81, file: !80, line: 28, baseType: !112, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !81, file: !80, line: 29, baseType: !114, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_txn", file: !98, line: 204, baseType: !116)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_txn", file: !98, line: 204, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !119, line: 45, baseType: !120)
!119 = !DIFile(filename: "../../lib/ylib/ydynabin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e9b56a3dd8293288d1beb69b8bafd958")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !119, line: 37, size: 256, elements: !121)
!121 = !{!122, !123, !126, !127}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !120, file: !119, line: 38, baseType: !63, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !120, file: !119, line: 39, baseType: !124, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 46, baseType: !86)
!125 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!126 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !120, file: !119, line: 40, baseType: !124, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !120, file: !119, line: 41, baseType: !124, size: 64, offset: 192)
!128 = !{!129, !130, !131, !132, !133, !134}
!129 = !DILocalVariable(name: "thread", arg: 1, scope: !72, file: !2, line: 7, type: !78)
!130 = !DILocalVariable(name: "sync", arg: 2, scope: !72, file: !2, line: 7, type: !94)
!131 = !DILocalVariable(name: "compress", arg: 3, scope: !72, file: !2, line: 7, type: !94)
!132 = !DILocalVariable(name: "serialized", arg: 4, scope: !72, file: !2, line: 7, type: !94)
!133 = !DILocalVariable(name: "buff", arg: 5, scope: !72, file: !2, line: 7, type: !117)
!134 = !DILabel(scope: !72, name: "error", file: !2, line: 18)
!135 = !DILocation(line: 0, scope: !72)
!136 = !DILocation(line: 8, column: 2, scope: !72)
!137 = !DILocation(line: 10, column: 14, scope: !138)
!138 = distinct !DILexicalBlock(scope: !72, file: !2, line: 10, column: 6)
!139 = !{!140, !144, i64 32}
!140 = !{!"tcp_thread_s", !141, i64 0, !144, i64 8, !145, i64 16, !145, i64 20, !144, i64 24, !144, i64 32}
!141 = !{!"long", !142, i64 0}
!142 = !{!"omnipotent char", !143, i64 0}
!143 = !{!"Simple C/C++ TBAA"}
!144 = !{!"any pointer", !142, i64 0}
!145 = !{!"int", !142, i64 0}
!146 = !DILocation(line: 10, column: 26, scope: !138)
!147 = !DILocation(line: 10, column: 6, scope: !72)
!148 = !DILocation(line: 11, column: 3, scope: !138)
!149 = !DILocation(line: 13, column: 59, scope: !72)
!150 = !{!140, !144, i64 8}
!151 = !DILocation(line: 13, column: 67, scope: !72)
!152 = !{!153, !144, i64 8}
!153 = !{!"finedb_s", !142, i64 0, !144, i64 8, !145, i64 16, !145, i64 20, !141, i64 24, !144, i64 32, !154, i64 40}
!154 = !{!"short", !142, i64 0}
!155 = !DILocation(line: 13, column: 24, scope: !72)
!156 = !DILocation(line: 13, column: 22, scope: !72)
!157 = !DILocation(line: 14, column: 26, scope: !158)
!158 = distinct !DILexicalBlock(scope: !72, file: !2, line: 14, column: 6)
!159 = !DILocation(line: 14, column: 6, scope: !72)
!160 = !DILocation(line: 18, column: 1, scope: !72)
!161 = !DILocation(line: 19, column: 2, scope: !72)
!162 = !DILocation(line: 21, column: 2, scope: !72)
!163 = !DILocation(line: 22, column: 1, scope: !72)
!164 = !DISubprogram(name: "ylog_write", scope: !43, file: !43, line: 385, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !169)
!165 = !DISubroutineType(types: !166)
!166 = !{!94, !167, !168, !77, !168, !168, null}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_priority_t", file: !43, line: 278, baseType: !42)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!169 = !{}
!170 = !DISubprogram(name: "database_transaction_rollback", scope: !171, file: !171, line: 48, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !169)
!171 = !DIFile(filename: "./database.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e933d92e866140a8ca260943c439739b")
!172 = !DISubroutineType(types: !173)
!173 = !{null, !114}
!174 = !DISubprogram(name: "database_transaction_start", scope: !171, file: !171, line: 35, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !169)
!175 = !DISubroutineType(types: !176)
!176 = !{!114, !96, !94}
!177 = !DISubprogram(name: "connection_send_response", scope: !80, file: !80, line: 107, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !169)
!178 = !DISubroutineType(types: !179)
!179 = !{!75, !78, !180, !94, !94, !181, !124}
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_response_t", file: !52, line: 117, baseType: !51)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!183 = distinct !DISubprogram(name: "command_stop", scope: !2, file: !2, line: 25, type: !73, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !184)
!184 = !{!185, !186, !187, !188, !189, !190}
!185 = !DILocalVariable(name: "thread", arg: 1, scope: !183, file: !2, line: 25, type: !78)
!186 = !DILocalVariable(name: "sync", arg: 2, scope: !183, file: !2, line: 25, type: !94)
!187 = !DILocalVariable(name: "compress", arg: 3, scope: !183, file: !2, line: 25, type: !94)
!188 = !DILocalVariable(name: "serialized", arg: 4, scope: !183, file: !2, line: 25, type: !94)
!189 = !DILocalVariable(name: "buff", arg: 5, scope: !183, file: !2, line: 25, type: !117)
!190 = !DILabel(scope: !183, name: "error", file: !2, line: 35)
!191 = !DILocation(line: 0, scope: !183)
!192 = !DILocation(line: 26, column: 2, scope: !183)
!193 = !DILocation(line: 28, column: 14, scope: !194)
!194 = distinct !DILexicalBlock(scope: !183, file: !2, line: 28, column: 6)
!195 = !DILocation(line: 28, column: 26, scope: !194)
!196 = !DILocation(line: 28, column: 6, scope: !183)
!197 = !DILocation(line: 31, column: 2, scope: !183)
!198 = !DILocation(line: 32, column: 22, scope: !183)
!199 = !DILocation(line: 34, column: 2, scope: !183)
!200 = !DILocation(line: 35, column: 1, scope: !183)
!201 = !DILocation(line: 36, column: 2, scope: !183)
!202 = !DILocation(line: 38, column: 2, scope: !183)
!203 = !DILocation(line: 39, column: 1, scope: !183)
