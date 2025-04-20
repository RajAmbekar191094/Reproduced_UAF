; ModuleID = 'command_setdb.c'
source_filename = "command_setdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_thread_s = type { i64, ptr, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [16 x i8] c"command_setdb.c\00", align 1, !dbg !0
@__FUNCTION__.command_setdb = private unnamed_addr constant [14 x i8] c"command_setdb\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [14 x i8] c"SETDB command\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [17 x i8] c"SETDB command OK\00", align 1, !dbg !16
@.str.3 = private unnamed_addr constant [12 x i8] c"SETDB error\00", align 1, !dbg !21

; Function Attrs: nounwind uwtable
define dso_local i32 @command_setdb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !67 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !121, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata i32 %1, metadata !122, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata i32 %2, metadata !123, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata i32 %3, metadata !124, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata ptr %4, metadata !125, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata ptr null, metadata !130, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata i32 1, metadata !132, metadata !DIExpression()), !dbg !134
  %6 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 18, ptr noundef nonnull @__FUNCTION__.command_setdb, ptr noundef nonnull @.str.1) #7, !dbg !135
  %7 = tail call i32 @connection_read_data(ptr noundef %0, ptr noundef %4, i64 noundef 1) #7, !dbg !136
  %8 = icmp eq i32 %7, 1, !dbg !138
  br i1 %8, label %9, label %31, !dbg !139

9:                                                ; preds = %5
  %10 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef 1) #7, !dbg !140
  call void @llvm.dbg.value(metadata ptr %10, metadata !126, metadata !DIExpression()), !dbg !134
  %11 = load i8, ptr %10, align 1, !dbg !141, !tbaa !142
  call void @llvm.dbg.value(metadata i8 %11, metadata !129, metadata !DIExpression()), !dbg !134
  %12 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !145
  %13 = load ptr, ptr %12, align 8, !dbg !145, !tbaa !146
  %14 = icmp eq ptr %13, null, !dbg !145
  br i1 %14, label %16, label %15, !dbg !145

15:                                               ; preds = %9
  tail call void @free(ptr noundef nonnull %13) #7, !dbg !145
  br label %16, !dbg !145

16:                                               ; preds = %9, %15
  store ptr null, ptr %12, align 8, !dbg !145, !tbaa !146
  %17 = icmp eq i8 %11, 0, !dbg !151
  br i1 %17, label %28, label %18, !dbg !153

18:                                               ; preds = %16
  %19 = zext i8 %11 to i64, !dbg !154
  %20 = tail call i32 @connection_read_data(ptr noundef nonnull %0, ptr noundef %4, i64 noundef %19) #7, !dbg !157
  %21 = icmp eq i32 %20, 1, !dbg !158
  br i1 %21, label %22, label %31, !dbg !159

22:                                               ; preds = %18
  %23 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef %19) #7, !dbg !160
  call void @llvm.dbg.value(metadata ptr %23, metadata !131, metadata !DIExpression()), !dbg !134
  %24 = add nuw nsw i64 %19, 1, !dbg !161
  %25 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %24) #8, !dbg !161
  call void @llvm.dbg.value(metadata ptr %25, metadata !130, metadata !DIExpression()), !dbg !134
  %26 = icmp eq ptr %25, null, !dbg !163
  br i1 %26, label %31, label %27, !dbg !164

27:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %25, ptr align 1 %23, i64 %19, i1 false), !dbg !165
  store ptr %25, ptr %12, align 8, !dbg !166, !tbaa !146
  br label %28, !dbg !167

28:                                               ; preds = %27, %16
  %29 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 36, ptr noundef nonnull @__FUNCTION__.command_setdb, ptr noundef nonnull @.str.2) #7, !dbg !168
  %30 = tail call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #7, !dbg !169
  br label %34, !dbg !170

31:                                               ; preds = %22, %18, %5
  call void @llvm.dbg.label(metadata !133), !dbg !171
  %32 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 40, ptr noundef nonnull @__FUNCTION__.command_setdb, ptr noundef nonnull @.str.3) #7, !dbg !172
  %33 = tail call i32 @connection_send_response(ptr noundef %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #7, !dbg !173
  br label %34, !dbg !174

34:                                               ; preds = %31, %28
  %35 = phi i32 [ -5, %31 ], [ 1, %28 ], !dbg !134
  ret i32 %35, !dbg !175
}

declare !dbg !176 i32 @ylog_write(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !182 i32 @connection_read_data(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !185 ptr @ydynabin_forward(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !188 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !192 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !195 i32 @connection_send_response(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!26}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "command_setdb.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "79bf1a53ff4e683f73e5a870bf619e61")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 112, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 14)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !11)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 17)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 12)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !27, retainedTypes: !54, globals: !59, splitDebugInlining: false, nameTableKind: None)
!27 = !{!28, !34, !43}
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !29, line: 45, baseType: !30, size: 32, elements: !31)
!29 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "YFALSE", value: 0)
!33 = !DIEnumerator(name: "YTRUE", value: 1)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !35, line: 267, baseType: !30, size: 32, elements: !36)
!35 = !DIFile(filename: "../../lib/ylib/ylog.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!38 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!39 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!40 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!41 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!42 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol_response_e", file: !44, line: 108, baseType: !30, size: 32, elements: !45)
!44 = !DIFile(filename: "./protocol.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "90e12b9ba2bd5e3d7e691fccfd080d02")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53}
!46 = !DIEnumerator(name: "RESP_ERR_UNDEFINED", value: 0)
!47 = !DIEnumerator(name: "RESP_OK", value: 1)
!48 = !DIEnumerator(name: "RESP_ERR_PROTOCOL", value: 2)
!49 = !DIEnumerator(name: "RESP_ERR_SERVER", value: 3)
!50 = !DIEnumerator(name: "RESP_ERR_FULL_DB", value: 4)
!51 = !DIEnumerator(name: "RESP_ERR_TOO_MANY_DB", value: 5)
!52 = !DIEnumerator(name: "RESP_ERR_BAD_NAME", value: 6)
!53 = !DIEnumerator(name: "RESP_ERR_TRANSACTION", value: 7)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !57, line: 46, baseType: !58)
!57 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!58 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!59 = !{!0, !7, !13, !16, !21}
!60 = !{i32 7, !"Dwarf Version", i32 5}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = !{i32 8, !"PIC Level", i32 2}
!64 = !{i32 7, !"PIE Level", i32 2}
!65 = !{i32 7, !"uwtable", i32 2}
!66 = !{!"clang version 16.0.0"}
!67 = distinct !DISubprogram(name: "command_setdb", scope: !2, file: !2, line: 12, type: !68, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !120)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !73, !88, !88, !88, !111}
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !71, line: 23, baseType: !72)
!71 = !DIFile(filename: "../../lib/ylib/yerror.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !75, line: 30, baseType: !76)
!75 = !DIFile(filename: "./connection_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "285f9cd07088f6d468faef64cb1dc74b")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !75, line: 23, size: 320, elements: !77)
!77 = !{!78, !81, !103, !104, !105, !107}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !76, file: !75, line: 24, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !80, line: 27, baseType: !58)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!81 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !76, file: !75, line: 25, baseType: !82, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !84, line: 49, baseType: !85)
!84 = !DIFile(filename: "./finedb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "349d81e48e8fe143f3d7a471f97edb42")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !84, line: 41, size: 384, elements: !86)
!86 = !{!87, !89, !94, !95, !96, !97, !101}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !85, file: !84, line: 42, baseType: !88, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !29, line: 52, baseType: !28)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !85, file: !84, line: 43, baseType: !90, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_env", file: !92, line: 197, baseType: !93)
!92 = !DIFile(filename: "../../lib/lmdb/lmdb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9ff9d4834608bdc966449cf81c779c6a")
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_env", file: !92, line: 197, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !85, file: !84, line: 44, baseType: !72, size: 32, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !85, file: !84, line: 45, baseType: !72, size: 32, offset: 160)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !85, file: !84, line: 46, baseType: !79, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !85, file: !84, line: 47, baseType: !98, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "yvect_t", file: !99, line: 56, baseType: !100)
!99 = !DIFile(filename: "../../lib/ylib/yvect.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "73ac1eb655eaae5d93c48c36880d9ca2")
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !85, file: !84, line: 48, baseType: !102, size: 16, offset: 320)
!102 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !76, file: !75, line: 26, baseType: !72, size: 32, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !76, file: !75, line: 27, baseType: !72, size: 32, offset: 160)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !76, file: !75, line: 28, baseType: !106, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !76, file: !75, line: 29, baseType: !108, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_txn", file: !92, line: 204, baseType: !110)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_txn", file: !92, line: 204, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !113, line: 45, baseType: !114)
!113 = !DIFile(filename: "../../lib/ylib/ydynabin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e9b56a3dd8293288d1beb69b8bafd958")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !113, line: 37, size: 256, elements: !115)
!115 = !{!116, !117, !118, !119}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !114, file: !113, line: 38, baseType: !55, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !114, file: !113, line: 39, baseType: !56, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !114, file: !113, line: 40, baseType: !56, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !114, file: !113, line: 41, baseType: !56, size: 64, offset: 192)
!120 = !{!121, !122, !123, !124, !125, !126, !129, !130, !131, !132, !133}
!121 = !DILocalVariable(name: "thread", arg: 1, scope: !67, file: !2, line: 12, type: !73)
!122 = !DILocalVariable(name: "sync", arg: 2, scope: !67, file: !2, line: 12, type: !88)
!123 = !DILocalVariable(name: "compress", arg: 3, scope: !67, file: !2, line: 12, type: !88)
!124 = !DILocalVariable(name: "serialized", arg: 4, scope: !67, file: !2, line: 12, type: !88)
!125 = !DILocalVariable(name: "buff", arg: 5, scope: !67, file: !2, line: 12, type: !111)
!126 = !DILocalVariable(name: "pdbname_len", scope: !67, file: !2, line: 13, type: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!129 = !DILocalVariable(name: "dbname_len", scope: !67, file: !2, line: 13, type: !128)
!130 = !DILocalVariable(name: "dbname", scope: !67, file: !2, line: 14, type: !106)
!131 = !DILocalVariable(name: "ptr", scope: !67, file: !2, line: 15, type: !55)
!132 = !DILocalVariable(name: "result", scope: !67, file: !2, line: 16, type: !70)
!133 = !DILabel(scope: !67, name: "error", file: !2, line: 39)
!134 = !DILocation(line: 0, scope: !67)
!135 = !DILocation(line: 18, column: 2, scope: !67)
!136 = !DILocation(line: 20, column: 6, scope: !137)
!137 = distinct !DILexicalBlock(scope: !67, file: !2, line: 20, column: 6)
!138 = !DILocation(line: 20, column: 61, scope: !137)
!139 = !DILocation(line: 20, column: 6, scope: !67)
!140 = !DILocation(line: 22, column: 16, scope: !67)
!141 = !DILocation(line: 23, column: 15, scope: !67)
!142 = !{!143, !143, i64 0}
!143 = !{!"omnipotent char", !144, i64 0}
!144 = !{!"Simple C/C++ TBAA"}
!145 = !DILocation(line: 24, column: 2, scope: !67)
!146 = !{!147, !149, i64 24}
!147 = !{!"tcp_thread_s", !148, i64 0, !149, i64 8, !150, i64 16, !150, i64 20, !149, i64 24, !149, i64 32}
!148 = !{!"long", !143, i64 0}
!149 = !{!"any pointer", !143, i64 0}
!150 = !{!"int", !143, i64 0}
!151 = !DILocation(line: 25, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !67, file: !2, line: 25, column: 6)
!153 = !DILocation(line: 25, column: 6, scope: !67)
!154 = !DILocation(line: 27, column: 42, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !2, line: 27, column: 7)
!156 = distinct !DILexicalBlock(scope: !152, file: !2, line: 25, column: 22)
!157 = !DILocation(line: 27, column: 7, scope: !155)
!158 = !DILocation(line: 27, column: 62, scope: !155)
!159 = !DILocation(line: 27, column: 7, scope: !156)
!160 = !DILocation(line: 29, column: 9, scope: !156)
!161 = !DILocation(line: 30, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !156, file: !2, line: 30, column: 7)
!163 = !DILocation(line: 30, column: 50, scope: !162)
!164 = !DILocation(line: 30, column: 7, scope: !156)
!165 = !DILocation(line: 32, column: 3, scope: !156)
!166 = !DILocation(line: 33, column: 18, scope: !156)
!167 = !DILocation(line: 34, column: 2, scope: !156)
!168 = !DILocation(line: 36, column: 2, scope: !67)
!169 = !DILocation(line: 37, column: 2, scope: !67)
!170 = !DILocation(line: 38, column: 2, scope: !67)
!171 = !DILocation(line: 39, column: 1, scope: !67)
!172 = !DILocation(line: 40, column: 2, scope: !67)
!173 = !DILocation(line: 41, column: 2, scope: !67)
!174 = !DILocation(line: 42, column: 2, scope: !67)
!175 = !DILocation(line: 43, column: 1, scope: !67)
!176 = !DISubprogram(name: "ylog_write", scope: !35, file: !35, line: 385, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !181)
!177 = !DISubroutineType(types: !178)
!178 = !{!88, !179, !180, !72, !180, !180, null}
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_priority_t", file: !35, line: 278, baseType: !34)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!181 = !{}
!182 = !DISubprogram(name: "connection_read_data", scope: !75, file: !75, line: 94, type: !183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !181)
!183 = !DISubroutineType(types: !184)
!184 = !{!70, !73, !111, !56}
!185 = !DISubprogram(name: "ydynabin_forward", scope: !113, file: !113, line: 82, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !181)
!186 = !DISubroutineType(types: !187)
!187 = !{!55, !111, !56}
!188 = !DISubprogram(name: "free", scope: !189, file: !189, line: 555, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !181)
!189 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!190 = !DISubroutineType(types: !191)
!191 = !{null, !55}
!192 = !DISubprogram(name: "calloc", scope: !189, file: !189, line: 543, type: !193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !181)
!193 = !DISubroutineType(types: !194)
!194 = !{!55, !56, !56}
!195 = !DISubprogram(name: "connection_send_response", scope: !75, file: !75, line: 107, type: !196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !181)
!196 = !DISubroutineType(types: !197)
!197 = !{!70, !73, !198, !88, !88, !199, !56}
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_response_t", file: !44, line: 117, baseType: !43)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
