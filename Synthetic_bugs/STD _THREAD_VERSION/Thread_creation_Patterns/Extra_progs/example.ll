; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Thread_creation_Patterns/example.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Thread_creation_Patterns/example.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3abcv() #0 !dbg !8 {
entry:
  %z = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %z, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 0, i32* %z, align 4, !dbg !15
  %0 = load i32, i32* %z, align 4, !dbg !16
  %cmp = icmp eq i32 %0, 1, !dbg !18
  br i1 %cmp, label %if.then, label %if.end, !dbg !19

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %x, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 8, i32* %x, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %y, metadata !23, metadata !DIExpression()), !dbg !25
  store i32 100, i32* %y, align 4, !dbg !25
  br label %if.end, !dbg !26

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %z, align 4, !dbg !27
  ret i32 %1, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !29 {
entry:
  %a = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !30, metadata !DIExpression()), !dbg !31
  %call = call noundef i32 @_Z3abcv(), !dbg !32
  store i32 %call, i32* %a, align 4, !dbg !33
  ret i32 0, !dbg !34
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Thread_creation_Patterns/example.cpp", directory: "/home/cs22mtech12008/llvm-project/build/bin", checksumkind: CSK_MD5, checksum: "7d4861c94fbc13be18d95562f9f80785")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!8 = distinct !DISubprogram(name: "abc", linkageName: "_Z3abcv", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "Reproduced_UAF/Thread_creation_Patterns/example.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "7d4861c94fbc13be18d95562f9f80785")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "z", scope: !8, file: !9, line: 2, type: !12)
!15 = !DILocation(line: 2, column: 9, scope: !8)
!16 = !DILocation(line: 3, column: 8, scope: !17)
!17 = distinct !DILexicalBlock(scope: !8, file: !9, line: 3, column: 8)
!18 = !DILocation(line: 3, column: 9, scope: !17)
!19 = !DILocation(line: 3, column: 8, scope: !8)
!20 = !DILocalVariable(name: "x", scope: !21, file: !9, line: 5, type: !12)
!21 = distinct !DILexicalBlock(scope: !17, file: !9, line: 4, column: 5)
!22 = !DILocation(line: 5, column: 13, scope: !21)
!23 = !DILocalVariable(name: "y", scope: !24, file: !9, line: 7, type: !12)
!24 = distinct !DILexicalBlock(scope: !21, file: !9, line: 6, column: 9)
!25 = !DILocation(line: 7, column: 17, scope: !24)
!26 = !DILocation(line: 13, column: 5, scope: !21)
!27 = !DILocation(line: 15, column: 12, scope: !8)
!28 = !DILocation(line: 15, column: 5, scope: !8)
!29 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 17, type: !10, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!30 = !DILocalVariable(name: "a", scope: !29, file: !9, line: 18, type: !12)
!31 = !DILocation(line: 18, column: 9, scope: !29)
!32 = !DILocation(line: 19, column: 7, scope: !29)
!33 = !DILocation(line: 19, column: 6, scope: !29)
!34 = !DILocation(line: 21, column: 1, scope: !29)
