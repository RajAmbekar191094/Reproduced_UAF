; ModuleID = '/home/raj/lwan/common/reallocarray.c'
source_filename = "/home/raj/lwan/common/reallocarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 !dbg !15 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !20, metadata !DIExpression()), !dbg !21
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !22, metadata !DIExpression()), !dbg !23
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata ptr %8, metadata !26, metadata !DIExpression()), !dbg !27
  %9 = load i64, ptr %6, align 8, !dbg !28
  %10 = load i64, ptr %7, align 8, !dbg !28
  %11 = call zeroext i1 @umull_overflow(i64 noundef %9, i64 noundef %10, ptr noundef %8), !dbg !28
  br i1 %11, label %12, label %14, !dbg !30

12:                                               ; preds = %3
  %13 = call ptr @__errno_location() #4, !dbg !31
  store i32 12, ptr %13, align 4, !dbg !33
  store ptr null, ptr %4, align 8, !dbg !34
  br label %18, !dbg !34

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8, !dbg !35
  %16 = load i64, ptr %8, align 8, !dbg !36
  %17 = call ptr @realloc(ptr noundef %15, i64 noundef %16) #5, !dbg !37
  store ptr %17, ptr %4, align 8, !dbg !38
  br label %18, !dbg !38

18:                                               ; preds = %14, %12
  %19 = load ptr, ptr %4, align 8, !dbg !39
  ret ptr %19, !dbg !39
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @umull_overflow(i64 noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !40 {
  %4 = alloca i1, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store i64 %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !45, metadata !DIExpression()), !dbg !46
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !47, metadata !DIExpression()), !dbg !48
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !49, metadata !DIExpression()), !dbg !50
  %8 = load i64, ptr %5, align 8, !dbg !51
  %9 = icmp uge i64 %8, 4294967296, !dbg !53
  br i1 %9, label %13, label %10, !dbg !54

10:                                               ; preds = %3
  %11 = load i64, ptr %6, align 8, !dbg !55
  %12 = icmp uge i64 %11, 4294967296, !dbg !56
  br i1 %12, label %13, label %22, !dbg !57

13:                                               ; preds = %10, %3
  %14 = load i64, ptr %5, align 8, !dbg !58
  %15 = icmp ugt i64 %14, 0, !dbg !59
  br i1 %15, label %16, label %22, !dbg !60

16:                                               ; preds = %13
  %17 = load i64, ptr %5, align 8, !dbg !61
  %18 = udiv i64 -1, %17, !dbg !62
  %19 = load i64, ptr %6, align 8, !dbg !63
  %20 = icmp ult i64 %18, %19, !dbg !64
  br i1 %20, label %21, label %22, !dbg !65

21:                                               ; preds = %16
  store i1 true, ptr %4, align 1, !dbg !66
  br label %27, !dbg !66

22:                                               ; preds = %16, %13, %10
  %23 = load i64, ptr %5, align 8, !dbg !67
  %24 = load i64, ptr %6, align 8, !dbg !68
  %25 = mul i64 %23, %24, !dbg !69
  %26 = load ptr, ptr %7, align 8, !dbg !70
  store i64 %25, ptr %26, align 8, !dbg !71
  store i1 false, ptr %4, align 1, !dbg !72
  br label %27, !dbg !72

27:                                               ; preds = %22, %21
  %28 = load i1, ptr %4, align 1, !dbg !73
  ret i1 %28, !dbg !73
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) }
attributes #5 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/raj/lwan/common/reallocarray.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "72caf594d7fe0d89f4073c86d2b69ce6")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 46, baseType: !6)
!5 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!6 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 16.0.0"}
!15 = distinct !DISubprogram(name: "reallocarray", scope: !16, file: !16, line: 45, type: !17, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!16 = !DIFile(filename: "common/reallocarray.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "72caf594d7fe0d89f4073c86d2b69ce6")
!17 = !DISubroutineType(types: !18)
!18 = !{!3, !3, !4, !4}
!19 = !{}
!20 = !DILocalVariable(name: "optr", arg: 1, scope: !15, file: !16, line: 45, type: !3)
!21 = !DILocation(line: 45, column: 20, scope: !15)
!22 = !DILocalVariable(name: "nmemb", arg: 2, scope: !15, file: !16, line: 45, type: !4)
!23 = !DILocation(line: 45, column: 33, scope: !15)
!24 = !DILocalVariable(name: "size", arg: 3, scope: !15, file: !16, line: 45, type: !4)
!25 = !DILocation(line: 45, column: 47, scope: !15)
!26 = !DILocalVariable(name: "total_size", scope: !15, file: !16, line: 47, type: !4)
!27 = !DILocation(line: 47, column: 12, scope: !15)
!28 = !DILocation(line: 48, column: 9, scope: !29)
!29 = distinct !DILexicalBlock(scope: !15, file: !16, line: 48, column: 9)
!30 = !DILocation(line: 48, column: 9, scope: !15)
!31 = !DILocation(line: 49, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !16, line: 48, column: 61)
!33 = !DILocation(line: 49, column: 15, scope: !32)
!34 = !DILocation(line: 50, column: 9, scope: !32)
!35 = !DILocation(line: 52, column: 20, scope: !15)
!36 = !DILocation(line: 52, column: 26, scope: !15)
!37 = !DILocation(line: 52, column: 12, scope: !15)
!38 = !DILocation(line: 52, column: 5, scope: !15)
!39 = !DILocation(line: 53, column: 1, scope: !15)
!40 = distinct !DISubprogram(name: "umull_overflow", scope: !16, file: !16, line: 33, type: !41, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !19)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !4, !4, !44}
!43 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!45 = !DILocalVariable(name: "a", arg: 1, scope: !40, file: !16, line: 33, type: !4)
!46 = !DILocation(line: 33, column: 42, scope: !40)
!47 = !DILocalVariable(name: "b", arg: 2, scope: !40, file: !16, line: 33, type: !4)
!48 = !DILocation(line: 33, column: 52, scope: !40)
!49 = !DILocalVariable(name: "out", arg: 3, scope: !40, file: !16, line: 33, type: !44)
!50 = !DILocation(line: 33, column: 63, scope: !40)
!51 = !DILocation(line: 35, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !40, file: !16, line: 35, column: 9)
!53 = !DILocation(line: 35, column: 12, scope: !52)
!54 = !DILocation(line: 35, column: 31, scope: !52)
!55 = !DILocation(line: 35, column: 34, scope: !52)
!56 = !DILocation(line: 35, column: 36, scope: !52)
!57 = !DILocation(line: 35, column: 56, scope: !52)
!58 = !DILocation(line: 35, column: 59, scope: !52)
!59 = !DILocation(line: 35, column: 61, scope: !52)
!60 = !DILocation(line: 35, column: 65, scope: !52)
!61 = !DILocation(line: 35, column: 79, scope: !52)
!62 = !DILocation(line: 35, column: 77, scope: !52)
!63 = !DILocation(line: 35, column: 83, scope: !52)
!64 = !DILocation(line: 35, column: 81, scope: !52)
!65 = !DILocation(line: 35, column: 9, scope: !40)
!66 = !DILocation(line: 36, column: 9, scope: !52)
!67 = !DILocation(line: 37, column: 12, scope: !40)
!68 = !DILocation(line: 37, column: 16, scope: !40)
!69 = !DILocation(line: 37, column: 14, scope: !40)
!70 = !DILocation(line: 37, column: 6, scope: !40)
!71 = !DILocation(line: 37, column: 10, scope: !40)
!72 = !DILocation(line: 38, column: 5, scope: !40)
!73 = !DILocation(line: 39, column: 1, scope: !40)
