; ModuleID = './src/utils/queue.c'
source_filename = "./src/utils/queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_queue = type { ptr, ptr }
%struct.nn_queue_item = type { ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [34 x i8] c"item->next == NN_QUEUE_NOTINQUEUE\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [20 x i8] c"./src/utils/queue.c\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [34 x i8] c"self->next == NN_QUEUE_NOTINQUEUE\00", align 1, !dbg !17

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_queue_init(ptr noundef %0) #0 !dbg !36 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !45, metadata !DIExpression()), !dbg !46
  %3 = load ptr, ptr %2, align 8, !dbg !47
  %4 = getelementptr inbounds %struct.nn_queue, ptr %3, i32 0, i32 0, !dbg !48
  store ptr null, ptr %4, align 8, !dbg !49
  %5 = load ptr, ptr %2, align 8, !dbg !50
  %6 = getelementptr inbounds %struct.nn_queue, ptr %5, i32 0, i32 1, !dbg !51
  store ptr null, ptr %6, align 8, !dbg !52
  ret void, !dbg !53
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_queue_term(ptr noundef %0) #0 !dbg !54 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !55, metadata !DIExpression()), !dbg !56
  %3 = load ptr, ptr %2, align 8, !dbg !57
  %4 = getelementptr inbounds %struct.nn_queue, ptr %3, i32 0, i32 0, !dbg !58
  store ptr null, ptr %4, align 8, !dbg !59
  %5 = load ptr, ptr %2, align 8, !dbg !60
  %6 = getelementptr inbounds %struct.nn_queue, ptr %5, i32 0, i32 1, !dbg !61
  store ptr null, ptr %6, align 8, !dbg !62
  ret void, !dbg !63
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_queue_empty(ptr noundef %0) #0 !dbg !64 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !68, metadata !DIExpression()), !dbg !69
  %3 = load ptr, ptr %2, align 8, !dbg !70
  %4 = getelementptr inbounds %struct.nn_queue, ptr %3, i32 0, i32 0, !dbg !71
  %5 = load ptr, ptr %4, align 8, !dbg !71
  %6 = icmp ne ptr %5, null, !dbg !70
  %7 = zext i1 %6 to i64, !dbg !70
  %8 = select i1 %6, i32 0, i32 1, !dbg !70
  ret i32 %8, !dbg !72
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_queue_push(ptr noundef %0, ptr noundef %1) #0 !dbg !73 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !76, metadata !DIExpression()), !dbg !77
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !78, metadata !DIExpression()), !dbg !79
  br label %5, !dbg !80

5:                                                ; preds = %2
  %6 = load ptr, ptr %4, align 8, !dbg !81
  %7 = getelementptr inbounds %struct.nn_queue_item, ptr %6, i32 0, i32 0, !dbg !81
  %8 = load ptr, ptr %7, align 8, !dbg !81
  %9 = icmp eq ptr %8, inttoptr (i64 -1 to ptr), !dbg !81
  %10 = xor i1 %9, true, !dbg !81
  %11 = zext i1 %10 to i32, !dbg !81
  %12 = sext i32 %11 to i64, !dbg !81
  %13 = icmp ne i64 %12, 0, !dbg !81
  br i1 %13, label %14, label %17, !dbg !84

14:                                               ; preds = %5
  %15 = load ptr, ptr @stderr, align 8, !dbg !85
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 47), !dbg !85
  call void @nn_err_abort() #4, !dbg !85
  unreachable, !dbg !85

17:                                               ; preds = %5
  br label %18, !dbg !84

18:                                               ; preds = %17
  %19 = load ptr, ptr %4, align 8, !dbg !87
  %20 = getelementptr inbounds %struct.nn_queue_item, ptr %19, i32 0, i32 0, !dbg !88
  store ptr null, ptr %20, align 8, !dbg !89
  %21 = load ptr, ptr %3, align 8, !dbg !90
  %22 = getelementptr inbounds %struct.nn_queue, ptr %21, i32 0, i32 0, !dbg !92
  %23 = load ptr, ptr %22, align 8, !dbg !92
  %24 = icmp ne ptr %23, null, !dbg !90
  br i1 %24, label %29, label %25, !dbg !93

25:                                               ; preds = %18
  %26 = load ptr, ptr %4, align 8, !dbg !94
  %27 = load ptr, ptr %3, align 8, !dbg !95
  %28 = getelementptr inbounds %struct.nn_queue, ptr %27, i32 0, i32 0, !dbg !96
  store ptr %26, ptr %28, align 8, !dbg !97
  br label %29, !dbg !95

29:                                               ; preds = %25, %18
  %30 = load ptr, ptr %3, align 8, !dbg !98
  %31 = getelementptr inbounds %struct.nn_queue, ptr %30, i32 0, i32 1, !dbg !100
  %32 = load ptr, ptr %31, align 8, !dbg !100
  %33 = icmp ne ptr %32, null, !dbg !98
  br i1 %33, label %34, label %40, !dbg !101

34:                                               ; preds = %29
  %35 = load ptr, ptr %4, align 8, !dbg !102
  %36 = load ptr, ptr %3, align 8, !dbg !103
  %37 = getelementptr inbounds %struct.nn_queue, ptr %36, i32 0, i32 1, !dbg !104
  %38 = load ptr, ptr %37, align 8, !dbg !104
  %39 = getelementptr inbounds %struct.nn_queue_item, ptr %38, i32 0, i32 0, !dbg !105
  store ptr %35, ptr %39, align 8, !dbg !106
  br label %40, !dbg !103

40:                                               ; preds = %34, %29
  %41 = load ptr, ptr %4, align 8, !dbg !107
  %42 = load ptr, ptr %3, align 8, !dbg !108
  %43 = getelementptr inbounds %struct.nn_queue, ptr %42, i32 0, i32 1, !dbg !109
  store ptr %41, ptr %43, align 8, !dbg !110
  ret void, !dbg !111
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_queue_pop(ptr noundef %0) #0 !dbg !112 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata ptr %4, metadata !117, metadata !DIExpression()), !dbg !118
  %5 = load ptr, ptr %3, align 8, !dbg !119
  %6 = getelementptr inbounds %struct.nn_queue, ptr %5, i32 0, i32 0, !dbg !121
  %7 = load ptr, ptr %6, align 8, !dbg !121
  %8 = icmp ne ptr %7, null, !dbg !119
  br i1 %8, label %10, label %9, !dbg !122

9:                                                ; preds = %1
  store ptr null, ptr %2, align 8, !dbg !123
  br label %30, !dbg !123

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !124
  %12 = getelementptr inbounds %struct.nn_queue, ptr %11, i32 0, i32 0, !dbg !125
  %13 = load ptr, ptr %12, align 8, !dbg !125
  store ptr %13, ptr %4, align 8, !dbg !126
  %14 = load ptr, ptr %4, align 8, !dbg !127
  %15 = getelementptr inbounds %struct.nn_queue_item, ptr %14, i32 0, i32 0, !dbg !128
  %16 = load ptr, ptr %15, align 8, !dbg !128
  %17 = load ptr, ptr %3, align 8, !dbg !129
  %18 = getelementptr inbounds %struct.nn_queue, ptr %17, i32 0, i32 0, !dbg !130
  store ptr %16, ptr %18, align 8, !dbg !131
  %19 = load ptr, ptr %3, align 8, !dbg !132
  %20 = getelementptr inbounds %struct.nn_queue, ptr %19, i32 0, i32 0, !dbg !134
  %21 = load ptr, ptr %20, align 8, !dbg !134
  %22 = icmp ne ptr %21, null, !dbg !132
  br i1 %22, label %26, label %23, !dbg !135

23:                                               ; preds = %10
  %24 = load ptr, ptr %3, align 8, !dbg !136
  %25 = getelementptr inbounds %struct.nn_queue, ptr %24, i32 0, i32 1, !dbg !137
  store ptr null, ptr %25, align 8, !dbg !138
  br label %26, !dbg !136

26:                                               ; preds = %23, %10
  %27 = load ptr, ptr %4, align 8, !dbg !139
  %28 = getelementptr inbounds %struct.nn_queue_item, ptr %27, i32 0, i32 0, !dbg !140
  store ptr inttoptr (i64 -1 to ptr), ptr %28, align 8, !dbg !141
  %29 = load ptr, ptr %4, align 8, !dbg !142
  store ptr %29, ptr %2, align 8, !dbg !143
  br label %30, !dbg !143

30:                                               ; preds = %26, %9
  %31 = load ptr, ptr %2, align 8, !dbg !144
  ret ptr %31, !dbg !144
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_queue_item_init(ptr noundef %0) #0 !dbg !145 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !148, metadata !DIExpression()), !dbg !149
  %3 = load ptr, ptr %2, align 8, !dbg !150
  %4 = getelementptr inbounds %struct.nn_queue_item, ptr %3, i32 0, i32 0, !dbg !151
  store ptr inttoptr (i64 -1 to ptr), ptr %4, align 8, !dbg !152
  ret void, !dbg !153
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_queue_item_term(ptr noundef %0) #0 !dbg !154 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !155, metadata !DIExpression()), !dbg !156
  br label %3, !dbg !157

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !158
  %5 = getelementptr inbounds %struct.nn_queue_item, ptr %4, i32 0, i32 0, !dbg !158
  %6 = load ptr, ptr %5, align 8, !dbg !158
  %7 = icmp eq ptr %6, inttoptr (i64 -1 to ptr), !dbg !158
  %8 = xor i1 %7, true, !dbg !158
  %9 = zext i1 %8 to i32, !dbg !158
  %10 = sext i32 %9 to i64, !dbg !158
  %11 = icmp ne i64 %10, 0, !dbg !158
  br i1 %11, label %12, label %15, !dbg !161

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !dbg !162
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 78), !dbg !162
  call void @nn_err_abort() #4, !dbg !162
  unreachable, !dbg !162

15:                                               ; preds = %3
  br label %16, !dbg !161

16:                                               ; preds = %15
  ret void, !dbg !164
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_queue_item_isinqueue(ptr noundef %0) #0 !dbg !165 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !168, metadata !DIExpression()), !dbg !169
  %3 = load ptr, ptr %2, align 8, !dbg !170
  %4 = getelementptr inbounds %struct.nn_queue_item, ptr %3, i32 0, i32 0, !dbg !171
  %5 = load ptr, ptr %4, align 8, !dbg !171
  %6 = icmp eq ptr %5, inttoptr (i64 -1 to ptr), !dbg !172
  %7 = zext i1 %6 to i64, !dbg !170
  %8 = select i1 %6, i32 0, i32 1, !dbg !170
  ret i32 %8, !dbg !173
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/utils/queue.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "d4905ee0f7ae79d9226d6ae5109ccc7d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 34)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 20)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !9, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !20, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !21, globals: !27, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "src/utils/queue.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "d4905ee0f7ae79d9226d6ae5109ccc7d")
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !24, line: 33, size: 64, elements: !25)
!24 = !DIFile(filename: "./src/utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !23, file: !24, line: 34, baseType: !22, size: 64)
!27 = !{!0, !7, !12, !17}
!28 = !{i32 7, !"Dwarf Version", i32 5}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 16.0.0"}
!36 = distinct !DISubprogram(name: "nn_queue_init", scope: !2, file: !2, line: 28, type: !37, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !44)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !24, line: 37, size: 128, elements: !41)
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !40, file: !24, line: 38, baseType: !22, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !40, file: !24, line: 39, baseType: !22, size: 64, offset: 64)
!44 = !{}
!45 = !DILocalVariable(name: "self", arg: 1, scope: !36, file: !2, line: 28, type: !39)
!46 = !DILocation(line: 28, column: 38, scope: !36)
!47 = !DILocation(line: 30, column: 5, scope: !36)
!48 = !DILocation(line: 30, column: 11, scope: !36)
!49 = !DILocation(line: 30, column: 16, scope: !36)
!50 = !DILocation(line: 31, column: 5, scope: !36)
!51 = !DILocation(line: 31, column: 11, scope: !36)
!52 = !DILocation(line: 31, column: 16, scope: !36)
!53 = !DILocation(line: 32, column: 1, scope: !36)
!54 = distinct !DISubprogram(name: "nn_queue_term", scope: !2, file: !2, line: 34, type: !37, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !44)
!55 = !DILocalVariable(name: "self", arg: 1, scope: !54, file: !2, line: 34, type: !39)
!56 = !DILocation(line: 34, column: 38, scope: !54)
!57 = !DILocation(line: 36, column: 5, scope: !54)
!58 = !DILocation(line: 36, column: 11, scope: !54)
!59 = !DILocation(line: 36, column: 16, scope: !54)
!60 = !DILocation(line: 37, column: 5, scope: !54)
!61 = !DILocation(line: 37, column: 11, scope: !54)
!62 = !DILocation(line: 37, column: 16, scope: !54)
!63 = !DILocation(line: 38, column: 1, scope: !54)
!64 = distinct !DISubprogram(name: "nn_queue_empty", scope: !2, file: !2, line: 40, type: !65, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !44)
!65 = !DISubroutineType(types: !66)
!66 = !{!67, !39}
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DILocalVariable(name: "self", arg: 1, scope: !64, file: !2, line: 40, type: !39)
!69 = !DILocation(line: 40, column: 38, scope: !64)
!70 = !DILocation(line: 42, column: 12, scope: !64)
!71 = !DILocation(line: 42, column: 18, scope: !64)
!72 = !DILocation(line: 42, column: 5, scope: !64)
!73 = distinct !DISubprogram(name: "nn_queue_push", scope: !2, file: !2, line: 45, type: !74, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !44)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !39, !22}
!76 = !DILocalVariable(name: "self", arg: 1, scope: !73, file: !2, line: 45, type: !39)
!77 = !DILocation(line: 45, column: 38, scope: !73)
!78 = !DILocalVariable(name: "item", arg: 2, scope: !73, file: !2, line: 45, type: !22)
!79 = !DILocation(line: 45, column: 66, scope: !73)
!80 = !DILocation(line: 47, column: 5, scope: !73)
!81 = !DILocation(line: 47, column: 5, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !2, line: 47, column: 5)
!83 = distinct !DILexicalBlock(scope: !73, file: !2, line: 47, column: 5)
!84 = !DILocation(line: 47, column: 5, scope: !83)
!85 = !DILocation(line: 47, column: 5, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !2, line: 47, column: 5)
!87 = !DILocation(line: 49, column: 5, scope: !73)
!88 = !DILocation(line: 49, column: 11, scope: !73)
!89 = !DILocation(line: 49, column: 16, scope: !73)
!90 = !DILocation(line: 50, column: 10, scope: !91)
!91 = distinct !DILexicalBlock(scope: !73, file: !2, line: 50, column: 9)
!92 = !DILocation(line: 50, column: 16, scope: !91)
!93 = !DILocation(line: 50, column: 9, scope: !73)
!94 = !DILocation(line: 51, column: 22, scope: !91)
!95 = !DILocation(line: 51, column: 9, scope: !91)
!96 = !DILocation(line: 51, column: 15, scope: !91)
!97 = !DILocation(line: 51, column: 20, scope: !91)
!98 = !DILocation(line: 52, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !73, file: !2, line: 52, column: 9)
!100 = !DILocation(line: 52, column: 15, scope: !99)
!101 = !DILocation(line: 52, column: 9, scope: !73)
!102 = !DILocation(line: 53, column: 28, scope: !99)
!103 = !DILocation(line: 53, column: 9, scope: !99)
!104 = !DILocation(line: 53, column: 15, scope: !99)
!105 = !DILocation(line: 53, column: 21, scope: !99)
!106 = !DILocation(line: 53, column: 26, scope: !99)
!107 = !DILocation(line: 54, column: 18, scope: !73)
!108 = !DILocation(line: 54, column: 5, scope: !73)
!109 = !DILocation(line: 54, column: 11, scope: !73)
!110 = !DILocation(line: 54, column: 16, scope: !73)
!111 = !DILocation(line: 55, column: 1, scope: !73)
!112 = distinct !DISubprogram(name: "nn_queue_pop", scope: !2, file: !2, line: 57, type: !113, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !44)
!113 = !DISubroutineType(types: !114)
!114 = !{!22, !39}
!115 = !DILocalVariable(name: "self", arg: 1, scope: !112, file: !2, line: 57, type: !39)
!116 = !DILocation(line: 57, column: 54, scope: !112)
!117 = !DILocalVariable(name: "result", scope: !112, file: !2, line: 59, type: !22)
!118 = !DILocation(line: 59, column: 27, scope: !112)
!119 = !DILocation(line: 61, column: 10, scope: !120)
!120 = distinct !DILexicalBlock(scope: !112, file: !2, line: 61, column: 9)
!121 = !DILocation(line: 61, column: 16, scope: !120)
!122 = !DILocation(line: 61, column: 9, scope: !112)
!123 = !DILocation(line: 62, column: 9, scope: !120)
!124 = !DILocation(line: 63, column: 14, scope: !112)
!125 = !DILocation(line: 63, column: 20, scope: !112)
!126 = !DILocation(line: 63, column: 12, scope: !112)
!127 = !DILocation(line: 64, column: 18, scope: !112)
!128 = !DILocation(line: 64, column: 26, scope: !112)
!129 = !DILocation(line: 64, column: 5, scope: !112)
!130 = !DILocation(line: 64, column: 11, scope: !112)
!131 = !DILocation(line: 64, column: 16, scope: !112)
!132 = !DILocation(line: 65, column: 10, scope: !133)
!133 = distinct !DILexicalBlock(scope: !112, file: !2, line: 65, column: 9)
!134 = !DILocation(line: 65, column: 16, scope: !133)
!135 = !DILocation(line: 65, column: 9, scope: !112)
!136 = !DILocation(line: 66, column: 9, scope: !133)
!137 = !DILocation(line: 66, column: 15, scope: !133)
!138 = !DILocation(line: 66, column: 20, scope: !133)
!139 = !DILocation(line: 67, column: 5, scope: !112)
!140 = !DILocation(line: 67, column: 13, scope: !112)
!141 = !DILocation(line: 67, column: 18, scope: !112)
!142 = !DILocation(line: 68, column: 12, scope: !112)
!143 = !DILocation(line: 68, column: 5, scope: !112)
!144 = !DILocation(line: 69, column: 1, scope: !112)
!145 = distinct !DISubprogram(name: "nn_queue_item_init", scope: !2, file: !2, line: 71, type: !146, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !44)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !22}
!148 = !DILocalVariable(name: "self", arg: 1, scope: !145, file: !2, line: 71, type: !22)
!149 = !DILocation(line: 71, column: 48, scope: !145)
!150 = !DILocation(line: 73, column: 5, scope: !145)
!151 = !DILocation(line: 73, column: 11, scope: !145)
!152 = !DILocation(line: 73, column: 16, scope: !145)
!153 = !DILocation(line: 74, column: 1, scope: !145)
!154 = distinct !DISubprogram(name: "nn_queue_item_term", scope: !2, file: !2, line: 76, type: !146, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !44)
!155 = !DILocalVariable(name: "self", arg: 1, scope: !154, file: !2, line: 76, type: !22)
!156 = !DILocation(line: 76, column: 48, scope: !154)
!157 = !DILocation(line: 78, column: 5, scope: !154)
!158 = !DILocation(line: 78, column: 5, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !2, line: 78, column: 5)
!160 = distinct !DILexicalBlock(scope: !154, file: !2, line: 78, column: 5)
!161 = !DILocation(line: 78, column: 5, scope: !160)
!162 = !DILocation(line: 78, column: 5, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !2, line: 78, column: 5)
!164 = !DILocation(line: 79, column: 1, scope: !154)
!165 = distinct !DISubprogram(name: "nn_queue_item_isinqueue", scope: !2, file: !2, line: 81, type: !166, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !44)
!166 = !DISubroutineType(types: !167)
!167 = !{!67, !22}
!168 = !DILocalVariable(name: "self", arg: 1, scope: !165, file: !2, line: 81, type: !22)
!169 = !DILocation(line: 81, column: 52, scope: !165)
!170 = !DILocation(line: 83, column: 12, scope: !165)
!171 = !DILocation(line: 83, column: 18, scope: !165)
!172 = !DILocation(line: 83, column: 23, scope: !165)
!173 = !DILocation(line: 83, column: 5, scope: !165)
