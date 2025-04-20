; ModuleID = './src/protocols/reqrep/xrep.c'
source_filename = "./src/protocols/reqrep/xrep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_sockbase_vfptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nn_xrep = type { %struct.nn_sockbase, i32, %struct.nn_hash, %struct.nn_fq }
%struct.nn_sockbase = type { ptr, ptr }
%struct.nn_hash = type { i32, i32, ptr }
%struct.nn_fq = type { %struct.nn_priolist }
%struct.nn_priolist = type { [16 x %struct.nn_priolist_slot], i32 }
%struct.nn_priolist_slot = type { %struct.nn_list, ptr }
%struct.nn_list = type { ptr, ptr }
%struct.nn_xrep_data = type { ptr, %struct.nn_hash_item, %struct.nn_fq_data, i32 }
%struct.nn_hash_item = type { i32, %struct.nn_list_item }
%struct.nn_fq_data = type { %struct.nn_priolist_data }
%struct.nn_priolist_data = type { ptr, i32, %struct.nn_list_item }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"./src/protocols/reqrep/xrep.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [34 x i8] c"nn_chunkref_size (&msg->hdr) == 0\00", align 1, !dbg !19
@nn_xrep_socktype_struct = internal global %struct.nn_socktype { i32 2, i32 49, i32 0, ptr @nn_xrep_create, ptr @nn_xrep_ispeer, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !24
@nn_xrep_socktype = dso_local global ptr @nn_xrep_socktype_struct, align 8, !dbg !169
@nn_xrep_sockbase_vfptr = internal constant %struct.nn_sockbase_vfptr { ptr null, ptr @nn_xrep_destroy, ptr @nn_xrep_add, ptr @nn_xrep_rm, ptr @nn_xrep_in, ptr @nn_xrep_out, ptr @nn_xrep_events, ptr @nn_xrep_send, ptr @nn_xrep_recv, ptr @nn_xrep_setopt, ptr @nn_xrep_getopt }, align 8, !dbg !187

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xrep_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !197 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !201, metadata !DIExpression()), !dbg !202
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !203, metadata !DIExpression()), !dbg !204
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !205, metadata !DIExpression()), !dbg !206
  %7 = load ptr, ptr %4, align 8, !dbg !207
  %8 = getelementptr inbounds %struct.nn_xrep, ptr %7, i32 0, i32 0, !dbg !208
  %9 = load ptr, ptr %5, align 8, !dbg !209
  %10 = load ptr, ptr %6, align 8, !dbg !210
  call void @nn_sockbase_init(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !211
  %11 = load ptr, ptr %4, align 8, !dbg !212
  %12 = getelementptr inbounds %struct.nn_xrep, ptr %11, i32 0, i32 1, !dbg !213
  call void @nn_random_generate(ptr noundef %12, i64 noundef 4), !dbg !214
  %13 = load ptr, ptr %4, align 8, !dbg !215
  %14 = getelementptr inbounds %struct.nn_xrep, ptr %13, i32 0, i32 2, !dbg !216
  call void @nn_hash_init(ptr noundef %14), !dbg !217
  %15 = load ptr, ptr %4, align 8, !dbg !218
  %16 = getelementptr inbounds %struct.nn_xrep, ptr %15, i32 0, i32 3, !dbg !219
  call void @nn_fq_init(ptr noundef %16), !dbg !220
  ret void, !dbg !221
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_sockbase_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_random_generate(ptr noundef, i64 noundef) #2

declare void @nn_hash_init(ptr noundef) #2

declare void @nn_fq_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xrep_term(ptr noundef %0) #0 !dbg !222 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !225, metadata !DIExpression()), !dbg !226
  %3 = load ptr, ptr %2, align 8, !dbg !227
  %4 = getelementptr inbounds %struct.nn_xrep, ptr %3, i32 0, i32 3, !dbg !228
  call void @nn_fq_term(ptr noundef %4), !dbg !229
  %5 = load ptr, ptr %2, align 8, !dbg !230
  %6 = getelementptr inbounds %struct.nn_xrep, ptr %5, i32 0, i32 2, !dbg !231
  call void @nn_hash_term(ptr noundef %6), !dbg !232
  %7 = load ptr, ptr %2, align 8, !dbg !233
  %8 = getelementptr inbounds %struct.nn_xrep, ptr %7, i32 0, i32 0, !dbg !234
  call void @nn_sockbase_term(ptr noundef %8), !dbg !235
  ret void, !dbg !236
}

declare void @nn_fq_term(ptr noundef) #2

declare void @nn_hash_term(ptr noundef) #2

declare void @nn_sockbase_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xrep_add(ptr noundef %0, ptr noundef %1) #0 !dbg !237 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !238, metadata !DIExpression()), !dbg !239
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata ptr %5, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata ptr %6, metadata !244, metadata !DIExpression()), !dbg !245
  %7 = load ptr, ptr %3, align 8, !dbg !246
  %8 = icmp ne ptr %7, null, !dbg !246
  br i1 %8, label %9, label %12, !dbg !246

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !246
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !246
  br label %13, !dbg !246

12:                                               ; preds = %2
  br label %13, !dbg !246

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !246
  store ptr %14, ptr %5, align 8, !dbg !247
  %15 = call ptr @nn_alloc_(i64 noundef 72), !dbg !248
  store ptr %15, ptr %6, align 8, !dbg !249
  br label %16, !dbg !250

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8, !dbg !251
  %18 = icmp ne ptr %17, null, !dbg !251
  %19 = xor i1 %18, true, !dbg !251
  %20 = zext i1 %19 to i32, !dbg !251
  %21 = sext i32 %20 to i64, !dbg !251
  %22 = icmp ne i64 %21, 0, !dbg !251
  br i1 %22, label %23, label %26, !dbg !254

23:                                               ; preds = %16
  %24 = load ptr, ptr @stderr, align 8, !dbg !255
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 93), !dbg !255
  call void @nn_err_abort() #5, !dbg !255
  unreachable, !dbg !255

26:                                               ; preds = %16
  br label %27, !dbg !254

27:                                               ; preds = %26
  %28 = load ptr, ptr %4, align 8, !dbg !257
  %29 = load ptr, ptr %6, align 8, !dbg !258
  %30 = getelementptr inbounds %struct.nn_xrep_data, ptr %29, i32 0, i32 0, !dbg !259
  store ptr %28, ptr %30, align 8, !dbg !260
  %31 = load ptr, ptr %6, align 8, !dbg !261
  %32 = getelementptr inbounds %struct.nn_xrep_data, ptr %31, i32 0, i32 1, !dbg !262
  call void @nn_hash_item_init(ptr noundef %32), !dbg !263
  %33 = load ptr, ptr %6, align 8, !dbg !264
  %34 = getelementptr inbounds %struct.nn_xrep_data, ptr %33, i32 0, i32 3, !dbg !265
  store i32 0, ptr %34, align 8, !dbg !266
  %35 = load ptr, ptr %5, align 8, !dbg !267
  %36 = getelementptr inbounds %struct.nn_xrep, ptr %35, i32 0, i32 2, !dbg !268
  %37 = load ptr, ptr %5, align 8, !dbg !269
  %38 = getelementptr inbounds %struct.nn_xrep, ptr %37, i32 0, i32 1, !dbg !270
  %39 = load i32, ptr %38, align 8, !dbg !270
  %40 = and i32 %39, 2147483647, !dbg !271
  %41 = load ptr, ptr %6, align 8, !dbg !272
  %42 = getelementptr inbounds %struct.nn_xrep_data, ptr %41, i32 0, i32 1, !dbg !273
  call void @nn_hash_insert(ptr noundef %36, i32 noundef %40, ptr noundef %42), !dbg !274
  %43 = load ptr, ptr %5, align 8, !dbg !275
  %44 = getelementptr inbounds %struct.nn_xrep, ptr %43, i32 0, i32 1, !dbg !276
  %45 = load i32, ptr %44, align 8, !dbg !277
  %46 = add i32 %45, 1, !dbg !277
  store i32 %46, ptr %44, align 8, !dbg !277
  %47 = load ptr, ptr %5, align 8, !dbg !278
  %48 = getelementptr inbounds %struct.nn_xrep, ptr %47, i32 0, i32 3, !dbg !279
  %49 = load ptr, ptr %4, align 8, !dbg !280
  %50 = load ptr, ptr %6, align 8, !dbg !281
  %51 = getelementptr inbounds %struct.nn_xrep_data, ptr %50, i32 0, i32 2, !dbg !282
  call void @nn_fq_add(ptr noundef %48, ptr noundef %49, ptr noundef %51, i32 noundef 8), !dbg !283
  %52 = load ptr, ptr %4, align 8, !dbg !284
  %53 = load ptr, ptr %6, align 8, !dbg !285
  call void @nn_pipe_setdata(ptr noundef %52, ptr noundef %53), !dbg !286
  ret i32 0, !dbg !287
}

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_hash_item_init(ptr noundef) #2

declare void @nn_hash_insert(ptr noundef, i32 noundef, ptr noundef) #2

declare void @nn_fq_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @nn_pipe_setdata(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xrep_rm(ptr noundef %0, ptr noundef %1) #0 !dbg !288 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !289, metadata !DIExpression()), !dbg !290
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata ptr %5, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata ptr %6, metadata !295, metadata !DIExpression()), !dbg !296
  %7 = load ptr, ptr %3, align 8, !dbg !297
  %8 = icmp ne ptr %7, null, !dbg !297
  br i1 %8, label %9, label %12, !dbg !297

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !297
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !297
  br label %13, !dbg !297

12:                                               ; preds = %2
  br label %13, !dbg !297

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !297
  store ptr %14, ptr %5, align 8, !dbg !298
  %15 = load ptr, ptr %4, align 8, !dbg !299
  %16 = call ptr @nn_pipe_getdata(ptr noundef %15), !dbg !300
  store ptr %16, ptr %6, align 8, !dbg !301
  %17 = load ptr, ptr %5, align 8, !dbg !302
  %18 = getelementptr inbounds %struct.nn_xrep, ptr %17, i32 0, i32 3, !dbg !303
  %19 = load ptr, ptr %4, align 8, !dbg !304
  %20 = load ptr, ptr %6, align 8, !dbg !305
  %21 = getelementptr inbounds %struct.nn_xrep_data, ptr %20, i32 0, i32 2, !dbg !306
  call void @nn_fq_rm(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !307
  %22 = load ptr, ptr %5, align 8, !dbg !308
  %23 = getelementptr inbounds %struct.nn_xrep, ptr %22, i32 0, i32 2, !dbg !309
  %24 = load ptr, ptr %6, align 8, !dbg !310
  %25 = getelementptr inbounds %struct.nn_xrep_data, ptr %24, i32 0, i32 1, !dbg !311
  call void @nn_hash_erase(ptr noundef %23, ptr noundef %25), !dbg !312
  %26 = load ptr, ptr %6, align 8, !dbg !313
  %27 = getelementptr inbounds %struct.nn_xrep_data, ptr %26, i32 0, i32 1, !dbg !314
  call void @nn_hash_item_term(ptr noundef %27), !dbg !315
  %28 = load ptr, ptr %6, align 8, !dbg !316
  call void @nn_free(ptr noundef %28), !dbg !317
  ret void, !dbg !318
}

declare ptr @nn_pipe_getdata(ptr noundef) #2

declare void @nn_fq_rm(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_hash_erase(ptr noundef, ptr noundef) #2

declare void @nn_hash_item_term(ptr noundef) #2

declare void @nn_free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xrep_in(ptr noundef %0, ptr noundef %1) #0 !dbg !319 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !320, metadata !DIExpression()), !dbg !321
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !322, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata ptr %5, metadata !324, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.declare(metadata ptr %6, metadata !326, metadata !DIExpression()), !dbg !327
  %7 = load ptr, ptr %3, align 8, !dbg !328
  %8 = icmp ne ptr %7, null, !dbg !328
  br i1 %8, label %9, label %12, !dbg !328

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !328
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !328
  br label %13, !dbg !328

12:                                               ; preds = %2
  br label %13, !dbg !328

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !328
  store ptr %14, ptr %5, align 8, !dbg !329
  %15 = load ptr, ptr %4, align 8, !dbg !330
  %16 = call ptr @nn_pipe_getdata(ptr noundef %15), !dbg !331
  store ptr %16, ptr %6, align 8, !dbg !332
  %17 = load ptr, ptr %5, align 8, !dbg !333
  %18 = getelementptr inbounds %struct.nn_xrep, ptr %17, i32 0, i32 3, !dbg !334
  %19 = load ptr, ptr %4, align 8, !dbg !335
  %20 = load ptr, ptr %6, align 8, !dbg !336
  %21 = getelementptr inbounds %struct.nn_xrep_data, ptr %20, i32 0, i32 2, !dbg !337
  call void @nn_fq_in(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !338
  ret void, !dbg !339
}

declare void @nn_fq_in(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xrep_out(ptr noundef %0, ptr noundef %1) #0 !dbg !340 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !341, metadata !DIExpression()), !dbg !342
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !343, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.declare(metadata ptr %5, metadata !345, metadata !DIExpression()), !dbg !346
  %6 = load ptr, ptr %4, align 8, !dbg !347
  %7 = call ptr @nn_pipe_getdata(ptr noundef %6), !dbg !348
  store ptr %7, ptr %5, align 8, !dbg !349
  %8 = load ptr, ptr %5, align 8, !dbg !350
  %9 = getelementptr inbounds %struct.nn_xrep_data, ptr %8, i32 0, i32 3, !dbg !351
  %10 = load i32, ptr %9, align 8, !dbg !352
  %11 = or i32 %10, 1, !dbg !352
  store i32 %11, ptr %9, align 8, !dbg !352
  ret void, !dbg !353
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xrep_events(ptr noundef %0) #0 !dbg !354 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !355, metadata !DIExpression()), !dbg !356
  %3 = load ptr, ptr %2, align 8, !dbg !357
  %4 = icmp ne ptr %3, null, !dbg !357
  br i1 %4, label %5, label %8, !dbg !357

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !357
  %7 = getelementptr inbounds i8, ptr %6, i64 0, !dbg !357
  br label %9, !dbg !357

8:                                                ; preds = %1
  br label %9, !dbg !357

9:                                                ; preds = %8, %5
  %10 = phi ptr [ %7, %5 ], [ null, %8 ], !dbg !357
  %11 = getelementptr inbounds %struct.nn_xrep, ptr %10, i32 0, i32 3, !dbg !358
  %12 = call i32 @nn_fq_can_recv(ptr noundef %11), !dbg !359
  %13 = icmp ne i32 %12, 0, !dbg !359
  %14 = zext i1 %13 to i64, !dbg !359
  %15 = select i1 %13, i32 1, i32 0, !dbg !359
  %16 = or i32 %15, 2, !dbg !360
  ret i32 %16, !dbg !361
}

declare i32 @nn_fq_can_recv(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xrep_send(ptr noundef %0, ptr noundef %1) #0 !dbg !362 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !363, metadata !DIExpression()), !dbg !364
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !365, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.declare(metadata ptr %6, metadata !367, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.declare(metadata ptr %7, metadata !369, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata ptr %8, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata ptr %9, metadata !373, metadata !DIExpression()), !dbg !374
  %10 = load ptr, ptr %4, align 8, !dbg !375
  %11 = icmp ne ptr %10, null, !dbg !375
  br i1 %11, label %12, label %15, !dbg !375

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !dbg !375
  %14 = getelementptr inbounds i8, ptr %13, i64 0, !dbg !375
  br label %16, !dbg !375

15:                                               ; preds = %2
  br label %16, !dbg !375

16:                                               ; preds = %15, %12
  %17 = phi ptr [ %14, %12 ], [ null, %15 ], !dbg !375
  store ptr %17, ptr %8, align 8, !dbg !376
  %18 = load ptr, ptr %5, align 8, !dbg !377
  %19 = getelementptr inbounds %struct.nn_msg, ptr %18, i32 0, i32 0, !dbg !377
  %20 = call i64 @nn_chunkref_size(ptr noundef %19), !dbg !377
  %21 = icmp ult i64 %20, 4, !dbg !377
  %22 = zext i1 %21 to i32, !dbg !377
  %23 = sext i32 %22 to i64, !dbg !377
  %24 = icmp ne i64 %23, 0, !dbg !377
  br i1 %24, label %25, label %27, !dbg !379

25:                                               ; preds = %16
  %26 = load ptr, ptr %5, align 8, !dbg !380
  call void @nn_msg_term(ptr noundef %26), !dbg !382
  store i32 0, ptr %3, align 4, !dbg !383
  br label %89, !dbg !383

27:                                               ; preds = %16
  %28 = load ptr, ptr %5, align 8, !dbg !384
  %29 = getelementptr inbounds %struct.nn_msg, ptr %28, i32 0, i32 0, !dbg !385
  %30 = call ptr @nn_chunkref_data(ptr noundef %29), !dbg !386
  %31 = call i32 @nn_getl(ptr noundef %30), !dbg !387
  store i32 %31, ptr %7, align 4, !dbg !388
  %32 = load ptr, ptr %5, align 8, !dbg !389
  %33 = getelementptr inbounds %struct.nn_msg, ptr %32, i32 0, i32 0, !dbg !390
  call void @nn_chunkref_trim(ptr noundef %33, i64 noundef 4), !dbg !391
  %34 = load ptr, ptr %8, align 8, !dbg !392
  %35 = getelementptr inbounds %struct.nn_xrep, ptr %34, i32 0, i32 2, !dbg !392
  %36 = load i32, ptr %7, align 4, !dbg !392
  %37 = call ptr @nn_hash_get(ptr noundef %35, i32 noundef %36), !dbg !392
  %38 = icmp ne ptr %37, null, !dbg !392
  br i1 %38, label %39, label %45, !dbg !392

39:                                               ; preds = %27
  %40 = load ptr, ptr %8, align 8, !dbg !392
  %41 = getelementptr inbounds %struct.nn_xrep, ptr %40, i32 0, i32 2, !dbg !392
  %42 = load i32, ptr %7, align 4, !dbg !392
  %43 = call ptr @nn_hash_get(ptr noundef %41, i32 noundef %42), !dbg !392
  %44 = getelementptr inbounds i8, ptr %43, i64 -8, !dbg !392
  br label %46, !dbg !392

45:                                               ; preds = %27
  br label %46, !dbg !392

46:                                               ; preds = %45, %39
  %47 = phi ptr [ %44, %39 ], [ null, %45 ], !dbg !392
  store ptr %47, ptr %9, align 8, !dbg !393
  %48 = load ptr, ptr %9, align 8, !dbg !394
  %49 = icmp ne ptr %48, null, !dbg !394
  br i1 %49, label %50, label %56, !dbg !396

50:                                               ; preds = %46
  %51 = load ptr, ptr %9, align 8, !dbg !397
  %52 = getelementptr inbounds %struct.nn_xrep_data, ptr %51, i32 0, i32 3, !dbg !398
  %53 = load i32, ptr %52, align 8, !dbg !398
  %54 = and i32 %53, 1, !dbg !399
  %55 = icmp ne i32 %54, 0, !dbg !399
  br i1 %55, label %57, label %56, !dbg !400

56:                                               ; preds = %50, %46
  store i32 0, ptr %3, align 4, !dbg !401
  br label %89, !dbg !401

57:                                               ; preds = %50
  %58 = load ptr, ptr %9, align 8, !dbg !402
  %59 = getelementptr inbounds %struct.nn_xrep_data, ptr %58, i32 0, i32 0, !dbg !403
  %60 = load ptr, ptr %59, align 8, !dbg !403
  %61 = load ptr, ptr %5, align 8, !dbg !404
  %62 = call i32 @nn_pipe_send(ptr noundef %60, ptr noundef %61), !dbg !405
  store i32 %62, ptr %6, align 4, !dbg !406
  br label %63, !dbg !407

63:                                               ; preds = %57
  %64 = load i32, ptr %6, align 4, !dbg !408
  %65 = icmp sge i32 %64, 0, !dbg !408
  %66 = xor i1 %65, true, !dbg !408
  %67 = zext i1 %66 to i32, !dbg !408
  %68 = sext i32 %67 to i64, !dbg !408
  %69 = icmp ne i64 %68, 0, !dbg !408
  br i1 %69, label %70, label %78, !dbg !411

70:                                               ; preds = %63
  %71 = load ptr, ptr @stderr, align 8, !dbg !412
  %72 = load i32, ptr %6, align 4, !dbg !412
  %73 = sub nsw i32 0, %72, !dbg !412
  %74 = call ptr @nn_err_strerror(i32 noundef %73), !dbg !412
  %75 = load i32, ptr %6, align 4, !dbg !412
  %76 = sub nsw i32 0, %75, !dbg !412
  %77 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef @.str.2, ptr noundef %74, i32 noundef %76, ptr noundef @.str.1, i32 noundef 175), !dbg !412
  call void @nn_err_abort() #5, !dbg !412
  unreachable, !dbg !412

78:                                               ; preds = %63
  br label %79, !dbg !411

79:                                               ; preds = %78
  %80 = load i32, ptr %6, align 4, !dbg !414
  %81 = and i32 %80, 1, !dbg !416
  %82 = icmp ne i32 %81, 0, !dbg !416
  br i1 %82, label %83, label %88, !dbg !417

83:                                               ; preds = %79
  %84 = load ptr, ptr %9, align 8, !dbg !418
  %85 = getelementptr inbounds %struct.nn_xrep_data, ptr %84, i32 0, i32 3, !dbg !419
  %86 = load i32, ptr %85, align 8, !dbg !420
  %87 = and i32 %86, -2, !dbg !420
  store i32 %87, ptr %85, align 8, !dbg !420
  br label %88, !dbg !418

88:                                               ; preds = %83, %79
  store i32 0, ptr %3, align 4, !dbg !421
  br label %89, !dbg !421

89:                                               ; preds = %88, %56, %25
  %90 = load i32, ptr %3, align 4, !dbg !422
  ret i32 %90, !dbg !422
}

declare i64 @nn_chunkref_size(ptr noundef) #2

declare void @nn_msg_term(ptr noundef) #2

declare i32 @nn_getl(ptr noundef) #2

declare ptr @nn_chunkref_data(ptr noundef) #2

declare void @nn_chunkref_trim(ptr noundef, i64 noundef) #2

declare ptr @nn_hash_get(ptr noundef, i32 noundef) #2

declare i32 @nn_pipe_send(ptr noundef, ptr noundef) #2

declare ptr @nn_err_strerror(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xrep_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !423 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nn_chunkref, align 1
  %13 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !424, metadata !DIExpression()), !dbg !425
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !426, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata ptr %6, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata ptr %7, metadata !430, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata ptr %8, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata ptr %9, metadata !434, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.declare(metadata ptr %10, metadata !436, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.declare(metadata ptr %11, metadata !438, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.declare(metadata ptr %12, metadata !440, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.declare(metadata ptr %13, metadata !442, metadata !DIExpression()), !dbg !443
  %14 = load ptr, ptr %4, align 8, !dbg !444
  %15 = icmp ne ptr %14, null, !dbg !444
  br i1 %15, label %16, label %19, !dbg !444

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8, !dbg !444
  %18 = getelementptr inbounds i8, ptr %17, i64 0, !dbg !444
  br label %20, !dbg !444

19:                                               ; preds = %2
  br label %20, !dbg !444

20:                                               ; preds = %19, %16
  %21 = phi ptr [ %18, %16 ], [ null, %19 ], !dbg !444
  store ptr %21, ptr %7, align 8, !dbg !445
  %22 = load ptr, ptr %7, align 8, !dbg !446
  %23 = getelementptr inbounds %struct.nn_xrep, ptr %22, i32 0, i32 3, !dbg !447
  %24 = load ptr, ptr %5, align 8, !dbg !448
  %25 = call i32 @nn_fq_recv(ptr noundef %23, ptr noundef %24, ptr noundef %8), !dbg !449
  store i32 %25, ptr %6, align 4, !dbg !450
  %26 = load i32, ptr %6, align 4, !dbg !451
  %27 = icmp slt i32 %26, 0, !dbg !451
  %28 = zext i1 %27 to i32, !dbg !451
  %29 = sext i32 %28 to i64, !dbg !451
  %30 = icmp ne i64 %29, 0, !dbg !451
  br i1 %30, label %31, label %33, !dbg !453

31:                                               ; preds = %20
  %32 = load i32, ptr %6, align 4, !dbg !454
  store i32 %32, ptr %3, align 4, !dbg !455
  br label %128, !dbg !455

33:                                               ; preds = %20
  %34 = load i32, ptr %6, align 4, !dbg !456
  %35 = and i32 %34, 2, !dbg !458
  %36 = icmp ne i32 %35, 0, !dbg !458
  br i1 %36, label %104, label %37, !dbg !459

37:                                               ; preds = %33
  %38 = load ptr, ptr %5, align 8, !dbg !460
  %39 = getelementptr inbounds %struct.nn_msg, ptr %38, i32 0, i32 1, !dbg !462
  %40 = call ptr @nn_chunkref_data(ptr noundef %39), !dbg !463
  store ptr %40, ptr %10, align 8, !dbg !464
  %41 = load ptr, ptr %5, align 8, !dbg !465
  %42 = getelementptr inbounds %struct.nn_msg, ptr %41, i32 0, i32 1, !dbg !466
  %43 = call i64 @nn_chunkref_size(ptr noundef %42), !dbg !467
  store i64 %43, ptr %11, align 8, !dbg !468
  store i32 0, ptr %9, align 4, !dbg !469
  br label %44, !dbg !470

44:                                               ; preds = %37, %65
  %45 = load i32, ptr %9, align 4, !dbg !471
  %46 = add nsw i32 %45, 1, !dbg !471
  %47 = sext i32 %46 to i64, !dbg !471
  %48 = mul i64 %47, 4, !dbg !471
  %49 = load i64, ptr %11, align 8, !dbg !471
  %50 = icmp ugt i64 %48, %49, !dbg !471
  %51 = zext i1 %50 to i32, !dbg !471
  %52 = sext i32 %51 to i64, !dbg !471
  %53 = icmp ne i64 %52, 0, !dbg !471
  br i1 %53, label %54, label %56, !dbg !474

54:                                               ; preds = %44
  %55 = load ptr, ptr %5, align 8, !dbg !475
  call void @nn_msg_term(ptr noundef %55), !dbg !477
  store i32 -11, ptr %3, align 4, !dbg !478
  br label %128, !dbg !478

56:                                               ; preds = %44
  %57 = load ptr, ptr %10, align 8, !dbg !479
  %58 = load i32, ptr %9, align 4, !dbg !481
  %59 = sext i32 %58 to i64, !dbg !482
  %60 = getelementptr inbounds i32, ptr %57, i64 %59, !dbg !482
  %61 = call i32 @nn_getl(ptr noundef %60), !dbg !483
  %62 = and i32 %61, -2147483648, !dbg !484
  %63 = icmp ne i32 %62, 0, !dbg !484
  br i1 %63, label %64, label %65, !dbg !485

64:                                               ; preds = %56
  br label %68, !dbg !486

65:                                               ; preds = %56
  %66 = load i32, ptr %9, align 4, !dbg !487
  %67 = add nsw i32 %66, 1, !dbg !487
  store i32 %67, ptr %9, align 4, !dbg !487
  br label %44, !dbg !470, !llvm.loop !488

68:                                               ; preds = %64
  %69 = load i32, ptr %9, align 4, !dbg !490
  %70 = add nsw i32 %69, 1, !dbg !490
  store i32 %70, ptr %9, align 4, !dbg !490
  br label %71, !dbg !491

71:                                               ; preds = %68
  %72 = load ptr, ptr %5, align 8, !dbg !492
  %73 = getelementptr inbounds %struct.nn_msg, ptr %72, i32 0, i32 0, !dbg !492
  %74 = call i64 @nn_chunkref_size(ptr noundef %73), !dbg !492
  %75 = icmp eq i64 %74, 0, !dbg !492
  %76 = xor i1 %75, true, !dbg !492
  %77 = zext i1 %76 to i32, !dbg !492
  %78 = sext i32 %77 to i64, !dbg !492
  %79 = icmp ne i64 %78, 0, !dbg !492
  br i1 %79, label %80, label %83, !dbg !495

80:                                               ; preds = %71
  %81 = load ptr, ptr @stderr, align 8, !dbg !496
  %82 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 222), !dbg !496
  call void @nn_err_abort() #5, !dbg !496
  unreachable, !dbg !496

83:                                               ; preds = %71
  br label %84, !dbg !495

84:                                               ; preds = %83
  %85 = load ptr, ptr %5, align 8, !dbg !498
  %86 = getelementptr inbounds %struct.nn_msg, ptr %85, i32 0, i32 0, !dbg !499
  call void @nn_chunkref_term(ptr noundef %86), !dbg !500
  %87 = load ptr, ptr %5, align 8, !dbg !501
  %88 = getelementptr inbounds %struct.nn_msg, ptr %87, i32 0, i32 0, !dbg !502
  %89 = load i32, ptr %9, align 4, !dbg !503
  %90 = sext i32 %89 to i64, !dbg !503
  %91 = mul i64 %90, 4, !dbg !504
  call void @nn_chunkref_init(ptr noundef %88, i64 noundef %91), !dbg !505
  %92 = load ptr, ptr %5, align 8, !dbg !506
  %93 = getelementptr inbounds %struct.nn_msg, ptr %92, i32 0, i32 0, !dbg !507
  %94 = call ptr @nn_chunkref_data(ptr noundef %93), !dbg !508
  %95 = load ptr, ptr %10, align 8, !dbg !509
  %96 = load i32, ptr %9, align 4, !dbg !510
  %97 = sext i32 %96 to i64, !dbg !510
  %98 = mul i64 %97, 4, !dbg !511
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %94, ptr align 1 %95, i64 %98, i1 false), !dbg !512
  %99 = load ptr, ptr %5, align 8, !dbg !513
  %100 = getelementptr inbounds %struct.nn_msg, ptr %99, i32 0, i32 1, !dbg !514
  %101 = load i32, ptr %9, align 4, !dbg !515
  %102 = sext i32 %101 to i64, !dbg !515
  %103 = mul i64 %102, 4, !dbg !516
  call void @nn_chunkref_trim(ptr noundef %100, i64 noundef %103), !dbg !517
  br label %104, !dbg !518

104:                                              ; preds = %84, %33
  %105 = load ptr, ptr %8, align 8, !dbg !519
  %106 = call ptr @nn_pipe_getdata(ptr noundef %105), !dbg !520
  store ptr %106, ptr %13, align 8, !dbg !521
  %107 = load ptr, ptr %5, align 8, !dbg !522
  %108 = getelementptr inbounds %struct.nn_msg, ptr %107, i32 0, i32 0, !dbg !523
  %109 = call i64 @nn_chunkref_size(ptr noundef %108), !dbg !524
  %110 = add i64 %109, 4, !dbg !525
  call void @nn_chunkref_init(ptr noundef %12, i64 noundef %110), !dbg !526
  %111 = call ptr @nn_chunkref_data(ptr noundef %12), !dbg !527
  %112 = load ptr, ptr %13, align 8, !dbg !528
  %113 = getelementptr inbounds %struct.nn_xrep_data, ptr %112, i32 0, i32 1, !dbg !529
  %114 = getelementptr inbounds %struct.nn_hash_item, ptr %113, i32 0, i32 0, !dbg !530
  %115 = load i32, ptr %114, align 8, !dbg !530
  call void @nn_putl(ptr noundef %111, i32 noundef %115), !dbg !531
  %116 = call ptr @nn_chunkref_data(ptr noundef %12), !dbg !532
  %117 = getelementptr inbounds i8, ptr %116, i64 4, !dbg !533
  %118 = load ptr, ptr %5, align 8, !dbg !534
  %119 = getelementptr inbounds %struct.nn_msg, ptr %118, i32 0, i32 0, !dbg !535
  %120 = call ptr @nn_chunkref_data(ptr noundef %119), !dbg !536
  %121 = load ptr, ptr %5, align 8, !dbg !537
  %122 = getelementptr inbounds %struct.nn_msg, ptr %121, i32 0, i32 0, !dbg !538
  %123 = call i64 @nn_chunkref_size(ptr noundef %122), !dbg !539
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %117, ptr align 1 %120, i64 %123, i1 false), !dbg !540
  %124 = load ptr, ptr %5, align 8, !dbg !541
  %125 = getelementptr inbounds %struct.nn_msg, ptr %124, i32 0, i32 0, !dbg !542
  call void @nn_chunkref_term(ptr noundef %125), !dbg !543
  %126 = load ptr, ptr %5, align 8, !dbg !544
  %127 = getelementptr inbounds %struct.nn_msg, ptr %126, i32 0, i32 0, !dbg !545
  call void @nn_chunkref_mv(ptr noundef %127, ptr noundef %12), !dbg !546
  store i32 0, ptr %3, align 4, !dbg !547
  br label %128, !dbg !547

128:                                              ; preds = %104, %54, %31
  %129 = load i32, ptr %3, align 4, !dbg !548
  ret i32 %129, !dbg !548
}

declare i32 @nn_fq_recv(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_chunkref_term(ptr noundef) #2

declare void @nn_chunkref_init(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @nn_putl(ptr noundef, i32 noundef) #2

declare void @nn_chunkref_mv(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xrep_setopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !549 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !550, metadata !DIExpression()), !dbg !551
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !552, metadata !DIExpression()), !dbg !553
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !554, metadata !DIExpression()), !dbg !555
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !556, metadata !DIExpression()), !dbg !557
  store i64 %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !558, metadata !DIExpression()), !dbg !559
  ret i32 -92, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xrep_getopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !561 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !562, metadata !DIExpression()), !dbg !563
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !564, metadata !DIExpression()), !dbg !565
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !566, metadata !DIExpression()), !dbg !567
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !568, metadata !DIExpression()), !dbg !569
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !570, metadata !DIExpression()), !dbg !571
  ret i32 -92, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xrep_ispeer(i32 noundef %0) #0 !dbg !573 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !574, metadata !DIExpression()), !dbg !575
  %3 = load i32, ptr %2, align 4, !dbg !576
  %4 = icmp eq i32 %3, 48, !dbg !577
  %5 = zext i1 %4 to i64, !dbg !576
  %6 = select i1 %4, i32 1, i32 0, !dbg !576
  ret i32 %6, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xrep_create(ptr noundef %0, ptr noundef %1) #0 !dbg !579 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !580, metadata !DIExpression()), !dbg !581
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata ptr %5, metadata !584, metadata !DIExpression()), !dbg !585
  %6 = call ptr @nn_alloc_(i64 noundef 432), !dbg !586
  store ptr %6, ptr %5, align 8, !dbg !587
  br label %7, !dbg !588

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !dbg !589
  %9 = icmp ne ptr %8, null, !dbg !589
  %10 = xor i1 %9, true, !dbg !589
  %11 = zext i1 %10 to i32, !dbg !589
  %12 = sext i32 %11 to i64, !dbg !589
  %13 = icmp ne i64 %12, 0, !dbg !589
  br i1 %13, label %14, label %17, !dbg !592

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !593
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 258), !dbg !593
  call void @nn_err_abort() #5, !dbg !593
  unreachable, !dbg !593

17:                                               ; preds = %7
  br label %18, !dbg !592

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !595
  %20 = load ptr, ptr %3, align 8, !dbg !596
  call void @nn_xrep_init(ptr noundef %19, ptr noundef @nn_xrep_sockbase_vfptr, ptr noundef %20), !dbg !597
  %21 = load ptr, ptr %5, align 8, !dbg !598
  %22 = getelementptr inbounds %struct.nn_xrep, ptr %21, i32 0, i32 0, !dbg !599
  %23 = load ptr, ptr %4, align 8, !dbg !600
  store ptr %22, ptr %23, align 8, !dbg !601
  ret i32 0, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xrep_destroy(ptr noundef %0) #0 !dbg !603 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !604, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.declare(metadata ptr %3, metadata !606, metadata !DIExpression()), !dbg !607
  %4 = load ptr, ptr %2, align 8, !dbg !608
  %5 = icmp ne ptr %4, null, !dbg !608
  br i1 %5, label %6, label %9, !dbg !608

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !608
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !608
  br label %10, !dbg !608

9:                                                ; preds = %1
  br label %10, !dbg !608

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !608
  store ptr %11, ptr %3, align 8, !dbg !609
  %12 = load ptr, ptr %3, align 8, !dbg !610
  call void @nn_xrep_term(ptr noundef %12), !dbg !611
  %13 = load ptr, ptr %3, align 8, !dbg !612
  call void @nn_free(ptr noundef %13), !dbg !613
  ret void, !dbg !614
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!26}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/protocols/reqrep/xrep.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "5744c9460835e6af6aea5bf73ac460e8")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 17)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !9, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 34)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "nn_xrep_socktype_struct", scope: !26, file: !2, line: 270, type: !172, isLocal: true, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C11, file: !27, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !28, globals: !168, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "src/protocols/reqrep/xrep.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "5744c9460835e6af6aea5bf73ac460e8")
!28 = !{!29, !151, !152, !52, !166, !167}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xrep", file: !31, line: 44, size: 3456, elements: !32)
!31 = !DIFile(filename: "./src/protocols/reqrep/xrep.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "eef17bee18eaa6f75cd0f553afca7c85")
!32 = !{!33, !106, !110, !128}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !30, file: !31, line: 46, baseType: !34, size: 128)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !35, line: 123, size: 128, elements: !36)
!35 = !DIFile(filename: "./src/protocols/reqrep/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!36 = !{!37, !103}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !34, file: !35, line: 124, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase_vfptr", file: !35, line: 84, size: 704, elements: !41)
!41 = !{!42, !47, !48, !55, !59, !60, !61, !65, !87, !88, !97}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !40, file: !35, line: 87, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !40, file: !35, line: 90, baseType: !43, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !40, file: !35, line: 97, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !46, !53}
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !35, line: 56, flags: DIFlagFwdDecl)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !40, file: !35, line: 98, baseType: !56, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !46, !53}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !40, file: !35, line: 99, baseType: !56, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !40, file: !35, line: 100, baseType: !56, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !40, file: !35, line: 104, baseType: !62, size: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!52, !46}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !40, file: !35, line: 108, baseType: !66, size: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!52, !46, !69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !71, line: 30, size: 512, elements: !72)
!71 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!72 = !{!73, !86}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !70, file: !71, line: 33, baseType: !74, size: 256)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !75, line: 39, size: 256, elements: !76)
!75 = !DIFile(filename: "src/utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !74, file: !75, line: 40, baseType: !78, size: 256)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !84)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !80, line: 24, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !82, line: 38, baseType: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!83 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!84 = !{!85}
!85 = !DISubrange(count: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !70, file: !71, line: 36, baseType: !74, size: 256, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !40, file: !35, line: 112, baseType: !66, size: 64, offset: 512)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !40, file: !35, line: 115, baseType: !89, size: 64, offset: 576)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!52, !46, !52, !52, !92, !94}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 46, baseType: !96)
!95 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!96 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !40, file: !35, line: 119, baseType: !98, size: 64, offset: 640)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!52, !46, !52, !52, !101, !102}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !34, file: !35, line: 125, baseType: !104, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !35, line: 125, flags: DIFlagFwdDecl)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next_key", scope: !30, file: !31, line: 49, baseType: !107, size: 32, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !80, line: 26, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !82, line: 42, baseType: !109)
!109 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "outpipes", scope: !30, file: !31, line: 52, baseType: !111, size: 128, offset: 192)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hash", file: !112, line: 39, size: 128, elements: !113)
!112 = !DIFile(filename: "./src/protocols/reqrep/../../utils/hash.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "68acf226c9801fc7f4ff61503e6babca")
!113 = !{!114, !115, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !111, file: !112, line: 40, baseType: !107, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !111, file: !112, line: 41, baseType: !107, size: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !111, file: !112, line: 42, baseType: !117, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !119, line: 31, size: 128, elements: !120)
!119 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!120 = !{!121, !127}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !118, file: !119, line: 32, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !119, line: 26, size: 128, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !119, line: 27, baseType: !122, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !123, file: !119, line: 28, baseType: !122, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !118, file: !119, line: 33, baseType: !122, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "inpipes", scope: !30, file: !31, line: 55, baseType: !129, size: 3136, offset: 320)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fq", file: !130, line: 37, size: 3136, elements: !131)
!130 = !DIFile(filename: "./src/protocols/reqrep/../utils/fq.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "342bacd48eb65b84f809ed6b86c6514c")
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !129, file: !130, line: 38, baseType: !133, size: 3136)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist", file: !134, line: 45, size: 3136, elements: !135)
!134 = !DIFile(filename: "./src/protocols/reqrep/../utils/priolist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e7a7c69c9c81fe3b1beae760b1a28137")
!135 = !{!136, !150}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !133, file: !134, line: 46, baseType: !137, size: 3072)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 3072, elements: !148)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_slot", file: !134, line: 40, size: 192, elements: !139)
!139 = !{!140, !141}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !138, file: !134, line: 41, baseType: !118, size: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !138, file: !134, line: 42, baseType: !142, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_data", file: !134, line: 34, size: 256, elements: !144)
!144 = !{!145, !146, !147}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !143, file: !134, line: 35, baseType: !53, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !143, file: !134, line: 36, baseType: !52, size: 32, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !143, file: !134, line: 37, baseType: !123, size: 128, offset: 128)
!148 = !{!149}
!149 = !DISubrange(count: 16)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !133, file: !134, line: 47, baseType: !52, size: 32, offset: 3072)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xrep_data", file: !31, line: 37, size: 576, elements: !154)
!154 = !{!155, !156, !161, !165}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !153, file: !31, line: 38, baseType: !53, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "outitem", scope: !153, file: !31, line: 39, baseType: !157, size: 192, offset: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hash_item", file: !112, line: 34, size: 192, elements: !158)
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !157, file: !112, line: 35, baseType: !107, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !157, file: !112, line: 36, baseType: !123, size: 128, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "initem", scope: !153, file: !31, line: 40, baseType: !162, size: 256, offset: 256)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fq_data", file: !130, line: 33, size: 256, elements: !163)
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !162, file: !130, line: 34, baseType: !143, size: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !31, line: 41, baseType: !107, size: 32, offset: 512)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!168 = !{!0, !7, !12, !17, !19, !169, !24, !187}
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "nn_xrep_socktype", scope: !26, file: !2, line: 279, type: !171, isLocal: false, isDefinition: true)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !35, line: 160, size: 384, elements: !173)
!173 = !{!174, !175, !176, !177, !182, !186}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !172, file: !35, line: 163, baseType: !52, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !172, file: !35, line: 164, baseType: !52, size: 32, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !172, file: !35, line: 167, baseType: !52, size: 32, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !172, file: !35, line: 173, baseType: !178, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!52, !101, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !172, file: !35, line: 179, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!52, !52}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !172, file: !35, line: 183, baseType: !123, size: 128, offset: 256)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "nn_xrep_sockbase_vfptr", scope: !26, file: !2, line: 41, type: !39, isLocal: true, isDefinition: true)
!189 = !{i32 7, !"Dwarf Version", i32 5}
!190 = !{i32 2, !"Debug Info Version", i32 3}
!191 = !{i32 1, !"wchar_size", i32 4}
!192 = !{i32 8, !"PIC Level", i32 2}
!193 = !{i32 7, !"PIE Level", i32 2}
!194 = !{i32 7, !"uwtable", i32 2}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 16.0.0"}
!197 = distinct !DISubprogram(name: "nn_xrep_init", scope: !2, file: !2, line: 55, type: !198, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !29, !38, !101}
!200 = !{}
!201 = !DILocalVariable(name: "self", arg: 1, scope: !197, file: !2, line: 55, type: !29)
!202 = !DILocation(line: 55, column: 36, scope: !197)
!203 = !DILocalVariable(name: "vfptr", arg: 2, scope: !197, file: !2, line: 55, type: !38)
!204 = !DILocation(line: 55, column: 74, scope: !197)
!205 = !DILocalVariable(name: "hint", arg: 3, scope: !197, file: !2, line: 56, type: !101)
!206 = !DILocation(line: 56, column: 11, scope: !197)
!207 = !DILocation(line: 58, column: 24, scope: !197)
!208 = !DILocation(line: 58, column: 30, scope: !197)
!209 = !DILocation(line: 58, column: 40, scope: !197)
!210 = !DILocation(line: 58, column: 47, scope: !197)
!211 = !DILocation(line: 58, column: 5, scope: !197)
!212 = !DILocation(line: 62, column: 26, scope: !197)
!213 = !DILocation(line: 62, column: 32, scope: !197)
!214 = !DILocation(line: 62, column: 5, scope: !197)
!215 = !DILocation(line: 64, column: 20, scope: !197)
!216 = !DILocation(line: 64, column: 26, scope: !197)
!217 = !DILocation(line: 64, column: 5, scope: !197)
!218 = !DILocation(line: 65, column: 18, scope: !197)
!219 = !DILocation(line: 65, column: 24, scope: !197)
!220 = !DILocation(line: 65, column: 5, scope: !197)
!221 = !DILocation(line: 66, column: 1, scope: !197)
!222 = distinct !DISubprogram(name: "nn_xrep_term", scope: !2, file: !2, line: 68, type: !223, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !200)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !29}
!225 = !DILocalVariable(name: "self", arg: 1, scope: !222, file: !2, line: 68, type: !29)
!226 = !DILocation(line: 68, column: 36, scope: !222)
!227 = !DILocation(line: 70, column: 18, scope: !222)
!228 = !DILocation(line: 70, column: 24, scope: !222)
!229 = !DILocation(line: 70, column: 5, scope: !222)
!230 = !DILocation(line: 71, column: 20, scope: !222)
!231 = !DILocation(line: 71, column: 26, scope: !222)
!232 = !DILocation(line: 71, column: 5, scope: !222)
!233 = !DILocation(line: 72, column: 24, scope: !222)
!234 = !DILocation(line: 72, column: 30, scope: !222)
!235 = !DILocation(line: 72, column: 5, scope: !222)
!236 = !DILocation(line: 73, column: 1, scope: !222)
!237 = distinct !DISubprogram(name: "nn_xrep_add", scope: !2, file: !2, line: 85, type: !50, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !200)
!238 = !DILocalVariable(name: "self", arg: 1, scope: !237, file: !2, line: 85, type: !46)
!239 = !DILocation(line: 85, column: 38, scope: !237)
!240 = !DILocalVariable(name: "pipe", arg: 2, scope: !237, file: !2, line: 85, type: !53)
!241 = !DILocation(line: 85, column: 60, scope: !237)
!242 = !DILocalVariable(name: "xrep", scope: !237, file: !2, line: 87, type: !29)
!243 = !DILocation(line: 87, column: 21, scope: !237)
!244 = !DILocalVariable(name: "data", scope: !237, file: !2, line: 88, type: !152)
!245 = !DILocation(line: 88, column: 26, scope: !237)
!246 = !DILocation(line: 90, column: 12, scope: !237)
!247 = !DILocation(line: 90, column: 10, scope: !237)
!248 = !DILocation(line: 92, column: 12, scope: !237)
!249 = !DILocation(line: 92, column: 10, scope: !237)
!250 = !DILocation(line: 93, column: 5, scope: !237)
!251 = !DILocation(line: 93, column: 5, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !2, line: 93, column: 5)
!253 = distinct !DILexicalBlock(scope: !237, file: !2, line: 93, column: 5)
!254 = !DILocation(line: 93, column: 5, scope: !253)
!255 = !DILocation(line: 93, column: 5, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !2, line: 93, column: 5)
!257 = !DILocation(line: 94, column: 18, scope: !237)
!258 = !DILocation(line: 94, column: 5, scope: !237)
!259 = !DILocation(line: 94, column: 11, scope: !237)
!260 = !DILocation(line: 94, column: 16, scope: !237)
!261 = !DILocation(line: 95, column: 25, scope: !237)
!262 = !DILocation(line: 95, column: 31, scope: !237)
!263 = !DILocation(line: 95, column: 5, scope: !237)
!264 = !DILocation(line: 96, column: 5, scope: !237)
!265 = !DILocation(line: 96, column: 11, scope: !237)
!266 = !DILocation(line: 96, column: 17, scope: !237)
!267 = !DILocation(line: 97, column: 22, scope: !237)
!268 = !DILocation(line: 97, column: 28, scope: !237)
!269 = !DILocation(line: 97, column: 38, scope: !237)
!270 = !DILocation(line: 97, column: 44, scope: !237)
!271 = !DILocation(line: 97, column: 53, scope: !237)
!272 = !DILocation(line: 98, column: 10, scope: !237)
!273 = !DILocation(line: 98, column: 16, scope: !237)
!274 = !DILocation(line: 97, column: 5, scope: !237)
!275 = !DILocation(line: 99, column: 7, scope: !237)
!276 = !DILocation(line: 99, column: 13, scope: !237)
!277 = !DILocation(line: 99, column: 5, scope: !237)
!278 = !DILocation(line: 100, column: 17, scope: !237)
!279 = !DILocation(line: 100, column: 23, scope: !237)
!280 = !DILocation(line: 100, column: 32, scope: !237)
!281 = !DILocation(line: 100, column: 39, scope: !237)
!282 = !DILocation(line: 100, column: 45, scope: !237)
!283 = !DILocation(line: 100, column: 5, scope: !237)
!284 = !DILocation(line: 102, column: 22, scope: !237)
!285 = !DILocation(line: 102, column: 28, scope: !237)
!286 = !DILocation(line: 102, column: 5, scope: !237)
!287 = !DILocation(line: 104, column: 5, scope: !237)
!288 = distinct !DISubprogram(name: "nn_xrep_rm", scope: !2, file: !2, line: 107, type: !57, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !200)
!289 = !DILocalVariable(name: "self", arg: 1, scope: !288, file: !2, line: 107, type: !46)
!290 = !DILocation(line: 107, column: 38, scope: !288)
!291 = !DILocalVariable(name: "pipe", arg: 2, scope: !288, file: !2, line: 107, type: !53)
!292 = !DILocation(line: 107, column: 60, scope: !288)
!293 = !DILocalVariable(name: "xrep", scope: !288, file: !2, line: 109, type: !29)
!294 = !DILocation(line: 109, column: 21, scope: !288)
!295 = !DILocalVariable(name: "data", scope: !288, file: !2, line: 110, type: !152)
!296 = !DILocation(line: 110, column: 26, scope: !288)
!297 = !DILocation(line: 112, column: 12, scope: !288)
!298 = !DILocation(line: 112, column: 10, scope: !288)
!299 = !DILocation(line: 113, column: 29, scope: !288)
!300 = !DILocation(line: 113, column: 12, scope: !288)
!301 = !DILocation(line: 113, column: 10, scope: !288)
!302 = !DILocation(line: 115, column: 16, scope: !288)
!303 = !DILocation(line: 115, column: 22, scope: !288)
!304 = !DILocation(line: 115, column: 31, scope: !288)
!305 = !DILocation(line: 115, column: 38, scope: !288)
!306 = !DILocation(line: 115, column: 44, scope: !288)
!307 = !DILocation(line: 115, column: 5, scope: !288)
!308 = !DILocation(line: 116, column: 21, scope: !288)
!309 = !DILocation(line: 116, column: 27, scope: !288)
!310 = !DILocation(line: 116, column: 38, scope: !288)
!311 = !DILocation(line: 116, column: 44, scope: !288)
!312 = !DILocation(line: 116, column: 5, scope: !288)
!313 = !DILocation(line: 117, column: 25, scope: !288)
!314 = !DILocation(line: 117, column: 31, scope: !288)
!315 = !DILocation(line: 117, column: 5, scope: !288)
!316 = !DILocation(line: 119, column: 14, scope: !288)
!317 = !DILocation(line: 119, column: 5, scope: !288)
!318 = !DILocation(line: 120, column: 1, scope: !288)
!319 = distinct !DISubprogram(name: "nn_xrep_in", scope: !2, file: !2, line: 122, type: !57, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !200)
!320 = !DILocalVariable(name: "self", arg: 1, scope: !319, file: !2, line: 122, type: !46)
!321 = !DILocation(line: 122, column: 38, scope: !319)
!322 = !DILocalVariable(name: "pipe", arg: 2, scope: !319, file: !2, line: 122, type: !53)
!323 = !DILocation(line: 122, column: 60, scope: !319)
!324 = !DILocalVariable(name: "xrep", scope: !319, file: !2, line: 124, type: !29)
!325 = !DILocation(line: 124, column: 21, scope: !319)
!326 = !DILocalVariable(name: "data", scope: !319, file: !2, line: 125, type: !152)
!327 = !DILocation(line: 125, column: 26, scope: !319)
!328 = !DILocation(line: 127, column: 12, scope: !319)
!329 = !DILocation(line: 127, column: 10, scope: !319)
!330 = !DILocation(line: 128, column: 29, scope: !319)
!331 = !DILocation(line: 128, column: 12, scope: !319)
!332 = !DILocation(line: 128, column: 10, scope: !319)
!333 = !DILocation(line: 130, column: 16, scope: !319)
!334 = !DILocation(line: 130, column: 22, scope: !319)
!335 = !DILocation(line: 130, column: 31, scope: !319)
!336 = !DILocation(line: 130, column: 38, scope: !319)
!337 = !DILocation(line: 130, column: 44, scope: !319)
!338 = !DILocation(line: 130, column: 5, scope: !319)
!339 = !DILocation(line: 131, column: 1, scope: !319)
!340 = distinct !DISubprogram(name: "nn_xrep_out", scope: !2, file: !2, line: 133, type: !57, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !200)
!341 = !DILocalVariable(name: "self", arg: 1, scope: !340, file: !2, line: 133, type: !46)
!342 = !DILocation(line: 133, column: 39, scope: !340)
!343 = !DILocalVariable(name: "pipe", arg: 2, scope: !340, file: !2, line: 133, type: !53)
!344 = !DILocation(line: 133, column: 61, scope: !340)
!345 = !DILocalVariable(name: "data", scope: !340, file: !2, line: 135, type: !152)
!346 = !DILocation(line: 135, column: 26, scope: !340)
!347 = !DILocation(line: 137, column: 29, scope: !340)
!348 = !DILocation(line: 137, column: 12, scope: !340)
!349 = !DILocation(line: 137, column: 10, scope: !340)
!350 = !DILocation(line: 138, column: 5, scope: !340)
!351 = !DILocation(line: 138, column: 11, scope: !340)
!352 = !DILocation(line: 138, column: 17, scope: !340)
!353 = !DILocation(line: 139, column: 1, scope: !340)
!354 = distinct !DISubprogram(name: "nn_xrep_events", scope: !2, file: !2, line: 141, type: !63, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !200)
!355 = !DILocalVariable(name: "self", arg: 1, scope: !354, file: !2, line: 141, type: !46)
!356 = !DILocation(line: 141, column: 41, scope: !354)
!357 = !DILocation(line: 143, column: 30, scope: !354)
!358 = !DILocation(line: 144, column: 20, scope: !354)
!359 = !DILocation(line: 143, column: 13, scope: !354)
!360 = !DILocation(line: 144, column: 57, scope: !354)
!361 = !DILocation(line: 143, column: 5, scope: !354)
!362 = distinct !DISubprogram(name: "nn_xrep_send", scope: !2, file: !2, line: 147, type: !67, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !200)
!363 = !DILocalVariable(name: "self", arg: 1, scope: !362, file: !2, line: 147, type: !46)
!364 = !DILocation(line: 147, column: 39, scope: !362)
!365 = !DILocalVariable(name: "msg", arg: 2, scope: !362, file: !2, line: 147, type: !69)
!366 = !DILocation(line: 147, column: 60, scope: !362)
!367 = !DILocalVariable(name: "rc", scope: !362, file: !2, line: 149, type: !52)
!368 = !DILocation(line: 149, column: 9, scope: !362)
!369 = !DILocalVariable(name: "key", scope: !362, file: !2, line: 150, type: !107)
!370 = !DILocation(line: 150, column: 14, scope: !362)
!371 = !DILocalVariable(name: "xrep", scope: !362, file: !2, line: 151, type: !29)
!372 = !DILocation(line: 151, column: 21, scope: !362)
!373 = !DILocalVariable(name: "data", scope: !362, file: !2, line: 152, type: !152)
!374 = !DILocation(line: 152, column: 26, scope: !362)
!375 = !DILocation(line: 154, column: 12, scope: !362)
!376 = !DILocation(line: 154, column: 10, scope: !362)
!377 = !DILocation(line: 157, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !362, file: !2, line: 157, column: 9)
!379 = !DILocation(line: 157, column: 9, scope: !362)
!380 = !DILocation(line: 158, column: 22, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !2, line: 157, column: 69)
!382 = !DILocation(line: 158, column: 9, scope: !381)
!383 = !DILocation(line: 159, column: 9, scope: !381)
!384 = !DILocation(line: 163, column: 39, scope: !362)
!385 = !DILocation(line: 163, column: 44, scope: !362)
!386 = !DILocation(line: 163, column: 20, scope: !362)
!387 = !DILocation(line: 163, column: 11, scope: !362)
!388 = !DILocation(line: 163, column: 9, scope: !362)
!389 = !DILocation(line: 164, column: 24, scope: !362)
!390 = !DILocation(line: 164, column: 29, scope: !362)
!391 = !DILocation(line: 164, column: 5, scope: !362)
!392 = !DILocation(line: 168, column: 12, scope: !362)
!393 = !DILocation(line: 168, column: 10, scope: !362)
!394 = !DILocation(line: 170, column: 10, scope: !395)
!395 = distinct !DILexicalBlock(scope: !362, file: !2, line: 170, column: 9)
!396 = !DILocation(line: 170, column: 15, scope: !395)
!397 = !DILocation(line: 170, column: 20, scope: !395)
!398 = !DILocation(line: 170, column: 26, scope: !395)
!399 = !DILocation(line: 170, column: 32, scope: !395)
!400 = !DILocation(line: 170, column: 9, scope: !362)
!401 = !DILocation(line: 171, column: 9, scope: !395)
!402 = !DILocation(line: 174, column: 24, scope: !362)
!403 = !DILocation(line: 174, column: 30, scope: !362)
!404 = !DILocation(line: 174, column: 36, scope: !362)
!405 = !DILocation(line: 174, column: 10, scope: !362)
!406 = !DILocation(line: 174, column: 8, scope: !362)
!407 = !DILocation(line: 175, column: 5, scope: !362)
!408 = !DILocation(line: 175, column: 5, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !2, line: 175, column: 5)
!410 = distinct !DILexicalBlock(scope: !362, file: !2, line: 175, column: 5)
!411 = !DILocation(line: 175, column: 5, scope: !410)
!412 = !DILocation(line: 175, column: 5, scope: !413)
!413 = distinct !DILexicalBlock(scope: !409, file: !2, line: 175, column: 5)
!414 = !DILocation(line: 176, column: 9, scope: !415)
!415 = distinct !DILexicalBlock(scope: !362, file: !2, line: 176, column: 9)
!416 = !DILocation(line: 176, column: 12, scope: !415)
!417 = !DILocation(line: 176, column: 9, scope: !362)
!418 = !DILocation(line: 177, column: 9, scope: !415)
!419 = !DILocation(line: 177, column: 15, scope: !415)
!420 = !DILocation(line: 177, column: 21, scope: !415)
!421 = !DILocation(line: 179, column: 5, scope: !362)
!422 = !DILocation(line: 180, column: 1, scope: !362)
!423 = distinct !DISubprogram(name: "nn_xrep_recv", scope: !2, file: !2, line: 182, type: !67, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !200)
!424 = !DILocalVariable(name: "self", arg: 1, scope: !423, file: !2, line: 182, type: !46)
!425 = !DILocation(line: 182, column: 39, scope: !423)
!426 = !DILocalVariable(name: "msg", arg: 2, scope: !423, file: !2, line: 182, type: !69)
!427 = !DILocation(line: 182, column: 60, scope: !423)
!428 = !DILocalVariable(name: "rc", scope: !423, file: !2, line: 184, type: !52)
!429 = !DILocation(line: 184, column: 9, scope: !423)
!430 = !DILocalVariable(name: "xrep", scope: !423, file: !2, line: 185, type: !29)
!431 = !DILocation(line: 185, column: 21, scope: !423)
!432 = !DILocalVariable(name: "pipe", scope: !423, file: !2, line: 186, type: !53)
!433 = !DILocation(line: 186, column: 21, scope: !423)
!434 = !DILocalVariable(name: "i", scope: !423, file: !2, line: 187, type: !52)
!435 = !DILocation(line: 187, column: 9, scope: !423)
!436 = !DILocalVariable(name: "data", scope: !423, file: !2, line: 188, type: !101)
!437 = !DILocation(line: 188, column: 11, scope: !423)
!438 = !DILocalVariable(name: "sz", scope: !423, file: !2, line: 189, type: !94)
!439 = !DILocation(line: 189, column: 12, scope: !423)
!440 = !DILocalVariable(name: "ref", scope: !423, file: !2, line: 190, type: !74)
!441 = !DILocation(line: 190, column: 24, scope: !423)
!442 = !DILocalVariable(name: "pipedata", scope: !423, file: !2, line: 191, type: !152)
!443 = !DILocation(line: 191, column: 26, scope: !423)
!444 = !DILocation(line: 193, column: 12, scope: !423)
!445 = !DILocation(line: 193, column: 10, scope: !423)
!446 = !DILocation(line: 195, column: 23, scope: !423)
!447 = !DILocation(line: 195, column: 29, scope: !423)
!448 = !DILocation(line: 195, column: 38, scope: !423)
!449 = !DILocation(line: 195, column: 10, scope: !423)
!450 = !DILocation(line: 195, column: 8, scope: !423)
!451 = !DILocation(line: 196, column: 9, scope: !452)
!452 = distinct !DILexicalBlock(scope: !423, file: !2, line: 196, column: 9)
!453 = !DILocation(line: 196, column: 9, scope: !423)
!454 = !DILocation(line: 197, column: 16, scope: !452)
!455 = !DILocation(line: 197, column: 9, scope: !452)
!456 = !DILocation(line: 199, column: 11, scope: !457)
!457 = distinct !DILexicalBlock(scope: !423, file: !2, line: 199, column: 9)
!458 = !DILocation(line: 199, column: 14, scope: !457)
!459 = !DILocation(line: 199, column: 9, scope: !423)
!460 = !DILocation(line: 202, column: 35, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !2, line: 199, column: 33)
!462 = !DILocation(line: 202, column: 40, scope: !461)
!463 = !DILocation(line: 202, column: 16, scope: !461)
!464 = !DILocation(line: 202, column: 14, scope: !461)
!465 = !DILocation(line: 203, column: 33, scope: !461)
!466 = !DILocation(line: 203, column: 38, scope: !461)
!467 = !DILocation(line: 203, column: 14, scope: !461)
!468 = !DILocation(line: 203, column: 12, scope: !461)
!469 = !DILocation(line: 204, column: 11, scope: !461)
!470 = !DILocation(line: 205, column: 9, scope: !461)
!471 = !DILocation(line: 208, column: 17, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !2, line: 208, column: 17)
!473 = distinct !DILexicalBlock(scope: !461, file: !2, line: 205, column: 19)
!474 = !DILocation(line: 208, column: 17, scope: !473)
!475 = !DILocation(line: 209, column: 30, scope: !476)
!476 = distinct !DILexicalBlock(scope: !472, file: !2, line: 208, column: 61)
!477 = !DILocation(line: 209, column: 17, scope: !476)
!478 = !DILocation(line: 210, column: 17, scope: !476)
!479 = !DILocation(line: 214, column: 50, scope: !480)
!480 = distinct !DILexicalBlock(scope: !473, file: !2, line: 214, column: 17)
!481 = !DILocation(line: 214, column: 58, scope: !480)
!482 = !DILocation(line: 214, column: 56, scope: !480)
!483 = !DILocation(line: 214, column: 17, scope: !480)
!484 = !DILocation(line: 214, column: 62, scope: !480)
!485 = !DILocation(line: 214, column: 17, scope: !473)
!486 = !DILocation(line: 215, column: 17, scope: !480)
!487 = !DILocation(line: 217, column: 13, scope: !473)
!488 = distinct !{!488, !470, !489}
!489 = !DILocation(line: 218, column: 9, scope: !461)
!490 = !DILocation(line: 219, column: 9, scope: !461)
!491 = !DILocation(line: 222, column: 9, scope: !461)
!492 = !DILocation(line: 222, column: 9, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !2, line: 222, column: 9)
!494 = distinct !DILexicalBlock(scope: !461, file: !2, line: 222, column: 9)
!495 = !DILocation(line: 222, column: 9, scope: !494)
!496 = !DILocation(line: 222, column: 9, scope: !497)
!497 = distinct !DILexicalBlock(scope: !493, file: !2, line: 222, column: 9)
!498 = !DILocation(line: 223, column: 28, scope: !461)
!499 = !DILocation(line: 223, column: 33, scope: !461)
!500 = !DILocation(line: 223, column: 9, scope: !461)
!501 = !DILocation(line: 224, column: 28, scope: !461)
!502 = !DILocation(line: 224, column: 33, scope: !461)
!503 = !DILocation(line: 224, column: 38, scope: !461)
!504 = !DILocation(line: 224, column: 40, scope: !461)
!505 = !DILocation(line: 224, column: 9, scope: !461)
!506 = !DILocation(line: 225, column: 36, scope: !461)
!507 = !DILocation(line: 225, column: 41, scope: !461)
!508 = !DILocation(line: 225, column: 17, scope: !461)
!509 = !DILocation(line: 225, column: 47, scope: !461)
!510 = !DILocation(line: 225, column: 53, scope: !461)
!511 = !DILocation(line: 225, column: 55, scope: !461)
!512 = !DILocation(line: 225, column: 9, scope: !461)
!513 = !DILocation(line: 226, column: 28, scope: !461)
!514 = !DILocation(line: 226, column: 33, scope: !461)
!515 = !DILocation(line: 226, column: 39, scope: !461)
!516 = !DILocation(line: 226, column: 41, scope: !461)
!517 = !DILocation(line: 226, column: 9, scope: !461)
!518 = !DILocation(line: 227, column: 5, scope: !461)
!519 = !DILocation(line: 230, column: 33, scope: !423)
!520 = !DILocation(line: 230, column: 16, scope: !423)
!521 = !DILocation(line: 230, column: 14, scope: !423)
!522 = !DILocation(line: 231, column: 48, scope: !423)
!523 = !DILocation(line: 231, column: 53, scope: !423)
!524 = !DILocation(line: 231, column: 29, scope: !423)
!525 = !DILocation(line: 231, column: 58, scope: !423)
!526 = !DILocation(line: 231, column: 5, scope: !423)
!527 = !DILocation(line: 232, column: 14, scope: !423)
!528 = !DILocation(line: 232, column: 39, scope: !423)
!529 = !DILocation(line: 232, column: 49, scope: !423)
!530 = !DILocation(line: 232, column: 57, scope: !423)
!531 = !DILocation(line: 232, column: 5, scope: !423)
!532 = !DILocation(line: 233, column: 25, scope: !423)
!533 = !DILocation(line: 233, column: 50, scope: !423)
!534 = !DILocation(line: 234, column: 28, scope: !423)
!535 = !DILocation(line: 234, column: 33, scope: !423)
!536 = !DILocation(line: 234, column: 9, scope: !423)
!537 = !DILocation(line: 234, column: 58, scope: !423)
!538 = !DILocation(line: 234, column: 63, scope: !423)
!539 = !DILocation(line: 234, column: 39, scope: !423)
!540 = !DILocation(line: 233, column: 5, scope: !423)
!541 = !DILocation(line: 235, column: 24, scope: !423)
!542 = !DILocation(line: 235, column: 29, scope: !423)
!543 = !DILocation(line: 235, column: 5, scope: !423)
!544 = !DILocation(line: 236, column: 22, scope: !423)
!545 = !DILocation(line: 236, column: 27, scope: !423)
!546 = !DILocation(line: 236, column: 5, scope: !423)
!547 = !DILocation(line: 238, column: 5, scope: !423)
!548 = !DILocation(line: 239, column: 1, scope: !423)
!549 = distinct !DISubprogram(name: "nn_xrep_setopt", scope: !2, file: !2, line: 241, type: !90, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !200)
!550 = !DILocalVariable(name: "self", arg: 1, scope: !549, file: !2, line: 241, type: !46)
!551 = !DILocation(line: 241, column: 41, scope: !549)
!552 = !DILocalVariable(name: "level", arg: 2, scope: !549, file: !2, line: 241, type: !52)
!553 = !DILocation(line: 241, column: 51, scope: !549)
!554 = !DILocalVariable(name: "option", arg: 3, scope: !549, file: !2, line: 241, type: !52)
!555 = !DILocation(line: 241, column: 62, scope: !549)
!556 = !DILocalVariable(name: "optval", arg: 4, scope: !549, file: !2, line: 242, type: !92)
!557 = !DILocation(line: 242, column: 17, scope: !549)
!558 = !DILocalVariable(name: "optvallen", arg: 5, scope: !549, file: !2, line: 242, type: !94)
!559 = !DILocation(line: 242, column: 32, scope: !549)
!560 = !DILocation(line: 244, column: 5, scope: !549)
!561 = distinct !DISubprogram(name: "nn_xrep_getopt", scope: !2, file: !2, line: 247, type: !99, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !200)
!562 = !DILocalVariable(name: "self", arg: 1, scope: !561, file: !2, line: 247, type: !46)
!563 = !DILocation(line: 247, column: 41, scope: !561)
!564 = !DILocalVariable(name: "level", arg: 2, scope: !561, file: !2, line: 247, type: !52)
!565 = !DILocation(line: 247, column: 51, scope: !561)
!566 = !DILocalVariable(name: "option", arg: 3, scope: !561, file: !2, line: 247, type: !52)
!567 = !DILocation(line: 247, column: 62, scope: !561)
!568 = !DILocalVariable(name: "optval", arg: 4, scope: !561, file: !2, line: 248, type: !101)
!569 = !DILocation(line: 248, column: 11, scope: !561)
!570 = !DILocalVariable(name: "optvallen", arg: 5, scope: !561, file: !2, line: 248, type: !102)
!571 = !DILocation(line: 248, column: 27, scope: !561)
!572 = !DILocation(line: 250, column: 5, scope: !561)
!573 = distinct !DISubprogram(name: "nn_xrep_ispeer", scope: !2, file: !2, line: 265, type: !184, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !200)
!574 = !DILocalVariable(name: "socktype", arg: 1, scope: !573, file: !2, line: 265, type: !52)
!575 = !DILocation(line: 265, column: 25, scope: !573)
!576 = !DILocation(line: 267, column: 12, scope: !573)
!577 = !DILocation(line: 267, column: 21, scope: !573)
!578 = !DILocation(line: 267, column: 5, scope: !573)
!579 = distinct !DISubprogram(name: "nn_xrep_create", scope: !2, file: !2, line: 253, type: !179, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !200)
!580 = !DILocalVariable(name: "hint", arg: 1, scope: !579, file: !2, line: 253, type: !101)
!581 = !DILocation(line: 253, column: 34, scope: !579)
!582 = !DILocalVariable(name: "sockbase", arg: 2, scope: !579, file: !2, line: 253, type: !181)
!583 = !DILocation(line: 253, column: 61, scope: !579)
!584 = !DILocalVariable(name: "self", scope: !579, file: !2, line: 255, type: !29)
!585 = !DILocation(line: 255, column: 21, scope: !579)
!586 = !DILocation(line: 257, column: 12, scope: !579)
!587 = !DILocation(line: 257, column: 10, scope: !579)
!588 = !DILocation(line: 258, column: 5, scope: !579)
!589 = !DILocation(line: 258, column: 5, scope: !590)
!590 = distinct !DILexicalBlock(scope: !591, file: !2, line: 258, column: 5)
!591 = distinct !DILexicalBlock(scope: !579, file: !2, line: 258, column: 5)
!592 = !DILocation(line: 258, column: 5, scope: !591)
!593 = !DILocation(line: 258, column: 5, scope: !594)
!594 = distinct !DILexicalBlock(scope: !590, file: !2, line: 258, column: 5)
!595 = !DILocation(line: 259, column: 19, scope: !579)
!596 = !DILocation(line: 259, column: 50, scope: !579)
!597 = !DILocation(line: 259, column: 5, scope: !579)
!598 = !DILocation(line: 260, column: 18, scope: !579)
!599 = !DILocation(line: 260, column: 24, scope: !579)
!600 = !DILocation(line: 260, column: 6, scope: !579)
!601 = !DILocation(line: 260, column: 15, scope: !579)
!602 = !DILocation(line: 262, column: 5, scope: !579)
!603 = distinct !DISubprogram(name: "nn_xrep_destroy", scope: !2, file: !2, line: 75, type: !44, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !200)
!604 = !DILocalVariable(name: "self", arg: 1, scope: !603, file: !2, line: 75, type: !46)
!605 = !DILocation(line: 75, column: 50, scope: !603)
!606 = !DILocalVariable(name: "xrep", scope: !603, file: !2, line: 77, type: !29)
!607 = !DILocation(line: 77, column: 21, scope: !603)
!608 = !DILocation(line: 79, column: 12, scope: !603)
!609 = !DILocation(line: 79, column: 10, scope: !603)
!610 = !DILocation(line: 81, column: 19, scope: !603)
!611 = !DILocation(line: 81, column: 5, scope: !603)
!612 = !DILocation(line: 82, column: 14, scope: !603)
!613 = !DILocation(line: 82, column: 5, scope: !603)
!614 = !DILocation(line: 83, column: 1, scope: !603)
