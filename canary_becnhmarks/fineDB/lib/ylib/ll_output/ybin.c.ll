; ModuleID = './ybin.c'
source_filename = "./ybin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ybin_s = type { ptr, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ybin_set(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !11 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !26, metadata !DIExpression()), !dbg !27
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !28, metadata !DIExpression()), !dbg !29
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !30, metadata !DIExpression()), !dbg !31
  %7 = load ptr, ptr %4, align 8, !dbg !32
  %8 = icmp eq ptr %7, null, !dbg !34
  br i1 %8, label %9, label %11, !dbg !35

9:                                                ; preds = %3
  %10 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 16) #3, !dbg !36
  store ptr %10, ptr %4, align 8, !dbg !37
  br label %11, !dbg !38

11:                                               ; preds = %9, %3
  %12 = load ptr, ptr %5, align 8, !dbg !39
  %13 = load ptr, ptr %4, align 8, !dbg !40
  %14 = getelementptr inbounds %struct.ybin_s, ptr %13, i32 0, i32 0, !dbg !41
  store ptr %12, ptr %14, align 8, !dbg !42
  %15 = load i64, ptr %6, align 8, !dbg !43
  %16 = load ptr, ptr %4, align 8, !dbg !44
  %17 = getelementptr inbounds %struct.ybin_s, ptr %16, i32 0, i32 1, !dbg !45
  store i64 %15, ptr %17, align 8, !dbg !46
  %18 = load ptr, ptr %4, align 8, !dbg !47
  ret ptr %18, !dbg !48
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "ybin.c", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "8c095e3ada759bd307385a47d9f06e11")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 16.0.0"}
!11 = distinct !DISubprogram(name: "ybin_set", scope: !12, file: !12, line: 4, type: !13, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!12 = !DIFile(filename: "./ybin.c", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "8c095e3ada759bd307385a47d9f06e11")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15, !3, !22}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !17, line: 33, baseType: !18)
!17 = !DIFile(filename: "./ybin.h", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "7abd7d5e6afd31e8416cab6f0a6bf3b3")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !17, line: 27, size: 128, elements: !19)
!19 = !{!20, !21}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !18, file: !17, line: 28, baseType: !3, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !18, file: !17, line: 29, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 46, baseType: !24)
!23 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!24 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!25 = !{}
!26 = !DILocalVariable(name: "container", arg: 1, scope: !11, file: !12, line: 4, type: !15)
!27 = !DILocation(line: 4, column: 26, scope: !11)
!28 = !DILocalVariable(name: "data", arg: 2, scope: !11, file: !12, line: 4, type: !3)
!29 = !DILocation(line: 4, column: 43, scope: !11)
!30 = !DILocalVariable(name: "len", arg: 3, scope: !11, file: !12, line: 4, type: !22)
!31 = !DILocation(line: 4, column: 56, scope: !11)
!32 = !DILocation(line: 5, column: 6, scope: !33)
!33 = distinct !DILexicalBlock(scope: !11, file: !12, line: 5, column: 6)
!34 = !DILocation(line: 5, column: 16, scope: !33)
!35 = !DILocation(line: 5, column: 6, scope: !11)
!36 = !DILocation(line: 6, column: 15, scope: !33)
!37 = !DILocation(line: 6, column: 13, scope: !33)
!38 = !DILocation(line: 6, column: 3, scope: !33)
!39 = !DILocation(line: 7, column: 20, scope: !11)
!40 = !DILocation(line: 7, column: 2, scope: !11)
!41 = !DILocation(line: 7, column: 13, scope: !11)
!42 = !DILocation(line: 7, column: 18, scope: !11)
!43 = !DILocation(line: 8, column: 19, scope: !11)
!44 = !DILocation(line: 8, column: 2, scope: !11)
!45 = !DILocation(line: 8, column: 13, scope: !11)
!46 = !DILocation(line: 8, column: 17, scope: !11)
!47 = !DILocation(line: 9, column: 10, scope: !11)
!48 = !DILocation(line: 9, column: 2, scope: !11)
