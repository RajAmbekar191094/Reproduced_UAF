; ModuleID = './src/utils/mutex.c'
source_filename = "./src/utils/mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_mutex = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [20 x i8] c"./src/utils/mutex.c\00", align 1, !dbg !7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_mutex_init(ptr noundef %0) #0 !dbg !25 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata ptr %3, metadata !67, metadata !DIExpression()), !dbg !68
  %4 = load ptr, ptr %2, align 8, !dbg !69
  %5 = getelementptr inbounds %struct.nn_mutex, ptr %4, i32 0, i32 0, !dbg !70
  %6 = call i32 @pthread_mutex_init(ptr noundef %5, ptr noundef null) #5, !dbg !71
  store i32 %6, ptr %3, align 4, !dbg !72
  br label %7, !dbg !73

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4, !dbg !74
  %9 = icmp eq i32 %8, 0, !dbg !74
  %10 = xor i1 %9, true, !dbg !74
  %11 = zext i1 %10 to i32, !dbg !74
  %12 = sext i32 %11 to i64, !dbg !74
  %13 = icmp ne i64 %12, 0, !dbg !74
  br i1 %13, label %14, label %20, !dbg !77

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !78
  %16 = load i32, ptr %3, align 4, !dbg !78
  %17 = call ptr @nn_err_strerror(i32 noundef %16), !dbg !78
  %18 = load i32, ptr %3, align 4, !dbg !78
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef %17, i32 noundef %18, ptr noundef @.str.1, i32 noundef 55), !dbg !78
  call void @nn_err_abort() #6, !dbg !78
  unreachable, !dbg !78

20:                                               ; preds = %7
  br label %21, !dbg !77

21:                                               ; preds = %20
  ret void, !dbg !80
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare ptr @nn_err_strerror(i32 noundef) #3

; Function Attrs: noreturn
declare void @nn_err_abort() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_mutex_term(ptr noundef %0) #0 !dbg !81 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata ptr %3, metadata !84, metadata !DIExpression()), !dbg !85
  %4 = load ptr, ptr %2, align 8, !dbg !86
  %5 = getelementptr inbounds %struct.nn_mutex, ptr %4, i32 0, i32 0, !dbg !87
  %6 = call i32 @pthread_mutex_destroy(ptr noundef %5) #5, !dbg !88
  store i32 %6, ptr %3, align 4, !dbg !89
  br label %7, !dbg !90

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4, !dbg !91
  %9 = icmp eq i32 %8, 0, !dbg !91
  %10 = xor i1 %9, true, !dbg !91
  %11 = zext i1 %10 to i32, !dbg !91
  %12 = sext i32 %11 to i64, !dbg !91
  %13 = icmp ne i64 %12, 0, !dbg !91
  br i1 %13, label %14, label %20, !dbg !94

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !95
  %16 = load i32, ptr %3, align 4, !dbg !95
  %17 = call ptr @nn_err_strerror(i32 noundef %16), !dbg !95
  %18 = load i32, ptr %3, align 4, !dbg !95
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef %17, i32 noundef %18, ptr noundef @.str.1, i32 noundef 63), !dbg !95
  call void @nn_err_abort() #6, !dbg !95
  unreachable, !dbg !95

20:                                               ; preds = %7
  br label %21, !dbg !94

21:                                               ; preds = %20
  ret void, !dbg !97
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_mutex_lock(ptr noundef %0) #0 !dbg !98 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata ptr %3, metadata !101, metadata !DIExpression()), !dbg !102
  %4 = load ptr, ptr %2, align 8, !dbg !103
  %5 = getelementptr inbounds %struct.nn_mutex, ptr %4, i32 0, i32 0, !dbg !104
  %6 = call i32 @pthread_mutex_lock(ptr noundef %5) #5, !dbg !105
  store i32 %6, ptr %3, align 4, !dbg !106
  br label %7, !dbg !107

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4, !dbg !108
  %9 = icmp eq i32 %8, 0, !dbg !108
  %10 = xor i1 %9, true, !dbg !108
  %11 = zext i1 %10 to i32, !dbg !108
  %12 = sext i32 %11 to i64, !dbg !108
  %13 = icmp ne i64 %12, 0, !dbg !108
  br i1 %13, label %14, label %20, !dbg !111

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !112
  %16 = load i32, ptr %3, align 4, !dbg !112
  %17 = call ptr @nn_err_strerror(i32 noundef %16), !dbg !112
  %18 = load i32, ptr %3, align 4, !dbg !112
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef %17, i32 noundef %18, ptr noundef @.str.1, i32 noundef 71), !dbg !112
  call void @nn_err_abort() #6, !dbg !112
  unreachable, !dbg !112

20:                                               ; preds = %7
  br label %21, !dbg !111

21:                                               ; preds = %20
  ret void, !dbg !114
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_mutex_unlock(ptr noundef %0) #0 !dbg !115 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata ptr %3, metadata !118, metadata !DIExpression()), !dbg !119
  %4 = load ptr, ptr %2, align 8, !dbg !120
  %5 = getelementptr inbounds %struct.nn_mutex, ptr %4, i32 0, i32 0, !dbg !121
  %6 = call i32 @pthread_mutex_unlock(ptr noundef %5) #5, !dbg !122
  store i32 %6, ptr %3, align 4, !dbg !123
  br label %7, !dbg !124

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4, !dbg !125
  %9 = icmp eq i32 %8, 0, !dbg !125
  %10 = xor i1 %9, true, !dbg !125
  %11 = zext i1 %10 to i32, !dbg !125
  %12 = sext i32 %11 to i64, !dbg !125
  %13 = icmp ne i64 %12, 0, !dbg !125
  br i1 %13, label %14, label %20, !dbg !128

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !129
  %16 = load i32, ptr %3, align 4, !dbg !129
  %17 = call ptr @nn_err_strerror(i32 noundef %16), !dbg !129
  %18 = load i32, ptr %3, align 4, !dbg !129
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef %17, i32 noundef %18, ptr noundef @.str.1, i32 noundef 79), !dbg !129
  call void @nn_err_abort() #6, !dbg !129
  unreachable, !dbg !129

20:                                               ; preds = %7
  br label %21, !dbg !128

21:                                               ; preds = %20
  ret void, !dbg !131
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/utils/mutex.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "47fa76788836cdd743d383f729a34f51")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 20)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !13, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !14, globals: !16, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "src/utils/mutex.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "47fa76788836cdd743d383f729a34f51")
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!0, !7}
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 2}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 16.0.0"}
!25 = distinct !DISubprogram(name: "nn_mutex_init", scope: !2, file: !2, line: 50, type: !26, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !64)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !30, line: 32, size: 320, elements: !31)
!30 = !DIFile(filename: "./src/utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !29, file: !30, line: 36, baseType: !33, size: 320)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !34, line: 72, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !34, line: 67, size: 320, elements: !36)
!36 = !{!37, !58, !62}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !35, file: !34, line: 69, baseType: !38, size: 320)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !39, line: 22, size: 320, elements: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!40 = !{!41, !42, !44, !45, !46, !47, !49, !50}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !38, file: !39, line: 24, baseType: !15, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !38, file: !39, line: 25, baseType: !43, size: 32, offset: 32)
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !38, file: !39, line: 26, baseType: !15, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !38, file: !39, line: 28, baseType: !43, size: 32, offset: 96)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !38, file: !39, line: 32, baseType: !15, size: 32, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !38, file: !39, line: 34, baseType: !48, size: 16, offset: 160)
!48 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !38, file: !39, line: 35, baseType: !48, size: 16, offset: 176)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !38, file: !39, line: 36, baseType: !51, size: 128, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !52, line: 55, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !52, line: 51, size: 128, elements: !54)
!54 = !{!55, !57}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !53, file: !52, line: 53, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !53, file: !52, line: 54, baseType: !56, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !35, file: !34, line: 70, baseType: !59, size: 320)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 40)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !35, file: !34, line: 71, baseType: !63, size: 64)
!63 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!64 = !{}
!65 = !DILocalVariable(name: "self", arg: 1, scope: !25, file: !2, line: 50, type: !28)
!66 = !DILocation(line: 50, column: 38, scope: !25)
!67 = !DILocalVariable(name: "rc", scope: !25, file: !2, line: 52, type: !15)
!68 = !DILocation(line: 52, column: 9, scope: !25)
!69 = !DILocation(line: 54, column: 31, scope: !25)
!70 = !DILocation(line: 54, column: 37, scope: !25)
!71 = !DILocation(line: 54, column: 10, scope: !25)
!72 = !DILocation(line: 54, column: 8, scope: !25)
!73 = !DILocation(line: 55, column: 5, scope: !25)
!74 = !DILocation(line: 55, column: 5, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !2, line: 55, column: 5)
!76 = distinct !DILexicalBlock(scope: !25, file: !2, line: 55, column: 5)
!77 = !DILocation(line: 55, column: 5, scope: !76)
!78 = !DILocation(line: 55, column: 5, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !2, line: 55, column: 5)
!80 = !DILocation(line: 56, column: 1, scope: !25)
!81 = distinct !DISubprogram(name: "nn_mutex_term", scope: !2, file: !2, line: 58, type: !26, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !64)
!82 = !DILocalVariable(name: "self", arg: 1, scope: !81, file: !2, line: 58, type: !28)
!83 = !DILocation(line: 58, column: 38, scope: !81)
!84 = !DILocalVariable(name: "rc", scope: !81, file: !2, line: 60, type: !15)
!85 = !DILocation(line: 60, column: 9, scope: !81)
!86 = !DILocation(line: 62, column: 34, scope: !81)
!87 = !DILocation(line: 62, column: 40, scope: !81)
!88 = !DILocation(line: 62, column: 10, scope: !81)
!89 = !DILocation(line: 62, column: 8, scope: !81)
!90 = !DILocation(line: 63, column: 5, scope: !81)
!91 = !DILocation(line: 63, column: 5, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 63, column: 5)
!93 = distinct !DILexicalBlock(scope: !81, file: !2, line: 63, column: 5)
!94 = !DILocation(line: 63, column: 5, scope: !93)
!95 = !DILocation(line: 63, column: 5, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !2, line: 63, column: 5)
!97 = !DILocation(line: 64, column: 1, scope: !81)
!98 = distinct !DISubprogram(name: "nn_mutex_lock", scope: !2, file: !2, line: 66, type: !26, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !64)
!99 = !DILocalVariable(name: "self", arg: 1, scope: !98, file: !2, line: 66, type: !28)
!100 = !DILocation(line: 66, column: 38, scope: !98)
!101 = !DILocalVariable(name: "rc", scope: !98, file: !2, line: 68, type: !15)
!102 = !DILocation(line: 68, column: 9, scope: !98)
!103 = !DILocation(line: 70, column: 31, scope: !98)
!104 = !DILocation(line: 70, column: 37, scope: !98)
!105 = !DILocation(line: 70, column: 10, scope: !98)
!106 = !DILocation(line: 70, column: 8, scope: !98)
!107 = !DILocation(line: 71, column: 5, scope: !98)
!108 = !DILocation(line: 71, column: 5, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !2, line: 71, column: 5)
!110 = distinct !DILexicalBlock(scope: !98, file: !2, line: 71, column: 5)
!111 = !DILocation(line: 71, column: 5, scope: !110)
!112 = !DILocation(line: 71, column: 5, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !2, line: 71, column: 5)
!114 = !DILocation(line: 72, column: 1, scope: !98)
!115 = distinct !DISubprogram(name: "nn_mutex_unlock", scope: !2, file: !2, line: 74, type: !26, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !64)
!116 = !DILocalVariable(name: "self", arg: 1, scope: !115, file: !2, line: 74, type: !28)
!117 = !DILocation(line: 74, column: 40, scope: !115)
!118 = !DILocalVariable(name: "rc", scope: !115, file: !2, line: 76, type: !15)
!119 = !DILocation(line: 76, column: 9, scope: !115)
!120 = !DILocation(line: 78, column: 33, scope: !115)
!121 = !DILocation(line: 78, column: 39, scope: !115)
!122 = !DILocation(line: 78, column: 10, scope: !115)
!123 = !DILocation(line: 78, column: 8, scope: !115)
!124 = !DILocation(line: 79, column: 5, scope: !115)
!125 = !DILocation(line: 79, column: 5, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !2, line: 79, column: 5)
!127 = distinct !DILexicalBlock(scope: !115, file: !2, line: 79, column: 5)
!128 = !DILocation(line: 79, column: 5, scope: !127)
!129 = !DILocation(line: 79, column: 5, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !2, line: 79, column: 5)
!131 = !DILocation(line: 80, column: 1, scope: !115)
