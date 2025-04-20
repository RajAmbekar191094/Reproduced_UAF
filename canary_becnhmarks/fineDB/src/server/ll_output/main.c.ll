; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@finedb_g = dso_local local_unnamed_addr global ptr null, align 8, !dbg !0
@.str = private unnamed_addr constant [15 x i8] c"dht:n:s:f:p:i:\00", align 1, !dbg !42
@optarg = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"main.c\00", align 1, !dbg !47
@__FUNCTION__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1, !dbg !52
@.str.2 = private unnamed_addr constant [104 x i8] c"Configuration\0A\09# threads: %d\0A\09# dbs: %d\0A\09Map size: %d\0A\09Port number: %d\0A\09Database path: %s\0A\09Timeout: %d\0A\00", align 1, !dbg !58
@__FUNCTION__.signal_handler = private unnamed_addr constant [15 x i8] c"signal_handler\00", align 1, !dbg !63
@.str.3 = private unnamed_addr constant [29 x i8] c"Interruption signal catched.\00", align 1, !dbg !66
@str = private unnamed_addr constant [530 x i8] c"Usage: finedb [-t number] [-n number] [-s number] [-p port] [-f path] [-i seconds] [-h] [-d]\0A\09-t number    Set the number of connection threads.\0A\09-n number    Set the maximum number of opened databases.\0A\09-s number    Set the database map size (maximum size on disk).\0A\09-p port      Listening port number.\0A\09-f path      Path to the database directory.\0A\09-i seconds   NUmber of seconds before considering a connection is timing out.\0A\09-h           Shows this help and exits.\0A\09-d           Debug mode. Error messages are more verbose.\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !105 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !109, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata ptr %1, metadata !110, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata ptr @.str, metadata !111, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i32 1, metadata !113, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i64 10485760, metadata !114, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i16 15, metadata !115, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i16 11138, metadata !116, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i16 30, metadata !117, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata ptr null, metadata !118, metadata !DIExpression()), !dbg !120
  %3 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull @signal_handler) #10, !dbg !121
  %4 = load ptr, ptr %1, align 8, !dbg !122, !tbaa !123
  tail call void @ylog_init(i32 noundef 1, ptr noundef null, ptr noundef %4, i32 noundef 524288) #10, !dbg !122
  tail call void @ylog_set_prio(i32 noundef 2) #10, !dbg !127
  br label %5, !dbg !128

5:                                                ; preds = %13, %2
  %6 = phi i64 [ 10485760, %2 ], [ %14, %13 ], !dbg !129
  %7 = phi i16 [ 15, %2 ], [ %15, %13 ], !dbg !130
  %8 = phi i16 [ 11138, %2 ], [ %16, %13 ], !dbg !131
  %9 = phi i16 [ 30, %2 ], [ %17, %13 ], !dbg !132
  %10 = phi ptr [ null, %2 ], [ %18, %13 ], !dbg !133
  %11 = phi i32 [ 1, %2 ], [ %19, %13 ], !dbg !134
  call void @llvm.dbg.value(metadata i32 %11, metadata !113, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata ptr %10, metadata !118, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i16 %9, metadata !117, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i16 %8, metadata !116, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i16 %7, metadata !115, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i64 %6, metadata !114, metadata !DIExpression()), !dbg !120
  %12 = tail call i32 @getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str) #10, !dbg !135
  call void @llvm.dbg.value(metadata i32 %12, metadata !112, metadata !DIExpression()), !dbg !120
  switch i32 %12, label %13 [
    i32 -1, label %46
    i32 116, label %20
    i32 110, label %24
    i32 115, label %28
    i32 112, label %33
    i32 102, label %37
    i32 105, label %40
    i32 100, label %44
    i32 104, label %45
  ], !dbg !128

13:                                               ; preds = %5, %44, %40, %37, %33, %28, %24, %20
  %14 = phi i64 [ %6, %44 ], [ %6, %40 ], [ %6, %37 ], [ %6, %33 ], [ %32, %28 ], [ %6, %24 ], [ %6, %20 ], [ %6, %5 ]
  %15 = phi i16 [ %7, %44 ], [ %7, %40 ], [ %7, %37 ], [ %7, %33 ], [ %7, %28 ], [ %7, %24 ], [ %23, %20 ], [ %7, %5 ]
  %16 = phi i16 [ %8, %44 ], [ %8, %40 ], [ %8, %37 ], [ %36, %33 ], [ %8, %28 ], [ %8, %24 ], [ %8, %20 ], [ %8, %5 ]
  %17 = phi i16 [ %9, %44 ], [ %43, %40 ], [ %9, %37 ], [ %9, %33 ], [ %9, %28 ], [ %9, %24 ], [ %9, %20 ], [ %9, %5 ]
  %18 = phi ptr [ %10, %44 ], [ %10, %40 ], [ %39, %37 ], [ %10, %33 ], [ %10, %28 ], [ %10, %24 ], [ %10, %20 ], [ %10, %5 ]
  %19 = phi i32 [ %11, %44 ], [ %11, %40 ], [ %11, %37 ], [ %11, %33 ], [ %11, %28 ], [ %27, %24 ], [ %11, %20 ], [ %11, %5 ]
  br label %5, !dbg !120, !llvm.loop !136

20:                                               ; preds = %5
  %21 = load ptr, ptr @optarg, align 8, !dbg !138, !tbaa !123
  call void @llvm.dbg.value(metadata ptr %21, metadata !141, metadata !DIExpression()), !dbg !148
  %22 = tail call i64 @strtol(ptr nocapture noundef nonnull %21, ptr noundef null, i32 noundef 10) #10, !dbg !150
  %23 = trunc i64 %22 to i16, !dbg !151
  call void @llvm.dbg.value(metadata i16 %23, metadata !115, metadata !DIExpression()), !dbg !120
  br label %13, !dbg !152

24:                                               ; preds = %5
  %25 = load ptr, ptr @optarg, align 8, !dbg !153, !tbaa !123
  call void @llvm.dbg.value(metadata ptr %25, metadata !141, metadata !DIExpression()), !dbg !154
  %26 = tail call i64 @strtol(ptr nocapture noundef nonnull %25, ptr noundef null, i32 noundef 10) #10, !dbg !156
  %27 = trunc i64 %26 to i32, !dbg !157
  call void @llvm.dbg.value(metadata i32 %27, metadata !113, metadata !DIExpression()), !dbg !120
  br label %13, !dbg !158

28:                                               ; preds = %5
  %29 = load ptr, ptr @optarg, align 8, !dbg !159, !tbaa !123
  call void @llvm.dbg.value(metadata ptr %29, metadata !141, metadata !DIExpression()), !dbg !160
  %30 = tail call i64 @strtol(ptr nocapture noundef nonnull %29, ptr noundef null, i32 noundef 10) #10, !dbg !162
  %31 = shl i64 %30, 32, !dbg !163
  %32 = ashr exact i64 %31, 32, !dbg !163
  call void @llvm.dbg.value(metadata i64 %32, metadata !114, metadata !DIExpression()), !dbg !120
  br label %13, !dbg !164

33:                                               ; preds = %5
  %34 = load ptr, ptr @optarg, align 8, !dbg !165, !tbaa !123
  call void @llvm.dbg.value(metadata ptr %34, metadata !141, metadata !DIExpression()), !dbg !166
  %35 = tail call i64 @strtol(ptr nocapture noundef nonnull %34, ptr noundef null, i32 noundef 10) #10, !dbg !168
  %36 = trunc i64 %35 to i16, !dbg !169
  call void @llvm.dbg.value(metadata i16 %36, metadata !116, metadata !DIExpression()), !dbg !120
  br label %13, !dbg !170

37:                                               ; preds = %5
  %38 = load ptr, ptr @optarg, align 8, !dbg !171, !tbaa !123
  %39 = tail call noalias ptr @strdup(ptr noundef %38) #10, !dbg !172
  call void @llvm.dbg.value(metadata ptr %39, metadata !118, metadata !DIExpression()), !dbg !120
  br label %13, !dbg !173

40:                                               ; preds = %5
  %41 = load ptr, ptr @optarg, align 8, !dbg !174, !tbaa !123
  call void @llvm.dbg.value(metadata ptr %41, metadata !141, metadata !DIExpression()), !dbg !175
  %42 = tail call i64 @strtol(ptr nocapture noundef nonnull %41, ptr noundef null, i32 noundef 10) #10, !dbg !177
  %43 = trunc i64 %42 to i16, !dbg !178
  call void @llvm.dbg.value(metadata i16 %43, metadata !117, metadata !DIExpression()), !dbg !120
  br label %13, !dbg !179

44:                                               ; preds = %5
  tail call void @ylog_set_prio(i32 noundef 0) #10, !dbg !180
  br label %13, !dbg !181

45:                                               ; preds = %5
  tail call fastcc void @usage(), !dbg !182
  tail call void @exit(i32 noundef 0) #11, !dbg !183
  unreachable, !dbg !183

46:                                               ; preds = %5
  %47 = zext i16 %7 to i32, !dbg !184
  %48 = zext i16 %8 to i32, !dbg !184
  %49 = zext i16 %9 to i32, !dbg !184
  %50 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 101, ptr noundef nonnull @__FUNCTION__.main, ptr noundef nonnull @.str.2, i32 noundef %47, i32 noundef %11, i64 noundef %6, i32 noundef %48, ptr noundef %10, i32 noundef %49) #10, !dbg !184
  %51 = tail call ptr @finedb_init(ptr noundef %10, i16 noundef zeroext %8, i16 noundef zeroext %7, i64 noundef %6, i32 noundef %11, i16 noundef zeroext %9) #10, !dbg !185
  call void @llvm.dbg.value(metadata ptr %51, metadata !119, metadata !DIExpression()), !dbg !120
  store ptr %51, ptr @finedb_g, align 8, !dbg !186, !tbaa !123
  tail call void @finedb_start(ptr noundef %51) #10, !dbg !187
  ret i32 0, !dbg !188
}

; Function Attrs: nounwind
declare !dbg !189 ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
define internal void @signal_handler(i32 noundef %0) #2 !dbg !193 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !195, metadata !DIExpression()), !dbg !196
  %2 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 42, ptr noundef nonnull @__FUNCTION__.signal_handler, ptr noundef nonnull @.str.3) #10, !dbg !197
  %3 = tail call ptr @signal(i32 noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #10, !dbg !198
  %4 = load ptr, ptr @finedb_g, align 8, !dbg !199, !tbaa !123
  %5 = icmp eq ptr %4, null, !dbg !199
  br i1 %5, label %7, label %6, !dbg !201

6:                                                ; preds = %1
  tail call void @finedb_stop(ptr noundef nonnull %4) #10, !dbg !202
  br label %7, !dbg !202

7:                                                ; preds = %6, %1
  tail call void @exit(i32 noundef 0) #11, !dbg !203
  unreachable, !dbg !203
}

declare !dbg !204 void @ylog_init(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !207 void @ylog_set_prio(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !211 i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !217 noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @usage() unnamed_addr #5 !dbg !221 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str), !dbg !224
  ret void, !dbg !225
}

; Function Attrs: noreturn nounwind
declare !dbg !226 void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !227 i32 @ylog_write(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !230 ptr @finedb_init(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i64 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

declare !dbg !233 void @finedb_start(ptr noundef) local_unnamed_addr #3

declare !dbg !236 void @finedb_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !237 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "finedb_g", scope: !2, file: !3, line: 20, type: !76, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !41, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "main.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "7c53ee4eb893ec28c6f0c99a4b65a1c8")
!4 = !{!5, !11, !18}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !6, line: 45, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "YFALSE", value: 0)
!10 = !DIEnumerator(name: "YTRUE", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_type_e", file: !12, line: 245, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "../../lib/ylib/ylog.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "YLOG_STDERR", value: 1)
!15 = !DIEnumerator(name: "YLOG_FILE", value: 2)
!16 = !DIEnumerator(name: "YLOG_SYSLOG", value: 4)
!17 = !DIEnumerator(name: "YLOG_HANDLER", value: 8)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !12, line: 267, baseType: !7, size: 32, elements: !19)
!19 = !{!20, !21, !22, !23, !24, !25}
!20 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!21 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!22 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!23 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!24 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!25 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!26 = !{!27, !7, !28, !31, !36, !37, !40}
!27 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !32, line: 72, baseType: !33)
!32 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36}
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !{!0, !42, !47, !52, !58, !63, !66, !71}
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 120, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 15)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 56, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 7)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 40, elements: !56)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!56 = !{!57}
!57 = !DISubrange(count: 5)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 832, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 104)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 120, elements: !45)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 232, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 29)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !3, line: 28, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 4248, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 531)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !78, line: 49, baseType: !79)
!78 = !DIFile(filename: "./finedb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "349d81e48e8fe143f3d7a471f97edb42")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !78, line: 41, size: 384, elements: !80)
!80 = !{!81, !83, !88, !89, !90, !93, !97}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !79, file: !78, line: 42, baseType: !82, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !6, line: 52, baseType: !5)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !79, file: !78, line: 43, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_env", file: !86, line: 197, baseType: !87)
!86 = !DIFile(filename: "../../lib/lmdb/lmdb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9ff9d4834608bdc966449cf81c779c6a")
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_env", file: !86, line: 197, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !79, file: !78, line: 44, baseType: !36, size: 32, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !79, file: !78, line: 45, baseType: !36, size: 32, offset: 160)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !79, file: !78, line: 46, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !92, line: 27, baseType: !30)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!93 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !79, file: !78, line: 47, baseType: !94, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "yvect_t", file: !95, line: 56, baseType: !96)
!95 = !DIFile(filename: "../../lib/ylib/yvect.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "73ac1eb655eaae5d93c48c36880d9ca2")
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !79, file: !78, line: 48, baseType: !27, size: 16, offset: 320)
!98 = !{i32 7, !"Dwarf Version", i32 5}
!99 = !{i32 2, !"Debug Info Version", i32 3}
!100 = !{i32 1, !"wchar_size", i32 4}
!101 = !{i32 8, !"PIC Level", i32 2}
!102 = !{i32 7, !"PIE Level", i32 2}
!103 = !{i32 7, !"uwtable", i32 2}
!104 = !{!"clang version 16.0.0"}
!105 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 53, type: !106, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !108)
!106 = !DISubroutineType(types: !107)
!107 = !{!36, !36, !37}
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!109 = !DILocalVariable(name: "argc", arg: 1, scope: !105, file: !3, line: 53, type: !36)
!110 = !DILocalVariable(name: "argv", arg: 2, scope: !105, file: !3, line: 53, type: !37)
!111 = !DILocalVariable(name: "optstr", scope: !105, file: !3, line: 54, type: !38)
!112 = !DILocalVariable(name: "i", scope: !105, file: !3, line: 55, type: !36)
!113 = !DILocalVariable(name: "nbr_dbs", scope: !105, file: !3, line: 56, type: !7)
!114 = !DILocalVariable(name: "mapsize", scope: !105, file: !3, line: 57, type: !28)
!115 = !DILocalVariable(name: "nbr_threads", scope: !105, file: !3, line: 58, type: !27)
!116 = !DILocalVariable(name: "port", scope: !105, file: !3, line: 59, type: !27)
!117 = !DILocalVariable(name: "timeout", scope: !105, file: !3, line: 60, type: !27)
!118 = !DILocalVariable(name: "db_path", scope: !105, file: !3, line: 61, type: !38)
!119 = !DILocalVariable(name: "finedb", scope: !105, file: !3, line: 62, type: !76)
!120 = !DILocation(line: 0, scope: !105)
!121 = !DILocation(line: 65, column: 2, scope: !105)
!122 = !DILocation(line: 67, column: 2, scope: !105)
!123 = !{!124, !124, i64 0}
!124 = !{!"any pointer", !125, i64 0}
!125 = !{!"omnipotent char", !126, i64 0}
!126 = !{!"Simple C/C++ TBAA"}
!127 = !DILocation(line: 68, column: 2, scope: !105)
!128 = !DILocation(line: 70, column: 2, scope: !105)
!129 = !DILocation(line: 57, column: 9, scope: !105)
!130 = !DILocation(line: 58, column: 17, scope: !105)
!131 = !DILocation(line: 59, column: 17, scope: !105)
!132 = !DILocation(line: 60, column: 17, scope: !105)
!133 = !DILocation(line: 61, column: 8, scope: !105)
!134 = !DILocation(line: 56, column: 15, scope: !105)
!135 = !DILocation(line: 70, column: 14, scope: !105)
!136 = distinct !{!136, !128, !137}
!137 = !DILocation(line: 97, column: 2, scope: !105)
!138 = !DILocation(line: 73, column: 39, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !3, line: 71, column: 14)
!140 = distinct !DILexicalBlock(scope: !105, file: !3, line: 70, column: 49)
!141 = !DILocalVariable(name: "__nptr", arg: 1, scope: !142, file: !143, line: 362, type: !146)
!142 = distinct !DISubprogram(name: "atoi", scope: !143, file: !143, line: 362, type: !144, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !147)
!143 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!144 = !DISubroutineType(types: !145)
!145 = !{!36, !146}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!147 = !{!141}
!148 = !DILocation(line: 0, scope: !142, inlinedAt: !149)
!149 = distinct !DILocation(line: 73, column: 34, scope: !139)
!150 = !DILocation(line: 364, column: 16, scope: !142, inlinedAt: !149)
!151 = !DILocation(line: 73, column: 18, scope: !139)
!152 = !DILocation(line: 74, column: 4, scope: !139)
!153 = !DILocation(line: 76, column: 33, scope: !139)
!154 = !DILocation(line: 0, scope: !142, inlinedAt: !155)
!155 = distinct !DILocation(line: 76, column: 28, scope: !139)
!156 = !DILocation(line: 364, column: 16, scope: !142, inlinedAt: !155)
!157 = !DILocation(line: 364, column: 10, scope: !142, inlinedAt: !155)
!158 = !DILocation(line: 77, column: 4, scope: !139)
!159 = !DILocation(line: 79, column: 27, scope: !139)
!160 = !DILocation(line: 0, scope: !142, inlinedAt: !161)
!161 = distinct !DILocation(line: 79, column: 22, scope: !139)
!162 = !DILocation(line: 364, column: 16, scope: !142, inlinedAt: !161)
!163 = !DILocation(line: 79, column: 14, scope: !139)
!164 = !DILocation(line: 80, column: 4, scope: !139)
!165 = !DILocation(line: 82, column: 32, scope: !139)
!166 = !DILocation(line: 0, scope: !142, inlinedAt: !167)
!167 = distinct !DILocation(line: 82, column: 27, scope: !139)
!168 = !DILocation(line: 364, column: 16, scope: !142, inlinedAt: !167)
!169 = !DILocation(line: 82, column: 11, scope: !139)
!170 = !DILocation(line: 83, column: 4, scope: !139)
!171 = !DILocation(line: 85, column: 21, scope: !139)
!172 = !DILocation(line: 85, column: 14, scope: !139)
!173 = !DILocation(line: 86, column: 4, scope: !139)
!174 = !DILocation(line: 88, column: 19, scope: !139)
!175 = !DILocation(line: 0, scope: !142, inlinedAt: !176)
!176 = distinct !DILocation(line: 88, column: 14, scope: !139)
!177 = !DILocation(line: 364, column: 16, scope: !142, inlinedAt: !176)
!178 = !DILocation(line: 88, column: 14, scope: !139)
!179 = !DILocation(line: 89, column: 4, scope: !139)
!180 = !DILocation(line: 91, column: 4, scope: !139)
!181 = !DILocation(line: 92, column: 4, scope: !139)
!182 = !DILocation(line: 94, column: 4, scope: !139)
!183 = !DILocation(line: 95, column: 4, scope: !139)
!184 = !DILocation(line: 98, column: 2, scope: !105)
!185 = !DILocation(line: 103, column: 11, scope: !105)
!186 = !DILocation(line: 104, column: 11, scope: !105)
!187 = !DILocation(line: 106, column: 2, scope: !105)
!188 = !DILocation(line: 108, column: 2, scope: !105)
!189 = !DISubprogram(name: "signal", scope: !32, file: !32, line: 88, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{!31, !36, !31}
!192 = !{}
!193 = distinct !DISubprogram(name: "signal_handler", scope: !3, file: !3, line: 41, type: !34, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !194)
!194 = !{!195}
!195 = !DILocalVariable(name: "sig", arg: 1, scope: !193, file: !3, line: 41, type: !36)
!196 = !DILocation(line: 0, scope: !193)
!197 = !DILocation(line: 42, column: 2, scope: !193)
!198 = !DILocation(line: 43, column: 2, scope: !193)
!199 = !DILocation(line: 44, column: 6, scope: !200)
!200 = distinct !DILexicalBlock(scope: !193, file: !3, line: 44, column: 6)
!201 = !DILocation(line: 44, column: 6, scope: !193)
!202 = !DILocation(line: 45, column: 3, scope: !200)
!203 = !DILocation(line: 47, column: 2, scope: !193)
!204 = !DISubprogram(name: "ylog_init", scope: !12, file: !12, line: 332, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !192)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !36, !38, !38, !7}
!207 = !DISubprogram(name: "ylog_set_prio", scope: !12, file: !12, line: 341, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !192)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !210}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_priority_t", file: !12, line: 278, baseType: !18)
!211 = !DISubprogram(name: "getopt", scope: !212, file: !212, line: 91, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !192)
!212 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_core.h", directory: "", checksumkind: CSK_MD5, checksum: "81ab788980ce9d5be2ba931a6ae17301")
!213 = !DISubroutineType(types: !214)
!214 = !{!36, !36, !215, !146}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!217 = !DISubprogram(name: "strdup", scope: !218, file: !218, line: 187, type: !219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !192)
!218 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!219 = !DISubroutineType(types: !220)
!220 = !{!38, !146}
!221 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 27, type: !222, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!222 = !DISubroutineType(types: !223)
!223 = !{null}
!224 = !DILocation(line: 28, column: 2, scope: !221)
!225 = !DILocation(line: 38, column: 1, scope: !221)
!226 = !DISubprogram(name: "exit", scope: !143, file: !143, line: 624, type: !34, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !192)
!227 = !DISubprogram(name: "ylog_write", scope: !12, file: !12, line: 385, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !192)
!228 = !DISubroutineType(types: !229)
!229 = !{!82, !210, !146, !36, !146, !146, null}
!230 = !DISubprogram(name: "finedb_init", scope: !78, file: !78, line: 61, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !192)
!231 = !DISubroutineType(types: !232)
!232 = !{!76, !38, !27, !27, !28, !7, !27}
!233 = !DISubprogram(name: "finedb_start", scope: !78, file: !78, line: 69, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !192)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !76}
!236 = !DISubprogram(name: "finedb_stop", scope: !78, file: !78, line: 75, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !192)
!237 = !DISubprogram(name: "strtol", scope: !143, file: !143, line: 177, type: !238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !192)
!238 = !DISubroutineType(types: !239)
!239 = !{!240, !241, !242, !36}
!240 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!241 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!242 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
