; ModuleID = './src/protocols/pubsub/trie.c'
source_filename = "./src/protocols/pubsub/trie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_trie = type { ptr }
%struct.nn_trie_node = type { i32, i8, i8, [10 x i8], %union.anon }
%union.anon = type { %struct.anon.0, [4 x i8] }
%struct.anon.0 = type { i8, i8, i16 }
%struct.anon = type { [8 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"*node\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"./src/protocols/pubsub/trie.c\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.nn_trie_subscribe = private unnamed_addr constant [65 x i8] c"int nn_trie_subscribe(struct nn_trie *, const uint8_t *, size_t)\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [7 x i8] c"!*node\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [21 x i8] c"===================\0A\00", align 1, !dbg !25
@.str.5 = private unnamed_addr constant [13 x i8] c"refcount=%d\0A\00", align 1, !dbg !30
@.str.6 = private unnamed_addr constant [15 x i8] c"prefix_len=%d\0A\00", align 1, !dbg !35
@.str.7 = private unnamed_addr constant [12 x i8] c"type=dense\0A\00", align 1, !dbg !40
@.str.8 = private unnamed_addr constant [13 x i8] c"type=sparse\0A\00", align 1, !dbg !45
@.str.9 = private unnamed_addr constant [9 x i8] c"prefix=\22\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [18 x i8] c"sparse.children=\22\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [21 x i8] c"dense.min='%c' (%d)\0A\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [21 x i8] c"dense.max='%c' (%d)\0A\00", align 1, !dbg !64
@.str.14 = private unnamed_addr constant [14 x i8] c"dense.nbr=%d\0A\00", align 1, !dbg !66
@.str.15 = private unnamed_addr constant [23 x i8] c"index != (*self)->type\00", align 1, !dbg !71
@__PRETTY_FUNCTION__.nn_node_unsubscribe = private unnamed_addr constant [73 x i8] c"int nn_node_unsubscribe(struct nn_trie_node **, const uint8_t *, size_t)\00", align 1, !dbg !76
@.str.16 = private unnamed_addr constant [6 x i8] c"*self\00", align 1, !dbg !81
@.str.17 = private unnamed_addr constant [9 x i8] c"new_node\00", align 1, !dbg !83
@.str.18 = private unnamed_addr constant [24 x i8] c"j == NN_TRIE_SPARSE_MAX\00", align 1, !dbg !85

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_trie_init(ptr noundef %0) #0 !dbg !145 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !153, metadata !DIExpression()), !dbg !154
  %3 = load ptr, ptr %2, align 8, !dbg !155
  %4 = getelementptr inbounds %struct.nn_trie, ptr %3, i32 0, i32 0, !dbg !156
  store ptr null, ptr %4, align 8, !dbg !157
  ret void, !dbg !158
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_trie_term(ptr noundef %0) #0 !dbg !159 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !160, metadata !DIExpression()), !dbg !161
  %3 = load ptr, ptr %2, align 8, !dbg !162
  %4 = getelementptr inbounds %struct.nn_trie, ptr %3, i32 0, i32 0, !dbg !163
  %5 = load ptr, ptr %4, align 8, !dbg !163
  call void @nn_node_term(ptr noundef %5), !dbg !164
  ret void, !dbg !165
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_node_term(ptr noundef %0) #0 !dbg !166 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata ptr %3, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata ptr %4, metadata !173, metadata !DIExpression()), !dbg !174
  %5 = load ptr, ptr %2, align 8, !dbg !175
  %6 = icmp ne ptr %5, null, !dbg !175
  br i1 %6, label %8, label %7, !dbg !177

7:                                                ; preds = %1
  br label %48, !dbg !178

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !dbg !179
  %10 = getelementptr inbounds %struct.nn_trie_node, ptr %9, i32 0, i32 1, !dbg !180
  %11 = load i8, ptr %10, align 4, !dbg !180
  %12 = zext i8 %11 to i32, !dbg !179
  %13 = icmp sle i32 %12, 8, !dbg !181
  br i1 %13, label %14, label %19, !dbg !179

14:                                               ; preds = %8
  %15 = load ptr, ptr %2, align 8, !dbg !182
  %16 = getelementptr inbounds %struct.nn_trie_node, ptr %15, i32 0, i32 1, !dbg !183
  %17 = load i8, ptr %16, align 4, !dbg !183
  %18 = zext i8 %17 to i32, !dbg !182
  br label %32, !dbg !179

19:                                               ; preds = %8
  %20 = load ptr, ptr %2, align 8, !dbg !184
  %21 = getelementptr inbounds %struct.nn_trie_node, ptr %20, i32 0, i32 4, !dbg !185
  %22 = getelementptr inbounds %struct.anon.0, ptr %21, i32 0, i32 1, !dbg !186
  %23 = load i8, ptr %22, align 1, !dbg !186
  %24 = zext i8 %23 to i32, !dbg !184
  %25 = load ptr, ptr %2, align 8, !dbg !187
  %26 = getelementptr inbounds %struct.nn_trie_node, ptr %25, i32 0, i32 4, !dbg !188
  %27 = getelementptr inbounds %struct.anon.0, ptr %26, i32 0, i32 0, !dbg !189
  %28 = load i8, ptr %27, align 4, !dbg !189
  %29 = zext i8 %28 to i32, !dbg !187
  %30 = sub nsw i32 %24, %29, !dbg !190
  %31 = add nsw i32 %30, 1, !dbg !191
  br label %32, !dbg !179

32:                                               ; preds = %19, %14
  %33 = phi i32 [ %18, %14 ], [ %31, %19 ], !dbg !179
  store i32 %33, ptr %3, align 4, !dbg !192
  store i32 0, ptr %4, align 4, !dbg !193
  br label %34, !dbg !195

34:                                               ; preds = %43, %32
  %35 = load i32, ptr %4, align 4, !dbg !196
  %36 = load i32, ptr %3, align 4, !dbg !198
  %37 = icmp ne i32 %35, %36, !dbg !199
  br i1 %37, label %38, label %46, !dbg !200

38:                                               ; preds = %34
  %39 = load ptr, ptr %2, align 8, !dbg !201
  %40 = load i32, ptr %4, align 4, !dbg !202
  %41 = call ptr @nn_node_child(ptr noundef %39, i32 noundef %40), !dbg !203
  %42 = load ptr, ptr %41, align 8, !dbg !204
  call void @nn_node_term(ptr noundef %42), !dbg !205
  br label %43, !dbg !205

43:                                               ; preds = %38
  %44 = load i32, ptr %4, align 4, !dbg !206
  %45 = add nsw i32 %44, 1, !dbg !206
  store i32 %45, ptr %4, align 4, !dbg !206
  br label %34, !dbg !207, !llvm.loop !208

46:                                               ; preds = %34
  %47 = load ptr, ptr %2, align 8, !dbg !211
  call void @nn_free(ptr noundef %47), !dbg !212
  br label %48, !dbg !213

48:                                               ; preds = %46, %7
  ret void, !dbg !213
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_trie_dump(ptr noundef %0) #0 !dbg !214 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !215, metadata !DIExpression()), !dbg !216
  %3 = load ptr, ptr %2, align 8, !dbg !217
  %4 = getelementptr inbounds %struct.nn_trie, ptr %3, i32 0, i32 0, !dbg !218
  %5 = load ptr, ptr %4, align 8, !dbg !218
  call void @nn_node_dump(ptr noundef %5, i32 noundef 0), !dbg !219
  ret void, !dbg !220
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_node_dump(ptr noundef %0, i32 noundef %1) #0 !dbg !221 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !224, metadata !DIExpression()), !dbg !225
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.declare(metadata ptr %5, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata ptr %6, metadata !230, metadata !DIExpression()), !dbg !231
  %7 = load ptr, ptr %3, align 8, !dbg !232
  %8 = icmp ne ptr %7, null, !dbg !232
  br i1 %8, label %12, label %9, !dbg !234

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4, !dbg !235
  call void @nn_node_indent(i32 noundef %10), !dbg !237
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !238
  br label %154, !dbg !239

12:                                               ; preds = %2
  %13 = load i32, ptr %4, align 4, !dbg !240
  call void @nn_node_indent(i32 noundef %13), !dbg !241
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.4), !dbg !242
  %15 = load i32, ptr %4, align 4, !dbg !243
  call void @nn_node_indent(i32 noundef %15), !dbg !244
  %16 = load ptr, ptr %3, align 8, !dbg !245
  %17 = getelementptr inbounds %struct.nn_trie_node, ptr %16, i32 0, i32 0, !dbg !246
  %18 = load i32, ptr %17, align 4, !dbg !246
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %18), !dbg !247
  %20 = load i32, ptr %4, align 4, !dbg !248
  call void @nn_node_indent(i32 noundef %20), !dbg !249
  %21 = load ptr, ptr %3, align 8, !dbg !250
  %22 = getelementptr inbounds %struct.nn_trie_node, ptr %21, i32 0, i32 2, !dbg !251
  %23 = load i8, ptr %22, align 1, !dbg !251
  %24 = zext i8 %23 to i32, !dbg !252
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %24), !dbg !253
  %26 = load i32, ptr %4, align 4, !dbg !254
  call void @nn_node_indent(i32 noundef %26), !dbg !255
  %27 = load ptr, ptr %3, align 8, !dbg !256
  %28 = getelementptr inbounds %struct.nn_trie_node, ptr %27, i32 0, i32 1, !dbg !258
  %29 = load i8, ptr %28, align 4, !dbg !258
  %30 = zext i8 %29 to i32, !dbg !256
  %31 = icmp eq i32 %30, 9, !dbg !259
  br i1 %31, label %32, label %34, !dbg !260

32:                                               ; preds = %12
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.7), !dbg !261
  br label %36, !dbg !261

34:                                               ; preds = %12
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.8), !dbg !262
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, ptr %4, align 4, !dbg !263
  call void @nn_node_indent(i32 noundef %37), !dbg !264
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.9), !dbg !265
  store i32 0, ptr %5, align 4, !dbg !266
  br label %39, !dbg !268

39:                                               ; preds = %53, %36
  %40 = load i32, ptr %5, align 4, !dbg !269
  %41 = load ptr, ptr %3, align 8, !dbg !271
  %42 = getelementptr inbounds %struct.nn_trie_node, ptr %41, i32 0, i32 2, !dbg !272
  %43 = load i8, ptr %42, align 1, !dbg !272
  %44 = zext i8 %43 to i32, !dbg !271
  %45 = icmp ne i32 %40, %44, !dbg !273
  br i1 %45, label %46, label %56, !dbg !274

46:                                               ; preds = %39
  %47 = load ptr, ptr %3, align 8, !dbg !275
  %48 = getelementptr inbounds %struct.nn_trie_node, ptr %47, i32 0, i32 3, !dbg !276
  %49 = load i32, ptr %5, align 4, !dbg !277
  %50 = sext i32 %49 to i64, !dbg !275
  %51 = getelementptr inbounds [10 x i8], ptr %48, i64 0, i64 %50, !dbg !275
  %52 = load i8, ptr %51, align 1, !dbg !275
  call void @nn_node_putchar(i8 noundef zeroext %52), !dbg !278
  br label %53, !dbg !278

53:                                               ; preds = %46
  %54 = load i32, ptr %5, align 4, !dbg !279
  %55 = add nsw i32 %54, 1, !dbg !279
  store i32 %55, ptr %5, align 4, !dbg !279
  br label %39, !dbg !280, !llvm.loop !281

56:                                               ; preds = %39
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str.10), !dbg !283
  %58 = load ptr, ptr %3, align 8, !dbg !284
  %59 = getelementptr inbounds %struct.nn_trie_node, ptr %58, i32 0, i32 1, !dbg !286
  %60 = load i8, ptr %59, align 4, !dbg !286
  %61 = zext i8 %60 to i32, !dbg !284
  %62 = icmp sle i32 %61, 8, !dbg !287
  br i1 %62, label %63, label %90, !dbg !288

63:                                               ; preds = %56
  %64 = load i32, ptr %4, align 4, !dbg !289
  call void @nn_node_indent(i32 noundef %64), !dbg !291
  %65 = call i32 (ptr, ...) @printf(ptr noundef @.str.11), !dbg !292
  store i32 0, ptr %5, align 4, !dbg !293
  br label %66, !dbg !295

66:                                               ; preds = %81, %63
  %67 = load i32, ptr %5, align 4, !dbg !296
  %68 = load ptr, ptr %3, align 8, !dbg !298
  %69 = getelementptr inbounds %struct.nn_trie_node, ptr %68, i32 0, i32 1, !dbg !299
  %70 = load i8, ptr %69, align 4, !dbg !299
  %71 = zext i8 %70 to i32, !dbg !298
  %72 = icmp ne i32 %67, %71, !dbg !300
  br i1 %72, label %73, label %84, !dbg !301

73:                                               ; preds = %66
  %74 = load ptr, ptr %3, align 8, !dbg !302
  %75 = getelementptr inbounds %struct.nn_trie_node, ptr %74, i32 0, i32 4, !dbg !303
  %76 = getelementptr inbounds %struct.anon, ptr %75, i32 0, i32 0, !dbg !304
  %77 = load i32, ptr %5, align 4, !dbg !305
  %78 = sext i32 %77 to i64, !dbg !302
  %79 = getelementptr inbounds [8 x i8], ptr %76, i64 0, i64 %78, !dbg !302
  %80 = load i8, ptr %79, align 1, !dbg !302
  call void @nn_node_putchar(i8 noundef zeroext %80), !dbg !306
  br label %81, !dbg !306

81:                                               ; preds = %73
  %82 = load i32, ptr %5, align 4, !dbg !307
  %83 = add nsw i32 %82, 1, !dbg !307
  store i32 %83, ptr %5, align 4, !dbg !307
  br label %66, !dbg !308, !llvm.loop !309

84:                                               ; preds = %66
  %85 = call i32 (ptr, ...) @printf(ptr noundef @.str.10), !dbg !311
  %86 = load ptr, ptr %3, align 8, !dbg !312
  %87 = getelementptr inbounds %struct.nn_trie_node, ptr %86, i32 0, i32 1, !dbg !313
  %88 = load i8, ptr %87, align 4, !dbg !313
  %89 = zext i8 %88 to i32, !dbg !312
  store i32 %89, ptr %6, align 4, !dbg !314
  br label %134, !dbg !315

90:                                               ; preds = %56
  %91 = load i32, ptr %4, align 4, !dbg !316
  call void @nn_node_indent(i32 noundef %91), !dbg !318
  %92 = load ptr, ptr %3, align 8, !dbg !319
  %93 = getelementptr inbounds %struct.nn_trie_node, ptr %92, i32 0, i32 4, !dbg !320
  %94 = getelementptr inbounds %struct.anon.0, ptr %93, i32 0, i32 0, !dbg !321
  %95 = load i8, ptr %94, align 4, !dbg !321
  %96 = sext i8 %95 to i32, !dbg !322
  %97 = load ptr, ptr %3, align 8, !dbg !323
  %98 = getelementptr inbounds %struct.nn_trie_node, ptr %97, i32 0, i32 4, !dbg !324
  %99 = getelementptr inbounds %struct.anon.0, ptr %98, i32 0, i32 0, !dbg !325
  %100 = load i8, ptr %99, align 4, !dbg !325
  %101 = zext i8 %100 to i32, !dbg !326
  %102 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %96, i32 noundef %101), !dbg !327
  %103 = load i32, ptr %4, align 4, !dbg !328
  call void @nn_node_indent(i32 noundef %103), !dbg !329
  %104 = load ptr, ptr %3, align 8, !dbg !330
  %105 = getelementptr inbounds %struct.nn_trie_node, ptr %104, i32 0, i32 4, !dbg !331
  %106 = getelementptr inbounds %struct.anon.0, ptr %105, i32 0, i32 1, !dbg !332
  %107 = load i8, ptr %106, align 1, !dbg !332
  %108 = sext i8 %107 to i32, !dbg !333
  %109 = load ptr, ptr %3, align 8, !dbg !334
  %110 = getelementptr inbounds %struct.nn_trie_node, ptr %109, i32 0, i32 4, !dbg !335
  %111 = getelementptr inbounds %struct.anon.0, ptr %110, i32 0, i32 1, !dbg !336
  %112 = load i8, ptr %111, align 1, !dbg !336
  %113 = zext i8 %112 to i32, !dbg !337
  %114 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %108, i32 noundef %113), !dbg !338
  %115 = load i32, ptr %4, align 4, !dbg !339
  call void @nn_node_indent(i32 noundef %115), !dbg !340
  %116 = load ptr, ptr %3, align 8, !dbg !341
  %117 = getelementptr inbounds %struct.nn_trie_node, ptr %116, i32 0, i32 4, !dbg !342
  %118 = getelementptr inbounds %struct.anon.0, ptr %117, i32 0, i32 2, !dbg !343
  %119 = load i16, ptr %118, align 2, !dbg !343
  %120 = zext i16 %119 to i32, !dbg !344
  %121 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, i32 noundef %120), !dbg !345
  %122 = load ptr, ptr %3, align 8, !dbg !346
  %123 = getelementptr inbounds %struct.nn_trie_node, ptr %122, i32 0, i32 4, !dbg !347
  %124 = getelementptr inbounds %struct.anon.0, ptr %123, i32 0, i32 1, !dbg !348
  %125 = load i8, ptr %124, align 1, !dbg !348
  %126 = zext i8 %125 to i32, !dbg !346
  %127 = load ptr, ptr %3, align 8, !dbg !349
  %128 = getelementptr inbounds %struct.nn_trie_node, ptr %127, i32 0, i32 4, !dbg !350
  %129 = getelementptr inbounds %struct.anon.0, ptr %128, i32 0, i32 0, !dbg !351
  %130 = load i8, ptr %129, align 4, !dbg !351
  %131 = zext i8 %130 to i32, !dbg !349
  %132 = sub nsw i32 %126, %131, !dbg !352
  %133 = add nsw i32 %132, 1, !dbg !353
  store i32 %133, ptr %6, align 4, !dbg !354
  br label %134

134:                                              ; preds = %90, %84
  store i32 0, ptr %5, align 4, !dbg !355
  br label %135, !dbg !357

135:                                              ; preds = %148, %134
  %136 = load i32, ptr %5, align 4, !dbg !358
  %137 = load i32, ptr %6, align 4, !dbg !360
  %138 = icmp ne i32 %136, %137, !dbg !361
  br i1 %138, label %139, label %151, !dbg !362

139:                                              ; preds = %135
  %140 = load ptr, ptr %3, align 8, !dbg !363
  %141 = getelementptr inbounds %struct.nn_trie_node, ptr %140, i64 1, !dbg !364
  %142 = load i32, ptr %5, align 4, !dbg !365
  %143 = sext i32 %142 to i64, !dbg !366
  %144 = getelementptr inbounds ptr, ptr %141, i64 %143, !dbg !366
  %145 = load ptr, ptr %144, align 8, !dbg !366
  %146 = load i32, ptr %4, align 4, !dbg !367
  %147 = add nsw i32 %146, 1, !dbg !368
  call void @nn_node_dump(ptr noundef %145, i32 noundef %147), !dbg !369
  br label %148, !dbg !369

148:                                              ; preds = %139
  %149 = load i32, ptr %5, align 4, !dbg !370
  %150 = add nsw i32 %149, 1, !dbg !370
  store i32 %150, ptr %5, align 4, !dbg !370
  br label %135, !dbg !371, !llvm.loop !372

151:                                              ; preds = %135
  %152 = load i32, ptr %4, align 4, !dbg !374
  call void @nn_node_indent(i32 noundef %152), !dbg !375
  %153 = call i32 (ptr, ...) @printf(ptr noundef @.str.4), !dbg !376
  br label %154, !dbg !377

154:                                              ; preds = %151, %9
  ret void, !dbg !377
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_trie_subscribe(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !378 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !383, metadata !DIExpression()), !dbg !384
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !385, metadata !DIExpression()), !dbg !386
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !387, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.declare(metadata ptr %7, metadata !389, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata ptr %8, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata ptr %9, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata ptr %10, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata ptr %11, metadata !397, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata ptr %12, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata ptr %13, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata ptr %14, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.declare(metadata ptr %15, metadata !405, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.declare(metadata ptr %16, metadata !407, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.declare(metadata ptr %17, metadata !409, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.declare(metadata ptr %18, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata ptr %19, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.declare(metadata ptr %20, metadata !415, metadata !DIExpression()), !dbg !416
  %21 = load ptr, ptr %4, align 8, !dbg !417
  %22 = getelementptr inbounds %struct.nn_trie, ptr %21, i32 0, i32 0, !dbg !418
  store ptr %22, ptr %8, align 8, !dbg !419
  store i32 0, ptr %12, align 4, !dbg !420
  br label %23, !dbg !421

23:                                               ; preds = %3, %63
  %24 = load ptr, ptr %8, align 8, !dbg !422
  %25 = load ptr, ptr %24, align 8, !dbg !425
  %26 = icmp ne ptr %25, null, !dbg !425
  br i1 %26, label %28, label %27, !dbg !426

27:                                               ; preds = %23
  br label %593, !dbg !427

28:                                               ; preds = %23
  %29 = load ptr, ptr %8, align 8, !dbg !428
  %30 = load ptr, ptr %29, align 8, !dbg !429
  %31 = load ptr, ptr %5, align 8, !dbg !430
  %32 = load i64, ptr %6, align 8, !dbg !431
  %33 = call i32 @nn_node_check_prefix(ptr noundef %30, ptr noundef %31, i64 noundef %32), !dbg !432
  store i32 %33, ptr %12, align 4, !dbg !433
  %34 = load i32, ptr %12, align 4, !dbg !434
  %35 = load ptr, ptr %5, align 8, !dbg !435
  %36 = sext i32 %34 to i64, !dbg !435
  %37 = getelementptr inbounds i8, ptr %35, i64 %36, !dbg !435
  store ptr %37, ptr %5, align 8, !dbg !435
  %38 = load i32, ptr %12, align 4, !dbg !436
  %39 = sext i32 %38 to i64, !dbg !436
  %40 = load i64, ptr %6, align 8, !dbg !437
  %41 = sub i64 %40, %39, !dbg !437
  store i64 %41, ptr %6, align 8, !dbg !437
  %42 = load i32, ptr %12, align 4, !dbg !438
  %43 = load ptr, ptr %8, align 8, !dbg !440
  %44 = load ptr, ptr %43, align 8, !dbg !441
  %45 = getelementptr inbounds %struct.nn_trie_node, ptr %44, i32 0, i32 2, !dbg !442
  %46 = load i8, ptr %45, align 1, !dbg !442
  %47 = zext i8 %46 to i32, !dbg !443
  %48 = icmp slt i32 %42, %47, !dbg !444
  br i1 %48, label %49, label %50, !dbg !445

49:                                               ; preds = %28
  br label %69, !dbg !446

50:                                               ; preds = %28
  %51 = load i64, ptr %6, align 8, !dbg !447
  %52 = icmp ne i64 %51, 0, !dbg !447
  br i1 %52, label %54, label %53, !dbg !449

53:                                               ; preds = %50
  br label %683, !dbg !450

54:                                               ; preds = %50
  %55 = load ptr, ptr %8, align 8, !dbg !451
  %56 = load ptr, ptr %55, align 8, !dbg !452
  %57 = load ptr, ptr %5, align 8, !dbg !453
  %58 = load i8, ptr %57, align 1, !dbg !454
  %59 = call ptr @nn_node_next(ptr noundef %56, i8 noundef zeroext %58), !dbg !455
  store ptr %59, ptr %9, align 8, !dbg !456
  %60 = load ptr, ptr %9, align 8, !dbg !457
  %61 = icmp ne ptr %60, null, !dbg !457
  br i1 %61, label %63, label %62, !dbg !459

62:                                               ; preds = %54
  br label %144, !dbg !460

63:                                               ; preds = %54
  %64 = load ptr, ptr %9, align 8, !dbg !461
  store ptr %64, ptr %8, align 8, !dbg !462
  %65 = load ptr, ptr %5, align 8, !dbg !463
  %66 = getelementptr inbounds i8, ptr %65, i32 1, !dbg !463
  store ptr %66, ptr %5, align 8, !dbg !463
  %67 = load i64, ptr %6, align 8, !dbg !464
  %68 = add i64 %67, -1, !dbg !464
  store i64 %68, ptr %6, align 8, !dbg !464
  br label %23, !dbg !421, !llvm.loop !465

69:                                               ; preds = %49
  call void @llvm.dbg.label(metadata !467), !dbg !468
  %70 = load ptr, ptr %8, align 8, !dbg !469
  %71 = load ptr, ptr %70, align 8, !dbg !470
  store ptr %71, ptr %10, align 8, !dbg !471
  %72 = call ptr @nn_alloc_(i64 noundef 32), !dbg !472
  %73 = load ptr, ptr %8, align 8, !dbg !473
  store ptr %72, ptr %73, align 8, !dbg !474
  %74 = load ptr, ptr %8, align 8, !dbg !475
  %75 = load ptr, ptr %74, align 8, !dbg !475
  %76 = icmp ne ptr %75, null, !dbg !475
  br i1 %76, label %77, label %78, !dbg !478

77:                                               ; preds = %69
  br label %79, !dbg !478

78:                                               ; preds = %69
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 292, ptr noundef @__PRETTY_FUNCTION__.nn_trie_subscribe) #6, !dbg !475
  unreachable, !dbg !475

79:                                               ; preds = %77
  %80 = load ptr, ptr %8, align 8, !dbg !479
  %81 = load ptr, ptr %80, align 8, !dbg !480
  %82 = getelementptr inbounds %struct.nn_trie_node, ptr %81, i32 0, i32 0, !dbg !481
  store i32 0, ptr %82, align 4, !dbg !482
  %83 = load i32, ptr %12, align 4, !dbg !483
  %84 = trunc i32 %83 to i8, !dbg !483
  %85 = load ptr, ptr %8, align 8, !dbg !484
  %86 = load ptr, ptr %85, align 8, !dbg !485
  %87 = getelementptr inbounds %struct.nn_trie_node, ptr %86, i32 0, i32 2, !dbg !486
  store i8 %84, ptr %87, align 1, !dbg !487
  %88 = load ptr, ptr %8, align 8, !dbg !488
  %89 = load ptr, ptr %88, align 8, !dbg !489
  %90 = getelementptr inbounds %struct.nn_trie_node, ptr %89, i32 0, i32 1, !dbg !490
  store i8 1, ptr %90, align 4, !dbg !491
  %91 = load ptr, ptr %8, align 8, !dbg !492
  %92 = load ptr, ptr %91, align 8, !dbg !493
  %93 = getelementptr inbounds %struct.nn_trie_node, ptr %92, i32 0, i32 3, !dbg !494
  %94 = getelementptr inbounds [10 x i8], ptr %93, i64 0, i64 0, !dbg !495
  %95 = load ptr, ptr %10, align 8, !dbg !496
  %96 = getelementptr inbounds %struct.nn_trie_node, ptr %95, i32 0, i32 3, !dbg !497
  %97 = getelementptr inbounds [10 x i8], ptr %96, i64 0, i64 0, !dbg !495
  %98 = load i32, ptr %12, align 4, !dbg !498
  %99 = sext i32 %98 to i64, !dbg !498
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %94, ptr align 2 %97, i64 %99, i1 false), !dbg !495
  %100 = load ptr, ptr %10, align 8, !dbg !499
  %101 = getelementptr inbounds %struct.nn_trie_node, ptr %100, i32 0, i32 3, !dbg !500
  %102 = load i32, ptr %12, align 4, !dbg !501
  %103 = sext i32 %102 to i64, !dbg !499
  %104 = getelementptr inbounds [10 x i8], ptr %101, i64 0, i64 %103, !dbg !499
  %105 = load i8, ptr %104, align 1, !dbg !499
  %106 = load ptr, ptr %8, align 8, !dbg !502
  %107 = load ptr, ptr %106, align 8, !dbg !503
  %108 = getelementptr inbounds %struct.nn_trie_node, ptr %107, i32 0, i32 4, !dbg !504
  %109 = getelementptr inbounds %struct.anon, ptr %108, i32 0, i32 0, !dbg !505
  %110 = getelementptr inbounds [8 x i8], ptr %109, i64 0, i64 0, !dbg !506
  store i8 %105, ptr %110, align 4, !dbg !507
  %111 = load i32, ptr %12, align 4, !dbg !508
  %112 = add nsw i32 %111, 1, !dbg !509
  %113 = load ptr, ptr %10, align 8, !dbg !510
  %114 = getelementptr inbounds %struct.nn_trie_node, ptr %113, i32 0, i32 2, !dbg !511
  %115 = load i8, ptr %114, align 1, !dbg !512
  %116 = zext i8 %115 to i32, !dbg !512
  %117 = sub nsw i32 %116, %112, !dbg !512
  %118 = trunc i32 %117 to i8, !dbg !512
  store i8 %118, ptr %114, align 1, !dbg !512
  %119 = load ptr, ptr %10, align 8, !dbg !513
  %120 = getelementptr inbounds %struct.nn_trie_node, ptr %119, i32 0, i32 3, !dbg !514
  %121 = getelementptr inbounds [10 x i8], ptr %120, i64 0, i64 0, !dbg !515
  %122 = load ptr, ptr %10, align 8, !dbg !516
  %123 = getelementptr inbounds %struct.nn_trie_node, ptr %122, i32 0, i32 3, !dbg !517
  %124 = getelementptr inbounds [10 x i8], ptr %123, i64 0, i64 0, !dbg !516
  %125 = load i32, ptr %12, align 4, !dbg !518
  %126 = sext i32 %125 to i64, !dbg !519
  %127 = getelementptr inbounds i8, ptr %124, i64 %126, !dbg !519
  %128 = getelementptr inbounds i8, ptr %127, i64 1, !dbg !520
  %129 = load ptr, ptr %10, align 8, !dbg !521
  %130 = getelementptr inbounds %struct.nn_trie_node, ptr %129, i32 0, i32 2, !dbg !522
  %131 = load i8, ptr %130, align 1, !dbg !522
  %132 = zext i8 %131 to i64, !dbg !521
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %121, ptr align 1 %128, i64 %132, i1 false), !dbg !515
  %133 = load ptr, ptr %10, align 8, !dbg !523
  %134 = call ptr @nn_node_compact(ptr noundef %133), !dbg !524
  store ptr %134, ptr %10, align 8, !dbg !525
  %135 = load ptr, ptr %10, align 8, !dbg !526
  %136 = load ptr, ptr %8, align 8, !dbg !527
  %137 = load ptr, ptr %136, align 8, !dbg !528
  %138 = call ptr @nn_node_child(ptr noundef %137, i32 noundef 0), !dbg !529
  store ptr %135, ptr %138, align 8, !dbg !530
  %139 = load ptr, ptr %8, align 8, !dbg !531
  %140 = load ptr, ptr %139, align 8, !dbg !532
  %141 = getelementptr inbounds %struct.nn_trie_node, ptr %140, i32 0, i32 2, !dbg !533
  %142 = load i8, ptr %141, align 1, !dbg !533
  %143 = zext i8 %142 to i32, !dbg !534
  store i32 %143, ptr %12, align 4, !dbg !535
  br label %144, !dbg !536

144:                                              ; preds = %79, %62
  call void @llvm.dbg.label(metadata !537), !dbg !538
  %145 = load i64, ptr %6, align 8, !dbg !539
  %146 = icmp ne i64 %145, 0, !dbg !539
  br i1 %146, label %148, label %147, !dbg !541

147:                                              ; preds = %144
  br label %683, !dbg !542

148:                                              ; preds = %144
  %149 = load ptr, ptr %8, align 8, !dbg !543
  %150 = load ptr, ptr %149, align 8, !dbg !545
  %151 = getelementptr inbounds %struct.nn_trie_node, ptr %150, i32 0, i32 1, !dbg !546
  %152 = load i8, ptr %151, align 4, !dbg !546
  %153 = zext i8 %152 to i32, !dbg !547
  %154 = icmp slt i32 %153, 8, !dbg !548
  br i1 %154, label %155, label %206, !dbg !549

155:                                              ; preds = %148
  %156 = load ptr, ptr %8, align 8, !dbg !550
  %157 = load ptr, ptr %156, align 8, !dbg !552
  %158 = load ptr, ptr %8, align 8, !dbg !553
  %159 = load ptr, ptr %158, align 8, !dbg !554
  %160 = getelementptr inbounds %struct.nn_trie_node, ptr %159, i32 0, i32 1, !dbg !555
  %161 = load i8, ptr %160, align 4, !dbg !555
  %162 = zext i8 %161 to i32, !dbg !556
  %163 = add nsw i32 %162, 1, !dbg !557
  %164 = sext i32 %163 to i64, !dbg !558
  %165 = mul i64 %164, 8, !dbg !559
  %166 = add i64 24, %165, !dbg !560
  %167 = call ptr @nn_realloc(ptr noundef %157, i64 noundef %166), !dbg !561
  %168 = load ptr, ptr %8, align 8, !dbg !562
  store ptr %167, ptr %168, align 8, !dbg !563
  %169 = load ptr, ptr %8, align 8, !dbg !564
  %170 = load ptr, ptr %169, align 8, !dbg !564
  %171 = icmp ne ptr %170, null, !dbg !564
  br i1 %171, label %172, label %173, !dbg !567

172:                                              ; preds = %155
  br label %174, !dbg !567

173:                                              ; preds = %155
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 316, ptr noundef @__PRETTY_FUNCTION__.nn_trie_subscribe) #6, !dbg !564
  unreachable, !dbg !564

174:                                              ; preds = %172
  %175 = load ptr, ptr %5, align 8, !dbg !568
  %176 = load i8, ptr %175, align 1, !dbg !569
  %177 = load ptr, ptr %8, align 8, !dbg !570
  %178 = load ptr, ptr %177, align 8, !dbg !571
  %179 = getelementptr inbounds %struct.nn_trie_node, ptr %178, i32 0, i32 4, !dbg !572
  %180 = getelementptr inbounds %struct.anon, ptr %179, i32 0, i32 0, !dbg !573
  %181 = load ptr, ptr %8, align 8, !dbg !574
  %182 = load ptr, ptr %181, align 8, !dbg !575
  %183 = getelementptr inbounds %struct.nn_trie_node, ptr %182, i32 0, i32 1, !dbg !576
  %184 = load i8, ptr %183, align 4, !dbg !576
  %185 = zext i8 %184 to i64, !dbg !577
  %186 = getelementptr inbounds [8 x i8], ptr %180, i64 0, i64 %185, !dbg !577
  store i8 %176, ptr %186, align 1, !dbg !578
  %187 = load ptr, ptr %8, align 8, !dbg !579
  %188 = load ptr, ptr %187, align 8, !dbg !580
  %189 = getelementptr inbounds %struct.nn_trie_node, ptr %188, i32 0, i32 1, !dbg !581
  %190 = load i8, ptr %189, align 4, !dbg !582
  %191 = add i8 %190, 1, !dbg !582
  store i8 %191, ptr %189, align 4, !dbg !582
  %192 = load ptr, ptr %8, align 8, !dbg !583
  %193 = load ptr, ptr %192, align 8, !dbg !584
  %194 = load ptr, ptr %8, align 8, !dbg !585
  %195 = load ptr, ptr %194, align 8, !dbg !586
  %196 = getelementptr inbounds %struct.nn_trie_node, ptr %195, i32 0, i32 1, !dbg !587
  %197 = load i8, ptr %196, align 4, !dbg !587
  %198 = zext i8 %197 to i32, !dbg !588
  %199 = sub nsw i32 %198, 1, !dbg !589
  %200 = call ptr @nn_node_child(ptr noundef %193, i32 noundef %199), !dbg !590
  store ptr %200, ptr %8, align 8, !dbg !591
  %201 = load ptr, ptr %8, align 8, !dbg !592
  store ptr null, ptr %201, align 8, !dbg !593
  %202 = load ptr, ptr %5, align 8, !dbg !594
  %203 = getelementptr inbounds i8, ptr %202, i32 1, !dbg !594
  store ptr %203, ptr %5, align 8, !dbg !594
  %204 = load i64, ptr %6, align 8, !dbg !595
  %205 = add i64 %204, -1, !dbg !595
  store i64 %205, ptr %6, align 8, !dbg !595
  br label %593, !dbg !596

206:                                              ; preds = %148
  %207 = load ptr, ptr %8, align 8, !dbg !597
  %208 = load ptr, ptr %207, align 8, !dbg !599
  %209 = getelementptr inbounds %struct.nn_trie_node, ptr %208, i32 0, i32 1, !dbg !600
  %210 = load i8, ptr %209, align 4, !dbg !600
  %211 = zext i8 %210 to i32, !dbg !601
  %212 = icmp eq i32 %211, 9, !dbg !602
  br i1 %212, label %213, label %398, !dbg !603

213:                                              ; preds = %206
  %214 = load ptr, ptr %5, align 8, !dbg !604
  %215 = load i8, ptr %214, align 1, !dbg !606
  store i8 %215, ptr %13, align 1, !dbg !607
  %216 = load i8, ptr %13, align 1, !dbg !608
  %217 = zext i8 %216 to i32, !dbg !608
  %218 = load ptr, ptr %8, align 8, !dbg !610
  %219 = load ptr, ptr %218, align 8, !dbg !611
  %220 = getelementptr inbounds %struct.nn_trie_node, ptr %219, i32 0, i32 4, !dbg !612
  %221 = getelementptr inbounds %struct.anon.0, ptr %220, i32 0, i32 0, !dbg !613
  %222 = load i8, ptr %221, align 4, !dbg !613
  %223 = zext i8 %222 to i32, !dbg !614
  %224 = icmp slt i32 %217, %223, !dbg !615
  br i1 %224, label %235, label %225, !dbg !616

225:                                              ; preds = %213
  %226 = load i8, ptr %13, align 1, !dbg !617
  %227 = zext i8 %226 to i32, !dbg !617
  %228 = load ptr, ptr %8, align 8, !dbg !618
  %229 = load ptr, ptr %228, align 8, !dbg !619
  %230 = getelementptr inbounds %struct.nn_trie_node, ptr %229, i32 0, i32 4, !dbg !620
  %231 = getelementptr inbounds %struct.anon.0, ptr %230, i32 0, i32 1, !dbg !621
  %232 = load i8, ptr %231, align 1, !dbg !621
  %233 = zext i8 %232 to i32, !dbg !622
  %234 = icmp sgt i32 %227, %233, !dbg !623
  br i1 %234, label %235, label %381, !dbg !624

235:                                              ; preds = %225, %213
  %236 = load ptr, ptr %8, align 8, !dbg !625
  %237 = load ptr, ptr %236, align 8, !dbg !627
  %238 = getelementptr inbounds %struct.nn_trie_node, ptr %237, i32 0, i32 4, !dbg !628
  %239 = getelementptr inbounds %struct.anon.0, ptr %238, i32 0, i32 0, !dbg !629
  %240 = load i8, ptr %239, align 4, !dbg !629
  %241 = zext i8 %240 to i32, !dbg !630
  %242 = load i8, ptr %13, align 1, !dbg !631
  %243 = zext i8 %242 to i32, !dbg !631
  %244 = icmp slt i32 %241, %243, !dbg !632
  br i1 %244, label %245, label %252, !dbg !630

245:                                              ; preds = %235
  %246 = load ptr, ptr %8, align 8, !dbg !633
  %247 = load ptr, ptr %246, align 8, !dbg !634
  %248 = getelementptr inbounds %struct.nn_trie_node, ptr %247, i32 0, i32 4, !dbg !635
  %249 = getelementptr inbounds %struct.anon.0, ptr %248, i32 0, i32 0, !dbg !636
  %250 = load i8, ptr %249, align 4, !dbg !636
  %251 = zext i8 %250 to i32, !dbg !637
  br label %255, !dbg !630

252:                                              ; preds = %235
  %253 = load i8, ptr %13, align 1, !dbg !638
  %254 = zext i8 %253 to i32, !dbg !638
  br label %255, !dbg !630

255:                                              ; preds = %252, %245
  %256 = phi i32 [ %251, %245 ], [ %254, %252 ], !dbg !630
  %257 = trunc i32 %256 to i8, !dbg !630
  store i8 %257, ptr %15, align 1, !dbg !639
  %258 = load ptr, ptr %8, align 8, !dbg !640
  %259 = load ptr, ptr %258, align 8, !dbg !641
  %260 = getelementptr inbounds %struct.nn_trie_node, ptr %259, i32 0, i32 4, !dbg !642
  %261 = getelementptr inbounds %struct.anon.0, ptr %260, i32 0, i32 1, !dbg !643
  %262 = load i8, ptr %261, align 1, !dbg !643
  %263 = zext i8 %262 to i32, !dbg !644
  %264 = load i8, ptr %13, align 1, !dbg !645
  %265 = zext i8 %264 to i32, !dbg !645
  %266 = icmp sgt i32 %263, %265, !dbg !646
  br i1 %266, label %267, label %274, !dbg !644

267:                                              ; preds = %255
  %268 = load ptr, ptr %8, align 8, !dbg !647
  %269 = load ptr, ptr %268, align 8, !dbg !648
  %270 = getelementptr inbounds %struct.nn_trie_node, ptr %269, i32 0, i32 4, !dbg !649
  %271 = getelementptr inbounds %struct.anon.0, ptr %270, i32 0, i32 1, !dbg !650
  %272 = load i8, ptr %271, align 1, !dbg !650
  %273 = zext i8 %272 to i32, !dbg !651
  br label %277, !dbg !644

274:                                              ; preds = %255
  %275 = load i8, ptr %13, align 1, !dbg !652
  %276 = zext i8 %275 to i32, !dbg !652
  br label %277, !dbg !644

277:                                              ; preds = %274, %267
  %278 = phi i32 [ %273, %267 ], [ %276, %274 ], !dbg !644
  %279 = trunc i32 %278 to i8, !dbg !644
  store i8 %279, ptr %16, align 1, !dbg !653
  %280 = load ptr, ptr %8, align 8, !dbg !654
  %281 = load ptr, ptr %280, align 8, !dbg !655
  %282 = load i8, ptr %16, align 1, !dbg !656
  %283 = zext i8 %282 to i32, !dbg !656
  %284 = load i8, ptr %15, align 1, !dbg !657
  %285 = zext i8 %284 to i32, !dbg !657
  %286 = sub nsw i32 %283, %285, !dbg !658
  %287 = add nsw i32 %286, 1, !dbg !659
  %288 = sext i32 %287 to i64, !dbg !660
  %289 = mul i64 %288, 8, !dbg !661
  %290 = add i64 24, %289, !dbg !662
  %291 = call ptr @nn_realloc(ptr noundef %281, i64 noundef %290), !dbg !663
  %292 = load ptr, ptr %8, align 8, !dbg !664
  store ptr %291, ptr %292, align 8, !dbg !665
  %293 = load ptr, ptr %8, align 8, !dbg !666
  %294 = load ptr, ptr %293, align 8, !dbg !666
  %295 = icmp ne ptr %294, null, !dbg !666
  br i1 %295, label %296, label %297, !dbg !669

296:                                              ; preds = %277
  br label %298, !dbg !669

297:                                              ; preds = %277
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 335, ptr noundef @__PRETTY_FUNCTION__.nn_trie_subscribe) #6, !dbg !666
  unreachable, !dbg !666

298:                                              ; preds = %296
  %299 = load ptr, ptr %8, align 8, !dbg !670
  %300 = load ptr, ptr %299, align 8, !dbg !671
  %301 = getelementptr inbounds %struct.nn_trie_node, ptr %300, i32 0, i32 4, !dbg !672
  %302 = getelementptr inbounds %struct.anon.0, ptr %301, i32 0, i32 1, !dbg !673
  %303 = load i8, ptr %302, align 1, !dbg !673
  %304 = zext i8 %303 to i32, !dbg !674
  %305 = load ptr, ptr %8, align 8, !dbg !675
  %306 = load ptr, ptr %305, align 8, !dbg !676
  %307 = getelementptr inbounds %struct.nn_trie_node, ptr %306, i32 0, i32 4, !dbg !677
  %308 = getelementptr inbounds %struct.anon.0, ptr %307, i32 0, i32 0, !dbg !678
  %309 = load i8, ptr %308, align 4, !dbg !678
  %310 = zext i8 %309 to i32, !dbg !679
  %311 = sub nsw i32 %304, %310, !dbg !680
  %312 = add nsw i32 %311, 1, !dbg !681
  store i32 %312, ptr %17, align 4, !dbg !682
  %313 = load i8, ptr %16, align 1, !dbg !683
  %314 = zext i8 %313 to i32, !dbg !683
  %315 = load i8, ptr %15, align 1, !dbg !684
  %316 = zext i8 %315 to i32, !dbg !684
  %317 = sub nsw i32 %314, %316, !dbg !685
  %318 = add nsw i32 %317, 1, !dbg !686
  store i32 %318, ptr %18, align 4, !dbg !687
  %319 = load ptr, ptr %8, align 8, !dbg !688
  %320 = load ptr, ptr %319, align 8, !dbg !690
  %321 = getelementptr inbounds %struct.nn_trie_node, ptr %320, i32 0, i32 4, !dbg !691
  %322 = getelementptr inbounds %struct.anon.0, ptr %321, i32 0, i32 0, !dbg !692
  %323 = load i8, ptr %322, align 4, !dbg !692
  %324 = zext i8 %323 to i32, !dbg !693
  %325 = load i8, ptr %15, align 1, !dbg !694
  %326 = zext i8 %325 to i32, !dbg !694
  %327 = icmp ne i32 %324, %326, !dbg !695
  br i1 %327, label %328, label %354, !dbg !696

328:                                              ; preds = %298
  %329 = load ptr, ptr %8, align 8, !dbg !697
  %330 = load ptr, ptr %329, align 8, !dbg !699
  %331 = getelementptr inbounds %struct.nn_trie_node, ptr %330, i32 0, i32 4, !dbg !700
  %332 = getelementptr inbounds %struct.anon.0, ptr %331, i32 0, i32 0, !dbg !701
  %333 = load i8, ptr %332, align 4, !dbg !701
  %334 = zext i8 %333 to i32, !dbg !702
  %335 = load i8, ptr %15, align 1, !dbg !703
  %336 = zext i8 %335 to i32, !dbg !703
  %337 = sub nsw i32 %334, %336, !dbg !704
  store i32 %337, ptr %19, align 4, !dbg !705
  %338 = load ptr, ptr %8, align 8, !dbg !706
  %339 = load ptr, ptr %338, align 8, !dbg !707
  %340 = load i32, ptr %19, align 4, !dbg !708
  %341 = call ptr @nn_node_child(ptr noundef %339, i32 noundef %340), !dbg !709
  %342 = load ptr, ptr %8, align 8, !dbg !710
  %343 = load ptr, ptr %342, align 8, !dbg !711
  %344 = call ptr @nn_node_child(ptr noundef %343, i32 noundef 0), !dbg !712
  %345 = load i32, ptr %17, align 4, !dbg !713
  %346 = sext i32 %345 to i64, !dbg !713
  %347 = mul i64 %346, 8, !dbg !714
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %341, ptr align 8 %344, i64 %347, i1 false), !dbg !715
  %348 = load ptr, ptr %8, align 8, !dbg !716
  %349 = load ptr, ptr %348, align 8, !dbg !717
  %350 = call ptr @nn_node_child(ptr noundef %349, i32 noundef 0), !dbg !718
  %351 = load i32, ptr %19, align 4, !dbg !719
  %352 = sext i32 %351 to i64, !dbg !719
  %353 = mul i64 %352, 8, !dbg !720
  call void @llvm.memset.p0.i64(ptr align 8 %350, i8 0, i64 %353, i1 false), !dbg !721
  br label %364, !dbg !722

354:                                              ; preds = %298
  %355 = load ptr, ptr %8, align 8, !dbg !723
  %356 = load ptr, ptr %355, align 8, !dbg !725
  %357 = load i32, ptr %17, align 4, !dbg !726
  %358 = call ptr @nn_node_child(ptr noundef %356, i32 noundef %357), !dbg !727
  %359 = load i32, ptr %18, align 4, !dbg !728
  %360 = load i32, ptr %17, align 4, !dbg !729
  %361 = sub nsw i32 %359, %360, !dbg !730
  %362 = sext i32 %361 to i64, !dbg !731
  %363 = mul i64 %362, 8, !dbg !732
  call void @llvm.memset.p0.i64(ptr align 8 %358, i8 0, i64 %363, i1 false), !dbg !733
  br label %364

364:                                              ; preds = %354, %328
  %365 = load i8, ptr %15, align 1, !dbg !734
  %366 = load ptr, ptr %8, align 8, !dbg !735
  %367 = load ptr, ptr %366, align 8, !dbg !736
  %368 = getelementptr inbounds %struct.nn_trie_node, ptr %367, i32 0, i32 4, !dbg !737
  %369 = getelementptr inbounds %struct.anon.0, ptr %368, i32 0, i32 0, !dbg !738
  store i8 %365, ptr %369, align 4, !dbg !739
  %370 = load i8, ptr %16, align 1, !dbg !740
  %371 = load ptr, ptr %8, align 8, !dbg !741
  %372 = load ptr, ptr %371, align 8, !dbg !742
  %373 = getelementptr inbounds %struct.nn_trie_node, ptr %372, i32 0, i32 4, !dbg !743
  %374 = getelementptr inbounds %struct.anon.0, ptr %373, i32 0, i32 1, !dbg !744
  store i8 %370, ptr %374, align 1, !dbg !745
  %375 = load ptr, ptr %8, align 8, !dbg !746
  %376 = load ptr, ptr %375, align 8, !dbg !747
  %377 = getelementptr inbounds %struct.nn_trie_node, ptr %376, i32 0, i32 4, !dbg !748
  %378 = getelementptr inbounds %struct.anon.0, ptr %377, i32 0, i32 2, !dbg !749
  %379 = load i16, ptr %378, align 2, !dbg !750
  %380 = add i16 %379, 1, !dbg !750
  store i16 %380, ptr %378, align 2, !dbg !750
  br label %381, !dbg !751

381:                                              ; preds = %364, %225
  %382 = load ptr, ptr %8, align 8, !dbg !752
  %383 = load ptr, ptr %382, align 8, !dbg !753
  %384 = load i8, ptr %13, align 1, !dbg !754
  %385 = zext i8 %384 to i32, !dbg !754
  %386 = load ptr, ptr %8, align 8, !dbg !755
  %387 = load ptr, ptr %386, align 8, !dbg !756
  %388 = getelementptr inbounds %struct.nn_trie_node, ptr %387, i32 0, i32 4, !dbg !757
  %389 = getelementptr inbounds %struct.anon.0, ptr %388, i32 0, i32 0, !dbg !758
  %390 = load i8, ptr %389, align 4, !dbg !758
  %391 = zext i8 %390 to i32, !dbg !759
  %392 = sub nsw i32 %385, %391, !dbg !760
  %393 = call ptr @nn_node_child(ptr noundef %383, i32 noundef %392), !dbg !761
  store ptr %393, ptr %8, align 8, !dbg !762
  %394 = load ptr, ptr %5, align 8, !dbg !763
  %395 = getelementptr inbounds i8, ptr %394, i32 1, !dbg !763
  store ptr %395, ptr %5, align 8, !dbg !763
  %396 = load i64, ptr %6, align 8, !dbg !764
  %397 = add i64 %396, -1, !dbg !764
  store i64 %397, ptr %6, align 8, !dbg !764
  br label %593, !dbg !765

398:                                              ; preds = %206
  store i8 -1, ptr %15, align 1, !dbg !766
  store i8 0, ptr %16, align 1, !dbg !768
  store i32 0, ptr %7, align 4, !dbg !769
  br label %399, !dbg !771

399:                                              ; preds = %444, %398
  %400 = load i32, ptr %7, align 4, !dbg !772
  %401 = load ptr, ptr %8, align 8, !dbg !774
  %402 = load ptr, ptr %401, align 8, !dbg !775
  %403 = getelementptr inbounds %struct.nn_trie_node, ptr %402, i32 0, i32 1, !dbg !776
  %404 = load i8, ptr %403, align 4, !dbg !776
  %405 = zext i8 %404 to i32, !dbg !777
  %406 = icmp ne i32 %400, %405, !dbg !778
  br i1 %406, label %407, label %447, !dbg !779

407:                                              ; preds = %399
  %408 = load ptr, ptr %8, align 8, !dbg !780
  %409 = load ptr, ptr %408, align 8, !dbg !782
  %410 = getelementptr inbounds %struct.nn_trie_node, ptr %409, i32 0, i32 4, !dbg !783
  %411 = getelementptr inbounds %struct.anon, ptr %410, i32 0, i32 0, !dbg !784
  %412 = load i32, ptr %7, align 4, !dbg !785
  %413 = sext i32 %412 to i64, !dbg !786
  %414 = getelementptr inbounds [8 x i8], ptr %411, i64 0, i64 %413, !dbg !786
  %415 = load i8, ptr %414, align 1, !dbg !786
  store i8 %415, ptr %14, align 1, !dbg !787
  %416 = load i8, ptr %15, align 1, !dbg !788
  %417 = zext i8 %416 to i32, !dbg !788
  %418 = load i8, ptr %14, align 1, !dbg !789
  %419 = zext i8 %418 to i32, !dbg !789
  %420 = icmp slt i32 %417, %419, !dbg !790
  br i1 %420, label %421, label %424, !dbg !788

421:                                              ; preds = %407
  %422 = load i8, ptr %15, align 1, !dbg !791
  %423 = zext i8 %422 to i32, !dbg !791
  br label %427, !dbg !788

424:                                              ; preds = %407
  %425 = load i8, ptr %14, align 1, !dbg !792
  %426 = zext i8 %425 to i32, !dbg !792
  br label %427, !dbg !788

427:                                              ; preds = %424, %421
  %428 = phi i32 [ %423, %421 ], [ %426, %424 ], !dbg !788
  %429 = trunc i32 %428 to i8, !dbg !788
  store i8 %429, ptr %15, align 1, !dbg !793
  %430 = load i8, ptr %16, align 1, !dbg !794
  %431 = zext i8 %430 to i32, !dbg !794
  %432 = load i8, ptr %14, align 1, !dbg !795
  %433 = zext i8 %432 to i32, !dbg !795
  %434 = icmp sgt i32 %431, %433, !dbg !796
  br i1 %434, label %435, label %438, !dbg !794

435:                                              ; preds = %427
  %436 = load i8, ptr %16, align 1, !dbg !797
  %437 = zext i8 %436 to i32, !dbg !797
  br label %441, !dbg !794

438:                                              ; preds = %427
  %439 = load i8, ptr %14, align 1, !dbg !798
  %440 = zext i8 %439 to i32, !dbg !798
  br label %441, !dbg !794

441:                                              ; preds = %438, %435
  %442 = phi i32 [ %437, %435 ], [ %440, %438 ], !dbg !794
  %443 = trunc i32 %442 to i8, !dbg !794
  store i8 %443, ptr %16, align 1, !dbg !799
  br label %444, !dbg !800

444:                                              ; preds = %441
  %445 = load i32, ptr %7, align 4, !dbg !801
  %446 = add nsw i32 %445, 1, !dbg !801
  store i32 %446, ptr %7, align 4, !dbg !801
  br label %399, !dbg !802, !llvm.loop !803

447:                                              ; preds = %399
  %448 = load i8, ptr %15, align 1, !dbg !805
  %449 = zext i8 %448 to i32, !dbg !805
  %450 = load ptr, ptr %5, align 8, !dbg !806
  %451 = load i8, ptr %450, align 1, !dbg !807
  %452 = zext i8 %451 to i32, !dbg !807
  %453 = icmp slt i32 %449, %452, !dbg !808
  br i1 %453, label %454, label %457, !dbg !805

454:                                              ; preds = %447
  %455 = load i8, ptr %15, align 1, !dbg !809
  %456 = zext i8 %455 to i32, !dbg !809
  br label %461, !dbg !805

457:                                              ; preds = %447
  %458 = load ptr, ptr %5, align 8, !dbg !810
  %459 = load i8, ptr %458, align 1, !dbg !811
  %460 = zext i8 %459 to i32, !dbg !811
  br label %461, !dbg !805

461:                                              ; preds = %457, %454
  %462 = phi i32 [ %456, %454 ], [ %460, %457 ], !dbg !805
  %463 = trunc i32 %462 to i8, !dbg !805
  store i8 %463, ptr %15, align 1, !dbg !812
  %464 = load i8, ptr %16, align 1, !dbg !813
  %465 = zext i8 %464 to i32, !dbg !813
  %466 = load ptr, ptr %5, align 8, !dbg !814
  %467 = load i8, ptr %466, align 1, !dbg !815
  %468 = zext i8 %467 to i32, !dbg !815
  %469 = icmp sgt i32 %465, %468, !dbg !816
  br i1 %469, label %470, label %473, !dbg !813

470:                                              ; preds = %461
  %471 = load i8, ptr %16, align 1, !dbg !817
  %472 = zext i8 %471 to i32, !dbg !817
  br label %477, !dbg !813

473:                                              ; preds = %461
  %474 = load ptr, ptr %5, align 8, !dbg !818
  %475 = load i8, ptr %474, align 1, !dbg !819
  %476 = zext i8 %475 to i32, !dbg !819
  br label %477, !dbg !813

477:                                              ; preds = %473, %470
  %478 = phi i32 [ %472, %470 ], [ %476, %473 ], !dbg !813
  %479 = trunc i32 %478 to i8, !dbg !813
  store i8 %479, ptr %16, align 1, !dbg !820
  %480 = load ptr, ptr %8, align 8, !dbg !821
  %481 = load ptr, ptr %480, align 8, !dbg !822
  store ptr %481, ptr %11, align 8, !dbg !823
  %482 = load i8, ptr %16, align 1, !dbg !824
  %483 = zext i8 %482 to i32, !dbg !824
  %484 = load i8, ptr %15, align 1, !dbg !824
  %485 = zext i8 %484 to i32, !dbg !824
  %486 = sub nsw i32 %483, %485, !dbg !824
  %487 = add nsw i32 %486, 1, !dbg !824
  %488 = sext i32 %487 to i64, !dbg !824
  %489 = mul i64 %488, 8, !dbg !824
  %490 = add i64 24, %489, !dbg !824
  %491 = call ptr @nn_alloc_(i64 noundef %490), !dbg !824
  %492 = load ptr, ptr %8, align 8, !dbg !825
  store ptr %491, ptr %492, align 8, !dbg !826
  %493 = load ptr, ptr %8, align 8, !dbg !827
  %494 = load ptr, ptr %493, align 8, !dbg !827
  %495 = icmp ne ptr %494, null, !dbg !827
  br i1 %495, label %496, label %497, !dbg !830

496:                                              ; preds = %477
  br label %498, !dbg !830

497:                                              ; preds = %477
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 380, ptr noundef @__PRETTY_FUNCTION__.nn_trie_subscribe) #6, !dbg !827
  unreachable, !dbg !827

498:                                              ; preds = %496
  %499 = load ptr, ptr %8, align 8, !dbg !831
  %500 = load ptr, ptr %499, align 8, !dbg !832
  %501 = getelementptr inbounds %struct.nn_trie_node, ptr %500, i32 0, i32 0, !dbg !833
  store i32 0, ptr %501, align 4, !dbg !834
  %502 = load ptr, ptr %11, align 8, !dbg !835
  %503 = getelementptr inbounds %struct.nn_trie_node, ptr %502, i32 0, i32 2, !dbg !836
  %504 = load i8, ptr %503, align 1, !dbg !836
  %505 = load ptr, ptr %8, align 8, !dbg !837
  %506 = load ptr, ptr %505, align 8, !dbg !838
  %507 = getelementptr inbounds %struct.nn_trie_node, ptr %506, i32 0, i32 2, !dbg !839
  store i8 %504, ptr %507, align 1, !dbg !840
  %508 = load ptr, ptr %8, align 8, !dbg !841
  %509 = load ptr, ptr %508, align 8, !dbg !842
  %510 = getelementptr inbounds %struct.nn_trie_node, ptr %509, i32 0, i32 1, !dbg !843
  store i8 9, ptr %510, align 4, !dbg !844
  %511 = load ptr, ptr %8, align 8, !dbg !845
  %512 = load ptr, ptr %511, align 8, !dbg !846
  %513 = getelementptr inbounds %struct.nn_trie_node, ptr %512, i32 0, i32 3, !dbg !847
  %514 = getelementptr inbounds [10 x i8], ptr %513, i64 0, i64 0, !dbg !848
  %515 = load ptr, ptr %11, align 8, !dbg !849
  %516 = getelementptr inbounds %struct.nn_trie_node, ptr %515, i32 0, i32 3, !dbg !850
  %517 = getelementptr inbounds [10 x i8], ptr %516, i64 0, i64 0, !dbg !848
  %518 = load ptr, ptr %11, align 8, !dbg !851
  %519 = getelementptr inbounds %struct.nn_trie_node, ptr %518, i32 0, i32 2, !dbg !852
  %520 = load i8, ptr %519, align 1, !dbg !852
  %521 = zext i8 %520 to i64, !dbg !851
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %514, ptr align 2 %517, i64 %521, i1 false), !dbg !848
  %522 = load i8, ptr %15, align 1, !dbg !853
  %523 = load ptr, ptr %8, align 8, !dbg !854
  %524 = load ptr, ptr %523, align 8, !dbg !855
  %525 = getelementptr inbounds %struct.nn_trie_node, ptr %524, i32 0, i32 4, !dbg !856
  %526 = getelementptr inbounds %struct.anon.0, ptr %525, i32 0, i32 0, !dbg !857
  store i8 %522, ptr %526, align 4, !dbg !858
  %527 = load i8, ptr %16, align 1, !dbg !859
  %528 = load ptr, ptr %8, align 8, !dbg !860
  %529 = load ptr, ptr %528, align 8, !dbg !861
  %530 = getelementptr inbounds %struct.nn_trie_node, ptr %529, i32 0, i32 4, !dbg !862
  %531 = getelementptr inbounds %struct.anon.0, ptr %530, i32 0, i32 1, !dbg !863
  store i8 %527, ptr %531, align 1, !dbg !864
  %532 = load ptr, ptr %11, align 8, !dbg !865
  %533 = getelementptr inbounds %struct.nn_trie_node, ptr %532, i32 0, i32 1, !dbg !866
  %534 = load i8, ptr %533, align 4, !dbg !866
  %535 = zext i8 %534 to i32, !dbg !865
  %536 = add nsw i32 %535, 1, !dbg !867
  %537 = trunc i32 %536 to i16, !dbg !865
  %538 = load ptr, ptr %8, align 8, !dbg !868
  %539 = load ptr, ptr %538, align 8, !dbg !869
  %540 = getelementptr inbounds %struct.nn_trie_node, ptr %539, i32 0, i32 4, !dbg !870
  %541 = getelementptr inbounds %struct.anon.0, ptr %540, i32 0, i32 2, !dbg !871
  store i16 %537, ptr %541, align 2, !dbg !872
  %542 = load ptr, ptr %8, align 8, !dbg !873
  %543 = load ptr, ptr %542, align 8, !dbg !874
  %544 = getelementptr inbounds %struct.nn_trie_node, ptr %543, i64 1, !dbg !875
  %545 = load i8, ptr %16, align 1, !dbg !876
  %546 = zext i8 %545 to i32, !dbg !876
  %547 = load i8, ptr %15, align 1, !dbg !877
  %548 = zext i8 %547 to i32, !dbg !877
  %549 = sub nsw i32 %546, %548, !dbg !878
  %550 = add nsw i32 %549, 1, !dbg !879
  %551 = sext i32 %550 to i64, !dbg !880
  %552 = mul i64 %551, 8, !dbg !881
  call void @llvm.memset.p0.i64(ptr align 4 %544, i8 0, i64 %552, i1 false), !dbg !882
  store i32 0, ptr %7, align 4, !dbg !883
  br label %553, !dbg !885

553:                                              ; preds = %579, %498
  %554 = load i32, ptr %7, align 4, !dbg !886
  %555 = load ptr, ptr %11, align 8, !dbg !888
  %556 = getelementptr inbounds %struct.nn_trie_node, ptr %555, i32 0, i32 1, !dbg !889
  %557 = load i8, ptr %556, align 4, !dbg !889
  %558 = zext i8 %557 to i32, !dbg !888
  %559 = icmp ne i32 %554, %558, !dbg !890
  br i1 %559, label %560, label %582, !dbg !891

560:                                              ; preds = %553
  %561 = load ptr, ptr %11, align 8, !dbg !892
  %562 = load i32, ptr %7, align 4, !dbg !893
  %563 = call ptr @nn_node_child(ptr noundef %561, i32 noundef %562), !dbg !894
  %564 = load ptr, ptr %563, align 8, !dbg !895
  %565 = load ptr, ptr %8, align 8, !dbg !896
  %566 = load ptr, ptr %565, align 8, !dbg !897
  %567 = load ptr, ptr %11, align 8, !dbg !898
  %568 = getelementptr inbounds %struct.nn_trie_node, ptr %567, i32 0, i32 4, !dbg !899
  %569 = getelementptr inbounds %struct.anon, ptr %568, i32 0, i32 0, !dbg !900
  %570 = load i32, ptr %7, align 4, !dbg !901
  %571 = sext i32 %570 to i64, !dbg !898
  %572 = getelementptr inbounds [8 x i8], ptr %569, i64 0, i64 %571, !dbg !898
  %573 = load i8, ptr %572, align 1, !dbg !898
  %574 = zext i8 %573 to i32, !dbg !898
  %575 = load i8, ptr %15, align 1, !dbg !902
  %576 = zext i8 %575 to i32, !dbg !902
  %577 = sub nsw i32 %574, %576, !dbg !903
  %578 = call ptr @nn_node_child(ptr noundef %566, i32 noundef %577), !dbg !904
  store ptr %564, ptr %578, align 8, !dbg !905
  br label %579, !dbg !906

579:                                              ; preds = %560
  %580 = load i32, ptr %7, align 4, !dbg !907
  %581 = add nsw i32 %580, 1, !dbg !907
  store i32 %581, ptr %7, align 4, !dbg !907
  br label %553, !dbg !908, !llvm.loop !909

582:                                              ; preds = %553
  %583 = load ptr, ptr %8, align 8, !dbg !911
  %584 = load ptr, ptr %583, align 8, !dbg !912
  %585 = load ptr, ptr %5, align 8, !dbg !913
  %586 = load i8, ptr %585, align 1, !dbg !914
  %587 = call ptr @nn_node_next(ptr noundef %584, i8 noundef zeroext %586), !dbg !915
  store ptr %587, ptr %8, align 8, !dbg !916
  %588 = load ptr, ptr %5, align 8, !dbg !917
  %589 = getelementptr inbounds i8, ptr %588, i32 1, !dbg !917
  store ptr %589, ptr %5, align 8, !dbg !917
  %590 = load i64, ptr %6, align 8, !dbg !918
  %591 = add i64 %590, -1, !dbg !918
  store i64 %591, ptr %6, align 8, !dbg !918
  %592 = load ptr, ptr %11, align 8, !dbg !919
  call void @nn_free(ptr noundef %592), !dbg !920
  br label %593, !dbg !921

593:                                              ; preds = %582, %381, %174, %27
  call void @llvm.dbg.label(metadata !922), !dbg !923
  %594 = load ptr, ptr %8, align 8, !dbg !924
  %595 = load ptr, ptr %594, align 8, !dbg !924
  %596 = icmp ne ptr %595, null, !dbg !924
  br i1 %596, label %598, label %597, !dbg !927

597:                                              ; preds = %593
  br label %599, !dbg !927

598:                                              ; preds = %593
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 406, ptr noundef @__PRETTY_FUNCTION__.nn_trie_subscribe) #6, !dbg !924
  unreachable, !dbg !924

599:                                              ; preds = %597
  br label %600, !dbg !928

600:                                              ; preds = %599, %667
  %601 = load i64, ptr %6, align 8, !dbg !929
  %602 = icmp ugt i64 %601, 10, !dbg !931
  %603 = zext i1 %602 to i32, !dbg !931
  store i32 %603, ptr %20, align 4, !dbg !932
  %604 = load i32, ptr %20, align 4, !dbg !933
  %605 = icmp ne i32 %604, 0, !dbg !933
  %606 = zext i1 %605 to i64, !dbg !933
  %607 = select i1 %605, i64 8, i64 0, !dbg !933
  %608 = add i64 24, %607, !dbg !933
  %609 = call ptr @nn_alloc_(i64 noundef %608), !dbg !933
  %610 = load ptr, ptr %8, align 8, !dbg !934
  store ptr %609, ptr %610, align 8, !dbg !935
  %611 = load ptr, ptr %8, align 8, !dbg !936
  %612 = load ptr, ptr %611, align 8, !dbg !936
  %613 = icmp ne ptr %612, null, !dbg !936
  br i1 %613, label %614, label %615, !dbg !939

614:                                              ; preds = %600
  br label %616, !dbg !939

615:                                              ; preds = %600
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 413, ptr noundef @__PRETTY_FUNCTION__.nn_trie_subscribe) #6, !dbg !936
  unreachable, !dbg !936

616:                                              ; preds = %614
  %617 = load ptr, ptr %8, align 8, !dbg !940
  %618 = load ptr, ptr %617, align 8, !dbg !941
  %619 = getelementptr inbounds %struct.nn_trie_node, ptr %618, i32 0, i32 0, !dbg !942
  store i32 0, ptr %619, align 4, !dbg !943
  %620 = load i32, ptr %20, align 4, !dbg !944
  %621 = icmp ne i32 %620, 0, !dbg !944
  %622 = zext i1 %621 to i64, !dbg !944
  %623 = select i1 %621, i32 1, i32 0, !dbg !944
  %624 = trunc i32 %623 to i8, !dbg !944
  %625 = load ptr, ptr %8, align 8, !dbg !945
  %626 = load ptr, ptr %625, align 8, !dbg !946
  %627 = getelementptr inbounds %struct.nn_trie_node, ptr %626, i32 0, i32 1, !dbg !947
  store i8 %624, ptr %627, align 4, !dbg !948
  %628 = load i64, ptr %6, align 8, !dbg !949
  %629 = icmp ult i64 %628, 10, !dbg !950
  br i1 %629, label %630, label %632, !dbg !949

630:                                              ; preds = %616
  %631 = load i64, ptr %6, align 8, !dbg !951
  br label %633, !dbg !949

632:                                              ; preds = %616
  br label %633, !dbg !949

633:                                              ; preds = %632, %630
  %634 = phi i64 [ %631, %630 ], [ 10, %632 ], !dbg !949
  %635 = trunc i64 %634 to i8, !dbg !949
  %636 = load ptr, ptr %8, align 8, !dbg !952
  %637 = load ptr, ptr %636, align 8, !dbg !953
  %638 = getelementptr inbounds %struct.nn_trie_node, ptr %637, i32 0, i32 2, !dbg !954
  store i8 %635, ptr %638, align 1, !dbg !955
  %639 = load ptr, ptr %8, align 8, !dbg !956
  %640 = load ptr, ptr %639, align 8, !dbg !957
  %641 = getelementptr inbounds %struct.nn_trie_node, ptr %640, i32 0, i32 3, !dbg !958
  %642 = getelementptr inbounds [10 x i8], ptr %641, i64 0, i64 0, !dbg !959
  %643 = load ptr, ptr %5, align 8, !dbg !960
  %644 = load ptr, ptr %8, align 8, !dbg !961
  %645 = load ptr, ptr %644, align 8, !dbg !962
  %646 = getelementptr inbounds %struct.nn_trie_node, ptr %645, i32 0, i32 2, !dbg !963
  %647 = load i8, ptr %646, align 1, !dbg !963
  %648 = zext i8 %647 to i64, !dbg !964
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %642, ptr align 1 %643, i64 %648, i1 false), !dbg !959
  %649 = load ptr, ptr %8, align 8, !dbg !965
  %650 = load ptr, ptr %649, align 8, !dbg !966
  %651 = getelementptr inbounds %struct.nn_trie_node, ptr %650, i32 0, i32 2, !dbg !967
  %652 = load i8, ptr %651, align 1, !dbg !967
  %653 = zext i8 %652 to i32, !dbg !968
  %654 = load ptr, ptr %5, align 8, !dbg !969
  %655 = sext i32 %653 to i64, !dbg !969
  %656 = getelementptr inbounds i8, ptr %654, i64 %655, !dbg !969
  store ptr %656, ptr %5, align 8, !dbg !969
  %657 = load ptr, ptr %8, align 8, !dbg !970
  %658 = load ptr, ptr %657, align 8, !dbg !971
  %659 = getelementptr inbounds %struct.nn_trie_node, ptr %658, i32 0, i32 2, !dbg !972
  %660 = load i8, ptr %659, align 1, !dbg !972
  %661 = zext i8 %660 to i64, !dbg !973
  %662 = load i64, ptr %6, align 8, !dbg !974
  %663 = sub i64 %662, %661, !dbg !974
  store i64 %663, ptr %6, align 8, !dbg !974
  %664 = load i32, ptr %20, align 4, !dbg !975
  %665 = icmp ne i32 %664, 0, !dbg !975
  br i1 %665, label %667, label %666, !dbg !977

666:                                              ; preds = %633
  br label %682, !dbg !978

667:                                              ; preds = %633
  %668 = load ptr, ptr %5, align 8, !dbg !979
  %669 = load i8, ptr %668, align 1, !dbg !980
  %670 = load ptr, ptr %8, align 8, !dbg !981
  %671 = load ptr, ptr %670, align 8, !dbg !982
  %672 = getelementptr inbounds %struct.nn_trie_node, ptr %671, i32 0, i32 4, !dbg !983
  %673 = getelementptr inbounds %struct.anon, ptr %672, i32 0, i32 0, !dbg !984
  %674 = getelementptr inbounds [8 x i8], ptr %673, i64 0, i64 0, !dbg !985
  store i8 %669, ptr %674, align 4, !dbg !986
  %675 = load ptr, ptr %8, align 8, !dbg !987
  %676 = load ptr, ptr %675, align 8, !dbg !988
  %677 = call ptr @nn_node_child(ptr noundef %676, i32 noundef 0), !dbg !989
  store ptr %677, ptr %8, align 8, !dbg !990
  %678 = load ptr, ptr %5, align 8, !dbg !991
  %679 = getelementptr inbounds i8, ptr %678, i32 1, !dbg !991
  store ptr %679, ptr %5, align 8, !dbg !991
  %680 = load i64, ptr %6, align 8, !dbg !992
  %681 = add i64 %680, -1, !dbg !992
  store i64 %681, ptr %6, align 8, !dbg !992
  br label %600, !dbg !928, !llvm.loop !993

682:                                              ; preds = %666
  br label %683, !dbg !928

683:                                              ; preds = %682, %147, %53
  call void @llvm.dbg.label(metadata !995), !dbg !996
  %684 = load ptr, ptr %8, align 8, !dbg !997
  %685 = load ptr, ptr %684, align 8, !dbg !998
  %686 = getelementptr inbounds %struct.nn_trie_node, ptr %685, i32 0, i32 0, !dbg !999
  %687 = load i32, ptr %686, align 4, !dbg !1000
  %688 = add i32 %687, 1, !dbg !1000
  store i32 %688, ptr %686, align 4, !dbg !1000
  %689 = load ptr, ptr %8, align 8, !dbg !1001
  %690 = load ptr, ptr %689, align 8, !dbg !1002
  %691 = getelementptr inbounds %struct.nn_trie_node, ptr %690, i32 0, i32 0, !dbg !1003
  %692 = load i32, ptr %691, align 4, !dbg !1003
  %693 = icmp eq i32 %692, 1, !dbg !1004
  %694 = zext i1 %693 to i64, !dbg !1005
  %695 = select i1 %693, i32 1, i32 0, !dbg !1005
  ret i32 %695, !dbg !1006
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_node_check_prefix(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1007 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1010, metadata !DIExpression()), !dbg !1011
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1012, metadata !DIExpression()), !dbg !1013
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1014, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1016, metadata !DIExpression()), !dbg !1017
  store i32 0, ptr %8, align 4, !dbg !1018
  br label %9, !dbg !1020

9:                                                ; preds = %38, %3
  %10 = load i32, ptr %8, align 4, !dbg !1021
  %11 = load ptr, ptr %5, align 8, !dbg !1023
  %12 = getelementptr inbounds %struct.nn_trie_node, ptr %11, i32 0, i32 2, !dbg !1024
  %13 = load i8, ptr %12, align 1, !dbg !1024
  %14 = zext i8 %13 to i32, !dbg !1023
  %15 = icmp ne i32 %10, %14, !dbg !1025
  br i1 %15, label %16, label %41, !dbg !1026

16:                                               ; preds = %9
  %17 = load i64, ptr %7, align 8, !dbg !1027
  %18 = icmp ne i64 %17, 0, !dbg !1027
  br i1 %18, label %19, label %31, !dbg !1030

19:                                               ; preds = %16
  %20 = load ptr, ptr %5, align 8, !dbg !1031
  %21 = getelementptr inbounds %struct.nn_trie_node, ptr %20, i32 0, i32 3, !dbg !1032
  %22 = load i32, ptr %8, align 4, !dbg !1033
  %23 = sext i32 %22 to i64, !dbg !1031
  %24 = getelementptr inbounds [10 x i8], ptr %21, i64 0, i64 %23, !dbg !1031
  %25 = load i8, ptr %24, align 1, !dbg !1031
  %26 = zext i8 %25 to i32, !dbg !1031
  %27 = load ptr, ptr %6, align 8, !dbg !1034
  %28 = load i8, ptr %27, align 1, !dbg !1035
  %29 = zext i8 %28 to i32, !dbg !1035
  %30 = icmp ne i32 %26, %29, !dbg !1036
  br i1 %30, label %31, label %33, !dbg !1037

31:                                               ; preds = %19, %16
  %32 = load i32, ptr %8, align 4, !dbg !1038
  store i32 %32, ptr %4, align 4, !dbg !1039
  br label %46, !dbg !1039

33:                                               ; preds = %19
  %34 = load ptr, ptr %6, align 8, !dbg !1040
  %35 = getelementptr inbounds i8, ptr %34, i32 1, !dbg !1040
  store ptr %35, ptr %6, align 8, !dbg !1040
  %36 = load i64, ptr %7, align 8, !dbg !1041
  %37 = add i64 %36, -1, !dbg !1041
  store i64 %37, ptr %7, align 8, !dbg !1041
  br label %38, !dbg !1042

38:                                               ; preds = %33
  %39 = load i32, ptr %8, align 4, !dbg !1043
  %40 = add nsw i32 %39, 1, !dbg !1043
  store i32 %40, ptr %8, align 4, !dbg !1043
  br label %9, !dbg !1044, !llvm.loop !1045

41:                                               ; preds = %9
  %42 = load ptr, ptr %5, align 8, !dbg !1047
  %43 = getelementptr inbounds %struct.nn_trie_node, ptr %42, i32 0, i32 2, !dbg !1048
  %44 = load i8, ptr %43, align 1, !dbg !1048
  %45 = zext i8 %44 to i32, !dbg !1047
  store i32 %45, ptr %4, align 4, !dbg !1049
  br label %46, !dbg !1049

46:                                               ; preds = %41, %31
  %47 = load i32, ptr %4, align 4, !dbg !1050
  ret i32 %47, !dbg !1050
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @nn_node_next(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !1051 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1054, metadata !DIExpression()), !dbg !1055
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1056, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1058, metadata !DIExpression()), !dbg !1059
  %7 = load ptr, ptr %4, align 8, !dbg !1060
  %8 = getelementptr inbounds %struct.nn_trie_node, ptr %7, i32 0, i32 1, !dbg !1062
  %9 = load i8, ptr %8, align 4, !dbg !1062
  %10 = zext i8 %9 to i32, !dbg !1060
  %11 = icmp eq i32 %10, 0, !dbg !1063
  br i1 %11, label %12, label %13, !dbg !1064

12:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !1065
  br label %78, !dbg !1065

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !1066
  %15 = getelementptr inbounds %struct.nn_trie_node, ptr %14, i32 0, i32 1, !dbg !1068
  %16 = load i8, ptr %15, align 4, !dbg !1068
  %17 = zext i8 %16 to i32, !dbg !1066
  %18 = icmp sle i32 %17, 8, !dbg !1069
  br i1 %18, label %19, label %48, !dbg !1070

19:                                               ; preds = %13
  store i32 0, ptr %6, align 4, !dbg !1071
  br label %20, !dbg !1074

20:                                               ; preds = %44, %19
  %21 = load i32, ptr %6, align 4, !dbg !1075
  %22 = load ptr, ptr %4, align 8, !dbg !1077
  %23 = getelementptr inbounds %struct.nn_trie_node, ptr %22, i32 0, i32 1, !dbg !1078
  %24 = load i8, ptr %23, align 4, !dbg !1078
  %25 = zext i8 %24 to i32, !dbg !1077
  %26 = icmp ne i32 %21, %25, !dbg !1079
  br i1 %26, label %27, label %47, !dbg !1080

27:                                               ; preds = %20
  %28 = load ptr, ptr %4, align 8, !dbg !1081
  %29 = getelementptr inbounds %struct.nn_trie_node, ptr %28, i32 0, i32 4, !dbg !1083
  %30 = getelementptr inbounds %struct.anon, ptr %29, i32 0, i32 0, !dbg !1084
  %31 = load i32, ptr %6, align 4, !dbg !1085
  %32 = sext i32 %31 to i64, !dbg !1081
  %33 = getelementptr inbounds [8 x i8], ptr %30, i64 0, i64 %32, !dbg !1081
  %34 = load i8, ptr %33, align 1, !dbg !1081
  %35 = zext i8 %34 to i32, !dbg !1081
  %36 = load i8, ptr %5, align 1, !dbg !1086
  %37 = zext i8 %36 to i32, !dbg !1086
  %38 = icmp eq i32 %35, %37, !dbg !1087
  br i1 %38, label %39, label %43, !dbg !1088

39:                                               ; preds = %27
  %40 = load ptr, ptr %4, align 8, !dbg !1089
  %41 = load i32, ptr %6, align 4, !dbg !1090
  %42 = call ptr @nn_node_child(ptr noundef %40, i32 noundef %41), !dbg !1091
  store ptr %42, ptr %3, align 8, !dbg !1092
  br label %78, !dbg !1092

43:                                               ; preds = %27
  br label %44, !dbg !1086

44:                                               ; preds = %43
  %45 = load i32, ptr %6, align 4, !dbg !1093
  %46 = add nsw i32 %45, 1, !dbg !1093
  store i32 %46, ptr %6, align 4, !dbg !1093
  br label %20, !dbg !1094, !llvm.loop !1095

47:                                               ; preds = %20
  store ptr null, ptr %3, align 8, !dbg !1097
  br label %78, !dbg !1097

48:                                               ; preds = %13
  %49 = load i8, ptr %5, align 1, !dbg !1098
  %50 = zext i8 %49 to i32, !dbg !1098
  %51 = load ptr, ptr %4, align 8, !dbg !1100
  %52 = getelementptr inbounds %struct.nn_trie_node, ptr %51, i32 0, i32 4, !dbg !1101
  %53 = getelementptr inbounds %struct.anon.0, ptr %52, i32 0, i32 0, !dbg !1102
  %54 = load i8, ptr %53, align 4, !dbg !1102
  %55 = zext i8 %54 to i32, !dbg !1100
  %56 = icmp slt i32 %50, %55, !dbg !1103
  br i1 %56, label %66, label %57, !dbg !1104

57:                                               ; preds = %48
  %58 = load i8, ptr %5, align 1, !dbg !1105
  %59 = zext i8 %58 to i32, !dbg !1105
  %60 = load ptr, ptr %4, align 8, !dbg !1106
  %61 = getelementptr inbounds %struct.nn_trie_node, ptr %60, i32 0, i32 4, !dbg !1107
  %62 = getelementptr inbounds %struct.anon.0, ptr %61, i32 0, i32 1, !dbg !1108
  %63 = load i8, ptr %62, align 1, !dbg !1108
  %64 = zext i8 %63 to i32, !dbg !1106
  %65 = icmp sgt i32 %59, %64, !dbg !1109
  br i1 %65, label %66, label %67, !dbg !1110

66:                                               ; preds = %57, %48
  store ptr null, ptr %3, align 8, !dbg !1111
  br label %78, !dbg !1111

67:                                               ; preds = %57
  %68 = load ptr, ptr %4, align 8, !dbg !1112
  %69 = load i8, ptr %5, align 1, !dbg !1113
  %70 = zext i8 %69 to i32, !dbg !1113
  %71 = load ptr, ptr %4, align 8, !dbg !1114
  %72 = getelementptr inbounds %struct.nn_trie_node, ptr %71, i32 0, i32 4, !dbg !1115
  %73 = getelementptr inbounds %struct.anon.0, ptr %72, i32 0, i32 0, !dbg !1116
  %74 = load i8, ptr %73, align 4, !dbg !1116
  %75 = zext i8 %74 to i32, !dbg !1114
  %76 = sub nsw i32 %70, %75, !dbg !1117
  %77 = call ptr @nn_node_child(ptr noundef %68, i32 noundef %76), !dbg !1118
  store ptr %77, ptr %3, align 8, !dbg !1119
  br label %78, !dbg !1119

78:                                               ; preds = %67, %66, %47, %39, %12
  %79 = load ptr, ptr %3, align 8, !dbg !1120
  ret ptr %79, !dbg !1120
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare ptr @nn_alloc_(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @nn_node_compact(ptr noundef %0) #0 !dbg !1121 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1124, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1126, metadata !DIExpression()), !dbg !1127
  %5 = load ptr, ptr %3, align 8, !dbg !1128
  %6 = call i32 @nn_node_has_subscribers(ptr noundef %5), !dbg !1130
  %7 = icmp ne i32 %6, 0, !dbg !1130
  br i1 %7, label %8, label %10, !dbg !1131

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !1132
  store ptr %9, ptr %2, align 8, !dbg !1133
  br label %88, !dbg !1133

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !1134
  %12 = getelementptr inbounds %struct.nn_trie_node, ptr %11, i32 0, i32 1, !dbg !1136
  %13 = load i8, ptr %12, align 4, !dbg !1136
  %14 = zext i8 %13 to i32, !dbg !1134
  %15 = icmp ne i32 %14, 1, !dbg !1137
  br i1 %15, label %16, label %18, !dbg !1138

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8, !dbg !1139
  store ptr %17, ptr %2, align 8, !dbg !1140
  br label %88, !dbg !1140

18:                                               ; preds = %10
  %19 = load ptr, ptr %3, align 8, !dbg !1141
  %20 = call ptr @nn_node_child(ptr noundef %19, i32 noundef 0), !dbg !1142
  %21 = load ptr, ptr %20, align 8, !dbg !1143
  store ptr %21, ptr %4, align 8, !dbg !1144
  %22 = load ptr, ptr %3, align 8, !dbg !1145
  %23 = getelementptr inbounds %struct.nn_trie_node, ptr %22, i32 0, i32 2, !dbg !1147
  %24 = load i8, ptr %23, align 1, !dbg !1147
  %25 = zext i8 %24 to i32, !dbg !1145
  %26 = load ptr, ptr %4, align 8, !dbg !1148
  %27 = getelementptr inbounds %struct.nn_trie_node, ptr %26, i32 0, i32 2, !dbg !1149
  %28 = load i8, ptr %27, align 1, !dbg !1149
  %29 = zext i8 %28 to i32, !dbg !1148
  %30 = add nsw i32 %25, %29, !dbg !1150
  %31 = add nsw i32 %30, 1, !dbg !1151
  %32 = icmp sgt i32 %31, 10, !dbg !1152
  br i1 %32, label %33, label %35, !dbg !1153

33:                                               ; preds = %18
  %34 = load ptr, ptr %3, align 8, !dbg !1154
  store ptr %34, ptr %2, align 8, !dbg !1155
  br label %88, !dbg !1155

35:                                               ; preds = %18
  %36 = load ptr, ptr %4, align 8, !dbg !1156
  %37 = getelementptr inbounds %struct.nn_trie_node, ptr %36, i32 0, i32 3, !dbg !1157
  %38 = getelementptr inbounds [10 x i8], ptr %37, i64 0, i64 0, !dbg !1156
  %39 = load ptr, ptr %3, align 8, !dbg !1158
  %40 = getelementptr inbounds %struct.nn_trie_node, ptr %39, i32 0, i32 2, !dbg !1159
  %41 = load i8, ptr %40, align 1, !dbg !1159
  %42 = zext i8 %41 to i32, !dbg !1158
  %43 = sext i32 %42 to i64, !dbg !1160
  %44 = getelementptr inbounds i8, ptr %38, i64 %43, !dbg !1160
  %45 = getelementptr inbounds i8, ptr %44, i64 1, !dbg !1161
  %46 = load ptr, ptr %4, align 8, !dbg !1162
  %47 = getelementptr inbounds %struct.nn_trie_node, ptr %46, i32 0, i32 3, !dbg !1163
  %48 = getelementptr inbounds [10 x i8], ptr %47, i64 0, i64 0, !dbg !1164
  %49 = load ptr, ptr %4, align 8, !dbg !1165
  %50 = getelementptr inbounds %struct.nn_trie_node, ptr %49, i32 0, i32 2, !dbg !1166
  %51 = load i8, ptr %50, align 1, !dbg !1166
  %52 = zext i8 %51 to i64, !dbg !1165
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %45, ptr align 2 %48, i64 %52, i1 false), !dbg !1164
  %53 = load ptr, ptr %4, align 8, !dbg !1167
  %54 = getelementptr inbounds %struct.nn_trie_node, ptr %53, i32 0, i32 3, !dbg !1168
  %55 = getelementptr inbounds [10 x i8], ptr %54, i64 0, i64 0, !dbg !1169
  %56 = load ptr, ptr %3, align 8, !dbg !1170
  %57 = getelementptr inbounds %struct.nn_trie_node, ptr %56, i32 0, i32 3, !dbg !1171
  %58 = getelementptr inbounds [10 x i8], ptr %57, i64 0, i64 0, !dbg !1169
  %59 = load ptr, ptr %3, align 8, !dbg !1172
  %60 = getelementptr inbounds %struct.nn_trie_node, ptr %59, i32 0, i32 2, !dbg !1173
  %61 = load i8, ptr %60, align 1, !dbg !1173
  %62 = zext i8 %61 to i64, !dbg !1172
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %55, ptr align 2 %58, i64 %62, i1 false), !dbg !1169
  %63 = load ptr, ptr %3, align 8, !dbg !1174
  %64 = getelementptr inbounds %struct.nn_trie_node, ptr %63, i32 0, i32 4, !dbg !1175
  %65 = getelementptr inbounds %struct.anon, ptr %64, i32 0, i32 0, !dbg !1176
  %66 = getelementptr inbounds [8 x i8], ptr %65, i64 0, i64 0, !dbg !1174
  %67 = load i8, ptr %66, align 4, !dbg !1174
  %68 = load ptr, ptr %4, align 8, !dbg !1177
  %69 = getelementptr inbounds %struct.nn_trie_node, ptr %68, i32 0, i32 3, !dbg !1178
  %70 = load ptr, ptr %3, align 8, !dbg !1179
  %71 = getelementptr inbounds %struct.nn_trie_node, ptr %70, i32 0, i32 2, !dbg !1180
  %72 = load i8, ptr %71, align 1, !dbg !1180
  %73 = zext i8 %72 to i64, !dbg !1177
  %74 = getelementptr inbounds [10 x i8], ptr %69, i64 0, i64 %73, !dbg !1177
  store i8 %67, ptr %74, align 1, !dbg !1181
  %75 = load ptr, ptr %3, align 8, !dbg !1182
  %76 = getelementptr inbounds %struct.nn_trie_node, ptr %75, i32 0, i32 2, !dbg !1183
  %77 = load i8, ptr %76, align 1, !dbg !1183
  %78 = zext i8 %77 to i32, !dbg !1182
  %79 = add nsw i32 %78, 1, !dbg !1184
  %80 = load ptr, ptr %4, align 8, !dbg !1185
  %81 = getelementptr inbounds %struct.nn_trie_node, ptr %80, i32 0, i32 2, !dbg !1186
  %82 = load i8, ptr %81, align 1, !dbg !1187
  %83 = zext i8 %82 to i32, !dbg !1187
  %84 = add nsw i32 %83, %79, !dbg !1187
  %85 = trunc i32 %84 to i8, !dbg !1187
  store i8 %85, ptr %81, align 1, !dbg !1187
  %86 = load ptr, ptr %3, align 8, !dbg !1188
  call void @nn_free(ptr noundef %86), !dbg !1189
  %87 = load ptr, ptr %4, align 8, !dbg !1190
  store ptr %87, ptr %2, align 8, !dbg !1191
  br label %88, !dbg !1191

88:                                               ; preds = %35, %33, %16, %8
  %89 = load ptr, ptr %2, align 8, !dbg !1192
  ret ptr %89, !dbg !1192
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @nn_node_child(ptr noundef %0, i32 noundef %1) #0 !dbg !1193 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1196, metadata !DIExpression()), !dbg !1197
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1198, metadata !DIExpression()), !dbg !1199
  %5 = load ptr, ptr %3, align 8, !dbg !1200
  %6 = getelementptr inbounds %struct.nn_trie_node, ptr %5, i64 1, !dbg !1201
  %7 = load i32, ptr %4, align 4, !dbg !1202
  %8 = sext i32 %7 to i64, !dbg !1203
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8, !dbg !1203
  ret ptr %9, !dbg !1204
}

declare ptr @nn_realloc(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @nn_free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_trie_match(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1205 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1206, metadata !DIExpression()), !dbg !1207
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1208, metadata !DIExpression()), !dbg !1209
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1210, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1212, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1214, metadata !DIExpression()), !dbg !1215
  %10 = load ptr, ptr %5, align 8, !dbg !1216
  %11 = getelementptr inbounds %struct.nn_trie, ptr %10, i32 0, i32 0, !dbg !1217
  %12 = load ptr, ptr %11, align 8, !dbg !1217
  store ptr %12, ptr %8, align 8, !dbg !1218
  br label %13, !dbg !1219

13:                                               ; preds = %3, %57
  %14 = load ptr, ptr %8, align 8, !dbg !1220
  %15 = icmp ne ptr %14, null, !dbg !1220
  br i1 %15, label %17, label %16, !dbg !1223

16:                                               ; preds = %13
  store i32 0, ptr %4, align 4, !dbg !1224
  br label %63, !dbg !1224

17:                                               ; preds = %13
  %18 = load ptr, ptr %8, align 8, !dbg !1225
  %19 = load ptr, ptr %6, align 8, !dbg !1227
  %20 = load i64, ptr %7, align 8, !dbg !1228
  %21 = call i32 @nn_node_check_prefix(ptr noundef %18, ptr noundef %19, i64 noundef %20), !dbg !1229
  %22 = load ptr, ptr %8, align 8, !dbg !1230
  %23 = getelementptr inbounds %struct.nn_trie_node, ptr %22, i32 0, i32 2, !dbg !1231
  %24 = load i8, ptr %23, align 1, !dbg !1231
  %25 = zext i8 %24 to i32, !dbg !1230
  %26 = icmp ne i32 %21, %25, !dbg !1232
  br i1 %26, label %27, label %28, !dbg !1233

27:                                               ; preds = %17
  store i32 0, ptr %4, align 4, !dbg !1234
  br label %63, !dbg !1234

28:                                               ; preds = %17
  %29 = load ptr, ptr %8, align 8, !dbg !1235
  %30 = getelementptr inbounds %struct.nn_trie_node, ptr %29, i32 0, i32 2, !dbg !1236
  %31 = load i8, ptr %30, align 1, !dbg !1236
  %32 = zext i8 %31 to i32, !dbg !1235
  %33 = load ptr, ptr %6, align 8, !dbg !1237
  %34 = sext i32 %32 to i64, !dbg !1237
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !1237
  store ptr %35, ptr %6, align 8, !dbg !1237
  %36 = load ptr, ptr %8, align 8, !dbg !1238
  %37 = getelementptr inbounds %struct.nn_trie_node, ptr %36, i32 0, i32 2, !dbg !1239
  %38 = load i8, ptr %37, align 1, !dbg !1239
  %39 = zext i8 %38 to i64, !dbg !1238
  %40 = load i64, ptr %7, align 8, !dbg !1240
  %41 = sub i64 %40, %39, !dbg !1240
  store i64 %41, ptr %7, align 8, !dbg !1240
  %42 = load ptr, ptr %8, align 8, !dbg !1241
  %43 = call i32 @nn_node_has_subscribers(ptr noundef %42), !dbg !1243
  %44 = icmp ne i32 %43, 0, !dbg !1243
  br i1 %44, label %45, label %46, !dbg !1244

45:                                               ; preds = %28
  store i32 1, ptr %4, align 4, !dbg !1245
  br label %63, !dbg !1245

46:                                               ; preds = %28
  %47 = load ptr, ptr %8, align 8, !dbg !1246
  %48 = load ptr, ptr %6, align 8, !dbg !1247
  %49 = load i8, ptr %48, align 1, !dbg !1248
  %50 = call ptr @nn_node_next(ptr noundef %47, i8 noundef zeroext %49), !dbg !1249
  store ptr %50, ptr %9, align 8, !dbg !1250
  %51 = load ptr, ptr %9, align 8, !dbg !1251
  %52 = icmp ne ptr %51, null, !dbg !1251
  br i1 %52, label %53, label %56, !dbg !1251

53:                                               ; preds = %46
  %54 = load ptr, ptr %9, align 8, !dbg !1252
  %55 = load ptr, ptr %54, align 8, !dbg !1253
  br label %57, !dbg !1251

56:                                               ; preds = %46
  br label %57, !dbg !1251

57:                                               ; preds = %56, %53
  %58 = phi ptr [ %55, %53 ], [ null, %56 ], !dbg !1251
  store ptr %58, ptr %8, align 8, !dbg !1254
  %59 = load ptr, ptr %6, align 8, !dbg !1255
  %60 = getelementptr inbounds i8, ptr %59, i32 1, !dbg !1255
  store ptr %60, ptr %6, align 8, !dbg !1255
  %61 = load i64, ptr %7, align 8, !dbg !1256
  %62 = add i64 %61, -1, !dbg !1256
  store i64 %62, ptr %7, align 8, !dbg !1256
  br label %13, !dbg !1219, !llvm.loop !1257

63:                                               ; preds = %45, %27, %16
  %64 = load i32, ptr %4, align 4, !dbg !1259
  ret i32 %64, !dbg !1259
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_node_has_subscribers(ptr noundef %0) #0 !dbg !1260 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1263, metadata !DIExpression()), !dbg !1264
  %3 = load ptr, ptr %2, align 8, !dbg !1265
  %4 = getelementptr inbounds %struct.nn_trie_node, ptr %3, i32 0, i32 0, !dbg !1266
  %5 = load i32, ptr %4, align 4, !dbg !1266
  %6 = icmp ne i32 %5, 0, !dbg !1265
  %7 = zext i1 %6 to i64, !dbg !1265
  %8 = select i1 %6, i32 1, i32 0, !dbg !1265
  ret i32 %8, !dbg !1267
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_trie_unsubscribe(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1268 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1269, metadata !DIExpression()), !dbg !1270
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1271, metadata !DIExpression()), !dbg !1272
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1273, metadata !DIExpression()), !dbg !1274
  %7 = load ptr, ptr %4, align 8, !dbg !1275
  %8 = getelementptr inbounds %struct.nn_trie, ptr %7, i32 0, i32 0, !dbg !1276
  %9 = load ptr, ptr %5, align 8, !dbg !1277
  %10 = load i64, ptr %6, align 8, !dbg !1278
  %11 = call i32 @nn_node_unsubscribe(ptr noundef %8, ptr noundef %9, i64 noundef %10), !dbg !1279
  ret i32 %11, !dbg !1280
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_node_unsubscribe(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1281 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1284, metadata !DIExpression()), !dbg !1285
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1286, metadata !DIExpression()), !dbg !1287
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1288, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1290, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1292, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1294, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1296, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1298, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1300, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1302, metadata !DIExpression()), !dbg !1303
  %15 = load i64, ptr %7, align 8, !dbg !1304
  %16 = icmp ne i64 %15, 0, !dbg !1304
  br i1 %16, label %18, label %17, !dbg !1306

17:                                               ; preds = %3
  br label %498, !dbg !1307

18:                                               ; preds = %3
  %19 = load ptr, ptr %5, align 8, !dbg !1308
  %20 = load ptr, ptr %19, align 8, !dbg !1310
  %21 = load ptr, ptr %6, align 8, !dbg !1311
  %22 = load i64, ptr %7, align 8, !dbg !1312
  %23 = call i32 @nn_node_check_prefix(ptr noundef %20, ptr noundef %21, i64 noundef %22), !dbg !1313
  %24 = load ptr, ptr %5, align 8, !dbg !1314
  %25 = load ptr, ptr %24, align 8, !dbg !1315
  %26 = getelementptr inbounds %struct.nn_trie_node, ptr %25, i32 0, i32 2, !dbg !1316
  %27 = load i8, ptr %26, align 1, !dbg !1316
  %28 = zext i8 %27 to i32, !dbg !1317
  %29 = icmp ne i32 %23, %28, !dbg !1318
  br i1 %29, label %30, label %31, !dbg !1319

30:                                               ; preds = %18
  store i32 0, ptr %4, align 4, !dbg !1320
  br label %541, !dbg !1320

31:                                               ; preds = %18
  %32 = load ptr, ptr %5, align 8, !dbg !1321
  %33 = load ptr, ptr %32, align 8, !dbg !1322
  %34 = getelementptr inbounds %struct.nn_trie_node, ptr %33, i32 0, i32 2, !dbg !1323
  %35 = load i8, ptr %34, align 1, !dbg !1323
  %36 = zext i8 %35 to i32, !dbg !1324
  %37 = load ptr, ptr %6, align 8, !dbg !1325
  %38 = sext i32 %36 to i64, !dbg !1325
  %39 = getelementptr inbounds i8, ptr %37, i64 %38, !dbg !1325
  store ptr %39, ptr %6, align 8, !dbg !1325
  %40 = load ptr, ptr %5, align 8, !dbg !1326
  %41 = load ptr, ptr %40, align 8, !dbg !1327
  %42 = getelementptr inbounds %struct.nn_trie_node, ptr %41, i32 0, i32 2, !dbg !1328
  %43 = load i8, ptr %42, align 1, !dbg !1328
  %44 = zext i8 %43 to i64, !dbg !1329
  %45 = load i64, ptr %7, align 8, !dbg !1330
  %46 = sub i64 %45, %44, !dbg !1330
  store i64 %46, ptr %7, align 8, !dbg !1330
  %47 = load i64, ptr %7, align 8, !dbg !1331
  %48 = icmp ne i64 %47, 0, !dbg !1331
  br i1 %48, label %50, label %49, !dbg !1333

49:                                               ; preds = %31
  br label %498, !dbg !1334

50:                                               ; preds = %31
  %51 = load ptr, ptr %5, align 8, !dbg !1335
  %52 = load ptr, ptr %51, align 8, !dbg !1336
  %53 = load ptr, ptr %6, align 8, !dbg !1337
  %54 = load i8, ptr %53, align 1, !dbg !1338
  %55 = call ptr @nn_node_next(ptr noundef %52, i8 noundef zeroext %54), !dbg !1339
  store ptr %55, ptr %12, align 8, !dbg !1340
  %56 = load ptr, ptr %12, align 8, !dbg !1341
  %57 = icmp ne ptr %56, null, !dbg !1341
  br i1 %57, label %59, label %58, !dbg !1343

58:                                               ; preds = %50
  store i32 0, ptr %4, align 4, !dbg !1344
  br label %541, !dbg !1344

59:                                               ; preds = %50
  %60 = load ptr, ptr %12, align 8, !dbg !1345
  %61 = load ptr, ptr %6, align 8, !dbg !1347
  %62 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !1348
  %63 = load i64, ptr %7, align 8, !dbg !1349
  %64 = sub i64 %63, 1, !dbg !1350
  %65 = call i32 @nn_node_unsubscribe(ptr noundef %60, ptr noundef %62, i64 noundef %64), !dbg !1351
  %66 = icmp eq i32 %65, 0, !dbg !1352
  br i1 %66, label %67, label %68, !dbg !1353

67:                                               ; preds = %59
  store i32 0, ptr %4, align 4, !dbg !1354
  br label %541, !dbg !1354

68:                                               ; preds = %59
  %69 = load ptr, ptr %12, align 8, !dbg !1355
  %70 = load ptr, ptr %69, align 8, !dbg !1357
  %71 = icmp ne ptr %70, null, !dbg !1357
  br i1 %71, label %72, label %73, !dbg !1358

72:                                               ; preds = %68
  store i32 1, ptr %4, align 4, !dbg !1359
  br label %541, !dbg !1359

73:                                               ; preds = %68
  %74 = load ptr, ptr %5, align 8, !dbg !1360
  %75 = load ptr, ptr %74, align 8, !dbg !1362
  %76 = getelementptr inbounds %struct.nn_trie_node, ptr %75, i32 0, i32 1, !dbg !1363
  %77 = load i8, ptr %76, align 4, !dbg !1363
  %78 = zext i8 %77 to i32, !dbg !1364
  %79 = icmp slt i32 %78, 9, !dbg !1365
  br i1 %79, label %80, label %205, !dbg !1366

80:                                               ; preds = %73
  store i32 0, ptr %10, align 4, !dbg !1367
  br label %81, !dbg !1370

81:                                               ; preds = %105, %80
  %82 = load i32, ptr %10, align 4, !dbg !1371
  %83 = load ptr, ptr %5, align 8, !dbg !1373
  %84 = load ptr, ptr %83, align 8, !dbg !1374
  %85 = getelementptr inbounds %struct.nn_trie_node, ptr %84, i32 0, i32 1, !dbg !1375
  %86 = load i8, ptr %85, align 4, !dbg !1375
  %87 = zext i8 %86 to i32, !dbg !1376
  %88 = icmp ne i32 %82, %87, !dbg !1377
  br i1 %88, label %89, label %108, !dbg !1378

89:                                               ; preds = %81
  %90 = load ptr, ptr %5, align 8, !dbg !1379
  %91 = load ptr, ptr %90, align 8, !dbg !1381
  %92 = getelementptr inbounds %struct.nn_trie_node, ptr %91, i32 0, i32 4, !dbg !1382
  %93 = getelementptr inbounds %struct.anon, ptr %92, i32 0, i32 0, !dbg !1383
  %94 = load i32, ptr %10, align 4, !dbg !1384
  %95 = sext i32 %94 to i64, !dbg !1385
  %96 = getelementptr inbounds [8 x i8], ptr %93, i64 0, i64 %95, !dbg !1385
  %97 = load i8, ptr %96, align 1, !dbg !1385
  %98 = zext i8 %97 to i32, !dbg !1385
  %99 = load ptr, ptr %6, align 8, !dbg !1386
  %100 = load i8, ptr %99, align 1, !dbg !1387
  %101 = zext i8 %100 to i32, !dbg !1387
  %102 = icmp eq i32 %98, %101, !dbg !1388
  br i1 %102, label %103, label %104, !dbg !1389

103:                                              ; preds = %89
  br label %108, !dbg !1390

104:                                              ; preds = %89
  br label %105, !dbg !1386

105:                                              ; preds = %104
  %106 = load i32, ptr %10, align 4, !dbg !1391
  %107 = add nsw i32 %106, 1, !dbg !1391
  store i32 %107, ptr %10, align 4, !dbg !1391
  br label %81, !dbg !1392, !llvm.loop !1393

108:                                              ; preds = %103, %81
  %109 = load i32, ptr %10, align 4, !dbg !1395
  %110 = load ptr, ptr %5, align 8, !dbg !1395
  %111 = load ptr, ptr %110, align 8, !dbg !1395
  %112 = getelementptr inbounds %struct.nn_trie_node, ptr %111, i32 0, i32 1, !dbg !1395
  %113 = load i8, ptr %112, align 4, !dbg !1395
  %114 = zext i8 %113 to i32, !dbg !1395
  %115 = icmp ne i32 %109, %114, !dbg !1395
  br i1 %115, label %116, label %117, !dbg !1398

116:                                              ; preds = %108
  br label %118, !dbg !1398

117:                                              ; preds = %108
  call void @__assert_fail(ptr noundef @.str.15, ptr noundef @.str.1, i32 noundef 527, ptr noundef @__PRETTY_FUNCTION__.nn_node_unsubscribe) #6, !dbg !1395
  unreachable, !dbg !1395

118:                                              ; preds = %116
  %119 = load ptr, ptr %5, align 8, !dbg !1399
  %120 = load ptr, ptr %119, align 8, !dbg !1400
  %121 = getelementptr inbounds %struct.nn_trie_node, ptr %120, i32 0, i32 4, !dbg !1401
  %122 = getelementptr inbounds %struct.anon, ptr %121, i32 0, i32 0, !dbg !1402
  %123 = getelementptr inbounds [8 x i8], ptr %122, i64 0, i64 0, !dbg !1403
  %124 = load i32, ptr %10, align 4, !dbg !1404
  %125 = sext i32 %124 to i64, !dbg !1405
  %126 = getelementptr inbounds i8, ptr %123, i64 %125, !dbg !1405
  %127 = load ptr, ptr %5, align 8, !dbg !1406
  %128 = load ptr, ptr %127, align 8, !dbg !1407
  %129 = getelementptr inbounds %struct.nn_trie_node, ptr %128, i32 0, i32 4, !dbg !1408
  %130 = getelementptr inbounds %struct.anon, ptr %129, i32 0, i32 0, !dbg !1409
  %131 = getelementptr inbounds [8 x i8], ptr %130, i64 0, i64 0, !dbg !1410
  %132 = load i32, ptr %10, align 4, !dbg !1411
  %133 = sext i32 %132 to i64, !dbg !1412
  %134 = getelementptr inbounds i8, ptr %131, i64 %133, !dbg !1412
  %135 = getelementptr inbounds i8, ptr %134, i64 1, !dbg !1413
  %136 = load ptr, ptr %5, align 8, !dbg !1414
  %137 = load ptr, ptr %136, align 8, !dbg !1415
  %138 = getelementptr inbounds %struct.nn_trie_node, ptr %137, i32 0, i32 1, !dbg !1416
  %139 = load i8, ptr %138, align 4, !dbg !1416
  %140 = zext i8 %139 to i32, !dbg !1417
  %141 = load i32, ptr %10, align 4, !dbg !1418
  %142 = sub nsw i32 %140, %141, !dbg !1419
  %143 = sub nsw i32 %142, 1, !dbg !1420
  %144 = sext i32 %143 to i64, !dbg !1417
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %126, ptr align 1 %135, i64 %144, i1 false), !dbg !1421
  %145 = load ptr, ptr %5, align 8, !dbg !1422
  %146 = load ptr, ptr %145, align 8, !dbg !1423
  %147 = load i32, ptr %10, align 4, !dbg !1424
  %148 = call ptr @nn_node_child(ptr noundef %146, i32 noundef %147), !dbg !1425
  %149 = load ptr, ptr %5, align 8, !dbg !1426
  %150 = load ptr, ptr %149, align 8, !dbg !1427
  %151 = load i32, ptr %10, align 4, !dbg !1428
  %152 = add nsw i32 %151, 1, !dbg !1429
  %153 = call ptr @nn_node_child(ptr noundef %150, i32 noundef %152), !dbg !1430
  %154 = load ptr, ptr %5, align 8, !dbg !1431
  %155 = load ptr, ptr %154, align 8, !dbg !1432
  %156 = getelementptr inbounds %struct.nn_trie_node, ptr %155, i32 0, i32 1, !dbg !1433
  %157 = load i8, ptr %156, align 4, !dbg !1433
  %158 = zext i8 %157 to i32, !dbg !1434
  %159 = load i32, ptr %10, align 4, !dbg !1435
  %160 = sub nsw i32 %158, %159, !dbg !1436
  %161 = sub nsw i32 %160, 1, !dbg !1437
  %162 = sext i32 %161 to i64, !dbg !1438
  %163 = mul i64 %162, 8, !dbg !1439
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %148, ptr align 8 %153, i64 %163, i1 false), !dbg !1440
  %164 = load ptr, ptr %5, align 8, !dbg !1441
  %165 = load ptr, ptr %164, align 8, !dbg !1442
  %166 = getelementptr inbounds %struct.nn_trie_node, ptr %165, i32 0, i32 1, !dbg !1443
  %167 = load i8, ptr %166, align 4, !dbg !1444
  %168 = add i8 %167, -1, !dbg !1444
  store i8 %168, ptr %166, align 4, !dbg !1444
  %169 = load ptr, ptr %5, align 8, !dbg !1445
  %170 = load ptr, ptr %169, align 8, !dbg !1446
  %171 = load ptr, ptr %5, align 8, !dbg !1447
  %172 = load ptr, ptr %171, align 8, !dbg !1448
  %173 = getelementptr inbounds %struct.nn_trie_node, ptr %172, i32 0, i32 1, !dbg !1449
  %174 = load i8, ptr %173, align 4, !dbg !1449
  %175 = zext i8 %174 to i64, !dbg !1450
  %176 = mul i64 %175, 8, !dbg !1451
  %177 = add i64 24, %176, !dbg !1452
  %178 = call ptr @nn_realloc(ptr noundef %170, i64 noundef %177), !dbg !1453
  %179 = load ptr, ptr %5, align 8, !dbg !1454
  store ptr %178, ptr %179, align 8, !dbg !1455
  %180 = load ptr, ptr %5, align 8, !dbg !1456
  %181 = load ptr, ptr %180, align 8, !dbg !1456
  %182 = icmp ne ptr %181, null, !dbg !1456
  br i1 %182, label %183, label %184, !dbg !1459

183:                                              ; preds = %118
  br label %185, !dbg !1459

184:                                              ; preds = %118
  call void @__assert_fail(ptr noundef @.str.16, ptr noundef @.str.1, i32 noundef 541, ptr noundef @__PRETTY_FUNCTION__.nn_node_unsubscribe) #6, !dbg !1456
  unreachable, !dbg !1456

185:                                              ; preds = %183
  %186 = load ptr, ptr %5, align 8, !dbg !1460
  %187 = load ptr, ptr %186, align 8, !dbg !1462
  %188 = getelementptr inbounds %struct.nn_trie_node, ptr %187, i32 0, i32 1, !dbg !1463
  %189 = load i8, ptr %188, align 4, !dbg !1463
  %190 = icmp ne i8 %189, 0, !dbg !1464
  br i1 %190, label %200, label %191, !dbg !1465

191:                                              ; preds = %185
  %192 = load ptr, ptr %5, align 8, !dbg !1466
  %193 = load ptr, ptr %192, align 8, !dbg !1467
  %194 = call i32 @nn_node_has_subscribers(ptr noundef %193), !dbg !1468
  %195 = icmp ne i32 %194, 0, !dbg !1468
  br i1 %195, label %200, label %196, !dbg !1469

196:                                              ; preds = %191
  %197 = load ptr, ptr %5, align 8, !dbg !1470
  %198 = load ptr, ptr %197, align 8, !dbg !1472
  call void @nn_free(ptr noundef %198), !dbg !1473
  %199 = load ptr, ptr %5, align 8, !dbg !1474
  store ptr null, ptr %199, align 8, !dbg !1475
  store i32 1, ptr %4, align 4, !dbg !1476
  br label %541, !dbg !1476

200:                                              ; preds = %191, %185
  %201 = load ptr, ptr %5, align 8, !dbg !1477
  %202 = load ptr, ptr %201, align 8, !dbg !1478
  %203 = call ptr @nn_node_compact(ptr noundef %202), !dbg !1479
  %204 = load ptr, ptr %5, align 8, !dbg !1480
  store ptr %203, ptr %204, align 8, !dbg !1481
  store i32 1, ptr %4, align 4, !dbg !1482
  br label %541, !dbg !1482

205:                                              ; preds = %73
  %206 = load ptr, ptr %5, align 8, !dbg !1483
  %207 = load ptr, ptr %206, align 8, !dbg !1485
  %208 = getelementptr inbounds %struct.nn_trie_node, ptr %207, i32 0, i32 4, !dbg !1486
  %209 = getelementptr inbounds %struct.anon.0, ptr %208, i32 0, i32 2, !dbg !1487
  %210 = load i16, ptr %209, align 2, !dbg !1487
  %211 = zext i16 %210 to i32, !dbg !1488
  %212 = icmp sgt i32 %211, 9, !dbg !1489
  br i1 %212, label %213, label %409, !dbg !1490

213:                                              ; preds = %205
  %214 = load ptr, ptr %6, align 8, !dbg !1491
  %215 = load i8, ptr %214, align 1, !dbg !1494
  %216 = zext i8 %215 to i32, !dbg !1494
  %217 = load ptr, ptr %5, align 8, !dbg !1495
  %218 = load ptr, ptr %217, align 8, !dbg !1496
  %219 = getelementptr inbounds %struct.nn_trie_node, ptr %218, i32 0, i32 4, !dbg !1497
  %220 = getelementptr inbounds %struct.anon.0, ptr %219, i32 0, i32 0, !dbg !1498
  %221 = load i8, ptr %220, align 4, !dbg !1498
  %222 = zext i8 %221 to i32, !dbg !1499
  %223 = icmp eq i32 %216, %222, !dbg !1500
  br i1 %223, label %224, label %315, !dbg !1501

224:                                              ; preds = %213
  store i32 0, ptr %8, align 4, !dbg !1502
  br label %225, !dbg !1505

225:                                              ; preds = %251, %224
  %226 = load i32, ptr %8, align 4, !dbg !1506
  %227 = load ptr, ptr %5, align 8, !dbg !1508
  %228 = load ptr, ptr %227, align 8, !dbg !1509
  %229 = getelementptr inbounds %struct.nn_trie_node, ptr %228, i32 0, i32 4, !dbg !1510
  %230 = getelementptr inbounds %struct.anon.0, ptr %229, i32 0, i32 1, !dbg !1511
  %231 = load i8, ptr %230, align 1, !dbg !1511
  %232 = zext i8 %231 to i32, !dbg !1512
  %233 = load ptr, ptr %5, align 8, !dbg !1513
  %234 = load ptr, ptr %233, align 8, !dbg !1514
  %235 = getelementptr inbounds %struct.nn_trie_node, ptr %234, i32 0, i32 4, !dbg !1515
  %236 = getelementptr inbounds %struct.anon.0, ptr %235, i32 0, i32 0, !dbg !1516
  %237 = load i8, ptr %236, align 4, !dbg !1516
  %238 = zext i8 %237 to i32, !dbg !1517
  %239 = sub nsw i32 %232, %238, !dbg !1518
  %240 = add nsw i32 %239, 1, !dbg !1519
  %241 = icmp ne i32 %226, %240, !dbg !1520
  br i1 %241, label %242, label %254, !dbg !1521

242:                                              ; preds = %225
  %243 = load ptr, ptr %5, align 8, !dbg !1522
  %244 = load ptr, ptr %243, align 8, !dbg !1524
  %245 = load i32, ptr %8, align 4, !dbg !1525
  %246 = call ptr @nn_node_child(ptr noundef %244, i32 noundef %245), !dbg !1526
  %247 = load ptr, ptr %246, align 8, !dbg !1527
  %248 = icmp ne ptr %247, null, !dbg !1527
  br i1 %248, label %249, label %250, !dbg !1528

249:                                              ; preds = %242
  br label %254, !dbg !1529

250:                                              ; preds = %242
  br label %251, !dbg !1530

251:                                              ; preds = %250
  %252 = load i32, ptr %8, align 4, !dbg !1531
  %253 = add nsw i32 %252, 1, !dbg !1531
  store i32 %253, ptr %8, align 4, !dbg !1531
  br label %225, !dbg !1532, !llvm.loop !1533

254:                                              ; preds = %249, %225
  %255 = load i32, ptr %8, align 4, !dbg !1535
  %256 = load ptr, ptr %5, align 8, !dbg !1536
  %257 = load ptr, ptr %256, align 8, !dbg !1537
  %258 = getelementptr inbounds %struct.nn_trie_node, ptr %257, i32 0, i32 4, !dbg !1538
  %259 = getelementptr inbounds %struct.anon.0, ptr %258, i32 0, i32 0, !dbg !1539
  %260 = load i8, ptr %259, align 4, !dbg !1539
  %261 = zext i8 %260 to i32, !dbg !1540
  %262 = add nsw i32 %255, %261, !dbg !1541
  store i32 %262, ptr %11, align 4, !dbg !1542
  %263 = load ptr, ptr %5, align 8, !dbg !1543
  %264 = load ptr, ptr %263, align 8, !dbg !1544
  %265 = call ptr @nn_node_child(ptr noundef %264, i32 noundef 0), !dbg !1545
  %266 = load ptr, ptr %5, align 8, !dbg !1546
  %267 = load ptr, ptr %266, align 8, !dbg !1547
  %268 = load i32, ptr %8, align 4, !dbg !1548
  %269 = call ptr @nn_node_child(ptr noundef %267, i32 noundef %268), !dbg !1549
  %270 = load ptr, ptr %5, align 8, !dbg !1550
  %271 = load ptr, ptr %270, align 8, !dbg !1551
  %272 = getelementptr inbounds %struct.nn_trie_node, ptr %271, i32 0, i32 4, !dbg !1552
  %273 = getelementptr inbounds %struct.anon.0, ptr %272, i32 0, i32 1, !dbg !1553
  %274 = load i8, ptr %273, align 1, !dbg !1553
  %275 = zext i8 %274 to i32, !dbg !1554
  %276 = load i32, ptr %11, align 4, !dbg !1555
  %277 = sub nsw i32 %275, %276, !dbg !1556
  %278 = add nsw i32 %277, 1, !dbg !1557
  %279 = sext i32 %278 to i64, !dbg !1558
  %280 = mul i64 %279, 8, !dbg !1559
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %265, ptr align 8 %269, i64 %280, i1 false), !dbg !1560
  %281 = load i32, ptr %11, align 4, !dbg !1561
  %282 = trunc i32 %281 to i8, !dbg !1561
  %283 = load ptr, ptr %5, align 8, !dbg !1562
  %284 = load ptr, ptr %283, align 8, !dbg !1563
  %285 = getelementptr inbounds %struct.nn_trie_node, ptr %284, i32 0, i32 4, !dbg !1564
  %286 = getelementptr inbounds %struct.anon.0, ptr %285, i32 0, i32 0, !dbg !1565
  store i8 %282, ptr %286, align 4, !dbg !1566
  %287 = load ptr, ptr %5, align 8, !dbg !1567
  %288 = load ptr, ptr %287, align 8, !dbg !1568
  %289 = getelementptr inbounds %struct.nn_trie_node, ptr %288, i32 0, i32 4, !dbg !1569
  %290 = getelementptr inbounds %struct.anon.0, ptr %289, i32 0, i32 2, !dbg !1570
  %291 = load i16, ptr %290, align 2, !dbg !1571
  %292 = add i16 %291, -1, !dbg !1571
  store i16 %292, ptr %290, align 2, !dbg !1571
  %293 = load ptr, ptr %5, align 8, !dbg !1572
  %294 = load ptr, ptr %293, align 8, !dbg !1573
  %295 = load ptr, ptr %5, align 8, !dbg !1574
  %296 = load ptr, ptr %295, align 8, !dbg !1575
  %297 = getelementptr inbounds %struct.nn_trie_node, ptr %296, i32 0, i32 4, !dbg !1576
  %298 = getelementptr inbounds %struct.anon.0, ptr %297, i32 0, i32 1, !dbg !1577
  %299 = load i8, ptr %298, align 1, !dbg !1577
  %300 = zext i8 %299 to i32, !dbg !1578
  %301 = load i32, ptr %11, align 4, !dbg !1579
  %302 = sub nsw i32 %300, %301, !dbg !1580
  %303 = add nsw i32 %302, 1, !dbg !1581
  %304 = sext i32 %303 to i64, !dbg !1582
  %305 = mul i64 %304, 8, !dbg !1583
  %306 = add i64 24, %305, !dbg !1584
  %307 = call ptr @nn_realloc(ptr noundef %294, i64 noundef %306), !dbg !1585
  %308 = load ptr, ptr %5, align 8, !dbg !1586
  store ptr %307, ptr %308, align 8, !dbg !1587
  %309 = load ptr, ptr %5, align 8, !dbg !1588
  %310 = load ptr, ptr %309, align 8, !dbg !1588
  %311 = icmp ne ptr %310, null, !dbg !1588
  br i1 %311, label %312, label %313, !dbg !1591

312:                                              ; preds = %254
  br label %314, !dbg !1591

313:                                              ; preds = %254
  call void @__assert_fail(ptr noundef @.str.16, ptr noundef @.str.1, i32 noundef 579, ptr noundef @__PRETTY_FUNCTION__.nn_node_unsubscribe) #6, !dbg !1588
  unreachable, !dbg !1588

314:                                              ; preds = %312
  store i32 1, ptr %4, align 4, !dbg !1592
  br label %541, !dbg !1592

315:                                              ; preds = %213
  %316 = load ptr, ptr %6, align 8, !dbg !1593
  %317 = load i8, ptr %316, align 1, !dbg !1595
  %318 = zext i8 %317 to i32, !dbg !1595
  %319 = load ptr, ptr %5, align 8, !dbg !1596
  %320 = load ptr, ptr %319, align 8, !dbg !1597
  %321 = getelementptr inbounds %struct.nn_trie_node, ptr %320, i32 0, i32 4, !dbg !1598
  %322 = getelementptr inbounds %struct.anon.0, ptr %321, i32 0, i32 1, !dbg !1599
  %323 = load i8, ptr %322, align 1, !dbg !1599
  %324 = zext i8 %323 to i32, !dbg !1600
  %325 = icmp eq i32 %318, %324, !dbg !1601
  br i1 %325, label %326, label %402, !dbg !1602

326:                                              ; preds = %315
  %327 = load ptr, ptr %5, align 8, !dbg !1603
  %328 = load ptr, ptr %327, align 8, !dbg !1606
  %329 = getelementptr inbounds %struct.nn_trie_node, ptr %328, i32 0, i32 4, !dbg !1607
  %330 = getelementptr inbounds %struct.anon.0, ptr %329, i32 0, i32 1, !dbg !1608
  %331 = load i8, ptr %330, align 1, !dbg !1608
  %332 = zext i8 %331 to i32, !dbg !1609
  %333 = load ptr, ptr %5, align 8, !dbg !1610
  %334 = load ptr, ptr %333, align 8, !dbg !1611
  %335 = getelementptr inbounds %struct.nn_trie_node, ptr %334, i32 0, i32 4, !dbg !1612
  %336 = getelementptr inbounds %struct.anon.0, ptr %335, i32 0, i32 0, !dbg !1613
  %337 = load i8, ptr %336, align 4, !dbg !1613
  %338 = zext i8 %337 to i32, !dbg !1614
  %339 = sub nsw i32 %332, %338, !dbg !1615
  store i32 %339, ptr %8, align 4, !dbg !1616
  br label %340, !dbg !1617

340:                                              ; preds = %352, %326
  %341 = load i32, ptr %8, align 4, !dbg !1618
  %342 = icmp ne i32 %341, 0, !dbg !1620
  br i1 %342, label %343, label %355, !dbg !1621

343:                                              ; preds = %340
  %344 = load ptr, ptr %5, align 8, !dbg !1622
  %345 = load ptr, ptr %344, align 8, !dbg !1624
  %346 = load i32, ptr %8, align 4, !dbg !1625
  %347 = call ptr @nn_node_child(ptr noundef %345, i32 noundef %346), !dbg !1626
  %348 = load ptr, ptr %347, align 8, !dbg !1627
  %349 = icmp ne ptr %348, null, !dbg !1627
  br i1 %349, label %350, label %351, !dbg !1628

350:                                              ; preds = %343
  br label %355, !dbg !1629

351:                                              ; preds = %343
  br label %352, !dbg !1630

352:                                              ; preds = %351
  %353 = load i32, ptr %8, align 4, !dbg !1631
  %354 = add nsw i32 %353, -1, !dbg !1631
  store i32 %354, ptr %8, align 4, !dbg !1631
  br label %340, !dbg !1632, !llvm.loop !1633

355:                                              ; preds = %350, %340
  %356 = load i32, ptr %8, align 4, !dbg !1635
  %357 = load ptr, ptr %5, align 8, !dbg !1636
  %358 = load ptr, ptr %357, align 8, !dbg !1637
  %359 = getelementptr inbounds %struct.nn_trie_node, ptr %358, i32 0, i32 4, !dbg !1638
  %360 = getelementptr inbounds %struct.anon.0, ptr %359, i32 0, i32 0, !dbg !1639
  %361 = load i8, ptr %360, align 4, !dbg !1639
  %362 = zext i8 %361 to i32, !dbg !1640
  %363 = add nsw i32 %356, %362, !dbg !1641
  %364 = trunc i32 %363 to i8, !dbg !1635
  %365 = load ptr, ptr %5, align 8, !dbg !1642
  %366 = load ptr, ptr %365, align 8, !dbg !1643
  %367 = getelementptr inbounds %struct.nn_trie_node, ptr %366, i32 0, i32 4, !dbg !1644
  %368 = getelementptr inbounds %struct.anon.0, ptr %367, i32 0, i32 1, !dbg !1645
  store i8 %364, ptr %368, align 1, !dbg !1646
  %369 = load ptr, ptr %5, align 8, !dbg !1647
  %370 = load ptr, ptr %369, align 8, !dbg !1648
  %371 = getelementptr inbounds %struct.nn_trie_node, ptr %370, i32 0, i32 4, !dbg !1649
  %372 = getelementptr inbounds %struct.anon.0, ptr %371, i32 0, i32 2, !dbg !1650
  %373 = load i16, ptr %372, align 2, !dbg !1651
  %374 = add i16 %373, -1, !dbg !1651
  store i16 %374, ptr %372, align 2, !dbg !1651
  %375 = load ptr, ptr %5, align 8, !dbg !1652
  %376 = load ptr, ptr %375, align 8, !dbg !1653
  %377 = load ptr, ptr %5, align 8, !dbg !1654
  %378 = load ptr, ptr %377, align 8, !dbg !1655
  %379 = getelementptr inbounds %struct.nn_trie_node, ptr %378, i32 0, i32 4, !dbg !1656
  %380 = getelementptr inbounds %struct.anon.0, ptr %379, i32 0, i32 1, !dbg !1657
  %381 = load i8, ptr %380, align 1, !dbg !1657
  %382 = zext i8 %381 to i32, !dbg !1658
  %383 = load ptr, ptr %5, align 8, !dbg !1659
  %384 = load ptr, ptr %383, align 8, !dbg !1660
  %385 = getelementptr inbounds %struct.nn_trie_node, ptr %384, i32 0, i32 4, !dbg !1661
  %386 = getelementptr inbounds %struct.anon.0, ptr %385, i32 0, i32 0, !dbg !1662
  %387 = load i8, ptr %386, align 4, !dbg !1662
  %388 = zext i8 %387 to i32, !dbg !1663
  %389 = sub nsw i32 %382, %388, !dbg !1664
  %390 = add nsw i32 %389, 1, !dbg !1665
  %391 = sext i32 %390 to i64, !dbg !1666
  %392 = mul i64 %391, 8, !dbg !1667
  %393 = add i64 24, %392, !dbg !1668
  %394 = call ptr @nn_realloc(ptr noundef %376, i64 noundef %393), !dbg !1669
  %395 = load ptr, ptr %5, align 8, !dbg !1670
  store ptr %394, ptr %395, align 8, !dbg !1671
  %396 = load ptr, ptr %5, align 8, !dbg !1672
  %397 = load ptr, ptr %396, align 8, !dbg !1672
  %398 = icmp ne ptr %397, null, !dbg !1672
  br i1 %398, label %399, label %400, !dbg !1675

399:                                              ; preds = %355
  br label %401, !dbg !1675

400:                                              ; preds = %355
  call void @__assert_fail(ptr noundef @.str.16, ptr noundef @.str.1, i32 noundef 594, ptr noundef @__PRETTY_FUNCTION__.nn_node_unsubscribe) #6, !dbg !1672
  unreachable, !dbg !1672

401:                                              ; preds = %399
  store i32 1, ptr %4, align 4, !dbg !1676
  br label %541, !dbg !1676

402:                                              ; preds = %315
  %403 = load ptr, ptr %5, align 8, !dbg !1677
  %404 = load ptr, ptr %403, align 8, !dbg !1678
  %405 = getelementptr inbounds %struct.nn_trie_node, ptr %404, i32 0, i32 4, !dbg !1679
  %406 = getelementptr inbounds %struct.anon.0, ptr %405, i32 0, i32 2, !dbg !1680
  %407 = load i16, ptr %406, align 2, !dbg !1681
  %408 = add i16 %407, -1, !dbg !1681
  store i16 %408, ptr %406, align 2, !dbg !1681
  store i32 1, ptr %4, align 4, !dbg !1682
  br label %541, !dbg !1682

409:                                              ; preds = %205
  %410 = call ptr @nn_alloc_(i64 noundef 88), !dbg !1683
  store ptr %410, ptr %13, align 8, !dbg !1685
  %411 = load ptr, ptr %13, align 8, !dbg !1686
  %412 = icmp ne ptr %411, null, !dbg !1686
  br i1 %412, label %413, label %414, !dbg !1689

413:                                              ; preds = %409
  br label %415, !dbg !1689

414:                                              ; preds = %409
  call void @__assert_fail(ptr noundef @.str.17, ptr noundef @.str.1, i32 noundef 607, ptr noundef @__PRETTY_FUNCTION__.nn_node_unsubscribe) #6, !dbg !1686
  unreachable, !dbg !1686

415:                                              ; preds = %413
  %416 = load ptr, ptr %13, align 8, !dbg !1690
  %417 = getelementptr inbounds %struct.nn_trie_node, ptr %416, i32 0, i32 0, !dbg !1691
  store i32 0, ptr %417, align 4, !dbg !1692
  %418 = load ptr, ptr %5, align 8, !dbg !1693
  %419 = load ptr, ptr %418, align 8, !dbg !1694
  %420 = getelementptr inbounds %struct.nn_trie_node, ptr %419, i32 0, i32 2, !dbg !1695
  %421 = load i8, ptr %420, align 1, !dbg !1695
  %422 = load ptr, ptr %13, align 8, !dbg !1696
  %423 = getelementptr inbounds %struct.nn_trie_node, ptr %422, i32 0, i32 2, !dbg !1697
  store i8 %421, ptr %423, align 1, !dbg !1698
  %424 = load ptr, ptr %13, align 8, !dbg !1699
  %425 = getelementptr inbounds %struct.nn_trie_node, ptr %424, i32 0, i32 3, !dbg !1700
  %426 = getelementptr inbounds [10 x i8], ptr %425, i64 0, i64 0, !dbg !1701
  %427 = load ptr, ptr %5, align 8, !dbg !1702
  %428 = load ptr, ptr %427, align 8, !dbg !1703
  %429 = getelementptr inbounds %struct.nn_trie_node, ptr %428, i32 0, i32 3, !dbg !1704
  %430 = getelementptr inbounds [10 x i8], ptr %429, i64 0, i64 0, !dbg !1701
  %431 = load ptr, ptr %13, align 8, !dbg !1705
  %432 = getelementptr inbounds %struct.nn_trie_node, ptr %431, i32 0, i32 2, !dbg !1706
  %433 = load i8, ptr %432, align 1, !dbg !1706
  %434 = zext i8 %433 to i64, !dbg !1705
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %426, ptr align 2 %430, i64 %434, i1 false), !dbg !1701
  %435 = load ptr, ptr %13, align 8, !dbg !1707
  %436 = getelementptr inbounds %struct.nn_trie_node, ptr %435, i32 0, i32 1, !dbg !1708
  store i8 8, ptr %436, align 4, !dbg !1709
  store i32 0, ptr %9, align 4, !dbg !1710
  store i32 0, ptr %8, align 4, !dbg !1711
  br label %437, !dbg !1713

437:                                              ; preds = %485, %415
  %438 = load i32, ptr %8, align 4, !dbg !1714
  %439 = load ptr, ptr %5, align 8, !dbg !1716
  %440 = load ptr, ptr %439, align 8, !dbg !1717
  %441 = getelementptr inbounds %struct.nn_trie_node, ptr %440, i32 0, i32 4, !dbg !1718
  %442 = getelementptr inbounds %struct.anon.0, ptr %441, i32 0, i32 1, !dbg !1719
  %443 = load i8, ptr %442, align 1, !dbg !1719
  %444 = zext i8 %443 to i32, !dbg !1720
  %445 = load ptr, ptr %5, align 8, !dbg !1721
  %446 = load ptr, ptr %445, align 8, !dbg !1722
  %447 = getelementptr inbounds %struct.nn_trie_node, ptr %446, i32 0, i32 4, !dbg !1723
  %448 = getelementptr inbounds %struct.anon.0, ptr %447, i32 0, i32 0, !dbg !1724
  %449 = load i8, ptr %448, align 4, !dbg !1724
  %450 = zext i8 %449 to i32, !dbg !1725
  %451 = sub nsw i32 %444, %450, !dbg !1726
  %452 = add nsw i32 %451, 1, !dbg !1727
  %453 = icmp ne i32 %438, %452, !dbg !1728
  br i1 %453, label %454, label %488, !dbg !1729

454:                                              ; preds = %437
  %455 = load ptr, ptr %5, align 8, !dbg !1730
  %456 = load ptr, ptr %455, align 8, !dbg !1732
  %457 = load i32, ptr %8, align 4, !dbg !1733
  %458 = call ptr @nn_node_child(ptr noundef %456, i32 noundef %457), !dbg !1734
  %459 = load ptr, ptr %458, align 8, !dbg !1735
  store ptr %459, ptr %14, align 8, !dbg !1736
  %460 = load ptr, ptr %14, align 8, !dbg !1737
  %461 = icmp ne ptr %460, null, !dbg !1737
  br i1 %461, label %462, label %484, !dbg !1739

462:                                              ; preds = %454
  %463 = load i32, ptr %8, align 4, !dbg !1740
  %464 = load ptr, ptr %5, align 8, !dbg !1742
  %465 = load ptr, ptr %464, align 8, !dbg !1743
  %466 = getelementptr inbounds %struct.nn_trie_node, ptr %465, i32 0, i32 4, !dbg !1744
  %467 = getelementptr inbounds %struct.anon.0, ptr %466, i32 0, i32 0, !dbg !1745
  %468 = load i8, ptr %467, align 4, !dbg !1745
  %469 = zext i8 %468 to i32, !dbg !1746
  %470 = add nsw i32 %463, %469, !dbg !1747
  %471 = trunc i32 %470 to i8, !dbg !1740
  %472 = load ptr, ptr %13, align 8, !dbg !1748
  %473 = getelementptr inbounds %struct.nn_trie_node, ptr %472, i32 0, i32 4, !dbg !1749
  %474 = getelementptr inbounds %struct.anon, ptr %473, i32 0, i32 0, !dbg !1750
  %475 = load i32, ptr %9, align 4, !dbg !1751
  %476 = sext i32 %475 to i64, !dbg !1748
  %477 = getelementptr inbounds [8 x i8], ptr %474, i64 0, i64 %476, !dbg !1748
  store i8 %471, ptr %477, align 1, !dbg !1752
  %478 = load ptr, ptr %14, align 8, !dbg !1753
  %479 = load ptr, ptr %13, align 8, !dbg !1754
  %480 = load i32, ptr %9, align 4, !dbg !1755
  %481 = call ptr @nn_node_child(ptr noundef %479, i32 noundef %480), !dbg !1756
  store ptr %478, ptr %481, align 8, !dbg !1757
  %482 = load i32, ptr %9, align 4, !dbg !1758
  %483 = add nsw i32 %482, 1, !dbg !1758
  store i32 %483, ptr %9, align 4, !dbg !1758
  br label %484, !dbg !1759

484:                                              ; preds = %462, %454
  br label %485, !dbg !1760

485:                                              ; preds = %484
  %486 = load i32, ptr %8, align 4, !dbg !1761
  %487 = add nsw i32 %486, 1, !dbg !1761
  store i32 %487, ptr %8, align 4, !dbg !1761
  br label %437, !dbg !1762, !llvm.loop !1763

488:                                              ; preds = %437
  %489 = load i32, ptr %9, align 4, !dbg !1765
  %490 = icmp eq i32 %489, 8, !dbg !1765
  br i1 %490, label %491, label %492, !dbg !1768

491:                                              ; preds = %488
  br label %493, !dbg !1768

492:                                              ; preds = %488
  call void @__assert_fail(ptr noundef @.str.18, ptr noundef @.str.1, i32 noundef 622, ptr noundef @__PRETTY_FUNCTION__.nn_node_unsubscribe) #6, !dbg !1765
  unreachable, !dbg !1765

493:                                              ; preds = %491
  %494 = load ptr, ptr %5, align 8, !dbg !1769
  %495 = load ptr, ptr %494, align 8, !dbg !1770
  call void @nn_free(ptr noundef %495), !dbg !1771
  %496 = load ptr, ptr %13, align 8, !dbg !1772
  %497 = load ptr, ptr %5, align 8, !dbg !1773
  store ptr %496, ptr %497, align 8, !dbg !1774
  store i32 1, ptr %4, align 4, !dbg !1775
  br label %541, !dbg !1775

498:                                              ; preds = %49, %17
  call void @llvm.dbg.label(metadata !1776), !dbg !1777
  %499 = load ptr, ptr %5, align 8, !dbg !1778
  %500 = load ptr, ptr %499, align 8, !dbg !1778
  %501 = icmp ne ptr %500, null, !dbg !1778
  br i1 %501, label %502, label %508, !dbg !1778

502:                                              ; preds = %498
  %503 = load ptr, ptr %5, align 8, !dbg !1778
  %504 = load ptr, ptr %503, align 8, !dbg !1778
  %505 = call i32 @nn_node_has_subscribers(ptr noundef %504), !dbg !1778
  %506 = icmp ne i32 %505, 0, !dbg !1778
  %507 = xor i1 %506, true, !dbg !1778
  br label %508, !dbg !1778

508:                                              ; preds = %502, %498
  %509 = phi i1 [ true, %498 ], [ %507, %502 ]
  %510 = zext i1 %509 to i32, !dbg !1778
  %511 = sext i32 %510 to i64, !dbg !1778
  %512 = icmp ne i64 %511, 0, !dbg !1778
  br i1 %512, label %513, label %514, !dbg !1780

513:                                              ; preds = %508
  store i32 -22, ptr %4, align 4, !dbg !1781
  br label %541, !dbg !1781

514:                                              ; preds = %508
  %515 = load ptr, ptr %5, align 8, !dbg !1782
  %516 = load ptr, ptr %515, align 8, !dbg !1783
  %517 = getelementptr inbounds %struct.nn_trie_node, ptr %516, i32 0, i32 0, !dbg !1784
  %518 = load i32, ptr %517, align 4, !dbg !1785
  %519 = add i32 %518, -1, !dbg !1785
  store i32 %519, ptr %517, align 4, !dbg !1785
  %520 = load ptr, ptr %5, align 8, !dbg !1786
  %521 = load ptr, ptr %520, align 8, !dbg !1788
  %522 = getelementptr inbounds %struct.nn_trie_node, ptr %521, i32 0, i32 0, !dbg !1789
  %523 = load i32, ptr %522, align 4, !dbg !1789
  %524 = icmp ne i32 %523, 0, !dbg !1790
  br i1 %524, label %540, label %525, !dbg !1791

525:                                              ; preds = %514
  %526 = load ptr, ptr %5, align 8, !dbg !1792
  %527 = load ptr, ptr %526, align 8, !dbg !1795
  %528 = getelementptr inbounds %struct.nn_trie_node, ptr %527, i32 0, i32 1, !dbg !1796
  %529 = load i8, ptr %528, align 4, !dbg !1796
  %530 = icmp ne i8 %529, 0, !dbg !1797
  br i1 %530, label %535, label %531, !dbg !1798

531:                                              ; preds = %525
  %532 = load ptr, ptr %5, align 8, !dbg !1799
  %533 = load ptr, ptr %532, align 8, !dbg !1801
  call void @nn_free(ptr noundef %533), !dbg !1802
  %534 = load ptr, ptr %5, align 8, !dbg !1803
  store ptr null, ptr %534, align 8, !dbg !1804
  store i32 1, ptr %4, align 4, !dbg !1805
  br label %541, !dbg !1805

535:                                              ; preds = %525
  %536 = load ptr, ptr %5, align 8, !dbg !1806
  %537 = load ptr, ptr %536, align 8, !dbg !1807
  %538 = call ptr @nn_node_compact(ptr noundef %537), !dbg !1808
  %539 = load ptr, ptr %5, align 8, !dbg !1809
  store ptr %538, ptr %539, align 8, !dbg !1810
  store i32 1, ptr %4, align 4, !dbg !1811
  br label %541, !dbg !1811

540:                                              ; preds = %514
  store i32 0, ptr %4, align 4, !dbg !1812
  br label %541, !dbg !1812

541:                                              ; preds = %540, %535, %531, %513, %493, %402, %401, %314, %200, %196, %72, %67, %58, %30
  %542 = load i32, ptr %4, align 4, !dbg !1813
  ret i32 %542, !dbg !1813
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_node_indent(i32 noundef %0) #0 !dbg !1814 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1817, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1819, metadata !DIExpression()), !dbg !1820
  store i32 0, ptr %3, align 4, !dbg !1821
  br label %4, !dbg !1823

4:                                                ; preds = %10, %1
  %5 = load i32, ptr %3, align 4, !dbg !1824
  %6 = load i32, ptr %2, align 4, !dbg !1826
  %7 = mul nsw i32 %6, 4, !dbg !1827
  %8 = icmp ne i32 %5, %7, !dbg !1828
  br i1 %8, label %9, label %13, !dbg !1829

9:                                                ; preds = %4
  call void @nn_node_putchar(i8 noundef zeroext 32), !dbg !1830
  br label %10, !dbg !1830

10:                                               ; preds = %9
  %11 = load i32, ptr %3, align 4, !dbg !1831
  %12 = add nsw i32 %11, 1, !dbg !1831
  store i32 %12, ptr %3, align 4, !dbg !1831
  br label %4, !dbg !1832, !llvm.loop !1833

13:                                               ; preds = %4
  ret void, !dbg !1835
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_node_putchar(i8 noundef zeroext %0) #0 !dbg !1836 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1839, metadata !DIExpression()), !dbg !1840
  %3 = load i8, ptr %2, align 1, !dbg !1841
  %4 = zext i8 %3 to i32, !dbg !1841
  %5 = icmp slt i32 %4, 32, !dbg !1843
  br i1 %5, label %10, label %6, !dbg !1844

6:                                                ; preds = %1
  %7 = load i8, ptr %2, align 1, !dbg !1845
  %8 = zext i8 %7 to i32, !dbg !1845
  %9 = icmp sgt i32 %8, 127, !dbg !1846
  br i1 %9, label %10, label %12, !dbg !1847

10:                                               ; preds = %6, %1
  %11 = call i32 @putchar(i32 noundef 63), !dbg !1848
  br label %16, !dbg !1848

12:                                               ; preds = %6
  %13 = load i8, ptr %2, align 1, !dbg !1849
  %14 = zext i8 %13 to i32, !dbg !1849
  %15 = call i32 @putchar(i32 noundef %14), !dbg !1850
  br label %16

16:                                               ; preds = %12, %10
  ret void, !dbg !1851
}

declare i32 @putchar(i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!90}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 292, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/protocols/pubsub/trie.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bd1ee8e75a812b71c9ce06eb68052b5c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 292, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 292, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 520, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 65)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 406, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 7)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !3, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 21)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 13)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 15)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 12)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !32, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 9)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 3)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 18)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !27, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !27, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 14)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 527, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 23)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 527, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 584, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 73)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 541, type: !3, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 607, type: !49, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 622, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 24)
!90 = distinct !DICompileUnit(language: DW_LANG_C11, file: !91, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !92, globals: !136, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "src/protocols/pubsub/trie.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bd1ee8e75a812b71c9ce06eb68052b5c")
!92 = !{!93, !131, !134, !4, !135}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_trie_node", file: !95, line: 44, size: 192, elements: !96)
!95 = !DIFile(filename: "./src/protocols/pubsub/trie.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "c4b73a9cd9b6d491981dbd0f39fd735b")
!96 = !{!97, !103, !107, !108, !112}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !94, file: !95, line: 47, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !99, line: 26, baseType: !100)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !101, line: 42, baseType: !102)
!101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!102 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !95, line: 51, baseType: !104, size: 8, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !99, line: 24, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !101, line: 38, baseType: !106)
!106 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_len", scope: !94, file: !95, line: 57, baseType: !104, size: 8, offset: 40)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !94, file: !95, line: 58, baseType: !109, size: 80, offset: 48)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 80, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 10)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !94, file: !95, line: 83, baseType: !113, size: 64, offset: 128)
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !95, line: 63, size: 64, elements: !114)
!114 = !{!115, !122}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "sparse", scope: !113, file: !95, line: 70, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !113, file: !95, line: 68, size: 64, elements: !117)
!117 = !{!118}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !116, file: !95, line: 69, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 64, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 8)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "dense", scope: !113, file: !95, line: 82, baseType: !123, size: 32)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !113, file: !95, line: 77, size: 32, elements: !124)
!124 = !{!125, !126, !127}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !123, file: !95, line: 78, baseType: !104, size: 8)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !123, file: !95, line: 79, baseType: !104, size: 8, offset: 8)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "nbr", scope: !123, file: !95, line: 80, baseType: !128, size: 16, offset: 16)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !99, line: 25, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !101, line: 40, baseType: !130)
!130 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !132, line: 46, baseType: !133)
!132 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!133 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!134 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!136 = !{!0, !7, !12, !18, !23, !25, !30, !35, !40, !45, !47, !52, !57, !62, !64, !66, !71, !76, !81, !83, !85}
!137 = !{i32 7, !"Dwarf Version", i32 5}
!138 = !{i32 2, !"Debug Info Version", i32 3}
!139 = !{i32 1, !"wchar_size", i32 4}
!140 = !{i32 8, !"PIC Level", i32 2}
!141 = !{i32 7, !"PIE Level", i32 2}
!142 = !{i32 7, !"uwtable", i32 2}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 16.0.0"}
!145 = distinct !DISubprogram(name: "nn_trie_init", scope: !2, file: !2, line: 52, type: !146, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !152)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !148}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_trie", file: !95, line: 87, size: 64, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !149, file: !95, line: 90, baseType: !93, size: 64)
!152 = !{}
!153 = !DILocalVariable(name: "self", arg: 1, scope: !145, file: !2, line: 52, type: !148)
!154 = !DILocation(line: 52, column: 36, scope: !145)
!155 = !DILocation(line: 54, column: 5, scope: !145)
!156 = !DILocation(line: 54, column: 11, scope: !145)
!157 = !DILocation(line: 54, column: 16, scope: !145)
!158 = !DILocation(line: 55, column: 1, scope: !145)
!159 = distinct !DISubprogram(name: "nn_trie_term", scope: !2, file: !2, line: 57, type: !146, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !152)
!160 = !DILocalVariable(name: "self", arg: 1, scope: !159, file: !2, line: 57, type: !148)
!161 = !DILocation(line: 57, column: 36, scope: !159)
!162 = !DILocation(line: 59, column: 19, scope: !159)
!163 = !DILocation(line: 59, column: 25, scope: !159)
!164 = !DILocation(line: 59, column: 5, scope: !159)
!165 = !DILocation(line: 60, column: 1, scope: !159)
!166 = distinct !DISubprogram(name: "nn_node_term", scope: !2, file: !2, line: 137, type: !167, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !90, retainedNodes: !152)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !93}
!169 = !DILocalVariable(name: "self", arg: 1, scope: !166, file: !2, line: 137, type: !93)
!170 = !DILocation(line: 137, column: 41, scope: !166)
!171 = !DILocalVariable(name: "children", scope: !166, file: !2, line: 139, type: !134)
!172 = !DILocation(line: 139, column: 9, scope: !166)
!173 = !DILocalVariable(name: "i", scope: !166, file: !2, line: 140, type: !134)
!174 = !DILocation(line: 140, column: 9, scope: !166)
!175 = !DILocation(line: 143, column: 10, scope: !176)
!176 = distinct !DILexicalBlock(scope: !166, file: !2, line: 143, column: 9)
!177 = !DILocation(line: 143, column: 9, scope: !166)
!178 = !DILocation(line: 144, column: 9, scope: !176)
!179 = !DILocation(line: 147, column: 16, scope: !166)
!180 = !DILocation(line: 147, column: 22, scope: !166)
!181 = !DILocation(line: 147, column: 27, scope: !166)
!182 = !DILocation(line: 148, column: 9, scope: !166)
!183 = !DILocation(line: 148, column: 15, scope: !166)
!184 = !DILocation(line: 148, column: 23, scope: !166)
!185 = !DILocation(line: 148, column: 29, scope: !166)
!186 = !DILocation(line: 148, column: 37, scope: !166)
!187 = !DILocation(line: 148, column: 43, scope: !166)
!188 = !DILocation(line: 148, column: 49, scope: !166)
!189 = !DILocation(line: 148, column: 57, scope: !166)
!190 = !DILocation(line: 148, column: 41, scope: !166)
!191 = !DILocation(line: 148, column: 61, scope: !166)
!192 = !DILocation(line: 147, column: 14, scope: !166)
!193 = !DILocation(line: 149, column: 12, scope: !194)
!194 = distinct !DILexicalBlock(scope: !166, file: !2, line: 149, column: 5)
!195 = !DILocation(line: 149, column: 10, scope: !194)
!196 = !DILocation(line: 149, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !2, line: 149, column: 5)
!198 = !DILocation(line: 149, column: 22, scope: !197)
!199 = !DILocation(line: 149, column: 19, scope: !197)
!200 = !DILocation(line: 149, column: 5, scope: !194)
!201 = !DILocation(line: 150, column: 39, scope: !197)
!202 = !DILocation(line: 150, column: 45, scope: !197)
!203 = !DILocation(line: 150, column: 24, scope: !197)
!204 = !DILocation(line: 150, column: 23, scope: !197)
!205 = !DILocation(line: 150, column: 9, scope: !197)
!206 = !DILocation(line: 149, column: 32, scope: !197)
!207 = !DILocation(line: 149, column: 5, scope: !197)
!208 = distinct !{!208, !200, !209, !210}
!209 = !DILocation(line: 150, column: 47, scope: !194)
!210 = !{!"llvm.loop.mustprogress"}
!211 = !DILocation(line: 153, column: 14, scope: !166)
!212 = !DILocation(line: 153, column: 5, scope: !166)
!213 = !DILocation(line: 154, column: 1, scope: !166)
!214 = distinct !DISubprogram(name: "nn_trie_dump", scope: !2, file: !2, line: 62, type: !146, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !152)
!215 = !DILocalVariable(name: "self", arg: 1, scope: !214, file: !2, line: 62, type: !148)
!216 = !DILocation(line: 62, column: 36, scope: !214)
!217 = !DILocation(line: 64, column: 19, scope: !214)
!218 = !DILocation(line: 64, column: 25, scope: !214)
!219 = !DILocation(line: 64, column: 5, scope: !214)
!220 = !DILocation(line: 65, column: 1, scope: !214)
!221 = distinct !DISubprogram(name: "nn_node_dump", scope: !2, file: !2, line: 67, type: !222, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !90, retainedNodes: !152)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !93, !134}
!224 = !DILocalVariable(name: "self", arg: 1, scope: !221, file: !2, line: 67, type: !93)
!225 = !DILocation(line: 67, column: 41, scope: !221)
!226 = !DILocalVariable(name: "indent", arg: 2, scope: !221, file: !2, line: 67, type: !134)
!227 = !DILocation(line: 67, column: 51, scope: !221)
!228 = !DILocalVariable(name: "i", scope: !221, file: !2, line: 69, type: !134)
!229 = !DILocation(line: 69, column: 9, scope: !221)
!230 = !DILocalVariable(name: "children", scope: !221, file: !2, line: 70, type: !134)
!231 = !DILocation(line: 70, column: 9, scope: !221)
!232 = !DILocation(line: 72, column: 10, scope: !233)
!233 = distinct !DILexicalBlock(scope: !221, file: !2, line: 72, column: 9)
!234 = !DILocation(line: 72, column: 9, scope: !221)
!235 = !DILocation(line: 73, column: 25, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !2, line: 72, column: 16)
!237 = !DILocation(line: 73, column: 9, scope: !236)
!238 = !DILocation(line: 74, column: 9, scope: !236)
!239 = !DILocation(line: 75, column: 9, scope: !236)
!240 = !DILocation(line: 78, column: 21, scope: !221)
!241 = !DILocation(line: 78, column: 5, scope: !221)
!242 = !DILocation(line: 79, column: 5, scope: !221)
!243 = !DILocation(line: 80, column: 21, scope: !221)
!244 = !DILocation(line: 80, column: 5, scope: !221)
!245 = !DILocation(line: 81, column: 36, scope: !221)
!246 = !DILocation(line: 81, column: 42, scope: !221)
!247 = !DILocation(line: 81, column: 5, scope: !221)
!248 = !DILocation(line: 82, column: 21, scope: !221)
!249 = !DILocation(line: 82, column: 5, scope: !221)
!250 = !DILocation(line: 83, column: 38, scope: !221)
!251 = !DILocation(line: 83, column: 44, scope: !221)
!252 = !DILocation(line: 83, column: 32, scope: !221)
!253 = !DILocation(line: 83, column: 5, scope: !221)
!254 = !DILocation(line: 84, column: 21, scope: !221)
!255 = !DILocation(line: 84, column: 5, scope: !221)
!256 = !DILocation(line: 85, column: 9, scope: !257)
!257 = distinct !DILexicalBlock(scope: !221, file: !2, line: 85, column: 9)
!258 = !DILocation(line: 85, column: 15, scope: !257)
!259 = !DILocation(line: 85, column: 20, scope: !257)
!260 = !DILocation(line: 85, column: 9, scope: !221)
!261 = !DILocation(line: 86, column: 9, scope: !257)
!262 = !DILocation(line: 88, column: 9, scope: !257)
!263 = !DILocation(line: 89, column: 21, scope: !221)
!264 = !DILocation(line: 89, column: 5, scope: !221)
!265 = !DILocation(line: 90, column: 5, scope: !221)
!266 = !DILocation(line: 91, column: 12, scope: !267)
!267 = distinct !DILexicalBlock(scope: !221, file: !2, line: 91, column: 5)
!268 = !DILocation(line: 91, column: 10, scope: !267)
!269 = !DILocation(line: 91, column: 17, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !2, line: 91, column: 5)
!271 = !DILocation(line: 91, column: 22, scope: !270)
!272 = !DILocation(line: 91, column: 28, scope: !270)
!273 = !DILocation(line: 91, column: 19, scope: !270)
!274 = !DILocation(line: 91, column: 5, scope: !267)
!275 = !DILocation(line: 92, column: 26, scope: !270)
!276 = !DILocation(line: 92, column: 32, scope: !270)
!277 = !DILocation(line: 92, column: 40, scope: !270)
!278 = !DILocation(line: 92, column: 9, scope: !270)
!279 = !DILocation(line: 91, column: 40, scope: !270)
!280 = !DILocation(line: 91, column: 5, scope: !270)
!281 = distinct !{!281, !274, !282, !210}
!282 = !DILocation(line: 92, column: 42, scope: !267)
!283 = !DILocation(line: 93, column: 5, scope: !221)
!284 = !DILocation(line: 94, column: 9, scope: !285)
!285 = distinct !DILexicalBlock(scope: !221, file: !2, line: 94, column: 9)
!286 = !DILocation(line: 94, column: 15, scope: !285)
!287 = !DILocation(line: 94, column: 20, scope: !285)
!288 = !DILocation(line: 94, column: 9, scope: !221)
!289 = !DILocation(line: 95, column: 25, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !2, line: 94, column: 26)
!291 = !DILocation(line: 95, column: 9, scope: !290)
!292 = !DILocation(line: 96, column: 9, scope: !290)
!293 = !DILocation(line: 97, column: 16, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !2, line: 97, column: 9)
!295 = !DILocation(line: 97, column: 14, scope: !294)
!296 = !DILocation(line: 97, column: 21, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !2, line: 97, column: 9)
!298 = !DILocation(line: 97, column: 26, scope: !297)
!299 = !DILocation(line: 97, column: 32, scope: !297)
!300 = !DILocation(line: 97, column: 23, scope: !297)
!301 = !DILocation(line: 97, column: 9, scope: !294)
!302 = !DILocation(line: 98, column: 30, scope: !297)
!303 = !DILocation(line: 98, column: 36, scope: !297)
!304 = !DILocation(line: 98, column: 45, scope: !297)
!305 = !DILocation(line: 98, column: 55, scope: !297)
!306 = !DILocation(line: 98, column: 13, scope: !297)
!307 = !DILocation(line: 97, column: 38, scope: !297)
!308 = !DILocation(line: 97, column: 9, scope: !297)
!309 = distinct !{!309, !301, !310, !210}
!310 = !DILocation(line: 98, column: 57, scope: !294)
!311 = !DILocation(line: 99, column: 9, scope: !290)
!312 = !DILocation(line: 100, column: 20, scope: !290)
!313 = !DILocation(line: 100, column: 26, scope: !290)
!314 = !DILocation(line: 100, column: 18, scope: !290)
!315 = !DILocation(line: 101, column: 5, scope: !290)
!316 = !DILocation(line: 103, column: 25, scope: !317)
!317 = distinct !DILexicalBlock(scope: !285, file: !2, line: 102, column: 10)
!318 = !DILocation(line: 103, column: 9, scope: !317)
!319 = !DILocation(line: 104, column: 49, scope: !317)
!320 = !DILocation(line: 104, column: 55, scope: !317)
!321 = !DILocation(line: 104, column: 63, scope: !317)
!322 = !DILocation(line: 104, column: 42, scope: !317)
!323 = !DILocation(line: 105, column: 19, scope: !317)
!324 = !DILocation(line: 105, column: 25, scope: !317)
!325 = !DILocation(line: 105, column: 33, scope: !317)
!326 = !DILocation(line: 105, column: 13, scope: !317)
!327 = !DILocation(line: 104, column: 9, scope: !317)
!328 = !DILocation(line: 106, column: 25, scope: !317)
!329 = !DILocation(line: 106, column: 9, scope: !317)
!330 = !DILocation(line: 107, column: 49, scope: !317)
!331 = !DILocation(line: 107, column: 55, scope: !317)
!332 = !DILocation(line: 107, column: 63, scope: !317)
!333 = !DILocation(line: 107, column: 42, scope: !317)
!334 = !DILocation(line: 108, column: 19, scope: !317)
!335 = !DILocation(line: 108, column: 25, scope: !317)
!336 = !DILocation(line: 108, column: 33, scope: !317)
!337 = !DILocation(line: 108, column: 13, scope: !317)
!338 = !DILocation(line: 107, column: 9, scope: !317)
!339 = !DILocation(line: 109, column: 25, scope: !317)
!340 = !DILocation(line: 109, column: 9, scope: !317)
!341 = !DILocation(line: 110, column: 41, scope: !317)
!342 = !DILocation(line: 110, column: 47, scope: !317)
!343 = !DILocation(line: 110, column: 55, scope: !317)
!344 = !DILocation(line: 110, column: 35, scope: !317)
!345 = !DILocation(line: 110, column: 9, scope: !317)
!346 = !DILocation(line: 111, column: 20, scope: !317)
!347 = !DILocation(line: 111, column: 26, scope: !317)
!348 = !DILocation(line: 111, column: 34, scope: !317)
!349 = !DILocation(line: 111, column: 40, scope: !317)
!350 = !DILocation(line: 111, column: 46, scope: !317)
!351 = !DILocation(line: 111, column: 54, scope: !317)
!352 = !DILocation(line: 111, column: 38, scope: !317)
!353 = !DILocation(line: 111, column: 58, scope: !317)
!354 = !DILocation(line: 111, column: 18, scope: !317)
!355 = !DILocation(line: 114, column: 12, scope: !356)
!356 = distinct !DILexicalBlock(scope: !221, file: !2, line: 114, column: 5)
!357 = !DILocation(line: 114, column: 10, scope: !356)
!358 = !DILocation(line: 114, column: 17, scope: !359)
!359 = distinct !DILexicalBlock(scope: !356, file: !2, line: 114, column: 5)
!360 = !DILocation(line: 114, column: 22, scope: !359)
!361 = !DILocation(line: 114, column: 19, scope: !359)
!362 = !DILocation(line: 114, column: 5, scope: !356)
!363 = !DILocation(line: 115, column: 49, scope: !359)
!364 = !DILocation(line: 115, column: 54, scope: !359)
!365 = !DILocation(line: 115, column: 61, scope: !359)
!366 = !DILocation(line: 115, column: 23, scope: !359)
!367 = !DILocation(line: 115, column: 65, scope: !359)
!368 = !DILocation(line: 115, column: 72, scope: !359)
!369 = !DILocation(line: 115, column: 9, scope: !359)
!370 = !DILocation(line: 114, column: 32, scope: !359)
!371 = !DILocation(line: 114, column: 5, scope: !359)
!372 = distinct !{!372, !362, !373, !210}
!373 = !DILocation(line: 115, column: 75, scope: !356)
!374 = !DILocation(line: 117, column: 21, scope: !221)
!375 = !DILocation(line: 117, column: 5, scope: !221)
!376 = !DILocation(line: 118, column: 5, scope: !221)
!377 = !DILocation(line: 119, column: 1, scope: !221)
!378 = distinct !DISubprogram(name: "nn_trie_subscribe", scope: !2, file: !2, line: 236, type: !379, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !152)
!379 = !DISubroutineType(types: !380)
!380 = !{!134, !148, !381, !131}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!383 = !DILocalVariable(name: "self", arg: 1, scope: !378, file: !2, line: 236, type: !148)
!384 = !DILocation(line: 236, column: 40, scope: !378)
!385 = !DILocalVariable(name: "data", arg: 2, scope: !378, file: !2, line: 236, type: !381)
!386 = !DILocation(line: 236, column: 61, scope: !378)
!387 = !DILocalVariable(name: "size", arg: 3, scope: !378, file: !2, line: 236, type: !131)
!388 = !DILocation(line: 236, column: 74, scope: !378)
!389 = !DILocalVariable(name: "i", scope: !378, file: !2, line: 238, type: !134)
!390 = !DILocation(line: 238, column: 9, scope: !378)
!391 = !DILocalVariable(name: "node", scope: !378, file: !2, line: 239, type: !135)
!392 = !DILocation(line: 239, column: 27, scope: !378)
!393 = !DILocalVariable(name: "n", scope: !378, file: !2, line: 240, type: !135)
!394 = !DILocation(line: 240, column: 27, scope: !378)
!395 = !DILocalVariable(name: "ch", scope: !378, file: !2, line: 241, type: !93)
!396 = !DILocation(line: 241, column: 26, scope: !378)
!397 = !DILocalVariable(name: "old_node", scope: !378, file: !2, line: 242, type: !93)
!398 = !DILocation(line: 242, column: 26, scope: !378)
!399 = !DILocalVariable(name: "pos", scope: !378, file: !2, line: 243, type: !134)
!400 = !DILocation(line: 243, column: 9, scope: !378)
!401 = !DILocalVariable(name: "c", scope: !378, file: !2, line: 244, type: !104)
!402 = !DILocation(line: 244, column: 13, scope: !378)
!403 = !DILocalVariable(name: "c2", scope: !378, file: !2, line: 245, type: !104)
!404 = !DILocation(line: 245, column: 13, scope: !378)
!405 = !DILocalVariable(name: "new_min", scope: !378, file: !2, line: 246, type: !104)
!406 = !DILocation(line: 246, column: 13, scope: !378)
!407 = !DILocalVariable(name: "new_max", scope: !378, file: !2, line: 247, type: !104)
!408 = !DILocation(line: 247, column: 13, scope: !378)
!409 = !DILocalVariable(name: "old_children", scope: !378, file: !2, line: 248, type: !134)
!410 = !DILocation(line: 248, column: 9, scope: !378)
!411 = !DILocalVariable(name: "new_children", scope: !378, file: !2, line: 249, type: !134)
!412 = !DILocation(line: 249, column: 9, scope: !378)
!413 = !DILocalVariable(name: "inserted", scope: !378, file: !2, line: 250, type: !134)
!414 = !DILocation(line: 250, column: 9, scope: !378)
!415 = !DILocalVariable(name: "more_nodes", scope: !378, file: !2, line: 251, type: !134)
!416 = !DILocation(line: 251, column: 9, scope: !378)
!417 = !DILocation(line: 255, column: 13, scope: !378)
!418 = !DILocation(line: 255, column: 19, scope: !378)
!419 = !DILocation(line: 255, column: 10, scope: !378)
!420 = !DILocation(line: 256, column: 9, scope: !378)
!421 = !DILocation(line: 257, column: 5, scope: !378)
!422 = !DILocation(line: 260, column: 15, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !2, line: 260, column: 13)
!424 = distinct !DILexicalBlock(scope: !378, file: !2, line: 257, column: 15)
!425 = !DILocation(line: 260, column: 14, scope: !423)
!426 = !DILocation(line: 260, column: 13, scope: !424)
!427 = !DILocation(line: 261, column: 13, scope: !423)
!428 = !DILocation(line: 264, column: 38, scope: !424)
!429 = !DILocation(line: 264, column: 37, scope: !424)
!430 = !DILocation(line: 264, column: 44, scope: !424)
!431 = !DILocation(line: 264, column: 50, scope: !424)
!432 = !DILocation(line: 264, column: 15, scope: !424)
!433 = !DILocation(line: 264, column: 13, scope: !424)
!434 = !DILocation(line: 265, column: 17, scope: !424)
!435 = !DILocation(line: 265, column: 14, scope: !424)
!436 = !DILocation(line: 266, column: 17, scope: !424)
!437 = !DILocation(line: 266, column: 14, scope: !424)
!438 = !DILocation(line: 269, column: 13, scope: !439)
!439 = distinct !DILexicalBlock(scope: !424, file: !2, line: 269, column: 13)
!440 = !DILocation(line: 269, column: 21, scope: !439)
!441 = !DILocation(line: 269, column: 20, scope: !439)
!442 = !DILocation(line: 269, column: 28, scope: !439)
!443 = !DILocation(line: 269, column: 19, scope: !439)
!444 = !DILocation(line: 269, column: 17, scope: !439)
!445 = !DILocation(line: 269, column: 13, scope: !424)
!446 = !DILocation(line: 270, column: 13, scope: !439)
!447 = !DILocation(line: 274, column: 14, scope: !448)
!448 = distinct !DILexicalBlock(scope: !424, file: !2, line: 274, column: 13)
!449 = !DILocation(line: 274, column: 13, scope: !424)
!450 = !DILocation(line: 275, column: 13, scope: !448)
!451 = !DILocation(line: 278, column: 28, scope: !424)
!452 = !DILocation(line: 278, column: 27, scope: !424)
!453 = !DILocation(line: 278, column: 35, scope: !424)
!454 = !DILocation(line: 278, column: 34, scope: !424)
!455 = !DILocation(line: 278, column: 13, scope: !424)
!456 = !DILocation(line: 278, column: 11, scope: !424)
!457 = !DILocation(line: 279, column: 14, scope: !458)
!458 = distinct !DILexicalBlock(scope: !424, file: !2, line: 279, column: 13)
!459 = !DILocation(line: 279, column: 13, scope: !424)
!460 = !DILocation(line: 280, column: 13, scope: !458)
!461 = !DILocation(line: 281, column: 16, scope: !424)
!462 = !DILocation(line: 281, column: 14, scope: !424)
!463 = !DILocation(line: 282, column: 9, scope: !424)
!464 = !DILocation(line: 283, column: 9, scope: !424)
!465 = distinct !{!465, !421, !466}
!466 = !DILocation(line: 284, column: 5, scope: !378)
!467 = !DILabel(scope: !378, name: "step2", file: !2, line: 287)
!468 = !DILocation(line: 287, column: 1, scope: !378)
!469 = !DILocation(line: 289, column: 11, scope: !378)
!470 = !DILocation(line: 289, column: 10, scope: !378)
!471 = !DILocation(line: 289, column: 8, scope: !378)
!472 = !DILocation(line: 290, column: 13, scope: !378)
!473 = !DILocation(line: 290, column: 6, scope: !378)
!474 = !DILocation(line: 290, column: 11, scope: !378)
!475 = !DILocation(line: 292, column: 5, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !2, line: 292, column: 5)
!477 = distinct !DILexicalBlock(scope: !378, file: !2, line: 292, column: 5)
!478 = !DILocation(line: 292, column: 5, scope: !477)
!479 = !DILocation(line: 293, column: 7, scope: !378)
!480 = !DILocation(line: 293, column: 6, scope: !378)
!481 = !DILocation(line: 293, column: 14, scope: !378)
!482 = !DILocation(line: 293, column: 23, scope: !378)
!483 = !DILocation(line: 294, column: 27, scope: !378)
!484 = !DILocation(line: 294, column: 7, scope: !378)
!485 = !DILocation(line: 294, column: 6, scope: !378)
!486 = !DILocation(line: 294, column: 14, scope: !378)
!487 = !DILocation(line: 294, column: 25, scope: !378)
!488 = !DILocation(line: 295, column: 7, scope: !378)
!489 = !DILocation(line: 295, column: 6, scope: !378)
!490 = !DILocation(line: 295, column: 14, scope: !378)
!491 = !DILocation(line: 295, column: 19, scope: !378)
!492 = !DILocation(line: 296, column: 15, scope: !378)
!493 = !DILocation(line: 296, column: 14, scope: !378)
!494 = !DILocation(line: 296, column: 22, scope: !378)
!495 = !DILocation(line: 296, column: 5, scope: !378)
!496 = !DILocation(line: 296, column: 30, scope: !378)
!497 = !DILocation(line: 296, column: 34, scope: !378)
!498 = !DILocation(line: 296, column: 42, scope: !378)
!499 = !DILocation(line: 297, column: 38, scope: !378)
!500 = !DILocation(line: 297, column: 42, scope: !378)
!501 = !DILocation(line: 297, column: 50, scope: !378)
!502 = !DILocation(line: 297, column: 7, scope: !378)
!503 = !DILocation(line: 297, column: 6, scope: !378)
!504 = !DILocation(line: 297, column: 14, scope: !378)
!505 = !DILocation(line: 297, column: 23, scope: !378)
!506 = !DILocation(line: 297, column: 5, scope: !378)
!507 = !DILocation(line: 297, column: 36, scope: !378)
!508 = !DILocation(line: 298, column: 24, scope: !378)
!509 = !DILocation(line: 298, column: 28, scope: !378)
!510 = !DILocation(line: 298, column: 5, scope: !378)
!511 = !DILocation(line: 298, column: 9, scope: !378)
!512 = !DILocation(line: 298, column: 20, scope: !378)
!513 = !DILocation(line: 299, column: 14, scope: !378)
!514 = !DILocation(line: 299, column: 18, scope: !378)
!515 = !DILocation(line: 299, column: 5, scope: !378)
!516 = !DILocation(line: 299, column: 26, scope: !378)
!517 = !DILocation(line: 299, column: 30, scope: !378)
!518 = !DILocation(line: 299, column: 39, scope: !378)
!519 = !DILocation(line: 299, column: 37, scope: !378)
!520 = !DILocation(line: 299, column: 43, scope: !378)
!521 = !DILocation(line: 299, column: 48, scope: !378)
!522 = !DILocation(line: 299, column: 52, scope: !378)
!523 = !DILocation(line: 300, column: 27, scope: !378)
!524 = !DILocation(line: 300, column: 10, scope: !378)
!525 = !DILocation(line: 300, column: 8, scope: !378)
!526 = !DILocation(line: 301, column: 33, scope: !378)
!527 = !DILocation(line: 301, column: 22, scope: !378)
!528 = !DILocation(line: 301, column: 21, scope: !378)
!529 = !DILocation(line: 301, column: 6, scope: !378)
!530 = !DILocation(line: 301, column: 31, scope: !378)
!531 = !DILocation(line: 302, column: 13, scope: !378)
!532 = !DILocation(line: 302, column: 12, scope: !378)
!533 = !DILocation(line: 302, column: 20, scope: !378)
!534 = !DILocation(line: 302, column: 11, scope: !378)
!535 = !DILocation(line: 302, column: 9, scope: !378)
!536 = !DILocation(line: 302, column: 5, scope: !378)
!537 = !DILabel(scope: !378, name: "step3", file: !2, line: 305)
!538 = !DILocation(line: 305, column: 1, scope: !378)
!539 = !DILocation(line: 309, column: 10, scope: !540)
!540 = distinct !DILexicalBlock(scope: !378, file: !2, line: 309, column: 9)
!541 = !DILocation(line: 309, column: 9, scope: !378)
!542 = !DILocation(line: 310, column: 9, scope: !540)
!543 = !DILocation(line: 313, column: 11, scope: !544)
!544 = distinct !DILexicalBlock(scope: !378, file: !2, line: 313, column: 9)
!545 = !DILocation(line: 313, column: 10, scope: !544)
!546 = !DILocation(line: 313, column: 18, scope: !544)
!547 = !DILocation(line: 313, column: 9, scope: !544)
!548 = !DILocation(line: 313, column: 23, scope: !544)
!549 = !DILocation(line: 313, column: 9, scope: !378)
!550 = !DILocation(line: 314, column: 30, scope: !551)
!551 = distinct !DILexicalBlock(scope: !544, file: !2, line: 313, column: 45)
!552 = !DILocation(line: 314, column: 29, scope: !551)
!553 = !DILocation(line: 315, column: 16, scope: !551)
!554 = !DILocation(line: 315, column: 15, scope: !551)
!555 = !DILocation(line: 315, column: 23, scope: !551)
!556 = !DILocation(line: 315, column: 14, scope: !551)
!557 = !DILocation(line: 315, column: 28, scope: !551)
!558 = !DILocation(line: 315, column: 13, scope: !551)
!559 = !DILocation(line: 315, column: 33, scope: !551)
!560 = !DILocation(line: 314, column: 65, scope: !551)
!561 = !DILocation(line: 314, column: 17, scope: !551)
!562 = !DILocation(line: 314, column: 10, scope: !551)
!563 = !DILocation(line: 314, column: 15, scope: !551)
!564 = !DILocation(line: 316, column: 9, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !2, line: 316, column: 9)
!566 = distinct !DILexicalBlock(scope: !551, file: !2, line: 316, column: 9)
!567 = !DILocation(line: 316, column: 9, scope: !566)
!568 = !DILocation(line: 317, column: 55, scope: !551)
!569 = !DILocation(line: 317, column: 54, scope: !551)
!570 = !DILocation(line: 317, column: 11, scope: !551)
!571 = !DILocation(line: 317, column: 10, scope: !551)
!572 = !DILocation(line: 317, column: 18, scope: !551)
!573 = !DILocation(line: 317, column: 27, scope: !551)
!574 = !DILocation(line: 317, column: 39, scope: !551)
!575 = !DILocation(line: 317, column: 38, scope: !551)
!576 = !DILocation(line: 317, column: 46, scope: !551)
!577 = !DILocation(line: 317, column: 9, scope: !551)
!578 = !DILocation(line: 317, column: 52, scope: !551)
!579 = !DILocation(line: 318, column: 13, scope: !551)
!580 = !DILocation(line: 318, column: 12, scope: !551)
!581 = !DILocation(line: 318, column: 20, scope: !551)
!582 = !DILocation(line: 318, column: 9, scope: !551)
!583 = !DILocation(line: 319, column: 32, scope: !551)
!584 = !DILocation(line: 319, column: 31, scope: !551)
!585 = !DILocation(line: 319, column: 40, scope: !551)
!586 = !DILocation(line: 319, column: 39, scope: !551)
!587 = !DILocation(line: 319, column: 47, scope: !551)
!588 = !DILocation(line: 319, column: 38, scope: !551)
!589 = !DILocation(line: 319, column: 52, scope: !551)
!590 = !DILocation(line: 319, column: 16, scope: !551)
!591 = !DILocation(line: 319, column: 14, scope: !551)
!592 = !DILocation(line: 320, column: 10, scope: !551)
!593 = !DILocation(line: 320, column: 15, scope: !551)
!594 = !DILocation(line: 321, column: 9, scope: !551)
!595 = !DILocation(line: 322, column: 9, scope: !551)
!596 = !DILocation(line: 323, column: 9, scope: !551)
!597 = !DILocation(line: 328, column: 11, scope: !598)
!598 = distinct !DILexicalBlock(scope: !378, file: !2, line: 328, column: 9)
!599 = !DILocation(line: 328, column: 10, scope: !598)
!600 = !DILocation(line: 328, column: 18, scope: !598)
!601 = !DILocation(line: 328, column: 9, scope: !598)
!602 = !DILocation(line: 328, column: 23, scope: !598)
!603 = !DILocation(line: 328, column: 9, scope: !378)
!604 = !DILocation(line: 329, column: 14, scope: !605)
!605 = distinct !DILexicalBlock(scope: !598, file: !2, line: 328, column: 46)
!606 = !DILocation(line: 329, column: 13, scope: !605)
!607 = !DILocation(line: 329, column: 11, scope: !605)
!608 = !DILocation(line: 330, column: 13, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !2, line: 330, column: 13)
!610 = !DILocation(line: 330, column: 19, scope: !609)
!611 = !DILocation(line: 330, column: 18, scope: !609)
!612 = !DILocation(line: 330, column: 26, scope: !609)
!613 = !DILocation(line: 330, column: 34, scope: !609)
!614 = !DILocation(line: 330, column: 17, scope: !609)
!615 = !DILocation(line: 330, column: 15, scope: !609)
!616 = !DILocation(line: 330, column: 38, scope: !609)
!617 = !DILocation(line: 330, column: 41, scope: !609)
!618 = !DILocation(line: 330, column: 47, scope: !609)
!619 = !DILocation(line: 330, column: 46, scope: !609)
!620 = !DILocation(line: 330, column: 54, scope: !609)
!621 = !DILocation(line: 330, column: 62, scope: !609)
!622 = !DILocation(line: 330, column: 45, scope: !609)
!623 = !DILocation(line: 330, column: 43, scope: !609)
!624 = !DILocation(line: 330, column: 13, scope: !605)
!625 = !DILocation(line: 331, column: 25, scope: !626)
!626 = distinct !DILexicalBlock(scope: !609, file: !2, line: 330, column: 67)
!627 = !DILocation(line: 331, column: 24, scope: !626)
!628 = !DILocation(line: 331, column: 32, scope: !626)
!629 = !DILocation(line: 331, column: 40, scope: !626)
!630 = !DILocation(line: 331, column: 23, scope: !626)
!631 = !DILocation(line: 331, column: 46, scope: !626)
!632 = !DILocation(line: 331, column: 44, scope: !626)
!633 = !DILocation(line: 331, column: 52, scope: !626)
!634 = !DILocation(line: 331, column: 51, scope: !626)
!635 = !DILocation(line: 331, column: 59, scope: !626)
!636 = !DILocation(line: 331, column: 67, scope: !626)
!637 = !DILocation(line: 331, column: 50, scope: !626)
!638 = !DILocation(line: 331, column: 73, scope: !626)
!639 = !DILocation(line: 331, column: 21, scope: !626)
!640 = !DILocation(line: 332, column: 25, scope: !626)
!641 = !DILocation(line: 332, column: 24, scope: !626)
!642 = !DILocation(line: 332, column: 32, scope: !626)
!643 = !DILocation(line: 332, column: 40, scope: !626)
!644 = !DILocation(line: 332, column: 23, scope: !626)
!645 = !DILocation(line: 332, column: 46, scope: !626)
!646 = !DILocation(line: 332, column: 44, scope: !626)
!647 = !DILocation(line: 332, column: 52, scope: !626)
!648 = !DILocation(line: 332, column: 51, scope: !626)
!649 = !DILocation(line: 332, column: 59, scope: !626)
!650 = !DILocation(line: 332, column: 67, scope: !626)
!651 = !DILocation(line: 332, column: 50, scope: !626)
!652 = !DILocation(line: 332, column: 73, scope: !626)
!653 = !DILocation(line: 332, column: 21, scope: !626)
!654 = !DILocation(line: 333, column: 34, scope: !626)
!655 = !DILocation(line: 333, column: 33, scope: !626)
!656 = !DILocation(line: 334, column: 18, scope: !626)
!657 = !DILocation(line: 334, column: 28, scope: !626)
!658 = !DILocation(line: 334, column: 26, scope: !626)
!659 = !DILocation(line: 334, column: 36, scope: !626)
!660 = !DILocation(line: 334, column: 17, scope: !626)
!661 = !DILocation(line: 334, column: 41, scope: !626)
!662 = !DILocation(line: 333, column: 69, scope: !626)
!663 = !DILocation(line: 333, column: 21, scope: !626)
!664 = !DILocation(line: 333, column: 14, scope: !626)
!665 = !DILocation(line: 333, column: 19, scope: !626)
!666 = !DILocation(line: 335, column: 13, scope: !667)
!667 = distinct !DILexicalBlock(scope: !668, file: !2, line: 335, column: 13)
!668 = distinct !DILexicalBlock(scope: !626, file: !2, line: 335, column: 13)
!669 = !DILocation(line: 335, column: 13, scope: !668)
!670 = !DILocation(line: 336, column: 30, scope: !626)
!671 = !DILocation(line: 336, column: 29, scope: !626)
!672 = !DILocation(line: 336, column: 37, scope: !626)
!673 = !DILocation(line: 336, column: 45, scope: !626)
!674 = !DILocation(line: 336, column: 28, scope: !626)
!675 = !DILocation(line: 336, column: 53, scope: !626)
!676 = !DILocation(line: 336, column: 52, scope: !626)
!677 = !DILocation(line: 336, column: 60, scope: !626)
!678 = !DILocation(line: 336, column: 68, scope: !626)
!679 = !DILocation(line: 336, column: 51, scope: !626)
!680 = !DILocation(line: 336, column: 49, scope: !626)
!681 = !DILocation(line: 336, column: 72, scope: !626)
!682 = !DILocation(line: 336, column: 26, scope: !626)
!683 = !DILocation(line: 337, column: 28, scope: !626)
!684 = !DILocation(line: 337, column: 38, scope: !626)
!685 = !DILocation(line: 337, column: 36, scope: !626)
!686 = !DILocation(line: 337, column: 46, scope: !626)
!687 = !DILocation(line: 337, column: 26, scope: !626)
!688 = !DILocation(line: 338, column: 19, scope: !689)
!689 = distinct !DILexicalBlock(scope: !626, file: !2, line: 338, column: 17)
!690 = !DILocation(line: 338, column: 18, scope: !689)
!691 = !DILocation(line: 338, column: 26, scope: !689)
!692 = !DILocation(line: 338, column: 34, scope: !689)
!693 = !DILocation(line: 338, column: 17, scope: !689)
!694 = !DILocation(line: 338, column: 41, scope: !689)
!695 = !DILocation(line: 338, column: 38, scope: !689)
!696 = !DILocation(line: 338, column: 17, scope: !626)
!697 = !DILocation(line: 339, column: 30, scope: !698)
!698 = distinct !DILexicalBlock(scope: !689, file: !2, line: 338, column: 50)
!699 = !DILocation(line: 339, column: 29, scope: !698)
!700 = !DILocation(line: 339, column: 37, scope: !698)
!701 = !DILocation(line: 339, column: 45, scope: !698)
!702 = !DILocation(line: 339, column: 28, scope: !698)
!703 = !DILocation(line: 339, column: 51, scope: !698)
!704 = !DILocation(line: 339, column: 49, scope: !698)
!705 = !DILocation(line: 339, column: 26, scope: !698)
!706 = !DILocation(line: 340, column: 42, scope: !698)
!707 = !DILocation(line: 340, column: 41, scope: !698)
!708 = !DILocation(line: 340, column: 48, scope: !698)
!709 = !DILocation(line: 340, column: 26, scope: !698)
!710 = !DILocation(line: 341, column: 37, scope: !698)
!711 = !DILocation(line: 341, column: 36, scope: !698)
!712 = !DILocation(line: 341, column: 21, scope: !698)
!713 = !DILocation(line: 342, column: 21, scope: !698)
!714 = !DILocation(line: 342, column: 34, scope: !698)
!715 = !DILocation(line: 340, column: 17, scope: !698)
!716 = !DILocation(line: 343, column: 41, scope: !698)
!717 = !DILocation(line: 343, column: 40, scope: !698)
!718 = !DILocation(line: 343, column: 25, scope: !698)
!719 = !DILocation(line: 344, column: 21, scope: !698)
!720 = !DILocation(line: 344, column: 30, scope: !698)
!721 = !DILocation(line: 343, column: 17, scope: !698)
!722 = !DILocation(line: 345, column: 13, scope: !698)
!723 = !DILocation(line: 347, column: 41, scope: !724)
!724 = distinct !DILexicalBlock(scope: !689, file: !2, line: 346, column: 18)
!725 = !DILocation(line: 347, column: 40, scope: !724)
!726 = !DILocation(line: 347, column: 47, scope: !724)
!727 = !DILocation(line: 347, column: 25, scope: !724)
!728 = !DILocation(line: 348, column: 22, scope: !724)
!729 = !DILocation(line: 348, column: 37, scope: !724)
!730 = !DILocation(line: 348, column: 35, scope: !724)
!731 = !DILocation(line: 348, column: 21, scope: !724)
!732 = !DILocation(line: 348, column: 51, scope: !724)
!733 = !DILocation(line: 347, column: 17, scope: !724)
!734 = !DILocation(line: 351, column: 36, scope: !626)
!735 = !DILocation(line: 351, column: 15, scope: !626)
!736 = !DILocation(line: 351, column: 14, scope: !626)
!737 = !DILocation(line: 351, column: 22, scope: !626)
!738 = !DILocation(line: 351, column: 30, scope: !626)
!739 = !DILocation(line: 351, column: 34, scope: !626)
!740 = !DILocation(line: 352, column: 36, scope: !626)
!741 = !DILocation(line: 352, column: 15, scope: !626)
!742 = !DILocation(line: 352, column: 14, scope: !626)
!743 = !DILocation(line: 352, column: 22, scope: !626)
!744 = !DILocation(line: 352, column: 30, scope: !626)
!745 = !DILocation(line: 352, column: 34, scope: !626)
!746 = !DILocation(line: 353, column: 17, scope: !626)
!747 = !DILocation(line: 353, column: 16, scope: !626)
!748 = !DILocation(line: 353, column: 24, scope: !626)
!749 = !DILocation(line: 353, column: 32, scope: !626)
!750 = !DILocation(line: 353, column: 13, scope: !626)
!751 = !DILocation(line: 354, column: 9, scope: !626)
!752 = !DILocation(line: 355, column: 32, scope: !605)
!753 = !DILocation(line: 355, column: 31, scope: !605)
!754 = !DILocation(line: 355, column: 38, scope: !605)
!755 = !DILocation(line: 355, column: 44, scope: !605)
!756 = !DILocation(line: 355, column: 43, scope: !605)
!757 = !DILocation(line: 355, column: 51, scope: !605)
!758 = !DILocation(line: 355, column: 59, scope: !605)
!759 = !DILocation(line: 355, column: 42, scope: !605)
!760 = !DILocation(line: 355, column: 40, scope: !605)
!761 = !DILocation(line: 355, column: 16, scope: !605)
!762 = !DILocation(line: 355, column: 14, scope: !605)
!763 = !DILocation(line: 356, column: 9, scope: !605)
!764 = !DILocation(line: 357, column: 9, scope: !605)
!765 = !DILocation(line: 358, column: 9, scope: !605)
!766 = !DILocation(line: 365, column: 17, scope: !767)
!767 = distinct !DILexicalBlock(scope: !378, file: !2, line: 363, column: 5)
!768 = !DILocation(line: 366, column: 17, scope: !767)
!769 = !DILocation(line: 367, column: 16, scope: !770)
!770 = distinct !DILexicalBlock(scope: !767, file: !2, line: 367, column: 9)
!771 = !DILocation(line: 367, column: 14, scope: !770)
!772 = !DILocation(line: 367, column: 21, scope: !773)
!773 = distinct !DILexicalBlock(scope: !770, file: !2, line: 367, column: 9)
!774 = !DILocation(line: 367, column: 28, scope: !773)
!775 = !DILocation(line: 367, column: 27, scope: !773)
!776 = !DILocation(line: 367, column: 35, scope: !773)
!777 = !DILocation(line: 367, column: 26, scope: !773)
!778 = !DILocation(line: 367, column: 23, scope: !773)
!779 = !DILocation(line: 367, column: 9, scope: !770)
!780 = !DILocation(line: 368, column: 20, scope: !781)
!781 = distinct !DILexicalBlock(scope: !773, file: !2, line: 367, column: 46)
!782 = !DILocation(line: 368, column: 19, scope: !781)
!783 = !DILocation(line: 368, column: 27, scope: !781)
!784 = !DILocation(line: 368, column: 36, scope: !781)
!785 = !DILocation(line: 368, column: 46, scope: !781)
!786 = !DILocation(line: 368, column: 18, scope: !781)
!787 = !DILocation(line: 368, column: 16, scope: !781)
!788 = !DILocation(line: 369, column: 23, scope: !781)
!789 = !DILocation(line: 369, column: 33, scope: !781)
!790 = !DILocation(line: 369, column: 31, scope: !781)
!791 = !DILocation(line: 369, column: 38, scope: !781)
!792 = !DILocation(line: 369, column: 48, scope: !781)
!793 = !DILocation(line: 369, column: 21, scope: !781)
!794 = !DILocation(line: 370, column: 23, scope: !781)
!795 = !DILocation(line: 370, column: 33, scope: !781)
!796 = !DILocation(line: 370, column: 31, scope: !781)
!797 = !DILocation(line: 370, column: 38, scope: !781)
!798 = !DILocation(line: 370, column: 48, scope: !781)
!799 = !DILocation(line: 370, column: 21, scope: !781)
!800 = !DILocation(line: 371, column: 9, scope: !781)
!801 = !DILocation(line: 367, column: 41, scope: !773)
!802 = !DILocation(line: 367, column: 9, scope: !773)
!803 = distinct !{!803, !779, !804, !210}
!804 = !DILocation(line: 371, column: 9, scope: !770)
!805 = !DILocation(line: 372, column: 19, scope: !767)
!806 = !DILocation(line: 372, column: 30, scope: !767)
!807 = !DILocation(line: 372, column: 29, scope: !767)
!808 = !DILocation(line: 372, column: 27, scope: !767)
!809 = !DILocation(line: 372, column: 37, scope: !767)
!810 = !DILocation(line: 372, column: 48, scope: !767)
!811 = !DILocation(line: 372, column: 47, scope: !767)
!812 = !DILocation(line: 372, column: 17, scope: !767)
!813 = !DILocation(line: 373, column: 19, scope: !767)
!814 = !DILocation(line: 373, column: 30, scope: !767)
!815 = !DILocation(line: 373, column: 29, scope: !767)
!816 = !DILocation(line: 373, column: 27, scope: !767)
!817 = !DILocation(line: 373, column: 37, scope: !767)
!818 = !DILocation(line: 373, column: 48, scope: !767)
!819 = !DILocation(line: 373, column: 47, scope: !767)
!820 = !DILocation(line: 373, column: 17, scope: !767)
!821 = !DILocation(line: 376, column: 21, scope: !767)
!822 = !DILocation(line: 376, column: 20, scope: !767)
!823 = !DILocation(line: 376, column: 18, scope: !767)
!824 = !DILocation(line: 377, column: 40, scope: !767)
!825 = !DILocation(line: 377, column: 10, scope: !767)
!826 = !DILocation(line: 377, column: 15, scope: !767)
!827 = !DILocation(line: 380, column: 9, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !2, line: 380, column: 9)
!829 = distinct !DILexicalBlock(scope: !767, file: !2, line: 380, column: 9)
!830 = !DILocation(line: 380, column: 9, scope: !829)
!831 = !DILocation(line: 383, column: 11, scope: !767)
!832 = !DILocation(line: 383, column: 10, scope: !767)
!833 = !DILocation(line: 383, column: 18, scope: !767)
!834 = !DILocation(line: 383, column: 27, scope: !767)
!835 = !DILocation(line: 384, column: 31, scope: !767)
!836 = !DILocation(line: 384, column: 41, scope: !767)
!837 = !DILocation(line: 384, column: 11, scope: !767)
!838 = !DILocation(line: 384, column: 10, scope: !767)
!839 = !DILocation(line: 384, column: 18, scope: !767)
!840 = !DILocation(line: 384, column: 29, scope: !767)
!841 = !DILocation(line: 385, column: 11, scope: !767)
!842 = !DILocation(line: 385, column: 10, scope: !767)
!843 = !DILocation(line: 385, column: 18, scope: !767)
!844 = !DILocation(line: 385, column: 23, scope: !767)
!845 = !DILocation(line: 386, column: 19, scope: !767)
!846 = !DILocation(line: 386, column: 18, scope: !767)
!847 = !DILocation(line: 386, column: 26, scope: !767)
!848 = !DILocation(line: 386, column: 9, scope: !767)
!849 = !DILocation(line: 386, column: 34, scope: !767)
!850 = !DILocation(line: 386, column: 44, scope: !767)
!851 = !DILocation(line: 386, column: 52, scope: !767)
!852 = !DILocation(line: 386, column: 62, scope: !767)
!853 = !DILocation(line: 387, column: 32, scope: !767)
!854 = !DILocation(line: 387, column: 11, scope: !767)
!855 = !DILocation(line: 387, column: 10, scope: !767)
!856 = !DILocation(line: 387, column: 18, scope: !767)
!857 = !DILocation(line: 387, column: 26, scope: !767)
!858 = !DILocation(line: 387, column: 30, scope: !767)
!859 = !DILocation(line: 388, column: 32, scope: !767)
!860 = !DILocation(line: 388, column: 11, scope: !767)
!861 = !DILocation(line: 388, column: 10, scope: !767)
!862 = !DILocation(line: 388, column: 18, scope: !767)
!863 = !DILocation(line: 388, column: 26, scope: !767)
!864 = !DILocation(line: 388, column: 30, scope: !767)
!865 = !DILocation(line: 389, column: 32, scope: !767)
!866 = !DILocation(line: 389, column: 42, scope: !767)
!867 = !DILocation(line: 389, column: 47, scope: !767)
!868 = !DILocation(line: 389, column: 11, scope: !767)
!869 = !DILocation(line: 389, column: 10, scope: !767)
!870 = !DILocation(line: 389, column: 18, scope: !767)
!871 = !DILocation(line: 389, column: 26, scope: !767)
!872 = !DILocation(line: 389, column: 30, scope: !767)
!873 = !DILocation(line: 390, column: 18, scope: !767)
!874 = !DILocation(line: 390, column: 17, scope: !767)
!875 = !DILocation(line: 390, column: 23, scope: !767)
!876 = !DILocation(line: 390, column: 32, scope: !767)
!877 = !DILocation(line: 390, column: 42, scope: !767)
!878 = !DILocation(line: 390, column: 40, scope: !767)
!879 = !DILocation(line: 390, column: 50, scope: !767)
!880 = !DILocation(line: 390, column: 31, scope: !767)
!881 = !DILocation(line: 390, column: 55, scope: !767)
!882 = !DILocation(line: 390, column: 9, scope: !767)
!883 = !DILocation(line: 392, column: 16, scope: !884)
!884 = distinct !DILexicalBlock(scope: !767, file: !2, line: 392, column: 9)
!885 = !DILocation(line: 392, column: 14, scope: !884)
!886 = !DILocation(line: 392, column: 21, scope: !887)
!887 = distinct !DILexicalBlock(scope: !884, file: !2, line: 392, column: 9)
!888 = !DILocation(line: 392, column: 26, scope: !887)
!889 = !DILocation(line: 392, column: 36, scope: !887)
!890 = !DILocation(line: 392, column: 23, scope: !887)
!891 = !DILocation(line: 392, column: 9, scope: !884)
!892 = !DILocation(line: 394, column: 33, scope: !887)
!893 = !DILocation(line: 394, column: 43, scope: !887)
!894 = !DILocation(line: 394, column: 18, scope: !887)
!895 = !DILocation(line: 394, column: 17, scope: !887)
!896 = !DILocation(line: 393, column: 30, scope: !887)
!897 = !DILocation(line: 393, column: 29, scope: !887)
!898 = !DILocation(line: 393, column: 36, scope: !887)
!899 = !DILocation(line: 393, column: 46, scope: !887)
!900 = !DILocation(line: 393, column: 55, scope: !887)
!901 = !DILocation(line: 393, column: 65, scope: !887)
!902 = !DILocation(line: 393, column: 70, scope: !887)
!903 = !DILocation(line: 393, column: 68, scope: !887)
!904 = !DILocation(line: 393, column: 14, scope: !887)
!905 = !DILocation(line: 393, column: 79, scope: !887)
!906 = !DILocation(line: 393, column: 13, scope: !887)
!907 = !DILocation(line: 392, column: 42, scope: !887)
!908 = !DILocation(line: 392, column: 9, scope: !887)
!909 = distinct !{!909, !891, !910, !210}
!910 = !DILocation(line: 394, column: 44, scope: !884)
!911 = !DILocation(line: 395, column: 31, scope: !767)
!912 = !DILocation(line: 395, column: 30, scope: !767)
!913 = !DILocation(line: 395, column: 38, scope: !767)
!914 = !DILocation(line: 395, column: 37, scope: !767)
!915 = !DILocation(line: 395, column: 16, scope: !767)
!916 = !DILocation(line: 395, column: 14, scope: !767)
!917 = !DILocation(line: 396, column: 9, scope: !767)
!918 = !DILocation(line: 397, column: 9, scope: !767)
!919 = !DILocation(line: 400, column: 18, scope: !767)
!920 = !DILocation(line: 400, column: 9, scope: !767)
!921 = !DILocation(line: 401, column: 5, scope: !767)
!922 = !DILabel(scope: !378, name: "step4", file: !2, line: 404)
!923 = !DILocation(line: 404, column: 1, scope: !378)
!924 = !DILocation(line: 406, column: 5, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !2, line: 406, column: 5)
!926 = distinct !DILexicalBlock(scope: !378, file: !2, line: 406, column: 5)
!927 = !DILocation(line: 406, column: 5, scope: !926)
!928 = !DILocation(line: 407, column: 5, scope: !378)
!929 = !DILocation(line: 410, column: 22, scope: !930)
!930 = distinct !DILexicalBlock(scope: !378, file: !2, line: 407, column: 15)
!931 = !DILocation(line: 410, column: 27, scope: !930)
!932 = !DILocation(line: 410, column: 20, scope: !930)
!933 = !DILocation(line: 411, column: 17, scope: !930)
!934 = !DILocation(line: 411, column: 10, scope: !930)
!935 = !DILocation(line: 411, column: 15, scope: !930)
!936 = !DILocation(line: 413, column: 9, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !2, line: 413, column: 9)
!938 = distinct !DILexicalBlock(scope: !930, file: !2, line: 413, column: 9)
!939 = !DILocation(line: 413, column: 9, scope: !938)
!940 = !DILocation(line: 416, column: 11, scope: !930)
!941 = !DILocation(line: 416, column: 10, scope: !930)
!942 = !DILocation(line: 416, column: 18, scope: !930)
!943 = !DILocation(line: 416, column: 27, scope: !930)
!944 = !DILocation(line: 417, column: 25, scope: !930)
!945 = !DILocation(line: 417, column: 11, scope: !930)
!946 = !DILocation(line: 417, column: 10, scope: !930)
!947 = !DILocation(line: 417, column: 18, scope: !930)
!948 = !DILocation(line: 417, column: 23, scope: !930)
!949 = !DILocation(line: 418, column: 31, scope: !930)
!950 = !DILocation(line: 418, column: 36, scope: !930)
!951 = !DILocation(line: 419, column: 13, scope: !930)
!952 = !DILocation(line: 418, column: 11, scope: !930)
!953 = !DILocation(line: 418, column: 10, scope: !930)
!954 = !DILocation(line: 418, column: 18, scope: !930)
!955 = !DILocation(line: 418, column: 29, scope: !930)
!956 = !DILocation(line: 420, column: 19, scope: !930)
!957 = !DILocation(line: 420, column: 18, scope: !930)
!958 = !DILocation(line: 420, column: 26, scope: !930)
!959 = !DILocation(line: 420, column: 9, scope: !930)
!960 = !DILocation(line: 420, column: 34, scope: !930)
!961 = !DILocation(line: 420, column: 42, scope: !930)
!962 = !DILocation(line: 420, column: 41, scope: !930)
!963 = !DILocation(line: 420, column: 49, scope: !930)
!964 = !DILocation(line: 420, column: 40, scope: !930)
!965 = !DILocation(line: 421, column: 19, scope: !930)
!966 = !DILocation(line: 421, column: 18, scope: !930)
!967 = !DILocation(line: 421, column: 26, scope: !930)
!968 = !DILocation(line: 421, column: 17, scope: !930)
!969 = !DILocation(line: 421, column: 14, scope: !930)
!970 = !DILocation(line: 422, column: 19, scope: !930)
!971 = !DILocation(line: 422, column: 18, scope: !930)
!972 = !DILocation(line: 422, column: 26, scope: !930)
!973 = !DILocation(line: 422, column: 17, scope: !930)
!974 = !DILocation(line: 422, column: 14, scope: !930)
!975 = !DILocation(line: 423, column: 14, scope: !976)
!976 = distinct !DILexicalBlock(scope: !930, file: !2, line: 423, column: 13)
!977 = !DILocation(line: 423, column: 13, scope: !930)
!978 = !DILocation(line: 424, column: 13, scope: !976)
!979 = !DILocation(line: 425, column: 43, scope: !930)
!980 = !DILocation(line: 425, column: 42, scope: !930)
!981 = !DILocation(line: 425, column: 11, scope: !930)
!982 = !DILocation(line: 425, column: 10, scope: !930)
!983 = !DILocation(line: 425, column: 18, scope: !930)
!984 = !DILocation(line: 425, column: 27, scope: !930)
!985 = !DILocation(line: 425, column: 9, scope: !930)
!986 = !DILocation(line: 425, column: 40, scope: !930)
!987 = !DILocation(line: 426, column: 32, scope: !930)
!988 = !DILocation(line: 426, column: 31, scope: !930)
!989 = !DILocation(line: 426, column: 16, scope: !930)
!990 = !DILocation(line: 426, column: 14, scope: !930)
!991 = !DILocation(line: 427, column: 9, scope: !930)
!992 = !DILocation(line: 428, column: 9, scope: !930)
!993 = distinct !{!993, !928, !994}
!994 = !DILocation(line: 429, column: 5, scope: !378)
!995 = !DILabel(scope: !378, name: "step5", file: !2, line: 432)
!996 = !DILocation(line: 432, column: 1, scope: !378)
!997 = !DILocation(line: 434, column: 9, scope: !378)
!998 = !DILocation(line: 434, column: 8, scope: !378)
!999 = !DILocation(line: 434, column: 16, scope: !378)
!1000 = !DILocation(line: 434, column: 5, scope: !378)
!1001 = !DILocation(line: 437, column: 14, scope: !378)
!1002 = !DILocation(line: 437, column: 13, scope: !378)
!1003 = !DILocation(line: 437, column: 21, scope: !378)
!1004 = !DILocation(line: 437, column: 30, scope: !378)
!1005 = !DILocation(line: 437, column: 12, scope: !378)
!1006 = !DILocation(line: 437, column: 5, scope: !378)
!1007 = distinct !DISubprogram(name: "nn_node_check_prefix", scope: !2, file: !2, line: 156, type: !1008, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !90, retainedNodes: !152)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!134, !93, !381, !131}
!1010 = !DILocalVariable(name: "self", arg: 1, scope: !1007, file: !2, line: 156, type: !93)
!1011 = !DILocation(line: 156, column: 48, scope: !1007)
!1012 = !DILocalVariable(name: "data", arg: 2, scope: !1007, file: !2, line: 157, type: !381)
!1013 = !DILocation(line: 157, column: 20, scope: !1007)
!1014 = !DILocalVariable(name: "size", arg: 3, scope: !1007, file: !2, line: 157, type: !131)
!1015 = !DILocation(line: 157, column: 33, scope: !1007)
!1016 = !DILocalVariable(name: "i", scope: !1007, file: !2, line: 161, type: !134)
!1017 = !DILocation(line: 161, column: 9, scope: !1007)
!1018 = !DILocation(line: 163, column: 12, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 163, column: 5)
!1020 = !DILocation(line: 163, column: 10, scope: !1019)
!1021 = !DILocation(line: 163, column: 17, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 163, column: 5)
!1023 = !DILocation(line: 163, column: 22, scope: !1022)
!1024 = !DILocation(line: 163, column: 28, scope: !1022)
!1025 = !DILocation(line: 163, column: 19, scope: !1022)
!1026 = !DILocation(line: 163, column: 5, scope: !1019)
!1027 = !DILocation(line: 164, column: 14, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 164, column: 13)
!1029 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 163, column: 45)
!1030 = !DILocation(line: 164, column: 19, scope: !1028)
!1031 = !DILocation(line: 164, column: 22, scope: !1028)
!1032 = !DILocation(line: 164, column: 28, scope: !1028)
!1033 = !DILocation(line: 164, column: 36, scope: !1028)
!1034 = !DILocation(line: 164, column: 43, scope: !1028)
!1035 = !DILocation(line: 164, column: 42, scope: !1028)
!1036 = !DILocation(line: 164, column: 39, scope: !1028)
!1037 = !DILocation(line: 164, column: 13, scope: !1029)
!1038 = !DILocation(line: 165, column: 20, scope: !1028)
!1039 = !DILocation(line: 165, column: 13, scope: !1028)
!1040 = !DILocation(line: 166, column: 9, scope: !1029)
!1041 = !DILocation(line: 167, column: 9, scope: !1029)
!1042 = !DILocation(line: 168, column: 5, scope: !1029)
!1043 = !DILocation(line: 163, column: 40, scope: !1022)
!1044 = !DILocation(line: 163, column: 5, scope: !1022)
!1045 = distinct !{!1045, !1026, !1046, !210}
!1046 = !DILocation(line: 168, column: 5, scope: !1019)
!1047 = !DILocation(line: 169, column: 12, scope: !1007)
!1048 = !DILocation(line: 169, column: 18, scope: !1007)
!1049 = !DILocation(line: 169, column: 5, scope: !1007)
!1050 = !DILocation(line: 170, column: 1, scope: !1007)
!1051 = distinct !DISubprogram(name: "nn_node_next", scope: !2, file: !2, line: 179, type: !1052, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !90, retainedNodes: !152)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!135, !93, !104}
!1054 = !DILocalVariable(name: "self", arg: 1, scope: !1051, file: !2, line: 179, type: !93)
!1055 = !DILocation(line: 179, column: 58, scope: !1051)
!1056 = !DILocalVariable(name: "c", arg: 2, scope: !1051, file: !2, line: 179, type: !104)
!1057 = !DILocation(line: 179, column: 72, scope: !1051)
!1058 = !DILocalVariable(name: "i", scope: !1051, file: !2, line: 184, type: !134)
!1059 = !DILocation(line: 184, column: 9, scope: !1051)
!1060 = !DILocation(line: 186, column: 9, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 186, column: 9)
!1062 = !DILocation(line: 186, column: 15, scope: !1061)
!1063 = !DILocation(line: 186, column: 20, scope: !1061)
!1064 = !DILocation(line: 186, column: 9, scope: !1051)
!1065 = !DILocation(line: 187, column: 9, scope: !1061)
!1066 = !DILocation(line: 190, column: 9, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 190, column: 9)
!1068 = !DILocation(line: 190, column: 15, scope: !1067)
!1069 = !DILocation(line: 190, column: 20, scope: !1067)
!1070 = !DILocation(line: 190, column: 9, scope: !1051)
!1071 = !DILocation(line: 191, column: 16, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 191, column: 9)
!1073 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 190, column: 26)
!1074 = !DILocation(line: 191, column: 14, scope: !1072)
!1075 = !DILocation(line: 191, column: 21, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 191, column: 9)
!1077 = !DILocation(line: 191, column: 26, scope: !1076)
!1078 = !DILocation(line: 191, column: 32, scope: !1076)
!1079 = !DILocation(line: 191, column: 23, scope: !1076)
!1080 = !DILocation(line: 191, column: 9, scope: !1072)
!1081 = !DILocation(line: 192, column: 17, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 192, column: 17)
!1083 = !DILocation(line: 192, column: 23, scope: !1082)
!1084 = !DILocation(line: 192, column: 32, scope: !1082)
!1085 = !DILocation(line: 192, column: 42, scope: !1082)
!1086 = !DILocation(line: 192, column: 48, scope: !1082)
!1087 = !DILocation(line: 192, column: 45, scope: !1082)
!1088 = !DILocation(line: 192, column: 17, scope: !1076)
!1089 = !DILocation(line: 193, column: 39, scope: !1082)
!1090 = !DILocation(line: 193, column: 45, scope: !1082)
!1091 = !DILocation(line: 193, column: 24, scope: !1082)
!1092 = !DILocation(line: 193, column: 17, scope: !1082)
!1093 = !DILocation(line: 191, column: 38, scope: !1076)
!1094 = !DILocation(line: 191, column: 9, scope: !1076)
!1095 = distinct !{!1095, !1080, !1096, !210}
!1096 = !DILocation(line: 193, column: 46, scope: !1072)
!1097 = !DILocation(line: 194, column: 9, scope: !1073)
!1098 = !DILocation(line: 198, column: 9, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 198, column: 9)
!1100 = !DILocation(line: 198, column: 13, scope: !1099)
!1101 = !DILocation(line: 198, column: 19, scope: !1099)
!1102 = !DILocation(line: 198, column: 27, scope: !1099)
!1103 = !DILocation(line: 198, column: 11, scope: !1099)
!1104 = !DILocation(line: 198, column: 31, scope: !1099)
!1105 = !DILocation(line: 198, column: 34, scope: !1099)
!1106 = !DILocation(line: 198, column: 38, scope: !1099)
!1107 = !DILocation(line: 198, column: 44, scope: !1099)
!1108 = !DILocation(line: 198, column: 52, scope: !1099)
!1109 = !DILocation(line: 198, column: 36, scope: !1099)
!1110 = !DILocation(line: 198, column: 9, scope: !1051)
!1111 = !DILocation(line: 199, column: 9, scope: !1099)
!1112 = !DILocation(line: 200, column: 27, scope: !1051)
!1113 = !DILocation(line: 200, column: 33, scope: !1051)
!1114 = !DILocation(line: 200, column: 37, scope: !1051)
!1115 = !DILocation(line: 200, column: 43, scope: !1051)
!1116 = !DILocation(line: 200, column: 51, scope: !1051)
!1117 = !DILocation(line: 200, column: 35, scope: !1051)
!1118 = !DILocation(line: 200, column: 12, scope: !1051)
!1119 = !DILocation(line: 200, column: 5, scope: !1051)
!1120 = !DILocation(line: 201, column: 1, scope: !1051)
!1121 = distinct !DISubprogram(name: "nn_node_compact", scope: !2, file: !2, line: 203, type: !1122, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !90, retainedNodes: !152)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!93, !93}
!1124 = !DILocalVariable(name: "self", arg: 1, scope: !1121, file: !2, line: 203, type: !93)
!1125 = !DILocation(line: 203, column: 60, scope: !1121)
!1126 = !DILocalVariable(name: "ch", scope: !1121, file: !2, line: 208, type: !93)
!1127 = !DILocation(line: 208, column: 26, scope: !1121)
!1128 = !DILocation(line: 211, column: 34, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 211, column: 9)
!1130 = !DILocation(line: 211, column: 9, scope: !1129)
!1131 = !DILocation(line: 211, column: 9, scope: !1121)
!1132 = !DILocation(line: 212, column: 16, scope: !1129)
!1133 = !DILocation(line: 212, column: 9, scope: !1129)
!1134 = !DILocation(line: 215, column: 9, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 215, column: 9)
!1136 = !DILocation(line: 215, column: 15, scope: !1135)
!1137 = !DILocation(line: 215, column: 20, scope: !1135)
!1138 = !DILocation(line: 215, column: 9, scope: !1121)
!1139 = !DILocation(line: 216, column: 16, scope: !1135)
!1140 = !DILocation(line: 216, column: 9, scope: !1135)
!1141 = !DILocation(line: 219, column: 26, scope: !1121)
!1142 = !DILocation(line: 219, column: 11, scope: !1121)
!1143 = !DILocation(line: 219, column: 10, scope: !1121)
!1144 = !DILocation(line: 219, column: 8, scope: !1121)
!1145 = !DILocation(line: 220, column: 9, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 220, column: 9)
!1147 = !DILocation(line: 220, column: 15, scope: !1146)
!1148 = !DILocation(line: 220, column: 28, scope: !1146)
!1149 = !DILocation(line: 220, column: 32, scope: !1146)
!1150 = !DILocation(line: 220, column: 26, scope: !1146)
!1151 = !DILocation(line: 220, column: 43, scope: !1146)
!1152 = !DILocation(line: 220, column: 47, scope: !1146)
!1153 = !DILocation(line: 220, column: 9, scope: !1121)
!1154 = !DILocation(line: 221, column: 16, scope: !1146)
!1155 = !DILocation(line: 221, column: 9, scope: !1146)
!1156 = !DILocation(line: 224, column: 14, scope: !1121)
!1157 = !DILocation(line: 224, column: 18, scope: !1121)
!1158 = !DILocation(line: 224, column: 27, scope: !1121)
!1159 = !DILocation(line: 224, column: 33, scope: !1121)
!1160 = !DILocation(line: 224, column: 25, scope: !1121)
!1161 = !DILocation(line: 224, column: 44, scope: !1121)
!1162 = !DILocation(line: 224, column: 49, scope: !1121)
!1163 = !DILocation(line: 224, column: 53, scope: !1121)
!1164 = !DILocation(line: 224, column: 5, scope: !1121)
!1165 = !DILocation(line: 224, column: 61, scope: !1121)
!1166 = !DILocation(line: 224, column: 65, scope: !1121)
!1167 = !DILocation(line: 225, column: 13, scope: !1121)
!1168 = !DILocation(line: 225, column: 17, scope: !1121)
!1169 = !DILocation(line: 225, column: 5, scope: !1121)
!1170 = !DILocation(line: 225, column: 25, scope: !1121)
!1171 = !DILocation(line: 225, column: 31, scope: !1121)
!1172 = !DILocation(line: 225, column: 39, scope: !1121)
!1173 = !DILocation(line: 225, column: 45, scope: !1121)
!1174 = !DILocation(line: 226, column: 37, scope: !1121)
!1175 = !DILocation(line: 226, column: 43, scope: !1121)
!1176 = !DILocation(line: 226, column: 52, scope: !1121)
!1177 = !DILocation(line: 226, column: 5, scope: !1121)
!1178 = !DILocation(line: 226, column: 9, scope: !1121)
!1179 = !DILocation(line: 226, column: 17, scope: !1121)
!1180 = !DILocation(line: 226, column: 23, scope: !1121)
!1181 = !DILocation(line: 226, column: 35, scope: !1121)
!1182 = !DILocation(line: 227, column: 23, scope: !1121)
!1183 = !DILocation(line: 227, column: 29, scope: !1121)
!1184 = !DILocation(line: 227, column: 40, scope: !1121)
!1185 = !DILocation(line: 227, column: 5, scope: !1121)
!1186 = !DILocation(line: 227, column: 9, scope: !1121)
!1187 = !DILocation(line: 227, column: 20, scope: !1121)
!1188 = !DILocation(line: 230, column: 14, scope: !1121)
!1189 = !DILocation(line: 230, column: 5, scope: !1121)
!1190 = !DILocation(line: 233, column: 12, scope: !1121)
!1191 = !DILocation(line: 233, column: 5, scope: !1121)
!1192 = !DILocation(line: 234, column: 1, scope: !1121)
!1193 = distinct !DISubprogram(name: "nn_node_child", scope: !2, file: !2, line: 172, type: !1194, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !90, retainedNodes: !152)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!135, !93, !134}
!1196 = !DILocalVariable(name: "self", arg: 1, scope: !1193, file: !2, line: 172, type: !93)
!1197 = !DILocation(line: 172, column: 59, scope: !1193)
!1198 = !DILocalVariable(name: "index", arg: 2, scope: !1193, file: !2, line: 172, type: !134)
!1199 = !DILocation(line: 172, column: 69, scope: !1193)
!1200 = !DILocation(line: 176, column: 38, scope: !1193)
!1201 = !DILocation(line: 176, column: 43, scope: !1193)
!1202 = !DILocation(line: 176, column: 51, scope: !1193)
!1203 = !DILocation(line: 176, column: 49, scope: !1193)
!1204 = !DILocation(line: 176, column: 5, scope: !1193)
!1205 = distinct !DISubprogram(name: "nn_trie_match", scope: !2, file: !2, line: 440, type: !379, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !152)
!1206 = !DILocalVariable(name: "self", arg: 1, scope: !1205, file: !2, line: 440, type: !148)
!1207 = !DILocation(line: 440, column: 36, scope: !1205)
!1208 = !DILocalVariable(name: "data", arg: 2, scope: !1205, file: !2, line: 440, type: !381)
!1209 = !DILocation(line: 440, column: 57, scope: !1205)
!1210 = !DILocalVariable(name: "size", arg: 3, scope: !1205, file: !2, line: 440, type: !131)
!1211 = !DILocation(line: 440, column: 70, scope: !1205)
!1212 = !DILocalVariable(name: "node", scope: !1205, file: !2, line: 442, type: !93)
!1213 = !DILocation(line: 442, column: 26, scope: !1205)
!1214 = !DILocalVariable(name: "tmp", scope: !1205, file: !2, line: 443, type: !135)
!1215 = !DILocation(line: 443, column: 27, scope: !1205)
!1216 = !DILocation(line: 445, column: 12, scope: !1205)
!1217 = !DILocation(line: 445, column: 18, scope: !1205)
!1218 = !DILocation(line: 445, column: 10, scope: !1205)
!1219 = !DILocation(line: 446, column: 5, scope: !1205)
!1220 = !DILocation(line: 449, column: 14, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 449, column: 13)
!1222 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 446, column: 15)
!1223 = !DILocation(line: 449, column: 13, scope: !1222)
!1224 = !DILocation(line: 450, column: 13, scope: !1221)
!1225 = !DILocation(line: 454, column: 35, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 454, column: 13)
!1227 = !DILocation(line: 454, column: 41, scope: !1226)
!1228 = !DILocation(line: 454, column: 47, scope: !1226)
!1229 = !DILocation(line: 454, column: 13, scope: !1226)
!1230 = !DILocation(line: 454, column: 56, scope: !1226)
!1231 = !DILocation(line: 454, column: 62, scope: !1226)
!1232 = !DILocation(line: 454, column: 53, scope: !1226)
!1233 = !DILocation(line: 454, column: 13, scope: !1222)
!1234 = !DILocation(line: 455, column: 13, scope: !1226)
!1235 = !DILocation(line: 458, column: 17, scope: !1222)
!1236 = !DILocation(line: 458, column: 23, scope: !1222)
!1237 = !DILocation(line: 458, column: 14, scope: !1222)
!1238 = !DILocation(line: 459, column: 17, scope: !1222)
!1239 = !DILocation(line: 459, column: 23, scope: !1222)
!1240 = !DILocation(line: 459, column: 14, scope: !1222)
!1241 = !DILocation(line: 462, column: 38, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 462, column: 13)
!1243 = !DILocation(line: 462, column: 13, scope: !1242)
!1244 = !DILocation(line: 462, column: 13, scope: !1222)
!1245 = !DILocation(line: 463, column: 13, scope: !1242)
!1246 = !DILocation(line: 466, column: 29, scope: !1222)
!1247 = !DILocation(line: 466, column: 36, scope: !1222)
!1248 = !DILocation(line: 466, column: 35, scope: !1222)
!1249 = !DILocation(line: 466, column: 15, scope: !1222)
!1250 = !DILocation(line: 466, column: 13, scope: !1222)
!1251 = !DILocation(line: 467, column: 16, scope: !1222)
!1252 = !DILocation(line: 467, column: 23, scope: !1222)
!1253 = !DILocation(line: 467, column: 22, scope: !1222)
!1254 = !DILocation(line: 467, column: 14, scope: !1222)
!1255 = !DILocation(line: 468, column: 9, scope: !1222)
!1256 = !DILocation(line: 469, column: 9, scope: !1222)
!1257 = distinct !{!1257, !1219, !1258}
!1258 = !DILocation(line: 470, column: 5, scope: !1205)
!1259 = !DILocation(line: 471, column: 1, scope: !1205)
!1260 = distinct !DISubprogram(name: "nn_node_has_subscribers", scope: !2, file: !2, line: 658, type: !1261, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !90, retainedNodes: !152)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!134, !93}
!1263 = !DILocalVariable(name: "node", arg: 1, scope: !1260, file: !2, line: 658, type: !93)
!1264 = !DILocation(line: 658, column: 51, scope: !1260)
!1265 = !DILocation(line: 661, column: 12, scope: !1260)
!1266 = !DILocation(line: 661, column: 18, scope: !1260)
!1267 = !DILocation(line: 661, column: 5, scope: !1260)
!1268 = distinct !DISubprogram(name: "nn_trie_unsubscribe", scope: !2, file: !2, line: 473, type: !379, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !152)
!1269 = !DILocalVariable(name: "self", arg: 1, scope: !1268, file: !2, line: 473, type: !148)
!1270 = !DILocation(line: 473, column: 42, scope: !1268)
!1271 = !DILocalVariable(name: "data", arg: 2, scope: !1268, file: !2, line: 473, type: !381)
!1272 = !DILocation(line: 473, column: 63, scope: !1268)
!1273 = !DILocalVariable(name: "size", arg: 3, scope: !1268, file: !2, line: 473, type: !131)
!1274 = !DILocation(line: 473, column: 76, scope: !1268)
!1275 = !DILocation(line: 475, column: 34, scope: !1268)
!1276 = !DILocation(line: 475, column: 40, scope: !1268)
!1277 = !DILocation(line: 475, column: 46, scope: !1268)
!1278 = !DILocation(line: 475, column: 52, scope: !1268)
!1279 = !DILocation(line: 475, column: 12, scope: !1268)
!1280 = !DILocation(line: 475, column: 5, scope: !1268)
!1281 = distinct !DISubprogram(name: "nn_node_unsubscribe", scope: !2, file: !2, line: 478, type: !1282, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !90, retainedNodes: !152)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!134, !135, !381, !131}
!1284 = !DILocalVariable(name: "self", arg: 1, scope: !1281, file: !2, line: 478, type: !135)
!1285 = !DILocation(line: 478, column: 55, scope: !1281)
!1286 = !DILocalVariable(name: "data", arg: 2, scope: !1281, file: !2, line: 479, type: !381)
!1287 = !DILocation(line: 479, column: 20, scope: !1281)
!1288 = !DILocalVariable(name: "size", arg: 3, scope: !1281, file: !2, line: 479, type: !131)
!1289 = !DILocation(line: 479, column: 33, scope: !1281)
!1290 = !DILocalVariable(name: "i", scope: !1281, file: !2, line: 481, type: !134)
!1291 = !DILocation(line: 481, column: 9, scope: !1281)
!1292 = !DILocalVariable(name: "j", scope: !1281, file: !2, line: 482, type: !134)
!1293 = !DILocation(line: 482, column: 9, scope: !1281)
!1294 = !DILocalVariable(name: "index", scope: !1281, file: !2, line: 483, type: !134)
!1295 = !DILocation(line: 483, column: 9, scope: !1281)
!1296 = !DILocalVariable(name: "new_min", scope: !1281, file: !2, line: 484, type: !134)
!1297 = !DILocation(line: 484, column: 9, scope: !1281)
!1298 = !DILocalVariable(name: "ch", scope: !1281, file: !2, line: 485, type: !135)
!1299 = !DILocation(line: 485, column: 27, scope: !1281)
!1300 = !DILocalVariable(name: "new_node", scope: !1281, file: !2, line: 486, type: !93)
!1301 = !DILocation(line: 486, column: 26, scope: !1281)
!1302 = !DILocalVariable(name: "ch2", scope: !1281, file: !2, line: 487, type: !93)
!1303 = !DILocation(line: 487, column: 26, scope: !1281)
!1304 = !DILocation(line: 489, column: 10, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 489, column: 9)
!1306 = !DILocation(line: 489, column: 9, scope: !1281)
!1307 = !DILocation(line: 490, column: 9, scope: !1305)
!1308 = !DILocation(line: 493, column: 32, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 493, column: 9)
!1310 = !DILocation(line: 493, column: 31, scope: !1309)
!1311 = !DILocation(line: 493, column: 38, scope: !1309)
!1312 = !DILocation(line: 493, column: 44, scope: !1309)
!1313 = !DILocation(line: 493, column: 9, scope: !1309)
!1314 = !DILocation(line: 493, column: 55, scope: !1309)
!1315 = !DILocation(line: 493, column: 54, scope: !1309)
!1316 = !DILocation(line: 493, column: 62, scope: !1309)
!1317 = !DILocation(line: 493, column: 53, scope: !1309)
!1318 = !DILocation(line: 493, column: 50, scope: !1309)
!1319 = !DILocation(line: 493, column: 9, scope: !1281)
!1320 = !DILocation(line: 494, column: 9, scope: !1309)
!1321 = !DILocation(line: 497, column: 15, scope: !1281)
!1322 = !DILocation(line: 497, column: 14, scope: !1281)
!1323 = !DILocation(line: 497, column: 22, scope: !1281)
!1324 = !DILocation(line: 497, column: 13, scope: !1281)
!1325 = !DILocation(line: 497, column: 10, scope: !1281)
!1326 = !DILocation(line: 498, column: 15, scope: !1281)
!1327 = !DILocation(line: 498, column: 14, scope: !1281)
!1328 = !DILocation(line: 498, column: 22, scope: !1281)
!1329 = !DILocation(line: 498, column: 13, scope: !1281)
!1330 = !DILocation(line: 498, column: 10, scope: !1281)
!1331 = !DILocation(line: 500, column: 10, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 500, column: 9)
!1333 = !DILocation(line: 500, column: 9, scope: !1281)
!1334 = !DILocation(line: 501, column: 9, scope: !1332)
!1335 = !DILocation(line: 504, column: 25, scope: !1281)
!1336 = !DILocation(line: 504, column: 24, scope: !1281)
!1337 = !DILocation(line: 504, column: 32, scope: !1281)
!1338 = !DILocation(line: 504, column: 31, scope: !1281)
!1339 = !DILocation(line: 504, column: 10, scope: !1281)
!1340 = !DILocation(line: 504, column: 8, scope: !1281)
!1341 = !DILocation(line: 505, column: 10, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 505, column: 9)
!1343 = !DILocation(line: 505, column: 9, scope: !1281)
!1344 = !DILocation(line: 506, column: 9, scope: !1342)
!1345 = !DILocation(line: 511, column: 30, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 511, column: 9)
!1347 = !DILocation(line: 511, column: 34, scope: !1346)
!1348 = !DILocation(line: 511, column: 39, scope: !1346)
!1349 = !DILocation(line: 511, column: 44, scope: !1346)
!1350 = !DILocation(line: 511, column: 49, scope: !1346)
!1351 = !DILocation(line: 511, column: 9, scope: !1346)
!1352 = !DILocation(line: 511, column: 54, scope: !1346)
!1353 = !DILocation(line: 511, column: 9, scope: !1281)
!1354 = !DILocation(line: 512, column: 9, scope: !1346)
!1355 = !DILocation(line: 517, column: 10, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 517, column: 9)
!1357 = !DILocation(line: 517, column: 9, scope: !1356)
!1358 = !DILocation(line: 517, column: 9, scope: !1281)
!1359 = !DILocation(line: 518, column: 9, scope: !1356)
!1360 = !DILocation(line: 521, column: 11, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 521, column: 9)
!1362 = !DILocation(line: 521, column: 10, scope: !1361)
!1363 = !DILocation(line: 521, column: 18, scope: !1361)
!1364 = !DILocation(line: 521, column: 9, scope: !1361)
!1365 = !DILocation(line: 521, column: 23, scope: !1361)
!1366 = !DILocation(line: 521, column: 9, scope: !1281)
!1367 = !DILocation(line: 524, column: 20, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 524, column: 9)
!1369 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 521, column: 45)
!1370 = !DILocation(line: 524, column: 14, scope: !1368)
!1371 = !DILocation(line: 524, column: 25, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1368, file: !2, line: 524, column: 9)
!1373 = !DILocation(line: 524, column: 36, scope: !1372)
!1374 = !DILocation(line: 524, column: 35, scope: !1372)
!1375 = !DILocation(line: 524, column: 43, scope: !1372)
!1376 = !DILocation(line: 524, column: 34, scope: !1372)
!1377 = !DILocation(line: 524, column: 31, scope: !1372)
!1378 = !DILocation(line: 524, column: 9, scope: !1368)
!1379 = !DILocation(line: 525, column: 19, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 525, column: 17)
!1381 = !DILocation(line: 525, column: 18, scope: !1380)
!1382 = !DILocation(line: 525, column: 26, scope: !1380)
!1383 = !DILocation(line: 525, column: 35, scope: !1380)
!1384 = !DILocation(line: 525, column: 45, scope: !1380)
!1385 = !DILocation(line: 525, column: 17, scope: !1380)
!1386 = !DILocation(line: 525, column: 56, scope: !1380)
!1387 = !DILocation(line: 525, column: 55, scope: !1380)
!1388 = !DILocation(line: 525, column: 52, scope: !1380)
!1389 = !DILocation(line: 525, column: 17, scope: !1372)
!1390 = !DILocation(line: 526, column: 17, scope: !1380)
!1391 = !DILocation(line: 524, column: 49, scope: !1372)
!1392 = !DILocation(line: 524, column: 9, scope: !1372)
!1393 = distinct !{!1393, !1378, !1394, !210}
!1394 = !DILocation(line: 526, column: 17, scope: !1368)
!1395 = !DILocation(line: 527, column: 9, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 527, column: 9)
!1397 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 527, column: 9)
!1398 = !DILocation(line: 527, column: 9, scope: !1397)
!1399 = !DILocation(line: 531, column: 15, scope: !1369)
!1400 = !DILocation(line: 531, column: 14, scope: !1369)
!1401 = !DILocation(line: 531, column: 22, scope: !1369)
!1402 = !DILocation(line: 531, column: 31, scope: !1369)
!1403 = !DILocation(line: 531, column: 13, scope: !1369)
!1404 = !DILocation(line: 531, column: 42, scope: !1369)
!1405 = !DILocation(line: 531, column: 40, scope: !1369)
!1406 = !DILocation(line: 532, column: 15, scope: !1369)
!1407 = !DILocation(line: 532, column: 14, scope: !1369)
!1408 = !DILocation(line: 532, column: 22, scope: !1369)
!1409 = !DILocation(line: 532, column: 31, scope: !1369)
!1410 = !DILocation(line: 532, column: 13, scope: !1369)
!1411 = !DILocation(line: 532, column: 42, scope: !1369)
!1412 = !DILocation(line: 532, column: 40, scope: !1369)
!1413 = !DILocation(line: 532, column: 48, scope: !1369)
!1414 = !DILocation(line: 533, column: 15, scope: !1369)
!1415 = !DILocation(line: 533, column: 14, scope: !1369)
!1416 = !DILocation(line: 533, column: 22, scope: !1369)
!1417 = !DILocation(line: 533, column: 13, scope: !1369)
!1418 = !DILocation(line: 533, column: 29, scope: !1369)
!1419 = !DILocation(line: 533, column: 27, scope: !1369)
!1420 = !DILocation(line: 533, column: 35, scope: !1369)
!1421 = !DILocation(line: 530, column: 9, scope: !1369)
!1422 = !DILocation(line: 535, column: 29, scope: !1369)
!1423 = !DILocation(line: 535, column: 28, scope: !1369)
!1424 = !DILocation(line: 535, column: 35, scope: !1369)
!1425 = !DILocation(line: 535, column: 13, scope: !1369)
!1426 = !DILocation(line: 536, column: 29, scope: !1369)
!1427 = !DILocation(line: 536, column: 28, scope: !1369)
!1428 = !DILocation(line: 536, column: 35, scope: !1369)
!1429 = !DILocation(line: 536, column: 41, scope: !1369)
!1430 = !DILocation(line: 536, column: 13, scope: !1369)
!1431 = !DILocation(line: 537, column: 16, scope: !1369)
!1432 = !DILocation(line: 537, column: 15, scope: !1369)
!1433 = !DILocation(line: 537, column: 23, scope: !1369)
!1434 = !DILocation(line: 537, column: 14, scope: !1369)
!1435 = !DILocation(line: 537, column: 30, scope: !1369)
!1436 = !DILocation(line: 537, column: 28, scope: !1369)
!1437 = !DILocation(line: 537, column: 36, scope: !1369)
!1438 = !DILocation(line: 537, column: 13, scope: !1369)
!1439 = !DILocation(line: 537, column: 41, scope: !1369)
!1440 = !DILocation(line: 534, column: 9, scope: !1369)
!1441 = !DILocation(line: 538, column: 13, scope: !1369)
!1442 = !DILocation(line: 538, column: 12, scope: !1369)
!1443 = !DILocation(line: 538, column: 20, scope: !1369)
!1444 = !DILocation(line: 538, column: 9, scope: !1369)
!1445 = !DILocation(line: 539, column: 30, scope: !1369)
!1446 = !DILocation(line: 539, column: 29, scope: !1369)
!1447 = !DILocation(line: 540, column: 16, scope: !1369)
!1448 = !DILocation(line: 540, column: 15, scope: !1369)
!1449 = !DILocation(line: 540, column: 23, scope: !1369)
!1450 = !DILocation(line: 540, column: 14, scope: !1369)
!1451 = !DILocation(line: 540, column: 28, scope: !1369)
!1452 = !DILocation(line: 539, column: 65, scope: !1369)
!1453 = !DILocation(line: 539, column: 17, scope: !1369)
!1454 = !DILocation(line: 539, column: 10, scope: !1369)
!1455 = !DILocation(line: 539, column: 15, scope: !1369)
!1456 = !DILocation(line: 541, column: 9, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !2, line: 541, column: 9)
!1458 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 541, column: 9)
!1459 = !DILocation(line: 541, column: 9, scope: !1458)
!1460 = !DILocation(line: 545, column: 16, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 545, column: 13)
!1462 = !DILocation(line: 545, column: 15, scope: !1461)
!1463 = !DILocation(line: 545, column: 23, scope: !1461)
!1464 = !DILocation(line: 545, column: 14, scope: !1461)
!1465 = !DILocation(line: 545, column: 28, scope: !1461)
!1466 = !DILocation(line: 545, column: 58, scope: !1461)
!1467 = !DILocation(line: 545, column: 57, scope: !1461)
!1468 = !DILocation(line: 545, column: 32, scope: !1461)
!1469 = !DILocation(line: 545, column: 13, scope: !1369)
!1470 = !DILocation(line: 546, column: 23, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 545, column: 65)
!1472 = !DILocation(line: 546, column: 22, scope: !1471)
!1473 = !DILocation(line: 546, column: 13, scope: !1471)
!1474 = !DILocation(line: 547, column: 14, scope: !1471)
!1475 = !DILocation(line: 547, column: 19, scope: !1471)
!1476 = !DILocation(line: 548, column: 13, scope: !1471)
!1477 = !DILocation(line: 552, column: 35, scope: !1369)
!1478 = !DILocation(line: 552, column: 34, scope: !1369)
!1479 = !DILocation(line: 552, column: 17, scope: !1369)
!1480 = !DILocation(line: 552, column: 10, scope: !1369)
!1481 = !DILocation(line: 552, column: 15, scope: !1369)
!1482 = !DILocation(line: 554, column: 9, scope: !1369)
!1483 = !DILocation(line: 561, column: 11, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 561, column: 9)
!1485 = !DILocation(line: 561, column: 10, scope: !1484)
!1486 = !DILocation(line: 561, column: 18, scope: !1484)
!1487 = !DILocation(line: 561, column: 26, scope: !1484)
!1488 = !DILocation(line: 561, column: 9, scope: !1484)
!1489 = !DILocation(line: 561, column: 30, scope: !1484)
!1490 = !DILocation(line: 561, column: 9, scope: !1281)
!1491 = !DILocation(line: 565, column: 14, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 565, column: 13)
!1493 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 561, column: 56)
!1494 = !DILocation(line: 565, column: 13, scope: !1492)
!1495 = !DILocation(line: 565, column: 24, scope: !1492)
!1496 = !DILocation(line: 565, column: 23, scope: !1492)
!1497 = !DILocation(line: 565, column: 31, scope: !1492)
!1498 = !DILocation(line: 565, column: 39, scope: !1492)
!1499 = !DILocation(line: 565, column: 22, scope: !1492)
!1500 = !DILocation(line: 565, column: 19, scope: !1492)
!1501 = !DILocation(line: 565, column: 13, scope: !1493)
!1502 = !DILocation(line: 566, column: 21, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !2, line: 566, column: 14)
!1504 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 565, column: 44)
!1505 = !DILocation(line: 566, column: 19, scope: !1503)
!1506 = !DILocation(line: 566, column: 26, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1503, file: !2, line: 566, column: 14)
!1508 = !DILocation(line: 566, column: 33, scope: !1507)
!1509 = !DILocation(line: 566, column: 32, scope: !1507)
!1510 = !DILocation(line: 566, column: 40, scope: !1507)
!1511 = !DILocation(line: 566, column: 48, scope: !1507)
!1512 = !DILocation(line: 566, column: 31, scope: !1507)
!1513 = !DILocation(line: 566, column: 56, scope: !1507)
!1514 = !DILocation(line: 566, column: 55, scope: !1507)
!1515 = !DILocation(line: 566, column: 63, scope: !1507)
!1516 = !DILocation(line: 566, column: 71, scope: !1507)
!1517 = !DILocation(line: 566, column: 54, scope: !1507)
!1518 = !DILocation(line: 566, column: 52, scope: !1507)
!1519 = !DILocation(line: 566, column: 75, scope: !1507)
!1520 = !DILocation(line: 566, column: 28, scope: !1507)
!1521 = !DILocation(line: 566, column: 14, scope: !1503)
!1522 = !DILocation(line: 568, column: 39, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1507, file: !2, line: 568, column: 22)
!1524 = !DILocation(line: 568, column: 38, scope: !1523)
!1525 = !DILocation(line: 568, column: 45, scope: !1523)
!1526 = !DILocation(line: 568, column: 23, scope: !1523)
!1527 = !DILocation(line: 568, column: 22, scope: !1523)
!1528 = !DILocation(line: 568, column: 22, scope: !1507)
!1529 = !DILocation(line: 569, column: 22, scope: !1523)
!1530 = !DILocation(line: 568, column: 46, scope: !1523)
!1531 = !DILocation(line: 567, column: 20, scope: !1507)
!1532 = !DILocation(line: 566, column: 14, scope: !1507)
!1533 = distinct !{!1533, !1521, !1534, !210}
!1534 = !DILocation(line: 569, column: 22, scope: !1503)
!1535 = !DILocation(line: 570, column: 24, scope: !1504)
!1536 = !DILocation(line: 570, column: 30, scope: !1504)
!1537 = !DILocation(line: 570, column: 29, scope: !1504)
!1538 = !DILocation(line: 570, column: 37, scope: !1504)
!1539 = !DILocation(line: 570, column: 45, scope: !1504)
!1540 = !DILocation(line: 570, column: 28, scope: !1504)
!1541 = !DILocation(line: 570, column: 26, scope: !1504)
!1542 = !DILocation(line: 570, column: 22, scope: !1504)
!1543 = !DILocation(line: 571, column: 39, scope: !1504)
!1544 = !DILocation(line: 571, column: 38, scope: !1504)
!1545 = !DILocation(line: 571, column: 23, scope: !1504)
!1546 = !DILocation(line: 571, column: 65, scope: !1504)
!1547 = !DILocation(line: 571, column: 64, scope: !1504)
!1548 = !DILocation(line: 571, column: 71, scope: !1504)
!1549 = !DILocation(line: 571, column: 49, scope: !1504)
!1550 = !DILocation(line: 572, column: 21, scope: !1504)
!1551 = !DILocation(line: 572, column: 20, scope: !1504)
!1552 = !DILocation(line: 572, column: 28, scope: !1504)
!1553 = !DILocation(line: 572, column: 36, scope: !1504)
!1554 = !DILocation(line: 572, column: 19, scope: !1504)
!1555 = !DILocation(line: 572, column: 42, scope: !1504)
!1556 = !DILocation(line: 572, column: 40, scope: !1504)
!1557 = !DILocation(line: 572, column: 50, scope: !1504)
!1558 = !DILocation(line: 572, column: 18, scope: !1504)
!1559 = !DILocation(line: 572, column: 55, scope: !1504)
!1560 = !DILocation(line: 571, column: 14, scope: !1504)
!1561 = !DILocation(line: 574, column: 37, scope: !1504)
!1562 = !DILocation(line: 574, column: 16, scope: !1504)
!1563 = !DILocation(line: 574, column: 15, scope: !1504)
!1564 = !DILocation(line: 574, column: 23, scope: !1504)
!1565 = !DILocation(line: 574, column: 31, scope: !1504)
!1566 = !DILocation(line: 574, column: 35, scope: !1504)
!1567 = !DILocation(line: 575, column: 18, scope: !1504)
!1568 = !DILocation(line: 575, column: 17, scope: !1504)
!1569 = !DILocation(line: 575, column: 25, scope: !1504)
!1570 = !DILocation(line: 575, column: 33, scope: !1504)
!1571 = !DILocation(line: 575, column: 14, scope: !1504)
!1572 = !DILocation(line: 576, column: 35, scope: !1504)
!1573 = !DILocation(line: 576, column: 34, scope: !1504)
!1574 = !DILocation(line: 577, column: 21, scope: !1504)
!1575 = !DILocation(line: 577, column: 20, scope: !1504)
!1576 = !DILocation(line: 577, column: 28, scope: !1504)
!1577 = !DILocation(line: 577, column: 36, scope: !1504)
!1578 = !DILocation(line: 577, column: 19, scope: !1504)
!1579 = !DILocation(line: 577, column: 42, scope: !1504)
!1580 = !DILocation(line: 577, column: 40, scope: !1504)
!1581 = !DILocation(line: 577, column: 50, scope: !1504)
!1582 = !DILocation(line: 577, column: 18, scope: !1504)
!1583 = !DILocation(line: 577, column: 55, scope: !1504)
!1584 = !DILocation(line: 576, column: 70, scope: !1504)
!1585 = !DILocation(line: 576, column: 22, scope: !1504)
!1586 = !DILocation(line: 576, column: 15, scope: !1504)
!1587 = !DILocation(line: 576, column: 20, scope: !1504)
!1588 = !DILocation(line: 579, column: 14, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 579, column: 14)
!1590 = distinct !DILexicalBlock(scope: !1504, file: !2, line: 579, column: 14)
!1591 = !DILocation(line: 579, column: 14, scope: !1590)
!1592 = !DILocation(line: 580, column: 14, scope: !1504)
!1593 = !DILocation(line: 585, column: 14, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 585, column: 13)
!1595 = !DILocation(line: 585, column: 13, scope: !1594)
!1596 = !DILocation(line: 585, column: 24, scope: !1594)
!1597 = !DILocation(line: 585, column: 23, scope: !1594)
!1598 = !DILocation(line: 585, column: 31, scope: !1594)
!1599 = !DILocation(line: 585, column: 39, scope: !1594)
!1600 = !DILocation(line: 585, column: 22, scope: !1594)
!1601 = !DILocation(line: 585, column: 19, scope: !1594)
!1602 = !DILocation(line: 585, column: 13, scope: !1493)
!1603 = !DILocation(line: 586, column: 25, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 586, column: 14)
!1605 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 585, column: 44)
!1606 = !DILocation(line: 586, column: 24, scope: !1604)
!1607 = !DILocation(line: 586, column: 32, scope: !1604)
!1608 = !DILocation(line: 586, column: 40, scope: !1604)
!1609 = !DILocation(line: 586, column: 23, scope: !1604)
!1610 = !DILocation(line: 586, column: 48, scope: !1604)
!1611 = !DILocation(line: 586, column: 47, scope: !1604)
!1612 = !DILocation(line: 586, column: 55, scope: !1604)
!1613 = !DILocation(line: 586, column: 63, scope: !1604)
!1614 = !DILocation(line: 586, column: 46, scope: !1604)
!1615 = !DILocation(line: 586, column: 44, scope: !1604)
!1616 = !DILocation(line: 586, column: 21, scope: !1604)
!1617 = !DILocation(line: 586, column: 19, scope: !1604)
!1618 = !DILocation(line: 586, column: 68, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1604, file: !2, line: 586, column: 14)
!1620 = !DILocation(line: 586, column: 70, scope: !1619)
!1621 = !DILocation(line: 586, column: 14, scope: !1604)
!1622 = !DILocation(line: 587, column: 39, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1619, file: !2, line: 587, column: 22)
!1624 = !DILocation(line: 587, column: 38, scope: !1623)
!1625 = !DILocation(line: 587, column: 45, scope: !1623)
!1626 = !DILocation(line: 587, column: 23, scope: !1623)
!1627 = !DILocation(line: 587, column: 22, scope: !1623)
!1628 = !DILocation(line: 587, column: 22, scope: !1619)
!1629 = !DILocation(line: 588, column: 22, scope: !1623)
!1630 = !DILocation(line: 587, column: 46, scope: !1623)
!1631 = !DILocation(line: 586, column: 76, scope: !1619)
!1632 = !DILocation(line: 586, column: 14, scope: !1619)
!1633 = distinct !{!1633, !1621, !1634, !210}
!1634 = !DILocation(line: 588, column: 22, scope: !1604)
!1635 = !DILocation(line: 589, column: 37, scope: !1605)
!1636 = !DILocation(line: 589, column: 43, scope: !1605)
!1637 = !DILocation(line: 589, column: 42, scope: !1605)
!1638 = !DILocation(line: 589, column: 50, scope: !1605)
!1639 = !DILocation(line: 589, column: 58, scope: !1605)
!1640 = !DILocation(line: 589, column: 41, scope: !1605)
!1641 = !DILocation(line: 589, column: 39, scope: !1605)
!1642 = !DILocation(line: 589, column: 16, scope: !1605)
!1643 = !DILocation(line: 589, column: 15, scope: !1605)
!1644 = !DILocation(line: 589, column: 23, scope: !1605)
!1645 = !DILocation(line: 589, column: 31, scope: !1605)
!1646 = !DILocation(line: 589, column: 35, scope: !1605)
!1647 = !DILocation(line: 590, column: 18, scope: !1605)
!1648 = !DILocation(line: 590, column: 17, scope: !1605)
!1649 = !DILocation(line: 590, column: 25, scope: !1605)
!1650 = !DILocation(line: 590, column: 33, scope: !1605)
!1651 = !DILocation(line: 590, column: 14, scope: !1605)
!1652 = !DILocation(line: 591, column: 35, scope: !1605)
!1653 = !DILocation(line: 591, column: 34, scope: !1605)
!1654 = !DILocation(line: 592, column: 21, scope: !1605)
!1655 = !DILocation(line: 592, column: 20, scope: !1605)
!1656 = !DILocation(line: 592, column: 28, scope: !1605)
!1657 = !DILocation(line: 592, column: 36, scope: !1605)
!1658 = !DILocation(line: 592, column: 19, scope: !1605)
!1659 = !DILocation(line: 592, column: 44, scope: !1605)
!1660 = !DILocation(line: 592, column: 43, scope: !1605)
!1661 = !DILocation(line: 592, column: 51, scope: !1605)
!1662 = !DILocation(line: 592, column: 59, scope: !1605)
!1663 = !DILocation(line: 592, column: 42, scope: !1605)
!1664 = !DILocation(line: 592, column: 40, scope: !1605)
!1665 = !DILocation(line: 592, column: 63, scope: !1605)
!1666 = !DILocation(line: 592, column: 18, scope: !1605)
!1667 = !DILocation(line: 592, column: 68, scope: !1605)
!1668 = !DILocation(line: 591, column: 70, scope: !1605)
!1669 = !DILocation(line: 591, column: 22, scope: !1605)
!1670 = !DILocation(line: 591, column: 15, scope: !1605)
!1671 = !DILocation(line: 591, column: 20, scope: !1605)
!1672 = !DILocation(line: 594, column: 14, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 594, column: 14)
!1674 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 594, column: 14)
!1675 = !DILocation(line: 594, column: 14, scope: !1674)
!1676 = !DILocation(line: 595, column: 14, scope: !1605)
!1677 = !DILocation(line: 599, column: 13, scope: !1493)
!1678 = !DILocation(line: 599, column: 12, scope: !1493)
!1679 = !DILocation(line: 599, column: 20, scope: !1493)
!1680 = !DILocation(line: 599, column: 28, scope: !1493)
!1681 = !DILocation(line: 599, column: 9, scope: !1493)
!1682 = !DILocation(line: 600, column: 9, scope: !1493)
!1683 = !DILocation(line: 605, column: 20, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 604, column: 5)
!1685 = !DILocation(line: 605, column: 18, scope: !1684)
!1686 = !DILocation(line: 607, column: 9, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 607, column: 9)
!1688 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 607, column: 9)
!1689 = !DILocation(line: 607, column: 9, scope: !1688)
!1690 = !DILocation(line: 608, column: 9, scope: !1684)
!1691 = !DILocation(line: 608, column: 19, scope: !1684)
!1692 = !DILocation(line: 608, column: 28, scope: !1684)
!1693 = !DILocation(line: 609, column: 34, scope: !1684)
!1694 = !DILocation(line: 609, column: 33, scope: !1684)
!1695 = !DILocation(line: 609, column: 41, scope: !1684)
!1696 = !DILocation(line: 609, column: 9, scope: !1684)
!1697 = !DILocation(line: 609, column: 19, scope: !1684)
!1698 = !DILocation(line: 609, column: 30, scope: !1684)
!1699 = !DILocation(line: 610, column: 17, scope: !1684)
!1700 = !DILocation(line: 610, column: 27, scope: !1684)
!1701 = !DILocation(line: 610, column: 9, scope: !1684)
!1702 = !DILocation(line: 610, column: 37, scope: !1684)
!1703 = !DILocation(line: 610, column: 36, scope: !1684)
!1704 = !DILocation(line: 610, column: 44, scope: !1684)
!1705 = !DILocation(line: 610, column: 52, scope: !1684)
!1706 = !DILocation(line: 610, column: 62, scope: !1684)
!1707 = !DILocation(line: 611, column: 9, scope: !1684)
!1708 = !DILocation(line: 611, column: 19, scope: !1684)
!1709 = !DILocation(line: 611, column: 24, scope: !1684)
!1710 = !DILocation(line: 612, column: 11, scope: !1684)
!1711 = !DILocation(line: 613, column: 16, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 613, column: 9)
!1713 = !DILocation(line: 613, column: 14, scope: !1712)
!1714 = !DILocation(line: 613, column: 21, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 613, column: 9)
!1716 = !DILocation(line: 613, column: 28, scope: !1715)
!1717 = !DILocation(line: 613, column: 27, scope: !1715)
!1718 = !DILocation(line: 613, column: 35, scope: !1715)
!1719 = !DILocation(line: 613, column: 43, scope: !1715)
!1720 = !DILocation(line: 613, column: 26, scope: !1715)
!1721 = !DILocation(line: 613, column: 51, scope: !1715)
!1722 = !DILocation(line: 613, column: 50, scope: !1715)
!1723 = !DILocation(line: 613, column: 58, scope: !1715)
!1724 = !DILocation(line: 613, column: 66, scope: !1715)
!1725 = !DILocation(line: 613, column: 49, scope: !1715)
!1726 = !DILocation(line: 613, column: 47, scope: !1715)
!1727 = !DILocation(line: 613, column: 70, scope: !1715)
!1728 = !DILocation(line: 613, column: 23, scope: !1715)
!1729 = !DILocation(line: 613, column: 9, scope: !1712)
!1730 = !DILocation(line: 615, column: 36, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 614, column: 20)
!1732 = !DILocation(line: 615, column: 35, scope: !1731)
!1733 = !DILocation(line: 615, column: 42, scope: !1731)
!1734 = !DILocation(line: 615, column: 20, scope: !1731)
!1735 = !DILocation(line: 615, column: 19, scope: !1731)
!1736 = !DILocation(line: 615, column: 17, scope: !1731)
!1737 = !DILocation(line: 616, column: 17, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1731, file: !2, line: 616, column: 17)
!1739 = !DILocation(line: 616, column: 17, scope: !1731)
!1740 = !DILocation(line: 617, column: 51, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 616, column: 22)
!1742 = !DILocation(line: 617, column: 57, scope: !1741)
!1743 = !DILocation(line: 617, column: 56, scope: !1741)
!1744 = !DILocation(line: 617, column: 64, scope: !1741)
!1745 = !DILocation(line: 617, column: 72, scope: !1741)
!1746 = !DILocation(line: 617, column: 55, scope: !1741)
!1747 = !DILocation(line: 617, column: 53, scope: !1741)
!1748 = !DILocation(line: 617, column: 17, scope: !1741)
!1749 = !DILocation(line: 617, column: 27, scope: !1741)
!1750 = !DILocation(line: 617, column: 36, scope: !1741)
!1751 = !DILocation(line: 617, column: 46, scope: !1741)
!1752 = !DILocation(line: 617, column: 49, scope: !1741)
!1753 = !DILocation(line: 618, column: 48, scope: !1741)
!1754 = !DILocation(line: 618, column: 33, scope: !1741)
!1755 = !DILocation(line: 618, column: 43, scope: !1741)
!1756 = !DILocation(line: 618, column: 18, scope: !1741)
!1757 = !DILocation(line: 618, column: 46, scope: !1741)
!1758 = !DILocation(line: 619, column: 17, scope: !1741)
!1759 = !DILocation(line: 620, column: 13, scope: !1741)
!1760 = !DILocation(line: 621, column: 9, scope: !1731)
!1761 = !DILocation(line: 614, column: 15, scope: !1715)
!1762 = !DILocation(line: 613, column: 9, scope: !1715)
!1763 = distinct !{!1763, !1729, !1764, !210}
!1764 = !DILocation(line: 621, column: 9, scope: !1712)
!1765 = !DILocation(line: 622, column: 9, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !2, line: 622, column: 9)
!1767 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 622, column: 9)
!1768 = !DILocation(line: 622, column: 9, scope: !1767)
!1769 = !DILocation(line: 623, column: 19, scope: !1684)
!1770 = !DILocation(line: 623, column: 18, scope: !1684)
!1771 = !DILocation(line: 623, column: 9, scope: !1684)
!1772 = !DILocation(line: 624, column: 17, scope: !1684)
!1773 = !DILocation(line: 624, column: 10, scope: !1684)
!1774 = !DILocation(line: 624, column: 15, scope: !1684)
!1775 = !DILocation(line: 625, column: 9, scope: !1684)
!1776 = !DILabel(scope: !1281, name: "found", file: !2, line: 628)
!1777 = !DILocation(line: 628, column: 1, scope: !1281)
!1778 = !DILocation(line: 633, column: 9, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 633, column: 9)
!1780 = !DILocation(line: 633, column: 9, scope: !1281)
!1781 = !DILocation(line: 634, column: 9, scope: !1779)
!1782 = !DILocation(line: 637, column: 9, scope: !1281)
!1783 = !DILocation(line: 637, column: 8, scope: !1281)
!1784 = !DILocation(line: 637, column: 16, scope: !1281)
!1785 = !DILocation(line: 637, column: 5, scope: !1281)
!1786 = !DILocation(line: 641, column: 12, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 641, column: 9)
!1788 = !DILocation(line: 641, column: 11, scope: !1787)
!1789 = !DILocation(line: 641, column: 19, scope: !1787)
!1790 = !DILocation(line: 641, column: 10, scope: !1787)
!1791 = !DILocation(line: 641, column: 9, scope: !1281)
!1792 = !DILocation(line: 644, column: 16, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !2, line: 644, column: 13)
!1794 = distinct !DILexicalBlock(scope: !1787, file: !2, line: 641, column: 29)
!1795 = !DILocation(line: 644, column: 15, scope: !1793)
!1796 = !DILocation(line: 644, column: 23, scope: !1793)
!1797 = !DILocation(line: 644, column: 14, scope: !1793)
!1798 = !DILocation(line: 644, column: 13, scope: !1794)
!1799 = !DILocation(line: 645, column: 23, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1793, file: !2, line: 644, column: 29)
!1801 = !DILocation(line: 645, column: 22, scope: !1800)
!1802 = !DILocation(line: 645, column: 13, scope: !1800)
!1803 = !DILocation(line: 646, column: 14, scope: !1800)
!1804 = !DILocation(line: 646, column: 19, scope: !1800)
!1805 = !DILocation(line: 647, column: 13, scope: !1800)
!1806 = !DILocation(line: 651, column: 35, scope: !1794)
!1807 = !DILocation(line: 651, column: 34, scope: !1794)
!1808 = !DILocation(line: 651, column: 17, scope: !1794)
!1809 = !DILocation(line: 651, column: 10, scope: !1794)
!1810 = !DILocation(line: 651, column: 15, scope: !1794)
!1811 = !DILocation(line: 652, column: 9, scope: !1794)
!1812 = !DILocation(line: 655, column: 5, scope: !1281)
!1813 = !DILocation(line: 656, column: 1, scope: !1281)
!1814 = distinct !DISubprogram(name: "nn_node_indent", scope: !2, file: !2, line: 121, type: !1815, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !90, retainedNodes: !152)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !134}
!1817 = !DILocalVariable(name: "indent", arg: 1, scope: !1814, file: !2, line: 121, type: !134)
!1818 = !DILocation(line: 121, column: 26, scope: !1814)
!1819 = !DILocalVariable(name: "i", scope: !1814, file: !2, line: 123, type: !134)
!1820 = !DILocation(line: 123, column: 9, scope: !1814)
!1821 = !DILocation(line: 125, column: 12, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 125, column: 5)
!1823 = !DILocation(line: 125, column: 10, scope: !1822)
!1824 = !DILocation(line: 125, column: 17, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1822, file: !2, line: 125, column: 5)
!1826 = !DILocation(line: 125, column: 22, scope: !1825)
!1827 = !DILocation(line: 125, column: 29, scope: !1825)
!1828 = !DILocation(line: 125, column: 19, scope: !1825)
!1829 = !DILocation(line: 125, column: 5, scope: !1822)
!1830 = !DILocation(line: 126, column: 9, scope: !1825)
!1831 = !DILocation(line: 125, column: 34, scope: !1825)
!1832 = !DILocation(line: 125, column: 5, scope: !1825)
!1833 = distinct !{!1833, !1829, !1834, !210}
!1834 = !DILocation(line: 126, column: 29, scope: !1822)
!1835 = !DILocation(line: 127, column: 1, scope: !1814)
!1836 = distinct !DISubprogram(name: "nn_node_putchar", scope: !2, file: !2, line: 129, type: !1837, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !90, retainedNodes: !152)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !104}
!1839 = !DILocalVariable(name: "c", arg: 1, scope: !1836, file: !2, line: 129, type: !104)
!1840 = !DILocation(line: 129, column: 31, scope: !1836)
!1841 = !DILocation(line: 131, column: 9, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1836, file: !2, line: 131, column: 9)
!1843 = !DILocation(line: 131, column: 11, scope: !1842)
!1844 = !DILocation(line: 131, column: 16, scope: !1842)
!1845 = !DILocation(line: 131, column: 19, scope: !1842)
!1846 = !DILocation(line: 131, column: 21, scope: !1842)
!1847 = !DILocation(line: 131, column: 9, scope: !1836)
!1848 = !DILocation(line: 132, column: 9, scope: !1842)
!1849 = !DILocation(line: 134, column: 18, scope: !1842)
!1850 = !DILocation(line: 134, column: 9, scope: !1842)
!1851 = !DILocation(line: 135, column: 1, scope: !1836)
