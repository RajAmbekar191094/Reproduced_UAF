; ModuleID = 'writer_thread.c'
source_filename = "writer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.finedb_s = type { i32, ptr, i32, i32, i64, ptr, i16 }
%struct.writer_msg_s = type { i32, ptr, %struct.ybin_s, %struct.ybin_s, i32 }
%struct.ybin_s = type { ptr, i64 }

@.str = private unnamed_addr constant [23 x i8] c"inproc://writer_socket\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"writer_thread.c\00", align 1, !dbg !7
@__FUNCTION__.writer_loop = private unnamed_addr constant [12 x i8] c"writer_loop\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [42 x i8] c"Unable to create socket in writer thread.\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [19 x i8] c"WRITE '%s' => '%s'\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [26 x i8] c"Data written to database.\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [36 x i8] c"Unable to write data into database.\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [12 x i8] c"DELETE '%s'\00", align 1, !dbg !38
@.str.7 = private unnamed_addr constant [28 x i8] c"Data removed from database.\00", align 1, !dbg !41
@.str.8 = private unnamed_addr constant [37 x i8] c"Unable to delete data into database.\00", align 1, !dbg !46

; Function Attrs: noreturn nounwind uwtable
define dso_local noalias nonnull ptr @writer_loop(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !dbg !109 {
  %2 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !113, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata ptr %0, metadata !114, metadata !DIExpression()), !dbg !139
  %3 = tail call i32 @nn_socket(i32 noundef 1, i32 noundef 81) #6, !dbg !140
  call void @llvm.dbg.value(metadata i32 %3, metadata !115, metadata !DIExpression()), !dbg !139
  %4 = icmp slt i32 %3, 0, !dbg !142
  br i1 %4, label %10, label %5, !dbg !143

5:                                                ; preds = %1
  %6 = tail call i32 @nn_bind(i32 noundef %3, ptr noundef nonnull @.str) #6, !dbg !144
  %7 = icmp slt i32 %6, 0, !dbg !145
  br i1 %7, label %10, label %8, !dbg !146

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.finedb_s, ptr %0, i64 0, i32 1
  br label %12, !dbg !147

10:                                               ; preds = %5, %1
  %11 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 5, ptr noundef nonnull @.str.1, i32 noundef 17, ptr noundef nonnull @__FUNCTION__.writer_loop, ptr noundef nonnull @.str.2) #6, !dbg !148
  tail call void @exit(i32 noundef 6) #7, !dbg !150
  unreachable, !dbg !150

12:                                               ; preds = %8, %86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6, !dbg !151
  call void @llvm.dbg.value(metadata ptr %2, metadata !116, metadata !DIExpression(DW_OP_deref)), !dbg !152
  %13 = call i32 @nn_recv(i32 noundef %3, ptr noundef nonnull %2, i64 noundef 8, i32 noundef 0) #6, !dbg !153
  %14 = icmp slt i32 %13, 0, !dbg !155
  br i1 %14, label %86, label %15, !dbg !147, !llvm.loop !156

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8, !dbg !159, !tbaa !161
  call void @llvm.dbg.value(metadata ptr %16, metadata !116, metadata !DIExpression()), !dbg !152
  %17 = load i32, ptr %16, align 8, !dbg !165, !tbaa !166
  switch i32 %17, label %69 [
    i32 0, label %18
    i32 1, label %51
  ], !dbg !170

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.writer_msg_s, ptr %16, i64 0, i32 2, !dbg !171
  %20 = load ptr, ptr %19, align 8, !dbg !171, !tbaa !173
  %21 = getelementptr inbounds %struct.writer_msg_s, ptr %16, i64 0, i32 3, !dbg !171
  %22 = load ptr, ptr %21, align 8, !dbg !171, !tbaa !174
  %23 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 29, ptr noundef nonnull @__FUNCTION__.writer_loop, ptr noundef nonnull @.str.3, ptr noundef %20, ptr noundef %22) #6, !dbg !171
  %24 = load ptr, ptr %9, align 8, !dbg !175, !tbaa !177
  %25 = load ptr, ptr %2, align 8, !dbg !181, !tbaa !161
  call void @llvm.dbg.value(metadata ptr %25, metadata !116, metadata !DIExpression()), !dbg !152
  %26 = getelementptr inbounds %struct.writer_msg_s, ptr %25, i64 0, i32 4, !dbg !182
  %27 = load i32, ptr %26, align 8, !dbg !182, !tbaa !183
  %28 = getelementptr inbounds %struct.writer_msg_s, ptr %25, i64 0, i32 1, !dbg !184
  %29 = load ptr, ptr %28, align 8, !dbg !184, !tbaa !185
  %30 = getelementptr inbounds %struct.writer_msg_s, ptr %25, i64 0, i32 2, !dbg !186
  %31 = getelementptr inbounds %struct.writer_msg_s, ptr %25, i64 0, i32 3, !dbg !187
  %32 = load ptr, ptr %30, align 8, !dbg !188
  %33 = getelementptr inbounds %struct.writer_msg_s, ptr %25, i64 0, i32 2, i32 1, !dbg !188
  %34 = load i64, ptr %33, align 8, !dbg !188
  %35 = call i32 @database_put(ptr noundef %24, ptr noundef null, i32 noundef %27, ptr noundef %29, ptr %32, i64 %34, ptr noundef nonnull byval(%struct.ybin_s) align 8 %31) #6, !dbg !188
  %36 = icmp eq i32 %35, 1, !dbg !189
  br i1 %36, label %37, label %39, !dbg !190

37:                                               ; preds = %18
  %38 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 31, ptr noundef nonnull @__FUNCTION__.writer_loop, ptr noundef nonnull @.str.4) #6, !dbg !191
  br label %41, !dbg !191

39:                                               ; preds = %18
  %40 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef 33, ptr noundef nonnull @__FUNCTION__.writer_loop, ptr noundef nonnull @.str.5) #6, !dbg !192
  br label %41

41:                                               ; preds = %39, %37
  %42 = load ptr, ptr %2, align 8, !dbg !193, !tbaa !161
  call void @llvm.dbg.value(metadata ptr %42, metadata !116, metadata !DIExpression()), !dbg !152
  %43 = getelementptr inbounds %struct.writer_msg_s, ptr %42, i64 0, i32 3, !dbg !193
  %44 = load ptr, ptr %43, align 8, !dbg !193, !tbaa !174
  %45 = icmp eq ptr %44, null, !dbg !193
  br i1 %45, label %48, label %46, !dbg !193

46:                                               ; preds = %41
  call void @free(ptr noundef nonnull %44) #6, !dbg !193
  %47 = load ptr, ptr %2, align 8, !dbg !193, !tbaa !161
  br label %48, !dbg !193

48:                                               ; preds = %41, %46
  %49 = phi ptr [ %42, %41 ], [ %47, %46 ], !dbg !193
  call void @llvm.dbg.value(metadata ptr %49, metadata !116, metadata !DIExpression()), !dbg !152
  %50 = getelementptr inbounds %struct.writer_msg_s, ptr %49, i64 0, i32 3, !dbg !193
  store ptr null, ptr %50, align 8, !dbg !193, !tbaa !174
  br label %69, !dbg !194

51:                                               ; preds = %15
  %52 = getelementptr inbounds %struct.writer_msg_s, ptr %16, i64 0, i32 2, !dbg !195
  %53 = load ptr, ptr %52, align 8, !dbg !195, !tbaa !173
  %54 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 37, ptr noundef nonnull @__FUNCTION__.writer_loop, ptr noundef nonnull @.str.6, ptr noundef %53) #6, !dbg !195
  %55 = load ptr, ptr %9, align 8, !dbg !198, !tbaa !177
  %56 = load ptr, ptr %2, align 8, !dbg !200, !tbaa !161
  call void @llvm.dbg.value(metadata ptr %56, metadata !116, metadata !DIExpression()), !dbg !152
  %57 = getelementptr inbounds %struct.writer_msg_s, ptr %56, i64 0, i32 1, !dbg !201
  %58 = load ptr, ptr %57, align 8, !dbg !201, !tbaa !185
  %59 = getelementptr inbounds %struct.writer_msg_s, ptr %56, i64 0, i32 2, !dbg !202
  %60 = load ptr, ptr %59, align 8, !dbg !203
  %61 = getelementptr inbounds %struct.writer_msg_s, ptr %56, i64 0, i32 2, i32 1, !dbg !203
  %62 = load i64, ptr %61, align 8, !dbg !203
  %63 = call i32 @database_del(ptr noundef %55, ptr noundef null, ptr noundef %58, ptr %60, i64 %62) #6, !dbg !203
  %64 = icmp eq i32 %63, 1, !dbg !204
  br i1 %64, label %65, label %67, !dbg !205

65:                                               ; preds = %51
  %66 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 39, ptr noundef nonnull @__FUNCTION__.writer_loop, ptr noundef nonnull @.str.7) #6, !dbg !206
  br label %69, !dbg !206

67:                                               ; preds = %51
  %68 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef 41, ptr noundef nonnull @__FUNCTION__.writer_loop, ptr noundef nonnull @.str.8) #6, !dbg !207
  br label %69

69:                                               ; preds = %15, %67, %65, %48
  %70 = load ptr, ptr %2, align 8, !dbg !208, !tbaa !161
  call void @llvm.dbg.value(metadata ptr %70, metadata !116, metadata !DIExpression()), !dbg !152
  %71 = getelementptr inbounds %struct.writer_msg_s, ptr %70, i64 0, i32 1, !dbg !208
  %72 = load ptr, ptr %71, align 8, !dbg !208, !tbaa !185
  %73 = icmp eq ptr %72, null, !dbg !208
  br i1 %73, label %76, label %74, !dbg !208

74:                                               ; preds = %69
  call void @free(ptr noundef nonnull %72) #6, !dbg !208
  %75 = load ptr, ptr %2, align 8, !dbg !208, !tbaa !161
  br label %76, !dbg !208

76:                                               ; preds = %69, %74
  %77 = phi ptr [ %70, %69 ], [ %75, %74 ], !dbg !208
  call void @llvm.dbg.value(metadata ptr %77, metadata !116, metadata !DIExpression()), !dbg !152
  %78 = getelementptr inbounds %struct.writer_msg_s, ptr %77, i64 0, i32 1, !dbg !208
  store ptr null, ptr %78, align 8, !dbg !208, !tbaa !185
  call void @llvm.dbg.value(metadata ptr %77, metadata !116, metadata !DIExpression()), !dbg !152
  %79 = getelementptr inbounds %struct.writer_msg_s, ptr %77, i64 0, i32 2, !dbg !209
  %80 = load ptr, ptr %79, align 8, !dbg !209, !tbaa !173
  %81 = icmp eq ptr %80, null, !dbg !209
  br i1 %81, label %84, label %82, !dbg !209

82:                                               ; preds = %76
  call void @free(ptr noundef nonnull %80) #6, !dbg !209
  %83 = load ptr, ptr %2, align 8, !dbg !209, !tbaa !161
  br label %84, !dbg !209

84:                                               ; preds = %76, %82
  %85 = phi ptr [ %77, %76 ], [ %83, %82 ], !dbg !209
  call void @llvm.dbg.value(metadata ptr %85, metadata !116, metadata !DIExpression()), !dbg !152
  call void @free(ptr noundef %85) #6, !dbg !210
  call void @llvm.dbg.value(metadata ptr null, metadata !116, metadata !DIExpression()), !dbg !152
  br label %86, !dbg !211

86:                                               ; preds = %12, %84
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6, !dbg !211
  br label %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !212 i32 @nn_socket(i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !217 i32 @nn_bind(i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !221 i32 @ylog_write(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare !dbg !225 void @exit(i32 noundef) local_unnamed_addr #3

declare !dbg !229 i32 @nn_recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !232 i32 @database_put(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr, i64, ptr noundef byval(%struct.ybin_s) align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !241 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

declare !dbg !244 i32 @database_del(ptr noundef, ptr noundef, ptr noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!51}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 16, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "writer_thread.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9fdba751c28a582e86262a953f23a9ae")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 16)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 96, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 12)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 42)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 29, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 19)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 26)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 36)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !16)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 28)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 37)
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !74, globals: !101, splitDebugInlining: false, nameTableKind: None)
!52 = !{!53, !59, !68}
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !54, line: 45, baseType: !55, size: 32, elements: !56)
!54 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!55 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "YFALSE", value: 0)
!58 = !DIEnumerator(name: "YTRUE", value: 1)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !60, line: 267, baseType: !55, size: 32, elements: !61)
!60 = !DIFile(filename: "../../lib/ylib/ylog.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!61 = !{!62, !63, !64, !65, !66, !67}
!62 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!63 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!64 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!65 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!66 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!67 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writer_action_e", file: !69, line: 13, baseType: !55, size: 32, elements: !70)
!69 = !DIFile(filename: "./writer_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "3a724ae2321376421ad42c1087f049ab")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "WRITE_PUT", value: 0)
!72 = !DIEnumerator(name: "WRITE_DEL", value: 1)
!73 = !DIEnumerator(name: "WRITE_DROP", value: 2)
!74 = !{!75, !98}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !77, line: 49, baseType: !78)
!77 = !DIFile(filename: "./finedb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "349d81e48e8fe143f3d7a471f97edb42")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !77, line: 41, size: 384, elements: !79)
!79 = !{!80, !82, !87, !89, !90, !94, !99}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !78, file: !77, line: 42, baseType: !81, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !54, line: 52, baseType: !53)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !78, file: !77, line: 43, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_env", file: !85, line: 197, baseType: !86)
!85 = !DIFile(filename: "../../lib/lmdb/lmdb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9ff9d4834608bdc966449cf81c779c6a")
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_env", file: !85, line: 197, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !78, file: !77, line: 44, baseType: !88, size: 32, offset: 128)
!88 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !78, file: !77, line: 45, baseType: !88, size: 32, offset: 160)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !78, file: !77, line: 46, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !92, line: 27, baseType: !93)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!93 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !78, file: !77, line: 47, baseType: !95, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "yvect_t", file: !96, line: 56, baseType: !97)
!96 = !DIFile(filename: "../../lib/ylib/yvect.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "73ac1eb655eaae5d93c48c36880d9ca2")
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !78, file: !77, line: 48, baseType: !100, size: 16, offset: 320)
!100 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!101 = !{!0, !7, !12, !18, !23, !28, !33, !38, !41, !46}
!102 = !{i32 7, !"Dwarf Version", i32 5}
!103 = !{i32 2, !"Debug Info Version", i32 3}
!104 = !{i32 1, !"wchar_size", i32 4}
!105 = !{i32 8, !"PIC Level", i32 2}
!106 = !{i32 7, !"PIE Level", i32 2}
!107 = !{i32 7, !"uwtable", i32 2}
!108 = !{!"clang version 16.0.0"}
!109 = distinct !DISubprogram(name: "writer_loop", scope: !2, file: !2, line: 10, type: !110, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !112)
!110 = !DISubroutineType(types: !111)
!111 = !{!98, !98}
!112 = !{!113, !114, !115, !116}
!113 = !DILocalVariable(name: "param", arg: 1, scope: !109, file: !2, line: 10, type: !98)
!114 = !DILocalVariable(name: "finedb", scope: !109, file: !2, line: 11, type: !75)
!115 = !DILocalVariable(name: "socket", scope: !109, file: !2, line: 12, type: !88)
!116 = !DILocalVariable(name: "msg", scope: !117, file: !2, line: 22, type: !120)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 21, column: 13)
!118 = distinct !DILexicalBlock(scope: !119, file: !2, line: 21, column: 2)
!119 = distinct !DILexicalBlock(scope: !109, file: !2, line: 21, column: 2)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "writer_msg_t", file: !69, line: 34, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writer_msg_s", file: !69, line: 28, size: 448, elements: !123)
!123 = !{!124, !126, !128, !137, !138}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !122, file: !69, line: 29, baseType: !125, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "writer_action_t", file: !69, line: 17, baseType: !68)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !122, file: !69, line: 30, baseType: !127, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !122, file: !69, line: 31, baseType: !129, size: 128, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !130, line: 33, baseType: !131)
!130 = !DIFile(filename: "../../lib/ylib/ybin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "7abd7d5e6afd31e8416cab6f0a6bf3b3")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !130, line: 27, size: 128, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !131, file: !130, line: 28, baseType: !98, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !131, file: !130, line: 29, baseType: !135, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !136, line: 46, baseType: !93)
!136 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!137 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !122, file: !69, line: 32, baseType: !129, size: 128, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "create_only", scope: !122, file: !69, line: 33, baseType: !81, size: 32, offset: 384)
!139 = !DILocation(line: 0, scope: !109)
!140 = !DILocation(line: 15, column: 16, scope: !141)
!141 = distinct !DILexicalBlock(scope: !109, file: !2, line: 15, column: 6)
!142 = !DILocation(line: 15, column: 43, scope: !141)
!143 = !DILocation(line: 15, column: 47, scope: !141)
!144 = !DILocation(line: 16, column: 6, scope: !141)
!145 = !DILocation(line: 16, column: 46, scope: !141)
!146 = !DILocation(line: 15, column: 6, scope: !109)
!147 = !DILocation(line: 25, column: 7, scope: !117)
!148 = !DILocation(line: 17, column: 3, scope: !149)
!149 = distinct !DILexicalBlock(scope: !141, file: !2, line: 16, column: 51)
!150 = !DILocation(line: 18, column: 3, scope: !149)
!151 = !DILocation(line: 22, column: 3, scope: !117)
!152 = !DILocation(line: 0, scope: !117)
!153 = !DILocation(line: 25, column: 7, scope: !154)
!154 = distinct !DILexicalBlock(scope: !117, file: !2, line: 25, column: 7)
!155 = !DILocation(line: 25, column: 55, scope: !154)
!156 = distinct !{!156, !157, !158}
!157 = !DILocation(line: 21, column: 2, scope: !119)
!158 = !DILocation(line: 47, column: 2, scope: !119)
!159 = !DILocation(line: 27, column: 7, scope: !160)
!160 = distinct !DILexicalBlock(scope: !117, file: !2, line: 27, column: 7)
!161 = !{!162, !162, i64 0}
!162 = !{!"any pointer", !163, i64 0}
!163 = !{!"omnipotent char", !164, i64 0}
!164 = !{!"Simple C/C++ TBAA"}
!165 = !DILocation(line: 27, column: 12, scope: !160)
!166 = !{!167, !163, i64 0}
!167 = !{!"writer_msg_s", !163, i64 0, !162, i64 8, !168, i64 16, !168, i64 32, !163, i64 48}
!168 = !{!"ybin_s", !162, i64 0, !169, i64 8}
!169 = !{!"long", !163, i64 0}
!170 = !DILocation(line: 27, column: 7, scope: !117)
!171 = !DILocation(line: 29, column: 4, scope: !172)
!172 = distinct !DILexicalBlock(scope: !160, file: !2, line: 27, column: 31)
!173 = !{!167, !162, i64 16}
!174 = !{!167, !162, i64 32}
!175 = !DILocation(line: 30, column: 29, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !2, line: 30, column: 8)
!177 = !{!178, !162, i64 8}
!178 = !{!"finedb_s", !163, i64 0, !162, i64 8, !179, i64 16, !179, i64 20, !169, i64 24, !162, i64 32, !180, i64 40}
!179 = !{!"int", !163, i64 0}
!180 = !{!"short", !163, i64 0}
!181 = !DILocation(line: 30, column: 45, scope: !176)
!182 = !DILocation(line: 30, column: 50, scope: !176)
!183 = !{!167, !163, i64 48}
!184 = !DILocation(line: 30, column: 68, scope: !176)
!185 = !{!167, !162, i64 8}
!186 = !DILocation(line: 30, column: 81, scope: !176)
!187 = !DILocation(line: 30, column: 92, scope: !176)
!188 = !DILocation(line: 30, column: 8, scope: !176)
!189 = !DILocation(line: 30, column: 98, scope: !176)
!190 = !DILocation(line: 30, column: 8, scope: !172)
!191 = !DILocation(line: 31, column: 5, scope: !176)
!192 = !DILocation(line: 33, column: 5, scope: !176)
!193 = !DILocation(line: 34, column: 4, scope: !172)
!194 = !DILocation(line: 35, column: 3, scope: !172)
!195 = !DILocation(line: 37, column: 4, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !2, line: 35, column: 38)
!197 = distinct !DILexicalBlock(scope: !160, file: !2, line: 35, column: 14)
!198 = !DILocation(line: 38, column: 29, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !2, line: 38, column: 8)
!200 = !DILocation(line: 38, column: 45, scope: !199)
!201 = !DILocation(line: 38, column: 50, scope: !199)
!202 = !DILocation(line: 38, column: 63, scope: !199)
!203 = !DILocation(line: 38, column: 8, scope: !199)
!204 = !DILocation(line: 38, column: 69, scope: !199)
!205 = !DILocation(line: 38, column: 8, scope: !196)
!206 = !DILocation(line: 39, column: 5, scope: !199)
!207 = !DILocation(line: 41, column: 5, scope: !199)
!208 = !DILocation(line: 44, column: 3, scope: !117)
!209 = !DILocation(line: 45, column: 3, scope: !117)
!210 = !DILocation(line: 46, column: 3, scope: !117)
!211 = !DILocation(line: 47, column: 2, scope: !118)
!212 = !DISubprogram(name: "nn_socket", scope: !213, file: !213, line: 239, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!213 = !DIFile(filename: "../../include/nanomsg/nn.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0c95956590725e5a1eedd7f7b192cc23")
!214 = !DISubroutineType(types: !215)
!215 = !{!88, !88, !88}
!216 = !{}
!217 = !DISubprogram(name: "nn_bind", scope: !213, file: !213, line: 245, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!218 = !DISubroutineType(types: !219)
!219 = !{!88, !88, !220}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!221 = !DISubprogram(name: "ylog_write", scope: !60, file: !60, line: 385, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!222 = !DISubroutineType(types: !223)
!223 = !{!81, !224, !220, !88, !220, !220, null}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_priority_t", file: !60, line: 278, baseType: !59)
!225 = !DISubprogram(name: "exit", scope: !226, file: !226, line: 624, type: !227, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !216)
!226 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!227 = !DISubroutineType(types: !228)
!228 = !{null, !88}
!229 = !DISubprogram(name: "nn_recv", scope: !213, file: !213, line: 249, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!230 = !DISubroutineType(types: !231)
!231 = !{!88, !88, !98, !135, !88}
!232 = !DISubprogram(name: "database_put", scope: !233, file: !233, line: 60, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!233 = !DIFile(filename: "./database.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e933d92e866140a8ca260943c439739b")
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !83, !238, !81, !220, !129, !129}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !237, line: 23, baseType: !88)
!237 = !DIFile(filename: "../../lib/ylib/yerror.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_txn", file: !85, line: 204, baseType: !240)
!240 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_txn", file: !85, line: 204, flags: DIFlagFwdDecl)
!241 = !DISubprogram(name: "free", scope: !226, file: !226, line: 555, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !98}
!244 = !DISubprogram(name: "database_del", scope: !233, file: !233, line: 70, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!245 = !DISubroutineType(types: !246)
!246 = !{!236, !83, !238, !220, !129}
