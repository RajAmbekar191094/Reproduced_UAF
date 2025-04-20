; ModuleID = 'command_get.c'
source_filename = "command_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ybin_s = type { ptr, i64 }
%struct.tcp_thread_s = type { i64, ptr, i32, i32, ptr, ptr }
%struct.finedb_s = type { i32, ptr, i32, i32, i64, ptr, i16 }

@.str = private unnamed_addr constant [14 x i8] c"command_get.c\00", align 1, !dbg !0
@__FUNCTION__.command_get = private unnamed_addr constant [12 x i8] c"command_get\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [12 x i8] c"GET command\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [17 x i8] c"Uncompress data.\00", align 1, !dbg !16
@.str.3 = private unnamed_addr constant [27 x i8] c"Unable to uncompress data.\00", align 1, !dbg !21
@.str.4 = private unnamed_addr constant [15 x i8] c"GET command OK\00", align 1, !dbg !26
@.str.5 = private unnamed_addr constant [12 x i8] c"GET no data\00", align 1, !dbg !31
@.str.6 = private unnamed_addr constant [10 x i8] c"GET error\00", align 1, !dbg !33

; Function Attrs: nounwind uwtable
define dso_local i32 @command_get(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !82 {
  %6 = alloca %struct.ybin_s, align 8
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !135, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i32 %1, metadata !136, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i32 %2, metadata !137, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i32 %3, metadata !138, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata ptr %4, metadata !139, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata ptr null, metadata !146, metadata !DIExpression()), !dbg !162
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !163
  call void @llvm.dbg.declare(metadata ptr %6, metadata !154, metadata !DIExpression()), !dbg !164
  %8 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 18, ptr noundef nonnull @__FUNCTION__.command_get, ptr noundef nonnull @.str.1) #8, !dbg !165
  %9 = tail call i32 @connection_read_data(ptr noundef %0, ptr noundef %4, i64 noundef 2) #8, !dbg !166
  %10 = icmp eq i32 %9, 1, !dbg !168
  br i1 %10, label %11, label %61, !dbg !169

11:                                               ; preds = %5
  %12 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef 2) #8, !dbg !170
  call void @llvm.dbg.value(metadata ptr %12, metadata !140, metadata !DIExpression()), !dbg !162
  %13 = load i16, ptr %12, align 2, !dbg !171, !tbaa !172
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  call void @llvm.dbg.value(metadata i16 %14, metadata !144, metadata !DIExpression()), !dbg !162
  %15 = zext i16 %14 to i64, !dbg !176
  %16 = tail call i32 @connection_read_data(ptr noundef %0, ptr noundef %4, i64 noundef %15) #8, !dbg !178
  %17 = icmp eq i32 %16, 1, !dbg !179
  br i1 %17, label %18, label %61, !dbg !180

18:                                               ; preds = %11
  %19 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef %15) #8, !dbg !181
  call void @llvm.dbg.value(metadata ptr %19, metadata !145, metadata !DIExpression()), !dbg !162
  %20 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %15) #9, !dbg !182
  call void @llvm.dbg.value(metadata ptr %20, metadata !146, metadata !DIExpression()), !dbg !162
  %21 = icmp eq ptr %20, null, !dbg !184
  br i1 %21, label %61, label %22, !dbg !185

22:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr align 1 %19, i64 %15, i1 false), !dbg !186
  call void @llvm.dbg.value(metadata i64 %15, metadata !147, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !162
  call void @llvm.dbg.value(metadata ptr %20, metadata !147, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !162
  %23 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 1, !dbg !187
  %24 = load ptr, ptr %23, align 8, !dbg !187, !tbaa !188
  %25 = getelementptr inbounds %struct.finedb_s, ptr %24, i64 0, i32 1, !dbg !193
  %26 = load ptr, ptr %25, align 8, !dbg !193, !tbaa !194
  %27 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5, !dbg !196
  %28 = load ptr, ptr %27, align 8, !dbg !196, !tbaa !197
  %29 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !198
  %30 = load ptr, ptr %29, align 8, !dbg !198, !tbaa !199
  %31 = call i32 @database_get(ptr noundef %26, ptr noundef %28, ptr noundef %30, ptr nonnull %20, i64 %15, ptr noundef nonnull %6) #8, !dbg !200
  call void @llvm.dbg.value(metadata i32 %31, metadata !155, metadata !DIExpression()), !dbg !162
  switch i32 %31, label %63 [
    i32 -61, label %58
    i32 1, label %32
  ], !dbg !201

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.ybin_s, ptr %6, i64 0, i32 1, !dbg !202
  %34 = load i64, ptr %33, align 8, !dbg !202, !tbaa !203
  %35 = icmp eq i64 %34, 0, !dbg !205
  %36 = icmp ne i32 %2, 0
  %37 = or i1 %36, %35, !dbg !206
  br i1 %37, label %53, label %38, !dbg !206

38:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8, !dbg !207
  %39 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @__FUNCTION__.command_get, ptr noundef nonnull @.str.2) #8, !dbg !208
  %40 = load ptr, ptr %6, align 8, !dbg !209, !tbaa !210
  %41 = load i64, ptr %33, align 8, !dbg !211, !tbaa !203
  call void @llvm.dbg.value(metadata ptr %7, metadata !156, metadata !DIExpression(DW_OP_deref)), !dbg !212
  %42 = call zeroext i1 @snappy_uncompressed_length(ptr noundef %40, i64 noundef %41, ptr noundef nonnull %7) #8, !dbg !213
  %43 = load i64, ptr %7, align 8, !dbg !214, !tbaa !215
  call void @llvm.dbg.value(metadata i64 %43, metadata !156, metadata !DIExpression()), !dbg !212
  %44 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %43) #9, !dbg !214
  call void @llvm.dbg.value(metadata ptr %44, metadata !159, metadata !DIExpression()), !dbg !212
  %45 = load ptr, ptr %6, align 8, !dbg !216, !tbaa !210
  %46 = load i64, ptr %33, align 8, !dbg !218, !tbaa !203
  %47 = call i32 @snappy_uncompress(ptr noundef %45, i64 noundef %46, ptr noundef %44) #8, !dbg !219
  %48 = icmp eq i32 %47, 0, !dbg !219
  br i1 %48, label %49, label %51, !dbg !220

49:                                               ; preds = %38
  store ptr %44, ptr %6, align 8, !dbg !221, !tbaa !210
  %50 = load i64, ptr %7, align 8, !dbg !222, !tbaa !215
  call void @llvm.dbg.value(metadata i64 %50, metadata !156, metadata !DIExpression()), !dbg !212
  store i64 %50, ptr %33, align 8, !dbg !223, !tbaa !203
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8, !dbg !224
  br label %53

51:                                               ; preds = %38
  %52 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 49, ptr noundef nonnull @__FUNCTION__.command_get, ptr noundef nonnull @.str.3) #8, !dbg !225
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8, !dbg !224
  br label %63

53:                                               ; preds = %49, %32
  %54 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @__FUNCTION__.command_get, ptr noundef nonnull @.str.4) #8, !dbg !227
  call void @free(ptr noundef nonnull %20) #8, !dbg !228
  call void @llvm.dbg.value(metadata ptr null, metadata !146, metadata !DIExpression()), !dbg !162
  %55 = load ptr, ptr %6, align 8, !dbg !229, !tbaa !210
  %56 = load i64, ptr %33, align 8, !dbg !230, !tbaa !203
  %57 = call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %3, i32 noundef %2, ptr noundef %55, i64 noundef %56) #8, !dbg !231
  call void @llvm.dbg.value(metadata i32 %57, metadata !155, metadata !DIExpression()), !dbg !162
  br label %67, !dbg !232

58:                                               ; preds = %22
  call void @llvm.dbg.label(metadata !160), !dbg !233
  %59 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 62, ptr noundef nonnull @__FUNCTION__.command_get, ptr noundef nonnull @.str.5) #8, !dbg !234
  call void @free(ptr noundef nonnull %20) #8, !dbg !235
  call void @llvm.dbg.value(metadata ptr null, metadata !146, metadata !DIExpression()), !dbg !162
  %60 = call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #8, !dbg !236
  br label %67, !dbg !237

61:                                               ; preds = %5, %11, %18
  call void @llvm.dbg.value(metadata ptr null, metadata !146, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.label(metadata !161), !dbg !238
  %62 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 67, ptr noundef nonnull @__FUNCTION__.command_get, ptr noundef nonnull @.str.6) #8, !dbg !239
  br label %65, !dbg !240

63:                                               ; preds = %22, %51
  call void @llvm.dbg.value(metadata ptr %20, metadata !146, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.label(metadata !161), !dbg !238
  %64 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 67, ptr noundef nonnull @__FUNCTION__.command_get, ptr noundef nonnull @.str.6) #8, !dbg !239
  call void @free(ptr noundef nonnull %20) #8, !dbg !240
  br label %65, !dbg !240

65:                                               ; preds = %61, %63
  call void @llvm.dbg.value(metadata ptr null, metadata !146, metadata !DIExpression()), !dbg !162
  %66 = call i32 @connection_send_response(ptr noundef %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #8, !dbg !241
  br label %67, !dbg !242

67:                                               ; preds = %65, %58, %53
  %68 = phi i32 [ -5, %65 ], [ 1, %58 ], [ %57, %53 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !243
  ret i32 %68, !dbg !243
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !244 i32 @ylog_write(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !250 i32 @connection_read_data(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !253 ptr @ydynabin_forward(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !256 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !260 i32 @database_get(ptr noundef, ptr noundef, ptr noundef, ptr, i64, ptr noundef) local_unnamed_addr #3

declare !dbg !265 zeroext i1 @snappy_uncompressed_length(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !271 i32 @snappy_uncompress(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !274 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

declare !dbg !277 i32 @connection_send_response(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!38}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "command_get.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "97f84e4100e311456268f78cada1acf6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 14)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 96, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 12)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !11)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 17)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 27)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 15)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !15, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 10)
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !66, globals: !74, splitDebugInlining: false, nameTableKind: None)
!39 = !{!40, !46, !55}
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !41, line: 45, baseType: !42, size: 32, elements: !43)
!41 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!42 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = !{!44, !45}
!44 = !DIEnumerator(name: "YFALSE", value: 0)
!45 = !DIEnumerator(name: "YTRUE", value: 1)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !47, line: 267, baseType: !42, size: 32, elements: !48)
!47 = !DIFile(filename: "../../lib/ylib/ylog.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!48 = !{!49, !50, !51, !52, !53, !54}
!49 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!50 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!51 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!52 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!53 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!54 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol_response_e", file: !56, line: 108, baseType: !42, size: 32, elements: !57)
!56 = !DIFile(filename: "./protocol.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "90e12b9ba2bd5e3d7e691fccfd080d02")
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65}
!58 = !DIEnumerator(name: "RESP_ERR_UNDEFINED", value: 0)
!59 = !DIEnumerator(name: "RESP_OK", value: 1)
!60 = !DIEnumerator(name: "RESP_ERR_PROTOCOL", value: 2)
!61 = !DIEnumerator(name: "RESP_ERR_SERVER", value: 3)
!62 = !DIEnumerator(name: "RESP_ERR_FULL_DB", value: 4)
!63 = !DIEnumerator(name: "RESP_ERR_TOO_MANY_DB", value: 5)
!64 = !DIEnumerator(name: "RESP_ERR_BAD_NAME", value: 6)
!65 = !DIEnumerator(name: "RESP_ERR_TRANSACTION", value: 7)
!66 = !{!67, !68, !71}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!70 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !72, line: 40, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!73 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!74 = !{!0, !7, !13, !16, !21, !26, !31, !33}
!75 = !{i32 7, !"Dwarf Version", i32 5}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{i32 1, !"wchar_size", i32 4}
!78 = !{i32 8, !"PIC Level", i32 2}
!79 = !{i32 7, !"PIE Level", i32 2}
!80 = !{i32 7, !"uwtable", i32 2}
!81 = !{!"clang version 16.0.0"}
!82 = distinct !DISubprogram(name: "command_get", scope: !2, file: !2, line: 12, type: !83, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !134)
!83 = !DISubroutineType(types: !84)
!84 = !{!85, !88, !103, !103, !103, !125}
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !86, line: 23, baseType: !87)
!86 = !DIFile(filename: "../../lib/ylib/yerror.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !90, line: 30, baseType: !91)
!90 = !DIFile(filename: "./connection_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "285f9cd07088f6d468faef64cb1dc74b")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !90, line: 23, size: 320, elements: !92)
!92 = !{!93, !96, !117, !118, !119, !121}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !91, file: !90, line: 24, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !95, line: 27, baseType: !70)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !91, file: !90, line: 25, baseType: !97, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !99, line: 49, baseType: !100)
!99 = !DIFile(filename: "./finedb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "349d81e48e8fe143f3d7a471f97edb42")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !99, line: 41, size: 384, elements: !101)
!101 = !{!102, !104, !109, !110, !111, !112, !116}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !100, file: !99, line: 42, baseType: !103, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !41, line: 52, baseType: !40)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !100, file: !99, line: 43, baseType: !105, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_env", file: !107, line: 197, baseType: !108)
!107 = !DIFile(filename: "../../lib/lmdb/lmdb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9ff9d4834608bdc966449cf81c779c6a")
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_env", file: !107, line: 197, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !100, file: !99, line: 44, baseType: !87, size: 32, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !100, file: !99, line: 45, baseType: !87, size: 32, offset: 160)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !100, file: !99, line: 46, baseType: !94, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !100, file: !99, line: 47, baseType: !113, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "yvect_t", file: !114, line: 56, baseType: !115)
!114 = !DIFile(filename: "../../lib/ylib/yvect.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "73ac1eb655eaae5d93c48c36880d9ca2")
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !100, file: !99, line: 48, baseType: !73, size: 16, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !91, file: !90, line: 26, baseType: !87, size: 32, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !91, file: !90, line: 27, baseType: !87, size: 32, offset: 160)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !91, file: !90, line: 28, baseType: !120, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !91, file: !90, line: 29, baseType: !122, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_txn", file: !107, line: 204, baseType: !124)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_txn", file: !107, line: 204, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !127, line: 45, baseType: !128)
!127 = !DIFile(filename: "../../lib/ylib/ydynabin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e9b56a3dd8293288d1beb69b8bafd958")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !127, line: 37, size: 256, elements: !129)
!129 = !{!130, !131, !132, !133}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !128, file: !127, line: 38, baseType: !67, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !128, file: !127, line: 39, baseType: !68, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !128, file: !127, line: 40, baseType: !68, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !128, file: !127, line: 41, baseType: !68, size: 64, offset: 192)
!134 = !{!135, !136, !137, !138, !139, !140, !144, !145, !146, !147, !154, !155, !156, !159, !160, !161}
!135 = !DILocalVariable(name: "thread", arg: 1, scope: !82, file: !2, line: 12, type: !88)
!136 = !DILocalVariable(name: "sync", arg: 2, scope: !82, file: !2, line: 12, type: !103)
!137 = !DILocalVariable(name: "compress", arg: 3, scope: !82, file: !2, line: 12, type: !103)
!138 = !DILocalVariable(name: "serialized", arg: 4, scope: !82, file: !2, line: 12, type: !103)
!139 = !DILocalVariable(name: "buff", arg: 5, scope: !82, file: !2, line: 12, type: !125)
!140 = !DILocalVariable(name: "pname_len", scope: !82, file: !2, line: 13, type: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !143, line: 25, baseType: !71)
!143 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!144 = !DILocalVariable(name: "name_len", scope: !82, file: !2, line: 13, type: !142)
!145 = !DILocalVariable(name: "ptr", scope: !82, file: !2, line: 14, type: !67)
!146 = !DILocalVariable(name: "name", scope: !82, file: !2, line: 14, type: !67)
!147 = !DILocalVariable(name: "bin_key", scope: !82, file: !2, line: 15, type: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !149, line: 33, baseType: !150)
!149 = !DIFile(filename: "../../lib/ylib/ybin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "7abd7d5e6afd31e8416cab6f0a6bf3b3")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !149, line: 27, size: 128, elements: !151)
!151 = !{!152, !153}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !150, file: !149, line: 28, baseType: !67, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !150, file: !149, line: 29, baseType: !68, size: 64, offset: 64)
!154 = !DILocalVariable(name: "bin_data", scope: !82, file: !2, line: 15, type: !148)
!155 = !DILocalVariable(name: "result", scope: !82, file: !2, line: 16, type: !85)
!156 = !DILocalVariable(name: "unzip_len", scope: !157, file: !2, line: 42, type: !68)
!157 = distinct !DILexicalBlock(scope: !158, file: !2, line: 40, column: 33)
!158 = distinct !DILexicalBlock(scope: !82, file: !2, line: 40, column: 6)
!159 = !DILocalVariable(name: "unzip_data", scope: !157, file: !2, line: 43, type: !120)
!160 = !DILabel(scope: !82, name: "no_data", file: !2, line: 61)
!161 = !DILabel(scope: !82, name: "error", file: !2, line: 66)
!162 = !DILocation(line: 0, scope: !82)
!163 = !DILocation(line: 15, column: 2, scope: !82)
!164 = !DILocation(line: 15, column: 18, scope: !82)
!165 = !DILocation(line: 18, column: 2, scope: !82)
!166 = !DILocation(line: 20, column: 6, scope: !167)
!167 = distinct !DILexicalBlock(scope: !82, file: !2, line: 20, column: 6)
!168 = !DILocation(line: 20, column: 59, scope: !167)
!169 = !DILocation(line: 20, column: 6, scope: !82)
!170 = !DILocation(line: 22, column: 14, scope: !82)
!171 = !DILocation(line: 23, column: 13, scope: !82)
!172 = !{!173, !173, i64 0}
!173 = !{!"short", !174, i64 0}
!174 = !{!"omnipotent char", !175, i64 0}
!175 = !{!"Simple C/C++ TBAA"}
!176 = !DILocation(line: 25, column: 41, scope: !177)
!177 = distinct !DILexicalBlock(scope: !82, file: !2, line: 25, column: 6)
!178 = !DILocation(line: 25, column: 6, scope: !177)
!179 = !DILocation(line: 25, column: 59, scope: !177)
!180 = !DILocation(line: 25, column: 6, scope: !82)
!181 = !DILocation(line: 27, column: 8, scope: !82)
!182 = !DILocation(line: 28, column: 14, scope: !183)
!183 = distinct !DILexicalBlock(scope: !82, file: !2, line: 28, column: 6)
!184 = !DILocation(line: 28, column: 41, scope: !183)
!185 = !DILocation(line: 28, column: 6, scope: !82)
!186 = !DILocation(line: 30, column: 2, scope: !82)
!187 = !DILocation(line: 35, column: 32, scope: !82)
!188 = !{!189, !191, i64 8}
!189 = !{!"tcp_thread_s", !190, i64 0, !191, i64 8, !192, i64 16, !192, i64 20, !191, i64 24, !191, i64 32}
!190 = !{!"long", !174, i64 0}
!191 = !{!"any pointer", !174, i64 0}
!192 = !{!"int", !174, i64 0}
!193 = !DILocation(line: 35, column: 40, scope: !82)
!194 = !{!195, !191, i64 8}
!195 = !{!"finedb_s", !174, i64 0, !191, i64 8, !192, i64 16, !192, i64 20, !190, i64 24, !191, i64 32, !173, i64 40}
!196 = !DILocation(line: 35, column: 58, scope: !82)
!197 = !{!189, !191, i64 32}
!198 = !DILocation(line: 35, column: 79, scope: !82)
!199 = !{!189, !191, i64 24}
!200 = !DILocation(line: 35, column: 11, scope: !82)
!201 = !DILocation(line: 36, column: 6, scope: !82)
!202 = !DILocation(line: 40, column: 15, scope: !158)
!203 = !{!204, !190, i64 8}
!204 = !{!"ybin_s", !191, i64 0, !190, i64 8}
!205 = !DILocation(line: 40, column: 6, scope: !158)
!206 = !DILocation(line: 40, column: 19, scope: !158)
!207 = !DILocation(line: 42, column: 3, scope: !157)
!208 = !DILocation(line: 45, column: 3, scope: !157)
!209 = !DILocation(line: 46, column: 39, scope: !157)
!210 = !{!204, !191, i64 0}
!211 = !DILocation(line: 46, column: 54, scope: !157)
!212 = !DILocation(line: 0, scope: !157)
!213 = !DILocation(line: 46, column: 3, scope: !157)
!214 = !DILocation(line: 47, column: 16, scope: !157)
!215 = !{!190, !190, i64 0}
!216 = !DILocation(line: 48, column: 34, scope: !217)
!217 = distinct !DILexicalBlock(scope: !157, file: !2, line: 48, column: 7)
!218 = !DILocation(line: 48, column: 49, scope: !217)
!219 = !DILocation(line: 48, column: 7, scope: !217)
!220 = !DILocation(line: 48, column: 7, scope: !157)
!221 = !DILocation(line: 52, column: 17, scope: !157)
!222 = !DILocation(line: 53, column: 18, scope: !157)
!223 = !DILocation(line: 53, column: 16, scope: !157)
!224 = !DILocation(line: 54, column: 2, scope: !158)
!225 = !DILocation(line: 49, column: 4, scope: !226)
!226 = distinct !DILexicalBlock(scope: !217, file: !2, line: 48, column: 67)
!227 = !DILocation(line: 56, column: 2, scope: !82)
!228 = !DILocation(line: 57, column: 2, scope: !82)
!229 = !DILocation(line: 59, column: 45, scope: !82)
!230 = !DILocation(line: 59, column: 60, scope: !82)
!231 = !DILocation(line: 58, column: 11, scope: !82)
!232 = !DILocation(line: 60, column: 2, scope: !82)
!233 = !DILocation(line: 61, column: 1, scope: !82)
!234 = !DILocation(line: 62, column: 2, scope: !82)
!235 = !DILocation(line: 63, column: 2, scope: !82)
!236 = !DILocation(line: 64, column: 2, scope: !82)
!237 = !DILocation(line: 65, column: 2, scope: !82)
!238 = !DILocation(line: 66, column: 1, scope: !82)
!239 = !DILocation(line: 67, column: 2, scope: !82)
!240 = !DILocation(line: 68, column: 2, scope: !82)
!241 = !DILocation(line: 69, column: 2, scope: !82)
!242 = !DILocation(line: 70, column: 2, scope: !82)
!243 = !DILocation(line: 71, column: 1, scope: !82)
!244 = !DISubprogram(name: "ylog_write", scope: !47, file: !47, line: 385, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !249)
!245 = !DISubroutineType(types: !246)
!246 = !{!103, !247, !248, !87, !248, !248, null}
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_priority_t", file: !47, line: 278, baseType: !46)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!249 = !{}
!250 = !DISubprogram(name: "connection_read_data", scope: !90, file: !90, line: 94, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !249)
!251 = !DISubroutineType(types: !252)
!252 = !{!85, !88, !125, !68}
!253 = !DISubprogram(name: "ydynabin_forward", scope: !127, file: !127, line: 82, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !249)
!254 = !DISubroutineType(types: !255)
!255 = !{!67, !125, !68}
!256 = !DISubprogram(name: "calloc", scope: !257, file: !257, line: 543, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !249)
!257 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!258 = !DISubroutineType(types: !259)
!259 = !{!67, !68, !68}
!260 = !DISubprogram(name: "database_get", scope: !261, file: !261, line: 81, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !249)
!261 = !DIFile(filename: "./database.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e933d92e866140a8ca260943c439739b")
!262 = !DISubroutineType(types: !263)
!263 = !{!85, !105, !122, !248, !148, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!265 = !DISubprogram(name: "snappy_uncompressed_length", scope: !266, file: !266, line: 33, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !249)
!266 = !DIFile(filename: "../../lib/snappy-c/snappy.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "cfb9bcda4cc85171bf9848efd16b1ae4")
!267 = !DISubroutineType(types: !268)
!268 = !{!269, !248, !68, !270}
!269 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!271 = !DISubprogram(name: "snappy_uncompress", scope: !266, file: !266, line: 20, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !249)
!272 = !DISubroutineType(types: !273)
!273 = !{!87, !248, !68, !120}
!274 = !DISubprogram(name: "free", scope: !257, file: !257, line: 555, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !249)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !67}
!277 = !DISubprogram(name: "connection_send_response", scope: !90, file: !90, line: 107, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !249)
!278 = !DISubroutineType(types: !279)
!279 = !{!85, !88, !280, !103, !103, !281, !68}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_response_t", file: !56, line: 117, baseType: !55)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
