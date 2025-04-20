; ModuleID = './src/utils/err.c'
source_filename = "./src/utils/err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Nanomsg library was terminated\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [44 x i8] c"Operation cannot be performed in this state\00", align 1, !dbg !7

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @nn_err_abort() #0 !dbg !23 {
  call void @abort() #6, !dbg !27
  unreachable, !dbg !27
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_err_errno() #2 !dbg !28 {
  %1 = call ptr @__errno_location() #7, !dbg !32
  %2 = load i32, ptr %1, align 4, !dbg !32
  ret i32 %2, !dbg !33
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_err_strerror(i32 noundef %0) #2 !dbg !34 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !39, metadata !DIExpression()), !dbg !40
  %4 = load i32, ptr %3, align 4, !dbg !41
  switch i32 %4, label %7 [
    i32 156384765, label %5
    i32 156384766, label %6
  ], !dbg !42

5:                                                ; preds = %1
  store ptr @.str, ptr %2, align 8, !dbg !43
  br label %10, !dbg !43

6:                                                ; preds = %1
  store ptr @.str.1, ptr %2, align 8, !dbg !45
  br label %10, !dbg !45

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4, !dbg !46
  %9 = call ptr @strerror(i32 noundef %8) #8, !dbg !47
  store ptr %9, ptr %2, align 8, !dbg !48
  br label %10, !dbg !48

10:                                               ; preds = %7, %6, %5
  %11 = load ptr, ptr %2, align 8, !dbg !49
  ret ptr %11, !dbg !49
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #5

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/utils/err.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "f771224fb2f9514caea9705933812819")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 31)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 44)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !13, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !14, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "src/utils/err.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "f771224fb2f9514caea9705933812819")
!14 = !{!0, !7}
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 16.0.0"}
!23 = distinct !DISubprogram(name: "nn_err_abort", scope: !2, file: !2, line: 31, type: !24, scopeLine: 32, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{null}
!26 = !{}
!27 = !DILocation(line: 33, column: 5, scope: !23)
!28 = distinct !DISubprogram(name: "nn_err_errno", scope: !2, file: !2, line: 36, type: !29, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !26)
!29 = !DISubroutineType(types: !30)
!30 = !{!31}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DILocation(line: 38, column: 12, scope: !28)
!33 = !DILocation(line: 38, column: 5, scope: !28)
!34 = distinct !DISubprogram(name: "nn_err_strerror", scope: !2, file: !2, line: 41, type: !35, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !26)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !31}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!39 = !DILocalVariable(name: "errnum", arg: 1, scope: !34, file: !2, line: 41, type: !31)
!40 = !DILocation(line: 41, column: 34, scope: !34)
!41 = !DILocation(line: 43, column: 13, scope: !34)
!42 = !DILocation(line: 43, column: 5, scope: !34)
!43 = !DILocation(line: 89, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !34, file: !2, line: 43, column: 21)
!45 = !DILocation(line: 91, column: 9, scope: !44)
!46 = !DILocation(line: 97, column: 26, scope: !44)
!47 = !DILocation(line: 97, column: 16, scope: !44)
!48 = !DILocation(line: 97, column: 9, scope: !44)
!49 = !DILocation(line: 102, column: 1, scope: !34)
