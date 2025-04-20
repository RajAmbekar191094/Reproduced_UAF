; ModuleID = './src/utils/glock.c'
source_filename = "./src/utils/glock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@nn_glock_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !0
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [20 x i8] c"./src/utils/glock.c\00", align 1, !dbg !14

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_glock_lock() #0 !dbg !58 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !62, metadata !DIExpression()), !dbg !63
  %2 = call i32 @pthread_mutex_lock(ptr noundef @nn_glock_mutex) #5, !dbg !64
  store i32 %2, ptr %1, align 4, !dbg !65
  br label %3, !dbg !66

3:                                                ; preds = %0
  %4 = load i32, ptr %1, align 4, !dbg !67
  %5 = icmp eq i32 %4, 0, !dbg !67
  %6 = xor i1 %5, true, !dbg !67
  %7 = zext i1 %6 to i32, !dbg !67
  %8 = sext i32 %7 to i64, !dbg !67
  %9 = icmp ne i64 %8, 0, !dbg !67
  br i1 %9, label %10, label %16, !dbg !70

10:                                               ; preds = %3
  %11 = load ptr, ptr @stderr, align 8, !dbg !71
  %12 = load i32, ptr %1, align 4, !dbg !71
  %13 = call ptr @nn_err_strerror(i32 noundef %12), !dbg !71
  %14 = load i32, ptr %1, align 4, !dbg !71
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str, ptr noundef %13, i32 noundef %14, ptr noundef @.str.1, i32 noundef 64), !dbg !71
  call void @nn_err_abort() #6, !dbg !71
  unreachable, !dbg !71

16:                                               ; preds = %3
  br label %17, !dbg !70

17:                                               ; preds = %16
  ret void, !dbg !73
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare ptr @nn_err_strerror(i32 noundef) #3

; Function Attrs: noreturn
declare void @nn_err_abort() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_glock_unlock() #0 !dbg !74 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !75, metadata !DIExpression()), !dbg !76
  %2 = call i32 @pthread_mutex_unlock(ptr noundef @nn_glock_mutex) #5, !dbg !77
  store i32 %2, ptr %1, align 4, !dbg !78
  br label %3, !dbg !79

3:                                                ; preds = %0
  %4 = load i32, ptr %1, align 4, !dbg !80
  %5 = icmp eq i32 %4, 0, !dbg !80
  %6 = xor i1 %5, true, !dbg !80
  %7 = zext i1 %6 to i32, !dbg !80
  %8 = sext i32 %7 to i64, !dbg !80
  %9 = icmp ne i64 %8, 0, !dbg !80
  br i1 %9, label %10, label %16, !dbg !83

10:                                               ; preds = %3
  %11 = load ptr, ptr @stderr, align 8, !dbg !84
  %12 = load i32, ptr %1, align 4, !dbg !84
  %13 = call ptr @nn_err_strerror(i32 noundef %12), !dbg !84
  %14 = load i32, ptr %1, align 4, !dbg !84
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str, ptr noundef %13, i32 noundef %14, ptr noundef @.str.1, i32 noundef 72), !dbg !84
  call void @nn_err_abort() #6, !dbg !84
  unreachable, !dbg !84

16:                                               ; preds = %3
  br label %17, !dbg !83

17:                                               ; preds = %16
  ret void, !dbg !86
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_glock_mutex", scope: !2, file: !9, line: 57, type: !19, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/utils/glock.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "504379489a48d04cbabe76c7112a0df2")
!4 = !{!5}
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !14, !0}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 64, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./src/utils/glock.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "504379489a48d04cbabe76c7112a0df2")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 136, elements: !12)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !{!13}
!13 = !DISubrange(count: 17)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !9, line: 64, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 20)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !20, line: 72, baseType: !21)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!21 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !20, line: 67, size: 320, elements: !22)
!22 = !{!23, !44, !48}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !21, file: !20, line: 69, baseType: !24, size: 320)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !25, line: 22, size: 320, elements: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!26 = !{!27, !28, !30, !31, !32, !33, !35, !36}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !24, file: !25, line: 24, baseType: !5, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !24, file: !25, line: 25, baseType: !29, size: 32, offset: 32)
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !24, file: !25, line: 26, baseType: !5, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !24, file: !25, line: 28, baseType: !29, size: 32, offset: 96)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !24, file: !25, line: 32, baseType: !5, size: 32, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !24, file: !25, line: 34, baseType: !34, size: 16, offset: 160)
!34 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !24, file: !25, line: 35, baseType: !34, size: 16, offset: 176)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !24, file: !25, line: 36, baseType: !37, size: 128, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !38, line: 55, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !38, line: 51, size: 128, elements: !40)
!40 = !{!41, !43}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !39, file: !38, line: 53, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !39, file: !38, line: 54, baseType: !42, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !21, file: !20, line: 70, baseType: !45, size: 320)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 320, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 40)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !21, file: !20, line: 71, baseType: !49, size: 64)
!49 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!50 = !{i32 7, !"Dwarf Version", i32 5}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 4}
!53 = !{i32 8, !"PIC Level", i32 2}
!54 = !{i32 7, !"PIE Level", i32 2}
!55 = !{i32 7, !"uwtable", i32 2}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 16.0.0"}
!58 = distinct !DISubprogram(name: "nn_glock_lock", scope: !9, file: !9, line: 59, type: !59, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !61)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !{}
!62 = !DILocalVariable(name: "rc", scope: !58, file: !9, line: 61, type: !5)
!63 = !DILocation(line: 61, column: 9, scope: !58)
!64 = !DILocation(line: 63, column: 10, scope: !58)
!65 = !DILocation(line: 63, column: 8, scope: !58)
!66 = !DILocation(line: 64, column: 5, scope: !58)
!67 = !DILocation(line: 64, column: 5, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !9, line: 64, column: 5)
!69 = distinct !DILexicalBlock(scope: !58, file: !9, line: 64, column: 5)
!70 = !DILocation(line: 64, column: 5, scope: !69)
!71 = !DILocation(line: 64, column: 5, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !9, line: 64, column: 5)
!73 = !DILocation(line: 65, column: 1, scope: !58)
!74 = distinct !DISubprogram(name: "nn_glock_unlock", scope: !9, file: !9, line: 67, type: !59, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !61)
!75 = !DILocalVariable(name: "rc", scope: !74, file: !9, line: 69, type: !5)
!76 = !DILocation(line: 69, column: 9, scope: !74)
!77 = !DILocation(line: 71, column: 10, scope: !74)
!78 = !DILocation(line: 71, column: 8, scope: !74)
!79 = !DILocation(line: 72, column: 5, scope: !74)
!80 = !DILocation(line: 72, column: 5, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !9, line: 72, column: 5)
!82 = distinct !DILexicalBlock(scope: !74, file: !9, line: 72, column: 5)
!83 = !DILocation(line: 72, column: 5, scope: !82)
!84 = !DILocation(line: 72, column: 5, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !9, line: 72, column: 5)
!86 = !DILocation(line: 73, column: 1, scope: !74)
