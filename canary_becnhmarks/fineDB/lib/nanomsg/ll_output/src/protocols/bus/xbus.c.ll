; ModuleID = './src/protocols/bus/xbus.c'
source_filename = "./src/protocols/bus/xbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_sockbase_vfptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nn_xbus = type { %struct.nn_sockbase, %struct.nn_dist, %struct.nn_fq }
%struct.nn_sockbase = type { ptr, ptr }
%struct.nn_dist = type { i64, %struct.nn_list }
%struct.nn_list = type { ptr, ptr }
%struct.nn_fq = type { %struct.nn_priolist }
%struct.nn_priolist = type { [16 x %struct.nn_priolist_slot], i32 }
%struct.nn_priolist_slot = type { %struct.nn_list, ptr }
%struct.nn_xbus_data = type { %struct.nn_dist_data, %struct.nn_fq_data }
%struct.nn_dist_data = type { %struct.nn_list_item, ptr }
%struct.nn_fq_data = type { %struct.nn_priolist_data }
%struct.nn_priolist_data = type { ptr, i32, %struct.nn_list_item }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [27 x i8] c"./src/protocols/bus/xbus.c\00", align 1, !dbg !7
@nn_xbus_socktype_struct = internal global %struct.nn_socktype { i32 2, i32 112, i32 0, ptr @nn_xbus_create, ptr @nn_xbus_ispeer, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !12
@nn_xbus_socktype = dso_local global ptr @nn_xbus_socktype_struct, align 8, !dbg !135
@nn_xbus_sockbase_vfptr = internal constant %struct.nn_sockbase_vfptr { ptr null, ptr @nn_xbus_destroy, ptr @nn_xbus_add, ptr @nn_xbus_rm, ptr @nn_xbus_in, ptr @nn_xbus_out, ptr @nn_xbus_events, ptr @nn_xbus_send, ptr @nn_xbus_recv, ptr @nn_xbus_setopt, ptr @nn_xbus_getopt }, align 8, !dbg !153

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xbus_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !163 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !167, metadata !DIExpression()), !dbg !168
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !169, metadata !DIExpression()), !dbg !170
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !171, metadata !DIExpression()), !dbg !172
  %7 = load ptr, ptr %4, align 8, !dbg !173
  %8 = getelementptr inbounds %struct.nn_xbus, ptr %7, i32 0, i32 0, !dbg !174
  %9 = load ptr, ptr %5, align 8, !dbg !175
  %10 = load ptr, ptr %6, align 8, !dbg !176
  call void @nn_sockbase_init(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !177
  %11 = load ptr, ptr %4, align 8, !dbg !178
  %12 = getelementptr inbounds %struct.nn_xbus, ptr %11, i32 0, i32 1, !dbg !179
  call void @nn_dist_init(ptr noundef %12), !dbg !180
  %13 = load ptr, ptr %4, align 8, !dbg !181
  %14 = getelementptr inbounds %struct.nn_xbus, ptr %13, i32 0, i32 2, !dbg !182
  call void @nn_fq_init(ptr noundef %14), !dbg !183
  ret void, !dbg !184
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_sockbase_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_dist_init(ptr noundef) #2

declare void @nn_fq_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xbus_term(ptr noundef %0) #0 !dbg !185 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !188, metadata !DIExpression()), !dbg !189
  %3 = load ptr, ptr %2, align 8, !dbg !190
  %4 = getelementptr inbounds %struct.nn_xbus, ptr %3, i32 0, i32 2, !dbg !191
  call void @nn_fq_term(ptr noundef %4), !dbg !192
  %5 = load ptr, ptr %2, align 8, !dbg !193
  %6 = getelementptr inbounds %struct.nn_xbus, ptr %5, i32 0, i32 1, !dbg !194
  call void @nn_dist_term(ptr noundef %6), !dbg !195
  %7 = load ptr, ptr %2, align 8, !dbg !196
  %8 = getelementptr inbounds %struct.nn_xbus, ptr %7, i32 0, i32 0, !dbg !197
  call void @nn_sockbase_term(ptr noundef %8), !dbg !198
  ret void, !dbg !199
}

declare void @nn_fq_term(ptr noundef) #2

declare void @nn_dist_term(ptr noundef) #2

declare void @nn_sockbase_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xbus_add(ptr noundef %0, ptr noundef %1) #0 !dbg !200 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !201, metadata !DIExpression()), !dbg !202
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata ptr %5, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata ptr %6, metadata !207, metadata !DIExpression()), !dbg !220
  %7 = load ptr, ptr %3, align 8, !dbg !221
  %8 = icmp ne ptr %7, null, !dbg !221
  br i1 %8, label %9, label %12, !dbg !221

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !221
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !221
  br label %13, !dbg !221

12:                                               ; preds = %2
  br label %13, !dbg !221

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !221
  store ptr %14, ptr %5, align 8, !dbg !222
  %15 = call ptr @nn_alloc_(i64 noundef 56), !dbg !223
  store ptr %15, ptr %6, align 8, !dbg !224
  br label %16, !dbg !225

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8, !dbg !226
  %18 = icmp ne ptr %17, null, !dbg !226
  %19 = xor i1 %18, true, !dbg !226
  %20 = zext i1 %19 to i32, !dbg !226
  %21 = sext i32 %20 to i64, !dbg !226
  %22 = icmp ne i64 %21, 0, !dbg !226
  br i1 %22, label %23, label %26, !dbg !229

23:                                               ; preds = %16
  %24 = load ptr, ptr @stderr, align 8, !dbg !230
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 93), !dbg !230
  call void @nn_err_abort() #6, !dbg !230
  unreachable, !dbg !230

26:                                               ; preds = %16
  br label %27, !dbg !229

27:                                               ; preds = %26
  %28 = load ptr, ptr %5, align 8, !dbg !232
  %29 = getelementptr inbounds %struct.nn_xbus, ptr %28, i32 0, i32 2, !dbg !233
  %30 = load ptr, ptr %4, align 8, !dbg !234
  %31 = load ptr, ptr %6, align 8, !dbg !235
  %32 = getelementptr inbounds %struct.nn_xbus_data, ptr %31, i32 0, i32 1, !dbg !236
  call void @nn_fq_add(ptr noundef %29, ptr noundef %30, ptr noundef %32, i32 noundef 8), !dbg !237
  %33 = load ptr, ptr %5, align 8, !dbg !238
  %34 = getelementptr inbounds %struct.nn_xbus, ptr %33, i32 0, i32 1, !dbg !239
  %35 = load ptr, ptr %4, align 8, !dbg !240
  %36 = load ptr, ptr %6, align 8, !dbg !241
  %37 = getelementptr inbounds %struct.nn_xbus_data, ptr %36, i32 0, i32 0, !dbg !242
  call void @nn_dist_add(ptr noundef %34, ptr noundef %35, ptr noundef %37), !dbg !243
  %38 = load ptr, ptr %4, align 8, !dbg !244
  %39 = load ptr, ptr %6, align 8, !dbg !245
  call void @nn_pipe_setdata(ptr noundef %38, ptr noundef %39), !dbg !246
  ret i32 0, !dbg !247
}

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_fq_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @nn_dist_add(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_pipe_setdata(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xbus_rm(ptr noundef %0, ptr noundef %1) #0 !dbg !248 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !249, metadata !DIExpression()), !dbg !250
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata ptr %5, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata ptr %6, metadata !255, metadata !DIExpression()), !dbg !256
  %7 = load ptr, ptr %3, align 8, !dbg !257
  %8 = icmp ne ptr %7, null, !dbg !257
  br i1 %8, label %9, label %12, !dbg !257

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !257
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !257
  br label %13, !dbg !257

12:                                               ; preds = %2
  br label %13, !dbg !257

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !257
  store ptr %14, ptr %5, align 8, !dbg !258
  %15 = load ptr, ptr %4, align 8, !dbg !259
  %16 = call ptr @nn_pipe_getdata(ptr noundef %15), !dbg !260
  store ptr %16, ptr %6, align 8, !dbg !261
  %17 = load ptr, ptr %5, align 8, !dbg !262
  %18 = getelementptr inbounds %struct.nn_xbus, ptr %17, i32 0, i32 2, !dbg !263
  %19 = load ptr, ptr %4, align 8, !dbg !264
  %20 = load ptr, ptr %6, align 8, !dbg !265
  %21 = getelementptr inbounds %struct.nn_xbus_data, ptr %20, i32 0, i32 1, !dbg !266
  call void @nn_fq_rm(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !267
  %22 = load ptr, ptr %5, align 8, !dbg !268
  %23 = getelementptr inbounds %struct.nn_xbus, ptr %22, i32 0, i32 1, !dbg !269
  %24 = load ptr, ptr %4, align 8, !dbg !270
  %25 = load ptr, ptr %6, align 8, !dbg !271
  %26 = getelementptr inbounds %struct.nn_xbus_data, ptr %25, i32 0, i32 0, !dbg !272
  call void @nn_dist_rm(ptr noundef %23, ptr noundef %24, ptr noundef %26), !dbg !273
  %27 = load ptr, ptr %6, align 8, !dbg !274
  call void @nn_free(ptr noundef %27), !dbg !275
  ret void, !dbg !276
}

declare ptr @nn_pipe_getdata(ptr noundef) #2

declare void @nn_fq_rm(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_dist_rm(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xbus_in(ptr noundef %0, ptr noundef %1) #0 !dbg !277 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !278, metadata !DIExpression()), !dbg !279
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata ptr %5, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata ptr %6, metadata !284, metadata !DIExpression()), !dbg !285
  %7 = load ptr, ptr %3, align 8, !dbg !286
  %8 = icmp ne ptr %7, null, !dbg !286
  br i1 %8, label %9, label %12, !dbg !286

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !286
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !286
  br label %13, !dbg !286

12:                                               ; preds = %2
  br label %13, !dbg !286

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !286
  store ptr %14, ptr %5, align 8, !dbg !287
  %15 = load ptr, ptr %4, align 8, !dbg !288
  %16 = call ptr @nn_pipe_getdata(ptr noundef %15), !dbg !289
  store ptr %16, ptr %6, align 8, !dbg !290
  %17 = load ptr, ptr %5, align 8, !dbg !291
  %18 = getelementptr inbounds %struct.nn_xbus, ptr %17, i32 0, i32 2, !dbg !292
  %19 = load ptr, ptr %4, align 8, !dbg !293
  %20 = load ptr, ptr %6, align 8, !dbg !294
  %21 = getelementptr inbounds %struct.nn_xbus_data, ptr %20, i32 0, i32 1, !dbg !295
  call void @nn_fq_in(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !296
  ret void, !dbg !297
}

declare void @nn_fq_in(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xbus_out(ptr noundef %0, ptr noundef %1) #0 !dbg !298 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !299, metadata !DIExpression()), !dbg !300
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !301, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata ptr %5, metadata !303, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata ptr %6, metadata !305, metadata !DIExpression()), !dbg !306
  %7 = load ptr, ptr %3, align 8, !dbg !307
  %8 = icmp ne ptr %7, null, !dbg !307
  br i1 %8, label %9, label %12, !dbg !307

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !307
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !307
  br label %13, !dbg !307

12:                                               ; preds = %2
  br label %13, !dbg !307

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !307
  store ptr %14, ptr %5, align 8, !dbg !308
  %15 = load ptr, ptr %4, align 8, !dbg !309
  %16 = call ptr @nn_pipe_getdata(ptr noundef %15), !dbg !310
  store ptr %16, ptr %6, align 8, !dbg !311
  %17 = load ptr, ptr %5, align 8, !dbg !312
  %18 = getelementptr inbounds %struct.nn_xbus, ptr %17, i32 0, i32 1, !dbg !313
  %19 = load ptr, ptr %4, align 8, !dbg !314
  %20 = load ptr, ptr %6, align 8, !dbg !315
  %21 = getelementptr inbounds %struct.nn_xbus_data, ptr %20, i32 0, i32 0, !dbg !316
  call void @nn_dist_out(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !317
  ret void, !dbg !318
}

declare void @nn_dist_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xbus_events(ptr noundef %0) #0 !dbg !319 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !320, metadata !DIExpression()), !dbg !321
  %3 = load ptr, ptr %2, align 8, !dbg !322
  %4 = icmp ne ptr %3, null, !dbg !322
  br i1 %4, label %5, label %8, !dbg !322

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !322
  %7 = getelementptr inbounds i8, ptr %6, i64 0, !dbg !322
  br label %9, !dbg !322

8:                                                ; preds = %1
  br label %9, !dbg !322

9:                                                ; preds = %8, %5
  %10 = phi ptr [ %7, %5 ], [ null, %8 ], !dbg !322
  %11 = getelementptr inbounds %struct.nn_xbus, ptr %10, i32 0, i32 2, !dbg !323
  %12 = call i32 @nn_fq_can_recv(ptr noundef %11), !dbg !324
  %13 = icmp ne i32 %12, 0, !dbg !324
  %14 = zext i1 %13 to i64, !dbg !324
  %15 = select i1 %13, i32 1, i32 0, !dbg !324
  %16 = or i32 %15, 2, !dbg !325
  ret i32 %16, !dbg !326
}

declare i32 @nn_fq_can_recv(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xbus_send(ptr noundef %0, ptr noundef %1) #0 !dbg !327 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !328, metadata !DIExpression()), !dbg !329
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !330, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata ptr %6, metadata !332, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata ptr %7, metadata !334, metadata !DIExpression()), !dbg !335
  %8 = load ptr, ptr %5, align 8, !dbg !336
  %9 = getelementptr inbounds %struct.nn_msg, ptr %8, i32 0, i32 0, !dbg !337
  %10 = call i64 @nn_chunkref_size(ptr noundef %9), !dbg !338
  store i64 %10, ptr %6, align 8, !dbg !339
  %11 = load i64, ptr %6, align 8, !dbg !340
  %12 = icmp eq i64 %11, 0, !dbg !342
  br i1 %12, label %13, label %14, !dbg !343

13:                                               ; preds = %2
  store ptr null, ptr %7, align 8, !dbg !344
  br label %27, !dbg !345

14:                                               ; preds = %2
  %15 = load i64, ptr %6, align 8, !dbg !346
  %16 = icmp eq i64 %15, 8, !dbg !348
  br i1 %16, label %17, label %25, !dbg !349

17:                                               ; preds = %14
  %18 = load ptr, ptr %5, align 8, !dbg !350
  %19 = getelementptr inbounds %struct.nn_msg, ptr %18, i32 0, i32 0, !dbg !352
  %20 = call ptr @nn_chunkref_data(ptr noundef %19), !dbg !353
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 1 %20, i64 8, i1 false), !dbg !354
  %21 = load ptr, ptr %5, align 8, !dbg !355
  %22 = getelementptr inbounds %struct.nn_msg, ptr %21, i32 0, i32 0, !dbg !356
  call void @nn_chunkref_term(ptr noundef %22), !dbg !357
  %23 = load ptr, ptr %5, align 8, !dbg !358
  %24 = getelementptr inbounds %struct.nn_msg, ptr %23, i32 0, i32 0, !dbg !359
  call void @nn_chunkref_init(ptr noundef %24, i64 noundef 0), !dbg !360
  br label %26, !dbg !361

25:                                               ; preds = %14
  store i32 -22, ptr %3, align 4, !dbg !362
  br label %40, !dbg !362

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %13
  %28 = load ptr, ptr %4, align 8, !dbg !363
  %29 = icmp ne ptr %28, null, !dbg !363
  br i1 %29, label %30, label %33, !dbg !363

30:                                               ; preds = %27
  %31 = load ptr, ptr %4, align 8, !dbg !363
  %32 = getelementptr inbounds i8, ptr %31, i64 0, !dbg !363
  br label %34, !dbg !363

33:                                               ; preds = %27
  br label %34, !dbg !363

34:                                               ; preds = %33, %30
  %35 = phi ptr [ %32, %30 ], [ null, %33 ], !dbg !363
  %36 = getelementptr inbounds %struct.nn_xbus, ptr %35, i32 0, i32 1, !dbg !364
  %37 = load ptr, ptr %5, align 8, !dbg !365
  %38 = load ptr, ptr %7, align 8, !dbg !366
  %39 = call i32 @nn_dist_send(ptr noundef %36, ptr noundef %37, ptr noundef %38), !dbg !367
  store i32 %39, ptr %3, align 4, !dbg !368
  br label %40, !dbg !368

40:                                               ; preds = %34, %25
  %41 = load i32, ptr %3, align 4, !dbg !369
  ret i32 %41, !dbg !369
}

declare i64 @nn_chunkref_size(ptr noundef) #2

declare ptr @nn_chunkref_data(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @nn_chunkref_term(ptr noundef) #2

declare void @nn_chunkref_init(ptr noundef, i64 noundef) #2

declare i32 @nn_dist_send(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xbus_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !370 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !371, metadata !DIExpression()), !dbg !372
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.declare(metadata ptr %6, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata ptr %7, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata ptr %8, metadata !379, metadata !DIExpression()), !dbg !380
  %9 = load ptr, ptr %4, align 8, !dbg !381
  %10 = icmp ne ptr %9, null, !dbg !381
  br i1 %10, label %11, label %14, !dbg !381

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !dbg !381
  %13 = getelementptr inbounds i8, ptr %12, i64 0, !dbg !381
  br label %15, !dbg !381

14:                                               ; preds = %2
  br label %15, !dbg !381

15:                                               ; preds = %14, %11
  %16 = phi ptr [ %13, %11 ], [ null, %14 ], !dbg !381
  store ptr %16, ptr %7, align 8, !dbg !382
  br label %17, !dbg !383

17:                                               ; preds = %15, %35
  %18 = load ptr, ptr %7, align 8, !dbg !384
  %19 = getelementptr inbounds %struct.nn_xbus, ptr %18, i32 0, i32 2, !dbg !386
  %20 = load ptr, ptr %5, align 8, !dbg !387
  %21 = call i32 @nn_fq_recv(ptr noundef %19, ptr noundef %20, ptr noundef %8), !dbg !388
  store i32 %21, ptr %6, align 4, !dbg !389
  %22 = load i32, ptr %6, align 4, !dbg !390
  %23 = icmp slt i32 %22, 0, !dbg !390
  %24 = zext i1 %23 to i32, !dbg !390
  %25 = sext i32 %24 to i64, !dbg !390
  %26 = icmp ne i64 %25, 0, !dbg !390
  br i1 %26, label %27, label %29, !dbg !392

27:                                               ; preds = %17
  %28 = load i32, ptr %6, align 4, !dbg !393
  store i32 %28, ptr %3, align 4, !dbg !394
  br label %48, !dbg !394

29:                                               ; preds = %17
  %30 = load ptr, ptr %5, align 8, !dbg !395
  %31 = getelementptr inbounds %struct.nn_msg, ptr %30, i32 0, i32 0, !dbg !397
  %32 = call i64 @nn_chunkref_size(ptr noundef %31), !dbg !398
  %33 = icmp eq i64 %32, 0, !dbg !399
  br i1 %33, label %34, label %35, !dbg !400

34:                                               ; preds = %29
  br label %37, !dbg !401

35:                                               ; preds = %29
  %36 = load ptr, ptr %5, align 8, !dbg !402
  call void @nn_msg_term(ptr noundef %36), !dbg !403
  br label %17, !dbg !383, !llvm.loop !404

37:                                               ; preds = %34
  %38 = load ptr, ptr %5, align 8, !dbg !406
  %39 = getelementptr inbounds %struct.nn_msg, ptr %38, i32 0, i32 0, !dbg !407
  call void @nn_chunkref_term(ptr noundef %39), !dbg !408
  %40 = load ptr, ptr %5, align 8, !dbg !409
  %41 = getelementptr inbounds %struct.nn_msg, ptr %40, i32 0, i32 0, !dbg !410
  call void @nn_chunkref_init(ptr noundef %41, i64 noundef 8), !dbg !411
  %42 = load ptr, ptr %5, align 8, !dbg !412
  %43 = getelementptr inbounds %struct.nn_msg, ptr %42, i32 0, i32 0, !dbg !413
  %44 = call ptr @nn_chunkref_data(ptr noundef %43), !dbg !414
  call void @llvm.memset.p0.i64(ptr align 1 %44, i8 0, i64 8, i1 false), !dbg !415
  %45 = load ptr, ptr %5, align 8, !dbg !416
  %46 = getelementptr inbounds %struct.nn_msg, ptr %45, i32 0, i32 0, !dbg !417
  %47 = call ptr @nn_chunkref_data(ptr noundef %46), !dbg !418
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %47, ptr align 8 %8, i64 8, i1 false), !dbg !419
  store i32 0, ptr %3, align 4, !dbg !420
  br label %48, !dbg !420

48:                                               ; preds = %37, %27
  %49 = load i32, ptr %3, align 4, !dbg !421
  ret i32 %49, !dbg !421
}

declare i32 @nn_fq_recv(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_msg_term(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xbus_setopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !422 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !423, metadata !DIExpression()), !dbg !424
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !425, metadata !DIExpression()), !dbg !426
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !427, metadata !DIExpression()), !dbg !428
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !429, metadata !DIExpression()), !dbg !430
  store i64 %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !431, metadata !DIExpression()), !dbg !432
  ret i32 -92, !dbg !433
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xbus_getopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !434 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !435, metadata !DIExpression()), !dbg !436
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !437, metadata !DIExpression()), !dbg !438
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !439, metadata !DIExpression()), !dbg !440
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !441, metadata !DIExpression()), !dbg !442
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !443, metadata !DIExpression()), !dbg !444
  ret i32 -92, !dbg !445
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xbus_ispeer(i32 noundef %0) #0 !dbg !446 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !447, metadata !DIExpression()), !dbg !448
  %3 = load i32, ptr %2, align 4, !dbg !449
  %4 = icmp eq i32 %3, 112, !dbg !450
  %5 = zext i1 %4 to i64, !dbg !449
  %6 = select i1 %4, i32 1, i32 0, !dbg !449
  ret i32 %6, !dbg !451
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xbus_create(ptr noundef %0, ptr noundef %1) #0 !dbg !452 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !453, metadata !DIExpression()), !dbg !454
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata ptr %5, metadata !457, metadata !DIExpression()), !dbg !458
  %6 = call ptr @nn_alloc_(i64 noundef 432), !dbg !459
  store ptr %6, ptr %5, align 8, !dbg !460
  br label %7, !dbg !461

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !dbg !462
  %9 = icmp ne ptr %8, null, !dbg !462
  %10 = xor i1 %9, true, !dbg !462
  %11 = zext i1 %10 to i32, !dbg !462
  %12 = sext i32 %11 to i64, !dbg !462
  %13 = icmp ne i64 %12, 0, !dbg !462
  br i1 %13, label %14, label %17, !dbg !465

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !466
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 210), !dbg !466
  call void @nn_err_abort() #6, !dbg !466
  unreachable, !dbg !466

17:                                               ; preds = %7
  br label %18, !dbg !465

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !468
  %20 = load ptr, ptr %3, align 8, !dbg !469
  call void @nn_xbus_init(ptr noundef %19, ptr noundef @nn_xbus_sockbase_vfptr, ptr noundef %20), !dbg !470
  %21 = load ptr, ptr %5, align 8, !dbg !471
  %22 = getelementptr inbounds %struct.nn_xbus, ptr %21, i32 0, i32 0, !dbg !472
  %23 = load ptr, ptr %4, align 8, !dbg !473
  store ptr %22, ptr %23, align 8, !dbg !474
  ret i32 0, !dbg !475
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xbus_destroy(ptr noundef %0) #0 !dbg !476 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata ptr %3, metadata !479, metadata !DIExpression()), !dbg !480
  %4 = load ptr, ptr %2, align 8, !dbg !481
  %5 = icmp ne ptr %4, null, !dbg !481
  br i1 %5, label %6, label %9, !dbg !481

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !481
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !481
  br label %10, !dbg !481

9:                                                ; preds = %1
  br label %10, !dbg !481

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !481
  store ptr %11, ptr %3, align 8, !dbg !482
  %12 = load ptr, ptr %3, align 8, !dbg !483
  call void @nn_xbus_term(ptr noundef %12), !dbg !484
  %13 = load ptr, ptr %3, align 8, !dbg !485
  call void @nn_free(ptr noundef %13), !dbg !486
  ret void, !dbg !487
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/protocols/bus/xbus.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "7c073cd082d6c761630320efa87a84d0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 27)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "nn_xbus_socktype_struct", scope: !14, file: !2, line: 222, type: !138, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !15, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !16, globals: !134, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "src/protocols/bus/xbus.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "7c073cd082d6c761630320efa87a84d0")
!16 = !{!17, !133}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xbus", file: !19, line: 38, size: 3456, elements: !20)
!19 = !DIFile(filename: "./src/protocols/bus/xbus.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "f88088650de267aee352723b18bd57ef")
!20 = !{!21, !94, !110}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !18, file: !19, line: 39, baseType: !22, size: 128)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !23, line: 123, size: 128, elements: !24)
!23 = !DIFile(filename: "./src/protocols/bus/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!24 = !{!25, !91}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !22, file: !23, line: 124, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase_vfptr", file: !23, line: 84, size: 704, elements: !29)
!29 = !{!30, !35, !36, !43, !47, !48, !49, !53, !75, !76, !85}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !28, file: !23, line: 87, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !28, file: !23, line: 90, baseType: !31, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !28, file: !23, line: 97, baseType: !37, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !34, !41}
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !23, line: 56, flags: DIFlagFwdDecl)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !28, file: !23, line: 98, baseType: !44, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !34, !41}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !28, file: !23, line: 99, baseType: !44, size: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !28, file: !23, line: 100, baseType: !44, size: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !28, file: !23, line: 104, baseType: !50, size: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!40, !34}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !28, file: !23, line: 108, baseType: !54, size: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!40, !34, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !59, line: 30, size: 512, elements: !60)
!59 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!60 = !{!61, !74}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !58, file: !59, line: 33, baseType: !62, size: 256)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !63, line: 39, size: 256, elements: !64)
!63 = !DIFile(filename: "src/utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !62, file: !63, line: 40, baseType: !66, size: 256)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 256, elements: !72)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !68, line: 24, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !70, line: 38, baseType: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!71 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!72 = !{!73}
!73 = !DISubrange(count: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !58, file: !59, line: 36, baseType: !62, size: 256, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !28, file: !23, line: 112, baseType: !54, size: 64, offset: 512)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !28, file: !23, line: 115, baseType: !77, size: 64, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!40, !34, !40, !40, !80, !82}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !83, line: 46, baseType: !84)
!83 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!84 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !28, file: !23, line: 119, baseType: !86, size: 64, offset: 640)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!40, !34, !40, !40, !89, !90}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !22, file: !23, line: 125, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !23, line: 125, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "outpipes", scope: !18, file: !19, line: 40, baseType: !95, size: 192, offset: 128)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_dist", file: !96, line: 37, size: 192, elements: !97)
!96 = !DIFile(filename: "./src/protocols/bus/../utils/dist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8b675b0838905739d217dd53d5a3b3af")
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !95, file: !96, line: 38, baseType: !82, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !95, file: !96, line: 39, baseType: !100, size: 128, offset: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !101, line: 31, size: 128, elements: !102)
!101 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!102 = !{!103, !109}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !100, file: !101, line: 32, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !101, line: 26, size: 128, elements: !106)
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !101, line: 27, baseType: !104, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !105, file: !101, line: 28, baseType: !104, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !100, file: !101, line: 33, baseType: !104, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "inpipes", scope: !18, file: !19, line: 41, baseType: !111, size: 3136, offset: 320)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fq", file: !112, line: 37, size: 3136, elements: !113)
!112 = !DIFile(filename: "./src/protocols/bus/../utils/fq.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "342bacd48eb65b84f809ed6b86c6514c")
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !111, file: !112, line: 38, baseType: !115, size: 3136)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist", file: !116, line: 45, size: 3136, elements: !117)
!116 = !DIFile(filename: "./src/protocols/bus/../utils/priolist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e7a7c69c9c81fe3b1beae760b1a28137")
!117 = !{!118, !132}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !115, file: !116, line: 46, baseType: !119, size: 3072)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 3072, elements: !130)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_slot", file: !116, line: 40, size: 192, elements: !121)
!121 = !{!122, !123}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !120, file: !116, line: 41, baseType: !100, size: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !120, file: !116, line: 42, baseType: !124, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_data", file: !116, line: 34, size: 256, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !125, file: !116, line: 35, baseType: !41, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !125, file: !116, line: 36, baseType: !40, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !125, file: !116, line: 37, baseType: !105, size: 128, offset: 128)
!130 = !{!131}
!131 = !DISubrange(count: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !115, file: !116, line: 47, baseType: !40, size: 32, offset: 3072)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!134 = !{!0, !7, !135, !12, !153}
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "nn_xbus_socktype", scope: !14, file: !2, line: 231, type: !137, isLocal: false, isDefinition: true)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !23, line: 160, size: 384, elements: !139)
!139 = !{!140, !141, !142, !143, !148, !152}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !138, file: !23, line: 163, baseType: !40, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !138, file: !23, line: 164, baseType: !40, size: 32, offset: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !23, line: 167, baseType: !40, size: 32, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !138, file: !23, line: 173, baseType: !144, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!40, !89, !147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !138, file: !23, line: 179, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!40, !40}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !138, file: !23, line: 183, baseType: !105, size: 128, offset: 256)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "nn_xbus_sockbase_vfptr", scope: !14, file: !2, line: 45, type: !27, isLocal: true, isDefinition: true)
!155 = !{i32 7, !"Dwarf Version", i32 5}
!156 = !{i32 2, !"Debug Info Version", i32 3}
!157 = !{i32 1, !"wchar_size", i32 4}
!158 = !{i32 8, !"PIC Level", i32 2}
!159 = !{i32 7, !"PIE Level", i32 2}
!160 = !{i32 7, !"uwtable", i32 2}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 16.0.0"}
!163 = distinct !DISubprogram(name: "nn_xbus_init", scope: !2, file: !2, line: 59, type: !164, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !166)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !17, !26, !89}
!166 = !{}
!167 = !DILocalVariable(name: "self", arg: 1, scope: !163, file: !2, line: 59, type: !17)
!168 = !DILocation(line: 59, column: 36, scope: !163)
!169 = !DILocalVariable(name: "vfptr", arg: 2, scope: !163, file: !2, line: 60, type: !26)
!170 = !DILocation(line: 60, column: 37, scope: !163)
!171 = !DILocalVariable(name: "hint", arg: 3, scope: !163, file: !2, line: 60, type: !89)
!172 = !DILocation(line: 60, column: 50, scope: !163)
!173 = !DILocation(line: 62, column: 24, scope: !163)
!174 = !DILocation(line: 62, column: 30, scope: !163)
!175 = !DILocation(line: 62, column: 40, scope: !163)
!176 = !DILocation(line: 62, column: 47, scope: !163)
!177 = !DILocation(line: 62, column: 5, scope: !163)
!178 = !DILocation(line: 63, column: 20, scope: !163)
!179 = !DILocation(line: 63, column: 26, scope: !163)
!180 = !DILocation(line: 63, column: 5, scope: !163)
!181 = !DILocation(line: 64, column: 18, scope: !163)
!182 = !DILocation(line: 64, column: 24, scope: !163)
!183 = !DILocation(line: 64, column: 5, scope: !163)
!184 = !DILocation(line: 65, column: 1, scope: !163)
!185 = distinct !DISubprogram(name: "nn_xbus_term", scope: !2, file: !2, line: 67, type: !186, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !166)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !17}
!188 = !DILocalVariable(name: "self", arg: 1, scope: !185, file: !2, line: 67, type: !17)
!189 = !DILocation(line: 67, column: 36, scope: !185)
!190 = !DILocation(line: 69, column: 18, scope: !185)
!191 = !DILocation(line: 69, column: 24, scope: !185)
!192 = !DILocation(line: 69, column: 5, scope: !185)
!193 = !DILocation(line: 70, column: 20, scope: !185)
!194 = !DILocation(line: 70, column: 26, scope: !185)
!195 = !DILocation(line: 70, column: 5, scope: !185)
!196 = !DILocation(line: 71, column: 24, scope: !185)
!197 = !DILocation(line: 71, column: 30, scope: !185)
!198 = !DILocation(line: 71, column: 5, scope: !185)
!199 = !DILocation(line: 72, column: 1, scope: !185)
!200 = distinct !DISubprogram(name: "nn_xbus_add", scope: !2, file: !2, line: 84, type: !38, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !166)
!201 = !DILocalVariable(name: "self", arg: 1, scope: !200, file: !2, line: 84, type: !34)
!202 = !DILocation(line: 84, column: 38, scope: !200)
!203 = !DILocalVariable(name: "pipe", arg: 2, scope: !200, file: !2, line: 84, type: !41)
!204 = !DILocation(line: 84, column: 60, scope: !200)
!205 = !DILocalVariable(name: "xbus", scope: !200, file: !2, line: 86, type: !17)
!206 = !DILocation(line: 86, column: 21, scope: !200)
!207 = !DILocalVariable(name: "data", scope: !200, file: !2, line: 87, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xbus_data", file: !19, line: 33, size: 448, elements: !210)
!210 = !{!211, !216}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "outitem", scope: !209, file: !19, line: 34, baseType: !212, size: 192)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_dist_data", file: !96, line: 32, size: 192, elements: !213)
!213 = !{!214, !215}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !212, file: !96, line: 33, baseType: !105, size: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !212, file: !96, line: 34, baseType: !41, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "initem", scope: !209, file: !19, line: 35, baseType: !217, size: 256, offset: 192)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fq_data", file: !112, line: 33, size: 256, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !217, file: !112, line: 34, baseType: !125, size: 256)
!220 = !DILocation(line: 87, column: 26, scope: !200)
!221 = !DILocation(line: 89, column: 12, scope: !200)
!222 = !DILocation(line: 89, column: 10, scope: !200)
!223 = !DILocation(line: 91, column: 12, scope: !200)
!224 = !DILocation(line: 91, column: 10, scope: !200)
!225 = !DILocation(line: 93, column: 5, scope: !200)
!226 = !DILocation(line: 93, column: 5, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !2, line: 93, column: 5)
!228 = distinct !DILexicalBlock(scope: !200, file: !2, line: 93, column: 5)
!229 = !DILocation(line: 93, column: 5, scope: !228)
!230 = !DILocation(line: 93, column: 5, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !2, line: 93, column: 5)
!232 = !DILocation(line: 94, column: 17, scope: !200)
!233 = !DILocation(line: 94, column: 23, scope: !200)
!234 = !DILocation(line: 94, column: 32, scope: !200)
!235 = !DILocation(line: 94, column: 39, scope: !200)
!236 = !DILocation(line: 94, column: 45, scope: !200)
!237 = !DILocation(line: 94, column: 5, scope: !200)
!238 = !DILocation(line: 95, column: 19, scope: !200)
!239 = !DILocation(line: 95, column: 25, scope: !200)
!240 = !DILocation(line: 95, column: 35, scope: !200)
!241 = !DILocation(line: 95, column: 42, scope: !200)
!242 = !DILocation(line: 95, column: 48, scope: !200)
!243 = !DILocation(line: 95, column: 5, scope: !200)
!244 = !DILocation(line: 96, column: 22, scope: !200)
!245 = !DILocation(line: 96, column: 28, scope: !200)
!246 = !DILocation(line: 96, column: 5, scope: !200)
!247 = !DILocation(line: 98, column: 5, scope: !200)
!248 = distinct !DISubprogram(name: "nn_xbus_rm", scope: !2, file: !2, line: 101, type: !45, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !166)
!249 = !DILocalVariable(name: "self", arg: 1, scope: !248, file: !2, line: 101, type: !34)
!250 = !DILocation(line: 101, column: 38, scope: !248)
!251 = !DILocalVariable(name: "pipe", arg: 2, scope: !248, file: !2, line: 101, type: !41)
!252 = !DILocation(line: 101, column: 60, scope: !248)
!253 = !DILocalVariable(name: "xbus", scope: !248, file: !2, line: 103, type: !17)
!254 = !DILocation(line: 103, column: 21, scope: !248)
!255 = !DILocalVariable(name: "data", scope: !248, file: !2, line: 104, type: !208)
!256 = !DILocation(line: 104, column: 26, scope: !248)
!257 = !DILocation(line: 106, column: 12, scope: !248)
!258 = !DILocation(line: 106, column: 10, scope: !248)
!259 = !DILocation(line: 107, column: 29, scope: !248)
!260 = !DILocation(line: 107, column: 12, scope: !248)
!261 = !DILocation(line: 107, column: 10, scope: !248)
!262 = !DILocation(line: 109, column: 16, scope: !248)
!263 = !DILocation(line: 109, column: 22, scope: !248)
!264 = !DILocation(line: 109, column: 31, scope: !248)
!265 = !DILocation(line: 109, column: 38, scope: !248)
!266 = !DILocation(line: 109, column: 44, scope: !248)
!267 = !DILocation(line: 109, column: 5, scope: !248)
!268 = !DILocation(line: 110, column: 18, scope: !248)
!269 = !DILocation(line: 110, column: 24, scope: !248)
!270 = !DILocation(line: 110, column: 34, scope: !248)
!271 = !DILocation(line: 110, column: 41, scope: !248)
!272 = !DILocation(line: 110, column: 47, scope: !248)
!273 = !DILocation(line: 110, column: 5, scope: !248)
!274 = !DILocation(line: 112, column: 14, scope: !248)
!275 = !DILocation(line: 112, column: 5, scope: !248)
!276 = !DILocation(line: 113, column: 1, scope: !248)
!277 = distinct !DISubprogram(name: "nn_xbus_in", scope: !2, file: !2, line: 115, type: !45, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !166)
!278 = !DILocalVariable(name: "self", arg: 1, scope: !277, file: !2, line: 115, type: !34)
!279 = !DILocation(line: 115, column: 38, scope: !277)
!280 = !DILocalVariable(name: "pipe", arg: 2, scope: !277, file: !2, line: 115, type: !41)
!281 = !DILocation(line: 115, column: 60, scope: !277)
!282 = !DILocalVariable(name: "xbus", scope: !277, file: !2, line: 117, type: !17)
!283 = !DILocation(line: 117, column: 21, scope: !277)
!284 = !DILocalVariable(name: "data", scope: !277, file: !2, line: 118, type: !208)
!285 = !DILocation(line: 118, column: 26, scope: !277)
!286 = !DILocation(line: 120, column: 12, scope: !277)
!287 = !DILocation(line: 120, column: 10, scope: !277)
!288 = !DILocation(line: 121, column: 29, scope: !277)
!289 = !DILocation(line: 121, column: 12, scope: !277)
!290 = !DILocation(line: 121, column: 10, scope: !277)
!291 = !DILocation(line: 123, column: 16, scope: !277)
!292 = !DILocation(line: 123, column: 22, scope: !277)
!293 = !DILocation(line: 123, column: 31, scope: !277)
!294 = !DILocation(line: 123, column: 38, scope: !277)
!295 = !DILocation(line: 123, column: 44, scope: !277)
!296 = !DILocation(line: 123, column: 5, scope: !277)
!297 = !DILocation(line: 124, column: 1, scope: !277)
!298 = distinct !DISubprogram(name: "nn_xbus_out", scope: !2, file: !2, line: 126, type: !45, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !166)
!299 = !DILocalVariable(name: "self", arg: 1, scope: !298, file: !2, line: 126, type: !34)
!300 = !DILocation(line: 126, column: 39, scope: !298)
!301 = !DILocalVariable(name: "pipe", arg: 2, scope: !298, file: !2, line: 126, type: !41)
!302 = !DILocation(line: 126, column: 61, scope: !298)
!303 = !DILocalVariable(name: "xbus", scope: !298, file: !2, line: 128, type: !17)
!304 = !DILocation(line: 128, column: 21, scope: !298)
!305 = !DILocalVariable(name: "data", scope: !298, file: !2, line: 129, type: !208)
!306 = !DILocation(line: 129, column: 26, scope: !298)
!307 = !DILocation(line: 131, column: 12, scope: !298)
!308 = !DILocation(line: 131, column: 10, scope: !298)
!309 = !DILocation(line: 132, column: 29, scope: !298)
!310 = !DILocation(line: 132, column: 12, scope: !298)
!311 = !DILocation(line: 132, column: 10, scope: !298)
!312 = !DILocation(line: 134, column: 19, scope: !298)
!313 = !DILocation(line: 134, column: 25, scope: !298)
!314 = !DILocation(line: 134, column: 35, scope: !298)
!315 = !DILocation(line: 134, column: 42, scope: !298)
!316 = !DILocation(line: 134, column: 48, scope: !298)
!317 = !DILocation(line: 134, column: 5, scope: !298)
!318 = !DILocation(line: 135, column: 1, scope: !298)
!319 = distinct !DISubprogram(name: "nn_xbus_events", scope: !2, file: !2, line: 137, type: !51, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !166)
!320 = !DILocalVariable(name: "self", arg: 1, scope: !319, file: !2, line: 137, type: !34)
!321 = !DILocation(line: 137, column: 41, scope: !319)
!322 = !DILocation(line: 139, column: 30, scope: !319)
!323 = !DILocation(line: 140, column: 20, scope: !319)
!324 = !DILocation(line: 139, column: 13, scope: !319)
!325 = !DILocation(line: 140, column: 57, scope: !319)
!326 = !DILocation(line: 139, column: 5, scope: !319)
!327 = distinct !DISubprogram(name: "nn_xbus_send", scope: !2, file: !2, line: 143, type: !55, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !166)
!328 = !DILocalVariable(name: "self", arg: 1, scope: !327, file: !2, line: 143, type: !34)
!329 = !DILocation(line: 143, column: 39, scope: !327)
!330 = !DILocalVariable(name: "msg", arg: 2, scope: !327, file: !2, line: 143, type: !57)
!331 = !DILocation(line: 143, column: 60, scope: !327)
!332 = !DILocalVariable(name: "hdrsz", scope: !327, file: !2, line: 145, type: !82)
!333 = !DILocation(line: 145, column: 12, scope: !327)
!334 = !DILocalVariable(name: "exclude", scope: !327, file: !2, line: 146, type: !41)
!335 = !DILocation(line: 146, column: 21, scope: !327)
!336 = !DILocation(line: 148, column: 32, scope: !327)
!337 = !DILocation(line: 148, column: 37, scope: !327)
!338 = !DILocation(line: 148, column: 13, scope: !327)
!339 = !DILocation(line: 148, column: 11, scope: !327)
!340 = !DILocation(line: 149, column: 9, scope: !341)
!341 = distinct !DILexicalBlock(scope: !327, file: !2, line: 149, column: 9)
!342 = !DILocation(line: 149, column: 15, scope: !341)
!343 = !DILocation(line: 149, column: 9, scope: !327)
!344 = !DILocation(line: 150, column: 17, scope: !341)
!345 = !DILocation(line: 150, column: 9, scope: !341)
!346 = !DILocation(line: 151, column: 14, scope: !347)
!347 = distinct !DILexicalBlock(scope: !341, file: !2, line: 151, column: 14)
!348 = !DILocation(line: 151, column: 20, scope: !347)
!349 = !DILocation(line: 151, column: 14, scope: !341)
!350 = !DILocation(line: 152, column: 46, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !2, line: 151, column: 42)
!352 = !DILocation(line: 152, column: 51, scope: !351)
!353 = !DILocation(line: 152, column: 27, scope: !351)
!354 = !DILocation(line: 152, column: 9, scope: !351)
!355 = !DILocation(line: 153, column: 28, scope: !351)
!356 = !DILocation(line: 153, column: 33, scope: !351)
!357 = !DILocation(line: 153, column: 9, scope: !351)
!358 = !DILocation(line: 154, column: 28, scope: !351)
!359 = !DILocation(line: 154, column: 33, scope: !351)
!360 = !DILocation(line: 154, column: 9, scope: !351)
!361 = !DILocation(line: 155, column: 5, scope: !351)
!362 = !DILocation(line: 157, column: 9, scope: !347)
!363 = !DILocation(line: 159, column: 27, scope: !327)
!364 = !DILocation(line: 159, column: 69, scope: !327)
!365 = !DILocation(line: 160, column: 9, scope: !327)
!366 = !DILocation(line: 160, column: 14, scope: !327)
!367 = !DILocation(line: 159, column: 12, scope: !327)
!368 = !DILocation(line: 159, column: 5, scope: !327)
!369 = !DILocation(line: 161, column: 1, scope: !327)
!370 = distinct !DISubprogram(name: "nn_xbus_recv", scope: !2, file: !2, line: 163, type: !55, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !166)
!371 = !DILocalVariable(name: "self", arg: 1, scope: !370, file: !2, line: 163, type: !34)
!372 = !DILocation(line: 163, column: 39, scope: !370)
!373 = !DILocalVariable(name: "msg", arg: 2, scope: !370, file: !2, line: 163, type: !57)
!374 = !DILocation(line: 163, column: 60, scope: !370)
!375 = !DILocalVariable(name: "rc", scope: !370, file: !2, line: 165, type: !40)
!376 = !DILocation(line: 165, column: 9, scope: !370)
!377 = !DILocalVariable(name: "xbus", scope: !370, file: !2, line: 166, type: !17)
!378 = !DILocation(line: 166, column: 21, scope: !370)
!379 = !DILocalVariable(name: "pipe", scope: !370, file: !2, line: 167, type: !41)
!380 = !DILocation(line: 167, column: 21, scope: !370)
!381 = !DILocation(line: 169, column: 12, scope: !370)
!382 = !DILocation(line: 169, column: 10, scope: !370)
!383 = !DILocation(line: 171, column: 5, scope: !370)
!384 = !DILocation(line: 174, column: 27, scope: !385)
!385 = distinct !DILexicalBlock(scope: !370, file: !2, line: 171, column: 15)
!386 = !DILocation(line: 174, column: 33, scope: !385)
!387 = !DILocation(line: 174, column: 42, scope: !385)
!388 = !DILocation(line: 174, column: 14, scope: !385)
!389 = !DILocation(line: 174, column: 12, scope: !385)
!390 = !DILocation(line: 175, column: 13, scope: !391)
!391 = distinct !DILexicalBlock(scope: !385, file: !2, line: 175, column: 13)
!392 = !DILocation(line: 175, column: 13, scope: !385)
!393 = !DILocation(line: 176, column: 20, scope: !391)
!394 = !DILocation(line: 176, column: 13, scope: !391)
!395 = !DILocation(line: 179, column: 32, scope: !396)
!396 = distinct !DILexicalBlock(scope: !385, file: !2, line: 179, column: 13)
!397 = !DILocation(line: 179, column: 37, scope: !396)
!398 = !DILocation(line: 179, column: 13, scope: !396)
!399 = !DILocation(line: 179, column: 42, scope: !396)
!400 = !DILocation(line: 179, column: 13, scope: !385)
!401 = !DILocation(line: 180, column: 13, scope: !396)
!402 = !DILocation(line: 181, column: 22, scope: !385)
!403 = !DILocation(line: 181, column: 9, scope: !385)
!404 = distinct !{!404, !383, !405}
!405 = !DILocation(line: 182, column: 5, scope: !370)
!406 = !DILocation(line: 185, column: 24, scope: !370)
!407 = !DILocation(line: 185, column: 29, scope: !370)
!408 = !DILocation(line: 185, column: 5, scope: !370)
!409 = !DILocation(line: 186, column: 24, scope: !370)
!410 = !DILocation(line: 186, column: 29, scope: !370)
!411 = !DILocation(line: 186, column: 5, scope: !370)
!412 = !DILocation(line: 187, column: 32, scope: !370)
!413 = !DILocation(line: 187, column: 37, scope: !370)
!414 = !DILocation(line: 187, column: 13, scope: !370)
!415 = !DILocation(line: 187, column: 5, scope: !370)
!416 = !DILocation(line: 188, column: 32, scope: !370)
!417 = !DILocation(line: 188, column: 37, scope: !370)
!418 = !DILocation(line: 188, column: 13, scope: !370)
!419 = !DILocation(line: 188, column: 5, scope: !370)
!420 = !DILocation(line: 190, column: 5, scope: !370)
!421 = !DILocation(line: 191, column: 1, scope: !370)
!422 = distinct !DISubprogram(name: "nn_xbus_setopt", scope: !2, file: !2, line: 193, type: !78, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !166)
!423 = !DILocalVariable(name: "self", arg: 1, scope: !422, file: !2, line: 193, type: !34)
!424 = !DILocation(line: 193, column: 41, scope: !422)
!425 = !DILocalVariable(name: "level", arg: 2, scope: !422, file: !2, line: 193, type: !40)
!426 = !DILocation(line: 193, column: 51, scope: !422)
!427 = !DILocalVariable(name: "option", arg: 3, scope: !422, file: !2, line: 193, type: !40)
!428 = !DILocation(line: 193, column: 62, scope: !422)
!429 = !DILocalVariable(name: "optval", arg: 4, scope: !422, file: !2, line: 194, type: !80)
!430 = !DILocation(line: 194, column: 21, scope: !422)
!431 = !DILocalVariable(name: "optvallen", arg: 5, scope: !422, file: !2, line: 194, type: !82)
!432 = !DILocation(line: 194, column: 36, scope: !422)
!433 = !DILocation(line: 196, column: 5, scope: !422)
!434 = distinct !DISubprogram(name: "nn_xbus_getopt", scope: !2, file: !2, line: 199, type: !87, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !166)
!435 = !DILocalVariable(name: "self", arg: 1, scope: !434, file: !2, line: 199, type: !34)
!436 = !DILocation(line: 199, column: 41, scope: !434)
!437 = !DILocalVariable(name: "level", arg: 2, scope: !434, file: !2, line: 199, type: !40)
!438 = !DILocation(line: 199, column: 51, scope: !434)
!439 = !DILocalVariable(name: "option", arg: 3, scope: !434, file: !2, line: 199, type: !40)
!440 = !DILocation(line: 199, column: 62, scope: !434)
!441 = !DILocalVariable(name: "optval", arg: 4, scope: !434, file: !2, line: 200, type: !89)
!442 = !DILocation(line: 200, column: 15, scope: !434)
!443 = !DILocalVariable(name: "optvallen", arg: 5, scope: !434, file: !2, line: 200, type: !90)
!444 = !DILocation(line: 200, column: 31, scope: !434)
!445 = !DILocation(line: 202, column: 5, scope: !434)
!446 = distinct !DISubprogram(name: "nn_xbus_ispeer", scope: !2, file: !2, line: 217, type: !150, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !166)
!447 = !DILocalVariable(name: "socktype", arg: 1, scope: !446, file: !2, line: 217, type: !40)
!448 = !DILocation(line: 217, column: 25, scope: !446)
!449 = !DILocation(line: 219, column: 12, scope: !446)
!450 = !DILocation(line: 219, column: 21, scope: !446)
!451 = !DILocation(line: 219, column: 5, scope: !446)
!452 = distinct !DISubprogram(name: "nn_xbus_create", scope: !2, file: !2, line: 205, type: !145, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !166)
!453 = !DILocalVariable(name: "hint", arg: 1, scope: !452, file: !2, line: 205, type: !89)
!454 = !DILocation(line: 205, column: 34, scope: !452)
!455 = !DILocalVariable(name: "sockbase", arg: 2, scope: !452, file: !2, line: 205, type: !147)
!456 = !DILocation(line: 205, column: 61, scope: !452)
!457 = !DILocalVariable(name: "self", scope: !452, file: !2, line: 207, type: !17)
!458 = !DILocation(line: 207, column: 21, scope: !452)
!459 = !DILocation(line: 209, column: 12, scope: !452)
!460 = !DILocation(line: 209, column: 10, scope: !452)
!461 = !DILocation(line: 210, column: 5, scope: !452)
!462 = !DILocation(line: 210, column: 5, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !2, line: 210, column: 5)
!464 = distinct !DILexicalBlock(scope: !452, file: !2, line: 210, column: 5)
!465 = !DILocation(line: 210, column: 5, scope: !464)
!466 = !DILocation(line: 210, column: 5, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !2, line: 210, column: 5)
!468 = !DILocation(line: 211, column: 19, scope: !452)
!469 = !DILocation(line: 211, column: 50, scope: !452)
!470 = !DILocation(line: 211, column: 5, scope: !452)
!471 = !DILocation(line: 212, column: 18, scope: !452)
!472 = !DILocation(line: 212, column: 24, scope: !452)
!473 = !DILocation(line: 212, column: 6, scope: !452)
!474 = !DILocation(line: 212, column: 15, scope: !452)
!475 = !DILocation(line: 214, column: 5, scope: !452)
!476 = distinct !DISubprogram(name: "nn_xbus_destroy", scope: !2, file: !2, line: 74, type: !32, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !166)
!477 = !DILocalVariable(name: "self", arg: 1, scope: !476, file: !2, line: 74, type: !34)
!478 = !DILocation(line: 74, column: 50, scope: !476)
!479 = !DILocalVariable(name: "xbus", scope: !476, file: !2, line: 76, type: !17)
!480 = !DILocation(line: 76, column: 21, scope: !476)
!481 = !DILocation(line: 78, column: 12, scope: !476)
!482 = !DILocation(line: 78, column: 10, scope: !476)
!483 = !DILocation(line: 80, column: 19, scope: !476)
!484 = !DILocation(line: 80, column: 5, scope: !476)
!485 = !DILocation(line: 81, column: 14, scope: !476)
!486 = !DILocation(line: 81, column: 5, scope: !476)
!487 = !DILocation(line: 82, column: 1, scope: !476)
