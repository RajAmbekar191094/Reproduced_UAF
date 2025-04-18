; ModuleID = 'src/punycode.c'
source_filename = "src/punycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @punycode_encode(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !35 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !46, metadata !DIExpression()), !dbg !47
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !48, metadata !DIExpression()), !dbg !49
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !51
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !52, metadata !DIExpression()), !dbg !53
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata ptr %12, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata ptr %13, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata ptr %14, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata ptr %15, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata ptr %16, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata ptr %17, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata ptr %18, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata ptr %19, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata ptr %20, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata ptr %21, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata ptr %22, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata ptr %23, metadata !78, metadata !DIExpression()), !dbg !79
  store i32 128, ptr %12, align 4, !dbg !80
  store i32 0, ptr %16, align 4, !dbg !81
  store i32 0, ptr %13, align 4, !dbg !82
  %24 = load ptr, ptr %10, align 8, !dbg !83
  %25 = load i32, ptr %24, align 4, !dbg !84
  store i32 %25, ptr %17, align 4, !dbg !85
  store i32 72, ptr %18, align 4, !dbg !86
  store i32 0, ptr %19, align 4, !dbg !87
  br label %26, !dbg !89

26:                                               ; preds = %75, %5
  %27 = load i32, ptr %19, align 4, !dbg !90
  %28 = load i32, ptr %7, align 4, !dbg !92
  %29 = icmp ult i32 %27, %28, !dbg !93
  br i1 %29, label %30, label %78, !dbg !94

30:                                               ; preds = %26
  %31 = load ptr, ptr %8, align 8, !dbg !95
  %32 = load i32, ptr %19, align 4, !dbg !95
  %33 = zext i32 %32 to i64, !dbg !95
  %34 = getelementptr inbounds i32, ptr %31, i64 %33, !dbg !95
  %35 = load i32, ptr %34, align 4, !dbg !95
  %36 = icmp ult i32 %35, 128, !dbg !95
  br i1 %36, label %37, label %74, !dbg !98

37:                                               ; preds = %30
  %38 = load i32, ptr %17, align 4, !dbg !99
  %39 = load i32, ptr %16, align 4, !dbg !102
  %40 = sub i32 %38, %39, !dbg !103
  %41 = icmp ult i32 %40, 2, !dbg !104
  br i1 %41, label %42, label %43, !dbg !105

42:                                               ; preds = %37
  store i32 2, ptr %6, align 4, !dbg !106
  br label %268, !dbg !106

43:                                               ; preds = %37
  %44 = load ptr, ptr %9, align 8, !dbg !107
  %45 = icmp ne ptr %44, null, !dbg !107
  br i1 %45, label %46, label %60, !dbg !107

46:                                               ; preds = %43
  %47 = load ptr, ptr %8, align 8, !dbg !108
  %48 = load i32, ptr %19, align 4, !dbg !109
  %49 = zext i32 %48 to i64, !dbg !108
  %50 = getelementptr inbounds i32, ptr %47, i64 %49, !dbg !108
  %51 = load i32, ptr %50, align 4, !dbg !108
  %52 = load ptr, ptr %9, align 8, !dbg !110
  %53 = load i32, ptr %19, align 4, !dbg !111
  %54 = zext i32 %53 to i64, !dbg !110
  %55 = getelementptr inbounds i8, ptr %52, i64 %54, !dbg !110
  %56 = load i8, ptr %55, align 1, !dbg !110
  %57 = zext i8 %56 to i32, !dbg !110
  %58 = call signext i8 @encode_basic(i32 noundef %51, i32 noundef %57), !dbg !112
  %59 = sext i8 %58 to i32, !dbg !112
  br label %66, !dbg !107

60:                                               ; preds = %43
  %61 = load ptr, ptr %8, align 8, !dbg !113
  %62 = load i32, ptr %19, align 4, !dbg !114
  %63 = zext i32 %62 to i64, !dbg !113
  %64 = getelementptr inbounds i32, ptr %61, i64 %63, !dbg !113
  %65 = load i32, ptr %64, align 4, !dbg !113
  br label %66, !dbg !107

66:                                               ; preds = %60, %46
  %67 = phi i32 [ %59, %46 ], [ %65, %60 ], !dbg !107
  %68 = trunc i32 %67 to i8, !dbg !107
  %69 = load ptr, ptr %11, align 8, !dbg !115
  %70 = load i32, ptr %16, align 4, !dbg !116
  %71 = add i32 %70, 1, !dbg !116
  store i32 %71, ptr %16, align 4, !dbg !116
  %72 = zext i32 %70 to i64, !dbg !115
  %73 = getelementptr inbounds i8, ptr %69, i64 %72, !dbg !115
  store i8 %68, ptr %73, align 1, !dbg !117
  br label %74, !dbg !118

74:                                               ; preds = %66, %30
  br label %75, !dbg !119

75:                                               ; preds = %74
  %76 = load i32, ptr %19, align 4, !dbg !120
  %77 = add i32 %76, 1, !dbg !120
  store i32 %77, ptr %19, align 4, !dbg !120
  br label %26, !dbg !121, !llvm.loop !122

78:                                               ; preds = %26
  %79 = load i32, ptr %16, align 4, !dbg !125
  store i32 %79, ptr %15, align 4, !dbg !126
  store i32 %79, ptr %14, align 4, !dbg !127
  %80 = load i32, ptr %15, align 4, !dbg !128
  %81 = icmp ugt i32 %80, 0, !dbg !130
  br i1 %81, label %82, label %88, !dbg !131

82:                                               ; preds = %78
  %83 = load ptr, ptr %11, align 8, !dbg !132
  %84 = load i32, ptr %16, align 4, !dbg !133
  %85 = add i32 %84, 1, !dbg !133
  store i32 %85, ptr %16, align 4, !dbg !133
  %86 = zext i32 %84 to i64, !dbg !132
  %87 = getelementptr inbounds i8, ptr %83, i64 %86, !dbg !132
  store i8 45, ptr %87, align 1, !dbg !134
  br label %88, !dbg !132

88:                                               ; preds = %82, %78
  br label %89, !dbg !135

89:                                               ; preds = %260, %88
  %90 = load i32, ptr %14, align 4, !dbg !136
  %91 = load i32, ptr %7, align 4, !dbg !137
  %92 = icmp ult i32 %90, %91, !dbg !138
  br i1 %92, label %93, label %265, !dbg !135

93:                                               ; preds = %89
  store i32 -1, ptr %20, align 4, !dbg !139
  store i32 0, ptr %19, align 4, !dbg !142
  br label %94, !dbg !143

94:                                               ; preds = %121, %93
  %95 = load i32, ptr %19, align 4, !dbg !144
  %96 = load i32, ptr %7, align 4, !dbg !146
  %97 = icmp ult i32 %95, %96, !dbg !147
  br i1 %97, label %98, label %124, !dbg !148

98:                                               ; preds = %94
  %99 = load ptr, ptr %8, align 8, !dbg !149
  %100 = load i32, ptr %19, align 4, !dbg !152
  %101 = zext i32 %100 to i64, !dbg !149
  %102 = getelementptr inbounds i32, ptr %99, i64 %101, !dbg !149
  %103 = load i32, ptr %102, align 4, !dbg !149
  %104 = load i32, ptr %12, align 4, !dbg !153
  %105 = icmp uge i32 %103, %104, !dbg !154
  br i1 %105, label %106, label %120, !dbg !155

106:                                              ; preds = %98
  %107 = load ptr, ptr %8, align 8, !dbg !156
  %108 = load i32, ptr %19, align 4, !dbg !157
  %109 = zext i32 %108 to i64, !dbg !156
  %110 = getelementptr inbounds i32, ptr %107, i64 %109, !dbg !156
  %111 = load i32, ptr %110, align 4, !dbg !156
  %112 = load i32, ptr %20, align 4, !dbg !158
  %113 = icmp ult i32 %111, %112, !dbg !159
  br i1 %113, label %114, label %120, !dbg !160

114:                                              ; preds = %106
  %115 = load ptr, ptr %8, align 8, !dbg !161
  %116 = load i32, ptr %19, align 4, !dbg !162
  %117 = zext i32 %116 to i64, !dbg !161
  %118 = getelementptr inbounds i32, ptr %115, i64 %117, !dbg !161
  %119 = load i32, ptr %118, align 4, !dbg !161
  store i32 %119, ptr %20, align 4, !dbg !163
  br label %120, !dbg !164

120:                                              ; preds = %114, %106, %98
  br label %121, !dbg !165

121:                                              ; preds = %120
  %122 = load i32, ptr %19, align 4, !dbg !166
  %123 = add i32 %122, 1, !dbg !166
  store i32 %123, ptr %19, align 4, !dbg !166
  br label %94, !dbg !167, !llvm.loop !168

124:                                              ; preds = %94
  %125 = load i32, ptr %20, align 4, !dbg !170
  %126 = load i32, ptr %12, align 4, !dbg !172
  %127 = sub i32 %125, %126, !dbg !173
  %128 = load i32, ptr %13, align 4, !dbg !174
  %129 = sub i32 -1, %128, !dbg !175
  %130 = load i32, ptr %14, align 4, !dbg !176
  %131 = add i32 %130, 1, !dbg !177
  %132 = udiv i32 %129, %131, !dbg !178
  %133 = icmp ugt i32 %127, %132, !dbg !179
  br i1 %133, label %134, label %135, !dbg !180

134:                                              ; preds = %124
  store i32 3, ptr %6, align 4, !dbg !181
  br label %268, !dbg !181

135:                                              ; preds = %124
  %136 = load i32, ptr %20, align 4, !dbg !182
  %137 = load i32, ptr %12, align 4, !dbg !183
  %138 = sub i32 %136, %137, !dbg !184
  %139 = load i32, ptr %14, align 4, !dbg !185
  %140 = add i32 %139, 1, !dbg !186
  %141 = mul i32 %138, %140, !dbg !187
  %142 = load i32, ptr %13, align 4, !dbg !188
  %143 = add i32 %142, %141, !dbg !188
  store i32 %143, ptr %13, align 4, !dbg !188
  %144 = load i32, ptr %20, align 4, !dbg !189
  store i32 %144, ptr %12, align 4, !dbg !190
  store i32 0, ptr %19, align 4, !dbg !191
  br label %145, !dbg !193

145:                                              ; preds = %257, %135
  %146 = load i32, ptr %19, align 4, !dbg !194
  %147 = load i32, ptr %7, align 4, !dbg !196
  %148 = icmp ult i32 %146, %147, !dbg !197
  br i1 %148, label %149, label %260, !dbg !198

149:                                              ; preds = %145
  %150 = load ptr, ptr %8, align 8, !dbg !199
  %151 = load i32, ptr %19, align 4, !dbg !202
  %152 = zext i32 %151 to i64, !dbg !199
  %153 = getelementptr inbounds i32, ptr %150, i64 %152, !dbg !199
  %154 = load i32, ptr %153, align 4, !dbg !199
  %155 = load i32, ptr %12, align 4, !dbg !203
  %156 = icmp ult i32 %154, %155, !dbg !204
  br i1 %156, label %157, label %163, !dbg !205

157:                                              ; preds = %149
  %158 = load i32, ptr %13, align 4, !dbg !206
  %159 = add i32 %158, 1, !dbg !206
  store i32 %159, ptr %13, align 4, !dbg !206
  %160 = icmp eq i32 %159, 0, !dbg !209
  br i1 %160, label %161, label %162, !dbg !210

161:                                              ; preds = %157
  store i32 3, ptr %6, align 4, !dbg !211
  br label %268, !dbg !211

162:                                              ; preds = %157
  br label %163, !dbg !212

163:                                              ; preds = %162, %149
  %164 = load ptr, ptr %8, align 8, !dbg !213
  %165 = load i32, ptr %19, align 4, !dbg !215
  %166 = zext i32 %165 to i64, !dbg !213
  %167 = getelementptr inbounds i32, ptr %164, i64 %166, !dbg !213
  %168 = load i32, ptr %167, align 4, !dbg !213
  %169 = load i32, ptr %12, align 4, !dbg !216
  %170 = icmp eq i32 %168, %169, !dbg !217
  br i1 %170, label %171, label %256, !dbg !218

171:                                              ; preds = %163
  %172 = load i32, ptr %13, align 4, !dbg !219
  store i32 %172, ptr %21, align 4, !dbg !222
  store i32 36, ptr %22, align 4, !dbg !223
  br label %173, !dbg !224

173:                                              ; preds = %222, %171
  %174 = load i32, ptr %16, align 4, !dbg !225
  %175 = load i32, ptr %17, align 4, !dbg !229
  %176 = icmp uge i32 %174, %175, !dbg !230
  br i1 %176, label %177, label %178, !dbg !231

177:                                              ; preds = %173
  store i32 2, ptr %6, align 4, !dbg !232
  br label %268, !dbg !232

178:                                              ; preds = %173
  %179 = load i32, ptr %22, align 4, !dbg !233
  %180 = load i32, ptr %18, align 4, !dbg !234
  %181 = icmp ule i32 %179, %180, !dbg !235
  br i1 %181, label %182, label %183, !dbg !233

182:                                              ; preds = %178
  br label %195, !dbg !233

183:                                              ; preds = %178
  %184 = load i32, ptr %22, align 4, !dbg !236
  %185 = load i32, ptr %18, align 4, !dbg !237
  %186 = add i32 %185, 26, !dbg !238
  %187 = icmp uge i32 %184, %186, !dbg !239
  br i1 %187, label %188, label %189, !dbg !236

188:                                              ; preds = %183
  br label %193, !dbg !236

189:                                              ; preds = %183
  %190 = load i32, ptr %22, align 4, !dbg !240
  %191 = load i32, ptr %18, align 4, !dbg !241
  %192 = sub i32 %190, %191, !dbg !242
  br label %193, !dbg !236

193:                                              ; preds = %189, %188
  %194 = phi i32 [ 26, %188 ], [ %192, %189 ], !dbg !236
  br label %195, !dbg !233

195:                                              ; preds = %193, %182
  %196 = phi i32 [ 1, %182 ], [ %194, %193 ], !dbg !233
  store i32 %196, ptr %23, align 4, !dbg !243
  %197 = load i32, ptr %21, align 4, !dbg !244
  %198 = load i32, ptr %23, align 4, !dbg !246
  %199 = icmp ult i32 %197, %198, !dbg !247
  br i1 %199, label %200, label %201, !dbg !248

200:                                              ; preds = %195
  br label %225, !dbg !249

201:                                              ; preds = %195
  %202 = load i32, ptr %23, align 4, !dbg !250
  %203 = load i32, ptr %21, align 4, !dbg !251
  %204 = load i32, ptr %23, align 4, !dbg !252
  %205 = sub i32 %203, %204, !dbg !253
  %206 = load i32, ptr %23, align 4, !dbg !254
  %207 = sub i32 36, %206, !dbg !255
  %208 = urem i32 %205, %207, !dbg !256
  %209 = add i32 %202, %208, !dbg !257
  %210 = call signext i8 @encode_digit(i32 noundef %209, i32 noundef 0), !dbg !258
  %211 = load ptr, ptr %11, align 8, !dbg !259
  %212 = load i32, ptr %16, align 4, !dbg !260
  %213 = add i32 %212, 1, !dbg !260
  store i32 %213, ptr %16, align 4, !dbg !260
  %214 = zext i32 %212 to i64, !dbg !259
  %215 = getelementptr inbounds i8, ptr %211, i64 %214, !dbg !259
  store i8 %210, ptr %215, align 1, !dbg !261
  %216 = load i32, ptr %21, align 4, !dbg !262
  %217 = load i32, ptr %23, align 4, !dbg !263
  %218 = sub i32 %216, %217, !dbg !264
  %219 = load i32, ptr %23, align 4, !dbg !265
  %220 = sub i32 36, %219, !dbg !266
  %221 = udiv i32 %218, %220, !dbg !267
  store i32 %221, ptr %21, align 4, !dbg !268
  br label %222, !dbg !269

222:                                              ; preds = %201
  %223 = load i32, ptr %22, align 4, !dbg !270
  %224 = add i32 %223, 36, !dbg !270
  store i32 %224, ptr %22, align 4, !dbg !270
  br label %173, !dbg !271, !llvm.loop !272

225:                                              ; preds = %200
  %226 = load i32, ptr %21, align 4, !dbg !275
  %227 = load ptr, ptr %9, align 8, !dbg !276
  %228 = icmp ne ptr %227, null, !dbg !276
  br i1 %228, label %229, label %237, !dbg !277

229:                                              ; preds = %225
  %230 = load ptr, ptr %9, align 8, !dbg !278
  %231 = load i32, ptr %19, align 4, !dbg !279
  %232 = zext i32 %231 to i64, !dbg !278
  %233 = getelementptr inbounds i8, ptr %230, i64 %232, !dbg !278
  %234 = load i8, ptr %233, align 1, !dbg !278
  %235 = zext i8 %234 to i32, !dbg !278
  %236 = icmp ne i32 %235, 0, !dbg !277
  br label %237

237:                                              ; preds = %229, %225
  %238 = phi i1 [ false, %225 ], [ %236, %229 ], !dbg !280
  %239 = zext i1 %238 to i32, !dbg !277
  %240 = call signext i8 @encode_digit(i32 noundef %226, i32 noundef %239), !dbg !281
  %241 = load ptr, ptr %11, align 8, !dbg !282
  %242 = load i32, ptr %16, align 4, !dbg !283
  %243 = add i32 %242, 1, !dbg !283
  store i32 %243, ptr %16, align 4, !dbg !283
  %244 = zext i32 %242 to i64, !dbg !282
  %245 = getelementptr inbounds i8, ptr %241, i64 %244, !dbg !282
  store i8 %240, ptr %245, align 1, !dbg !284
  %246 = load i32, ptr %13, align 4, !dbg !285
  %247 = load i32, ptr %14, align 4, !dbg !286
  %248 = add i32 %247, 1, !dbg !287
  %249 = load i32, ptr %14, align 4, !dbg !288
  %250 = load i32, ptr %15, align 4, !dbg !289
  %251 = icmp eq i32 %249, %250, !dbg !290
  %252 = zext i1 %251 to i32, !dbg !290
  %253 = call i32 @adapt(i32 noundef %246, i32 noundef %248, i32 noundef %252), !dbg !291
  store i32 %253, ptr %18, align 4, !dbg !292
  store i32 0, ptr %13, align 4, !dbg !293
  %254 = load i32, ptr %14, align 4, !dbg !294
  %255 = add i32 %254, 1, !dbg !294
  store i32 %255, ptr %14, align 4, !dbg !294
  br label %256, !dbg !295

256:                                              ; preds = %237, %163
  br label %257, !dbg !296

257:                                              ; preds = %256
  %258 = load i32, ptr %19, align 4, !dbg !297
  %259 = add i32 %258, 1, !dbg !297
  store i32 %259, ptr %19, align 4, !dbg !297
  br label %145, !dbg !298, !llvm.loop !299

260:                                              ; preds = %145
  %261 = load i32, ptr %13, align 4, !dbg !301
  %262 = add i32 %261, 1, !dbg !301
  store i32 %262, ptr %13, align 4, !dbg !301
  %263 = load i32, ptr %12, align 4, !dbg !302
  %264 = add i32 %263, 1, !dbg !302
  store i32 %264, ptr %12, align 4, !dbg !302
  br label %89, !dbg !135, !llvm.loop !303

265:                                              ; preds = %89
  %266 = load i32, ptr %16, align 4, !dbg !305
  %267 = load ptr, ptr %10, align 8, !dbg !306
  store i32 %266, ptr %267, align 4, !dbg !307
  store i32 0, ptr %6, align 4, !dbg !308
  br label %268, !dbg !308

268:                                              ; preds = %265, %177, %161, %134, %42
  %269 = load i32, ptr %6, align 4, !dbg !309
  ret i32 %269, !dbg !309
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @encode_basic(i32 noundef %0, i32 noundef %1) #0 !dbg !310 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !314, metadata !DIExpression()), !dbg !315
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !316, metadata !DIExpression()), !dbg !317
  %5 = load i32, ptr %3, align 4, !dbg !318
  %6 = sub i32 %5, 97, !dbg !319
  %7 = icmp ult i32 %6, 26, !dbg !320
  %8 = zext i1 %7 to i32, !dbg !320
  %9 = shl i32 %8, 5, !dbg !321
  %10 = load i32, ptr %3, align 4, !dbg !322
  %11 = sub i32 %10, %9, !dbg !322
  store i32 %11, ptr %3, align 4, !dbg !322
  %12 = load i32, ptr %3, align 4, !dbg !323
  %13 = load i32, ptr %4, align 4, !dbg !324
  %14 = icmp ne i32 %13, 0, !dbg !324
  br i1 %14, label %19, label %15, !dbg !325

15:                                               ; preds = %2
  %16 = load i32, ptr %3, align 4, !dbg !326
  %17 = sub i32 %16, 65, !dbg !327
  %18 = icmp ult i32 %17, 26, !dbg !328
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ false, %2 ], [ %18, %15 ], !dbg !329
  %21 = zext i1 %20 to i32, !dbg !325
  %22 = shl i32 %21, 5, !dbg !330
  %23 = add i32 %12, %22, !dbg !331
  %24 = trunc i32 %23 to i8, !dbg !323
  ret i8 %24, !dbg !332
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @encode_digit(i32 noundef %0, i32 noundef %1) #0 !dbg !333 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !334, metadata !DIExpression()), !dbg !335
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !336, metadata !DIExpression()), !dbg !337
  %5 = load i32, ptr %3, align 4, !dbg !338
  %6 = add i32 %5, 22, !dbg !339
  %7 = load i32, ptr %3, align 4, !dbg !340
  %8 = icmp ult i32 %7, 26, !dbg !341
  %9 = zext i1 %8 to i32, !dbg !341
  %10 = mul nsw i32 75, %9, !dbg !342
  %11 = add i32 %6, %10, !dbg !343
  %12 = load i32, ptr %4, align 4, !dbg !344
  %13 = icmp ne i32 %12, 0, !dbg !345
  %14 = zext i1 %13 to i32, !dbg !345
  %15 = shl i32 %14, 5, !dbg !346
  %16 = sub i32 %11, %15, !dbg !347
  %17 = trunc i32 %16 to i8, !dbg !338
  ret i8 %17, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adapt(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !349 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !352, metadata !DIExpression()), !dbg !353
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !354, metadata !DIExpression()), !dbg !355
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !356, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.declare(metadata ptr %7, metadata !358, metadata !DIExpression()), !dbg !359
  %8 = load i32, ptr %6, align 4, !dbg !360
  %9 = icmp ne i32 %8, 0, !dbg !360
  br i1 %9, label %10, label %13, !dbg !360

10:                                               ; preds = %3
  %11 = load i32, ptr %4, align 4, !dbg !361
  %12 = udiv i32 %11, 700, !dbg !362
  br label %16, !dbg !360

13:                                               ; preds = %3
  %14 = load i32, ptr %4, align 4, !dbg !363
  %15 = lshr i32 %14, 1, !dbg !364
  br label %16, !dbg !360

16:                                               ; preds = %13, %10
  %17 = phi i32 [ %12, %10 ], [ %15, %13 ], !dbg !360
  store i32 %17, ptr %4, align 4, !dbg !365
  %18 = load i32, ptr %4, align 4, !dbg !366
  %19 = load i32, ptr %5, align 4, !dbg !367
  %20 = udiv i32 %18, %19, !dbg !368
  %21 = load i32, ptr %4, align 4, !dbg !369
  %22 = add i32 %21, %20, !dbg !369
  store i32 %22, ptr %4, align 4, !dbg !369
  store i32 0, ptr %7, align 4, !dbg !370
  br label %23, !dbg !372

23:                                               ; preds = %29, %16
  %24 = load i32, ptr %4, align 4, !dbg !373
  %25 = icmp ugt i32 %24, 455, !dbg !375
  br i1 %25, label %26, label %32, !dbg !376

26:                                               ; preds = %23
  %27 = load i32, ptr %4, align 4, !dbg !377
  %28 = udiv i32 %27, 35, !dbg !377
  store i32 %28, ptr %4, align 4, !dbg !377
  br label %29, !dbg !379

29:                                               ; preds = %26
  %30 = load i32, ptr %7, align 4, !dbg !380
  %31 = add i32 %30, 36, !dbg !380
  store i32 %31, ptr %7, align 4, !dbg !380
  br label %23, !dbg !381, !llvm.loop !382

32:                                               ; preds = %23
  %33 = load i32, ptr %7, align 4, !dbg !384
  %34 = load i32, ptr %4, align 4, !dbg !385
  %35 = mul i32 36, %34, !dbg !386
  %36 = load i32, ptr %4, align 4, !dbg !387
  %37 = add i32 %36, 38, !dbg !388
  %38 = udiv i32 %35, %37, !dbg !389
  %39 = add i32 %33, %38, !dbg !390
  ret i32 %39, !dbg !391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @punycode_decode(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !392 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !398, metadata !DIExpression()), !dbg !399
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !400, metadata !DIExpression()), !dbg !401
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !402, metadata !DIExpression()), !dbg !403
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !404, metadata !DIExpression()), !dbg !405
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !406, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.declare(metadata ptr %12, metadata !408, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.declare(metadata ptr %13, metadata !410, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.declare(metadata ptr %14, metadata !412, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata ptr %15, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata ptr %16, metadata !416, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata ptr %17, metadata !418, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.declare(metadata ptr %18, metadata !420, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.declare(metadata ptr %19, metadata !422, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.declare(metadata ptr %20, metadata !424, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata ptr %21, metadata !426, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata ptr %22, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata ptr %23, metadata !430, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata ptr %24, metadata !432, metadata !DIExpression()), !dbg !433
  store i32 128, ptr %12, align 4, !dbg !434
  store i32 0, ptr %14, align 4, !dbg !435
  store i32 0, ptr %13, align 4, !dbg !436
  %25 = load ptr, ptr %9, align 8, !dbg !437
  %26 = load i32, ptr %25, align 4, !dbg !438
  store i32 %26, ptr %15, align 4, !dbg !439
  store i32 72, ptr %16, align 4, !dbg !440
  store i32 0, ptr %18, align 4, !dbg !441
  store i32 0, ptr %17, align 4, !dbg !443
  br label %27, !dbg !444

27:                                               ; preds = %42, %5
  %28 = load i32, ptr %18, align 4, !dbg !445
  %29 = load i32, ptr %7, align 4, !dbg !447
  %30 = icmp ult i32 %28, %29, !dbg !448
  br i1 %30, label %31, label %45, !dbg !449

31:                                               ; preds = %27
  %32 = load ptr, ptr %8, align 8, !dbg !450
  %33 = load i32, ptr %18, align 4, !dbg !450
  %34 = zext i32 %33 to i64, !dbg !450
  %35 = getelementptr inbounds i8, ptr %32, i64 %34, !dbg !450
  %36 = load i8, ptr %35, align 1, !dbg !450
  %37 = sext i8 %36 to i32, !dbg !450
  %38 = icmp eq i32 %37, 45, !dbg !450
  br i1 %38, label %39, label %41, !dbg !452

39:                                               ; preds = %31
  %40 = load i32, ptr %18, align 4, !dbg !453
  store i32 %40, ptr %17, align 4, !dbg !454
  br label %41, !dbg !455

41:                                               ; preds = %39, %31
  br label %42, !dbg !450

42:                                               ; preds = %41
  %43 = load i32, ptr %18, align 4, !dbg !456
  %44 = add i32 %43, 1, !dbg !456
  store i32 %44, ptr %18, align 4, !dbg !456
  br label %27, !dbg !457, !llvm.loop !458

45:                                               ; preds = %27
  %46 = load i32, ptr %17, align 4, !dbg !460
  %47 = load i32, ptr %15, align 4, !dbg !462
  %48 = icmp ugt i32 %46, %47, !dbg !463
  br i1 %48, label %49, label %50, !dbg !464

49:                                               ; preds = %45
  store i32 2, ptr %6, align 4, !dbg !465
  br label %272, !dbg !465

50:                                               ; preds = %45
  store i32 0, ptr %18, align 4, !dbg !466
  br label %51, !dbg !468

51:                                               ; preds = %94, %50
  %52 = load i32, ptr %18, align 4, !dbg !469
  %53 = load i32, ptr %17, align 4, !dbg !471
  %54 = icmp ult i32 %52, %53, !dbg !472
  br i1 %54, label %55, label %97, !dbg !473

55:                                               ; preds = %51
  %56 = load ptr, ptr %11, align 8, !dbg !474
  %57 = icmp ne ptr %56, null, !dbg !474
  br i1 %57, label %58, label %73, !dbg !477

58:                                               ; preds = %55
  %59 = load ptr, ptr %8, align 8, !dbg !478
  %60 = load i32, ptr %18, align 4, !dbg !478
  %61 = zext i32 %60 to i64, !dbg !478
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !478
  %63 = load i8, ptr %62, align 1, !dbg !478
  %64 = sext i8 %63 to i32, !dbg !478
  %65 = sub i32 %64, 65, !dbg !478
  %66 = icmp ult i32 %65, 26, !dbg !478
  %67 = zext i1 %66 to i32, !dbg !478
  %68 = trunc i32 %67 to i8, !dbg !478
  %69 = load ptr, ptr %11, align 8, !dbg !479
  %70 = load i32, ptr %13, align 4, !dbg !480
  %71 = zext i32 %70 to i64, !dbg !479
  %72 = getelementptr inbounds i8, ptr %69, i64 %71, !dbg !479
  store i8 %68, ptr %72, align 1, !dbg !481
  br label %73, !dbg !479

73:                                               ; preds = %58, %55
  %74 = load ptr, ptr %8, align 8, !dbg !482
  %75 = load i32, ptr %18, align 4, !dbg !482
  %76 = zext i32 %75 to i64, !dbg !482
  %77 = getelementptr inbounds i8, ptr %74, i64 %76, !dbg !482
  %78 = load i8, ptr %77, align 1, !dbg !482
  %79 = sext i8 %78 to i32, !dbg !482
  %80 = icmp ult i32 %79, 128, !dbg !482
  br i1 %80, label %82, label %81, !dbg !484

81:                                               ; preds = %73
  store i32 1, ptr %6, align 4, !dbg !485
  br label %272, !dbg !485

82:                                               ; preds = %73
  %83 = load ptr, ptr %8, align 8, !dbg !486
  %84 = load i32, ptr %18, align 4, !dbg !487
  %85 = zext i32 %84 to i64, !dbg !486
  %86 = getelementptr inbounds i8, ptr %83, i64 %85, !dbg !486
  %87 = load i8, ptr %86, align 1, !dbg !486
  %88 = sext i8 %87 to i32, !dbg !486
  %89 = load ptr, ptr %10, align 8, !dbg !488
  %90 = load i32, ptr %13, align 4, !dbg !489
  %91 = add i32 %90, 1, !dbg !489
  store i32 %91, ptr %13, align 4, !dbg !489
  %92 = zext i32 %90 to i64, !dbg !488
  %93 = getelementptr inbounds i32, ptr %89, i64 %92, !dbg !488
  store i32 %88, ptr %93, align 4, !dbg !490
  br label %94, !dbg !491

94:                                               ; preds = %82
  %95 = load i32, ptr %18, align 4, !dbg !492
  %96 = add i32 %95, 1, !dbg !492
  store i32 %96, ptr %18, align 4, !dbg !492
  br label %51, !dbg !493, !llvm.loop !494

97:                                               ; preds = %51
  %98 = load i32, ptr %17, align 4, !dbg !496
  %99 = icmp ugt i32 %98, 0, !dbg !498
  br i1 %99, label %100, label %103, !dbg !496

100:                                              ; preds = %97
  %101 = load i32, ptr %17, align 4, !dbg !499
  %102 = add i32 %101, 1, !dbg !500
  br label %104, !dbg !496

103:                                              ; preds = %97
  br label %104, !dbg !496

104:                                              ; preds = %103, %100
  %105 = phi i32 [ %102, %100 ], [ 0, %103 ], !dbg !496
  store i32 %105, ptr %19, align 4, !dbg !501
  br label %106, !dbg !502

106:                                              ; preds = %266, %104
  %107 = load i32, ptr %19, align 4, !dbg !503
  %108 = load i32, ptr %7, align 4, !dbg !505
  %109 = icmp ult i32 %107, %108, !dbg !506
  br i1 %109, label %110, label %269, !dbg !507

110:                                              ; preds = %106
  %111 = load i32, ptr %14, align 4, !dbg !508
  store i32 %111, ptr %20, align 4, !dbg !511
  store i32 1, ptr %21, align 4, !dbg !512
  store i32 36, ptr %22, align 4, !dbg !513
  br label %112, !dbg !514

112:                                              ; preds = %177, %110
  %113 = load i32, ptr %19, align 4, !dbg !515
  %114 = load i32, ptr %7, align 4, !dbg !519
  %115 = icmp uge i32 %113, %114, !dbg !520
  br i1 %115, label %116, label %117, !dbg !521

116:                                              ; preds = %112
  store i32 1, ptr %6, align 4, !dbg !522
  br label %272, !dbg !522

117:                                              ; preds = %112
  %118 = load ptr, ptr %8, align 8, !dbg !523
  %119 = load i32, ptr %19, align 4, !dbg !524
  %120 = add i32 %119, 1, !dbg !524
  store i32 %120, ptr %19, align 4, !dbg !524
  %121 = zext i32 %119 to i64, !dbg !523
  %122 = getelementptr inbounds i8, ptr %118, i64 %121, !dbg !523
  %123 = load i8, ptr %122, align 1, !dbg !523
  %124 = sext i8 %123 to i32, !dbg !523
  %125 = call i32 @decode_digit(i32 noundef %124), !dbg !525
  store i32 %125, ptr %23, align 4, !dbg !526
  %126 = load i32, ptr %23, align 4, !dbg !527
  %127 = icmp uge i32 %126, 36, !dbg !529
  br i1 %127, label %128, label %129, !dbg !530

128:                                              ; preds = %117
  store i32 1, ptr %6, align 4, !dbg !531
  br label %272, !dbg !531

129:                                              ; preds = %117
  %130 = load i32, ptr %23, align 4, !dbg !532
  %131 = load i32, ptr %14, align 4, !dbg !534
  %132 = sub i32 -1, %131, !dbg !535
  %133 = load i32, ptr %21, align 4, !dbg !536
  %134 = udiv i32 %132, %133, !dbg !537
  %135 = icmp ugt i32 %130, %134, !dbg !538
  br i1 %135, label %136, label %137, !dbg !539

136:                                              ; preds = %129
  store i32 3, ptr %6, align 4, !dbg !540
  br label %272, !dbg !540

137:                                              ; preds = %129
  %138 = load i32, ptr %23, align 4, !dbg !541
  %139 = load i32, ptr %21, align 4, !dbg !542
  %140 = mul i32 %138, %139, !dbg !543
  %141 = load i32, ptr %14, align 4, !dbg !544
  %142 = add i32 %141, %140, !dbg !544
  store i32 %142, ptr %14, align 4, !dbg !544
  %143 = load i32, ptr %22, align 4, !dbg !545
  %144 = load i32, ptr %16, align 4, !dbg !546
  %145 = icmp ule i32 %143, %144, !dbg !547
  br i1 %145, label %146, label %147, !dbg !545

146:                                              ; preds = %137
  br label %159, !dbg !545

147:                                              ; preds = %137
  %148 = load i32, ptr %22, align 4, !dbg !548
  %149 = load i32, ptr %16, align 4, !dbg !549
  %150 = add i32 %149, 26, !dbg !550
  %151 = icmp uge i32 %148, %150, !dbg !551
  br i1 %151, label %152, label %153, !dbg !548

152:                                              ; preds = %147
  br label %157, !dbg !548

153:                                              ; preds = %147
  %154 = load i32, ptr %22, align 4, !dbg !552
  %155 = load i32, ptr %16, align 4, !dbg !553
  %156 = sub i32 %154, %155, !dbg !554
  br label %157, !dbg !548

157:                                              ; preds = %153, %152
  %158 = phi i32 [ 26, %152 ], [ %156, %153 ], !dbg !548
  br label %159, !dbg !545

159:                                              ; preds = %157, %146
  %160 = phi i32 [ 1, %146 ], [ %158, %157 ], !dbg !545
  store i32 %160, ptr %24, align 4, !dbg !555
  %161 = load i32, ptr %23, align 4, !dbg !556
  %162 = load i32, ptr %24, align 4, !dbg !558
  %163 = icmp ult i32 %161, %162, !dbg !559
  br i1 %163, label %164, label %165, !dbg !560

164:                                              ; preds = %159
  br label %180, !dbg !561

165:                                              ; preds = %159
  %166 = load i32, ptr %21, align 4, !dbg !562
  %167 = load i32, ptr %24, align 4, !dbg !564
  %168 = sub i32 36, %167, !dbg !565
  %169 = udiv i32 -1, %168, !dbg !566
  %170 = icmp ugt i32 %166, %169, !dbg !567
  br i1 %170, label %171, label %172, !dbg !568

171:                                              ; preds = %165
  store i32 3, ptr %6, align 4, !dbg !569
  br label %272, !dbg !569

172:                                              ; preds = %165
  %173 = load i32, ptr %24, align 4, !dbg !570
  %174 = sub i32 36, %173, !dbg !571
  %175 = load i32, ptr %21, align 4, !dbg !572
  %176 = mul i32 %175, %174, !dbg !572
  store i32 %176, ptr %21, align 4, !dbg !572
  br label %177, !dbg !573

177:                                              ; preds = %172
  %178 = load i32, ptr %22, align 4, !dbg !574
  %179 = add i32 %178, 36, !dbg !574
  store i32 %179, ptr %22, align 4, !dbg !574
  br label %112, !dbg !575, !llvm.loop !576

180:                                              ; preds = %164
  %181 = load i32, ptr %14, align 4, !dbg !579
  %182 = load i32, ptr %20, align 4, !dbg !580
  %183 = sub i32 %181, %182, !dbg !581
  %184 = load i32, ptr %13, align 4, !dbg !582
  %185 = add i32 %184, 1, !dbg !583
  %186 = load i32, ptr %20, align 4, !dbg !584
  %187 = icmp eq i32 %186, 0, !dbg !585
  %188 = zext i1 %187 to i32, !dbg !585
  %189 = call i32 @adapt(i32 noundef %183, i32 noundef %185, i32 noundef %188), !dbg !586
  store i32 %189, ptr %16, align 4, !dbg !587
  %190 = load i32, ptr %14, align 4, !dbg !588
  %191 = load i32, ptr %13, align 4, !dbg !590
  %192 = add i32 %191, 1, !dbg !591
  %193 = udiv i32 %190, %192, !dbg !592
  %194 = load i32, ptr %12, align 4, !dbg !593
  %195 = sub i32 -1, %194, !dbg !594
  %196 = icmp ugt i32 %193, %195, !dbg !595
  br i1 %196, label %197, label %198, !dbg !596

197:                                              ; preds = %180
  store i32 3, ptr %6, align 4, !dbg !597
  br label %272, !dbg !597

198:                                              ; preds = %180
  %199 = load i32, ptr %14, align 4, !dbg !598
  %200 = load i32, ptr %13, align 4, !dbg !599
  %201 = add i32 %200, 1, !dbg !600
  %202 = udiv i32 %199, %201, !dbg !601
  %203 = load i32, ptr %12, align 4, !dbg !602
  %204 = add i32 %203, %202, !dbg !602
  store i32 %204, ptr %12, align 4, !dbg !602
  %205 = load i32, ptr %13, align 4, !dbg !603
  %206 = add i32 %205, 1, !dbg !604
  %207 = load i32, ptr %14, align 4, !dbg !605
  %208 = urem i32 %207, %206, !dbg !605
  store i32 %208, ptr %14, align 4, !dbg !605
  %209 = load i32, ptr %13, align 4, !dbg !606
  %210 = load i32, ptr %15, align 4, !dbg !608
  %211 = icmp uge i32 %209, %210, !dbg !609
  br i1 %211, label %212, label %213, !dbg !610

212:                                              ; preds = %198
  store i32 2, ptr %6, align 4, !dbg !611
  br label %272, !dbg !611

213:                                              ; preds = %198
  %214 = load ptr, ptr %11, align 8, !dbg !612
  %215 = icmp ne ptr %214, null, !dbg !612
  br i1 %215, label %216, label %245, !dbg !614

216:                                              ; preds = %213
  %217 = load ptr, ptr %11, align 8, !dbg !615
  %218 = load i32, ptr %14, align 4, !dbg !617
  %219 = zext i32 %218 to i64, !dbg !618
  %220 = getelementptr inbounds i8, ptr %217, i64 %219, !dbg !618
  %221 = getelementptr inbounds i8, ptr %220, i64 1, !dbg !619
  %222 = load ptr, ptr %11, align 8, !dbg !620
  %223 = load i32, ptr %14, align 4, !dbg !621
  %224 = zext i32 %223 to i64, !dbg !622
  %225 = getelementptr inbounds i8, ptr %222, i64 %224, !dbg !622
  %226 = load i32, ptr %13, align 4, !dbg !623
  %227 = load i32, ptr %14, align 4, !dbg !624
  %228 = sub i32 %226, %227, !dbg !625
  %229 = zext i32 %228 to i64, !dbg !623
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %221, ptr align 1 %225, i64 %229, i1 false), !dbg !626
  %230 = load ptr, ptr %8, align 8, !dbg !627
  %231 = load i32, ptr %19, align 4, !dbg !627
  %232 = sub i32 %231, 1, !dbg !627
  %233 = zext i32 %232 to i64, !dbg !627
  %234 = getelementptr inbounds i8, ptr %230, i64 %233, !dbg !627
  %235 = load i8, ptr %234, align 1, !dbg !627
  %236 = sext i8 %235 to i32, !dbg !627
  %237 = sub i32 %236, 65, !dbg !627
  %238 = icmp ult i32 %237, 26, !dbg !627
  %239 = zext i1 %238 to i32, !dbg !627
  %240 = trunc i32 %239 to i8, !dbg !627
  %241 = load ptr, ptr %11, align 8, !dbg !628
  %242 = load i32, ptr %14, align 4, !dbg !629
  %243 = zext i32 %242 to i64, !dbg !628
  %244 = getelementptr inbounds i8, ptr %241, i64 %243, !dbg !628
  store i8 %240, ptr %244, align 1, !dbg !630
  br label %245, !dbg !631

245:                                              ; preds = %216, %213
  %246 = load ptr, ptr %10, align 8, !dbg !632
  %247 = load i32, ptr %14, align 4, !dbg !633
  %248 = zext i32 %247 to i64, !dbg !634
  %249 = getelementptr inbounds i32, ptr %246, i64 %248, !dbg !634
  %250 = getelementptr inbounds i32, ptr %249, i64 1, !dbg !635
  %251 = load ptr, ptr %10, align 8, !dbg !636
  %252 = load i32, ptr %14, align 4, !dbg !637
  %253 = zext i32 %252 to i64, !dbg !638
  %254 = getelementptr inbounds i32, ptr %251, i64 %253, !dbg !638
  %255 = load i32, ptr %13, align 4, !dbg !639
  %256 = load i32, ptr %14, align 4, !dbg !640
  %257 = sub i32 %255, %256, !dbg !641
  %258 = zext i32 %257 to i64, !dbg !642
  %259 = mul i64 %258, 4, !dbg !643
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %250, ptr align 4 %254, i64 %259, i1 false), !dbg !644
  %260 = load i32, ptr %12, align 4, !dbg !645
  %261 = load ptr, ptr %10, align 8, !dbg !646
  %262 = load i32, ptr %14, align 4, !dbg !647
  %263 = add i32 %262, 1, !dbg !647
  store i32 %263, ptr %14, align 4, !dbg !647
  %264 = zext i32 %262 to i64, !dbg !646
  %265 = getelementptr inbounds i32, ptr %261, i64 %264, !dbg !646
  store i32 %260, ptr %265, align 4, !dbg !648
  br label %266, !dbg !649

266:                                              ; preds = %245
  %267 = load i32, ptr %13, align 4, !dbg !650
  %268 = add i32 %267, 1, !dbg !650
  store i32 %268, ptr %13, align 4, !dbg !650
  br label %106, !dbg !651, !llvm.loop !652

269:                                              ; preds = %106
  %270 = load i32, ptr %13, align 4, !dbg !654
  %271 = load ptr, ptr %9, align 8, !dbg !655
  store i32 %270, ptr %271, align 4, !dbg !656
  store i32 0, ptr %6, align 4, !dbg !657
  br label %272, !dbg !657

272:                                              ; preds = %269, %212, %197, %171, %136, %128, %116, %81, %49
  %273 = load i32, ptr %6, align 4, !dbg !658
  ret i32 %273, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_digit(i32 noundef %0) #0 !dbg !659 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !662, metadata !DIExpression()), !dbg !663
  %3 = load i32, ptr %2, align 4, !dbg !664
  %4 = sub i32 %3, 48, !dbg !665
  %5 = icmp ult i32 %4, 10, !dbg !666
  br i1 %5, label %6, label %9, !dbg !664

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 4, !dbg !667
  %8 = sub i32 %7, 22, !dbg !668
  br label %28, !dbg !664

9:                                                ; preds = %1
  %10 = load i32, ptr %2, align 4, !dbg !669
  %11 = sub i32 %10, 65, !dbg !670
  %12 = icmp ult i32 %11, 26, !dbg !671
  br i1 %12, label %13, label %16, !dbg !669

13:                                               ; preds = %9
  %14 = load i32, ptr %2, align 4, !dbg !672
  %15 = sub i32 %14, 65, !dbg !673
  br label %26, !dbg !669

16:                                               ; preds = %9
  %17 = load i32, ptr %2, align 4, !dbg !674
  %18 = sub i32 %17, 97, !dbg !675
  %19 = icmp ult i32 %18, 26, !dbg !676
  br i1 %19, label %20, label %23, !dbg !674

20:                                               ; preds = %16
  %21 = load i32, ptr %2, align 4, !dbg !677
  %22 = sub i32 %21, 97, !dbg !678
  br label %24, !dbg !674

23:                                               ; preds = %16
  br label %24, !dbg !674

24:                                               ; preds = %23, %20
  %25 = phi i32 [ %22, %20 ], [ 36, %23 ], !dbg !674
  br label %26, !dbg !669

26:                                               ; preds = %24, %13
  %27 = phi i32 [ %15, %13 ], [ %25, %24 ], !dbg !669
  br label %28, !dbg !664

28:                                               ; preds = %26, %6
  %29 = phi i32 [ %8, %6 ], [ %27, %26 ], !dbg !664
  ret i32 %29, !dbg !679
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21, globals: !23, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/punycode.c", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "e91151f6836812d3eddd8628b63e72d6")
!2 = !{!3, !11}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "punycode_status", file: !4, line: 19, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./src/punycode.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "587870545af07ed61e8b02a4c5b872c0")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "punycode_success", value: 0)
!8 = !DIEnumerator(name: "punycode_bad_input", value: 1)
!9 = !DIEnumerator(name: "punycode_big_output", value: 2)
!10 = !DIEnumerator(name: "punycode_overflow", value: 3)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 20, baseType: !5, size: 32, elements: !12)
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20}
!13 = !DIEnumerator(name: "base", value: 36)
!14 = !DIEnumerator(name: "tmin", value: 1)
!15 = !DIEnumerator(name: "tmax", value: 26)
!16 = !DIEnumerator(name: "skew", value: 38)
!17 = !DIEnumerator(name: "damp", value: 700)
!18 = !DIEnumerator(name: "initial_bias", value: 72)
!19 = !DIEnumerator(name: "initial_n", value: 128)
!20 = !DIEnumerator(name: "delimiter", value: 45)
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "punycode_uint", file: !4, line: 27, baseType: !5)
!23 = !{!24}
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 4294967295, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "maxint", scope: !0, file: !1, line: 71, type: !26, isLocal: true, isDefinition: true)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 16.0.0"}
!35 = distinct !DISubprogram(name: "punycode_encode", scope: !1, file: !1, line: 94, type: !36, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !45)
!36 = !DISubroutineType(types: !37)
!37 = !{!3, !22, !38, !39, !42, !43}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !{}
!46 = !DILocalVariable(name: "input_length", arg: 1, scope: !35, file: !1, line: 94, type: !22)
!47 = !DILocation(line: 94, column: 52, scope: !35)
!48 = !DILocalVariable(name: "input", arg: 2, scope: !35, file: !1, line: 95, type: !38)
!49 = !DILocation(line: 95, column: 58, scope: !35)
!50 = !DILocalVariable(name: "case_flags", arg: 3, scope: !35, file: !1, line: 96, type: !39)
!51 = !DILocation(line: 96, column: 58, scope: !35)
!52 = !DILocalVariable(name: "output_length", arg: 4, scope: !35, file: !1, line: 97, type: !42)
!53 = !DILocation(line: 97, column: 54, scope: !35)
!54 = !DILocalVariable(name: "output", arg: 5, scope: !35, file: !1, line: 98, type: !43)
!55 = !DILocation(line: 98, column: 43, scope: !35)
!56 = !DILocalVariable(name: "n", scope: !35, file: !1, line: 99, type: !22)
!57 = !DILocation(line: 99, column: 17, scope: !35)
!58 = !DILocalVariable(name: "delta", scope: !35, file: !1, line: 99, type: !22)
!59 = !DILocation(line: 99, column: 20, scope: !35)
!60 = !DILocalVariable(name: "h", scope: !35, file: !1, line: 99, type: !22)
!61 = !DILocation(line: 99, column: 27, scope: !35)
!62 = !DILocalVariable(name: "b", scope: !35, file: !1, line: 99, type: !22)
!63 = !DILocation(line: 99, column: 30, scope: !35)
!64 = !DILocalVariable(name: "out", scope: !35, file: !1, line: 99, type: !22)
!65 = !DILocation(line: 99, column: 33, scope: !35)
!66 = !DILocalVariable(name: "max_out", scope: !35, file: !1, line: 99, type: !22)
!67 = !DILocation(line: 99, column: 38, scope: !35)
!68 = !DILocalVariable(name: "bias", scope: !35, file: !1, line: 99, type: !22)
!69 = !DILocation(line: 99, column: 47, scope: !35)
!70 = !DILocalVariable(name: "j", scope: !35, file: !1, line: 99, type: !22)
!71 = !DILocation(line: 99, column: 53, scope: !35)
!72 = !DILocalVariable(name: "m", scope: !35, file: !1, line: 99, type: !22)
!73 = !DILocation(line: 99, column: 56, scope: !35)
!74 = !DILocalVariable(name: "q", scope: !35, file: !1, line: 99, type: !22)
!75 = !DILocation(line: 99, column: 59, scope: !35)
!76 = !DILocalVariable(name: "k", scope: !35, file: !1, line: 99, type: !22)
!77 = !DILocation(line: 99, column: 62, scope: !35)
!78 = !DILocalVariable(name: "t", scope: !35, file: !1, line: 99, type: !22)
!79 = !DILocation(line: 99, column: 65, scope: !35)
!80 = !DILocation(line: 103, column: 5, scope: !35)
!81 = !DILocation(line: 104, column: 15, scope: !35)
!82 = !DILocation(line: 104, column: 9, scope: !35)
!83 = !DILocation(line: 105, column: 14, scope: !35)
!84 = !DILocation(line: 105, column: 13, scope: !35)
!85 = !DILocation(line: 105, column: 11, scope: !35)
!86 = !DILocation(line: 106, column: 8, scope: !35)
!87 = !DILocation(line: 109, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !35, file: !1, line: 109, column: 3)
!89 = !DILocation(line: 109, column: 7, scope: !88)
!90 = !DILocation(line: 109, column: 14, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !1, line: 109, column: 3)
!92 = !DILocation(line: 109, column: 18, scope: !91)
!93 = !DILocation(line: 109, column: 16, scope: !91)
!94 = !DILocation(line: 109, column: 3, scope: !88)
!95 = !DILocation(line: 110, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 110, column: 9)
!97 = distinct !DILexicalBlock(scope: !91, file: !1, line: 109, column: 37)
!98 = !DILocation(line: 110, column: 9, scope: !97)
!99 = !DILocation(line: 111, column: 11, scope: !100)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 111, column: 11)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 110, column: 26)
!102 = !DILocation(line: 111, column: 21, scope: !100)
!103 = !DILocation(line: 111, column: 19, scope: !100)
!104 = !DILocation(line: 111, column: 25, scope: !100)
!105 = !DILocation(line: 111, column: 11, scope: !101)
!106 = !DILocation(line: 112, column: 9, scope: !100)
!107 = !DILocation(line: 114, column: 9, scope: !101)
!108 = !DILocation(line: 114, column: 35, scope: !101)
!109 = !DILocation(line: 114, column: 41, scope: !101)
!110 = !DILocation(line: 114, column: 45, scope: !101)
!111 = !DILocation(line: 114, column: 56, scope: !101)
!112 = !DILocation(line: 114, column: 22, scope: !101)
!113 = !DILocation(line: 114, column: 62, scope: !101)
!114 = !DILocation(line: 114, column: 68, scope: !101)
!115 = !DILocation(line: 113, column: 7, scope: !101)
!116 = !DILocation(line: 113, column: 17, scope: !101)
!117 = !DILocation(line: 113, column: 21, scope: !101)
!118 = !DILocation(line: 115, column: 5, scope: !101)
!119 = !DILocation(line: 118, column: 3, scope: !97)
!120 = !DILocation(line: 109, column: 32, scope: !91)
!121 = !DILocation(line: 109, column: 3, scope: !91)
!122 = distinct !{!122, !94, !123, !124}
!123 = !DILocation(line: 118, column: 3, scope: !88)
!124 = !{!"llvm.loop.mustprogress"}
!125 = !DILocation(line: 120, column: 11, scope: !35)
!126 = !DILocation(line: 120, column: 9, scope: !35)
!127 = !DILocation(line: 120, column: 5, scope: !35)
!128 = !DILocation(line: 126, column: 7, scope: !129)
!129 = distinct !DILexicalBlock(scope: !35, file: !1, line: 126, column: 7)
!130 = !DILocation(line: 126, column: 9, scope: !129)
!131 = !DILocation(line: 126, column: 7, scope: !35)
!132 = !DILocation(line: 127, column: 5, scope: !129)
!133 = !DILocation(line: 127, column: 15, scope: !129)
!134 = !DILocation(line: 127, column: 19, scope: !129)
!135 = !DILocation(line: 131, column: 3, scope: !35)
!136 = !DILocation(line: 131, column: 9, scope: !35)
!137 = !DILocation(line: 131, column: 13, scope: !35)
!138 = !DILocation(line: 131, column: 11, scope: !35)
!139 = !DILocation(line: 135, column: 11, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !1, line: 135, column: 5)
!141 = distinct !DILexicalBlock(scope: !35, file: !1, line: 131, column: 27)
!142 = !DILocation(line: 135, column: 23, scope: !140)
!143 = !DILocation(line: 135, column: 9, scope: !140)
!144 = !DILocation(line: 135, column: 28, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !1, line: 135, column: 5)
!146 = !DILocation(line: 135, column: 32, scope: !145)
!147 = !DILocation(line: 135, column: 30, scope: !145)
!148 = !DILocation(line: 135, column: 5, scope: !140)
!149 = !DILocation(line: 138, column: 11, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !1, line: 138, column: 11)
!151 = distinct !DILexicalBlock(scope: !145, file: !1, line: 135, column: 51)
!152 = !DILocation(line: 138, column: 17, scope: !150)
!153 = !DILocation(line: 138, column: 23, scope: !150)
!154 = !DILocation(line: 138, column: 20, scope: !150)
!155 = !DILocation(line: 138, column: 25, scope: !150)
!156 = !DILocation(line: 138, column: 28, scope: !150)
!157 = !DILocation(line: 138, column: 34, scope: !150)
!158 = !DILocation(line: 138, column: 39, scope: !150)
!159 = !DILocation(line: 138, column: 37, scope: !150)
!160 = !DILocation(line: 138, column: 11, scope: !151)
!161 = !DILocation(line: 139, column: 13, scope: !150)
!162 = !DILocation(line: 139, column: 19, scope: !150)
!163 = !DILocation(line: 139, column: 11, scope: !150)
!164 = !DILocation(line: 139, column: 9, scope: !150)
!165 = !DILocation(line: 140, column: 5, scope: !151)
!166 = !DILocation(line: 135, column: 46, scope: !145)
!167 = !DILocation(line: 135, column: 5, scope: !145)
!168 = distinct !{!168, !148, !169, !124}
!169 = !DILocation(line: 140, column: 5, scope: !140)
!170 = !DILocation(line: 145, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !141, file: !1, line: 145, column: 9)
!172 = !DILocation(line: 145, column: 13, scope: !171)
!173 = !DILocation(line: 145, column: 11, scope: !171)
!174 = !DILocation(line: 145, column: 27, scope: !171)
!175 = !DILocation(line: 145, column: 25, scope: !171)
!176 = !DILocation(line: 145, column: 37, scope: !171)
!177 = !DILocation(line: 145, column: 39, scope: !171)
!178 = !DILocation(line: 145, column: 34, scope: !171)
!179 = !DILocation(line: 145, column: 15, scope: !171)
!180 = !DILocation(line: 145, column: 9, scope: !141)
!181 = !DILocation(line: 146, column: 7, scope: !171)
!182 = !DILocation(line: 147, column: 15, scope: !141)
!183 = !DILocation(line: 147, column: 19, scope: !141)
!184 = !DILocation(line: 147, column: 17, scope: !141)
!185 = !DILocation(line: 147, column: 25, scope: !141)
!186 = !DILocation(line: 147, column: 27, scope: !141)
!187 = !DILocation(line: 147, column: 22, scope: !141)
!188 = !DILocation(line: 147, column: 11, scope: !141)
!189 = !DILocation(line: 148, column: 9, scope: !141)
!190 = !DILocation(line: 148, column: 7, scope: !141)
!191 = !DILocation(line: 150, column: 11, scope: !192)
!192 = distinct !DILexicalBlock(scope: !141, file: !1, line: 150, column: 5)
!193 = !DILocation(line: 150, column: 9, scope: !192)
!194 = !DILocation(line: 150, column: 16, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !1, line: 150, column: 5)
!196 = !DILocation(line: 150, column: 20, scope: !195)
!197 = !DILocation(line: 150, column: 18, scope: !195)
!198 = !DILocation(line: 150, column: 5, scope: !192)
!199 = !DILocation(line: 152, column: 11, scope: !200)
!200 = distinct !DILexicalBlock(scope: !201, file: !1, line: 152, column: 11)
!201 = distinct !DILexicalBlock(scope: !195, file: !1, line: 150, column: 39)
!202 = !DILocation(line: 152, column: 17, scope: !200)
!203 = !DILocation(line: 152, column: 22, scope: !200)
!204 = !DILocation(line: 152, column: 20, scope: !200)
!205 = !DILocation(line: 152, column: 11, scope: !201)
!206 = !DILocation(line: 153, column: 13, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 153, column: 13)
!208 = distinct !DILexicalBlock(scope: !200, file: !1, line: 152, column: 51)
!209 = !DILocation(line: 153, column: 21, scope: !207)
!210 = !DILocation(line: 153, column: 13, scope: !208)
!211 = !DILocation(line: 154, column: 11, scope: !207)
!212 = !DILocation(line: 155, column: 7, scope: !208)
!213 = !DILocation(line: 157, column: 11, scope: !214)
!214 = distinct !DILexicalBlock(scope: !201, file: !1, line: 157, column: 11)
!215 = !DILocation(line: 157, column: 17, scope: !214)
!216 = !DILocation(line: 157, column: 23, scope: !214)
!217 = !DILocation(line: 157, column: 20, scope: !214)
!218 = !DILocation(line: 157, column: 11, scope: !201)
!219 = !DILocation(line: 160, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !1, line: 160, column: 9)
!221 = distinct !DILexicalBlock(scope: !214, file: !1, line: 157, column: 26)
!222 = !DILocation(line: 160, column: 15, scope: !220)
!223 = !DILocation(line: 160, column: 26, scope: !220)
!224 = !DILocation(line: 160, column: 13, scope: !220)
!225 = !DILocation(line: 161, column: 15, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 161, column: 15)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 160, column: 46)
!228 = distinct !DILexicalBlock(scope: !220, file: !1, line: 160, column: 9)
!229 = !DILocation(line: 161, column: 22, scope: !226)
!230 = !DILocation(line: 161, column: 19, scope: !226)
!231 = !DILocation(line: 161, column: 15, scope: !227)
!232 = !DILocation(line: 162, column: 13, scope: !226)
!233 = !DILocation(line: 163, column: 15, scope: !227)
!234 = !DILocation(line: 163, column: 20, scope: !227)
!235 = !DILocation(line: 163, column: 17, scope: !227)
!236 = !DILocation(line: 164, column: 13, scope: !227)
!237 = !DILocation(line: 164, column: 18, scope: !227)
!238 = !DILocation(line: 164, column: 23, scope: !227)
!239 = !DILocation(line: 164, column: 15, scope: !227)
!240 = !DILocation(line: 164, column: 39, scope: !227)
!241 = !DILocation(line: 164, column: 43, scope: !227)
!242 = !DILocation(line: 164, column: 41, scope: !227)
!243 = !DILocation(line: 163, column: 13, scope: !227)
!244 = !DILocation(line: 165, column: 15, scope: !245)
!245 = distinct !DILexicalBlock(scope: !227, file: !1, line: 165, column: 15)
!246 = !DILocation(line: 165, column: 19, scope: !245)
!247 = !DILocation(line: 165, column: 17, scope: !245)
!248 = !DILocation(line: 165, column: 15, scope: !227)
!249 = !DILocation(line: 166, column: 13, scope: !245)
!250 = !DILocation(line: 167, column: 40, scope: !227)
!251 = !DILocation(line: 167, column: 45, scope: !227)
!252 = !DILocation(line: 167, column: 49, scope: !227)
!253 = !DILocation(line: 167, column: 47, scope: !227)
!254 = !DILocation(line: 167, column: 62, scope: !227)
!255 = !DILocation(line: 167, column: 60, scope: !227)
!256 = !DILocation(line: 167, column: 52, scope: !227)
!257 = !DILocation(line: 167, column: 42, scope: !227)
!258 = !DILocation(line: 167, column: 27, scope: !227)
!259 = !DILocation(line: 167, column: 11, scope: !227)
!260 = !DILocation(line: 167, column: 21, scope: !227)
!261 = !DILocation(line: 167, column: 25, scope: !227)
!262 = !DILocation(line: 168, column: 16, scope: !227)
!263 = !DILocation(line: 168, column: 20, scope: !227)
!264 = !DILocation(line: 168, column: 18, scope: !227)
!265 = !DILocation(line: 168, column: 33, scope: !227)
!266 = !DILocation(line: 168, column: 31, scope: !227)
!267 = !DILocation(line: 168, column: 23, scope: !227)
!268 = !DILocation(line: 168, column: 13, scope: !227)
!269 = !DILocation(line: 169, column: 9, scope: !227)
!270 = !DILocation(line: 160, column: 37, scope: !228)
!271 = !DILocation(line: 160, column: 9, scope: !228)
!272 = distinct !{!272, !273, !274}
!273 = !DILocation(line: 160, column: 9, scope: !220)
!274 = !DILocation(line: 169, column: 9, scope: !220)
!275 = !DILocation(line: 171, column: 38, scope: !221)
!276 = !DILocation(line: 171, column: 41, scope: !221)
!277 = !DILocation(line: 171, column: 52, scope: !221)
!278 = !DILocation(line: 171, column: 55, scope: !221)
!279 = !DILocation(line: 171, column: 66, scope: !221)
!280 = !DILocation(line: 0, scope: !221)
!281 = !DILocation(line: 171, column: 25, scope: !221)
!282 = !DILocation(line: 171, column: 9, scope: !221)
!283 = !DILocation(line: 171, column: 19, scope: !221)
!284 = !DILocation(line: 171, column: 23, scope: !221)
!285 = !DILocation(line: 172, column: 22, scope: !221)
!286 = !DILocation(line: 172, column: 29, scope: !221)
!287 = !DILocation(line: 172, column: 31, scope: !221)
!288 = !DILocation(line: 172, column: 36, scope: !221)
!289 = !DILocation(line: 172, column: 41, scope: !221)
!290 = !DILocation(line: 172, column: 38, scope: !221)
!291 = !DILocation(line: 172, column: 16, scope: !221)
!292 = !DILocation(line: 172, column: 14, scope: !221)
!293 = !DILocation(line: 173, column: 15, scope: !221)
!294 = !DILocation(line: 174, column: 9, scope: !221)
!295 = !DILocation(line: 175, column: 7, scope: !221)
!296 = !DILocation(line: 176, column: 5, scope: !201)
!297 = !DILocation(line: 150, column: 34, scope: !195)
!298 = !DILocation(line: 150, column: 5, scope: !195)
!299 = distinct !{!299, !198, !300, !124}
!300 = !DILocation(line: 176, column: 5, scope: !192)
!301 = !DILocation(line: 178, column: 5, scope: !141)
!302 = !DILocation(line: 178, column: 14, scope: !141)
!303 = distinct !{!303, !135, !304, !124}
!304 = !DILocation(line: 179, column: 3, scope: !35)
!305 = !DILocation(line: 181, column: 20, scope: !35)
!306 = !DILocation(line: 181, column: 4, scope: !35)
!307 = !DILocation(line: 181, column: 18, scope: !35)
!308 = !DILocation(line: 182, column: 3, scope: !35)
!309 = !DILocation(line: 183, column: 1, scope: !35)
!310 = distinct !DISubprogram(name: "encode_basic", scope: !1, file: !1, line: 63, type: !311, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !45)
!311 = !DISubroutineType(types: !312)
!312 = !{!44, !22, !313}
!313 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!314 = !DILocalVariable(name: "bcp", arg: 1, scope: !310, file: !1, line: 63, type: !22)
!315 = !DILocation(line: 63, column: 40, scope: !310)
!316 = !DILocalVariable(name: "flag", arg: 2, scope: !310, file: !1, line: 63, type: !313)
!317 = !DILocation(line: 63, column: 49, scope: !310)
!318 = !DILocation(line: 64, column: 11, scope: !310)
!319 = !DILocation(line: 64, column: 15, scope: !310)
!320 = !DILocation(line: 64, column: 20, scope: !310)
!321 = !DILocation(line: 64, column: 26, scope: !310)
!322 = !DILocation(line: 64, column: 7, scope: !310)
!323 = !DILocation(line: 65, column: 10, scope: !310)
!324 = !DILocation(line: 65, column: 19, scope: !310)
!325 = !DILocation(line: 65, column: 24, scope: !310)
!326 = !DILocation(line: 65, column: 28, scope: !310)
!327 = !DILocation(line: 65, column: 32, scope: !310)
!328 = !DILocation(line: 65, column: 37, scope: !310)
!329 = !DILocation(line: 0, scope: !310)
!330 = !DILocation(line: 65, column: 44, scope: !310)
!331 = !DILocation(line: 65, column: 14, scope: !310)
!332 = !DILocation(line: 65, column: 3, scope: !310)
!333 = distinct !DISubprogram(name: "encode_digit", scope: !1, file: !1, line: 45, type: !311, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !45)
!334 = !DILocalVariable(name: "d", arg: 1, scope: !333, file: !1, line: 45, type: !22)
!335 = !DILocation(line: 45, column: 40, scope: !333)
!336 = !DILocalVariable(name: "flag", arg: 2, scope: !333, file: !1, line: 45, type: !313)
!337 = !DILocation(line: 45, column: 47, scope: !333)
!338 = !DILocation(line: 46, column: 10, scope: !333)
!339 = !DILocation(line: 46, column: 12, scope: !333)
!340 = !DILocation(line: 46, column: 25, scope: !333)
!341 = !DILocation(line: 46, column: 27, scope: !333)
!342 = !DILocation(line: 46, column: 22, scope: !333)
!343 = !DILocation(line: 46, column: 17, scope: !333)
!344 = !DILocation(line: 46, column: 37, scope: !333)
!345 = !DILocation(line: 46, column: 42, scope: !333)
!346 = !DILocation(line: 46, column: 48, scope: !333)
!347 = !DILocation(line: 46, column: 33, scope: !333)
!348 = !DILocation(line: 46, column: 3, scope: !333)
!349 = distinct !DISubprogram(name: "adapt", scope: !1, file: !1, line: 77, type: !350, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !45)
!350 = !DISubroutineType(types: !351)
!351 = !{!22, !22, !22, !313}
!352 = !DILocalVariable(name: "delta", arg: 1, scope: !349, file: !1, line: 77, type: !22)
!353 = !DILocation(line: 77, column: 42, scope: !349)
!354 = !DILocalVariable(name: "numpoints", arg: 2, scope: !349, file: !1, line: 77, type: !22)
!355 = !DILocation(line: 77, column: 63, scope: !349)
!356 = !DILocalVariable(name: "firsttime", arg: 3, scope: !349, file: !1, line: 78, type: !313)
!357 = !DILocation(line: 78, column: 32, scope: !349)
!358 = !DILocalVariable(name: "k", scope: !349, file: !1, line: 79, type: !22)
!359 = !DILocation(line: 79, column: 17, scope: !349)
!360 = !DILocation(line: 81, column: 11, scope: !349)
!361 = !DILocation(line: 81, column: 23, scope: !349)
!362 = !DILocation(line: 81, column: 29, scope: !349)
!363 = !DILocation(line: 81, column: 38, scope: !349)
!364 = !DILocation(line: 81, column: 44, scope: !349)
!365 = !DILocation(line: 81, column: 9, scope: !349)
!366 = !DILocation(line: 83, column: 12, scope: !349)
!367 = !DILocation(line: 83, column: 20, scope: !349)
!368 = !DILocation(line: 83, column: 18, scope: !349)
!369 = !DILocation(line: 83, column: 9, scope: !349)
!370 = !DILocation(line: 85, column: 9, scope: !371)
!371 = distinct !DILexicalBlock(scope: !349, file: !1, line: 85, column: 3)
!372 = !DILocation(line: 85, column: 7, scope: !371)
!373 = !DILocation(line: 85, column: 14, scope: !374)
!374 = distinct !DILexicalBlock(scope: !371, file: !1, line: 85, column: 3)
!375 = !DILocation(line: 85, column: 20, scope: !374)
!376 = !DILocation(line: 85, column: 3, scope: !371)
!377 = !DILocation(line: 86, column: 11, scope: !378)
!378 = distinct !DILexicalBlock(scope: !374, file: !1, line: 85, column: 61)
!379 = !DILocation(line: 87, column: 3, scope: !378)
!380 = !DILocation(line: 85, column: 52, scope: !374)
!381 = !DILocation(line: 85, column: 3, scope: !374)
!382 = distinct !{!382, !376, !383, !124}
!383 = !DILocation(line: 87, column: 3, scope: !371)
!384 = !DILocation(line: 89, column: 10, scope: !349)
!385 = !DILocation(line: 89, column: 34, scope: !349)
!386 = !DILocation(line: 89, column: 32, scope: !349)
!387 = !DILocation(line: 89, column: 43, scope: !349)
!388 = !DILocation(line: 89, column: 49, scope: !349)
!389 = !DILocation(line: 89, column: 40, scope: !349)
!390 = !DILocation(line: 89, column: 12, scope: !349)
!391 = !DILocation(line: 89, column: 3, scope: !349)
!392 = distinct !DISubprogram(name: "punycode_decode", scope: !1, file: !1, line: 187, type: !393, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !45)
!393 = !DISubroutineType(types: !394)
!394 = !{!3, !22, !395, !42, !42, !397}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!398 = !DILocalVariable(name: "input_length", arg: 1, scope: !392, file: !1, line: 187, type: !22)
!399 = !DILocation(line: 187, column: 52, scope: !392)
!400 = !DILocalVariable(name: "input", arg: 2, scope: !392, file: !1, line: 188, type: !395)
!401 = !DILocation(line: 188, column: 49, scope: !392)
!402 = !DILocalVariable(name: "output_length", arg: 3, scope: !392, file: !1, line: 189, type: !42)
!403 = !DILocation(line: 189, column: 54, scope: !392)
!404 = !DILocalVariable(name: "output", arg: 4, scope: !392, file: !1, line: 190, type: !42)
!405 = !DILocation(line: 190, column: 52, scope: !392)
!406 = !DILocalVariable(name: "case_flags", arg: 5, scope: !392, file: !1, line: 191, type: !397)
!407 = !DILocation(line: 191, column: 52, scope: !392)
!408 = !DILocalVariable(name: "n", scope: !392, file: !1, line: 192, type: !22)
!409 = !DILocation(line: 192, column: 17, scope: !392)
!410 = !DILocalVariable(name: "out", scope: !392, file: !1, line: 192, type: !22)
!411 = !DILocation(line: 192, column: 20, scope: !392)
!412 = !DILocalVariable(name: "i", scope: !392, file: !1, line: 192, type: !22)
!413 = !DILocation(line: 192, column: 25, scope: !392)
!414 = !DILocalVariable(name: "max_out", scope: !392, file: !1, line: 192, type: !22)
!415 = !DILocation(line: 192, column: 28, scope: !392)
!416 = !DILocalVariable(name: "bias", scope: !392, file: !1, line: 192, type: !22)
!417 = !DILocation(line: 192, column: 37, scope: !392)
!418 = !DILocalVariable(name: "b", scope: !392, file: !1, line: 192, type: !22)
!419 = !DILocation(line: 192, column: 43, scope: !392)
!420 = !DILocalVariable(name: "j", scope: !392, file: !1, line: 192, type: !22)
!421 = !DILocation(line: 192, column: 46, scope: !392)
!422 = !DILocalVariable(name: "in", scope: !392, file: !1, line: 192, type: !22)
!423 = !DILocation(line: 192, column: 49, scope: !392)
!424 = !DILocalVariable(name: "oldi", scope: !392, file: !1, line: 192, type: !22)
!425 = !DILocation(line: 192, column: 53, scope: !392)
!426 = !DILocalVariable(name: "w", scope: !392, file: !1, line: 192, type: !22)
!427 = !DILocation(line: 192, column: 59, scope: !392)
!428 = !DILocalVariable(name: "k", scope: !392, file: !1, line: 192, type: !22)
!429 = !DILocation(line: 192, column: 62, scope: !392)
!430 = !DILocalVariable(name: "digit", scope: !392, file: !1, line: 192, type: !22)
!431 = !DILocation(line: 192, column: 65, scope: !392)
!432 = !DILocalVariable(name: "t", scope: !392, file: !1, line: 192, type: !22)
!433 = !DILocation(line: 192, column: 72, scope: !392)
!434 = !DILocation(line: 196, column: 5, scope: !392)
!435 = !DILocation(line: 197, column: 11, scope: !392)
!436 = !DILocation(line: 197, column: 7, scope: !392)
!437 = !DILocation(line: 198, column: 14, scope: !392)
!438 = !DILocation(line: 198, column: 13, scope: !392)
!439 = !DILocation(line: 198, column: 11, scope: !392)
!440 = !DILocation(line: 199, column: 8, scope: !392)
!441 = !DILocation(line: 205, column: 13, scope: !442)
!442 = distinct !DILexicalBlock(scope: !392, file: !1, line: 205, column: 3)
!443 = !DILocation(line: 205, column: 9, scope: !442)
!444 = !DILocation(line: 205, column: 7, scope: !442)
!445 = !DILocation(line: 205, column: 18, scope: !446)
!446 = distinct !DILexicalBlock(scope: !442, file: !1, line: 205, column: 3)
!447 = !DILocation(line: 205, column: 22, scope: !446)
!448 = !DILocation(line: 205, column: 20, scope: !446)
!449 = !DILocation(line: 205, column: 3, scope: !442)
!450 = !DILocation(line: 206, column: 9, scope: !451)
!451 = distinct !DILexicalBlock(scope: !446, file: !1, line: 206, column: 9)
!452 = !DILocation(line: 206, column: 9, scope: !446)
!453 = !DILocation(line: 207, column: 11, scope: !451)
!454 = !DILocation(line: 207, column: 9, scope: !451)
!455 = !DILocation(line: 207, column: 7, scope: !451)
!456 = !DILocation(line: 205, column: 36, scope: !446)
!457 = !DILocation(line: 205, column: 3, scope: !446)
!458 = distinct !{!458, !449, !459, !124}
!459 = !DILocation(line: 207, column: 11, scope: !442)
!460 = !DILocation(line: 208, column: 7, scope: !461)
!461 = distinct !DILexicalBlock(scope: !392, file: !1, line: 208, column: 7)
!462 = !DILocation(line: 208, column: 11, scope: !461)
!463 = !DILocation(line: 208, column: 9, scope: !461)
!464 = !DILocation(line: 208, column: 7, scope: !392)
!465 = !DILocation(line: 209, column: 5, scope: !461)
!466 = !DILocation(line: 211, column: 9, scope: !467)
!467 = distinct !DILexicalBlock(scope: !392, file: !1, line: 211, column: 3)
!468 = !DILocation(line: 211, column: 7, scope: !467)
!469 = !DILocation(line: 211, column: 14, scope: !470)
!470 = distinct !DILexicalBlock(scope: !467, file: !1, line: 211, column: 3)
!471 = !DILocation(line: 211, column: 18, scope: !470)
!472 = !DILocation(line: 211, column: 16, scope: !470)
!473 = !DILocation(line: 211, column: 3, scope: !467)
!474 = !DILocation(line: 212, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !1, line: 212, column: 9)
!476 = distinct !DILexicalBlock(scope: !470, file: !1, line: 211, column: 26)
!477 = !DILocation(line: 212, column: 9, scope: !476)
!478 = !DILocation(line: 213, column: 25, scope: !475)
!479 = !DILocation(line: 213, column: 7, scope: !475)
!480 = !DILocation(line: 213, column: 18, scope: !475)
!481 = !DILocation(line: 213, column: 23, scope: !475)
!482 = !DILocation(line: 214, column: 10, scope: !483)
!483 = distinct !DILexicalBlock(scope: !476, file: !1, line: 214, column: 9)
!484 = !DILocation(line: 214, column: 9, scope: !476)
!485 = !DILocation(line: 215, column: 7, scope: !483)
!486 = !DILocation(line: 216, column: 21, scope: !476)
!487 = !DILocation(line: 216, column: 27, scope: !476)
!488 = !DILocation(line: 216, column: 5, scope: !476)
!489 = !DILocation(line: 216, column: 15, scope: !476)
!490 = !DILocation(line: 216, column: 19, scope: !476)
!491 = !DILocation(line: 217, column: 3, scope: !476)
!492 = !DILocation(line: 211, column: 21, scope: !470)
!493 = !DILocation(line: 211, column: 3, scope: !470)
!494 = distinct !{!494, !473, !495, !124}
!495 = !DILocation(line: 217, column: 3, scope: !467)
!496 = !DILocation(line: 222, column: 12, scope: !497)
!497 = distinct !DILexicalBlock(scope: !392, file: !1, line: 222, column: 3)
!498 = !DILocation(line: 222, column: 14, scope: !497)
!499 = !DILocation(line: 222, column: 20, scope: !497)
!500 = !DILocation(line: 222, column: 22, scope: !497)
!501 = !DILocation(line: 222, column: 10, scope: !497)
!502 = !DILocation(line: 222, column: 7, scope: !497)
!503 = !DILocation(line: 222, column: 31, scope: !504)
!504 = distinct !DILexicalBlock(scope: !497, file: !1, line: 222, column: 3)
!505 = !DILocation(line: 222, column: 36, scope: !504)
!506 = !DILocation(line: 222, column: 34, scope: !504)
!507 = !DILocation(line: 222, column: 3, scope: !497)
!508 = !DILocation(line: 232, column: 16, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !1, line: 232, column: 5)
!510 = distinct !DILexicalBlock(scope: !504, file: !1, line: 222, column: 57)
!511 = !DILocation(line: 232, column: 14, scope: !509)
!512 = !DILocation(line: 232, column: 21, scope: !509)
!513 = !DILocation(line: 232, column: 28, scope: !509)
!514 = !DILocation(line: 232, column: 9, scope: !509)
!515 = !DILocation(line: 233, column: 11, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !1, line: 233, column: 11)
!517 = distinct !DILexicalBlock(scope: !518, file: !1, line: 232, column: 48)
!518 = distinct !DILexicalBlock(scope: !509, file: !1, line: 232, column: 5)
!519 = !DILocation(line: 233, column: 17, scope: !516)
!520 = !DILocation(line: 233, column: 14, scope: !516)
!521 = !DILocation(line: 233, column: 11, scope: !517)
!522 = !DILocation(line: 234, column: 9, scope: !516)
!523 = !DILocation(line: 235, column: 28, scope: !517)
!524 = !DILocation(line: 235, column: 36, scope: !517)
!525 = !DILocation(line: 235, column: 15, scope: !517)
!526 = !DILocation(line: 235, column: 13, scope: !517)
!527 = !DILocation(line: 236, column: 11, scope: !528)
!528 = distinct !DILexicalBlock(scope: !517, file: !1, line: 236, column: 11)
!529 = !DILocation(line: 236, column: 17, scope: !528)
!530 = !DILocation(line: 236, column: 11, scope: !517)
!531 = !DILocation(line: 237, column: 9, scope: !528)
!532 = !DILocation(line: 238, column: 11, scope: !533)
!533 = distinct !DILexicalBlock(scope: !517, file: !1, line: 238, column: 11)
!534 = !DILocation(line: 238, column: 29, scope: !533)
!535 = !DILocation(line: 238, column: 27, scope: !533)
!536 = !DILocation(line: 238, column: 34, scope: !533)
!537 = !DILocation(line: 238, column: 32, scope: !533)
!538 = !DILocation(line: 238, column: 17, scope: !533)
!539 = !DILocation(line: 238, column: 11, scope: !517)
!540 = !DILocation(line: 239, column: 9, scope: !533)
!541 = !DILocation(line: 240, column: 12, scope: !517)
!542 = !DILocation(line: 240, column: 20, scope: !517)
!543 = !DILocation(line: 240, column: 18, scope: !517)
!544 = !DILocation(line: 240, column: 9, scope: !517)
!545 = !DILocation(line: 241, column: 11, scope: !517)
!546 = !DILocation(line: 241, column: 16, scope: !517)
!547 = !DILocation(line: 241, column: 13, scope: !517)
!548 = !DILocation(line: 242, column: 9, scope: !517)
!549 = !DILocation(line: 242, column: 14, scope: !517)
!550 = !DILocation(line: 242, column: 19, scope: !517)
!551 = !DILocation(line: 242, column: 11, scope: !517)
!552 = !DILocation(line: 242, column: 35, scope: !517)
!553 = !DILocation(line: 242, column: 39, scope: !517)
!554 = !DILocation(line: 242, column: 37, scope: !517)
!555 = !DILocation(line: 241, column: 9, scope: !517)
!556 = !DILocation(line: 243, column: 11, scope: !557)
!557 = distinct !DILexicalBlock(scope: !517, file: !1, line: 243, column: 11)
!558 = !DILocation(line: 243, column: 19, scope: !557)
!559 = !DILocation(line: 243, column: 17, scope: !557)
!560 = !DILocation(line: 243, column: 11, scope: !517)
!561 = !DILocation(line: 244, column: 9, scope: !557)
!562 = !DILocation(line: 245, column: 11, scope: !563)
!563 = distinct !DILexicalBlock(scope: !517, file: !1, line: 245, column: 11)
!564 = !DILocation(line: 245, column: 32, scope: !563)
!565 = !DILocation(line: 245, column: 30, scope: !563)
!566 = !DILocation(line: 245, column: 22, scope: !563)
!567 = !DILocation(line: 245, column: 13, scope: !563)
!568 = !DILocation(line: 245, column: 11, scope: !517)
!569 = !DILocation(line: 246, column: 9, scope: !563)
!570 = !DILocation(line: 247, column: 20, scope: !517)
!571 = !DILocation(line: 247, column: 18, scope: !517)
!572 = !DILocation(line: 247, column: 9, scope: !517)
!573 = !DILocation(line: 248, column: 5, scope: !517)
!574 = !DILocation(line: 232, column: 39, scope: !518)
!575 = !DILocation(line: 232, column: 5, scope: !518)
!576 = distinct !{!576, !577, !578}
!577 = !DILocation(line: 232, column: 5, scope: !509)
!578 = !DILocation(line: 248, column: 5, scope: !509)
!579 = !DILocation(line: 250, column: 18, scope: !510)
!580 = !DILocation(line: 250, column: 22, scope: !510)
!581 = !DILocation(line: 250, column: 20, scope: !510)
!582 = !DILocation(line: 250, column: 28, scope: !510)
!583 = !DILocation(line: 250, column: 32, scope: !510)
!584 = !DILocation(line: 250, column: 37, scope: !510)
!585 = !DILocation(line: 250, column: 42, scope: !510)
!586 = !DILocation(line: 250, column: 12, scope: !510)
!587 = !DILocation(line: 250, column: 10, scope: !510)
!588 = !DILocation(line: 255, column: 9, scope: !589)
!589 = distinct !DILexicalBlock(scope: !510, file: !1, line: 255, column: 9)
!590 = !DILocation(line: 255, column: 14, scope: !589)
!591 = !DILocation(line: 255, column: 18, scope: !589)
!592 = !DILocation(line: 255, column: 11, scope: !589)
!593 = !DILocation(line: 255, column: 34, scope: !589)
!594 = !DILocation(line: 255, column: 32, scope: !589)
!595 = !DILocation(line: 255, column: 23, scope: !589)
!596 = !DILocation(line: 255, column: 9, scope: !510)
!597 = !DILocation(line: 256, column: 7, scope: !589)
!598 = !DILocation(line: 257, column: 10, scope: !510)
!599 = !DILocation(line: 257, column: 15, scope: !510)
!600 = !DILocation(line: 257, column: 19, scope: !510)
!601 = !DILocation(line: 257, column: 12, scope: !510)
!602 = !DILocation(line: 257, column: 7, scope: !510)
!603 = !DILocation(line: 258, column: 11, scope: !510)
!604 = !DILocation(line: 258, column: 15, scope: !510)
!605 = !DILocation(line: 258, column: 7, scope: !510)
!606 = !DILocation(line: 264, column: 9, scope: !607)
!607 = distinct !DILexicalBlock(scope: !510, file: !1, line: 264, column: 9)
!608 = !DILocation(line: 264, column: 16, scope: !607)
!609 = !DILocation(line: 264, column: 13, scope: !607)
!610 = !DILocation(line: 264, column: 9, scope: !510)
!611 = !DILocation(line: 265, column: 7, scope: !607)
!612 = !DILocation(line: 267, column: 9, scope: !613)
!613 = distinct !DILexicalBlock(scope: !510, file: !1, line: 267, column: 9)
!614 = !DILocation(line: 267, column: 9, scope: !510)
!615 = !DILocation(line: 268, column: 15, scope: !616)
!616 = distinct !DILexicalBlock(scope: !613, file: !1, line: 267, column: 21)
!617 = !DILocation(line: 268, column: 28, scope: !616)
!618 = !DILocation(line: 268, column: 26, scope: !616)
!619 = !DILocation(line: 268, column: 30, scope: !616)
!620 = !DILocation(line: 268, column: 35, scope: !616)
!621 = !DILocation(line: 268, column: 48, scope: !616)
!622 = !DILocation(line: 268, column: 46, scope: !616)
!623 = !DILocation(line: 268, column: 51, scope: !616)
!624 = !DILocation(line: 268, column: 57, scope: !616)
!625 = !DILocation(line: 268, column: 55, scope: !616)
!626 = !DILocation(line: 268, column: 7, scope: !616)
!627 = !DILocation(line: 270, column: 23, scope: !616)
!628 = !DILocation(line: 270, column: 7, scope: !616)
!629 = !DILocation(line: 270, column: 18, scope: !616)
!630 = !DILocation(line: 270, column: 21, scope: !616)
!631 = !DILocation(line: 271, column: 5, scope: !616)
!632 = !DILocation(line: 273, column: 13, scope: !510)
!633 = !DILocation(line: 273, column: 22, scope: !510)
!634 = !DILocation(line: 273, column: 20, scope: !510)
!635 = !DILocation(line: 273, column: 24, scope: !510)
!636 = !DILocation(line: 273, column: 29, scope: !510)
!637 = !DILocation(line: 273, column: 38, scope: !510)
!638 = !DILocation(line: 273, column: 36, scope: !510)
!639 = !DILocation(line: 273, column: 42, scope: !510)
!640 = !DILocation(line: 273, column: 48, scope: !510)
!641 = !DILocation(line: 273, column: 46, scope: !510)
!642 = !DILocation(line: 273, column: 41, scope: !510)
!643 = !DILocation(line: 273, column: 51, scope: !510)
!644 = !DILocation(line: 273, column: 5, scope: !510)
!645 = !DILocation(line: 274, column: 19, scope: !510)
!646 = !DILocation(line: 274, column: 5, scope: !510)
!647 = !DILocation(line: 274, column: 13, scope: !510)
!648 = !DILocation(line: 274, column: 17, scope: !510)
!649 = !DILocation(line: 275, column: 3, scope: !510)
!650 = !DILocation(line: 222, column: 50, scope: !504)
!651 = !DILocation(line: 222, column: 3, scope: !504)
!652 = distinct !{!652, !507, !653, !124}
!653 = !DILocation(line: 275, column: 3, scope: !497)
!654 = !DILocation(line: 277, column: 20, scope: !392)
!655 = !DILocation(line: 277, column: 4, scope: !392)
!656 = !DILocation(line: 277, column: 18, scope: !392)
!657 = !DILocation(line: 278, column: 3, scope: !392)
!658 = !DILocation(line: 279, column: 1, scope: !392)
!659 = distinct !DISubprogram(name: "decode_digit", scope: !1, file: !1, line: 34, type: !660, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !45)
!660 = !DISubroutineType(types: !661)
!661 = !{!22, !22}
!662 = !DILocalVariable(name: "cp", arg: 1, scope: !659, file: !1, line: 34, type: !22)
!663 = !DILocation(line: 34, column: 49, scope: !659)
!664 = !DILocation(line: 35, column: 10, scope: !659)
!665 = !DILocation(line: 35, column: 13, scope: !659)
!666 = !DILocation(line: 35, column: 18, scope: !659)
!667 = !DILocation(line: 35, column: 25, scope: !659)
!668 = !DILocation(line: 35, column: 28, scope: !659)
!669 = !DILocation(line: 35, column: 35, scope: !659)
!670 = !DILocation(line: 35, column: 38, scope: !659)
!671 = !DILocation(line: 35, column: 43, scope: !659)
!672 = !DILocation(line: 35, column: 50, scope: !659)
!673 = !DILocation(line: 35, column: 53, scope: !659)
!674 = !DILocation(line: 35, column: 60, scope: !659)
!675 = !DILocation(line: 35, column: 63, scope: !659)
!676 = !DILocation(line: 35, column: 68, scope: !659)
!677 = !DILocation(line: 36, column: 10, scope: !659)
!678 = !DILocation(line: 36, column: 13, scope: !659)
!679 = !DILocation(line: 35, column: 3, scope: !659)
