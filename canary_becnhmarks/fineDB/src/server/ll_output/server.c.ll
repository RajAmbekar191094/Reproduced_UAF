; ModuleID = 'server.c'
source_filename = "server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"server.c\00", align 1, !dbg !0
@__FUNCTION__.server_create_listening_socket = private unnamed_addr constant [31 x i8] c"server_create_listening_socket\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [13 x i8] c"Socket error\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [32 x i8] c"setsockopt(SO_REUSEADDR) failed\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [32 x i8] c"setsockopt(SO_KEEPALIVE) failed\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [11 x i8] c"Bind error\00", align 1, !dbg !25
@.str.5 = private unnamed_addr constant [13 x i8] c"Listen error\00", align 1, !dbg !30
@__FUNCTION__.server_loop = private unnamed_addr constant [12 x i8] c"server_loop\00", align 1, !dbg !32
@.str.6 = private unnamed_addr constant [29 x i8] c"setsockopt(KEEPALIVE) failed\00", align 1, !dbg !37

; Function Attrs: nounwind uwtable
define dso_local i32 @server_create_listening_socket(ptr nocapture noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 !dbg !100 {
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !108, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata i16 %1, metadata !109, metadata !DIExpression()), !dbg !129
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %3, metadata !110, metadata !DIExpression()), !dbg !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7, !dbg !132
  call void @llvm.dbg.value(metadata i32 1, metadata !127, metadata !DIExpression()), !dbg !129
  store i32 1, ptr %4, align 4, !dbg !133, !tbaa !134
  %5 = tail call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #7, !dbg !138
  store i32 %5, ptr %0, align 4, !dbg !140, !tbaa !134
  %6 = icmp slt i32 %5, 0, !dbg !141
  br i1 %6, label %7, label %9, !dbg !142

7:                                                ; preds = %2
  %8 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 5, ptr noundef nonnull @.str, i32 noundef 23, ptr noundef nonnull @__FUNCTION__.server_create_listening_socket, ptr noundef nonnull @.str.1) #7, !dbg !143
  br label %35, !dbg !145

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !127, metadata !DIExpression(DW_OP_deref)), !dbg !129
  %10 = call i32 @setsockopt(i32 noundef %5, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %4, i32 noundef 4) #7, !dbg !146
  %11 = icmp slt i32 %10, 0, !dbg !148
  br i1 %11, label %12, label %14, !dbg !149

12:                                               ; preds = %9
  %13 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 29, ptr noundef nonnull @__FUNCTION__.server_create_listening_socket, ptr noundef nonnull @.str.2) #7, !dbg !150
  br label %14, !dbg !150

14:                                               ; preds = %12, %9
  %15 = load i32, ptr %0, align 4, !dbg !151, !tbaa !134
  call void @llvm.dbg.value(metadata ptr %4, metadata !127, metadata !DIExpression(DW_OP_deref)), !dbg !129
  %16 = call i32 @setsockopt(i32 noundef %15, i32 noundef 1, i32 noundef 9, ptr noundef nonnull %4, i32 noundef 4) #7, !dbg !153
  %17 = icmp slt i32 %16, 0, !dbg !154
  br i1 %17, label %18, label %20, !dbg !155

18:                                               ; preds = %14
  %19 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 32, ptr noundef nonnull @__FUNCTION__.server_create_listening_socket, ptr noundef nonnull @.str.3) #7, !dbg !156
  br label %20, !dbg !156

20:                                               ; preds = %18, %14
  call void @llvm.dbg.value(metadata i32 16, metadata !126, metadata !DIExpression()), !dbg !129
  %21 = getelementptr inbounds i8, ptr %3, i64 4, !dbg !157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %21, i8 0, i64 12, i1 false), !dbg !157
  store i16 2, ptr %3, align 4, !dbg !158, !tbaa !159
  %22 = call i16 @llvm.bswap.i16(i16 %1)
  %23 = getelementptr inbounds %struct.sockaddr_in, ptr %3, i64 0, i32 1, !dbg !163
  store i16 %22, ptr %23, align 2, !dbg !164, !tbaa !165
  %24 = load i32, ptr %0, align 4, !dbg !166, !tbaa !134
  %25 = call i32 @bind(i32 noundef %24, ptr nonnull %3, i32 noundef 16) #7, !dbg !168
  %26 = icmp slt i32 %25, 0, !dbg !169
  br i1 %26, label %27, label %29, !dbg !170

27:                                               ; preds = %20
  %28 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 5, ptr noundef nonnull @.str, i32 noundef 40, ptr noundef nonnull @__FUNCTION__.server_create_listening_socket, ptr noundef nonnull @.str.4) #7, !dbg !171
  br label %35, !dbg !173

29:                                               ; preds = %20
  %30 = load i32, ptr %0, align 4, !dbg !174, !tbaa !134
  %31 = call i32 @listen(i32 noundef %30, i32 noundef 4096) #7, !dbg !176
  %32 = icmp eq i32 %31, 0, !dbg !176
  br i1 %32, label %35, label %33, !dbg !177

33:                                               ; preds = %29
  %34 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 5, ptr noundef nonnull @.str, i32 noundef 44, ptr noundef nonnull @__FUNCTION__.server_create_listening_socket, ptr noundef nonnull @.str.5) #7, !dbg !178
  br label %35, !dbg !180

35:                                               ; preds = %29, %33, %27, %7
  %36 = phi i32 [ -5, %7 ], [ -9, %27 ], [ -9, %33 ], [ 1, %29 ], !dbg !129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7, !dbg !181
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !181
  ret i32 %36, !dbg !181
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare !dbg !182 i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !187 i32 @ylog_write(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !193 i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare !dbg !201 i32 @bind(i32 noundef, ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !293 i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @server_loop(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !296 {
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !301, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i32 %1, metadata !302, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i32 %2, metadata !303, metadata !DIExpression()), !dbg !308
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !309
  call void @llvm.dbg.declare(metadata ptr %4, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7, !dbg !311
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7, !dbg !312
  call void @llvm.dbg.value(metadata i32 1, metadata !307, metadata !DIExpression()), !dbg !308
  store i32 1, ptr %6, align 4, !dbg !313, !tbaa !134
  call void @llvm.dbg.value(metadata i32 16, metadata !306, metadata !DIExpression()), !dbg !308
  store i32 16, ptr %5, align 4, !dbg !314, !tbaa !134
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !315
  %7 = load i32, ptr %0, align 4, !dbg !316, !tbaa !317
  %8 = icmp eq i32 %7, 0, !dbg !318
  br i1 %8, label %21, label %9, !dbg !318

9:                                                ; preds = %3, %18
  call void @llvm.dbg.value(metadata ptr %5, metadata !306, metadata !DIExpression(DW_OP_deref)), !dbg !308
  %10 = call i32 @accept(i32 noundef %1, ptr nonnull %4, ptr noundef nonnull %5) #7, !dbg !319
  call void @llvm.dbg.value(metadata i32 %10, metadata !304, metadata !DIExpression()), !dbg !308
  %11 = icmp slt i32 %10, 0, !dbg !322
  br i1 %11, label %18, label %12, !dbg !323

12:                                               ; preds = %9
  call void @llvm.dbg.value(metadata ptr %6, metadata !307, metadata !DIExpression(DW_OP_deref)), !dbg !308
  %13 = call i32 @setsockopt(i32 noundef %10, i32 noundef 1, i32 noundef 9, ptr noundef nonnull %6, i32 noundef 4) #7, !dbg !324
  %14 = icmp slt i32 %13, 0, !dbg !326
  br i1 %14, label %15, label %17, !dbg !327

15:                                               ; preds = %12
  %16 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 66, ptr noundef nonnull @__FUNCTION__.server_loop, ptr noundef nonnull @.str.6) #7, !dbg !328
  br label %17, !dbg !328

17:                                               ; preds = %15, %12
  call void @connection_thread_push_socket(i32 noundef %2, i32 noundef %10) #7, !dbg !329
  br label %18, !dbg !318

18:                                               ; preds = %17, %9
  %19 = load i32, ptr %0, align 4, !dbg !316, !tbaa !317
  %20 = icmp eq i32 %19, 0, !dbg !318
  br i1 %20, label %21, label %9, !dbg !318, !llvm.loop !330

21:                                               ; preds = %18, %3
  %22 = call i32 @close(i32 noundef %1) #7, !dbg !332
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7, !dbg !333
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7, !dbg !333
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !333
  ret void, !dbg !333
}

declare !dbg !334 i32 @accept(i32 noundef, ptr, ptr noundef) local_unnamed_addr #4

declare !dbg !380 void @connection_thread_push_socket(i32 noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !384 i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!42}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "server.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4987e9b216923177d8f94ac3c2e98db1")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 248, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 31)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 13)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 29, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 32)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !20, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 11)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !15, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 96, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 12)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 29)
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !43, retainedTypes: !71, globals: !92, splitDebugInlining: false, nameTableKind: None)
!43 = !{!44, !57, !66}
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !45, line: 24, baseType: !46, size: 32, elements: !47)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!46 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56}
!48 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!49 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!50 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!51 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!52 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!53 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!54 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!55 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!56 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !58, line: 267, baseType: !46, size: 32, elements: !59)
!58 = !DIFile(filename: "../../lib/ylib/ylog.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!59 = !{!60, !61, !62, !63, !64, !65}
!60 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!61 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!62 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!63 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!64 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!65 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !67, line: 45, baseType: !46, size: 32, elements: !68)
!67 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!68 = !{!69, !70}
!69 = !DIEnumerator(name: "YFALSE", value: 0)
!70 = !DIEnumerator(name: "YTRUE", value: 1)
!71 = !{!72, !73, !79, !91}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !74, line: 30, baseType: !75)
!74 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !76, line: 26, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !78, line: 42, baseType: !46)
!78 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !81, line: 180, size: 128, elements: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!82 = !{!83, !87}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !80, file: !81, line: 182, baseType: !84, size: 16)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !85, line: 28, baseType: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !80, file: !81, line: 183, baseType: !88, size: 112, offset: 16)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 14)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !78, line: 40, baseType: !86)
!92 = !{!0, !7, !13, !18, !23, !25, !30, !32, !37}
!93 = !{i32 7, !"Dwarf Version", i32 5}
!94 = !{i32 2, !"Debug Info Version", i32 3}
!95 = !{i32 1, !"wchar_size", i32 4}
!96 = !{i32 8, !"PIC Level", i32 2}
!97 = !{i32 7, !"PIE Level", i32 2}
!98 = !{i32 7, !"uwtable", i32 2}
!99 = !{!"clang version 16.0.0"}
!100 = distinct !DISubprogram(name: "server_create_listening_socket", scope: !2, file: !2, line: 16, type: !101, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !107)
!101 = !DISubroutineType(types: !102)
!102 = !{!103, !106, !86}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !104, line: 23, baseType: !105)
!104 = !DIFile(filename: "../../lib/ylib/yerror.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!105 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!107 = !{!108, !109, !110, !126, !127}
!108 = !DILocalVariable(name: "psock", arg: 1, scope: !100, file: !2, line: 16, type: !106)
!109 = !DILocalVariable(name: "port", arg: 2, scope: !100, file: !2, line: 16, type: !86)
!110 = !DILocalVariable(name: "addr", scope: !100, file: !2, line: 17, type: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !74, line: 245, size: 128, elements: !112)
!112 = !{!113, !114, !117, !121}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !111, file: !74, line: 247, baseType: !84, size: 16)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !111, file: !74, line: 248, baseType: !115, size: 16, offset: 16)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !74, line: 123, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !76, line: 25, baseType: !91)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !111, file: !74, line: 249, baseType: !118, size: 32, offset: 32)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !74, line: 31, size: 32, elements: !119)
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !118, file: !74, line: 33, baseType: !73, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !111, file: !74, line: 252, baseType: !122, size: 64, offset: 64)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 64, elements: !124)
!123 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!124 = !{!125}
!125 = !DISubrange(count: 8)
!126 = !DILocalVariable(name: "addr_size", scope: !100, file: !2, line: 18, type: !46)
!127 = !DILocalVariable(name: "on", scope: !100, file: !2, line: 19, type: !128)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!129 = !DILocation(line: 0, scope: !100)
!130 = !DILocation(line: 17, column: 2, scope: !100)
!131 = !DILocation(line: 17, column: 21, scope: !100)
!132 = !DILocation(line: 19, column: 2, scope: !100)
!133 = !DILocation(line: 19, column: 12, scope: !100)
!134 = !{!135, !135, i64 0}
!135 = !{!"int", !136, i64 0}
!136 = !{!"omnipotent char", !137, i64 0}
!137 = !{!"Simple C/C++ TBAA"}
!138 = !DILocation(line: 22, column: 16, scope: !139)
!139 = distinct !DILexicalBlock(scope: !100, file: !2, line: 22, column: 6)
!140 = !DILocation(line: 22, column: 14, scope: !139)
!141 = !DILocation(line: 22, column: 49, scope: !139)
!142 = !DILocation(line: 22, column: 6, scope: !100)
!143 = !DILocation(line: 23, column: 3, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !2, line: 22, column: 54)
!145 = !DILocation(line: 24, column: 3, scope: !144)
!146 = !DILocation(line: 27, column: 6, scope: !147)
!147 = distinct !DILexicalBlock(scope: !100, file: !2, line: 27, column: 6)
!148 = !DILocation(line: 28, column: 29, scope: !147)
!149 = !DILocation(line: 27, column: 6, scope: !100)
!150 = !DILocation(line: 29, column: 3, scope: !147)
!151 = !DILocation(line: 30, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !100, file: !2, line: 30, column: 6)
!153 = !DILocation(line: 30, column: 6, scope: !152)
!154 = !DILocation(line: 31, column: 29, scope: !152)
!155 = !DILocation(line: 30, column: 6, scope: !100)
!156 = !DILocation(line: 32, column: 3, scope: !152)
!157 = !DILocation(line: 36, column: 23, scope: !100)
!158 = !DILocation(line: 37, column: 18, scope: !100)
!159 = !{!160, !161, i64 0}
!160 = !{!"sockaddr_in", !161, i64 0, !161, i64 2, !162, i64 4, !136, i64 8}
!161 = !{!"short", !136, i64 0}
!162 = !{!"in_addr", !135, i64 0}
!163 = !DILocation(line: 38, column: 7, scope: !100)
!164 = !DILocation(line: 38, column: 16, scope: !100)
!165 = !{!160, !161, i64 2}
!166 = !DILocation(line: 39, column: 11, scope: !167)
!167 = distinct !DILexicalBlock(scope: !100, file: !2, line: 39, column: 6)
!168 = !DILocation(line: 39, column: 6, scope: !167)
!169 = !DILocation(line: 39, column: 55, scope: !167)
!170 = !DILocation(line: 39, column: 6, scope: !100)
!171 = !DILocation(line: 40, column: 3, scope: !172)
!172 = distinct !DILexicalBlock(scope: !167, file: !2, line: 39, column: 60)
!173 = !DILocation(line: 41, column: 3, scope: !172)
!174 = !DILocation(line: 43, column: 13, scope: !175)
!175 = distinct !DILexicalBlock(scope: !100, file: !2, line: 43, column: 6)
!176 = !DILocation(line: 43, column: 6, scope: !175)
!177 = !DILocation(line: 43, column: 6, scope: !100)
!178 = !DILocation(line: 44, column: 3, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !2, line: 43, column: 33)
!180 = !DILocation(line: 45, column: 3, scope: !179)
!181 = !DILocation(line: 48, column: 1, scope: !100)
!182 = !DISubprogram(name: "socket", scope: !183, file: !183, line: 102, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !186)
!183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "619dab7fd722af1ca0fa7f4b6fd4f842")
!184 = !DISubroutineType(types: !185)
!185 = !{!105, !105, !105, !105}
!186 = !{}
!187 = !DISubprogram(name: "ylog_write", scope: !58, file: !58, line: 385, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !186)
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !191, !192, !105, !192, !192, null}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !67, line: 52, baseType: !66)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_priority_t", file: !58, line: 278, baseType: !57)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!193 = !DISubprogram(name: "setsockopt", scope: !183, file: !183, line: 277, type: !194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !186)
!194 = !DISubroutineType(types: !195)
!195 = !{!105, !105, !105, !105, !196, !198}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !199, line: 274, baseType: !200)
!199 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !78, line: 210, baseType: !46)
!201 = !DISubprogram(name: "bind", scope: !183, file: !183, line: 112, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !186)
!202 = !DISubroutineType(types: !203)
!203 = !{!105, !105, !204, !198}
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__CONST_SOCKADDR_ARG", file: !183, line: 84, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !183, line: 83, size: 64, elements: !206)
!206 = !{!207, !211, !216, !221, !226, !231, !235, !263, !268, !273, !278, !283, !288}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr__", scope: !205, file: !183, line: 83, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_at__", scope: !205, file: !183, line: 83, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_at", file: !183, line: 79, flags: DIFlagFwdDecl)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ax25__", scope: !205, file: !183, line: 83, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_ax25", file: !183, line: 79, flags: DIFlagFwdDecl)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_dl__", scope: !205, file: !183, line: 83, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_dl", file: !183, line: 79, flags: DIFlagFwdDecl)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_eon__", scope: !205, file: !183, line: 83, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_eon", file: !183, line: 79, flags: DIFlagFwdDecl)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_in__", scope: !205, file: !183, line: 83, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_in6__", scope: !205, file: !183, line: 83, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !74, line: 260, size: 224, elements: !240)
!240 = !{!241, !242, !243, !244, !262}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !239, file: !74, line: 262, baseType: !84, size: 16)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !239, file: !74, line: 263, baseType: !115, size: 16, offset: 16)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !239, file: !74, line: 264, baseType: !75, size: 32, offset: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !239, file: !74, line: 265, baseType: !245, size: 128, offset: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !74, line: 219, size: 128, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !245, file: !74, line: 226, baseType: !248, size: 128)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !245, file: !74, line: 221, size: 128, elements: !249)
!249 = !{!250, !256, !258}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !248, file: !74, line: 223, baseType: !251, size: 128)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 128, elements: !254)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !76, line: 24, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !78, line: 38, baseType: !123)
!254 = !{!255}
!255 = !DISubrange(count: 16)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !248, file: !74, line: 224, baseType: !257, size: 128)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 128, elements: !124)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !248, file: !74, line: 225, baseType: !259, size: 128)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 128, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 4)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !239, file: !74, line: 266, baseType: !75, size: 32, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_inarp__", scope: !205, file: !183, line: 83, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_inarp", file: !183, line: 79, flags: DIFlagFwdDecl)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ipx__", scope: !205, file: !183, line: 83, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_ipx", file: !183, line: 79, flags: DIFlagFwdDecl)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_iso__", scope: !205, file: !183, line: 83, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_iso", file: !183, line: 79, flags: DIFlagFwdDecl)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ns__", scope: !205, file: !183, line: 83, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_ns", file: !183, line: 79, flags: DIFlagFwdDecl)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_un__", scope: !205, file: !183, line: 83, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !183, line: 79, flags: DIFlagFwdDecl)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_x25__", scope: !205, file: !183, line: 83, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_x25", file: !183, line: 79, flags: DIFlagFwdDecl)
!293 = !DISubprogram(name: "listen", scope: !183, file: !183, line: 296, type: !294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !186)
!294 = !DISubroutineType(types: !295)
!295 = !{!105, !105, !105}
!296 = distinct !DISubprogram(name: "server_loop", scope: !2, file: !2, line: 51, type: !297, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !300)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !299, !105, !105}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!300 = !{!301, !302, !303, !304, !305, !306, !307}
!301 = !DILocalVariable(name: "run", arg: 1, scope: !296, file: !2, line: 51, type: !299)
!302 = !DILocalVariable(name: "socket", arg: 2, scope: !296, file: !2, line: 51, type: !105)
!303 = !DILocalVariable(name: "threads_socket", arg: 3, scope: !296, file: !2, line: 51, type: !105)
!304 = !DILocalVariable(name: "fd", scope: !296, file: !2, line: 52, type: !105)
!305 = !DILocalVariable(name: "addr", scope: !296, file: !2, line: 53, type: !111)
!306 = !DILocalVariable(name: "addr_size", scope: !296, file: !2, line: 54, type: !46)
!307 = !DILocalVariable(name: "on", scope: !296, file: !2, line: 55, type: !128)
!308 = !DILocation(line: 0, scope: !296)
!309 = !DILocation(line: 53, column: 2, scope: !296)
!310 = !DILocation(line: 53, column: 21, scope: !296)
!311 = !DILocation(line: 54, column: 2, scope: !296)
!312 = !DILocation(line: 55, column: 2, scope: !296)
!313 = !DILocation(line: 55, column: 12, scope: !296)
!314 = !DILocation(line: 57, column: 12, scope: !296)
!315 = !DILocation(line: 58, column: 2, scope: !296)
!316 = !DILocation(line: 59, column: 9, scope: !296)
!317 = !{!136, !136, i64 0}
!318 = !DILocation(line: 59, column: 2, scope: !296)
!319 = !DILocation(line: 61, column: 13, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !2, line: 61, column: 7)
!321 = distinct !DILexicalBlock(scope: !296, file: !2, line: 59, column: 15)
!322 = !DILocation(line: 62, column: 33, scope: !320)
!323 = !DILocation(line: 61, column: 7, scope: !321)
!324 = !DILocation(line: 64, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !2, line: 64, column: 7)
!326 = !DILocation(line: 65, column: 30, scope: !325)
!327 = !DILocation(line: 64, column: 7, scope: !321)
!328 = !DILocation(line: 66, column: 4, scope: !325)
!329 = !DILocation(line: 68, column: 3, scope: !321)
!330 = distinct !{!330, !318, !331}
!331 = !DILocation(line: 69, column: 2, scope: !296)
!332 = !DILocation(line: 70, column: 2, scope: !296)
!333 = !DILocation(line: 71, column: 1, scope: !296)
!334 = !DISubprogram(name: "accept", scope: !183, file: !183, line: 306, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !186)
!335 = !DISubroutineType(types: !336)
!336 = !{!105, !105, !337, !378}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__SOCKADDR_ARG", file: !183, line: 80, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !183, line: 79, size: 64, elements: !339)
!339 = !{!340, !342, !345, !348, !351, !354, !357, !360, !363, !366, !369, !372, !375}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr__", scope: !338, file: !183, line: 79, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_at__", scope: !338, file: !183, line: 79, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ax25__", scope: !338, file: !183, line: 79, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_dl__", scope: !338, file: !183, line: 79, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_eon__", scope: !338, file: !183, line: 79, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_in__", scope: !338, file: !183, line: 79, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_in6__", scope: !338, file: !183, line: 79, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_inarp__", scope: !338, file: !183, line: 79, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ipx__", scope: !338, file: !183, line: 79, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_iso__", scope: !338, file: !183, line: 79, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ns__", scope: !338, file: !183, line: 79, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_un__", scope: !338, file: !183, line: 79, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_x25__", scope: !338, file: !183, line: 79, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!380 = !DISubprogram(name: "connection_thread_push_socket", scope: !381, file: !381, line: 74, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !186)
!381 = !DIFile(filename: "./connection_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "285f9cd07088f6d468faef64cb1dc74b")
!382 = !DISubroutineType(types: !383)
!383 = !{null, !105, !105}
!384 = !DISubprogram(name: "close", scope: !199, file: !199, line: 358, type: !385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !186)
!385 = !DISubroutineType(types: !386)
!386 = !{!105, !105}
