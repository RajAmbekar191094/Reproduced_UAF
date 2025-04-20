; ModuleID = './src/utils/clock.c'
source_filename = "./src/utils/clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_clock = type { i64, i64 }
%struct.timeval = type { i64, i64 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [20 x i8] c"./src/utils/clock.c\00", align 1, !dbg !7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_clock_init(ptr noundef %0) #0 !dbg !31 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !41, metadata !DIExpression()), !dbg !42
  %3 = call i64 @nn_clock_rdtsc(), !dbg !43
  %4 = load ptr, ptr %2, align 8, !dbg !44
  %5 = getelementptr inbounds %struct.nn_clock, ptr %4, i32 0, i32 0, !dbg !45
  store i64 %3, ptr %5, align 8, !dbg !46
  %6 = call i64 @nn_clock_time(), !dbg !47
  %7 = load ptr, ptr %2, align 8, !dbg !48
  %8 = getelementptr inbounds %struct.nn_clock, ptr %7, i32 0, i32 1, !dbg !49
  store i64 %6, ptr %8, align 8, !dbg !50
  ret void, !dbg !51
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_clock_term(ptr noundef %0) #0 !dbg !52 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !53, metadata !DIExpression()), !dbg !54
  ret void, !dbg !55
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nn_clock_now(ptr noundef %0) #0 !dbg !56 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata ptr %4, metadata !61, metadata !DIExpression()), !dbg !62
  %5 = call i64 @nn_clock_rdtsc(), !dbg !63
  store i64 %5, ptr %4, align 8, !dbg !62
  %6 = load i64, ptr %4, align 8, !dbg !64
  %7 = icmp ne i64 %6, 0, !dbg !64
  br i1 %7, label %10, label %8, !dbg !66

8:                                                ; preds = %1
  %9 = call i64 @nn_clock_time(), !dbg !67
  store i64 %9, ptr %2, align 8, !dbg !68
  br label %42, !dbg !68

10:                                               ; preds = %1
  %11 = load i64, ptr %4, align 8, !dbg !69
  %12 = load ptr, ptr %3, align 8, !dbg !69
  %13 = getelementptr inbounds %struct.nn_clock, ptr %12, i32 0, i32 0, !dbg !69
  %14 = load i64, ptr %13, align 8, !dbg !69
  %15 = sub i64 %11, %14, !dbg !69
  %16 = icmp ule i64 %15, 500000, !dbg !69
  br i1 %16, label %17, label %23, !dbg !69

17:                                               ; preds = %10
  %18 = load i64, ptr %4, align 8, !dbg !69
  %19 = load ptr, ptr %3, align 8, !dbg !69
  %20 = getelementptr inbounds %struct.nn_clock, ptr %19, i32 0, i32 0, !dbg !69
  %21 = load i64, ptr %20, align 8, !dbg !69
  %22 = icmp uge i64 %18, %21, !dbg !69
  br label %23

23:                                               ; preds = %17, %10
  %24 = phi i1 [ false, %10 ], [ %22, %17 ], !dbg !71
  %25 = zext i1 %24 to i32, !dbg !69
  %26 = sext i32 %25 to i64, !dbg !69
  %27 = icmp ne i64 %26, 0, !dbg !69
  br i1 %27, label %28, label %32, !dbg !72

28:                                               ; preds = %23
  %29 = load ptr, ptr %3, align 8, !dbg !73
  %30 = getelementptr inbounds %struct.nn_clock, ptr %29, i32 0, i32 1, !dbg !74
  %31 = load i64, ptr %30, align 8, !dbg !74
  store i64 %31, ptr %2, align 8, !dbg !75
  br label %42, !dbg !75

32:                                               ; preds = %23
  %33 = load i64, ptr %4, align 8, !dbg !76
  %34 = load ptr, ptr %3, align 8, !dbg !77
  %35 = getelementptr inbounds %struct.nn_clock, ptr %34, i32 0, i32 0, !dbg !78
  store i64 %33, ptr %35, align 8, !dbg !79
  %36 = call i64 @nn_clock_time(), !dbg !80
  %37 = load ptr, ptr %3, align 8, !dbg !81
  %38 = getelementptr inbounds %struct.nn_clock, ptr %37, i32 0, i32 1, !dbg !82
  store i64 %36, ptr %38, align 8, !dbg !83
  %39 = load ptr, ptr %3, align 8, !dbg !84
  %40 = getelementptr inbounds %struct.nn_clock, ptr %39, i32 0, i32 1, !dbg !85
  %41 = load i64, ptr %40, align 8, !dbg !85
  store i64 %41, ptr %2, align 8, !dbg !86
  br label %42, !dbg !86

42:                                               ; preds = %32, %28, %8
  %43 = load i64, ptr %2, align 8, !dbg !87
  ret i64 %43, !dbg !87
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nn_clock_timestamp() #0 !dbg !88 {
  %1 = call i64 @nn_clock_rdtsc(), !dbg !91
  ret i64 %1, !dbg !92
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nn_clock_rdtsc() #0 !dbg !93 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !94, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata ptr %2, metadata !99, metadata !DIExpression()), !dbg !100
  %3 = call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !101, !srcloc !102
  %4 = extractvalue { i32, i32 } %3, 0, !dbg !101
  %5 = extractvalue { i32, i32 } %3, 1, !dbg !101
  store i32 %4, ptr %1, align 4, !dbg !101
  store i32 %5, ptr %2, align 4, !dbg !101
  %6 = load i32, ptr %2, align 4, !dbg !103
  %7 = zext i32 %6 to i64, !dbg !104
  %8 = shl i64 %7, 32, !dbg !105
  %9 = load i32, ptr %1, align 4, !dbg !106
  %10 = zext i32 %9 to i64, !dbg !106
  %11 = or i64 %8, %10, !dbg !107
  ret i64 %11, !dbg !108
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nn_clock_time() #0 !dbg !109 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata ptr %2, metadata !112, metadata !DIExpression()), !dbg !121
  %3 = call i32 @gettimeofday(ptr noundef %2, ptr noundef null) #6, !dbg !122
  store i32 %3, ptr %1, align 4, !dbg !123
  br label %4, !dbg !124

4:                                                ; preds = %0
  %5 = load i32, ptr %1, align 4, !dbg !125
  %6 = icmp eq i32 %5, 0, !dbg !125
  %7 = xor i1 %6, true, !dbg !125
  %8 = zext i1 %7 to i32, !dbg !125
  %9 = sext i32 %8 to i64, !dbg !125
  %10 = icmp ne i64 %9, 0, !dbg !125
  br i1 %10, label %11, label %19, !dbg !128

11:                                               ; preds = %4
  %12 = load ptr, ptr @stderr, align 8, !dbg !129
  %13 = call ptr @__errno_location() #7, !dbg !129
  %14 = load i32, ptr %13, align 4, !dbg !129
  %15 = call ptr @nn_err_strerror(i32 noundef %14), !dbg !129
  %16 = call ptr @__errno_location() #7, !dbg !129
  %17 = load i32, ptr %16, align 4, !dbg !129
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str, ptr noundef %15, i32 noundef %17, ptr noundef @.str.1, i32 noundef 116), !dbg !129
  call void @nn_err_abort() #8, !dbg !129
  unreachable, !dbg !129

19:                                               ; preds = %4
  br label %20, !dbg !128

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.timeval, ptr %2, i32 0, i32 0, !dbg !131
  %22 = load i64, ptr %21, align 8, !dbg !131
  %23 = mul i64 %22, 1000, !dbg !132
  %24 = getelementptr inbounds %struct.timeval, ptr %2, i32 0, i32 1, !dbg !133
  %25 = load i64, ptr %24, align 8, !dbg !133
  %26 = sdiv i64 %25, 1000, !dbg !134
  %27 = add i64 %23, %26, !dbg !135
  ret i64 %27, !dbg !136
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare ptr @nn_err_strerror(i32 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #4

; Function Attrs: noreturn
declare void @nn_err_abort() #5

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
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/utils/clock.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "dc5c8c7518b65a4a6ca7e560f5f3ee74")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 20)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !13, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !14, globals: !22, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "src/utils/clock.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "dc5c8c7518b65a4a6ca7e560f5f3ee74")
!14 = !{!15, !20, !21}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !16, line: 27, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !18, line: 45, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!0, !7}
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 8, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 2}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 16.0.0"}
!31 = distinct !DISubprogram(name: "nn_clock_init", scope: !2, file: !2, line: 122, type: !32, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !40)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !36, line: 31, size: 128, elements: !37)
!36 = !DIFile(filename: "./src/utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!37 = !{!38, !39}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !35, file: !36, line: 33, baseType: !15, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !35, file: !36, line: 34, baseType: !15, size: 64, offset: 64)
!40 = !{}
!41 = !DILocalVariable(name: "self", arg: 1, scope: !31, file: !2, line: 122, type: !34)
!42 = !DILocation(line: 122, column: 38, scope: !31)
!43 = !DILocation(line: 124, column: 22, scope: !31)
!44 = !DILocation(line: 124, column: 5, scope: !31)
!45 = !DILocation(line: 124, column: 11, scope: !31)
!46 = !DILocation(line: 124, column: 20, scope: !31)
!47 = !DILocation(line: 125, column: 23, scope: !31)
!48 = !DILocation(line: 125, column: 5, scope: !31)
!49 = !DILocation(line: 125, column: 11, scope: !31)
!50 = !DILocation(line: 125, column: 21, scope: !31)
!51 = !DILocation(line: 126, column: 1, scope: !31)
!52 = distinct !DISubprogram(name: "nn_clock_term", scope: !2, file: !2, line: 128, type: !32, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !40)
!53 = !DILocalVariable(name: "self", arg: 1, scope: !52, file: !2, line: 128, type: !34)
!54 = !DILocation(line: 128, column: 38, scope: !52)
!55 = !DILocation(line: 130, column: 1, scope: !52)
!56 = distinct !DISubprogram(name: "nn_clock_now", scope: !2, file: !2, line: 132, type: !57, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !40)
!57 = !DISubroutineType(types: !58)
!58 = !{!15, !34}
!59 = !DILocalVariable(name: "self", arg: 1, scope: !56, file: !2, line: 132, type: !34)
!60 = !DILocation(line: 132, column: 41, scope: !56)
!61 = !DILocalVariable(name: "tsc", scope: !56, file: !2, line: 135, type: !15)
!62 = !DILocation(line: 135, column: 14, scope: !56)
!63 = !DILocation(line: 135, column: 20, scope: !56)
!64 = !DILocation(line: 136, column: 10, scope: !65)
!65 = distinct !DILexicalBlock(scope: !56, file: !2, line: 136, column: 9)
!66 = !DILocation(line: 136, column: 9, scope: !56)
!67 = !DILocation(line: 137, column: 16, scope: !65)
!68 = !DILocation(line: 137, column: 9, scope: !65)
!69 = !DILocation(line: 141, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !56, file: !2, line: 141, column: 9)
!71 = !DILocation(line: 0, scope: !70)
!72 = !DILocation(line: 141, column: 9, scope: !56)
!73 = !DILocation(line: 143, column: 16, scope: !70)
!74 = !DILocation(line: 143, column: 22, scope: !70)
!75 = !DILocation(line: 143, column: 9, scope: !70)
!76 = !DILocation(line: 147, column: 22, scope: !56)
!77 = !DILocation(line: 147, column: 5, scope: !56)
!78 = !DILocation(line: 147, column: 11, scope: !56)
!79 = !DILocation(line: 147, column: 20, scope: !56)
!80 = !DILocation(line: 148, column: 23, scope: !56)
!81 = !DILocation(line: 148, column: 5, scope: !56)
!82 = !DILocation(line: 148, column: 11, scope: !56)
!83 = !DILocation(line: 148, column: 21, scope: !56)
!84 = !DILocation(line: 149, column: 12, scope: !56)
!85 = !DILocation(line: 149, column: 18, scope: !56)
!86 = !DILocation(line: 149, column: 5, scope: !56)
!87 = !DILocation(line: 150, column: 1, scope: !56)
!88 = distinct !DISubprogram(name: "nn_clock_timestamp", scope: !2, file: !2, line: 152, type: !89, scopeLine: 153, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !40)
!89 = !DISubroutineType(types: !90)
!90 = !{!15}
!91 = !DILocation(line: 154, column: 12, scope: !88)
!92 = !DILocation(line: 154, column: 5, scope: !88)
!93 = distinct !DISubprogram(name: "nn_clock_rdtsc", scope: !2, file: !2, line: 46, type: !89, scopeLine: 47, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !40)
!94 = !DILocalVariable(name: "low", scope: !93, file: !2, line: 51, type: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !16, line: 26, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !18, line: 42, baseType: !97)
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !DILocation(line: 51, column: 14, scope: !93)
!99 = !DILocalVariable(name: "high", scope: !93, file: !2, line: 52, type: !95)
!100 = !DILocation(line: 52, column: 14, scope: !93)
!101 = !DILocation(line: 53, column: 5, scope: !93)
!102 = !{i64 1985}
!103 = !DILocation(line: 54, column: 23, scope: !93)
!104 = !DILocation(line: 54, column: 12, scope: !93)
!105 = !DILocation(line: 54, column: 28, scope: !93)
!106 = !DILocation(line: 54, column: 36, scope: !93)
!107 = !DILocation(line: 54, column: 34, scope: !93)
!108 = !DILocation(line: 54, column: 5, scope: !93)
!109 = distinct !DISubprogram(name: "nn_clock_time", scope: !2, file: !2, line: 70, type: !89, scopeLine: 71, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !40)
!110 = !DILocalVariable(name: "rc", scope: !109, file: !2, line: 110, type: !21)
!111 = !DILocation(line: 110, column: 9, scope: !109)
!112 = !DILocalVariable(name: "tv", scope: !109, file: !2, line: 111, type: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !114, line: 8, size: 128, elements: !115)
!114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!115 = !{!116, !119}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !113, file: !114, line: 14, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !18, line: 160, baseType: !118)
!118 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !113, file: !114, line: 15, baseType: !120, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !18, line: 162, baseType: !118)
!121 = !DILocation(line: 111, column: 20, scope: !109)
!122 = !DILocation(line: 115, column: 10, scope: !109)
!123 = !DILocation(line: 115, column: 8, scope: !109)
!124 = !DILocation(line: 116, column: 5, scope: !109)
!125 = !DILocation(line: 116, column: 5, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !2, line: 116, column: 5)
!127 = distinct !DILexicalBlock(scope: !109, file: !2, line: 116, column: 5)
!128 = !DILocation(line: 116, column: 5, scope: !127)
!129 = !DILocation(line: 116, column: 5, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !2, line: 116, column: 5)
!131 = !DILocation(line: 117, column: 15, scope: !109)
!132 = !DILocation(line: 117, column: 22, scope: !109)
!133 = !DILocation(line: 117, column: 45, scope: !109)
!134 = !DILocation(line: 117, column: 53, scope: !109)
!135 = !DILocation(line: 117, column: 40, scope: !109)
!136 = !DILocation(line: 117, column: 5, scope: !109)
