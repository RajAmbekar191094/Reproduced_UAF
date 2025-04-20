; ModuleID = 'finedb.c'
source_filename = "finedb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.finedb_s = type { i32, ptr, i32, i32, i64, ptr, i16 }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"../var/database\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"finedb.c\00", align 1, !dbg !12
@__FUNCTION__.finedb_init = private unnamed_addr constant [12 x i8] c"finedb_init\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to open database.\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [24 x i8] c"inproc://threads_socket\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [33 x i8] c"Unable to create threads socket.\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [32 x i8] c"Unable to create writer thread.\00", align 1, !dbg !38
@.str.7 = private unnamed_addr constant [10 x i8] c"Aborting.\00", align 1, !dbg !43

; Function Attrs: nounwind uwtable
define dso_local ptr @finedb_init(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i64 noundef %3, i32 noundef %4, i16 noundef zeroext %5) local_unnamed_addr #0 !dbg !84 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !115, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i16 %1, metadata !116, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i16 %2, metadata !117, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i64 %3, metadata !118, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %4, metadata !119, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i16 %5, metadata !120, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata ptr null, metadata !121, metadata !DIExpression()), !dbg !145
  %7 = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #8, !dbg !146
  call void @llvm.dbg.value(metadata ptr %7, metadata !121, metadata !DIExpression()), !dbg !145
  store i32 1, ptr %7, align 8, !dbg !147, !tbaa !148
  %8 = getelementptr inbounds %struct.finedb_s, ptr %7, i64 0, i32 2, !dbg !156
  store i32 -1, ptr %8, align 8, !dbg !157, !tbaa !158
  %9 = getelementptr inbounds %struct.finedb_s, ptr %7, i64 0, i32 3, !dbg !159
  %10 = tail call ptr @yv_create(i32 noundef 256) #9, !dbg !160
  %11 = getelementptr inbounds %struct.finedb_s, ptr %7, i64 0, i32 5, !dbg !161
  store ptr %10, ptr %11, align 8, !dbg !162, !tbaa !163
  %12 = getelementptr inbounds %struct.finedb_s, ptr %7, i64 0, i32 6, !dbg !164
  store i16 %5, ptr %12, align 8, !dbg !165, !tbaa !166
  %13 = icmp eq ptr %0, null, !dbg !167
  br i1 %13, label %14, label %20, !dbg !168

14:                                               ; preds = %6
  %15 = tail call ptr @get_self_path() #9, !dbg !169
  call void @llvm.dbg.value(metadata ptr %15, metadata !123, metadata !DIExpression()), !dbg !170
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #10, !dbg !171
  %17 = add i64 %16, 17, !dbg !171
  %18 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %17) #8, !dbg !171
  call void @llvm.dbg.value(metadata ptr %18, metadata !115, metadata !DIExpression()), !dbg !145
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %15, ptr noundef nonnull @.str.1) #9, !dbg !172
  br label %20, !dbg !173

20:                                               ; preds = %14, %6
  %21 = phi ptr [ %18, %14 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata ptr %21, metadata !115, metadata !DIExpression()), !dbg !145
  %22 = zext i16 %2 to i32, !dbg !174
  %23 = tail call ptr @database_open(ptr noundef %21, i64 noundef %3, i32 noundef %22, i32 noundef %4) #9, !dbg !175
  %24 = getelementptr inbounds %struct.finedb_s, ptr %7, i64 0, i32 1, !dbg !176
  store ptr %23, ptr %24, align 8, !dbg !177, !tbaa !178
  %25 = icmp eq ptr %23, null, !dbg !179
  br i1 %25, label %26, label %28, !dbg !181

26:                                               ; preds = %20
  %27 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef 38, ptr noundef nonnull @__FUNCTION__.finedb_init, ptr noundef nonnull @.str.3) #9, !dbg !182
  tail call void @exit(i32 noundef 1) #11, !dbg !184
  unreachable, !dbg !184

28:                                               ; preds = %20
  %29 = tail call i32 @nn_socket(i32 noundef 1, i32 noundef 80) #9, !dbg !185
  store i32 %29, ptr %9, align 4, !dbg !187, !tbaa !188
  %30 = icmp slt i32 %29, 0, !dbg !189
  br i1 %30, label %34, label %31, !dbg !190

31:                                               ; preds = %28
  %32 = tail call i32 @nn_bind(i32 noundef %29, ptr noundef nonnull @.str.4) #9, !dbg !191
  %33 = icmp slt i32 %32, 0, !dbg !192
  br i1 %33, label %34, label %36, !dbg !193

34:                                               ; preds = %31, %28
  %35 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef 44, ptr noundef nonnull @__FUNCTION__.finedb_init, ptr noundef nonnull @.str.5) #9, !dbg !194
  tail call void @database_close(ptr noundef nonnull %23) #9, !dbg !196
  tail call void @exit(i32 noundef 2) #11, !dbg !197
  unreachable, !dbg !197

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.finedb_s, ptr %7, i64 0, i32 4, !dbg !198
  %38 = tail call i32 @pthread_create(ptr noundef nonnull %37, ptr noundef null, ptr noundef nonnull @writer_loop, ptr noundef nonnull %7) #9, !dbg !200
  %39 = icmp eq i32 %38, 0, !dbg !200
  br i1 %39, label %40, label %42, !dbg !201

40:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i16 0, metadata !122, metadata !DIExpression()), !dbg !145
  %41 = icmp eq i16 %2, 0, !dbg !202
  br i1 %41, label %54, label %45, !dbg !203

42:                                               ; preds = %36
  %43 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef 50, ptr noundef nonnull @__FUNCTION__.finedb_init, ptr noundef nonnull @.str.6) #9, !dbg !204
  %44 = load ptr, ptr %24, align 8, !dbg !206, !tbaa !178
  tail call void @database_close(ptr noundef %44) #9, !dbg !207
  tail call void @exit(i32 noundef 3) #11, !dbg !208
  unreachable, !dbg !208

45:                                               ; preds = %40, %51
  %46 = phi i16 [ %52, %51 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i16 %46, metadata !122, metadata !DIExpression()), !dbg !145
  %47 = tail call ptr @connection_thread_new(ptr noundef nonnull %7) #9, !dbg !209
  call void @llvm.dbg.value(metadata ptr %47, metadata !127, metadata !DIExpression()), !dbg !211
  %48 = icmp eq ptr %47, null, !dbg !212
  br i1 %48, label %51, label %49, !dbg !213

49:                                               ; preds = %45
  %50 = tail call i32 @yv_add(ptr noundef nonnull %11, ptr noundef nonnull %47) #9, !dbg !214
  br label %51, !dbg !214

51:                                               ; preds = %49, %45
  %52 = add nuw i16 %46, 1, !dbg !215
  call void @llvm.dbg.value(metadata i16 %52, metadata !122, metadata !DIExpression()), !dbg !145
  %53 = icmp eq i16 %52, %2, !dbg !202
  br i1 %53, label %54, label %45, !dbg !203, !llvm.loop !216

54:                                               ; preds = %51, %40
  %55 = tail call i32 @server_create_listening_socket(ptr noundef nonnull %8, i16 noundef zeroext %1) #9, !dbg !218
  %56 = icmp eq i32 %55, 1, !dbg !220
  br i1 %56, label %59, label %57, !dbg !221

57:                                               ; preds = %54
  %58 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef 63, ptr noundef nonnull @__FUNCTION__.finedb_init, ptr noundef nonnull @.str.7) #9, !dbg !222
  tail call void @exit(i32 noundef 4) #11, !dbg !224
  unreachable, !dbg !224

59:                                               ; preds = %54
  ret ptr %7, !dbg !225
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !226 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !231 ptr @yv_create(i32 noundef) local_unnamed_addr #2

declare !dbg !235 ptr @get_self_path() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !239 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !243 noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare !dbg !249 ptr @database_open(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !253 i32 @ylog_write(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare !dbg !257 void @exit(i32 noundef) local_unnamed_addr #5

declare !dbg !260 i32 @nn_socket(i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !264 i32 @nn_bind(i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !267 void @database_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !270 i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @writer_loop(ptr noundef) #2

declare !dbg !292 ptr @connection_thread_new(ptr noundef) local_unnamed_addr #2

declare !dbg !295 i32 @yv_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !299 i32 @server_create_listening_socket(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @finedb_start(ptr noundef %0) local_unnamed_addr #0 !dbg !306 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !310, metadata !DIExpression()), !dbg !311
  %2 = getelementptr inbounds %struct.finedb_s, ptr %0, i64 0, i32 2, !dbg !312
  %3 = load i32, ptr %2, align 8, !dbg !312, !tbaa !158
  %4 = getelementptr inbounds %struct.finedb_s, ptr %0, i64 0, i32 3, !dbg !313
  %5 = load i32, ptr %4, align 4, !dbg !313, !tbaa !188
  tail call void @server_loop(ptr noundef %0, i32 noundef %3, i32 noundef %5) #9, !dbg !314
  ret void, !dbg !315
}

declare !dbg !316 void @server_loop(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @finedb_stop(ptr nocapture noundef %0) local_unnamed_addr #0 !dbg !320 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !322, metadata !DIExpression()), !dbg !323
  store i32 0, ptr %0, align 8, !dbg !324, !tbaa !148
  %2 = getelementptr inbounds %struct.finedb_s, ptr %0, i64 0, i32 1, !dbg !325
  %3 = load ptr, ptr %2, align 8, !dbg !325, !tbaa !178
  tail call void @database_close(ptr noundef %3) #9, !dbg !326
  ret void, !dbg !327
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!48}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "finedb.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4e29fb71de217c956e2bf4cc5fc98b87")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 16)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 96, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 12)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 25)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 24)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 33)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 32)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 10)
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, retainedTypes: !74, globals: !76, splitDebugInlining: false, nameTableKind: None)
!49 = !{!50, !56, !65}
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !51, line: 45, baseType: !52, size: 32, elements: !53)
!51 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!52 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!53 = !{!54, !55}
!54 = !DIEnumerator(name: "YFALSE", value: 0)
!55 = !DIEnumerator(name: "YTRUE", value: 1)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yv_size_e", file: !57, line: 31, baseType: !52, size: 32, elements: !58)
!57 = !DIFile(filename: "../../lib/ylib/yvect.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "73ac1eb655eaae5d93c48c36880d9ca2")
!58 = !{!59, !60, !61, !62, !63, !64}
!59 = !DIEnumerator(name: "YVECT_SIZE_NANO", value: 4)
!60 = !DIEnumerator(name: "YVECT_SIZE_MINI", value: 32)
!61 = !DIEnumerator(name: "YVECT_SIZE_MEDIUM", value: 256)
!62 = !DIEnumerator(name: "YVECT_SIZE_DEFAULT", value: 4096)
!63 = !DIEnumerator(name: "YVECT_SIZE_BIG", value: 65536)
!64 = !DIEnumerator(name: "YVECT_SIZE_HUGE", value: 1048576)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !66, line: 267, baseType: !52, size: 32, elements: !67)
!66 = !DIFile(filename: "../../lib/ylib/ylog.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!67 = !{!68, !69, !70, !71, !72, !73}
!68 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!69 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!70 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!71 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!72 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!73 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !{!0, !7, !12, !17, !23, !28, !33, !38, !43}
!77 = !{i32 7, !"Dwarf Version", i32 5}
!78 = !{i32 2, !"Debug Info Version", i32 3}
!79 = !{i32 1, !"wchar_size", i32 4}
!80 = !{i32 8, !"PIC Level", i32 2}
!81 = !{i32 7, !"PIE Level", i32 2}
!82 = !{i32 7, !"uwtable", i32 2}
!83 = !{!"clang version 16.0.0"}
!84 = distinct !DISubprogram(name: "finedb_init", scope: !2, file: !2, line: 13, type: !85, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48, retainedNodes: !114)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !111, !110, !110, !112, !52, !110}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !89, line: 49, baseType: !90)
!89 = !DIFile(filename: "./finedb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "349d81e48e8fe143f3d7a471f97edb42")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !89, line: 41, size: 384, elements: !91)
!91 = !{!92, !94, !99, !101, !102, !106, !109}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !90, file: !89, line: 42, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !51, line: 52, baseType: !50)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !90, file: !89, line: 43, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_env", file: !97, line: 197, baseType: !98)
!97 = !DIFile(filename: "../../lib/lmdb/lmdb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9ff9d4834608bdc966449cf81c779c6a")
!98 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_env", file: !97, line: 197, flags: DIFlagFwdDecl)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !90, file: !89, line: 44, baseType: !100, size: 32, offset: 128)
!100 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !90, file: !89, line: 45, baseType: !100, size: 32, offset: 160)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !90, file: !89, line: 46, baseType: !103, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !104, line: 27, baseType: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!105 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !90, file: !89, line: 47, baseType: !107, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "yvect_t", file: !57, line: 56, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !90, file: !89, line: 48, baseType: !110, size: 16, offset: 320)
!110 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 46, baseType: !105)
!113 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !127}
!115 = !DILocalVariable(name: "db_path", arg: 1, scope: !84, file: !2, line: 13, type: !111)
!116 = !DILocalVariable(name: "port", arg: 2, scope: !84, file: !2, line: 13, type: !110)
!117 = !DILocalVariable(name: "nbr_threads", arg: 3, scope: !84, file: !2, line: 14, type: !110)
!118 = !DILocalVariable(name: "mapsize", arg: 4, scope: !84, file: !2, line: 14, type: !112)
!119 = !DILocalVariable(name: "nbr_dbs", arg: 5, scope: !84, file: !2, line: 15, type: !52)
!120 = !DILocalVariable(name: "timeout", arg: 6, scope: !84, file: !2, line: 15, type: !110)
!121 = !DILocalVariable(name: "finedb", scope: !84, file: !2, line: 16, type: !87)
!122 = !DILocalVariable(name: "i", scope: !84, file: !2, line: 17, type: !110)
!123 = !DILocalVariable(name: "base_path", scope: !124, file: !2, line: 31, type: !126)
!124 = distinct !DILexicalBlock(scope: !125, file: !2, line: 30, column: 23)
!125 = distinct !DILexicalBlock(scope: !84, file: !2, line: 30, column: 6)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!127 = !DILocalVariable(name: "thread", scope: !128, file: !2, line: 56, type: !131)
!128 = distinct !DILexicalBlock(scope: !129, file: !2, line: 55, column: 36)
!129 = distinct !DILexicalBlock(scope: !130, file: !2, line: 55, column: 2)
!130 = distinct !DILexicalBlock(scope: !84, file: !2, line: 55, column: 2)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !133, line: 30, baseType: !134)
!133 = !DIFile(filename: "./connection_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "285f9cd07088f6d468faef64cb1dc74b")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !133, line: 23, size: 320, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !134, file: !133, line: 24, baseType: !103, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !134, file: !133, line: 25, baseType: !87, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !134, file: !133, line: 26, baseType: !100, size: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !134, file: !133, line: 27, baseType: !100, size: 32, offset: 160)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !134, file: !133, line: 28, baseType: !111, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !134, file: !133, line: 29, baseType: !142, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_txn", file: !97, line: 204, baseType: !144)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_txn", file: !97, line: 204, flags: DIFlagFwdDecl)
!145 = !DILocation(line: 0, scope: !84)
!146 = !DILocation(line: 20, column: 11, scope: !84)
!147 = !DILocation(line: 21, column: 14, scope: !84)
!148 = !{!149, !150, i64 0}
!149 = !{!"finedb_s", !150, i64 0, !152, i64 8, !153, i64 16, !153, i64 20, !154, i64 24, !152, i64 32, !155, i64 40}
!150 = !{!"omnipotent char", !151, i64 0}
!151 = !{!"Simple C/C++ TBAA"}
!152 = !{!"any pointer", !150, i64 0}
!153 = !{!"int", !150, i64 0}
!154 = !{!"long", !150, i64 0}
!155 = !{!"short", !150, i64 0}
!156 = !DILocation(line: 23, column: 10, scope: !84)
!157 = !DILocation(line: 23, column: 17, scope: !84)
!158 = !{!149, !153, i64 16}
!159 = !DILocation(line: 24, column: 10, scope: !84)
!160 = !DILocation(line: 26, column: 24, scope: !84)
!161 = !DILocation(line: 26, column: 10, scope: !84)
!162 = !DILocation(line: 26, column: 22, scope: !84)
!163 = !{!149, !152, i64 32}
!164 = !DILocation(line: 27, column: 10, scope: !84)
!165 = !DILocation(line: 27, column: 18, scope: !84)
!166 = !{!149, !155, i64 40}
!167 = !DILocation(line: 30, column: 14, scope: !125)
!168 = !DILocation(line: 30, column: 6, scope: !84)
!169 = !DILocation(line: 31, column: 27, scope: !124)
!170 = !DILocation(line: 0, scope: !124)
!171 = !DILocation(line: 32, column: 13, scope: !124)
!172 = !DILocation(line: 33, column: 3, scope: !124)
!173 = !DILocation(line: 34, column: 2, scope: !124)
!174 = !DILocation(line: 36, column: 53, scope: !84)
!175 = !DILocation(line: 36, column: 21, scope: !84)
!176 = !DILocation(line: 36, column: 10, scope: !84)
!177 = !DILocation(line: 36, column: 19, scope: !84)
!178 = !{!149, !152, i64 8}
!179 = !DILocation(line: 37, column: 23, scope: !180)
!180 = distinct !DILexicalBlock(scope: !84, file: !2, line: 37, column: 6)
!181 = !DILocation(line: 37, column: 6, scope: !84)
!182 = !DILocation(line: 38, column: 3, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !2, line: 37, column: 32)
!184 = !DILocation(line: 39, column: 3, scope: !183)
!185 = !DILocation(line: 42, column: 32, scope: !186)
!186 = distinct !DILexicalBlock(scope: !84, file: !2, line: 42, column: 6)
!187 = !DILocation(line: 42, column: 30, scope: !186)
!188 = !{!149, !153, i64 20}
!189 = !DILocation(line: 42, column: 59, scope: !186)
!190 = !DILocation(line: 42, column: 63, scope: !186)
!191 = !DILocation(line: 43, column: 6, scope: !186)
!192 = !DILocation(line: 43, column: 63, scope: !186)
!193 = !DILocation(line: 42, column: 6, scope: !84)
!194 = !DILocation(line: 44, column: 3, scope: !195)
!195 = distinct !DILexicalBlock(scope: !186, file: !2, line: 43, column: 68)
!196 = !DILocation(line: 45, column: 3, scope: !195)
!197 = !DILocation(line: 46, column: 3, scope: !195)
!198 = !DILocation(line: 49, column: 30, scope: !199)
!199 = distinct !DILexicalBlock(scope: !84, file: !2, line: 49, column: 6)
!200 = !DILocation(line: 49, column: 6, scope: !199)
!201 = !DILocation(line: 49, column: 6, scope: !84)
!202 = !DILocation(line: 55, column: 16, scope: !129)
!203 = !DILocation(line: 55, column: 2, scope: !130)
!204 = !DILocation(line: 50, column: 3, scope: !205)
!205 = distinct !DILexicalBlock(scope: !199, file: !2, line: 49, column: 70)
!206 = !DILocation(line: 51, column: 26, scope: !205)
!207 = !DILocation(line: 51, column: 3, scope: !205)
!208 = !DILocation(line: 52, column: 3, scope: !205)
!209 = !DILocation(line: 58, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !128, file: !2, line: 58, column: 7)
!211 = !DILocation(line: 0, scope: !128)
!212 = !DILocation(line: 58, column: 48, scope: !210)
!213 = !DILocation(line: 58, column: 7, scope: !128)
!214 = !DILocation(line: 59, column: 4, scope: !210)
!215 = !DILocation(line: 55, column: 32, scope: !129)
!216 = distinct !{!216, !203, !217}
!217 = !DILocation(line: 60, column: 2, scope: !130)
!218 = !DILocation(line: 62, column: 6, scope: !219)
!219 = distinct !DILexicalBlock(scope: !84, file: !2, line: 62, column: 6)
!220 = !DILocation(line: 62, column: 60, scope: !219)
!221 = !DILocation(line: 62, column: 6, scope: !84)
!222 = !DILocation(line: 63, column: 3, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !2, line: 62, column: 72)
!224 = !DILocation(line: 64, column: 3, scope: !223)
!225 = !DILocation(line: 67, column: 2, scope: !84)
!226 = !DISubprogram(name: "calloc", scope: !227, file: !227, line: 543, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !230)
!227 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!228 = !DISubroutineType(types: !229)
!229 = !{!75, !112, !112}
!230 = !{}
!231 = !DISubprogram(name: "yv_create", scope: !57, file: !57, line: 73, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !230)
!232 = !DISubroutineType(types: !233)
!233 = !{!107, !234}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "yv_size_t", file: !57, line: 38, baseType: !56)
!235 = !DISubprogram(name: "get_self_path", scope: !236, file: !236, line: 8, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !230)
!236 = !DIFile(filename: "./self_path.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "844886a314e702f1d26ce74d565f50bd")
!237 = !DISubroutineType(types: !238)
!238 = !{!126}
!239 = !DISubprogram(name: "strlen", scope: !240, file: !240, line: 407, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !230)
!240 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!241 = !DISubroutineType(types: !242)
!242 = !{!105, !126}
!243 = !DISubprogram(name: "sprintf", scope: !244, file: !244, line: 358, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !230)
!244 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!245 = !DISubroutineType(types: !246)
!246 = !{!100, !247, !248, null}
!247 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !111)
!248 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!249 = !DISubprogram(name: "database_open", scope: !250, file: !250, line: 21, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !230)
!250 = !DIFile(filename: "./database.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e933d92e866140a8ca260943c439739b")
!251 = !DISubroutineType(types: !252)
!252 = !{!95, !126, !112, !52, !52}
!253 = !DISubprogram(name: "ylog_write", scope: !66, file: !66, line: 385, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !230)
!254 = !DISubroutineType(types: !255)
!255 = !{!93, !256, !126, !100, !126, !126, null}
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_priority_t", file: !66, line: 278, baseType: !65)
!257 = !DISubprogram(name: "exit", scope: !227, file: !227, line: 624, type: !258, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !230)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !100}
!260 = !DISubprogram(name: "nn_socket", scope: !261, file: !261, line: 239, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !230)
!261 = !DIFile(filename: "../../include/nanomsg/nn.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0c95956590725e5a1eedd7f7b192cc23")
!262 = !DISubroutineType(types: !263)
!263 = !{!100, !100, !100}
!264 = !DISubprogram(name: "nn_bind", scope: !261, file: !261, line: 245, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !230)
!265 = !DISubroutineType(types: !266)
!266 = !{!100, !100, !126}
!267 = !DISubprogram(name: "database_close", scope: !250, file: !250, line: 27, type: !268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !230)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !95}
!270 = !DISubprogram(name: "pthread_create", scope: !271, file: !271, line: 202, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !230)
!271 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!272 = !DISubroutineType(types: !273)
!273 = !{!100, !274, !276, !288, !291}
!274 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !104, line: 62, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !104, line: 56, size: 448, elements: !281)
!281 = !{!282, !286}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !280, file: !104, line: 58, baseType: !283, size: 448)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 56)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !280, file: !104, line: 59, baseType: !287, size: 64)
!287 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!75, !75}
!291 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!292 = !DISubprogram(name: "connection_thread_new", scope: !133, file: !133, line: 59, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !230)
!293 = !DISubroutineType(types: !294)
!294 = !{!131, !87}
!295 = !DISubprogram(name: "yv_add", scope: !57, file: !57, line: 170, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !230)
!296 = !DISubroutineType(types: !297)
!297 = !{!100, !298, !75}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!299 = !DISubprogram(name: "server_create_listening_socket", scope: !300, file: !300, line: 13, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !230)
!300 = !DIFile(filename: "./server.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4bc2f720c31ce9ae1ddda5be6702ab2b")
!301 = !DISubroutineType(types: !302)
!302 = !{!303, !305, !110}
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !304, line: 23, baseType: !100)
!304 = !DIFile(filename: "../../lib/ylib/yerror.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!306 = distinct !DISubprogram(name: "finedb_start", scope: !2, file: !2, line: 71, type: !307, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !87}
!309 = !{!310}
!310 = !DILocalVariable(name: "finedb", arg: 1, scope: !306, file: !2, line: 71, type: !87)
!311 = !DILocation(line: 0, scope: !306)
!312 = !DILocation(line: 73, column: 36, scope: !306)
!313 = !DILocation(line: 73, column: 52, scope: !306)
!314 = !DILocation(line: 73, column: 2, scope: !306)
!315 = !DILocation(line: 74, column: 1, scope: !306)
!316 = !DISubprogram(name: "server_loop", scope: !300, file: !300, line: 21, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !230)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !319, !100, !100}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!320 = distinct !DISubprogram(name: "finedb_stop", scope: !2, file: !2, line: 77, type: !307, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48, retainedNodes: !321)
!321 = !{!322}
!322 = !DILocalVariable(name: "finedb", arg: 1, scope: !320, file: !2, line: 77, type: !87)
!323 = !DILocation(line: 0, scope: !320)
!324 = !DILocation(line: 78, column: 14, scope: !320)
!325 = !DILocation(line: 79, column: 25, scope: !320)
!326 = !DILocation(line: 79, column: 2, scope: !320)
!327 = !DILocation(line: 80, column: 1, scope: !320)
