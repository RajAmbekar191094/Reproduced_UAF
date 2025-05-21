; ModuleID = './md5.c'
source_filename = "./md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }

@fillbuf = internal unnamed_addr constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @md5_init_ctx(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 4, !tbaa !5
  %2 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 4
  %3 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 4, i64 1
  store i32 0, ptr %3, align 4, !tbaa !5
  store i32 0, ptr %2, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 5
  store i32 0, ptr %4, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @md5_read_ctx(ptr nocapture noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 4, !tbaa !11
  store i32 %3, ptr %1, align 1
  %4 = getelementptr inbounds i8, ptr %1, i64 4
  %5 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !12
  store i32 %6, ptr %4, align 1
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  %8 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !13
  store i32 %9, ptr %7, align 1
  %10 = getelementptr inbounds i8, ptr %1, i64 12
  %11 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !14
  store i32 %12, ptr %10, align 1
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @md5_finish_ctx(ptr noundef %0, ptr noundef returned writeonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !9
  %5 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = add i32 %6, %4
  store i32 %7, ptr %5, align 4, !tbaa !5
  %8 = icmp ult i32 %7, %4
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 4, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !5
  br label %13

13:                                               ; preds = %9, %2
  %14 = icmp ult i32 %4, 56
  %15 = select i1 %14, i64 16, i64 32
  %16 = shl i32 %7, 3
  %17 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 6
  %18 = add nsw i64 %15, -2
  %19 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 6, i64 %18
  store i32 %16, ptr %19, align 4, !tbaa !5
  %20 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 4, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !5
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %7, i32 3)
  %23 = add nsw i64 %15, -1
  %24 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 6, i64 %23
  store i32 %22, ptr %24, align 4, !tbaa !5
  %25 = zext i32 %4 to i64
  %26 = getelementptr inbounds i8, ptr %17, i64 %25
  %27 = shl nuw nsw i64 %18, 2
  %28 = sub nsw i64 %27, %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull align 16 @fillbuf, i64 %28, i1 false)
  %29 = shl nuw nsw i64 %15, 2
  tail call void @md5_process_block(ptr noundef nonnull %17, i64 noundef %29, ptr noundef nonnull %0) #12
  %30 = load i32, ptr %0, align 4, !tbaa !11
  store i32 %30, ptr %1, align 1
  %31 = getelementptr inbounds i8, ptr %1, i64 4
  %32 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !12
  store i32 %33, ptr %31, align 1
  %34 = getelementptr inbounds i8, ptr %1, i64 8
  %35 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !13
  store i32 %36, ptr %34, align 1
  %37 = getelementptr inbounds i8, ptr %1, i64 12
  %38 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !14
  store i32 %39, ptr %37, align 1
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @md5_process_block(ptr noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = lshr i64 %1, 2
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %2, align 4, !tbaa !11
  %7 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !13
  %11 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !14
  %13 = trunc i64 %1 to i32
  %14 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !5
  %16 = add i32 %15, %13
  store i32 %16, ptr %14, align 4, !tbaa !5
  %17 = lshr i64 %1, 32
  %18 = icmp ult i32 %16, %13
  %19 = zext i1 %18 to i64
  %20 = add nuw nsw i64 %17, %19
  %21 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 4, i64 1
  %22 = load i32, ptr %21, align 4, !tbaa !5
  %23 = trunc i64 %20 to i32
  %24 = add i32 %22, %23
  store i32 %24, ptr %21, align 4, !tbaa !5
  %25 = and i64 %1, -4
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %565

27:                                               ; preds = %3, %27
  %28 = phi ptr [ %190, %27 ], [ %0, %3 ]
  %29 = phi i32 [ %559, %27 ], [ %6, %3 ]
  %30 = phi i32 [ %561, %27 ], [ %8, %3 ]
  %31 = phi i32 [ %562, %27 ], [ %10, %3 ]
  %32 = phi i32 [ %563, %27 ], [ %12, %3 ]
  %33 = xor i32 %31, %32
  %34 = and i32 %30, %33
  %35 = xor i32 %34, %32
  %36 = load i32, ptr %28, align 4, !tbaa !5
  %37 = add i32 %29, -680876936
  %38 = add i32 %37, %35
  %39 = add i32 %38, %36
  %40 = getelementptr inbounds i32, ptr %28, i64 1
  %41 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 7)
  %42 = add i32 %41, %30
  %43 = xor i32 %30, %31
  %44 = and i32 %42, %43
  %45 = xor i32 %44, %31
  %46 = load i32, ptr %40, align 4, !tbaa !5
  %47 = add i32 %32, -389564586
  %48 = add i32 %47, %46
  %49 = add i32 %48, %45
  %50 = getelementptr inbounds i32, ptr %28, i64 2
  %51 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 12)
  %52 = add i32 %51, %42
  %53 = xor i32 %42, %30
  %54 = and i32 %52, %53
  %55 = xor i32 %54, %30
  %56 = load i32, ptr %50, align 4, !tbaa !5
  %57 = add i32 %31, 606105819
  %58 = add i32 %57, %56
  %59 = add i32 %58, %55
  %60 = getelementptr inbounds i32, ptr %28, i64 3
  %61 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 17)
  %62 = add i32 %61, %52
  %63 = xor i32 %52, %42
  %64 = and i32 %62, %63
  %65 = xor i32 %64, %42
  %66 = load i32, ptr %60, align 4, !tbaa !5
  %67 = add i32 %30, -1044525330
  %68 = add i32 %67, %66
  %69 = add i32 %68, %65
  %70 = getelementptr inbounds i32, ptr %28, i64 4
  %71 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 22)
  %72 = add i32 %71, %62
  %73 = xor i32 %62, %52
  %74 = and i32 %72, %73
  %75 = xor i32 %74, %52
  %76 = load i32, ptr %70, align 4, !tbaa !5
  %77 = add i32 %76, -176418897
  %78 = add i32 %77, %42
  %79 = add i32 %78, %75
  %80 = getelementptr inbounds i32, ptr %28, i64 5
  %81 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 7)
  %82 = add i32 %81, %72
  %83 = xor i32 %72, %62
  %84 = and i32 %82, %83
  %85 = xor i32 %84, %62
  %86 = load i32, ptr %80, align 4, !tbaa !5
  %87 = add i32 %86, 1200080426
  %88 = add i32 %87, %52
  %89 = add i32 %88, %85
  %90 = getelementptr inbounds i32, ptr %28, i64 6
  %91 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 12)
  %92 = add i32 %91, %82
  %93 = xor i32 %82, %72
  %94 = and i32 %92, %93
  %95 = xor i32 %94, %72
  %96 = load i32, ptr %90, align 4, !tbaa !5
  %97 = add i32 %96, -1473231341
  %98 = add i32 %97, %62
  %99 = add i32 %98, %95
  %100 = getelementptr inbounds i32, ptr %28, i64 7
  %101 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 17)
  %102 = add i32 %101, %92
  %103 = xor i32 %92, %82
  %104 = and i32 %102, %103
  %105 = xor i32 %104, %82
  %106 = load i32, ptr %100, align 4, !tbaa !5
  %107 = add i32 %106, -45705983
  %108 = add i32 %107, %72
  %109 = add i32 %108, %105
  %110 = getelementptr inbounds i32, ptr %28, i64 8
  %111 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 22)
  %112 = add i32 %111, %102
  %113 = xor i32 %102, %92
  %114 = and i32 %112, %113
  %115 = xor i32 %114, %92
  %116 = load i32, ptr %110, align 4, !tbaa !5
  %117 = add i32 %116, 1770035416
  %118 = add i32 %117, %82
  %119 = add i32 %118, %115
  %120 = getelementptr inbounds i32, ptr %28, i64 9
  %121 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 7)
  %122 = add i32 %121, %112
  %123 = xor i32 %112, %102
  %124 = and i32 %122, %123
  %125 = xor i32 %124, %102
  %126 = load i32, ptr %120, align 4, !tbaa !5
  %127 = add i32 %126, -1958414417
  %128 = add i32 %127, %92
  %129 = add i32 %128, %125
  %130 = getelementptr inbounds i32, ptr %28, i64 10
  %131 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 12)
  %132 = add i32 %131, %122
  %133 = xor i32 %122, %112
  %134 = and i32 %132, %133
  %135 = xor i32 %134, %112
  %136 = load i32, ptr %130, align 4, !tbaa !5
  %137 = add i32 %136, -42063
  %138 = add i32 %137, %102
  %139 = add i32 %138, %135
  %140 = getelementptr inbounds i32, ptr %28, i64 11
  %141 = tail call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 17)
  %142 = add i32 %141, %132
  %143 = xor i32 %132, %122
  %144 = and i32 %142, %143
  %145 = xor i32 %144, %122
  %146 = load i32, ptr %140, align 4, !tbaa !5
  %147 = add i32 %146, -1990404162
  %148 = add i32 %147, %112
  %149 = add i32 %148, %145
  %150 = getelementptr inbounds i32, ptr %28, i64 12
  %151 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 22)
  %152 = add i32 %151, %142
  %153 = xor i32 %142, %132
  %154 = and i32 %152, %153
  %155 = xor i32 %154, %132
  %156 = load i32, ptr %150, align 4, !tbaa !5
  %157 = add i32 %156, 1804603682
  %158 = add i32 %157, %122
  %159 = add i32 %158, %155
  %160 = getelementptr inbounds i32, ptr %28, i64 13
  %161 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 7)
  %162 = add i32 %161, %152
  %163 = xor i32 %152, %142
  %164 = and i32 %162, %163
  %165 = xor i32 %164, %142
  %166 = load i32, ptr %160, align 4, !tbaa !5
  %167 = add i32 %166, -40341101
  %168 = add i32 %167, %132
  %169 = add i32 %168, %165
  %170 = getelementptr inbounds i32, ptr %28, i64 14
  %171 = tail call i32 @llvm.fshl.i32(i32 %169, i32 %169, i32 12)
  %172 = add i32 %171, %162
  %173 = xor i32 %162, %152
  %174 = and i32 %172, %173
  %175 = xor i32 %174, %152
  %176 = load i32, ptr %170, align 4, !tbaa !5
  %177 = add i32 %176, -1502002290
  %178 = add i32 %177, %142
  %179 = add i32 %178, %175
  %180 = getelementptr inbounds i32, ptr %28, i64 15
  %181 = tail call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 17)
  %182 = add i32 %181, %172
  %183 = xor i32 %172, %162
  %184 = and i32 %182, %183
  %185 = xor i32 %184, %162
  %186 = load i32, ptr %180, align 4, !tbaa !5
  %187 = add i32 %186, 1236535329
  %188 = add i32 %187, %152
  %189 = add i32 %188, %185
  %190 = getelementptr inbounds i32, ptr %28, i64 16
  %191 = tail call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 22)
  %192 = add i32 %191, %182
  %193 = xor i32 %192, %182
  %194 = and i32 %193, %172
  %195 = xor i32 %194, %182
  %196 = add i32 %46, -165796510
  %197 = add i32 %196, %162
  %198 = add i32 %197, %195
  %199 = tail call i32 @llvm.fshl.i32(i32 %198, i32 %198, i32 5)
  %200 = add i32 %199, %192
  %201 = xor i32 %200, %192
  %202 = and i32 %201, %182
  %203 = xor i32 %202, %192
  %204 = add i32 %96, -1069501632
  %205 = add i32 %204, %172
  %206 = add i32 %205, %203
  %207 = tail call i32 @llvm.fshl.i32(i32 %206, i32 %206, i32 9)
  %208 = add i32 %207, %200
  %209 = xor i32 %208, %200
  %210 = and i32 %209, %192
  %211 = xor i32 %210, %200
  %212 = add i32 %146, 643717713
  %213 = add i32 %212, %182
  %214 = add i32 %213, %211
  %215 = tail call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 14)
  %216 = add i32 %215, %208
  %217 = xor i32 %216, %208
  %218 = and i32 %217, %200
  %219 = xor i32 %218, %208
  %220 = add i32 %36, -373897302
  %221 = add i32 %220, %192
  %222 = add i32 %221, %219
  %223 = tail call i32 @llvm.fshl.i32(i32 %222, i32 %222, i32 20)
  %224 = add i32 %223, %216
  %225 = xor i32 %224, %216
  %226 = and i32 %225, %208
  %227 = xor i32 %226, %216
  %228 = add i32 %86, -701558691
  %229 = add i32 %228, %200
  %230 = add i32 %229, %227
  %231 = tail call i32 @llvm.fshl.i32(i32 %230, i32 %230, i32 5)
  %232 = add i32 %231, %224
  %233 = xor i32 %232, %224
  %234 = and i32 %233, %216
  %235 = xor i32 %234, %224
  %236 = add i32 %136, 38016083
  %237 = add i32 %236, %208
  %238 = add i32 %237, %235
  %239 = tail call i32 @llvm.fshl.i32(i32 %238, i32 %238, i32 9)
  %240 = add i32 %239, %232
  %241 = xor i32 %240, %232
  %242 = and i32 %241, %224
  %243 = xor i32 %242, %232
  %244 = add i32 %186, -660478335
  %245 = add i32 %244, %216
  %246 = add i32 %245, %243
  %247 = tail call i32 @llvm.fshl.i32(i32 %246, i32 %246, i32 14)
  %248 = add i32 %247, %240
  %249 = xor i32 %248, %240
  %250 = and i32 %249, %232
  %251 = xor i32 %250, %240
  %252 = add i32 %76, -405537848
  %253 = add i32 %252, %224
  %254 = add i32 %253, %251
  %255 = tail call i32 @llvm.fshl.i32(i32 %254, i32 %254, i32 20)
  %256 = add i32 %255, %248
  %257 = xor i32 %256, %248
  %258 = and i32 %257, %240
  %259 = xor i32 %258, %248
  %260 = add i32 %126, 568446438
  %261 = add i32 %260, %232
  %262 = add i32 %261, %259
  %263 = tail call i32 @llvm.fshl.i32(i32 %262, i32 %262, i32 5)
  %264 = add i32 %263, %256
  %265 = xor i32 %264, %256
  %266 = and i32 %265, %248
  %267 = xor i32 %266, %256
  %268 = add i32 %176, -1019803690
  %269 = add i32 %268, %240
  %270 = add i32 %269, %267
  %271 = tail call i32 @llvm.fshl.i32(i32 %270, i32 %270, i32 9)
  %272 = add i32 %271, %264
  %273 = xor i32 %272, %264
  %274 = and i32 %273, %256
  %275 = xor i32 %274, %264
  %276 = add i32 %66, -187363961
  %277 = add i32 %276, %248
  %278 = add i32 %277, %275
  %279 = tail call i32 @llvm.fshl.i32(i32 %278, i32 %278, i32 14)
  %280 = add i32 %279, %272
  %281 = xor i32 %280, %272
  %282 = and i32 %281, %264
  %283 = xor i32 %282, %272
  %284 = add i32 %116, 1163531501
  %285 = add i32 %284, %256
  %286 = add i32 %285, %283
  %287 = tail call i32 @llvm.fshl.i32(i32 %286, i32 %286, i32 20)
  %288 = add i32 %287, %280
  %289 = xor i32 %288, %280
  %290 = and i32 %289, %272
  %291 = xor i32 %290, %280
  %292 = add i32 %166, -1444681467
  %293 = add i32 %292, %264
  %294 = add i32 %293, %291
  %295 = tail call i32 @llvm.fshl.i32(i32 %294, i32 %294, i32 5)
  %296 = add i32 %295, %288
  %297 = xor i32 %296, %288
  %298 = and i32 %297, %280
  %299 = xor i32 %298, %288
  %300 = add i32 %56, -51403784
  %301 = add i32 %300, %272
  %302 = add i32 %301, %299
  %303 = tail call i32 @llvm.fshl.i32(i32 %302, i32 %302, i32 9)
  %304 = add i32 %303, %296
  %305 = xor i32 %304, %296
  %306 = and i32 %305, %288
  %307 = xor i32 %306, %296
  %308 = add i32 %106, 1735328473
  %309 = add i32 %308, %280
  %310 = add i32 %309, %307
  %311 = tail call i32 @llvm.fshl.i32(i32 %310, i32 %310, i32 14)
  %312 = add i32 %311, %304
  %313 = xor i32 %312, %304
  %314 = and i32 %313, %296
  %315 = xor i32 %314, %304
  %316 = add i32 %156, -1926607734
  %317 = add i32 %316, %288
  %318 = add i32 %317, %315
  %319 = tail call i32 @llvm.fshl.i32(i32 %318, i32 %318, i32 20)
  %320 = add i32 %319, %312
  %321 = xor i32 %313, %320
  %322 = add i32 %86, -378558
  %323 = add i32 %322, %296
  %324 = add i32 %323, %321
  %325 = tail call i32 @llvm.fshl.i32(i32 %324, i32 %324, i32 4)
  %326 = add i32 %325, %320
  %327 = xor i32 %320, %312
  %328 = xor i32 %327, %326
  %329 = add i32 %116, -2022574463
  %330 = add i32 %329, %304
  %331 = add i32 %330, %328
  %332 = tail call i32 @llvm.fshl.i32(i32 %331, i32 %331, i32 11)
  %333 = add i32 %332, %326
  %334 = xor i32 %326, %320
  %335 = xor i32 %334, %333
  %336 = add i32 %146, 1839030562
  %337 = add i32 %336, %312
  %338 = add i32 %337, %335
  %339 = tail call i32 @llvm.fshl.i32(i32 %338, i32 %338, i32 16)
  %340 = add i32 %339, %333
  %341 = xor i32 %333, %326
  %342 = xor i32 %341, %340
  %343 = add i32 %176, -35309556
  %344 = add i32 %343, %320
  %345 = add i32 %344, %342
  %346 = tail call i32 @llvm.fshl.i32(i32 %345, i32 %345, i32 23)
  %347 = add i32 %346, %340
  %348 = xor i32 %340, %333
  %349 = xor i32 %348, %347
  %350 = add i32 %46, -1530992060
  %351 = add i32 %350, %326
  %352 = add i32 %351, %349
  %353 = tail call i32 @llvm.fshl.i32(i32 %352, i32 %352, i32 4)
  %354 = add i32 %353, %347
  %355 = xor i32 %347, %340
  %356 = xor i32 %355, %354
  %357 = add i32 %76, 1272893353
  %358 = add i32 %357, %333
  %359 = add i32 %358, %356
  %360 = tail call i32 @llvm.fshl.i32(i32 %359, i32 %359, i32 11)
  %361 = add i32 %360, %354
  %362 = xor i32 %354, %347
  %363 = xor i32 %362, %361
  %364 = add i32 %106, -155497632
  %365 = add i32 %364, %340
  %366 = add i32 %365, %363
  %367 = tail call i32 @llvm.fshl.i32(i32 %366, i32 %366, i32 16)
  %368 = add i32 %367, %361
  %369 = xor i32 %361, %354
  %370 = xor i32 %369, %368
  %371 = add i32 %136, -1094730640
  %372 = add i32 %371, %347
  %373 = add i32 %372, %370
  %374 = tail call i32 @llvm.fshl.i32(i32 %373, i32 %373, i32 23)
  %375 = add i32 %374, %368
  %376 = xor i32 %368, %361
  %377 = xor i32 %376, %375
  %378 = add i32 %166, 681279174
  %379 = add i32 %378, %354
  %380 = add i32 %379, %377
  %381 = tail call i32 @llvm.fshl.i32(i32 %380, i32 %380, i32 4)
  %382 = add i32 %381, %375
  %383 = xor i32 %375, %368
  %384 = xor i32 %383, %382
  %385 = add i32 %36, -358537222
  %386 = add i32 %385, %361
  %387 = add i32 %386, %384
  %388 = tail call i32 @llvm.fshl.i32(i32 %387, i32 %387, i32 11)
  %389 = add i32 %388, %382
  %390 = xor i32 %382, %375
  %391 = xor i32 %390, %389
  %392 = add i32 %66, -722521979
  %393 = add i32 %392, %368
  %394 = add i32 %393, %391
  %395 = tail call i32 @llvm.fshl.i32(i32 %394, i32 %394, i32 16)
  %396 = add i32 %395, %389
  %397 = xor i32 %389, %382
  %398 = xor i32 %397, %396
  %399 = add i32 %96, 76029189
  %400 = add i32 %399, %375
  %401 = add i32 %400, %398
  %402 = tail call i32 @llvm.fshl.i32(i32 %401, i32 %401, i32 23)
  %403 = add i32 %402, %396
  %404 = xor i32 %396, %389
  %405 = xor i32 %404, %403
  %406 = add i32 %126, -640364487
  %407 = add i32 %406, %382
  %408 = add i32 %407, %405
  %409 = tail call i32 @llvm.fshl.i32(i32 %408, i32 %408, i32 4)
  %410 = add i32 %409, %403
  %411 = xor i32 %403, %396
  %412 = xor i32 %411, %410
  %413 = add i32 %156, -421815835
  %414 = add i32 %413, %389
  %415 = add i32 %414, %412
  %416 = tail call i32 @llvm.fshl.i32(i32 %415, i32 %415, i32 11)
  %417 = add i32 %416, %410
  %418 = xor i32 %410, %403
  %419 = xor i32 %418, %417
  %420 = add i32 %186, 530742520
  %421 = add i32 %420, %396
  %422 = add i32 %421, %419
  %423 = tail call i32 @llvm.fshl.i32(i32 %422, i32 %422, i32 16)
  %424 = add i32 %423, %417
  %425 = xor i32 %417, %410
  %426 = xor i32 %425, %424
  %427 = add i32 %56, -995338651
  %428 = add i32 %427, %403
  %429 = add i32 %428, %426
  %430 = tail call i32 @llvm.fshl.i32(i32 %429, i32 %429, i32 23)
  %431 = add i32 %430, %424
  %432 = xor i32 %417, -1
  %433 = or i32 %431, %432
  %434 = xor i32 %433, %424
  %435 = add i32 %36, -198630844
  %436 = add i32 %435, %410
  %437 = add i32 %436, %434
  %438 = tail call i32 @llvm.fshl.i32(i32 %437, i32 %437, i32 6)
  %439 = add i32 %438, %431
  %440 = xor i32 %424, -1
  %441 = or i32 %439, %440
  %442 = xor i32 %441, %431
  %443 = add i32 %106, 1126891415
  %444 = add i32 %443, %417
  %445 = add i32 %444, %442
  %446 = tail call i32 @llvm.fshl.i32(i32 %445, i32 %445, i32 10)
  %447 = add i32 %446, %439
  %448 = xor i32 %431, -1
  %449 = or i32 %447, %448
  %450 = xor i32 %449, %439
  %451 = add i32 %176, -1416354905
  %452 = add i32 %451, %424
  %453 = add i32 %452, %450
  %454 = tail call i32 @llvm.fshl.i32(i32 %453, i32 %453, i32 15)
  %455 = add i32 %454, %447
  %456 = xor i32 %439, -1
  %457 = or i32 %455, %456
  %458 = xor i32 %457, %447
  %459 = add i32 %86, -57434055
  %460 = add i32 %459, %431
  %461 = add i32 %460, %458
  %462 = tail call i32 @llvm.fshl.i32(i32 %461, i32 %461, i32 21)
  %463 = add i32 %462, %455
  %464 = xor i32 %447, -1
  %465 = or i32 %463, %464
  %466 = xor i32 %465, %455
  %467 = add i32 %156, 1700485571
  %468 = add i32 %467, %439
  %469 = add i32 %468, %466
  %470 = tail call i32 @llvm.fshl.i32(i32 %469, i32 %469, i32 6)
  %471 = add i32 %470, %463
  %472 = xor i32 %455, -1
  %473 = or i32 %471, %472
  %474 = xor i32 %473, %463
  %475 = add i32 %66, -1894986606
  %476 = add i32 %475, %447
  %477 = add i32 %476, %474
  %478 = tail call i32 @llvm.fshl.i32(i32 %477, i32 %477, i32 10)
  %479 = add i32 %478, %471
  %480 = xor i32 %463, -1
  %481 = or i32 %479, %480
  %482 = xor i32 %481, %471
  %483 = add i32 %136, -1051523
  %484 = add i32 %483, %455
  %485 = add i32 %484, %482
  %486 = tail call i32 @llvm.fshl.i32(i32 %485, i32 %485, i32 15)
  %487 = add i32 %486, %479
  %488 = xor i32 %471, -1
  %489 = or i32 %487, %488
  %490 = xor i32 %489, %479
  %491 = add i32 %46, -2054922799
  %492 = add i32 %491, %463
  %493 = add i32 %492, %490
  %494 = tail call i32 @llvm.fshl.i32(i32 %493, i32 %493, i32 21)
  %495 = add i32 %494, %487
  %496 = xor i32 %479, -1
  %497 = or i32 %495, %496
  %498 = xor i32 %497, %487
  %499 = add i32 %116, 1873313359
  %500 = add i32 %499, %471
  %501 = add i32 %500, %498
  %502 = tail call i32 @llvm.fshl.i32(i32 %501, i32 %501, i32 6)
  %503 = add i32 %502, %495
  %504 = xor i32 %487, -1
  %505 = or i32 %503, %504
  %506 = xor i32 %505, %495
  %507 = add i32 %186, -30611744
  %508 = add i32 %507, %479
  %509 = add i32 %508, %506
  %510 = tail call i32 @llvm.fshl.i32(i32 %509, i32 %509, i32 10)
  %511 = add i32 %510, %503
  %512 = xor i32 %495, -1
  %513 = or i32 %511, %512
  %514 = xor i32 %513, %503
  %515 = add i32 %96, -1560198380
  %516 = add i32 %515, %487
  %517 = add i32 %516, %514
  %518 = tail call i32 @llvm.fshl.i32(i32 %517, i32 %517, i32 15)
  %519 = add i32 %518, %511
  %520 = xor i32 %503, -1
  %521 = or i32 %519, %520
  %522 = xor i32 %521, %511
  %523 = add i32 %166, 1309151649
  %524 = add i32 %523, %495
  %525 = add i32 %524, %522
  %526 = tail call i32 @llvm.fshl.i32(i32 %525, i32 %525, i32 21)
  %527 = add i32 %526, %519
  %528 = xor i32 %511, -1
  %529 = or i32 %527, %528
  %530 = xor i32 %529, %519
  %531 = add i32 %76, -145523070
  %532 = add i32 %531, %503
  %533 = add i32 %532, %530
  %534 = tail call i32 @llvm.fshl.i32(i32 %533, i32 %533, i32 6)
  %535 = add i32 %534, %527
  %536 = xor i32 %519, -1
  %537 = or i32 %535, %536
  %538 = xor i32 %537, %527
  %539 = add i32 %146, -1120210379
  %540 = add i32 %539, %511
  %541 = add i32 %540, %538
  %542 = tail call i32 @llvm.fshl.i32(i32 %541, i32 %541, i32 10)
  %543 = add i32 %542, %535
  %544 = xor i32 %527, -1
  %545 = or i32 %543, %544
  %546 = xor i32 %545, %535
  %547 = add i32 %56, 718787259
  %548 = add i32 %547, %519
  %549 = add i32 %548, %546
  %550 = tail call i32 @llvm.fshl.i32(i32 %549, i32 %549, i32 15)
  %551 = add i32 %550, %543
  %552 = xor i32 %535, -1
  %553 = or i32 %551, %552
  %554 = xor i32 %553, %543
  %555 = add i32 %126, -343485551
  %556 = add i32 %555, %527
  %557 = add i32 %556, %554
  %558 = tail call i32 @llvm.fshl.i32(i32 %557, i32 %557, i32 21)
  %559 = add i32 %535, %29
  %560 = add i32 %551, %30
  %561 = add i32 %560, %558
  %562 = add i32 %551, %31
  %563 = add i32 %543, %32
  %564 = icmp ult ptr %190, %5
  br i1 %564, label %27, label %565, !llvm.loop !15

565:                                              ; preds = %27, %3
  %566 = phi i32 [ %12, %3 ], [ %563, %27 ]
  %567 = phi i32 [ %10, %3 ], [ %562, %27 ]
  %568 = phi i32 [ %8, %3 ], [ %561, %27 ]
  %569 = phi i32 [ %6, %3 ], [ %559, %27 ]
  store i32 %569, ptr %2, align 4, !tbaa !11
  store i32 %568, ptr %7, align 4, !tbaa !12
  store i32 %567, ptr %9, align 4, !tbaa !13
  store i32 %566, ptr %11, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @md5_stream(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = alloca %struct.md5_ctx, align 16
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %3) #12
  %4 = tail call noalias dereferenceable_or_null(32840) ptr @malloc(i64 noundef 32840) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %57, label %6

6:                                                ; preds = %2
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %3, align 16, !tbaa !5
  %7 = getelementptr inbounds %struct.md5_ctx, ptr %3, i64 0, i32 4
  %8 = getelementptr inbounds %struct.md5_ctx, ptr %3, i64 0, i32 4, i64 1
  store i32 0, ptr %8, align 4, !tbaa !5
  store i32 0, ptr %7, align 16, !tbaa !5
  %9 = getelementptr inbounds %struct.md5_ctx, ptr %3, i64 0, i32 5
  store i32 0, ptr %9, align 8, !tbaa !9
  br label %10

10:                                               ; preds = %26, %6
  %11 = phi i64 [ 0, %6 ], [ %27, %26 ]
  %12 = getelementptr inbounds i8, ptr %4, i64 %11
  %13 = sub i64 32768, %11
  %14 = tail call i64 @fread(ptr noundef nonnull %12, i64 noundef 1, i64 noundef %13, ptr noundef %0)
  %15 = add i64 %14, %11
  %16 = icmp eq i64 %15, 32768
  br i1 %16, label %28, label %17

17:                                               ; preds = %10
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = tail call i32 @ferror(ptr noundef %0) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  tail call void @free(ptr noundef %4) #12
  br label %57

23:                                               ; preds = %17
  %24 = tail call i32 @feof(ptr noundef %0) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %28
  %27 = phi i64 [ %15, %23 ], [ 0, %28 ]
  br label %10

28:                                               ; preds = %10
  call void @md5_process_block(ptr noundef nonnull %4, i64 noundef 32768, ptr noundef nonnull %3) #12
  br label %26

29:                                               ; preds = %23, %19
  %30 = icmp eq i64 %15, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  call void @md5_process_bytes(ptr noundef nonnull %4, i64 noundef %15, ptr noundef nonnull %3) #12
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i32, ptr %9, align 8, !tbaa !9
  %34 = load i32, ptr %7, align 16, !tbaa !5
  %35 = add i32 %34, %33
  store i32 %35, ptr %7, align 16, !tbaa !5
  %36 = icmp ult i32 %35, %33
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, ptr %8, align 4, !tbaa !5
  %39 = add i32 %38, 1
  store i32 %39, ptr %8, align 4, !tbaa !5
  br label %40

40:                                               ; preds = %32, %37
  %41 = icmp ult i32 %33, 56
  %42 = select i1 %41, i64 16, i64 32
  %43 = shl i32 %35, 3
  %44 = getelementptr inbounds %struct.md5_ctx, ptr %3, i64 0, i32 6
  %45 = add nsw i64 %42, -2
  %46 = getelementptr inbounds %struct.md5_ctx, ptr %3, i64 0, i32 6, i64 %45
  store i32 %43, ptr %46, align 4, !tbaa !5
  %47 = load i32, ptr %8, align 4, !tbaa !5
  %48 = call i32 @llvm.fshl.i32(i32 %47, i32 %35, i32 3)
  %49 = add nsw i64 %42, -1
  %50 = getelementptr inbounds %struct.md5_ctx, ptr %3, i64 0, i32 6, i64 %49
  store i32 %48, ptr %50, align 8, !tbaa !5
  %51 = zext i32 %33 to i64
  %52 = getelementptr inbounds i8, ptr %44, i64 %51
  %53 = shl nuw nsw i64 %45, 2
  %54 = sub nsw i64 %53, %51
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %52, ptr nonnull align 16 @fillbuf, i64 %54, i1 false)
  %55 = shl nuw nsw i64 %42, 2
  call void @md5_process_block(ptr noundef nonnull %44, i64 noundef %55, ptr noundef nonnull %3) #12
  %56 = load <4 x i32>, ptr %3, align 16, !tbaa !5
  store <4 x i32> %56, ptr %1, align 1
  call void @free(ptr noundef %4) #12
  br label %57

57:                                               ; preds = %22, %2, %40
  %58 = phi i32 [ 0, %40 ], [ 1, %2 ], [ 1, %22 ]
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %3) #12
  ret i32 %58
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @md5_process_bytes(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64
  %9 = sub nsw i64 128, %8
  %10 = tail call i64 @llvm.umin.i64(i64 %9, i64 %1)
  %11 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 6
  %12 = getelementptr inbounds i8, ptr %11, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %12, ptr align 1 %0, i64 %10, i1 false)
  %13 = load i32, ptr %4, align 4, !tbaa !9
  %14 = trunc i64 %10 to i32
  %15 = add i32 %13, %14
  store i32 %15, ptr %4, align 4, !tbaa !9
  %16 = icmp ugt i32 %15, 64
  br i1 %16, label %17, label %26

17:                                               ; preds = %7
  %18 = and i32 %15, -64
  %19 = zext i32 %18 to i64
  tail call void @md5_process_block(ptr noundef nonnull %11, i64 noundef %19, ptr noundef nonnull %2) #12
  %20 = load i32, ptr %4, align 4, !tbaa !9
  %21 = and i32 %20, 63
  store i32 %21, ptr %4, align 4, !tbaa !9
  %22 = add i64 %10, %8
  %23 = and i64 %22, -64
  %24 = getelementptr inbounds i8, ptr %11, i64 %23
  %25 = zext i32 %21 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %11, ptr nonnull align 1 %24, i64 %25, i1 false)
  br label %26

26:                                               ; preds = %17, %7
  %27 = getelementptr inbounds i8, ptr %0, i64 %10
  %28 = sub i64 %1, %10
  br label %29

29:                                               ; preds = %26, %3
  %30 = phi i64 [ %28, %26 ], [ %1, %3 ]
  %31 = phi ptr [ %27, %26 ], [ %0, %3 ]
  %32 = icmp ugt i64 %30, 63
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = ptrtoint ptr %31 to i64
  %35 = and i64 %34, 3
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = icmp ugt i64 %30, 64
  br i1 %38, label %39, label %55

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 6
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi ptr [ %31, %39 ], [ %44, %41 ]
  %43 = phi i64 [ %30, %39 ], [ %45, %41 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %40, ptr noundef nonnull align 1 dereferenceable(64) %42, i64 64, i1 false)
  tail call void @md5_process_block(ptr noundef nonnull %40, i64 noundef 64, ptr noundef nonnull %2) #12
  %44 = getelementptr inbounds i8, ptr %42, i64 64
  %45 = add i64 %43, -64
  %46 = icmp ugt i64 %45, 64
  br i1 %46, label %41, label %55, !llvm.loop !17

47:                                               ; preds = %33
  %48 = and i64 %30, -64
  tail call void @md5_process_block(ptr noundef %31, i64 noundef %48, ptr noundef nonnull %2) #12
  %49 = getelementptr inbounds i8, ptr %31, i64 %48
  %50 = and i64 %30, 63
  br label %51

51:                                               ; preds = %47, %29
  %52 = phi i64 [ %50, %47 ], [ %30, %29 ]
  %53 = phi ptr [ %49, %47 ], [ %31, %29 ]
  %54 = icmp eq i64 %52, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %41, %37, %51
  %56 = phi ptr [ %53, %51 ], [ %31, %37 ], [ %44, %41 ]
  %57 = phi i64 [ %52, %51 ], [ 64, %37 ], [ %45, %41 ]
  %58 = load i32, ptr %4, align 4, !tbaa !9
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 6
  %61 = getelementptr inbounds i8, ptr %60, i64 %59
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %61, ptr align 1 %56, i64 %57, i1 false)
  %62 = add nuw nsw i64 %57, %59
  %63 = icmp ugt i64 %62, 63
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  tail call void @md5_process_block(ptr noundef nonnull %60, i64 noundef 64, ptr noundef nonnull %2) #12
  %65 = add nsw i64 %62, -64
  %66 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 6, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %60, ptr nonnull align 4 %66, i64 %65, i1 false)
  br label %67

67:                                               ; preds = %64, %55
  %68 = phi i64 [ %65, %64 ], [ %62, %55 ]
  %69 = trunc i64 %68 to i32
  store i32 %69, ptr %4, align 4, !tbaa !9
  br label %70

70:                                               ; preds = %67, %51
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @md5_buffer(ptr noundef %0, i64 noundef %1, ptr noundef returned writeonly %2) local_unnamed_addr #10 {
  %4 = alloca %struct.md5_ctx, align 16
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %4) #12
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %4, align 16, !tbaa !5
  %5 = getelementptr inbounds %struct.md5_ctx, ptr %4, i64 0, i32 4
  %6 = getelementptr inbounds %struct.md5_ctx, ptr %4, i64 0, i32 4, i64 1
  store i32 0, ptr %6, align 4, !tbaa !5
  store i32 0, ptr %5, align 16, !tbaa !5
  %7 = getelementptr inbounds %struct.md5_ctx, ptr %4, i64 0, i32 5
  store i32 0, ptr %7, align 8, !tbaa !9
  call void @md5_process_bytes(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4) #12
  %8 = load i32, ptr %7, align 8, !tbaa !9
  %9 = load i32, ptr %5, align 16, !tbaa !5
  %10 = add i32 %9, %8
  store i32 %10, ptr %5, align 16, !tbaa !5
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, ptr %6, align 4, !tbaa !5
  %14 = add i32 %13, 1
  store i32 %14, ptr %6, align 4, !tbaa !5
  br label %15

15:                                               ; preds = %3, %12
  %16 = icmp ult i32 %8, 56
  %17 = select i1 %16, i64 16, i64 32
  %18 = shl i32 %10, 3
  %19 = getelementptr inbounds %struct.md5_ctx, ptr %4, i64 0, i32 6
  %20 = add nsw i64 %17, -2
  %21 = getelementptr inbounds %struct.md5_ctx, ptr %4, i64 0, i32 6, i64 %20
  store i32 %18, ptr %21, align 4, !tbaa !5
  %22 = load i32, ptr %6, align 4, !tbaa !5
  %23 = call i32 @llvm.fshl.i32(i32 %22, i32 %10, i32 3)
  %24 = add nsw i64 %17, -1
  %25 = getelementptr inbounds %struct.md5_ctx, ptr %4, i64 0, i32 6, i64 %24
  store i32 %23, ptr %25, align 8, !tbaa !5
  %26 = zext i32 %8 to i64
  %27 = getelementptr inbounds i8, ptr %19, i64 %26
  %28 = shl nuw nsw i64 %20, 2
  %29 = sub nsw i64 %28, %26
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr nonnull align 16 @fillbuf, i64 %29, i1 false)
  %30 = shl nuw nsw i64 %17, 2
  call void @md5_process_block(ptr noundef nonnull %19, i64 noundef %30, ptr noundef nonnull %4) #12
  %31 = load <4 x i32>, ptr %4, align 16, !tbaa !5
  store <4 x i32> %31, ptr %2, align 1
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %4) #12
  ret ptr %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!9 = !{!10, !6, i64 24}
!10 = !{!"md5_ctx", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !7, i64 16, !6, i64 24, !7, i64 28}
!11 = !{!10, !6, i64 0}
!12 = !{!10, !6, i64 4}
!13 = !{!10, !6, i64 8}
!14 = !{!10, !6, i64 12}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
