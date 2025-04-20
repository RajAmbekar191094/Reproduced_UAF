; ModuleID = './src/protocols/pipeline/xpull.c'
source_filename = "./src/protocols/pipeline/xpull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sockbase_vfptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_xpull = type { %struct.nn_sockbase, %struct.nn_fq }
%struct.nn_sockbase = type { ptr, ptr }
%struct.nn_fq = type { %struct.nn_priolist }
%struct.nn_priolist = type { [16 x %struct.nn_priolist_slot], i32 }
%struct.nn_priolist_slot = type { %struct.nn_list, ptr }
%struct.nn_list = type { ptr, ptr }
%struct.nn_xpull_data = type { %struct.nn_fq_data }
%struct.nn_fq_data = type { %struct.nn_priolist_data }
%struct.nn_priolist_data = type { ptr, i32, %struct.nn_list_item }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [33 x i8] c"./src/protocols/pipeline/xpull.c\00", align 1, !dbg !7
@nn_xpull_sockbase_vfptr = internal constant %struct.nn_sockbase_vfptr { ptr null, ptr @nn_xpull_destroy, ptr @nn_xpull_add, ptr @nn_xpull_rm, ptr @nn_xpull_in, ptr @nn_xpull_out, ptr @nn_xpull_events, ptr null, ptr @nn_xpull_recv, ptr @nn_xpull_setopt, ptr @nn_xpull_getopt }, align 8, !dbg !12
@nn_xpull_socktype_struct = internal global %struct.nn_socktype { i32 2, i32 81, i32 2, ptr @nn_xpull_create, ptr @nn_xpull_ispeer, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !146
@nn_xpull_socktype = dso_local global ptr @nn_xpull_socktype_struct, align 8, !dbg !128

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xpull_create(ptr noundef %0, ptr noundef %1) #0 !dbg !156 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !158, metadata !DIExpression()), !dbg !159
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata ptr %5, metadata !162, metadata !DIExpression()), !dbg !163
  %6 = call ptr @nn_alloc_(i64 noundef 408), !dbg !164
  store ptr %6, ptr %5, align 8, !dbg !165
  br label %7, !dbg !166

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !dbg !167
  %9 = icmp ne ptr %8, null, !dbg !167
  %10 = xor i1 %9, true, !dbg !167
  %11 = zext i1 %10 to i32, !dbg !167
  %12 = sext i32 %11 to i64, !dbg !167
  %13 = icmp ne i64 %12, 0, !dbg !167
  br i1 %13, label %14, label %17, !dbg !170

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !171
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 175), !dbg !171
  call void @nn_err_abort() #4, !dbg !171
  unreachable, !dbg !171

17:                                               ; preds = %7
  br label %18, !dbg !170

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !173
  %20 = load ptr, ptr %3, align 8, !dbg !174
  call void @nn_xpull_init(ptr noundef %19, ptr noundef @nn_xpull_sockbase_vfptr, ptr noundef %20), !dbg !175
  %21 = load ptr, ptr %5, align 8, !dbg !176
  %22 = getelementptr inbounds %struct.nn_xpull, ptr %21, i32 0, i32 0, !dbg !177
  %23 = load ptr, ptr %4, align 8, !dbg !178
  store ptr %22, ptr %23, align 8, !dbg !179
  ret i32 0, !dbg !180
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpull_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !181 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !184, metadata !DIExpression()), !dbg !185
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !186, metadata !DIExpression()), !dbg !187
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !188, metadata !DIExpression()), !dbg !189
  %7 = load ptr, ptr %4, align 8, !dbg !190
  %8 = getelementptr inbounds %struct.nn_xpull, ptr %7, i32 0, i32 0, !dbg !191
  %9 = load ptr, ptr %5, align 8, !dbg !192
  %10 = load ptr, ptr %6, align 8, !dbg !193
  call void @nn_sockbase_init(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !194
  %11 = load ptr, ptr %4, align 8, !dbg !195
  %12 = getelementptr inbounds %struct.nn_xpull, ptr %11, i32 0, i32 1, !dbg !196
  call void @nn_fq_init(ptr noundef %12), !dbg !197
  ret void, !dbg !198
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xpull_ispeer(i32 noundef %0) #0 !dbg !199 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !200, metadata !DIExpression()), !dbg !201
  %3 = load i32, ptr %2, align 4, !dbg !202
  %4 = icmp eq i32 %3, 80, !dbg !203
  %5 = zext i1 %4 to i64, !dbg !202
  %6 = select i1 %4, i32 1, i32 0, !dbg !202
  ret i32 %6, !dbg !204
}

declare void @nn_sockbase_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_fq_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpull_destroy(ptr noundef %0) #0 !dbg !205 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata ptr %3, metadata !208, metadata !DIExpression()), !dbg !209
  %4 = load ptr, ptr %2, align 8, !dbg !210
  %5 = icmp ne ptr %4, null, !dbg !210
  br i1 %5, label %6, label %9, !dbg !210

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !210
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !210
  br label %10, !dbg !210

9:                                                ; preds = %1
  br label %10, !dbg !210

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !210
  store ptr %11, ptr %3, align 8, !dbg !211
  %12 = load ptr, ptr %3, align 8, !dbg !212
  call void @nn_xpull_term(ptr noundef %12), !dbg !213
  %13 = load ptr, ptr %3, align 8, !dbg !214
  call void @nn_free(ptr noundef %13), !dbg !215
  ret void, !dbg !216
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xpull_add(ptr noundef %0, ptr noundef %1) #0 !dbg !217 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !218, metadata !DIExpression()), !dbg !219
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata ptr %5, metadata !222, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata ptr %6, metadata !224, metadata !DIExpression()), !dbg !232
  %7 = load ptr, ptr %3, align 8, !dbg !233
  %8 = icmp ne ptr %7, null, !dbg !233
  br i1 %8, label %9, label %12, !dbg !233

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !233
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !233
  br label %13, !dbg !233

12:                                               ; preds = %2
  br label %13, !dbg !233

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !233
  store ptr %14, ptr %5, align 8, !dbg !234
  %15 = call ptr @nn_alloc_(i64 noundef 32), !dbg !235
  store ptr %15, ptr %6, align 8, !dbg !236
  br label %16, !dbg !237

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8, !dbg !238
  %18 = icmp ne ptr %17, null, !dbg !238
  %19 = xor i1 %18, true, !dbg !238
  %20 = zext i1 %19 to i32, !dbg !238
  %21 = sext i32 %20 to i64, !dbg !238
  %22 = icmp ne i64 %21, 0, !dbg !238
  br i1 %22, label %23, label %26, !dbg !241

23:                                               ; preds = %16
  %24 = load ptr, ptr @stderr, align 8, !dbg !242
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 108), !dbg !242
  call void @nn_err_abort() #4, !dbg !242
  unreachable, !dbg !242

26:                                               ; preds = %16
  br label %27, !dbg !241

27:                                               ; preds = %26
  %28 = load ptr, ptr %4, align 8, !dbg !244
  %29 = load ptr, ptr %6, align 8, !dbg !245
  call void @nn_pipe_setdata(ptr noundef %28, ptr noundef %29), !dbg !246
  %30 = load ptr, ptr %5, align 8, !dbg !247
  %31 = getelementptr inbounds %struct.nn_xpull, ptr %30, i32 0, i32 1, !dbg !248
  %32 = load ptr, ptr %4, align 8, !dbg !249
  %33 = load ptr, ptr %6, align 8, !dbg !250
  %34 = getelementptr inbounds %struct.nn_xpull_data, ptr %33, i32 0, i32 0, !dbg !251
  call void @nn_fq_add(ptr noundef %31, ptr noundef %32, ptr noundef %34, i32 noundef 8), !dbg !252
  ret i32 0, !dbg !253
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpull_rm(ptr noundef %0, ptr noundef %1) #0 !dbg !254 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !255, metadata !DIExpression()), !dbg !256
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata ptr %5, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata ptr %6, metadata !261, metadata !DIExpression()), !dbg !262
  %7 = load ptr, ptr %3, align 8, !dbg !263
  %8 = icmp ne ptr %7, null, !dbg !263
  br i1 %8, label %9, label %12, !dbg !263

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !263
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !263
  br label %13, !dbg !263

12:                                               ; preds = %2
  br label %13, !dbg !263

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !263
  store ptr %14, ptr %5, align 8, !dbg !264
  %15 = load ptr, ptr %4, align 8, !dbg !265
  %16 = call ptr @nn_pipe_getdata(ptr noundef %15), !dbg !266
  store ptr %16, ptr %6, align 8, !dbg !267
  %17 = load ptr, ptr %5, align 8, !dbg !268
  %18 = getelementptr inbounds %struct.nn_xpull, ptr %17, i32 0, i32 1, !dbg !269
  %19 = load ptr, ptr %4, align 8, !dbg !270
  %20 = load ptr, ptr %6, align 8, !dbg !271
  %21 = getelementptr inbounds %struct.nn_xpull_data, ptr %20, i32 0, i32 0, !dbg !272
  call void @nn_fq_rm(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !273
  %22 = load ptr, ptr %6, align 8, !dbg !274
  call void @nn_free(ptr noundef %22), !dbg !275
  ret void, !dbg !276
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpull_in(ptr noundef %0, ptr noundef %1) #0 !dbg !277 {
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
  %18 = getelementptr inbounds %struct.nn_xpull, ptr %17, i32 0, i32 1, !dbg !292
  %19 = load ptr, ptr %4, align 8, !dbg !293
  %20 = load ptr, ptr %6, align 8, !dbg !294
  %21 = getelementptr inbounds %struct.nn_xpull_data, ptr %20, i32 0, i32 0, !dbg !295
  call void @nn_fq_in(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !296
  ret void, !dbg !297
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpull_out(ptr noundef %0, ptr noundef %1) #0 !dbg !298 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !299, metadata !DIExpression()), !dbg !300
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !301, metadata !DIExpression()), !dbg !302
  ret void, !dbg !303
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xpull_events(ptr noundef %0) #0 !dbg !304 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !305, metadata !DIExpression()), !dbg !306
  %3 = load ptr, ptr %2, align 8, !dbg !307
  %4 = icmp ne ptr %3, null, !dbg !307
  br i1 %4, label %5, label %8, !dbg !307

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !307
  %7 = getelementptr inbounds i8, ptr %6, i64 0, !dbg !307
  br label %9, !dbg !307

8:                                                ; preds = %1
  br label %9, !dbg !307

9:                                                ; preds = %8, %5
  %10 = phi ptr [ %7, %5 ], [ null, %8 ], !dbg !307
  %11 = getelementptr inbounds %struct.nn_xpull, ptr %10, i32 0, i32 1, !dbg !308
  %12 = call i32 @nn_fq_can_recv(ptr noundef %11), !dbg !309
  %13 = icmp ne i32 %12, 0, !dbg !309
  %14 = zext i1 %13 to i64, !dbg !309
  %15 = select i1 %13, i32 1, i32 0, !dbg !309
  ret i32 %15, !dbg !310
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xpull_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !311 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !312, metadata !DIExpression()), !dbg !313
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !314, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.declare(metadata ptr %5, metadata !316, metadata !DIExpression()), !dbg !317
  %6 = load ptr, ptr %3, align 8, !dbg !318
  %7 = icmp ne ptr %6, null, !dbg !318
  br i1 %7, label %8, label %11, !dbg !318

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !dbg !318
  %10 = getelementptr inbounds i8, ptr %9, i64 0, !dbg !318
  br label %12, !dbg !318

11:                                               ; preds = %2
  br label %12, !dbg !318

12:                                               ; preds = %11, %8
  %13 = phi ptr [ %10, %8 ], [ null, %11 ], !dbg !318
  %14 = getelementptr inbounds %struct.nn_xpull, ptr %13, i32 0, i32 1, !dbg !319
  %15 = load ptr, ptr %4, align 8, !dbg !320
  %16 = call i32 @nn_fq_recv(ptr noundef %14, ptr noundef %15, ptr noundef null), !dbg !321
  store i32 %16, ptr %5, align 4, !dbg !322
  %17 = load i32, ptr %5, align 4, !dbg !323
  %18 = icmp slt i32 %17, 0, !dbg !324
  br i1 %18, label %19, label %21, !dbg !323

19:                                               ; preds = %12
  %20 = load i32, ptr %5, align 4, !dbg !325
  br label %22, !dbg !323

21:                                               ; preds = %12
  br label %22, !dbg !323

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ], !dbg !323
  ret i32 %23, !dbg !326
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xpull_setopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !327 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !328, metadata !DIExpression()), !dbg !329
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !330, metadata !DIExpression()), !dbg !331
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !332, metadata !DIExpression()), !dbg !333
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !334, metadata !DIExpression()), !dbg !335
  store i64 %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !336, metadata !DIExpression()), !dbg !337
  ret i32 -92, !dbg !338
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xpull_getopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !339 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !340, metadata !DIExpression()), !dbg !341
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !342, metadata !DIExpression()), !dbg !343
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !344, metadata !DIExpression()), !dbg !345
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !346, metadata !DIExpression()), !dbg !347
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !348, metadata !DIExpression()), !dbg !349
  ret i32 -92, !dbg !350
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpull_term(ptr noundef %0) #0 !dbg !351 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !354, metadata !DIExpression()), !dbg !355
  %3 = load ptr, ptr %2, align 8, !dbg !356
  %4 = getelementptr inbounds %struct.nn_xpull, ptr %3, i32 0, i32 1, !dbg !357
  call void @nn_fq_term(ptr noundef %4), !dbg !358
  %5 = load ptr, ptr %2, align 8, !dbg !359
  %6 = getelementptr inbounds %struct.nn_xpull, ptr %5, i32 0, i32 0, !dbg !360
  call void @nn_sockbase_term(ptr noundef %6), !dbg !361
  ret void, !dbg !362
}

declare void @nn_free(ptr noundef) #2

declare void @nn_fq_term(ptr noundef) #2

declare void @nn_sockbase_term(ptr noundef) #2

declare void @nn_pipe_setdata(ptr noundef, ptr noundef) #2

declare void @nn_fq_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare ptr @nn_pipe_getdata(ptr noundef) #2

declare void @nn_fq_rm(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_fq_in(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @nn_fq_can_recv(ptr noundef) #2

declare i32 @nn_fq_recv(ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/protocols/pipeline/xpull.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "d78e73422654b507a2aee98cd42ca399")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "nn_xpull_sockbase_vfptr", scope: !14, file: !2, line: 63, type: !26, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !15, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !16, globals: !127, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "src/protocols/pipeline/xpull.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "d78e73422654b507a2aee98cd42ca399")
!16 = !{!17, !126}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xpull", file: !2, line: 41, size: 3264, elements: !19)
!19 = !{!20, !93}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !18, file: !2, line: 42, baseType: !21, size: 128)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !22, line: 123, size: 128, elements: !23)
!22 = !DIFile(filename: "./src/protocols/pipeline/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!23 = !{!24, !90}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !21, file: !22, line: 124, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase_vfptr", file: !22, line: 84, size: 704, elements: !28)
!28 = !{!29, !34, !35, !42, !46, !47, !48, !52, !74, !75, !84}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !27, file: !22, line: 87, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !27, file: !22, line: 90, baseType: !30, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !27, file: !22, line: 97, baseType: !36, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !33, !40}
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !22, line: 56, flags: DIFlagFwdDecl)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !27, file: !22, line: 98, baseType: !43, size: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !33, !40}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !27, file: !22, line: 99, baseType: !43, size: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !27, file: !22, line: 100, baseType: !43, size: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !27, file: !22, line: 104, baseType: !49, size: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!39, !33}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !27, file: !22, line: 108, baseType: !53, size: 64, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!39, !33, !56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !58, line: 30, size: 512, elements: !59)
!58 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!59 = !{!60, !73}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !57, file: !58, line: 33, baseType: !61, size: 256)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !62, line: 39, size: 256, elements: !63)
!62 = !DIFile(filename: "src/utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !61, file: !62, line: 40, baseType: !65, size: 256)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 256, elements: !71)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !67, line: 24, baseType: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !69, line: 38, baseType: !70)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!70 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!71 = !{!72}
!72 = !DISubrange(count: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !57, file: !58, line: 36, baseType: !61, size: 256, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !27, file: !22, line: 112, baseType: !53, size: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !27, file: !22, line: 115, baseType: !76, size: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!39, !33, !39, !39, !79, !81}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !82, line: 46, baseType: !83)
!82 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!83 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !27, file: !22, line: 119, baseType: !85, size: 64, offset: 640)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!39, !33, !39, !39, !88, !89}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !21, file: !22, line: 125, baseType: !91, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !22, line: 125, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !18, file: !2, line: 43, baseType: !94, size: 3136, offset: 128)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fq", file: !95, line: 37, size: 3136, elements: !96)
!95 = !DIFile(filename: "./src/protocols/pipeline/../utils/fq.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "342bacd48eb65b84f809ed6b86c6514c")
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !94, file: !95, line: 38, baseType: !98, size: 3136)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist", file: !99, line: 45, size: 3136, elements: !100)
!99 = !DIFile(filename: "./src/protocols/pipeline/../utils/priolist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e7a7c69c9c81fe3b1beae760b1a28137")
!100 = !{!101, !125}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !98, file: !99, line: 46, baseType: !102, size: 3072)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 3072, elements: !123)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_slot", file: !99, line: 40, size: 192, elements: !104)
!104 = !{!105, !116}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !103, file: !99, line: 41, baseType: !106, size: 128)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !107, line: 31, size: 128, elements: !108)
!107 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!108 = !{!109, !115}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !106, file: !107, line: 32, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !107, line: 26, size: 128, elements: !112)
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !111, file: !107, line: 27, baseType: !110, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !111, file: !107, line: 28, baseType: !110, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !106, file: !107, line: 33, baseType: !110, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !103, file: !99, line: 42, baseType: !117, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_data", file: !99, line: 34, size: 256, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !118, file: !99, line: 35, baseType: !40, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !118, file: !99, line: 36, baseType: !39, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !118, file: !99, line: 37, baseType: !111, size: 128, offset: 128)
!123 = !{!124}
!124 = !DISubrange(count: 16)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !98, file: !99, line: 47, baseType: !39, size: 32, offset: 3072)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!127 = !{!0, !7, !128, !12, !146}
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "nn_xpull_socktype", scope: !14, file: !2, line: 196, type: !130, isLocal: false, isDefinition: true)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !22, line: 160, size: 384, elements: !132)
!132 = !{!133, !134, !135, !136, !141, !145}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !131, file: !22, line: 163, baseType: !39, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !131, file: !22, line: 164, baseType: !39, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !22, line: 167, baseType: !39, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !131, file: !22, line: 173, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!39, !88, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !131, file: !22, line: 179, baseType: !142, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!39, !39}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !131, file: !22, line: 183, baseType: !111, size: 128, offset: 256)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "nn_xpull_socktype_struct", scope: !14, file: !2, line: 187, type: !131, isLocal: true, isDefinition: true)
!148 = !{i32 7, !"Dwarf Version", i32 5}
!149 = !{i32 2, !"Debug Info Version", i32 3}
!150 = !{i32 1, !"wchar_size", i32 4}
!151 = !{i32 8, !"PIC Level", i32 2}
!152 = !{i32 7, !"PIE Level", i32 2}
!153 = !{i32 7, !"uwtable", i32 2}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 16.0.0"}
!156 = distinct !DISubprogram(name: "nn_xpull_create", scope: !2, file: !2, line: 170, type: !138, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !157)
!157 = !{}
!158 = !DILocalVariable(name: "hint", arg: 1, scope: !156, file: !2, line: 170, type: !88)
!159 = !DILocation(line: 170, column: 28, scope: !156)
!160 = !DILocalVariable(name: "sockbase", arg: 2, scope: !156, file: !2, line: 170, type: !140)
!161 = !DILocation(line: 170, column: 55, scope: !156)
!162 = !DILocalVariable(name: "self", scope: !156, file: !2, line: 172, type: !17)
!163 = !DILocation(line: 172, column: 22, scope: !156)
!164 = !DILocation(line: 174, column: 12, scope: !156)
!165 = !DILocation(line: 174, column: 10, scope: !156)
!166 = !DILocation(line: 175, column: 5, scope: !156)
!167 = !DILocation(line: 175, column: 5, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 175, column: 5)
!169 = distinct !DILexicalBlock(scope: !156, file: !2, line: 175, column: 5)
!170 = !DILocation(line: 175, column: 5, scope: !169)
!171 = !DILocation(line: 175, column: 5, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !2, line: 175, column: 5)
!173 = !DILocation(line: 176, column: 20, scope: !156)
!174 = !DILocation(line: 176, column: 52, scope: !156)
!175 = !DILocation(line: 176, column: 5, scope: !156)
!176 = !DILocation(line: 177, column: 18, scope: !156)
!177 = !DILocation(line: 177, column: 24, scope: !156)
!178 = !DILocation(line: 177, column: 6, scope: !156)
!179 = !DILocation(line: 177, column: 15, scope: !156)
!180 = !DILocation(line: 179, column: 5, scope: !156)
!181 = distinct !DISubprogram(name: "nn_xpull_init", scope: !2, file: !2, line: 77, type: !182, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !157)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !17, !25, !88}
!184 = !DILocalVariable(name: "self", arg: 1, scope: !181, file: !2, line: 77, type: !17)
!185 = !DILocation(line: 77, column: 45, scope: !181)
!186 = !DILocalVariable(name: "vfptr", arg: 2, scope: !181, file: !2, line: 78, type: !25)
!187 = !DILocation(line: 78, column: 37, scope: !181)
!188 = !DILocalVariable(name: "hint", arg: 3, scope: !181, file: !2, line: 78, type: !88)
!189 = !DILocation(line: 78, column: 50, scope: !181)
!190 = !DILocation(line: 80, column: 24, scope: !181)
!191 = !DILocation(line: 80, column: 30, scope: !181)
!192 = !DILocation(line: 80, column: 40, scope: !181)
!193 = !DILocation(line: 80, column: 47, scope: !181)
!194 = !DILocation(line: 80, column: 5, scope: !181)
!195 = !DILocation(line: 81, column: 18, scope: !181)
!196 = !DILocation(line: 81, column: 24, scope: !181)
!197 = !DILocation(line: 81, column: 5, scope: !181)
!198 = !DILocation(line: 82, column: 1, scope: !181)
!199 = distinct !DISubprogram(name: "nn_xpull_ispeer", scope: !2, file: !2, line: 182, type: !143, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !157)
!200 = !DILocalVariable(name: "socktype", arg: 1, scope: !199, file: !2, line: 182, type: !39)
!201 = !DILocation(line: 182, column: 26, scope: !199)
!202 = !DILocation(line: 184, column: 12, scope: !199)
!203 = !DILocation(line: 184, column: 21, scope: !199)
!204 = !DILocation(line: 184, column: 5, scope: !199)
!205 = distinct !DISubprogram(name: "nn_xpull_destroy", scope: !2, file: !2, line: 90, type: !31, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !157)
!206 = !DILocalVariable(name: "self", arg: 1, scope: !205, file: !2, line: 90, type: !33)
!207 = !DILocation(line: 90, column: 44, scope: !205)
!208 = !DILocalVariable(name: "xpull", scope: !205, file: !2, line: 92, type: !17)
!209 = !DILocation(line: 92, column: 22, scope: !205)
!210 = !DILocation(line: 94, column: 13, scope: !205)
!211 = !DILocation(line: 94, column: 11, scope: !205)
!212 = !DILocation(line: 96, column: 20, scope: !205)
!213 = !DILocation(line: 96, column: 5, scope: !205)
!214 = !DILocation(line: 97, column: 14, scope: !205)
!215 = !DILocation(line: 97, column: 5, scope: !205)
!216 = !DILocation(line: 98, column: 1, scope: !205)
!217 = distinct !DISubprogram(name: "nn_xpull_add", scope: !2, file: !2, line: 100, type: !37, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !157)
!218 = !DILocalVariable(name: "self", arg: 1, scope: !217, file: !2, line: 100, type: !33)
!219 = !DILocation(line: 100, column: 46, scope: !217)
!220 = !DILocalVariable(name: "pipe", arg: 2, scope: !217, file: !2, line: 100, type: !40)
!221 = !DILocation(line: 100, column: 68, scope: !217)
!222 = !DILocalVariable(name: "xpull", scope: !217, file: !2, line: 102, type: !17)
!223 = !DILocation(line: 102, column: 22, scope: !217)
!224 = !DILocalVariable(name: "data", scope: !217, file: !2, line: 103, type: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xpull_data", file: !2, line: 37, size: 256, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !226, file: !2, line: 38, baseType: !229, size: 256)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fq_data", file: !95, line: 33, size: 256, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !229, file: !95, line: 34, baseType: !118, size: 256)
!232 = !DILocation(line: 103, column: 27, scope: !217)
!233 = !DILocation(line: 105, column: 13, scope: !217)
!234 = !DILocation(line: 105, column: 11, scope: !217)
!235 = !DILocation(line: 107, column: 12, scope: !217)
!236 = !DILocation(line: 107, column: 10, scope: !217)
!237 = !DILocation(line: 108, column: 5, scope: !217)
!238 = !DILocation(line: 108, column: 5, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !2, line: 108, column: 5)
!240 = distinct !DILexicalBlock(scope: !217, file: !2, line: 108, column: 5)
!241 = !DILocation(line: 108, column: 5, scope: !240)
!242 = !DILocation(line: 108, column: 5, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !2, line: 108, column: 5)
!244 = !DILocation(line: 109, column: 22, scope: !217)
!245 = !DILocation(line: 109, column: 28, scope: !217)
!246 = !DILocation(line: 109, column: 5, scope: !217)
!247 = !DILocation(line: 110, column: 17, scope: !217)
!248 = !DILocation(line: 110, column: 24, scope: !217)
!249 = !DILocation(line: 110, column: 28, scope: !217)
!250 = !DILocation(line: 110, column: 35, scope: !217)
!251 = !DILocation(line: 110, column: 41, scope: !217)
!252 = !DILocation(line: 110, column: 5, scope: !217)
!253 = !DILocation(line: 112, column: 5, scope: !217)
!254 = distinct !DISubprogram(name: "nn_xpull_rm", scope: !2, file: !2, line: 115, type: !44, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !157)
!255 = !DILocalVariable(name: "self", arg: 1, scope: !254, file: !2, line: 115, type: !33)
!256 = !DILocation(line: 115, column: 46, scope: !254)
!257 = !DILocalVariable(name: "pipe", arg: 2, scope: !254, file: !2, line: 115, type: !40)
!258 = !DILocation(line: 115, column: 68, scope: !254)
!259 = !DILocalVariable(name: "xpull", scope: !254, file: !2, line: 117, type: !17)
!260 = !DILocation(line: 117, column: 22, scope: !254)
!261 = !DILocalVariable(name: "data", scope: !254, file: !2, line: 118, type: !225)
!262 = !DILocation(line: 118, column: 27, scope: !254)
!263 = !DILocation(line: 120, column: 13, scope: !254)
!264 = !DILocation(line: 120, column: 11, scope: !254)
!265 = !DILocation(line: 121, column: 29, scope: !254)
!266 = !DILocation(line: 121, column: 12, scope: !254)
!267 = !DILocation(line: 121, column: 10, scope: !254)
!268 = !DILocation(line: 122, column: 16, scope: !254)
!269 = !DILocation(line: 122, column: 23, scope: !254)
!270 = !DILocation(line: 122, column: 27, scope: !254)
!271 = !DILocation(line: 122, column: 34, scope: !254)
!272 = !DILocation(line: 122, column: 40, scope: !254)
!273 = !DILocation(line: 122, column: 5, scope: !254)
!274 = !DILocation(line: 123, column: 14, scope: !254)
!275 = !DILocation(line: 123, column: 5, scope: !254)
!276 = !DILocation(line: 124, column: 1, scope: !254)
!277 = distinct !DISubprogram(name: "nn_xpull_in", scope: !2, file: !2, line: 126, type: !44, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !157)
!278 = !DILocalVariable(name: "self", arg: 1, scope: !277, file: !2, line: 126, type: !33)
!279 = !DILocation(line: 126, column: 46, scope: !277)
!280 = !DILocalVariable(name: "pipe", arg: 2, scope: !277, file: !2, line: 126, type: !40)
!281 = !DILocation(line: 126, column: 68, scope: !277)
!282 = !DILocalVariable(name: "xpull", scope: !277, file: !2, line: 128, type: !17)
!283 = !DILocation(line: 128, column: 22, scope: !277)
!284 = !DILocalVariable(name: "data", scope: !277, file: !2, line: 129, type: !225)
!285 = !DILocation(line: 129, column: 27, scope: !277)
!286 = !DILocation(line: 131, column: 13, scope: !277)
!287 = !DILocation(line: 131, column: 11, scope: !277)
!288 = !DILocation(line: 132, column: 29, scope: !277)
!289 = !DILocation(line: 132, column: 12, scope: !277)
!290 = !DILocation(line: 132, column: 10, scope: !277)
!291 = !DILocation(line: 133, column: 16, scope: !277)
!292 = !DILocation(line: 133, column: 23, scope: !277)
!293 = !DILocation(line: 133, column: 27, scope: !277)
!294 = !DILocation(line: 133, column: 34, scope: !277)
!295 = !DILocation(line: 133, column: 40, scope: !277)
!296 = !DILocation(line: 133, column: 5, scope: !277)
!297 = !DILocation(line: 134, column: 1, scope: !277)
!298 = distinct !DISubprogram(name: "nn_xpull_out", scope: !2, file: !2, line: 136, type: !44, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !157)
!299 = !DILocalVariable(name: "self", arg: 1, scope: !298, file: !2, line: 136, type: !33)
!300 = !DILocation(line: 136, column: 47, scope: !298)
!301 = !DILocalVariable(name: "pipe", arg: 2, scope: !298, file: !2, line: 136, type: !40)
!302 = !DILocation(line: 136, column: 69, scope: !298)
!303 = !DILocation(line: 140, column: 1, scope: !298)
!304 = distinct !DISubprogram(name: "nn_xpull_events", scope: !2, file: !2, line: 142, type: !50, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !157)
!305 = !DILocalVariable(name: "self", arg: 1, scope: !304, file: !2, line: 142, type: !33)
!306 = !DILocation(line: 142, column: 49, scope: !304)
!307 = !DILocation(line: 144, column: 29, scope: !304)
!308 = !DILocation(line: 144, column: 72, scope: !304)
!309 = !DILocation(line: 144, column: 12, scope: !304)
!310 = !DILocation(line: 144, column: 5, scope: !304)
!311 = distinct !DISubprogram(name: "nn_xpull_recv", scope: !2, file: !2, line: 148, type: !54, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !157)
!312 = !DILocalVariable(name: "self", arg: 1, scope: !311, file: !2, line: 148, type: !33)
!313 = !DILocation(line: 148, column: 47, scope: !311)
!314 = !DILocalVariable(name: "msg", arg: 2, scope: !311, file: !2, line: 148, type: !56)
!315 = !DILocation(line: 148, column: 68, scope: !311)
!316 = !DILocalVariable(name: "rc", scope: !311, file: !2, line: 150, type: !39)
!317 = !DILocation(line: 150, column: 9, scope: !311)
!318 = !DILocation(line: 152, column: 23, scope: !311)
!319 = !DILocation(line: 152, column: 66, scope: !311)
!320 = !DILocation(line: 152, column: 70, scope: !311)
!321 = !DILocation(line: 152, column: 10, scope: !311)
!322 = !DILocation(line: 152, column: 8, scope: !311)
!323 = !DILocation(line: 155, column: 12, scope: !311)
!324 = !DILocation(line: 155, column: 15, scope: !311)
!325 = !DILocation(line: 155, column: 21, scope: !311)
!326 = !DILocation(line: 155, column: 5, scope: !311)
!327 = distinct !DISubprogram(name: "nn_xpull_setopt", scope: !2, file: !2, line: 158, type: !77, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !157)
!328 = !DILocalVariable(name: "self", arg: 1, scope: !327, file: !2, line: 158, type: !33)
!329 = !DILocation(line: 158, column: 49, scope: !327)
!330 = !DILocalVariable(name: "level", arg: 2, scope: !327, file: !2, line: 158, type: !39)
!331 = !DILocation(line: 158, column: 59, scope: !327)
!332 = !DILocalVariable(name: "option", arg: 3, scope: !327, file: !2, line: 158, type: !39)
!333 = !DILocation(line: 158, column: 70, scope: !327)
!334 = !DILocalVariable(name: "optval", arg: 4, scope: !327, file: !2, line: 159, type: !79)
!335 = !DILocation(line: 159, column: 21, scope: !327)
!336 = !DILocalVariable(name: "optvallen", arg: 5, scope: !327, file: !2, line: 159, type: !81)
!337 = !DILocation(line: 159, column: 36, scope: !327)
!338 = !DILocation(line: 161, column: 5, scope: !327)
!339 = distinct !DISubprogram(name: "nn_xpull_getopt", scope: !2, file: !2, line: 164, type: !86, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !157)
!340 = !DILocalVariable(name: "self", arg: 1, scope: !339, file: !2, line: 164, type: !33)
!341 = !DILocation(line: 164, column: 49, scope: !339)
!342 = !DILocalVariable(name: "level", arg: 2, scope: !339, file: !2, line: 164, type: !39)
!343 = !DILocation(line: 164, column: 59, scope: !339)
!344 = !DILocalVariable(name: "option", arg: 3, scope: !339, file: !2, line: 164, type: !39)
!345 = !DILocation(line: 164, column: 70, scope: !339)
!346 = !DILocalVariable(name: "optval", arg: 4, scope: !339, file: !2, line: 165, type: !88)
!347 = !DILocation(line: 165, column: 15, scope: !339)
!348 = !DILocalVariable(name: "optvallen", arg: 5, scope: !339, file: !2, line: 165, type: !89)
!349 = !DILocation(line: 165, column: 31, scope: !339)
!350 = !DILocation(line: 167, column: 5, scope: !339)
!351 = distinct !DISubprogram(name: "nn_xpull_term", scope: !2, file: !2, line: 84, type: !352, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !157)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !17}
!354 = !DILocalVariable(name: "self", arg: 1, scope: !351, file: !2, line: 84, type: !17)
!355 = !DILocation(line: 84, column: 45, scope: !351)
!356 = !DILocation(line: 86, column: 18, scope: !351)
!357 = !DILocation(line: 86, column: 24, scope: !351)
!358 = !DILocation(line: 86, column: 5, scope: !351)
!359 = !DILocation(line: 87, column: 24, scope: !351)
!360 = !DILocation(line: 87, column: 30, scope: !351)
!361 = !DILocation(line: 87, column: 5, scope: !351)
!362 = !DILocation(line: 88, column: 1, scope: !351)
