; ModuleID = './src/utils/random.c'
source_filename = "./src/utils/random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nn_random_state = internal global i64 0, align 8, !dbg !0
@.str = private unnamed_addr constant [9 x i8] c"\FA\9B#\E3\07\CCa\1F\00", align 1, !dbg !15

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_random_seed() #0 !dbg !30 {
  %1 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !34, metadata !DIExpression()), !dbg !35
  %2 = call i32 @getpid() #5, !dbg !36
  %3 = sext i32 %2 to i64, !dbg !37
  store i64 %3, ptr %1, align 8, !dbg !38
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 @nn_random_state, ptr align 1 @.str, i64 8, i1 false), !dbg !39
  %4 = load i64, ptr %1, align 8, !dbg !40
  %5 = call i64 (...) @nn_clock_timestamp(), !dbg !41
  %6 = add i64 %4, %5, !dbg !42
  %7 = load i64, ptr @nn_random_state, align 8, !dbg !43
  %8 = xor i64 %7, %6, !dbg !43
  store i64 %8, ptr @nn_random_state, align 8, !dbg !43
  ret void, !dbg !44
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @getpid() #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i64 @nn_clock_timestamp(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_random_generate(ptr noundef %0, i64 noundef %1) #0 !dbg !45 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !51, metadata !DIExpression()), !dbg !52
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata ptr %5, metadata !55, metadata !DIExpression()), !dbg !56
  %6 = load ptr, ptr %3, align 8, !dbg !57
  store ptr %6, ptr %5, align 8, !dbg !58
  br label %7, !dbg !59

7:                                                ; preds = %2, %25
  %8 = load i64, ptr @nn_random_state, align 8, !dbg !60
  %9 = mul i64 %8, 1103515245, !dbg !62
  %10 = add i64 %9, 12345, !dbg !63
  store i64 %10, ptr @nn_random_state, align 8, !dbg !64
  %11 = load ptr, ptr %5, align 8, !dbg !65
  %12 = load i64, ptr %4, align 8, !dbg !66
  %13 = icmp ugt i64 %12, 8, !dbg !67
  br i1 %13, label %14, label %15, !dbg !66

14:                                               ; preds = %7
  br label %17, !dbg !66

15:                                               ; preds = %7
  %16 = load i64, ptr %4, align 8, !dbg !68
  br label %17, !dbg !66

17:                                               ; preds = %15, %14
  %18 = phi i64 [ 8, %14 ], [ %16, %15 ], !dbg !66
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 8 @nn_random_state, i64 %18, i1 false), !dbg !69
  %19 = load i64, ptr %4, align 8, !dbg !70
  %20 = icmp ule i64 %19, 8, !dbg !70
  %21 = zext i1 %20 to i32, !dbg !70
  %22 = sext i32 %21 to i64, !dbg !70
  %23 = icmp ne i64 %22, 0, !dbg !70
  br i1 %23, label %24, label %25, !dbg !72

24:                                               ; preds = %17
  ret void, !dbg !73

25:                                               ; preds = %17
  %26 = load i64, ptr %4, align 8, !dbg !74
  %27 = sub i64 %26, 8, !dbg !74
  store i64 %27, ptr %4, align 8, !dbg !74
  %28 = load ptr, ptr %5, align 8, !dbg !75
  %29 = getelementptr inbounds i8, ptr %28, i64 8, !dbg !75
  store ptr %29, ptr %5, align 8, !dbg !75
  br label %7, !dbg !59, !llvm.loop !76
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_random_state", scope: !2, file: !17, line: 36, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/utils/random.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "36a8a6b54b31c68ed49b348b8e53c3a0")
!4 = !{!5, !10}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 27, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !8, line: 45, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!9 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 24, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 38, baseType: !13)
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !{!15, !0}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !17, line: 50, type: !18, isLocal: true, isDefinition: true)
!17 = !DIFile(filename: "./src/utils/random.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "36a8a6b54b31c68ed49b348b8e53c3a0")
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 72, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 9)
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 8, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 2}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 16.0.0"}
!30 = distinct !DISubprogram(name: "nn_random_seed", scope: !17, file: !17, line: 38, type: !31, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{null}
!33 = !{}
!34 = !DILocalVariable(name: "pid", scope: !30, file: !17, line: 40, type: !5)
!35 = !DILocation(line: 40, column: 14, scope: !30)
!36 = !DILocation(line: 45, column: 22, scope: !30)
!37 = !DILocation(line: 45, column: 11, scope: !30)
!38 = !DILocation(line: 45, column: 9, scope: !30)
!39 = !DILocation(line: 50, column: 5, scope: !30)
!40 = !DILocation(line: 51, column: 24, scope: !30)
!41 = !DILocation(line: 51, column: 30, scope: !30)
!42 = !DILocation(line: 51, column: 28, scope: !30)
!43 = !DILocation(line: 51, column: 21, scope: !30)
!44 = !DILocation(line: 52, column: 1, scope: !30)
!45 = distinct !DISubprogram(name: "nn_random_generate", scope: !17, file: !17, line: 54, type: !46, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !33)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !49}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 46, baseType: !9)
!50 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!51 = !DILocalVariable(name: "buf", arg: 1, scope: !45, file: !17, line: 54, type: !48)
!52 = !DILocation(line: 54, column: 32, scope: !45)
!53 = !DILocalVariable(name: "len", arg: 2, scope: !45, file: !17, line: 54, type: !49)
!54 = !DILocation(line: 54, column: 44, scope: !45)
!55 = !DILocalVariable(name: "pos", scope: !45, file: !17, line: 56, type: !10)
!56 = !DILocation(line: 56, column: 14, scope: !45)
!57 = !DILocation(line: 58, column: 22, scope: !45)
!58 = !DILocation(line: 58, column: 9, scope: !45)
!59 = !DILocation(line: 60, column: 5, scope: !45)
!60 = !DILocation(line: 63, column: 27, scope: !61)
!61 = distinct !DILexicalBlock(scope: !45, file: !17, line: 60, column: 15)
!62 = !DILocation(line: 63, column: 43, scope: !61)
!63 = !DILocation(line: 63, column: 56, scope: !61)
!64 = !DILocation(line: 63, column: 25, scope: !61)
!65 = !DILocation(line: 66, column: 17, scope: !61)
!66 = !DILocation(line: 66, column: 40, scope: !61)
!67 = !DILocation(line: 66, column: 44, scope: !61)
!68 = !DILocation(line: 66, column: 54, scope: !61)
!69 = !DILocation(line: 66, column: 9, scope: !61)
!70 = !DILocation(line: 67, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !61, file: !17, line: 67, column: 13)
!72 = !DILocation(line: 67, column: 13, scope: !61)
!73 = !DILocation(line: 68, column: 13, scope: !71)
!74 = !DILocation(line: 69, column: 13, scope: !61)
!75 = !DILocation(line: 70, column: 13, scope: !61)
!76 = distinct !{!76, !59, !77}
!77 = !DILocation(line: 71, column: 5, scope: !45)
