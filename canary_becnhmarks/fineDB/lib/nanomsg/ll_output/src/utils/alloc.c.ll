; ModuleID = './src/utils/alloc.c'
source_filename = "./src/utils/alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_alloc_init() #0 !dbg !10 {
  ret void, !dbg !15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_alloc_term() #0 !dbg !16 {
  ret void, !dbg !17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_alloc_(i64 noundef %0) #0 !dbg !18 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !25, metadata !DIExpression()), !dbg !26
  %3 = load i64, ptr %2, align 8, !dbg !27
  %4 = call noalias ptr @malloc(i64 noundef %3) #5, !dbg !28
  ret ptr %4, !dbg !29
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_realloc(ptr noundef %0, i64 noundef %1) #0 !dbg !30 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !33, metadata !DIExpression()), !dbg !34
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !35, metadata !DIExpression()), !dbg !36
  %5 = load ptr, ptr %3, align 8, !dbg !37
  %6 = load i64, ptr %4, align 8, !dbg !38
  %7 = call ptr @realloc(ptr noundef %5, i64 noundef %6) #6, !dbg !39
  ret ptr %7, !dbg !40
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_free(ptr noundef %0) #0 !dbg !41 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !44, metadata !DIExpression()), !dbg !45
  %3 = load ptr, ptr %2, align 8, !dbg !46
  call void @free(ptr noundef %3) #7, !dbg !47
  ret void, !dbg !48
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind allocsize(1) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/utils/alloc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "d93315883080c011e73e837eb98f93b3")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.0"}
!10 = distinct !DISubprogram(name: "nn_alloc_init", scope: !11, file: !11, line: 124, type: !12, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DIFile(filename: "./src/utils/alloc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "d93315883080c011e73e837eb98f93b3")
!12 = !DISubroutineType(types: !13)
!13 = !{null}
!14 = !{}
!15 = !DILocation(line: 126, column: 1, scope: !10)
!16 = distinct !DISubprogram(name: "nn_alloc_term", scope: !11, file: !11, line: 128, type: !12, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!17 = !DILocation(line: 130, column: 1, scope: !16)
!18 = distinct !DISubprogram(name: "nn_alloc_", scope: !11, file: !11, line: 132, type: !19, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !22}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 46, baseType: !24)
!23 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!24 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!25 = !DILocalVariable(name: "size", arg: 1, scope: !18, file: !11, line: 132, type: !22)
!26 = !DILocation(line: 132, column: 25, scope: !18)
!27 = !DILocation(line: 134, column: 20, scope: !18)
!28 = !DILocation(line: 134, column: 12, scope: !18)
!29 = !DILocation(line: 134, column: 5, scope: !18)
!30 = distinct !DISubprogram(name: "nn_realloc", scope: !11, file: !11, line: 137, type: !31, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!31 = !DISubroutineType(types: !32)
!32 = !{!21, !21, !22}
!33 = !DILocalVariable(name: "ptr", arg: 1, scope: !30, file: !11, line: 137, type: !21)
!34 = !DILocation(line: 137, column: 25, scope: !30)
!35 = !DILocalVariable(name: "size", arg: 2, scope: !30, file: !11, line: 137, type: !22)
!36 = !DILocation(line: 137, column: 37, scope: !30)
!37 = !DILocation(line: 139, column: 21, scope: !30)
!38 = !DILocation(line: 139, column: 26, scope: !30)
!39 = !DILocation(line: 139, column: 12, scope: !30)
!40 = !DILocation(line: 139, column: 5, scope: !30)
!41 = distinct !DISubprogram(name: "nn_free", scope: !11, file: !11, line: 142, type: !42, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !21}
!44 = !DILocalVariable(name: "ptr", arg: 1, scope: !41, file: !11, line: 142, type: !21)
!45 = !DILocation(line: 142, column: 21, scope: !41)
!46 = !DILocation(line: 144, column: 11, scope: !41)
!47 = !DILocation(line: 144, column: 5, scope: !41)
!48 = !DILocation(line: 145, column: 1, scope: !41)
