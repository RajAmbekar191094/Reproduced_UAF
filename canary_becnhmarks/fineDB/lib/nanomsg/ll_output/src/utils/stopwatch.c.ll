; ModuleID = './src/utils/stopwatch.c'
source_filename = "./src/utils/stopwatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.nn_stopwatch = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"rc == 0\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [24 x i8] c"./src/utils/stopwatch.c\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.nn_stopwatch_init = private unnamed_addr constant [46 x i8] c"void nn_stopwatch_init(struct nn_stopwatch *)\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.nn_stopwatch_term = private unnamed_addr constant [50 x i8] c"uint64_t nn_stopwatch_term(struct nn_stopwatch *)\00", align 1, !dbg !18

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_stopwatch_init(ptr noundef %0) #0 !dbg !41 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata ptr %3, metadata !52, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata ptr %4, metadata !55, metadata !DIExpression()), !dbg !64
  %5 = call i32 @gettimeofday(ptr noundef %4, ptr noundef null) #4, !dbg !65
  store i32 %5, ptr %3, align 4, !dbg !66
  %6 = load i32, ptr %3, align 4, !dbg !67
  %7 = icmp eq i32 %6, 0, !dbg !67
  br i1 %7, label %8, label %9, !dbg !70

8:                                                ; preds = %1
  br label %10, !dbg !70

9:                                                ; preds = %1
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 59, ptr noundef @__PRETTY_FUNCTION__.nn_stopwatch_init) #5, !dbg !67
  unreachable, !dbg !67

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.timeval, ptr %4, i32 0, i32 0, !dbg !71
  %12 = load i64, ptr %11, align 8, !dbg !71
  %13 = mul i64 %12, 1000000, !dbg !72
  %14 = getelementptr inbounds %struct.timeval, ptr %4, i32 0, i32 1, !dbg !73
  %15 = load i64, ptr %14, align 8, !dbg !73
  %16 = add i64 %13, %15, !dbg !74
  %17 = load ptr, ptr %2, align 8, !dbg !75
  %18 = getelementptr inbounds %struct.nn_stopwatch, ptr %17, i32 0, i32 0, !dbg !76
  store i64 %16, ptr %18, align 8, !dbg !77
  ret void, !dbg !78
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nn_stopwatch_term(ptr noundef %0) #0 !dbg !79 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata ptr %3, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata ptr %4, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata ptr %5, metadata !88, metadata !DIExpression()), !dbg !89
  %6 = call i32 @gettimeofday(ptr noundef %4, ptr noundef null) #4, !dbg !90
  store i32 %6, ptr %3, align 4, !dbg !91
  %7 = load i32, ptr %3, align 4, !dbg !92
  %8 = icmp eq i32 %7, 0, !dbg !92
  br i1 %8, label %9, label %10, !dbg !95

9:                                                ; preds = %1
  br label %11, !dbg !95

10:                                               ; preds = %1
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 70, ptr noundef @__PRETTY_FUNCTION__.nn_stopwatch_term) #5, !dbg !92
  unreachable, !dbg !92

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.timeval, ptr %4, i32 0, i32 0, !dbg !96
  %13 = load i64, ptr %12, align 8, !dbg !96
  %14 = mul i64 %13, 1000000, !dbg !97
  %15 = getelementptr inbounds %struct.timeval, ptr %4, i32 0, i32 1, !dbg !98
  %16 = load i64, ptr %15, align 8, !dbg !98
  %17 = add i64 %14, %16, !dbg !99
  store i64 %17, ptr %5, align 8, !dbg !100
  %18 = load i64, ptr %5, align 8, !dbg !101
  %19 = load ptr, ptr %2, align 8, !dbg !102
  %20 = getelementptr inbounds %struct.nn_stopwatch, ptr %19, i32 0, i32 0, !dbg !103
  %21 = load i64, ptr %20, align 8, !dbg !103
  %22 = sub i64 %18, %21, !dbg !104
  ret i64 %22, !dbg !105
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!23}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/utils/stopwatch.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a824596c2932be78dc043d6ebca15afd")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 8)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 24)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 368, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 46)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 400, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 50)
!23 = distinct !DICompileUnit(language: DW_LANG_C11, file: !24, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !25, globals: !32, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "src/utils/stopwatch.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a824596c2932be78dc043d6ebca15afd")
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !28, line: 27, baseType: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !30, line: 45, baseType: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !{!0, !7, !12, !18}
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{i32 8, !"PIC Level", i32 2}
!37 = !{i32 7, !"PIE Level", i32 2}
!38 = !{i32 7, !"uwtable", i32 2}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 16.0.0"}
!41 = distinct !DISubprogram(name: "nn_stopwatch_init", scope: !2, file: !2, line: 53, type: !42, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !49)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_stopwatch", file: !46, line: 38, size: 64, elements: !47)
!46 = !DIFile(filename: "./src/utils/stopwatch.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "206cc5b78777eee93e9a53e0f4df1876")
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !45, file: !46, line: 39, baseType: !27, size: 64)
!49 = !{}
!50 = !DILocalVariable(name: "self", arg: 1, scope: !41, file: !2, line: 53, type: !44)
!51 = !DILocation(line: 53, column: 46, scope: !41)
!52 = !DILocalVariable(name: "rc", scope: !41, file: !2, line: 55, type: !53)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DILocation(line: 55, column: 9, scope: !41)
!55 = !DILocalVariable(name: "tv", scope: !41, file: !2, line: 56, type: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !57, line: 8, size: 128, elements: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!58 = !{!59, !62}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !56, file: !57, line: 14, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !30, line: 160, baseType: !61)
!61 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !56, file: !57, line: 15, baseType: !63, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !30, line: 162, baseType: !61)
!64 = !DILocation(line: 56, column: 20, scope: !41)
!65 = !DILocation(line: 58, column: 10, scope: !41)
!66 = !DILocation(line: 58, column: 8, scope: !41)
!67 = !DILocation(line: 59, column: 5, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !2, line: 59, column: 5)
!69 = distinct !DILexicalBlock(scope: !41, file: !2, line: 59, column: 5)
!70 = !DILocation(line: 59, column: 5, scope: !69)
!71 = !DILocation(line: 60, column: 46, scope: !41)
!72 = !DILocation(line: 60, column: 54, scope: !41)
!73 = !DILocation(line: 60, column: 69, scope: !41)
!74 = !DILocation(line: 60, column: 64, scope: !41)
!75 = !DILocation(line: 60, column: 5, scope: !41)
!76 = !DILocation(line: 60, column: 11, scope: !41)
!77 = !DILocation(line: 60, column: 17, scope: !41)
!78 = !DILocation(line: 61, column: 1, scope: !41)
!79 = distinct !DISubprogram(name: "nn_stopwatch_term", scope: !2, file: !2, line: 63, type: !80, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !49)
!80 = !DISubroutineType(types: !81)
!81 = !{!27, !44}
!82 = !DILocalVariable(name: "self", arg: 1, scope: !79, file: !2, line: 63, type: !44)
!83 = !DILocation(line: 63, column: 50, scope: !79)
!84 = !DILocalVariable(name: "rc", scope: !79, file: !2, line: 65, type: !53)
!85 = !DILocation(line: 65, column: 9, scope: !79)
!86 = !DILocalVariable(name: "tv", scope: !79, file: !2, line: 66, type: !56)
!87 = !DILocation(line: 66, column: 20, scope: !79)
!88 = !DILocalVariable(name: "end", scope: !79, file: !2, line: 67, type: !27)
!89 = !DILocation(line: 67, column: 14, scope: !79)
!90 = !DILocation(line: 69, column: 10, scope: !79)
!91 = !DILocation(line: 69, column: 8, scope: !79)
!92 = !DILocation(line: 70, column: 5, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !2, line: 70, column: 5)
!94 = distinct !DILexicalBlock(scope: !79, file: !2, line: 70, column: 5)
!95 = !DILocation(line: 70, column: 5, scope: !94)
!96 = !DILocation(line: 71, column: 38, scope: !79)
!97 = !DILocation(line: 71, column: 46, scope: !79)
!98 = !DILocation(line: 71, column: 61, scope: !79)
!99 = !DILocation(line: 71, column: 56, scope: !79)
!100 = !DILocation(line: 71, column: 9, scope: !79)
!101 = !DILocation(line: 72, column: 12, scope: !79)
!102 = !DILocation(line: 72, column: 18, scope: !79)
!103 = !DILocation(line: 72, column: 24, scope: !79)
!104 = !DILocation(line: 72, column: 16, scope: !79)
!105 = !DILocation(line: 72, column: 5, scope: !79)
