; ModuleID = 'command_list.c'
source_filename = "command_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_thread_s = type { i64, ptr, i32, i32, ptr, ptr }
%struct.finedb_s = type { i32, ptr, i32, i32, i64, ptr, i16 }
%struct.iovec = type { ptr, i64 }
%struct.msghdr = type { ptr, i32, ptr, i64, ptr, i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"command_list.c\00", align 1, !dbg !0
@__FUNCTION__.command_list = private unnamed_addr constant [13 x i8] c"command_list\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [13 x i8] c"LIST command\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [16 x i8] c"LIST command OK\00", align 1, !dbg !16
@.str.3 = private unnamed_addr constant [11 x i8] c"LIST error\00", align 1, !dbg !21
@__FUNCTION__._command_list_loop = private unnamed_addr constant [19 x i8] c"_command_list_loop\00", align 1, !dbg !26
@.str.4 = private unnamed_addr constant [20 x i8] c"list element: '%s'.\00", align 1, !dbg !31
@.str.5 = private unnamed_addr constant [25 x i8] c"Unable to send response.\00", align 1, !dbg !36
@.str.6 = private unnamed_addr constant [48 x i8] c"Unable to send the complete response (%d / %d).\00", align 1, !dbg !41

; Function Attrs: nounwind uwtable
define dso_local i32 @command_list(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 !dbg !131 {
  %6 = alloca i8, align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !148, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata i32 %1, metadata !149, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata i32 %2, metadata !150, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata i32 %3, metadata !151, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata ptr %4, metadata !152, metadata !DIExpression()), !dbg !156
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7, !dbg !157
  call void @llvm.dbg.value(metadata i8 0, metadata !153, metadata !DIExpression()), !dbg !156
  store i8 0, ptr %6, align 1, !dbg !158, !tbaa !159
  %7 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 20, ptr noundef nonnull @__FUNCTION__.command_list, ptr noundef nonnull @.str.1) #7, !dbg !162
  %8 = tail call i32 @connection_send_response(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #7, !dbg !163
  call void @llvm.dbg.value(metadata i32 %8, metadata !154, metadata !DIExpression()), !dbg !156
  %9 = icmp eq i32 %8, 1, !dbg !164
  br i1 %9, label %10, label %28, !dbg !166

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 1, !dbg !167
  %12 = load ptr, ptr %11, align 8, !dbg !167, !tbaa !169
  %13 = getelementptr inbounds %struct.finedb_s, ptr %12, i64 0, i32 1, !dbg !174
  %14 = load ptr, ptr %13, align 8, !dbg !174, !tbaa !175
  %15 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5, !dbg !178
  %16 = load ptr, ptr %15, align 8, !dbg !178, !tbaa !179
  %17 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !180
  %18 = load ptr, ptr %17, align 8, !dbg !180, !tbaa !181
  %19 = tail call i32 @database_list(ptr noundef %14, ptr noundef %16, ptr noundef %18, ptr noundef nonnull @_command_list_loop, ptr noundef %0) #7, !dbg !182
  %20 = icmp eq i32 %19, 1, !dbg !183
  br i1 %20, label %21, label %28, !dbg !184

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 2, !dbg !185
  %23 = load i32, ptr %22, align 8, !dbg !185, !tbaa !187
  call void @llvm.dbg.value(metadata ptr %6, metadata !153, metadata !DIExpression(DW_OP_deref)), !dbg !156
  %24 = call i64 @write(i32 noundef %23, ptr noundef nonnull %6, i64 noundef 1) #7, !dbg !188
  %25 = icmp eq i64 %24, 1, !dbg !189
  br i1 %25, label %26, label %28, !dbg !190

26:                                               ; preds = %21
  %27 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 31, ptr noundef nonnull @__FUNCTION__.command_list, ptr noundef nonnull @.str.2) #7, !dbg !191
  br label %31, !dbg !192

28:                                               ; preds = %21, %10, %5
  call void @llvm.dbg.label(metadata !155), !dbg !193
  %29 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 34, ptr noundef nonnull @__FUNCTION__.command_list, ptr noundef nonnull @.str.3) #7, !dbg !194
  %30 = tail call i32 @connection_send_response(ptr noundef %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #7, !dbg !195
  br label %31, !dbg !196

31:                                               ; preds = %28, %26
  %32 = phi i32 [ -5, %28 ], [ 1, %26 ], !dbg !156
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7, !dbg !197
  ret i32 %32, !dbg !197
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !198 i32 @ylog_write(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !204 i32 @connection_send_response(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !210 i32 @database_list(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @_command_list_loop(ptr nocapture noundef readonly %0, ptr %1, i64 %2, ptr nocapture readnone %3, i64 %4) #0 !dbg !224 {
  %6 = alloca i16, align 2
  %7 = alloca [2 x %struct.iovec], align 16
  %8 = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata ptr %1, metadata !227, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !259
  call void @llvm.dbg.value(metadata i64 %2, metadata !227, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !259
  call void @llvm.dbg.value(metadata ptr poison, metadata !228, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !259
  call void @llvm.dbg.value(metadata i64 poison, metadata !228, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !259
  call void @llvm.dbg.value(metadata ptr %0, metadata !226, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata ptr %0, metadata !229, metadata !DIExpression()), !dbg !259
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #7, !dbg !260
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #7, !dbg !261
  call void @llvm.dbg.declare(metadata ptr %7, metadata !231, metadata !DIExpression()), !dbg !262
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #7, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %8, metadata !240, metadata !DIExpression()), !dbg !264
  %9 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 47, ptr noundef nonnull @__FUNCTION__._command_list_loop, ptr noundef nonnull @.str.4, ptr noundef %1) #7, !dbg !265
  store ptr null, ptr %8, align 8, !dbg !266, !tbaa !267
  %10 = getelementptr inbounds %struct.msghdr, ptr %8, i64 0, i32 1, !dbg !269
  store i32 0, ptr %10, align 8, !dbg !270, !tbaa !271
  %11 = getelementptr inbounds %struct.msghdr, ptr %8, i64 0, i32 2, !dbg !272
  store ptr %7, ptr %11, align 8, !dbg !273, !tbaa !274
  %12 = getelementptr inbounds %struct.msghdr, ptr %8, i64 0, i32 3, !dbg !275
  store i64 2, ptr %12, align 8, !dbg !276, !tbaa !277
  %13 = getelementptr inbounds %struct.msghdr, ptr %8, i64 0, i32 4, !dbg !278
  %14 = trunc i64 %2 to i16, !dbg !279
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  call void @llvm.dbg.value(metadata i16 %15, metadata !230, metadata !DIExpression()), !dbg !259
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %13, i8 0, i64 20, i1 false), !dbg !280
  store i16 %15, ptr %6, align 2, !dbg !281, !tbaa !282
  store ptr %6, ptr %7, align 16, !dbg !283, !tbaa !284
  %16 = getelementptr inbounds %struct.iovec, ptr %7, i64 0, i32 1, !dbg !286
  store i64 2, ptr %16, align 8, !dbg !287, !tbaa !288
  %17 = getelementptr inbounds [2 x %struct.iovec], ptr %7, i64 0, i64 1, !dbg !289
  store ptr %1, ptr %17, align 16, !dbg !290, !tbaa !284
  %18 = getelementptr inbounds [2 x %struct.iovec], ptr %7, i64 0, i64 1, i32 1, !dbg !291
  store i64 %2, ptr %18, align 8, !dbg !292, !tbaa !288
  %19 = add i64 %2, 2, !dbg !293
  call void @llvm.dbg.value(metadata i64 %19, metadata !254, metadata !DIExpression()), !dbg !259
  %20 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 2, !dbg !294
  %21 = load i32, ptr %20, align 8, !dbg !294, !tbaa !187
  %22 = call i64 @sendmsg(i32 noundef %21, ptr noundef nonnull %8, i32 noundef 0) #7, !dbg !295
  call void @llvm.dbg.value(metadata i64 %22, metadata !258, metadata !DIExpression()), !dbg !259
  %23 = icmp slt i64 %22, 0, !dbg !296
  br i1 %23, label %24, label %26, !dbg !298

24:                                               ; preds = %5
  %25 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 63, ptr noundef nonnull @__FUNCTION__._command_list_loop, ptr noundef nonnull @.str.5) #7, !dbg !299
  br label %30, !dbg !301

26:                                               ; preds = %5
  %27 = icmp slt i64 %22, %19, !dbg !302
  br i1 %27, label %28, label %30, !dbg !304

28:                                               ; preds = %26
  %29 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 66, ptr noundef nonnull @__FUNCTION__._command_list_loop, ptr noundef nonnull @.str.6, i64 noundef %22, i64 noundef %19) #7, !dbg !305
  br label %30, !dbg !307

30:                                               ; preds = %26, %28, %24
  %31 = phi i32 [ -5, %24 ], [ -5, %28 ], [ 1, %26 ], !dbg !259
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #7, !dbg !308
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7, !dbg !308
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #7, !dbg !308
  ret i32 %31, !dbg !308
}

; Function Attrs: nofree
declare !dbg !309 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !313 i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!46}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "command_list.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e4cbd883bcb9d23ee06819d9e0fdc7f3")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 15)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 104, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 13)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !11)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 16)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 11)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 152, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 19)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 20)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 25)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 48)
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !74, globals: !123, splitDebugInlining: false, nameTableKind: None)
!47 = !{!48, !54, !63}
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !49, line: 45, baseType: !50, size: 32, elements: !51)
!49 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!50 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!51 = !{!52, !53}
!52 = !DIEnumerator(name: "YFALSE", value: 0)
!53 = !DIEnumerator(name: "YTRUE", value: 1)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !55, line: 267, baseType: !50, size: 32, elements: !56)
!55 = !DIFile(filename: "../../lib/ylib/ylog.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!56 = !{!57, !58, !59, !60, !61, !62}
!57 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!58 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!59 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!60 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!61 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!62 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol_response_e", file: !64, line: 108, baseType: !50, size: 32, elements: !65)
!64 = !DIFile(filename: "./protocol.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "90e12b9ba2bd5e3d7e691fccfd080d02")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73}
!66 = !DIEnumerator(name: "RESP_ERR_UNDEFINED", value: 0)
!67 = !DIEnumerator(name: "RESP_OK", value: 1)
!68 = !DIEnumerator(name: "RESP_ERR_PROTOCOL", value: 2)
!69 = !DIEnumerator(name: "RESP_ERR_SERVER", value: 3)
!70 = !DIEnumerator(name: "RESP_ERR_FULL_DB", value: 4)
!71 = !DIEnumerator(name: "RESP_ERR_TOO_MANY_DB", value: 5)
!72 = !DIEnumerator(name: "RESP_ERR_BAD_NAME", value: 6)
!73 = !DIEnumerator(name: "RESP_ERR_TRANSACTION", value: 7)
!74 = !{!75, !111, !105, !116, !120, !118}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !77, line: 30, baseType: !78)
!77 = !DIFile(filename: "./connection_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "285f9cd07088f6d468faef64cb1dc74b")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !77, line: 23, size: 320, elements: !79)
!79 = !{!80, !84, !108, !109, !110, !112}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !78, file: !77, line: 24, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !82, line: 27, baseType: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!83 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !78, file: !77, line: 25, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !87, line: 49, baseType: !88)
!87 = !DIFile(filename: "./finedb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "349d81e48e8fe143f3d7a471f97edb42")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !87, line: 41, size: 384, elements: !89)
!89 = !{!90, !92, !97, !99, !100, !101, !106}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !88, file: !87, line: 42, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !49, line: 52, baseType: !48)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !88, file: !87, line: 43, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_env", file: !95, line: 197, baseType: !96)
!95 = !DIFile(filename: "../../lib/lmdb/lmdb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9ff9d4834608bdc966449cf81c779c6a")
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_env", file: !95, line: 197, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !88, file: !87, line: 44, baseType: !98, size: 32, offset: 128)
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !88, file: !87, line: 45, baseType: !98, size: 32, offset: 160)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !88, file: !87, line: 46, baseType: !81, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !88, file: !87, line: 47, baseType: !102, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "yvect_t", file: !103, line: 56, baseType: !104)
!103 = !DIFile(filename: "../../lib/ylib/yvect.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "73ac1eb655eaae5d93c48c36880d9ca2")
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !88, file: !87, line: 48, baseType: !107, size: 16, offset: 320)
!107 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !78, file: !77, line: 26, baseType: !98, size: 32, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !78, file: !77, line: 27, baseType: !98, size: 32, offset: 160)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !78, file: !77, line: 28, baseType: !111, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !78, file: !77, line: 29, baseType: !113, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_txn", file: !95, line: 204, baseType: !115)
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_txn", file: !95, line: 204, flags: DIFlagFwdDecl)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !117, line: 25, baseType: !118)
!117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !119, line: 40, baseType: !107)
!119 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !121, line: 115, baseType: !122)
!121 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !119, line: 204, baseType: !111)
!123 = !{!0, !7, !13, !16, !21, !26, !31, !36, !41}
!124 = !{i32 7, !"Dwarf Version", i32 5}
!125 = !{i32 2, !"Debug Info Version", i32 3}
!126 = !{i32 1, !"wchar_size", i32 4}
!127 = !{i32 8, !"PIC Level", i32 2}
!128 = !{i32 7, !"PIE Level", i32 2}
!129 = !{i32 7, !"uwtable", i32 2}
!130 = !{!"clang version 16.0.0"}
!131 = distinct !DISubprogram(name: "command_list", scope: !2, file: !2, line: 16, type: !132, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !147)
!132 = !DISubroutineType(types: !133)
!133 = !{!134, !75, !91, !91, !91, !136}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !135, line: 23, baseType: !98)
!135 = !DIFile(filename: "../../lib/ylib/yerror.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !138, line: 45, baseType: !139)
!138 = !DIFile(filename: "../../lib/ylib/ydynabin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e9b56a3dd8293288d1beb69b8bafd958")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !138, line: 37, size: 256, elements: !140)
!140 = !{!141, !142, !145, !146}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !139, file: !138, line: 38, baseType: !105, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !139, file: !138, line: 39, baseType: !143, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 46, baseType: !83)
!144 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!145 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !139, file: !138, line: 40, baseType: !143, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !139, file: !138, line: 41, baseType: !143, size: 64, offset: 192)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155}
!148 = !DILocalVariable(name: "thread", arg: 1, scope: !131, file: !2, line: 16, type: !75)
!149 = !DILocalVariable(name: "sync", arg: 2, scope: !131, file: !2, line: 16, type: !91)
!150 = !DILocalVariable(name: "compress", arg: 3, scope: !131, file: !2, line: 16, type: !91)
!151 = !DILocalVariable(name: "serialized", arg: 4, scope: !131, file: !2, line: 16, type: !91)
!152 = !DILocalVariable(name: "buff", arg: 5, scope: !131, file: !2, line: 16, type: !136)
!153 = !DILocalVariable(name: "last_byte", scope: !131, file: !2, line: 17, type: !4)
!154 = !DILocalVariable(name: "result", scope: !131, file: !2, line: 18, type: !134)
!155 = !DILabel(scope: !131, name: "error", file: !2, line: 33)
!156 = !DILocation(line: 0, scope: !131)
!157 = !DILocation(line: 17, column: 2, scope: !131)
!158 = !DILocation(line: 17, column: 7, scope: !131)
!159 = !{!160, !160, i64 0}
!160 = !{!"omnipotent char", !161, i64 0}
!161 = !{!"Simple C/C++ TBAA"}
!162 = !DILocation(line: 20, column: 2, scope: !131)
!163 = !DILocation(line: 22, column: 11, scope: !131)
!164 = !DILocation(line: 23, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !131, file: !2, line: 23, column: 6)
!166 = !DILocation(line: 23, column: 6, scope: !131)
!167 = !DILocation(line: 26, column: 28, scope: !168)
!168 = distinct !DILexicalBlock(scope: !131, file: !2, line: 26, column: 6)
!169 = !{!170, !172, i64 8}
!170 = !{!"tcp_thread_s", !171, i64 0, !172, i64 8, !173, i64 16, !173, i64 20, !172, i64 24, !172, i64 32}
!171 = !{!"long", !160, i64 0}
!172 = !{!"any pointer", !160, i64 0}
!173 = !{!"int", !160, i64 0}
!174 = !DILocation(line: 26, column: 36, scope: !168)
!175 = !{!176, !172, i64 8}
!176 = !{!"finedb_s", !160, i64 0, !172, i64 8, !173, i64 16, !173, i64 20, !171, i64 24, !172, i64 32, !177, i64 40}
!177 = !{!"short", !160, i64 0}
!178 = !DILocation(line: 26, column: 54, scope: !168)
!179 = !{!170, !172, i64 32}
!180 = !DILocation(line: 26, column: 75, scope: !168)
!181 = !{!170, !172, i64 24}
!182 = !DILocation(line: 26, column: 6, scope: !168)
!183 = !DILocation(line: 26, column: 111, scope: !168)
!184 = !DILocation(line: 26, column: 6, scope: !131)
!185 = !DILocation(line: 29, column: 20, scope: !186)
!186 = distinct !DILexicalBlock(scope: !131, file: !2, line: 29, column: 6)
!187 = !{!170, !173, i64 16}
!188 = !DILocation(line: 29, column: 6, scope: !186)
!189 = !DILocation(line: 29, column: 39, scope: !186)
!190 = !DILocation(line: 29, column: 6, scope: !131)
!191 = !DILocation(line: 31, column: 2, scope: !131)
!192 = !DILocation(line: 32, column: 2, scope: !131)
!193 = !DILocation(line: 33, column: 1, scope: !131)
!194 = !DILocation(line: 34, column: 2, scope: !131)
!195 = !DILocation(line: 35, column: 2, scope: !131)
!196 = !DILocation(line: 36, column: 2, scope: !131)
!197 = !DILocation(line: 37, column: 1, scope: !131)
!198 = !DISubprogram(name: "ylog_write", scope: !55, file: !55, line: 385, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !203)
!199 = !DISubroutineType(types: !200)
!200 = !{!91, !201, !202, !98, !202, !202, null}
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_priority_t", file: !55, line: 278, baseType: !54)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!203 = !{}
!204 = !DISubprogram(name: "connection_send_response", scope: !77, file: !77, line: 107, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !203)
!205 = !DISubroutineType(types: !206)
!206 = !{!134, !75, !207, !91, !91, !208, !143}
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_response_t", file: !64, line: 117, baseType: !63)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!210 = !DISubprogram(name: "database_list", scope: !211, file: !211, line: 92, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !203)
!211 = !DIFile(filename: "./database.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e933d92e866140a8ca260943c439739b")
!212 = !DISubroutineType(types: !213)
!213 = !{!134, !93, !113, !202, !214, !105}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "database_callback", file: !211, line: 11, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!134, !105, !218, !218}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !219, line: 33, baseType: !220)
!219 = !DIFile(filename: "../../lib/ylib/ybin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "7abd7d5e6afd31e8416cab6f0a6bf3b3")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !219, line: 27, size: 128, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !220, file: !219, line: 28, baseType: !105, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !220, file: !219, line: 29, baseType: !143, size: 64, offset: 64)
!224 = distinct !DISubprogram(name: "_command_list_loop", scope: !2, file: !2, line: 40, type: !216, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !240, !254, !258}
!226 = !DILocalVariable(name: "ptr", arg: 1, scope: !224, file: !2, line: 40, type: !105)
!227 = !DILocalVariable(name: "key", arg: 2, scope: !224, file: !2, line: 40, type: !218)
!228 = !DILocalVariable(name: "data", arg: 3, scope: !224, file: !2, line: 40, type: !218)
!229 = !DILocalVariable(name: "thread", scope: !224, file: !2, line: 41, type: !75)
!230 = !DILocalVariable(name: "length16", scope: !224, file: !2, line: 42, type: !116)
!231 = !DILocalVariable(name: "iov", scope: !224, file: !2, line: 43, type: !232)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 256, elements: !238)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !234, line: 26, size: 128, elements: !235)
!234 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!235 = !{!236, !237}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !233, file: !234, line: 28, baseType: !105, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !233, file: !234, line: 29, baseType: !143, size: 64, offset: 64)
!238 = !{!239}
!239 = !DISubrange(count: 2)
!240 = !DILocalVariable(name: "mh", scope: !224, file: !2, line: 44, type: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !242, line: 259, size: 448, elements: !243)
!242 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!243 = !{!244, !245, !248, !250, !251, !252, !253}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !241, file: !242, line: 261, baseType: !105, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !241, file: !242, line: 262, baseType: !246, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !242, line: 33, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !119, line: 210, baseType: !50)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !241, file: !242, line: 264, baseType: !249, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !241, file: !242, line: 265, baseType: !143, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !241, file: !242, line: 267, baseType: !105, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !241, file: !242, line: 268, baseType: !143, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !241, file: !242, line: 273, baseType: !98, size: 32, offset: 384)
!254 = !DILocalVariable(name: "expected", scope: !224, file: !2, line: 45, type: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !121, line: 108, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !119, line: 194, baseType: !257)
!257 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!258 = !DILocalVariable(name: "rc", scope: !224, file: !2, line: 45, type: !255)
!259 = !DILocation(line: 0, scope: !224)
!260 = !DILocation(line: 42, column: 2, scope: !224)
!261 = !DILocation(line: 43, column: 2, scope: !224)
!262 = !DILocation(line: 43, column: 15, scope: !224)
!263 = !DILocation(line: 44, column: 2, scope: !224)
!264 = !DILocation(line: 44, column: 16, scope: !224)
!265 = !DILocation(line: 47, column: 2, scope: !224)
!266 = !DILocation(line: 48, column: 14, scope: !224)
!267 = !{!268, !172, i64 0}
!268 = !{!"msghdr", !172, i64 0, !173, i64 8, !172, i64 16, !171, i64 24, !172, i64 32, !171, i64 40, !173, i64 48}
!269 = !DILocation(line: 49, column: 5, scope: !224)
!270 = !DILocation(line: 49, column: 17, scope: !224)
!271 = !{!268, !173, i64 8}
!272 = !DILocation(line: 50, column: 5, scope: !224)
!273 = !DILocation(line: 50, column: 13, scope: !224)
!274 = !{!268, !172, i64 16}
!275 = !DILocation(line: 51, column: 5, scope: !224)
!276 = !DILocation(line: 51, column: 16, scope: !224)
!277 = !{!268, !171, i64 24}
!278 = !DILocation(line: 52, column: 5, scope: !224)
!279 = !DILocation(line: 55, column: 13, scope: !224)
!280 = !DILocation(line: 53, column: 20, scope: !224)
!281 = !DILocation(line: 55, column: 11, scope: !224)
!282 = !{!177, !177, i64 0}
!283 = !DILocation(line: 56, column: 18, scope: !224)
!284 = !{!285, !172, i64 0}
!285 = !{!"iovec", !172, i64 0, !171, i64 8}
!286 = !DILocation(line: 57, column: 9, scope: !224)
!287 = !DILocation(line: 57, column: 17, scope: !224)
!288 = !{!285, !171, i64 8}
!289 = !DILocation(line: 58, column: 2, scope: !224)
!290 = !DILocation(line: 58, column: 18, scope: !224)
!291 = !DILocation(line: 59, column: 9, scope: !224)
!292 = !DILocation(line: 59, column: 17, scope: !224)
!293 = !DILocation(line: 60, column: 28, scope: !224)
!294 = !DILocation(line: 61, column: 23, scope: !224)
!295 = !DILocation(line: 61, column: 7, scope: !224)
!296 = !DILocation(line: 62, column: 9, scope: !297)
!297 = distinct !DILexicalBlock(scope: !224, file: !2, line: 62, column: 6)
!298 = !DILocation(line: 62, column: 6, scope: !224)
!299 = !DILocation(line: 63, column: 3, scope: !300)
!300 = distinct !DILexicalBlock(scope: !297, file: !2, line: 62, column: 14)
!301 = !DILocation(line: 64, column: 3, scope: !300)
!302 = !DILocation(line: 65, column: 16, scope: !303)
!303 = distinct !DILexicalBlock(scope: !297, file: !2, line: 65, column: 13)
!304 = !DILocation(line: 65, column: 13, scope: !297)
!305 = !DILocation(line: 66, column: 3, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !2, line: 65, column: 28)
!307 = !DILocation(line: 67, column: 3, scope: !306)
!308 = !DILocation(line: 70, column: 1, scope: !224)
!309 = !DISubprogram(name: "write", scope: !310, file: !310, line: 378, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !203)
!310 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!311 = !DISubroutineType(types: !312)
!312 = !{!255, !98, !208, !143}
!313 = !DISubprogram(name: "sendmsg", scope: !314, file: !314, line: 174, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !203)
!314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "619dab7fd722af1ca0fa7f4b6fd4f842")
!315 = !DISubroutineType(types: !316)
!316 = !{!255, !98, !317, !98}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
