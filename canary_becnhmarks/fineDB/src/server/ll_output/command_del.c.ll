; ModuleID = 'command_del.c'
source_filename = "command_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.writer_msg_s = type { i32, ptr, %struct.ybin_s, %struct.ybin_s, i32 }
%struct.ybin_s = type { ptr, i64 }
%struct.tcp_thread_s = type { i64, ptr, i32, i32, ptr, ptr }
%struct.finedb_s = type { i32, ptr, i32, i32, i64, ptr, i16 }

@.str = private unnamed_addr constant [14 x i8] c"command_del.c\00", align 1, !dbg !0
@__FUNCTION__.command_del = private unnamed_addr constant [12 x i8] c"command_del\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [12 x i8] c"DEL command\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [41 x i8] c"Unable to send message to writer thread.\00", align 1, !dbg !16
@.str.3 = private unnamed_addr constant [27 x i8] c"Deletion done on database.\00", align 1, !dbg !21
@.str.4 = private unnamed_addr constant [35 x i8] c"Unable to delete data on database.\00", align 1, !dbg !26
@.str.5 = private unnamed_addr constant [15 x i8] c"DEL command %s\00", align 1, !dbg !31
@.str.6 = private unnamed_addr constant [3 x i8] c"OK\00", align 1, !dbg !36
@.str.7 = private unnamed_addr constant [7 x i8] c"failed\00", align 1, !dbg !41
@.str.8 = private unnamed_addr constant [10 x i8] c"PUT error\00", align 1, !dbg !46

; Function Attrs: nounwind uwtable
define dso_local i32 @command_del(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !101 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !154, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i32 %1, metadata !155, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i32 %2, metadata !156, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i32 %3, metadata !157, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata ptr %4, metadata !158, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata ptr null, metadata !165, metadata !DIExpression()), !dbg !185
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9, !dbg !186
  call void @llvm.dbg.value(metadata ptr null, metadata !166, metadata !DIExpression()), !dbg !185
  %7 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 17, ptr noundef nonnull @__FUNCTION__.command_del, ptr noundef nonnull @.str.1) #9, !dbg !187
  %8 = tail call i32 @connection_read_data(ptr noundef %0, ptr noundef %4, i64 noundef 2) #9, !dbg !188
  %9 = icmp eq i32 %8, 1, !dbg !190
  br i1 %9, label %10, label %69, !dbg !191

10:                                               ; preds = %5
  %11 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef 2) #9, !dbg !192
  call void @llvm.dbg.value(metadata ptr %11, metadata !159, metadata !DIExpression()), !dbg !185
  %12 = load i16, ptr %11, align 2, !dbg !193, !tbaa !194
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  call void @llvm.dbg.value(metadata i16 %13, metadata !163, metadata !DIExpression()), !dbg !185
  %14 = zext i16 %13 to i64, !dbg !198
  %15 = tail call i32 @connection_read_data(ptr noundef %0, ptr noundef %4, i64 noundef %14) #9, !dbg !200
  %16 = icmp eq i32 %15, 1, !dbg !201
  br i1 %16, label %17, label %69, !dbg !202

17:                                               ; preds = %10
  %18 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef %14) #9, !dbg !203
  call void @llvm.dbg.value(metadata ptr %18, metadata !164, metadata !DIExpression()), !dbg !185
  %19 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %14) #10, !dbg !204
  call void @llvm.dbg.value(metadata ptr %19, metadata !165, metadata !DIExpression()), !dbg !185
  %20 = icmp eq ptr %19, null, !dbg !206
  br i1 %20, label %69, label %21, !dbg !207

21:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 1 %18, i64 %14, i1 false), !dbg !208
  %22 = icmp eq i32 %1, 0, !dbg !209
  br i1 %22, label %23, label %25, !dbg !211

23:                                               ; preds = %21
  %24 = tail call i32 @connection_send_response(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #9, !dbg !212
  br label %25, !dbg !214

25:                                               ; preds = %23, %21
  %26 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #10, !dbg !215
  call void @llvm.dbg.value(metadata ptr %26, metadata !166, metadata !DIExpression()), !dbg !185
  store ptr %26, ptr %6, align 8, !dbg !217, !tbaa !218
  %27 = icmp eq ptr %26, null, !dbg !220
  br i1 %27, label %71, label %28, !dbg !221

28:                                               ; preds = %25
  store i32 1, ptr %26, align 8, !dbg !222, !tbaa !223
  call void @llvm.dbg.value(metadata ptr %26, metadata !166, metadata !DIExpression()), !dbg !185
  %29 = getelementptr inbounds %struct.writer_msg_s, ptr %26, i64 0, i32 2, !dbg !227
  %30 = tail call ptr @ybin_set(ptr noundef nonnull %29, ptr noundef nonnull %19, i64 noundef %14) #9, !dbg !228
  br i1 %22, label %31, label %46, !dbg !229

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !230
  %33 = load ptr, ptr %32, align 8, !dbg !230, !tbaa !233
  %34 = icmp eq ptr %33, null, !dbg !236
  br i1 %34, label %37, label %35, !dbg !236

35:                                               ; preds = %31
  %36 = tail call noalias ptr @strdup(ptr noundef nonnull %33) #9, !dbg !237
  br label %37, !dbg !236

37:                                               ; preds = %31, %35
  %38 = phi ptr [ %36, %35 ], [ null, %31 ], !dbg !236
  call void @llvm.dbg.value(metadata ptr %26, metadata !166, metadata !DIExpression()), !dbg !185
  %39 = getelementptr inbounds %struct.writer_msg_s, ptr %26, i64 0, i32 1, !dbg !238
  store ptr %38, ptr %39, align 8, !dbg !239, !tbaa !240
  %40 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 3, !dbg !241
  %41 = load i32, ptr %40, align 4, !dbg !241, !tbaa !243
  call void @llvm.dbg.value(metadata ptr %6, metadata !166, metadata !DIExpression(DW_OP_deref)), !dbg !185
  %42 = call i32 @nn_send(i32 noundef %41, ptr noundef nonnull %6, i64 noundef 8, i32 noundef 0) #9, !dbg !244
  %43 = icmp slt i32 %42, 0, !dbg !245
  br i1 %43, label %44, label %78, !dbg !246

44:                                               ; preds = %37
  %45 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @__FUNCTION__.command_del, ptr noundef nonnull @.str.2) #9, !dbg !247
  br label %71, !dbg !249

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 1, !dbg !250
  %48 = load ptr, ptr %47, align 8, !dbg !250, !tbaa !252
  %49 = getelementptr inbounds %struct.finedb_s, ptr %48, i64 0, i32 1, !dbg !253
  %50 = load ptr, ptr %49, align 8, !dbg !253, !tbaa !254
  %51 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5, !dbg !256
  %52 = load ptr, ptr %51, align 8, !dbg !256, !tbaa !257
  %53 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !258
  %54 = load ptr, ptr %53, align 8, !dbg !258, !tbaa !233
  call void @llvm.dbg.value(metadata ptr %26, metadata !166, metadata !DIExpression()), !dbg !185
  %55 = load ptr, ptr %29, align 8, !dbg !259
  %56 = getelementptr inbounds %struct.writer_msg_s, ptr %26, i64 0, i32 2, i32 1, !dbg !259
  %57 = load i64, ptr %56, align 8, !dbg !259
  %58 = tail call i32 @database_del(ptr noundef %50, ptr noundef %52, ptr noundef %54, ptr %55, i64 %57) #9, !dbg !259
  %59 = icmp eq i32 %58, 1, !dbg !260
  br i1 %59, label %60, label %62, !dbg !261

60:                                               ; preds = %46
  %61 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 52, ptr noundef nonnull @__FUNCTION__.command_del, ptr noundef nonnull @.str.3) #9, !dbg !262
  call void @llvm.dbg.value(metadata i8 1, metadata !183, metadata !DIExpression()), !dbg !185
  br label %64, !dbg !264

62:                                               ; preds = %46
  %63 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 55, ptr noundef nonnull @__FUNCTION__.command_del, ptr noundef nonnull @.str.4) #9, !dbg !265
  call void @llvm.dbg.value(metadata i8 0, metadata !183, metadata !DIExpression()), !dbg !185
  br label %64

64:                                               ; preds = %60, %62
  %65 = phi i32 [ 1, %60 ], [ 6, %62 ], !dbg !185
  %66 = phi ptr [ @.str.6, %60 ], [ @.str.7, %62 ], !dbg !185
  call void @llvm.dbg.value(metadata i8 poison, metadata !183, metadata !DIExpression()), !dbg !185
  tail call void @free(ptr noundef nonnull %19) #9, !dbg !267
  call void @llvm.dbg.value(metadata ptr null, metadata !165, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata ptr %26, metadata !166, metadata !DIExpression()), !dbg !185
  tail call void @free(ptr noundef nonnull %26) #9, !dbg !268
  call void @llvm.dbg.value(metadata ptr null, metadata !166, metadata !DIExpression()), !dbg !185
  %67 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 60, ptr noundef nonnull @__FUNCTION__.command_del, ptr noundef nonnull @.str.5, ptr noundef nonnull %66) #9, !dbg !269
  %68 = tail call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef %65, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #9, !dbg !270
  br label %78, !dbg !271

69:                                               ; preds = %17, %10, %5
  call void @llvm.dbg.value(metadata ptr null, metadata !165, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.label(metadata !184), !dbg !272
  %70 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 66, ptr noundef nonnull @__FUNCTION__.command_del, ptr noundef nonnull @.str.8) #9, !dbg !273
  call void @llvm.dbg.value(metadata ptr null, metadata !166, metadata !DIExpression()), !dbg !185
  br label %76, !dbg !274

71:                                               ; preds = %25, %44
  call void @llvm.dbg.value(metadata ptr %19, metadata !165, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.label(metadata !184), !dbg !272
  %72 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 66, ptr noundef nonnull @__FUNCTION__.command_del, ptr noundef nonnull @.str.8) #9, !dbg !273
  call void @free(ptr noundef nonnull %19) #9, !dbg !275
  %73 = load ptr, ptr %6, align 8, !dbg !274, !tbaa !218
  call void @llvm.dbg.value(metadata ptr null, metadata !165, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata ptr %73, metadata !166, metadata !DIExpression()), !dbg !185
  %74 = icmp eq ptr %73, null, !dbg !274
  br i1 %74, label %76, label %75, !dbg !274

75:                                               ; preds = %71
  call void @free(ptr noundef nonnull %73) #9, !dbg !274
  br label %76, !dbg !274

76:                                               ; preds = %69, %71, %75
  call void @llvm.dbg.value(metadata ptr null, metadata !166, metadata !DIExpression()), !dbg !185
  store ptr null, ptr %6, align 8, !dbg !274, !tbaa !218
  %77 = call i32 @connection_send_response(ptr noundef %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #9, !dbg !276
  br label %78, !dbg !277

78:                                               ; preds = %37, %76, %64
  %79 = phi i32 [ -5, %76 ], [ %68, %64 ], [ 1, %37 ], !dbg !185
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9, !dbg !278
  ret i32 %79, !dbg !278
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !279 i32 @ylog_write(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !285 i32 @connection_read_data(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !288 ptr @ydynabin_forward(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !291 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !295 i32 @connection_send_response(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !301 ptr @ybin_set(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !305 noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #5

declare !dbg !309 i32 @nn_send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !313 i32 @database_del(ptr noundef, ptr noundef, ptr noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !317 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!51}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "command_del.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "a89492865516366155a7a5f348975dd0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 14)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 96, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 12)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !11)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 41)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 27)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 35)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 15)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 3)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 7)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 10)
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !85, globals: !93, splitDebugInlining: false, nameTableKind: None)
!52 = !{!53, !59, !65, !74}
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !54, line: 45, baseType: !55, size: 32, elements: !56)
!54 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!55 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "YFALSE", value: 0)
!58 = !DIEnumerator(name: "YTRUE", value: 1)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writer_action_e", file: !60, line: 13, baseType: !55, size: 32, elements: !61)
!60 = !DIFile(filename: "./writer_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "3a724ae2321376421ad42c1087f049ab")
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "WRITE_PUT", value: 0)
!63 = !DIEnumerator(name: "WRITE_DEL", value: 1)
!64 = !DIEnumerator(name: "WRITE_DROP", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !66, line: 267, baseType: !55, size: 32, elements: !67)
!66 = !DIFile(filename: "../../lib/ylib/ylog.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!67 = !{!68, !69, !70, !71, !72, !73}
!68 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!69 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!70 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!71 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!72 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!73 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol_response_e", file: !75, line: 108, baseType: !55, size: 32, elements: !76)
!75 = !DIFile(filename: "./protocol.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "90e12b9ba2bd5e3d7e691fccfd080d02")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84}
!77 = !DIEnumerator(name: "RESP_ERR_UNDEFINED", value: 0)
!78 = !DIEnumerator(name: "RESP_OK", value: 1)
!79 = !DIEnumerator(name: "RESP_ERR_PROTOCOL", value: 2)
!80 = !DIEnumerator(name: "RESP_ERR_SERVER", value: 3)
!81 = !DIEnumerator(name: "RESP_ERR_FULL_DB", value: 4)
!82 = !DIEnumerator(name: "RESP_ERR_TOO_MANY_DB", value: 5)
!83 = !DIEnumerator(name: "RESP_ERR_BAD_NAME", value: 6)
!84 = !DIEnumerator(name: "RESP_ERR_TRANSACTION", value: 7)
!85 = !{!86, !87, !90}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !88, line: 46, baseType: !89)
!88 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!89 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !91, line: 40, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !{!0, !7, !13, !16, !21, !26, !31, !36, !41, !46}
!94 = !{i32 7, !"Dwarf Version", i32 5}
!95 = !{i32 2, !"Debug Info Version", i32 3}
!96 = !{i32 1, !"wchar_size", i32 4}
!97 = !{i32 8, !"PIC Level", i32 2}
!98 = !{i32 7, !"PIE Level", i32 2}
!99 = !{i32 7, !"uwtable", i32 2}
!100 = !{!"clang version 16.0.0"}
!101 = distinct !DISubprogram(name: "command_del", scope: !2, file: !2, line: 11, type: !102, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !153)
!102 = !DISubroutineType(types: !103)
!103 = !{!104, !107, !122, !122, !122, !144}
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !105, line: 23, baseType: !106)
!105 = !DIFile(filename: "../../lib/ylib/yerror.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!106 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !109, line: 30, baseType: !110)
!109 = !DIFile(filename: "./connection_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "285f9cd07088f6d468faef64cb1dc74b")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !109, line: 23, size: 320, elements: !111)
!111 = !{!112, !115, !136, !137, !138, !140}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !110, file: !109, line: 24, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !114, line: 27, baseType: !89)
!114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!115 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !110, file: !109, line: 25, baseType: !116, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !118, line: 49, baseType: !119)
!118 = !DIFile(filename: "./finedb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "349d81e48e8fe143f3d7a471f97edb42")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !118, line: 41, size: 384, elements: !120)
!120 = !{!121, !123, !128, !129, !130, !131, !135}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !119, file: !118, line: 42, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !54, line: 52, baseType: !53)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !119, file: !118, line: 43, baseType: !124, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_env", file: !126, line: 197, baseType: !127)
!126 = !DIFile(filename: "../../lib/lmdb/lmdb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9ff9d4834608bdc966449cf81c779c6a")
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_env", file: !126, line: 197, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !119, file: !118, line: 44, baseType: !106, size: 32, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !119, file: !118, line: 45, baseType: !106, size: 32, offset: 160)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !119, file: !118, line: 46, baseType: !113, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !119, file: !118, line: 47, baseType: !132, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "yvect_t", file: !133, line: 56, baseType: !134)
!133 = !DIFile(filename: "../../lib/ylib/yvect.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "73ac1eb655eaae5d93c48c36880d9ca2")
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !119, file: !118, line: 48, baseType: !92, size: 16, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !110, file: !109, line: 26, baseType: !106, size: 32, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !110, file: !109, line: 27, baseType: !106, size: 32, offset: 160)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !110, file: !109, line: 28, baseType: !139, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !110, file: !109, line: 29, baseType: !141, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_txn", file: !126, line: 204, baseType: !143)
!143 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_txn", file: !126, line: 204, flags: DIFlagFwdDecl)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !146, line: 45, baseType: !147)
!146 = !DIFile(filename: "../../lib/ylib/ydynabin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e9b56a3dd8293288d1beb69b8bafd958")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !146, line: 37, size: 256, elements: !148)
!148 = !{!149, !150, !151, !152}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !147, file: !146, line: 38, baseType: !86, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !147, file: !146, line: 39, baseType: !87, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !147, file: !146, line: 40, baseType: !87, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !147, file: !146, line: 41, baseType: !87, size: 64, offset: 192)
!153 = !{!154, !155, !156, !157, !158, !159, !163, !164, !165, !166, !183, !184}
!154 = !DILocalVariable(name: "thread", arg: 1, scope: !101, file: !2, line: 11, type: !107)
!155 = !DILocalVariable(name: "sync", arg: 2, scope: !101, file: !2, line: 11, type: !122)
!156 = !DILocalVariable(name: "compress", arg: 3, scope: !101, file: !2, line: 11, type: !122)
!157 = !DILocalVariable(name: "serialized", arg: 4, scope: !101, file: !2, line: 11, type: !122)
!158 = !DILocalVariable(name: "buff", arg: 5, scope: !101, file: !2, line: 11, type: !144)
!159 = !DILocalVariable(name: "pkey_len", scope: !101, file: !2, line: 12, type: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !162, line: 25, baseType: !90)
!162 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!163 = !DILocalVariable(name: "key_len", scope: !101, file: !2, line: 12, type: !161)
!164 = !DILocalVariable(name: "ptr", scope: !101, file: !2, line: 13, type: !86)
!165 = !DILocalVariable(name: "key", scope: !101, file: !2, line: 13, type: !86)
!166 = !DILocalVariable(name: "msg", scope: !101, file: !2, line: 14, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "writer_msg_t", file: !60, line: 34, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writer_msg_s", file: !60, line: 28, size: 448, elements: !170)
!170 = !{!171, !173, !174, !181, !182}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !169, file: !60, line: 29, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "writer_action_t", file: !60, line: 17, baseType: !59)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !169, file: !60, line: 30, baseType: !139, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !169, file: !60, line: 31, baseType: !175, size: 128, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !176, line: 33, baseType: !177)
!176 = !DIFile(filename: "../../lib/ylib/ybin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "7abd7d5e6afd31e8416cab6f0a6bf3b3")
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !176, line: 27, size: 128, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !177, file: !176, line: 28, baseType: !86, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !177, file: !176, line: 29, baseType: !87, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !169, file: !60, line: 32, baseType: !175, size: 128, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "create_only", scope: !169, file: !60, line: 33, baseType: !122, size: 32, offset: 384)
!183 = !DILocalVariable(name: "answer", scope: !101, file: !2, line: 15, type: !4)
!184 = !DILabel(scope: !101, name: "error", file: !2, line: 65)
!185 = !DILocation(line: 0, scope: !101)
!186 = !DILocation(line: 14, column: 2, scope: !101)
!187 = !DILocation(line: 17, column: 2, scope: !101)
!188 = !DILocation(line: 19, column: 6, scope: !189)
!189 = distinct !DILexicalBlock(scope: !101, file: !2, line: 19, column: 6)
!190 = !DILocation(line: 19, column: 58, scope: !189)
!191 = !DILocation(line: 19, column: 6, scope: !101)
!192 = !DILocation(line: 21, column: 13, scope: !101)
!193 = !DILocation(line: 22, column: 12, scope: !101)
!194 = !{!195, !195, i64 0}
!195 = !{!"short", !196, i64 0}
!196 = !{!"omnipotent char", !197, i64 0}
!197 = !{!"Simple C/C++ TBAA"}
!198 = !DILocation(line: 24, column: 41, scope: !199)
!199 = distinct !DILexicalBlock(scope: !101, file: !2, line: 24, column: 6)
!200 = !DILocation(line: 24, column: 6, scope: !199)
!201 = !DILocation(line: 24, column: 58, scope: !199)
!202 = !DILocation(line: 24, column: 6, scope: !101)
!203 = !DILocation(line: 26, column: 8, scope: !101)
!204 = !DILocation(line: 27, column: 13, scope: !205)
!205 = distinct !DILexicalBlock(scope: !101, file: !2, line: 27, column: 6)
!206 = !DILocation(line: 27, column: 39, scope: !205)
!207 = !DILocation(line: 27, column: 6, scope: !101)
!208 = !DILocation(line: 29, column: 2, scope: !101)
!209 = !DILocation(line: 31, column: 7, scope: !210)
!210 = distinct !DILexicalBlock(scope: !101, file: !2, line: 31, column: 6)
!211 = !DILocation(line: 31, column: 6, scope: !101)
!212 = !DILocation(line: 33, column: 3, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !2, line: 31, column: 13)
!214 = !DILocation(line: 34, column: 2, scope: !213)
!215 = !DILocation(line: 37, column: 13, scope: !216)
!216 = distinct !DILexicalBlock(scope: !101, file: !2, line: 37, column: 6)
!217 = !DILocation(line: 37, column: 11, scope: !216)
!218 = !{!219, !219, i64 0}
!219 = !{!"any pointer", !196, i64 0}
!220 = !DILocation(line: 37, column: 44, scope: !216)
!221 = !DILocation(line: 37, column: 6, scope: !101)
!222 = !DILocation(line: 39, column: 12, scope: !101)
!223 = !{!224, !196, i64 0}
!224 = !{!"writer_msg_s", !196, i64 0, !219, i64 8, !225, i64 16, !225, i64 32, !196, i64 48}
!225 = !{!"ybin_s", !219, i64 0, !226, i64 8}
!226 = !{!"long", !196, i64 0}
!227 = !DILocation(line: 40, column: 17, scope: !101)
!228 = !DILocation(line: 40, column: 2, scope: !101)
!229 = !DILocation(line: 41, column: 6, scope: !101)
!230 = !DILocation(line: 42, column: 25, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !2, line: 41, column: 13)
!232 = distinct !DILexicalBlock(scope: !101, file: !2, line: 41, column: 6)
!233 = !{!234, !219, i64 24}
!234 = !{!"tcp_thread_s", !226, i64 0, !219, i64 8, !235, i64 16, !235, i64 20, !219, i64 24, !219, i64 32}
!235 = !{!"int", !196, i64 0}
!236 = !DILocation(line: 42, column: 17, scope: !231)
!237 = !DILocation(line: 42, column: 34, scope: !231)
!238 = !DILocation(line: 42, column: 8, scope: !231)
!239 = !DILocation(line: 42, column: 15, scope: !231)
!240 = !{!224, !219, i64 8}
!241 = !DILocation(line: 44, column: 23, scope: !242)
!242 = distinct !DILexicalBlock(scope: !231, file: !2, line: 44, column: 7)
!243 = !{!234, !235, i64 20}
!244 = !DILocation(line: 44, column: 7, scope: !242)
!245 = !DILocation(line: 44, column: 57, scope: !242)
!246 = !DILocation(line: 44, column: 7, scope: !231)
!247 = !DILocation(line: 45, column: 4, scope: !248)
!248 = distinct !DILexicalBlock(scope: !242, file: !2, line: 44, column: 62)
!249 = !DILocation(line: 46, column: 4, scope: !248)
!250 = !DILocation(line: 51, column: 27, scope: !251)
!251 = distinct !DILexicalBlock(scope: !101, file: !2, line: 51, column: 6)
!252 = !{!234, !219, i64 8}
!253 = !DILocation(line: 51, column: 35, scope: !251)
!254 = !{!255, !219, i64 8}
!255 = !{!"finedb_s", !196, i64 0, !219, i64 8, !235, i64 16, !235, i64 20, !226, i64 24, !219, i64 32, !195, i64 40}
!256 = !DILocation(line: 51, column: 53, scope: !251)
!257 = !{!234, !219, i64 32}
!258 = !DILocation(line: 51, column: 74, scope: !251)
!259 = !DILocation(line: 51, column: 6, scope: !251)
!260 = !DILocation(line: 51, column: 93, scope: !251)
!261 = !DILocation(line: 51, column: 6, scope: !101)
!262 = !DILocation(line: 52, column: 3, scope: !263)
!263 = distinct !DILexicalBlock(scope: !251, file: !2, line: 51, column: 105)
!264 = !DILocation(line: 54, column: 2, scope: !263)
!265 = !DILocation(line: 55, column: 3, scope: !266)
!266 = distinct !DILexicalBlock(scope: !251, file: !2, line: 54, column: 9)
!267 = !DILocation(line: 58, column: 2, scope: !101)
!268 = !DILocation(line: 59, column: 2, scope: !101)
!269 = !DILocation(line: 60, column: 2, scope: !101)
!270 = !DILocation(line: 63, column: 10, scope: !101)
!271 = !DILocation(line: 63, column: 2, scope: !101)
!272 = !DILocation(line: 65, column: 1, scope: !101)
!273 = !DILocation(line: 66, column: 2, scope: !101)
!274 = !DILocation(line: 68, column: 2, scope: !101)
!275 = !DILocation(line: 67, column: 2, scope: !101)
!276 = !DILocation(line: 69, column: 2, scope: !101)
!277 = !DILocation(line: 70, column: 2, scope: !101)
!278 = !DILocation(line: 71, column: 1, scope: !101)
!279 = !DISubprogram(name: "ylog_write", scope: !66, file: !66, line: 385, type: !280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !284)
!280 = !DISubroutineType(types: !281)
!281 = !{!122, !282, !283, !106, !283, !283, null}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_priority_t", file: !66, line: 278, baseType: !65)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!284 = !{}
!285 = !DISubprogram(name: "connection_read_data", scope: !109, file: !109, line: 94, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !284)
!286 = !DISubroutineType(types: !287)
!287 = !{!104, !107, !144, !87}
!288 = !DISubprogram(name: "ydynabin_forward", scope: !146, file: !146, line: 82, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !284)
!289 = !DISubroutineType(types: !290)
!290 = !{!86, !144, !87}
!291 = !DISubprogram(name: "calloc", scope: !292, file: !292, line: 543, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !284)
!292 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!293 = !DISubroutineType(types: !294)
!294 = !{!86, !87, !87}
!295 = !DISubprogram(name: "connection_send_response", scope: !109, file: !109, line: 107, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !284)
!296 = !DISubroutineType(types: !297)
!297 = !{!104, !107, !298, !122, !122, !299, !87}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_response_t", file: !75, line: 117, baseType: !74)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!301 = !DISubprogram(name: "ybin_set", scope: !176, file: !176, line: 46, type: !302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !284)
!302 = !DISubroutineType(types: !303)
!303 = !{!304, !304, !86, !87}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!305 = !DISubprogram(name: "strdup", scope: !306, file: !306, line: 187, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !284)
!306 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!307 = !DISubroutineType(types: !308)
!308 = !{!139, !283}
!309 = !DISubprogram(name: "nn_send", scope: !310, file: !310, line: 248, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !284)
!310 = !DIFile(filename: "../../include/nanomsg/nn.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0c95956590725e5a1eedd7f7b192cc23")
!311 = !DISubroutineType(types: !312)
!312 = !{!106, !106, !299, !87, !106}
!313 = !DISubprogram(name: "database_del", scope: !314, file: !314, line: 70, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !284)
!314 = !DIFile(filename: "./database.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e933d92e866140a8ca260943c439739b")
!315 = !DISubroutineType(types: !316)
!316 = !{!104, !124, !141, !283, !175}
!317 = !DISubprogram(name: "free", scope: !292, file: !292, line: 555, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !284)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !86}
