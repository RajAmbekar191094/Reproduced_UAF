; ModuleID = '/home/raj/transmission/libtransmission/wildmat.c'
source_filename = "/home/raj/transmission/libtransmission/wildmat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DoMatch(ptr noundef %0, ptr noundef %1) #0 !dbg !10 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !19, metadata !DIExpression()), !dbg !20
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata ptr %6, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %7, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata ptr %8, metadata !27, metadata !DIExpression()), !dbg !28
  br label %9, !dbg !29

9:                                                ; preds = %138, %2
  %10 = load ptr, ptr %5, align 8, !dbg !30
  %11 = load i8, ptr %10, align 1, !dbg !33
  %12 = icmp ne i8 %11, 0, !dbg !34
  br i1 %12, label %13, label %143, !dbg !34

13:                                               ; preds = %9
  %14 = load ptr, ptr %4, align 8, !dbg !35
  %15 = load i8, ptr %14, align 1, !dbg !38
  %16 = sext i8 %15 to i32, !dbg !38
  %17 = icmp eq i32 %16, 0, !dbg !39
  br i1 %17, label %18, label %24, !dbg !40

18:                                               ; preds = %13
  %19 = load ptr, ptr %5, align 8, !dbg !41
  %20 = load i8, ptr %19, align 1, !dbg !42
  %21 = sext i8 %20 to i32, !dbg !42
  %22 = icmp ne i32 %21, 42, !dbg !43
  br i1 %22, label %23, label %24, !dbg !44

23:                                               ; preds = %18
  store i32 -1, ptr %3, align 4, !dbg !45
  br label %149, !dbg !45

24:                                               ; preds = %18, %13
  %25 = load ptr, ptr %5, align 8, !dbg !46
  %26 = load i8, ptr %25, align 1, !dbg !47
  %27 = sext i8 %26 to i32, !dbg !47
  switch i32 %27, label %31 [
    i32 92, label %28
    i32 63, label %41
    i32 42, label %42
    i32 91, label %71
  ], !dbg !48

28:                                               ; preds = %24
  %29 = load ptr, ptr %5, align 8, !dbg !49
  %30 = getelementptr inbounds i8, ptr %29, i32 1, !dbg !49
  store ptr %30, ptr %5, align 8, !dbg !49
  br label %31, !dbg !51

31:                                               ; preds = %24, %28
  %32 = load ptr, ptr %4, align 8, !dbg !52
  %33 = load i8, ptr %32, align 1, !dbg !54
  %34 = sext i8 %33 to i32, !dbg !54
  %35 = load ptr, ptr %5, align 8, !dbg !55
  %36 = load i8, ptr %35, align 1, !dbg !56
  %37 = sext i8 %36 to i32, !dbg !56
  %38 = icmp ne i32 %34, %37, !dbg !57
  br i1 %38, label %39, label %40, !dbg !58

39:                                               ; preds = %31
  store i32 0, ptr %3, align 4, !dbg !59
  br label %149, !dbg !59

40:                                               ; preds = %31
  br label %138, !dbg !60

41:                                               ; preds = %24
  br label %138, !dbg !61

42:                                               ; preds = %24
  br label %43, !dbg !62

43:                                               ; preds = %49, %42
  %44 = load ptr, ptr %5, align 8, !dbg !63
  %45 = getelementptr inbounds i8, ptr %44, i32 1, !dbg !63
  store ptr %45, ptr %5, align 8, !dbg !63
  %46 = load i8, ptr %45, align 1, !dbg !64
  %47 = sext i8 %46 to i32, !dbg !64
  %48 = icmp eq i32 %47, 42, !dbg !65
  br i1 %48, label %49, label %50, !dbg !62

49:                                               ; preds = %43
  br label %43, !dbg !66, !llvm.loop !67

50:                                               ; preds = %43
  %51 = load ptr, ptr %5, align 8, !dbg !69
  %52 = load i8, ptr %51, align 1, !dbg !71
  %53 = sext i8 %52 to i32, !dbg !71
  %54 = icmp eq i32 %53, 0, !dbg !72
  br i1 %54, label %55, label %56, !dbg !73

55:                                               ; preds = %50
  store i32 1, ptr %3, align 4, !dbg !74
  br label %149, !dbg !74

56:                                               ; preds = %50
  br label %57, !dbg !75

57:                                               ; preds = %69, %56
  %58 = load ptr, ptr %4, align 8, !dbg !76
  %59 = load i8, ptr %58, align 1, !dbg !77
  %60 = icmp ne i8 %59, 0, !dbg !75
  br i1 %60, label %61, label %70, !dbg !75

61:                                               ; preds = %57
  %62 = load ptr, ptr %4, align 8, !dbg !78
  %63 = getelementptr inbounds i8, ptr %62, i32 1, !dbg !78
  store ptr %63, ptr %4, align 8, !dbg !78
  %64 = load ptr, ptr %5, align 8, !dbg !80
  %65 = call i32 @DoMatch(ptr noundef %62, ptr noundef %64), !dbg !81
  store i32 %65, ptr %7, align 4, !dbg !82
  %66 = icmp ne i32 %65, 0, !dbg !83
  br i1 %66, label %67, label %69, !dbg !84

67:                                               ; preds = %61
  %68 = load i32, ptr %7, align 4, !dbg !85
  store i32 %68, ptr %3, align 4, !dbg !86
  br label %149, !dbg !86

69:                                               ; preds = %61
  br label %57, !dbg !75, !llvm.loop !87

70:                                               ; preds = %57
  store i32 -1, ptr %3, align 4, !dbg !89
  br label %149, !dbg !89

71:                                               ; preds = %24
  %72 = load ptr, ptr %5, align 8, !dbg !90
  %73 = getelementptr inbounds i8, ptr %72, i64 1, !dbg !90
  %74 = load i8, ptr %73, align 1, !dbg !90
  %75 = sext i8 %74 to i32, !dbg !90
  %76 = icmp eq i32 %75, 94, !dbg !91
  %77 = zext i1 %76 to i64, !dbg !90
  %78 = select i1 %76, i32 1, i32 0, !dbg !90
  store i32 %78, ptr %8, align 4, !dbg !92
  %79 = load i32, ptr %8, align 4, !dbg !93
  %80 = icmp ne i32 %79, 0, !dbg !93
  br i1 %80, label %81, label %84, !dbg !95

81:                                               ; preds = %71
  %82 = load ptr, ptr %5, align 8, !dbg !96
  %83 = getelementptr inbounds i8, ptr %82, i32 1, !dbg !96
  store ptr %83, ptr %5, align 8, !dbg !96
  br label %84, !dbg !97

84:                                               ; preds = %81, %71
  store i32 256, ptr %6, align 4, !dbg !98
  store i32 0, ptr %7, align 4, !dbg !100
  br label %85, !dbg !101

85:                                               ; preds = %128, %84
  %86 = load ptr, ptr %5, align 8, !dbg !102
  %87 = getelementptr inbounds i8, ptr %86, i32 1, !dbg !102
  store ptr %87, ptr %5, align 8, !dbg !102
  %88 = load i8, ptr %87, align 1, !dbg !104
  %89 = sext i8 %88 to i32, !dbg !104
  %90 = icmp ne i32 %89, 0, !dbg !104
  br i1 %90, label %91, label %96, !dbg !105

91:                                               ; preds = %85
  %92 = load ptr, ptr %5, align 8, !dbg !106
  %93 = load i8, ptr %92, align 1, !dbg !107
  %94 = sext i8 %93 to i32, !dbg !107
  %95 = icmp ne i32 %94, 93, !dbg !108
  br label %96

96:                                               ; preds = %91, %85
  %97 = phi i1 [ false, %85 ], [ %95, %91 ], !dbg !109
  br i1 %97, label %98, label %132, !dbg !110

98:                                               ; preds = %96
  %99 = load ptr, ptr %5, align 8, !dbg !111
  %100 = load i8, ptr %99, align 1, !dbg !113
  %101 = sext i8 %100 to i32, !dbg !113
  %102 = icmp eq i32 %101, 45, !dbg !114
  br i1 %102, label %103, label %118, !dbg !115

103:                                              ; preds = %98
  %104 = load ptr, ptr %4, align 8, !dbg !116
  %105 = load i8, ptr %104, align 1, !dbg !117
  %106 = sext i8 %105 to i32, !dbg !117
  %107 = load ptr, ptr %5, align 8, !dbg !118
  %108 = getelementptr inbounds i8, ptr %107, i32 1, !dbg !118
  store ptr %108, ptr %5, align 8, !dbg !118
  %109 = load i8, ptr %108, align 1, !dbg !119
  %110 = sext i8 %109 to i32, !dbg !119
  %111 = icmp sle i32 %106, %110, !dbg !120
  br i1 %111, label %112, label %127, !dbg !121

112:                                              ; preds = %103
  %113 = load ptr, ptr %4, align 8, !dbg !122
  %114 = load i8, ptr %113, align 1, !dbg !123
  %115 = sext i8 %114 to i32, !dbg !123
  %116 = load i32, ptr %6, align 4, !dbg !124
  %117 = icmp sge i32 %115, %116, !dbg !125
  br i1 %117, label %126, label %127, !dbg !113

118:                                              ; preds = %98
  %119 = load ptr, ptr %4, align 8, !dbg !126
  %120 = load i8, ptr %119, align 1, !dbg !127
  %121 = sext i8 %120 to i32, !dbg !127
  %122 = load ptr, ptr %5, align 8, !dbg !128
  %123 = load i8, ptr %122, align 1, !dbg !129
  %124 = sext i8 %123 to i32, !dbg !129
  %125 = icmp eq i32 %121, %124, !dbg !130
  br i1 %125, label %126, label %127, !dbg !115

126:                                              ; preds = %118, %112
  store i32 1, ptr %7, align 4, !dbg !131
  br label %127, !dbg !132

127:                                              ; preds = %126, %118, %112, %103
  br label %128, !dbg !128

128:                                              ; preds = %127
  %129 = load ptr, ptr %5, align 8, !dbg !133
  %130 = load i8, ptr %129, align 1, !dbg !134
  %131 = sext i8 %130 to i32, !dbg !134
  store i32 %131, ptr %6, align 4, !dbg !135
  br label %85, !dbg !136, !llvm.loop !137

132:                                              ; preds = %96
  %133 = load i32, ptr %7, align 4, !dbg !139
  %134 = load i32, ptr %8, align 4, !dbg !141
  %135 = icmp eq i32 %133, %134, !dbg !142
  br i1 %135, label %136, label %137, !dbg !143

136:                                              ; preds = %132
  store i32 0, ptr %3, align 4, !dbg !144
  br label %149, !dbg !144

137:                                              ; preds = %132
  br label %138, !dbg !145

138:                                              ; preds = %137, %41, %40
  %139 = load ptr, ptr %4, align 8, !dbg !146
  %140 = getelementptr inbounds i8, ptr %139, i32 1, !dbg !146
  store ptr %140, ptr %4, align 8, !dbg !146
  %141 = load ptr, ptr %5, align 8, !dbg !147
  %142 = getelementptr inbounds i8, ptr %141, i32 1, !dbg !147
  store ptr %142, ptr %5, align 8, !dbg !147
  br label %9, !dbg !148, !llvm.loop !149

143:                                              ; preds = %9
  %144 = load ptr, ptr %4, align 8, !dbg !151
  %145 = load i8, ptr %144, align 1, !dbg !152
  %146 = sext i8 %145 to i32, !dbg !152
  %147 = icmp eq i32 %146, 0, !dbg !153
  %148 = zext i1 %147 to i32, !dbg !153
  store i32 %148, ptr %3, align 4, !dbg !154
  br label %149, !dbg !154

149:                                              ; preds = %143, %136, %70, %67, %55, %39, %23
  %150 = load i32, ptr %3, align 4, !dbg !155
  ret i32 %150, !dbg !155
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/raj/transmission/libtransmission/wildmat.c", directory: "/home/raj/transmission/build", checksumkind: CSK_MD5, checksum: "d80f05cb1c320686d72f87619413dabf")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.0"}
!10 = distinct !DISubprogram(name: "DoMatch", scope: !11, file: !11, line: 56, type: !12, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!11 = !DIFile(filename: "libtransmission/wildmat.c", directory: "/home/raj/transmission", checksumkind: CSK_MD5, checksum: "d80f05cb1c320686d72f87619413dabf")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !15}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{}
!19 = !DILocalVariable(name: "text", arg: 1, scope: !10, file: !11, line: 56, type: !15)
!20 = !DILocation(line: 56, column: 23, scope: !10)
!21 = !DILocalVariable(name: "p", arg: 2, scope: !10, file: !11, line: 56, type: !15)
!22 = !DILocation(line: 56, column: 42, scope: !10)
!23 = !DILocalVariable(name: "last", scope: !10, file: !11, line: 58, type: !14)
!24 = !DILocation(line: 58, column: 18, scope: !10)
!25 = !DILocalVariable(name: "matched", scope: !10, file: !11, line: 59, type: !14)
!26 = !DILocation(line: 59, column: 18, scope: !10)
!27 = !DILocalVariable(name: "reverse", scope: !10, file: !11, line: 60, type: !14)
!28 = !DILocation(line: 60, column: 18, scope: !10)
!29 = !DILocation(line: 62, column: 5, scope: !10)
!30 = !DILocation(line: 62, column: 13, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !11, line: 62, column: 5)
!32 = distinct !DILexicalBlock(scope: !10, file: !11, line: 62, column: 5)
!33 = !DILocation(line: 62, column: 12, scope: !31)
!34 = !DILocation(line: 62, column: 5, scope: !32)
!35 = !DILocation(line: 63, column: 7, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !11, line: 63, column: 6)
!37 = distinct !DILexicalBlock(scope: !31, file: !11, line: 62, column: 29)
!38 = !DILocation(line: 63, column: 6, scope: !36)
!39 = !DILocation(line: 63, column: 12, scope: !36)
!40 = !DILocation(line: 63, column: 20, scope: !36)
!41 = !DILocation(line: 63, column: 24, scope: !36)
!42 = !DILocation(line: 63, column: 23, scope: !36)
!43 = !DILocation(line: 63, column: 26, scope: !36)
!44 = !DILocation(line: 63, column: 6, scope: !37)
!45 = !DILocation(line: 64, column: 6, scope: !36)
!46 = !DILocation(line: 65, column: 11, scope: !37)
!47 = !DILocation(line: 65, column: 10, scope: !37)
!48 = !DILocation(line: 65, column: 2, scope: !37)
!49 = !DILocation(line: 68, column: 7, scope: !50)
!50 = distinct !DILexicalBlock(scope: !37, file: !11, line: 65, column: 14)
!51 = !DILocation(line: 68, column: 6, scope: !50)
!52 = !DILocation(line: 71, column: 11, scope: !53)
!53 = distinct !DILexicalBlock(scope: !50, file: !11, line: 71, column: 10)
!54 = !DILocation(line: 71, column: 10, scope: !53)
!55 = !DILocation(line: 71, column: 20, scope: !53)
!56 = !DILocation(line: 71, column: 19, scope: !53)
!57 = !DILocation(line: 71, column: 16, scope: !53)
!58 = !DILocation(line: 71, column: 10, scope: !50)
!59 = !DILocation(line: 72, column: 3, scope: !53)
!60 = !DILocation(line: 73, column: 6, scope: !50)
!61 = !DILocation(line: 76, column: 6, scope: !50)
!62 = !DILocation(line: 78, column: 6, scope: !50)
!63 = !DILocation(line: 78, column: 14, scope: !50)
!64 = !DILocation(line: 78, column: 13, scope: !50)
!65 = !DILocation(line: 78, column: 18, scope: !50)
!66 = !DILocation(line: 80, column: 3, scope: !50)
!67 = distinct !{!67, !62, !66, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !DILocation(line: 81, column: 11, scope: !70)
!70 = distinct !DILexicalBlock(scope: !50, file: !11, line: 81, column: 10)
!71 = !DILocation(line: 81, column: 10, scope: !70)
!72 = !DILocation(line: 81, column: 13, scope: !70)
!73 = !DILocation(line: 81, column: 10, scope: !50)
!74 = !DILocation(line: 83, column: 3, scope: !70)
!75 = !DILocation(line: 84, column: 6, scope: !50)
!76 = !DILocation(line: 84, column: 14, scope: !50)
!77 = !DILocation(line: 84, column: 13, scope: !50)
!78 = !DILocation(line: 85, column: 31, scope: !79)
!79 = distinct !DILexicalBlock(scope: !50, file: !11, line: 85, column: 7)
!80 = !DILocation(line: 85, column: 35, scope: !79)
!81 = !DILocation(line: 85, column: 18, scope: !79)
!82 = !DILocation(line: 85, column: 16, scope: !79)
!83 = !DILocation(line: 85, column: 39, scope: !79)
!84 = !DILocation(line: 85, column: 7, scope: !50)
!85 = !DILocation(line: 86, column: 14, scope: !79)
!86 = !DILocation(line: 86, column: 7, scope: !79)
!87 = distinct !{!87, !75, !88, !68}
!88 = !DILocation(line: 86, column: 14, scope: !50)
!89 = !DILocation(line: 87, column: 6, scope: !50)
!90 = !DILocation(line: 89, column: 16, scope: !50)
!91 = !DILocation(line: 89, column: 21, scope: !50)
!92 = !DILocation(line: 89, column: 14, scope: !50)
!93 = !DILocation(line: 90, column: 10, scope: !94)
!94 = distinct !DILexicalBlock(scope: !50, file: !11, line: 90, column: 10)
!95 = !DILocation(line: 90, column: 10, scope: !50)
!96 = !DILocation(line: 92, column: 4, scope: !94)
!97 = !DILocation(line: 92, column: 3, scope: !94)
!98 = !DILocation(line: 93, column: 16, scope: !99)
!99 = distinct !DILexicalBlock(scope: !50, file: !11, line: 93, column: 6)
!100 = !DILocation(line: 93, column: 32, scope: !99)
!101 = !DILocation(line: 93, column: 11, scope: !99)
!102 = !DILocation(line: 93, column: 42, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !11, line: 93, column: 6)
!104 = !DILocation(line: 93, column: 41, scope: !103)
!105 = !DILocation(line: 93, column: 46, scope: !103)
!106 = !DILocation(line: 93, column: 50, scope: !103)
!107 = !DILocation(line: 93, column: 49, scope: !103)
!108 = !DILocation(line: 93, column: 52, scope: !103)
!109 = !DILocation(line: 0, scope: !103)
!110 = !DILocation(line: 93, column: 6, scope: !99)
!111 = !DILocation(line: 95, column: 8, scope: !112)
!112 = distinct !DILexicalBlock(scope: !103, file: !11, line: 95, column: 7)
!113 = !DILocation(line: 95, column: 7, scope: !112)
!114 = !DILocation(line: 95, column: 10, scope: !112)
!115 = !DILocation(line: 95, column: 7, scope: !103)
!116 = !DILocation(line: 95, column: 20, scope: !112)
!117 = !DILocation(line: 95, column: 19, scope: !112)
!118 = !DILocation(line: 95, column: 29, scope: !112)
!119 = !DILocation(line: 95, column: 28, scope: !112)
!120 = !DILocation(line: 95, column: 25, scope: !112)
!121 = !DILocation(line: 95, column: 33, scope: !112)
!122 = !DILocation(line: 95, column: 37, scope: !112)
!123 = !DILocation(line: 95, column: 36, scope: !112)
!124 = !DILocation(line: 95, column: 45, scope: !112)
!125 = !DILocation(line: 95, column: 42, scope: !112)
!126 = !DILocation(line: 95, column: 53, scope: !112)
!127 = !DILocation(line: 95, column: 52, scope: !112)
!128 = !DILocation(line: 95, column: 62, scope: !112)
!129 = !DILocation(line: 95, column: 61, scope: !112)
!130 = !DILocation(line: 95, column: 58, scope: !112)
!131 = !DILocation(line: 96, column: 15, scope: !112)
!132 = !DILocation(line: 96, column: 7, scope: !112)
!133 = !DILocation(line: 93, column: 68, scope: !103)
!134 = !DILocation(line: 93, column: 67, scope: !103)
!135 = !DILocation(line: 93, column: 65, scope: !103)
!136 = !DILocation(line: 93, column: 6, scope: !103)
!137 = distinct !{!137, !110, !138, !68}
!138 = !DILocation(line: 96, column: 17, scope: !99)
!139 = !DILocation(line: 97, column: 10, scope: !140)
!140 = distinct !DILexicalBlock(scope: !50, file: !11, line: 97, column: 10)
!141 = !DILocation(line: 97, column: 21, scope: !140)
!142 = !DILocation(line: 97, column: 18, scope: !140)
!143 = !DILocation(line: 97, column: 10, scope: !50)
!144 = !DILocation(line: 98, column: 3, scope: !140)
!145 = !DILocation(line: 99, column: 6, scope: !50)
!146 = !DILocation(line: 62, column: 20, scope: !31)
!147 = !DILocation(line: 62, column: 25, scope: !31)
!148 = !DILocation(line: 62, column: 5, scope: !31)
!149 = distinct !{!149, !34, !150, !68}
!150 = !DILocation(line: 101, column: 5, scope: !32)
!151 = !DILocation(line: 107, column: 13, scope: !10)
!152 = !DILocation(line: 107, column: 12, scope: !10)
!153 = !DILocation(line: 107, column: 18, scope: !10)
!154 = !DILocation(line: 107, column: 5, scope: !10)
!155 = !DILocation(line: 108, column: 1, scope: !10)
