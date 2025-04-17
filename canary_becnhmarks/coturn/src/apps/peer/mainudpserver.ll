; ModuleID = '/home/raj/coturn/src/apps/peer/mainudpserver.c'
source_filename = "/home/raj/coturn/src/apps/peer/mainudpserver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_TURN_SERVER = external global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"stdout\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"d:p:L:v\00", align 1, !dbg !7
@optarg = external global ptr, align 8
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !12
@Usage = internal global [197 x i8] c"Usage: server [options]\0AOptions:\0A        -p      Listening UDP port (Default: 3480)\0A        -d      Listening interface device (optional)\0A        -L      Listening address\0A        -v      verbose\0A\00", align 16, !dbg !17
@.str.3 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1, !dbg !27
@.str.4 = private unnamed_addr constant [3 x i8] c"::\00", align 1, !dbg !29

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !45 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1025 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !50, metadata !DIExpression()), !dbg !51
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata ptr %6, metadata !54, metadata !DIExpression()), !dbg !55
  store i32 3480, ptr %6, align 4, !dbg !55
  call void @llvm.dbg.declare(metadata ptr %7, metadata !56, metadata !DIExpression()), !dbg !57
  store ptr null, ptr %7, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata ptr %8, metadata !58, metadata !DIExpression()), !dbg !62
  store i64 0, ptr %8, align 8, !dbg !62
  call void @llvm.dbg.declare(metadata ptr %9, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 0, ptr %9, align 4, !dbg !64
  call void @llvm.dbg.declare(metadata ptr %10, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata ptr %11, metadata !67, metadata !DIExpression()), !dbg !71
  call void @llvm.memset.p0.i64(ptr align 16 %11, i8 0, i64 1025, i1 false), !dbg !71
  store i32 1, ptr @IS_TURN_SERVER, align 4, !dbg !72
  call void @set_logfile(ptr noundef @.str), !dbg !73
  %14 = call i64 @set_system_parameters(i32 noundef 0), !dbg !74
  br label %15, !dbg !75

15:                                               ; preds = %57, %2
  %16 = load i32, ptr %4, align 4, !dbg !76
  %17 = load ptr, ptr %5, align 8, !dbg !77
  %18 = call i32 @getopt(i32 noundef %16, ptr noundef %17, ptr noundef @.str.1) #8, !dbg !78
  store i32 %18, ptr %10, align 4, !dbg !79
  %19 = icmp ne i32 %18, -1, !dbg !80
  br i1 %19, label %20, label %58, !dbg !75

20:                                               ; preds = %15
  %21 = load i32, ptr %10, align 4, !dbg !81
  switch i32 %21, label %54 [
    i32 100, label %22
    i32 112, label %38
    i32 76, label %41
    i32 118, label %53
  ], !dbg !82

22:                                               ; preds = %20
  br label %23, !dbg !83

23:                                               ; preds = %22
  %24 = getelementptr inbounds [1025 x i8], ptr %11, i64 0, i64 0, !dbg !85
  %25 = load ptr, ptr @optarg, align 8, !dbg !85
  %26 = icmp ne ptr %24, %25, !dbg !85
  br i1 %26, label %27, label %36, !dbg !88

27:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %12, metadata !89, metadata !DIExpression()), !dbg !93
  store i64 1025, ptr %12, align 8, !dbg !93
  %28 = getelementptr inbounds [1025 x i8], ptr %11, i64 0, i64 0, !dbg !93
  %29 = load ptr, ptr @optarg, align 8, !dbg !93
  %30 = load i64, ptr %12, align 8, !dbg !93
  %31 = call ptr @strncpy(ptr noundef %28, ptr noundef %29, i64 noundef %30) #8, !dbg !93
  %32 = getelementptr inbounds [1025 x i8], ptr %11, i64 0, i64 0, !dbg !93
  %33 = load i64, ptr %12, align 8, !dbg !93
  %34 = sub i64 %33, 1, !dbg !93
  %35 = getelementptr inbounds i8, ptr %32, i64 %34, !dbg !93
  store i8 0, ptr %35, align 1, !dbg !93
  br label %36, !dbg !94

36:                                               ; preds = %27, %23
  br label %37, !dbg !88

37:                                               ; preds = %36
  br label %57, !dbg !95

38:                                               ; preds = %20
  %39 = load ptr, ptr @optarg, align 8, !dbg !96
  %40 = call i32 @atoi(ptr noundef %39) #9, !dbg !97
  store i32 %40, ptr %6, align 4, !dbg !98
  br label %57, !dbg !99

41:                                               ; preds = %20
  %42 = load ptr, ptr %7, align 8, !dbg !100
  %43 = load i64, ptr %8, align 8, !dbg !101
  %44 = add i64 %43, 1, !dbg !101
  store i64 %44, ptr %8, align 8, !dbg !101
  %45 = mul i64 %44, 8, !dbg !102
  %46 = call ptr @realloc(ptr noundef %42, i64 noundef %45) #10, !dbg !103
  store ptr %46, ptr %7, align 8, !dbg !104
  %47 = load ptr, ptr @optarg, align 8, !dbg !105
  %48 = call noalias ptr @strdup(ptr noundef %47) #8, !dbg !106
  %49 = load ptr, ptr %7, align 8, !dbg !107
  %50 = load i64, ptr %8, align 8, !dbg !108
  %51 = sub i64 %50, 1, !dbg !109
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51, !dbg !107
  store ptr %48, ptr %52, align 8, !dbg !110
  br label %57, !dbg !111

53:                                               ; preds = %20
  store i32 1, ptr %9, align 4, !dbg !112
  br label %57, !dbg !113

54:                                               ; preds = %20
  %55 = load ptr, ptr @stderr, align 8, !dbg !114
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.2, ptr noundef @Usage), !dbg !115
  call void @exit(i32 noundef 1) #11, !dbg !116
  unreachable, !dbg !116

57:                                               ; preds = %53, %41, %38, %37
  br label %15, !dbg !75, !llvm.loop !117

58:                                               ; preds = %15
  %59 = load i64, ptr %8, align 8, !dbg !120
  %60 = icmp ult i64 %59, 1, !dbg !122
  br i1 %60, label %61, label %82, !dbg !123

61:                                               ; preds = %58
  %62 = load ptr, ptr %7, align 8, !dbg !124
  %63 = load i64, ptr %8, align 8, !dbg !126
  %64 = add i64 %63, 1, !dbg !126
  store i64 %64, ptr %8, align 8, !dbg !126
  %65 = mul i64 %64, 8, !dbg !127
  %66 = call ptr @realloc(ptr noundef %62, i64 noundef %65) #10, !dbg !128
  store ptr %66, ptr %7, align 8, !dbg !129
  %67 = call noalias ptr @strdup(ptr noundef @.str.3) #8, !dbg !130
  %68 = load ptr, ptr %7, align 8, !dbg !131
  %69 = load i64, ptr %8, align 8, !dbg !132
  %70 = sub i64 %69, 1, !dbg !133
  %71 = getelementptr inbounds ptr, ptr %68, i64 %70, !dbg !131
  store ptr %67, ptr %71, align 8, !dbg !134
  %72 = load ptr, ptr %7, align 8, !dbg !135
  %73 = load i64, ptr %8, align 8, !dbg !136
  %74 = add i64 %73, 1, !dbg !136
  store i64 %74, ptr %8, align 8, !dbg !136
  %75 = mul i64 %74, 8, !dbg !137
  %76 = call ptr @realloc(ptr noundef %72, i64 noundef %75) #10, !dbg !138
  store ptr %76, ptr %7, align 8, !dbg !139
  %77 = call noalias ptr @strdup(ptr noundef @.str.4) #8, !dbg !140
  %78 = load ptr, ptr %7, align 8, !dbg !141
  %79 = load i64, ptr %8, align 8, !dbg !142
  %80 = sub i64 %79, 1, !dbg !143
  %81 = getelementptr inbounds ptr, ptr %78, i64 %80, !dbg !141
  store ptr %77, ptr %81, align 8, !dbg !144
  br label %82, !dbg !145

82:                                               ; preds = %61, %58
  call void @llvm.dbg.declare(metadata ptr %13, metadata !146, metadata !DIExpression()), !dbg !158
  %83 = load i32, ptr %9, align 4, !dbg !159
  %84 = getelementptr inbounds [1025 x i8], ptr %11, i64 0, i64 0, !dbg !160
  %85 = load ptr, ptr %7, align 8, !dbg !161
  %86 = load i64, ptr %8, align 8, !dbg !162
  %87 = load i32, ptr %6, align 4, !dbg !163
  %88 = call ptr @start_udp_server(i32 noundef %83, ptr noundef %84, ptr noundef %85, i64 noundef %86, i32 noundef %87), !dbg !164
  store ptr %88, ptr %13, align 8, !dbg !158
  %89 = load ptr, ptr %13, align 8, !dbg !165
  call void @run_udp_server(ptr noundef %89), !dbg !166
  %90 = load ptr, ptr %13, align 8, !dbg !167
  call void @clean_udp_server(ptr noundef %90), !dbg !168
  ret i32 0, !dbg !169
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @set_logfile(ptr noundef) #3

declare i64 @set_system_parameters(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #5

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #6

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #4

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #7

declare ptr @start_udp_server(i32 noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #3

declare void @run_udp_server(ptr noundef) #3

declare void @clean_udp_server(ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind allocsize(1) }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/apps/peer/mainudpserver.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "bc0cda5a9e0564d2d60fb8894bae4001")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 7)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 8)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 4)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "Usage", scope: !19, file: !2, line: 43, type: !34, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !20, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/raj/coturn/src/apps/peer/mainudpserver.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "bc0cda5a9e0564d2d60fb8894bae4001")
!21 = !{!22, !24, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!26 = !{!0, !7, !12, !27, !29, !17}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !9, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 3)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1576, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 197)
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{i32 8, !"PIC Level", i32 2}
!41 = !{i32 7, !"PIE Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 2}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 16.0.0"}
!45 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 54, type: !46, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !49)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !48, !25}
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !{}
!50 = !DILocalVariable(name: "argc", arg: 1, scope: !45, file: !2, line: 54, type: !48)
!51 = !DILocation(line: 54, column: 14, scope: !45)
!52 = !DILocalVariable(name: "argv", arg: 2, scope: !45, file: !2, line: 54, type: !25)
!53 = !DILocation(line: 54, column: 27, scope: !45)
!54 = !DILocalVariable(name: "port", scope: !45, file: !2, line: 56, type: !48)
!55 = !DILocation(line: 56, column: 6, scope: !45)
!56 = !DILocalVariable(name: "local_addr_list", scope: !45, file: !2, line: 57, type: !25)
!57 = !DILocation(line: 57, column: 9, scope: !45)
!58 = !DILocalVariable(name: "las", scope: !45, file: !2, line: 58, type: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 46, baseType: !61)
!60 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!61 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!62 = !DILocation(line: 58, column: 9, scope: !45)
!63 = !DILocalVariable(name: "verbose", scope: !45, file: !2, line: 59, type: !48)
!64 = !DILocation(line: 59, column: 6, scope: !45)
!65 = !DILocalVariable(name: "c", scope: !45, file: !2, line: 60, type: !48)
!66 = !DILocation(line: 60, column: 6, scope: !45)
!67 = !DILocalVariable(name: "ifname", scope: !45, file: !2, line: 61, type: !68)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8200, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 1025)
!71 = !DILocation(line: 61, column: 7, scope: !45)
!72 = !DILocation(line: 63, column: 17, scope: !45)
!73 = !DILocation(line: 65, column: 2, scope: !45)
!74 = !DILocation(line: 66, column: 2, scope: !45)
!75 = !DILocation(line: 68, column: 2, scope: !45)
!76 = !DILocation(line: 68, column: 21, scope: !45)
!77 = !DILocation(line: 68, column: 27, scope: !45)
!78 = !DILocation(line: 68, column: 14, scope: !45)
!79 = !DILocation(line: 68, column: 12, scope: !45)
!80 = !DILocation(line: 68, column: 45, scope: !45)
!81 = !DILocation(line: 69, column: 11, scope: !45)
!82 = !DILocation(line: 69, column: 3, scope: !45)
!83 = !DILocation(line: 71, column: 4, scope: !84)
!84 = distinct !DILexicalBlock(scope: !45, file: !2, line: 69, column: 13)
!85 = !DILocation(line: 71, column: 4, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 71, column: 4)
!87 = distinct !DILexicalBlock(scope: !84, file: !2, line: 71, column: 4)
!88 = !DILocation(line: 71, column: 4, scope: !87)
!89 = !DILocalVariable(name: "szdst", scope: !90, file: !2, line: 71, type: !59)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 71, column: 4)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 71, column: 4)
!92 = distinct !DILexicalBlock(scope: !86, file: !2, line: 71, column: 4)
!93 = !DILocation(line: 71, column: 4, scope: !90)
!94 = !DILocation(line: 71, column: 4, scope: !92)
!95 = !DILocation(line: 72, column: 4, scope: !84)
!96 = !DILocation(line: 74, column: 16, scope: !84)
!97 = !DILocation(line: 74, column: 11, scope: !84)
!98 = !DILocation(line: 74, column: 9, scope: !84)
!99 = !DILocation(line: 75, column: 4, scope: !84)
!100 = !DILocation(line: 77, column: 39, scope: !84)
!101 = !DILocation(line: 77, column: 55, scope: !84)
!102 = !DILocation(line: 77, column: 60, scope: !84)
!103 = !DILocation(line: 77, column: 31, scope: !84)
!104 = !DILocation(line: 77, column: 21, scope: !84)
!105 = !DILocation(line: 78, column: 35, scope: !84)
!106 = !DILocation(line: 78, column: 28, scope: !84)
!107 = !DILocation(line: 78, column: 5, scope: !84)
!108 = !DILocation(line: 78, column: 21, scope: !84)
!109 = !DILocation(line: 78, column: 24, scope: !84)
!110 = !DILocation(line: 78, column: 27, scope: !84)
!111 = !DILocation(line: 79, column: 5, scope: !84)
!112 = !DILocation(line: 81, column: 12, scope: !84)
!113 = !DILocation(line: 82, column: 4, scope: !84)
!114 = !DILocation(line: 84, column: 12, scope: !84)
!115 = !DILocation(line: 84, column: 4, scope: !84)
!116 = !DILocation(line: 85, column: 4, scope: !84)
!117 = distinct !{!117, !75, !118, !119}
!118 = !DILocation(line: 86, column: 3, scope: !45)
!119 = !{!"llvm.loop.mustprogress"}
!120 = !DILocation(line: 88, column: 5, scope: !121)
!121 = distinct !DILexicalBlock(scope: !45, file: !2, line: 88, column: 5)
!122 = !DILocation(line: 88, column: 8, scope: !121)
!123 = !DILocation(line: 88, column: 5, scope: !45)
!124 = !DILocation(line: 89, column: 38, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !2, line: 88, column: 12)
!126 = !DILocation(line: 89, column: 54, scope: !125)
!127 = !DILocation(line: 89, column: 59, scope: !125)
!128 = !DILocation(line: 89, column: 30, scope: !125)
!129 = !DILocation(line: 89, column: 20, scope: !125)
!130 = !DILocation(line: 90, column: 27, scope: !125)
!131 = !DILocation(line: 90, column: 4, scope: !125)
!132 = !DILocation(line: 90, column: 20, scope: !125)
!133 = !DILocation(line: 90, column: 23, scope: !125)
!134 = !DILocation(line: 90, column: 26, scope: !125)
!135 = !DILocation(line: 91, column: 38, scope: !125)
!136 = !DILocation(line: 91, column: 54, scope: !125)
!137 = !DILocation(line: 91, column: 59, scope: !125)
!138 = !DILocation(line: 91, column: 30, scope: !125)
!139 = !DILocation(line: 91, column: 20, scope: !125)
!140 = !DILocation(line: 92, column: 27, scope: !125)
!141 = !DILocation(line: 92, column: 4, scope: !125)
!142 = !DILocation(line: 92, column: 20, scope: !125)
!143 = !DILocation(line: 92, column: 23, scope: !125)
!144 = !DILocation(line: 92, column: 26, scope: !125)
!145 = !DILocation(line: 93, column: 2, scope: !125)
!146 = !DILocalVariable(name: "server", scope: !45, file: !2, line: 96, type: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_type", file: !149, line: 47, baseType: !150)
!149 = !DIFile(filename: "src/apps/peer/udpserver.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "3c98836c119a54bb7738ad9a39ad55c0")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "server_info", file: !149, line: 56, size: 8384, elements: !151)
!151 = !{!152, !153, !157}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !150, file: !149, line: 57, baseType: !68, size: 8200)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !150, file: !149, line: 58, baseType: !154, size: 64, offset: 8256)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !156, line: 217, flags: DIFlagFwdDecl)
!156 = !DIFile(filename: "/usr/include/event2/event.h", directory: "", checksumkind: CSK_MD5, checksum: "90db4fa73456052afa8984291985dfd5")
!157 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !150, file: !149, line: 59, baseType: !48, size: 32, offset: 8320)
!158 = !DILocation(line: 96, column: 15, scope: !45)
!159 = !DILocation(line: 96, column: 41, scope: !45)
!160 = !DILocation(line: 96, column: 50, scope: !45)
!161 = !DILocation(line: 96, column: 58, scope: !45)
!162 = !DILocation(line: 96, column: 75, scope: !45)
!163 = !DILocation(line: 96, column: 80, scope: !45)
!164 = !DILocation(line: 96, column: 24, scope: !45)
!165 = !DILocation(line: 97, column: 17, scope: !45)
!166 = !DILocation(line: 97, column: 2, scope: !45)
!167 = !DILocation(line: 98, column: 19, scope: !45)
!168 = !DILocation(line: 98, column: 2, scope: !45)
!169 = !DILocation(line: 100, column: 2, scope: !45)
