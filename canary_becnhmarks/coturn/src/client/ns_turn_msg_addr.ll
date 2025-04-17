; ModuleID = '/home/raj/coturn/src/client/ns_turn_msg_addr.c'
source_filename = "/home/raj/coturn/src/client/ns_turn_msg_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_addr_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 !dbg !31 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !95, metadata !DIExpression()), !dbg !96
  store ptr %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !97, metadata !DIExpression()), !dbg !98
  store ptr %2, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 %3, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !101, metadata !DIExpression()), !dbg !102
  store i32 %4, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !103, metadata !DIExpression()), !dbg !104
  store ptr %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !105, metadata !DIExpression()), !dbg !106
  %18 = load ptr, ptr %9, align 8, !dbg !107
  %19 = icmp ne ptr %18, null, !dbg !107
  br i1 %19, label %20, label %29, !dbg !109

20:                                               ; preds = %6
  %21 = load ptr, ptr %10, align 8, !dbg !110
  %22 = icmp ne ptr %21, null, !dbg !110
  br i1 %22, label %23, label %29, !dbg !111

23:                                               ; preds = %20
  %24 = load ptr, ptr %8, align 8, !dbg !112
  %25 = icmp ne ptr %24, null, !dbg !112
  br i1 %25, label %26, label %29, !dbg !113

26:                                               ; preds = %23
  %27 = load ptr, ptr %13, align 8, !dbg !114
  %28 = icmp ne ptr %27, null, !dbg !114
  br i1 %28, label %30, label %29, !dbg !115

29:                                               ; preds = %26, %23, %20, %6
  store i32 -1, ptr %7, align 4, !dbg !116
  br label %187, !dbg !116

30:                                               ; preds = %26
  %31 = load ptr, ptr %8, align 8, !dbg !117
  %32 = getelementptr inbounds %struct.sockaddr, ptr %31, i32 0, i32 0, !dbg !119
  %33 = load i16, ptr %32, align 4, !dbg !119
  %34 = zext i16 %33 to i32, !dbg !117
  %35 = icmp eq i32 %34, 2, !dbg !120
  br i1 %35, label %42, label %36, !dbg !121

36:                                               ; preds = %30
  %37 = load ptr, ptr %8, align 8, !dbg !122
  %38 = getelementptr inbounds %struct.sockaddr, ptr %37, i32 0, i32 0, !dbg !123
  %39 = load i16, ptr %38, align 4, !dbg !123
  %40 = zext i16 %39 to i32, !dbg !122
  %41 = icmp eq i32 %40, 0, !dbg !124
  br i1 %41, label %42, label %86, !dbg !125

42:                                               ; preds = %36, %30
  %43 = load ptr, ptr %10, align 8, !dbg !126
  store i32 8, ptr %43, align 4, !dbg !128
  %44 = load ptr, ptr %9, align 8, !dbg !129
  %45 = getelementptr inbounds i8, ptr %44, i64 0, !dbg !129
  store i8 0, ptr %45, align 1, !dbg !130
  %46 = load ptr, ptr %9, align 8, !dbg !131
  %47 = getelementptr inbounds i8, ptr %46, i64 1, !dbg !131
  store i8 1, ptr %47, align 1, !dbg !132
  %48 = load i32, ptr %11, align 4, !dbg !133
  %49 = icmp ne i32 %48, 0, !dbg !133
  br i1 %49, label %50, label %73, !dbg !135

50:                                               ; preds = %42
  %51 = load ptr, ptr %8, align 8, !dbg !136
  %52 = getelementptr inbounds %struct.sockaddr_in, ptr %51, i32 0, i32 1, !dbg !138
  %53 = load i16, ptr %52, align 2, !dbg !138
  %54 = zext i16 %53 to i32, !dbg !139
  %55 = load i32, ptr %12, align 4, !dbg !140
  %56 = lshr i32 %55, 16, !dbg !140
  %57 = trunc i32 %56 to i16, !dbg !140
  %58 = call zeroext i16 @ntohs(i16 noundef zeroext %57) #4, !dbg !140
  %59 = zext i16 %58 to i32, !dbg !140
  %60 = xor i32 %54, %59, !dbg !141
  %61 = trunc i32 %60 to i16, !dbg !139
  %62 = load ptr, ptr %9, align 8, !dbg !142
  %63 = getelementptr inbounds i16, ptr %62, i64 1, !dbg !143
  store i16 %61, ptr %63, align 2, !dbg !144
  %64 = load ptr, ptr %8, align 8, !dbg !145
  %65 = getelementptr inbounds %struct.sockaddr_in, ptr %64, i32 0, i32 2, !dbg !146
  %66 = getelementptr inbounds %struct.in_addr, ptr %65, i32 0, i32 0, !dbg !147
  %67 = load i32, ptr %66, align 4, !dbg !147
  %68 = load i32, ptr %12, align 4, !dbg !148
  %69 = call i32 @ntohl(i32 noundef %68) #4, !dbg !148
  %70 = xor i32 %67, %69, !dbg !149
  %71 = load ptr, ptr %9, align 8, !dbg !150
  %72 = getelementptr inbounds i32, ptr %71, i64 1, !dbg !151
  store i32 %70, ptr %72, align 4, !dbg !152
  br label %85, !dbg !153

73:                                               ; preds = %42
  %74 = load ptr, ptr %8, align 8, !dbg !154
  %75 = getelementptr inbounds %struct.sockaddr_in, ptr %74, i32 0, i32 1, !dbg !156
  %76 = load i16, ptr %75, align 2, !dbg !156
  %77 = load ptr, ptr %9, align 8, !dbg !157
  %78 = getelementptr inbounds i16, ptr %77, i64 1, !dbg !158
  store i16 %76, ptr %78, align 2, !dbg !159
  %79 = load ptr, ptr %8, align 8, !dbg !160
  %80 = getelementptr inbounds %struct.sockaddr_in, ptr %79, i32 0, i32 2, !dbg !161
  %81 = getelementptr inbounds %struct.in_addr, ptr %80, i32 0, i32 0, !dbg !162
  %82 = load i32, ptr %81, align 4, !dbg !162
  %83 = load ptr, ptr %9, align 8, !dbg !163
  %84 = getelementptr inbounds i32, ptr %83, i64 1, !dbg !164
  store i32 %82, ptr %84, align 4, !dbg !165
  br label %85

85:                                               ; preds = %73, %50
  br label %186, !dbg !166

86:                                               ; preds = %36
  %87 = load ptr, ptr %8, align 8, !dbg !167
  %88 = getelementptr inbounds %struct.sockaddr, ptr %87, i32 0, i32 0, !dbg !169
  %89 = load i16, ptr %88, align 4, !dbg !169
  %90 = zext i16 %89 to i32, !dbg !167
  %91 = icmp eq i32 %90, 10, !dbg !170
  br i1 %91, label %92, label %184, !dbg !171

92:                                               ; preds = %86
  %93 = load ptr, ptr %10, align 8, !dbg !172
  store i32 20, ptr %93, align 4, !dbg !174
  %94 = load ptr, ptr %9, align 8, !dbg !175
  %95 = getelementptr inbounds i8, ptr %94, i64 0, !dbg !175
  store i8 0, ptr %95, align 1, !dbg !176
  %96 = load ptr, ptr %9, align 8, !dbg !177
  %97 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !177
  store i8 2, ptr %97, align 1, !dbg !178
  %98 = load i32, ptr %11, align 4, !dbg !179
  %99 = icmp ne i32 %98, 0, !dbg !179
  br i1 %99, label %100, label %173, !dbg !181

100:                                              ; preds = %92
  call void @llvm.dbg.declare(metadata ptr %14, metadata !182, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata ptr %15, metadata !185, metadata !DIExpression()), !dbg !186
  %101 = load ptr, ptr %9, align 8, !dbg !187
  %102 = getelementptr inbounds i8, ptr %101, i64 4, !dbg !188
  store ptr %102, ptr %15, align 8, !dbg !186
  call void @llvm.dbg.declare(metadata ptr %16, metadata !189, metadata !DIExpression()), !dbg !190
  %103 = load ptr, ptr %8, align 8, !dbg !191
  %104 = getelementptr inbounds %struct.sockaddr_in6, ptr %103, i32 0, i32 3, !dbg !192
  store ptr %104, ptr %16, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata ptr %17, metadata !193, metadata !DIExpression()), !dbg !194
  %105 = load i32, ptr %12, align 4, !dbg !195
  %106 = call i32 @ntohl(i32 noundef %105) #4, !dbg !195
  store i32 %106, ptr %17, align 4, !dbg !194
  %107 = load ptr, ptr %8, align 8, !dbg !196
  %108 = getelementptr inbounds %struct.sockaddr_in6, ptr %107, i32 0, i32 1, !dbg !197
  %109 = load i16, ptr %108, align 2, !dbg !197
  %110 = zext i16 %109 to i32, !dbg !196
  %111 = load i32, ptr %12, align 4, !dbg !198
  %112 = lshr i32 %111, 16, !dbg !198
  %113 = trunc i32 %112 to i16, !dbg !198
  %114 = call zeroext i16 @ntohs(i16 noundef zeroext %113) #4, !dbg !198
  %115 = zext i16 %114 to i32, !dbg !198
  %116 = xor i32 %110, %115, !dbg !199
  %117 = trunc i32 %116 to i16, !dbg !196
  %118 = load ptr, ptr %9, align 8, !dbg !200
  %119 = getelementptr inbounds i16, ptr %118, i64 1, !dbg !201
  store i16 %117, ptr %119, align 2, !dbg !202
  store i32 0, ptr %14, align 4, !dbg !203
  br label %120, !dbg !205

120:                                              ; preds = %141, %100
  %121 = load i32, ptr %14, align 4, !dbg !206
  %122 = icmp ult i32 %121, 4, !dbg !208
  br i1 %122, label %123, label %144, !dbg !209

123:                                              ; preds = %120
  %124 = load ptr, ptr %16, align 8, !dbg !210
  %125 = load i32, ptr %14, align 4, !dbg !212
  %126 = zext i32 %125 to i64, !dbg !210
  %127 = getelementptr inbounds i8, ptr %124, i64 %126, !dbg !210
  %128 = load i8, ptr %127, align 1, !dbg !210
  %129 = zext i8 %128 to i32, !dbg !210
  %130 = load i32, ptr %14, align 4, !dbg !213
  %131 = zext i32 %130 to i64, !dbg !214
  %132 = getelementptr inbounds i8, ptr %17, i64 %131, !dbg !214
  %133 = load i8, ptr %132, align 1, !dbg !214
  %134 = zext i8 %133 to i32, !dbg !214
  %135 = xor i32 %129, %134, !dbg !215
  %136 = trunc i32 %135 to i8, !dbg !216
  %137 = load ptr, ptr %15, align 8, !dbg !217
  %138 = load i32, ptr %14, align 4, !dbg !218
  %139 = zext i32 %138 to i64, !dbg !217
  %140 = getelementptr inbounds i8, ptr %137, i64 %139, !dbg !217
  store i8 %136, ptr %140, align 1, !dbg !219
  br label %141, !dbg !220

141:                                              ; preds = %123
  %142 = load i32, ptr %14, align 4, !dbg !221
  %143 = add i32 %142, 1, !dbg !221
  store i32 %143, ptr %14, align 4, !dbg !221
  br label %120, !dbg !222, !llvm.loop !223

144:                                              ; preds = %120
  store i32 0, ptr %14, align 4, !dbg !226
  br label %145, !dbg !228

145:                                              ; preds = %169, %144
  %146 = load i32, ptr %14, align 4, !dbg !229
  %147 = icmp ult i32 %146, 12, !dbg !231
  br i1 %147, label %148, label %172, !dbg !232

148:                                              ; preds = %145
  %149 = load ptr, ptr %16, align 8, !dbg !233
  %150 = load i32, ptr %14, align 4, !dbg !235
  %151 = add i32 %150, 4, !dbg !236
  %152 = zext i32 %151 to i64, !dbg !233
  %153 = getelementptr inbounds i8, ptr %149, i64 %152, !dbg !233
  %154 = load i8, ptr %153, align 1, !dbg !233
  %155 = zext i8 %154 to i32, !dbg !233
  %156 = load ptr, ptr %13, align 8, !dbg !237
  %157 = load i32, ptr %14, align 4, !dbg !238
  %158 = zext i32 %157 to i64, !dbg !237
  %159 = getelementptr inbounds i8, ptr %156, i64 %158, !dbg !237
  %160 = load i8, ptr %159, align 1, !dbg !237
  %161 = zext i8 %160 to i32, !dbg !237
  %162 = xor i32 %155, %161, !dbg !239
  %163 = trunc i32 %162 to i8, !dbg !240
  %164 = load ptr, ptr %15, align 8, !dbg !241
  %165 = load i32, ptr %14, align 4, !dbg !242
  %166 = add i32 %165, 4, !dbg !243
  %167 = zext i32 %166 to i64, !dbg !241
  %168 = getelementptr inbounds i8, ptr %164, i64 %167, !dbg !241
  store i8 %163, ptr %168, align 1, !dbg !244
  br label %169, !dbg !245

169:                                              ; preds = %148
  %170 = load i32, ptr %14, align 4, !dbg !246
  %171 = add i32 %170, 1, !dbg !246
  store i32 %171, ptr %14, align 4, !dbg !246
  br label %145, !dbg !247, !llvm.loop !248

172:                                              ; preds = %145
  br label %183, !dbg !250

173:                                              ; preds = %92
  %174 = load ptr, ptr %8, align 8, !dbg !251
  %175 = getelementptr inbounds %struct.sockaddr_in6, ptr %174, i32 0, i32 1, !dbg !253
  %176 = load i16, ptr %175, align 2, !dbg !253
  %177 = load ptr, ptr %9, align 8, !dbg !254
  %178 = getelementptr inbounds i16, ptr %177, i64 1, !dbg !255
  store i16 %176, ptr %178, align 2, !dbg !256
  %179 = load ptr, ptr %8, align 8, !dbg !257
  %180 = getelementptr inbounds %struct.sockaddr_in6, ptr %179, i32 0, i32 3, !dbg !258
  %181 = load ptr, ptr %9, align 8, !dbg !259
  %182 = getelementptr inbounds i8, ptr %181, i64 4, !dbg !260
  call void @bcopy(ptr noundef %180, ptr noundef %182, i64 noundef 16) #5, !dbg !261
  br label %183

183:                                              ; preds = %173, %172
  br label %185, !dbg !262

184:                                              ; preds = %86
  store i32 -1, ptr %7, align 4, !dbg !263
  br label %187, !dbg !263

185:                                              ; preds = %183
  br label %186

186:                                              ; preds = %185, %85
  store i32 0, ptr %7, align 4, !dbg !265
  br label %187, !dbg !265

187:                                              ; preds = %186, %184, %29
  %188 = load i32, ptr %7, align 4, !dbg !266
  ret i32 %188, !dbg !266
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @ntohs(i16 noundef zeroext) #2

; Function Attrs: nounwind willreturn memory(none)
declare i32 @ntohl(i32 noundef) #2

; Function Attrs: nounwind
declare void @bcopy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_addr_decode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 !dbg !267 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !271, metadata !DIExpression()), !dbg !272
  store ptr %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !273, metadata !DIExpression()), !dbg !274
  store i32 %2, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !275, metadata !DIExpression()), !dbg !276
  store i32 %3, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !277, metadata !DIExpression()), !dbg !278
  store i32 %4, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !279, metadata !DIExpression()), !dbg !280
  store ptr %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !281, metadata !DIExpression()), !dbg !282
  %19 = load ptr, ptr %9, align 8, !dbg !283
  %20 = icmp ne ptr %19, null, !dbg !283
  br i1 %20, label %21, label %33, !dbg !285

21:                                               ; preds = %6
  %22 = load i32, ptr %10, align 4, !dbg !286
  %23 = icmp ne i32 %22, 0, !dbg !286
  br i1 %23, label %24, label %33, !dbg !287

24:                                               ; preds = %21
  %25 = load ptr, ptr %8, align 8, !dbg !288
  %26 = icmp ne ptr %25, null, !dbg !288
  br i1 %26, label %27, label %33, !dbg !289

27:                                               ; preds = %24
  %28 = load ptr, ptr %13, align 8, !dbg !290
  %29 = icmp ne ptr %28, null, !dbg !290
  br i1 %29, label %30, label %33, !dbg !291

30:                                               ; preds = %27
  %31 = load i32, ptr %10, align 4, !dbg !292
  %32 = icmp slt i32 %31, 8, !dbg !293
  br i1 %32, label %33, label %34, !dbg !294

33:                                               ; preds = %30, %27, %24, %21, %6
  store i32 -1, ptr %7, align 4, !dbg !295
  br label %196, !dbg !295

34:                                               ; preds = %30
  %35 = load ptr, ptr %9, align 8, !dbg !296
  %36 = getelementptr inbounds i8, ptr %35, i64 0, !dbg !296
  %37 = load i8, ptr %36, align 1, !dbg !296
  %38 = zext i8 %37 to i32, !dbg !296
  %39 = icmp ne i32 %38, 0, !dbg !298
  br i1 %39, label %40, label %41, !dbg !299

40:                                               ; preds = %34
  store i32 -1, ptr %7, align 4, !dbg !300
  br label %196, !dbg !300

41:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata ptr %14, metadata !302, metadata !DIExpression()), !dbg !303
  %42 = load ptr, ptr %9, align 8, !dbg !304
  %43 = getelementptr inbounds i8, ptr %42, i64 1, !dbg !304
  %44 = load i8, ptr %43, align 1, !dbg !304
  %45 = zext i8 %44 to i32, !dbg !304
  %46 = icmp eq i32 %45, 1, !dbg !306
  br i1 %46, label %47, label %48, !dbg !307

47:                                               ; preds = %41
  store i32 2, ptr %14, align 4, !dbg !308
  br label %57, !dbg !309

48:                                               ; preds = %41
  %49 = load ptr, ptr %9, align 8, !dbg !310
  %50 = getelementptr inbounds i8, ptr %49, i64 1, !dbg !310
  %51 = load i8, ptr %50, align 1, !dbg !310
  %52 = zext i8 %51 to i32, !dbg !310
  %53 = icmp eq i32 %52, 2, !dbg !312
  br i1 %53, label %54, label %55, !dbg !313

54:                                               ; preds = %48
  store i32 10, ptr %14, align 4, !dbg !314
  br label %56, !dbg !315

55:                                               ; preds = %48
  store i32 -1, ptr %7, align 4, !dbg !316
  br label %196, !dbg !316

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %47
  %58 = load i32, ptr %14, align 4, !dbg !317
  %59 = trunc i32 %58 to i16, !dbg !317
  %60 = load ptr, ptr %8, align 8, !dbg !318
  %61 = getelementptr inbounds %struct.sockaddr, ptr %60, i32 0, i32 0, !dbg !319
  store i16 %59, ptr %61, align 4, !dbg !320
  %62 = load i32, ptr %14, align 4, !dbg !321
  %63 = icmp eq i32 %62, 2, !dbg !323
  br i1 %63, label %64, label %102, !dbg !324

64:                                               ; preds = %57
  %65 = load i32, ptr %10, align 4, !dbg !325
  %66 = icmp ne i32 %65, 8, !dbg !328
  br i1 %66, label %67, label %68, !dbg !329

67:                                               ; preds = %64
  store i32 -1, ptr %7, align 4, !dbg !330
  br label %196, !dbg !330

68:                                               ; preds = %64
  %69 = load ptr, ptr %9, align 8, !dbg !331
  %70 = getelementptr inbounds i16, ptr %69, i64 1, !dbg !332
  %71 = load i16, ptr %70, align 2, !dbg !332
  %72 = load ptr, ptr %8, align 8, !dbg !333
  %73 = getelementptr inbounds %struct.sockaddr_in, ptr %72, i32 0, i32 1, !dbg !334
  store i16 %71, ptr %73, align 2, !dbg !335
  %74 = load ptr, ptr %9, align 8, !dbg !336
  %75 = getelementptr inbounds i32, ptr %74, i64 1, !dbg !337
  %76 = load i32, ptr %75, align 4, !dbg !337
  %77 = load ptr, ptr %8, align 8, !dbg !338
  %78 = getelementptr inbounds %struct.sockaddr_in, ptr %77, i32 0, i32 2, !dbg !339
  %79 = getelementptr inbounds %struct.in_addr, ptr %78, i32 0, i32 0, !dbg !340
  store i32 %76, ptr %79, align 4, !dbg !341
  %80 = load i32, ptr %11, align 4, !dbg !342
  %81 = icmp ne i32 %80, 0, !dbg !342
  br i1 %81, label %82, label %101, !dbg !344

82:                                               ; preds = %68
  %83 = load i32, ptr %12, align 4, !dbg !345
  %84 = lshr i32 %83, 16, !dbg !345
  %85 = trunc i32 %84 to i16, !dbg !345
  %86 = call zeroext i16 @ntohs(i16 noundef zeroext %85) #4, !dbg !345
  %87 = zext i16 %86 to i32, !dbg !345
  %88 = load ptr, ptr %8, align 8, !dbg !347
  %89 = getelementptr inbounds %struct.sockaddr_in, ptr %88, i32 0, i32 1, !dbg !348
  %90 = load i16, ptr %89, align 2, !dbg !349
  %91 = zext i16 %90 to i32, !dbg !349
  %92 = xor i32 %91, %87, !dbg !349
  %93 = trunc i32 %92 to i16, !dbg !349
  store i16 %93, ptr %89, align 2, !dbg !349
  %94 = load i32, ptr %12, align 4, !dbg !350
  %95 = call i32 @ntohl(i32 noundef %94) #4, !dbg !350
  %96 = load ptr, ptr %8, align 8, !dbg !351
  %97 = getelementptr inbounds %struct.sockaddr_in, ptr %96, i32 0, i32 2, !dbg !352
  %98 = getelementptr inbounds %struct.in_addr, ptr %97, i32 0, i32 0, !dbg !353
  %99 = load i32, ptr %98, align 4, !dbg !354
  %100 = xor i32 %99, %95, !dbg !354
  store i32 %100, ptr %98, align 4, !dbg !354
  br label %101, !dbg !355

101:                                              ; preds = %82, %68
  br label %195, !dbg !356

102:                                              ; preds = %57
  %103 = load i32, ptr %14, align 4, !dbg !357
  %104 = icmp eq i32 %103, 10, !dbg !359
  br i1 %104, label %105, label %193, !dbg !360

105:                                              ; preds = %102
  %106 = load i32, ptr %10, align 4, !dbg !361
  %107 = icmp ne i32 %106, 20, !dbg !364
  br i1 %107, label %108, label %109, !dbg !365

108:                                              ; preds = %105
  store i32 -1, ptr %7, align 4, !dbg !366
  br label %196, !dbg !366

109:                                              ; preds = %105
  %110 = load ptr, ptr %9, align 8, !dbg !367
  %111 = getelementptr inbounds i16, ptr %110, i64 1, !dbg !368
  %112 = load i16, ptr %111, align 2, !dbg !368
  %113 = load ptr, ptr %8, align 8, !dbg !369
  %114 = getelementptr inbounds %struct.sockaddr_in6, ptr %113, i32 0, i32 1, !dbg !370
  store i16 %112, ptr %114, align 2, !dbg !371
  %115 = load ptr, ptr %9, align 8, !dbg !372
  %116 = getelementptr inbounds i8, ptr %115, i64 4, !dbg !373
  %117 = load ptr, ptr %8, align 8, !dbg !374
  %118 = getelementptr inbounds %struct.sockaddr_in6, ptr %117, i32 0, i32 3, !dbg !375
  call void @bcopy(ptr noundef %116, ptr noundef %118, i64 noundef 16) #5, !dbg !376
  %119 = load i32, ptr %11, align 4, !dbg !377
  %120 = icmp ne i32 %119, 0, !dbg !377
  br i1 %120, label %121, label %192, !dbg !379

121:                                              ; preds = %109
  call void @llvm.dbg.declare(metadata ptr %15, metadata !380, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.declare(metadata ptr %16, metadata !383, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.declare(metadata ptr %17, metadata !385, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata ptr %18, metadata !387, metadata !DIExpression()), !dbg !388
  %122 = load i32, ptr %12, align 4, !dbg !389
  %123 = call i32 @ntohl(i32 noundef %122) #4, !dbg !389
  store i32 %123, ptr %18, align 4, !dbg !388
  %124 = load i32, ptr %12, align 4, !dbg !390
  %125 = lshr i32 %124, 16, !dbg !390
  %126 = trunc i32 %125 to i16, !dbg !390
  %127 = call zeroext i16 @ntohs(i16 noundef zeroext %126) #4, !dbg !390
  %128 = zext i16 %127 to i32, !dbg !390
  %129 = load ptr, ptr %8, align 8, !dbg !391
  %130 = getelementptr inbounds %struct.sockaddr_in6, ptr %129, i32 0, i32 1, !dbg !392
  %131 = load i16, ptr %130, align 2, !dbg !393
  %132 = zext i16 %131 to i32, !dbg !393
  %133 = xor i32 %132, %128, !dbg !393
  %134 = trunc i32 %133 to i16, !dbg !393
  store i16 %134, ptr %130, align 2, !dbg !393
  %135 = load ptr, ptr %9, align 8, !dbg !394
  %136 = getelementptr inbounds i8, ptr %135, i64 4, !dbg !395
  store ptr %136, ptr %17, align 8, !dbg !396
  %137 = load ptr, ptr %8, align 8, !dbg !397
  %138 = getelementptr inbounds %struct.sockaddr_in6, ptr %137, i32 0, i32 3, !dbg !398
  store ptr %138, ptr %16, align 8, !dbg !399
  store i32 0, ptr %15, align 4, !dbg !400
  br label %139, !dbg !402

139:                                              ; preds = %160, %121
  %140 = load i32, ptr %15, align 4, !dbg !403
  %141 = icmp ult i32 %140, 4, !dbg !405
  br i1 %141, label %142, label %163, !dbg !406

142:                                              ; preds = %139
  %143 = load ptr, ptr %17, align 8, !dbg !407
  %144 = load i32, ptr %15, align 4, !dbg !409
  %145 = zext i32 %144 to i64, !dbg !407
  %146 = getelementptr inbounds i8, ptr %143, i64 %145, !dbg !407
  %147 = load i8, ptr %146, align 1, !dbg !407
  %148 = zext i8 %147 to i32, !dbg !407
  %149 = load i32, ptr %15, align 4, !dbg !410
  %150 = zext i32 %149 to i64, !dbg !411
  %151 = getelementptr inbounds i8, ptr %18, i64 %150, !dbg !411
  %152 = load i8, ptr %151, align 1, !dbg !411
  %153 = zext i8 %152 to i32, !dbg !411
  %154 = xor i32 %148, %153, !dbg !412
  %155 = trunc i32 %154 to i8, !dbg !413
  %156 = load ptr, ptr %16, align 8, !dbg !414
  %157 = load i32, ptr %15, align 4, !dbg !415
  %158 = zext i32 %157 to i64, !dbg !414
  %159 = getelementptr inbounds i8, ptr %156, i64 %158, !dbg !414
  store i8 %155, ptr %159, align 1, !dbg !416
  br label %160, !dbg !417

160:                                              ; preds = %142
  %161 = load i32, ptr %15, align 4, !dbg !418
  %162 = add i32 %161, 1, !dbg !418
  store i32 %162, ptr %15, align 4, !dbg !418
  br label %139, !dbg !419, !llvm.loop !420

163:                                              ; preds = %139
  store i32 0, ptr %15, align 4, !dbg !422
  br label %164, !dbg !424

164:                                              ; preds = %188, %163
  %165 = load i32, ptr %15, align 4, !dbg !425
  %166 = icmp ult i32 %165, 12, !dbg !427
  br i1 %166, label %167, label %191, !dbg !428

167:                                              ; preds = %164
  %168 = load ptr, ptr %17, align 8, !dbg !429
  %169 = load i32, ptr %15, align 4, !dbg !431
  %170 = add i32 %169, 4, !dbg !432
  %171 = zext i32 %170 to i64, !dbg !429
  %172 = getelementptr inbounds i8, ptr %168, i64 %171, !dbg !429
  %173 = load i8, ptr %172, align 1, !dbg !429
  %174 = zext i8 %173 to i32, !dbg !429
  %175 = load ptr, ptr %13, align 8, !dbg !433
  %176 = load i32, ptr %15, align 4, !dbg !434
  %177 = zext i32 %176 to i64, !dbg !433
  %178 = getelementptr inbounds i8, ptr %175, i64 %177, !dbg !433
  %179 = load i8, ptr %178, align 1, !dbg !433
  %180 = zext i8 %179 to i32, !dbg !433
  %181 = xor i32 %174, %180, !dbg !435
  %182 = trunc i32 %181 to i8, !dbg !436
  %183 = load ptr, ptr %16, align 8, !dbg !437
  %184 = load i32, ptr %15, align 4, !dbg !438
  %185 = add i32 %184, 4, !dbg !439
  %186 = zext i32 %185 to i64, !dbg !437
  %187 = getelementptr inbounds i8, ptr %183, i64 %186, !dbg !437
  store i8 %182, ptr %187, align 1, !dbg !440
  br label %188, !dbg !441

188:                                              ; preds = %167
  %189 = load i32, ptr %15, align 4, !dbg !442
  %190 = add i32 %189, 1, !dbg !442
  store i32 %190, ptr %15, align 4, !dbg !442
  br label %164, !dbg !443, !llvm.loop !444

191:                                              ; preds = %164
  br label %192, !dbg !446

192:                                              ; preds = %191, %109
  br label %194, !dbg !447

193:                                              ; preds = %102
  store i32 -1, ptr %7, align 4, !dbg !448
  br label %196, !dbg !448

194:                                              ; preds = %192
  br label %195

195:                                              ; preds = %194, %101
  store i32 0, ptr %7, align 4, !dbg !450
  br label %196, !dbg !450

196:                                              ; preds = %195, %193, %108, %67, %55, %40, %33
  %197 = load i32, ptr %7, align 4, !dbg !451
  ret i32 %197, !dbg !451
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/raj/coturn/src/client/ns_turn_msg_addr.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "04af7583f3b04186f101cbba23b1a404")
!2 = !{!3, !9, !13, !17, !14, !19, !21}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !5, line: 25, baseType: !6)
!5 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !7, line: 40, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!8 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !5, line: 26, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !7, line: 42, baseType: !12)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !5, line: 24, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !7, line: 38, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 8, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 2}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 16.0.0"}
!31 = distinct !DISubprogram(name: "stun_addr_encode", scope: !32, file: !32, line: 35, type: !33, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !94)
!32 = !DIFile(filename: "src/client/ns_turn_msg_addr.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "04af7583f3b04186f101cbba23b1a404")
!33 = !DISubroutineType(types: !34)
!34 = !{!35, !36, !13, !93, !35, !10, !17}
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !39, line: 48, baseType: !40)
!39 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!40 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !39, line: 44, size: 224, elements: !41)
!41 = !{!42, !54, !70}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !40, file: !39, line: 45, baseType: !43, size: 128)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !44, line: 180, size: 128, elements: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!45 = !{!46, !49}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !43, file: !44, line: 182, baseType: !47, size: 16)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !48, line: 28, baseType: !8)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!49 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !43, file: !44, line: 183, baseType: !50, size: 112, offset: 16)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 112, elements: !52)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!52 = !{!53}
!53 = !DISubrange(count: 14)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !40, file: !39, line: 46, baseType: !55, size: 128)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !56, line: 245, size: 128, elements: !57)
!56 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!57 = !{!58, !59, !61, !66}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !55, file: !56, line: 247, baseType: !47, size: 16)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !55, file: !56, line: 248, baseType: !60, size: 16, offset: 16)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !56, line: 123, baseType: !4)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !55, file: !56, line: 249, baseType: !62, size: 32, offset: 32)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !56, line: 31, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !62, file: !56, line: 33, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !56, line: 30, baseType: !10)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !55, file: !56, line: 252, baseType: !67, size: 64, offset: 64)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 8)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !40, file: !39, line: 47, baseType: !71, size: 224)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !56, line: 260, size: 224, elements: !72)
!72 = !{!73, !74, !75, !76, !92}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !71, file: !56, line: 262, baseType: !47, size: 16)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !71, file: !56, line: 263, baseType: !60, size: 16, offset: 16)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !71, file: !56, line: 264, baseType: !10, size: 32, offset: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !71, file: !56, line: 265, baseType: !77, size: 128, offset: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !56, line: 219, size: 128, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !77, file: !56, line: 226, baseType: !80, size: 128)
!80 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !77, file: !56, line: 221, size: 128, elements: !81)
!81 = !{!82, !86, !88}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !80, file: !56, line: 223, baseType: !83, size: 128)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 16)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !80, file: !56, line: 224, baseType: !87, size: 128)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !68)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !80, file: !56, line: 225, baseType: !89, size: 128)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 4)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !71, file: !56, line: 266, baseType: !10, size: 32, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!94 = !{}
!95 = !DILocalVariable(name: "ca", arg: 1, scope: !31, file: !32, line: 35, type: !36)
!96 = !DILocation(line: 35, column: 38, scope: !31)
!97 = !DILocalVariable(name: "cfield", arg: 2, scope: !31, file: !32, line: 35, type: !13)
!98 = !DILocation(line: 35, column: 51, scope: !31)
!99 = !DILocalVariable(name: "clen", arg: 3, scope: !31, file: !32, line: 35, type: !93)
!100 = !DILocation(line: 35, column: 64, scope: !31)
!101 = !DILocalVariable(name: "xor_ed", arg: 4, scope: !31, file: !32, line: 35, type: !35)
!102 = !DILocation(line: 35, column: 74, scope: !31)
!103 = !DILocalVariable(name: "mc", arg: 5, scope: !31, file: !32, line: 35, type: !10)
!104 = !DILocation(line: 35, column: 91, scope: !31)
!105 = !DILocalVariable(name: "tsx_id", arg: 6, scope: !31, file: !32, line: 35, type: !17)
!106 = !DILocation(line: 35, column: 110, scope: !31)
!107 = !DILocation(line: 37, column: 7, scope: !108)
!108 = distinct !DILexicalBlock(scope: !31, file: !32, line: 37, column: 6)
!109 = !DILocation(line: 37, column: 14, scope: !108)
!110 = !DILocation(line: 37, column: 18, scope: !108)
!111 = !DILocation(line: 37, column: 23, scope: !108)
!112 = !DILocation(line: 37, column: 27, scope: !108)
!113 = !DILocation(line: 37, column: 30, scope: !108)
!114 = !DILocation(line: 37, column: 34, scope: !108)
!115 = !DILocation(line: 37, column: 6, scope: !31)
!116 = !DILocation(line: 37, column: 42, scope: !108)
!117 = !DILocation(line: 39, column: 7, scope: !118)
!118 = distinct !DILexicalBlock(scope: !31, file: !32, line: 39, column: 7)
!119 = !DILocation(line: 39, column: 14, scope: !118)
!120 = !DILocation(line: 39, column: 24, scope: !118)
!121 = !DILocation(line: 39, column: 35, scope: !118)
!122 = !DILocation(line: 39, column: 38, scope: !118)
!123 = !DILocation(line: 39, column: 45, scope: !118)
!124 = !DILocation(line: 39, column: 54, scope: !118)
!125 = !DILocation(line: 39, column: 7, scope: !31)
!126 = !DILocation(line: 43, column: 6, scope: !127)
!127 = distinct !DILexicalBlock(scope: !118, file: !32, line: 39, column: 59)
!128 = !DILocation(line: 43, column: 10, scope: !127)
!129 = !DILocation(line: 45, column: 5, scope: !127)
!130 = !DILocation(line: 45, column: 14, scope: !127)
!131 = !DILocation(line: 46, column: 5, scope: !127)
!132 = !DILocation(line: 46, column: 14, scope: !127)
!133 = !DILocation(line: 48, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !127, file: !32, line: 48, column: 9)
!135 = !DILocation(line: 48, column: 9, scope: !127)
!136 = !DILocation(line: 51, column: 33, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !32, line: 48, column: 17)
!138 = !DILocation(line: 51, column: 40, scope: !137)
!139 = !DILocation(line: 51, column: 32, scope: !137)
!140 = !DILocation(line: 51, column: 52, scope: !137)
!141 = !DILocation(line: 51, column: 50, scope: !137)
!142 = !DILocation(line: 51, column: 19, scope: !137)
!143 = !DILocation(line: 51, column: 7, scope: !137)
!144 = !DILocation(line: 51, column: 30, scope: !137)
!145 = !DILocation(line: 54, column: 33, scope: !137)
!146 = !DILocation(line: 54, column: 40, scope: !137)
!147 = !DILocation(line: 54, column: 49, scope: !137)
!148 = !DILocation(line: 54, column: 59, scope: !137)
!149 = !DILocation(line: 54, column: 57, scope: !137)
!150 = !DILocation(line: 54, column: 19, scope: !137)
!151 = !DILocation(line: 54, column: 7, scope: !137)
!152 = !DILocation(line: 54, column: 30, scope: !137)
!153 = !DILocation(line: 56, column: 5, scope: !137)
!154 = !DILocation(line: 59, column: 30, scope: !155)
!155 = distinct !DILexicalBlock(scope: !134, file: !32, line: 56, column: 12)
!156 = !DILocation(line: 59, column: 37, scope: !155)
!157 = !DILocation(line: 59, column: 19, scope: !155)
!158 = !DILocation(line: 59, column: 7, scope: !155)
!159 = !DILocation(line: 59, column: 29, scope: !155)
!160 = !DILocation(line: 62, column: 30, scope: !155)
!161 = !DILocation(line: 62, column: 37, scope: !155)
!162 = !DILocation(line: 62, column: 46, scope: !155)
!163 = !DILocation(line: 62, column: 19, scope: !155)
!164 = !DILocation(line: 62, column: 7, scope: !155)
!165 = !DILocation(line: 62, column: 29, scope: !155)
!166 = !DILocation(line: 65, column: 3, scope: !127)
!167 = !DILocation(line: 65, column: 14, scope: !168)
!168 = distinct !DILexicalBlock(scope: !118, file: !32, line: 65, column: 14)
!169 = !DILocation(line: 65, column: 21, scope: !168)
!170 = !DILocation(line: 65, column: 31, scope: !168)
!171 = !DILocation(line: 65, column: 14, scope: !118)
!172 = !DILocation(line: 69, column: 6, scope: !173)
!173 = distinct !DILexicalBlock(scope: !168, file: !32, line: 65, column: 44)
!174 = !DILocation(line: 69, column: 10, scope: !173)
!175 = !DILocation(line: 71, column: 5, scope: !173)
!176 = !DILocation(line: 71, column: 14, scope: !173)
!177 = !DILocation(line: 72, column: 5, scope: !173)
!178 = !DILocation(line: 72, column: 14, scope: !173)
!179 = !DILocation(line: 74, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !173, file: !32, line: 74, column: 9)
!181 = !DILocation(line: 74, column: 9, scope: !173)
!182 = !DILocalVariable(name: "i", scope: !183, file: !32, line: 76, type: !12)
!183 = distinct !DILexicalBlock(scope: !180, file: !32, line: 74, column: 17)
!184 = !DILocation(line: 76, column: 20, scope: !183)
!185 = !DILocalVariable(name: "dst", scope: !183, file: !32, line: 77, type: !13)
!186 = !DILocation(line: 77, column: 16, scope: !183)
!187 = !DILocation(line: 77, column: 33, scope: !183)
!188 = !DILocation(line: 77, column: 40, scope: !183)
!189 = !DILocalVariable(name: "src", scope: !183, file: !32, line: 78, type: !17)
!190 = !DILocation(line: 78, column: 22, scope: !183)
!191 = !DILocation(line: 78, column: 46, scope: !183)
!192 = !DILocation(line: 78, column: 53, scope: !183)
!193 = !DILocalVariable(name: "magic", scope: !183, file: !32, line: 79, type: !10)
!194 = !DILocation(line: 79, column: 16, scope: !183)
!195 = !DILocation(line: 79, column: 24, scope: !183)
!196 = !DILocation(line: 82, column: 32, scope: !183)
!197 = !DILocation(line: 82, column: 39, scope: !183)
!198 = !DILocation(line: 82, column: 51, scope: !183)
!199 = !DILocation(line: 82, column: 49, scope: !183)
!200 = !DILocation(line: 82, column: 19, scope: !183)
!201 = !DILocation(line: 82, column: 7, scope: !183)
!202 = !DILocation(line: 82, column: 30, scope: !183)
!203 = !DILocation(line: 86, column: 13, scope: !204)
!204 = distinct !DILexicalBlock(scope: !183, file: !32, line: 86, column: 7)
!205 = !DILocation(line: 86, column: 12, scope: !204)
!206 = !DILocation(line: 86, column: 17, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !32, line: 86, column: 7)
!208 = !DILocation(line: 86, column: 18, scope: !207)
!209 = !DILocation(line: 86, column: 7, scope: !204)
!210 = !DILocation(line: 87, column: 21, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !32, line: 86, column: 27)
!212 = !DILocation(line: 87, column: 25, scope: !211)
!213 = !DILocation(line: 87, column: 55, scope: !211)
!214 = !DILocation(line: 87, column: 30, scope: !211)
!215 = !DILocation(line: 87, column: 28, scope: !211)
!216 = !DILocation(line: 87, column: 11, scope: !211)
!217 = !DILocation(line: 87, column: 2, scope: !211)
!218 = !DILocation(line: 87, column: 6, scope: !211)
!219 = !DILocation(line: 87, column: 9, scope: !211)
!220 = !DILocation(line: 88, column: 7, scope: !211)
!221 = !DILocation(line: 86, column: 22, scope: !207)
!222 = !DILocation(line: 86, column: 7, scope: !207)
!223 = distinct !{!223, !209, !224, !225}
!224 = !DILocation(line: 88, column: 7, scope: !204)
!225 = !{!"llvm.loop.mustprogress"}
!226 = !DILocation(line: 89, column: 13, scope: !227)
!227 = distinct !DILexicalBlock(scope: !183, file: !32, line: 89, column: 7)
!228 = !DILocation(line: 89, column: 12, scope: !227)
!229 = !DILocation(line: 89, column: 17, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !32, line: 89, column: 7)
!231 = !DILocation(line: 89, column: 18, scope: !230)
!232 = !DILocation(line: 89, column: 7, scope: !227)
!233 = !DILocation(line: 90, column: 23, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !32, line: 89, column: 28)
!235 = !DILocation(line: 90, column: 27, scope: !234)
!236 = !DILocation(line: 90, column: 28, scope: !234)
!237 = !DILocation(line: 90, column: 34, scope: !234)
!238 = !DILocation(line: 90, column: 41, scope: !234)
!239 = !DILocation(line: 90, column: 32, scope: !234)
!240 = !DILocation(line: 90, column: 13, scope: !234)
!241 = !DILocation(line: 90, column: 2, scope: !234)
!242 = !DILocation(line: 90, column: 6, scope: !234)
!243 = !DILocation(line: 90, column: 7, scope: !234)
!244 = !DILocation(line: 90, column: 11, scope: !234)
!245 = !DILocation(line: 91, column: 7, scope: !234)
!246 = !DILocation(line: 89, column: 23, scope: !230)
!247 = !DILocation(line: 89, column: 7, scope: !230)
!248 = distinct !{!248, !232, !249, !225}
!249 = !DILocation(line: 91, column: 7, scope: !227)
!250 = !DILocation(line: 93, column: 5, scope: !183)
!251 = !DILocation(line: 96, column: 30, scope: !252)
!252 = distinct !DILexicalBlock(scope: !180, file: !32, line: 93, column: 12)
!253 = !DILocation(line: 96, column: 37, scope: !252)
!254 = !DILocation(line: 96, column: 19, scope: !252)
!255 = !DILocation(line: 96, column: 7, scope: !252)
!256 = !DILocation(line: 96, column: 29, scope: !252)
!257 = !DILocation(line: 99, column: 14, scope: !252)
!258 = !DILocation(line: 99, column: 21, scope: !252)
!259 = !DILocation(line: 99, column: 43, scope: !252)
!260 = !DILocation(line: 99, column: 50, scope: !252)
!261 = !DILocation(line: 99, column: 7, scope: !252)
!262 = !DILocation(line: 102, column: 3, scope: !173)
!263 = !DILocation(line: 103, column: 5, scope: !264)
!264 = distinct !DILexicalBlock(scope: !168, file: !32, line: 102, column: 10)
!265 = !DILocation(line: 106, column: 3, scope: !31)
!266 = !DILocation(line: 107, column: 1, scope: !31)
!267 = distinct !DISubprogram(name: "stun_addr_decode", scope: !32, file: !32, line: 109, type: !268, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !94)
!268 = !DISubroutineType(types: !269)
!269 = !{!35, !270, !17, !35, !35, !10, !17}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!271 = !DILocalVariable(name: "ca", arg: 1, scope: !267, file: !32, line: 109, type: !270)
!272 = !DILocation(line: 109, column: 32, scope: !267)
!273 = !DILocalVariable(name: "cfield", arg: 2, scope: !267, file: !32, line: 109, type: !17)
!274 = !DILocation(line: 109, column: 51, scope: !267)
!275 = !DILocalVariable(name: "len", arg: 3, scope: !267, file: !32, line: 109, type: !35)
!276 = !DILocation(line: 109, column: 63, scope: !267)
!277 = !DILocalVariable(name: "xor_ed", arg: 4, scope: !267, file: !32, line: 109, type: !35)
!278 = !DILocation(line: 109, column: 72, scope: !267)
!279 = !DILocalVariable(name: "mc", arg: 5, scope: !267, file: !32, line: 109, type: !10)
!280 = !DILocation(line: 109, column: 89, scope: !267)
!281 = !DILocalVariable(name: "tsx_id", arg: 6, scope: !267, file: !32, line: 109, type: !17)
!282 = !DILocation(line: 109, column: 108, scope: !267)
!283 = !DILocation(line: 111, column: 7, scope: !284)
!284 = distinct !DILexicalBlock(scope: !267, file: !32, line: 111, column: 6)
!285 = !DILocation(line: 111, column: 14, scope: !284)
!286 = !DILocation(line: 111, column: 18, scope: !284)
!287 = !DILocation(line: 111, column: 22, scope: !284)
!288 = !DILocation(line: 111, column: 26, scope: !284)
!289 = !DILocation(line: 111, column: 29, scope: !284)
!290 = !DILocation(line: 111, column: 33, scope: !284)
!291 = !DILocation(line: 111, column: 40, scope: !284)
!292 = !DILocation(line: 111, column: 44, scope: !284)
!293 = !DILocation(line: 111, column: 47, scope: !284)
!294 = !DILocation(line: 111, column: 6, scope: !267)
!295 = !DILocation(line: 111, column: 52, scope: !284)
!296 = !DILocation(line: 113, column: 6, scope: !297)
!297 = distinct !DILexicalBlock(scope: !267, file: !32, line: 113, column: 6)
!298 = !DILocation(line: 113, column: 15, scope: !297)
!299 = !DILocation(line: 113, column: 6, scope: !267)
!300 = !DILocation(line: 114, column: 5, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !32, line: 113, column: 20)
!302 = !DILocalVariable(name: "sa_family", scope: !267, file: !32, line: 117, type: !35)
!303 = !DILocation(line: 117, column: 7, scope: !267)
!304 = !DILocation(line: 119, column: 6, scope: !305)
!305 = distinct !DILexicalBlock(scope: !267, file: !32, line: 119, column: 6)
!306 = !DILocation(line: 119, column: 15, scope: !305)
!307 = !DILocation(line: 119, column: 6, scope: !267)
!308 = !DILocation(line: 119, column: 29, scope: !305)
!309 = !DILocation(line: 119, column: 20, scope: !305)
!310 = !DILocation(line: 120, column: 11, scope: !311)
!311 = distinct !DILexicalBlock(scope: !305, file: !32, line: 120, column: 11)
!312 = !DILocation(line: 120, column: 20, scope: !311)
!313 = !DILocation(line: 120, column: 11, scope: !305)
!314 = !DILocation(line: 120, column: 34, scope: !311)
!315 = !DILocation(line: 120, column: 25, scope: !311)
!316 = !DILocation(line: 121, column: 8, scope: !311)
!317 = !DILocation(line: 123, column: 20, scope: !267)
!318 = !DILocation(line: 123, column: 3, scope: !267)
!319 = !DILocation(line: 123, column: 10, scope: !267)
!320 = !DILocation(line: 123, column: 19, scope: !267)
!321 = !DILocation(line: 125, column: 7, scope: !322)
!322 = distinct !DILexicalBlock(scope: !267, file: !32, line: 125, column: 7)
!323 = !DILocation(line: 125, column: 17, scope: !322)
!324 = !DILocation(line: 125, column: 7, scope: !267)
!325 = !DILocation(line: 127, column: 8, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !32, line: 127, column: 8)
!327 = distinct !DILexicalBlock(scope: !322, file: !32, line: 125, column: 29)
!328 = !DILocation(line: 127, column: 11, scope: !326)
!329 = !DILocation(line: 127, column: 8, scope: !327)
!330 = !DILocation(line: 127, column: 16, scope: !326)
!331 = !DILocation(line: 132, column: 39, scope: !327)
!332 = !DILocation(line: 132, column: 21, scope: !327)
!333 = !DILocation(line: 132, column: 5, scope: !327)
!334 = !DILocation(line: 132, column: 12, scope: !327)
!335 = !DILocation(line: 132, column: 20, scope: !327)
!336 = !DILocation(line: 135, column: 46, scope: !327)
!337 = !DILocation(line: 135, column: 28, scope: !327)
!338 = !DILocation(line: 135, column: 5, scope: !327)
!339 = !DILocation(line: 135, column: 12, scope: !327)
!340 = !DILocation(line: 135, column: 21, scope: !327)
!341 = !DILocation(line: 135, column: 27, scope: !327)
!342 = !DILocation(line: 137, column: 9, scope: !343)
!343 = distinct !DILexicalBlock(scope: !327, file: !32, line: 137, column: 9)
!344 = !DILocation(line: 137, column: 9, scope: !327)
!345 = !DILocation(line: 138, column: 26, scope: !346)
!346 = distinct !DILexicalBlock(scope: !343, file: !32, line: 137, column: 17)
!347 = !DILocation(line: 138, column: 7, scope: !346)
!348 = !DILocation(line: 138, column: 14, scope: !346)
!349 = !DILocation(line: 138, column: 23, scope: !346)
!350 = !DILocation(line: 139, column: 33, scope: !346)
!351 = !DILocation(line: 139, column: 7, scope: !346)
!352 = !DILocation(line: 139, column: 14, scope: !346)
!353 = !DILocation(line: 139, column: 23, scope: !346)
!354 = !DILocation(line: 139, column: 30, scope: !346)
!355 = !DILocation(line: 140, column: 5, scope: !346)
!356 = !DILocation(line: 142, column: 3, scope: !327)
!357 = !DILocation(line: 142, column: 14, scope: !358)
!358 = distinct !DILexicalBlock(scope: !322, file: !32, line: 142, column: 14)
!359 = !DILocation(line: 142, column: 24, scope: !358)
!360 = !DILocation(line: 142, column: 14, scope: !322)
!361 = !DILocation(line: 146, column: 8, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !32, line: 146, column: 8)
!363 = distinct !DILexicalBlock(scope: !358, file: !32, line: 142, column: 37)
!364 = !DILocation(line: 146, column: 11, scope: !362)
!365 = !DILocation(line: 146, column: 8, scope: !363)
!366 = !DILocation(line: 146, column: 17, scope: !362)
!367 = !DILocation(line: 149, column: 42, scope: !363)
!368 = !DILocation(line: 149, column: 24, scope: !363)
!369 = !DILocation(line: 149, column: 5, scope: !363)
!370 = !DILocation(line: 149, column: 12, scope: !363)
!371 = !DILocation(line: 149, column: 22, scope: !363)
!372 = !DILocation(line: 152, column: 28, scope: !363)
!373 = !DILocation(line: 152, column: 35, scope: !363)
!374 = !DILocation(line: 152, column: 40, scope: !363)
!375 = !DILocation(line: 152, column: 47, scope: !363)
!376 = !DILocation(line: 152, column: 5, scope: !363)
!377 = !DILocation(line: 154, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !363, file: !32, line: 154, column: 9)
!379 = !DILocation(line: 154, column: 9, scope: !363)
!380 = !DILocalVariable(name: "i", scope: !381, file: !32, line: 156, type: !12)
!381 = distinct !DILexicalBlock(scope: !378, file: !32, line: 154, column: 17)
!382 = !DILocation(line: 156, column: 20, scope: !381)
!383 = !DILocalVariable(name: "dst", scope: !381, file: !32, line: 157, type: !13)
!384 = !DILocation(line: 157, column: 16, scope: !381)
!385 = !DILocalVariable(name: "src", scope: !381, file: !32, line: 158, type: !17)
!386 = !DILocation(line: 158, column: 22, scope: !381)
!387 = !DILocalVariable(name: "magic", scope: !381, file: !32, line: 159, type: !10)
!388 = !DILocation(line: 159, column: 16, scope: !381)
!389 = !DILocation(line: 159, column: 24, scope: !381)
!390 = !DILocation(line: 162, column: 27, scope: !381)
!391 = !DILocation(line: 162, column: 7, scope: !381)
!392 = !DILocation(line: 162, column: 14, scope: !381)
!393 = !DILocation(line: 162, column: 24, scope: !381)
!394 = !DILocation(line: 165, column: 30, scope: !381)
!395 = !DILocation(line: 165, column: 37, scope: !381)
!396 = !DILocation(line: 165, column: 11, scope: !381)
!397 = !DILocation(line: 166, column: 24, scope: !381)
!398 = !DILocation(line: 166, column: 31, scope: !381)
!399 = !DILocation(line: 166, column: 11, scope: !381)
!400 = !DILocation(line: 167, column: 13, scope: !401)
!401 = distinct !DILexicalBlock(scope: !381, file: !32, line: 167, column: 7)
!402 = !DILocation(line: 167, column: 12, scope: !401)
!403 = !DILocation(line: 167, column: 17, scope: !404)
!404 = distinct !DILexicalBlock(scope: !401, file: !32, line: 167, column: 7)
!405 = !DILocation(line: 167, column: 18, scope: !404)
!406 = !DILocation(line: 167, column: 7, scope: !401)
!407 = !DILocation(line: 168, column: 21, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !32, line: 167, column: 27)
!409 = !DILocation(line: 168, column: 25, scope: !408)
!410 = !DILocation(line: 168, column: 55, scope: !408)
!411 = !DILocation(line: 168, column: 30, scope: !408)
!412 = !DILocation(line: 168, column: 28, scope: !408)
!413 = !DILocation(line: 168, column: 11, scope: !408)
!414 = !DILocation(line: 168, column: 2, scope: !408)
!415 = !DILocation(line: 168, column: 6, scope: !408)
!416 = !DILocation(line: 168, column: 9, scope: !408)
!417 = !DILocation(line: 169, column: 7, scope: !408)
!418 = !DILocation(line: 167, column: 22, scope: !404)
!419 = !DILocation(line: 167, column: 7, scope: !404)
!420 = distinct !{!420, !406, !421, !225}
!421 = !DILocation(line: 169, column: 7, scope: !401)
!422 = !DILocation(line: 170, column: 13, scope: !423)
!423 = distinct !DILexicalBlock(scope: !381, file: !32, line: 170, column: 7)
!424 = !DILocation(line: 170, column: 12, scope: !423)
!425 = !DILocation(line: 170, column: 17, scope: !426)
!426 = distinct !DILexicalBlock(scope: !423, file: !32, line: 170, column: 7)
!427 = !DILocation(line: 170, column: 18, scope: !426)
!428 = !DILocation(line: 170, column: 7, scope: !423)
!429 = !DILocation(line: 171, column: 23, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !32, line: 170, column: 28)
!431 = !DILocation(line: 171, column: 27, scope: !430)
!432 = !DILocation(line: 171, column: 28, scope: !430)
!433 = !DILocation(line: 171, column: 34, scope: !430)
!434 = !DILocation(line: 171, column: 41, scope: !430)
!435 = !DILocation(line: 171, column: 32, scope: !430)
!436 = !DILocation(line: 171, column: 13, scope: !430)
!437 = !DILocation(line: 171, column: 2, scope: !430)
!438 = !DILocation(line: 171, column: 6, scope: !430)
!439 = !DILocation(line: 171, column: 7, scope: !430)
!440 = !DILocation(line: 171, column: 11, scope: !430)
!441 = !DILocation(line: 172, column: 7, scope: !430)
!442 = !DILocation(line: 170, column: 23, scope: !426)
!443 = !DILocation(line: 170, column: 7, scope: !426)
!444 = distinct !{!444, !428, !445, !225}
!445 = !DILocation(line: 172, column: 7, scope: !423)
!446 = !DILocation(line: 173, column: 5, scope: !381)
!447 = !DILocation(line: 175, column: 3, scope: !363)
!448 = !DILocation(line: 176, column: 5, scope: !449)
!449 = distinct !DILexicalBlock(scope: !358, file: !32, line: 175, column: 10)
!450 = !DILocation(line: 179, column: 3, scope: !267)
!451 = !DILocation(line: 180, column: 1, scope: !267)
