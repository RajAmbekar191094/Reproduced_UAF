; ModuleID = '/home/raj/lwan/common/lwan-redirect.c'
source_filename = "/home/raj/lwan/common/lwan-redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_module_t_ = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lwan_redirect_settings_t = type { ptr }
%struct.lwan_request_t_ = type { i32, i32, %struct.lwan_value_t_, %struct.lwan_value_t_, ptr, %struct.anon.1, %struct.anon.1, %struct.anon.2, %struct.lwan_response_t_ }
%struct.lwan_value_t_ = type { ptr, i64 }
%struct.anon.1 = type { ptr, i64 }
%struct.anon.2 = type { i64, %struct.anon.3 }
%struct.anon.3 = type { i64, i64 }
%struct.lwan_response_t_ = type { ptr, ptr, i64, ptr, %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, ptr }
%struct.lwan_connection_t_ = type { i32, i32, ptr, ptr, i32, i32 }
%struct.lwan_key_value_t_ = type { ptr, ptr }

@lwan_module_redirect.redirect_module = internal constant %struct.lwan_module_t_ { ptr @.str, ptr @redirect_init, ptr @redirect_init_from_hash, ptr @free, ptr @redirect_handle_cb, i32 0 }, align 8, !dbg !0
@.str = private unnamed_addr constant [9 x i8] c"redirect\00", align 1, !dbg !263
@.str.1 = private unnamed_addr constant [3 x i8] c"to\00", align 1, !dbg !268
@.str.2 = private unnamed_addr constant [9 x i8] c"Location\00", align 1, !dbg !273

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lwan_module_redirect() #0 !dbg !2 {
  ret ptr @lwan_module_redirect.redirect_module, !dbg !284
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @redirect_init(ptr noundef %0) #0 !dbg !285 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !286, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata ptr %3, metadata !288, metadata !DIExpression()), !dbg !294
  %4 = load ptr, ptr %2, align 8, !dbg !295
  store ptr %4, ptr %3, align 8, !dbg !294
  %5 = load ptr, ptr %3, align 8, !dbg !296
  %6 = getelementptr inbounds %struct.lwan_redirect_settings_t, ptr %5, i32 0, i32 0, !dbg !297
  %7 = load ptr, ptr %6, align 8, !dbg !297
  %8 = icmp ne ptr %7, null, !dbg !298
  br i1 %8, label %9, label %14, !dbg !298

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !dbg !299
  %11 = getelementptr inbounds %struct.lwan_redirect_settings_t, ptr %10, i32 0, i32 0, !dbg !300
  %12 = load ptr, ptr %11, align 8, !dbg !300
  %13 = call noalias ptr @strdup(ptr noundef %12) #4, !dbg !301
  br label %15, !dbg !298

14:                                               ; preds = %1
  br label %15, !dbg !298

15:                                               ; preds = %14, %9
  %16 = phi ptr [ %13, %9 ], [ null, %14 ], !dbg !298
  ret ptr %16, !dbg !302
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @redirect_init_from_hash(ptr noundef %0) #0 !dbg !303 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.lwan_redirect_settings_t, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !307
  %4 = getelementptr inbounds %struct.lwan_redirect_settings_t, ptr %3, i32 0, i32 0, !dbg !308
  %5 = load ptr, ptr %2, align 8, !dbg !309
  %6 = call ptr @hash_find(ptr noundef %5, ptr noundef @.str.1), !dbg !310
  store ptr %6, ptr %4, align 8, !dbg !308
  %7 = call ptr @redirect_init(ptr noundef %3), !dbg !311
  ret ptr %7, !dbg !312
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redirect_handle_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !313 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !314, metadata !DIExpression()), !dbg !315
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !316, metadata !DIExpression()), !dbg !317
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !318, metadata !DIExpression()), !dbg !319
  %9 = load ptr, ptr %7, align 8, !dbg !320
  %10 = icmp ne ptr %9, null, !dbg !320
  %11 = xor i1 %10, true, !dbg !320
  %12 = zext i1 %11 to i32, !dbg !320
  %13 = sext i32 %12 to i64, !dbg !320
  %14 = icmp ne i64 %13, 0, !dbg !320
  br i1 %14, label %15, label %16, !dbg !322

15:                                               ; preds = %3
  store i32 500, ptr %4, align 4, !dbg !323
  br label %47, !dbg !323

16:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !324, metadata !DIExpression()), !dbg !325
  %17 = load ptr, ptr %5, align 8, !dbg !326
  %18 = getelementptr inbounds %struct.lwan_request_t_, ptr %17, i32 0, i32 4, !dbg !327
  %19 = load ptr, ptr %18, align 8, !dbg !327
  %20 = getelementptr inbounds %struct.lwan_connection_t_, ptr %19, i32 0, i32 2, !dbg !328
  %21 = load ptr, ptr %20, align 8, !dbg !328
  %22 = call ptr @coro_malloc(ptr noundef %21, i64 noundef 32), !dbg !329
  store ptr %22, ptr %8, align 8, !dbg !325
  %23 = load ptr, ptr %8, align 8, !dbg !330
  %24 = icmp ne ptr %23, null, !dbg !330
  %25 = xor i1 %24, true, !dbg !330
  %26 = zext i1 %25 to i32, !dbg !330
  %27 = sext i32 %26 to i64, !dbg !330
  %28 = icmp ne i64 %27, 0, !dbg !330
  br i1 %28, label %29, label %30, !dbg !332

29:                                               ; preds = %16
  store i32 500, ptr %4, align 4, !dbg !333
  br label %47, !dbg !333

30:                                               ; preds = %16
  %31 = load ptr, ptr %8, align 8, !dbg !334
  %32 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %31, i64 0, !dbg !334
  %33 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %32, i32 0, i32 0, !dbg !335
  store ptr @.str.2, ptr %33, align 8, !dbg !336
  %34 = load ptr, ptr %7, align 8, !dbg !337
  %35 = load ptr, ptr %8, align 8, !dbg !338
  %36 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %35, i64 0, !dbg !338
  %37 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %36, i32 0, i32 1, !dbg !339
  store ptr %34, ptr %37, align 8, !dbg !340
  %38 = load ptr, ptr %8, align 8, !dbg !341
  %39 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %38, i64 1, !dbg !341
  %40 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %39, i32 0, i32 0, !dbg !342
  store ptr null, ptr %40, align 8, !dbg !343
  %41 = load ptr, ptr %8, align 8, !dbg !344
  %42 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %41, i64 1, !dbg !344
  %43 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %42, i32 0, i32 1, !dbg !345
  store ptr null, ptr %43, align 8, !dbg !346
  %44 = load ptr, ptr %8, align 8, !dbg !347
  %45 = load ptr, ptr %6, align 8, !dbg !348
  %46 = getelementptr inbounds %struct.lwan_response_t_, ptr %45, i32 0, i32 3, !dbg !349
  store ptr %44, ptr %46, align 8, !dbg !350
  store i32 301, ptr %4, align 4, !dbg !351
  br label %47, !dbg !351

47:                                               ; preds = %30, %29, %15
  %48 = load i32, ptr %4, align 4, !dbg !352
  ret i32 %48, !dbg !352
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #1

declare ptr @hash_find(ptr noundef, ptr noundef) #3

declare ptr @coro_malloc(ptr noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!259}
!llvm.module.flags = !{!276, !277, !278, !279, !280, !281, !282}
!llvm.ident = !{!283}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "redirect_module", scope: !2, file: !3, line: 64, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "lwan_module_redirect", scope: !3, file: !3, line: 62, type: !4, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !259, retainedNodes: !275)
!3 = !DIFile(filename: "common/lwan-redirect.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1614b421dd87198cc4b34905c0f8dd7e")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_module_t", file: !9, line: 104, baseType: !10)
!9 = !DIFile(filename: "common/lwan.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "56f65bbbfce1c5452d6905964ca2b84f")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_module_t_", file: !9, line: 227, size: 384, elements: !11)
!11 = !{!12, !16, !21, !29, !33, !247}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !10, file: !9, line: 228, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !10, file: !9, line: 229, baseType: !17, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "init_from_hash", scope: !10, file: !9, line: 230, baseType: !22, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{!20, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash", file: !28, line: 6, flags: DIFlagFwdDecl)
!28 = !DIFile(filename: "common/hash.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a7f0d7c578de44c7172c81fd9e8cd22")
!29 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !10, file: !9, line: 231, baseType: !30, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !20}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !10, file: !9, line: 232, baseType: !34, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !57, !246, !20}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_http_status_t", file: !9, line: 131, baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 114, baseType: !39, size: 32, elements: !40)
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!41 = !DIEnumerator(name: "HTTP_OK", value: 200)
!42 = !DIEnumerator(name: "HTTP_PARTIAL_CONTENT", value: 206)
!43 = !DIEnumerator(name: "HTTP_MOVED_PERMANENTLY", value: 301)
!44 = !DIEnumerator(name: "HTTP_NOT_MODIFIED", value: 304)
!45 = !DIEnumerator(name: "HTTP_BAD_REQUEST", value: 400)
!46 = !DIEnumerator(name: "HTTP_NOT_AUTHORIZED", value: 401)
!47 = !DIEnumerator(name: "HTTP_FORBIDDEN", value: 403)
!48 = !DIEnumerator(name: "HTTP_NOT_FOUND", value: 404)
!49 = !DIEnumerator(name: "HTTP_NOT_ALLOWED", value: 405)
!50 = !DIEnumerator(name: "HTTP_TIMEOUT", value: 408)
!51 = !DIEnumerator(name: "HTTP_TOO_LARGE", value: 413)
!52 = !DIEnumerator(name: "HTTP_RANGE_UNSATISFIABLE", value: 416)
!53 = !DIEnumerator(name: "HTTP_I_AM_A_TEAPOT", value: 418)
!54 = !DIEnumerator(name: "HTTP_INTERNAL_ERROR", value: 500)
!55 = !DIEnumerator(name: "HTTP_NOT_IMPLEMENTED", value: 501)
!56 = !DIEnumerator(name: "HTTP_UNAVAILABLE", value: 503)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_t", file: !9, line: 106, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_request_t_", file: !9, line: 206, size: 1280, elements: !60)
!60 = !{!61, !76, !77, !87, !88, !189, !200, !201, !213}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !59, file: !9, line: 207, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_flags_t", file: !9, line: 156, baseType: !63)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 145, baseType: !64, size: 32, elements: !65)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!66 = !DIEnumerator(name: "REQUEST_ALL_FLAGS", value: -1)
!67 = !DIEnumerator(name: "REQUEST_METHOD_GET", value: 1)
!68 = !DIEnumerator(name: "REQUEST_METHOD_HEAD", value: 2)
!69 = !DIEnumerator(name: "REQUEST_METHOD_POST", value: 4)
!70 = !DIEnumerator(name: "REQUEST_ACCEPT_DEFLATE", value: 8)
!71 = !DIEnumerator(name: "REQUEST_ACCEPT_GZIP", value: 16)
!72 = !DIEnumerator(name: "REQUEST_IS_HTTP_1_0", value: 32)
!73 = !DIEnumerator(name: "RESPONSE_SENT_HEADERS", value: 64)
!74 = !DIEnumerator(name: "RESPONSE_CHUNKED_ENCODING", value: 128)
!75 = !DIEnumerator(name: "RESPONSE_NO_CONTENT_LENGTH", value: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !59, file: !9, line: 208, baseType: !64, size: 32, offset: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "url", scope: !59, file: !9, line: 209, baseType: !78, size: 128, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_value_t", file: !9, line: 110, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_value_t_", file: !9, line: 191, size: 128, elements: !80)
!80 = !{!81, !83}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !79, file: !9, line: 192, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !79, file: !9, line: 193, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !85, line: 46, baseType: !86)
!85 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!86 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "original_url", scope: !59, file: !9, line: 210, baseType: !78, size: 128, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !59, file: !9, line: 211, baseType: !89, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_t", file: !9, line: 112, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_connection_t_", file: !9, line: 196, size: 256, elements: !92)
!92 = !{!93, !103, !104, !109, !187, !188}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !91, file: !9, line: 199, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_flags_t", file: !9, line: 165, baseType: !95)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 158, baseType: !64, size: 32, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102}
!97 = !DIEnumerator(name: "CONN_MASK", value: -1)
!98 = !DIEnumerator(name: "CONN_KEEP_ALIVE", value: 1)
!99 = !DIEnumerator(name: "CONN_IS_ALIVE", value: 2)
!100 = !DIEnumerator(name: "CONN_SHOULD_RESUME_CORO", value: 4)
!101 = !DIEnumerator(name: "CONN_WRITE_EVENTS", value: 8)
!102 = !DIEnumerator(name: "CONN_MUST_READ", value: 16)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !91, file: !9, line: 200, baseType: !39, size: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "coro", scope: !91, file: !9, line: 201, baseType: !105, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_t", file: !107, line: 34, baseType: !108)
!107 = !DIFile(filename: "common/lwan-coro.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "34b7f40341e2e8a3481f0400ece0424e")
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "coro_t_", file: !107, line: 34, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !91, file: !9, line: 202, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_thread_t", file: !9, line: 108, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_thread_t_", file: !9, line: 253, size: 832, elements: !113)
!113 = !{!114, !165, !179, !180, !184}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "lwan", scope: !112, file: !9, line: 254, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_t", file: !9, line: 103, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_t_", file: !9, line: 275, size: 640, elements: !118)
!118 = !{!119, !143, !144, !151, !153, !164}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "url_map_trie", scope: !117, file: !9, line: 276, baseType: !120, size: 128)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_t", file: !121, line: 25, baseType: !122)
!121 = !DIFile(filename: "common/lwan-trie.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "ee6a35f9d72fff2f5550c3424937f5b6")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_t_", file: !121, line: 41, size: 128, elements: !123)
!123 = !{!124, !142}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !122, file: !121, line: 42, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_node_t", file: !121, line: 26, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_node_t_", file: !121, line: 29, size: 640, elements: !128)
!128 = !{!129, !133, !141}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !127, file: !121, line: 30, baseType: !130, size: 512)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 512, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 8)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !127, file: !121, line: 31, baseType: !134, size: 64, offset: 512)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_leaf_t", file: !121, line: 27, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_leaf_t_", file: !121, line: 35, size: 192, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !136, file: !121, line: 36, baseType: !82, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !136, file: !121, line: 37, baseType: !20, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !136, file: !121, line: 38, baseType: !134, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !127, file: !121, line: 32, baseType: !64, size: 32, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !122, file: !121, line: 43, baseType: !30, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !117, file: !9, line: 277, baseType: !89, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !117, file: !9, line: 283, baseType: !145, size: 128, offset: 192)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !117, file: !9, line: 279, size: 128, elements: !146)
!146 = !{!147, !148, !149}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !145, file: !9, line: 280, baseType: !110, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "max_fd", scope: !145, file: !9, line: 281, baseType: !39, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !145, file: !9, line: 282, baseType: !150, size: 16, offset: 96)
!150 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "module_registry", scope: !117, file: !9, line: 285, baseType: !152, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !117, file: !9, line: 286, baseType: !154, size: 192, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_config_t", file: !9, line: 111, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_config_t_", file: !9, line: 266, size: 192, elements: !156)
!156 = !{!157, !158, !159, !161, !162, !163}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !155, file: !9, line: 267, baseType: !82, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !155, file: !9, line: 268, baseType: !150, size: 16, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !155, file: !9, line: 269, baseType: !160, size: 8, offset: 80)
!160 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_port", scope: !155, file: !9, line: 270, baseType: !160, size: 8, offset: 88)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !155, file: !9, line: 271, baseType: !39, size: 32, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "n_threads", scope: !155, file: !9, line: 272, baseType: !150, size: 16, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "main_socket", scope: !117, file: !9, line: 287, baseType: !64, size: 32, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !112, file: !9, line: 259, baseType: !166, size: 576, offset: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !112, file: !9, line: 255, size: 576, elements: !167)
!167 = !{!168, !172, !173}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !166, file: !9, line: 256, baseType: !169, size: 240)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 240, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 30)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !166, file: !9, line: 257, baseType: !169, size: 240, offset: 240)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !166, file: !9, line: 258, baseType: !174, size: 64, offset: 512)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !175, line: 10, baseType: !176)
!175 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !177, line: 160, baseType: !178)
!177 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!178 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !112, file: !9, line: 261, baseType: !64, size: 32, offset: 640)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_fd", scope: !112, file: !9, line: 262, baseType: !181, size: 64, offset: 672)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 2)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !112, file: !9, line: 263, baseType: !185, size: 64, offset: 768)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !186, line: 27, baseType: !86)
!186 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!187 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !91, file: !9, line: 203, baseType: !64, size: 32, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !9, line: 203, baseType: !64, size: 32, offset: 224)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "query_params", scope: !59, file: !9, line: 216, baseType: !190, size: 128, offset: 384)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !59, file: !9, line: 213, size: 128, elements: !191)
!191 = !{!192, !199}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !190, file: !9, line: 214, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_key_value_t", file: !9, line: 105, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_key_value_t_", file: !9, line: 173, size: 128, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !195, file: !9, line: 174, baseType: !82, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !195, file: !9, line: 175, baseType: !82, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !190, file: !9, line: 215, baseType: !84, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "post_data", scope: !59, file: !9, line: 216, baseType: !190, size: 128, offset: 512)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !59, file: !9, line: 223, baseType: !202, size: 192, offset: 640)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !59, file: !9, line: 217, size: 192, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !202, file: !9, line: 218, baseType: !174, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !202, file: !9, line: 222, baseType: !206, size: 128, offset: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !202, file: !9, line: 219, size: 128, elements: !207)
!207 = !{!208, !212}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !206, file: !9, line: 220, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !210, line: 85, baseType: !211)
!210 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !177, line: 152, baseType: !178)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !206, file: !9, line: 221, baseType: !209, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !59, file: !9, line: 224, baseType: !214, size: 448, offset: 832)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_response_t", file: !9, line: 107, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_response_t_", file: !9, line: 178, size: 448, elements: !216)
!216 = !{!217, !234, !235, !236, !237}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !215, file: !9, line: 179, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "strbuf_t", file: !220, line: 25, baseType: !221)
!220 = !DIFile(filename: "common/strbuf.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1033ae3716fb79c0aa99479d5ab6b6cd")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf_t_", file: !220, line: 27, size: 256, elements: !222)
!222 = !{!223, !228, !233}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !221, file: !220, line: 31, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !220, line: 28, size: 64, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !224, file: !220, line: 29, baseType: !82, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "static_buffer", scope: !224, file: !220, line: 30, baseType: !13, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !221, file: !220, line: 34, baseType: !229, size: 128, offset: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !221, file: !220, line: 32, size: 128, elements: !230)
!230 = !{!231, !232}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !229, file: !220, line: 33, baseType: !84, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !229, file: !220, line: 33, baseType: !84, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !221, file: !220, line: 35, baseType: !39, size: 32, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !215, file: !9, line: 180, baseType: !13, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !215, file: !9, line: 181, baseType: !84, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !215, file: !9, line: 182, baseType: !193, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !215, file: !9, line: 188, baseType: !238, size: 192, offset: 256)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !9, line: 184, size: 192, elements: !239)
!239 = !{!240, !244, !245}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !238, file: !9, line: 185, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!37, !57, !20}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !238, file: !9, line: 186, baseType: !20, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !238, file: !9, line: 187, baseType: !20, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !10, file: !9, line: 233, baseType: !248, size: 32, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_handler_flags_t", file: !9, line: 143, baseType: !249)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 133, baseType: !39, size: 32, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258}
!251 = !DIEnumerator(name: "HANDLER_PARSE_QUERY_STRING", value: 1)
!252 = !DIEnumerator(name: "HANDLER_PARSE_IF_MODIFIED_SINCE", value: 2)
!253 = !DIEnumerator(name: "HANDLER_PARSE_RANGE", value: 4)
!254 = !DIEnumerator(name: "HANDLER_PARSE_ACCEPT_ENCODING", value: 8)
!255 = !DIEnumerator(name: "HANDLER_PARSE_POST_DATA", value: 16)
!256 = !DIEnumerator(name: "HANDLER_MUST_AUTHORIZE", value: 32)
!257 = !DIEnumerator(name: "HANDLER_REMOVE_LEADING_SLASH", value: 64)
!258 = !DIEnumerator(name: "HANDLER_PARSE_MASK", value: 31)
!259 = distinct !DICompileUnit(language: DW_LANG_C11, file: !260, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !261, globals: !262, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "/home/raj/lwan/common/lwan-redirect.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "1614b421dd87198cc4b34905c0f8dd7e")
!261 = !{!38, !63, !95, !249}
!262 = !{!263, !0, !268, !273}
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 72, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 9)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 24, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 3)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !3, line: 38, type: !265, isLocal: true, isDefinition: true)
!275 = !{}
!276 = !{i32 7, !"Dwarf Version", i32 5}
!277 = !{i32 2, !"Debug Info Version", i32 3}
!278 = !{i32 1, !"wchar_size", i32 4}
!279 = !{i32 8, !"PIC Level", i32 2}
!280 = !{i32 7, !"PIE Level", i32 2}
!281 = !{i32 7, !"uwtable", i32 2}
!282 = !{i32 7, !"frame-pointer", i32 2}
!283 = !{!"clang version 16.0.0"}
!284 = !DILocation(line: 73, column: 5, scope: !2)
!285 = distinct !DISubprogram(name: "redirect_init", scope: !3, file: !3, line: 48, type: !18, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !275)
!286 = !DILocalVariable(name: "data", arg: 1, scope: !285, file: !3, line: 48, type: !20)
!287 = !DILocation(line: 48, column: 34, scope: !285)
!288 = !DILocalVariable(name: "settings", scope: !285, file: !3, line: 50, type: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_redirect_settings_t", file: !291, line: 24, size: 64, elements: !292)
!291 = !DIFile(filename: "common/lwan-redirect.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "25abbb1e5767b611112408eeb90b4027")
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !290, file: !291, line: 25, baseType: !82, size: 64)
!294 = !DILocation(line: 50, column: 38, scope: !285)
!295 = !DILocation(line: 50, column: 49, scope: !285)
!296 = !DILocation(line: 51, column: 13, scope: !285)
!297 = !DILocation(line: 51, column: 23, scope: !285)
!298 = !DILocation(line: 51, column: 12, scope: !285)
!299 = !DILocation(line: 51, column: 36, scope: !285)
!300 = !DILocation(line: 51, column: 46, scope: !285)
!301 = !DILocation(line: 51, column: 29, scope: !285)
!302 = !DILocation(line: 51, column: 5, scope: !285)
!303 = distinct !DISubprogram(name: "redirect_init_from_hash", scope: !3, file: !3, line: 54, type: !23, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !275)
!304 = !DILocalVariable(name: "hash", arg: 1, scope: !303, file: !3, line: 54, type: !25)
!305 = !DILocation(line: 54, column: 57, scope: !303)
!306 = !DILocalVariable(name: "settings", scope: !303, file: !3, line: 56, type: !290)
!307 = !DILocation(line: 56, column: 37, scope: !303)
!308 = !DILocation(line: 56, column: 48, scope: !303)
!309 = !DILocation(line: 57, column: 25, scope: !303)
!310 = !DILocation(line: 57, column: 15, scope: !303)
!311 = !DILocation(line: 59, column: 12, scope: !303)
!312 = !DILocation(line: 59, column: 5, scope: !303)
!313 = distinct !DISubprogram(name: "redirect_handle_cb", scope: !3, file: !3, line: 27, type: !35, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !275)
!314 = !DILocalVariable(name: "request", arg: 1, scope: !313, file: !3, line: 27, type: !57)
!315 = !DILocation(line: 27, column: 36, scope: !313)
!316 = !DILocalVariable(name: "response", arg: 2, scope: !313, file: !3, line: 28, type: !246)
!317 = !DILocation(line: 28, column: 37, scope: !313)
!318 = !DILocalVariable(name: "data", arg: 3, scope: !313, file: !3, line: 29, type: !20)
!319 = !DILocation(line: 29, column: 26, scope: !313)
!320 = !DILocation(line: 31, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !313, file: !3, line: 31, column: 9)
!322 = !DILocation(line: 31, column: 9, scope: !313)
!323 = !DILocation(line: 32, column: 9, scope: !321)
!324 = !DILocalVariable(name: "headers", scope: !313, file: !3, line: 34, type: !193)
!325 = !DILocation(line: 34, column: 23, scope: !313)
!326 = !DILocation(line: 34, column: 45, scope: !313)
!327 = !DILocation(line: 34, column: 54, scope: !313)
!328 = !DILocation(line: 34, column: 60, scope: !313)
!329 = !DILocation(line: 34, column: 33, scope: !313)
!330 = !DILocation(line: 35, column: 9, scope: !331)
!331 = distinct !DILexicalBlock(scope: !313, file: !3, line: 35, column: 9)
!332 = !DILocation(line: 35, column: 9, scope: !313)
!333 = !DILocation(line: 36, column: 9, scope: !331)
!334 = !DILocation(line: 38, column: 5, scope: !313)
!335 = !DILocation(line: 38, column: 16, scope: !313)
!336 = !DILocation(line: 38, column: 20, scope: !313)
!337 = !DILocation(line: 39, column: 24, scope: !313)
!338 = !DILocation(line: 39, column: 5, scope: !313)
!339 = !DILocation(line: 39, column: 16, scope: !313)
!340 = !DILocation(line: 39, column: 22, scope: !313)
!341 = !DILocation(line: 40, column: 5, scope: !313)
!342 = !DILocation(line: 40, column: 16, scope: !313)
!343 = !DILocation(line: 40, column: 20, scope: !313)
!344 = !DILocation(line: 41, column: 5, scope: !313)
!345 = !DILocation(line: 41, column: 16, scope: !313)
!346 = !DILocation(line: 41, column: 22, scope: !313)
!347 = !DILocation(line: 43, column: 25, scope: !313)
!348 = !DILocation(line: 43, column: 5, scope: !313)
!349 = !DILocation(line: 43, column: 15, scope: !313)
!350 = !DILocation(line: 43, column: 23, scope: !313)
!351 = !DILocation(line: 45, column: 5, scope: !313)
!352 = !DILocation(line: 46, column: 1, scope: !313)
