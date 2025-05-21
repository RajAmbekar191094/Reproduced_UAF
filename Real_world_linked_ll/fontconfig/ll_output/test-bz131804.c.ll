; ModuleID = './test/test-bz131804.c'
source_filename = "./test/test-bz131804.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"ku-am\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"ku-iq\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"ku-ir\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [6 x i8] c"ku-tr\00", align 1, !dbg !11
@.str.4 = private unnamed_addr constant [6 x i8] c"ps-af\00", align 1, !dbg !13
@.str.5 = private unnamed_addr constant [6 x i8] c"ps-pk\00", align 1, !dbg !15
@.str.6 = private unnamed_addr constant [6 x i8] c"ti-er\00", align 1, !dbg !17
@.str.7 = private unnamed_addr constant [6 x i8] c"ti-et\00", align 1, !dbg !19
@.str.8 = private unnamed_addr constant [6 x i8] c"zh-cn\00", align 1, !dbg !21
@.str.9 = private unnamed_addr constant [6 x i8] c"zh-hk\00", align 1, !dbg !23
@.str.10 = private unnamed_addr constant [6 x i8] c"zh-mo\00", align 1, !dbg !25
@.str.11 = private unnamed_addr constant [6 x i8] c"zh-sg\00", align 1, !dbg !27
@.str.12 = private unnamed_addr constant [6 x i8] c"zh-tw\00", align 1, !dbg !29
@.str.13 = private unnamed_addr constant [6 x i8] c"mn-mn\00", align 1, !dbg !31
@.str.14 = private unnamed_addr constant [6 x i8] c"mn-cn\00", align 1, !dbg !33
@.str.15 = private unnamed_addr constant [7 x i8] c"pap-an\00", align 1, !dbg !35
@.str.16 = private unnamed_addr constant [7 x i8] c"pap-aw\00", align 1, !dbg !40

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comp(ptr noundef %0, ptr noundef %1) #0 !dbg !67 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !72, metadata !DIExpression()), !dbg !73
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata ptr %5, metadata !76, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata ptr %6, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata ptr %7, metadata !83, metadata !DIExpression()), !dbg !84
  %8 = call ptr @FcLangSetCreate(), !dbg !85
  store ptr %8, ptr %5, align 8, !dbg !86
  %9 = call ptr @FcLangSetCreate(), !dbg !87
  store ptr %9, ptr %6, align 8, !dbg !88
  %10 = load ptr, ptr %5, align 8, !dbg !89
  %11 = load ptr, ptr %3, align 8, !dbg !90
  %12 = call i32 @FcLangSetAdd(ptr noundef %10, ptr noundef %11), !dbg !91
  %13 = load ptr, ptr %6, align 8, !dbg !92
  %14 = load ptr, ptr %4, align 8, !dbg !93
  %15 = call i32 @FcLangSetAdd(ptr noundef %13, ptr noundef %14), !dbg !94
  %16 = load ptr, ptr %5, align 8, !dbg !95
  %17 = load ptr, ptr %6, align 8, !dbg !96
  %18 = call i32 @FcLangSetCompare(ptr noundef %16, ptr noundef %17), !dbg !97
  store i32 %18, ptr %7, align 4, !dbg !98
  %19 = load ptr, ptr %5, align 8, !dbg !99
  call void @FcLangSetDestroy(ptr noundef %19), !dbg !100
  %20 = load ptr, ptr %6, align 8, !dbg !101
  call void @FcLangSetDestroy(ptr noundef %20), !dbg !102
  %21 = load i32, ptr %7, align 4, !dbg !103
  ret i32 %21, !dbg !104
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @FcLangSetCreate() #2

declare i32 @FcLangSetAdd(ptr noundef, ptr noundef) #2

declare i32 @FcLangSetCompare(ptr noundef, ptr noundef) #2

declare void @FcLangSetDestroy(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !105 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !109, metadata !DIExpression()), !dbg !110
  store i32 1, ptr %2, align 4, !dbg !110
  %3 = call i32 @comp(ptr noundef @.str, ptr noundef @.str.1), !dbg !111
  %4 = icmp ne i32 %3, 1, !dbg !113
  br i1 %4, label %5, label %7, !dbg !114

5:                                                ; preds = %0
  %6 = load i32, ptr %2, align 4, !dbg !115
  store i32 %6, ptr %1, align 4, !dbg !116
  br label %143, !dbg !116

7:                                                ; preds = %0
  %8 = load i32, ptr %2, align 4, !dbg !117
  %9 = add nsw i32 %8, 1, !dbg !117
  store i32 %9, ptr %2, align 4, !dbg !117
  %10 = call i32 @comp(ptr noundef @.str, ptr noundef @.str.2), !dbg !118
  %11 = icmp ne i32 %10, 1, !dbg !120
  br i1 %11, label %12, label %14, !dbg !121

12:                                               ; preds = %7
  %13 = load i32, ptr %2, align 4, !dbg !122
  store i32 %13, ptr %1, align 4, !dbg !123
  br label %143, !dbg !123

14:                                               ; preds = %7
  %15 = load i32, ptr %2, align 4, !dbg !124
  %16 = add nsw i32 %15, 1, !dbg !124
  store i32 %16, ptr %2, align 4, !dbg !124
  %17 = call i32 @comp(ptr noundef @.str, ptr noundef @.str.3), !dbg !125
  %18 = icmp ne i32 %17, 1, !dbg !127
  br i1 %18, label %19, label %21, !dbg !128

19:                                               ; preds = %14
  %20 = load i32, ptr %2, align 4, !dbg !129
  store i32 %20, ptr %1, align 4, !dbg !130
  br label %143, !dbg !130

21:                                               ; preds = %14
  %22 = load i32, ptr %2, align 4, !dbg !131
  %23 = add nsw i32 %22, 1, !dbg !131
  store i32 %23, ptr %2, align 4, !dbg !131
  %24 = call i32 @comp(ptr noundef @.str.1, ptr noundef @.str.2), !dbg !132
  %25 = icmp ne i32 %24, 1, !dbg !134
  br i1 %25, label %26, label %28, !dbg !135

26:                                               ; preds = %21
  %27 = load i32, ptr %2, align 4, !dbg !136
  store i32 %27, ptr %1, align 4, !dbg !137
  br label %143, !dbg !137

28:                                               ; preds = %21
  %29 = load i32, ptr %2, align 4, !dbg !138
  %30 = add nsw i32 %29, 1, !dbg !138
  store i32 %30, ptr %2, align 4, !dbg !138
  %31 = call i32 @comp(ptr noundef @.str.1, ptr noundef @.str.3), !dbg !139
  %32 = icmp ne i32 %31, 1, !dbg !141
  br i1 %32, label %33, label %35, !dbg !142

33:                                               ; preds = %28
  %34 = load i32, ptr %2, align 4, !dbg !143
  store i32 %34, ptr %1, align 4, !dbg !144
  br label %143, !dbg !144

35:                                               ; preds = %28
  %36 = load i32, ptr %2, align 4, !dbg !145
  %37 = add nsw i32 %36, 1, !dbg !145
  store i32 %37, ptr %2, align 4, !dbg !145
  %38 = call i32 @comp(ptr noundef @.str.2, ptr noundef @.str.3), !dbg !146
  %39 = icmp ne i32 %38, 1, !dbg !148
  br i1 %39, label %40, label %42, !dbg !149

40:                                               ; preds = %35
  %41 = load i32, ptr %2, align 4, !dbg !150
  store i32 %41, ptr %1, align 4, !dbg !151
  br label %143, !dbg !151

42:                                               ; preds = %35
  %43 = load i32, ptr %2, align 4, !dbg !152
  %44 = add nsw i32 %43, 1, !dbg !152
  store i32 %44, ptr %2, align 4, !dbg !152
  %45 = call i32 @comp(ptr noundef @.str.4, ptr noundef @.str.5), !dbg !153
  %46 = icmp ne i32 %45, 1, !dbg !155
  br i1 %46, label %47, label %49, !dbg !156

47:                                               ; preds = %42
  %48 = load i32, ptr %2, align 4, !dbg !157
  store i32 %48, ptr %1, align 4, !dbg !158
  br label %143, !dbg !158

49:                                               ; preds = %42
  %50 = load i32, ptr %2, align 4, !dbg !159
  %51 = add nsw i32 %50, 1, !dbg !159
  store i32 %51, ptr %2, align 4, !dbg !159
  %52 = call i32 @comp(ptr noundef @.str.6, ptr noundef @.str.7), !dbg !160
  %53 = icmp ne i32 %52, 1, !dbg !162
  br i1 %53, label %54, label %56, !dbg !163

54:                                               ; preds = %49
  %55 = load i32, ptr %2, align 4, !dbg !164
  store i32 %55, ptr %1, align 4, !dbg !165
  br label %143, !dbg !165

56:                                               ; preds = %49
  %57 = load i32, ptr %2, align 4, !dbg !166
  %58 = add nsw i32 %57, 1, !dbg !166
  store i32 %58, ptr %2, align 4, !dbg !166
  %59 = call i32 @comp(ptr noundef @.str.8, ptr noundef @.str.9), !dbg !167
  %60 = icmp ne i32 %59, 1, !dbg !169
  br i1 %60, label %61, label %63, !dbg !170

61:                                               ; preds = %56
  %62 = load i32, ptr %2, align 4, !dbg !171
  store i32 %62, ptr %1, align 4, !dbg !172
  br label %143, !dbg !172

63:                                               ; preds = %56
  %64 = load i32, ptr %2, align 4, !dbg !173
  %65 = add nsw i32 %64, 1, !dbg !173
  store i32 %65, ptr %2, align 4, !dbg !173
  %66 = call i32 @comp(ptr noundef @.str.8, ptr noundef @.str.10), !dbg !174
  %67 = icmp ne i32 %66, 1, !dbg !176
  br i1 %67, label %68, label %70, !dbg !177

68:                                               ; preds = %63
  %69 = load i32, ptr %2, align 4, !dbg !178
  store i32 %69, ptr %1, align 4, !dbg !179
  br label %143, !dbg !179

70:                                               ; preds = %63
  %71 = load i32, ptr %2, align 4, !dbg !180
  %72 = add nsw i32 %71, 1, !dbg !180
  store i32 %72, ptr %2, align 4, !dbg !180
  %73 = call i32 @comp(ptr noundef @.str.8, ptr noundef @.str.11), !dbg !181
  %74 = icmp ne i32 %73, 1, !dbg !183
  br i1 %74, label %75, label %77, !dbg !184

75:                                               ; preds = %70
  %76 = load i32, ptr %2, align 4, !dbg !185
  store i32 %76, ptr %1, align 4, !dbg !186
  br label %143, !dbg !186

77:                                               ; preds = %70
  %78 = load i32, ptr %2, align 4, !dbg !187
  %79 = add nsw i32 %78, 1, !dbg !187
  store i32 %79, ptr %2, align 4, !dbg !187
  %80 = call i32 @comp(ptr noundef @.str.8, ptr noundef @.str.12), !dbg !188
  %81 = icmp ne i32 %80, 1, !dbg !190
  br i1 %81, label %82, label %84, !dbg !191

82:                                               ; preds = %77
  %83 = load i32, ptr %2, align 4, !dbg !192
  store i32 %83, ptr %1, align 4, !dbg !193
  br label %143, !dbg !193

84:                                               ; preds = %77
  %85 = load i32, ptr %2, align 4, !dbg !194
  %86 = add nsw i32 %85, 1, !dbg !194
  store i32 %86, ptr %2, align 4, !dbg !194
  %87 = call i32 @comp(ptr noundef @.str.9, ptr noundef @.str.10), !dbg !195
  %88 = icmp ne i32 %87, 1, !dbg !197
  br i1 %88, label %89, label %91, !dbg !198

89:                                               ; preds = %84
  %90 = load i32, ptr %2, align 4, !dbg !199
  store i32 %90, ptr %1, align 4, !dbg !200
  br label %143, !dbg !200

91:                                               ; preds = %84
  %92 = load i32, ptr %2, align 4, !dbg !201
  %93 = add nsw i32 %92, 1, !dbg !201
  store i32 %93, ptr %2, align 4, !dbg !201
  %94 = call i32 @comp(ptr noundef @.str.9, ptr noundef @.str.11), !dbg !202
  %95 = icmp ne i32 %94, 1, !dbg !204
  br i1 %95, label %96, label %98, !dbg !205

96:                                               ; preds = %91
  %97 = load i32, ptr %2, align 4, !dbg !206
  store i32 %97, ptr %1, align 4, !dbg !207
  br label %143, !dbg !207

98:                                               ; preds = %91
  %99 = load i32, ptr %2, align 4, !dbg !208
  %100 = add nsw i32 %99, 1, !dbg !208
  store i32 %100, ptr %2, align 4, !dbg !208
  %101 = call i32 @comp(ptr noundef @.str.9, ptr noundef @.str.12), !dbg !209
  %102 = icmp ne i32 %101, 1, !dbg !211
  br i1 %102, label %103, label %105, !dbg !212

103:                                              ; preds = %98
  %104 = load i32, ptr %2, align 4, !dbg !213
  store i32 %104, ptr %1, align 4, !dbg !214
  br label %143, !dbg !214

105:                                              ; preds = %98
  %106 = load i32, ptr %2, align 4, !dbg !215
  %107 = add nsw i32 %106, 1, !dbg !215
  store i32 %107, ptr %2, align 4, !dbg !215
  %108 = call i32 @comp(ptr noundef @.str.10, ptr noundef @.str.11), !dbg !216
  %109 = icmp ne i32 %108, 1, !dbg !218
  br i1 %109, label %110, label %112, !dbg !219

110:                                              ; preds = %105
  %111 = load i32, ptr %2, align 4, !dbg !220
  store i32 %111, ptr %1, align 4, !dbg !221
  br label %143, !dbg !221

112:                                              ; preds = %105
  %113 = load i32, ptr %2, align 4, !dbg !222
  %114 = add nsw i32 %113, 1, !dbg !222
  store i32 %114, ptr %2, align 4, !dbg !222
  %115 = call i32 @comp(ptr noundef @.str.10, ptr noundef @.str.12), !dbg !223
  %116 = icmp ne i32 %115, 1, !dbg !225
  br i1 %116, label %117, label %119, !dbg !226

117:                                              ; preds = %112
  %118 = load i32, ptr %2, align 4, !dbg !227
  store i32 %118, ptr %1, align 4, !dbg !228
  br label %143, !dbg !228

119:                                              ; preds = %112
  %120 = load i32, ptr %2, align 4, !dbg !229
  %121 = add nsw i32 %120, 1, !dbg !229
  store i32 %121, ptr %2, align 4, !dbg !229
  %122 = call i32 @comp(ptr noundef @.str.11, ptr noundef @.str.12), !dbg !230
  %123 = icmp ne i32 %122, 1, !dbg !232
  br i1 %123, label %124, label %126, !dbg !233

124:                                              ; preds = %119
  %125 = load i32, ptr %2, align 4, !dbg !234
  store i32 %125, ptr %1, align 4, !dbg !235
  br label %143, !dbg !235

126:                                              ; preds = %119
  %127 = load i32, ptr %2, align 4, !dbg !236
  %128 = add nsw i32 %127, 1, !dbg !236
  store i32 %128, ptr %2, align 4, !dbg !236
  %129 = call i32 @comp(ptr noundef @.str.13, ptr noundef @.str.14), !dbg !237
  %130 = icmp ne i32 %129, 1, !dbg !239
  br i1 %130, label %131, label %133, !dbg !240

131:                                              ; preds = %126
  %132 = load i32, ptr %2, align 4, !dbg !241
  store i32 %132, ptr %1, align 4, !dbg !242
  br label %143, !dbg !242

133:                                              ; preds = %126
  %134 = load i32, ptr %2, align 4, !dbg !243
  %135 = add nsw i32 %134, 1, !dbg !243
  store i32 %135, ptr %2, align 4, !dbg !243
  %136 = call i32 @comp(ptr noundef @.str.15, ptr noundef @.str.16), !dbg !244
  %137 = icmp ne i32 %136, 1, !dbg !246
  br i1 %137, label %138, label %140, !dbg !247

138:                                              ; preds = %133
  %139 = load i32, ptr %2, align 4, !dbg !248
  store i32 %139, ptr %1, align 4, !dbg !249
  br label %143, !dbg !249

140:                                              ; preds = %133
  %141 = load i32, ptr %2, align 4, !dbg !250
  %142 = add nsw i32 %141, 1, !dbg !250
  store i32 %142, ptr %2, align 4, !dbg !250
  store i32 0, ptr %1, align 4, !dbg !251
  br label %143, !dbg !251

143:                                              ; preds = %140, %138, %131, %124, %117, %110, %103, %96, %89, %82, %75, %68, %61, %54, %47, %40, %33, %26, %19, %12, %5
  %144 = load i32, ptr %1, align 4, !dbg !252
  ret i32 %144, !dbg !252
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!42}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./test/test-bz131804.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "88f599921983ce2f1f4ac874b910a1f6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !3, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !3, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !3, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !3, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !3, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !3, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !3, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !3, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !3, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !3, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !3, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !3, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !3, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 7)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !37, isLocal: true, isDefinition: true)
!42 = distinct !DICompileUnit(language: DW_LANG_C11, file: !43, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !53, globals: !58, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "test/test-bz131804.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "88f599921983ce2f1f4ac874b910a1f6")
!44 = !{!45}
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_FcLangResult", file: !46, line: 295, baseType: !47, size: 32, elements: !48)
!46 = !DIFile(filename: "./fontconfig/fontconfig.h", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "05e262d1be6a508fc866c546b6803fc6")
!47 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!48 = !{!49, !50, !51, !52}
!49 = !DIEnumerator(name: "FcLangEqual", value: 0)
!50 = !DIEnumerator(name: "FcLangDifferentCountry", value: 1)
!51 = !DIEnumerator(name: "FcLangDifferentTerritory", value: 1)
!52 = !DIEnumerator(name: "FcLangDifferentLang", value: 2)
!53 = !{!54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcChar8", file: !46, line: 43, baseType: !57)
!57 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!58 = !{!0, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !40}
!59 = !{i32 7, !"Dwarf Version", i32 5}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 4}
!62 = !{i32 8, !"PIC Level", i32 2}
!63 = !{i32 7, !"PIE Level", i32 2}
!64 = !{i32 7, !"uwtable", i32 2}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 16.0.0"}
!67 = distinct !DISubprogram(name: "comp", scope: !2, file: !2, line: 29, type: !68, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !71)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !54, !54}
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcLangResult", file: !46, line: 300, baseType: !45)
!71 = !{}
!72 = !DILocalVariable(name: "l1", arg: 1, scope: !67, file: !2, line: 29, type: !54)
!73 = !DILocation(line: 29, column: 21, scope: !67)
!74 = !DILocalVariable(name: "l2", arg: 2, scope: !67, file: !2, line: 29, type: !54)
!75 = !DILocation(line: 29, column: 40, scope: !67)
!76 = !DILocalVariable(name: "ls1", scope: !67, file: !2, line: 31, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcLangSet", file: !46, line: 258, baseType: !79)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcLangSet", file: !46, line: 258, flags: DIFlagFwdDecl)
!80 = !DILocation(line: 31, column: 16, scope: !67)
!81 = !DILocalVariable(name: "ls2", scope: !67, file: !2, line: 31, type: !77)
!82 = !DILocation(line: 31, column: 22, scope: !67)
!83 = !DILocalVariable(name: "result", scope: !67, file: !2, line: 32, type: !70)
!84 = !DILocation(line: 32, column: 18, scope: !67)
!85 = !DILocation(line: 34, column: 11, scope: !67)
!86 = !DILocation(line: 34, column: 9, scope: !67)
!87 = !DILocation(line: 35, column: 11, scope: !67)
!88 = !DILocation(line: 35, column: 9, scope: !67)
!89 = !DILocation(line: 36, column: 18, scope: !67)
!90 = !DILocation(line: 36, column: 23, scope: !67)
!91 = !DILocation(line: 36, column: 5, scope: !67)
!92 = !DILocation(line: 37, column: 18, scope: !67)
!93 = !DILocation(line: 37, column: 23, scope: !67)
!94 = !DILocation(line: 37, column: 5, scope: !67)
!95 = !DILocation(line: 39, column: 31, scope: !67)
!96 = !DILocation(line: 39, column: 36, scope: !67)
!97 = !DILocation(line: 39, column: 14, scope: !67)
!98 = !DILocation(line: 39, column: 12, scope: !67)
!99 = !DILocation(line: 40, column: 22, scope: !67)
!100 = !DILocation(line: 40, column: 5, scope: !67)
!101 = !DILocation(line: 41, column: 22, scope: !67)
!102 = !DILocation(line: 41, column: 5, scope: !67)
!103 = !DILocation(line: 43, column: 12, scope: !67)
!104 = !DILocation(line: 43, column: 5, scope: !67)
!105 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 47, type: !106, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !71)
!106 = !DISubroutineType(types: !107)
!107 = !{!108}
!108 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!109 = !DILocalVariable(name: "i", scope: !105, file: !2, line: 49, type: !108)
!110 = !DILocation(line: 49, column: 9, scope: !105)
!111 = !DILocation(line: 52, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !105, file: !2, line: 52, column: 9)
!113 = !DILocation(line: 52, column: 66, scope: !112)
!114 = !DILocation(line: 52, column: 9, scope: !105)
!115 = !DILocation(line: 53, column: 9, scope: !112)
!116 = !DILocation(line: 53, column: 2, scope: !112)
!117 = !DILocation(line: 54, column: 6, scope: !105)
!118 = !DILocation(line: 56, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !105, file: !2, line: 56, column: 9)
!120 = !DILocation(line: 56, column: 66, scope: !119)
!121 = !DILocation(line: 56, column: 9, scope: !105)
!122 = !DILocation(line: 57, column: 9, scope: !119)
!123 = !DILocation(line: 57, column: 2, scope: !119)
!124 = !DILocation(line: 58, column: 6, scope: !105)
!125 = !DILocation(line: 60, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !105, file: !2, line: 60, column: 9)
!127 = !DILocation(line: 60, column: 66, scope: !126)
!128 = !DILocation(line: 60, column: 9, scope: !105)
!129 = !DILocation(line: 61, column: 9, scope: !126)
!130 = !DILocation(line: 61, column: 2, scope: !126)
!131 = !DILocation(line: 62, column: 6, scope: !105)
!132 = !DILocation(line: 64, column: 9, scope: !133)
!133 = distinct !DILexicalBlock(scope: !105, file: !2, line: 64, column: 9)
!134 = !DILocation(line: 64, column: 66, scope: !133)
!135 = !DILocation(line: 64, column: 9, scope: !105)
!136 = !DILocation(line: 65, column: 9, scope: !133)
!137 = !DILocation(line: 65, column: 2, scope: !133)
!138 = !DILocation(line: 66, column: 6, scope: !105)
!139 = !DILocation(line: 68, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !105, file: !2, line: 68, column: 9)
!141 = !DILocation(line: 68, column: 66, scope: !140)
!142 = !DILocation(line: 68, column: 9, scope: !105)
!143 = !DILocation(line: 69, column: 9, scope: !140)
!144 = !DILocation(line: 69, column: 2, scope: !140)
!145 = !DILocation(line: 70, column: 6, scope: !105)
!146 = !DILocation(line: 72, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !105, file: !2, line: 72, column: 9)
!148 = !DILocation(line: 72, column: 66, scope: !147)
!149 = !DILocation(line: 72, column: 9, scope: !105)
!150 = !DILocation(line: 73, column: 9, scope: !147)
!151 = !DILocation(line: 73, column: 2, scope: !147)
!152 = !DILocation(line: 74, column: 6, scope: !105)
!153 = !DILocation(line: 76, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !105, file: !2, line: 76, column: 9)
!155 = !DILocation(line: 76, column: 66, scope: !154)
!156 = !DILocation(line: 76, column: 9, scope: !105)
!157 = !DILocation(line: 77, column: 9, scope: !154)
!158 = !DILocation(line: 77, column: 2, scope: !154)
!159 = !DILocation(line: 78, column: 6, scope: !105)
!160 = !DILocation(line: 80, column: 9, scope: !161)
!161 = distinct !DILexicalBlock(scope: !105, file: !2, line: 80, column: 9)
!162 = !DILocation(line: 80, column: 66, scope: !161)
!163 = !DILocation(line: 80, column: 9, scope: !105)
!164 = !DILocation(line: 81, column: 9, scope: !161)
!165 = !DILocation(line: 81, column: 2, scope: !161)
!166 = !DILocation(line: 82, column: 6, scope: !105)
!167 = !DILocation(line: 84, column: 9, scope: !168)
!168 = distinct !DILexicalBlock(scope: !105, file: !2, line: 84, column: 9)
!169 = !DILocation(line: 84, column: 66, scope: !168)
!170 = !DILocation(line: 84, column: 9, scope: !105)
!171 = !DILocation(line: 85, column: 9, scope: !168)
!172 = !DILocation(line: 85, column: 2, scope: !168)
!173 = !DILocation(line: 86, column: 6, scope: !105)
!174 = !DILocation(line: 88, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !105, file: !2, line: 88, column: 9)
!176 = !DILocation(line: 88, column: 66, scope: !175)
!177 = !DILocation(line: 88, column: 9, scope: !105)
!178 = !DILocation(line: 89, column: 9, scope: !175)
!179 = !DILocation(line: 89, column: 2, scope: !175)
!180 = !DILocation(line: 90, column: 6, scope: !105)
!181 = !DILocation(line: 92, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !105, file: !2, line: 92, column: 9)
!183 = !DILocation(line: 92, column: 66, scope: !182)
!184 = !DILocation(line: 92, column: 9, scope: !105)
!185 = !DILocation(line: 93, column: 9, scope: !182)
!186 = !DILocation(line: 93, column: 2, scope: !182)
!187 = !DILocation(line: 94, column: 6, scope: !105)
!188 = !DILocation(line: 96, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !105, file: !2, line: 96, column: 9)
!190 = !DILocation(line: 96, column: 66, scope: !189)
!191 = !DILocation(line: 96, column: 9, scope: !105)
!192 = !DILocation(line: 97, column: 9, scope: !189)
!193 = !DILocation(line: 97, column: 2, scope: !189)
!194 = !DILocation(line: 98, column: 6, scope: !105)
!195 = !DILocation(line: 100, column: 9, scope: !196)
!196 = distinct !DILexicalBlock(scope: !105, file: !2, line: 100, column: 9)
!197 = !DILocation(line: 100, column: 66, scope: !196)
!198 = !DILocation(line: 100, column: 9, scope: !105)
!199 = !DILocation(line: 101, column: 9, scope: !196)
!200 = !DILocation(line: 101, column: 2, scope: !196)
!201 = !DILocation(line: 102, column: 6, scope: !105)
!202 = !DILocation(line: 104, column: 9, scope: !203)
!203 = distinct !DILexicalBlock(scope: !105, file: !2, line: 104, column: 9)
!204 = !DILocation(line: 104, column: 66, scope: !203)
!205 = !DILocation(line: 104, column: 9, scope: !105)
!206 = !DILocation(line: 105, column: 9, scope: !203)
!207 = !DILocation(line: 105, column: 2, scope: !203)
!208 = !DILocation(line: 106, column: 6, scope: !105)
!209 = !DILocation(line: 108, column: 9, scope: !210)
!210 = distinct !DILexicalBlock(scope: !105, file: !2, line: 108, column: 9)
!211 = !DILocation(line: 108, column: 66, scope: !210)
!212 = !DILocation(line: 108, column: 9, scope: !105)
!213 = !DILocation(line: 109, column: 9, scope: !210)
!214 = !DILocation(line: 109, column: 2, scope: !210)
!215 = !DILocation(line: 110, column: 6, scope: !105)
!216 = !DILocation(line: 112, column: 9, scope: !217)
!217 = distinct !DILexicalBlock(scope: !105, file: !2, line: 112, column: 9)
!218 = !DILocation(line: 112, column: 66, scope: !217)
!219 = !DILocation(line: 112, column: 9, scope: !105)
!220 = !DILocation(line: 113, column: 9, scope: !217)
!221 = !DILocation(line: 113, column: 2, scope: !217)
!222 = !DILocation(line: 114, column: 6, scope: !105)
!223 = !DILocation(line: 116, column: 9, scope: !224)
!224 = distinct !DILexicalBlock(scope: !105, file: !2, line: 116, column: 9)
!225 = !DILocation(line: 116, column: 66, scope: !224)
!226 = !DILocation(line: 116, column: 9, scope: !105)
!227 = !DILocation(line: 117, column: 9, scope: !224)
!228 = !DILocation(line: 117, column: 2, scope: !224)
!229 = !DILocation(line: 118, column: 6, scope: !105)
!230 = !DILocation(line: 120, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !105, file: !2, line: 120, column: 9)
!232 = !DILocation(line: 120, column: 66, scope: !231)
!233 = !DILocation(line: 120, column: 9, scope: !105)
!234 = !DILocation(line: 121, column: 9, scope: !231)
!235 = !DILocation(line: 121, column: 2, scope: !231)
!236 = !DILocation(line: 122, column: 6, scope: !105)
!237 = !DILocation(line: 124, column: 9, scope: !238)
!238 = distinct !DILexicalBlock(scope: !105, file: !2, line: 124, column: 9)
!239 = !DILocation(line: 124, column: 66, scope: !238)
!240 = !DILocation(line: 124, column: 9, scope: !105)
!241 = !DILocation(line: 125, column: 9, scope: !238)
!242 = !DILocation(line: 125, column: 2, scope: !238)
!243 = !DILocation(line: 126, column: 6, scope: !105)
!244 = !DILocation(line: 128, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !105, file: !2, line: 128, column: 9)
!246 = !DILocation(line: 128, column: 68, scope: !245)
!247 = !DILocation(line: 128, column: 9, scope: !105)
!248 = !DILocation(line: 129, column: 9, scope: !245)
!249 = !DILocation(line: 129, column: 2, scope: !245)
!250 = !DILocation(line: 130, column: 6, scope: !105)
!251 = !DILocation(line: 132, column: 5, scope: !105)
!252 = !DILocation(line: 133, column: 1, scope: !105)
