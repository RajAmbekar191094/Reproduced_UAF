; ModuleID = '/home/raj/lwan/common/realpathat.c'
source_filename = "/home/raj/lwan/common/realpathat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [38 x i8] c"resolved == NULL || resolved == rpath\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [35 x i8] c"/home/raj/lwan/common/realpathat.c\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.realpathat2 = private unnamed_addr constant [68 x i8] c"char *realpathat2(int, char *, const char *, char *, struct stat *)\00", align 1, !dbg !12

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @realpathat2(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !37 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca [4096 x i8], align 16
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  %25 = alloca [4096 x i8], align 16
  %26 = alloca i64, align 8
  store i32 %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !82, metadata !DIExpression()), !dbg !83
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !84, metadata !DIExpression()), !dbg !85
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !86, metadata !DIExpression()), !dbg !87
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !88, metadata !DIExpression()), !dbg !89
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata ptr %12, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata ptr %13, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata ptr %14, metadata !96, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata ptr %15, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata ptr %16, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata ptr %17, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata ptr %18, metadata !107, metadata !DIExpression()), !dbg !108
  store i32 0, ptr %18, align 4, !dbg !108
  call void @llvm.dbg.declare(metadata ptr %19, metadata !109, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata ptr %20, metadata !112, metadata !DIExpression()), !dbg !113
  %27 = load i32, ptr %7, align 4, !dbg !114
  %28 = icmp slt i32 %27, 0, !dbg !114
  br i1 %28, label %38, label %29, !dbg !114

29:                                               ; preds = %5
  %30 = load ptr, ptr %8, align 8, !dbg !114
  %31 = icmp eq ptr %30, null, !dbg !114
  br i1 %31, label %38, label %32, !dbg !114

32:                                               ; preds = %29
  %33 = load ptr, ptr %9, align 8, !dbg !114
  %34 = getelementptr inbounds i8, ptr %33, i64 0, !dbg !114
  %35 = load i8, ptr %34, align 1, !dbg !114
  %36 = sext i8 %35 to i32, !dbg !114
  %37 = icmp eq i32 %36, 47, !dbg !114
  br label %38, !dbg !114

38:                                               ; preds = %32, %29, %5
  %39 = phi i1 [ true, %29 ], [ true, %5 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32, !dbg !114
  %41 = sext i32 %40 to i64, !dbg !114
  %42 = icmp ne i64 %41, 0, !dbg !114
  br i1 %42, label %43, label %47, !dbg !116

43:                                               ; preds = %38
  %44 = load ptr, ptr %9, align 8, !dbg !117
  %45 = load ptr, ptr %10, align 8, !dbg !118
  %46 = call ptr @realpath(ptr noundef %44, ptr noundef %45) #9, !dbg !119
  store ptr %46, ptr %6, align 8, !dbg !120
  br label %485, !dbg !120

47:                                               ; preds = %38
  %48 = load ptr, ptr %9, align 8, !dbg !121
  %49 = icmp eq ptr %48, null, !dbg !121
  %50 = zext i1 %49 to i32, !dbg !121
  %51 = sext i32 %50 to i64, !dbg !121
  %52 = icmp ne i64 %51, 0, !dbg !121
  br i1 %52, label %53, label %55, !dbg !123

53:                                               ; preds = %47
  %54 = call ptr @__errno_location() #10, !dbg !124
  store i32 22, ptr %54, align 4, !dbg !126
  store ptr null, ptr %6, align 8, !dbg !127
  br label %485, !dbg !127

55:                                               ; preds = %47
  %56 = load ptr, ptr %9, align 8, !dbg !128
  %57 = getelementptr inbounds i8, ptr %56, i64 0, !dbg !128
  %58 = load i8, ptr %57, align 1, !dbg !128
  %59 = sext i8 %58 to i32, !dbg !128
  %60 = icmp eq i32 %59, 0, !dbg !130
  br i1 %60, label %61, label %86, !dbg !131

61:                                               ; preds = %55
  %62 = load i32, ptr %7, align 4, !dbg !132
  %63 = load ptr, ptr %11, align 8, !dbg !132
  %64 = call i32 @fstat(i32 noundef %62, ptr noundef %63) #9, !dbg !132
  %65 = icmp slt i32 %64, 0, !dbg !132
  %66 = zext i1 %65 to i32, !dbg !132
  %67 = sext i32 %66 to i64, !dbg !132
  %68 = icmp ne i64 %67, 0, !dbg !132
  br i1 %68, label %69, label %70, !dbg !135

69:                                               ; preds = %61
  store ptr null, ptr %6, align 8, !dbg !136
  br label %485, !dbg !136

70:                                               ; preds = %61
  %71 = load ptr, ptr %10, align 8, !dbg !137
  %72 = icmp ne ptr %71, null, !dbg !137
  %73 = xor i1 %72, true, !dbg !137
  %74 = xor i1 %73, true, !dbg !137
  %75 = xor i1 %74, true, !dbg !137
  %76 = zext i1 %75 to i32, !dbg !137
  %77 = sext i32 %76 to i64, !dbg !137
  %78 = icmp ne i64 %77, 0, !dbg !137
  br i1 %78, label %79, label %82, !dbg !139

79:                                               ; preds = %70
  %80 = load ptr, ptr %8, align 8, !dbg !140
  %81 = call noalias ptr @strdup(ptr noundef %80) #9, !dbg !141
  store ptr %81, ptr %6, align 8, !dbg !142
  br label %485, !dbg !142

82:                                               ; preds = %70
  %83 = load ptr, ptr %10, align 8, !dbg !143
  %84 = load ptr, ptr %8, align 8, !dbg !144
  %85 = call ptr @strcpy(ptr noundef %83, ptr noundef %84) #9, !dbg !145
  store ptr %85, ptr %6, align 8, !dbg !146
  br label %485, !dbg !146

86:                                               ; preds = %55
  %87 = load ptr, ptr %10, align 8, !dbg !147
  %88 = icmp ne ptr %87, null, !dbg !147
  %89 = xor i1 %88, true, !dbg !147
  %90 = xor i1 %89, true, !dbg !147
  %91 = xor i1 %90, true, !dbg !147
  %92 = zext i1 %91 to i32, !dbg !147
  %93 = sext i32 %92 to i64, !dbg !147
  %94 = icmp ne i64 %93, 0, !dbg !147
  br i1 %94, label %95, label %105, !dbg !149

95:                                               ; preds = %86
  %96 = call noalias ptr @malloc(i64 noundef 4096) #11, !dbg !150
  store ptr %96, ptr %12, align 8, !dbg !152
  %97 = load ptr, ptr %12, align 8, !dbg !153
  %98 = icmp ne ptr %97, null, !dbg !153
  %99 = xor i1 %98, true, !dbg !153
  %100 = zext i1 %99 to i32, !dbg !153
  %101 = sext i32 %100 to i64, !dbg !153
  %102 = icmp ne i64 %101, 0, !dbg !153
  br i1 %102, label %103, label %104, !dbg !155

103:                                              ; preds = %95
  store ptr null, ptr %6, align 8, !dbg !156
  br label %485, !dbg !156

104:                                              ; preds = %95
  br label %107, !dbg !157

105:                                              ; preds = %86
  %106 = load ptr, ptr %10, align 8, !dbg !158
  store ptr %106, ptr %12, align 8, !dbg !159
  br label %107

107:                                              ; preds = %105, %104
  %108 = load ptr, ptr %12, align 8, !dbg !160
  %109 = getelementptr inbounds i8, ptr %108, i64 4096, !dbg !161
  store ptr %109, ptr %17, align 8, !dbg !162
  %110 = load ptr, ptr %12, align 8, !dbg !163
  %111 = load ptr, ptr %8, align 8, !dbg !164
  %112 = call ptr @strcpy(ptr noundef %110, ptr noundef %111) #9, !dbg !165
  %113 = load ptr, ptr %12, align 8, !dbg !166
  %114 = call ptr @rawmemchr(ptr noundef %113, i32 noundef 0) #12, !dbg !167
  store ptr %114, ptr %13, align 8, !dbg !168
  %115 = load ptr, ptr %13, align 8, !dbg !169
  %116 = load ptr, ptr %12, align 8, !dbg !170
  %117 = ptrtoint ptr %115 to i64, !dbg !171
  %118 = ptrtoint ptr %116 to i64, !dbg !171
  %119 = sub i64 %117, %118, !dbg !171
  store i64 %119, ptr %19, align 8, !dbg !172
  %120 = load ptr, ptr %9, align 8, !dbg !173
  store ptr %120, ptr %16, align 8, !dbg !175
  store ptr %120, ptr %15, align 8, !dbg !176
  br label %121, !dbg !177

121:                                              ; preds = %442, %107
  %122 = load ptr, ptr %15, align 8, !dbg !178
  %123 = load i8, ptr %122, align 1, !dbg !180
  %124 = icmp ne i8 %123, 0, !dbg !181
  br i1 %124, label %125, label %444, !dbg !181

125:                                              ; preds = %121
  call void @llvm.dbg.declare(metadata ptr %21, metadata !182, metadata !DIExpression()), !dbg !184
  br label %126, !dbg !185

126:                                              ; preds = %131, %125
  %127 = load ptr, ptr %15, align 8, !dbg !186
  %128 = load i8, ptr %127, align 1, !dbg !187
  %129 = sext i8 %128 to i32, !dbg !187
  %130 = icmp eq i32 %129, 47, !dbg !188
  br i1 %130, label %131, label %134, !dbg !185

131:                                              ; preds = %126
  %132 = load ptr, ptr %15, align 8, !dbg !189
  %133 = getelementptr inbounds i8, ptr %132, i32 1, !dbg !189
  store ptr %133, ptr %15, align 8, !dbg !189
  br label %126, !dbg !185, !llvm.loop !190

134:                                              ; preds = %126
  %135 = load ptr, ptr %15, align 8, !dbg !193
  store ptr %135, ptr %16, align 8, !dbg !195
  br label %136, !dbg !196

136:                                              ; preds = %149, %134
  %137 = load ptr, ptr %16, align 8, !dbg !197
  %138 = load i8, ptr %137, align 1, !dbg !199
  %139 = sext i8 %138 to i32, !dbg !199
  %140 = icmp ne i32 %139, 0, !dbg !199
  br i1 %140, label %141, label %146, !dbg !200

141:                                              ; preds = %136
  %142 = load ptr, ptr %16, align 8, !dbg !201
  %143 = load i8, ptr %142, align 1, !dbg !202
  %144 = sext i8 %143 to i32, !dbg !202
  %145 = icmp ne i32 %144, 47, !dbg !203
  br label %146

146:                                              ; preds = %141, %136
  %147 = phi i1 [ false, %136 ], [ %145, %141 ], !dbg !204
  br i1 %147, label %148, label %152, !dbg !205

148:                                              ; preds = %146
  br label %149, !dbg !205

149:                                              ; preds = %148
  %150 = load ptr, ptr %16, align 8, !dbg !206
  %151 = getelementptr inbounds i8, ptr %150, i32 1, !dbg !206
  store ptr %151, ptr %16, align 8, !dbg !206
  br label %136, !dbg !207, !llvm.loop !208

152:                                              ; preds = %146
  %153 = load ptr, ptr %16, align 8, !dbg !210
  %154 = load ptr, ptr %15, align 8, !dbg !212
  %155 = ptrtoint ptr %153 to i64, !dbg !213
  %156 = ptrtoint ptr %154 to i64, !dbg !213
  %157 = sub i64 %155, %156, !dbg !213
  %158 = icmp eq i64 %157, 0, !dbg !214
  br i1 %158, label %159, label %160, !dbg !215

159:                                              ; preds = %152
  br label %444, !dbg !216

160:                                              ; preds = %152
  %161 = load ptr, ptr %16, align 8, !dbg !217
  %162 = load ptr, ptr %15, align 8, !dbg !219
  %163 = ptrtoint ptr %161 to i64, !dbg !220
  %164 = ptrtoint ptr %162 to i64, !dbg !220
  %165 = sub i64 %163, %164, !dbg !220
  %166 = icmp eq i64 %165, 1, !dbg !221
  br i1 %166, label %167, label %174, !dbg !222

167:                                              ; preds = %160
  %168 = load ptr, ptr %15, align 8, !dbg !223
  %169 = getelementptr inbounds i8, ptr %168, i64 0, !dbg !223
  %170 = load i8, ptr %169, align 1, !dbg !223
  %171 = sext i8 %170 to i32, !dbg !223
  %172 = icmp eq i32 %171, 46, !dbg !224
  br i1 %172, label %173, label %174, !dbg !225

173:                                              ; preds = %167
  br label %440, !dbg !225

174:                                              ; preds = %167, %160
  %175 = load ptr, ptr %16, align 8, !dbg !226
  %176 = load ptr, ptr %15, align 8, !dbg !228
  %177 = ptrtoint ptr %175 to i64, !dbg !229
  %178 = ptrtoint ptr %176 to i64, !dbg !229
  %179 = sub i64 %177, %178, !dbg !229
  %180 = icmp eq i64 %179, 2, !dbg !230
  br i1 %180, label %181, label %209, !dbg !231

181:                                              ; preds = %174
  %182 = load ptr, ptr %15, align 8, !dbg !232
  %183 = getelementptr inbounds i8, ptr %182, i64 0, !dbg !232
  %184 = load i8, ptr %183, align 1, !dbg !232
  %185 = sext i8 %184 to i32, !dbg !232
  %186 = icmp eq i32 %185, 46, !dbg !233
  br i1 %186, label %187, label %209, !dbg !234

187:                                              ; preds = %181
  %188 = load ptr, ptr %15, align 8, !dbg !235
  %189 = getelementptr inbounds i8, ptr %188, i64 1, !dbg !235
  %190 = load i8, ptr %189, align 1, !dbg !235
  %191 = sext i8 %190 to i32, !dbg !235
  %192 = icmp eq i32 %191, 46, !dbg !236
  br i1 %192, label %193, label %209, !dbg !237

193:                                              ; preds = %187
  %194 = load ptr, ptr %13, align 8, !dbg !238
  %195 = load ptr, ptr %12, align 8, !dbg !241
  %196 = getelementptr inbounds i8, ptr %195, i64 1, !dbg !242
  %197 = icmp ugt ptr %194, %196, !dbg !243
  br i1 %197, label %198, label %208, !dbg !244

198:                                              ; preds = %193
  br label %199, !dbg !245

199:                                              ; preds = %206, %198
  %200 = load ptr, ptr %13, align 8, !dbg !246
  %201 = getelementptr inbounds i8, ptr %200, i32 -1, !dbg !246
  store ptr %201, ptr %13, align 8, !dbg !246
  %202 = getelementptr inbounds i8, ptr %201, i64 -1, !dbg !247
  %203 = load i8, ptr %202, align 1, !dbg !247
  %204 = sext i8 %203 to i32, !dbg !247
  %205 = icmp ne i32 %204, 47, !dbg !248
  br i1 %205, label %206, label %207, !dbg !245

206:                                              ; preds = %199
  br label %199, !dbg !245, !llvm.loop !249

207:                                              ; preds = %199
  br label %208, !dbg !245

208:                                              ; preds = %207, %193
  br label %439, !dbg !251

209:                                              ; preds = %187, %181, %174
  call void @llvm.dbg.declare(metadata ptr %22, metadata !252, metadata !DIExpression()), !dbg !254
  %210 = load ptr, ptr %13, align 8, !dbg !255
  %211 = getelementptr inbounds i8, ptr %210, i64 -1, !dbg !255
  %212 = load i8, ptr %211, align 1, !dbg !255
  %213 = sext i8 %212 to i32, !dbg !255
  %214 = icmp ne i32 %213, 47, !dbg !257
  br i1 %214, label %215, label %218, !dbg !258

215:                                              ; preds = %209
  %216 = load ptr, ptr %13, align 8, !dbg !259
  %217 = getelementptr inbounds i8, ptr %216, i32 1, !dbg !259
  store ptr %217, ptr %13, align 8, !dbg !259
  store i8 47, ptr %216, align 1, !dbg !260
  br label %218, !dbg !261

218:                                              ; preds = %215, %209
  %219 = load ptr, ptr %13, align 8, !dbg !262
  %220 = load ptr, ptr %16, align 8, !dbg !264
  %221 = load ptr, ptr %15, align 8, !dbg !265
  %222 = ptrtoint ptr %220 to i64, !dbg !266
  %223 = ptrtoint ptr %221 to i64, !dbg !266
  %224 = sub i64 %222, %223, !dbg !266
  %225 = getelementptr inbounds i8, ptr %219, i64 %224, !dbg !267
  %226 = load ptr, ptr %17, align 8, !dbg !268
  %227 = icmp uge ptr %225, %226, !dbg !269
  br i1 %227, label %228, label %293, !dbg !270

228:                                              ; preds = %218
  call void @llvm.dbg.declare(metadata ptr %23, metadata !271, metadata !DIExpression()), !dbg !273
  %229 = load ptr, ptr %13, align 8, !dbg !274
  %230 = load ptr, ptr %12, align 8, !dbg !275
  %231 = ptrtoint ptr %229 to i64, !dbg !276
  %232 = ptrtoint ptr %230 to i64, !dbg !276
  %233 = sub i64 %231, %232, !dbg !276
  store i64 %233, ptr %23, align 8, !dbg !273
  call void @llvm.dbg.declare(metadata ptr %24, metadata !277, metadata !DIExpression()), !dbg !278
  %234 = load ptr, ptr %10, align 8, !dbg !279
  %235 = icmp ne ptr %234, null, !dbg !279
  %236 = zext i1 %235 to i32, !dbg !279
  %237 = sext i32 %236 to i64, !dbg !279
  %238 = icmp ne i64 %237, 0, !dbg !279
  br i1 %238, label %239, label %250, !dbg !281

239:                                              ; preds = %228
  %240 = call ptr @__errno_location() #10, !dbg !282
  store i32 36, ptr %240, align 4, !dbg !284
  %241 = load ptr, ptr %13, align 8, !dbg !285
  %242 = load ptr, ptr %12, align 8, !dbg !287
  %243 = getelementptr inbounds i8, ptr %242, i64 1, !dbg !288
  %244 = icmp ugt ptr %241, %243, !dbg !289
  br i1 %244, label %245, label %248, !dbg !290

245:                                              ; preds = %239
  %246 = load ptr, ptr %13, align 8, !dbg !291
  %247 = getelementptr inbounds i8, ptr %246, i32 -1, !dbg !291
  store ptr %247, ptr %13, align 8, !dbg !291
  br label %248, !dbg !292

248:                                              ; preds = %245, %239
  %249 = load ptr, ptr %13, align 8, !dbg !293
  store i8 0, ptr %249, align 1, !dbg !294
  br label %470, !dbg !295

250:                                              ; preds = %228
  %251 = load ptr, ptr %17, align 8, !dbg !296
  %252 = load ptr, ptr %12, align 8, !dbg !297
  %253 = ptrtoint ptr %251 to i64, !dbg !298
  %254 = ptrtoint ptr %252 to i64, !dbg !298
  %255 = sub i64 %253, %254, !dbg !298
  store i64 %255, ptr %22, align 8, !dbg !299
  %256 = load ptr, ptr %16, align 8, !dbg !300
  %257 = load ptr, ptr %15, align 8, !dbg !302
  %258 = ptrtoint ptr %256 to i64, !dbg !303
  %259 = ptrtoint ptr %257 to i64, !dbg !303
  %260 = sub i64 %258, %259, !dbg !303
  %261 = add nsw i64 %260, 1, !dbg !304
  %262 = icmp sgt i64 %261, 4096, !dbg !305
  br i1 %262, label %263, label %272, !dbg !306

263:                                              ; preds = %250
  %264 = load ptr, ptr %16, align 8, !dbg !307
  %265 = load ptr, ptr %15, align 8, !dbg !308
  %266 = ptrtoint ptr %264 to i64, !dbg !309
  %267 = ptrtoint ptr %265 to i64, !dbg !309
  %268 = sub i64 %266, %267, !dbg !309
  %269 = add nsw i64 %268, 1, !dbg !310
  %270 = load i64, ptr %22, align 8, !dbg !311
  %271 = add i64 %270, %269, !dbg !311
  store i64 %271, ptr %22, align 8, !dbg !311
  br label %275, !dbg !312

272:                                              ; preds = %250
  %273 = load i64, ptr %22, align 8, !dbg !313
  %274 = add i64 %273, 4096, !dbg !313
  store i64 %274, ptr %22, align 8, !dbg !313
  br label %275

275:                                              ; preds = %272, %263
  %276 = load ptr, ptr %12, align 8, !dbg !314
  %277 = load i64, ptr %22, align 8, !dbg !315
  %278 = call ptr @realloc(ptr noundef %276, i64 noundef %277) #13, !dbg !316
  store ptr %278, ptr %24, align 8, !dbg !317
  %279 = load ptr, ptr %24, align 8, !dbg !318
  %280 = icmp eq ptr %279, null, !dbg !318
  %281 = zext i1 %280 to i32, !dbg !318
  %282 = sext i32 %281 to i64, !dbg !318
  %283 = icmp ne i64 %282, 0, !dbg !318
  br i1 %283, label %284, label %285, !dbg !320

284:                                              ; preds = %275
  br label %470, !dbg !321

285:                                              ; preds = %275
  %286 = load ptr, ptr %24, align 8, !dbg !322
  store ptr %286, ptr %12, align 8, !dbg !323
  %287 = load ptr, ptr %12, align 8, !dbg !324
  %288 = load i64, ptr %22, align 8, !dbg !325
  %289 = getelementptr inbounds i8, ptr %287, i64 %288, !dbg !326
  store ptr %289, ptr %17, align 8, !dbg !327
  %290 = load ptr, ptr %12, align 8, !dbg !328
  %291 = load i64, ptr %23, align 8, !dbg !329
  %292 = getelementptr inbounds i8, ptr %290, i64 %291, !dbg !330
  store ptr %292, ptr %13, align 8, !dbg !331
  br label %293, !dbg !332

293:                                              ; preds = %285, %218
  %294 = load ptr, ptr %13, align 8, !dbg !333
  %295 = load ptr, ptr %15, align 8, !dbg !334
  %296 = load ptr, ptr %16, align 8, !dbg !335
  %297 = load ptr, ptr %15, align 8, !dbg !336
  %298 = ptrtoint ptr %296 to i64, !dbg !337
  %299 = ptrtoint ptr %297 to i64, !dbg !337
  %300 = sub i64 %298, %299, !dbg !337
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %294, ptr align 1 %295, i64 %300, i1 false), !dbg !338
  %301 = getelementptr inbounds i8, ptr %294, i64 %300, !dbg !338
  store ptr %301, ptr %13, align 8, !dbg !339
  %302 = load ptr, ptr %13, align 8, !dbg !340
  store i8 0, ptr %302, align 1, !dbg !341
  %303 = load ptr, ptr %12, align 8, !dbg !342
  %304 = load ptr, ptr %8, align 8, !dbg !342
  %305 = load i64, ptr %19, align 8, !dbg !342
  %306 = call i32 @strncmp(ptr noundef %303, ptr noundef %304, i64 noundef %305) #12, !dbg !342
  %307 = icmp ne i32 %306, 0, !dbg !342
  %308 = xor i1 %307, true, !dbg !342
  %309 = xor i1 %308, true, !dbg !342
  %310 = xor i1 %309, true, !dbg !342
  %311 = zext i1 %310 to i32, !dbg !342
  %312 = sext i32 %311 to i64, !dbg !342
  %313 = icmp ne i64 %312, 0, !dbg !342
  br i1 %313, label %314, label %326, !dbg !344

314:                                              ; preds = %293
  %315 = load ptr, ptr %12, align 8, !dbg !345
  %316 = load i64, ptr %19, align 8, !dbg !347
  %317 = getelementptr inbounds i8, ptr %315, i64 %316, !dbg !348
  %318 = getelementptr inbounds i8, ptr %317, i64 1, !dbg !349
  store ptr %318, ptr %20, align 8, !dbg !350
  %319 = load ptr, ptr %20, align 8, !dbg !351
  %320 = load i8, ptr %319, align 1, !dbg !353
  %321 = sext i8 %320 to i32, !dbg !353
  %322 = icmp eq i32 %321, 0, !dbg !354
  br i1 %322, label %323, label %325, !dbg !355

323:                                              ; preds = %314
  %324 = load ptr, ptr %12, align 8, !dbg !356
  store ptr %324, ptr %20, align 8, !dbg !357
  br label %325, !dbg !358

325:                                              ; preds = %323, %314
  br label %328, !dbg !359

326:                                              ; preds = %293
  %327 = load ptr, ptr %12, align 8, !dbg !360
  store ptr %327, ptr %20, align 8, !dbg !362
  br label %328

328:                                              ; preds = %326, %325
  %329 = load i32, ptr %7, align 4, !dbg !363
  %330 = load ptr, ptr %20, align 8, !dbg !363
  %331 = load ptr, ptr %11, align 8, !dbg !363
  %332 = call i32 @fstatat(i32 noundef %329, ptr noundef %330, ptr noundef %331, i32 noundef 256) #9, !dbg !363
  %333 = icmp slt i32 %332, 0, !dbg !363
  %334 = zext i1 %333 to i32, !dbg !363
  %335 = sext i32 %334 to i64, !dbg !363
  %336 = icmp ne i64 %335, 0, !dbg !363
  br i1 %336, label %337, label %338, !dbg !365

337:                                              ; preds = %328
  br label %470, !dbg !366

338:                                              ; preds = %328
  %339 = load ptr, ptr %11, align 8, !dbg !367
  %340 = getelementptr inbounds %struct.stat, ptr %339, i32 0, i32 3, !dbg !367
  %341 = load i32, ptr %340, align 8, !dbg !367
  %342 = and i32 %341, 61440, !dbg !367
  %343 = icmp eq i32 %342, 40960, !dbg !367
  %344 = zext i1 %343 to i32, !dbg !367
  %345 = sext i32 %344 to i64, !dbg !367
  %346 = icmp ne i64 %345, 0, !dbg !367
  br i1 %346, label %347, label %419, !dbg !369

347:                                              ; preds = %338
  call void @llvm.dbg.declare(metadata ptr %25, metadata !370, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata ptr %26, metadata !373, metadata !DIExpression()), !dbg !374
  %348 = load i32, ptr %18, align 4, !dbg !375
  %349 = add nsw i32 %348, 1, !dbg !375
  store i32 %349, ptr %18, align 4, !dbg !375
  %350 = icmp sgt i32 %349, 20, !dbg !375
  %351 = zext i1 %350 to i32, !dbg !375
  %352 = sext i32 %351 to i64, !dbg !375
  %353 = icmp ne i64 %352, 0, !dbg !375
  br i1 %353, label %354, label %356, !dbg !377

354:                                              ; preds = %347
  %355 = call ptr @__errno_location() #10, !dbg !378
  store i32 40, ptr %355, align 4, !dbg !380
  br label %470, !dbg !381

356:                                              ; preds = %347
  %357 = load i32, ptr %7, align 4, !dbg !382
  %358 = load ptr, ptr %20, align 8, !dbg !383
  %359 = getelementptr inbounds [4096 x i8], ptr %25, i64 0, i64 0, !dbg !384
  %360 = call i64 @readlinkat(i32 noundef %357, ptr noundef %358, ptr noundef %359, i64 noundef 4095) #9, !dbg !385
  %361 = trunc i64 %360 to i32, !dbg !386
  store i32 %361, ptr %21, align 4, !dbg !387
  %362 = load i32, ptr %21, align 4, !dbg !388
  %363 = icmp slt i32 %362, 0, !dbg !388
  %364 = zext i1 %363 to i32, !dbg !388
  %365 = sext i32 %364 to i64, !dbg !388
  %366 = icmp ne i64 %365, 0, !dbg !388
  br i1 %366, label %367, label %368, !dbg !390

367:                                              ; preds = %356
  br label %470, !dbg !391

368:                                              ; preds = %356
  %369 = load i32, ptr %21, align 4, !dbg !392
  %370 = sext i32 %369 to i64, !dbg !393
  %371 = getelementptr inbounds [4096 x i8], ptr %25, i64 0, i64 %370, !dbg !393
  store i8 0, ptr %371, align 1, !dbg !394
  %372 = load ptr, ptr %16, align 8, !dbg !395
  %373 = call i64 @strlen(ptr noundef %372) #12, !dbg !396
  store i64 %373, ptr %26, align 8, !dbg !397
  %374 = load i32, ptr %21, align 4, !dbg !398
  %375 = sext i32 %374 to i64, !dbg !398
  %376 = load i64, ptr %26, align 8, !dbg !398
  %377 = add nsw i64 %375, %376, !dbg !398
  %378 = icmp sge i64 %377, 4096, !dbg !398
  %379 = zext i1 %378 to i32, !dbg !398
  %380 = sext i32 %379 to i64, !dbg !398
  %381 = icmp ne i64 %380, 0, !dbg !398
  br i1 %381, label %382, label %384, !dbg !400

382:                                              ; preds = %368
  %383 = call ptr @__errno_location() #10, !dbg !401
  store i32 36, ptr %383, align 4, !dbg !403
  br label %470, !dbg !404

384:                                              ; preds = %368
  %385 = load i32, ptr %21, align 4, !dbg !405
  %386 = sext i32 %385 to i64, !dbg !406
  %387 = getelementptr inbounds [4096 x i8], ptr %14, i64 0, i64 %386, !dbg !406
  %388 = load ptr, ptr %16, align 8, !dbg !407
  %389 = load i64, ptr %26, align 8, !dbg !408
  %390 = add i64 %389, 1, !dbg !409
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %387, ptr align 1 %388, i64 %390, i1 false), !dbg !410
  %391 = getelementptr inbounds [4096 x i8], ptr %14, i64 0, i64 0, !dbg !411
  %392 = getelementptr inbounds [4096 x i8], ptr %25, i64 0, i64 0, !dbg !411
  %393 = load i32, ptr %21, align 4, !dbg !412
  %394 = sext i32 %393 to i64, !dbg !413
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %391, ptr align 16 %392, i64 %394, i1 false), !dbg !411
  store ptr %391, ptr %16, align 8, !dbg !414
  %395 = getelementptr inbounds [4096 x i8], ptr %25, i64 0, i64 0, !dbg !415
  %396 = load i8, ptr %395, align 16, !dbg !415
  %397 = sext i8 %396 to i32, !dbg !415
  %398 = icmp eq i32 %397, 47, !dbg !417
  br i1 %398, label %399, label %402, !dbg !418

399:                                              ; preds = %384
  %400 = load ptr, ptr %12, align 8, !dbg !419
  %401 = getelementptr inbounds i8, ptr %400, i64 1, !dbg !420
  store ptr %401, ptr %13, align 8, !dbg !421
  br label %418, !dbg !422

402:                                              ; preds = %384
  %403 = load ptr, ptr %13, align 8, !dbg !423
  %404 = load ptr, ptr %12, align 8, !dbg !425
  %405 = getelementptr inbounds i8, ptr %404, i64 1, !dbg !426
  %406 = icmp ugt ptr %403, %405, !dbg !427
  br i1 %406, label %407, label %417, !dbg !428

407:                                              ; preds = %402
  br label %408, !dbg !429

408:                                              ; preds = %415, %407
  %409 = load ptr, ptr %13, align 8, !dbg !430
  %410 = getelementptr inbounds i8, ptr %409, i32 -1, !dbg !430
  store ptr %410, ptr %13, align 8, !dbg !430
  %411 = getelementptr inbounds i8, ptr %410, i64 -1, !dbg !431
  %412 = load i8, ptr %411, align 1, !dbg !431
  %413 = sext i8 %412 to i32, !dbg !431
  %414 = icmp ne i32 %413, 47, !dbg !432
  br i1 %414, label %415, label %416, !dbg !429

415:                                              ; preds = %408
  br label %408, !dbg !429, !llvm.loop !433

416:                                              ; preds = %408
  br label %417, !dbg !429

417:                                              ; preds = %416, %402
  br label %418

418:                                              ; preds = %417, %399
  br label %438, !dbg !435

419:                                              ; preds = %338
  %420 = load ptr, ptr %11, align 8, !dbg !436
  %421 = getelementptr inbounds %struct.stat, ptr %420, i32 0, i32 3, !dbg !436
  %422 = load i32, ptr %421, align 8, !dbg !436
  %423 = and i32 %422, 61440, !dbg !436
  %424 = icmp eq i32 %423, 16384, !dbg !436
  br i1 %424, label %430, label %425, !dbg !436

425:                                              ; preds = %419
  %426 = load ptr, ptr %16, align 8, !dbg !436
  %427 = load i8, ptr %426, align 1, !dbg !436
  %428 = sext i8 %427 to i32, !dbg !436
  %429 = icmp ne i32 %428, 0, !dbg !436
  br label %430

430:                                              ; preds = %425, %419
  %431 = phi i1 [ false, %419 ], [ %429, %425 ], !dbg !438
  %432 = zext i1 %431 to i32, !dbg !436
  %433 = sext i32 %432 to i64, !dbg !436
  %434 = icmp ne i64 %433, 0, !dbg !436
  br i1 %434, label %435, label %437, !dbg !439

435:                                              ; preds = %430
  %436 = call ptr @__errno_location() #10, !dbg !440
  store i32 20, ptr %436, align 4, !dbg !442
  br label %470, !dbg !443

437:                                              ; preds = %430
  br label %438

438:                                              ; preds = %437, %418
  br label %439

439:                                              ; preds = %438, %208
  br label %440

440:                                              ; preds = %439, %173
  br label %441

441:                                              ; preds = %440
  br label %442, !dbg !444

442:                                              ; preds = %441
  %443 = load ptr, ptr %16, align 8, !dbg !445
  store ptr %443, ptr %15, align 8, !dbg !446
  br label %121, !dbg !447, !llvm.loop !448

444:                                              ; preds = %159, %121
  %445 = load ptr, ptr %13, align 8, !dbg !450
  %446 = load ptr, ptr %12, align 8, !dbg !452
  %447 = getelementptr inbounds i8, ptr %446, i64 1, !dbg !453
  %448 = icmp ugt ptr %445, %447, !dbg !454
  br i1 %448, label %449, label %458, !dbg !455

449:                                              ; preds = %444
  %450 = load ptr, ptr %13, align 8, !dbg !456
  %451 = getelementptr inbounds i8, ptr %450, i64 -1, !dbg !456
  %452 = load i8, ptr %451, align 1, !dbg !456
  %453 = sext i8 %452 to i32, !dbg !456
  %454 = icmp eq i32 %453, 47, !dbg !457
  br i1 %454, label %455, label %458, !dbg !458

455:                                              ; preds = %449
  %456 = load ptr, ptr %13, align 8, !dbg !459
  %457 = getelementptr inbounds i8, ptr %456, i32 -1, !dbg !459
  store ptr %457, ptr %13, align 8, !dbg !459
  br label %458, !dbg !459

458:                                              ; preds = %455, %449, %444
  %459 = load ptr, ptr %13, align 8, !dbg !460
  store i8 0, ptr %459, align 1, !dbg !461
  %460 = load ptr, ptr %10, align 8, !dbg !462
  %461 = icmp eq ptr %460, null, !dbg !462
  br i1 %461, label %466, label %462, !dbg !462

462:                                              ; preds = %458
  %463 = load ptr, ptr %10, align 8, !dbg !462
  %464 = load ptr, ptr %12, align 8, !dbg !462
  %465 = icmp eq ptr %463, %464, !dbg !462
  br i1 %465, label %466, label %467, !dbg !465

466:                                              ; preds = %462, %458
  br label %468, !dbg !465

467:                                              ; preds = %462
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 188, ptr noundef @__PRETTY_FUNCTION__.realpathat2) #14, !dbg !462
  unreachable, !dbg !462

468:                                              ; preds = %466
  %469 = load ptr, ptr %12, align 8, !dbg !466
  store ptr %469, ptr %6, align 8, !dbg !467
  br label %485, !dbg !467

470:                                              ; preds = %435, %382, %367, %354, %337, %284, %248
  call void @llvm.dbg.label(metadata !468), !dbg !469
  %471 = load ptr, ptr %10, align 8, !dbg !470
  %472 = icmp eq ptr %471, null, !dbg !470
  br i1 %472, label %477, label %473, !dbg !470

473:                                              ; preds = %470
  %474 = load ptr, ptr %10, align 8, !dbg !470
  %475 = load ptr, ptr %12, align 8, !dbg !470
  %476 = icmp eq ptr %474, %475, !dbg !470
  br i1 %476, label %477, label %478, !dbg !473

477:                                              ; preds = %473, %470
  br label %479, !dbg !473

478:                                              ; preds = %473
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 192, ptr noundef @__PRETTY_FUNCTION__.realpathat2) #14, !dbg !470
  unreachable, !dbg !470

479:                                              ; preds = %477
  %480 = load ptr, ptr %10, align 8, !dbg !474
  %481 = icmp eq ptr %480, null, !dbg !476
  br i1 %481, label %482, label %484, !dbg !477

482:                                              ; preds = %479
  %483 = load ptr, ptr %12, align 8, !dbg !478
  call void @free(ptr noundef %483) #9, !dbg !479
  br label %484, !dbg !479

484:                                              ; preds = %482, %479
  store ptr null, ptr %6, align 8, !dbg !480
  br label %485, !dbg !480

485:                                              ; preds = %484, %468, %103, %82, %79, %69, %53, %43
  %486 = load ptr, ptr %6, align 8, !dbg !481
  ret ptr %486, !dbg !481
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare ptr @realpath(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #3

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare ptr @rawmemchr(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nounwind
declare i32 @fstatat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i64 @readlinkat(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @realpathat(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !482 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.stat, align 8
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !485, metadata !DIExpression()), !dbg !486
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !487, metadata !DIExpression()), !dbg !488
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !489, metadata !DIExpression()), !dbg !490
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata ptr %9, metadata !493, metadata !DIExpression()), !dbg !494
  %10 = load i32, ptr %5, align 4, !dbg !495
  %11 = load ptr, ptr %6, align 8, !dbg !496
  %12 = load ptr, ptr %7, align 8, !dbg !497
  %13 = load ptr, ptr %8, align 8, !dbg !498
  %14 = call ptr @realpathat2(i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %9), !dbg !499
  ret ptr %14, !dbg !500
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { noreturn nounwind }

!llvm.dbg.cu = !{!18}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "common/realpathat.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "90270fbee7ce027e07b9bf25029a1a78")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 38)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 35)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 544, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 68)
!18 = distinct !DICompileUnit(language: DW_LANG_C11, file: !19, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !20, globals: !28, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/raj/lwan/common/realpathat.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "90270fbee7ce027e07b9bf25029a1a78")
!20 = !{!21, !22, !25, !26, !27}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 46, baseType: !24)
!23 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!24 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!28 = !{!0, !7, !12}
!29 = !{i32 7, !"Dwarf Version", i32 5}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{i32 8, !"PIC Level", i32 2}
!33 = !{i32 7, !"PIE Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 2}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 16.0.0"}
!37 = distinct !DISubprogram(name: "realpathat2", scope: !2, file: !2, line: 38, type: !38, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !81)
!38 = !DISubroutineType(types: !39)
!39 = !{!25, !26, !25, !40, !25, !41}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !43, line: 26, size: 1152, elements: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!44 = !{!45, !48, !50, !52, !55, !57, !59, !60, !61, !63, !65, !67, !75, !76, !77}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !42, file: !43, line: 31, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !47, line: 145, baseType: !24)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!48 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !42, file: !43, line: 36, baseType: !49, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !47, line: 148, baseType: !24)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !42, file: !43, line: 44, baseType: !51, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !47, line: 151, baseType: !24)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !42, file: !43, line: 45, baseType: !53, size: 32, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !47, line: 150, baseType: !54)
!54 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !42, file: !43, line: 47, baseType: !56, size: 32, offset: 224)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !47, line: 146, baseType: !54)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !42, file: !43, line: 48, baseType: !58, size: 32, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !47, line: 147, baseType: !54)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !42, file: !43, line: 50, baseType: !26, size: 32, offset: 288)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !42, file: !43, line: 52, baseType: !46, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !42, file: !43, line: 57, baseType: !62, size: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !47, line: 152, baseType: !27)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !42, file: !43, line: 61, baseType: !64, size: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !47, line: 175, baseType: !27)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !42, file: !43, line: 63, baseType: !66, size: 64, offset: 512)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !47, line: 180, baseType: !27)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !42, file: !43, line: 74, baseType: !68, size: 128, offset: 576)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !69, line: 11, size: 128, elements: !70)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!70 = !{!71, !73}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !68, file: !69, line: 16, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !47, line: 160, baseType: !27)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !68, file: !69, line: 21, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !47, line: 197, baseType: !27)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !42, file: !43, line: 75, baseType: !68, size: 128, offset: 704)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !42, file: !43, line: 76, baseType: !68, size: 128, offset: 832)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !42, file: !43, line: 89, baseType: !78, size: 192, offset: 960)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 192, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 3)
!81 = !{}
!82 = !DILocalVariable(name: "dirfd", arg: 1, scope: !37, file: !2, line: 38, type: !26)
!83 = !DILocation(line: 38, column: 17, scope: !37)
!84 = !DILocalVariable(name: "dirfdpath", arg: 2, scope: !37, file: !2, line: 38, type: !25)
!85 = !DILocation(line: 38, column: 30, scope: !37)
!86 = !DILocalVariable(name: "name", arg: 3, scope: !37, file: !2, line: 38, type: !40)
!87 = !DILocation(line: 38, column: 53, scope: !37)
!88 = !DILocalVariable(name: "resolved", arg: 4, scope: !37, file: !2, line: 38, type: !25)
!89 = !DILocation(line: 38, column: 65, scope: !37)
!90 = !DILocalVariable(name: "st", arg: 5, scope: !37, file: !2, line: 39, type: !41)
!91 = !DILocation(line: 39, column: 22, scope: !37)
!92 = !DILocalVariable(name: "rpath", scope: !37, file: !2, line: 41, type: !25)
!93 = !DILocation(line: 41, column: 11, scope: !37)
!94 = !DILocalVariable(name: "dest", scope: !37, file: !2, line: 41, type: !25)
!95 = !DILocation(line: 41, column: 19, scope: !37)
!96 = !DILocalVariable(name: "extra_buf", scope: !37, file: !2, line: 41, type: !97)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 4096)
!100 = !DILocation(line: 41, column: 25, scope: !37)
!101 = !DILocalVariable(name: "start", scope: !37, file: !2, line: 42, type: !40)
!102 = !DILocation(line: 42, column: 17, scope: !37)
!103 = !DILocalVariable(name: "end", scope: !37, file: !2, line: 42, type: !40)
!104 = !DILocation(line: 42, column: 25, scope: !37)
!105 = !DILocalVariable(name: "rpath_limit", scope: !37, file: !2, line: 42, type: !40)
!106 = !DILocation(line: 42, column: 31, scope: !37)
!107 = !DILocalVariable(name: "num_links", scope: !37, file: !2, line: 43, type: !26)
!108 = !DILocation(line: 43, column: 9, scope: !37)
!109 = !DILocalVariable(name: "dirfdlen", scope: !37, file: !2, line: 44, type: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !23, line: 35, baseType: !27)
!111 = !DILocation(line: 44, column: 15, scope: !37)
!112 = !DILocalVariable(name: "pathat", scope: !37, file: !2, line: 45, type: !25)
!113 = !DILocation(line: 45, column: 11, scope: !37)
!114 = !DILocation(line: 50, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !37, file: !2, line: 50, column: 9)
!116 = !DILocation(line: 50, column: 9, scope: !37)
!117 = !DILocation(line: 51, column: 25, scope: !115)
!118 = !DILocation(line: 51, column: 31, scope: !115)
!119 = !DILocation(line: 51, column: 16, scope: !115)
!120 = !DILocation(line: 51, column: 9, scope: !115)
!121 = !DILocation(line: 53, column: 9, scope: !122)
!122 = distinct !DILexicalBlock(scope: !37, file: !2, line: 53, column: 9)
!123 = !DILocation(line: 53, column: 9, scope: !37)
!124 = !DILocation(line: 58, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !2, line: 53, column: 33)
!126 = !DILocation(line: 58, column: 15, scope: !125)
!127 = !DILocation(line: 59, column: 9, scope: !125)
!128 = !DILocation(line: 62, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !37, file: !2, line: 62, column: 9)
!130 = !DILocation(line: 62, column: 17, scope: !129)
!131 = !DILocation(line: 62, column: 9, scope: !37)
!132 = !DILocation(line: 63, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !2, line: 63, column: 13)
!134 = distinct !DILexicalBlock(scope: !129, file: !2, line: 62, column: 26)
!135 = !DILocation(line: 63, column: 13, scope: !134)
!136 = !DILocation(line: 64, column: 13, scope: !133)
!137 = !DILocation(line: 65, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !2, line: 65, column: 13)
!139 = !DILocation(line: 65, column: 13, scope: !134)
!140 = !DILocation(line: 66, column: 27, scope: !138)
!141 = !DILocation(line: 66, column: 20, scope: !138)
!142 = !DILocation(line: 66, column: 13, scope: !138)
!143 = !DILocation(line: 67, column: 23, scope: !134)
!144 = !DILocation(line: 67, column: 33, scope: !134)
!145 = !DILocation(line: 67, column: 16, scope: !134)
!146 = !DILocation(line: 67, column: 9, scope: !134)
!147 = !DILocation(line: 70, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !37, file: !2, line: 70, column: 9)
!149 = !DILocation(line: 70, column: 9, scope: !37)
!150 = !DILocation(line: 71, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !2, line: 70, column: 28)
!152 = !DILocation(line: 71, column: 15, scope: !151)
!153 = !DILocation(line: 72, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !2, line: 72, column: 13)
!155 = !DILocation(line: 72, column: 13, scope: !151)
!156 = !DILocation(line: 73, column: 13, scope: !154)
!157 = !DILocation(line: 74, column: 5, scope: !151)
!158 = !DILocation(line: 75, column: 17, scope: !148)
!159 = !DILocation(line: 75, column: 15, scope: !148)
!160 = !DILocation(line: 76, column: 19, scope: !37)
!161 = !DILocation(line: 76, column: 25, scope: !37)
!162 = !DILocation(line: 76, column: 17, scope: !37)
!163 = !DILocation(line: 78, column: 12, scope: !37)
!164 = !DILocation(line: 78, column: 19, scope: !37)
!165 = !DILocation(line: 78, column: 5, scope: !37)
!166 = !DILocation(line: 79, column: 22, scope: !37)
!167 = !DILocation(line: 79, column: 12, scope: !37)
!168 = !DILocation(line: 79, column: 10, scope: !37)
!169 = !DILocation(line: 80, column: 16, scope: !37)
!170 = !DILocation(line: 80, column: 23, scope: !37)
!171 = !DILocation(line: 80, column: 21, scope: !37)
!172 = !DILocation(line: 80, column: 14, scope: !37)
!173 = !DILocation(line: 82, column: 24, scope: !174)
!174 = distinct !DILexicalBlock(scope: !37, file: !2, line: 82, column: 5)
!175 = !DILocation(line: 82, column: 22, scope: !174)
!176 = !DILocation(line: 82, column: 16, scope: !174)
!177 = !DILocation(line: 82, column: 10, scope: !174)
!178 = !DILocation(line: 82, column: 31, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !2, line: 82, column: 5)
!180 = !DILocation(line: 82, column: 30, scope: !179)
!181 = !DILocation(line: 82, column: 5, scope: !174)
!182 = !DILocalVariable(name: "n", scope: !183, file: !2, line: 83, type: !26)
!183 = distinct !DILexicalBlock(scope: !179, file: !2, line: 82, column: 51)
!184 = !DILocation(line: 83, column: 13, scope: !183)
!185 = !DILocation(line: 86, column: 9, scope: !183)
!186 = !DILocation(line: 86, column: 17, scope: !183)
!187 = !DILocation(line: 86, column: 16, scope: !183)
!188 = !DILocation(line: 86, column: 23, scope: !183)
!189 = !DILocation(line: 87, column: 13, scope: !183)
!190 = distinct !{!190, !185, !191, !192}
!191 = !DILocation(line: 87, column: 15, scope: !183)
!192 = !{!"llvm.loop.mustprogress"}
!193 = !DILocation(line: 90, column: 20, scope: !194)
!194 = distinct !DILexicalBlock(scope: !183, file: !2, line: 90, column: 9)
!195 = !DILocation(line: 90, column: 18, scope: !194)
!196 = !DILocation(line: 90, column: 14, scope: !194)
!197 = !DILocation(line: 90, column: 28, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !2, line: 90, column: 9)
!199 = !DILocation(line: 90, column: 27, scope: !198)
!200 = !DILocation(line: 90, column: 32, scope: !198)
!201 = !DILocation(line: 90, column: 36, scope: !198)
!202 = !DILocation(line: 90, column: 35, scope: !198)
!203 = !DILocation(line: 90, column: 40, scope: !198)
!204 = !DILocation(line: 0, scope: !198)
!205 = !DILocation(line: 90, column: 9, scope: !194)
!206 = !DILocation(line: 90, column: 48, scope: !198)
!207 = !DILocation(line: 90, column: 9, scope: !198)
!208 = distinct !{!208, !205, !209, !192}
!209 = !DILocation(line: 91, column: 29, scope: !194)
!210 = !DILocation(line: 93, column: 13, scope: !211)
!211 = distinct !DILexicalBlock(scope: !183, file: !2, line: 93, column: 13)
!212 = !DILocation(line: 93, column: 19, scope: !211)
!213 = !DILocation(line: 93, column: 17, scope: !211)
!214 = !DILocation(line: 93, column: 25, scope: !211)
!215 = !DILocation(line: 93, column: 13, scope: !183)
!216 = !DILocation(line: 94, column: 13, scope: !211)
!217 = !DILocation(line: 95, column: 18, scope: !218)
!218 = distinct !DILexicalBlock(scope: !211, file: !2, line: 95, column: 18)
!219 = !DILocation(line: 95, column: 24, scope: !218)
!220 = !DILocation(line: 95, column: 22, scope: !218)
!221 = !DILocation(line: 95, column: 30, scope: !218)
!222 = !DILocation(line: 95, column: 35, scope: !218)
!223 = !DILocation(line: 95, column: 38, scope: !218)
!224 = !DILocation(line: 95, column: 47, scope: !218)
!225 = !DILocation(line: 95, column: 18, scope: !211)
!226 = !DILocation(line: 97, column: 18, scope: !227)
!227 = distinct !DILexicalBlock(scope: !218, file: !2, line: 97, column: 18)
!228 = !DILocation(line: 97, column: 24, scope: !227)
!229 = !DILocation(line: 97, column: 22, scope: !227)
!230 = !DILocation(line: 97, column: 30, scope: !227)
!231 = !DILocation(line: 97, column: 35, scope: !227)
!232 = !DILocation(line: 97, column: 38, scope: !227)
!233 = !DILocation(line: 97, column: 47, scope: !227)
!234 = !DILocation(line: 97, column: 54, scope: !227)
!235 = !DILocation(line: 97, column: 57, scope: !227)
!236 = !DILocation(line: 97, column: 66, scope: !227)
!237 = !DILocation(line: 97, column: 18, scope: !218)
!238 = !DILocation(line: 99, column: 17, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !2, line: 99, column: 17)
!240 = distinct !DILexicalBlock(scope: !227, file: !2, line: 97, column: 74)
!241 = !DILocation(line: 99, column: 24, scope: !239)
!242 = !DILocation(line: 99, column: 30, scope: !239)
!243 = !DILocation(line: 99, column: 22, scope: !239)
!244 = !DILocation(line: 99, column: 17, scope: !240)
!245 = !DILocation(line: 100, column: 17, scope: !239)
!246 = !DILocation(line: 100, column: 25, scope: !239)
!247 = !DILocation(line: 100, column: 24, scope: !239)
!248 = !DILocation(line: 100, column: 37, scope: !239)
!249 = distinct !{!249, !245, !250, !192}
!250 = !DILocation(line: 100, column: 44, scope: !239)
!251 = !DILocation(line: 101, column: 9, scope: !240)
!252 = !DILocalVariable(name: "new_size", scope: !253, file: !2, line: 102, type: !22)
!253 = distinct !DILexicalBlock(scope: !227, file: !2, line: 101, column: 16)
!254 = !DILocation(line: 102, column: 20, scope: !253)
!255 = !DILocation(line: 104, column: 17, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !2, line: 104, column: 17)
!257 = !DILocation(line: 104, column: 26, scope: !256)
!258 = !DILocation(line: 104, column: 17, scope: !253)
!259 = !DILocation(line: 105, column: 22, scope: !256)
!260 = !DILocation(line: 105, column: 25, scope: !256)
!261 = !DILocation(line: 105, column: 17, scope: !256)
!262 = !DILocation(line: 107, column: 17, scope: !263)
!263 = distinct !DILexicalBlock(scope: !253, file: !2, line: 107, column: 17)
!264 = !DILocation(line: 107, column: 25, scope: !263)
!265 = !DILocation(line: 107, column: 31, scope: !263)
!266 = !DILocation(line: 107, column: 29, scope: !263)
!267 = !DILocation(line: 107, column: 22, scope: !263)
!268 = !DILocation(line: 107, column: 41, scope: !263)
!269 = !DILocation(line: 107, column: 38, scope: !263)
!270 = !DILocation(line: 107, column: 17, scope: !253)
!271 = !DILocalVariable(name: "dest_offset", scope: !272, file: !2, line: 108, type: !110)
!272 = distinct !DILexicalBlock(scope: !263, file: !2, line: 107, column: 54)
!273 = !DILocation(line: 108, column: 27, scope: !272)
!274 = !DILocation(line: 108, column: 41, scope: !272)
!275 = !DILocation(line: 108, column: 48, scope: !272)
!276 = !DILocation(line: 108, column: 46, scope: !272)
!277 = !DILocalVariable(name: "new_rpath", scope: !272, file: !2, line: 109, type: !25)
!278 = !DILocation(line: 109, column: 23, scope: !272)
!279 = !DILocation(line: 111, column: 21, scope: !280)
!280 = distinct !DILexicalBlock(scope: !272, file: !2, line: 111, column: 21)
!281 = !DILocation(line: 111, column: 21, scope: !272)
!282 = !DILocation(line: 112, column: 21, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !2, line: 111, column: 49)
!284 = !DILocation(line: 112, column: 27, scope: !283)
!285 = !DILocation(line: 113, column: 25, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !2, line: 113, column: 25)
!287 = !DILocation(line: 113, column: 32, scope: !286)
!288 = !DILocation(line: 113, column: 38, scope: !286)
!289 = !DILocation(line: 113, column: 30, scope: !286)
!290 = !DILocation(line: 113, column: 25, scope: !283)
!291 = !DILocation(line: 114, column: 29, scope: !286)
!292 = !DILocation(line: 114, column: 25, scope: !286)
!293 = !DILocation(line: 115, column: 22, scope: !283)
!294 = !DILocation(line: 115, column: 27, scope: !283)
!295 = !DILocation(line: 116, column: 21, scope: !283)
!296 = !DILocation(line: 119, column: 37, scope: !272)
!297 = !DILocation(line: 119, column: 51, scope: !272)
!298 = !DILocation(line: 119, column: 49, scope: !272)
!299 = !DILocation(line: 119, column: 26, scope: !272)
!300 = !DILocation(line: 120, column: 21, scope: !301)
!301 = distinct !DILexicalBlock(scope: !272, file: !2, line: 120, column: 21)
!302 = !DILocation(line: 120, column: 27, scope: !301)
!303 = !DILocation(line: 120, column: 25, scope: !301)
!304 = !DILocation(line: 120, column: 33, scope: !301)
!305 = !DILocation(line: 120, column: 37, scope: !301)
!306 = !DILocation(line: 120, column: 21, scope: !272)
!307 = !DILocation(line: 121, column: 42, scope: !301)
!308 = !DILocation(line: 121, column: 48, scope: !301)
!309 = !DILocation(line: 121, column: 46, scope: !301)
!310 = !DILocation(line: 121, column: 54, scope: !301)
!311 = !DILocation(line: 121, column: 30, scope: !301)
!312 = !DILocation(line: 121, column: 21, scope: !301)
!313 = !DILocation(line: 123, column: 30, scope: !301)
!314 = !DILocation(line: 124, column: 46, scope: !272)
!315 = !DILocation(line: 124, column: 53, scope: !272)
!316 = !DILocation(line: 124, column: 38, scope: !272)
!317 = !DILocation(line: 124, column: 27, scope: !272)
!318 = !DILocation(line: 125, column: 21, scope: !319)
!319 = distinct !DILexicalBlock(scope: !272, file: !2, line: 125, column: 21)
!320 = !DILocation(line: 125, column: 21, scope: !272)
!321 = !DILocation(line: 126, column: 21, scope: !319)
!322 = !DILocation(line: 127, column: 25, scope: !272)
!323 = !DILocation(line: 127, column: 23, scope: !272)
!324 = !DILocation(line: 128, column: 31, scope: !272)
!325 = !DILocation(line: 128, column: 39, scope: !272)
!326 = !DILocation(line: 128, column: 37, scope: !272)
!327 = !DILocation(line: 128, column: 29, scope: !272)
!328 = !DILocation(line: 130, column: 24, scope: !272)
!329 = !DILocation(line: 130, column: 32, scope: !272)
!330 = !DILocation(line: 130, column: 30, scope: !272)
!331 = !DILocation(line: 130, column: 22, scope: !272)
!332 = !DILocation(line: 131, column: 13, scope: !272)
!333 = !DILocation(line: 133, column: 28, scope: !253)
!334 = !DILocation(line: 133, column: 34, scope: !253)
!335 = !DILocation(line: 133, column: 50, scope: !253)
!336 = !DILocation(line: 133, column: 56, scope: !253)
!337 = !DILocation(line: 133, column: 54, scope: !253)
!338 = !DILocation(line: 133, column: 20, scope: !253)
!339 = !DILocation(line: 133, column: 18, scope: !253)
!340 = !DILocation(line: 134, column: 14, scope: !253)
!341 = !DILocation(line: 134, column: 19, scope: !253)
!342 = !DILocation(line: 136, column: 17, scope: !343)
!343 = distinct !DILexicalBlock(scope: !253, file: !2, line: 136, column: 17)
!344 = !DILocation(line: 136, column: 17, scope: !253)
!345 = !DILocation(line: 137, column: 26, scope: !346)
!346 = distinct !DILexicalBlock(scope: !343, file: !2, line: 136, column: 71)
!347 = !DILocation(line: 137, column: 34, scope: !346)
!348 = !DILocation(line: 137, column: 32, scope: !346)
!349 = !DILocation(line: 137, column: 43, scope: !346)
!350 = !DILocation(line: 137, column: 24, scope: !346)
!351 = !DILocation(line: 138, column: 22, scope: !352)
!352 = distinct !DILexicalBlock(scope: !346, file: !2, line: 138, column: 21)
!353 = !DILocation(line: 138, column: 21, scope: !352)
!354 = !DILocation(line: 138, column: 29, scope: !352)
!355 = !DILocation(line: 138, column: 21, scope: !346)
!356 = !DILocation(line: 139, column: 30, scope: !352)
!357 = !DILocation(line: 139, column: 28, scope: !352)
!358 = !DILocation(line: 139, column: 21, scope: !352)
!359 = !DILocation(line: 140, column: 13, scope: !346)
!360 = !DILocation(line: 141, column: 26, scope: !361)
!361 = distinct !DILexicalBlock(scope: !343, file: !2, line: 140, column: 20)
!362 = !DILocation(line: 141, column: 24, scope: !361)
!363 = !DILocation(line: 144, column: 17, scope: !364)
!364 = distinct !DILexicalBlock(scope: !253, file: !2, line: 144, column: 17)
!365 = !DILocation(line: 144, column: 17, scope: !253)
!366 = !DILocation(line: 145, column: 17, scope: !364)
!367 = !DILocation(line: 147, column: 17, scope: !368)
!368 = distinct !DILexicalBlock(scope: !253, file: !2, line: 147, column: 17)
!369 = !DILocation(line: 147, column: 17, scope: !253)
!370 = !DILocalVariable(name: "buf", scope: !371, file: !2, line: 148, type: !97)
!371 = distinct !DILexicalBlock(scope: !368, file: !2, line: 147, column: 49)
!372 = !DILocation(line: 148, column: 22, scope: !371)
!373 = !DILocalVariable(name: "len", scope: !371, file: !2, line: 149, type: !22)
!374 = !DILocation(line: 149, column: 24, scope: !371)
!375 = !DILocation(line: 151, column: 21, scope: !376)
!376 = distinct !DILexicalBlock(scope: !371, file: !2, line: 151, column: 21)
!377 = !DILocation(line: 151, column: 21, scope: !371)
!378 = !DILocation(line: 152, column: 21, scope: !379)
!379 = distinct !DILexicalBlock(scope: !376, file: !2, line: 151, column: 58)
!380 = !DILocation(line: 152, column: 27, scope: !379)
!381 = !DILocation(line: 153, column: 21, scope: !379)
!382 = !DILocation(line: 156, column: 37, scope: !371)
!383 = !DILocation(line: 156, column: 44, scope: !371)
!384 = !DILocation(line: 156, column: 52, scope: !371)
!385 = !DILocation(line: 156, column: 26, scope: !371)
!386 = !DILocation(line: 156, column: 21, scope: !371)
!387 = !DILocation(line: 156, column: 19, scope: !371)
!388 = !DILocation(line: 157, column: 21, scope: !389)
!389 = distinct !DILexicalBlock(scope: !371, file: !2, line: 157, column: 21)
!390 = !DILocation(line: 157, column: 21, scope: !371)
!391 = !DILocation(line: 158, column: 21, scope: !389)
!392 = !DILocation(line: 159, column: 21, scope: !371)
!393 = !DILocation(line: 159, column: 17, scope: !371)
!394 = !DILocation(line: 159, column: 24, scope: !371)
!395 = !DILocation(line: 161, column: 30, scope: !371)
!396 = !DILocation(line: 161, column: 23, scope: !371)
!397 = !DILocation(line: 161, column: 21, scope: !371)
!398 = !DILocation(line: 162, column: 21, scope: !399)
!399 = distinct !DILexicalBlock(scope: !371, file: !2, line: 162, column: 21)
!400 = !DILocation(line: 162, column: 21, scope: !371)
!401 = !DILocation(line: 163, column: 21, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !2, line: 162, column: 75)
!403 = !DILocation(line: 163, column: 27, scope: !402)
!404 = !DILocation(line: 164, column: 21, scope: !402)
!405 = !DILocation(line: 168, column: 36, scope: !371)
!406 = !DILocation(line: 168, column: 26, scope: !371)
!407 = !DILocation(line: 168, column: 40, scope: !371)
!408 = !DILocation(line: 168, column: 45, scope: !371)
!409 = !DILocation(line: 168, column: 49, scope: !371)
!410 = !DILocation(line: 168, column: 17, scope: !371)
!411 = !DILocation(line: 169, column: 23, scope: !371)
!412 = !DILocation(line: 169, column: 54, scope: !371)
!413 = !DILocation(line: 169, column: 46, scope: !371)
!414 = !DILocation(line: 169, column: 21, scope: !371)
!415 = !DILocation(line: 171, column: 21, scope: !416)
!416 = distinct !DILexicalBlock(scope: !371, file: !2, line: 171, column: 21)
!417 = !DILocation(line: 171, column: 28, scope: !416)
!418 = !DILocation(line: 171, column: 21, scope: !371)
!419 = !DILocation(line: 172, column: 28, scope: !416)
!420 = !DILocation(line: 172, column: 34, scope: !416)
!421 = !DILocation(line: 172, column: 26, scope: !416)
!422 = !DILocation(line: 172, column: 21, scope: !416)
!423 = !DILocation(line: 175, column: 25, scope: !424)
!424 = distinct !DILexicalBlock(scope: !416, file: !2, line: 175, column: 25)
!425 = !DILocation(line: 175, column: 32, scope: !424)
!426 = !DILocation(line: 175, column: 38, scope: !424)
!427 = !DILocation(line: 175, column: 30, scope: !424)
!428 = !DILocation(line: 175, column: 25, scope: !416)
!429 = !DILocation(line: 176, column: 25, scope: !424)
!430 = !DILocation(line: 176, column: 33, scope: !424)
!431 = !DILocation(line: 176, column: 32, scope: !424)
!432 = !DILocation(line: 176, column: 45, scope: !424)
!433 = distinct !{!433, !429, !434, !192}
!434 = !DILocation(line: 176, column: 52, scope: !424)
!435 = !DILocation(line: 177, column: 13, scope: !371)
!436 = !DILocation(line: 177, column: 24, scope: !437)
!437 = distinct !DILexicalBlock(scope: !368, file: !2, line: 177, column: 24)
!438 = !DILocation(line: 0, scope: !437)
!439 = !DILocation(line: 177, column: 24, scope: !368)
!440 = !DILocation(line: 178, column: 17, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !2, line: 177, column: 73)
!442 = !DILocation(line: 178, column: 23, scope: !441)
!443 = !DILocation(line: 179, column: 17, scope: !441)
!444 = !DILocation(line: 182, column: 5, scope: !183)
!445 = !DILocation(line: 82, column: 46, scope: !179)
!446 = !DILocation(line: 82, column: 44, scope: !179)
!447 = !DILocation(line: 82, column: 5, scope: !179)
!448 = distinct !{!448, !181, !449, !192}
!449 = !DILocation(line: 182, column: 5, scope: !174)
!450 = !DILocation(line: 184, column: 9, scope: !451)
!451 = distinct !DILexicalBlock(scope: !37, file: !2, line: 184, column: 9)
!452 = !DILocation(line: 184, column: 16, scope: !451)
!453 = !DILocation(line: 184, column: 22, scope: !451)
!454 = !DILocation(line: 184, column: 14, scope: !451)
!455 = !DILocation(line: 184, column: 26, scope: !451)
!456 = !DILocation(line: 184, column: 29, scope: !451)
!457 = !DILocation(line: 184, column: 38, scope: !451)
!458 = !DILocation(line: 184, column: 9, scope: !37)
!459 = !DILocation(line: 185, column: 9, scope: !451)
!460 = !DILocation(line: 186, column: 6, scope: !37)
!461 = !DILocation(line: 186, column: 11, scope: !37)
!462 = !DILocation(line: 188, column: 5, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !2, line: 188, column: 5)
!464 = distinct !DILexicalBlock(scope: !37, file: !2, line: 188, column: 5)
!465 = !DILocation(line: 188, column: 5, scope: !464)
!466 = !DILocation(line: 189, column: 12, scope: !37)
!467 = !DILocation(line: 189, column: 5, scope: !37)
!468 = !DILabel(scope: !37, name: "error", file: !2, line: 191)
!469 = !DILocation(line: 191, column: 3, scope: !37)
!470 = !DILocation(line: 192, column: 5, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !2, line: 192, column: 5)
!472 = distinct !DILexicalBlock(scope: !37, file: !2, line: 192, column: 5)
!473 = !DILocation(line: 192, column: 5, scope: !472)
!474 = !DILocation(line: 193, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !37, file: !2, line: 193, column: 9)
!476 = !DILocation(line: 193, column: 18, scope: !475)
!477 = !DILocation(line: 193, column: 9, scope: !37)
!478 = !DILocation(line: 194, column: 14, scope: !475)
!479 = !DILocation(line: 194, column: 9, scope: !475)
!480 = !DILocation(line: 195, column: 5, scope: !37)
!481 = !DILocation(line: 196, column: 1, scope: !37)
!482 = distinct !DISubprogram(name: "realpathat", scope: !2, file: !2, line: 199, type: !483, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !81)
!483 = !DISubroutineType(types: !484)
!484 = !{!25, !26, !25, !40, !25}
!485 = !DILocalVariable(name: "dirfd", arg: 1, scope: !482, file: !2, line: 199, type: !26)
!486 = !DILocation(line: 199, column: 16, scope: !482)
!487 = !DILocalVariable(name: "dirfdpath", arg: 2, scope: !482, file: !2, line: 199, type: !25)
!488 = !DILocation(line: 199, column: 29, scope: !482)
!489 = !DILocalVariable(name: "name", arg: 3, scope: !482, file: !2, line: 199, type: !40)
!490 = !DILocation(line: 199, column: 52, scope: !482)
!491 = !DILocalVariable(name: "resolved", arg: 4, scope: !482, file: !2, line: 199, type: !25)
!492 = !DILocation(line: 199, column: 64, scope: !482)
!493 = !DILocalVariable(name: "st", scope: !482, file: !2, line: 201, type: !42)
!494 = !DILocation(line: 201, column: 17, scope: !482)
!495 = !DILocation(line: 202, column: 24, scope: !482)
!496 = !DILocation(line: 202, column: 31, scope: !482)
!497 = !DILocation(line: 202, column: 42, scope: !482)
!498 = !DILocation(line: 202, column: 48, scope: !482)
!499 = !DILocation(line: 202, column: 12, scope: !482)
!500 = !DILocation(line: 202, column: 5, scope: !482)
