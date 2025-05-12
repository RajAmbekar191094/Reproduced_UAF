; ModuleID = './test/test-name-parse.c'
source_filename = "./test/test-name-parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"family\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"sans-serif\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [12 x i8] c"sans\\-serif\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [4 x i8] c"Foo\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [5 x i8] c"size\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [7 x i8] c"Foo-10\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [4 x i8] c"Bar\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [11 x i8] c"Foo,Bar-10\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [7 x i8] c"weight\00", align 1, !dbg !33
@.str.9 = private unnamed_addr constant [18 x i8] c"Foo:weight=medium\00", align 1, !dbg !35
@.str.10 = private unnamed_addr constant [18 x i8] c"Foo:weight_medium\00", align 1, !dbg !40
@.str.11 = private unnamed_addr constant [8 x i8] c":medium\00", align 1, !dbg !42
@.str.12 = private unnamed_addr constant [6 x i8] c"width\00", align 1, !dbg !47
@.str.13 = private unnamed_addr constant [8 x i8] c":normal\00", align 1, !dbg !52
@.str.14 = private unnamed_addr constant [22 x i8] c":weight=[medium bold]\00", align 1, !dbg !54

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !76 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !81, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata ptr %3, metadata !86, metadata !DIExpression()), !dbg !87
  store i32 0, ptr %3, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata ptr %4, metadata !88, metadata !DIExpression()), !dbg !89
  %6 = call ptr @FcPatternCreate(), !dbg !90
  store ptr %6, ptr %2, align 8, !dbg !90
  %7 = load i32, ptr %3, align 4, !dbg !90
  %8 = add nsw i32 %7, 1, !dbg !90
  store i32 %8, ptr %3, align 4, !dbg !90
  %9 = load ptr, ptr %2, align 8, !dbg !91
  %10 = call i32 @FcPatternAddString(ptr noundef %9, ptr noundef @.str, ptr noundef @.str.1), !dbg !93
  %11 = load ptr, ptr %2, align 8, !dbg !94
  %12 = call i32 @test(ptr noundef @.str.2, ptr noundef %11), !dbg !96
  store i32 %12, ptr %4, align 4, !dbg !97
  %13 = icmp ne i32 %12, 0, !dbg !98
  br i1 %13, label %14, label %15, !dbg !99

14:                                               ; preds = %0
  br label %118, !dbg !100

15:                                               ; preds = %0
  %16 = load ptr, ptr %2, align 8, !dbg !101
  call void @FcPatternDestroy(ptr noundef %16), !dbg !101
  store ptr null, ptr %2, align 8, !dbg !101
  %17 = call ptr @FcPatternCreate(), !dbg !102
  store ptr %17, ptr %2, align 8, !dbg !102
  %18 = load i32, ptr %3, align 4, !dbg !102
  %19 = add nsw i32 %18, 1, !dbg !102
  store i32 %19, ptr %3, align 4, !dbg !102
  %20 = load ptr, ptr %2, align 8, !dbg !103
  %21 = call i32 @FcPatternAddString(ptr noundef %20, ptr noundef @.str, ptr noundef @.str.3), !dbg !105
  %22 = load ptr, ptr %2, align 8, !dbg !106
  %23 = call i32 @FcPatternAddInteger(ptr noundef %22, ptr noundef @.str.4, i32 noundef 10), !dbg !107
  %24 = load ptr, ptr %2, align 8, !dbg !108
  %25 = call i32 @test(ptr noundef @.str.5, ptr noundef %24), !dbg !110
  store i32 %25, ptr %4, align 4, !dbg !111
  %26 = icmp ne i32 %25, 0, !dbg !112
  br i1 %26, label %27, label %28, !dbg !113

27:                                               ; preds = %15
  br label %118, !dbg !114

28:                                               ; preds = %15
  %29 = load ptr, ptr %2, align 8, !dbg !115
  call void @FcPatternDestroy(ptr noundef %29), !dbg !115
  store ptr null, ptr %2, align 8, !dbg !115
  %30 = call ptr @FcPatternCreate(), !dbg !116
  store ptr %30, ptr %2, align 8, !dbg !116
  %31 = load i32, ptr %3, align 4, !dbg !116
  %32 = add nsw i32 %31, 1, !dbg !116
  store i32 %32, ptr %3, align 4, !dbg !116
  %33 = load ptr, ptr %2, align 8, !dbg !117
  %34 = call i32 @FcPatternAddString(ptr noundef %33, ptr noundef @.str, ptr noundef @.str.3), !dbg !119
  %35 = load ptr, ptr %2, align 8, !dbg !120
  %36 = call i32 @FcPatternAddString(ptr noundef %35, ptr noundef @.str, ptr noundef @.str.6), !dbg !121
  %37 = load ptr, ptr %2, align 8, !dbg !122
  %38 = call i32 @FcPatternAddInteger(ptr noundef %37, ptr noundef @.str.4, i32 noundef 10), !dbg !123
  %39 = load ptr, ptr %2, align 8, !dbg !124
  %40 = call i32 @test(ptr noundef @.str.7, ptr noundef %39), !dbg !126
  store i32 %40, ptr %4, align 4, !dbg !127
  %41 = icmp ne i32 %40, 0, !dbg !128
  br i1 %41, label %42, label %43, !dbg !129

42:                                               ; preds = %28
  br label %118, !dbg !130

43:                                               ; preds = %28
  %44 = load ptr, ptr %2, align 8, !dbg !131
  call void @FcPatternDestroy(ptr noundef %44), !dbg !131
  store ptr null, ptr %2, align 8, !dbg !131
  %45 = call ptr @FcPatternCreate(), !dbg !132
  store ptr %45, ptr %2, align 8, !dbg !132
  %46 = load i32, ptr %3, align 4, !dbg !132
  %47 = add nsw i32 %46, 1, !dbg !132
  store i32 %47, ptr %3, align 4, !dbg !132
  %48 = load ptr, ptr %2, align 8, !dbg !133
  %49 = call i32 @FcPatternAddString(ptr noundef %48, ptr noundef @.str, ptr noundef @.str.3), !dbg !135
  %50 = load ptr, ptr %2, align 8, !dbg !136
  %51 = call i32 @FcPatternAddInteger(ptr noundef %50, ptr noundef @.str.8, i32 noundef 100), !dbg !137
  %52 = load ptr, ptr %2, align 8, !dbg !138
  %53 = call i32 @test(ptr noundef @.str.9, ptr noundef %52), !dbg !140
  store i32 %53, ptr %4, align 4, !dbg !141
  %54 = icmp ne i32 %53, 0, !dbg !142
  br i1 %54, label %55, label %56, !dbg !143

55:                                               ; preds = %43
  br label %118, !dbg !144

56:                                               ; preds = %43
  %57 = load ptr, ptr %2, align 8, !dbg !145
  call void @FcPatternDestroy(ptr noundef %57), !dbg !145
  store ptr null, ptr %2, align 8, !dbg !145
  %58 = call ptr @FcPatternCreate(), !dbg !146
  store ptr %58, ptr %2, align 8, !dbg !146
  %59 = load i32, ptr %3, align 4, !dbg !146
  %60 = add nsw i32 %59, 1, !dbg !146
  store i32 %60, ptr %3, align 4, !dbg !146
  %61 = load ptr, ptr %2, align 8, !dbg !147
  %62 = call i32 @FcPatternAddString(ptr noundef %61, ptr noundef @.str, ptr noundef @.str.3), !dbg !149
  %63 = load ptr, ptr %2, align 8, !dbg !150
  %64 = call i32 @FcPatternAddInteger(ptr noundef %63, ptr noundef @.str.8, i32 noundef 100), !dbg !151
  %65 = load ptr, ptr %2, align 8, !dbg !152
  %66 = call i32 @test(ptr noundef @.str.10, ptr noundef %65), !dbg !154
  store i32 %66, ptr %4, align 4, !dbg !155
  %67 = icmp ne i32 %66, 0, !dbg !156
  br i1 %67, label %68, label %69, !dbg !157

68:                                               ; preds = %56
  br label %118, !dbg !158

69:                                               ; preds = %56
  %70 = load ptr, ptr %2, align 8, !dbg !159
  call void @FcPatternDestroy(ptr noundef %70), !dbg !159
  store ptr null, ptr %2, align 8, !dbg !159
  %71 = call ptr @FcPatternCreate(), !dbg !160
  store ptr %71, ptr %2, align 8, !dbg !160
  %72 = load i32, ptr %3, align 4, !dbg !160
  %73 = add nsw i32 %72, 1, !dbg !160
  store i32 %73, ptr %3, align 4, !dbg !160
  %74 = load ptr, ptr %2, align 8, !dbg !161
  %75 = call i32 @FcPatternAddInteger(ptr noundef %74, ptr noundef @.str.8, i32 noundef 100), !dbg !163
  %76 = load ptr, ptr %2, align 8, !dbg !164
  %77 = call i32 @test(ptr noundef @.str.11, ptr noundef %76), !dbg !166
  store i32 %77, ptr %4, align 4, !dbg !167
  %78 = icmp ne i32 %77, 0, !dbg !168
  br i1 %78, label %79, label %80, !dbg !169

79:                                               ; preds = %69
  br label %118, !dbg !170

80:                                               ; preds = %69
  %81 = load ptr, ptr %2, align 8, !dbg !171
  call void @FcPatternDestroy(ptr noundef %81), !dbg !171
  store ptr null, ptr %2, align 8, !dbg !171
  %82 = call ptr @FcPatternCreate(), !dbg !172
  store ptr %82, ptr %2, align 8, !dbg !172
  %83 = load i32, ptr %3, align 4, !dbg !172
  %84 = add nsw i32 %83, 1, !dbg !172
  store i32 %84, ptr %3, align 4, !dbg !172
  %85 = load ptr, ptr %2, align 8, !dbg !173
  %86 = call i32 @FcPatternAddInteger(ptr noundef %85, ptr noundef @.str.12, i32 noundef 100), !dbg !175
  %87 = load ptr, ptr %2, align 8, !dbg !176
  %88 = call i32 @test(ptr noundef @.str.13, ptr noundef %87), !dbg !178
  store i32 %88, ptr %4, align 4, !dbg !179
  %89 = icmp ne i32 %88, 0, !dbg !180
  br i1 %89, label %90, label %91, !dbg !181

90:                                               ; preds = %80
  br label %118, !dbg !182

91:                                               ; preds = %80
  %92 = load ptr, ptr %2, align 8, !dbg !183
  call void @FcPatternDestroy(ptr noundef %92), !dbg !183
  store ptr null, ptr %2, align 8, !dbg !183
  %93 = call ptr @FcPatternCreate(), !dbg !184
  store ptr %93, ptr %2, align 8, !dbg !184
  %94 = load i32, ptr %3, align 4, !dbg !184
  %95 = add nsw i32 %94, 1, !dbg !184
  store i32 %95, ptr %3, align 4, !dbg !184
  %96 = load ptr, ptr %2, align 8, !dbg !185
  %97 = call i32 @FcPatternAddInteger(ptr noundef %96, ptr noundef @.str.12, i32 noundef 100), !dbg !187
  %98 = load ptr, ptr %2, align 8, !dbg !188
  %99 = call i32 @test(ptr noundef @.str.13, ptr noundef %98), !dbg !190
  store i32 %99, ptr %4, align 4, !dbg !191
  %100 = icmp ne i32 %99, 0, !dbg !192
  br i1 %100, label %101, label %102, !dbg !193

101:                                              ; preds = %91
  br label %118, !dbg !194

102:                                              ; preds = %91
  %103 = load ptr, ptr %2, align 8, !dbg !195
  call void @FcPatternDestroy(ptr noundef %103), !dbg !195
  store ptr null, ptr %2, align 8, !dbg !195
  %104 = call ptr @FcPatternCreate(), !dbg !196
  store ptr %104, ptr %2, align 8, !dbg !196
  %105 = load i32, ptr %3, align 4, !dbg !196
  %106 = add nsw i32 %105, 1, !dbg !196
  store i32 %106, ptr %3, align 4, !dbg !196
  call void @llvm.dbg.declare(metadata ptr %5, metadata !197, metadata !DIExpression()), !dbg !202
  %107 = call ptr @FcRangeCreateDouble(double noundef 1.000000e+02, double noundef 2.000000e+02), !dbg !203
  store ptr %107, ptr %5, align 8, !dbg !202
  %108 = load ptr, ptr %2, align 8, !dbg !204
  %109 = load ptr, ptr %5, align 8, !dbg !205
  %110 = call i32 @FcPatternAddRange(ptr noundef %108, ptr noundef @.str.8, ptr noundef %109), !dbg !206
  %111 = load ptr, ptr %5, align 8, !dbg !207
  call void @FcRangeDestroy(ptr noundef %111), !dbg !208
  %112 = load ptr, ptr %2, align 8, !dbg !209
  %113 = call i32 @test(ptr noundef @.str.14, ptr noundef %112), !dbg !211
  store i32 %113, ptr %4, align 4, !dbg !212
  %114 = icmp ne i32 %113, 0, !dbg !213
  br i1 %114, label %115, label %116, !dbg !214

115:                                              ; preds = %102
  br label %118, !dbg !215

116:                                              ; preds = %102
  %117 = load ptr, ptr %2, align 8, !dbg !216
  call void @FcPatternDestroy(ptr noundef %117), !dbg !216
  store ptr null, ptr %2, align 8, !dbg !216
  br label %118, !dbg !216

118:                                              ; preds = %116, %115, %101, %90, %79, %68, %55, %42, %27, %14
  call void @llvm.dbg.label(metadata !217), !dbg !218
  %119 = load ptr, ptr %2, align 8, !dbg !219
  %120 = icmp ne ptr %119, null, !dbg !219
  br i1 %120, label %121, label %123, !dbg !221

121:                                              ; preds = %118
  %122 = load ptr, ptr %2, align 8, !dbg !222
  call void @FcPatternDestroy(ptr noundef %122), !dbg !223
  br label %123, !dbg !223

123:                                              ; preds = %121, %118
  %124 = load i32, ptr %4, align 4, !dbg !224
  %125 = icmp eq i32 %124, 0, !dbg !225
  br i1 %125, label %126, label %127, !dbg !224

126:                                              ; preds = %123
  br label %133, !dbg !224

127:                                              ; preds = %123
  %128 = load i32, ptr %3, align 4, !dbg !226
  %129 = sub nsw i32 %128, 1, !dbg !227
  %130 = mul nsw i32 %129, 2, !dbg !228
  %131 = load i32, ptr %4, align 4, !dbg !229
  %132 = add nsw i32 %130, %131, !dbg !230
  br label %133, !dbg !224

133:                                              ; preds = %127, %126
  %134 = phi i32 [ 0, %126 ], [ %132, %127 ], !dbg !224
  ret i32 %134, !dbg !231
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @FcPatternCreate() #2

declare i32 @FcPatternAddString(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test(ptr noundef %0, ptr noundef %1) #0 !dbg !232 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !237, metadata !DIExpression()), !dbg !238
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata ptr %5, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata ptr %6, metadata !243, metadata !DIExpression()), !dbg !244
  store i32 0, ptr %6, align 4, !dbg !244
  %7 = load i32, ptr %6, align 4, !dbg !245
  %8 = add nsw i32 %7, 1, !dbg !245
  store i32 %8, ptr %6, align 4, !dbg !245
  %9 = load ptr, ptr %3, align 8, !dbg !246
  %10 = call ptr @FcNameParse(ptr noundef %9), !dbg !247
  store ptr %10, ptr %5, align 8, !dbg !248
  %11 = load ptr, ptr %5, align 8, !dbg !249
  %12 = icmp ne ptr %11, null, !dbg !249
  br i1 %12, label %14, label %13, !dbg !251

13:                                               ; preds = %2
  br label %23, !dbg !252

14:                                               ; preds = %2
  %15 = load i32, ptr %6, align 4, !dbg !253
  %16 = add nsw i32 %15, 1, !dbg !253
  store i32 %16, ptr %6, align 4, !dbg !253
  %17 = load ptr, ptr %5, align 8, !dbg !254
  %18 = load ptr, ptr %4, align 8, !dbg !256
  %19 = call i32 @FcPatternEqual(ptr noundef %17, ptr noundef %18), !dbg !257
  %20 = icmp ne i32 %19, 0, !dbg !257
  br i1 %20, label %22, label %21, !dbg !258

21:                                               ; preds = %14
  br label %23, !dbg !259

22:                                               ; preds = %14
  store i32 0, ptr %6, align 4, !dbg !260
  br label %23, !dbg !261

23:                                               ; preds = %22, %21, %13
  call void @llvm.dbg.label(metadata !262), !dbg !263
  %24 = load ptr, ptr %5, align 8, !dbg !264
  call void @FcPatternDestroy(ptr noundef %24), !dbg !265
  %25 = load i32, ptr %6, align 4, !dbg !266
  ret i32 %25, !dbg !267
}

declare void @FcPatternDestroy(ptr noundef) #2

declare i32 @FcPatternAddInteger(ptr noundef, ptr noundef, i32 noundef) #2

declare ptr @FcRangeCreateDouble(double noundef, double noundef) #2

declare i32 @FcPatternAddRange(ptr noundef, ptr noundef, ptr noundef) #2

declare void @FcRangeDestroy(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare ptr @FcNameParse(ptr noundef) #2

declare i32 @FcPatternEqual(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!59}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./test/test-name-parse.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "a26d895d107e57be9f2aeb7ca916b6f5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 7)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 12)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 5)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !3, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !19, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !9, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !3, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 18)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !37, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 8)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 6)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !44, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 22)
!59 = distinct !DICompileUnit(language: DW_LANG_C11, file: !60, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !61, globals: !67, splitDebugInlining: false, nameTableKind: None)
!60 = !DIFile(filename: "test/test-name-parse.c", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "a26d895d107e57be9f2aeb7ca916b6f5")
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcChar8", file: !65, line: 43, baseType: !66)
!65 = !DIFile(filename: "./fontconfig/fontconfig.h", directory: "/home/raj/fontconfig-shared", checksumkind: CSK_MD5, checksum: "05e262d1be6a508fc866c546b6803fc6")
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !{!0, !7, !12, !17, !22, !27, !29, !31, !33, !35, !40, !42, !47, !52, !54}
!68 = !{i32 7, !"Dwarf Version", i32 5}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 8, !"PIC Level", i32 2}
!72 = !{i32 7, !"PIE Level", i32 2}
!73 = !{i32 7, !"uwtable", i32 2}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 16.0.0"}
!76 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 27, type: !77, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !80)
!77 = !DISubroutineType(types: !78)
!78 = !{!79}
!79 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!80 = !{}
!81 = !DILocalVariable(name: "expect", scope: !76, file: !2, line: 29, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcPattern", file: !65, line: 251, baseType: !84)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcPattern", file: !65, line: 251, flags: DIFlagFwdDecl)
!85 = !DILocation(line: 29, column: 16, scope: !76)
!86 = !DILocalVariable(name: "c", scope: !76, file: !2, line: 30, type: !79)
!87 = !DILocation(line: 30, column: 9, scope: !76)
!88 = !DILocalVariable(name: "ret", scope: !76, file: !2, line: 30, type: !79)
!89 = !DILocation(line: 30, column: 16, scope: !76)
!90 = !DILocation(line: 32, column: 5, scope: !76)
!91 = !DILocation(line: 33, column: 22, scope: !92)
!92 = distinct !DILexicalBlock(scope: !76, file: !2, line: 32, column: 20)
!93 = !DILocation(line: 33, column: 2, scope: !92)
!94 = !DILocation(line: 34, column: 52, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !2, line: 34, column: 6)
!96 = !DILocation(line: 34, column: 13, scope: !95)
!97 = !DILocation(line: 34, column: 11, scope: !95)
!98 = !DILocation(line: 34, column: 61, scope: !95)
!99 = !DILocation(line: 34, column: 6, scope: !92)
!100 = !DILocation(line: 35, column: 6, scope: !95)
!101 = !DILocation(line: 36, column: 7, scope: !76)
!102 = !DILocation(line: 37, column: 5, scope: !76)
!103 = !DILocation(line: 38, column: 22, scope: !104)
!104 = distinct !DILexicalBlock(scope: !76, file: !2, line: 37, column: 20)
!105 = !DILocation(line: 38, column: 2, scope: !104)
!106 = !DILocation(line: 39, column: 23, scope: !104)
!107 = !DILocation(line: 39, column: 2, scope: !104)
!108 = !DILocation(line: 40, column: 46, scope: !109)
!109 = distinct !DILexicalBlock(scope: !104, file: !2, line: 40, column: 6)
!110 = !DILocation(line: 40, column: 13, scope: !109)
!111 = !DILocation(line: 40, column: 11, scope: !109)
!112 = !DILocation(line: 40, column: 55, scope: !109)
!113 = !DILocation(line: 40, column: 6, scope: !104)
!114 = !DILocation(line: 41, column: 6, scope: !109)
!115 = !DILocation(line: 42, column: 7, scope: !76)
!116 = !DILocation(line: 43, column: 5, scope: !76)
!117 = !DILocation(line: 44, column: 22, scope: !118)
!118 = distinct !DILexicalBlock(scope: !76, file: !2, line: 43, column: 20)
!119 = !DILocation(line: 44, column: 2, scope: !118)
!120 = !DILocation(line: 45, column: 22, scope: !118)
!121 = !DILocation(line: 45, column: 2, scope: !118)
!122 = !DILocation(line: 46, column: 23, scope: !118)
!123 = !DILocation(line: 46, column: 2, scope: !118)
!124 = !DILocation(line: 47, column: 50, scope: !125)
!125 = distinct !DILexicalBlock(scope: !118, file: !2, line: 47, column: 6)
!126 = !DILocation(line: 47, column: 13, scope: !125)
!127 = !DILocation(line: 47, column: 11, scope: !125)
!128 = !DILocation(line: 47, column: 59, scope: !125)
!129 = !DILocation(line: 47, column: 6, scope: !118)
!130 = !DILocation(line: 48, column: 6, scope: !125)
!131 = !DILocation(line: 49, column: 7, scope: !76)
!132 = !DILocation(line: 50, column: 5, scope: !76)
!133 = !DILocation(line: 51, column: 22, scope: !134)
!134 = distinct !DILexicalBlock(scope: !76, file: !2, line: 50, column: 20)
!135 = !DILocation(line: 51, column: 2, scope: !134)
!136 = !DILocation(line: 52, column: 23, scope: !134)
!137 = !DILocation(line: 52, column: 2, scope: !134)
!138 = !DILocation(line: 53, column: 57, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !2, line: 53, column: 6)
!140 = !DILocation(line: 53, column: 13, scope: !139)
!141 = !DILocation(line: 53, column: 11, scope: !139)
!142 = !DILocation(line: 53, column: 66, scope: !139)
!143 = !DILocation(line: 53, column: 6, scope: !134)
!144 = !DILocation(line: 54, column: 6, scope: !139)
!145 = !DILocation(line: 55, column: 7, scope: !76)
!146 = !DILocation(line: 56, column: 5, scope: !76)
!147 = !DILocation(line: 57, column: 22, scope: !148)
!148 = distinct !DILexicalBlock(scope: !76, file: !2, line: 56, column: 20)
!149 = !DILocation(line: 57, column: 2, scope: !148)
!150 = !DILocation(line: 58, column: 23, scope: !148)
!151 = !DILocation(line: 58, column: 2, scope: !148)
!152 = !DILocation(line: 59, column: 57, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !2, line: 59, column: 6)
!154 = !DILocation(line: 59, column: 13, scope: !153)
!155 = !DILocation(line: 59, column: 11, scope: !153)
!156 = !DILocation(line: 59, column: 66, scope: !153)
!157 = !DILocation(line: 59, column: 6, scope: !148)
!158 = !DILocation(line: 60, column: 6, scope: !153)
!159 = !DILocation(line: 61, column: 7, scope: !76)
!160 = !DILocation(line: 62, column: 5, scope: !76)
!161 = !DILocation(line: 63, column: 23, scope: !162)
!162 = distinct !DILexicalBlock(scope: !76, file: !2, line: 62, column: 20)
!163 = !DILocation(line: 63, column: 2, scope: !162)
!164 = !DILocation(line: 64, column: 47, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !2, line: 64, column: 6)
!166 = !DILocation(line: 64, column: 13, scope: !165)
!167 = !DILocation(line: 64, column: 11, scope: !165)
!168 = !DILocation(line: 64, column: 56, scope: !165)
!169 = !DILocation(line: 64, column: 6, scope: !162)
!170 = !DILocation(line: 65, column: 6, scope: !165)
!171 = !DILocation(line: 66, column: 7, scope: !76)
!172 = !DILocation(line: 67, column: 5, scope: !76)
!173 = !DILocation(line: 68, column: 23, scope: !174)
!174 = distinct !DILexicalBlock(scope: !76, file: !2, line: 67, column: 20)
!175 = !DILocation(line: 68, column: 2, scope: !174)
!176 = !DILocation(line: 69, column: 47, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !2, line: 69, column: 6)
!178 = !DILocation(line: 69, column: 13, scope: !177)
!179 = !DILocation(line: 69, column: 11, scope: !177)
!180 = !DILocation(line: 69, column: 56, scope: !177)
!181 = !DILocation(line: 69, column: 6, scope: !174)
!182 = !DILocation(line: 70, column: 6, scope: !177)
!183 = !DILocation(line: 71, column: 7, scope: !76)
!184 = !DILocation(line: 72, column: 5, scope: !76)
!185 = !DILocation(line: 73, column: 23, scope: !186)
!186 = distinct !DILexicalBlock(scope: !76, file: !2, line: 72, column: 20)
!187 = !DILocation(line: 73, column: 2, scope: !186)
!188 = !DILocation(line: 74, column: 47, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !2, line: 74, column: 6)
!190 = !DILocation(line: 74, column: 13, scope: !189)
!191 = !DILocation(line: 74, column: 11, scope: !189)
!192 = !DILocation(line: 74, column: 56, scope: !189)
!193 = !DILocation(line: 74, column: 6, scope: !186)
!194 = !DILocation(line: 75, column: 6, scope: !189)
!195 = !DILocation(line: 76, column: 7, scope: !76)
!196 = !DILocation(line: 77, column: 5, scope: !76)
!197 = !DILocalVariable(name: "r", scope: !198, file: !2, line: 78, type: !199)
!198 = distinct !DILexicalBlock(scope: !76, file: !2, line: 77, column: 20)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "FcRange", file: !65, line: 260, baseType: !201)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FcRange", file: !65, line: 260, flags: DIFlagFwdDecl)
!202 = !DILocation(line: 78, column: 11, scope: !198)
!203 = !DILocation(line: 78, column: 15, scope: !198)
!204 = !DILocation(line: 79, column: 21, scope: !198)
!205 = !DILocation(line: 79, column: 40, scope: !198)
!206 = !DILocation(line: 79, column: 2, scope: !198)
!207 = !DILocation(line: 80, column: 18, scope: !198)
!208 = !DILocation(line: 80, column: 2, scope: !198)
!209 = !DILocation(line: 81, column: 61, scope: !210)
!210 = distinct !DILexicalBlock(scope: !198, file: !2, line: 81, column: 6)
!211 = !DILocation(line: 81, column: 13, scope: !210)
!212 = !DILocation(line: 81, column: 11, scope: !210)
!213 = !DILocation(line: 81, column: 70, scope: !210)
!214 = !DILocation(line: 81, column: 6, scope: !198)
!215 = !DILocation(line: 82, column: 6, scope: !210)
!216 = !DILocation(line: 83, column: 7, scope: !76)
!217 = !DILabel(scope: !76, name: "bail", file: !2, line: 85)
!218 = !DILocation(line: 85, column: 1, scope: !76)
!219 = !DILocation(line: 86, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !76, file: !2, line: 86, column: 9)
!221 = !DILocation(line: 86, column: 9, scope: !76)
!222 = !DILocation(line: 87, column: 20, scope: !220)
!223 = !DILocation(line: 87, column: 2, scope: !220)
!224 = !DILocation(line: 89, column: 12, scope: !76)
!225 = !DILocation(line: 89, column: 16, scope: !76)
!226 = !DILocation(line: 89, column: 28, scope: !76)
!227 = !DILocation(line: 89, column: 30, scope: !76)
!228 = !DILocation(line: 89, column: 35, scope: !76)
!229 = !DILocation(line: 89, column: 41, scope: !76)
!230 = !DILocation(line: 89, column: 39, scope: !76)
!231 = !DILocation(line: 89, column: 5, scope: !76)
!232 = distinct !DISubprogram(name: "test", scope: !2, file: !2, line: 5, type: !233, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !80)
!233 = !DISubroutineType(types: !234)
!234 = !{!79, !62, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!237 = !DILocalVariable(name: "query", arg: 1, scope: !232, file: !2, line: 5, type: !62)
!238 = !DILocation(line: 5, column: 22, scope: !232)
!239 = !DILocalVariable(name: "expect", arg: 2, scope: !232, file: !2, line: 5, type: !235)
!240 = !DILocation(line: 5, column: 46, scope: !232)
!241 = !DILocalVariable(name: "pat", scope: !232, file: !2, line: 7, type: !82)
!242 = !DILocation(line: 7, column: 16, scope: !232)
!243 = !DILocalVariable(name: "c", scope: !232, file: !2, line: 8, type: !79)
!244 = !DILocation(line: 8, column: 9, scope: !232)
!245 = !DILocation(line: 10, column: 6, scope: !232)
!246 = !DILocation(line: 11, column: 24, scope: !232)
!247 = !DILocation(line: 11, column: 11, scope: !232)
!248 = !DILocation(line: 11, column: 9, scope: !232)
!249 = !DILocation(line: 12, column: 10, scope: !250)
!250 = distinct !DILexicalBlock(scope: !232, file: !2, line: 12, column: 9)
!251 = !DILocation(line: 12, column: 9, scope: !232)
!252 = !DILocation(line: 13, column: 2, scope: !250)
!253 = !DILocation(line: 14, column: 6, scope: !232)
!254 = !DILocation(line: 15, column: 26, scope: !255)
!255 = distinct !DILexicalBlock(scope: !232, file: !2, line: 15, column: 9)
!256 = !DILocation(line: 15, column: 31, scope: !255)
!257 = !DILocation(line: 15, column: 10, scope: !255)
!258 = !DILocation(line: 15, column: 9, scope: !232)
!259 = !DILocation(line: 16, column: 2, scope: !255)
!260 = !DILocation(line: 17, column: 7, scope: !232)
!261 = !DILocation(line: 17, column: 5, scope: !232)
!262 = !DILabel(scope: !232, name: "bail", file: !2, line: 18)
!263 = !DILocation(line: 18, column: 1, scope: !232)
!264 = !DILocation(line: 19, column: 23, scope: !232)
!265 = !DILocation(line: 19, column: 5, scope: !232)
!266 = !DILocation(line: 21, column: 12, scope: !232)
!267 = !DILocation(line: 21, column: 5, scope: !232)
