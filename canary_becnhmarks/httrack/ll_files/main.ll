; ModuleID = 'src/proxy/main.c'
source_filename = "src/proxy/main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [67 x i8] c"ProxyTrack %s, build proxies upon HTTrack Website Copier Archives\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"0.5\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [61 x i8] c"Copyright (C) 1998-2015 Xavier Roche and other contributors\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [70 x i8] c"This program is free software: you can redistribute it and/or modify\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [70 x i8] c"it under the terms of the GNU General Public License as published by\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [67 x i8] c"the Free Software Foundation, either version 3 of the License, or\0A\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [37 x i8] c"(at your option) any later version.\0A\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [47 x i8] c"*** This version is a development release ***\0A\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [10 x i8] c"--convert\00", align 1, !dbg !41
@stderr = external global ptr, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"proxy mode:\0A\00", align 1, !dbg !46
@.str.11 = private unnamed_addr constant [139 x i8] c"usage: %s <proxy-addr:proxy-port> <ICP-addr:ICP-port> [ ( <new.zip path> | <new.ndx path> | <archive.arc path> | --list <file-list> ) ..]\0A\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [111 x i8] c"\09example:%s proxy:8080 localhost:3130 /home/archives/www-archive-01.zip /home/old-archives/www-archive-02.ndx\0A\00", align 1, !dbg !56
@.str.13 = private unnamed_addr constant [15 x i8] c"convert mode:\0A\00", align 1, !dbg !61
@.str.14 = private unnamed_addr constant [127 x i8] c"usage: %s --convert <archive-output-path> [ ( <new.zip path> | <new.ndx path> | <archive.arc path> | --list <file-list> ) ..]\0A\00", align 1, !dbg !66
@.str.15 = private unnamed_addr constant [7 x i8] c"--list\00", align 1, !dbg !71
@.str.16 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !76
@.str.17 = private unnamed_addr constant [34 x i8] c"error: could not process list %s\0A\00", align 1, !dbg !81
@.str.18 = private unnamed_addr constant [32 x i8] c"processed: %s (%d items added)\0A\00", align 1, !dbg !86
@.str.19 = private unnamed_addr constant [32 x i8] c"processed: %s (no items added)\0A\00", align 1, !dbg !91
@.str.20 = private unnamed_addr constant [29 x i8] c"error: could not process %s\0A\00", align 1, !dbg !93
@.str.21 = private unnamed_addr constant [14 x i8] c"* bad arg %s\0A\00", align 1, !dbg !98
@.str.22 = private unnamed_addr constant [17 x i8] c"processed: '%s'\0A\00", align 1, !dbg !103
@.str.23 = private unnamed_addr constant [28 x i8] c"error: could not save '%s'\0A\00", align 1, !dbg !108
@.str.24 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !113

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !128 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [257 x i8], align 16
  %11 = alloca [257 x i8], align 16
  %12 = alloca ptr, align 8
  %13 = alloca [257 x i8], align 16
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !134, metadata !DIExpression()), !dbg !135
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata ptr %6, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata ptr %7, metadata !140, metadata !DIExpression()), !dbg !141
  store i32 0, ptr %7, align 4, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %8, metadata !142, metadata !DIExpression()), !dbg !143
  store i32 0, ptr %8, align 4, !dbg !143
  call void @llvm.dbg.declare(metadata ptr %9, metadata !144, metadata !DIExpression()), !dbg !145
  store i32 0, ptr %9, align 4, !dbg !145
  call void @llvm.dbg.declare(metadata ptr %10, metadata !146, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata ptr %11, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata ptr %12, metadata !153, metadata !DIExpression()), !dbg !158
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.1), !dbg !159
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !160
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !161
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.4), !dbg !162
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !163
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.6), !dbg !164
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.7), !dbg !165
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !166
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.8), !dbg !167
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !168
  %27 = load i32, ptr %4, align 4, !dbg !169
  %28 = icmp slt i32 %27, 3, !dbg !171
  br i1 %28, label %49, label %29, !dbg !172

29:                                               ; preds = %2
  %30 = load ptr, ptr %5, align 8, !dbg !173
  %31 = getelementptr inbounds ptr, ptr %30, i64 1, !dbg !173
  %32 = load ptr, ptr %31, align 8, !dbg !173
  %33 = call i32 @strcmp(ptr noundef %32, ptr noundef @.str.9) #6, !dbg !174
  %34 = icmp ne i32 %33, 0, !dbg !175
  br i1 %34, label %35, label %74, !dbg !176

35:                                               ; preds = %29
  %36 = load ptr, ptr %5, align 8, !dbg !177
  %37 = getelementptr inbounds ptr, ptr %36, i64 1, !dbg !177
  %38 = load ptr, ptr %37, align 8, !dbg !177
  %39 = getelementptr inbounds [257 x i8], ptr %10, i64 0, i64 0, !dbg !178
  %40 = call i32 @scanHostPort(ptr noundef %38, ptr noundef %39, ptr noundef %8), !dbg !179
  %41 = icmp ne i32 %40, 0, !dbg !179
  br i1 %41, label %42, label %49, !dbg !180

42:                                               ; preds = %35
  %43 = load ptr, ptr %5, align 8, !dbg !181
  %44 = getelementptr inbounds ptr, ptr %43, i64 2, !dbg !181
  %45 = load ptr, ptr %44, align 8, !dbg !181
  %46 = getelementptr inbounds [257 x i8], ptr %11, i64 0, i64 0, !dbg !182
  %47 = call i32 @scanHostPort(ptr noundef %45, ptr noundef %46, ptr noundef %9), !dbg !183
  %48 = icmp ne i32 %47, 0, !dbg !183
  br i1 %48, label %74, label %49, !dbg !184

49:                                               ; preds = %42, %35, %2
  %50 = load ptr, ptr @stderr, align 8, !dbg !185
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.10), !dbg !187
  %52 = load ptr, ptr @stderr, align 8, !dbg !188
  %53 = load ptr, ptr %5, align 8, !dbg !189
  %54 = getelementptr inbounds ptr, ptr %53, i64 0, !dbg !189
  %55 = load ptr, ptr %54, align 8, !dbg !189
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.11, ptr noundef %55), !dbg !190
  %57 = load ptr, ptr @stderr, align 8, !dbg !191
  %58 = load ptr, ptr %5, align 8, !dbg !192
  %59 = getelementptr inbounds ptr, ptr %58, i64 0, !dbg !192
  %60 = load ptr, ptr %59, align 8, !dbg !192
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str.12, ptr noundef %60), !dbg !193
  %62 = load ptr, ptr @stderr, align 8, !dbg !194
  %63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef @.str.13), !dbg !195
  %64 = load ptr, ptr @stderr, align 8, !dbg !196
  %65 = load ptr, ptr %5, align 8, !dbg !197
  %66 = getelementptr inbounds ptr, ptr %65, i64 0, !dbg !197
  %67 = load ptr, ptr %66, align 8, !dbg !197
  %68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef @.str.14, ptr noundef %67), !dbg !198
  %69 = load ptr, ptr @stderr, align 8, !dbg !199
  %70 = load ptr, ptr %5, align 8, !dbg !200
  %71 = getelementptr inbounds ptr, ptr %70, i64 0, !dbg !200
  %72 = load ptr, ptr %71, align 8, !dbg !200
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.12, ptr noundef %72), !dbg !201
  store i32 1, ptr %3, align 4, !dbg !202
  br label %245, !dbg !202

74:                                               ; preds = %42, %29
  %75 = call ptr @PT_New(), !dbg !203
  store ptr %75, ptr %12, align 8, !dbg !204
  store i32 3, ptr %6, align 4, !dbg !205
  br label %76, !dbg !207

76:                                               ; preds = %205, %74
  %77 = load i32, ptr %6, align 4, !dbg !208
  %78 = load i32, ptr %4, align 4, !dbg !210
  %79 = icmp slt i32 %77, %78, !dbg !211
  br i1 %79, label %80, label %208, !dbg !212

80:                                               ; preds = %76
  %81 = load ptr, ptr %5, align 8, !dbg !213
  %82 = load i32, ptr %6, align 4, !dbg !216
  %83 = sext i32 %82 to i64, !dbg !213
  %84 = getelementptr inbounds ptr, ptr %81, i64 %83, !dbg !213
  %85 = load ptr, ptr %84, align 8, !dbg !213
  %86 = getelementptr inbounds i8, ptr %85, i64 0, !dbg !213
  %87 = load i8, ptr %86, align 1, !dbg !213
  %88 = sext i8 %87 to i32, !dbg !213
  %89 = icmp eq i32 %88, 45, !dbg !217
  br i1 %89, label %90, label %164, !dbg !218

90:                                               ; preds = %80
  %91 = load ptr, ptr %5, align 8, !dbg !219
  %92 = load i32, ptr %6, align 4, !dbg !222
  %93 = sext i32 %92 to i64, !dbg !219
  %94 = getelementptr inbounds ptr, ptr %91, i64 %93, !dbg !219
  %95 = load ptr, ptr %94, align 8, !dbg !219
  %96 = call i32 @strcmp(ptr noundef %95, ptr noundef @.str.15) #6, !dbg !223
  %97 = icmp eq i32 %96, 0, !dbg !224
  br i1 %97, label %98, label %155, !dbg !225

98:                                               ; preds = %90
  %99 = load i32, ptr %6, align 4, !dbg !226
  %100 = add nsw i32 %99, 1, !dbg !229
  %101 = load i32, ptr %4, align 4, !dbg !230
  %102 = icmp slt i32 %100, %101, !dbg !231
  br i1 %102, label %103, label %154, !dbg !232

103:                                              ; preds = %98
  call void @llvm.dbg.declare(metadata ptr %13, metadata !233, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata ptr %14, metadata !236, metadata !DIExpression()), !dbg !296
  %104 = load ptr, ptr %5, align 8, !dbg !297
  %105 = load i32, ptr %6, align 4, !dbg !298
  %106 = add nsw i32 %105, 1, !dbg !298
  store i32 %106, ptr %6, align 4, !dbg !298
  %107 = sext i32 %106 to i64, !dbg !297
  %108 = getelementptr inbounds ptr, ptr %104, i64 %107, !dbg !297
  %109 = load ptr, ptr %108, align 8, !dbg !297
  %110 = call noalias ptr @fopen(ptr noundef %109, ptr noundef @.str.16), !dbg !299
  store ptr %110, ptr %14, align 8, !dbg !296
  %111 = load ptr, ptr %14, align 8, !dbg !300
  %112 = icmp eq ptr %111, null, !dbg !302
  br i1 %112, label %113, label %121, !dbg !303

113:                                              ; preds = %103
  %114 = load ptr, ptr @stderr, align 8, !dbg !304
  %115 = load ptr, ptr %5, align 8, !dbg !306
  %116 = load i32, ptr %6, align 4, !dbg !307
  %117 = sext i32 %116 to i64, !dbg !306
  %118 = getelementptr inbounds ptr, ptr %115, i64 %117, !dbg !306
  %119 = load ptr, ptr %118, align 8, !dbg !306
  %120 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef @.str.17, ptr noundef %119), !dbg !308
  call void @exit(i32 noundef 1) #7, !dbg !309
  unreachable, !dbg !309

121:                                              ; preds = %103
  br label %122, !dbg !310

122:                                              ; preds = %150, %121
  %123 = load ptr, ptr %14, align 8, !dbg !311
  %124 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !312
  %125 = call i32 @linput(ptr noundef %123, ptr noundef %124, i32 noundef 256), !dbg !313
  %126 = icmp ne i32 %125, 0, !dbg !310
  br i1 %126, label %127, label %151, !dbg !310

127:                                              ; preds = %122
  call void @llvm.dbg.declare(metadata ptr %15, metadata !314, metadata !DIExpression()), !dbg !316
  %128 = load ptr, ptr %12, align 8, !dbg !317
  %129 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !318
  %130 = call i32 @PT_AddIndex(ptr noundef %128, ptr noundef %129), !dbg !319
  store i32 %130, ptr %15, align 4, !dbg !316
  %131 = load i32, ptr %15, align 4, !dbg !320
  %132 = icmp sgt i32 %131, 0, !dbg !322
  br i1 %132, label %133, label %138, !dbg !323

133:                                              ; preds = %127
  %134 = load ptr, ptr @stderr, align 8, !dbg !324
  %135 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !326
  %136 = load i32, ptr %15, align 4, !dbg !327
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef @.str.18, ptr noundef %135, i32 noundef %136), !dbg !328
  br label %150, !dbg !329

138:                                              ; preds = %127
  %139 = load i32, ptr %15, align 4, !dbg !330
  %140 = icmp eq i32 %139, 0, !dbg !332
  br i1 %140, label %141, label %145, !dbg !333

141:                                              ; preds = %138
  %142 = load ptr, ptr @stderr, align 8, !dbg !334
  %143 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !336
  %144 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef @.str.19, ptr noundef %143), !dbg !337
  br label %149, !dbg !338

145:                                              ; preds = %138
  %146 = load ptr, ptr @stderr, align 8, !dbg !339
  %147 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !341
  %148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef @.str.20, ptr noundef %147), !dbg !342
  br label %149

149:                                              ; preds = %145, %141
  br label %150

150:                                              ; preds = %149, %133
  br label %122, !dbg !310, !llvm.loop !343

151:                                              ; preds = %122
  %152 = load ptr, ptr %14, align 8, !dbg !346
  %153 = call i32 @fclose(ptr noundef %152), !dbg !347
  br label %154, !dbg !348

154:                                              ; preds = %151, %98
  br label %163, !dbg !349

155:                                              ; preds = %90
  %156 = load ptr, ptr @stderr, align 8, !dbg !350
  %157 = load ptr, ptr %5, align 8, !dbg !352
  %158 = load i32, ptr %6, align 4, !dbg !353
  %159 = sext i32 %158 to i64, !dbg !352
  %160 = getelementptr inbounds ptr, ptr %157, i64 %159, !dbg !352
  %161 = load ptr, ptr %160, align 8, !dbg !352
  %162 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef @.str.21, ptr noundef %161), !dbg !354
  call void @exit(i32 noundef 1) #7, !dbg !355
  unreachable, !dbg !355

163:                                              ; preds = %154
  br label %204, !dbg !356

164:                                              ; preds = %80
  call void @llvm.dbg.declare(metadata ptr %16, metadata !357, metadata !DIExpression()), !dbg !359
  %165 = load ptr, ptr %12, align 8, !dbg !360
  %166 = load ptr, ptr %5, align 8, !dbg !361
  %167 = load i32, ptr %6, align 4, !dbg !362
  %168 = sext i32 %167 to i64, !dbg !361
  %169 = getelementptr inbounds ptr, ptr %166, i64 %168, !dbg !361
  %170 = load ptr, ptr %169, align 8, !dbg !361
  %171 = call i32 @PT_AddIndex(ptr noundef %165, ptr noundef %170), !dbg !363
  store i32 %171, ptr %16, align 4, !dbg !359
  %172 = load i32, ptr %16, align 4, !dbg !364
  %173 = icmp sgt i32 %172, 0, !dbg !366
  br i1 %173, label %174, label %183, !dbg !367

174:                                              ; preds = %164
  %175 = load ptr, ptr @stderr, align 8, !dbg !368
  %176 = load ptr, ptr %5, align 8, !dbg !370
  %177 = load i32, ptr %6, align 4, !dbg !371
  %178 = sext i32 %177 to i64, !dbg !370
  %179 = getelementptr inbounds ptr, ptr %176, i64 %178, !dbg !370
  %180 = load ptr, ptr %179, align 8, !dbg !370
  %181 = load i32, ptr %16, align 4, !dbg !372
  %182 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %175, ptr noundef @.str.18, ptr noundef %180, i32 noundef %181), !dbg !373
  br label %203, !dbg !374

183:                                              ; preds = %164
  %184 = load i32, ptr %16, align 4, !dbg !375
  %185 = icmp eq i32 %184, 0, !dbg !377
  br i1 %185, label %186, label %194, !dbg !378

186:                                              ; preds = %183
  %187 = load ptr, ptr @stderr, align 8, !dbg !379
  %188 = load ptr, ptr %5, align 8, !dbg !381
  %189 = load i32, ptr %6, align 4, !dbg !382
  %190 = sext i32 %189 to i64, !dbg !381
  %191 = getelementptr inbounds ptr, ptr %188, i64 %190, !dbg !381
  %192 = load ptr, ptr %191, align 8, !dbg !381
  %193 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %187, ptr noundef @.str.19, ptr noundef %192), !dbg !383
  br label %202, !dbg !384

194:                                              ; preds = %183
  %195 = load ptr, ptr @stderr, align 8, !dbg !385
  %196 = load ptr, ptr %5, align 8, !dbg !387
  %197 = load i32, ptr %6, align 4, !dbg !388
  %198 = sext i32 %197 to i64, !dbg !387
  %199 = getelementptr inbounds ptr, ptr %196, i64 %198, !dbg !387
  %200 = load ptr, ptr %199, align 8, !dbg !387
  %201 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %195, ptr noundef @.str.20, ptr noundef %200), !dbg !389
  br label %202

202:                                              ; preds = %194, %186
  br label %203

203:                                              ; preds = %202, %174
  br label %204

204:                                              ; preds = %203, %163
  br label %205, !dbg !390

205:                                              ; preds = %204
  %206 = load i32, ptr %6, align 4, !dbg !391
  %207 = add nsw i32 %206, 1, !dbg !391
  store i32 %207, ptr %6, align 4, !dbg !391
  br label %76, !dbg !392, !llvm.loop !393

208:                                              ; preds = %76
  %209 = call ptr @signal(i32 noundef 13, ptr noundef @sig_brpipe) #8, !dbg !395
  %210 = load ptr, ptr %5, align 8, !dbg !396
  %211 = getelementptr inbounds ptr, ptr %210, i64 1, !dbg !396
  %212 = load ptr, ptr %211, align 8, !dbg !396
  %213 = call i32 @strcmp(ptr noundef %212, ptr noundef @.str.9) #6, !dbg !398
  %214 = icmp ne i32 %213, 0, !dbg !399
  br i1 %214, label %215, label %222, !dbg !400

215:                                              ; preds = %208
  %216 = getelementptr inbounds [257 x i8], ptr %10, i64 0, i64 0, !dbg !401
  %217 = load i32, ptr %8, align 4, !dbg !403
  %218 = getelementptr inbounds [257 x i8], ptr %11, i64 0, i64 0, !dbg !404
  %219 = load i32, ptr %9, align 4, !dbg !405
  %220 = load ptr, ptr %12, align 8, !dbg !406
  %221 = call i32 @proxytrack_main(ptr noundef %216, i32 noundef %217, ptr noundef %218, i32 noundef %219, ptr noundef %220), !dbg !407
  store i32 %221, ptr %7, align 4, !dbg !408
  br label %242, !dbg !409

222:                                              ; preds = %208
  %223 = load ptr, ptr %12, align 8, !dbg !410
  %224 = load ptr, ptr %5, align 8, !dbg !413
  %225 = getelementptr inbounds ptr, ptr %224, i64 2, !dbg !413
  %226 = load ptr, ptr %225, align 8, !dbg !413
  %227 = call i32 @PT_SaveCache(ptr noundef %223, ptr noundef %226), !dbg !414
  store i32 %227, ptr %7, align 4, !dbg !415
  %228 = icmp eq i32 %227, 0, !dbg !416
  br i1 %228, label %229, label %235, !dbg !417

229:                                              ; preds = %222
  %230 = load ptr, ptr @stderr, align 8, !dbg !418
  %231 = load ptr, ptr %5, align 8, !dbg !420
  %232 = getelementptr inbounds ptr, ptr %231, i64 2, !dbg !420
  %233 = load ptr, ptr %232, align 8, !dbg !420
  %234 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef @.str.22, ptr noundef %233), !dbg !421
  br label %241, !dbg !422

235:                                              ; preds = %222
  %236 = load ptr, ptr @stderr, align 8, !dbg !423
  %237 = load ptr, ptr %5, align 8, !dbg !425
  %238 = getelementptr inbounds ptr, ptr %237, i64 2, !dbg !425
  %239 = load ptr, ptr %238, align 8, !dbg !425
  %240 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %236, ptr noundef @.str.23, ptr noundef %239), !dbg !426
  br label %241

241:                                              ; preds = %235, %229
  br label %242

242:                                              ; preds = %241, %215
  %243 = load ptr, ptr %12, align 8, !dbg !427
  call void @PT_Delete(ptr noundef %243), !dbg !428
  %244 = load i32, ptr %7, align 4, !dbg !429
  store i32 %244, ptr %3, align 4, !dbg !430
  br label %245, !dbg !430

245:                                              ; preds = %242, %49
  %246 = load i32, ptr %3, align 4, !dbg !431
  ret i32 %246, !dbg !431
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scanHostPort(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !432 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !438, metadata !DIExpression()), !dbg !439
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !440, metadata !DIExpression()), !dbg !441
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !442, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.declare(metadata ptr %8, metadata !444, metadata !DIExpression()), !dbg !445
  %10 = load ptr, ptr %5, align 8, !dbg !446
  %11 = call ptr @strrchr(ptr noundef %10, i32 noundef 58) #6, !dbg !447
  store ptr %11, ptr %8, align 8, !dbg !445
  %12 = load ptr, ptr %8, align 8, !dbg !448
  %13 = icmp ne ptr %12, null, !dbg !450
  br i1 %13, label %14, label %39, !dbg !451

14:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !452, metadata !DIExpression()), !dbg !454
  %15 = load ptr, ptr %8, align 8, !dbg !455
  %16 = load ptr, ptr %5, align 8, !dbg !456
  %17 = ptrtoint ptr %15 to i64, !dbg !457
  %18 = ptrtoint ptr %16 to i64, !dbg !457
  %19 = sub i64 %17, %18, !dbg !457
  %20 = trunc i64 %19 to i32, !dbg !458
  store i32 %20, ptr %9, align 4, !dbg !454
  %21 = load i32, ptr %9, align 4, !dbg !459
  %22 = icmp slt i32 %21, 256, !dbg !461
  br i1 %22, label %23, label %38, !dbg !462

23:                                               ; preds = %14
  %24 = load ptr, ptr %6, align 8, !dbg !463
  %25 = getelementptr inbounds i8, ptr %24, i64 0, !dbg !463
  store i8 0, ptr %25, align 1, !dbg !465
  %26 = load ptr, ptr %6, align 8, !dbg !466
  %27 = load ptr, ptr %5, align 8, !dbg !467
  %28 = load i32, ptr %9, align 4, !dbg !468
  %29 = sext i32 %28 to i64, !dbg !468
  %30 = call ptr @strncat(ptr noundef %26, ptr noundef %27, i64 noundef %29) #8, !dbg !469
  %31 = load ptr, ptr %8, align 8, !dbg !470
  %32 = getelementptr inbounds i8, ptr %31, i64 1, !dbg !472
  %33 = load ptr, ptr %7, align 8, !dbg !473
  %34 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %32, ptr noundef @.str.24, ptr noundef %33) #8, !dbg !474
  %35 = icmp eq i32 %34, 1, !dbg !475
  br i1 %35, label %36, label %37, !dbg !476

36:                                               ; preds = %23
  store i32 1, ptr %4, align 4, !dbg !477
  br label %40, !dbg !477

37:                                               ; preds = %23
  br label %38, !dbg !479

38:                                               ; preds = %37, %14
  br label %39, !dbg !480

39:                                               ; preds = %38, %3
  store i32 0, ptr %4, align 4, !dbg !481
  br label %40, !dbg !481

40:                                               ; preds = %39, %36
  %41 = load i32, ptr %4, align 4, !dbg !482
  ret i32 %41, !dbg !482
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare ptr @PT_New() #2

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linput(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !483 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !487, metadata !DIExpression()), !dbg !488
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !489, metadata !DIExpression()), !dbg !490
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata ptr %7, metadata !493, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.declare(metadata ptr %8, metadata !495, metadata !DIExpression()), !dbg !496
  store i32 0, ptr %8, align 4, !dbg !496
  br label %9, !dbg !497

9:                                                ; preds = %40, %3
  %10 = load ptr, ptr %4, align 8, !dbg !498
  %11 = call i32 @fgetc(ptr noundef %10), !dbg !500
  store i32 %11, ptr %7, align 4, !dbg !501
  %12 = load i32, ptr %7, align 4, !dbg !502
  %13 = icmp ne i32 %12, -1, !dbg !504
  br i1 %13, label %14, label %28, !dbg !505

14:                                               ; preds = %9
  %15 = load i32, ptr %7, align 4, !dbg !506
  switch i32 %15, label %19 [
    i32 13, label %16
    i32 10, label %17
    i32 0, label %18
    i32 9, label %18
    i32 12, label %18
  ], !dbg !508

16:                                               ; preds = %14
  br label %27, !dbg !509

17:                                               ; preds = %14
  store i32 -1, ptr %7, align 4, !dbg !511
  br label %27, !dbg !512

18:                                               ; preds = %14, %14, %14
  br label %27, !dbg !513

19:                                               ; preds = %14
  %20 = load i32, ptr %7, align 4, !dbg !514
  %21 = trunc i32 %20 to i8, !dbg !515
  %22 = load ptr, ptr %5, align 8, !dbg !516
  %23 = load i32, ptr %8, align 4, !dbg !517
  %24 = add nsw i32 %23, 1, !dbg !517
  store i32 %24, ptr %8, align 4, !dbg !517
  %25 = sext i32 %23 to i64, !dbg !516
  %26 = getelementptr inbounds i8, ptr %22, i64 %25, !dbg !516
  store i8 %21, ptr %26, align 1, !dbg !518
  br label %27, !dbg !519

27:                                               ; preds = %19, %18, %17, %16
  br label %28, !dbg !520

28:                                               ; preds = %27, %9
  br label %29, !dbg !521

29:                                               ; preds = %28
  %30 = load i32, ptr %7, align 4, !dbg !522
  %31 = icmp ne i32 %30, -1, !dbg !523
  br i1 %31, label %32, label %40, !dbg !524

32:                                               ; preds = %29
  %33 = load i32, ptr %7, align 4, !dbg !525
  %34 = icmp ne i32 %33, -1, !dbg !526
  br i1 %34, label %35, label %40, !dbg !527

35:                                               ; preds = %32
  %36 = load i32, ptr %8, align 4, !dbg !528
  %37 = load i32, ptr %6, align 4, !dbg !529
  %38 = sub nsw i32 %37, 1, !dbg !530
  %39 = icmp slt i32 %36, %38, !dbg !531
  br label %40

40:                                               ; preds = %35, %32, %29
  %41 = phi i1 [ false, %32 ], [ false, %29 ], [ %39, %35 ], !dbg !532
  br i1 %41, label %9, label %42, !dbg !521, !llvm.loop !533

42:                                               ; preds = %40
  %43 = load ptr, ptr %5, align 8, !dbg !535
  %44 = load i32, ptr %8, align 4, !dbg !536
  %45 = sext i32 %44 to i64, !dbg !535
  %46 = getelementptr inbounds i8, ptr %43, i64 %45, !dbg !535
  store i8 0, ptr %46, align 1, !dbg !537
  %47 = load i32, ptr %8, align 4, !dbg !538
  ret i32 %47, !dbg !539
}

declare i32 @PT_AddIndex(ptr noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_brpipe(i32 noundef %0) #0 !dbg !540 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !543, metadata !DIExpression()), !dbg !544
  ret void, !dbg !545
}

declare i32 @proxytrack_main(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @PT_SaveCache(ptr noundef, ptr noundef) #2

declare void @PT_Delete(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare ptr @strncat(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #5

declare i32 @fgetc(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!115}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/proxy/main.c", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "982f40292e08b299def2e8aa0fd24e8c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 67)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 61)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 2)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 70)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !24, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !3, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 37)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 47)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 10)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 13)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1112, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 139)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 888, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 111)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 15)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1016, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 127)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 7)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 3)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 135, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 34)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 32)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !88, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 29)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 14)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 17)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 28)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !78, isLocal: true, isDefinition: true)
!115 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !116, globals: !119, splitDebugInlining: false, nameTableKind: None)
!116 = !{!117, !118, !4}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!118 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!119 = !{!0, !7, !12, !17, !22, !27, !29, !31, !36, !41, !46, !51, !56, !61, !66, !71, !76, !81, !86, !91, !93, !98, !103, !108, !113}
!120 = !{i32 7, !"Dwarf Version", i32 5}
!121 = !{i32 2, !"Debug Info Version", i32 3}
!122 = !{i32 1, !"wchar_size", i32 4}
!123 = !{i32 8, !"PIC Level", i32 2}
!124 = !{i32 7, !"PIE Level", i32 2}
!125 = !{i32 7, !"uwtable", i32 2}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 16.0.0"}
!128 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 65, type: !129, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !133)
!129 = !DISubroutineType(types: !130)
!130 = !{!118, !118, !131}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!133 = !{}
!134 = !DILocalVariable(name: "argc", arg: 1, scope: !128, file: !2, line: 65, type: !118)
!135 = !DILocation(line: 65, column: 14, scope: !128)
!136 = !DILocalVariable(name: "argv", arg: 2, scope: !128, file: !2, line: 65, type: !131)
!137 = !DILocation(line: 65, column: 26, scope: !128)
!138 = !DILocalVariable(name: "i", scope: !128, file: !2, line: 66, type: !118)
!139 = !DILocation(line: 66, column: 7, scope: !128)
!140 = !DILocalVariable(name: "ret", scope: !128, file: !2, line: 67, type: !118)
!141 = !DILocation(line: 67, column: 7, scope: !128)
!142 = !DILocalVariable(name: "proxyPort", scope: !128, file: !2, line: 68, type: !118)
!143 = !DILocation(line: 68, column: 7, scope: !128)
!144 = !DILocalVariable(name: "icpPort", scope: !128, file: !2, line: 68, type: !118)
!145 = !DILocation(line: 68, column: 22, scope: !128)
!146 = !DILocalVariable(name: "proxyAddr", scope: !128, file: !2, line: 69, type: !147)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 257)
!150 = !DILocation(line: 69, column: 8, scope: !128)
!151 = !DILocalVariable(name: "icpAddr", scope: !128, file: !2, line: 69, type: !147)
!152 = !DILocation(line: 69, column: 28, scope: !128)
!153 = !DILocalVariable(name: "index", scope: !128, file: !2, line: 70, type: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "PT_Indexes", file: !155, line: 43, baseType: !156)
!155 = !DIFile(filename: "src/proxy/store.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "9785946b503d39f34aeb925b5fa1a2c6")
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PT_Indexes", file: !155, line: 40, flags: DIFlagFwdDecl)
!158 = !DILocation(line: 70, column: 14, scope: !128)
!159 = !DILocation(line: 92, column: 3, scope: !128)
!160 = !DILocation(line: 94, column: 3, scope: !128)
!161 = !DILocation(line: 95, column: 3, scope: !128)
!162 = !DILocation(line: 96, column: 3, scope: !128)
!163 = !DILocation(line: 97, column: 3, scope: !128)
!164 = !DILocation(line: 98, column: 3, scope: !128)
!165 = !DILocation(line: 99, column: 3, scope: !128)
!166 = !DILocation(line: 100, column: 3, scope: !128)
!167 = !DILocation(line: 101, column: 3, scope: !128)
!168 = !DILocation(line: 102, column: 3, scope: !128)
!169 = !DILocation(line: 103, column: 7, scope: !170)
!170 = distinct !DILexicalBlock(scope: !128, file: !2, line: 103, column: 7)
!171 = !DILocation(line: 103, column: 12, scope: !170)
!172 = !DILocation(line: 104, column: 7, scope: !170)
!173 = !DILocation(line: 104, column: 18, scope: !170)
!174 = !DILocation(line: 104, column: 11, scope: !170)
!175 = !DILocation(line: 104, column: 40, scope: !170)
!176 = !DILocation(line: 105, column: 11, scope: !170)
!177 = !DILocation(line: 105, column: 29, scope: !170)
!178 = !DILocation(line: 105, column: 38, scope: !170)
!179 = !DILocation(line: 105, column: 16, scope: !170)
!180 = !DILocation(line: 106, column: 15, scope: !170)
!181 = !DILocation(line: 106, column: 32, scope: !170)
!182 = !DILocation(line: 106, column: 41, scope: !170)
!183 = !DILocation(line: 106, column: 19, scope: !170)
!184 = !DILocation(line: 103, column: 7, scope: !128)
!185 = !DILocation(line: 110, column: 13, scope: !186)
!186 = distinct !DILexicalBlock(scope: !170, file: !2, line: 109, column: 7)
!187 = !DILocation(line: 110, column: 5, scope: !186)
!188 = !DILocation(line: 111, column: 13, scope: !186)
!189 = !DILocation(line: 113, column: 13, scope: !186)
!190 = !DILocation(line: 111, column: 5, scope: !186)
!191 = !DILocation(line: 114, column: 13, scope: !186)
!192 = !DILocation(line: 116, column: 13, scope: !186)
!193 = !DILocation(line: 114, column: 5, scope: !186)
!194 = !DILocation(line: 117, column: 13, scope: !186)
!195 = !DILocation(line: 117, column: 5, scope: !186)
!196 = !DILocation(line: 118, column: 13, scope: !186)
!197 = !DILocation(line: 120, column: 13, scope: !186)
!198 = !DILocation(line: 118, column: 5, scope: !186)
!199 = !DILocation(line: 121, column: 13, scope: !186)
!200 = !DILocation(line: 123, column: 13, scope: !186)
!201 = !DILocation(line: 121, column: 5, scope: !186)
!202 = !DILocation(line: 124, column: 5, scope: !186)
!203 = !DILocation(line: 126, column: 11, scope: !128)
!204 = !DILocation(line: 126, column: 9, scope: !128)
!205 = !DILocation(line: 127, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !128, file: !2, line: 127, column: 3)
!207 = !DILocation(line: 127, column: 7, scope: !206)
!208 = !DILocation(line: 127, column: 14, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !2, line: 127, column: 3)
!210 = !DILocation(line: 127, column: 18, scope: !209)
!211 = !DILocation(line: 127, column: 16, scope: !209)
!212 = !DILocation(line: 127, column: 3, scope: !206)
!213 = !DILocation(line: 128, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !2, line: 128, column: 9)
!215 = distinct !DILexicalBlock(scope: !209, file: !2, line: 127, column: 29)
!216 = !DILocation(line: 128, column: 14, scope: !214)
!217 = !DILocation(line: 128, column: 20, scope: !214)
!218 = !DILocation(line: 128, column: 9, scope: !215)
!219 = !DILocation(line: 129, column: 18, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !2, line: 129, column: 11)
!221 = distinct !DILexicalBlock(scope: !214, file: !2, line: 128, column: 28)
!222 = !DILocation(line: 129, column: 23, scope: !220)
!223 = !DILocation(line: 129, column: 11, scope: !220)
!224 = !DILocation(line: 129, column: 37, scope: !220)
!225 = !DILocation(line: 129, column: 11, scope: !221)
!226 = !DILocation(line: 130, column: 13, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !2, line: 130, column: 13)
!228 = distinct !DILexicalBlock(scope: !220, file: !2, line: 129, column: 43)
!229 = !DILocation(line: 130, column: 15, scope: !227)
!230 = !DILocation(line: 130, column: 21, scope: !227)
!231 = !DILocation(line: 130, column: 19, scope: !227)
!232 = !DILocation(line: 130, column: 13, scope: !228)
!233 = !DILocalVariable(name: "line", scope: !234, file: !2, line: 131, type: !147)
!234 = distinct !DILexicalBlock(scope: !227, file: !2, line: 130, column: 27)
!235 = !DILocation(line: 131, column: 16, scope: !234)
!236 = !DILocalVariable(name: "fp", scope: !234, file: !2, line: 132, type: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !239, line: 7, baseType: !240)
!239 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !241, line: 49, size: 1728, elements: !242)
!241 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !258, !260, !261, !262, !266, !268, !270, !274, !277, !279, !282, !285, !286, !287, !291, !292}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !240, file: !241, line: 51, baseType: !118, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !240, file: !241, line: 54, baseType: !132, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !240, file: !241, line: 55, baseType: !132, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !240, file: !241, line: 56, baseType: !132, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !240, file: !241, line: 57, baseType: !132, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !240, file: !241, line: 58, baseType: !132, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !240, file: !241, line: 59, baseType: !132, size: 64, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !240, file: !241, line: 60, baseType: !132, size: 64, offset: 448)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !240, file: !241, line: 61, baseType: !132, size: 64, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !240, file: !241, line: 64, baseType: !132, size: 64, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !240, file: !241, line: 65, baseType: !132, size: 64, offset: 640)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !240, file: !241, line: 66, baseType: !132, size: 64, offset: 704)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !240, file: !241, line: 68, baseType: !256, size: 64, offset: 768)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !241, line: 36, flags: DIFlagFwdDecl)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !240, file: !241, line: 70, baseType: !259, size: 64, offset: 832)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !240, file: !241, line: 72, baseType: !118, size: 32, offset: 896)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !240, file: !241, line: 73, baseType: !118, size: 32, offset: 928)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !240, file: !241, line: 74, baseType: !263, size: 64, offset: 960)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !264, line: 152, baseType: !265)
!264 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!265 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !240, file: !241, line: 77, baseType: !267, size: 16, offset: 1024)
!267 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !240, file: !241, line: 78, baseType: !269, size: 8, offset: 1040)
!269 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !240, file: !241, line: 79, baseType: !271, size: 8, offset: 1048)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 1)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !240, file: !241, line: 81, baseType: !275, size: 64, offset: 1088)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !241, line: 43, baseType: null)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !240, file: !241, line: 89, baseType: !278, size: 64, offset: 1152)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !264, line: 153, baseType: !265)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !240, file: !241, line: 91, baseType: !280, size: 64, offset: 1216)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !241, line: 37, flags: DIFlagFwdDecl)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !240, file: !241, line: 92, baseType: !283, size: 64, offset: 1280)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !241, line: 38, flags: DIFlagFwdDecl)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !240, file: !241, line: 93, baseType: !259, size: 64, offset: 1344)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !240, file: !241, line: 94, baseType: !117, size: 64, offset: 1408)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !240, file: !241, line: 95, baseType: !288, size: 64, offset: 1472)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !289, line: 46, baseType: !290)
!289 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!290 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !240, file: !241, line: 96, baseType: !118, size: 32, offset: 1536)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !240, file: !241, line: 98, baseType: !293, size: 160, offset: 1568)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 20)
!296 = !DILocation(line: 132, column: 17, scope: !234)
!297 = !DILocation(line: 132, column: 28, scope: !234)
!298 = !DILocation(line: 132, column: 33, scope: !234)
!299 = !DILocation(line: 132, column: 22, scope: !234)
!300 = !DILocation(line: 134, column: 15, scope: !301)
!301 = distinct !DILexicalBlock(scope: !234, file: !2, line: 134, column: 15)
!302 = !DILocation(line: 134, column: 18, scope: !301)
!303 = !DILocation(line: 134, column: 15, scope: !234)
!304 = !DILocation(line: 135, column: 21, scope: !305)
!305 = distinct !DILexicalBlock(scope: !301, file: !2, line: 134, column: 27)
!306 = !DILocation(line: 135, column: 67, scope: !305)
!307 = !DILocation(line: 135, column: 72, scope: !305)
!308 = !DILocation(line: 135, column: 13, scope: !305)
!309 = !DILocation(line: 136, column: 13, scope: !305)
!310 = !DILocation(line: 138, column: 11, scope: !234)
!311 = !DILocation(line: 138, column: 24, scope: !234)
!312 = !DILocation(line: 138, column: 28, scope: !234)
!313 = !DILocation(line: 138, column: 17, scope: !234)
!314 = !DILocalVariable(name: "itemsAdded", scope: !315, file: !2, line: 139, type: !118)
!315 = distinct !DILexicalBlock(scope: !234, file: !2, line: 138, column: 40)
!316 = !DILocation(line: 139, column: 17, scope: !315)
!317 = !DILocation(line: 139, column: 42, scope: !315)
!318 = !DILocation(line: 139, column: 49, scope: !315)
!319 = !DILocation(line: 139, column: 30, scope: !315)
!320 = !DILocation(line: 141, column: 17, scope: !321)
!321 = distinct !DILexicalBlock(scope: !315, file: !2, line: 141, column: 17)
!322 = !DILocation(line: 141, column: 28, scope: !321)
!323 = !DILocation(line: 141, column: 17, scope: !315)
!324 = !DILocation(line: 142, column: 23, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !2, line: 141, column: 33)
!326 = !DILocation(line: 142, column: 67, scope: !325)
!327 = !DILocation(line: 143, column: 23, scope: !325)
!328 = !DILocation(line: 142, column: 15, scope: !325)
!329 = !DILocation(line: 144, column: 13, scope: !325)
!330 = !DILocation(line: 144, column: 24, scope: !331)
!331 = distinct !DILexicalBlock(scope: !321, file: !2, line: 144, column: 24)
!332 = !DILocation(line: 144, column: 35, scope: !331)
!333 = !DILocation(line: 144, column: 24, scope: !321)
!334 = !DILocation(line: 145, column: 23, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !2, line: 144, column: 41)
!336 = !DILocation(line: 145, column: 67, scope: !335)
!337 = !DILocation(line: 145, column: 15, scope: !335)
!338 = !DILocation(line: 146, column: 13, scope: !335)
!339 = !DILocation(line: 147, column: 23, scope: !340)
!340 = distinct !DILexicalBlock(scope: !331, file: !2, line: 146, column: 20)
!341 = !DILocation(line: 147, column: 64, scope: !340)
!342 = !DILocation(line: 147, column: 15, scope: !340)
!343 = distinct !{!343, !310, !344, !345}
!344 = !DILocation(line: 149, column: 11, scope: !234)
!345 = !{!"llvm.loop.mustprogress"}
!346 = !DILocation(line: 150, column: 18, scope: !234)
!347 = !DILocation(line: 150, column: 11, scope: !234)
!348 = !DILocation(line: 151, column: 9, scope: !234)
!349 = !DILocation(line: 152, column: 7, scope: !228)
!350 = !DILocation(line: 153, column: 17, scope: !351)
!351 = distinct !DILexicalBlock(scope: !220, file: !2, line: 152, column: 14)
!352 = !DILocation(line: 153, column: 43, scope: !351)
!353 = !DILocation(line: 153, column: 48, scope: !351)
!354 = !DILocation(line: 153, column: 9, scope: !351)
!355 = !DILocation(line: 154, column: 9, scope: !351)
!356 = !DILocation(line: 156, column: 5, scope: !221)
!357 = !DILocalVariable(name: "itemsAdded", scope: !358, file: !2, line: 157, type: !118)
!358 = distinct !DILexicalBlock(scope: !214, file: !2, line: 156, column: 12)
!359 = !DILocation(line: 157, column: 11, scope: !358)
!360 = !DILocation(line: 157, column: 36, scope: !358)
!361 = !DILocation(line: 157, column: 43, scope: !358)
!362 = !DILocation(line: 157, column: 48, scope: !358)
!363 = !DILocation(line: 157, column: 24, scope: !358)
!364 = !DILocation(line: 159, column: 11, scope: !365)
!365 = distinct !DILexicalBlock(scope: !358, file: !2, line: 159, column: 11)
!366 = !DILocation(line: 159, column: 22, scope: !365)
!367 = !DILocation(line: 159, column: 11, scope: !358)
!368 = !DILocation(line: 160, column: 17, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !2, line: 159, column: 27)
!370 = !DILocation(line: 160, column: 61, scope: !369)
!371 = !DILocation(line: 160, column: 66, scope: !369)
!372 = !DILocation(line: 161, column: 17, scope: !369)
!373 = !DILocation(line: 160, column: 9, scope: !369)
!374 = !DILocation(line: 162, column: 7, scope: !369)
!375 = !DILocation(line: 162, column: 18, scope: !376)
!376 = distinct !DILexicalBlock(scope: !365, file: !2, line: 162, column: 18)
!377 = !DILocation(line: 162, column: 29, scope: !376)
!378 = !DILocation(line: 162, column: 18, scope: !365)
!379 = !DILocation(line: 163, column: 17, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !2, line: 162, column: 35)
!381 = !DILocation(line: 163, column: 61, scope: !380)
!382 = !DILocation(line: 163, column: 66, scope: !380)
!383 = !DILocation(line: 163, column: 9, scope: !380)
!384 = !DILocation(line: 164, column: 7, scope: !380)
!385 = !DILocation(line: 165, column: 17, scope: !386)
!386 = distinct !DILexicalBlock(scope: !376, file: !2, line: 164, column: 14)
!387 = !DILocation(line: 165, column: 58, scope: !386)
!388 = !DILocation(line: 165, column: 63, scope: !386)
!389 = !DILocation(line: 165, column: 9, scope: !386)
!390 = !DILocation(line: 168, column: 3, scope: !215)
!391 = !DILocation(line: 127, column: 25, scope: !209)
!392 = !DILocation(line: 127, column: 3, scope: !209)
!393 = distinct !{!393, !212, !394, !345}
!394 = !DILocation(line: 168, column: 3, scope: !206)
!395 = !DILocation(line: 172, column: 3, scope: !128)
!396 = !DILocation(line: 176, column: 14, scope: !397)
!397 = distinct !DILexicalBlock(scope: !128, file: !2, line: 176, column: 7)
!398 = !DILocation(line: 176, column: 7, scope: !397)
!399 = !DILocation(line: 176, column: 36, scope: !397)
!400 = !DILocation(line: 176, column: 7, scope: !128)
!401 = !DILocation(line: 177, column: 27, scope: !402)
!402 = distinct !DILexicalBlock(scope: !397, file: !2, line: 176, column: 42)
!403 = !DILocation(line: 177, column: 38, scope: !402)
!404 = !DILocation(line: 177, column: 49, scope: !402)
!405 = !DILocation(line: 177, column: 58, scope: !402)
!406 = !DILocation(line: 177, column: 67, scope: !402)
!407 = !DILocation(line: 177, column: 11, scope: !402)
!408 = !DILocation(line: 177, column: 9, scope: !402)
!409 = !DILocation(line: 178, column: 3, scope: !402)
!410 = !DILocation(line: 179, column: 29, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !2, line: 179, column: 9)
!412 = distinct !DILexicalBlock(scope: !397, file: !2, line: 178, column: 10)
!413 = !DILocation(line: 179, column: 36, scope: !411)
!414 = !DILocation(line: 179, column: 16, scope: !411)
!415 = !DILocation(line: 179, column: 14, scope: !411)
!416 = !DILocation(line: 179, column: 46, scope: !411)
!417 = !DILocation(line: 179, column: 9, scope: !412)
!418 = !DILocation(line: 180, column: 15, scope: !419)
!419 = distinct !DILexicalBlock(scope: !411, file: !2, line: 179, column: 52)
!420 = !DILocation(line: 180, column: 44, scope: !419)
!421 = !DILocation(line: 180, column: 7, scope: !419)
!422 = !DILocation(line: 181, column: 5, scope: !419)
!423 = !DILocation(line: 182, column: 15, scope: !424)
!424 = distinct !DILexicalBlock(scope: !411, file: !2, line: 181, column: 12)
!425 = !DILocation(line: 182, column: 55, scope: !424)
!426 = !DILocation(line: 182, column: 7, scope: !424)
!427 = !DILocation(line: 187, column: 13, scope: !128)
!428 = !DILocation(line: 187, column: 3, scope: !128)
!429 = !DILocation(line: 193, column: 10, scope: !128)
!430 = !DILocation(line: 193, column: 3, scope: !128)
!431 = !DILocation(line: 194, column: 1, scope: !128)
!432 = distinct !DISubprogram(name: "scanHostPort", scope: !2, file: !2, line: 48, type: !433, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !115, retainedNodes: !133)
!433 = !DISubroutineType(types: !434)
!434 = !{!118, !435, !132, !437}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!438 = !DILocalVariable(name: "str", arg: 1, scope: !432, file: !2, line: 48, type: !435)
!439 = !DILocation(line: 48, column: 37, scope: !432)
!440 = !DILocalVariable(name: "host", arg: 2, scope: !432, file: !2, line: 48, type: !132)
!441 = !DILocation(line: 48, column: 48, scope: !432)
!442 = !DILocalVariable(name: "port", arg: 3, scope: !432, file: !2, line: 48, type: !437)
!443 = !DILocation(line: 48, column: 59, scope: !432)
!444 = !DILocalVariable(name: "pos", scope: !432, file: !2, line: 49, type: !132)
!445 = !DILocation(line: 49, column: 9, scope: !432)
!446 = !DILocation(line: 49, column: 23, scope: !432)
!447 = !DILocation(line: 49, column: 15, scope: !432)
!448 = !DILocation(line: 51, column: 7, scope: !449)
!449 = distinct !DILexicalBlock(scope: !432, file: !2, line: 51, column: 7)
!450 = !DILocation(line: 51, column: 11, scope: !449)
!451 = !DILocation(line: 51, column: 7, scope: !432)
!452 = !DILocalVariable(name: "n", scope: !453, file: !2, line: 52, type: !118)
!453 = distinct !DILexicalBlock(scope: !449, file: !2, line: 51, column: 20)
!454 = !DILocation(line: 52, column: 9, scope: !453)
!455 = !DILocation(line: 52, column: 20, scope: !453)
!456 = !DILocation(line: 52, column: 26, scope: !453)
!457 = !DILocation(line: 52, column: 24, scope: !453)
!458 = !DILocation(line: 52, column: 13, scope: !453)
!459 = !DILocation(line: 54, column: 9, scope: !460)
!460 = distinct !DILexicalBlock(scope: !453, file: !2, line: 54, column: 9)
!461 = !DILocation(line: 54, column: 11, scope: !460)
!462 = !DILocation(line: 54, column: 9, scope: !453)
!463 = !DILocation(line: 55, column: 7, scope: !464)
!464 = distinct !DILexicalBlock(scope: !460, file: !2, line: 54, column: 18)
!465 = !DILocation(line: 55, column: 15, scope: !464)
!466 = !DILocation(line: 56, column: 15, scope: !464)
!467 = !DILocation(line: 56, column: 21, scope: !464)
!468 = !DILocation(line: 56, column: 26, scope: !464)
!469 = !DILocation(line: 56, column: 7, scope: !464)
!470 = !DILocation(line: 57, column: 18, scope: !471)
!471 = distinct !DILexicalBlock(scope: !464, file: !2, line: 57, column: 11)
!472 = !DILocation(line: 57, column: 22, scope: !471)
!473 = !DILocation(line: 57, column: 33, scope: !471)
!474 = !DILocation(line: 57, column: 11, scope: !471)
!475 = !DILocation(line: 57, column: 39, scope: !471)
!476 = !DILocation(line: 57, column: 11, scope: !464)
!477 = !DILocation(line: 58, column: 9, scope: !478)
!478 = distinct !DILexicalBlock(scope: !471, file: !2, line: 57, column: 45)
!479 = !DILocation(line: 60, column: 5, scope: !464)
!480 = !DILocation(line: 61, column: 3, scope: !453)
!481 = !DILocation(line: 62, column: 3, scope: !432)
!482 = !DILocation(line: 63, column: 1, scope: !432)
!483 = distinct !DISubprogram(name: "linput", scope: !484, file: !484, line: 121, type: !485, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !115, retainedNodes: !133)
!484 = !DIFile(filename: "src/proxy/proxytrack.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "3efc982a0cc589c61cec92b6ae9a3678")
!485 = !DISubroutineType(types: !486)
!486 = !{!118, !237, !132, !118}
!487 = !DILocalVariable(name: "fp", arg: 1, scope: !483, file: !484, line: 121, type: !237)
!488 = !DILocation(line: 121, column: 37, scope: !483)
!489 = !DILocalVariable(name: "s", arg: 2, scope: !483, file: !484, line: 121, type: !132)
!490 = !DILocation(line: 121, column: 47, scope: !483)
!491 = !DILocalVariable(name: "max", arg: 3, scope: !483, file: !484, line: 121, type: !118)
!492 = !DILocation(line: 121, column: 54, scope: !483)
!493 = !DILocalVariable(name: "c", scope: !483, file: !484, line: 122, type: !118)
!494 = !DILocation(line: 122, column: 7, scope: !483)
!495 = !DILocalVariable(name: "j", scope: !483, file: !484, line: 123, type: !118)
!496 = !DILocation(line: 123, column: 7, scope: !483)
!497 = !DILocation(line: 125, column: 3, scope: !483)
!498 = !DILocation(line: 126, column: 15, scope: !499)
!499 = distinct !DILexicalBlock(scope: !483, file: !484, line: 125, column: 6)
!500 = !DILocation(line: 126, column: 9, scope: !499)
!501 = !DILocation(line: 126, column: 7, scope: !499)
!502 = !DILocation(line: 127, column: 9, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !484, line: 127, column: 9)
!504 = !DILocation(line: 127, column: 11, scope: !503)
!505 = !DILocation(line: 127, column: 9, scope: !499)
!506 = !DILocation(line: 128, column: 15, scope: !507)
!507 = distinct !DILexicalBlock(scope: !503, file: !484, line: 127, column: 19)
!508 = !DILocation(line: 128, column: 7, scope: !507)
!509 = !DILocation(line: 130, column: 9, scope: !510)
!510 = distinct !DILexicalBlock(scope: !507, file: !484, line: 128, column: 18)
!511 = !DILocation(line: 132, column: 11, scope: !510)
!512 = !DILocation(line: 133, column: 9, scope: !510)
!513 = !DILocation(line: 137, column: 9, scope: !510)
!514 = !DILocation(line: 139, column: 25, scope: !510)
!515 = !DILocation(line: 139, column: 18, scope: !510)
!516 = !DILocation(line: 139, column: 9, scope: !510)
!517 = !DILocation(line: 139, column: 12, scope: !510)
!518 = !DILocation(line: 139, column: 16, scope: !510)
!519 = !DILocation(line: 140, column: 9, scope: !510)
!520 = !DILocation(line: 142, column: 5, scope: !507)
!521 = !DILocation(line: 143, column: 3, scope: !499)
!522 = !DILocation(line: 143, column: 12, scope: !483)
!523 = !DILocation(line: 143, column: 14, scope: !483)
!524 = !DILocation(line: 143, column: 21, scope: !483)
!525 = !DILocation(line: 143, column: 25, scope: !483)
!526 = !DILocation(line: 143, column: 27, scope: !483)
!527 = !DILocation(line: 143, column: 35, scope: !483)
!528 = !DILocation(line: 143, column: 39, scope: !483)
!529 = !DILocation(line: 143, column: 44, scope: !483)
!530 = !DILocation(line: 143, column: 48, scope: !483)
!531 = !DILocation(line: 143, column: 41, scope: !483)
!532 = !DILocation(line: 0, scope: !483)
!533 = distinct !{!533, !497, !534, !345}
!534 = !DILocation(line: 143, column: 53, scope: !483)
!535 = !DILocation(line: 144, column: 3, scope: !483)
!536 = !DILocation(line: 144, column: 5, scope: !483)
!537 = !DILocation(line: 144, column: 8, scope: !483)
!538 = !DILocation(line: 145, column: 10, scope: !483)
!539 = !DILocation(line: 145, column: 3, scope: !483)
!540 = distinct !DISubprogram(name: "sig_brpipe", scope: !2, file: !2, line: 43, type: !541, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !115, retainedNodes: !133)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !118}
!543 = !DILocalVariable(name: "code", arg: 1, scope: !540, file: !2, line: 43, type: !118)
!544 = !DILocation(line: 43, column: 28, scope: !540)
!545 = !DILocation(line: 45, column: 1, scope: !540)
