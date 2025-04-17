; ModuleID = '/home/raj/coturn/src/apps/relay/dbdrivers/dbdriver.c'
source_filename = "/home/raj/coturn/src/apps/relay/dbdrivers/dbdriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._turn_params_ = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, [1025 x i8], [33 x i8], [1025 x i8], [1025 x i8], [1025 x i8], [513 x i8], [1025 x i8], i32, i32, i32, i32, i32, ptr, %union.pthread_mutex_t, i32, i32, i32, i32, i32, [1025 x i8], [1025 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1025 x i8], [1025 x i8], i32, %struct.listener_server, %struct._ip_range_list, %struct._ip_range_list, i32, [4 x ptr], i16, i16, i32, i32, i32, [1025 x i8], i64, ptr, i32, ptr, i8, i8, [1025 x i8], [1025 x i8], i32, %struct._turn_server_addrs_list, i32, %struct._turn_server_addrs_list, %struct._turn_server_addrs_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, %struct._default_users_db_t, i64, [1025 x i8], [1025 x i8], i32, i32, i32, i32, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.listener_server = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr }
%struct._ip_range_list = type { ptr, i64 }
%struct._turn_server_addrs_list = type { ptr, i64, %struct._turn_mutex }
%struct._turn_mutex = type { i32, ptr }
%struct._default_users_db_t = type { i32, %struct._persistent_users_db_t, %struct._ram_users_db_t }
%struct._persistent_users_db_t = type { [1025 x i8] }
%struct._ram_users_db_t = type { i64, ptr, %struct._secrets_list }
%struct._secrets_list = type { ptr, i64 }

@connection_key_once = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1, !dbg !19
@turn_params = external global %struct._turn_params_, align 8
@get_dbdriver._driver = internal global ptr null, align 8, !dbg !26
@connection_key = dso_local global i32 0, align 4, !dbg !248

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_string_key_to_binary(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !261 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca [3 x i8], align 1
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !264, metadata !DIExpression()), !dbg !265
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !266, metadata !DIExpression()), !dbg !267
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata ptr %7, metadata !270, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata ptr %8, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata ptr %9, metadata !277, metadata !DIExpression()), !dbg !278
  %10 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 2, !dbg !279
  store i8 0, ptr %10, align 1, !dbg !280
  store i64 0, ptr %8, align 8, !dbg !281
  br label %11, !dbg !283

11:                                               ; preds = %36, %3
  %12 = load i64, ptr %8, align 8, !dbg !284
  %13 = load i64, ptr %6, align 8, !dbg !286
  %14 = icmp ult i64 %12, %13, !dbg !287
  br i1 %14, label %15, label %39, !dbg !288

15:                                               ; preds = %11
  %16 = load ptr, ptr %4, align 8, !dbg !289
  %17 = load i64, ptr %8, align 8, !dbg !291
  %18 = mul i64 %17, 2, !dbg !292
  %19 = getelementptr inbounds i8, ptr %16, i64 %18, !dbg !289
  %20 = load i8, ptr %19, align 1, !dbg !289
  %21 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 0, !dbg !293
  store i8 %20, ptr %21, align 1, !dbg !294
  %22 = load ptr, ptr %4, align 8, !dbg !295
  %23 = load i64, ptr %8, align 8, !dbg !296
  %24 = mul i64 %23, 2, !dbg !297
  %25 = add i64 %24, 1, !dbg !298
  %26 = getelementptr inbounds i8, ptr %22, i64 %25, !dbg !295
  %27 = load i8, ptr %26, align 1, !dbg !295
  %28 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 1, !dbg !299
  store i8 %27, ptr %28, align 1, !dbg !300
  %29 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 0, !dbg !301
  %30 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %29, ptr noundef @.str, ptr noundef %9) #4, !dbg !302
  %31 = load i32, ptr %9, align 4, !dbg !303
  %32 = trunc i32 %31 to i8, !dbg !304
  %33 = load ptr, ptr %5, align 8, !dbg !305
  %34 = load i64, ptr %8, align 8, !dbg !306
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !305
  store i8 %32, ptr %35, align 1, !dbg !307
  br label %36, !dbg !308

36:                                               ; preds = %15
  %37 = load i64, ptr %8, align 8, !dbg !309
  %38 = add i64 %37, 1, !dbg !309
  store i64 %38, ptr %8, align 8, !dbg !309
  br label %11, !dbg !310, !llvm.loop !311

39:                                               ; preds = %11
  ret i32 0, !dbg !314
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_persistent_users_db() #0 !dbg !315 {
  ret ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), !dbg !326
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_dbdriver() #0 !dbg !28 {
  %1 = alloca ptr, align 8
  %2 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86), align 8, !dbg !327
  %3 = icmp eq i32 %2, -1, !dbg !329
  br i1 %3, label %4, label %5, !dbg !330

4:                                                ; preds = %0
  store ptr null, ptr %1, align 8, !dbg !331
  br label %25, !dbg !331

5:                                                ; preds = %0
  %6 = call i32 @pthread_once(ptr noundef @connection_key_once, ptr noundef @make_connection_key), !dbg !332
  %7 = load ptr, ptr @get_dbdriver._driver, align 8, !dbg !333
  %8 = icmp eq ptr %7, null, !dbg !335
  br i1 %8, label %9, label %23, !dbg !336

9:                                                ; preds = %5
  %10 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86), align 8, !dbg !337
  switch i32 %10, label %21 [
    i32 0, label %11
    i32 1, label %13
    i32 2, label %15
    i32 3, label %17
    i32 4, label %19
  ], !dbg !339

11:                                               ; preds = %9
  %12 = call ptr @get_sqlite_dbdriver(), !dbg !340
  store ptr %12, ptr @get_dbdriver._driver, align 8, !dbg !342
  br label %22, !dbg !343

13:                                               ; preds = %9
  %14 = call ptr @get_pgsql_dbdriver(), !dbg !344
  store ptr %14, ptr @get_dbdriver._driver, align 8, !dbg !345
  br label %22, !dbg !346

15:                                               ; preds = %9
  %16 = call ptr @get_mysql_dbdriver(), !dbg !347
  store ptr %16, ptr @get_dbdriver._driver, align 8, !dbg !348
  br label %22, !dbg !349

17:                                               ; preds = %9
  %18 = call ptr @get_mongo_dbdriver(), !dbg !350
  store ptr %18, ptr @get_dbdriver._driver, align 8, !dbg !351
  br label %22, !dbg !352

19:                                               ; preds = %9
  %20 = call ptr @get_redis_dbdriver(), !dbg !353
  store ptr %20, ptr @get_dbdriver._driver, align 8, !dbg !354
  br label %22, !dbg !355

21:                                               ; preds = %9
  br label %22, !dbg !356

22:                                               ; preds = %21, %19, %17, %15, %13, %11
  br label %23, !dbg !357

23:                                               ; preds = %22, %5
  %24 = load ptr, ptr @get_dbdriver._driver, align 8, !dbg !358
  store ptr %24, ptr %1, align 8, !dbg !359
  br label %25, !dbg !359

25:                                               ; preds = %23, %4
  %26 = load ptr, ptr %1, align 8, !dbg !360
  ret ptr %26, !dbg !360
}

declare i32 @pthread_once(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_connection_key() #0 !dbg !361 {
  %1 = call i32 @pthread_key_create(ptr noundef @connection_key, ptr noundef null) #4, !dbg !362
  ret void, !dbg !363
}

declare ptr @get_sqlite_dbdriver() #3

declare ptr @get_pgsql_dbdriver() #3

declare ptr @get_mysql_dbdriver() #3

declare ptr @get_mongo_dbdriver() #3

declare ptr @get_redis_dbdriver() #3

; Function Attrs: nounwind
declare i32 @pthread_key_create(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!253, !254, !255, !256, !257, !258, !259}
!llvm.ident = !{!260}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "connection_key_once", scope: !2, file: !21, line: 50, type: !252, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !15, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/coturn/src/apps/relay/dbdrivers/dbdriver.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "7070150d312f2b9e70ef3926e681fe94")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_TURN_USERDB_TYPE", file: !6, line: 96, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/apps/relay/userdb.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "ef7aa3b34af7515d3cf1275f8bfd0947")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "TURN_USERDB_TYPE_UNKNOWN", value: -1)
!10 = !DIEnumerator(name: "TURN_USERDB_TYPE_SQLITE", value: 0)
!11 = !DIEnumerator(name: "TURN_USERDB_TYPE_PQ", value: 1)
!12 = !DIEnumerator(name: "TURN_USERDB_TYPE_MYSQL", value: 2)
!13 = !DIEnumerator(name: "TURN_USERDB_TYPE_MONGO", value: 3)
!14 = !DIEnumerator(name: "TURN_USERDB_TYPE_REDIS", value: 4)
!15 = !{!16, !17}
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !{!0, !19, !26, !248}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !21, line: 60, type: !22, isLocal: true, isDefinition: true)
!21 = !DIFile(filename: "src/apps/relay/dbdrivers/dbdriver.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "7070150d312f2b9e70ef3926e681fe94")
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 40, elements: !24)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{!25}
!25 = !DISubrange(count: 5)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "_driver", scope: !28, file: !21, line: 77, type: !31, isLocal: true, isDefinition: true)
!28 = distinct !DISubprogram(name: "get_dbdriver", scope: !21, file: !21, line: 70, type: !29, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !247)
!29 = !DISubroutineType(types: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_dbdriver_t", file: !34, line: 77, baseType: !35)
!34 = !DIFile(filename: "src/apps/relay/dbdrivers/dbdriver.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "00319dc97026a2c0105cbae0fcb396b3")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_dbdriver_t", file: !34, line: 50, size: 1664, elements: !36)
!36 = !{!37, !57, !61, !67, !71, !75, !76, !77, !78, !79, !83, !84, !88, !89, !93, !182, !186, !190, !216, !222, !226, !230, !234, !238, !239, !243}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "get_auth_secrets", scope: !35, file: !34, line: 51, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!7, !41, !52}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "secrets_list_t", file: !6, line: 143, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_secrets_list", file: !6, line: 139, size: 128, elements: !44)
!44 = !{!45, !48}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "secrets", scope: !43, file: !6, line: 140, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !43, file: !6, line: 141, baseType: !49, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 46, baseType: !51)
!50 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !54, line: 24, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !56, line: 38, baseType: !16)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!57 = !DIDerivedType(tag: DW_TAG_member, name: "get_user_key", scope: !35, file: !34, line: 52, baseType: !58, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!7, !52, !52, !52}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "set_user_key", scope: !35, file: !34, line: 53, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!7, !52, !52, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "del_user", scope: !35, file: !34, line: 54, baseType: !68, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!7, !52, !52}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "list_users", scope: !35, file: !34, line: 55, baseType: !72, size: 64, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!7, !52, !41, !41}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "list_secrets", scope: !35, file: !34, line: 56, baseType: !72, size: 64, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "del_secret", scope: !35, file: !34, line: 57, baseType: !68, size: 64, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "set_secret", scope: !35, file: !34, line: 58, baseType: !68, size: 64, offset: 448)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "add_origin", scope: !35, file: !34, line: 59, baseType: !68, size: 64, offset: 512)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "del_origin", scope: !35, file: !34, line: 60, baseType: !80, size: 64, offset: 576)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!7, !52}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "list_origins", scope: !35, file: !34, line: 61, baseType: !72, size: 64, offset: 640)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "set_realm_option_one", scope: !35, file: !34, line: 62, baseType: !85, size: 64, offset: 704)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!7, !52, !51, !65}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "list_realm_options", scope: !35, file: !34, line: 63, baseType: !80, size: 64, offset: 768)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "auth_ping", scope: !35, file: !34, line: 64, baseType: !90, size: 64, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !17}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "get_ip_list", scope: !35, file: !34, line: 65, baseType: !94, size: 64, offset: 896)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!7, !65, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_list_t", file: !99, line: 159, baseType: !100)
!99 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range_list", file: !99, line: 154, size: 128, elements: !101)
!101 = !{!102, !181}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !100, file: !99, line: 155, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_t", file: !99, line: 152, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range", file: !99, line: 146, size: 6624, elements: !106)
!106 = !{!107, !111, !115}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !105, file: !99, line: 147, baseType: !108, size: 2056)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 257)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !105, file: !99, line: 148, baseType: !112, size: 4104, offset: 2056)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 4104, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 513)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !105, file: !99, line: 149, baseType: !116, size: 448, offset: 6176)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr_range", file: !117, line: 53, baseType: !118)
!117 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 50, size: 448, elements: !119)
!119 = !{!120, !180}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !118, file: !117, line: 51, baseType: !121, size: 224)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !117, line: 48, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !117, line: 44, size: 224, elements: !123)
!123 = !{!124, !136, !157}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !122, file: !117, line: 45, baseType: !125, size: 128)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !126, line: 180, size: 128, elements: !127)
!126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!127 = !{!128, !132}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !125, file: !126, line: 182, baseType: !129, size: 16)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !130, line: 28, baseType: !131)
!130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!131 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !125, file: !126, line: 183, baseType: !133, size: 112, offset: 16)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 112, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 14)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !122, file: !117, line: 46, baseType: !137, size: 128)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !138, line: 245, size: 128, elements: !139)
!138 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!139 = !{!140, !141, !145, !153}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !137, file: !138, line: 247, baseType: !129, size: 16)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !137, file: !138, line: 248, baseType: !142, size: 16, offset: 16)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !138, line: 123, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !54, line: 25, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !56, line: 40, baseType: !131)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !137, file: !138, line: 249, baseType: !146, size: 32, offset: 32)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !138, line: 31, size: 32, elements: !147)
!147 = !{!148}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !146, file: !138, line: 33, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !138, line: 30, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !54, line: 26, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !56, line: 42, baseType: !152)
!152 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !137, file: !138, line: 252, baseType: !154, size: 64, offset: 64)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 8)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !122, file: !117, line: 47, baseType: !158, size: 224)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !138, line: 260, size: 224, elements: !159)
!159 = !{!160, !161, !162, !163, !179}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !158, file: !138, line: 262, baseType: !129, size: 16)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !158, file: !138, line: 263, baseType: !142, size: 16, offset: 16)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !158, file: !138, line: 264, baseType: !150, size: 32, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !158, file: !138, line: 265, baseType: !164, size: 128, offset: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !138, line: 219, size: 128, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !164, file: !138, line: 226, baseType: !167, size: 128)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !164, file: !138, line: 221, size: 128, elements: !168)
!168 = !{!169, !173, !175}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !167, file: !138, line: 223, baseType: !170, size: 128)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 128, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 16)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !167, file: !138, line: 224, baseType: !174, size: 128)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, elements: !155)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !167, file: !138, line: 225, baseType: !176, size: 128)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 128, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 4)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !158, file: !138, line: 266, baseType: !150, size: 32, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !118, file: !117, line: 52, baseType: !121, size: 224, offset: 224)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ranges_number", scope: !100, file: !99, line: 156, baseType: !49, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "set_permission_ip", scope: !35, file: !34, line: 66, baseType: !183, size: 64, offset: 960)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!7, !65, !52, !65, !7}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "reread_realms", scope: !35, file: !34, line: 67, baseType: !187, size: 64, offset: 1024)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !41}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "set_oauth_key", scope: !35, file: !34, line: 68, baseType: !191, size: 64, offset: 1088)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!7, !194}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data_raw", file: !196, line: 144, baseType: !197)
!196 = !DIFile(filename: "src/apps/common/apputils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "5f4d9112d5c1617ebc273618c0760b4a")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data_raw", file: !196, line: 135, size: 4800, elements: !198)
!198 = !{!199, !203, !204, !207, !208, !212}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !197, file: !196, line: 136, baseType: !200, size: 1032)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 1032, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 129)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !197, file: !196, line: 137, baseType: !108, size: 2056, offset: 1032)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !197, file: !196, line: 138, baseType: !205, size: 64, offset: 3136)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !54, line: 27, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !56, line: 45, baseType: !51)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !197, file: !196, line: 139, baseType: !150, size: 32, offset: 3200)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !197, file: !196, line: 140, baseType: !209, size: 520, offset: 3232)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 520, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 65)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !197, file: !196, line: 141, baseType: !213, size: 1024, offset: 3752)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 1024, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "get_oauth_key", scope: !35, file: !34, line: 69, baseType: !217, size: 64, offset: 1152)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!7, !220, !194}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "del_oauth_key", scope: !35, file: !34, line: 70, baseType: !223, size: 64, offset: 1216)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!7, !220}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "list_oauth_keys", scope: !35, file: !34, line: 71, baseType: !227, size: 64, offset: 1280)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!7, !41, !41, !41, !41, !41}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "get_admin_user", scope: !35, file: !34, line: 72, baseType: !231, size: 64, offset: 1344)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!7, !220, !52, !52}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "set_admin_user", scope: !35, file: !34, line: 73, baseType: !235, size: 64, offset: 1408)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!7, !220, !220, !220}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "del_admin_user", scope: !35, file: !34, line: 74, baseType: !223, size: 64, offset: 1472)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "list_admin_users", scope: !35, file: !34, line: 75, baseType: !240, size: 64, offset: 1536)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!7, !7}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !35, file: !34, line: 76, baseType: !244, size: 64, offset: 1600)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{null}
!247 = !{}
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "connection_key", scope: !2, file: !21, line: 49, type: !250, isLocal: false, isDefinition: true)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !251, line: 49, baseType: !152)
!251 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_once_t", file: !251, line: 53, baseType: !7)
!253 = !{i32 7, !"Dwarf Version", i32 5}
!254 = !{i32 2, !"Debug Info Version", i32 3}
!255 = !{i32 1, !"wchar_size", i32 4}
!256 = !{i32 8, !"PIC Level", i32 2}
!257 = !{i32 7, !"PIE Level", i32 2}
!258 = !{i32 7, !"uwtable", i32 2}
!259 = !{i32 7, !"frame-pointer", i32 2}
!260 = !{!"clang version 16.0.0"}
!261 = distinct !DISubprogram(name: "convert_string_key_to_binary", scope: !21, file: !21, line: 52, type: !262, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !247)
!262 = !DISubroutineType(types: !263)
!263 = !{!7, !47, !52, !49}
!264 = !DILocalVariable(name: "keysource", arg: 1, scope: !261, file: !21, line: 52, type: !47)
!265 = !DILocation(line: 52, column: 40, scope: !261)
!266 = !DILocalVariable(name: "key", arg: 2, scope: !261, file: !21, line: 52, type: !52)
!267 = !DILocation(line: 52, column: 61, scope: !261)
!268 = !DILocalVariable(name: "sz", arg: 3, scope: !261, file: !21, line: 52, type: !49)
!269 = !DILocation(line: 52, column: 73, scope: !261)
!270 = !DILocalVariable(name: "is", scope: !261, file: !21, line: 53, type: !271)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 3)
!274 = !DILocation(line: 53, column: 7, scope: !261)
!275 = !DILocalVariable(name: "i", scope: !261, file: !21, line: 54, type: !49)
!276 = !DILocation(line: 54, column: 9, scope: !261)
!277 = !DILocalVariable(name: "v", scope: !261, file: !21, line: 55, type: !152)
!278 = !DILocation(line: 55, column: 15, scope: !261)
!279 = !DILocation(line: 56, column: 2, scope: !261)
!280 = !DILocation(line: 56, column: 7, scope: !261)
!281 = !DILocation(line: 57, column: 7, scope: !282)
!282 = distinct !DILexicalBlock(scope: !261, file: !21, line: 57, column: 2)
!283 = !DILocation(line: 57, column: 6, scope: !282)
!284 = !DILocation(line: 57, column: 10, scope: !285)
!285 = distinct !DILexicalBlock(scope: !282, file: !21, line: 57, column: 2)
!286 = !DILocation(line: 57, column: 12, scope: !285)
!287 = !DILocation(line: 57, column: 11, scope: !285)
!288 = !DILocation(line: 57, column: 2, scope: !282)
!289 = !DILocation(line: 58, column: 9, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !21, line: 57, column: 20)
!291 = !DILocation(line: 58, column: 19, scope: !290)
!292 = !DILocation(line: 58, column: 20, scope: !290)
!293 = !DILocation(line: 58, column: 3, scope: !290)
!294 = !DILocation(line: 58, column: 8, scope: !290)
!295 = !DILocation(line: 59, column: 9, scope: !290)
!296 = !DILocation(line: 59, column: 19, scope: !290)
!297 = !DILocation(line: 59, column: 20, scope: !290)
!298 = !DILocation(line: 59, column: 22, scope: !290)
!299 = !DILocation(line: 59, column: 3, scope: !290)
!300 = !DILocation(line: 59, column: 8, scope: !290)
!301 = !DILocation(line: 60, column: 10, scope: !290)
!302 = !DILocation(line: 60, column: 3, scope: !290)
!303 = !DILocation(line: 61, column: 25, scope: !290)
!304 = !DILocation(line: 61, column: 10, scope: !290)
!305 = !DILocation(line: 61, column: 3, scope: !290)
!306 = !DILocation(line: 61, column: 7, scope: !290)
!307 = !DILocation(line: 61, column: 9, scope: !290)
!308 = !DILocation(line: 62, column: 2, scope: !290)
!309 = !DILocation(line: 57, column: 16, scope: !285)
!310 = !DILocation(line: 57, column: 2, scope: !285)
!311 = distinct !{!311, !288, !312, !313}
!312 = !DILocation(line: 62, column: 2, scope: !282)
!313 = !{!"llvm.loop.mustprogress"}
!314 = !DILocation(line: 63, column: 2, scope: !261)
!315 = distinct !DISubprogram(name: "get_persistent_users_db", scope: !21, file: !21, line: 66, type: !316, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !247)
!316 = !DISubroutineType(types: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "persistent_users_db_t", file: !6, line: 157, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_persistent_users_db_t", file: !6, line: 155, size: 8200, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "userdb", scope: !320, file: !6, line: 156, baseType: !323, size: 8200)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8200, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 1025)
!326 = !DILocation(line: 67, column: 2, scope: !315)
!327 = !DILocation(line: 72, column: 35, scope: !328)
!328 = distinct !DILexicalBlock(scope: !28, file: !21, line: 72, column: 6)
!329 = !DILocation(line: 72, column: 47, scope: !328)
!330 = !DILocation(line: 72, column: 6, scope: !28)
!331 = !DILocation(line: 73, column: 3, scope: !328)
!332 = !DILocation(line: 75, column: 9, scope: !28)
!333 = !DILocation(line: 79, column: 6, scope: !334)
!334 = distinct !DILexicalBlock(scope: !28, file: !21, line: 79, column: 6)
!335 = !DILocation(line: 79, column: 14, scope: !334)
!336 = !DILocation(line: 79, column: 6, scope: !28)
!337 = !DILocation(line: 81, column: 40, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !21, line: 79, column: 23)
!339 = !DILocation(line: 81, column: 3, scope: !338)
!340 = !DILocation(line: 84, column: 14, scope: !341)
!341 = distinct !DILexicalBlock(scope: !338, file: !21, line: 81, column: 52)
!342 = !DILocation(line: 84, column: 12, scope: !341)
!343 = !DILocation(line: 85, column: 4, scope: !341)
!344 = !DILocation(line: 89, column: 14, scope: !341)
!345 = !DILocation(line: 89, column: 12, scope: !341)
!346 = !DILocation(line: 90, column: 4, scope: !341)
!347 = !DILocation(line: 94, column: 14, scope: !341)
!348 = !DILocation(line: 94, column: 12, scope: !341)
!349 = !DILocation(line: 95, column: 4, scope: !341)
!350 = !DILocation(line: 99, column: 14, scope: !341)
!351 = !DILocation(line: 99, column: 12, scope: !341)
!352 = !DILocation(line: 100, column: 4, scope: !341)
!353 = !DILocation(line: 104, column: 14, scope: !341)
!354 = !DILocation(line: 104, column: 12, scope: !341)
!355 = !DILocation(line: 105, column: 4, scope: !341)
!356 = !DILocation(line: 108, column: 4, scope: !341)
!357 = !DILocation(line: 110, column: 2, scope: !338)
!358 = !DILocation(line: 111, column: 9, scope: !28)
!359 = !DILocation(line: 111, column: 2, scope: !28)
!360 = !DILocation(line: 112, column: 1, scope: !28)
!361 = distinct !DISubprogram(name: "make_connection_key", scope: !21, file: !21, line: 43, type: !245, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !247)
!362 = !DILocation(line: 45, column: 12, scope: !361)
!363 = !DILocation(line: 46, column: 1, scope: !361)
