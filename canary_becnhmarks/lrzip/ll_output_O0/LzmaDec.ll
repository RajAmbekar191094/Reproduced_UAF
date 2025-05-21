; ModuleID = './lzma/C/LzmaDec.c'
source_filename = "./lzma/C/LzmaDec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CLzmaDec = type { %struct._CLzmaProps, ptr, ptr, ptr, i32, i32, i64, i64, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, [20 x i8] }
%struct._CLzmaProps = type { i32, i32, i32, i32 }
%struct.ISzAlloc = type { ptr, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaDec_InitDicAndState(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.CLzmaDec, ptr %7, i32 0, i32 13
  store i32 1, ptr %8, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.CLzmaDec, ptr %9, i32 0, i32 12
  store i32 0, ptr %10, align 4
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.CLzmaDec, ptr %11, i32 0, i32 16
  store i32 0, ptr %12, align 4
  %13 = load i32, ptr %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.CLzmaDec, ptr %16, i32 0, i32 8
  store i32 0, ptr %17, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.CLzmaDec, ptr %18, i32 0, i32 9
  store i32 0, ptr %19, align 4
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.CLzmaDec, ptr %20, i32 0, i32 14
  store i32 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %15, %3
  %23 = load i32, ptr %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.CLzmaDec, ptr %26, i32 0, i32 14
  store i32 1, ptr %27, align 4
  br label %28

28:                                               ; preds = %25, %22
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaDec_Init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.CLzmaDec, ptr %3, i32 0, i32 6
  store i64 0, ptr %4, align 8
  %5 = load ptr, ptr %2, align 8
  call void @LzmaDec_InitDicAndState(ptr noundef %5, i32 noundef 1, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaDec_DecodeToDic(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store i32 %4, ptr %12, align 4
  store ptr %5, ptr %13, align 8
  %22 = load ptr, ptr %11, align 8
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %14, align 8
  %24 = load ptr, ptr %11, align 8
  store i64 0, ptr %24, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = load i64, ptr %9, align 8
  call void @LzmaDec_WriteRem(ptr noundef %25, i64 noundef %26)
  %27 = load ptr, ptr %13, align 8
  store i32 0, ptr %27, align 4
  br label %28

28:                                               ; preds = %309, %6
  %29 = load ptr, ptr %8, align 8
  %30 = getelementptr inbounds %struct.CLzmaDec, ptr %29, i32 0, i32 12
  %31 = load i32, ptr %30, align 4
  %32 = icmp ne i32 %31, 274
  br i1 %32, label %33, label %310

33:                                               ; preds = %28
  %34 = load ptr, ptr %8, align 8
  %35 = getelementptr inbounds %struct.CLzmaDec, ptr %34, i32 0, i32 13
  %36 = load i32, ptr %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %89

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %61, %38
  %40 = load i64, ptr %14, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load ptr, ptr %8, align 8
  %44 = getelementptr inbounds %struct.CLzmaDec, ptr %43, i32 0, i32 16
  %45 = load i32, ptr %44, align 4
  %46 = icmp ult i32 %45, 5
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ false, %39 ], [ %46, %42 ]
  br i1 %48, label %49, label %67

49:                                               ; preds = %47
  %50 = load ptr, ptr %10, align 8
  %51 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %51, ptr %10, align 8
  %52 = load i8, ptr %50, align 1
  %53 = load ptr, ptr %8, align 8
  %54 = getelementptr inbounds %struct.CLzmaDec, ptr %53, i32 0, i32 17
  %55 = load ptr, ptr %8, align 8
  %56 = getelementptr inbounds %struct.CLzmaDec, ptr %55, i32 0, i32 16
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 4
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds [20 x i8], ptr %54, i64 0, i64 %59
  store i8 %52, ptr %60, align 1
  br label %61

61:                                               ; preds = %49
  %62 = load ptr, ptr %11, align 8
  %63 = load i64, ptr %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, ptr %62, align 8
  %65 = load i64, ptr %14, align 8
  %66 = add i64 %65, -1
  store i64 %66, ptr %14, align 8
  br label %39, !llvm.loop !6

67:                                               ; preds = %47
  %68 = load ptr, ptr %8, align 8
  %69 = getelementptr inbounds %struct.CLzmaDec, ptr %68, i32 0, i32 16
  %70 = load i32, ptr %69, align 4
  %71 = icmp ult i32 %70, 5
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load ptr, ptr %13, align 8
  store i32 3, ptr %73, align 4
  store i32 0, ptr %7, align 4
  br label %324

74:                                               ; preds = %67
  %75 = load ptr, ptr %8, align 8
  %76 = getelementptr inbounds %struct.CLzmaDec, ptr %75, i32 0, i32 17
  %77 = getelementptr inbounds [20 x i8], ptr %76, i64 0, i64 0
  %78 = load i8, ptr %77, align 8
  %79 = zext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i32 1, ptr %7, align 4
  br label %324

82:                                               ; preds = %74
  %83 = load ptr, ptr %8, align 8
  %84 = load ptr, ptr %8, align 8
  %85 = getelementptr inbounds %struct.CLzmaDec, ptr %84, i32 0, i32 17
  %86 = getelementptr inbounds [20 x i8], ptr %85, i64 0, i64 0
  call void @LzmaDec_InitRc(ptr noundef %83, ptr noundef %86)
  %87 = load ptr, ptr %8, align 8
  %88 = getelementptr inbounds %struct.CLzmaDec, ptr %87, i32 0, i32 16
  store i32 0, ptr %88, align 4
  br label %89

89:                                               ; preds = %82, %33
  store i32 0, ptr %15, align 4
  %90 = load ptr, ptr %8, align 8
  %91 = getelementptr inbounds %struct.CLzmaDec, ptr %90, i32 0, i32 6
  %92 = load i64, ptr %91, align 8
  %93 = load i64, ptr %9, align 8
  %94 = icmp uge i64 %92, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %89
  %96 = load ptr, ptr %8, align 8
  %97 = getelementptr inbounds %struct.CLzmaDec, ptr %96, i32 0, i32 12
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load ptr, ptr %8, align 8
  %102 = getelementptr inbounds %struct.CLzmaDec, ptr %101, i32 0, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load ptr, ptr %13, align 8
  store i32 4, ptr %106, align 4
  store i32 0, ptr %7, align 4
  br label %324

107:                                              ; preds = %100, %95
  %108 = load i32, ptr %12, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load ptr, ptr %13, align 8
  store i32 2, ptr %111, align 4
  store i32 0, ptr %7, align 4
  br label %324

112:                                              ; preds = %107
  %113 = load ptr, ptr %8, align 8
  %114 = getelementptr inbounds %struct.CLzmaDec, ptr %113, i32 0, i32 12
  %115 = load i32, ptr %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load ptr, ptr %13, align 8
  store i32 2, ptr %118, align 4
  store i32 1, ptr %7, align 4
  br label %324

119:                                              ; preds = %112
  store i32 1, ptr %15, align 4
  br label %120

120:                                              ; preds = %119, %89
  %121 = load ptr, ptr %8, align 8
  %122 = getelementptr inbounds %struct.CLzmaDec, ptr %121, i32 0, i32 14
  %123 = load i32, ptr %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load ptr, ptr %8, align 8
  call void @LzmaDec_InitStateReal(ptr noundef %126)
  br label %127

127:                                              ; preds = %125, %120
  %128 = load ptr, ptr %8, align 8
  %129 = getelementptr inbounds %struct.CLzmaDec, ptr %128, i32 0, i32 16
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %203

132:                                              ; preds = %127
  %133 = load i64, ptr %14, align 8
  %134 = icmp ult i64 %133, 20
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load i32, ptr %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %170

138:                                              ; preds = %135, %132
  %139 = load ptr, ptr %8, align 8
  %140 = load ptr, ptr %10, align 8
  %141 = load i64, ptr %14, align 8
  %142 = call i32 @LzmaDec_TryDummy(ptr noundef %139, ptr noundef %140, i64 noundef %141)
  store i32 %142, ptr %18, align 4
  %143 = load i32, ptr %18, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %138
  %146 = load ptr, ptr %8, align 8
  %147 = getelementptr inbounds %struct.CLzmaDec, ptr %146, i32 0, i32 17
  %148 = getelementptr inbounds [20 x i8], ptr %147, i64 0, i64 0
  %149 = load ptr, ptr %10, align 8
  %150 = load i64, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %148, ptr align 1 %149, i64 %150, i1 false)
  %151 = load i64, ptr %14, align 8
  %152 = trunc i64 %151 to i32
  %153 = load ptr, ptr %8, align 8
  %154 = getelementptr inbounds %struct.CLzmaDec, ptr %153, i32 0, i32 16
  store i32 %152, ptr %154, align 4
  %155 = load i64, ptr %14, align 8
  %156 = load ptr, ptr %11, align 8
  %157 = load i64, ptr %156, align 8
  %158 = add i64 %157, %155
  store i64 %158, ptr %156, align 8
  %159 = load ptr, ptr %13, align 8
  store i32 3, ptr %159, align 4
  store i32 0, ptr %7, align 4
  br label %324

160:                                              ; preds = %138
  %161 = load i32, ptr %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i32, ptr %18, align 4
  %165 = icmp ne i32 %164, 2
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = load ptr, ptr %13, align 8
  store i32 2, ptr %167, align 4
  store i32 1, ptr %7, align 4
  br label %324

168:                                              ; preds = %163, %160
  %169 = load ptr, ptr %10, align 8
  store ptr %169, ptr %17, align 8
  br label %175

170:                                              ; preds = %135
  %171 = load ptr, ptr %10, align 8
  %172 = load i64, ptr %14, align 8
  %173 = getelementptr inbounds i8, ptr %171, i64 %172
  %174 = getelementptr inbounds i8, ptr %173, i64 -20
  store ptr %174, ptr %17, align 8
  br label %175

175:                                              ; preds = %170, %168
  %176 = load ptr, ptr %10, align 8
  %177 = load ptr, ptr %8, align 8
  %178 = getelementptr inbounds %struct.CLzmaDec, ptr %177, i32 0, i32 3
  store ptr %176, ptr %178, align 8
  %179 = load ptr, ptr %8, align 8
  %180 = load i64, ptr %9, align 8
  %181 = load ptr, ptr %17, align 8
  %182 = call i32 @LzmaDec_DecodeReal2(ptr noundef %179, i64 noundef %180, ptr noundef %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %175
  store i32 1, ptr %7, align 4
  br label %324

185:                                              ; preds = %175
  %186 = load ptr, ptr %8, align 8
  %187 = getelementptr inbounds %struct.CLzmaDec, ptr %186, i32 0, i32 3
  %188 = load ptr, ptr %187, align 8
  %189 = load ptr, ptr %10, align 8
  %190 = ptrtoint ptr %188 to i64
  %191 = ptrtoint ptr %189 to i64
  %192 = sub i64 %190, %191
  store i64 %192, ptr %16, align 8
  %193 = load i64, ptr %16, align 8
  %194 = load ptr, ptr %11, align 8
  %195 = load i64, ptr %194, align 8
  %196 = add i64 %195, %193
  store i64 %196, ptr %194, align 8
  %197 = load i64, ptr %16, align 8
  %198 = load ptr, ptr %10, align 8
  %199 = getelementptr inbounds i8, ptr %198, i64 %197
  store ptr %199, ptr %10, align 8
  %200 = load i64, ptr %16, align 8
  %201 = load i64, ptr %14, align 8
  %202 = sub i64 %201, %200
  store i64 %202, ptr %14, align 8
  br label %309

203:                                              ; preds = %127
  %204 = load ptr, ptr %8, align 8
  %205 = getelementptr inbounds %struct.CLzmaDec, ptr %204, i32 0, i32 16
  %206 = load i32, ptr %205, align 4
  store i32 %206, ptr %19, align 4
  store i32 0, ptr %20, align 4
  br label %207

207:                                              ; preds = %217, %203
  %208 = load i32, ptr %19, align 4
  %209 = icmp ult i32 %208, 20
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  %211 = load i32, ptr %20, align 4
  %212 = zext i32 %211 to i64
  %213 = load i64, ptr %14, align 8
  %214 = icmp ult i64 %212, %213
  br label %215

215:                                              ; preds = %210, %207
  %216 = phi i1 [ false, %207 ], [ %214, %210 ]
  br i1 %216, label %217, label %230

217:                                              ; preds = %215
  %218 = load ptr, ptr %10, align 8
  %219 = load i32, ptr %20, align 4
  %220 = add i32 %219, 1
  store i32 %220, ptr %20, align 4
  %221 = zext i32 %219 to i64
  %222 = getelementptr inbounds i8, ptr %218, i64 %221
  %223 = load i8, ptr %222, align 1
  %224 = load ptr, ptr %8, align 8
  %225 = getelementptr inbounds %struct.CLzmaDec, ptr %224, i32 0, i32 17
  %226 = load i32, ptr %19, align 4
  %227 = add i32 %226, 1
  store i32 %227, ptr %19, align 4
  %228 = zext i32 %226 to i64
  %229 = getelementptr inbounds [20 x i8], ptr %225, i64 0, i64 %228
  store i8 %223, ptr %229, align 1
  br label %207, !llvm.loop !8

230:                                              ; preds = %215
  %231 = load i32, ptr %19, align 4
  %232 = load ptr, ptr %8, align 8
  %233 = getelementptr inbounds %struct.CLzmaDec, ptr %232, i32 0, i32 16
  store i32 %231, ptr %233, align 4
  %234 = load i32, ptr %19, align 4
  %235 = icmp ult i32 %234, 20
  br i1 %235, label %239, label %236

236:                                              ; preds = %230
  %237 = load i32, ptr %15, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %265

239:                                              ; preds = %236, %230
  %240 = load ptr, ptr %8, align 8
  %241 = load ptr, ptr %8, align 8
  %242 = getelementptr inbounds %struct.CLzmaDec, ptr %241, i32 0, i32 17
  %243 = getelementptr inbounds [20 x i8], ptr %242, i64 0, i64 0
  %244 = load i32, ptr %19, align 4
  %245 = zext i32 %244 to i64
  %246 = call i32 @LzmaDec_TryDummy(ptr noundef %240, ptr noundef %243, i64 noundef %245)
  store i32 %246, ptr %21, align 4
  %247 = load i32, ptr %21, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %239
  %250 = load i32, ptr %20, align 4
  %251 = zext i32 %250 to i64
  %252 = load ptr, ptr %11, align 8
  %253 = load i64, ptr %252, align 8
  %254 = add i64 %253, %251
  store i64 %254, ptr %252, align 8
  %255 = load ptr, ptr %13, align 8
  store i32 3, ptr %255, align 4
  store i32 0, ptr %7, align 4
  br label %324

256:                                              ; preds = %239
  %257 = load i32, ptr %15, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %256
  %260 = load i32, ptr %21, align 4
  %261 = icmp ne i32 %260, 2
  br i1 %261, label %262, label %264

262:                                              ; preds = %259
  %263 = load ptr, ptr %13, align 8
  store i32 2, ptr %263, align 4
  store i32 1, ptr %7, align 4
  br label %324

264:                                              ; preds = %259, %256
  br label %265

265:                                              ; preds = %264, %236
  %266 = load ptr, ptr %8, align 8
  %267 = getelementptr inbounds %struct.CLzmaDec, ptr %266, i32 0, i32 17
  %268 = getelementptr inbounds [20 x i8], ptr %267, i64 0, i64 0
  %269 = load ptr, ptr %8, align 8
  %270 = getelementptr inbounds %struct.CLzmaDec, ptr %269, i32 0, i32 3
  store ptr %268, ptr %270, align 8
  %271 = load ptr, ptr %8, align 8
  %272 = load i64, ptr %9, align 8
  %273 = load ptr, ptr %8, align 8
  %274 = getelementptr inbounds %struct.CLzmaDec, ptr %273, i32 0, i32 3
  %275 = load ptr, ptr %274, align 8
  %276 = call i32 @LzmaDec_DecodeReal2(ptr noundef %271, i64 noundef %272, ptr noundef %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %265
  store i32 1, ptr %7, align 4
  br label %324

279:                                              ; preds = %265
  %280 = load i32, ptr %19, align 4
  %281 = load ptr, ptr %8, align 8
  %282 = getelementptr inbounds %struct.CLzmaDec, ptr %281, i32 0, i32 3
  %283 = load ptr, ptr %282, align 8
  %284 = load ptr, ptr %8, align 8
  %285 = getelementptr inbounds %struct.CLzmaDec, ptr %284, i32 0, i32 17
  %286 = getelementptr inbounds [20 x i8], ptr %285, i64 0, i64 0
  %287 = ptrtoint ptr %283 to i64
  %288 = ptrtoint ptr %286 to i64
  %289 = sub i64 %287, %288
  %290 = trunc i64 %289 to i32
  %291 = sub i32 %280, %290
  %292 = load i32, ptr %20, align 4
  %293 = sub i32 %292, %291
  store i32 %293, ptr %20, align 4
  %294 = load i32, ptr %20, align 4
  %295 = zext i32 %294 to i64
  %296 = load ptr, ptr %11, align 8
  %297 = load i64, ptr %296, align 8
  %298 = add i64 %297, %295
  store i64 %298, ptr %296, align 8
  %299 = load i32, ptr %20, align 4
  %300 = load ptr, ptr %10, align 8
  %301 = zext i32 %299 to i64
  %302 = getelementptr inbounds i8, ptr %300, i64 %301
  store ptr %302, ptr %10, align 8
  %303 = load i32, ptr %20, align 4
  %304 = zext i32 %303 to i64
  %305 = load i64, ptr %14, align 8
  %306 = sub i64 %305, %304
  store i64 %306, ptr %14, align 8
  %307 = load ptr, ptr %8, align 8
  %308 = getelementptr inbounds %struct.CLzmaDec, ptr %307, i32 0, i32 16
  store i32 0, ptr %308, align 4
  br label %309

309:                                              ; preds = %279, %185
  br label %28, !llvm.loop !9

310:                                              ; preds = %28
  %311 = load ptr, ptr %8, align 8
  %312 = getelementptr inbounds %struct.CLzmaDec, ptr %311, i32 0, i32 5
  %313 = load i32, ptr %312, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %310
  %316 = load ptr, ptr %13, align 8
  store i32 1, ptr %316, align 4
  br label %317

317:                                              ; preds = %315, %310
  %318 = load ptr, ptr %8, align 8
  %319 = getelementptr inbounds %struct.CLzmaDec, ptr %318, i32 0, i32 5
  %320 = load i32, ptr %319, align 4
  %321 = icmp eq i32 %320, 0
  %322 = zext i1 %321 to i64
  %323 = select i1 %321, i32 0, i32 1
  store i32 %323, ptr %7, align 4
  br label %324

324:                                              ; preds = %317, %278, %262, %249, %184, %166, %145, %117, %110, %105, %81, %72
  %325 = load i32, ptr %7, align 4
  ret i32 %325
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LzmaDec_WriteRem(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.CLzmaDec, ptr %10, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %112

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.CLzmaDec, ptr %15, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, 274
  br i1 %18, label %19, label %112

19:                                               ; preds = %14
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct.CLzmaDec, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %5, align 8
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.CLzmaDec, ptr %23, i32 0, i32 6
  %25 = load i64, ptr %24, align 8
  store i64 %25, ptr %6, align 8
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.CLzmaDec, ptr %26, i32 0, i32 7
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %7, align 8
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.CLzmaDec, ptr %29, i32 0, i32 12
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %8, align 4
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.CLzmaDec, ptr %32, i32 0, i32 11
  %34 = getelementptr inbounds [4 x i32], ptr %33, i64 0, i64 0
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %9, align 4
  %36 = load i64, ptr %4, align 8
  %37 = load i64, ptr %6, align 8
  %38 = sub i64 %36, %37
  %39 = load i32, ptr %8, align 4
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %19
  %43 = load i64, ptr %4, align 8
  %44 = load i64, ptr %6, align 8
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, ptr %8, align 4
  br label %47

47:                                               ; preds = %42, %19
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct.CLzmaDec, ptr %48, i32 0, i32 9
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.CLzmaDec, ptr %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct._CLzmaProps, ptr %54, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds %struct.CLzmaDec, ptr %57, i32 0, i32 8
  %59 = load i32, ptr %58, align 8
  %60 = sub i32 %56, %59
  %61 = load i32, ptr %8, align 4
  %62 = icmp ule i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %52
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds %struct.CLzmaDec, ptr %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct._CLzmaProps, ptr %65, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds %struct.CLzmaDec, ptr %68, i32 0, i32 9
  store i32 %67, ptr %69, align 4
  br label %70

70:                                               ; preds = %63, %52, %47
  %71 = load i32, ptr %8, align 4
  %72 = load ptr, ptr %3, align 8
  %73 = getelementptr inbounds %struct.CLzmaDec, ptr %72, i32 0, i32 8
  %74 = load i32, ptr %73, align 8
  %75 = add i32 %74, %71
  store i32 %75, ptr %73, align 8
  %76 = load i32, ptr %8, align 4
  %77 = load ptr, ptr %3, align 8
  %78 = getelementptr inbounds %struct.CLzmaDec, ptr %77, i32 0, i32 12
  %79 = load i32, ptr %78, align 4
  %80 = sub i32 %79, %76
  store i32 %80, ptr %78, align 4
  br label %81

81:                                               ; preds = %98, %70
  %82 = load i32, ptr %8, align 4
  %83 = add i32 %82, -1
  store i32 %83, ptr %8, align 4
  %84 = icmp ne i32 %82, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %81
  %86 = load ptr, ptr %5, align 8
  %87 = load i64, ptr %6, align 8
  %88 = load i32, ptr %9, align 4
  %89 = zext i32 %88 to i64
  %90 = sub i64 %87, %89
  %91 = load i64, ptr %6, align 8
  %92 = load i32, ptr %9, align 4
  %93 = zext i32 %92 to i64
  %94 = icmp ult i64 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i64, ptr %7, align 8
  br label %98

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i64 [ %96, %95 ], [ 0, %97 ]
  %100 = add i64 %90, %99
  %101 = getelementptr inbounds i8, ptr %86, i64 %100
  %102 = load i8, ptr %101, align 1
  %103 = load ptr, ptr %5, align 8
  %104 = load i64, ptr %6, align 8
  %105 = getelementptr inbounds i8, ptr %103, i64 %104
  store i8 %102, ptr %105, align 1
  %106 = load i64, ptr %6, align 8
  %107 = add i64 %106, 1
  store i64 %107, ptr %6, align 8
  br label %81, !llvm.loop !10

108:                                              ; preds = %81
  %109 = load i64, ptr %6, align 8
  %110 = load ptr, ptr %3, align 8
  %111 = getelementptr inbounds %struct.CLzmaDec, ptr %110, i32 0, i32 6
  store i64 %109, ptr %111, align 8
  br label %112

112:                                              ; preds = %108, %14, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LzmaDec_InitRc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl i32 %8, 24
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds i8, ptr %10, i64 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl i32 %13, 16
  %15 = or i32 %9, %14
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i8, ptr %16, i64 3
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl i32 %19, 8
  %21 = or i32 %15, %20
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 4
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %21, %25
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.CLzmaDec, ptr %27, i32 0, i32 5
  store i32 %26, ptr %28, align 4
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.CLzmaDec, ptr %29, i32 0, i32 4
  store i32 -1, ptr %30, align 8
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.CLzmaDec, ptr %31, i32 0, i32 13
  store i32 0, ptr %32, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LzmaDec_InitStateReal(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.CLzmaDec, ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct._CLzmaProps, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.CLzmaDec, ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct._CLzmaProps, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %9, %13
  %15 = shl i32 768, %14
  %16 = add i32 1846, %15
  store i32 %16, ptr %3, align 4
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.CLzmaDec, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %5, align 8
  store i32 0, ptr %4, align 4
  br label %20

20:                                               ; preds = %29, %1
  %21 = load i32, ptr %4, align 4
  %22 = load i32, ptr %3, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8
  %26 = load i32, ptr %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i16, ptr %25, i64 %27
  store i16 1024, ptr %28, align 2
  br label %29

29:                                               ; preds = %24
  %30 = load i32, ptr %4, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %4, align 4
  br label %20, !llvm.loop !11

32:                                               ; preds = %20
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.CLzmaDec, ptr %33, i32 0, i32 11
  %35 = getelementptr inbounds [4 x i32], ptr %34, i64 0, i64 3
  store i32 1, ptr %35, align 4
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds %struct.CLzmaDec, ptr %36, i32 0, i32 11
  %38 = getelementptr inbounds [4 x i32], ptr %37, i64 0, i64 2
  store i32 1, ptr %38, align 4
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.CLzmaDec, ptr %39, i32 0, i32 11
  %41 = getelementptr inbounds [4 x i32], ptr %40, i64 0, i64 1
  store i32 1, ptr %41, align 4
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds %struct.CLzmaDec, ptr %42, i32 0, i32 11
  %44 = getelementptr inbounds [4 x i32], ptr %43, i64 0, i64 0
  store i32 1, ptr %44, align 4
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds %struct.CLzmaDec, ptr %45, i32 0, i32 10
  store i32 0, ptr %46, align 8
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr inbounds %struct.CLzmaDec, ptr %47, i32 0, i32 14
  store i32 0, ptr %48, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LzmaDec_TryDummy(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca ptr, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds %struct.CLzmaDec, ptr %31, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  store i32 %33, ptr %8, align 4
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr inbounds %struct.CLzmaDec, ptr %34, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %9, align 4
  %37 = load ptr, ptr %6, align 8
  %38 = load i64, ptr %7, align 8
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  store ptr %39, ptr %10, align 8
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds %struct.CLzmaDec, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  store ptr %42, ptr %11, align 8
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds %struct.CLzmaDec, ptr %43, i32 0, i32 10
  %45 = load i32, ptr %44, align 8
  store i32 %45, ptr %12, align 4
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr inbounds %struct.CLzmaDec, ptr %46, i32 0, i32 8
  %48 = load i32, ptr %47, align 8
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr inbounds %struct.CLzmaDec, ptr %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct._CLzmaProps, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = shl i32 1, %52
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %48, %54
  store i32 %55, ptr %17, align 4
  %56 = load ptr, ptr %11, align 8
  %57 = getelementptr inbounds i16, ptr %56, i64 0
  %58 = load i32, ptr %12, align 4
  %59 = shl i32 %58, 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i16, ptr %57, i64 %60
  %62 = load i32, ptr %17, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i16, ptr %61, i64 %63
  store ptr %64, ptr %14, align 8
  %65 = load ptr, ptr %14, align 8
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  store i32 %67, ptr %16, align 4
  %68 = load i32, ptr %8, align 4
  %69 = icmp ult i32 %68, 16777216
  br i1 %69, label %70, label %85

70:                                               ; preds = %3
  %71 = load ptr, ptr %6, align 8
  %72 = load ptr, ptr %10, align 8
  %73 = icmp uge ptr %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, ptr %4, align 4
  br label %929

75:                                               ; preds = %70
  %76 = load i32, ptr %8, align 4
  %77 = shl i32 %76, 8
  store i32 %77, ptr %8, align 4
  %78 = load i32, ptr %9, align 4
  %79 = shl i32 %78, 8
  %80 = load ptr, ptr %6, align 8
  %81 = getelementptr inbounds i8, ptr %80, i32 1
  store ptr %81, ptr %6, align 8
  %82 = load i8, ptr %80, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %79, %83
  store i32 %84, ptr %9, align 4
  br label %85

85:                                               ; preds = %75, %3
  %86 = load i32, ptr %8, align 4
  %87 = lshr i32 %86, 11
  %88 = load i32, ptr %16, align 4
  %89 = mul i32 %87, %88
  store i32 %89, ptr %15, align 4
  %90 = load i32, ptr %9, align 4
  %91 = load i32, ptr %15, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %317

93:                                               ; preds = %85
  %94 = load i32, ptr %15, align 4
  store i32 %94, ptr %8, align 4
  %95 = load ptr, ptr %11, align 8
  %96 = getelementptr inbounds i16, ptr %95, i64 1846
  store ptr %96, ptr %14, align 8
  %97 = load ptr, ptr %5, align 8
  %98 = getelementptr inbounds %struct.CLzmaDec, ptr %97, i32 0, i32 9
  %99 = load i32, ptr %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %93
  %102 = load ptr, ptr %5, align 8
  %103 = getelementptr inbounds %struct.CLzmaDec, ptr %102, i32 0, i32 8
  %104 = load i32, ptr %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %154

106:                                              ; preds = %101, %93
  %107 = load ptr, ptr %5, align 8
  %108 = getelementptr inbounds %struct.CLzmaDec, ptr %107, i32 0, i32 8
  %109 = load i32, ptr %108, align 8
  %110 = load ptr, ptr %5, align 8
  %111 = getelementptr inbounds %struct.CLzmaDec, ptr %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct._CLzmaProps, ptr %111, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = shl i32 1, %113
  %115 = sub nsw i32 %114, 1
  %116 = and i32 %109, %115
  %117 = load ptr, ptr %5, align 8
  %118 = getelementptr inbounds %struct.CLzmaDec, ptr %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct._CLzmaProps, ptr %118, i32 0, i32 0
  %120 = load i32, ptr %119, align 8
  %121 = shl i32 %116, %120
  %122 = load ptr, ptr %5, align 8
  %123 = getelementptr inbounds %struct.CLzmaDec, ptr %122, i32 0, i32 2
  %124 = load ptr, ptr %123, align 8
  %125 = load ptr, ptr %5, align 8
  %126 = getelementptr inbounds %struct.CLzmaDec, ptr %125, i32 0, i32 6
  %127 = load i64, ptr %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %106
  %130 = load ptr, ptr %5, align 8
  %131 = getelementptr inbounds %struct.CLzmaDec, ptr %130, i32 0, i32 7
  %132 = load i64, ptr %131, align 8
  br label %137

133:                                              ; preds = %106
  %134 = load ptr, ptr %5, align 8
  %135 = getelementptr inbounds %struct.CLzmaDec, ptr %134, i32 0, i32 6
  %136 = load i64, ptr %135, align 8
  br label %137

137:                                              ; preds = %133, %129
  %138 = phi i64 [ %132, %129 ], [ %136, %133 ]
  %139 = sub i64 %138, 1
  %140 = getelementptr inbounds i8, ptr %124, i64 %139
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load ptr, ptr %5, align 8
  %144 = getelementptr inbounds %struct.CLzmaDec, ptr %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct._CLzmaProps, ptr %144, i32 0, i32 0
  %146 = load i32, ptr %145, align 8
  %147 = sub i32 8, %146
  %148 = ashr i32 %142, %147
  %149 = add i32 %121, %148
  %150 = mul i32 768, %149
  %151 = load ptr, ptr %14, align 8
  %152 = zext i32 %150 to i64
  %153 = getelementptr inbounds i16, ptr %151, i64 %152
  store ptr %153, ptr %14, align 8
  br label %154

154:                                              ; preds = %137, %101
  %155 = load i32, ptr %12, align 4
  %156 = icmp ult i32 %155, 7
  br i1 %156, label %157, label %211

157:                                              ; preds = %154
  store i32 1, ptr %18, align 4
  br label %158

158:                                              ; preds = %207, %157
  %159 = load ptr, ptr %14, align 8
  %160 = load i32, ptr %18, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i16, ptr %159, i64 %161
  %163 = load i16, ptr %162, align 2
  %164 = zext i16 %163 to i32
  store i32 %164, ptr %16, align 4
  %165 = load i32, ptr %8, align 4
  %166 = icmp ult i32 %165, 16777216
  br i1 %166, label %167, label %182

167:                                              ; preds = %158
  %168 = load ptr, ptr %6, align 8
  %169 = load ptr, ptr %10, align 8
  %170 = icmp uge ptr %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  store i32 0, ptr %4, align 4
  br label %929

172:                                              ; preds = %167
  %173 = load i32, ptr %8, align 4
  %174 = shl i32 %173, 8
  store i32 %174, ptr %8, align 4
  %175 = load i32, ptr %9, align 4
  %176 = shl i32 %175, 8
  %177 = load ptr, ptr %6, align 8
  %178 = getelementptr inbounds i8, ptr %177, i32 1
  store ptr %178, ptr %6, align 8
  %179 = load i8, ptr %177, align 1
  %180 = zext i8 %179 to i32
  %181 = or i32 %176, %180
  store i32 %181, ptr %9, align 4
  br label %182

182:                                              ; preds = %172, %158
  %183 = load i32, ptr %8, align 4
  %184 = lshr i32 %183, 11
  %185 = load i32, ptr %16, align 4
  %186 = mul i32 %184, %185
  store i32 %186, ptr %15, align 4
  %187 = load i32, ptr %9, align 4
  %188 = load i32, ptr %15, align 4
  %189 = icmp ult i32 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %182
  %191 = load i32, ptr %15, align 4
  store i32 %191, ptr %8, align 4
  %192 = load i32, ptr %18, align 4
  %193 = load i32, ptr %18, align 4
  %194 = add i32 %192, %193
  store i32 %194, ptr %18, align 4
  br label %206

195:                                              ; preds = %182
  %196 = load i32, ptr %15, align 4
  %197 = load i32, ptr %8, align 4
  %198 = sub i32 %197, %196
  store i32 %198, ptr %8, align 4
  %199 = load i32, ptr %15, align 4
  %200 = load i32, ptr %9, align 4
  %201 = sub i32 %200, %199
  store i32 %201, ptr %9, align 4
  %202 = load i32, ptr %18, align 4
  %203 = load i32, ptr %18, align 4
  %204 = add i32 %202, %203
  %205 = add i32 %204, 1
  store i32 %205, ptr %18, align 4
  br label %206

206:                                              ; preds = %195, %190
  br label %207

207:                                              ; preds = %206
  %208 = load i32, ptr %18, align 4
  %209 = icmp ult i32 %208, 256
  br i1 %209, label %158, label %210, !llvm.loop !12

210:                                              ; preds = %207
  br label %316

211:                                              ; preds = %154
  %212 = load ptr, ptr %5, align 8
  %213 = getelementptr inbounds %struct.CLzmaDec, ptr %212, i32 0, i32 2
  %214 = load ptr, ptr %213, align 8
  %215 = load ptr, ptr %5, align 8
  %216 = getelementptr inbounds %struct.CLzmaDec, ptr %215, i32 0, i32 6
  %217 = load i64, ptr %216, align 8
  %218 = load ptr, ptr %5, align 8
  %219 = getelementptr inbounds %struct.CLzmaDec, ptr %218, i32 0, i32 11
  %220 = getelementptr inbounds [4 x i32], ptr %219, i64 0, i64 0
  %221 = load i32, ptr %220, align 4
  %222 = zext i32 %221 to i64
  %223 = sub i64 %217, %222
  %224 = load ptr, ptr %5, align 8
  %225 = getelementptr inbounds %struct.CLzmaDec, ptr %224, i32 0, i32 6
  %226 = load i64, ptr %225, align 8
  %227 = load ptr, ptr %5, align 8
  %228 = getelementptr inbounds %struct.CLzmaDec, ptr %227, i32 0, i32 11
  %229 = getelementptr inbounds [4 x i32], ptr %228, i64 0, i64 0
  %230 = load i32, ptr %229, align 4
  %231 = zext i32 %230 to i64
  %232 = icmp ult i64 %226, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %211
  %234 = load ptr, ptr %5, align 8
  %235 = getelementptr inbounds %struct.CLzmaDec, ptr %234, i32 0, i32 7
  %236 = load i64, ptr %235, align 8
  br label %238

237:                                              ; preds = %211
  br label %238

238:                                              ; preds = %237, %233
  %239 = phi i64 [ %236, %233 ], [ 0, %237 ]
  %240 = add i64 %223, %239
  %241 = getelementptr inbounds i8, ptr %214, i64 %240
  %242 = load i8, ptr %241, align 1
  %243 = zext i8 %242 to i32
  store i32 %243, ptr %19, align 4
  store i32 256, ptr %20, align 4
  store i32 1, ptr %21, align 4
  br label %244

244:                                              ; preds = %312, %238
  %245 = load i32, ptr %19, align 4
  %246 = shl i32 %245, 1
  store i32 %246, ptr %19, align 4
  %247 = load i32, ptr %19, align 4
  %248 = load i32, ptr %20, align 4
  %249 = and i32 %247, %248
  store i32 %249, ptr %22, align 4
  %250 = load ptr, ptr %14, align 8
  %251 = load i32, ptr %20, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i16, ptr %250, i64 %252
  %254 = load i32, ptr %22, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds i16, ptr %253, i64 %255
  %257 = load i32, ptr %21, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i16, ptr %256, i64 %258
  store ptr %259, ptr %23, align 8
  %260 = load ptr, ptr %23, align 8
  %261 = load i16, ptr %260, align 2
  %262 = zext i16 %261 to i32
  store i32 %262, ptr %16, align 4
  %263 = load i32, ptr %8, align 4
  %264 = icmp ult i32 %263, 16777216
  br i1 %264, label %265, label %280

265:                                              ; preds = %244
  %266 = load ptr, ptr %6, align 8
  %267 = load ptr, ptr %10, align 8
  %268 = icmp uge ptr %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  store i32 0, ptr %4, align 4
  br label %929

270:                                              ; preds = %265
  %271 = load i32, ptr %8, align 4
  %272 = shl i32 %271, 8
  store i32 %272, ptr %8, align 4
  %273 = load i32, ptr %9, align 4
  %274 = shl i32 %273, 8
  %275 = load ptr, ptr %6, align 8
  %276 = getelementptr inbounds i8, ptr %275, i32 1
  store ptr %276, ptr %6, align 8
  %277 = load i8, ptr %275, align 1
  %278 = zext i8 %277 to i32
  %279 = or i32 %274, %278
  store i32 %279, ptr %9, align 4
  br label %280

280:                                              ; preds = %270, %244
  %281 = load i32, ptr %8, align 4
  %282 = lshr i32 %281, 11
  %283 = load i32, ptr %16, align 4
  %284 = mul i32 %282, %283
  store i32 %284, ptr %15, align 4
  %285 = load i32, ptr %9, align 4
  %286 = load i32, ptr %15, align 4
  %287 = icmp ult i32 %285, %286
  br i1 %287, label %288, label %297

288:                                              ; preds = %280
  %289 = load i32, ptr %15, align 4
  store i32 %289, ptr %8, align 4
  %290 = load i32, ptr %21, align 4
  %291 = load i32, ptr %21, align 4
  %292 = add i32 %290, %291
  store i32 %292, ptr %21, align 4
  %293 = load i32, ptr %22, align 4
  %294 = xor i32 %293, -1
  %295 = load i32, ptr %20, align 4
  %296 = and i32 %295, %294
  store i32 %296, ptr %20, align 4
  br label %311

297:                                              ; preds = %280
  %298 = load i32, ptr %15, align 4
  %299 = load i32, ptr %8, align 4
  %300 = sub i32 %299, %298
  store i32 %300, ptr %8, align 4
  %301 = load i32, ptr %15, align 4
  %302 = load i32, ptr %9, align 4
  %303 = sub i32 %302, %301
  store i32 %303, ptr %9, align 4
  %304 = load i32, ptr %21, align 4
  %305 = load i32, ptr %21, align 4
  %306 = add i32 %304, %305
  %307 = add i32 %306, 1
  store i32 %307, ptr %21, align 4
  %308 = load i32, ptr %22, align 4
  %309 = load i32, ptr %20, align 4
  %310 = and i32 %309, %308
  store i32 %310, ptr %20, align 4
  br label %311

311:                                              ; preds = %297, %288
  br label %312

312:                                              ; preds = %311
  %313 = load i32, ptr %21, align 4
  %314 = icmp ult i32 %313, 256
  br i1 %314, label %244, label %315, !llvm.loop !13

315:                                              ; preds = %312
  br label %316

316:                                              ; preds = %315, %210
  store i32 1, ptr %13, align 4
  br label %909

317:                                              ; preds = %85
  %318 = load i32, ptr %15, align 4
  %319 = load i32, ptr %8, align 4
  %320 = sub i32 %319, %318
  store i32 %320, ptr %8, align 4
  %321 = load i32, ptr %15, align 4
  %322 = load i32, ptr %9, align 4
  %323 = sub i32 %322, %321
  store i32 %323, ptr %9, align 4
  %324 = load ptr, ptr %11, align 8
  %325 = getelementptr inbounds i16, ptr %324, i64 192
  %326 = load i32, ptr %12, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds i16, ptr %325, i64 %327
  store ptr %328, ptr %14, align 8
  %329 = load ptr, ptr %14, align 8
  %330 = load i16, ptr %329, align 2
  %331 = zext i16 %330 to i32
  store i32 %331, ptr %16, align 4
  %332 = load i32, ptr %8, align 4
  %333 = icmp ult i32 %332, 16777216
  br i1 %333, label %334, label %349

334:                                              ; preds = %317
  %335 = load ptr, ptr %6, align 8
  %336 = load ptr, ptr %10, align 8
  %337 = icmp uge ptr %335, %336
  br i1 %337, label %338, label %339

338:                                              ; preds = %334
  store i32 0, ptr %4, align 4
  br label %929

339:                                              ; preds = %334
  %340 = load i32, ptr %8, align 4
  %341 = shl i32 %340, 8
  store i32 %341, ptr %8, align 4
  %342 = load i32, ptr %9, align 4
  %343 = shl i32 %342, 8
  %344 = load ptr, ptr %6, align 8
  %345 = getelementptr inbounds i8, ptr %344, i32 1
  store ptr %345, ptr %6, align 8
  %346 = load i8, ptr %344, align 1
  %347 = zext i8 %346 to i32
  %348 = or i32 %343, %347
  store i32 %348, ptr %9, align 4
  br label %349

349:                                              ; preds = %339, %317
  %350 = load i32, ptr %8, align 4
  %351 = lshr i32 %350, 11
  %352 = load i32, ptr %16, align 4
  %353 = mul i32 %351, %352
  store i32 %353, ptr %15, align 4
  %354 = load i32, ptr %9, align 4
  %355 = load i32, ptr %15, align 4
  %356 = icmp ult i32 %354, %355
  br i1 %356, label %357, label %361

357:                                              ; preds = %349
  %358 = load i32, ptr %15, align 4
  store i32 %358, ptr %8, align 4
  store i32 0, ptr %12, align 4
  %359 = load ptr, ptr %11, align 8
  %360 = getelementptr inbounds i16, ptr %359, i64 818
  store ptr %360, ptr %14, align 8
  store i32 2, ptr %13, align 4
  br label %564

361:                                              ; preds = %349
  %362 = load i32, ptr %15, align 4
  %363 = load i32, ptr %8, align 4
  %364 = sub i32 %363, %362
  store i32 %364, ptr %8, align 4
  %365 = load i32, ptr %15, align 4
  %366 = load i32, ptr %9, align 4
  %367 = sub i32 %366, %365
  store i32 %367, ptr %9, align 4
  store i32 3, ptr %13, align 4
  %368 = load ptr, ptr %11, align 8
  %369 = getelementptr inbounds i16, ptr %368, i64 204
  %370 = load i32, ptr %12, align 4
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds i16, ptr %369, i64 %371
  store ptr %372, ptr %14, align 8
  %373 = load ptr, ptr %14, align 8
  %374 = load i16, ptr %373, align 2
  %375 = zext i16 %374 to i32
  store i32 %375, ptr %16, align 4
  %376 = load i32, ptr %8, align 4
  %377 = icmp ult i32 %376, 16777216
  br i1 %377, label %378, label %393

378:                                              ; preds = %361
  %379 = load ptr, ptr %6, align 8
  %380 = load ptr, ptr %10, align 8
  %381 = icmp uge ptr %379, %380
  br i1 %381, label %382, label %383

382:                                              ; preds = %378
  store i32 0, ptr %4, align 4
  br label %929

383:                                              ; preds = %378
  %384 = load i32, ptr %8, align 4
  %385 = shl i32 %384, 8
  store i32 %385, ptr %8, align 4
  %386 = load i32, ptr %9, align 4
  %387 = shl i32 %386, 8
  %388 = load ptr, ptr %6, align 8
  %389 = getelementptr inbounds i8, ptr %388, i32 1
  store ptr %389, ptr %6, align 8
  %390 = load i8, ptr %388, align 1
  %391 = zext i8 %390 to i32
  %392 = or i32 %387, %391
  store i32 %392, ptr %9, align 4
  br label %393

393:                                              ; preds = %383, %361
  %394 = load i32, ptr %8, align 4
  %395 = lshr i32 %394, 11
  %396 = load i32, ptr %16, align 4
  %397 = mul i32 %395, %396
  store i32 %397, ptr %15, align 4
  %398 = load i32, ptr %9, align 4
  %399 = load i32, ptr %15, align 4
  %400 = icmp ult i32 %398, %399
  br i1 %400, label %401, label %468

401:                                              ; preds = %393
  %402 = load i32, ptr %15, align 4
  store i32 %402, ptr %8, align 4
  %403 = load ptr, ptr %11, align 8
  %404 = getelementptr inbounds i16, ptr %403, i64 240
  %405 = load i32, ptr %12, align 4
  %406 = shl i32 %405, 4
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds i16, ptr %404, i64 %407
  %409 = load i32, ptr %17, align 4
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds i16, ptr %408, i64 %410
  store ptr %411, ptr %14, align 8
  %412 = load ptr, ptr %14, align 8
  %413 = load i16, ptr %412, align 2
  %414 = zext i16 %413 to i32
  store i32 %414, ptr %16, align 4
  %415 = load i32, ptr %8, align 4
  %416 = icmp ult i32 %415, 16777216
  br i1 %416, label %417, label %432

417:                                              ; preds = %401
  %418 = load ptr, ptr %6, align 8
  %419 = load ptr, ptr %10, align 8
  %420 = icmp uge ptr %418, %419
  br i1 %420, label %421, label %422

421:                                              ; preds = %417
  store i32 0, ptr %4, align 4
  br label %929

422:                                              ; preds = %417
  %423 = load i32, ptr %8, align 4
  %424 = shl i32 %423, 8
  store i32 %424, ptr %8, align 4
  %425 = load i32, ptr %9, align 4
  %426 = shl i32 %425, 8
  %427 = load ptr, ptr %6, align 8
  %428 = getelementptr inbounds i8, ptr %427, i32 1
  store ptr %428, ptr %6, align 8
  %429 = load i8, ptr %427, align 1
  %430 = zext i8 %429 to i32
  %431 = or i32 %426, %430
  store i32 %431, ptr %9, align 4
  br label %432

432:                                              ; preds = %422, %401
  %433 = load i32, ptr %8, align 4
  %434 = lshr i32 %433, 11
  %435 = load i32, ptr %16, align 4
  %436 = mul i32 %434, %435
  store i32 %436, ptr %15, align 4
  %437 = load i32, ptr %9, align 4
  %438 = load i32, ptr %15, align 4
  %439 = icmp ult i32 %437, %438
  br i1 %439, label %440, label %460

440:                                              ; preds = %432
  %441 = load i32, ptr %15, align 4
  store i32 %441, ptr %8, align 4
  %442 = load i32, ptr %8, align 4
  %443 = icmp ult i32 %442, 16777216
  br i1 %443, label %444, label %459

444:                                              ; preds = %440
  %445 = load ptr, ptr %6, align 8
  %446 = load ptr, ptr %10, align 8
  %447 = icmp uge ptr %445, %446
  br i1 %447, label %448, label %449

448:                                              ; preds = %444
  store i32 0, ptr %4, align 4
  br label %929

449:                                              ; preds = %444
  %450 = load i32, ptr %8, align 4
  %451 = shl i32 %450, 8
  store i32 %451, ptr %8, align 4
  %452 = load i32, ptr %9, align 4
  %453 = shl i32 %452, 8
  %454 = load ptr, ptr %6, align 8
  %455 = getelementptr inbounds i8, ptr %454, i32 1
  store ptr %455, ptr %6, align 8
  %456 = load i8, ptr %454, align 1
  %457 = zext i8 %456 to i32
  %458 = or i32 %453, %457
  store i32 %458, ptr %9, align 4
  br label %459

459:                                              ; preds = %449, %440
  store i32 3, ptr %4, align 4
  br label %929

460:                                              ; preds = %432
  %461 = load i32, ptr %15, align 4
  %462 = load i32, ptr %8, align 4
  %463 = sub i32 %462, %461
  store i32 %463, ptr %8, align 4
  %464 = load i32, ptr %15, align 4
  %465 = load i32, ptr %9, align 4
  %466 = sub i32 %465, %464
  store i32 %466, ptr %9, align 4
  br label %467

467:                                              ; preds = %460
  br label %561

468:                                              ; preds = %393
  %469 = load i32, ptr %15, align 4
  %470 = load i32, ptr %8, align 4
  %471 = sub i32 %470, %469
  store i32 %471, ptr %8, align 4
  %472 = load i32, ptr %15, align 4
  %473 = load i32, ptr %9, align 4
  %474 = sub i32 %473, %472
  store i32 %474, ptr %9, align 4
  %475 = load ptr, ptr %11, align 8
  %476 = getelementptr inbounds i16, ptr %475, i64 216
  %477 = load i32, ptr %12, align 4
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds i16, ptr %476, i64 %478
  store ptr %479, ptr %14, align 8
  %480 = load ptr, ptr %14, align 8
  %481 = load i16, ptr %480, align 2
  %482 = zext i16 %481 to i32
  store i32 %482, ptr %16, align 4
  %483 = load i32, ptr %8, align 4
  %484 = icmp ult i32 %483, 16777216
  br i1 %484, label %485, label %500

485:                                              ; preds = %468
  %486 = load ptr, ptr %6, align 8
  %487 = load ptr, ptr %10, align 8
  %488 = icmp uge ptr %486, %487
  br i1 %488, label %489, label %490

489:                                              ; preds = %485
  store i32 0, ptr %4, align 4
  br label %929

490:                                              ; preds = %485
  %491 = load i32, ptr %8, align 4
  %492 = shl i32 %491, 8
  store i32 %492, ptr %8, align 4
  %493 = load i32, ptr %9, align 4
  %494 = shl i32 %493, 8
  %495 = load ptr, ptr %6, align 8
  %496 = getelementptr inbounds i8, ptr %495, i32 1
  store ptr %496, ptr %6, align 8
  %497 = load i8, ptr %495, align 1
  %498 = zext i8 %497 to i32
  %499 = or i32 %494, %498
  store i32 %499, ptr %9, align 4
  br label %500

500:                                              ; preds = %490, %468
  %501 = load i32, ptr %8, align 4
  %502 = lshr i32 %501, 11
  %503 = load i32, ptr %16, align 4
  %504 = mul i32 %502, %503
  store i32 %504, ptr %15, align 4
  %505 = load i32, ptr %9, align 4
  %506 = load i32, ptr %15, align 4
  %507 = icmp ult i32 %505, %506
  br i1 %507, label %508, label %510

508:                                              ; preds = %500
  %509 = load i32, ptr %15, align 4
  store i32 %509, ptr %8, align 4
  br label %560

510:                                              ; preds = %500
  %511 = load i32, ptr %15, align 4
  %512 = load i32, ptr %8, align 4
  %513 = sub i32 %512, %511
  store i32 %513, ptr %8, align 4
  %514 = load i32, ptr %15, align 4
  %515 = load i32, ptr %9, align 4
  %516 = sub i32 %515, %514
  store i32 %516, ptr %9, align 4
  %517 = load ptr, ptr %11, align 8
  %518 = getelementptr inbounds i16, ptr %517, i64 228
  %519 = load i32, ptr %12, align 4
  %520 = zext i32 %519 to i64
  %521 = getelementptr inbounds i16, ptr %518, i64 %520
  store ptr %521, ptr %14, align 8
  %522 = load ptr, ptr %14, align 8
  %523 = load i16, ptr %522, align 2
  %524 = zext i16 %523 to i32
  store i32 %524, ptr %16, align 4
  %525 = load i32, ptr %8, align 4
  %526 = icmp ult i32 %525, 16777216
  br i1 %526, label %527, label %542

527:                                              ; preds = %510
  %528 = load ptr, ptr %6, align 8
  %529 = load ptr, ptr %10, align 8
  %530 = icmp uge ptr %528, %529
  br i1 %530, label %531, label %532

531:                                              ; preds = %527
  store i32 0, ptr %4, align 4
  br label %929

532:                                              ; preds = %527
  %533 = load i32, ptr %8, align 4
  %534 = shl i32 %533, 8
  store i32 %534, ptr %8, align 4
  %535 = load i32, ptr %9, align 4
  %536 = shl i32 %535, 8
  %537 = load ptr, ptr %6, align 8
  %538 = getelementptr inbounds i8, ptr %537, i32 1
  store ptr %538, ptr %6, align 8
  %539 = load i8, ptr %537, align 1
  %540 = zext i8 %539 to i32
  %541 = or i32 %536, %540
  store i32 %541, ptr %9, align 4
  br label %542

542:                                              ; preds = %532, %510
  %543 = load i32, ptr %8, align 4
  %544 = lshr i32 %543, 11
  %545 = load i32, ptr %16, align 4
  %546 = mul i32 %544, %545
  store i32 %546, ptr %15, align 4
  %547 = load i32, ptr %9, align 4
  %548 = load i32, ptr %15, align 4
  %549 = icmp ult i32 %547, %548
  br i1 %549, label %550, label %552

550:                                              ; preds = %542
  %551 = load i32, ptr %15, align 4
  store i32 %551, ptr %8, align 4
  br label %559

552:                                              ; preds = %542
  %553 = load i32, ptr %15, align 4
  %554 = load i32, ptr %8, align 4
  %555 = sub i32 %554, %553
  store i32 %555, ptr %8, align 4
  %556 = load i32, ptr %15, align 4
  %557 = load i32, ptr %9, align 4
  %558 = sub i32 %557, %556
  store i32 %558, ptr %9, align 4
  br label %559

559:                                              ; preds = %552, %550
  br label %560

560:                                              ; preds = %559, %508
  br label %561

561:                                              ; preds = %560, %467
  store i32 12, ptr %12, align 4
  %562 = load ptr, ptr %11, align 8
  %563 = getelementptr inbounds i16, ptr %562, i64 1332
  store ptr %563, ptr %14, align 8
  br label %564

564:                                              ; preds = %561, %357
  %565 = load ptr, ptr %14, align 8
  %566 = getelementptr inbounds i16, ptr %565, i64 0
  store ptr %566, ptr %27, align 8
  %567 = load ptr, ptr %27, align 8
  %568 = load i16, ptr %567, align 2
  %569 = zext i16 %568 to i32
  store i32 %569, ptr %16, align 4
  %570 = load i32, ptr %8, align 4
  %571 = icmp ult i32 %570, 16777216
  br i1 %571, label %572, label %587

572:                                              ; preds = %564
  %573 = load ptr, ptr %6, align 8
  %574 = load ptr, ptr %10, align 8
  %575 = icmp uge ptr %573, %574
  br i1 %575, label %576, label %577

576:                                              ; preds = %572
  store i32 0, ptr %4, align 4
  br label %929

577:                                              ; preds = %572
  %578 = load i32, ptr %8, align 4
  %579 = shl i32 %578, 8
  store i32 %579, ptr %8, align 4
  %580 = load i32, ptr %9, align 4
  %581 = shl i32 %580, 8
  %582 = load ptr, ptr %6, align 8
  %583 = getelementptr inbounds i8, ptr %582, i32 1
  store ptr %583, ptr %6, align 8
  %584 = load i8, ptr %582, align 1
  %585 = zext i8 %584 to i32
  %586 = or i32 %581, %585
  store i32 %586, ptr %9, align 4
  br label %587

587:                                              ; preds = %577, %564
  %588 = load i32, ptr %8, align 4
  %589 = lshr i32 %588, 11
  %590 = load i32, ptr %16, align 4
  %591 = mul i32 %589, %590
  store i32 %591, ptr %15, align 4
  %592 = load i32, ptr %9, align 4
  %593 = load i32, ptr %15, align 4
  %594 = icmp ult i32 %592, %593
  br i1 %594, label %595, label %603

595:                                              ; preds = %587
  %596 = load i32, ptr %15, align 4
  store i32 %596, ptr %8, align 4
  %597 = load ptr, ptr %14, align 8
  %598 = getelementptr inbounds i16, ptr %597, i64 2
  %599 = load i32, ptr %17, align 4
  %600 = shl i32 %599, 3
  %601 = zext i32 %600 to i64
  %602 = getelementptr inbounds i16, ptr %598, i64 %601
  store ptr %602, ptr %27, align 8
  store i32 0, ptr %26, align 4
  store i32 8, ptr %25, align 4
  br label %658

603:                                              ; preds = %587
  %604 = load i32, ptr %15, align 4
  %605 = load i32, ptr %8, align 4
  %606 = sub i32 %605, %604
  store i32 %606, ptr %8, align 4
  %607 = load i32, ptr %15, align 4
  %608 = load i32, ptr %9, align 4
  %609 = sub i32 %608, %607
  store i32 %609, ptr %9, align 4
  %610 = load ptr, ptr %14, align 8
  %611 = getelementptr inbounds i16, ptr %610, i64 1
  store ptr %611, ptr %27, align 8
  %612 = load ptr, ptr %27, align 8
  %613 = load i16, ptr %612, align 2
  %614 = zext i16 %613 to i32
  store i32 %614, ptr %16, align 4
  %615 = load i32, ptr %8, align 4
  %616 = icmp ult i32 %615, 16777216
  br i1 %616, label %617, label %632

617:                                              ; preds = %603
  %618 = load ptr, ptr %6, align 8
  %619 = load ptr, ptr %10, align 8
  %620 = icmp uge ptr %618, %619
  br i1 %620, label %621, label %622

621:                                              ; preds = %617
  store i32 0, ptr %4, align 4
  br label %929

622:                                              ; preds = %617
  %623 = load i32, ptr %8, align 4
  %624 = shl i32 %623, 8
  store i32 %624, ptr %8, align 4
  %625 = load i32, ptr %9, align 4
  %626 = shl i32 %625, 8
  %627 = load ptr, ptr %6, align 8
  %628 = getelementptr inbounds i8, ptr %627, i32 1
  store ptr %628, ptr %6, align 8
  %629 = load i8, ptr %627, align 1
  %630 = zext i8 %629 to i32
  %631 = or i32 %626, %630
  store i32 %631, ptr %9, align 4
  br label %632

632:                                              ; preds = %622, %603
  %633 = load i32, ptr %8, align 4
  %634 = lshr i32 %633, 11
  %635 = load i32, ptr %16, align 4
  %636 = mul i32 %634, %635
  store i32 %636, ptr %15, align 4
  %637 = load i32, ptr %9, align 4
  %638 = load i32, ptr %15, align 4
  %639 = icmp ult i32 %637, %638
  br i1 %639, label %640, label %648

640:                                              ; preds = %632
  %641 = load i32, ptr %15, align 4
  store i32 %641, ptr %8, align 4
  %642 = load ptr, ptr %14, align 8
  %643 = getelementptr inbounds i16, ptr %642, i64 130
  %644 = load i32, ptr %17, align 4
  %645 = shl i32 %644, 3
  %646 = zext i32 %645 to i64
  %647 = getelementptr inbounds i16, ptr %643, i64 %646
  store ptr %647, ptr %27, align 8
  store i32 8, ptr %26, align 4
  store i32 8, ptr %25, align 4
  br label %657

648:                                              ; preds = %632
  %649 = load i32, ptr %15, align 4
  %650 = load i32, ptr %8, align 4
  %651 = sub i32 %650, %649
  store i32 %651, ptr %8, align 4
  %652 = load i32, ptr %15, align 4
  %653 = load i32, ptr %9, align 4
  %654 = sub i32 %653, %652
  store i32 %654, ptr %9, align 4
  %655 = load ptr, ptr %14, align 8
  %656 = getelementptr inbounds i16, ptr %655, i64 258
  store ptr %656, ptr %27, align 8
  store i32 16, ptr %26, align 4
  store i32 256, ptr %25, align 4
  br label %657

657:                                              ; preds = %648, %640
  br label %658

658:                                              ; preds = %657, %595
  store i32 1, ptr %24, align 4
  br label %659

659:                                              ; preds = %708, %658
  %660 = load ptr, ptr %27, align 8
  %661 = load i32, ptr %24, align 4
  %662 = zext i32 %661 to i64
  %663 = getelementptr inbounds i16, ptr %660, i64 %662
  %664 = load i16, ptr %663, align 2
  %665 = zext i16 %664 to i32
  store i32 %665, ptr %16, align 4
  %666 = load i32, ptr %8, align 4
  %667 = icmp ult i32 %666, 16777216
  br i1 %667, label %668, label %683

668:                                              ; preds = %659
  %669 = load ptr, ptr %6, align 8
  %670 = load ptr, ptr %10, align 8
  %671 = icmp uge ptr %669, %670
  br i1 %671, label %672, label %673

672:                                              ; preds = %668
  store i32 0, ptr %4, align 4
  br label %929

673:                                              ; preds = %668
  %674 = load i32, ptr %8, align 4
  %675 = shl i32 %674, 8
  store i32 %675, ptr %8, align 4
  %676 = load i32, ptr %9, align 4
  %677 = shl i32 %676, 8
  %678 = load ptr, ptr %6, align 8
  %679 = getelementptr inbounds i8, ptr %678, i32 1
  store ptr %679, ptr %6, align 8
  %680 = load i8, ptr %678, align 1
  %681 = zext i8 %680 to i32
  %682 = or i32 %677, %681
  store i32 %682, ptr %9, align 4
  br label %683

683:                                              ; preds = %673, %659
  %684 = load i32, ptr %8, align 4
  %685 = lshr i32 %684, 11
  %686 = load i32, ptr %16, align 4
  %687 = mul i32 %685, %686
  store i32 %687, ptr %15, align 4
  %688 = load i32, ptr %9, align 4
  %689 = load i32, ptr %15, align 4
  %690 = icmp ult i32 %688, %689
  br i1 %690, label %691, label %696

691:                                              ; preds = %683
  %692 = load i32, ptr %15, align 4
  store i32 %692, ptr %8, align 4
  %693 = load i32, ptr %24, align 4
  %694 = load i32, ptr %24, align 4
  %695 = add i32 %693, %694
  store i32 %695, ptr %24, align 4
  br label %707

696:                                              ; preds = %683
  %697 = load i32, ptr %15, align 4
  %698 = load i32, ptr %8, align 4
  %699 = sub i32 %698, %697
  store i32 %699, ptr %8, align 4
  %700 = load i32, ptr %15, align 4
  %701 = load i32, ptr %9, align 4
  %702 = sub i32 %701, %700
  store i32 %702, ptr %9, align 4
  %703 = load i32, ptr %24, align 4
  %704 = load i32, ptr %24, align 4
  %705 = add i32 %703, %704
  %706 = add i32 %705, 1
  store i32 %706, ptr %24, align 4
  br label %707

707:                                              ; preds = %696, %691
  br label %708

708:                                              ; preds = %707
  %709 = load i32, ptr %24, align 4
  %710 = load i32, ptr %25, align 4
  %711 = icmp ult i32 %709, %710
  br i1 %711, label %659, label %712, !llvm.loop !14

712:                                              ; preds = %708
  %713 = load i32, ptr %25, align 4
  %714 = load i32, ptr %24, align 4
  %715 = sub i32 %714, %713
  store i32 %715, ptr %24, align 4
  %716 = load i32, ptr %26, align 4
  %717 = load i32, ptr %24, align 4
  %718 = add i32 %717, %716
  store i32 %718, ptr %24, align 4
  %719 = load i32, ptr %12, align 4
  %720 = icmp ult i32 %719, 4
  br i1 %720, label %721, label %908

721:                                              ; preds = %712
  %722 = load ptr, ptr %11, align 8
  %723 = getelementptr inbounds i16, ptr %722, i64 432
  %724 = load i32, ptr %24, align 4
  %725 = icmp ult i32 %724, 4
  br i1 %725, label %726, label %728

726:                                              ; preds = %721
  %727 = load i32, ptr %24, align 4
  br label %729

728:                                              ; preds = %721
  br label %729

729:                                              ; preds = %728, %726
  %730 = phi i32 [ %727, %726 ], [ 3, %728 ]
  %731 = shl i32 %730, 6
  %732 = zext i32 %731 to i64
  %733 = getelementptr inbounds i16, ptr %723, i64 %732
  store ptr %733, ptr %14, align 8
  store i32 1, ptr %28, align 4
  br label %734

734:                                              ; preds = %783, %729
  %735 = load ptr, ptr %14, align 8
  %736 = load i32, ptr %28, align 4
  %737 = zext i32 %736 to i64
  %738 = getelementptr inbounds i16, ptr %735, i64 %737
  %739 = load i16, ptr %738, align 2
  %740 = zext i16 %739 to i32
  store i32 %740, ptr %16, align 4
  %741 = load i32, ptr %8, align 4
  %742 = icmp ult i32 %741, 16777216
  br i1 %742, label %743, label %758

743:                                              ; preds = %734
  %744 = load ptr, ptr %6, align 8
  %745 = load ptr, ptr %10, align 8
  %746 = icmp uge ptr %744, %745
  br i1 %746, label %747, label %748

747:                                              ; preds = %743
  store i32 0, ptr %4, align 4
  br label %929

748:                                              ; preds = %743
  %749 = load i32, ptr %8, align 4
  %750 = shl i32 %749, 8
  store i32 %750, ptr %8, align 4
  %751 = load i32, ptr %9, align 4
  %752 = shl i32 %751, 8
  %753 = load ptr, ptr %6, align 8
  %754 = getelementptr inbounds i8, ptr %753, i32 1
  store ptr %754, ptr %6, align 8
  %755 = load i8, ptr %753, align 1
  %756 = zext i8 %755 to i32
  %757 = or i32 %752, %756
  store i32 %757, ptr %9, align 4
  br label %758

758:                                              ; preds = %748, %734
  %759 = load i32, ptr %8, align 4
  %760 = lshr i32 %759, 11
  %761 = load i32, ptr %16, align 4
  %762 = mul i32 %760, %761
  store i32 %762, ptr %15, align 4
  %763 = load i32, ptr %9, align 4
  %764 = load i32, ptr %15, align 4
  %765 = icmp ult i32 %763, %764
  br i1 %765, label %766, label %771

766:                                              ; preds = %758
  %767 = load i32, ptr %15, align 4
  store i32 %767, ptr %8, align 4
  %768 = load i32, ptr %28, align 4
  %769 = load i32, ptr %28, align 4
  %770 = add i32 %768, %769
  store i32 %770, ptr %28, align 4
  br label %782

771:                                              ; preds = %758
  %772 = load i32, ptr %15, align 4
  %773 = load i32, ptr %8, align 4
  %774 = sub i32 %773, %772
  store i32 %774, ptr %8, align 4
  %775 = load i32, ptr %15, align 4
  %776 = load i32, ptr %9, align 4
  %777 = sub i32 %776, %775
  store i32 %777, ptr %9, align 4
  %778 = load i32, ptr %28, align 4
  %779 = load i32, ptr %28, align 4
  %780 = add i32 %778, %779
  %781 = add i32 %780, 1
  store i32 %781, ptr %28, align 4
  br label %782

782:                                              ; preds = %771, %766
  br label %783

783:                                              ; preds = %782
  %784 = load i32, ptr %28, align 4
  %785 = icmp ult i32 %784, 64
  br i1 %785, label %734, label %786, !llvm.loop !15

786:                                              ; preds = %783
  %787 = load i32, ptr %28, align 4
  %788 = sub i32 %787, 64
  store i32 %788, ptr %28, align 4
  %789 = load i32, ptr %28, align 4
  %790 = icmp uge i32 %789, 4
  br i1 %790, label %791, label %907

791:                                              ; preds = %786
  %792 = load i32, ptr %28, align 4
  %793 = lshr i32 %792, 1
  %794 = sub i32 %793, 1
  store i32 %794, ptr %29, align 4
  %795 = load i32, ptr %28, align 4
  %796 = icmp ult i32 %795, 14
  br i1 %796, label %797, label %812

797:                                              ; preds = %791
  %798 = load ptr, ptr %11, align 8
  %799 = getelementptr inbounds i16, ptr %798, i64 688
  %800 = load i32, ptr %28, align 4
  %801 = and i32 %800, 1
  %802 = or i32 2, %801
  %803 = load i32, ptr %29, align 4
  %804 = shl i32 %802, %803
  %805 = zext i32 %804 to i64
  %806 = getelementptr inbounds i16, ptr %799, i64 %805
  %807 = load i32, ptr %28, align 4
  %808 = zext i32 %807 to i64
  %809 = sub i64 0, %808
  %810 = getelementptr inbounds i16, ptr %806, i64 %809
  %811 = getelementptr inbounds i16, ptr %810, i64 -1
  store ptr %811, ptr %14, align 8
  br label %852

812:                                              ; preds = %791
  %813 = load i32, ptr %29, align 4
  %814 = sub nsw i32 %813, 4
  store i32 %814, ptr %29, align 4
  br label %815

815:                                              ; preds = %845, %812
  %816 = load i32, ptr %8, align 4
  %817 = icmp ult i32 %816, 16777216
  br i1 %817, label %818, label %833

818:                                              ; preds = %815
  %819 = load ptr, ptr %6, align 8
  %820 = load ptr, ptr %10, align 8
  %821 = icmp uge ptr %819, %820
  br i1 %821, label %822, label %823

822:                                              ; preds = %818
  store i32 0, ptr %4, align 4
  br label %929

823:                                              ; preds = %818
  %824 = load i32, ptr %8, align 4
  %825 = shl i32 %824, 8
  store i32 %825, ptr %8, align 4
  %826 = load i32, ptr %9, align 4
  %827 = shl i32 %826, 8
  %828 = load ptr, ptr %6, align 8
  %829 = getelementptr inbounds i8, ptr %828, i32 1
  store ptr %829, ptr %6, align 8
  %830 = load i8, ptr %828, align 1
  %831 = zext i8 %830 to i32
  %832 = or i32 %827, %831
  store i32 %832, ptr %9, align 4
  br label %833

833:                                              ; preds = %823, %815
  %834 = load i32, ptr %8, align 4
  %835 = lshr i32 %834, 1
  store i32 %835, ptr %8, align 4
  %836 = load i32, ptr %8, align 4
  %837 = load i32, ptr %9, align 4
  %838 = load i32, ptr %8, align 4
  %839 = sub i32 %837, %838
  %840 = lshr i32 %839, 31
  %841 = sub i32 %840, 1
  %842 = and i32 %836, %841
  %843 = load i32, ptr %9, align 4
  %844 = sub i32 %843, %842
  store i32 %844, ptr %9, align 4
  br label %845

845:                                              ; preds = %833
  %846 = load i32, ptr %29, align 4
  %847 = add nsw i32 %846, -1
  store i32 %847, ptr %29, align 4
  %848 = icmp ne i32 %847, 0
  br i1 %848, label %815, label %849, !llvm.loop !16

849:                                              ; preds = %845
  %850 = load ptr, ptr %11, align 8
  %851 = getelementptr inbounds i16, ptr %850, i64 802
  store ptr %851, ptr %14, align 8
  store i32 4, ptr %29, align 4
  br label %852

852:                                              ; preds = %849, %797
  store i32 1, ptr %30, align 4
  br label %853

853:                                              ; preds = %902, %852
  %854 = load ptr, ptr %14, align 8
  %855 = load i32, ptr %30, align 4
  %856 = zext i32 %855 to i64
  %857 = getelementptr inbounds i16, ptr %854, i64 %856
  %858 = load i16, ptr %857, align 2
  %859 = zext i16 %858 to i32
  store i32 %859, ptr %16, align 4
  %860 = load i32, ptr %8, align 4
  %861 = icmp ult i32 %860, 16777216
  br i1 %861, label %862, label %877

862:                                              ; preds = %853
  %863 = load ptr, ptr %6, align 8
  %864 = load ptr, ptr %10, align 8
  %865 = icmp uge ptr %863, %864
  br i1 %865, label %866, label %867

866:                                              ; preds = %862
  store i32 0, ptr %4, align 4
  br label %929

867:                                              ; preds = %862
  %868 = load i32, ptr %8, align 4
  %869 = shl i32 %868, 8
  store i32 %869, ptr %8, align 4
  %870 = load i32, ptr %9, align 4
  %871 = shl i32 %870, 8
  %872 = load ptr, ptr %6, align 8
  %873 = getelementptr inbounds i8, ptr %872, i32 1
  store ptr %873, ptr %6, align 8
  %874 = load i8, ptr %872, align 1
  %875 = zext i8 %874 to i32
  %876 = or i32 %871, %875
  store i32 %876, ptr %9, align 4
  br label %877

877:                                              ; preds = %867, %853
  %878 = load i32, ptr %8, align 4
  %879 = lshr i32 %878, 11
  %880 = load i32, ptr %16, align 4
  %881 = mul i32 %879, %880
  store i32 %881, ptr %15, align 4
  %882 = load i32, ptr %9, align 4
  %883 = load i32, ptr %15, align 4
  %884 = icmp ult i32 %882, %883
  br i1 %884, label %885, label %890

885:                                              ; preds = %877
  %886 = load i32, ptr %15, align 4
  store i32 %886, ptr %8, align 4
  %887 = load i32, ptr %30, align 4
  %888 = load i32, ptr %30, align 4
  %889 = add i32 %887, %888
  store i32 %889, ptr %30, align 4
  br label %901

890:                                              ; preds = %877
  %891 = load i32, ptr %15, align 4
  %892 = load i32, ptr %8, align 4
  %893 = sub i32 %892, %891
  store i32 %893, ptr %8, align 4
  %894 = load i32, ptr %15, align 4
  %895 = load i32, ptr %9, align 4
  %896 = sub i32 %895, %894
  store i32 %896, ptr %9, align 4
  %897 = load i32, ptr %30, align 4
  %898 = load i32, ptr %30, align 4
  %899 = add i32 %897, %898
  %900 = add i32 %899, 1
  store i32 %900, ptr %30, align 4
  br label %901

901:                                              ; preds = %890, %885
  br label %902

902:                                              ; preds = %901
  %903 = load i32, ptr %29, align 4
  %904 = add nsw i32 %903, -1
  store i32 %904, ptr %29, align 4
  %905 = icmp ne i32 %904, 0
  br i1 %905, label %853, label %906, !llvm.loop !17

906:                                              ; preds = %902
  br label %907

907:                                              ; preds = %906, %786
  br label %908

908:                                              ; preds = %907, %712
  br label %909

909:                                              ; preds = %908, %316
  %910 = load i32, ptr %8, align 4
  %911 = icmp ult i32 %910, 16777216
  br i1 %911, label %912, label %927

912:                                              ; preds = %909
  %913 = load ptr, ptr %6, align 8
  %914 = load ptr, ptr %10, align 8
  %915 = icmp uge ptr %913, %914
  br i1 %915, label %916, label %917

916:                                              ; preds = %912
  store i32 0, ptr %4, align 4
  br label %929

917:                                              ; preds = %912
  %918 = load i32, ptr %8, align 4
  %919 = shl i32 %918, 8
  store i32 %919, ptr %8, align 4
  %920 = load i32, ptr %9, align 4
  %921 = shl i32 %920, 8
  %922 = load ptr, ptr %6, align 8
  %923 = getelementptr inbounds i8, ptr %922, i32 1
  store ptr %923, ptr %6, align 8
  %924 = load i8, ptr %922, align 1
  %925 = zext i8 %924 to i32
  %926 = or i32 %921, %925
  store i32 %926, ptr %9, align 4
  br label %927

927:                                              ; preds = %917, %909
  %928 = load i32, ptr %13, align 4
  store i32 %928, ptr %4, align 4
  br label %929

929:                                              ; preds = %927, %916, %866, %822, %747, %672, %621, %576, %531, %489, %459, %448, %421, %382, %338, %269, %171, %74
  %930 = load i32, ptr %4, align 4
  ret i32 %930
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LzmaDec_DecodeReal2(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  br label %11

11:                                               ; preds = %87, %3
  %12 = load i64, ptr %6, align 8
  store i64 %12, ptr %8, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.CLzmaDec, ptr %13, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %11
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %struct.CLzmaDec, ptr %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct._CLzmaProps, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.CLzmaDec, ptr %22, i32 0, i32 8
  %24 = load i32, ptr %23, align 8
  %25 = sub i32 %21, %24
  store i32 %25, ptr %9, align 4
  %26 = load i64, ptr %6, align 8
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds %struct.CLzmaDec, ptr %27, i32 0, i32 6
  %29 = load i64, ptr %28, align 8
  %30 = sub i64 %26, %29
  %31 = load i32, ptr %9, align 4
  %32 = zext i32 %31 to i64
  %33 = icmp ugt i64 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %17
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds %struct.CLzmaDec, ptr %35, i32 0, i32 6
  %37 = load i64, ptr %36, align 8
  %38 = load i32, ptr %9, align 4
  %39 = zext i32 %38 to i64
  %40 = add i64 %37, %39
  store i64 %40, ptr %8, align 8
  br label %41

41:                                               ; preds = %34, %17
  br label %42

42:                                               ; preds = %41, %11
  %43 = load ptr, ptr %5, align 8
  %44 = load i64, ptr %8, align 8
  %45 = load ptr, ptr %7, align 8
  %46 = call i32 @LzmaDec_DecodeReal(ptr noundef %43, i64 noundef %44, ptr noundef %45)
  store i32 %46, ptr %10, align 4
  %47 = load i32, ptr %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, ptr %10, align 4
  store i32 %50, ptr %4, align 4
  br label %98

51:                                               ; preds = %42
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds %struct.CLzmaDec, ptr %52, i32 0, i32 8
  %54 = load i32, ptr %53, align 8
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %struct.CLzmaDec, ptr %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct._CLzmaProps, ptr %56, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = icmp uge i32 %54, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load ptr, ptr %5, align 8
  %62 = getelementptr inbounds %struct.CLzmaDec, ptr %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct._CLzmaProps, ptr %62, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %5, align 8
  %66 = getelementptr inbounds %struct.CLzmaDec, ptr %65, i32 0, i32 9
  store i32 %64, ptr %66, align 4
  br label %67

67:                                               ; preds = %60, %51
  %68 = load ptr, ptr %5, align 8
  %69 = load i64, ptr %6, align 8
  call void @LzmaDec_WriteRem(ptr noundef %68, i64 noundef %69)
  br label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %5, align 8
  %72 = getelementptr inbounds %struct.CLzmaDec, ptr %71, i32 0, i32 6
  %73 = load i64, ptr %72, align 8
  %74 = load i64, ptr %6, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %70
  %77 = load ptr, ptr %5, align 8
  %78 = getelementptr inbounds %struct.CLzmaDec, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 8
  %80 = load ptr, ptr %7, align 8
  %81 = icmp ult ptr %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load ptr, ptr %5, align 8
  %84 = getelementptr inbounds %struct.CLzmaDec, ptr %83, i32 0, i32 12
  %85 = load i32, ptr %84, align 4
  %86 = icmp ult i32 %85, 274
  br label %87

87:                                               ; preds = %82, %76, %70
  %88 = phi i1 [ false, %76 ], [ false, %70 ], [ %86, %82 ]
  br i1 %88, label %11, label %89, !llvm.loop !18

89:                                               ; preds = %87
  %90 = load ptr, ptr %5, align 8
  %91 = getelementptr inbounds %struct.CLzmaDec, ptr %90, i32 0, i32 12
  %92 = load i32, ptr %91, align 4
  %93 = icmp ugt i32 %92, 274
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load ptr, ptr %5, align 8
  %96 = getelementptr inbounds %struct.CLzmaDec, ptr %95, i32 0, i32 12
  store i32 274, ptr %96, align 4
  br label %97

97:                                               ; preds = %94, %89
  store i32 0, ptr %4, align 4
  br label %98

98:                                               ; preds = %97, %49
  %99 = load i32, ptr %4, align 4
  ret i32 %99
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaDec_DecodeToBuf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store ptr %0, ptr %9, align 8
  store ptr %1, ptr %10, align 8
  store ptr %2, ptr %11, align 8
  store ptr %3, ptr %12, align 8
  store ptr %4, ptr %13, align 8
  store i32 %5, ptr %14, align 4
  store ptr %6, ptr %15, align 8
  %23 = load ptr, ptr %11, align 8
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %16, align 8
  %25 = load ptr, ptr %13, align 8
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %17, align 8
  %27 = load ptr, ptr %11, align 8
  store i64 0, ptr %27, align 8
  %28 = load ptr, ptr %13, align 8
  store i64 0, ptr %28, align 8
  br label %29

29:                                               ; preds = %111, %7
  %30 = load i64, ptr %17, align 8
  store i64 %30, ptr %18, align 8
  %31 = load ptr, ptr %9, align 8
  %32 = getelementptr inbounds %struct.CLzmaDec, ptr %31, i32 0, i32 6
  %33 = load i64, ptr %32, align 8
  %34 = load ptr, ptr %9, align 8
  %35 = getelementptr inbounds %struct.CLzmaDec, ptr %34, i32 0, i32 7
  %36 = load i64, ptr %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load ptr, ptr %9, align 8
  %40 = getelementptr inbounds %struct.CLzmaDec, ptr %39, i32 0, i32 6
  store i64 0, ptr %40, align 8
  br label %41

41:                                               ; preds = %38, %29
  %42 = load ptr, ptr %9, align 8
  %43 = getelementptr inbounds %struct.CLzmaDec, ptr %42, i32 0, i32 6
  %44 = load i64, ptr %43, align 8
  store i64 %44, ptr %20, align 8
  %45 = load i64, ptr %16, align 8
  %46 = load ptr, ptr %9, align 8
  %47 = getelementptr inbounds %struct.CLzmaDec, ptr %46, i32 0, i32 7
  %48 = load i64, ptr %47, align 8
  %49 = load i64, ptr %20, align 8
  %50 = sub i64 %48, %49
  %51 = icmp ugt i64 %45, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load ptr, ptr %9, align 8
  %54 = getelementptr inbounds %struct.CLzmaDec, ptr %53, i32 0, i32 7
  %55 = load i64, ptr %54, align 8
  store i64 %55, ptr %19, align 8
  store i32 0, ptr %21, align 4
  br label %61

56:                                               ; preds = %41
  %57 = load i64, ptr %20, align 8
  %58 = load i64, ptr %16, align 8
  %59 = add i64 %57, %58
  store i64 %59, ptr %19, align 8
  %60 = load i32, ptr %14, align 4
  store i32 %60, ptr %21, align 4
  br label %61

61:                                               ; preds = %56, %52
  %62 = load ptr, ptr %9, align 8
  %63 = load i64, ptr %19, align 8
  %64 = load ptr, ptr %12, align 8
  %65 = load i32, ptr %21, align 4
  %66 = load ptr, ptr %15, align 8
  %67 = call i32 @LzmaDec_DecodeToDic(ptr noundef %62, i64 noundef %63, ptr noundef %64, ptr noundef %18, i32 noundef %65, ptr noundef %66)
  store i32 %67, ptr %22, align 4
  %68 = load i64, ptr %18, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i8, ptr %69, i64 %68
  store ptr %70, ptr %12, align 8
  %71 = load i64, ptr %18, align 8
  %72 = load i64, ptr %17, align 8
  %73 = sub i64 %72, %71
  store i64 %73, ptr %17, align 8
  %74 = load i64, ptr %18, align 8
  %75 = load ptr, ptr %13, align 8
  %76 = load i64, ptr %75, align 8
  %77 = add i64 %76, %74
  store i64 %77, ptr %75, align 8
  %78 = load ptr, ptr %9, align 8
  %79 = getelementptr inbounds %struct.CLzmaDec, ptr %78, i32 0, i32 6
  %80 = load i64, ptr %79, align 8
  %81 = load i64, ptr %20, align 8
  %82 = sub i64 %80, %81
  store i64 %82, ptr %19, align 8
  %83 = load ptr, ptr %10, align 8
  %84 = load ptr, ptr %9, align 8
  %85 = getelementptr inbounds %struct.CLzmaDec, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8
  %87 = load i64, ptr %20, align 8
  %88 = getelementptr inbounds i8, ptr %86, i64 %87
  %89 = load i64, ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %83, ptr align 1 %88, i64 %89, i1 false)
  %90 = load i64, ptr %19, align 8
  %91 = load ptr, ptr %10, align 8
  %92 = getelementptr inbounds i8, ptr %91, i64 %90
  store ptr %92, ptr %10, align 8
  %93 = load i64, ptr %19, align 8
  %94 = load i64, ptr %16, align 8
  %95 = sub i64 %94, %93
  store i64 %95, ptr %16, align 8
  %96 = load i64, ptr %19, align 8
  %97 = load ptr, ptr %11, align 8
  %98 = load i64, ptr %97, align 8
  %99 = add i64 %98, %96
  store i64 %99, ptr %97, align 8
  %100 = load i32, ptr %22, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %61
  %103 = load i32, ptr %22, align 4
  store i32 %103, ptr %8, align 4
  br label %112

104:                                              ; preds = %61
  %105 = load i64, ptr %19, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i64, ptr %16, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107, %104
  store i32 0, ptr %8, align 4
  br label %112

111:                                              ; preds = %107
  br label %29

112:                                              ; preds = %110, %102
  %113 = load i32, ptr %8, align 4
  ret i32 %113
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaDec_FreeProbs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ISzAlloc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.CLzmaDec, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  call void %7(ptr noundef %8, ptr noundef %11)
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.CLzmaDec, ptr %12, i32 0, i32 1
  store ptr null, ptr %13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaDec_Free(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  call void @LzmaDec_FreeProbs(ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %4, align 8
  call void @LzmaDec_FreeDict(ptr noundef %7, ptr noundef %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LzmaDec_FreeDict(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ISzAlloc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.CLzmaDec, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  call void %7(ptr noundef %8, ptr noundef %11)
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.CLzmaDec, ptr %12, i32 0, i32 2
  store ptr null, ptr %13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaProps_Decode(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %10 = load i32, ptr %7, align 4
  %11 = icmp ult i32 %10, 5
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 4, ptr %4, align 4
  br label %71

13:                                               ; preds = %3
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds i8, ptr %18, i64 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 8
  %23 = or i32 %17, %22
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds i8, ptr %24, i64 3
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 16
  %29 = or i32 %23, %28
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds i8, ptr %30, i64 4
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 24
  %35 = or i32 %29, %34
  store i32 %35, ptr %8, align 4
  br label %36

36:                                               ; preds = %13
  %37 = load i32, ptr %8, align 4
  %38 = icmp ult i32 %37, 4096
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 4096, ptr %8, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, ptr %8, align 4
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds %struct._CLzmaProps, ptr %42, i32 0, i32 3
  store i32 %41, ptr %43, align 4
  %44 = load ptr, ptr %6, align 8
  %45 = getelementptr inbounds i8, ptr %44, i64 0
  %46 = load i8, ptr %45, align 1
  store i8 %46, ptr %9, align 1
  %47 = load i8, ptr %9, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp sge i32 %48, 225
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 4, ptr %4, align 4
  br label %71

51:                                               ; preds = %40
  %52 = load i8, ptr %9, align 1
  %53 = zext i8 %52 to i32
  %54 = srem i32 %53, 9
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %struct._CLzmaProps, ptr %55, i32 0, i32 0
  store i32 %54, ptr %56, align 4
  %57 = load i8, ptr %9, align 1
  %58 = zext i8 %57 to i32
  %59 = sdiv i32 %58, 9
  %60 = trunc i32 %59 to i8
  store i8 %60, ptr %9, align 1
  %61 = load i8, ptr %9, align 1
  %62 = zext i8 %61 to i32
  %63 = sdiv i32 %62, 5
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr inbounds %struct._CLzmaProps, ptr %64, i32 0, i32 2
  store i32 %63, ptr %65, align 4
  %66 = load i8, ptr %9, align 1
  %67 = zext i8 %66 to i32
  %68 = srem i32 %67, 5
  %69 = load ptr, ptr %5, align 8
  %70 = getelementptr inbounds %struct._CLzmaProps, ptr %69, i32 0, i32 1
  store i32 %68, ptr %70, align 4
  store i32 0, ptr %4, align 4
  br label %71

71:                                               ; preds = %51, %50, %12
  %72 = load i32, ptr %4, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaDec_AllocateProbs(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca %struct._CLzmaProps, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = load i32, ptr %8, align 4
  %15 = call i32 @LzmaProps_Decode(ptr noundef %10, ptr noundef %13, i32 noundef %14)
  store i32 %15, ptr %11, align 4
  %16 = load i32, ptr %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, ptr %11, align 4
  store i32 %19, ptr %5, align 4
  br label %31

20:                                               ; preds = %4
  %21 = load ptr, ptr %6, align 8
  %22 = load ptr, ptr %9, align 8
  %23 = call i32 @LzmaDec_AllocateProbs2(ptr noundef %21, ptr noundef %10, ptr noundef %22)
  store i32 %23, ptr %12, align 4
  %24 = load i32, ptr %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, ptr %12, align 4
  store i32 %27, ptr %5, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds %struct.CLzmaDec, ptr %29, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %30, ptr align 4 %10, i64 16, i1 false)
  store i32 0, ptr %5, align 4
  br label %31

31:                                               ; preds = %28, %26, %18
  %32 = load i32, ptr %5, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LzmaDec_AllocateProbs2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr inbounds %struct._CLzmaProps, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds %struct._CLzmaProps, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %11, %14
  %16 = shl i32 768, %15
  %17 = add i32 1846, %16
  store i32 %17, ptr %8, align 4
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %struct.CLzmaDec, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load i32, ptr %8, align 4
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.CLzmaDec, ptr %24, i32 0, i32 15
  %26 = load i32, ptr %25, align 8
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %22, %3
  %29 = load ptr, ptr %5, align 8
  %30 = load ptr, ptr %7, align 8
  call void @LzmaDec_FreeProbs(ptr noundef %29, ptr noundef %30)
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds %struct.ISzAlloc, ptr %31, i32 0, i32 0
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %7, align 8
  %35 = load i32, ptr %8, align 4
  %36 = zext i32 %35 to i64
  %37 = mul i64 %36, 2
  %38 = call ptr %33(ptr noundef %34, i64 noundef %37)
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr inbounds %struct.CLzmaDec, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 8
  %41 = load i32, ptr %8, align 4
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds %struct.CLzmaDec, ptr %42, i32 0, i32 15
  store i32 %41, ptr %43, align 8
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds %struct.CLzmaDec, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %28
  store i32 2, ptr %4, align 4
  br label %51

49:                                               ; preds = %28
  br label %50

50:                                               ; preds = %49, %22
  store i32 0, ptr %4, align 4
  br label %51

51:                                               ; preds = %50, %48
  %52 = load i32, ptr %4, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaDec_Allocate(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca %struct._CLzmaProps, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  %14 = load ptr, ptr %7, align 8
  %15 = load i32, ptr %8, align 4
  %16 = call i32 @LzmaProps_Decode(ptr noundef %10, ptr noundef %14, i32 noundef %15)
  store i32 %16, ptr %12, align 4
  %17 = load i32, ptr %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, ptr %12, align 4
  store i32 %20, ptr %5, align 4
  br label %68

21:                                               ; preds = %4
  %22 = load ptr, ptr %6, align 8
  %23 = load ptr, ptr %9, align 8
  %24 = call i32 @LzmaDec_AllocateProbs2(ptr noundef %22, ptr noundef %10, ptr noundef %23)
  store i32 %24, ptr %13, align 4
  %25 = load i32, ptr %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, ptr %13, align 4
  store i32 %28, ptr %5, align 4
  br label %68

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct._CLzmaProps, ptr %10, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = zext i32 %31 to i64
  store i64 %32, ptr %11, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds %struct.CLzmaDec, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load i64, ptr %11, align 8
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr inbounds %struct.CLzmaDec, ptr %39, i32 0, i32 7
  %41 = load i64, ptr %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %37, %29
  %44 = load ptr, ptr %6, align 8
  %45 = load ptr, ptr %9, align 8
  call void @LzmaDec_FreeDict(ptr noundef %44, ptr noundef %45)
  %46 = load ptr, ptr %9, align 8
  %47 = getelementptr inbounds %struct.ISzAlloc, ptr %46, i32 0, i32 0
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr %9, align 8
  %50 = load i64, ptr %11, align 8
  %51 = call ptr %48(ptr noundef %49, i64 noundef %50)
  %52 = load ptr, ptr %6, align 8
  %53 = getelementptr inbounds %struct.CLzmaDec, ptr %52, i32 0, i32 2
  store ptr %51, ptr %53, align 8
  %54 = load ptr, ptr %6, align 8
  %55 = getelementptr inbounds %struct.CLzmaDec, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %43
  %59 = load ptr, ptr %6, align 8
  %60 = load ptr, ptr %9, align 8
  call void @LzmaDec_FreeProbs(ptr noundef %59, ptr noundef %60)
  store i32 2, ptr %5, align 4
  br label %68

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61, %37
  %63 = load i64, ptr %11, align 8
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds %struct.CLzmaDec, ptr %64, i32 0, i32 7
  store i64 %63, ptr %65, align 8
  %66 = load ptr, ptr %6, align 8
  %67 = getelementptr inbounds %struct.CLzmaDec, ptr %66, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %67, ptr align 4 %10, i64 16, i1 false)
  store i32 0, ptr %5, align 4
  br label %68

68:                                               ; preds = %62, %58, %27, %19
  %69 = load i32, ptr %5, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaDecode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca %struct.CLzmaDec, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store ptr %0, ptr %11, align 8
  store ptr %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store ptr %4, ptr %15, align 8
  store i32 %5, ptr %16, align 4
  store i32 %6, ptr %17, align 4
  store ptr %7, ptr %18, align 8
  store ptr %8, ptr %19, align 8
  %24 = load ptr, ptr %14, align 8
  %25 = load i64, ptr %24, align 8
  store i64 %25, ptr %22, align 8
  %26 = load ptr, ptr %12, align 8
  %27 = load i64, ptr %26, align 8
  store i64 %27, ptr %23, align 8
  %28 = load ptr, ptr %12, align 8
  store i64 0, ptr %28, align 8
  %29 = load ptr, ptr %14, align 8
  store i64 0, ptr %29, align 8
  %30 = load i64, ptr %22, align 8
  %31 = icmp ult i64 %30, 5
  br i1 %31, label %32, label %33

32:                                               ; preds = %9
  store i32 6, ptr %10, align 4
  br label %70

33:                                               ; preds = %9
  %34 = getelementptr inbounds %struct.CLzmaDec, ptr %20, i32 0, i32 2
  store ptr null, ptr %34, align 8
  %35 = getelementptr inbounds %struct.CLzmaDec, ptr %20, i32 0, i32 1
  store ptr null, ptr %35, align 8
  %36 = load ptr, ptr %15, align 8
  %37 = load i32, ptr %16, align 4
  %38 = load ptr, ptr %19, align 8
  %39 = call i32 @LzmaDec_AllocateProbs(ptr noundef %20, ptr noundef %36, i32 noundef %37, ptr noundef %38)
  store i32 %39, ptr %21, align 4
  %40 = load i32, ptr %21, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, ptr %21, align 4
  store i32 %43, ptr %10, align 4
  br label %70

44:                                               ; preds = %33
  %45 = load ptr, ptr %11, align 8
  %46 = getelementptr inbounds %struct.CLzmaDec, ptr %20, i32 0, i32 2
  store ptr %45, ptr %46, align 8
  %47 = load i64, ptr %23, align 8
  %48 = getelementptr inbounds %struct.CLzmaDec, ptr %20, i32 0, i32 7
  store i64 %47, ptr %48, align 8
  call void @LzmaDec_Init(ptr noundef %20)
  %49 = load i64, ptr %22, align 8
  %50 = load ptr, ptr %14, align 8
  store i64 %49, ptr %50, align 8
  %51 = load i64, ptr %23, align 8
  %52 = load ptr, ptr %13, align 8
  %53 = load ptr, ptr %14, align 8
  %54 = load i32, ptr %17, align 4
  %55 = load ptr, ptr %18, align 8
  %56 = call i32 @LzmaDec_DecodeToDic(ptr noundef %20, i64 noundef %51, ptr noundef %52, ptr noundef %53, i32 noundef %54, ptr noundef %55)
  store i32 %56, ptr %21, align 4
  %57 = load i32, ptr %21, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %44
  %60 = load ptr, ptr %18, align 8
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 6, ptr %21, align 4
  br label %64

64:                                               ; preds = %63, %59, %44
  %65 = getelementptr inbounds %struct.CLzmaDec, ptr %20, i32 0, i32 6
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %12, align 8
  store i64 %66, ptr %67, align 8
  %68 = load ptr, ptr %19, align 8
  call void @LzmaDec_FreeProbs(ptr noundef %20, ptr noundef %68)
  %69 = load i32, ptr %21, align 4
  store i32 %69, ptr %10, align 4
  br label %70

70:                                               ; preds = %64, %42, %32
  %71 = load i32, ptr %10, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LzmaDec_DecodeReal(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca ptr, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca ptr, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i64, align 8
  %47 = alloca i32, align 4
  %48 = alloca i64, align 8
  %49 = alloca ptr, align 8
  %50 = alloca i64, align 8
  %51 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds %struct.CLzmaDec, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  store ptr %54, ptr %8, align 8
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %struct.CLzmaDec, ptr %55, i32 0, i32 10
  %57 = load i32, ptr %56, align 8
  store i32 %57, ptr %9, align 4
  %58 = load ptr, ptr %5, align 8
  %59 = getelementptr inbounds %struct.CLzmaDec, ptr %58, i32 0, i32 11
  %60 = getelementptr inbounds [4 x i32], ptr %59, i64 0, i64 0
  %61 = load i32, ptr %60, align 4
  store i32 %61, ptr %10, align 4
  %62 = load ptr, ptr %5, align 8
  %63 = getelementptr inbounds %struct.CLzmaDec, ptr %62, i32 0, i32 11
  %64 = getelementptr inbounds [4 x i32], ptr %63, i64 0, i64 1
  %65 = load i32, ptr %64, align 4
  store i32 %65, ptr %11, align 4
  %66 = load ptr, ptr %5, align 8
  %67 = getelementptr inbounds %struct.CLzmaDec, ptr %66, i32 0, i32 11
  %68 = getelementptr inbounds [4 x i32], ptr %67, i64 0, i64 2
  %69 = load i32, ptr %68, align 4
  store i32 %69, ptr %12, align 4
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr inbounds %struct.CLzmaDec, ptr %70, i32 0, i32 11
  %72 = getelementptr inbounds [4 x i32], ptr %71, i64 0, i64 3
  %73 = load i32, ptr %72, align 4
  store i32 %73, ptr %13, align 4
  %74 = load ptr, ptr %5, align 8
  %75 = getelementptr inbounds %struct.CLzmaDec, ptr %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct._CLzmaProps, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = shl i32 1, %77
  %79 = sub i32 %78, 1
  store i32 %79, ptr %14, align 4
  %80 = load ptr, ptr %5, align 8
  %81 = getelementptr inbounds %struct.CLzmaDec, ptr %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct._CLzmaProps, ptr %81, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = shl i32 1, %83
  %85 = sub i32 %84, 1
  store i32 %85, ptr %15, align 4
  %86 = load ptr, ptr %5, align 8
  %87 = getelementptr inbounds %struct.CLzmaDec, ptr %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct._CLzmaProps, ptr %87, i32 0, i32 0
  %89 = load i32, ptr %88, align 8
  store i32 %89, ptr %16, align 4
  %90 = load ptr, ptr %5, align 8
  %91 = getelementptr inbounds %struct.CLzmaDec, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8
  store ptr %92, ptr %17, align 8
  %93 = load ptr, ptr %5, align 8
  %94 = getelementptr inbounds %struct.CLzmaDec, ptr %93, i32 0, i32 7
  %95 = load i64, ptr %94, align 8
  store i64 %95, ptr %18, align 8
  %96 = load ptr, ptr %5, align 8
  %97 = getelementptr inbounds %struct.CLzmaDec, ptr %96, i32 0, i32 6
  %98 = load i64, ptr %97, align 8
  store i64 %98, ptr %19, align 8
  %99 = load ptr, ptr %5, align 8
  %100 = getelementptr inbounds %struct.CLzmaDec, ptr %99, i32 0, i32 8
  %101 = load i32, ptr %100, align 8
  store i32 %101, ptr %20, align 4
  %102 = load ptr, ptr %5, align 8
  %103 = getelementptr inbounds %struct.CLzmaDec, ptr %102, i32 0, i32 9
  %104 = load i32, ptr %103, align 4
  store i32 %104, ptr %21, align 4
  store i32 0, ptr %22, align 4
  %105 = load ptr, ptr %5, align 8
  %106 = getelementptr inbounds %struct.CLzmaDec, ptr %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 8
  store ptr %107, ptr %23, align 8
  %108 = load ptr, ptr %5, align 8
  %109 = getelementptr inbounds %struct.CLzmaDec, ptr %108, i32 0, i32 4
  %110 = load i32, ptr %109, align 8
  store i32 %110, ptr %24, align 4
  %111 = load ptr, ptr %5, align 8
  %112 = getelementptr inbounds %struct.CLzmaDec, ptr %111, i32 0, i32 5
  %113 = load i32, ptr %112, align 4
  store i32 %113, ptr %25, align 4
  br label %114

114:                                              ; preds = %1824, %3
  %115 = load i32, ptr %20, align 4
  %116 = load i32, ptr %14, align 4
  %117 = and i32 %115, %116
  store i32 %117, ptr %29, align 4
  %118 = load ptr, ptr %8, align 8
  %119 = getelementptr inbounds i16, ptr %118, i64 0
  %120 = load i32, ptr %9, align 4
  %121 = shl i32 %120, 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i16, ptr %119, i64 %122
  %124 = load i32, ptr %29, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i16, ptr %123, i64 %125
  store ptr %126, ptr %26, align 8
  %127 = load ptr, ptr %26, align 8
  %128 = load i16, ptr %127, align 2
  %129 = zext i16 %128 to i32
  store i32 %129, ptr %28, align 4
  %130 = load i32, ptr %24, align 4
  %131 = icmp ult i32 %130, 16777216
  br i1 %131, label %132, label %142

132:                                              ; preds = %114
  %133 = load i32, ptr %24, align 4
  %134 = shl i32 %133, 8
  store i32 %134, ptr %24, align 4
  %135 = load i32, ptr %25, align 4
  %136 = shl i32 %135, 8
  %137 = load ptr, ptr %23, align 8
  %138 = getelementptr inbounds i8, ptr %137, i32 1
  store ptr %138, ptr %23, align 8
  %139 = load i8, ptr %137, align 1
  %140 = zext i8 %139 to i32
  %141 = or i32 %136, %140
  store i32 %141, ptr %25, align 4
  br label %142

142:                                              ; preds = %132, %114
  %143 = load i32, ptr %24, align 4
  %144 = lshr i32 %143, 11
  %145 = load i32, ptr %28, align 4
  %146 = mul i32 %144, %145
  store i32 %146, ptr %27, align 4
  %147 = load i32, ptr %25, align 4
  %148 = load i32, ptr %27, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %150, label %389

150:                                              ; preds = %142
  %151 = load i32, ptr %27, align 4
  store i32 %151, ptr %24, align 4
  %152 = load i32, ptr %28, align 4
  %153 = load i32, ptr %28, align 4
  %154 = sub i32 2048, %153
  %155 = lshr i32 %154, 5
  %156 = add i32 %152, %155
  %157 = trunc i32 %156 to i16
  %158 = load ptr, ptr %26, align 8
  store i16 %157, ptr %158, align 2
  %159 = load ptr, ptr %8, align 8
  %160 = getelementptr inbounds i16, ptr %159, i64 1846
  store ptr %160, ptr %26, align 8
  %161 = load i32, ptr %21, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %150
  %164 = load i32, ptr %20, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %193

166:                                              ; preds = %163, %150
  %167 = load i32, ptr %20, align 4
  %168 = load i32, ptr %15, align 4
  %169 = and i32 %167, %168
  %170 = load i32, ptr %16, align 4
  %171 = shl i32 %169, %170
  %172 = load ptr, ptr %17, align 8
  %173 = load i64, ptr %19, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %166
  %176 = load i64, ptr %18, align 8
  br label %179

177:                                              ; preds = %166
  %178 = load i64, ptr %19, align 8
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i64 [ %176, %175 ], [ %178, %177 ]
  %181 = sub i64 %180, 1
  %182 = getelementptr inbounds i8, ptr %172, i64 %181
  %183 = load i8, ptr %182, align 1
  %184 = zext i8 %183 to i32
  %185 = load i32, ptr %16, align 4
  %186 = sub i32 8, %185
  %187 = ashr i32 %184, %186
  %188 = add i32 %171, %187
  %189 = mul i32 768, %188
  %190 = load ptr, ptr %26, align 8
  %191 = zext i32 %189 to i64
  %192 = getelementptr inbounds i16, ptr %190, i64 %191
  store ptr %192, ptr %26, align 8
  br label %193

193:                                              ; preds = %179, %163
  %194 = load i32, ptr %9, align 4
  %195 = icmp ult i32 %194, 7
  br i1 %195, label %196, label %273

196:                                              ; preds = %193
  %197 = load i32, ptr %9, align 4
  %198 = icmp ult i32 %197, 4
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i32, ptr %9, align 4
  br label %202

201:                                              ; preds = %196
  br label %202

202:                                              ; preds = %201, %199
  %203 = phi i32 [ %200, %199 ], [ 3, %201 ]
  %204 = load i32, ptr %9, align 4
  %205 = sub i32 %204, %203
  store i32 %205, ptr %9, align 4
  store i32 1, ptr %30, align 4
  br label %206

206:                                              ; preds = %269, %202
  %207 = load ptr, ptr %26, align 8
  %208 = load i32, ptr %30, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i16, ptr %207, i64 %209
  %211 = load i16, ptr %210, align 2
  %212 = zext i16 %211 to i32
  store i32 %212, ptr %28, align 4
  %213 = load i32, ptr %24, align 4
  %214 = icmp ult i32 %213, 16777216
  br i1 %214, label %215, label %225

215:                                              ; preds = %206
  %216 = load i32, ptr %24, align 4
  %217 = shl i32 %216, 8
  store i32 %217, ptr %24, align 4
  %218 = load i32, ptr %25, align 4
  %219 = shl i32 %218, 8
  %220 = load ptr, ptr %23, align 8
  %221 = getelementptr inbounds i8, ptr %220, i32 1
  store ptr %221, ptr %23, align 8
  %222 = load i8, ptr %220, align 1
  %223 = zext i8 %222 to i32
  %224 = or i32 %219, %223
  store i32 %224, ptr %25, align 4
  br label %225

225:                                              ; preds = %215, %206
  %226 = load i32, ptr %24, align 4
  %227 = lshr i32 %226, 11
  %228 = load i32, ptr %28, align 4
  %229 = mul i32 %227, %228
  store i32 %229, ptr %27, align 4
  %230 = load i32, ptr %25, align 4
  %231 = load i32, ptr %27, align 4
  %232 = icmp ult i32 %230, %231
  br i1 %232, label %233, label %248

233:                                              ; preds = %225
  %234 = load i32, ptr %27, align 4
  store i32 %234, ptr %24, align 4
  %235 = load i32, ptr %28, align 4
  %236 = load i32, ptr %28, align 4
  %237 = sub i32 2048, %236
  %238 = lshr i32 %237, 5
  %239 = add i32 %235, %238
  %240 = trunc i32 %239 to i16
  %241 = load ptr, ptr %26, align 8
  %242 = load i32, ptr %30, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i16, ptr %241, i64 %243
  store i16 %240, ptr %244, align 2
  %245 = load i32, ptr %30, align 4
  %246 = load i32, ptr %30, align 4
  %247 = add i32 %245, %246
  store i32 %247, ptr %30, align 4
  br label %268

248:                                              ; preds = %225
  %249 = load i32, ptr %27, align 4
  %250 = load i32, ptr %24, align 4
  %251 = sub i32 %250, %249
  store i32 %251, ptr %24, align 4
  %252 = load i32, ptr %27, align 4
  %253 = load i32, ptr %25, align 4
  %254 = sub i32 %253, %252
  store i32 %254, ptr %25, align 4
  %255 = load i32, ptr %28, align 4
  %256 = load i32, ptr %28, align 4
  %257 = lshr i32 %256, 5
  %258 = sub i32 %255, %257
  %259 = trunc i32 %258 to i16
  %260 = load ptr, ptr %26, align 8
  %261 = load i32, ptr %30, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds i16, ptr %260, i64 %262
  store i16 %259, ptr %263, align 2
  %264 = load i32, ptr %30, align 4
  %265 = load i32, ptr %30, align 4
  %266 = add i32 %264, %265
  %267 = add i32 %266, 1
  store i32 %267, ptr %30, align 4
  br label %268

268:                                              ; preds = %248, %233
  br label %269

269:                                              ; preds = %268
  %270 = load i32, ptr %30, align 4
  %271 = icmp ult i32 %270, 256
  br i1 %271, label %206, label %272, !llvm.loop !19

272:                                              ; preds = %269
  br label %380

273:                                              ; preds = %193
  %274 = load ptr, ptr %5, align 8
  %275 = getelementptr inbounds %struct.CLzmaDec, ptr %274, i32 0, i32 2
  %276 = load ptr, ptr %275, align 8
  %277 = load i64, ptr %19, align 8
  %278 = load i32, ptr %10, align 4
  %279 = zext i32 %278 to i64
  %280 = sub i64 %277, %279
  %281 = load i64, ptr %19, align 8
  %282 = load i32, ptr %10, align 4
  %283 = zext i32 %282 to i64
  %284 = icmp ult i64 %281, %283
  br i1 %284, label %285, label %287

285:                                              ; preds = %273
  %286 = load i64, ptr %18, align 8
  br label %288

287:                                              ; preds = %273
  br label %288

288:                                              ; preds = %287, %285
  %289 = phi i64 [ %286, %285 ], [ 0, %287 ]
  %290 = add i64 %280, %289
  %291 = getelementptr inbounds i8, ptr %276, i64 %290
  %292 = load i8, ptr %291, align 1
  %293 = zext i8 %292 to i32
  store i32 %293, ptr %31, align 4
  store i32 256, ptr %32, align 4
  %294 = load i32, ptr %9, align 4
  %295 = icmp ult i32 %294, 10
  %296 = zext i1 %295 to i64
  %297 = select i1 %295, i32 3, i32 6
  %298 = load i32, ptr %9, align 4
  %299 = sub i32 %298, %297
  store i32 %299, ptr %9, align 4
  store i32 1, ptr %30, align 4
  br label %300

300:                                              ; preds = %376, %288
  %301 = load i32, ptr %31, align 4
  %302 = shl i32 %301, 1
  store i32 %302, ptr %31, align 4
  %303 = load i32, ptr %31, align 4
  %304 = load i32, ptr %32, align 4
  %305 = and i32 %303, %304
  store i32 %305, ptr %33, align 4
  %306 = load ptr, ptr %26, align 8
  %307 = load i32, ptr %32, align 4
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds i16, ptr %306, i64 %308
  %310 = load i32, ptr %33, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds i16, ptr %309, i64 %311
  %313 = load i32, ptr %30, align 4
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds i16, ptr %312, i64 %314
  store ptr %315, ptr %34, align 8
  %316 = load ptr, ptr %34, align 8
  %317 = load i16, ptr %316, align 2
  %318 = zext i16 %317 to i32
  store i32 %318, ptr %28, align 4
  %319 = load i32, ptr %24, align 4
  %320 = icmp ult i32 %319, 16777216
  br i1 %320, label %321, label %331

321:                                              ; preds = %300
  %322 = load i32, ptr %24, align 4
  %323 = shl i32 %322, 8
  store i32 %323, ptr %24, align 4
  %324 = load i32, ptr %25, align 4
  %325 = shl i32 %324, 8
  %326 = load ptr, ptr %23, align 8
  %327 = getelementptr inbounds i8, ptr %326, i32 1
  store ptr %327, ptr %23, align 8
  %328 = load i8, ptr %326, align 1
  %329 = zext i8 %328 to i32
  %330 = or i32 %325, %329
  store i32 %330, ptr %25, align 4
  br label %331

331:                                              ; preds = %321, %300
  %332 = load i32, ptr %24, align 4
  %333 = lshr i32 %332, 11
  %334 = load i32, ptr %28, align 4
  %335 = mul i32 %333, %334
  store i32 %335, ptr %27, align 4
  %336 = load i32, ptr %25, align 4
  %337 = load i32, ptr %27, align 4
  %338 = icmp ult i32 %336, %337
  br i1 %338, label %339, label %355

339:                                              ; preds = %331
  %340 = load i32, ptr %27, align 4
  store i32 %340, ptr %24, align 4
  %341 = load i32, ptr %28, align 4
  %342 = load i32, ptr %28, align 4
  %343 = sub i32 2048, %342
  %344 = lshr i32 %343, 5
  %345 = add i32 %341, %344
  %346 = trunc i32 %345 to i16
  %347 = load ptr, ptr %34, align 8
  store i16 %346, ptr %347, align 2
  %348 = load i32, ptr %30, align 4
  %349 = load i32, ptr %30, align 4
  %350 = add i32 %348, %349
  store i32 %350, ptr %30, align 4
  %351 = load i32, ptr %33, align 4
  %352 = xor i32 %351, -1
  %353 = load i32, ptr %32, align 4
  %354 = and i32 %353, %352
  store i32 %354, ptr %32, align 4
  br label %375

355:                                              ; preds = %331
  %356 = load i32, ptr %27, align 4
  %357 = load i32, ptr %24, align 4
  %358 = sub i32 %357, %356
  store i32 %358, ptr %24, align 4
  %359 = load i32, ptr %27, align 4
  %360 = load i32, ptr %25, align 4
  %361 = sub i32 %360, %359
  store i32 %361, ptr %25, align 4
  %362 = load i32, ptr %28, align 4
  %363 = load i32, ptr %28, align 4
  %364 = lshr i32 %363, 5
  %365 = sub i32 %362, %364
  %366 = trunc i32 %365 to i16
  %367 = load ptr, ptr %34, align 8
  store i16 %366, ptr %367, align 2
  %368 = load i32, ptr %30, align 4
  %369 = load i32, ptr %30, align 4
  %370 = add i32 %368, %369
  %371 = add i32 %370, 1
  store i32 %371, ptr %30, align 4
  %372 = load i32, ptr %33, align 4
  %373 = load i32, ptr %32, align 4
  %374 = and i32 %373, %372
  store i32 %374, ptr %32, align 4
  br label %375

375:                                              ; preds = %355, %339
  br label %376

376:                                              ; preds = %375
  %377 = load i32, ptr %30, align 4
  %378 = icmp ult i32 %377, 256
  br i1 %378, label %300, label %379, !llvm.loop !20

379:                                              ; preds = %376
  br label %380

380:                                              ; preds = %379, %272
  %381 = load i32, ptr %30, align 4
  %382 = trunc i32 %381 to i8
  %383 = load ptr, ptr %17, align 8
  %384 = load i64, ptr %19, align 8
  %385 = add i64 %384, 1
  store i64 %385, ptr %19, align 8
  %386 = getelementptr inbounds i8, ptr %383, i64 %384
  store i8 %382, ptr %386, align 1
  %387 = load i32, ptr %20, align 4
  %388 = add i32 %387, 1
  store i32 %388, ptr %20, align 4
  br label %1816

389:                                              ; preds = %142
  %390 = load i32, ptr %27, align 4
  %391 = load i32, ptr %24, align 4
  %392 = sub i32 %391, %390
  store i32 %392, ptr %24, align 4
  %393 = load i32, ptr %27, align 4
  %394 = load i32, ptr %25, align 4
  %395 = sub i32 %394, %393
  store i32 %395, ptr %25, align 4
  %396 = load i32, ptr %28, align 4
  %397 = load i32, ptr %28, align 4
  %398 = lshr i32 %397, 5
  %399 = sub i32 %396, %398
  %400 = trunc i32 %399 to i16
  %401 = load ptr, ptr %26, align 8
  store i16 %400, ptr %401, align 2
  %402 = load ptr, ptr %8, align 8
  %403 = getelementptr inbounds i16, ptr %402, i64 192
  %404 = load i32, ptr %9, align 4
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds i16, ptr %403, i64 %405
  store ptr %406, ptr %26, align 8
  %407 = load ptr, ptr %26, align 8
  %408 = load i16, ptr %407, align 2
  %409 = zext i16 %408 to i32
  store i32 %409, ptr %28, align 4
  %410 = load i32, ptr %24, align 4
  %411 = icmp ult i32 %410, 16777216
  br i1 %411, label %412, label %422

412:                                              ; preds = %389
  %413 = load i32, ptr %24, align 4
  %414 = shl i32 %413, 8
  store i32 %414, ptr %24, align 4
  %415 = load i32, ptr %25, align 4
  %416 = shl i32 %415, 8
  %417 = load ptr, ptr %23, align 8
  %418 = getelementptr inbounds i8, ptr %417, i32 1
  store ptr %418, ptr %23, align 8
  %419 = load i8, ptr %417, align 1
  %420 = zext i8 %419 to i32
  %421 = or i32 %416, %420
  store i32 %421, ptr %25, align 4
  br label %422

422:                                              ; preds = %412, %389
  %423 = load i32, ptr %24, align 4
  %424 = lshr i32 %423, 11
  %425 = load i32, ptr %28, align 4
  %426 = mul i32 %424, %425
  store i32 %426, ptr %27, align 4
  %427 = load i32, ptr %25, align 4
  %428 = load i32, ptr %27, align 4
  %429 = icmp ult i32 %427, %428
  br i1 %429, label %430, label %443

430:                                              ; preds = %422
  %431 = load i32, ptr %27, align 4
  store i32 %431, ptr %24, align 4
  %432 = load i32, ptr %28, align 4
  %433 = load i32, ptr %28, align 4
  %434 = sub i32 2048, %433
  %435 = lshr i32 %434, 5
  %436 = add i32 %432, %435
  %437 = trunc i32 %436 to i16
  %438 = load ptr, ptr %26, align 8
  store i16 %437, ptr %438, align 2
  %439 = load i32, ptr %9, align 4
  %440 = add i32 %439, 12
  store i32 %440, ptr %9, align 4
  %441 = load ptr, ptr %8, align 8
  %442 = getelementptr inbounds i16, ptr %441, i64 818
  store ptr %442, ptr %26, align 8
  br label %711

443:                                              ; preds = %422
  %444 = load i32, ptr %27, align 4
  %445 = load i32, ptr %24, align 4
  %446 = sub i32 %445, %444
  store i32 %446, ptr %24, align 4
  %447 = load i32, ptr %27, align 4
  %448 = load i32, ptr %25, align 4
  %449 = sub i32 %448, %447
  store i32 %449, ptr %25, align 4
  %450 = load i32, ptr %28, align 4
  %451 = load i32, ptr %28, align 4
  %452 = lshr i32 %451, 5
  %453 = sub i32 %450, %452
  %454 = trunc i32 %453 to i16
  %455 = load ptr, ptr %26, align 8
  store i16 %454, ptr %455, align 2
  %456 = load i32, ptr %21, align 4
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %462

458:                                              ; preds = %443
  %459 = load i32, ptr %20, align 4
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %458
  store i32 1, ptr %4, align 4
  br label %1877

462:                                              ; preds = %458, %443
  %463 = load ptr, ptr %8, align 8
  %464 = getelementptr inbounds i16, ptr %463, i64 204
  %465 = load i32, ptr %9, align 4
  %466 = zext i32 %465 to i64
  %467 = getelementptr inbounds i16, ptr %464, i64 %466
  store ptr %467, ptr %26, align 8
  %468 = load ptr, ptr %26, align 8
  %469 = load i16, ptr %468, align 2
  %470 = zext i16 %469 to i32
  store i32 %470, ptr %28, align 4
  %471 = load i32, ptr %24, align 4
  %472 = icmp ult i32 %471, 16777216
  br i1 %472, label %473, label %483

473:                                              ; preds = %462
  %474 = load i32, ptr %24, align 4
  %475 = shl i32 %474, 8
  store i32 %475, ptr %24, align 4
  %476 = load i32, ptr %25, align 4
  %477 = shl i32 %476, 8
  %478 = load ptr, ptr %23, align 8
  %479 = getelementptr inbounds i8, ptr %478, i32 1
  store ptr %479, ptr %23, align 8
  %480 = load i8, ptr %478, align 1
  %481 = zext i8 %480 to i32
  %482 = or i32 %477, %481
  store i32 %482, ptr %25, align 4
  br label %483

483:                                              ; preds = %473, %462
  %484 = load i32, ptr %24, align 4
  %485 = lshr i32 %484, 11
  %486 = load i32, ptr %28, align 4
  %487 = mul i32 %485, %486
  store i32 %487, ptr %27, align 4
  %488 = load i32, ptr %25, align 4
  %489 = load i32, ptr %27, align 4
  %490 = icmp ult i32 %488, %489
  br i1 %490, label %491, label %582

491:                                              ; preds = %483
  %492 = load i32, ptr %27, align 4
  store i32 %492, ptr %24, align 4
  %493 = load i32, ptr %28, align 4
  %494 = load i32, ptr %28, align 4
  %495 = sub i32 2048, %494
  %496 = lshr i32 %495, 5
  %497 = add i32 %493, %496
  %498 = trunc i32 %497 to i16
  %499 = load ptr, ptr %26, align 8
  store i16 %498, ptr %499, align 2
  %500 = load ptr, ptr %8, align 8
  %501 = getelementptr inbounds i16, ptr %500, i64 240
  %502 = load i32, ptr %9, align 4
  %503 = shl i32 %502, 4
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds i16, ptr %501, i64 %504
  %506 = load i32, ptr %29, align 4
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds i16, ptr %505, i64 %507
  store ptr %508, ptr %26, align 8
  %509 = load ptr, ptr %26, align 8
  %510 = load i16, ptr %509, align 2
  %511 = zext i16 %510 to i32
  store i32 %511, ptr %28, align 4
  %512 = load i32, ptr %24, align 4
  %513 = icmp ult i32 %512, 16777216
  br i1 %513, label %514, label %524

514:                                              ; preds = %491
  %515 = load i32, ptr %24, align 4
  %516 = shl i32 %515, 8
  store i32 %516, ptr %24, align 4
  %517 = load i32, ptr %25, align 4
  %518 = shl i32 %517, 8
  %519 = load ptr, ptr %23, align 8
  %520 = getelementptr inbounds i8, ptr %519, i32 1
  store ptr %520, ptr %23, align 8
  %521 = load i8, ptr %519, align 1
  %522 = zext i8 %521 to i32
  %523 = or i32 %518, %522
  store i32 %523, ptr %25, align 4
  br label %524

524:                                              ; preds = %514, %491
  %525 = load i32, ptr %24, align 4
  %526 = lshr i32 %525, 11
  %527 = load i32, ptr %28, align 4
  %528 = mul i32 %526, %527
  store i32 %528, ptr %27, align 4
  %529 = load i32, ptr %25, align 4
  %530 = load i32, ptr %27, align 4
  %531 = icmp ult i32 %529, %530
  br i1 %531, label %532, label %569

532:                                              ; preds = %524
  %533 = load i32, ptr %27, align 4
  store i32 %533, ptr %24, align 4
  %534 = load i32, ptr %28, align 4
  %535 = load i32, ptr %28, align 4
  %536 = sub i32 2048, %535
  %537 = lshr i32 %536, 5
  %538 = add i32 %534, %537
  %539 = trunc i32 %538 to i16
  %540 = load ptr, ptr %26, align 8
  store i16 %539, ptr %540, align 2
  %541 = load ptr, ptr %17, align 8
  %542 = load i64, ptr %19, align 8
  %543 = load i32, ptr %10, align 4
  %544 = zext i32 %543 to i64
  %545 = sub i64 %542, %544
  %546 = load i64, ptr %19, align 8
  %547 = load i32, ptr %10, align 4
  %548 = zext i32 %547 to i64
  %549 = icmp ult i64 %546, %548
  br i1 %549, label %550, label %552

550:                                              ; preds = %532
  %551 = load i64, ptr %18, align 8
  br label %553

552:                                              ; preds = %532
  br label %553

553:                                              ; preds = %552, %550
  %554 = phi i64 [ %551, %550 ], [ 0, %552 ]
  %555 = add i64 %545, %554
  %556 = getelementptr inbounds i8, ptr %541, i64 %555
  %557 = load i8, ptr %556, align 1
  %558 = load ptr, ptr %17, align 8
  %559 = load i64, ptr %19, align 8
  %560 = getelementptr inbounds i8, ptr %558, i64 %559
  store i8 %557, ptr %560, align 1
  %561 = load i64, ptr %19, align 8
  %562 = add i64 %561, 1
  store i64 %562, ptr %19, align 8
  %563 = load i32, ptr %20, align 4
  %564 = add i32 %563, 1
  store i32 %564, ptr %20, align 4
  %565 = load i32, ptr %9, align 4
  %566 = icmp ult i32 %565, 7
  %567 = zext i1 %566 to i64
  %568 = select i1 %566, i32 9, i32 11
  store i32 %568, ptr %9, align 4
  br label %1816

569:                                              ; preds = %524
  %570 = load i32, ptr %27, align 4
  %571 = load i32, ptr %24, align 4
  %572 = sub i32 %571, %570
  store i32 %572, ptr %24, align 4
  %573 = load i32, ptr %27, align 4
  %574 = load i32, ptr %25, align 4
  %575 = sub i32 %574, %573
  store i32 %575, ptr %25, align 4
  %576 = load i32, ptr %28, align 4
  %577 = load i32, ptr %28, align 4
  %578 = lshr i32 %577, 5
  %579 = sub i32 %576, %578
  %580 = trunc i32 %579 to i16
  %581 = load ptr, ptr %26, align 8
  store i16 %580, ptr %581, align 2
  br label %704

582:                                              ; preds = %483
  %583 = load i32, ptr %27, align 4
  %584 = load i32, ptr %24, align 4
  %585 = sub i32 %584, %583
  store i32 %585, ptr %24, align 4
  %586 = load i32, ptr %27, align 4
  %587 = load i32, ptr %25, align 4
  %588 = sub i32 %587, %586
  store i32 %588, ptr %25, align 4
  %589 = load i32, ptr %28, align 4
  %590 = load i32, ptr %28, align 4
  %591 = lshr i32 %590, 5
  %592 = sub i32 %589, %591
  %593 = trunc i32 %592 to i16
  %594 = load ptr, ptr %26, align 8
  store i16 %593, ptr %594, align 2
  %595 = load ptr, ptr %8, align 8
  %596 = getelementptr inbounds i16, ptr %595, i64 216
  %597 = load i32, ptr %9, align 4
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds i16, ptr %596, i64 %598
  store ptr %599, ptr %26, align 8
  %600 = load ptr, ptr %26, align 8
  %601 = load i16, ptr %600, align 2
  %602 = zext i16 %601 to i32
  store i32 %602, ptr %28, align 4
  %603 = load i32, ptr %24, align 4
  %604 = icmp ult i32 %603, 16777216
  br i1 %604, label %605, label %615

605:                                              ; preds = %582
  %606 = load i32, ptr %24, align 4
  %607 = shl i32 %606, 8
  store i32 %607, ptr %24, align 4
  %608 = load i32, ptr %25, align 4
  %609 = shl i32 %608, 8
  %610 = load ptr, ptr %23, align 8
  %611 = getelementptr inbounds i8, ptr %610, i32 1
  store ptr %611, ptr %23, align 8
  %612 = load i8, ptr %610, align 1
  %613 = zext i8 %612 to i32
  %614 = or i32 %609, %613
  store i32 %614, ptr %25, align 4
  br label %615

615:                                              ; preds = %605, %582
  %616 = load i32, ptr %24, align 4
  %617 = lshr i32 %616, 11
  %618 = load i32, ptr %28, align 4
  %619 = mul i32 %617, %618
  store i32 %619, ptr %27, align 4
  %620 = load i32, ptr %25, align 4
  %621 = load i32, ptr %27, align 4
  %622 = icmp ult i32 %620, %621
  br i1 %622, label %623, label %633

623:                                              ; preds = %615
  %624 = load i32, ptr %27, align 4
  store i32 %624, ptr %24, align 4
  %625 = load i32, ptr %28, align 4
  %626 = load i32, ptr %28, align 4
  %627 = sub i32 2048, %626
  %628 = lshr i32 %627, 5
  %629 = add i32 %625, %628
  %630 = trunc i32 %629 to i16
  %631 = load ptr, ptr %26, align 8
  store i16 %630, ptr %631, align 2
  %632 = load i32, ptr %11, align 4
  store i32 %632, ptr %35, align 4
  br label %701

633:                                              ; preds = %615
  %634 = load i32, ptr %27, align 4
  %635 = load i32, ptr %24, align 4
  %636 = sub i32 %635, %634
  store i32 %636, ptr %24, align 4
  %637 = load i32, ptr %27, align 4
  %638 = load i32, ptr %25, align 4
  %639 = sub i32 %638, %637
  store i32 %639, ptr %25, align 4
  %640 = load i32, ptr %28, align 4
  %641 = load i32, ptr %28, align 4
  %642 = lshr i32 %641, 5
  %643 = sub i32 %640, %642
  %644 = trunc i32 %643 to i16
  %645 = load ptr, ptr %26, align 8
  store i16 %644, ptr %645, align 2
  %646 = load ptr, ptr %8, align 8
  %647 = getelementptr inbounds i16, ptr %646, i64 228
  %648 = load i32, ptr %9, align 4
  %649 = zext i32 %648 to i64
  %650 = getelementptr inbounds i16, ptr %647, i64 %649
  store ptr %650, ptr %26, align 8
  %651 = load ptr, ptr %26, align 8
  %652 = load i16, ptr %651, align 2
  %653 = zext i16 %652 to i32
  store i32 %653, ptr %28, align 4
  %654 = load i32, ptr %24, align 4
  %655 = icmp ult i32 %654, 16777216
  br i1 %655, label %656, label %666

656:                                              ; preds = %633
  %657 = load i32, ptr %24, align 4
  %658 = shl i32 %657, 8
  store i32 %658, ptr %24, align 4
  %659 = load i32, ptr %25, align 4
  %660 = shl i32 %659, 8
  %661 = load ptr, ptr %23, align 8
  %662 = getelementptr inbounds i8, ptr %661, i32 1
  store ptr %662, ptr %23, align 8
  %663 = load i8, ptr %661, align 1
  %664 = zext i8 %663 to i32
  %665 = or i32 %660, %664
  store i32 %665, ptr %25, align 4
  br label %666

666:                                              ; preds = %656, %633
  %667 = load i32, ptr %24, align 4
  %668 = lshr i32 %667, 11
  %669 = load i32, ptr %28, align 4
  %670 = mul i32 %668, %669
  store i32 %670, ptr %27, align 4
  %671 = load i32, ptr %25, align 4
  %672 = load i32, ptr %27, align 4
  %673 = icmp ult i32 %671, %672
  br i1 %673, label %674, label %684

674:                                              ; preds = %666
  %675 = load i32, ptr %27, align 4
  store i32 %675, ptr %24, align 4
  %676 = load i32, ptr %28, align 4
  %677 = load i32, ptr %28, align 4
  %678 = sub i32 2048, %677
  %679 = lshr i32 %678, 5
  %680 = add i32 %676, %679
  %681 = trunc i32 %680 to i16
  %682 = load ptr, ptr %26, align 8
  store i16 %681, ptr %682, align 2
  %683 = load i32, ptr %12, align 4
  store i32 %683, ptr %35, align 4
  br label %699

684:                                              ; preds = %666
  %685 = load i32, ptr %27, align 4
  %686 = load i32, ptr %24, align 4
  %687 = sub i32 %686, %685
  store i32 %687, ptr %24, align 4
  %688 = load i32, ptr %27, align 4
  %689 = load i32, ptr %25, align 4
  %690 = sub i32 %689, %688
  store i32 %690, ptr %25, align 4
  %691 = load i32, ptr %28, align 4
  %692 = load i32, ptr %28, align 4
  %693 = lshr i32 %692, 5
  %694 = sub i32 %691, %693
  %695 = trunc i32 %694 to i16
  %696 = load ptr, ptr %26, align 8
  store i16 %695, ptr %696, align 2
  %697 = load i32, ptr %13, align 4
  store i32 %697, ptr %35, align 4
  %698 = load i32, ptr %12, align 4
  store i32 %698, ptr %13, align 4
  br label %699

699:                                              ; preds = %684, %674
  %700 = load i32, ptr %11, align 4
  store i32 %700, ptr %12, align 4
  br label %701

701:                                              ; preds = %699, %623
  %702 = load i32, ptr %10, align 4
  store i32 %702, ptr %11, align 4
  %703 = load i32, ptr %35, align 4
  store i32 %703, ptr %10, align 4
  br label %704

704:                                              ; preds = %701, %569
  %705 = load i32, ptr %9, align 4
  %706 = icmp ult i32 %705, 7
  %707 = zext i1 %706 to i64
  %708 = select i1 %706, i32 8, i32 11
  store i32 %708, ptr %9, align 4
  %709 = load ptr, ptr %8, align 8
  %710 = getelementptr inbounds i16, ptr %709, i64 1332
  store ptr %710, ptr %26, align 8
  br label %711

711:                                              ; preds = %704, %430
  %712 = load ptr, ptr %26, align 8
  %713 = getelementptr inbounds i16, ptr %712, i64 0
  store ptr %713, ptr %38, align 8
  %714 = load ptr, ptr %38, align 8
  %715 = load i16, ptr %714, align 2
  %716 = zext i16 %715 to i32
  store i32 %716, ptr %28, align 4
  %717 = load i32, ptr %24, align 4
  %718 = icmp ult i32 %717, 16777216
  br i1 %718, label %719, label %729

719:                                              ; preds = %711
  %720 = load i32, ptr %24, align 4
  %721 = shl i32 %720, 8
  store i32 %721, ptr %24, align 4
  %722 = load i32, ptr %25, align 4
  %723 = shl i32 %722, 8
  %724 = load ptr, ptr %23, align 8
  %725 = getelementptr inbounds i8, ptr %724, i32 1
  store ptr %725, ptr %23, align 8
  %726 = load i8, ptr %724, align 1
  %727 = zext i8 %726 to i32
  %728 = or i32 %723, %727
  store i32 %728, ptr %25, align 4
  br label %729

729:                                              ; preds = %719, %711
  %730 = load i32, ptr %24, align 4
  %731 = lshr i32 %730, 11
  %732 = load i32, ptr %28, align 4
  %733 = mul i32 %731, %732
  store i32 %733, ptr %27, align 4
  %734 = load i32, ptr %25, align 4
  %735 = load i32, ptr %27, align 4
  %736 = icmp ult i32 %734, %735
  br i1 %736, label %737, label %752

737:                                              ; preds = %729
  %738 = load i32, ptr %27, align 4
  store i32 %738, ptr %24, align 4
  %739 = load i32, ptr %28, align 4
  %740 = load i32, ptr %28, align 4
  %741 = sub i32 2048, %740
  %742 = lshr i32 %741, 5
  %743 = add i32 %739, %742
  %744 = trunc i32 %743 to i16
  %745 = load ptr, ptr %38, align 8
  store i16 %744, ptr %745, align 2
  %746 = load ptr, ptr %26, align 8
  %747 = getelementptr inbounds i16, ptr %746, i64 2
  %748 = load i32, ptr %29, align 4
  %749 = shl i32 %748, 3
  %750 = zext i32 %749 to i64
  %751 = getelementptr inbounds i16, ptr %747, i64 %750
  store ptr %751, ptr %38, align 8
  store i32 0, ptr %37, align 4
  store i32 8, ptr %36, align 4
  br label %821

752:                                              ; preds = %729
  %753 = load i32, ptr %27, align 4
  %754 = load i32, ptr %24, align 4
  %755 = sub i32 %754, %753
  store i32 %755, ptr %24, align 4
  %756 = load i32, ptr %27, align 4
  %757 = load i32, ptr %25, align 4
  %758 = sub i32 %757, %756
  store i32 %758, ptr %25, align 4
  %759 = load i32, ptr %28, align 4
  %760 = load i32, ptr %28, align 4
  %761 = lshr i32 %760, 5
  %762 = sub i32 %759, %761
  %763 = trunc i32 %762 to i16
  %764 = load ptr, ptr %38, align 8
  store i16 %763, ptr %764, align 2
  %765 = load ptr, ptr %26, align 8
  %766 = getelementptr inbounds i16, ptr %765, i64 1
  store ptr %766, ptr %38, align 8
  %767 = load ptr, ptr %38, align 8
  %768 = load i16, ptr %767, align 2
  %769 = zext i16 %768 to i32
  store i32 %769, ptr %28, align 4
  %770 = load i32, ptr %24, align 4
  %771 = icmp ult i32 %770, 16777216
  br i1 %771, label %772, label %782

772:                                              ; preds = %752
  %773 = load i32, ptr %24, align 4
  %774 = shl i32 %773, 8
  store i32 %774, ptr %24, align 4
  %775 = load i32, ptr %25, align 4
  %776 = shl i32 %775, 8
  %777 = load ptr, ptr %23, align 8
  %778 = getelementptr inbounds i8, ptr %777, i32 1
  store ptr %778, ptr %23, align 8
  %779 = load i8, ptr %777, align 1
  %780 = zext i8 %779 to i32
  %781 = or i32 %776, %780
  store i32 %781, ptr %25, align 4
  br label %782

782:                                              ; preds = %772, %752
  %783 = load i32, ptr %24, align 4
  %784 = lshr i32 %783, 11
  %785 = load i32, ptr %28, align 4
  %786 = mul i32 %784, %785
  store i32 %786, ptr %27, align 4
  %787 = load i32, ptr %25, align 4
  %788 = load i32, ptr %27, align 4
  %789 = icmp ult i32 %787, %788
  br i1 %789, label %790, label %805

790:                                              ; preds = %782
  %791 = load i32, ptr %27, align 4
  store i32 %791, ptr %24, align 4
  %792 = load i32, ptr %28, align 4
  %793 = load i32, ptr %28, align 4
  %794 = sub i32 2048, %793
  %795 = lshr i32 %794, 5
  %796 = add i32 %792, %795
  %797 = trunc i32 %796 to i16
  %798 = load ptr, ptr %38, align 8
  store i16 %797, ptr %798, align 2
  %799 = load ptr, ptr %26, align 8
  %800 = getelementptr inbounds i16, ptr %799, i64 130
  %801 = load i32, ptr %29, align 4
  %802 = shl i32 %801, 3
  %803 = zext i32 %802 to i64
  %804 = getelementptr inbounds i16, ptr %800, i64 %803
  store ptr %804, ptr %38, align 8
  store i32 8, ptr %37, align 4
  store i32 8, ptr %36, align 4
  br label %820

805:                                              ; preds = %782
  %806 = load i32, ptr %27, align 4
  %807 = load i32, ptr %24, align 4
  %808 = sub i32 %807, %806
  store i32 %808, ptr %24, align 4
  %809 = load i32, ptr %27, align 4
  %810 = load i32, ptr %25, align 4
  %811 = sub i32 %810, %809
  store i32 %811, ptr %25, align 4
  %812 = load i32, ptr %28, align 4
  %813 = load i32, ptr %28, align 4
  %814 = lshr i32 %813, 5
  %815 = sub i32 %812, %814
  %816 = trunc i32 %815 to i16
  %817 = load ptr, ptr %38, align 8
  store i16 %816, ptr %817, align 2
  %818 = load ptr, ptr %26, align 8
  %819 = getelementptr inbounds i16, ptr %818, i64 258
  store ptr %819, ptr %38, align 8
  store i32 16, ptr %37, align 4
  store i32 256, ptr %36, align 4
  br label %820

820:                                              ; preds = %805, %790
  br label %821

821:                                              ; preds = %820, %737
  store i32 1, ptr %22, align 4
  br label %822

822:                                              ; preds = %885, %821
  %823 = load ptr, ptr %38, align 8
  %824 = load i32, ptr %22, align 4
  %825 = zext i32 %824 to i64
  %826 = getelementptr inbounds i16, ptr %823, i64 %825
  %827 = load i16, ptr %826, align 2
  %828 = zext i16 %827 to i32
  store i32 %828, ptr %28, align 4
  %829 = load i32, ptr %24, align 4
  %830 = icmp ult i32 %829, 16777216
  br i1 %830, label %831, label %841

831:                                              ; preds = %822
  %832 = load i32, ptr %24, align 4
  %833 = shl i32 %832, 8
  store i32 %833, ptr %24, align 4
  %834 = load i32, ptr %25, align 4
  %835 = shl i32 %834, 8
  %836 = load ptr, ptr %23, align 8
  %837 = getelementptr inbounds i8, ptr %836, i32 1
  store ptr %837, ptr %23, align 8
  %838 = load i8, ptr %836, align 1
  %839 = zext i8 %838 to i32
  %840 = or i32 %835, %839
  store i32 %840, ptr %25, align 4
  br label %841

841:                                              ; preds = %831, %822
  %842 = load i32, ptr %24, align 4
  %843 = lshr i32 %842, 11
  %844 = load i32, ptr %28, align 4
  %845 = mul i32 %843, %844
  store i32 %845, ptr %27, align 4
  %846 = load i32, ptr %25, align 4
  %847 = load i32, ptr %27, align 4
  %848 = icmp ult i32 %846, %847
  br i1 %848, label %849, label %864

849:                                              ; preds = %841
  %850 = load i32, ptr %27, align 4
  store i32 %850, ptr %24, align 4
  %851 = load i32, ptr %28, align 4
  %852 = load i32, ptr %28, align 4
  %853 = sub i32 2048, %852
  %854 = lshr i32 %853, 5
  %855 = add i32 %851, %854
  %856 = trunc i32 %855 to i16
  %857 = load ptr, ptr %38, align 8
  %858 = load i32, ptr %22, align 4
  %859 = zext i32 %858 to i64
  %860 = getelementptr inbounds i16, ptr %857, i64 %859
  store i16 %856, ptr %860, align 2
  %861 = load i32, ptr %22, align 4
  %862 = load i32, ptr %22, align 4
  %863 = add i32 %861, %862
  store i32 %863, ptr %22, align 4
  br label %884

864:                                              ; preds = %841
  %865 = load i32, ptr %27, align 4
  %866 = load i32, ptr %24, align 4
  %867 = sub i32 %866, %865
  store i32 %867, ptr %24, align 4
  %868 = load i32, ptr %27, align 4
  %869 = load i32, ptr %25, align 4
  %870 = sub i32 %869, %868
  store i32 %870, ptr %25, align 4
  %871 = load i32, ptr %28, align 4
  %872 = load i32, ptr %28, align 4
  %873 = lshr i32 %872, 5
  %874 = sub i32 %871, %873
  %875 = trunc i32 %874 to i16
  %876 = load ptr, ptr %38, align 8
  %877 = load i32, ptr %22, align 4
  %878 = zext i32 %877 to i64
  %879 = getelementptr inbounds i16, ptr %876, i64 %878
  store i16 %875, ptr %879, align 2
  %880 = load i32, ptr %22, align 4
  %881 = load i32, ptr %22, align 4
  %882 = add i32 %880, %881
  %883 = add i32 %882, 1
  store i32 %883, ptr %22, align 4
  br label %884

884:                                              ; preds = %864, %849
  br label %885

885:                                              ; preds = %884
  %886 = load i32, ptr %22, align 4
  %887 = load i32, ptr %36, align 4
  %888 = icmp ult i32 %886, %887
  br i1 %888, label %822, label %889, !llvm.loop !21

889:                                              ; preds = %885
  %890 = load i32, ptr %36, align 4
  %891 = load i32, ptr %22, align 4
  %892 = sub i32 %891, %890
  store i32 %892, ptr %22, align 4
  %893 = load i32, ptr %37, align 4
  %894 = load i32, ptr %22, align 4
  %895 = add i32 %894, %893
  store i32 %895, ptr %22, align 4
  %896 = load i32, ptr %9, align 4
  %897 = icmp uge i32 %896, 12
  br i1 %897, label %898, label %1718

898:                                              ; preds = %889
  %899 = load ptr, ptr %8, align 8
  %900 = getelementptr inbounds i16, ptr %899, i64 432
  %901 = load i32, ptr %22, align 4
  %902 = icmp ult i32 %901, 4
  br i1 %902, label %903, label %905

903:                                              ; preds = %898
  %904 = load i32, ptr %22, align 4
  br label %906

905:                                              ; preds = %898
  br label %906

906:                                              ; preds = %905, %903
  %907 = phi i32 [ %904, %903 ], [ 3, %905 ]
  %908 = shl i32 %907, 6
  %909 = zext i32 %908 to i64
  %910 = getelementptr inbounds i16, ptr %900, i64 %909
  store ptr %910, ptr %26, align 8
  store i32 1, ptr %39, align 4
  %911 = load ptr, ptr %26, align 8
  %912 = load i32, ptr %39, align 4
  %913 = zext i32 %912 to i64
  %914 = getelementptr inbounds i16, ptr %911, i64 %913
  %915 = load i16, ptr %914, align 2
  %916 = zext i16 %915 to i32
  store i32 %916, ptr %28, align 4
  %917 = load i32, ptr %24, align 4
  %918 = icmp ult i32 %917, 16777216
  br i1 %918, label %919, label %929

919:                                              ; preds = %906
  %920 = load i32, ptr %24, align 4
  %921 = shl i32 %920, 8
  store i32 %921, ptr %24, align 4
  %922 = load i32, ptr %25, align 4
  %923 = shl i32 %922, 8
  %924 = load ptr, ptr %23, align 8
  %925 = getelementptr inbounds i8, ptr %924, i32 1
  store ptr %925, ptr %23, align 8
  %926 = load i8, ptr %924, align 1
  %927 = zext i8 %926 to i32
  %928 = or i32 %923, %927
  store i32 %928, ptr %25, align 4
  br label %929

929:                                              ; preds = %919, %906
  %930 = load i32, ptr %24, align 4
  %931 = lshr i32 %930, 11
  %932 = load i32, ptr %28, align 4
  %933 = mul i32 %931, %932
  store i32 %933, ptr %27, align 4
  %934 = load i32, ptr %25, align 4
  %935 = load i32, ptr %27, align 4
  %936 = icmp ult i32 %934, %935
  br i1 %936, label %937, label %952

937:                                              ; preds = %929
  %938 = load i32, ptr %27, align 4
  store i32 %938, ptr %24, align 4
  %939 = load i32, ptr %28, align 4
  %940 = load i32, ptr %28, align 4
  %941 = sub i32 2048, %940
  %942 = lshr i32 %941, 5
  %943 = add i32 %939, %942
  %944 = trunc i32 %943 to i16
  %945 = load ptr, ptr %26, align 8
  %946 = load i32, ptr %39, align 4
  %947 = zext i32 %946 to i64
  %948 = getelementptr inbounds i16, ptr %945, i64 %947
  store i16 %944, ptr %948, align 2
  %949 = load i32, ptr %39, align 4
  %950 = load i32, ptr %39, align 4
  %951 = add i32 %949, %950
  store i32 %951, ptr %39, align 4
  br label %972

952:                                              ; preds = %929
  %953 = load i32, ptr %27, align 4
  %954 = load i32, ptr %24, align 4
  %955 = sub i32 %954, %953
  store i32 %955, ptr %24, align 4
  %956 = load i32, ptr %27, align 4
  %957 = load i32, ptr %25, align 4
  %958 = sub i32 %957, %956
  store i32 %958, ptr %25, align 4
  %959 = load i32, ptr %28, align 4
  %960 = load i32, ptr %28, align 4
  %961 = lshr i32 %960, 5
  %962 = sub i32 %959, %961
  %963 = trunc i32 %962 to i16
  %964 = load ptr, ptr %26, align 8
  %965 = load i32, ptr %39, align 4
  %966 = zext i32 %965 to i64
  %967 = getelementptr inbounds i16, ptr %964, i64 %966
  store i16 %963, ptr %967, align 2
  %968 = load i32, ptr %39, align 4
  %969 = load i32, ptr %39, align 4
  %970 = add i32 %968, %969
  %971 = add i32 %970, 1
  store i32 %971, ptr %39, align 4
  br label %972

972:                                              ; preds = %952, %937
  %973 = load ptr, ptr %26, align 8
  %974 = load i32, ptr %39, align 4
  %975 = zext i32 %974 to i64
  %976 = getelementptr inbounds i16, ptr %973, i64 %975
  %977 = load i16, ptr %976, align 2
  %978 = zext i16 %977 to i32
  store i32 %978, ptr %28, align 4
  %979 = load i32, ptr %24, align 4
  %980 = icmp ult i32 %979, 16777216
  br i1 %980, label %981, label %991

981:                                              ; preds = %972
  %982 = load i32, ptr %24, align 4
  %983 = shl i32 %982, 8
  store i32 %983, ptr %24, align 4
  %984 = load i32, ptr %25, align 4
  %985 = shl i32 %984, 8
  %986 = load ptr, ptr %23, align 8
  %987 = getelementptr inbounds i8, ptr %986, i32 1
  store ptr %987, ptr %23, align 8
  %988 = load i8, ptr %986, align 1
  %989 = zext i8 %988 to i32
  %990 = or i32 %985, %989
  store i32 %990, ptr %25, align 4
  br label %991

991:                                              ; preds = %981, %972
  %992 = load i32, ptr %24, align 4
  %993 = lshr i32 %992, 11
  %994 = load i32, ptr %28, align 4
  %995 = mul i32 %993, %994
  store i32 %995, ptr %27, align 4
  %996 = load i32, ptr %25, align 4
  %997 = load i32, ptr %27, align 4
  %998 = icmp ult i32 %996, %997
  br i1 %998, label %999, label %1014

999:                                              ; preds = %991
  %1000 = load i32, ptr %27, align 4
  store i32 %1000, ptr %24, align 4
  %1001 = load i32, ptr %28, align 4
  %1002 = load i32, ptr %28, align 4
  %1003 = sub i32 2048, %1002
  %1004 = lshr i32 %1003, 5
  %1005 = add i32 %1001, %1004
  %1006 = trunc i32 %1005 to i16
  %1007 = load ptr, ptr %26, align 8
  %1008 = load i32, ptr %39, align 4
  %1009 = zext i32 %1008 to i64
  %1010 = getelementptr inbounds i16, ptr %1007, i64 %1009
  store i16 %1006, ptr %1010, align 2
  %1011 = load i32, ptr %39, align 4
  %1012 = load i32, ptr %39, align 4
  %1013 = add i32 %1011, %1012
  store i32 %1013, ptr %39, align 4
  br label %1034

1014:                                             ; preds = %991
  %1015 = load i32, ptr %27, align 4
  %1016 = load i32, ptr %24, align 4
  %1017 = sub i32 %1016, %1015
  store i32 %1017, ptr %24, align 4
  %1018 = load i32, ptr %27, align 4
  %1019 = load i32, ptr %25, align 4
  %1020 = sub i32 %1019, %1018
  store i32 %1020, ptr %25, align 4
  %1021 = load i32, ptr %28, align 4
  %1022 = load i32, ptr %28, align 4
  %1023 = lshr i32 %1022, 5
  %1024 = sub i32 %1021, %1023
  %1025 = trunc i32 %1024 to i16
  %1026 = load ptr, ptr %26, align 8
  %1027 = load i32, ptr %39, align 4
  %1028 = zext i32 %1027 to i64
  %1029 = getelementptr inbounds i16, ptr %1026, i64 %1028
  store i16 %1025, ptr %1029, align 2
  %1030 = load i32, ptr %39, align 4
  %1031 = load i32, ptr %39, align 4
  %1032 = add i32 %1030, %1031
  %1033 = add i32 %1032, 1
  store i32 %1033, ptr %39, align 4
  br label %1034

1034:                                             ; preds = %1014, %999
  %1035 = load ptr, ptr %26, align 8
  %1036 = load i32, ptr %39, align 4
  %1037 = zext i32 %1036 to i64
  %1038 = getelementptr inbounds i16, ptr %1035, i64 %1037
  %1039 = load i16, ptr %1038, align 2
  %1040 = zext i16 %1039 to i32
  store i32 %1040, ptr %28, align 4
  %1041 = load i32, ptr %24, align 4
  %1042 = icmp ult i32 %1041, 16777216
  br i1 %1042, label %1043, label %1053

1043:                                             ; preds = %1034
  %1044 = load i32, ptr %24, align 4
  %1045 = shl i32 %1044, 8
  store i32 %1045, ptr %24, align 4
  %1046 = load i32, ptr %25, align 4
  %1047 = shl i32 %1046, 8
  %1048 = load ptr, ptr %23, align 8
  %1049 = getelementptr inbounds i8, ptr %1048, i32 1
  store ptr %1049, ptr %23, align 8
  %1050 = load i8, ptr %1048, align 1
  %1051 = zext i8 %1050 to i32
  %1052 = or i32 %1047, %1051
  store i32 %1052, ptr %25, align 4
  br label %1053

1053:                                             ; preds = %1043, %1034
  %1054 = load i32, ptr %24, align 4
  %1055 = lshr i32 %1054, 11
  %1056 = load i32, ptr %28, align 4
  %1057 = mul i32 %1055, %1056
  store i32 %1057, ptr %27, align 4
  %1058 = load i32, ptr %25, align 4
  %1059 = load i32, ptr %27, align 4
  %1060 = icmp ult i32 %1058, %1059
  br i1 %1060, label %1061, label %1076

1061:                                             ; preds = %1053
  %1062 = load i32, ptr %27, align 4
  store i32 %1062, ptr %24, align 4
  %1063 = load i32, ptr %28, align 4
  %1064 = load i32, ptr %28, align 4
  %1065 = sub i32 2048, %1064
  %1066 = lshr i32 %1065, 5
  %1067 = add i32 %1063, %1066
  %1068 = trunc i32 %1067 to i16
  %1069 = load ptr, ptr %26, align 8
  %1070 = load i32, ptr %39, align 4
  %1071 = zext i32 %1070 to i64
  %1072 = getelementptr inbounds i16, ptr %1069, i64 %1071
  store i16 %1068, ptr %1072, align 2
  %1073 = load i32, ptr %39, align 4
  %1074 = load i32, ptr %39, align 4
  %1075 = add i32 %1073, %1074
  store i32 %1075, ptr %39, align 4
  br label %1096

1076:                                             ; preds = %1053
  %1077 = load i32, ptr %27, align 4
  %1078 = load i32, ptr %24, align 4
  %1079 = sub i32 %1078, %1077
  store i32 %1079, ptr %24, align 4
  %1080 = load i32, ptr %27, align 4
  %1081 = load i32, ptr %25, align 4
  %1082 = sub i32 %1081, %1080
  store i32 %1082, ptr %25, align 4
  %1083 = load i32, ptr %28, align 4
  %1084 = load i32, ptr %28, align 4
  %1085 = lshr i32 %1084, 5
  %1086 = sub i32 %1083, %1085
  %1087 = trunc i32 %1086 to i16
  %1088 = load ptr, ptr %26, align 8
  %1089 = load i32, ptr %39, align 4
  %1090 = zext i32 %1089 to i64
  %1091 = getelementptr inbounds i16, ptr %1088, i64 %1090
  store i16 %1087, ptr %1091, align 2
  %1092 = load i32, ptr %39, align 4
  %1093 = load i32, ptr %39, align 4
  %1094 = add i32 %1092, %1093
  %1095 = add i32 %1094, 1
  store i32 %1095, ptr %39, align 4
  br label %1096

1096:                                             ; preds = %1076, %1061
  %1097 = load ptr, ptr %26, align 8
  %1098 = load i32, ptr %39, align 4
  %1099 = zext i32 %1098 to i64
  %1100 = getelementptr inbounds i16, ptr %1097, i64 %1099
  %1101 = load i16, ptr %1100, align 2
  %1102 = zext i16 %1101 to i32
  store i32 %1102, ptr %28, align 4
  %1103 = load i32, ptr %24, align 4
  %1104 = icmp ult i32 %1103, 16777216
  br i1 %1104, label %1105, label %1115

1105:                                             ; preds = %1096
  %1106 = load i32, ptr %24, align 4
  %1107 = shl i32 %1106, 8
  store i32 %1107, ptr %24, align 4
  %1108 = load i32, ptr %25, align 4
  %1109 = shl i32 %1108, 8
  %1110 = load ptr, ptr %23, align 8
  %1111 = getelementptr inbounds i8, ptr %1110, i32 1
  store ptr %1111, ptr %23, align 8
  %1112 = load i8, ptr %1110, align 1
  %1113 = zext i8 %1112 to i32
  %1114 = or i32 %1109, %1113
  store i32 %1114, ptr %25, align 4
  br label %1115

1115:                                             ; preds = %1105, %1096
  %1116 = load i32, ptr %24, align 4
  %1117 = lshr i32 %1116, 11
  %1118 = load i32, ptr %28, align 4
  %1119 = mul i32 %1117, %1118
  store i32 %1119, ptr %27, align 4
  %1120 = load i32, ptr %25, align 4
  %1121 = load i32, ptr %27, align 4
  %1122 = icmp ult i32 %1120, %1121
  br i1 %1122, label %1123, label %1138

1123:                                             ; preds = %1115
  %1124 = load i32, ptr %27, align 4
  store i32 %1124, ptr %24, align 4
  %1125 = load i32, ptr %28, align 4
  %1126 = load i32, ptr %28, align 4
  %1127 = sub i32 2048, %1126
  %1128 = lshr i32 %1127, 5
  %1129 = add i32 %1125, %1128
  %1130 = trunc i32 %1129 to i16
  %1131 = load ptr, ptr %26, align 8
  %1132 = load i32, ptr %39, align 4
  %1133 = zext i32 %1132 to i64
  %1134 = getelementptr inbounds i16, ptr %1131, i64 %1133
  store i16 %1130, ptr %1134, align 2
  %1135 = load i32, ptr %39, align 4
  %1136 = load i32, ptr %39, align 4
  %1137 = add i32 %1135, %1136
  store i32 %1137, ptr %39, align 4
  br label %1158

1138:                                             ; preds = %1115
  %1139 = load i32, ptr %27, align 4
  %1140 = load i32, ptr %24, align 4
  %1141 = sub i32 %1140, %1139
  store i32 %1141, ptr %24, align 4
  %1142 = load i32, ptr %27, align 4
  %1143 = load i32, ptr %25, align 4
  %1144 = sub i32 %1143, %1142
  store i32 %1144, ptr %25, align 4
  %1145 = load i32, ptr %28, align 4
  %1146 = load i32, ptr %28, align 4
  %1147 = lshr i32 %1146, 5
  %1148 = sub i32 %1145, %1147
  %1149 = trunc i32 %1148 to i16
  %1150 = load ptr, ptr %26, align 8
  %1151 = load i32, ptr %39, align 4
  %1152 = zext i32 %1151 to i64
  %1153 = getelementptr inbounds i16, ptr %1150, i64 %1152
  store i16 %1149, ptr %1153, align 2
  %1154 = load i32, ptr %39, align 4
  %1155 = load i32, ptr %39, align 4
  %1156 = add i32 %1154, %1155
  %1157 = add i32 %1156, 1
  store i32 %1157, ptr %39, align 4
  br label %1158

1158:                                             ; preds = %1138, %1123
  %1159 = load ptr, ptr %26, align 8
  %1160 = load i32, ptr %39, align 4
  %1161 = zext i32 %1160 to i64
  %1162 = getelementptr inbounds i16, ptr %1159, i64 %1161
  %1163 = load i16, ptr %1162, align 2
  %1164 = zext i16 %1163 to i32
  store i32 %1164, ptr %28, align 4
  %1165 = load i32, ptr %24, align 4
  %1166 = icmp ult i32 %1165, 16777216
  br i1 %1166, label %1167, label %1177

1167:                                             ; preds = %1158
  %1168 = load i32, ptr %24, align 4
  %1169 = shl i32 %1168, 8
  store i32 %1169, ptr %24, align 4
  %1170 = load i32, ptr %25, align 4
  %1171 = shl i32 %1170, 8
  %1172 = load ptr, ptr %23, align 8
  %1173 = getelementptr inbounds i8, ptr %1172, i32 1
  store ptr %1173, ptr %23, align 8
  %1174 = load i8, ptr %1172, align 1
  %1175 = zext i8 %1174 to i32
  %1176 = or i32 %1171, %1175
  store i32 %1176, ptr %25, align 4
  br label %1177

1177:                                             ; preds = %1167, %1158
  %1178 = load i32, ptr %24, align 4
  %1179 = lshr i32 %1178, 11
  %1180 = load i32, ptr %28, align 4
  %1181 = mul i32 %1179, %1180
  store i32 %1181, ptr %27, align 4
  %1182 = load i32, ptr %25, align 4
  %1183 = load i32, ptr %27, align 4
  %1184 = icmp ult i32 %1182, %1183
  br i1 %1184, label %1185, label %1200

1185:                                             ; preds = %1177
  %1186 = load i32, ptr %27, align 4
  store i32 %1186, ptr %24, align 4
  %1187 = load i32, ptr %28, align 4
  %1188 = load i32, ptr %28, align 4
  %1189 = sub i32 2048, %1188
  %1190 = lshr i32 %1189, 5
  %1191 = add i32 %1187, %1190
  %1192 = trunc i32 %1191 to i16
  %1193 = load ptr, ptr %26, align 8
  %1194 = load i32, ptr %39, align 4
  %1195 = zext i32 %1194 to i64
  %1196 = getelementptr inbounds i16, ptr %1193, i64 %1195
  store i16 %1192, ptr %1196, align 2
  %1197 = load i32, ptr %39, align 4
  %1198 = load i32, ptr %39, align 4
  %1199 = add i32 %1197, %1198
  store i32 %1199, ptr %39, align 4
  br label %1220

1200:                                             ; preds = %1177
  %1201 = load i32, ptr %27, align 4
  %1202 = load i32, ptr %24, align 4
  %1203 = sub i32 %1202, %1201
  store i32 %1203, ptr %24, align 4
  %1204 = load i32, ptr %27, align 4
  %1205 = load i32, ptr %25, align 4
  %1206 = sub i32 %1205, %1204
  store i32 %1206, ptr %25, align 4
  %1207 = load i32, ptr %28, align 4
  %1208 = load i32, ptr %28, align 4
  %1209 = lshr i32 %1208, 5
  %1210 = sub i32 %1207, %1209
  %1211 = trunc i32 %1210 to i16
  %1212 = load ptr, ptr %26, align 8
  %1213 = load i32, ptr %39, align 4
  %1214 = zext i32 %1213 to i64
  %1215 = getelementptr inbounds i16, ptr %1212, i64 %1214
  store i16 %1211, ptr %1215, align 2
  %1216 = load i32, ptr %39, align 4
  %1217 = load i32, ptr %39, align 4
  %1218 = add i32 %1216, %1217
  %1219 = add i32 %1218, 1
  store i32 %1219, ptr %39, align 4
  br label %1220

1220:                                             ; preds = %1200, %1185
  %1221 = load ptr, ptr %26, align 8
  %1222 = load i32, ptr %39, align 4
  %1223 = zext i32 %1222 to i64
  %1224 = getelementptr inbounds i16, ptr %1221, i64 %1223
  %1225 = load i16, ptr %1224, align 2
  %1226 = zext i16 %1225 to i32
  store i32 %1226, ptr %28, align 4
  %1227 = load i32, ptr %24, align 4
  %1228 = icmp ult i32 %1227, 16777216
  br i1 %1228, label %1229, label %1239

1229:                                             ; preds = %1220
  %1230 = load i32, ptr %24, align 4
  %1231 = shl i32 %1230, 8
  store i32 %1231, ptr %24, align 4
  %1232 = load i32, ptr %25, align 4
  %1233 = shl i32 %1232, 8
  %1234 = load ptr, ptr %23, align 8
  %1235 = getelementptr inbounds i8, ptr %1234, i32 1
  store ptr %1235, ptr %23, align 8
  %1236 = load i8, ptr %1234, align 1
  %1237 = zext i8 %1236 to i32
  %1238 = or i32 %1233, %1237
  store i32 %1238, ptr %25, align 4
  br label %1239

1239:                                             ; preds = %1229, %1220
  %1240 = load i32, ptr %24, align 4
  %1241 = lshr i32 %1240, 11
  %1242 = load i32, ptr %28, align 4
  %1243 = mul i32 %1241, %1242
  store i32 %1243, ptr %27, align 4
  %1244 = load i32, ptr %25, align 4
  %1245 = load i32, ptr %27, align 4
  %1246 = icmp ult i32 %1244, %1245
  br i1 %1246, label %1247, label %1262

1247:                                             ; preds = %1239
  %1248 = load i32, ptr %27, align 4
  store i32 %1248, ptr %24, align 4
  %1249 = load i32, ptr %28, align 4
  %1250 = load i32, ptr %28, align 4
  %1251 = sub i32 2048, %1250
  %1252 = lshr i32 %1251, 5
  %1253 = add i32 %1249, %1252
  %1254 = trunc i32 %1253 to i16
  %1255 = load ptr, ptr %26, align 8
  %1256 = load i32, ptr %39, align 4
  %1257 = zext i32 %1256 to i64
  %1258 = getelementptr inbounds i16, ptr %1255, i64 %1257
  store i16 %1254, ptr %1258, align 2
  %1259 = load i32, ptr %39, align 4
  %1260 = load i32, ptr %39, align 4
  %1261 = add i32 %1259, %1260
  store i32 %1261, ptr %39, align 4
  br label %1282

1262:                                             ; preds = %1239
  %1263 = load i32, ptr %27, align 4
  %1264 = load i32, ptr %24, align 4
  %1265 = sub i32 %1264, %1263
  store i32 %1265, ptr %24, align 4
  %1266 = load i32, ptr %27, align 4
  %1267 = load i32, ptr %25, align 4
  %1268 = sub i32 %1267, %1266
  store i32 %1268, ptr %25, align 4
  %1269 = load i32, ptr %28, align 4
  %1270 = load i32, ptr %28, align 4
  %1271 = lshr i32 %1270, 5
  %1272 = sub i32 %1269, %1271
  %1273 = trunc i32 %1272 to i16
  %1274 = load ptr, ptr %26, align 8
  %1275 = load i32, ptr %39, align 4
  %1276 = zext i32 %1275 to i64
  %1277 = getelementptr inbounds i16, ptr %1274, i64 %1276
  store i16 %1273, ptr %1277, align 2
  %1278 = load i32, ptr %39, align 4
  %1279 = load i32, ptr %39, align 4
  %1280 = add i32 %1278, %1279
  %1281 = add i32 %1280, 1
  store i32 %1281, ptr %39, align 4
  br label %1282

1282:                                             ; preds = %1262, %1247
  %1283 = load i32, ptr %39, align 4
  %1284 = sub i32 %1283, 64
  store i32 %1284, ptr %39, align 4
  %1285 = load i32, ptr %39, align 4
  %1286 = icmp uge i32 %1285, 4
  br i1 %1286, label %1287, label %1693

1287:                                             ; preds = %1282
  %1288 = load i32, ptr %39, align 4
  store i32 %1288, ptr %40, align 4
  %1289 = load i32, ptr %39, align 4
  %1290 = lshr i32 %1289, 1
  %1291 = sub i32 %1290, 1
  store i32 %1291, ptr %41, align 4
  %1292 = load i32, ptr %39, align 4
  %1293 = and i32 %1292, 1
  %1294 = or i32 2, %1293
  store i32 %1294, ptr %39, align 4
  %1295 = load i32, ptr %40, align 4
  %1296 = icmp ult i32 %1295, 14
  br i1 %1296, label %1297, label %1384

1297:                                             ; preds = %1287
  %1298 = load i32, ptr %41, align 4
  %1299 = load i32, ptr %39, align 4
  %1300 = shl i32 %1299, %1298
  store i32 %1300, ptr %39, align 4
  %1301 = load ptr, ptr %8, align 8
  %1302 = getelementptr inbounds i16, ptr %1301, i64 688
  %1303 = load i32, ptr %39, align 4
  %1304 = zext i32 %1303 to i64
  %1305 = getelementptr inbounds i16, ptr %1302, i64 %1304
  %1306 = load i32, ptr %40, align 4
  %1307 = zext i32 %1306 to i64
  %1308 = sub i64 0, %1307
  %1309 = getelementptr inbounds i16, ptr %1305, i64 %1308
  %1310 = getelementptr inbounds i16, ptr %1309, i64 -1
  store ptr %1310, ptr %26, align 8
  store i32 1, ptr %42, align 4
  store i32 1, ptr %43, align 4
  br label %1311

1311:                                             ; preds = %1379, %1297
  %1312 = load ptr, ptr %26, align 8
  %1313 = load i32, ptr %43, align 4
  %1314 = zext i32 %1313 to i64
  %1315 = getelementptr inbounds i16, ptr %1312, i64 %1314
  %1316 = load i16, ptr %1315, align 2
  %1317 = zext i16 %1316 to i32
  store i32 %1317, ptr %28, align 4
  %1318 = load i32, ptr %24, align 4
  %1319 = icmp ult i32 %1318, 16777216
  br i1 %1319, label %1320, label %1330

1320:                                             ; preds = %1311
  %1321 = load i32, ptr %24, align 4
  %1322 = shl i32 %1321, 8
  store i32 %1322, ptr %24, align 4
  %1323 = load i32, ptr %25, align 4
  %1324 = shl i32 %1323, 8
  %1325 = load ptr, ptr %23, align 8
  %1326 = getelementptr inbounds i8, ptr %1325, i32 1
  store ptr %1326, ptr %23, align 8
  %1327 = load i8, ptr %1325, align 1
  %1328 = zext i8 %1327 to i32
  %1329 = or i32 %1324, %1328
  store i32 %1329, ptr %25, align 4
  br label %1330

1330:                                             ; preds = %1320, %1311
  %1331 = load i32, ptr %24, align 4
  %1332 = lshr i32 %1331, 11
  %1333 = load i32, ptr %28, align 4
  %1334 = mul i32 %1332, %1333
  store i32 %1334, ptr %27, align 4
  %1335 = load i32, ptr %25, align 4
  %1336 = load i32, ptr %27, align 4
  %1337 = icmp ult i32 %1335, %1336
  br i1 %1337, label %1338, label %1353

1338:                                             ; preds = %1330
  %1339 = load i32, ptr %27, align 4
  store i32 %1339, ptr %24, align 4
  %1340 = load i32, ptr %28, align 4
  %1341 = load i32, ptr %28, align 4
  %1342 = sub i32 2048, %1341
  %1343 = lshr i32 %1342, 5
  %1344 = add i32 %1340, %1343
  %1345 = trunc i32 %1344 to i16
  %1346 = load ptr, ptr %26, align 8
  %1347 = load i32, ptr %43, align 4
  %1348 = zext i32 %1347 to i64
  %1349 = getelementptr inbounds i16, ptr %1346, i64 %1348
  store i16 %1345, ptr %1349, align 2
  %1350 = load i32, ptr %43, align 4
  %1351 = load i32, ptr %43, align 4
  %1352 = add i32 %1350, %1351
  store i32 %1352, ptr %43, align 4
  br label %1376

1353:                                             ; preds = %1330
  %1354 = load i32, ptr %27, align 4
  %1355 = load i32, ptr %24, align 4
  %1356 = sub i32 %1355, %1354
  store i32 %1356, ptr %24, align 4
  %1357 = load i32, ptr %27, align 4
  %1358 = load i32, ptr %25, align 4
  %1359 = sub i32 %1358, %1357
  store i32 %1359, ptr %25, align 4
  %1360 = load i32, ptr %28, align 4
  %1361 = load i32, ptr %28, align 4
  %1362 = lshr i32 %1361, 5
  %1363 = sub i32 %1360, %1362
  %1364 = trunc i32 %1363 to i16
  %1365 = load ptr, ptr %26, align 8
  %1366 = load i32, ptr %43, align 4
  %1367 = zext i32 %1366 to i64
  %1368 = getelementptr inbounds i16, ptr %1365, i64 %1367
  store i16 %1364, ptr %1368, align 2
  %1369 = load i32, ptr %43, align 4
  %1370 = load i32, ptr %43, align 4
  %1371 = add i32 %1369, %1370
  %1372 = add i32 %1371, 1
  store i32 %1372, ptr %43, align 4
  %1373 = load i32, ptr %42, align 4
  %1374 = load i32, ptr %39, align 4
  %1375 = or i32 %1374, %1373
  store i32 %1375, ptr %39, align 4
  br label %1376

1376:                                             ; preds = %1353, %1338
  %1377 = load i32, ptr %42, align 4
  %1378 = shl i32 %1377, 1
  store i32 %1378, ptr %42, align 4
  br label %1379

1379:                                             ; preds = %1376
  %1380 = load i32, ptr %41, align 4
  %1381 = add nsw i32 %1380, -1
  store i32 %1381, ptr %41, align 4
  %1382 = icmp ne i32 %1381, 0
  br i1 %1382, label %1311, label %1383, !llvm.loop !22

1383:                                             ; preds = %1379
  br label %1692

1384:                                             ; preds = %1287
  %1385 = load i32, ptr %41, align 4
  %1386 = sub nsw i32 %1385, 4
  store i32 %1386, ptr %41, align 4
  br label %1387

1387:                                             ; preds = %1419, %1384
  %1388 = load i32, ptr %24, align 4
  %1389 = icmp ult i32 %1388, 16777216
  br i1 %1389, label %1390, label %1400

1390:                                             ; preds = %1387
  %1391 = load i32, ptr %24, align 4
  %1392 = shl i32 %1391, 8
  store i32 %1392, ptr %24, align 4
  %1393 = load i32, ptr %25, align 4
  %1394 = shl i32 %1393, 8
  %1395 = load ptr, ptr %23, align 8
  %1396 = getelementptr inbounds i8, ptr %1395, i32 1
  store ptr %1396, ptr %23, align 8
  %1397 = load i8, ptr %1395, align 1
  %1398 = zext i8 %1397 to i32
  %1399 = or i32 %1394, %1398
  store i32 %1399, ptr %25, align 4
  br label %1400

1400:                                             ; preds = %1390, %1387
  %1401 = load i32, ptr %24, align 4
  %1402 = lshr i32 %1401, 1
  store i32 %1402, ptr %24, align 4
  %1403 = load i32, ptr %24, align 4
  %1404 = load i32, ptr %25, align 4
  %1405 = sub i32 %1404, %1403
  store i32 %1405, ptr %25, align 4
  %1406 = load i32, ptr %25, align 4
  %1407 = lshr i32 %1406, 31
  %1408 = sub i32 0, %1407
  store i32 %1408, ptr %44, align 4
  %1409 = load i32, ptr %39, align 4
  %1410 = shl i32 %1409, 1
  %1411 = load i32, ptr %44, align 4
  %1412 = add i32 %1411, 1
  %1413 = add i32 %1410, %1412
  store i32 %1413, ptr %39, align 4
  %1414 = load i32, ptr %24, align 4
  %1415 = load i32, ptr %44, align 4
  %1416 = and i32 %1414, %1415
  %1417 = load i32, ptr %25, align 4
  %1418 = add i32 %1417, %1416
  store i32 %1418, ptr %25, align 4
  br label %1419

1419:                                             ; preds = %1400
  %1420 = load i32, ptr %41, align 4
  %1421 = add nsw i32 %1420, -1
  store i32 %1421, ptr %41, align 4
  %1422 = icmp ne i32 %1421, 0
  br i1 %1422, label %1387, label %1423, !llvm.loop !23

1423:                                             ; preds = %1419
  %1424 = load ptr, ptr %8, align 8
  %1425 = getelementptr inbounds i16, ptr %1424, i64 802
  store ptr %1425, ptr %26, align 8
  %1426 = load i32, ptr %39, align 4
  %1427 = shl i32 %1426, 4
  store i32 %1427, ptr %39, align 4
  store i32 1, ptr %45, align 4
  %1428 = load ptr, ptr %26, align 8
  %1429 = load i32, ptr %45, align 4
  %1430 = zext i32 %1429 to i64
  %1431 = getelementptr inbounds i16, ptr %1428, i64 %1430
  %1432 = load i16, ptr %1431, align 2
  %1433 = zext i16 %1432 to i32
  store i32 %1433, ptr %28, align 4
  %1434 = load i32, ptr %24, align 4
  %1435 = icmp ult i32 %1434, 16777216
  br i1 %1435, label %1436, label %1446

1436:                                             ; preds = %1423
  %1437 = load i32, ptr %24, align 4
  %1438 = shl i32 %1437, 8
  store i32 %1438, ptr %24, align 4
  %1439 = load i32, ptr %25, align 4
  %1440 = shl i32 %1439, 8
  %1441 = load ptr, ptr %23, align 8
  %1442 = getelementptr inbounds i8, ptr %1441, i32 1
  store ptr %1442, ptr %23, align 8
  %1443 = load i8, ptr %1441, align 1
  %1444 = zext i8 %1443 to i32
  %1445 = or i32 %1440, %1444
  store i32 %1445, ptr %25, align 4
  br label %1446

1446:                                             ; preds = %1436, %1423
  %1447 = load i32, ptr %24, align 4
  %1448 = lshr i32 %1447, 11
  %1449 = load i32, ptr %28, align 4
  %1450 = mul i32 %1448, %1449
  store i32 %1450, ptr %27, align 4
  %1451 = load i32, ptr %25, align 4
  %1452 = load i32, ptr %27, align 4
  %1453 = icmp ult i32 %1451, %1452
  br i1 %1453, label %1454, label %1469

1454:                                             ; preds = %1446
  %1455 = load i32, ptr %27, align 4
  store i32 %1455, ptr %24, align 4
  %1456 = load i32, ptr %28, align 4
  %1457 = load i32, ptr %28, align 4
  %1458 = sub i32 2048, %1457
  %1459 = lshr i32 %1458, 5
  %1460 = add i32 %1456, %1459
  %1461 = trunc i32 %1460 to i16
  %1462 = load ptr, ptr %26, align 8
  %1463 = load i32, ptr %45, align 4
  %1464 = zext i32 %1463 to i64
  %1465 = getelementptr inbounds i16, ptr %1462, i64 %1464
  store i16 %1461, ptr %1465, align 2
  %1466 = load i32, ptr %45, align 4
  %1467 = load i32, ptr %45, align 4
  %1468 = add i32 %1466, %1467
  store i32 %1468, ptr %45, align 4
  br label %1491

1469:                                             ; preds = %1446
  %1470 = load i32, ptr %27, align 4
  %1471 = load i32, ptr %24, align 4
  %1472 = sub i32 %1471, %1470
  store i32 %1472, ptr %24, align 4
  %1473 = load i32, ptr %27, align 4
  %1474 = load i32, ptr %25, align 4
  %1475 = sub i32 %1474, %1473
  store i32 %1475, ptr %25, align 4
  %1476 = load i32, ptr %28, align 4
  %1477 = load i32, ptr %28, align 4
  %1478 = lshr i32 %1477, 5
  %1479 = sub i32 %1476, %1478
  %1480 = trunc i32 %1479 to i16
  %1481 = load ptr, ptr %26, align 8
  %1482 = load i32, ptr %45, align 4
  %1483 = zext i32 %1482 to i64
  %1484 = getelementptr inbounds i16, ptr %1481, i64 %1483
  store i16 %1480, ptr %1484, align 2
  %1485 = load i32, ptr %45, align 4
  %1486 = load i32, ptr %45, align 4
  %1487 = add i32 %1485, %1486
  %1488 = add i32 %1487, 1
  store i32 %1488, ptr %45, align 4
  %1489 = load i32, ptr %39, align 4
  %1490 = or i32 %1489, 1
  store i32 %1490, ptr %39, align 4
  br label %1491

1491:                                             ; preds = %1469, %1454
  %1492 = load ptr, ptr %26, align 8
  %1493 = load i32, ptr %45, align 4
  %1494 = zext i32 %1493 to i64
  %1495 = getelementptr inbounds i16, ptr %1492, i64 %1494
  %1496 = load i16, ptr %1495, align 2
  %1497 = zext i16 %1496 to i32
  store i32 %1497, ptr %28, align 4
  %1498 = load i32, ptr %24, align 4
  %1499 = icmp ult i32 %1498, 16777216
  br i1 %1499, label %1500, label %1510

1500:                                             ; preds = %1491
  %1501 = load i32, ptr %24, align 4
  %1502 = shl i32 %1501, 8
  store i32 %1502, ptr %24, align 4
  %1503 = load i32, ptr %25, align 4
  %1504 = shl i32 %1503, 8
  %1505 = load ptr, ptr %23, align 8
  %1506 = getelementptr inbounds i8, ptr %1505, i32 1
  store ptr %1506, ptr %23, align 8
  %1507 = load i8, ptr %1505, align 1
  %1508 = zext i8 %1507 to i32
  %1509 = or i32 %1504, %1508
  store i32 %1509, ptr %25, align 4
  br label %1510

1510:                                             ; preds = %1500, %1491
  %1511 = load i32, ptr %24, align 4
  %1512 = lshr i32 %1511, 11
  %1513 = load i32, ptr %28, align 4
  %1514 = mul i32 %1512, %1513
  store i32 %1514, ptr %27, align 4
  %1515 = load i32, ptr %25, align 4
  %1516 = load i32, ptr %27, align 4
  %1517 = icmp ult i32 %1515, %1516
  br i1 %1517, label %1518, label %1533

1518:                                             ; preds = %1510
  %1519 = load i32, ptr %27, align 4
  store i32 %1519, ptr %24, align 4
  %1520 = load i32, ptr %28, align 4
  %1521 = load i32, ptr %28, align 4
  %1522 = sub i32 2048, %1521
  %1523 = lshr i32 %1522, 5
  %1524 = add i32 %1520, %1523
  %1525 = trunc i32 %1524 to i16
  %1526 = load ptr, ptr %26, align 8
  %1527 = load i32, ptr %45, align 4
  %1528 = zext i32 %1527 to i64
  %1529 = getelementptr inbounds i16, ptr %1526, i64 %1528
  store i16 %1525, ptr %1529, align 2
  %1530 = load i32, ptr %45, align 4
  %1531 = load i32, ptr %45, align 4
  %1532 = add i32 %1530, %1531
  store i32 %1532, ptr %45, align 4
  br label %1555

1533:                                             ; preds = %1510
  %1534 = load i32, ptr %27, align 4
  %1535 = load i32, ptr %24, align 4
  %1536 = sub i32 %1535, %1534
  store i32 %1536, ptr %24, align 4
  %1537 = load i32, ptr %27, align 4
  %1538 = load i32, ptr %25, align 4
  %1539 = sub i32 %1538, %1537
  store i32 %1539, ptr %25, align 4
  %1540 = load i32, ptr %28, align 4
  %1541 = load i32, ptr %28, align 4
  %1542 = lshr i32 %1541, 5
  %1543 = sub i32 %1540, %1542
  %1544 = trunc i32 %1543 to i16
  %1545 = load ptr, ptr %26, align 8
  %1546 = load i32, ptr %45, align 4
  %1547 = zext i32 %1546 to i64
  %1548 = getelementptr inbounds i16, ptr %1545, i64 %1547
  store i16 %1544, ptr %1548, align 2
  %1549 = load i32, ptr %45, align 4
  %1550 = load i32, ptr %45, align 4
  %1551 = add i32 %1549, %1550
  %1552 = add i32 %1551, 1
  store i32 %1552, ptr %45, align 4
  %1553 = load i32, ptr %39, align 4
  %1554 = or i32 %1553, 2
  store i32 %1554, ptr %39, align 4
  br label %1555

1555:                                             ; preds = %1533, %1518
  %1556 = load ptr, ptr %26, align 8
  %1557 = load i32, ptr %45, align 4
  %1558 = zext i32 %1557 to i64
  %1559 = getelementptr inbounds i16, ptr %1556, i64 %1558
  %1560 = load i16, ptr %1559, align 2
  %1561 = zext i16 %1560 to i32
  store i32 %1561, ptr %28, align 4
  %1562 = load i32, ptr %24, align 4
  %1563 = icmp ult i32 %1562, 16777216
  br i1 %1563, label %1564, label %1574

1564:                                             ; preds = %1555
  %1565 = load i32, ptr %24, align 4
  %1566 = shl i32 %1565, 8
  store i32 %1566, ptr %24, align 4
  %1567 = load i32, ptr %25, align 4
  %1568 = shl i32 %1567, 8
  %1569 = load ptr, ptr %23, align 8
  %1570 = getelementptr inbounds i8, ptr %1569, i32 1
  store ptr %1570, ptr %23, align 8
  %1571 = load i8, ptr %1569, align 1
  %1572 = zext i8 %1571 to i32
  %1573 = or i32 %1568, %1572
  store i32 %1573, ptr %25, align 4
  br label %1574

1574:                                             ; preds = %1564, %1555
  %1575 = load i32, ptr %24, align 4
  %1576 = lshr i32 %1575, 11
  %1577 = load i32, ptr %28, align 4
  %1578 = mul i32 %1576, %1577
  store i32 %1578, ptr %27, align 4
  %1579 = load i32, ptr %25, align 4
  %1580 = load i32, ptr %27, align 4
  %1581 = icmp ult i32 %1579, %1580
  br i1 %1581, label %1582, label %1597

1582:                                             ; preds = %1574
  %1583 = load i32, ptr %27, align 4
  store i32 %1583, ptr %24, align 4
  %1584 = load i32, ptr %28, align 4
  %1585 = load i32, ptr %28, align 4
  %1586 = sub i32 2048, %1585
  %1587 = lshr i32 %1586, 5
  %1588 = add i32 %1584, %1587
  %1589 = trunc i32 %1588 to i16
  %1590 = load ptr, ptr %26, align 8
  %1591 = load i32, ptr %45, align 4
  %1592 = zext i32 %1591 to i64
  %1593 = getelementptr inbounds i16, ptr %1590, i64 %1592
  store i16 %1589, ptr %1593, align 2
  %1594 = load i32, ptr %45, align 4
  %1595 = load i32, ptr %45, align 4
  %1596 = add i32 %1594, %1595
  store i32 %1596, ptr %45, align 4
  br label %1619

1597:                                             ; preds = %1574
  %1598 = load i32, ptr %27, align 4
  %1599 = load i32, ptr %24, align 4
  %1600 = sub i32 %1599, %1598
  store i32 %1600, ptr %24, align 4
  %1601 = load i32, ptr %27, align 4
  %1602 = load i32, ptr %25, align 4
  %1603 = sub i32 %1602, %1601
  store i32 %1603, ptr %25, align 4
  %1604 = load i32, ptr %28, align 4
  %1605 = load i32, ptr %28, align 4
  %1606 = lshr i32 %1605, 5
  %1607 = sub i32 %1604, %1606
  %1608 = trunc i32 %1607 to i16
  %1609 = load ptr, ptr %26, align 8
  %1610 = load i32, ptr %45, align 4
  %1611 = zext i32 %1610 to i64
  %1612 = getelementptr inbounds i16, ptr %1609, i64 %1611
  store i16 %1608, ptr %1612, align 2
  %1613 = load i32, ptr %45, align 4
  %1614 = load i32, ptr %45, align 4
  %1615 = add i32 %1613, %1614
  %1616 = add i32 %1615, 1
  store i32 %1616, ptr %45, align 4
  %1617 = load i32, ptr %39, align 4
  %1618 = or i32 %1617, 4
  store i32 %1618, ptr %39, align 4
  br label %1619

1619:                                             ; preds = %1597, %1582
  %1620 = load ptr, ptr %26, align 8
  %1621 = load i32, ptr %45, align 4
  %1622 = zext i32 %1621 to i64
  %1623 = getelementptr inbounds i16, ptr %1620, i64 %1622
  %1624 = load i16, ptr %1623, align 2
  %1625 = zext i16 %1624 to i32
  store i32 %1625, ptr %28, align 4
  %1626 = load i32, ptr %24, align 4
  %1627 = icmp ult i32 %1626, 16777216
  br i1 %1627, label %1628, label %1638

1628:                                             ; preds = %1619
  %1629 = load i32, ptr %24, align 4
  %1630 = shl i32 %1629, 8
  store i32 %1630, ptr %24, align 4
  %1631 = load i32, ptr %25, align 4
  %1632 = shl i32 %1631, 8
  %1633 = load ptr, ptr %23, align 8
  %1634 = getelementptr inbounds i8, ptr %1633, i32 1
  store ptr %1634, ptr %23, align 8
  %1635 = load i8, ptr %1633, align 1
  %1636 = zext i8 %1635 to i32
  %1637 = or i32 %1632, %1636
  store i32 %1637, ptr %25, align 4
  br label %1638

1638:                                             ; preds = %1628, %1619
  %1639 = load i32, ptr %24, align 4
  %1640 = lshr i32 %1639, 11
  %1641 = load i32, ptr %28, align 4
  %1642 = mul i32 %1640, %1641
  store i32 %1642, ptr %27, align 4
  %1643 = load i32, ptr %25, align 4
  %1644 = load i32, ptr %27, align 4
  %1645 = icmp ult i32 %1643, %1644
  br i1 %1645, label %1646, label %1661

1646:                                             ; preds = %1638
  %1647 = load i32, ptr %27, align 4
  store i32 %1647, ptr %24, align 4
  %1648 = load i32, ptr %28, align 4
  %1649 = load i32, ptr %28, align 4
  %1650 = sub i32 2048, %1649
  %1651 = lshr i32 %1650, 5
  %1652 = add i32 %1648, %1651
  %1653 = trunc i32 %1652 to i16
  %1654 = load ptr, ptr %26, align 8
  %1655 = load i32, ptr %45, align 4
  %1656 = zext i32 %1655 to i64
  %1657 = getelementptr inbounds i16, ptr %1654, i64 %1656
  store i16 %1653, ptr %1657, align 2
  %1658 = load i32, ptr %45, align 4
  %1659 = load i32, ptr %45, align 4
  %1660 = add i32 %1658, %1659
  store i32 %1660, ptr %45, align 4
  br label %1683

1661:                                             ; preds = %1638
  %1662 = load i32, ptr %27, align 4
  %1663 = load i32, ptr %24, align 4
  %1664 = sub i32 %1663, %1662
  store i32 %1664, ptr %24, align 4
  %1665 = load i32, ptr %27, align 4
  %1666 = load i32, ptr %25, align 4
  %1667 = sub i32 %1666, %1665
  store i32 %1667, ptr %25, align 4
  %1668 = load i32, ptr %28, align 4
  %1669 = load i32, ptr %28, align 4
  %1670 = lshr i32 %1669, 5
  %1671 = sub i32 %1668, %1670
  %1672 = trunc i32 %1671 to i16
  %1673 = load ptr, ptr %26, align 8
  %1674 = load i32, ptr %45, align 4
  %1675 = zext i32 %1674 to i64
  %1676 = getelementptr inbounds i16, ptr %1673, i64 %1675
  store i16 %1672, ptr %1676, align 2
  %1677 = load i32, ptr %45, align 4
  %1678 = load i32, ptr %45, align 4
  %1679 = add i32 %1677, %1678
  %1680 = add i32 %1679, 1
  store i32 %1680, ptr %45, align 4
  %1681 = load i32, ptr %39, align 4
  %1682 = or i32 %1681, 8
  store i32 %1682, ptr %39, align 4
  br label %1683

1683:                                             ; preds = %1661, %1646
  %1684 = load i32, ptr %39, align 4
  %1685 = icmp eq i32 %1684, -1
  br i1 %1685, label %1686, label %1691

1686:                                             ; preds = %1683
  %1687 = load i32, ptr %22, align 4
  %1688 = add i32 %1687, 274
  store i32 %1688, ptr %22, align 4
  %1689 = load i32, ptr %9, align 4
  %1690 = sub i32 %1689, 12
  store i32 %1690, ptr %9, align 4
  br label %1826

1691:                                             ; preds = %1683
  br label %1692

1692:                                             ; preds = %1691, %1383
  br label %1693

1693:                                             ; preds = %1692, %1282
  %1694 = load i32, ptr %12, align 4
  store i32 %1694, ptr %13, align 4
  %1695 = load i32, ptr %11, align 4
  store i32 %1695, ptr %12, align 4
  %1696 = load i32, ptr %10, align 4
  store i32 %1696, ptr %11, align 4
  %1697 = load i32, ptr %39, align 4
  %1698 = add i32 %1697, 1
  store i32 %1698, ptr %10, align 4
  %1699 = load i32, ptr %21, align 4
  %1700 = icmp eq i32 %1699, 0
  br i1 %1700, label %1701, label %1707

1701:                                             ; preds = %1693
  %1702 = load i32, ptr %39, align 4
  %1703 = load i32, ptr %20, align 4
  %1704 = icmp uge i32 %1702, %1703
  br i1 %1704, label %1705, label %1706

1705:                                             ; preds = %1701
  store i32 1, ptr %4, align 4
  br label %1877

1706:                                             ; preds = %1701
  br label %1713

1707:                                             ; preds = %1693
  %1708 = load i32, ptr %39, align 4
  %1709 = load i32, ptr %21, align 4
  %1710 = icmp uge i32 %1708, %1709
  br i1 %1710, label %1711, label %1712

1711:                                             ; preds = %1707
  store i32 1, ptr %4, align 4
  br label %1877

1712:                                             ; preds = %1707
  br label %1713

1713:                                             ; preds = %1712, %1706
  %1714 = load i32, ptr %9, align 4
  %1715 = icmp ult i32 %1714, 19
  %1716 = zext i1 %1715 to i64
  %1717 = select i1 %1715, i32 7, i32 10
  store i32 %1717, ptr %9, align 4
  br label %1718

1718:                                             ; preds = %1713, %889
  %1719 = load i32, ptr %22, align 4
  %1720 = add i32 %1719, 2
  store i32 %1720, ptr %22, align 4
  %1721 = load i64, ptr %6, align 8
  %1722 = load i64, ptr %19, align 8
  %1723 = icmp eq i64 %1721, %1722
  br i1 %1723, label %1724, label %1725

1724:                                             ; preds = %1718
  store i32 1, ptr %4, align 4
  br label %1877

1725:                                             ; preds = %1718
  %1726 = load i64, ptr %6, align 8
  %1727 = load i64, ptr %19, align 8
  %1728 = sub i64 %1726, %1727
  store i64 %1728, ptr %46, align 8
  %1729 = load i64, ptr %46, align 8
  %1730 = load i32, ptr %22, align 4
  %1731 = zext i32 %1730 to i64
  %1732 = icmp ult i64 %1729, %1731
  br i1 %1732, label %1733, label %1736

1733:                                             ; preds = %1725
  %1734 = load i64, ptr %46, align 8
  %1735 = trunc i64 %1734 to i32
  br label %1738

1736:                                             ; preds = %1725
  %1737 = load i32, ptr %22, align 4
  br label %1738

1738:                                             ; preds = %1736, %1733
  %1739 = phi i32 [ %1735, %1733 ], [ %1737, %1736 ]
  store i32 %1739, ptr %47, align 4
  %1740 = load i64, ptr %19, align 8
  %1741 = load i32, ptr %10, align 4
  %1742 = zext i32 %1741 to i64
  %1743 = sub i64 %1740, %1742
  %1744 = load i64, ptr %19, align 8
  %1745 = load i32, ptr %10, align 4
  %1746 = zext i32 %1745 to i64
  %1747 = icmp ult i64 %1744, %1746
  br i1 %1747, label %1748, label %1750

1748:                                             ; preds = %1738
  %1749 = load i64, ptr %18, align 8
  br label %1751

1750:                                             ; preds = %1738
  br label %1751

1751:                                             ; preds = %1750, %1748
  %1752 = phi i64 [ %1749, %1748 ], [ 0, %1750 ]
  %1753 = add i64 %1743, %1752
  store i64 %1753, ptr %48, align 8
  %1754 = load i32, ptr %47, align 4
  %1755 = load i32, ptr %20, align 4
  %1756 = add i32 %1755, %1754
  store i32 %1756, ptr %20, align 4
  %1757 = load i32, ptr %47, align 4
  %1758 = load i32, ptr %22, align 4
  %1759 = sub i32 %1758, %1757
  store i32 %1759, ptr %22, align 4
  %1760 = load i64, ptr %48, align 8
  %1761 = load i32, ptr %47, align 4
  %1762 = zext i32 %1761 to i64
  %1763 = add i64 %1760, %1762
  %1764 = load i64, ptr %18, align 8
  %1765 = icmp ule i64 %1763, %1764
  br i1 %1765, label %1766, label %1793

1766:                                             ; preds = %1751
  %1767 = load ptr, ptr %17, align 8
  %1768 = load i64, ptr %19, align 8
  %1769 = getelementptr inbounds i8, ptr %1767, i64 %1768
  store ptr %1769, ptr %49, align 8
  %1770 = load i64, ptr %48, align 8
  %1771 = load i64, ptr %19, align 8
  %1772 = sub nsw i64 %1770, %1771
  store i64 %1772, ptr %50, align 8
  %1773 = load ptr, ptr %49, align 8
  %1774 = load i32, ptr %47, align 4
  %1775 = zext i32 %1774 to i64
  %1776 = getelementptr inbounds i8, ptr %1773, i64 %1775
  store ptr %1776, ptr %51, align 8
  %1777 = load i32, ptr %47, align 4
  %1778 = zext i32 %1777 to i64
  %1779 = load i64, ptr %19, align 8
  %1780 = add i64 %1779, %1778
  store i64 %1780, ptr %19, align 8
  br label %1781

1781:                                             ; preds = %1787, %1766
  %1782 = load ptr, ptr %49, align 8
  %1783 = load i64, ptr %50, align 8
  %1784 = getelementptr inbounds i8, ptr %1782, i64 %1783
  %1785 = load i8, ptr %1784, align 1
  %1786 = load ptr, ptr %49, align 8
  store i8 %1785, ptr %1786, align 1
  br label %1787

1787:                                             ; preds = %1781
  %1788 = load ptr, ptr %49, align 8
  %1789 = getelementptr inbounds i8, ptr %1788, i32 1
  store ptr %1789, ptr %49, align 8
  %1790 = load ptr, ptr %51, align 8
  %1791 = icmp ne ptr %1789, %1790
  br i1 %1791, label %1781, label %1792, !llvm.loop !24

1792:                                             ; preds = %1787
  br label %1814

1793:                                             ; preds = %1751
  br label %1794

1794:                                             ; preds = %1809, %1793
  %1795 = load ptr, ptr %17, align 8
  %1796 = load i64, ptr %48, align 8
  %1797 = getelementptr inbounds i8, ptr %1795, i64 %1796
  %1798 = load i8, ptr %1797, align 1
  %1799 = load ptr, ptr %17, align 8
  %1800 = load i64, ptr %19, align 8
  %1801 = add i64 %1800, 1
  store i64 %1801, ptr %19, align 8
  %1802 = getelementptr inbounds i8, ptr %1799, i64 %1800
  store i8 %1798, ptr %1802, align 1
  %1803 = load i64, ptr %48, align 8
  %1804 = add i64 %1803, 1
  store i64 %1804, ptr %48, align 8
  %1805 = load i64, ptr %18, align 8
  %1806 = icmp eq i64 %1804, %1805
  br i1 %1806, label %1807, label %1808

1807:                                             ; preds = %1794
  store i64 0, ptr %48, align 8
  br label %1808

1808:                                             ; preds = %1807, %1794
  br label %1809

1809:                                             ; preds = %1808
  %1810 = load i32, ptr %47, align 4
  %1811 = add i32 %1810, -1
  store i32 %1811, ptr %47, align 4
  %1812 = icmp ne i32 %1811, 0
  br i1 %1812, label %1794, label %1813, !llvm.loop !25

1813:                                             ; preds = %1809
  br label %1814

1814:                                             ; preds = %1813, %1792
  br label %1815

1815:                                             ; preds = %1814
  br label %1816

1816:                                             ; preds = %1815, %553, %380
  %1817 = load i64, ptr %19, align 8
  %1818 = load i64, ptr %6, align 8
  %1819 = icmp ult i64 %1817, %1818
  br i1 %1819, label %1820, label %1824

1820:                                             ; preds = %1816
  %1821 = load ptr, ptr %23, align 8
  %1822 = load ptr, ptr %7, align 8
  %1823 = icmp ult ptr %1821, %1822
  br label %1824

1824:                                             ; preds = %1820, %1816
  %1825 = phi i1 [ false, %1816 ], [ %1823, %1820 ]
  br i1 %1825, label %114, label %1826, !llvm.loop !26

1826:                                             ; preds = %1824, %1686
  %1827 = load i32, ptr %24, align 4
  %1828 = icmp ult i32 %1827, 16777216
  br i1 %1828, label %1829, label %1839

1829:                                             ; preds = %1826
  %1830 = load i32, ptr %24, align 4
  %1831 = shl i32 %1830, 8
  store i32 %1831, ptr %24, align 4
  %1832 = load i32, ptr %25, align 4
  %1833 = shl i32 %1832, 8
  %1834 = load ptr, ptr %23, align 8
  %1835 = getelementptr inbounds i8, ptr %1834, i32 1
  store ptr %1835, ptr %23, align 8
  %1836 = load i8, ptr %1834, align 1
  %1837 = zext i8 %1836 to i32
  %1838 = or i32 %1833, %1837
  store i32 %1838, ptr %25, align 4
  br label %1839

1839:                                             ; preds = %1829, %1826
  %1840 = load ptr, ptr %23, align 8
  %1841 = load ptr, ptr %5, align 8
  %1842 = getelementptr inbounds %struct.CLzmaDec, ptr %1841, i32 0, i32 3
  store ptr %1840, ptr %1842, align 8
  %1843 = load i32, ptr %24, align 4
  %1844 = load ptr, ptr %5, align 8
  %1845 = getelementptr inbounds %struct.CLzmaDec, ptr %1844, i32 0, i32 4
  store i32 %1843, ptr %1845, align 8
  %1846 = load i32, ptr %25, align 4
  %1847 = load ptr, ptr %5, align 8
  %1848 = getelementptr inbounds %struct.CLzmaDec, ptr %1847, i32 0, i32 5
  store i32 %1846, ptr %1848, align 4
  %1849 = load i32, ptr %22, align 4
  %1850 = load ptr, ptr %5, align 8
  %1851 = getelementptr inbounds %struct.CLzmaDec, ptr %1850, i32 0, i32 12
  store i32 %1849, ptr %1851, align 4
  %1852 = load i64, ptr %19, align 8
  %1853 = load ptr, ptr %5, align 8
  %1854 = getelementptr inbounds %struct.CLzmaDec, ptr %1853, i32 0, i32 6
  store i64 %1852, ptr %1854, align 8
  %1855 = load i32, ptr %20, align 4
  %1856 = load ptr, ptr %5, align 8
  %1857 = getelementptr inbounds %struct.CLzmaDec, ptr %1856, i32 0, i32 8
  store i32 %1855, ptr %1857, align 8
  %1858 = load i32, ptr %10, align 4
  %1859 = load ptr, ptr %5, align 8
  %1860 = getelementptr inbounds %struct.CLzmaDec, ptr %1859, i32 0, i32 11
  %1861 = getelementptr inbounds [4 x i32], ptr %1860, i64 0, i64 0
  store i32 %1858, ptr %1861, align 4
  %1862 = load i32, ptr %11, align 4
  %1863 = load ptr, ptr %5, align 8
  %1864 = getelementptr inbounds %struct.CLzmaDec, ptr %1863, i32 0, i32 11
  %1865 = getelementptr inbounds [4 x i32], ptr %1864, i64 0, i64 1
  store i32 %1862, ptr %1865, align 4
  %1866 = load i32, ptr %12, align 4
  %1867 = load ptr, ptr %5, align 8
  %1868 = getelementptr inbounds %struct.CLzmaDec, ptr %1867, i32 0, i32 11
  %1869 = getelementptr inbounds [4 x i32], ptr %1868, i64 0, i64 2
  store i32 %1866, ptr %1869, align 4
  %1870 = load i32, ptr %13, align 4
  %1871 = load ptr, ptr %5, align 8
  %1872 = getelementptr inbounds %struct.CLzmaDec, ptr %1871, i32 0, i32 11
  %1873 = getelementptr inbounds [4 x i32], ptr %1872, i64 0, i64 3
  store i32 %1870, ptr %1873, align 4
  %1874 = load i32, ptr %9, align 4
  %1875 = load ptr, ptr %5, align 8
  %1876 = getelementptr inbounds %struct.CLzmaDec, ptr %1875, i32 0, i32 10
  store i32 %1874, ptr %1876, align 8
  store i32 0, ptr %4, align 4
  br label %1877

1877:                                             ; preds = %1839, %1724, %1711, %1705, %461
  %1878 = load i32, ptr %4, align 4
  ret i32 %1878
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
