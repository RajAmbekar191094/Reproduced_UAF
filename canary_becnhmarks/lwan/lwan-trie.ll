; ModuleID = '/home/raj/lwan/common/lwan-trie.c'
source_filename = "/home/raj/lwan/common/lwan-trie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_trie_t_ = type { ptr, ptr }
%struct.lwan_trie_node_t_ = type { [8 x ptr], ptr, i32 }
%struct.lwan_trie_leaf_t_ = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [34 x i8] c"/home/raj/lwan/common/lwan-trie.c\00", align 1, !dbg !0
@__FUNCTION__.lwan_trie_add = private unnamed_addr constant [14 x i8] c"lwan_trie_add\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1, !dbg !18

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lwan_trie_init(ptr noundef %0, ptr noundef %1) #0 !dbg !37 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !70, metadata !DIExpression()), !dbg !71
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !72, metadata !DIExpression()), !dbg !73
  %6 = load ptr, ptr %4, align 8, !dbg !74
  %7 = icmp ne ptr %6, null, !dbg !74
  br i1 %7, label %9, label %8, !dbg !76

8:                                                ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !77
  br label %15, !dbg !77

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !78
  %11 = getelementptr inbounds %struct.lwan_trie_t_, ptr %10, i32 0, i32 0, !dbg !79
  store ptr null, ptr %11, align 8, !dbg !80
  %12 = load ptr, ptr %5, align 8, !dbg !81
  %13 = load ptr, ptr %4, align 8, !dbg !82
  %14 = getelementptr inbounds %struct.lwan_trie_t_, ptr %13, i32 0, i32 1, !dbg !83
  store ptr %12, ptr %14, align 8, !dbg !84
  store i1 true, ptr %3, align 1, !dbg !85
  br label %15, !dbg !85

15:                                               ; preds = %9, %8
  %16 = load i1, ptr %3, align 1, !dbg !86
  ret i1 %16, !dbg !86
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_trie_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !87 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i8, align 1
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !91, metadata !DIExpression()), !dbg !92
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !93, metadata !DIExpression()), !dbg !94
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !95, metadata !DIExpression()), !dbg !96
  %17 = load ptr, ptr %9, align 8, !dbg !97
  %18 = icmp ne ptr %17, null, !dbg !97
  br i1 %18, label %19, label %26, !dbg !97

19:                                               ; preds = %3
  %20 = load ptr, ptr %10, align 8, !dbg !97
  %21 = icmp ne ptr %20, null, !dbg !97
  br i1 %21, label %22, label %26, !dbg !97

22:                                               ; preds = %19
  %23 = load ptr, ptr %11, align 8, !dbg !97
  %24 = icmp ne ptr %23, null, !dbg !97
  %25 = xor i1 %24, true, !dbg !97
  br label %26, !dbg !97

26:                                               ; preds = %22, %19, %3
  %27 = phi i1 [ true, %19 ], [ true, %3 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32, !dbg !97
  %29 = sext i32 %28 to i64, !dbg !97
  %30 = icmp ne i64 %29, 0, !dbg !97
  br i1 %30, label %31, label %32, !dbg !99

31:                                               ; preds = %26
  br label %159, !dbg !100

32:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %12, metadata !101, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata ptr %13, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata ptr %14, metadata !106, metadata !DIExpression()), !dbg !107
  %33 = load ptr, ptr %10, align 8, !dbg !108
  store ptr %33, ptr %14, align 8, !dbg !107
  %34 = load ptr, ptr %9, align 8, !dbg !109
  %35 = getelementptr inbounds %struct.lwan_trie_t_, ptr %34, i32 0, i32 0, !dbg !111
  store ptr %35, ptr %12, align 8, !dbg !112
  br label %36, !dbg !113

36:                                               ; preds = %58, %32
  %37 = load ptr, ptr %10, align 8, !dbg !114
  %38 = load i8, ptr %37, align 1, !dbg !116
  %39 = icmp ne i8 %38, 0, !dbg !117
  br i1 %39, label %40, label %68, !dbg !117

40:                                               ; preds = %36
  br label %41, !dbg !118

41:                                               ; preds = %40
  %42 = load ptr, ptr %12, align 8, !dbg !119
  %43 = load ptr, ptr %42, align 8, !dbg !119
  store ptr %43, ptr %13, align 8, !dbg !119
  %44 = icmp ne ptr %43, null, !dbg !119
  br i1 %44, label %52, label %45, !dbg !122

45:                                               ; preds = %41
  %46 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 80) #8, !dbg !123
  store ptr %46, ptr %13, align 8, !dbg !123
  %47 = load ptr, ptr %12, align 8, !dbg !123
  store ptr %46, ptr %47, align 8, !dbg !123
  %48 = load ptr, ptr %13, align 8, !dbg !125
  %49 = icmp ne ptr %48, null, !dbg !125
  br i1 %49, label %51, label %50, !dbg !123

50:                                               ; preds = %45
  br label %158, !dbg !125

51:                                               ; preds = %45
  br label %52, !dbg !123

52:                                               ; preds = %51, %41
  %53 = load ptr, ptr %13, align 8, !dbg !122
  %54 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %53, i32 0, i32 2, !dbg !122
  %55 = load i32, ptr %54, align 8, !dbg !122
  %56 = add nsw i32 %55, 1, !dbg !122
  store i32 %56, ptr %54, align 8, !dbg !122
  br label %57, !dbg !122

57:                                               ; preds = %52
  br label %58, !dbg !122

58:                                               ; preds = %57
  %59 = load ptr, ptr %13, align 8, !dbg !127
  %60 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %59, i32 0, i32 0, !dbg !128
  %61 = load ptr, ptr %10, align 8, !dbg !129
  %62 = getelementptr inbounds i8, ptr %61, i32 1, !dbg !129
  store ptr %62, ptr %10, align 8, !dbg !129
  %63 = load i8, ptr %61, align 1, !dbg !130
  %64 = sext i8 %63 to i32, !dbg !130
  %65 = and i32 %64, 7, !dbg !131
  %66 = sext i32 %65 to i64, !dbg !127
  %67 = getelementptr inbounds [8 x ptr], ptr %60, i64 0, i64 %66, !dbg !127
  store ptr %67, ptr %12, align 8, !dbg !132
  br label %36, !dbg !133, !llvm.loop !134

68:                                               ; preds = %36
  br label %69, !dbg !137

69:                                               ; preds = %68
  %70 = load ptr, ptr %12, align 8, !dbg !138
  %71 = load ptr, ptr %70, align 8, !dbg !138
  store ptr %71, ptr %13, align 8, !dbg !138
  %72 = icmp ne ptr %71, null, !dbg !138
  br i1 %72, label %80, label %73, !dbg !141

73:                                               ; preds = %69
  %74 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 80) #8, !dbg !142
  store ptr %74, ptr %13, align 8, !dbg !142
  %75 = load ptr, ptr %12, align 8, !dbg !142
  store ptr %74, ptr %75, align 8, !dbg !142
  %76 = load ptr, ptr %13, align 8, !dbg !144
  %77 = icmp ne ptr %76, null, !dbg !144
  br i1 %77, label %79, label %78, !dbg !142

78:                                               ; preds = %73
  br label %158, !dbg !144

79:                                               ; preds = %73
  br label %80, !dbg !142

80:                                               ; preds = %79, %69
  %81 = load ptr, ptr %13, align 8, !dbg !141
  %82 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %81, i32 0, i32 2, !dbg !141
  %83 = load i32, ptr %82, align 8, !dbg !141
  %84 = add nsw i32 %83, 1, !dbg !141
  store i32 %84, ptr %82, align 8, !dbg !141
  br label %85, !dbg !141

85:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata ptr %15, metadata !146, metadata !DIExpression()), !dbg !147
  %86 = load ptr, ptr %13, align 8, !dbg !148
  %87 = load ptr, ptr %14, align 8, !dbg !149
  %88 = load ptr, ptr %10, align 8, !dbg !150
  %89 = load ptr, ptr %14, align 8, !dbg !151
  %90 = ptrtoint ptr %88 to i64, !dbg !152
  %91 = ptrtoint ptr %89 to i64, !dbg !152
  %92 = sub i64 %90, %91, !dbg !152
  store ptr %86, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !153, metadata !DIExpression()), !dbg !157
  store ptr %87, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !159, metadata !DIExpression()), !dbg !160
  store i64 %92, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata ptr %8, metadata !163, metadata !DIExpression()), !dbg !164
  %93 = load ptr, ptr %5, align 8, !dbg !165
  %94 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %93, i32 0, i32 1, !dbg !166
  %95 = load ptr, ptr %94, align 8, !dbg !166
  store ptr %95, ptr %8, align 8, !dbg !164
  %96 = load ptr, ptr %8, align 8, !dbg !167
  %97 = icmp ne ptr %96, null, !dbg !167
  br i1 %97, label %99, label %98, !dbg !169

98:                                               ; preds = %85
  store ptr null, ptr %4, align 8, !dbg !170
  br label %125, !dbg !170

99:                                               ; preds = %85
  %100 = load ptr, ptr %8, align 8, !dbg !171
  %101 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %100, i32 0, i32 2, !dbg !173
  %102 = load ptr, ptr %101, align 8, !dbg !173
  %103 = icmp ne ptr %102, null, !dbg !171
  br i1 %103, label %106, label %104, !dbg !174

104:                                              ; preds = %99
  %105 = load ptr, ptr %8, align 8, !dbg !175
  store ptr %105, ptr %4, align 8, !dbg !176
  br label %125, !dbg !176

106:                                              ; preds = %99
  br label %107, !dbg !177

107:                                              ; preds = %120, %106
  %108 = load ptr, ptr %8, align 8, !dbg !178
  %109 = icmp ne ptr %108, null, !dbg !181
  br i1 %109, label %110, label %124, !dbg !181

110:                                              ; preds = %107
  %111 = load ptr, ptr %8, align 8, !dbg !182
  %112 = load ptr, ptr %111, align 8, !dbg !185
  %113 = load ptr, ptr %6, align 8, !dbg !186
  %114 = load i64, ptr %7, align 8, !dbg !187
  %115 = sub i64 %114, 1, !dbg !188
  %116 = call i32 @strncmp(ptr noundef %112, ptr noundef %113, i64 noundef %115) #9, !dbg !189
  %117 = icmp ne i32 %116, 0, !dbg !189
  br i1 %117, label %120, label %118, !dbg !190

118:                                              ; preds = %110
  %119 = load ptr, ptr %8, align 8, !dbg !191
  store ptr %119, ptr %4, align 8, !dbg !192
  br label %125, !dbg !192

120:                                              ; preds = %110
  %121 = load ptr, ptr %8, align 8, !dbg !193
  %122 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %121, i32 0, i32 2, !dbg !194
  %123 = load ptr, ptr %122, align 8, !dbg !194
  store ptr %123, ptr %8, align 8, !dbg !195
  br label %107, !dbg !196, !llvm.loop !197

124:                                              ; preds = %107
  store ptr null, ptr %4, align 8, !dbg !199
  br label %125, !dbg !199

125:                                              ; preds = %98, %104, %118, %124
  %126 = load ptr, ptr %4, align 8, !dbg !200
  store ptr %126, ptr %15, align 8, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %16, metadata !201, metadata !DIExpression()), !dbg !202
  %127 = load ptr, ptr %15, align 8, !dbg !203
  %128 = icmp ne ptr %127, null, !dbg !203
  %129 = zext i1 %128 to i8, !dbg !202
  store i8 %129, ptr %16, align 1, !dbg !202
  %130 = load ptr, ptr %15, align 8, !dbg !204
  %131 = icmp ne ptr %130, null, !dbg !204
  br i1 %131, label %138, label %132, !dbg !206

132:                                              ; preds = %125
  %133 = call noalias ptr @malloc(i64 noundef 24) #10, !dbg !207
  store ptr %133, ptr %15, align 8, !dbg !209
  %134 = load ptr, ptr %15, align 8, !dbg !210
  %135 = icmp ne ptr %134, null, !dbg !210
  br i1 %135, label %137, label %136, !dbg !212

136:                                              ; preds = %132
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 85, ptr noundef @__FUNCTION__.lwan_trie_add, ptr noundef @.str.1) #11, !dbg !213
  unreachable, !dbg !213

137:                                              ; preds = %132
  br label %138, !dbg !214

138:                                              ; preds = %137, %125
  %139 = load ptr, ptr %11, align 8, !dbg !215
  %140 = load ptr, ptr %15, align 8, !dbg !216
  %141 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %140, i32 0, i32 1, !dbg !217
  store ptr %139, ptr %141, align 8, !dbg !218
  %142 = load i8, ptr %16, align 1, !dbg !219
  %143 = trunc i8 %142 to i1, !dbg !219
  br i1 %143, label %157, label %144, !dbg !221

144:                                              ; preds = %138
  %145 = load ptr, ptr %14, align 8, !dbg !222
  %146 = call noalias ptr @strdup(ptr noundef %145) #12, !dbg !224
  %147 = load ptr, ptr %15, align 8, !dbg !225
  %148 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %147, i32 0, i32 0, !dbg !226
  store ptr %146, ptr %148, align 8, !dbg !227
  %149 = load ptr, ptr %13, align 8, !dbg !228
  %150 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %149, i32 0, i32 1, !dbg !229
  %151 = load ptr, ptr %150, align 8, !dbg !229
  %152 = load ptr, ptr %15, align 8, !dbg !230
  %153 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %152, i32 0, i32 2, !dbg !231
  store ptr %151, ptr %153, align 8, !dbg !232
  %154 = load ptr, ptr %15, align 8, !dbg !233
  %155 = load ptr, ptr %13, align 8, !dbg !234
  %156 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %155, i32 0, i32 1, !dbg !235
  store ptr %154, ptr %156, align 8, !dbg !236
  br label %157, !dbg !237

157:                                              ; preds = %144, %138
  br label %159, !dbg !238

158:                                              ; preds = %78, %50
  call void @llvm.dbg.label(metadata !239), !dbg !240
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 97, ptr noundef @__FUNCTION__.lwan_trie_add, ptr noundef @.str.2) #11, !dbg !241
  unreachable, !dbg !241

159:                                              ; preds = %157, %31
  ret void, !dbg !242
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: noreturn
declare void @lwan_status_critical_perror_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local ptr @lwan_trie_lookup_full(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #6 !dbg !243 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i8, align 1
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  store ptr %0, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !246, metadata !DIExpression()), !dbg !247
  store ptr %1, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !248, metadata !DIExpression()), !dbg !249
  %24 = zext i1 %2 to i8
  store i8 %24, ptr %20, align 1
  call void @llvm.dbg.declare(metadata ptr %20, metadata !250, metadata !DIExpression()), !dbg !251
  %25 = load ptr, ptr %18, align 8, !dbg !252
  %26 = icmp ne ptr %25, null, !dbg !252
  %27 = xor i1 %26, true, !dbg !252
  %28 = zext i1 %27 to i32, !dbg !252
  %29 = sext i32 %28 to i64, !dbg !252
  %30 = icmp ne i64 %29, 0, !dbg !252
  br i1 %30, label %31, label %32, !dbg !254

31:                                               ; preds = %3
  store ptr null, ptr %17, align 8, !dbg !255
  br label %146, !dbg !255

32:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %21, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata ptr %22, metadata !258, metadata !DIExpression()), !dbg !259
  %33 = load ptr, ptr %18, align 8, !dbg !260
  %34 = getelementptr inbounds %struct.lwan_trie_t_, ptr %33, i32 0, i32 0, !dbg !261
  %35 = load ptr, ptr %34, align 8, !dbg !261
  %36 = load ptr, ptr %19, align 8, !dbg !262
  %37 = load i8, ptr %20, align 1, !dbg !263
  %38 = trunc i8 %37 to i1, !dbg !263
  store ptr %35, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !264, metadata !DIExpression()), !dbg !269
  store ptr %36, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !271, metadata !DIExpression()), !dbg !272
  %39 = zext i1 %38 to i8
  store i8 %39, ptr %7, align 1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !273, metadata !DIExpression()), !dbg !274
  store ptr %21, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata ptr %9, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata ptr %10, metadata !279, metadata !DIExpression()), !dbg !280
  store ptr null, ptr %10, align 8, !dbg !280
  call void @llvm.dbg.declare(metadata ptr %11, metadata !281, metadata !DIExpression()), !dbg !282
  %40 = load ptr, ptr %6, align 8, !dbg !283
  store ptr %40, ptr %11, align 8, !dbg !282
  %41 = load ptr, ptr %5, align 8, !dbg !284
  store ptr %41, ptr %9, align 8, !dbg !286
  br label %42, !dbg !287

42:                                               ; preds = %59, %32
  %43 = load ptr, ptr %9, align 8, !dbg !288
  %44 = icmp ne ptr %43, null, !dbg !288
  br i1 %44, label %45, label %50, !dbg !290

45:                                               ; preds = %42
  %46 = load ptr, ptr %6, align 8, !dbg !291
  %47 = load i8, ptr %46, align 1, !dbg !292
  %48 = sext i8 %47 to i32, !dbg !292
  %49 = icmp ne i32 %48, 0, !dbg !290
  br label %50

50:                                               ; preds = %45, %42
  %51 = phi i1 [ false, %42 ], [ %49, %45 ], !dbg !293
  br i1 %51, label %52, label %69, !dbg !294

52:                                               ; preds = %50
  %53 = load ptr, ptr %9, align 8, !dbg !295
  %54 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %53, i32 0, i32 1, !dbg !298
  %55 = load ptr, ptr %54, align 8, !dbg !298
  %56 = icmp ne ptr %55, null, !dbg !295
  br i1 %56, label %57, label %59, !dbg !299

57:                                               ; preds = %52
  %58 = load ptr, ptr %9, align 8, !dbg !300
  store ptr %58, ptr %10, align 8, !dbg !301
  br label %59, !dbg !302

59:                                               ; preds = %57, %52
  %60 = load ptr, ptr %9, align 8, !dbg !303
  %61 = load ptr, ptr %6, align 8, !dbg !304
  %62 = getelementptr inbounds i8, ptr %61, i32 1, !dbg !304
  store ptr %62, ptr %6, align 8, !dbg !304
  %63 = load i8, ptr %61, align 1, !dbg !305
  %64 = sext i8 %63 to i32, !dbg !305
  %65 = and i32 %64, 7, !dbg !306
  %66 = sext i32 %65 to i64, !dbg !303
  %67 = getelementptr inbounds [8 x ptr], ptr %60, i64 0, i64 %66, !dbg !303
  %68 = load ptr, ptr %67, align 8, !dbg !303
  store ptr %68, ptr %9, align 8, !dbg !307
  br label %42, !dbg !308, !llvm.loop !309

69:                                               ; preds = %50
  %70 = load ptr, ptr %6, align 8, !dbg !311
  %71 = load ptr, ptr %11, align 8, !dbg !312
  %72 = ptrtoint ptr %70 to i64, !dbg !313
  %73 = ptrtoint ptr %71 to i64, !dbg !313
  %74 = sub i64 %72, %73, !dbg !313
  %75 = load ptr, ptr %8, align 8, !dbg !314
  store i64 %74, ptr %75, align 8, !dbg !315
  %76 = load ptr, ptr %9, align 8, !dbg !316
  %77 = icmp ne ptr %76, null, !dbg !316
  br i1 %77, label %78, label %85, !dbg !318

78:                                               ; preds = %69
  %79 = load ptr, ptr %9, align 8, !dbg !319
  %80 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %79, i32 0, i32 1, !dbg !320
  %81 = load ptr, ptr %80, align 8, !dbg !320
  %82 = icmp ne ptr %81, null, !dbg !319
  br i1 %82, label %83, label %85, !dbg !321

83:                                               ; preds = %78
  %84 = load ptr, ptr %9, align 8, !dbg !322
  store ptr %84, ptr %4, align 8, !dbg !323
  br label %94, !dbg !323

85:                                               ; preds = %78, %69
  %86 = load i8, ptr %7, align 1, !dbg !324
  %87 = trunc i8 %86 to i1, !dbg !324
  br i1 %87, label %88, label %93, !dbg !326

88:                                               ; preds = %85
  %89 = load ptr, ptr %10, align 8, !dbg !327
  %90 = icmp ne ptr %89, null, !dbg !327
  br i1 %90, label %91, label %93, !dbg !328

91:                                               ; preds = %88
  %92 = load ptr, ptr %10, align 8, !dbg !329
  store ptr %92, ptr %4, align 8, !dbg !330
  br label %94, !dbg !330

93:                                               ; preds = %88, %85
  store ptr null, ptr %4, align 8, !dbg !331
  br label %94, !dbg !331

94:                                               ; preds = %83, %91, %93
  %95 = load ptr, ptr %4, align 8, !dbg !332
  store ptr %95, ptr %22, align 8, !dbg !259
  %96 = load ptr, ptr %22, align 8, !dbg !333
  %97 = icmp ne ptr %96, null, !dbg !333
  br i1 %97, label %99, label %98, !dbg !335

98:                                               ; preds = %94
  store ptr null, ptr %17, align 8, !dbg !336
  br label %146, !dbg !336

99:                                               ; preds = %94
  call void @llvm.dbg.declare(metadata ptr %23, metadata !337, metadata !DIExpression()), !dbg !338
  %100 = load ptr, ptr %22, align 8, !dbg !339
  %101 = load ptr, ptr %19, align 8, !dbg !340
  %102 = load i64, ptr %21, align 8, !dbg !341
  store ptr %100, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !153, metadata !DIExpression()), !dbg !342
  store ptr %101, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !159, metadata !DIExpression()), !dbg !344
  store i64 %102, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !161, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.declare(metadata ptr %16, metadata !163, metadata !DIExpression()), !dbg !346
  %103 = load ptr, ptr %13, align 8, !dbg !347
  %104 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %103, i32 0, i32 1, !dbg !348
  %105 = load ptr, ptr %104, align 8, !dbg !348
  store ptr %105, ptr %16, align 8, !dbg !346
  %106 = load ptr, ptr %16, align 8, !dbg !349
  %107 = icmp ne ptr %106, null, !dbg !349
  br i1 %107, label %109, label %108, !dbg !350

108:                                              ; preds = %99
  store ptr null, ptr %12, align 8, !dbg !351
  br label %135, !dbg !351

109:                                              ; preds = %99
  %110 = load ptr, ptr %16, align 8, !dbg !352
  %111 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %110, i32 0, i32 2, !dbg !353
  %112 = load ptr, ptr %111, align 8, !dbg !353
  %113 = icmp ne ptr %112, null, !dbg !352
  br i1 %113, label %116, label %114, !dbg !354

114:                                              ; preds = %109
  %115 = load ptr, ptr %16, align 8, !dbg !355
  store ptr %115, ptr %12, align 8, !dbg !356
  br label %135, !dbg !356

116:                                              ; preds = %109
  br label %117, !dbg !357

117:                                              ; preds = %130, %116
  %118 = load ptr, ptr %16, align 8, !dbg !358
  %119 = icmp ne ptr %118, null, !dbg !359
  br i1 %119, label %120, label %134, !dbg !359

120:                                              ; preds = %117
  %121 = load ptr, ptr %16, align 8, !dbg !360
  %122 = load ptr, ptr %121, align 8, !dbg !361
  %123 = load ptr, ptr %14, align 8, !dbg !362
  %124 = load i64, ptr %15, align 8, !dbg !363
  %125 = sub i64 %124, 1, !dbg !364
  %126 = call i32 @strncmp(ptr noundef %122, ptr noundef %123, i64 noundef %125) #9, !dbg !365
  %127 = icmp ne i32 %126, 0, !dbg !365
  br i1 %127, label %130, label %128, !dbg !366

128:                                              ; preds = %120
  %129 = load ptr, ptr %16, align 8, !dbg !367
  store ptr %129, ptr %12, align 8, !dbg !368
  br label %135, !dbg !368

130:                                              ; preds = %120
  %131 = load ptr, ptr %16, align 8, !dbg !369
  %132 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %131, i32 0, i32 2, !dbg !370
  %133 = load ptr, ptr %132, align 8, !dbg !370
  store ptr %133, ptr %16, align 8, !dbg !371
  br label %117, !dbg !372, !llvm.loop !373

134:                                              ; preds = %117
  store ptr null, ptr %12, align 8, !dbg !375
  br label %135, !dbg !375

135:                                              ; preds = %108, %114, %128, %134
  %136 = load ptr, ptr %12, align 8, !dbg !376
  store ptr %136, ptr %23, align 8, !dbg !338
  %137 = load ptr, ptr %23, align 8, !dbg !377
  %138 = icmp ne ptr %137, null, !dbg !377
  br i1 %138, label %139, label %143, !dbg !377

139:                                              ; preds = %135
  %140 = load ptr, ptr %23, align 8, !dbg !378
  %141 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %140, i32 0, i32 1, !dbg !379
  %142 = load ptr, ptr %141, align 8, !dbg !379
  br label %144, !dbg !377

143:                                              ; preds = %135
  br label %144, !dbg !377

144:                                              ; preds = %143, %139
  %145 = phi ptr [ %142, %139 ], [ null, %143 ], !dbg !377
  store ptr %145, ptr %17, align 8, !dbg !380
  br label %146, !dbg !380

146:                                              ; preds = %144, %98, %31
  %147 = load ptr, ptr %17, align 8, !dbg !381
  ret ptr %147, !dbg !381
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local ptr @lwan_trie_lookup_prefix(ptr noundef %0, ptr noundef %1) #6 !dbg !382 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i8, align 1
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  store ptr %0, ptr %23, align 8
  call void @llvm.dbg.declare(metadata ptr %23, metadata !385, metadata !DIExpression()), !dbg !386
  store ptr %1, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %24, metadata !387, metadata !DIExpression()), !dbg !388
  %25 = load ptr, ptr %23, align 8, !dbg !389
  %26 = load ptr, ptr %24, align 8, !dbg !390
  store ptr %25, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !246, metadata !DIExpression()), !dbg !391
  store ptr %26, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !248, metadata !DIExpression()), !dbg !393
  store i8 1, ptr %19, align 1
  call void @llvm.dbg.declare(metadata ptr %19, metadata !250, metadata !DIExpression()), !dbg !394
  %27 = load ptr, ptr %17, align 8, !dbg !395
  %28 = icmp ne ptr %27, null, !dbg !395
  %29 = xor i1 %28, true, !dbg !395
  %30 = zext i1 %29 to i32, !dbg !395
  %31 = sext i32 %30 to i64, !dbg !395
  br i1 %29, label %32, label %33, !dbg !396

32:                                               ; preds = %2
  store ptr null, ptr %16, align 8, !dbg !397
  br label %146, !dbg !397

33:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %20, metadata !256, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata ptr %21, metadata !258, metadata !DIExpression()), !dbg !399
  %34 = load ptr, ptr %17, align 8, !dbg !400
  %35 = load ptr, ptr %34, align 8, !dbg !401
  %36 = load ptr, ptr %18, align 8, !dbg !402
  %37 = load i8, ptr %19, align 1, !dbg !403
  %38 = trunc i8 %37 to i1, !dbg !403
  store ptr %35, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !264, metadata !DIExpression()), !dbg !404
  store ptr %36, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !271, metadata !DIExpression()), !dbg !406
  %39 = zext i1 %38 to i8
  store i8 %39, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !273, metadata !DIExpression()), !dbg !407
  store ptr %20, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !275, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.declare(metadata ptr %8, metadata !277, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.declare(metadata ptr %9, metadata !279, metadata !DIExpression()), !dbg !410
  store ptr null, ptr %9, align 8, !dbg !410
  call void @llvm.dbg.declare(metadata ptr %10, metadata !281, metadata !DIExpression()), !dbg !411
  %40 = load ptr, ptr %5, align 8, !dbg !412
  store ptr %40, ptr %10, align 8, !dbg !411
  %41 = load ptr, ptr %4, align 8, !dbg !413
  store ptr %41, ptr %8, align 8, !dbg !414
  br label %42, !dbg !415

42:                                               ; preds = %59, %33
  %43 = load ptr, ptr %8, align 8, !dbg !416
  %44 = icmp ne ptr %43, null, !dbg !416
  br i1 %44, label %45, label %50, !dbg !417

45:                                               ; preds = %42
  %46 = load ptr, ptr %5, align 8, !dbg !418
  %47 = load i8, ptr %46, align 1, !dbg !419
  %48 = sext i8 %47 to i32, !dbg !419
  %49 = icmp ne i32 %48, 0, !dbg !417
  br label %50

50:                                               ; preds = %45, %42
  %51 = phi i1 [ false, %42 ], [ %49, %45 ], !dbg !420
  br i1 %51, label %52, label %69, !dbg !421

52:                                               ; preds = %50
  %53 = load ptr, ptr %8, align 8, !dbg !422
  %54 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %53, i32 0, i32 1, !dbg !423
  %55 = load ptr, ptr %54, align 8, !dbg !423
  %56 = icmp ne ptr %55, null, !dbg !422
  br i1 %56, label %57, label %59, !dbg !424

57:                                               ; preds = %52
  %58 = load ptr, ptr %8, align 8, !dbg !425
  store ptr %58, ptr %9, align 8, !dbg !426
  br label %59, !dbg !427

59:                                               ; preds = %57, %52
  %60 = load ptr, ptr %8, align 8, !dbg !428
  %61 = load ptr, ptr %5, align 8, !dbg !429
  %62 = getelementptr inbounds i8, ptr %61, i32 1, !dbg !429
  store ptr %62, ptr %5, align 8, !dbg !429
  %63 = load i8, ptr %61, align 1, !dbg !430
  %64 = sext i8 %63 to i32, !dbg !430
  %65 = and i32 %64, 7, !dbg !431
  %66 = sext i32 %65 to i64, !dbg !428
  %67 = getelementptr inbounds [8 x ptr], ptr %60, i64 0, i64 %66, !dbg !428
  %68 = load ptr, ptr %67, align 8, !dbg !428
  store ptr %68, ptr %8, align 8, !dbg !432
  br label %42, !dbg !433, !llvm.loop !434

69:                                               ; preds = %50
  %70 = load ptr, ptr %5, align 8, !dbg !436
  %71 = load ptr, ptr %10, align 8, !dbg !437
  %72 = ptrtoint ptr %70 to i64, !dbg !438
  %73 = ptrtoint ptr %71 to i64, !dbg !438
  %74 = sub i64 %72, %73, !dbg !438
  %75 = load ptr, ptr %7, align 8, !dbg !439
  store i64 %74, ptr %75, align 8, !dbg !440
  %76 = load ptr, ptr %8, align 8, !dbg !441
  %77 = icmp ne ptr %76, null, !dbg !441
  br i1 %77, label %78, label %85, !dbg !442

78:                                               ; preds = %69
  %79 = load ptr, ptr %8, align 8, !dbg !443
  %80 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %79, i32 0, i32 1, !dbg !444
  %81 = load ptr, ptr %80, align 8, !dbg !444
  %82 = icmp ne ptr %81, null, !dbg !443
  br i1 %82, label %83, label %85, !dbg !445

83:                                               ; preds = %78
  %84 = load ptr, ptr %8, align 8, !dbg !446
  store ptr %84, ptr %3, align 8, !dbg !447
  br label %94, !dbg !447

85:                                               ; preds = %78, %69
  %86 = load i8, ptr %6, align 1, !dbg !448
  %87 = trunc i8 %86 to i1, !dbg !448
  br i1 %87, label %88, label %93, !dbg !449

88:                                               ; preds = %85
  %89 = load ptr, ptr %9, align 8, !dbg !450
  %90 = icmp ne ptr %89, null, !dbg !450
  br i1 %90, label %91, label %93, !dbg !451

91:                                               ; preds = %88
  %92 = load ptr, ptr %9, align 8, !dbg !452
  store ptr %92, ptr %3, align 8, !dbg !453
  br label %94, !dbg !453

93:                                               ; preds = %88, %85
  store ptr null, ptr %3, align 8, !dbg !454
  br label %94, !dbg !454

94:                                               ; preds = %83, %91, %93
  %95 = load ptr, ptr %3, align 8, !dbg !455
  store ptr %95, ptr %21, align 8, !dbg !399
  %96 = load ptr, ptr %21, align 8, !dbg !456
  %97 = icmp ne ptr %96, null, !dbg !456
  br i1 %97, label %99, label %98, !dbg !457

98:                                               ; preds = %94
  store ptr null, ptr %16, align 8, !dbg !458
  br label %146, !dbg !458

99:                                               ; preds = %94
  call void @llvm.dbg.declare(metadata ptr %22, metadata !337, metadata !DIExpression()), !dbg !459
  %100 = load ptr, ptr %21, align 8, !dbg !460
  %101 = load ptr, ptr %18, align 8, !dbg !461
  %102 = load i64, ptr %20, align 8, !dbg !462
  store ptr %100, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !153, metadata !DIExpression()), !dbg !463
  store ptr %101, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !159, metadata !DIExpression()), !dbg !465
  store i64 %102, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !161, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.declare(metadata ptr %15, metadata !163, metadata !DIExpression()), !dbg !467
  %103 = load ptr, ptr %12, align 8, !dbg !468
  %104 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %103, i32 0, i32 1, !dbg !469
  %105 = load ptr, ptr %104, align 8, !dbg !469
  store ptr %105, ptr %15, align 8, !dbg !467
  %106 = load ptr, ptr %15, align 8, !dbg !470
  %107 = icmp ne ptr %106, null, !dbg !470
  br i1 %107, label %109, label %108, !dbg !471

108:                                              ; preds = %99
  store ptr null, ptr %11, align 8, !dbg !472
  br label %135, !dbg !472

109:                                              ; preds = %99
  %110 = load ptr, ptr %15, align 8, !dbg !473
  %111 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %110, i32 0, i32 2, !dbg !474
  %112 = load ptr, ptr %111, align 8, !dbg !474
  %113 = icmp ne ptr %112, null, !dbg !473
  br i1 %113, label %116, label %114, !dbg !475

114:                                              ; preds = %109
  %115 = load ptr, ptr %15, align 8, !dbg !476
  store ptr %115, ptr %11, align 8, !dbg !477
  br label %135, !dbg !477

116:                                              ; preds = %109
  br label %117, !dbg !478

117:                                              ; preds = %130, %116
  %118 = load ptr, ptr %15, align 8, !dbg !479
  %119 = icmp ne ptr %118, null, !dbg !480
  br i1 %119, label %120, label %134, !dbg !480

120:                                              ; preds = %117
  %121 = load ptr, ptr %15, align 8, !dbg !481
  %122 = load ptr, ptr %121, align 8, !dbg !482
  %123 = load ptr, ptr %13, align 8, !dbg !483
  %124 = load i64, ptr %14, align 8, !dbg !484
  %125 = sub i64 %124, 1, !dbg !485
  %126 = call i32 @strncmp(ptr noundef %122, ptr noundef %123, i64 noundef %125) #9, !dbg !486
  %127 = icmp ne i32 %126, 0, !dbg !486
  br i1 %127, label %130, label %128, !dbg !487

128:                                              ; preds = %120
  %129 = load ptr, ptr %15, align 8, !dbg !488
  store ptr %129, ptr %11, align 8, !dbg !489
  br label %135, !dbg !489

130:                                              ; preds = %120
  %131 = load ptr, ptr %15, align 8, !dbg !490
  %132 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %131, i32 0, i32 2, !dbg !491
  %133 = load ptr, ptr %132, align 8, !dbg !491
  store ptr %133, ptr %15, align 8, !dbg !492
  br label %117, !dbg !493, !llvm.loop !494

134:                                              ; preds = %117
  store ptr null, ptr %11, align 8, !dbg !496
  br label %135, !dbg !496

135:                                              ; preds = %134, %128, %114, %108
  %136 = load ptr, ptr %11, align 8, !dbg !497
  store ptr %136, ptr %22, align 8, !dbg !459
  %137 = load ptr, ptr %22, align 8, !dbg !498
  %138 = icmp ne ptr %137, null, !dbg !498
  br i1 %138, label %139, label %143, !dbg !498

139:                                              ; preds = %135
  %140 = load ptr, ptr %22, align 8, !dbg !499
  %141 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %140, i32 0, i32 1, !dbg !500
  %142 = load ptr, ptr %141, align 8, !dbg !500
  br label %144, !dbg !498

143:                                              ; preds = %135
  br label %144, !dbg !498

144:                                              ; preds = %143, %139
  %145 = phi ptr [ %142, %139 ], [ null, %143 ], !dbg !498
  store ptr %145, ptr %16, align 8, !dbg !501
  br label %146, !dbg !501

146:                                              ; preds = %32, %98, %144
  %147 = load ptr, ptr %16, align 8, !dbg !502
  ret ptr %147, !dbg !503
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local ptr @lwan_trie_lookup_exact(ptr noundef %0, ptr noundef %1) #6 !dbg !504 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i8, align 1
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  store ptr %0, ptr %23, align 8
  call void @llvm.dbg.declare(metadata ptr %23, metadata !505, metadata !DIExpression()), !dbg !506
  store ptr %1, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %24, metadata !507, metadata !DIExpression()), !dbg !508
  %25 = load ptr, ptr %23, align 8, !dbg !509
  %26 = load ptr, ptr %24, align 8, !dbg !510
  store ptr %25, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !246, metadata !DIExpression()), !dbg !511
  store ptr %26, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !248, metadata !DIExpression()), !dbg !513
  store i8 0, ptr %19, align 1
  call void @llvm.dbg.declare(metadata ptr %19, metadata !250, metadata !DIExpression()), !dbg !514
  %27 = load ptr, ptr %17, align 8, !dbg !515
  %28 = icmp ne ptr %27, null, !dbg !515
  %29 = xor i1 %28, true, !dbg !515
  %30 = zext i1 %29 to i32, !dbg !515
  %31 = sext i32 %30 to i64, !dbg !515
  br i1 %29, label %32, label %33, !dbg !516

32:                                               ; preds = %2
  store ptr null, ptr %16, align 8, !dbg !517
  br label %146, !dbg !517

33:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %20, metadata !256, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.declare(metadata ptr %21, metadata !258, metadata !DIExpression()), !dbg !519
  %34 = load ptr, ptr %17, align 8, !dbg !520
  %35 = load ptr, ptr %34, align 8, !dbg !521
  %36 = load ptr, ptr %18, align 8, !dbg !522
  %37 = load i8, ptr %19, align 1, !dbg !523
  %38 = trunc i8 %37 to i1, !dbg !523
  store ptr %35, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !264, metadata !DIExpression()), !dbg !524
  store ptr %36, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !271, metadata !DIExpression()), !dbg !526
  %39 = zext i1 %38 to i8
  store i8 %39, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !273, metadata !DIExpression()), !dbg !527
  store ptr %20, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !275, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.declare(metadata ptr %8, metadata !277, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.declare(metadata ptr %9, metadata !279, metadata !DIExpression()), !dbg !530
  store ptr null, ptr %9, align 8, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %10, metadata !281, metadata !DIExpression()), !dbg !531
  %40 = load ptr, ptr %5, align 8, !dbg !532
  store ptr %40, ptr %10, align 8, !dbg !531
  %41 = load ptr, ptr %4, align 8, !dbg !533
  store ptr %41, ptr %8, align 8, !dbg !534
  br label %42, !dbg !535

42:                                               ; preds = %59, %33
  %43 = load ptr, ptr %8, align 8, !dbg !536
  %44 = icmp ne ptr %43, null, !dbg !536
  br i1 %44, label %45, label %50, !dbg !537

45:                                               ; preds = %42
  %46 = load ptr, ptr %5, align 8, !dbg !538
  %47 = load i8, ptr %46, align 1, !dbg !539
  %48 = sext i8 %47 to i32, !dbg !539
  %49 = icmp ne i32 %48, 0, !dbg !537
  br label %50

50:                                               ; preds = %45, %42
  %51 = phi i1 [ false, %42 ], [ %49, %45 ], !dbg !540
  br i1 %51, label %52, label %69, !dbg !541

52:                                               ; preds = %50
  %53 = load ptr, ptr %8, align 8, !dbg !542
  %54 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %53, i32 0, i32 1, !dbg !543
  %55 = load ptr, ptr %54, align 8, !dbg !543
  %56 = icmp ne ptr %55, null, !dbg !542
  br i1 %56, label %57, label %59, !dbg !544

57:                                               ; preds = %52
  %58 = load ptr, ptr %8, align 8, !dbg !545
  store ptr %58, ptr %9, align 8, !dbg !546
  br label %59, !dbg !547

59:                                               ; preds = %57, %52
  %60 = load ptr, ptr %8, align 8, !dbg !548
  %61 = load ptr, ptr %5, align 8, !dbg !549
  %62 = getelementptr inbounds i8, ptr %61, i32 1, !dbg !549
  store ptr %62, ptr %5, align 8, !dbg !549
  %63 = load i8, ptr %61, align 1, !dbg !550
  %64 = sext i8 %63 to i32, !dbg !550
  %65 = and i32 %64, 7, !dbg !551
  %66 = sext i32 %65 to i64, !dbg !548
  %67 = getelementptr inbounds [8 x ptr], ptr %60, i64 0, i64 %66, !dbg !548
  %68 = load ptr, ptr %67, align 8, !dbg !548
  store ptr %68, ptr %8, align 8, !dbg !552
  br label %42, !dbg !553, !llvm.loop !554

69:                                               ; preds = %50
  %70 = load ptr, ptr %5, align 8, !dbg !556
  %71 = load ptr, ptr %10, align 8, !dbg !557
  %72 = ptrtoint ptr %70 to i64, !dbg !558
  %73 = ptrtoint ptr %71 to i64, !dbg !558
  %74 = sub i64 %72, %73, !dbg !558
  %75 = load ptr, ptr %7, align 8, !dbg !559
  store i64 %74, ptr %75, align 8, !dbg !560
  %76 = load ptr, ptr %8, align 8, !dbg !561
  %77 = icmp ne ptr %76, null, !dbg !561
  br i1 %77, label %78, label %85, !dbg !562

78:                                               ; preds = %69
  %79 = load ptr, ptr %8, align 8, !dbg !563
  %80 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %79, i32 0, i32 1, !dbg !564
  %81 = load ptr, ptr %80, align 8, !dbg !564
  %82 = icmp ne ptr %81, null, !dbg !563
  br i1 %82, label %83, label %85, !dbg !565

83:                                               ; preds = %78
  %84 = load ptr, ptr %8, align 8, !dbg !566
  store ptr %84, ptr %3, align 8, !dbg !567
  br label %94, !dbg !567

85:                                               ; preds = %78, %69
  %86 = load i8, ptr %6, align 1, !dbg !568
  %87 = trunc i8 %86 to i1, !dbg !568
  br i1 %87, label %88, label %93, !dbg !569

88:                                               ; preds = %85
  %89 = load ptr, ptr %9, align 8, !dbg !570
  %90 = icmp ne ptr %89, null, !dbg !570
  br i1 %90, label %91, label %93, !dbg !571

91:                                               ; preds = %88
  %92 = load ptr, ptr %9, align 8, !dbg !572
  store ptr %92, ptr %3, align 8, !dbg !573
  br label %94, !dbg !573

93:                                               ; preds = %88, %85
  store ptr null, ptr %3, align 8, !dbg !574
  br label %94, !dbg !574

94:                                               ; preds = %83, %91, %93
  %95 = load ptr, ptr %3, align 8, !dbg !575
  store ptr %95, ptr %21, align 8, !dbg !519
  %96 = load ptr, ptr %21, align 8, !dbg !576
  %97 = icmp ne ptr %96, null, !dbg !576
  br i1 %97, label %99, label %98, !dbg !577

98:                                               ; preds = %94
  store ptr null, ptr %16, align 8, !dbg !578
  br label %146, !dbg !578

99:                                               ; preds = %94
  call void @llvm.dbg.declare(metadata ptr %22, metadata !337, metadata !DIExpression()), !dbg !579
  %100 = load ptr, ptr %21, align 8, !dbg !580
  %101 = load ptr, ptr %18, align 8, !dbg !581
  %102 = load i64, ptr %20, align 8, !dbg !582
  store ptr %100, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !153, metadata !DIExpression()), !dbg !583
  store ptr %101, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !159, metadata !DIExpression()), !dbg !585
  store i64 %102, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !161, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.declare(metadata ptr %15, metadata !163, metadata !DIExpression()), !dbg !587
  %103 = load ptr, ptr %12, align 8, !dbg !588
  %104 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %103, i32 0, i32 1, !dbg !589
  %105 = load ptr, ptr %104, align 8, !dbg !589
  store ptr %105, ptr %15, align 8, !dbg !587
  %106 = load ptr, ptr %15, align 8, !dbg !590
  %107 = icmp ne ptr %106, null, !dbg !590
  br i1 %107, label %109, label %108, !dbg !591

108:                                              ; preds = %99
  store ptr null, ptr %11, align 8, !dbg !592
  br label %135, !dbg !592

109:                                              ; preds = %99
  %110 = load ptr, ptr %15, align 8, !dbg !593
  %111 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %110, i32 0, i32 2, !dbg !594
  %112 = load ptr, ptr %111, align 8, !dbg !594
  %113 = icmp ne ptr %112, null, !dbg !593
  br i1 %113, label %116, label %114, !dbg !595

114:                                              ; preds = %109
  %115 = load ptr, ptr %15, align 8, !dbg !596
  store ptr %115, ptr %11, align 8, !dbg !597
  br label %135, !dbg !597

116:                                              ; preds = %109
  br label %117, !dbg !598

117:                                              ; preds = %130, %116
  %118 = load ptr, ptr %15, align 8, !dbg !599
  %119 = icmp ne ptr %118, null, !dbg !600
  br i1 %119, label %120, label %134, !dbg !600

120:                                              ; preds = %117
  %121 = load ptr, ptr %15, align 8, !dbg !601
  %122 = load ptr, ptr %121, align 8, !dbg !602
  %123 = load ptr, ptr %13, align 8, !dbg !603
  %124 = load i64, ptr %14, align 8, !dbg !604
  %125 = sub i64 %124, 1, !dbg !605
  %126 = call i32 @strncmp(ptr noundef %122, ptr noundef %123, i64 noundef %125) #9, !dbg !606
  %127 = icmp ne i32 %126, 0, !dbg !606
  br i1 %127, label %130, label %128, !dbg !607

128:                                              ; preds = %120
  %129 = load ptr, ptr %15, align 8, !dbg !608
  store ptr %129, ptr %11, align 8, !dbg !609
  br label %135, !dbg !609

130:                                              ; preds = %120
  %131 = load ptr, ptr %15, align 8, !dbg !610
  %132 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %131, i32 0, i32 2, !dbg !611
  %133 = load ptr, ptr %132, align 8, !dbg !611
  store ptr %133, ptr %15, align 8, !dbg !612
  br label %117, !dbg !613, !llvm.loop !614

134:                                              ; preds = %117
  store ptr null, ptr %11, align 8, !dbg !616
  br label %135, !dbg !616

135:                                              ; preds = %134, %128, %114, %108
  %136 = load ptr, ptr %11, align 8, !dbg !617
  store ptr %136, ptr %22, align 8, !dbg !579
  %137 = load ptr, ptr %22, align 8, !dbg !618
  %138 = icmp ne ptr %137, null, !dbg !618
  br i1 %138, label %139, label %143, !dbg !618

139:                                              ; preds = %135
  %140 = load ptr, ptr %22, align 8, !dbg !619
  %141 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %140, i32 0, i32 1, !dbg !620
  %142 = load ptr, ptr %141, align 8, !dbg !620
  br label %144, !dbg !618

143:                                              ; preds = %135
  br label %144, !dbg !618

144:                                              ; preds = %143, %139
  %145 = phi ptr [ %142, %139 ], [ null, %143 ], !dbg !618
  store ptr %145, ptr %16, align 8, !dbg !621
  br label %146, !dbg !621

146:                                              ; preds = %32, %98, %144
  %147 = load ptr, ptr %16, align 8, !dbg !622
  ret ptr %147, !dbg !623
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i32 @lwan_trie_entry_count(ptr noundef %0) #6 !dbg !624 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !631, metadata !DIExpression()), !dbg !632
  %3 = load ptr, ptr %2, align 8, !dbg !633
  %4 = icmp ne ptr %3, null, !dbg !633
  br i1 %4, label %5, label %16, !dbg !634

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !635
  %7 = getelementptr inbounds %struct.lwan_trie_t_, ptr %6, i32 0, i32 0, !dbg !636
  %8 = load ptr, ptr %7, align 8, !dbg !636
  %9 = icmp ne ptr %8, null, !dbg !635
  br i1 %9, label %10, label %16, !dbg !637

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !dbg !638
  %12 = getelementptr inbounds %struct.lwan_trie_t_, ptr %11, i32 0, i32 0, !dbg !639
  %13 = load ptr, ptr %12, align 8, !dbg !639
  %14 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %13, i32 0, i32 2, !dbg !640
  %15 = load i32, ptr %14, align 8, !dbg !640
  br label %17, !dbg !637

16:                                               ; preds = %5, %1
  br label %17, !dbg !637

17:                                               ; preds = %16, %10
  %18 = phi i32 [ %15, %10 ], [ 0, %16 ], !dbg !637
  ret i32 %18, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_trie_destroy(ptr noundef %0) #0 !dbg !642 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !645, metadata !DIExpression()), !dbg !646
  %3 = load ptr, ptr %2, align 8, !dbg !647
  %4 = icmp ne ptr %3, null, !dbg !647
  br i1 %4, label %5, label %10, !dbg !649

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !650
  %7 = getelementptr inbounds %struct.lwan_trie_t_, ptr %6, i32 0, i32 0, !dbg !651
  %8 = load ptr, ptr %7, align 8, !dbg !651
  %9 = icmp ne ptr %8, null, !dbg !650
  br i1 %9, label %11, label %10, !dbg !652

10:                                               ; preds = %5, %1
  br label %16, !dbg !653

11:                                               ; preds = %5
  %12 = load ptr, ptr %2, align 8, !dbg !654
  %13 = load ptr, ptr %2, align 8, !dbg !655
  %14 = getelementptr inbounds %struct.lwan_trie_t_, ptr %13, i32 0, i32 0, !dbg !656
  %15 = load ptr, ptr %14, align 8, !dbg !656
  call void @lwan_trie_node_destroy(ptr noundef %12, ptr noundef %15), !dbg !657
  br label %16, !dbg !658

16:                                               ; preds = %11, %10
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lwan_trie_node_destroy(ptr noundef %0, ptr noundef %1) #0 !dbg !659 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !662, metadata !DIExpression()), !dbg !663
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !664, metadata !DIExpression()), !dbg !665
  %9 = load ptr, ptr %4, align 8, !dbg !666
  %10 = icmp ne ptr %9, null, !dbg !666
  br i1 %10, label %12, label %11, !dbg !668

11:                                               ; preds = %2
  br label %76, !dbg !669

12:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !670, metadata !DIExpression()), !dbg !671
  %13 = load ptr, ptr %4, align 8, !dbg !672
  %14 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %13, i32 0, i32 2, !dbg !673
  %15 = load i32, ptr %14, align 8, !dbg !673
  store i32 %15, ptr %5, align 4, !dbg !671
  call void @llvm.dbg.declare(metadata ptr %6, metadata !674, metadata !DIExpression()), !dbg !676
  %16 = load ptr, ptr %4, align 8, !dbg !677
  %17 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %16, i32 0, i32 1, !dbg !678
  %18 = load ptr, ptr %17, align 8, !dbg !678
  store ptr %18, ptr %6, align 8, !dbg !676
  br label %19, !dbg !679

19:                                               ; preds = %37, %12
  %20 = load ptr, ptr %6, align 8, !dbg !680
  %21 = icmp ne ptr %20, null, !dbg !682
  br i1 %21, label %22, label %43, !dbg !682

22:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata ptr %7, metadata !683, metadata !DIExpression()), !dbg !685
  %23 = load ptr, ptr %6, align 8, !dbg !686
  %24 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %23, i32 0, i32 2, !dbg !687
  %25 = load ptr, ptr %24, align 8, !dbg !687
  store ptr %25, ptr %7, align 8, !dbg !685
  %26 = load ptr, ptr %3, align 8, !dbg !688
  %27 = getelementptr inbounds %struct.lwan_trie_t_, ptr %26, i32 0, i32 1, !dbg !690
  %28 = load ptr, ptr %27, align 8, !dbg !690
  %29 = icmp ne ptr %28, null, !dbg !688
  br i1 %29, label %30, label %37, !dbg !691

30:                                               ; preds = %22
  %31 = load ptr, ptr %3, align 8, !dbg !692
  %32 = getelementptr inbounds %struct.lwan_trie_t_, ptr %31, i32 0, i32 1, !dbg !693
  %33 = load ptr, ptr %32, align 8, !dbg !693
  %34 = load ptr, ptr %6, align 8, !dbg !694
  %35 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %34, i32 0, i32 1, !dbg !695
  %36 = load ptr, ptr %35, align 8, !dbg !695
  call void %33(ptr noundef %36), !dbg !692
  br label %37, !dbg !692

37:                                               ; preds = %30, %22
  %38 = load ptr, ptr %6, align 8, !dbg !696
  %39 = getelementptr inbounds %struct.lwan_trie_leaf_t_, ptr %38, i32 0, i32 0, !dbg !697
  %40 = load ptr, ptr %39, align 8, !dbg !697
  call void @free(ptr noundef %40) #12, !dbg !698
  %41 = load ptr, ptr %6, align 8, !dbg !699
  call void @free(ptr noundef %41) #12, !dbg !700
  %42 = load ptr, ptr %7, align 8, !dbg !701
  store ptr %42, ptr %6, align 8, !dbg !702
  br label %19, !dbg !703, !llvm.loop !704

43:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata ptr %8, metadata !706, metadata !DIExpression()), !dbg !708
  store i32 0, ptr %8, align 4, !dbg !708
  br label %44, !dbg !709

44:                                               ; preds = %71, %43
  %45 = load i32, ptr %5, align 4, !dbg !710
  %46 = icmp sgt i32 %45, 0, !dbg !712
  br i1 %46, label %47, label %50, !dbg !713

47:                                               ; preds = %44
  %48 = load i32, ptr %8, align 4, !dbg !714
  %49 = icmp slt i32 %48, 8, !dbg !715
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ false, %44 ], [ %49, %47 ], !dbg !716
  br i1 %51, label %52, label %74, !dbg !717

52:                                               ; preds = %50
  %53 = load ptr, ptr %4, align 8, !dbg !718
  %54 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %53, i32 0, i32 0, !dbg !721
  %55 = load i32, ptr %8, align 4, !dbg !722
  %56 = sext i32 %55 to i64, !dbg !718
  %57 = getelementptr inbounds [8 x ptr], ptr %54, i64 0, i64 %56, !dbg !718
  %58 = load ptr, ptr %57, align 8, !dbg !718
  %59 = icmp ne ptr %58, null, !dbg !718
  br i1 %59, label %60, label %70, !dbg !723

60:                                               ; preds = %52
  %61 = load ptr, ptr %3, align 8, !dbg !724
  %62 = load ptr, ptr %4, align 8, !dbg !726
  %63 = getelementptr inbounds %struct.lwan_trie_node_t_, ptr %62, i32 0, i32 0, !dbg !727
  %64 = load i32, ptr %8, align 4, !dbg !728
  %65 = sext i32 %64 to i64, !dbg !726
  %66 = getelementptr inbounds [8 x ptr], ptr %63, i64 0, i64 %65, !dbg !726
  %67 = load ptr, ptr %66, align 8, !dbg !726
  call void @lwan_trie_node_destroy(ptr noundef %61, ptr noundef %67), !dbg !729
  %68 = load i32, ptr %5, align 4, !dbg !730
  %69 = add nsw i32 %68, -1, !dbg !730
  store i32 %69, ptr %5, align 4, !dbg !730
  br label %70, !dbg !731

70:                                               ; preds = %60, %52
  br label %71, !dbg !732

71:                                               ; preds = %70
  %72 = load i32, ptr %8, align 4, !dbg !733
  %73 = add nsw i32 %72, 1, !dbg !733
  store i32 %73, ptr %8, align 4, !dbg !733
  br label %44, !dbg !734, !llvm.loop !735

74:                                               ; preds = %50
  %75 = load ptr, ptr %4, align 8, !dbg !737
  call void @free(ptr noundef %75) #12, !dbg !738
  br label %76, !dbg !739

76:                                               ; preds = %74, %11
  ret void, !dbg !739
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { alwaysinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { noreturn }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!20}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "common/lwan-trie.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "2e559976bbcd6644de57f46fa6795f72")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 34)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 112, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 14)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 7)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !15, isLocal: true, isDefinition: true)
!20 = distinct !DICompileUnit(language: DW_LANG_C11, file: !21, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !22, globals: !28, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "/home/raj/lwan/common/lwan-trie.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "2e559976bbcd6644de57f46fa6795f72")
!22 = !{!23, !24, !27}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 46, baseType: !26)
!25 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!26 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !{!0, !7, !13, !18}
!29 = !{i32 7, !"Dwarf Version", i32 5}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{i32 8, !"PIC Level", i32 2}
!33 = !{i32 7, !"PIE Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 2}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 16.0.0"}
!37 = distinct !DISubprogram(name: "lwan_trie_init", scope: !2, file: !2, line: 26, type: !38, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !69)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !41, !66}
!40 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_t", file: !43, line: 25, baseType: !44)
!43 = !DIFile(filename: "common/lwan-trie.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "ee6a35f9d72fff2f5550c3424937f5b6")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_t_", file: !43, line: 41, size: 128, elements: !45)
!45 = !{!46, !65}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !44, file: !43, line: 42, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_node_t", file: !43, line: 26, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_node_t_", file: !43, line: 29, size: 640, elements: !50)
!50 = !{!51, !55, !64}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !49, file: !43, line: 30, baseType: !52, size: 512)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 512, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 8)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !49, file: !43, line: 31, baseType: !56, size: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_leaf_t", file: !43, line: 27, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_leaf_t_", file: !43, line: 35, size: 192, elements: !59)
!59 = !{!60, !62, !63}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !58, file: !43, line: 36, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !58, file: !43, line: 37, baseType: !27, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !58, file: !43, line: 38, baseType: !56, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !49, file: !43, line: 32, baseType: !23, size: 32, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !44, file: !43, line: 43, baseType: !66, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !27}
!69 = !{}
!70 = !DILocalVariable(name: "trie", arg: 1, scope: !37, file: !2, line: 26, type: !41)
!71 = !DILocation(line: 26, column: 29, scope: !37)
!72 = !DILocalVariable(name: "free_node", arg: 2, scope: !37, file: !2, line: 26, type: !66)
!73 = !DILocation(line: 26, column: 42, scope: !37)
!74 = !DILocation(line: 28, column: 10, scope: !75)
!75 = distinct !DILexicalBlock(scope: !37, file: !2, line: 28, column: 9)
!76 = !DILocation(line: 28, column: 9, scope: !37)
!77 = !DILocation(line: 29, column: 9, scope: !75)
!78 = !DILocation(line: 30, column: 5, scope: !37)
!79 = !DILocation(line: 30, column: 11, scope: !37)
!80 = !DILocation(line: 30, column: 16, scope: !37)
!81 = !DILocation(line: 31, column: 23, scope: !37)
!82 = !DILocation(line: 31, column: 5, scope: !37)
!83 = !DILocation(line: 31, column: 11, scope: !37)
!84 = !DILocation(line: 31, column: 21, scope: !37)
!85 = !DILocation(line: 32, column: 5, scope: !37)
!86 = !DILocation(line: 33, column: 1, scope: !37)
!87 = distinct !DISubprogram(name: "lwan_trie_add", scope: !2, file: !2, line: 65, type: !88, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !69)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !41, !90, !27}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!91 = !DILocalVariable(name: "trie", arg: 1, scope: !87, file: !2, line: 65, type: !41)
!92 = !DILocation(line: 65, column: 28, scope: !87)
!93 = !DILocalVariable(name: "key", arg: 2, scope: !87, file: !2, line: 65, type: !90)
!94 = !DILocation(line: 65, column: 46, scope: !87)
!95 = !DILocalVariable(name: "data", arg: 3, scope: !87, file: !2, line: 65, type: !27)
!96 = !DILocation(line: 65, column: 57, scope: !87)
!97 = !DILocation(line: 67, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !87, file: !2, line: 67, column: 9)
!99 = !DILocation(line: 67, column: 9, scope: !87)
!100 = !DILocation(line: 68, column: 9, scope: !98)
!101 = !DILocalVariable(name: "knode", scope: !87, file: !2, line: 70, type: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!103 = !DILocation(line: 70, column: 24, scope: !87)
!104 = !DILocalVariable(name: "node", scope: !87, file: !2, line: 70, type: !47)
!105 = !DILocation(line: 70, column: 32, scope: !87)
!106 = !DILocalVariable(name: "orig_key", scope: !87, file: !2, line: 71, type: !90)
!107 = !DILocation(line: 71, column: 17, scope: !87)
!108 = !DILocation(line: 71, column: 28, scope: !87)
!109 = !DILocation(line: 74, column: 19, scope: !110)
!110 = distinct !DILexicalBlock(scope: !87, file: !2, line: 74, column: 5)
!111 = !DILocation(line: 74, column: 25, scope: !110)
!112 = !DILocation(line: 74, column: 16, scope: !110)
!113 = !DILocation(line: 74, column: 10, scope: !110)
!114 = !DILocation(line: 74, column: 32, scope: !115)
!115 = distinct !DILexicalBlock(scope: !110, file: !2, line: 74, column: 5)
!116 = !DILocation(line: 74, column: 31, scope: !115)
!117 = !DILocation(line: 74, column: 5, scope: !110)
!118 = !DILocation(line: 75, column: 9, scope: !115)
!119 = !DILocation(line: 75, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !2, line: 75, column: 9)
!121 = distinct !DILexicalBlock(scope: !115, file: !2, line: 75, column: 9)
!122 = !DILocation(line: 75, column: 9, scope: !121)
!123 = !DILocation(line: 75, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !2, line: 75, column: 9)
!125 = !DILocation(line: 75, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !124, file: !2, line: 75, column: 9)
!127 = !DILocation(line: 74, column: 46, scope: !115)
!128 = !DILocation(line: 74, column: 52, scope: !115)
!129 = !DILocation(line: 74, column: 67, scope: !115)
!130 = !DILocation(line: 74, column: 63, scope: !115)
!131 = !DILocation(line: 74, column: 70, scope: !115)
!132 = !DILocation(line: 74, column: 43, scope: !115)
!133 = !DILocation(line: 74, column: 5, scope: !115)
!134 = distinct !{!134, !117, !135, !136}
!135 = !DILocation(line: 75, column: 9, scope: !110)
!136 = !{!"llvm.loop.mustprogress"}
!137 = !DILocation(line: 78, column: 5, scope: !87)
!138 = !DILocation(line: 78, column: 5, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !2, line: 78, column: 5)
!140 = distinct !DILexicalBlock(scope: !87, file: !2, line: 78, column: 5)
!141 = !DILocation(line: 78, column: 5, scope: !140)
!142 = !DILocation(line: 78, column: 5, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !2, line: 78, column: 5)
!144 = !DILocation(line: 78, column: 5, scope: !145)
!145 = distinct !DILexicalBlock(scope: !143, file: !2, line: 78, column: 5)
!146 = !DILocalVariable(name: "leaf", scope: !87, file: !2, line: 80, type: !56)
!147 = !DILocation(line: 80, column: 23, scope: !87)
!148 = !DILocation(line: 80, column: 49, scope: !87)
!149 = !DILocation(line: 80, column: 55, scope: !87)
!150 = !DILocation(line: 80, column: 74, scope: !87)
!151 = !DILocation(line: 80, column: 80, scope: !87)
!152 = !DILocation(line: 80, column: 78, scope: !87)
!153 = !DILocalVariable(name: "node", arg: 1, scope: !154, file: !2, line: 36, type: !47)
!154 = distinct !DISubprogram(name: "find_leaf_with_key", scope: !2, file: !2, line: 36, type: !155, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !20, retainedNodes: !69)
!155 = !DISubroutineType(types: !156)
!156 = !{!56, !47, !90, !24}
!157 = !DILocation(line: 36, column: 38, scope: !154, inlinedAt: !158)
!158 = distinct !DILocation(line: 80, column: 30, scope: !87)
!159 = !DILocalVariable(name: "key", arg: 2, scope: !154, file: !2, line: 36, type: !90)
!160 = !DILocation(line: 36, column: 56, scope: !154, inlinedAt: !158)
!161 = !DILocalVariable(name: "len", arg: 3, scope: !154, file: !2, line: 36, type: !24)
!162 = !DILocation(line: 36, column: 68, scope: !154, inlinedAt: !158)
!163 = !DILocalVariable(name: "leaf", scope: !154, file: !2, line: 38, type: !56)
!164 = !DILocation(line: 38, column: 23, scope: !154, inlinedAt: !158)
!165 = !DILocation(line: 38, column: 30, scope: !154, inlinedAt: !158)
!166 = !DILocation(line: 38, column: 36, scope: !154, inlinedAt: !158)
!167 = !DILocation(line: 40, column: 10, scope: !168, inlinedAt: !158)
!168 = distinct !DILexicalBlock(scope: !154, file: !2, line: 40, column: 9)
!169 = !DILocation(line: 40, column: 9, scope: !154, inlinedAt: !158)
!170 = !DILocation(line: 41, column: 9, scope: !168, inlinedAt: !158)
!171 = !DILocation(line: 43, column: 10, scope: !172, inlinedAt: !158)
!172 = distinct !DILexicalBlock(scope: !154, file: !2, line: 43, column: 9)
!173 = !DILocation(line: 43, column: 16, scope: !172, inlinedAt: !158)
!174 = !DILocation(line: 43, column: 9, scope: !154, inlinedAt: !158)
!175 = !DILocation(line: 44, column: 16, scope: !172, inlinedAt: !158)
!176 = !DILocation(line: 44, column: 9, scope: !172, inlinedAt: !158)
!177 = !DILocation(line: 46, column: 5, scope: !154, inlinedAt: !158)
!178 = !DILocation(line: 46, column: 12, scope: !179, inlinedAt: !158)
!179 = distinct !DILexicalBlock(scope: !180, file: !2, line: 46, column: 5)
!180 = distinct !DILexicalBlock(scope: !154, file: !2, line: 46, column: 5)
!181 = !DILocation(line: 46, column: 5, scope: !180, inlinedAt: !158)
!182 = !DILocation(line: 47, column: 22, scope: !183, inlinedAt: !158)
!183 = distinct !DILexicalBlock(scope: !184, file: !2, line: 47, column: 13)
!184 = distinct !DILexicalBlock(scope: !179, file: !2, line: 46, column: 37)
!185 = !DILocation(line: 47, column: 28, scope: !183, inlinedAt: !158)
!186 = !DILocation(line: 47, column: 33, scope: !183, inlinedAt: !158)
!187 = !DILocation(line: 47, column: 38, scope: !183, inlinedAt: !158)
!188 = !DILocation(line: 47, column: 42, scope: !183, inlinedAt: !158)
!189 = !DILocation(line: 47, column: 14, scope: !183, inlinedAt: !158)
!190 = !DILocation(line: 47, column: 13, scope: !184, inlinedAt: !158)
!191 = !DILocation(line: 48, column: 20, scope: !183, inlinedAt: !158)
!192 = !DILocation(line: 48, column: 13, scope: !183, inlinedAt: !158)
!193 = !DILocation(line: 46, column: 25, scope: !179, inlinedAt: !158)
!194 = !DILocation(line: 46, column: 31, scope: !179, inlinedAt: !158)
!195 = !DILocation(line: 46, column: 23, scope: !179, inlinedAt: !158)
!196 = !DILocation(line: 46, column: 5, scope: !179, inlinedAt: !158)
!197 = distinct !{!197, !181, !198, !136}
!198 = !DILocation(line: 49, column: 5, scope: !180, inlinedAt: !158)
!199 = !DILocation(line: 51, column: 5, scope: !154, inlinedAt: !158)
!200 = !DILocation(line: 52, column: 1, scope: !154, inlinedAt: !158)
!201 = !DILocalVariable(name: "had_key", scope: !87, file: !2, line: 81, type: !40)
!202 = !DILocation(line: 81, column: 10, scope: !87)
!203 = !DILocation(line: 81, column: 20, scope: !87)
!204 = !DILocation(line: 82, column: 10, scope: !205)
!205 = distinct !DILexicalBlock(scope: !87, file: !2, line: 82, column: 9)
!206 = !DILocation(line: 82, column: 9, scope: !87)
!207 = !DILocation(line: 83, column: 16, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !2, line: 82, column: 16)
!209 = !DILocation(line: 83, column: 14, scope: !208)
!210 = !DILocation(line: 84, column: 14, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !2, line: 84, column: 13)
!212 = !DILocation(line: 84, column: 13, scope: !208)
!213 = !DILocation(line: 85, column: 13, scope: !211)
!214 = !DILocation(line: 86, column: 5, scope: !208)
!215 = !DILocation(line: 88, column: 18, scope: !87)
!216 = !DILocation(line: 88, column: 5, scope: !87)
!217 = !DILocation(line: 88, column: 11, scope: !87)
!218 = !DILocation(line: 88, column: 16, scope: !87)
!219 = !DILocation(line: 89, column: 10, scope: !220)
!220 = distinct !DILexicalBlock(scope: !87, file: !2, line: 89, column: 9)
!221 = !DILocation(line: 89, column: 9, scope: !87)
!222 = !DILocation(line: 90, column: 28, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !2, line: 89, column: 19)
!224 = !DILocation(line: 90, column: 21, scope: !223)
!225 = !DILocation(line: 90, column: 9, scope: !223)
!226 = !DILocation(line: 90, column: 15, scope: !223)
!227 = !DILocation(line: 90, column: 19, scope: !223)
!228 = !DILocation(line: 91, column: 22, scope: !223)
!229 = !DILocation(line: 91, column: 28, scope: !223)
!230 = !DILocation(line: 91, column: 9, scope: !223)
!231 = !DILocation(line: 91, column: 15, scope: !223)
!232 = !DILocation(line: 91, column: 20, scope: !223)
!233 = !DILocation(line: 92, column: 22, scope: !223)
!234 = !DILocation(line: 92, column: 9, scope: !223)
!235 = !DILocation(line: 92, column: 15, scope: !223)
!236 = !DILocation(line: 92, column: 20, scope: !223)
!237 = !DILocation(line: 93, column: 5, scope: !223)
!238 = !DILocation(line: 94, column: 5, scope: !87)
!239 = !DILabel(scope: !87, name: "oom", file: !2, line: 96)
!240 = !DILocation(line: 96, column: 1, scope: !87)
!241 = !DILocation(line: 97, column: 5, scope: !87)
!242 = !DILocation(line: 98, column: 1, scope: !87)
!243 = distinct !DISubprogram(name: "lwan_trie_lookup_full", scope: !2, file: !2, line: 123, type: !244, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !69)
!244 = !DISubroutineType(types: !245)
!245 = !{!27, !41, !90, !40}
!246 = !DILocalVariable(name: "trie", arg: 1, scope: !243, file: !2, line: 123, type: !41)
!247 = !DILocation(line: 123, column: 36, scope: !243)
!248 = !DILocalVariable(name: "key", arg: 2, scope: !243, file: !2, line: 123, type: !90)
!249 = !DILocation(line: 123, column: 54, scope: !243)
!250 = !DILocalVariable(name: "prefix", arg: 3, scope: !243, file: !2, line: 123, type: !40)
!251 = !DILocation(line: 123, column: 64, scope: !243)
!252 = !DILocation(line: 125, column: 9, scope: !253)
!253 = distinct !DILexicalBlock(scope: !243, file: !2, line: 125, column: 9)
!254 = !DILocation(line: 125, column: 9, scope: !243)
!255 = !DILocation(line: 126, column: 9, scope: !253)
!256 = !DILocalVariable(name: "prefix_len", scope: !243, file: !2, line: 128, type: !24)
!257 = !DILocation(line: 128, column: 12, scope: !243)
!258 = !DILocalVariable(name: "node", scope: !243, file: !2, line: 129, type: !47)
!259 = !DILocation(line: 129, column: 23, scope: !243)
!260 = !DILocation(line: 129, column: 42, scope: !243)
!261 = !DILocation(line: 129, column: 48, scope: !243)
!262 = !DILocation(line: 129, column: 54, scope: !243)
!263 = !DILocation(line: 129, column: 59, scope: !243)
!264 = !DILocalVariable(name: "root", arg: 1, scope: !265, file: !2, line: 103, type: !47)
!265 = distinct !DISubprogram(name: "lookup_node", scope: !2, file: !2, line: 103, type: !266, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !20, retainedNodes: !69)
!266 = !DISubroutineType(types: !267)
!267 = !{!47, !47, !90, !40, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!269 = !DILocation(line: 103, column: 31, scope: !265, inlinedAt: !270)
!270 = distinct !DILocation(line: 129, column: 30, scope: !243)
!271 = !DILocalVariable(name: "key", arg: 2, scope: !265, file: !2, line: 103, type: !90)
!272 = !DILocation(line: 103, column: 49, scope: !265, inlinedAt: !270)
!273 = !DILocalVariable(name: "prefix", arg: 3, scope: !265, file: !2, line: 103, type: !40)
!274 = !DILocation(line: 103, column: 59, scope: !265, inlinedAt: !270)
!275 = !DILocalVariable(name: "prefix_len", arg: 4, scope: !265, file: !2, line: 103, type: !268)
!276 = !DILocation(line: 103, column: 75, scope: !265, inlinedAt: !270)
!277 = !DILocalVariable(name: "node", scope: !265, file: !2, line: 105, type: !47)
!278 = !DILocation(line: 105, column: 23, scope: !265, inlinedAt: !270)
!279 = !DILocalVariable(name: "previous_node", scope: !265, file: !2, line: 105, type: !47)
!280 = !DILocation(line: 105, column: 30, scope: !265, inlinedAt: !270)
!281 = !DILocalVariable(name: "orig_key", scope: !265, file: !2, line: 106, type: !90)
!282 = !DILocation(line: 106, column: 17, scope: !265, inlinedAt: !270)
!283 = !DILocation(line: 106, column: 28, scope: !265, inlinedAt: !270)
!284 = !DILocation(line: 108, column: 17, scope: !285, inlinedAt: !270)
!285 = distinct !DILexicalBlock(scope: !265, file: !2, line: 108, column: 5)
!286 = !DILocation(line: 108, column: 15, scope: !285, inlinedAt: !270)
!287 = !DILocation(line: 108, column: 10, scope: !285, inlinedAt: !270)
!288 = !DILocation(line: 108, column: 23, scope: !289, inlinedAt: !270)
!289 = distinct !DILexicalBlock(scope: !285, file: !2, line: 108, column: 5)
!290 = !DILocation(line: 108, column: 28, scope: !289, inlinedAt: !270)
!291 = !DILocation(line: 108, column: 32, scope: !289, inlinedAt: !270)
!292 = !DILocation(line: 108, column: 31, scope: !289, inlinedAt: !270)
!293 = !DILocation(line: 0, scope: !289, inlinedAt: !270)
!294 = !DILocation(line: 108, column: 5, scope: !285, inlinedAt: !270)
!295 = !DILocation(line: 109, column: 13, scope: !296, inlinedAt: !270)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 109, column: 13)
!297 = distinct !DILexicalBlock(scope: !289, file: !2, line: 108, column: 75)
!298 = !DILocation(line: 109, column: 19, scope: !296, inlinedAt: !270)
!299 = !DILocation(line: 109, column: 13, scope: !297, inlinedAt: !270)
!300 = !DILocation(line: 110, column: 29, scope: !296, inlinedAt: !270)
!301 = !DILocation(line: 110, column: 27, scope: !296, inlinedAt: !270)
!302 = !DILocation(line: 110, column: 13, scope: !296, inlinedAt: !270)
!303 = !DILocation(line: 108, column: 44, scope: !289, inlinedAt: !270)
!304 = !DILocation(line: 108, column: 65, scope: !289, inlinedAt: !270)
!305 = !DILocation(line: 108, column: 61, scope: !289, inlinedAt: !270)
!306 = !DILocation(line: 108, column: 68, scope: !289, inlinedAt: !270)
!307 = !DILocation(line: 108, column: 42, scope: !289, inlinedAt: !270)
!308 = !DILocation(line: 108, column: 5, scope: !289, inlinedAt: !270)
!309 = distinct !{!309, !294, !310, !136}
!310 = !DILocation(line: 111, column: 5, scope: !285, inlinedAt: !270)
!311 = !DILocation(line: 113, column: 28, scope: !265, inlinedAt: !270)
!312 = !DILocation(line: 113, column: 34, scope: !265, inlinedAt: !270)
!313 = !DILocation(line: 113, column: 32, scope: !265, inlinedAt: !270)
!314 = !DILocation(line: 113, column: 6, scope: !265, inlinedAt: !270)
!315 = !DILocation(line: 113, column: 17, scope: !265, inlinedAt: !270)
!316 = !DILocation(line: 114, column: 9, scope: !317, inlinedAt: !270)
!317 = distinct !DILexicalBlock(scope: !265, file: !2, line: 114, column: 9)
!318 = !DILocation(line: 114, column: 14, scope: !317, inlinedAt: !270)
!319 = !DILocation(line: 114, column: 17, scope: !317, inlinedAt: !270)
!320 = !DILocation(line: 114, column: 23, scope: !317, inlinedAt: !270)
!321 = !DILocation(line: 114, column: 9, scope: !265, inlinedAt: !270)
!322 = !DILocation(line: 115, column: 16, scope: !317, inlinedAt: !270)
!323 = !DILocation(line: 115, column: 9, scope: !317, inlinedAt: !270)
!324 = !DILocation(line: 116, column: 9, scope: !325, inlinedAt: !270)
!325 = distinct !DILexicalBlock(scope: !265, file: !2, line: 116, column: 9)
!326 = !DILocation(line: 116, column: 16, scope: !325, inlinedAt: !270)
!327 = !DILocation(line: 116, column: 19, scope: !325, inlinedAt: !270)
!328 = !DILocation(line: 116, column: 9, scope: !265, inlinedAt: !270)
!329 = !DILocation(line: 117, column: 16, scope: !325, inlinedAt: !270)
!330 = !DILocation(line: 117, column: 9, scope: !325, inlinedAt: !270)
!331 = !DILocation(line: 118, column: 5, scope: !265, inlinedAt: !270)
!332 = !DILocation(line: 119, column: 1, scope: !265, inlinedAt: !270)
!333 = !DILocation(line: 130, column: 10, scope: !334)
!334 = distinct !DILexicalBlock(scope: !243, file: !2, line: 130, column: 9)
!335 = !DILocation(line: 130, column: 9, scope: !243)
!336 = !DILocation(line: 131, column: 9, scope: !334)
!337 = !DILocalVariable(name: "leaf", scope: !243, file: !2, line: 132, type: !56)
!338 = !DILocation(line: 132, column: 23, scope: !243)
!339 = !DILocation(line: 132, column: 49, scope: !243)
!340 = !DILocation(line: 132, column: 55, scope: !243)
!341 = !DILocation(line: 132, column: 60, scope: !243)
!342 = !DILocation(line: 36, column: 38, scope: !154, inlinedAt: !343)
!343 = distinct !DILocation(line: 132, column: 30, scope: !243)
!344 = !DILocation(line: 36, column: 56, scope: !154, inlinedAt: !343)
!345 = !DILocation(line: 36, column: 68, scope: !154, inlinedAt: !343)
!346 = !DILocation(line: 38, column: 23, scope: !154, inlinedAt: !343)
!347 = !DILocation(line: 38, column: 30, scope: !154, inlinedAt: !343)
!348 = !DILocation(line: 38, column: 36, scope: !154, inlinedAt: !343)
!349 = !DILocation(line: 40, column: 10, scope: !168, inlinedAt: !343)
!350 = !DILocation(line: 40, column: 9, scope: !154, inlinedAt: !343)
!351 = !DILocation(line: 41, column: 9, scope: !168, inlinedAt: !343)
!352 = !DILocation(line: 43, column: 10, scope: !172, inlinedAt: !343)
!353 = !DILocation(line: 43, column: 16, scope: !172, inlinedAt: !343)
!354 = !DILocation(line: 43, column: 9, scope: !154, inlinedAt: !343)
!355 = !DILocation(line: 44, column: 16, scope: !172, inlinedAt: !343)
!356 = !DILocation(line: 44, column: 9, scope: !172, inlinedAt: !343)
!357 = !DILocation(line: 46, column: 5, scope: !154, inlinedAt: !343)
!358 = !DILocation(line: 46, column: 12, scope: !179, inlinedAt: !343)
!359 = !DILocation(line: 46, column: 5, scope: !180, inlinedAt: !343)
!360 = !DILocation(line: 47, column: 22, scope: !183, inlinedAt: !343)
!361 = !DILocation(line: 47, column: 28, scope: !183, inlinedAt: !343)
!362 = !DILocation(line: 47, column: 33, scope: !183, inlinedAt: !343)
!363 = !DILocation(line: 47, column: 38, scope: !183, inlinedAt: !343)
!364 = !DILocation(line: 47, column: 42, scope: !183, inlinedAt: !343)
!365 = !DILocation(line: 47, column: 14, scope: !183, inlinedAt: !343)
!366 = !DILocation(line: 47, column: 13, scope: !184, inlinedAt: !343)
!367 = !DILocation(line: 48, column: 20, scope: !183, inlinedAt: !343)
!368 = !DILocation(line: 48, column: 13, scope: !183, inlinedAt: !343)
!369 = !DILocation(line: 46, column: 25, scope: !179, inlinedAt: !343)
!370 = !DILocation(line: 46, column: 31, scope: !179, inlinedAt: !343)
!371 = !DILocation(line: 46, column: 23, scope: !179, inlinedAt: !343)
!372 = !DILocation(line: 46, column: 5, scope: !179, inlinedAt: !343)
!373 = distinct !{!373, !359, !374, !136}
!374 = !DILocation(line: 49, column: 5, scope: !180, inlinedAt: !343)
!375 = !DILocation(line: 51, column: 5, scope: !154, inlinedAt: !343)
!376 = !DILocation(line: 52, column: 1, scope: !154, inlinedAt: !343)
!377 = !DILocation(line: 133, column: 12, scope: !243)
!378 = !DILocation(line: 133, column: 19, scope: !243)
!379 = !DILocation(line: 133, column: 25, scope: !243)
!380 = !DILocation(line: 133, column: 5, scope: !243)
!381 = !DILocation(line: 134, column: 1, scope: !243)
!382 = distinct !DISubprogram(name: "lwan_trie_lookup_prefix", scope: !2, file: !2, line: 137, type: !383, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !69)
!383 = !DISubroutineType(types: !384)
!384 = !{!27, !41, !90}
!385 = !DILocalVariable(name: "trie", arg: 1, scope: !382, file: !2, line: 137, type: !41)
!386 = !DILocation(line: 137, column: 38, scope: !382)
!387 = !DILocalVariable(name: "key", arg: 2, scope: !382, file: !2, line: 137, type: !90)
!388 = !DILocation(line: 137, column: 56, scope: !382)
!389 = !DILocation(line: 139, column: 34, scope: !382)
!390 = !DILocation(line: 139, column: 40, scope: !382)
!391 = !DILocation(line: 123, column: 36, scope: !243, inlinedAt: !392)
!392 = distinct !DILocation(line: 139, column: 12, scope: !382)
!393 = !DILocation(line: 123, column: 54, scope: !243, inlinedAt: !392)
!394 = !DILocation(line: 123, column: 64, scope: !243, inlinedAt: !392)
!395 = !DILocation(line: 125, column: 9, scope: !253, inlinedAt: !392)
!396 = !DILocation(line: 125, column: 9, scope: !243, inlinedAt: !392)
!397 = !DILocation(line: 126, column: 9, scope: !253, inlinedAt: !392)
!398 = !DILocation(line: 128, column: 12, scope: !243, inlinedAt: !392)
!399 = !DILocation(line: 129, column: 23, scope: !243, inlinedAt: !392)
!400 = !DILocation(line: 129, column: 42, scope: !243, inlinedAt: !392)
!401 = !DILocation(line: 129, column: 48, scope: !243, inlinedAt: !392)
!402 = !DILocation(line: 129, column: 54, scope: !243, inlinedAt: !392)
!403 = !DILocation(line: 129, column: 59, scope: !243, inlinedAt: !392)
!404 = !DILocation(line: 103, column: 31, scope: !265, inlinedAt: !405)
!405 = distinct !DILocation(line: 129, column: 30, scope: !243, inlinedAt: !392)
!406 = !DILocation(line: 103, column: 49, scope: !265, inlinedAt: !405)
!407 = !DILocation(line: 103, column: 59, scope: !265, inlinedAt: !405)
!408 = !DILocation(line: 103, column: 75, scope: !265, inlinedAt: !405)
!409 = !DILocation(line: 105, column: 23, scope: !265, inlinedAt: !405)
!410 = !DILocation(line: 105, column: 30, scope: !265, inlinedAt: !405)
!411 = !DILocation(line: 106, column: 17, scope: !265, inlinedAt: !405)
!412 = !DILocation(line: 106, column: 28, scope: !265, inlinedAt: !405)
!413 = !DILocation(line: 108, column: 17, scope: !285, inlinedAt: !405)
!414 = !DILocation(line: 108, column: 15, scope: !285, inlinedAt: !405)
!415 = !DILocation(line: 108, column: 10, scope: !285, inlinedAt: !405)
!416 = !DILocation(line: 108, column: 23, scope: !289, inlinedAt: !405)
!417 = !DILocation(line: 108, column: 28, scope: !289, inlinedAt: !405)
!418 = !DILocation(line: 108, column: 32, scope: !289, inlinedAt: !405)
!419 = !DILocation(line: 108, column: 31, scope: !289, inlinedAt: !405)
!420 = !DILocation(line: 0, scope: !289, inlinedAt: !405)
!421 = !DILocation(line: 108, column: 5, scope: !285, inlinedAt: !405)
!422 = !DILocation(line: 109, column: 13, scope: !296, inlinedAt: !405)
!423 = !DILocation(line: 109, column: 19, scope: !296, inlinedAt: !405)
!424 = !DILocation(line: 109, column: 13, scope: !297, inlinedAt: !405)
!425 = !DILocation(line: 110, column: 29, scope: !296, inlinedAt: !405)
!426 = !DILocation(line: 110, column: 27, scope: !296, inlinedAt: !405)
!427 = !DILocation(line: 110, column: 13, scope: !296, inlinedAt: !405)
!428 = !DILocation(line: 108, column: 44, scope: !289, inlinedAt: !405)
!429 = !DILocation(line: 108, column: 65, scope: !289, inlinedAt: !405)
!430 = !DILocation(line: 108, column: 61, scope: !289, inlinedAt: !405)
!431 = !DILocation(line: 108, column: 68, scope: !289, inlinedAt: !405)
!432 = !DILocation(line: 108, column: 42, scope: !289, inlinedAt: !405)
!433 = !DILocation(line: 108, column: 5, scope: !289, inlinedAt: !405)
!434 = distinct !{!434, !421, !435, !136}
!435 = !DILocation(line: 111, column: 5, scope: !285, inlinedAt: !405)
!436 = !DILocation(line: 113, column: 28, scope: !265, inlinedAt: !405)
!437 = !DILocation(line: 113, column: 34, scope: !265, inlinedAt: !405)
!438 = !DILocation(line: 113, column: 32, scope: !265, inlinedAt: !405)
!439 = !DILocation(line: 113, column: 6, scope: !265, inlinedAt: !405)
!440 = !DILocation(line: 113, column: 17, scope: !265, inlinedAt: !405)
!441 = !DILocation(line: 114, column: 9, scope: !317, inlinedAt: !405)
!442 = !DILocation(line: 114, column: 14, scope: !317, inlinedAt: !405)
!443 = !DILocation(line: 114, column: 17, scope: !317, inlinedAt: !405)
!444 = !DILocation(line: 114, column: 23, scope: !317, inlinedAt: !405)
!445 = !DILocation(line: 114, column: 9, scope: !265, inlinedAt: !405)
!446 = !DILocation(line: 115, column: 16, scope: !317, inlinedAt: !405)
!447 = !DILocation(line: 115, column: 9, scope: !317, inlinedAt: !405)
!448 = !DILocation(line: 116, column: 9, scope: !325, inlinedAt: !405)
!449 = !DILocation(line: 116, column: 16, scope: !325, inlinedAt: !405)
!450 = !DILocation(line: 116, column: 19, scope: !325, inlinedAt: !405)
!451 = !DILocation(line: 116, column: 9, scope: !265, inlinedAt: !405)
!452 = !DILocation(line: 117, column: 16, scope: !325, inlinedAt: !405)
!453 = !DILocation(line: 117, column: 9, scope: !325, inlinedAt: !405)
!454 = !DILocation(line: 118, column: 5, scope: !265, inlinedAt: !405)
!455 = !DILocation(line: 119, column: 1, scope: !265, inlinedAt: !405)
!456 = !DILocation(line: 130, column: 10, scope: !334, inlinedAt: !392)
!457 = !DILocation(line: 130, column: 9, scope: !243, inlinedAt: !392)
!458 = !DILocation(line: 131, column: 9, scope: !334, inlinedAt: !392)
!459 = !DILocation(line: 132, column: 23, scope: !243, inlinedAt: !392)
!460 = !DILocation(line: 132, column: 49, scope: !243, inlinedAt: !392)
!461 = !DILocation(line: 132, column: 55, scope: !243, inlinedAt: !392)
!462 = !DILocation(line: 132, column: 60, scope: !243, inlinedAt: !392)
!463 = !DILocation(line: 36, column: 38, scope: !154, inlinedAt: !464)
!464 = distinct !DILocation(line: 132, column: 30, scope: !243, inlinedAt: !392)
!465 = !DILocation(line: 36, column: 56, scope: !154, inlinedAt: !464)
!466 = !DILocation(line: 36, column: 68, scope: !154, inlinedAt: !464)
!467 = !DILocation(line: 38, column: 23, scope: !154, inlinedAt: !464)
!468 = !DILocation(line: 38, column: 30, scope: !154, inlinedAt: !464)
!469 = !DILocation(line: 38, column: 36, scope: !154, inlinedAt: !464)
!470 = !DILocation(line: 40, column: 10, scope: !168, inlinedAt: !464)
!471 = !DILocation(line: 40, column: 9, scope: !154, inlinedAt: !464)
!472 = !DILocation(line: 41, column: 9, scope: !168, inlinedAt: !464)
!473 = !DILocation(line: 43, column: 10, scope: !172, inlinedAt: !464)
!474 = !DILocation(line: 43, column: 16, scope: !172, inlinedAt: !464)
!475 = !DILocation(line: 43, column: 9, scope: !154, inlinedAt: !464)
!476 = !DILocation(line: 44, column: 16, scope: !172, inlinedAt: !464)
!477 = !DILocation(line: 44, column: 9, scope: !172, inlinedAt: !464)
!478 = !DILocation(line: 46, column: 5, scope: !154, inlinedAt: !464)
!479 = !DILocation(line: 46, column: 12, scope: !179, inlinedAt: !464)
!480 = !DILocation(line: 46, column: 5, scope: !180, inlinedAt: !464)
!481 = !DILocation(line: 47, column: 22, scope: !183, inlinedAt: !464)
!482 = !DILocation(line: 47, column: 28, scope: !183, inlinedAt: !464)
!483 = !DILocation(line: 47, column: 33, scope: !183, inlinedAt: !464)
!484 = !DILocation(line: 47, column: 38, scope: !183, inlinedAt: !464)
!485 = !DILocation(line: 47, column: 42, scope: !183, inlinedAt: !464)
!486 = !DILocation(line: 47, column: 14, scope: !183, inlinedAt: !464)
!487 = !DILocation(line: 47, column: 13, scope: !184, inlinedAt: !464)
!488 = !DILocation(line: 48, column: 20, scope: !183, inlinedAt: !464)
!489 = !DILocation(line: 48, column: 13, scope: !183, inlinedAt: !464)
!490 = !DILocation(line: 46, column: 25, scope: !179, inlinedAt: !464)
!491 = !DILocation(line: 46, column: 31, scope: !179, inlinedAt: !464)
!492 = !DILocation(line: 46, column: 23, scope: !179, inlinedAt: !464)
!493 = !DILocation(line: 46, column: 5, scope: !179, inlinedAt: !464)
!494 = distinct !{!494, !480, !495, !136}
!495 = !DILocation(line: 49, column: 5, scope: !180, inlinedAt: !464)
!496 = !DILocation(line: 51, column: 5, scope: !154, inlinedAt: !464)
!497 = !DILocation(line: 52, column: 1, scope: !154, inlinedAt: !464)
!498 = !DILocation(line: 133, column: 12, scope: !243, inlinedAt: !392)
!499 = !DILocation(line: 133, column: 19, scope: !243, inlinedAt: !392)
!500 = !DILocation(line: 133, column: 25, scope: !243, inlinedAt: !392)
!501 = !DILocation(line: 133, column: 5, scope: !243, inlinedAt: !392)
!502 = !DILocation(line: 134, column: 1, scope: !243, inlinedAt: !392)
!503 = !DILocation(line: 139, column: 5, scope: !382)
!504 = distinct !DISubprogram(name: "lwan_trie_lookup_exact", scope: !2, file: !2, line: 143, type: !383, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !69)
!505 = !DILocalVariable(name: "trie", arg: 1, scope: !504, file: !2, line: 143, type: !41)
!506 = !DILocation(line: 143, column: 37, scope: !504)
!507 = !DILocalVariable(name: "key", arg: 2, scope: !504, file: !2, line: 143, type: !90)
!508 = !DILocation(line: 143, column: 55, scope: !504)
!509 = !DILocation(line: 145, column: 34, scope: !504)
!510 = !DILocation(line: 145, column: 40, scope: !504)
!511 = !DILocation(line: 123, column: 36, scope: !243, inlinedAt: !512)
!512 = distinct !DILocation(line: 145, column: 12, scope: !504)
!513 = !DILocation(line: 123, column: 54, scope: !243, inlinedAt: !512)
!514 = !DILocation(line: 123, column: 64, scope: !243, inlinedAt: !512)
!515 = !DILocation(line: 125, column: 9, scope: !253, inlinedAt: !512)
!516 = !DILocation(line: 125, column: 9, scope: !243, inlinedAt: !512)
!517 = !DILocation(line: 126, column: 9, scope: !253, inlinedAt: !512)
!518 = !DILocation(line: 128, column: 12, scope: !243, inlinedAt: !512)
!519 = !DILocation(line: 129, column: 23, scope: !243, inlinedAt: !512)
!520 = !DILocation(line: 129, column: 42, scope: !243, inlinedAt: !512)
!521 = !DILocation(line: 129, column: 48, scope: !243, inlinedAt: !512)
!522 = !DILocation(line: 129, column: 54, scope: !243, inlinedAt: !512)
!523 = !DILocation(line: 129, column: 59, scope: !243, inlinedAt: !512)
!524 = !DILocation(line: 103, column: 31, scope: !265, inlinedAt: !525)
!525 = distinct !DILocation(line: 129, column: 30, scope: !243, inlinedAt: !512)
!526 = !DILocation(line: 103, column: 49, scope: !265, inlinedAt: !525)
!527 = !DILocation(line: 103, column: 59, scope: !265, inlinedAt: !525)
!528 = !DILocation(line: 103, column: 75, scope: !265, inlinedAt: !525)
!529 = !DILocation(line: 105, column: 23, scope: !265, inlinedAt: !525)
!530 = !DILocation(line: 105, column: 30, scope: !265, inlinedAt: !525)
!531 = !DILocation(line: 106, column: 17, scope: !265, inlinedAt: !525)
!532 = !DILocation(line: 106, column: 28, scope: !265, inlinedAt: !525)
!533 = !DILocation(line: 108, column: 17, scope: !285, inlinedAt: !525)
!534 = !DILocation(line: 108, column: 15, scope: !285, inlinedAt: !525)
!535 = !DILocation(line: 108, column: 10, scope: !285, inlinedAt: !525)
!536 = !DILocation(line: 108, column: 23, scope: !289, inlinedAt: !525)
!537 = !DILocation(line: 108, column: 28, scope: !289, inlinedAt: !525)
!538 = !DILocation(line: 108, column: 32, scope: !289, inlinedAt: !525)
!539 = !DILocation(line: 108, column: 31, scope: !289, inlinedAt: !525)
!540 = !DILocation(line: 0, scope: !289, inlinedAt: !525)
!541 = !DILocation(line: 108, column: 5, scope: !285, inlinedAt: !525)
!542 = !DILocation(line: 109, column: 13, scope: !296, inlinedAt: !525)
!543 = !DILocation(line: 109, column: 19, scope: !296, inlinedAt: !525)
!544 = !DILocation(line: 109, column: 13, scope: !297, inlinedAt: !525)
!545 = !DILocation(line: 110, column: 29, scope: !296, inlinedAt: !525)
!546 = !DILocation(line: 110, column: 27, scope: !296, inlinedAt: !525)
!547 = !DILocation(line: 110, column: 13, scope: !296, inlinedAt: !525)
!548 = !DILocation(line: 108, column: 44, scope: !289, inlinedAt: !525)
!549 = !DILocation(line: 108, column: 65, scope: !289, inlinedAt: !525)
!550 = !DILocation(line: 108, column: 61, scope: !289, inlinedAt: !525)
!551 = !DILocation(line: 108, column: 68, scope: !289, inlinedAt: !525)
!552 = !DILocation(line: 108, column: 42, scope: !289, inlinedAt: !525)
!553 = !DILocation(line: 108, column: 5, scope: !289, inlinedAt: !525)
!554 = distinct !{!554, !541, !555, !136}
!555 = !DILocation(line: 111, column: 5, scope: !285, inlinedAt: !525)
!556 = !DILocation(line: 113, column: 28, scope: !265, inlinedAt: !525)
!557 = !DILocation(line: 113, column: 34, scope: !265, inlinedAt: !525)
!558 = !DILocation(line: 113, column: 32, scope: !265, inlinedAt: !525)
!559 = !DILocation(line: 113, column: 6, scope: !265, inlinedAt: !525)
!560 = !DILocation(line: 113, column: 17, scope: !265, inlinedAt: !525)
!561 = !DILocation(line: 114, column: 9, scope: !317, inlinedAt: !525)
!562 = !DILocation(line: 114, column: 14, scope: !317, inlinedAt: !525)
!563 = !DILocation(line: 114, column: 17, scope: !317, inlinedAt: !525)
!564 = !DILocation(line: 114, column: 23, scope: !317, inlinedAt: !525)
!565 = !DILocation(line: 114, column: 9, scope: !265, inlinedAt: !525)
!566 = !DILocation(line: 115, column: 16, scope: !317, inlinedAt: !525)
!567 = !DILocation(line: 115, column: 9, scope: !317, inlinedAt: !525)
!568 = !DILocation(line: 116, column: 9, scope: !325, inlinedAt: !525)
!569 = !DILocation(line: 116, column: 16, scope: !325, inlinedAt: !525)
!570 = !DILocation(line: 116, column: 19, scope: !325, inlinedAt: !525)
!571 = !DILocation(line: 116, column: 9, scope: !265, inlinedAt: !525)
!572 = !DILocation(line: 117, column: 16, scope: !325, inlinedAt: !525)
!573 = !DILocation(line: 117, column: 9, scope: !325, inlinedAt: !525)
!574 = !DILocation(line: 118, column: 5, scope: !265, inlinedAt: !525)
!575 = !DILocation(line: 119, column: 1, scope: !265, inlinedAt: !525)
!576 = !DILocation(line: 130, column: 10, scope: !334, inlinedAt: !512)
!577 = !DILocation(line: 130, column: 9, scope: !243, inlinedAt: !512)
!578 = !DILocation(line: 131, column: 9, scope: !334, inlinedAt: !512)
!579 = !DILocation(line: 132, column: 23, scope: !243, inlinedAt: !512)
!580 = !DILocation(line: 132, column: 49, scope: !243, inlinedAt: !512)
!581 = !DILocation(line: 132, column: 55, scope: !243, inlinedAt: !512)
!582 = !DILocation(line: 132, column: 60, scope: !243, inlinedAt: !512)
!583 = !DILocation(line: 36, column: 38, scope: !154, inlinedAt: !584)
!584 = distinct !DILocation(line: 132, column: 30, scope: !243, inlinedAt: !512)
!585 = !DILocation(line: 36, column: 56, scope: !154, inlinedAt: !584)
!586 = !DILocation(line: 36, column: 68, scope: !154, inlinedAt: !584)
!587 = !DILocation(line: 38, column: 23, scope: !154, inlinedAt: !584)
!588 = !DILocation(line: 38, column: 30, scope: !154, inlinedAt: !584)
!589 = !DILocation(line: 38, column: 36, scope: !154, inlinedAt: !584)
!590 = !DILocation(line: 40, column: 10, scope: !168, inlinedAt: !584)
!591 = !DILocation(line: 40, column: 9, scope: !154, inlinedAt: !584)
!592 = !DILocation(line: 41, column: 9, scope: !168, inlinedAt: !584)
!593 = !DILocation(line: 43, column: 10, scope: !172, inlinedAt: !584)
!594 = !DILocation(line: 43, column: 16, scope: !172, inlinedAt: !584)
!595 = !DILocation(line: 43, column: 9, scope: !154, inlinedAt: !584)
!596 = !DILocation(line: 44, column: 16, scope: !172, inlinedAt: !584)
!597 = !DILocation(line: 44, column: 9, scope: !172, inlinedAt: !584)
!598 = !DILocation(line: 46, column: 5, scope: !154, inlinedAt: !584)
!599 = !DILocation(line: 46, column: 12, scope: !179, inlinedAt: !584)
!600 = !DILocation(line: 46, column: 5, scope: !180, inlinedAt: !584)
!601 = !DILocation(line: 47, column: 22, scope: !183, inlinedAt: !584)
!602 = !DILocation(line: 47, column: 28, scope: !183, inlinedAt: !584)
!603 = !DILocation(line: 47, column: 33, scope: !183, inlinedAt: !584)
!604 = !DILocation(line: 47, column: 38, scope: !183, inlinedAt: !584)
!605 = !DILocation(line: 47, column: 42, scope: !183, inlinedAt: !584)
!606 = !DILocation(line: 47, column: 14, scope: !183, inlinedAt: !584)
!607 = !DILocation(line: 47, column: 13, scope: !184, inlinedAt: !584)
!608 = !DILocation(line: 48, column: 20, scope: !183, inlinedAt: !584)
!609 = !DILocation(line: 48, column: 13, scope: !183, inlinedAt: !584)
!610 = !DILocation(line: 46, column: 25, scope: !179, inlinedAt: !584)
!611 = !DILocation(line: 46, column: 31, scope: !179, inlinedAt: !584)
!612 = !DILocation(line: 46, column: 23, scope: !179, inlinedAt: !584)
!613 = !DILocation(line: 46, column: 5, scope: !179, inlinedAt: !584)
!614 = distinct !{!614, !600, !615, !136}
!615 = !DILocation(line: 49, column: 5, scope: !180, inlinedAt: !584)
!616 = !DILocation(line: 51, column: 5, scope: !154, inlinedAt: !584)
!617 = !DILocation(line: 52, column: 1, scope: !154, inlinedAt: !584)
!618 = !DILocation(line: 133, column: 12, scope: !243, inlinedAt: !512)
!619 = !DILocation(line: 133, column: 19, scope: !243, inlinedAt: !512)
!620 = !DILocation(line: 133, column: 25, scope: !243, inlinedAt: !512)
!621 = !DILocation(line: 133, column: 5, scope: !243, inlinedAt: !512)
!622 = !DILocation(line: 134, column: 1, scope: !243, inlinedAt: !512)
!623 = !DILocation(line: 145, column: 5, scope: !504)
!624 = distinct !DISubprogram(name: "lwan_trie_entry_count", scope: !2, file: !2, line: 149, type: !625, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !69)
!625 = !DISubroutineType(types: !626)
!626 = !{!627, !41}
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !628, line: 26, baseType: !629)
!628 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !630, line: 41, baseType: !23)
!630 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!631 = !DILocalVariable(name: "trie", arg: 1, scope: !624, file: !2, line: 149, type: !41)
!632 = !DILocation(line: 149, column: 36, scope: !624)
!633 = !DILocation(line: 151, column: 13, scope: !624)
!634 = !DILocation(line: 151, column: 18, scope: !624)
!635 = !DILocation(line: 151, column: 21, scope: !624)
!636 = !DILocation(line: 151, column: 27, scope: !624)
!637 = !DILocation(line: 151, column: 12, scope: !624)
!638 = !DILocation(line: 151, column: 35, scope: !624)
!639 = !DILocation(line: 151, column: 41, scope: !624)
!640 = !DILocation(line: 151, column: 47, scope: !624)
!641 = !DILocation(line: 151, column: 5, scope: !624)
!642 = distinct !DISubprogram(name: "lwan_trie_destroy", scope: !2, file: !2, line: 184, type: !643, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !69)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !41}
!645 = !DILocalVariable(name: "trie", arg: 1, scope: !642, file: !2, line: 184, type: !41)
!646 = !DILocation(line: 184, column: 32, scope: !642)
!647 = !DILocation(line: 186, column: 10, scope: !648)
!648 = distinct !DILexicalBlock(scope: !642, file: !2, line: 186, column: 9)
!649 = !DILocation(line: 186, column: 15, scope: !648)
!650 = !DILocation(line: 186, column: 19, scope: !648)
!651 = !DILocation(line: 186, column: 25, scope: !648)
!652 = !DILocation(line: 186, column: 9, scope: !642)
!653 = !DILocation(line: 187, column: 9, scope: !648)
!654 = !DILocation(line: 188, column: 28, scope: !642)
!655 = !DILocation(line: 188, column: 34, scope: !642)
!656 = !DILocation(line: 188, column: 40, scope: !642)
!657 = !DILocation(line: 188, column: 5, scope: !642)
!658 = !DILocation(line: 189, column: 1, scope: !642)
!659 = distinct !DISubprogram(name: "lwan_trie_node_destroy", scope: !2, file: !2, line: 155, type: !660, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !20, retainedNodes: !69)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !41, !47}
!662 = !DILocalVariable(name: "trie", arg: 1, scope: !659, file: !2, line: 155, type: !41)
!663 = !DILocation(line: 155, column: 37, scope: !659)
!664 = !DILocalVariable(name: "node", arg: 2, scope: !659, file: !2, line: 155, type: !47)
!665 = !DILocation(line: 155, column: 61, scope: !659)
!666 = !DILocation(line: 157, column: 10, scope: !667)
!667 = distinct !DILexicalBlock(scope: !659, file: !2, line: 157, column: 9)
!668 = !DILocation(line: 157, column: 9, scope: !659)
!669 = !DILocation(line: 158, column: 9, scope: !667)
!670 = !DILocalVariable(name: "nodes_destroyed", scope: !659, file: !2, line: 160, type: !627)
!671 = !DILocation(line: 160, column: 13, scope: !659)
!672 = !DILocation(line: 160, column: 31, scope: !659)
!673 = !DILocation(line: 160, column: 37, scope: !659)
!674 = !DILocalVariable(name: "leaf", scope: !675, file: !2, line: 162, type: !56)
!675 = distinct !DILexicalBlock(scope: !659, file: !2, line: 162, column: 5)
!676 = !DILocation(line: 162, column: 28, scope: !675)
!677 = !DILocation(line: 162, column: 35, scope: !675)
!678 = !DILocation(line: 162, column: 41, scope: !675)
!679 = !DILocation(line: 162, column: 10, scope: !675)
!680 = !DILocation(line: 162, column: 47, scope: !681)
!681 = distinct !DILexicalBlock(scope: !675, file: !2, line: 162, column: 5)
!682 = !DILocation(line: 162, column: 5, scope: !675)
!683 = !DILocalVariable(name: "tmp", scope: !684, file: !2, line: 163, type: !56)
!684 = distinct !DILexicalBlock(scope: !681, file: !2, line: 162, column: 54)
!685 = !DILocation(line: 163, column: 27, scope: !684)
!686 = !DILocation(line: 163, column: 33, scope: !684)
!687 = !DILocation(line: 163, column: 39, scope: !684)
!688 = !DILocation(line: 165, column: 13, scope: !689)
!689 = distinct !DILexicalBlock(scope: !684, file: !2, line: 165, column: 13)
!690 = !DILocation(line: 165, column: 19, scope: !689)
!691 = !DILocation(line: 165, column: 13, scope: !684)
!692 = !DILocation(line: 166, column: 13, scope: !689)
!693 = !DILocation(line: 166, column: 19, scope: !689)
!694 = !DILocation(line: 166, column: 29, scope: !689)
!695 = !DILocation(line: 166, column: 35, scope: !689)
!696 = !DILocation(line: 168, column: 14, scope: !684)
!697 = !DILocation(line: 168, column: 20, scope: !684)
!698 = !DILocation(line: 168, column: 9, scope: !684)
!699 = !DILocation(line: 169, column: 14, scope: !684)
!700 = !DILocation(line: 169, column: 9, scope: !684)
!701 = !DILocation(line: 170, column: 16, scope: !684)
!702 = !DILocation(line: 170, column: 14, scope: !684)
!703 = !DILocation(line: 162, column: 5, scope: !681)
!704 = distinct !{!704, !682, !705, !136}
!705 = !DILocation(line: 171, column: 5, scope: !675)
!706 = !DILocalVariable(name: "i", scope: !707, file: !2, line: 173, type: !627)
!707 = distinct !DILexicalBlock(scope: !659, file: !2, line: 173, column: 5)
!708 = !DILocation(line: 173, column: 18, scope: !707)
!709 = !DILocation(line: 173, column: 10, scope: !707)
!710 = !DILocation(line: 173, column: 25, scope: !711)
!711 = distinct !DILexicalBlock(scope: !707, file: !2, line: 173, column: 5)
!712 = !DILocation(line: 173, column: 41, scope: !711)
!713 = !DILocation(line: 173, column: 45, scope: !711)
!714 = !DILocation(line: 173, column: 48, scope: !711)
!715 = !DILocation(line: 173, column: 50, scope: !711)
!716 = !DILocation(line: 0, scope: !711)
!717 = !DILocation(line: 173, column: 5, scope: !707)
!718 = !DILocation(line: 174, column: 13, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !2, line: 174, column: 13)
!720 = distinct !DILexicalBlock(scope: !711, file: !2, line: 173, column: 60)
!721 = !DILocation(line: 174, column: 19, scope: !719)
!722 = !DILocation(line: 174, column: 24, scope: !719)
!723 = !DILocation(line: 174, column: 13, scope: !720)
!724 = !DILocation(line: 175, column: 36, scope: !725)
!725 = distinct !DILexicalBlock(scope: !719, file: !2, line: 174, column: 28)
!726 = !DILocation(line: 175, column: 42, scope: !725)
!727 = !DILocation(line: 175, column: 48, scope: !725)
!728 = !DILocation(line: 175, column: 53, scope: !725)
!729 = !DILocation(line: 175, column: 13, scope: !725)
!730 = !DILocation(line: 176, column: 13, scope: !725)
!731 = !DILocation(line: 177, column: 9, scope: !725)
!732 = !DILocation(line: 178, column: 5, scope: !720)
!733 = !DILocation(line: 173, column: 56, scope: !711)
!734 = !DILocation(line: 173, column: 5, scope: !711)
!735 = distinct !{!735, !717, !736, !136}
!736 = !DILocation(line: 178, column: 5, scope: !707)
!737 = !DILocation(line: 180, column: 10, scope: !659)
!738 = !DILocation(line: 180, column: 5, scope: !659)
!739 = !DILocation(line: 181, column: 1, scope: !659)
