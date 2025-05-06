; ModuleID = 'common/SpookyV2.cpp'
source_filename = "common/SpookyV2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%class.SpookyHash = type <{ [24 x i64], [12 x i64], i64, i8, [7 x i8] }>
%union.anon.1 = type { ptr }

$_ZN10SpookyHash8ShortMixERmS0_S0_S0_ = comdat any

$_ZN10SpookyHash8ShortEndERmS0_S0_S0_ = comdat any

$_ZN10SpookyHash3MixEPKmRmS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_ = comdat any

$_ZN10SpookyHash3EndEPKmRmS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_ = comdat any

$_ZN10SpookyHash5Rot64Emi = comdat any

$_ZN10SpookyHash10EndPartialERmS0_S0_S0_S0_S0_S0_S0_S0_S0_S0_S0_ = comdat any

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_ZN10SpookyHash5ShortEPKvmPmS2_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 align 2 !dbg !89 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [24 x i64], align 16
  %10 = alloca %union.anon, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !91, metadata !DIExpression()), !dbg !92
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !93, metadata !DIExpression()), !dbg !94
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !95, metadata !DIExpression()), !dbg !96
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata ptr %9, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata ptr %10, metadata !101, metadata !DIExpression()), !dbg !109
  %17 = load ptr, ptr %5, align 8, !dbg !110
  store ptr %17, ptr %10, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata ptr %11, metadata !112, metadata !DIExpression()), !dbg !113
  %18 = load i64, ptr %6, align 8, !dbg !114
  %19 = urem i64 %18, 32, !dbg !115
  store i64 %19, ptr %11, align 8, !dbg !113
  call void @llvm.dbg.declare(metadata ptr %12, metadata !116, metadata !DIExpression()), !dbg !117
  %20 = load ptr, ptr %7, align 8, !dbg !118
  %21 = load i64, ptr %20, align 8, !dbg !119
  store i64 %21, ptr %12, align 8, !dbg !117
  call void @llvm.dbg.declare(metadata ptr %13, metadata !120, metadata !DIExpression()), !dbg !121
  %22 = load ptr, ptr %8, align 8, !dbg !122
  %23 = load i64, ptr %22, align 8, !dbg !123
  store i64 %23, ptr %13, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata ptr %14, metadata !124, metadata !DIExpression()), !dbg !125
  store i64 -2401053088876216593, ptr %14, align 8, !dbg !125
  call void @llvm.dbg.declare(metadata ptr %15, metadata !126, metadata !DIExpression()), !dbg !127
  store i64 -2401053088876216593, ptr %15, align 8, !dbg !127
  %24 = load i64, ptr %6, align 8, !dbg !128
  %25 = icmp ugt i64 %24, 15, !dbg !130
  br i1 %25, label %26, label %79, !dbg !131

26:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !132, metadata !DIExpression()), !dbg !134
  %27 = load ptr, ptr %10, align 8, !dbg !135
  %28 = load i64, ptr %6, align 8, !dbg !136
  %29 = udiv i64 %28, 32, !dbg !137
  %30 = mul i64 %29, 4, !dbg !138
  %31 = getelementptr inbounds i64, ptr %27, i64 %30, !dbg !139
  store ptr %31, ptr %16, align 8, !dbg !134
  br label %32, !dbg !140

32:                                               ; preds = %57, %26
  %33 = load ptr, ptr %10, align 8, !dbg !141
  %34 = load ptr, ptr %16, align 8, !dbg !144
  %35 = icmp ult ptr %33, %34, !dbg !145
  br i1 %35, label %36, label %60, !dbg !146

36:                                               ; preds = %32
  %37 = load ptr, ptr %10, align 8, !dbg !147
  %38 = getelementptr inbounds i64, ptr %37, i64 0, !dbg !149
  %39 = load i64, ptr %38, align 8, !dbg !149
  %40 = load i64, ptr %14, align 8, !dbg !150
  %41 = add i64 %40, %39, !dbg !150
  store i64 %41, ptr %14, align 8, !dbg !150
  %42 = load ptr, ptr %10, align 8, !dbg !151
  %43 = getelementptr inbounds i64, ptr %42, i64 1, !dbg !152
  %44 = load i64, ptr %43, align 8, !dbg !152
  %45 = load i64, ptr %15, align 8, !dbg !153
  %46 = add i64 %45, %44, !dbg !153
  store i64 %46, ptr %15, align 8, !dbg !153
  call void @_ZN10SpookyHash8ShortMixERmS0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15), !dbg !154
  %47 = load ptr, ptr %10, align 8, !dbg !155
  %48 = getelementptr inbounds i64, ptr %47, i64 2, !dbg !156
  %49 = load i64, ptr %48, align 8, !dbg !156
  %50 = load i64, ptr %12, align 8, !dbg !157
  %51 = add i64 %50, %49, !dbg !157
  store i64 %51, ptr %12, align 8, !dbg !157
  %52 = load ptr, ptr %10, align 8, !dbg !158
  %53 = getelementptr inbounds i64, ptr %52, i64 3, !dbg !159
  %54 = load i64, ptr %53, align 8, !dbg !159
  %55 = load i64, ptr %13, align 8, !dbg !160
  %56 = add i64 %55, %54, !dbg !160
  store i64 %56, ptr %13, align 8, !dbg !160
  br label %57, !dbg !161

57:                                               ; preds = %36
  %58 = load ptr, ptr %10, align 8, !dbg !162
  %59 = getelementptr inbounds i64, ptr %58, i64 4, !dbg !162
  store ptr %59, ptr %10, align 8, !dbg !162
  br label %32, !dbg !163, !llvm.loop !164

60:                                               ; preds = %32
  %61 = load i64, ptr %11, align 8, !dbg !167
  %62 = icmp uge i64 %61, 16, !dbg !169
  br i1 %62, label %63, label %78, !dbg !170

63:                                               ; preds = %60
  %64 = load ptr, ptr %10, align 8, !dbg !171
  %65 = getelementptr inbounds i64, ptr %64, i64 0, !dbg !173
  %66 = load i64, ptr %65, align 8, !dbg !173
  %67 = load i64, ptr %14, align 8, !dbg !174
  %68 = add i64 %67, %66, !dbg !174
  store i64 %68, ptr %14, align 8, !dbg !174
  %69 = load ptr, ptr %10, align 8, !dbg !175
  %70 = getelementptr inbounds i64, ptr %69, i64 1, !dbg !176
  %71 = load i64, ptr %70, align 8, !dbg !176
  %72 = load i64, ptr %15, align 8, !dbg !177
  %73 = add i64 %72, %71, !dbg !177
  store i64 %73, ptr %15, align 8, !dbg !177
  call void @_ZN10SpookyHash8ShortMixERmS0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15), !dbg !178
  %74 = load ptr, ptr %10, align 8, !dbg !179
  %75 = getelementptr inbounds i64, ptr %74, i64 2, !dbg !179
  store ptr %75, ptr %10, align 8, !dbg !179
  %76 = load i64, ptr %11, align 8, !dbg !180
  %77 = sub i64 %76, 16, !dbg !180
  store i64 %77, ptr %11, align 8, !dbg !180
  br label %78, !dbg !181

78:                                               ; preds = %63, %60
  br label %79, !dbg !182

79:                                               ; preds = %78, %4
  %80 = load i64, ptr %6, align 8, !dbg !183
  %81 = shl i64 %80, 56, !dbg !184
  %82 = load i64, ptr %15, align 8, !dbg !185
  %83 = add i64 %82, %81, !dbg !185
  store i64 %83, ptr %15, align 8, !dbg !185
  %84 = load i64, ptr %11, align 8, !dbg !186
  switch i64 %84, label %209 [
    i64 15, label %85
    i64 14, label %93
    i64 13, label %101
    i64 12, label %109
    i64 11, label %121
    i64 10, label %129
    i64 9, label %137
    i64 8, label %144
    i64 7, label %150
    i64 6, label %158
    i64 5, label %166
    i64 4, label %174
    i64 3, label %181
    i64 2, label %189
    i64 1, label %197
    i64 0, label %204
  ], !dbg !187

85:                                               ; preds = %79
  %86 = load ptr, ptr %10, align 8, !dbg !188
  %87 = getelementptr inbounds i8, ptr %86, i64 14, !dbg !190
  %88 = load i8, ptr %87, align 1, !dbg !190
  %89 = zext i8 %88 to i64, !dbg !190
  %90 = shl i64 %89, 48, !dbg !191
  %91 = load i64, ptr %15, align 8, !dbg !192
  %92 = add i64 %91, %90, !dbg !192
  store i64 %92, ptr %15, align 8, !dbg !192
  br label %93, !dbg !193

93:                                               ; preds = %79, %85
  %94 = load ptr, ptr %10, align 8, !dbg !194
  %95 = getelementptr inbounds i8, ptr %94, i64 13, !dbg !195
  %96 = load i8, ptr %95, align 1, !dbg !195
  %97 = zext i8 %96 to i64, !dbg !195
  %98 = shl i64 %97, 40, !dbg !196
  %99 = load i64, ptr %15, align 8, !dbg !197
  %100 = add i64 %99, %98, !dbg !197
  store i64 %100, ptr %15, align 8, !dbg !197
  br label %101, !dbg !198

101:                                              ; preds = %79, %93
  %102 = load ptr, ptr %10, align 8, !dbg !199
  %103 = getelementptr inbounds i8, ptr %102, i64 12, !dbg !200
  %104 = load i8, ptr %103, align 1, !dbg !200
  %105 = zext i8 %104 to i64, !dbg !200
  %106 = shl i64 %105, 32, !dbg !201
  %107 = load i64, ptr %15, align 8, !dbg !202
  %108 = add i64 %107, %106, !dbg !202
  store i64 %108, ptr %15, align 8, !dbg !202
  br label %109, !dbg !203

109:                                              ; preds = %79, %101
  %110 = load ptr, ptr %10, align 8, !dbg !204
  %111 = getelementptr inbounds i32, ptr %110, i64 2, !dbg !205
  %112 = load i32, ptr %111, align 4, !dbg !205
  %113 = zext i32 %112 to i64, !dbg !205
  %114 = load i64, ptr %15, align 8, !dbg !206
  %115 = add i64 %114, %113, !dbg !206
  store i64 %115, ptr %15, align 8, !dbg !206
  %116 = load ptr, ptr %10, align 8, !dbg !207
  %117 = getelementptr inbounds i64, ptr %116, i64 0, !dbg !208
  %118 = load i64, ptr %117, align 8, !dbg !208
  %119 = load i64, ptr %14, align 8, !dbg !209
  %120 = add i64 %119, %118, !dbg !209
  store i64 %120, ptr %14, align 8, !dbg !209
  br label %209, !dbg !210

121:                                              ; preds = %79
  %122 = load ptr, ptr %10, align 8, !dbg !211
  %123 = getelementptr inbounds i8, ptr %122, i64 10, !dbg !212
  %124 = load i8, ptr %123, align 1, !dbg !212
  %125 = zext i8 %124 to i64, !dbg !212
  %126 = shl i64 %125, 16, !dbg !213
  %127 = load i64, ptr %15, align 8, !dbg !214
  %128 = add i64 %127, %126, !dbg !214
  store i64 %128, ptr %15, align 8, !dbg !214
  br label %129, !dbg !215

129:                                              ; preds = %79, %121
  %130 = load ptr, ptr %10, align 8, !dbg !216
  %131 = getelementptr inbounds i8, ptr %130, i64 9, !dbg !217
  %132 = load i8, ptr %131, align 1, !dbg !217
  %133 = zext i8 %132 to i64, !dbg !217
  %134 = shl i64 %133, 8, !dbg !218
  %135 = load i64, ptr %15, align 8, !dbg !219
  %136 = add i64 %135, %134, !dbg !219
  store i64 %136, ptr %15, align 8, !dbg !219
  br label %137, !dbg !220

137:                                              ; preds = %79, %129
  %138 = load ptr, ptr %10, align 8, !dbg !221
  %139 = getelementptr inbounds i8, ptr %138, i64 8, !dbg !222
  %140 = load i8, ptr %139, align 1, !dbg !222
  %141 = zext i8 %140 to i64, !dbg !222
  %142 = load i64, ptr %15, align 8, !dbg !223
  %143 = add i64 %142, %141, !dbg !223
  store i64 %143, ptr %15, align 8, !dbg !223
  br label %144, !dbg !224

144:                                              ; preds = %79, %137
  %145 = load ptr, ptr %10, align 8, !dbg !225
  %146 = getelementptr inbounds i64, ptr %145, i64 0, !dbg !226
  %147 = load i64, ptr %146, align 8, !dbg !226
  %148 = load i64, ptr %14, align 8, !dbg !227
  %149 = add i64 %148, %147, !dbg !227
  store i64 %149, ptr %14, align 8, !dbg !227
  br label %209, !dbg !228

150:                                              ; preds = %79
  %151 = load ptr, ptr %10, align 8, !dbg !229
  %152 = getelementptr inbounds i8, ptr %151, i64 6, !dbg !230
  %153 = load i8, ptr %152, align 1, !dbg !230
  %154 = zext i8 %153 to i64, !dbg !230
  %155 = shl i64 %154, 48, !dbg !231
  %156 = load i64, ptr %14, align 8, !dbg !232
  %157 = add i64 %156, %155, !dbg !232
  store i64 %157, ptr %14, align 8, !dbg !232
  br label %158, !dbg !233

158:                                              ; preds = %79, %150
  %159 = load ptr, ptr %10, align 8, !dbg !234
  %160 = getelementptr inbounds i8, ptr %159, i64 5, !dbg !235
  %161 = load i8, ptr %160, align 1, !dbg !235
  %162 = zext i8 %161 to i64, !dbg !235
  %163 = shl i64 %162, 40, !dbg !236
  %164 = load i64, ptr %14, align 8, !dbg !237
  %165 = add i64 %164, %163, !dbg !237
  store i64 %165, ptr %14, align 8, !dbg !237
  br label %166, !dbg !238

166:                                              ; preds = %79, %158
  %167 = load ptr, ptr %10, align 8, !dbg !239
  %168 = getelementptr inbounds i8, ptr %167, i64 4, !dbg !240
  %169 = load i8, ptr %168, align 1, !dbg !240
  %170 = zext i8 %169 to i64, !dbg !240
  %171 = shl i64 %170, 32, !dbg !241
  %172 = load i64, ptr %14, align 8, !dbg !242
  %173 = add i64 %172, %171, !dbg !242
  store i64 %173, ptr %14, align 8, !dbg !242
  br label %174, !dbg !243

174:                                              ; preds = %79, %166
  %175 = load ptr, ptr %10, align 8, !dbg !244
  %176 = getelementptr inbounds i32, ptr %175, i64 0, !dbg !245
  %177 = load i32, ptr %176, align 4, !dbg !245
  %178 = zext i32 %177 to i64, !dbg !245
  %179 = load i64, ptr %14, align 8, !dbg !246
  %180 = add i64 %179, %178, !dbg !246
  store i64 %180, ptr %14, align 8, !dbg !246
  br label %209, !dbg !247

181:                                              ; preds = %79
  %182 = load ptr, ptr %10, align 8, !dbg !248
  %183 = getelementptr inbounds i8, ptr %182, i64 2, !dbg !249
  %184 = load i8, ptr %183, align 1, !dbg !249
  %185 = zext i8 %184 to i64, !dbg !249
  %186 = shl i64 %185, 16, !dbg !250
  %187 = load i64, ptr %14, align 8, !dbg !251
  %188 = add i64 %187, %186, !dbg !251
  store i64 %188, ptr %14, align 8, !dbg !251
  br label %189, !dbg !252

189:                                              ; preds = %79, %181
  %190 = load ptr, ptr %10, align 8, !dbg !253
  %191 = getelementptr inbounds i8, ptr %190, i64 1, !dbg !254
  %192 = load i8, ptr %191, align 1, !dbg !254
  %193 = zext i8 %192 to i64, !dbg !254
  %194 = shl i64 %193, 8, !dbg !255
  %195 = load i64, ptr %14, align 8, !dbg !256
  %196 = add i64 %195, %194, !dbg !256
  store i64 %196, ptr %14, align 8, !dbg !256
  br label %197, !dbg !257

197:                                              ; preds = %79, %189
  %198 = load ptr, ptr %10, align 8, !dbg !258
  %199 = getelementptr inbounds i8, ptr %198, i64 0, !dbg !259
  %200 = load i8, ptr %199, align 1, !dbg !259
  %201 = zext i8 %200 to i64, !dbg !259
  %202 = load i64, ptr %14, align 8, !dbg !260
  %203 = add i64 %202, %201, !dbg !260
  store i64 %203, ptr %14, align 8, !dbg !260
  br label %209, !dbg !261

204:                                              ; preds = %79
  %205 = load i64, ptr %14, align 8, !dbg !262
  %206 = add i64 %205, -2401053088876216593, !dbg !262
  store i64 %206, ptr %14, align 8, !dbg !262
  %207 = load i64, ptr %15, align 8, !dbg !263
  %208 = add i64 %207, -2401053088876216593, !dbg !263
  store i64 %208, ptr %15, align 8, !dbg !263
  br label %209, !dbg !264

209:                                              ; preds = %204, %79, %197, %174, %144, %109
  call void @_ZN10SpookyHash8ShortEndERmS0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15), !dbg !265
  %210 = load i64, ptr %12, align 8, !dbg !266
  %211 = load ptr, ptr %7, align 8, !dbg !267
  store i64 %210, ptr %211, align 8, !dbg !268
  %212 = load i64, ptr %13, align 8, !dbg !269
  %213 = load ptr, ptr %8, align 8, !dbg !270
  store i64 %212, ptr %213, align 8, !dbg !271
  ret void, !dbg !272
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN10SpookyHash8ShortMixERmS0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #0 comdat align 2 !dbg !273 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !274, metadata !DIExpression()), !dbg !275
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !276, metadata !DIExpression()), !dbg !277
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !278, metadata !DIExpression()), !dbg !279
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !280, metadata !DIExpression()), !dbg !281
  %9 = load ptr, ptr %7, align 8, !dbg !282
  %10 = load i64, ptr %9, align 8, !dbg !282
  %11 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %10, i32 noundef 50), !dbg !283
  %12 = load ptr, ptr %7, align 8, !dbg !284
  store i64 %11, ptr %12, align 8, !dbg !285
  %13 = load ptr, ptr %8, align 8, !dbg !286
  %14 = load i64, ptr %13, align 8, !dbg !286
  %15 = load ptr, ptr %7, align 8, !dbg !287
  %16 = load i64, ptr %15, align 8, !dbg !288
  %17 = add i64 %16, %14, !dbg !288
  store i64 %17, ptr %15, align 8, !dbg !288
  %18 = load ptr, ptr %7, align 8, !dbg !289
  %19 = load i64, ptr %18, align 8, !dbg !289
  %20 = load ptr, ptr %5, align 8, !dbg !290
  %21 = load i64, ptr %20, align 8, !dbg !291
  %22 = xor i64 %21, %19, !dbg !291
  store i64 %22, ptr %20, align 8, !dbg !291
  %23 = load ptr, ptr %8, align 8, !dbg !292
  %24 = load i64, ptr %23, align 8, !dbg !292
  %25 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %24, i32 noundef 52), !dbg !293
  %26 = load ptr, ptr %8, align 8, !dbg !294
  store i64 %25, ptr %26, align 8, !dbg !295
  %27 = load ptr, ptr %5, align 8, !dbg !296
  %28 = load i64, ptr %27, align 8, !dbg !296
  %29 = load ptr, ptr %8, align 8, !dbg !297
  %30 = load i64, ptr %29, align 8, !dbg !298
  %31 = add i64 %30, %28, !dbg !298
  store i64 %31, ptr %29, align 8, !dbg !298
  %32 = load ptr, ptr %8, align 8, !dbg !299
  %33 = load i64, ptr %32, align 8, !dbg !299
  %34 = load ptr, ptr %6, align 8, !dbg !300
  %35 = load i64, ptr %34, align 8, !dbg !301
  %36 = xor i64 %35, %33, !dbg !301
  store i64 %36, ptr %34, align 8, !dbg !301
  %37 = load ptr, ptr %5, align 8, !dbg !302
  %38 = load i64, ptr %37, align 8, !dbg !302
  %39 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %38, i32 noundef 30), !dbg !303
  %40 = load ptr, ptr %5, align 8, !dbg !304
  store i64 %39, ptr %40, align 8, !dbg !305
  %41 = load ptr, ptr %6, align 8, !dbg !306
  %42 = load i64, ptr %41, align 8, !dbg !306
  %43 = load ptr, ptr %5, align 8, !dbg !307
  %44 = load i64, ptr %43, align 8, !dbg !308
  %45 = add i64 %44, %42, !dbg !308
  store i64 %45, ptr %43, align 8, !dbg !308
  %46 = load ptr, ptr %5, align 8, !dbg !309
  %47 = load i64, ptr %46, align 8, !dbg !309
  %48 = load ptr, ptr %7, align 8, !dbg !310
  %49 = load i64, ptr %48, align 8, !dbg !311
  %50 = xor i64 %49, %47, !dbg !311
  store i64 %50, ptr %48, align 8, !dbg !311
  %51 = load ptr, ptr %6, align 8, !dbg !312
  %52 = load i64, ptr %51, align 8, !dbg !312
  %53 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %52, i32 noundef 41), !dbg !313
  %54 = load ptr, ptr %6, align 8, !dbg !314
  store i64 %53, ptr %54, align 8, !dbg !315
  %55 = load ptr, ptr %7, align 8, !dbg !316
  %56 = load i64, ptr %55, align 8, !dbg !316
  %57 = load ptr, ptr %6, align 8, !dbg !317
  %58 = load i64, ptr %57, align 8, !dbg !318
  %59 = add i64 %58, %56, !dbg !318
  store i64 %59, ptr %57, align 8, !dbg !318
  %60 = load ptr, ptr %6, align 8, !dbg !319
  %61 = load i64, ptr %60, align 8, !dbg !319
  %62 = load ptr, ptr %8, align 8, !dbg !320
  %63 = load i64, ptr %62, align 8, !dbg !321
  %64 = xor i64 %63, %61, !dbg !321
  store i64 %64, ptr %62, align 8, !dbg !321
  %65 = load ptr, ptr %7, align 8, !dbg !322
  %66 = load i64, ptr %65, align 8, !dbg !322
  %67 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %66, i32 noundef 54), !dbg !323
  %68 = load ptr, ptr %7, align 8, !dbg !324
  store i64 %67, ptr %68, align 8, !dbg !325
  %69 = load ptr, ptr %8, align 8, !dbg !326
  %70 = load i64, ptr %69, align 8, !dbg !326
  %71 = load ptr, ptr %7, align 8, !dbg !327
  %72 = load i64, ptr %71, align 8, !dbg !328
  %73 = add i64 %72, %70, !dbg !328
  store i64 %73, ptr %71, align 8, !dbg !328
  %74 = load ptr, ptr %7, align 8, !dbg !329
  %75 = load i64, ptr %74, align 8, !dbg !329
  %76 = load ptr, ptr %5, align 8, !dbg !330
  %77 = load i64, ptr %76, align 8, !dbg !331
  %78 = xor i64 %77, %75, !dbg !331
  store i64 %78, ptr %76, align 8, !dbg !331
  %79 = load ptr, ptr %8, align 8, !dbg !332
  %80 = load i64, ptr %79, align 8, !dbg !332
  %81 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %80, i32 noundef 48), !dbg !333
  %82 = load ptr, ptr %8, align 8, !dbg !334
  store i64 %81, ptr %82, align 8, !dbg !335
  %83 = load ptr, ptr %5, align 8, !dbg !336
  %84 = load i64, ptr %83, align 8, !dbg !336
  %85 = load ptr, ptr %8, align 8, !dbg !337
  %86 = load i64, ptr %85, align 8, !dbg !338
  %87 = add i64 %86, %84, !dbg !338
  store i64 %87, ptr %85, align 8, !dbg !338
  %88 = load ptr, ptr %8, align 8, !dbg !339
  %89 = load i64, ptr %88, align 8, !dbg !339
  %90 = load ptr, ptr %6, align 8, !dbg !340
  %91 = load i64, ptr %90, align 8, !dbg !341
  %92 = xor i64 %91, %89, !dbg !341
  store i64 %92, ptr %90, align 8, !dbg !341
  %93 = load ptr, ptr %5, align 8, !dbg !342
  %94 = load i64, ptr %93, align 8, !dbg !342
  %95 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %94, i32 noundef 38), !dbg !343
  %96 = load ptr, ptr %5, align 8, !dbg !344
  store i64 %95, ptr %96, align 8, !dbg !345
  %97 = load ptr, ptr %6, align 8, !dbg !346
  %98 = load i64, ptr %97, align 8, !dbg !346
  %99 = load ptr, ptr %5, align 8, !dbg !347
  %100 = load i64, ptr %99, align 8, !dbg !348
  %101 = add i64 %100, %98, !dbg !348
  store i64 %101, ptr %99, align 8, !dbg !348
  %102 = load ptr, ptr %5, align 8, !dbg !349
  %103 = load i64, ptr %102, align 8, !dbg !349
  %104 = load ptr, ptr %7, align 8, !dbg !350
  %105 = load i64, ptr %104, align 8, !dbg !351
  %106 = xor i64 %105, %103, !dbg !351
  store i64 %106, ptr %104, align 8, !dbg !351
  %107 = load ptr, ptr %6, align 8, !dbg !352
  %108 = load i64, ptr %107, align 8, !dbg !352
  %109 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %108, i32 noundef 37), !dbg !353
  %110 = load ptr, ptr %6, align 8, !dbg !354
  store i64 %109, ptr %110, align 8, !dbg !355
  %111 = load ptr, ptr %7, align 8, !dbg !356
  %112 = load i64, ptr %111, align 8, !dbg !356
  %113 = load ptr, ptr %6, align 8, !dbg !357
  %114 = load i64, ptr %113, align 8, !dbg !358
  %115 = add i64 %114, %112, !dbg !358
  store i64 %115, ptr %113, align 8, !dbg !358
  %116 = load ptr, ptr %6, align 8, !dbg !359
  %117 = load i64, ptr %116, align 8, !dbg !359
  %118 = load ptr, ptr %8, align 8, !dbg !360
  %119 = load i64, ptr %118, align 8, !dbg !361
  %120 = xor i64 %119, %117, !dbg !361
  store i64 %120, ptr %118, align 8, !dbg !361
  %121 = load ptr, ptr %7, align 8, !dbg !362
  %122 = load i64, ptr %121, align 8, !dbg !362
  %123 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %122, i32 noundef 62), !dbg !363
  %124 = load ptr, ptr %7, align 8, !dbg !364
  store i64 %123, ptr %124, align 8, !dbg !365
  %125 = load ptr, ptr %8, align 8, !dbg !366
  %126 = load i64, ptr %125, align 8, !dbg !366
  %127 = load ptr, ptr %7, align 8, !dbg !367
  %128 = load i64, ptr %127, align 8, !dbg !368
  %129 = add i64 %128, %126, !dbg !368
  store i64 %129, ptr %127, align 8, !dbg !368
  %130 = load ptr, ptr %7, align 8, !dbg !369
  %131 = load i64, ptr %130, align 8, !dbg !369
  %132 = load ptr, ptr %5, align 8, !dbg !370
  %133 = load i64, ptr %132, align 8, !dbg !371
  %134 = xor i64 %133, %131, !dbg !371
  store i64 %134, ptr %132, align 8, !dbg !371
  %135 = load ptr, ptr %8, align 8, !dbg !372
  %136 = load i64, ptr %135, align 8, !dbg !372
  %137 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %136, i32 noundef 34), !dbg !373
  %138 = load ptr, ptr %8, align 8, !dbg !374
  store i64 %137, ptr %138, align 8, !dbg !375
  %139 = load ptr, ptr %5, align 8, !dbg !376
  %140 = load i64, ptr %139, align 8, !dbg !376
  %141 = load ptr, ptr %8, align 8, !dbg !377
  %142 = load i64, ptr %141, align 8, !dbg !378
  %143 = add i64 %142, %140, !dbg !378
  store i64 %143, ptr %141, align 8, !dbg !378
  %144 = load ptr, ptr %8, align 8, !dbg !379
  %145 = load i64, ptr %144, align 8, !dbg !379
  %146 = load ptr, ptr %6, align 8, !dbg !380
  %147 = load i64, ptr %146, align 8, !dbg !381
  %148 = xor i64 %147, %145, !dbg !381
  store i64 %148, ptr %146, align 8, !dbg !381
  %149 = load ptr, ptr %5, align 8, !dbg !382
  %150 = load i64, ptr %149, align 8, !dbg !382
  %151 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %150, i32 noundef 5), !dbg !383
  %152 = load ptr, ptr %5, align 8, !dbg !384
  store i64 %151, ptr %152, align 8, !dbg !385
  %153 = load ptr, ptr %6, align 8, !dbg !386
  %154 = load i64, ptr %153, align 8, !dbg !386
  %155 = load ptr, ptr %5, align 8, !dbg !387
  %156 = load i64, ptr %155, align 8, !dbg !388
  %157 = add i64 %156, %154, !dbg !388
  store i64 %157, ptr %155, align 8, !dbg !388
  %158 = load ptr, ptr %5, align 8, !dbg !389
  %159 = load i64, ptr %158, align 8, !dbg !389
  %160 = load ptr, ptr %7, align 8, !dbg !390
  %161 = load i64, ptr %160, align 8, !dbg !391
  %162 = xor i64 %161, %159, !dbg !391
  store i64 %162, ptr %160, align 8, !dbg !391
  %163 = load ptr, ptr %6, align 8, !dbg !392
  %164 = load i64, ptr %163, align 8, !dbg !392
  %165 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %164, i32 noundef 36), !dbg !393
  %166 = load ptr, ptr %6, align 8, !dbg !394
  store i64 %165, ptr %166, align 8, !dbg !395
  %167 = load ptr, ptr %7, align 8, !dbg !396
  %168 = load i64, ptr %167, align 8, !dbg !396
  %169 = load ptr, ptr %6, align 8, !dbg !397
  %170 = load i64, ptr %169, align 8, !dbg !398
  %171 = add i64 %170, %168, !dbg !398
  store i64 %171, ptr %169, align 8, !dbg !398
  %172 = load ptr, ptr %6, align 8, !dbg !399
  %173 = load i64, ptr %172, align 8, !dbg !399
  %174 = load ptr, ptr %8, align 8, !dbg !400
  %175 = load i64, ptr %174, align 8, !dbg !401
  %176 = xor i64 %175, %173, !dbg !401
  store i64 %176, ptr %174, align 8, !dbg !401
  ret void, !dbg !402
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN10SpookyHash8ShortEndERmS0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #2 comdat align 2 !dbg !403 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !404, metadata !DIExpression()), !dbg !405
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !406, metadata !DIExpression()), !dbg !407
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !408, metadata !DIExpression()), !dbg !409
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !410, metadata !DIExpression()), !dbg !411
  %9 = load ptr, ptr %7, align 8, !dbg !412
  %10 = load i64, ptr %9, align 8, !dbg !412
  %11 = load ptr, ptr %8, align 8, !dbg !413
  %12 = load i64, ptr %11, align 8, !dbg !414
  %13 = xor i64 %12, %10, !dbg !414
  store i64 %13, ptr %11, align 8, !dbg !414
  %14 = load ptr, ptr %7, align 8, !dbg !415
  %15 = load i64, ptr %14, align 8, !dbg !415
  %16 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %15, i32 noundef 15), !dbg !416
  %17 = load ptr, ptr %7, align 8, !dbg !417
  store i64 %16, ptr %17, align 8, !dbg !418
  %18 = load ptr, ptr %7, align 8, !dbg !419
  %19 = load i64, ptr %18, align 8, !dbg !419
  %20 = load ptr, ptr %8, align 8, !dbg !420
  %21 = load i64, ptr %20, align 8, !dbg !421
  %22 = add i64 %21, %19, !dbg !421
  store i64 %22, ptr %20, align 8, !dbg !421
  %23 = load ptr, ptr %8, align 8, !dbg !422
  %24 = load i64, ptr %23, align 8, !dbg !422
  %25 = load ptr, ptr %5, align 8, !dbg !423
  %26 = load i64, ptr %25, align 8, !dbg !424
  %27 = xor i64 %26, %24, !dbg !424
  store i64 %27, ptr %25, align 8, !dbg !424
  %28 = load ptr, ptr %8, align 8, !dbg !425
  %29 = load i64, ptr %28, align 8, !dbg !425
  %30 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %29, i32 noundef 52), !dbg !426
  %31 = load ptr, ptr %8, align 8, !dbg !427
  store i64 %30, ptr %31, align 8, !dbg !428
  %32 = load ptr, ptr %8, align 8, !dbg !429
  %33 = load i64, ptr %32, align 8, !dbg !429
  %34 = load ptr, ptr %5, align 8, !dbg !430
  %35 = load i64, ptr %34, align 8, !dbg !431
  %36 = add i64 %35, %33, !dbg !431
  store i64 %36, ptr %34, align 8, !dbg !431
  %37 = load ptr, ptr %5, align 8, !dbg !432
  %38 = load i64, ptr %37, align 8, !dbg !432
  %39 = load ptr, ptr %6, align 8, !dbg !433
  %40 = load i64, ptr %39, align 8, !dbg !434
  %41 = xor i64 %40, %38, !dbg !434
  store i64 %41, ptr %39, align 8, !dbg !434
  %42 = load ptr, ptr %5, align 8, !dbg !435
  %43 = load i64, ptr %42, align 8, !dbg !435
  %44 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %43, i32 noundef 26), !dbg !436
  %45 = load ptr, ptr %5, align 8, !dbg !437
  store i64 %44, ptr %45, align 8, !dbg !438
  %46 = load ptr, ptr %5, align 8, !dbg !439
  %47 = load i64, ptr %46, align 8, !dbg !439
  %48 = load ptr, ptr %6, align 8, !dbg !440
  %49 = load i64, ptr %48, align 8, !dbg !441
  %50 = add i64 %49, %47, !dbg !441
  store i64 %50, ptr %48, align 8, !dbg !441
  %51 = load ptr, ptr %6, align 8, !dbg !442
  %52 = load i64, ptr %51, align 8, !dbg !442
  %53 = load ptr, ptr %7, align 8, !dbg !443
  %54 = load i64, ptr %53, align 8, !dbg !444
  %55 = xor i64 %54, %52, !dbg !444
  store i64 %55, ptr %53, align 8, !dbg !444
  %56 = load ptr, ptr %6, align 8, !dbg !445
  %57 = load i64, ptr %56, align 8, !dbg !445
  %58 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %57, i32 noundef 51), !dbg !446
  %59 = load ptr, ptr %6, align 8, !dbg !447
  store i64 %58, ptr %59, align 8, !dbg !448
  %60 = load ptr, ptr %6, align 8, !dbg !449
  %61 = load i64, ptr %60, align 8, !dbg !449
  %62 = load ptr, ptr %7, align 8, !dbg !450
  %63 = load i64, ptr %62, align 8, !dbg !451
  %64 = add i64 %63, %61, !dbg !451
  store i64 %64, ptr %62, align 8, !dbg !451
  %65 = load ptr, ptr %7, align 8, !dbg !452
  %66 = load i64, ptr %65, align 8, !dbg !452
  %67 = load ptr, ptr %8, align 8, !dbg !453
  %68 = load i64, ptr %67, align 8, !dbg !454
  %69 = xor i64 %68, %66, !dbg !454
  store i64 %69, ptr %67, align 8, !dbg !454
  %70 = load ptr, ptr %7, align 8, !dbg !455
  %71 = load i64, ptr %70, align 8, !dbg !455
  %72 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %71, i32 noundef 28), !dbg !456
  %73 = load ptr, ptr %7, align 8, !dbg !457
  store i64 %72, ptr %73, align 8, !dbg !458
  %74 = load ptr, ptr %7, align 8, !dbg !459
  %75 = load i64, ptr %74, align 8, !dbg !459
  %76 = load ptr, ptr %8, align 8, !dbg !460
  %77 = load i64, ptr %76, align 8, !dbg !461
  %78 = add i64 %77, %75, !dbg !461
  store i64 %78, ptr %76, align 8, !dbg !461
  %79 = load ptr, ptr %8, align 8, !dbg !462
  %80 = load i64, ptr %79, align 8, !dbg !462
  %81 = load ptr, ptr %5, align 8, !dbg !463
  %82 = load i64, ptr %81, align 8, !dbg !464
  %83 = xor i64 %82, %80, !dbg !464
  store i64 %83, ptr %81, align 8, !dbg !464
  %84 = load ptr, ptr %8, align 8, !dbg !465
  %85 = load i64, ptr %84, align 8, !dbg !465
  %86 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %85, i32 noundef 9), !dbg !466
  %87 = load ptr, ptr %8, align 8, !dbg !467
  store i64 %86, ptr %87, align 8, !dbg !468
  %88 = load ptr, ptr %8, align 8, !dbg !469
  %89 = load i64, ptr %88, align 8, !dbg !469
  %90 = load ptr, ptr %5, align 8, !dbg !470
  %91 = load i64, ptr %90, align 8, !dbg !471
  %92 = add i64 %91, %89, !dbg !471
  store i64 %92, ptr %90, align 8, !dbg !471
  %93 = load ptr, ptr %5, align 8, !dbg !472
  %94 = load i64, ptr %93, align 8, !dbg !472
  %95 = load ptr, ptr %6, align 8, !dbg !473
  %96 = load i64, ptr %95, align 8, !dbg !474
  %97 = xor i64 %96, %94, !dbg !474
  store i64 %97, ptr %95, align 8, !dbg !474
  %98 = load ptr, ptr %5, align 8, !dbg !475
  %99 = load i64, ptr %98, align 8, !dbg !475
  %100 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %99, i32 noundef 47), !dbg !476
  %101 = load ptr, ptr %5, align 8, !dbg !477
  store i64 %100, ptr %101, align 8, !dbg !478
  %102 = load ptr, ptr %5, align 8, !dbg !479
  %103 = load i64, ptr %102, align 8, !dbg !479
  %104 = load ptr, ptr %6, align 8, !dbg !480
  %105 = load i64, ptr %104, align 8, !dbg !481
  %106 = add i64 %105, %103, !dbg !481
  store i64 %106, ptr %104, align 8, !dbg !481
  %107 = load ptr, ptr %6, align 8, !dbg !482
  %108 = load i64, ptr %107, align 8, !dbg !482
  %109 = load ptr, ptr %7, align 8, !dbg !483
  %110 = load i64, ptr %109, align 8, !dbg !484
  %111 = xor i64 %110, %108, !dbg !484
  store i64 %111, ptr %109, align 8, !dbg !484
  %112 = load ptr, ptr %6, align 8, !dbg !485
  %113 = load i64, ptr %112, align 8, !dbg !485
  %114 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %113, i32 noundef 54), !dbg !486
  %115 = load ptr, ptr %6, align 8, !dbg !487
  store i64 %114, ptr %115, align 8, !dbg !488
  %116 = load ptr, ptr %6, align 8, !dbg !489
  %117 = load i64, ptr %116, align 8, !dbg !489
  %118 = load ptr, ptr %7, align 8, !dbg !490
  %119 = load i64, ptr %118, align 8, !dbg !491
  %120 = add i64 %119, %117, !dbg !491
  store i64 %120, ptr %118, align 8, !dbg !491
  %121 = load ptr, ptr %7, align 8, !dbg !492
  %122 = load i64, ptr %121, align 8, !dbg !492
  %123 = load ptr, ptr %8, align 8, !dbg !493
  %124 = load i64, ptr %123, align 8, !dbg !494
  %125 = xor i64 %124, %122, !dbg !494
  store i64 %125, ptr %123, align 8, !dbg !494
  %126 = load ptr, ptr %7, align 8, !dbg !495
  %127 = load i64, ptr %126, align 8, !dbg !495
  %128 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %127, i32 noundef 32), !dbg !496
  %129 = load ptr, ptr %7, align 8, !dbg !497
  store i64 %128, ptr %129, align 8, !dbg !498
  %130 = load ptr, ptr %7, align 8, !dbg !499
  %131 = load i64, ptr %130, align 8, !dbg !499
  %132 = load ptr, ptr %8, align 8, !dbg !500
  %133 = load i64, ptr %132, align 8, !dbg !501
  %134 = add i64 %133, %131, !dbg !501
  store i64 %134, ptr %132, align 8, !dbg !501
  %135 = load ptr, ptr %8, align 8, !dbg !502
  %136 = load i64, ptr %135, align 8, !dbg !502
  %137 = load ptr, ptr %5, align 8, !dbg !503
  %138 = load i64, ptr %137, align 8, !dbg !504
  %139 = xor i64 %138, %136, !dbg !504
  store i64 %139, ptr %137, align 8, !dbg !504
  %140 = load ptr, ptr %8, align 8, !dbg !505
  %141 = load i64, ptr %140, align 8, !dbg !505
  %142 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %141, i32 noundef 25), !dbg !506
  %143 = load ptr, ptr %8, align 8, !dbg !507
  store i64 %142, ptr %143, align 8, !dbg !508
  %144 = load ptr, ptr %8, align 8, !dbg !509
  %145 = load i64, ptr %144, align 8, !dbg !509
  %146 = load ptr, ptr %5, align 8, !dbg !510
  %147 = load i64, ptr %146, align 8, !dbg !511
  %148 = add i64 %147, %145, !dbg !511
  store i64 %148, ptr %146, align 8, !dbg !511
  %149 = load ptr, ptr %5, align 8, !dbg !512
  %150 = load i64, ptr %149, align 8, !dbg !512
  %151 = load ptr, ptr %6, align 8, !dbg !513
  %152 = load i64, ptr %151, align 8, !dbg !514
  %153 = xor i64 %152, %150, !dbg !514
  store i64 %153, ptr %151, align 8, !dbg !514
  %154 = load ptr, ptr %5, align 8, !dbg !515
  %155 = load i64, ptr %154, align 8, !dbg !515
  %156 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %155, i32 noundef 63), !dbg !516
  %157 = load ptr, ptr %5, align 8, !dbg !517
  store i64 %156, ptr %157, align 8, !dbg !518
  %158 = load ptr, ptr %5, align 8, !dbg !519
  %159 = load i64, ptr %158, align 8, !dbg !519
  %160 = load ptr, ptr %6, align 8, !dbg !520
  %161 = load i64, ptr %160, align 8, !dbg !521
  %162 = add i64 %161, %159, !dbg !521
  store i64 %162, ptr %160, align 8, !dbg !521
  ret void, !dbg !522
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_ZN10SpookyHash7Hash128EPKvmPmS2_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 align 2 !dbg !523 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca [12 x i64], align 16
  %22 = alloca ptr, align 8
  %23 = alloca %union.anon.0, align 8
  %24 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !524, metadata !DIExpression()), !dbg !525
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !526, metadata !DIExpression()), !dbg !527
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !528, metadata !DIExpression()), !dbg !529
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !530, metadata !DIExpression()), !dbg !531
  %25 = load i64, ptr %6, align 8, !dbg !532
  %26 = icmp ult i64 %25, 192, !dbg !534
  br i1 %26, label %27, label %32, !dbg !535

27:                                               ; preds = %4
  %28 = load ptr, ptr %5, align 8, !dbg !536
  %29 = load i64, ptr %6, align 8, !dbg !538
  %30 = load ptr, ptr %7, align 8, !dbg !539
  %31 = load ptr, ptr %8, align 8, !dbg !540
  call void @_ZN10SpookyHash5ShortEPKvmPmS2_(ptr noundef %28, i64 noundef %29, ptr noundef %30, ptr noundef %31), !dbg !541
  br label %76, !dbg !542

32:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !543, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.declare(metadata ptr %10, metadata !545, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata ptr %11, metadata !547, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.declare(metadata ptr %12, metadata !549, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.declare(metadata ptr %13, metadata !551, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.declare(metadata ptr %14, metadata !553, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata ptr %15, metadata !555, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata ptr %16, metadata !557, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.declare(metadata ptr %17, metadata !559, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.declare(metadata ptr %18, metadata !561, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.declare(metadata ptr %19, metadata !563, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.declare(metadata ptr %20, metadata !565, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.declare(metadata ptr %21, metadata !567, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.declare(metadata ptr %22, metadata !569, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.declare(metadata ptr %23, metadata !571, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.declare(metadata ptr %24, metadata !578, metadata !DIExpression()), !dbg !579
  %33 = load ptr, ptr %7, align 8, !dbg !580
  %34 = load i64, ptr %33, align 8, !dbg !581
  store i64 %34, ptr %18, align 8, !dbg !582
  store i64 %34, ptr %15, align 8, !dbg !583
  store i64 %34, ptr %12, align 8, !dbg !584
  store i64 %34, ptr %9, align 8, !dbg !585
  %35 = load ptr, ptr %8, align 8, !dbg !586
  %36 = load i64, ptr %35, align 8, !dbg !587
  store i64 %36, ptr %19, align 8, !dbg !588
  store i64 %36, ptr %16, align 8, !dbg !589
  store i64 %36, ptr %13, align 8, !dbg !590
  store i64 %36, ptr %10, align 8, !dbg !591
  store i64 -2401053088876216593, ptr %20, align 8, !dbg !592
  store i64 -2401053088876216593, ptr %17, align 8, !dbg !593
  store i64 -2401053088876216593, ptr %14, align 8, !dbg !594
  store i64 -2401053088876216593, ptr %11, align 8, !dbg !595
  %37 = load ptr, ptr %5, align 8, !dbg !596
  store ptr %37, ptr %23, align 8, !dbg !597
  %38 = load ptr, ptr %23, align 8, !dbg !598
  %39 = load i64, ptr %6, align 8, !dbg !599
  %40 = udiv i64 %39, 96, !dbg !600
  %41 = mul i64 %40, 12, !dbg !601
  %42 = getelementptr inbounds i64, ptr %38, i64 %41, !dbg !602
  store ptr %42, ptr %22, align 8, !dbg !603
  br label %43, !dbg !604

43:                                               ; preds = %47, %32
  %44 = load ptr, ptr %23, align 8, !dbg !607
  %45 = load ptr, ptr %22, align 8, !dbg !608
  %46 = icmp ult ptr %44, %45, !dbg !609
  br i1 %46, label %47, label %51, !dbg !604

47:                                               ; preds = %43
  %48 = load ptr, ptr %23, align 8, !dbg !610
  call void @_ZN10SpookyHash3MixEPKmRmS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %48, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %20), !dbg !612
  %49 = load ptr, ptr %23, align 8, !dbg !613
  %50 = getelementptr inbounds i64, ptr %49, i64 12, !dbg !613
  store ptr %50, ptr %23, align 8, !dbg !613
  br label %43, !dbg !604, !llvm.loop !614

51:                                               ; preds = %43
  %52 = load i64, ptr %6, align 8, !dbg !616
  %53 = load ptr, ptr %22, align 8, !dbg !617
  %54 = load ptr, ptr %5, align 8, !dbg !618
  %55 = ptrtoint ptr %53 to i64, !dbg !619
  %56 = ptrtoint ptr %54 to i64, !dbg !619
  %57 = sub i64 %55, %56, !dbg !619
  %58 = sub i64 %52, %57, !dbg !620
  store i64 %58, ptr %24, align 8, !dbg !621
  %59 = getelementptr inbounds [12 x i64], ptr %21, i64 0, i64 0, !dbg !622
  %60 = load ptr, ptr %22, align 8, !dbg !623
  %61 = load i64, ptr %24, align 8, !dbg !624
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %59, ptr align 8 %60, i64 %61, i1 false), !dbg !622
  %62 = getelementptr inbounds [12 x i64], ptr %21, i64 0, i64 0, !dbg !625
  %63 = load i64, ptr %24, align 8, !dbg !626
  %64 = getelementptr inbounds i8, ptr %62, i64 %63, !dbg !627
  %65 = load i64, ptr %24, align 8, !dbg !628
  %66 = sub i64 96, %65, !dbg !629
  call void @llvm.memset.p0.i64(ptr align 1 %64, i8 0, i64 %66, i1 false), !dbg !630
  %67 = load i64, ptr %24, align 8, !dbg !631
  %68 = trunc i64 %67 to i8, !dbg !631
  %69 = getelementptr inbounds [12 x i64], ptr %21, i64 0, i64 0, !dbg !632
  %70 = getelementptr inbounds i8, ptr %69, i64 95, !dbg !632
  store i8 %68, ptr %70, align 1, !dbg !633
  %71 = getelementptr inbounds [12 x i64], ptr %21, i64 0, i64 0, !dbg !634
  call void @_ZN10SpookyHash3EndEPKmRmS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %71, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %20), !dbg !635
  %72 = load i64, ptr %9, align 8, !dbg !636
  %73 = load ptr, ptr %7, align 8, !dbg !637
  store i64 %72, ptr %73, align 8, !dbg !638
  %74 = load i64, ptr %10, align 8, !dbg !639
  %75 = load ptr, ptr %8, align 8, !dbg !640
  store i64 %74, ptr %75, align 8, !dbg !641
  br label %76, !dbg !642

76:                                               ; preds = %51, %27
  ret void, !dbg !642
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN10SpookyHash3MixEPKmRmS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12) #2 comdat align 2 !dbg !643 {
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  store ptr %0, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !644, metadata !DIExpression()), !dbg !645
  store ptr %1, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !646, metadata !DIExpression()), !dbg !647
  store ptr %2, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !648, metadata !DIExpression()), !dbg !649
  store ptr %3, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !650, metadata !DIExpression()), !dbg !651
  store ptr %4, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !652, metadata !DIExpression()), !dbg !653
  store ptr %5, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !654, metadata !DIExpression()), !dbg !655
  store ptr %6, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !656, metadata !DIExpression()), !dbg !657
  store ptr %7, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !658, metadata !DIExpression()), !dbg !659
  store ptr %8, ptr %22, align 8
  call void @llvm.dbg.declare(metadata ptr %22, metadata !660, metadata !DIExpression()), !dbg !661
  store ptr %9, ptr %23, align 8
  call void @llvm.dbg.declare(metadata ptr %23, metadata !662, metadata !DIExpression()), !dbg !663
  store ptr %10, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %24, metadata !664, metadata !DIExpression()), !dbg !665
  store ptr %11, ptr %25, align 8
  call void @llvm.dbg.declare(metadata ptr %25, metadata !666, metadata !DIExpression()), !dbg !667
  store ptr %12, ptr %26, align 8
  call void @llvm.dbg.declare(metadata ptr %26, metadata !668, metadata !DIExpression()), !dbg !669
  %27 = load ptr, ptr %14, align 8, !dbg !670
  %28 = getelementptr inbounds i64, ptr %27, i64 0, !dbg !670
  %29 = load i64, ptr %28, align 8, !dbg !670
  %30 = load ptr, ptr %15, align 8, !dbg !671
  %31 = load i64, ptr %30, align 8, !dbg !672
  %32 = add i64 %31, %29, !dbg !672
  store i64 %32, ptr %30, align 8, !dbg !672
  %33 = load ptr, ptr %25, align 8, !dbg !673
  %34 = load i64, ptr %33, align 8, !dbg !673
  %35 = load ptr, ptr %17, align 8, !dbg !674
  %36 = load i64, ptr %35, align 8, !dbg !675
  %37 = xor i64 %36, %34, !dbg !675
  store i64 %37, ptr %35, align 8, !dbg !675
  %38 = load ptr, ptr %15, align 8, !dbg !676
  %39 = load i64, ptr %38, align 8, !dbg !676
  %40 = load ptr, ptr %26, align 8, !dbg !677
  %41 = load i64, ptr %40, align 8, !dbg !678
  %42 = xor i64 %41, %39, !dbg !678
  store i64 %42, ptr %40, align 8, !dbg !678
  %43 = load ptr, ptr %15, align 8, !dbg !679
  %44 = load i64, ptr %43, align 8, !dbg !679
  %45 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %44, i32 noundef 11), !dbg !680
  %46 = load ptr, ptr %15, align 8, !dbg !681
  store i64 %45, ptr %46, align 8, !dbg !682
  %47 = load ptr, ptr %16, align 8, !dbg !683
  %48 = load i64, ptr %47, align 8, !dbg !683
  %49 = load ptr, ptr %26, align 8, !dbg !684
  %50 = load i64, ptr %49, align 8, !dbg !685
  %51 = add i64 %50, %48, !dbg !685
  store i64 %51, ptr %49, align 8, !dbg !685
  %52 = load ptr, ptr %14, align 8, !dbg !686
  %53 = getelementptr inbounds i64, ptr %52, i64 1, !dbg !686
  %54 = load i64, ptr %53, align 8, !dbg !686
  %55 = load ptr, ptr %16, align 8, !dbg !687
  %56 = load i64, ptr %55, align 8, !dbg !688
  %57 = add i64 %56, %54, !dbg !688
  store i64 %57, ptr %55, align 8, !dbg !688
  %58 = load ptr, ptr %26, align 8, !dbg !689
  %59 = load i64, ptr %58, align 8, !dbg !689
  %60 = load ptr, ptr %18, align 8, !dbg !690
  %61 = load i64, ptr %60, align 8, !dbg !691
  %62 = xor i64 %61, %59, !dbg !691
  store i64 %62, ptr %60, align 8, !dbg !691
  %63 = load ptr, ptr %16, align 8, !dbg !692
  %64 = load i64, ptr %63, align 8, !dbg !692
  %65 = load ptr, ptr %15, align 8, !dbg !693
  %66 = load i64, ptr %65, align 8, !dbg !694
  %67 = xor i64 %66, %64, !dbg !694
  store i64 %67, ptr %65, align 8, !dbg !694
  %68 = load ptr, ptr %16, align 8, !dbg !695
  %69 = load i64, ptr %68, align 8, !dbg !695
  %70 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %69, i32 noundef 32), !dbg !696
  %71 = load ptr, ptr %16, align 8, !dbg !697
  store i64 %70, ptr %71, align 8, !dbg !698
  %72 = load ptr, ptr %17, align 8, !dbg !699
  %73 = load i64, ptr %72, align 8, !dbg !699
  %74 = load ptr, ptr %15, align 8, !dbg !700
  %75 = load i64, ptr %74, align 8, !dbg !701
  %76 = add i64 %75, %73, !dbg !701
  store i64 %76, ptr %74, align 8, !dbg !701
  %77 = load ptr, ptr %14, align 8, !dbg !702
  %78 = getelementptr inbounds i64, ptr %77, i64 2, !dbg !702
  %79 = load i64, ptr %78, align 8, !dbg !702
  %80 = load ptr, ptr %17, align 8, !dbg !703
  %81 = load i64, ptr %80, align 8, !dbg !704
  %82 = add i64 %81, %79, !dbg !704
  store i64 %82, ptr %80, align 8, !dbg !704
  %83 = load ptr, ptr %15, align 8, !dbg !705
  %84 = load i64, ptr %83, align 8, !dbg !705
  %85 = load ptr, ptr %19, align 8, !dbg !706
  %86 = load i64, ptr %85, align 8, !dbg !707
  %87 = xor i64 %86, %84, !dbg !707
  store i64 %87, ptr %85, align 8, !dbg !707
  %88 = load ptr, ptr %17, align 8, !dbg !708
  %89 = load i64, ptr %88, align 8, !dbg !708
  %90 = load ptr, ptr %16, align 8, !dbg !709
  %91 = load i64, ptr %90, align 8, !dbg !710
  %92 = xor i64 %91, %89, !dbg !710
  store i64 %92, ptr %90, align 8, !dbg !710
  %93 = load ptr, ptr %17, align 8, !dbg !711
  %94 = load i64, ptr %93, align 8, !dbg !711
  %95 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %94, i32 noundef 43), !dbg !712
  %96 = load ptr, ptr %17, align 8, !dbg !713
  store i64 %95, ptr %96, align 8, !dbg !714
  %97 = load ptr, ptr %18, align 8, !dbg !715
  %98 = load i64, ptr %97, align 8, !dbg !715
  %99 = load ptr, ptr %16, align 8, !dbg !716
  %100 = load i64, ptr %99, align 8, !dbg !717
  %101 = add i64 %100, %98, !dbg !717
  store i64 %101, ptr %99, align 8, !dbg !717
  %102 = load ptr, ptr %14, align 8, !dbg !718
  %103 = getelementptr inbounds i64, ptr %102, i64 3, !dbg !718
  %104 = load i64, ptr %103, align 8, !dbg !718
  %105 = load ptr, ptr %18, align 8, !dbg !719
  %106 = load i64, ptr %105, align 8, !dbg !720
  %107 = add i64 %106, %104, !dbg !720
  store i64 %107, ptr %105, align 8, !dbg !720
  %108 = load ptr, ptr %16, align 8, !dbg !721
  %109 = load i64, ptr %108, align 8, !dbg !721
  %110 = load ptr, ptr %20, align 8, !dbg !722
  %111 = load i64, ptr %110, align 8, !dbg !723
  %112 = xor i64 %111, %109, !dbg !723
  store i64 %112, ptr %110, align 8, !dbg !723
  %113 = load ptr, ptr %18, align 8, !dbg !724
  %114 = load i64, ptr %113, align 8, !dbg !724
  %115 = load ptr, ptr %17, align 8, !dbg !725
  %116 = load i64, ptr %115, align 8, !dbg !726
  %117 = xor i64 %116, %114, !dbg !726
  store i64 %117, ptr %115, align 8, !dbg !726
  %118 = load ptr, ptr %18, align 8, !dbg !727
  %119 = load i64, ptr %118, align 8, !dbg !727
  %120 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %119, i32 noundef 31), !dbg !728
  %121 = load ptr, ptr %18, align 8, !dbg !729
  store i64 %120, ptr %121, align 8, !dbg !730
  %122 = load ptr, ptr %19, align 8, !dbg !731
  %123 = load i64, ptr %122, align 8, !dbg !731
  %124 = load ptr, ptr %17, align 8, !dbg !732
  %125 = load i64, ptr %124, align 8, !dbg !733
  %126 = add i64 %125, %123, !dbg !733
  store i64 %126, ptr %124, align 8, !dbg !733
  %127 = load ptr, ptr %14, align 8, !dbg !734
  %128 = getelementptr inbounds i64, ptr %127, i64 4, !dbg !734
  %129 = load i64, ptr %128, align 8, !dbg !734
  %130 = load ptr, ptr %19, align 8, !dbg !735
  %131 = load i64, ptr %130, align 8, !dbg !736
  %132 = add i64 %131, %129, !dbg !736
  store i64 %132, ptr %130, align 8, !dbg !736
  %133 = load ptr, ptr %17, align 8, !dbg !737
  %134 = load i64, ptr %133, align 8, !dbg !737
  %135 = load ptr, ptr %21, align 8, !dbg !738
  %136 = load i64, ptr %135, align 8, !dbg !739
  %137 = xor i64 %136, %134, !dbg !739
  store i64 %137, ptr %135, align 8, !dbg !739
  %138 = load ptr, ptr %19, align 8, !dbg !740
  %139 = load i64, ptr %138, align 8, !dbg !740
  %140 = load ptr, ptr %18, align 8, !dbg !741
  %141 = load i64, ptr %140, align 8, !dbg !742
  %142 = xor i64 %141, %139, !dbg !742
  store i64 %142, ptr %140, align 8, !dbg !742
  %143 = load ptr, ptr %19, align 8, !dbg !743
  %144 = load i64, ptr %143, align 8, !dbg !743
  %145 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %144, i32 noundef 17), !dbg !744
  %146 = load ptr, ptr %19, align 8, !dbg !745
  store i64 %145, ptr %146, align 8, !dbg !746
  %147 = load ptr, ptr %20, align 8, !dbg !747
  %148 = load i64, ptr %147, align 8, !dbg !747
  %149 = load ptr, ptr %18, align 8, !dbg !748
  %150 = load i64, ptr %149, align 8, !dbg !749
  %151 = add i64 %150, %148, !dbg !749
  store i64 %151, ptr %149, align 8, !dbg !749
  %152 = load ptr, ptr %14, align 8, !dbg !750
  %153 = getelementptr inbounds i64, ptr %152, i64 5, !dbg !750
  %154 = load i64, ptr %153, align 8, !dbg !750
  %155 = load ptr, ptr %20, align 8, !dbg !751
  %156 = load i64, ptr %155, align 8, !dbg !752
  %157 = add i64 %156, %154, !dbg !752
  store i64 %157, ptr %155, align 8, !dbg !752
  %158 = load ptr, ptr %18, align 8, !dbg !753
  %159 = load i64, ptr %158, align 8, !dbg !753
  %160 = load ptr, ptr %22, align 8, !dbg !754
  %161 = load i64, ptr %160, align 8, !dbg !755
  %162 = xor i64 %161, %159, !dbg !755
  store i64 %162, ptr %160, align 8, !dbg !755
  %163 = load ptr, ptr %20, align 8, !dbg !756
  %164 = load i64, ptr %163, align 8, !dbg !756
  %165 = load ptr, ptr %19, align 8, !dbg !757
  %166 = load i64, ptr %165, align 8, !dbg !758
  %167 = xor i64 %166, %164, !dbg !758
  store i64 %167, ptr %165, align 8, !dbg !758
  %168 = load ptr, ptr %20, align 8, !dbg !759
  %169 = load i64, ptr %168, align 8, !dbg !759
  %170 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %169, i32 noundef 28), !dbg !760
  %171 = load ptr, ptr %20, align 8, !dbg !761
  store i64 %170, ptr %171, align 8, !dbg !762
  %172 = load ptr, ptr %21, align 8, !dbg !763
  %173 = load i64, ptr %172, align 8, !dbg !763
  %174 = load ptr, ptr %19, align 8, !dbg !764
  %175 = load i64, ptr %174, align 8, !dbg !765
  %176 = add i64 %175, %173, !dbg !765
  store i64 %176, ptr %174, align 8, !dbg !765
  %177 = load ptr, ptr %14, align 8, !dbg !766
  %178 = getelementptr inbounds i64, ptr %177, i64 6, !dbg !766
  %179 = load i64, ptr %178, align 8, !dbg !766
  %180 = load ptr, ptr %21, align 8, !dbg !767
  %181 = load i64, ptr %180, align 8, !dbg !768
  %182 = add i64 %181, %179, !dbg !768
  store i64 %182, ptr %180, align 8, !dbg !768
  %183 = load ptr, ptr %19, align 8, !dbg !769
  %184 = load i64, ptr %183, align 8, !dbg !769
  %185 = load ptr, ptr %23, align 8, !dbg !770
  %186 = load i64, ptr %185, align 8, !dbg !771
  %187 = xor i64 %186, %184, !dbg !771
  store i64 %187, ptr %185, align 8, !dbg !771
  %188 = load ptr, ptr %21, align 8, !dbg !772
  %189 = load i64, ptr %188, align 8, !dbg !772
  %190 = load ptr, ptr %20, align 8, !dbg !773
  %191 = load i64, ptr %190, align 8, !dbg !774
  %192 = xor i64 %191, %189, !dbg !774
  store i64 %192, ptr %190, align 8, !dbg !774
  %193 = load ptr, ptr %21, align 8, !dbg !775
  %194 = load i64, ptr %193, align 8, !dbg !775
  %195 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %194, i32 noundef 39), !dbg !776
  %196 = load ptr, ptr %21, align 8, !dbg !777
  store i64 %195, ptr %196, align 8, !dbg !778
  %197 = load ptr, ptr %22, align 8, !dbg !779
  %198 = load i64, ptr %197, align 8, !dbg !779
  %199 = load ptr, ptr %20, align 8, !dbg !780
  %200 = load i64, ptr %199, align 8, !dbg !781
  %201 = add i64 %200, %198, !dbg !781
  store i64 %201, ptr %199, align 8, !dbg !781
  %202 = load ptr, ptr %14, align 8, !dbg !782
  %203 = getelementptr inbounds i64, ptr %202, i64 7, !dbg !782
  %204 = load i64, ptr %203, align 8, !dbg !782
  %205 = load ptr, ptr %22, align 8, !dbg !783
  %206 = load i64, ptr %205, align 8, !dbg !784
  %207 = add i64 %206, %204, !dbg !784
  store i64 %207, ptr %205, align 8, !dbg !784
  %208 = load ptr, ptr %20, align 8, !dbg !785
  %209 = load i64, ptr %208, align 8, !dbg !785
  %210 = load ptr, ptr %24, align 8, !dbg !786
  %211 = load i64, ptr %210, align 8, !dbg !787
  %212 = xor i64 %211, %209, !dbg !787
  store i64 %212, ptr %210, align 8, !dbg !787
  %213 = load ptr, ptr %22, align 8, !dbg !788
  %214 = load i64, ptr %213, align 8, !dbg !788
  %215 = load ptr, ptr %21, align 8, !dbg !789
  %216 = load i64, ptr %215, align 8, !dbg !790
  %217 = xor i64 %216, %214, !dbg !790
  store i64 %217, ptr %215, align 8, !dbg !790
  %218 = load ptr, ptr %22, align 8, !dbg !791
  %219 = load i64, ptr %218, align 8, !dbg !791
  %220 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %219, i32 noundef 57), !dbg !792
  %221 = load ptr, ptr %22, align 8, !dbg !793
  store i64 %220, ptr %221, align 8, !dbg !794
  %222 = load ptr, ptr %23, align 8, !dbg !795
  %223 = load i64, ptr %222, align 8, !dbg !795
  %224 = load ptr, ptr %21, align 8, !dbg !796
  %225 = load i64, ptr %224, align 8, !dbg !797
  %226 = add i64 %225, %223, !dbg !797
  store i64 %226, ptr %224, align 8, !dbg !797
  %227 = load ptr, ptr %14, align 8, !dbg !798
  %228 = getelementptr inbounds i64, ptr %227, i64 8, !dbg !798
  %229 = load i64, ptr %228, align 8, !dbg !798
  %230 = load ptr, ptr %23, align 8, !dbg !799
  %231 = load i64, ptr %230, align 8, !dbg !800
  %232 = add i64 %231, %229, !dbg !800
  store i64 %232, ptr %230, align 8, !dbg !800
  %233 = load ptr, ptr %21, align 8, !dbg !801
  %234 = load i64, ptr %233, align 8, !dbg !801
  %235 = load ptr, ptr %25, align 8, !dbg !802
  %236 = load i64, ptr %235, align 8, !dbg !803
  %237 = xor i64 %236, %234, !dbg !803
  store i64 %237, ptr %235, align 8, !dbg !803
  %238 = load ptr, ptr %23, align 8, !dbg !804
  %239 = load i64, ptr %238, align 8, !dbg !804
  %240 = load ptr, ptr %22, align 8, !dbg !805
  %241 = load i64, ptr %240, align 8, !dbg !806
  %242 = xor i64 %241, %239, !dbg !806
  store i64 %242, ptr %240, align 8, !dbg !806
  %243 = load ptr, ptr %23, align 8, !dbg !807
  %244 = load i64, ptr %243, align 8, !dbg !807
  %245 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %244, i32 noundef 55), !dbg !808
  %246 = load ptr, ptr %23, align 8, !dbg !809
  store i64 %245, ptr %246, align 8, !dbg !810
  %247 = load ptr, ptr %24, align 8, !dbg !811
  %248 = load i64, ptr %247, align 8, !dbg !811
  %249 = load ptr, ptr %22, align 8, !dbg !812
  %250 = load i64, ptr %249, align 8, !dbg !813
  %251 = add i64 %250, %248, !dbg !813
  store i64 %251, ptr %249, align 8, !dbg !813
  %252 = load ptr, ptr %14, align 8, !dbg !814
  %253 = getelementptr inbounds i64, ptr %252, i64 9, !dbg !814
  %254 = load i64, ptr %253, align 8, !dbg !814
  %255 = load ptr, ptr %24, align 8, !dbg !815
  %256 = load i64, ptr %255, align 8, !dbg !816
  %257 = add i64 %256, %254, !dbg !816
  store i64 %257, ptr %255, align 8, !dbg !816
  %258 = load ptr, ptr %22, align 8, !dbg !817
  %259 = load i64, ptr %258, align 8, !dbg !817
  %260 = load ptr, ptr %26, align 8, !dbg !818
  %261 = load i64, ptr %260, align 8, !dbg !819
  %262 = xor i64 %261, %259, !dbg !819
  store i64 %262, ptr %260, align 8, !dbg !819
  %263 = load ptr, ptr %24, align 8, !dbg !820
  %264 = load i64, ptr %263, align 8, !dbg !820
  %265 = load ptr, ptr %23, align 8, !dbg !821
  %266 = load i64, ptr %265, align 8, !dbg !822
  %267 = xor i64 %266, %264, !dbg !822
  store i64 %267, ptr %265, align 8, !dbg !822
  %268 = load ptr, ptr %24, align 8, !dbg !823
  %269 = load i64, ptr %268, align 8, !dbg !823
  %270 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %269, i32 noundef 54), !dbg !824
  %271 = load ptr, ptr %24, align 8, !dbg !825
  store i64 %270, ptr %271, align 8, !dbg !826
  %272 = load ptr, ptr %25, align 8, !dbg !827
  %273 = load i64, ptr %272, align 8, !dbg !827
  %274 = load ptr, ptr %23, align 8, !dbg !828
  %275 = load i64, ptr %274, align 8, !dbg !829
  %276 = add i64 %275, %273, !dbg !829
  store i64 %276, ptr %274, align 8, !dbg !829
  %277 = load ptr, ptr %14, align 8, !dbg !830
  %278 = getelementptr inbounds i64, ptr %277, i64 10, !dbg !830
  %279 = load i64, ptr %278, align 8, !dbg !830
  %280 = load ptr, ptr %25, align 8, !dbg !831
  %281 = load i64, ptr %280, align 8, !dbg !832
  %282 = add i64 %281, %279, !dbg !832
  store i64 %282, ptr %280, align 8, !dbg !832
  %283 = load ptr, ptr %23, align 8, !dbg !833
  %284 = load i64, ptr %283, align 8, !dbg !833
  %285 = load ptr, ptr %15, align 8, !dbg !834
  %286 = load i64, ptr %285, align 8, !dbg !835
  %287 = xor i64 %286, %284, !dbg !835
  store i64 %287, ptr %285, align 8, !dbg !835
  %288 = load ptr, ptr %25, align 8, !dbg !836
  %289 = load i64, ptr %288, align 8, !dbg !836
  %290 = load ptr, ptr %24, align 8, !dbg !837
  %291 = load i64, ptr %290, align 8, !dbg !838
  %292 = xor i64 %291, %289, !dbg !838
  store i64 %292, ptr %290, align 8, !dbg !838
  %293 = load ptr, ptr %25, align 8, !dbg !839
  %294 = load i64, ptr %293, align 8, !dbg !839
  %295 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %294, i32 noundef 22), !dbg !840
  %296 = load ptr, ptr %25, align 8, !dbg !841
  store i64 %295, ptr %296, align 8, !dbg !842
  %297 = load ptr, ptr %26, align 8, !dbg !843
  %298 = load i64, ptr %297, align 8, !dbg !843
  %299 = load ptr, ptr %24, align 8, !dbg !844
  %300 = load i64, ptr %299, align 8, !dbg !845
  %301 = add i64 %300, %298, !dbg !845
  store i64 %301, ptr %299, align 8, !dbg !845
  %302 = load ptr, ptr %14, align 8, !dbg !846
  %303 = getelementptr inbounds i64, ptr %302, i64 11, !dbg !846
  %304 = load i64, ptr %303, align 8, !dbg !846
  %305 = load ptr, ptr %26, align 8, !dbg !847
  %306 = load i64, ptr %305, align 8, !dbg !848
  %307 = add i64 %306, %304, !dbg !848
  store i64 %307, ptr %305, align 8, !dbg !848
  %308 = load ptr, ptr %24, align 8, !dbg !849
  %309 = load i64, ptr %308, align 8, !dbg !849
  %310 = load ptr, ptr %16, align 8, !dbg !850
  %311 = load i64, ptr %310, align 8, !dbg !851
  %312 = xor i64 %311, %309, !dbg !851
  store i64 %312, ptr %310, align 8, !dbg !851
  %313 = load ptr, ptr %26, align 8, !dbg !852
  %314 = load i64, ptr %313, align 8, !dbg !852
  %315 = load ptr, ptr %25, align 8, !dbg !853
  %316 = load i64, ptr %315, align 8, !dbg !854
  %317 = xor i64 %316, %314, !dbg !854
  store i64 %317, ptr %315, align 8, !dbg !854
  %318 = load ptr, ptr %26, align 8, !dbg !855
  %319 = load i64, ptr %318, align 8, !dbg !855
  %320 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %319, i32 noundef 46), !dbg !856
  %321 = load ptr, ptr %26, align 8, !dbg !857
  store i64 %320, ptr %321, align 8, !dbg !858
  %322 = load ptr, ptr %15, align 8, !dbg !859
  %323 = load i64, ptr %322, align 8, !dbg !859
  %324 = load ptr, ptr %25, align 8, !dbg !860
  %325 = load i64, ptr %324, align 8, !dbg !861
  %326 = add i64 %325, %323, !dbg !861
  store i64 %326, ptr %324, align 8, !dbg !861
  ret void, !dbg !862
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN10SpookyHash3EndEPKmRmS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12) #0 comdat align 2 !dbg !863 {
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  store ptr %0, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !864, metadata !DIExpression()), !dbg !865
  store ptr %1, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !866, metadata !DIExpression()), !dbg !867
  store ptr %2, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !868, metadata !DIExpression()), !dbg !869
  store ptr %3, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !870, metadata !DIExpression()), !dbg !871
  store ptr %4, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !872, metadata !DIExpression()), !dbg !873
  store ptr %5, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !874, metadata !DIExpression()), !dbg !875
  store ptr %6, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !876, metadata !DIExpression()), !dbg !877
  store ptr %7, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !878, metadata !DIExpression()), !dbg !879
  store ptr %8, ptr %22, align 8
  call void @llvm.dbg.declare(metadata ptr %22, metadata !880, metadata !DIExpression()), !dbg !881
  store ptr %9, ptr %23, align 8
  call void @llvm.dbg.declare(metadata ptr %23, metadata !882, metadata !DIExpression()), !dbg !883
  store ptr %10, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %24, metadata !884, metadata !DIExpression()), !dbg !885
  store ptr %11, ptr %25, align 8
  call void @llvm.dbg.declare(metadata ptr %25, metadata !886, metadata !DIExpression()), !dbg !887
  store ptr %12, ptr %26, align 8
  call void @llvm.dbg.declare(metadata ptr %26, metadata !888, metadata !DIExpression()), !dbg !889
  %27 = load ptr, ptr %14, align 8, !dbg !890
  %28 = getelementptr inbounds i64, ptr %27, i64 0, !dbg !890
  %29 = load i64, ptr %28, align 8, !dbg !890
  %30 = load ptr, ptr %15, align 8, !dbg !891
  %31 = load i64, ptr %30, align 8, !dbg !892
  %32 = add i64 %31, %29, !dbg !892
  store i64 %32, ptr %30, align 8, !dbg !892
  %33 = load ptr, ptr %14, align 8, !dbg !893
  %34 = getelementptr inbounds i64, ptr %33, i64 1, !dbg !893
  %35 = load i64, ptr %34, align 8, !dbg !893
  %36 = load ptr, ptr %16, align 8, !dbg !894
  %37 = load i64, ptr %36, align 8, !dbg !895
  %38 = add i64 %37, %35, !dbg !895
  store i64 %38, ptr %36, align 8, !dbg !895
  %39 = load ptr, ptr %14, align 8, !dbg !896
  %40 = getelementptr inbounds i64, ptr %39, i64 2, !dbg !896
  %41 = load i64, ptr %40, align 8, !dbg !896
  %42 = load ptr, ptr %17, align 8, !dbg !897
  %43 = load i64, ptr %42, align 8, !dbg !898
  %44 = add i64 %43, %41, !dbg !898
  store i64 %44, ptr %42, align 8, !dbg !898
  %45 = load ptr, ptr %14, align 8, !dbg !899
  %46 = getelementptr inbounds i64, ptr %45, i64 3, !dbg !899
  %47 = load i64, ptr %46, align 8, !dbg !899
  %48 = load ptr, ptr %18, align 8, !dbg !900
  %49 = load i64, ptr %48, align 8, !dbg !901
  %50 = add i64 %49, %47, !dbg !901
  store i64 %50, ptr %48, align 8, !dbg !901
  %51 = load ptr, ptr %14, align 8, !dbg !902
  %52 = getelementptr inbounds i64, ptr %51, i64 4, !dbg !902
  %53 = load i64, ptr %52, align 8, !dbg !902
  %54 = load ptr, ptr %19, align 8, !dbg !903
  %55 = load i64, ptr %54, align 8, !dbg !904
  %56 = add i64 %55, %53, !dbg !904
  store i64 %56, ptr %54, align 8, !dbg !904
  %57 = load ptr, ptr %14, align 8, !dbg !905
  %58 = getelementptr inbounds i64, ptr %57, i64 5, !dbg !905
  %59 = load i64, ptr %58, align 8, !dbg !905
  %60 = load ptr, ptr %20, align 8, !dbg !906
  %61 = load i64, ptr %60, align 8, !dbg !907
  %62 = add i64 %61, %59, !dbg !907
  store i64 %62, ptr %60, align 8, !dbg !907
  %63 = load ptr, ptr %14, align 8, !dbg !908
  %64 = getelementptr inbounds i64, ptr %63, i64 6, !dbg !908
  %65 = load i64, ptr %64, align 8, !dbg !908
  %66 = load ptr, ptr %21, align 8, !dbg !909
  %67 = load i64, ptr %66, align 8, !dbg !910
  %68 = add i64 %67, %65, !dbg !910
  store i64 %68, ptr %66, align 8, !dbg !910
  %69 = load ptr, ptr %14, align 8, !dbg !911
  %70 = getelementptr inbounds i64, ptr %69, i64 7, !dbg !911
  %71 = load i64, ptr %70, align 8, !dbg !911
  %72 = load ptr, ptr %22, align 8, !dbg !912
  %73 = load i64, ptr %72, align 8, !dbg !913
  %74 = add i64 %73, %71, !dbg !913
  store i64 %74, ptr %72, align 8, !dbg !913
  %75 = load ptr, ptr %14, align 8, !dbg !914
  %76 = getelementptr inbounds i64, ptr %75, i64 8, !dbg !914
  %77 = load i64, ptr %76, align 8, !dbg !914
  %78 = load ptr, ptr %23, align 8, !dbg !915
  %79 = load i64, ptr %78, align 8, !dbg !916
  %80 = add i64 %79, %77, !dbg !916
  store i64 %80, ptr %78, align 8, !dbg !916
  %81 = load ptr, ptr %14, align 8, !dbg !917
  %82 = getelementptr inbounds i64, ptr %81, i64 9, !dbg !917
  %83 = load i64, ptr %82, align 8, !dbg !917
  %84 = load ptr, ptr %24, align 8, !dbg !918
  %85 = load i64, ptr %84, align 8, !dbg !919
  %86 = add i64 %85, %83, !dbg !919
  store i64 %86, ptr %84, align 8, !dbg !919
  %87 = load ptr, ptr %14, align 8, !dbg !920
  %88 = getelementptr inbounds i64, ptr %87, i64 10, !dbg !920
  %89 = load i64, ptr %88, align 8, !dbg !920
  %90 = load ptr, ptr %25, align 8, !dbg !921
  %91 = load i64, ptr %90, align 8, !dbg !922
  %92 = add i64 %91, %89, !dbg !922
  store i64 %92, ptr %90, align 8, !dbg !922
  %93 = load ptr, ptr %14, align 8, !dbg !923
  %94 = getelementptr inbounds i64, ptr %93, i64 11, !dbg !923
  %95 = load i64, ptr %94, align 8, !dbg !923
  %96 = load ptr, ptr %26, align 8, !dbg !924
  %97 = load i64, ptr %96, align 8, !dbg !925
  %98 = add i64 %97, %95, !dbg !925
  store i64 %98, ptr %96, align 8, !dbg !925
  %99 = load ptr, ptr %15, align 8, !dbg !926
  %100 = load ptr, ptr %16, align 8, !dbg !927
  %101 = load ptr, ptr %17, align 8, !dbg !928
  %102 = load ptr, ptr %18, align 8, !dbg !929
  %103 = load ptr, ptr %19, align 8, !dbg !930
  %104 = load ptr, ptr %20, align 8, !dbg !931
  %105 = load ptr, ptr %21, align 8, !dbg !932
  %106 = load ptr, ptr %22, align 8, !dbg !933
  %107 = load ptr, ptr %23, align 8, !dbg !934
  %108 = load ptr, ptr %24, align 8, !dbg !935
  %109 = load ptr, ptr %25, align 8, !dbg !936
  %110 = load ptr, ptr %26, align 8, !dbg !937
  call void @_ZN10SpookyHash10EndPartialERmS0_S0_S0_S0_S0_S0_S0_S0_S0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(8) %99, ptr noundef nonnull align 8 dereferenceable(8) %100, ptr noundef nonnull align 8 dereferenceable(8) %101, ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef nonnull align 8 dereferenceable(8) %103, ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull align 8 dereferenceable(8) %106, ptr noundef nonnull align 8 dereferenceable(8) %107, ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull align 8 dereferenceable(8) %109, ptr noundef nonnull align 8 dereferenceable(8) %110), !dbg !938
  %111 = load ptr, ptr %15, align 8, !dbg !939
  %112 = load ptr, ptr %16, align 8, !dbg !940
  %113 = load ptr, ptr %17, align 8, !dbg !941
  %114 = load ptr, ptr %18, align 8, !dbg !942
  %115 = load ptr, ptr %19, align 8, !dbg !943
  %116 = load ptr, ptr %20, align 8, !dbg !944
  %117 = load ptr, ptr %21, align 8, !dbg !945
  %118 = load ptr, ptr %22, align 8, !dbg !946
  %119 = load ptr, ptr %23, align 8, !dbg !947
  %120 = load ptr, ptr %24, align 8, !dbg !948
  %121 = load ptr, ptr %25, align 8, !dbg !949
  %122 = load ptr, ptr %26, align 8, !dbg !950
  call void @_ZN10SpookyHash10EndPartialERmS0_S0_S0_S0_S0_S0_S0_S0_S0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(8) %111, ptr noundef nonnull align 8 dereferenceable(8) %112, ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull align 8 dereferenceable(8) %114, ptr noundef nonnull align 8 dereferenceable(8) %115, ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %118, ptr noundef nonnull align 8 dereferenceable(8) %119, ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef nonnull align 8 dereferenceable(8) %121, ptr noundef nonnull align 8 dereferenceable(8) %122), !dbg !951
  %123 = load ptr, ptr %15, align 8, !dbg !952
  %124 = load ptr, ptr %16, align 8, !dbg !953
  %125 = load ptr, ptr %17, align 8, !dbg !954
  %126 = load ptr, ptr %18, align 8, !dbg !955
  %127 = load ptr, ptr %19, align 8, !dbg !956
  %128 = load ptr, ptr %20, align 8, !dbg !957
  %129 = load ptr, ptr %21, align 8, !dbg !958
  %130 = load ptr, ptr %22, align 8, !dbg !959
  %131 = load ptr, ptr %23, align 8, !dbg !960
  %132 = load ptr, ptr %24, align 8, !dbg !961
  %133 = load ptr, ptr %25, align 8, !dbg !962
  %134 = load ptr, ptr %26, align 8, !dbg !963
  call void @_ZN10SpookyHash10EndPartialERmS0_S0_S0_S0_S0_S0_S0_S0_S0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(8) %123, ptr noundef nonnull align 8 dereferenceable(8) %124, ptr noundef nonnull align 8 dereferenceable(8) %125, ptr noundef nonnull align 8 dereferenceable(8) %126, ptr noundef nonnull align 8 dereferenceable(8) %127, ptr noundef nonnull align 8 dereferenceable(8) %128, ptr noundef nonnull align 8 dereferenceable(8) %129, ptr noundef nonnull align 8 dereferenceable(8) %130, ptr noundef nonnull align 8 dereferenceable(8) %131, ptr noundef nonnull align 8 dereferenceable(8) %132, ptr noundef nonnull align 8 dereferenceable(8) %133, ptr noundef nonnull align 8 dereferenceable(8) %134), !dbg !964
  ret void, !dbg !965
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_ZN10SpookyHash4InitEmm(ptr noundef nonnull align 8 dereferenceable(297) %0, i64 noundef %1, i64 noundef %2) #2 align 2 !dbg !966 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !967, metadata !DIExpression()), !dbg !969
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !970, metadata !DIExpression()), !dbg !971
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !972, metadata !DIExpression()), !dbg !973
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %class.SpookyHash, ptr %7, i32 0, i32 2, !dbg !974
  store i64 0, ptr %8, align 8, !dbg !975
  %9 = getelementptr inbounds %class.SpookyHash, ptr %7, i32 0, i32 3, !dbg !976
  store i8 0, ptr %9, align 8, !dbg !977
  %10 = load i64, ptr %5, align 8, !dbg !978
  %11 = getelementptr inbounds %class.SpookyHash, ptr %7, i32 0, i32 1, !dbg !979
  %12 = getelementptr inbounds [12 x i64], ptr %11, i64 0, i64 0, !dbg !979
  store i64 %10, ptr %12, align 8, !dbg !980
  %13 = load i64, ptr %6, align 8, !dbg !981
  %14 = getelementptr inbounds %class.SpookyHash, ptr %7, i32 0, i32 1, !dbg !982
  %15 = getelementptr inbounds [12 x i64], ptr %14, i64 0, i64 1, !dbg !982
  store i64 %13, ptr %15, align 8, !dbg !983
  ret void, !dbg !984
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_ZN10SpookyHash6UpdateEPKvm(ptr noundef nonnull align 8 dereferenceable(297) %0, ptr noundef %1, i64 noundef %2) #0 align 2 !dbg !985 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8, align 1
  %21 = alloca %union.anon.1, align 8
  %22 = alloca ptr, align 8
  %23 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !986, metadata !DIExpression()), !dbg !987
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !988, metadata !DIExpression()), !dbg !989
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !990, metadata !DIExpression()), !dbg !991
  %24 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !992, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.declare(metadata ptr %8, metadata !994, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.declare(metadata ptr %9, metadata !996, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.declare(metadata ptr %10, metadata !998, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1000, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1002, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1004, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1006, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1008, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1010, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1012, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1014, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1016, metadata !DIExpression()), !dbg !1017
  %25 = load i64, ptr %6, align 8, !dbg !1018
  %26 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 3, !dbg !1019
  %27 = load i8, ptr %26, align 8, !dbg !1019
  %28 = zext i8 %27 to i64, !dbg !1019
  %29 = add i64 %25, %28, !dbg !1020
  store i64 %29, ptr %19, align 8, !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1021, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1023, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1030, metadata !DIExpression()), !dbg !1031
  %30 = load i64, ptr %19, align 8, !dbg !1032
  %31 = icmp ult i64 %30, 192, !dbg !1034
  br i1 %31, label %32, label %49, !dbg !1035

32:                                               ; preds = %3
  %33 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 0, !dbg !1036
  %34 = getelementptr inbounds [24 x i64], ptr %33, i64 0, i64 0, !dbg !1038
  %35 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 3, !dbg !1039
  %36 = load i8, ptr %35, align 8, !dbg !1039
  %37 = zext i8 %36 to i64, !dbg !1038
  %38 = getelementptr inbounds i8, ptr %34, i64 %37, !dbg !1038
  %39 = load ptr, ptr %5, align 8, !dbg !1040
  %40 = load i64, ptr %6, align 8, !dbg !1041
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr align 1 %39, i64 %40, i1 false), !dbg !1042
  %41 = load i64, ptr %6, align 8, !dbg !1043
  %42 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 2, !dbg !1044
  %43 = load i64, ptr %42, align 8, !dbg !1044
  %44 = add i64 %41, %43, !dbg !1045
  %45 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 2, !dbg !1046
  store i64 %44, ptr %45, align 8, !dbg !1047
  %46 = load i64, ptr %19, align 8, !dbg !1048
  %47 = trunc i64 %46 to i8, !dbg !1048
  %48 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 3, !dbg !1049
  store i8 %47, ptr %48, align 8, !dbg !1050
  br label %203, !dbg !1051

49:                                               ; preds = %3
  %50 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 2, !dbg !1052
  %51 = load i64, ptr %50, align 8, !dbg !1052
  %52 = icmp ult i64 %51, 192, !dbg !1054
  br i1 %52, label %53, label %60, !dbg !1055

53:                                               ; preds = %49
  %54 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1056
  %55 = getelementptr inbounds [12 x i64], ptr %54, i64 0, i64 0, !dbg !1056
  %56 = load i64, ptr %55, align 8, !dbg !1056
  store i64 %56, ptr %16, align 8, !dbg !1058
  store i64 %56, ptr %13, align 8, !dbg !1059
  store i64 %56, ptr %10, align 8, !dbg !1060
  store i64 %56, ptr %7, align 8, !dbg !1061
  %57 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1062
  %58 = getelementptr inbounds [12 x i64], ptr %57, i64 0, i64 1, !dbg !1062
  %59 = load i64, ptr %58, align 8, !dbg !1062
  store i64 %59, ptr %17, align 8, !dbg !1063
  store i64 %59, ptr %14, align 8, !dbg !1064
  store i64 %59, ptr %11, align 8, !dbg !1065
  store i64 %59, ptr %8, align 8, !dbg !1066
  store i64 -2401053088876216593, ptr %18, align 8, !dbg !1067
  store i64 -2401053088876216593, ptr %15, align 8, !dbg !1068
  store i64 -2401053088876216593, ptr %12, align 8, !dbg !1069
  store i64 -2401053088876216593, ptr %9, align 8, !dbg !1070
  br label %97, !dbg !1071

60:                                               ; preds = %49
  %61 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1072
  %62 = getelementptr inbounds [12 x i64], ptr %61, i64 0, i64 0, !dbg !1072
  %63 = load i64, ptr %62, align 8, !dbg !1072
  store i64 %63, ptr %7, align 8, !dbg !1074
  %64 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1075
  %65 = getelementptr inbounds [12 x i64], ptr %64, i64 0, i64 1, !dbg !1075
  %66 = load i64, ptr %65, align 8, !dbg !1075
  store i64 %66, ptr %8, align 8, !dbg !1076
  %67 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1077
  %68 = getelementptr inbounds [12 x i64], ptr %67, i64 0, i64 2, !dbg !1077
  %69 = load i64, ptr %68, align 8, !dbg !1077
  store i64 %69, ptr %9, align 8, !dbg !1078
  %70 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1079
  %71 = getelementptr inbounds [12 x i64], ptr %70, i64 0, i64 3, !dbg !1079
  %72 = load i64, ptr %71, align 8, !dbg !1079
  store i64 %72, ptr %10, align 8, !dbg !1080
  %73 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1081
  %74 = getelementptr inbounds [12 x i64], ptr %73, i64 0, i64 4, !dbg !1081
  %75 = load i64, ptr %74, align 8, !dbg !1081
  store i64 %75, ptr %11, align 8, !dbg !1082
  %76 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1083
  %77 = getelementptr inbounds [12 x i64], ptr %76, i64 0, i64 5, !dbg !1083
  %78 = load i64, ptr %77, align 8, !dbg !1083
  store i64 %78, ptr %12, align 8, !dbg !1084
  %79 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1085
  %80 = getelementptr inbounds [12 x i64], ptr %79, i64 0, i64 6, !dbg !1085
  %81 = load i64, ptr %80, align 8, !dbg !1085
  store i64 %81, ptr %13, align 8, !dbg !1086
  %82 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1087
  %83 = getelementptr inbounds [12 x i64], ptr %82, i64 0, i64 7, !dbg !1087
  %84 = load i64, ptr %83, align 8, !dbg !1087
  store i64 %84, ptr %14, align 8, !dbg !1088
  %85 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1089
  %86 = getelementptr inbounds [12 x i64], ptr %85, i64 0, i64 8, !dbg !1089
  %87 = load i64, ptr %86, align 8, !dbg !1089
  store i64 %87, ptr %15, align 8, !dbg !1090
  %88 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1091
  %89 = getelementptr inbounds [12 x i64], ptr %88, i64 0, i64 9, !dbg !1091
  %90 = load i64, ptr %89, align 8, !dbg !1091
  store i64 %90, ptr %16, align 8, !dbg !1092
  %91 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1093
  %92 = getelementptr inbounds [12 x i64], ptr %91, i64 0, i64 10, !dbg !1093
  %93 = load i64, ptr %92, align 8, !dbg !1093
  store i64 %93, ptr %17, align 8, !dbg !1094
  %94 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1095
  %95 = getelementptr inbounds [12 x i64], ptr %94, i64 0, i64 11, !dbg !1095
  %96 = load i64, ptr %95, align 8, !dbg !1095
  store i64 %96, ptr %18, align 8, !dbg !1096
  br label %97

97:                                               ; preds = %60, %53
  %98 = load i64, ptr %6, align 8, !dbg !1097
  %99 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 2, !dbg !1098
  %100 = load i64, ptr %99, align 8, !dbg !1098
  %101 = add i64 %98, %100, !dbg !1099
  %102 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 2, !dbg !1100
  store i64 %101, ptr %102, align 8, !dbg !1101
  %103 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 3, !dbg !1102
  %104 = load i8, ptr %103, align 8, !dbg !1102
  %105 = icmp ne i8 %104, 0, !dbg !1102
  br i1 %105, label %106, label %135, !dbg !1104

106:                                              ; preds = %97
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1105, metadata !DIExpression()), !dbg !1107
  %107 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 3, !dbg !1108
  %108 = load i8, ptr %107, align 8, !dbg !1108
  %109 = zext i8 %108 to i64, !dbg !1108
  %110 = sub i64 192, %109, !dbg !1109
  %111 = trunc i64 %110 to i8, !dbg !1110
  store i8 %111, ptr %23, align 1, !dbg !1107
  %112 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 0, !dbg !1111
  %113 = getelementptr inbounds [24 x i64], ptr %112, i64 0, i64 0, !dbg !1112
  %114 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 3, !dbg !1113
  %115 = load i8, ptr %114, align 8, !dbg !1113
  %116 = zext i8 %115 to i64, !dbg !1112
  %117 = getelementptr inbounds i8, ptr %113, i64 %116, !dbg !1112
  %118 = load ptr, ptr %5, align 8, !dbg !1114
  %119 = load i8, ptr %23, align 1, !dbg !1115
  %120 = zext i8 %119 to i64, !dbg !1115
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %117, ptr align 1 %118, i64 %120, i1 false), !dbg !1116
  %121 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 0, !dbg !1117
  %122 = getelementptr inbounds [24 x i64], ptr %121, i64 0, i64 0, !dbg !1117
  store ptr %122, ptr %21, align 8, !dbg !1118
  %123 = load ptr, ptr %21, align 8, !dbg !1119
  call void @_ZN10SpookyHash3MixEPKmRmS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %123, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %18), !dbg !1120
  %124 = load ptr, ptr %21, align 8, !dbg !1121
  %125 = getelementptr inbounds i64, ptr %124, i64 12, !dbg !1122
  call void @_ZN10SpookyHash3MixEPKmRmS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %125, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %18), !dbg !1123
  %126 = load ptr, ptr %5, align 8, !dbg !1124
  %127 = load i8, ptr %23, align 1, !dbg !1125
  %128 = zext i8 %127 to i32, !dbg !1125
  %129 = sext i32 %128 to i64, !dbg !1126
  %130 = getelementptr inbounds i8, ptr %126, i64 %129, !dbg !1126
  store ptr %130, ptr %21, align 8, !dbg !1127
  %131 = load i8, ptr %23, align 1, !dbg !1128
  %132 = zext i8 %131 to i64, !dbg !1128
  %133 = load i64, ptr %6, align 8, !dbg !1129
  %134 = sub i64 %133, %132, !dbg !1129
  store i64 %134, ptr %6, align 8, !dbg !1129
  br label %137, !dbg !1130

135:                                              ; preds = %97
  %136 = load ptr, ptr %5, align 8, !dbg !1131
  store ptr %136, ptr %21, align 8, !dbg !1133
  br label %137

137:                                              ; preds = %135, %106
  %138 = load ptr, ptr %21, align 8, !dbg !1134
  %139 = load i64, ptr %6, align 8, !dbg !1135
  %140 = udiv i64 %139, 96, !dbg !1136
  %141 = mul i64 %140, 12, !dbg !1137
  %142 = getelementptr inbounds i64, ptr %138, i64 %141, !dbg !1138
  store ptr %142, ptr %22, align 8, !dbg !1139
  %143 = load i64, ptr %6, align 8, !dbg !1140
  %144 = load ptr, ptr %22, align 8, !dbg !1141
  %145 = load ptr, ptr %21, align 8, !dbg !1142
  %146 = ptrtoint ptr %144 to i64, !dbg !1143
  %147 = ptrtoint ptr %145 to i64, !dbg !1143
  %148 = sub i64 %146, %147, !dbg !1143
  %149 = sub i64 %143, %148, !dbg !1144
  %150 = trunc i64 %149 to i8, !dbg !1140
  store i8 %150, ptr %20, align 1, !dbg !1145
  br label %151, !dbg !1146

151:                                              ; preds = %155, %137
  %152 = load ptr, ptr %21, align 8, !dbg !1149
  %153 = load ptr, ptr %22, align 8, !dbg !1150
  %154 = icmp ult ptr %152, %153, !dbg !1151
  br i1 %154, label %155, label %159, !dbg !1146

155:                                              ; preds = %151
  %156 = load ptr, ptr %21, align 8, !dbg !1152
  call void @_ZN10SpookyHash3MixEPKmRmS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %156, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %18), !dbg !1154
  %157 = load ptr, ptr %21, align 8, !dbg !1155
  %158 = getelementptr inbounds i64, ptr %157, i64 12, !dbg !1155
  store ptr %158, ptr %21, align 8, !dbg !1155
  br label %151, !dbg !1146, !llvm.loop !1156

159:                                              ; preds = %151
  %160 = load i8, ptr %20, align 1, !dbg !1158
  %161 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 3, !dbg !1159
  store i8 %160, ptr %161, align 8, !dbg !1160
  %162 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 0, !dbg !1161
  %163 = getelementptr inbounds [24 x i64], ptr %162, i64 0, i64 0, !dbg !1162
  %164 = load ptr, ptr %22, align 8, !dbg !1163
  %165 = load i8, ptr %20, align 1, !dbg !1164
  %166 = zext i8 %165 to i64, !dbg !1164
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %163, ptr align 8 %164, i64 %166, i1 false), !dbg !1162
  %167 = load i64, ptr %7, align 8, !dbg !1165
  %168 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1166
  %169 = getelementptr inbounds [12 x i64], ptr %168, i64 0, i64 0, !dbg !1166
  store i64 %167, ptr %169, align 8, !dbg !1167
  %170 = load i64, ptr %8, align 8, !dbg !1168
  %171 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1169
  %172 = getelementptr inbounds [12 x i64], ptr %171, i64 0, i64 1, !dbg !1169
  store i64 %170, ptr %172, align 8, !dbg !1170
  %173 = load i64, ptr %9, align 8, !dbg !1171
  %174 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1172
  %175 = getelementptr inbounds [12 x i64], ptr %174, i64 0, i64 2, !dbg !1172
  store i64 %173, ptr %175, align 8, !dbg !1173
  %176 = load i64, ptr %10, align 8, !dbg !1174
  %177 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1175
  %178 = getelementptr inbounds [12 x i64], ptr %177, i64 0, i64 3, !dbg !1175
  store i64 %176, ptr %178, align 8, !dbg !1176
  %179 = load i64, ptr %11, align 8, !dbg !1177
  %180 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1178
  %181 = getelementptr inbounds [12 x i64], ptr %180, i64 0, i64 4, !dbg !1178
  store i64 %179, ptr %181, align 8, !dbg !1179
  %182 = load i64, ptr %12, align 8, !dbg !1180
  %183 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1181
  %184 = getelementptr inbounds [12 x i64], ptr %183, i64 0, i64 5, !dbg !1181
  store i64 %182, ptr %184, align 8, !dbg !1182
  %185 = load i64, ptr %13, align 8, !dbg !1183
  %186 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1184
  %187 = getelementptr inbounds [12 x i64], ptr %186, i64 0, i64 6, !dbg !1184
  store i64 %185, ptr %187, align 8, !dbg !1185
  %188 = load i64, ptr %14, align 8, !dbg !1186
  %189 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1187
  %190 = getelementptr inbounds [12 x i64], ptr %189, i64 0, i64 7, !dbg !1187
  store i64 %188, ptr %190, align 8, !dbg !1188
  %191 = load i64, ptr %15, align 8, !dbg !1189
  %192 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1190
  %193 = getelementptr inbounds [12 x i64], ptr %192, i64 0, i64 8, !dbg !1190
  store i64 %191, ptr %193, align 8, !dbg !1191
  %194 = load i64, ptr %16, align 8, !dbg !1192
  %195 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1193
  %196 = getelementptr inbounds [12 x i64], ptr %195, i64 0, i64 9, !dbg !1193
  store i64 %194, ptr %196, align 8, !dbg !1194
  %197 = load i64, ptr %17, align 8, !dbg !1195
  %198 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1196
  %199 = getelementptr inbounds [12 x i64], ptr %198, i64 0, i64 10, !dbg !1196
  store i64 %197, ptr %199, align 8, !dbg !1197
  %200 = load i64, ptr %18, align 8, !dbg !1198
  %201 = getelementptr inbounds %class.SpookyHash, ptr %24, i32 0, i32 1, !dbg !1199
  %202 = getelementptr inbounds [12 x i64], ptr %201, i64 0, i64 11, !dbg !1199
  store i64 %200, ptr %202, align 8, !dbg !1200
  br label %203, !dbg !1201

203:                                              ; preds = %159, %32
  ret void, !dbg !1201
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_ZN10SpookyHash5FinalEPmS0_(ptr noundef nonnull align 8 dereferenceable(297) %0, ptr noundef %1, ptr noundef %2) #0 align 2 !dbg !1202 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1203, metadata !DIExpression()), !dbg !1204
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1205, metadata !DIExpression()), !dbg !1206
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1207, metadata !DIExpression()), !dbg !1208
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 2, !dbg !1209
  %23 = load i64, ptr %22, align 8, !dbg !1209
  %24 = icmp ult i64 %23, 192, !dbg !1211
  br i1 %24, label %25, label %40, !dbg !1212

25:                                               ; preds = %3
  %26 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 1, !dbg !1213
  %27 = getelementptr inbounds [12 x i64], ptr %26, i64 0, i64 0, !dbg !1213
  %28 = load i64, ptr %27, align 8, !dbg !1213
  %29 = load ptr, ptr %5, align 8, !dbg !1215
  store i64 %28, ptr %29, align 8, !dbg !1216
  %30 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 1, !dbg !1217
  %31 = getelementptr inbounds [12 x i64], ptr %30, i64 0, i64 1, !dbg !1217
  %32 = load i64, ptr %31, align 8, !dbg !1217
  %33 = load ptr, ptr %6, align 8, !dbg !1218
  store i64 %32, ptr %33, align 8, !dbg !1219
  %34 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 0, !dbg !1220
  %35 = getelementptr inbounds [24 x i64], ptr %34, i64 0, i64 0, !dbg !1220
  %36 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 2, !dbg !1221
  %37 = load i64, ptr %36, align 8, !dbg !1221
  %38 = load ptr, ptr %5, align 8, !dbg !1222
  %39 = load ptr, ptr %6, align 8, !dbg !1223
  call void @_ZN10SpookyHash5ShortEPKvmPmS2_(ptr noundef %35, i64 noundef %37, ptr noundef %38, ptr noundef %39), !dbg !1224
  br label %108, !dbg !1225

40:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1226, metadata !DIExpression()), !dbg !1227
  %41 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 0, !dbg !1228
  %42 = getelementptr inbounds [24 x i64], ptr %41, i64 0, i64 0, !dbg !1228
  store ptr %42, ptr %7, align 8, !dbg !1227
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1229, metadata !DIExpression()), !dbg !1230
  %43 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 3, !dbg !1231
  %44 = load i8, ptr %43, align 8, !dbg !1231
  store i8 %44, ptr %8, align 1, !dbg !1230
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1232, metadata !DIExpression()), !dbg !1233
  %45 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 1, !dbg !1234
  %46 = getelementptr inbounds [12 x i64], ptr %45, i64 0, i64 0, !dbg !1234
  %47 = load i64, ptr %46, align 8, !dbg !1234
  store i64 %47, ptr %9, align 8, !dbg !1233
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1235, metadata !DIExpression()), !dbg !1236
  %48 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 1, !dbg !1237
  %49 = getelementptr inbounds [12 x i64], ptr %48, i64 0, i64 1, !dbg !1237
  %50 = load i64, ptr %49, align 8, !dbg !1237
  store i64 %50, ptr %10, align 8, !dbg !1236
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1238, metadata !DIExpression()), !dbg !1239
  %51 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 1, !dbg !1240
  %52 = getelementptr inbounds [12 x i64], ptr %51, i64 0, i64 2, !dbg !1240
  %53 = load i64, ptr %52, align 8, !dbg !1240
  store i64 %53, ptr %11, align 8, !dbg !1239
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1241, metadata !DIExpression()), !dbg !1242
  %54 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 1, !dbg !1243
  %55 = getelementptr inbounds [12 x i64], ptr %54, i64 0, i64 3, !dbg !1243
  %56 = load i64, ptr %55, align 8, !dbg !1243
  store i64 %56, ptr %12, align 8, !dbg !1242
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1244, metadata !DIExpression()), !dbg !1245
  %57 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 1, !dbg !1246
  %58 = getelementptr inbounds [12 x i64], ptr %57, i64 0, i64 4, !dbg !1246
  %59 = load i64, ptr %58, align 8, !dbg !1246
  store i64 %59, ptr %13, align 8, !dbg !1245
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1247, metadata !DIExpression()), !dbg !1248
  %60 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 1, !dbg !1249
  %61 = getelementptr inbounds [12 x i64], ptr %60, i64 0, i64 5, !dbg !1249
  %62 = load i64, ptr %61, align 8, !dbg !1249
  store i64 %62, ptr %14, align 8, !dbg !1248
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1250, metadata !DIExpression()), !dbg !1251
  %63 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 1, !dbg !1252
  %64 = getelementptr inbounds [12 x i64], ptr %63, i64 0, i64 6, !dbg !1252
  %65 = load i64, ptr %64, align 8, !dbg !1252
  store i64 %65, ptr %15, align 8, !dbg !1251
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1253, metadata !DIExpression()), !dbg !1254
  %66 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 1, !dbg !1255
  %67 = getelementptr inbounds [12 x i64], ptr %66, i64 0, i64 7, !dbg !1255
  %68 = load i64, ptr %67, align 8, !dbg !1255
  store i64 %68, ptr %16, align 8, !dbg !1254
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1256, metadata !DIExpression()), !dbg !1257
  %69 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 1, !dbg !1258
  %70 = getelementptr inbounds [12 x i64], ptr %69, i64 0, i64 8, !dbg !1258
  %71 = load i64, ptr %70, align 8, !dbg !1258
  store i64 %71, ptr %17, align 8, !dbg !1257
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1259, metadata !DIExpression()), !dbg !1260
  %72 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 1, !dbg !1261
  %73 = getelementptr inbounds [12 x i64], ptr %72, i64 0, i64 9, !dbg !1261
  %74 = load i64, ptr %73, align 8, !dbg !1261
  store i64 %74, ptr %18, align 8, !dbg !1260
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1262, metadata !DIExpression()), !dbg !1263
  %75 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 1, !dbg !1264
  %76 = getelementptr inbounds [12 x i64], ptr %75, i64 0, i64 10, !dbg !1264
  %77 = load i64, ptr %76, align 8, !dbg !1264
  store i64 %77, ptr %19, align 8, !dbg !1263
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1265, metadata !DIExpression()), !dbg !1266
  %78 = getelementptr inbounds %class.SpookyHash, ptr %21, i32 0, i32 1, !dbg !1267
  %79 = getelementptr inbounds [12 x i64], ptr %78, i64 0, i64 11, !dbg !1267
  %80 = load i64, ptr %79, align 8, !dbg !1267
  store i64 %80, ptr %20, align 8, !dbg !1266
  %81 = load i8, ptr %8, align 1, !dbg !1268
  %82 = zext i8 %81 to i64, !dbg !1268
  %83 = icmp uge i64 %82, 96, !dbg !1270
  br i1 %83, label %84, label %92, !dbg !1271

84:                                               ; preds = %40
  %85 = load ptr, ptr %7, align 8, !dbg !1272
  call void @_ZN10SpookyHash3MixEPKmRmS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %85, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %20), !dbg !1274
  %86 = load ptr, ptr %7, align 8, !dbg !1275
  %87 = getelementptr inbounds i64, ptr %86, i64 12, !dbg !1275
  store ptr %87, ptr %7, align 8, !dbg !1275
  %88 = load i8, ptr %8, align 1, !dbg !1276
  %89 = zext i8 %88 to i64, !dbg !1276
  %90 = sub i64 %89, 96, !dbg !1276
  %91 = trunc i64 %90 to i8, !dbg !1276
  store i8 %91, ptr %8, align 1, !dbg !1276
  br label %92, !dbg !1277

92:                                               ; preds = %84, %40
  %93 = load ptr, ptr %7, align 8, !dbg !1278
  %94 = load i8, ptr %8, align 1, !dbg !1279
  %95 = zext i8 %94 to i64, !dbg !1280
  %96 = getelementptr inbounds i8, ptr %93, i64 %95, !dbg !1280
  %97 = load i8, ptr %8, align 1, !dbg !1281
  %98 = zext i8 %97 to i64, !dbg !1281
  %99 = sub i64 96, %98, !dbg !1282
  call void @llvm.memset.p0.i64(ptr align 1 %96, i8 0, i64 %99, i1 false), !dbg !1283
  %100 = load i8, ptr %8, align 1, !dbg !1284
  %101 = load ptr, ptr %7, align 8, !dbg !1285
  %102 = getelementptr inbounds i8, ptr %101, i64 95, !dbg !1286
  store i8 %100, ptr %102, align 1, !dbg !1287
  %103 = load ptr, ptr %7, align 8, !dbg !1288
  call void @_ZN10SpookyHash3EndEPKmRmS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %103, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %20), !dbg !1289
  %104 = load i64, ptr %9, align 8, !dbg !1290
  %105 = load ptr, ptr %5, align 8, !dbg !1291
  store i64 %104, ptr %105, align 8, !dbg !1292
  %106 = load i64, ptr %10, align 8, !dbg !1293
  %107 = load ptr, ptr %6, align 8, !dbg !1294
  store i64 %106, ptr %107, align 8, !dbg !1295
  br label %108, !dbg !1296

108:                                              ; preds = %92, %25
  ret void, !dbg !1296
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %0, i32 noundef %1) #2 comdat align 2 !dbg !1297 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1298, metadata !DIExpression()), !dbg !1299
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1300, metadata !DIExpression()), !dbg !1301
  %5 = load i64, ptr %3, align 8, !dbg !1302
  %6 = load i32, ptr %4, align 4, !dbg !1303
  %7 = zext i32 %6 to i64, !dbg !1304
  %8 = shl i64 %5, %7, !dbg !1304
  %9 = load i64, ptr %3, align 8, !dbg !1305
  %10 = load i32, ptr %4, align 4, !dbg !1306
  %11 = sub nsw i32 64, %10, !dbg !1307
  %12 = zext i32 %11 to i64, !dbg !1308
  %13 = lshr i64 %9, %12, !dbg !1308
  %14 = or i64 %8, %13, !dbg !1309
  ret i64 %14, !dbg !1310
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN10SpookyHash10EndPartialERmS0_S0_S0_S0_S0_S0_S0_S0_S0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11) #2 comdat align 2 !dbg !1311 {
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  store ptr %0, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1312, metadata !DIExpression()), !dbg !1313
  store ptr %1, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1314, metadata !DIExpression()), !dbg !1315
  store ptr %2, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1316, metadata !DIExpression()), !dbg !1317
  store ptr %3, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1318, metadata !DIExpression()), !dbg !1319
  store ptr %4, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1320, metadata !DIExpression()), !dbg !1321
  store ptr %5, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1322, metadata !DIExpression()), !dbg !1323
  store ptr %6, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1324, metadata !DIExpression()), !dbg !1325
  store ptr %7, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1326, metadata !DIExpression()), !dbg !1327
  store ptr %8, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1328, metadata !DIExpression()), !dbg !1329
  store ptr %9, ptr %22, align 8
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1330, metadata !DIExpression()), !dbg !1331
  store ptr %10, ptr %23, align 8
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1332, metadata !DIExpression()), !dbg !1333
  store ptr %11, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1334, metadata !DIExpression()), !dbg !1335
  %25 = load ptr, ptr %14, align 8, !dbg !1336
  %26 = load i64, ptr %25, align 8, !dbg !1336
  %27 = load ptr, ptr %24, align 8, !dbg !1337
  %28 = load i64, ptr %27, align 8, !dbg !1338
  %29 = add i64 %28, %26, !dbg !1338
  store i64 %29, ptr %27, align 8, !dbg !1338
  %30 = load ptr, ptr %24, align 8, !dbg !1339
  %31 = load i64, ptr %30, align 8, !dbg !1339
  %32 = load ptr, ptr %15, align 8, !dbg !1340
  %33 = load i64, ptr %32, align 8, !dbg !1341
  %34 = xor i64 %33, %31, !dbg !1341
  store i64 %34, ptr %32, align 8, !dbg !1341
  %35 = load ptr, ptr %14, align 8, !dbg !1342
  %36 = load i64, ptr %35, align 8, !dbg !1342
  %37 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %36, i32 noundef 44), !dbg !1343
  %38 = load ptr, ptr %14, align 8, !dbg !1344
  store i64 %37, ptr %38, align 8, !dbg !1345
  %39 = load ptr, ptr %15, align 8, !dbg !1346
  %40 = load i64, ptr %39, align 8, !dbg !1346
  %41 = load ptr, ptr %13, align 8, !dbg !1347
  %42 = load i64, ptr %41, align 8, !dbg !1348
  %43 = add i64 %42, %40, !dbg !1348
  store i64 %43, ptr %41, align 8, !dbg !1348
  %44 = load ptr, ptr %13, align 8, !dbg !1349
  %45 = load i64, ptr %44, align 8, !dbg !1349
  %46 = load ptr, ptr %16, align 8, !dbg !1350
  %47 = load i64, ptr %46, align 8, !dbg !1351
  %48 = xor i64 %47, %45, !dbg !1351
  store i64 %48, ptr %46, align 8, !dbg !1351
  %49 = load ptr, ptr %15, align 8, !dbg !1352
  %50 = load i64, ptr %49, align 8, !dbg !1352
  %51 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %50, i32 noundef 15), !dbg !1353
  %52 = load ptr, ptr %15, align 8, !dbg !1354
  store i64 %51, ptr %52, align 8, !dbg !1355
  %53 = load ptr, ptr %16, align 8, !dbg !1356
  %54 = load i64, ptr %53, align 8, !dbg !1356
  %55 = load ptr, ptr %14, align 8, !dbg !1357
  %56 = load i64, ptr %55, align 8, !dbg !1358
  %57 = add i64 %56, %54, !dbg !1358
  store i64 %57, ptr %55, align 8, !dbg !1358
  %58 = load ptr, ptr %14, align 8, !dbg !1359
  %59 = load i64, ptr %58, align 8, !dbg !1359
  %60 = load ptr, ptr %17, align 8, !dbg !1360
  %61 = load i64, ptr %60, align 8, !dbg !1361
  %62 = xor i64 %61, %59, !dbg !1361
  store i64 %62, ptr %60, align 8, !dbg !1361
  %63 = load ptr, ptr %16, align 8, !dbg !1362
  %64 = load i64, ptr %63, align 8, !dbg !1362
  %65 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %64, i32 noundef 34), !dbg !1363
  %66 = load ptr, ptr %16, align 8, !dbg !1364
  store i64 %65, ptr %66, align 8, !dbg !1365
  %67 = load ptr, ptr %17, align 8, !dbg !1366
  %68 = load i64, ptr %67, align 8, !dbg !1366
  %69 = load ptr, ptr %15, align 8, !dbg !1367
  %70 = load i64, ptr %69, align 8, !dbg !1368
  %71 = add i64 %70, %68, !dbg !1368
  store i64 %71, ptr %69, align 8, !dbg !1368
  %72 = load ptr, ptr %15, align 8, !dbg !1369
  %73 = load i64, ptr %72, align 8, !dbg !1369
  %74 = load ptr, ptr %18, align 8, !dbg !1370
  %75 = load i64, ptr %74, align 8, !dbg !1371
  %76 = xor i64 %75, %73, !dbg !1371
  store i64 %76, ptr %74, align 8, !dbg !1371
  %77 = load ptr, ptr %17, align 8, !dbg !1372
  %78 = load i64, ptr %77, align 8, !dbg !1372
  %79 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %78, i32 noundef 21), !dbg !1373
  %80 = load ptr, ptr %17, align 8, !dbg !1374
  store i64 %79, ptr %80, align 8, !dbg !1375
  %81 = load ptr, ptr %18, align 8, !dbg !1376
  %82 = load i64, ptr %81, align 8, !dbg !1376
  %83 = load ptr, ptr %16, align 8, !dbg !1377
  %84 = load i64, ptr %83, align 8, !dbg !1378
  %85 = add i64 %84, %82, !dbg !1378
  store i64 %85, ptr %83, align 8, !dbg !1378
  %86 = load ptr, ptr %16, align 8, !dbg !1379
  %87 = load i64, ptr %86, align 8, !dbg !1379
  %88 = load ptr, ptr %19, align 8, !dbg !1380
  %89 = load i64, ptr %88, align 8, !dbg !1381
  %90 = xor i64 %89, %87, !dbg !1381
  store i64 %90, ptr %88, align 8, !dbg !1381
  %91 = load ptr, ptr %18, align 8, !dbg !1382
  %92 = load i64, ptr %91, align 8, !dbg !1382
  %93 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %92, i32 noundef 38), !dbg !1383
  %94 = load ptr, ptr %18, align 8, !dbg !1384
  store i64 %93, ptr %94, align 8, !dbg !1385
  %95 = load ptr, ptr %19, align 8, !dbg !1386
  %96 = load i64, ptr %95, align 8, !dbg !1386
  %97 = load ptr, ptr %17, align 8, !dbg !1387
  %98 = load i64, ptr %97, align 8, !dbg !1388
  %99 = add i64 %98, %96, !dbg !1388
  store i64 %99, ptr %97, align 8, !dbg !1388
  %100 = load ptr, ptr %17, align 8, !dbg !1389
  %101 = load i64, ptr %100, align 8, !dbg !1389
  %102 = load ptr, ptr %20, align 8, !dbg !1390
  %103 = load i64, ptr %102, align 8, !dbg !1391
  %104 = xor i64 %103, %101, !dbg !1391
  store i64 %104, ptr %102, align 8, !dbg !1391
  %105 = load ptr, ptr %19, align 8, !dbg !1392
  %106 = load i64, ptr %105, align 8, !dbg !1392
  %107 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %106, i32 noundef 33), !dbg !1393
  %108 = load ptr, ptr %19, align 8, !dbg !1394
  store i64 %107, ptr %108, align 8, !dbg !1395
  %109 = load ptr, ptr %20, align 8, !dbg !1396
  %110 = load i64, ptr %109, align 8, !dbg !1396
  %111 = load ptr, ptr %18, align 8, !dbg !1397
  %112 = load i64, ptr %111, align 8, !dbg !1398
  %113 = add i64 %112, %110, !dbg !1398
  store i64 %113, ptr %111, align 8, !dbg !1398
  %114 = load ptr, ptr %18, align 8, !dbg !1399
  %115 = load i64, ptr %114, align 8, !dbg !1399
  %116 = load ptr, ptr %21, align 8, !dbg !1400
  %117 = load i64, ptr %116, align 8, !dbg !1401
  %118 = xor i64 %117, %115, !dbg !1401
  store i64 %118, ptr %116, align 8, !dbg !1401
  %119 = load ptr, ptr %20, align 8, !dbg !1402
  %120 = load i64, ptr %119, align 8, !dbg !1402
  %121 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %120, i32 noundef 10), !dbg !1403
  %122 = load ptr, ptr %20, align 8, !dbg !1404
  store i64 %121, ptr %122, align 8, !dbg !1405
  %123 = load ptr, ptr %21, align 8, !dbg !1406
  %124 = load i64, ptr %123, align 8, !dbg !1406
  %125 = load ptr, ptr %19, align 8, !dbg !1407
  %126 = load i64, ptr %125, align 8, !dbg !1408
  %127 = add i64 %126, %124, !dbg !1408
  store i64 %127, ptr %125, align 8, !dbg !1408
  %128 = load ptr, ptr %19, align 8, !dbg !1409
  %129 = load i64, ptr %128, align 8, !dbg !1409
  %130 = load ptr, ptr %22, align 8, !dbg !1410
  %131 = load i64, ptr %130, align 8, !dbg !1411
  %132 = xor i64 %131, %129, !dbg !1411
  store i64 %132, ptr %130, align 8, !dbg !1411
  %133 = load ptr, ptr %21, align 8, !dbg !1412
  %134 = load i64, ptr %133, align 8, !dbg !1412
  %135 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %134, i32 noundef 13), !dbg !1413
  %136 = load ptr, ptr %21, align 8, !dbg !1414
  store i64 %135, ptr %136, align 8, !dbg !1415
  %137 = load ptr, ptr %22, align 8, !dbg !1416
  %138 = load i64, ptr %137, align 8, !dbg !1416
  %139 = load ptr, ptr %20, align 8, !dbg !1417
  %140 = load i64, ptr %139, align 8, !dbg !1418
  %141 = add i64 %140, %138, !dbg !1418
  store i64 %141, ptr %139, align 8, !dbg !1418
  %142 = load ptr, ptr %20, align 8, !dbg !1419
  %143 = load i64, ptr %142, align 8, !dbg !1419
  %144 = load ptr, ptr %23, align 8, !dbg !1420
  %145 = load i64, ptr %144, align 8, !dbg !1421
  %146 = xor i64 %145, %143, !dbg !1421
  store i64 %146, ptr %144, align 8, !dbg !1421
  %147 = load ptr, ptr %22, align 8, !dbg !1422
  %148 = load i64, ptr %147, align 8, !dbg !1422
  %149 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %148, i32 noundef 38), !dbg !1423
  %150 = load ptr, ptr %22, align 8, !dbg !1424
  store i64 %149, ptr %150, align 8, !dbg !1425
  %151 = load ptr, ptr %23, align 8, !dbg !1426
  %152 = load i64, ptr %151, align 8, !dbg !1426
  %153 = load ptr, ptr %21, align 8, !dbg !1427
  %154 = load i64, ptr %153, align 8, !dbg !1428
  %155 = add i64 %154, %152, !dbg !1428
  store i64 %155, ptr %153, align 8, !dbg !1428
  %156 = load ptr, ptr %21, align 8, !dbg !1429
  %157 = load i64, ptr %156, align 8, !dbg !1429
  %158 = load ptr, ptr %24, align 8, !dbg !1430
  %159 = load i64, ptr %158, align 8, !dbg !1431
  %160 = xor i64 %159, %157, !dbg !1431
  store i64 %160, ptr %158, align 8, !dbg !1431
  %161 = load ptr, ptr %23, align 8, !dbg !1432
  %162 = load i64, ptr %161, align 8, !dbg !1432
  %163 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %162, i32 noundef 53), !dbg !1433
  %164 = load ptr, ptr %23, align 8, !dbg !1434
  store i64 %163, ptr %164, align 8, !dbg !1435
  %165 = load ptr, ptr %24, align 8, !dbg !1436
  %166 = load i64, ptr %165, align 8, !dbg !1436
  %167 = load ptr, ptr %22, align 8, !dbg !1437
  %168 = load i64, ptr %167, align 8, !dbg !1438
  %169 = add i64 %168, %166, !dbg !1438
  store i64 %169, ptr %167, align 8, !dbg !1438
  %170 = load ptr, ptr %22, align 8, !dbg !1439
  %171 = load i64, ptr %170, align 8, !dbg !1439
  %172 = load ptr, ptr %13, align 8, !dbg !1440
  %173 = load i64, ptr %172, align 8, !dbg !1441
  %174 = xor i64 %173, %171, !dbg !1441
  store i64 %174, ptr %172, align 8, !dbg !1441
  %175 = load ptr, ptr %24, align 8, !dbg !1442
  %176 = load i64, ptr %175, align 8, !dbg !1442
  %177 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %176, i32 noundef 42), !dbg !1443
  %178 = load ptr, ptr %24, align 8, !dbg !1444
  store i64 %177, ptr %178, align 8, !dbg !1445
  %179 = load ptr, ptr %13, align 8, !dbg !1446
  %180 = load i64, ptr %179, align 8, !dbg !1446
  %181 = load ptr, ptr %23, align 8, !dbg !1447
  %182 = load i64, ptr %181, align 8, !dbg !1448
  %183 = add i64 %182, %180, !dbg !1448
  store i64 %183, ptr %181, align 8, !dbg !1448
  %184 = load ptr, ptr %23, align 8, !dbg !1449
  %185 = load i64, ptr %184, align 8, !dbg !1449
  %186 = load ptr, ptr %14, align 8, !dbg !1450
  %187 = load i64, ptr %186, align 8, !dbg !1451
  %188 = xor i64 %187, %185, !dbg !1451
  store i64 %188, ptr %186, align 8, !dbg !1451
  %189 = load ptr, ptr %13, align 8, !dbg !1452
  %190 = load i64, ptr %189, align 8, !dbg !1452
  %191 = call noundef i64 @_ZN10SpookyHash5Rot64Emi(i64 noundef %190, i32 noundef 54), !dbg !1453
  %192 = load ptr, ptr %13, align 8, !dbg !1454
  store i64 %191, ptr %192, align 8, !dbg !1455
  ret void, !dbg !1456
}

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "common/SpookyV2.cpp", directory: "/home/raj/sme2", checksumkind: CSK_MD5, checksum: "98ce22b6ece109959fb7f3e9d805ae83")
!2 = !{!3, !12, !16, !5, !17, !18}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !6, line: 45, baseType: !7)
!6 = !DIFile(filename: "./common/SpookyV2.h", directory: "/home/raj/sme2", checksumkind: CSK_MD5, checksum: "062c682bca8c21d444face88c95764fa")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 24, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 38, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !6, line: 42, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 27, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !10, line: 45, baseType: !15)
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "SpookyHash", file: !6, line: 49, size: 2432, flags: DIFlagTypePassByValue, elements: !19, identifier: "_ZTS10SpookyHash")
!19 = !{!20, !24, !25, !26, !28, !32, !36, !37, !38, !43, !46, !53, !57, !60, !63, !67, !72, !75, !76, !79, !80}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "sc_numVars", scope: !18, file: !6, line: 277, baseType: !21, flags: DIFlagStaticMember, extraData: i64 12)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 46, baseType: !15)
!23 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!24 = !DIDerivedType(tag: DW_TAG_member, name: "sc_blockSize", scope: !18, file: !6, line: 280, baseType: !21, flags: DIFlagStaticMember, extraData: i64 96)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "sc_bufSize", scope: !18, file: !6, line: 283, baseType: !21, flags: DIFlagStaticMember, extraData: i64 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "sc_const", scope: !18, file: !6, line: 292, baseType: !27, flags: DIFlagStaticMember, extraData: i64 -2401053088876216593)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "m_data", scope: !18, file: !6, line: 294, baseType: !29, size: 1536)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1536, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 24)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "m_state", scope: !18, file: !6, line: 295, baseType: !33, size: 768, offset: 1536)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 768, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 12)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "m_length", scope: !18, file: !6, line: 296, baseType: !22, size: 64, offset: 2304)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "m_remainder", scope: !18, file: !6, line: 297, baseType: !5, size: 8, offset: 2368)
!38 = !DISubprogram(name: "Hash128", linkageName: "_ZN10SpookyHash7Hash128EPKvmPmS2_", scope: !18, file: !6, line: 55, type: !39, scopeLine: 55, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !22, !17, !17}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!43 = !DISubprogram(name: "Hash64", linkageName: "_ZN10SpookyHash6Hash64EPKvmm", scope: !18, file: !6, line: 64, type: !44, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!44 = !DISubroutineType(types: !45)
!45 = !{!12, !41, !22, !12}
!46 = !DISubprogram(name: "Hash32", linkageName: "_ZN10SpookyHash6Hash32EPKvmj", scope: !18, file: !6, line: 77, type: !47, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !41, !22, !49}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !6, line: 43, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 26, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 42, baseType: !52)
!52 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!53 = !DISubprogram(name: "Init", linkageName: "_ZN10SpookyHash4InitEmm", scope: !18, file: !6, line: 90, type: !54, scopeLine: 90, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56, !12, !12}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!57 = !DISubprogram(name: "Update", linkageName: "_ZN10SpookyHash6UpdateEPKvm", scope: !18, file: !6, line: 97, type: !58, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !56, !41, !22}
!60 = !DISubprogram(name: "Final", linkageName: "_ZN10SpookyHash5FinalEPmS0_", scope: !18, file: !6, line: 110, type: !61, scopeLine: 110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !56, !17, !17}
!63 = !DISubprogram(name: "Rot64", linkageName: "_ZN10SpookyHash5Rot64Emi", scope: !18, file: !6, line: 117, type: !64, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!64 = !DISubroutineType(types: !65)
!65 = !{!12, !12, !66}
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !DISubprogram(name: "Mix", linkageName: "_ZN10SpookyHash3MixEPKmRmS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_", scope: !18, file: !6, line: 135, type: !68, scopeLine: 135, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70, !71, !71, !71, !71, !71, !71, !71, !71, !71, !71, !71, !71}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!72 = !DISubprogram(name: "EndPartial", linkageName: "_ZN10SpookyHash10EndPartialERmS0_S0_S0_S0_S0_S0_S0_S0_S0_S0_S0_", scope: !18, file: !6, line: 171, type: !73, scopeLine: 171, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !71, !71, !71, !71, !71, !71, !71, !71, !71, !71, !71, !71}
!75 = !DISubprogram(name: "End", linkageName: "_ZN10SpookyHash3EndEPKmRmS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_", scope: !18, file: !6, line: 190, type: !68, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!76 = !DISubprogram(name: "ShortMix", linkageName: "_ZN10SpookyHash8ShortMixERmS0_S0_S0_", scope: !18, file: !6, line: 219, type: !77, scopeLine: 219, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !71, !71, !71, !71}
!79 = !DISubprogram(name: "ShortEnd", linkageName: "_ZN10SpookyHash8ShortEndERmS0_S0_S0_", scope: !18, file: !6, line: 247, type: !77, scopeLine: 247, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!80 = !DISubprogram(name: "Short", linkageName: "_ZN10SpookyHash5ShortEPKvmPmS2_", scope: !18, file: !6, line: 270, type: !39, scopeLine: 270, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!81 = !{i32 7, !"Dwarf Version", i32 5}
!82 = !{i32 2, !"Debug Info Version", i32 3}
!83 = !{i32 1, !"wchar_size", i32 4}
!84 = !{i32 8, !"PIC Level", i32 2}
!85 = !{i32 7, !"PIE Level", i32 2}
!86 = !{i32 7, !"uwtable", i32 2}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 16.0.0"}
!89 = distinct !DISubprogram(name: "Short", linkageName: "_ZN10SpookyHash5ShortEPKvmPmS2_", scope: !18, file: !1, line: 30, type: !39, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !80, retainedNodes: !90)
!90 = !{}
!91 = !DILocalVariable(name: "message", arg: 1, scope: !89, file: !1, line: 31, type: !41)
!92 = !DILocation(line: 31, column: 17, scope: !89)
!93 = !DILocalVariable(name: "length", arg: 2, scope: !89, file: !1, line: 32, type: !22)
!94 = !DILocation(line: 32, column: 12, scope: !89)
!95 = !DILocalVariable(name: "hash1", arg: 3, scope: !89, file: !1, line: 33, type: !17)
!96 = !DILocation(line: 33, column: 13, scope: !89)
!97 = !DILocalVariable(name: "hash2", arg: 4, scope: !89, file: !1, line: 34, type: !17)
!98 = !DILocation(line: 34, column: 13, scope: !89)
!99 = !DILocalVariable(name: "buf", scope: !89, file: !1, line: 36, type: !29)
!100 = !DILocation(line: 36, column: 12, scope: !89)
!101 = !DILocalVariable(name: "u", scope: !89, file: !1, line: 43, type: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !1, line: 37, size: 64, flags: DIFlagTypePassByValue, elements: !103)
!103 = !{!104, !105, !107, !108}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "p8", scope: !102, file: !1, line: 39, baseType: !3, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "p32", scope: !102, file: !1, line: 40, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "p64", scope: !102, file: !1, line: 41, baseType: !17, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !102, file: !1, line: 42, baseType: !22, size: 64)
!109 = !DILocation(line: 43, column: 7, scope: !89)
!110 = !DILocation(line: 45, column: 39, scope: !89)
!111 = !DILocation(line: 45, column: 10, scope: !89)
!112 = !DILocalVariable(name: "remainder", scope: !89, file: !1, line: 53, type: !22)
!113 = !DILocation(line: 53, column: 12, scope: !89)
!114 = !DILocation(line: 53, column: 24, scope: !89)
!115 = !DILocation(line: 53, column: 30, scope: !89)
!116 = !DILocalVariable(name: "a", scope: !89, file: !1, line: 54, type: !12)
!117 = !DILocation(line: 54, column: 12, scope: !89)
!118 = !DILocation(line: 54, column: 15, scope: !89)
!119 = !DILocation(line: 54, column: 14, scope: !89)
!120 = !DILocalVariable(name: "b", scope: !89, file: !1, line: 55, type: !12)
!121 = !DILocation(line: 55, column: 12, scope: !89)
!122 = !DILocation(line: 55, column: 15, scope: !89)
!123 = !DILocation(line: 55, column: 14, scope: !89)
!124 = !DILocalVariable(name: "c", scope: !89, file: !1, line: 56, type: !12)
!125 = !DILocation(line: 56, column: 12, scope: !89)
!126 = !DILocalVariable(name: "d", scope: !89, file: !1, line: 57, type: !12)
!127 = !DILocation(line: 57, column: 12, scope: !89)
!128 = !DILocation(line: 59, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !89, file: !1, line: 59, column: 9)
!130 = !DILocation(line: 59, column: 16, scope: !129)
!131 = !DILocation(line: 59, column: 9, scope: !89)
!132 = !DILocalVariable(name: "end", scope: !133, file: !1, line: 61, type: !70)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 60, column: 5)
!134 = !DILocation(line: 61, column: 23, scope: !133)
!135 = !DILocation(line: 61, column: 31, scope: !133)
!136 = !DILocation(line: 61, column: 38, scope: !133)
!137 = !DILocation(line: 61, column: 44, scope: !133)
!138 = !DILocation(line: 61, column: 48, scope: !133)
!139 = !DILocation(line: 61, column: 35, scope: !133)
!140 = !DILocation(line: 64, column: 9, scope: !133)
!141 = !DILocation(line: 64, column: 18, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 64, column: 9)
!143 = distinct !DILexicalBlock(scope: !133, file: !1, line: 64, column: 9)
!144 = !DILocation(line: 64, column: 24, scope: !142)
!145 = !DILocation(line: 64, column: 22, scope: !142)
!146 = !DILocation(line: 64, column: 9, scope: !143)
!147 = !DILocation(line: 66, column: 20, scope: !148)
!148 = distinct !DILexicalBlock(scope: !142, file: !1, line: 65, column: 9)
!149 = !DILocation(line: 66, column: 18, scope: !148)
!150 = !DILocation(line: 66, column: 15, scope: !148)
!151 = !DILocation(line: 67, column: 20, scope: !148)
!152 = !DILocation(line: 67, column: 18, scope: !148)
!153 = !DILocation(line: 67, column: 15, scope: !148)
!154 = !DILocation(line: 68, column: 13, scope: !148)
!155 = !DILocation(line: 69, column: 20, scope: !148)
!156 = !DILocation(line: 69, column: 18, scope: !148)
!157 = !DILocation(line: 69, column: 15, scope: !148)
!158 = !DILocation(line: 70, column: 20, scope: !148)
!159 = !DILocation(line: 70, column: 18, scope: !148)
!160 = !DILocation(line: 70, column: 15, scope: !148)
!161 = !DILocation(line: 71, column: 9, scope: !148)
!162 = !DILocation(line: 64, column: 35, scope: !142)
!163 = !DILocation(line: 64, column: 9, scope: !142)
!164 = distinct !{!164, !146, !165, !166}
!165 = !DILocation(line: 71, column: 9, scope: !143)
!166 = !{!"llvm.loop.mustprogress"}
!167 = !DILocation(line: 74, column: 13, scope: !168)
!168 = distinct !DILexicalBlock(scope: !133, file: !1, line: 74, column: 13)
!169 = !DILocation(line: 74, column: 23, scope: !168)
!170 = !DILocation(line: 74, column: 13, scope: !133)
!171 = !DILocation(line: 76, column: 20, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !1, line: 75, column: 9)
!173 = !DILocation(line: 76, column: 18, scope: !172)
!174 = !DILocation(line: 76, column: 15, scope: !172)
!175 = !DILocation(line: 77, column: 20, scope: !172)
!176 = !DILocation(line: 77, column: 18, scope: !172)
!177 = !DILocation(line: 77, column: 15, scope: !172)
!178 = !DILocation(line: 78, column: 13, scope: !172)
!179 = !DILocation(line: 79, column: 19, scope: !172)
!180 = !DILocation(line: 80, column: 23, scope: !172)
!181 = !DILocation(line: 81, column: 9, scope: !172)
!182 = !DILocation(line: 82, column: 5, scope: !133)
!183 = !DILocation(line: 85, column: 19, scope: !89)
!184 = !DILocation(line: 85, column: 27, scope: !89)
!185 = !DILocation(line: 85, column: 7, scope: !89)
!186 = !DILocation(line: 86, column: 13, scope: !89)
!187 = !DILocation(line: 86, column: 5, scope: !89)
!188 = !DILocation(line: 89, column: 21, scope: !189)
!189 = distinct !DILexicalBlock(scope: !89, file: !1, line: 87, column: 5)
!190 = !DILocation(line: 89, column: 19, scope: !189)
!191 = !DILocation(line: 89, column: 29, scope: !189)
!192 = !DILocation(line: 89, column: 7, scope: !189)
!193 = !DILocation(line: 89, column: 5, scope: !189)
!194 = !DILocation(line: 92, column: 25, scope: !189)
!195 = !DILocation(line: 92, column: 23, scope: !189)
!196 = !DILocation(line: 92, column: 33, scope: !189)
!197 = !DILocation(line: 92, column: 11, scope: !189)
!198 = !DILocation(line: 92, column: 9, scope: !189)
!199 = !DILocation(line: 95, column: 25, scope: !189)
!200 = !DILocation(line: 95, column: 23, scope: !189)
!201 = !DILocation(line: 95, column: 33, scope: !189)
!202 = !DILocation(line: 95, column: 11, scope: !189)
!203 = !DILocation(line: 95, column: 9, scope: !189)
!204 = !DILocation(line: 98, column: 16, scope: !189)
!205 = !DILocation(line: 98, column: 14, scope: !189)
!206 = !DILocation(line: 98, column: 11, scope: !189)
!207 = !DILocation(line: 99, column: 16, scope: !189)
!208 = !DILocation(line: 99, column: 14, scope: !189)
!209 = !DILocation(line: 99, column: 11, scope: !189)
!210 = !DILocation(line: 100, column: 9, scope: !189)
!211 = !DILocation(line: 102, column: 25, scope: !189)
!212 = !DILocation(line: 102, column: 23, scope: !189)
!213 = !DILocation(line: 102, column: 33, scope: !189)
!214 = !DILocation(line: 102, column: 11, scope: !189)
!215 = !DILocation(line: 102, column: 9, scope: !189)
!216 = !DILocation(line: 105, column: 25, scope: !189)
!217 = !DILocation(line: 105, column: 23, scope: !189)
!218 = !DILocation(line: 105, column: 32, scope: !189)
!219 = !DILocation(line: 105, column: 11, scope: !189)
!220 = !DILocation(line: 105, column: 9, scope: !189)
!221 = !DILocation(line: 108, column: 24, scope: !189)
!222 = !DILocation(line: 108, column: 22, scope: !189)
!223 = !DILocation(line: 108, column: 11, scope: !189)
!224 = !DILocation(line: 108, column: 9, scope: !189)
!225 = !DILocation(line: 111, column: 16, scope: !189)
!226 = !DILocation(line: 111, column: 14, scope: !189)
!227 = !DILocation(line: 111, column: 11, scope: !189)
!228 = !DILocation(line: 112, column: 9, scope: !189)
!229 = !DILocation(line: 114, column: 25, scope: !189)
!230 = !DILocation(line: 114, column: 23, scope: !189)
!231 = !DILocation(line: 114, column: 32, scope: !189)
!232 = !DILocation(line: 114, column: 11, scope: !189)
!233 = !DILocation(line: 114, column: 9, scope: !189)
!234 = !DILocation(line: 117, column: 25, scope: !189)
!235 = !DILocation(line: 117, column: 23, scope: !189)
!236 = !DILocation(line: 117, column: 32, scope: !189)
!237 = !DILocation(line: 117, column: 11, scope: !189)
!238 = !DILocation(line: 117, column: 9, scope: !189)
!239 = !DILocation(line: 120, column: 25, scope: !189)
!240 = !DILocation(line: 120, column: 23, scope: !189)
!241 = !DILocation(line: 120, column: 32, scope: !189)
!242 = !DILocation(line: 120, column: 11, scope: !189)
!243 = !DILocation(line: 120, column: 9, scope: !189)
!244 = !DILocation(line: 123, column: 16, scope: !189)
!245 = !DILocation(line: 123, column: 14, scope: !189)
!246 = !DILocation(line: 123, column: 11, scope: !189)
!247 = !DILocation(line: 124, column: 9, scope: !189)
!248 = !DILocation(line: 126, column: 25, scope: !189)
!249 = !DILocation(line: 126, column: 23, scope: !189)
!250 = !DILocation(line: 126, column: 32, scope: !189)
!251 = !DILocation(line: 126, column: 11, scope: !189)
!252 = !DILocation(line: 126, column: 9, scope: !189)
!253 = !DILocation(line: 129, column: 25, scope: !189)
!254 = !DILocation(line: 129, column: 23, scope: !189)
!255 = !DILocation(line: 129, column: 32, scope: !189)
!256 = !DILocation(line: 129, column: 11, scope: !189)
!257 = !DILocation(line: 129, column: 9, scope: !189)
!258 = !DILocation(line: 132, column: 24, scope: !189)
!259 = !DILocation(line: 132, column: 22, scope: !189)
!260 = !DILocation(line: 132, column: 11, scope: !189)
!261 = !DILocation(line: 133, column: 9, scope: !189)
!262 = !DILocation(line: 135, column: 11, scope: !189)
!263 = !DILocation(line: 136, column: 11, scope: !189)
!264 = !DILocation(line: 137, column: 5, scope: !189)
!265 = !DILocation(line: 138, column: 5, scope: !89)
!266 = !DILocation(line: 139, column: 14, scope: !89)
!267 = !DILocation(line: 139, column: 6, scope: !89)
!268 = !DILocation(line: 139, column: 12, scope: !89)
!269 = !DILocation(line: 140, column: 14, scope: !89)
!270 = !DILocation(line: 140, column: 6, scope: !89)
!271 = !DILocation(line: 140, column: 12, scope: !89)
!272 = !DILocation(line: 141, column: 1, scope: !89)
!273 = distinct !DISubprogram(name: "ShortMix", linkageName: "_ZN10SpookyHash8ShortMixERmS0_S0_S0_", scope: !18, file: !6, line: 219, type: !77, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !76, retainedNodes: !90)
!274 = !DILocalVariable(name: "h0", arg: 1, scope: !273, file: !6, line: 219, type: !71)
!275 = !DILocation(line: 219, column: 41, scope: !273)
!276 = !DILocalVariable(name: "h1", arg: 2, scope: !273, file: !6, line: 219, type: !71)
!277 = !DILocation(line: 219, column: 53, scope: !273)
!278 = !DILocalVariable(name: "h2", arg: 3, scope: !273, file: !6, line: 219, type: !71)
!279 = !DILocation(line: 219, column: 65, scope: !273)
!280 = !DILocalVariable(name: "h3", arg: 4, scope: !273, file: !6, line: 219, type: !71)
!281 = !DILocation(line: 219, column: 77, scope: !273)
!282 = !DILocation(line: 221, column: 20, scope: !273)
!283 = !DILocation(line: 221, column: 14, scope: !273)
!284 = !DILocation(line: 221, column: 9, scope: !273)
!285 = !DILocation(line: 221, column: 12, scope: !273)
!286 = !DILocation(line: 221, column: 35, scope: !273)
!287 = !DILocation(line: 221, column: 29, scope: !273)
!288 = !DILocation(line: 221, column: 32, scope: !273)
!289 = !DILocation(line: 221, column: 46, scope: !273)
!290 = !DILocation(line: 221, column: 40, scope: !273)
!291 = !DILocation(line: 221, column: 43, scope: !273)
!292 = !DILocation(line: 222, column: 20, scope: !273)
!293 = !DILocation(line: 222, column: 14, scope: !273)
!294 = !DILocation(line: 222, column: 9, scope: !273)
!295 = !DILocation(line: 222, column: 12, scope: !273)
!296 = !DILocation(line: 222, column: 35, scope: !273)
!297 = !DILocation(line: 222, column: 29, scope: !273)
!298 = !DILocation(line: 222, column: 32, scope: !273)
!299 = !DILocation(line: 222, column: 46, scope: !273)
!300 = !DILocation(line: 222, column: 40, scope: !273)
!301 = !DILocation(line: 222, column: 43, scope: !273)
!302 = !DILocation(line: 223, column: 20, scope: !273)
!303 = !DILocation(line: 223, column: 14, scope: !273)
!304 = !DILocation(line: 223, column: 9, scope: !273)
!305 = !DILocation(line: 223, column: 12, scope: !273)
!306 = !DILocation(line: 223, column: 35, scope: !273)
!307 = !DILocation(line: 223, column: 29, scope: !273)
!308 = !DILocation(line: 223, column: 32, scope: !273)
!309 = !DILocation(line: 223, column: 46, scope: !273)
!310 = !DILocation(line: 223, column: 40, scope: !273)
!311 = !DILocation(line: 223, column: 43, scope: !273)
!312 = !DILocation(line: 224, column: 20, scope: !273)
!313 = !DILocation(line: 224, column: 14, scope: !273)
!314 = !DILocation(line: 224, column: 9, scope: !273)
!315 = !DILocation(line: 224, column: 12, scope: !273)
!316 = !DILocation(line: 224, column: 35, scope: !273)
!317 = !DILocation(line: 224, column: 29, scope: !273)
!318 = !DILocation(line: 224, column: 32, scope: !273)
!319 = !DILocation(line: 224, column: 46, scope: !273)
!320 = !DILocation(line: 224, column: 40, scope: !273)
!321 = !DILocation(line: 224, column: 43, scope: !273)
!322 = !DILocation(line: 225, column: 20, scope: !273)
!323 = !DILocation(line: 225, column: 14, scope: !273)
!324 = !DILocation(line: 225, column: 9, scope: !273)
!325 = !DILocation(line: 225, column: 12, scope: !273)
!326 = !DILocation(line: 225, column: 35, scope: !273)
!327 = !DILocation(line: 225, column: 29, scope: !273)
!328 = !DILocation(line: 225, column: 32, scope: !273)
!329 = !DILocation(line: 225, column: 46, scope: !273)
!330 = !DILocation(line: 225, column: 40, scope: !273)
!331 = !DILocation(line: 225, column: 43, scope: !273)
!332 = !DILocation(line: 226, column: 20, scope: !273)
!333 = !DILocation(line: 226, column: 14, scope: !273)
!334 = !DILocation(line: 226, column: 9, scope: !273)
!335 = !DILocation(line: 226, column: 12, scope: !273)
!336 = !DILocation(line: 226, column: 35, scope: !273)
!337 = !DILocation(line: 226, column: 29, scope: !273)
!338 = !DILocation(line: 226, column: 32, scope: !273)
!339 = !DILocation(line: 226, column: 46, scope: !273)
!340 = !DILocation(line: 226, column: 40, scope: !273)
!341 = !DILocation(line: 226, column: 43, scope: !273)
!342 = !DILocation(line: 227, column: 20, scope: !273)
!343 = !DILocation(line: 227, column: 14, scope: !273)
!344 = !DILocation(line: 227, column: 9, scope: !273)
!345 = !DILocation(line: 227, column: 12, scope: !273)
!346 = !DILocation(line: 227, column: 35, scope: !273)
!347 = !DILocation(line: 227, column: 29, scope: !273)
!348 = !DILocation(line: 227, column: 32, scope: !273)
!349 = !DILocation(line: 227, column: 46, scope: !273)
!350 = !DILocation(line: 227, column: 40, scope: !273)
!351 = !DILocation(line: 227, column: 43, scope: !273)
!352 = !DILocation(line: 228, column: 20, scope: !273)
!353 = !DILocation(line: 228, column: 14, scope: !273)
!354 = !DILocation(line: 228, column: 9, scope: !273)
!355 = !DILocation(line: 228, column: 12, scope: !273)
!356 = !DILocation(line: 228, column: 35, scope: !273)
!357 = !DILocation(line: 228, column: 29, scope: !273)
!358 = !DILocation(line: 228, column: 32, scope: !273)
!359 = !DILocation(line: 228, column: 46, scope: !273)
!360 = !DILocation(line: 228, column: 40, scope: !273)
!361 = !DILocation(line: 228, column: 43, scope: !273)
!362 = !DILocation(line: 229, column: 20, scope: !273)
!363 = !DILocation(line: 229, column: 14, scope: !273)
!364 = !DILocation(line: 229, column: 9, scope: !273)
!365 = !DILocation(line: 229, column: 12, scope: !273)
!366 = !DILocation(line: 229, column: 35, scope: !273)
!367 = !DILocation(line: 229, column: 29, scope: !273)
!368 = !DILocation(line: 229, column: 32, scope: !273)
!369 = !DILocation(line: 229, column: 46, scope: !273)
!370 = !DILocation(line: 229, column: 40, scope: !273)
!371 = !DILocation(line: 229, column: 43, scope: !273)
!372 = !DILocation(line: 230, column: 20, scope: !273)
!373 = !DILocation(line: 230, column: 14, scope: !273)
!374 = !DILocation(line: 230, column: 9, scope: !273)
!375 = !DILocation(line: 230, column: 12, scope: !273)
!376 = !DILocation(line: 230, column: 35, scope: !273)
!377 = !DILocation(line: 230, column: 29, scope: !273)
!378 = !DILocation(line: 230, column: 32, scope: !273)
!379 = !DILocation(line: 230, column: 46, scope: !273)
!380 = !DILocation(line: 230, column: 40, scope: !273)
!381 = !DILocation(line: 230, column: 43, scope: !273)
!382 = !DILocation(line: 231, column: 20, scope: !273)
!383 = !DILocation(line: 231, column: 14, scope: !273)
!384 = !DILocation(line: 231, column: 9, scope: !273)
!385 = !DILocation(line: 231, column: 12, scope: !273)
!386 = !DILocation(line: 231, column: 35, scope: !273)
!387 = !DILocation(line: 231, column: 29, scope: !273)
!388 = !DILocation(line: 231, column: 32, scope: !273)
!389 = !DILocation(line: 231, column: 46, scope: !273)
!390 = !DILocation(line: 231, column: 40, scope: !273)
!391 = !DILocation(line: 231, column: 43, scope: !273)
!392 = !DILocation(line: 232, column: 20, scope: !273)
!393 = !DILocation(line: 232, column: 14, scope: !273)
!394 = !DILocation(line: 232, column: 9, scope: !273)
!395 = !DILocation(line: 232, column: 12, scope: !273)
!396 = !DILocation(line: 232, column: 35, scope: !273)
!397 = !DILocation(line: 232, column: 29, scope: !273)
!398 = !DILocation(line: 232, column: 32, scope: !273)
!399 = !DILocation(line: 232, column: 46, scope: !273)
!400 = !DILocation(line: 232, column: 40, scope: !273)
!401 = !DILocation(line: 232, column: 43, scope: !273)
!402 = !DILocation(line: 233, column: 5, scope: !273)
!403 = distinct !DISubprogram(name: "ShortEnd", linkageName: "_ZN10SpookyHash8ShortEndERmS0_S0_S0_", scope: !18, file: !6, line: 247, type: !77, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !79, retainedNodes: !90)
!404 = !DILocalVariable(name: "h0", arg: 1, scope: !403, file: !6, line: 247, type: !71)
!405 = !DILocation(line: 247, column: 41, scope: !403)
!406 = !DILocalVariable(name: "h1", arg: 2, scope: !403, file: !6, line: 247, type: !71)
!407 = !DILocation(line: 247, column: 53, scope: !403)
!408 = !DILocalVariable(name: "h2", arg: 3, scope: !403, file: !6, line: 247, type: !71)
!409 = !DILocation(line: 247, column: 65, scope: !403)
!410 = !DILocalVariable(name: "h3", arg: 4, scope: !403, file: !6, line: 247, type: !71)
!411 = !DILocation(line: 247, column: 77, scope: !403)
!412 = !DILocation(line: 249, column: 15, scope: !403)
!413 = !DILocation(line: 249, column: 9, scope: !403)
!414 = !DILocation(line: 249, column: 12, scope: !403)
!415 = !DILocation(line: 249, column: 31, scope: !403)
!416 = !DILocation(line: 249, column: 25, scope: !403)
!417 = !DILocation(line: 249, column: 20, scope: !403)
!418 = !DILocation(line: 249, column: 23, scope: !403)
!419 = !DILocation(line: 249, column: 46, scope: !403)
!420 = !DILocation(line: 249, column: 40, scope: !403)
!421 = !DILocation(line: 249, column: 43, scope: !403)
!422 = !DILocation(line: 250, column: 15, scope: !403)
!423 = !DILocation(line: 250, column: 9, scope: !403)
!424 = !DILocation(line: 250, column: 12, scope: !403)
!425 = !DILocation(line: 250, column: 31, scope: !403)
!426 = !DILocation(line: 250, column: 25, scope: !403)
!427 = !DILocation(line: 250, column: 20, scope: !403)
!428 = !DILocation(line: 250, column: 23, scope: !403)
!429 = !DILocation(line: 250, column: 46, scope: !403)
!430 = !DILocation(line: 250, column: 40, scope: !403)
!431 = !DILocation(line: 250, column: 43, scope: !403)
!432 = !DILocation(line: 251, column: 15, scope: !403)
!433 = !DILocation(line: 251, column: 9, scope: !403)
!434 = !DILocation(line: 251, column: 12, scope: !403)
!435 = !DILocation(line: 251, column: 31, scope: !403)
!436 = !DILocation(line: 251, column: 25, scope: !403)
!437 = !DILocation(line: 251, column: 20, scope: !403)
!438 = !DILocation(line: 251, column: 23, scope: !403)
!439 = !DILocation(line: 251, column: 46, scope: !403)
!440 = !DILocation(line: 251, column: 40, scope: !403)
!441 = !DILocation(line: 251, column: 43, scope: !403)
!442 = !DILocation(line: 252, column: 15, scope: !403)
!443 = !DILocation(line: 252, column: 9, scope: !403)
!444 = !DILocation(line: 252, column: 12, scope: !403)
!445 = !DILocation(line: 252, column: 31, scope: !403)
!446 = !DILocation(line: 252, column: 25, scope: !403)
!447 = !DILocation(line: 252, column: 20, scope: !403)
!448 = !DILocation(line: 252, column: 23, scope: !403)
!449 = !DILocation(line: 252, column: 46, scope: !403)
!450 = !DILocation(line: 252, column: 40, scope: !403)
!451 = !DILocation(line: 252, column: 43, scope: !403)
!452 = !DILocation(line: 253, column: 15, scope: !403)
!453 = !DILocation(line: 253, column: 9, scope: !403)
!454 = !DILocation(line: 253, column: 12, scope: !403)
!455 = !DILocation(line: 253, column: 31, scope: !403)
!456 = !DILocation(line: 253, column: 25, scope: !403)
!457 = !DILocation(line: 253, column: 20, scope: !403)
!458 = !DILocation(line: 253, column: 23, scope: !403)
!459 = !DILocation(line: 253, column: 46, scope: !403)
!460 = !DILocation(line: 253, column: 40, scope: !403)
!461 = !DILocation(line: 253, column: 43, scope: !403)
!462 = !DILocation(line: 254, column: 15, scope: !403)
!463 = !DILocation(line: 254, column: 9, scope: !403)
!464 = !DILocation(line: 254, column: 12, scope: !403)
!465 = !DILocation(line: 254, column: 31, scope: !403)
!466 = !DILocation(line: 254, column: 25, scope: !403)
!467 = !DILocation(line: 254, column: 20, scope: !403)
!468 = !DILocation(line: 254, column: 23, scope: !403)
!469 = !DILocation(line: 254, column: 46, scope: !403)
!470 = !DILocation(line: 254, column: 40, scope: !403)
!471 = !DILocation(line: 254, column: 43, scope: !403)
!472 = !DILocation(line: 255, column: 15, scope: !403)
!473 = !DILocation(line: 255, column: 9, scope: !403)
!474 = !DILocation(line: 255, column: 12, scope: !403)
!475 = !DILocation(line: 255, column: 31, scope: !403)
!476 = !DILocation(line: 255, column: 25, scope: !403)
!477 = !DILocation(line: 255, column: 20, scope: !403)
!478 = !DILocation(line: 255, column: 23, scope: !403)
!479 = !DILocation(line: 255, column: 46, scope: !403)
!480 = !DILocation(line: 255, column: 40, scope: !403)
!481 = !DILocation(line: 255, column: 43, scope: !403)
!482 = !DILocation(line: 256, column: 15, scope: !403)
!483 = !DILocation(line: 256, column: 9, scope: !403)
!484 = !DILocation(line: 256, column: 12, scope: !403)
!485 = !DILocation(line: 256, column: 31, scope: !403)
!486 = !DILocation(line: 256, column: 25, scope: !403)
!487 = !DILocation(line: 256, column: 20, scope: !403)
!488 = !DILocation(line: 256, column: 23, scope: !403)
!489 = !DILocation(line: 256, column: 46, scope: !403)
!490 = !DILocation(line: 256, column: 40, scope: !403)
!491 = !DILocation(line: 256, column: 43, scope: !403)
!492 = !DILocation(line: 257, column: 15, scope: !403)
!493 = !DILocation(line: 257, column: 9, scope: !403)
!494 = !DILocation(line: 257, column: 12, scope: !403)
!495 = !DILocation(line: 257, column: 31, scope: !403)
!496 = !DILocation(line: 257, column: 25, scope: !403)
!497 = !DILocation(line: 257, column: 20, scope: !403)
!498 = !DILocation(line: 257, column: 23, scope: !403)
!499 = !DILocation(line: 257, column: 46, scope: !403)
!500 = !DILocation(line: 257, column: 40, scope: !403)
!501 = !DILocation(line: 257, column: 43, scope: !403)
!502 = !DILocation(line: 258, column: 15, scope: !403)
!503 = !DILocation(line: 258, column: 9, scope: !403)
!504 = !DILocation(line: 258, column: 12, scope: !403)
!505 = !DILocation(line: 258, column: 31, scope: !403)
!506 = !DILocation(line: 258, column: 25, scope: !403)
!507 = !DILocation(line: 258, column: 20, scope: !403)
!508 = !DILocation(line: 258, column: 23, scope: !403)
!509 = !DILocation(line: 258, column: 46, scope: !403)
!510 = !DILocation(line: 258, column: 40, scope: !403)
!511 = !DILocation(line: 258, column: 43, scope: !403)
!512 = !DILocation(line: 259, column: 15, scope: !403)
!513 = !DILocation(line: 259, column: 9, scope: !403)
!514 = !DILocation(line: 259, column: 12, scope: !403)
!515 = !DILocation(line: 259, column: 31, scope: !403)
!516 = !DILocation(line: 259, column: 25, scope: !403)
!517 = !DILocation(line: 259, column: 20, scope: !403)
!518 = !DILocation(line: 259, column: 23, scope: !403)
!519 = !DILocation(line: 259, column: 46, scope: !403)
!520 = !DILocation(line: 259, column: 40, scope: !403)
!521 = !DILocation(line: 259, column: 43, scope: !403)
!522 = !DILocation(line: 260, column: 5, scope: !403)
!523 = distinct !DISubprogram(name: "Hash128", linkageName: "_ZN10SpookyHash7Hash128EPKvmPmS2_", scope: !18, file: !1, line: 147, type: !39, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !38, retainedNodes: !90)
!524 = !DILocalVariable(name: "message", arg: 1, scope: !523, file: !1, line: 148, type: !41)
!525 = !DILocation(line: 148, column: 17, scope: !523)
!526 = !DILocalVariable(name: "length", arg: 2, scope: !523, file: !1, line: 149, type: !22)
!527 = !DILocation(line: 149, column: 12, scope: !523)
!528 = !DILocalVariable(name: "hash1", arg: 3, scope: !523, file: !1, line: 150, type: !17)
!529 = !DILocation(line: 150, column: 13, scope: !523)
!530 = !DILocalVariable(name: "hash2", arg: 4, scope: !523, file: !1, line: 151, type: !17)
!531 = !DILocation(line: 151, column: 13, scope: !523)
!532 = !DILocation(line: 153, column: 9, scope: !533)
!533 = distinct !DILexicalBlock(scope: !523, file: !1, line: 153, column: 9)
!534 = !DILocation(line: 153, column: 16, scope: !533)
!535 = !DILocation(line: 153, column: 9, scope: !523)
!536 = !DILocation(line: 155, column: 15, scope: !537)
!537 = distinct !DILexicalBlock(scope: !533, file: !1, line: 154, column: 5)
!538 = !DILocation(line: 155, column: 24, scope: !537)
!539 = !DILocation(line: 155, column: 32, scope: !537)
!540 = !DILocation(line: 155, column: 39, scope: !537)
!541 = !DILocation(line: 155, column: 9, scope: !537)
!542 = !DILocation(line: 156, column: 9, scope: !537)
!543 = !DILocalVariable(name: "h0", scope: !523, file: !1, line: 159, type: !12)
!544 = !DILocation(line: 159, column: 12, scope: !523)
!545 = !DILocalVariable(name: "h1", scope: !523, file: !1, line: 159, type: !12)
!546 = !DILocation(line: 159, column: 15, scope: !523)
!547 = !DILocalVariable(name: "h2", scope: !523, file: !1, line: 159, type: !12)
!548 = !DILocation(line: 159, column: 18, scope: !523)
!549 = !DILocalVariable(name: "h3", scope: !523, file: !1, line: 159, type: !12)
!550 = !DILocation(line: 159, column: 21, scope: !523)
!551 = !DILocalVariable(name: "h4", scope: !523, file: !1, line: 159, type: !12)
!552 = !DILocation(line: 159, column: 24, scope: !523)
!553 = !DILocalVariable(name: "h5", scope: !523, file: !1, line: 159, type: !12)
!554 = !DILocation(line: 159, column: 27, scope: !523)
!555 = !DILocalVariable(name: "h6", scope: !523, file: !1, line: 159, type: !12)
!556 = !DILocation(line: 159, column: 30, scope: !523)
!557 = !DILocalVariable(name: "h7", scope: !523, file: !1, line: 159, type: !12)
!558 = !DILocation(line: 159, column: 33, scope: !523)
!559 = !DILocalVariable(name: "h8", scope: !523, file: !1, line: 159, type: !12)
!560 = !DILocation(line: 159, column: 36, scope: !523)
!561 = !DILocalVariable(name: "h9", scope: !523, file: !1, line: 159, type: !12)
!562 = !DILocation(line: 159, column: 39, scope: !523)
!563 = !DILocalVariable(name: "h10", scope: !523, file: !1, line: 159, type: !12)
!564 = !DILocation(line: 159, column: 42, scope: !523)
!565 = !DILocalVariable(name: "h11", scope: !523, file: !1, line: 159, type: !12)
!566 = !DILocation(line: 159, column: 46, scope: !523)
!567 = !DILocalVariable(name: "buf", scope: !523, file: !1, line: 160, type: !33)
!568 = !DILocation(line: 160, column: 12, scope: !523)
!569 = !DILocalVariable(name: "end", scope: !523, file: !1, line: 161, type: !17)
!570 = !DILocation(line: 161, column: 13, scope: !523)
!571 = !DILocalVariable(name: "u", scope: !523, file: !1, line: 167, type: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !523, file: !1, line: 162, size: 64, flags: DIFlagTypePassByValue, elements: !573)
!573 = !{!574, !575, !576}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "p8", scope: !572, file: !1, line: 164, baseType: !3, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "p64", scope: !572, file: !1, line: 165, baseType: !17, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !572, file: !1, line: 166, baseType: !22, size: 64)
!577 = !DILocation(line: 167, column: 7, scope: !523)
!578 = !DILocalVariable(name: "remainder", scope: !523, file: !1, line: 168, type: !22)
!579 = !DILocation(line: 168, column: 12, scope: !523)
!580 = !DILocation(line: 170, column: 21, scope: !523)
!581 = !DILocation(line: 170, column: 20, scope: !523)
!582 = !DILocation(line: 170, column: 18, scope: !523)
!583 = !DILocation(line: 170, column: 13, scope: !523)
!584 = !DILocation(line: 170, column: 10, scope: !523)
!585 = !DILocation(line: 170, column: 7, scope: !523)
!586 = !DILocation(line: 171, column: 21, scope: !523)
!587 = !DILocation(line: 171, column: 20, scope: !523)
!588 = !DILocation(line: 171, column: 18, scope: !523)
!589 = !DILocation(line: 171, column: 13, scope: !523)
!590 = !DILocation(line: 171, column: 10, scope: !523)
!591 = !DILocation(line: 171, column: 7, scope: !523)
!592 = !DILocation(line: 172, column: 18, scope: !523)
!593 = !DILocation(line: 172, column: 13, scope: !523)
!594 = !DILocation(line: 172, column: 10, scope: !523)
!595 = !DILocation(line: 172, column: 7, scope: !523)
!596 = !DILocation(line: 174, column: 39, scope: !523)
!597 = !DILocation(line: 174, column: 10, scope: !523)
!598 = !DILocation(line: 175, column: 13, scope: !523)
!599 = !DILocation(line: 175, column: 20, scope: !523)
!600 = !DILocation(line: 175, column: 26, scope: !523)
!601 = !DILocation(line: 175, column: 40, scope: !523)
!602 = !DILocation(line: 175, column: 17, scope: !523)
!603 = !DILocation(line: 175, column: 9, scope: !523)
!604 = !DILocation(line: 180, column: 9, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 179, column: 5)
!606 = distinct !DILexicalBlock(scope: !523, file: !1, line: 178, column: 9)
!607 = !DILocation(line: 180, column: 18, scope: !605)
!608 = !DILocation(line: 180, column: 24, scope: !605)
!609 = !DILocation(line: 180, column: 22, scope: !605)
!610 = !DILocation(line: 182, column: 19, scope: !611)
!611 = distinct !DILexicalBlock(scope: !605, file: !1, line: 181, column: 9)
!612 = !DILocation(line: 182, column: 13, scope: !611)
!613 = !DILocation(line: 183, column: 19, scope: !611)
!614 = distinct !{!614, !604, !615, !166}
!615 = !DILocation(line: 184, column: 9, scope: !605)
!616 = !DILocation(line: 197, column: 18, scope: !523)
!617 = !DILocation(line: 197, column: 60, scope: !523)
!618 = !DILocation(line: 197, column: 94, scope: !523)
!619 = !DILocation(line: 197, column: 65, scope: !523)
!620 = !DILocation(line: 197, column: 25, scope: !523)
!621 = !DILocation(line: 197, column: 15, scope: !523)
!622 = !DILocation(line: 198, column: 5, scope: !523)
!623 = !DILocation(line: 198, column: 17, scope: !523)
!624 = !DILocation(line: 198, column: 22, scope: !523)
!625 = !DILocation(line: 199, column: 39, scope: !523)
!626 = !DILocation(line: 199, column: 45, scope: !523)
!627 = !DILocation(line: 199, column: 44, scope: !523)
!628 = !DILocation(line: 199, column: 72, scope: !523)
!629 = !DILocation(line: 199, column: 71, scope: !523)
!630 = !DILocation(line: 199, column: 5, scope: !523)
!631 = !DILocation(line: 200, column: 56, scope: !523)
!632 = !DILocation(line: 200, column: 5, scope: !523)
!633 = !DILocation(line: 200, column: 54, scope: !523)
!634 = !DILocation(line: 203, column: 9, scope: !523)
!635 = !DILocation(line: 203, column: 5, scope: !523)
!636 = !DILocation(line: 204, column: 14, scope: !523)
!637 = !DILocation(line: 204, column: 6, scope: !523)
!638 = !DILocation(line: 204, column: 12, scope: !523)
!639 = !DILocation(line: 205, column: 14, scope: !523)
!640 = !DILocation(line: 205, column: 6, scope: !523)
!641 = !DILocation(line: 205, column: 12, scope: !523)
!642 = !DILocation(line: 206, column: 1, scope: !523)
!643 = distinct !DISubprogram(name: "Mix", linkageName: "_ZN10SpookyHash3MixEPKmRmS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_", scope: !18, file: !6, line: 135, type: !68, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !67, retainedNodes: !90)
!644 = !DILocalVariable(name: "data", arg: 1, scope: !643, file: !6, line: 136, type: !70)
!645 = !DILocation(line: 136, column: 23, scope: !643)
!646 = !DILocalVariable(name: "s0", arg: 2, scope: !643, file: !6, line: 137, type: !71)
!647 = !DILocation(line: 137, column: 17, scope: !643)
!648 = !DILocalVariable(name: "s1", arg: 3, scope: !643, file: !6, line: 137, type: !71)
!649 = !DILocation(line: 137, column: 29, scope: !643)
!650 = !DILocalVariable(name: "s2", arg: 4, scope: !643, file: !6, line: 137, type: !71)
!651 = !DILocation(line: 137, column: 41, scope: !643)
!652 = !DILocalVariable(name: "s3", arg: 5, scope: !643, file: !6, line: 137, type: !71)
!653 = !DILocation(line: 137, column: 53, scope: !643)
!654 = !DILocalVariable(name: "s4", arg: 6, scope: !643, file: !6, line: 138, type: !71)
!655 = !DILocation(line: 138, column: 17, scope: !643)
!656 = !DILocalVariable(name: "s5", arg: 7, scope: !643, file: !6, line: 138, type: !71)
!657 = !DILocation(line: 138, column: 29, scope: !643)
!658 = !DILocalVariable(name: "s6", arg: 8, scope: !643, file: !6, line: 138, type: !71)
!659 = !DILocation(line: 138, column: 41, scope: !643)
!660 = !DILocalVariable(name: "s7", arg: 9, scope: !643, file: !6, line: 138, type: !71)
!661 = !DILocation(line: 138, column: 53, scope: !643)
!662 = !DILocalVariable(name: "s8", arg: 10, scope: !643, file: !6, line: 139, type: !71)
!663 = !DILocation(line: 139, column: 17, scope: !643)
!664 = !DILocalVariable(name: "s9", arg: 11, scope: !643, file: !6, line: 139, type: !71)
!665 = !DILocation(line: 139, column: 29, scope: !643)
!666 = !DILocalVariable(name: "s10", arg: 12, scope: !643, file: !6, line: 139, type: !71)
!667 = !DILocation(line: 139, column: 41, scope: !643)
!668 = !DILocalVariable(name: "s11", arg: 13, scope: !643, file: !6, line: 139, type: !71)
!669 = !DILocation(line: 139, column: 53, scope: !643)
!670 = !DILocation(line: 141, column: 13, scope: !643)
!671 = !DILocation(line: 141, column: 7, scope: !643)
!672 = !DILocation(line: 141, column: 10, scope: !643)
!673 = !DILocation(line: 141, column: 31, scope: !643)
!674 = !DILocation(line: 141, column: 25, scope: !643)
!675 = !DILocation(line: 141, column: 28, scope: !643)
!676 = !DILocation(line: 141, column: 46, scope: !643)
!677 = !DILocation(line: 141, column: 39, scope: !643)
!678 = !DILocation(line: 141, column: 43, scope: !643)
!679 = !DILocation(line: 141, column: 64, scope: !643)
!680 = !DILocation(line: 141, column: 58, scope: !643)
!681 = !DILocation(line: 141, column: 53, scope: !643)
!682 = !DILocation(line: 141, column: 56, scope: !643)
!683 = !DILocation(line: 141, column: 82, scope: !643)
!684 = !DILocation(line: 141, column: 75, scope: !643)
!685 = !DILocation(line: 141, column: 79, scope: !643)
!686 = !DILocation(line: 142, column: 13, scope: !643)
!687 = !DILocation(line: 142, column: 7, scope: !643)
!688 = !DILocation(line: 142, column: 10, scope: !643)
!689 = !DILocation(line: 142, column: 31, scope: !643)
!690 = !DILocation(line: 142, column: 25, scope: !643)
!691 = !DILocation(line: 142, column: 28, scope: !643)
!692 = !DILocation(line: 142, column: 45, scope: !643)
!693 = !DILocation(line: 142, column: 39, scope: !643)
!694 = !DILocation(line: 142, column: 42, scope: !643)
!695 = !DILocation(line: 142, column: 63, scope: !643)
!696 = !DILocation(line: 142, column: 57, scope: !643)
!697 = !DILocation(line: 142, column: 52, scope: !643)
!698 = !DILocation(line: 142, column: 55, scope: !643)
!699 = !DILocation(line: 142, column: 80, scope: !643)
!700 = !DILocation(line: 142, column: 74, scope: !643)
!701 = !DILocation(line: 142, column: 77, scope: !643)
!702 = !DILocation(line: 143, column: 13, scope: !643)
!703 = !DILocation(line: 143, column: 7, scope: !643)
!704 = !DILocation(line: 143, column: 10, scope: !643)
!705 = !DILocation(line: 143, column: 31, scope: !643)
!706 = !DILocation(line: 143, column: 25, scope: !643)
!707 = !DILocation(line: 143, column: 28, scope: !643)
!708 = !DILocation(line: 143, column: 44, scope: !643)
!709 = !DILocation(line: 143, column: 38, scope: !643)
!710 = !DILocation(line: 143, column: 41, scope: !643)
!711 = !DILocation(line: 143, column: 62, scope: !643)
!712 = !DILocation(line: 143, column: 56, scope: !643)
!713 = !DILocation(line: 143, column: 51, scope: !643)
!714 = !DILocation(line: 143, column: 54, scope: !643)
!715 = !DILocation(line: 143, column: 79, scope: !643)
!716 = !DILocation(line: 143, column: 73, scope: !643)
!717 = !DILocation(line: 143, column: 76, scope: !643)
!718 = !DILocation(line: 144, column: 13, scope: !643)
!719 = !DILocation(line: 144, column: 7, scope: !643)
!720 = !DILocation(line: 144, column: 10, scope: !643)
!721 = !DILocation(line: 144, column: 31, scope: !643)
!722 = !DILocation(line: 144, column: 25, scope: !643)
!723 = !DILocation(line: 144, column: 28, scope: !643)
!724 = !DILocation(line: 144, column: 44, scope: !643)
!725 = !DILocation(line: 144, column: 38, scope: !643)
!726 = !DILocation(line: 144, column: 41, scope: !643)
!727 = !DILocation(line: 144, column: 62, scope: !643)
!728 = !DILocation(line: 144, column: 56, scope: !643)
!729 = !DILocation(line: 144, column: 51, scope: !643)
!730 = !DILocation(line: 144, column: 54, scope: !643)
!731 = !DILocation(line: 144, column: 79, scope: !643)
!732 = !DILocation(line: 144, column: 73, scope: !643)
!733 = !DILocation(line: 144, column: 76, scope: !643)
!734 = !DILocation(line: 145, column: 13, scope: !643)
!735 = !DILocation(line: 145, column: 7, scope: !643)
!736 = !DILocation(line: 145, column: 10, scope: !643)
!737 = !DILocation(line: 145, column: 31, scope: !643)
!738 = !DILocation(line: 145, column: 25, scope: !643)
!739 = !DILocation(line: 145, column: 28, scope: !643)
!740 = !DILocation(line: 145, column: 44, scope: !643)
!741 = !DILocation(line: 145, column: 38, scope: !643)
!742 = !DILocation(line: 145, column: 41, scope: !643)
!743 = !DILocation(line: 145, column: 62, scope: !643)
!744 = !DILocation(line: 145, column: 56, scope: !643)
!745 = !DILocation(line: 145, column: 51, scope: !643)
!746 = !DILocation(line: 145, column: 54, scope: !643)
!747 = !DILocation(line: 145, column: 79, scope: !643)
!748 = !DILocation(line: 145, column: 73, scope: !643)
!749 = !DILocation(line: 145, column: 76, scope: !643)
!750 = !DILocation(line: 146, column: 13, scope: !643)
!751 = !DILocation(line: 146, column: 7, scope: !643)
!752 = !DILocation(line: 146, column: 10, scope: !643)
!753 = !DILocation(line: 146, column: 31, scope: !643)
!754 = !DILocation(line: 146, column: 25, scope: !643)
!755 = !DILocation(line: 146, column: 28, scope: !643)
!756 = !DILocation(line: 146, column: 44, scope: !643)
!757 = !DILocation(line: 146, column: 38, scope: !643)
!758 = !DILocation(line: 146, column: 41, scope: !643)
!759 = !DILocation(line: 146, column: 62, scope: !643)
!760 = !DILocation(line: 146, column: 56, scope: !643)
!761 = !DILocation(line: 146, column: 51, scope: !643)
!762 = !DILocation(line: 146, column: 54, scope: !643)
!763 = !DILocation(line: 146, column: 79, scope: !643)
!764 = !DILocation(line: 146, column: 73, scope: !643)
!765 = !DILocation(line: 146, column: 76, scope: !643)
!766 = !DILocation(line: 147, column: 13, scope: !643)
!767 = !DILocation(line: 147, column: 7, scope: !643)
!768 = !DILocation(line: 147, column: 10, scope: !643)
!769 = !DILocation(line: 147, column: 31, scope: !643)
!770 = !DILocation(line: 147, column: 25, scope: !643)
!771 = !DILocation(line: 147, column: 28, scope: !643)
!772 = !DILocation(line: 147, column: 44, scope: !643)
!773 = !DILocation(line: 147, column: 38, scope: !643)
!774 = !DILocation(line: 147, column: 41, scope: !643)
!775 = !DILocation(line: 147, column: 62, scope: !643)
!776 = !DILocation(line: 147, column: 56, scope: !643)
!777 = !DILocation(line: 147, column: 51, scope: !643)
!778 = !DILocation(line: 147, column: 54, scope: !643)
!779 = !DILocation(line: 147, column: 79, scope: !643)
!780 = !DILocation(line: 147, column: 73, scope: !643)
!781 = !DILocation(line: 147, column: 76, scope: !643)
!782 = !DILocation(line: 148, column: 13, scope: !643)
!783 = !DILocation(line: 148, column: 7, scope: !643)
!784 = !DILocation(line: 148, column: 10, scope: !643)
!785 = !DILocation(line: 148, column: 31, scope: !643)
!786 = !DILocation(line: 148, column: 25, scope: !643)
!787 = !DILocation(line: 148, column: 28, scope: !643)
!788 = !DILocation(line: 148, column: 44, scope: !643)
!789 = !DILocation(line: 148, column: 38, scope: !643)
!790 = !DILocation(line: 148, column: 41, scope: !643)
!791 = !DILocation(line: 148, column: 62, scope: !643)
!792 = !DILocation(line: 148, column: 56, scope: !643)
!793 = !DILocation(line: 148, column: 51, scope: !643)
!794 = !DILocation(line: 148, column: 54, scope: !643)
!795 = !DILocation(line: 148, column: 79, scope: !643)
!796 = !DILocation(line: 148, column: 73, scope: !643)
!797 = !DILocation(line: 148, column: 76, scope: !643)
!798 = !DILocation(line: 149, column: 13, scope: !643)
!799 = !DILocation(line: 149, column: 7, scope: !643)
!800 = !DILocation(line: 149, column: 10, scope: !643)
!801 = !DILocation(line: 149, column: 32, scope: !643)
!802 = !DILocation(line: 149, column: 25, scope: !643)
!803 = !DILocation(line: 149, column: 29, scope: !643)
!804 = !DILocation(line: 149, column: 45, scope: !643)
!805 = !DILocation(line: 149, column: 39, scope: !643)
!806 = !DILocation(line: 149, column: 42, scope: !643)
!807 = !DILocation(line: 149, column: 63, scope: !643)
!808 = !DILocation(line: 149, column: 57, scope: !643)
!809 = !DILocation(line: 149, column: 52, scope: !643)
!810 = !DILocation(line: 149, column: 55, scope: !643)
!811 = !DILocation(line: 149, column: 80, scope: !643)
!812 = !DILocation(line: 149, column: 74, scope: !643)
!813 = !DILocation(line: 149, column: 77, scope: !643)
!814 = !DILocation(line: 150, column: 13, scope: !643)
!815 = !DILocation(line: 150, column: 7, scope: !643)
!816 = !DILocation(line: 150, column: 10, scope: !643)
!817 = !DILocation(line: 150, column: 32, scope: !643)
!818 = !DILocation(line: 150, column: 25, scope: !643)
!819 = !DILocation(line: 150, column: 29, scope: !643)
!820 = !DILocation(line: 150, column: 45, scope: !643)
!821 = !DILocation(line: 150, column: 39, scope: !643)
!822 = !DILocation(line: 150, column: 42, scope: !643)
!823 = !DILocation(line: 150, column: 63, scope: !643)
!824 = !DILocation(line: 150, column: 57, scope: !643)
!825 = !DILocation(line: 150, column: 52, scope: !643)
!826 = !DILocation(line: 150, column: 55, scope: !643)
!827 = !DILocation(line: 150, column: 80, scope: !643)
!828 = !DILocation(line: 150, column: 74, scope: !643)
!829 = !DILocation(line: 150, column: 77, scope: !643)
!830 = !DILocation(line: 151, column: 14, scope: !643)
!831 = !DILocation(line: 151, column: 7, scope: !643)
!832 = !DILocation(line: 151, column: 11, scope: !643)
!833 = !DILocation(line: 151, column: 33, scope: !643)
!834 = !DILocation(line: 151, column: 27, scope: !643)
!835 = !DILocation(line: 151, column: 30, scope: !643)
!836 = !DILocation(line: 151, column: 46, scope: !643)
!837 = !DILocation(line: 151, column: 40, scope: !643)
!838 = !DILocation(line: 151, column: 43, scope: !643)
!839 = !DILocation(line: 151, column: 66, scope: !643)
!840 = !DILocation(line: 151, column: 60, scope: !643)
!841 = !DILocation(line: 151, column: 54, scope: !643)
!842 = !DILocation(line: 151, column: 58, scope: !643)
!843 = !DILocation(line: 151, column: 84, scope: !643)
!844 = !DILocation(line: 151, column: 78, scope: !643)
!845 = !DILocation(line: 151, column: 81, scope: !643)
!846 = !DILocation(line: 152, column: 14, scope: !643)
!847 = !DILocation(line: 152, column: 7, scope: !643)
!848 = !DILocation(line: 152, column: 11, scope: !643)
!849 = !DILocation(line: 152, column: 33, scope: !643)
!850 = !DILocation(line: 152, column: 27, scope: !643)
!851 = !DILocation(line: 152, column: 30, scope: !643)
!852 = !DILocation(line: 152, column: 47, scope: !643)
!853 = !DILocation(line: 152, column: 40, scope: !643)
!854 = !DILocation(line: 152, column: 44, scope: !643)
!855 = !DILocation(line: 152, column: 67, scope: !643)
!856 = !DILocation(line: 152, column: 61, scope: !643)
!857 = !DILocation(line: 152, column: 55, scope: !643)
!858 = !DILocation(line: 152, column: 59, scope: !643)
!859 = !DILocation(line: 152, column: 86, scope: !643)
!860 = !DILocation(line: 152, column: 79, scope: !643)
!861 = !DILocation(line: 152, column: 83, scope: !643)
!862 = !DILocation(line: 153, column: 5, scope: !643)
!863 = distinct !DISubprogram(name: "End", linkageName: "_ZN10SpookyHash3EndEPKmRmS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_", scope: !18, file: !6, line: 190, type: !68, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !75, retainedNodes: !90)
!864 = !DILocalVariable(name: "data", arg: 1, scope: !863, file: !6, line: 191, type: !70)
!865 = !DILocation(line: 191, column: 23, scope: !863)
!866 = !DILocalVariable(name: "h0", arg: 2, scope: !863, file: !6, line: 192, type: !71)
!867 = !DILocation(line: 192, column: 17, scope: !863)
!868 = !DILocalVariable(name: "h1", arg: 3, scope: !863, file: !6, line: 192, type: !71)
!869 = !DILocation(line: 192, column: 29, scope: !863)
!870 = !DILocalVariable(name: "h2", arg: 4, scope: !863, file: !6, line: 192, type: !71)
!871 = !DILocation(line: 192, column: 41, scope: !863)
!872 = !DILocalVariable(name: "h3", arg: 5, scope: !863, file: !6, line: 192, type: !71)
!873 = !DILocation(line: 192, column: 53, scope: !863)
!874 = !DILocalVariable(name: "h4", arg: 6, scope: !863, file: !6, line: 193, type: !71)
!875 = !DILocation(line: 193, column: 17, scope: !863)
!876 = !DILocalVariable(name: "h5", arg: 7, scope: !863, file: !6, line: 193, type: !71)
!877 = !DILocation(line: 193, column: 29, scope: !863)
!878 = !DILocalVariable(name: "h6", arg: 8, scope: !863, file: !6, line: 193, type: !71)
!879 = !DILocation(line: 193, column: 41, scope: !863)
!880 = !DILocalVariable(name: "h7", arg: 9, scope: !863, file: !6, line: 193, type: !71)
!881 = !DILocation(line: 193, column: 53, scope: !863)
!882 = !DILocalVariable(name: "h8", arg: 10, scope: !863, file: !6, line: 194, type: !71)
!883 = !DILocation(line: 194, column: 17, scope: !863)
!884 = !DILocalVariable(name: "h9", arg: 11, scope: !863, file: !6, line: 194, type: !71)
!885 = !DILocation(line: 194, column: 29, scope: !863)
!886 = !DILocalVariable(name: "h10", arg: 12, scope: !863, file: !6, line: 194, type: !71)
!887 = !DILocation(line: 194, column: 41, scope: !863)
!888 = !DILocalVariable(name: "h11", arg: 13, scope: !863, file: !6, line: 194, type: !71)
!889 = !DILocation(line: 194, column: 53, scope: !863)
!890 = !DILocation(line: 196, column: 15, scope: !863)
!891 = !DILocation(line: 196, column: 9, scope: !863)
!892 = !DILocation(line: 196, column: 12, scope: !863)
!893 = !DILocation(line: 196, column: 32, scope: !863)
!894 = !DILocation(line: 196, column: 26, scope: !863)
!895 = !DILocation(line: 196, column: 29, scope: !863)
!896 = !DILocation(line: 196, column: 49, scope: !863)
!897 = !DILocation(line: 196, column: 43, scope: !863)
!898 = !DILocation(line: 196, column: 46, scope: !863)
!899 = !DILocation(line: 196, column: 66, scope: !863)
!900 = !DILocation(line: 196, column: 60, scope: !863)
!901 = !DILocation(line: 196, column: 63, scope: !863)
!902 = !DILocation(line: 197, column: 15, scope: !863)
!903 = !DILocation(line: 197, column: 9, scope: !863)
!904 = !DILocation(line: 197, column: 12, scope: !863)
!905 = !DILocation(line: 197, column: 32, scope: !863)
!906 = !DILocation(line: 197, column: 26, scope: !863)
!907 = !DILocation(line: 197, column: 29, scope: !863)
!908 = !DILocation(line: 197, column: 49, scope: !863)
!909 = !DILocation(line: 197, column: 43, scope: !863)
!910 = !DILocation(line: 197, column: 46, scope: !863)
!911 = !DILocation(line: 197, column: 66, scope: !863)
!912 = !DILocation(line: 197, column: 60, scope: !863)
!913 = !DILocation(line: 197, column: 63, scope: !863)
!914 = !DILocation(line: 198, column: 15, scope: !863)
!915 = !DILocation(line: 198, column: 9, scope: !863)
!916 = !DILocation(line: 198, column: 12, scope: !863)
!917 = !DILocation(line: 198, column: 32, scope: !863)
!918 = !DILocation(line: 198, column: 26, scope: !863)
!919 = !DILocation(line: 198, column: 29, scope: !863)
!920 = !DILocation(line: 198, column: 50, scope: !863)
!921 = !DILocation(line: 198, column: 43, scope: !863)
!922 = !DILocation(line: 198, column: 47, scope: !863)
!923 = !DILocation(line: 198, column: 67, scope: !863)
!924 = !DILocation(line: 198, column: 60, scope: !863)
!925 = !DILocation(line: 198, column: 64, scope: !863)
!926 = !DILocation(line: 199, column: 20, scope: !863)
!927 = !DILocation(line: 199, column: 23, scope: !863)
!928 = !DILocation(line: 199, column: 26, scope: !863)
!929 = !DILocation(line: 199, column: 29, scope: !863)
!930 = !DILocation(line: 199, column: 32, scope: !863)
!931 = !DILocation(line: 199, column: 35, scope: !863)
!932 = !DILocation(line: 199, column: 38, scope: !863)
!933 = !DILocation(line: 199, column: 41, scope: !863)
!934 = !DILocation(line: 199, column: 44, scope: !863)
!935 = !DILocation(line: 199, column: 47, scope: !863)
!936 = !DILocation(line: 199, column: 50, scope: !863)
!937 = !DILocation(line: 199, column: 54, scope: !863)
!938 = !DILocation(line: 199, column: 9, scope: !863)
!939 = !DILocation(line: 200, column: 20, scope: !863)
!940 = !DILocation(line: 200, column: 23, scope: !863)
!941 = !DILocation(line: 200, column: 26, scope: !863)
!942 = !DILocation(line: 200, column: 29, scope: !863)
!943 = !DILocation(line: 200, column: 32, scope: !863)
!944 = !DILocation(line: 200, column: 35, scope: !863)
!945 = !DILocation(line: 200, column: 38, scope: !863)
!946 = !DILocation(line: 200, column: 41, scope: !863)
!947 = !DILocation(line: 200, column: 44, scope: !863)
!948 = !DILocation(line: 200, column: 47, scope: !863)
!949 = !DILocation(line: 200, column: 50, scope: !863)
!950 = !DILocation(line: 200, column: 54, scope: !863)
!951 = !DILocation(line: 200, column: 9, scope: !863)
!952 = !DILocation(line: 201, column: 20, scope: !863)
!953 = !DILocation(line: 201, column: 23, scope: !863)
!954 = !DILocation(line: 201, column: 26, scope: !863)
!955 = !DILocation(line: 201, column: 29, scope: !863)
!956 = !DILocation(line: 201, column: 32, scope: !863)
!957 = !DILocation(line: 201, column: 35, scope: !863)
!958 = !DILocation(line: 201, column: 38, scope: !863)
!959 = !DILocation(line: 201, column: 41, scope: !863)
!960 = !DILocation(line: 201, column: 44, scope: !863)
!961 = !DILocation(line: 201, column: 47, scope: !863)
!962 = !DILocation(line: 201, column: 50, scope: !863)
!963 = !DILocation(line: 201, column: 54, scope: !863)
!964 = !DILocation(line: 201, column: 9, scope: !863)
!965 = !DILocation(line: 202, column: 5, scope: !863)
!966 = distinct !DISubprogram(name: "Init", linkageName: "_ZN10SpookyHash4InitEmm", scope: !18, file: !1, line: 211, type: !54, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !53, retainedNodes: !90)
!967 = !DILocalVariable(name: "this", arg: 1, scope: !966, type: !968, flags: DIFlagArtificial | DIFlagObjectPointer)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!969 = !DILocation(line: 0, scope: !966)
!970 = !DILocalVariable(name: "seed1", arg: 2, scope: !966, file: !1, line: 211, type: !12)
!971 = !DILocation(line: 211, column: 30, scope: !966)
!972 = !DILocalVariable(name: "seed2", arg: 3, scope: !966, file: !1, line: 211, type: !12)
!973 = !DILocation(line: 211, column: 44, scope: !966)
!974 = !DILocation(line: 213, column: 5, scope: !966)
!975 = !DILocation(line: 213, column: 14, scope: !966)
!976 = !DILocation(line: 214, column: 5, scope: !966)
!977 = !DILocation(line: 214, column: 17, scope: !966)
!978 = !DILocation(line: 215, column: 18, scope: !966)
!979 = !DILocation(line: 215, column: 5, scope: !966)
!980 = !DILocation(line: 215, column: 16, scope: !966)
!981 = !DILocation(line: 216, column: 18, scope: !966)
!982 = !DILocation(line: 216, column: 5, scope: !966)
!983 = !DILocation(line: 216, column: 16, scope: !966)
!984 = !DILocation(line: 217, column: 1, scope: !966)
!985 = distinct !DISubprogram(name: "Update", linkageName: "_ZN10SpookyHash6UpdateEPKvm", scope: !18, file: !1, line: 221, type: !58, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !57, retainedNodes: !90)
!986 = !DILocalVariable(name: "this", arg: 1, scope: !985, type: !968, flags: DIFlagArtificial | DIFlagObjectPointer)
!987 = !DILocation(line: 0, scope: !985)
!988 = !DILocalVariable(name: "message", arg: 2, scope: !985, file: !1, line: 221, type: !41)
!989 = !DILocation(line: 221, column: 37, scope: !985)
!990 = !DILocalVariable(name: "length", arg: 3, scope: !985, file: !1, line: 221, type: !22)
!991 = !DILocation(line: 221, column: 53, scope: !985)
!992 = !DILocalVariable(name: "h0", scope: !985, file: !1, line: 223, type: !12)
!993 = !DILocation(line: 223, column: 12, scope: !985)
!994 = !DILocalVariable(name: "h1", scope: !985, file: !1, line: 223, type: !12)
!995 = !DILocation(line: 223, column: 15, scope: !985)
!996 = !DILocalVariable(name: "h2", scope: !985, file: !1, line: 223, type: !12)
!997 = !DILocation(line: 223, column: 18, scope: !985)
!998 = !DILocalVariable(name: "h3", scope: !985, file: !1, line: 223, type: !12)
!999 = !DILocation(line: 223, column: 21, scope: !985)
!1000 = !DILocalVariable(name: "h4", scope: !985, file: !1, line: 223, type: !12)
!1001 = !DILocation(line: 223, column: 24, scope: !985)
!1002 = !DILocalVariable(name: "h5", scope: !985, file: !1, line: 223, type: !12)
!1003 = !DILocation(line: 223, column: 27, scope: !985)
!1004 = !DILocalVariable(name: "h6", scope: !985, file: !1, line: 223, type: !12)
!1005 = !DILocation(line: 223, column: 30, scope: !985)
!1006 = !DILocalVariable(name: "h7", scope: !985, file: !1, line: 223, type: !12)
!1007 = !DILocation(line: 223, column: 33, scope: !985)
!1008 = !DILocalVariable(name: "h8", scope: !985, file: !1, line: 223, type: !12)
!1009 = !DILocation(line: 223, column: 36, scope: !985)
!1010 = !DILocalVariable(name: "h9", scope: !985, file: !1, line: 223, type: !12)
!1011 = !DILocation(line: 223, column: 39, scope: !985)
!1012 = !DILocalVariable(name: "h10", scope: !985, file: !1, line: 223, type: !12)
!1013 = !DILocation(line: 223, column: 42, scope: !985)
!1014 = !DILocalVariable(name: "h11", scope: !985, file: !1, line: 223, type: !12)
!1015 = !DILocation(line: 223, column: 46, scope: !985)
!1016 = !DILocalVariable(name: "newLength", scope: !985, file: !1, line: 224, type: !22)
!1017 = !DILocation(line: 224, column: 12, scope: !985)
!1018 = !DILocation(line: 224, column: 24, scope: !985)
!1019 = !DILocation(line: 224, column: 33, scope: !985)
!1020 = !DILocation(line: 224, column: 31, scope: !985)
!1021 = !DILocalVariable(name: "remainder", scope: !985, file: !1, line: 225, type: !5)
!1022 = !DILocation(line: 225, column: 12, scope: !985)
!1023 = !DILocalVariable(name: "u", scope: !985, file: !1, line: 231, type: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !985, file: !1, line: 226, size: 64, flags: DIFlagTypePassByValue, elements: !1025)
!1025 = !{!1026, !1027, !1028}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "p8", scope: !1024, file: !1, line: 228, baseType: !3, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "p64", scope: !1024, file: !1, line: 229, baseType: !17, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1024, file: !1, line: 230, baseType: !22, size: 64)
!1029 = !DILocation(line: 231, column: 7, scope: !985)
!1030 = !DILocalVariable(name: "end", scope: !985, file: !1, line: 232, type: !70)
!1031 = !DILocation(line: 232, column: 19, scope: !985)
!1032 = !DILocation(line: 235, column: 9, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !985, file: !1, line: 235, column: 9)
!1034 = !DILocation(line: 235, column: 19, scope: !1033)
!1035 = !DILocation(line: 235, column: 9, scope: !985)
!1036 = !DILocation(line: 237, column: 44, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 236, column: 5)
!1038 = !DILocation(line: 237, column: 17, scope: !1037)
!1039 = !DILocation(line: 237, column: 53, scope: !1037)
!1040 = !DILocation(line: 237, column: 67, scope: !1037)
!1041 = !DILocation(line: 237, column: 76, scope: !1037)
!1042 = !DILocation(line: 237, column: 9, scope: !1037)
!1043 = !DILocation(line: 238, column: 20, scope: !1037)
!1044 = !DILocation(line: 238, column: 29, scope: !1037)
!1045 = !DILocation(line: 238, column: 27, scope: !1037)
!1046 = !DILocation(line: 238, column: 9, scope: !1037)
!1047 = !DILocation(line: 238, column: 18, scope: !1037)
!1048 = !DILocation(line: 239, column: 30, scope: !1037)
!1049 = !DILocation(line: 239, column: 9, scope: !1037)
!1050 = !DILocation(line: 239, column: 21, scope: !1037)
!1051 = !DILocation(line: 240, column: 9, scope: !1037)
!1052 = !DILocation(line: 244, column: 9, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !985, file: !1, line: 244, column: 9)
!1054 = !DILocation(line: 244, column: 18, scope: !1053)
!1055 = !DILocation(line: 244, column: 9, scope: !985)
!1056 = !DILocation(line: 246, column: 24, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 245, column: 5)
!1058 = !DILocation(line: 246, column: 22, scope: !1057)
!1059 = !DILocation(line: 246, column: 17, scope: !1057)
!1060 = !DILocation(line: 246, column: 14, scope: !1057)
!1061 = !DILocation(line: 246, column: 11, scope: !1057)
!1062 = !DILocation(line: 247, column: 24, scope: !1057)
!1063 = !DILocation(line: 247, column: 22, scope: !1057)
!1064 = !DILocation(line: 247, column: 17, scope: !1057)
!1065 = !DILocation(line: 247, column: 14, scope: !1057)
!1066 = !DILocation(line: 247, column: 11, scope: !1057)
!1067 = !DILocation(line: 248, column: 22, scope: !1057)
!1068 = !DILocation(line: 248, column: 17, scope: !1057)
!1069 = !DILocation(line: 248, column: 14, scope: !1057)
!1070 = !DILocation(line: 248, column: 11, scope: !1057)
!1071 = !DILocation(line: 249, column: 5, scope: !1057)
!1072 = !DILocation(line: 252, column: 14, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 251, column: 5)
!1074 = !DILocation(line: 252, column: 12, scope: !1073)
!1075 = !DILocation(line: 253, column: 14, scope: !1073)
!1076 = !DILocation(line: 253, column: 12, scope: !1073)
!1077 = !DILocation(line: 254, column: 14, scope: !1073)
!1078 = !DILocation(line: 254, column: 12, scope: !1073)
!1079 = !DILocation(line: 255, column: 14, scope: !1073)
!1080 = !DILocation(line: 255, column: 12, scope: !1073)
!1081 = !DILocation(line: 256, column: 14, scope: !1073)
!1082 = !DILocation(line: 256, column: 12, scope: !1073)
!1083 = !DILocation(line: 257, column: 14, scope: !1073)
!1084 = !DILocation(line: 257, column: 12, scope: !1073)
!1085 = !DILocation(line: 258, column: 14, scope: !1073)
!1086 = !DILocation(line: 258, column: 12, scope: !1073)
!1087 = !DILocation(line: 259, column: 14, scope: !1073)
!1088 = !DILocation(line: 259, column: 12, scope: !1073)
!1089 = !DILocation(line: 260, column: 14, scope: !1073)
!1090 = !DILocation(line: 260, column: 12, scope: !1073)
!1091 = !DILocation(line: 261, column: 14, scope: !1073)
!1092 = !DILocation(line: 261, column: 12, scope: !1073)
!1093 = !DILocation(line: 262, column: 15, scope: !1073)
!1094 = !DILocation(line: 262, column: 13, scope: !1073)
!1095 = !DILocation(line: 263, column: 15, scope: !1073)
!1096 = !DILocation(line: 263, column: 13, scope: !1073)
!1097 = !DILocation(line: 265, column: 16, scope: !985)
!1098 = !DILocation(line: 265, column: 25, scope: !985)
!1099 = !DILocation(line: 265, column: 23, scope: !985)
!1100 = !DILocation(line: 265, column: 5, scope: !985)
!1101 = !DILocation(line: 265, column: 14, scope: !985)
!1102 = !DILocation(line: 268, column: 9, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !985, file: !1, line: 268, column: 9)
!1104 = !DILocation(line: 268, column: 9, scope: !985)
!1105 = !DILocalVariable(name: "prefix", scope: !1106, file: !1, line: 270, type: !5)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 269, column: 5)
!1107 = !DILocation(line: 270, column: 15, scope: !1106)
!1108 = !DILocation(line: 270, column: 35, scope: !1106)
!1109 = !DILocation(line: 270, column: 34, scope: !1106)
!1110 = !DILocation(line: 270, column: 24, scope: !1106)
!1111 = !DILocation(line: 271, column: 45, scope: !1106)
!1112 = !DILocation(line: 271, column: 18, scope: !1106)
!1113 = !DILocation(line: 271, column: 54, scope: !1106)
!1114 = !DILocation(line: 271, column: 69, scope: !1106)
!1115 = !DILocation(line: 271, column: 78, scope: !1106)
!1116 = !DILocation(line: 271, column: 9, scope: !1106)
!1117 = !DILocation(line: 272, column: 17, scope: !1106)
!1118 = !DILocation(line: 272, column: 15, scope: !1106)
!1119 = !DILocation(line: 273, column: 15, scope: !1106)
!1120 = !DILocation(line: 273, column: 9, scope: !1106)
!1121 = !DILocation(line: 274, column: 16, scope: !1106)
!1122 = !DILocation(line: 274, column: 14, scope: !1106)
!1123 = !DILocation(line: 274, column: 9, scope: !1106)
!1124 = !DILocation(line: 275, column: 44, scope: !1106)
!1125 = !DILocation(line: 275, column: 56, scope: !1106)
!1126 = !DILocation(line: 275, column: 54, scope: !1106)
!1127 = !DILocation(line: 275, column: 14, scope: !1106)
!1128 = !DILocation(line: 276, column: 19, scope: !1106)
!1129 = !DILocation(line: 276, column: 16, scope: !1106)
!1130 = !DILocation(line: 277, column: 5, scope: !1106)
!1131 = !DILocation(line: 280, column: 43, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 279, column: 5)
!1133 = !DILocation(line: 280, column: 14, scope: !1132)
!1134 = !DILocation(line: 284, column: 13, scope: !985)
!1135 = !DILocation(line: 284, column: 20, scope: !985)
!1136 = !DILocation(line: 284, column: 26, scope: !985)
!1137 = !DILocation(line: 284, column: 40, scope: !985)
!1138 = !DILocation(line: 284, column: 17, scope: !985)
!1139 = !DILocation(line: 284, column: 9, scope: !985)
!1140 = !DILocation(line: 285, column: 36, scope: !985)
!1141 = !DILocation(line: 285, column: 76, scope: !985)
!1142 = !DILocation(line: 285, column: 83, scope: !985)
!1143 = !DILocation(line: 285, column: 80, scope: !985)
!1144 = !DILocation(line: 285, column: 42, scope: !985)
!1145 = !DILocation(line: 285, column: 15, scope: !985)
!1146 = !DILocation(line: 288, column: 9, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 287, column: 5)
!1148 = distinct !DILexicalBlock(scope: !985, file: !1, line: 286, column: 9)
!1149 = !DILocation(line: 288, column: 18, scope: !1147)
!1150 = !DILocation(line: 288, column: 24, scope: !1147)
!1151 = !DILocation(line: 288, column: 22, scope: !1147)
!1152 = !DILocation(line: 290, column: 19, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1147, file: !1, line: 289, column: 9)
!1154 = !DILocation(line: 290, column: 13, scope: !1153)
!1155 = !DILocation(line: 291, column: 19, scope: !1153)
!1156 = distinct !{!1156, !1146, !1157, !166}
!1157 = !DILocation(line: 292, column: 9, scope: !1147)
!1158 = !DILocation(line: 305, column: 19, scope: !985)
!1159 = !DILocation(line: 305, column: 5, scope: !985)
!1160 = !DILocation(line: 305, column: 17, scope: !985)
!1161 = !DILocation(line: 306, column: 12, scope: !985)
!1162 = !DILocation(line: 306, column: 5, scope: !985)
!1163 = !DILocation(line: 306, column: 20, scope: !985)
!1164 = !DILocation(line: 306, column: 25, scope: !985)
!1165 = !DILocation(line: 309, column: 18, scope: !985)
!1166 = !DILocation(line: 309, column: 5, scope: !985)
!1167 = !DILocation(line: 309, column: 16, scope: !985)
!1168 = !DILocation(line: 310, column: 18, scope: !985)
!1169 = !DILocation(line: 310, column: 5, scope: !985)
!1170 = !DILocation(line: 310, column: 16, scope: !985)
!1171 = !DILocation(line: 311, column: 18, scope: !985)
!1172 = !DILocation(line: 311, column: 5, scope: !985)
!1173 = !DILocation(line: 311, column: 16, scope: !985)
!1174 = !DILocation(line: 312, column: 18, scope: !985)
!1175 = !DILocation(line: 312, column: 5, scope: !985)
!1176 = !DILocation(line: 312, column: 16, scope: !985)
!1177 = !DILocation(line: 313, column: 18, scope: !985)
!1178 = !DILocation(line: 313, column: 5, scope: !985)
!1179 = !DILocation(line: 313, column: 16, scope: !985)
!1180 = !DILocation(line: 314, column: 18, scope: !985)
!1181 = !DILocation(line: 314, column: 5, scope: !985)
!1182 = !DILocation(line: 314, column: 16, scope: !985)
!1183 = !DILocation(line: 315, column: 18, scope: !985)
!1184 = !DILocation(line: 315, column: 5, scope: !985)
!1185 = !DILocation(line: 315, column: 16, scope: !985)
!1186 = !DILocation(line: 316, column: 18, scope: !985)
!1187 = !DILocation(line: 316, column: 5, scope: !985)
!1188 = !DILocation(line: 316, column: 16, scope: !985)
!1189 = !DILocation(line: 317, column: 18, scope: !985)
!1190 = !DILocation(line: 317, column: 5, scope: !985)
!1191 = !DILocation(line: 317, column: 16, scope: !985)
!1192 = !DILocation(line: 318, column: 18, scope: !985)
!1193 = !DILocation(line: 318, column: 5, scope: !985)
!1194 = !DILocation(line: 318, column: 16, scope: !985)
!1195 = !DILocation(line: 319, column: 19, scope: !985)
!1196 = !DILocation(line: 319, column: 5, scope: !985)
!1197 = !DILocation(line: 319, column: 17, scope: !985)
!1198 = !DILocation(line: 320, column: 19, scope: !985)
!1199 = !DILocation(line: 320, column: 5, scope: !985)
!1200 = !DILocation(line: 320, column: 17, scope: !985)
!1201 = !DILocation(line: 321, column: 1, scope: !985)
!1202 = distinct !DISubprogram(name: "Final", linkageName: "_ZN10SpookyHash5FinalEPmS0_", scope: !18, file: !1, line: 325, type: !61, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !60, retainedNodes: !90)
!1203 = !DILocalVariable(name: "this", arg: 1, scope: !1202, type: !968, flags: DIFlagArtificial | DIFlagObjectPointer)
!1204 = !DILocation(line: 0, scope: !1202)
!1205 = !DILocalVariable(name: "hash1", arg: 2, scope: !1202, file: !1, line: 325, type: !17)
!1206 = !DILocation(line: 325, column: 32, scope: !1202)
!1207 = !DILocalVariable(name: "hash2", arg: 3, scope: !1202, file: !1, line: 325, type: !17)
!1208 = !DILocation(line: 325, column: 47, scope: !1202)
!1209 = !DILocation(line: 328, column: 9, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 328, column: 9)
!1211 = !DILocation(line: 328, column: 18, scope: !1210)
!1212 = !DILocation(line: 328, column: 9, scope: !1202)
!1213 = !DILocation(line: 330, column: 18, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1210, file: !1, line: 329, column: 5)
!1215 = !DILocation(line: 330, column: 10, scope: !1214)
!1216 = !DILocation(line: 330, column: 16, scope: !1214)
!1217 = !DILocation(line: 331, column: 18, scope: !1214)
!1218 = !DILocation(line: 331, column: 10, scope: !1214)
!1219 = !DILocation(line: 331, column: 16, scope: !1214)
!1220 = !DILocation(line: 332, column: 16, scope: !1214)
!1221 = !DILocation(line: 332, column: 24, scope: !1214)
!1222 = !DILocation(line: 332, column: 34, scope: !1214)
!1223 = !DILocation(line: 332, column: 41, scope: !1214)
!1224 = !DILocation(line: 332, column: 9, scope: !1214)
!1225 = !DILocation(line: 333, column: 9, scope: !1214)
!1226 = !DILocalVariable(name: "data", scope: !1202, file: !1, line: 336, type: !17)
!1227 = !DILocation(line: 336, column: 13, scope: !1202)
!1228 = !DILocation(line: 336, column: 42, scope: !1202)
!1229 = !DILocalVariable(name: "remainder", scope: !1202, file: !1, line: 337, type: !5)
!1230 = !DILocation(line: 337, column: 11, scope: !1202)
!1231 = !DILocation(line: 337, column: 23, scope: !1202)
!1232 = !DILocalVariable(name: "h0", scope: !1202, file: !1, line: 339, type: !12)
!1233 = !DILocation(line: 339, column: 12, scope: !1202)
!1234 = !DILocation(line: 339, column: 17, scope: !1202)
!1235 = !DILocalVariable(name: "h1", scope: !1202, file: !1, line: 340, type: !12)
!1236 = !DILocation(line: 340, column: 12, scope: !1202)
!1237 = !DILocation(line: 340, column: 17, scope: !1202)
!1238 = !DILocalVariable(name: "h2", scope: !1202, file: !1, line: 341, type: !12)
!1239 = !DILocation(line: 341, column: 12, scope: !1202)
!1240 = !DILocation(line: 341, column: 17, scope: !1202)
!1241 = !DILocalVariable(name: "h3", scope: !1202, file: !1, line: 342, type: !12)
!1242 = !DILocation(line: 342, column: 12, scope: !1202)
!1243 = !DILocation(line: 342, column: 17, scope: !1202)
!1244 = !DILocalVariable(name: "h4", scope: !1202, file: !1, line: 343, type: !12)
!1245 = !DILocation(line: 343, column: 12, scope: !1202)
!1246 = !DILocation(line: 343, column: 17, scope: !1202)
!1247 = !DILocalVariable(name: "h5", scope: !1202, file: !1, line: 344, type: !12)
!1248 = !DILocation(line: 344, column: 12, scope: !1202)
!1249 = !DILocation(line: 344, column: 17, scope: !1202)
!1250 = !DILocalVariable(name: "h6", scope: !1202, file: !1, line: 345, type: !12)
!1251 = !DILocation(line: 345, column: 12, scope: !1202)
!1252 = !DILocation(line: 345, column: 17, scope: !1202)
!1253 = !DILocalVariable(name: "h7", scope: !1202, file: !1, line: 346, type: !12)
!1254 = !DILocation(line: 346, column: 12, scope: !1202)
!1255 = !DILocation(line: 346, column: 17, scope: !1202)
!1256 = !DILocalVariable(name: "h8", scope: !1202, file: !1, line: 347, type: !12)
!1257 = !DILocation(line: 347, column: 12, scope: !1202)
!1258 = !DILocation(line: 347, column: 17, scope: !1202)
!1259 = !DILocalVariable(name: "h9", scope: !1202, file: !1, line: 348, type: !12)
!1260 = !DILocation(line: 348, column: 12, scope: !1202)
!1261 = !DILocation(line: 348, column: 17, scope: !1202)
!1262 = !DILocalVariable(name: "h10", scope: !1202, file: !1, line: 349, type: !12)
!1263 = !DILocation(line: 349, column: 12, scope: !1202)
!1264 = !DILocation(line: 349, column: 18, scope: !1202)
!1265 = !DILocalVariable(name: "h11", scope: !1202, file: !1, line: 350, type: !12)
!1266 = !DILocation(line: 350, column: 12, scope: !1202)
!1267 = !DILocation(line: 350, column: 18, scope: !1202)
!1268 = !DILocation(line: 352, column: 9, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 352, column: 9)
!1270 = !DILocation(line: 352, column: 19, scope: !1269)
!1271 = !DILocation(line: 352, column: 9, scope: !1202)
!1272 = !DILocation(line: 355, column: 13, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 353, column: 5)
!1274 = !DILocation(line: 355, column: 9, scope: !1273)
!1275 = !DILocation(line: 356, column: 14, scope: !1273)
!1276 = !DILocation(line: 357, column: 19, scope: !1273)
!1277 = !DILocation(line: 358, column: 5, scope: !1273)
!1278 = !DILocation(line: 361, column: 40, scope: !1202)
!1279 = !DILocation(line: 361, column: 47, scope: !1202)
!1280 = !DILocation(line: 361, column: 13, scope: !1202)
!1281 = !DILocation(line: 361, column: 76, scope: !1202)
!1282 = !DILocation(line: 361, column: 75, scope: !1202)
!1283 = !DILocation(line: 361, column: 5, scope: !1202)
!1284 = !DILocation(line: 363, column: 57, scope: !1202)
!1285 = !DILocation(line: 363, column: 32, scope: !1202)
!1286 = !DILocation(line: 363, column: 5, scope: !1202)
!1287 = !DILocation(line: 363, column: 55, scope: !1202)
!1288 = !DILocation(line: 366, column: 9, scope: !1202)
!1289 = !DILocation(line: 366, column: 5, scope: !1202)
!1290 = !DILocation(line: 368, column: 14, scope: !1202)
!1291 = !DILocation(line: 368, column: 6, scope: !1202)
!1292 = !DILocation(line: 368, column: 12, scope: !1202)
!1293 = !DILocation(line: 369, column: 14, scope: !1202)
!1294 = !DILocation(line: 369, column: 6, scope: !1202)
!1295 = !DILocation(line: 369, column: 12, scope: !1202)
!1296 = !DILocation(line: 370, column: 1, scope: !1202)
!1297 = distinct !DISubprogram(name: "Rot64", linkageName: "_ZN10SpookyHash5Rot64Emi", scope: !18, file: !6, line: 117, type: !64, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !63, retainedNodes: !90)
!1298 = !DILocalVariable(name: "x", arg: 1, scope: !1297, file: !6, line: 117, type: !12)
!1299 = !DILocation(line: 117, column: 39, scope: !1297)
!1300 = !DILocalVariable(name: "k", arg: 2, scope: !1297, file: !6, line: 117, type: !66)
!1301 = !DILocation(line: 117, column: 46, scope: !1297)
!1302 = !DILocation(line: 119, column: 17, scope: !1297)
!1303 = !DILocation(line: 119, column: 22, scope: !1297)
!1304 = !DILocation(line: 119, column: 19, scope: !1297)
!1305 = !DILocation(line: 119, column: 28, scope: !1297)
!1306 = !DILocation(line: 119, column: 39, scope: !1297)
!1307 = !DILocation(line: 119, column: 37, scope: !1297)
!1308 = !DILocation(line: 119, column: 30, scope: !1297)
!1309 = !DILocation(line: 119, column: 25, scope: !1297)
!1310 = !DILocation(line: 119, column: 9, scope: !1297)
!1311 = distinct !DISubprogram(name: "EndPartial", linkageName: "_ZN10SpookyHash10EndPartialERmS0_S0_S0_S0_S0_S0_S0_S0_S0_S0_S0_", scope: !18, file: !6, line: 171, type: !73, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !72, retainedNodes: !90)
!1312 = !DILocalVariable(name: "h0", arg: 1, scope: !1311, file: !6, line: 172, type: !71)
!1313 = !DILocation(line: 172, column: 17, scope: !1311)
!1314 = !DILocalVariable(name: "h1", arg: 2, scope: !1311, file: !6, line: 172, type: !71)
!1315 = !DILocation(line: 172, column: 29, scope: !1311)
!1316 = !DILocalVariable(name: "h2", arg: 3, scope: !1311, file: !6, line: 172, type: !71)
!1317 = !DILocation(line: 172, column: 41, scope: !1311)
!1318 = !DILocalVariable(name: "h3", arg: 4, scope: !1311, file: !6, line: 172, type: !71)
!1319 = !DILocation(line: 172, column: 53, scope: !1311)
!1320 = !DILocalVariable(name: "h4", arg: 5, scope: !1311, file: !6, line: 173, type: !71)
!1321 = !DILocation(line: 173, column: 17, scope: !1311)
!1322 = !DILocalVariable(name: "h5", arg: 6, scope: !1311, file: !6, line: 173, type: !71)
!1323 = !DILocation(line: 173, column: 29, scope: !1311)
!1324 = !DILocalVariable(name: "h6", arg: 7, scope: !1311, file: !6, line: 173, type: !71)
!1325 = !DILocation(line: 173, column: 41, scope: !1311)
!1326 = !DILocalVariable(name: "h7", arg: 8, scope: !1311, file: !6, line: 173, type: !71)
!1327 = !DILocation(line: 173, column: 53, scope: !1311)
!1328 = !DILocalVariable(name: "h8", arg: 9, scope: !1311, file: !6, line: 174, type: !71)
!1329 = !DILocation(line: 174, column: 17, scope: !1311)
!1330 = !DILocalVariable(name: "h9", arg: 10, scope: !1311, file: !6, line: 174, type: !71)
!1331 = !DILocation(line: 174, column: 29, scope: !1311)
!1332 = !DILocalVariable(name: "h10", arg: 11, scope: !1311, file: !6, line: 174, type: !71)
!1333 = !DILocation(line: 174, column: 41, scope: !1311)
!1334 = !DILocalVariable(name: "h11", arg: 12, scope: !1311, file: !6, line: 174, type: !71)
!1335 = !DILocation(line: 174, column: 53, scope: !1311)
!1336 = !DILocation(line: 176, column: 15, scope: !1311)
!1337 = !DILocation(line: 176, column: 9, scope: !1311)
!1338 = !DILocation(line: 176, column: 12, scope: !1311)
!1339 = !DILocation(line: 176, column: 28, scope: !1311)
!1340 = !DILocation(line: 176, column: 22, scope: !1311)
!1341 = !DILocation(line: 176, column: 25, scope: !1311)
!1342 = !DILocation(line: 176, column: 46, scope: !1311)
!1343 = !DILocation(line: 176, column: 40, scope: !1311)
!1344 = !DILocation(line: 176, column: 35, scope: !1311)
!1345 = !DILocation(line: 176, column: 38, scope: !1311)
!1346 = !DILocation(line: 177, column: 15, scope: !1311)
!1347 = !DILocation(line: 177, column: 9, scope: !1311)
!1348 = !DILocation(line: 177, column: 12, scope: !1311)
!1349 = !DILocation(line: 177, column: 28, scope: !1311)
!1350 = !DILocation(line: 177, column: 22, scope: !1311)
!1351 = !DILocation(line: 177, column: 25, scope: !1311)
!1352 = !DILocation(line: 177, column: 46, scope: !1311)
!1353 = !DILocation(line: 177, column: 40, scope: !1311)
!1354 = !DILocation(line: 177, column: 35, scope: !1311)
!1355 = !DILocation(line: 177, column: 38, scope: !1311)
!1356 = !DILocation(line: 178, column: 15, scope: !1311)
!1357 = !DILocation(line: 178, column: 9, scope: !1311)
!1358 = !DILocation(line: 178, column: 12, scope: !1311)
!1359 = !DILocation(line: 178, column: 28, scope: !1311)
!1360 = !DILocation(line: 178, column: 22, scope: !1311)
!1361 = !DILocation(line: 178, column: 25, scope: !1311)
!1362 = !DILocation(line: 178, column: 46, scope: !1311)
!1363 = !DILocation(line: 178, column: 40, scope: !1311)
!1364 = !DILocation(line: 178, column: 35, scope: !1311)
!1365 = !DILocation(line: 178, column: 38, scope: !1311)
!1366 = !DILocation(line: 179, column: 15, scope: !1311)
!1367 = !DILocation(line: 179, column: 9, scope: !1311)
!1368 = !DILocation(line: 179, column: 12, scope: !1311)
!1369 = !DILocation(line: 179, column: 28, scope: !1311)
!1370 = !DILocation(line: 179, column: 22, scope: !1311)
!1371 = !DILocation(line: 179, column: 25, scope: !1311)
!1372 = !DILocation(line: 179, column: 46, scope: !1311)
!1373 = !DILocation(line: 179, column: 40, scope: !1311)
!1374 = !DILocation(line: 179, column: 35, scope: !1311)
!1375 = !DILocation(line: 179, column: 38, scope: !1311)
!1376 = !DILocation(line: 180, column: 15, scope: !1311)
!1377 = !DILocation(line: 180, column: 9, scope: !1311)
!1378 = !DILocation(line: 180, column: 12, scope: !1311)
!1379 = !DILocation(line: 180, column: 28, scope: !1311)
!1380 = !DILocation(line: 180, column: 22, scope: !1311)
!1381 = !DILocation(line: 180, column: 25, scope: !1311)
!1382 = !DILocation(line: 180, column: 46, scope: !1311)
!1383 = !DILocation(line: 180, column: 40, scope: !1311)
!1384 = !DILocation(line: 180, column: 35, scope: !1311)
!1385 = !DILocation(line: 180, column: 38, scope: !1311)
!1386 = !DILocation(line: 181, column: 15, scope: !1311)
!1387 = !DILocation(line: 181, column: 9, scope: !1311)
!1388 = !DILocation(line: 181, column: 12, scope: !1311)
!1389 = !DILocation(line: 181, column: 28, scope: !1311)
!1390 = !DILocation(line: 181, column: 22, scope: !1311)
!1391 = !DILocation(line: 181, column: 25, scope: !1311)
!1392 = !DILocation(line: 181, column: 46, scope: !1311)
!1393 = !DILocation(line: 181, column: 40, scope: !1311)
!1394 = !DILocation(line: 181, column: 35, scope: !1311)
!1395 = !DILocation(line: 181, column: 38, scope: !1311)
!1396 = !DILocation(line: 182, column: 15, scope: !1311)
!1397 = !DILocation(line: 182, column: 9, scope: !1311)
!1398 = !DILocation(line: 182, column: 12, scope: !1311)
!1399 = !DILocation(line: 182, column: 28, scope: !1311)
!1400 = !DILocation(line: 182, column: 22, scope: !1311)
!1401 = !DILocation(line: 182, column: 25, scope: !1311)
!1402 = !DILocation(line: 182, column: 46, scope: !1311)
!1403 = !DILocation(line: 182, column: 40, scope: !1311)
!1404 = !DILocation(line: 182, column: 35, scope: !1311)
!1405 = !DILocation(line: 182, column: 38, scope: !1311)
!1406 = !DILocation(line: 183, column: 15, scope: !1311)
!1407 = !DILocation(line: 183, column: 9, scope: !1311)
!1408 = !DILocation(line: 183, column: 12, scope: !1311)
!1409 = !DILocation(line: 183, column: 28, scope: !1311)
!1410 = !DILocation(line: 183, column: 22, scope: !1311)
!1411 = !DILocation(line: 183, column: 25, scope: !1311)
!1412 = !DILocation(line: 183, column: 46, scope: !1311)
!1413 = !DILocation(line: 183, column: 40, scope: !1311)
!1414 = !DILocation(line: 183, column: 35, scope: !1311)
!1415 = !DILocation(line: 183, column: 38, scope: !1311)
!1416 = !DILocation(line: 184, column: 15, scope: !1311)
!1417 = !DILocation(line: 184, column: 9, scope: !1311)
!1418 = !DILocation(line: 184, column: 12, scope: !1311)
!1419 = !DILocation(line: 184, column: 28, scope: !1311)
!1420 = !DILocation(line: 184, column: 22, scope: !1311)
!1421 = !DILocation(line: 184, column: 25, scope: !1311)
!1422 = !DILocation(line: 184, column: 46, scope: !1311)
!1423 = !DILocation(line: 184, column: 40, scope: !1311)
!1424 = !DILocation(line: 184, column: 35, scope: !1311)
!1425 = !DILocation(line: 184, column: 38, scope: !1311)
!1426 = !DILocation(line: 185, column: 15, scope: !1311)
!1427 = !DILocation(line: 185, column: 9, scope: !1311)
!1428 = !DILocation(line: 185, column: 12, scope: !1311)
!1429 = !DILocation(line: 185, column: 28, scope: !1311)
!1430 = !DILocation(line: 185, column: 22, scope: !1311)
!1431 = !DILocation(line: 185, column: 25, scope: !1311)
!1432 = !DILocation(line: 185, column: 46, scope: !1311)
!1433 = !DILocation(line: 185, column: 40, scope: !1311)
!1434 = !DILocation(line: 185, column: 35, scope: !1311)
!1435 = !DILocation(line: 185, column: 38, scope: !1311)
!1436 = !DILocation(line: 186, column: 15, scope: !1311)
!1437 = !DILocation(line: 186, column: 9, scope: !1311)
!1438 = !DILocation(line: 186, column: 12, scope: !1311)
!1439 = !DILocation(line: 186, column: 28, scope: !1311)
!1440 = !DILocation(line: 186, column: 22, scope: !1311)
!1441 = !DILocation(line: 186, column: 25, scope: !1311)
!1442 = !DILocation(line: 186, column: 46, scope: !1311)
!1443 = !DILocation(line: 186, column: 40, scope: !1311)
!1444 = !DILocation(line: 186, column: 35, scope: !1311)
!1445 = !DILocation(line: 186, column: 38, scope: !1311)
!1446 = !DILocation(line: 187, column: 15, scope: !1311)
!1447 = !DILocation(line: 187, column: 9, scope: !1311)
!1448 = !DILocation(line: 187, column: 12, scope: !1311)
!1449 = !DILocation(line: 187, column: 28, scope: !1311)
!1450 = !DILocation(line: 187, column: 22, scope: !1311)
!1451 = !DILocation(line: 187, column: 25, scope: !1311)
!1452 = !DILocation(line: 187, column: 46, scope: !1311)
!1453 = !DILocation(line: 187, column: 40, scope: !1311)
!1454 = !DILocation(line: 187, column: 35, scope: !1311)
!1455 = !DILocation(line: 187, column: 38, scope: !1311)
!1456 = !DILocation(line: 188, column: 5, scope: !1311)
