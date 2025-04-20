; ModuleID = 'command_drop.c'
source_filename = "command_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_thread_s = type { i64, ptr, i32, i32, ptr, ptr }
%struct.writer_msg_s = type { i32, ptr, %struct.ybin_s, %struct.ybin_s, i32 }
%struct.ybin_s = type { ptr, i64 }
%struct.finedb_s = type { i32, ptr, i32, i32, i64, ptr, i16 }

@.str = private unnamed_addr constant [15 x i8] c"command_drop.c\00", align 1, !dbg !0
@__FUNCTION__.command_drop = private unnamed_addr constant [13 x i8] c"command_drop\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [12 x i8] c"PUT command\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [41 x i8] c"Unable to send message to writer thread.\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [18 x i8] c"Database dropped.\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [25 x i8] c"Unable to drop database.\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [16 x i8] c"DROP command %s\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [3 x i8] c"OK\00", align 1, !dbg !38
@.str.7 = private unnamed_addr constant [7 x i8] c"failed\00", align 1, !dbg !43
@.str.8 = private unnamed_addr constant [11 x i8] c"DROP error\00", align 1, !dbg !48

; Function Attrs: nounwind uwtable
define dso_local i32 @command_drop(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 !dbg !97 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !154, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata i32 %1, metadata !155, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata i32 %2, metadata !156, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata i32 %3, metadata !157, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata ptr %4, metadata !158, metadata !DIExpression()), !dbg !178
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8, !dbg !179
  call void @llvm.dbg.value(metadata ptr null, metadata !159, metadata !DIExpression()), !dbg !178
  store ptr null, ptr %6, align 8, !dbg !180, !tbaa !181
  %7 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 16, ptr noundef nonnull @__FUNCTION__.command_drop, ptr noundef nonnull @.str.1) #8, !dbg !185
  %8 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !186
  %9 = load ptr, ptr %8, align 8, !dbg !186, !tbaa !188
  %10 = icmp eq ptr %9, null, !dbg !192
  br i1 %10, label %52, label %11, !dbg !193

11:                                               ; preds = %5
  %12 = icmp eq i32 %1, 0, !dbg !194
  br i1 %12, label %13, label %15, !dbg !196

13:                                               ; preds = %11
  %14 = tail call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #8, !dbg !197
  br label %15, !dbg !197

15:                                               ; preds = %13, %11
  %16 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #9, !dbg !198
  call void @llvm.dbg.value(metadata ptr %16, metadata !159, metadata !DIExpression()), !dbg !178
  store ptr %16, ptr %6, align 8, !dbg !200, !tbaa !181
  %17 = icmp eq ptr %16, null, !dbg !201
  br i1 %17, label %52, label %18, !dbg !202

18:                                               ; preds = %15
  store i32 2, ptr %16, align 8, !dbg !203, !tbaa !204
  br i1 %12, label %19, label %33, !dbg !207

19:                                               ; preds = %18
  %20 = load ptr, ptr %8, align 8, !dbg !208, !tbaa !188
  %21 = icmp eq ptr %20, null, !dbg !211
  br i1 %21, label %24, label %22, !dbg !211

22:                                               ; preds = %19
  %23 = tail call noalias ptr @strdup(ptr noundef nonnull %20) #8, !dbg !212
  br label %24, !dbg !211

24:                                               ; preds = %19, %22
  %25 = phi ptr [ %23, %22 ], [ null, %19 ], !dbg !211
  call void @llvm.dbg.value(metadata ptr %16, metadata !159, metadata !DIExpression()), !dbg !178
  %26 = getelementptr inbounds %struct.writer_msg_s, ptr %16, i64 0, i32 1, !dbg !213
  store ptr %25, ptr %26, align 8, !dbg !214, !tbaa !215
  %27 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 3, !dbg !216
  %28 = load i32, ptr %27, align 4, !dbg !216, !tbaa !218
  call void @llvm.dbg.value(metadata ptr %6, metadata !159, metadata !DIExpression(DW_OP_deref)), !dbg !178
  %29 = call i32 @nn_send(i32 noundef %28, ptr noundef nonnull %6, i64 noundef 8, i32 noundef 0) #8, !dbg !219
  %30 = icmp slt i32 %29, 0, !dbg !220
  br i1 %30, label %31, label %59, !dbg !221

31:                                               ; preds = %24
  %32 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 32, ptr noundef nonnull @__FUNCTION__.command_drop, ptr noundef nonnull @.str.2) #8, !dbg !222
  br label %52, !dbg !224

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 1, !dbg !225
  %35 = load ptr, ptr %34, align 8, !dbg !225, !tbaa !227
  %36 = getelementptr inbounds %struct.finedb_s, ptr %35, i64 0, i32 1, !dbg !228
  %37 = load ptr, ptr %36, align 8, !dbg !228, !tbaa !229
  %38 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5, !dbg !232
  %39 = load ptr, ptr %38, align 8, !dbg !232, !tbaa !233
  %40 = load ptr, ptr %8, align 8, !dbg !234, !tbaa !188
  %41 = tail call i32 @database_drop(ptr noundef %37, ptr noundef %39, ptr noundef %40) #8, !dbg !235
  %42 = icmp eq i32 %41, 1, !dbg !236
  br i1 %42, label %43, label %45, !dbg !237

43:                                               ; preds = %33
  %44 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 39, ptr noundef nonnull @__FUNCTION__.command_drop, ptr noundef nonnull @.str.3) #8, !dbg !238
  call void @llvm.dbg.value(metadata i8 1, metadata !176, metadata !DIExpression()), !dbg !178
  br label %47, !dbg !240

45:                                               ; preds = %33
  %46 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 42, ptr noundef nonnull @__FUNCTION__.command_drop, ptr noundef nonnull @.str.4) #8, !dbg !241
  call void @llvm.dbg.value(metadata i8 0, metadata !176, metadata !DIExpression()), !dbg !178
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ 6, %45 ], [ 1, %43 ], !dbg !178
  %49 = phi ptr [ @.str.7, %45 ], [ @.str.6, %43 ], !dbg !178
  call void @llvm.dbg.value(metadata i8 poison, metadata !176, metadata !DIExpression()), !dbg !178
  %50 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @__FUNCTION__.command_drop, ptr noundef nonnull @.str.5, ptr noundef nonnull %49) #8, !dbg !243
  %51 = tail call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef %48, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #8, !dbg !244
  br label %59, !dbg !245

52:                                               ; preds = %15, %5, %31
  call void @llvm.dbg.label(metadata !177), !dbg !246
  %53 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 49, ptr noundef nonnull @__FUNCTION__.command_drop, ptr noundef nonnull @.str.8) #8, !dbg !247
  %54 = load ptr, ptr %6, align 8, !dbg !248, !tbaa !181
  call void @llvm.dbg.value(metadata ptr %54, metadata !159, metadata !DIExpression()), !dbg !178
  %55 = icmp eq ptr %54, null, !dbg !248
  br i1 %55, label %57, label %56, !dbg !248

56:                                               ; preds = %52
  call void @free(ptr noundef nonnull %54) #8, !dbg !248
  br label %57, !dbg !248

57:                                               ; preds = %52, %56
  call void @llvm.dbg.value(metadata ptr null, metadata !159, metadata !DIExpression()), !dbg !178
  store ptr null, ptr %6, align 8, !dbg !248, !tbaa !181
  %58 = call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #8, !dbg !249
  br label %59, !dbg !250

59:                                               ; preds = %24, %57, %47
  %60 = phi i32 [ -5, %57 ], [ %51, %47 ], [ 1, %24 ], !dbg !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8, !dbg !251
  ret i32 %60, !dbg !251
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !252 i32 @ylog_write(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !258 i32 @connection_send_response(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !264 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !268 noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !272 i32 @nn_send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !276 i32 @database_drop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !280 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!53}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 16, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "command_drop.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "05ba3cf55f911d82ca19e623753d952b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 15)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 16, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 104, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 13)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 16, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 12)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 41)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 18)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 25)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 16)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 3)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 7)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 11)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !87, globals: !89, splitDebugInlining: false, nameTableKind: None)
!54 = !{!55, !61, !67, !76}
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !56, line: 45, baseType: !57, size: 32, elements: !58)
!56 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!57 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "YFALSE", value: 0)
!60 = !DIEnumerator(name: "YTRUE", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writer_action_e", file: !62, line: 13, baseType: !57, size: 32, elements: !63)
!62 = !DIFile(filename: "./writer_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "3a724ae2321376421ad42c1087f049ab")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "WRITE_PUT", value: 0)
!65 = !DIEnumerator(name: "WRITE_DEL", value: 1)
!66 = !DIEnumerator(name: "WRITE_DROP", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !68, line: 267, baseType: !57, size: 32, elements: !69)
!68 = !DIFile(filename: "../../lib/ylib/ylog.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!69 = !{!70, !71, !72, !73, !74, !75}
!70 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!71 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!72 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!73 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!74 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!75 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol_response_e", file: !77, line: 108, baseType: !57, size: 32, elements: !78)
!77 = !DIFile(filename: "./protocol.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "90e12b9ba2bd5e3d7e691fccfd080d02")
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86}
!79 = !DIEnumerator(name: "RESP_ERR_UNDEFINED", value: 0)
!80 = !DIEnumerator(name: "RESP_OK", value: 1)
!81 = !DIEnumerator(name: "RESP_ERR_PROTOCOL", value: 2)
!82 = !DIEnumerator(name: "RESP_ERR_SERVER", value: 3)
!83 = !DIEnumerator(name: "RESP_ERR_FULL_DB", value: 4)
!84 = !DIEnumerator(name: "RESP_ERR_TOO_MANY_DB", value: 5)
!85 = !DIEnumerator(name: "RESP_ERR_BAD_NAME", value: 6)
!86 = !DIEnumerator(name: "RESP_ERR_TRANSACTION", value: 7)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !{!0, !7, !13, !18, !23, !28, !33, !38, !43, !48}
!90 = !{i32 7, !"Dwarf Version", i32 5}
!91 = !{i32 2, !"Debug Info Version", i32 3}
!92 = !{i32 1, !"wchar_size", i32 4}
!93 = !{i32 8, !"PIC Level", i32 2}
!94 = !{i32 7, !"PIE Level", i32 2}
!95 = !{i32 7, !"uwtable", i32 2}
!96 = !{!"clang version 16.0.0"}
!97 = distinct !DISubprogram(name: "command_drop", scope: !2, file: !2, line: 12, type: !98, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !153)
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !103, !119, !119, !119, !142}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !101, line: 23, baseType: !102)
!101 = !DIFile(filename: "../../lib/ylib/yerror.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !105, line: 30, baseType: !106)
!105 = !DIFile(filename: "./connection_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "285f9cd07088f6d468faef64cb1dc74b")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !105, line: 23, size: 320, elements: !107)
!107 = !{!108, !112, !134, !135, !136, !138}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !106, file: !105, line: 24, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !110, line: 27, baseType: !111)
!110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!111 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !106, file: !105, line: 25, baseType: !113, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !115, line: 49, baseType: !116)
!115 = !DIFile(filename: "./finedb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "349d81e48e8fe143f3d7a471f97edb42")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !115, line: 41, size: 384, elements: !117)
!117 = !{!118, !120, !125, !126, !127, !128, !132}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !116, file: !115, line: 42, baseType: !119, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !56, line: 52, baseType: !55)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !116, file: !115, line: 43, baseType: !121, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_env", file: !123, line: 197, baseType: !124)
!123 = !DIFile(filename: "../../lib/lmdb/lmdb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9ff9d4834608bdc966449cf81c779c6a")
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_env", file: !123, line: 197, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !116, file: !115, line: 44, baseType: !102, size: 32, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !116, file: !115, line: 45, baseType: !102, size: 32, offset: 160)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !116, file: !115, line: 46, baseType: !109, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !116, file: !115, line: 47, baseType: !129, size: 64, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "yvect_t", file: !130, line: 56, baseType: !131)
!130 = !DIFile(filename: "../../lib/ylib/yvect.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "73ac1eb655eaae5d93c48c36880d9ca2")
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !116, file: !115, line: 48, baseType: !133, size: 16, offset: 320)
!133 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !106, file: !105, line: 26, baseType: !102, size: 32, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !106, file: !105, line: 27, baseType: !102, size: 32, offset: 160)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !106, file: !105, line: 28, baseType: !137, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !106, file: !105, line: 29, baseType: !139, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_txn", file: !123, line: 204, baseType: !141)
!141 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_txn", file: !123, line: 204, flags: DIFlagFwdDecl)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !144, line: 45, baseType: !145)
!144 = !DIFile(filename: "../../lib/ylib/ydynabin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e9b56a3dd8293288d1beb69b8bafd958")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !144, line: 37, size: 256, elements: !146)
!146 = !{!147, !148, !151, !152}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !145, file: !144, line: 38, baseType: !88, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !145, file: !144, line: 39, baseType: !149, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !150, line: 46, baseType: !111)
!150 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!151 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !145, file: !144, line: 40, baseType: !149, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !145, file: !144, line: 41, baseType: !149, size: 64, offset: 192)
!153 = !{!154, !155, !156, !157, !158, !159, !176, !177}
!154 = !DILocalVariable(name: "thread", arg: 1, scope: !97, file: !2, line: 12, type: !103)
!155 = !DILocalVariable(name: "sync", arg: 2, scope: !97, file: !2, line: 12, type: !119)
!156 = !DILocalVariable(name: "compress", arg: 3, scope: !97, file: !2, line: 12, type: !119)
!157 = !DILocalVariable(name: "serialized", arg: 4, scope: !97, file: !2, line: 12, type: !119)
!158 = !DILocalVariable(name: "buff", arg: 5, scope: !97, file: !2, line: 12, type: !142)
!159 = !DILocalVariable(name: "msg", scope: !97, file: !2, line: 13, type: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "writer_msg_t", file: !62, line: 34, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writer_msg_s", file: !62, line: 28, size: 448, elements: !163)
!163 = !{!164, !166, !167, !174, !175}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !162, file: !62, line: 29, baseType: !165, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "writer_action_t", file: !62, line: 17, baseType: !61)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !162, file: !62, line: 30, baseType: !137, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !62, line: 31, baseType: !168, size: 128, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !169, line: 33, baseType: !170)
!169 = !DIFile(filename: "../../lib/ylib/ybin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "7abd7d5e6afd31e8416cab6f0a6bf3b3")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !169, line: 27, size: 128, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !170, file: !169, line: 28, baseType: !88, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !170, file: !169, line: 29, baseType: !149, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !162, file: !62, line: 32, baseType: !168, size: 128, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "create_only", scope: !162, file: !62, line: 33, baseType: !119, size: 32, offset: 384)
!176 = !DILocalVariable(name: "answer", scope: !97, file: !2, line: 14, type: !4)
!177 = !DILabel(scope: !97, name: "error", file: !2, line: 48)
!178 = !DILocation(line: 0, scope: !97)
!179 = !DILocation(line: 13, column: 2, scope: !97)
!180 = !DILocation(line: 13, column: 16, scope: !97)
!181 = !{!182, !182, i64 0}
!182 = !{!"any pointer", !183, i64 0}
!183 = !{!"omnipotent char", !184, i64 0}
!184 = !{!"Simple C/C++ TBAA"}
!185 = !DILocation(line: 16, column: 2, scope: !97)
!186 = !DILocation(line: 18, column: 14, scope: !187)
!187 = distinct !DILexicalBlock(scope: !97, file: !2, line: 18, column: 6)
!188 = !{!189, !182, i64 24}
!189 = !{!"tcp_thread_s", !190, i64 0, !182, i64 8, !191, i64 16, !191, i64 20, !182, i64 24, !182, i64 32}
!190 = !{!"long", !183, i64 0}
!191 = !{!"int", !183, i64 0}
!192 = !DILocation(line: 18, column: 21, scope: !187)
!193 = !DILocation(line: 18, column: 6, scope: !97)
!194 = !DILocation(line: 21, column: 7, scope: !195)
!195 = distinct !DILexicalBlock(scope: !97, file: !2, line: 21, column: 6)
!196 = !DILocation(line: 21, column: 6, scope: !97)
!197 = !DILocation(line: 22, column: 3, scope: !195)
!198 = !DILocation(line: 25, column: 13, scope: !199)
!199 = distinct !DILexicalBlock(scope: !97, file: !2, line: 25, column: 6)
!200 = !DILocation(line: 25, column: 11, scope: !199)
!201 = !DILocation(line: 25, column: 44, scope: !199)
!202 = !DILocation(line: 25, column: 6, scope: !97)
!203 = !DILocation(line: 27, column: 12, scope: !97)
!204 = !{!205, !183, i64 0}
!205 = !{!"writer_msg_s", !183, i64 0, !182, i64 8, !206, i64 16, !206, i64 32, !183, i64 48}
!206 = !{!"ybin_s", !182, i64 0, !190, i64 8}
!207 = !DILocation(line: 28, column: 6, scope: !97)
!208 = !DILocation(line: 30, column: 25, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !2, line: 28, column: 13)
!210 = distinct !DILexicalBlock(scope: !97, file: !2, line: 28, column: 6)
!211 = !DILocation(line: 30, column: 17, scope: !209)
!212 = !DILocation(line: 30, column: 34, scope: !209)
!213 = !DILocation(line: 30, column: 8, scope: !209)
!214 = !DILocation(line: 30, column: 15, scope: !209)
!215 = !{!205, !182, i64 8}
!216 = !DILocation(line: 31, column: 23, scope: !217)
!217 = distinct !DILexicalBlock(scope: !209, file: !2, line: 31, column: 7)
!218 = !{!189, !191, i64 20}
!219 = !DILocation(line: 31, column: 7, scope: !217)
!220 = !DILocation(line: 31, column: 57, scope: !217)
!221 = !DILocation(line: 31, column: 7, scope: !209)
!222 = !DILocation(line: 32, column: 4, scope: !223)
!223 = distinct !DILexicalBlock(scope: !217, file: !2, line: 31, column: 62)
!224 = !DILocation(line: 33, column: 4, scope: !223)
!225 = !DILocation(line: 38, column: 28, scope: !226)
!226 = distinct !DILexicalBlock(scope: !97, file: !2, line: 38, column: 6)
!227 = !{!189, !182, i64 8}
!228 = !DILocation(line: 38, column: 36, scope: !226)
!229 = !{!230, !182, i64 8}
!230 = !{!"finedb_s", !183, i64 0, !182, i64 8, !191, i64 16, !191, i64 20, !190, i64 24, !182, i64 32, !231, i64 40}
!231 = !{!"short", !183, i64 0}
!232 = !DILocation(line: 38, column: 54, scope: !226)
!233 = !{!189, !182, i64 32}
!234 = !DILocation(line: 38, column: 75, scope: !226)
!235 = !DILocation(line: 38, column: 6, scope: !226)
!236 = !DILocation(line: 38, column: 83, scope: !226)
!237 = !DILocation(line: 38, column: 6, scope: !97)
!238 = !DILocation(line: 39, column: 3, scope: !239)
!239 = distinct !DILexicalBlock(scope: !226, file: !2, line: 38, column: 95)
!240 = !DILocation(line: 41, column: 2, scope: !239)
!241 = !DILocation(line: 42, column: 3, scope: !242)
!242 = distinct !DILexicalBlock(scope: !226, file: !2, line: 41, column: 9)
!243 = !DILocation(line: 45, column: 2, scope: !97)
!244 = !DILocation(line: 46, column: 10, scope: !97)
!245 = !DILocation(line: 46, column: 2, scope: !97)
!246 = !DILocation(line: 48, column: 1, scope: !97)
!247 = !DILocation(line: 49, column: 2, scope: !97)
!248 = !DILocation(line: 50, column: 2, scope: !97)
!249 = !DILocation(line: 51, column: 2, scope: !97)
!250 = !DILocation(line: 52, column: 2, scope: !97)
!251 = !DILocation(line: 53, column: 1, scope: !97)
!252 = !DISubprogram(name: "ylog_write", scope: !68, file: !68, line: 385, type: !253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !257)
!253 = !DISubroutineType(types: !254)
!254 = !{!119, !255, !256, !102, !256, !256, null}
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_priority_t", file: !68, line: 278, baseType: !67)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!257 = !{}
!258 = !DISubprogram(name: "connection_send_response", scope: !105, file: !105, line: 107, type: !259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !257)
!259 = !DISubroutineType(types: !260)
!260 = !{!100, !103, !261, !119, !119, !262, !149}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_response_t", file: !77, line: 117, baseType: !76)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!264 = !DISubprogram(name: "calloc", scope: !265, file: !265, line: 543, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !257)
!265 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!266 = !DISubroutineType(types: !267)
!267 = !{!88, !149, !149}
!268 = !DISubprogram(name: "strdup", scope: !269, file: !269, line: 187, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !257)
!269 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!270 = !DISubroutineType(types: !271)
!271 = !{!137, !256}
!272 = !DISubprogram(name: "nn_send", scope: !273, file: !273, line: 248, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !257)
!273 = !DIFile(filename: "../../include/nanomsg/nn.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0c95956590725e5a1eedd7f7b192cc23")
!274 = !DISubroutineType(types: !275)
!275 = !{!102, !102, !262, !149, !102}
!276 = !DISubprogram(name: "database_drop", scope: !277, file: !277, line: 101, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !257)
!277 = !DIFile(filename: "./database.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e933d92e866140a8ca260943c439739b")
!278 = !DISubroutineType(types: !279)
!279 = !{!100, !121, !139, !256}
!280 = !DISubprogram(name: "free", scope: !265, file: !265, line: 555, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !257)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !88}
