; ModuleID = './src/utils/sleep.c'
source_filename = "./src/utils/sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [20 x i8] c"./src/utils/sleep.c\00", align 1, !dbg !7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sleep(i32 noundef %0) #0 !dbg !25 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec, align 8
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata ptr %3, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata ptr %4, metadata !33, metadata !DIExpression()), !dbg !43
  %5 = load i32, ptr %2, align 4, !dbg !44
  %6 = sdiv i32 %5, 1000, !dbg !45
  %7 = sext i32 %6 to i64, !dbg !44
  %8 = getelementptr inbounds %struct.timespec, ptr %4, i32 0, i32 0, !dbg !46
  store i64 %7, ptr %8, align 8, !dbg !47
  %9 = load i32, ptr %2, align 4, !dbg !48
  %10 = srem i32 %9, 1000, !dbg !49
  %11 = mul nsw i32 %10, 1000000, !dbg !50
  %12 = sext i32 %11 to i64, !dbg !48
  %13 = getelementptr inbounds %struct.timespec, ptr %4, i32 0, i32 1, !dbg !51
  store i64 %12, ptr %13, align 8, !dbg !52
  %14 = call i32 @nanosleep(ptr noundef %4, ptr noundef null), !dbg !53
  store i32 %14, ptr %3, align 4, !dbg !54
  br label %15, !dbg !55

15:                                               ; preds = %1
  %16 = load i32, ptr %3, align 4, !dbg !56
  %17 = icmp eq i32 %16, 0, !dbg !56
  %18 = xor i1 %17, true, !dbg !56
  %19 = zext i1 %18 to i32, !dbg !56
  %20 = sext i32 %19 to i64, !dbg !56
  %21 = icmp ne i64 %20, 0, !dbg !56
  br i1 %21, label %22, label %30, !dbg !59

22:                                               ; preds = %15
  %23 = load ptr, ptr @stderr, align 8, !dbg !60
  %24 = call ptr @__errno_location() #5, !dbg !60
  %25 = load i32, ptr %24, align 4, !dbg !60
  %26 = call ptr @nn_err_strerror(i32 noundef %25), !dbg !60
  %27 = call ptr @__errno_location() #5, !dbg !60
  %28 = load i32, ptr %27, align 4, !dbg !60
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str, ptr noundef %26, i32 noundef %28, ptr noundef @.str.1, i32 noundef 47), !dbg !60
  call void @nn_err_abort() #6, !dbg !60
  unreachable, !dbg !60

30:                                               ; preds = %15
  br label %31, !dbg !59

31:                                               ; preds = %30
  ret void, !dbg !62
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @nanosleep(ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare ptr @nn_err_strerror(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #3

; Function Attrs: noreturn
declare void @nn_err_abort() #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/utils/sleep.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "144a660ecffebd25fcaa256e00c39485")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 20)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !13, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !14, globals: !16, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "src/utils/sleep.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "144a660ecffebd25fcaa256e00c39485")
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!0, !7}
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 2}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 16.0.0"}
!25 = distinct !DISubprogram(name: "nn_sleep", scope: !2, file: !2, line: 39, type: !26, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !15}
!28 = !{}
!29 = !DILocalVariable(name: "milliseconds", arg: 1, scope: !25, file: !2, line: 39, type: !15)
!30 = !DILocation(line: 39, column: 20, scope: !25)
!31 = !DILocalVariable(name: "rc", scope: !25, file: !2, line: 41, type: !15)
!32 = !DILocation(line: 41, column: 9, scope: !25)
!33 = !DILocalVariable(name: "ts", scope: !25, file: !2, line: 42, type: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !35, line: 11, size: 128, elements: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!36 = !{!37, !41}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !34, file: !35, line: 16, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !39, line: 160, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!40 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !34, file: !35, line: 21, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !39, line: 197, baseType: !40)
!43 = !DILocation(line: 42, column: 21, scope: !25)
!44 = !DILocation(line: 44, column: 17, scope: !25)
!45 = !DILocation(line: 44, column: 30, scope: !25)
!46 = !DILocation(line: 44, column: 8, scope: !25)
!47 = !DILocation(line: 44, column: 15, scope: !25)
!48 = !DILocation(line: 45, column: 18, scope: !25)
!49 = !DILocation(line: 45, column: 31, scope: !25)
!50 = !DILocation(line: 45, column: 38, scope: !25)
!51 = !DILocation(line: 45, column: 8, scope: !25)
!52 = !DILocation(line: 45, column: 16, scope: !25)
!53 = !DILocation(line: 46, column: 10, scope: !25)
!54 = !DILocation(line: 46, column: 8, scope: !25)
!55 = !DILocation(line: 47, column: 5, scope: !25)
!56 = !DILocation(line: 47, column: 5, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !2, line: 47, column: 5)
!58 = distinct !DILexicalBlock(scope: !25, file: !2, line: 47, column: 5)
!59 = !DILocation(line: 47, column: 5, scope: !58)
!60 = !DILocation(line: 47, column: 5, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !2, line: 47, column: 5)
!62 = !DILocation(line: 48, column: 1, scope: !25)
