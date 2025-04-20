; ModuleID = './src/utils/thread.c'
source_filename = "./src/utils/thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_thread = type { ptr, ptr, i64 }
%struct.__sigset_t = type { [16 x i64] }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [29 x i8] c"./src/utils/thread_posix.inc\00", align 1, !dbg !7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_thread_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !41 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !45, metadata !DIExpression()), !dbg !46
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !47, metadata !DIExpression()), !dbg !48
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata ptr %7, metadata !51, metadata !DIExpression()), !dbg !52
  %8 = load ptr, ptr %5, align 8, !dbg !53
  %9 = load ptr, ptr %4, align 8, !dbg !54
  %10 = getelementptr inbounds %struct.nn_thread, ptr %9, i32 0, i32 0, !dbg !55
  store ptr %8, ptr %10, align 8, !dbg !56
  %11 = load ptr, ptr %6, align 8, !dbg !57
  %12 = load ptr, ptr %4, align 8, !dbg !58
  %13 = getelementptr inbounds %struct.nn_thread, ptr %12, i32 0, i32 1, !dbg !59
  store ptr %11, ptr %13, align 8, !dbg !60
  %14 = load ptr, ptr %4, align 8, !dbg !61
  %15 = getelementptr inbounds %struct.nn_thread, ptr %14, i32 0, i32 2, !dbg !62
  %16 = load ptr, ptr %4, align 8, !dbg !63
  %17 = call i32 @pthread_create(ptr noundef %15, ptr noundef null, ptr noundef @nn_thread_main_routine, ptr noundef %16) #6, !dbg !64
  store i32 %17, ptr %7, align 4, !dbg !65
  br label %18, !dbg !66

18:                                               ; preds = %3
  %19 = load i32, ptr %7, align 4, !dbg !67
  %20 = icmp eq i32 %19, 0, !dbg !67
  %21 = xor i1 %20, true, !dbg !67
  %22 = zext i1 %21 to i32, !dbg !67
  %23 = sext i32 %22 to i64, !dbg !67
  %24 = icmp ne i64 %23, 0, !dbg !67
  br i1 %24, label %25, label %31, !dbg !70

25:                                               ; preds = %18
  %26 = load ptr, ptr @stderr, align 8, !dbg !71
  %27 = load i32, ptr %7, align 4, !dbg !71
  %28 = call ptr @nn_err_strerror(i32 noundef %27), !dbg !71
  %29 = load i32, ptr %7, align 4, !dbg !71
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str, ptr noundef %28, i32 noundef %29, ptr noundef @.str.1, i32 noundef 57), !dbg !71
  call void @nn_err_abort() #7, !dbg !71
  unreachable, !dbg !71

31:                                               ; preds = %18
  br label %32, !dbg !70

32:                                               ; preds = %31
  ret void, !dbg !73
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @nn_thread_main_routine(ptr noundef %0) #0 !dbg !74 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.__sigset_t, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata ptr %3, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata ptr %4, metadata !81, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata ptr %5, metadata !93, metadata !DIExpression()), !dbg !94
  %6 = load ptr, ptr %2, align 8, !dbg !95
  store ptr %6, ptr %5, align 8, !dbg !96
  %7 = call i32 @sigfillset(ptr noundef %4) #6, !dbg !97
  store i32 %7, ptr %3, align 4, !dbg !98
  br label %8, !dbg !99

8:                                                ; preds = %1
  %9 = load i32, ptr %3, align 4, !dbg !100
  %10 = icmp eq i32 %9, 0, !dbg !100
  %11 = xor i1 %10, true, !dbg !100
  %12 = zext i1 %11 to i32, !dbg !100
  %13 = sext i32 %12 to i64, !dbg !100
  %14 = icmp ne i64 %13, 0, !dbg !100
  br i1 %14, label %15, label %23, !dbg !103

15:                                               ; preds = %8
  %16 = load ptr, ptr @stderr, align 8, !dbg !104
  %17 = call ptr @__errno_location() #8, !dbg !104
  %18 = load i32, ptr %17, align 4, !dbg !104
  %19 = call ptr @nn_err_strerror(i32 noundef %18), !dbg !104
  %20 = call ptr @__errno_location() #8, !dbg !104
  %21 = load i32, ptr %20, align 4, !dbg !104
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str, ptr noundef %19, i32 noundef %21, ptr noundef @.str.1, i32 noundef 39), !dbg !104
  call void @nn_err_abort() #7, !dbg !104
  unreachable, !dbg !104

23:                                               ; preds = %8
  br label %24, !dbg !103

24:                                               ; preds = %23
  %25 = call i32 @pthread_sigmask(i32 noundef 0, ptr noundef %4, ptr noundef null) #6, !dbg !106
  store i32 %25, ptr %3, align 4, !dbg !107
  br label %26, !dbg !108

26:                                               ; preds = %24
  %27 = load i32, ptr %3, align 4, !dbg !109
  %28 = icmp eq i32 %27, 0, !dbg !109
  %29 = xor i1 %28, true, !dbg !109
  %30 = zext i1 %29 to i32, !dbg !109
  %31 = sext i32 %30 to i64, !dbg !109
  %32 = icmp ne i64 %31, 0, !dbg !109
  br i1 %32, label %33, label %39, !dbg !112

33:                                               ; preds = %26
  %34 = load ptr, ptr @stderr, align 8, !dbg !113
  %35 = load i32, ptr %3, align 4, !dbg !113
  %36 = call ptr @nn_err_strerror(i32 noundef %35), !dbg !113
  %37 = load i32, ptr %3, align 4, !dbg !113
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str, ptr noundef %36, i32 noundef %37, ptr noundef @.str.1, i32 noundef 41), !dbg !113
  call void @nn_err_abort() #7, !dbg !113
  unreachable, !dbg !113

39:                                               ; preds = %26
  br label %40, !dbg !112

40:                                               ; preds = %39
  %41 = load ptr, ptr %5, align 8, !dbg !115
  %42 = getelementptr inbounds %struct.nn_thread, ptr %41, i32 0, i32 0, !dbg !116
  %43 = load ptr, ptr %42, align 8, !dbg !116
  %44 = load ptr, ptr %5, align 8, !dbg !117
  %45 = getelementptr inbounds %struct.nn_thread, ptr %44, i32 0, i32 1, !dbg !118
  %46 = load ptr, ptr %45, align 8, !dbg !118
  call void %43(ptr noundef %46), !dbg !115
  ret ptr null, !dbg !119
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare ptr @nn_err_strerror(i32 noundef) #3

; Function Attrs: noreturn
declare void @nn_err_abort() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_thread_term(ptr noundef %0) #0 !dbg !120 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata ptr %3, metadata !125, metadata !DIExpression()), !dbg !126
  %4 = load ptr, ptr %2, align 8, !dbg !127
  %5 = getelementptr inbounds %struct.nn_thread, ptr %4, i32 0, i32 2, !dbg !128
  %6 = load i64, ptr %5, align 8, !dbg !128
  %7 = call i32 @pthread_join(i64 noundef %6, ptr noundef null), !dbg !129
  store i32 %7, ptr %3, align 4, !dbg !130
  br label %8, !dbg !131

8:                                                ; preds = %1
  %9 = load i32, ptr %3, align 4, !dbg !132
  %10 = icmp eq i32 %9, 0, !dbg !132
  %11 = xor i1 %10, true, !dbg !132
  %12 = zext i1 %11 to i32, !dbg !132
  %13 = sext i32 %12 to i64, !dbg !132
  %14 = icmp ne i64 %13, 0, !dbg !132
  br i1 %14, label %15, label %21, !dbg !135

15:                                               ; preds = %8
  %16 = load ptr, ptr @stderr, align 8, !dbg !136
  %17 = load i32, ptr %3, align 4, !dbg !136
  %18 = call ptr @nn_err_strerror(i32 noundef %17), !dbg !136
  %19 = load i32, ptr %3, align 4, !dbg !136
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str, ptr noundef %18, i32 noundef %19, ptr noundef @.str.1, i32 noundef 65), !dbg !136
  call void @nn_err_abort() #7, !dbg !136
  unreachable, !dbg !136

21:                                               ; preds = %8
  br label %22, !dbg !135

22:                                               ; preds = %21
  ret void, !dbg !138
}

declare i32 @pthread_join(i64 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @sigfillset(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #5

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32 noundef, ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/utils/thread_posix.inc", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "deb54074c86c5d694fcad176333ece67")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 29)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !13, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !14, globals: !32, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "src/utils/thread.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "c93fc598bf1724c56ff68ba104997909")
!14 = !{!15, !16, !17}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !19, line: 25, size: 192, elements: !20)
!19 = !DIFile(filename: "./src/utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!20 = !{!21, !27, !28}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !18, file: !19, line: 27, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !24, line: 28, baseType: !25)
!24 = !DIFile(filename: "./src/utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!25 = !DISubroutineType(types: !26)
!26 = !{null, !15}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !18, file: !19, line: 28, baseType: !15, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !18, file: !19, line: 29, baseType: !29, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !30, line: 27, baseType: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !{!0, !7}
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{i32 8, !"PIC Level", i32 2}
!37 = !{i32 7, !"PIE Level", i32 2}
!38 = !{i32 7, !"uwtable", i32 2}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 16.0.0"}
!41 = distinct !DISubprogram(name: "nn_thread_init", scope: !2, file: !2, line: 48, type: !42, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !44)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !17, !22, !15}
!44 = !{}
!45 = !DILocalVariable(name: "self", arg: 1, scope: !41, file: !2, line: 48, type: !17)
!46 = !DILocation(line: 48, column: 40, scope: !41)
!47 = !DILocalVariable(name: "routine", arg: 2, scope: !41, file: !2, line: 49, type: !22)
!48 = !DILocation(line: 49, column: 24, scope: !41)
!49 = !DILocalVariable(name: "arg", arg: 3, scope: !41, file: !2, line: 49, type: !15)
!50 = !DILocation(line: 49, column: 39, scope: !41)
!51 = !DILocalVariable(name: "rc", scope: !41, file: !2, line: 51, type: !16)
!52 = !DILocation(line: 51, column: 9, scope: !41)
!53 = !DILocation(line: 53, column: 21, scope: !41)
!54 = !DILocation(line: 53, column: 5, scope: !41)
!55 = !DILocation(line: 53, column: 11, scope: !41)
!56 = !DILocation(line: 53, column: 19, scope: !41)
!57 = !DILocation(line: 54, column: 17, scope: !41)
!58 = !DILocation(line: 54, column: 5, scope: !41)
!59 = !DILocation(line: 54, column: 11, scope: !41)
!60 = !DILocation(line: 54, column: 15, scope: !41)
!61 = !DILocation(line: 55, column: 27, scope: !41)
!62 = !DILocation(line: 55, column: 33, scope: !41)
!63 = !DILocation(line: 56, column: 17, scope: !41)
!64 = !DILocation(line: 55, column: 10, scope: !41)
!65 = !DILocation(line: 55, column: 8, scope: !41)
!66 = !DILocation(line: 57, column: 5, scope: !41)
!67 = !DILocation(line: 57, column: 5, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !2, line: 57, column: 5)
!69 = distinct !DILexicalBlock(scope: !41, file: !2, line: 57, column: 5)
!70 = !DILocation(line: 57, column: 5, scope: !69)
!71 = !DILocation(line: 57, column: 5, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !2, line: 57, column: 5)
!73 = !DILocation(line: 58, column: 1, scope: !41)
!74 = distinct !DISubprogram(name: "nn_thread_main_routine", scope: !2, file: !2, line: 27, type: !75, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !44)
!75 = !DISubroutineType(types: !76)
!76 = !{!15, !15}
!77 = !DILocalVariable(name: "arg", arg: 1, scope: !74, file: !2, line: 27, type: !15)
!78 = !DILocation(line: 27, column: 44, scope: !74)
!79 = !DILocalVariable(name: "rc", scope: !74, file: !2, line: 29, type: !16)
!80 = !DILocation(line: 29, column: 9, scope: !74)
!81 = !DILocalVariable(name: "sigset", scope: !74, file: !2, line: 30, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !83, line: 7, baseType: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "c2b978aaf49d5c0e2b1e9c2e1b7f7848")
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !85, line: 8, baseType: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 5, size: 1024, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !86, file: !85, line: 7, baseType: !89, size: 1024)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1024, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 16)
!92 = !DILocation(line: 30, column: 14, scope: !74)
!93 = !DILocalVariable(name: "self", scope: !74, file: !2, line: 31, type: !17)
!94 = !DILocation(line: 31, column: 23, scope: !74)
!95 = !DILocation(line: 33, column: 32, scope: !74)
!96 = !DILocation(line: 33, column: 10, scope: !74)
!97 = !DILocation(line: 38, column: 10, scope: !74)
!98 = !DILocation(line: 38, column: 8, scope: !74)
!99 = !DILocation(line: 39, column: 5, scope: !74)
!100 = !DILocation(line: 39, column: 5, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 39, column: 5)
!102 = distinct !DILexicalBlock(scope: !74, file: !2, line: 39, column: 5)
!103 = !DILocation(line: 39, column: 5, scope: !102)
!104 = !DILocation(line: 39, column: 5, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !2, line: 39, column: 5)
!106 = !DILocation(line: 40, column: 10, scope: !74)
!107 = !DILocation(line: 40, column: 8, scope: !74)
!108 = !DILocation(line: 41, column: 5, scope: !74)
!109 = !DILocation(line: 41, column: 5, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 41, column: 5)
!111 = distinct !DILexicalBlock(scope: !74, file: !2, line: 41, column: 5)
!112 = !DILocation(line: 41, column: 5, scope: !111)
!113 = !DILocation(line: 41, column: 5, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !2, line: 41, column: 5)
!115 = !DILocation(line: 44, column: 5, scope: !74)
!116 = !DILocation(line: 44, column: 11, scope: !74)
!117 = !DILocation(line: 44, column: 20, scope: !74)
!118 = !DILocation(line: 44, column: 26, scope: !74)
!119 = !DILocation(line: 45, column: 5, scope: !74)
!120 = distinct !DISubprogram(name: "nn_thread_term", scope: !2, file: !2, line: 60, type: !121, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !44)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !17}
!123 = !DILocalVariable(name: "self", arg: 1, scope: !120, file: !2, line: 60, type: !17)
!124 = !DILocation(line: 60, column: 40, scope: !120)
!125 = !DILocalVariable(name: "rc", scope: !120, file: !2, line: 62, type: !16)
!126 = !DILocation(line: 62, column: 9, scope: !120)
!127 = !DILocation(line: 64, column: 24, scope: !120)
!128 = !DILocation(line: 64, column: 30, scope: !120)
!129 = !DILocation(line: 64, column: 10, scope: !120)
!130 = !DILocation(line: 64, column: 8, scope: !120)
!131 = !DILocation(line: 65, column: 5, scope: !120)
!132 = !DILocation(line: 65, column: 5, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !2, line: 65, column: 5)
!134 = distinct !DILexicalBlock(scope: !120, file: !2, line: 65, column: 5)
!135 = !DILocation(line: 65, column: 5, scope: !134)
!136 = !DILocation(line: 65, column: 5, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !2, line: 65, column: 5)
!138 = !DILocation(line: 66, column: 1, scope: !120)
