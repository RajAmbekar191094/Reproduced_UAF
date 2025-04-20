; ModuleID = './src/transports/utils/port.c'
source_filename = "./src/transports/utils/port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_port_resolve(ptr noundef %0, i64 noundef %1) #0 !dbg !10 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !22, metadata !DIExpression()), !dbg !23
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata ptr %6, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata ptr %7, metadata !28, metadata !DIExpression()), !dbg !29
  store i32 0, ptr %6, align 4, !dbg !30
  store i64 0, ptr %7, align 8, !dbg !31
  br label %8, !dbg !33

8:                                                ; preds = %42, %2
  %9 = load i64, ptr %7, align 8, !dbg !34
  %10 = load i64, ptr %5, align 8, !dbg !36
  %11 = icmp ne i64 %9, %10, !dbg !37
  br i1 %11, label %12, label %45, !dbg !38

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !dbg !39
  %14 = load i64, ptr %7, align 8, !dbg !42
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !39
  %16 = load i8, ptr %15, align 1, !dbg !39
  %17 = sext i8 %16 to i32, !dbg !39
  %18 = icmp slt i32 %17, 48, !dbg !43
  br i1 %18, label %26, label %19, !dbg !44

19:                                               ; preds = %12
  %20 = load ptr, ptr %4, align 8, !dbg !45
  %21 = load i64, ptr %7, align 8, !dbg !46
  %22 = getelementptr inbounds i8, ptr %20, i64 %21, !dbg !45
  %23 = load i8, ptr %22, align 1, !dbg !45
  %24 = sext i8 %23 to i32, !dbg !45
  %25 = icmp sgt i32 %24, 57, !dbg !47
  br i1 %25, label %26, label %27, !dbg !48

26:                                               ; preds = %19, %12
  store i32 -22, ptr %3, align 4, !dbg !49
  br label %51, !dbg !49

27:                                               ; preds = %19
  %28 = load i32, ptr %6, align 4, !dbg !50
  %29 = mul nsw i32 %28, 10, !dbg !50
  store i32 %29, ptr %6, align 4, !dbg !50
  %30 = load ptr, ptr %4, align 8, !dbg !51
  %31 = load i64, ptr %7, align 8, !dbg !52
  %32 = getelementptr inbounds i8, ptr %30, i64 %31, !dbg !51
  %33 = load i8, ptr %32, align 1, !dbg !51
  %34 = sext i8 %33 to i32, !dbg !51
  %35 = sub nsw i32 %34, 48, !dbg !53
  %36 = load i32, ptr %6, align 4, !dbg !54
  %37 = add nsw i32 %36, %35, !dbg !54
  store i32 %37, ptr %6, align 4, !dbg !54
  %38 = load i32, ptr %6, align 4, !dbg !55
  %39 = icmp sgt i32 %38, 65535, !dbg !57
  br i1 %39, label %40, label %41, !dbg !58

40:                                               ; preds = %27
  store i32 -22, ptr %3, align 4, !dbg !59
  br label %51, !dbg !59

41:                                               ; preds = %27
  br label %42, !dbg !60

42:                                               ; preds = %41
  %43 = load i64, ptr %7, align 8, !dbg !61
  %44 = add i64 %43, 1, !dbg !61
  store i64 %44, ptr %7, align 8, !dbg !61
  br label %8, !dbg !62, !llvm.loop !63

45:                                               ; preds = %8
  %46 = load i32, ptr %6, align 4, !dbg !66
  %47 = icmp eq i32 %46, 0, !dbg !68
  br i1 %47, label %48, label %49, !dbg !69

48:                                               ; preds = %45
  store i32 -22, ptr %3, align 4, !dbg !70
  br label %51, !dbg !70

49:                                               ; preds = %45
  %50 = load i32, ptr %6, align 4, !dbg !71
  store i32 %50, ptr %3, align 4, !dbg !72
  br label %51, !dbg !72

51:                                               ; preds = %49, %48, %40, %26
  %52 = load i32, ptr %3, align 4, !dbg !73
  ret i32 %52, !dbg !73
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/transports/utils/port.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "07bbf1a3e047107c2834b59f999c849a")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.0"}
!10 = distinct !DISubprogram(name: "nn_port_resolve", scope: !11, file: !11, line: 27, type: !12, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!11 = !DIFile(filename: "./src/transports/utils/port.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "07bbf1a3e047107c2834b59f999c849a")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !18}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 46, baseType: !20)
!19 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!21 = !{}
!22 = !DILocalVariable(name: "port", arg: 1, scope: !10, file: !11, line: 27, type: !15)
!23 = !DILocation(line: 27, column: 34, scope: !10)
!24 = !DILocalVariable(name: "portlen", arg: 2, scope: !10, file: !11, line: 27, type: !18)
!25 = !DILocation(line: 27, column: 47, scope: !10)
!26 = !DILocalVariable(name: "res", scope: !10, file: !11, line: 29, type: !14)
!27 = !DILocation(line: 29, column: 9, scope: !10)
!28 = !DILocalVariable(name: "i", scope: !10, file: !11, line: 30, type: !18)
!29 = !DILocation(line: 30, column: 12, scope: !10)
!30 = !DILocation(line: 32, column: 9, scope: !10)
!31 = !DILocation(line: 33, column: 12, scope: !32)
!32 = distinct !DILexicalBlock(scope: !10, file: !11, line: 33, column: 5)
!33 = !DILocation(line: 33, column: 10, scope: !32)
!34 = !DILocation(line: 33, column: 17, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !11, line: 33, column: 5)
!36 = !DILocation(line: 33, column: 22, scope: !35)
!37 = !DILocation(line: 33, column: 19, scope: !35)
!38 = !DILocation(line: 33, column: 5, scope: !32)
!39 = !DILocation(line: 34, column: 13, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !11, line: 34, column: 13)
!41 = distinct !DILexicalBlock(scope: !35, file: !11, line: 33, column: 36)
!42 = !DILocation(line: 34, column: 19, scope: !40)
!43 = !DILocation(line: 34, column: 22, scope: !40)
!44 = !DILocation(line: 34, column: 28, scope: !40)
!45 = !DILocation(line: 34, column: 31, scope: !40)
!46 = !DILocation(line: 34, column: 37, scope: !40)
!47 = !DILocation(line: 34, column: 40, scope: !40)
!48 = !DILocation(line: 34, column: 13, scope: !41)
!49 = !DILocation(line: 35, column: 13, scope: !40)
!50 = !DILocation(line: 36, column: 13, scope: !41)
!51 = !DILocation(line: 37, column: 16, scope: !41)
!52 = !DILocation(line: 37, column: 22, scope: !41)
!53 = !DILocation(line: 37, column: 25, scope: !41)
!54 = !DILocation(line: 37, column: 13, scope: !41)
!55 = !DILocation(line: 38, column: 13, scope: !56)
!56 = distinct !DILexicalBlock(scope: !41, file: !11, line: 38, column: 13)
!57 = !DILocation(line: 38, column: 17, scope: !56)
!58 = !DILocation(line: 38, column: 13, scope: !41)
!59 = !DILocation(line: 39, column: 13, scope: !56)
!60 = !DILocation(line: 40, column: 5, scope: !41)
!61 = !DILocation(line: 33, column: 31, scope: !35)
!62 = !DILocation(line: 33, column: 5, scope: !35)
!63 = distinct !{!63, !38, !64, !65}
!64 = !DILocation(line: 40, column: 5, scope: !32)
!65 = !{!"llvm.loop.mustprogress"}
!66 = !DILocation(line: 44, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !10, file: !11, line: 44, column: 9)
!68 = !DILocation(line: 44, column: 13, scope: !67)
!69 = !DILocation(line: 44, column: 9, scope: !10)
!70 = !DILocation(line: 45, column: 9, scope: !67)
!71 = !DILocation(line: 47, column: 12, scope: !10)
!72 = !DILocation(line: 47, column: 5, scope: !10)
!73 = !DILocation(line: 48, column: 1, scope: !10)
