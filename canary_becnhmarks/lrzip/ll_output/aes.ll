; ModuleID = './aes.c'
source_filename = "./aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_context = type { i32, ptr, [68 x i64] }

@aes_init_done = internal global i32 0, align 4
@RCON = internal global [10 x i64] zeroinitializer, align 16
@FSb = internal global [256 x i8] zeroinitializer, align 16
@RT0 = internal global [256 x i64] zeroinitializer, align 16
@RT1 = internal global [256 x i64] zeroinitializer, align 16
@RT2 = internal global [256 x i64] zeroinitializer, align 16
@RT3 = internal global [256 x i64] zeroinitializer, align 16
@RSb = internal global [256 x i8] zeroinitializer, align 16
@FT0 = internal global [256 x i64] zeroinitializer, align 16
@FT1 = internal global [256 x i64] zeroinitializer, align 16
@FT2 = internal global [256 x i64] zeroinitializer, align 16
@FT3 = internal global [256 x i64] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_setkey_enc(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %10 = load i32, ptr @aes_init_done, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  call void @aes_gen_tables()
  store i32 1, ptr @aes_init_done, align 4
  br label %13

13:                                               ; preds = %12, %3
  %14 = load i32, ptr %7, align 4
  switch i32 %14, label %24 [
    i32 128, label %15
    i32 192, label %18
    i32 256, label %21
  ]

15:                                               ; preds = %13
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.aes_context, ptr %16, i32 0, i32 0
  store i32 10, ptr %17, align 8
  br label %25

18:                                               ; preds = %13
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds %struct.aes_context, ptr %19, i32 0, i32 0
  store i32 12, ptr %20, align 8
  br label %25

21:                                               ; preds = %13
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.aes_context, ptr %22, i32 0, i32 0
  store i32 14, ptr %23, align 8
  br label %25

24:                                               ; preds = %13
  store i32 -2048, ptr %4, align 4
  br label %433

25:                                               ; preds = %21, %18, %15
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds %struct.aes_context, ptr %26, i32 0, i32 2
  %28 = getelementptr inbounds [68 x i64], ptr %27, i64 0, i64 0
  store ptr %28, ptr %9, align 8
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr inbounds %struct.aes_context, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 8
  store i32 0, ptr %8, align 4
  br label %31

31:                                               ; preds = %78, %25
  %32 = load i32, ptr %8, align 4
  %33 = load i32, ptr %7, align 4
  %34 = ashr i32 %33, 5
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %81

36:                                               ; preds = %31
  %37 = load ptr, ptr %6, align 8
  %38 = load i32, ptr %8, align 4
  %39 = shl i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %37, i64 %40
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i64
  %44 = load ptr, ptr %6, align 8
  %45 = load i32, ptr %8, align 4
  %46 = shl i32 %45, 2
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %44, i64 %48
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i64
  %52 = shl i64 %51, 8
  %53 = or i64 %43, %52
  %54 = load ptr, ptr %6, align 8
  %55 = load i32, ptr %8, align 4
  %56 = shl i32 %55, 2
  %57 = add nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %54, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i64
  %62 = shl i64 %61, 16
  %63 = or i64 %53, %62
  %64 = load ptr, ptr %6, align 8
  %65 = load i32, ptr %8, align 4
  %66 = shl i32 %65, 2
  %67 = add nsw i32 %66, 3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %64, i64 %68
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i64
  %72 = shl i64 %71, 24
  %73 = or i64 %63, %72
  %74 = load ptr, ptr %9, align 8
  %75 = load i32, ptr %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, ptr %74, i64 %76
  store i64 %73, ptr %77, align 8
  br label %78

78:                                               ; preds = %36
  %79 = load i32, ptr %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %8, align 4
  br label %31, !llvm.loop !6

81:                                               ; preds = %31
  %82 = load ptr, ptr %5, align 8
  %83 = getelementptr inbounds %struct.aes_context, ptr %82, i32 0, i32 0
  %84 = load i32, ptr %83, align 8
  switch i32 %84, label %431 [
    i32 10, label %85
    i32 12, label %171
    i32 14, label %275
  ]

85:                                               ; preds = %81
  store i32 0, ptr %8, align 4
  br label %86

86:                                               ; preds = %165, %85
  %87 = load i32, ptr %8, align 4
  %88 = icmp slt i32 %87, 10
  br i1 %88, label %89, label %170

89:                                               ; preds = %86
  %90 = load ptr, ptr %9, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 0
  %92 = load i64, ptr %91, align 8
  %93 = load i32, ptr %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [10 x i64], ptr @RCON, i64 0, i64 %94
  %96 = load i64, ptr %95, align 8
  %97 = xor i64 %92, %96
  %98 = load ptr, ptr %9, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  %100 = load i64, ptr %99, align 8
  %101 = lshr i64 %100, 8
  %102 = and i64 %101, 255
  %103 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %102
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i64
  %106 = xor i64 %97, %105
  %107 = load ptr, ptr %9, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 3
  %109 = load i64, ptr %108, align 8
  %110 = lshr i64 %109, 16
  %111 = and i64 %110, 255
  %112 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %111
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i64
  %115 = shl i64 %114, 8
  %116 = xor i64 %106, %115
  %117 = load ptr, ptr %9, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 3
  %119 = load i64, ptr %118, align 8
  %120 = lshr i64 %119, 24
  %121 = and i64 %120, 255
  %122 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i64
  %125 = shl i64 %124, 16
  %126 = xor i64 %116, %125
  %127 = load ptr, ptr %9, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 3
  %129 = load i64, ptr %128, align 8
  %130 = and i64 %129, 255
  %131 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i64
  %134 = shl i64 %133, 24
  %135 = xor i64 %126, %134
  %136 = load ptr, ptr %9, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 4
  store i64 %135, ptr %137, align 8
  %138 = load ptr, ptr %9, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 1
  %140 = load i64, ptr %139, align 8
  %141 = load ptr, ptr %9, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 4
  %143 = load i64, ptr %142, align 8
  %144 = xor i64 %140, %143
  %145 = load ptr, ptr %9, align 8
  %146 = getelementptr inbounds i64, ptr %145, i64 5
  store i64 %144, ptr %146, align 8
  %147 = load ptr, ptr %9, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 2
  %149 = load i64, ptr %148, align 8
  %150 = load ptr, ptr %9, align 8
  %151 = getelementptr inbounds i64, ptr %150, i64 5
  %152 = load i64, ptr %151, align 8
  %153 = xor i64 %149, %152
  %154 = load ptr, ptr %9, align 8
  %155 = getelementptr inbounds i64, ptr %154, i64 6
  store i64 %153, ptr %155, align 8
  %156 = load ptr, ptr %9, align 8
  %157 = getelementptr inbounds i64, ptr %156, i64 3
  %158 = load i64, ptr %157, align 8
  %159 = load ptr, ptr %9, align 8
  %160 = getelementptr inbounds i64, ptr %159, i64 6
  %161 = load i64, ptr %160, align 8
  %162 = xor i64 %158, %161
  %163 = load ptr, ptr %9, align 8
  %164 = getelementptr inbounds i64, ptr %163, i64 7
  store i64 %162, ptr %164, align 8
  br label %165

165:                                              ; preds = %89
  %166 = load i32, ptr %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %8, align 4
  %168 = load ptr, ptr %9, align 8
  %169 = getelementptr inbounds i64, ptr %168, i64 4
  store ptr %169, ptr %9, align 8
  br label %86, !llvm.loop !8

170:                                              ; preds = %86
  br label %432

171:                                              ; preds = %81
  store i32 0, ptr %8, align 4
  br label %172

172:                                              ; preds = %269, %171
  %173 = load i32, ptr %8, align 4
  %174 = icmp slt i32 %173, 8
  br i1 %174, label %175, label %274

175:                                              ; preds = %172
  %176 = load ptr, ptr %9, align 8
  %177 = getelementptr inbounds i64, ptr %176, i64 0
  %178 = load i64, ptr %177, align 8
  %179 = load i32, ptr %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [10 x i64], ptr @RCON, i64 0, i64 %180
  %182 = load i64, ptr %181, align 8
  %183 = xor i64 %178, %182
  %184 = load ptr, ptr %9, align 8
  %185 = getelementptr inbounds i64, ptr %184, i64 5
  %186 = load i64, ptr %185, align 8
  %187 = lshr i64 %186, 8
  %188 = and i64 %187, 255
  %189 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %188
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i64
  %192 = xor i64 %183, %191
  %193 = load ptr, ptr %9, align 8
  %194 = getelementptr inbounds i64, ptr %193, i64 5
  %195 = load i64, ptr %194, align 8
  %196 = lshr i64 %195, 16
  %197 = and i64 %196, 255
  %198 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %197
  %199 = load i8, ptr %198, align 1
  %200 = zext i8 %199 to i64
  %201 = shl i64 %200, 8
  %202 = xor i64 %192, %201
  %203 = load ptr, ptr %9, align 8
  %204 = getelementptr inbounds i64, ptr %203, i64 5
  %205 = load i64, ptr %204, align 8
  %206 = lshr i64 %205, 24
  %207 = and i64 %206, 255
  %208 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %207
  %209 = load i8, ptr %208, align 1
  %210 = zext i8 %209 to i64
  %211 = shl i64 %210, 16
  %212 = xor i64 %202, %211
  %213 = load ptr, ptr %9, align 8
  %214 = getelementptr inbounds i64, ptr %213, i64 5
  %215 = load i64, ptr %214, align 8
  %216 = and i64 %215, 255
  %217 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %216
  %218 = load i8, ptr %217, align 1
  %219 = zext i8 %218 to i64
  %220 = shl i64 %219, 24
  %221 = xor i64 %212, %220
  %222 = load ptr, ptr %9, align 8
  %223 = getelementptr inbounds i64, ptr %222, i64 6
  store i64 %221, ptr %223, align 8
  %224 = load ptr, ptr %9, align 8
  %225 = getelementptr inbounds i64, ptr %224, i64 1
  %226 = load i64, ptr %225, align 8
  %227 = load ptr, ptr %9, align 8
  %228 = getelementptr inbounds i64, ptr %227, i64 6
  %229 = load i64, ptr %228, align 8
  %230 = xor i64 %226, %229
  %231 = load ptr, ptr %9, align 8
  %232 = getelementptr inbounds i64, ptr %231, i64 7
  store i64 %230, ptr %232, align 8
  %233 = load ptr, ptr %9, align 8
  %234 = getelementptr inbounds i64, ptr %233, i64 2
  %235 = load i64, ptr %234, align 8
  %236 = load ptr, ptr %9, align 8
  %237 = getelementptr inbounds i64, ptr %236, i64 7
  %238 = load i64, ptr %237, align 8
  %239 = xor i64 %235, %238
  %240 = load ptr, ptr %9, align 8
  %241 = getelementptr inbounds i64, ptr %240, i64 8
  store i64 %239, ptr %241, align 8
  %242 = load ptr, ptr %9, align 8
  %243 = getelementptr inbounds i64, ptr %242, i64 3
  %244 = load i64, ptr %243, align 8
  %245 = load ptr, ptr %9, align 8
  %246 = getelementptr inbounds i64, ptr %245, i64 8
  %247 = load i64, ptr %246, align 8
  %248 = xor i64 %244, %247
  %249 = load ptr, ptr %9, align 8
  %250 = getelementptr inbounds i64, ptr %249, i64 9
  store i64 %248, ptr %250, align 8
  %251 = load ptr, ptr %9, align 8
  %252 = getelementptr inbounds i64, ptr %251, i64 4
  %253 = load i64, ptr %252, align 8
  %254 = load ptr, ptr %9, align 8
  %255 = getelementptr inbounds i64, ptr %254, i64 9
  %256 = load i64, ptr %255, align 8
  %257 = xor i64 %253, %256
  %258 = load ptr, ptr %9, align 8
  %259 = getelementptr inbounds i64, ptr %258, i64 10
  store i64 %257, ptr %259, align 8
  %260 = load ptr, ptr %9, align 8
  %261 = getelementptr inbounds i64, ptr %260, i64 5
  %262 = load i64, ptr %261, align 8
  %263 = load ptr, ptr %9, align 8
  %264 = getelementptr inbounds i64, ptr %263, i64 10
  %265 = load i64, ptr %264, align 8
  %266 = xor i64 %262, %265
  %267 = load ptr, ptr %9, align 8
  %268 = getelementptr inbounds i64, ptr %267, i64 11
  store i64 %266, ptr %268, align 8
  br label %269

269:                                              ; preds = %175
  %270 = load i32, ptr %8, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, ptr %8, align 4
  %272 = load ptr, ptr %9, align 8
  %273 = getelementptr inbounds i64, ptr %272, i64 6
  store ptr %273, ptr %9, align 8
  br label %172, !llvm.loop !9

274:                                              ; preds = %172
  br label %432

275:                                              ; preds = %81
  store i32 0, ptr %8, align 4
  br label %276

276:                                              ; preds = %425, %275
  %277 = load i32, ptr %8, align 4
  %278 = icmp slt i32 %277, 7
  br i1 %278, label %279, label %430

279:                                              ; preds = %276
  %280 = load ptr, ptr %9, align 8
  %281 = getelementptr inbounds i64, ptr %280, i64 0
  %282 = load i64, ptr %281, align 8
  %283 = load i32, ptr %8, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [10 x i64], ptr @RCON, i64 0, i64 %284
  %286 = load i64, ptr %285, align 8
  %287 = xor i64 %282, %286
  %288 = load ptr, ptr %9, align 8
  %289 = getelementptr inbounds i64, ptr %288, i64 7
  %290 = load i64, ptr %289, align 8
  %291 = lshr i64 %290, 8
  %292 = and i64 %291, 255
  %293 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %292
  %294 = load i8, ptr %293, align 1
  %295 = zext i8 %294 to i64
  %296 = xor i64 %287, %295
  %297 = load ptr, ptr %9, align 8
  %298 = getelementptr inbounds i64, ptr %297, i64 7
  %299 = load i64, ptr %298, align 8
  %300 = lshr i64 %299, 16
  %301 = and i64 %300, 255
  %302 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %301
  %303 = load i8, ptr %302, align 1
  %304 = zext i8 %303 to i64
  %305 = shl i64 %304, 8
  %306 = xor i64 %296, %305
  %307 = load ptr, ptr %9, align 8
  %308 = getelementptr inbounds i64, ptr %307, i64 7
  %309 = load i64, ptr %308, align 8
  %310 = lshr i64 %309, 24
  %311 = and i64 %310, 255
  %312 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %311
  %313 = load i8, ptr %312, align 1
  %314 = zext i8 %313 to i64
  %315 = shl i64 %314, 16
  %316 = xor i64 %306, %315
  %317 = load ptr, ptr %9, align 8
  %318 = getelementptr inbounds i64, ptr %317, i64 7
  %319 = load i64, ptr %318, align 8
  %320 = and i64 %319, 255
  %321 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %320
  %322 = load i8, ptr %321, align 1
  %323 = zext i8 %322 to i64
  %324 = shl i64 %323, 24
  %325 = xor i64 %316, %324
  %326 = load ptr, ptr %9, align 8
  %327 = getelementptr inbounds i64, ptr %326, i64 8
  store i64 %325, ptr %327, align 8
  %328 = load ptr, ptr %9, align 8
  %329 = getelementptr inbounds i64, ptr %328, i64 1
  %330 = load i64, ptr %329, align 8
  %331 = load ptr, ptr %9, align 8
  %332 = getelementptr inbounds i64, ptr %331, i64 8
  %333 = load i64, ptr %332, align 8
  %334 = xor i64 %330, %333
  %335 = load ptr, ptr %9, align 8
  %336 = getelementptr inbounds i64, ptr %335, i64 9
  store i64 %334, ptr %336, align 8
  %337 = load ptr, ptr %9, align 8
  %338 = getelementptr inbounds i64, ptr %337, i64 2
  %339 = load i64, ptr %338, align 8
  %340 = load ptr, ptr %9, align 8
  %341 = getelementptr inbounds i64, ptr %340, i64 9
  %342 = load i64, ptr %341, align 8
  %343 = xor i64 %339, %342
  %344 = load ptr, ptr %9, align 8
  %345 = getelementptr inbounds i64, ptr %344, i64 10
  store i64 %343, ptr %345, align 8
  %346 = load ptr, ptr %9, align 8
  %347 = getelementptr inbounds i64, ptr %346, i64 3
  %348 = load i64, ptr %347, align 8
  %349 = load ptr, ptr %9, align 8
  %350 = getelementptr inbounds i64, ptr %349, i64 10
  %351 = load i64, ptr %350, align 8
  %352 = xor i64 %348, %351
  %353 = load ptr, ptr %9, align 8
  %354 = getelementptr inbounds i64, ptr %353, i64 11
  store i64 %352, ptr %354, align 8
  %355 = load ptr, ptr %9, align 8
  %356 = getelementptr inbounds i64, ptr %355, i64 4
  %357 = load i64, ptr %356, align 8
  %358 = load ptr, ptr %9, align 8
  %359 = getelementptr inbounds i64, ptr %358, i64 11
  %360 = load i64, ptr %359, align 8
  %361 = and i64 %360, 255
  %362 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %361
  %363 = load i8, ptr %362, align 1
  %364 = zext i8 %363 to i64
  %365 = xor i64 %357, %364
  %366 = load ptr, ptr %9, align 8
  %367 = getelementptr inbounds i64, ptr %366, i64 11
  %368 = load i64, ptr %367, align 8
  %369 = lshr i64 %368, 8
  %370 = and i64 %369, 255
  %371 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %370
  %372 = load i8, ptr %371, align 1
  %373 = zext i8 %372 to i64
  %374 = shl i64 %373, 8
  %375 = xor i64 %365, %374
  %376 = load ptr, ptr %9, align 8
  %377 = getelementptr inbounds i64, ptr %376, i64 11
  %378 = load i64, ptr %377, align 8
  %379 = lshr i64 %378, 16
  %380 = and i64 %379, 255
  %381 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %380
  %382 = load i8, ptr %381, align 1
  %383 = zext i8 %382 to i64
  %384 = shl i64 %383, 16
  %385 = xor i64 %375, %384
  %386 = load ptr, ptr %9, align 8
  %387 = getelementptr inbounds i64, ptr %386, i64 11
  %388 = load i64, ptr %387, align 8
  %389 = lshr i64 %388, 24
  %390 = and i64 %389, 255
  %391 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %390
  %392 = load i8, ptr %391, align 1
  %393 = zext i8 %392 to i64
  %394 = shl i64 %393, 24
  %395 = xor i64 %385, %394
  %396 = load ptr, ptr %9, align 8
  %397 = getelementptr inbounds i64, ptr %396, i64 12
  store i64 %395, ptr %397, align 8
  %398 = load ptr, ptr %9, align 8
  %399 = getelementptr inbounds i64, ptr %398, i64 5
  %400 = load i64, ptr %399, align 8
  %401 = load ptr, ptr %9, align 8
  %402 = getelementptr inbounds i64, ptr %401, i64 12
  %403 = load i64, ptr %402, align 8
  %404 = xor i64 %400, %403
  %405 = load ptr, ptr %9, align 8
  %406 = getelementptr inbounds i64, ptr %405, i64 13
  store i64 %404, ptr %406, align 8
  %407 = load ptr, ptr %9, align 8
  %408 = getelementptr inbounds i64, ptr %407, i64 6
  %409 = load i64, ptr %408, align 8
  %410 = load ptr, ptr %9, align 8
  %411 = getelementptr inbounds i64, ptr %410, i64 13
  %412 = load i64, ptr %411, align 8
  %413 = xor i64 %409, %412
  %414 = load ptr, ptr %9, align 8
  %415 = getelementptr inbounds i64, ptr %414, i64 14
  store i64 %413, ptr %415, align 8
  %416 = load ptr, ptr %9, align 8
  %417 = getelementptr inbounds i64, ptr %416, i64 7
  %418 = load i64, ptr %417, align 8
  %419 = load ptr, ptr %9, align 8
  %420 = getelementptr inbounds i64, ptr %419, i64 14
  %421 = load i64, ptr %420, align 8
  %422 = xor i64 %418, %421
  %423 = load ptr, ptr %9, align 8
  %424 = getelementptr inbounds i64, ptr %423, i64 15
  store i64 %422, ptr %424, align 8
  br label %425

425:                                              ; preds = %279
  %426 = load i32, ptr %8, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, ptr %8, align 4
  %428 = load ptr, ptr %9, align 8
  %429 = getelementptr inbounds i64, ptr %428, i64 8
  store ptr %429, ptr %9, align 8
  br label %276, !llvm.loop !10

430:                                              ; preds = %276
  br label %432

431:                                              ; preds = %81
  br label %432

432:                                              ; preds = %431, %430, %274, %170
  store i32 0, ptr %4, align 4
  br label %433

433:                                              ; preds = %432, %24
  %434 = load i32, ptr %4, align 4
  ret i32 %434
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_gen_tables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [256 x i32], align 16
  %6 = alloca [256 x i32], align 16
  store i32 0, ptr %1, align 4
  store i32 1, ptr %2, align 4
  br label %7

7:                                                ; preds = %30, %0
  %8 = load i32, ptr %1, align 4
  %9 = icmp slt i32 %8, 256
  br i1 %9, label %10, label %33

10:                                               ; preds = %7
  %11 = load i32, ptr %2, align 4
  %12 = load i32, ptr %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %13
  store i32 %11, ptr %14, align 4
  %15 = load i32, ptr %1, align 4
  %16 = load i32, ptr %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %17
  store i32 %15, ptr %18, align 4
  %19 = load i32, ptr %2, align 4
  %20 = load i32, ptr %2, align 4
  %21 = shl i32 %20, 1
  %22 = load i32, ptr %2, align 4
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 27, i32 0
  %27 = xor i32 %21, %26
  %28 = xor i32 %19, %27
  %29 = and i32 %28, 255
  store i32 %29, ptr %2, align 4
  br label %30

30:                                               ; preds = %10
  %31 = load i32, ptr %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %1, align 4
  br label %7, !llvm.loop !11

33:                                               ; preds = %7
  store i32 0, ptr %1, align 4
  store i32 1, ptr %2, align 4
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, ptr %1, align 4
  %36 = icmp slt i32 %35, 10
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load i32, ptr %2, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32, ptr %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [10 x i64], ptr @RCON, i64 0, i64 %41
  store i64 %39, ptr %42, align 8
  %43 = load i32, ptr %2, align 4
  %44 = shl i32 %43, 1
  %45 = load i32, ptr %2, align 4
  %46 = and i32 %45, 128
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 27, i32 0
  %50 = xor i32 %44, %49
  %51 = and i32 %50, 255
  store i32 %51, ptr %2, align 4
  br label %52

52:                                               ; preds = %37
  %53 = load i32, ptr %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %1, align 4
  br label %34, !llvm.loop !12

55:                                               ; preds = %34
  store i8 99, ptr @FSb, align 16
  store i8 0, ptr getelementptr inbounds ([256 x i8], ptr @RSb, i64 0, i64 99), align 1
  store i32 1, ptr %1, align 4
  br label %56

56:                                               ; preds = %116, %55
  %57 = load i32, ptr %1, align 4
  %58 = icmp slt i32 %57, 256
  br i1 %58, label %59, label %119

59:                                               ; preds = %56
  %60 = load i32, ptr %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4
  %64 = sub nsw i32 255, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4
  store i32 %67, ptr %2, align 4
  %68 = load i32, ptr %2, align 4
  store i32 %68, ptr %3, align 4
  %69 = load i32, ptr %3, align 4
  %70 = shl i32 %69, 1
  %71 = load i32, ptr %3, align 4
  %72 = ashr i32 %71, 7
  %73 = or i32 %70, %72
  %74 = and i32 %73, 255
  store i32 %74, ptr %3, align 4
  %75 = load i32, ptr %3, align 4
  %76 = load i32, ptr %2, align 4
  %77 = xor i32 %76, %75
  store i32 %77, ptr %2, align 4
  %78 = load i32, ptr %3, align 4
  %79 = shl i32 %78, 1
  %80 = load i32, ptr %3, align 4
  %81 = ashr i32 %80, 7
  %82 = or i32 %79, %81
  %83 = and i32 %82, 255
  store i32 %83, ptr %3, align 4
  %84 = load i32, ptr %3, align 4
  %85 = load i32, ptr %2, align 4
  %86 = xor i32 %85, %84
  store i32 %86, ptr %2, align 4
  %87 = load i32, ptr %3, align 4
  %88 = shl i32 %87, 1
  %89 = load i32, ptr %3, align 4
  %90 = ashr i32 %89, 7
  %91 = or i32 %88, %90
  %92 = and i32 %91, 255
  store i32 %92, ptr %3, align 4
  %93 = load i32, ptr %3, align 4
  %94 = load i32, ptr %2, align 4
  %95 = xor i32 %94, %93
  store i32 %95, ptr %2, align 4
  %96 = load i32, ptr %3, align 4
  %97 = shl i32 %96, 1
  %98 = load i32, ptr %3, align 4
  %99 = ashr i32 %98, 7
  %100 = or i32 %97, %99
  %101 = and i32 %100, 255
  store i32 %101, ptr %3, align 4
  %102 = load i32, ptr %3, align 4
  %103 = xor i32 %102, 99
  %104 = load i32, ptr %2, align 4
  %105 = xor i32 %104, %103
  store i32 %105, ptr %2, align 4
  %106 = load i32, ptr %2, align 4
  %107 = trunc i32 %106 to i8
  %108 = load i32, ptr %1, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %109
  store i8 %107, ptr %110, align 1
  %111 = load i32, ptr %1, align 4
  %112 = trunc i32 %111 to i8
  %113 = load i32, ptr %2, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %114
  store i8 %112, ptr %115, align 1
  br label %116

116:                                              ; preds = %59
  %117 = load i32, ptr %1, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr %1, align 4
  br label %56, !llvm.loop !13

119:                                              ; preds = %56
  store i32 0, ptr %1, align 4
  br label %120

120:                                              ; preds = %335, %119
  %121 = load i32, ptr %1, align 4
  %122 = icmp slt i32 %121, 256
  br i1 %122, label %123, label %338

123:                                              ; preds = %120
  %124 = load i32, ptr %1, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %125
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  store i32 %128, ptr %2, align 4
  %129 = load i32, ptr %2, align 4
  %130 = shl i32 %129, 1
  %131 = load i32, ptr %2, align 4
  %132 = and i32 %131, 128
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 27, i32 0
  %136 = xor i32 %130, %135
  %137 = and i32 %136, 255
  store i32 %137, ptr %3, align 4
  %138 = load i32, ptr %3, align 4
  %139 = load i32, ptr %2, align 4
  %140 = xor i32 %138, %139
  %141 = and i32 %140, 255
  store i32 %141, ptr %4, align 4
  %142 = load i32, ptr %3, align 4
  %143 = sext i32 %142 to i64
  %144 = load i32, ptr %2, align 4
  %145 = sext i32 %144 to i64
  %146 = shl i64 %145, 8
  %147 = xor i64 %143, %146
  %148 = load i32, ptr %2, align 4
  %149 = sext i32 %148 to i64
  %150 = shl i64 %149, 16
  %151 = xor i64 %147, %150
  %152 = load i32, ptr %4, align 4
  %153 = sext i32 %152 to i64
  %154 = shl i64 %153, 24
  %155 = xor i64 %151, %154
  %156 = load i32, ptr %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %157
  store i64 %155, ptr %158, align 8
  %159 = load i32, ptr %1, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %160
  %162 = load i64, ptr %161, align 8
  %163 = shl i64 %162, 8
  %164 = and i64 %163, 4294967295
  %165 = load i32, ptr %1, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %166
  %168 = load i64, ptr %167, align 8
  %169 = lshr i64 %168, 24
  %170 = or i64 %164, %169
  %171 = load i32, ptr %1, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %172
  store i64 %170, ptr %173, align 8
  %174 = load i32, ptr %1, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %175
  %177 = load i64, ptr %176, align 8
  %178 = shl i64 %177, 8
  %179 = and i64 %178, 4294967295
  %180 = load i32, ptr %1, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %181
  %183 = load i64, ptr %182, align 8
  %184 = lshr i64 %183, 24
  %185 = or i64 %179, %184
  %186 = load i32, ptr %1, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %187
  store i64 %185, ptr %188, align 8
  %189 = load i32, ptr %1, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %190
  %192 = load i64, ptr %191, align 8
  %193 = shl i64 %192, 8
  %194 = and i64 %193, 4294967295
  %195 = load i32, ptr %1, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %196
  %198 = load i64, ptr %197, align 8
  %199 = lshr i64 %198, 24
  %200 = or i64 %194, %199
  %201 = load i32, ptr %1, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %202
  store i64 %200, ptr %203, align 8
  %204 = load i32, ptr %1, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %205
  %207 = load i8, ptr %206, align 1
  %208 = zext i8 %207 to i32
  store i32 %208, ptr %2, align 4
  %209 = load i32, ptr %2, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %123
  %212 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 14
  %213 = load i32, ptr %212, align 8
  %214 = load i32, ptr %2, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %215
  %217 = load i32, ptr %216, align 4
  %218 = add nsw i32 %213, %217
  %219 = srem i32 %218, 255
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %220
  %222 = load i32, ptr %221, align 4
  br label %224

223:                                              ; preds = %123
  br label %224

224:                                              ; preds = %223, %211
  %225 = phi i32 [ %222, %211 ], [ 0, %223 ]
  %226 = sext i32 %225 to i64
  %227 = load i32, ptr %2, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %241

229:                                              ; preds = %224
  %230 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 9
  %231 = load i32, ptr %230, align 4
  %232 = load i32, ptr %2, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %233
  %235 = load i32, ptr %234, align 4
  %236 = add nsw i32 %231, %235
  %237 = srem i32 %236, 255
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %238
  %240 = load i32, ptr %239, align 4
  br label %242

241:                                              ; preds = %224
  br label %242

242:                                              ; preds = %241, %229
  %243 = phi i32 [ %240, %229 ], [ 0, %241 ]
  %244 = sext i32 %243 to i64
  %245 = shl i64 %244, 8
  %246 = xor i64 %226, %245
  %247 = load i32, ptr %2, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %242
  %250 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 13
  %251 = load i32, ptr %250, align 4
  %252 = load i32, ptr %2, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4
  %256 = add nsw i32 %251, %255
  %257 = srem i32 %256, 255
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %258
  %260 = load i32, ptr %259, align 4
  br label %262

261:                                              ; preds = %242
  br label %262

262:                                              ; preds = %261, %249
  %263 = phi i32 [ %260, %249 ], [ 0, %261 ]
  %264 = sext i32 %263 to i64
  %265 = shl i64 %264, 16
  %266 = xor i64 %246, %265
  %267 = load i32, ptr %2, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %281

269:                                              ; preds = %262
  %270 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 11
  %271 = load i32, ptr %270, align 4
  %272 = load i32, ptr %2, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %273
  %275 = load i32, ptr %274, align 4
  %276 = add nsw i32 %271, %275
  %277 = srem i32 %276, 255
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %278
  %280 = load i32, ptr %279, align 4
  br label %282

281:                                              ; preds = %262
  br label %282

282:                                              ; preds = %281, %269
  %283 = phi i32 [ %280, %269 ], [ 0, %281 ]
  %284 = sext i32 %283 to i64
  %285 = shl i64 %284, 24
  %286 = xor i64 %266, %285
  %287 = load i32, ptr %1, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %288
  store i64 %286, ptr %289, align 8
  %290 = load i32, ptr %1, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %291
  %293 = load i64, ptr %292, align 8
  %294 = shl i64 %293, 8
  %295 = and i64 %294, 4294967295
  %296 = load i32, ptr %1, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %297
  %299 = load i64, ptr %298, align 8
  %300 = lshr i64 %299, 24
  %301 = or i64 %295, %300
  %302 = load i32, ptr %1, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %303
  store i64 %301, ptr %304, align 8
  %305 = load i32, ptr %1, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %306
  %308 = load i64, ptr %307, align 8
  %309 = shl i64 %308, 8
  %310 = and i64 %309, 4294967295
  %311 = load i32, ptr %1, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %312
  %314 = load i64, ptr %313, align 8
  %315 = lshr i64 %314, 24
  %316 = or i64 %310, %315
  %317 = load i32, ptr %1, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %318
  store i64 %316, ptr %319, align 8
  %320 = load i32, ptr %1, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %321
  %323 = load i64, ptr %322, align 8
  %324 = shl i64 %323, 8
  %325 = and i64 %324, 4294967295
  %326 = load i32, ptr %1, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %327
  %329 = load i64, ptr %328, align 8
  %330 = lshr i64 %329, 24
  %331 = or i64 %325, %330
  %332 = load i32, ptr %1, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %333
  store i64 %331, ptr %334, align 8
  br label %335

335:                                              ; preds = %282
  %336 = load i32, ptr %1, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, ptr %1, align 4
  br label %120, !llvm.loop !14

338:                                              ; preds = %120
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_setkey_dec(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aes_context, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %14 = load i32, ptr %7, align 4
  switch i32 %14, label %24 [
    i32 128, label %15
    i32 192, label %18
    i32 256, label %21
  ]

15:                                               ; preds = %3
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.aes_context, ptr %16, i32 0, i32 0
  store i32 10, ptr %17, align 8
  br label %25

18:                                               ; preds = %3
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds %struct.aes_context, ptr %19, i32 0, i32 0
  store i32 12, ptr %20, align 8
  br label %25

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.aes_context, ptr %22, i32 0, i32 0
  store i32 14, ptr %23, align 8
  br label %25

24:                                               ; preds = %3
  store i32 -2048, ptr %4, align 4
  br label %152

25:                                               ; preds = %21, %18, %15
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds %struct.aes_context, ptr %26, i32 0, i32 2
  %28 = getelementptr inbounds [68 x i64], ptr %27, i64 0, i64 0
  store ptr %28, ptr %11, align 8
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr inbounds %struct.aes_context, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 8
  %31 = load ptr, ptr %6, align 8
  %32 = load i32, ptr %7, align 4
  %33 = call i32 @aes_setkey_enc(ptr noundef %10, ptr noundef %31, i32 noundef %32)
  store i32 %33, ptr %13, align 4
  %34 = load i32, ptr %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, ptr %13, align 4
  store i32 %37, ptr %4, align 4
  br label %152

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.aes_context, ptr %10, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.aes_context, ptr %10, i32 0, i32 0
  %42 = load i32, ptr %41, align 8
  %43 = mul nsw i32 %42, 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, ptr %40, i64 %44
  store ptr %45, ptr %12, align 8
  %46 = load ptr, ptr %12, align 8
  %47 = getelementptr inbounds i64, ptr %46, i32 1
  store ptr %47, ptr %12, align 8
  %48 = load i64, ptr %46, align 8
  %49 = load ptr, ptr %11, align 8
  %50 = getelementptr inbounds i64, ptr %49, i32 1
  store ptr %50, ptr %11, align 8
  store i64 %48, ptr %49, align 8
  %51 = load ptr, ptr %12, align 8
  %52 = getelementptr inbounds i64, ptr %51, i32 1
  store ptr %52, ptr %12, align 8
  %53 = load i64, ptr %51, align 8
  %54 = load ptr, ptr %11, align 8
  %55 = getelementptr inbounds i64, ptr %54, i32 1
  store ptr %55, ptr %11, align 8
  store i64 %53, ptr %54, align 8
  %56 = load ptr, ptr %12, align 8
  %57 = getelementptr inbounds i64, ptr %56, i32 1
  store ptr %57, ptr %12, align 8
  %58 = load i64, ptr %56, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i32 1
  store ptr %60, ptr %11, align 8
  store i64 %58, ptr %59, align 8
  %61 = load ptr, ptr %12, align 8
  %62 = getelementptr inbounds i64, ptr %61, i32 1
  store ptr %62, ptr %12, align 8
  %63 = load i64, ptr %61, align 8
  %64 = load ptr, ptr %11, align 8
  %65 = getelementptr inbounds i64, ptr %64, i32 1
  store ptr %65, ptr %11, align 8
  store i64 %63, ptr %64, align 8
  %66 = load ptr, ptr %5, align 8
  %67 = getelementptr inbounds %struct.aes_context, ptr %66, i32 0, i32 0
  %68 = load i32, ptr %67, align 8
  %69 = sub nsw i32 %68, 1
  store i32 %69, ptr %8, align 4
  %70 = load ptr, ptr %12, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 -8
  store ptr %71, ptr %12, align 8
  br label %72

72:                                               ; preds = %126, %38
  %73 = load i32, ptr %8, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %131

75:                                               ; preds = %72
  store i32 0, ptr %9, align 4
  br label %76

76:                                               ; preds = %120, %75
  %77 = load i32, ptr %9, align 4
  %78 = icmp slt i32 %77, 4
  br i1 %78, label %79, label %125

79:                                               ; preds = %76
  %80 = load ptr, ptr %12, align 8
  %81 = load i64, ptr %80, align 8
  %82 = and i64 %81, 255
  %83 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %85
  %87 = load i64, ptr %86, align 8
  %88 = load ptr, ptr %12, align 8
  %89 = load i64, ptr %88, align 8
  %90 = lshr i64 %89, 8
  %91 = and i64 %90, 255
  %92 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %94
  %96 = load i64, ptr %95, align 8
  %97 = xor i64 %87, %96
  %98 = load ptr, ptr %12, align 8
  %99 = load i64, ptr %98, align 8
  %100 = lshr i64 %99, 16
  %101 = and i64 %100, 255
  %102 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %101
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8
  %107 = xor i64 %97, %106
  %108 = load ptr, ptr %12, align 8
  %109 = load i64, ptr %108, align 8
  %110 = lshr i64 %109, 24
  %111 = and i64 %110, 255
  %112 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %111
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i64
  %115 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %114
  %116 = load i64, ptr %115, align 8
  %117 = xor i64 %107, %116
  %118 = load ptr, ptr %11, align 8
  %119 = getelementptr inbounds i64, ptr %118, i32 1
  store ptr %119, ptr %11, align 8
  store i64 %117, ptr %118, align 8
  br label %120

120:                                              ; preds = %79
  %121 = load i32, ptr %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %9, align 4
  %123 = load ptr, ptr %12, align 8
  %124 = getelementptr inbounds i64, ptr %123, i32 1
  store ptr %124, ptr %12, align 8
  br label %76, !llvm.loop !15

125:                                              ; preds = %76
  br label %126

126:                                              ; preds = %125
  %127 = load i32, ptr %8, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, ptr %8, align 4
  %129 = load ptr, ptr %12, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 -8
  store ptr %130, ptr %12, align 8
  br label %72, !llvm.loop !16

131:                                              ; preds = %72
  %132 = load ptr, ptr %12, align 8
  %133 = getelementptr inbounds i64, ptr %132, i32 1
  store ptr %133, ptr %12, align 8
  %134 = load i64, ptr %132, align 8
  %135 = load ptr, ptr %11, align 8
  %136 = getelementptr inbounds i64, ptr %135, i32 1
  store ptr %136, ptr %11, align 8
  store i64 %134, ptr %135, align 8
  %137 = load ptr, ptr %12, align 8
  %138 = getelementptr inbounds i64, ptr %137, i32 1
  store ptr %138, ptr %12, align 8
  %139 = load i64, ptr %137, align 8
  %140 = load ptr, ptr %11, align 8
  %141 = getelementptr inbounds i64, ptr %140, i32 1
  store ptr %141, ptr %11, align 8
  store i64 %139, ptr %140, align 8
  %142 = load ptr, ptr %12, align 8
  %143 = getelementptr inbounds i64, ptr %142, i32 1
  store ptr %143, ptr %12, align 8
  %144 = load i64, ptr %142, align 8
  %145 = load ptr, ptr %11, align 8
  %146 = getelementptr inbounds i64, ptr %145, i32 1
  store ptr %146, ptr %11, align 8
  store i64 %144, ptr %145, align 8
  %147 = load ptr, ptr %12, align 8
  %148 = getelementptr inbounds i64, ptr %147, i32 1
  store ptr %148, ptr %12, align 8
  %149 = load i64, ptr %147, align 8
  %150 = load ptr, ptr %11, align 8
  %151 = getelementptr inbounds i64, ptr %150, i32 1
  store ptr %151, ptr %11, align 8
  store i64 %149, ptr %150, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 560, i1 false)
  store i32 0, ptr %4, align 4
  br label %152

152:                                              ; preds = %131, %36, %24
  %153 = load i32, ptr %4, align 4
  ret i32 %153
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_crypt_ecb(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds %struct.aes_context, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %10, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 0
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i64
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i64
  %30 = shl i64 %29, 8
  %31 = or i64 %25, %30
  %32 = load ptr, ptr %7, align 8
  %33 = getelementptr inbounds i8, ptr %32, i64 2
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i64
  %36 = shl i64 %35, 16
  %37 = or i64 %31, %36
  %38 = load ptr, ptr %7, align 8
  %39 = getelementptr inbounds i8, ptr %38, i64 3
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i64
  %42 = shl i64 %41, 24
  %43 = or i64 %37, %42
  store i64 %43, ptr %11, align 8
  %44 = load ptr, ptr %10, align 8
  %45 = getelementptr inbounds i64, ptr %44, i32 1
  store ptr %45, ptr %10, align 8
  %46 = load i64, ptr %44, align 8
  %47 = load i64, ptr %11, align 8
  %48 = xor i64 %47, %46
  store i64 %48, ptr %11, align 8
  %49 = load ptr, ptr %7, align 8
  %50 = getelementptr inbounds i8, ptr %49, i64 4
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i64
  %53 = load ptr, ptr %7, align 8
  %54 = getelementptr inbounds i8, ptr %53, i64 5
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i64
  %57 = shl i64 %56, 8
  %58 = or i64 %52, %57
  %59 = load ptr, ptr %7, align 8
  %60 = getelementptr inbounds i8, ptr %59, i64 6
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i64
  %63 = shl i64 %62, 16
  %64 = or i64 %58, %63
  %65 = load ptr, ptr %7, align 8
  %66 = getelementptr inbounds i8, ptr %65, i64 7
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i64
  %69 = shl i64 %68, 24
  %70 = or i64 %64, %69
  store i64 %70, ptr %12, align 8
  %71 = load ptr, ptr %10, align 8
  %72 = getelementptr inbounds i64, ptr %71, i32 1
  store ptr %72, ptr %10, align 8
  %73 = load i64, ptr %71, align 8
  %74 = load i64, ptr %12, align 8
  %75 = xor i64 %74, %73
  store i64 %75, ptr %12, align 8
  %76 = load ptr, ptr %7, align 8
  %77 = getelementptr inbounds i8, ptr %76, i64 8
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i64
  %80 = load ptr, ptr %7, align 8
  %81 = getelementptr inbounds i8, ptr %80, i64 9
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i64
  %84 = shl i64 %83, 8
  %85 = or i64 %79, %84
  %86 = load ptr, ptr %7, align 8
  %87 = getelementptr inbounds i8, ptr %86, i64 10
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i64
  %90 = shl i64 %89, 16
  %91 = or i64 %85, %90
  %92 = load ptr, ptr %7, align 8
  %93 = getelementptr inbounds i8, ptr %92, i64 11
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = shl i64 %95, 24
  %97 = or i64 %91, %96
  store i64 %97, ptr %13, align 8
  %98 = load ptr, ptr %10, align 8
  %99 = getelementptr inbounds i64, ptr %98, i32 1
  store ptr %99, ptr %10, align 8
  %100 = load i64, ptr %98, align 8
  %101 = load i64, ptr %13, align 8
  %102 = xor i64 %101, %100
  store i64 %102, ptr %13, align 8
  %103 = load ptr, ptr %7, align 8
  %104 = getelementptr inbounds i8, ptr %103, i64 12
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = load ptr, ptr %7, align 8
  %108 = getelementptr inbounds i8, ptr %107, i64 13
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i64
  %111 = shl i64 %110, 8
  %112 = or i64 %106, %111
  %113 = load ptr, ptr %7, align 8
  %114 = getelementptr inbounds i8, ptr %113, i64 14
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i64
  %117 = shl i64 %116, 16
  %118 = or i64 %112, %117
  %119 = load ptr, ptr %7, align 8
  %120 = getelementptr inbounds i8, ptr %119, i64 15
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i64
  %123 = shl i64 %122, 24
  %124 = or i64 %118, %123
  store i64 %124, ptr %14, align 8
  %125 = load ptr, ptr %10, align 8
  %126 = getelementptr inbounds i64, ptr %125, i32 1
  store ptr %126, ptr %10, align 8
  %127 = load i64, ptr %125, align 8
  %128 = load i64, ptr %14, align 8
  %129 = xor i64 %128, %127
  store i64 %129, ptr %14, align 8
  %130 = load i32, ptr %6, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %590

132:                                              ; preds = %4
  %133 = load ptr, ptr %5, align 8
  %134 = getelementptr inbounds %struct.aes_context, ptr %133, i32 0, i32 0
  %135 = load i32, ptr %134, align 8
  %136 = ashr i32 %135, 1
  %137 = sub nsw i32 %136, 1
  store i32 %137, ptr %9, align 4
  br label %138

138:                                              ; preds = %350, %132
  %139 = load i32, ptr %9, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %353

141:                                              ; preds = %138
  %142 = load ptr, ptr %10, align 8
  %143 = getelementptr inbounds i64, ptr %142, i32 1
  store ptr %143, ptr %10, align 8
  %144 = load i64, ptr %142, align 8
  %145 = load i64, ptr %11, align 8
  %146 = and i64 %145, 255
  %147 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %146
  %148 = load i64, ptr %147, align 8
  %149 = xor i64 %144, %148
  %150 = load i64, ptr %14, align 8
  %151 = lshr i64 %150, 8
  %152 = and i64 %151, 255
  %153 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %152
  %154 = load i64, ptr %153, align 8
  %155 = xor i64 %149, %154
  %156 = load i64, ptr %13, align 8
  %157 = lshr i64 %156, 16
  %158 = and i64 %157, 255
  %159 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %158
  %160 = load i64, ptr %159, align 8
  %161 = xor i64 %155, %160
  %162 = load i64, ptr %12, align 8
  %163 = lshr i64 %162, 24
  %164 = and i64 %163, 255
  %165 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %164
  %166 = load i64, ptr %165, align 8
  %167 = xor i64 %161, %166
  store i64 %167, ptr %15, align 8
  %168 = load ptr, ptr %10, align 8
  %169 = getelementptr inbounds i64, ptr %168, i32 1
  store ptr %169, ptr %10, align 8
  %170 = load i64, ptr %168, align 8
  %171 = load i64, ptr %12, align 8
  %172 = and i64 %171, 255
  %173 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %172
  %174 = load i64, ptr %173, align 8
  %175 = xor i64 %170, %174
  %176 = load i64, ptr %11, align 8
  %177 = lshr i64 %176, 8
  %178 = and i64 %177, 255
  %179 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %178
  %180 = load i64, ptr %179, align 8
  %181 = xor i64 %175, %180
  %182 = load i64, ptr %14, align 8
  %183 = lshr i64 %182, 16
  %184 = and i64 %183, 255
  %185 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %184
  %186 = load i64, ptr %185, align 8
  %187 = xor i64 %181, %186
  %188 = load i64, ptr %13, align 8
  %189 = lshr i64 %188, 24
  %190 = and i64 %189, 255
  %191 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %190
  %192 = load i64, ptr %191, align 8
  %193 = xor i64 %187, %192
  store i64 %193, ptr %16, align 8
  %194 = load ptr, ptr %10, align 8
  %195 = getelementptr inbounds i64, ptr %194, i32 1
  store ptr %195, ptr %10, align 8
  %196 = load i64, ptr %194, align 8
  %197 = load i64, ptr %13, align 8
  %198 = and i64 %197, 255
  %199 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %198
  %200 = load i64, ptr %199, align 8
  %201 = xor i64 %196, %200
  %202 = load i64, ptr %12, align 8
  %203 = lshr i64 %202, 8
  %204 = and i64 %203, 255
  %205 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %204
  %206 = load i64, ptr %205, align 8
  %207 = xor i64 %201, %206
  %208 = load i64, ptr %11, align 8
  %209 = lshr i64 %208, 16
  %210 = and i64 %209, 255
  %211 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %210
  %212 = load i64, ptr %211, align 8
  %213 = xor i64 %207, %212
  %214 = load i64, ptr %14, align 8
  %215 = lshr i64 %214, 24
  %216 = and i64 %215, 255
  %217 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %216
  %218 = load i64, ptr %217, align 8
  %219 = xor i64 %213, %218
  store i64 %219, ptr %17, align 8
  %220 = load ptr, ptr %10, align 8
  %221 = getelementptr inbounds i64, ptr %220, i32 1
  store ptr %221, ptr %10, align 8
  %222 = load i64, ptr %220, align 8
  %223 = load i64, ptr %14, align 8
  %224 = and i64 %223, 255
  %225 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %224
  %226 = load i64, ptr %225, align 8
  %227 = xor i64 %222, %226
  %228 = load i64, ptr %13, align 8
  %229 = lshr i64 %228, 8
  %230 = and i64 %229, 255
  %231 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %230
  %232 = load i64, ptr %231, align 8
  %233 = xor i64 %227, %232
  %234 = load i64, ptr %12, align 8
  %235 = lshr i64 %234, 16
  %236 = and i64 %235, 255
  %237 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %236
  %238 = load i64, ptr %237, align 8
  %239 = xor i64 %233, %238
  %240 = load i64, ptr %11, align 8
  %241 = lshr i64 %240, 24
  %242 = and i64 %241, 255
  %243 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %242
  %244 = load i64, ptr %243, align 8
  %245 = xor i64 %239, %244
  store i64 %245, ptr %18, align 8
  %246 = load ptr, ptr %10, align 8
  %247 = getelementptr inbounds i64, ptr %246, i32 1
  store ptr %247, ptr %10, align 8
  %248 = load i64, ptr %246, align 8
  %249 = load i64, ptr %15, align 8
  %250 = and i64 %249, 255
  %251 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %250
  %252 = load i64, ptr %251, align 8
  %253 = xor i64 %248, %252
  %254 = load i64, ptr %18, align 8
  %255 = lshr i64 %254, 8
  %256 = and i64 %255, 255
  %257 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %256
  %258 = load i64, ptr %257, align 8
  %259 = xor i64 %253, %258
  %260 = load i64, ptr %17, align 8
  %261 = lshr i64 %260, 16
  %262 = and i64 %261, 255
  %263 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %262
  %264 = load i64, ptr %263, align 8
  %265 = xor i64 %259, %264
  %266 = load i64, ptr %16, align 8
  %267 = lshr i64 %266, 24
  %268 = and i64 %267, 255
  %269 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %268
  %270 = load i64, ptr %269, align 8
  %271 = xor i64 %265, %270
  store i64 %271, ptr %11, align 8
  %272 = load ptr, ptr %10, align 8
  %273 = getelementptr inbounds i64, ptr %272, i32 1
  store ptr %273, ptr %10, align 8
  %274 = load i64, ptr %272, align 8
  %275 = load i64, ptr %16, align 8
  %276 = and i64 %275, 255
  %277 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %276
  %278 = load i64, ptr %277, align 8
  %279 = xor i64 %274, %278
  %280 = load i64, ptr %15, align 8
  %281 = lshr i64 %280, 8
  %282 = and i64 %281, 255
  %283 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %282
  %284 = load i64, ptr %283, align 8
  %285 = xor i64 %279, %284
  %286 = load i64, ptr %18, align 8
  %287 = lshr i64 %286, 16
  %288 = and i64 %287, 255
  %289 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %288
  %290 = load i64, ptr %289, align 8
  %291 = xor i64 %285, %290
  %292 = load i64, ptr %17, align 8
  %293 = lshr i64 %292, 24
  %294 = and i64 %293, 255
  %295 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %294
  %296 = load i64, ptr %295, align 8
  %297 = xor i64 %291, %296
  store i64 %297, ptr %12, align 8
  %298 = load ptr, ptr %10, align 8
  %299 = getelementptr inbounds i64, ptr %298, i32 1
  store ptr %299, ptr %10, align 8
  %300 = load i64, ptr %298, align 8
  %301 = load i64, ptr %17, align 8
  %302 = and i64 %301, 255
  %303 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %302
  %304 = load i64, ptr %303, align 8
  %305 = xor i64 %300, %304
  %306 = load i64, ptr %16, align 8
  %307 = lshr i64 %306, 8
  %308 = and i64 %307, 255
  %309 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %308
  %310 = load i64, ptr %309, align 8
  %311 = xor i64 %305, %310
  %312 = load i64, ptr %15, align 8
  %313 = lshr i64 %312, 16
  %314 = and i64 %313, 255
  %315 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %314
  %316 = load i64, ptr %315, align 8
  %317 = xor i64 %311, %316
  %318 = load i64, ptr %18, align 8
  %319 = lshr i64 %318, 24
  %320 = and i64 %319, 255
  %321 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %320
  %322 = load i64, ptr %321, align 8
  %323 = xor i64 %317, %322
  store i64 %323, ptr %13, align 8
  %324 = load ptr, ptr %10, align 8
  %325 = getelementptr inbounds i64, ptr %324, i32 1
  store ptr %325, ptr %10, align 8
  %326 = load i64, ptr %324, align 8
  %327 = load i64, ptr %18, align 8
  %328 = and i64 %327, 255
  %329 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %328
  %330 = load i64, ptr %329, align 8
  %331 = xor i64 %326, %330
  %332 = load i64, ptr %17, align 8
  %333 = lshr i64 %332, 8
  %334 = and i64 %333, 255
  %335 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %334
  %336 = load i64, ptr %335, align 8
  %337 = xor i64 %331, %336
  %338 = load i64, ptr %16, align 8
  %339 = lshr i64 %338, 16
  %340 = and i64 %339, 255
  %341 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %340
  %342 = load i64, ptr %341, align 8
  %343 = xor i64 %337, %342
  %344 = load i64, ptr %15, align 8
  %345 = lshr i64 %344, 24
  %346 = and i64 %345, 255
  %347 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %346
  %348 = load i64, ptr %347, align 8
  %349 = xor i64 %343, %348
  store i64 %349, ptr %14, align 8
  br label %350

350:                                              ; preds = %141
  %351 = load i32, ptr %9, align 4
  %352 = add nsw i32 %351, -1
  store i32 %352, ptr %9, align 4
  br label %138, !llvm.loop !17

353:                                              ; preds = %138
  %354 = load ptr, ptr %10, align 8
  %355 = getelementptr inbounds i64, ptr %354, i32 1
  store ptr %355, ptr %10, align 8
  %356 = load i64, ptr %354, align 8
  %357 = load i64, ptr %11, align 8
  %358 = and i64 %357, 255
  %359 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %358
  %360 = load i64, ptr %359, align 8
  %361 = xor i64 %356, %360
  %362 = load i64, ptr %14, align 8
  %363 = lshr i64 %362, 8
  %364 = and i64 %363, 255
  %365 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %364
  %366 = load i64, ptr %365, align 8
  %367 = xor i64 %361, %366
  %368 = load i64, ptr %13, align 8
  %369 = lshr i64 %368, 16
  %370 = and i64 %369, 255
  %371 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %370
  %372 = load i64, ptr %371, align 8
  %373 = xor i64 %367, %372
  %374 = load i64, ptr %12, align 8
  %375 = lshr i64 %374, 24
  %376 = and i64 %375, 255
  %377 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %376
  %378 = load i64, ptr %377, align 8
  %379 = xor i64 %373, %378
  store i64 %379, ptr %15, align 8
  %380 = load ptr, ptr %10, align 8
  %381 = getelementptr inbounds i64, ptr %380, i32 1
  store ptr %381, ptr %10, align 8
  %382 = load i64, ptr %380, align 8
  %383 = load i64, ptr %12, align 8
  %384 = and i64 %383, 255
  %385 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %384
  %386 = load i64, ptr %385, align 8
  %387 = xor i64 %382, %386
  %388 = load i64, ptr %11, align 8
  %389 = lshr i64 %388, 8
  %390 = and i64 %389, 255
  %391 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %390
  %392 = load i64, ptr %391, align 8
  %393 = xor i64 %387, %392
  %394 = load i64, ptr %14, align 8
  %395 = lshr i64 %394, 16
  %396 = and i64 %395, 255
  %397 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %396
  %398 = load i64, ptr %397, align 8
  %399 = xor i64 %393, %398
  %400 = load i64, ptr %13, align 8
  %401 = lshr i64 %400, 24
  %402 = and i64 %401, 255
  %403 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %402
  %404 = load i64, ptr %403, align 8
  %405 = xor i64 %399, %404
  store i64 %405, ptr %16, align 8
  %406 = load ptr, ptr %10, align 8
  %407 = getelementptr inbounds i64, ptr %406, i32 1
  store ptr %407, ptr %10, align 8
  %408 = load i64, ptr %406, align 8
  %409 = load i64, ptr %13, align 8
  %410 = and i64 %409, 255
  %411 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %410
  %412 = load i64, ptr %411, align 8
  %413 = xor i64 %408, %412
  %414 = load i64, ptr %12, align 8
  %415 = lshr i64 %414, 8
  %416 = and i64 %415, 255
  %417 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %416
  %418 = load i64, ptr %417, align 8
  %419 = xor i64 %413, %418
  %420 = load i64, ptr %11, align 8
  %421 = lshr i64 %420, 16
  %422 = and i64 %421, 255
  %423 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %422
  %424 = load i64, ptr %423, align 8
  %425 = xor i64 %419, %424
  %426 = load i64, ptr %14, align 8
  %427 = lshr i64 %426, 24
  %428 = and i64 %427, 255
  %429 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %428
  %430 = load i64, ptr %429, align 8
  %431 = xor i64 %425, %430
  store i64 %431, ptr %17, align 8
  %432 = load ptr, ptr %10, align 8
  %433 = getelementptr inbounds i64, ptr %432, i32 1
  store ptr %433, ptr %10, align 8
  %434 = load i64, ptr %432, align 8
  %435 = load i64, ptr %14, align 8
  %436 = and i64 %435, 255
  %437 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %436
  %438 = load i64, ptr %437, align 8
  %439 = xor i64 %434, %438
  %440 = load i64, ptr %13, align 8
  %441 = lshr i64 %440, 8
  %442 = and i64 %441, 255
  %443 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %442
  %444 = load i64, ptr %443, align 8
  %445 = xor i64 %439, %444
  %446 = load i64, ptr %12, align 8
  %447 = lshr i64 %446, 16
  %448 = and i64 %447, 255
  %449 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %448
  %450 = load i64, ptr %449, align 8
  %451 = xor i64 %445, %450
  %452 = load i64, ptr %11, align 8
  %453 = lshr i64 %452, 24
  %454 = and i64 %453, 255
  %455 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %454
  %456 = load i64, ptr %455, align 8
  %457 = xor i64 %451, %456
  store i64 %457, ptr %18, align 8
  %458 = load ptr, ptr %10, align 8
  %459 = getelementptr inbounds i64, ptr %458, i32 1
  store ptr %459, ptr %10, align 8
  %460 = load i64, ptr %458, align 8
  %461 = load i64, ptr %15, align 8
  %462 = and i64 %461, 255
  %463 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %462
  %464 = load i8, ptr %463, align 1
  %465 = zext i8 %464 to i64
  %466 = xor i64 %460, %465
  %467 = load i64, ptr %18, align 8
  %468 = lshr i64 %467, 8
  %469 = and i64 %468, 255
  %470 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %469
  %471 = load i8, ptr %470, align 1
  %472 = zext i8 %471 to i64
  %473 = shl i64 %472, 8
  %474 = xor i64 %466, %473
  %475 = load i64, ptr %17, align 8
  %476 = lshr i64 %475, 16
  %477 = and i64 %476, 255
  %478 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %477
  %479 = load i8, ptr %478, align 1
  %480 = zext i8 %479 to i64
  %481 = shl i64 %480, 16
  %482 = xor i64 %474, %481
  %483 = load i64, ptr %16, align 8
  %484 = lshr i64 %483, 24
  %485 = and i64 %484, 255
  %486 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %485
  %487 = load i8, ptr %486, align 1
  %488 = zext i8 %487 to i64
  %489 = shl i64 %488, 24
  %490 = xor i64 %482, %489
  store i64 %490, ptr %11, align 8
  %491 = load ptr, ptr %10, align 8
  %492 = getelementptr inbounds i64, ptr %491, i32 1
  store ptr %492, ptr %10, align 8
  %493 = load i64, ptr %491, align 8
  %494 = load i64, ptr %16, align 8
  %495 = and i64 %494, 255
  %496 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %495
  %497 = load i8, ptr %496, align 1
  %498 = zext i8 %497 to i64
  %499 = xor i64 %493, %498
  %500 = load i64, ptr %15, align 8
  %501 = lshr i64 %500, 8
  %502 = and i64 %501, 255
  %503 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %502
  %504 = load i8, ptr %503, align 1
  %505 = zext i8 %504 to i64
  %506 = shl i64 %505, 8
  %507 = xor i64 %499, %506
  %508 = load i64, ptr %18, align 8
  %509 = lshr i64 %508, 16
  %510 = and i64 %509, 255
  %511 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %510
  %512 = load i8, ptr %511, align 1
  %513 = zext i8 %512 to i64
  %514 = shl i64 %513, 16
  %515 = xor i64 %507, %514
  %516 = load i64, ptr %17, align 8
  %517 = lshr i64 %516, 24
  %518 = and i64 %517, 255
  %519 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %518
  %520 = load i8, ptr %519, align 1
  %521 = zext i8 %520 to i64
  %522 = shl i64 %521, 24
  %523 = xor i64 %515, %522
  store i64 %523, ptr %12, align 8
  %524 = load ptr, ptr %10, align 8
  %525 = getelementptr inbounds i64, ptr %524, i32 1
  store ptr %525, ptr %10, align 8
  %526 = load i64, ptr %524, align 8
  %527 = load i64, ptr %17, align 8
  %528 = and i64 %527, 255
  %529 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %528
  %530 = load i8, ptr %529, align 1
  %531 = zext i8 %530 to i64
  %532 = xor i64 %526, %531
  %533 = load i64, ptr %16, align 8
  %534 = lshr i64 %533, 8
  %535 = and i64 %534, 255
  %536 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %535
  %537 = load i8, ptr %536, align 1
  %538 = zext i8 %537 to i64
  %539 = shl i64 %538, 8
  %540 = xor i64 %532, %539
  %541 = load i64, ptr %15, align 8
  %542 = lshr i64 %541, 16
  %543 = and i64 %542, 255
  %544 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %543
  %545 = load i8, ptr %544, align 1
  %546 = zext i8 %545 to i64
  %547 = shl i64 %546, 16
  %548 = xor i64 %540, %547
  %549 = load i64, ptr %18, align 8
  %550 = lshr i64 %549, 24
  %551 = and i64 %550, 255
  %552 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %551
  %553 = load i8, ptr %552, align 1
  %554 = zext i8 %553 to i64
  %555 = shl i64 %554, 24
  %556 = xor i64 %548, %555
  store i64 %556, ptr %13, align 8
  %557 = load ptr, ptr %10, align 8
  %558 = getelementptr inbounds i64, ptr %557, i32 1
  store ptr %558, ptr %10, align 8
  %559 = load i64, ptr %557, align 8
  %560 = load i64, ptr %18, align 8
  %561 = and i64 %560, 255
  %562 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %561
  %563 = load i8, ptr %562, align 1
  %564 = zext i8 %563 to i64
  %565 = xor i64 %559, %564
  %566 = load i64, ptr %17, align 8
  %567 = lshr i64 %566, 8
  %568 = and i64 %567, 255
  %569 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %568
  %570 = load i8, ptr %569, align 1
  %571 = zext i8 %570 to i64
  %572 = shl i64 %571, 8
  %573 = xor i64 %565, %572
  %574 = load i64, ptr %16, align 8
  %575 = lshr i64 %574, 16
  %576 = and i64 %575, 255
  %577 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %576
  %578 = load i8, ptr %577, align 1
  %579 = zext i8 %578 to i64
  %580 = shl i64 %579, 16
  %581 = xor i64 %573, %580
  %582 = load i64, ptr %15, align 8
  %583 = lshr i64 %582, 24
  %584 = and i64 %583, 255
  %585 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %584
  %586 = load i8, ptr %585, align 1
  %587 = zext i8 %586 to i64
  %588 = shl i64 %587, 24
  %589 = xor i64 %581, %588
  store i64 %589, ptr %14, align 8
  br label %1048

590:                                              ; preds = %4
  %591 = load ptr, ptr %5, align 8
  %592 = getelementptr inbounds %struct.aes_context, ptr %591, i32 0, i32 0
  %593 = load i32, ptr %592, align 8
  %594 = ashr i32 %593, 1
  %595 = sub nsw i32 %594, 1
  store i32 %595, ptr %9, align 4
  br label %596

596:                                              ; preds = %808, %590
  %597 = load i32, ptr %9, align 4
  %598 = icmp sgt i32 %597, 0
  br i1 %598, label %599, label %811

599:                                              ; preds = %596
  %600 = load ptr, ptr %10, align 8
  %601 = getelementptr inbounds i64, ptr %600, i32 1
  store ptr %601, ptr %10, align 8
  %602 = load i64, ptr %600, align 8
  %603 = load i64, ptr %11, align 8
  %604 = and i64 %603, 255
  %605 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %604
  %606 = load i64, ptr %605, align 8
  %607 = xor i64 %602, %606
  %608 = load i64, ptr %12, align 8
  %609 = lshr i64 %608, 8
  %610 = and i64 %609, 255
  %611 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %610
  %612 = load i64, ptr %611, align 8
  %613 = xor i64 %607, %612
  %614 = load i64, ptr %13, align 8
  %615 = lshr i64 %614, 16
  %616 = and i64 %615, 255
  %617 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %616
  %618 = load i64, ptr %617, align 8
  %619 = xor i64 %613, %618
  %620 = load i64, ptr %14, align 8
  %621 = lshr i64 %620, 24
  %622 = and i64 %621, 255
  %623 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %622
  %624 = load i64, ptr %623, align 8
  %625 = xor i64 %619, %624
  store i64 %625, ptr %15, align 8
  %626 = load ptr, ptr %10, align 8
  %627 = getelementptr inbounds i64, ptr %626, i32 1
  store ptr %627, ptr %10, align 8
  %628 = load i64, ptr %626, align 8
  %629 = load i64, ptr %12, align 8
  %630 = and i64 %629, 255
  %631 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %630
  %632 = load i64, ptr %631, align 8
  %633 = xor i64 %628, %632
  %634 = load i64, ptr %13, align 8
  %635 = lshr i64 %634, 8
  %636 = and i64 %635, 255
  %637 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %636
  %638 = load i64, ptr %637, align 8
  %639 = xor i64 %633, %638
  %640 = load i64, ptr %14, align 8
  %641 = lshr i64 %640, 16
  %642 = and i64 %641, 255
  %643 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %642
  %644 = load i64, ptr %643, align 8
  %645 = xor i64 %639, %644
  %646 = load i64, ptr %11, align 8
  %647 = lshr i64 %646, 24
  %648 = and i64 %647, 255
  %649 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %648
  %650 = load i64, ptr %649, align 8
  %651 = xor i64 %645, %650
  store i64 %651, ptr %16, align 8
  %652 = load ptr, ptr %10, align 8
  %653 = getelementptr inbounds i64, ptr %652, i32 1
  store ptr %653, ptr %10, align 8
  %654 = load i64, ptr %652, align 8
  %655 = load i64, ptr %13, align 8
  %656 = and i64 %655, 255
  %657 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %656
  %658 = load i64, ptr %657, align 8
  %659 = xor i64 %654, %658
  %660 = load i64, ptr %14, align 8
  %661 = lshr i64 %660, 8
  %662 = and i64 %661, 255
  %663 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %662
  %664 = load i64, ptr %663, align 8
  %665 = xor i64 %659, %664
  %666 = load i64, ptr %11, align 8
  %667 = lshr i64 %666, 16
  %668 = and i64 %667, 255
  %669 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %668
  %670 = load i64, ptr %669, align 8
  %671 = xor i64 %665, %670
  %672 = load i64, ptr %12, align 8
  %673 = lshr i64 %672, 24
  %674 = and i64 %673, 255
  %675 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %674
  %676 = load i64, ptr %675, align 8
  %677 = xor i64 %671, %676
  store i64 %677, ptr %17, align 8
  %678 = load ptr, ptr %10, align 8
  %679 = getelementptr inbounds i64, ptr %678, i32 1
  store ptr %679, ptr %10, align 8
  %680 = load i64, ptr %678, align 8
  %681 = load i64, ptr %14, align 8
  %682 = and i64 %681, 255
  %683 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %682
  %684 = load i64, ptr %683, align 8
  %685 = xor i64 %680, %684
  %686 = load i64, ptr %11, align 8
  %687 = lshr i64 %686, 8
  %688 = and i64 %687, 255
  %689 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %688
  %690 = load i64, ptr %689, align 8
  %691 = xor i64 %685, %690
  %692 = load i64, ptr %12, align 8
  %693 = lshr i64 %692, 16
  %694 = and i64 %693, 255
  %695 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %694
  %696 = load i64, ptr %695, align 8
  %697 = xor i64 %691, %696
  %698 = load i64, ptr %13, align 8
  %699 = lshr i64 %698, 24
  %700 = and i64 %699, 255
  %701 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %700
  %702 = load i64, ptr %701, align 8
  %703 = xor i64 %697, %702
  store i64 %703, ptr %18, align 8
  %704 = load ptr, ptr %10, align 8
  %705 = getelementptr inbounds i64, ptr %704, i32 1
  store ptr %705, ptr %10, align 8
  %706 = load i64, ptr %704, align 8
  %707 = load i64, ptr %15, align 8
  %708 = and i64 %707, 255
  %709 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %708
  %710 = load i64, ptr %709, align 8
  %711 = xor i64 %706, %710
  %712 = load i64, ptr %16, align 8
  %713 = lshr i64 %712, 8
  %714 = and i64 %713, 255
  %715 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %714
  %716 = load i64, ptr %715, align 8
  %717 = xor i64 %711, %716
  %718 = load i64, ptr %17, align 8
  %719 = lshr i64 %718, 16
  %720 = and i64 %719, 255
  %721 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %720
  %722 = load i64, ptr %721, align 8
  %723 = xor i64 %717, %722
  %724 = load i64, ptr %18, align 8
  %725 = lshr i64 %724, 24
  %726 = and i64 %725, 255
  %727 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %726
  %728 = load i64, ptr %727, align 8
  %729 = xor i64 %723, %728
  store i64 %729, ptr %11, align 8
  %730 = load ptr, ptr %10, align 8
  %731 = getelementptr inbounds i64, ptr %730, i32 1
  store ptr %731, ptr %10, align 8
  %732 = load i64, ptr %730, align 8
  %733 = load i64, ptr %16, align 8
  %734 = and i64 %733, 255
  %735 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %734
  %736 = load i64, ptr %735, align 8
  %737 = xor i64 %732, %736
  %738 = load i64, ptr %17, align 8
  %739 = lshr i64 %738, 8
  %740 = and i64 %739, 255
  %741 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %740
  %742 = load i64, ptr %741, align 8
  %743 = xor i64 %737, %742
  %744 = load i64, ptr %18, align 8
  %745 = lshr i64 %744, 16
  %746 = and i64 %745, 255
  %747 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %746
  %748 = load i64, ptr %747, align 8
  %749 = xor i64 %743, %748
  %750 = load i64, ptr %15, align 8
  %751 = lshr i64 %750, 24
  %752 = and i64 %751, 255
  %753 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %752
  %754 = load i64, ptr %753, align 8
  %755 = xor i64 %749, %754
  store i64 %755, ptr %12, align 8
  %756 = load ptr, ptr %10, align 8
  %757 = getelementptr inbounds i64, ptr %756, i32 1
  store ptr %757, ptr %10, align 8
  %758 = load i64, ptr %756, align 8
  %759 = load i64, ptr %17, align 8
  %760 = and i64 %759, 255
  %761 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %760
  %762 = load i64, ptr %761, align 8
  %763 = xor i64 %758, %762
  %764 = load i64, ptr %18, align 8
  %765 = lshr i64 %764, 8
  %766 = and i64 %765, 255
  %767 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %766
  %768 = load i64, ptr %767, align 8
  %769 = xor i64 %763, %768
  %770 = load i64, ptr %15, align 8
  %771 = lshr i64 %770, 16
  %772 = and i64 %771, 255
  %773 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %772
  %774 = load i64, ptr %773, align 8
  %775 = xor i64 %769, %774
  %776 = load i64, ptr %16, align 8
  %777 = lshr i64 %776, 24
  %778 = and i64 %777, 255
  %779 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %778
  %780 = load i64, ptr %779, align 8
  %781 = xor i64 %775, %780
  store i64 %781, ptr %13, align 8
  %782 = load ptr, ptr %10, align 8
  %783 = getelementptr inbounds i64, ptr %782, i32 1
  store ptr %783, ptr %10, align 8
  %784 = load i64, ptr %782, align 8
  %785 = load i64, ptr %18, align 8
  %786 = and i64 %785, 255
  %787 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %786
  %788 = load i64, ptr %787, align 8
  %789 = xor i64 %784, %788
  %790 = load i64, ptr %15, align 8
  %791 = lshr i64 %790, 8
  %792 = and i64 %791, 255
  %793 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %792
  %794 = load i64, ptr %793, align 8
  %795 = xor i64 %789, %794
  %796 = load i64, ptr %16, align 8
  %797 = lshr i64 %796, 16
  %798 = and i64 %797, 255
  %799 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %798
  %800 = load i64, ptr %799, align 8
  %801 = xor i64 %795, %800
  %802 = load i64, ptr %17, align 8
  %803 = lshr i64 %802, 24
  %804 = and i64 %803, 255
  %805 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %804
  %806 = load i64, ptr %805, align 8
  %807 = xor i64 %801, %806
  store i64 %807, ptr %14, align 8
  br label %808

808:                                              ; preds = %599
  %809 = load i32, ptr %9, align 4
  %810 = add nsw i32 %809, -1
  store i32 %810, ptr %9, align 4
  br label %596, !llvm.loop !18

811:                                              ; preds = %596
  %812 = load ptr, ptr %10, align 8
  %813 = getelementptr inbounds i64, ptr %812, i32 1
  store ptr %813, ptr %10, align 8
  %814 = load i64, ptr %812, align 8
  %815 = load i64, ptr %11, align 8
  %816 = and i64 %815, 255
  %817 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %816
  %818 = load i64, ptr %817, align 8
  %819 = xor i64 %814, %818
  %820 = load i64, ptr %12, align 8
  %821 = lshr i64 %820, 8
  %822 = and i64 %821, 255
  %823 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %822
  %824 = load i64, ptr %823, align 8
  %825 = xor i64 %819, %824
  %826 = load i64, ptr %13, align 8
  %827 = lshr i64 %826, 16
  %828 = and i64 %827, 255
  %829 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %828
  %830 = load i64, ptr %829, align 8
  %831 = xor i64 %825, %830
  %832 = load i64, ptr %14, align 8
  %833 = lshr i64 %832, 24
  %834 = and i64 %833, 255
  %835 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %834
  %836 = load i64, ptr %835, align 8
  %837 = xor i64 %831, %836
  store i64 %837, ptr %15, align 8
  %838 = load ptr, ptr %10, align 8
  %839 = getelementptr inbounds i64, ptr %838, i32 1
  store ptr %839, ptr %10, align 8
  %840 = load i64, ptr %838, align 8
  %841 = load i64, ptr %12, align 8
  %842 = and i64 %841, 255
  %843 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %842
  %844 = load i64, ptr %843, align 8
  %845 = xor i64 %840, %844
  %846 = load i64, ptr %13, align 8
  %847 = lshr i64 %846, 8
  %848 = and i64 %847, 255
  %849 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %848
  %850 = load i64, ptr %849, align 8
  %851 = xor i64 %845, %850
  %852 = load i64, ptr %14, align 8
  %853 = lshr i64 %852, 16
  %854 = and i64 %853, 255
  %855 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %854
  %856 = load i64, ptr %855, align 8
  %857 = xor i64 %851, %856
  %858 = load i64, ptr %11, align 8
  %859 = lshr i64 %858, 24
  %860 = and i64 %859, 255
  %861 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %860
  %862 = load i64, ptr %861, align 8
  %863 = xor i64 %857, %862
  store i64 %863, ptr %16, align 8
  %864 = load ptr, ptr %10, align 8
  %865 = getelementptr inbounds i64, ptr %864, i32 1
  store ptr %865, ptr %10, align 8
  %866 = load i64, ptr %864, align 8
  %867 = load i64, ptr %13, align 8
  %868 = and i64 %867, 255
  %869 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %868
  %870 = load i64, ptr %869, align 8
  %871 = xor i64 %866, %870
  %872 = load i64, ptr %14, align 8
  %873 = lshr i64 %872, 8
  %874 = and i64 %873, 255
  %875 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %874
  %876 = load i64, ptr %875, align 8
  %877 = xor i64 %871, %876
  %878 = load i64, ptr %11, align 8
  %879 = lshr i64 %878, 16
  %880 = and i64 %879, 255
  %881 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %880
  %882 = load i64, ptr %881, align 8
  %883 = xor i64 %877, %882
  %884 = load i64, ptr %12, align 8
  %885 = lshr i64 %884, 24
  %886 = and i64 %885, 255
  %887 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %886
  %888 = load i64, ptr %887, align 8
  %889 = xor i64 %883, %888
  store i64 %889, ptr %17, align 8
  %890 = load ptr, ptr %10, align 8
  %891 = getelementptr inbounds i64, ptr %890, i32 1
  store ptr %891, ptr %10, align 8
  %892 = load i64, ptr %890, align 8
  %893 = load i64, ptr %14, align 8
  %894 = and i64 %893, 255
  %895 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %894
  %896 = load i64, ptr %895, align 8
  %897 = xor i64 %892, %896
  %898 = load i64, ptr %11, align 8
  %899 = lshr i64 %898, 8
  %900 = and i64 %899, 255
  %901 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %900
  %902 = load i64, ptr %901, align 8
  %903 = xor i64 %897, %902
  %904 = load i64, ptr %12, align 8
  %905 = lshr i64 %904, 16
  %906 = and i64 %905, 255
  %907 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %906
  %908 = load i64, ptr %907, align 8
  %909 = xor i64 %903, %908
  %910 = load i64, ptr %13, align 8
  %911 = lshr i64 %910, 24
  %912 = and i64 %911, 255
  %913 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %912
  %914 = load i64, ptr %913, align 8
  %915 = xor i64 %909, %914
  store i64 %915, ptr %18, align 8
  %916 = load ptr, ptr %10, align 8
  %917 = getelementptr inbounds i64, ptr %916, i32 1
  store ptr %917, ptr %10, align 8
  %918 = load i64, ptr %916, align 8
  %919 = load i64, ptr %15, align 8
  %920 = and i64 %919, 255
  %921 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %920
  %922 = load i8, ptr %921, align 1
  %923 = zext i8 %922 to i64
  %924 = xor i64 %918, %923
  %925 = load i64, ptr %16, align 8
  %926 = lshr i64 %925, 8
  %927 = and i64 %926, 255
  %928 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %927
  %929 = load i8, ptr %928, align 1
  %930 = zext i8 %929 to i64
  %931 = shl i64 %930, 8
  %932 = xor i64 %924, %931
  %933 = load i64, ptr %17, align 8
  %934 = lshr i64 %933, 16
  %935 = and i64 %934, 255
  %936 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %935
  %937 = load i8, ptr %936, align 1
  %938 = zext i8 %937 to i64
  %939 = shl i64 %938, 16
  %940 = xor i64 %932, %939
  %941 = load i64, ptr %18, align 8
  %942 = lshr i64 %941, 24
  %943 = and i64 %942, 255
  %944 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %943
  %945 = load i8, ptr %944, align 1
  %946 = zext i8 %945 to i64
  %947 = shl i64 %946, 24
  %948 = xor i64 %940, %947
  store i64 %948, ptr %11, align 8
  %949 = load ptr, ptr %10, align 8
  %950 = getelementptr inbounds i64, ptr %949, i32 1
  store ptr %950, ptr %10, align 8
  %951 = load i64, ptr %949, align 8
  %952 = load i64, ptr %16, align 8
  %953 = and i64 %952, 255
  %954 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %953
  %955 = load i8, ptr %954, align 1
  %956 = zext i8 %955 to i64
  %957 = xor i64 %951, %956
  %958 = load i64, ptr %17, align 8
  %959 = lshr i64 %958, 8
  %960 = and i64 %959, 255
  %961 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %960
  %962 = load i8, ptr %961, align 1
  %963 = zext i8 %962 to i64
  %964 = shl i64 %963, 8
  %965 = xor i64 %957, %964
  %966 = load i64, ptr %18, align 8
  %967 = lshr i64 %966, 16
  %968 = and i64 %967, 255
  %969 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %968
  %970 = load i8, ptr %969, align 1
  %971 = zext i8 %970 to i64
  %972 = shl i64 %971, 16
  %973 = xor i64 %965, %972
  %974 = load i64, ptr %15, align 8
  %975 = lshr i64 %974, 24
  %976 = and i64 %975, 255
  %977 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %976
  %978 = load i8, ptr %977, align 1
  %979 = zext i8 %978 to i64
  %980 = shl i64 %979, 24
  %981 = xor i64 %973, %980
  store i64 %981, ptr %12, align 8
  %982 = load ptr, ptr %10, align 8
  %983 = getelementptr inbounds i64, ptr %982, i32 1
  store ptr %983, ptr %10, align 8
  %984 = load i64, ptr %982, align 8
  %985 = load i64, ptr %17, align 8
  %986 = and i64 %985, 255
  %987 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %986
  %988 = load i8, ptr %987, align 1
  %989 = zext i8 %988 to i64
  %990 = xor i64 %984, %989
  %991 = load i64, ptr %18, align 8
  %992 = lshr i64 %991, 8
  %993 = and i64 %992, 255
  %994 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %993
  %995 = load i8, ptr %994, align 1
  %996 = zext i8 %995 to i64
  %997 = shl i64 %996, 8
  %998 = xor i64 %990, %997
  %999 = load i64, ptr %15, align 8
  %1000 = lshr i64 %999, 16
  %1001 = and i64 %1000, 255
  %1002 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %1001
  %1003 = load i8, ptr %1002, align 1
  %1004 = zext i8 %1003 to i64
  %1005 = shl i64 %1004, 16
  %1006 = xor i64 %998, %1005
  %1007 = load i64, ptr %16, align 8
  %1008 = lshr i64 %1007, 24
  %1009 = and i64 %1008, 255
  %1010 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %1009
  %1011 = load i8, ptr %1010, align 1
  %1012 = zext i8 %1011 to i64
  %1013 = shl i64 %1012, 24
  %1014 = xor i64 %1006, %1013
  store i64 %1014, ptr %13, align 8
  %1015 = load ptr, ptr %10, align 8
  %1016 = getelementptr inbounds i64, ptr %1015, i32 1
  store ptr %1016, ptr %10, align 8
  %1017 = load i64, ptr %1015, align 8
  %1018 = load i64, ptr %18, align 8
  %1019 = and i64 %1018, 255
  %1020 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %1019
  %1021 = load i8, ptr %1020, align 1
  %1022 = zext i8 %1021 to i64
  %1023 = xor i64 %1017, %1022
  %1024 = load i64, ptr %15, align 8
  %1025 = lshr i64 %1024, 8
  %1026 = and i64 %1025, 255
  %1027 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %1026
  %1028 = load i8, ptr %1027, align 1
  %1029 = zext i8 %1028 to i64
  %1030 = shl i64 %1029, 8
  %1031 = xor i64 %1023, %1030
  %1032 = load i64, ptr %16, align 8
  %1033 = lshr i64 %1032, 16
  %1034 = and i64 %1033, 255
  %1035 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %1034
  %1036 = load i8, ptr %1035, align 1
  %1037 = zext i8 %1036 to i64
  %1038 = shl i64 %1037, 16
  %1039 = xor i64 %1031, %1038
  %1040 = load i64, ptr %17, align 8
  %1041 = lshr i64 %1040, 24
  %1042 = and i64 %1041, 255
  %1043 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %1042
  %1044 = load i8, ptr %1043, align 1
  %1045 = zext i8 %1044 to i64
  %1046 = shl i64 %1045, 24
  %1047 = xor i64 %1039, %1046
  store i64 %1047, ptr %14, align 8
  br label %1048

1048:                                             ; preds = %811, %353
  %1049 = load i64, ptr %11, align 8
  %1050 = trunc i64 %1049 to i8
  %1051 = load ptr, ptr %8, align 8
  %1052 = getelementptr inbounds i8, ptr %1051, i64 0
  store i8 %1050, ptr %1052, align 1
  %1053 = load i64, ptr %11, align 8
  %1054 = lshr i64 %1053, 8
  %1055 = trunc i64 %1054 to i8
  %1056 = load ptr, ptr %8, align 8
  %1057 = getelementptr inbounds i8, ptr %1056, i64 1
  store i8 %1055, ptr %1057, align 1
  %1058 = load i64, ptr %11, align 8
  %1059 = lshr i64 %1058, 16
  %1060 = trunc i64 %1059 to i8
  %1061 = load ptr, ptr %8, align 8
  %1062 = getelementptr inbounds i8, ptr %1061, i64 2
  store i8 %1060, ptr %1062, align 1
  %1063 = load i64, ptr %11, align 8
  %1064 = lshr i64 %1063, 24
  %1065 = trunc i64 %1064 to i8
  %1066 = load ptr, ptr %8, align 8
  %1067 = getelementptr inbounds i8, ptr %1066, i64 3
  store i8 %1065, ptr %1067, align 1
  %1068 = load i64, ptr %12, align 8
  %1069 = trunc i64 %1068 to i8
  %1070 = load ptr, ptr %8, align 8
  %1071 = getelementptr inbounds i8, ptr %1070, i64 4
  store i8 %1069, ptr %1071, align 1
  %1072 = load i64, ptr %12, align 8
  %1073 = lshr i64 %1072, 8
  %1074 = trunc i64 %1073 to i8
  %1075 = load ptr, ptr %8, align 8
  %1076 = getelementptr inbounds i8, ptr %1075, i64 5
  store i8 %1074, ptr %1076, align 1
  %1077 = load i64, ptr %12, align 8
  %1078 = lshr i64 %1077, 16
  %1079 = trunc i64 %1078 to i8
  %1080 = load ptr, ptr %8, align 8
  %1081 = getelementptr inbounds i8, ptr %1080, i64 6
  store i8 %1079, ptr %1081, align 1
  %1082 = load i64, ptr %12, align 8
  %1083 = lshr i64 %1082, 24
  %1084 = trunc i64 %1083 to i8
  %1085 = load ptr, ptr %8, align 8
  %1086 = getelementptr inbounds i8, ptr %1085, i64 7
  store i8 %1084, ptr %1086, align 1
  %1087 = load i64, ptr %13, align 8
  %1088 = trunc i64 %1087 to i8
  %1089 = load ptr, ptr %8, align 8
  %1090 = getelementptr inbounds i8, ptr %1089, i64 8
  store i8 %1088, ptr %1090, align 1
  %1091 = load i64, ptr %13, align 8
  %1092 = lshr i64 %1091, 8
  %1093 = trunc i64 %1092 to i8
  %1094 = load ptr, ptr %8, align 8
  %1095 = getelementptr inbounds i8, ptr %1094, i64 9
  store i8 %1093, ptr %1095, align 1
  %1096 = load i64, ptr %13, align 8
  %1097 = lshr i64 %1096, 16
  %1098 = trunc i64 %1097 to i8
  %1099 = load ptr, ptr %8, align 8
  %1100 = getelementptr inbounds i8, ptr %1099, i64 10
  store i8 %1098, ptr %1100, align 1
  %1101 = load i64, ptr %13, align 8
  %1102 = lshr i64 %1101, 24
  %1103 = trunc i64 %1102 to i8
  %1104 = load ptr, ptr %8, align 8
  %1105 = getelementptr inbounds i8, ptr %1104, i64 11
  store i8 %1103, ptr %1105, align 1
  %1106 = load i64, ptr %14, align 8
  %1107 = trunc i64 %1106 to i8
  %1108 = load ptr, ptr %8, align 8
  %1109 = getelementptr inbounds i8, ptr %1108, i64 12
  store i8 %1107, ptr %1109, align 1
  %1110 = load i64, ptr %14, align 8
  %1111 = lshr i64 %1110, 8
  %1112 = trunc i64 %1111 to i8
  %1113 = load ptr, ptr %8, align 8
  %1114 = getelementptr inbounds i8, ptr %1113, i64 13
  store i8 %1112, ptr %1114, align 1
  %1115 = load i64, ptr %14, align 8
  %1116 = lshr i64 %1115, 16
  %1117 = trunc i64 %1116 to i8
  %1118 = load ptr, ptr %8, align 8
  %1119 = getelementptr inbounds i8, ptr %1118, i64 14
  store i8 %1117, ptr %1119, align 1
  %1120 = load i64, ptr %14, align 8
  %1121 = lshr i64 %1120, 24
  %1122 = trunc i64 %1121 to i8
  %1123 = load ptr, ptr %8, align 8
  %1124 = getelementptr inbounds i8, ptr %1123, i64 15
  store i8 %1122, ptr %1124, align 1
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_crypt_cbc(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca [16 x i8], align 16
  store ptr %0, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store i64 %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  %16 = load i64, ptr %10, align 8
  %17 = srem i64 %16, 16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 -2064, ptr %7, align 4
  br label %116

20:                                               ; preds = %6
  %21 = load i32, ptr %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %60, %23
  %25 = load i64, ptr %10, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %69

27:                                               ; preds = %24
  %28 = getelementptr inbounds [16 x i8], ptr %15, i64 0, i64 0
  %29 = load ptr, ptr %12, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %28, ptr align 1 %29, i64 16, i1 false)
  %30 = load ptr, ptr %8, align 8
  %31 = load i32, ptr %9, align 4
  %32 = load ptr, ptr %12, align 8
  %33 = load ptr, ptr %13, align 8
  %34 = call i32 @aes_crypt_ecb(ptr noundef %30, i32 noundef %31, ptr noundef %32, ptr noundef %33)
  store i32 0, ptr %14, align 4
  br label %35

35:                                               ; preds = %57, %27
  %36 = load i32, ptr %14, align 4
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  %39 = load ptr, ptr %13, align 8
  %40 = load i32, ptr %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %39, i64 %41
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load ptr, ptr %11, align 8
  %46 = load i32, ptr %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %45, i64 %47
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = xor i32 %44, %50
  %52 = trunc i32 %51 to i8
  %53 = load ptr, ptr %13, align 8
  %54 = load i32, ptr %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %53, i64 %55
  store i8 %52, ptr %56, align 1
  br label %57

57:                                               ; preds = %38
  %58 = load i32, ptr %14, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %14, align 4
  br label %35, !llvm.loop !19

60:                                               ; preds = %35
  %61 = load ptr, ptr %11, align 8
  %62 = getelementptr inbounds [16 x i8], ptr %15, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 16 %62, i64 16, i1 false)
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i8, ptr %63, i64 16
  store ptr %64, ptr %12, align 8
  %65 = load ptr, ptr %13, align 8
  %66 = getelementptr inbounds i8, ptr %65, i64 16
  store ptr %66, ptr %13, align 8
  %67 = load i64, ptr %10, align 8
  %68 = sub nsw i64 %67, 16
  store i64 %68, ptr %10, align 8
  br label %24, !llvm.loop !20

69:                                               ; preds = %24
  br label %115

70:                                               ; preds = %20
  br label %71

71:                                               ; preds = %100, %70
  %72 = load i64, ptr %10, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %114

74:                                               ; preds = %71
  store i32 0, ptr %14, align 4
  br label %75

75:                                               ; preds = %97, %74
  %76 = load i32, ptr %14, align 4
  %77 = icmp slt i32 %76, 16
  br i1 %77, label %78, label %100

78:                                               ; preds = %75
  %79 = load ptr, ptr %12, align 8
  %80 = load i32, ptr %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %79, i64 %81
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load ptr, ptr %11, align 8
  %86 = load i32, ptr %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %85, i64 %87
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = xor i32 %84, %90
  %92 = trunc i32 %91 to i8
  %93 = load ptr, ptr %13, align 8
  %94 = load i32, ptr %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %93, i64 %95
  store i8 %92, ptr %96, align 1
  br label %97

97:                                               ; preds = %78
  %98 = load i32, ptr %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %14, align 4
  br label %75, !llvm.loop !21

100:                                              ; preds = %75
  %101 = load ptr, ptr %8, align 8
  %102 = load i32, ptr %9, align 4
  %103 = load ptr, ptr %13, align 8
  %104 = load ptr, ptr %13, align 8
  %105 = call i32 @aes_crypt_ecb(ptr noundef %101, i32 noundef %102, ptr noundef %103, ptr noundef %104)
  %106 = load ptr, ptr %11, align 8
  %107 = load ptr, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %106, ptr align 1 %107, i64 16, i1 false)
  %108 = load ptr, ptr %12, align 8
  %109 = getelementptr inbounds i8, ptr %108, i64 16
  store ptr %109, ptr %12, align 8
  %110 = load ptr, ptr %13, align 8
  %111 = getelementptr inbounds i8, ptr %110, i64 16
  store ptr %111, ptr %13, align 8
  %112 = load i64, ptr %10, align 8
  %113 = sub nsw i64 %112, 16
  store i64 %113, ptr %10, align 8
  br label %71, !llvm.loop !22

114:                                              ; preds = %71
  br label %115

115:                                              ; preds = %114, %69
  store i32 0, ptr %7, align 4
  br label %116

116:                                              ; preds = %115, %19
  %117 = load i32, ptr %7, align 4
  ret i32 %117
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 16.0.0"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
