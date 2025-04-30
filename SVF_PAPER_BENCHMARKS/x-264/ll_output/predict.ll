; ModuleID = 'common/predict.c'
source_filename = "common/predict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_predict_8x8_filter(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !77 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !86, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata ptr %1, metadata !87, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32 %2, metadata !88, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32 %3, metadata !89, metadata !DIExpression()), !dbg !94
  %5 = and i32 %2, 8, !dbg !95
  call void @llvm.dbg.value(metadata i32 %5, metadata !90, metadata !DIExpression()), !dbg !94
  %6 = and i32 %3, 1, !dbg !96
  %7 = icmp eq i32 %6, 0, !dbg !96
  br i1 %7, label %135, label %8, !dbg !98

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !99
  %10 = load i8, ptr %9, align 1, !dbg !99, !tbaa !101
  %11 = zext i8 %10 to i16, !dbg !99
  %12 = getelementptr inbounds i8, ptr %0, i64 -33, !dbg !104
  %13 = load i8, ptr %12, align 1, !dbg !104, !tbaa !101
  %14 = zext i8 %13 to i16, !dbg !104
  %15 = shl nuw nsw i16 %14, 1, !dbg !105
  %16 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !106
  %17 = load i8, ptr %16, align 1, !dbg !106, !tbaa !101
  %18 = zext i8 %17 to i16, !dbg !106
  %19 = add nuw nsw i16 %11, 2, !dbg !107
  %20 = add nuw nsw i16 %19, %15, !dbg !108
  %21 = add nuw nsw i16 %20, %18, !dbg !109
  %22 = lshr i16 %21, 2
  %23 = trunc i16 %22 to i8, !dbg !110
  %24 = getelementptr inbounds i8, ptr %1, i64 15, !dbg !111
  store i8 %23, ptr %24, align 1, !dbg !112, !tbaa !101
  %25 = icmp eq i32 %5, 0, !dbg !113
  %26 = load i8, ptr %9, align 1, !dbg !114
  %27 = load i8, ptr %12, align 1, !dbg !114
  %28 = select i1 %25, i8 %26, i8 %27, !dbg !114
  %29 = zext i8 %28 to i16, !dbg !113
  %30 = zext i8 %26 to i16, !dbg !115
  %31 = shl nuw nsw i16 %30, 1, !dbg !116
  %32 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !117
  %33 = load i8, ptr %32, align 1, !dbg !117, !tbaa !101
  %34 = zext i8 %33 to i16, !dbg !117
  %35 = add nuw nsw i16 %31, 2, !dbg !118
  %36 = add nuw nsw i16 %35, %29, !dbg !119
  %37 = add nuw nsw i16 %36, %34, !dbg !120
  %38 = lshr i16 %37, 2
  %39 = trunc i16 %38 to i8, !dbg !121
  %40 = getelementptr inbounds i8, ptr %1, i64 14, !dbg !122
  store i8 %39, ptr %40, align 1, !dbg !123, !tbaa !101
  %41 = load i8, ptr %9, align 1, !dbg !124, !tbaa !101
  %42 = zext i8 %41 to i16, !dbg !124
  %43 = load i8, ptr %32, align 1, !dbg !124, !tbaa !101
  %44 = zext i8 %43 to i16, !dbg !124
  %45 = shl nuw nsw i16 %44, 1, !dbg !124
  %46 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !124
  %47 = load i8, ptr %46, align 1, !dbg !124, !tbaa !101
  %48 = zext i8 %47 to i16, !dbg !124
  %49 = add nuw nsw i16 %42, 2, !dbg !124
  %50 = add nuw nsw i16 %49, %45, !dbg !124
  %51 = add nuw nsw i16 %50, %48, !dbg !124
  %52 = lshr i16 %51, 2
  %53 = trunc i16 %52 to i8, !dbg !124
  %54 = getelementptr inbounds i8, ptr %1, i64 13, !dbg !124
  store i8 %53, ptr %54, align 1, !dbg !124, !tbaa !101
  %55 = load i8, ptr %32, align 1, !dbg !125, !tbaa !101
  %56 = zext i8 %55 to i16, !dbg !125
  %57 = load i8, ptr %46, align 1, !dbg !125, !tbaa !101
  %58 = zext i8 %57 to i16, !dbg !125
  %59 = shl nuw nsw i16 %58, 1, !dbg !125
  %60 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !125
  %61 = load i8, ptr %60, align 1, !dbg !125, !tbaa !101
  %62 = zext i8 %61 to i16, !dbg !125
  %63 = add nuw nsw i16 %56, 2, !dbg !125
  %64 = add nuw nsw i16 %63, %59, !dbg !125
  %65 = add nuw nsw i16 %64, %62, !dbg !125
  %66 = lshr i16 %65, 2
  %67 = trunc i16 %66 to i8, !dbg !125
  %68 = getelementptr inbounds i8, ptr %1, i64 12, !dbg !125
  store i8 %67, ptr %68, align 1, !dbg !125, !tbaa !101
  %69 = load i8, ptr %46, align 1, !dbg !126, !tbaa !101
  %70 = zext i8 %69 to i16, !dbg !126
  %71 = load i8, ptr %60, align 1, !dbg !126, !tbaa !101
  %72 = zext i8 %71 to i16, !dbg !126
  %73 = shl nuw nsw i16 %72, 1, !dbg !126
  %74 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !126
  %75 = load i8, ptr %74, align 1, !dbg !126, !tbaa !101
  %76 = zext i8 %75 to i16, !dbg !126
  %77 = add nuw nsw i16 %70, 2, !dbg !126
  %78 = add nuw nsw i16 %77, %73, !dbg !126
  %79 = add nuw nsw i16 %78, %76, !dbg !126
  %80 = lshr i16 %79, 2
  %81 = trunc i16 %80 to i8, !dbg !126
  %82 = getelementptr inbounds i8, ptr %1, i64 11, !dbg !126
  store i8 %81, ptr %82, align 1, !dbg !126, !tbaa !101
  %83 = load i8, ptr %60, align 1, !dbg !127, !tbaa !101
  %84 = zext i8 %83 to i16, !dbg !127
  %85 = load i8, ptr %74, align 1, !dbg !127, !tbaa !101
  %86 = zext i8 %85 to i16, !dbg !127
  %87 = shl nuw nsw i16 %86, 1, !dbg !127
  %88 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !127
  %89 = load i8, ptr %88, align 1, !dbg !127, !tbaa !101
  %90 = zext i8 %89 to i16, !dbg !127
  %91 = add nuw nsw i16 %84, 2, !dbg !127
  %92 = add nuw nsw i16 %91, %87, !dbg !127
  %93 = add nuw nsw i16 %92, %90, !dbg !127
  %94 = lshr i16 %93, 2
  %95 = trunc i16 %94 to i8, !dbg !127
  %96 = getelementptr inbounds i8, ptr %1, i64 10, !dbg !127
  store i8 %95, ptr %96, align 1, !dbg !127, !tbaa !101
  %97 = load i8, ptr %74, align 1, !dbg !128, !tbaa !101
  %98 = zext i8 %97 to i16, !dbg !128
  %99 = load i8, ptr %88, align 1, !dbg !128, !tbaa !101
  %100 = zext i8 %99 to i16, !dbg !128
  %101 = shl nuw nsw i16 %100, 1, !dbg !128
  %102 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !128
  %103 = load i8, ptr %102, align 1, !dbg !128, !tbaa !101
  %104 = zext i8 %103 to i16, !dbg !128
  %105 = add nuw nsw i16 %98, 2, !dbg !128
  %106 = add nuw nsw i16 %105, %101, !dbg !128
  %107 = add nuw nsw i16 %106, %104, !dbg !128
  %108 = lshr i16 %107, 2
  %109 = trunc i16 %108 to i8, !dbg !128
  %110 = getelementptr inbounds i8, ptr %1, i64 9, !dbg !128
  store i8 %109, ptr %110, align 1, !dbg !128, !tbaa !101
  %111 = load i8, ptr %88, align 1, !dbg !129, !tbaa !101
  %112 = zext i8 %111 to i16, !dbg !129
  %113 = load i8, ptr %102, align 1, !dbg !129, !tbaa !101
  %114 = zext i8 %113 to i16, !dbg !129
  %115 = shl nuw nsw i16 %114, 1, !dbg !129
  %116 = getelementptr inbounds i8, ptr %0, i64 223, !dbg !129
  %117 = load i8, ptr %116, align 1, !dbg !129, !tbaa !101
  %118 = zext i8 %117 to i16, !dbg !129
  %119 = add nuw nsw i16 %112, 2, !dbg !129
  %120 = add nuw nsw i16 %119, %115, !dbg !129
  %121 = add nuw nsw i16 %120, %118, !dbg !129
  %122 = lshr i16 %121, 2
  %123 = trunc i16 %122 to i8, !dbg !129
  %124 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !129
  store i8 %123, ptr %124, align 1, !dbg !129, !tbaa !101
  %125 = load i8, ptr %102, align 1, !dbg !130, !tbaa !101
  %126 = zext i8 %125 to i16, !dbg !130
  %127 = load i8, ptr %116, align 1, !dbg !131, !tbaa !101
  %128 = zext i8 %127 to i16, !dbg !131
  %129 = mul nuw nsw i16 %128, 3, !dbg !132
  %130 = add nuw nsw i16 %126, 2, !dbg !133
  %131 = add nuw nsw i16 %130, %129, !dbg !134
  %132 = lshr i16 %131, 2
  %133 = trunc i16 %132 to i8, !dbg !135
  %134 = getelementptr inbounds i8, ptr %1, i64 7, !dbg !136
  store i8 %133, ptr %134, align 1, !dbg !137, !tbaa !101
  br label %135, !dbg !138

135:                                              ; preds = %8, %4
  %136 = and i32 %3, 2, !dbg !139
  %137 = icmp eq i32 %136, 0, !dbg !139
  br i1 %137, label %379, label %138, !dbg !140

138:                                              ; preds = %135
  %139 = and i32 %2, 4, !dbg !141
  call void @llvm.dbg.value(metadata i32 %139, metadata !91, metadata !DIExpression()), !dbg !142
  %140 = icmp eq i32 %5, 0, !dbg !143
  %141 = getelementptr inbounds i8, ptr %0, i64 -33, !dbg !143
  %142 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !143
  %143 = select i1 %140, ptr %142, ptr %141, !dbg !143
  %144 = load i8, ptr %143, align 1, !dbg !144, !tbaa !101
  %145 = zext i8 %144 to i16, !dbg !143
  %146 = load i8, ptr %142, align 1, !dbg !145, !tbaa !101
  %147 = zext i8 %146 to i16, !dbg !145
  %148 = shl nuw nsw i16 %147, 1, !dbg !146
  %149 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !147
  %150 = load i8, ptr %149, align 1, !dbg !147, !tbaa !101
  %151 = zext i8 %150 to i16, !dbg !147
  %152 = add nuw nsw i16 %145, 2, !dbg !148
  %153 = add nuw nsw i16 %152, %148, !dbg !149
  %154 = add nuw nsw i16 %153, %151, !dbg !150
  %155 = lshr i16 %154, 2
  %156 = trunc i16 %155 to i8, !dbg !151
  %157 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !152
  store i8 %156, ptr %157, align 1, !dbg !153, !tbaa !101
  %158 = load i8, ptr %142, align 1, !dbg !154, !tbaa !101
  %159 = zext i8 %158 to i16, !dbg !154
  %160 = load i8, ptr %149, align 1, !dbg !154, !tbaa !101
  %161 = zext i8 %160 to i16, !dbg !154
  %162 = shl nuw nsw i16 %161, 1, !dbg !154
  %163 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !154
  %164 = load i8, ptr %163, align 1, !dbg !154, !tbaa !101
  %165 = zext i8 %164 to i16, !dbg !154
  %166 = add nuw nsw i16 %159, 2, !dbg !154
  %167 = add nuw nsw i16 %166, %162, !dbg !154
  %168 = add nuw nsw i16 %167, %165, !dbg !154
  %169 = lshr i16 %168, 2
  %170 = trunc i16 %169 to i8, !dbg !154
  %171 = getelementptr inbounds i8, ptr %1, i64 17, !dbg !154
  store i8 %170, ptr %171, align 1, !dbg !154, !tbaa !101
  %172 = load i8, ptr %149, align 1, !dbg !155, !tbaa !101
  %173 = zext i8 %172 to i16, !dbg !155
  %174 = load i8, ptr %163, align 1, !dbg !155, !tbaa !101
  %175 = zext i8 %174 to i16, !dbg !155
  %176 = shl nuw nsw i16 %175, 1, !dbg !155
  %177 = getelementptr inbounds i8, ptr %0, i64 -29, !dbg !155
  %178 = load i8, ptr %177, align 1, !dbg !155, !tbaa !101
  %179 = zext i8 %178 to i16, !dbg !155
  %180 = add nuw nsw i16 %173, 2, !dbg !155
  %181 = add nuw nsw i16 %180, %176, !dbg !155
  %182 = add nuw nsw i16 %181, %179, !dbg !155
  %183 = lshr i16 %182, 2
  %184 = trunc i16 %183 to i8, !dbg !155
  %185 = getelementptr inbounds i8, ptr %1, i64 18, !dbg !155
  store i8 %184, ptr %185, align 1, !dbg !155, !tbaa !101
  %186 = load i8, ptr %163, align 1, !dbg !156, !tbaa !101
  %187 = zext i8 %186 to i16, !dbg !156
  %188 = load i8, ptr %177, align 1, !dbg !156, !tbaa !101
  %189 = zext i8 %188 to i16, !dbg !156
  %190 = shl nuw nsw i16 %189, 1, !dbg !156
  %191 = getelementptr inbounds i8, ptr %0, i64 -28, !dbg !156
  %192 = load i8, ptr %191, align 1, !dbg !156, !tbaa !101
  %193 = zext i8 %192 to i16, !dbg !156
  %194 = add nuw nsw i16 %187, 2, !dbg !156
  %195 = add nuw nsw i16 %194, %190, !dbg !156
  %196 = add nuw nsw i16 %195, %193, !dbg !156
  %197 = lshr i16 %196, 2
  %198 = trunc i16 %197 to i8, !dbg !156
  %199 = getelementptr inbounds i8, ptr %1, i64 19, !dbg !156
  store i8 %198, ptr %199, align 1, !dbg !156, !tbaa !101
  %200 = load i8, ptr %177, align 1, !dbg !157, !tbaa !101
  %201 = zext i8 %200 to i16, !dbg !157
  %202 = load i8, ptr %191, align 1, !dbg !157, !tbaa !101
  %203 = zext i8 %202 to i16, !dbg !157
  %204 = shl nuw nsw i16 %203, 1, !dbg !157
  %205 = getelementptr inbounds i8, ptr %0, i64 -27, !dbg !157
  %206 = load i8, ptr %205, align 1, !dbg !157, !tbaa !101
  %207 = zext i8 %206 to i16, !dbg !157
  %208 = add nuw nsw i16 %201, 2, !dbg !157
  %209 = add nuw nsw i16 %208, %204, !dbg !157
  %210 = add nuw nsw i16 %209, %207, !dbg !157
  %211 = lshr i16 %210, 2
  %212 = trunc i16 %211 to i8, !dbg !157
  %213 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !157
  store i8 %212, ptr %213, align 1, !dbg !157, !tbaa !101
  %214 = load i8, ptr %191, align 1, !dbg !158, !tbaa !101
  %215 = zext i8 %214 to i16, !dbg !158
  %216 = load i8, ptr %205, align 1, !dbg !158, !tbaa !101
  %217 = zext i8 %216 to i16, !dbg !158
  %218 = shl nuw nsw i16 %217, 1, !dbg !158
  %219 = getelementptr inbounds i8, ptr %0, i64 -26, !dbg !158
  %220 = load i8, ptr %219, align 1, !dbg !158, !tbaa !101
  %221 = zext i8 %220 to i16, !dbg !158
  %222 = add nuw nsw i16 %215, 2, !dbg !158
  %223 = add nuw nsw i16 %222, %218, !dbg !158
  %224 = add nuw nsw i16 %223, %221, !dbg !158
  %225 = lshr i16 %224, 2
  %226 = trunc i16 %225 to i8, !dbg !158
  %227 = getelementptr inbounds i8, ptr %1, i64 21, !dbg !158
  store i8 %226, ptr %227, align 1, !dbg !158, !tbaa !101
  %228 = load i8, ptr %205, align 1, !dbg !159, !tbaa !101
  %229 = zext i8 %228 to i16, !dbg !159
  %230 = load i8, ptr %219, align 1, !dbg !159, !tbaa !101
  %231 = zext i8 %230 to i16, !dbg !159
  %232 = shl nuw nsw i16 %231, 1, !dbg !159
  %233 = getelementptr inbounds i8, ptr %0, i64 -25, !dbg !159
  %234 = load i8, ptr %233, align 1, !dbg !159, !tbaa !101
  %235 = zext i8 %234 to i16, !dbg !159
  %236 = add nuw nsw i16 %229, 2, !dbg !159
  %237 = add nuw nsw i16 %236, %232, !dbg !159
  %238 = add nuw nsw i16 %237, %235, !dbg !159
  %239 = lshr i16 %238, 2
  %240 = trunc i16 %239 to i8, !dbg !159
  %241 = getelementptr inbounds i8, ptr %1, i64 22, !dbg !159
  store i8 %240, ptr %241, align 1, !dbg !159, !tbaa !101
  %242 = icmp eq i32 %139, 0, !dbg !160
  %243 = getelementptr inbounds i8, ptr %0, i64 -24, !dbg !160
  %244 = select i1 %242, ptr %233, ptr %243, !dbg !160
  %245 = load i8, ptr %244, align 1, !dbg !161, !tbaa !101
  %246 = zext i8 %245 to i16, !dbg !160
  %247 = load i8, ptr %233, align 1, !dbg !162, !tbaa !101
  %248 = zext i8 %247 to i16, !dbg !162
  %249 = shl nuw nsw i16 %248, 1, !dbg !163
  %250 = load i8, ptr %219, align 1, !dbg !164, !tbaa !101
  %251 = zext i8 %250 to i16, !dbg !164
  %252 = add nuw nsw i16 %246, 2, !dbg !165
  %253 = add nuw nsw i16 %252, %249, !dbg !166
  %254 = add nuw nsw i16 %253, %251, !dbg !167
  %255 = lshr i16 %254, 2
  %256 = trunc i16 %255 to i8, !dbg !168
  %257 = getelementptr inbounds i8, ptr %1, i64 23, !dbg !169
  store i8 %256, ptr %257, align 1, !dbg !170, !tbaa !101
  %258 = and i32 %3, 4, !dbg !171
  %259 = icmp eq i32 %258, 0, !dbg !171
  br i1 %259, label %379, label %260, !dbg !173

260:                                              ; preds = %138
  %261 = load i8, ptr %233, align 1, !dbg !174, !tbaa !101
  br i1 %242, label %370, label %262, !dbg !177

262:                                              ; preds = %260
  %263 = zext i8 %261 to i16, !dbg !178
  %264 = load i8, ptr %243, align 1, !dbg !178, !tbaa !101
  %265 = zext i8 %264 to i16, !dbg !178
  %266 = shl nuw nsw i16 %265, 1, !dbg !178
  %267 = getelementptr inbounds i8, ptr %0, i64 -23, !dbg !178
  %268 = load i8, ptr %267, align 1, !dbg !178, !tbaa !101
  %269 = zext i8 %268 to i16, !dbg !178
  %270 = add nuw nsw i16 %263, 2, !dbg !178
  %271 = add nuw nsw i16 %270, %266, !dbg !178
  %272 = add nuw nsw i16 %271, %269, !dbg !178
  %273 = lshr i16 %272, 2
  %274 = trunc i16 %273 to i8, !dbg !178
  %275 = getelementptr inbounds i8, ptr %1, i64 24, !dbg !178
  store i8 %274, ptr %275, align 1, !dbg !178, !tbaa !101
  %276 = load i8, ptr %243, align 1, !dbg !180, !tbaa !101
  %277 = zext i8 %276 to i16, !dbg !180
  %278 = load i8, ptr %267, align 1, !dbg !180, !tbaa !101
  %279 = zext i8 %278 to i16, !dbg !180
  %280 = shl nuw nsw i16 %279, 1, !dbg !180
  %281 = getelementptr inbounds i8, ptr %0, i64 -22, !dbg !180
  %282 = load i8, ptr %281, align 1, !dbg !180, !tbaa !101
  %283 = zext i8 %282 to i16, !dbg !180
  %284 = add nuw nsw i16 %277, 2, !dbg !180
  %285 = add nuw nsw i16 %284, %280, !dbg !180
  %286 = add nuw nsw i16 %285, %283, !dbg !180
  %287 = lshr i16 %286, 2
  %288 = trunc i16 %287 to i8, !dbg !180
  %289 = getelementptr inbounds i8, ptr %1, i64 25, !dbg !180
  store i8 %288, ptr %289, align 1, !dbg !180, !tbaa !101
  %290 = load i8, ptr %267, align 1, !dbg !181, !tbaa !101
  %291 = zext i8 %290 to i16, !dbg !181
  %292 = load i8, ptr %281, align 1, !dbg !181, !tbaa !101
  %293 = zext i8 %292 to i16, !dbg !181
  %294 = shl nuw nsw i16 %293, 1, !dbg !181
  %295 = getelementptr inbounds i8, ptr %0, i64 -21, !dbg !181
  %296 = load i8, ptr %295, align 1, !dbg !181, !tbaa !101
  %297 = zext i8 %296 to i16, !dbg !181
  %298 = add nuw nsw i16 %291, 2, !dbg !181
  %299 = add nuw nsw i16 %298, %294, !dbg !181
  %300 = add nuw nsw i16 %299, %297, !dbg !181
  %301 = lshr i16 %300, 2
  %302 = trunc i16 %301 to i8, !dbg !181
  %303 = getelementptr inbounds i8, ptr %1, i64 26, !dbg !181
  store i8 %302, ptr %303, align 1, !dbg !181, !tbaa !101
  %304 = load i8, ptr %281, align 1, !dbg !182, !tbaa !101
  %305 = zext i8 %304 to i16, !dbg !182
  %306 = load i8, ptr %295, align 1, !dbg !182, !tbaa !101
  %307 = zext i8 %306 to i16, !dbg !182
  %308 = shl nuw nsw i16 %307, 1, !dbg !182
  %309 = getelementptr inbounds i8, ptr %0, i64 -20, !dbg !182
  %310 = load i8, ptr %309, align 1, !dbg !182, !tbaa !101
  %311 = zext i8 %310 to i16, !dbg !182
  %312 = add nuw nsw i16 %305, 2, !dbg !182
  %313 = add nuw nsw i16 %312, %308, !dbg !182
  %314 = add nuw nsw i16 %313, %311, !dbg !182
  %315 = lshr i16 %314, 2
  %316 = trunc i16 %315 to i8, !dbg !182
  %317 = getelementptr inbounds i8, ptr %1, i64 27, !dbg !182
  store i8 %316, ptr %317, align 1, !dbg !182, !tbaa !101
  %318 = load i8, ptr %295, align 1, !dbg !183, !tbaa !101
  %319 = zext i8 %318 to i16, !dbg !183
  %320 = load i8, ptr %309, align 1, !dbg !183, !tbaa !101
  %321 = zext i8 %320 to i16, !dbg !183
  %322 = shl nuw nsw i16 %321, 1, !dbg !183
  %323 = getelementptr inbounds i8, ptr %0, i64 -19, !dbg !183
  %324 = load i8, ptr %323, align 1, !dbg !183, !tbaa !101
  %325 = zext i8 %324 to i16, !dbg !183
  %326 = add nuw nsw i16 %319, 2, !dbg !183
  %327 = add nuw nsw i16 %326, %322, !dbg !183
  %328 = add nuw nsw i16 %327, %325, !dbg !183
  %329 = lshr i16 %328, 2
  %330 = trunc i16 %329 to i8, !dbg !183
  %331 = getelementptr inbounds i8, ptr %1, i64 28, !dbg !183
  store i8 %330, ptr %331, align 1, !dbg !183, !tbaa !101
  %332 = load i8, ptr %309, align 1, !dbg !184, !tbaa !101
  %333 = zext i8 %332 to i16, !dbg !184
  %334 = load i8, ptr %323, align 1, !dbg !184, !tbaa !101
  %335 = zext i8 %334 to i16, !dbg !184
  %336 = shl nuw nsw i16 %335, 1, !dbg !184
  %337 = getelementptr inbounds i8, ptr %0, i64 -18, !dbg !184
  %338 = load i8, ptr %337, align 1, !dbg !184, !tbaa !101
  %339 = zext i8 %338 to i16, !dbg !184
  %340 = add nuw nsw i16 %333, 2, !dbg !184
  %341 = add nuw nsw i16 %340, %336, !dbg !184
  %342 = add nuw nsw i16 %341, %339, !dbg !184
  %343 = lshr i16 %342, 2
  %344 = trunc i16 %343 to i8, !dbg !184
  %345 = getelementptr inbounds i8, ptr %1, i64 29, !dbg !184
  store i8 %344, ptr %345, align 1, !dbg !184, !tbaa !101
  %346 = load i8, ptr %323, align 1, !dbg !185, !tbaa !101
  %347 = zext i8 %346 to i16, !dbg !185
  %348 = load i8, ptr %337, align 1, !dbg !185, !tbaa !101
  %349 = zext i8 %348 to i16, !dbg !185
  %350 = shl nuw nsw i16 %349, 1, !dbg !185
  %351 = getelementptr inbounds i8, ptr %0, i64 -17, !dbg !185
  %352 = load i8, ptr %351, align 1, !dbg !185, !tbaa !101
  %353 = zext i8 %352 to i16, !dbg !185
  %354 = add nuw nsw i16 %347, 2, !dbg !185
  %355 = add nuw nsw i16 %354, %350, !dbg !185
  %356 = add nuw nsw i16 %355, %353, !dbg !185
  %357 = lshr i16 %356, 2
  %358 = trunc i16 %357 to i8, !dbg !185
  %359 = getelementptr inbounds i8, ptr %1, i64 30, !dbg !185
  store i8 %358, ptr %359, align 1, !dbg !185, !tbaa !101
  %360 = load i8, ptr %337, align 1, !dbg !186, !tbaa !101
  %361 = zext i8 %360 to i16, !dbg !186
  %362 = load i8, ptr %351, align 1, !dbg !187, !tbaa !101
  %363 = zext i8 %362 to i16, !dbg !187
  %364 = mul nuw nsw i16 %363, 3, !dbg !188
  %365 = add nuw nsw i16 %361, 2, !dbg !189
  %366 = add nuw nsw i16 %365, %364, !dbg !190
  %367 = lshr i16 %366, 2
  %368 = trunc i16 %367 to i8, !dbg !191
  %369 = getelementptr inbounds i8, ptr %1, i64 32, !dbg !192
  store i8 %368, ptr %369, align 1, !dbg !193, !tbaa !101
  br label %375, !dbg !194

370:                                              ; preds = %260
  %371 = zext i8 %261 to i64, !dbg !195
  %372 = mul nuw i64 %371, 72340172838076673, !dbg !197
  %373 = getelementptr inbounds i8, ptr %1, i64 24, !dbg !198
  store i64 %372, ptr %373, align 8, !dbg !199, !tbaa !200
  %374 = load i8, ptr %233, align 1, !dbg !202, !tbaa !101
  br label %375

375:                                              ; preds = %262, %370
  %376 = phi i64 [ 32, %370 ], [ 31, %262 ]
  %377 = phi i8 [ %374, %370 ], [ %368, %262 ]
  %378 = getelementptr inbounds i8, ptr %1, i64 %376, !dbg !174
  store i8 %377, ptr %378, align 1, !dbg !174, !tbaa !101
  br label %379, !dbg !203

379:                                              ; preds = %375, %138, %135
  ret void, !dbg !203
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_16x16_init(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 !dbg !204 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !213, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata ptr %1, metadata !214, metadata !DIExpression()), !dbg !215
  store ptr @predict_16x16_v, ptr %1, align 8, !dbg !216, !tbaa !217
  %3 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !219
  store ptr @predict_16x16_h, ptr %3, align 8, !dbg !220, !tbaa !217
  %4 = getelementptr inbounds ptr, ptr %1, i64 2, !dbg !221
  store ptr @predict_16x16_dc, ptr %4, align 8, !dbg !222, !tbaa !217
  %5 = getelementptr inbounds ptr, ptr %1, i64 3, !dbg !223
  store ptr @predict_16x16_p, ptr %5, align 8, !dbg !224, !tbaa !217
  %6 = getelementptr inbounds ptr, ptr %1, i64 4, !dbg !225
  store ptr @predict_16x16_dc_left, ptr %6, align 8, !dbg !226, !tbaa !217
  %7 = getelementptr inbounds ptr, ptr %1, i64 5, !dbg !227
  store ptr @predict_16x16_dc_top, ptr %7, align 8, !dbg !228, !tbaa !217
  %8 = getelementptr inbounds ptr, ptr %1, i64 6, !dbg !229
  store ptr @predict_16x16_dc_128, ptr %8, align 8, !dbg !230, !tbaa !217
  tail call void @x264_predict_16x16_init_mmx(i32 noundef %0, ptr noundef nonnull %1) #12, !dbg !231
  ret void, !dbg !232
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_v(ptr nocapture noundef %0) #2 !dbg !233 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !235, metadata !DIExpression()), !dbg !245
  %2 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !246
  %3 = load i32, ptr %2, align 4, !dbg !247, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %3, metadata !236, metadata !DIExpression()), !dbg !245
  %4 = getelementptr inbounds i8, ptr %0, i64 -28, !dbg !250
  %5 = load i32, ptr %4, align 4, !dbg !251, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %5, metadata !237, metadata !DIExpression()), !dbg !245
  %6 = getelementptr inbounds i8, ptr %0, i64 -24, !dbg !252
  %7 = load i32, ptr %6, align 4, !dbg !253, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %7, metadata !238, metadata !DIExpression()), !dbg !245
  %8 = getelementptr inbounds i8, ptr %0, i64 -20, !dbg !254
  %9 = load i32, ptr %8, align 4, !dbg !255, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %9, metadata !239, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 0, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %0, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %0, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 0, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %0, metadata !241, metadata !DIExpression()), !dbg !256
  %10 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !257
  call void @llvm.dbg.value(metadata ptr %10, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %3, ptr %0, align 4, !dbg !258, !tbaa !248
  %11 = getelementptr inbounds i32, ptr %0, i64 2, !dbg !259
  call void @llvm.dbg.value(metadata ptr %11, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %5, ptr %10, align 4, !dbg !260, !tbaa !248
  %12 = getelementptr inbounds i32, ptr %0, i64 3, !dbg !261
  call void @llvm.dbg.value(metadata ptr %12, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %7, ptr %11, align 4, !dbg !262, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %12, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !256
  store i32 %9, ptr %12, align 4, !dbg !263, !tbaa !248
  %13 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !264
  call void @llvm.dbg.value(metadata ptr %13, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 1, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %13, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 1, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %13, metadata !241, metadata !DIExpression()), !dbg !256
  %14 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !257
  call void @llvm.dbg.value(metadata ptr %14, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %3, ptr %13, align 4, !dbg !258, !tbaa !248
  %15 = getelementptr inbounds i8, ptr %0, i64 40, !dbg !259
  call void @llvm.dbg.value(metadata ptr %15, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %5, ptr %14, align 4, !dbg !260, !tbaa !248
  %16 = getelementptr inbounds i8, ptr %0, i64 44, !dbg !261
  call void @llvm.dbg.value(metadata ptr %16, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %7, ptr %15, align 4, !dbg !262, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %16, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !256
  store i32 %9, ptr %16, align 4, !dbg !263, !tbaa !248
  %17 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !264
  call void @llvm.dbg.value(metadata ptr %17, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 2, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %17, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 2, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %17, metadata !241, metadata !DIExpression()), !dbg !256
  %18 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !257
  call void @llvm.dbg.value(metadata ptr %18, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %3, ptr %17, align 4, !dbg !258, !tbaa !248
  %19 = getelementptr inbounds i8, ptr %0, i64 72, !dbg !259
  call void @llvm.dbg.value(metadata ptr %19, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %5, ptr %18, align 4, !dbg !260, !tbaa !248
  %20 = getelementptr inbounds i8, ptr %0, i64 76, !dbg !261
  call void @llvm.dbg.value(metadata ptr %20, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %7, ptr %19, align 4, !dbg !262, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %20, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !256
  store i32 %9, ptr %20, align 4, !dbg !263, !tbaa !248
  %21 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !264
  call void @llvm.dbg.value(metadata ptr %21, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 3, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %21, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 3, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %21, metadata !241, metadata !DIExpression()), !dbg !256
  %22 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !257
  call void @llvm.dbg.value(metadata ptr %22, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %3, ptr %21, align 4, !dbg !258, !tbaa !248
  %23 = getelementptr inbounds i8, ptr %0, i64 104, !dbg !259
  call void @llvm.dbg.value(metadata ptr %23, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %5, ptr %22, align 4, !dbg !260, !tbaa !248
  %24 = getelementptr inbounds i8, ptr %0, i64 108, !dbg !261
  call void @llvm.dbg.value(metadata ptr %24, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %7, ptr %23, align 4, !dbg !262, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %24, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !256
  store i32 %9, ptr %24, align 4, !dbg !263, !tbaa !248
  %25 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !264
  call void @llvm.dbg.value(metadata ptr %25, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 4, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %25, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 4, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %25, metadata !241, metadata !DIExpression()), !dbg !256
  %26 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !257
  call void @llvm.dbg.value(metadata ptr %26, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %3, ptr %25, align 4, !dbg !258, !tbaa !248
  %27 = getelementptr inbounds i8, ptr %0, i64 136, !dbg !259
  call void @llvm.dbg.value(metadata ptr %27, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %5, ptr %26, align 4, !dbg !260, !tbaa !248
  %28 = getelementptr inbounds i8, ptr %0, i64 140, !dbg !261
  call void @llvm.dbg.value(metadata ptr %28, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %7, ptr %27, align 4, !dbg !262, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %28, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !256
  store i32 %9, ptr %28, align 4, !dbg !263, !tbaa !248
  %29 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !264
  call void @llvm.dbg.value(metadata ptr %29, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 5, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %29, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 5, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %29, metadata !241, metadata !DIExpression()), !dbg !256
  %30 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !257
  call void @llvm.dbg.value(metadata ptr %30, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %3, ptr %29, align 4, !dbg !258, !tbaa !248
  %31 = getelementptr inbounds i8, ptr %0, i64 168, !dbg !259
  call void @llvm.dbg.value(metadata ptr %31, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %5, ptr %30, align 4, !dbg !260, !tbaa !248
  %32 = getelementptr inbounds i8, ptr %0, i64 172, !dbg !261
  call void @llvm.dbg.value(metadata ptr %32, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %7, ptr %31, align 4, !dbg !262, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %32, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !256
  store i32 %9, ptr %32, align 4, !dbg !263, !tbaa !248
  %33 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !264
  call void @llvm.dbg.value(metadata ptr %33, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 6, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %33, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 6, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %33, metadata !241, metadata !DIExpression()), !dbg !256
  %34 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !257
  call void @llvm.dbg.value(metadata ptr %34, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %3, ptr %33, align 4, !dbg !258, !tbaa !248
  %35 = getelementptr inbounds i8, ptr %0, i64 200, !dbg !259
  call void @llvm.dbg.value(metadata ptr %35, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %5, ptr %34, align 4, !dbg !260, !tbaa !248
  %36 = getelementptr inbounds i8, ptr %0, i64 204, !dbg !261
  call void @llvm.dbg.value(metadata ptr %36, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %7, ptr %35, align 4, !dbg !262, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %36, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !256
  store i32 %9, ptr %36, align 4, !dbg !263, !tbaa !248
  %37 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !264
  call void @llvm.dbg.value(metadata ptr %37, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 7, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %37, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 7, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %37, metadata !241, metadata !DIExpression()), !dbg !256
  %38 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !257
  call void @llvm.dbg.value(metadata ptr %38, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %3, ptr %37, align 4, !dbg !258, !tbaa !248
  %39 = getelementptr inbounds i8, ptr %0, i64 232, !dbg !259
  call void @llvm.dbg.value(metadata ptr %39, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %5, ptr %38, align 4, !dbg !260, !tbaa !248
  %40 = getelementptr inbounds i8, ptr %0, i64 236, !dbg !261
  call void @llvm.dbg.value(metadata ptr %40, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %7, ptr %39, align 4, !dbg !262, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %40, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !256
  store i32 %9, ptr %40, align 4, !dbg !263, !tbaa !248
  %41 = getelementptr inbounds i8, ptr %0, i64 256, !dbg !264
  call void @llvm.dbg.value(metadata ptr %41, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 8, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %41, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 8, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %41, metadata !241, metadata !DIExpression()), !dbg !256
  %42 = getelementptr inbounds i8, ptr %0, i64 260, !dbg !257
  call void @llvm.dbg.value(metadata ptr %42, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %3, ptr %41, align 4, !dbg !258, !tbaa !248
  %43 = getelementptr inbounds i8, ptr %0, i64 264, !dbg !259
  call void @llvm.dbg.value(metadata ptr %43, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %5, ptr %42, align 4, !dbg !260, !tbaa !248
  %44 = getelementptr inbounds i8, ptr %0, i64 268, !dbg !261
  call void @llvm.dbg.value(metadata ptr %44, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %7, ptr %43, align 4, !dbg !262, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %44, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !256
  store i32 %9, ptr %44, align 4, !dbg !263, !tbaa !248
  %45 = getelementptr inbounds i8, ptr %0, i64 288, !dbg !264
  call void @llvm.dbg.value(metadata ptr %45, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 9, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %45, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 9, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %45, metadata !241, metadata !DIExpression()), !dbg !256
  %46 = getelementptr inbounds i8, ptr %0, i64 292, !dbg !257
  call void @llvm.dbg.value(metadata ptr %46, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %3, ptr %45, align 4, !dbg !258, !tbaa !248
  %47 = getelementptr inbounds i8, ptr %0, i64 296, !dbg !259
  call void @llvm.dbg.value(metadata ptr %47, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %5, ptr %46, align 4, !dbg !260, !tbaa !248
  %48 = getelementptr inbounds i8, ptr %0, i64 300, !dbg !261
  call void @llvm.dbg.value(metadata ptr %48, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %7, ptr %47, align 4, !dbg !262, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %48, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !256
  store i32 %9, ptr %48, align 4, !dbg !263, !tbaa !248
  %49 = getelementptr inbounds i8, ptr %0, i64 320, !dbg !264
  call void @llvm.dbg.value(metadata ptr %49, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 10, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %49, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 10, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %49, metadata !241, metadata !DIExpression()), !dbg !256
  %50 = getelementptr inbounds i8, ptr %0, i64 324, !dbg !257
  call void @llvm.dbg.value(metadata ptr %50, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %3, ptr %49, align 4, !dbg !258, !tbaa !248
  %51 = getelementptr inbounds i8, ptr %0, i64 328, !dbg !259
  call void @llvm.dbg.value(metadata ptr %51, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %5, ptr %50, align 4, !dbg !260, !tbaa !248
  %52 = getelementptr inbounds i8, ptr %0, i64 332, !dbg !261
  call void @llvm.dbg.value(metadata ptr %52, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %7, ptr %51, align 4, !dbg !262, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %52, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !256
  store i32 %9, ptr %52, align 4, !dbg !263, !tbaa !248
  %53 = getelementptr inbounds i8, ptr %0, i64 352, !dbg !264
  call void @llvm.dbg.value(metadata ptr %53, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 11, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %53, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 11, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %53, metadata !241, metadata !DIExpression()), !dbg !256
  %54 = getelementptr inbounds i8, ptr %0, i64 356, !dbg !257
  call void @llvm.dbg.value(metadata ptr %54, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %3, ptr %53, align 4, !dbg !258, !tbaa !248
  %55 = getelementptr inbounds i8, ptr %0, i64 360, !dbg !259
  call void @llvm.dbg.value(metadata ptr %55, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %5, ptr %54, align 4, !dbg !260, !tbaa !248
  %56 = getelementptr inbounds i8, ptr %0, i64 364, !dbg !261
  call void @llvm.dbg.value(metadata ptr %56, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %7, ptr %55, align 4, !dbg !262, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %56, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !256
  store i32 %9, ptr %56, align 4, !dbg !263, !tbaa !248
  %57 = getelementptr inbounds i8, ptr %0, i64 384, !dbg !264
  call void @llvm.dbg.value(metadata ptr %57, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 12, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %57, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 12, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %57, metadata !241, metadata !DIExpression()), !dbg !256
  %58 = getelementptr inbounds i8, ptr %0, i64 388, !dbg !257
  call void @llvm.dbg.value(metadata ptr %58, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %3, ptr %57, align 4, !dbg !258, !tbaa !248
  %59 = getelementptr inbounds i8, ptr %0, i64 392, !dbg !259
  call void @llvm.dbg.value(metadata ptr %59, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %5, ptr %58, align 4, !dbg !260, !tbaa !248
  %60 = getelementptr inbounds i8, ptr %0, i64 396, !dbg !261
  call void @llvm.dbg.value(metadata ptr %60, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %7, ptr %59, align 4, !dbg !262, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %60, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !256
  store i32 %9, ptr %60, align 4, !dbg !263, !tbaa !248
  %61 = getelementptr inbounds i8, ptr %0, i64 416, !dbg !264
  call void @llvm.dbg.value(metadata ptr %61, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 13, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %61, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 13, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %61, metadata !241, metadata !DIExpression()), !dbg !256
  %62 = getelementptr inbounds i8, ptr %0, i64 420, !dbg !257
  call void @llvm.dbg.value(metadata ptr %62, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %3, ptr %61, align 4, !dbg !258, !tbaa !248
  %63 = getelementptr inbounds i8, ptr %0, i64 424, !dbg !259
  call void @llvm.dbg.value(metadata ptr %63, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %5, ptr %62, align 4, !dbg !260, !tbaa !248
  %64 = getelementptr inbounds i8, ptr %0, i64 428, !dbg !261
  call void @llvm.dbg.value(metadata ptr %64, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %7, ptr %63, align 4, !dbg !262, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %64, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !256
  store i32 %9, ptr %64, align 4, !dbg !263, !tbaa !248
  %65 = getelementptr inbounds i8, ptr %0, i64 448, !dbg !264
  call void @llvm.dbg.value(metadata ptr %65, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 14, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %65, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 14, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %65, metadata !241, metadata !DIExpression()), !dbg !256
  %66 = getelementptr inbounds i8, ptr %0, i64 452, !dbg !257
  call void @llvm.dbg.value(metadata ptr %66, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %3, ptr %65, align 4, !dbg !258, !tbaa !248
  %67 = getelementptr inbounds i8, ptr %0, i64 456, !dbg !259
  call void @llvm.dbg.value(metadata ptr %67, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %5, ptr %66, align 4, !dbg !260, !tbaa !248
  %68 = getelementptr inbounds i8, ptr %0, i64 460, !dbg !261
  call void @llvm.dbg.value(metadata ptr %68, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %7, ptr %67, align 4, !dbg !262, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %68, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !256
  store i32 %9, ptr %68, align 4, !dbg !263, !tbaa !248
  %69 = getelementptr inbounds i8, ptr %0, i64 480, !dbg !264
  call void @llvm.dbg.value(metadata ptr %69, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 15, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %69, metadata !235, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 15, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata ptr %69, metadata !241, metadata !DIExpression()), !dbg !256
  %70 = getelementptr inbounds i8, ptr %0, i64 484, !dbg !257
  call void @llvm.dbg.value(metadata ptr %70, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %3, ptr %69, align 4, !dbg !258, !tbaa !248
  %71 = getelementptr inbounds i8, ptr %0, i64 488, !dbg !259
  call void @llvm.dbg.value(metadata ptr %71, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %5, ptr %70, align 4, !dbg !260, !tbaa !248
  %72 = getelementptr inbounds i8, ptr %0, i64 492, !dbg !261
  call void @llvm.dbg.value(metadata ptr %72, metadata !241, metadata !DIExpression()), !dbg !256
  store i32 %7, ptr %71, align 4, !dbg !262, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %72, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !256
  store i32 %9, ptr %72, align 4, !dbg !263, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %69, metadata !235, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !245
  call void @llvm.dbg.value(metadata i32 16, metadata !240, metadata !DIExpression()), !dbg !245
  ret void, !dbg !265
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_h(ptr nocapture noundef %0) #3 !dbg !266 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 0, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata ptr %0, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 0, metadata !269, metadata !DIExpression()), !dbg !276
  %2 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !277
  %3 = load i8, ptr %2, align 1, !dbg !277, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !277
  %5 = mul nuw nsw i32 %4, 16843009, !dbg !278
  call void @llvm.dbg.value(metadata i32 %5, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  %6 = insertelement <4 x i32> poison, i32 %5, i64 0, !dbg !280
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !280
  store <4 x i32> %7, ptr %0, align 4, !dbg !281, !tbaa !248
  %8 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !282
  call void @llvm.dbg.value(metadata ptr %8, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 1, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata ptr %8, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 1, metadata !269, metadata !DIExpression()), !dbg !276
  %9 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !277
  %10 = load i8, ptr %9, align 1, !dbg !277, !tbaa !101
  %11 = zext i8 %10 to i32, !dbg !277
  %12 = mul nuw nsw i32 %11, 16843009, !dbg !278
  call void @llvm.dbg.value(metadata i32 %12, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %8, metadata !275, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 44, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 44, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  %13 = insertelement <4 x i32> poison, i32 %12, i64 0, !dbg !280
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !280
  store <4 x i32> %14, ptr %8, align 4, !dbg !281, !tbaa !248
  %15 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !282
  call void @llvm.dbg.value(metadata ptr %15, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 2, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata ptr %15, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 2, metadata !269, metadata !DIExpression()), !dbg !276
  %16 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !277
  %17 = load i8, ptr %16, align 1, !dbg !277, !tbaa !101
  %18 = zext i8 %17 to i32, !dbg !277
  %19 = mul nuw nsw i32 %18, 16843009, !dbg !278
  call void @llvm.dbg.value(metadata i32 %19, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %15, metadata !275, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 68, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 76, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 76, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  %20 = insertelement <4 x i32> poison, i32 %19, i64 0, !dbg !280
  %21 = shufflevector <4 x i32> %20, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !280
  store <4 x i32> %21, ptr %15, align 4, !dbg !281, !tbaa !248
  %22 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !282
  call void @llvm.dbg.value(metadata ptr %22, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 3, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata ptr %22, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 3, metadata !269, metadata !DIExpression()), !dbg !276
  %23 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !277
  %24 = load i8, ptr %23, align 1, !dbg !277, !tbaa !101
  %25 = zext i8 %24 to i32, !dbg !277
  %26 = mul nuw nsw i32 %25, 16843009, !dbg !278
  call void @llvm.dbg.value(metadata i32 %26, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %22, metadata !275, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 100, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 108, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 108, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  %27 = insertelement <4 x i32> poison, i32 %26, i64 0, !dbg !280
  %28 = shufflevector <4 x i32> %27, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !280
  store <4 x i32> %28, ptr %22, align 4, !dbg !281, !tbaa !248
  %29 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !282
  call void @llvm.dbg.value(metadata ptr %29, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 4, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata ptr %29, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 4, metadata !269, metadata !DIExpression()), !dbg !276
  %30 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !277
  %31 = load i8, ptr %30, align 1, !dbg !277, !tbaa !101
  %32 = zext i8 %31 to i32, !dbg !277
  %33 = mul nuw nsw i32 %32, 16843009, !dbg !278
  call void @llvm.dbg.value(metadata i32 %33, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %29, metadata !275, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 132, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 140, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 140, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  %34 = insertelement <4 x i32> poison, i32 %33, i64 0, !dbg !280
  %35 = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !280
  store <4 x i32> %35, ptr %29, align 4, !dbg !281, !tbaa !248
  %36 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !282
  call void @llvm.dbg.value(metadata ptr %36, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 5, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata ptr %36, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 5, metadata !269, metadata !DIExpression()), !dbg !276
  %37 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !277
  %38 = load i8, ptr %37, align 1, !dbg !277, !tbaa !101
  %39 = zext i8 %38 to i32, !dbg !277
  %40 = mul nuw nsw i32 %39, 16843009, !dbg !278
  call void @llvm.dbg.value(metadata i32 %40, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %36, metadata !275, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 164, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 168, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 172, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 172, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  %41 = insertelement <4 x i32> poison, i32 %40, i64 0, !dbg !280
  %42 = shufflevector <4 x i32> %41, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !280
  store <4 x i32> %42, ptr %36, align 4, !dbg !281, !tbaa !248
  %43 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !282
  call void @llvm.dbg.value(metadata ptr %43, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 6, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata ptr %43, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 6, metadata !269, metadata !DIExpression()), !dbg !276
  %44 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !277
  %45 = load i8, ptr %44, align 1, !dbg !277, !tbaa !101
  %46 = zext i8 %45 to i32, !dbg !277
  %47 = mul nuw nsw i32 %46, 16843009, !dbg !278
  call void @llvm.dbg.value(metadata i32 %47, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %43, metadata !275, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 196, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 200, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 204, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 204, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  %48 = insertelement <4 x i32> poison, i32 %47, i64 0, !dbg !280
  %49 = shufflevector <4 x i32> %48, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !280
  store <4 x i32> %49, ptr %43, align 4, !dbg !281, !tbaa !248
  %50 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !282
  call void @llvm.dbg.value(metadata ptr %50, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 7, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata ptr %50, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 7, metadata !269, metadata !DIExpression()), !dbg !276
  %51 = getelementptr inbounds i8, ptr %0, i64 223, !dbg !277
  %52 = load i8, ptr %51, align 1, !dbg !277, !tbaa !101
  %53 = zext i8 %52 to i32, !dbg !277
  %54 = mul nuw nsw i32 %53, 16843009, !dbg !278
  call void @llvm.dbg.value(metadata i32 %54, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %50, metadata !275, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 228, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 236, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 236, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  %55 = insertelement <4 x i32> poison, i32 %54, i64 0, !dbg !280
  %56 = shufflevector <4 x i32> %55, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !280
  store <4 x i32> %56, ptr %50, align 4, !dbg !281, !tbaa !248
  %57 = getelementptr inbounds i8, ptr %0, i64 256, !dbg !282
  call void @llvm.dbg.value(metadata ptr %57, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 8, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata ptr %57, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 8, metadata !269, metadata !DIExpression()), !dbg !276
  %58 = getelementptr inbounds i8, ptr %0, i64 255, !dbg !277
  %59 = load i8, ptr %58, align 1, !dbg !277, !tbaa !101
  %60 = zext i8 %59 to i32, !dbg !277
  %61 = mul nuw nsw i32 %60, 16843009, !dbg !278
  call void @llvm.dbg.value(metadata i32 %61, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %57, metadata !275, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 260, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 264, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 268, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 268, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  %62 = insertelement <4 x i32> poison, i32 %61, i64 0, !dbg !280
  %63 = shufflevector <4 x i32> %62, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !280
  store <4 x i32> %63, ptr %57, align 4, !dbg !281, !tbaa !248
  %64 = getelementptr inbounds i8, ptr %0, i64 288, !dbg !282
  call void @llvm.dbg.value(metadata ptr %64, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 9, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata ptr %64, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 9, metadata !269, metadata !DIExpression()), !dbg !276
  %65 = getelementptr inbounds i8, ptr %0, i64 287, !dbg !277
  %66 = load i8, ptr %65, align 1, !dbg !277, !tbaa !101
  %67 = zext i8 %66 to i32, !dbg !277
  %68 = mul nuw nsw i32 %67, 16843009, !dbg !278
  call void @llvm.dbg.value(metadata i32 %68, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %64, metadata !275, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 292, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 296, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 300, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 300, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  %69 = insertelement <4 x i32> poison, i32 %68, i64 0, !dbg !280
  %70 = shufflevector <4 x i32> %69, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !280
  store <4 x i32> %70, ptr %64, align 4, !dbg !281, !tbaa !248
  %71 = getelementptr inbounds i8, ptr %0, i64 320, !dbg !282
  call void @llvm.dbg.value(metadata ptr %71, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 10, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata ptr %71, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 10, metadata !269, metadata !DIExpression()), !dbg !276
  %72 = getelementptr inbounds i8, ptr %0, i64 319, !dbg !277
  %73 = load i8, ptr %72, align 1, !dbg !277, !tbaa !101
  %74 = zext i8 %73 to i32, !dbg !277
  %75 = mul nuw nsw i32 %74, 16843009, !dbg !278
  call void @llvm.dbg.value(metadata i32 %75, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %71, metadata !275, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 324, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 328, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 332, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 332, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  %76 = insertelement <4 x i32> poison, i32 %75, i64 0, !dbg !280
  %77 = shufflevector <4 x i32> %76, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !280
  store <4 x i32> %77, ptr %71, align 4, !dbg !281, !tbaa !248
  %78 = getelementptr inbounds i8, ptr %0, i64 352, !dbg !282
  call void @llvm.dbg.value(metadata ptr %78, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 11, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata ptr %78, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 11, metadata !269, metadata !DIExpression()), !dbg !276
  %79 = getelementptr inbounds i8, ptr %0, i64 351, !dbg !277
  %80 = load i8, ptr %79, align 1, !dbg !277, !tbaa !101
  %81 = zext i8 %80 to i32, !dbg !277
  %82 = mul nuw nsw i32 %81, 16843009, !dbg !278
  call void @llvm.dbg.value(metadata i32 %82, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %78, metadata !275, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 356, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 360, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 364, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 364, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  %83 = insertelement <4 x i32> poison, i32 %82, i64 0, !dbg !280
  %84 = shufflevector <4 x i32> %83, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !280
  store <4 x i32> %84, ptr %78, align 4, !dbg !281, !tbaa !248
  %85 = getelementptr inbounds i8, ptr %0, i64 384, !dbg !282
  call void @llvm.dbg.value(metadata ptr %85, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 12, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata ptr %85, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 12, metadata !269, metadata !DIExpression()), !dbg !276
  %86 = getelementptr inbounds i8, ptr %0, i64 383, !dbg !277
  %87 = load i8, ptr %86, align 1, !dbg !277, !tbaa !101
  %88 = zext i8 %87 to i32, !dbg !277
  %89 = mul nuw nsw i32 %88, 16843009, !dbg !278
  call void @llvm.dbg.value(metadata i32 %89, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %85, metadata !275, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 388, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 392, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 396, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 396, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  %90 = insertelement <4 x i32> poison, i32 %89, i64 0, !dbg !280
  %91 = shufflevector <4 x i32> %90, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !280
  store <4 x i32> %91, ptr %85, align 4, !dbg !281, !tbaa !248
  %92 = getelementptr inbounds i8, ptr %0, i64 416, !dbg !282
  call void @llvm.dbg.value(metadata ptr %92, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 13, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata ptr %92, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 13, metadata !269, metadata !DIExpression()), !dbg !276
  %93 = getelementptr inbounds i8, ptr %0, i64 415, !dbg !277
  %94 = load i8, ptr %93, align 1, !dbg !277, !tbaa !101
  %95 = zext i8 %94 to i32, !dbg !277
  %96 = mul nuw nsw i32 %95, 16843009, !dbg !278
  call void @llvm.dbg.value(metadata i32 %96, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %92, metadata !275, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 420, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 424, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 428, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 428, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  %97 = insertelement <4 x i32> poison, i32 %96, i64 0, !dbg !280
  %98 = shufflevector <4 x i32> %97, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !280
  store <4 x i32> %98, ptr %92, align 4, !dbg !281, !tbaa !248
  %99 = getelementptr inbounds i8, ptr %0, i64 448, !dbg !282
  call void @llvm.dbg.value(metadata ptr %99, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 14, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata ptr %99, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 14, metadata !269, metadata !DIExpression()), !dbg !276
  %100 = getelementptr inbounds i8, ptr %0, i64 447, !dbg !277
  %101 = load i8, ptr %100, align 1, !dbg !277, !tbaa !101
  %102 = zext i8 %101 to i32, !dbg !277
  %103 = mul nuw nsw i32 %102, 16843009, !dbg !278
  call void @llvm.dbg.value(metadata i32 %103, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %99, metadata !275, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 452, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 456, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 460, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 460, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  %104 = insertelement <4 x i32> poison, i32 %103, i64 0, !dbg !280
  %105 = shufflevector <4 x i32> %104, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !280
  store <4 x i32> %105, ptr %99, align 4, !dbg !281, !tbaa !248
  %106 = getelementptr inbounds i8, ptr %0, i64 480, !dbg !282
  call void @llvm.dbg.value(metadata ptr %106, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 15, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata ptr %106, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 15, metadata !269, metadata !DIExpression()), !dbg !276
  %107 = getelementptr inbounds i8, ptr %0, i64 479, !dbg !277
  %108 = load i8, ptr %107, align 1, !dbg !277, !tbaa !101
  %109 = zext i8 %108 to i32, !dbg !277
  %110 = mul nuw nsw i32 %109, 16843009, !dbg !278
  call void @llvm.dbg.value(metadata i32 %110, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %106, metadata !275, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 484, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 488, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 492, DW_OP_stack_value)), !dbg !279
  call void @llvm.dbg.value(metadata ptr %0, metadata !275, metadata !DIExpression(DW_OP_plus_uconst, 492, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !279
  %111 = insertelement <4 x i32> poison, i32 %110, i64 0, !dbg !280
  %112 = shufflevector <4 x i32> %111, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !280
  store <4 x i32> %112, ptr %106, align 4, !dbg !281, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %106, metadata !268, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !276
  call void @llvm.dbg.value(metadata i32 16, metadata !269, metadata !DIExpression()), !dbg !276
  ret void, !dbg !283
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_dc(ptr nocapture noundef %0) #2 !dbg !284 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 0, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 0, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 0, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 0, metadata !287, metadata !DIExpression()), !dbg !293
  %2 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !294
  %3 = load i8, ptr %2, align 1, !dbg !294, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !294
  call void @llvm.dbg.value(metadata i32 %4, metadata !287, metadata !DIExpression()), !dbg !293
  %5 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !298
  %6 = load i8, ptr %5, align 1, !dbg !298, !tbaa !101
  %7 = zext i8 %6 to i32, !dbg !298
  %8 = add nuw nsw i32 %4, %7, !dbg !299
  call void @llvm.dbg.value(metadata i32 %8, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 1, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 1, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %8, metadata !287, metadata !DIExpression()), !dbg !293
  %9 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !294
  %10 = load i8, ptr %9, align 1, !dbg !294, !tbaa !101
  %11 = zext i8 %10 to i32, !dbg !294
  %12 = add nuw nsw i32 %8, %11, !dbg !300
  call void @llvm.dbg.value(metadata i32 %12, metadata !287, metadata !DIExpression()), !dbg !293
  %13 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !298
  %14 = load i8, ptr %13, align 1, !dbg !298, !tbaa !101
  %15 = zext i8 %14 to i32, !dbg !298
  %16 = add nuw nsw i32 %12, %15, !dbg !299
  call void @llvm.dbg.value(metadata i32 %16, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 2, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 2, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %16, metadata !287, metadata !DIExpression()), !dbg !293
  %17 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !294
  %18 = load i8, ptr %17, align 1, !dbg !294, !tbaa !101
  %19 = zext i8 %18 to i32, !dbg !294
  %20 = add nuw nsw i32 %16, %19, !dbg !300
  call void @llvm.dbg.value(metadata i32 %20, metadata !287, metadata !DIExpression()), !dbg !293
  %21 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !298
  %22 = load i8, ptr %21, align 1, !dbg !298, !tbaa !101
  %23 = zext i8 %22 to i32, !dbg !298
  %24 = add nuw nsw i32 %20, %23, !dbg !299
  call void @llvm.dbg.value(metadata i32 %24, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 3, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 3, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %24, metadata !287, metadata !DIExpression()), !dbg !293
  %25 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !294
  %26 = load i8, ptr %25, align 1, !dbg !294, !tbaa !101
  %27 = zext i8 %26 to i32, !dbg !294
  %28 = add nuw nsw i32 %24, %27, !dbg !300
  call void @llvm.dbg.value(metadata i32 %28, metadata !287, metadata !DIExpression()), !dbg !293
  %29 = getelementptr inbounds i8, ptr %0, i64 -29, !dbg !298
  %30 = load i8, ptr %29, align 1, !dbg !298, !tbaa !101
  %31 = zext i8 %30 to i32, !dbg !298
  %32 = add nuw nsw i32 %28, %31, !dbg !299
  call void @llvm.dbg.value(metadata i32 %32, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 4, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 4, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %32, metadata !287, metadata !DIExpression()), !dbg !293
  %33 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !294
  %34 = load i8, ptr %33, align 1, !dbg !294, !tbaa !101
  %35 = zext i8 %34 to i32, !dbg !294
  %36 = add nuw nsw i32 %32, %35, !dbg !300
  call void @llvm.dbg.value(metadata i32 %36, metadata !287, metadata !DIExpression()), !dbg !293
  %37 = getelementptr inbounds i8, ptr %0, i64 -28, !dbg !298
  %38 = load i8, ptr %37, align 1, !dbg !298, !tbaa !101
  %39 = zext i8 %38 to i32, !dbg !298
  %40 = add nuw nsw i32 %36, %39, !dbg !299
  call void @llvm.dbg.value(metadata i32 %40, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 5, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 5, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %40, metadata !287, metadata !DIExpression()), !dbg !293
  %41 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !294
  %42 = load i8, ptr %41, align 1, !dbg !294, !tbaa !101
  %43 = zext i8 %42 to i32, !dbg !294
  %44 = add nuw nsw i32 %40, %43, !dbg !300
  call void @llvm.dbg.value(metadata i32 %44, metadata !287, metadata !DIExpression()), !dbg !293
  %45 = getelementptr inbounds i8, ptr %0, i64 -27, !dbg !298
  %46 = load i8, ptr %45, align 1, !dbg !298, !tbaa !101
  %47 = zext i8 %46 to i32, !dbg !298
  %48 = add nuw nsw i32 %44, %47, !dbg !299
  call void @llvm.dbg.value(metadata i32 %48, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 6, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 6, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %48, metadata !287, metadata !DIExpression()), !dbg !293
  %49 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !294
  %50 = load i8, ptr %49, align 1, !dbg !294, !tbaa !101
  %51 = zext i8 %50 to i32, !dbg !294
  %52 = add nuw nsw i32 %48, %51, !dbg !300
  call void @llvm.dbg.value(metadata i32 %52, metadata !287, metadata !DIExpression()), !dbg !293
  %53 = getelementptr inbounds i8, ptr %0, i64 -26, !dbg !298
  %54 = load i8, ptr %53, align 1, !dbg !298, !tbaa !101
  %55 = zext i8 %54 to i32, !dbg !298
  %56 = add nuw nsw i32 %52, %55, !dbg !299
  call void @llvm.dbg.value(metadata i32 %56, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 7, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 7, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %56, metadata !287, metadata !DIExpression()), !dbg !293
  %57 = getelementptr inbounds i8, ptr %0, i64 223, !dbg !294
  %58 = load i8, ptr %57, align 1, !dbg !294, !tbaa !101
  %59 = zext i8 %58 to i32, !dbg !294
  %60 = add nuw nsw i32 %56, %59, !dbg !300
  call void @llvm.dbg.value(metadata i32 %60, metadata !287, metadata !DIExpression()), !dbg !293
  %61 = getelementptr inbounds i8, ptr %0, i64 -25, !dbg !298
  %62 = load i8, ptr %61, align 1, !dbg !298, !tbaa !101
  %63 = zext i8 %62 to i32, !dbg !298
  %64 = add nuw nsw i32 %60, %63, !dbg !299
  call void @llvm.dbg.value(metadata i32 %64, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 8, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 8, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %64, metadata !287, metadata !DIExpression()), !dbg !293
  %65 = getelementptr inbounds i8, ptr %0, i64 255, !dbg !294
  %66 = load i8, ptr %65, align 1, !dbg !294, !tbaa !101
  %67 = zext i8 %66 to i32, !dbg !294
  %68 = add nuw nsw i32 %64, %67, !dbg !300
  call void @llvm.dbg.value(metadata i32 %68, metadata !287, metadata !DIExpression()), !dbg !293
  %69 = getelementptr inbounds i8, ptr %0, i64 -24, !dbg !298
  %70 = load i8, ptr %69, align 1, !dbg !298, !tbaa !101
  %71 = zext i8 %70 to i32, !dbg !298
  %72 = add nuw nsw i32 %68, %71, !dbg !299
  call void @llvm.dbg.value(metadata i32 %72, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 9, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 9, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %72, metadata !287, metadata !DIExpression()), !dbg !293
  %73 = getelementptr inbounds i8, ptr %0, i64 287, !dbg !294
  %74 = load i8, ptr %73, align 1, !dbg !294, !tbaa !101
  %75 = zext i8 %74 to i32, !dbg !294
  %76 = add nuw nsw i32 %72, %75, !dbg !300
  call void @llvm.dbg.value(metadata i32 %76, metadata !287, metadata !DIExpression()), !dbg !293
  %77 = getelementptr inbounds i8, ptr %0, i64 -23, !dbg !298
  %78 = load i8, ptr %77, align 1, !dbg !298, !tbaa !101
  %79 = zext i8 %78 to i32, !dbg !298
  %80 = add nuw nsw i32 %76, %79, !dbg !299
  call void @llvm.dbg.value(metadata i32 %80, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 10, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 10, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %80, metadata !287, metadata !DIExpression()), !dbg !293
  %81 = getelementptr inbounds i8, ptr %0, i64 319, !dbg !294
  %82 = load i8, ptr %81, align 1, !dbg !294, !tbaa !101
  %83 = zext i8 %82 to i32, !dbg !294
  %84 = add nuw nsw i32 %80, %83, !dbg !300
  call void @llvm.dbg.value(metadata i32 %84, metadata !287, metadata !DIExpression()), !dbg !293
  %85 = getelementptr inbounds i8, ptr %0, i64 -22, !dbg !298
  %86 = load i8, ptr %85, align 1, !dbg !298, !tbaa !101
  %87 = zext i8 %86 to i32, !dbg !298
  %88 = add nuw nsw i32 %84, %87, !dbg !299
  call void @llvm.dbg.value(metadata i32 %88, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 11, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 11, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %88, metadata !287, metadata !DIExpression()), !dbg !293
  %89 = getelementptr inbounds i8, ptr %0, i64 351, !dbg !294
  %90 = load i8, ptr %89, align 1, !dbg !294, !tbaa !101
  %91 = zext i8 %90 to i32, !dbg !294
  %92 = add nuw nsw i32 %88, %91, !dbg !300
  call void @llvm.dbg.value(metadata i32 %92, metadata !287, metadata !DIExpression()), !dbg !293
  %93 = getelementptr inbounds i8, ptr %0, i64 -21, !dbg !298
  %94 = load i8, ptr %93, align 1, !dbg !298, !tbaa !101
  %95 = zext i8 %94 to i32, !dbg !298
  %96 = add nuw nsw i32 %92, %95, !dbg !299
  call void @llvm.dbg.value(metadata i32 %96, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 12, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 12, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %96, metadata !287, metadata !DIExpression()), !dbg !293
  %97 = getelementptr inbounds i8, ptr %0, i64 383, !dbg !294
  %98 = load i8, ptr %97, align 1, !dbg !294, !tbaa !101
  %99 = zext i8 %98 to i32, !dbg !294
  %100 = add nuw nsw i32 %96, %99, !dbg !300
  call void @llvm.dbg.value(metadata i32 %100, metadata !287, metadata !DIExpression()), !dbg !293
  %101 = getelementptr inbounds i8, ptr %0, i64 -20, !dbg !298
  %102 = load i8, ptr %101, align 1, !dbg !298, !tbaa !101
  %103 = zext i8 %102 to i32, !dbg !298
  %104 = add nuw nsw i32 %100, %103, !dbg !299
  call void @llvm.dbg.value(metadata i32 %104, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 13, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 13, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %104, metadata !287, metadata !DIExpression()), !dbg !293
  %105 = getelementptr inbounds i8, ptr %0, i64 415, !dbg !294
  %106 = load i8, ptr %105, align 1, !dbg !294, !tbaa !101
  %107 = zext i8 %106 to i32, !dbg !294
  %108 = add nuw nsw i32 %104, %107, !dbg !300
  call void @llvm.dbg.value(metadata i32 %108, metadata !287, metadata !DIExpression()), !dbg !293
  %109 = getelementptr inbounds i8, ptr %0, i64 -19, !dbg !298
  %110 = load i8, ptr %109, align 1, !dbg !298, !tbaa !101
  %111 = zext i8 %110 to i32, !dbg !298
  %112 = add nuw nsw i32 %108, %111, !dbg !299
  call void @llvm.dbg.value(metadata i32 %112, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 14, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 14, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %112, metadata !287, metadata !DIExpression()), !dbg !293
  %113 = getelementptr inbounds i8, ptr %0, i64 447, !dbg !294
  %114 = load i8, ptr %113, align 1, !dbg !294, !tbaa !101
  %115 = zext i8 %114 to i32, !dbg !294
  %116 = add nuw nsw i32 %112, %115, !dbg !300
  call void @llvm.dbg.value(metadata i32 %116, metadata !287, metadata !DIExpression()), !dbg !293
  %117 = getelementptr inbounds i8, ptr %0, i64 -18, !dbg !298
  %118 = load i8, ptr %117, align 1, !dbg !298, !tbaa !101
  %119 = zext i8 %118 to i32, !dbg !298
  %120 = add nuw nsw i32 %116, %119, !dbg !299
  call void @llvm.dbg.value(metadata i32 %120, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 15, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 15, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %120, metadata !287, metadata !DIExpression()), !dbg !293
  %121 = getelementptr inbounds i8, ptr %0, i64 479, !dbg !294
  %122 = load i8, ptr %121, align 1, !dbg !294, !tbaa !101
  %123 = zext i8 %122 to i32, !dbg !294
  %124 = add nuw nsw i32 %120, %123, !dbg !300
  call void @llvm.dbg.value(metadata i32 %124, metadata !287, metadata !DIExpression()), !dbg !293
  %125 = getelementptr inbounds i8, ptr %0, i64 -17, !dbg !298
  %126 = load i8, ptr %125, align 1, !dbg !298, !tbaa !101
  %127 = zext i8 %126 to i32, !dbg !298
  %128 = add nuw nsw i32 %124, %127, !dbg !299
  call void @llvm.dbg.value(metadata i32 %128, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i64 16, metadata !288, metadata !DIExpression()), !dbg !293
  %129 = add nuw nsw i32 %128, 16, !dbg !301
  %130 = lshr i32 %129, 5, !dbg !302
  %131 = mul nuw i32 %130, 16843009, !dbg !303
  call void @llvm.dbg.value(metadata i32 %131, metadata !287, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 0, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %0, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %0, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 0, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  %132 = insertelement <4 x i32> poison, i32 %131, i64 0, !dbg !305
  %133 = shufflevector <4 x i32> %132, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !305
  store <4 x i32> %133, ptr %0, align 4, !dbg !305, !tbaa !248
  %134 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !305
  call void @llvm.dbg.value(metadata ptr %134, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 1, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %134, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 1, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %134, metadata !289, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 44, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 44, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  store <4 x i32> %133, ptr %134, align 4, !dbg !305, !tbaa !248
  %135 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !305
  call void @llvm.dbg.value(metadata ptr %135, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 2, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %135, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 2, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %135, metadata !289, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 68, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 76, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 76, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  store <4 x i32> %133, ptr %135, align 4, !dbg !305, !tbaa !248
  %136 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !305
  call void @llvm.dbg.value(metadata ptr %136, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 3, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %136, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 3, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %136, metadata !289, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 100, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 108, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 108, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  store <4 x i32> %133, ptr %136, align 4, !dbg !305, !tbaa !248
  %137 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !305
  call void @llvm.dbg.value(metadata ptr %137, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 4, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %137, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 4, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %137, metadata !289, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 132, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 140, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 140, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  store <4 x i32> %133, ptr %137, align 4, !dbg !305, !tbaa !248
  %138 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !305
  call void @llvm.dbg.value(metadata ptr %138, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 5, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %138, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 5, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %138, metadata !289, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 164, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 168, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 172, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 172, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  store <4 x i32> %133, ptr %138, align 4, !dbg !305, !tbaa !248
  %139 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !305
  call void @llvm.dbg.value(metadata ptr %139, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 6, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %139, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 6, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %139, metadata !289, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 196, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 200, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 204, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 204, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  store <4 x i32> %133, ptr %139, align 4, !dbg !305, !tbaa !248
  %140 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !305
  call void @llvm.dbg.value(metadata ptr %140, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 7, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %140, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 7, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %140, metadata !289, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 228, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 236, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 236, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  store <4 x i32> %133, ptr %140, align 4, !dbg !305, !tbaa !248
  %141 = getelementptr inbounds i8, ptr %0, i64 256, !dbg !305
  call void @llvm.dbg.value(metadata ptr %141, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 8, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %141, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 8, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %141, metadata !289, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 260, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 264, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 268, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 268, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  store <4 x i32> %133, ptr %141, align 4, !dbg !305, !tbaa !248
  %142 = getelementptr inbounds i8, ptr %0, i64 288, !dbg !305
  call void @llvm.dbg.value(metadata ptr %142, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 9, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %142, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 9, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %142, metadata !289, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 292, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 296, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 300, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 300, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  store <4 x i32> %133, ptr %142, align 4, !dbg !305, !tbaa !248
  %143 = getelementptr inbounds i8, ptr %0, i64 320, !dbg !305
  call void @llvm.dbg.value(metadata ptr %143, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 10, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %143, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 10, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %143, metadata !289, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 324, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 328, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 332, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 332, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  store <4 x i32> %133, ptr %143, align 4, !dbg !305, !tbaa !248
  %144 = getelementptr inbounds i8, ptr %0, i64 352, !dbg !305
  call void @llvm.dbg.value(metadata ptr %144, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 11, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %144, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 11, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %144, metadata !289, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 356, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 360, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 364, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 364, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  store <4 x i32> %133, ptr %144, align 4, !dbg !305, !tbaa !248
  %145 = getelementptr inbounds i8, ptr %0, i64 384, !dbg !305
  call void @llvm.dbg.value(metadata ptr %145, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 12, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %145, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 12, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %145, metadata !289, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 388, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 392, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 396, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 396, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  store <4 x i32> %133, ptr %145, align 4, !dbg !305, !tbaa !248
  %146 = getelementptr inbounds i8, ptr %0, i64 416, !dbg !305
  call void @llvm.dbg.value(metadata ptr %146, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 13, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %146, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 13, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %146, metadata !289, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 420, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 424, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 428, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 428, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  store <4 x i32> %133, ptr %146, align 4, !dbg !305, !tbaa !248
  %147 = getelementptr inbounds i8, ptr %0, i64 448, !dbg !305
  call void @llvm.dbg.value(metadata ptr %147, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 14, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %147, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 14, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %147, metadata !289, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 452, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 456, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 460, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 460, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  store <4 x i32> %133, ptr %147, align 4, !dbg !305, !tbaa !248
  %148 = getelementptr inbounds i8, ptr %0, i64 480, !dbg !305
  call void @llvm.dbg.value(metadata ptr %148, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 15, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %148, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 15, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %148, metadata !289, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 484, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 488, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 492, DW_OP_stack_value)), !dbg !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !289, metadata !DIExpression(DW_OP_plus_uconst, 492, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !304
  store <4 x i32> %133, ptr %148, align 4, !dbg !305, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %148, metadata !286, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !293
  call void @llvm.dbg.value(metadata i32 16, metadata !288, metadata !DIExpression()), !dbg !293
  ret void, !dbg !306
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_p(ptr nocapture noundef %0) #2 !dbg !307 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !309, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 0, metadata !316, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 0, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 0, metadata !312, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 0, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 0, metadata !316, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 0, metadata !312, metadata !DIExpression()), !dbg !323
  %2 = getelementptr inbounds i8, ptr %0, i64 -24, !dbg !324
  %3 = load i8, ptr %2, align 1, !dbg !324, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !324
  %5 = getelementptr inbounds i8, ptr %0, i64 -26, !dbg !328
  %6 = load i8, ptr %5, align 1, !dbg !328, !tbaa !101
  %7 = zext i8 %6 to i32, !dbg !328
  %8 = sub nsw i32 %4, %7, !dbg !329
  call void @llvm.dbg.value(metadata i32 %8, metadata !316, metadata !DIExpression()), !dbg !323
  %9 = getelementptr inbounds i8, ptr %0, i64 255, !dbg !330
  %10 = load i8, ptr %9, align 1, !dbg !330, !tbaa !101
  %11 = zext i8 %10 to i32, !dbg !330
  %12 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !331
  %13 = load i8, ptr %12, align 1, !dbg !331, !tbaa !101
  %14 = zext i8 %13 to i32, !dbg !331
  %15 = sub nsw i32 %11, %14, !dbg !332
  call void @llvm.dbg.value(metadata i32 %15, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 1, metadata !312, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %15, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %8, metadata !316, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 1, metadata !312, metadata !DIExpression()), !dbg !323
  %16 = getelementptr inbounds i8, ptr %0, i64 -23, !dbg !324
  %17 = load i8, ptr %16, align 1, !dbg !324, !tbaa !101
  %18 = zext i8 %17 to i32, !dbg !324
  %19 = getelementptr inbounds i8, ptr %0, i64 -27, !dbg !328
  %20 = load i8, ptr %19, align 1, !dbg !328, !tbaa !101
  %21 = zext i8 %20 to i32, !dbg !328
  %22 = sub nsw i32 %18, %21, !dbg !329
  %23 = shl nsw i32 %22, 1, !dbg !333
  %24 = add nsw i32 %23, %8, !dbg !334
  call void @llvm.dbg.value(metadata i32 %24, metadata !316, metadata !DIExpression()), !dbg !323
  %25 = getelementptr inbounds i8, ptr %0, i64 287, !dbg !330
  %26 = load i8, ptr %25, align 1, !dbg !330, !tbaa !101
  %27 = zext i8 %26 to i32, !dbg !330
  %28 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !331
  %29 = load i8, ptr %28, align 1, !dbg !331, !tbaa !101
  %30 = zext i8 %29 to i32, !dbg !331
  %31 = sub nsw i32 %27, %30, !dbg !332
  %32 = shl nsw i32 %31, 1, !dbg !335
  %33 = add nsw i32 %32, %15, !dbg !336
  call void @llvm.dbg.value(metadata i32 %33, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 2, metadata !312, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %33, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %24, metadata !316, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 2, metadata !312, metadata !DIExpression()), !dbg !323
  %34 = getelementptr inbounds i8, ptr %0, i64 -22, !dbg !324
  %35 = load i8, ptr %34, align 1, !dbg !324, !tbaa !101
  %36 = zext i8 %35 to i32, !dbg !324
  %37 = getelementptr inbounds i8, ptr %0, i64 -28, !dbg !328
  %38 = load i8, ptr %37, align 1, !dbg !328, !tbaa !101
  %39 = zext i8 %38 to i32, !dbg !328
  %40 = sub nsw i32 %36, %39, !dbg !329
  %41 = mul nsw i32 %40, 3, !dbg !333
  %42 = add nsw i32 %41, %24, !dbg !334
  call void @llvm.dbg.value(metadata i32 %42, metadata !316, metadata !DIExpression()), !dbg !323
  %43 = getelementptr inbounds i8, ptr %0, i64 319, !dbg !330
  %44 = load i8, ptr %43, align 1, !dbg !330, !tbaa !101
  %45 = zext i8 %44 to i32, !dbg !330
  %46 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !331
  %47 = load i8, ptr %46, align 1, !dbg !331, !tbaa !101
  %48 = zext i8 %47 to i32, !dbg !331
  %49 = sub nsw i32 %45, %48, !dbg !332
  %50 = mul nsw i32 %49, 3, !dbg !335
  %51 = add nsw i32 %50, %33, !dbg !336
  call void @llvm.dbg.value(metadata i32 %51, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 3, metadata !312, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %51, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %42, metadata !316, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 3, metadata !312, metadata !DIExpression()), !dbg !323
  %52 = getelementptr inbounds i8, ptr %0, i64 -21, !dbg !324
  %53 = load i8, ptr %52, align 1, !dbg !324, !tbaa !101
  %54 = zext i8 %53 to i32, !dbg !324
  %55 = getelementptr inbounds i8, ptr %0, i64 -29, !dbg !328
  %56 = load i8, ptr %55, align 1, !dbg !328, !tbaa !101
  %57 = zext i8 %56 to i32, !dbg !328
  %58 = sub nsw i32 %54, %57, !dbg !329
  %59 = shl nsw i32 %58, 2, !dbg !333
  %60 = add nsw i32 %59, %42, !dbg !334
  call void @llvm.dbg.value(metadata i32 %60, metadata !316, metadata !DIExpression()), !dbg !323
  %61 = getelementptr inbounds i8, ptr %0, i64 351, !dbg !330
  %62 = load i8, ptr %61, align 1, !dbg !330, !tbaa !101
  %63 = zext i8 %62 to i32, !dbg !330
  %64 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !331
  %65 = load i8, ptr %64, align 1, !dbg !331, !tbaa !101
  %66 = zext i8 %65 to i32, !dbg !331
  %67 = sub nsw i32 %63, %66, !dbg !332
  %68 = shl nsw i32 %67, 2, !dbg !335
  %69 = add nsw i32 %68, %51, !dbg !336
  call void @llvm.dbg.value(metadata i32 %69, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 4, metadata !312, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %69, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %60, metadata !316, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 4, metadata !312, metadata !DIExpression()), !dbg !323
  %70 = getelementptr inbounds i8, ptr %0, i64 -20, !dbg !324
  %71 = load i8, ptr %70, align 1, !dbg !324, !tbaa !101
  %72 = zext i8 %71 to i32, !dbg !324
  %73 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !328
  %74 = load i8, ptr %73, align 1, !dbg !328, !tbaa !101
  %75 = zext i8 %74 to i32, !dbg !328
  %76 = sub nsw i32 %72, %75, !dbg !329
  %77 = mul nsw i32 %76, 5, !dbg !333
  %78 = add nsw i32 %77, %60, !dbg !334
  call void @llvm.dbg.value(metadata i32 %78, metadata !316, metadata !DIExpression()), !dbg !323
  %79 = getelementptr inbounds i8, ptr %0, i64 383, !dbg !330
  %80 = load i8, ptr %79, align 1, !dbg !330, !tbaa !101
  %81 = zext i8 %80 to i32, !dbg !330
  %82 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !331
  %83 = load i8, ptr %82, align 1, !dbg !331, !tbaa !101
  %84 = zext i8 %83 to i32, !dbg !331
  %85 = sub nsw i32 %81, %84, !dbg !332
  %86 = mul nsw i32 %85, 5, !dbg !335
  %87 = add nsw i32 %86, %69, !dbg !336
  call void @llvm.dbg.value(metadata i32 %87, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 5, metadata !312, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %87, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %78, metadata !316, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 5, metadata !312, metadata !DIExpression()), !dbg !323
  %88 = getelementptr inbounds i8, ptr %0, i64 -19, !dbg !324
  %89 = load i8, ptr %88, align 1, !dbg !324, !tbaa !101
  %90 = zext i8 %89 to i32, !dbg !324
  %91 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !328
  %92 = load i8, ptr %91, align 1, !dbg !328, !tbaa !101
  %93 = zext i8 %92 to i32, !dbg !328
  %94 = sub nsw i32 %90, %93, !dbg !329
  %95 = mul nsw i32 %94, 6, !dbg !333
  %96 = add nsw i32 %95, %78, !dbg !334
  call void @llvm.dbg.value(metadata i32 %96, metadata !316, metadata !DIExpression()), !dbg !323
  %97 = getelementptr inbounds i8, ptr %0, i64 415, !dbg !330
  %98 = load i8, ptr %97, align 1, !dbg !330, !tbaa !101
  %99 = zext i8 %98 to i32, !dbg !330
  %100 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !331
  %101 = load i8, ptr %100, align 1, !dbg !331, !tbaa !101
  %102 = zext i8 %101 to i32, !dbg !331
  %103 = sub nsw i32 %99, %102, !dbg !332
  %104 = mul nsw i32 %103, 6, !dbg !335
  %105 = add nsw i32 %104, %87, !dbg !336
  call void @llvm.dbg.value(metadata i32 %105, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 6, metadata !312, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %105, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %96, metadata !316, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 6, metadata !312, metadata !DIExpression()), !dbg !323
  %106 = getelementptr inbounds i8, ptr %0, i64 -18, !dbg !324
  %107 = load i8, ptr %106, align 1, !dbg !324, !tbaa !101
  %108 = zext i8 %107 to i32, !dbg !324
  %109 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !328
  %110 = load i8, ptr %109, align 1, !dbg !328, !tbaa !101
  %111 = zext i8 %110 to i32, !dbg !328
  %112 = sub nsw i32 %108, %111, !dbg !329
  %113 = mul nsw i32 %112, 7, !dbg !333
  %114 = add nsw i32 %113, %96, !dbg !334
  call void @llvm.dbg.value(metadata i32 %114, metadata !316, metadata !DIExpression()), !dbg !323
  %115 = getelementptr inbounds i8, ptr %0, i64 447, !dbg !330
  %116 = load i8, ptr %115, align 1, !dbg !330, !tbaa !101
  %117 = zext i8 %116 to i32, !dbg !330
  %118 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !331
  %119 = load i8, ptr %118, align 1, !dbg !331, !tbaa !101
  %120 = zext i8 %119 to i32, !dbg !331
  %121 = sub nsw i32 %117, %120, !dbg !332
  %122 = mul nsw i32 %121, 7, !dbg !335
  %123 = add nsw i32 %122, %105, !dbg !336
  call void @llvm.dbg.value(metadata i32 %123, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 7, metadata !312, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %123, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %114, metadata !316, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 7, metadata !312, metadata !DIExpression()), !dbg !323
  %124 = getelementptr inbounds i8, ptr %0, i64 -17, !dbg !324
  %125 = load i8, ptr %124, align 1, !dbg !324, !tbaa !101
  %126 = zext i8 %125 to i32, !dbg !324
  %127 = getelementptr inbounds i8, ptr %0, i64 -33, !dbg !328
  %128 = load i8, ptr %127, align 1, !dbg !328, !tbaa !101
  %129 = zext i8 %128 to i32, !dbg !328
  %130 = sub nsw i32 %126, %129, !dbg !329
  %131 = shl nsw i32 %130, 3, !dbg !333
  %132 = add nsw i32 %131, %114, !dbg !334
  call void @llvm.dbg.value(metadata i32 %132, metadata !316, metadata !DIExpression()), !dbg !323
  %133 = getelementptr inbounds i8, ptr %0, i64 479, !dbg !330
  %134 = load i8, ptr %133, align 1, !dbg !330, !tbaa !101
  %135 = zext i8 %134 to i32, !dbg !330
  %136 = sub nsw i32 %135, %129, !dbg !332
  %137 = shl nsw i32 %136, 3, !dbg !335
  %138 = add nsw i32 %137, %123, !dbg !336
  call void @llvm.dbg.value(metadata i32 %138, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 8, metadata !312, metadata !DIExpression()), !dbg !323
  %139 = add nuw nsw i32 %126, %135, !dbg !337
  %140 = shl nuw nsw i32 %139, 4, !dbg !338
  call void @llvm.dbg.value(metadata i32 %140, metadata !313, metadata !DIExpression()), !dbg !323
  %141 = mul nsw i32 %132, 5, !dbg !339
  %142 = add nsw i32 %141, 32, !dbg !340
  %143 = ashr i32 %142, 6, !dbg !341
  call void @llvm.dbg.value(metadata i32 %143, metadata !314, metadata !DIExpression()), !dbg !323
  %144 = mul nsw i32 %138, 5, !dbg !342
  %145 = add nsw i32 %144, 32, !dbg !343
  %146 = ashr i32 %145, 6, !dbg !344
  call void @llvm.dbg.value(metadata i32 %146, metadata !315, metadata !DIExpression()), !dbg !323
  %147 = add nsw i32 %146, %143
  %148 = mul nsw i32 %147, -7
  %149 = add nsw i32 %148, 16, !dbg !345
  %150 = add nsw i32 %149, %140, !dbg !346
  call void @llvm.dbg.value(metadata i32 %150, metadata !318, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 0, metadata !311, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata ptr %0, metadata !309, metadata !DIExpression()), !dbg !323
  %151 = insertelement <2 x i32> <i32 0, i32 poison>, i32 %150, i64 1
  %152 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %146, i64 1, !dbg !347
  br label %153, !dbg !348

153:                                              ; preds = %1, %153
  %154 = phi ptr [ %0, %1 ], [ %194, %153 ]
  %155 = phi <2 x i32> [ %151, %1 ], [ %195, %153 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !318, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata ptr %154, metadata !309, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 undef, metadata !311, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 undef, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 0, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 undef, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 0, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 undef, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !356
  %156 = extractelement <2 x i32> %155, i64 1, !dbg !361
  %157 = add nsw i32 %156, %143, !dbg !361
  call void @llvm.dbg.value(metadata i32 %157, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 1, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %157, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 1, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %157, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !356
  %158 = add nsw i32 %157, %143, !dbg !361
  call void @llvm.dbg.value(metadata i32 %158, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 2, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %158, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 2, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %158, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !356
  %159 = add nsw i32 %158, %143, !dbg !361
  call void @llvm.dbg.value(metadata i32 %159, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 3, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %159, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 3, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %159, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !356
  %160 = add nsw i32 %159, %143, !dbg !361
  call void @llvm.dbg.value(metadata i32 %160, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 4, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %160, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 4, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %160, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !356
  %161 = add nsw i32 %160, %143, !dbg !361
  call void @llvm.dbg.value(metadata i32 %161, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 5, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %161, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 5, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %161, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !356
  %162 = add nsw i32 %161, %143, !dbg !361
  call void @llvm.dbg.value(metadata i32 %162, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 6, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %162, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 6, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %162, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !356
  %163 = add nsw i32 %162, %143, !dbg !361
  call void @llvm.dbg.value(metadata i32 %163, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 7, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %163, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 7, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %163, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !356
  %164 = add nsw i32 %163, %143, !dbg !361
  call void @llvm.dbg.value(metadata i32 %164, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 8, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %164, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 8, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %164, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !356
  %165 = add nsw i32 %164, %143, !dbg !361
  call void @llvm.dbg.value(metadata i32 %165, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 9, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %165, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 9, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %165, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !356
  %166 = add nsw i32 %165, %143, !dbg !361
  call void @llvm.dbg.value(metadata i32 %166, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 10, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %166, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 10, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %166, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !356
  %167 = add nsw i32 %166, %143, !dbg !361
  call void @llvm.dbg.value(metadata i32 %167, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 11, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %167, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 11, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %167, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !356
  %168 = add nsw i32 %167, %143, !dbg !361
  call void @llvm.dbg.value(metadata i32 %168, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 12, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %168, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 12, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %168, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !356
  %169 = add nsw i32 %168, %143, !dbg !361
  call void @llvm.dbg.value(metadata i32 %169, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 13, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %169, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 13, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %169, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !356
  %170 = add nsw i32 %169, %143, !dbg !361
  call void @llvm.dbg.value(metadata i32 %170, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 14, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %170, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 14, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %170, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !356
  %171 = add nsw i32 %170, %143, !dbg !361
  call void @llvm.dbg.value(metadata i32 %171, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 15, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %171, metadata !319, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 15, metadata !310, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %171, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !356
  %172 = shufflevector <2 x i32> %155, <2 x i32> poison, <16 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !362
  %173 = insertelement <16 x i32> %172, i32 %157, i64 1, !dbg !362
  %174 = insertelement <16 x i32> %173, i32 %158, i64 2, !dbg !362
  %175 = insertelement <16 x i32> %174, i32 %159, i64 3, !dbg !362
  %176 = insertelement <16 x i32> %175, i32 %160, i64 4, !dbg !362
  %177 = insertelement <16 x i32> %176, i32 %161, i64 5, !dbg !362
  %178 = insertelement <16 x i32> %177, i32 %162, i64 6, !dbg !362
  %179 = insertelement <16 x i32> %178, i32 %163, i64 7, !dbg !362
  %180 = insertelement <16 x i32> %179, i32 %164, i64 8, !dbg !362
  %181 = insertelement <16 x i32> %180, i32 %165, i64 9, !dbg !362
  %182 = insertelement <16 x i32> %181, i32 %166, i64 10, !dbg !362
  %183 = insertelement <16 x i32> %182, i32 %167, i64 11, !dbg !362
  %184 = insertelement <16 x i32> %183, i32 %168, i64 12, !dbg !362
  %185 = insertelement <16 x i32> %184, i32 %169, i64 13, !dbg !362
  %186 = insertelement <16 x i32> %185, i32 %170, i64 14, !dbg !362
  %187 = insertelement <16 x i32> %186, i32 %171, i64 15, !dbg !362
  %188 = lshr <16 x i32> %187, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !362
  %189 = icmp ult <16 x i32> %187, <i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192>, !dbg !363
  %190 = icmp sgt <16 x i32> %187, <i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31>, !dbg !364
  %191 = sext <16 x i1> %190 to <16 x i32>, !dbg !364
  %192 = select <16 x i1> %189, <16 x i32> %188, <16 x i32> %191, !dbg !364
  %193 = trunc <16 x i32> %192 to <16 x i8>, !dbg !364
  store <16 x i8> %193, ptr %154, align 1, !dbg !365, !tbaa !101
  call void @llvm.dbg.value(metadata !DIArgList(i32 %171, i32 %143), metadata !319, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !349
  call void @llvm.dbg.value(metadata i64 16, metadata !310, metadata !DIExpression()), !dbg !323
  %194 = getelementptr inbounds i8, ptr %154, i64 32, !dbg !366
  call void @llvm.dbg.value(metadata ptr %194, metadata !309, metadata !DIExpression()), !dbg !323
  %195 = add nsw <2 x i32> %155, %152, !dbg !367
  call void @llvm.dbg.value(metadata i32 undef, metadata !318, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 undef, metadata !311, metadata !DIExpression()), !dbg !323
  %196 = extractelement <2 x i32> %195, i64 0, !dbg !368
  %197 = icmp eq i32 %196, 16, !dbg !368
  br i1 %197, label %198, label %153, !dbg !348, !llvm.loop !369

198:                                              ; preds = %153
  ret void, !dbg !372
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_dc_left(ptr nocapture noundef %0) #2 !dbg !373 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 0, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 0, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 0, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 0, metadata !376, metadata !DIExpression()), !dbg !382
  %2 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !383
  %3 = load i8, ptr %2, align 1, !dbg !383, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !383
  call void @llvm.dbg.value(metadata i32 %4, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 1, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 1, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %4, metadata !376, metadata !DIExpression()), !dbg !382
  %5 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !383
  %6 = load i8, ptr %5, align 1, !dbg !383, !tbaa !101
  %7 = zext i8 %6 to i32, !dbg !383
  %8 = add nuw nsw i32 %4, %7, !dbg !387
  call void @llvm.dbg.value(metadata i32 %8, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 2, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 2, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %8, metadata !376, metadata !DIExpression()), !dbg !382
  %9 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !383
  %10 = load i8, ptr %9, align 1, !dbg !383, !tbaa !101
  %11 = zext i8 %10 to i32, !dbg !383
  %12 = add nuw nsw i32 %8, %11, !dbg !387
  call void @llvm.dbg.value(metadata i32 %12, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 3, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 3, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %12, metadata !376, metadata !DIExpression()), !dbg !382
  %13 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !383
  %14 = load i8, ptr %13, align 1, !dbg !383, !tbaa !101
  %15 = zext i8 %14 to i32, !dbg !383
  %16 = add nuw nsw i32 %12, %15, !dbg !387
  call void @llvm.dbg.value(metadata i32 %16, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 4, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 4, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %16, metadata !376, metadata !DIExpression()), !dbg !382
  %17 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !383
  %18 = load i8, ptr %17, align 1, !dbg !383, !tbaa !101
  %19 = zext i8 %18 to i32, !dbg !383
  %20 = add nuw nsw i32 %16, %19, !dbg !387
  call void @llvm.dbg.value(metadata i32 %20, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 5, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 5, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %20, metadata !376, metadata !DIExpression()), !dbg !382
  %21 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !383
  %22 = load i8, ptr %21, align 1, !dbg !383, !tbaa !101
  %23 = zext i8 %22 to i32, !dbg !383
  %24 = add nuw nsw i32 %20, %23, !dbg !387
  call void @llvm.dbg.value(metadata i32 %24, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 6, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 6, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %24, metadata !376, metadata !DIExpression()), !dbg !382
  %25 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !383
  %26 = load i8, ptr %25, align 1, !dbg !383, !tbaa !101
  %27 = zext i8 %26 to i32, !dbg !383
  %28 = add nuw nsw i32 %24, %27, !dbg !387
  call void @llvm.dbg.value(metadata i32 %28, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 7, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 7, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %28, metadata !376, metadata !DIExpression()), !dbg !382
  %29 = getelementptr inbounds i8, ptr %0, i64 223, !dbg !383
  %30 = load i8, ptr %29, align 1, !dbg !383, !tbaa !101
  %31 = zext i8 %30 to i32, !dbg !383
  %32 = add nuw nsw i32 %28, %31, !dbg !387
  call void @llvm.dbg.value(metadata i32 %32, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 8, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 8, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %32, metadata !376, metadata !DIExpression()), !dbg !382
  %33 = getelementptr inbounds i8, ptr %0, i64 255, !dbg !383
  %34 = load i8, ptr %33, align 1, !dbg !383, !tbaa !101
  %35 = zext i8 %34 to i32, !dbg !383
  %36 = add nuw nsw i32 %32, %35, !dbg !387
  call void @llvm.dbg.value(metadata i32 %36, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 9, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 9, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %36, metadata !376, metadata !DIExpression()), !dbg !382
  %37 = getelementptr inbounds i8, ptr %0, i64 287, !dbg !383
  %38 = load i8, ptr %37, align 1, !dbg !383, !tbaa !101
  %39 = zext i8 %38 to i32, !dbg !383
  %40 = add nuw nsw i32 %36, %39, !dbg !387
  call void @llvm.dbg.value(metadata i32 %40, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 10, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 10, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %40, metadata !376, metadata !DIExpression()), !dbg !382
  %41 = getelementptr inbounds i8, ptr %0, i64 319, !dbg !383
  %42 = load i8, ptr %41, align 1, !dbg !383, !tbaa !101
  %43 = zext i8 %42 to i32, !dbg !383
  %44 = add nuw nsw i32 %40, %43, !dbg !387
  call void @llvm.dbg.value(metadata i32 %44, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 11, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 11, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %44, metadata !376, metadata !DIExpression()), !dbg !382
  %45 = getelementptr inbounds i8, ptr %0, i64 351, !dbg !383
  %46 = load i8, ptr %45, align 1, !dbg !383, !tbaa !101
  %47 = zext i8 %46 to i32, !dbg !383
  %48 = add nuw nsw i32 %44, %47, !dbg !387
  call void @llvm.dbg.value(metadata i32 %48, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 12, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 12, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %48, metadata !376, metadata !DIExpression()), !dbg !382
  %49 = getelementptr inbounds i8, ptr %0, i64 383, !dbg !383
  %50 = load i8, ptr %49, align 1, !dbg !383, !tbaa !101
  %51 = zext i8 %50 to i32, !dbg !383
  %52 = add nuw nsw i32 %48, %51, !dbg !387
  call void @llvm.dbg.value(metadata i32 %52, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 13, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 13, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %52, metadata !376, metadata !DIExpression()), !dbg !382
  %53 = getelementptr inbounds i8, ptr %0, i64 415, !dbg !383
  %54 = load i8, ptr %53, align 1, !dbg !383, !tbaa !101
  %55 = zext i8 %54 to i32, !dbg !383
  %56 = add nuw nsw i32 %52, %55, !dbg !387
  call void @llvm.dbg.value(metadata i32 %56, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 14, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 14, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %56, metadata !376, metadata !DIExpression()), !dbg !382
  %57 = getelementptr inbounds i8, ptr %0, i64 447, !dbg !383
  %58 = load i8, ptr %57, align 1, !dbg !383, !tbaa !101
  %59 = zext i8 %58 to i32, !dbg !383
  %60 = add nuw nsw i32 %56, %59, !dbg !387
  call void @llvm.dbg.value(metadata i32 %60, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 15, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 15, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %60, metadata !376, metadata !DIExpression()), !dbg !382
  %61 = getelementptr inbounds i8, ptr %0, i64 479, !dbg !383
  %62 = load i8, ptr %61, align 1, !dbg !383, !tbaa !101
  %63 = zext i8 %62 to i32, !dbg !383
  %64 = add nuw nsw i32 %60, %63, !dbg !387
  call void @llvm.dbg.value(metadata i32 %64, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 16, metadata !377, metadata !DIExpression()), !dbg !382
  %65 = add nuw nsw i32 %64, 8, !dbg !388
  %66 = lshr i32 %65, 4, !dbg !389
  %67 = mul nuw i32 %66, 16843009, !dbg !390
  call void @llvm.dbg.value(metadata i32 %67, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 0, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %0, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %0, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 0, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  %68 = insertelement <4 x i32> poison, i32 %67, i64 0, !dbg !392
  %69 = shufflevector <4 x i32> %68, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !392
  store <4 x i32> %69, ptr %0, align 4, !dbg !392, !tbaa !248
  %70 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !392
  call void @llvm.dbg.value(metadata ptr %70, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 1, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %70, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 1, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %70, metadata !378, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 44, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 44, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  store <4 x i32> %69, ptr %70, align 4, !dbg !392, !tbaa !248
  %71 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !392
  call void @llvm.dbg.value(metadata ptr %71, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 2, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %71, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 2, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %71, metadata !378, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 68, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 76, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 76, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  store <4 x i32> %69, ptr %71, align 4, !dbg !392, !tbaa !248
  %72 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !392
  call void @llvm.dbg.value(metadata ptr %72, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 3, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %72, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 3, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %72, metadata !378, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 100, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 108, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 108, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  store <4 x i32> %69, ptr %72, align 4, !dbg !392, !tbaa !248
  %73 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !392
  call void @llvm.dbg.value(metadata ptr %73, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 4, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %73, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 4, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %73, metadata !378, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 132, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 140, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 140, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  store <4 x i32> %69, ptr %73, align 4, !dbg !392, !tbaa !248
  %74 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !392
  call void @llvm.dbg.value(metadata ptr %74, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 5, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %74, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 5, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %74, metadata !378, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 164, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 168, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 172, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 172, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  store <4 x i32> %69, ptr %74, align 4, !dbg !392, !tbaa !248
  %75 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !392
  call void @llvm.dbg.value(metadata ptr %75, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 6, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %75, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 6, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %75, metadata !378, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 196, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 200, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 204, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 204, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  store <4 x i32> %69, ptr %75, align 4, !dbg !392, !tbaa !248
  %76 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !392
  call void @llvm.dbg.value(metadata ptr %76, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 7, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %76, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 7, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %76, metadata !378, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 228, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 236, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 236, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  store <4 x i32> %69, ptr %76, align 4, !dbg !392, !tbaa !248
  %77 = getelementptr inbounds i8, ptr %0, i64 256, !dbg !392
  call void @llvm.dbg.value(metadata ptr %77, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 8, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %77, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 8, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %77, metadata !378, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 260, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 264, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 268, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 268, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  store <4 x i32> %69, ptr %77, align 4, !dbg !392, !tbaa !248
  %78 = getelementptr inbounds i8, ptr %0, i64 288, !dbg !392
  call void @llvm.dbg.value(metadata ptr %78, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 9, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %78, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 9, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %78, metadata !378, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 292, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 296, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 300, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 300, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  store <4 x i32> %69, ptr %78, align 4, !dbg !392, !tbaa !248
  %79 = getelementptr inbounds i8, ptr %0, i64 320, !dbg !392
  call void @llvm.dbg.value(metadata ptr %79, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 10, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %79, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 10, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %79, metadata !378, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 324, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 328, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 332, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 332, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  store <4 x i32> %69, ptr %79, align 4, !dbg !392, !tbaa !248
  %80 = getelementptr inbounds i8, ptr %0, i64 352, !dbg !392
  call void @llvm.dbg.value(metadata ptr %80, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 11, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %80, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 11, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %80, metadata !378, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 356, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 360, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 364, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 364, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  store <4 x i32> %69, ptr %80, align 4, !dbg !392, !tbaa !248
  %81 = getelementptr inbounds i8, ptr %0, i64 384, !dbg !392
  call void @llvm.dbg.value(metadata ptr %81, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 12, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %81, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 12, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %81, metadata !378, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 388, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 392, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 396, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 396, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  store <4 x i32> %69, ptr %81, align 4, !dbg !392, !tbaa !248
  %82 = getelementptr inbounds i8, ptr %0, i64 416, !dbg !392
  call void @llvm.dbg.value(metadata ptr %82, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 13, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %82, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 13, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %82, metadata !378, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 420, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 424, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 428, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 428, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  store <4 x i32> %69, ptr %82, align 4, !dbg !392, !tbaa !248
  %83 = getelementptr inbounds i8, ptr %0, i64 448, !dbg !392
  call void @llvm.dbg.value(metadata ptr %83, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 14, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %83, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 14, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %83, metadata !378, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 452, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 456, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 460, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 460, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  store <4 x i32> %69, ptr %83, align 4, !dbg !392, !tbaa !248
  %84 = getelementptr inbounds i8, ptr %0, i64 480, !dbg !392
  call void @llvm.dbg.value(metadata ptr %84, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 15, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %84, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 15, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %84, metadata !378, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 484, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 488, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 492, DW_OP_stack_value)), !dbg !391
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 492, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !391
  store <4 x i32> %69, ptr %84, align 4, !dbg !392, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %84, metadata !375, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !382
  call void @llvm.dbg.value(metadata i32 16, metadata !377, metadata !DIExpression()), !dbg !382
  ret void, !dbg !393
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_dc_top(ptr nocapture noundef %0) #2 !dbg !394 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 0, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 0, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 0, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 0, metadata !397, metadata !DIExpression()), !dbg !403
  %2 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !404
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 1, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 1, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 2, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 2, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 3, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 3, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 4, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 4, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 5, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 5, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 6, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 6, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 7, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 7, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 8, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 8, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 9, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 9, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 10, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 10, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 11, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 11, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 12, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 12, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 13, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 13, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 14, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 14, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 15, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 15, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  %3 = load <16 x i8>, ptr %2, align 1, !dbg !404, !tbaa !101
  %4 = zext <16 x i8> %3 to <16 x i32>, !dbg !404
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 16, metadata !398, metadata !DIExpression()), !dbg !403
  %5 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %4), !dbg !408
  %6 = add i32 %5, 8, !dbg !408
  %7 = lshr i32 %6, 4, !dbg !409
  %8 = mul nuw i32 %7, 16843009, !dbg !410
  call void @llvm.dbg.value(metadata i32 %8, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 0, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %0, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %0, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 0, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  %9 = insertelement <4 x i32> poison, i32 %8, i64 0, !dbg !412
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !412
  store <4 x i32> %10, ptr %0, align 4, !dbg !412, !tbaa !248
  %11 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !412
  call void @llvm.dbg.value(metadata ptr %11, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 1, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %11, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 1, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %11, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 44, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 44, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  store <4 x i32> %10, ptr %11, align 4, !dbg !412, !tbaa !248
  %12 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !412
  call void @llvm.dbg.value(metadata ptr %12, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 2, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %12, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 2, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %12, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 68, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 76, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 76, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  store <4 x i32> %10, ptr %12, align 4, !dbg !412, !tbaa !248
  %13 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !412
  call void @llvm.dbg.value(metadata ptr %13, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 3, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %13, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 3, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %13, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 100, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 108, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 108, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  store <4 x i32> %10, ptr %13, align 4, !dbg !412, !tbaa !248
  %14 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !412
  call void @llvm.dbg.value(metadata ptr %14, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 4, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %14, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 4, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %14, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 132, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 140, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 140, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  store <4 x i32> %10, ptr %14, align 4, !dbg !412, !tbaa !248
  %15 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !412
  call void @llvm.dbg.value(metadata ptr %15, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 5, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %15, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 5, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %15, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 164, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 168, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 172, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 172, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  store <4 x i32> %10, ptr %15, align 4, !dbg !412, !tbaa !248
  %16 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !412
  call void @llvm.dbg.value(metadata ptr %16, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 6, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %16, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 6, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %16, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 196, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 200, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 204, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 204, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  store <4 x i32> %10, ptr %16, align 4, !dbg !412, !tbaa !248
  %17 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !412
  call void @llvm.dbg.value(metadata ptr %17, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 7, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %17, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 7, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %17, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 228, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 236, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 236, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  store <4 x i32> %10, ptr %17, align 4, !dbg !412, !tbaa !248
  %18 = getelementptr inbounds i8, ptr %0, i64 256, !dbg !412
  call void @llvm.dbg.value(metadata ptr %18, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 8, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %18, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 8, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %18, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 260, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 264, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 268, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 268, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  store <4 x i32> %10, ptr %18, align 4, !dbg !412, !tbaa !248
  %19 = getelementptr inbounds i8, ptr %0, i64 288, !dbg !412
  call void @llvm.dbg.value(metadata ptr %19, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 9, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %19, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 9, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %19, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 292, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 296, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 300, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 300, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  store <4 x i32> %10, ptr %19, align 4, !dbg !412, !tbaa !248
  %20 = getelementptr inbounds i8, ptr %0, i64 320, !dbg !412
  call void @llvm.dbg.value(metadata ptr %20, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 10, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %20, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 10, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %20, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 324, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 328, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 332, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 332, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  store <4 x i32> %10, ptr %20, align 4, !dbg !412, !tbaa !248
  %21 = getelementptr inbounds i8, ptr %0, i64 352, !dbg !412
  call void @llvm.dbg.value(metadata ptr %21, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 11, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %21, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 11, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %21, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 356, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 360, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 364, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 364, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  store <4 x i32> %10, ptr %21, align 4, !dbg !412, !tbaa !248
  %22 = getelementptr inbounds i8, ptr %0, i64 384, !dbg !412
  call void @llvm.dbg.value(metadata ptr %22, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 12, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %22, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 12, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %22, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 388, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 392, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 396, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 396, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  store <4 x i32> %10, ptr %22, align 4, !dbg !412, !tbaa !248
  %23 = getelementptr inbounds i8, ptr %0, i64 416, !dbg !412
  call void @llvm.dbg.value(metadata ptr %23, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 13, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %23, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 13, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %23, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 420, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 424, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 428, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 428, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  store <4 x i32> %10, ptr %23, align 4, !dbg !412, !tbaa !248
  %24 = getelementptr inbounds i8, ptr %0, i64 448, !dbg !412
  call void @llvm.dbg.value(metadata ptr %24, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 14, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %24, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 14, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %24, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 452, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 456, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 460, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 460, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  store <4 x i32> %10, ptr %24, align 4, !dbg !412, !tbaa !248
  %25 = getelementptr inbounds i8, ptr %0, i64 480, !dbg !412
  call void @llvm.dbg.value(metadata ptr %25, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 15, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %25, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 15, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata ptr %25, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 484, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 488, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 492, DW_OP_stack_value)), !dbg !411
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression(DW_OP_plus_uconst, 492, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !411
  store <4 x i32> %10, ptr %25, align 4, !dbg !412, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %25, metadata !396, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !403
  call void @llvm.dbg.value(metadata i32 16, metadata !398, metadata !DIExpression()), !dbg !403
  ret void, !dbg !413
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define internal void @predict_16x16_dc_128(ptr nocapture noundef writeonly %0) #4 !dbg !414 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 0, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %0, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 0, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  %2 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !424
  call void @llvm.dbg.value(metadata ptr %2, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 1, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %2, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 1, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %2, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 44, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 44, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  %3 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !424
  call void @llvm.dbg.value(metadata ptr %3, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 2, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %3, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 2, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %3, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 68, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 76, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 76, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  %4 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !424
  call void @llvm.dbg.value(metadata ptr %4, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 3, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %4, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 3, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %4, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 100, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 108, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 108, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  %5 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !424
  call void @llvm.dbg.value(metadata ptr %5, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 4, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %5, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 4, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %5, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 132, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 140, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 140, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  %6 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !424
  call void @llvm.dbg.value(metadata ptr %6, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 5, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %6, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 5, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %6, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 164, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 168, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 172, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 172, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  %7 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !424
  call void @llvm.dbg.value(metadata ptr %7, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 6, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %7, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 6, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %7, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 196, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 200, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 204, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 204, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  %8 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !424
  call void @llvm.dbg.value(metadata ptr %8, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 7, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %8, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 7, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %8, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 228, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 236, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 236, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  %9 = getelementptr inbounds i8, ptr %0, i64 256, !dbg !424
  call void @llvm.dbg.value(metadata ptr %9, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 8, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %9, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 8, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %9, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 260, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 264, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 268, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 268, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  %10 = getelementptr inbounds i8, ptr %0, i64 288, !dbg !424
  call void @llvm.dbg.value(metadata ptr %10, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 9, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %10, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 9, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %10, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 292, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 296, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 300, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 300, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  %11 = getelementptr inbounds i8, ptr %0, i64 320, !dbg !424
  call void @llvm.dbg.value(metadata ptr %11, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 10, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %11, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 10, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %11, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 324, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 328, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 332, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 332, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  %12 = getelementptr inbounds i8, ptr %0, i64 352, !dbg !424
  call void @llvm.dbg.value(metadata ptr %12, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 11, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %12, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 11, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %12, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 356, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 360, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 364, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 364, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  %13 = getelementptr inbounds i8, ptr %0, i64 384, !dbg !424
  call void @llvm.dbg.value(metadata ptr %13, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 12, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %13, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 12, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %13, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 388, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 392, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 396, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 396, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  %14 = getelementptr inbounds i8, ptr %0, i64 416, !dbg !424
  call void @llvm.dbg.value(metadata ptr %14, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 13, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %14, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 13, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %14, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 420, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 424, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 428, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 428, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  %15 = getelementptr inbounds i8, ptr %0, i64 448, !dbg !424
  call void @llvm.dbg.value(metadata ptr %15, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 14, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %15, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 14, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %15, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 452, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 456, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 460, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 460, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  %16 = getelementptr inbounds i8, ptr %0, i64 480, !dbg !424
  call void @llvm.dbg.value(metadata ptr %16, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 15, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %16, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 15, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %16, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 484, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 488, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 492, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression(DW_OP_plus_uconst, 492, DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !423
  call void @llvm.dbg.value(metadata ptr %16, metadata !416, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !422
  call void @llvm.dbg.value(metadata i32 16, metadata !417, metadata !DIExpression()), !dbg !422
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 -128, i64 16, i1 false), !dbg !424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 -128, i64 16, i1 false), !dbg !424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 -128, i64 16, i1 false), !dbg !424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 -128, i64 16, i1 false), !dbg !424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 -128, i64 16, i1 false), !dbg !424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 -128, i64 16, i1 false), !dbg !424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 -128, i64 16, i1 false), !dbg !424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 -128, i64 16, i1 false), !dbg !424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 -128, i64 16, i1 false), !dbg !424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, i8 -128, i64 16, i1 false), !dbg !424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %11, i8 -128, i64 16, i1 false), !dbg !424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, i8 -128, i64 16, i1 false), !dbg !424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %13, i8 -128, i64 16, i1 false), !dbg !424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %14, i8 -128, i64 16, i1 false), !dbg !424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %15, i8 -128, i64 16, i1 false), !dbg !424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %16, i8 -128, i64 16, i1 false), !dbg !424
  ret void, !dbg !425
}

declare !dbg !426 void @x264_predict_16x16_init_mmx(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_8x8c_init(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 !dbg !429 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !431, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata ptr %1, metadata !432, metadata !DIExpression()), !dbg !433
  %3 = getelementptr inbounds ptr, ptr %1, i64 2, !dbg !434
  store ptr @predict_8x8c_v, ptr %3, align 8, !dbg !435, !tbaa !217
  %4 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !436
  store ptr @predict_8x8c_h, ptr %4, align 8, !dbg !437, !tbaa !217
  store ptr @predict_8x8c_dc, ptr %1, align 8, !dbg !438, !tbaa !217
  %5 = getelementptr inbounds ptr, ptr %1, i64 3, !dbg !439
  store ptr @predict_8x8c_p, ptr %5, align 8, !dbg !440, !tbaa !217
  %6 = getelementptr inbounds ptr, ptr %1, i64 4, !dbg !441
  store ptr @predict_8x8c_dc_left, ptr %6, align 8, !dbg !442, !tbaa !217
  %7 = getelementptr inbounds ptr, ptr %1, i64 5, !dbg !443
  store ptr @predict_8x8c_dc_top, ptr %7, align 8, !dbg !444, !tbaa !217
  %8 = getelementptr inbounds ptr, ptr %1, i64 6, !dbg !445
  store ptr @predict_8x8c_dc_128, ptr %8, align 8, !dbg !446, !tbaa !217
  tail call void @x264_predict_8x8c_init_mmx(i32 noundef %0, ptr noundef nonnull %1) #12, !dbg !447
  ret void, !dbg !448
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_v(ptr nocapture noundef %0) #2 !dbg !449 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !451, metadata !DIExpression()), !dbg !459
  %2 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !460
  %3 = load i32, ptr %2, align 4, !dbg !461, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %3, metadata !452, metadata !DIExpression()), !dbg !459
  %4 = getelementptr inbounds i8, ptr %0, i64 -28, !dbg !462
  %5 = load i32, ptr %4, align 4, !dbg !463, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %5, metadata !453, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 0, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %0, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %0, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 0, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %0, metadata !455, metadata !DIExpression()), !dbg !464
  %6 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !465
  call void @llvm.dbg.value(metadata ptr %6, metadata !455, metadata !DIExpression()), !dbg !464
  store i32 %3, ptr %0, align 4, !dbg !466, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %6, metadata !455, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !464
  store i32 %5, ptr %6, align 4, !dbg !467, !tbaa !248
  %7 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !468
  call void @llvm.dbg.value(metadata ptr %7, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 1, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %7, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 1, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %7, metadata !455, metadata !DIExpression()), !dbg !464
  %8 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !465
  call void @llvm.dbg.value(metadata ptr %8, metadata !455, metadata !DIExpression()), !dbg !464
  store i32 %3, ptr %7, align 4, !dbg !466, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %8, metadata !455, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !464
  store i32 %5, ptr %8, align 4, !dbg !467, !tbaa !248
  %9 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !468
  call void @llvm.dbg.value(metadata ptr %9, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 2, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %9, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 2, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %9, metadata !455, metadata !DIExpression()), !dbg !464
  %10 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !465
  call void @llvm.dbg.value(metadata ptr %10, metadata !455, metadata !DIExpression()), !dbg !464
  store i32 %3, ptr %9, align 4, !dbg !466, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %10, metadata !455, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !464
  store i32 %5, ptr %10, align 4, !dbg !467, !tbaa !248
  %11 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !468
  call void @llvm.dbg.value(metadata ptr %11, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 3, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %11, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 3, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %11, metadata !455, metadata !DIExpression()), !dbg !464
  %12 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !465
  call void @llvm.dbg.value(metadata ptr %12, metadata !455, metadata !DIExpression()), !dbg !464
  store i32 %3, ptr %11, align 4, !dbg !466, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %12, metadata !455, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !464
  store i32 %5, ptr %12, align 4, !dbg !467, !tbaa !248
  %13 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !468
  call void @llvm.dbg.value(metadata ptr %13, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 4, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %13, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 4, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %13, metadata !455, metadata !DIExpression()), !dbg !464
  %14 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !465
  call void @llvm.dbg.value(metadata ptr %14, metadata !455, metadata !DIExpression()), !dbg !464
  store i32 %3, ptr %13, align 4, !dbg !466, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %14, metadata !455, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !464
  store i32 %5, ptr %14, align 4, !dbg !467, !tbaa !248
  %15 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !468
  call void @llvm.dbg.value(metadata ptr %15, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 5, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %15, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 5, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %15, metadata !455, metadata !DIExpression()), !dbg !464
  %16 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !465
  call void @llvm.dbg.value(metadata ptr %16, metadata !455, metadata !DIExpression()), !dbg !464
  store i32 %3, ptr %15, align 4, !dbg !466, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %16, metadata !455, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !464
  store i32 %5, ptr %16, align 4, !dbg !467, !tbaa !248
  %17 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !468
  call void @llvm.dbg.value(metadata ptr %17, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 6, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %17, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 6, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %17, metadata !455, metadata !DIExpression()), !dbg !464
  %18 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !465
  call void @llvm.dbg.value(metadata ptr %18, metadata !455, metadata !DIExpression()), !dbg !464
  store i32 %3, ptr %17, align 4, !dbg !466, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %18, metadata !455, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !464
  store i32 %5, ptr %18, align 4, !dbg !467, !tbaa !248
  %19 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !468
  call void @llvm.dbg.value(metadata ptr %19, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 7, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %19, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 7, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata ptr %19, metadata !455, metadata !DIExpression()), !dbg !464
  %20 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !465
  call void @llvm.dbg.value(metadata ptr %20, metadata !455, metadata !DIExpression()), !dbg !464
  store i32 %3, ptr %19, align 4, !dbg !466, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %20, metadata !455, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !464
  store i32 %5, ptr %20, align 4, !dbg !467, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %19, metadata !451, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !459
  call void @llvm.dbg.value(metadata i32 8, metadata !454, metadata !DIExpression()), !dbg !459
  ret void, !dbg !469
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_h(ptr nocapture noundef %0) #3 !dbg !470 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 0, metadata !473, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata ptr %0, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 0, metadata !473, metadata !DIExpression()), !dbg !479
  %2 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !480
  %3 = load i8, ptr %2, align 1, !dbg !480, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !480
  %5 = mul nuw nsw i32 %4, 16843009, !dbg !481
  call void @llvm.dbg.value(metadata i32 %5, metadata !474, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata ptr %0, metadata !478, metadata !DIExpression()), !dbg !482
  %6 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !483
  call void @llvm.dbg.value(metadata ptr %6, metadata !478, metadata !DIExpression()), !dbg !482
  store i32 %5, ptr %0, align 4, !dbg !484, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %6, metadata !478, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !482
  store i32 %5, ptr %6, align 4, !dbg !485, !tbaa !248
  %7 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !486
  call void @llvm.dbg.value(metadata ptr %7, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 1, metadata !473, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata ptr %7, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 1, metadata !473, metadata !DIExpression()), !dbg !479
  %8 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !480
  %9 = load i8, ptr %8, align 1, !dbg !480, !tbaa !101
  %10 = zext i8 %9 to i32, !dbg !480
  %11 = mul nuw nsw i32 %10, 16843009, !dbg !481
  call void @llvm.dbg.value(metadata i32 %11, metadata !474, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata ptr %7, metadata !478, metadata !DIExpression()), !dbg !482
  %12 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !483
  call void @llvm.dbg.value(metadata ptr %12, metadata !478, metadata !DIExpression()), !dbg !482
  store i32 %11, ptr %7, align 4, !dbg !484, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %12, metadata !478, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !482
  store i32 %11, ptr %12, align 4, !dbg !485, !tbaa !248
  %13 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !486
  call void @llvm.dbg.value(metadata ptr %13, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 2, metadata !473, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata ptr %13, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 2, metadata !473, metadata !DIExpression()), !dbg !479
  %14 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !480
  %15 = load i8, ptr %14, align 1, !dbg !480, !tbaa !101
  %16 = zext i8 %15 to i32, !dbg !480
  %17 = mul nuw nsw i32 %16, 16843009, !dbg !481
  call void @llvm.dbg.value(metadata i32 %17, metadata !474, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata ptr %13, metadata !478, metadata !DIExpression()), !dbg !482
  %18 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !483
  call void @llvm.dbg.value(metadata ptr %18, metadata !478, metadata !DIExpression()), !dbg !482
  store i32 %17, ptr %13, align 4, !dbg !484, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %18, metadata !478, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !482
  store i32 %17, ptr %18, align 4, !dbg !485, !tbaa !248
  %19 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !486
  call void @llvm.dbg.value(metadata ptr %19, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 3, metadata !473, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata ptr %19, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 3, metadata !473, metadata !DIExpression()), !dbg !479
  %20 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !480
  %21 = load i8, ptr %20, align 1, !dbg !480, !tbaa !101
  %22 = zext i8 %21 to i32, !dbg !480
  %23 = mul nuw nsw i32 %22, 16843009, !dbg !481
  call void @llvm.dbg.value(metadata i32 %23, metadata !474, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata ptr %19, metadata !478, metadata !DIExpression()), !dbg !482
  %24 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !483
  call void @llvm.dbg.value(metadata ptr %24, metadata !478, metadata !DIExpression()), !dbg !482
  store i32 %23, ptr %19, align 4, !dbg !484, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %24, metadata !478, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !482
  store i32 %23, ptr %24, align 4, !dbg !485, !tbaa !248
  %25 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !486
  call void @llvm.dbg.value(metadata ptr %25, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 4, metadata !473, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata ptr %25, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 4, metadata !473, metadata !DIExpression()), !dbg !479
  %26 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !480
  %27 = load i8, ptr %26, align 1, !dbg !480, !tbaa !101
  %28 = zext i8 %27 to i32, !dbg !480
  %29 = mul nuw nsw i32 %28, 16843009, !dbg !481
  call void @llvm.dbg.value(metadata i32 %29, metadata !474, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata ptr %25, metadata !478, metadata !DIExpression()), !dbg !482
  %30 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !483
  call void @llvm.dbg.value(metadata ptr %30, metadata !478, metadata !DIExpression()), !dbg !482
  store i32 %29, ptr %25, align 4, !dbg !484, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %30, metadata !478, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !482
  store i32 %29, ptr %30, align 4, !dbg !485, !tbaa !248
  %31 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !486
  call void @llvm.dbg.value(metadata ptr %31, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 5, metadata !473, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata ptr %31, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 5, metadata !473, metadata !DIExpression()), !dbg !479
  %32 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !480
  %33 = load i8, ptr %32, align 1, !dbg !480, !tbaa !101
  %34 = zext i8 %33 to i32, !dbg !480
  %35 = mul nuw nsw i32 %34, 16843009, !dbg !481
  call void @llvm.dbg.value(metadata i32 %35, metadata !474, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata ptr %31, metadata !478, metadata !DIExpression()), !dbg !482
  %36 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !483
  call void @llvm.dbg.value(metadata ptr %36, metadata !478, metadata !DIExpression()), !dbg !482
  store i32 %35, ptr %31, align 4, !dbg !484, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %36, metadata !478, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !482
  store i32 %35, ptr %36, align 4, !dbg !485, !tbaa !248
  %37 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !486
  call void @llvm.dbg.value(metadata ptr %37, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 6, metadata !473, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata ptr %37, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 6, metadata !473, metadata !DIExpression()), !dbg !479
  %38 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !480
  %39 = load i8, ptr %38, align 1, !dbg !480, !tbaa !101
  %40 = zext i8 %39 to i32, !dbg !480
  %41 = mul nuw nsw i32 %40, 16843009, !dbg !481
  call void @llvm.dbg.value(metadata i32 %41, metadata !474, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata ptr %37, metadata !478, metadata !DIExpression()), !dbg !482
  %42 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !483
  call void @llvm.dbg.value(metadata ptr %42, metadata !478, metadata !DIExpression()), !dbg !482
  store i32 %41, ptr %37, align 4, !dbg !484, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %42, metadata !478, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !482
  store i32 %41, ptr %42, align 4, !dbg !485, !tbaa !248
  %43 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !486
  call void @llvm.dbg.value(metadata ptr %43, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 7, metadata !473, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata ptr %43, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 7, metadata !473, metadata !DIExpression()), !dbg !479
  %44 = getelementptr inbounds i8, ptr %0, i64 223, !dbg !480
  %45 = load i8, ptr %44, align 1, !dbg !480, !tbaa !101
  %46 = zext i8 %45 to i32, !dbg !480
  %47 = mul nuw nsw i32 %46, 16843009, !dbg !481
  call void @llvm.dbg.value(metadata i32 %47, metadata !474, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata ptr %43, metadata !478, metadata !DIExpression()), !dbg !482
  %48 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !483
  call void @llvm.dbg.value(metadata ptr %48, metadata !478, metadata !DIExpression()), !dbg !482
  store i32 %47, ptr %43, align 4, !dbg !484, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %48, metadata !478, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !482
  store i32 %47, ptr %48, align 4, !dbg !485, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %43, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !479
  call void @llvm.dbg.value(metadata i32 8, metadata !473, metadata !DIExpression()), !dbg !479
  ret void, !dbg !487
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_dc(ptr nocapture noundef %0) #2 !dbg !488 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !492, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !493, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !494, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !495, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !500, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i64 0, metadata !500, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !492, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !493, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !494, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !495, metadata !DIExpression()), !dbg !509
  %2 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !510
  %3 = load i8, ptr %2, align 1, !dbg !510, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !510
  call void @llvm.dbg.value(metadata i32 %4, metadata !492, metadata !DIExpression()), !dbg !509
  %5 = getelementptr inbounds i8, ptr %0, i64 -28, !dbg !514
  %6 = load i8, ptr %5, align 1, !dbg !514, !tbaa !101
  %7 = zext i8 %6 to i32, !dbg !514
  call void @llvm.dbg.value(metadata i32 %7, metadata !493, metadata !DIExpression()), !dbg !509
  %8 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !515
  %9 = load i8, ptr %8, align 1, !dbg !515, !tbaa !101
  %10 = zext i8 %9 to i32, !dbg !515
  call void @llvm.dbg.value(metadata i32 %10, metadata !494, metadata !DIExpression()), !dbg !509
  %11 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !516
  %12 = load i8, ptr %11, align 1, !dbg !516, !tbaa !101
  %13 = zext i8 %12 to i32, !dbg !516
  call void @llvm.dbg.value(metadata i32 %13, metadata !495, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i64 1, metadata !500, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i64 1, metadata !500, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 %4, metadata !492, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 %7, metadata !493, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 %10, metadata !494, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 %13, metadata !495, metadata !DIExpression()), !dbg !509
  %14 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !510
  %15 = load i8, ptr %14, align 1, !dbg !510, !tbaa !101
  %16 = zext i8 %15 to i32, !dbg !510
  %17 = add nuw nsw i32 %4, %16, !dbg !517
  call void @llvm.dbg.value(metadata i32 %17, metadata !492, metadata !DIExpression()), !dbg !509
  %18 = getelementptr inbounds i8, ptr %0, i64 -27, !dbg !514
  %19 = load i8, ptr %18, align 1, !dbg !514, !tbaa !101
  %20 = zext i8 %19 to i32, !dbg !514
  %21 = add nuw nsw i32 %7, %20, !dbg !518
  call void @llvm.dbg.value(metadata i32 %21, metadata !493, metadata !DIExpression()), !dbg !509
  %22 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !515
  %23 = load i8, ptr %22, align 1, !dbg !515, !tbaa !101
  %24 = zext i8 %23 to i32, !dbg !515
  %25 = add nuw nsw i32 %10, %24, !dbg !519
  call void @llvm.dbg.value(metadata i32 %25, metadata !494, metadata !DIExpression()), !dbg !509
  %26 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !516
  %27 = load i8, ptr %26, align 1, !dbg !516, !tbaa !101
  %28 = zext i8 %27 to i32, !dbg !516
  %29 = add nuw nsw i32 %13, %28, !dbg !520
  call void @llvm.dbg.value(metadata i32 %29, metadata !495, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i64 2, metadata !500, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i64 2, metadata !500, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 %17, metadata !492, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 %21, metadata !493, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 %25, metadata !494, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 %29, metadata !495, metadata !DIExpression()), !dbg !509
  %30 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !510
  %31 = load i8, ptr %30, align 1, !dbg !510, !tbaa !101
  %32 = zext i8 %31 to i32, !dbg !510
  %33 = add nuw nsw i32 %17, %32, !dbg !517
  call void @llvm.dbg.value(metadata i32 %33, metadata !492, metadata !DIExpression()), !dbg !509
  %34 = getelementptr inbounds i8, ptr %0, i64 -26, !dbg !514
  %35 = load i8, ptr %34, align 1, !dbg !514, !tbaa !101
  %36 = zext i8 %35 to i32, !dbg !514
  %37 = add nuw nsw i32 %21, %36, !dbg !518
  call void @llvm.dbg.value(metadata i32 %37, metadata !493, metadata !DIExpression()), !dbg !509
  %38 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !515
  %39 = load i8, ptr %38, align 1, !dbg !515, !tbaa !101
  %40 = zext i8 %39 to i32, !dbg !515
  %41 = add nuw nsw i32 %25, %40, !dbg !519
  call void @llvm.dbg.value(metadata i32 %41, metadata !494, metadata !DIExpression()), !dbg !509
  %42 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !516
  %43 = load i8, ptr %42, align 1, !dbg !516, !tbaa !101
  %44 = zext i8 %43 to i32, !dbg !516
  %45 = add nuw nsw i32 %29, %44, !dbg !520
  call void @llvm.dbg.value(metadata i32 %45, metadata !495, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i64 3, metadata !500, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i64 3, metadata !500, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 %33, metadata !492, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 %37, metadata !493, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 %41, metadata !494, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 %45, metadata !495, metadata !DIExpression()), !dbg !509
  %46 = getelementptr inbounds i8, ptr %0, i64 -29, !dbg !510
  %47 = load i8, ptr %46, align 1, !dbg !510, !tbaa !101
  %48 = zext i8 %47 to i32, !dbg !510
  %49 = add nuw nsw i32 %33, %48, !dbg !517
  call void @llvm.dbg.value(metadata i32 %49, metadata !492, metadata !DIExpression()), !dbg !509
  %50 = getelementptr inbounds i8, ptr %0, i64 -25, !dbg !514
  %51 = load i8, ptr %50, align 1, !dbg !514, !tbaa !101
  %52 = zext i8 %51 to i32, !dbg !514
  %53 = add nuw nsw i32 %37, %52, !dbg !518
  call void @llvm.dbg.value(metadata i32 %53, metadata !493, metadata !DIExpression()), !dbg !509
  %54 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !515
  %55 = load i8, ptr %54, align 1, !dbg !515, !tbaa !101
  %56 = zext i8 %55 to i32, !dbg !515
  %57 = add nuw nsw i32 %41, %56, !dbg !519
  call void @llvm.dbg.value(metadata i32 %57, metadata !494, metadata !DIExpression()), !dbg !509
  %58 = getelementptr inbounds i8, ptr %0, i64 223, !dbg !516
  %59 = load i8, ptr %58, align 1, !dbg !516, !tbaa !101
  %60 = zext i8 %59 to i32, !dbg !516
  %61 = add nuw nsw i32 %45, %60, !dbg !520
  call void @llvm.dbg.value(metadata i32 %61, metadata !495, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i64 4, metadata !500, metadata !DIExpression()), !dbg !509
  %62 = add nuw nsw i32 %57, 4, !dbg !521
  %63 = add nuw nsw i32 %62, %49, !dbg !522
  %64 = lshr i32 %63, 3, !dbg !523
  %65 = mul nuw nsw i32 %64, 16843009, !dbg !524
  call void @llvm.dbg.value(metadata i32 %65, metadata !496, metadata !DIExpression()), !dbg !509
  %66 = add nuw nsw i32 %53, 2, !dbg !525
  %67 = lshr i32 %66, 2, !dbg !526
  %68 = mul nuw nsw i32 %67, 16843009, !dbg !527
  call void @llvm.dbg.value(metadata i32 %68, metadata !497, metadata !DIExpression()), !dbg !509
  %69 = add nuw nsw i32 %61, 2, !dbg !528
  %70 = lshr i32 %69, 2, !dbg !529
  call void @llvm.dbg.value(metadata i32 %82, metadata !498, metadata !DIExpression()), !dbg !509
  %71 = add nuw nsw i32 %61, 4, !dbg !530
  %72 = add nuw nsw i32 %71, %53, !dbg !531
  %73 = lshr i32 %72, 3, !dbg !532
  call void @llvm.dbg.value(metadata i32 %83, metadata !499, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !491, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr %0, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr %0, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !491, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr %0, metadata !501, metadata !DIExpression()), !dbg !533
  %74 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !534
  call void @llvm.dbg.value(metadata ptr %74, metadata !501, metadata !DIExpression()), !dbg !533
  store i32 %65, ptr %0, align 4, !dbg !535, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %74, metadata !501, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !533
  store i32 %68, ptr %74, align 4, !dbg !536, !tbaa !248
  %75 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !537
  call void @llvm.dbg.value(metadata ptr %75, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 1, metadata !491, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr %75, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 1, metadata !491, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr %75, metadata !501, metadata !DIExpression()), !dbg !533
  %76 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !534
  call void @llvm.dbg.value(metadata ptr %76, metadata !501, metadata !DIExpression()), !dbg !533
  store i32 %65, ptr %75, align 4, !dbg !535, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %76, metadata !501, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !533
  store i32 %68, ptr %76, align 4, !dbg !536, !tbaa !248
  %77 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !537
  call void @llvm.dbg.value(metadata ptr %77, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 2, metadata !491, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr %77, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 2, metadata !491, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr %77, metadata !501, metadata !DIExpression()), !dbg !533
  %78 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !534
  call void @llvm.dbg.value(metadata ptr %78, metadata !501, metadata !DIExpression()), !dbg !533
  store i32 %65, ptr %77, align 4, !dbg !535, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %78, metadata !501, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !533
  store i32 %68, ptr %78, align 4, !dbg !536, !tbaa !248
  %79 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !537
  call void @llvm.dbg.value(metadata ptr %79, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 3, metadata !491, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr %79, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 3, metadata !491, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr %79, metadata !501, metadata !DIExpression()), !dbg !533
  %80 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !534
  call void @llvm.dbg.value(metadata ptr %80, metadata !501, metadata !DIExpression()), !dbg !533
  store i32 %65, ptr %79, align 4, !dbg !535, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %80, metadata !501, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !533
  store i32 %68, ptr %80, align 4, !dbg !536, !tbaa !248
  %81 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !537
  call void @llvm.dbg.value(metadata ptr %81, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 4, metadata !491, metadata !DIExpression()), !dbg !509
  %82 = mul nuw nsw i32 %70, 16843009, !dbg !538
  %83 = mul nuw nsw i32 %73, 16843009, !dbg !539
  call void @llvm.dbg.value(metadata ptr %81, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !491, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr %81, metadata !505, metadata !DIExpression()), !dbg !540
  %84 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !541
  call void @llvm.dbg.value(metadata ptr %84, metadata !505, metadata !DIExpression()), !dbg !540
  store i32 %82, ptr %81, align 4, !dbg !542, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %84, metadata !505, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !540
  store i32 %83, ptr %84, align 4, !dbg !543, !tbaa !248
  %85 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !544
  call void @llvm.dbg.value(metadata ptr %85, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 1, metadata !491, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr %85, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 1, metadata !491, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr %85, metadata !505, metadata !DIExpression()), !dbg !540
  %86 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !541
  call void @llvm.dbg.value(metadata ptr %86, metadata !505, metadata !DIExpression()), !dbg !540
  store i32 %82, ptr %85, align 4, !dbg !542, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %86, metadata !505, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !540
  store i32 %83, ptr %86, align 4, !dbg !543, !tbaa !248
  %87 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !544
  call void @llvm.dbg.value(metadata ptr %87, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 2, metadata !491, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr %87, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 2, metadata !491, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr %87, metadata !505, metadata !DIExpression()), !dbg !540
  %88 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !541
  call void @llvm.dbg.value(metadata ptr %88, metadata !505, metadata !DIExpression()), !dbg !540
  store i32 %82, ptr %87, align 4, !dbg !542, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %88, metadata !505, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !540
  store i32 %83, ptr %88, align 4, !dbg !543, !tbaa !248
  %89 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !544
  call void @llvm.dbg.value(metadata ptr %89, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 3, metadata !491, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr %89, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 3, metadata !491, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr %89, metadata !505, metadata !DIExpression()), !dbg !540
  %90 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !541
  call void @llvm.dbg.value(metadata ptr %90, metadata !505, metadata !DIExpression()), !dbg !540
  store i32 %82, ptr %89, align 4, !dbg !542, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %90, metadata !505, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !540
  store i32 %83, ptr %90, align 4, !dbg !543, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %89, metadata !490, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !509
  call void @llvm.dbg.value(metadata i32 4, metadata !491, metadata !DIExpression()), !dbg !509
  ret void, !dbg !545
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_p(ptr nocapture noundef %0) #2 !dbg !546 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !548, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 0, metadata !555, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 0, metadata !556, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 0, metadata !549, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 0, metadata !556, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 0, metadata !555, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 0, metadata !549, metadata !DIExpression()), !dbg !562
  %2 = getelementptr inbounds i8, ptr %0, i64 -28, !dbg !563
  %3 = load i8, ptr %2, align 1, !dbg !563, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !563
  %5 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !567
  %6 = load i8, ptr %5, align 1, !dbg !567, !tbaa !101
  %7 = zext i8 %6 to i32, !dbg !567
  %8 = sub nsw i32 %4, %7, !dbg !568
  call void @llvm.dbg.value(metadata i32 %8, metadata !555, metadata !DIExpression()), !dbg !562
  %9 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !569
  %10 = load i8, ptr %9, align 1, !dbg !569, !tbaa !101
  %11 = zext i8 %10 to i32, !dbg !569
  %12 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !570
  %13 = load i8, ptr %12, align 1, !dbg !570, !tbaa !101
  %14 = zext i8 %13 to i32, !dbg !570
  %15 = sub nsw i32 %11, %14, !dbg !571
  call void @llvm.dbg.value(metadata i32 %15, metadata !556, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 1, metadata !549, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %15, metadata !556, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %8, metadata !555, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 1, metadata !549, metadata !DIExpression()), !dbg !562
  %16 = getelementptr inbounds i8, ptr %0, i64 -27, !dbg !563
  %17 = load i8, ptr %16, align 1, !dbg !563, !tbaa !101
  %18 = zext i8 %17 to i32, !dbg !563
  %19 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !567
  %20 = load i8, ptr %19, align 1, !dbg !567, !tbaa !101
  %21 = zext i8 %20 to i32, !dbg !567
  %22 = sub nsw i32 %18, %21, !dbg !568
  %23 = shl nsw i32 %22, 1, !dbg !572
  %24 = add nsw i32 %23, %8, !dbg !573
  call void @llvm.dbg.value(metadata i32 %24, metadata !555, metadata !DIExpression()), !dbg !562
  %25 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !569
  %26 = load i8, ptr %25, align 1, !dbg !569, !tbaa !101
  %27 = zext i8 %26 to i32, !dbg !569
  %28 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !570
  %29 = load i8, ptr %28, align 1, !dbg !570, !tbaa !101
  %30 = zext i8 %29 to i32, !dbg !570
  %31 = sub nsw i32 %27, %30, !dbg !571
  %32 = shl nsw i32 %31, 1, !dbg !574
  %33 = add nsw i32 %32, %15, !dbg !575
  call void @llvm.dbg.value(metadata i32 %33, metadata !556, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 2, metadata !549, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %33, metadata !556, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %24, metadata !555, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 2, metadata !549, metadata !DIExpression()), !dbg !562
  %34 = getelementptr inbounds i8, ptr %0, i64 -26, !dbg !563
  %35 = load i8, ptr %34, align 1, !dbg !563, !tbaa !101
  %36 = zext i8 %35 to i32, !dbg !563
  %37 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !567
  %38 = load i8, ptr %37, align 1, !dbg !567, !tbaa !101
  %39 = zext i8 %38 to i32, !dbg !567
  %40 = sub nsw i32 %36, %39, !dbg !568
  %41 = mul nsw i32 %40, 3, !dbg !572
  %42 = add nsw i32 %41, %24, !dbg !573
  call void @llvm.dbg.value(metadata i32 %42, metadata !555, metadata !DIExpression()), !dbg !562
  %43 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !569
  %44 = load i8, ptr %43, align 1, !dbg !569, !tbaa !101
  %45 = zext i8 %44 to i32, !dbg !569
  %46 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !570
  %47 = load i8, ptr %46, align 1, !dbg !570, !tbaa !101
  %48 = zext i8 %47 to i32, !dbg !570
  %49 = sub nsw i32 %45, %48, !dbg !571
  %50 = mul nsw i32 %49, 3, !dbg !574
  %51 = add nsw i32 %50, %33, !dbg !575
  call void @llvm.dbg.value(metadata i32 %51, metadata !556, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 3, metadata !549, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %51, metadata !556, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %42, metadata !555, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 3, metadata !549, metadata !DIExpression()), !dbg !562
  %52 = getelementptr inbounds i8, ptr %0, i64 -25, !dbg !563
  %53 = load i8, ptr %52, align 1, !dbg !563, !tbaa !101
  %54 = zext i8 %53 to i32, !dbg !563
  %55 = getelementptr inbounds i8, ptr %0, i64 -33, !dbg !567
  %56 = load i8, ptr %55, align 1, !dbg !567, !tbaa !101
  %57 = zext i8 %56 to i32, !dbg !567
  %58 = sub nsw i32 %54, %57, !dbg !568
  %59 = shl nsw i32 %58, 2, !dbg !572
  %60 = add nsw i32 %59, %42, !dbg !573
  call void @llvm.dbg.value(metadata i32 %60, metadata !555, metadata !DIExpression()), !dbg !562
  %61 = getelementptr inbounds i8, ptr %0, i64 223, !dbg !569
  %62 = load i8, ptr %61, align 1, !dbg !569, !tbaa !101
  %63 = zext i8 %62 to i32, !dbg !569
  %64 = sub nsw i32 %63, %57, !dbg !571
  %65 = shl nsw i32 %64, 2, !dbg !574
  %66 = add nsw i32 %65, %51, !dbg !575
  call void @llvm.dbg.value(metadata i32 %66, metadata !556, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 4, metadata !549, metadata !DIExpression()), !dbg !562
  %67 = add nuw nsw i32 %54, %63, !dbg !576
  %68 = shl nuw nsw i32 %67, 4, !dbg !577
  call void @llvm.dbg.value(metadata i32 %68, metadata !552, metadata !DIExpression()), !dbg !562
  %69 = mul nsw i32 %60, 17, !dbg !578
  %70 = add nsw i32 %69, 16, !dbg !579
  %71 = ashr i32 %70, 5, !dbg !580
  call void @llvm.dbg.value(metadata i32 %71, metadata !553, metadata !DIExpression()), !dbg !562
  %72 = mul nsw i32 %66, 17, !dbg !581
  %73 = add nsw i32 %72, 16, !dbg !582
  %74 = ashr i32 %73, 5, !dbg !583
  call void @llvm.dbg.value(metadata i32 %74, metadata !554, metadata !DIExpression()), !dbg !562
  %75 = add nsw i32 %74, %71
  %76 = mul nsw i32 %75, -3
  %77 = add nsw i32 %76, 16, !dbg !584
  %78 = add nsw i32 %77, %68, !dbg !585
  call void @llvm.dbg.value(metadata i32 %78, metadata !557, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 0, metadata !551, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata ptr %0, metadata !548, metadata !DIExpression()), !dbg !562
  %79 = insertelement <2 x i32> <i32 0, i32 poison>, i32 %78, i64 1
  %80 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %74, i64 1, !dbg !586
  br label %81, !dbg !587

81:                                               ; preds = %1, %81
  %82 = phi ptr [ %0, %1 ], [ %106, %81 ]
  %83 = phi <2 x i32> [ %79, %1 ], [ %107, %81 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !557, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata ptr %82, metadata !548, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 undef, metadata !551, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 undef, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i32 0, metadata !550, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 undef, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 0, metadata !550, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 undef, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !589
  %84 = extractelement <2 x i32> %83, i64 1, !dbg !594
  %85 = add nsw i32 %84, %71, !dbg !594
  call void @llvm.dbg.value(metadata i32 %85, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 1, metadata !550, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %85, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 1, metadata !550, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %85, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !589
  %86 = add nsw i32 %85, %71, !dbg !594
  call void @llvm.dbg.value(metadata i32 %86, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 2, metadata !550, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %86, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 2, metadata !550, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %86, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !589
  %87 = add nsw i32 %86, %71, !dbg !594
  call void @llvm.dbg.value(metadata i32 %87, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 3, metadata !550, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %87, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 3, metadata !550, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %87, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !589
  %88 = add nsw i32 %87, %71, !dbg !594
  call void @llvm.dbg.value(metadata i32 %88, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 4, metadata !550, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %88, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 4, metadata !550, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %88, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !589
  %89 = add nsw i32 %88, %71, !dbg !594
  call void @llvm.dbg.value(metadata i32 %89, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 5, metadata !550, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %89, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 5, metadata !550, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %89, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !589
  %90 = add nsw i32 %89, %71, !dbg !594
  call void @llvm.dbg.value(metadata i32 %90, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 6, metadata !550, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %90, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 6, metadata !550, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %90, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !589
  %91 = add nsw i32 %90, %71, !dbg !594
  call void @llvm.dbg.value(metadata i32 %91, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 7, metadata !550, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %91, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 7, metadata !550, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %91, metadata !350, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !589
  %92 = shufflevector <2 x i32> %83, <2 x i32> poison, <8 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !595
  %93 = insertelement <8 x i32> %92, i32 %85, i64 1, !dbg !595
  %94 = insertelement <8 x i32> %93, i32 %86, i64 2, !dbg !595
  %95 = insertelement <8 x i32> %94, i32 %87, i64 3, !dbg !595
  %96 = insertelement <8 x i32> %95, i32 %88, i64 4, !dbg !595
  %97 = insertelement <8 x i32> %96, i32 %89, i64 5, !dbg !595
  %98 = insertelement <8 x i32> %97, i32 %90, i64 6, !dbg !595
  %99 = insertelement <8 x i32> %98, i32 %91, i64 7, !dbg !595
  %100 = lshr <8 x i32> %99, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !595
  %101 = icmp ult <8 x i32> %99, <i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192>, !dbg !596
  %102 = icmp sgt <8 x i32> %99, <i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31>, !dbg !597
  %103 = sext <8 x i1> %102 to <8 x i32>, !dbg !597
  %104 = select <8 x i1> %101, <8 x i32> %100, <8 x i32> %103, !dbg !597
  %105 = trunc <8 x i32> %104 to <8 x i8>, !dbg !597
  store <8 x i8> %105, ptr %82, align 1, !dbg !598, !tbaa !101
  call void @llvm.dbg.value(metadata !DIArgList(i32 %91, i32 %71), metadata !558, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !588
  call void @llvm.dbg.value(metadata i64 8, metadata !550, metadata !DIExpression()), !dbg !562
  %106 = getelementptr inbounds i8, ptr %82, i64 32, !dbg !599
  call void @llvm.dbg.value(metadata ptr %106, metadata !548, metadata !DIExpression()), !dbg !562
  %107 = add nsw <2 x i32> %83, %80, !dbg !600
  call void @llvm.dbg.value(metadata i32 undef, metadata !557, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 undef, metadata !551, metadata !DIExpression()), !dbg !562
  %108 = extractelement <2 x i32> %107, i64 0, !dbg !601
  %109 = icmp eq i32 %108, 8, !dbg !601
  br i1 %109, label %110, label %81, !dbg !587, !llvm.loop !602

110:                                              ; preds = %81
  ret void, !dbg !604
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_dc_left(ptr nocapture noundef %0) #2 !dbg !605 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 0, metadata !609, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 0, metadata !610, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 0, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i64 0, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 0, metadata !610, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 0, metadata !609, metadata !DIExpression()), !dbg !619
  %2 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !620
  %3 = load i8, ptr %2, align 1, !dbg !620, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !620
  call void @llvm.dbg.value(metadata i32 %4, metadata !609, metadata !DIExpression()), !dbg !619
  %5 = getelementptr inbounds i8, ptr %0, i64 127, !dbg !624
  %6 = load i8, ptr %5, align 1, !dbg !624, !tbaa !101
  %7 = zext i8 %6 to i32, !dbg !624
  call void @llvm.dbg.value(metadata i32 %7, metadata !610, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i64 1, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i64 1, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 %7, metadata !610, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 %4, metadata !609, metadata !DIExpression()), !dbg !619
  %8 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !620
  %9 = load i8, ptr %8, align 1, !dbg !620, !tbaa !101
  %10 = zext i8 %9 to i32, !dbg !620
  %11 = add nuw nsw i32 %4, %10, !dbg !625
  call void @llvm.dbg.value(metadata i32 %11, metadata !609, metadata !DIExpression()), !dbg !619
  %12 = getelementptr inbounds i8, ptr %0, i64 159, !dbg !624
  %13 = load i8, ptr %12, align 1, !dbg !624, !tbaa !101
  %14 = zext i8 %13 to i32, !dbg !624
  %15 = add nuw nsw i32 %7, %14, !dbg !626
  call void @llvm.dbg.value(metadata i32 %15, metadata !610, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i64 2, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i64 2, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 %15, metadata !610, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 %11, metadata !609, metadata !DIExpression()), !dbg !619
  %16 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !620
  %17 = load i8, ptr %16, align 1, !dbg !620, !tbaa !101
  %18 = zext i8 %17 to i32, !dbg !620
  %19 = add nuw nsw i32 %11, %18, !dbg !625
  call void @llvm.dbg.value(metadata i32 %19, metadata !609, metadata !DIExpression()), !dbg !619
  %20 = getelementptr inbounds i8, ptr %0, i64 191, !dbg !624
  %21 = load i8, ptr %20, align 1, !dbg !624, !tbaa !101
  %22 = zext i8 %21 to i32, !dbg !624
  %23 = add nuw nsw i32 %15, %22, !dbg !626
  call void @llvm.dbg.value(metadata i32 %23, metadata !610, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i64 3, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i64 3, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 %23, metadata !610, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 %19, metadata !609, metadata !DIExpression()), !dbg !619
  %24 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !620
  %25 = load i8, ptr %24, align 1, !dbg !620, !tbaa !101
  %26 = zext i8 %25 to i32, !dbg !620
  %27 = add nuw nsw i32 %19, %26, !dbg !625
  call void @llvm.dbg.value(metadata i32 %27, metadata !609, metadata !DIExpression()), !dbg !619
  %28 = getelementptr inbounds i8, ptr %0, i64 223, !dbg !624
  %29 = load i8, ptr %28, align 1, !dbg !624, !tbaa !101
  %30 = zext i8 %29 to i32, !dbg !624
  %31 = add nuw nsw i32 %23, %30, !dbg !626
  call void @llvm.dbg.value(metadata i32 %31, metadata !610, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i64 4, metadata !608, metadata !DIExpression()), !dbg !619
  %32 = add nuw nsw i32 %27, 2, !dbg !627
  %33 = lshr i32 %32, 2, !dbg !628
  %34 = mul nuw i32 %33, 16843009, !dbg !629
  call void @llvm.dbg.value(metadata i32 %34, metadata !609, metadata !DIExpression()), !dbg !619
  %35 = add nuw nsw i32 %31, 2, !dbg !630
  %36 = lshr i32 %35, 2, !dbg !631
  call void @llvm.dbg.value(metadata i32 %45, metadata !610, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 0, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %0, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %0, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 0, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %0, metadata !611, metadata !DIExpression()), !dbg !632
  %37 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !633
  call void @llvm.dbg.value(metadata ptr %37, metadata !611, metadata !DIExpression()), !dbg !632
  store i32 %34, ptr %0, align 4, !dbg !634, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %37, metadata !611, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !632
  store i32 %34, ptr %37, align 4, !dbg !635, !tbaa !248
  %38 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !636
  call void @llvm.dbg.value(metadata ptr %38, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 1, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %38, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 1, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %38, metadata !611, metadata !DIExpression()), !dbg !632
  %39 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !633
  call void @llvm.dbg.value(metadata ptr %39, metadata !611, metadata !DIExpression()), !dbg !632
  store i32 %34, ptr %38, align 4, !dbg !634, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %39, metadata !611, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !632
  store i32 %34, ptr %39, align 4, !dbg !635, !tbaa !248
  %40 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !636
  call void @llvm.dbg.value(metadata ptr %40, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 2, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %40, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 2, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %40, metadata !611, metadata !DIExpression()), !dbg !632
  %41 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !633
  call void @llvm.dbg.value(metadata ptr %41, metadata !611, metadata !DIExpression()), !dbg !632
  store i32 %34, ptr %40, align 4, !dbg !634, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %41, metadata !611, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !632
  store i32 %34, ptr %41, align 4, !dbg !635, !tbaa !248
  %42 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !636
  call void @llvm.dbg.value(metadata ptr %42, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 3, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %42, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 3, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %42, metadata !611, metadata !DIExpression()), !dbg !632
  %43 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !633
  call void @llvm.dbg.value(metadata ptr %43, metadata !611, metadata !DIExpression()), !dbg !632
  store i32 %34, ptr %42, align 4, !dbg !634, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %43, metadata !611, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !632
  store i32 %34, ptr %43, align 4, !dbg !635, !tbaa !248
  %44 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !636
  call void @llvm.dbg.value(metadata ptr %44, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 4, metadata !608, metadata !DIExpression()), !dbg !619
  %45 = mul nuw i32 %36, 16843009, !dbg !637
  call void @llvm.dbg.value(metadata ptr %44, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 0, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %44, metadata !615, metadata !DIExpression()), !dbg !638
  %46 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !639
  call void @llvm.dbg.value(metadata ptr %46, metadata !615, metadata !DIExpression()), !dbg !638
  store i32 %45, ptr %44, align 4, !dbg !640, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %46, metadata !615, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !638
  store i32 %45, ptr %46, align 4, !dbg !641, !tbaa !248
  %47 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !642
  call void @llvm.dbg.value(metadata ptr %47, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 1, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %47, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 1, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %47, metadata !615, metadata !DIExpression()), !dbg !638
  %48 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !639
  call void @llvm.dbg.value(metadata ptr %48, metadata !615, metadata !DIExpression()), !dbg !638
  store i32 %45, ptr %47, align 4, !dbg !640, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %48, metadata !615, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !638
  store i32 %45, ptr %48, align 4, !dbg !641, !tbaa !248
  %49 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !642
  call void @llvm.dbg.value(metadata ptr %49, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 2, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %49, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 2, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %49, metadata !615, metadata !DIExpression()), !dbg !638
  %50 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !639
  call void @llvm.dbg.value(metadata ptr %50, metadata !615, metadata !DIExpression()), !dbg !638
  store i32 %45, ptr %49, align 4, !dbg !640, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %50, metadata !615, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !638
  store i32 %45, ptr %50, align 4, !dbg !641, !tbaa !248
  %51 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !642
  call void @llvm.dbg.value(metadata ptr %51, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 3, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %51, metadata !607, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 3, metadata !608, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %51, metadata !615, metadata !DIExpression()), !dbg !638
  %52 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !639
  call void @llvm.dbg.value(metadata ptr %52, metadata !615, metadata !DIExpression()), !dbg !638
  store i32 %45, ptr %51, align 4, !dbg !640, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %52, metadata !615, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !638
  store i32 %45, ptr %52, align 4, !dbg !641, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %51, metadata !607, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !619
  call void @llvm.dbg.value(metadata i32 4, metadata !608, metadata !DIExpression()), !dbg !619
  ret void, !dbg !643
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_dc_top(ptr nocapture noundef %0) #2 !dbg !644 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 0, metadata !649, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 0, metadata !650, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 0, metadata !648, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 0, metadata !650, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 0, metadata !649, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i64 0, metadata !648, metadata !DIExpression()), !dbg !655
  %2 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !656
  %3 = load i8, ptr %2, align 1, !dbg !656, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !656
  call void @llvm.dbg.value(metadata i32 %4, metadata !649, metadata !DIExpression()), !dbg !655
  %5 = getelementptr inbounds i8, ptr %0, i64 -28, !dbg !660
  %6 = load i8, ptr %5, align 1, !dbg !660, !tbaa !101
  %7 = zext i8 %6 to i32, !dbg !660
  call void @llvm.dbg.value(metadata i32 %7, metadata !650, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i64 1, metadata !648, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 %7, metadata !650, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 %4, metadata !649, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i64 1, metadata !648, metadata !DIExpression()), !dbg !655
  %8 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !656
  %9 = load i8, ptr %8, align 1, !dbg !656, !tbaa !101
  %10 = zext i8 %9 to i32, !dbg !656
  %11 = add nuw nsw i32 %4, %10, !dbg !661
  call void @llvm.dbg.value(metadata i32 %11, metadata !649, metadata !DIExpression()), !dbg !655
  %12 = getelementptr inbounds i8, ptr %0, i64 -27, !dbg !660
  %13 = load i8, ptr %12, align 1, !dbg !660, !tbaa !101
  %14 = zext i8 %13 to i32, !dbg !660
  %15 = add nuw nsw i32 %7, %14, !dbg !662
  call void @llvm.dbg.value(metadata i32 %15, metadata !650, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i64 2, metadata !648, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 %15, metadata !650, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 %11, metadata !649, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i64 2, metadata !648, metadata !DIExpression()), !dbg !655
  %16 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !656
  %17 = load i8, ptr %16, align 1, !dbg !656, !tbaa !101
  %18 = zext i8 %17 to i32, !dbg !656
  %19 = add nuw nsw i32 %11, %18, !dbg !661
  call void @llvm.dbg.value(metadata i32 %19, metadata !649, metadata !DIExpression()), !dbg !655
  %20 = getelementptr inbounds i8, ptr %0, i64 -26, !dbg !660
  %21 = load i8, ptr %20, align 1, !dbg !660, !tbaa !101
  %22 = zext i8 %21 to i32, !dbg !660
  %23 = add nuw nsw i32 %15, %22, !dbg !662
  call void @llvm.dbg.value(metadata i32 %23, metadata !650, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i64 3, metadata !648, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 %23, metadata !650, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 %19, metadata !649, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i64 3, metadata !648, metadata !DIExpression()), !dbg !655
  %24 = getelementptr inbounds i8, ptr %0, i64 -29, !dbg !656
  %25 = load i8, ptr %24, align 1, !dbg !656, !tbaa !101
  %26 = zext i8 %25 to i32, !dbg !656
  %27 = add nuw nsw i32 %19, %26, !dbg !661
  call void @llvm.dbg.value(metadata i32 %27, metadata !649, metadata !DIExpression()), !dbg !655
  %28 = getelementptr inbounds i8, ptr %0, i64 -25, !dbg !660
  %29 = load i8, ptr %28, align 1, !dbg !660, !tbaa !101
  %30 = zext i8 %29 to i32, !dbg !660
  %31 = add nuw nsw i32 %23, %30, !dbg !662
  call void @llvm.dbg.value(metadata i32 %31, metadata !650, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i64 4, metadata !648, metadata !DIExpression()), !dbg !655
  %32 = add nuw nsw i32 %27, 2, !dbg !663
  %33 = lshr i32 %32, 2, !dbg !664
  %34 = mul nuw i32 %33, 16843009, !dbg !665
  call void @llvm.dbg.value(metadata i32 %34, metadata !649, metadata !DIExpression()), !dbg !655
  %35 = add nuw nsw i32 %31, 2, !dbg !666
  %36 = lshr i32 %35, 2, !dbg !667
  %37 = mul nuw i32 %36, 16843009, !dbg !668
  call void @llvm.dbg.value(metadata i32 %37, metadata !650, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 0, metadata !647, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %0, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %0, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 0, metadata !647, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %0, metadata !651, metadata !DIExpression()), !dbg !669
  %38 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !670
  call void @llvm.dbg.value(metadata ptr %38, metadata !651, metadata !DIExpression()), !dbg !669
  store i32 %34, ptr %0, align 4, !dbg !671, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %38, metadata !651, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !669
  store i32 %37, ptr %38, align 4, !dbg !672, !tbaa !248
  %39 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !673
  call void @llvm.dbg.value(metadata ptr %39, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 1, metadata !647, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %39, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 1, metadata !647, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %39, metadata !651, metadata !DIExpression()), !dbg !669
  %40 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !670
  call void @llvm.dbg.value(metadata ptr %40, metadata !651, metadata !DIExpression()), !dbg !669
  store i32 %34, ptr %39, align 4, !dbg !671, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %40, metadata !651, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !669
  store i32 %37, ptr %40, align 4, !dbg !672, !tbaa !248
  %41 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !673
  call void @llvm.dbg.value(metadata ptr %41, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 2, metadata !647, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %41, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 2, metadata !647, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %41, metadata !651, metadata !DIExpression()), !dbg !669
  %42 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !670
  call void @llvm.dbg.value(metadata ptr %42, metadata !651, metadata !DIExpression()), !dbg !669
  store i32 %34, ptr %41, align 4, !dbg !671, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %42, metadata !651, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !669
  store i32 %37, ptr %42, align 4, !dbg !672, !tbaa !248
  %43 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !673
  call void @llvm.dbg.value(metadata ptr %43, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 3, metadata !647, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %43, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 3, metadata !647, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %43, metadata !651, metadata !DIExpression()), !dbg !669
  %44 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !670
  call void @llvm.dbg.value(metadata ptr %44, metadata !651, metadata !DIExpression()), !dbg !669
  store i32 %34, ptr %43, align 4, !dbg !671, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %44, metadata !651, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !669
  store i32 %37, ptr %44, align 4, !dbg !672, !tbaa !248
  %45 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !673
  call void @llvm.dbg.value(metadata ptr %45, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 4, metadata !647, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %45, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 4, metadata !647, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %45, metadata !651, metadata !DIExpression()), !dbg !669
  %46 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !670
  call void @llvm.dbg.value(metadata ptr %46, metadata !651, metadata !DIExpression()), !dbg !669
  store i32 %34, ptr %45, align 4, !dbg !671, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %46, metadata !651, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !669
  store i32 %37, ptr %46, align 4, !dbg !672, !tbaa !248
  %47 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !673
  call void @llvm.dbg.value(metadata ptr %47, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 5, metadata !647, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %47, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 5, metadata !647, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %47, metadata !651, metadata !DIExpression()), !dbg !669
  %48 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !670
  call void @llvm.dbg.value(metadata ptr %48, metadata !651, metadata !DIExpression()), !dbg !669
  store i32 %34, ptr %47, align 4, !dbg !671, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %48, metadata !651, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !669
  store i32 %37, ptr %48, align 4, !dbg !672, !tbaa !248
  %49 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !673
  call void @llvm.dbg.value(metadata ptr %49, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 6, metadata !647, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %49, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 6, metadata !647, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %49, metadata !651, metadata !DIExpression()), !dbg !669
  %50 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !670
  call void @llvm.dbg.value(metadata ptr %50, metadata !651, metadata !DIExpression()), !dbg !669
  store i32 %34, ptr %49, align 4, !dbg !671, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %50, metadata !651, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !669
  store i32 %37, ptr %50, align 4, !dbg !672, !tbaa !248
  %51 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !673
  call void @llvm.dbg.value(metadata ptr %51, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 7, metadata !647, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %51, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata i32 7, metadata !647, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.value(metadata ptr %51, metadata !651, metadata !DIExpression()), !dbg !669
  %52 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !670
  call void @llvm.dbg.value(metadata ptr %52, metadata !651, metadata !DIExpression()), !dbg !669
  store i32 %34, ptr %51, align 4, !dbg !671, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %52, metadata !651, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !669
  store i32 %37, ptr %52, align 4, !dbg !672, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %51, metadata !646, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !655
  call void @llvm.dbg.value(metadata i32 8, metadata !647, metadata !DIExpression()), !dbg !655
  ret void, !dbg !674
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_dc_128(ptr nocapture noundef writeonly %0) #4 !dbg !675 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 0, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %0, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 0, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %0, metadata !679, metadata !DIExpression()), !dbg !684
  %2 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !685
  call void @llvm.dbg.value(metadata ptr %2, metadata !679, metadata !DIExpression()), !dbg !684
  store i32 -2139062144, ptr %0, align 4, !dbg !686, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %2, metadata !679, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !684
  store i32 -2139062144, ptr %2, align 4, !dbg !687, !tbaa !248
  %3 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !688
  call void @llvm.dbg.value(metadata ptr %3, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 1, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %3, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 1, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %3, metadata !679, metadata !DIExpression()), !dbg !684
  %4 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !685
  call void @llvm.dbg.value(metadata ptr %4, metadata !679, metadata !DIExpression()), !dbg !684
  store i32 -2139062144, ptr %3, align 4, !dbg !686, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %4, metadata !679, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !684
  store i32 -2139062144, ptr %4, align 4, !dbg !687, !tbaa !248
  %5 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !688
  call void @llvm.dbg.value(metadata ptr %5, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 2, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %5, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 2, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %5, metadata !679, metadata !DIExpression()), !dbg !684
  %6 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !685
  call void @llvm.dbg.value(metadata ptr %6, metadata !679, metadata !DIExpression()), !dbg !684
  store i32 -2139062144, ptr %5, align 4, !dbg !686, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %6, metadata !679, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !684
  store i32 -2139062144, ptr %6, align 4, !dbg !687, !tbaa !248
  %7 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !688
  call void @llvm.dbg.value(metadata ptr %7, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 3, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %7, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 3, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %7, metadata !679, metadata !DIExpression()), !dbg !684
  %8 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !685
  call void @llvm.dbg.value(metadata ptr %8, metadata !679, metadata !DIExpression()), !dbg !684
  store i32 -2139062144, ptr %7, align 4, !dbg !686, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %8, metadata !679, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !684
  store i32 -2139062144, ptr %8, align 4, !dbg !687, !tbaa !248
  %9 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !688
  call void @llvm.dbg.value(metadata ptr %9, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 4, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %9, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 4, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %9, metadata !679, metadata !DIExpression()), !dbg !684
  %10 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !685
  call void @llvm.dbg.value(metadata ptr %10, metadata !679, metadata !DIExpression()), !dbg !684
  store i32 -2139062144, ptr %9, align 4, !dbg !686, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %10, metadata !679, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !684
  store i32 -2139062144, ptr %10, align 4, !dbg !687, !tbaa !248
  %11 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !688
  call void @llvm.dbg.value(metadata ptr %11, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 5, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %11, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 5, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %11, metadata !679, metadata !DIExpression()), !dbg !684
  %12 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !685
  call void @llvm.dbg.value(metadata ptr %12, metadata !679, metadata !DIExpression()), !dbg !684
  store i32 -2139062144, ptr %11, align 4, !dbg !686, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %12, metadata !679, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !684
  store i32 -2139062144, ptr %12, align 4, !dbg !687, !tbaa !248
  %13 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !688
  call void @llvm.dbg.value(metadata ptr %13, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 6, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %13, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 6, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %13, metadata !679, metadata !DIExpression()), !dbg !684
  %14 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !685
  call void @llvm.dbg.value(metadata ptr %14, metadata !679, metadata !DIExpression()), !dbg !684
  store i32 -2139062144, ptr %13, align 4, !dbg !686, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %14, metadata !679, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !684
  store i32 -2139062144, ptr %14, align 4, !dbg !687, !tbaa !248
  %15 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !688
  call void @llvm.dbg.value(metadata ptr %15, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 7, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %15, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 7, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %15, metadata !679, metadata !DIExpression()), !dbg !684
  %16 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !685
  call void @llvm.dbg.value(metadata ptr %16, metadata !679, metadata !DIExpression()), !dbg !684
  store i32 -2139062144, ptr %15, align 4, !dbg !686, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %16, metadata !679, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !684
  store i32 -2139062144, ptr %16, align 4, !dbg !687, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %15, metadata !677, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !683
  call void @llvm.dbg.value(metadata i32 8, metadata !678, metadata !DIExpression()), !dbg !683
  ret void, !dbg !689
}

declare !dbg !690 void @x264_predict_8x8c_init_mmx(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_8x8_init(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 !dbg !691 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !700, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata ptr %1, metadata !701, metadata !DIExpression()), !dbg !702
  store ptr @predict_8x8_v, ptr %1, align 8, !dbg !703, !tbaa !217
  %3 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !704
  store ptr @predict_8x8_h, ptr %3, align 8, !dbg !705, !tbaa !217
  %4 = getelementptr inbounds ptr, ptr %1, i64 2, !dbg !706
  store ptr @predict_8x8_dc, ptr %4, align 8, !dbg !707, !tbaa !217
  %5 = getelementptr inbounds ptr, ptr %1, i64 3, !dbg !708
  store ptr @predict_8x8_ddl, ptr %5, align 8, !dbg !709, !tbaa !217
  %6 = getelementptr inbounds ptr, ptr %1, i64 4, !dbg !710
  store ptr @predict_8x8_ddr, ptr %6, align 8, !dbg !711, !tbaa !217
  %7 = getelementptr inbounds ptr, ptr %1, i64 5, !dbg !712
  store ptr @predict_8x8_vr, ptr %7, align 8, !dbg !713, !tbaa !217
  %8 = getelementptr inbounds ptr, ptr %1, i64 6, !dbg !714
  store ptr @predict_8x8_hd, ptr %8, align 8, !dbg !715, !tbaa !217
  %9 = getelementptr inbounds ptr, ptr %1, i64 7, !dbg !716
  store ptr @predict_8x8_vl, ptr %9, align 8, !dbg !717, !tbaa !217
  %10 = getelementptr inbounds ptr, ptr %1, i64 8, !dbg !718
  store ptr @predict_8x8_hu, ptr %10, align 8, !dbg !719, !tbaa !217
  %11 = getelementptr inbounds ptr, ptr %1, i64 9, !dbg !720
  store ptr @predict_8x8_dc_left, ptr %11, align 8, !dbg !721, !tbaa !217
  %12 = getelementptr inbounds ptr, ptr %1, i64 10, !dbg !722
  store ptr @predict_8x8_dc_top, ptr %12, align 8, !dbg !723, !tbaa !217
  %13 = getelementptr inbounds ptr, ptr %1, i64 11, !dbg !724
  store ptr @predict_8x8_dc_128, ptr %13, align 8, !dbg !725, !tbaa !217
  tail call void @x264_predict_8x8_init_mmx(i32 noundef %0, ptr noundef nonnull %1) #12, !dbg !726
  ret void, !dbg !727
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @predict_8x8_v(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #6 !dbg !728 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !730, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata ptr %1, metadata !731, metadata !DIExpression()), !dbg !735
  %3 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !736
  %4 = load i64, ptr %3, align 8, !dbg !737, !tbaa !200
  call void @llvm.dbg.value(metadata i64 %4, metadata !732, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i32 0, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i64 0, metadata !734, metadata !DIExpression()), !dbg !735
  store i64 %4, ptr %0, align 8, !dbg !738, !tbaa !200
  call void @llvm.dbg.value(metadata i64 1, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i64 1, metadata !734, metadata !DIExpression()), !dbg !735
  %5 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !741
  store i64 %4, ptr %5, align 8, !dbg !738, !tbaa !200
  call void @llvm.dbg.value(metadata i64 2, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i64 2, metadata !734, metadata !DIExpression()), !dbg !735
  %6 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !741
  store i64 %4, ptr %6, align 8, !dbg !738, !tbaa !200
  call void @llvm.dbg.value(metadata i64 3, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i64 3, metadata !734, metadata !DIExpression()), !dbg !735
  %7 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !741
  store i64 %4, ptr %7, align 8, !dbg !738, !tbaa !200
  call void @llvm.dbg.value(metadata i64 4, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i64 4, metadata !734, metadata !DIExpression()), !dbg !735
  %8 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !741
  store i64 %4, ptr %8, align 8, !dbg !738, !tbaa !200
  call void @llvm.dbg.value(metadata i64 5, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i64 5, metadata !734, metadata !DIExpression()), !dbg !735
  %9 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !741
  store i64 %4, ptr %9, align 8, !dbg !738, !tbaa !200
  call void @llvm.dbg.value(metadata i64 6, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i64 6, metadata !734, metadata !DIExpression()), !dbg !735
  %10 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !741
  store i64 %4, ptr %10, align 8, !dbg !738, !tbaa !200
  call void @llvm.dbg.value(metadata i64 7, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i64 7, metadata !734, metadata !DIExpression()), !dbg !735
  %11 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !741
  store i64 %4, ptr %11, align 8, !dbg !738, !tbaa !200
  call void @llvm.dbg.value(metadata i64 8, metadata !734, metadata !DIExpression()), !dbg !735
  ret void, !dbg !742
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_h(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #7 !dbg !743 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !745, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata ptr %1, metadata !746, metadata !DIExpression()), !dbg !756
  %3 = getelementptr inbounds i8, ptr %1, i64 14, !dbg !757
  %4 = load i8, ptr %3, align 1, !dbg !757, !tbaa !101
  %5 = zext i8 %4 to i32, !dbg !757
  call void @llvm.dbg.value(metadata i32 %5, metadata !747, metadata !DIExpression()), !dbg !756
  %6 = getelementptr inbounds i8, ptr %1, i64 13, !dbg !757
  %7 = load i8, ptr %6, align 1, !dbg !757, !tbaa !101
  %8 = zext i8 %7 to i32, !dbg !757
  call void @llvm.dbg.value(metadata i32 %8, metadata !749, metadata !DIExpression()), !dbg !756
  %9 = getelementptr inbounds i8, ptr %1, i64 12, !dbg !757
  %10 = load i8, ptr %9, align 1, !dbg !757, !tbaa !101
  %11 = zext i8 %10 to i32, !dbg !757
  call void @llvm.dbg.value(metadata i32 %11, metadata !750, metadata !DIExpression()), !dbg !756
  %12 = getelementptr inbounds i8, ptr %1, i64 11, !dbg !757
  %13 = load i8, ptr %12, align 1, !dbg !757, !tbaa !101
  %14 = zext i8 %13 to i32, !dbg !757
  call void @llvm.dbg.value(metadata i32 %14, metadata !751, metadata !DIExpression()), !dbg !756
  %15 = getelementptr inbounds i8, ptr %1, i64 10, !dbg !757
  %16 = load i8, ptr %15, align 1, !dbg !757, !tbaa !101
  %17 = zext i8 %16 to i32, !dbg !757
  call void @llvm.dbg.value(metadata i32 %17, metadata !752, metadata !DIExpression()), !dbg !756
  %18 = getelementptr inbounds i8, ptr %1, i64 9, !dbg !757
  %19 = load i8, ptr %18, align 1, !dbg !757, !tbaa !101
  %20 = zext i8 %19 to i32, !dbg !757
  call void @llvm.dbg.value(metadata i32 %20, metadata !753, metadata !DIExpression()), !dbg !756
  %21 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !757
  %22 = load i8, ptr %21, align 1, !dbg !757, !tbaa !101
  %23 = zext i8 %22 to i32, !dbg !757
  call void @llvm.dbg.value(metadata i32 %23, metadata !754, metadata !DIExpression()), !dbg !756
  %24 = getelementptr inbounds i8, ptr %1, i64 7, !dbg !757
  %25 = load i8, ptr %24, align 1, !dbg !757, !tbaa !101
  %26 = zext i8 %25 to i32, !dbg !757
  call void @llvm.dbg.value(metadata i32 %26, metadata !755, metadata !DIExpression()), !dbg !756
  %27 = mul nuw i32 %5, 16843009, !dbg !758
  %28 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !758
  store i32 %27, ptr %28, align 4, !dbg !758, !tbaa !248
  store i32 %27, ptr %0, align 4, !dbg !758, !tbaa !248
  %29 = mul nuw i32 %8, 16843009, !dbg !759
  %30 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !759
  %31 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !759
  store i32 %29, ptr %31, align 4, !dbg !759, !tbaa !248
  store i32 %29, ptr %30, align 4, !dbg !759, !tbaa !248
  %32 = mul nuw i32 %11, 16843009, !dbg !760
  %33 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !760
  %34 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !760
  store i32 %32, ptr %34, align 4, !dbg !760, !tbaa !248
  store i32 %32, ptr %33, align 4, !dbg !760, !tbaa !248
  %35 = mul nuw i32 %14, 16843009, !dbg !761
  %36 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !761
  %37 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !761
  store i32 %35, ptr %37, align 4, !dbg !761, !tbaa !248
  store i32 %35, ptr %36, align 4, !dbg !761, !tbaa !248
  %38 = mul nuw i32 %17, 16843009, !dbg !762
  %39 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !762
  %40 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !762
  store i32 %38, ptr %40, align 4, !dbg !762, !tbaa !248
  store i32 %38, ptr %39, align 4, !dbg !762, !tbaa !248
  %41 = mul nuw i32 %20, 16843009, !dbg !763
  %42 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !763
  %43 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !763
  store i32 %41, ptr %43, align 4, !dbg !763, !tbaa !248
  store i32 %41, ptr %42, align 4, !dbg !763, !tbaa !248
  %44 = mul nuw i32 %23, 16843009, !dbg !764
  %45 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !764
  %46 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !764
  store i32 %44, ptr %46, align 4, !dbg !764, !tbaa !248
  store i32 %44, ptr %45, align 4, !dbg !764, !tbaa !248
  %47 = mul nuw i32 %26, 16843009, !dbg !765
  %48 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !765
  %49 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !765
  store i32 %47, ptr %49, align 4, !dbg !765, !tbaa !248
  store i32 %47, ptr %48, align 4, !dbg !765, !tbaa !248
  ret void, !dbg !766
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8_dc(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #2 !dbg !767 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !769, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr %1, metadata !770, metadata !DIExpression()), !dbg !789
  %3 = getelementptr inbounds i8, ptr %1, i64 14, !dbg !790
  %4 = load i8, ptr %3, align 1, !dbg !790, !tbaa !101
  %5 = zext i8 %4 to i32, !dbg !790
  call void @llvm.dbg.value(metadata i32 %5, metadata !771, metadata !DIExpression()), !dbg !789
  %6 = getelementptr inbounds i8, ptr %1, i64 13, !dbg !790
  %7 = load i8, ptr %6, align 1, !dbg !790, !tbaa !101
  %8 = zext i8 %7 to i32, !dbg !790
  call void @llvm.dbg.value(metadata i32 %8, metadata !772, metadata !DIExpression()), !dbg !789
  %9 = getelementptr inbounds i8, ptr %1, i64 12, !dbg !790
  %10 = load i8, ptr %9, align 1, !dbg !790, !tbaa !101
  %11 = zext i8 %10 to i32, !dbg !790
  call void @llvm.dbg.value(metadata i32 %11, metadata !773, metadata !DIExpression()), !dbg !789
  %12 = getelementptr inbounds i8, ptr %1, i64 11, !dbg !790
  %13 = load i8, ptr %12, align 1, !dbg !790, !tbaa !101
  %14 = zext i8 %13 to i32, !dbg !790
  call void @llvm.dbg.value(metadata i32 %14, metadata !774, metadata !DIExpression()), !dbg !789
  %15 = getelementptr inbounds i8, ptr %1, i64 10, !dbg !790
  %16 = load i8, ptr %15, align 1, !dbg !790, !tbaa !101
  %17 = zext i8 %16 to i32, !dbg !790
  call void @llvm.dbg.value(metadata i32 %17, metadata !775, metadata !DIExpression()), !dbg !789
  %18 = getelementptr inbounds i8, ptr %1, i64 9, !dbg !790
  %19 = load i8, ptr %18, align 1, !dbg !790, !tbaa !101
  %20 = zext i8 %19 to i32, !dbg !790
  call void @llvm.dbg.value(metadata i32 %20, metadata !776, metadata !DIExpression()), !dbg !789
  %21 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !790
  %22 = load i8, ptr %21, align 1, !dbg !790, !tbaa !101
  %23 = zext i8 %22 to i32, !dbg !790
  call void @llvm.dbg.value(metadata i32 %23, metadata !777, metadata !DIExpression()), !dbg !789
  %24 = getelementptr inbounds i8, ptr %1, i64 7, !dbg !790
  %25 = load i8, ptr %24, align 1, !dbg !790, !tbaa !101
  %26 = zext i8 %25 to i32, !dbg !790
  call void @llvm.dbg.value(metadata i32 %26, metadata !778, metadata !DIExpression()), !dbg !789
  %27 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !791
  %28 = load i8, ptr %27, align 1, !dbg !791, !tbaa !101
  %29 = zext i8 %28 to i32, !dbg !791
  call void @llvm.dbg.value(metadata i32 %29, metadata !779, metadata !DIExpression()), !dbg !789
  %30 = getelementptr inbounds i8, ptr %1, i64 17, !dbg !791
  %31 = load i8, ptr %30, align 1, !dbg !791, !tbaa !101
  %32 = zext i8 %31 to i32, !dbg !791
  call void @llvm.dbg.value(metadata i32 %32, metadata !780, metadata !DIExpression()), !dbg !789
  %33 = getelementptr inbounds i8, ptr %1, i64 18, !dbg !791
  %34 = load i8, ptr %33, align 1, !dbg !791, !tbaa !101
  %35 = zext i8 %34 to i32, !dbg !791
  call void @llvm.dbg.value(metadata i32 %35, metadata !781, metadata !DIExpression()), !dbg !789
  %36 = getelementptr inbounds i8, ptr %1, i64 19, !dbg !791
  %37 = load i8, ptr %36, align 1, !dbg !791, !tbaa !101
  %38 = zext i8 %37 to i32, !dbg !791
  call void @llvm.dbg.value(metadata i32 %38, metadata !782, metadata !DIExpression()), !dbg !789
  %39 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !791
  %40 = load i8, ptr %39, align 1, !dbg !791, !tbaa !101
  %41 = zext i8 %40 to i32, !dbg !791
  call void @llvm.dbg.value(metadata i32 %41, metadata !783, metadata !DIExpression()), !dbg !789
  %42 = getelementptr inbounds i8, ptr %1, i64 21, !dbg !791
  %43 = load i8, ptr %42, align 1, !dbg !791, !tbaa !101
  %44 = zext i8 %43 to i32, !dbg !791
  call void @llvm.dbg.value(metadata i32 %44, metadata !784, metadata !DIExpression()), !dbg !789
  %45 = getelementptr inbounds i8, ptr %1, i64 22, !dbg !791
  %46 = load i8, ptr %45, align 1, !dbg !791, !tbaa !101
  %47 = zext i8 %46 to i32, !dbg !791
  call void @llvm.dbg.value(metadata i32 %47, metadata !785, metadata !DIExpression()), !dbg !789
  %48 = getelementptr inbounds i8, ptr %1, i64 23, !dbg !791
  %49 = load i8, ptr %48, align 1, !dbg !791, !tbaa !101
  %50 = zext i8 %49 to i32, !dbg !791
  call void @llvm.dbg.value(metadata i32 %50, metadata !786, metadata !DIExpression()), !dbg !789
  %51 = add nuw nsw i32 %5, 8, !dbg !792
  %52 = add nuw nsw i32 %51, %8, !dbg !793
  %53 = add nuw nsw i32 %52, %11, !dbg !794
  %54 = add nuw nsw i32 %53, %14, !dbg !795
  %55 = add nuw nsw i32 %54, %17, !dbg !796
  %56 = add nuw nsw i32 %55, %20, !dbg !797
  %57 = add nuw nsw i32 %56, %23, !dbg !798
  %58 = add nuw nsw i32 %57, %26, !dbg !799
  %59 = add nuw nsw i32 %58, %29, !dbg !800
  %60 = add nuw nsw i32 %59, %32, !dbg !801
  %61 = add nuw nsw i32 %60, %35, !dbg !802
  %62 = add nuw nsw i32 %61, %38, !dbg !803
  %63 = add nuw nsw i32 %62, %41, !dbg !804
  %64 = add nuw nsw i32 %63, %44, !dbg !805
  %65 = add nuw nsw i32 %64, %47, !dbg !806
  %66 = add nuw nsw i32 %65, %50, !dbg !807
  %67 = lshr i32 %66, 4
  %68 = mul nuw nsw i32 %67, 16843009, !dbg !808
  call void @llvm.dbg.value(metadata i32 %68, metadata !787, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 0, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr %0, metadata !769, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 0, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr %0, metadata !769, metadata !DIExpression()), !dbg !789
  %69 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !809
  store i32 %68, ptr %69, align 4, !dbg !809, !tbaa !248
  store i32 %68, ptr %0, align 4, !dbg !809, !tbaa !248
  %70 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !809
  call void @llvm.dbg.value(metadata ptr %70, metadata !769, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 1, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 1, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr %70, metadata !769, metadata !DIExpression()), !dbg !789
  %71 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !809
  store i32 %68, ptr %71, align 4, !dbg !809, !tbaa !248
  store i32 %68, ptr %70, align 4, !dbg !809, !tbaa !248
  %72 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !809
  call void @llvm.dbg.value(metadata ptr %72, metadata !769, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 2, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 2, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr %72, metadata !769, metadata !DIExpression()), !dbg !789
  %73 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !809
  store i32 %68, ptr %73, align 4, !dbg !809, !tbaa !248
  store i32 %68, ptr %72, align 4, !dbg !809, !tbaa !248
  %74 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !809
  call void @llvm.dbg.value(metadata ptr %74, metadata !769, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 3, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 3, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr %74, metadata !769, metadata !DIExpression()), !dbg !789
  %75 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !809
  store i32 %68, ptr %75, align 4, !dbg !809, !tbaa !248
  store i32 %68, ptr %74, align 4, !dbg !809, !tbaa !248
  %76 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !809
  call void @llvm.dbg.value(metadata ptr %76, metadata !769, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 4, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 4, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr %76, metadata !769, metadata !DIExpression()), !dbg !789
  %77 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !809
  store i32 %68, ptr %77, align 4, !dbg !809, !tbaa !248
  store i32 %68, ptr %76, align 4, !dbg !809, !tbaa !248
  %78 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !809
  call void @llvm.dbg.value(metadata ptr %78, metadata !769, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 5, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 5, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr %78, metadata !769, metadata !DIExpression()), !dbg !789
  %79 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !809
  store i32 %68, ptr %79, align 4, !dbg !809, !tbaa !248
  store i32 %68, ptr %78, align 4, !dbg !809, !tbaa !248
  %80 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !809
  call void @llvm.dbg.value(metadata ptr %80, metadata !769, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 6, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 6, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr %80, metadata !769, metadata !DIExpression()), !dbg !789
  %81 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !809
  store i32 %68, ptr %81, align 4, !dbg !809, !tbaa !248
  store i32 %68, ptr %80, align 4, !dbg !809, !tbaa !248
  %82 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !809
  call void @llvm.dbg.value(metadata ptr %82, metadata !769, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 7, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 7, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr %82, metadata !769, metadata !DIExpression()), !dbg !789
  %83 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !809
  store i32 %68, ptr %83, align 4, !dbg !809, !tbaa !248
  store i32 %68, ptr %82, align 4, !dbg !809, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %82, metadata !769, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !789
  call void @llvm.dbg.value(metadata i32 8, metadata !788, metadata !DIExpression()), !dbg !789
  ret void, !dbg !813
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_ddl(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) #7 !dbg !814 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !816, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr %1, metadata !817, metadata !DIExpression()), !dbg !834
  %3 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !835
  %4 = load i8, ptr %3, align 1, !dbg !835, !tbaa !101
  %5 = zext i8 %4 to i32, !dbg !835
  call void @llvm.dbg.value(metadata i32 %5, metadata !818, metadata !DIExpression()), !dbg !834
  %6 = getelementptr inbounds i8, ptr %1, i64 17, !dbg !835
  %7 = load i8, ptr %6, align 1, !dbg !835, !tbaa !101
  %8 = zext i8 %7 to i32, !dbg !835
  call void @llvm.dbg.value(metadata i32 %8, metadata !819, metadata !DIExpression()), !dbg !834
  %9 = getelementptr inbounds i8, ptr %1, i64 18, !dbg !835
  %10 = load i8, ptr %9, align 1, !dbg !835, !tbaa !101
  %11 = zext i8 %10 to i32, !dbg !835
  call void @llvm.dbg.value(metadata i32 %11, metadata !820, metadata !DIExpression()), !dbg !834
  %12 = getelementptr inbounds i8, ptr %1, i64 19, !dbg !835
  %13 = load i8, ptr %12, align 1, !dbg !835, !tbaa !101
  %14 = zext i8 %13 to i32, !dbg !835
  call void @llvm.dbg.value(metadata i32 %14, metadata !821, metadata !DIExpression()), !dbg !834
  %15 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !835
  %16 = load i8, ptr %15, align 1, !dbg !835, !tbaa !101
  %17 = zext i8 %16 to i32, !dbg !835
  call void @llvm.dbg.value(metadata i32 %17, metadata !822, metadata !DIExpression()), !dbg !834
  %18 = getelementptr inbounds i8, ptr %1, i64 21, !dbg !835
  %19 = load i8, ptr %18, align 1, !dbg !835, !tbaa !101
  %20 = zext i8 %19 to i32, !dbg !835
  call void @llvm.dbg.value(metadata i32 %20, metadata !823, metadata !DIExpression()), !dbg !834
  %21 = getelementptr inbounds i8, ptr %1, i64 22, !dbg !835
  %22 = load i8, ptr %21, align 1, !dbg !835, !tbaa !101
  %23 = zext i8 %22 to i32, !dbg !835
  call void @llvm.dbg.value(metadata i32 %23, metadata !824, metadata !DIExpression()), !dbg !834
  %24 = getelementptr inbounds i8, ptr %1, i64 23, !dbg !835
  %25 = load i8, ptr %24, align 1, !dbg !835, !tbaa !101
  %26 = zext i8 %25 to i32, !dbg !835
  call void @llvm.dbg.value(metadata i32 %26, metadata !825, metadata !DIExpression()), !dbg !834
  %27 = getelementptr inbounds i8, ptr %1, i64 24, !dbg !836
  %28 = load i8, ptr %27, align 1, !dbg !836, !tbaa !101
  %29 = zext i8 %28 to i32, !dbg !836
  call void @llvm.dbg.value(metadata i32 %29, metadata !826, metadata !DIExpression()), !dbg !834
  %30 = getelementptr inbounds i8, ptr %1, i64 25, !dbg !836
  %31 = load i8, ptr %30, align 1, !dbg !836, !tbaa !101
  %32 = zext i8 %31 to i32, !dbg !836
  call void @llvm.dbg.value(metadata i32 %32, metadata !827, metadata !DIExpression()), !dbg !834
  %33 = getelementptr inbounds i8, ptr %1, i64 26, !dbg !836
  %34 = load i8, ptr %33, align 1, !dbg !836, !tbaa !101
  %35 = zext i8 %34 to i32, !dbg !836
  call void @llvm.dbg.value(metadata i32 %35, metadata !828, metadata !DIExpression()), !dbg !834
  %36 = getelementptr inbounds i8, ptr %1, i64 27, !dbg !836
  %37 = load i8, ptr %36, align 1, !dbg !836, !tbaa !101
  %38 = zext i8 %37 to i32, !dbg !836
  call void @llvm.dbg.value(metadata i32 %38, metadata !829, metadata !DIExpression()), !dbg !834
  %39 = getelementptr inbounds i8, ptr %1, i64 28, !dbg !836
  %40 = load i8, ptr %39, align 1, !dbg !836, !tbaa !101
  %41 = zext i8 %40 to i32, !dbg !836
  call void @llvm.dbg.value(metadata i32 %41, metadata !830, metadata !DIExpression()), !dbg !834
  %42 = getelementptr inbounds i8, ptr %1, i64 29, !dbg !836
  %43 = load i8, ptr %42, align 1, !dbg !836, !tbaa !101
  %44 = zext i8 %43 to i32, !dbg !836
  call void @llvm.dbg.value(metadata i32 %44, metadata !831, metadata !DIExpression()), !dbg !834
  %45 = getelementptr inbounds i8, ptr %1, i64 30, !dbg !836
  %46 = load i8, ptr %45, align 1, !dbg !836, !tbaa !101
  %47 = zext i8 %46 to i32, !dbg !836
  call void @llvm.dbg.value(metadata i32 %47, metadata !832, metadata !DIExpression()), !dbg !834
  %48 = getelementptr inbounds i8, ptr %1, i64 31, !dbg !836
  %49 = load i8, ptr %48, align 1, !dbg !836, !tbaa !101
  %50 = zext i8 %49 to i32, !dbg !836
  call void @llvm.dbg.value(metadata i32 %50, metadata !833, metadata !DIExpression()), !dbg !834
  %51 = shl nuw nsw i32 %8, 1, !dbg !837
  %52 = add nuw nsw i32 %11, 2, !dbg !837
  %53 = add nuw nsw i32 %52, %5, !dbg !837
  %54 = add nuw nsw i32 %53, %51, !dbg !837
  %55 = lshr i32 %54, 2
  %56 = trunc i32 %55 to i8, !dbg !837
  store i8 %56, ptr %0, align 1, !dbg !838, !tbaa !101
  %57 = shl nuw nsw i32 %11, 1, !dbg !839
  %58 = add nuw nsw i32 %14, 2, !dbg !839
  %59 = add nuw nsw i32 %58, %8, !dbg !839
  %60 = add nuw nsw i32 %59, %57, !dbg !839
  %61 = lshr i32 %60, 2
  %62 = trunc i32 %61 to i8, !dbg !839
  %63 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !840
  store i8 %62, ptr %63, align 1, !dbg !841, !tbaa !101
  %64 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !842
  store i8 %62, ptr %64, align 1, !dbg !843, !tbaa !101
  %65 = shl nuw nsw i32 %14, 1, !dbg !844
  %66 = add nuw nsw i32 %52, %65, !dbg !844
  %67 = add nuw nsw i32 %66, %17, !dbg !844
  %68 = lshr i32 %67, 2
  %69 = trunc i32 %68 to i8, !dbg !844
  %70 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !845
  store i8 %69, ptr %70, align 1, !dbg !846, !tbaa !101
  %71 = getelementptr inbounds i8, ptr %0, i64 33, !dbg !847
  store i8 %69, ptr %71, align 1, !dbg !848, !tbaa !101
  %72 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !849
  store i8 %69, ptr %72, align 1, !dbg !850, !tbaa !101
  %73 = shl nuw nsw i32 %17, 1, !dbg !851
  %74 = add nuw nsw i32 %58, %73, !dbg !851
  %75 = add nuw nsw i32 %74, %20, !dbg !851
  %76 = lshr i32 %75, 2
  %77 = trunc i32 %76 to i8, !dbg !851
  %78 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !852
  store i8 %77, ptr %78, align 1, !dbg !853, !tbaa !101
  %79 = getelementptr inbounds i8, ptr %0, i64 34, !dbg !854
  store i8 %77, ptr %79, align 1, !dbg !855, !tbaa !101
  %80 = getelementptr inbounds i8, ptr %0, i64 65, !dbg !856
  store i8 %77, ptr %80, align 1, !dbg !857, !tbaa !101
  %81 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !858
  store i8 %77, ptr %81, align 1, !dbg !859, !tbaa !101
  %82 = shl nuw nsw i32 %20, 1, !dbg !860
  %83 = add nuw nsw i32 %17, 2, !dbg !860
  %84 = add nuw nsw i32 %83, %82, !dbg !860
  %85 = add nuw nsw i32 %84, %23, !dbg !860
  %86 = lshr i32 %85, 2
  %87 = trunc i32 %86 to i8, !dbg !860
  %88 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !861
  store i8 %87, ptr %88, align 1, !dbg !862, !tbaa !101
  %89 = getelementptr inbounds i8, ptr %0, i64 35, !dbg !863
  store i8 %87, ptr %89, align 1, !dbg !864, !tbaa !101
  %90 = getelementptr inbounds i8, ptr %0, i64 66, !dbg !865
  store i8 %87, ptr %90, align 1, !dbg !866, !tbaa !101
  %91 = getelementptr inbounds i8, ptr %0, i64 97, !dbg !867
  store i8 %87, ptr %91, align 1, !dbg !868, !tbaa !101
  %92 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !869
  store i8 %87, ptr %92, align 1, !dbg !870, !tbaa !101
  %93 = shl nuw nsw i32 %23, 1, !dbg !871
  %94 = add nuw nsw i32 %20, 2, !dbg !871
  %95 = add nuw nsw i32 %94, %93, !dbg !871
  %96 = add nuw nsw i32 %95, %26, !dbg !871
  %97 = lshr i32 %96, 2
  %98 = trunc i32 %97 to i8, !dbg !871
  %99 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !872
  store i8 %98, ptr %99, align 1, !dbg !873, !tbaa !101
  %100 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !874
  store i8 %98, ptr %100, align 1, !dbg !875, !tbaa !101
  %101 = getelementptr inbounds i8, ptr %0, i64 67, !dbg !876
  store i8 %98, ptr %101, align 1, !dbg !877, !tbaa !101
  %102 = getelementptr inbounds i8, ptr %0, i64 98, !dbg !878
  store i8 %98, ptr %102, align 1, !dbg !879, !tbaa !101
  %103 = getelementptr inbounds i8, ptr %0, i64 129, !dbg !880
  store i8 %98, ptr %103, align 1, !dbg !881, !tbaa !101
  %104 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !882
  store i8 %98, ptr %104, align 1, !dbg !883, !tbaa !101
  %105 = shl nuw nsw i32 %26, 1, !dbg !884
  %106 = add nuw nsw i32 %23, 2, !dbg !884
  %107 = add nuw nsw i32 %106, %105, !dbg !884
  %108 = add nuw nsw i32 %107, %29, !dbg !884
  %109 = lshr i32 %108, 2
  %110 = trunc i32 %109 to i8, !dbg !884
  %111 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !885
  store i8 %110, ptr %111, align 1, !dbg !886, !tbaa !101
  %112 = getelementptr inbounds i8, ptr %0, i64 37, !dbg !887
  store i8 %110, ptr %112, align 1, !dbg !888, !tbaa !101
  %113 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !889
  store i8 %110, ptr %113, align 1, !dbg !890, !tbaa !101
  %114 = getelementptr inbounds i8, ptr %0, i64 99, !dbg !891
  store i8 %110, ptr %114, align 1, !dbg !892, !tbaa !101
  %115 = getelementptr inbounds i8, ptr %0, i64 130, !dbg !893
  store i8 %110, ptr %115, align 1, !dbg !894, !tbaa !101
  %116 = getelementptr inbounds i8, ptr %0, i64 161, !dbg !895
  store i8 %110, ptr %116, align 1, !dbg !896, !tbaa !101
  %117 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !897
  store i8 %110, ptr %117, align 1, !dbg !898, !tbaa !101
  %118 = shl nuw nsw i32 %29, 1, !dbg !899
  %119 = add nuw nsw i32 %26, 2, !dbg !899
  %120 = add nuw nsw i32 %119, %118, !dbg !899
  %121 = add nuw nsw i32 %120, %32, !dbg !899
  %122 = lshr i32 %121, 2
  %123 = trunc i32 %122 to i8, !dbg !899
  %124 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !900
  store i8 %123, ptr %124, align 1, !dbg !901, !tbaa !101
  %125 = getelementptr inbounds i8, ptr %0, i64 38, !dbg !902
  store i8 %123, ptr %125, align 1, !dbg !903, !tbaa !101
  %126 = getelementptr inbounds i8, ptr %0, i64 69, !dbg !904
  store i8 %123, ptr %126, align 1, !dbg !905, !tbaa !101
  %127 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !906
  store i8 %123, ptr %127, align 1, !dbg !907, !tbaa !101
  %128 = getelementptr inbounds i8, ptr %0, i64 131, !dbg !908
  store i8 %123, ptr %128, align 1, !dbg !909, !tbaa !101
  %129 = getelementptr inbounds i8, ptr %0, i64 162, !dbg !910
  store i8 %123, ptr %129, align 1, !dbg !911, !tbaa !101
  %130 = getelementptr inbounds i8, ptr %0, i64 193, !dbg !912
  store i8 %123, ptr %130, align 1, !dbg !913, !tbaa !101
  %131 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !914
  store i8 %123, ptr %131, align 1, !dbg !915, !tbaa !101
  %132 = shl nuw nsw i32 %32, 1, !dbg !916
  %133 = add nuw nsw i32 %29, 2, !dbg !916
  %134 = add nuw nsw i32 %133, %132, !dbg !916
  %135 = add nuw nsw i32 %134, %35, !dbg !916
  %136 = lshr i32 %135, 2
  %137 = trunc i32 %136 to i8, !dbg !916
  %138 = getelementptr inbounds i8, ptr %0, i64 39, !dbg !917
  store i8 %137, ptr %138, align 1, !dbg !918, !tbaa !101
  %139 = getelementptr inbounds i8, ptr %0, i64 70, !dbg !919
  store i8 %137, ptr %139, align 1, !dbg !920, !tbaa !101
  %140 = getelementptr inbounds i8, ptr %0, i64 101, !dbg !921
  store i8 %137, ptr %140, align 1, !dbg !922, !tbaa !101
  %141 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !923
  store i8 %137, ptr %141, align 1, !dbg !924, !tbaa !101
  %142 = getelementptr inbounds i8, ptr %0, i64 163, !dbg !925
  store i8 %137, ptr %142, align 1, !dbg !926, !tbaa !101
  %143 = getelementptr inbounds i8, ptr %0, i64 194, !dbg !927
  store i8 %137, ptr %143, align 1, !dbg !928, !tbaa !101
  %144 = getelementptr inbounds i8, ptr %0, i64 225, !dbg !929
  store i8 %137, ptr %144, align 1, !dbg !930, !tbaa !101
  %145 = shl nuw nsw i32 %35, 1, !dbg !931
  %146 = add nuw nsw i32 %32, 2, !dbg !931
  %147 = add nuw nsw i32 %146, %145, !dbg !931
  %148 = add nuw nsw i32 %147, %38, !dbg !931
  %149 = lshr i32 %148, 2
  %150 = trunc i32 %149 to i8, !dbg !931
  %151 = getelementptr inbounds i8, ptr %0, i64 71, !dbg !932
  store i8 %150, ptr %151, align 1, !dbg !933, !tbaa !101
  %152 = getelementptr inbounds i8, ptr %0, i64 102, !dbg !934
  store i8 %150, ptr %152, align 1, !dbg !935, !tbaa !101
  %153 = getelementptr inbounds i8, ptr %0, i64 133, !dbg !936
  store i8 %150, ptr %153, align 1, !dbg !937, !tbaa !101
  %154 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !938
  store i8 %150, ptr %154, align 1, !dbg !939, !tbaa !101
  %155 = getelementptr inbounds i8, ptr %0, i64 195, !dbg !940
  store i8 %150, ptr %155, align 1, !dbg !941, !tbaa !101
  %156 = getelementptr inbounds i8, ptr %0, i64 226, !dbg !942
  store i8 %150, ptr %156, align 1, !dbg !943, !tbaa !101
  %157 = shl nuw nsw i32 %38, 1, !dbg !944
  %158 = add nuw nsw i32 %35, 2, !dbg !944
  %159 = add nuw nsw i32 %158, %157, !dbg !944
  %160 = add nuw nsw i32 %159, %41, !dbg !944
  %161 = lshr i32 %160, 2
  %162 = trunc i32 %161 to i8, !dbg !944
  %163 = getelementptr inbounds i8, ptr %0, i64 103, !dbg !945
  store i8 %162, ptr %163, align 1, !dbg !946, !tbaa !101
  %164 = getelementptr inbounds i8, ptr %0, i64 134, !dbg !947
  store i8 %162, ptr %164, align 1, !dbg !948, !tbaa !101
  %165 = getelementptr inbounds i8, ptr %0, i64 165, !dbg !949
  store i8 %162, ptr %165, align 1, !dbg !950, !tbaa !101
  %166 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !951
  store i8 %162, ptr %166, align 1, !dbg !952, !tbaa !101
  %167 = getelementptr inbounds i8, ptr %0, i64 227, !dbg !953
  store i8 %162, ptr %167, align 1, !dbg !954, !tbaa !101
  %168 = shl nuw nsw i32 %41, 1, !dbg !955
  %169 = add nuw nsw i32 %38, 2, !dbg !955
  %170 = add nuw nsw i32 %169, %168, !dbg !955
  %171 = add nuw nsw i32 %170, %44, !dbg !955
  %172 = lshr i32 %171, 2
  %173 = trunc i32 %172 to i8, !dbg !955
  %174 = getelementptr inbounds i8, ptr %0, i64 135, !dbg !956
  store i8 %173, ptr %174, align 1, !dbg !957, !tbaa !101
  %175 = getelementptr inbounds i8, ptr %0, i64 166, !dbg !958
  store i8 %173, ptr %175, align 1, !dbg !959, !tbaa !101
  %176 = getelementptr inbounds i8, ptr %0, i64 197, !dbg !960
  store i8 %173, ptr %176, align 1, !dbg !961, !tbaa !101
  %177 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !962
  store i8 %173, ptr %177, align 1, !dbg !963, !tbaa !101
  %178 = shl nuw nsw i32 %44, 1, !dbg !964
  %179 = add nuw nsw i32 %41, 2, !dbg !964
  %180 = add nuw nsw i32 %179, %178, !dbg !964
  %181 = add nuw nsw i32 %180, %47, !dbg !964
  %182 = lshr i32 %181, 2
  %183 = trunc i32 %182 to i8, !dbg !964
  %184 = getelementptr inbounds i8, ptr %0, i64 167, !dbg !965
  store i8 %183, ptr %184, align 1, !dbg !966, !tbaa !101
  %185 = getelementptr inbounds i8, ptr %0, i64 198, !dbg !967
  store i8 %183, ptr %185, align 1, !dbg !968, !tbaa !101
  %186 = getelementptr inbounds i8, ptr %0, i64 229, !dbg !969
  store i8 %183, ptr %186, align 1, !dbg !970, !tbaa !101
  %187 = shl nuw nsw i32 %47, 1, !dbg !971
  %188 = add nuw nsw i32 %44, 2, !dbg !971
  %189 = add nuw nsw i32 %188, %187, !dbg !971
  %190 = add nuw nsw i32 %189, %50, !dbg !971
  %191 = lshr i32 %190, 2
  %192 = trunc i32 %191 to i8, !dbg !971
  %193 = getelementptr inbounds i8, ptr %0, i64 199, !dbg !972
  store i8 %192, ptr %193, align 1, !dbg !973, !tbaa !101
  %194 = getelementptr inbounds i8, ptr %0, i64 230, !dbg !974
  store i8 %192, ptr %194, align 1, !dbg !975, !tbaa !101
  %195 = shl nuw nsw i32 %50, 1, !dbg !976
  %196 = add nuw nsw i32 %47, 2, !dbg !976
  %197 = add nuw nsw i32 %196, %50, !dbg !976
  %198 = add nuw nsw i32 %197, %195, !dbg !976
  %199 = lshr i32 %198, 2
  %200 = trunc i32 %199 to i8, !dbg !976
  %201 = getelementptr inbounds i8, ptr %0, i64 231, !dbg !977
  store i8 %200, ptr %201, align 1, !dbg !978, !tbaa !101
  ret void, !dbg !979
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_ddr(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) #7 !dbg !980 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !982, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata ptr %1, metadata !983, metadata !DIExpression()), !dbg !1001
  %3 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !1002
  %4 = load i8, ptr %3, align 1, !dbg !1002, !tbaa !101
  %5 = zext i8 %4 to i32, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %5, metadata !984, metadata !DIExpression()), !dbg !1001
  %6 = getelementptr inbounds i8, ptr %1, i64 17, !dbg !1002
  %7 = load i8, ptr %6, align 1, !dbg !1002, !tbaa !101
  %8 = zext i8 %7 to i32, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %8, metadata !985, metadata !DIExpression()), !dbg !1001
  %9 = getelementptr inbounds i8, ptr %1, i64 18, !dbg !1002
  %10 = load i8, ptr %9, align 1, !dbg !1002, !tbaa !101
  %11 = zext i8 %10 to i32, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %11, metadata !986, metadata !DIExpression()), !dbg !1001
  %12 = getelementptr inbounds i8, ptr %1, i64 19, !dbg !1002
  %13 = load i8, ptr %12, align 1, !dbg !1002, !tbaa !101
  %14 = zext i8 %13 to i32, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %14, metadata !987, metadata !DIExpression()), !dbg !1001
  %15 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !1002
  %16 = load i8, ptr %15, align 1, !dbg !1002, !tbaa !101
  %17 = zext i8 %16 to i32, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %17, metadata !988, metadata !DIExpression()), !dbg !1001
  %18 = getelementptr inbounds i8, ptr %1, i64 21, !dbg !1002
  %19 = load i8, ptr %18, align 1, !dbg !1002, !tbaa !101
  %20 = zext i8 %19 to i32, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %20, metadata !989, metadata !DIExpression()), !dbg !1001
  %21 = getelementptr inbounds i8, ptr %1, i64 22, !dbg !1002
  %22 = load i8, ptr %21, align 1, !dbg !1002, !tbaa !101
  %23 = zext i8 %22 to i32, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %23, metadata !990, metadata !DIExpression()), !dbg !1001
  %24 = getelementptr inbounds i8, ptr %1, i64 23, !dbg !1002
  %25 = load i8, ptr %24, align 1, !dbg !1002, !tbaa !101
  %26 = zext i8 %25 to i32, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %26, metadata !991, metadata !DIExpression()), !dbg !1001
  %27 = getelementptr inbounds i8, ptr %1, i64 14, !dbg !1003
  %28 = load i8, ptr %27, align 1, !dbg !1003, !tbaa !101
  %29 = zext i8 %28 to i32, !dbg !1003
  call void @llvm.dbg.value(metadata i32 %29, metadata !992, metadata !DIExpression()), !dbg !1001
  %30 = getelementptr inbounds i8, ptr %1, i64 13, !dbg !1003
  %31 = load i8, ptr %30, align 1, !dbg !1003, !tbaa !101
  %32 = zext i8 %31 to i32, !dbg !1003
  call void @llvm.dbg.value(metadata i32 %32, metadata !993, metadata !DIExpression()), !dbg !1001
  %33 = getelementptr inbounds i8, ptr %1, i64 12, !dbg !1003
  %34 = load i8, ptr %33, align 1, !dbg !1003, !tbaa !101
  %35 = zext i8 %34 to i32, !dbg !1003
  call void @llvm.dbg.value(metadata i32 %35, metadata !994, metadata !DIExpression()), !dbg !1001
  %36 = getelementptr inbounds i8, ptr %1, i64 11, !dbg !1003
  %37 = load i8, ptr %36, align 1, !dbg !1003, !tbaa !101
  %38 = zext i8 %37 to i32, !dbg !1003
  call void @llvm.dbg.value(metadata i32 %38, metadata !995, metadata !DIExpression()), !dbg !1001
  %39 = getelementptr inbounds i8, ptr %1, i64 10, !dbg !1003
  %40 = load i8, ptr %39, align 1, !dbg !1003, !tbaa !101
  %41 = zext i8 %40 to i32, !dbg !1003
  call void @llvm.dbg.value(metadata i32 %41, metadata !996, metadata !DIExpression()), !dbg !1001
  %42 = getelementptr inbounds i8, ptr %1, i64 9, !dbg !1003
  %43 = load i8, ptr %42, align 1, !dbg !1003, !tbaa !101
  %44 = zext i8 %43 to i32, !dbg !1003
  call void @llvm.dbg.value(metadata i32 %44, metadata !997, metadata !DIExpression()), !dbg !1001
  %45 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !1003
  %46 = load i8, ptr %45, align 1, !dbg !1003, !tbaa !101
  %47 = zext i8 %46 to i32, !dbg !1003
  call void @llvm.dbg.value(metadata i32 %47, metadata !998, metadata !DIExpression()), !dbg !1001
  %48 = getelementptr inbounds i8, ptr %1, i64 7, !dbg !1003
  %49 = load i8, ptr %48, align 1, !dbg !1003, !tbaa !101
  %50 = zext i8 %49 to i32, !dbg !1003
  call void @llvm.dbg.value(metadata i32 %50, metadata !999, metadata !DIExpression()), !dbg !1001
  %51 = getelementptr inbounds i8, ptr %1, i64 15, !dbg !1004
  %52 = load i8, ptr %51, align 1, !dbg !1004, !tbaa !101
  %53 = zext i8 %52 to i32, !dbg !1004
  call void @llvm.dbg.value(metadata i32 %53, metadata !1000, metadata !DIExpression()), !dbg !1001
  %54 = shl nuw nsw i32 %47, 1, !dbg !1005
  %55 = add nuw nsw i32 %44, 2, !dbg !1005
  %56 = add nuw nsw i32 %55, %50, !dbg !1005
  %57 = add nuw nsw i32 %56, %54, !dbg !1005
  %58 = lshr i32 %57, 2
  %59 = trunc i32 %58 to i8, !dbg !1005
  %60 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !1006
  store i8 %59, ptr %60, align 1, !dbg !1007, !tbaa !101
  %61 = shl nuw nsw i32 %44, 1, !dbg !1008
  %62 = add nuw nsw i32 %41, 2, !dbg !1008
  %63 = add nuw nsw i32 %62, %47, !dbg !1008
  %64 = add nuw nsw i32 %63, %61, !dbg !1008
  %65 = lshr i32 %64, 2
  %66 = trunc i32 %65 to i8, !dbg !1008
  %67 = getelementptr inbounds i8, ptr %0, i64 225, !dbg !1009
  store i8 %66, ptr %67, align 1, !dbg !1010, !tbaa !101
  %68 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !1011
  store i8 %66, ptr %68, align 1, !dbg !1012, !tbaa !101
  %69 = shl nuw nsw i32 %41, 1, !dbg !1013
  %70 = add nuw nsw i32 %38, 2, !dbg !1013
  %71 = add nuw nsw i32 %70, %44, !dbg !1013
  %72 = add nuw nsw i32 %71, %69, !dbg !1013
  %73 = lshr i32 %72, 2
  %74 = trunc i32 %73 to i8, !dbg !1013
  %75 = getelementptr inbounds i8, ptr %0, i64 226, !dbg !1014
  store i8 %74, ptr %75, align 1, !dbg !1015, !tbaa !101
  %76 = getelementptr inbounds i8, ptr %0, i64 193, !dbg !1016
  store i8 %74, ptr %76, align 1, !dbg !1017, !tbaa !101
  %77 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !1018
  store i8 %74, ptr %77, align 1, !dbg !1019, !tbaa !101
  %78 = shl nuw nsw i32 %38, 1, !dbg !1020
  %79 = add nuw nsw i32 %35, 2, !dbg !1020
  %80 = add nuw nsw i32 %79, %41, !dbg !1020
  %81 = add nuw nsw i32 %80, %78, !dbg !1020
  %82 = lshr i32 %81, 2
  %83 = trunc i32 %82 to i8, !dbg !1020
  %84 = getelementptr inbounds i8, ptr %0, i64 227, !dbg !1021
  store i8 %83, ptr %84, align 1, !dbg !1022, !tbaa !101
  %85 = getelementptr inbounds i8, ptr %0, i64 194, !dbg !1023
  store i8 %83, ptr %85, align 1, !dbg !1024, !tbaa !101
  %86 = getelementptr inbounds i8, ptr %0, i64 161, !dbg !1025
  store i8 %83, ptr %86, align 1, !dbg !1026, !tbaa !101
  %87 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !1027
  store i8 %83, ptr %87, align 1, !dbg !1028, !tbaa !101
  %88 = shl nuw nsw i32 %35, 1, !dbg !1029
  %89 = add nuw nsw i32 %32, 2, !dbg !1029
  %90 = add nuw nsw i32 %89, %38, !dbg !1029
  %91 = add nuw nsw i32 %90, %88, !dbg !1029
  %92 = lshr i32 %91, 2
  %93 = trunc i32 %92 to i8, !dbg !1029
  %94 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !1030
  store i8 %93, ptr %94, align 1, !dbg !1031, !tbaa !101
  %95 = getelementptr inbounds i8, ptr %0, i64 195, !dbg !1032
  store i8 %93, ptr %95, align 1, !dbg !1033, !tbaa !101
  %96 = getelementptr inbounds i8, ptr %0, i64 162, !dbg !1034
  store i8 %93, ptr %96, align 1, !dbg !1035, !tbaa !101
  %97 = getelementptr inbounds i8, ptr %0, i64 129, !dbg !1036
  store i8 %93, ptr %97, align 1, !dbg !1037, !tbaa !101
  %98 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !1038
  store i8 %93, ptr %98, align 1, !dbg !1039, !tbaa !101
  %99 = shl nuw nsw i32 %32, 1, !dbg !1040
  %100 = add nuw nsw i32 %29, 2, !dbg !1040
  %101 = add nuw nsw i32 %100, %35, !dbg !1040
  %102 = add nuw nsw i32 %101, %99, !dbg !1040
  %103 = lshr i32 %102, 2
  %104 = trunc i32 %103 to i8, !dbg !1040
  %105 = getelementptr inbounds i8, ptr %0, i64 229, !dbg !1041
  store i8 %104, ptr %105, align 1, !dbg !1042, !tbaa !101
  %106 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !1043
  store i8 %104, ptr %106, align 1, !dbg !1044, !tbaa !101
  %107 = getelementptr inbounds i8, ptr %0, i64 163, !dbg !1045
  store i8 %104, ptr %107, align 1, !dbg !1046, !tbaa !101
  %108 = getelementptr inbounds i8, ptr %0, i64 130, !dbg !1047
  store i8 %104, ptr %108, align 1, !dbg !1048, !tbaa !101
  %109 = getelementptr inbounds i8, ptr %0, i64 97, !dbg !1049
  store i8 %104, ptr %109, align 1, !dbg !1050, !tbaa !101
  %110 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !1051
  store i8 %104, ptr %110, align 1, !dbg !1052, !tbaa !101
  %111 = shl nuw nsw i32 %29, 1, !dbg !1053
  %112 = add nuw nsw i32 %89, %111, !dbg !1053
  %113 = add nuw nsw i32 %112, %53, !dbg !1053
  %114 = lshr i32 %113, 2
  %115 = trunc i32 %114 to i8, !dbg !1053
  %116 = getelementptr inbounds i8, ptr %0, i64 230, !dbg !1054
  store i8 %115, ptr %116, align 1, !dbg !1055, !tbaa !101
  %117 = getelementptr inbounds i8, ptr %0, i64 197, !dbg !1056
  store i8 %115, ptr %117, align 1, !dbg !1057, !tbaa !101
  %118 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !1058
  store i8 %115, ptr %118, align 1, !dbg !1059, !tbaa !101
  %119 = getelementptr inbounds i8, ptr %0, i64 131, !dbg !1060
  store i8 %115, ptr %119, align 1, !dbg !1061, !tbaa !101
  %120 = getelementptr inbounds i8, ptr %0, i64 98, !dbg !1062
  store i8 %115, ptr %120, align 1, !dbg !1063, !tbaa !101
  %121 = getelementptr inbounds i8, ptr %0, i64 65, !dbg !1064
  store i8 %115, ptr %121, align 1, !dbg !1065, !tbaa !101
  %122 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !1066
  store i8 %115, ptr %122, align 1, !dbg !1067, !tbaa !101
  %123 = shl nuw nsw i32 %53, 1, !dbg !1068
  %124 = add nuw nsw i32 %5, 2, !dbg !1068
  %125 = add nuw nsw i32 %124, %29, !dbg !1068
  %126 = add nuw nsw i32 %125, %123, !dbg !1068
  %127 = lshr i32 %126, 2
  %128 = trunc i32 %127 to i8, !dbg !1068
  %129 = getelementptr inbounds i8, ptr %0, i64 231, !dbg !1069
  store i8 %128, ptr %129, align 1, !dbg !1070, !tbaa !101
  %130 = getelementptr inbounds i8, ptr %0, i64 198, !dbg !1071
  store i8 %128, ptr %130, align 1, !dbg !1072, !tbaa !101
  %131 = getelementptr inbounds i8, ptr %0, i64 165, !dbg !1073
  store i8 %128, ptr %131, align 1, !dbg !1074, !tbaa !101
  %132 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !1075
  store i8 %128, ptr %132, align 1, !dbg !1076, !tbaa !101
  %133 = getelementptr inbounds i8, ptr %0, i64 99, !dbg !1077
  store i8 %128, ptr %133, align 1, !dbg !1078, !tbaa !101
  %134 = getelementptr inbounds i8, ptr %0, i64 66, !dbg !1079
  store i8 %128, ptr %134, align 1, !dbg !1080, !tbaa !101
  %135 = getelementptr inbounds i8, ptr %0, i64 33, !dbg !1081
  store i8 %128, ptr %135, align 1, !dbg !1082, !tbaa !101
  store i8 %128, ptr %0, align 1, !dbg !1083, !tbaa !101
  %136 = shl nuw nsw i32 %5, 1, !dbg !1084
  %137 = add nuw nsw i32 %8, 2, !dbg !1084
  %138 = add nuw nsw i32 %137, %136, !dbg !1084
  %139 = add nuw nsw i32 %138, %53, !dbg !1084
  %140 = lshr i32 %139, 2
  %141 = trunc i32 %140 to i8, !dbg !1084
  %142 = getelementptr inbounds i8, ptr %0, i64 199, !dbg !1085
  store i8 %141, ptr %142, align 1, !dbg !1086, !tbaa !101
  %143 = getelementptr inbounds i8, ptr %0, i64 166, !dbg !1087
  store i8 %141, ptr %143, align 1, !dbg !1088, !tbaa !101
  %144 = getelementptr inbounds i8, ptr %0, i64 133, !dbg !1089
  store i8 %141, ptr %144, align 1, !dbg !1090, !tbaa !101
  %145 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !1091
  store i8 %141, ptr %145, align 1, !dbg !1092, !tbaa !101
  %146 = getelementptr inbounds i8, ptr %0, i64 67, !dbg !1093
  store i8 %141, ptr %146, align 1, !dbg !1094, !tbaa !101
  %147 = getelementptr inbounds i8, ptr %0, i64 34, !dbg !1095
  store i8 %141, ptr %147, align 1, !dbg !1096, !tbaa !101
  %148 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1097
  store i8 %141, ptr %148, align 1, !dbg !1098, !tbaa !101
  %149 = shl nuw nsw i32 %8, 1, !dbg !1099
  %150 = add nuw nsw i32 %124, %149, !dbg !1099
  %151 = add nuw nsw i32 %150, %11, !dbg !1099
  %152 = lshr i32 %151, 2
  %153 = trunc i32 %152 to i8, !dbg !1099
  %154 = getelementptr inbounds i8, ptr %0, i64 167, !dbg !1100
  store i8 %153, ptr %154, align 1, !dbg !1101, !tbaa !101
  %155 = getelementptr inbounds i8, ptr %0, i64 134, !dbg !1102
  store i8 %153, ptr %155, align 1, !dbg !1103, !tbaa !101
  %156 = getelementptr inbounds i8, ptr %0, i64 101, !dbg !1104
  store i8 %153, ptr %156, align 1, !dbg !1105, !tbaa !101
  %157 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !1106
  store i8 %153, ptr %157, align 1, !dbg !1107, !tbaa !101
  %158 = getelementptr inbounds i8, ptr %0, i64 35, !dbg !1108
  store i8 %153, ptr %158, align 1, !dbg !1109, !tbaa !101
  %159 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1110
  store i8 %153, ptr %159, align 1, !dbg !1111, !tbaa !101
  %160 = shl nuw nsw i32 %11, 1, !dbg !1112
  %161 = add nuw nsw i32 %137, %160, !dbg !1112
  %162 = add nuw nsw i32 %161, %14, !dbg !1112
  %163 = lshr i32 %162, 2
  %164 = trunc i32 %163 to i8, !dbg !1112
  %165 = getelementptr inbounds i8, ptr %0, i64 135, !dbg !1113
  store i8 %164, ptr %165, align 1, !dbg !1114, !tbaa !101
  %166 = getelementptr inbounds i8, ptr %0, i64 102, !dbg !1115
  store i8 %164, ptr %166, align 1, !dbg !1116, !tbaa !101
  %167 = getelementptr inbounds i8, ptr %0, i64 69, !dbg !1117
  store i8 %164, ptr %167, align 1, !dbg !1118, !tbaa !101
  %168 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !1119
  store i8 %164, ptr %168, align 1, !dbg !1120, !tbaa !101
  %169 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1121
  store i8 %164, ptr %169, align 1, !dbg !1122, !tbaa !101
  %170 = shl nuw nsw i32 %14, 1, !dbg !1123
  %171 = add nuw nsw i32 %11, 2, !dbg !1123
  %172 = add nuw nsw i32 %171, %170, !dbg !1123
  %173 = add nuw nsw i32 %172, %17, !dbg !1123
  %174 = lshr i32 %173, 2
  %175 = trunc i32 %174 to i8, !dbg !1123
  %176 = getelementptr inbounds i8, ptr %0, i64 103, !dbg !1124
  store i8 %175, ptr %176, align 1, !dbg !1125, !tbaa !101
  %177 = getelementptr inbounds i8, ptr %0, i64 70, !dbg !1126
  store i8 %175, ptr %177, align 1, !dbg !1127, !tbaa !101
  %178 = getelementptr inbounds i8, ptr %0, i64 37, !dbg !1128
  store i8 %175, ptr %178, align 1, !dbg !1129, !tbaa !101
  %179 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !1130
  store i8 %175, ptr %179, align 1, !dbg !1131, !tbaa !101
  %180 = shl nuw nsw i32 %17, 1, !dbg !1132
  %181 = add nuw nsw i32 %14, 2, !dbg !1132
  %182 = add nuw nsw i32 %181, %180, !dbg !1132
  %183 = add nuw nsw i32 %182, %20, !dbg !1132
  %184 = lshr i32 %183, 2
  %185 = trunc i32 %184 to i8, !dbg !1132
  %186 = getelementptr inbounds i8, ptr %0, i64 71, !dbg !1133
  store i8 %185, ptr %186, align 1, !dbg !1134, !tbaa !101
  %187 = getelementptr inbounds i8, ptr %0, i64 38, !dbg !1135
  store i8 %185, ptr %187, align 1, !dbg !1136, !tbaa !101
  %188 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !1137
  store i8 %185, ptr %188, align 1, !dbg !1138, !tbaa !101
  %189 = shl nuw nsw i32 %20, 1, !dbg !1139
  %190 = add nuw nsw i32 %17, 2, !dbg !1139
  %191 = add nuw nsw i32 %190, %189, !dbg !1139
  %192 = add nuw nsw i32 %191, %23, !dbg !1139
  %193 = lshr i32 %192, 2
  %194 = trunc i32 %193 to i8, !dbg !1139
  %195 = getelementptr inbounds i8, ptr %0, i64 39, !dbg !1140
  store i8 %194, ptr %195, align 1, !dbg !1141, !tbaa !101
  %196 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !1142
  store i8 %194, ptr %196, align 1, !dbg !1143, !tbaa !101
  %197 = shl nuw nsw i32 %23, 1, !dbg !1144
  %198 = add nuw nsw i32 %20, 2, !dbg !1144
  %199 = add nuw nsw i32 %198, %197, !dbg !1144
  %200 = add nuw nsw i32 %199, %26, !dbg !1144
  %201 = lshr i32 %200, 2
  %202 = trunc i32 %201 to i8, !dbg !1144
  %203 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !1145
  store i8 %202, ptr %203, align 1, !dbg !1146, !tbaa !101
  ret void, !dbg !1147
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_vr(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) #7 !dbg !1148 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1150, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata ptr %1, metadata !1151, metadata !DIExpression()), !dbg !1169
  %3 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !1170
  %4 = load i8, ptr %3, align 1, !dbg !1170, !tbaa !101
  %5 = zext i8 %4 to i32, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %5, metadata !1152, metadata !DIExpression()), !dbg !1169
  %6 = getelementptr inbounds i8, ptr %1, i64 17, !dbg !1170
  %7 = load i8, ptr %6, align 1, !dbg !1170, !tbaa !101
  %8 = zext i8 %7 to i32, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %8, metadata !1153, metadata !DIExpression()), !dbg !1169
  %9 = getelementptr inbounds i8, ptr %1, i64 18, !dbg !1170
  %10 = load i8, ptr %9, align 1, !dbg !1170, !tbaa !101
  %11 = zext i8 %10 to i32, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %11, metadata !1154, metadata !DIExpression()), !dbg !1169
  %12 = getelementptr inbounds i8, ptr %1, i64 19, !dbg !1170
  %13 = load i8, ptr %12, align 1, !dbg !1170, !tbaa !101
  %14 = zext i8 %13 to i32, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %14, metadata !1155, metadata !DIExpression()), !dbg !1169
  %15 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !1170
  %16 = load i8, ptr %15, align 1, !dbg !1170, !tbaa !101
  %17 = zext i8 %16 to i32, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %17, metadata !1156, metadata !DIExpression()), !dbg !1169
  %18 = getelementptr inbounds i8, ptr %1, i64 21, !dbg !1170
  %19 = load i8, ptr %18, align 1, !dbg !1170, !tbaa !101
  %20 = zext i8 %19 to i32, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %20, metadata !1157, metadata !DIExpression()), !dbg !1169
  %21 = getelementptr inbounds i8, ptr %1, i64 22, !dbg !1170
  %22 = load i8, ptr %21, align 1, !dbg !1170, !tbaa !101
  %23 = zext i8 %22 to i32, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %23, metadata !1158, metadata !DIExpression()), !dbg !1169
  %24 = getelementptr inbounds i8, ptr %1, i64 23, !dbg !1170
  %25 = load i8, ptr %24, align 1, !dbg !1170, !tbaa !101
  %26 = zext i8 %25 to i32, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %26, metadata !1159, metadata !DIExpression()), !dbg !1169
  %27 = getelementptr inbounds i8, ptr %1, i64 14, !dbg !1171
  %28 = load i8, ptr %27, align 1, !dbg !1171, !tbaa !101
  %29 = zext i8 %28 to i32, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %29, metadata !1160, metadata !DIExpression()), !dbg !1169
  %30 = getelementptr inbounds i8, ptr %1, i64 13, !dbg !1171
  %31 = load i8, ptr %30, align 1, !dbg !1171, !tbaa !101
  %32 = zext i8 %31 to i32, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %32, metadata !1161, metadata !DIExpression()), !dbg !1169
  %33 = getelementptr inbounds i8, ptr %1, i64 12, !dbg !1171
  %34 = load i8, ptr %33, align 1, !dbg !1171, !tbaa !101
  %35 = zext i8 %34 to i32, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %35, metadata !1162, metadata !DIExpression()), !dbg !1169
  %36 = getelementptr inbounds i8, ptr %1, i64 11, !dbg !1171
  %37 = load i8, ptr %36, align 1, !dbg !1171, !tbaa !101
  %38 = zext i8 %37 to i32, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %38, metadata !1163, metadata !DIExpression()), !dbg !1169
  %39 = getelementptr inbounds i8, ptr %1, i64 10, !dbg !1171
  %40 = load i8, ptr %39, align 1, !dbg !1171, !tbaa !101
  %41 = zext i8 %40 to i32, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %41, metadata !1164, metadata !DIExpression()), !dbg !1169
  %42 = getelementptr inbounds i8, ptr %1, i64 9, !dbg !1171
  %43 = load i8, ptr %42, align 1, !dbg !1171, !tbaa !101
  %44 = zext i8 %43 to i32, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %44, metadata !1165, metadata !DIExpression()), !dbg !1169
  %45 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !1171
  %46 = load i8, ptr %45, align 1, !dbg !1171, !tbaa !101
  %47 = zext i8 %46 to i32, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %47, metadata !1166, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i8 poison, metadata !1167, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1169
  %48 = getelementptr inbounds i8, ptr %1, i64 15, !dbg !1172
  %49 = load i8, ptr %48, align 1, !dbg !1172, !tbaa !101
  %50 = zext i8 %49 to i32, !dbg !1172
  call void @llvm.dbg.value(metadata i32 %50, metadata !1168, metadata !DIExpression()), !dbg !1169
  %51 = shl nuw nsw i32 %41, 1, !dbg !1173
  %52 = add nuw nsw i32 %38, 2, !dbg !1173
  %53 = add nuw nsw i32 %52, %44, !dbg !1173
  %54 = add nuw nsw i32 %53, %51, !dbg !1173
  %55 = lshr i32 %54, 2
  %56 = trunc i32 %55 to i8, !dbg !1173
  %57 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !1174
  store i8 %56, ptr %57, align 1, !dbg !1175, !tbaa !101
  %58 = shl nuw nsw i32 %44, 1, !dbg !1176
  %59 = add nuw nsw i32 %41, 2, !dbg !1176
  %60 = add nuw nsw i32 %59, %47, !dbg !1176
  %61 = add nuw nsw i32 %60, %58, !dbg !1176
  %62 = lshr i32 %61, 2
  %63 = trunc i32 %62 to i8, !dbg !1176
  %64 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !1177
  store i8 %63, ptr %64, align 1, !dbg !1178, !tbaa !101
  %65 = shl nuw nsw i32 %35, 1, !dbg !1179
  %66 = add nuw nsw i32 %32, 2, !dbg !1179
  %67 = add nuw nsw i32 %66, %38, !dbg !1179
  %68 = add nuw nsw i32 %67, %65, !dbg !1179
  %69 = lshr i32 %68, 2
  %70 = trunc i32 %69 to i8, !dbg !1179
  %71 = getelementptr inbounds i8, ptr %0, i64 193, !dbg !1180
  store i8 %70, ptr %71, align 1, !dbg !1181, !tbaa !101
  %72 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !1182
  store i8 %70, ptr %72, align 1, !dbg !1183, !tbaa !101
  %73 = shl nuw nsw i32 %38, 1, !dbg !1184
  %74 = add nuw nsw i32 %35, 2, !dbg !1184
  %75 = add nuw nsw i32 %74, %41, !dbg !1184
  %76 = add nuw nsw i32 %75, %73, !dbg !1184
  %77 = lshr i32 %76, 2
  %78 = trunc i32 %77 to i8, !dbg !1184
  %79 = getelementptr inbounds i8, ptr %0, i64 225, !dbg !1185
  store i8 %78, ptr %79, align 1, !dbg !1186, !tbaa !101
  %80 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !1187
  store i8 %78, ptr %80, align 1, !dbg !1188, !tbaa !101
  %81 = shl nuw nsw i32 %29, 1, !dbg !1189
  %82 = add nuw nsw i32 %66, %81, !dbg !1189
  %83 = add nuw nsw i32 %82, %50, !dbg !1189
  %84 = lshr i32 %83, 2
  %85 = trunc i32 %84 to i8, !dbg !1189
  %86 = getelementptr inbounds i8, ptr %0, i64 194, !dbg !1190
  store i8 %85, ptr %86, align 1, !dbg !1191, !tbaa !101
  %87 = getelementptr inbounds i8, ptr %0, i64 129, !dbg !1192
  store i8 %85, ptr %87, align 1, !dbg !1193, !tbaa !101
  %88 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !1194
  store i8 %85, ptr %88, align 1, !dbg !1195, !tbaa !101
  %89 = shl nuw nsw i32 %32, 1, !dbg !1196
  %90 = add nuw nsw i32 %29, 2, !dbg !1196
  %91 = add nuw nsw i32 %90, %35, !dbg !1196
  %92 = add nuw nsw i32 %91, %89, !dbg !1196
  %93 = lshr i32 %92, 2
  %94 = trunc i32 %93 to i8, !dbg !1196
  %95 = getelementptr inbounds i8, ptr %0, i64 226, !dbg !1197
  store i8 %94, ptr %95, align 1, !dbg !1198, !tbaa !101
  %96 = getelementptr inbounds i8, ptr %0, i64 161, !dbg !1199
  store i8 %94, ptr %96, align 1, !dbg !1200, !tbaa !101
  %97 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !1201
  store i8 %94, ptr %97, align 1, !dbg !1202, !tbaa !101
  %98 = shl nuw nsw i32 %50, 1, !dbg !1203
  %99 = add nuw nsw i32 %5, 2, !dbg !1203
  %100 = add nuw nsw i32 %99, %29, !dbg !1203
  %101 = add nuw nsw i32 %100, %98, !dbg !1203
  %102 = lshr i32 %101, 2
  %103 = trunc i32 %102 to i8, !dbg !1203
  %104 = getelementptr inbounds i8, ptr %0, i64 227, !dbg !1204
  store i8 %103, ptr %104, align 1, !dbg !1205, !tbaa !101
  %105 = getelementptr inbounds i8, ptr %0, i64 162, !dbg !1206
  store i8 %103, ptr %105, align 1, !dbg !1207, !tbaa !101
  %106 = getelementptr inbounds i8, ptr %0, i64 97, !dbg !1208
  store i8 %103, ptr %106, align 1, !dbg !1209, !tbaa !101
  %107 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !1210
  store i8 %103, ptr %107, align 1, !dbg !1211, !tbaa !101
  %108 = add nuw nsw i32 %5, 1, !dbg !1212
  %109 = add nuw nsw i32 %108, %50, !dbg !1212
  %110 = lshr i32 %109, 1
  %111 = trunc i32 %110 to i8, !dbg !1212
  %112 = getelementptr inbounds i8, ptr %0, i64 195, !dbg !1213
  store i8 %111, ptr %112, align 1, !dbg !1214, !tbaa !101
  %113 = getelementptr inbounds i8, ptr %0, i64 130, !dbg !1215
  store i8 %111, ptr %113, align 1, !dbg !1216, !tbaa !101
  %114 = getelementptr inbounds i8, ptr %0, i64 65, !dbg !1217
  store i8 %111, ptr %114, align 1, !dbg !1218, !tbaa !101
  store i8 %111, ptr %0, align 1, !dbg !1219, !tbaa !101
  %115 = shl nuw nsw i32 %5, 1, !dbg !1220
  %116 = add nuw nsw i32 %8, 2, !dbg !1220
  %117 = add nuw nsw i32 %116, %115, !dbg !1220
  %118 = add nuw nsw i32 %117, %50, !dbg !1220
  %119 = lshr i32 %118, 2
  %120 = trunc i32 %119 to i8, !dbg !1220
  %121 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !1221
  store i8 %120, ptr %121, align 1, !dbg !1222, !tbaa !101
  %122 = getelementptr inbounds i8, ptr %0, i64 163, !dbg !1223
  store i8 %120, ptr %122, align 1, !dbg !1224, !tbaa !101
  %123 = getelementptr inbounds i8, ptr %0, i64 98, !dbg !1225
  store i8 %120, ptr %123, align 1, !dbg !1226, !tbaa !101
  %124 = getelementptr inbounds i8, ptr %0, i64 33, !dbg !1227
  store i8 %120, ptr %124, align 1, !dbg !1228, !tbaa !101
  %125 = add nuw nsw i32 %108, %8, !dbg !1229
  %126 = lshr i32 %125, 1
  %127 = trunc i32 %126 to i8, !dbg !1229
  %128 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !1230
  store i8 %127, ptr %128, align 1, !dbg !1231, !tbaa !101
  %129 = getelementptr inbounds i8, ptr %0, i64 131, !dbg !1232
  store i8 %127, ptr %129, align 1, !dbg !1233, !tbaa !101
  %130 = getelementptr inbounds i8, ptr %0, i64 66, !dbg !1234
  store i8 %127, ptr %130, align 1, !dbg !1235, !tbaa !101
  %131 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1236
  store i8 %127, ptr %131, align 1, !dbg !1237, !tbaa !101
  %132 = shl nuw nsw i32 %8, 1, !dbg !1238
  %133 = add nuw nsw i32 %99, %132, !dbg !1238
  %134 = add nuw nsw i32 %133, %11, !dbg !1238
  %135 = lshr i32 %134, 2
  %136 = trunc i32 %135 to i8, !dbg !1238
  %137 = getelementptr inbounds i8, ptr %0, i64 229, !dbg !1239
  store i8 %136, ptr %137, align 1, !dbg !1240, !tbaa !101
  %138 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !1241
  store i8 %136, ptr %138, align 1, !dbg !1242, !tbaa !101
  %139 = getelementptr inbounds i8, ptr %0, i64 99, !dbg !1243
  store i8 %136, ptr %139, align 1, !dbg !1244, !tbaa !101
  %140 = getelementptr inbounds i8, ptr %0, i64 34, !dbg !1245
  store i8 %136, ptr %140, align 1, !dbg !1246, !tbaa !101
  %141 = add nuw nsw i32 %8, 1, !dbg !1247
  %142 = add nuw nsw i32 %141, %11, !dbg !1247
  %143 = lshr i32 %142, 1
  %144 = trunc i32 %143 to i8, !dbg !1247
  %145 = getelementptr inbounds i8, ptr %0, i64 197, !dbg !1248
  store i8 %144, ptr %145, align 1, !dbg !1249, !tbaa !101
  %146 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !1250
  store i8 %144, ptr %146, align 1, !dbg !1251, !tbaa !101
  %147 = getelementptr inbounds i8, ptr %0, i64 67, !dbg !1252
  store i8 %144, ptr %147, align 1, !dbg !1253, !tbaa !101
  %148 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1254
  store i8 %144, ptr %148, align 1, !dbg !1255, !tbaa !101
  %149 = shl nuw nsw i32 %11, 1, !dbg !1256
  %150 = add nuw nsw i32 %116, %149, !dbg !1256
  %151 = add nuw nsw i32 %150, %14, !dbg !1256
  %152 = lshr i32 %151, 2
  %153 = trunc i32 %152 to i8, !dbg !1256
  %154 = getelementptr inbounds i8, ptr %0, i64 230, !dbg !1257
  store i8 %153, ptr %154, align 1, !dbg !1258, !tbaa !101
  %155 = getelementptr inbounds i8, ptr %0, i64 165, !dbg !1259
  store i8 %153, ptr %155, align 1, !dbg !1260, !tbaa !101
  %156 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !1261
  store i8 %153, ptr %156, align 1, !dbg !1262, !tbaa !101
  %157 = getelementptr inbounds i8, ptr %0, i64 35, !dbg !1263
  store i8 %153, ptr %157, align 1, !dbg !1264, !tbaa !101
  %158 = add nuw nsw i32 %11, 1, !dbg !1265
  %159 = add nuw nsw i32 %158, %14, !dbg !1265
  %160 = lshr i32 %159, 1
  %161 = trunc i32 %160 to i8, !dbg !1265
  %162 = getelementptr inbounds i8, ptr %0, i64 198, !dbg !1266
  store i8 %161, ptr %162, align 1, !dbg !1267, !tbaa !101
  %163 = getelementptr inbounds i8, ptr %0, i64 133, !dbg !1268
  store i8 %161, ptr %163, align 1, !dbg !1269, !tbaa !101
  %164 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !1270
  store i8 %161, ptr %164, align 1, !dbg !1271, !tbaa !101
  %165 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1272
  store i8 %161, ptr %165, align 1, !dbg !1273, !tbaa !101
  %166 = shl nuw nsw i32 %14, 1, !dbg !1274
  %167 = add nuw nsw i32 %11, 2, !dbg !1274
  %168 = add nuw nsw i32 %167, %166, !dbg !1274
  %169 = add nuw nsw i32 %168, %17, !dbg !1274
  %170 = lshr i32 %169, 2
  %171 = trunc i32 %170 to i8, !dbg !1274
  %172 = getelementptr inbounds i8, ptr %0, i64 231, !dbg !1275
  store i8 %171, ptr %172, align 1, !dbg !1276, !tbaa !101
  %173 = getelementptr inbounds i8, ptr %0, i64 166, !dbg !1277
  store i8 %171, ptr %173, align 1, !dbg !1278, !tbaa !101
  %174 = getelementptr inbounds i8, ptr %0, i64 101, !dbg !1279
  store i8 %171, ptr %174, align 1, !dbg !1280, !tbaa !101
  %175 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !1281
  store i8 %171, ptr %175, align 1, !dbg !1282, !tbaa !101
  %176 = add nuw nsw i32 %14, 1, !dbg !1283
  %177 = add nuw nsw i32 %176, %17, !dbg !1283
  %178 = lshr i32 %177, 1
  %179 = trunc i32 %178 to i8, !dbg !1283
  %180 = getelementptr inbounds i8, ptr %0, i64 199, !dbg !1284
  store i8 %179, ptr %180, align 1, !dbg !1285, !tbaa !101
  %181 = getelementptr inbounds i8, ptr %0, i64 134, !dbg !1286
  store i8 %179, ptr %181, align 1, !dbg !1287, !tbaa !101
  %182 = getelementptr inbounds i8, ptr %0, i64 69, !dbg !1288
  store i8 %179, ptr %182, align 1, !dbg !1289, !tbaa !101
  %183 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !1290
  store i8 %179, ptr %183, align 1, !dbg !1291, !tbaa !101
  %184 = shl nuw nsw i32 %17, 1, !dbg !1292
  %185 = add nuw nsw i32 %14, 2, !dbg !1292
  %186 = add nuw nsw i32 %185, %184, !dbg !1292
  %187 = add nuw nsw i32 %186, %20, !dbg !1292
  %188 = lshr i32 %187, 2
  %189 = trunc i32 %188 to i8, !dbg !1292
  %190 = getelementptr inbounds i8, ptr %0, i64 167, !dbg !1293
  store i8 %189, ptr %190, align 1, !dbg !1294, !tbaa !101
  %191 = getelementptr inbounds i8, ptr %0, i64 102, !dbg !1295
  store i8 %189, ptr %191, align 1, !dbg !1296, !tbaa !101
  %192 = getelementptr inbounds i8, ptr %0, i64 37, !dbg !1297
  store i8 %189, ptr %192, align 1, !dbg !1298, !tbaa !101
  %193 = add nuw nsw i32 %17, 1, !dbg !1299
  %194 = add nuw nsw i32 %193, %20, !dbg !1299
  %195 = lshr i32 %194, 1
  %196 = trunc i32 %195 to i8, !dbg !1299
  %197 = getelementptr inbounds i8, ptr %0, i64 135, !dbg !1300
  store i8 %196, ptr %197, align 1, !dbg !1301, !tbaa !101
  %198 = getelementptr inbounds i8, ptr %0, i64 70, !dbg !1302
  store i8 %196, ptr %198, align 1, !dbg !1303, !tbaa !101
  %199 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !1304
  store i8 %196, ptr %199, align 1, !dbg !1305, !tbaa !101
  %200 = shl nuw nsw i32 %20, 1, !dbg !1306
  %201 = add nuw nsw i32 %17, 2, !dbg !1306
  %202 = add nuw nsw i32 %201, %200, !dbg !1306
  %203 = add nuw nsw i32 %202, %23, !dbg !1306
  %204 = lshr i32 %203, 2
  %205 = trunc i32 %204 to i8, !dbg !1306
  %206 = getelementptr inbounds i8, ptr %0, i64 103, !dbg !1307
  store i8 %205, ptr %206, align 1, !dbg !1308, !tbaa !101
  %207 = getelementptr inbounds i8, ptr %0, i64 38, !dbg !1309
  store i8 %205, ptr %207, align 1, !dbg !1310, !tbaa !101
  %208 = add nuw nsw i32 %20, 1, !dbg !1311
  %209 = add nuw nsw i32 %208, %23, !dbg !1311
  %210 = lshr i32 %209, 1
  %211 = trunc i32 %210 to i8, !dbg !1311
  %212 = getelementptr inbounds i8, ptr %0, i64 71, !dbg !1312
  store i8 %211, ptr %212, align 1, !dbg !1313, !tbaa !101
  %213 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !1314
  store i8 %211, ptr %213, align 1, !dbg !1315, !tbaa !101
  %214 = shl nuw nsw i32 %23, 1, !dbg !1316
  %215 = add nuw nsw i32 %20, 2, !dbg !1316
  %216 = add nuw nsw i32 %215, %214, !dbg !1316
  %217 = add nuw nsw i32 %216, %26, !dbg !1316
  %218 = lshr i32 %217, 2
  %219 = trunc i32 %218 to i8, !dbg !1316
  %220 = getelementptr inbounds i8, ptr %0, i64 39, !dbg !1317
  store i8 %219, ptr %220, align 1, !dbg !1318, !tbaa !101
  %221 = add nuw nsw i32 %23, 1, !dbg !1319
  %222 = add nuw nsw i32 %221, %26, !dbg !1319
  %223 = lshr i32 %222, 1
  %224 = trunc i32 %223 to i8, !dbg !1319
  %225 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !1320
  store i8 %224, ptr %225, align 1, !dbg !1321, !tbaa !101
  ret void, !dbg !1322
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_hd(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #7 !dbg !1323 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1325, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr %1, metadata !1326, metadata !DIExpression()), !dbg !1355
  %3 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !1356
  %4 = load i8, ptr %3, align 1, !dbg !1356, !tbaa !101
  %5 = zext i8 %4 to i32, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %5, metadata !1327, metadata !DIExpression()), !dbg !1355
  %6 = getelementptr inbounds i8, ptr %1, i64 17, !dbg !1356
  %7 = load i8, ptr %6, align 1, !dbg !1356, !tbaa !101
  %8 = zext i8 %7 to i32, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %8, metadata !1328, metadata !DIExpression()), !dbg !1355
  %9 = getelementptr inbounds i8, ptr %1, i64 18, !dbg !1356
  %10 = load i8, ptr %9, align 1, !dbg !1356, !tbaa !101
  %11 = zext i8 %10 to i32, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %11, metadata !1329, metadata !DIExpression()), !dbg !1355
  %12 = getelementptr inbounds i8, ptr %1, i64 19, !dbg !1356
  %13 = load i8, ptr %12, align 1, !dbg !1356, !tbaa !101
  %14 = zext i8 %13 to i32, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %14, metadata !1330, metadata !DIExpression()), !dbg !1355
  %15 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !1356
  %16 = load i8, ptr %15, align 1, !dbg !1356, !tbaa !101
  %17 = zext i8 %16 to i32, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %17, metadata !1331, metadata !DIExpression()), !dbg !1355
  %18 = getelementptr inbounds i8, ptr %1, i64 21, !dbg !1356
  %19 = load i8, ptr %18, align 1, !dbg !1356, !tbaa !101
  %20 = zext i8 %19 to i32, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %20, metadata !1332, metadata !DIExpression()), !dbg !1355
  %21 = getelementptr inbounds i8, ptr %1, i64 22, !dbg !1356
  %22 = load i8, ptr %21, align 1, !dbg !1356, !tbaa !101
  %23 = zext i8 %22 to i32, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %23, metadata !1333, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8 poison, metadata !1334, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1355
  %24 = getelementptr inbounds i8, ptr %1, i64 14, !dbg !1357
  %25 = load i8, ptr %24, align 1, !dbg !1357, !tbaa !101
  %26 = zext i8 %25 to i32, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %26, metadata !1335, metadata !DIExpression()), !dbg !1355
  %27 = getelementptr inbounds i8, ptr %1, i64 13, !dbg !1357
  %28 = load i8, ptr %27, align 1, !dbg !1357, !tbaa !101
  %29 = zext i8 %28 to i32, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %29, metadata !1336, metadata !DIExpression()), !dbg !1355
  %30 = getelementptr inbounds i8, ptr %1, i64 12, !dbg !1357
  %31 = load i8, ptr %30, align 1, !dbg !1357, !tbaa !101
  %32 = zext i8 %31 to i32, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %32, metadata !1337, metadata !DIExpression()), !dbg !1355
  %33 = getelementptr inbounds i8, ptr %1, i64 11, !dbg !1357
  %34 = load i8, ptr %33, align 1, !dbg !1357, !tbaa !101
  %35 = zext i8 %34 to i32, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %35, metadata !1338, metadata !DIExpression()), !dbg !1355
  %36 = getelementptr inbounds i8, ptr %1, i64 10, !dbg !1357
  %37 = load i8, ptr %36, align 1, !dbg !1357, !tbaa !101
  %38 = zext i8 %37 to i32, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %38, metadata !1339, metadata !DIExpression()), !dbg !1355
  %39 = getelementptr inbounds i8, ptr %1, i64 9, !dbg !1357
  %40 = load i8, ptr %39, align 1, !dbg !1357, !tbaa !101
  %41 = zext i8 %40 to i32, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %41, metadata !1340, metadata !DIExpression()), !dbg !1355
  %42 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !1357
  %43 = load i8, ptr %42, align 1, !dbg !1357, !tbaa !101
  %44 = zext i8 %43 to i32, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %44, metadata !1341, metadata !DIExpression()), !dbg !1355
  %45 = getelementptr inbounds i8, ptr %1, i64 7, !dbg !1357
  %46 = load i8, ptr %45, align 1, !dbg !1357, !tbaa !101
  %47 = zext i8 %46 to i32, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %47, metadata !1342, metadata !DIExpression()), !dbg !1355
  %48 = getelementptr inbounds i8, ptr %1, i64 15, !dbg !1358
  %49 = load i8, ptr %48, align 1, !dbg !1358, !tbaa !101
  %50 = zext i8 %49 to i32, !dbg !1358
  call void @llvm.dbg.value(metadata i32 %50, metadata !1343, metadata !DIExpression()), !dbg !1355
  %51 = add nuw nsw i32 %44, 1, !dbg !1359
  %52 = add nuw nsw i32 %51, %47, !dbg !1359
  %53 = lshr i32 %52, 1
  %54 = shl nuw nsw i32 %44, 1, !dbg !1360
  %55 = add nuw nsw i32 %54, %41, !dbg !1360
  %56 = add nuw nsw i32 %55, %47, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %53, metadata !1361, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32 %56, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1367
  %57 = shl nuw nsw i32 %56, 6, !dbg !1369
  %58 = add nuw nsw i32 %57, 128, !dbg !1369
  %59 = and i32 %58, -256, !dbg !1369
  %60 = add nuw nsw i32 %59, %53, !dbg !1370
  call void @llvm.dbg.value(metadata i32 %60, metadata !1344, metadata !DIExpression()), !dbg !1355
  %61 = add nuw nsw i32 %41, 1, !dbg !1371
  %62 = add nuw nsw i32 %61, %44, !dbg !1371
  %63 = lshr i32 %62, 1
  %64 = shl nuw nsw i32 %41, 1, !dbg !1372
  %65 = add nuw nsw i32 %64, %38, !dbg !1372
  %66 = add nuw nsw i32 %65, %44, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %63, metadata !1361, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 %66, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1373
  %67 = shl nuw nsw i32 %66, 6, !dbg !1375
  %68 = add nuw nsw i32 %67, 128, !dbg !1375
  %69 = and i32 %68, -256, !dbg !1375
  %70 = add nuw nsw i32 %69, %63, !dbg !1376
  call void @llvm.dbg.value(metadata i32 %70, metadata !1345, metadata !DIExpression()), !dbg !1355
  %71 = add nuw nsw i32 %38, 1, !dbg !1377
  %72 = add nuw nsw i32 %71, %41, !dbg !1377
  %73 = lshr i32 %72, 1
  %74 = shl nuw nsw i32 %38, 1, !dbg !1378
  %75 = add nuw nsw i32 %74, %35, !dbg !1378
  %76 = add nuw nsw i32 %75, %41, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %73, metadata !1361, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i32 %76, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1379
  %77 = shl nuw nsw i32 %76, 6, !dbg !1381
  %78 = add nuw nsw i32 %77, 128, !dbg !1381
  %79 = and i32 %78, -256, !dbg !1381
  %80 = add nuw nsw i32 %79, %73, !dbg !1382
  call void @llvm.dbg.value(metadata i32 %80, metadata !1346, metadata !DIExpression()), !dbg !1355
  %81 = add nuw nsw i32 %35, 1, !dbg !1383
  %82 = add nuw nsw i32 %81, %38, !dbg !1383
  %83 = lshr i32 %82, 1
  %84 = shl nuw nsw i32 %35, 1, !dbg !1384
  %85 = add nuw nsw i32 %84, %32, !dbg !1384
  %86 = add nuw nsw i32 %85, %38, !dbg !1384
  call void @llvm.dbg.value(metadata i32 %83, metadata !1361, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 %86, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1385
  %87 = shl nuw nsw i32 %86, 6, !dbg !1387
  %88 = add nuw nsw i32 %87, 128, !dbg !1387
  %89 = and i32 %88, -256, !dbg !1387
  %90 = add nuw nsw i32 %89, %83, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %90, metadata !1347, metadata !DIExpression()), !dbg !1355
  %91 = add nuw nsw i32 %32, 1, !dbg !1389
  %92 = add nuw nsw i32 %91, %35, !dbg !1389
  %93 = lshr i32 %92, 1
  %94 = shl nuw nsw i32 %32, 1, !dbg !1390
  %95 = add nuw nsw i32 %94, %29, !dbg !1390
  %96 = add nuw nsw i32 %95, %35, !dbg !1390
  call void @llvm.dbg.value(metadata i32 %93, metadata !1361, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i32 %96, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1391
  %97 = shl nuw nsw i32 %96, 6, !dbg !1393
  %98 = add nuw nsw i32 %97, 128, !dbg !1393
  %99 = and i32 %98, -256, !dbg !1393
  %100 = add nuw nsw i32 %99, %93, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %100, metadata !1348, metadata !DIExpression()), !dbg !1355
  %101 = add nuw nsw i32 %29, 1, !dbg !1395
  %102 = add nuw nsw i32 %101, %32, !dbg !1395
  %103 = lshr i32 %102, 1
  %104 = shl nuw nsw i32 %29, 1, !dbg !1396
  %105 = add nuw nsw i32 %104, %26, !dbg !1396
  %106 = add nuw nsw i32 %105, %32, !dbg !1396
  call void @llvm.dbg.value(metadata i32 %103, metadata !1361, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %106, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1397
  %107 = shl nuw nsw i32 %106, 6, !dbg !1399
  %108 = add nuw nsw i32 %107, 128, !dbg !1399
  %109 = and i32 %108, -256, !dbg !1399
  %110 = add nuw nsw i32 %109, %103, !dbg !1400
  call void @llvm.dbg.value(metadata i32 %110, metadata !1349, metadata !DIExpression()), !dbg !1355
  %111 = add nuw nsw i32 %26, 1, !dbg !1401
  %112 = add nuw nsw i32 %111, %29, !dbg !1401
  %113 = lshr i32 %112, 1
  %114 = shl nuw nsw i32 %26, 1, !dbg !1402
  %115 = add nuw nsw i32 %114, %29, !dbg !1402
  %116 = add nuw nsw i32 %115, %50, !dbg !1402
  call void @llvm.dbg.value(metadata i32 %113, metadata !1361, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i32 %116, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1403
  %117 = shl nuw nsw i32 %116, 6, !dbg !1405
  %118 = add nuw nsw i32 %117, 128, !dbg !1405
  %119 = and i32 %118, -256, !dbg !1405
  %120 = add nuw nsw i32 %119, %113, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %120, metadata !1350, metadata !DIExpression()), !dbg !1355
  %121 = add nuw nsw i32 %111, %50, !dbg !1407
  %122 = lshr i32 %121, 1
  %123 = shl nuw nsw i32 %50, 1, !dbg !1408
  %124 = add nuw nsw i32 %26, %5, !dbg !1408
  %125 = add nuw nsw i32 %124, %123, !dbg !1408
  call void @llvm.dbg.value(metadata i32 %122, metadata !1361, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i32 %125, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1409
  %126 = shl nuw nsw i32 %125, 6, !dbg !1411
  %127 = add nuw nsw i32 %126, 128, !dbg !1411
  %128 = and i32 %127, 130816, !dbg !1411
  %129 = add nuw nsw i32 %128, %122, !dbg !1412
  call void @llvm.dbg.value(metadata i32 %129, metadata !1351, metadata !DIExpression()), !dbg !1355
  %130 = shl nuw nsw i32 %5, 1, !dbg !1413
  %131 = add nuw nsw i32 %8, 2, !dbg !1413
  %132 = add nuw nsw i32 %131, %130, !dbg !1413
  %133 = add nuw nsw i32 %132, %50, !dbg !1413
  %134 = lshr i32 %133, 2
  %135 = shl nuw nsw i32 %8, 1, !dbg !1414
  %136 = add nuw nsw i32 %11, %5, !dbg !1414
  %137 = add nuw nsw i32 %136, %135, !dbg !1414
  call void @llvm.dbg.value(metadata i32 %134, metadata !1361, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %137, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1415
  %138 = shl nuw nsw i32 %137, 6, !dbg !1417
  %139 = add nuw nsw i32 %138, 128, !dbg !1417
  %140 = and i32 %139, 130816, !dbg !1417
  %141 = add nuw nsw i32 %134, %140, !dbg !1418
  call void @llvm.dbg.value(metadata i32 %141, metadata !1352, metadata !DIExpression()), !dbg !1355
  %142 = shl nuw nsw i32 %11, 1, !dbg !1419
  %143 = add nuw nsw i32 %131, %14, !dbg !1419
  %144 = add nuw nsw i32 %143, %142, !dbg !1419
  %145 = lshr i32 %144, 2
  %146 = shl nuw nsw i32 %14, 1, !dbg !1420
  %147 = add nuw nsw i32 %17, %11, !dbg !1420
  %148 = add nuw nsw i32 %147, %146, !dbg !1420
  call void @llvm.dbg.value(metadata i32 %145, metadata !1361, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 %148, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1421
  %149 = shl nuw nsw i32 %148, 6, !dbg !1423
  %150 = add nuw nsw i32 %149, 128, !dbg !1423
  %151 = and i32 %150, 130816, !dbg !1423
  %152 = add nuw nsw i32 %151, %145, !dbg !1424
  call void @llvm.dbg.value(metadata i32 %152, metadata !1353, metadata !DIExpression()), !dbg !1355
  %153 = shl nuw nsw i32 %17, 1, !dbg !1425
  %154 = add nuw nsw i32 %14, 2, !dbg !1425
  %155 = add nuw nsw i32 %154, %20, !dbg !1425
  %156 = add nuw nsw i32 %155, %153, !dbg !1425
  %157 = lshr i32 %156, 2
  %158 = shl nuw nsw i32 %20, 1, !dbg !1426
  %159 = add nuw nsw i32 %23, %17, !dbg !1426
  %160 = add nuw nsw i32 %159, %158, !dbg !1426
  call void @llvm.dbg.value(metadata i32 %157, metadata !1361, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i32 %160, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1427
  %161 = shl nuw nsw i32 %160, 6, !dbg !1429
  %162 = add nuw nsw i32 %161, 128, !dbg !1429
  %163 = and i32 %162, 130816, !dbg !1429
  %164 = add nuw nsw i32 %163, %157, !dbg !1430
  call void @llvm.dbg.value(metadata i32 %164, metadata !1354, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i32 %60, metadata !1431, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %70, metadata !1434, metadata !DIExpression()), !dbg !1435
  %165 = shl nuw i32 %70, 16, !dbg !1437
  %166 = add nuw nsw i32 %60, %165, !dbg !1438
  %167 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !1439
  store i32 %166, ptr %167, align 4, !dbg !1440, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %70, metadata !1431, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i32 %80, metadata !1434, metadata !DIExpression()), !dbg !1441
  %168 = shl nuw i32 %80, 16, !dbg !1443
  %169 = add nuw nsw i32 %168, %70, !dbg !1444
  %170 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !1445
  store i32 %169, ptr %170, align 4, !dbg !1446, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %80, metadata !1431, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i32 %90, metadata !1434, metadata !DIExpression()), !dbg !1447
  %171 = shl nuw i32 %90, 16, !dbg !1449
  %172 = add nuw nsw i32 %171, %80, !dbg !1450
  %173 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !1451
  store i32 %172, ptr %173, align 4, !dbg !1452, !tbaa !248
  %174 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !1453
  store i32 %172, ptr %174, align 4, !dbg !1454, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %90, metadata !1431, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i32 %100, metadata !1434, metadata !DIExpression()), !dbg !1455
  %175 = shl nuw i32 %100, 16, !dbg !1457
  %176 = add nuw nsw i32 %175, %90, !dbg !1458
  %177 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !1459
  store i32 %176, ptr %177, align 4, !dbg !1460, !tbaa !248
  %178 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !1461
  store i32 %176, ptr %178, align 4, !dbg !1462, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %100, metadata !1431, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i32 %110, metadata !1434, metadata !DIExpression()), !dbg !1463
  %179 = shl nuw i32 %110, 16, !dbg !1465
  %180 = add nuw nsw i32 %179, %100, !dbg !1466
  %181 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !1467
  store i32 %180, ptr %181, align 4, !dbg !1468, !tbaa !248
  %182 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !1469
  store i32 %180, ptr %182, align 4, !dbg !1470, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %110, metadata !1431, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %120, metadata !1434, metadata !DIExpression()), !dbg !1471
  %183 = shl nuw i32 %120, 16, !dbg !1473
  %184 = add nuw nsw i32 %183, %110, !dbg !1474
  %185 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !1475
  store i32 %184, ptr %185, align 4, !dbg !1476, !tbaa !248
  %186 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !1477
  store i32 %184, ptr %186, align 4, !dbg !1478, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %120, metadata !1431, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i32 %129, metadata !1434, metadata !DIExpression()), !dbg !1479
  %187 = shl nuw i32 %129, 16, !dbg !1481
  %188 = add nuw nsw i32 %187, %120, !dbg !1482
  %189 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !1483
  store i32 %188, ptr %189, align 4, !dbg !1484, !tbaa !248
  %190 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !1485
  store i32 %188, ptr %190, align 4, !dbg !1486, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %129, metadata !1431, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i32 %141, metadata !1434, metadata !DIExpression()), !dbg !1487
  %191 = shl nuw i32 %141, 16, !dbg !1489
  %192 = add nuw nsw i32 %129, %191, !dbg !1490
  store i32 %192, ptr %0, align 4, !dbg !1491, !tbaa !248
  %193 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !1492
  store i32 %192, ptr %193, align 4, !dbg !1493, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %141, metadata !1431, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i32 %152, metadata !1434, metadata !DIExpression()), !dbg !1494
  %194 = shl nuw i32 %152, 16, !dbg !1496
  %195 = add nuw nsw i32 %141, %194, !dbg !1497
  %196 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !1498
  store i32 %195, ptr %196, align 4, !dbg !1499, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %152, metadata !1431, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i32 %164, metadata !1434, metadata !DIExpression()), !dbg !1500
  %197 = shl nuw i32 %164, 16, !dbg !1502
  %198 = add nuw nsw i32 %197, %152, !dbg !1503
  %199 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !1504
  store i32 %198, ptr %199, align 4, !dbg !1505, !tbaa !248
  ret void, !dbg !1506
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_vl(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) #7 !dbg !1507 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1509, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %1, metadata !1510, metadata !DIExpression()), !dbg !1527
  %3 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !1528
  %4 = load i8, ptr %3, align 1, !dbg !1528, !tbaa !101
  %5 = zext i8 %4 to i32, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %5, metadata !1511, metadata !DIExpression()), !dbg !1527
  %6 = getelementptr inbounds i8, ptr %1, i64 17, !dbg !1528
  %7 = load i8, ptr %6, align 1, !dbg !1528, !tbaa !101
  %8 = zext i8 %7 to i32, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %8, metadata !1512, metadata !DIExpression()), !dbg !1527
  %9 = getelementptr inbounds i8, ptr %1, i64 18, !dbg !1528
  %10 = load i8, ptr %9, align 1, !dbg !1528, !tbaa !101
  %11 = zext i8 %10 to i32, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %11, metadata !1513, metadata !DIExpression()), !dbg !1527
  %12 = getelementptr inbounds i8, ptr %1, i64 19, !dbg !1528
  %13 = load i8, ptr %12, align 1, !dbg !1528, !tbaa !101
  %14 = zext i8 %13 to i32, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %14, metadata !1514, metadata !DIExpression()), !dbg !1527
  %15 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !1528
  %16 = load i8, ptr %15, align 1, !dbg !1528, !tbaa !101
  %17 = zext i8 %16 to i32, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %17, metadata !1515, metadata !DIExpression()), !dbg !1527
  %18 = getelementptr inbounds i8, ptr %1, i64 21, !dbg !1528
  %19 = load i8, ptr %18, align 1, !dbg !1528, !tbaa !101
  %20 = zext i8 %19 to i32, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %20, metadata !1516, metadata !DIExpression()), !dbg !1527
  %21 = getelementptr inbounds i8, ptr %1, i64 22, !dbg !1528
  %22 = load i8, ptr %21, align 1, !dbg !1528, !tbaa !101
  %23 = zext i8 %22 to i32, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %23, metadata !1517, metadata !DIExpression()), !dbg !1527
  %24 = getelementptr inbounds i8, ptr %1, i64 23, !dbg !1528
  %25 = load i8, ptr %24, align 1, !dbg !1528, !tbaa !101
  %26 = zext i8 %25 to i32, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %26, metadata !1518, metadata !DIExpression()), !dbg !1527
  %27 = getelementptr inbounds i8, ptr %1, i64 24, !dbg !1529
  %28 = load i8, ptr %27, align 1, !dbg !1529, !tbaa !101
  %29 = zext i8 %28 to i32, !dbg !1529
  call void @llvm.dbg.value(metadata i32 %29, metadata !1519, metadata !DIExpression()), !dbg !1527
  %30 = getelementptr inbounds i8, ptr %1, i64 25, !dbg !1529
  %31 = load i8, ptr %30, align 1, !dbg !1529, !tbaa !101
  %32 = zext i8 %31 to i32, !dbg !1529
  call void @llvm.dbg.value(metadata i32 %32, metadata !1520, metadata !DIExpression()), !dbg !1527
  %33 = getelementptr inbounds i8, ptr %1, i64 26, !dbg !1529
  %34 = load i8, ptr %33, align 1, !dbg !1529, !tbaa !101
  %35 = zext i8 %34 to i32, !dbg !1529
  call void @llvm.dbg.value(metadata i32 %35, metadata !1521, metadata !DIExpression()), !dbg !1527
  %36 = getelementptr inbounds i8, ptr %1, i64 27, !dbg !1529
  %37 = load i8, ptr %36, align 1, !dbg !1529, !tbaa !101
  %38 = zext i8 %37 to i32, !dbg !1529
  call void @llvm.dbg.value(metadata i32 %38, metadata !1522, metadata !DIExpression()), !dbg !1527
  %39 = getelementptr inbounds i8, ptr %1, i64 28, !dbg !1529
  %40 = load i8, ptr %39, align 1, !dbg !1529, !tbaa !101
  %41 = zext i8 %40 to i32, !dbg !1529
  call void @llvm.dbg.value(metadata i32 %41, metadata !1523, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1524, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1525, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1526, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1527
  %42 = add nuw nsw i32 %8, 1, !dbg !1530
  %43 = add nuw nsw i32 %42, %5, !dbg !1530
  %44 = lshr i32 %43, 1
  %45 = trunc i32 %44 to i8, !dbg !1530
  store i8 %45, ptr %0, align 1, !dbg !1531, !tbaa !101
  %46 = shl nuw nsw i32 %8, 1, !dbg !1532
  %47 = add nuw nsw i32 %11, 2, !dbg !1532
  %48 = add nuw nsw i32 %47, %5, !dbg !1532
  %49 = add nuw nsw i32 %48, %46, !dbg !1532
  %50 = lshr i32 %49, 2
  %51 = trunc i32 %50 to i8, !dbg !1532
  %52 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !1533
  store i8 %51, ptr %52, align 1, !dbg !1534, !tbaa !101
  %53 = add nuw nsw i32 %42, %11, !dbg !1535
  %54 = lshr i32 %53, 1
  %55 = trunc i32 %54 to i8, !dbg !1535
  %56 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1536
  store i8 %55, ptr %56, align 1, !dbg !1537, !tbaa !101
  %57 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !1538
  store i8 %55, ptr %57, align 1, !dbg !1539, !tbaa !101
  %58 = shl nuw nsw i32 %11, 1, !dbg !1540
  %59 = add nuw nsw i32 %14, 2, !dbg !1540
  %60 = add nuw nsw i32 %59, %8, !dbg !1540
  %61 = add nuw nsw i32 %60, %58, !dbg !1540
  %62 = lshr i32 %61, 2
  %63 = trunc i32 %62 to i8, !dbg !1540
  %64 = getelementptr inbounds i8, ptr %0, i64 33, !dbg !1541
  store i8 %63, ptr %64, align 1, !dbg !1542, !tbaa !101
  %65 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !1543
  store i8 %63, ptr %65, align 1, !dbg !1544, !tbaa !101
  %66 = add nuw nsw i32 %11, 1, !dbg !1545
  %67 = add nuw nsw i32 %66, %14, !dbg !1545
  %68 = lshr i32 %67, 1
  %69 = trunc i32 %68 to i8, !dbg !1545
  %70 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1546
  store i8 %69, ptr %70, align 1, !dbg !1547, !tbaa !101
  %71 = getelementptr inbounds i8, ptr %0, i64 65, !dbg !1548
  store i8 %69, ptr %71, align 1, !dbg !1549, !tbaa !101
  %72 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !1550
  store i8 %69, ptr %72, align 1, !dbg !1551, !tbaa !101
  %73 = shl nuw nsw i32 %14, 1, !dbg !1552
  %74 = add nuw nsw i32 %47, %73, !dbg !1552
  %75 = add nuw nsw i32 %74, %17, !dbg !1552
  %76 = lshr i32 %75, 2
  %77 = trunc i32 %76 to i8, !dbg !1552
  %78 = getelementptr inbounds i8, ptr %0, i64 34, !dbg !1553
  store i8 %77, ptr %78, align 1, !dbg !1554, !tbaa !101
  %79 = getelementptr inbounds i8, ptr %0, i64 97, !dbg !1555
  store i8 %77, ptr %79, align 1, !dbg !1556, !tbaa !101
  %80 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !1557
  store i8 %77, ptr %80, align 1, !dbg !1558, !tbaa !101
  %81 = add nuw nsw i32 %14, 1, !dbg !1559
  %82 = add nuw nsw i32 %81, %17, !dbg !1559
  %83 = lshr i32 %82, 1
  %84 = trunc i32 %83 to i8, !dbg !1559
  %85 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1560
  store i8 %84, ptr %85, align 1, !dbg !1561, !tbaa !101
  %86 = getelementptr inbounds i8, ptr %0, i64 66, !dbg !1562
  store i8 %84, ptr %86, align 1, !dbg !1563, !tbaa !101
  %87 = getelementptr inbounds i8, ptr %0, i64 129, !dbg !1564
  store i8 %84, ptr %87, align 1, !dbg !1565, !tbaa !101
  %88 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !1566
  store i8 %84, ptr %88, align 1, !dbg !1567, !tbaa !101
  %89 = shl nuw nsw i32 %17, 1, !dbg !1568
  %90 = add nuw nsw i32 %59, %89, !dbg !1568
  %91 = add nuw nsw i32 %90, %20, !dbg !1568
  %92 = lshr i32 %91, 2
  %93 = trunc i32 %92 to i8, !dbg !1568
  %94 = getelementptr inbounds i8, ptr %0, i64 35, !dbg !1569
  store i8 %93, ptr %94, align 1, !dbg !1570, !tbaa !101
  %95 = getelementptr inbounds i8, ptr %0, i64 98, !dbg !1571
  store i8 %93, ptr %95, align 1, !dbg !1572, !tbaa !101
  %96 = getelementptr inbounds i8, ptr %0, i64 161, !dbg !1573
  store i8 %93, ptr %96, align 1, !dbg !1574, !tbaa !101
  %97 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !1575
  store i8 %93, ptr %97, align 1, !dbg !1576, !tbaa !101
  %98 = add nuw nsw i32 %17, 1, !dbg !1577
  %99 = add nuw nsw i32 %98, %20, !dbg !1577
  %100 = lshr i32 %99, 1
  %101 = trunc i32 %100 to i8, !dbg !1577
  %102 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !1578
  store i8 %101, ptr %102, align 1, !dbg !1579, !tbaa !101
  %103 = getelementptr inbounds i8, ptr %0, i64 67, !dbg !1580
  store i8 %101, ptr %103, align 1, !dbg !1581, !tbaa !101
  %104 = getelementptr inbounds i8, ptr %0, i64 130, !dbg !1582
  store i8 %101, ptr %104, align 1, !dbg !1583, !tbaa !101
  %105 = getelementptr inbounds i8, ptr %0, i64 193, !dbg !1584
  store i8 %101, ptr %105, align 1, !dbg !1585, !tbaa !101
  %106 = shl nuw nsw i32 %20, 1, !dbg !1586
  %107 = add nuw nsw i32 %17, 2, !dbg !1586
  %108 = add nuw nsw i32 %107, %106, !dbg !1586
  %109 = add nuw nsw i32 %108, %23, !dbg !1586
  %110 = lshr i32 %109, 2
  %111 = trunc i32 %110 to i8, !dbg !1586
  %112 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !1587
  store i8 %111, ptr %112, align 1, !dbg !1588, !tbaa !101
  %113 = getelementptr inbounds i8, ptr %0, i64 99, !dbg !1589
  store i8 %111, ptr %113, align 1, !dbg !1590, !tbaa !101
  %114 = getelementptr inbounds i8, ptr %0, i64 162, !dbg !1591
  store i8 %111, ptr %114, align 1, !dbg !1592, !tbaa !101
  %115 = getelementptr inbounds i8, ptr %0, i64 225, !dbg !1593
  store i8 %111, ptr %115, align 1, !dbg !1594, !tbaa !101
  %116 = add nuw nsw i32 %20, 1, !dbg !1595
  %117 = add nuw nsw i32 %116, %23, !dbg !1595
  %118 = lshr i32 %117, 1
  %119 = trunc i32 %118 to i8, !dbg !1595
  %120 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !1596
  store i8 %119, ptr %120, align 1, !dbg !1597, !tbaa !101
  %121 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !1598
  store i8 %119, ptr %121, align 1, !dbg !1599, !tbaa !101
  %122 = getelementptr inbounds i8, ptr %0, i64 131, !dbg !1600
  store i8 %119, ptr %122, align 1, !dbg !1601, !tbaa !101
  %123 = getelementptr inbounds i8, ptr %0, i64 194, !dbg !1602
  store i8 %119, ptr %123, align 1, !dbg !1603, !tbaa !101
  %124 = shl nuw nsw i32 %23, 1, !dbg !1604
  %125 = add nuw nsw i32 %20, 2, !dbg !1604
  %126 = add nuw nsw i32 %125, %124, !dbg !1604
  %127 = add nuw nsw i32 %126, %26, !dbg !1604
  %128 = lshr i32 %127, 2
  %129 = trunc i32 %128 to i8, !dbg !1604
  %130 = getelementptr inbounds i8, ptr %0, i64 37, !dbg !1605
  store i8 %129, ptr %130, align 1, !dbg !1606, !tbaa !101
  %131 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !1607
  store i8 %129, ptr %131, align 1, !dbg !1608, !tbaa !101
  %132 = getelementptr inbounds i8, ptr %0, i64 163, !dbg !1609
  store i8 %129, ptr %132, align 1, !dbg !1610, !tbaa !101
  %133 = getelementptr inbounds i8, ptr %0, i64 226, !dbg !1611
  store i8 %129, ptr %133, align 1, !dbg !1612, !tbaa !101
  %134 = add nuw nsw i32 %23, 1, !dbg !1613
  %135 = add nuw nsw i32 %134, %26, !dbg !1613
  %136 = lshr i32 %135, 1
  %137 = trunc i32 %136 to i8, !dbg !1613
  %138 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !1614
  store i8 %137, ptr %138, align 1, !dbg !1615, !tbaa !101
  %139 = getelementptr inbounds i8, ptr %0, i64 69, !dbg !1616
  store i8 %137, ptr %139, align 1, !dbg !1617, !tbaa !101
  %140 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !1618
  store i8 %137, ptr %140, align 1, !dbg !1619, !tbaa !101
  %141 = getelementptr inbounds i8, ptr %0, i64 195, !dbg !1620
  store i8 %137, ptr %141, align 1, !dbg !1621, !tbaa !101
  %142 = shl nuw nsw i32 %26, 1, !dbg !1622
  %143 = add nuw nsw i32 %23, 2, !dbg !1622
  %144 = add nuw nsw i32 %143, %142, !dbg !1622
  %145 = add nuw nsw i32 %144, %29, !dbg !1622
  %146 = lshr i32 %145, 2
  %147 = trunc i32 %146 to i8, !dbg !1622
  %148 = getelementptr inbounds i8, ptr %0, i64 38, !dbg !1623
  store i8 %147, ptr %148, align 1, !dbg !1624, !tbaa !101
  %149 = getelementptr inbounds i8, ptr %0, i64 101, !dbg !1625
  store i8 %147, ptr %149, align 1, !dbg !1626, !tbaa !101
  %150 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !1627
  store i8 %147, ptr %150, align 1, !dbg !1628, !tbaa !101
  %151 = getelementptr inbounds i8, ptr %0, i64 227, !dbg !1629
  store i8 %147, ptr %151, align 1, !dbg !1630, !tbaa !101
  %152 = add nuw nsw i32 %26, 1, !dbg !1631
  %153 = add nuw nsw i32 %152, %29, !dbg !1631
  %154 = lshr i32 %153, 1
  %155 = trunc i32 %154 to i8, !dbg !1631
  %156 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !1632
  store i8 %155, ptr %156, align 1, !dbg !1633, !tbaa !101
  %157 = getelementptr inbounds i8, ptr %0, i64 70, !dbg !1634
  store i8 %155, ptr %157, align 1, !dbg !1635, !tbaa !101
  %158 = getelementptr inbounds i8, ptr %0, i64 133, !dbg !1636
  store i8 %155, ptr %158, align 1, !dbg !1637, !tbaa !101
  %159 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !1638
  store i8 %155, ptr %159, align 1, !dbg !1639, !tbaa !101
  %160 = shl nuw nsw i32 %29, 1, !dbg !1640
  %161 = add nuw nsw i32 %26, 2, !dbg !1640
  %162 = add nuw nsw i32 %161, %160, !dbg !1640
  %163 = add nuw nsw i32 %162, %32, !dbg !1640
  %164 = lshr i32 %163, 2
  %165 = trunc i32 %164 to i8, !dbg !1640
  %166 = getelementptr inbounds i8, ptr %0, i64 39, !dbg !1641
  store i8 %165, ptr %166, align 1, !dbg !1642, !tbaa !101
  %167 = getelementptr inbounds i8, ptr %0, i64 102, !dbg !1643
  store i8 %165, ptr %167, align 1, !dbg !1644, !tbaa !101
  %168 = getelementptr inbounds i8, ptr %0, i64 165, !dbg !1645
  store i8 %165, ptr %168, align 1, !dbg !1646, !tbaa !101
  %169 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !1647
  store i8 %165, ptr %169, align 1, !dbg !1648, !tbaa !101
  %170 = add nuw nsw i32 %29, 1, !dbg !1649
  %171 = add nuw nsw i32 %170, %32, !dbg !1649
  %172 = lshr i32 %171, 1
  %173 = trunc i32 %172 to i8, !dbg !1649
  %174 = getelementptr inbounds i8, ptr %0, i64 71, !dbg !1650
  store i8 %173, ptr %174, align 1, !dbg !1651, !tbaa !101
  %175 = getelementptr inbounds i8, ptr %0, i64 134, !dbg !1652
  store i8 %173, ptr %175, align 1, !dbg !1653, !tbaa !101
  %176 = getelementptr inbounds i8, ptr %0, i64 197, !dbg !1654
  store i8 %173, ptr %176, align 1, !dbg !1655, !tbaa !101
  %177 = shl nuw nsw i32 %32, 1, !dbg !1656
  %178 = add nuw nsw i32 %29, 2, !dbg !1656
  %179 = add nuw nsw i32 %178, %177, !dbg !1656
  %180 = add nuw nsw i32 %179, %35, !dbg !1656
  %181 = lshr i32 %180, 2
  %182 = trunc i32 %181 to i8, !dbg !1656
  %183 = getelementptr inbounds i8, ptr %0, i64 103, !dbg !1657
  store i8 %182, ptr %183, align 1, !dbg !1658, !tbaa !101
  %184 = getelementptr inbounds i8, ptr %0, i64 166, !dbg !1659
  store i8 %182, ptr %184, align 1, !dbg !1660, !tbaa !101
  %185 = getelementptr inbounds i8, ptr %0, i64 229, !dbg !1661
  store i8 %182, ptr %185, align 1, !dbg !1662, !tbaa !101
  %186 = add nuw nsw i32 %32, 1, !dbg !1663
  %187 = add nuw nsw i32 %186, %35, !dbg !1663
  %188 = lshr i32 %187, 1
  %189 = trunc i32 %188 to i8, !dbg !1663
  %190 = getelementptr inbounds i8, ptr %0, i64 135, !dbg !1664
  store i8 %189, ptr %190, align 1, !dbg !1665, !tbaa !101
  %191 = getelementptr inbounds i8, ptr %0, i64 198, !dbg !1666
  store i8 %189, ptr %191, align 1, !dbg !1667, !tbaa !101
  %192 = shl nuw nsw i32 %35, 1, !dbg !1668
  %193 = add nuw nsw i32 %32, 2, !dbg !1668
  %194 = add nuw nsw i32 %193, %192, !dbg !1668
  %195 = add nuw nsw i32 %194, %38, !dbg !1668
  %196 = lshr i32 %195, 2
  %197 = trunc i32 %196 to i8, !dbg !1668
  %198 = getelementptr inbounds i8, ptr %0, i64 167, !dbg !1669
  store i8 %197, ptr %198, align 1, !dbg !1670, !tbaa !101
  %199 = getelementptr inbounds i8, ptr %0, i64 230, !dbg !1671
  store i8 %197, ptr %199, align 1, !dbg !1672, !tbaa !101
  %200 = add nuw nsw i32 %35, 1, !dbg !1673
  %201 = add nuw nsw i32 %200, %38, !dbg !1673
  %202 = lshr i32 %201, 1
  %203 = trunc i32 %202 to i8, !dbg !1673
  %204 = getelementptr inbounds i8, ptr %0, i64 199, !dbg !1674
  store i8 %203, ptr %204, align 1, !dbg !1675, !tbaa !101
  %205 = shl nuw nsw i32 %38, 1, !dbg !1676
  %206 = add nuw nsw i32 %35, 2, !dbg !1676
  %207 = add nuw nsw i32 %206, %205, !dbg !1676
  %208 = add nuw nsw i32 %207, %41, !dbg !1676
  %209 = lshr i32 %208, 2
  %210 = trunc i32 %209 to i8, !dbg !1676
  %211 = getelementptr inbounds i8, ptr %0, i64 231, !dbg !1677
  store i8 %210, ptr %211, align 1, !dbg !1678, !tbaa !101
  ret void, !dbg !1679
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_hu(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #7 !dbg !1680 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1682, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata ptr %1, metadata !1683, metadata !DIExpression()), !dbg !1700
  %3 = getelementptr inbounds i8, ptr %1, i64 14, !dbg !1701
  %4 = load i8, ptr %3, align 1, !dbg !1701, !tbaa !101
  %5 = zext i8 %4 to i32, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %5, metadata !1684, metadata !DIExpression()), !dbg !1700
  %6 = getelementptr inbounds i8, ptr %1, i64 13, !dbg !1701
  %7 = load i8, ptr %6, align 1, !dbg !1701, !tbaa !101
  %8 = zext i8 %7 to i32, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %8, metadata !1685, metadata !DIExpression()), !dbg !1700
  %9 = getelementptr inbounds i8, ptr %1, i64 12, !dbg !1701
  %10 = load i8, ptr %9, align 1, !dbg !1701, !tbaa !101
  %11 = zext i8 %10 to i32, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %11, metadata !1686, metadata !DIExpression()), !dbg !1700
  %12 = getelementptr inbounds i8, ptr %1, i64 11, !dbg !1701
  %13 = load i8, ptr %12, align 1, !dbg !1701, !tbaa !101
  %14 = zext i8 %13 to i32, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %14, metadata !1687, metadata !DIExpression()), !dbg !1700
  %15 = getelementptr inbounds i8, ptr %1, i64 10, !dbg !1701
  %16 = load i8, ptr %15, align 1, !dbg !1701, !tbaa !101
  %17 = zext i8 %16 to i32, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %17, metadata !1688, metadata !DIExpression()), !dbg !1700
  %18 = getelementptr inbounds i8, ptr %1, i64 9, !dbg !1701
  %19 = load i8, ptr %18, align 1, !dbg !1701, !tbaa !101
  %20 = zext i8 %19 to i32, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %20, metadata !1689, metadata !DIExpression()), !dbg !1700
  %21 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !1701
  %22 = load i8, ptr %21, align 1, !dbg !1701, !tbaa !101
  %23 = zext i8 %22 to i32, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %23, metadata !1690, metadata !DIExpression()), !dbg !1700
  %24 = getelementptr inbounds i8, ptr %1, i64 7, !dbg !1701
  %25 = load i8, ptr %24, align 1, !dbg !1701, !tbaa !101
  %26 = zext i8 %25 to i32, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %26, metadata !1691, metadata !DIExpression()), !dbg !1700
  %27 = add nuw nsw i32 %8, 1, !dbg !1702
  %28 = add nuw nsw i32 %27, %5, !dbg !1702
  %29 = lshr i32 %28, 1
  %30 = shl nuw nsw i32 %8, 1, !dbg !1703
  %31 = add nuw nsw i32 %30, %5, !dbg !1703
  %32 = add nuw nsw i32 %31, %11, !dbg !1703
  call void @llvm.dbg.value(metadata i32 %29, metadata !1361, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 %32, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1704
  %33 = shl nuw nsw i32 %32, 6, !dbg !1706
  %34 = add nuw nsw i32 %33, 128, !dbg !1706
  %35 = and i32 %34, -256, !dbg !1706
  %36 = add nuw nsw i32 %35, %29, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %36, metadata !1692, metadata !DIExpression()), !dbg !1700
  %37 = add nuw nsw i32 %27, %11, !dbg !1708
  %38 = lshr i32 %37, 1
  %39 = shl nuw nsw i32 %11, 1, !dbg !1709
  %40 = add nuw nsw i32 %39, %8, !dbg !1709
  %41 = add nuw nsw i32 %40, %14, !dbg !1709
  call void @llvm.dbg.value(metadata i32 %38, metadata !1361, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i32 %41, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1710
  %42 = shl nuw nsw i32 %41, 6, !dbg !1712
  %43 = add nuw nsw i32 %42, 128, !dbg !1712
  %44 = and i32 %43, -256, !dbg !1712
  %45 = add nuw nsw i32 %44, %38, !dbg !1713
  call void @llvm.dbg.value(metadata i32 %45, metadata !1693, metadata !DIExpression()), !dbg !1700
  %46 = add nuw nsw i32 %11, 1, !dbg !1714
  %47 = add nuw nsw i32 %46, %14, !dbg !1714
  %48 = lshr i32 %47, 1
  %49 = shl nuw nsw i32 %14, 1, !dbg !1715
  %50 = add nuw nsw i32 %49, %11, !dbg !1715
  %51 = add nuw nsw i32 %50, %17, !dbg !1715
  call void @llvm.dbg.value(metadata i32 %48, metadata !1361, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i32 %51, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1716
  %52 = shl nuw nsw i32 %51, 6, !dbg !1718
  %53 = add nuw nsw i32 %52, 128, !dbg !1718
  %54 = and i32 %53, -256, !dbg !1718
  %55 = add nuw nsw i32 %54, %48, !dbg !1719
  call void @llvm.dbg.value(metadata i32 %55, metadata !1694, metadata !DIExpression()), !dbg !1700
  %56 = add nuw nsw i32 %14, 1, !dbg !1720
  %57 = add nuw nsw i32 %56, %17, !dbg !1720
  %58 = lshr i32 %57, 1
  %59 = shl nuw nsw i32 %17, 1, !dbg !1721
  %60 = add nuw nsw i32 %59, %14, !dbg !1721
  %61 = add nuw nsw i32 %60, %20, !dbg !1721
  call void @llvm.dbg.value(metadata i32 %58, metadata !1361, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i32 %61, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1722
  %62 = shl nuw nsw i32 %61, 6, !dbg !1724
  %63 = add nuw nsw i32 %62, 128, !dbg !1724
  %64 = and i32 %63, -256, !dbg !1724
  %65 = add nuw nsw i32 %64, %58, !dbg !1725
  call void @llvm.dbg.value(metadata i32 %65, metadata !1695, metadata !DIExpression()), !dbg !1700
  %66 = add nuw nsw i32 %17, 1, !dbg !1726
  %67 = add nuw nsw i32 %66, %20, !dbg !1726
  %68 = lshr i32 %67, 1
  %69 = shl nuw nsw i32 %20, 1, !dbg !1727
  %70 = add nuw nsw i32 %69, %17, !dbg !1727
  %71 = add nuw nsw i32 %70, %23, !dbg !1727
  call void @llvm.dbg.value(metadata i32 %68, metadata !1361, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i32 %71, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1728
  %72 = shl nuw nsw i32 %71, 6, !dbg !1730
  %73 = add nuw nsw i32 %72, 128, !dbg !1730
  %74 = and i32 %73, -256, !dbg !1730
  %75 = add nuw nsw i32 %74, %68, !dbg !1731
  call void @llvm.dbg.value(metadata i32 %75, metadata !1696, metadata !DIExpression()), !dbg !1700
  %76 = add nuw nsw i32 %20, 1, !dbg !1732
  %77 = add nuw nsw i32 %76, %23, !dbg !1732
  %78 = lshr i32 %77, 1
  %79 = shl nuw nsw i32 %23, 1, !dbg !1733
  %80 = add nuw nsw i32 %79, %20, !dbg !1733
  %81 = add nuw nsw i32 %80, %26, !dbg !1733
  call void @llvm.dbg.value(metadata i32 %78, metadata !1361, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i32 %81, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1734
  %82 = shl nuw nsw i32 %81, 6, !dbg !1736
  %83 = add nuw nsw i32 %82, 128, !dbg !1736
  %84 = and i32 %83, -256, !dbg !1736
  %85 = add nuw nsw i32 %84, %78, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %85, metadata !1697, metadata !DIExpression()), !dbg !1700
  %86 = add nuw nsw i32 %23, 1, !dbg !1738
  %87 = add nuw nsw i32 %86, %26, !dbg !1738
  %88 = lshr i32 %87, 1
  %89 = shl nuw nsw i32 %26, 1, !dbg !1739
  %90 = add nuw nsw i32 %26, %23, !dbg !1739
  %91 = add nuw nsw i32 %90, %89, !dbg !1739
  call void @llvm.dbg.value(metadata i32 %88, metadata !1361, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %91, metadata !1366, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !1740
  %92 = shl nuw nsw i32 %91, 6, !dbg !1742
  %93 = add nuw nsw i32 %92, 128, !dbg !1742
  %94 = and i32 %93, 130816, !dbg !1742
  %95 = add nuw nsw i32 %94, %88, !dbg !1743
  call void @llvm.dbg.value(metadata i32 %95, metadata !1698, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %26, metadata !1361, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %26, metadata !1366, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %26, metadata !1699, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_stack_value)), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %36, metadata !1431, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i32 %45, metadata !1434, metadata !DIExpression()), !dbg !1746
  %96 = shl nuw i32 %45, 16, !dbg !1748
  %97 = add nuw nsw i32 %36, %96, !dbg !1749
  store i32 %97, ptr %0, align 4, !dbg !1750, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %45, metadata !1431, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i32 %55, metadata !1434, metadata !DIExpression()), !dbg !1751
  %98 = shl nuw i32 %55, 16, !dbg !1753
  %99 = add nuw nsw i32 %98, %45, !dbg !1754
  %100 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !1755
  store i32 %99, ptr %100, align 4, !dbg !1756, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %55, metadata !1431, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i32 %65, metadata !1434, metadata !DIExpression()), !dbg !1757
  %101 = shl nuw i32 %65, 16, !dbg !1759
  %102 = add nuw nsw i32 %101, %55, !dbg !1760
  %103 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !1761
  store i32 %102, ptr %103, align 4, !dbg !1762, !tbaa !248
  %104 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !1763
  store i32 %102, ptr %104, align 4, !dbg !1764, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %65, metadata !1431, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 %75, metadata !1434, metadata !DIExpression()), !dbg !1765
  %105 = shl nuw i32 %75, 16, !dbg !1767
  %106 = add nuw nsw i32 %105, %65, !dbg !1768
  %107 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !1769
  store i32 %106, ptr %107, align 4, !dbg !1770, !tbaa !248
  %108 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !1771
  store i32 %106, ptr %108, align 4, !dbg !1772, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %75, metadata !1431, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %85, metadata !1434, metadata !DIExpression()), !dbg !1773
  %109 = shl nuw i32 %85, 16, !dbg !1775
  %110 = add nuw nsw i32 %109, %75, !dbg !1776
  %111 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !1777
  store i32 %110, ptr %111, align 4, !dbg !1778, !tbaa !248
  %112 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !1779
  store i32 %110, ptr %112, align 4, !dbg !1780, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %85, metadata !1431, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %95, metadata !1434, metadata !DIExpression()), !dbg !1781
  %113 = shl nuw i32 %95, 16, !dbg !1783
  %114 = add nuw nsw i32 %113, %85, !dbg !1784
  %115 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !1785
  store i32 %114, ptr %115, align 4, !dbg !1786, !tbaa !248
  %116 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !1787
  store i32 %114, ptr %116, align 4, !dbg !1788, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %95, metadata !1431, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i32 %26, metadata !1434, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_stack_value)), !dbg !1789
  %117 = mul nuw i32 %26, 16842752, !dbg !1791
  %118 = add nuw nsw i32 %95, %117, !dbg !1792
  %119 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !1793
  store i32 %118, ptr %119, align 4, !dbg !1794, !tbaa !248
  %120 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !1795
  store i32 %118, ptr %120, align 4, !dbg !1796, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %26, metadata !1431, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_stack_value)), !dbg !1797
  call void @llvm.dbg.value(metadata i32 %26, metadata !1434, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_stack_value)), !dbg !1797
  %121 = mul nuw i32 %26, 16843009, !dbg !1799
  %122 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !1800
  store i32 %121, ptr %122, align 4, !dbg !1801, !tbaa !248
  %123 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !1802
  store i32 %121, ptr %123, align 4, !dbg !1803, !tbaa !248
  %124 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !1804
  store i32 %121, ptr %124, align 4, !dbg !1805, !tbaa !248
  %125 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !1806
  store i32 %121, ptr %125, align 4, !dbg !1807, !tbaa !248
  ret void, !dbg !1808
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8_dc_left(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #2 !dbg !1809 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1811, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr %1, metadata !1812, metadata !DIExpression()), !dbg !1823
  %3 = getelementptr inbounds i8, ptr %1, i64 14, !dbg !1824
  %4 = load i8, ptr %3, align 1, !dbg !1824, !tbaa !101
  %5 = zext i8 %4 to i32, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %5, metadata !1813, metadata !DIExpression()), !dbg !1823
  %6 = getelementptr inbounds i8, ptr %1, i64 13, !dbg !1824
  %7 = load i8, ptr %6, align 1, !dbg !1824, !tbaa !101
  %8 = zext i8 %7 to i32, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %8, metadata !1814, metadata !DIExpression()), !dbg !1823
  %9 = getelementptr inbounds i8, ptr %1, i64 12, !dbg !1824
  %10 = load i8, ptr %9, align 1, !dbg !1824, !tbaa !101
  %11 = zext i8 %10 to i32, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %11, metadata !1815, metadata !DIExpression()), !dbg !1823
  %12 = getelementptr inbounds i8, ptr %1, i64 11, !dbg !1824
  %13 = load i8, ptr %12, align 1, !dbg !1824, !tbaa !101
  %14 = zext i8 %13 to i32, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %14, metadata !1816, metadata !DIExpression()), !dbg !1823
  %15 = getelementptr inbounds i8, ptr %1, i64 10, !dbg !1824
  %16 = load i8, ptr %15, align 1, !dbg !1824, !tbaa !101
  %17 = zext i8 %16 to i32, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %17, metadata !1817, metadata !DIExpression()), !dbg !1823
  %18 = getelementptr inbounds i8, ptr %1, i64 9, !dbg !1824
  %19 = load i8, ptr %18, align 1, !dbg !1824, !tbaa !101
  %20 = zext i8 %19 to i32, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %20, metadata !1818, metadata !DIExpression()), !dbg !1823
  %21 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !1824
  %22 = load i8, ptr %21, align 1, !dbg !1824, !tbaa !101
  %23 = zext i8 %22 to i32, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %23, metadata !1819, metadata !DIExpression()), !dbg !1823
  %24 = getelementptr inbounds i8, ptr %1, i64 7, !dbg !1824
  %25 = load i8, ptr %24, align 1, !dbg !1824, !tbaa !101
  %26 = zext i8 %25 to i32, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %26, metadata !1820, metadata !DIExpression()), !dbg !1823
  %27 = add nuw nsw i32 %5, 4, !dbg !1825
  %28 = add nuw nsw i32 %27, %8, !dbg !1826
  %29 = add nuw nsw i32 %28, %11, !dbg !1827
  %30 = add nuw nsw i32 %29, %14, !dbg !1828
  %31 = add nuw nsw i32 %30, %17, !dbg !1829
  %32 = add nuw nsw i32 %31, %20, !dbg !1830
  %33 = add nuw nsw i32 %32, %23, !dbg !1831
  %34 = add nuw nsw i32 %33, %26, !dbg !1832
  %35 = lshr i32 %34, 3
  %36 = mul nuw nsw i32 %35, 16843009, !dbg !1833
  call void @llvm.dbg.value(metadata i32 %36, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 0, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr %0, metadata !1811, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 0, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr %0, metadata !1811, metadata !DIExpression()), !dbg !1823
  %37 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !1834
  store i32 %36, ptr %37, align 4, !dbg !1834, !tbaa !248
  store i32 %36, ptr %0, align 4, !dbg !1834, !tbaa !248
  %38 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !1834
  call void @llvm.dbg.value(metadata ptr %38, metadata !1811, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 1, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 1, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr %38, metadata !1811, metadata !DIExpression()), !dbg !1823
  %39 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !1834
  store i32 %36, ptr %39, align 4, !dbg !1834, !tbaa !248
  store i32 %36, ptr %38, align 4, !dbg !1834, !tbaa !248
  %40 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !1834
  call void @llvm.dbg.value(metadata ptr %40, metadata !1811, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 2, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 2, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr %40, metadata !1811, metadata !DIExpression()), !dbg !1823
  %41 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !1834
  store i32 %36, ptr %41, align 4, !dbg !1834, !tbaa !248
  store i32 %36, ptr %40, align 4, !dbg !1834, !tbaa !248
  %42 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !1834
  call void @llvm.dbg.value(metadata ptr %42, metadata !1811, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 3, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 3, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr %42, metadata !1811, metadata !DIExpression()), !dbg !1823
  %43 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !1834
  store i32 %36, ptr %43, align 4, !dbg !1834, !tbaa !248
  store i32 %36, ptr %42, align 4, !dbg !1834, !tbaa !248
  %44 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !1834
  call void @llvm.dbg.value(metadata ptr %44, metadata !1811, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 4, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 4, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr %44, metadata !1811, metadata !DIExpression()), !dbg !1823
  %45 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !1834
  store i32 %36, ptr %45, align 4, !dbg !1834, !tbaa !248
  store i32 %36, ptr %44, align 4, !dbg !1834, !tbaa !248
  %46 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !1834
  call void @llvm.dbg.value(metadata ptr %46, metadata !1811, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 5, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 5, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr %46, metadata !1811, metadata !DIExpression()), !dbg !1823
  %47 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !1834
  store i32 %36, ptr %47, align 4, !dbg !1834, !tbaa !248
  store i32 %36, ptr %46, align 4, !dbg !1834, !tbaa !248
  %48 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !1834
  call void @llvm.dbg.value(metadata ptr %48, metadata !1811, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 6, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 6, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr %48, metadata !1811, metadata !DIExpression()), !dbg !1823
  %49 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !1834
  store i32 %36, ptr %49, align 4, !dbg !1834, !tbaa !248
  store i32 %36, ptr %48, align 4, !dbg !1834, !tbaa !248
  %50 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !1834
  call void @llvm.dbg.value(metadata ptr %50, metadata !1811, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 7, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 7, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr %50, metadata !1811, metadata !DIExpression()), !dbg !1823
  %51 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !1834
  store i32 %36, ptr %51, align 4, !dbg !1834, !tbaa !248
  store i32 %36, ptr %50, align 4, !dbg !1834, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %50, metadata !1811, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1823
  call void @llvm.dbg.value(metadata i32 8, metadata !1822, metadata !DIExpression()), !dbg !1823
  ret void, !dbg !1838
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8_dc_top(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #2 !dbg !1839 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1841, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata ptr %1, metadata !1842, metadata !DIExpression()), !dbg !1853
  %3 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !1854
  %4 = load i8, ptr %3, align 1, !dbg !1854, !tbaa !101
  %5 = zext i8 %4 to i32, !dbg !1854
  call void @llvm.dbg.value(metadata i32 %5, metadata !1843, metadata !DIExpression()), !dbg !1853
  %6 = getelementptr inbounds i8, ptr %1, i64 17, !dbg !1854
  %7 = load i8, ptr %6, align 1, !dbg !1854, !tbaa !101
  %8 = zext i8 %7 to i32, !dbg !1854
  call void @llvm.dbg.value(metadata i32 %8, metadata !1844, metadata !DIExpression()), !dbg !1853
  %9 = getelementptr inbounds i8, ptr %1, i64 18, !dbg !1854
  %10 = load i8, ptr %9, align 1, !dbg !1854, !tbaa !101
  %11 = zext i8 %10 to i32, !dbg !1854
  call void @llvm.dbg.value(metadata i32 %11, metadata !1845, metadata !DIExpression()), !dbg !1853
  %12 = getelementptr inbounds i8, ptr %1, i64 19, !dbg !1854
  %13 = load i8, ptr %12, align 1, !dbg !1854, !tbaa !101
  %14 = zext i8 %13 to i32, !dbg !1854
  call void @llvm.dbg.value(metadata i32 %14, metadata !1846, metadata !DIExpression()), !dbg !1853
  %15 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !1854
  %16 = load i8, ptr %15, align 1, !dbg !1854, !tbaa !101
  %17 = zext i8 %16 to i32, !dbg !1854
  call void @llvm.dbg.value(metadata i32 %17, metadata !1847, metadata !DIExpression()), !dbg !1853
  %18 = getelementptr inbounds i8, ptr %1, i64 21, !dbg !1854
  %19 = load i8, ptr %18, align 1, !dbg !1854, !tbaa !101
  %20 = zext i8 %19 to i32, !dbg !1854
  call void @llvm.dbg.value(metadata i32 %20, metadata !1848, metadata !DIExpression()), !dbg !1853
  %21 = getelementptr inbounds i8, ptr %1, i64 22, !dbg !1854
  %22 = load i8, ptr %21, align 1, !dbg !1854, !tbaa !101
  %23 = zext i8 %22 to i32, !dbg !1854
  call void @llvm.dbg.value(metadata i32 %23, metadata !1849, metadata !DIExpression()), !dbg !1853
  %24 = getelementptr inbounds i8, ptr %1, i64 23, !dbg !1854
  %25 = load i8, ptr %24, align 1, !dbg !1854, !tbaa !101
  %26 = zext i8 %25 to i32, !dbg !1854
  call void @llvm.dbg.value(metadata i32 %26, metadata !1850, metadata !DIExpression()), !dbg !1853
  %27 = add nuw nsw i32 %5, 4, !dbg !1855
  %28 = add nuw nsw i32 %27, %8, !dbg !1856
  %29 = add nuw nsw i32 %28, %11, !dbg !1857
  %30 = add nuw nsw i32 %29, %14, !dbg !1858
  %31 = add nuw nsw i32 %30, %17, !dbg !1859
  %32 = add nuw nsw i32 %31, %20, !dbg !1860
  %33 = add nuw nsw i32 %32, %23, !dbg !1861
  %34 = add nuw nsw i32 %33, %26, !dbg !1862
  %35 = lshr i32 %34, 3
  %36 = mul nuw nsw i32 %35, 16843009, !dbg !1863
  call void @llvm.dbg.value(metadata i32 %36, metadata !1851, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 0, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata ptr %0, metadata !1841, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 0, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata ptr %0, metadata !1841, metadata !DIExpression()), !dbg !1853
  %37 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !1864
  store i32 %36, ptr %37, align 4, !dbg !1864, !tbaa !248
  store i32 %36, ptr %0, align 4, !dbg !1864, !tbaa !248
  %38 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !1864
  call void @llvm.dbg.value(metadata ptr %38, metadata !1841, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 1, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 1, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata ptr %38, metadata !1841, metadata !DIExpression()), !dbg !1853
  %39 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !1864
  store i32 %36, ptr %39, align 4, !dbg !1864, !tbaa !248
  store i32 %36, ptr %38, align 4, !dbg !1864, !tbaa !248
  %40 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !1864
  call void @llvm.dbg.value(metadata ptr %40, metadata !1841, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 2, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 2, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata ptr %40, metadata !1841, metadata !DIExpression()), !dbg !1853
  %41 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !1864
  store i32 %36, ptr %41, align 4, !dbg !1864, !tbaa !248
  store i32 %36, ptr %40, align 4, !dbg !1864, !tbaa !248
  %42 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !1864
  call void @llvm.dbg.value(metadata ptr %42, metadata !1841, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 3, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 3, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata ptr %42, metadata !1841, metadata !DIExpression()), !dbg !1853
  %43 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !1864
  store i32 %36, ptr %43, align 4, !dbg !1864, !tbaa !248
  store i32 %36, ptr %42, align 4, !dbg !1864, !tbaa !248
  %44 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !1864
  call void @llvm.dbg.value(metadata ptr %44, metadata !1841, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 4, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 4, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata ptr %44, metadata !1841, metadata !DIExpression()), !dbg !1853
  %45 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !1864
  store i32 %36, ptr %45, align 4, !dbg !1864, !tbaa !248
  store i32 %36, ptr %44, align 4, !dbg !1864, !tbaa !248
  %46 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !1864
  call void @llvm.dbg.value(metadata ptr %46, metadata !1841, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 5, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 5, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata ptr %46, metadata !1841, metadata !DIExpression()), !dbg !1853
  %47 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !1864
  store i32 %36, ptr %47, align 4, !dbg !1864, !tbaa !248
  store i32 %36, ptr %46, align 4, !dbg !1864, !tbaa !248
  %48 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !1864
  call void @llvm.dbg.value(metadata ptr %48, metadata !1841, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 6, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 6, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata ptr %48, metadata !1841, metadata !DIExpression()), !dbg !1853
  %49 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !1864
  store i32 %36, ptr %49, align 4, !dbg !1864, !tbaa !248
  store i32 %36, ptr %48, align 4, !dbg !1864, !tbaa !248
  %50 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !1864
  call void @llvm.dbg.value(metadata ptr %50, metadata !1841, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 7, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 7, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata ptr %50, metadata !1841, metadata !DIExpression()), !dbg !1853
  %51 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !1864
  store i32 %36, ptr %51, align 4, !dbg !1864, !tbaa !248
  store i32 %36, ptr %50, align 4, !dbg !1864, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %50, metadata !1841, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1853
  call void @llvm.dbg.value(metadata i32 8, metadata !1852, metadata !DIExpression()), !dbg !1853
  ret void, !dbg !1868
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define internal void @predict_8x8_dc_128(ptr nocapture noundef writeonly %0, ptr nocapture readnone %1) #4 !dbg !1869 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1871, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata ptr poison, metadata !1872, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 0, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 0, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata ptr %0, metadata !1871, metadata !DIExpression()), !dbg !1874
  %3 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !1875
  store i32 -2139062144, ptr %3, align 4, !dbg !1875, !tbaa !248
  store i32 -2139062144, ptr %0, align 4, !dbg !1875, !tbaa !248
  %4 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %4, metadata !1871, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 1, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 1, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata ptr %4, metadata !1871, metadata !DIExpression()), !dbg !1874
  %5 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !1875
  store i32 -2139062144, ptr %5, align 4, !dbg !1875, !tbaa !248
  store i32 -2139062144, ptr %4, align 4, !dbg !1875, !tbaa !248
  %6 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %6, metadata !1871, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 2, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 2, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata ptr %6, metadata !1871, metadata !DIExpression()), !dbg !1874
  %7 = getelementptr inbounds i8, ptr %0, i64 68, !dbg !1875
  store i32 -2139062144, ptr %7, align 4, !dbg !1875, !tbaa !248
  store i32 -2139062144, ptr %6, align 4, !dbg !1875, !tbaa !248
  %8 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %8, metadata !1871, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 3, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 3, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata ptr %8, metadata !1871, metadata !DIExpression()), !dbg !1874
  %9 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !1875
  store i32 -2139062144, ptr %9, align 4, !dbg !1875, !tbaa !248
  store i32 -2139062144, ptr %8, align 4, !dbg !1875, !tbaa !248
  %10 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %10, metadata !1871, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 4, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 4, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata ptr %10, metadata !1871, metadata !DIExpression()), !dbg !1874
  %11 = getelementptr inbounds i8, ptr %0, i64 132, !dbg !1875
  store i32 -2139062144, ptr %11, align 4, !dbg !1875, !tbaa !248
  store i32 -2139062144, ptr %10, align 4, !dbg !1875, !tbaa !248
  %12 = getelementptr inbounds i8, ptr %0, i64 160, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %12, metadata !1871, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 5, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 5, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata ptr %12, metadata !1871, metadata !DIExpression()), !dbg !1874
  %13 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !1875
  store i32 -2139062144, ptr %13, align 4, !dbg !1875, !tbaa !248
  store i32 -2139062144, ptr %12, align 4, !dbg !1875, !tbaa !248
  %14 = getelementptr inbounds i8, ptr %0, i64 192, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %14, metadata !1871, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 6, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 6, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata ptr %14, metadata !1871, metadata !DIExpression()), !dbg !1874
  %15 = getelementptr inbounds i8, ptr %0, i64 196, !dbg !1875
  store i32 -2139062144, ptr %15, align 4, !dbg !1875, !tbaa !248
  store i32 -2139062144, ptr %14, align 4, !dbg !1875, !tbaa !248
  %16 = getelementptr inbounds i8, ptr %0, i64 224, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %16, metadata !1871, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 7, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 7, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata ptr %16, metadata !1871, metadata !DIExpression()), !dbg !1874
  %17 = getelementptr inbounds i8, ptr %0, i64 228, !dbg !1875
  store i32 -2139062144, ptr %17, align 4, !dbg !1875, !tbaa !248
  store i32 -2139062144, ptr %16, align 4, !dbg !1875, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %16, metadata !1871, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1874
  call void @llvm.dbg.value(metadata i32 8, metadata !1873, metadata !DIExpression()), !dbg !1874
  ret void, !dbg !1879
}

declare !dbg !1880 void @x264_predict_8x8_init_mmx(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_4x4_init(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 !dbg !1881 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1883, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata ptr %1, metadata !1884, metadata !DIExpression()), !dbg !1885
  store ptr @predict_4x4_v, ptr %1, align 8, !dbg !1886, !tbaa !217
  %3 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1887
  store ptr @predict_4x4_h, ptr %3, align 8, !dbg !1888, !tbaa !217
  %4 = getelementptr inbounds ptr, ptr %1, i64 2, !dbg !1889
  store ptr @predict_4x4_dc, ptr %4, align 8, !dbg !1890, !tbaa !217
  %5 = getelementptr inbounds ptr, ptr %1, i64 3, !dbg !1891
  store ptr @predict_4x4_ddl, ptr %5, align 8, !dbg !1892, !tbaa !217
  %6 = getelementptr inbounds ptr, ptr %1, i64 4, !dbg !1893
  store ptr @predict_4x4_ddr, ptr %6, align 8, !dbg !1894, !tbaa !217
  %7 = getelementptr inbounds ptr, ptr %1, i64 5, !dbg !1895
  store ptr @predict_4x4_vr, ptr %7, align 8, !dbg !1896, !tbaa !217
  %8 = getelementptr inbounds ptr, ptr %1, i64 6, !dbg !1897
  store ptr @predict_4x4_hd, ptr %8, align 8, !dbg !1898, !tbaa !217
  %9 = getelementptr inbounds ptr, ptr %1, i64 7, !dbg !1899
  store ptr @predict_4x4_vl, ptr %9, align 8, !dbg !1900, !tbaa !217
  %10 = getelementptr inbounds ptr, ptr %1, i64 8, !dbg !1901
  store ptr @predict_4x4_hu, ptr %10, align 8, !dbg !1902, !tbaa !217
  %11 = getelementptr inbounds ptr, ptr %1, i64 9, !dbg !1903
  store ptr @predict_4x4_dc_left, ptr %11, align 8, !dbg !1904, !tbaa !217
  %12 = getelementptr inbounds ptr, ptr %1, i64 10, !dbg !1905
  store ptr @predict_4x4_dc_top, ptr %12, align 8, !dbg !1906, !tbaa !217
  %13 = getelementptr inbounds ptr, ptr %1, i64 11, !dbg !1907
  store ptr @predict_4x4_dc_128, ptr %13, align 8, !dbg !1908, !tbaa !217
  tail call void @x264_predict_4x4_init_mmx(i32 noundef %0, ptr noundef nonnull %1) #12, !dbg !1909
  ret void, !dbg !1910
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_v(ptr nocapture noundef %0) #7 !dbg !1911 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1913, metadata !DIExpression()), !dbg !1914
  %2 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !1915
  %3 = load i32, ptr %2, align 4, !dbg !1915, !tbaa !248
  %4 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !1915
  store i32 %3, ptr %4, align 4, !dbg !1915, !tbaa !248
  %5 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !1915
  store i32 %3, ptr %5, align 4, !dbg !1915, !tbaa !248
  %6 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !1915
  store i32 %3, ptr %6, align 4, !dbg !1915, !tbaa !248
  store i32 %3, ptr %0, align 4, !dbg !1915, !tbaa !248
  ret void, !dbg !1916
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_h(ptr nocapture noundef %0) #7 !dbg !1917 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1919, metadata !DIExpression()), !dbg !1920
  %2 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !1921
  %3 = load i8, ptr %2, align 1, !dbg !1921, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !1921
  %5 = mul nuw nsw i32 %4, 16843009, !dbg !1922
  store i32 %5, ptr %0, align 4, !dbg !1923, !tbaa !248
  %6 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !1924
  %7 = load i8, ptr %6, align 1, !dbg !1924, !tbaa !101
  %8 = zext i8 %7 to i32, !dbg !1924
  %9 = mul nuw nsw i32 %8, 16843009, !dbg !1925
  %10 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !1926
  store i32 %9, ptr %10, align 4, !dbg !1927, !tbaa !248
  %11 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !1928
  %12 = load i8, ptr %11, align 1, !dbg !1928, !tbaa !101
  %13 = zext i8 %12 to i32, !dbg !1928
  %14 = mul nuw nsw i32 %13, 16843009, !dbg !1929
  %15 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !1930
  store i32 %14, ptr %15, align 4, !dbg !1931, !tbaa !248
  %16 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !1932
  %17 = load i8, ptr %16, align 1, !dbg !1932, !tbaa !101
  %18 = zext i8 %17 to i32, !dbg !1932
  %19 = mul nuw nsw i32 %18, 16843009, !dbg !1933
  %20 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !1934
  store i32 %19, ptr %20, align 4, !dbg !1935, !tbaa !248
  ret void, !dbg !1936
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_dc(ptr nocapture noundef %0) #7 !dbg !1937 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1939, metadata !DIExpression()), !dbg !1941
  %2 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !1942
  %3 = load i8, ptr %2, align 1, !dbg !1942, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !1942
  %5 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !1943
  %6 = load i8, ptr %5, align 1, !dbg !1943, !tbaa !101
  %7 = zext i8 %6 to i32, !dbg !1943
  %8 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !1944
  %9 = load i8, ptr %8, align 1, !dbg !1944, !tbaa !101
  %10 = zext i8 %9 to i32, !dbg !1944
  %11 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !1945
  %12 = load i8, ptr %11, align 1, !dbg !1945, !tbaa !101
  %13 = zext i8 %12 to i32, !dbg !1945
  %14 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !1946
  %15 = load i8, ptr %14, align 1, !dbg !1946, !tbaa !101
  %16 = zext i8 %15 to i32, !dbg !1946
  %17 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !1947
  %18 = load i8, ptr %17, align 1, !dbg !1947, !tbaa !101
  %19 = zext i8 %18 to i32, !dbg !1947
  %20 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !1948
  %21 = load i8, ptr %20, align 1, !dbg !1948, !tbaa !101
  %22 = zext i8 %21 to i32, !dbg !1948
  %23 = getelementptr inbounds i8, ptr %0, i64 -29, !dbg !1949
  %24 = load i8, ptr %23, align 1, !dbg !1949, !tbaa !101
  %25 = zext i8 %24 to i32, !dbg !1949
  %26 = add nuw nsw i32 %4, 4, !dbg !1950
  %27 = add nuw nsw i32 %26, %7, !dbg !1951
  %28 = add nuw nsw i32 %27, %10, !dbg !1952
  %29 = add nuw nsw i32 %28, %13, !dbg !1953
  %30 = add nuw nsw i32 %29, %16, !dbg !1954
  %31 = add nuw nsw i32 %30, %19, !dbg !1955
  %32 = add nuw nsw i32 %31, %22, !dbg !1956
  %33 = add nuw nsw i32 %32, %25, !dbg !1957
  %34 = lshr i32 %33, 3
  %35 = mul nuw nsw i32 %34, 16843009, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %35, metadata !1940, metadata !DIExpression()), !dbg !1941
  %36 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !1959
  store i32 %35, ptr %36, align 4, !dbg !1959, !tbaa !248
  %37 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !1959
  store i32 %35, ptr %37, align 4, !dbg !1959, !tbaa !248
  %38 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !1959
  store i32 %35, ptr %38, align 4, !dbg !1959, !tbaa !248
  store i32 %35, ptr %0, align 4, !dbg !1959, !tbaa !248
  ret void, !dbg !1960
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_ddl(ptr nocapture noundef %0) #7 !dbg !1961 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1963, metadata !DIExpression()), !dbg !1972
  %2 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !1973
  %3 = load i8, ptr %2, align 1, !dbg !1973, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !1973
  call void @llvm.dbg.value(metadata i32 %4, metadata !1964, metadata !DIExpression()), !dbg !1972
  %5 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !1973
  %6 = load i8, ptr %5, align 1, !dbg !1973, !tbaa !101
  %7 = zext i8 %6 to i32, !dbg !1973
  call void @llvm.dbg.value(metadata i32 %7, metadata !1965, metadata !DIExpression()), !dbg !1972
  %8 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !1973
  %9 = load i8, ptr %8, align 1, !dbg !1973, !tbaa !101
  %10 = zext i8 %9 to i32, !dbg !1973
  call void @llvm.dbg.value(metadata i32 %10, metadata !1966, metadata !DIExpression()), !dbg !1972
  %11 = getelementptr inbounds i8, ptr %0, i64 -29, !dbg !1973
  %12 = load i8, ptr %11, align 1, !dbg !1973, !tbaa !101
  %13 = zext i8 %12 to i32, !dbg !1973
  call void @llvm.dbg.value(metadata i32 %13, metadata !1967, metadata !DIExpression()), !dbg !1972
  %14 = getelementptr inbounds i8, ptr %0, i64 -28, !dbg !1974
  %15 = load i8, ptr %14, align 1, !dbg !1974, !tbaa !101
  %16 = zext i8 %15 to i32, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %16, metadata !1968, metadata !DIExpression()), !dbg !1972
  %17 = getelementptr inbounds i8, ptr %0, i64 -27, !dbg !1974
  %18 = load i8, ptr %17, align 1, !dbg !1974, !tbaa !101
  %19 = zext i8 %18 to i32, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %19, metadata !1969, metadata !DIExpression()), !dbg !1972
  %20 = getelementptr inbounds i8, ptr %0, i64 -26, !dbg !1974
  %21 = load i8, ptr %20, align 1, !dbg !1974, !tbaa !101
  %22 = zext i8 %21 to i32, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %22, metadata !1970, metadata !DIExpression()), !dbg !1972
  %23 = getelementptr inbounds i8, ptr %0, i64 -25, !dbg !1974
  %24 = load i8, ptr %23, align 1, !dbg !1974, !tbaa !101
  %25 = zext i8 %24 to i32, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %25, metadata !1971, metadata !DIExpression()), !dbg !1972
  %26 = shl nuw nsw i32 %7, 1, !dbg !1975
  %27 = add nuw nsw i32 %10, 2, !dbg !1975
  %28 = add nuw nsw i32 %27, %4, !dbg !1975
  %29 = add nuw nsw i32 %28, %26, !dbg !1975
  %30 = lshr i32 %29, 2
  %31 = trunc i32 %30 to i8, !dbg !1975
  store i8 %31, ptr %0, align 1, !dbg !1976, !tbaa !101
  %32 = shl nuw nsw i32 %10, 1, !dbg !1977
  %33 = add nuw nsw i32 %13, 2, !dbg !1977
  %34 = add nuw nsw i32 %33, %7, !dbg !1977
  %35 = add nuw nsw i32 %34, %32, !dbg !1977
  %36 = lshr i32 %35, 2
  %37 = trunc i32 %36 to i8, !dbg !1977
  %38 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !1978
  store i8 %37, ptr %38, align 1, !dbg !1979, !tbaa !101
  %39 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1980
  store i8 %37, ptr %39, align 1, !dbg !1981, !tbaa !101
  %40 = shl nuw nsw i32 %13, 1, !dbg !1982
  %41 = add nuw nsw i32 %27, %40, !dbg !1982
  %42 = add nuw nsw i32 %41, %16, !dbg !1982
  %43 = lshr i32 %42, 2
  %44 = trunc i32 %43 to i8, !dbg !1982
  %45 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !1983
  store i8 %44, ptr %45, align 1, !dbg !1984, !tbaa !101
  %46 = getelementptr inbounds i8, ptr %0, i64 33, !dbg !1985
  store i8 %44, ptr %46, align 1, !dbg !1986, !tbaa !101
  %47 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1987
  store i8 %44, ptr %47, align 1, !dbg !1988, !tbaa !101
  %48 = shl nuw nsw i32 %16, 1, !dbg !1989
  %49 = add nuw nsw i32 %33, %48, !dbg !1989
  %50 = add nuw nsw i32 %49, %19, !dbg !1989
  %51 = lshr i32 %50, 2
  %52 = trunc i32 %51 to i8, !dbg !1989
  %53 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !1990
  store i8 %52, ptr %53, align 1, !dbg !1991, !tbaa !101
  %54 = getelementptr inbounds i8, ptr %0, i64 65, !dbg !1992
  store i8 %52, ptr %54, align 1, !dbg !1993, !tbaa !101
  %55 = getelementptr inbounds i8, ptr %0, i64 34, !dbg !1994
  store i8 %52, ptr %55, align 1, !dbg !1995, !tbaa !101
  %56 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1996
  store i8 %52, ptr %56, align 1, !dbg !1997, !tbaa !101
  %57 = shl nuw nsw i32 %19, 1, !dbg !1998
  %58 = add nuw nsw i32 %16, 2, !dbg !1998
  %59 = add nuw nsw i32 %58, %57, !dbg !1998
  %60 = add nuw nsw i32 %59, %22, !dbg !1998
  %61 = lshr i32 %60, 2
  %62 = trunc i32 %61 to i8, !dbg !1998
  %63 = getelementptr inbounds i8, ptr %0, i64 97, !dbg !1999
  store i8 %62, ptr %63, align 1, !dbg !2000, !tbaa !101
  %64 = getelementptr inbounds i8, ptr %0, i64 66, !dbg !2001
  store i8 %62, ptr %64, align 1, !dbg !2002, !tbaa !101
  %65 = getelementptr inbounds i8, ptr %0, i64 35, !dbg !2003
  store i8 %62, ptr %65, align 1, !dbg !2004, !tbaa !101
  %66 = shl nuw nsw i32 %22, 1, !dbg !2005
  %67 = add nuw nsw i32 %19, 2, !dbg !2005
  %68 = add nuw nsw i32 %67, %66, !dbg !2005
  %69 = add nuw nsw i32 %68, %25, !dbg !2005
  %70 = lshr i32 %69, 2
  %71 = trunc i32 %70 to i8, !dbg !2005
  %72 = getelementptr inbounds i8, ptr %0, i64 98, !dbg !2006
  store i8 %71, ptr %72, align 1, !dbg !2007, !tbaa !101
  %73 = getelementptr inbounds i8, ptr %0, i64 67, !dbg !2008
  store i8 %71, ptr %73, align 1, !dbg !2009, !tbaa !101
  %74 = shl nuw nsw i32 %25, 1, !dbg !2010
  %75 = add nuw nsw i32 %22, 2, !dbg !2010
  %76 = add nuw nsw i32 %75, %25, !dbg !2010
  %77 = add nuw nsw i32 %76, %74, !dbg !2010
  %78 = lshr i32 %77, 2
  %79 = trunc i32 %78 to i8, !dbg !2010
  %80 = getelementptr inbounds i8, ptr %0, i64 99, !dbg !2011
  store i8 %79, ptr %80, align 1, !dbg !2012, !tbaa !101
  ret void, !dbg !2013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_ddr(ptr nocapture noundef %0) #7 !dbg !2014 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2016, metadata !DIExpression()), !dbg !2026
  %2 = getelementptr inbounds i8, ptr %0, i64 -33, !dbg !2027
  %3 = load i8, ptr %2, align 1, !dbg !2027, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !2027
  call void @llvm.dbg.value(metadata i32 %4, metadata !2017, metadata !DIExpression()), !dbg !2026
  %5 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !2028
  %6 = load i8, ptr %5, align 1, !dbg !2028, !tbaa !101
  %7 = zext i8 %6 to i32, !dbg !2028
  call void @llvm.dbg.value(metadata i32 %7, metadata !2018, metadata !DIExpression()), !dbg !2026
  %8 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !2028
  %9 = load i8, ptr %8, align 1, !dbg !2028, !tbaa !101
  %10 = zext i8 %9 to i32, !dbg !2028
  call void @llvm.dbg.value(metadata i32 %10, metadata !2019, metadata !DIExpression()), !dbg !2026
  %11 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !2028
  %12 = load i8, ptr %11, align 1, !dbg !2028, !tbaa !101
  %13 = zext i8 %12 to i32, !dbg !2028
  call void @llvm.dbg.value(metadata i32 %13, metadata !2020, metadata !DIExpression()), !dbg !2026
  %14 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !2028
  %15 = load i8, ptr %14, align 1, !dbg !2028, !tbaa !101
  %16 = zext i8 %15 to i32, !dbg !2028
  call void @llvm.dbg.value(metadata i32 %16, metadata !2021, metadata !DIExpression()), !dbg !2026
  %17 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !2029
  %18 = load i8, ptr %17, align 1, !dbg !2029, !tbaa !101
  %19 = zext i8 %18 to i32, !dbg !2029
  call void @llvm.dbg.value(metadata i32 %19, metadata !2022, metadata !DIExpression()), !dbg !2026
  %20 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !2029
  %21 = load i8, ptr %20, align 1, !dbg !2029, !tbaa !101
  %22 = zext i8 %21 to i32, !dbg !2029
  call void @llvm.dbg.value(metadata i32 %22, metadata !2023, metadata !DIExpression()), !dbg !2026
  %23 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !2029
  %24 = load i8, ptr %23, align 1, !dbg !2029, !tbaa !101
  %25 = zext i8 %24 to i32, !dbg !2029
  call void @llvm.dbg.value(metadata i32 %25, metadata !2024, metadata !DIExpression()), !dbg !2026
  %26 = getelementptr inbounds i8, ptr %0, i64 -29, !dbg !2029
  %27 = load i8, ptr %26, align 1, !dbg !2029, !tbaa !101
  %28 = zext i8 %27 to i32, !dbg !2029
  call void @llvm.dbg.value(metadata i32 %28, metadata !2025, metadata !DIExpression()), !dbg !2026
  %29 = shl nuw nsw i32 %25, 1, !dbg !2030
  %30 = add nuw nsw i32 %22, 2, !dbg !2030
  %31 = add nuw nsw i32 %30, %28, !dbg !2030
  %32 = add nuw nsw i32 %31, %29, !dbg !2030
  %33 = lshr i32 %32, 2
  %34 = trunc i32 %33 to i8, !dbg !2030
  %35 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !2031
  store i8 %34, ptr %35, align 1, !dbg !2032, !tbaa !101
  %36 = shl nuw nsw i32 %22, 1, !dbg !2033
  %37 = add nuw nsw i32 %19, 2, !dbg !2033
  %38 = add nuw nsw i32 %37, %25, !dbg !2033
  %39 = add nuw nsw i32 %38, %36, !dbg !2033
  %40 = lshr i32 %39, 2
  %41 = trunc i32 %40 to i8, !dbg !2033
  %42 = getelementptr inbounds i8, ptr %0, i64 35, !dbg !2034
  store i8 %41, ptr %42, align 1, !dbg !2035, !tbaa !101
  %43 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !2036
  store i8 %41, ptr %43, align 1, !dbg !2037, !tbaa !101
  %44 = shl nuw nsw i32 %19, 1, !dbg !2038
  %45 = add nuw nsw i32 %4, 2, !dbg !2038
  %46 = add nuw nsw i32 %45, %22, !dbg !2038
  %47 = add nuw nsw i32 %46, %44, !dbg !2038
  %48 = lshr i32 %47, 2
  %49 = trunc i32 %48 to i8, !dbg !2038
  %50 = getelementptr inbounds i8, ptr %0, i64 67, !dbg !2039
  store i8 %49, ptr %50, align 1, !dbg !2040, !tbaa !101
  %51 = getelementptr inbounds i8, ptr %0, i64 34, !dbg !2041
  store i8 %49, ptr %51, align 1, !dbg !2042, !tbaa !101
  %52 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !2043
  store i8 %49, ptr %52, align 1, !dbg !2044, !tbaa !101
  %53 = shl nuw nsw i32 %4, 1, !dbg !2045
  %54 = add nuw nsw i32 %7, 2, !dbg !2045
  %55 = add nuw nsw i32 %54, %53, !dbg !2045
  %56 = add nuw nsw i32 %55, %19, !dbg !2045
  %57 = lshr i32 %56, 2
  %58 = trunc i32 %57 to i8, !dbg !2045
  %59 = getelementptr inbounds i8, ptr %0, i64 99, !dbg !2046
  store i8 %58, ptr %59, align 1, !dbg !2047, !tbaa !101
  %60 = getelementptr inbounds i8, ptr %0, i64 66, !dbg !2048
  store i8 %58, ptr %60, align 1, !dbg !2049, !tbaa !101
  %61 = getelementptr inbounds i8, ptr %0, i64 33, !dbg !2050
  store i8 %58, ptr %61, align 1, !dbg !2051, !tbaa !101
  store i8 %58, ptr %0, align 1, !dbg !2052, !tbaa !101
  %62 = shl nuw nsw i32 %7, 1, !dbg !2053
  %63 = add nuw nsw i32 %45, %62, !dbg !2053
  %64 = add nuw nsw i32 %63, %10, !dbg !2053
  %65 = lshr i32 %64, 2
  %66 = trunc i32 %65 to i8, !dbg !2053
  %67 = getelementptr inbounds i8, ptr %0, i64 98, !dbg !2054
  store i8 %66, ptr %67, align 1, !dbg !2055, !tbaa !101
  %68 = getelementptr inbounds i8, ptr %0, i64 65, !dbg !2056
  store i8 %66, ptr %68, align 1, !dbg !2057, !tbaa !101
  %69 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !2058
  store i8 %66, ptr %69, align 1, !dbg !2059, !tbaa !101
  %70 = shl nuw nsw i32 %10, 1, !dbg !2060
  %71 = add nuw nsw i32 %54, %70, !dbg !2060
  %72 = add nuw nsw i32 %71, %13, !dbg !2060
  %73 = lshr i32 %72, 2
  %74 = trunc i32 %73 to i8, !dbg !2060
  %75 = getelementptr inbounds i8, ptr %0, i64 97, !dbg !2061
  store i8 %74, ptr %75, align 1, !dbg !2062, !tbaa !101
  %76 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !2063
  store i8 %74, ptr %76, align 1, !dbg !2064, !tbaa !101
  %77 = shl nuw nsw i32 %13, 1, !dbg !2065
  %78 = add nuw nsw i32 %10, 2, !dbg !2065
  %79 = add nuw nsw i32 %78, %77, !dbg !2065
  %80 = add nuw nsw i32 %79, %16, !dbg !2065
  %81 = lshr i32 %80, 2
  %82 = trunc i32 %81 to i8, !dbg !2065
  %83 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !2066
  store i8 %82, ptr %83, align 1, !dbg !2067, !tbaa !101
  ret void, !dbg !2068
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_vr(ptr nocapture noundef %0) #7 !dbg !2069 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2071, metadata !DIExpression()), !dbg !2081
  %2 = getelementptr inbounds i8, ptr %0, i64 -33, !dbg !2082
  %3 = load i8, ptr %2, align 1, !dbg !2082, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %4, metadata !2072, metadata !DIExpression()), !dbg !2081
  %5 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !2083
  %6 = load i8, ptr %5, align 1, !dbg !2083, !tbaa !101
  %7 = zext i8 %6 to i32, !dbg !2083
  call void @llvm.dbg.value(metadata i32 %7, metadata !2073, metadata !DIExpression()), !dbg !2081
  %8 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !2083
  %9 = load i8, ptr %8, align 1, !dbg !2083, !tbaa !101
  %10 = zext i8 %9 to i32, !dbg !2083
  call void @llvm.dbg.value(metadata i32 %10, metadata !2074, metadata !DIExpression()), !dbg !2081
  %11 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !2083
  %12 = load i8, ptr %11, align 1, !dbg !2083, !tbaa !101
  %13 = zext i8 %12 to i32, !dbg !2083
  call void @llvm.dbg.value(metadata i32 %13, metadata !2075, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8 poison, metadata !2076, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2081
  %14 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !2084
  %15 = load i8, ptr %14, align 1, !dbg !2084, !tbaa !101
  %16 = zext i8 %15 to i32, !dbg !2084
  call void @llvm.dbg.value(metadata i32 %16, metadata !2077, metadata !DIExpression()), !dbg !2081
  %17 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !2084
  %18 = load i8, ptr %17, align 1, !dbg !2084, !tbaa !101
  %19 = zext i8 %18 to i32, !dbg !2084
  call void @llvm.dbg.value(metadata i32 %19, metadata !2078, metadata !DIExpression()), !dbg !2081
  %20 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !2084
  %21 = load i8, ptr %20, align 1, !dbg !2084, !tbaa !101
  %22 = zext i8 %21 to i32, !dbg !2084
  call void @llvm.dbg.value(metadata i32 %22, metadata !2079, metadata !DIExpression()), !dbg !2081
  %23 = getelementptr inbounds i8, ptr %0, i64 -29, !dbg !2084
  %24 = load i8, ptr %23, align 1, !dbg !2084, !tbaa !101
  %25 = zext i8 %24 to i32, !dbg !2084
  call void @llvm.dbg.value(metadata i32 %25, metadata !2080, metadata !DIExpression()), !dbg !2081
  %26 = shl nuw nsw i32 %10, 1, !dbg !2085
  %27 = add nuw nsw i32 %7, 2, !dbg !2085
  %28 = add nuw nsw i32 %27, %13, !dbg !2085
  %29 = add nuw nsw i32 %28, %26, !dbg !2085
  %30 = lshr i32 %29, 2
  %31 = trunc i32 %30 to i8, !dbg !2085
  %32 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !2086
  store i8 %31, ptr %32, align 1, !dbg !2087, !tbaa !101
  %33 = shl nuw nsw i32 %7, 1, !dbg !2088
  %34 = add nuw nsw i32 %4, 2, !dbg !2088
  %35 = add nuw nsw i32 %34, %10, !dbg !2088
  %36 = add nuw nsw i32 %35, %33, !dbg !2088
  %37 = lshr i32 %36, 2
  %38 = trunc i32 %37 to i8, !dbg !2088
  %39 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !2089
  store i8 %38, ptr %39, align 1, !dbg !2090, !tbaa !101
  %40 = shl nuw nsw i32 %4, 1, !dbg !2091
  %41 = add nuw nsw i32 %27, %40, !dbg !2091
  %42 = add nuw nsw i32 %41, %16, !dbg !2091
  %43 = lshr i32 %42, 2
  %44 = trunc i32 %43 to i8, !dbg !2091
  %45 = getelementptr inbounds i8, ptr %0, i64 97, !dbg !2092
  store i8 %44, ptr %45, align 1, !dbg !2093, !tbaa !101
  %46 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !2094
  store i8 %44, ptr %46, align 1, !dbg !2095, !tbaa !101
  %47 = add nuw nsw i32 %16, 1, !dbg !2096
  %48 = add nuw nsw i32 %47, %4, !dbg !2096
  %49 = lshr i32 %48, 1
  %50 = trunc i32 %49 to i8, !dbg !2096
  %51 = getelementptr inbounds i8, ptr %0, i64 65, !dbg !2097
  store i8 %50, ptr %51, align 1, !dbg !2098, !tbaa !101
  store i8 %50, ptr %0, align 1, !dbg !2099, !tbaa !101
  %52 = shl nuw nsw i32 %16, 1, !dbg !2100
  %53 = add nuw nsw i32 %34, %52, !dbg !2100
  %54 = add nuw nsw i32 %53, %19, !dbg !2100
  %55 = lshr i32 %54, 2
  %56 = trunc i32 %55 to i8, !dbg !2100
  %57 = getelementptr inbounds i8, ptr %0, i64 98, !dbg !2101
  store i8 %56, ptr %57, align 1, !dbg !2102, !tbaa !101
  %58 = getelementptr inbounds i8, ptr %0, i64 33, !dbg !2103
  store i8 %56, ptr %58, align 1, !dbg !2104, !tbaa !101
  %59 = add nuw nsw i32 %47, %19, !dbg !2105
  %60 = lshr i32 %59, 1
  %61 = trunc i32 %60 to i8, !dbg !2105
  %62 = getelementptr inbounds i8, ptr %0, i64 66, !dbg !2106
  store i8 %61, ptr %62, align 1, !dbg !2107, !tbaa !101
  %63 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !2108
  store i8 %61, ptr %63, align 1, !dbg !2109, !tbaa !101
  %64 = shl nuw nsw i32 %19, 1, !dbg !2110
  %65 = add nuw nsw i32 %16, 2, !dbg !2110
  %66 = add nuw nsw i32 %65, %64, !dbg !2110
  %67 = add nuw nsw i32 %66, %22, !dbg !2110
  %68 = lshr i32 %67, 2
  %69 = trunc i32 %68 to i8, !dbg !2110
  %70 = getelementptr inbounds i8, ptr %0, i64 99, !dbg !2111
  store i8 %69, ptr %70, align 1, !dbg !2112, !tbaa !101
  %71 = getelementptr inbounds i8, ptr %0, i64 34, !dbg !2113
  store i8 %69, ptr %71, align 1, !dbg !2114, !tbaa !101
  %72 = add nuw nsw i32 %19, 1, !dbg !2115
  %73 = add nuw nsw i32 %72, %22, !dbg !2115
  %74 = lshr i32 %73, 1
  %75 = trunc i32 %74 to i8, !dbg !2115
  %76 = getelementptr inbounds i8, ptr %0, i64 67, !dbg !2116
  store i8 %75, ptr %76, align 1, !dbg !2117, !tbaa !101
  %77 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !2118
  store i8 %75, ptr %77, align 1, !dbg !2119, !tbaa !101
  %78 = shl nuw nsw i32 %22, 1, !dbg !2120
  %79 = add nuw nsw i32 %19, 2, !dbg !2120
  %80 = add nuw nsw i32 %79, %78, !dbg !2120
  %81 = add nuw nsw i32 %80, %25, !dbg !2120
  %82 = lshr i32 %81, 2
  %83 = trunc i32 %82 to i8, !dbg !2120
  %84 = getelementptr inbounds i8, ptr %0, i64 35, !dbg !2121
  store i8 %83, ptr %84, align 1, !dbg !2122, !tbaa !101
  %85 = add nuw nsw i32 %22, 1, !dbg !2123
  %86 = add nuw nsw i32 %85, %25, !dbg !2123
  %87 = lshr i32 %86, 1
  %88 = trunc i32 %87 to i8, !dbg !2123
  %89 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !2124
  store i8 %88, ptr %89, align 1, !dbg !2125, !tbaa !101
  ret void, !dbg !2126
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_hd(ptr nocapture noundef %0) #7 !dbg !2127 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2129, metadata !DIExpression()), !dbg !2139
  %2 = getelementptr inbounds i8, ptr %0, i64 -33, !dbg !2140
  %3 = load i8, ptr %2, align 1, !dbg !2140, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !2140
  call void @llvm.dbg.value(metadata i32 %4, metadata !2130, metadata !DIExpression()), !dbg !2139
  %5 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !2141
  %6 = load i8, ptr %5, align 1, !dbg !2141, !tbaa !101
  %7 = zext i8 %6 to i32, !dbg !2141
  call void @llvm.dbg.value(metadata i32 %7, metadata !2131, metadata !DIExpression()), !dbg !2139
  %8 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !2141
  %9 = load i8, ptr %8, align 1, !dbg !2141, !tbaa !101
  %10 = zext i8 %9 to i32, !dbg !2141
  call void @llvm.dbg.value(metadata i32 %10, metadata !2132, metadata !DIExpression()), !dbg !2139
  %11 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !2141
  %12 = load i8, ptr %11, align 1, !dbg !2141, !tbaa !101
  %13 = zext i8 %12 to i32, !dbg !2141
  call void @llvm.dbg.value(metadata i32 %13, metadata !2133, metadata !DIExpression()), !dbg !2139
  %14 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !2141
  %15 = load i8, ptr %14, align 1, !dbg !2141, !tbaa !101
  %16 = zext i8 %15 to i32, !dbg !2141
  call void @llvm.dbg.value(metadata i32 %16, metadata !2134, metadata !DIExpression()), !dbg !2139
  %17 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !2142
  %18 = load i8, ptr %17, align 1, !dbg !2142, !tbaa !101
  %19 = zext i8 %18 to i32, !dbg !2142
  call void @llvm.dbg.value(metadata i32 %19, metadata !2135, metadata !DIExpression()), !dbg !2139
  %20 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !2142
  %21 = load i8, ptr %20, align 1, !dbg !2142, !tbaa !101
  %22 = zext i8 %21 to i32, !dbg !2142
  call void @llvm.dbg.value(metadata i32 %22, metadata !2136, metadata !DIExpression()), !dbg !2139
  %23 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !2142
  %24 = load i8, ptr %23, align 1, !dbg !2142, !tbaa !101
  %25 = zext i8 %24 to i32, !dbg !2142
  call void @llvm.dbg.value(metadata i32 %25, metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 poison, metadata !2138, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2139
  %26 = add nuw nsw i32 %13, 1, !dbg !2143
  %27 = add nuw nsw i32 %26, %16, !dbg !2143
  %28 = lshr i32 %27, 1
  %29 = trunc i32 %28 to i8, !dbg !2143
  %30 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !2144
  store i8 %29, ptr %30, align 1, !dbg !2145, !tbaa !101
  %31 = shl nuw nsw i32 %13, 1, !dbg !2146
  %32 = add nuw nsw i32 %10, 2, !dbg !2146
  %33 = add nuw nsw i32 %32, %31, !dbg !2146
  %34 = add nuw nsw i32 %33, %16, !dbg !2146
  %35 = lshr i32 %34, 2
  %36 = trunc i32 %35 to i8, !dbg !2146
  %37 = getelementptr inbounds i8, ptr %0, i64 97, !dbg !2147
  store i8 %36, ptr %37, align 1, !dbg !2148, !tbaa !101
  %38 = add nuw nsw i32 %10, 1, !dbg !2149
  %39 = add nuw nsw i32 %38, %13, !dbg !2149
  %40 = lshr i32 %39, 1
  %41 = trunc i32 %40 to i8, !dbg !2149
  %42 = getelementptr inbounds i8, ptr %0, i64 98, !dbg !2150
  store i8 %41, ptr %42, align 1, !dbg !2151, !tbaa !101
  %43 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !2152
  store i8 %41, ptr %43, align 1, !dbg !2153, !tbaa !101
  %44 = shl nuw nsw i32 %10, 1, !dbg !2154
  %45 = add nuw nsw i32 %7, 2, !dbg !2154
  %46 = add nuw nsw i32 %45, %44, !dbg !2154
  %47 = add nuw nsw i32 %46, %13, !dbg !2154
  %48 = lshr i32 %47, 2
  %49 = trunc i32 %48 to i8, !dbg !2154
  %50 = getelementptr inbounds i8, ptr %0, i64 99, !dbg !2155
  store i8 %49, ptr %50, align 1, !dbg !2156, !tbaa !101
  %51 = getelementptr inbounds i8, ptr %0, i64 65, !dbg !2157
  store i8 %49, ptr %51, align 1, !dbg !2158, !tbaa !101
  %52 = add nuw nsw i32 %7, 1, !dbg !2159
  %53 = add nuw nsw i32 %52, %10, !dbg !2159
  %54 = lshr i32 %53, 1
  %55 = trunc i32 %54 to i8, !dbg !2159
  %56 = getelementptr inbounds i8, ptr %0, i64 66, !dbg !2160
  store i8 %55, ptr %56, align 1, !dbg !2161, !tbaa !101
  %57 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !2162
  store i8 %55, ptr %57, align 1, !dbg !2163, !tbaa !101
  %58 = shl nuw nsw i32 %7, 1, !dbg !2164
  %59 = add nuw nsw i32 %4, 2, !dbg !2164
  %60 = add nuw nsw i32 %59, %58, !dbg !2164
  %61 = add nuw nsw i32 %60, %10, !dbg !2164
  %62 = lshr i32 %61, 2
  %63 = trunc i32 %62 to i8, !dbg !2164
  %64 = getelementptr inbounds i8, ptr %0, i64 67, !dbg !2165
  store i8 %63, ptr %64, align 1, !dbg !2166, !tbaa !101
  %65 = getelementptr inbounds i8, ptr %0, i64 33, !dbg !2167
  store i8 %63, ptr %65, align 1, !dbg !2168, !tbaa !101
  %66 = add nuw nsw i32 %52, %4, !dbg !2169
  %67 = lshr i32 %66, 1
  %68 = trunc i32 %67 to i8, !dbg !2169
  %69 = getelementptr inbounds i8, ptr %0, i64 34, !dbg !2170
  store i8 %68, ptr %69, align 1, !dbg !2171, !tbaa !101
  store i8 %68, ptr %0, align 1, !dbg !2172, !tbaa !101
  %70 = shl nuw nsw i32 %4, 1, !dbg !2173
  %71 = add nuw nsw i32 %45, %70, !dbg !2173
  %72 = add nuw nsw i32 %71, %19, !dbg !2173
  %73 = lshr i32 %72, 2
  %74 = trunc i32 %73 to i8, !dbg !2173
  %75 = getelementptr inbounds i8, ptr %0, i64 35, !dbg !2174
  store i8 %74, ptr %75, align 1, !dbg !2175, !tbaa !101
  %76 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !2176
  store i8 %74, ptr %76, align 1, !dbg !2177, !tbaa !101
  %77 = shl nuw nsw i32 %19, 1, !dbg !2178
  %78 = add nuw nsw i32 %59, %22, !dbg !2178
  %79 = add nuw nsw i32 %78, %77, !dbg !2178
  %80 = lshr i32 %79, 2
  %81 = trunc i32 %80 to i8, !dbg !2178
  %82 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !2179
  store i8 %81, ptr %82, align 1, !dbg !2180, !tbaa !101
  %83 = shl nuw nsw i32 %22, 1, !dbg !2181
  %84 = add nuw nsw i32 %19, 2, !dbg !2181
  %85 = add nuw nsw i32 %84, %25, !dbg !2181
  %86 = add nuw nsw i32 %85, %83, !dbg !2181
  %87 = lshr i32 %86, 2
  %88 = trunc i32 %87 to i8, !dbg !2181
  %89 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !2182
  store i8 %88, ptr %89, align 1, !dbg !2183, !tbaa !101
  ret void, !dbg !2184
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_vl(ptr nocapture noundef %0) #7 !dbg !2185 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2187, metadata !DIExpression()), !dbg !2196
  %2 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !2197
  %3 = load i8, ptr %2, align 1, !dbg !2197, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !2197
  call void @llvm.dbg.value(metadata i32 %4, metadata !2188, metadata !DIExpression()), !dbg !2196
  %5 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !2197
  %6 = load i8, ptr %5, align 1, !dbg !2197, !tbaa !101
  %7 = zext i8 %6 to i32, !dbg !2197
  call void @llvm.dbg.value(metadata i32 %7, metadata !2189, metadata !DIExpression()), !dbg !2196
  %8 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !2197
  %9 = load i8, ptr %8, align 1, !dbg !2197, !tbaa !101
  %10 = zext i8 %9 to i32, !dbg !2197
  call void @llvm.dbg.value(metadata i32 %10, metadata !2190, metadata !DIExpression()), !dbg !2196
  %11 = getelementptr inbounds i8, ptr %0, i64 -29, !dbg !2197
  %12 = load i8, ptr %11, align 1, !dbg !2197, !tbaa !101
  %13 = zext i8 %12 to i32, !dbg !2197
  call void @llvm.dbg.value(metadata i32 %13, metadata !2191, metadata !DIExpression()), !dbg !2196
  %14 = getelementptr inbounds i8, ptr %0, i64 -28, !dbg !2198
  %15 = load i8, ptr %14, align 1, !dbg !2198, !tbaa !101
  %16 = zext i8 %15 to i32, !dbg !2198
  call void @llvm.dbg.value(metadata i32 %16, metadata !2192, metadata !DIExpression()), !dbg !2196
  %17 = getelementptr inbounds i8, ptr %0, i64 -27, !dbg !2198
  %18 = load i8, ptr %17, align 1, !dbg !2198, !tbaa !101
  %19 = zext i8 %18 to i32, !dbg !2198
  call void @llvm.dbg.value(metadata i32 %19, metadata !2193, metadata !DIExpression()), !dbg !2196
  %20 = getelementptr inbounds i8, ptr %0, i64 -26, !dbg !2198
  %21 = load i8, ptr %20, align 1, !dbg !2198, !tbaa !101
  %22 = zext i8 %21 to i32, !dbg !2198
  call void @llvm.dbg.value(metadata i32 %22, metadata !2194, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2196
  %23 = add nuw nsw i32 %7, 1, !dbg !2199
  %24 = add nuw nsw i32 %23, %4, !dbg !2199
  %25 = lshr i32 %24, 1
  %26 = trunc i32 %25 to i8, !dbg !2199
  store i8 %26, ptr %0, align 1, !dbg !2200, !tbaa !101
  %27 = shl nuw nsw i32 %7, 1, !dbg !2201
  %28 = add nuw nsw i32 %10, 2, !dbg !2201
  %29 = add nuw nsw i32 %28, %4, !dbg !2201
  %30 = add nuw nsw i32 %29, %27, !dbg !2201
  %31 = lshr i32 %30, 2
  %32 = trunc i32 %31 to i8, !dbg !2201
  %33 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !2202
  store i8 %32, ptr %33, align 1, !dbg !2203, !tbaa !101
  %34 = add nuw nsw i32 %23, %10, !dbg !2204
  %35 = lshr i32 %34, 1
  %36 = trunc i32 %35 to i8, !dbg !2204
  %37 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !2205
  store i8 %36, ptr %37, align 1, !dbg !2206, !tbaa !101
  %38 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !2207
  store i8 %36, ptr %38, align 1, !dbg !2208, !tbaa !101
  %39 = shl nuw nsw i32 %10, 1, !dbg !2209
  %40 = add nuw nsw i32 %13, 2, !dbg !2209
  %41 = add nuw nsw i32 %40, %7, !dbg !2209
  %42 = add nuw nsw i32 %41, %39, !dbg !2209
  %43 = lshr i32 %42, 2
  %44 = trunc i32 %43 to i8, !dbg !2209
  %45 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !2210
  store i8 %44, ptr %45, align 1, !dbg !2211, !tbaa !101
  %46 = getelementptr inbounds i8, ptr %0, i64 33, !dbg !2212
  store i8 %44, ptr %46, align 1, !dbg !2213, !tbaa !101
  %47 = add nuw nsw i32 %10, 1, !dbg !2214
  %48 = add nuw nsw i32 %47, %13, !dbg !2214
  %49 = lshr i32 %48, 1
  %50 = trunc i32 %49 to i8, !dbg !2214
  %51 = getelementptr inbounds i8, ptr %0, i64 65, !dbg !2215
  store i8 %50, ptr %51, align 1, !dbg !2216, !tbaa !101
  %52 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !2217
  store i8 %50, ptr %52, align 1, !dbg !2218, !tbaa !101
  %53 = shl nuw nsw i32 %13, 1, !dbg !2219
  %54 = add nuw nsw i32 %28, %53, !dbg !2219
  %55 = add nuw nsw i32 %54, %16, !dbg !2219
  %56 = lshr i32 %55, 2
  %57 = trunc i32 %56 to i8, !dbg !2219
  %58 = getelementptr inbounds i8, ptr %0, i64 97, !dbg !2220
  store i8 %57, ptr %58, align 1, !dbg !2221, !tbaa !101
  %59 = getelementptr inbounds i8, ptr %0, i64 34, !dbg !2222
  store i8 %57, ptr %59, align 1, !dbg !2223, !tbaa !101
  %60 = add nuw nsw i32 %13, 1, !dbg !2224
  %61 = add nuw nsw i32 %60, %16, !dbg !2224
  %62 = lshr i32 %61, 1
  %63 = trunc i32 %62 to i8, !dbg !2224
  %64 = getelementptr inbounds i8, ptr %0, i64 66, !dbg !2225
  store i8 %63, ptr %64, align 1, !dbg !2226, !tbaa !101
  %65 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !2227
  store i8 %63, ptr %65, align 1, !dbg !2228, !tbaa !101
  %66 = shl nuw nsw i32 %16, 1, !dbg !2229
  %67 = add nuw nsw i32 %40, %66, !dbg !2229
  %68 = add nuw nsw i32 %67, %19, !dbg !2229
  %69 = lshr i32 %68, 2
  %70 = trunc i32 %69 to i8, !dbg !2229
  %71 = getelementptr inbounds i8, ptr %0, i64 98, !dbg !2230
  store i8 %70, ptr %71, align 1, !dbg !2231, !tbaa !101
  %72 = getelementptr inbounds i8, ptr %0, i64 35, !dbg !2232
  store i8 %70, ptr %72, align 1, !dbg !2233, !tbaa !101
  %73 = add nuw nsw i32 %16, 1, !dbg !2234
  %74 = add nuw nsw i32 %73, %19, !dbg !2234
  %75 = lshr i32 %74, 1
  %76 = trunc i32 %75 to i8, !dbg !2234
  %77 = getelementptr inbounds i8, ptr %0, i64 67, !dbg !2235
  store i8 %76, ptr %77, align 1, !dbg !2236, !tbaa !101
  %78 = shl nuw nsw i32 %19, 1, !dbg !2237
  %79 = add nuw nsw i32 %16, 2, !dbg !2237
  %80 = add nuw nsw i32 %79, %78, !dbg !2237
  %81 = add nuw nsw i32 %80, %22, !dbg !2237
  %82 = lshr i32 %81, 2
  %83 = trunc i32 %82 to i8, !dbg !2237
  %84 = getelementptr inbounds i8, ptr %0, i64 99, !dbg !2238
  store i8 %83, ptr %84, align 1, !dbg !2239, !tbaa !101
  ret void, !dbg !2240
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_hu(ptr nocapture noundef %0) #7 !dbg !2241 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2243, metadata !DIExpression()), !dbg !2248
  %2 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !2249
  %3 = load i8, ptr %2, align 1, !dbg !2249, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !2249
  call void @llvm.dbg.value(metadata i32 %4, metadata !2244, metadata !DIExpression()), !dbg !2248
  %5 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !2249
  %6 = load i8, ptr %5, align 1, !dbg !2249, !tbaa !101
  %7 = zext i8 %6 to i32, !dbg !2249
  call void @llvm.dbg.value(metadata i32 %7, metadata !2245, metadata !DIExpression()), !dbg !2248
  %8 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !2249
  %9 = load i8, ptr %8, align 1, !dbg !2249, !tbaa !101
  %10 = zext i8 %9 to i32, !dbg !2249
  call void @llvm.dbg.value(metadata i32 %10, metadata !2246, metadata !DIExpression()), !dbg !2248
  %11 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !2249
  %12 = load i8, ptr %11, align 1, !dbg !2249, !tbaa !101
  %13 = zext i8 %12 to i32, !dbg !2249
  call void @llvm.dbg.value(metadata i32 %13, metadata !2247, metadata !DIExpression()), !dbg !2248
  %14 = add nuw nsw i32 %7, 1, !dbg !2250
  %15 = add nuw nsw i32 %14, %4, !dbg !2250
  %16 = lshr i32 %15, 1
  %17 = trunc i32 %16 to i8, !dbg !2250
  store i8 %17, ptr %0, align 1, !dbg !2251, !tbaa !101
  %18 = shl nuw nsw i32 %7, 1, !dbg !2252
  %19 = add nuw nsw i32 %10, 2, !dbg !2252
  %20 = add nuw nsw i32 %19, %4, !dbg !2252
  %21 = add nuw nsw i32 %20, %18, !dbg !2252
  %22 = lshr i32 %21, 2
  %23 = trunc i32 %22 to i8, !dbg !2252
  %24 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !2253
  store i8 %23, ptr %24, align 1, !dbg !2254, !tbaa !101
  %25 = add nuw nsw i32 %14, %10, !dbg !2255
  %26 = lshr i32 %25, 1
  %27 = trunc i32 %26 to i8, !dbg !2255
  %28 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !2256
  store i8 %27, ptr %28, align 1, !dbg !2257, !tbaa !101
  %29 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !2258
  store i8 %27, ptr %29, align 1, !dbg !2259, !tbaa !101
  %30 = shl nuw nsw i32 %10, 1, !dbg !2260
  %31 = add nuw nsw i32 %13, 2, !dbg !2260
  %32 = add nuw nsw i32 %31, %7, !dbg !2260
  %33 = add nuw nsw i32 %32, %30, !dbg !2260
  %34 = lshr i32 %33, 2
  %35 = trunc i32 %34 to i8, !dbg !2260
  %36 = getelementptr inbounds i8, ptr %0, i64 33, !dbg !2261
  store i8 %35, ptr %36, align 1, !dbg !2262, !tbaa !101
  %37 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !2263
  store i8 %35, ptr %37, align 1, !dbg !2264, !tbaa !101
  %38 = add nuw nsw i32 %10, 1, !dbg !2265
  %39 = add nuw nsw i32 %38, %13, !dbg !2265
  %40 = lshr i32 %39, 1
  %41 = trunc i32 %40 to i8, !dbg !2265
  %42 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !2266
  store i8 %41, ptr %42, align 1, !dbg !2267, !tbaa !101
  %43 = getelementptr inbounds i8, ptr %0, i64 34, !dbg !2268
  store i8 %41, ptr %43, align 1, !dbg !2269, !tbaa !101
  %44 = shl nuw nsw i32 %13, 1, !dbg !2270
  %45 = add nuw nsw i32 %19, %13, !dbg !2270
  %46 = add nuw nsw i32 %45, %44, !dbg !2270
  %47 = lshr i32 %46, 2
  %48 = trunc i32 %47 to i8, !dbg !2270
  %49 = getelementptr inbounds i8, ptr %0, i64 65, !dbg !2271
  store i8 %48, ptr %49, align 1, !dbg !2272, !tbaa !101
  %50 = getelementptr inbounds i8, ptr %0, i64 35, !dbg !2273
  store i8 %48, ptr %50, align 1, !dbg !2274, !tbaa !101
  %51 = getelementptr inbounds i8, ptr %0, i64 66, !dbg !2275
  store i8 %12, ptr %51, align 1, !dbg !2276, !tbaa !101
  %52 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !2277
  %53 = insertelement <4 x i8> poison, i8 %12, i64 0, !dbg !2278
  %54 = shufflevector <4 x i8> %53, <4 x i8> poison, <4 x i32> zeroinitializer, !dbg !2278
  store <4 x i8> %54, ptr %52, align 1, !dbg !2279, !tbaa !101
  %55 = getelementptr inbounds i8, ptr %0, i64 67, !dbg !2280
  store i8 %12, ptr %55, align 1, !dbg !2281, !tbaa !101
  ret void, !dbg !2282
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_dc_left(ptr nocapture noundef %0) #7 !dbg !2283 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2285, metadata !DIExpression()), !dbg !2287
  %2 = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !2288
  %3 = load i8, ptr %2, align 1, !dbg !2288, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !2288
  %5 = getelementptr inbounds i8, ptr %0, i64 31, !dbg !2289
  %6 = load i8, ptr %5, align 1, !dbg !2289, !tbaa !101
  %7 = zext i8 %6 to i32, !dbg !2289
  %8 = getelementptr inbounds i8, ptr %0, i64 63, !dbg !2290
  %9 = load i8, ptr %8, align 1, !dbg !2290, !tbaa !101
  %10 = zext i8 %9 to i32, !dbg !2290
  %11 = getelementptr inbounds i8, ptr %0, i64 95, !dbg !2291
  %12 = load i8, ptr %11, align 1, !dbg !2291, !tbaa !101
  %13 = zext i8 %12 to i32, !dbg !2291
  %14 = add nuw nsw i32 %4, 2, !dbg !2292
  %15 = add nuw nsw i32 %14, %7, !dbg !2293
  %16 = add nuw nsw i32 %15, %10, !dbg !2294
  %17 = add nuw nsw i32 %16, %13, !dbg !2295
  %18 = lshr i32 %17, 2
  %19 = mul nuw nsw i32 %18, 16843009, !dbg !2296
  call void @llvm.dbg.value(metadata i32 %19, metadata !2286, metadata !DIExpression()), !dbg !2287
  %20 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !2297
  store i32 %19, ptr %20, align 4, !dbg !2297, !tbaa !248
  %21 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !2297
  store i32 %19, ptr %21, align 4, !dbg !2297, !tbaa !248
  %22 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !2297
  store i32 %19, ptr %22, align 4, !dbg !2297, !tbaa !248
  store i32 %19, ptr %0, align 4, !dbg !2297, !tbaa !248
  ret void, !dbg !2298
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_dc_top(ptr nocapture noundef %0) #7 !dbg !2299 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2301, metadata !DIExpression()), !dbg !2303
  %2 = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !2304
  %3 = load i8, ptr %2, align 1, !dbg !2304, !tbaa !101
  %4 = zext i8 %3 to i32, !dbg !2304
  %5 = getelementptr inbounds i8, ptr %0, i64 -31, !dbg !2305
  %6 = load i8, ptr %5, align 1, !dbg !2305, !tbaa !101
  %7 = zext i8 %6 to i32, !dbg !2305
  %8 = getelementptr inbounds i8, ptr %0, i64 -30, !dbg !2306
  %9 = load i8, ptr %8, align 1, !dbg !2306, !tbaa !101
  %10 = zext i8 %9 to i32, !dbg !2306
  %11 = getelementptr inbounds i8, ptr %0, i64 -29, !dbg !2307
  %12 = load i8, ptr %11, align 1, !dbg !2307, !tbaa !101
  %13 = zext i8 %12 to i32, !dbg !2307
  %14 = add nuw nsw i32 %4, 2, !dbg !2308
  %15 = add nuw nsw i32 %14, %7, !dbg !2309
  %16 = add nuw nsw i32 %15, %10, !dbg !2310
  %17 = add nuw nsw i32 %16, %13, !dbg !2311
  %18 = lshr i32 %17, 2
  %19 = mul nuw nsw i32 %18, 16843009, !dbg !2312
  call void @llvm.dbg.value(metadata i32 %19, metadata !2302, metadata !DIExpression()), !dbg !2303
  %20 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !2313
  store i32 %19, ptr %20, align 4, !dbg !2313, !tbaa !248
  %21 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !2313
  store i32 %19, ptr %21, align 4, !dbg !2313, !tbaa !248
  %22 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !2313
  store i32 %19, ptr %22, align 4, !dbg !2313, !tbaa !248
  store i32 %19, ptr %0, align 4, !dbg !2313, !tbaa !248
  ret void, !dbg !2314
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @predict_4x4_dc_128(ptr nocapture noundef writeonly %0) #8 !dbg !2315 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2317, metadata !DIExpression()), !dbg !2318
  %2 = getelementptr inbounds i8, ptr %0, i64 96, !dbg !2319
  store i32 -2139062144, ptr %2, align 4, !dbg !2319, !tbaa !248
  %3 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !2319
  store i32 -2139062144, ptr %3, align 4, !dbg !2319, !tbaa !248
  %4 = getelementptr inbounds i8, ptr %0, i64 32, !dbg !2319
  store i32 -2139062144, ptr %4, align 4, !dbg !2319, !tbaa !248
  store i32 -2139062144, ptr %0, align 4, !dbg !2319, !tbaa !248
  ret void, !dbg !2320
}

declare !dbg !2321 void @x264_predict_4x4_init_mmx(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #2 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "common/predict.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "c2fc33c33b38bf94b22a8dc8f4f0b882")
!2 = !{!3, !13, !23, !32, !46}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "macroblock_position_e", file: !4, line: 28, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "common/macroblock.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "0b0c175005b691009f3df3e457cfe9c0")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "MB_LEFT", value: 1)
!8 = !DIEnumerator(name: "MB_TOP", value: 2)
!9 = !DIEnumerator(name: "MB_TOPRIGHT", value: 4)
!10 = !DIEnumerator(name: "MB_TOPLEFT", value: 8)
!11 = !DIEnumerator(name: "MB_PRIVATE", value: 16)
!12 = !DIEnumerator(name: "ALL_NEIGHBORS", value: 15)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra16x16_pred_e", file: !14, line: 47, baseType: !5, size: 32, elements: !15)
!14 = !DIFile(filename: "common/predict.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "c7827bfe44f4a550b7080533457a8327")
!15 = !{!16, !17, !18, !19, !20, !21, !22}
!16 = !DIEnumerator(name: "I_PRED_16x16_V", value: 0)
!17 = !DIEnumerator(name: "I_PRED_16x16_H", value: 1)
!18 = !DIEnumerator(name: "I_PRED_16x16_DC", value: 2)
!19 = !DIEnumerator(name: "I_PRED_16x16_P", value: 3)
!20 = !DIEnumerator(name: "I_PRED_16x16_DC_LEFT", value: 4)
!21 = !DIEnumerator(name: "I_PRED_16x16_DC_TOP", value: 5)
!22 = !DIEnumerator(name: "I_PRED_16x16_DC_128", value: 6)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra_chroma_pred_e", file: !14, line: 30, baseType: !5, size: 32, elements: !24)
!24 = !{!25, !26, !27, !28, !29, !30, !31}
!25 = !DIEnumerator(name: "I_PRED_CHROMA_DC", value: 0)
!26 = !DIEnumerator(name: "I_PRED_CHROMA_H", value: 1)
!27 = !DIEnumerator(name: "I_PRED_CHROMA_V", value: 2)
!28 = !DIEnumerator(name: "I_PRED_CHROMA_P", value: 3)
!29 = !DIEnumerator(name: "I_PRED_CHROMA_DC_LEFT", value: 4)
!30 = !DIEnumerator(name: "I_PRED_CHROMA_DC_TOP", value: 5)
!31 = !DIEnumerator(name: "I_PRED_CHROMA_DC_128", value: 6)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra8x8_pred_e", file: !14, line: 91, baseType: !5, size: 32, elements: !33)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!34 = !DIEnumerator(name: "I_PRED_8x8_V", value: 0)
!35 = !DIEnumerator(name: "I_PRED_8x8_H", value: 1)
!36 = !DIEnumerator(name: "I_PRED_8x8_DC", value: 2)
!37 = !DIEnumerator(name: "I_PRED_8x8_DDL", value: 3)
!38 = !DIEnumerator(name: "I_PRED_8x8_DDR", value: 4)
!39 = !DIEnumerator(name: "I_PRED_8x8_VR", value: 5)
!40 = !DIEnumerator(name: "I_PRED_8x8_HD", value: 6)
!41 = !DIEnumerator(name: "I_PRED_8x8_VL", value: 7)
!42 = !DIEnumerator(name: "I_PRED_8x8_HU", value: 8)
!43 = !DIEnumerator(name: "I_PRED_8x8_DC_LEFT", value: 9)
!44 = !DIEnumerator(name: "I_PRED_8x8_DC_TOP", value: 10)
!45 = !DIEnumerator(name: "I_PRED_8x8_DC_128", value: 11)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra4x4_pred_e", file: !14, line: 64, baseType: !5, size: 32, elements: !47)
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!48 = !DIEnumerator(name: "I_PRED_4x4_V", value: 0)
!49 = !DIEnumerator(name: "I_PRED_4x4_H", value: 1)
!50 = !DIEnumerator(name: "I_PRED_4x4_DC", value: 2)
!51 = !DIEnumerator(name: "I_PRED_4x4_DDL", value: 3)
!52 = !DIEnumerator(name: "I_PRED_4x4_DDR", value: 4)
!53 = !DIEnumerator(name: "I_PRED_4x4_VR", value: 5)
!54 = !DIEnumerator(name: "I_PRED_4x4_HD", value: 6)
!55 = !DIEnumerator(name: "I_PRED_4x4_VL", value: 7)
!56 = !DIEnumerator(name: "I_PRED_4x4_HU", value: 8)
!57 = !DIEnumerator(name: "I_PRED_4x4_DC_LEFT", value: 9)
!58 = !DIEnumerator(name: "I_PRED_4x4_DC_TOP", value: 10)
!59 = !DIEnumerator(name: "I_PRED_4x4_DC_128", value: 11)
!60 = !{!61, !67}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !63, line: 27, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !65, line: 45, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!66 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !63, line: 26, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !65, line: 42, baseType: !5)
!70 = !{i32 7, !"Dwarf Version", i32 5}
!71 = !{i32 2, !"Debug Info Version", i32 3}
!72 = !{i32 1, !"wchar_size", i32 4}
!73 = !{i32 8, !"PIC Level", i32 2}
!74 = !{i32 7, !"PIE Level", i32 2}
!75 = !{i32 7, !"uwtable", i32 2}
!76 = !{!"clang version 16.0.0"}
!77 = distinct !DISubprogram(name: "x264_predict_8x8_filter", scope: !1, file: !1, line: 499, type: !78, scopeLine: 500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !85)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !80, !80, !84, !84}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !63, line: 24, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !65, line: 38, baseType: !83)
!83 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!84 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!85 = !{!86, !87, !88, !89, !90, !91}
!86 = !DILocalVariable(name: "src", arg: 1, scope: !77, file: !1, line: 499, type: !80)
!87 = !DILocalVariable(name: "edge", arg: 2, scope: !77, file: !1, line: 499, type: !80)
!88 = !DILocalVariable(name: "i_neighbor", arg: 3, scope: !77, file: !1, line: 499, type: !84)
!89 = !DILocalVariable(name: "i_filters", arg: 4, scope: !77, file: !1, line: 499, type: !84)
!90 = !DILocalVariable(name: "have_lt", scope: !77, file: !1, line: 506, type: !84)
!91 = !DILocalVariable(name: "have_tr", scope: !92, file: !1, line: 518, type: !84)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 517, column: 5)
!93 = distinct !DILexicalBlock(scope: !77, file: !1, line: 516, column: 9)
!94 = !DILocation(line: 0, scope: !77)
!95 = !DILocation(line: 506, column: 30, scope: !77)
!96 = !DILocation(line: 507, column: 19, scope: !97)
!97 = distinct !DILexicalBlock(scope: !77, file: !1, line: 507, column: 9)
!98 = !DILocation(line: 507, column: 9, scope: !77)
!99 = !DILocation(line: 509, column: 21, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 508, column: 5)
!101 = !{!102, !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !DILocation(line: 509, column: 35, scope: !100)
!105 = !DILocation(line: 509, column: 34, scope: !100)
!106 = !DILocation(line: 509, column: 48, scope: !100)
!107 = !DILocation(line: 509, column: 31, scope: !100)
!108 = !DILocation(line: 509, column: 46, scope: !100)
!109 = !DILocation(line: 509, column: 58, scope: !100)
!110 = !DILocation(line: 509, column: 20, scope: !100)
!111 = !DILocation(line: 509, column: 9, scope: !100)
!112 = !DILocation(line: 509, column: 18, scope: !100)
!113 = !DILocation(line: 510, column: 22, scope: !100)
!114 = !DILocation(line: 510, scope: !100)
!115 = !DILocation(line: 511, column: 25, scope: !100)
!116 = !DILocation(line: 511, column: 24, scope: !100)
!117 = !DILocation(line: 511, column: 37, scope: !100)
!118 = !DILocation(line: 511, column: 21, scope: !100)
!119 = !DILocation(line: 511, column: 35, scope: !100)
!120 = !DILocation(line: 511, column: 47, scope: !100)
!121 = !DILocation(line: 510, column: 20, scope: !100)
!122 = !DILocation(line: 510, column: 9, scope: !100)
!123 = !DILocation(line: 510, column: 18, scope: !100)
!124 = !DILocation(line: 512, column: 9, scope: !100)
!125 = !DILocation(line: 512, column: 15, scope: !100)
!126 = !DILocation(line: 512, column: 21, scope: !100)
!127 = !DILocation(line: 512, column: 27, scope: !100)
!128 = !DILocation(line: 512, column: 33, scope: !100)
!129 = !DILocation(line: 512, column: 39, scope: !100)
!130 = !DILocation(line: 513, column: 20, scope: !100)
!131 = !DILocation(line: 513, column: 34, scope: !100)
!132 = !DILocation(line: 513, column: 33, scope: !100)
!133 = !DILocation(line: 513, column: 30, scope: !100)
!134 = !DILocation(line: 513, column: 44, scope: !100)
!135 = !DILocation(line: 513, column: 19, scope: !100)
!136 = !DILocation(line: 513, column: 9, scope: !100)
!137 = !DILocation(line: 513, column: 17, scope: !100)
!138 = !DILocation(line: 514, column: 5, scope: !100)
!139 = !DILocation(line: 516, column: 19, scope: !93)
!140 = !DILocation(line: 516, column: 9, scope: !77)
!141 = !DILocation(line: 518, column: 34, scope: !92)
!142 = !DILocation(line: 0, scope: !92)
!143 = !DILocation(line: 519, column: 22, scope: !92)
!144 = !DILocation(line: 519, scope: !92)
!145 = !DILocation(line: 520, column: 25, scope: !92)
!146 = !DILocation(line: 520, column: 24, scope: !92)
!147 = !DILocation(line: 520, column: 37, scope: !92)
!148 = !DILocation(line: 520, column: 21, scope: !92)
!149 = !DILocation(line: 520, column: 35, scope: !92)
!150 = !DILocation(line: 520, column: 47, scope: !92)
!151 = !DILocation(line: 519, column: 20, scope: !92)
!152 = !DILocation(line: 519, column: 9, scope: !92)
!153 = !DILocation(line: 519, column: 18, scope: !92)
!154 = !DILocation(line: 521, column: 9, scope: !92)
!155 = !DILocation(line: 521, column: 15, scope: !92)
!156 = !DILocation(line: 521, column: 21, scope: !92)
!157 = !DILocation(line: 521, column: 27, scope: !92)
!158 = !DILocation(line: 521, column: 33, scope: !92)
!159 = !DILocation(line: 521, column: 39, scope: !92)
!160 = !DILocation(line: 522, column: 22, scope: !92)
!161 = !DILocation(line: 522, scope: !92)
!162 = !DILocation(line: 523, column: 25, scope: !92)
!163 = !DILocation(line: 523, column: 24, scope: !92)
!164 = !DILocation(line: 523, column: 37, scope: !92)
!165 = !DILocation(line: 523, column: 21, scope: !92)
!166 = !DILocation(line: 523, column: 35, scope: !92)
!167 = !DILocation(line: 523, column: 47, scope: !92)
!168 = !DILocation(line: 522, column: 20, scope: !92)
!169 = !DILocation(line: 522, column: 9, scope: !92)
!170 = !DILocation(line: 522, column: 18, scope: !92)
!171 = !DILocation(line: 525, column: 23, scope: !172)
!172 = distinct !DILexicalBlock(scope: !92, file: !1, line: 525, column: 13)
!173 = !DILocation(line: 525, column: 13, scope: !92)
!174 = !DILocation(line: 0, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 527, column: 17)
!176 = distinct !DILexicalBlock(scope: !172, file: !1, line: 526, column: 9)
!177 = !DILocation(line: 527, column: 17, scope: !176)
!178 = !DILocation(line: 529, column: 17, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !1, line: 528, column: 13)
!180 = !DILocation(line: 529, column: 23, scope: !179)
!181 = !DILocation(line: 529, column: 29, scope: !179)
!182 = !DILocation(line: 529, column: 36, scope: !179)
!183 = !DILocation(line: 529, column: 43, scope: !179)
!184 = !DILocation(line: 529, column: 50, scope: !179)
!185 = !DILocation(line: 529, column: 57, scope: !179)
!186 = !DILocation(line: 531, column: 29, scope: !179)
!187 = !DILocation(line: 531, column: 44, scope: !179)
!188 = !DILocation(line: 531, column: 43, scope: !179)
!189 = !DILocation(line: 531, column: 40, scope: !179)
!190 = !DILocation(line: 531, column: 55, scope: !179)
!191 = !DILocation(line: 531, column: 28, scope: !179)
!192 = !DILocation(line: 531, column: 17, scope: !179)
!193 = !DILocation(line: 531, column: 26, scope: !179)
!194 = !DILocation(line: 532, column: 13, scope: !179)
!195 = !DILocation(line: 535, column: 41, scope: !196)
!196 = distinct !DILexicalBlock(scope: !175, file: !1, line: 534, column: 13)
!197 = !DILocation(line: 535, column: 51, scope: !196)
!198 = !DILocation(line: 535, column: 34, scope: !196)
!199 = !DILocation(line: 535, column: 39, scope: !196)
!200 = !{!201, !201, i64 0}
!201 = !{!"long", !102, i64 0}
!202 = !DILocation(line: 536, column: 28, scope: !196)
!203 = !DILocation(line: 540, column: 1, scope: !77)
!204 = distinct !DISubprogram(name: "x264_predict_16x16_init", scope: !1, file: !1, line: 754, type: !205, scopeLine: 755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !212)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !84, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !14, line: 27, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !80}
!212 = !{!213, !214}
!213 = !DILocalVariable(name: "cpu", arg: 1, scope: !204, file: !1, line: 754, type: !84)
!214 = !DILocalVariable(name: "pf", arg: 2, scope: !204, file: !1, line: 754, type: !207)
!215 = !DILocation(line: 0, scope: !204)
!216 = !DILocation(line: 756, column: 29, scope: !204)
!217 = !{!218, !218, i64 0}
!218 = !{!"any pointer", !102, i64 0}
!219 = !DILocation(line: 757, column: 5, scope: !204)
!220 = !DILocation(line: 757, column: 29, scope: !204)
!221 = !DILocation(line: 758, column: 5, scope: !204)
!222 = !DILocation(line: 758, column: 29, scope: !204)
!223 = !DILocation(line: 759, column: 5, scope: !204)
!224 = !DILocation(line: 759, column: 29, scope: !204)
!225 = !DILocation(line: 760, column: 5, scope: !204)
!226 = !DILocation(line: 760, column: 29, scope: !204)
!227 = !DILocation(line: 761, column: 5, scope: !204)
!228 = !DILocation(line: 761, column: 29, scope: !204)
!229 = !DILocation(line: 762, column: 5, scope: !204)
!230 = !DILocation(line: 762, column: 29, scope: !204)
!231 = !DILocation(line: 765, column: 5, scope: !204)
!232 = !DILocation(line: 774, column: 1, scope: !204)
!233 = distinct !DISubprogram(name: "predict_16x16_v", scope: !1, file: !1, line: 115, type: !210, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241}
!235 = !DILocalVariable(name: "src", arg: 1, scope: !233, file: !1, line: 115, type: !80)
!236 = !DILocalVariable(name: "v0", scope: !233, file: !1, line: 117, type: !68)
!237 = !DILocalVariable(name: "v1", scope: !233, file: !1, line: 118, type: !68)
!238 = !DILocalVariable(name: "v2", scope: !233, file: !1, line: 119, type: !68)
!239 = !DILocalVariable(name: "v3", scope: !233, file: !1, line: 120, type: !68)
!240 = !DILocalVariable(name: "i", scope: !233, file: !1, line: 121, type: !84)
!241 = !DILocalVariable(name: "p", scope: !242, file: !1, line: 125, type: !67)
!242 = distinct !DILexicalBlock(scope: !243, file: !1, line: 124, column: 5)
!243 = distinct !DILexicalBlock(scope: !244, file: !1, line: 123, column: 5)
!244 = distinct !DILexicalBlock(scope: !233, file: !1, line: 123, column: 5)
!245 = !DILocation(line: 0, scope: !233)
!246 = !DILocation(line: 117, column: 32, scope: !233)
!247 = !DILocation(line: 117, column: 19, scope: !233)
!248 = !{!249, !249, i64 0}
!249 = !{!"int", !102, i64 0}
!250 = !DILocation(line: 118, column: 32, scope: !233)
!251 = !DILocation(line: 118, column: 19, scope: !233)
!252 = !DILocation(line: 119, column: 32, scope: !233)
!253 = !DILocation(line: 119, column: 19, scope: !233)
!254 = !DILocation(line: 120, column: 32, scope: !233)
!255 = !DILocation(line: 120, column: 19, scope: !233)
!256 = !DILocation(line: 0, scope: !242)
!257 = !DILocation(line: 126, column: 11, scope: !242)
!258 = !DILocation(line: 126, column: 14, scope: !242)
!259 = !DILocation(line: 127, column: 11, scope: !242)
!260 = !DILocation(line: 127, column: 14, scope: !242)
!261 = !DILocation(line: 128, column: 11, scope: !242)
!262 = !DILocation(line: 128, column: 14, scope: !242)
!263 = !DILocation(line: 129, column: 14, scope: !242)
!264 = !DILocation(line: 130, column: 13, scope: !242)
!265 = !DILocation(line: 132, column: 1, scope: !233)
!266 = distinct !DISubprogram(name: "predict_16x16_h", scope: !1, file: !1, line: 97, type: !210, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!267 = !{!268, !269, !270, !275}
!268 = !DILocalVariable(name: "src", arg: 1, scope: !266, file: !1, line: 97, type: !80)
!269 = !DILocalVariable(name: "i", scope: !266, file: !1, line: 99, type: !84)
!270 = !DILocalVariable(name: "v", scope: !271, file: !1, line: 103, type: !274)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 102, column: 5)
!272 = distinct !DILexicalBlock(scope: !273, file: !1, line: 101, column: 5)
!273 = distinct !DILexicalBlock(scope: !266, file: !1, line: 101, column: 5)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!275 = !DILocalVariable(name: "p", scope: !271, file: !1, line: 104, type: !67)
!276 = !DILocation(line: 0, scope: !266)
!277 = !DILocation(line: 103, column: 41, scope: !271)
!278 = !DILocation(line: 103, column: 39, scope: !271)
!279 = !DILocation(line: 0, scope: !271)
!280 = !DILocation(line: 109, column: 14, scope: !271)
!281 = !DILocation(line: 106, column: 14, scope: !271)
!282 = !DILocation(line: 111, column: 13, scope: !271)
!283 = !DILocation(line: 114, column: 1, scope: !266)
!284 = distinct !DISubprogram(name: "predict_16x16_dc", scope: !1, file: !1, line: 52, type: !210, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !285)
!285 = !{!286, !287, !288, !289}
!286 = !DILocalVariable(name: "src", arg: 1, scope: !284, file: !1, line: 52, type: !80)
!287 = !DILocalVariable(name: "dc", scope: !284, file: !1, line: 54, type: !68)
!288 = !DILocalVariable(name: "i", scope: !284, file: !1, line: 55, type: !84)
!289 = !DILocalVariable(name: "p", scope: !290, file: !1, line: 64, type: !67)
!290 = distinct !DILexicalBlock(scope: !291, file: !1, line: 64, column: 5)
!291 = distinct !DILexicalBlock(scope: !292, file: !1, line: 64, column: 5)
!292 = distinct !DILexicalBlock(scope: !284, file: !1, line: 64, column: 5)
!293 = !DILocation(line: 0, scope: !284)
!294 = !DILocation(line: 59, column: 15, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !1, line: 58, column: 5)
!296 = distinct !DILexicalBlock(scope: !297, file: !1, line: 57, column: 5)
!297 = distinct !DILexicalBlock(scope: !284, file: !1, line: 57, column: 5)
!298 = !DILocation(line: 60, column: 15, scope: !295)
!299 = !DILocation(line: 60, column: 12, scope: !295)
!300 = !DILocation(line: 59, column: 12, scope: !295)
!301 = !DILocation(line: 62, column: 16, scope: !284)
!302 = !DILocation(line: 62, column: 23, scope: !284)
!303 = !DILocation(line: 62, column: 29, scope: !284)
!304 = !DILocation(line: 0, scope: !290)
!305 = !DILocation(line: 64, column: 5, scope: !290)
!306 = !DILocation(line: 65, column: 1, scope: !284)
!307 = distinct !DISubprogram(name: "predict_16x16_p", scope: !1, file: !1, line: 133, type: !210, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !308)
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319}
!309 = !DILocalVariable(name: "src", arg: 1, scope: !307, file: !1, line: 133, type: !80)
!310 = !DILocalVariable(name: "x", scope: !307, file: !1, line: 135, type: !84)
!311 = !DILocalVariable(name: "y", scope: !307, file: !1, line: 135, type: !84)
!312 = !DILocalVariable(name: "i", scope: !307, file: !1, line: 135, type: !84)
!313 = !DILocalVariable(name: "a", scope: !307, file: !1, line: 136, type: !84)
!314 = !DILocalVariable(name: "b", scope: !307, file: !1, line: 136, type: !84)
!315 = !DILocalVariable(name: "c", scope: !307, file: !1, line: 136, type: !84)
!316 = !DILocalVariable(name: "H", scope: !307, file: !1, line: 137, type: !84)
!317 = !DILocalVariable(name: "V", scope: !307, file: !1, line: 138, type: !84)
!318 = !DILocalVariable(name: "i00", scope: !307, file: !1, line: 139, type: !84)
!319 = !DILocalVariable(name: "pix", scope: !320, file: !1, line: 156, type: !84)
!320 = distinct !DILexicalBlock(scope: !321, file: !1, line: 155, column: 5)
!321 = distinct !DILexicalBlock(scope: !322, file: !1, line: 154, column: 5)
!322 = distinct !DILexicalBlock(scope: !307, file: !1, line: 154, column: 5)
!323 = !DILocation(line: 0, scope: !307)
!324 = !DILocation(line: 144, column: 28, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !1, line: 143, column: 5)
!326 = distinct !DILexicalBlock(scope: !327, file: !1, line: 142, column: 5)
!327 = distinct !DILexicalBlock(scope: !307, file: !1, line: 142, column: 5)
!328 = !DILocation(line: 144, column: 57, scope: !325)
!329 = !DILocation(line: 144, column: 55, scope: !325)
!330 = !DILocation(line: 145, column: 28, scope: !325)
!331 = !DILocation(line: 145, column: 58, scope: !325)
!332 = !DILocation(line: 145, column: 56, scope: !325)
!333 = !DILocation(line: 144, column: 24, scope: !325)
!334 = !DILocation(line: 144, column: 11, scope: !325)
!335 = !DILocation(line: 145, column: 24, scope: !325)
!336 = !DILocation(line: 145, column: 11, scope: !325)
!337 = !DILocation(line: 148, column: 41, scope: !307)
!338 = !DILocation(line: 148, column: 12, scope: !307)
!339 = !DILocation(line: 149, column: 13, scope: !307)
!340 = !DILocation(line: 149, column: 17, scope: !307)
!341 = !DILocation(line: 149, column: 24, scope: !307)
!342 = !DILocation(line: 150, column: 13, scope: !307)
!343 = !DILocation(line: 150, column: 17, scope: !307)
!344 = !DILocation(line: 150, column: 24, scope: !307)
!345 = !DILocation(line: 152, column: 21, scope: !307)
!346 = !DILocation(line: 152, column: 29, scope: !307)
!347 = !DILocation(line: 163, column: 13, scope: !320)
!348 = !DILocation(line: 154, column: 5, scope: !322)
!349 = !DILocation(line: 0, scope: !320)
!350 = !DILocalVariable(name: "x", arg: 1, scope: !351, file: !352, line: 103, type: !84)
!351 = distinct !DISubprogram(name: "x264_clip_uint8", scope: !352, file: !352, line: 103, type: !353, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !355)
!352 = !DIFile(filename: "common/common.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "4880b62cc871dca4002788746fbccb70")
!353 = !DISubroutineType(types: !354)
!354 = !{!81, !84}
!355 = !{!350}
!356 = !DILocation(line: 0, scope: !351, inlinedAt: !357)
!357 = distinct !DILocation(line: 159, column: 22, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !1, line: 158, column: 9)
!359 = distinct !DILexicalBlock(scope: !360, file: !1, line: 157, column: 9)
!360 = distinct !DILexicalBlock(scope: !320, file: !1, line: 157, column: 9)
!361 = !DILocation(line: 160, column: 17, scope: !358)
!362 = !DILocation(line: 159, column: 42, scope: !358)
!363 = !DILocation(line: 105, column: 13, scope: !351, inlinedAt: !357)
!364 = !DILocation(line: 105, column: 12, scope: !351, inlinedAt: !357)
!365 = !DILocation(line: 159, column: 20, scope: !358)
!366 = !DILocation(line: 162, column: 13, scope: !320)
!367 = !DILocation(line: 154, column: 26, scope: !321)
!368 = !DILocation(line: 154, column: 19, scope: !321)
!369 = distinct !{!369, !348, !370, !371}
!370 = !DILocation(line: 164, column: 5, scope: !322)
!371 = !{!"llvm.loop.mustprogress"}
!372 = !DILocation(line: 165, column: 1, scope: !307)
!373 = distinct !DISubprogram(name: "predict_16x16_dc_left", scope: !1, file: !1, line: 66, type: !210, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !374)
!374 = !{!375, !376, !377, !378}
!375 = !DILocalVariable(name: "src", arg: 1, scope: !373, file: !1, line: 66, type: !80)
!376 = !DILocalVariable(name: "dc", scope: !373, file: !1, line: 68, type: !68)
!377 = !DILocalVariable(name: "i", scope: !373, file: !1, line: 69, type: !84)
!378 = !DILocalVariable(name: "p", scope: !379, file: !1, line: 77, type: !67)
!379 = distinct !DILexicalBlock(scope: !380, file: !1, line: 77, column: 5)
!380 = distinct !DILexicalBlock(scope: !381, file: !1, line: 77, column: 5)
!381 = distinct !DILexicalBlock(scope: !373, file: !1, line: 77, column: 5)
!382 = !DILocation(line: 0, scope: !373)
!383 = !DILocation(line: 73, column: 15, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !1, line: 72, column: 5)
!385 = distinct !DILexicalBlock(scope: !386, file: !1, line: 71, column: 5)
!386 = distinct !DILexicalBlock(scope: !373, file: !1, line: 71, column: 5)
!387 = !DILocation(line: 73, column: 12, scope: !384)
!388 = !DILocation(line: 75, column: 16, scope: !373)
!389 = !DILocation(line: 75, column: 22, scope: !373)
!390 = !DILocation(line: 75, column: 28, scope: !373)
!391 = !DILocation(line: 0, scope: !379)
!392 = !DILocation(line: 77, column: 5, scope: !379)
!393 = !DILocation(line: 78, column: 1, scope: !373)
!394 = distinct !DISubprogram(name: "predict_16x16_dc_top", scope: !1, file: !1, line: 79, type: !210, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !395)
!395 = !{!396, !397, !398, !399}
!396 = !DILocalVariable(name: "src", arg: 1, scope: !394, file: !1, line: 79, type: !80)
!397 = !DILocalVariable(name: "dc", scope: !394, file: !1, line: 81, type: !68)
!398 = !DILocalVariable(name: "i", scope: !394, file: !1, line: 82, type: !84)
!399 = !DILocalVariable(name: "p", scope: !400, file: !1, line: 90, type: !67)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 90, column: 5)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 90, column: 5)
!402 = distinct !DILexicalBlock(scope: !394, file: !1, line: 90, column: 5)
!403 = !DILocation(line: 0, scope: !394)
!404 = !DILocation(line: 86, column: 15, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 85, column: 5)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 84, column: 5)
!407 = distinct !DILexicalBlock(scope: !394, file: !1, line: 84, column: 5)
!408 = !DILocation(line: 88, column: 16, scope: !394)
!409 = !DILocation(line: 88, column: 22, scope: !394)
!410 = !DILocation(line: 88, column: 28, scope: !394)
!411 = !DILocation(line: 0, scope: !400)
!412 = !DILocation(line: 90, column: 5, scope: !400)
!413 = !DILocation(line: 91, column: 1, scope: !394)
!414 = distinct !DISubprogram(name: "predict_16x16_dc_128", scope: !1, file: !1, line: 92, type: !210, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !415)
!415 = !{!416, !417, !418}
!416 = !DILocalVariable(name: "src", arg: 1, scope: !414, file: !1, line: 92, type: !80)
!417 = !DILocalVariable(name: "i", scope: !414, file: !1, line: 94, type: !84)
!418 = !DILocalVariable(name: "p", scope: !419, file: !1, line: 95, type: !67)
!419 = distinct !DILexicalBlock(scope: !420, file: !1, line: 95, column: 5)
!420 = distinct !DILexicalBlock(scope: !421, file: !1, line: 95, column: 5)
!421 = distinct !DILexicalBlock(scope: !414, file: !1, line: 95, column: 5)
!422 = !DILocation(line: 0, scope: !414)
!423 = !DILocation(line: 0, scope: !419)
!424 = !DILocation(line: 95, column: 5, scope: !419)
!425 = !DILocation(line: 96, column: 1, scope: !414)
!426 = !DISubprogram(name: "x264_predict_16x16_init_mmx", scope: !427, file: !427, line: 27, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!427 = !DIFile(filename: "common/x86/predict.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "0e693da0dfed18bbd6d3d0eefa337366")
!428 = !{}
!429 = distinct !DISubprogram(name: "x264_predict_8x8c_init", scope: !1, file: !1, line: 776, type: !205, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !430)
!430 = !{!431, !432}
!431 = !DILocalVariable(name: "cpu", arg: 1, scope: !429, file: !1, line: 776, type: !84)
!432 = !DILocalVariable(name: "pf", arg: 2, scope: !429, file: !1, line: 776, type: !207)
!433 = !DILocation(line: 0, scope: !429)
!434 = !DILocation(line: 778, column: 5, scope: !429)
!435 = !DILocation(line: 778, column: 30, scope: !429)
!436 = !DILocation(line: 779, column: 5, scope: !429)
!437 = !DILocation(line: 779, column: 30, scope: !429)
!438 = !DILocation(line: 780, column: 30, scope: !429)
!439 = !DILocation(line: 781, column: 5, scope: !429)
!440 = !DILocation(line: 781, column: 30, scope: !429)
!441 = !DILocation(line: 782, column: 5, scope: !429)
!442 = !DILocation(line: 782, column: 30, scope: !429)
!443 = !DILocation(line: 783, column: 5, scope: !429)
!444 = !DILocation(line: 783, column: 30, scope: !429)
!445 = !DILocation(line: 784, column: 5, scope: !429)
!446 = !DILocation(line: 784, column: 30, scope: !429)
!447 = !DILocation(line: 787, column: 5, scope: !429)
!448 = !DILocation(line: 789, column: 1, scope: !429)
!449 = distinct !DISubprogram(name: "predict_8x8c_v", scope: !1, file: !1, line: 291, type: !210, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !450)
!450 = !{!451, !452, !453, !454, !455}
!451 = !DILocalVariable(name: "src", arg: 1, scope: !449, file: !1, line: 291, type: !80)
!452 = !DILocalVariable(name: "v0", scope: !449, file: !1, line: 293, type: !68)
!453 = !DILocalVariable(name: "v1", scope: !449, file: !1, line: 294, type: !68)
!454 = !DILocalVariable(name: "i", scope: !449, file: !1, line: 295, type: !84)
!455 = !DILocalVariable(name: "p", scope: !456, file: !1, line: 299, type: !67)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 298, column: 5)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 297, column: 5)
!458 = distinct !DILexicalBlock(scope: !449, file: !1, line: 297, column: 5)
!459 = !DILocation(line: 0, scope: !449)
!460 = !DILocation(line: 293, column: 32, scope: !449)
!461 = !DILocation(line: 293, column: 19, scope: !449)
!462 = !DILocation(line: 294, column: 32, scope: !449)
!463 = !DILocation(line: 294, column: 19, scope: !449)
!464 = !DILocation(line: 0, scope: !456)
!465 = !DILocation(line: 300, column: 11, scope: !456)
!466 = !DILocation(line: 300, column: 14, scope: !456)
!467 = !DILocation(line: 301, column: 14, scope: !456)
!468 = !DILocation(line: 302, column: 13, scope: !456)
!469 = !DILocation(line: 304, column: 1, scope: !449)
!470 = distinct !DISubprogram(name: "predict_8x8c_h", scope: !1, file: !1, line: 278, type: !210, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !471)
!471 = !{!472, !473, !474, !478}
!472 = !DILocalVariable(name: "src", arg: 1, scope: !470, file: !1, line: 278, type: !80)
!473 = !DILocalVariable(name: "i", scope: !470, file: !1, line: 280, type: !84)
!474 = !DILocalVariable(name: "v", scope: !475, file: !1, line: 284, type: !68)
!475 = distinct !DILexicalBlock(scope: !476, file: !1, line: 283, column: 5)
!476 = distinct !DILexicalBlock(scope: !477, file: !1, line: 282, column: 5)
!477 = distinct !DILexicalBlock(scope: !470, file: !1, line: 282, column: 5)
!478 = !DILocalVariable(name: "p", scope: !475, file: !1, line: 285, type: !67)
!479 = !DILocation(line: 0, scope: !470)
!480 = !DILocation(line: 284, column: 35, scope: !475)
!481 = !DILocation(line: 284, column: 33, scope: !475)
!482 = !DILocation(line: 0, scope: !475)
!483 = !DILocation(line: 286, column: 11, scope: !475)
!484 = !DILocation(line: 286, column: 14, scope: !475)
!485 = !DILocation(line: 287, column: 14, scope: !475)
!486 = !DILocation(line: 288, column: 13, scope: !475)
!487 = !DILocation(line: 290, column: 1, scope: !470)
!488 = distinct !DISubprogram(name: "predict_8x8c_dc", scope: !1, file: !1, line: 234, type: !210, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !489)
!489 = !{!490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !505}
!490 = !DILocalVariable(name: "src", arg: 1, scope: !488, file: !1, line: 234, type: !80)
!491 = !DILocalVariable(name: "y", scope: !488, file: !1, line: 236, type: !84)
!492 = !DILocalVariable(name: "s0", scope: !488, file: !1, line: 237, type: !84)
!493 = !DILocalVariable(name: "s1", scope: !488, file: !1, line: 237, type: !84)
!494 = !DILocalVariable(name: "s2", scope: !488, file: !1, line: 237, type: !84)
!495 = !DILocalVariable(name: "s3", scope: !488, file: !1, line: 237, type: !84)
!496 = !DILocalVariable(name: "dc0", scope: !488, file: !1, line: 238, type: !68)
!497 = !DILocalVariable(name: "dc1", scope: !488, file: !1, line: 238, type: !68)
!498 = !DILocalVariable(name: "dc2", scope: !488, file: !1, line: 238, type: !68)
!499 = !DILocalVariable(name: "dc3", scope: !488, file: !1, line: 238, type: !68)
!500 = !DILocalVariable(name: "i", scope: !488, file: !1, line: 239, type: !84)
!501 = !DILocalVariable(name: "p", scope: !502, file: !1, line: 264, type: !67)
!502 = distinct !DILexicalBlock(scope: !503, file: !1, line: 263, column: 5)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 262, column: 5)
!504 = distinct !DILexicalBlock(scope: !488, file: !1, line: 262, column: 5)
!505 = !DILocalVariable(name: "p", scope: !506, file: !1, line: 272, type: !67)
!506 = distinct !DILexicalBlock(scope: !507, file: !1, line: 271, column: 5)
!507 = distinct !DILexicalBlock(scope: !508, file: !1, line: 270, column: 5)
!508 = distinct !DILexicalBlock(scope: !488, file: !1, line: 270, column: 5)
!509 = !DILocation(line: 0, scope: !488)
!510 = !DILocation(line: 248, column: 15, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !1, line: 247, column: 5)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 246, column: 5)
!513 = distinct !DILexicalBlock(scope: !488, file: !1, line: 246, column: 5)
!514 = !DILocation(line: 249, column: 15, scope: !511)
!515 = !DILocation(line: 250, column: 15, scope: !511)
!516 = !DILocation(line: 251, column: 15, scope: !511)
!517 = !DILocation(line: 248, column: 12, scope: !511)
!518 = !DILocation(line: 249, column: 12, scope: !511)
!519 = !DILocation(line: 250, column: 12, scope: !511)
!520 = !DILocation(line: 251, column: 12, scope: !511)
!521 = !DILocation(line: 257, column: 17, scope: !488)
!522 = !DILocation(line: 257, column: 22, scope: !488)
!523 = !DILocation(line: 257, column: 28, scope: !488)
!524 = !DILocation(line: 257, column: 33, scope: !488)
!525 = !DILocation(line: 258, column: 17, scope: !488)
!526 = !DILocation(line: 258, column: 23, scope: !488)
!527 = !DILocation(line: 258, column: 28, scope: !488)
!528 = !DILocation(line: 259, column: 17, scope: !488)
!529 = !DILocation(line: 259, column: 23, scope: !488)
!530 = !DILocation(line: 260, column: 17, scope: !488)
!531 = !DILocation(line: 260, column: 22, scope: !488)
!532 = !DILocation(line: 260, column: 28, scope: !488)
!533 = !DILocation(line: 0, scope: !502)
!534 = !DILocation(line: 265, column: 11, scope: !502)
!535 = !DILocation(line: 265, column: 14, scope: !502)
!536 = !DILocation(line: 266, column: 14, scope: !502)
!537 = !DILocation(line: 267, column: 13, scope: !502)
!538 = !DILocation(line: 259, column: 28, scope: !488)
!539 = !DILocation(line: 260, column: 33, scope: !488)
!540 = !DILocation(line: 0, scope: !506)
!541 = !DILocation(line: 273, column: 11, scope: !506)
!542 = !DILocation(line: 273, column: 14, scope: !506)
!543 = !DILocation(line: 274, column: 14, scope: !506)
!544 = !DILocation(line: 275, column: 13, scope: !506)
!545 = !DILocation(line: 277, column: 1, scope: !488)
!546 = distinct !DISubprogram(name: "predict_8x8c_p", scope: !1, file: !1, line: 305, type: !210, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !547)
!547 = !{!548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!548 = !DILocalVariable(name: "src", arg: 1, scope: !546, file: !1, line: 305, type: !80)
!549 = !DILocalVariable(name: "i", scope: !546, file: !1, line: 307, type: !84)
!550 = !DILocalVariable(name: "x", scope: !546, file: !1, line: 308, type: !84)
!551 = !DILocalVariable(name: "y", scope: !546, file: !1, line: 308, type: !84)
!552 = !DILocalVariable(name: "a", scope: !546, file: !1, line: 309, type: !84)
!553 = !DILocalVariable(name: "b", scope: !546, file: !1, line: 309, type: !84)
!554 = !DILocalVariable(name: "c", scope: !546, file: !1, line: 309, type: !84)
!555 = !DILocalVariable(name: "H", scope: !546, file: !1, line: 310, type: !84)
!556 = !DILocalVariable(name: "V", scope: !546, file: !1, line: 311, type: !84)
!557 = !DILocalVariable(name: "i00", scope: !546, file: !1, line: 312, type: !84)
!558 = !DILocalVariable(name: "pix", scope: !559, file: !1, line: 327, type: !84)
!559 = distinct !DILexicalBlock(scope: !560, file: !1, line: 326, column: 5)
!560 = distinct !DILexicalBlock(scope: !561, file: !1, line: 325, column: 5)
!561 = distinct !DILexicalBlock(scope: !546, file: !1, line: 325, column: 5)
!562 = !DILocation(line: 0, scope: !546)
!563 = !DILocation(line: 316, column: 28, scope: !564)
!564 = distinct !DILexicalBlock(scope: !565, file: !1, line: 315, column: 5)
!565 = distinct !DILexicalBlock(scope: !566, file: !1, line: 314, column: 5)
!566 = distinct !DILexicalBlock(scope: !546, file: !1, line: 314, column: 5)
!567 = !DILocation(line: 316, column: 53, scope: !564)
!568 = !DILocation(line: 316, column: 51, scope: !564)
!569 = !DILocation(line: 317, column: 28, scope: !564)
!570 = !DILocation(line: 317, column: 57, scope: !564)
!571 = !DILocation(line: 317, column: 55, scope: !564)
!572 = !DILocation(line: 316, column: 24, scope: !564)
!573 = !DILocation(line: 316, column: 11, scope: !564)
!574 = !DILocation(line: 317, column: 24, scope: !564)
!575 = !DILocation(line: 317, column: 11, scope: !564)
!576 = !DILocation(line: 320, column: 38, scope: !546)
!577 = !DILocation(line: 320, column: 12, scope: !546)
!578 = !DILocation(line: 321, column: 14, scope: !546)
!579 = !DILocation(line: 321, column: 18, scope: !546)
!580 = !DILocation(line: 321, column: 25, scope: !546)
!581 = !DILocation(line: 322, column: 14, scope: !546)
!582 = !DILocation(line: 322, column: 18, scope: !546)
!583 = !DILocation(line: 322, column: 25, scope: !546)
!584 = !DILocation(line: 323, column: 18, scope: !546)
!585 = !DILocation(line: 323, column: 23, scope: !546)
!586 = !DILocation(line: 334, column: 13, scope: !559)
!587 = !DILocation(line: 325, column: 5, scope: !561)
!588 = !DILocation(line: 0, scope: !559)
!589 = !DILocation(line: 0, scope: !351, inlinedAt: !590)
!590 = distinct !DILocation(line: 330, column: 22, scope: !591)
!591 = distinct !DILexicalBlock(scope: !592, file: !1, line: 329, column: 9)
!592 = distinct !DILexicalBlock(scope: !593, file: !1, line: 328, column: 9)
!593 = distinct !DILexicalBlock(scope: !559, file: !1, line: 328, column: 9)
!594 = !DILocation(line: 331, column: 17, scope: !591)
!595 = !DILocation(line: 330, column: 42, scope: !591)
!596 = !DILocation(line: 105, column: 13, scope: !351, inlinedAt: !590)
!597 = !DILocation(line: 105, column: 12, scope: !351, inlinedAt: !590)
!598 = !DILocation(line: 330, column: 20, scope: !591)
!599 = !DILocation(line: 333, column: 13, scope: !559)
!600 = !DILocation(line: 325, column: 25, scope: !560)
!601 = !DILocation(line: 325, column: 19, scope: !560)
!602 = distinct !{!602, !587, !603, !371}
!603 = !DILocation(line: 335, column: 5, scope: !561)
!604 = !DILocation(line: 336, column: 1, scope: !546)
!605 = distinct !DISubprogram(name: "predict_8x8c_dc_left", scope: !1, file: !1, line: 184, type: !210, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !606)
!606 = !{!607, !608, !609, !610, !611, !615}
!607 = !DILocalVariable(name: "src", arg: 1, scope: !605, file: !1, line: 184, type: !80)
!608 = !DILocalVariable(name: "y", scope: !605, file: !1, line: 186, type: !84)
!609 = !DILocalVariable(name: "dc0", scope: !605, file: !1, line: 187, type: !68)
!610 = !DILocalVariable(name: "dc1", scope: !605, file: !1, line: 187, type: !68)
!611 = !DILocalVariable(name: "p", scope: !612, file: !1, line: 199, type: !67)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 198, column: 5)
!613 = distinct !DILexicalBlock(scope: !614, file: !1, line: 197, column: 5)
!614 = distinct !DILexicalBlock(scope: !605, file: !1, line: 197, column: 5)
!615 = !DILocalVariable(name: "p", scope: !616, file: !1, line: 206, type: !67)
!616 = distinct !DILexicalBlock(scope: !617, file: !1, line: 205, column: 5)
!617 = distinct !DILexicalBlock(scope: !618, file: !1, line: 204, column: 5)
!618 = distinct !DILexicalBlock(scope: !605, file: !1, line: 204, column: 5)
!619 = !DILocation(line: 0, scope: !605)
!620 = !DILocation(line: 191, column: 16, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 190, column: 5)
!622 = distinct !DILexicalBlock(scope: !623, file: !1, line: 189, column: 5)
!623 = distinct !DILexicalBlock(scope: !605, file: !1, line: 189, column: 5)
!624 = !DILocation(line: 192, column: 16, scope: !621)
!625 = !DILocation(line: 191, column: 13, scope: !621)
!626 = !DILocation(line: 192, column: 13, scope: !621)
!627 = !DILocation(line: 194, column: 18, scope: !605)
!628 = !DILocation(line: 194, column: 24, scope: !605)
!629 = !DILocation(line: 194, column: 29, scope: !605)
!630 = !DILocation(line: 195, column: 18, scope: !605)
!631 = !DILocation(line: 195, column: 24, scope: !605)
!632 = !DILocation(line: 0, scope: !612)
!633 = !DILocation(line: 200, column: 11, scope: !612)
!634 = !DILocation(line: 200, column: 14, scope: !612)
!635 = !DILocation(line: 201, column: 14, scope: !612)
!636 = !DILocation(line: 202, column: 13, scope: !612)
!637 = !DILocation(line: 195, column: 29, scope: !605)
!638 = !DILocation(line: 0, scope: !616)
!639 = !DILocation(line: 207, column: 11, scope: !616)
!640 = !DILocation(line: 207, column: 14, scope: !616)
!641 = !DILocation(line: 208, column: 14, scope: !616)
!642 = !DILocation(line: 209, column: 13, scope: !616)
!643 = !DILocation(line: 212, column: 1, scope: !605)
!644 = distinct !DISubprogram(name: "predict_8x8c_dc_top", scope: !1, file: !1, line: 213, type: !210, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !645)
!645 = !{!646, !647, !648, !649, !650, !651}
!646 = !DILocalVariable(name: "src", arg: 1, scope: !644, file: !1, line: 213, type: !80)
!647 = !DILocalVariable(name: "y", scope: !644, file: !1, line: 215, type: !84)
!648 = !DILocalVariable(name: "x", scope: !644, file: !1, line: 215, type: !84)
!649 = !DILocalVariable(name: "dc0", scope: !644, file: !1, line: 216, type: !68)
!650 = !DILocalVariable(name: "dc1", scope: !644, file: !1, line: 216, type: !68)
!651 = !DILocalVariable(name: "p", scope: !652, file: !1, line: 228, type: !67)
!652 = distinct !DILexicalBlock(scope: !653, file: !1, line: 227, column: 5)
!653 = distinct !DILexicalBlock(scope: !654, file: !1, line: 226, column: 5)
!654 = distinct !DILexicalBlock(scope: !644, file: !1, line: 226, column: 5)
!655 = !DILocation(line: 0, scope: !644)
!656 = !DILocation(line: 220, column: 16, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !1, line: 219, column: 5)
!658 = distinct !DILexicalBlock(scope: !659, file: !1, line: 218, column: 5)
!659 = distinct !DILexicalBlock(scope: !644, file: !1, line: 218, column: 5)
!660 = !DILocation(line: 221, column: 16, scope: !657)
!661 = !DILocation(line: 220, column: 13, scope: !657)
!662 = !DILocation(line: 221, column: 13, scope: !657)
!663 = !DILocation(line: 223, column: 18, scope: !644)
!664 = !DILocation(line: 223, column: 24, scope: !644)
!665 = !DILocation(line: 223, column: 29, scope: !644)
!666 = !DILocation(line: 224, column: 18, scope: !644)
!667 = !DILocation(line: 224, column: 24, scope: !644)
!668 = !DILocation(line: 224, column: 29, scope: !644)
!669 = !DILocation(line: 0, scope: !652)
!670 = !DILocation(line: 229, column: 11, scope: !652)
!671 = !DILocation(line: 229, column: 14, scope: !652)
!672 = !DILocation(line: 230, column: 14, scope: !652)
!673 = !DILocation(line: 231, column: 13, scope: !652)
!674 = !DILocation(line: 233, column: 1, scope: !644)
!675 = distinct !DISubprogram(name: "predict_8x8c_dc_128", scope: !1, file: !1, line: 172, type: !210, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !676)
!676 = !{!677, !678, !679}
!677 = !DILocalVariable(name: "src", arg: 1, scope: !675, file: !1, line: 172, type: !80)
!678 = !DILocalVariable(name: "y", scope: !675, file: !1, line: 174, type: !84)
!679 = !DILocalVariable(name: "p", scope: !680, file: !1, line: 178, type: !67)
!680 = distinct !DILexicalBlock(scope: !681, file: !1, line: 177, column: 5)
!681 = distinct !DILexicalBlock(scope: !682, file: !1, line: 176, column: 5)
!682 = distinct !DILexicalBlock(scope: !675, file: !1, line: 176, column: 5)
!683 = !DILocation(line: 0, scope: !675)
!684 = !DILocation(line: 0, scope: !680)
!685 = !DILocation(line: 179, column: 11, scope: !680)
!686 = !DILocation(line: 179, column: 14, scope: !680)
!687 = !DILocation(line: 180, column: 14, scope: !680)
!688 = !DILocation(line: 181, column: 13, scope: !680)
!689 = !DILocation(line: 183, column: 1, scope: !675)
!690 = !DISubprogram(name: "x264_predict_8x8c_init_mmx", scope: !427, file: !427, line: 28, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!691 = distinct !DISubprogram(name: "x264_predict_8x8_init", scope: !1, file: !1, line: 791, type: !692, scopeLine: 792, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !699)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !84, !694}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !14, line: 28, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !80, !80}
!699 = !{!700, !701}
!700 = !DILocalVariable(name: "cpu", arg: 1, scope: !691, file: !1, line: 791, type: !84)
!701 = !DILocalVariable(name: "pf", arg: 2, scope: !691, file: !1, line: 791, type: !694)
!702 = !DILocation(line: 0, scope: !691)
!703 = !DILocation(line: 793, column: 27, scope: !691)
!704 = !DILocation(line: 794, column: 5, scope: !691)
!705 = !DILocation(line: 794, column: 27, scope: !691)
!706 = !DILocation(line: 795, column: 5, scope: !691)
!707 = !DILocation(line: 795, column: 27, scope: !691)
!708 = !DILocation(line: 796, column: 5, scope: !691)
!709 = !DILocation(line: 796, column: 27, scope: !691)
!710 = !DILocation(line: 797, column: 5, scope: !691)
!711 = !DILocation(line: 797, column: 27, scope: !691)
!712 = !DILocation(line: 798, column: 5, scope: !691)
!713 = !DILocation(line: 798, column: 27, scope: !691)
!714 = !DILocation(line: 799, column: 5, scope: !691)
!715 = !DILocation(line: 799, column: 27, scope: !691)
!716 = !DILocation(line: 800, column: 5, scope: !691)
!717 = !DILocation(line: 800, column: 27, scope: !691)
!718 = !DILocation(line: 801, column: 5, scope: !691)
!719 = !DILocation(line: 801, column: 27, scope: !691)
!720 = !DILocation(line: 802, column: 5, scope: !691)
!721 = !DILocation(line: 802, column: 27, scope: !691)
!722 = !DILocation(line: 803, column: 5, scope: !691)
!723 = !DILocation(line: 803, column: 27, scope: !691)
!724 = !DILocation(line: 804, column: 5, scope: !691)
!725 = !DILocation(line: 804, column: 27, scope: !691)
!726 = !DILocation(line: 807, column: 5, scope: !691)
!727 = !DILocation(line: 809, column: 1, scope: !691)
!728 = distinct !DISubprogram(name: "predict_8x8_v", scope: !1, file: !1, line: 599, type: !697, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !729)
!729 = !{!730, !731, !732, !734}
!730 = !DILocalVariable(name: "src", arg: 1, scope: !728, file: !1, line: 599, type: !80)
!731 = !DILocalVariable(name: "edge", arg: 2, scope: !728, file: !1, line: 599, type: !80)
!732 = !DILocalVariable(name: "top", scope: !728, file: !1, line: 601, type: !733)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!734 = !DILocalVariable(name: "y", scope: !728, file: !1, line: 602, type: !84)
!735 = !DILocation(line: 0, scope: !728)
!736 = !DILocation(line: 601, column: 43, scope: !728)
!737 = !DILocation(line: 601, column: 26, scope: !728)
!738 = !DILocation(line: 604, column: 41, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !1, line: 603, column: 5)
!740 = distinct !DILexicalBlock(scope: !728, file: !1, line: 603, column: 5)
!741 = !DILocation(line: 604, column: 25, scope: !739)
!742 = !DILocation(line: 605, column: 1, scope: !728)
!743 = distinct !DISubprogram(name: "predict_8x8_h", scope: !1, file: !1, line: 591, type: !697, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !744)
!744 = !{!745, !746, !747, !749, !750, !751, !752, !753, !754, !755}
!745 = !DILocalVariable(name: "src", arg: 1, scope: !743, file: !1, line: 591, type: !80)
!746 = !DILocalVariable(name: "edge", arg: 2, scope: !743, file: !1, line: 591, type: !80)
!747 = !DILocalVariable(name: "l0", scope: !743, file: !1, line: 593, type: !748)
!748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!749 = !DILocalVariable(name: "l1", scope: !743, file: !1, line: 593, type: !748)
!750 = !DILocalVariable(name: "l2", scope: !743, file: !1, line: 593, type: !748)
!751 = !DILocalVariable(name: "l3", scope: !743, file: !1, line: 593, type: !748)
!752 = !DILocalVariable(name: "l4", scope: !743, file: !1, line: 593, type: !748)
!753 = !DILocalVariable(name: "l5", scope: !743, file: !1, line: 593, type: !748)
!754 = !DILocalVariable(name: "l6", scope: !743, file: !1, line: 593, type: !748)
!755 = !DILocalVariable(name: "l7", scope: !743, file: !1, line: 593, type: !748)
!756 = !DILocation(line: 0, scope: !743)
!757 = !DILocation(line: 593, column: 5, scope: !743)
!758 = !DILocation(line: 596, column: 5, scope: !743)
!759 = !DILocation(line: 596, column: 13, scope: !743)
!760 = !DILocation(line: 596, column: 21, scope: !743)
!761 = !DILocation(line: 596, column: 29, scope: !743)
!762 = !DILocation(line: 596, column: 37, scope: !743)
!763 = !DILocation(line: 596, column: 45, scope: !743)
!764 = !DILocation(line: 596, column: 53, scope: !743)
!765 = !DILocation(line: 596, column: 61, scope: !743)
!766 = !DILocation(line: 598, column: 1, scope: !743)
!767 = distinct !DISubprogram(name: "predict_8x8_dc", scope: !1, file: !1, line: 583, type: !697, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788}
!769 = !DILocalVariable(name: "src", arg: 1, scope: !767, file: !1, line: 583, type: !80)
!770 = !DILocalVariable(name: "edge", arg: 2, scope: !767, file: !1, line: 583, type: !80)
!771 = !DILocalVariable(name: "l0", scope: !767, file: !1, line: 585, type: !748)
!772 = !DILocalVariable(name: "l1", scope: !767, file: !1, line: 585, type: !748)
!773 = !DILocalVariable(name: "l2", scope: !767, file: !1, line: 585, type: !748)
!774 = !DILocalVariable(name: "l3", scope: !767, file: !1, line: 585, type: !748)
!775 = !DILocalVariable(name: "l4", scope: !767, file: !1, line: 585, type: !748)
!776 = !DILocalVariable(name: "l5", scope: !767, file: !1, line: 585, type: !748)
!777 = !DILocalVariable(name: "l6", scope: !767, file: !1, line: 585, type: !748)
!778 = !DILocalVariable(name: "l7", scope: !767, file: !1, line: 585, type: !748)
!779 = !DILocalVariable(name: "t0", scope: !767, file: !1, line: 586, type: !748)
!780 = !DILocalVariable(name: "t1", scope: !767, file: !1, line: 586, type: !748)
!781 = !DILocalVariable(name: "t2", scope: !767, file: !1, line: 586, type: !748)
!782 = !DILocalVariable(name: "t3", scope: !767, file: !1, line: 586, type: !748)
!783 = !DILocalVariable(name: "t4", scope: !767, file: !1, line: 586, type: !748)
!784 = !DILocalVariable(name: "t5", scope: !767, file: !1, line: 586, type: !748)
!785 = !DILocalVariable(name: "t6", scope: !767, file: !1, line: 586, type: !748)
!786 = !DILocalVariable(name: "t7", scope: !767, file: !1, line: 586, type: !748)
!787 = !DILocalVariable(name: "dc", scope: !767, file: !1, line: 587, type: !274)
!788 = !DILocalVariable(name: "y", scope: !767, file: !1, line: 589, type: !84)
!789 = !DILocation(line: 0, scope: !767)
!790 = !DILocation(line: 585, column: 5, scope: !767)
!791 = !DILocation(line: 586, column: 5, scope: !767)
!792 = !DILocation(line: 587, column: 29, scope: !767)
!793 = !DILocation(line: 587, column: 32, scope: !767)
!794 = !DILocation(line: 587, column: 35, scope: !767)
!795 = !DILocation(line: 587, column: 38, scope: !767)
!796 = !DILocation(line: 587, column: 41, scope: !767)
!797 = !DILocation(line: 587, column: 44, scope: !767)
!798 = !DILocation(line: 587, column: 47, scope: !767)
!799 = !DILocation(line: 588, column: 26, scope: !767)
!800 = !DILocation(line: 588, column: 29, scope: !767)
!801 = !DILocation(line: 588, column: 32, scope: !767)
!802 = !DILocation(line: 588, column: 35, scope: !767)
!803 = !DILocation(line: 588, column: 38, scope: !767)
!804 = !DILocation(line: 588, column: 41, scope: !767)
!805 = !DILocation(line: 588, column: 44, scope: !767)
!806 = !DILocation(line: 588, column: 47, scope: !767)
!807 = !DILocation(line: 588, column: 50, scope: !767)
!808 = !DILocation(line: 588, column: 60, scope: !767)
!809 = !DILocation(line: 589, column: 5, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !1, line: 589, column: 5)
!811 = distinct !DILexicalBlock(scope: !812, file: !1, line: 589, column: 5)
!812 = distinct !DILexicalBlock(scope: !767, file: !1, line: 589, column: 5)
!813 = !DILocation(line: 590, column: 1, scope: !767)
!814 = distinct !DISubprogram(name: "predict_8x8_ddl", scope: !1, file: !1, line: 606, type: !697, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !815)
!815 = !{!816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833}
!816 = !DILocalVariable(name: "src", arg: 1, scope: !814, file: !1, line: 606, type: !80)
!817 = !DILocalVariable(name: "edge", arg: 2, scope: !814, file: !1, line: 606, type: !80)
!818 = !DILocalVariable(name: "t0", scope: !814, file: !1, line: 608, type: !748)
!819 = !DILocalVariable(name: "t1", scope: !814, file: !1, line: 608, type: !748)
!820 = !DILocalVariable(name: "t2", scope: !814, file: !1, line: 608, type: !748)
!821 = !DILocalVariable(name: "t3", scope: !814, file: !1, line: 608, type: !748)
!822 = !DILocalVariable(name: "t4", scope: !814, file: !1, line: 608, type: !748)
!823 = !DILocalVariable(name: "t5", scope: !814, file: !1, line: 608, type: !748)
!824 = !DILocalVariable(name: "t6", scope: !814, file: !1, line: 608, type: !748)
!825 = !DILocalVariable(name: "t7", scope: !814, file: !1, line: 608, type: !748)
!826 = !DILocalVariable(name: "t8", scope: !814, file: !1, line: 609, type: !748)
!827 = !DILocalVariable(name: "t9", scope: !814, file: !1, line: 609, type: !748)
!828 = !DILocalVariable(name: "t10", scope: !814, file: !1, line: 609, type: !748)
!829 = !DILocalVariable(name: "t11", scope: !814, file: !1, line: 609, type: !748)
!830 = !DILocalVariable(name: "t12", scope: !814, file: !1, line: 609, type: !748)
!831 = !DILocalVariable(name: "t13", scope: !814, file: !1, line: 609, type: !748)
!832 = !DILocalVariable(name: "t14", scope: !814, file: !1, line: 609, type: !748)
!833 = !DILocalVariable(name: "t15", scope: !814, file: !1, line: 609, type: !748)
!834 = !DILocation(line: 0, scope: !814)
!835 = !DILocation(line: 608, column: 5, scope: !814)
!836 = !DILocation(line: 609, column: 5, scope: !814)
!837 = !DILocation(line: 610, column: 15, scope: !814)
!838 = !DILocation(line: 610, column: 13, scope: !814)
!839 = !DILocation(line: 611, column: 24, scope: !814)
!840 = !DILocation(line: 611, column: 14, scope: !814)
!841 = !DILocation(line: 611, column: 22, scope: !814)
!842 = !DILocation(line: 611, column: 5, scope: !814)
!843 = !DILocation(line: 611, column: 13, scope: !814)
!844 = !DILocation(line: 612, column: 33, scope: !814)
!845 = !DILocation(line: 612, column: 23, scope: !814)
!846 = !DILocation(line: 612, column: 31, scope: !814)
!847 = !DILocation(line: 612, column: 14, scope: !814)
!848 = !DILocation(line: 612, column: 22, scope: !814)
!849 = !DILocation(line: 612, column: 5, scope: !814)
!850 = !DILocation(line: 612, column: 13, scope: !814)
!851 = !DILocation(line: 613, column: 42, scope: !814)
!852 = !DILocation(line: 613, column: 32, scope: !814)
!853 = !DILocation(line: 613, column: 40, scope: !814)
!854 = !DILocation(line: 613, column: 23, scope: !814)
!855 = !DILocation(line: 613, column: 31, scope: !814)
!856 = !DILocation(line: 613, column: 14, scope: !814)
!857 = !DILocation(line: 613, column: 22, scope: !814)
!858 = !DILocation(line: 613, column: 5, scope: !814)
!859 = !DILocation(line: 613, column: 13, scope: !814)
!860 = !DILocation(line: 614, column: 51, scope: !814)
!861 = !DILocation(line: 614, column: 41, scope: !814)
!862 = !DILocation(line: 614, column: 49, scope: !814)
!863 = !DILocation(line: 614, column: 32, scope: !814)
!864 = !DILocation(line: 614, column: 40, scope: !814)
!865 = !DILocation(line: 614, column: 23, scope: !814)
!866 = !DILocation(line: 614, column: 31, scope: !814)
!867 = !DILocation(line: 614, column: 14, scope: !814)
!868 = !DILocation(line: 614, column: 22, scope: !814)
!869 = !DILocation(line: 614, column: 5, scope: !814)
!870 = !DILocation(line: 614, column: 13, scope: !814)
!871 = !DILocation(line: 615, column: 60, scope: !814)
!872 = !DILocation(line: 615, column: 50, scope: !814)
!873 = !DILocation(line: 615, column: 58, scope: !814)
!874 = !DILocation(line: 615, column: 41, scope: !814)
!875 = !DILocation(line: 615, column: 49, scope: !814)
!876 = !DILocation(line: 615, column: 32, scope: !814)
!877 = !DILocation(line: 615, column: 40, scope: !814)
!878 = !DILocation(line: 615, column: 23, scope: !814)
!879 = !DILocation(line: 615, column: 31, scope: !814)
!880 = !DILocation(line: 615, column: 14, scope: !814)
!881 = !DILocation(line: 615, column: 22, scope: !814)
!882 = !DILocation(line: 615, column: 5, scope: !814)
!883 = !DILocation(line: 615, column: 13, scope: !814)
!884 = !DILocation(line: 616, column: 69, scope: !814)
!885 = !DILocation(line: 616, column: 59, scope: !814)
!886 = !DILocation(line: 616, column: 67, scope: !814)
!887 = !DILocation(line: 616, column: 50, scope: !814)
!888 = !DILocation(line: 616, column: 58, scope: !814)
!889 = !DILocation(line: 616, column: 41, scope: !814)
!890 = !DILocation(line: 616, column: 49, scope: !814)
!891 = !DILocation(line: 616, column: 32, scope: !814)
!892 = !DILocation(line: 616, column: 40, scope: !814)
!893 = !DILocation(line: 616, column: 23, scope: !814)
!894 = !DILocation(line: 616, column: 31, scope: !814)
!895 = !DILocation(line: 616, column: 14, scope: !814)
!896 = !DILocation(line: 616, column: 22, scope: !814)
!897 = !DILocation(line: 616, column: 5, scope: !814)
!898 = !DILocation(line: 616, column: 13, scope: !814)
!899 = !DILocation(line: 617, column: 78, scope: !814)
!900 = !DILocation(line: 617, column: 68, scope: !814)
!901 = !DILocation(line: 617, column: 76, scope: !814)
!902 = !DILocation(line: 617, column: 59, scope: !814)
!903 = !DILocation(line: 617, column: 67, scope: !814)
!904 = !DILocation(line: 617, column: 50, scope: !814)
!905 = !DILocation(line: 617, column: 58, scope: !814)
!906 = !DILocation(line: 617, column: 41, scope: !814)
!907 = !DILocation(line: 617, column: 49, scope: !814)
!908 = !DILocation(line: 617, column: 32, scope: !814)
!909 = !DILocation(line: 617, column: 40, scope: !814)
!910 = !DILocation(line: 617, column: 23, scope: !814)
!911 = !DILocation(line: 617, column: 31, scope: !814)
!912 = !DILocation(line: 617, column: 14, scope: !814)
!913 = !DILocation(line: 617, column: 22, scope: !814)
!914 = !DILocation(line: 617, column: 5, scope: !814)
!915 = !DILocation(line: 617, column: 13, scope: !814)
!916 = !DILocation(line: 618, column: 69, scope: !814)
!917 = !DILocation(line: 618, column: 59, scope: !814)
!918 = !DILocation(line: 618, column: 67, scope: !814)
!919 = !DILocation(line: 618, column: 50, scope: !814)
!920 = !DILocation(line: 618, column: 58, scope: !814)
!921 = !DILocation(line: 618, column: 41, scope: !814)
!922 = !DILocation(line: 618, column: 49, scope: !814)
!923 = !DILocation(line: 618, column: 32, scope: !814)
!924 = !DILocation(line: 618, column: 40, scope: !814)
!925 = !DILocation(line: 618, column: 23, scope: !814)
!926 = !DILocation(line: 618, column: 31, scope: !814)
!927 = !DILocation(line: 618, column: 14, scope: !814)
!928 = !DILocation(line: 618, column: 22, scope: !814)
!929 = !DILocation(line: 618, column: 5, scope: !814)
!930 = !DILocation(line: 618, column: 13, scope: !814)
!931 = !DILocation(line: 619, column: 60, scope: !814)
!932 = !DILocation(line: 619, column: 50, scope: !814)
!933 = !DILocation(line: 619, column: 58, scope: !814)
!934 = !DILocation(line: 619, column: 41, scope: !814)
!935 = !DILocation(line: 619, column: 49, scope: !814)
!936 = !DILocation(line: 619, column: 32, scope: !814)
!937 = !DILocation(line: 619, column: 40, scope: !814)
!938 = !DILocation(line: 619, column: 23, scope: !814)
!939 = !DILocation(line: 619, column: 31, scope: !814)
!940 = !DILocation(line: 619, column: 14, scope: !814)
!941 = !DILocation(line: 619, column: 22, scope: !814)
!942 = !DILocation(line: 619, column: 5, scope: !814)
!943 = !DILocation(line: 619, column: 13, scope: !814)
!944 = !DILocation(line: 620, column: 51, scope: !814)
!945 = !DILocation(line: 620, column: 41, scope: !814)
!946 = !DILocation(line: 620, column: 49, scope: !814)
!947 = !DILocation(line: 620, column: 32, scope: !814)
!948 = !DILocation(line: 620, column: 40, scope: !814)
!949 = !DILocation(line: 620, column: 23, scope: !814)
!950 = !DILocation(line: 620, column: 31, scope: !814)
!951 = !DILocation(line: 620, column: 14, scope: !814)
!952 = !DILocation(line: 620, column: 22, scope: !814)
!953 = !DILocation(line: 620, column: 5, scope: !814)
!954 = !DILocation(line: 620, column: 13, scope: !814)
!955 = !DILocation(line: 621, column: 42, scope: !814)
!956 = !DILocation(line: 621, column: 32, scope: !814)
!957 = !DILocation(line: 621, column: 40, scope: !814)
!958 = !DILocation(line: 621, column: 23, scope: !814)
!959 = !DILocation(line: 621, column: 31, scope: !814)
!960 = !DILocation(line: 621, column: 14, scope: !814)
!961 = !DILocation(line: 621, column: 22, scope: !814)
!962 = !DILocation(line: 621, column: 5, scope: !814)
!963 = !DILocation(line: 621, column: 13, scope: !814)
!964 = !DILocation(line: 622, column: 33, scope: !814)
!965 = !DILocation(line: 622, column: 23, scope: !814)
!966 = !DILocation(line: 622, column: 31, scope: !814)
!967 = !DILocation(line: 622, column: 14, scope: !814)
!968 = !DILocation(line: 622, column: 22, scope: !814)
!969 = !DILocation(line: 622, column: 5, scope: !814)
!970 = !DILocation(line: 622, column: 13, scope: !814)
!971 = !DILocation(line: 623, column: 24, scope: !814)
!972 = !DILocation(line: 623, column: 14, scope: !814)
!973 = !DILocation(line: 623, column: 22, scope: !814)
!974 = !DILocation(line: 623, column: 5, scope: !814)
!975 = !DILocation(line: 623, column: 13, scope: !814)
!976 = !DILocation(line: 624, column: 15, scope: !814)
!977 = !DILocation(line: 624, column: 5, scope: !814)
!978 = !DILocation(line: 624, column: 13, scope: !814)
!979 = !DILocation(line: 625, column: 1, scope: !814)
!980 = distinct !DISubprogram(name: "predict_8x8_ddr", scope: !1, file: !1, line: 626, type: !697, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !981)
!981 = !{!982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000}
!982 = !DILocalVariable(name: "src", arg: 1, scope: !980, file: !1, line: 626, type: !80)
!983 = !DILocalVariable(name: "edge", arg: 2, scope: !980, file: !1, line: 626, type: !80)
!984 = !DILocalVariable(name: "t0", scope: !980, file: !1, line: 628, type: !748)
!985 = !DILocalVariable(name: "t1", scope: !980, file: !1, line: 628, type: !748)
!986 = !DILocalVariable(name: "t2", scope: !980, file: !1, line: 628, type: !748)
!987 = !DILocalVariable(name: "t3", scope: !980, file: !1, line: 628, type: !748)
!988 = !DILocalVariable(name: "t4", scope: !980, file: !1, line: 628, type: !748)
!989 = !DILocalVariable(name: "t5", scope: !980, file: !1, line: 628, type: !748)
!990 = !DILocalVariable(name: "t6", scope: !980, file: !1, line: 628, type: !748)
!991 = !DILocalVariable(name: "t7", scope: !980, file: !1, line: 628, type: !748)
!992 = !DILocalVariable(name: "l0", scope: !980, file: !1, line: 629, type: !748)
!993 = !DILocalVariable(name: "l1", scope: !980, file: !1, line: 629, type: !748)
!994 = !DILocalVariable(name: "l2", scope: !980, file: !1, line: 629, type: !748)
!995 = !DILocalVariable(name: "l3", scope: !980, file: !1, line: 629, type: !748)
!996 = !DILocalVariable(name: "l4", scope: !980, file: !1, line: 629, type: !748)
!997 = !DILocalVariable(name: "l5", scope: !980, file: !1, line: 629, type: !748)
!998 = !DILocalVariable(name: "l6", scope: !980, file: !1, line: 629, type: !748)
!999 = !DILocalVariable(name: "l7", scope: !980, file: !1, line: 629, type: !748)
!1000 = !DILocalVariable(name: "lt", scope: !980, file: !1, line: 630, type: !748)
!1001 = !DILocation(line: 0, scope: !980)
!1002 = !DILocation(line: 628, column: 5, scope: !980)
!1003 = !DILocation(line: 629, column: 5, scope: !980)
!1004 = !DILocation(line: 630, column: 5, scope: !980)
!1005 = !DILocation(line: 631, column: 15, scope: !980)
!1006 = !DILocation(line: 631, column: 5, scope: !980)
!1007 = !DILocation(line: 631, column: 13, scope: !980)
!1008 = !DILocation(line: 632, column: 24, scope: !980)
!1009 = !DILocation(line: 632, column: 14, scope: !980)
!1010 = !DILocation(line: 632, column: 22, scope: !980)
!1011 = !DILocation(line: 632, column: 5, scope: !980)
!1012 = !DILocation(line: 632, column: 13, scope: !980)
!1013 = !DILocation(line: 633, column: 33, scope: !980)
!1014 = !DILocation(line: 633, column: 23, scope: !980)
!1015 = !DILocation(line: 633, column: 31, scope: !980)
!1016 = !DILocation(line: 633, column: 14, scope: !980)
!1017 = !DILocation(line: 633, column: 22, scope: !980)
!1018 = !DILocation(line: 633, column: 5, scope: !980)
!1019 = !DILocation(line: 633, column: 13, scope: !980)
!1020 = !DILocation(line: 634, column: 42, scope: !980)
!1021 = !DILocation(line: 634, column: 32, scope: !980)
!1022 = !DILocation(line: 634, column: 40, scope: !980)
!1023 = !DILocation(line: 634, column: 23, scope: !980)
!1024 = !DILocation(line: 634, column: 31, scope: !980)
!1025 = !DILocation(line: 634, column: 14, scope: !980)
!1026 = !DILocation(line: 634, column: 22, scope: !980)
!1027 = !DILocation(line: 634, column: 5, scope: !980)
!1028 = !DILocation(line: 634, column: 13, scope: !980)
!1029 = !DILocation(line: 635, column: 51, scope: !980)
!1030 = !DILocation(line: 635, column: 41, scope: !980)
!1031 = !DILocation(line: 635, column: 49, scope: !980)
!1032 = !DILocation(line: 635, column: 32, scope: !980)
!1033 = !DILocation(line: 635, column: 40, scope: !980)
!1034 = !DILocation(line: 635, column: 23, scope: !980)
!1035 = !DILocation(line: 635, column: 31, scope: !980)
!1036 = !DILocation(line: 635, column: 14, scope: !980)
!1037 = !DILocation(line: 635, column: 22, scope: !980)
!1038 = !DILocation(line: 635, column: 5, scope: !980)
!1039 = !DILocation(line: 635, column: 13, scope: !980)
!1040 = !DILocation(line: 636, column: 60, scope: !980)
!1041 = !DILocation(line: 636, column: 50, scope: !980)
!1042 = !DILocation(line: 636, column: 58, scope: !980)
!1043 = !DILocation(line: 636, column: 41, scope: !980)
!1044 = !DILocation(line: 636, column: 49, scope: !980)
!1045 = !DILocation(line: 636, column: 32, scope: !980)
!1046 = !DILocation(line: 636, column: 40, scope: !980)
!1047 = !DILocation(line: 636, column: 23, scope: !980)
!1048 = !DILocation(line: 636, column: 31, scope: !980)
!1049 = !DILocation(line: 636, column: 14, scope: !980)
!1050 = !DILocation(line: 636, column: 22, scope: !980)
!1051 = !DILocation(line: 636, column: 5, scope: !980)
!1052 = !DILocation(line: 636, column: 13, scope: !980)
!1053 = !DILocation(line: 637, column: 69, scope: !980)
!1054 = !DILocation(line: 637, column: 59, scope: !980)
!1055 = !DILocation(line: 637, column: 67, scope: !980)
!1056 = !DILocation(line: 637, column: 50, scope: !980)
!1057 = !DILocation(line: 637, column: 58, scope: !980)
!1058 = !DILocation(line: 637, column: 41, scope: !980)
!1059 = !DILocation(line: 637, column: 49, scope: !980)
!1060 = !DILocation(line: 637, column: 32, scope: !980)
!1061 = !DILocation(line: 637, column: 40, scope: !980)
!1062 = !DILocation(line: 637, column: 23, scope: !980)
!1063 = !DILocation(line: 637, column: 31, scope: !980)
!1064 = !DILocation(line: 637, column: 14, scope: !980)
!1065 = !DILocation(line: 637, column: 22, scope: !980)
!1066 = !DILocation(line: 637, column: 5, scope: !980)
!1067 = !DILocation(line: 637, column: 13, scope: !980)
!1068 = !DILocation(line: 638, column: 78, scope: !980)
!1069 = !DILocation(line: 638, column: 68, scope: !980)
!1070 = !DILocation(line: 638, column: 76, scope: !980)
!1071 = !DILocation(line: 638, column: 59, scope: !980)
!1072 = !DILocation(line: 638, column: 67, scope: !980)
!1073 = !DILocation(line: 638, column: 50, scope: !980)
!1074 = !DILocation(line: 638, column: 58, scope: !980)
!1075 = !DILocation(line: 638, column: 41, scope: !980)
!1076 = !DILocation(line: 638, column: 49, scope: !980)
!1077 = !DILocation(line: 638, column: 32, scope: !980)
!1078 = !DILocation(line: 638, column: 40, scope: !980)
!1079 = !DILocation(line: 638, column: 23, scope: !980)
!1080 = !DILocation(line: 638, column: 31, scope: !980)
!1081 = !DILocation(line: 638, column: 14, scope: !980)
!1082 = !DILocation(line: 638, column: 22, scope: !980)
!1083 = !DILocation(line: 638, column: 13, scope: !980)
!1084 = !DILocation(line: 639, column: 69, scope: !980)
!1085 = !DILocation(line: 639, column: 59, scope: !980)
!1086 = !DILocation(line: 639, column: 67, scope: !980)
!1087 = !DILocation(line: 639, column: 50, scope: !980)
!1088 = !DILocation(line: 639, column: 58, scope: !980)
!1089 = !DILocation(line: 639, column: 41, scope: !980)
!1090 = !DILocation(line: 639, column: 49, scope: !980)
!1091 = !DILocation(line: 639, column: 32, scope: !980)
!1092 = !DILocation(line: 639, column: 40, scope: !980)
!1093 = !DILocation(line: 639, column: 23, scope: !980)
!1094 = !DILocation(line: 639, column: 31, scope: !980)
!1095 = !DILocation(line: 639, column: 14, scope: !980)
!1096 = !DILocation(line: 639, column: 22, scope: !980)
!1097 = !DILocation(line: 639, column: 5, scope: !980)
!1098 = !DILocation(line: 639, column: 13, scope: !980)
!1099 = !DILocation(line: 640, column: 60, scope: !980)
!1100 = !DILocation(line: 640, column: 50, scope: !980)
!1101 = !DILocation(line: 640, column: 58, scope: !980)
!1102 = !DILocation(line: 640, column: 41, scope: !980)
!1103 = !DILocation(line: 640, column: 49, scope: !980)
!1104 = !DILocation(line: 640, column: 32, scope: !980)
!1105 = !DILocation(line: 640, column: 40, scope: !980)
!1106 = !DILocation(line: 640, column: 23, scope: !980)
!1107 = !DILocation(line: 640, column: 31, scope: !980)
!1108 = !DILocation(line: 640, column: 14, scope: !980)
!1109 = !DILocation(line: 640, column: 22, scope: !980)
!1110 = !DILocation(line: 640, column: 5, scope: !980)
!1111 = !DILocation(line: 640, column: 13, scope: !980)
!1112 = !DILocation(line: 641, column: 51, scope: !980)
!1113 = !DILocation(line: 641, column: 41, scope: !980)
!1114 = !DILocation(line: 641, column: 49, scope: !980)
!1115 = !DILocation(line: 641, column: 32, scope: !980)
!1116 = !DILocation(line: 641, column: 40, scope: !980)
!1117 = !DILocation(line: 641, column: 23, scope: !980)
!1118 = !DILocation(line: 641, column: 31, scope: !980)
!1119 = !DILocation(line: 641, column: 14, scope: !980)
!1120 = !DILocation(line: 641, column: 22, scope: !980)
!1121 = !DILocation(line: 641, column: 5, scope: !980)
!1122 = !DILocation(line: 641, column: 13, scope: !980)
!1123 = !DILocation(line: 642, column: 42, scope: !980)
!1124 = !DILocation(line: 642, column: 32, scope: !980)
!1125 = !DILocation(line: 642, column: 40, scope: !980)
!1126 = !DILocation(line: 642, column: 23, scope: !980)
!1127 = !DILocation(line: 642, column: 31, scope: !980)
!1128 = !DILocation(line: 642, column: 14, scope: !980)
!1129 = !DILocation(line: 642, column: 22, scope: !980)
!1130 = !DILocation(line: 642, column: 5, scope: !980)
!1131 = !DILocation(line: 642, column: 13, scope: !980)
!1132 = !DILocation(line: 643, column: 33, scope: !980)
!1133 = !DILocation(line: 643, column: 23, scope: !980)
!1134 = !DILocation(line: 643, column: 31, scope: !980)
!1135 = !DILocation(line: 643, column: 14, scope: !980)
!1136 = !DILocation(line: 643, column: 22, scope: !980)
!1137 = !DILocation(line: 643, column: 5, scope: !980)
!1138 = !DILocation(line: 643, column: 13, scope: !980)
!1139 = !DILocation(line: 644, column: 24, scope: !980)
!1140 = !DILocation(line: 644, column: 14, scope: !980)
!1141 = !DILocation(line: 644, column: 22, scope: !980)
!1142 = !DILocation(line: 644, column: 5, scope: !980)
!1143 = !DILocation(line: 644, column: 13, scope: !980)
!1144 = !DILocation(line: 645, column: 15, scope: !980)
!1145 = !DILocation(line: 645, column: 5, scope: !980)
!1146 = !DILocation(line: 645, column: 13, scope: !980)
!1147 = !DILocation(line: 647, column: 1, scope: !980)
!1148 = distinct !DISubprogram(name: "predict_8x8_vr", scope: !1, file: !1, line: 648, type: !697, scopeLine: 649, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1149)
!1149 = !{!1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!1150 = !DILocalVariable(name: "src", arg: 1, scope: !1148, file: !1, line: 648, type: !80)
!1151 = !DILocalVariable(name: "edge", arg: 2, scope: !1148, file: !1, line: 648, type: !80)
!1152 = !DILocalVariable(name: "t0", scope: !1148, file: !1, line: 650, type: !748)
!1153 = !DILocalVariable(name: "t1", scope: !1148, file: !1, line: 650, type: !748)
!1154 = !DILocalVariable(name: "t2", scope: !1148, file: !1, line: 650, type: !748)
!1155 = !DILocalVariable(name: "t3", scope: !1148, file: !1, line: 650, type: !748)
!1156 = !DILocalVariable(name: "t4", scope: !1148, file: !1, line: 650, type: !748)
!1157 = !DILocalVariable(name: "t5", scope: !1148, file: !1, line: 650, type: !748)
!1158 = !DILocalVariable(name: "t6", scope: !1148, file: !1, line: 650, type: !748)
!1159 = !DILocalVariable(name: "t7", scope: !1148, file: !1, line: 650, type: !748)
!1160 = !DILocalVariable(name: "l0", scope: !1148, file: !1, line: 651, type: !748)
!1161 = !DILocalVariable(name: "l1", scope: !1148, file: !1, line: 651, type: !748)
!1162 = !DILocalVariable(name: "l2", scope: !1148, file: !1, line: 651, type: !748)
!1163 = !DILocalVariable(name: "l3", scope: !1148, file: !1, line: 651, type: !748)
!1164 = !DILocalVariable(name: "l4", scope: !1148, file: !1, line: 651, type: !748)
!1165 = !DILocalVariable(name: "l5", scope: !1148, file: !1, line: 651, type: !748)
!1166 = !DILocalVariable(name: "l6", scope: !1148, file: !1, line: 651, type: !748)
!1167 = !DILocalVariable(name: "l7", scope: !1148, file: !1, line: 651, type: !748)
!1168 = !DILocalVariable(name: "lt", scope: !1148, file: !1, line: 652, type: !748)
!1169 = !DILocation(line: 0, scope: !1148)
!1170 = !DILocation(line: 650, column: 5, scope: !1148)
!1171 = !DILocation(line: 651, column: 5, scope: !1148)
!1172 = !DILocation(line: 652, column: 5, scope: !1148)
!1173 = !DILocation(line: 653, column: 15, scope: !1148)
!1174 = !DILocation(line: 653, column: 5, scope: !1148)
!1175 = !DILocation(line: 653, column: 13, scope: !1148)
!1176 = !DILocation(line: 654, column: 15, scope: !1148)
!1177 = !DILocation(line: 654, column: 5, scope: !1148)
!1178 = !DILocation(line: 654, column: 13, scope: !1148)
!1179 = !DILocation(line: 655, column: 24, scope: !1148)
!1180 = !DILocation(line: 655, column: 14, scope: !1148)
!1181 = !DILocation(line: 655, column: 22, scope: !1148)
!1182 = !DILocation(line: 655, column: 5, scope: !1148)
!1183 = !DILocation(line: 655, column: 13, scope: !1148)
!1184 = !DILocation(line: 656, column: 24, scope: !1148)
!1185 = !DILocation(line: 656, column: 14, scope: !1148)
!1186 = !DILocation(line: 656, column: 22, scope: !1148)
!1187 = !DILocation(line: 656, column: 5, scope: !1148)
!1188 = !DILocation(line: 656, column: 13, scope: !1148)
!1189 = !DILocation(line: 657, column: 33, scope: !1148)
!1190 = !DILocation(line: 657, column: 23, scope: !1148)
!1191 = !DILocation(line: 657, column: 31, scope: !1148)
!1192 = !DILocation(line: 657, column: 14, scope: !1148)
!1193 = !DILocation(line: 657, column: 22, scope: !1148)
!1194 = !DILocation(line: 657, column: 5, scope: !1148)
!1195 = !DILocation(line: 657, column: 13, scope: !1148)
!1196 = !DILocation(line: 658, column: 33, scope: !1148)
!1197 = !DILocation(line: 658, column: 23, scope: !1148)
!1198 = !DILocation(line: 658, column: 31, scope: !1148)
!1199 = !DILocation(line: 658, column: 14, scope: !1148)
!1200 = !DILocation(line: 658, column: 22, scope: !1148)
!1201 = !DILocation(line: 658, column: 5, scope: !1148)
!1202 = !DILocation(line: 658, column: 13, scope: !1148)
!1203 = !DILocation(line: 659, column: 42, scope: !1148)
!1204 = !DILocation(line: 659, column: 32, scope: !1148)
!1205 = !DILocation(line: 659, column: 40, scope: !1148)
!1206 = !DILocation(line: 659, column: 23, scope: !1148)
!1207 = !DILocation(line: 659, column: 31, scope: !1148)
!1208 = !DILocation(line: 659, column: 14, scope: !1148)
!1209 = !DILocation(line: 659, column: 22, scope: !1148)
!1210 = !DILocation(line: 659, column: 5, scope: !1148)
!1211 = !DILocation(line: 659, column: 13, scope: !1148)
!1212 = !DILocation(line: 660, column: 42, scope: !1148)
!1213 = !DILocation(line: 660, column: 32, scope: !1148)
!1214 = !DILocation(line: 660, column: 40, scope: !1148)
!1215 = !DILocation(line: 660, column: 23, scope: !1148)
!1216 = !DILocation(line: 660, column: 31, scope: !1148)
!1217 = !DILocation(line: 660, column: 14, scope: !1148)
!1218 = !DILocation(line: 660, column: 22, scope: !1148)
!1219 = !DILocation(line: 660, column: 13, scope: !1148)
!1220 = !DILocation(line: 661, column: 42, scope: !1148)
!1221 = !DILocation(line: 661, column: 32, scope: !1148)
!1222 = !DILocation(line: 661, column: 40, scope: !1148)
!1223 = !DILocation(line: 661, column: 23, scope: !1148)
!1224 = !DILocation(line: 661, column: 31, scope: !1148)
!1225 = !DILocation(line: 661, column: 14, scope: !1148)
!1226 = !DILocation(line: 661, column: 22, scope: !1148)
!1227 = !DILocation(line: 661, column: 5, scope: !1148)
!1228 = !DILocation(line: 661, column: 13, scope: !1148)
!1229 = !DILocation(line: 662, column: 42, scope: !1148)
!1230 = !DILocation(line: 662, column: 32, scope: !1148)
!1231 = !DILocation(line: 662, column: 40, scope: !1148)
!1232 = !DILocation(line: 662, column: 23, scope: !1148)
!1233 = !DILocation(line: 662, column: 31, scope: !1148)
!1234 = !DILocation(line: 662, column: 14, scope: !1148)
!1235 = !DILocation(line: 662, column: 22, scope: !1148)
!1236 = !DILocation(line: 662, column: 5, scope: !1148)
!1237 = !DILocation(line: 662, column: 13, scope: !1148)
!1238 = !DILocation(line: 663, column: 42, scope: !1148)
!1239 = !DILocation(line: 663, column: 32, scope: !1148)
!1240 = !DILocation(line: 663, column: 40, scope: !1148)
!1241 = !DILocation(line: 663, column: 23, scope: !1148)
!1242 = !DILocation(line: 663, column: 31, scope: !1148)
!1243 = !DILocation(line: 663, column: 14, scope: !1148)
!1244 = !DILocation(line: 663, column: 22, scope: !1148)
!1245 = !DILocation(line: 663, column: 5, scope: !1148)
!1246 = !DILocation(line: 663, column: 13, scope: !1148)
!1247 = !DILocation(line: 664, column: 42, scope: !1148)
!1248 = !DILocation(line: 664, column: 32, scope: !1148)
!1249 = !DILocation(line: 664, column: 40, scope: !1148)
!1250 = !DILocation(line: 664, column: 23, scope: !1148)
!1251 = !DILocation(line: 664, column: 31, scope: !1148)
!1252 = !DILocation(line: 664, column: 14, scope: !1148)
!1253 = !DILocation(line: 664, column: 22, scope: !1148)
!1254 = !DILocation(line: 664, column: 5, scope: !1148)
!1255 = !DILocation(line: 664, column: 13, scope: !1148)
!1256 = !DILocation(line: 665, column: 42, scope: !1148)
!1257 = !DILocation(line: 665, column: 32, scope: !1148)
!1258 = !DILocation(line: 665, column: 40, scope: !1148)
!1259 = !DILocation(line: 665, column: 23, scope: !1148)
!1260 = !DILocation(line: 665, column: 31, scope: !1148)
!1261 = !DILocation(line: 665, column: 14, scope: !1148)
!1262 = !DILocation(line: 665, column: 22, scope: !1148)
!1263 = !DILocation(line: 665, column: 5, scope: !1148)
!1264 = !DILocation(line: 665, column: 13, scope: !1148)
!1265 = !DILocation(line: 666, column: 42, scope: !1148)
!1266 = !DILocation(line: 666, column: 32, scope: !1148)
!1267 = !DILocation(line: 666, column: 40, scope: !1148)
!1268 = !DILocation(line: 666, column: 23, scope: !1148)
!1269 = !DILocation(line: 666, column: 31, scope: !1148)
!1270 = !DILocation(line: 666, column: 14, scope: !1148)
!1271 = !DILocation(line: 666, column: 22, scope: !1148)
!1272 = !DILocation(line: 666, column: 5, scope: !1148)
!1273 = !DILocation(line: 666, column: 13, scope: !1148)
!1274 = !DILocation(line: 667, column: 42, scope: !1148)
!1275 = !DILocation(line: 667, column: 32, scope: !1148)
!1276 = !DILocation(line: 667, column: 40, scope: !1148)
!1277 = !DILocation(line: 667, column: 23, scope: !1148)
!1278 = !DILocation(line: 667, column: 31, scope: !1148)
!1279 = !DILocation(line: 667, column: 14, scope: !1148)
!1280 = !DILocation(line: 667, column: 22, scope: !1148)
!1281 = !DILocation(line: 667, column: 5, scope: !1148)
!1282 = !DILocation(line: 667, column: 13, scope: !1148)
!1283 = !DILocation(line: 668, column: 42, scope: !1148)
!1284 = !DILocation(line: 668, column: 32, scope: !1148)
!1285 = !DILocation(line: 668, column: 40, scope: !1148)
!1286 = !DILocation(line: 668, column: 23, scope: !1148)
!1287 = !DILocation(line: 668, column: 31, scope: !1148)
!1288 = !DILocation(line: 668, column: 14, scope: !1148)
!1289 = !DILocation(line: 668, column: 22, scope: !1148)
!1290 = !DILocation(line: 668, column: 5, scope: !1148)
!1291 = !DILocation(line: 668, column: 13, scope: !1148)
!1292 = !DILocation(line: 669, column: 33, scope: !1148)
!1293 = !DILocation(line: 669, column: 23, scope: !1148)
!1294 = !DILocation(line: 669, column: 31, scope: !1148)
!1295 = !DILocation(line: 669, column: 14, scope: !1148)
!1296 = !DILocation(line: 669, column: 22, scope: !1148)
!1297 = !DILocation(line: 669, column: 5, scope: !1148)
!1298 = !DILocation(line: 669, column: 13, scope: !1148)
!1299 = !DILocation(line: 670, column: 33, scope: !1148)
!1300 = !DILocation(line: 670, column: 23, scope: !1148)
!1301 = !DILocation(line: 670, column: 31, scope: !1148)
!1302 = !DILocation(line: 670, column: 14, scope: !1148)
!1303 = !DILocation(line: 670, column: 22, scope: !1148)
!1304 = !DILocation(line: 670, column: 5, scope: !1148)
!1305 = !DILocation(line: 670, column: 13, scope: !1148)
!1306 = !DILocation(line: 671, column: 24, scope: !1148)
!1307 = !DILocation(line: 671, column: 14, scope: !1148)
!1308 = !DILocation(line: 671, column: 22, scope: !1148)
!1309 = !DILocation(line: 671, column: 5, scope: !1148)
!1310 = !DILocation(line: 671, column: 13, scope: !1148)
!1311 = !DILocation(line: 672, column: 24, scope: !1148)
!1312 = !DILocation(line: 672, column: 14, scope: !1148)
!1313 = !DILocation(line: 672, column: 22, scope: !1148)
!1314 = !DILocation(line: 672, column: 5, scope: !1148)
!1315 = !DILocation(line: 672, column: 13, scope: !1148)
!1316 = !DILocation(line: 673, column: 15, scope: !1148)
!1317 = !DILocation(line: 673, column: 5, scope: !1148)
!1318 = !DILocation(line: 673, column: 13, scope: !1148)
!1319 = !DILocation(line: 674, column: 15, scope: !1148)
!1320 = !DILocation(line: 674, column: 5, scope: !1148)
!1321 = !DILocation(line: 674, column: 13, scope: !1148)
!1322 = !DILocation(line: 675, column: 1, scope: !1148)
!1323 = distinct !DISubprogram(name: "predict_8x8_hd", scope: !1, file: !1, line: 676, type: !697, scopeLine: 677, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354}
!1325 = !DILocalVariable(name: "src", arg: 1, scope: !1323, file: !1, line: 676, type: !80)
!1326 = !DILocalVariable(name: "edge", arg: 2, scope: !1323, file: !1, line: 676, type: !80)
!1327 = !DILocalVariable(name: "t0", scope: !1323, file: !1, line: 678, type: !748)
!1328 = !DILocalVariable(name: "t1", scope: !1323, file: !1, line: 678, type: !748)
!1329 = !DILocalVariable(name: "t2", scope: !1323, file: !1, line: 678, type: !748)
!1330 = !DILocalVariable(name: "t3", scope: !1323, file: !1, line: 678, type: !748)
!1331 = !DILocalVariable(name: "t4", scope: !1323, file: !1, line: 678, type: !748)
!1332 = !DILocalVariable(name: "t5", scope: !1323, file: !1, line: 678, type: !748)
!1333 = !DILocalVariable(name: "t6", scope: !1323, file: !1, line: 678, type: !748)
!1334 = !DILocalVariable(name: "t7", scope: !1323, file: !1, line: 678, type: !748)
!1335 = !DILocalVariable(name: "l0", scope: !1323, file: !1, line: 679, type: !748)
!1336 = !DILocalVariable(name: "l1", scope: !1323, file: !1, line: 679, type: !748)
!1337 = !DILocalVariable(name: "l2", scope: !1323, file: !1, line: 679, type: !748)
!1338 = !DILocalVariable(name: "l3", scope: !1323, file: !1, line: 679, type: !748)
!1339 = !DILocalVariable(name: "l4", scope: !1323, file: !1, line: 679, type: !748)
!1340 = !DILocalVariable(name: "l5", scope: !1323, file: !1, line: 679, type: !748)
!1341 = !DILocalVariable(name: "l6", scope: !1323, file: !1, line: 679, type: !748)
!1342 = !DILocalVariable(name: "l7", scope: !1323, file: !1, line: 679, type: !748)
!1343 = !DILocalVariable(name: "lt", scope: !1323, file: !1, line: 680, type: !748)
!1344 = !DILocalVariable(name: "p1", scope: !1323, file: !1, line: 681, type: !84)
!1345 = !DILocalVariable(name: "p2", scope: !1323, file: !1, line: 682, type: !84)
!1346 = !DILocalVariable(name: "p3", scope: !1323, file: !1, line: 683, type: !84)
!1347 = !DILocalVariable(name: "p4", scope: !1323, file: !1, line: 684, type: !84)
!1348 = !DILocalVariable(name: "p5", scope: !1323, file: !1, line: 685, type: !84)
!1349 = !DILocalVariable(name: "p6", scope: !1323, file: !1, line: 686, type: !84)
!1350 = !DILocalVariable(name: "p7", scope: !1323, file: !1, line: 687, type: !84)
!1351 = !DILocalVariable(name: "p8", scope: !1323, file: !1, line: 688, type: !84)
!1352 = !DILocalVariable(name: "p9", scope: !1323, file: !1, line: 689, type: !84)
!1353 = !DILocalVariable(name: "p10", scope: !1323, file: !1, line: 690, type: !84)
!1354 = !DILocalVariable(name: "p11", scope: !1323, file: !1, line: 691, type: !84)
!1355 = !DILocation(line: 0, scope: !1323)
!1356 = !DILocation(line: 678, column: 5, scope: !1323)
!1357 = !DILocation(line: 679, column: 5, scope: !1323)
!1358 = !DILocation(line: 680, column: 5, scope: !1323)
!1359 = !DILocation(line: 681, column: 24, scope: !1323)
!1360 = !DILocation(line: 681, column: 35, scope: !1323)
!1361 = !DILocalVariable(name: "a", arg: 1, scope: !1362, file: !4, line: 328, type: !84)
!1362 = distinct !DISubprogram(name: "pack8to16", scope: !4, file: !4, line: 328, type: !1363, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1365)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!68, !84, !84}
!1365 = !{!1361, !1366}
!1366 = !DILocalVariable(name: "b", arg: 2, scope: !1362, file: !4, line: 328, type: !84)
!1367 = !DILocation(line: 0, scope: !1362, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 681, column: 14, scope: !1323)
!1369 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1368)
!1370 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1368)
!1371 = !DILocation(line: 682, column: 24, scope: !1323)
!1372 = !DILocation(line: 682, column: 35, scope: !1323)
!1373 = !DILocation(line: 0, scope: !1362, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 682, column: 14, scope: !1323)
!1375 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1374)
!1376 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1374)
!1377 = !DILocation(line: 683, column: 24, scope: !1323)
!1378 = !DILocation(line: 683, column: 35, scope: !1323)
!1379 = !DILocation(line: 0, scope: !1362, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 683, column: 14, scope: !1323)
!1381 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1380)
!1382 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1380)
!1383 = !DILocation(line: 684, column: 24, scope: !1323)
!1384 = !DILocation(line: 684, column: 35, scope: !1323)
!1385 = !DILocation(line: 0, scope: !1362, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 684, column: 14, scope: !1323)
!1387 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1386)
!1388 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1386)
!1389 = !DILocation(line: 685, column: 24, scope: !1323)
!1390 = !DILocation(line: 685, column: 35, scope: !1323)
!1391 = !DILocation(line: 0, scope: !1362, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 685, column: 14, scope: !1323)
!1393 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1392)
!1394 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1392)
!1395 = !DILocation(line: 686, column: 24, scope: !1323)
!1396 = !DILocation(line: 686, column: 35, scope: !1323)
!1397 = !DILocation(line: 0, scope: !1362, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 686, column: 14, scope: !1323)
!1399 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1398)
!1400 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1398)
!1401 = !DILocation(line: 687, column: 24, scope: !1323)
!1402 = !DILocation(line: 687, column: 35, scope: !1323)
!1403 = !DILocation(line: 0, scope: !1362, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 687, column: 14, scope: !1323)
!1405 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1404)
!1406 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1404)
!1407 = !DILocation(line: 688, column: 24, scope: !1323)
!1408 = !DILocation(line: 688, column: 35, scope: !1323)
!1409 = !DILocation(line: 0, scope: !1362, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 688, column: 14, scope: !1323)
!1411 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1410)
!1412 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1410)
!1413 = !DILocation(line: 689, column: 24, scope: !1323)
!1414 = !DILocation(line: 689, column: 38, scope: !1323)
!1415 = !DILocation(line: 0, scope: !1362, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 689, column: 14, scope: !1323)
!1417 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1416)
!1418 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1416)
!1419 = !DILocation(line: 690, column: 25, scope: !1323)
!1420 = !DILocation(line: 690, column: 39, scope: !1323)
!1421 = !DILocation(line: 0, scope: !1362, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 690, column: 15, scope: !1323)
!1423 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1422)
!1424 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1422)
!1425 = !DILocation(line: 691, column: 25, scope: !1323)
!1426 = !DILocation(line: 691, column: 39, scope: !1323)
!1427 = !DILocation(line: 0, scope: !1362, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 691, column: 15, scope: !1323)
!1429 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1428)
!1430 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1428)
!1431 = !DILocalVariable(name: "a", arg: 1, scope: !1432, file: !4, line: 320, type: !84)
!1432 = distinct !DISubprogram(name: "pack16to32", scope: !4, file: !4, line: 320, type: !1363, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1433)
!1433 = !{!1431, !1434}
!1434 = !DILocalVariable(name: "b", arg: 2, scope: !1432, file: !4, line: 320, type: !84)
!1435 = !DILocation(line: 0, scope: !1432, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 692, column: 17, scope: !1323)
!1437 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1436)
!1438 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1436)
!1439 = !DILocation(line: 692, column: 5, scope: !1323)
!1440 = !DILocation(line: 692, column: 15, scope: !1323)
!1441 = !DILocation(line: 0, scope: !1432, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 693, column: 17, scope: !1323)
!1443 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1442)
!1444 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1442)
!1445 = !DILocation(line: 693, column: 5, scope: !1323)
!1446 = !DILocation(line: 693, column: 15, scope: !1323)
!1447 = !DILocation(line: 0, scope: !1432, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 694, column: 28, scope: !1323)
!1449 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1448)
!1450 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1448)
!1451 = !DILocation(line: 694, column: 16, scope: !1323)
!1452 = !DILocation(line: 694, column: 26, scope: !1323)
!1453 = !DILocation(line: 694, column: 5, scope: !1323)
!1454 = !DILocation(line: 694, column: 15, scope: !1323)
!1455 = !DILocation(line: 0, scope: !1432, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 695, column: 28, scope: !1323)
!1457 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1456)
!1458 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1456)
!1459 = !DILocation(line: 695, column: 16, scope: !1323)
!1460 = !DILocation(line: 695, column: 26, scope: !1323)
!1461 = !DILocation(line: 695, column: 5, scope: !1323)
!1462 = !DILocation(line: 695, column: 15, scope: !1323)
!1463 = !DILocation(line: 0, scope: !1432, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 696, column: 28, scope: !1323)
!1465 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1464)
!1466 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1464)
!1467 = !DILocation(line: 696, column: 16, scope: !1323)
!1468 = !DILocation(line: 696, column: 26, scope: !1323)
!1469 = !DILocation(line: 696, column: 5, scope: !1323)
!1470 = !DILocation(line: 696, column: 15, scope: !1323)
!1471 = !DILocation(line: 0, scope: !1432, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 697, column: 28, scope: !1323)
!1473 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1472)
!1474 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1472)
!1475 = !DILocation(line: 697, column: 16, scope: !1323)
!1476 = !DILocation(line: 697, column: 26, scope: !1323)
!1477 = !DILocation(line: 697, column: 5, scope: !1323)
!1478 = !DILocation(line: 697, column: 15, scope: !1323)
!1479 = !DILocation(line: 0, scope: !1432, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 698, column: 28, scope: !1323)
!1481 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1480)
!1482 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1480)
!1483 = !DILocation(line: 698, column: 16, scope: !1323)
!1484 = !DILocation(line: 698, column: 26, scope: !1323)
!1485 = !DILocation(line: 698, column: 5, scope: !1323)
!1486 = !DILocation(line: 698, column: 15, scope: !1323)
!1487 = !DILocation(line: 0, scope: !1432, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 699, column: 28, scope: !1323)
!1489 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1488)
!1490 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1488)
!1491 = !DILocation(line: 699, column: 26, scope: !1323)
!1492 = !DILocation(line: 699, column: 5, scope: !1323)
!1493 = !DILocation(line: 699, column: 15, scope: !1323)
!1494 = !DILocation(line: 0, scope: !1432, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 700, column: 17, scope: !1323)
!1496 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1495)
!1497 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1495)
!1498 = !DILocation(line: 700, column: 5, scope: !1323)
!1499 = !DILocation(line: 700, column: 15, scope: !1323)
!1500 = !DILocation(line: 0, scope: !1432, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 701, column: 17, scope: !1323)
!1502 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1501)
!1503 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1501)
!1504 = !DILocation(line: 701, column: 5, scope: !1323)
!1505 = !DILocation(line: 701, column: 15, scope: !1323)
!1506 = !DILocation(line: 702, column: 1, scope: !1323)
!1507 = distinct !DISubprogram(name: "predict_8x8_vl", scope: !1, file: !1, line: 703, type: !697, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1508)
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526}
!1509 = !DILocalVariable(name: "src", arg: 1, scope: !1507, file: !1, line: 703, type: !80)
!1510 = !DILocalVariable(name: "edge", arg: 2, scope: !1507, file: !1, line: 703, type: !80)
!1511 = !DILocalVariable(name: "t0", scope: !1507, file: !1, line: 705, type: !748)
!1512 = !DILocalVariable(name: "t1", scope: !1507, file: !1, line: 705, type: !748)
!1513 = !DILocalVariable(name: "t2", scope: !1507, file: !1, line: 705, type: !748)
!1514 = !DILocalVariable(name: "t3", scope: !1507, file: !1, line: 705, type: !748)
!1515 = !DILocalVariable(name: "t4", scope: !1507, file: !1, line: 705, type: !748)
!1516 = !DILocalVariable(name: "t5", scope: !1507, file: !1, line: 705, type: !748)
!1517 = !DILocalVariable(name: "t6", scope: !1507, file: !1, line: 705, type: !748)
!1518 = !DILocalVariable(name: "t7", scope: !1507, file: !1, line: 705, type: !748)
!1519 = !DILocalVariable(name: "t8", scope: !1507, file: !1, line: 706, type: !748)
!1520 = !DILocalVariable(name: "t9", scope: !1507, file: !1, line: 706, type: !748)
!1521 = !DILocalVariable(name: "t10", scope: !1507, file: !1, line: 706, type: !748)
!1522 = !DILocalVariable(name: "t11", scope: !1507, file: !1, line: 706, type: !748)
!1523 = !DILocalVariable(name: "t12", scope: !1507, file: !1, line: 706, type: !748)
!1524 = !DILocalVariable(name: "t13", scope: !1507, file: !1, line: 706, type: !748)
!1525 = !DILocalVariable(name: "t14", scope: !1507, file: !1, line: 706, type: !748)
!1526 = !DILocalVariable(name: "t15", scope: !1507, file: !1, line: 706, type: !748)
!1527 = !DILocation(line: 0, scope: !1507)
!1528 = !DILocation(line: 705, column: 5, scope: !1507)
!1529 = !DILocation(line: 706, column: 5, scope: !1507)
!1530 = !DILocation(line: 707, column: 15, scope: !1507)
!1531 = !DILocation(line: 707, column: 13, scope: !1507)
!1532 = !DILocation(line: 708, column: 15, scope: !1507)
!1533 = !DILocation(line: 708, column: 5, scope: !1507)
!1534 = !DILocation(line: 708, column: 13, scope: !1507)
!1535 = !DILocation(line: 709, column: 24, scope: !1507)
!1536 = !DILocation(line: 709, column: 14, scope: !1507)
!1537 = !DILocation(line: 709, column: 22, scope: !1507)
!1538 = !DILocation(line: 709, column: 5, scope: !1507)
!1539 = !DILocation(line: 709, column: 13, scope: !1507)
!1540 = !DILocation(line: 710, column: 24, scope: !1507)
!1541 = !DILocation(line: 710, column: 14, scope: !1507)
!1542 = !DILocation(line: 710, column: 22, scope: !1507)
!1543 = !DILocation(line: 710, column: 5, scope: !1507)
!1544 = !DILocation(line: 710, column: 13, scope: !1507)
!1545 = !DILocation(line: 711, column: 33, scope: !1507)
!1546 = !DILocation(line: 711, column: 23, scope: !1507)
!1547 = !DILocation(line: 711, column: 31, scope: !1507)
!1548 = !DILocation(line: 711, column: 14, scope: !1507)
!1549 = !DILocation(line: 711, column: 22, scope: !1507)
!1550 = !DILocation(line: 711, column: 5, scope: !1507)
!1551 = !DILocation(line: 711, column: 13, scope: !1507)
!1552 = !DILocation(line: 712, column: 33, scope: !1507)
!1553 = !DILocation(line: 712, column: 23, scope: !1507)
!1554 = !DILocation(line: 712, column: 31, scope: !1507)
!1555 = !DILocation(line: 712, column: 14, scope: !1507)
!1556 = !DILocation(line: 712, column: 22, scope: !1507)
!1557 = !DILocation(line: 712, column: 5, scope: !1507)
!1558 = !DILocation(line: 712, column: 13, scope: !1507)
!1559 = !DILocation(line: 713, column: 42, scope: !1507)
!1560 = !DILocation(line: 713, column: 32, scope: !1507)
!1561 = !DILocation(line: 713, column: 40, scope: !1507)
!1562 = !DILocation(line: 713, column: 23, scope: !1507)
!1563 = !DILocation(line: 713, column: 31, scope: !1507)
!1564 = !DILocation(line: 713, column: 14, scope: !1507)
!1565 = !DILocation(line: 713, column: 22, scope: !1507)
!1566 = !DILocation(line: 713, column: 5, scope: !1507)
!1567 = !DILocation(line: 713, column: 13, scope: !1507)
!1568 = !DILocation(line: 714, column: 42, scope: !1507)
!1569 = !DILocation(line: 714, column: 32, scope: !1507)
!1570 = !DILocation(line: 714, column: 40, scope: !1507)
!1571 = !DILocation(line: 714, column: 23, scope: !1507)
!1572 = !DILocation(line: 714, column: 31, scope: !1507)
!1573 = !DILocation(line: 714, column: 14, scope: !1507)
!1574 = !DILocation(line: 714, column: 22, scope: !1507)
!1575 = !DILocation(line: 714, column: 5, scope: !1507)
!1576 = !DILocation(line: 714, column: 13, scope: !1507)
!1577 = !DILocation(line: 715, column: 42, scope: !1507)
!1578 = !DILocation(line: 715, column: 32, scope: !1507)
!1579 = !DILocation(line: 715, column: 40, scope: !1507)
!1580 = !DILocation(line: 715, column: 23, scope: !1507)
!1581 = !DILocation(line: 715, column: 31, scope: !1507)
!1582 = !DILocation(line: 715, column: 14, scope: !1507)
!1583 = !DILocation(line: 715, column: 22, scope: !1507)
!1584 = !DILocation(line: 715, column: 5, scope: !1507)
!1585 = !DILocation(line: 715, column: 13, scope: !1507)
!1586 = !DILocation(line: 716, column: 42, scope: !1507)
!1587 = !DILocation(line: 716, column: 32, scope: !1507)
!1588 = !DILocation(line: 716, column: 40, scope: !1507)
!1589 = !DILocation(line: 716, column: 23, scope: !1507)
!1590 = !DILocation(line: 716, column: 31, scope: !1507)
!1591 = !DILocation(line: 716, column: 14, scope: !1507)
!1592 = !DILocation(line: 716, column: 22, scope: !1507)
!1593 = !DILocation(line: 716, column: 5, scope: !1507)
!1594 = !DILocation(line: 716, column: 13, scope: !1507)
!1595 = !DILocation(line: 717, column: 42, scope: !1507)
!1596 = !DILocation(line: 717, column: 32, scope: !1507)
!1597 = !DILocation(line: 717, column: 40, scope: !1507)
!1598 = !DILocation(line: 717, column: 23, scope: !1507)
!1599 = !DILocation(line: 717, column: 31, scope: !1507)
!1600 = !DILocation(line: 717, column: 14, scope: !1507)
!1601 = !DILocation(line: 717, column: 22, scope: !1507)
!1602 = !DILocation(line: 717, column: 5, scope: !1507)
!1603 = !DILocation(line: 717, column: 13, scope: !1507)
!1604 = !DILocation(line: 718, column: 42, scope: !1507)
!1605 = !DILocation(line: 718, column: 32, scope: !1507)
!1606 = !DILocation(line: 718, column: 40, scope: !1507)
!1607 = !DILocation(line: 718, column: 23, scope: !1507)
!1608 = !DILocation(line: 718, column: 31, scope: !1507)
!1609 = !DILocation(line: 718, column: 14, scope: !1507)
!1610 = !DILocation(line: 718, column: 22, scope: !1507)
!1611 = !DILocation(line: 718, column: 5, scope: !1507)
!1612 = !DILocation(line: 718, column: 13, scope: !1507)
!1613 = !DILocation(line: 719, column: 42, scope: !1507)
!1614 = !DILocation(line: 719, column: 32, scope: !1507)
!1615 = !DILocation(line: 719, column: 40, scope: !1507)
!1616 = !DILocation(line: 719, column: 23, scope: !1507)
!1617 = !DILocation(line: 719, column: 31, scope: !1507)
!1618 = !DILocation(line: 719, column: 14, scope: !1507)
!1619 = !DILocation(line: 719, column: 22, scope: !1507)
!1620 = !DILocation(line: 719, column: 5, scope: !1507)
!1621 = !DILocation(line: 719, column: 13, scope: !1507)
!1622 = !DILocation(line: 720, column: 42, scope: !1507)
!1623 = !DILocation(line: 720, column: 32, scope: !1507)
!1624 = !DILocation(line: 720, column: 40, scope: !1507)
!1625 = !DILocation(line: 720, column: 23, scope: !1507)
!1626 = !DILocation(line: 720, column: 31, scope: !1507)
!1627 = !DILocation(line: 720, column: 14, scope: !1507)
!1628 = !DILocation(line: 720, column: 22, scope: !1507)
!1629 = !DILocation(line: 720, column: 5, scope: !1507)
!1630 = !DILocation(line: 720, column: 13, scope: !1507)
!1631 = !DILocation(line: 721, column: 42, scope: !1507)
!1632 = !DILocation(line: 721, column: 32, scope: !1507)
!1633 = !DILocation(line: 721, column: 40, scope: !1507)
!1634 = !DILocation(line: 721, column: 23, scope: !1507)
!1635 = !DILocation(line: 721, column: 31, scope: !1507)
!1636 = !DILocation(line: 721, column: 14, scope: !1507)
!1637 = !DILocation(line: 721, column: 22, scope: !1507)
!1638 = !DILocation(line: 721, column: 5, scope: !1507)
!1639 = !DILocation(line: 721, column: 13, scope: !1507)
!1640 = !DILocation(line: 722, column: 42, scope: !1507)
!1641 = !DILocation(line: 722, column: 32, scope: !1507)
!1642 = !DILocation(line: 722, column: 40, scope: !1507)
!1643 = !DILocation(line: 722, column: 23, scope: !1507)
!1644 = !DILocation(line: 722, column: 31, scope: !1507)
!1645 = !DILocation(line: 722, column: 14, scope: !1507)
!1646 = !DILocation(line: 722, column: 22, scope: !1507)
!1647 = !DILocation(line: 722, column: 5, scope: !1507)
!1648 = !DILocation(line: 722, column: 13, scope: !1507)
!1649 = !DILocation(line: 723, column: 33, scope: !1507)
!1650 = !DILocation(line: 723, column: 23, scope: !1507)
!1651 = !DILocation(line: 723, column: 31, scope: !1507)
!1652 = !DILocation(line: 723, column: 14, scope: !1507)
!1653 = !DILocation(line: 723, column: 22, scope: !1507)
!1654 = !DILocation(line: 723, column: 5, scope: !1507)
!1655 = !DILocation(line: 723, column: 13, scope: !1507)
!1656 = !DILocation(line: 724, column: 33, scope: !1507)
!1657 = !DILocation(line: 724, column: 23, scope: !1507)
!1658 = !DILocation(line: 724, column: 31, scope: !1507)
!1659 = !DILocation(line: 724, column: 14, scope: !1507)
!1660 = !DILocation(line: 724, column: 22, scope: !1507)
!1661 = !DILocation(line: 724, column: 5, scope: !1507)
!1662 = !DILocation(line: 724, column: 13, scope: !1507)
!1663 = !DILocation(line: 725, column: 24, scope: !1507)
!1664 = !DILocation(line: 725, column: 14, scope: !1507)
!1665 = !DILocation(line: 725, column: 22, scope: !1507)
!1666 = !DILocation(line: 725, column: 5, scope: !1507)
!1667 = !DILocation(line: 725, column: 13, scope: !1507)
!1668 = !DILocation(line: 726, column: 24, scope: !1507)
!1669 = !DILocation(line: 726, column: 14, scope: !1507)
!1670 = !DILocation(line: 726, column: 22, scope: !1507)
!1671 = !DILocation(line: 726, column: 5, scope: !1507)
!1672 = !DILocation(line: 726, column: 13, scope: !1507)
!1673 = !DILocation(line: 727, column: 15, scope: !1507)
!1674 = !DILocation(line: 727, column: 5, scope: !1507)
!1675 = !DILocation(line: 727, column: 13, scope: !1507)
!1676 = !DILocation(line: 728, column: 15, scope: !1507)
!1677 = !DILocation(line: 728, column: 5, scope: !1507)
!1678 = !DILocation(line: 728, column: 13, scope: !1507)
!1679 = !DILocation(line: 729, column: 1, scope: !1507)
!1680 = distinct !DISubprogram(name: "predict_8x8_hu", scope: !1, file: !1, line: 730, type: !697, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1681)
!1681 = !{!1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699}
!1682 = !DILocalVariable(name: "src", arg: 1, scope: !1680, file: !1, line: 730, type: !80)
!1683 = !DILocalVariable(name: "edge", arg: 2, scope: !1680, file: !1, line: 730, type: !80)
!1684 = !DILocalVariable(name: "l0", scope: !1680, file: !1, line: 732, type: !748)
!1685 = !DILocalVariable(name: "l1", scope: !1680, file: !1, line: 732, type: !748)
!1686 = !DILocalVariable(name: "l2", scope: !1680, file: !1, line: 732, type: !748)
!1687 = !DILocalVariable(name: "l3", scope: !1680, file: !1, line: 732, type: !748)
!1688 = !DILocalVariable(name: "l4", scope: !1680, file: !1, line: 732, type: !748)
!1689 = !DILocalVariable(name: "l5", scope: !1680, file: !1, line: 732, type: !748)
!1690 = !DILocalVariable(name: "l6", scope: !1680, file: !1, line: 732, type: !748)
!1691 = !DILocalVariable(name: "l7", scope: !1680, file: !1, line: 732, type: !748)
!1692 = !DILocalVariable(name: "p1", scope: !1680, file: !1, line: 733, type: !84)
!1693 = !DILocalVariable(name: "p2", scope: !1680, file: !1, line: 734, type: !84)
!1694 = !DILocalVariable(name: "p3", scope: !1680, file: !1, line: 735, type: !84)
!1695 = !DILocalVariable(name: "p4", scope: !1680, file: !1, line: 736, type: !84)
!1696 = !DILocalVariable(name: "p5", scope: !1680, file: !1, line: 737, type: !84)
!1697 = !DILocalVariable(name: "p6", scope: !1680, file: !1, line: 738, type: !84)
!1698 = !DILocalVariable(name: "p7", scope: !1680, file: !1, line: 739, type: !84)
!1699 = !DILocalVariable(name: "p8", scope: !1680, file: !1, line: 740, type: !84)
!1700 = !DILocation(line: 0, scope: !1680)
!1701 = !DILocation(line: 732, column: 5, scope: !1680)
!1702 = !DILocation(line: 733, column: 24, scope: !1680)
!1703 = !DILocation(line: 733, column: 35, scope: !1680)
!1704 = !DILocation(line: 0, scope: !1362, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 733, column: 14, scope: !1680)
!1706 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1705)
!1707 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1705)
!1708 = !DILocation(line: 734, column: 24, scope: !1680)
!1709 = !DILocation(line: 734, column: 35, scope: !1680)
!1710 = !DILocation(line: 0, scope: !1362, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 734, column: 14, scope: !1680)
!1712 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1711)
!1713 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1711)
!1714 = !DILocation(line: 735, column: 24, scope: !1680)
!1715 = !DILocation(line: 735, column: 35, scope: !1680)
!1716 = !DILocation(line: 0, scope: !1362, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 735, column: 14, scope: !1680)
!1718 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1717)
!1719 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1717)
!1720 = !DILocation(line: 736, column: 24, scope: !1680)
!1721 = !DILocation(line: 736, column: 35, scope: !1680)
!1722 = !DILocation(line: 0, scope: !1362, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 736, column: 14, scope: !1680)
!1724 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1723)
!1725 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1723)
!1726 = !DILocation(line: 737, column: 24, scope: !1680)
!1727 = !DILocation(line: 737, column: 35, scope: !1680)
!1728 = !DILocation(line: 0, scope: !1362, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 737, column: 14, scope: !1680)
!1730 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1729)
!1731 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1729)
!1732 = !DILocation(line: 738, column: 24, scope: !1680)
!1733 = !DILocation(line: 738, column: 35, scope: !1680)
!1734 = !DILocation(line: 0, scope: !1362, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 738, column: 14, scope: !1680)
!1736 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1735)
!1737 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1735)
!1738 = !DILocation(line: 739, column: 24, scope: !1680)
!1739 = !DILocation(line: 739, column: 35, scope: !1680)
!1740 = !DILocation(line: 0, scope: !1362, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 739, column: 14, scope: !1680)
!1742 = !DILocation(line: 333, column: 17, scope: !1362, inlinedAt: !1741)
!1743 = !DILocation(line: 333, column: 13, scope: !1362, inlinedAt: !1741)
!1744 = !DILocation(line: 0, scope: !1362, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 740, column: 14, scope: !1680)
!1746 = !DILocation(line: 0, scope: !1432, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 741, column: 17, scope: !1680)
!1748 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1747)
!1749 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1747)
!1750 = !DILocation(line: 741, column: 15, scope: !1680)
!1751 = !DILocation(line: 0, scope: !1432, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 742, column: 17, scope: !1680)
!1753 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1752)
!1754 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1752)
!1755 = !DILocation(line: 742, column: 5, scope: !1680)
!1756 = !DILocation(line: 742, column: 15, scope: !1680)
!1757 = !DILocation(line: 0, scope: !1432, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 743, column: 28, scope: !1680)
!1759 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1758)
!1760 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1758)
!1761 = !DILocation(line: 743, column: 16, scope: !1680)
!1762 = !DILocation(line: 743, column: 26, scope: !1680)
!1763 = !DILocation(line: 743, column: 5, scope: !1680)
!1764 = !DILocation(line: 743, column: 15, scope: !1680)
!1765 = !DILocation(line: 0, scope: !1432, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 744, column: 28, scope: !1680)
!1767 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1766)
!1768 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1766)
!1769 = !DILocation(line: 744, column: 16, scope: !1680)
!1770 = !DILocation(line: 744, column: 26, scope: !1680)
!1771 = !DILocation(line: 744, column: 5, scope: !1680)
!1772 = !DILocation(line: 744, column: 15, scope: !1680)
!1773 = !DILocation(line: 0, scope: !1432, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 745, column: 28, scope: !1680)
!1775 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1774)
!1776 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1774)
!1777 = !DILocation(line: 745, column: 16, scope: !1680)
!1778 = !DILocation(line: 745, column: 26, scope: !1680)
!1779 = !DILocation(line: 745, column: 5, scope: !1680)
!1780 = !DILocation(line: 745, column: 15, scope: !1680)
!1781 = !DILocation(line: 0, scope: !1432, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 746, column: 28, scope: !1680)
!1783 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1782)
!1784 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1782)
!1785 = !DILocation(line: 746, column: 16, scope: !1680)
!1786 = !DILocation(line: 746, column: 26, scope: !1680)
!1787 = !DILocation(line: 746, column: 5, scope: !1680)
!1788 = !DILocation(line: 746, column: 15, scope: !1680)
!1789 = !DILocation(line: 0, scope: !1432, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 747, column: 28, scope: !1680)
!1791 = !DILocation(line: 325, column: 17, scope: !1432, inlinedAt: !1790)
!1792 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1790)
!1793 = !DILocation(line: 747, column: 16, scope: !1680)
!1794 = !DILocation(line: 747, column: 26, scope: !1680)
!1795 = !DILocation(line: 747, column: 5, scope: !1680)
!1796 = !DILocation(line: 747, column: 15, scope: !1680)
!1797 = !DILocation(line: 0, scope: !1432, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 748, column: 54, scope: !1680)
!1799 = !DILocation(line: 325, column: 13, scope: !1432, inlinedAt: !1798)
!1800 = !DILocation(line: 748, column: 41, scope: !1680)
!1801 = !DILocation(line: 748, column: 52, scope: !1680)
!1802 = !DILocation(line: 748, column: 28, scope: !1680)
!1803 = !DILocation(line: 748, column: 39, scope: !1680)
!1804 = !DILocation(line: 748, column: 16, scope: !1680)
!1805 = !DILocation(line: 748, column: 26, scope: !1680)
!1806 = !DILocation(line: 748, column: 5, scope: !1680)
!1807 = !DILocation(line: 748, column: 15, scope: !1680)
!1808 = !DILocation(line: 749, column: 1, scope: !1680)
!1809 = distinct !DISubprogram(name: "predict_8x8_dc_left", scope: !1, file: !1, line: 571, type: !697, scopeLine: 572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1810)
!1810 = !{!1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822}
!1811 = !DILocalVariable(name: "src", arg: 1, scope: !1809, file: !1, line: 571, type: !80)
!1812 = !DILocalVariable(name: "edge", arg: 2, scope: !1809, file: !1, line: 571, type: !80)
!1813 = !DILocalVariable(name: "l0", scope: !1809, file: !1, line: 573, type: !748)
!1814 = !DILocalVariable(name: "l1", scope: !1809, file: !1, line: 573, type: !748)
!1815 = !DILocalVariable(name: "l2", scope: !1809, file: !1, line: 573, type: !748)
!1816 = !DILocalVariable(name: "l3", scope: !1809, file: !1, line: 573, type: !748)
!1817 = !DILocalVariable(name: "l4", scope: !1809, file: !1, line: 573, type: !748)
!1818 = !DILocalVariable(name: "l5", scope: !1809, file: !1, line: 573, type: !748)
!1819 = !DILocalVariable(name: "l6", scope: !1809, file: !1, line: 573, type: !748)
!1820 = !DILocalVariable(name: "l7", scope: !1809, file: !1, line: 573, type: !748)
!1821 = !DILocalVariable(name: "dc", scope: !1809, file: !1, line: 574, type: !274)
!1822 = !DILocalVariable(name: "y", scope: !1809, file: !1, line: 575, type: !84)
!1823 = !DILocation(line: 0, scope: !1809)
!1824 = !DILocation(line: 573, column: 5, scope: !1809)
!1825 = !DILocation(line: 574, column: 29, scope: !1809)
!1826 = !DILocation(line: 574, column: 32, scope: !1809)
!1827 = !DILocation(line: 574, column: 35, scope: !1809)
!1828 = !DILocation(line: 574, column: 38, scope: !1809)
!1829 = !DILocation(line: 574, column: 41, scope: !1809)
!1830 = !DILocation(line: 574, column: 44, scope: !1809)
!1831 = !DILocation(line: 574, column: 47, scope: !1809)
!1832 = !DILocation(line: 574, column: 50, scope: !1809)
!1833 = !DILocation(line: 574, column: 60, scope: !1809)
!1834 = !DILocation(line: 575, column: 5, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !1, line: 575, column: 5)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !1, line: 575, column: 5)
!1837 = distinct !DILexicalBlock(scope: !1809, file: !1, line: 575, column: 5)
!1838 = !DILocation(line: 576, column: 1, scope: !1809)
!1839 = distinct !DISubprogram(name: "predict_8x8_dc_top", scope: !1, file: !1, line: 577, type: !697, scopeLine: 578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1840)
!1840 = !{!1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852}
!1841 = !DILocalVariable(name: "src", arg: 1, scope: !1839, file: !1, line: 577, type: !80)
!1842 = !DILocalVariable(name: "edge", arg: 2, scope: !1839, file: !1, line: 577, type: !80)
!1843 = !DILocalVariable(name: "t0", scope: !1839, file: !1, line: 579, type: !748)
!1844 = !DILocalVariable(name: "t1", scope: !1839, file: !1, line: 579, type: !748)
!1845 = !DILocalVariable(name: "t2", scope: !1839, file: !1, line: 579, type: !748)
!1846 = !DILocalVariable(name: "t3", scope: !1839, file: !1, line: 579, type: !748)
!1847 = !DILocalVariable(name: "t4", scope: !1839, file: !1, line: 579, type: !748)
!1848 = !DILocalVariable(name: "t5", scope: !1839, file: !1, line: 579, type: !748)
!1849 = !DILocalVariable(name: "t6", scope: !1839, file: !1, line: 579, type: !748)
!1850 = !DILocalVariable(name: "t7", scope: !1839, file: !1, line: 579, type: !748)
!1851 = !DILocalVariable(name: "dc", scope: !1839, file: !1, line: 580, type: !274)
!1852 = !DILocalVariable(name: "y", scope: !1839, file: !1, line: 581, type: !84)
!1853 = !DILocation(line: 0, scope: !1839)
!1854 = !DILocation(line: 579, column: 5, scope: !1839)
!1855 = !DILocation(line: 580, column: 29, scope: !1839)
!1856 = !DILocation(line: 580, column: 32, scope: !1839)
!1857 = !DILocation(line: 580, column: 35, scope: !1839)
!1858 = !DILocation(line: 580, column: 38, scope: !1839)
!1859 = !DILocation(line: 580, column: 41, scope: !1839)
!1860 = !DILocation(line: 580, column: 44, scope: !1839)
!1861 = !DILocation(line: 580, column: 47, scope: !1839)
!1862 = !DILocation(line: 580, column: 50, scope: !1839)
!1863 = !DILocation(line: 580, column: 60, scope: !1839)
!1864 = !DILocation(line: 581, column: 5, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !1, line: 581, column: 5)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !1, line: 581, column: 5)
!1867 = distinct !DILexicalBlock(scope: !1839, file: !1, line: 581, column: 5)
!1868 = !DILocation(line: 582, column: 1, scope: !1839)
!1869 = distinct !DISubprogram(name: "predict_8x8_dc_128", scope: !1, file: !1, line: 567, type: !697, scopeLine: 568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1870)
!1870 = !{!1871, !1872, !1873}
!1871 = !DILocalVariable(name: "src", arg: 1, scope: !1869, file: !1, line: 567, type: !80)
!1872 = !DILocalVariable(name: "edge", arg: 2, scope: !1869, file: !1, line: 567, type: !80)
!1873 = !DILocalVariable(name: "y", scope: !1869, file: !1, line: 569, type: !84)
!1874 = !DILocation(line: 0, scope: !1869)
!1875 = !DILocation(line: 569, column: 5, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !1, line: 569, column: 5)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !1, line: 569, column: 5)
!1878 = distinct !DILexicalBlock(scope: !1869, file: !1, line: 569, column: 5)
!1879 = !DILocation(line: 570, column: 1, scope: !1869)
!1880 = !DISubprogram(name: "x264_predict_8x8_init_mmx", scope: !427, file: !427, line: 30, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!1881 = distinct !DISubprogram(name: "x264_predict_4x4_init", scope: !1, file: !1, line: 811, type: !205, scopeLine: 812, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1882)
!1882 = !{!1883, !1884}
!1883 = !DILocalVariable(name: "cpu", arg: 1, scope: !1881, file: !1, line: 811, type: !84)
!1884 = !DILocalVariable(name: "pf", arg: 2, scope: !1881, file: !1, line: 811, type: !207)
!1885 = !DILocation(line: 0, scope: !1881)
!1886 = !DILocation(line: 813, column: 27, scope: !1881)
!1887 = !DILocation(line: 814, column: 5, scope: !1881)
!1888 = !DILocation(line: 814, column: 27, scope: !1881)
!1889 = !DILocation(line: 815, column: 5, scope: !1881)
!1890 = !DILocation(line: 815, column: 27, scope: !1881)
!1891 = !DILocation(line: 816, column: 5, scope: !1881)
!1892 = !DILocation(line: 816, column: 27, scope: !1881)
!1893 = !DILocation(line: 817, column: 5, scope: !1881)
!1894 = !DILocation(line: 817, column: 27, scope: !1881)
!1895 = !DILocation(line: 818, column: 5, scope: !1881)
!1896 = !DILocation(line: 818, column: 27, scope: !1881)
!1897 = !DILocation(line: 819, column: 5, scope: !1881)
!1898 = !DILocation(line: 819, column: 27, scope: !1881)
!1899 = !DILocation(line: 820, column: 5, scope: !1881)
!1900 = !DILocation(line: 820, column: 27, scope: !1881)
!1901 = !DILocation(line: 821, column: 5, scope: !1881)
!1902 = !DILocation(line: 821, column: 27, scope: !1881)
!1903 = !DILocation(line: 822, column: 5, scope: !1881)
!1904 = !DILocation(line: 822, column: 27, scope: !1881)
!1905 = !DILocation(line: 823, column: 5, scope: !1881)
!1906 = !DILocation(line: 823, column: 27, scope: !1881)
!1907 = !DILocation(line: 824, column: 5, scope: !1881)
!1908 = !DILocation(line: 824, column: 27, scope: !1881)
!1909 = !DILocation(line: 827, column: 5, scope: !1881)
!1910 = !DILocation(line: 829, column: 1, scope: !1881)
!1911 = distinct !DISubprogram(name: "predict_4x4_v", scope: !1, file: !1, line: 375, type: !210, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1912)
!1912 = !{!1913}
!1913 = !DILocalVariable(name: "src", arg: 1, scope: !1911, file: !1, line: 375, type: !80)
!1914 = !DILocation(line: 0, scope: !1911)
!1915 = !DILocation(line: 377, column: 5, scope: !1911)
!1916 = !DILocation(line: 378, column: 1, scope: !1911)
!1917 = distinct !DISubprogram(name: "predict_4x4_h", scope: !1, file: !1, line: 368, type: !210, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1918)
!1918 = !{!1919}
!1919 = !DILocalVariable(name: "src", arg: 1, scope: !1917, file: !1, line: 368, type: !80)
!1920 = !DILocation(line: 0, scope: !1917)
!1921 = !DILocation(line: 370, column: 18, scope: !1917)
!1922 = !DILocation(line: 370, column: 28, scope: !1917)
!1923 = !DILocation(line: 370, column: 16, scope: !1917)
!1924 = !DILocation(line: 371, column: 18, scope: !1917)
!1925 = !DILocation(line: 371, column: 28, scope: !1917)
!1926 = !DILocation(line: 371, column: 5, scope: !1917)
!1927 = !DILocation(line: 371, column: 16, scope: !1917)
!1928 = !DILocation(line: 372, column: 18, scope: !1917)
!1929 = !DILocation(line: 372, column: 28, scope: !1917)
!1930 = !DILocation(line: 372, column: 5, scope: !1917)
!1931 = !DILocation(line: 372, column: 16, scope: !1917)
!1932 = !DILocation(line: 373, column: 18, scope: !1917)
!1933 = !DILocation(line: 373, column: 28, scope: !1917)
!1934 = !DILocation(line: 373, column: 5, scope: !1917)
!1935 = !DILocation(line: 373, column: 16, scope: !1917)
!1936 = !DILocation(line: 374, column: 1, scope: !1917)
!1937 = distinct !DISubprogram(name: "predict_4x4_dc", scope: !1, file: !1, line: 362, type: !210, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1938)
!1938 = !{!1939, !1940}
!1939 = !DILocalVariable(name: "src", arg: 1, scope: !1937, file: !1, line: 362, type: !80)
!1940 = !DILocalVariable(name: "dc", scope: !1937, file: !1, line: 364, type: !68)
!1941 = !DILocation(line: 0, scope: !1937)
!1942 = !DILocation(line: 364, column: 21, scope: !1937)
!1943 = !DILocation(line: 364, column: 33, scope: !1937)
!1944 = !DILocation(line: 364, column: 45, scope: !1937)
!1945 = !DILocation(line: 364, column: 57, scope: !1937)
!1946 = !DILocation(line: 365, column: 21, scope: !1937)
!1947 = !DILocation(line: 365, column: 33, scope: !1937)
!1948 = !DILocation(line: 365, column: 45, scope: !1937)
!1949 = !DILocation(line: 365, column: 57, scope: !1937)
!1950 = !DILocation(line: 364, column: 31, scope: !1937)
!1951 = !DILocation(line: 364, column: 43, scope: !1937)
!1952 = !DILocation(line: 364, column: 55, scope: !1937)
!1953 = !DILocation(line: 364, column: 67, scope: !1937)
!1954 = !DILocation(line: 365, column: 31, scope: !1937)
!1955 = !DILocation(line: 365, column: 43, scope: !1937)
!1956 = !DILocation(line: 365, column: 55, scope: !1937)
!1957 = !DILocation(line: 365, column: 67, scope: !1937)
!1958 = !DILocation(line: 365, column: 78, scope: !1937)
!1959 = !DILocation(line: 366, column: 5, scope: !1937)
!1960 = !DILocation(line: 367, column: 1, scope: !1937)
!1961 = distinct !DISubprogram(name: "predict_4x4_ddl", scope: !1, file: !1, line: 401, type: !210, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1962)
!1962 = !{!1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971}
!1963 = !DILocalVariable(name: "src", arg: 1, scope: !1961, file: !1, line: 401, type: !80)
!1964 = !DILocalVariable(name: "t0", scope: !1961, file: !1, line: 403, type: !748)
!1965 = !DILocalVariable(name: "t1", scope: !1961, file: !1, line: 403, type: !748)
!1966 = !DILocalVariable(name: "t2", scope: !1961, file: !1, line: 403, type: !748)
!1967 = !DILocalVariable(name: "t3", scope: !1961, file: !1, line: 403, type: !748)
!1968 = !DILocalVariable(name: "t4", scope: !1961, file: !1, line: 404, type: !748)
!1969 = !DILocalVariable(name: "t5", scope: !1961, file: !1, line: 404, type: !748)
!1970 = !DILocalVariable(name: "t6", scope: !1961, file: !1, line: 404, type: !748)
!1971 = !DILocalVariable(name: "t7", scope: !1961, file: !1, line: 404, type: !748)
!1972 = !DILocation(line: 0, scope: !1961)
!1973 = !DILocation(line: 403, column: 5, scope: !1961)
!1974 = !DILocation(line: 404, column: 5, scope: !1961)
!1975 = !DILocation(line: 405, column: 15, scope: !1961)
!1976 = !DILocation(line: 405, column: 13, scope: !1961)
!1977 = !DILocation(line: 406, column: 24, scope: !1961)
!1978 = !DILocation(line: 406, column: 14, scope: !1961)
!1979 = !DILocation(line: 406, column: 22, scope: !1961)
!1980 = !DILocation(line: 406, column: 5, scope: !1961)
!1981 = !DILocation(line: 406, column: 13, scope: !1961)
!1982 = !DILocation(line: 407, column: 33, scope: !1961)
!1983 = !DILocation(line: 407, column: 23, scope: !1961)
!1984 = !DILocation(line: 407, column: 31, scope: !1961)
!1985 = !DILocation(line: 407, column: 14, scope: !1961)
!1986 = !DILocation(line: 407, column: 22, scope: !1961)
!1987 = !DILocation(line: 407, column: 5, scope: !1961)
!1988 = !DILocation(line: 407, column: 13, scope: !1961)
!1989 = !DILocation(line: 408, column: 42, scope: !1961)
!1990 = !DILocation(line: 408, column: 32, scope: !1961)
!1991 = !DILocation(line: 408, column: 40, scope: !1961)
!1992 = !DILocation(line: 408, column: 23, scope: !1961)
!1993 = !DILocation(line: 408, column: 31, scope: !1961)
!1994 = !DILocation(line: 408, column: 14, scope: !1961)
!1995 = !DILocation(line: 408, column: 22, scope: !1961)
!1996 = !DILocation(line: 408, column: 5, scope: !1961)
!1997 = !DILocation(line: 408, column: 13, scope: !1961)
!1998 = !DILocation(line: 409, column: 33, scope: !1961)
!1999 = !DILocation(line: 409, column: 23, scope: !1961)
!2000 = !DILocation(line: 409, column: 31, scope: !1961)
!2001 = !DILocation(line: 409, column: 14, scope: !1961)
!2002 = !DILocation(line: 409, column: 22, scope: !1961)
!2003 = !DILocation(line: 409, column: 5, scope: !1961)
!2004 = !DILocation(line: 409, column: 13, scope: !1961)
!2005 = !DILocation(line: 410, column: 24, scope: !1961)
!2006 = !DILocation(line: 410, column: 14, scope: !1961)
!2007 = !DILocation(line: 410, column: 22, scope: !1961)
!2008 = !DILocation(line: 410, column: 5, scope: !1961)
!2009 = !DILocation(line: 410, column: 13, scope: !1961)
!2010 = !DILocation(line: 411, column: 15, scope: !1961)
!2011 = !DILocation(line: 411, column: 5, scope: !1961)
!2012 = !DILocation(line: 411, column: 13, scope: !1961)
!2013 = !DILocation(line: 412, column: 1, scope: !1961)
!2014 = distinct !DISubprogram(name: "predict_4x4_ddr", scope: !1, file: !1, line: 413, type: !210, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2015)
!2015 = !{!2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025}
!2016 = !DILocalVariable(name: "src", arg: 1, scope: !2014, file: !1, line: 413, type: !80)
!2017 = !DILocalVariable(name: "lt", scope: !2014, file: !1, line: 415, type: !748)
!2018 = !DILocalVariable(name: "l0", scope: !2014, file: !1, line: 416, type: !748)
!2019 = !DILocalVariable(name: "l1", scope: !2014, file: !1, line: 416, type: !748)
!2020 = !DILocalVariable(name: "l2", scope: !2014, file: !1, line: 416, type: !748)
!2021 = !DILocalVariable(name: "l3", scope: !2014, file: !1, line: 416, type: !748)
!2022 = !DILocalVariable(name: "t0", scope: !2014, file: !1, line: 417, type: !748)
!2023 = !DILocalVariable(name: "t1", scope: !2014, file: !1, line: 417, type: !748)
!2024 = !DILocalVariable(name: "t2", scope: !2014, file: !1, line: 417, type: !748)
!2025 = !DILocalVariable(name: "t3", scope: !2014, file: !1, line: 417, type: !748)
!2026 = !DILocation(line: 0, scope: !2014)
!2027 = !DILocation(line: 415, column: 20, scope: !2014)
!2028 = !DILocation(line: 416, column: 5, scope: !2014)
!2029 = !DILocation(line: 417, column: 5, scope: !2014)
!2030 = !DILocation(line: 418, column: 15, scope: !2014)
!2031 = !DILocation(line: 418, column: 5, scope: !2014)
!2032 = !DILocation(line: 418, column: 13, scope: !2014)
!2033 = !DILocation(line: 419, column: 24, scope: !2014)
!2034 = !DILocation(line: 419, column: 14, scope: !2014)
!2035 = !DILocation(line: 419, column: 22, scope: !2014)
!2036 = !DILocation(line: 419, column: 5, scope: !2014)
!2037 = !DILocation(line: 419, column: 13, scope: !2014)
!2038 = !DILocation(line: 420, column: 33, scope: !2014)
!2039 = !DILocation(line: 420, column: 23, scope: !2014)
!2040 = !DILocation(line: 420, column: 31, scope: !2014)
!2041 = !DILocation(line: 420, column: 14, scope: !2014)
!2042 = !DILocation(line: 420, column: 22, scope: !2014)
!2043 = !DILocation(line: 420, column: 5, scope: !2014)
!2044 = !DILocation(line: 420, column: 13, scope: !2014)
!2045 = !DILocation(line: 421, column: 42, scope: !2014)
!2046 = !DILocation(line: 421, column: 32, scope: !2014)
!2047 = !DILocation(line: 421, column: 40, scope: !2014)
!2048 = !DILocation(line: 421, column: 23, scope: !2014)
!2049 = !DILocation(line: 421, column: 31, scope: !2014)
!2050 = !DILocation(line: 421, column: 14, scope: !2014)
!2051 = !DILocation(line: 421, column: 22, scope: !2014)
!2052 = !DILocation(line: 421, column: 13, scope: !2014)
!2053 = !DILocation(line: 422, column: 33, scope: !2014)
!2054 = !DILocation(line: 422, column: 23, scope: !2014)
!2055 = !DILocation(line: 422, column: 31, scope: !2014)
!2056 = !DILocation(line: 422, column: 14, scope: !2014)
!2057 = !DILocation(line: 422, column: 22, scope: !2014)
!2058 = !DILocation(line: 422, column: 5, scope: !2014)
!2059 = !DILocation(line: 422, column: 13, scope: !2014)
!2060 = !DILocation(line: 423, column: 24, scope: !2014)
!2061 = !DILocation(line: 423, column: 14, scope: !2014)
!2062 = !DILocation(line: 423, column: 22, scope: !2014)
!2063 = !DILocation(line: 423, column: 5, scope: !2014)
!2064 = !DILocation(line: 423, column: 13, scope: !2014)
!2065 = !DILocation(line: 424, column: 15, scope: !2014)
!2066 = !DILocation(line: 424, column: 5, scope: !2014)
!2067 = !DILocation(line: 424, column: 13, scope: !2014)
!2068 = !DILocation(line: 425, column: 1, scope: !2014)
!2069 = distinct !DISubprogram(name: "predict_4x4_vr", scope: !1, file: !1, line: 427, type: !210, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2070)
!2070 = !{!2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080}
!2071 = !DILocalVariable(name: "src", arg: 1, scope: !2069, file: !1, line: 427, type: !80)
!2072 = !DILocalVariable(name: "lt", scope: !2069, file: !1, line: 429, type: !748)
!2073 = !DILocalVariable(name: "l0", scope: !2069, file: !1, line: 430, type: !748)
!2074 = !DILocalVariable(name: "l1", scope: !2069, file: !1, line: 430, type: !748)
!2075 = !DILocalVariable(name: "l2", scope: !2069, file: !1, line: 430, type: !748)
!2076 = !DILocalVariable(name: "l3", scope: !2069, file: !1, line: 430, type: !748)
!2077 = !DILocalVariable(name: "t0", scope: !2069, file: !1, line: 431, type: !748)
!2078 = !DILocalVariable(name: "t1", scope: !2069, file: !1, line: 431, type: !748)
!2079 = !DILocalVariable(name: "t2", scope: !2069, file: !1, line: 431, type: !748)
!2080 = !DILocalVariable(name: "t3", scope: !2069, file: !1, line: 431, type: !748)
!2081 = !DILocation(line: 0, scope: !2069)
!2082 = !DILocation(line: 429, column: 20, scope: !2069)
!2083 = !DILocation(line: 430, column: 5, scope: !2069)
!2084 = !DILocation(line: 431, column: 5, scope: !2069)
!2085 = !DILocation(line: 432, column: 15, scope: !2069)
!2086 = !DILocation(line: 432, column: 5, scope: !2069)
!2087 = !DILocation(line: 432, column: 13, scope: !2069)
!2088 = !DILocation(line: 433, column: 15, scope: !2069)
!2089 = !DILocation(line: 433, column: 5, scope: !2069)
!2090 = !DILocation(line: 433, column: 13, scope: !2069)
!2091 = !DILocation(line: 434, column: 24, scope: !2069)
!2092 = !DILocation(line: 434, column: 14, scope: !2069)
!2093 = !DILocation(line: 434, column: 22, scope: !2069)
!2094 = !DILocation(line: 434, column: 5, scope: !2069)
!2095 = !DILocation(line: 434, column: 13, scope: !2069)
!2096 = !DILocation(line: 435, column: 24, scope: !2069)
!2097 = !DILocation(line: 435, column: 14, scope: !2069)
!2098 = !DILocation(line: 435, column: 22, scope: !2069)
!2099 = !DILocation(line: 435, column: 13, scope: !2069)
!2100 = !DILocation(line: 436, column: 24, scope: !2069)
!2101 = !DILocation(line: 436, column: 14, scope: !2069)
!2102 = !DILocation(line: 436, column: 22, scope: !2069)
!2103 = !DILocation(line: 436, column: 5, scope: !2069)
!2104 = !DILocation(line: 436, column: 13, scope: !2069)
!2105 = !DILocation(line: 437, column: 24, scope: !2069)
!2106 = !DILocation(line: 437, column: 14, scope: !2069)
!2107 = !DILocation(line: 437, column: 22, scope: !2069)
!2108 = !DILocation(line: 437, column: 5, scope: !2069)
!2109 = !DILocation(line: 437, column: 13, scope: !2069)
!2110 = !DILocation(line: 438, column: 24, scope: !2069)
!2111 = !DILocation(line: 438, column: 14, scope: !2069)
!2112 = !DILocation(line: 438, column: 22, scope: !2069)
!2113 = !DILocation(line: 438, column: 5, scope: !2069)
!2114 = !DILocation(line: 438, column: 13, scope: !2069)
!2115 = !DILocation(line: 439, column: 24, scope: !2069)
!2116 = !DILocation(line: 439, column: 14, scope: !2069)
!2117 = !DILocation(line: 439, column: 22, scope: !2069)
!2118 = !DILocation(line: 439, column: 5, scope: !2069)
!2119 = !DILocation(line: 439, column: 13, scope: !2069)
!2120 = !DILocation(line: 440, column: 15, scope: !2069)
!2121 = !DILocation(line: 440, column: 5, scope: !2069)
!2122 = !DILocation(line: 440, column: 13, scope: !2069)
!2123 = !DILocation(line: 441, column: 15, scope: !2069)
!2124 = !DILocation(line: 441, column: 5, scope: !2069)
!2125 = !DILocation(line: 441, column: 13, scope: !2069)
!2126 = !DILocation(line: 442, column: 1, scope: !2069)
!2127 = distinct !DISubprogram(name: "predict_4x4_hd", scope: !1, file: !1, line: 444, type: !210, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2128)
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138}
!2129 = !DILocalVariable(name: "src", arg: 1, scope: !2127, file: !1, line: 444, type: !80)
!2130 = !DILocalVariable(name: "lt", scope: !2127, file: !1, line: 446, type: !748)
!2131 = !DILocalVariable(name: "l0", scope: !2127, file: !1, line: 447, type: !748)
!2132 = !DILocalVariable(name: "l1", scope: !2127, file: !1, line: 447, type: !748)
!2133 = !DILocalVariable(name: "l2", scope: !2127, file: !1, line: 447, type: !748)
!2134 = !DILocalVariable(name: "l3", scope: !2127, file: !1, line: 447, type: !748)
!2135 = !DILocalVariable(name: "t0", scope: !2127, file: !1, line: 448, type: !748)
!2136 = !DILocalVariable(name: "t1", scope: !2127, file: !1, line: 448, type: !748)
!2137 = !DILocalVariable(name: "t2", scope: !2127, file: !1, line: 448, type: !748)
!2138 = !DILocalVariable(name: "t3", scope: !2127, file: !1, line: 448, type: !748)
!2139 = !DILocation(line: 0, scope: !2127)
!2140 = !DILocation(line: 446, column: 19, scope: !2127)
!2141 = !DILocation(line: 447, column: 5, scope: !2127)
!2142 = !DILocation(line: 448, column: 5, scope: !2127)
!2143 = !DILocation(line: 449, column: 15, scope: !2127)
!2144 = !DILocation(line: 449, column: 5, scope: !2127)
!2145 = !DILocation(line: 449, column: 13, scope: !2127)
!2146 = !DILocation(line: 450, column: 15, scope: !2127)
!2147 = !DILocation(line: 450, column: 5, scope: !2127)
!2148 = !DILocation(line: 450, column: 13, scope: !2127)
!2149 = !DILocation(line: 451, column: 24, scope: !2127)
!2150 = !DILocation(line: 451, column: 14, scope: !2127)
!2151 = !DILocation(line: 451, column: 22, scope: !2127)
!2152 = !DILocation(line: 451, column: 5, scope: !2127)
!2153 = !DILocation(line: 451, column: 13, scope: !2127)
!2154 = !DILocation(line: 452, column: 24, scope: !2127)
!2155 = !DILocation(line: 452, column: 14, scope: !2127)
!2156 = !DILocation(line: 452, column: 22, scope: !2127)
!2157 = !DILocation(line: 452, column: 5, scope: !2127)
!2158 = !DILocation(line: 452, column: 13, scope: !2127)
!2159 = !DILocation(line: 453, column: 24, scope: !2127)
!2160 = !DILocation(line: 453, column: 14, scope: !2127)
!2161 = !DILocation(line: 453, column: 22, scope: !2127)
!2162 = !DILocation(line: 453, column: 5, scope: !2127)
!2163 = !DILocation(line: 453, column: 13, scope: !2127)
!2164 = !DILocation(line: 454, column: 24, scope: !2127)
!2165 = !DILocation(line: 454, column: 14, scope: !2127)
!2166 = !DILocation(line: 454, column: 22, scope: !2127)
!2167 = !DILocation(line: 454, column: 5, scope: !2127)
!2168 = !DILocation(line: 454, column: 13, scope: !2127)
!2169 = !DILocation(line: 455, column: 24, scope: !2127)
!2170 = !DILocation(line: 455, column: 14, scope: !2127)
!2171 = !DILocation(line: 455, column: 22, scope: !2127)
!2172 = !DILocation(line: 455, column: 13, scope: !2127)
!2173 = !DILocation(line: 456, column: 24, scope: !2127)
!2174 = !DILocation(line: 456, column: 14, scope: !2127)
!2175 = !DILocation(line: 456, column: 22, scope: !2127)
!2176 = !DILocation(line: 456, column: 5, scope: !2127)
!2177 = !DILocation(line: 456, column: 13, scope: !2127)
!2178 = !DILocation(line: 457, column: 15, scope: !2127)
!2179 = !DILocation(line: 457, column: 5, scope: !2127)
!2180 = !DILocation(line: 457, column: 13, scope: !2127)
!2181 = !DILocation(line: 458, column: 15, scope: !2127)
!2182 = !DILocation(line: 458, column: 5, scope: !2127)
!2183 = !DILocation(line: 458, column: 13, scope: !2127)
!2184 = !DILocation(line: 459, column: 1, scope: !2127)
!2185 = distinct !DISubprogram(name: "predict_4x4_vl", scope: !1, file: !1, line: 461, type: !210, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2186)
!2186 = !{!2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195}
!2187 = !DILocalVariable(name: "src", arg: 1, scope: !2185, file: !1, line: 461, type: !80)
!2188 = !DILocalVariable(name: "t0", scope: !2185, file: !1, line: 463, type: !748)
!2189 = !DILocalVariable(name: "t1", scope: !2185, file: !1, line: 463, type: !748)
!2190 = !DILocalVariable(name: "t2", scope: !2185, file: !1, line: 463, type: !748)
!2191 = !DILocalVariable(name: "t3", scope: !2185, file: !1, line: 463, type: !748)
!2192 = !DILocalVariable(name: "t4", scope: !2185, file: !1, line: 464, type: !748)
!2193 = !DILocalVariable(name: "t5", scope: !2185, file: !1, line: 464, type: !748)
!2194 = !DILocalVariable(name: "t6", scope: !2185, file: !1, line: 464, type: !748)
!2195 = !DILocalVariable(name: "t7", scope: !2185, file: !1, line: 464, type: !748)
!2196 = !DILocation(line: 0, scope: !2185)
!2197 = !DILocation(line: 463, column: 5, scope: !2185)
!2198 = !DILocation(line: 464, column: 5, scope: !2185)
!2199 = !DILocation(line: 465, column: 15, scope: !2185)
!2200 = !DILocation(line: 465, column: 13, scope: !2185)
!2201 = !DILocation(line: 466, column: 15, scope: !2185)
!2202 = !DILocation(line: 466, column: 5, scope: !2185)
!2203 = !DILocation(line: 466, column: 13, scope: !2185)
!2204 = !DILocation(line: 467, column: 24, scope: !2185)
!2205 = !DILocation(line: 467, column: 14, scope: !2185)
!2206 = !DILocation(line: 467, column: 22, scope: !2185)
!2207 = !DILocation(line: 467, column: 5, scope: !2185)
!2208 = !DILocation(line: 467, column: 13, scope: !2185)
!2209 = !DILocation(line: 468, column: 24, scope: !2185)
!2210 = !DILocation(line: 468, column: 14, scope: !2185)
!2211 = !DILocation(line: 468, column: 22, scope: !2185)
!2212 = !DILocation(line: 468, column: 5, scope: !2185)
!2213 = !DILocation(line: 468, column: 13, scope: !2185)
!2214 = !DILocation(line: 469, column: 24, scope: !2185)
!2215 = !DILocation(line: 469, column: 14, scope: !2185)
!2216 = !DILocation(line: 469, column: 22, scope: !2185)
!2217 = !DILocation(line: 469, column: 5, scope: !2185)
!2218 = !DILocation(line: 469, column: 13, scope: !2185)
!2219 = !DILocation(line: 470, column: 24, scope: !2185)
!2220 = !DILocation(line: 470, column: 14, scope: !2185)
!2221 = !DILocation(line: 470, column: 22, scope: !2185)
!2222 = !DILocation(line: 470, column: 5, scope: !2185)
!2223 = !DILocation(line: 470, column: 13, scope: !2185)
!2224 = !DILocation(line: 471, column: 24, scope: !2185)
!2225 = !DILocation(line: 471, column: 14, scope: !2185)
!2226 = !DILocation(line: 471, column: 22, scope: !2185)
!2227 = !DILocation(line: 471, column: 5, scope: !2185)
!2228 = !DILocation(line: 471, column: 13, scope: !2185)
!2229 = !DILocation(line: 472, column: 24, scope: !2185)
!2230 = !DILocation(line: 472, column: 14, scope: !2185)
!2231 = !DILocation(line: 472, column: 22, scope: !2185)
!2232 = !DILocation(line: 472, column: 5, scope: !2185)
!2233 = !DILocation(line: 472, column: 13, scope: !2185)
!2234 = !DILocation(line: 473, column: 15, scope: !2185)
!2235 = !DILocation(line: 473, column: 5, scope: !2185)
!2236 = !DILocation(line: 473, column: 13, scope: !2185)
!2237 = !DILocation(line: 474, column: 15, scope: !2185)
!2238 = !DILocation(line: 474, column: 5, scope: !2185)
!2239 = !DILocation(line: 474, column: 13, scope: !2185)
!2240 = !DILocation(line: 475, column: 1, scope: !2185)
!2241 = distinct !DISubprogram(name: "predict_4x4_hu", scope: !1, file: !1, line: 477, type: !210, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2242)
!2242 = !{!2243, !2244, !2245, !2246, !2247}
!2243 = !DILocalVariable(name: "src", arg: 1, scope: !2241, file: !1, line: 477, type: !80)
!2244 = !DILocalVariable(name: "l0", scope: !2241, file: !1, line: 479, type: !748)
!2245 = !DILocalVariable(name: "l1", scope: !2241, file: !1, line: 479, type: !748)
!2246 = !DILocalVariable(name: "l2", scope: !2241, file: !1, line: 479, type: !748)
!2247 = !DILocalVariable(name: "l3", scope: !2241, file: !1, line: 479, type: !748)
!2248 = !DILocation(line: 0, scope: !2241)
!2249 = !DILocation(line: 479, column: 5, scope: !2241)
!2250 = !DILocation(line: 480, column: 15, scope: !2241)
!2251 = !DILocation(line: 480, column: 13, scope: !2241)
!2252 = !DILocation(line: 481, column: 15, scope: !2241)
!2253 = !DILocation(line: 481, column: 5, scope: !2241)
!2254 = !DILocation(line: 481, column: 13, scope: !2241)
!2255 = !DILocation(line: 482, column: 24, scope: !2241)
!2256 = !DILocation(line: 482, column: 14, scope: !2241)
!2257 = !DILocation(line: 482, column: 22, scope: !2241)
!2258 = !DILocation(line: 482, column: 5, scope: !2241)
!2259 = !DILocation(line: 482, column: 13, scope: !2241)
!2260 = !DILocation(line: 483, column: 24, scope: !2241)
!2261 = !DILocation(line: 483, column: 14, scope: !2241)
!2262 = !DILocation(line: 483, column: 22, scope: !2241)
!2263 = !DILocation(line: 483, column: 5, scope: !2241)
!2264 = !DILocation(line: 483, column: 13, scope: !2241)
!2265 = !DILocation(line: 484, column: 24, scope: !2241)
!2266 = !DILocation(line: 484, column: 14, scope: !2241)
!2267 = !DILocation(line: 484, column: 22, scope: !2241)
!2268 = !DILocation(line: 484, column: 5, scope: !2241)
!2269 = !DILocation(line: 484, column: 13, scope: !2241)
!2270 = !DILocation(line: 485, column: 24, scope: !2241)
!2271 = !DILocation(line: 485, column: 14, scope: !2241)
!2272 = !DILocation(line: 485, column: 22, scope: !2241)
!2273 = !DILocation(line: 485, column: 5, scope: !2241)
!2274 = !DILocation(line: 485, column: 13, scope: !2241)
!2275 = !DILocation(line: 487, column: 5, scope: !2241)
!2276 = !DILocation(line: 487, column: 13, scope: !2241)
!2277 = !DILocation(line: 486, column: 23, scope: !2241)
!2278 = !DILocation(line: 487, column: 31, scope: !2241)
!2279 = !DILocation(line: 486, column: 31, scope: !2241)
!2280 = !DILocation(line: 486, column: 5, scope: !2241)
!2281 = !DILocation(line: 486, column: 13, scope: !2241)
!2282 = !DILocation(line: 488, column: 1, scope: !2241)
!2283 = distinct !DISubprogram(name: "predict_4x4_dc_left", scope: !1, file: !1, line: 352, type: !210, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2284)
!2284 = !{!2285, !2286}
!2285 = !DILocalVariable(name: "src", arg: 1, scope: !2283, file: !1, line: 352, type: !80)
!2286 = !DILocalVariable(name: "dc", scope: !2283, file: !1, line: 354, type: !68)
!2287 = !DILocation(line: 0, scope: !2283)
!2288 = !DILocation(line: 354, column: 21, scope: !2283)
!2289 = !DILocation(line: 354, column: 33, scope: !2283)
!2290 = !DILocation(line: 354, column: 45, scope: !2283)
!2291 = !DILocation(line: 354, column: 57, scope: !2283)
!2292 = !DILocation(line: 354, column: 31, scope: !2283)
!2293 = !DILocation(line: 354, column: 43, scope: !2283)
!2294 = !DILocation(line: 354, column: 55, scope: !2283)
!2295 = !DILocation(line: 354, column: 67, scope: !2283)
!2296 = !DILocation(line: 354, column: 78, scope: !2283)
!2297 = !DILocation(line: 355, column: 5, scope: !2283)
!2298 = !DILocation(line: 356, column: 1, scope: !2283)
!2299 = distinct !DISubprogram(name: "predict_4x4_dc_top", scope: !1, file: !1, line: 357, type: !210, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2300)
!2300 = !{!2301, !2302}
!2301 = !DILocalVariable(name: "src", arg: 1, scope: !2299, file: !1, line: 357, type: !80)
!2302 = !DILocalVariable(name: "dc", scope: !2299, file: !1, line: 359, type: !68)
!2303 = !DILocation(line: 0, scope: !2299)
!2304 = !DILocation(line: 359, column: 21, scope: !2299)
!2305 = !DILocation(line: 359, column: 33, scope: !2299)
!2306 = !DILocation(line: 359, column: 45, scope: !2299)
!2307 = !DILocation(line: 359, column: 57, scope: !2299)
!2308 = !DILocation(line: 359, column: 31, scope: !2299)
!2309 = !DILocation(line: 359, column: 43, scope: !2299)
!2310 = !DILocation(line: 359, column: 55, scope: !2299)
!2311 = !DILocation(line: 359, column: 67, scope: !2299)
!2312 = !DILocation(line: 359, column: 78, scope: !2299)
!2313 = !DILocation(line: 360, column: 5, scope: !2299)
!2314 = !DILocation(line: 361, column: 1, scope: !2299)
!2315 = distinct !DISubprogram(name: "predict_4x4_dc_128", scope: !1, file: !1, line: 348, type: !210, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2316)
!2316 = !{!2317}
!2317 = !DILocalVariable(name: "src", arg: 1, scope: !2315, file: !1, line: 348, type: !80)
!2318 = !DILocation(line: 0, scope: !2315)
!2319 = !DILocation(line: 350, column: 5, scope: !2315)
!2320 = !DILocation(line: 351, column: 1, scope: !2315)
!2321 = !DISubprogram(name: "x264_predict_4x4_init_mmx", scope: !427, file: !427, line: 29, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
