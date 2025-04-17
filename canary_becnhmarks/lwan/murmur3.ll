; ModuleID = '/home/raj/lwan/common/murmur3.c'
source_filename = "/home/raj/lwan/common/murmur3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@seed_value = internal global i32 -559038737, align 4, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @murmur3_simple(ptr noundef %0) #0 !dbg !33 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca ptr, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca ptr, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca ptr, align 8
  %34 = alloca i64, align 8
  %35 = alloca [2 x i64], align 16
  store ptr %0, ptr %33, align 8
  call void @llvm.dbg.declare(metadata ptr %33, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata ptr %34, metadata !41, metadata !DIExpression()), !dbg !44
  %36 = load ptr, ptr %33, align 8, !dbg !45
  %37 = call i64 @strlen(ptr noundef %36) #4, !dbg !46
  store i64 %37, ptr %34, align 8, !dbg !44
  call void @llvm.dbg.declare(metadata ptr %35, metadata !47, metadata !DIExpression()), !dbg !51
  %38 = load ptr, ptr %33, align 8, !dbg !52
  %39 = load i64, ptr %34, align 8, !dbg !53
  %40 = load i32, ptr @seed_value, align 4, !dbg !54
  %41 = getelementptr inbounds [2 x i64], ptr %35, i64 0, i64 0, !dbg !55
  store ptr %38, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !56, metadata !DIExpression()), !dbg !63
  store i64 %39, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !65, metadata !DIExpression()), !dbg !66
  store i32 %40, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !67, metadata !DIExpression()), !dbg !68
  store ptr %41, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata ptr %20, metadata !71, metadata !DIExpression()), !dbg !72
  %42 = load ptr, ptr %16, align 8, !dbg !73
  store ptr %42, ptr %20, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata ptr %21, metadata !74, metadata !DIExpression()), !dbg !75
  %43 = load i64, ptr %17, align 8, !dbg !76
  %44 = udiv i64 %43, 16, !dbg !77
  store i64 %44, ptr %21, align 8, !dbg !75
  call void @llvm.dbg.declare(metadata ptr %22, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata ptr %23, metadata !80, metadata !DIExpression()), !dbg !81
  %45 = load i32, ptr %18, align 4, !dbg !82
  %46 = zext i32 %45 to i64, !dbg !82
  store i64 %46, ptr %23, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata ptr %24, metadata !83, metadata !DIExpression()), !dbg !84
  %47 = load i32, ptr %18, align 4, !dbg !85
  %48 = zext i32 %47 to i64, !dbg !85
  store i64 %48, ptr %24, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata ptr %25, metadata !86, metadata !DIExpression()), !dbg !87
  store i64 -8663945395140668459, ptr %25, align 8, !dbg !87
  call void @llvm.dbg.declare(metadata ptr %26, metadata !88, metadata !DIExpression()), !dbg !89
  store i64 5545529020109919103, ptr %26, align 8, !dbg !89
  call void @llvm.dbg.declare(metadata ptr %27, metadata !90, metadata !DIExpression()), !dbg !91
  %49 = load ptr, ptr %20, align 8, !dbg !92
  store ptr %49, ptr %27, align 8, !dbg !91
  store i64 0, ptr %22, align 8, !dbg !93
  br label %50, !dbg !95

50:                                               ; preds = %54, %1
  %51 = load i64, ptr %22, align 8, !dbg !96
  %52 = load i64, ptr %21, align 8, !dbg !98
  %53 = icmp ult i64 %51, %52, !dbg !99
  br i1 %53, label %54, label %148, !dbg !100

54:                                               ; preds = %50
  call void @llvm.dbg.declare(metadata ptr %28, metadata !101, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata ptr %29, metadata !104, metadata !DIExpression()), !dbg !105
  %55 = load ptr, ptr %27, align 8, !dbg !106
  %56 = load i64, ptr %22, align 8, !dbg !107
  %57 = mul i64 %56, 2, !dbg !108
  %58 = getelementptr inbounds i64, ptr %55, i64 %57, !dbg !109
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %28, ptr align 8 %58, i64 8, i1 false), !dbg !110
  %59 = load ptr, ptr %27, align 8, !dbg !111
  %60 = load i64, ptr %22, align 8, !dbg !112
  %61 = mul i64 %60, 2, !dbg !113
  %62 = getelementptr inbounds i64, ptr %59, i64 %61, !dbg !114
  %63 = getelementptr inbounds i64, ptr %62, i64 1, !dbg !115
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %63, i64 8, i1 false), !dbg !116
  %64 = load i64, ptr %25, align 8, !dbg !117
  %65 = load i64, ptr %28, align 8, !dbg !118
  %66 = mul i64 %65, %64, !dbg !118
  store i64 %66, ptr %28, align 8, !dbg !118
  %67 = load i64, ptr %28, align 8, !dbg !119
  store i64 %67, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !120, metadata !DIExpression()), !dbg !128
  store i8 31, ptr %9, align 1
  call void @llvm.dbg.declare(metadata ptr %9, metadata !130, metadata !DIExpression()), !dbg !131
  %68 = load i64, ptr %8, align 8, !dbg !132
  %69 = load i8, ptr %9, align 1, !dbg !133
  %70 = sext i8 %69 to i32, !dbg !133
  %71 = zext i32 %70 to i64, !dbg !134
  %72 = shl i64 %68, %71, !dbg !134
  %73 = load i64, ptr %8, align 8, !dbg !135
  %74 = load i8, ptr %9, align 1, !dbg !136
  %75 = sext i8 %74 to i32, !dbg !136
  %76 = sub nsw i32 64, %75, !dbg !137
  %77 = zext i32 %76 to i64, !dbg !138
  %78 = lshr i64 %73, %77, !dbg !138
  %79 = or i64 %72, %78, !dbg !139
  store i64 %79, ptr %28, align 8, !dbg !140
  %80 = load i64, ptr %26, align 8, !dbg !141
  %81 = load i64, ptr %28, align 8, !dbg !142
  %82 = mul i64 %81, %80, !dbg !142
  store i64 %82, ptr %28, align 8, !dbg !142
  %83 = load i64, ptr %28, align 8, !dbg !143
  %84 = load i64, ptr %23, align 8, !dbg !144
  %85 = xor i64 %84, %83, !dbg !144
  store i64 %85, ptr %23, align 8, !dbg !144
  %86 = load i64, ptr %23, align 8, !dbg !145
  store i64 %86, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !120, metadata !DIExpression()), !dbg !146
  store i8 27, ptr %11, align 1
  call void @llvm.dbg.declare(metadata ptr %11, metadata !130, metadata !DIExpression()), !dbg !148
  %87 = load i64, ptr %10, align 8, !dbg !149
  %88 = load i8, ptr %11, align 1, !dbg !150
  %89 = sext i8 %88 to i32, !dbg !150
  %90 = zext i32 %89 to i64, !dbg !151
  %91 = shl i64 %87, %90, !dbg !151
  %92 = load i64, ptr %10, align 8, !dbg !152
  %93 = load i8, ptr %11, align 1, !dbg !153
  %94 = sext i8 %93 to i32, !dbg !153
  %95 = sub nsw i32 64, %94, !dbg !154
  %96 = zext i32 %95 to i64, !dbg !155
  %97 = lshr i64 %92, %96, !dbg !155
  %98 = or i64 %91, %97, !dbg !156
  store i64 %98, ptr %23, align 8, !dbg !157
  %99 = load i64, ptr %24, align 8, !dbg !158
  %100 = load i64, ptr %23, align 8, !dbg !159
  %101 = add i64 %100, %99, !dbg !159
  store i64 %101, ptr %23, align 8, !dbg !159
  %102 = load i64, ptr %23, align 8, !dbg !160
  %103 = mul i64 %102, 5, !dbg !161
  %104 = add i64 %103, 1390208809, !dbg !162
  store i64 %104, ptr %23, align 8, !dbg !163
  %105 = load i64, ptr %26, align 8, !dbg !164
  %106 = load i64, ptr %29, align 8, !dbg !165
  %107 = mul i64 %106, %105, !dbg !165
  store i64 %107, ptr %29, align 8, !dbg !165
  %108 = load i64, ptr %29, align 8, !dbg !166
  store i64 %108, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !120, metadata !DIExpression()), !dbg !167
  store i8 33, ptr %13, align 1
  call void @llvm.dbg.declare(metadata ptr %13, metadata !130, metadata !DIExpression()), !dbg !169
  %109 = load i64, ptr %12, align 8, !dbg !170
  %110 = load i8, ptr %13, align 1, !dbg !171
  %111 = sext i8 %110 to i32, !dbg !171
  %112 = zext i32 %111 to i64, !dbg !172
  %113 = shl i64 %109, %112, !dbg !172
  %114 = load i64, ptr %12, align 8, !dbg !173
  %115 = load i8, ptr %13, align 1, !dbg !174
  %116 = sext i8 %115 to i32, !dbg !174
  %117 = sub nsw i32 64, %116, !dbg !175
  %118 = zext i32 %117 to i64, !dbg !176
  %119 = lshr i64 %114, %118, !dbg !176
  %120 = or i64 %113, %119, !dbg !177
  store i64 %120, ptr %29, align 8, !dbg !178
  %121 = load i64, ptr %25, align 8, !dbg !179
  %122 = load i64, ptr %29, align 8, !dbg !180
  %123 = mul i64 %122, %121, !dbg !180
  store i64 %123, ptr %29, align 8, !dbg !180
  %124 = load i64, ptr %29, align 8, !dbg !181
  %125 = load i64, ptr %24, align 8, !dbg !182
  %126 = xor i64 %125, %124, !dbg !182
  store i64 %126, ptr %24, align 8, !dbg !182
  %127 = load i64, ptr %24, align 8, !dbg !183
  store i64 %127, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !120, metadata !DIExpression()), !dbg !184
  store i8 31, ptr %15, align 1
  call void @llvm.dbg.declare(metadata ptr %15, metadata !130, metadata !DIExpression()), !dbg !186
  %128 = load i64, ptr %14, align 8, !dbg !187
  %129 = load i8, ptr %15, align 1, !dbg !188
  %130 = sext i8 %129 to i32, !dbg !188
  %131 = zext i32 %130 to i64, !dbg !189
  %132 = shl i64 %128, %131, !dbg !189
  %133 = load i64, ptr %14, align 8, !dbg !190
  %134 = load i8, ptr %15, align 1, !dbg !191
  %135 = sext i8 %134 to i32, !dbg !191
  %136 = sub nsw i32 64, %135, !dbg !192
  %137 = zext i32 %136 to i64, !dbg !193
  %138 = lshr i64 %133, %137, !dbg !193
  %139 = or i64 %132, %138, !dbg !194
  store i64 %139, ptr %24, align 8, !dbg !195
  %140 = load i64, ptr %23, align 8, !dbg !196
  %141 = load i64, ptr %24, align 8, !dbg !197
  %142 = add i64 %141, %140, !dbg !197
  store i64 %142, ptr %24, align 8, !dbg !197
  %143 = load i64, ptr %24, align 8, !dbg !198
  %144 = mul i64 %143, 5, !dbg !199
  %145 = add i64 %144, 944331445, !dbg !200
  store i64 %145, ptr %24, align 8, !dbg !201
  %146 = load i64, ptr %22, align 8, !dbg !202
  %147 = add i64 %146, 1, !dbg !202
  store i64 %147, ptr %22, align 8, !dbg !202
  br label %50, !dbg !203, !llvm.loop !204

148:                                              ; preds = %50
  call void @llvm.dbg.declare(metadata ptr %30, metadata !207, metadata !DIExpression()), !dbg !208
  %149 = load ptr, ptr %20, align 8, !dbg !209
  %150 = load i64, ptr %21, align 8, !dbg !210
  %151 = mul i64 %150, 16, !dbg !211
  %152 = getelementptr inbounds i8, ptr %149, i64 %151, !dbg !212
  store ptr %152, ptr %30, align 8, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %31, metadata !213, metadata !DIExpression()), !dbg !214
  store i64 0, ptr %31, align 8, !dbg !214
  call void @llvm.dbg.declare(metadata ptr %32, metadata !215, metadata !DIExpression()), !dbg !216
  store i64 0, ptr %32, align 8, !dbg !216
  %153 = load i64, ptr %17, align 8, !dbg !217
  %154 = and i64 %153, 15, !dbg !218
  switch i64 %154, label %316 [
    i64 15, label %155
    i64 14, label %163
    i64 13, label %171
    i64 12, label %179
    i64 11, label %187
    i64 10, label %195
    i64 9, label %203
    i64 8, label %232
    i64 7, label %240
    i64 6, label %248
    i64 5, label %256
    i64 4, label %264
    i64 3, label %272
    i64 2, label %280
    i64 1, label %288
  ], !dbg !219

155:                                              ; preds = %148
  %156 = load ptr, ptr %30, align 8, !dbg !220
  %157 = getelementptr inbounds i8, ptr %156, i64 14, !dbg !220
  %158 = load i8, ptr %157, align 1, !dbg !220
  %159 = zext i8 %158 to i64, !dbg !222
  %160 = shl i64 %159, 48, !dbg !223
  %161 = load i64, ptr %32, align 8, !dbg !224
  %162 = xor i64 %161, %160, !dbg !224
  store i64 %162, ptr %32, align 8, !dbg !224
  br label %163, !dbg !225

163:                                              ; preds = %155, %148
  %164 = load ptr, ptr %30, align 8, !dbg !226
  %165 = getelementptr inbounds i8, ptr %164, i64 13, !dbg !226
  %166 = load i8, ptr %165, align 1, !dbg !226
  %167 = zext i8 %166 to i64, !dbg !227
  %168 = shl i64 %167, 40, !dbg !228
  %169 = load i64, ptr %32, align 8, !dbg !229
  %170 = xor i64 %169, %168, !dbg !229
  store i64 %170, ptr %32, align 8, !dbg !229
  br label %171, !dbg !230

171:                                              ; preds = %163, %148
  %172 = load ptr, ptr %30, align 8, !dbg !231
  %173 = getelementptr inbounds i8, ptr %172, i64 12, !dbg !231
  %174 = load i8, ptr %173, align 1, !dbg !231
  %175 = zext i8 %174 to i64, !dbg !232
  %176 = shl i64 %175, 32, !dbg !233
  %177 = load i64, ptr %32, align 8, !dbg !234
  %178 = xor i64 %177, %176, !dbg !234
  store i64 %178, ptr %32, align 8, !dbg !234
  br label %179, !dbg !235

179:                                              ; preds = %171, %148
  %180 = load ptr, ptr %30, align 8, !dbg !236
  %181 = getelementptr inbounds i8, ptr %180, i64 11, !dbg !236
  %182 = load i8, ptr %181, align 1, !dbg !236
  %183 = zext i8 %182 to i64, !dbg !237
  %184 = shl i64 %183, 24, !dbg !238
  %185 = load i64, ptr %32, align 8, !dbg !239
  %186 = xor i64 %185, %184, !dbg !239
  store i64 %186, ptr %32, align 8, !dbg !239
  br label %187, !dbg !240

187:                                              ; preds = %179, %148
  %188 = load ptr, ptr %30, align 8, !dbg !241
  %189 = getelementptr inbounds i8, ptr %188, i64 10, !dbg !241
  %190 = load i8, ptr %189, align 1, !dbg !241
  %191 = zext i8 %190 to i64, !dbg !242
  %192 = shl i64 %191, 16, !dbg !243
  %193 = load i64, ptr %32, align 8, !dbg !244
  %194 = xor i64 %193, %192, !dbg !244
  store i64 %194, ptr %32, align 8, !dbg !244
  br label %195, !dbg !245

195:                                              ; preds = %187, %148
  %196 = load ptr, ptr %30, align 8, !dbg !246
  %197 = getelementptr inbounds i8, ptr %196, i64 9, !dbg !246
  %198 = load i8, ptr %197, align 1, !dbg !246
  %199 = zext i8 %198 to i64, !dbg !247
  %200 = shl i64 %199, 8, !dbg !248
  %201 = load i64, ptr %32, align 8, !dbg !249
  %202 = xor i64 %201, %200, !dbg !249
  store i64 %202, ptr %32, align 8, !dbg !249
  br label %203, !dbg !250

203:                                              ; preds = %195, %148
  %204 = load ptr, ptr %30, align 8, !dbg !251
  %205 = getelementptr inbounds i8, ptr %204, i64 8, !dbg !251
  %206 = load i8, ptr %205, align 1, !dbg !251
  %207 = zext i8 %206 to i64, !dbg !252
  %208 = load i64, ptr %32, align 8, !dbg !253
  %209 = xor i64 %208, %207, !dbg !253
  store i64 %209, ptr %32, align 8, !dbg !253
  %210 = load i64, ptr %26, align 8, !dbg !254
  %211 = load i64, ptr %32, align 8, !dbg !255
  %212 = mul i64 %211, %210, !dbg !255
  store i64 %212, ptr %32, align 8, !dbg !255
  %213 = load i64, ptr %32, align 8, !dbg !256
  store i64 %213, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !120, metadata !DIExpression()), !dbg !257
  store i8 33, ptr %7, align 1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !130, metadata !DIExpression()), !dbg !259
  %214 = load i64, ptr %6, align 8, !dbg !260
  %215 = load i8, ptr %7, align 1, !dbg !261
  %216 = sext i8 %215 to i32, !dbg !261
  %217 = zext i32 %216 to i64, !dbg !262
  %218 = shl i64 %214, %217, !dbg !262
  %219 = load i64, ptr %6, align 8, !dbg !263
  %220 = load i8, ptr %7, align 1, !dbg !264
  %221 = sext i8 %220 to i32, !dbg !264
  %222 = sub nsw i32 64, %221, !dbg !265
  %223 = zext i32 %222 to i64, !dbg !266
  %224 = lshr i64 %219, %223, !dbg !266
  %225 = or i64 %218, %224, !dbg !267
  store i64 %225, ptr %32, align 8, !dbg !268
  %226 = load i64, ptr %25, align 8, !dbg !269
  %227 = load i64, ptr %32, align 8, !dbg !270
  %228 = mul i64 %227, %226, !dbg !270
  store i64 %228, ptr %32, align 8, !dbg !270
  %229 = load i64, ptr %32, align 8, !dbg !271
  %230 = load i64, ptr %24, align 8, !dbg !272
  %231 = xor i64 %230, %229, !dbg !272
  store i64 %231, ptr %24, align 8, !dbg !272
  br label %232, !dbg !273

232:                                              ; preds = %203, %148
  %233 = load ptr, ptr %30, align 8, !dbg !274
  %234 = getelementptr inbounds i8, ptr %233, i64 7, !dbg !274
  %235 = load i8, ptr %234, align 1, !dbg !274
  %236 = zext i8 %235 to i64, !dbg !275
  %237 = shl i64 %236, 56, !dbg !276
  %238 = load i64, ptr %31, align 8, !dbg !277
  %239 = xor i64 %238, %237, !dbg !277
  store i64 %239, ptr %31, align 8, !dbg !277
  br label %240, !dbg !278

240:                                              ; preds = %232, %148
  %241 = load ptr, ptr %30, align 8, !dbg !279
  %242 = getelementptr inbounds i8, ptr %241, i64 6, !dbg !279
  %243 = load i8, ptr %242, align 1, !dbg !279
  %244 = zext i8 %243 to i64, !dbg !280
  %245 = shl i64 %244, 48, !dbg !281
  %246 = load i64, ptr %31, align 8, !dbg !282
  %247 = xor i64 %246, %245, !dbg !282
  store i64 %247, ptr %31, align 8, !dbg !282
  br label %248, !dbg !283

248:                                              ; preds = %240, %148
  %249 = load ptr, ptr %30, align 8, !dbg !284
  %250 = getelementptr inbounds i8, ptr %249, i64 5, !dbg !284
  %251 = load i8, ptr %250, align 1, !dbg !284
  %252 = zext i8 %251 to i64, !dbg !285
  %253 = shl i64 %252, 40, !dbg !286
  %254 = load i64, ptr %31, align 8, !dbg !287
  %255 = xor i64 %254, %253, !dbg !287
  store i64 %255, ptr %31, align 8, !dbg !287
  br label %256, !dbg !288

256:                                              ; preds = %248, %148
  %257 = load ptr, ptr %30, align 8, !dbg !289
  %258 = getelementptr inbounds i8, ptr %257, i64 4, !dbg !289
  %259 = load i8, ptr %258, align 1, !dbg !289
  %260 = zext i8 %259 to i64, !dbg !290
  %261 = shl i64 %260, 32, !dbg !291
  %262 = load i64, ptr %31, align 8, !dbg !292
  %263 = xor i64 %262, %261, !dbg !292
  store i64 %263, ptr %31, align 8, !dbg !292
  br label %264, !dbg !293

264:                                              ; preds = %256, %148
  %265 = load ptr, ptr %30, align 8, !dbg !294
  %266 = getelementptr inbounds i8, ptr %265, i64 3, !dbg !294
  %267 = load i8, ptr %266, align 1, !dbg !294
  %268 = zext i8 %267 to i64, !dbg !295
  %269 = shl i64 %268, 24, !dbg !296
  %270 = load i64, ptr %31, align 8, !dbg !297
  %271 = xor i64 %270, %269, !dbg !297
  store i64 %271, ptr %31, align 8, !dbg !297
  br label %272, !dbg !298

272:                                              ; preds = %264, %148
  %273 = load ptr, ptr %30, align 8, !dbg !299
  %274 = getelementptr inbounds i8, ptr %273, i64 2, !dbg !299
  %275 = load i8, ptr %274, align 1, !dbg !299
  %276 = zext i8 %275 to i64, !dbg !300
  %277 = shl i64 %276, 16, !dbg !301
  %278 = load i64, ptr %31, align 8, !dbg !302
  %279 = xor i64 %278, %277, !dbg !302
  store i64 %279, ptr %31, align 8, !dbg !302
  br label %280, !dbg !303

280:                                              ; preds = %272, %148
  %281 = load ptr, ptr %30, align 8, !dbg !304
  %282 = getelementptr inbounds i8, ptr %281, i64 1, !dbg !304
  %283 = load i8, ptr %282, align 1, !dbg !304
  %284 = zext i8 %283 to i64, !dbg !305
  %285 = shl i64 %284, 8, !dbg !306
  %286 = load i64, ptr %31, align 8, !dbg !307
  %287 = xor i64 %286, %285, !dbg !307
  store i64 %287, ptr %31, align 8, !dbg !307
  br label %288, !dbg !308

288:                                              ; preds = %280, %148
  %289 = load ptr, ptr %30, align 8, !dbg !309
  %290 = load i8, ptr %289, align 1, !dbg !309
  %291 = zext i8 %290 to i64, !dbg !310
  %292 = load i64, ptr %31, align 8, !dbg !311
  %293 = xor i64 %292, %291, !dbg !311
  store i64 %293, ptr %31, align 8, !dbg !311
  %294 = load i64, ptr %25, align 8, !dbg !312
  %295 = load i64, ptr %31, align 8, !dbg !313
  %296 = mul i64 %295, %294, !dbg !313
  store i64 %296, ptr %31, align 8, !dbg !313
  %297 = load i64, ptr %31, align 8, !dbg !314
  store i64 %297, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !120, metadata !DIExpression()), !dbg !315
  store i8 31, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !130, metadata !DIExpression()), !dbg !317
  %298 = load i64, ptr %4, align 8, !dbg !318
  %299 = load i8, ptr %5, align 1, !dbg !319
  %300 = sext i8 %299 to i32, !dbg !319
  %301 = zext i32 %300 to i64, !dbg !320
  %302 = shl i64 %298, %301, !dbg !320
  %303 = load i64, ptr %4, align 8, !dbg !321
  %304 = load i8, ptr %5, align 1, !dbg !322
  %305 = sext i8 %304 to i32, !dbg !322
  %306 = sub nsw i32 64, %305, !dbg !323
  %307 = zext i32 %306 to i64, !dbg !324
  %308 = lshr i64 %303, %307, !dbg !324
  %309 = or i64 %302, %308, !dbg !325
  store i64 %309, ptr %31, align 8, !dbg !326
  %310 = load i64, ptr %26, align 8, !dbg !327
  %311 = load i64, ptr %31, align 8, !dbg !328
  %312 = mul i64 %311, %310, !dbg !328
  store i64 %312, ptr %31, align 8, !dbg !328
  %313 = load i64, ptr %31, align 8, !dbg !329
  %314 = load i64, ptr %23, align 8, !dbg !330
  %315 = xor i64 %314, %313, !dbg !330
  store i64 %315, ptr %23, align 8, !dbg !330
  br label %316, !dbg !331

316:                                              ; preds = %148, %288
  %317 = load i64, ptr %17, align 8, !dbg !332
  %318 = load i64, ptr %23, align 8, !dbg !333
  %319 = xor i64 %318, %317, !dbg !333
  store i64 %319, ptr %23, align 8, !dbg !333
  %320 = load i64, ptr %17, align 8, !dbg !334
  %321 = load i64, ptr %24, align 8, !dbg !335
  %322 = xor i64 %321, %320, !dbg !335
  store i64 %322, ptr %24, align 8, !dbg !335
  %323 = load i64, ptr %24, align 8, !dbg !336
  %324 = load i64, ptr %23, align 8, !dbg !337
  %325 = add i64 %324, %323, !dbg !337
  store i64 %325, ptr %23, align 8, !dbg !337
  %326 = load i64, ptr %23, align 8, !dbg !338
  %327 = load i64, ptr %24, align 8, !dbg !339
  %328 = add i64 %327, %326, !dbg !339
  store i64 %328, ptr %24, align 8, !dbg !339
  %329 = load i64, ptr %23, align 8, !dbg !340
  store i64 %329, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !341, metadata !DIExpression()), !dbg !345
  %330 = load i64, ptr %2, align 8, !dbg !347
  %331 = lshr i64 %330, 33, !dbg !348
  %332 = load i64, ptr %2, align 8, !dbg !349
  %333 = xor i64 %332, %331, !dbg !349
  store i64 %333, ptr %2, align 8, !dbg !349
  %334 = load i64, ptr %2, align 8, !dbg !350
  %335 = mul i64 %334, -49064778989728563, !dbg !350
  store i64 %335, ptr %2, align 8, !dbg !350
  %336 = load i64, ptr %2, align 8, !dbg !351
  %337 = lshr i64 %336, 33, !dbg !352
  %338 = load i64, ptr %2, align 8, !dbg !353
  %339 = xor i64 %338, %337, !dbg !353
  store i64 %339, ptr %2, align 8, !dbg !353
  %340 = load i64, ptr %2, align 8, !dbg !354
  %341 = mul i64 %340, -4265267296055464877, !dbg !354
  store i64 %341, ptr %2, align 8, !dbg !354
  %342 = load i64, ptr %2, align 8, !dbg !355
  %343 = lshr i64 %342, 33, !dbg !356
  %344 = load i64, ptr %2, align 8, !dbg !357
  %345 = xor i64 %344, %343, !dbg !357
  store i64 %345, ptr %2, align 8, !dbg !357
  %346 = load i64, ptr %2, align 8, !dbg !358
  store i64 %346, ptr %23, align 8, !dbg !359
  %347 = load i64, ptr %24, align 8, !dbg !360
  store i64 %347, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !341, metadata !DIExpression()), !dbg !361
  %348 = load i64, ptr %3, align 8, !dbg !363
  %349 = lshr i64 %348, 33, !dbg !364
  %350 = load i64, ptr %3, align 8, !dbg !365
  %351 = xor i64 %350, %349, !dbg !365
  store i64 %351, ptr %3, align 8, !dbg !365
  %352 = load i64, ptr %3, align 8, !dbg !366
  %353 = mul i64 %352, -49064778989728563, !dbg !366
  store i64 %353, ptr %3, align 8, !dbg !366
  %354 = load i64, ptr %3, align 8, !dbg !367
  %355 = lshr i64 %354, 33, !dbg !368
  %356 = load i64, ptr %3, align 8, !dbg !369
  %357 = xor i64 %356, %355, !dbg !369
  store i64 %357, ptr %3, align 8, !dbg !369
  %358 = load i64, ptr %3, align 8, !dbg !370
  %359 = mul i64 %358, -4265267296055464877, !dbg !370
  store i64 %359, ptr %3, align 8, !dbg !370
  %360 = load i64, ptr %3, align 8, !dbg !371
  %361 = lshr i64 %360, 33, !dbg !372
  %362 = load i64, ptr %3, align 8, !dbg !373
  %363 = xor i64 %362, %361, !dbg !373
  store i64 %363, ptr %3, align 8, !dbg !373
  %364 = load i64, ptr %3, align 8, !dbg !374
  store i64 %364, ptr %24, align 8, !dbg !375
  %365 = load i64, ptr %24, align 8, !dbg !376
  %366 = load i64, ptr %23, align 8, !dbg !377
  %367 = add i64 %366, %365, !dbg !377
  store i64 %367, ptr %23, align 8, !dbg !377
  %368 = load i64, ptr %23, align 8, !dbg !378
  %369 = load i64, ptr %24, align 8, !dbg !379
  %370 = add i64 %369, %368, !dbg !379
  store i64 %370, ptr %24, align 8, !dbg !379
  %371 = load i64, ptr %23, align 8, !dbg !380
  %372 = load ptr, ptr %19, align 8, !dbg !381
  store i64 %371, ptr %372, align 8, !dbg !382
  %373 = load i64, ptr %24, align 8, !dbg !383
  %374 = load ptr, ptr %19, align 8, !dbg !384
  %375 = getelementptr inbounds i64, ptr %374, i64 1, !dbg !385
  store i64 %373, ptr %375, align 8, !dbg !386
  %376 = getelementptr inbounds [2 x i64], ptr %35, i64 0, i64 1, !dbg !387
  %377 = load i64, ptr %376, align 8, !dbg !387
  %378 = trunc i64 %377 to i32, !dbg !388
  ret i32 %378, !dbg !389
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @murmur3_set_seed(i32 noundef %0) #0 !dbg !390 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !393, metadata !DIExpression()), !dbg !394
  %3 = load i32, ptr %2, align 4, !dbg !395
  store i32 %3, ptr @seed_value, align 4, !dbg !396
  ret void, !dbg !397
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "seed_value", scope: !2, file: !22, line: 40, type: !23, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !21, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/lwan/common/murmur3.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "65cd04e986612dce327517efaac702f9")
!4 = !{!5, !7, !8, !15, !17, !20}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !11, line: 24, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !13, line: 38, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !11, line: 27, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !13, line: 45, baseType: !19)
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!21 = !{!0}
!22 = !DIFile(filename: "common/murmur3.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "65cd04e986612dce327517efaac702f9")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !11, line: 26, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !13, line: 42, baseType: !7)
!25 = !{i32 7, !"Dwarf Version", i32 5}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{i32 8, !"PIC Level", i32 2}
!29 = !{i32 7, !"PIE Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 2}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 16.0.0"}
!33 = distinct !DISubprogram(name: "murmur3_simple", scope: !22, file: !22, line: 322, type: !34, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !38)
!34 = !DISubroutineType(types: !35)
!35 = !{!7, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!38 = !{}
!39 = !DILocalVariable(name: "keyptr", arg: 1, scope: !33, file: !22, line: 322, type: !36)
!40 = !DILocation(line: 322, column: 28, scope: !33)
!41 = !DILocalVariable(name: "len", scope: !33, file: !22, line: 324, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 46, baseType: !19)
!43 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!44 = !DILocation(line: 324, column: 12, scope: !33)
!45 = !DILocation(line: 324, column: 33, scope: !33)
!46 = !DILocation(line: 324, column: 18, scope: !33)
!47 = !DILocalVariable(name: "hash", scope: !33, file: !22, line: 326, type: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 2)
!51 = !DILocation(line: 326, column: 14, scope: !33)
!52 = !DILocation(line: 327, column: 25, scope: !33)
!53 = !DILocation(line: 327, column: 33, scope: !33)
!54 = !DILocation(line: 327, column: 38, scope: !33)
!55 = !DILocation(line: 327, column: 50, scope: !33)
!56 = !DILocalVariable(name: "key", arg: 1, scope: !57, file: !22, line: 223, type: !36)
!57 = distinct !DISubprogram(name: "MurmurHash3_x64_128", scope: !22, file: !22, line: 223, type: !58, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !38)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !36, !60, !61, !62}
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !DILocation(line: 223, column: 33, scope: !57, inlinedAt: !64)
!64 = distinct !DILocation(line: 327, column: 5, scope: !33)
!65 = !DILocalVariable(name: "len", arg: 2, scope: !57, file: !22, line: 223, type: !60)
!66 = !DILocation(line: 223, column: 51, scope: !57, inlinedAt: !64)
!67 = !DILocalVariable(name: "seed", arg: 3, scope: !57, file: !22, line: 223, type: !61)
!68 = !DILocation(line: 223, column: 71, scope: !57, inlinedAt: !64)
!69 = !DILocalVariable(name: "out", arg: 4, scope: !57, file: !22, line: 224, type: !62)
!70 = !DILocation(line: 224, column: 19, scope: !57, inlinedAt: !64)
!71 = !DILocalVariable(name: "data", scope: !57, file: !22, line: 226, type: !8)
!72 = !DILocation(line: 226, column: 20, scope: !57, inlinedAt: !64)
!73 = !DILocation(line: 226, column: 44, scope: !57, inlinedAt: !64)
!74 = !DILocalVariable(name: "nblocks", scope: !57, file: !22, line: 227, type: !60)
!75 = !DILocation(line: 227, column: 18, scope: !57, inlinedAt: !64)
!76 = !DILocation(line: 227, column: 28, scope: !57, inlinedAt: !64)
!77 = !DILocation(line: 227, column: 32, scope: !57, inlinedAt: !64)
!78 = !DILocalVariable(name: "i", scope: !57, file: !22, line: 228, type: !42)
!79 = !DILocation(line: 228, column: 12, scope: !57, inlinedAt: !64)
!80 = !DILocalVariable(name: "h1", scope: !57, file: !22, line: 229, type: !17)
!81 = !DILocation(line: 229, column: 14, scope: !57, inlinedAt: !64)
!82 = !DILocation(line: 229, column: 19, scope: !57, inlinedAt: !64)
!83 = !DILocalVariable(name: "h2", scope: !57, file: !22, line: 230, type: !17)
!84 = !DILocation(line: 230, column: 14, scope: !57, inlinedAt: !64)
!85 = !DILocation(line: 230, column: 19, scope: !57, inlinedAt: !64)
!86 = !DILocalVariable(name: "c1", scope: !57, file: !22, line: 231, type: !17)
!87 = !DILocation(line: 231, column: 14, scope: !57, inlinedAt: !64)
!88 = !DILocalVariable(name: "c2", scope: !57, file: !22, line: 232, type: !17)
!89 = !DILocation(line: 232, column: 14, scope: !57, inlinedAt: !64)
!90 = !DILocalVariable(name: "blocks", scope: !57, file: !22, line: 236, type: !15)
!91 = !DILocation(line: 236, column: 21, scope: !57, inlinedAt: !64)
!92 = !DILocation(line: 236, column: 49, scope: !57, inlinedAt: !64)
!93 = !DILocation(line: 237, column: 12, scope: !94, inlinedAt: !64)
!94 = distinct !DILexicalBlock(scope: !57, file: !22, line: 237, column: 5)
!95 = !DILocation(line: 237, column: 10, scope: !94, inlinedAt: !64)
!96 = !DILocation(line: 237, column: 17, scope: !97, inlinedAt: !64)
!97 = distinct !DILexicalBlock(scope: !94, file: !22, line: 237, column: 5)
!98 = !DILocation(line: 237, column: 21, scope: !97, inlinedAt: !64)
!99 = !DILocation(line: 237, column: 19, scope: !97, inlinedAt: !64)
!100 = !DILocation(line: 237, column: 5, scope: !94, inlinedAt: !64)
!101 = !DILocalVariable(name: "k1", scope: !102, file: !22, line: 238, type: !17)
!102 = distinct !DILexicalBlock(scope: !97, file: !22, line: 237, column: 35)
!103 = !DILocation(line: 238, column: 18, scope: !102, inlinedAt: !64)
!104 = !DILocalVariable(name: "k2", scope: !102, file: !22, line: 238, type: !17)
!105 = !DILocation(line: 238, column: 22, scope: !102, inlinedAt: !64)
!106 = !DILocation(line: 240, column: 21, scope: !102, inlinedAt: !64)
!107 = !DILocation(line: 240, column: 30, scope: !102, inlinedAt: !64)
!108 = !DILocation(line: 240, column: 32, scope: !102, inlinedAt: !64)
!109 = !DILocation(line: 240, column: 28, scope: !102, inlinedAt: !64)
!110 = !DILocation(line: 240, column: 9, scope: !102, inlinedAt: !64)
!111 = !DILocation(line: 241, column: 21, scope: !102, inlinedAt: !64)
!112 = !DILocation(line: 241, column: 30, scope: !102, inlinedAt: !64)
!113 = !DILocation(line: 241, column: 32, scope: !102, inlinedAt: !64)
!114 = !DILocation(line: 241, column: 28, scope: !102, inlinedAt: !64)
!115 = !DILocation(line: 241, column: 36, scope: !102, inlinedAt: !64)
!116 = !DILocation(line: 241, column: 9, scope: !102, inlinedAt: !64)
!117 = !DILocation(line: 243, column: 15, scope: !102, inlinedAt: !64)
!118 = !DILocation(line: 243, column: 12, scope: !102, inlinedAt: !64)
!119 = !DILocation(line: 244, column: 14, scope: !102, inlinedAt: !64)
!120 = !DILocalVariable(name: "x", arg: 1, scope: !121, file: !22, line: 30, type: !17)
!121 = distinct !DISubprogram(name: "rotl64", scope: !22, file: !22, line: 30, type: !122, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !38)
!122 = !DISubroutineType(types: !123)
!123 = !{!17, !17, !124}
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !125, line: 24, baseType: !126)
!125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !13, line: 37, baseType: !127)
!127 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!128 = !DILocation(line: 30, column: 46, scope: !121, inlinedAt: !129)
!129 = distinct !DILocation(line: 244, column: 14, scope: !102, inlinedAt: !64)
!130 = !DILocalVariable(name: "r", arg: 2, scope: !121, file: !22, line: 30, type: !124)
!131 = !DILocation(line: 30, column: 56, scope: !121, inlinedAt: !129)
!132 = !DILocation(line: 32, column: 13, scope: !121, inlinedAt: !129)
!133 = !DILocation(line: 32, column: 18, scope: !121, inlinedAt: !129)
!134 = !DILocation(line: 32, column: 15, scope: !121, inlinedAt: !129)
!135 = !DILocation(line: 32, column: 24, scope: !121, inlinedAt: !129)
!136 = !DILocation(line: 32, column: 35, scope: !121, inlinedAt: !129)
!137 = !DILocation(line: 32, column: 33, scope: !121, inlinedAt: !129)
!138 = !DILocation(line: 32, column: 26, scope: !121, inlinedAt: !129)
!139 = !DILocation(line: 32, column: 21, scope: !121, inlinedAt: !129)
!140 = !DILocation(line: 244, column: 12, scope: !102, inlinedAt: !64)
!141 = !DILocation(line: 245, column: 15, scope: !102, inlinedAt: !64)
!142 = !DILocation(line: 245, column: 12, scope: !102, inlinedAt: !64)
!143 = !DILocation(line: 246, column: 15, scope: !102, inlinedAt: !64)
!144 = !DILocation(line: 246, column: 12, scope: !102, inlinedAt: !64)
!145 = !DILocation(line: 247, column: 14, scope: !102, inlinedAt: !64)
!146 = !DILocation(line: 30, column: 46, scope: !121, inlinedAt: !147)
!147 = distinct !DILocation(line: 247, column: 14, scope: !102, inlinedAt: !64)
!148 = !DILocation(line: 30, column: 56, scope: !121, inlinedAt: !147)
!149 = !DILocation(line: 32, column: 13, scope: !121, inlinedAt: !147)
!150 = !DILocation(line: 32, column: 18, scope: !121, inlinedAt: !147)
!151 = !DILocation(line: 32, column: 15, scope: !121, inlinedAt: !147)
!152 = !DILocation(line: 32, column: 24, scope: !121, inlinedAt: !147)
!153 = !DILocation(line: 32, column: 35, scope: !121, inlinedAt: !147)
!154 = !DILocation(line: 32, column: 33, scope: !121, inlinedAt: !147)
!155 = !DILocation(line: 32, column: 26, scope: !121, inlinedAt: !147)
!156 = !DILocation(line: 32, column: 21, scope: !121, inlinedAt: !147)
!157 = !DILocation(line: 247, column: 12, scope: !102, inlinedAt: !64)
!158 = !DILocation(line: 248, column: 15, scope: !102, inlinedAt: !64)
!159 = !DILocation(line: 248, column: 12, scope: !102, inlinedAt: !64)
!160 = !DILocation(line: 249, column: 14, scope: !102, inlinedAt: !64)
!161 = !DILocation(line: 249, column: 17, scope: !102, inlinedAt: !64)
!162 = !DILocation(line: 249, column: 21, scope: !102, inlinedAt: !64)
!163 = !DILocation(line: 249, column: 12, scope: !102, inlinedAt: !64)
!164 = !DILocation(line: 250, column: 15, scope: !102, inlinedAt: !64)
!165 = !DILocation(line: 250, column: 12, scope: !102, inlinedAt: !64)
!166 = !DILocation(line: 251, column: 14, scope: !102, inlinedAt: !64)
!167 = !DILocation(line: 30, column: 46, scope: !121, inlinedAt: !168)
!168 = distinct !DILocation(line: 251, column: 14, scope: !102, inlinedAt: !64)
!169 = !DILocation(line: 30, column: 56, scope: !121, inlinedAt: !168)
!170 = !DILocation(line: 32, column: 13, scope: !121, inlinedAt: !168)
!171 = !DILocation(line: 32, column: 18, scope: !121, inlinedAt: !168)
!172 = !DILocation(line: 32, column: 15, scope: !121, inlinedAt: !168)
!173 = !DILocation(line: 32, column: 24, scope: !121, inlinedAt: !168)
!174 = !DILocation(line: 32, column: 35, scope: !121, inlinedAt: !168)
!175 = !DILocation(line: 32, column: 33, scope: !121, inlinedAt: !168)
!176 = !DILocation(line: 32, column: 26, scope: !121, inlinedAt: !168)
!177 = !DILocation(line: 32, column: 21, scope: !121, inlinedAt: !168)
!178 = !DILocation(line: 251, column: 12, scope: !102, inlinedAt: !64)
!179 = !DILocation(line: 252, column: 15, scope: !102, inlinedAt: !64)
!180 = !DILocation(line: 252, column: 12, scope: !102, inlinedAt: !64)
!181 = !DILocation(line: 253, column: 15, scope: !102, inlinedAt: !64)
!182 = !DILocation(line: 253, column: 12, scope: !102, inlinedAt: !64)
!183 = !DILocation(line: 254, column: 14, scope: !102, inlinedAt: !64)
!184 = !DILocation(line: 30, column: 46, scope: !121, inlinedAt: !185)
!185 = distinct !DILocation(line: 254, column: 14, scope: !102, inlinedAt: !64)
!186 = !DILocation(line: 30, column: 56, scope: !121, inlinedAt: !185)
!187 = !DILocation(line: 32, column: 13, scope: !121, inlinedAt: !185)
!188 = !DILocation(line: 32, column: 18, scope: !121, inlinedAt: !185)
!189 = !DILocation(line: 32, column: 15, scope: !121, inlinedAt: !185)
!190 = !DILocation(line: 32, column: 24, scope: !121, inlinedAt: !185)
!191 = !DILocation(line: 32, column: 35, scope: !121, inlinedAt: !185)
!192 = !DILocation(line: 32, column: 33, scope: !121, inlinedAt: !185)
!193 = !DILocation(line: 32, column: 26, scope: !121, inlinedAt: !185)
!194 = !DILocation(line: 32, column: 21, scope: !121, inlinedAt: !185)
!195 = !DILocation(line: 254, column: 12, scope: !102, inlinedAt: !64)
!196 = !DILocation(line: 255, column: 15, scope: !102, inlinedAt: !64)
!197 = !DILocation(line: 255, column: 12, scope: !102, inlinedAt: !64)
!198 = !DILocation(line: 256, column: 14, scope: !102, inlinedAt: !64)
!199 = !DILocation(line: 256, column: 17, scope: !102, inlinedAt: !64)
!200 = !DILocation(line: 256, column: 21, scope: !102, inlinedAt: !64)
!201 = !DILocation(line: 256, column: 12, scope: !102, inlinedAt: !64)
!202 = !DILocation(line: 237, column: 31, scope: !97, inlinedAt: !64)
!203 = !DILocation(line: 237, column: 5, scope: !97, inlinedAt: !64)
!204 = distinct !{!204, !100, !205, !206}
!205 = !DILocation(line: 257, column: 5, scope: !94, inlinedAt: !64)
!206 = !{!"llvm.loop.mustprogress"}
!207 = !DILocalVariable(name: "tail", scope: !57, file: !22, line: 261, type: !8)
!208 = !DILocation(line: 261, column: 20, scope: !57, inlinedAt: !64)
!209 = !DILocation(line: 261, column: 45, scope: !57, inlinedAt: !64)
!210 = !DILocation(line: 261, column: 52, scope: !57, inlinedAt: !64)
!211 = !DILocation(line: 261, column: 60, scope: !57, inlinedAt: !64)
!212 = !DILocation(line: 261, column: 50, scope: !57, inlinedAt: !64)
!213 = !DILocalVariable(name: "k1", scope: !57, file: !22, line: 262, type: !17)
!214 = !DILocation(line: 262, column: 14, scope: !57, inlinedAt: !64)
!215 = !DILocalVariable(name: "k2", scope: !57, file: !22, line: 263, type: !17)
!216 = !DILocation(line: 263, column: 14, scope: !57, inlinedAt: !64)
!217 = !DILocation(line: 264, column: 13, scope: !57, inlinedAt: !64)
!218 = !DILocation(line: 264, column: 17, scope: !57, inlinedAt: !64)
!219 = !DILocation(line: 264, column: 5, scope: !57, inlinedAt: !64)
!220 = !DILocation(line: 266, column: 27, scope: !221, inlinedAt: !64)
!221 = distinct !DILexicalBlock(scope: !57, file: !22, line: 264, column: 23)
!222 = !DILocation(line: 266, column: 15, scope: !221, inlinedAt: !64)
!223 = !DILocation(line: 266, column: 37, scope: !221, inlinedAt: !64)
!224 = !DILocation(line: 266, column: 12, scope: !221, inlinedAt: !64)
!225 = !DILocation(line: 266, column: 9, scope: !221, inlinedAt: !64)
!226 = !DILocation(line: 268, column: 27, scope: !221, inlinedAt: !64)
!227 = !DILocation(line: 268, column: 15, scope: !221, inlinedAt: !64)
!228 = !DILocation(line: 268, column: 37, scope: !221, inlinedAt: !64)
!229 = !DILocation(line: 268, column: 12, scope: !221, inlinedAt: !64)
!230 = !DILocation(line: 268, column: 9, scope: !221, inlinedAt: !64)
!231 = !DILocation(line: 270, column: 27, scope: !221, inlinedAt: !64)
!232 = !DILocation(line: 270, column: 15, scope: !221, inlinedAt: !64)
!233 = !DILocation(line: 270, column: 37, scope: !221, inlinedAt: !64)
!234 = !DILocation(line: 270, column: 12, scope: !221, inlinedAt: !64)
!235 = !DILocation(line: 270, column: 9, scope: !221, inlinedAt: !64)
!236 = !DILocation(line: 272, column: 27, scope: !221, inlinedAt: !64)
!237 = !DILocation(line: 272, column: 15, scope: !221, inlinedAt: !64)
!238 = !DILocation(line: 272, column: 37, scope: !221, inlinedAt: !64)
!239 = !DILocation(line: 272, column: 12, scope: !221, inlinedAt: !64)
!240 = !DILocation(line: 272, column: 9, scope: !221, inlinedAt: !64)
!241 = !DILocation(line: 274, column: 27, scope: !221, inlinedAt: !64)
!242 = !DILocation(line: 274, column: 15, scope: !221, inlinedAt: !64)
!243 = !DILocation(line: 274, column: 37, scope: !221, inlinedAt: !64)
!244 = !DILocation(line: 274, column: 12, scope: !221, inlinedAt: !64)
!245 = !DILocation(line: 274, column: 9, scope: !221, inlinedAt: !64)
!246 = !DILocation(line: 276, column: 27, scope: !221, inlinedAt: !64)
!247 = !DILocation(line: 276, column: 15, scope: !221, inlinedAt: !64)
!248 = !DILocation(line: 276, column: 36, scope: !221, inlinedAt: !64)
!249 = !DILocation(line: 276, column: 12, scope: !221, inlinedAt: !64)
!250 = !DILocation(line: 276, column: 9, scope: !221, inlinedAt: !64)
!251 = !DILocation(line: 278, column: 27, scope: !221, inlinedAt: !64)
!252 = !DILocation(line: 278, column: 15, scope: !221, inlinedAt: !64)
!253 = !DILocation(line: 278, column: 12, scope: !221, inlinedAt: !64)
!254 = !DILocation(line: 279, column: 15, scope: !221, inlinedAt: !64)
!255 = !DILocation(line: 279, column: 12, scope: !221, inlinedAt: !64)
!256 = !DILocation(line: 280, column: 14, scope: !221, inlinedAt: !64)
!257 = !DILocation(line: 30, column: 46, scope: !121, inlinedAt: !258)
!258 = distinct !DILocation(line: 280, column: 14, scope: !221, inlinedAt: !64)
!259 = !DILocation(line: 30, column: 56, scope: !121, inlinedAt: !258)
!260 = !DILocation(line: 32, column: 13, scope: !121, inlinedAt: !258)
!261 = !DILocation(line: 32, column: 18, scope: !121, inlinedAt: !258)
!262 = !DILocation(line: 32, column: 15, scope: !121, inlinedAt: !258)
!263 = !DILocation(line: 32, column: 24, scope: !121, inlinedAt: !258)
!264 = !DILocation(line: 32, column: 35, scope: !121, inlinedAt: !258)
!265 = !DILocation(line: 32, column: 33, scope: !121, inlinedAt: !258)
!266 = !DILocation(line: 32, column: 26, scope: !121, inlinedAt: !258)
!267 = !DILocation(line: 32, column: 21, scope: !121, inlinedAt: !258)
!268 = !DILocation(line: 280, column: 12, scope: !221, inlinedAt: !64)
!269 = !DILocation(line: 281, column: 15, scope: !221, inlinedAt: !64)
!270 = !DILocation(line: 281, column: 12, scope: !221, inlinedAt: !64)
!271 = !DILocation(line: 282, column: 15, scope: !221, inlinedAt: !64)
!272 = !DILocation(line: 282, column: 12, scope: !221, inlinedAt: !64)
!273 = !DILocation(line: 282, column: 9, scope: !221, inlinedAt: !64)
!274 = !DILocation(line: 284, column: 27, scope: !221, inlinedAt: !64)
!275 = !DILocation(line: 284, column: 15, scope: !221, inlinedAt: !64)
!276 = !DILocation(line: 284, column: 36, scope: !221, inlinedAt: !64)
!277 = !DILocation(line: 284, column: 12, scope: !221, inlinedAt: !64)
!278 = !DILocation(line: 284, column: 9, scope: !221, inlinedAt: !64)
!279 = !DILocation(line: 286, column: 27, scope: !221, inlinedAt: !64)
!280 = !DILocation(line: 286, column: 15, scope: !221, inlinedAt: !64)
!281 = !DILocation(line: 286, column: 36, scope: !221, inlinedAt: !64)
!282 = !DILocation(line: 286, column: 12, scope: !221, inlinedAt: !64)
!283 = !DILocation(line: 286, column: 9, scope: !221, inlinedAt: !64)
!284 = !DILocation(line: 288, column: 27, scope: !221, inlinedAt: !64)
!285 = !DILocation(line: 288, column: 15, scope: !221, inlinedAt: !64)
!286 = !DILocation(line: 288, column: 36, scope: !221, inlinedAt: !64)
!287 = !DILocation(line: 288, column: 12, scope: !221, inlinedAt: !64)
!288 = !DILocation(line: 288, column: 9, scope: !221, inlinedAt: !64)
!289 = !DILocation(line: 290, column: 27, scope: !221, inlinedAt: !64)
!290 = !DILocation(line: 290, column: 15, scope: !221, inlinedAt: !64)
!291 = !DILocation(line: 290, column: 36, scope: !221, inlinedAt: !64)
!292 = !DILocation(line: 290, column: 12, scope: !221, inlinedAt: !64)
!293 = !DILocation(line: 290, column: 9, scope: !221, inlinedAt: !64)
!294 = !DILocation(line: 292, column: 27, scope: !221, inlinedAt: !64)
!295 = !DILocation(line: 292, column: 15, scope: !221, inlinedAt: !64)
!296 = !DILocation(line: 292, column: 36, scope: !221, inlinedAt: !64)
!297 = !DILocation(line: 292, column: 12, scope: !221, inlinedAt: !64)
!298 = !DILocation(line: 292, column: 9, scope: !221, inlinedAt: !64)
!299 = !DILocation(line: 294, column: 27, scope: !221, inlinedAt: !64)
!300 = !DILocation(line: 294, column: 15, scope: !221, inlinedAt: !64)
!301 = !DILocation(line: 294, column: 36, scope: !221, inlinedAt: !64)
!302 = !DILocation(line: 294, column: 12, scope: !221, inlinedAt: !64)
!303 = !DILocation(line: 294, column: 9, scope: !221, inlinedAt: !64)
!304 = !DILocation(line: 296, column: 27, scope: !221, inlinedAt: !64)
!305 = !DILocation(line: 296, column: 15, scope: !221, inlinedAt: !64)
!306 = !DILocation(line: 296, column: 36, scope: !221, inlinedAt: !64)
!307 = !DILocation(line: 296, column: 12, scope: !221, inlinedAt: !64)
!308 = !DILocation(line: 296, column: 9, scope: !221, inlinedAt: !64)
!309 = !DILocation(line: 298, column: 27, scope: !221, inlinedAt: !64)
!310 = !DILocation(line: 298, column: 15, scope: !221, inlinedAt: !64)
!311 = !DILocation(line: 298, column: 12, scope: !221, inlinedAt: !64)
!312 = !DILocation(line: 299, column: 15, scope: !221, inlinedAt: !64)
!313 = !DILocation(line: 299, column: 12, scope: !221, inlinedAt: !64)
!314 = !DILocation(line: 300, column: 14, scope: !221, inlinedAt: !64)
!315 = !DILocation(line: 30, column: 46, scope: !121, inlinedAt: !316)
!316 = distinct !DILocation(line: 300, column: 14, scope: !221, inlinedAt: !64)
!317 = !DILocation(line: 30, column: 56, scope: !121, inlinedAt: !316)
!318 = !DILocation(line: 32, column: 13, scope: !121, inlinedAt: !316)
!319 = !DILocation(line: 32, column: 18, scope: !121, inlinedAt: !316)
!320 = !DILocation(line: 32, column: 15, scope: !121, inlinedAt: !316)
!321 = !DILocation(line: 32, column: 24, scope: !121, inlinedAt: !316)
!322 = !DILocation(line: 32, column: 35, scope: !121, inlinedAt: !316)
!323 = !DILocation(line: 32, column: 33, scope: !121, inlinedAt: !316)
!324 = !DILocation(line: 32, column: 26, scope: !121, inlinedAt: !316)
!325 = !DILocation(line: 32, column: 21, scope: !121, inlinedAt: !316)
!326 = !DILocation(line: 300, column: 12, scope: !221, inlinedAt: !64)
!327 = !DILocation(line: 301, column: 15, scope: !221, inlinedAt: !64)
!328 = !DILocation(line: 301, column: 12, scope: !221, inlinedAt: !64)
!329 = !DILocation(line: 302, column: 15, scope: !221, inlinedAt: !64)
!330 = !DILocation(line: 302, column: 12, scope: !221, inlinedAt: !64)
!331 = !DILocation(line: 303, column: 5, scope: !221, inlinedAt: !64)
!332 = !DILocation(line: 307, column: 21, scope: !57, inlinedAt: !64)
!333 = !DILocation(line: 307, column: 8, scope: !57, inlinedAt: !64)
!334 = !DILocation(line: 308, column: 21, scope: !57, inlinedAt: !64)
!335 = !DILocation(line: 308, column: 8, scope: !57, inlinedAt: !64)
!336 = !DILocation(line: 309, column: 11, scope: !57, inlinedAt: !64)
!337 = !DILocation(line: 309, column: 8, scope: !57, inlinedAt: !64)
!338 = !DILocation(line: 310, column: 11, scope: !57, inlinedAt: !64)
!339 = !DILocation(line: 310, column: 8, scope: !57, inlinedAt: !64)
!340 = !DILocation(line: 311, column: 17, scope: !57, inlinedAt: !64)
!341 = !DILocalVariable(name: "k", arg: 1, scope: !342, file: !22, line: 57, type: !17)
!342 = distinct !DISubprogram(name: "fmix64", scope: !22, file: !22, line: 57, type: !343, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !38)
!343 = !DISubroutineType(types: !344)
!344 = !{!17, !17}
!345 = !DILocation(line: 57, column: 46, scope: !342, inlinedAt: !346)
!346 = distinct !DILocation(line: 311, column: 10, scope: !57, inlinedAt: !64)
!347 = !DILocation(line: 59, column: 10, scope: !342, inlinedAt: !346)
!348 = !DILocation(line: 59, column: 12, scope: !342, inlinedAt: !346)
!349 = !DILocation(line: 59, column: 7, scope: !342, inlinedAt: !346)
!350 = !DILocation(line: 60, column: 7, scope: !342, inlinedAt: !346)
!351 = !DILocation(line: 61, column: 10, scope: !342, inlinedAt: !346)
!352 = !DILocation(line: 61, column: 12, scope: !342, inlinedAt: !346)
!353 = !DILocation(line: 61, column: 7, scope: !342, inlinedAt: !346)
!354 = !DILocation(line: 62, column: 7, scope: !342, inlinedAt: !346)
!355 = !DILocation(line: 63, column: 10, scope: !342, inlinedAt: !346)
!356 = !DILocation(line: 63, column: 12, scope: !342, inlinedAt: !346)
!357 = !DILocation(line: 63, column: 7, scope: !342, inlinedAt: !346)
!358 = !DILocation(line: 64, column: 12, scope: !342, inlinedAt: !346)
!359 = !DILocation(line: 311, column: 8, scope: !57, inlinedAt: !64)
!360 = !DILocation(line: 312, column: 17, scope: !57, inlinedAt: !64)
!361 = !DILocation(line: 57, column: 46, scope: !342, inlinedAt: !362)
!362 = distinct !DILocation(line: 312, column: 10, scope: !57, inlinedAt: !64)
!363 = !DILocation(line: 59, column: 10, scope: !342, inlinedAt: !362)
!364 = !DILocation(line: 59, column: 12, scope: !342, inlinedAt: !362)
!365 = !DILocation(line: 59, column: 7, scope: !342, inlinedAt: !362)
!366 = !DILocation(line: 60, column: 7, scope: !342, inlinedAt: !362)
!367 = !DILocation(line: 61, column: 10, scope: !342, inlinedAt: !362)
!368 = !DILocation(line: 61, column: 12, scope: !342, inlinedAt: !362)
!369 = !DILocation(line: 61, column: 7, scope: !342, inlinedAt: !362)
!370 = !DILocation(line: 62, column: 7, scope: !342, inlinedAt: !362)
!371 = !DILocation(line: 63, column: 10, scope: !342, inlinedAt: !362)
!372 = !DILocation(line: 63, column: 12, scope: !342, inlinedAt: !362)
!373 = !DILocation(line: 63, column: 7, scope: !342, inlinedAt: !362)
!374 = !DILocation(line: 64, column: 12, scope: !342, inlinedAt: !362)
!375 = !DILocation(line: 312, column: 8, scope: !57, inlinedAt: !64)
!376 = !DILocation(line: 313, column: 11, scope: !57, inlinedAt: !64)
!377 = !DILocation(line: 313, column: 8, scope: !57, inlinedAt: !64)
!378 = !DILocation(line: 314, column: 11, scope: !57, inlinedAt: !64)
!379 = !DILocation(line: 314, column: 8, scope: !57, inlinedAt: !64)
!380 = !DILocation(line: 315, column: 29, scope: !57, inlinedAt: !64)
!381 = !DILocation(line: 315, column: 19, scope: !57, inlinedAt: !64)
!382 = !DILocation(line: 315, column: 27, scope: !57, inlinedAt: !64)
!383 = !DILocation(line: 316, column: 29, scope: !57, inlinedAt: !64)
!384 = !DILocation(line: 316, column: 19, scope: !57, inlinedAt: !64)
!385 = !DILocation(line: 316, column: 5, scope: !57, inlinedAt: !64)
!386 = !DILocation(line: 316, column: 27, scope: !57, inlinedAt: !64)
!387 = !DILocation(line: 328, column: 26, scope: !33)
!388 = !DILocation(line: 328, column: 12, scope: !33)
!389 = !DILocation(line: 328, column: 5, scope: !33)
!390 = distinct !DISubprogram(name: "murmur3_set_seed", scope: !22, file: !22, line: 343, type: !391, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !38)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !61}
!393 = !DILocalVariable(name: "seed", arg: 1, scope: !390, file: !22, line: 343, type: !61)
!394 = !DILocation(line: 343, column: 33, scope: !390)
!395 = !DILocation(line: 345, column: 18, scope: !390)
!396 = !DILocation(line: 345, column: 16, scope: !390)
!397 = !DILocation(line: 346, column: 1, scope: !390)
