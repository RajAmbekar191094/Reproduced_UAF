; ModuleID = './src/utils/hash.c'
source_filename = "./src/utils/hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_hash = type { i32, i32, ptr }
%struct.nn_list = type { ptr, ptr }
%struct.nn_hash_item = type { i32, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [19 x i8] c"./src/utils/hash.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [52 x i8] c"nn_cont (it, struct nn_hash_item, list)->key != key\00", align 1, !dbg !17

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_hash_init(ptr noundef %0) #0 !dbg !52 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata ptr %3, metadata !69, metadata !DIExpression()), !dbg !70
  %4 = load ptr, ptr %2, align 8, !dbg !71
  %5 = getelementptr inbounds %struct.nn_hash, ptr %4, i32 0, i32 0, !dbg !72
  store i32 32, ptr %5, align 8, !dbg !73
  %6 = load ptr, ptr %2, align 8, !dbg !74
  %7 = getelementptr inbounds %struct.nn_hash, ptr %6, i32 0, i32 1, !dbg !75
  store i32 0, ptr %7, align 4, !dbg !76
  %8 = call ptr @nn_alloc_(i64 noundef 512), !dbg !77
  %9 = load ptr, ptr %2, align 8, !dbg !78
  %10 = getelementptr inbounds %struct.nn_hash, ptr %9, i32 0, i32 2, !dbg !79
  store ptr %8, ptr %10, align 8, !dbg !80
  br label %11, !dbg !81

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 8, !dbg !82
  %13 = getelementptr inbounds %struct.nn_hash, ptr %12, i32 0, i32 2, !dbg !82
  %14 = load ptr, ptr %13, align 8, !dbg !82
  %15 = icmp ne ptr %14, null, !dbg !82
  %16 = xor i1 %15, true, !dbg !82
  %17 = zext i1 %16 to i32, !dbg !82
  %18 = sext i32 %17 to i64, !dbg !82
  %19 = icmp ne i64 %18, 0, !dbg !82
  br i1 %19, label %20, label %23, !dbg !85

20:                                               ; preds = %11
  %21 = load ptr, ptr @stderr, align 8, !dbg !86
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 41), !dbg !86
  call void @nn_err_abort() #4, !dbg !86
  unreachable, !dbg !86

23:                                               ; preds = %11
  br label %24, !dbg !85

24:                                               ; preds = %23
  store i32 0, ptr %3, align 4, !dbg !88
  br label %25, !dbg !90

25:                                               ; preds = %35, %24
  %26 = load i32, ptr %3, align 4, !dbg !91
  %27 = icmp ne i32 %26, 32, !dbg !93
  br i1 %27, label %28, label %38, !dbg !94

28:                                               ; preds = %25
  %29 = load ptr, ptr %2, align 8, !dbg !95
  %30 = getelementptr inbounds %struct.nn_hash, ptr %29, i32 0, i32 2, !dbg !96
  %31 = load ptr, ptr %30, align 8, !dbg !96
  %32 = load i32, ptr %3, align 4, !dbg !97
  %33 = zext i32 %32 to i64, !dbg !95
  %34 = getelementptr inbounds %struct.nn_list, ptr %31, i64 %33, !dbg !95
  call void @nn_list_init(ptr noundef %34), !dbg !98
  br label %35, !dbg !98

35:                                               ; preds = %28
  %36 = load i32, ptr %3, align 4, !dbg !99
  %37 = add i32 %36, 1, !dbg !99
  store i32 %37, ptr %3, align 4, !dbg !99
  br label %25, !dbg !100, !llvm.loop !101

38:                                               ; preds = %25
  ret void, !dbg !104
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_list_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_hash_term(ptr noundef %0) #0 !dbg !105 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata ptr %3, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 0, ptr %3, align 4, !dbg !110
  br label %4, !dbg !112

4:                                                ; preds = %17, %1
  %5 = load i32, ptr %3, align 4, !dbg !113
  %6 = load ptr, ptr %2, align 8, !dbg !115
  %7 = getelementptr inbounds %struct.nn_hash, ptr %6, i32 0, i32 0, !dbg !116
  %8 = load i32, ptr %7, align 8, !dbg !116
  %9 = icmp ne i32 %5, %8, !dbg !117
  br i1 %9, label %10, label %20, !dbg !118

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !dbg !119
  %12 = getelementptr inbounds %struct.nn_hash, ptr %11, i32 0, i32 2, !dbg !120
  %13 = load ptr, ptr %12, align 8, !dbg !120
  %14 = load i32, ptr %3, align 4, !dbg !121
  %15 = zext i32 %14 to i64, !dbg !119
  %16 = getelementptr inbounds %struct.nn_list, ptr %13, i64 %15, !dbg !119
  call void @nn_list_term(ptr noundef %16), !dbg !122
  br label %17, !dbg !122

17:                                               ; preds = %10
  %18 = load i32, ptr %3, align 4, !dbg !123
  %19 = add i32 %18, 1, !dbg !123
  store i32 %19, ptr %3, align 4, !dbg !123
  br label %4, !dbg !124, !llvm.loop !125

20:                                               ; preds = %4
  %21 = load ptr, ptr %2, align 8, !dbg !127
  %22 = getelementptr inbounds %struct.nn_hash, ptr %21, i32 0, i32 2, !dbg !128
  %23 = load ptr, ptr %22, align 8, !dbg !128
  call void @nn_free(ptr noundef %23), !dbg !129
  ret void, !dbg !130
}

declare void @nn_list_term(ptr noundef) #2

declare void @nn_free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_hash_insert(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !131 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !134, metadata !DIExpression()), !dbg !135
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !136, metadata !DIExpression()), !dbg !137
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata ptr %7, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata ptr %8, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata ptr %9, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata ptr %10, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata ptr %11, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata ptr %12, metadata !150, metadata !DIExpression()), !dbg !151
  %13 = load i32, ptr %5, align 4, !dbg !152
  %14 = call i32 @nn_hash_key(i32 noundef %13), !dbg !153
  %15 = load ptr, ptr %4, align 8, !dbg !154
  %16 = getelementptr inbounds %struct.nn_hash, ptr %15, i32 0, i32 0, !dbg !155
  %17 = load i32, ptr %16, align 8, !dbg !155
  %18 = urem i32 %14, %17, !dbg !156
  store i32 %18, ptr %8, align 4, !dbg !157
  %19 = load ptr, ptr %4, align 8, !dbg !158
  %20 = getelementptr inbounds %struct.nn_hash, ptr %19, i32 0, i32 2, !dbg !160
  %21 = load ptr, ptr %20, align 8, !dbg !160
  %22 = load i32, ptr %8, align 4, !dbg !161
  %23 = zext i32 %22 to i64, !dbg !158
  %24 = getelementptr inbounds %struct.nn_list, ptr %21, i64 %23, !dbg !158
  %25 = call ptr @nn_list_begin(ptr noundef %24), !dbg !162
  store ptr %25, ptr %7, align 8, !dbg !163
  br label %26, !dbg !164

26:                                               ; preds = %59, %3
  %27 = load ptr, ptr %7, align 8, !dbg !165
  %28 = load ptr, ptr %4, align 8, !dbg !167
  %29 = getelementptr inbounds %struct.nn_hash, ptr %28, i32 0, i32 2, !dbg !168
  %30 = load ptr, ptr %29, align 8, !dbg !168
  %31 = load i32, ptr %8, align 4, !dbg !169
  %32 = zext i32 %31 to i64, !dbg !167
  %33 = getelementptr inbounds %struct.nn_list, ptr %30, i64 %32, !dbg !167
  %34 = call ptr @nn_list_end(ptr noundef %33), !dbg !170
  %35 = icmp ne ptr %27, %34, !dbg !171
  br i1 %35, label %36, label %68, !dbg !172

36:                                               ; preds = %26
  br label %37, !dbg !173

37:                                               ; preds = %36
  %38 = load ptr, ptr %7, align 8, !dbg !174
  %39 = icmp ne ptr %38, null, !dbg !174
  br i1 %39, label %40, label %43, !dbg !174

40:                                               ; preds = %37
  %41 = load ptr, ptr %7, align 8, !dbg !174
  %42 = getelementptr inbounds i8, ptr %41, i64 -8, !dbg !174
  br label %44, !dbg !174

43:                                               ; preds = %37
  br label %44, !dbg !174

44:                                               ; preds = %43, %40
  %45 = phi ptr [ %42, %40 ], [ null, %43 ], !dbg !174
  %46 = getelementptr inbounds %struct.nn_hash_item, ptr %45, i32 0, i32 0, !dbg !174
  %47 = load i32, ptr %46, align 8, !dbg !174
  %48 = load i32, ptr %5, align 4, !dbg !174
  %49 = icmp ne i32 %47, %48, !dbg !174
  %50 = xor i1 %49, true, !dbg !174
  %51 = zext i1 %50 to i32, !dbg !174
  %52 = sext i32 %51 to i64, !dbg !174
  %53 = icmp ne i64 %52, 0, !dbg !174
  br i1 %53, label %54, label %57, !dbg !177

54:                                               ; preds = %44
  %55 = load ptr, ptr @stderr, align 8, !dbg !178
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 70), !dbg !178
  call void @nn_err_abort() #4, !dbg !178
  unreachable, !dbg !178

57:                                               ; preds = %44
  br label %58, !dbg !177

58:                                               ; preds = %57
  br label %59, !dbg !177

59:                                               ; preds = %58
  %60 = load ptr, ptr %4, align 8, !dbg !180
  %61 = getelementptr inbounds %struct.nn_hash, ptr %60, i32 0, i32 2, !dbg !181
  %62 = load ptr, ptr %61, align 8, !dbg !181
  %63 = load i32, ptr %8, align 4, !dbg !182
  %64 = zext i32 %63 to i64, !dbg !180
  %65 = getelementptr inbounds %struct.nn_list, ptr %62, i64 %64, !dbg !180
  %66 = load ptr, ptr %7, align 8, !dbg !183
  %67 = call ptr @nn_list_next(ptr noundef %65, ptr noundef %66), !dbg !184
  store ptr %67, ptr %7, align 8, !dbg !185
  br label %26, !dbg !186, !llvm.loop !187

68:                                               ; preds = %26
  %69 = load i32, ptr %5, align 4, !dbg !189
  %70 = load ptr, ptr %6, align 8, !dbg !190
  %71 = getelementptr inbounds %struct.nn_hash_item, ptr %70, i32 0, i32 0, !dbg !191
  store i32 %69, ptr %71, align 8, !dbg !192
  %72 = load ptr, ptr %4, align 8, !dbg !193
  %73 = getelementptr inbounds %struct.nn_hash, ptr %72, i32 0, i32 2, !dbg !194
  %74 = load ptr, ptr %73, align 8, !dbg !194
  %75 = load i32, ptr %8, align 4, !dbg !195
  %76 = zext i32 %75 to i64, !dbg !193
  %77 = getelementptr inbounds %struct.nn_list, ptr %74, i64 %76, !dbg !193
  %78 = load ptr, ptr %6, align 8, !dbg !196
  %79 = getelementptr inbounds %struct.nn_hash_item, ptr %78, i32 0, i32 1, !dbg !197
  %80 = load ptr, ptr %4, align 8, !dbg !198
  %81 = getelementptr inbounds %struct.nn_hash, ptr %80, i32 0, i32 2, !dbg !199
  %82 = load ptr, ptr %81, align 8, !dbg !199
  %83 = load i32, ptr %8, align 4, !dbg !200
  %84 = zext i32 %83 to i64, !dbg !198
  %85 = getelementptr inbounds %struct.nn_list, ptr %82, i64 %84, !dbg !198
  %86 = call ptr @nn_list_end(ptr noundef %85), !dbg !201
  call void @nn_list_insert(ptr noundef %77, ptr noundef %79, ptr noundef %86), !dbg !202
  %87 = load ptr, ptr %4, align 8, !dbg !203
  %88 = getelementptr inbounds %struct.nn_hash, ptr %87, i32 0, i32 1, !dbg !204
  %89 = load i32, ptr %88, align 4, !dbg !205
  %90 = add i32 %89, 1, !dbg !205
  store i32 %90, ptr %88, align 4, !dbg !205
  %91 = load ptr, ptr %4, align 8, !dbg !206
  %92 = getelementptr inbounds %struct.nn_hash, ptr %91, i32 0, i32 1, !dbg !206
  %93 = load i32, ptr %92, align 4, !dbg !206
  %94 = mul i32 %93, 2, !dbg !206
  %95 = load ptr, ptr %4, align 8, !dbg !206
  %96 = getelementptr inbounds %struct.nn_hash, ptr %95, i32 0, i32 0, !dbg !206
  %97 = load i32, ptr %96, align 8, !dbg !206
  %98 = icmp ugt i32 %94, %97, !dbg !206
  br i1 %98, label %99, label %104, !dbg !206

99:                                               ; preds = %68
  %100 = load ptr, ptr %4, align 8, !dbg !206
  %101 = getelementptr inbounds %struct.nn_hash, ptr %100, i32 0, i32 0, !dbg !206
  %102 = load i32, ptr %101, align 8, !dbg !206
  %103 = icmp ult i32 %102, -2147483648, !dbg !206
  br label %104

104:                                              ; preds = %99, %68
  %105 = phi i1 [ false, %68 ], [ %103, %99 ], !dbg !208
  %106 = zext i1 %105 to i32, !dbg !206
  %107 = sext i32 %106 to i64, !dbg !206
  %108 = icmp ne i64 %107, 0, !dbg !206
  br i1 %108, label %109, label %229, !dbg !209

109:                                              ; preds = %104
  %110 = load ptr, ptr %4, align 8, !dbg !210
  %111 = getelementptr inbounds %struct.nn_hash, ptr %110, i32 0, i32 0, !dbg !212
  %112 = load i32, ptr %111, align 8, !dbg !212
  store i32 %112, ptr %9, align 4, !dbg !213
  %113 = load ptr, ptr %4, align 8, !dbg !214
  %114 = getelementptr inbounds %struct.nn_hash, ptr %113, i32 0, i32 2, !dbg !215
  %115 = load ptr, ptr %114, align 8, !dbg !215
  store ptr %115, ptr %10, align 8, !dbg !216
  %116 = load ptr, ptr %4, align 8, !dbg !217
  %117 = getelementptr inbounds %struct.nn_hash, ptr %116, i32 0, i32 0, !dbg !218
  %118 = load i32, ptr %117, align 8, !dbg !219
  %119 = mul i32 %118, 2, !dbg !219
  store i32 %119, ptr %117, align 8, !dbg !219
  %120 = load ptr, ptr %4, align 8, !dbg !220
  %121 = getelementptr inbounds %struct.nn_hash, ptr %120, i32 0, i32 0, !dbg !220
  %122 = load i32, ptr %121, align 8, !dbg !220
  %123 = zext i32 %122 to i64, !dbg !220
  %124 = mul i64 16, %123, !dbg !220
  %125 = call ptr @nn_alloc_(i64 noundef %124), !dbg !220
  %126 = load ptr, ptr %4, align 8, !dbg !221
  %127 = getelementptr inbounds %struct.nn_hash, ptr %126, i32 0, i32 2, !dbg !222
  store ptr %125, ptr %127, align 8, !dbg !223
  br label %128, !dbg !224

128:                                              ; preds = %109
  %129 = load ptr, ptr %4, align 8, !dbg !225
  %130 = getelementptr inbounds %struct.nn_hash, ptr %129, i32 0, i32 2, !dbg !225
  %131 = load ptr, ptr %130, align 8, !dbg !225
  %132 = icmp ne ptr %131, null, !dbg !225
  %133 = xor i1 %132, true, !dbg !225
  %134 = zext i1 %133 to i32, !dbg !225
  %135 = sext i32 %134 to i64, !dbg !225
  %136 = icmp ne i64 %135, 0, !dbg !225
  br i1 %136, label %137, label %140, !dbg !228

137:                                              ; preds = %128
  %138 = load ptr, ptr @stderr, align 8, !dbg !229
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 87), !dbg !229
  call void @nn_err_abort() #4, !dbg !229
  unreachable, !dbg !229

140:                                              ; preds = %128
  br label %141, !dbg !228

141:                                              ; preds = %140
  store i32 0, ptr %8, align 4, !dbg !231
  br label %142, !dbg !233

142:                                              ; preds = %155, %141
  %143 = load i32, ptr %8, align 4, !dbg !234
  %144 = load ptr, ptr %4, align 8, !dbg !236
  %145 = getelementptr inbounds %struct.nn_hash, ptr %144, i32 0, i32 0, !dbg !237
  %146 = load i32, ptr %145, align 8, !dbg !237
  %147 = icmp ne i32 %143, %146, !dbg !238
  br i1 %147, label %148, label %158, !dbg !239

148:                                              ; preds = %142
  %149 = load ptr, ptr %4, align 8, !dbg !240
  %150 = getelementptr inbounds %struct.nn_hash, ptr %149, i32 0, i32 2, !dbg !241
  %151 = load ptr, ptr %150, align 8, !dbg !241
  %152 = load i32, ptr %8, align 4, !dbg !242
  %153 = zext i32 %152 to i64, !dbg !240
  %154 = getelementptr inbounds %struct.nn_list, ptr %151, i64 %153, !dbg !240
  call void @nn_list_init(ptr noundef %154), !dbg !243
  br label %155, !dbg !243

155:                                              ; preds = %148
  %156 = load i32, ptr %8, align 4, !dbg !244
  %157 = add i32 %156, 1, !dbg !244
  store i32 %157, ptr %8, align 4, !dbg !244
  br label %142, !dbg !245, !llvm.loop !246

158:                                              ; preds = %142
  store i32 0, ptr %8, align 4, !dbg !248
  br label %159, !dbg !250

159:                                              ; preds = %224, %158
  %160 = load i32, ptr %8, align 4, !dbg !251
  %161 = load i32, ptr %9, align 4, !dbg !253
  %162 = icmp ne i32 %160, %161, !dbg !254
  br i1 %162, label %163, label %227, !dbg !255

163:                                              ; preds = %159
  br label %164, !dbg !256

164:                                              ; preds = %187, %163
  %165 = load ptr, ptr %10, align 8, !dbg !258
  %166 = load i32, ptr %8, align 4, !dbg !259
  %167 = zext i32 %166 to i64, !dbg !258
  %168 = getelementptr inbounds %struct.nn_list, ptr %165, i64 %167, !dbg !258
  %169 = call i32 @nn_list_empty(ptr noundef %168), !dbg !260
  %170 = icmp ne i32 %169, 0, !dbg !261
  %171 = xor i1 %170, true, !dbg !261
  br i1 %171, label %172, label %219, !dbg !256

172:                                              ; preds = %164
  %173 = load ptr, ptr %10, align 8, !dbg !262
  %174 = load i32, ptr %8, align 4, !dbg !262
  %175 = zext i32 %174 to i64, !dbg !262
  %176 = getelementptr inbounds %struct.nn_list, ptr %173, i64 %175, !dbg !262
  %177 = call ptr @nn_list_begin(ptr noundef %176), !dbg !262
  %178 = icmp ne ptr %177, null, !dbg !262
  br i1 %178, label %179, label %186, !dbg !262

179:                                              ; preds = %172
  %180 = load ptr, ptr %10, align 8, !dbg !262
  %181 = load i32, ptr %8, align 4, !dbg !262
  %182 = zext i32 %181 to i64, !dbg !262
  %183 = getelementptr inbounds %struct.nn_list, ptr %180, i64 %182, !dbg !262
  %184 = call ptr @nn_list_begin(ptr noundef %183), !dbg !262
  %185 = getelementptr inbounds i8, ptr %184, i64 -8, !dbg !262
  br label %187, !dbg !262

186:                                              ; preds = %172
  br label %187, !dbg !262

187:                                              ; preds = %186, %179
  %188 = phi ptr [ %185, %179 ], [ null, %186 ], !dbg !262
  store ptr %188, ptr %11, align 8, !dbg !264
  %189 = load ptr, ptr %10, align 8, !dbg !265
  %190 = load i32, ptr %8, align 4, !dbg !266
  %191 = zext i32 %190 to i64, !dbg !265
  %192 = getelementptr inbounds %struct.nn_list, ptr %189, i64 %191, !dbg !265
  %193 = load ptr, ptr %11, align 8, !dbg !267
  %194 = getelementptr inbounds %struct.nn_hash_item, ptr %193, i32 0, i32 1, !dbg !268
  %195 = call ptr @nn_list_erase(ptr noundef %192, ptr noundef %194), !dbg !269
  %196 = load ptr, ptr %11, align 8, !dbg !270
  %197 = getelementptr inbounds %struct.nn_hash_item, ptr %196, i32 0, i32 0, !dbg !271
  %198 = load i32, ptr %197, align 8, !dbg !271
  %199 = call i32 @nn_hash_key(i32 noundef %198), !dbg !272
  %200 = load ptr, ptr %4, align 8, !dbg !273
  %201 = getelementptr inbounds %struct.nn_hash, ptr %200, i32 0, i32 0, !dbg !274
  %202 = load i32, ptr %201, align 8, !dbg !274
  %203 = urem i32 %199, %202, !dbg !275
  store i32 %203, ptr %12, align 4, !dbg !276
  %204 = load ptr, ptr %4, align 8, !dbg !277
  %205 = getelementptr inbounds %struct.nn_hash, ptr %204, i32 0, i32 2, !dbg !278
  %206 = load ptr, ptr %205, align 8, !dbg !278
  %207 = load i32, ptr %12, align 4, !dbg !279
  %208 = zext i32 %207 to i64, !dbg !277
  %209 = getelementptr inbounds %struct.nn_list, ptr %206, i64 %208, !dbg !277
  %210 = load ptr, ptr %11, align 8, !dbg !280
  %211 = getelementptr inbounds %struct.nn_hash_item, ptr %210, i32 0, i32 1, !dbg !281
  %212 = load ptr, ptr %4, align 8, !dbg !282
  %213 = getelementptr inbounds %struct.nn_hash, ptr %212, i32 0, i32 2, !dbg !283
  %214 = load ptr, ptr %213, align 8, !dbg !283
  %215 = load i32, ptr %12, align 4, !dbg !284
  %216 = zext i32 %215 to i64, !dbg !282
  %217 = getelementptr inbounds %struct.nn_list, ptr %214, i64 %216, !dbg !282
  %218 = call ptr @nn_list_end(ptr noundef %217), !dbg !285
  call void @nn_list_insert(ptr noundef %209, ptr noundef %211, ptr noundef %218), !dbg !286
  br label %164, !dbg !256, !llvm.loop !287

219:                                              ; preds = %164
  %220 = load ptr, ptr %10, align 8, !dbg !289
  %221 = load i32, ptr %8, align 4, !dbg !290
  %222 = zext i32 %221 to i64, !dbg !289
  %223 = getelementptr inbounds %struct.nn_list, ptr %220, i64 %222, !dbg !289
  call void @nn_list_term(ptr noundef %223), !dbg !291
  br label %224, !dbg !292

224:                                              ; preds = %219
  %225 = load i32, ptr %8, align 4, !dbg !293
  %226 = add i32 %225, 1, !dbg !293
  store i32 %226, ptr %8, align 4, !dbg !293
  br label %159, !dbg !294, !llvm.loop !295

227:                                              ; preds = %159
  %228 = load ptr, ptr %10, align 8, !dbg !297
  call void @nn_free(ptr noundef %228), !dbg !298
  br label %229, !dbg !299

229:                                              ; preds = %227, %104
  ret void, !dbg !300
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_hash_key(i32 noundef %0) #0 !dbg !301 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !304, metadata !DIExpression()), !dbg !305
  %3 = load i32, ptr %2, align 4, !dbg !306
  %4 = xor i32 %3, 61, !dbg !307
  %5 = load i32, ptr %2, align 4, !dbg !308
  %6 = lshr i32 %5, 16, !dbg !309
  %7 = xor i32 %4, %6, !dbg !310
  store i32 %7, ptr %2, align 4, !dbg !311
  %8 = load i32, ptr %2, align 4, !dbg !312
  %9 = shl i32 %8, 3, !dbg !313
  %10 = load i32, ptr %2, align 4, !dbg !314
  %11 = add i32 %10, %9, !dbg !314
  store i32 %11, ptr %2, align 4, !dbg !314
  %12 = load i32, ptr %2, align 4, !dbg !315
  %13 = load i32, ptr %2, align 4, !dbg !316
  %14 = lshr i32 %13, 4, !dbg !317
  %15 = xor i32 %12, %14, !dbg !318
  store i32 %15, ptr %2, align 4, !dbg !319
  %16 = load i32, ptr %2, align 4, !dbg !320
  %17 = mul i32 %16, 668265261, !dbg !321
  store i32 %17, ptr %2, align 4, !dbg !322
  %18 = load i32, ptr %2, align 4, !dbg !323
  %19 = load i32, ptr %2, align 4, !dbg !324
  %20 = lshr i32 %19, 15, !dbg !325
  %21 = xor i32 %18, %20, !dbg !326
  store i32 %21, ptr %2, align 4, !dbg !327
  %22 = load i32, ptr %2, align 4, !dbg !328
  ret i32 %22, !dbg !329
}

declare ptr @nn_list_begin(ptr noundef) #2

declare ptr @nn_list_end(ptr noundef) #2

declare ptr @nn_list_next(ptr noundef, ptr noundef) #2

declare void @nn_list_insert(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @nn_list_empty(ptr noundef) #2

declare ptr @nn_list_erase(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_hash_erase(ptr noundef %0, ptr noundef %1) #0 !dbg !330 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !333, metadata !DIExpression()), !dbg !334
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata ptr %5, metadata !337, metadata !DIExpression()), !dbg !338
  %6 = load ptr, ptr %4, align 8, !dbg !339
  %7 = getelementptr inbounds %struct.nn_hash_item, ptr %6, i32 0, i32 0, !dbg !340
  %8 = load i32, ptr %7, align 8, !dbg !340
  %9 = call i32 @nn_hash_key(i32 noundef %8), !dbg !341
  %10 = load ptr, ptr %3, align 8, !dbg !342
  %11 = getelementptr inbounds %struct.nn_hash, ptr %10, i32 0, i32 0, !dbg !343
  %12 = load i32, ptr %11, align 8, !dbg !343
  %13 = urem i32 %9, %12, !dbg !344
  store i32 %13, ptr %5, align 4, !dbg !345
  %14 = load ptr, ptr %3, align 8, !dbg !346
  %15 = getelementptr inbounds %struct.nn_hash, ptr %14, i32 0, i32 2, !dbg !347
  %16 = load ptr, ptr %15, align 8, !dbg !347
  %17 = load i32, ptr %5, align 4, !dbg !348
  %18 = zext i32 %17 to i64, !dbg !346
  %19 = getelementptr inbounds %struct.nn_list, ptr %16, i64 %18, !dbg !346
  %20 = load ptr, ptr %4, align 8, !dbg !349
  %21 = getelementptr inbounds %struct.nn_hash_item, ptr %20, i32 0, i32 1, !dbg !350
  %22 = call ptr @nn_list_erase(ptr noundef %19, ptr noundef %21), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_hash_get(ptr noundef %0, i32 noundef %1) #0 !dbg !353 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !356, metadata !DIExpression()), !dbg !357
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !358, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.declare(metadata ptr %6, metadata !360, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.declare(metadata ptr %7, metadata !362, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.declare(metadata ptr %8, metadata !364, metadata !DIExpression()), !dbg !365
  %9 = load i32, ptr %5, align 4, !dbg !366
  %10 = call i32 @nn_hash_key(i32 noundef %9), !dbg !367
  %11 = load ptr, ptr %4, align 8, !dbg !368
  %12 = getelementptr inbounds %struct.nn_hash, ptr %11, i32 0, i32 0, !dbg !369
  %13 = load i32, ptr %12, align 8, !dbg !369
  %14 = urem i32 %10, %13, !dbg !370
  store i32 %14, ptr %6, align 4, !dbg !371
  %15 = load ptr, ptr %4, align 8, !dbg !372
  %16 = getelementptr inbounds %struct.nn_hash, ptr %15, i32 0, i32 2, !dbg !374
  %17 = load ptr, ptr %16, align 8, !dbg !374
  %18 = load i32, ptr %6, align 4, !dbg !375
  %19 = zext i32 %18 to i64, !dbg !372
  %20 = getelementptr inbounds %struct.nn_list, ptr %17, i64 %19, !dbg !372
  %21 = call ptr @nn_list_begin(ptr noundef %20), !dbg !376
  store ptr %21, ptr %7, align 8, !dbg !377
  br label %22, !dbg !378

22:                                               ; preds = %49, %2
  %23 = load ptr, ptr %7, align 8, !dbg !379
  %24 = load ptr, ptr %4, align 8, !dbg !381
  %25 = getelementptr inbounds %struct.nn_hash, ptr %24, i32 0, i32 2, !dbg !382
  %26 = load ptr, ptr %25, align 8, !dbg !382
  %27 = load i32, ptr %6, align 4, !dbg !383
  %28 = zext i32 %27 to i64, !dbg !381
  %29 = getelementptr inbounds %struct.nn_list, ptr %26, i64 %28, !dbg !381
  %30 = call ptr @nn_list_end(ptr noundef %29), !dbg !384
  %31 = icmp ne ptr %23, %30, !dbg !385
  br i1 %31, label %32, label %58, !dbg !386

32:                                               ; preds = %22
  %33 = load ptr, ptr %7, align 8, !dbg !387
  %34 = icmp ne ptr %33, null, !dbg !387
  br i1 %34, label %35, label %38, !dbg !387

35:                                               ; preds = %32
  %36 = load ptr, ptr %7, align 8, !dbg !387
  %37 = getelementptr inbounds i8, ptr %36, i64 -8, !dbg !387
  br label %39, !dbg !387

38:                                               ; preds = %32
  br label %39, !dbg !387

39:                                               ; preds = %38, %35
  %40 = phi ptr [ %37, %35 ], [ null, %38 ], !dbg !387
  store ptr %40, ptr %8, align 8, !dbg !389
  %41 = load ptr, ptr %8, align 8, !dbg !390
  %42 = getelementptr inbounds %struct.nn_hash_item, ptr %41, i32 0, i32 0, !dbg !392
  %43 = load i32, ptr %42, align 8, !dbg !392
  %44 = load i32, ptr %5, align 4, !dbg !393
  %45 = icmp eq i32 %43, %44, !dbg !394
  br i1 %45, label %46, label %48, !dbg !395

46:                                               ; preds = %39
  %47 = load ptr, ptr %8, align 8, !dbg !396
  store ptr %47, ptr %3, align 8, !dbg !397
  br label %59, !dbg !397

48:                                               ; preds = %39
  br label %49, !dbg !398

49:                                               ; preds = %48
  %50 = load ptr, ptr %4, align 8, !dbg !399
  %51 = getelementptr inbounds %struct.nn_hash, ptr %50, i32 0, i32 2, !dbg !400
  %52 = load ptr, ptr %51, align 8, !dbg !400
  %53 = load i32, ptr %6, align 4, !dbg !401
  %54 = zext i32 %53 to i64, !dbg !399
  %55 = getelementptr inbounds %struct.nn_list, ptr %52, i64 %54, !dbg !399
  %56 = load ptr, ptr %7, align 8, !dbg !402
  %57 = call ptr @nn_list_next(ptr noundef %55, ptr noundef %56), !dbg !403
  store ptr %57, ptr %7, align 8, !dbg !404
  br label %22, !dbg !405, !llvm.loop !406

58:                                               ; preds = %22
  store ptr null, ptr %3, align 8, !dbg !408
  br label %59, !dbg !408

59:                                               ; preds = %58, %46
  %60 = load ptr, ptr %3, align 8, !dbg !409
  ret ptr %60, !dbg !409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_hash_item_init(ptr noundef %0) #0 !dbg !410 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !413, metadata !DIExpression()), !dbg !414
  %3 = load ptr, ptr %2, align 8, !dbg !415
  %4 = getelementptr inbounds %struct.nn_hash_item, ptr %3, i32 0, i32 1, !dbg !416
  call void @nn_list_item_init(ptr noundef %4), !dbg !417
  ret void, !dbg !418
}

declare void @nn_list_item_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_hash_item_term(ptr noundef %0) #0 !dbg !419 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !420, metadata !DIExpression()), !dbg !421
  %3 = load ptr, ptr %2, align 8, !dbg !422
  %4 = getelementptr inbounds %struct.nn_hash_item, ptr %3, i32 0, i32 1, !dbg !423
  call void @nn_list_item_term(ptr noundef %4), !dbg !424
  ret void, !dbg !425
}

declare void @nn_list_item_term(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!22}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/utils/hash.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "58da4e543f476f0468c9fccad8fba689")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 19)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 30)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 52)
!22 = distinct !DICompileUnit(language: DW_LANG_C11, file: !23, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !24, globals: !43, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "src/utils/hash.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "58da4e543f476f0468c9fccad8fba689")
!24 = !{!25, !42}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hash_item", file: !27, line: 34, size: 192, elements: !28)
!27 = !DIFile(filename: "./src/utils/hash.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "68acf226c9801fc7f4ff61503e6babca")
!28 = !{!29, !35}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !26, file: !27, line: 35, baseType: !30, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !31, line: 26, baseType: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !33, line: 42, baseType: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !26, file: !27, line: 36, baseType: !36, size: 128, offset: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !37, line: 26, size: 128, elements: !38)
!37 = !DIFile(filename: "./src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!38 = !{!39, !41}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !36, file: !37, line: 27, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !36, file: !37, line: 28, baseType: !40, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!43 = !{!0, !7, !12, !17}
!44 = !{i32 7, !"Dwarf Version", i32 5}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 4}
!47 = !{i32 8, !"PIC Level", i32 2}
!48 = !{i32 7, !"PIE Level", i32 2}
!49 = !{i32 7, !"uwtable", i32 2}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 16.0.0"}
!52 = distinct !DISubprogram(name: "nn_hash_init", scope: !2, file: !2, line: 33, type: !53, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !66)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hash", file: !27, line: 39, size: 128, elements: !57)
!57 = !{!58, !59, !60}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !56, file: !27, line: 40, baseType: !30, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !56, file: !27, line: 41, baseType: !30, size: 32, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !56, file: !27, line: 42, baseType: !61, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !37, line: 31, size: 128, elements: !63)
!63 = !{!64, !65}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !62, file: !37, line: 32, baseType: !40, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !62, file: !37, line: 33, baseType: !40, size: 64, offset: 64)
!66 = !{}
!67 = !DILocalVariable(name: "self", arg: 1, scope: !52, file: !2, line: 33, type: !55)
!68 = !DILocation(line: 33, column: 36, scope: !52)
!69 = !DILocalVariable(name: "i", scope: !52, file: !2, line: 35, type: !30)
!70 = !DILocation(line: 35, column: 14, scope: !52)
!71 = !DILocation(line: 37, column: 5, scope: !52)
!72 = !DILocation(line: 37, column: 11, scope: !52)
!73 = !DILocation(line: 37, column: 17, scope: !52)
!74 = !DILocation(line: 38, column: 5, scope: !52)
!75 = !DILocation(line: 38, column: 11, scope: !52)
!76 = !DILocation(line: 38, column: 17, scope: !52)
!77 = !DILocation(line: 39, column: 19, scope: !52)
!78 = !DILocation(line: 39, column: 5, scope: !52)
!79 = !DILocation(line: 39, column: 11, scope: !52)
!80 = !DILocation(line: 39, column: 17, scope: !52)
!81 = !DILocation(line: 41, column: 5, scope: !52)
!82 = !DILocation(line: 41, column: 5, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !2, line: 41, column: 5)
!84 = distinct !DILexicalBlock(scope: !52, file: !2, line: 41, column: 5)
!85 = !DILocation(line: 41, column: 5, scope: !84)
!86 = !DILocation(line: 41, column: 5, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !2, line: 41, column: 5)
!88 = !DILocation(line: 42, column: 12, scope: !89)
!89 = distinct !DILexicalBlock(scope: !52, file: !2, line: 42, column: 5)
!90 = !DILocation(line: 42, column: 10, scope: !89)
!91 = !DILocation(line: 42, column: 17, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !2, line: 42, column: 5)
!93 = !DILocation(line: 42, column: 19, scope: !92)
!94 = !DILocation(line: 42, column: 5, scope: !89)
!95 = !DILocation(line: 43, column: 24, scope: !92)
!96 = !DILocation(line: 43, column: 30, scope: !92)
!97 = !DILocation(line: 43, column: 37, scope: !92)
!98 = !DILocation(line: 43, column: 9, scope: !92)
!99 = !DILocation(line: 42, column: 45, scope: !92)
!100 = !DILocation(line: 42, column: 5, scope: !92)
!101 = distinct !{!101, !94, !102, !103}
!102 = !DILocation(line: 43, column: 39, scope: !89)
!103 = !{!"llvm.loop.mustprogress"}
!104 = !DILocation(line: 44, column: 1, scope: !52)
!105 = distinct !DISubprogram(name: "nn_hash_term", scope: !2, file: !2, line: 46, type: !53, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !66)
!106 = !DILocalVariable(name: "self", arg: 1, scope: !105, file: !2, line: 46, type: !55)
!107 = !DILocation(line: 46, column: 36, scope: !105)
!108 = !DILocalVariable(name: "i", scope: !105, file: !2, line: 48, type: !30)
!109 = !DILocation(line: 48, column: 14, scope: !105)
!110 = !DILocation(line: 50, column: 12, scope: !111)
!111 = distinct !DILexicalBlock(scope: !105, file: !2, line: 50, column: 5)
!112 = !DILocation(line: 50, column: 10, scope: !111)
!113 = !DILocation(line: 50, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !2, line: 50, column: 5)
!115 = !DILocation(line: 50, column: 22, scope: !114)
!116 = !DILocation(line: 50, column: 28, scope: !114)
!117 = !DILocation(line: 50, column: 19, scope: !114)
!118 = !DILocation(line: 50, column: 5, scope: !111)
!119 = !DILocation(line: 51, column: 24, scope: !114)
!120 = !DILocation(line: 51, column: 30, scope: !114)
!121 = !DILocation(line: 51, column: 37, scope: !114)
!122 = !DILocation(line: 51, column: 9, scope: !114)
!123 = !DILocation(line: 50, column: 35, scope: !114)
!124 = !DILocation(line: 50, column: 5, scope: !114)
!125 = distinct !{!125, !118, !126, !103}
!126 = !DILocation(line: 51, column: 39, scope: !111)
!127 = !DILocation(line: 52, column: 14, scope: !105)
!128 = !DILocation(line: 52, column: 20, scope: !105)
!129 = !DILocation(line: 52, column: 5, scope: !105)
!130 = !DILocation(line: 53, column: 1, scope: !105)
!131 = distinct !DISubprogram(name: "nn_hash_insert", scope: !2, file: !2, line: 55, type: !132, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !66)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !55, !30, !25}
!134 = !DILocalVariable(name: "self", arg: 1, scope: !131, file: !2, line: 55, type: !55)
!135 = !DILocation(line: 55, column: 38, scope: !131)
!136 = !DILocalVariable(name: "key", arg: 2, scope: !131, file: !2, line: 55, type: !30)
!137 = !DILocation(line: 55, column: 53, scope: !131)
!138 = !DILocalVariable(name: "item", arg: 3, scope: !131, file: !2, line: 56, type: !25)
!139 = !DILocation(line: 56, column: 26, scope: !131)
!140 = !DILocalVariable(name: "it", scope: !131, file: !2, line: 58, type: !40)
!141 = !DILocation(line: 58, column: 26, scope: !131)
!142 = !DILocalVariable(name: "i", scope: !131, file: !2, line: 59, type: !30)
!143 = !DILocation(line: 59, column: 14, scope: !131)
!144 = !DILocalVariable(name: "oldslots", scope: !131, file: !2, line: 60, type: !30)
!145 = !DILocation(line: 60, column: 14, scope: !131)
!146 = !DILocalVariable(name: "oldarray", scope: !131, file: !2, line: 61, type: !61)
!147 = !DILocation(line: 61, column: 21, scope: !131)
!148 = !DILocalVariable(name: "hitm", scope: !131, file: !2, line: 62, type: !25)
!149 = !DILocation(line: 62, column: 26, scope: !131)
!150 = !DILocalVariable(name: "newslot", scope: !131, file: !2, line: 63, type: !30)
!151 = !DILocation(line: 63, column: 14, scope: !131)
!152 = !DILocation(line: 65, column: 22, scope: !131)
!153 = !DILocation(line: 65, column: 9, scope: !131)
!154 = !DILocation(line: 65, column: 29, scope: !131)
!155 = !DILocation(line: 65, column: 35, scope: !131)
!156 = !DILocation(line: 65, column: 27, scope: !131)
!157 = !DILocation(line: 65, column: 7, scope: !131)
!158 = !DILocation(line: 67, column: 31, scope: !159)
!159 = distinct !DILexicalBlock(scope: !131, file: !2, line: 67, column: 5)
!160 = !DILocation(line: 67, column: 37, scope: !159)
!161 = !DILocation(line: 67, column: 44, scope: !159)
!162 = !DILocation(line: 67, column: 15, scope: !159)
!163 = !DILocation(line: 67, column: 13, scope: !159)
!164 = !DILocation(line: 67, column: 10, scope: !159)
!165 = !DILocation(line: 68, column: 11, scope: !166)
!166 = distinct !DILexicalBlock(scope: !159, file: !2, line: 67, column: 5)
!167 = !DILocation(line: 68, column: 31, scope: !166)
!168 = !DILocation(line: 68, column: 37, scope: !166)
!169 = !DILocation(line: 68, column: 44, scope: !166)
!170 = !DILocation(line: 68, column: 17, scope: !166)
!171 = !DILocation(line: 68, column: 14, scope: !166)
!172 = !DILocation(line: 67, column: 5, scope: !159)
!173 = !DILocation(line: 70, column: 9, scope: !166)
!174 = !DILocation(line: 70, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !2, line: 70, column: 9)
!176 = distinct !DILexicalBlock(scope: !166, file: !2, line: 70, column: 9)
!177 = !DILocation(line: 70, column: 9, scope: !176)
!178 = !DILocation(line: 70, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !2, line: 70, column: 9)
!180 = !DILocation(line: 69, column: 31, scope: !166)
!181 = !DILocation(line: 69, column: 37, scope: !166)
!182 = !DILocation(line: 69, column: 44, scope: !166)
!183 = !DILocation(line: 69, column: 48, scope: !166)
!184 = !DILocation(line: 69, column: 16, scope: !166)
!185 = !DILocation(line: 69, column: 14, scope: !166)
!186 = !DILocation(line: 67, column: 5, scope: !166)
!187 = distinct !{!187, !172, !188, !103}
!188 = !DILocation(line: 70, column: 9, scope: !159)
!189 = !DILocation(line: 72, column: 17, scope: !131)
!190 = !DILocation(line: 72, column: 5, scope: !131)
!191 = !DILocation(line: 72, column: 11, scope: !131)
!192 = !DILocation(line: 72, column: 15, scope: !131)
!193 = !DILocation(line: 73, column: 22, scope: !131)
!194 = !DILocation(line: 73, column: 28, scope: !131)
!195 = !DILocation(line: 73, column: 35, scope: !131)
!196 = !DILocation(line: 73, column: 40, scope: !131)
!197 = !DILocation(line: 73, column: 46, scope: !131)
!198 = !DILocation(line: 74, column: 23, scope: !131)
!199 = !DILocation(line: 74, column: 29, scope: !131)
!200 = !DILocation(line: 74, column: 36, scope: !131)
!201 = !DILocation(line: 74, column: 9, scope: !131)
!202 = !DILocation(line: 73, column: 5, scope: !131)
!203 = !DILocation(line: 75, column: 7, scope: !131)
!204 = !DILocation(line: 75, column: 13, scope: !131)
!205 = !DILocation(line: 75, column: 5, scope: !131)
!206 = !DILocation(line: 79, column: 9, scope: !207)
!207 = distinct !DILexicalBlock(scope: !131, file: !2, line: 79, column: 9)
!208 = !DILocation(line: 0, scope: !207)
!209 = !DILocation(line: 79, column: 9, scope: !131)
!210 = !DILocation(line: 82, column: 20, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !2, line: 79, column: 78)
!212 = !DILocation(line: 82, column: 26, scope: !211)
!213 = !DILocation(line: 82, column: 18, scope: !211)
!214 = !DILocation(line: 83, column: 20, scope: !211)
!215 = !DILocation(line: 83, column: 26, scope: !211)
!216 = !DILocation(line: 83, column: 18, scope: !211)
!217 = !DILocation(line: 84, column: 9, scope: !211)
!218 = !DILocation(line: 84, column: 15, scope: !211)
!219 = !DILocation(line: 84, column: 21, scope: !211)
!220 = !DILocation(line: 85, column: 23, scope: !211)
!221 = !DILocation(line: 85, column: 9, scope: !211)
!222 = !DILocation(line: 85, column: 15, scope: !211)
!223 = !DILocation(line: 85, column: 21, scope: !211)
!224 = !DILocation(line: 87, column: 9, scope: !211)
!225 = !DILocation(line: 87, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !2, line: 87, column: 9)
!227 = distinct !DILexicalBlock(scope: !211, file: !2, line: 87, column: 9)
!228 = !DILocation(line: 87, column: 9, scope: !227)
!229 = !DILocation(line: 87, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !2, line: 87, column: 9)
!231 = !DILocation(line: 88, column: 16, scope: !232)
!232 = distinct !DILexicalBlock(scope: !211, file: !2, line: 88, column: 9)
!233 = !DILocation(line: 88, column: 14, scope: !232)
!234 = !DILocation(line: 88, column: 21, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !2, line: 88, column: 9)
!236 = !DILocation(line: 88, column: 26, scope: !235)
!237 = !DILocation(line: 88, column: 32, scope: !235)
!238 = !DILocation(line: 88, column: 23, scope: !235)
!239 = !DILocation(line: 88, column: 9, scope: !232)
!240 = !DILocation(line: 89, column: 28, scope: !235)
!241 = !DILocation(line: 89, column: 34, scope: !235)
!242 = !DILocation(line: 89, column: 41, scope: !235)
!243 = !DILocation(line: 89, column: 13, scope: !235)
!244 = !DILocation(line: 88, column: 39, scope: !235)
!245 = !DILocation(line: 88, column: 9, scope: !235)
!246 = distinct !{!246, !239, !247, !103}
!247 = !DILocation(line: 89, column: 43, scope: !232)
!248 = !DILocation(line: 92, column: 16, scope: !249)
!249 = distinct !DILexicalBlock(scope: !211, file: !2, line: 92, column: 9)
!250 = !DILocation(line: 92, column: 14, scope: !249)
!251 = !DILocation(line: 92, column: 21, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !2, line: 92, column: 9)
!253 = !DILocation(line: 92, column: 26, scope: !252)
!254 = !DILocation(line: 92, column: 23, scope: !252)
!255 = !DILocation(line: 92, column: 9, scope: !249)
!256 = !DILocation(line: 93, column: 13, scope: !257)
!257 = distinct !DILexicalBlock(scope: !252, file: !2, line: 92, column: 41)
!258 = !DILocation(line: 93, column: 37, scope: !257)
!259 = !DILocation(line: 93, column: 47, scope: !257)
!260 = !DILocation(line: 93, column: 21, scope: !257)
!261 = !DILocation(line: 93, column: 20, scope: !257)
!262 = !DILocation(line: 94, column: 24, scope: !263)
!263 = distinct !DILexicalBlock(scope: !257, file: !2, line: 93, column: 52)
!264 = !DILocation(line: 94, column: 22, scope: !263)
!265 = !DILocation(line: 96, column: 33, scope: !263)
!266 = !DILocation(line: 96, column: 43, scope: !263)
!267 = !DILocation(line: 96, column: 48, scope: !263)
!268 = !DILocation(line: 96, column: 54, scope: !263)
!269 = !DILocation(line: 96, column: 17, scope: !263)
!270 = !DILocation(line: 97, column: 40, scope: !263)
!271 = !DILocation(line: 97, column: 46, scope: !263)
!272 = !DILocation(line: 97, column: 27, scope: !263)
!273 = !DILocation(line: 97, column: 53, scope: !263)
!274 = !DILocation(line: 97, column: 59, scope: !263)
!275 = !DILocation(line: 97, column: 51, scope: !263)
!276 = !DILocation(line: 97, column: 25, scope: !263)
!277 = !DILocation(line: 98, column: 34, scope: !263)
!278 = !DILocation(line: 98, column: 40, scope: !263)
!279 = !DILocation(line: 98, column: 47, scope: !263)
!280 = !DILocation(line: 98, column: 58, scope: !263)
!281 = !DILocation(line: 98, column: 64, scope: !263)
!282 = !DILocation(line: 99, column: 35, scope: !263)
!283 = !DILocation(line: 99, column: 41, scope: !263)
!284 = !DILocation(line: 99, column: 48, scope: !263)
!285 = !DILocation(line: 99, column: 21, scope: !263)
!286 = !DILocation(line: 98, column: 17, scope: !263)
!287 = distinct !{!287, !256, !288, !103}
!288 = !DILocation(line: 100, column: 13, scope: !257)
!289 = !DILocation(line: 102, column: 28, scope: !257)
!290 = !DILocation(line: 102, column: 38, scope: !257)
!291 = !DILocation(line: 102, column: 13, scope: !257)
!292 = !DILocation(line: 103, column: 9, scope: !257)
!293 = !DILocation(line: 92, column: 36, scope: !252)
!294 = !DILocation(line: 92, column: 9, scope: !252)
!295 = distinct !{!295, !255, !296, !103}
!296 = !DILocation(line: 103, column: 9, scope: !249)
!297 = !DILocation(line: 106, column: 18, scope: !211)
!298 = !DILocation(line: 106, column: 9, scope: !211)
!299 = !DILocation(line: 107, column: 5, scope: !211)
!300 = !DILocation(line: 108, column: 1, scope: !131)
!301 = distinct !DISubprogram(name: "nn_hash_key", scope: !2, file: !2, line: 137, type: !302, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !66)
!302 = !DISubroutineType(types: !303)
!303 = !{!30, !30}
!304 = !DILocalVariable(name: "key", arg: 1, scope: !301, file: !2, line: 137, type: !30)
!305 = !DILocation(line: 137, column: 32, scope: !301)
!306 = !DILocation(line: 141, column: 12, scope: !301)
!307 = !DILocation(line: 141, column: 16, scope: !301)
!308 = !DILocation(line: 141, column: 25, scope: !301)
!309 = !DILocation(line: 141, column: 29, scope: !301)
!310 = !DILocation(line: 141, column: 22, scope: !301)
!311 = !DILocation(line: 141, column: 9, scope: !301)
!312 = !DILocation(line: 142, column: 12, scope: !301)
!313 = !DILocation(line: 142, column: 16, scope: !301)
!314 = !DILocation(line: 142, column: 9, scope: !301)
!315 = !DILocation(line: 143, column: 11, scope: !301)
!316 = !DILocation(line: 143, column: 18, scope: !301)
!317 = !DILocation(line: 143, column: 22, scope: !301)
!318 = !DILocation(line: 143, column: 15, scope: !301)
!319 = !DILocation(line: 143, column: 9, scope: !301)
!320 = !DILocation(line: 144, column: 11, scope: !301)
!321 = !DILocation(line: 144, column: 15, scope: !301)
!322 = !DILocation(line: 144, column: 9, scope: !301)
!323 = !DILocation(line: 145, column: 11, scope: !301)
!324 = !DILocation(line: 145, column: 18, scope: !301)
!325 = !DILocation(line: 145, column: 22, scope: !301)
!326 = !DILocation(line: 145, column: 15, scope: !301)
!327 = !DILocation(line: 145, column: 9, scope: !301)
!328 = !DILocation(line: 147, column: 12, scope: !301)
!329 = !DILocation(line: 147, column: 5, scope: !301)
!330 = distinct !DISubprogram(name: "nn_hash_erase", scope: !2, file: !2, line: 110, type: !331, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !66)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !55, !25}
!333 = !DILocalVariable(name: "self", arg: 1, scope: !330, file: !2, line: 110, type: !55)
!334 = !DILocation(line: 110, column: 37, scope: !330)
!335 = !DILocalVariable(name: "item", arg: 2, scope: !330, file: !2, line: 110, type: !25)
!336 = !DILocation(line: 110, column: 64, scope: !330)
!337 = !DILocalVariable(name: "slot", scope: !330, file: !2, line: 112, type: !30)
!338 = !DILocation(line: 112, column: 14, scope: !330)
!339 = !DILocation(line: 114, column: 25, scope: !330)
!340 = !DILocation(line: 114, column: 31, scope: !330)
!341 = !DILocation(line: 114, column: 12, scope: !330)
!342 = !DILocation(line: 114, column: 38, scope: !330)
!343 = !DILocation(line: 114, column: 44, scope: !330)
!344 = !DILocation(line: 114, column: 36, scope: !330)
!345 = !DILocation(line: 114, column: 10, scope: !330)
!346 = !DILocation(line: 115, column: 21, scope: !330)
!347 = !DILocation(line: 115, column: 27, scope: !330)
!348 = !DILocation(line: 115, column: 34, scope: !330)
!349 = !DILocation(line: 115, column: 42, scope: !330)
!350 = !DILocation(line: 115, column: 48, scope: !330)
!351 = !DILocation(line: 115, column: 5, scope: !330)
!352 = !DILocation(line: 116, column: 1, scope: !330)
!353 = distinct !DISubprogram(name: "nn_hash_get", scope: !2, file: !2, line: 118, type: !354, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !66)
!354 = !DISubroutineType(types: !355)
!355 = !{!25, !55, !30}
!356 = !DILocalVariable(name: "self", arg: 1, scope: !353, file: !2, line: 118, type: !55)
!357 = !DILocation(line: 118, column: 51, scope: !353)
!358 = !DILocalVariable(name: "key", arg: 2, scope: !353, file: !2, line: 118, type: !30)
!359 = !DILocation(line: 118, column: 66, scope: !353)
!360 = !DILocalVariable(name: "slot", scope: !353, file: !2, line: 120, type: !30)
!361 = !DILocation(line: 120, column: 14, scope: !353)
!362 = !DILocalVariable(name: "it", scope: !353, file: !2, line: 121, type: !40)
!363 = !DILocation(line: 121, column: 26, scope: !353)
!364 = !DILocalVariable(name: "item", scope: !353, file: !2, line: 122, type: !25)
!365 = !DILocation(line: 122, column: 26, scope: !353)
!366 = !DILocation(line: 124, column: 25, scope: !353)
!367 = !DILocation(line: 124, column: 12, scope: !353)
!368 = !DILocation(line: 124, column: 32, scope: !353)
!369 = !DILocation(line: 124, column: 38, scope: !353)
!370 = !DILocation(line: 124, column: 30, scope: !353)
!371 = !DILocation(line: 124, column: 10, scope: !353)
!372 = !DILocation(line: 126, column: 31, scope: !373)
!373 = distinct !DILexicalBlock(scope: !353, file: !2, line: 126, column: 5)
!374 = !DILocation(line: 126, column: 37, scope: !373)
!375 = !DILocation(line: 126, column: 44, scope: !373)
!376 = !DILocation(line: 126, column: 15, scope: !373)
!377 = !DILocation(line: 126, column: 13, scope: !373)
!378 = !DILocation(line: 126, column: 10, scope: !373)
!379 = !DILocation(line: 127, column: 11, scope: !380)
!380 = distinct !DILexicalBlock(scope: !373, file: !2, line: 126, column: 5)
!381 = !DILocation(line: 127, column: 31, scope: !380)
!382 = !DILocation(line: 127, column: 37, scope: !380)
!383 = !DILocation(line: 127, column: 44, scope: !380)
!384 = !DILocation(line: 127, column: 17, scope: !380)
!385 = !DILocation(line: 127, column: 14, scope: !380)
!386 = !DILocation(line: 126, column: 5, scope: !373)
!387 = !DILocation(line: 129, column: 16, scope: !388)
!388 = distinct !DILexicalBlock(scope: !380, file: !2, line: 128, column: 56)
!389 = !DILocation(line: 129, column: 14, scope: !388)
!390 = !DILocation(line: 130, column: 13, scope: !391)
!391 = distinct !DILexicalBlock(scope: !388, file: !2, line: 130, column: 13)
!392 = !DILocation(line: 130, column: 19, scope: !391)
!393 = !DILocation(line: 130, column: 26, scope: !391)
!394 = !DILocation(line: 130, column: 23, scope: !391)
!395 = !DILocation(line: 130, column: 13, scope: !388)
!396 = !DILocation(line: 131, column: 20, scope: !391)
!397 = !DILocation(line: 131, column: 13, scope: !391)
!398 = !DILocation(line: 132, column: 5, scope: !388)
!399 = !DILocation(line: 128, column: 31, scope: !380)
!400 = !DILocation(line: 128, column: 37, scope: !380)
!401 = !DILocation(line: 128, column: 44, scope: !380)
!402 = !DILocation(line: 128, column: 51, scope: !380)
!403 = !DILocation(line: 128, column: 16, scope: !380)
!404 = !DILocation(line: 128, column: 14, scope: !380)
!405 = !DILocation(line: 126, column: 5, scope: !380)
!406 = distinct !{!406, !386, !407, !103}
!407 = !DILocation(line: 132, column: 5, scope: !373)
!408 = !DILocation(line: 134, column: 5, scope: !353)
!409 = !DILocation(line: 135, column: 1, scope: !353)
!410 = distinct !DISubprogram(name: "nn_hash_item_init", scope: !2, file: !2, line: 150, type: !411, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !66)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !25}
!413 = !DILocalVariable(name: "self", arg: 1, scope: !410, file: !2, line: 150, type: !25)
!414 = !DILocation(line: 150, column: 46, scope: !410)
!415 = !DILocation(line: 152, column: 25, scope: !410)
!416 = !DILocation(line: 152, column: 31, scope: !410)
!417 = !DILocation(line: 152, column: 5, scope: !410)
!418 = !DILocation(line: 153, column: 1, scope: !410)
!419 = distinct !DISubprogram(name: "nn_hash_item_term", scope: !2, file: !2, line: 155, type: !411, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !66)
!420 = !DILocalVariable(name: "self", arg: 1, scope: !419, file: !2, line: 155, type: !25)
!421 = !DILocation(line: 155, column: 46, scope: !419)
!422 = !DILocation(line: 157, column: 25, scope: !419)
!423 = !DILocation(line: 157, column: 31, scope: !419)
!424 = !DILocation(line: 157, column: 5, scope: !419)
!425 = !DILocation(line: 158, column: 1, scope: !419)
