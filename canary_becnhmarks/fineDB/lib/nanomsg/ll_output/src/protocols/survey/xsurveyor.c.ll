; ModuleID = './src/protocols/survey/xsurveyor.c'
source_filename = "./src/protocols/survey/xsurveyor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_sockbase_vfptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nn_xsurveyor = type { %struct.nn_sockbase, %struct.nn_dist, %struct.nn_fq }
%struct.nn_sockbase = type { ptr, ptr }
%struct.nn_dist = type { i64, %struct.nn_list }
%struct.nn_list = type { ptr, ptr }
%struct.nn_fq = type { %struct.nn_priolist }
%struct.nn_priolist = type { [16 x %struct.nn_priolist_slot], i32 }
%struct.nn_priolist_slot = type { %struct.nn_list, ptr }
%struct.nn_xsurveyor_data = type { ptr, %struct.nn_dist_data, %struct.nn_fq_data }
%struct.nn_dist_data = type { %struct.nn_list_item, ptr }
%struct.nn_fq_data = type { %struct.nn_priolist_data }
%struct.nn_priolist_data = type { ptr, i32, %struct.nn_list_item }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [35 x i8] c"./src/protocols/survey/xsurveyor.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [34 x i8] c"nn_chunkref_size (&msg->hdr) == 0\00", align 1, !dbg !17
@nn_xsurveyor_socktype_struct = internal global %struct.nn_socktype { i32 2, i32 96, i32 0, ptr @nn_xsurveyor_create, ptr @nn_xsurveyor_ispeer, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !22
@nn_xsurveyor_socktype = dso_local global ptr @nn_xsurveyor_socktype_struct, align 8, !dbg !145
@nn_xsurveyor_sockbase_vfptr = internal constant %struct.nn_sockbase_vfptr { ptr null, ptr @nn_xsurveyor_destroy, ptr @nn_xsurveyor_add, ptr @nn_xsurveyor_rm, ptr @nn_xsurveyor_in, ptr @nn_xsurveyor_out, ptr @nn_xsurveyor_events, ptr @nn_xsurveyor_send, ptr @nn_xsurveyor_recv, ptr @nn_xsurveyor_setopt, ptr @nn_xsurveyor_getopt }, align 8, !dbg !163

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xsurveyor_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !173 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !177, metadata !DIExpression()), !dbg !178
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !179, metadata !DIExpression()), !dbg !180
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !181, metadata !DIExpression()), !dbg !182
  %7 = load ptr, ptr %4, align 8, !dbg !183
  %8 = getelementptr inbounds %struct.nn_xsurveyor, ptr %7, i32 0, i32 0, !dbg !184
  %9 = load ptr, ptr %5, align 8, !dbg !185
  %10 = load ptr, ptr %6, align 8, !dbg !186
  call void @nn_sockbase_init(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !187
  %11 = load ptr, ptr %4, align 8, !dbg !188
  %12 = getelementptr inbounds %struct.nn_xsurveyor, ptr %11, i32 0, i32 1, !dbg !189
  call void @nn_dist_init(ptr noundef %12), !dbg !190
  %13 = load ptr, ptr %4, align 8, !dbg !191
  %14 = getelementptr inbounds %struct.nn_xsurveyor, ptr %13, i32 0, i32 2, !dbg !192
  call void @nn_fq_init(ptr noundef %14), !dbg !193
  ret void, !dbg !194
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_sockbase_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_dist_init(ptr noundef) #2

declare void @nn_fq_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xsurveyor_term(ptr noundef %0) #0 !dbg !195 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !198, metadata !DIExpression()), !dbg !199
  %3 = load ptr, ptr %2, align 8, !dbg !200
  %4 = getelementptr inbounds %struct.nn_xsurveyor, ptr %3, i32 0, i32 2, !dbg !201
  call void @nn_fq_term(ptr noundef %4), !dbg !202
  %5 = load ptr, ptr %2, align 8, !dbg !203
  %6 = getelementptr inbounds %struct.nn_xsurveyor, ptr %5, i32 0, i32 1, !dbg !204
  call void @nn_dist_term(ptr noundef %6), !dbg !205
  %7 = load ptr, ptr %2, align 8, !dbg !206
  %8 = getelementptr inbounds %struct.nn_xsurveyor, ptr %7, i32 0, i32 0, !dbg !207
  call void @nn_sockbase_term(ptr noundef %8), !dbg !208
  ret void, !dbg !209
}

declare void @nn_fq_term(ptr noundef) #2

declare void @nn_dist_term(ptr noundef) #2

declare void @nn_sockbase_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xsurveyor_add(ptr noundef %0, ptr noundef %1) #0 !dbg !210 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !211, metadata !DIExpression()), !dbg !212
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata ptr %5, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata ptr %6, metadata !217, metadata !DIExpression()), !dbg !231
  %7 = load ptr, ptr %3, align 8, !dbg !232
  %8 = icmp ne ptr %7, null, !dbg !232
  br i1 %8, label %9, label %12, !dbg !232

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !232
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !232
  br label %13, !dbg !232

12:                                               ; preds = %2
  br label %13, !dbg !232

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !232
  store ptr %14, ptr %5, align 8, !dbg !233
  %15 = call ptr @nn_alloc_(i64 noundef 64), !dbg !234
  store ptr %15, ptr %6, align 8, !dbg !235
  br label %16, !dbg !236

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8, !dbg !237
  %18 = icmp ne ptr %17, null, !dbg !237
  %19 = xor i1 %18, true, !dbg !237
  %20 = zext i1 %19 to i32, !dbg !237
  %21 = sext i32 %20 to i64, !dbg !237
  %22 = icmp ne i64 %21, 0, !dbg !237
  br i1 %22, label %23, label %26, !dbg !240

23:                                               ; preds = %16
  %24 = load ptr, ptr @stderr, align 8, !dbg !241
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 89), !dbg !241
  call void @nn_err_abort() #5, !dbg !241
  unreachable, !dbg !241

26:                                               ; preds = %16
  br label %27, !dbg !240

27:                                               ; preds = %26
  %28 = load ptr, ptr %4, align 8, !dbg !243
  %29 = load ptr, ptr %6, align 8, !dbg !244
  %30 = getelementptr inbounds %struct.nn_xsurveyor_data, ptr %29, i32 0, i32 0, !dbg !245
  store ptr %28, ptr %30, align 8, !dbg !246
  %31 = load ptr, ptr %5, align 8, !dbg !247
  %32 = getelementptr inbounds %struct.nn_xsurveyor, ptr %31, i32 0, i32 2, !dbg !248
  %33 = load ptr, ptr %4, align 8, !dbg !249
  %34 = load ptr, ptr %6, align 8, !dbg !250
  %35 = getelementptr inbounds %struct.nn_xsurveyor_data, ptr %34, i32 0, i32 2, !dbg !251
  call void @nn_fq_add(ptr noundef %32, ptr noundef %33, ptr noundef %35, i32 noundef 8), !dbg !252
  %36 = load ptr, ptr %5, align 8, !dbg !253
  %37 = getelementptr inbounds %struct.nn_xsurveyor, ptr %36, i32 0, i32 1, !dbg !254
  %38 = load ptr, ptr %4, align 8, !dbg !255
  %39 = load ptr, ptr %6, align 8, !dbg !256
  %40 = getelementptr inbounds %struct.nn_xsurveyor_data, ptr %39, i32 0, i32 1, !dbg !257
  call void @nn_dist_add(ptr noundef %37, ptr noundef %38, ptr noundef %40), !dbg !258
  %41 = load ptr, ptr %4, align 8, !dbg !259
  %42 = load ptr, ptr %6, align 8, !dbg !260
  call void @nn_pipe_setdata(ptr noundef %41, ptr noundef %42), !dbg !261
  ret i32 0, !dbg !262
}

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_fq_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @nn_dist_add(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_pipe_setdata(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xsurveyor_rm(ptr noundef %0, ptr noundef %1) #0 !dbg !263 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !264, metadata !DIExpression()), !dbg !265
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata ptr %5, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata ptr %6, metadata !270, metadata !DIExpression()), !dbg !271
  %7 = load ptr, ptr %3, align 8, !dbg !272
  %8 = icmp ne ptr %7, null, !dbg !272
  br i1 %8, label %9, label %12, !dbg !272

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !272
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !272
  br label %13, !dbg !272

12:                                               ; preds = %2
  br label %13, !dbg !272

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !272
  store ptr %14, ptr %5, align 8, !dbg !273
  %15 = load ptr, ptr %4, align 8, !dbg !274
  %16 = call ptr @nn_pipe_getdata(ptr noundef %15), !dbg !275
  store ptr %16, ptr %6, align 8, !dbg !276
  %17 = load ptr, ptr %5, align 8, !dbg !277
  %18 = getelementptr inbounds %struct.nn_xsurveyor, ptr %17, i32 0, i32 2, !dbg !278
  %19 = load ptr, ptr %4, align 8, !dbg !279
  %20 = load ptr, ptr %6, align 8, !dbg !280
  %21 = getelementptr inbounds %struct.nn_xsurveyor_data, ptr %20, i32 0, i32 2, !dbg !281
  call void @nn_fq_rm(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !282
  %22 = load ptr, ptr %5, align 8, !dbg !283
  %23 = getelementptr inbounds %struct.nn_xsurveyor, ptr %22, i32 0, i32 1, !dbg !284
  %24 = load ptr, ptr %4, align 8, !dbg !285
  %25 = load ptr, ptr %6, align 8, !dbg !286
  %26 = getelementptr inbounds %struct.nn_xsurveyor_data, ptr %25, i32 0, i32 1, !dbg !287
  call void @nn_dist_rm(ptr noundef %23, ptr noundef %24, ptr noundef %26), !dbg !288
  %27 = load ptr, ptr %6, align 8, !dbg !289
  call void @nn_free(ptr noundef %27), !dbg !290
  ret void, !dbg !291
}

declare ptr @nn_pipe_getdata(ptr noundef) #2

declare void @nn_fq_rm(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_dist_rm(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xsurveyor_in(ptr noundef %0, ptr noundef %1) #0 !dbg !292 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !293, metadata !DIExpression()), !dbg !294
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata ptr %5, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata ptr %6, metadata !299, metadata !DIExpression()), !dbg !300
  %7 = load ptr, ptr %3, align 8, !dbg !301
  %8 = icmp ne ptr %7, null, !dbg !301
  br i1 %8, label %9, label %12, !dbg !301

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !301
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !301
  br label %13, !dbg !301

12:                                               ; preds = %2
  br label %13, !dbg !301

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !301
  store ptr %14, ptr %5, align 8, !dbg !302
  %15 = load ptr, ptr %4, align 8, !dbg !303
  %16 = call ptr @nn_pipe_getdata(ptr noundef %15), !dbg !304
  store ptr %16, ptr %6, align 8, !dbg !305
  %17 = load ptr, ptr %5, align 8, !dbg !306
  %18 = getelementptr inbounds %struct.nn_xsurveyor, ptr %17, i32 0, i32 2, !dbg !307
  %19 = load ptr, ptr %4, align 8, !dbg !308
  %20 = load ptr, ptr %6, align 8, !dbg !309
  %21 = getelementptr inbounds %struct.nn_xsurveyor_data, ptr %20, i32 0, i32 2, !dbg !310
  call void @nn_fq_in(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !311
  ret void, !dbg !312
}

declare void @nn_fq_in(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xsurveyor_out(ptr noundef %0, ptr noundef %1) #0 !dbg !313 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !314, metadata !DIExpression()), !dbg !315
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !316, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.declare(metadata ptr %5, metadata !318, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.declare(metadata ptr %6, metadata !320, metadata !DIExpression()), !dbg !321
  %7 = load ptr, ptr %3, align 8, !dbg !322
  %8 = icmp ne ptr %7, null, !dbg !322
  br i1 %8, label %9, label %12, !dbg !322

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !322
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !322
  br label %13, !dbg !322

12:                                               ; preds = %2
  br label %13, !dbg !322

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !322
  store ptr %14, ptr %5, align 8, !dbg !323
  %15 = load ptr, ptr %4, align 8, !dbg !324
  %16 = call ptr @nn_pipe_getdata(ptr noundef %15), !dbg !325
  store ptr %16, ptr %6, align 8, !dbg !326
  %17 = load ptr, ptr %5, align 8, !dbg !327
  %18 = getelementptr inbounds %struct.nn_xsurveyor, ptr %17, i32 0, i32 1, !dbg !328
  %19 = load ptr, ptr %4, align 8, !dbg !329
  %20 = load ptr, ptr %6, align 8, !dbg !330
  %21 = getelementptr inbounds %struct.nn_xsurveyor_data, ptr %20, i32 0, i32 1, !dbg !331
  call void @nn_dist_out(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !332
  ret void, !dbg !333
}

declare void @nn_dist_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xsurveyor_events(ptr noundef %0) #0 !dbg !334 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata ptr %3, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata ptr %4, metadata !339, metadata !DIExpression()), !dbg !340
  %5 = load ptr, ptr %2, align 8, !dbg !341
  %6 = icmp ne ptr %5, null, !dbg !341
  br i1 %6, label %7, label %10, !dbg !341

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !341
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !341
  br label %11, !dbg !341

10:                                               ; preds = %1
  br label %11, !dbg !341

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !341
  store ptr %12, ptr %3, align 8, !dbg !342
  store i32 2, ptr %4, align 4, !dbg !343
  %13 = load ptr, ptr %3, align 8, !dbg !344
  %14 = getelementptr inbounds %struct.nn_xsurveyor, ptr %13, i32 0, i32 2, !dbg !346
  %15 = call i32 @nn_fq_can_recv(ptr noundef %14), !dbg !347
  %16 = icmp ne i32 %15, 0, !dbg !347
  br i1 %16, label %17, label %20, !dbg !348

17:                                               ; preds = %11
  %18 = load i32, ptr %4, align 4, !dbg !349
  %19 = or i32 %18, 1, !dbg !349
  store i32 %19, ptr %4, align 4, !dbg !349
  br label %20, !dbg !350

20:                                               ; preds = %17, %11
  %21 = load i32, ptr %4, align 4, !dbg !351
  ret i32 %21, !dbg !352
}

declare i32 @nn_fq_can_recv(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xsurveyor_send(ptr noundef %0, ptr noundef %1) #0 !dbg !353 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !354, metadata !DIExpression()), !dbg !355
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !356, metadata !DIExpression()), !dbg !357
  %5 = load ptr, ptr %3, align 8, !dbg !358
  %6 = icmp ne ptr %5, null, !dbg !358
  br i1 %6, label %7, label %10, !dbg !358

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !358
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !358
  br label %11, !dbg !358

10:                                               ; preds = %2
  br label %11, !dbg !358

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !358
  %13 = getelementptr inbounds %struct.nn_xsurveyor, ptr %12, i32 0, i32 1, !dbg !359
  %14 = load ptr, ptr %4, align 8, !dbg !360
  %15 = call i32 @nn_dist_send(ptr noundef %13, ptr noundef %14, ptr noundef null), !dbg !361
  ret i32 %15, !dbg !362
}

declare i32 @nn_dist_send(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xsurveyor_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !363 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !364, metadata !DIExpression()), !dbg !365
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !366, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.declare(metadata ptr %6, metadata !368, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.declare(metadata ptr %7, metadata !370, metadata !DIExpression()), !dbg !371
  %8 = load ptr, ptr %4, align 8, !dbg !372
  %9 = icmp ne ptr %8, null, !dbg !372
  br i1 %9, label %10, label %13, !dbg !372

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !372
  %12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !372
  br label %14, !dbg !372

13:                                               ; preds = %2
  br label %14, !dbg !372

14:                                               ; preds = %13, %10
  %15 = phi ptr [ %12, %10 ], [ null, %13 ], !dbg !372
  store ptr %15, ptr %7, align 8, !dbg !373
  %16 = load ptr, ptr %7, align 8, !dbg !374
  %17 = getelementptr inbounds %struct.nn_xsurveyor, ptr %16, i32 0, i32 2, !dbg !375
  %18 = load ptr, ptr %5, align 8, !dbg !376
  %19 = call i32 @nn_fq_recv(ptr noundef %17, ptr noundef %18, ptr noundef null), !dbg !377
  store i32 %19, ptr %6, align 4, !dbg !378
  %20 = load i32, ptr %6, align 4, !dbg !379
  %21 = icmp slt i32 %20, 0, !dbg !379
  %22 = zext i1 %21 to i32, !dbg !379
  %23 = sext i32 %22 to i64, !dbg !379
  %24 = icmp ne i64 %23, 0, !dbg !379
  br i1 %24, label %25, label %27, !dbg !381

25:                                               ; preds = %14
  %26 = load i32, ptr %6, align 4, !dbg !382
  store i32 %26, ptr %3, align 4, !dbg !383
  br label %69, !dbg !383

27:                                               ; preds = %14
  %28 = load i32, ptr %6, align 4, !dbg !384
  %29 = and i32 %28, 2, !dbg !386
  %30 = icmp ne i32 %29, 0, !dbg !386
  br i1 %30, label %68, label %31, !dbg !387

31:                                               ; preds = %27
  %32 = load ptr, ptr %5, align 8, !dbg !388
  %33 = getelementptr inbounds %struct.nn_msg, ptr %32, i32 0, i32 1, !dbg !388
  %34 = call i64 @nn_chunkref_size(ptr noundef %33), !dbg !388
  %35 = icmp ult i64 %34, 4, !dbg !388
  %36 = zext i1 %35 to i32, !dbg !388
  %37 = sext i32 %36 to i64, !dbg !388
  %38 = icmp ne i64 %37, 0, !dbg !388
  br i1 %38, label %39, label %41, !dbg !391

39:                                               ; preds = %31
  %40 = load ptr, ptr %5, align 8, !dbg !392
  call void @nn_msg_term(ptr noundef %40), !dbg !394
  store i32 -11, ptr %3, align 4, !dbg !395
  br label %69, !dbg !395

41:                                               ; preds = %31
  br label %42, !dbg !396

42:                                               ; preds = %41
  %43 = load ptr, ptr %5, align 8, !dbg !397
  %44 = getelementptr inbounds %struct.nn_msg, ptr %43, i32 0, i32 0, !dbg !397
  %45 = call i64 @nn_chunkref_size(ptr noundef %44), !dbg !397
  %46 = icmp eq i64 %45, 0, !dbg !397
  %47 = xor i1 %46, true, !dbg !397
  %48 = zext i1 %47 to i32, !dbg !397
  %49 = sext i32 %48 to i64, !dbg !397
  %50 = icmp ne i64 %49, 0, !dbg !397
  br i1 %50, label %51, label %54, !dbg !400

51:                                               ; preds = %42
  %52 = load ptr, ptr @stderr, align 8, !dbg !401
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 170), !dbg !401
  call void @nn_err_abort() #5, !dbg !401
  unreachable, !dbg !401

54:                                               ; preds = %42
  br label %55, !dbg !400

55:                                               ; preds = %54
  %56 = load ptr, ptr %5, align 8, !dbg !403
  %57 = getelementptr inbounds %struct.nn_msg, ptr %56, i32 0, i32 0, !dbg !404
  call void @nn_chunkref_term(ptr noundef %57), !dbg !405
  %58 = load ptr, ptr %5, align 8, !dbg !406
  %59 = getelementptr inbounds %struct.nn_msg, ptr %58, i32 0, i32 0, !dbg !407
  call void @nn_chunkref_init(ptr noundef %59, i64 noundef 4), !dbg !408
  %60 = load ptr, ptr %5, align 8, !dbg !409
  %61 = getelementptr inbounds %struct.nn_msg, ptr %60, i32 0, i32 0, !dbg !410
  %62 = call ptr @nn_chunkref_data(ptr noundef %61), !dbg !411
  %63 = load ptr, ptr %5, align 8, !dbg !412
  %64 = getelementptr inbounds %struct.nn_msg, ptr %63, i32 0, i32 1, !dbg !413
  %65 = call ptr @nn_chunkref_data(ptr noundef %64), !dbg !414
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 1 %65, i64 4, i1 false), !dbg !415
  %66 = load ptr, ptr %5, align 8, !dbg !416
  %67 = getelementptr inbounds %struct.nn_msg, ptr %66, i32 0, i32 1, !dbg !417
  call void @nn_chunkref_trim(ptr noundef %67, i64 noundef 4), !dbg !418
  br label %68, !dbg !419

68:                                               ; preds = %55, %27
  store i32 0, ptr %3, align 4, !dbg !420
  br label %69, !dbg !420

69:                                               ; preds = %68, %39, %25
  %70 = load i32, ptr %3, align 4, !dbg !421
  ret i32 %70, !dbg !421
}

declare i32 @nn_fq_recv(ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @nn_chunkref_size(ptr noundef) #2

declare void @nn_msg_term(ptr noundef) #2

declare void @nn_chunkref_term(ptr noundef) #2

declare void @nn_chunkref_init(ptr noundef, i64 noundef) #2

declare ptr @nn_chunkref_data(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @nn_chunkref_trim(ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xsurveyor_setopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !422 {
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
define dso_local i32 @nn_xsurveyor_getopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !434 {
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
define dso_local i32 @nn_xsurveyor_ispeer(i32 noundef %0) #0 !dbg !446 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !447, metadata !DIExpression()), !dbg !448
  %3 = load i32, ptr %2, align 4, !dbg !449
  %4 = icmp eq i32 %3, 97, !dbg !450
  %5 = zext i1 %4 to i64, !dbg !449
  %6 = select i1 %4, i32 1, i32 0, !dbg !449
  ret i32 %6, !dbg !451
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xsurveyor_create(ptr noundef %0, ptr noundef %1) #0 !dbg !452 {
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
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 198), !dbg !466
  call void @nn_err_abort() #5, !dbg !466
  unreachable, !dbg !466

17:                                               ; preds = %7
  br label %18, !dbg !465

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !468
  %20 = load ptr, ptr %3, align 8, !dbg !469
  call void @nn_xsurveyor_init(ptr noundef %19, ptr noundef @nn_xsurveyor_sockbase_vfptr, ptr noundef %20), !dbg !470
  %21 = load ptr, ptr %5, align 8, !dbg !471
  %22 = getelementptr inbounds %struct.nn_xsurveyor, ptr %21, i32 0, i32 0, !dbg !472
  %23 = load ptr, ptr %4, align 8, !dbg !473
  store ptr %22, ptr %23, align 8, !dbg !474
  ret i32 0, !dbg !475
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xsurveyor_destroy(ptr noundef %0) #0 !dbg !476 {
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
  call void @nn_xsurveyor_term(ptr noundef %12), !dbg !484
  %13 = load ptr, ptr %3, align 8, !dbg !485
  call void @nn_free(ptr noundef %13), !dbg !486
  ret void, !dbg !487
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/protocols/survey/xsurveyor.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "baff0fe1d6c1434c60b4d9b59ad945d3")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 35)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 170, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 30)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 170, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 34)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "nn_xsurveyor_socktype_struct", scope: !24, file: !2, line: 210, type: !148, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !25, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !26, globals: !144, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "src/protocols/survey/xsurveyor.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "baff0fe1d6c1434c60b4d9b59ad945d3")
!26 = !{!27, !143}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xsurveyor", file: !29, line: 39, size: 3456, elements: !30)
!29 = !DIFile(filename: "./src/protocols/survey/xsurveyor.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "39d817f0e27772e0ca18c7c7ec6f6c26")
!30 = !{!31, !104, !120}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !28, file: !29, line: 42, baseType: !32, size: 128)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !33, line: 123, size: 128, elements: !34)
!33 = !DIFile(filename: "./src/protocols/survey/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!34 = !{!35, !101}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !32, file: !33, line: 124, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase_vfptr", file: !33, line: 84, size: 704, elements: !39)
!39 = !{!40, !45, !46, !53, !57, !58, !59, !63, !85, !86, !95}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !38, file: !33, line: 87, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !38, file: !33, line: 90, baseType: !41, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !38, file: !33, line: 97, baseType: !47, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !44, !51}
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !33, line: 56, flags: DIFlagFwdDecl)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !38, file: !33, line: 98, baseType: !54, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !44, !51}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !38, file: !33, line: 99, baseType: !54, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !38, file: !33, line: 100, baseType: !54, size: 64, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !38, file: !33, line: 104, baseType: !60, size: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!50, !44}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !38, file: !33, line: 108, baseType: !64, size: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!50, !44, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !69, line: 30, size: 512, elements: !70)
!69 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!70 = !{!71, !84}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !68, file: !69, line: 33, baseType: !72, size: 256)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !73, line: 39, size: 256, elements: !74)
!73 = !DIFile(filename: "src/utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !72, file: !73, line: 40, baseType: !76, size: 256)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 256, elements: !82)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !78, line: 24, baseType: !79)
!78 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !80, line: 38, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !{!83}
!83 = !DISubrange(count: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !68, file: !69, line: 36, baseType: !72, size: 256, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !38, file: !33, line: 112, baseType: !64, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !38, file: !33, line: 115, baseType: !87, size: 64, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!50, !44, !50, !50, !90, !92}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 46, baseType: !94)
!93 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!94 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !38, file: !33, line: 119, baseType: !96, size: 64, offset: 640)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{!50, !44, !50, !50, !99, !100}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !32, file: !33, line: 125, baseType: !102, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !33, line: 125, flags: DIFlagFwdDecl)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "outpipes", scope: !28, file: !29, line: 45, baseType: !105, size: 192, offset: 128)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_dist", file: !106, line: 37, size: 192, elements: !107)
!106 = !DIFile(filename: "./src/protocols/survey/../utils/dist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8b675b0838905739d217dd53d5a3b3af")
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !105, file: !106, line: 38, baseType: !92, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !105, file: !106, line: 39, baseType: !110, size: 128, offset: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !111, line: 31, size: 128, elements: !112)
!111 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!112 = !{!113, !119}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !110, file: !111, line: 32, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !111, line: 26, size: 128, elements: !116)
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !115, file: !111, line: 27, baseType: !114, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !115, file: !111, line: 28, baseType: !114, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !110, file: !111, line: 33, baseType: !114, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "inpipes", scope: !28, file: !29, line: 48, baseType: !121, size: 3136, offset: 320)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fq", file: !122, line: 37, size: 3136, elements: !123)
!122 = !DIFile(filename: "./src/protocols/survey/../utils/fq.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "342bacd48eb65b84f809ed6b86c6514c")
!123 = !{!124}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !121, file: !122, line: 38, baseType: !125, size: 3136)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist", file: !126, line: 45, size: 3136, elements: !127)
!126 = !DIFile(filename: "./src/protocols/survey/../utils/priolist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e7a7c69c9c81fe3b1beae760b1a28137")
!127 = !{!128, !142}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !125, file: !126, line: 46, baseType: !129, size: 3072)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 3072, elements: !140)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_slot", file: !126, line: 40, size: 192, elements: !131)
!131 = !{!132, !133}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !130, file: !126, line: 41, baseType: !110, size: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !130, file: !126, line: 42, baseType: !134, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_data", file: !126, line: 34, size: 256, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !135, file: !126, line: 35, baseType: !51, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !135, file: !126, line: 36, baseType: !50, size: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !135, file: !126, line: 37, baseType: !115, size: 128, offset: 128)
!140 = !{!141}
!141 = !DISubrange(count: 16)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !125, file: !126, line: 47, baseType: !50, size: 32, offset: 3072)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!144 = !{!0, !7, !12, !17, !145, !22, !163}
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "nn_xsurveyor_socktype", scope: !24, file: !2, line: 219, type: !147, isLocal: false, isDefinition: true)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !33, line: 160, size: 384, elements: !149)
!149 = !{!150, !151, !152, !153, !158, !162}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !148, file: !33, line: 163, baseType: !50, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !148, file: !33, line: 164, baseType: !50, size: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !148, file: !33, line: 167, baseType: !50, size: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !148, file: !33, line: 173, baseType: !154, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!50, !99, !157}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !148, file: !33, line: 179, baseType: !159, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!50, !50}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !148, file: !33, line: 183, baseType: !115, size: 128, offset: 256)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "nn_xsurveyor_sockbase_vfptr", scope: !24, file: !2, line: 41, type: !37, isLocal: true, isDefinition: true)
!165 = !{i32 7, !"Dwarf Version", i32 5}
!166 = !{i32 2, !"Debug Info Version", i32 3}
!167 = !{i32 1, !"wchar_size", i32 4}
!168 = !{i32 8, !"PIC Level", i32 2}
!169 = !{i32 7, !"PIE Level", i32 2}
!170 = !{i32 7, !"uwtable", i32 2}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 16.0.0"}
!173 = distinct !DISubprogram(name: "nn_xsurveyor_init", scope: !2, file: !2, line: 55, type: !174, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !27, !36, !99}
!176 = !{}
!177 = !DILocalVariable(name: "self", arg: 1, scope: !173, file: !2, line: 55, type: !27)
!178 = !DILocation(line: 55, column: 46, scope: !173)
!179 = !DILocalVariable(name: "vfptr", arg: 2, scope: !173, file: !2, line: 56, type: !36)
!180 = !DILocation(line: 56, column: 37, scope: !173)
!181 = !DILocalVariable(name: "hint", arg: 3, scope: !173, file: !2, line: 56, type: !99)
!182 = !DILocation(line: 56, column: 50, scope: !173)
!183 = !DILocation(line: 58, column: 24, scope: !173)
!184 = !DILocation(line: 58, column: 30, scope: !173)
!185 = !DILocation(line: 58, column: 40, scope: !173)
!186 = !DILocation(line: 58, column: 47, scope: !173)
!187 = !DILocation(line: 58, column: 5, scope: !173)
!188 = !DILocation(line: 59, column: 20, scope: !173)
!189 = !DILocation(line: 59, column: 26, scope: !173)
!190 = !DILocation(line: 59, column: 5, scope: !173)
!191 = !DILocation(line: 60, column: 18, scope: !173)
!192 = !DILocation(line: 60, column: 24, scope: !173)
!193 = !DILocation(line: 60, column: 5, scope: !173)
!194 = !DILocation(line: 61, column: 1, scope: !173)
!195 = distinct !DISubprogram(name: "nn_xsurveyor_term", scope: !2, file: !2, line: 63, type: !196, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !176)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !27}
!198 = !DILocalVariable(name: "self", arg: 1, scope: !195, file: !2, line: 63, type: !27)
!199 = !DILocation(line: 63, column: 46, scope: !195)
!200 = !DILocation(line: 65, column: 18, scope: !195)
!201 = !DILocation(line: 65, column: 24, scope: !195)
!202 = !DILocation(line: 65, column: 5, scope: !195)
!203 = !DILocation(line: 66, column: 20, scope: !195)
!204 = !DILocation(line: 66, column: 26, scope: !195)
!205 = !DILocation(line: 66, column: 5, scope: !195)
!206 = !DILocation(line: 67, column: 24, scope: !195)
!207 = !DILocation(line: 67, column: 30, scope: !195)
!208 = !DILocation(line: 67, column: 5, scope: !195)
!209 = !DILocation(line: 68, column: 1, scope: !195)
!210 = distinct !DISubprogram(name: "nn_xsurveyor_add", scope: !2, file: !2, line: 80, type: !48, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !176)
!211 = !DILocalVariable(name: "self", arg: 1, scope: !210, file: !2, line: 80, type: !44)
!212 = !DILocation(line: 80, column: 43, scope: !210)
!213 = !DILocalVariable(name: "pipe", arg: 2, scope: !210, file: !2, line: 80, type: !51)
!214 = !DILocation(line: 80, column: 65, scope: !210)
!215 = !DILocalVariable(name: "xsurveyor", scope: !210, file: !2, line: 82, type: !27)
!216 = !DILocation(line: 82, column: 26, scope: !210)
!217 = !DILocalVariable(name: "data", scope: !210, file: !2, line: 83, type: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xsurveyor_data", file: !29, line: 33, size: 512, elements: !220)
!220 = !{!221, !222, !227}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !219, file: !29, line: 34, baseType: !51, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "outitem", scope: !219, file: !29, line: 35, baseType: !223, size: 192, offset: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_dist_data", file: !106, line: 32, size: 192, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !223, file: !106, line: 33, baseType: !115, size: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !223, file: !106, line: 34, baseType: !51, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "initem", scope: !219, file: !29, line: 36, baseType: !228, size: 256, offset: 256)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fq_data", file: !122, line: 33, size: 256, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !228, file: !122, line: 34, baseType: !135, size: 256)
!231 = !DILocation(line: 83, column: 31, scope: !210)
!232 = !DILocation(line: 85, column: 17, scope: !210)
!233 = !DILocation(line: 85, column: 15, scope: !210)
!234 = !DILocation(line: 87, column: 12, scope: !210)
!235 = !DILocation(line: 87, column: 10, scope: !210)
!236 = !DILocation(line: 89, column: 5, scope: !210)
!237 = !DILocation(line: 89, column: 5, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !2, line: 89, column: 5)
!239 = distinct !DILexicalBlock(scope: !210, file: !2, line: 89, column: 5)
!240 = !DILocation(line: 89, column: 5, scope: !239)
!241 = !DILocation(line: 89, column: 5, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !2, line: 89, column: 5)
!243 = !DILocation(line: 90, column: 18, scope: !210)
!244 = !DILocation(line: 90, column: 5, scope: !210)
!245 = !DILocation(line: 90, column: 11, scope: !210)
!246 = !DILocation(line: 90, column: 16, scope: !210)
!247 = !DILocation(line: 91, column: 17, scope: !210)
!248 = !DILocation(line: 91, column: 28, scope: !210)
!249 = !DILocation(line: 91, column: 37, scope: !210)
!250 = !DILocation(line: 91, column: 44, scope: !210)
!251 = !DILocation(line: 91, column: 50, scope: !210)
!252 = !DILocation(line: 91, column: 5, scope: !210)
!253 = !DILocation(line: 92, column: 19, scope: !210)
!254 = !DILocation(line: 92, column: 30, scope: !210)
!255 = !DILocation(line: 92, column: 40, scope: !210)
!256 = !DILocation(line: 92, column: 47, scope: !210)
!257 = !DILocation(line: 92, column: 53, scope: !210)
!258 = !DILocation(line: 92, column: 5, scope: !210)
!259 = !DILocation(line: 93, column: 22, scope: !210)
!260 = !DILocation(line: 93, column: 28, scope: !210)
!261 = !DILocation(line: 93, column: 5, scope: !210)
!262 = !DILocation(line: 95, column: 5, scope: !210)
!263 = distinct !DISubprogram(name: "nn_xsurveyor_rm", scope: !2, file: !2, line: 98, type: !55, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !176)
!264 = !DILocalVariable(name: "self", arg: 1, scope: !263, file: !2, line: 98, type: !44)
!265 = !DILocation(line: 98, column: 43, scope: !263)
!266 = !DILocalVariable(name: "pipe", arg: 2, scope: !263, file: !2, line: 98, type: !51)
!267 = !DILocation(line: 98, column: 65, scope: !263)
!268 = !DILocalVariable(name: "xsurveyor", scope: !263, file: !2, line: 100, type: !27)
!269 = !DILocation(line: 100, column: 26, scope: !263)
!270 = !DILocalVariable(name: "data", scope: !263, file: !2, line: 101, type: !218)
!271 = !DILocation(line: 101, column: 31, scope: !263)
!272 = !DILocation(line: 103, column: 17, scope: !263)
!273 = !DILocation(line: 103, column: 15, scope: !263)
!274 = !DILocation(line: 104, column: 29, scope: !263)
!275 = !DILocation(line: 104, column: 12, scope: !263)
!276 = !DILocation(line: 104, column: 10, scope: !263)
!277 = !DILocation(line: 106, column: 16, scope: !263)
!278 = !DILocation(line: 106, column: 27, scope: !263)
!279 = !DILocation(line: 106, column: 36, scope: !263)
!280 = !DILocation(line: 106, column: 43, scope: !263)
!281 = !DILocation(line: 106, column: 49, scope: !263)
!282 = !DILocation(line: 106, column: 5, scope: !263)
!283 = !DILocation(line: 107, column: 18, scope: !263)
!284 = !DILocation(line: 107, column: 29, scope: !263)
!285 = !DILocation(line: 107, column: 39, scope: !263)
!286 = !DILocation(line: 107, column: 46, scope: !263)
!287 = !DILocation(line: 107, column: 52, scope: !263)
!288 = !DILocation(line: 107, column: 5, scope: !263)
!289 = !DILocation(line: 109, column: 14, scope: !263)
!290 = !DILocation(line: 109, column: 5, scope: !263)
!291 = !DILocation(line: 110, column: 1, scope: !263)
!292 = distinct !DISubprogram(name: "nn_xsurveyor_in", scope: !2, file: !2, line: 112, type: !55, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !176)
!293 = !DILocalVariable(name: "self", arg: 1, scope: !292, file: !2, line: 112, type: !44)
!294 = !DILocation(line: 112, column: 43, scope: !292)
!295 = !DILocalVariable(name: "pipe", arg: 2, scope: !292, file: !2, line: 112, type: !51)
!296 = !DILocation(line: 112, column: 65, scope: !292)
!297 = !DILocalVariable(name: "xsurveyor", scope: !292, file: !2, line: 114, type: !27)
!298 = !DILocation(line: 114, column: 26, scope: !292)
!299 = !DILocalVariable(name: "data", scope: !292, file: !2, line: 115, type: !218)
!300 = !DILocation(line: 115, column: 31, scope: !292)
!301 = !DILocation(line: 117, column: 17, scope: !292)
!302 = !DILocation(line: 117, column: 15, scope: !292)
!303 = !DILocation(line: 118, column: 29, scope: !292)
!304 = !DILocation(line: 118, column: 12, scope: !292)
!305 = !DILocation(line: 118, column: 10, scope: !292)
!306 = !DILocation(line: 120, column: 16, scope: !292)
!307 = !DILocation(line: 120, column: 27, scope: !292)
!308 = !DILocation(line: 120, column: 36, scope: !292)
!309 = !DILocation(line: 120, column: 43, scope: !292)
!310 = !DILocation(line: 120, column: 49, scope: !292)
!311 = !DILocation(line: 120, column: 5, scope: !292)
!312 = !DILocation(line: 121, column: 1, scope: !292)
!313 = distinct !DISubprogram(name: "nn_xsurveyor_out", scope: !2, file: !2, line: 123, type: !55, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !176)
!314 = !DILocalVariable(name: "self", arg: 1, scope: !313, file: !2, line: 123, type: !44)
!315 = !DILocation(line: 123, column: 44, scope: !313)
!316 = !DILocalVariable(name: "pipe", arg: 2, scope: !313, file: !2, line: 123, type: !51)
!317 = !DILocation(line: 123, column: 66, scope: !313)
!318 = !DILocalVariable(name: "xsurveyor", scope: !313, file: !2, line: 125, type: !27)
!319 = !DILocation(line: 125, column: 26, scope: !313)
!320 = !DILocalVariable(name: "data", scope: !313, file: !2, line: 126, type: !218)
!321 = !DILocation(line: 126, column: 31, scope: !313)
!322 = !DILocation(line: 128, column: 17, scope: !313)
!323 = !DILocation(line: 128, column: 15, scope: !313)
!324 = !DILocation(line: 129, column: 29, scope: !313)
!325 = !DILocation(line: 129, column: 12, scope: !313)
!326 = !DILocation(line: 129, column: 10, scope: !313)
!327 = !DILocation(line: 131, column: 19, scope: !313)
!328 = !DILocation(line: 131, column: 30, scope: !313)
!329 = !DILocation(line: 131, column: 40, scope: !313)
!330 = !DILocation(line: 131, column: 47, scope: !313)
!331 = !DILocation(line: 131, column: 53, scope: !313)
!332 = !DILocation(line: 131, column: 5, scope: !313)
!333 = !DILocation(line: 132, column: 1, scope: !313)
!334 = distinct !DISubprogram(name: "nn_xsurveyor_events", scope: !2, file: !2, line: 134, type: !61, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !176)
!335 = !DILocalVariable(name: "self", arg: 1, scope: !334, file: !2, line: 134, type: !44)
!336 = !DILocation(line: 134, column: 46, scope: !334)
!337 = !DILocalVariable(name: "xsurveyor", scope: !334, file: !2, line: 136, type: !27)
!338 = !DILocation(line: 136, column: 26, scope: !334)
!339 = !DILocalVariable(name: "events", scope: !334, file: !2, line: 137, type: !50)
!340 = !DILocation(line: 137, column: 9, scope: !334)
!341 = !DILocation(line: 139, column: 17, scope: !334)
!342 = !DILocation(line: 139, column: 15, scope: !334)
!343 = !DILocation(line: 141, column: 12, scope: !334)
!344 = !DILocation(line: 142, column: 26, scope: !345)
!345 = distinct !DILexicalBlock(scope: !334, file: !2, line: 142, column: 9)
!346 = !DILocation(line: 142, column: 37, scope: !345)
!347 = !DILocation(line: 142, column: 9, scope: !345)
!348 = !DILocation(line: 142, column: 9, scope: !334)
!349 = !DILocation(line: 143, column: 16, scope: !345)
!350 = !DILocation(line: 143, column: 9, scope: !345)
!351 = !DILocation(line: 144, column: 12, scope: !334)
!352 = !DILocation(line: 144, column: 5, scope: !334)
!353 = distinct !DISubprogram(name: "nn_xsurveyor_send", scope: !2, file: !2, line: 147, type: !65, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !176)
!354 = !DILocalVariable(name: "self", arg: 1, scope: !353, file: !2, line: 147, type: !44)
!355 = !DILocation(line: 147, column: 44, scope: !353)
!356 = !DILocalVariable(name: "msg", arg: 2, scope: !353, file: !2, line: 147, type: !67)
!357 = !DILocation(line: 147, column: 65, scope: !353)
!358 = !DILocation(line: 150, column: 10, scope: !353)
!359 = !DILocation(line: 150, column: 57, scope: !353)
!360 = !DILocation(line: 150, column: 67, scope: !353)
!361 = !DILocation(line: 149, column: 12, scope: !353)
!362 = !DILocation(line: 149, column: 5, scope: !353)
!363 = distinct !DISubprogram(name: "nn_xsurveyor_recv", scope: !2, file: !2, line: 153, type: !65, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !176)
!364 = !DILocalVariable(name: "self", arg: 1, scope: !363, file: !2, line: 153, type: !44)
!365 = !DILocation(line: 153, column: 44, scope: !363)
!366 = !DILocalVariable(name: "msg", arg: 2, scope: !363, file: !2, line: 153, type: !67)
!367 = !DILocation(line: 153, column: 65, scope: !363)
!368 = !DILocalVariable(name: "rc", scope: !363, file: !2, line: 155, type: !50)
!369 = !DILocation(line: 155, column: 9, scope: !363)
!370 = !DILocalVariable(name: "xsurveyor", scope: !363, file: !2, line: 156, type: !27)
!371 = !DILocation(line: 156, column: 26, scope: !363)
!372 = !DILocation(line: 158, column: 17, scope: !363)
!373 = !DILocation(line: 158, column: 15, scope: !363)
!374 = !DILocation(line: 160, column: 23, scope: !363)
!375 = !DILocation(line: 160, column: 34, scope: !363)
!376 = !DILocation(line: 160, column: 43, scope: !363)
!377 = !DILocation(line: 160, column: 10, scope: !363)
!378 = !DILocation(line: 160, column: 8, scope: !363)
!379 = !DILocation(line: 161, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !363, file: !2, line: 161, column: 9)
!381 = !DILocation(line: 161, column: 9, scope: !363)
!382 = !DILocation(line: 162, column: 16, scope: !380)
!383 = !DILocation(line: 162, column: 9, scope: !380)
!384 = !DILocation(line: 165, column: 11, scope: !385)
!385 = distinct !DILexicalBlock(scope: !363, file: !2, line: 165, column: 9)
!386 = !DILocation(line: 165, column: 14, scope: !385)
!387 = !DILocation(line: 165, column: 9, scope: !363)
!388 = !DILocation(line: 166, column: 13, scope: !389)
!389 = distinct !DILexicalBlock(scope: !390, file: !2, line: 166, column: 13)
!390 = distinct !DILexicalBlock(scope: !385, file: !2, line: 165, column: 33)
!391 = !DILocation(line: 166, column: 13, scope: !390)
!392 = !DILocation(line: 167, column: 26, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !2, line: 166, column: 74)
!394 = !DILocation(line: 167, column: 13, scope: !393)
!395 = !DILocation(line: 168, column: 13, scope: !393)
!396 = !DILocation(line: 170, column: 9, scope: !390)
!397 = !DILocation(line: 170, column: 9, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !2, line: 170, column: 9)
!399 = distinct !DILexicalBlock(scope: !390, file: !2, line: 170, column: 9)
!400 = !DILocation(line: 170, column: 9, scope: !399)
!401 = !DILocation(line: 170, column: 9, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !2, line: 170, column: 9)
!403 = !DILocation(line: 171, column: 28, scope: !390)
!404 = !DILocation(line: 171, column: 33, scope: !390)
!405 = !DILocation(line: 171, column: 9, scope: !390)
!406 = !DILocation(line: 172, column: 28, scope: !390)
!407 = !DILocation(line: 172, column: 33, scope: !390)
!408 = !DILocation(line: 172, column: 9, scope: !390)
!409 = !DILocation(line: 173, column: 36, scope: !390)
!410 = !DILocation(line: 173, column: 41, scope: !390)
!411 = !DILocation(line: 173, column: 17, scope: !390)
!412 = !DILocation(line: 173, column: 66, scope: !390)
!413 = !DILocation(line: 173, column: 71, scope: !390)
!414 = !DILocation(line: 173, column: 47, scope: !390)
!415 = !DILocation(line: 173, column: 9, scope: !390)
!416 = !DILocation(line: 175, column: 28, scope: !390)
!417 = !DILocation(line: 175, column: 33, scope: !390)
!418 = !DILocation(line: 175, column: 9, scope: !390)
!419 = !DILocation(line: 176, column: 5, scope: !390)
!420 = !DILocation(line: 178, column: 5, scope: !363)
!421 = !DILocation(line: 179, column: 1, scope: !363)
!422 = distinct !DISubprogram(name: "nn_xsurveyor_setopt", scope: !2, file: !2, line: 181, type: !88, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !176)
!423 = !DILocalVariable(name: "self", arg: 1, scope: !422, file: !2, line: 181, type: !44)
!424 = !DILocation(line: 181, column: 46, scope: !422)
!425 = !DILocalVariable(name: "level", arg: 2, scope: !422, file: !2, line: 181, type: !50)
!426 = !DILocation(line: 181, column: 56, scope: !422)
!427 = !DILocalVariable(name: "option", arg: 3, scope: !422, file: !2, line: 181, type: !50)
!428 = !DILocation(line: 181, column: 67, scope: !422)
!429 = !DILocalVariable(name: "optval", arg: 4, scope: !422, file: !2, line: 182, type: !90)
!430 = !DILocation(line: 182, column: 21, scope: !422)
!431 = !DILocalVariable(name: "optvallen", arg: 5, scope: !422, file: !2, line: 182, type: !92)
!432 = !DILocation(line: 182, column: 36, scope: !422)
!433 = !DILocation(line: 184, column: 5, scope: !422)
!434 = distinct !DISubprogram(name: "nn_xsurveyor_getopt", scope: !2, file: !2, line: 187, type: !97, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !176)
!435 = !DILocalVariable(name: "self", arg: 1, scope: !434, file: !2, line: 187, type: !44)
!436 = !DILocation(line: 187, column: 46, scope: !434)
!437 = !DILocalVariable(name: "level", arg: 2, scope: !434, file: !2, line: 187, type: !50)
!438 = !DILocation(line: 187, column: 56, scope: !434)
!439 = !DILocalVariable(name: "option", arg: 3, scope: !434, file: !2, line: 187, type: !50)
!440 = !DILocation(line: 187, column: 67, scope: !434)
!441 = !DILocalVariable(name: "optval", arg: 4, scope: !434, file: !2, line: 188, type: !99)
!442 = !DILocation(line: 188, column: 15, scope: !434)
!443 = !DILocalVariable(name: "optvallen", arg: 5, scope: !434, file: !2, line: 188, type: !100)
!444 = !DILocation(line: 188, column: 31, scope: !434)
!445 = !DILocation(line: 190, column: 5, scope: !434)
!446 = distinct !DISubprogram(name: "nn_xsurveyor_ispeer", scope: !2, file: !2, line: 205, type: !160, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !176)
!447 = !DILocalVariable(name: "socktype", arg: 1, scope: !446, file: !2, line: 205, type: !50)
!448 = !DILocation(line: 205, column: 30, scope: !446)
!449 = !DILocation(line: 207, column: 12, scope: !446)
!450 = !DILocation(line: 207, column: 21, scope: !446)
!451 = !DILocation(line: 207, column: 5, scope: !446)
!452 = distinct !DISubprogram(name: "nn_xsurveyor_create", scope: !2, file: !2, line: 193, type: !155, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !176)
!453 = !DILocalVariable(name: "hint", arg: 1, scope: !452, file: !2, line: 193, type: !99)
!454 = !DILocation(line: 193, column: 39, scope: !452)
!455 = !DILocalVariable(name: "sockbase", arg: 2, scope: !452, file: !2, line: 193, type: !157)
!456 = !DILocation(line: 193, column: 66, scope: !452)
!457 = !DILocalVariable(name: "self", scope: !452, file: !2, line: 195, type: !27)
!458 = !DILocation(line: 195, column: 26, scope: !452)
!459 = !DILocation(line: 197, column: 12, scope: !452)
!460 = !DILocation(line: 197, column: 10, scope: !452)
!461 = !DILocation(line: 198, column: 5, scope: !452)
!462 = !DILocation(line: 198, column: 5, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !2, line: 198, column: 5)
!464 = distinct !DILexicalBlock(scope: !452, file: !2, line: 198, column: 5)
!465 = !DILocation(line: 198, column: 5, scope: !464)
!466 = !DILocation(line: 198, column: 5, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !2, line: 198, column: 5)
!468 = !DILocation(line: 199, column: 24, scope: !452)
!469 = !DILocation(line: 199, column: 60, scope: !452)
!470 = !DILocation(line: 199, column: 5, scope: !452)
!471 = !DILocation(line: 200, column: 18, scope: !452)
!472 = !DILocation(line: 200, column: 24, scope: !452)
!473 = !DILocation(line: 200, column: 6, scope: !452)
!474 = !DILocation(line: 200, column: 15, scope: !452)
!475 = !DILocation(line: 202, column: 5, scope: !452)
!476 = distinct !DISubprogram(name: "nn_xsurveyor_destroy", scope: !2, file: !2, line: 70, type: !42, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !176)
!477 = !DILocalVariable(name: "self", arg: 1, scope: !476, file: !2, line: 70, type: !44)
!478 = !DILocation(line: 70, column: 55, scope: !476)
!479 = !DILocalVariable(name: "xsurveyor", scope: !476, file: !2, line: 72, type: !27)
!480 = !DILocation(line: 72, column: 26, scope: !476)
!481 = !DILocation(line: 74, column: 17, scope: !476)
!482 = !DILocation(line: 74, column: 15, scope: !476)
!483 = !DILocation(line: 76, column: 24, scope: !476)
!484 = !DILocation(line: 76, column: 5, scope: !476)
!485 = !DILocation(line: 77, column: 14, scope: !476)
!486 = !DILocation(line: 77, column: 5, scope: !476)
!487 = !DILocation(line: 78, column: 1, scope: !476)
