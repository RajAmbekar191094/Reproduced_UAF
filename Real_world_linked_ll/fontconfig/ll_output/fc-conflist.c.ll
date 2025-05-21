; ModuleID = './fc-conflist/fc-conflist.c'
source_filename = "./fc-conflist/fc-conflist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct._FcConfigFileInfoIter = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"Vh\00", align 1, !dbg !7
@longopts = internal constant [3 x %struct.option] [%struct.option { ptr @.str.4, i32 0, ptr null, i32 86 }, %struct.option { ptr @.str.5, i32 0, ptr null, i32 104 }, %struct.option zeroinitializer], align 16, !dbg !12
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"fontconfig version %d.%d.%d\0A\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [11 x i8] c"%c %s: %s\0A\00", align 1, !dbg !22
@.str.4 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !27
@.str.5 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !32
@stdout = external global ptr, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"usage: %s [-Vh] [--version] [--help]\0A\00", align 1, !dbg !37
@.str.7 = private unnamed_addr constant [50 x i8] c"Show the ruleset files information on the system\0A\00", align 1, !dbg !42
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !47
@.str.9 = private unnamed_addr constant [61 x i8] c"  -V, --version        display font config version and exit\0A\00", align 1, !dbg !52
@.str.10 = private unnamed_addr constant [51 x i8] c"  -h, --help           display this help and exit\0A\00", align 1, !dbg !57

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !83 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct._FcConfigFileInfoIter, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !89, metadata !DIExpression()), !dbg !90
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata ptr %6, metadata !93, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata ptr %7, metadata !99, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata ptr %8, metadata !108, metadata !DIExpression()), !dbg !109
  %12 = call ptr @setlocale(i32 noundef 6, ptr noundef @.str) #5, !dbg !110
  br label %13, !dbg !111

13:                                               ; preds = %31, %2
  %14 = load i32, ptr %4, align 4, !dbg !112
  %15 = load ptr, ptr %5, align 8, !dbg !113
  %16 = call i32 @getopt_long(i32 noundef %14, ptr noundef %15, ptr noundef @.str.1, ptr noundef @longopts, ptr noundef null) #5, !dbg !114
  store i32 %16, ptr %8, align 4, !dbg !115
  %17 = icmp ne i32 %16, -1, !dbg !116
  br i1 %17, label %18, label %32, !dbg !111

18:                                               ; preds = %13
  %19 = load i32, ptr %8, align 4, !dbg !117
  switch i32 %19, label %27 [
    i32 86, label %20
    i32 104, label %23
  ], !dbg !119

20:                                               ; preds = %18
  %21 = load ptr, ptr @stderr, align 8, !dbg !120
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.2, i32 noundef 2, i32 noundef 13, i32 noundef 94), !dbg !122
  call void @exit(i32 noundef 0) #6, !dbg !123
  unreachable, !dbg !123

23:                                               ; preds = %18
  %24 = load ptr, ptr %5, align 8, !dbg !124
  %25 = getelementptr inbounds ptr, ptr %24, i64 0, !dbg !124
  %26 = load ptr, ptr %25, align 8, !dbg !124
  call void @usage(ptr noundef %26, i32 noundef 0), !dbg !125
  br label %27, !dbg !125

27:                                               ; preds = %18, %23
  %28 = load ptr, ptr %5, align 8, !dbg !126
  %29 = getelementptr inbounds ptr, ptr %28, i64 0, !dbg !126
  %30 = load ptr, ptr %29, align 8, !dbg !126
  call void @usage(ptr noundef %30, i32 noundef 1), !dbg !127
  br label %31, !dbg !128

31:                                               ; preds = %27
  br label %13, !dbg !111, !llvm.loop !129

32:                                               ; preds = %13
  %33 = call ptr @FcConfigGetCurrent(), !dbg !132
  store ptr %33, ptr %6, align 8, !dbg !133
  %34 = load ptr, ptr %6, align 8, !dbg !134
  call void @FcConfigFileInfoIterInit(ptr noundef %34, ptr noundef %7), !dbg !135
  br label %35, !dbg !136

35:                                               ; preds = %50, %32
  call void @llvm.dbg.declare(metadata ptr %9, metadata !137, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata ptr %10, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata ptr %11, metadata !145, metadata !DIExpression()), !dbg !147
  %36 = load ptr, ptr %6, align 8, !dbg !148
  %37 = call i32 @FcConfigFileInfoIterGet(ptr noundef %36, ptr noundef %7, ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !150
  %38 = icmp ne i32 %37, 0, !dbg !150
  br i1 %38, label %39, label %49, !dbg !151

39:                                               ; preds = %35
  %40 = load i32, ptr %11, align 4, !dbg !152
  %41 = icmp ne i32 %40, 0, !dbg !152
  %42 = zext i1 %41 to i64, !dbg !152
  %43 = select i1 %41, i32 43, i32 45, !dbg !152
  %44 = load ptr, ptr %9, align 8, !dbg !154
  %45 = load ptr, ptr %10, align 8, !dbg !155
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %43, ptr noundef %44, ptr noundef %45), !dbg !156
  %47 = load ptr, ptr %9, align 8, !dbg !157
  call void @FcStrFree(ptr noundef %47), !dbg !158
  %48 = load ptr, ptr %10, align 8, !dbg !159
  call void @FcStrFree(ptr noundef %48), !dbg !160
  br label %49, !dbg !161

49:                                               ; preds = %39, %35
  br label %50, !dbg !162

50:                                               ; preds = %49
  %51 = load ptr, ptr %6, align 8, !dbg !163
  %52 = call i32 @FcConfigFileInfoIterNext(ptr noundef %51, ptr noundef %7), !dbg !164
  %53 = icmp ne i32 %52, 0, !dbg !162
  br i1 %53, label %35, label %54, !dbg !162, !llvm.loop !165

54:                                               ; preds = %50
  call void @FcFini(), !dbg !167
  ret i32 0, !dbg !168
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(ptr noundef %0, i32 noundef %1) #0 !dbg !169 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !172, metadata !DIExpression()), !dbg !173
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata ptr %5, metadata !176, metadata !DIExpression()), !dbg !233
  %6 = load i32, ptr %4, align 4, !dbg !234
  %7 = icmp ne i32 %6, 0, !dbg !234
  br i1 %7, label %8, label %10, !dbg !234

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8, !dbg !235
  br label %12, !dbg !234

10:                                               ; preds = %2
  %11 = load ptr, ptr @stdout, align 8, !dbg !236
  br label %12, !dbg !234

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ], !dbg !234
  store ptr %13, ptr %5, align 8, !dbg !233
  %14 = load ptr, ptr %5, align 8, !dbg !237
  %15 = load ptr, ptr %3, align 8, !dbg !238
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.6, ptr noundef %15), !dbg !239
  %17 = load ptr, ptr %5, align 8, !dbg !240
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.7), !dbg !241
  %19 = load ptr, ptr %5, align 8, !dbg !242
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.8), !dbg !243
  %21 = load ptr, ptr %5, align 8, !dbg !244
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.9), !dbg !245
  %23 = load ptr, ptr %5, align 8, !dbg !246
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.10), !dbg !247
  %25 = load i32, ptr %4, align 4, !dbg !248
  call void @exit(i32 noundef %25) #6, !dbg !249
  unreachable, !dbg !249
}

declare ptr @FcConfigGetCurrent() #3

declare void @FcConfigFileInfoIterInit(ptr noundef, ptr noundef) #3

declare i32 @FcConfigFileInfoIterGet(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #3

declare void @FcStrFree(ptr noundef) #3

declare i32 @FcConfigFileInfoIterNext(ptr noundef, ptr noundef) #3

declare void @FcFini() #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./fc-conflist/fc-conflist.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "ac6f65a1805b45a33fcf149ccd0214ac")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 1)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 3)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "longopts", scope: !14, file: !2, line: 64, type: !62, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !15, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !16, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "fc-conflist/fc-conflist.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "ac6f65a1805b45a33fcf149ccd0214ac")
!16 = !{!0, !7, !17, !22, !27, !32, !12, !37, !42, !47, !52, !57}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 29)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 11)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 8)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 5)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 38)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 50)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 2)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 61)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 51)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 768, elements: !10)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !65, line: 50, size: 256, elements: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!66 = !{!67, !70, !72, !74}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !64, file: !65, line: 52, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !64, file: !65, line: 55, baseType: !71, size: 32, offset: 64)
!71 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !64, file: !65, line: 56, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !64, file: !65, line: 57, baseType: !71, size: 32, offset: 192)
!75 = !{i32 7, !"Dwarf Version", i32 5}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{i32 1, !"wchar_size", i32 4}
!78 = !{i32 8, !"PIC Level", i32 2}
!79 = !{i32 7, !"PIE Level", i32 2}
!80 = !{i32 7, !"uwtable", i32 2}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 16.0.0"}
!83 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 100, type: !84, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !88)
!84 = !DISubroutineType(types: !85)
!85 = !{!71, !71, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!88 = !{}
!89 = !DILocalVariable(name: "argc", arg: 1, scope: !83, file: !2, line: 100, type: !71)
!90 = !DILocation(line: 100, column: 11, scope: !83)
!91 = !DILocalVariable(name: "argv", arg: 2, scope: !83, file: !2, line: 100, type: !86)
!92 = !DILocation(line: 100, column: 24, scope: !83)
!93 = !DILocalVariable(name: "config", scope: !83, file: !2, line: 102, type: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcConfig", file: !96, line: 325, baseType: !97)
!96 = !DIFile(filename: "./fontconfig/fontconfig.h", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "05e262d1be6a508fc866c546b6803fc6")
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcConfig", file: !96, line: 325, flags: DIFlagFwdDecl)
!98 = !DILocation(line: 102, column: 15, scope: !83)
!99 = !DILocalVariable(name: "iter", scope: !83, file: !2, line: 103, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcConfigFileInfoIter", file: !96, line: 311, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FcConfigFileInfoIter", file: !96, line: 307, size: 192, elements: !102)
!102 = !{!103, !105, !106}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "dummy1", scope: !101, file: !96, line: 308, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "dummy2", scope: !101, file: !96, line: 309, baseType: !104, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "dummy3", scope: !101, file: !96, line: 310, baseType: !104, size: 64, offset: 128)
!107 = !DILocation(line: 103, column: 26, scope: !83)
!108 = !DILocalVariable(name: "c", scope: !83, file: !2, line: 106, type: !71)
!109 = !DILocation(line: 106, column: 10, scope: !83)
!110 = !DILocation(line: 108, column: 5, scope: !83)
!111 = !DILocation(line: 110, column: 5, scope: !83)
!112 = !DILocation(line: 110, column: 30, scope: !83)
!113 = !DILocation(line: 110, column: 36, scope: !83)
!114 = !DILocation(line: 110, column: 17, scope: !83)
!115 = !DILocation(line: 110, column: 15, scope: !83)
!116 = !DILocation(line: 110, column: 65, scope: !83)
!117 = !DILocation(line: 115, column: 10, scope: !118)
!118 = distinct !DILexicalBlock(scope: !83, file: !2, line: 114, column: 5)
!119 = !DILocation(line: 115, column: 2, scope: !118)
!120 = !DILocation(line: 117, column: 15, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !2, line: 115, column: 13)
!122 = !DILocation(line: 117, column: 6, scope: !121)
!123 = !DILocation(line: 119, column: 6, scope: !121)
!124 = !DILocation(line: 121, column: 13, scope: !121)
!125 = !DILocation(line: 121, column: 6, scope: !121)
!126 = !DILocation(line: 123, column: 13, scope: !121)
!127 = !DILocation(line: 123, column: 6, scope: !121)
!128 = !DILocation(line: 124, column: 2, scope: !121)
!129 = distinct !{!129, !111, !130, !131}
!130 = !DILocation(line: 125, column: 5, scope: !83)
!131 = !{!"llvm.loop.mustprogress"}
!132 = !DILocation(line: 128, column: 14, scope: !83)
!133 = !DILocation(line: 128, column: 12, scope: !83)
!134 = !DILocation(line: 129, column: 31, scope: !83)
!135 = !DILocation(line: 129, column: 5, scope: !83)
!136 = !DILocation(line: 130, column: 5, scope: !83)
!137 = !DILocalVariable(name: "name", scope: !138, file: !2, line: 132, type: !139)
!138 = distinct !DILexicalBlock(scope: !83, file: !2, line: 131, column: 5)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcChar8", file: !96, line: 43, baseType: !141)
!141 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!142 = !DILocation(line: 132, column: 11, scope: !138)
!143 = !DILocalVariable(name: "desc", scope: !138, file: !2, line: 132, type: !139)
!144 = !DILocation(line: 132, column: 18, scope: !138)
!145 = !DILocalVariable(name: "enabled", scope: !138, file: !2, line: 133, type: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcBool", file: !96, line: 46, baseType: !71)
!147 = !DILocation(line: 133, column: 9, scope: !138)
!148 = !DILocation(line: 135, column: 31, scope: !149)
!149 = distinct !DILexicalBlock(scope: !138, file: !2, line: 135, column: 6)
!150 = !DILocation(line: 135, column: 6, scope: !149)
!151 = !DILocation(line: 135, column: 6, scope: !138)
!152 = !DILocation(line: 137, column: 29, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !2, line: 136, column: 2)
!154 = !DILocation(line: 137, column: 50, scope: !153)
!155 = !DILocation(line: 137, column: 56, scope: !153)
!156 = !DILocation(line: 137, column: 6, scope: !153)
!157 = !DILocation(line: 138, column: 17, scope: !153)
!158 = !DILocation(line: 138, column: 6, scope: !153)
!159 = !DILocation(line: 139, column: 17, scope: !153)
!160 = !DILocation(line: 139, column: 6, scope: !153)
!161 = !DILocation(line: 140, column: 2, scope: !153)
!162 = !DILocation(line: 141, column: 5, scope: !138)
!163 = !DILocation(line: 141, column: 40, scope: !83)
!164 = !DILocation(line: 141, column: 14, scope: !83)
!165 = distinct !{!165, !136, !166, !131}
!166 = !DILocation(line: 141, column: 54, scope: !83)
!167 = !DILocation(line: 143, column: 5, scope: !83)
!168 = !DILocation(line: 145, column: 5, scope: !83)
!169 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 77, type: !170, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !88)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !87, !71}
!172 = !DILocalVariable(name: "program", arg: 1, scope: !169, file: !2, line: 77, type: !87)
!173 = !DILocation(line: 77, column: 14, scope: !169)
!174 = !DILocalVariable(name: "error", arg: 2, scope: !169, file: !2, line: 77, type: !71)
!175 = !DILocation(line: 77, column: 27, scope: !169)
!176 = !DILocalVariable(name: "file", scope: !169, file: !2, line: 79, type: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !179, line: 7, baseType: !180)
!179 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !181, line: 49, size: 1728, elements: !182)
!181 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !198, !200, !201, !202, !206, !208, !210, !211, !214, !216, !219, !222, !223, !224, !228, !229}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !180, file: !181, line: 51, baseType: !71, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !180, file: !181, line: 54, baseType: !87, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !180, file: !181, line: 55, baseType: !87, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !180, file: !181, line: 56, baseType: !87, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !180, file: !181, line: 57, baseType: !87, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !180, file: !181, line: 58, baseType: !87, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !180, file: !181, line: 59, baseType: !87, size: 64, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !180, file: !181, line: 60, baseType: !87, size: 64, offset: 448)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !180, file: !181, line: 61, baseType: !87, size: 64, offset: 512)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !180, file: !181, line: 64, baseType: !87, size: 64, offset: 576)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !180, file: !181, line: 65, baseType: !87, size: 64, offset: 640)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !180, file: !181, line: 66, baseType: !87, size: 64, offset: 704)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !180, file: !181, line: 68, baseType: !196, size: 64, offset: 768)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !181, line: 36, flags: DIFlagFwdDecl)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !180, file: !181, line: 70, baseType: !199, size: 64, offset: 832)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !180, file: !181, line: 72, baseType: !71, size: 32, offset: 896)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !180, file: !181, line: 73, baseType: !71, size: 32, offset: 928)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !180, file: !181, line: 74, baseType: !203, size: 64, offset: 960)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !204, line: 152, baseType: !205)
!204 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!205 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !180, file: !181, line: 77, baseType: !207, size: 16, offset: 1024)
!207 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !180, file: !181, line: 78, baseType: !209, size: 8, offset: 1040)
!209 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !180, file: !181, line: 79, baseType: !3, size: 8, offset: 1048)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !180, file: !181, line: 81, baseType: !212, size: 64, offset: 1088)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !181, line: 43, baseType: null)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !180, file: !181, line: 89, baseType: !215, size: 64, offset: 1152)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !204, line: 153, baseType: !205)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !180, file: !181, line: 91, baseType: !217, size: 64, offset: 1216)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !181, line: 37, flags: DIFlagFwdDecl)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !180, file: !181, line: 92, baseType: !220, size: 64, offset: 1280)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !181, line: 38, flags: DIFlagFwdDecl)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !180, file: !181, line: 93, baseType: !199, size: 64, offset: 1344)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !180, file: !181, line: 94, baseType: !104, size: 64, offset: 1408)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !180, file: !181, line: 95, baseType: !225, size: 64, offset: 1472)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !226, line: 46, baseType: !227)
!226 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!227 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !180, file: !181, line: 96, baseType: !71, size: 32, offset: 1536)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !180, file: !181, line: 98, baseType: !230, size: 160, offset: 1568)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 20)
!233 = !DILocation(line: 79, column: 11, scope: !169)
!234 = !DILocation(line: 79, column: 18, scope: !169)
!235 = !DILocation(line: 79, column: 26, scope: !169)
!236 = !DILocation(line: 79, column: 35, scope: !169)
!237 = !DILocation(line: 81, column: 14, scope: !169)
!238 = !DILocation(line: 82, column: 7, scope: !169)
!239 = !DILocation(line: 81, column: 5, scope: !169)
!240 = !DILocation(line: 87, column: 14, scope: !169)
!241 = !DILocation(line: 87, column: 5, scope: !169)
!242 = !DILocation(line: 88, column: 14, scope: !169)
!243 = !DILocation(line: 88, column: 5, scope: !169)
!244 = !DILocation(line: 90, column: 14, scope: !169)
!245 = !DILocation(line: 90, column: 5, scope: !169)
!246 = !DILocation(line: 91, column: 14, scope: !169)
!247 = !DILocation(line: 91, column: 5, scope: !169)
!248 = !DILocation(line: 96, column: 11, scope: !169)
!249 = !DILocation(line: 96, column: 5, scope: !169)
