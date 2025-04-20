; ModuleID = './src/protocols/utils/fq.c'
source_filename = "./src/protocols/utils/fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_fq = type { %struct.nn_priolist }
%struct.nn_priolist = type { [16 x %struct.nn_priolist_slot], i32 }
%struct.nn_priolist_slot = type { %struct.nn_list, ptr }
%struct.nn_list = type { ptr, ptr }
%struct.nn_fq_data = type { %struct.nn_priolist_data }
%struct.nn_priolist_data = type { ptr, i32, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [27 x i8] c"./src/protocols/utils/fq.c\00", align 1, !dbg !7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fq_init(ptr noundef %0) #0 !dbg !25 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !65, metadata !DIExpression()), !dbg !66
  %3 = load ptr, ptr %2, align 8, !dbg !67
  %4 = getelementptr inbounds %struct.nn_fq, ptr %3, i32 0, i32 0, !dbg !68
  call void @nn_priolist_init(ptr noundef %4), !dbg !69
  ret void, !dbg !70
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_priolist_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fq_term(ptr noundef %0) #0 !dbg !71 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !72, metadata !DIExpression()), !dbg !73
  %3 = load ptr, ptr %2, align 8, !dbg !74
  %4 = getelementptr inbounds %struct.nn_fq, ptr %3, i32 0, i32 0, !dbg !75
  call void @nn_priolist_term(ptr noundef %4), !dbg !76
  ret void, !dbg !77
}

declare void @nn_priolist_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fq_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !78 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !85, metadata !DIExpression()), !dbg !86
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !87, metadata !DIExpression()), !dbg !88
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !89, metadata !DIExpression()), !dbg !90
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !91, metadata !DIExpression()), !dbg !92
  %9 = load ptr, ptr %5, align 8, !dbg !93
  %10 = getelementptr inbounds %struct.nn_fq, ptr %9, i32 0, i32 0, !dbg !94
  %11 = load ptr, ptr %6, align 8, !dbg !95
  %12 = load ptr, ptr %7, align 8, !dbg !96
  %13 = getelementptr inbounds %struct.nn_fq_data, ptr %12, i32 0, i32 0, !dbg !97
  %14 = load i32, ptr %8, align 4, !dbg !98
  call void @nn_priolist_add(ptr noundef %10, ptr noundef %11, ptr noundef %13, i32 noundef %14), !dbg !99
  ret void, !dbg !100
}

declare void @nn_priolist_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fq_rm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !101 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !104, metadata !DIExpression()), !dbg !105
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !106, metadata !DIExpression()), !dbg !107
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !108, metadata !DIExpression()), !dbg !109
  %7 = load ptr, ptr %4, align 8, !dbg !110
  %8 = getelementptr inbounds %struct.nn_fq, ptr %7, i32 0, i32 0, !dbg !111
  %9 = load ptr, ptr %5, align 8, !dbg !112
  %10 = load ptr, ptr %6, align 8, !dbg !113
  %11 = getelementptr inbounds %struct.nn_fq_data, ptr %10, i32 0, i32 0, !dbg !114
  call void @nn_priolist_rm(ptr noundef %8, ptr noundef %9, ptr noundef %11), !dbg !115
  ret void, !dbg !116
}

declare void @nn_priolist_rm(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fq_in(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !117 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !118, metadata !DIExpression()), !dbg !119
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !120, metadata !DIExpression()), !dbg !121
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !122, metadata !DIExpression()), !dbg !123
  %7 = load ptr, ptr %4, align 8, !dbg !124
  %8 = getelementptr inbounds %struct.nn_fq, ptr %7, i32 0, i32 0, !dbg !125
  %9 = load ptr, ptr %5, align 8, !dbg !126
  %10 = load ptr, ptr %6, align 8, !dbg !127
  %11 = getelementptr inbounds %struct.nn_fq_data, ptr %10, i32 0, i32 0, !dbg !128
  call void @nn_priolist_activate(ptr noundef %8, ptr noundef %9, ptr noundef %11), !dbg !129
  ret void, !dbg !130
}

declare void @nn_priolist_activate(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_fq_can_recv(ptr noundef %0) #0 !dbg !131 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !134, metadata !DIExpression()), !dbg !135
  %3 = load ptr, ptr %2, align 8, !dbg !136
  %4 = getelementptr inbounds %struct.nn_fq, ptr %3, i32 0, i32 0, !dbg !137
  %5 = call i32 @nn_priolist_is_active(ptr noundef %4), !dbg !138
  ret i32 %5, !dbg !139
}

declare i32 @nn_priolist_is_active(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_fq_recv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !140 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !162, metadata !DIExpression()), !dbg !163
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !164, metadata !DIExpression()), !dbg !165
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata ptr %8, metadata !168, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata ptr %9, metadata !170, metadata !DIExpression()), !dbg !171
  %10 = load ptr, ptr %5, align 8, !dbg !172
  %11 = getelementptr inbounds %struct.nn_fq, ptr %10, i32 0, i32 0, !dbg !173
  %12 = call ptr @nn_priolist_getpipe(ptr noundef %11), !dbg !174
  store ptr %12, ptr %9, align 8, !dbg !175
  %13 = load ptr, ptr %9, align 8, !dbg !176
  %14 = icmp ne ptr %13, null, !dbg !176
  %15 = xor i1 %14, true, !dbg !176
  %16 = zext i1 %15 to i32, !dbg !176
  %17 = sext i32 %16 to i64, !dbg !176
  %18 = icmp ne i64 %17, 0, !dbg !176
  br i1 %18, label %19, label %20, !dbg !178

19:                                               ; preds = %3
  store i32 -11, ptr %4, align 4, !dbg !179
  br label %53, !dbg !179

20:                                               ; preds = %3
  %21 = load ptr, ptr %9, align 8, !dbg !180
  %22 = load ptr, ptr %6, align 8, !dbg !181
  %23 = call i32 @nn_pipe_recv(ptr noundef %21, ptr noundef %22), !dbg !182
  store i32 %23, ptr %8, align 4, !dbg !183
  br label %24, !dbg !184

24:                                               ; preds = %20
  %25 = load i32, ptr %8, align 4, !dbg !185
  %26 = icmp sge i32 %25, 0, !dbg !185
  %27 = xor i1 %26, true, !dbg !185
  %28 = zext i1 %27 to i32, !dbg !185
  %29 = sext i32 %28 to i64, !dbg !185
  %30 = icmp ne i64 %29, 0, !dbg !185
  br i1 %30, label %31, label %39, !dbg !188

31:                                               ; preds = %24
  %32 = load ptr, ptr @stderr, align 8, !dbg !189
  %33 = load i32, ptr %8, align 4, !dbg !189
  %34 = sub nsw i32 0, %33, !dbg !189
  %35 = call ptr @nn_err_strerror(i32 noundef %34), !dbg !189
  %36 = load i32, ptr %8, align 4, !dbg !189
  %37 = sub nsw i32 0, %36, !dbg !189
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str, ptr noundef %35, i32 noundef %37, ptr noundef @.str.1, i32 noundef 75), !dbg !189
  call void @nn_err_abort() #4, !dbg !189
  unreachable, !dbg !189

39:                                               ; preds = %24
  br label %40, !dbg !188

40:                                               ; preds = %39
  %41 = load ptr, ptr %7, align 8, !dbg !191
  %42 = icmp ne ptr %41, null, !dbg !191
  br i1 %42, label %43, label %46, !dbg !193

43:                                               ; preds = %40
  %44 = load ptr, ptr %9, align 8, !dbg !194
  %45 = load ptr, ptr %7, align 8, !dbg !195
  store ptr %44, ptr %45, align 8, !dbg !196
  br label %46, !dbg !197

46:                                               ; preds = %43, %40
  %47 = load ptr, ptr %5, align 8, !dbg !198
  %48 = getelementptr inbounds %struct.nn_fq, ptr %47, i32 0, i32 0, !dbg !199
  %49 = load i32, ptr %8, align 4, !dbg !200
  %50 = and i32 %49, 1, !dbg !201
  call void @nn_priolist_advance(ptr noundef %48, i32 noundef %50), !dbg !202
  %51 = load i32, ptr %8, align 4, !dbg !203
  %52 = and i32 %51, -2, !dbg !204
  store i32 %52, ptr %4, align 4, !dbg !205
  br label %53, !dbg !205

53:                                               ; preds = %46, %19
  %54 = load i32, ptr %4, align 4, !dbg !206
  ret i32 %54, !dbg !206
}

declare ptr @nn_priolist_getpipe(ptr noundef) #2

declare i32 @nn_pipe_recv(ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare ptr @nn_err_strerror(i32 noundef) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_priolist_advance(ptr noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/protocols/utils/fq.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8e89316691089b81151ea92c3a6ba12a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 27)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !13, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !14, globals: !16, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "src/protocols/utils/fq.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8e89316691089b81151ea92c3a6ba12a")
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
!25 = distinct !DISubprogram(name: "nn_fq_init", scope: !2, file: !2, line: 30, type: !26, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !64)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fq", file: !30, line: 37, size: 3136, elements: !31)
!30 = !DIFile(filename: "./src/protocols/utils/fq.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "342bacd48eb65b84f809ed6b86c6514c")
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !29, file: !30, line: 38, baseType: !33, size: 3136)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist", file: !34, line: 45, size: 3136, elements: !35)
!34 = !DIFile(filename: "./src/protocols/utils/priolist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e7a7c69c9c81fe3b1beae760b1a28137")
!35 = !{!36, !63}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !33, file: !34, line: 46, baseType: !37, size: 3072)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 3072, elements: !61)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_slot", file: !34, line: 40, size: 192, elements: !39)
!39 = !{!40, !51}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !38, file: !34, line: 41, baseType: !41, size: 128)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !42, line: 31, size: 128, elements: !43)
!42 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!43 = !{!44, !50}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !41, file: !42, line: 32, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !42, line: 26, size: 128, elements: !47)
!47 = !{!48, !49}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !46, file: !42, line: 27, baseType: !45, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !46, file: !42, line: 28, baseType: !45, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !41, file: !42, line: 33, baseType: !45, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !38, file: !34, line: 42, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_data", file: !34, line: 34, size: 256, elements: !54)
!54 = !{!55, !59, !60}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !53, file: !34, line: 35, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !58, line: 56, flags: DIFlagFwdDecl)
!58 = !DIFile(filename: "./src/protocols/utils/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!59 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !53, file: !34, line: 36, baseType: !15, size: 32, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !53, file: !34, line: 37, baseType: !46, size: 128, offset: 128)
!61 = !{!62}
!62 = !DISubrange(count: 16)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !33, file: !34, line: 47, baseType: !15, size: 32, offset: 3072)
!64 = !{}
!65 = !DILocalVariable(name: "self", arg: 1, scope: !25, file: !2, line: 30, type: !28)
!66 = !DILocation(line: 30, column: 32, scope: !25)
!67 = !DILocation(line: 32, column: 24, scope: !25)
!68 = !DILocation(line: 32, column: 30, scope: !25)
!69 = !DILocation(line: 32, column: 5, scope: !25)
!70 = !DILocation(line: 33, column: 1, scope: !25)
!71 = distinct !DISubprogram(name: "nn_fq_term", scope: !2, file: !2, line: 35, type: !26, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !64)
!72 = !DILocalVariable(name: "self", arg: 1, scope: !71, file: !2, line: 35, type: !28)
!73 = !DILocation(line: 35, column: 32, scope: !71)
!74 = !DILocation(line: 37, column: 24, scope: !71)
!75 = !DILocation(line: 37, column: 30, scope: !71)
!76 = !DILocation(line: 37, column: 5, scope: !71)
!77 = !DILocation(line: 38, column: 1, scope: !71)
!78 = distinct !DISubprogram(name: "nn_fq_add", scope: !2, file: !2, line: 40, type: !79, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !28, !56, !81, !15}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fq_data", file: !30, line: 33, size: 256, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !82, file: !30, line: 34, baseType: !53, size: 256)
!85 = !DILocalVariable(name: "self", arg: 1, scope: !78, file: !2, line: 40, type: !28)
!86 = !DILocation(line: 40, column: 31, scope: !78)
!87 = !DILocalVariable(name: "pipe", arg: 2, scope: !78, file: !2, line: 40, type: !56)
!88 = !DILocation(line: 40, column: 53, scope: !78)
!89 = !DILocalVariable(name: "data", arg: 3, scope: !78, file: !2, line: 41, type: !81)
!90 = !DILocation(line: 41, column: 24, scope: !78)
!91 = !DILocalVariable(name: "priority", arg: 4, scope: !78, file: !2, line: 41, type: !15)
!92 = !DILocation(line: 41, column: 34, scope: !78)
!93 = !DILocation(line: 43, column: 23, scope: !78)
!94 = !DILocation(line: 43, column: 29, scope: !78)
!95 = !DILocation(line: 43, column: 39, scope: !78)
!96 = !DILocation(line: 43, column: 46, scope: !78)
!97 = !DILocation(line: 43, column: 52, scope: !78)
!98 = !DILocation(line: 43, column: 62, scope: !78)
!99 = !DILocation(line: 43, column: 5, scope: !78)
!100 = !DILocation(line: 44, column: 1, scope: !78)
!101 = distinct !DISubprogram(name: "nn_fq_rm", scope: !2, file: !2, line: 46, type: !102, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !64)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !28, !56, !81}
!104 = !DILocalVariable(name: "self", arg: 1, scope: !101, file: !2, line: 46, type: !28)
!105 = !DILocation(line: 46, column: 30, scope: !101)
!106 = !DILocalVariable(name: "pipe", arg: 2, scope: !101, file: !2, line: 46, type: !56)
!107 = !DILocation(line: 46, column: 52, scope: !101)
!108 = !DILocalVariable(name: "data", arg: 3, scope: !101, file: !2, line: 47, type: !81)
!109 = !DILocation(line: 47, column: 24, scope: !101)
!110 = !DILocation(line: 49, column: 22, scope: !101)
!111 = !DILocation(line: 49, column: 28, scope: !101)
!112 = !DILocation(line: 49, column: 38, scope: !101)
!113 = !DILocation(line: 49, column: 45, scope: !101)
!114 = !DILocation(line: 49, column: 51, scope: !101)
!115 = !DILocation(line: 49, column: 5, scope: !101)
!116 = !DILocation(line: 50, column: 1, scope: !101)
!117 = distinct !DISubprogram(name: "nn_fq_in", scope: !2, file: !2, line: 52, type: !102, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !64)
!118 = !DILocalVariable(name: "self", arg: 1, scope: !117, file: !2, line: 52, type: !28)
!119 = !DILocation(line: 52, column: 30, scope: !117)
!120 = !DILocalVariable(name: "pipe", arg: 2, scope: !117, file: !2, line: 52, type: !56)
!121 = !DILocation(line: 52, column: 52, scope: !117)
!122 = !DILocalVariable(name: "data", arg: 3, scope: !117, file: !2, line: 53, type: !81)
!123 = !DILocation(line: 53, column: 24, scope: !117)
!124 = !DILocation(line: 55, column: 28, scope: !117)
!125 = !DILocation(line: 55, column: 34, scope: !117)
!126 = !DILocation(line: 55, column: 44, scope: !117)
!127 = !DILocation(line: 55, column: 51, scope: !117)
!128 = !DILocation(line: 55, column: 57, scope: !117)
!129 = !DILocation(line: 55, column: 5, scope: !117)
!130 = !DILocation(line: 56, column: 1, scope: !117)
!131 = distinct !DISubprogram(name: "nn_fq_can_recv", scope: !2, file: !2, line: 58, type: !132, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !64)
!132 = !DISubroutineType(types: !133)
!133 = !{!15, !28}
!134 = !DILocalVariable(name: "self", arg: 1, scope: !131, file: !2, line: 58, type: !28)
!135 = !DILocation(line: 58, column: 35, scope: !131)
!136 = !DILocation(line: 60, column: 36, scope: !131)
!137 = !DILocation(line: 60, column: 42, scope: !131)
!138 = !DILocation(line: 60, column: 12, scope: !131)
!139 = !DILocation(line: 60, column: 5, scope: !131)
!140 = distinct !DISubprogram(name: "nn_fq_recv", scope: !2, file: !2, line: 63, type: !141, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !64)
!141 = !DISubroutineType(types: !142)
!142 = !{!15, !28, !143, !161}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !145, line: 30, size: 512, elements: !146)
!145 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!146 = !{!147, !160}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !144, file: !145, line: 33, baseType: !148, size: 256)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !149, line: 39, size: 256, elements: !150)
!149 = !DIFile(filename: "src/utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !148, file: !149, line: 40, baseType: !152, size: 256)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 256, elements: !158)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !154, line: 24, baseType: !155)
!154 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !156, line: 38, baseType: !157)
!156 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!157 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!158 = !{!159}
!159 = !DISubrange(count: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !144, file: !145, line: 36, baseType: !148, size: 256, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!162 = !DILocalVariable(name: "self", arg: 1, scope: !140, file: !2, line: 63, type: !28)
!163 = !DILocation(line: 63, column: 31, scope: !140)
!164 = !DILocalVariable(name: "msg", arg: 2, scope: !140, file: !2, line: 63, type: !143)
!165 = !DILocation(line: 63, column: 52, scope: !140)
!166 = !DILocalVariable(name: "pipe", arg: 3, scope: !140, file: !2, line: 63, type: !161)
!167 = !DILocation(line: 63, column: 74, scope: !140)
!168 = !DILocalVariable(name: "rc", scope: !140, file: !2, line: 65, type: !15)
!169 = !DILocation(line: 65, column: 9, scope: !140)
!170 = !DILocalVariable(name: "p", scope: !140, file: !2, line: 66, type: !56)
!171 = !DILocation(line: 66, column: 21, scope: !140)
!172 = !DILocation(line: 69, column: 31, scope: !140)
!173 = !DILocation(line: 69, column: 37, scope: !140)
!174 = !DILocation(line: 69, column: 9, scope: !140)
!175 = !DILocation(line: 69, column: 7, scope: !140)
!176 = !DILocation(line: 70, column: 9, scope: !177)
!177 = distinct !DILexicalBlock(scope: !140, file: !2, line: 70, column: 9)
!178 = !DILocation(line: 70, column: 9, scope: !140)
!179 = !DILocation(line: 71, column: 9, scope: !177)
!180 = !DILocation(line: 74, column: 24, scope: !140)
!181 = !DILocation(line: 74, column: 27, scope: !140)
!182 = !DILocation(line: 74, column: 10, scope: !140)
!183 = !DILocation(line: 74, column: 8, scope: !140)
!184 = !DILocation(line: 75, column: 5, scope: !140)
!185 = !DILocation(line: 75, column: 5, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !2, line: 75, column: 5)
!187 = distinct !DILexicalBlock(scope: !140, file: !2, line: 75, column: 5)
!188 = !DILocation(line: 75, column: 5, scope: !187)
!189 = !DILocation(line: 75, column: 5, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !2, line: 75, column: 5)
!191 = !DILocation(line: 78, column: 9, scope: !192)
!192 = distinct !DILexicalBlock(scope: !140, file: !2, line: 78, column: 9)
!193 = !DILocation(line: 78, column: 9, scope: !140)
!194 = !DILocation(line: 79, column: 17, scope: !192)
!195 = !DILocation(line: 79, column: 10, scope: !192)
!196 = !DILocation(line: 79, column: 15, scope: !192)
!197 = !DILocation(line: 79, column: 9, scope: !192)
!198 = !DILocation(line: 82, column: 27, scope: !140)
!199 = !DILocation(line: 82, column: 33, scope: !140)
!200 = !DILocation(line: 82, column: 43, scope: !140)
!201 = !DILocation(line: 82, column: 46, scope: !140)
!202 = !DILocation(line: 82, column: 5, scope: !140)
!203 = !DILocation(line: 84, column: 12, scope: !140)
!204 = !DILocation(line: 84, column: 15, scope: !140)
!205 = !DILocation(line: 84, column: 5, scope: !140)
!206 = !DILocation(line: 85, column: 1, scope: !140)
