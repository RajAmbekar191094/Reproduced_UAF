; ModuleID = 'self_path.c'
source_filename = "self_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_self_path.path = internal global [4096 x i8] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1, !dbg !13

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @get_self_path() local_unnamed_addr #0 !dbg !2 {
  %1 = tail call ptr @realpath(ptr noundef nonnull @.str, ptr noundef nonnull @get_self_path.path) #4, !dbg !31
  %2 = icmp eq ptr %1, null, !dbg !33
  br i1 %2, label %7, label %3, !dbg !34

3:                                                ; preds = %0
  %4 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) @get_self_path.path, i32 noundef 47) #5, !dbg !35
  call void @llvm.dbg.value(metadata ptr %4, metadata !19, metadata !DIExpression()), !dbg !37
  %5 = icmp eq ptr %4, null, !dbg !38
  br i1 %5, label %7, label %6, !dbg !39

6:                                                ; preds = %3
  store i8 0, ptr %4, align 1, !dbg !40, !tbaa !41
  br label %7, !dbg !44

7:                                                ; preds = %3, %6, %0
  %8 = phi ptr [ null, %0 ], [ @get_self_path.path, %6 ], [ @get_self_path.path, %3 ], !dbg !37
  ret ptr %8, !dbg !45
}

; Function Attrs: nofree nounwind
declare !dbg !46 noundef ptr @realpath(ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !53 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "path", scope: !2, file: !3, line: 11, type: !21, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "get_self_path", scope: !3, file: !3, line: 10, type: !4, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !18)
!3 = !DIFile(filename: "self_path.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "2bbc590e709ff14bd139f9008aac95cd")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !12, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !{!0, !13}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !3, line: 14, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 120, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 15)
!18 = !{!19}
!19 = !DILocalVariable(name: "pt", scope: !2, file: !3, line: 12, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32768, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 4096)
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 8, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 2}
!30 = !{!"clang version 16.0.0"}
!31 = !DILocation(line: 14, column: 6, scope: !32)
!32 = distinct !DILexicalBlock(scope: !2, file: !3, line: 14, column: 6)
!33 = !DILocation(line: 14, column: 39, scope: !32)
!34 = !DILocation(line: 14, column: 6, scope: !2)
!35 = !DILocation(line: 16, column: 12, scope: !36)
!36 = distinct !DILexicalBlock(scope: !2, file: !3, line: 16, column: 6)
!37 = !DILocation(line: 0, scope: !2)
!38 = !DILocation(line: 16, column: 32, scope: !36)
!39 = !DILocation(line: 16, column: 6, scope: !2)
!40 = !DILocation(line: 17, column: 7, scope: !36)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 17, column: 3, scope: !36)
!45 = !DILocation(line: 19, column: 1, scope: !2)
!46 = !DISubprogram(name: "realpath", scope: !47, file: !47, line: 808, type: !48, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!47 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!48 = !DISubroutineType(types: !49)
!49 = !{!20, !50, !51}
!50 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!51 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !20)
!52 = !{}
!53 = !DISubprogram(name: "strrchr", scope: !54, file: !54, line: 273, type: !55, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!54 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!55 = !DISubroutineType(types: !56)
!56 = !{!20, !6, !57}
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
