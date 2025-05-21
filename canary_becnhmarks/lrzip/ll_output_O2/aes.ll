; ModuleID = './aes.c'
source_filename = "./aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_context = type { i32, ptr, [68 x i64] }

@aes_init_done = internal unnamed_addr global i1 false, align 4
@RCON = internal unnamed_addr global [10 x i64] zeroinitializer, align 16
@FSb = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@RT0 = internal unnamed_addr global [256 x i64] zeroinitializer, align 16
@RT1 = internal unnamed_addr global [256 x i64] zeroinitializer, align 16
@RT2 = internal unnamed_addr global [256 x i64] zeroinitializer, align 16
@RT3 = internal unnamed_addr global [256 x i64] zeroinitializer, align 16
@RSb = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@FT0 = internal unnamed_addr global [256 x i64] zeroinitializer, align 16
@FT1 = internal unnamed_addr global [256 x i64] zeroinitializer, align 16
@FT2 = internal unnamed_addr global [256 x i64] zeroinitializer, align 16
@FT3 = internal unnamed_addr global [256 x i64] zeroinitializer, align 16

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @aes_setkey_enc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i32], align 16
  %5 = alloca [256 x i32], align 16
  %6 = load i1, ptr @aes_init_done, align 4
  br i1 %6, label %175, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #4
  br label %8

8:                                                ; preds = %8, %7
  %9 = phi i64 [ 0, %7 ], [ %32, %8 ]
  %10 = phi i32 [ 1, %7 ], [ %31, %8 ]
  %11 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %9
  store i32 %10, ptr %11, align 8, !tbaa !5
  %12 = zext i32 %10 to i64
  %13 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %12
  %14 = trunc i64 %9 to i32
  store i32 %14, ptr %13, align 4, !tbaa !5
  %15 = shl nuw nsw i32 %10, 1
  %16 = icmp ult i32 %10, 128
  %17 = select i1 %16, i32 0, i32 27
  %18 = and i32 %15, 254
  %19 = xor i32 %18, %17
  %20 = xor i32 %19, %10
  %21 = or i64 %9, 1
  %22 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %21
  store i32 %20, ptr %22, align 4, !tbaa !5
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %23
  %25 = trunc i64 %21 to i32
  store i32 %25, ptr %24, align 4, !tbaa !5
  %26 = shl nuw nsw i32 %20, 1
  %27 = icmp ult i32 %20, 128
  %28 = select i1 %27, i32 0, i32 27
  %29 = and i32 %26, 254
  %30 = xor i32 %29, %28
  %31 = xor i32 %30, %20
  %32 = add nuw nsw i64 %9, 2
  %33 = icmp eq i64 %32, 256
  br i1 %33, label %34, label %8, !llvm.loop !9

34:                                               ; preds = %8
  store i64 1, ptr @RCON, align 16, !tbaa !11
  store i64 2, ptr getelementptr inbounds ([10 x i64], ptr @RCON, i64 0, i64 1), align 8, !tbaa !11
  store i64 4, ptr getelementptr inbounds ([10 x i64], ptr @RCON, i64 0, i64 2), align 16, !tbaa !11
  store i64 8, ptr getelementptr inbounds ([10 x i64], ptr @RCON, i64 0, i64 3), align 8, !tbaa !11
  store i64 16, ptr getelementptr inbounds ([10 x i64], ptr @RCON, i64 0, i64 4), align 16, !tbaa !11
  store i64 32, ptr getelementptr inbounds ([10 x i64], ptr @RCON, i64 0, i64 5), align 8, !tbaa !11
  store i64 64, ptr getelementptr inbounds ([10 x i64], ptr @RCON, i64 0, i64 6), align 16, !tbaa !11
  store i64 128, ptr getelementptr inbounds ([10 x i64], ptr @RCON, i64 0, i64 7), align 8, !tbaa !11
  store i64 27, ptr getelementptr inbounds ([10 x i64], ptr @RCON, i64 0, i64 8), align 16, !tbaa !11
  store i64 54, ptr getelementptr inbounds ([10 x i64], ptr @RCON, i64 0, i64 9), align 8, !tbaa !11
  store i8 99, ptr @FSb, align 16, !tbaa !13
  store i8 0, ptr getelementptr inbounds ([256 x i8], ptr @RSb, i64 0, i64 99), align 1, !tbaa !13
  br label %44

35:                                               ; preds = %44
  %36 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 14
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 9
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 13
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 11
  %43 = load i32, ptr %42, align 4
  br label %80

44:                                               ; preds = %44, %34
  %45 = phi i64 [ 1, %34 ], [ %78, %44 ]
  %46 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !5
  %48 = sub nsw i32 255, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !5
  %52 = shl i32 %51, 1
  %53 = lshr i32 %51, 7
  %54 = or i32 %52, %53
  %55 = and i32 %54, 255
  %56 = shl nuw nsw i32 %55, 1
  %57 = lshr i32 %55, 7
  %58 = and i32 %56, 254
  %59 = or i32 %58, %57
  %60 = shl nuw nsw i32 %59, 1
  %61 = lshr i32 %58, 7
  %62 = and i32 %60, 254
  %63 = or i32 %62, %61
  %64 = shl nuw nsw i32 %63, 1
  %65 = lshr i32 %62, 7
  %66 = and i32 %64, 254
  %67 = or i32 %66, %65
  %68 = xor i32 %55, %67
  %69 = xor i32 %68, %51
  %70 = xor i32 %69, %59
  %71 = xor i32 %70, %63
  %72 = xor i32 %71, 99
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %45
  store i8 %73, ptr %74, align 1, !tbaa !13
  %75 = trunc i64 %45 to i8
  %76 = sext i32 %72 to i64
  %77 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %76
  store i8 %75, ptr %77, align 1, !tbaa !13
  %78 = add nuw nsw i64 %45, 1
  %79 = icmp eq i64 %78, 256
  br i1 %79, label %35, label %44, !llvm.loop !14

80:                                               ; preds = %150, %35
  %81 = phi i64 [ 0, %35 ], [ %172, %150 ]
  %82 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !13
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 1
  %86 = icmp sgt i8 %83, -1
  %87 = select i1 %86, i32 0, i32 27
  %88 = and i32 %85, 254
  %89 = xor i32 %88, %87
  %90 = xor i32 %89, %84
  %91 = zext i32 %89 to i64
  %92 = zext i8 %83 to i64
  %93 = shl nuw nsw i64 %92, 8
  %94 = or i64 %93, %91
  %95 = shl nuw nsw i64 %92, 16
  %96 = or i64 %94, %95
  %97 = shl nuw i32 %90, 24
  %98 = zext i32 %97 to i64
  %99 = or i64 %96, %98
  %100 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %81
  store i64 %99, ptr %100, align 8, !tbaa !11
  %101 = shl nuw nsw i64 %96, 8
  %102 = and i64 %101, 4294967040
  %103 = lshr i64 %99, 24
  %104 = or i64 %102, %103
  %105 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %81
  store i64 %104, ptr %105, align 8, !tbaa !11
  %106 = shl nuw nsw i64 %104, 8
  %107 = and i64 %106, 4294967040
  %108 = lshr i64 %104, 24
  %109 = or i64 %107, %108
  %110 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %81
  store i64 %109, ptr %110, align 8, !tbaa !11
  %111 = shl nuw nsw i64 %109, 8
  %112 = and i64 %111, 4294967040
  %113 = lshr i64 %107, 24
  %114 = or i64 %112, %113
  %115 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %81
  store i64 %114, ptr %115, align 8, !tbaa !11
  %116 = getelementptr inbounds [256 x i8], ptr @RSb, i64 0, i64 %81
  %117 = load i8, ptr %116, align 1, !tbaa !13
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %150, label %119

119:                                              ; preds = %80
  %120 = zext i8 %117 to i64
  %121 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !5
  %123 = add nsw i32 %122, %37
  %124 = srem i32 %123, 255
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !5
  %128 = sext i32 %127 to i64
  %129 = add nsw i32 %122, %39
  %130 = srem i32 %129, 255
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !5
  %134 = sext i32 %133 to i64
  %135 = shl nsw i64 %134, 8
  %136 = xor i64 %135, %128
  %137 = add nsw i32 %122, %41
  %138 = srem i32 %137, 255
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !5
  %142 = sext i32 %141 to i64
  %143 = shl nsw i64 %142, 16
  %144 = xor i64 %136, %143
  %145 = add nsw i32 %122, %43
  %146 = srem i32 %145, 255
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !5
  br label %150

150:                                              ; preds = %119, %80
  %151 = phi i64 [ %144, %119 ], [ 0, %80 ]
  %152 = phi i32 [ %149, %119 ], [ 0, %80 ]
  %153 = sext i32 %152 to i64
  %154 = shl nsw i64 %153, 24
  %155 = xor i64 %154, %151
  %156 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %81
  store i64 %155, ptr %156, align 8, !tbaa !11
  %157 = shl nsw i64 %155, 8
  %158 = and i64 %157, 4294967040
  %159 = lshr i64 %155, 24
  %160 = or i64 %158, %159
  %161 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %81
  store i64 %160, ptr %161, align 8, !tbaa !11
  %162 = shl nuw nsw i64 %160, 8
  %163 = and i64 %162, 4294967040
  %164 = lshr i64 %160, 24
  %165 = or i64 %163, %164
  %166 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %81
  store i64 %165, ptr %166, align 8, !tbaa !11
  %167 = shl nuw nsw i64 %165, 8
  %168 = and i64 %167, 4294967040
  %169 = lshr i64 %163, 24
  %170 = or i64 %168, %169
  %171 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %81
  store i64 %170, ptr %171, align 8, !tbaa !11
  %172 = add nuw nsw i64 %81, 1
  %173 = icmp eq i64 %172, 256
  br i1 %173, label %174, label %80, !llvm.loop !15

174:                                              ; preds = %150
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #4
  store i1 true, ptr @aes_init_done, align 4
  br label %175

175:                                              ; preds = %174, %3
  switch i32 %2, label %411 [
    i32 128, label %178
    i32 192, label %176
    i32 256, label %177
  ]

176:                                              ; preds = %175
  br label %178

177:                                              ; preds = %175
  br label %178

178:                                              ; preds = %175, %176, %177
  %179 = phi i32 [ 12, %176 ], [ 14, %177 ], [ 10, %175 ]
  store i32 %179, ptr %0, align 8, !tbaa !16
  %180 = getelementptr inbounds %struct.aes_context, ptr %0, i64 0, i32 2
  %181 = getelementptr inbounds %struct.aes_context, ptr %0, i64 0, i32 1
  store ptr %180, ptr %181, align 8, !tbaa !19
  %182 = lshr i32 %2, 5
  %183 = zext i32 %182 to i64
  br label %184

184:                                              ; preds = %178, %184
  %185 = phi i64 [ 0, %178 ], [ %209, %184 ]
  %186 = shl i64 %185, 2
  %187 = getelementptr inbounds i8, ptr %1, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !13
  %189 = zext i8 %188 to i64
  %190 = or i64 %186, 1
  %191 = getelementptr inbounds i8, ptr %1, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !13
  %193 = zext i8 %192 to i64
  %194 = shl nuw nsw i64 %193, 8
  %195 = or i64 %194, %189
  %196 = or i64 %186, 2
  %197 = getelementptr inbounds i8, ptr %1, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !13
  %199 = zext i8 %198 to i64
  %200 = shl nuw nsw i64 %199, 16
  %201 = or i64 %195, %200
  %202 = or i64 %186, 3
  %203 = getelementptr inbounds i8, ptr %1, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !13
  %205 = zext i8 %204 to i64
  %206 = shl nuw nsw i64 %205, 24
  %207 = or i64 %201, %206
  %208 = getelementptr inbounds i64, ptr %180, i64 %185
  store i64 %207, ptr %208, align 8, !tbaa !11
  %209 = add nuw nsw i64 %185, 1
  %210 = icmp eq i64 %209, %183
  br i1 %210, label %211, label %184, !llvm.loop !20

211:                                              ; preds = %184
  switch i32 %179, label %411 [
    i32 10, label %216
    i32 12, label %214
    i32 14, label %212
  ]

212:                                              ; preds = %211
  %213 = load i64, ptr %180, align 8, !tbaa !11
  br label %322

214:                                              ; preds = %211
  %215 = load i64, ptr %180, align 8, !tbaa !11
  br label %266

216:                                              ; preds = %211
  %217 = load i64, ptr %180, align 8, !tbaa !11
  br label %218

218:                                              ; preds = %216, %218
  %219 = phi i64 [ %217, %216 ], [ %252, %218 ]
  %220 = phi i64 [ 0, %216 ], [ %264, %218 ]
  %221 = phi ptr [ %180, %216 ], [ %253, %218 ]
  %222 = getelementptr inbounds [10 x i64], ptr @RCON, i64 0, i64 %220
  %223 = load i64, ptr %222, align 8, !tbaa !11
  %224 = xor i64 %223, %219
  %225 = getelementptr inbounds i64, ptr %221, i64 3
  %226 = load i64, ptr %225, align 8, !tbaa !11
  %227 = lshr i64 %226, 8
  %228 = and i64 %227, 255
  %229 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !13
  %231 = zext i8 %230 to i64
  %232 = xor i64 %224, %231
  %233 = lshr i64 %226, 16
  %234 = and i64 %233, 255
  %235 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !13
  %237 = zext i8 %236 to i64
  %238 = shl nuw nsw i64 %237, 8
  %239 = xor i64 %232, %238
  %240 = lshr i64 %226, 24
  %241 = and i64 %240, 255
  %242 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !13
  %244 = zext i8 %243 to i64
  %245 = shl nuw nsw i64 %244, 16
  %246 = xor i64 %239, %245
  %247 = and i64 %226, 255
  %248 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %247
  %249 = load i8, ptr %248, align 1, !tbaa !13
  %250 = zext i8 %249 to i64
  %251 = shl nuw nsw i64 %250, 24
  %252 = xor i64 %246, %251
  %253 = getelementptr inbounds i64, ptr %221, i64 4
  store i64 %252, ptr %253, align 8, !tbaa !11
  %254 = getelementptr inbounds i64, ptr %221, i64 1
  %255 = load i64, ptr %254, align 8, !tbaa !11
  %256 = xor i64 %252, %255
  %257 = getelementptr inbounds i64, ptr %221, i64 5
  store i64 %256, ptr %257, align 8, !tbaa !11
  %258 = getelementptr inbounds i64, ptr %221, i64 2
  %259 = load i64, ptr %258, align 8, !tbaa !11
  %260 = xor i64 %259, %256
  %261 = getelementptr inbounds i64, ptr %221, i64 6
  store i64 %260, ptr %261, align 8, !tbaa !11
  %262 = xor i64 %260, %226
  %263 = getelementptr inbounds i64, ptr %221, i64 7
  store i64 %262, ptr %263, align 8, !tbaa !11
  %264 = add nuw nsw i64 %220, 1
  %265 = icmp eq i64 %264, 10
  br i1 %265, label %411, label %218, !llvm.loop !21

266:                                              ; preds = %214, %266
  %267 = phi i64 [ %215, %214 ], [ %300, %266 ]
  %268 = phi i64 [ 0, %214 ], [ %320, %266 ]
  %269 = phi ptr [ %180, %214 ], [ %301, %266 ]
  %270 = getelementptr inbounds [10 x i64], ptr @RCON, i64 0, i64 %268
  %271 = load i64, ptr %270, align 8, !tbaa !11
  %272 = xor i64 %271, %267
  %273 = getelementptr inbounds i64, ptr %269, i64 5
  %274 = load i64, ptr %273, align 8, !tbaa !11
  %275 = lshr i64 %274, 8
  %276 = and i64 %275, 255
  %277 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !13
  %279 = zext i8 %278 to i64
  %280 = xor i64 %272, %279
  %281 = lshr i64 %274, 16
  %282 = and i64 %281, 255
  %283 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !13
  %285 = zext i8 %284 to i64
  %286 = shl nuw nsw i64 %285, 8
  %287 = xor i64 %280, %286
  %288 = lshr i64 %274, 24
  %289 = and i64 %288, 255
  %290 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !13
  %292 = zext i8 %291 to i64
  %293 = shl nuw nsw i64 %292, 16
  %294 = xor i64 %287, %293
  %295 = and i64 %274, 255
  %296 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !13
  %298 = zext i8 %297 to i64
  %299 = shl nuw nsw i64 %298, 24
  %300 = xor i64 %294, %299
  %301 = getelementptr inbounds i64, ptr %269, i64 6
  store i64 %300, ptr %301, align 8, !tbaa !11
  %302 = getelementptr inbounds i64, ptr %269, i64 1
  %303 = load i64, ptr %302, align 8, !tbaa !11
  %304 = xor i64 %300, %303
  %305 = getelementptr inbounds i64, ptr %269, i64 7
  store i64 %304, ptr %305, align 8, !tbaa !11
  %306 = getelementptr inbounds i64, ptr %269, i64 2
  %307 = load i64, ptr %306, align 8, !tbaa !11
  %308 = xor i64 %307, %304
  %309 = getelementptr inbounds i64, ptr %269, i64 8
  store i64 %308, ptr %309, align 8, !tbaa !11
  %310 = getelementptr inbounds i64, ptr %269, i64 3
  %311 = load i64, ptr %310, align 8, !tbaa !11
  %312 = xor i64 %311, %308
  %313 = getelementptr inbounds i64, ptr %269, i64 9
  store i64 %312, ptr %313, align 8, !tbaa !11
  %314 = getelementptr inbounds i64, ptr %269, i64 4
  %315 = load i64, ptr %314, align 8, !tbaa !11
  %316 = xor i64 %315, %312
  %317 = getelementptr inbounds i64, ptr %269, i64 10
  store i64 %316, ptr %317, align 8, !tbaa !11
  %318 = xor i64 %316, %274
  %319 = getelementptr inbounds i64, ptr %269, i64 11
  store i64 %318, ptr %319, align 8, !tbaa !11
  %320 = add nuw nsw i64 %268, 1
  %321 = icmp eq i64 %320, 8
  br i1 %321, label %411, label %266, !llvm.loop !22

322:                                              ; preds = %212, %322
  %323 = phi i64 [ %213, %212 ], [ %356, %322 ]
  %324 = phi i64 [ 0, %212 ], [ %409, %322 ]
  %325 = phi ptr [ %180, %212 ], [ %357, %322 ]
  %326 = getelementptr inbounds [10 x i64], ptr @RCON, i64 0, i64 %324
  %327 = load i64, ptr %326, align 8, !tbaa !11
  %328 = xor i64 %327, %323
  %329 = getelementptr inbounds i64, ptr %325, i64 7
  %330 = load i64, ptr %329, align 8, !tbaa !11
  %331 = lshr i64 %330, 8
  %332 = and i64 %331, 255
  %333 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %332
  %334 = load i8, ptr %333, align 1, !tbaa !13
  %335 = zext i8 %334 to i64
  %336 = xor i64 %328, %335
  %337 = lshr i64 %330, 16
  %338 = and i64 %337, 255
  %339 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !13
  %341 = zext i8 %340 to i64
  %342 = shl nuw nsw i64 %341, 8
  %343 = xor i64 %336, %342
  %344 = lshr i64 %330, 24
  %345 = and i64 %344, 255
  %346 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %345
  %347 = load i8, ptr %346, align 1, !tbaa !13
  %348 = zext i8 %347 to i64
  %349 = shl nuw nsw i64 %348, 16
  %350 = xor i64 %343, %349
  %351 = and i64 %330, 255
  %352 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %351
  %353 = load i8, ptr %352, align 1, !tbaa !13
  %354 = zext i8 %353 to i64
  %355 = shl nuw nsw i64 %354, 24
  %356 = xor i64 %350, %355
  %357 = getelementptr inbounds i64, ptr %325, i64 8
  store i64 %356, ptr %357, align 8, !tbaa !11
  %358 = getelementptr inbounds i64, ptr %325, i64 1
  %359 = load i64, ptr %358, align 8, !tbaa !11
  %360 = xor i64 %356, %359
  %361 = getelementptr inbounds i64, ptr %325, i64 9
  store i64 %360, ptr %361, align 8, !tbaa !11
  %362 = getelementptr inbounds i64, ptr %325, i64 2
  %363 = load i64, ptr %362, align 8, !tbaa !11
  %364 = xor i64 %363, %360
  %365 = getelementptr inbounds i64, ptr %325, i64 10
  store i64 %364, ptr %365, align 8, !tbaa !11
  %366 = getelementptr inbounds i64, ptr %325, i64 3
  %367 = load i64, ptr %366, align 8, !tbaa !11
  %368 = xor i64 %367, %364
  %369 = getelementptr inbounds i64, ptr %325, i64 11
  store i64 %368, ptr %369, align 8, !tbaa !11
  %370 = getelementptr inbounds i64, ptr %325, i64 4
  %371 = load i64, ptr %370, align 8, !tbaa !11
  %372 = and i64 %368, 255
  %373 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %372
  %374 = load i8, ptr %373, align 1, !tbaa !13
  %375 = zext i8 %374 to i64
  %376 = xor i64 %371, %375
  %377 = lshr i64 %368, 8
  %378 = and i64 %377, 255
  %379 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !13
  %381 = zext i8 %380 to i64
  %382 = shl nuw nsw i64 %381, 8
  %383 = xor i64 %376, %382
  %384 = lshr i64 %368, 16
  %385 = and i64 %384, 255
  %386 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %385
  %387 = load i8, ptr %386, align 1, !tbaa !13
  %388 = zext i8 %387 to i64
  %389 = shl nuw nsw i64 %388, 16
  %390 = xor i64 %383, %389
  %391 = lshr i64 %368, 24
  %392 = and i64 %391, 255
  %393 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %392
  %394 = load i8, ptr %393, align 1, !tbaa !13
  %395 = zext i8 %394 to i64
  %396 = shl nuw nsw i64 %395, 24
  %397 = xor i64 %390, %396
  %398 = getelementptr inbounds i64, ptr %325, i64 12
  store i64 %397, ptr %398, align 8, !tbaa !11
  %399 = getelementptr inbounds i64, ptr %325, i64 5
  %400 = load i64, ptr %399, align 8, !tbaa !11
  %401 = xor i64 %397, %400
  %402 = getelementptr inbounds i64, ptr %325, i64 13
  store i64 %401, ptr %402, align 8, !tbaa !11
  %403 = getelementptr inbounds i64, ptr %325, i64 6
  %404 = load i64, ptr %403, align 8, !tbaa !11
  %405 = xor i64 %404, %401
  %406 = getelementptr inbounds i64, ptr %325, i64 14
  store i64 %405, ptr %406, align 8, !tbaa !11
  %407 = xor i64 %405, %330
  %408 = getelementptr inbounds i64, ptr %325, i64 15
  store i64 %407, ptr %408, align 8, !tbaa !11
  %409 = add nuw nsw i64 %324, 1
  %410 = icmp eq i64 %409, 7
  br i1 %410, label %411, label %322, !llvm.loop !23

411:                                              ; preds = %322, %266, %218, %211, %175
  %412 = phi i32 [ -2048, %175 ], [ 0, %211 ], [ 0, %218 ], [ 0, %266 ], [ 0, %322 ]
  ret i32 %412
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @aes_setkey_dec(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.aes_context, align 8
  call void @llvm.lifetime.start.p0(i64 560, ptr nonnull %4) #4
  switch i32 %2, label %189 [
    i32 128, label %7
    i32 192, label %5
    i32 256, label %6
  ]

5:                                                ; preds = %3
  br label %7

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %3, %6, %5
  %8 = phi i32 [ 14, %6 ], [ 12, %5 ], [ 10, %3 ]
  store i32 %8, ptr %0, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.aes_context, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.aes_context, ptr %0, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !19
  %11 = call i32 @aes_setkey_enc(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %189

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.aes_context, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = load i32, ptr %4, align 8, !tbaa !16
  %17 = shl nsw i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, ptr %15, i64 %18
  %20 = getelementptr inbounds i64, ptr %19, i64 1
  %21 = load i64, ptr %19, align 8, !tbaa !11
  %22 = getelementptr inbounds %struct.aes_context, ptr %0, i64 0, i32 2, i64 1
  store i64 %21, ptr %9, align 8, !tbaa !11
  %23 = getelementptr inbounds i64, ptr %20, i64 1
  %24 = load i64, ptr %20, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.aes_context, ptr %0, i64 0, i32 2, i64 2
  store i64 %24, ptr %22, align 8, !tbaa !11
  %26 = getelementptr inbounds i64, ptr %23, i64 1
  %27 = load i64, ptr %23, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.aes_context, ptr %0, i64 0, i32 2, i64 3
  store i64 %27, ptr %25, align 8, !tbaa !11
  %29 = getelementptr inbounds i64, ptr %26, i64 1
  %30 = load i64, ptr %26, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.aes_context, ptr %0, i64 0, i32 2, i64 4
  store i64 %30, ptr %28, align 8, !tbaa !11
  %32 = load i32, ptr %0, align 8, !tbaa !16
  %33 = getelementptr inbounds i64, ptr %29, i64 -8
  %34 = icmp sgt i32 %32, 1
  br i1 %34, label %35, label %175

35:                                               ; preds = %13, %35
  %36 = phi i32 [ %170, %35 ], [ %32, %13 ]
  %37 = phi ptr [ %171, %35 ], [ %33, %13 ]
  %38 = phi ptr [ %169, %35 ], [ %31, %13 ]
  %39 = load i64, ptr %37, align 8, !tbaa !11
  %40 = and i64 %39, 255
  %41 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !13
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !11
  %46 = lshr i64 %39, 8
  %47 = and i64 %46, 255
  %48 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !13
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !11
  %53 = xor i64 %52, %45
  %54 = lshr i64 %39, 16
  %55 = and i64 %54, 255
  %56 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !13
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !11
  %61 = xor i64 %53, %60
  %62 = lshr i64 %39, 24
  %63 = and i64 %62, 255
  %64 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !13
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !11
  %69 = xor i64 %61, %68
  %70 = getelementptr inbounds i64, ptr %38, i64 1
  store i64 %69, ptr %38, align 8, !tbaa !11
  %71 = getelementptr inbounds i64, ptr %37, i64 1
  %72 = load i64, ptr %71, align 8, !tbaa !11
  %73 = and i64 %72, 255
  %74 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !13
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %76
  %78 = load i64, ptr %77, align 8, !tbaa !11
  %79 = lshr i64 %72, 8
  %80 = and i64 %79, 255
  %81 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !13
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !11
  %86 = xor i64 %85, %78
  %87 = lshr i64 %72, 16
  %88 = and i64 %87, 255
  %89 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !13
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !11
  %94 = xor i64 %86, %93
  %95 = lshr i64 %72, 24
  %96 = and i64 %95, 255
  %97 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !13
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !11
  %102 = xor i64 %94, %101
  %103 = getelementptr inbounds i64, ptr %38, i64 2
  store i64 %102, ptr %70, align 8, !tbaa !11
  %104 = getelementptr inbounds i64, ptr %37, i64 2
  %105 = load i64, ptr %104, align 8, !tbaa !11
  %106 = and i64 %105, 255
  %107 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !13
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !11
  %112 = lshr i64 %105, 8
  %113 = and i64 %112, 255
  %114 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !13
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !11
  %119 = xor i64 %118, %111
  %120 = lshr i64 %105, 16
  %121 = and i64 %120, 255
  %122 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !13
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %124
  %126 = load i64, ptr %125, align 8, !tbaa !11
  %127 = xor i64 %119, %126
  %128 = lshr i64 %105, 24
  %129 = and i64 %128, 255
  %130 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !13
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !11
  %135 = xor i64 %127, %134
  %136 = getelementptr inbounds i64, ptr %38, i64 3
  store i64 %135, ptr %103, align 8, !tbaa !11
  %137 = getelementptr inbounds i64, ptr %37, i64 3
  %138 = load i64, ptr %137, align 8, !tbaa !11
  %139 = and i64 %138, 255
  %140 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !13
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %142
  %144 = load i64, ptr %143, align 8, !tbaa !11
  %145 = lshr i64 %138, 8
  %146 = and i64 %145, 255
  %147 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !13
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %149
  %151 = load i64, ptr %150, align 8, !tbaa !11
  %152 = xor i64 %151, %144
  %153 = lshr i64 %138, 16
  %154 = and i64 %153, 255
  %155 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !13
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %157
  %159 = load i64, ptr %158, align 8, !tbaa !11
  %160 = xor i64 %152, %159
  %161 = lshr i64 %138, 24
  %162 = and i64 %161, 255
  %163 = getelementptr inbounds [256 x i8], ptr @FSb, i64 0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !13
  %165 = zext i8 %164 to i64
  %166 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %165
  %167 = load i64, ptr %166, align 8, !tbaa !11
  %168 = xor i64 %160, %167
  %169 = getelementptr inbounds i64, ptr %38, i64 4
  store i64 %168, ptr %136, align 8, !tbaa !11
  %170 = add nsw i32 %36, -1
  %171 = getelementptr inbounds i64, ptr %37, i64 -4
  %172 = icmp ugt i32 %36, 2
  br i1 %172, label %35, label %173, !llvm.loop !24

173:                                              ; preds = %35
  %174 = getelementptr inbounds i64, ptr %37, i64 4
  br label %175

175:                                              ; preds = %173, %13
  %176 = phi ptr [ %31, %13 ], [ %169, %173 ]
  %177 = phi ptr [ %29, %13 ], [ %174, %173 ]
  %178 = phi ptr [ %33, %13 ], [ %171, %173 ]
  %179 = getelementptr inbounds i64, ptr %177, i64 -7
  %180 = load i64, ptr %178, align 8, !tbaa !11
  %181 = getelementptr inbounds i64, ptr %176, i64 1
  store i64 %180, ptr %176, align 8, !tbaa !11
  %182 = getelementptr inbounds i64, ptr %177, i64 -6
  %183 = load i64, ptr %179, align 8, !tbaa !11
  %184 = getelementptr inbounds i64, ptr %176, i64 2
  store i64 %183, ptr %181, align 8, !tbaa !11
  %185 = getelementptr inbounds i64, ptr %177, i64 -5
  %186 = load i64, ptr %182, align 8, !tbaa !11
  %187 = getelementptr inbounds i64, ptr %176, i64 3
  store i64 %186, ptr %184, align 8, !tbaa !11
  %188 = load i64, ptr %185, align 8, !tbaa !11
  store i64 %188, ptr %187, align 8, !tbaa !11
  br label %189

189:                                              ; preds = %7, %3, %175
  %190 = phi i32 [ 0, %175 ], [ -2048, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 560, ptr nonnull %4) #4
  ret i32 %190
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @aes_crypt_ecb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.aes_context, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = load i8, ptr %2, align 1, !tbaa !13
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds i8, ptr %2, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !13
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %11, 8
  %13 = or i64 %12, %8
  %14 = getelementptr inbounds i8, ptr %2, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !13
  %16 = zext i8 %15 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = or i64 %13, %17
  %19 = getelementptr inbounds i8, ptr %2, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 24
  %23 = or i64 %18, %22
  %24 = getelementptr inbounds i64, ptr %6, i64 1
  %25 = load i64, ptr %6, align 8, !tbaa !11
  %26 = xor i64 %23, %25
  %27 = getelementptr inbounds i8, ptr %2, i64 4
  %28 = load i8, ptr %27, align 1, !tbaa !13
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds i8, ptr %2, i64 5
  %31 = load i8, ptr %30, align 1, !tbaa !13
  %32 = zext i8 %31 to i64
  %33 = shl nuw nsw i64 %32, 8
  %34 = or i64 %33, %29
  %35 = getelementptr inbounds i8, ptr %2, i64 6
  %36 = load i8, ptr %35, align 1, !tbaa !13
  %37 = zext i8 %36 to i64
  %38 = shl nuw nsw i64 %37, 16
  %39 = or i64 %34, %38
  %40 = getelementptr inbounds i8, ptr %2, i64 7
  %41 = load i8, ptr %40, align 1, !tbaa !13
  %42 = zext i8 %41 to i64
  %43 = shl nuw nsw i64 %42, 24
  %44 = or i64 %39, %43
  %45 = getelementptr inbounds i64, ptr %6, i64 2
  %46 = load i64, ptr %24, align 8, !tbaa !11
  %47 = xor i64 %44, %46
  %48 = getelementptr inbounds i8, ptr %2, i64 8
  %49 = load i8, ptr %48, align 1, !tbaa !13
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds i8, ptr %2, i64 9
  %52 = load i8, ptr %51, align 1, !tbaa !13
  %53 = zext i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 8
  %55 = or i64 %54, %50
  %56 = getelementptr inbounds i8, ptr %2, i64 10
  %57 = load i8, ptr %56, align 1, !tbaa !13
  %58 = zext i8 %57 to i64
  %59 = shl nuw nsw i64 %58, 16
  %60 = or i64 %55, %59
  %61 = getelementptr inbounds i8, ptr %2, i64 11
  %62 = load i8, ptr %61, align 1, !tbaa !13
  %63 = zext i8 %62 to i64
  %64 = shl nuw nsw i64 %63, 24
  %65 = or i64 %60, %64
  %66 = getelementptr inbounds i64, ptr %6, i64 3
  %67 = load i64, ptr %45, align 8, !tbaa !11
  %68 = xor i64 %65, %67
  %69 = getelementptr inbounds i8, ptr %2, i64 12
  %70 = load i8, ptr %69, align 1, !tbaa !13
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds i8, ptr %2, i64 13
  %73 = load i8, ptr %72, align 1, !tbaa !13
  %74 = zext i8 %73 to i64
  %75 = shl nuw nsw i64 %74, 8
  %76 = or i64 %75, %71
  %77 = getelementptr inbounds i8, ptr %2, i64 14
  %78 = load i8, ptr %77, align 1, !tbaa !13
  %79 = zext i8 %78 to i64
  %80 = shl nuw nsw i64 %79, 16
  %81 = or i64 %76, %80
  %82 = getelementptr inbounds i8, ptr %2, i64 15
  %83 = load i8, ptr %82, align 1, !tbaa !13
  %84 = zext i8 %83 to i64
  %85 = shl nuw nsw i64 %84, 24
  %86 = or i64 %81, %85
  %87 = getelementptr inbounds i64, ptr %6, i64 4
  %88 = load i64, ptr %66, align 8, !tbaa !11
  %89 = xor i64 %86, %88
  %90 = icmp eq i32 %1, 0
  %91 = load i32, ptr %0, align 8, !tbaa !16
  %92 = icmp sgt i32 %91, 3
  br i1 %90, label %93, label %362

93:                                               ; preds = %4
  br i1 %92, label %94, label %273

94:                                               ; preds = %93
  %95 = lshr i32 %91, 1
  br label %96

96:                                               ; preds = %94, %96
  %97 = phi i64 [ %271, %96 ], [ %89, %94 ]
  %98 = phi i64 [ %250, %96 ], [ %68, %94 ]
  %99 = phi i64 [ %229, %96 ], [ %47, %94 ]
  %100 = phi i64 [ %208, %96 ], [ %26, %94 ]
  %101 = phi ptr [ %251, %96 ], [ %87, %94 ]
  %102 = phi i32 [ %103, %96 ], [ %95, %94 ]
  %103 = add nsw i32 %102, -1
  %104 = getelementptr inbounds i64, ptr %101, i64 1
  %105 = load i64, ptr %101, align 8, !tbaa !11
  %106 = and i64 %100, 255
  %107 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %106
  %108 = load i64, ptr %107, align 8, !tbaa !11
  %109 = xor i64 %108, %105
  %110 = lshr i64 %97, 8
  %111 = and i64 %110, 255
  %112 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %111
  %113 = load i64, ptr %112, align 8, !tbaa !11
  %114 = xor i64 %109, %113
  %115 = lshr i64 %98, 16
  %116 = and i64 %115, 255
  %117 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !11
  %119 = xor i64 %114, %118
  %120 = lshr i64 %99, 24
  %121 = and i64 %120, 255
  %122 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %121
  %123 = load i64, ptr %122, align 8, !tbaa !11
  %124 = xor i64 %119, %123
  %125 = getelementptr inbounds i64, ptr %101, i64 2
  %126 = load i64, ptr %104, align 8, !tbaa !11
  %127 = and i64 %99, 255
  %128 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !11
  %130 = xor i64 %129, %126
  %131 = lshr i64 %100, 8
  %132 = and i64 %131, 255
  %133 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !11
  %135 = xor i64 %130, %134
  %136 = lshr i64 %97, 16
  %137 = and i64 %136, 255
  %138 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !11
  %140 = xor i64 %135, %139
  %141 = lshr i64 %98, 24
  %142 = and i64 %141, 255
  %143 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %142
  %144 = load i64, ptr %143, align 8, !tbaa !11
  %145 = xor i64 %140, %144
  %146 = getelementptr inbounds i64, ptr %101, i64 3
  %147 = load i64, ptr %125, align 8, !tbaa !11
  %148 = and i64 %98, 255
  %149 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %148
  %150 = load i64, ptr %149, align 8, !tbaa !11
  %151 = xor i64 %150, %147
  %152 = lshr i64 %99, 8
  %153 = and i64 %152, 255
  %154 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %153
  %155 = load i64, ptr %154, align 8, !tbaa !11
  %156 = xor i64 %151, %155
  %157 = lshr i64 %100, 16
  %158 = and i64 %157, 255
  %159 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %158
  %160 = load i64, ptr %159, align 8, !tbaa !11
  %161 = xor i64 %156, %160
  %162 = lshr i64 %97, 24
  %163 = and i64 %162, 255
  %164 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %163
  %165 = load i64, ptr %164, align 8, !tbaa !11
  %166 = xor i64 %161, %165
  %167 = getelementptr inbounds i64, ptr %101, i64 4
  %168 = load i64, ptr %146, align 8, !tbaa !11
  %169 = and i64 %97, 255
  %170 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %169
  %171 = load i64, ptr %170, align 8, !tbaa !11
  %172 = xor i64 %171, %168
  %173 = lshr i64 %98, 8
  %174 = and i64 %173, 255
  %175 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %174
  %176 = load i64, ptr %175, align 8, !tbaa !11
  %177 = xor i64 %172, %176
  %178 = lshr i64 %99, 16
  %179 = and i64 %178, 255
  %180 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %179
  %181 = load i64, ptr %180, align 8, !tbaa !11
  %182 = xor i64 %177, %181
  %183 = lshr i64 %100, 24
  %184 = and i64 %183, 255
  %185 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %184
  %186 = load i64, ptr %185, align 8, !tbaa !11
  %187 = xor i64 %182, %186
  %188 = getelementptr inbounds i64, ptr %101, i64 5
  %189 = load i64, ptr %167, align 8, !tbaa !11
  %190 = and i64 %124, 255
  %191 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %190
  %192 = load i64, ptr %191, align 8, !tbaa !11
  %193 = xor i64 %192, %189
  %194 = lshr i64 %187, 8
  %195 = and i64 %194, 255
  %196 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %195
  %197 = load i64, ptr %196, align 8, !tbaa !11
  %198 = xor i64 %193, %197
  %199 = lshr i64 %166, 16
  %200 = and i64 %199, 255
  %201 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %200
  %202 = load i64, ptr %201, align 8, !tbaa !11
  %203 = xor i64 %198, %202
  %204 = lshr i64 %145, 24
  %205 = and i64 %204, 255
  %206 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %205
  %207 = load i64, ptr %206, align 8, !tbaa !11
  %208 = xor i64 %203, %207
  %209 = getelementptr inbounds i64, ptr %101, i64 6
  %210 = load i64, ptr %188, align 8, !tbaa !11
  %211 = and i64 %145, 255
  %212 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %211
  %213 = load i64, ptr %212, align 8, !tbaa !11
  %214 = xor i64 %213, %210
  %215 = lshr i64 %124, 8
  %216 = and i64 %215, 255
  %217 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %216
  %218 = load i64, ptr %217, align 8, !tbaa !11
  %219 = xor i64 %214, %218
  %220 = lshr i64 %187, 16
  %221 = and i64 %220, 255
  %222 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %221
  %223 = load i64, ptr %222, align 8, !tbaa !11
  %224 = xor i64 %219, %223
  %225 = lshr i64 %166, 24
  %226 = and i64 %225, 255
  %227 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %226
  %228 = load i64, ptr %227, align 8, !tbaa !11
  %229 = xor i64 %224, %228
  %230 = getelementptr inbounds i64, ptr %101, i64 7
  %231 = load i64, ptr %209, align 8, !tbaa !11
  %232 = and i64 %166, 255
  %233 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %232
  %234 = load i64, ptr %233, align 8, !tbaa !11
  %235 = xor i64 %234, %231
  %236 = lshr i64 %145, 8
  %237 = and i64 %236, 255
  %238 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %237
  %239 = load i64, ptr %238, align 8, !tbaa !11
  %240 = xor i64 %235, %239
  %241 = lshr i64 %124, 16
  %242 = and i64 %241, 255
  %243 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %242
  %244 = load i64, ptr %243, align 8, !tbaa !11
  %245 = xor i64 %240, %244
  %246 = lshr i64 %187, 24
  %247 = and i64 %246, 255
  %248 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %247
  %249 = load i64, ptr %248, align 8, !tbaa !11
  %250 = xor i64 %245, %249
  %251 = getelementptr inbounds i64, ptr %101, i64 8
  %252 = load i64, ptr %230, align 8, !tbaa !11
  %253 = and i64 %187, 255
  %254 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %253
  %255 = load i64, ptr %254, align 8, !tbaa !11
  %256 = xor i64 %255, %252
  %257 = lshr i64 %166, 8
  %258 = and i64 %257, 255
  %259 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %258
  %260 = load i64, ptr %259, align 8, !tbaa !11
  %261 = xor i64 %256, %260
  %262 = lshr i64 %145, 16
  %263 = and i64 %262, 255
  %264 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %263
  %265 = load i64, ptr %264, align 8, !tbaa !11
  %266 = xor i64 %261, %265
  %267 = lshr i64 %124, 24
  %268 = and i64 %267, 255
  %269 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %268
  %270 = load i64, ptr %269, align 8, !tbaa !11
  %271 = xor i64 %266, %270
  %272 = icmp ugt i32 %102, 2
  br i1 %272, label %96, label %273, !llvm.loop !25

273:                                              ; preds = %96, %93
  %274 = phi ptr [ %87, %93 ], [ %251, %96 ]
  %275 = phi i64 [ %26, %93 ], [ %208, %96 ]
  %276 = phi i64 [ %47, %93 ], [ %229, %96 ]
  %277 = phi i64 [ %68, %93 ], [ %250, %96 ]
  %278 = phi i64 [ %89, %93 ], [ %271, %96 ]
  %279 = getelementptr inbounds i64, ptr %274, i64 1
  %280 = load i64, ptr %274, align 8, !tbaa !11
  %281 = and i64 %275, 255
  %282 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %281
  %283 = load i64, ptr %282, align 8, !tbaa !11
  %284 = xor i64 %283, %280
  %285 = lshr i64 %278, 8
  %286 = and i64 %285, 255
  %287 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %286
  %288 = load i64, ptr %287, align 8, !tbaa !11
  %289 = xor i64 %284, %288
  %290 = lshr i64 %277, 16
  %291 = and i64 %290, 255
  %292 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %291
  %293 = load i64, ptr %292, align 8, !tbaa !11
  %294 = xor i64 %289, %293
  %295 = lshr i64 %276, 24
  %296 = and i64 %295, 255
  %297 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %296
  %298 = load i64, ptr %297, align 8, !tbaa !11
  %299 = xor i64 %294, %298
  %300 = getelementptr inbounds i64, ptr %274, i64 2
  %301 = load i64, ptr %279, align 8, !tbaa !11
  %302 = and i64 %276, 255
  %303 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %302
  %304 = load i64, ptr %303, align 8, !tbaa !11
  %305 = xor i64 %304, %301
  %306 = lshr i64 %275, 8
  %307 = and i64 %306, 255
  %308 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %307
  %309 = load i64, ptr %308, align 8, !tbaa !11
  %310 = xor i64 %305, %309
  %311 = lshr i64 %278, 16
  %312 = and i64 %311, 255
  %313 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %312
  %314 = load i64, ptr %313, align 8, !tbaa !11
  %315 = xor i64 %310, %314
  %316 = lshr i64 %277, 24
  %317 = and i64 %316, 255
  %318 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %317
  %319 = load i64, ptr %318, align 8, !tbaa !11
  %320 = xor i64 %315, %319
  %321 = getelementptr inbounds i64, ptr %274, i64 3
  %322 = load i64, ptr %300, align 8, !tbaa !11
  %323 = and i64 %277, 255
  %324 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %323
  %325 = load i64, ptr %324, align 8, !tbaa !11
  %326 = xor i64 %325, %322
  %327 = lshr i64 %276, 8
  %328 = and i64 %327, 255
  %329 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %328
  %330 = load i64, ptr %329, align 8, !tbaa !11
  %331 = xor i64 %326, %330
  %332 = lshr i64 %275, 16
  %333 = and i64 %332, 255
  %334 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %333
  %335 = load i64, ptr %334, align 8, !tbaa !11
  %336 = xor i64 %331, %335
  %337 = lshr i64 %278, 24
  %338 = and i64 %337, 255
  %339 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %338
  %340 = load i64, ptr %339, align 8, !tbaa !11
  %341 = xor i64 %336, %340
  %342 = load i64, ptr %321, align 8, !tbaa !11
  %343 = and i64 %278, 255
  %344 = getelementptr inbounds [256 x i64], ptr @RT0, i64 0, i64 %343
  %345 = load i64, ptr %344, align 8, !tbaa !11
  %346 = xor i64 %345, %342
  %347 = lshr i64 %277, 8
  %348 = and i64 %347, 255
  %349 = getelementptr inbounds [256 x i64], ptr @RT1, i64 0, i64 %348
  %350 = load i64, ptr %349, align 8, !tbaa !11
  %351 = xor i64 %346, %350
  %352 = lshr i64 %276, 16
  %353 = and i64 %352, 255
  %354 = getelementptr inbounds [256 x i64], ptr @RT2, i64 0, i64 %353
  %355 = load i64, ptr %354, align 8, !tbaa !11
  %356 = xor i64 %351, %355
  %357 = lshr i64 %275, 24
  %358 = and i64 %357, 255
  %359 = getelementptr inbounds [256 x i64], ptr @RT3, i64 0, i64 %358
  %360 = load i64, ptr %359, align 8, !tbaa !11
  %361 = xor i64 %356, %360
  br label %631

362:                                              ; preds = %4
  br i1 %92, label %363, label %542

363:                                              ; preds = %362
  %364 = lshr i32 %91, 1
  br label %365

365:                                              ; preds = %363, %365
  %366 = phi i64 [ %540, %365 ], [ %89, %363 ]
  %367 = phi i64 [ %519, %365 ], [ %68, %363 ]
  %368 = phi i64 [ %498, %365 ], [ %47, %363 ]
  %369 = phi i64 [ %477, %365 ], [ %26, %363 ]
  %370 = phi ptr [ %520, %365 ], [ %87, %363 ]
  %371 = phi i32 [ %372, %365 ], [ %364, %363 ]
  %372 = add nsw i32 %371, -1
  %373 = getelementptr inbounds i64, ptr %370, i64 1
  %374 = load i64, ptr %370, align 8, !tbaa !11
  %375 = and i64 %369, 255
  %376 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %375
  %377 = load i64, ptr %376, align 8, !tbaa !11
  %378 = xor i64 %377, %374
  %379 = lshr i64 %368, 8
  %380 = and i64 %379, 255
  %381 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %380
  %382 = load i64, ptr %381, align 8, !tbaa !11
  %383 = xor i64 %378, %382
  %384 = lshr i64 %367, 16
  %385 = and i64 %384, 255
  %386 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %385
  %387 = load i64, ptr %386, align 8, !tbaa !11
  %388 = xor i64 %383, %387
  %389 = lshr i64 %366, 24
  %390 = and i64 %389, 255
  %391 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %390
  %392 = load i64, ptr %391, align 8, !tbaa !11
  %393 = xor i64 %388, %392
  %394 = getelementptr inbounds i64, ptr %370, i64 2
  %395 = load i64, ptr %373, align 8, !tbaa !11
  %396 = and i64 %368, 255
  %397 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %396
  %398 = load i64, ptr %397, align 8, !tbaa !11
  %399 = xor i64 %398, %395
  %400 = lshr i64 %367, 8
  %401 = and i64 %400, 255
  %402 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %401
  %403 = load i64, ptr %402, align 8, !tbaa !11
  %404 = xor i64 %399, %403
  %405 = lshr i64 %366, 16
  %406 = and i64 %405, 255
  %407 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %406
  %408 = load i64, ptr %407, align 8, !tbaa !11
  %409 = xor i64 %404, %408
  %410 = lshr i64 %369, 24
  %411 = and i64 %410, 255
  %412 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %411
  %413 = load i64, ptr %412, align 8, !tbaa !11
  %414 = xor i64 %409, %413
  %415 = getelementptr inbounds i64, ptr %370, i64 3
  %416 = load i64, ptr %394, align 8, !tbaa !11
  %417 = and i64 %367, 255
  %418 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %417
  %419 = load i64, ptr %418, align 8, !tbaa !11
  %420 = xor i64 %419, %416
  %421 = lshr i64 %366, 8
  %422 = and i64 %421, 255
  %423 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %422
  %424 = load i64, ptr %423, align 8, !tbaa !11
  %425 = xor i64 %420, %424
  %426 = lshr i64 %369, 16
  %427 = and i64 %426, 255
  %428 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %427
  %429 = load i64, ptr %428, align 8, !tbaa !11
  %430 = xor i64 %425, %429
  %431 = lshr i64 %368, 24
  %432 = and i64 %431, 255
  %433 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %432
  %434 = load i64, ptr %433, align 8, !tbaa !11
  %435 = xor i64 %430, %434
  %436 = getelementptr inbounds i64, ptr %370, i64 4
  %437 = load i64, ptr %415, align 8, !tbaa !11
  %438 = and i64 %366, 255
  %439 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %438
  %440 = load i64, ptr %439, align 8, !tbaa !11
  %441 = xor i64 %440, %437
  %442 = lshr i64 %369, 8
  %443 = and i64 %442, 255
  %444 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %443
  %445 = load i64, ptr %444, align 8, !tbaa !11
  %446 = xor i64 %441, %445
  %447 = lshr i64 %368, 16
  %448 = and i64 %447, 255
  %449 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %448
  %450 = load i64, ptr %449, align 8, !tbaa !11
  %451 = xor i64 %446, %450
  %452 = lshr i64 %367, 24
  %453 = and i64 %452, 255
  %454 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %453
  %455 = load i64, ptr %454, align 8, !tbaa !11
  %456 = xor i64 %451, %455
  %457 = getelementptr inbounds i64, ptr %370, i64 5
  %458 = load i64, ptr %436, align 8, !tbaa !11
  %459 = and i64 %393, 255
  %460 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %459
  %461 = load i64, ptr %460, align 8, !tbaa !11
  %462 = xor i64 %461, %458
  %463 = lshr i64 %414, 8
  %464 = and i64 %463, 255
  %465 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %464
  %466 = load i64, ptr %465, align 8, !tbaa !11
  %467 = xor i64 %462, %466
  %468 = lshr i64 %435, 16
  %469 = and i64 %468, 255
  %470 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %469
  %471 = load i64, ptr %470, align 8, !tbaa !11
  %472 = xor i64 %467, %471
  %473 = lshr i64 %456, 24
  %474 = and i64 %473, 255
  %475 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %474
  %476 = load i64, ptr %475, align 8, !tbaa !11
  %477 = xor i64 %472, %476
  %478 = getelementptr inbounds i64, ptr %370, i64 6
  %479 = load i64, ptr %457, align 8, !tbaa !11
  %480 = and i64 %414, 255
  %481 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %480
  %482 = load i64, ptr %481, align 8, !tbaa !11
  %483 = xor i64 %482, %479
  %484 = lshr i64 %435, 8
  %485 = and i64 %484, 255
  %486 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %485
  %487 = load i64, ptr %486, align 8, !tbaa !11
  %488 = xor i64 %483, %487
  %489 = lshr i64 %456, 16
  %490 = and i64 %489, 255
  %491 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %490
  %492 = load i64, ptr %491, align 8, !tbaa !11
  %493 = xor i64 %488, %492
  %494 = lshr i64 %393, 24
  %495 = and i64 %494, 255
  %496 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %495
  %497 = load i64, ptr %496, align 8, !tbaa !11
  %498 = xor i64 %493, %497
  %499 = getelementptr inbounds i64, ptr %370, i64 7
  %500 = load i64, ptr %478, align 8, !tbaa !11
  %501 = and i64 %435, 255
  %502 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %501
  %503 = load i64, ptr %502, align 8, !tbaa !11
  %504 = xor i64 %503, %500
  %505 = lshr i64 %456, 8
  %506 = and i64 %505, 255
  %507 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %506
  %508 = load i64, ptr %507, align 8, !tbaa !11
  %509 = xor i64 %504, %508
  %510 = lshr i64 %393, 16
  %511 = and i64 %510, 255
  %512 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %511
  %513 = load i64, ptr %512, align 8, !tbaa !11
  %514 = xor i64 %509, %513
  %515 = lshr i64 %414, 24
  %516 = and i64 %515, 255
  %517 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %516
  %518 = load i64, ptr %517, align 8, !tbaa !11
  %519 = xor i64 %514, %518
  %520 = getelementptr inbounds i64, ptr %370, i64 8
  %521 = load i64, ptr %499, align 8, !tbaa !11
  %522 = and i64 %456, 255
  %523 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %522
  %524 = load i64, ptr %523, align 8, !tbaa !11
  %525 = xor i64 %524, %521
  %526 = lshr i64 %393, 8
  %527 = and i64 %526, 255
  %528 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %527
  %529 = load i64, ptr %528, align 8, !tbaa !11
  %530 = xor i64 %525, %529
  %531 = lshr i64 %414, 16
  %532 = and i64 %531, 255
  %533 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %532
  %534 = load i64, ptr %533, align 8, !tbaa !11
  %535 = xor i64 %530, %534
  %536 = lshr i64 %435, 24
  %537 = and i64 %536, 255
  %538 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %537
  %539 = load i64, ptr %538, align 8, !tbaa !11
  %540 = xor i64 %535, %539
  %541 = icmp ugt i32 %371, 2
  br i1 %541, label %365, label %542, !llvm.loop !26

542:                                              ; preds = %365, %362
  %543 = phi ptr [ %87, %362 ], [ %520, %365 ]
  %544 = phi i64 [ %26, %362 ], [ %477, %365 ]
  %545 = phi i64 [ %47, %362 ], [ %498, %365 ]
  %546 = phi i64 [ %68, %362 ], [ %519, %365 ]
  %547 = phi i64 [ %89, %362 ], [ %540, %365 ]
  %548 = getelementptr inbounds i64, ptr %543, i64 1
  %549 = load i64, ptr %543, align 8, !tbaa !11
  %550 = and i64 %544, 255
  %551 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %550
  %552 = load i64, ptr %551, align 8, !tbaa !11
  %553 = xor i64 %552, %549
  %554 = lshr i64 %545, 8
  %555 = and i64 %554, 255
  %556 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %555
  %557 = load i64, ptr %556, align 8, !tbaa !11
  %558 = xor i64 %553, %557
  %559 = lshr i64 %546, 16
  %560 = and i64 %559, 255
  %561 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %560
  %562 = load i64, ptr %561, align 8, !tbaa !11
  %563 = xor i64 %558, %562
  %564 = lshr i64 %547, 24
  %565 = and i64 %564, 255
  %566 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %565
  %567 = load i64, ptr %566, align 8, !tbaa !11
  %568 = xor i64 %563, %567
  %569 = getelementptr inbounds i64, ptr %543, i64 2
  %570 = load i64, ptr %548, align 8, !tbaa !11
  %571 = and i64 %545, 255
  %572 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %571
  %573 = load i64, ptr %572, align 8, !tbaa !11
  %574 = xor i64 %573, %570
  %575 = lshr i64 %546, 8
  %576 = and i64 %575, 255
  %577 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %576
  %578 = load i64, ptr %577, align 8, !tbaa !11
  %579 = xor i64 %574, %578
  %580 = lshr i64 %547, 16
  %581 = and i64 %580, 255
  %582 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %581
  %583 = load i64, ptr %582, align 8, !tbaa !11
  %584 = xor i64 %579, %583
  %585 = lshr i64 %544, 24
  %586 = and i64 %585, 255
  %587 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %586
  %588 = load i64, ptr %587, align 8, !tbaa !11
  %589 = xor i64 %584, %588
  %590 = getelementptr inbounds i64, ptr %543, i64 3
  %591 = load i64, ptr %569, align 8, !tbaa !11
  %592 = and i64 %546, 255
  %593 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %592
  %594 = load i64, ptr %593, align 8, !tbaa !11
  %595 = xor i64 %594, %591
  %596 = lshr i64 %547, 8
  %597 = and i64 %596, 255
  %598 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %597
  %599 = load i64, ptr %598, align 8, !tbaa !11
  %600 = xor i64 %595, %599
  %601 = lshr i64 %544, 16
  %602 = and i64 %601, 255
  %603 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %602
  %604 = load i64, ptr %603, align 8, !tbaa !11
  %605 = xor i64 %600, %604
  %606 = lshr i64 %545, 24
  %607 = and i64 %606, 255
  %608 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %607
  %609 = load i64, ptr %608, align 8, !tbaa !11
  %610 = xor i64 %605, %609
  %611 = load i64, ptr %590, align 8, !tbaa !11
  %612 = and i64 %547, 255
  %613 = getelementptr inbounds [256 x i64], ptr @FT0, i64 0, i64 %612
  %614 = load i64, ptr %613, align 8, !tbaa !11
  %615 = xor i64 %614, %611
  %616 = lshr i64 %544, 8
  %617 = and i64 %616, 255
  %618 = getelementptr inbounds [256 x i64], ptr @FT1, i64 0, i64 %617
  %619 = load i64, ptr %618, align 8, !tbaa !11
  %620 = xor i64 %615, %619
  %621 = lshr i64 %545, 16
  %622 = and i64 %621, 255
  %623 = getelementptr inbounds [256 x i64], ptr @FT2, i64 0, i64 %622
  %624 = load i64, ptr %623, align 8, !tbaa !11
  %625 = xor i64 %620, %624
  %626 = lshr i64 %546, 24
  %627 = and i64 %626, 255
  %628 = getelementptr inbounds [256 x i64], ptr @FT3, i64 0, i64 %627
  %629 = load i64, ptr %628, align 8, !tbaa !11
  %630 = xor i64 %625, %629
  br label %631

631:                                              ; preds = %542, %273
  %632 = phi ptr [ %543, %542 ], [ %274, %273 ]
  %633 = phi i64 [ %568, %542 ], [ %299, %273 ]
  %634 = phi ptr [ @FSb, %542 ], [ @RSb, %273 ]
  %635 = phi i64 [ %589, %542 ], [ %361, %273 ]
  %636 = phi i64 [ %610, %542 ], [ %341, %273 ]
  %637 = phi i64 [ %630, %542 ], [ %320, %273 ]
  %638 = phi i64 [ %589, %542 ], [ %320, %273 ]
  %639 = phi i64 [ %610, %542 ], [ %299, %273 ]
  %640 = phi i64 [ %630, %542 ], [ %361, %273 ]
  %641 = phi i64 [ %568, %542 ], [ %341, %273 ]
  %642 = getelementptr inbounds i64, ptr %632, i64 4
  %643 = getelementptr inbounds i64, ptr %632, i64 5
  %644 = load i64, ptr %642, align 8, !tbaa !11
  %645 = and i64 %633, 255
  %646 = getelementptr inbounds [256 x i8], ptr %634, i64 0, i64 %645
  %647 = load i8, ptr %646, align 1, !tbaa !13
  %648 = lshr i64 %635, 8
  %649 = and i64 %648, 255
  %650 = getelementptr inbounds [256 x i8], ptr %634, i64 0, i64 %649
  %651 = load i8, ptr %650, align 1, !tbaa !13
  %652 = zext i8 %651 to i64
  %653 = shl nuw nsw i64 %652, 8
  %654 = xor i64 %644, %653
  %655 = lshr i64 %636, 16
  %656 = and i64 %655, 255
  %657 = getelementptr inbounds [256 x i8], ptr %634, i64 0, i64 %656
  %658 = load i8, ptr %657, align 1, !tbaa !13
  %659 = zext i8 %658 to i64
  %660 = shl nuw nsw i64 %659, 16
  %661 = xor i64 %644, %660
  %662 = lshr i64 %637, 24
  %663 = and i64 %662, 255
  %664 = getelementptr inbounds [256 x i8], ptr %634, i64 0, i64 %663
  %665 = load i8, ptr %664, align 1, !tbaa !13
  %666 = zext i8 %665 to i64
  %667 = shl nuw nsw i64 %666, 24
  %668 = xor i64 %644, %667
  %669 = getelementptr inbounds i64, ptr %632, i64 6
  %670 = load i64, ptr %643, align 8, !tbaa !11
  %671 = and i64 %638, 255
  %672 = getelementptr inbounds [256 x i8], ptr %634, i64 0, i64 %671
  %673 = load i8, ptr %672, align 1, !tbaa !13
  %674 = lshr i64 %639, 8
  %675 = and i64 %674, 255
  %676 = getelementptr inbounds [256 x i8], ptr %634, i64 0, i64 %675
  %677 = load i8, ptr %676, align 1, !tbaa !13
  %678 = zext i8 %677 to i64
  %679 = shl nuw nsw i64 %678, 8
  %680 = xor i64 %670, %679
  %681 = lshr i64 %640, 16
  %682 = and i64 %681, 255
  %683 = getelementptr inbounds [256 x i8], ptr %634, i64 0, i64 %682
  %684 = load i8, ptr %683, align 1, !tbaa !13
  %685 = zext i8 %684 to i64
  %686 = shl nuw nsw i64 %685, 16
  %687 = xor i64 %670, %686
  %688 = lshr i64 %641, 24
  %689 = and i64 %688, 255
  %690 = getelementptr inbounds [256 x i8], ptr %634, i64 0, i64 %689
  %691 = load i8, ptr %690, align 1, !tbaa !13
  %692 = zext i8 %691 to i64
  %693 = shl nuw nsw i64 %692, 24
  %694 = xor i64 %670, %693
  %695 = getelementptr inbounds i64, ptr %632, i64 7
  %696 = load i64, ptr %669, align 8, !tbaa !11
  %697 = and i64 %636, 255
  %698 = getelementptr inbounds [256 x i8], ptr %634, i64 0, i64 %697
  %699 = load i8, ptr %698, align 1, !tbaa !13
  %700 = lshr i64 %637, 8
  %701 = and i64 %700, 255
  %702 = getelementptr inbounds [256 x i8], ptr %634, i64 0, i64 %701
  %703 = load i8, ptr %702, align 1, !tbaa !13
  %704 = zext i8 %703 to i64
  %705 = shl nuw nsw i64 %704, 8
  %706 = xor i64 %696, %705
  %707 = lshr i64 %633, 16
  %708 = and i64 %707, 255
  %709 = getelementptr inbounds [256 x i8], ptr %634, i64 0, i64 %708
  %710 = load i8, ptr %709, align 1, !tbaa !13
  %711 = zext i8 %710 to i64
  %712 = shl nuw nsw i64 %711, 16
  %713 = xor i64 %696, %712
  %714 = lshr i64 %635, 24
  %715 = and i64 %714, 255
  %716 = getelementptr inbounds [256 x i8], ptr %634, i64 0, i64 %715
  %717 = load i8, ptr %716, align 1, !tbaa !13
  %718 = zext i8 %717 to i64
  %719 = shl nuw nsw i64 %718, 24
  %720 = xor i64 %696, %719
  %721 = load i64, ptr %695, align 8, !tbaa !11
  %722 = and i64 %640, 255
  %723 = getelementptr inbounds [256 x i8], ptr %634, i64 0, i64 %722
  %724 = load i8, ptr %723, align 1, !tbaa !13
  %725 = lshr i64 %641, 8
  %726 = and i64 %725, 255
  %727 = getelementptr inbounds [256 x i8], ptr %634, i64 0, i64 %726
  %728 = load i8, ptr %727, align 1, !tbaa !13
  %729 = zext i8 %728 to i64
  %730 = shl nuw nsw i64 %729, 8
  %731 = xor i64 %721, %730
  %732 = lshr i64 %638, 16
  %733 = and i64 %732, 255
  %734 = getelementptr inbounds [256 x i8], ptr %634, i64 0, i64 %733
  %735 = load i8, ptr %734, align 1, !tbaa !13
  %736 = zext i8 %735 to i64
  %737 = shl nuw nsw i64 %736, 16
  %738 = xor i64 %721, %737
  %739 = lshr i64 %639, 24
  %740 = and i64 %739, 255
  %741 = getelementptr inbounds [256 x i8], ptr %634, i64 0, i64 %740
  %742 = load i8, ptr %741, align 1, !tbaa !13
  %743 = zext i8 %742 to i64
  %744 = shl nuw nsw i64 %743, 24
  %745 = xor i64 %721, %744
  %746 = trunc i64 %644 to i8
  %747 = xor i8 %647, %746
  store i8 %747, ptr %3, align 1, !tbaa !13
  %748 = lshr i64 %654, 8
  %749 = trunc i64 %748 to i8
  %750 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %749, ptr %750, align 1, !tbaa !13
  %751 = lshr i64 %661, 16
  %752 = trunc i64 %751 to i8
  %753 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 %752, ptr %753, align 1, !tbaa !13
  %754 = lshr i64 %668, 24
  %755 = trunc i64 %754 to i8
  %756 = getelementptr inbounds i8, ptr %3, i64 3
  store i8 %755, ptr %756, align 1, !tbaa !13
  %757 = trunc i64 %670 to i8
  %758 = xor i8 %673, %757
  %759 = getelementptr inbounds i8, ptr %3, i64 4
  store i8 %758, ptr %759, align 1, !tbaa !13
  %760 = lshr i64 %680, 8
  %761 = trunc i64 %760 to i8
  %762 = getelementptr inbounds i8, ptr %3, i64 5
  store i8 %761, ptr %762, align 1, !tbaa !13
  %763 = lshr i64 %687, 16
  %764 = trunc i64 %763 to i8
  %765 = getelementptr inbounds i8, ptr %3, i64 6
  store i8 %764, ptr %765, align 1, !tbaa !13
  %766 = lshr i64 %694, 24
  %767 = trunc i64 %766 to i8
  %768 = getelementptr inbounds i8, ptr %3, i64 7
  store i8 %767, ptr %768, align 1, !tbaa !13
  %769 = trunc i64 %696 to i8
  %770 = xor i8 %699, %769
  %771 = getelementptr inbounds i8, ptr %3, i64 8
  store i8 %770, ptr %771, align 1, !tbaa !13
  %772 = lshr i64 %706, 8
  %773 = trunc i64 %772 to i8
  %774 = getelementptr inbounds i8, ptr %3, i64 9
  store i8 %773, ptr %774, align 1, !tbaa !13
  %775 = lshr i64 %713, 16
  %776 = trunc i64 %775 to i8
  %777 = getelementptr inbounds i8, ptr %3, i64 10
  store i8 %776, ptr %777, align 1, !tbaa !13
  %778 = lshr i64 %720, 24
  %779 = trunc i64 %778 to i8
  %780 = getelementptr inbounds i8, ptr %3, i64 11
  store i8 %779, ptr %780, align 1, !tbaa !13
  %781 = trunc i64 %721 to i8
  %782 = xor i8 %724, %781
  %783 = getelementptr inbounds i8, ptr %3, i64 12
  store i8 %782, ptr %783, align 1, !tbaa !13
  %784 = lshr i64 %731, 8
  %785 = trunc i64 %784 to i8
  %786 = getelementptr inbounds i8, ptr %3, i64 13
  store i8 %785, ptr %786, align 1, !tbaa !13
  %787 = lshr i64 %738, 16
  %788 = trunc i64 %787 to i8
  %789 = getelementptr inbounds i8, ptr %3, i64 14
  store i8 %788, ptr %789, align 1, !tbaa !13
  %790 = lshr i64 %745, 24
  %791 = trunc i64 %790 to i8
  %792 = getelementptr inbounds i8, ptr %3, i64 15
  store i8 %791, ptr %792, align 1, !tbaa !13
  ret i32 0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @aes_crypt_cbc(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  %8 = and i64 %2, 15
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %206

10:                                               ; preds = %6
  %11 = icmp eq i32 %1, 0
  %12 = icmp sgt i64 %2, 0
  br i1 %11, label %30, label %13

13:                                               ; preds = %10
  br i1 %12, label %14, label %206

14:                                               ; preds = %13
  %15 = getelementptr inbounds i8, ptr %3, i64 1
  %16 = getelementptr inbounds i8, ptr %3, i64 2
  %17 = getelementptr inbounds i8, ptr %3, i64 3
  %18 = getelementptr inbounds i8, ptr %3, i64 4
  %19 = getelementptr inbounds i8, ptr %3, i64 5
  %20 = getelementptr inbounds i8, ptr %3, i64 6
  %21 = getelementptr inbounds i8, ptr %3, i64 7
  %22 = getelementptr inbounds i8, ptr %3, i64 8
  %23 = getelementptr inbounds i8, ptr %3, i64 9
  %24 = getelementptr inbounds i8, ptr %3, i64 10
  %25 = getelementptr inbounds i8, ptr %3, i64 11
  %26 = getelementptr inbounds i8, ptr %3, i64 12
  %27 = getelementptr inbounds i8, ptr %3, i64 13
  %28 = getelementptr inbounds i8, ptr %3, i64 14
  %29 = getelementptr inbounds i8, ptr %3, i64 15
  br label %119

30:                                               ; preds = %10
  br i1 %12, label %31, label %206

31:                                               ; preds = %30
  %32 = getelementptr inbounds i8, ptr %3, i64 1
  %33 = getelementptr inbounds i8, ptr %3, i64 2
  %34 = getelementptr inbounds i8, ptr %3, i64 3
  %35 = getelementptr inbounds i8, ptr %3, i64 4
  %36 = getelementptr inbounds i8, ptr %3, i64 5
  %37 = getelementptr inbounds i8, ptr %3, i64 6
  %38 = getelementptr inbounds i8, ptr %3, i64 7
  %39 = getelementptr inbounds i8, ptr %3, i64 8
  %40 = getelementptr inbounds i8, ptr %3, i64 9
  %41 = getelementptr inbounds i8, ptr %3, i64 10
  %42 = getelementptr inbounds i8, ptr %3, i64 11
  %43 = getelementptr inbounds i8, ptr %3, i64 12
  %44 = getelementptr inbounds i8, ptr %3, i64 13
  %45 = getelementptr inbounds i8, ptr %3, i64 14
  %46 = getelementptr inbounds i8, ptr %3, i64 15
  br label %47

47:                                               ; preds = %31, %47
  %48 = phi ptr [ %116, %47 ], [ %5, %31 ]
  %49 = phi ptr [ %115, %47 ], [ %4, %31 ]
  %50 = phi i64 [ %117, %47 ], [ %2, %31 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(16) %49, i64 16, i1 false)
  %51 = tail call i32 @aes_crypt_ecb(ptr noundef %0, i32 noundef 0, ptr noundef %49, ptr noundef %48)
  %52 = load i8, ptr %48, align 1, !tbaa !13
  %53 = load i8, ptr %3, align 1, !tbaa !13
  %54 = xor i8 %53, %52
  store i8 %54, ptr %48, align 1, !tbaa !13
  %55 = getelementptr inbounds i8, ptr %48, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !13
  %57 = load i8, ptr %32, align 1, !tbaa !13
  %58 = xor i8 %57, %56
  store i8 %58, ptr %55, align 1, !tbaa !13
  %59 = getelementptr inbounds i8, ptr %48, i64 2
  %60 = load i8, ptr %59, align 1, !tbaa !13
  %61 = load i8, ptr %33, align 1, !tbaa !13
  %62 = xor i8 %61, %60
  store i8 %62, ptr %59, align 1, !tbaa !13
  %63 = getelementptr inbounds i8, ptr %48, i64 3
  %64 = load i8, ptr %63, align 1, !tbaa !13
  %65 = load i8, ptr %34, align 1, !tbaa !13
  %66 = xor i8 %65, %64
  store i8 %66, ptr %63, align 1, !tbaa !13
  %67 = getelementptr inbounds i8, ptr %48, i64 4
  %68 = load i8, ptr %67, align 1, !tbaa !13
  %69 = load i8, ptr %35, align 1, !tbaa !13
  %70 = xor i8 %69, %68
  store i8 %70, ptr %67, align 1, !tbaa !13
  %71 = getelementptr inbounds i8, ptr %48, i64 5
  %72 = load i8, ptr %71, align 1, !tbaa !13
  %73 = load i8, ptr %36, align 1, !tbaa !13
  %74 = xor i8 %73, %72
  store i8 %74, ptr %71, align 1, !tbaa !13
  %75 = getelementptr inbounds i8, ptr %48, i64 6
  %76 = load i8, ptr %75, align 1, !tbaa !13
  %77 = load i8, ptr %37, align 1, !tbaa !13
  %78 = xor i8 %77, %76
  store i8 %78, ptr %75, align 1, !tbaa !13
  %79 = getelementptr inbounds i8, ptr %48, i64 7
  %80 = load i8, ptr %79, align 1, !tbaa !13
  %81 = load i8, ptr %38, align 1, !tbaa !13
  %82 = xor i8 %81, %80
  store i8 %82, ptr %79, align 1, !tbaa !13
  %83 = getelementptr inbounds i8, ptr %48, i64 8
  %84 = load i8, ptr %83, align 1, !tbaa !13
  %85 = load i8, ptr %39, align 1, !tbaa !13
  %86 = xor i8 %85, %84
  store i8 %86, ptr %83, align 1, !tbaa !13
  %87 = getelementptr inbounds i8, ptr %48, i64 9
  %88 = load i8, ptr %87, align 1, !tbaa !13
  %89 = load i8, ptr %40, align 1, !tbaa !13
  %90 = xor i8 %89, %88
  store i8 %90, ptr %87, align 1, !tbaa !13
  %91 = getelementptr inbounds i8, ptr %48, i64 10
  %92 = load i8, ptr %91, align 1, !tbaa !13
  %93 = load i8, ptr %41, align 1, !tbaa !13
  %94 = xor i8 %93, %92
  store i8 %94, ptr %91, align 1, !tbaa !13
  %95 = getelementptr inbounds i8, ptr %48, i64 11
  %96 = load i8, ptr %95, align 1, !tbaa !13
  %97 = load i8, ptr %42, align 1, !tbaa !13
  %98 = xor i8 %97, %96
  store i8 %98, ptr %95, align 1, !tbaa !13
  %99 = getelementptr inbounds i8, ptr %48, i64 12
  %100 = load i8, ptr %99, align 1, !tbaa !13
  %101 = load i8, ptr %43, align 1, !tbaa !13
  %102 = xor i8 %101, %100
  store i8 %102, ptr %99, align 1, !tbaa !13
  %103 = getelementptr inbounds i8, ptr %48, i64 13
  %104 = load i8, ptr %103, align 1, !tbaa !13
  %105 = load i8, ptr %44, align 1, !tbaa !13
  %106 = xor i8 %105, %104
  store i8 %106, ptr %103, align 1, !tbaa !13
  %107 = getelementptr inbounds i8, ptr %48, i64 14
  %108 = load i8, ptr %107, align 1, !tbaa !13
  %109 = load i8, ptr %45, align 1, !tbaa !13
  %110 = xor i8 %109, %108
  store i8 %110, ptr %107, align 1, !tbaa !13
  %111 = getelementptr inbounds i8, ptr %48, i64 15
  %112 = load i8, ptr %111, align 1, !tbaa !13
  %113 = load i8, ptr %46, align 1, !tbaa !13
  %114 = xor i8 %113, %112
  store i8 %114, ptr %111, align 1, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false)
  %115 = getelementptr inbounds i8, ptr %49, i64 16
  %116 = getelementptr inbounds i8, ptr %48, i64 16
  %117 = add nsw i64 %50, -16
  %118 = icmp ugt i64 %50, 16
  br i1 %118, label %47, label %206, !llvm.loop !27

119:                                              ; preds = %14, %119
  %120 = phi ptr [ %203, %119 ], [ %5, %14 ]
  %121 = phi ptr [ %202, %119 ], [ %4, %14 ]
  %122 = phi i64 [ %204, %119 ], [ %2, %14 ]
  %123 = load i8, ptr %121, align 1, !tbaa !13
  %124 = load i8, ptr %3, align 1, !tbaa !13
  %125 = xor i8 %124, %123
  store i8 %125, ptr %120, align 1, !tbaa !13
  %126 = getelementptr inbounds i8, ptr %121, i64 1
  %127 = load i8, ptr %126, align 1, !tbaa !13
  %128 = load i8, ptr %15, align 1, !tbaa !13
  %129 = xor i8 %128, %127
  %130 = getelementptr inbounds i8, ptr %120, i64 1
  store i8 %129, ptr %130, align 1, !tbaa !13
  %131 = getelementptr inbounds i8, ptr %121, i64 2
  %132 = load i8, ptr %131, align 1, !tbaa !13
  %133 = load i8, ptr %16, align 1, !tbaa !13
  %134 = xor i8 %133, %132
  %135 = getelementptr inbounds i8, ptr %120, i64 2
  store i8 %134, ptr %135, align 1, !tbaa !13
  %136 = getelementptr inbounds i8, ptr %121, i64 3
  %137 = load i8, ptr %136, align 1, !tbaa !13
  %138 = load i8, ptr %17, align 1, !tbaa !13
  %139 = xor i8 %138, %137
  %140 = getelementptr inbounds i8, ptr %120, i64 3
  store i8 %139, ptr %140, align 1, !tbaa !13
  %141 = getelementptr inbounds i8, ptr %121, i64 4
  %142 = load i8, ptr %141, align 1, !tbaa !13
  %143 = load i8, ptr %18, align 1, !tbaa !13
  %144 = xor i8 %143, %142
  %145 = getelementptr inbounds i8, ptr %120, i64 4
  store i8 %144, ptr %145, align 1, !tbaa !13
  %146 = getelementptr inbounds i8, ptr %121, i64 5
  %147 = load i8, ptr %146, align 1, !tbaa !13
  %148 = load i8, ptr %19, align 1, !tbaa !13
  %149 = xor i8 %148, %147
  %150 = getelementptr inbounds i8, ptr %120, i64 5
  store i8 %149, ptr %150, align 1, !tbaa !13
  %151 = getelementptr inbounds i8, ptr %121, i64 6
  %152 = load i8, ptr %151, align 1, !tbaa !13
  %153 = load i8, ptr %20, align 1, !tbaa !13
  %154 = xor i8 %153, %152
  %155 = getelementptr inbounds i8, ptr %120, i64 6
  store i8 %154, ptr %155, align 1, !tbaa !13
  %156 = getelementptr inbounds i8, ptr %121, i64 7
  %157 = load i8, ptr %156, align 1, !tbaa !13
  %158 = load i8, ptr %21, align 1, !tbaa !13
  %159 = xor i8 %158, %157
  %160 = getelementptr inbounds i8, ptr %120, i64 7
  store i8 %159, ptr %160, align 1, !tbaa !13
  %161 = getelementptr inbounds i8, ptr %121, i64 8
  %162 = load i8, ptr %161, align 1, !tbaa !13
  %163 = load i8, ptr %22, align 1, !tbaa !13
  %164 = xor i8 %163, %162
  %165 = getelementptr inbounds i8, ptr %120, i64 8
  store i8 %164, ptr %165, align 1, !tbaa !13
  %166 = getelementptr inbounds i8, ptr %121, i64 9
  %167 = load i8, ptr %166, align 1, !tbaa !13
  %168 = load i8, ptr %23, align 1, !tbaa !13
  %169 = xor i8 %168, %167
  %170 = getelementptr inbounds i8, ptr %120, i64 9
  store i8 %169, ptr %170, align 1, !tbaa !13
  %171 = getelementptr inbounds i8, ptr %121, i64 10
  %172 = load i8, ptr %171, align 1, !tbaa !13
  %173 = load i8, ptr %24, align 1, !tbaa !13
  %174 = xor i8 %173, %172
  %175 = getelementptr inbounds i8, ptr %120, i64 10
  store i8 %174, ptr %175, align 1, !tbaa !13
  %176 = getelementptr inbounds i8, ptr %121, i64 11
  %177 = load i8, ptr %176, align 1, !tbaa !13
  %178 = load i8, ptr %25, align 1, !tbaa !13
  %179 = xor i8 %178, %177
  %180 = getelementptr inbounds i8, ptr %120, i64 11
  store i8 %179, ptr %180, align 1, !tbaa !13
  %181 = getelementptr inbounds i8, ptr %121, i64 12
  %182 = load i8, ptr %181, align 1, !tbaa !13
  %183 = load i8, ptr %26, align 1, !tbaa !13
  %184 = xor i8 %183, %182
  %185 = getelementptr inbounds i8, ptr %120, i64 12
  store i8 %184, ptr %185, align 1, !tbaa !13
  %186 = getelementptr inbounds i8, ptr %121, i64 13
  %187 = load i8, ptr %186, align 1, !tbaa !13
  %188 = load i8, ptr %27, align 1, !tbaa !13
  %189 = xor i8 %188, %187
  %190 = getelementptr inbounds i8, ptr %120, i64 13
  store i8 %189, ptr %190, align 1, !tbaa !13
  %191 = getelementptr inbounds i8, ptr %121, i64 14
  %192 = load i8, ptr %191, align 1, !tbaa !13
  %193 = load i8, ptr %28, align 1, !tbaa !13
  %194 = xor i8 %193, %192
  %195 = getelementptr inbounds i8, ptr %120, i64 14
  store i8 %194, ptr %195, align 1, !tbaa !13
  %196 = getelementptr inbounds i8, ptr %121, i64 15
  %197 = load i8, ptr %196, align 1, !tbaa !13
  %198 = load i8, ptr %29, align 1, !tbaa !13
  %199 = xor i8 %198, %197
  %200 = getelementptr inbounds i8, ptr %120, i64 15
  store i8 %199, ptr %200, align 1, !tbaa !13
  %201 = tail call i32 @aes_crypt_ecb(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %120, ptr noundef nonnull %120)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(16) %120, i64 16, i1 false)
  %202 = getelementptr inbounds i8, ptr %121, i64 16
  %203 = getelementptr inbounds i8, ptr %120, i64 16
  %204 = add nsw i64 %122, -16
  %205 = icmp ugt i64 %122, 16
  br i1 %205, label %119, label %206, !llvm.loop !28

206:                                              ; preds = %119, %47, %13, %30, %6
  %207 = phi i32 [ -2064, %6 ], [ 0, %30 ], [ 0, %13 ], [ 0, %47 ], [ 0, %119 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  ret i32 %207
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 16.0.0"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = !{!17, !6, i64 0}
!17 = !{!"", !6, i64 0, !18, i64 8, !7, i64 16}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!17, !18, i64 8}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
