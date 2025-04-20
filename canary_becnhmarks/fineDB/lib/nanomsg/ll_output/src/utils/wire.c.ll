; ModuleID = './src/utils/wire.c'
source_filename = "./src/utils/wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @nn_gets(ptr noundef %0) #0 !dbg !25 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !32, metadata !DIExpression()), !dbg !33
  %3 = load ptr, ptr %2, align 8, !dbg !34
  %4 = getelementptr inbounds i8, ptr %3, i64 0, !dbg !34
  %5 = load i8, ptr %4, align 1, !dbg !34
  %6 = zext i8 %5 to i16, !dbg !35
  %7 = zext i16 %6 to i32, !dbg !36
  %8 = shl i32 %7, 8, !dbg !37
  %9 = load ptr, ptr %2, align 8, !dbg !38
  %10 = getelementptr inbounds i8, ptr %9, i64 1, !dbg !38
  %11 = load i8, ptr %10, align 1, !dbg !38
  %12 = zext i8 %11 to i16, !dbg !39
  %13 = zext i16 %12 to i32, !dbg !40
  %14 = or i32 %8, %13, !dbg !41
  %15 = trunc i32 %14 to i16, !dbg !42
  ret i16 %15, !dbg !43
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_puts(ptr noundef %0, i16 noundef zeroext %1) #0 !dbg !44 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !48, metadata !DIExpression()), !dbg !49
  store i16 %1, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !50, metadata !DIExpression()), !dbg !51
  %5 = load i16, ptr %4, align 2, !dbg !52
  %6 = zext i16 %5 to i32, !dbg !53
  %7 = ashr i32 %6, 8, !dbg !54
  %8 = and i32 %7, 255, !dbg !55
  %9 = trunc i32 %8 to i8, !dbg !56
  %10 = load ptr, ptr %3, align 8, !dbg !57
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !57
  store i8 %9, ptr %11, align 1, !dbg !58
  %12 = load i16, ptr %4, align 2, !dbg !59
  %13 = zext i16 %12 to i32, !dbg !59
  %14 = and i32 %13, 255, !dbg !60
  %15 = trunc i32 %14 to i8, !dbg !61
  %16 = load ptr, ptr %3, align 8, !dbg !62
  %17 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !62
  store i8 %15, ptr %17, align 1, !dbg !63
  ret void, !dbg !64
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_getl(ptr noundef %0) #0 !dbg !65 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !68, metadata !DIExpression()), !dbg !69
  %3 = load ptr, ptr %2, align 8, !dbg !70
  %4 = getelementptr inbounds i8, ptr %3, i64 0, !dbg !70
  %5 = load i8, ptr %4, align 1, !dbg !70
  %6 = zext i8 %5 to i32, !dbg !71
  %7 = shl i32 %6, 24, !dbg !72
  %8 = load ptr, ptr %2, align 8, !dbg !73
  %9 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !73
  %10 = load i8, ptr %9, align 1, !dbg !73
  %11 = zext i8 %10 to i32, !dbg !74
  %12 = shl i32 %11, 16, !dbg !75
  %13 = or i32 %7, %12, !dbg !76
  %14 = load ptr, ptr %2, align 8, !dbg !77
  %15 = getelementptr inbounds i8, ptr %14, i64 2, !dbg !77
  %16 = load i8, ptr %15, align 1, !dbg !77
  %17 = zext i8 %16 to i32, !dbg !78
  %18 = shl i32 %17, 8, !dbg !79
  %19 = or i32 %13, %18, !dbg !80
  %20 = load ptr, ptr %2, align 8, !dbg !81
  %21 = getelementptr inbounds i8, ptr %20, i64 3, !dbg !81
  %22 = load i8, ptr %21, align 1, !dbg !81
  %23 = zext i8 %22 to i32, !dbg !82
  %24 = or i32 %19, %23, !dbg !83
  ret i32 %24, !dbg !84
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_putl(ptr noundef %0, i32 noundef %1) #0 !dbg !85 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !88, metadata !DIExpression()), !dbg !89
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !90, metadata !DIExpression()), !dbg !91
  %5 = load i32, ptr %4, align 4, !dbg !92
  %6 = lshr i32 %5, 24, !dbg !93
  %7 = and i32 %6, 255, !dbg !94
  %8 = trunc i32 %7 to i8, !dbg !95
  %9 = load ptr, ptr %3, align 8, !dbg !96
  %10 = getelementptr inbounds i8, ptr %9, i64 0, !dbg !96
  store i8 %8, ptr %10, align 1, !dbg !97
  %11 = load i32, ptr %4, align 4, !dbg !98
  %12 = lshr i32 %11, 16, !dbg !99
  %13 = and i32 %12, 255, !dbg !100
  %14 = trunc i32 %13 to i8, !dbg !101
  %15 = load ptr, ptr %3, align 8, !dbg !102
  %16 = getelementptr inbounds i8, ptr %15, i64 1, !dbg !102
  store i8 %14, ptr %16, align 1, !dbg !103
  %17 = load i32, ptr %4, align 4, !dbg !104
  %18 = lshr i32 %17, 8, !dbg !105
  %19 = and i32 %18, 255, !dbg !106
  %20 = trunc i32 %19 to i8, !dbg !107
  %21 = load ptr, ptr %3, align 8, !dbg !108
  %22 = getelementptr inbounds i8, ptr %21, i64 2, !dbg !108
  store i8 %20, ptr %22, align 1, !dbg !109
  %23 = load i32, ptr %4, align 4, !dbg !110
  %24 = and i32 %23, 255, !dbg !111
  %25 = trunc i32 %24 to i8, !dbg !112
  %26 = load ptr, ptr %3, align 8, !dbg !113
  %27 = getelementptr inbounds i8, ptr %26, i64 3, !dbg !113
  store i8 %25, ptr %27, align 1, !dbg !114
  ret void, !dbg !115
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nn_getll(ptr noundef %0) #0 !dbg !116 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !119, metadata !DIExpression()), !dbg !120
  %3 = load ptr, ptr %2, align 8, !dbg !121
  %4 = getelementptr inbounds i8, ptr %3, i64 0, !dbg !121
  %5 = load i8, ptr %4, align 1, !dbg !121
  %6 = zext i8 %5 to i64, !dbg !122
  %7 = shl i64 %6, 56, !dbg !123
  %8 = load ptr, ptr %2, align 8, !dbg !124
  %9 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !124
  %10 = load i8, ptr %9, align 1, !dbg !124
  %11 = zext i8 %10 to i64, !dbg !125
  %12 = shl i64 %11, 48, !dbg !126
  %13 = or i64 %7, %12, !dbg !127
  %14 = load ptr, ptr %2, align 8, !dbg !128
  %15 = getelementptr inbounds i8, ptr %14, i64 2, !dbg !128
  %16 = load i8, ptr %15, align 1, !dbg !128
  %17 = zext i8 %16 to i64, !dbg !129
  %18 = shl i64 %17, 40, !dbg !130
  %19 = or i64 %13, %18, !dbg !131
  %20 = load ptr, ptr %2, align 8, !dbg !132
  %21 = getelementptr inbounds i8, ptr %20, i64 3, !dbg !132
  %22 = load i8, ptr %21, align 1, !dbg !132
  %23 = zext i8 %22 to i64, !dbg !133
  %24 = shl i64 %23, 32, !dbg !134
  %25 = or i64 %19, %24, !dbg !135
  %26 = load ptr, ptr %2, align 8, !dbg !136
  %27 = getelementptr inbounds i8, ptr %26, i64 4, !dbg !136
  %28 = load i8, ptr %27, align 1, !dbg !136
  %29 = zext i8 %28 to i64, !dbg !137
  %30 = shl i64 %29, 24, !dbg !138
  %31 = or i64 %25, %30, !dbg !139
  %32 = load ptr, ptr %2, align 8, !dbg !140
  %33 = getelementptr inbounds i8, ptr %32, i64 5, !dbg !140
  %34 = load i8, ptr %33, align 1, !dbg !140
  %35 = zext i8 %34 to i64, !dbg !141
  %36 = shl i64 %35, 16, !dbg !142
  %37 = or i64 %31, %36, !dbg !143
  %38 = load ptr, ptr %2, align 8, !dbg !144
  %39 = getelementptr inbounds i8, ptr %38, i64 6, !dbg !144
  %40 = load i8, ptr %39, align 1, !dbg !144
  %41 = zext i8 %40 to i64, !dbg !145
  %42 = shl i64 %41, 8, !dbg !146
  %43 = or i64 %37, %42, !dbg !147
  %44 = load ptr, ptr %2, align 8, !dbg !148
  %45 = getelementptr inbounds i8, ptr %44, i64 7, !dbg !148
  %46 = load i8, ptr %45, align 1, !dbg !148
  %47 = zext i8 %46 to i64, !dbg !149
  %48 = shl i64 %47, 0, !dbg !150
  %49 = or i64 %43, %48, !dbg !151
  ret i64 %49, !dbg !152
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_putll(ptr noundef %0, i64 noundef %1) #0 !dbg !153 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !156, metadata !DIExpression()), !dbg !157
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !158, metadata !DIExpression()), !dbg !159
  %5 = load i64, ptr %4, align 8, !dbg !160
  %6 = lshr i64 %5, 56, !dbg !161
  %7 = and i64 %6, 255, !dbg !162
  %8 = trunc i64 %7 to i8, !dbg !163
  %9 = load ptr, ptr %3, align 8, !dbg !164
  %10 = getelementptr inbounds i8, ptr %9, i64 0, !dbg !164
  store i8 %8, ptr %10, align 1, !dbg !165
  %11 = load i64, ptr %4, align 8, !dbg !166
  %12 = lshr i64 %11, 48, !dbg !167
  %13 = and i64 %12, 255, !dbg !168
  %14 = trunc i64 %13 to i8, !dbg !169
  %15 = load ptr, ptr %3, align 8, !dbg !170
  %16 = getelementptr inbounds i8, ptr %15, i64 1, !dbg !170
  store i8 %14, ptr %16, align 1, !dbg !171
  %17 = load i64, ptr %4, align 8, !dbg !172
  %18 = lshr i64 %17, 40, !dbg !173
  %19 = and i64 %18, 255, !dbg !174
  %20 = trunc i64 %19 to i8, !dbg !175
  %21 = load ptr, ptr %3, align 8, !dbg !176
  %22 = getelementptr inbounds i8, ptr %21, i64 2, !dbg !176
  store i8 %20, ptr %22, align 1, !dbg !177
  %23 = load i64, ptr %4, align 8, !dbg !178
  %24 = lshr i64 %23, 32, !dbg !179
  %25 = and i64 %24, 255, !dbg !180
  %26 = trunc i64 %25 to i8, !dbg !181
  %27 = load ptr, ptr %3, align 8, !dbg !182
  %28 = getelementptr inbounds i8, ptr %27, i64 3, !dbg !182
  store i8 %26, ptr %28, align 1, !dbg !183
  %29 = load i64, ptr %4, align 8, !dbg !184
  %30 = lshr i64 %29, 24, !dbg !185
  %31 = and i64 %30, 255, !dbg !186
  %32 = trunc i64 %31 to i8, !dbg !187
  %33 = load ptr, ptr %3, align 8, !dbg !188
  %34 = getelementptr inbounds i8, ptr %33, i64 4, !dbg !188
  store i8 %32, ptr %34, align 1, !dbg !189
  %35 = load i64, ptr %4, align 8, !dbg !190
  %36 = lshr i64 %35, 16, !dbg !191
  %37 = and i64 %36, 255, !dbg !192
  %38 = trunc i64 %37 to i8, !dbg !193
  %39 = load ptr, ptr %3, align 8, !dbg !194
  %40 = getelementptr inbounds i8, ptr %39, i64 5, !dbg !194
  store i8 %38, ptr %40, align 1, !dbg !195
  %41 = load i64, ptr %4, align 8, !dbg !196
  %42 = lshr i64 %41, 8, !dbg !197
  %43 = and i64 %42, 255, !dbg !198
  %44 = trunc i64 %43 to i8, !dbg !199
  %45 = load ptr, ptr %3, align 8, !dbg !200
  %46 = getelementptr inbounds i8, ptr %45, i64 6, !dbg !200
  store i8 %44, ptr %46, align 1, !dbg !201
  %47 = load i64, ptr %4, align 8, !dbg !202
  %48 = and i64 %47, 255, !dbg !203
  %49 = trunc i64 %48 to i8, !dbg !204
  %50 = load ptr, ptr %3, align 8, !dbg !205
  %51 = getelementptr inbounds i8, ptr %50, i64 7, !dbg !205
  store i8 %49, ptr %51, align 1, !dbg !206
  ret void, !dbg !207
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/utils/wire.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e05e1603b3c45059aafb65bd2f08071b")
!2 = !{!3, !8, !11, !14}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !4, line: 25, baseType: !5)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !6, line: 40, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!7 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !4, line: 24, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !6, line: 38, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 26, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 42, baseType: !13)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !4, line: 27, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !6, line: 45, baseType: !16)
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 2}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 16.0.0"}
!25 = distinct !DISubprogram(name: "nn_gets", scope: !26, file: !26, line: 31, type: !27, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!26 = !DIFile(filename: "./src/utils/wire.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e05e1603b3c45059aafb65bd2f08071b")
!27 = !DISubroutineType(types: !28)
!28 = !{!3, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!31 = !{}
!32 = !DILocalVariable(name: "buf", arg: 1, scope: !25, file: !26, line: 31, type: !29)
!33 = !DILocation(line: 31, column: 34, scope: !25)
!34 = !DILocation(line: 33, column: 25, scope: !25)
!35 = !DILocation(line: 33, column: 14, scope: !25)
!36 = !DILocation(line: 33, column: 13, scope: !25)
!37 = !DILocation(line: 33, column: 34, scope: !25)
!38 = !DILocation(line: 34, column: 24, scope: !25)
!39 = !DILocation(line: 34, column: 13, scope: !25)
!40 = !DILocation(line: 34, column: 12, scope: !25)
!41 = !DILocation(line: 33, column: 40, scope: !25)
!42 = !DILocation(line: 33, column: 12, scope: !25)
!43 = !DILocation(line: 33, column: 5, scope: !25)
!44 = distinct !DISubprogram(name: "nn_puts", scope: !26, file: !26, line: 37, type: !45, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !3}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!48 = !DILocalVariable(name: "buf", arg: 1, scope: !44, file: !26, line: 37, type: !47)
!49 = !DILocation(line: 37, column: 24, scope: !44)
!50 = !DILocalVariable(name: "val", arg: 2, scope: !44, file: !26, line: 37, type: !3)
!51 = !DILocation(line: 37, column: 38, scope: !44)
!52 = !DILocation(line: 39, column: 28, scope: !44)
!53 = !DILocation(line: 39, column: 27, scope: !44)
!54 = !DILocation(line: 39, column: 33, scope: !44)
!55 = !DILocation(line: 39, column: 39, scope: !44)
!56 = !DILocation(line: 39, column: 15, scope: !44)
!57 = !DILocation(line: 39, column: 5, scope: !44)
!58 = !DILocation(line: 39, column: 13, scope: !44)
!59 = !DILocation(line: 40, column: 26, scope: !44)
!60 = !DILocation(line: 40, column: 30, scope: !44)
!61 = !DILocation(line: 40, column: 15, scope: !44)
!62 = !DILocation(line: 40, column: 5, scope: !44)
!63 = !DILocation(line: 40, column: 13, scope: !44)
!64 = !DILocation(line: 41, column: 1, scope: !44)
!65 = distinct !DISubprogram(name: "nn_getl", scope: !26, file: !26, line: 43, type: !66, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!66 = !DISubroutineType(types: !67)
!67 = !{!11, !29}
!68 = !DILocalVariable(name: "buf", arg: 1, scope: !65, file: !26, line: 43, type: !29)
!69 = !DILocation(line: 43, column: 34, scope: !65)
!70 = !DILocation(line: 45, column: 25, scope: !65)
!71 = !DILocation(line: 45, column: 14, scope: !65)
!72 = !DILocation(line: 45, column: 34, scope: !65)
!73 = !DILocation(line: 46, column: 25, scope: !65)
!74 = !DILocation(line: 46, column: 14, scope: !65)
!75 = !DILocation(line: 46, column: 34, scope: !65)
!76 = !DILocation(line: 45, column: 41, scope: !65)
!77 = !DILocation(line: 47, column: 25, scope: !65)
!78 = !DILocation(line: 47, column: 14, scope: !65)
!79 = !DILocation(line: 47, column: 34, scope: !65)
!80 = !DILocation(line: 46, column: 41, scope: !65)
!81 = !DILocation(line: 48, column: 24, scope: !65)
!82 = !DILocation(line: 48, column: 13, scope: !65)
!83 = !DILocation(line: 47, column: 40, scope: !65)
!84 = !DILocation(line: 45, column: 5, scope: !65)
!85 = distinct !DISubprogram(name: "nn_putl", scope: !26, file: !26, line: 51, type: !86, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !47, !11}
!88 = !DILocalVariable(name: "buf", arg: 1, scope: !85, file: !26, line: 51, type: !47)
!89 = !DILocation(line: 51, column: 24, scope: !85)
!90 = !DILocalVariable(name: "val", arg: 2, scope: !85, file: !26, line: 51, type: !11)
!91 = !DILocation(line: 51, column: 38, scope: !85)
!92 = !DILocation(line: 53, column: 28, scope: !85)
!93 = !DILocation(line: 53, column: 33, scope: !85)
!94 = !DILocation(line: 53, column: 40, scope: !85)
!95 = !DILocation(line: 53, column: 15, scope: !85)
!96 = !DILocation(line: 53, column: 5, scope: !85)
!97 = !DILocation(line: 53, column: 13, scope: !85)
!98 = !DILocation(line: 54, column: 28, scope: !85)
!99 = !DILocation(line: 54, column: 33, scope: !85)
!100 = !DILocation(line: 54, column: 40, scope: !85)
!101 = !DILocation(line: 54, column: 15, scope: !85)
!102 = !DILocation(line: 54, column: 5, scope: !85)
!103 = !DILocation(line: 54, column: 13, scope: !85)
!104 = !DILocation(line: 55, column: 28, scope: !85)
!105 = !DILocation(line: 55, column: 33, scope: !85)
!106 = !DILocation(line: 55, column: 39, scope: !85)
!107 = !DILocation(line: 55, column: 15, scope: !85)
!108 = !DILocation(line: 55, column: 5, scope: !85)
!109 = !DILocation(line: 55, column: 13, scope: !85)
!110 = !DILocation(line: 56, column: 26, scope: !85)
!111 = !DILocation(line: 56, column: 30, scope: !85)
!112 = !DILocation(line: 56, column: 15, scope: !85)
!113 = !DILocation(line: 56, column: 5, scope: !85)
!114 = !DILocation(line: 56, column: 13, scope: !85)
!115 = !DILocation(line: 57, column: 1, scope: !85)
!116 = distinct !DISubprogram(name: "nn_getll", scope: !26, file: !26, line: 59, type: !117, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!117 = !DISubroutineType(types: !118)
!118 = !{!14, !29}
!119 = !DILocalVariable(name: "buf", arg: 1, scope: !116, file: !26, line: 59, type: !29)
!120 = !DILocation(line: 59, column: 35, scope: !116)
!121 = !DILocation(line: 61, column: 25, scope: !116)
!122 = !DILocation(line: 61, column: 14, scope: !116)
!123 = !DILocation(line: 61, column: 34, scope: !116)
!124 = !DILocation(line: 62, column: 25, scope: !116)
!125 = !DILocation(line: 62, column: 14, scope: !116)
!126 = !DILocation(line: 62, column: 34, scope: !116)
!127 = !DILocation(line: 61, column: 41, scope: !116)
!128 = !DILocation(line: 63, column: 25, scope: !116)
!129 = !DILocation(line: 63, column: 14, scope: !116)
!130 = !DILocation(line: 63, column: 34, scope: !116)
!131 = !DILocation(line: 62, column: 41, scope: !116)
!132 = !DILocation(line: 64, column: 25, scope: !116)
!133 = !DILocation(line: 64, column: 14, scope: !116)
!134 = !DILocation(line: 64, column: 34, scope: !116)
!135 = !DILocation(line: 63, column: 41, scope: !116)
!136 = !DILocation(line: 65, column: 25, scope: !116)
!137 = !DILocation(line: 65, column: 14, scope: !116)
!138 = !DILocation(line: 65, column: 34, scope: !116)
!139 = !DILocation(line: 64, column: 41, scope: !116)
!140 = !DILocation(line: 66, column: 25, scope: !116)
!141 = !DILocation(line: 66, column: 14, scope: !116)
!142 = !DILocation(line: 66, column: 34, scope: !116)
!143 = !DILocation(line: 65, column: 41, scope: !116)
!144 = !DILocation(line: 67, column: 25, scope: !116)
!145 = !DILocation(line: 67, column: 14, scope: !116)
!146 = !DILocation(line: 67, column: 34, scope: !116)
!147 = !DILocation(line: 66, column: 41, scope: !116)
!148 = !DILocation(line: 68, column: 25, scope: !116)
!149 = !DILocation(line: 68, column: 14, scope: !116)
!150 = !DILocation(line: 68, column: 33, scope: !116)
!151 = !DILocation(line: 67, column: 40, scope: !116)
!152 = !DILocation(line: 61, column: 5, scope: !116)
!153 = distinct !DISubprogram(name: "nn_putll", scope: !26, file: !26, line: 71, type: !154, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !47, !14}
!156 = !DILocalVariable(name: "buf", arg: 1, scope: !153, file: !26, line: 71, type: !47)
!157 = !DILocation(line: 71, column: 25, scope: !153)
!158 = !DILocalVariable(name: "val", arg: 2, scope: !153, file: !26, line: 71, type: !14)
!159 = !DILocation(line: 71, column: 39, scope: !153)
!160 = !DILocation(line: 73, column: 27, scope: !153)
!161 = !DILocation(line: 73, column: 31, scope: !153)
!162 = !DILocation(line: 73, column: 38, scope: !153)
!163 = !DILocation(line: 73, column: 15, scope: !153)
!164 = !DILocation(line: 73, column: 5, scope: !153)
!165 = !DILocation(line: 73, column: 13, scope: !153)
!166 = !DILocation(line: 74, column: 27, scope: !153)
!167 = !DILocation(line: 74, column: 31, scope: !153)
!168 = !DILocation(line: 74, column: 38, scope: !153)
!169 = !DILocation(line: 74, column: 15, scope: !153)
!170 = !DILocation(line: 74, column: 5, scope: !153)
!171 = !DILocation(line: 74, column: 13, scope: !153)
!172 = !DILocation(line: 75, column: 27, scope: !153)
!173 = !DILocation(line: 75, column: 31, scope: !153)
!174 = !DILocation(line: 75, column: 38, scope: !153)
!175 = !DILocation(line: 75, column: 15, scope: !153)
!176 = !DILocation(line: 75, column: 5, scope: !153)
!177 = !DILocation(line: 75, column: 13, scope: !153)
!178 = !DILocation(line: 76, column: 27, scope: !153)
!179 = !DILocation(line: 76, column: 31, scope: !153)
!180 = !DILocation(line: 76, column: 38, scope: !153)
!181 = !DILocation(line: 76, column: 15, scope: !153)
!182 = !DILocation(line: 76, column: 5, scope: !153)
!183 = !DILocation(line: 76, column: 13, scope: !153)
!184 = !DILocation(line: 77, column: 27, scope: !153)
!185 = !DILocation(line: 77, column: 31, scope: !153)
!186 = !DILocation(line: 77, column: 38, scope: !153)
!187 = !DILocation(line: 77, column: 15, scope: !153)
!188 = !DILocation(line: 77, column: 5, scope: !153)
!189 = !DILocation(line: 77, column: 13, scope: !153)
!190 = !DILocation(line: 78, column: 27, scope: !153)
!191 = !DILocation(line: 78, column: 31, scope: !153)
!192 = !DILocation(line: 78, column: 38, scope: !153)
!193 = !DILocation(line: 78, column: 15, scope: !153)
!194 = !DILocation(line: 78, column: 5, scope: !153)
!195 = !DILocation(line: 78, column: 13, scope: !153)
!196 = !DILocation(line: 79, column: 27, scope: !153)
!197 = !DILocation(line: 79, column: 31, scope: !153)
!198 = !DILocation(line: 79, column: 37, scope: !153)
!199 = !DILocation(line: 79, column: 15, scope: !153)
!200 = !DILocation(line: 79, column: 5, scope: !153)
!201 = !DILocation(line: 79, column: 13, scope: !153)
!202 = !DILocation(line: 80, column: 26, scope: !153)
!203 = !DILocation(line: 80, column: 30, scope: !153)
!204 = !DILocation(line: 80, column: 15, scope: !153)
!205 = !DILocation(line: 80, column: 5, scope: !153)
!206 = !DILocation(line: 80, column: 13, scope: !153)
!207 = !DILocation(line: 81, column: 1, scope: !153)
