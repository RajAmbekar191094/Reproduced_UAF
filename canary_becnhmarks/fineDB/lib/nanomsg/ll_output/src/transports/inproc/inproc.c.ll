; ModuleID = './src/transports/inproc/inproc.c'
source_filename = "./src/transports/inproc/inproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_transport = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }

@nn_inproc_vfptr = internal global %struct.nn_transport { ptr @.str, i32 -1, ptr @nn_inproc_init, ptr @nn_inproc_term, ptr @nn_inproc_bind, ptr @nn_inproc_connect, ptr null, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !0
@nn_inproc = dso_local global ptr @nn_inproc_vfptr, align 8, !dbg !5
@.str = private unnamed_addr constant [7 x i8] c"inproc\00", align 1, !dbg !83

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_inproc_init() #0 !dbg !96 {
  call void @nn_ins_init(), !dbg !98
  ret void, !dbg !99
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_inproc_term() #0 !dbg !100 {
  call void @nn_ins_term(), !dbg !101
  ret void, !dbg !102
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_inproc_bind(ptr noundef %0, ptr noundef %1) #0 !dbg !103 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !104, metadata !DIExpression()), !dbg !105
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !106, metadata !DIExpression()), !dbg !107
  %5 = load ptr, ptr %3, align 8, !dbg !108
  %6 = load ptr, ptr %4, align 8, !dbg !109
  %7 = call i32 @nn_binproc_create(ptr noundef %5, ptr noundef %6), !dbg !110
  ret i32 %7, !dbg !111
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_inproc_connect(ptr noundef %0, ptr noundef %1) #0 !dbg !112 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !113, metadata !DIExpression()), !dbg !114
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !115, metadata !DIExpression()), !dbg !116
  %5 = load ptr, ptr %3, align 8, !dbg !117
  %6 = load ptr, ptr %4, align 8, !dbg !118
  %7 = call i32 @nn_cinproc_create(ptr noundef %5, ptr noundef %6), !dbg !119
  ret i32 %7, !dbg !120
}

declare void @nn_ins_init() #1

declare void @nn_ins_term() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @nn_binproc_create(ptr noundef, ptr noundef) #1

declare i32 @nn_cinproc_create(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_inproc_vfptr", scope: !2, file: !7, line: 39, type: !9, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/transports/inproc/inproc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3614cf83438f7e12b9a4ade4d41b654b")
!4 = !{!5, !83, !0}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "nn_inproc", scope: !2, file: !7, line: 50, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "./src/transports/inproc/inproc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3614cf83438f7e12b9a4ade4d41b654b")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_transport", file: !10, line: 190, size: 576, elements: !11)
!10 = !DIFile(filename: "./src/transports/inproc/../../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
!11 = !{!12, !16, !18, !22, !23, !45, !46, !76}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !9, file: !10, line: 194, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !9, file: !10, line: 197, baseType: !17, size: 32, offset: 64)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !9, file: !10, line: 204, baseType: !19, size: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "term", scope: !9, file: !10, line: 205, baseType: !19, size: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !9, file: !10, line: 213, baseType: !24, size: 64, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DISubroutineType(types: !26)
!26 = !{!17, !27, !28}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase", file: !10, line: 81, size: 128, elements: !31)
!31 = !{!32, !42}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !30, file: !10, line: 82, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase_vfptr", file: !10, line: 70, size: 128, elements: !36)
!36 = !{!37, !41}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !35, file: !10, line: 75, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !29}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !35, file: !10, line: 78, baseType: !38, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !30, file: !10, line: 83, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ep", file: !10, line: 83, flags: DIFlagFwdDecl)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !9, file: !10, line: 214, baseType: !24, size: 64, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "optset", scope: !9, file: !10, line: 219, baseType: !47, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_optset", file: !10, line: 56, size: 64, elements: !52)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !51, file: !10, line: 57, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_optset_vfptr", file: !10, line: 48, size: 192, elements: !57)
!57 = !{!58, !62, !71}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !56, file: !10, line: 49, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !50}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !56, file: !10, line: 50, baseType: !63, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!17, !50, !17, !66, !68}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!70 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !56, file: !10, line: 52, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!17, !50, !17, !27, !75}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !9, file: !10, line: 223, baseType: !77, size: 128, offset: 448)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !78, line: 26, size: 128, elements: !79)
!78 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!79 = !{!80, !82}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !77, file: !78, line: 27, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !77, file: !78, line: 28, baseType: !81, size: 64, offset: 64)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !7, line: 40, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 56, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 7)
!88 = !{i32 7, !"Dwarf Version", i32 5}
!89 = !{i32 2, !"Debug Info Version", i32 3}
!90 = !{i32 1, !"wchar_size", i32 4}
!91 = !{i32 8, !"PIC Level", i32 2}
!92 = !{i32 7, !"PIE Level", i32 2}
!93 = !{i32 7, !"uwtable", i32 2}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 16.0.0"}
!96 = distinct !DISubprogram(name: "nn_inproc_init", scope: !7, file: !7, line: 52, type: !20, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !97)
!97 = !{}
!98 = !DILocation(line: 54, column: 5, scope: !96)
!99 = !DILocation(line: 55, column: 1, scope: !96)
!100 = distinct !DISubprogram(name: "nn_inproc_term", scope: !7, file: !7, line: 57, type: !20, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !97)
!101 = !DILocation(line: 59, column: 5, scope: !100)
!102 = !DILocation(line: 60, column: 1, scope: !100)
!103 = distinct !DISubprogram(name: "nn_inproc_bind", scope: !7, file: !7, line: 62, type: !25, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !97)
!104 = !DILocalVariable(name: "hint", arg: 1, scope: !103, file: !7, line: 62, type: !27)
!105 = !DILocation(line: 62, column: 34, scope: !103)
!106 = !DILocalVariable(name: "epbase", arg: 2, scope: !103, file: !7, line: 62, type: !28)
!107 = !DILocation(line: 62, column: 59, scope: !103)
!108 = !DILocation(line: 64, column: 31, scope: !103)
!109 = !DILocation(line: 64, column: 37, scope: !103)
!110 = !DILocation(line: 64, column: 12, scope: !103)
!111 = !DILocation(line: 64, column: 5, scope: !103)
!112 = distinct !DISubprogram(name: "nn_inproc_connect", scope: !7, file: !7, line: 67, type: !25, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !97)
!113 = !DILocalVariable(name: "hint", arg: 1, scope: !112, file: !7, line: 67, type: !27)
!114 = !DILocation(line: 67, column: 37, scope: !112)
!115 = !DILocalVariable(name: "epbase", arg: 2, scope: !112, file: !7, line: 67, type: !28)
!116 = !DILocation(line: 67, column: 62, scope: !112)
!117 = !DILocation(line: 69, column: 31, scope: !112)
!118 = !DILocation(line: 69, column: 37, scope: !112)
!119 = !DILocation(line: 69, column: 12, scope: !112)
!120 = !DILocation(line: 69, column: 5, scope: !112)
