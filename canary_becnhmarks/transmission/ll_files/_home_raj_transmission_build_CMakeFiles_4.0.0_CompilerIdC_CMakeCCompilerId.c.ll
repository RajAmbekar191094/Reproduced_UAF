; ModuleID = '/home/raj/transmission/build/CMakeFiles/4.0.0/CompilerIdC/CMakeCCompilerId.c'
source_filename = "/home/raj/transmission/build/CMakeFiles/4.0.0/CompilerIdC/CMakeCCompilerId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"INFO:compiler[Clang]\00", align 1, !dbg !0
@info_compiler = dso_local global ptr @.str, align 8, !dbg !7
@info_version = dso_local constant [50 x i8] c"INFO:compiler_version[00000016.00000000.00000000]\00", align 16, !dbg !12
@.str.1 = private unnamed_addr constant [21 x i8] c"INFO:platform[Linux]\00", align 1, !dbg !18
@info_platform = dso_local global ptr @.str.1, align 8, !dbg !20
@.str.2 = private unnamed_addr constant [12 x i8] c"INFO:arch[]\00", align 1, !dbg !23
@info_arch = dso_local global ptr @.str.2, align 8, !dbg !28
@.str.3 = private unnamed_addr constant [26 x i8] c"INFO:standard_default[17]\00", align 1, !dbg !30
@info_language_standard_default = dso_local global ptr @.str.3, align 8, !dbg !35
@.str.4 = private unnamed_addr constant [28 x i8] c"INFO:extensions_default[ON]\00", align 1, !dbg !37
@info_language_extensions_default = dso_local global ptr @.str.4, align 8, !dbg !42

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !52 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !59, metadata !DIExpression()), !dbg !60
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata ptr %6, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 0, ptr %6, align 4, !dbg !64
  %7 = load ptr, ptr @info_compiler, align 8, !dbg !65
  %8 = load i32, ptr %4, align 4, !dbg !66
  %9 = sext i32 %8 to i64, !dbg !65
  %10 = getelementptr inbounds i8, ptr %7, i64 %9, !dbg !65
  %11 = load i8, ptr %10, align 1, !dbg !65
  %12 = sext i8 %11 to i32, !dbg !65
  %13 = load i32, ptr %6, align 4, !dbg !67
  %14 = add nsw i32 %13, %12, !dbg !67
  store i32 %14, ptr %6, align 4, !dbg !67
  %15 = load ptr, ptr @info_platform, align 8, !dbg !68
  %16 = load i32, ptr %4, align 4, !dbg !69
  %17 = sext i32 %16 to i64, !dbg !68
  %18 = getelementptr inbounds i8, ptr %15, i64 %17, !dbg !68
  %19 = load i8, ptr %18, align 1, !dbg !68
  %20 = sext i8 %19 to i32, !dbg !68
  %21 = load i32, ptr %6, align 4, !dbg !70
  %22 = add nsw i32 %21, %20, !dbg !70
  store i32 %22, ptr %6, align 4, !dbg !70
  %23 = load ptr, ptr @info_arch, align 8, !dbg !71
  %24 = load i32, ptr %4, align 4, !dbg !72
  %25 = sext i32 %24 to i64, !dbg !71
  %26 = getelementptr inbounds i8, ptr %23, i64 %25, !dbg !71
  %27 = load i8, ptr %26, align 1, !dbg !71
  %28 = sext i8 %27 to i32, !dbg !71
  %29 = load i32, ptr %6, align 4, !dbg !73
  %30 = add nsw i32 %29, %28, !dbg !73
  store i32 %30, ptr %6, align 4, !dbg !73
  %31 = load i32, ptr %4, align 4, !dbg !74
  %32 = sext i32 %31 to i64, !dbg !75
  %33 = getelementptr inbounds [50 x i8], ptr @info_version, i64 0, i64 %32, !dbg !75
  %34 = load i8, ptr %33, align 1, !dbg !75
  %35 = sext i8 %34 to i32, !dbg !75
  %36 = load i32, ptr %6, align 4, !dbg !76
  %37 = add nsw i32 %36, %35, !dbg !76
  store i32 %37, ptr %6, align 4, !dbg !76
  %38 = load ptr, ptr @info_language_standard_default, align 8, !dbg !77
  %39 = load i32, ptr %4, align 4, !dbg !78
  %40 = sext i32 %39 to i64, !dbg !77
  %41 = getelementptr inbounds i8, ptr %38, i64 %40, !dbg !77
  %42 = load i8, ptr %41, align 1, !dbg !77
  %43 = sext i8 %42 to i32, !dbg !77
  %44 = load i32, ptr %6, align 4, !dbg !79
  %45 = add nsw i32 %44, %43, !dbg !79
  store i32 %45, ptr %6, align 4, !dbg !79
  %46 = load ptr, ptr @info_language_extensions_default, align 8, !dbg !80
  %47 = load i32, ptr %4, align 4, !dbg !81
  %48 = sext i32 %47 to i64, !dbg !80
  %49 = getelementptr inbounds i8, ptr %46, i64 %48, !dbg !80
  %50 = load i8, ptr %49, align 1, !dbg !80
  %51 = sext i8 %50 to i32, !dbg !80
  %52 = load i32, ptr %6, align 4, !dbg !82
  %53 = add nsw i32 %52, %51, !dbg !82
  store i32 %53, ptr %6, align 4, !dbg !82
  %54 = load ptr, ptr %5, align 8, !dbg !83
  %55 = load i32, ptr %6, align 4, !dbg !84
  ret i32 %55, !dbg !85
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 456, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "CMakeFiles/4.0.0/CompilerIdC/CMakeCCompilerId.c", directory: "/home/raj/transmission/build", checksumkind: CSK_MD5, checksum: "78c2b021e3060ed7ecd641412898ecb0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "info_compiler", scope: !9, file: !2, line: 456, type: !22, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !10, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !11, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/raj/transmission/build/CMakeFiles/4.0.0/CompilerIdC/CMakeCCompilerId.c", directory: "/home/raj/transmission/build", checksumkind: CSK_MD5, checksum: "78c2b021e3060ed7ecd641412898ecb0")
!11 = !{!0, !7, !12, !18, !20, !23, !28, !30, !35, !37, !42}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "info_version", scope: !9, file: !2, line: 777, type: !14, isLocal: false, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 400, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 50)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 826, type: !3, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "info_platform", scope: !9, file: !2, line: 826, type: !22, isLocal: false, isDefinition: true)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 827, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 12)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "info_arch", scope: !9, file: !2, line: 827, type: !22, isLocal: false, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 858, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 26)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "info_language_standard_default", scope: !9, file: !2, line: 857, type: !22, isLocal: false, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 860, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 28)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "info_language_extensions_default", scope: !9, file: !2, line: 860, type: !22, isLocal: false, isDefinition: true)
!44 = !{i32 7, !"Dwarf Version", i32 5}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 4}
!47 = !{i32 8, !"PIC Level", i32 2}
!48 = !{i32 7, !"PIE Level", i32 2}
!49 = !{i32 7, !"uwtable", i32 2}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 16.0.0"}
!52 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 878, type: !53, scopeLine: 880, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !58)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !55, !56}
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!58 = !{}
!59 = !DILocalVariable(name: "argc", arg: 1, scope: !52, file: !2, line: 878, type: !55)
!60 = !DILocation(line: 878, column: 14, scope: !52)
!61 = !DILocalVariable(name: "argv", arg: 2, scope: !52, file: !2, line: 878, type: !56)
!62 = !DILocation(line: 878, column: 26, scope: !52)
!63 = !DILocalVariable(name: "require", scope: !52, file: !2, line: 881, type: !55)
!64 = !DILocation(line: 881, column: 7, scope: !52)
!65 = !DILocation(line: 882, column: 14, scope: !52)
!66 = !DILocation(line: 882, column: 28, scope: !52)
!67 = !DILocation(line: 882, column: 11, scope: !52)
!68 = !DILocation(line: 883, column: 14, scope: !52)
!69 = !DILocation(line: 883, column: 28, scope: !52)
!70 = !DILocation(line: 883, column: 11, scope: !52)
!71 = !DILocation(line: 884, column: 14, scope: !52)
!72 = !DILocation(line: 884, column: 24, scope: !52)
!73 = !DILocation(line: 884, column: 11, scope: !52)
!74 = !DILocation(line: 886, column: 27, scope: !52)
!75 = !DILocation(line: 886, column: 14, scope: !52)
!76 = !DILocation(line: 886, column: 11, scope: !52)
!77 = !DILocation(line: 900, column: 14, scope: !52)
!78 = !DILocation(line: 900, column: 45, scope: !52)
!79 = !DILocation(line: 900, column: 11, scope: !52)
!80 = !DILocation(line: 901, column: 14, scope: !52)
!81 = !DILocation(line: 901, column: 47, scope: !52)
!82 = !DILocation(line: 901, column: 11, scope: !52)
!83 = !DILocation(line: 902, column: 9, scope: !52)
!84 = !DILocation(line: 903, column: 10, scope: !52)
!85 = !DILocation(line: 903, column: 3, scope: !52)
