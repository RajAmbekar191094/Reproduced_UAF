; ModuleID = './src/protocols/pubsub/sub.c'
source_filename = "./src/protocols/pubsub/sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_sockbase_vfptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nn_sub = type { %struct.nn_sockbase, %struct.nn_excl, %struct.nn_trie }
%struct.nn_sockbase = type { ptr, ptr }
%struct.nn_excl = type { ptr, ptr, ptr }
%struct.nn_trie = type { ptr }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }

@nn_sub_socktype_struct = internal global %struct.nn_socktype { i32 1, i32 33, i32 2, ptr @nn_sub_create, ptr @nn_sub_ispeer, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !0
@nn_sub_socktype = dso_local global ptr @nn_sub_socktype_struct, align 8, !dbg !129
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !153
@.str.1 = private unnamed_addr constant [29 x i8] c"./src/protocols/pubsub/sub.c\00", align 1, !dbg !158
@nn_sub_sockbase_vfptr = internal constant %struct.nn_sockbase_vfptr { ptr null, ptr @nn_sub_destroy, ptr @nn_sub_add, ptr @nn_sub_rm, ptr @nn_sub_in, ptr @nn_sub_out, ptr @nn_sub_events, ptr null, ptr @nn_sub_recv, ptr @nn_sub_setopt, ptr @nn_sub_getopt }, align 8, !dbg !163
@.str.2 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !165

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_sub_create(ptr noundef %0, ptr noundef %1) #0 !dbg !178 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !180, metadata !DIExpression()), !dbg !181
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata ptr %5, metadata !184, metadata !DIExpression()), !dbg !185
  %6 = call ptr @nn_alloc_(i64 noundef 48), !dbg !186
  store ptr %6, ptr %5, align 8, !dbg !187
  br label %7, !dbg !188

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !dbg !189
  %9 = icmp ne ptr %8, null, !dbg !189
  %10 = xor i1 %9, true, !dbg !189
  %11 = zext i1 %10 to i32, !dbg !189
  %12 = sext i32 %11 to i64, !dbg !189
  %13 = icmp ne i64 %12, 0, !dbg !189
  br i1 %13, label %14, label %17, !dbg !192

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !193
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 188), !dbg !193
  call void @nn_err_abort() #4, !dbg !193
  unreachable, !dbg !193

17:                                               ; preds = %7
  br label %18, !dbg !192

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !195
  %20 = load ptr, ptr %3, align 8, !dbg !196
  call void @nn_sub_init(ptr noundef %19, ptr noundef @nn_sub_sockbase_vfptr, ptr noundef %20), !dbg !197
  %21 = load ptr, ptr %5, align 8, !dbg !198
  %22 = getelementptr inbounds %struct.nn_sub, ptr %21, i32 0, i32 0, !dbg !199
  %23 = load ptr, ptr %4, align 8, !dbg !200
  store ptr %22, ptr %23, align 8, !dbg !201
  ret i32 0, !dbg !202
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_sub_ispeer(i32 noundef %0) #0 !dbg !203 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !204, metadata !DIExpression()), !dbg !205
  %3 = load i32, ptr %2, align 4, !dbg !206
  %4 = icmp eq i32 %3, 32, !dbg !207
  %5 = zext i1 %4 to i64, !dbg !206
  %6 = select i1 %4, i32 1, i32 0, !dbg !206
  ret i32 %6, !dbg !208
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_sub_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !209 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !212, metadata !DIExpression()), !dbg !213
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !214, metadata !DIExpression()), !dbg !215
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !216, metadata !DIExpression()), !dbg !217
  %7 = load ptr, ptr %4, align 8, !dbg !218
  %8 = getelementptr inbounds %struct.nn_sub, ptr %7, i32 0, i32 0, !dbg !219
  %9 = load ptr, ptr %5, align 8, !dbg !220
  %10 = load ptr, ptr %6, align 8, !dbg !221
  call void @nn_sockbase_init(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !222
  %11 = load ptr, ptr %4, align 8, !dbg !223
  %12 = getelementptr inbounds %struct.nn_sub, ptr %11, i32 0, i32 1, !dbg !224
  call void @nn_excl_init(ptr noundef %12), !dbg !225
  %13 = load ptr, ptr %4, align 8, !dbg !226
  %14 = getelementptr inbounds %struct.nn_sub, ptr %13, i32 0, i32 2, !dbg !227
  call void @nn_trie_init(ptr noundef %14), !dbg !228
  ret void, !dbg !229
}

declare void @nn_sockbase_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_excl_init(ptr noundef) #2

declare void @nn_trie_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_sub_destroy(ptr noundef %0) #0 !dbg !230 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata ptr %3, metadata !233, metadata !DIExpression()), !dbg !234
  %4 = load ptr, ptr %2, align 8, !dbg !235
  %5 = icmp ne ptr %4, null, !dbg !235
  br i1 %5, label %6, label %9, !dbg !235

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !235
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !235
  br label %10, !dbg !235

9:                                                ; preds = %1
  br label %10, !dbg !235

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !235
  store ptr %11, ptr %3, align 8, !dbg !236
  %12 = load ptr, ptr %3, align 8, !dbg !237
  call void @nn_sub_term(ptr noundef %12), !dbg !238
  %13 = load ptr, ptr %3, align 8, !dbg !239
  call void @nn_free(ptr noundef %13), !dbg !240
  ret void, !dbg !241
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_sub_add(ptr noundef %0, ptr noundef %1) #0 !dbg !242 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !243, metadata !DIExpression()), !dbg !244
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !245, metadata !DIExpression()), !dbg !246
  %5 = load ptr, ptr %3, align 8, !dbg !247
  %6 = icmp ne ptr %5, null, !dbg !247
  br i1 %6, label %7, label %10, !dbg !247

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !247
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !247
  br label %11, !dbg !247

10:                                               ; preds = %2
  br label %11, !dbg !247

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !247
  %13 = getelementptr inbounds %struct.nn_sub, ptr %12, i32 0, i32 1, !dbg !248
  %14 = load ptr, ptr %4, align 8, !dbg !249
  %15 = call i32 @nn_excl_add(ptr noundef %13, ptr noundef %14), !dbg !250
  ret i32 %15, !dbg !251
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_sub_rm(ptr noundef %0, ptr noundef %1) #0 !dbg !252 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !253, metadata !DIExpression()), !dbg !254
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !255, metadata !DIExpression()), !dbg !256
  %5 = load ptr, ptr %3, align 8, !dbg !257
  %6 = icmp ne ptr %5, null, !dbg !257
  br i1 %6, label %7, label %10, !dbg !257

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !257
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !257
  br label %11, !dbg !257

10:                                               ; preds = %2
  br label %11, !dbg !257

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !257
  %13 = getelementptr inbounds %struct.nn_sub, ptr %12, i32 0, i32 1, !dbg !258
  %14 = load ptr, ptr %4, align 8, !dbg !259
  call void @nn_excl_rm(ptr noundef %13, ptr noundef %14), !dbg !260
  ret void, !dbg !261
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_sub_in(ptr noundef %0, ptr noundef %1) #0 !dbg !262 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !263, metadata !DIExpression()), !dbg !264
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !265, metadata !DIExpression()), !dbg !266
  %5 = load ptr, ptr %3, align 8, !dbg !267
  %6 = icmp ne ptr %5, null, !dbg !267
  br i1 %6, label %7, label %10, !dbg !267

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !267
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !267
  br label %11, !dbg !267

10:                                               ; preds = %2
  br label %11, !dbg !267

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !267
  %13 = getelementptr inbounds %struct.nn_sub, ptr %12, i32 0, i32 1, !dbg !268
  %14 = load ptr, ptr %4, align 8, !dbg !269
  call void @nn_excl_in(ptr noundef %13, ptr noundef %14), !dbg !270
  ret void, !dbg !271
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_sub_out(ptr noundef %0, ptr noundef %1) #0 !dbg !272 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !273, metadata !DIExpression()), !dbg !274
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !275, metadata !DIExpression()), !dbg !276
  %5 = load ptr, ptr %3, align 8, !dbg !277
  %6 = icmp ne ptr %5, null, !dbg !277
  br i1 %6, label %7, label %10, !dbg !277

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !277
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !277
  br label %11, !dbg !277

10:                                               ; preds = %2
  br label %11, !dbg !277

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !277
  %13 = getelementptr inbounds %struct.nn_sub, ptr %12, i32 0, i32 1, !dbg !278
  %14 = load ptr, ptr %4, align 8, !dbg !279
  call void @nn_excl_out(ptr noundef %13, ptr noundef %14), !dbg !280
  ret void, !dbg !281
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_sub_events(ptr noundef %0) #0 !dbg !282 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !283, metadata !DIExpression()), !dbg !284
  %3 = load ptr, ptr %2, align 8, !dbg !285
  %4 = icmp ne ptr %3, null, !dbg !285
  br i1 %4, label %5, label %8, !dbg !285

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !285
  %7 = getelementptr inbounds i8, ptr %6, i64 0, !dbg !285
  br label %9, !dbg !285

8:                                                ; preds = %1
  br label %9, !dbg !285

9:                                                ; preds = %8, %5
  %10 = phi ptr [ %7, %5 ], [ null, %8 ], !dbg !285
  %11 = getelementptr inbounds %struct.nn_sub, ptr %10, i32 0, i32 1, !dbg !286
  %12 = call i32 @nn_excl_can_recv(ptr noundef %11), !dbg !287
  %13 = icmp ne i32 %12, 0, !dbg !287
  %14 = zext i1 %13 to i64, !dbg !287
  %15 = select i1 %13, i32 1, i32 0, !dbg !287
  ret i32 %15, !dbg !288
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_sub_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !289 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !290, metadata !DIExpression()), !dbg !291
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata ptr %6, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata ptr %7, metadata !296, metadata !DIExpression()), !dbg !297
  %8 = load ptr, ptr %4, align 8, !dbg !298
  %9 = icmp ne ptr %8, null, !dbg !298
  br i1 %9, label %10, label %13, !dbg !298

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !298
  %12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !298
  br label %14, !dbg !298

13:                                               ; preds = %2
  br label %14, !dbg !298

14:                                               ; preds = %13, %10
  %15 = phi ptr [ %12, %10 ], [ null, %13 ], !dbg !298
  store ptr %15, ptr %7, align 8, !dbg !299
  br label %16, !dbg !300

16:                                               ; preds = %14, %56, %70
  %17 = load ptr, ptr %7, align 8, !dbg !301
  %18 = getelementptr inbounds %struct.nn_sub, ptr %17, i32 0, i32 1, !dbg !303
  %19 = load ptr, ptr %5, align 8, !dbg !304
  %20 = call i32 @nn_excl_recv(ptr noundef %18, ptr noundef %19), !dbg !305
  store i32 %20, ptr %6, align 4, !dbg !306
  %21 = load i32, ptr %6, align 4, !dbg !307
  %22 = icmp eq i32 %21, -11, !dbg !307
  %23 = zext i1 %22 to i32, !dbg !307
  %24 = sext i32 %23 to i64, !dbg !307
  %25 = icmp ne i64 %24, 0, !dbg !307
  br i1 %25, label %26, label %27, !dbg !309

26:                                               ; preds = %16
  store i32 -11, ptr %3, align 4, !dbg !310
  br label %71, !dbg !310

27:                                               ; preds = %16
  br label %28, !dbg !311

28:                                               ; preds = %27
  %29 = load i32, ptr %6, align 4, !dbg !312
  %30 = icmp sge i32 %29, 0, !dbg !312
  %31 = xor i1 %30, true, !dbg !312
  %32 = zext i1 %31 to i32, !dbg !312
  %33 = sext i32 %32 to i64, !dbg !312
  %34 = icmp ne i64 %33, 0, !dbg !312
  br i1 %34, label %35, label %43, !dbg !315

35:                                               ; preds = %28
  %36 = load ptr, ptr @stderr, align 8, !dbg !316
  %37 = load i32, ptr %6, align 4, !dbg !316
  %38 = sub nsw i32 0, %37, !dbg !316
  %39 = call ptr @nn_err_strerror(i32 noundef %38), !dbg !316
  %40 = load i32, ptr %6, align 4, !dbg !316
  %41 = sub nsw i32 0, %40, !dbg !316
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.2, ptr noundef %39, i32 noundef %41, ptr noundef @.str.1, i32 noundef 138), !dbg !316
  call void @nn_err_abort() #4, !dbg !316
  unreachable, !dbg !316

43:                                               ; preds = %28
  br label %44, !dbg !315

44:                                               ; preds = %43
  %45 = load ptr, ptr %7, align 8, !dbg !318
  %46 = getelementptr inbounds %struct.nn_sub, ptr %45, i32 0, i32 2, !dbg !319
  %47 = load ptr, ptr %5, align 8, !dbg !320
  %48 = getelementptr inbounds %struct.nn_msg, ptr %47, i32 0, i32 1, !dbg !321
  %49 = call ptr @nn_chunkref_data(ptr noundef %48), !dbg !322
  %50 = load ptr, ptr %5, align 8, !dbg !323
  %51 = getelementptr inbounds %struct.nn_msg, ptr %50, i32 0, i32 1, !dbg !324
  %52 = call i64 @nn_chunkref_size(ptr noundef %51), !dbg !325
  %53 = call i32 @nn_trie_match(ptr noundef %46, ptr noundef %49, i64 noundef %52), !dbg !326
  store i32 %53, ptr %6, align 4, !dbg !327
  %54 = load i32, ptr %6, align 4, !dbg !328
  %55 = icmp eq i32 %54, 0, !dbg !330
  br i1 %55, label %56, label %57, !dbg !331

56:                                               ; preds = %44
  br label %16, !dbg !332, !llvm.loop !333

57:                                               ; preds = %44
  %58 = load i32, ptr %6, align 4, !dbg !335
  %59 = icmp eq i32 %58, 1, !dbg !337
  br i1 %59, label %60, label %61, !dbg !338

60:                                               ; preds = %57
  store i32 0, ptr %3, align 4, !dbg !339
  br label %71, !dbg !339

61:                                               ; preds = %57
  br label %62, !dbg !340

62:                                               ; preds = %61
  %63 = load ptr, ptr @stderr, align 8, !dbg !341
  %64 = load i32, ptr %6, align 4, !dbg !341
  %65 = sub nsw i32 0, %64, !dbg !341
  %66 = call ptr @nn_err_strerror(i32 noundef %65), !dbg !341
  %67 = load i32, ptr %6, align 4, !dbg !341
  %68 = sub nsw i32 0, %67, !dbg !341
  %69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef @.str.2, ptr noundef %66, i32 noundef %68, ptr noundef @.str.1, i32 noundef 145), !dbg !341
  call void @nn_err_abort() #4, !dbg !341
  unreachable, !dbg !341

70:                                               ; No predecessors!
  br label %16, !dbg !300, !llvm.loop !333

71:                                               ; preds = %60, %26
  %72 = load i32, ptr %3, align 4, !dbg !345
  ret i32 %72, !dbg !345
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_sub_setopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !346 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !347, metadata !DIExpression()), !dbg !348
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !349, metadata !DIExpression()), !dbg !350
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !351, metadata !DIExpression()), !dbg !352
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !353, metadata !DIExpression()), !dbg !354
  store i64 %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !355, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata ptr %12, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata ptr %13, metadata !359, metadata !DIExpression()), !dbg !360
  %14 = load ptr, ptr %7, align 8, !dbg !361
  %15 = icmp ne ptr %14, null, !dbg !361
  br i1 %15, label %16, label %19, !dbg !361

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !361
  %18 = getelementptr inbounds i8, ptr %17, i64 0, !dbg !361
  br label %20, !dbg !361

19:                                               ; preds = %5
  br label %20, !dbg !361

20:                                               ; preds = %19, %16
  %21 = phi ptr [ %18, %16 ], [ null, %19 ], !dbg !361
  store ptr %21, ptr %13, align 8, !dbg !362
  %22 = load i32, ptr %8, align 4, !dbg !363
  %23 = icmp ne i32 %22, 33, !dbg !365
  br i1 %23, label %24, label %25, !dbg !366

24:                                               ; preds = %20
  store i32 -92, ptr %6, align 4, !dbg !367
  br label %54, !dbg !367

25:                                               ; preds = %20
  %26 = load i32, ptr %9, align 4, !dbg !368
  %27 = icmp eq i32 %26, 1, !dbg !370
  br i1 %27, label %28, label %39, !dbg !371

28:                                               ; preds = %25
  %29 = load ptr, ptr %13, align 8, !dbg !372
  %30 = getelementptr inbounds %struct.nn_sub, ptr %29, i32 0, i32 2, !dbg !374
  %31 = load ptr, ptr %10, align 8, !dbg !375
  %32 = load i64, ptr %11, align 8, !dbg !376
  %33 = call i32 @nn_trie_subscribe(ptr noundef %30, ptr noundef %31, i64 noundef %32), !dbg !377
  store i32 %33, ptr %12, align 4, !dbg !378
  %34 = load i32, ptr %12, align 4, !dbg !379
  %35 = icmp sge i32 %34, 0, !dbg !381
  br i1 %35, label %36, label %37, !dbg !382

36:                                               ; preds = %28
  store i32 0, ptr %6, align 4, !dbg !383
  br label %54, !dbg !383

37:                                               ; preds = %28
  %38 = load i32, ptr %12, align 4, !dbg !384
  store i32 %38, ptr %6, align 4, !dbg !385
  br label %54, !dbg !385

39:                                               ; preds = %25
  %40 = load i32, ptr %9, align 4, !dbg !386
  %41 = icmp eq i32 %40, 2, !dbg !388
  br i1 %41, label %42, label %53, !dbg !389

42:                                               ; preds = %39
  %43 = load ptr, ptr %13, align 8, !dbg !390
  %44 = getelementptr inbounds %struct.nn_sub, ptr %43, i32 0, i32 2, !dbg !392
  %45 = load ptr, ptr %10, align 8, !dbg !393
  %46 = load i64, ptr %11, align 8, !dbg !394
  %47 = call i32 @nn_trie_unsubscribe(ptr noundef %44, ptr noundef %45, i64 noundef %46), !dbg !395
  store i32 %47, ptr %12, align 4, !dbg !396
  %48 = load i32, ptr %12, align 4, !dbg !397
  %49 = icmp sge i32 %48, 0, !dbg !399
  br i1 %49, label %50, label %51, !dbg !400

50:                                               ; preds = %42
  store i32 0, ptr %6, align 4, !dbg !401
  br label %54, !dbg !401

51:                                               ; preds = %42
  %52 = load i32, ptr %12, align 4, !dbg !402
  store i32 %52, ptr %6, align 4, !dbg !403
  br label %54, !dbg !403

53:                                               ; preds = %39
  store i32 -92, ptr %6, align 4, !dbg !404
  br label %54, !dbg !404

54:                                               ; preds = %53, %51, %50, %37, %36, %24
  %55 = load i32, ptr %6, align 4, !dbg !405
  ret i32 %55, !dbg !405
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_sub_getopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !406 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !407, metadata !DIExpression()), !dbg !408
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !409, metadata !DIExpression()), !dbg !410
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !411, metadata !DIExpression()), !dbg !412
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !413, metadata !DIExpression()), !dbg !414
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !415, metadata !DIExpression()), !dbg !416
  ret i32 -92, !dbg !417
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_sub_term(ptr noundef %0) #0 !dbg !418 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !421, metadata !DIExpression()), !dbg !422
  %3 = load ptr, ptr %2, align 8, !dbg !423
  %4 = getelementptr inbounds %struct.nn_sub, ptr %3, i32 0, i32 2, !dbg !424
  call void @nn_trie_term(ptr noundef %4), !dbg !425
  %5 = load ptr, ptr %2, align 8, !dbg !426
  %6 = getelementptr inbounds %struct.nn_sub, ptr %5, i32 0, i32 1, !dbg !427
  call void @nn_excl_term(ptr noundef %6), !dbg !428
  %7 = load ptr, ptr %2, align 8, !dbg !429
  %8 = getelementptr inbounds %struct.nn_sub, ptr %7, i32 0, i32 0, !dbg !430
  call void @nn_sockbase_term(ptr noundef %8), !dbg !431
  ret void, !dbg !432
}

declare void @nn_free(ptr noundef) #2

declare void @nn_trie_term(ptr noundef) #2

declare void @nn_excl_term(ptr noundef) #2

declare void @nn_sockbase_term(ptr noundef) #2

declare i32 @nn_excl_add(ptr noundef, ptr noundef) #2

declare void @nn_excl_rm(ptr noundef, ptr noundef) #2

declare void @nn_excl_in(ptr noundef, ptr noundef) #2

declare void @nn_excl_out(ptr noundef, ptr noundef) #2

declare i32 @nn_excl_can_recv(ptr noundef) #2

declare i32 @nn_excl_recv(ptr noundef, ptr noundef) #2

declare ptr @nn_err_strerror(i32 noundef) #2

declare i32 @nn_trie_match(ptr noundef, ptr noundef, i64 noundef) #2

declare ptr @nn_chunkref_data(ptr noundef) #2

declare i64 @nn_chunkref_size(ptr noundef) #2

declare i32 @nn_trie_subscribe(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @nn_trie_unsubscribe(ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_sub_socktype_struct", scope: !2, file: !7, line: 200, type: !132, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !128, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/protocols/pubsub/sub.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc5b88244588f3d83f199a6fde916715")
!4 = !{!5, !126, !28}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sub", file: !7, line: 37, size: 384, elements: !8)
!7 = !DIFile(filename: "./src/protocols/pubsub/sub.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc5b88244588f3d83f199a6fde916715")
!8 = !{!9, !82, !89}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !6, file: !7, line: 38, baseType: !10, size: 128)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !11, line: 123, size: 128, elements: !12)
!11 = !DIFile(filename: "./src/protocols/pubsub/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!12 = !{!13, !79}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !10, file: !11, line: 124, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase_vfptr", file: !11, line: 84, size: 704, elements: !17)
!17 = !{!18, !23, !24, !31, !35, !36, !37, !41, !63, !64, !73}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !16, file: !11, line: 87, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !16, file: !11, line: 90, baseType: !19, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !16, file: !11, line: 97, baseType: !25, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !22, !29}
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !11, line: 56, flags: DIFlagFwdDecl)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !16, file: !11, line: 98, baseType: !32, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !22, !29}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !16, file: !11, line: 99, baseType: !32, size: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !16, file: !11, line: 100, baseType: !32, size: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !16, file: !11, line: 104, baseType: !38, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!28, !22}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !16, file: !11, line: 108, baseType: !42, size: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!28, !22, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !47, line: 30, size: 512, elements: !48)
!47 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!48 = !{!49, !62}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !46, file: !47, line: 33, baseType: !50, size: 256)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !51, line: 39, size: 256, elements: !52)
!51 = !DIFile(filename: "src/utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !50, file: !51, line: 40, baseType: !54, size: 256)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 256, elements: !60)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !56, line: 24, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !58, line: 38, baseType: !59)
!58 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!59 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!60 = !{!61}
!61 = !DISubrange(count: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !46, file: !47, line: 36, baseType: !50, size: 256, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !16, file: !11, line: 112, baseType: !42, size: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !16, file: !11, line: 115, baseType: !65, size: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!28, !22, !28, !28, !68, !70}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!72 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !16, file: !11, line: 119, baseType: !74, size: 64, offset: 640)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!28, !22, !28, !28, !77, !78}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !10, file: !11, line: 125, baseType: !80, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !11, line: 125, flags: DIFlagFwdDecl)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "excl", scope: !6, file: !7, line: 39, baseType: !83, size: 192, offset: 128)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_excl", file: !84, line: 33, size: 192, elements: !85)
!84 = !DIFile(filename: "./src/protocols/pubsub/../utils/excl.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "f0be91890d61f5b1f69020e9c0441656")
!85 = !{!86, !87, !88}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !83, file: !84, line: 37, baseType: !29, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "inpipe", scope: !83, file: !84, line: 40, baseType: !29, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "outpipe", scope: !83, file: !84, line: 43, baseType: !29, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "trie", scope: !6, file: !7, line: 40, baseType: !90, size: 64, offset: 320)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_trie", file: !91, line: 87, size: 64, elements: !92)
!91 = !DIFile(filename: "./src/protocols/pubsub/trie.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "c4b73a9cd9b6d491981dbd0f39fd735b")
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !90, file: !91, line: 90, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_trie_node", file: !91, line: 44, size: 192, elements: !96)
!96 = !{!97, !101, !102, !103, !107}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !95, file: !91, line: 47, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !56, line: 26, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !58, line: 42, baseType: !100)
!100 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !91, line: 51, baseType: !55, size: 8, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_len", scope: !95, file: !91, line: 57, baseType: !55, size: 8, offset: 40)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !95, file: !91, line: 58, baseType: !104, size: 80, offset: 48)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 80, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 10)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !95, file: !91, line: 83, baseType: !108, size: 64, offset: 128)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !95, file: !91, line: 63, size: 64, elements: !109)
!109 = !{!110, !117}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "sparse", scope: !108, file: !91, line: 70, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !108, file: !91, line: 68, size: 64, elements: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !111, file: !91, line: 69, baseType: !114, size: 64)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 8)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "dense", scope: !108, file: !91, line: 82, baseType: !118, size: 32)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !108, file: !91, line: 77, size: 32, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !118, file: !91, line: 78, baseType: !55, size: 8)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !118, file: !91, line: 79, baseType: !55, size: 8, offset: 8)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "nbr", scope: !118, file: !91, line: 80, baseType: !123, size: 16, offset: 16)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !56, line: 25, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !58, line: 40, baseType: !125)
!125 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!128 = !{!129, !0, !153, !158, !163, !165}
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "nn_sub_socktype", scope: !2, file: !7, line: 209, type: !131, isLocal: false, isDefinition: true)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !11, line: 160, size: 384, elements: !133)
!133 = !{!134, !135, !136, !137, !142, !146}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !132, file: !11, line: 163, baseType: !28, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !132, file: !11, line: 164, baseType: !28, size: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !11, line: 167, baseType: !28, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !132, file: !11, line: 173, baseType: !138, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!28, !77, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !132, file: !11, line: 179, baseType: !143, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!28, !28}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !132, file: !11, line: 183, baseType: !147, size: 128, offset: 256)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !148, line: 26, size: 128, elements: !149)
!148 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!149 = !{!150, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !148, line: 27, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !147, file: !148, line: 28, baseType: !151, size: 64, offset: 64)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !7, line: 188, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 184, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 23)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !7, line: 188, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 232, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 29)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "nn_sub_sockbase_vfptr", scope: !2, file: !7, line: 60, type: !15, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !7, line: 138, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 136, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 17)
!170 = !{i32 7, !"Dwarf Version", i32 5}
!171 = !{i32 2, !"Debug Info Version", i32 3}
!172 = !{i32 1, !"wchar_size", i32 4}
!173 = !{i32 8, !"PIC Level", i32 2}
!174 = !{i32 7, !"PIE Level", i32 2}
!175 = !{i32 7, !"uwtable", i32 2}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 16.0.0"}
!178 = distinct !DISubprogram(name: "nn_sub_create", scope: !7, file: !7, line: 183, type: !139, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!179 = !{}
!180 = !DILocalVariable(name: "hint", arg: 1, scope: !178, file: !7, line: 183, type: !77)
!181 = !DILocation(line: 183, column: 33, scope: !178)
!182 = !DILocalVariable(name: "sockbase", arg: 2, scope: !178, file: !7, line: 183, type: !141)
!183 = !DILocation(line: 183, column: 60, scope: !178)
!184 = !DILocalVariable(name: "self", scope: !178, file: !7, line: 185, type: !5)
!185 = !DILocation(line: 185, column: 20, scope: !178)
!186 = !DILocation(line: 187, column: 12, scope: !178)
!187 = !DILocation(line: 187, column: 10, scope: !178)
!188 = !DILocation(line: 188, column: 5, scope: !178)
!189 = !DILocation(line: 188, column: 5, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !7, line: 188, column: 5)
!191 = distinct !DILexicalBlock(scope: !178, file: !7, line: 188, column: 5)
!192 = !DILocation(line: 188, column: 5, scope: !191)
!193 = !DILocation(line: 188, column: 5, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !7, line: 188, column: 5)
!195 = !DILocation(line: 189, column: 18, scope: !178)
!196 = !DILocation(line: 189, column: 48, scope: !178)
!197 = !DILocation(line: 189, column: 5, scope: !178)
!198 = !DILocation(line: 190, column: 18, scope: !178)
!199 = !DILocation(line: 190, column: 24, scope: !178)
!200 = !DILocation(line: 190, column: 6, scope: !178)
!201 = !DILocation(line: 190, column: 15, scope: !178)
!202 = !DILocation(line: 192, column: 5, scope: !178)
!203 = distinct !DISubprogram(name: "nn_sub_ispeer", scope: !7, file: !7, line: 195, type: !144, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!204 = !DILocalVariable(name: "socktype", arg: 1, scope: !203, file: !7, line: 195, type: !28)
!205 = !DILocation(line: 195, column: 31, scope: !203)
!206 = !DILocation(line: 197, column: 12, scope: !203)
!207 = !DILocation(line: 197, column: 21, scope: !203)
!208 = !DILocation(line: 197, column: 5, scope: !203)
!209 = distinct !DISubprogram(name: "nn_sub_init", scope: !7, file: !7, line: 74, type: !210, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !5, !14, !77}
!212 = !DILocalVariable(name: "self", arg: 1, scope: !209, file: !7, line: 74, type: !5)
!213 = !DILocation(line: 74, column: 41, scope: !209)
!214 = !DILocalVariable(name: "vfptr", arg: 2, scope: !209, file: !7, line: 75, type: !14)
!215 = !DILocation(line: 75, column: 37, scope: !209)
!216 = !DILocalVariable(name: "hint", arg: 3, scope: !209, file: !7, line: 75, type: !77)
!217 = !DILocation(line: 75, column: 50, scope: !209)
!218 = !DILocation(line: 77, column: 24, scope: !209)
!219 = !DILocation(line: 77, column: 30, scope: !209)
!220 = !DILocation(line: 77, column: 40, scope: !209)
!221 = !DILocation(line: 77, column: 47, scope: !209)
!222 = !DILocation(line: 77, column: 5, scope: !209)
!223 = !DILocation(line: 78, column: 20, scope: !209)
!224 = !DILocation(line: 78, column: 26, scope: !209)
!225 = !DILocation(line: 78, column: 5, scope: !209)
!226 = !DILocation(line: 79, column: 20, scope: !209)
!227 = !DILocation(line: 79, column: 26, scope: !209)
!228 = !DILocation(line: 79, column: 5, scope: !209)
!229 = !DILocation(line: 80, column: 1, scope: !209)
!230 = distinct !DISubprogram(name: "nn_sub_destroy", scope: !7, file: !7, line: 89, type: !20, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!231 = !DILocalVariable(name: "self", arg: 1, scope: !230, file: !7, line: 89, type: !22)
!232 = !DILocation(line: 89, column: 42, scope: !230)
!233 = !DILocalVariable(name: "sub", scope: !230, file: !7, line: 91, type: !5)
!234 = !DILocation(line: 91, column: 20, scope: !230)
!235 = !DILocation(line: 93, column: 11, scope: !230)
!236 = !DILocation(line: 93, column: 9, scope: !230)
!237 = !DILocation(line: 95, column: 18, scope: !230)
!238 = !DILocation(line: 95, column: 5, scope: !230)
!239 = !DILocation(line: 96, column: 14, scope: !230)
!240 = !DILocation(line: 96, column: 5, scope: !230)
!241 = !DILocation(line: 97, column: 1, scope: !230)
!242 = distinct !DISubprogram(name: "nn_sub_add", scope: !7, file: !7, line: 99, type: !26, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!243 = !DILocalVariable(name: "self", arg: 1, scope: !242, file: !7, line: 99, type: !22)
!244 = !DILocation(line: 99, column: 44, scope: !242)
!245 = !DILocalVariable(name: "pipe", arg: 2, scope: !242, file: !7, line: 99, type: !29)
!246 = !DILocation(line: 99, column: 66, scope: !242)
!247 = !DILocation(line: 101, column: 26, scope: !242)
!248 = !DILocation(line: 101, column: 67, scope: !242)
!249 = !DILocation(line: 101, column: 73, scope: !242)
!250 = !DILocation(line: 101, column: 12, scope: !242)
!251 = !DILocation(line: 101, column: 5, scope: !242)
!252 = distinct !DISubprogram(name: "nn_sub_rm", scope: !7, file: !7, line: 104, type: !33, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!253 = !DILocalVariable(name: "self", arg: 1, scope: !252, file: !7, line: 104, type: !22)
!254 = !DILocation(line: 104, column: 44, scope: !252)
!255 = !DILocalVariable(name: "pipe", arg: 2, scope: !252, file: !7, line: 104, type: !29)
!256 = !DILocation(line: 104, column: 66, scope: !252)
!257 = !DILocation(line: 106, column: 18, scope: !252)
!258 = !DILocation(line: 106, column: 59, scope: !252)
!259 = !DILocation(line: 106, column: 65, scope: !252)
!260 = !DILocation(line: 106, column: 5, scope: !252)
!261 = !DILocation(line: 107, column: 1, scope: !252)
!262 = distinct !DISubprogram(name: "nn_sub_in", scope: !7, file: !7, line: 109, type: !33, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!263 = !DILocalVariable(name: "self", arg: 1, scope: !262, file: !7, line: 109, type: !22)
!264 = !DILocation(line: 109, column: 44, scope: !262)
!265 = !DILocalVariable(name: "pipe", arg: 2, scope: !262, file: !7, line: 109, type: !29)
!266 = !DILocation(line: 109, column: 66, scope: !262)
!267 = !DILocation(line: 111, column: 18, scope: !262)
!268 = !DILocation(line: 111, column: 59, scope: !262)
!269 = !DILocation(line: 111, column: 65, scope: !262)
!270 = !DILocation(line: 111, column: 5, scope: !262)
!271 = !DILocation(line: 112, column: 1, scope: !262)
!272 = distinct !DISubprogram(name: "nn_sub_out", scope: !7, file: !7, line: 114, type: !33, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!273 = !DILocalVariable(name: "self", arg: 1, scope: !272, file: !7, line: 114, type: !22)
!274 = !DILocation(line: 114, column: 45, scope: !272)
!275 = !DILocalVariable(name: "pipe", arg: 2, scope: !272, file: !7, line: 114, type: !29)
!276 = !DILocation(line: 114, column: 67, scope: !272)
!277 = !DILocation(line: 116, column: 19, scope: !272)
!278 = !DILocation(line: 116, column: 60, scope: !272)
!279 = !DILocation(line: 116, column: 66, scope: !272)
!280 = !DILocation(line: 116, column: 5, scope: !272)
!281 = !DILocation(line: 117, column: 1, scope: !272)
!282 = distinct !DISubprogram(name: "nn_sub_events", scope: !7, file: !7, line: 119, type: !39, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!283 = !DILocalVariable(name: "self", arg: 1, scope: !282, file: !7, line: 119, type: !22)
!284 = !DILocation(line: 119, column: 47, scope: !282)
!285 = !DILocation(line: 121, column: 31, scope: !282)
!286 = !DILocation(line: 121, column: 72, scope: !282)
!287 = !DILocation(line: 121, column: 12, scope: !282)
!288 = !DILocation(line: 121, column: 5, scope: !282)
!289 = distinct !DISubprogram(name: "nn_sub_recv", scope: !7, file: !7, line: 125, type: !43, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!290 = !DILocalVariable(name: "self", arg: 1, scope: !289, file: !7, line: 125, type: !22)
!291 = !DILocation(line: 125, column: 45, scope: !289)
!292 = !DILocalVariable(name: "msg", arg: 2, scope: !289, file: !7, line: 125, type: !45)
!293 = !DILocation(line: 125, column: 66, scope: !289)
!294 = !DILocalVariable(name: "rc", scope: !289, file: !7, line: 127, type: !28)
!295 = !DILocation(line: 127, column: 9, scope: !289)
!296 = !DILocalVariable(name: "sub", scope: !289, file: !7, line: 128, type: !5)
!297 = !DILocation(line: 128, column: 20, scope: !289)
!298 = !DILocation(line: 130, column: 11, scope: !289)
!299 = !DILocation(line: 130, column: 9, scope: !289)
!300 = !DILocation(line: 134, column: 5, scope: !289)
!301 = !DILocation(line: 135, column: 29, scope: !302)
!302 = distinct !DILexicalBlock(scope: !289, file: !7, line: 134, column: 15)
!303 = !DILocation(line: 135, column: 34, scope: !302)
!304 = !DILocation(line: 135, column: 40, scope: !302)
!305 = !DILocation(line: 135, column: 14, scope: !302)
!306 = !DILocation(line: 135, column: 12, scope: !302)
!307 = !DILocation(line: 136, column: 13, scope: !308)
!308 = distinct !DILexicalBlock(scope: !302, file: !7, line: 136, column: 13)
!309 = !DILocation(line: 136, column: 13, scope: !302)
!310 = !DILocation(line: 137, column: 13, scope: !308)
!311 = !DILocation(line: 138, column: 9, scope: !302)
!312 = !DILocation(line: 138, column: 9, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !7, line: 138, column: 9)
!314 = distinct !DILexicalBlock(scope: !302, file: !7, line: 138, column: 9)
!315 = !DILocation(line: 138, column: 9, scope: !314)
!316 = !DILocation(line: 138, column: 9, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !7, line: 138, column: 9)
!318 = !DILocation(line: 139, column: 30, scope: !302)
!319 = !DILocation(line: 139, column: 35, scope: !302)
!320 = !DILocation(line: 139, column: 60, scope: !302)
!321 = !DILocation(line: 139, column: 65, scope: !302)
!322 = !DILocation(line: 139, column: 41, scope: !302)
!323 = !DILocation(line: 140, column: 32, scope: !302)
!324 = !DILocation(line: 140, column: 37, scope: !302)
!325 = !DILocation(line: 140, column: 13, scope: !302)
!326 = !DILocation(line: 139, column: 14, scope: !302)
!327 = !DILocation(line: 139, column: 12, scope: !302)
!328 = !DILocation(line: 141, column: 13, scope: !329)
!329 = distinct !DILexicalBlock(scope: !302, file: !7, line: 141, column: 13)
!330 = !DILocation(line: 141, column: 16, scope: !329)
!331 = !DILocation(line: 141, column: 13, scope: !302)
!332 = !DILocation(line: 142, column: 13, scope: !329)
!333 = distinct !{!333, !300, !334}
!334 = !DILocation(line: 146, column: 5, scope: !289)
!335 = !DILocation(line: 143, column: 13, scope: !336)
!336 = distinct !DILexicalBlock(scope: !302, file: !7, line: 143, column: 13)
!337 = !DILocation(line: 143, column: 16, scope: !336)
!338 = !DILocation(line: 143, column: 13, scope: !302)
!339 = !DILocation(line: 144, column: 13, scope: !336)
!340 = !DILocation(line: 145, column: 9, scope: !302)
!341 = !DILocation(line: 145, column: 9, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !7, line: 145, column: 9)
!343 = distinct !DILexicalBlock(scope: !344, file: !7, line: 145, column: 9)
!344 = distinct !DILexicalBlock(scope: !302, file: !7, line: 145, column: 9)
!345 = !DILocation(line: 147, column: 1, scope: !289)
!346 = distinct !DISubprogram(name: "nn_sub_setopt", scope: !7, file: !7, line: 149, type: !66, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!347 = !DILocalVariable(name: "self", arg: 1, scope: !346, file: !7, line: 149, type: !22)
!348 = !DILocation(line: 149, column: 47, scope: !346)
!349 = !DILocalVariable(name: "level", arg: 2, scope: !346, file: !7, line: 149, type: !28)
!350 = !DILocation(line: 149, column: 57, scope: !346)
!351 = !DILocalVariable(name: "option", arg: 3, scope: !346, file: !7, line: 149, type: !28)
!352 = !DILocation(line: 149, column: 68, scope: !346)
!353 = !DILocalVariable(name: "optval", arg: 4, scope: !346, file: !7, line: 150, type: !68)
!354 = !DILocation(line: 150, column: 21, scope: !346)
!355 = !DILocalVariable(name: "optvallen", arg: 5, scope: !346, file: !7, line: 150, type: !70)
!356 = !DILocation(line: 150, column: 36, scope: !346)
!357 = !DILocalVariable(name: "rc", scope: !346, file: !7, line: 152, type: !28)
!358 = !DILocation(line: 152, column: 9, scope: !346)
!359 = !DILocalVariable(name: "sub", scope: !346, file: !7, line: 153, type: !5)
!360 = !DILocation(line: 153, column: 20, scope: !346)
!361 = !DILocation(line: 155, column: 11, scope: !346)
!362 = !DILocation(line: 155, column: 9, scope: !346)
!363 = !DILocation(line: 157, column: 9, scope: !364)
!364 = distinct !DILexicalBlock(scope: !346, file: !7, line: 157, column: 9)
!365 = !DILocation(line: 157, column: 15, scope: !364)
!366 = !DILocation(line: 157, column: 9, scope: !346)
!367 = !DILocation(line: 158, column: 9, scope: !364)
!368 = !DILocation(line: 160, column: 9, scope: !369)
!369 = distinct !DILexicalBlock(scope: !346, file: !7, line: 160, column: 9)
!370 = !DILocation(line: 160, column: 16, scope: !369)
!371 = !DILocation(line: 160, column: 9, scope: !346)
!372 = !DILocation(line: 161, column: 34, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !7, line: 160, column: 37)
!374 = !DILocation(line: 161, column: 39, scope: !373)
!375 = !DILocation(line: 161, column: 45, scope: !373)
!376 = !DILocation(line: 161, column: 53, scope: !373)
!377 = !DILocation(line: 161, column: 14, scope: !373)
!378 = !DILocation(line: 161, column: 12, scope: !373)
!379 = !DILocation(line: 162, column: 13, scope: !380)
!380 = distinct !DILexicalBlock(scope: !373, file: !7, line: 162, column: 13)
!381 = !DILocation(line: 162, column: 16, scope: !380)
!382 = !DILocation(line: 162, column: 13, scope: !373)
!383 = !DILocation(line: 163, column: 13, scope: !380)
!384 = !DILocation(line: 164, column: 16, scope: !373)
!385 = !DILocation(line: 164, column: 9, scope: !373)
!386 = !DILocation(line: 167, column: 9, scope: !387)
!387 = distinct !DILexicalBlock(scope: !346, file: !7, line: 167, column: 9)
!388 = !DILocation(line: 167, column: 16, scope: !387)
!389 = !DILocation(line: 167, column: 9, scope: !346)
!390 = !DILocation(line: 168, column: 36, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !7, line: 167, column: 39)
!392 = !DILocation(line: 168, column: 41, scope: !391)
!393 = !DILocation(line: 168, column: 47, scope: !391)
!394 = !DILocation(line: 168, column: 55, scope: !391)
!395 = !DILocation(line: 168, column: 14, scope: !391)
!396 = !DILocation(line: 168, column: 12, scope: !391)
!397 = !DILocation(line: 169, column: 13, scope: !398)
!398 = distinct !DILexicalBlock(scope: !391, file: !7, line: 169, column: 13)
!399 = !DILocation(line: 169, column: 16, scope: !398)
!400 = !DILocation(line: 169, column: 13, scope: !391)
!401 = !DILocation(line: 170, column: 13, scope: !398)
!402 = !DILocation(line: 171, column: 16, scope: !391)
!403 = !DILocation(line: 171, column: 9, scope: !391)
!404 = !DILocation(line: 174, column: 5, scope: !346)
!405 = !DILocation(line: 175, column: 1, scope: !346)
!406 = distinct !DISubprogram(name: "nn_sub_getopt", scope: !7, file: !7, line: 177, type: !75, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!407 = !DILocalVariable(name: "self", arg: 1, scope: !406, file: !7, line: 177, type: !22)
!408 = !DILocation(line: 177, column: 47, scope: !406)
!409 = !DILocalVariable(name: "level", arg: 2, scope: !406, file: !7, line: 177, type: !28)
!410 = !DILocation(line: 177, column: 57, scope: !406)
!411 = !DILocalVariable(name: "option", arg: 3, scope: !406, file: !7, line: 177, type: !28)
!412 = !DILocation(line: 177, column: 68, scope: !406)
!413 = !DILocalVariable(name: "optval", arg: 4, scope: !406, file: !7, line: 178, type: !77)
!414 = !DILocation(line: 178, column: 15, scope: !406)
!415 = !DILocalVariable(name: "optvallen", arg: 5, scope: !406, file: !7, line: 178, type: !78)
!416 = !DILocation(line: 178, column: 31, scope: !406)
!417 = !DILocation(line: 180, column: 5, scope: !406)
!418 = distinct !DISubprogram(name: "nn_sub_term", scope: !7, file: !7, line: 82, type: !419, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !5}
!421 = !DILocalVariable(name: "self", arg: 1, scope: !418, file: !7, line: 82, type: !5)
!422 = !DILocation(line: 82, column: 41, scope: !418)
!423 = !DILocation(line: 84, column: 20, scope: !418)
!424 = !DILocation(line: 84, column: 26, scope: !418)
!425 = !DILocation(line: 84, column: 5, scope: !418)
!426 = !DILocation(line: 85, column: 20, scope: !418)
!427 = !DILocation(line: 85, column: 26, scope: !418)
!428 = !DILocation(line: 85, column: 5, scope: !418)
!429 = !DILocation(line: 86, column: 24, scope: !418)
!430 = !DILocation(line: 86, column: 30, scope: !418)
!431 = !DILocation(line: 86, column: 5, scope: !418)
!432 = !DILocation(line: 87, column: 1, scope: !418)
