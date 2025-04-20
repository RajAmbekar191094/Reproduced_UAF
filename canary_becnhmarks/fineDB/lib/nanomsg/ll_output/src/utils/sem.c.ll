; ModuleID = './src/utils/sem.c'
source_filename = "./src/utils/sem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sem = type { %union.sem_t }
%union.sem_t = type { i64, [24 x i8] }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [18 x i8] c"./src/utils/sem.c\00", align 1, !dbg !7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sem_init(ptr noundef %0) #0 !dbg !25 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata ptr %3, metadata !46, metadata !DIExpression()), !dbg !47
  %4 = load ptr, ptr %2, align 8, !dbg !48
  %5 = getelementptr inbounds %struct.nn_sem, ptr %4, i32 0, i32 0, !dbg !49
  %6 = call i32 @sem_init(ptr noundef %5, i32 noundef 0, i32 noundef 0) #6, !dbg !50
  store i32 %6, ptr %3, align 4, !dbg !51
  br label %7, !dbg !52

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4, !dbg !53
  %9 = icmp eq i32 %8, 0, !dbg !53
  %10 = xor i1 %9, true, !dbg !53
  %11 = zext i1 %10 to i32, !dbg !53
  %12 = sext i32 %11 to i64, !dbg !53
  %13 = icmp ne i64 %12, 0, !dbg !53
  br i1 %13, label %14, label %22, !dbg !56

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !57
  %16 = call ptr @__errno_location() #7, !dbg !57
  %17 = load i32, ptr %16, align 4, !dbg !57
  %18 = call ptr @nn_err_strerror(i32 noundef %17), !dbg !57
  %19 = call ptr @__errno_location() #7, !dbg !57
  %20 = load i32, ptr %19, align 4, !dbg !57
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef %18, i32 noundef %20, ptr noundef @.str.1, i32 noundef 136), !dbg !57
  call void @nn_err_abort() #8, !dbg !57
  unreachable, !dbg !57

22:                                               ; preds = %7
  br label %23, !dbg !56

23:                                               ; preds = %22
  ret void, !dbg !59
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @sem_init(ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare ptr @nn_err_strerror(i32 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #4

; Function Attrs: noreturn
declare void @nn_err_abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sem_term(ptr noundef %0) #0 !dbg !60 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata ptr %3, metadata !63, metadata !DIExpression()), !dbg !64
  %4 = load ptr, ptr %2, align 8, !dbg !65
  %5 = getelementptr inbounds %struct.nn_sem, ptr %4, i32 0, i32 0, !dbg !66
  %6 = call i32 @sem_destroy(ptr noundef %5) #6, !dbg !67
  store i32 %6, ptr %3, align 4, !dbg !68
  br label %7, !dbg !69

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4, !dbg !70
  %9 = icmp eq i32 %8, 0, !dbg !70
  %10 = xor i1 %9, true, !dbg !70
  %11 = zext i1 %10 to i32, !dbg !70
  %12 = sext i32 %11 to i64, !dbg !70
  %13 = icmp ne i64 %12, 0, !dbg !70
  br i1 %13, label %14, label %22, !dbg !73

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !74
  %16 = call ptr @__errno_location() #7, !dbg !74
  %17 = load i32, ptr %16, align 4, !dbg !74
  %18 = call ptr @nn_err_strerror(i32 noundef %17), !dbg !74
  %19 = call ptr @__errno_location() #7, !dbg !74
  %20 = load i32, ptr %19, align 4, !dbg !74
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef %18, i32 noundef %20, ptr noundef @.str.1, i32 noundef 144), !dbg !74
  call void @nn_err_abort() #8, !dbg !74
  unreachable, !dbg !74

22:                                               ; preds = %7
  br label %23, !dbg !73

23:                                               ; preds = %22
  ret void, !dbg !76
}

; Function Attrs: nounwind
declare i32 @sem_destroy(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sem_post(ptr noundef %0) #0 !dbg !77 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata ptr %3, metadata !80, metadata !DIExpression()), !dbg !81
  %4 = load ptr, ptr %2, align 8, !dbg !82
  %5 = getelementptr inbounds %struct.nn_sem, ptr %4, i32 0, i32 0, !dbg !83
  %6 = call i32 @sem_post(ptr noundef %5) #6, !dbg !84
  store i32 %6, ptr %3, align 4, !dbg !85
  br label %7, !dbg !86

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4, !dbg !87
  %9 = icmp eq i32 %8, 0, !dbg !87
  %10 = xor i1 %9, true, !dbg !87
  %11 = zext i1 %10 to i32, !dbg !87
  %12 = sext i32 %11 to i64, !dbg !87
  %13 = icmp ne i64 %12, 0, !dbg !87
  br i1 %13, label %14, label %22, !dbg !90

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !91
  %16 = call ptr @__errno_location() #7, !dbg !91
  %17 = load i32, ptr %16, align 4, !dbg !91
  %18 = call ptr @nn_err_strerror(i32 noundef %17), !dbg !91
  %19 = call ptr @__errno_location() #7, !dbg !91
  %20 = load i32, ptr %19, align 4, !dbg !91
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef %18, i32 noundef %20, ptr noundef @.str.1, i32 noundef 152), !dbg !91
  call void @nn_err_abort() #8, !dbg !91
  unreachable, !dbg !91

22:                                               ; preds = %7
  br label %23, !dbg !90

23:                                               ; preds = %22
  ret void, !dbg !93
}

; Function Attrs: nounwind
declare i32 @sem_post(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sem_wait(ptr noundef %0) #0 !dbg !94 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata ptr %4, metadata !99, metadata !DIExpression()), !dbg !100
  %5 = load ptr, ptr %3, align 8, !dbg !101
  %6 = getelementptr inbounds %struct.nn_sem, ptr %5, i32 0, i32 0, !dbg !102
  %7 = call i32 @sem_wait(ptr noundef %6), !dbg !103
  store i32 %7, ptr %4, align 4, !dbg !104
  %8 = load i32, ptr %4, align 4, !dbg !105
  %9 = icmp slt i32 %8, 0, !dbg !105
  br i1 %9, label %10, label %14, !dbg !105

10:                                               ; preds = %1
  %11 = call ptr @__errno_location() #7, !dbg !105
  %12 = load i32, ptr %11, align 4, !dbg !105
  %13 = icmp eq i32 %12, 4, !dbg !105
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i1 [ false, %1 ], [ %13, %10 ], !dbg !107
  %16 = zext i1 %15 to i32, !dbg !105
  %17 = sext i32 %16 to i64, !dbg !105
  %18 = icmp ne i64 %17, 0, !dbg !105
  br i1 %18, label %19, label %20, !dbg !108

19:                                               ; preds = %14
  store i32 -4, ptr %2, align 4, !dbg !109
  br label %38, !dbg !109

20:                                               ; preds = %14
  br label %21, !dbg !110

21:                                               ; preds = %20
  %22 = load i32, ptr %4, align 4, !dbg !111
  %23 = icmp eq i32 %22, 0, !dbg !111
  %24 = xor i1 %23, true, !dbg !111
  %25 = zext i1 %24 to i32, !dbg !111
  %26 = sext i32 %25 to i64, !dbg !111
  %27 = icmp ne i64 %26, 0, !dbg !111
  br i1 %27, label %28, label %36, !dbg !114

28:                                               ; preds = %21
  %29 = load ptr, ptr @stderr, align 8, !dbg !115
  %30 = call ptr @__errno_location() #7, !dbg !115
  %31 = load i32, ptr %30, align 4, !dbg !115
  %32 = call ptr @nn_err_strerror(i32 noundef %31), !dbg !115
  %33 = call ptr @__errno_location() #7, !dbg !115
  %34 = load i32, ptr %33, align 4, !dbg !115
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str, ptr noundef %32, i32 noundef %34, ptr noundef @.str.1, i32 noundef 162), !dbg !115
  call void @nn_err_abort() #8, !dbg !115
  unreachable, !dbg !115

36:                                               ; preds = %21
  br label %37, !dbg !114

37:                                               ; preds = %36
  store i32 0, ptr %2, align 4, !dbg !117
  br label %38, !dbg !117

38:                                               ; preds = %37, %19
  %39 = load i32, ptr %2, align 4, !dbg !118
  ret i32 %39, !dbg !118
}

declare i32 @sem_wait(ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/utils/sem.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "440e2f08cb000e54c269b8e3a86c61f0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 18)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !13, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !14, globals: !16, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "src/utils/sem.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "440e2f08cb000e54c269b8e3a86c61f0")
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
!25 = distinct !DISubprogram(name: "nn_sem_init", scope: !2, file: !2, line: 131, type: !26, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !43)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sem", file: !30, line: 64, size: 256, elements: !31)
!30 = !DIFile(filename: "./src/utils/sem.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "925a3ae06fa6fbb251fb87fc0fbd3a0b")
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !29, file: !30, line: 65, baseType: !33, size: 256)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !34, line: 39, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !34, line: 35, size: 256, elements: !36)
!36 = !{!37, !41}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !35, file: !34, line: 37, baseType: !38, size: 256)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !35, file: !34, line: 38, baseType: !42, size: 64)
!42 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!43 = !{}
!44 = !DILocalVariable(name: "self", arg: 1, scope: !25, file: !2, line: 131, type: !28)
!45 = !DILocation(line: 131, column: 34, scope: !25)
!46 = !DILocalVariable(name: "rc", scope: !25, file: !2, line: 133, type: !15)
!47 = !DILocation(line: 133, column: 9, scope: !25)
!48 = !DILocation(line: 135, column: 21, scope: !25)
!49 = !DILocation(line: 135, column: 27, scope: !25)
!50 = !DILocation(line: 135, column: 10, scope: !25)
!51 = !DILocation(line: 135, column: 8, scope: !25)
!52 = !DILocation(line: 136, column: 5, scope: !25)
!53 = !DILocation(line: 136, column: 5, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !2, line: 136, column: 5)
!55 = distinct !DILexicalBlock(scope: !25, file: !2, line: 136, column: 5)
!56 = !DILocation(line: 136, column: 5, scope: !55)
!57 = !DILocation(line: 136, column: 5, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !2, line: 136, column: 5)
!59 = !DILocation(line: 137, column: 1, scope: !25)
!60 = distinct !DISubprogram(name: "nn_sem_term", scope: !2, file: !2, line: 139, type: !26, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !43)
!61 = !DILocalVariable(name: "self", arg: 1, scope: !60, file: !2, line: 139, type: !28)
!62 = !DILocation(line: 139, column: 34, scope: !60)
!63 = !DILocalVariable(name: "rc", scope: !60, file: !2, line: 141, type: !15)
!64 = !DILocation(line: 141, column: 9, scope: !60)
!65 = !DILocation(line: 143, column: 24, scope: !60)
!66 = !DILocation(line: 143, column: 30, scope: !60)
!67 = !DILocation(line: 143, column: 10, scope: !60)
!68 = !DILocation(line: 143, column: 8, scope: !60)
!69 = !DILocation(line: 144, column: 5, scope: !60)
!70 = !DILocation(line: 144, column: 5, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !2, line: 144, column: 5)
!72 = distinct !DILexicalBlock(scope: !60, file: !2, line: 144, column: 5)
!73 = !DILocation(line: 144, column: 5, scope: !72)
!74 = !DILocation(line: 144, column: 5, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !2, line: 144, column: 5)
!76 = !DILocation(line: 145, column: 1, scope: !60)
!77 = distinct !DISubprogram(name: "nn_sem_post", scope: !2, file: !2, line: 147, type: !26, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !43)
!78 = !DILocalVariable(name: "self", arg: 1, scope: !77, file: !2, line: 147, type: !28)
!79 = !DILocation(line: 147, column: 34, scope: !77)
!80 = !DILocalVariable(name: "rc", scope: !77, file: !2, line: 149, type: !15)
!81 = !DILocation(line: 149, column: 9, scope: !77)
!82 = !DILocation(line: 151, column: 21, scope: !77)
!83 = !DILocation(line: 151, column: 27, scope: !77)
!84 = !DILocation(line: 151, column: 10, scope: !77)
!85 = !DILocation(line: 151, column: 8, scope: !77)
!86 = !DILocation(line: 152, column: 5, scope: !77)
!87 = !DILocation(line: 152, column: 5, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 152, column: 5)
!89 = distinct !DILexicalBlock(scope: !77, file: !2, line: 152, column: 5)
!90 = !DILocation(line: 152, column: 5, scope: !89)
!91 = !DILocation(line: 152, column: 5, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !2, line: 152, column: 5)
!93 = !DILocation(line: 153, column: 1, scope: !77)
!94 = distinct !DISubprogram(name: "nn_sem_wait", scope: !2, file: !2, line: 155, type: !95, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !43)
!95 = !DISubroutineType(types: !96)
!96 = !{!15, !28}
!97 = !DILocalVariable(name: "self", arg: 1, scope: !94, file: !2, line: 155, type: !28)
!98 = !DILocation(line: 155, column: 33, scope: !94)
!99 = !DILocalVariable(name: "rc", scope: !94, file: !2, line: 157, type: !15)
!100 = !DILocation(line: 157, column: 9, scope: !94)
!101 = !DILocation(line: 159, column: 21, scope: !94)
!102 = !DILocation(line: 159, column: 27, scope: !94)
!103 = !DILocation(line: 159, column: 10, scope: !94)
!104 = !DILocation(line: 159, column: 8, scope: !94)
!105 = !DILocation(line: 160, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !94, file: !2, line: 160, column: 9)
!107 = !DILocation(line: 0, scope: !106)
!108 = !DILocation(line: 160, column: 9, scope: !94)
!109 = !DILocation(line: 161, column: 9, scope: !106)
!110 = !DILocation(line: 162, column: 5, scope: !94)
!111 = !DILocation(line: 162, column: 5, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !2, line: 162, column: 5)
!113 = distinct !DILexicalBlock(scope: !94, file: !2, line: 162, column: 5)
!114 = !DILocation(line: 162, column: 5, scope: !113)
!115 = !DILocation(line: 162, column: 5, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !2, line: 162, column: 5)
!117 = !DILocation(line: 163, column: 5, scope: !94)
!118 = !DILocation(line: 164, column: 1, scope: !94)
