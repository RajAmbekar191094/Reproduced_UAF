; ModuleID = './src/protocols/reqrep/xreq.c'
source_filename = "./src/protocols/reqrep/xreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_sockbase_vfptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nn_xreq = type { %struct.nn_sockbase, %struct.nn_lb, %struct.nn_fq }
%struct.nn_sockbase = type { ptr, ptr }
%struct.nn_lb = type { %struct.nn_priolist }
%struct.nn_priolist = type { [16 x %struct.nn_priolist_slot], i32 }
%struct.nn_priolist_slot = type { %struct.nn_list, ptr }
%struct.nn_list = type { ptr, ptr }
%struct.nn_fq = type { %struct.nn_priolist }
%struct.nn_xreq_data = type { %struct.nn_lb_data, %struct.nn_fq_data }
%struct.nn_lb_data = type { %struct.nn_priolist_data }
%struct.nn_priolist_data = type { ptr, i32, %struct.nn_list_item }
%struct.nn_fq_data = type { %struct.nn_priolist_data }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"./src/protocols/reqrep/xreq.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [23 x i8] c"sz == sizeof (sndprio)\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [34 x i8] c"nn_chunkref_size (&msg->hdr) == 0\00", align 1, !dbg !21
@nn_xreq_socktype_struct = internal global %struct.nn_socktype { i32 2, i32 48, i32 0, ptr @nn_xreq_create, ptr @nn_xreq_ispeer, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !26
@nn_xreq_socktype = dso_local global ptr @nn_xreq_socktype_struct, align 8, !dbg !148
@nn_xreq_sockbase_vfptr = internal constant %struct.nn_sockbase_vfptr { ptr null, ptr @nn_xreq_destroy, ptr @nn_xreq_add, ptr @nn_xreq_rm, ptr @nn_xreq_in, ptr @nn_xreq_out, ptr @nn_xreq_events, ptr @nn_xreq_send, ptr @nn_xreq_recv, ptr @nn_xreq_setopt, ptr @nn_xreq_getopt }, align 8, !dbg !166

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xreq_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !176 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !180, metadata !DIExpression()), !dbg !181
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !182, metadata !DIExpression()), !dbg !183
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !184, metadata !DIExpression()), !dbg !185
  %7 = load ptr, ptr %4, align 8, !dbg !186
  %8 = getelementptr inbounds %struct.nn_xreq, ptr %7, i32 0, i32 0, !dbg !187
  %9 = load ptr, ptr %5, align 8, !dbg !188
  %10 = load ptr, ptr %6, align 8, !dbg !189
  call void @nn_sockbase_init(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !190
  %11 = load ptr, ptr %4, align 8, !dbg !191
  %12 = getelementptr inbounds %struct.nn_xreq, ptr %11, i32 0, i32 1, !dbg !192
  call void @nn_lb_init(ptr noundef %12), !dbg !193
  %13 = load ptr, ptr %4, align 8, !dbg !194
  %14 = getelementptr inbounds %struct.nn_xreq, ptr %13, i32 0, i32 2, !dbg !195
  call void @nn_fq_init(ptr noundef %14), !dbg !196
  ret void, !dbg !197
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_sockbase_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_lb_init(ptr noundef) #2

declare void @nn_fq_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xreq_term(ptr noundef %0) #0 !dbg !198 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !201, metadata !DIExpression()), !dbg !202
  %3 = load ptr, ptr %2, align 8, !dbg !203
  %4 = getelementptr inbounds %struct.nn_xreq, ptr %3, i32 0, i32 2, !dbg !204
  call void @nn_fq_term(ptr noundef %4), !dbg !205
  %5 = load ptr, ptr %2, align 8, !dbg !206
  %6 = getelementptr inbounds %struct.nn_xreq, ptr %5, i32 0, i32 1, !dbg !207
  call void @nn_lb_term(ptr noundef %6), !dbg !208
  %7 = load ptr, ptr %2, align 8, !dbg !209
  %8 = getelementptr inbounds %struct.nn_xreq, ptr %7, i32 0, i32 0, !dbg !210
  call void @nn_sockbase_term(ptr noundef %8), !dbg !211
  ret void, !dbg !212
}

declare void @nn_fq_term(ptr noundef) #2

declare void @nn_lb_term(ptr noundef) #2

declare void @nn_sockbase_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xreq_add(ptr noundef %0, ptr noundef %1) #0 !dbg !213 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !214, metadata !DIExpression()), !dbg !215
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata ptr %5, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata ptr %6, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata ptr %7, metadata !222, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata ptr %8, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata ptr %9, metadata !237, metadata !DIExpression()), !dbg !238
  %10 = load ptr, ptr %3, align 8, !dbg !239
  %11 = icmp ne ptr %10, null, !dbg !239
  br i1 %11, label %12, label %15, !dbg !239

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !dbg !239
  %14 = getelementptr inbounds i8, ptr %13, i64 0, !dbg !239
  br label %16, !dbg !239

15:                                               ; preds = %2
  br label %16, !dbg !239

16:                                               ; preds = %15, %12
  %17 = phi ptr [ %14, %12 ], [ null, %15 ], !dbg !239
  store ptr %17, ptr %6, align 8, !dbg !240
  store i64 4, ptr %9, align 8, !dbg !241
  %18 = load ptr, ptr %6, align 8, !dbg !242
  %19 = getelementptr inbounds %struct.nn_xreq, ptr %18, i32 0, i32 0, !dbg !243
  %20 = call i32 @nn_sockbase_getopt(ptr noundef %19, i32 noundef 8, ptr noundef %8, ptr noundef %9), !dbg !244
  store i32 %20, ptr %5, align 4, !dbg !245
  br label %21, !dbg !246

21:                                               ; preds = %16
  %22 = load i32, ptr %5, align 4, !dbg !247
  %23 = icmp eq i32 %22, 0, !dbg !247
  %24 = xor i1 %23, true, !dbg !247
  %25 = zext i1 %24 to i32, !dbg !247
  %26 = sext i32 %25 to i64, !dbg !247
  %27 = icmp ne i64 %26, 0, !dbg !247
  br i1 %27, label %28, label %36, !dbg !250

28:                                               ; preds = %21
  %29 = load ptr, ptr @stderr, align 8, !dbg !251
  %30 = load i32, ptr %5, align 4, !dbg !251
  %31 = sub nsw i32 0, %30, !dbg !251
  %32 = call ptr @nn_err_strerror(i32 noundef %31), !dbg !251
  %33 = load i32, ptr %5, align 4, !dbg !251
  %34 = sub nsw i32 0, %33, !dbg !251
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str, ptr noundef %32, i32 noundef %34, ptr noundef @.str.1, i32 noundef 93), !dbg !251
  call void @nn_err_abort() #5, !dbg !251
  unreachable, !dbg !251

36:                                               ; preds = %21
  br label %37, !dbg !250

37:                                               ; preds = %36
  br label %38, !dbg !253

38:                                               ; preds = %37
  %39 = load i64, ptr %9, align 8, !dbg !254
  %40 = icmp eq i64 %39, 4, !dbg !254
  %41 = xor i1 %40, true, !dbg !254
  %42 = zext i1 %41 to i32, !dbg !254
  %43 = sext i32 %42 to i64, !dbg !254
  %44 = icmp ne i64 %43, 0, !dbg !254
  br i1 %44, label %45, label %48, !dbg !257

45:                                               ; preds = %38
  %46 = load ptr, ptr @stderr, align 8, !dbg !258
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 94), !dbg !258
  call void @nn_err_abort() #5, !dbg !258
  unreachable, !dbg !258

48:                                               ; preds = %38
  br label %49, !dbg !257

49:                                               ; preds = %48
  %50 = call ptr @nn_alloc_(i64 noundef 64), !dbg !260
  store ptr %50, ptr %7, align 8, !dbg !261
  br label %51, !dbg !262

51:                                               ; preds = %49
  %52 = load ptr, ptr %7, align 8, !dbg !263
  %53 = icmp ne ptr %52, null, !dbg !263
  %54 = xor i1 %53, true, !dbg !263
  %55 = zext i1 %54 to i32, !dbg !263
  %56 = sext i32 %55 to i64, !dbg !263
  %57 = icmp ne i64 %56, 0, !dbg !263
  br i1 %57, label %58, label %61, !dbg !266

58:                                               ; preds = %51
  %59 = load ptr, ptr @stderr, align 8, !dbg !267
  %60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 97), !dbg !267
  call void @nn_err_abort() #5, !dbg !267
  unreachable, !dbg !267

61:                                               ; preds = %51
  br label %62, !dbg !266

62:                                               ; preds = %61
  %63 = load ptr, ptr %4, align 8, !dbg !269
  %64 = load ptr, ptr %7, align 8, !dbg !270
  call void @nn_pipe_setdata(ptr noundef %63, ptr noundef %64), !dbg !271
  %65 = load ptr, ptr %6, align 8, !dbg !272
  %66 = getelementptr inbounds %struct.nn_xreq, ptr %65, i32 0, i32 1, !dbg !273
  %67 = load ptr, ptr %4, align 8, !dbg !274
  %68 = load ptr, ptr %7, align 8, !dbg !275
  %69 = getelementptr inbounds %struct.nn_xreq_data, ptr %68, i32 0, i32 0, !dbg !276
  %70 = load i32, ptr %8, align 4, !dbg !277
  call void @nn_lb_add(ptr noundef %66, ptr noundef %67, ptr noundef %69, i32 noundef %70), !dbg !278
  %71 = load ptr, ptr %6, align 8, !dbg !279
  %72 = getelementptr inbounds %struct.nn_xreq, ptr %71, i32 0, i32 2, !dbg !280
  %73 = load ptr, ptr %4, align 8, !dbg !281
  %74 = load ptr, ptr %7, align 8, !dbg !282
  %75 = getelementptr inbounds %struct.nn_xreq_data, ptr %74, i32 0, i32 1, !dbg !283
  call void @nn_fq_add(ptr noundef %72, ptr noundef %73, ptr noundef %75, i32 noundef 8), !dbg !284
  ret i32 0, !dbg !285
}

declare i32 @nn_sockbase_getopt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare ptr @nn_err_strerror(i32 noundef) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare ptr @nn_alloc_(i64 noundef) #2

declare void @nn_pipe_setdata(ptr noundef, ptr noundef) #2

declare void @nn_lb_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @nn_fq_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xreq_rm(ptr noundef %0, ptr noundef %1) #0 !dbg !286 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !287, metadata !DIExpression()), !dbg !288
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.declare(metadata ptr %5, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata ptr %6, metadata !293, metadata !DIExpression()), !dbg !294
  %7 = load ptr, ptr %3, align 8, !dbg !295
  %8 = icmp ne ptr %7, null, !dbg !295
  br i1 %8, label %9, label %12, !dbg !295

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !295
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !295
  br label %13, !dbg !295

12:                                               ; preds = %2
  br label %13, !dbg !295

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !295
  store ptr %14, ptr %5, align 8, !dbg !296
  %15 = load ptr, ptr %4, align 8, !dbg !297
  %16 = call ptr @nn_pipe_getdata(ptr noundef %15), !dbg !298
  store ptr %16, ptr %6, align 8, !dbg !299
  %17 = load ptr, ptr %5, align 8, !dbg !300
  %18 = getelementptr inbounds %struct.nn_xreq, ptr %17, i32 0, i32 1, !dbg !301
  %19 = load ptr, ptr %4, align 8, !dbg !302
  %20 = load ptr, ptr %6, align 8, !dbg !303
  %21 = getelementptr inbounds %struct.nn_xreq_data, ptr %20, i32 0, i32 0, !dbg !304
  call void @nn_lb_rm(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !305
  %22 = load ptr, ptr %5, align 8, !dbg !306
  %23 = getelementptr inbounds %struct.nn_xreq, ptr %22, i32 0, i32 2, !dbg !307
  %24 = load ptr, ptr %4, align 8, !dbg !308
  %25 = load ptr, ptr %6, align 8, !dbg !309
  %26 = getelementptr inbounds %struct.nn_xreq_data, ptr %25, i32 0, i32 1, !dbg !310
  call void @nn_fq_rm(ptr noundef %23, ptr noundef %24, ptr noundef %26), !dbg !311
  %27 = load ptr, ptr %6, align 8, !dbg !312
  call void @nn_free(ptr noundef %27), !dbg !313
  ret void, !dbg !314
}

declare ptr @nn_pipe_getdata(ptr noundef) #2

declare void @nn_lb_rm(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_fq_rm(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xreq_in(ptr noundef %0, ptr noundef %1) #0 !dbg !315 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !316, metadata !DIExpression()), !dbg !317
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !318, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.declare(metadata ptr %5, metadata !320, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.declare(metadata ptr %6, metadata !322, metadata !DIExpression()), !dbg !323
  %7 = load ptr, ptr %3, align 8, !dbg !324
  %8 = icmp ne ptr %7, null, !dbg !324
  br i1 %8, label %9, label %12, !dbg !324

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !324
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !324
  br label %13, !dbg !324

12:                                               ; preds = %2
  br label %13, !dbg !324

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !324
  store ptr %14, ptr %5, align 8, !dbg !325
  %15 = load ptr, ptr %4, align 8, !dbg !326
  %16 = call ptr @nn_pipe_getdata(ptr noundef %15), !dbg !327
  store ptr %16, ptr %6, align 8, !dbg !328
  %17 = load ptr, ptr %5, align 8, !dbg !329
  %18 = getelementptr inbounds %struct.nn_xreq, ptr %17, i32 0, i32 2, !dbg !330
  %19 = load ptr, ptr %4, align 8, !dbg !331
  %20 = load ptr, ptr %6, align 8, !dbg !332
  %21 = getelementptr inbounds %struct.nn_xreq_data, ptr %20, i32 0, i32 1, !dbg !333
  call void @nn_fq_in(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !334
  ret void, !dbg !335
}

declare void @nn_fq_in(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xreq_out(ptr noundef %0, ptr noundef %1) #0 !dbg !336 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !337, metadata !DIExpression()), !dbg !338
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata ptr %5, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata ptr %6, metadata !343, metadata !DIExpression()), !dbg !344
  %7 = load ptr, ptr %3, align 8, !dbg !345
  %8 = icmp ne ptr %7, null, !dbg !345
  br i1 %8, label %9, label %12, !dbg !345

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !345
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !345
  br label %13, !dbg !345

12:                                               ; preds = %2
  br label %13, !dbg !345

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !345
  store ptr %14, ptr %5, align 8, !dbg !346
  %15 = load ptr, ptr %4, align 8, !dbg !347
  %16 = call ptr @nn_pipe_getdata(ptr noundef %15), !dbg !348
  store ptr %16, ptr %6, align 8, !dbg !349
  %17 = load ptr, ptr %5, align 8, !dbg !350
  %18 = getelementptr inbounds %struct.nn_xreq, ptr %17, i32 0, i32 1, !dbg !351
  %19 = load ptr, ptr %4, align 8, !dbg !352
  %20 = load ptr, ptr %6, align 8, !dbg !353
  %21 = getelementptr inbounds %struct.nn_xreq_data, ptr %20, i32 0, i32 0, !dbg !354
  call void @nn_lb_out(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !355
  ret void, !dbg !356
}

declare void @nn_lb_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xreq_events(ptr noundef %0) #0 !dbg !357 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !358, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.declare(metadata ptr %3, metadata !360, metadata !DIExpression()), !dbg !361
  %4 = load ptr, ptr %2, align 8, !dbg !362
  %5 = icmp ne ptr %4, null, !dbg !362
  br i1 %5, label %6, label %9, !dbg !362

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !362
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !362
  br label %10, !dbg !362

9:                                                ; preds = %1
  br label %10, !dbg !362

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !362
  store ptr %11, ptr %3, align 8, !dbg !363
  %12 = load ptr, ptr %3, align 8, !dbg !364
  %13 = getelementptr inbounds %struct.nn_xreq, ptr %12, i32 0, i32 2, !dbg !365
  %14 = call i32 @nn_fq_can_recv(ptr noundef %13), !dbg !366
  %15 = icmp ne i32 %14, 0, !dbg !366
  %16 = zext i1 %15 to i64, !dbg !366
  %17 = select i1 %15, i32 1, i32 0, !dbg !366
  %18 = load ptr, ptr %3, align 8, !dbg !367
  %19 = getelementptr inbounds %struct.nn_xreq, ptr %18, i32 0, i32 1, !dbg !368
  %20 = call i32 @nn_lb_can_send(ptr noundef %19), !dbg !369
  %21 = icmp ne i32 %20, 0, !dbg !369
  %22 = zext i1 %21 to i64, !dbg !369
  %23 = select i1 %21, i32 2, i32 0, !dbg !369
  %24 = or i32 %17, %23, !dbg !370
  ret i32 %24, !dbg !371
}

declare i32 @nn_fq_can_recv(ptr noundef) #2

declare i32 @nn_lb_can_send(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xreq_send(ptr noundef %0, ptr noundef %1) #0 !dbg !372 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !373, metadata !DIExpression()), !dbg !374
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata ptr %6, metadata !377, metadata !DIExpression()), !dbg !378
  %7 = load ptr, ptr %4, align 8, !dbg !379
  %8 = icmp ne ptr %7, null, !dbg !379
  br i1 %8, label %9, label %12, !dbg !379

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !379
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !379
  br label %13, !dbg !379

12:                                               ; preds = %2
  br label %13, !dbg !379

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !379
  %15 = getelementptr inbounds %struct.nn_xreq, ptr %14, i32 0, i32 1, !dbg !380
  %16 = load ptr, ptr %5, align 8, !dbg !381
  %17 = call i32 @nn_lb_send(ptr noundef %15, ptr noundef %16), !dbg !382
  store i32 %17, ptr %6, align 4, !dbg !383
  %18 = load i32, ptr %6, align 4, !dbg !384
  %19 = icmp eq i32 %18, -11, !dbg !384
  %20 = zext i1 %19 to i32, !dbg !384
  %21 = sext i32 %20 to i64, !dbg !384
  %22 = icmp ne i64 %21, 0, !dbg !384
  br i1 %22, label %23, label %24, !dbg !386

23:                                               ; preds = %13
  store i32 -11, ptr %3, align 4, !dbg !387
  br label %42, !dbg !387

24:                                               ; preds = %13
  br label %25, !dbg !388

25:                                               ; preds = %24
  %26 = load i32, ptr %6, align 4, !dbg !389
  %27 = icmp sge i32 %26, 0, !dbg !389
  %28 = xor i1 %27, true, !dbg !389
  %29 = zext i1 %28 to i32, !dbg !389
  %30 = sext i32 %29 to i64, !dbg !389
  %31 = icmp ne i64 %30, 0, !dbg !389
  br i1 %31, label %32, label %40, !dbg !392

32:                                               ; preds = %25
  %33 = load ptr, ptr @stderr, align 8, !dbg !393
  %34 = load i32, ptr %6, align 4, !dbg !393
  %35 = sub nsw i32 0, %34, !dbg !393
  %36 = call ptr @nn_err_strerror(i32 noundef %35), !dbg !393
  %37 = load i32, ptr %6, align 4, !dbg !393
  %38 = sub nsw i32 0, %37, !dbg !393
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str, ptr noundef %36, i32 noundef %38, ptr noundef @.str.1, i32 noundef 154), !dbg !393
  call void @nn_err_abort() #5, !dbg !393
  unreachable, !dbg !393

40:                                               ; preds = %25
  br label %41, !dbg !392

41:                                               ; preds = %40
  store i32 0, ptr %3, align 4, !dbg !395
  br label %42, !dbg !395

42:                                               ; preds = %41, %23
  %43 = load i32, ptr %3, align 4, !dbg !396
  ret i32 %43, !dbg !396
}

declare i32 @nn_lb_send(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xreq_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !397 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !398, metadata !DIExpression()), !dbg !399
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !400, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.declare(metadata ptr %6, metadata !402, metadata !DIExpression()), !dbg !403
  %7 = load ptr, ptr %4, align 8, !dbg !404
  %8 = icmp ne ptr %7, null, !dbg !404
  br i1 %8, label %9, label %12, !dbg !404

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !404
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !404
  br label %13, !dbg !404

12:                                               ; preds = %2
  br label %13, !dbg !404

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !404
  %15 = getelementptr inbounds %struct.nn_xreq, ptr %14, i32 0, i32 2, !dbg !405
  %16 = load ptr, ptr %5, align 8, !dbg !406
  %17 = call i32 @nn_fq_recv(ptr noundef %15, ptr noundef %16, ptr noundef null), !dbg !407
  store i32 %17, ptr %6, align 4, !dbg !408
  %18 = load i32, ptr %6, align 4, !dbg !409
  %19 = icmp eq i32 %18, -11, !dbg !411
  br i1 %19, label %20, label %21, !dbg !412

20:                                               ; preds = %13
  store i32 -11, ptr %3, align 4, !dbg !413
  br label %80, !dbg !413

21:                                               ; preds = %13
  br label %22, !dbg !414

22:                                               ; preds = %21
  %23 = load i32, ptr %6, align 4, !dbg !415
  %24 = icmp sge i32 %23, 0, !dbg !415
  %25 = xor i1 %24, true, !dbg !415
  %26 = zext i1 %25 to i32, !dbg !415
  %27 = sext i32 %26 to i64, !dbg !415
  %28 = icmp ne i64 %27, 0, !dbg !415
  br i1 %28, label %29, label %37, !dbg !418

29:                                               ; preds = %22
  %30 = load ptr, ptr @stderr, align 8, !dbg !419
  %31 = load i32, ptr %6, align 4, !dbg !419
  %32 = sub nsw i32 0, %31, !dbg !419
  %33 = call ptr @nn_err_strerror(i32 noundef %32), !dbg !419
  %34 = load i32, ptr %6, align 4, !dbg !419
  %35 = sub nsw i32 0, %34, !dbg !419
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str, ptr noundef %33, i32 noundef %35, ptr noundef @.str.1, i32 noundef 166), !dbg !419
  call void @nn_err_abort() #5, !dbg !419
  unreachable, !dbg !419

37:                                               ; preds = %22
  br label %38, !dbg !418

38:                                               ; preds = %37
  %39 = load i32, ptr %6, align 4, !dbg !421
  %40 = and i32 %39, 2, !dbg !423
  %41 = icmp ne i32 %40, 0, !dbg !423
  br i1 %41, label %79, label %42, !dbg !424

42:                                               ; preds = %38
  %43 = load ptr, ptr %5, align 8, !dbg !425
  %44 = getelementptr inbounds %struct.nn_msg, ptr %43, i32 0, i32 1, !dbg !425
  %45 = call i64 @nn_chunkref_size(ptr noundef %44), !dbg !425
  %46 = icmp ult i64 %45, 4, !dbg !425
  %47 = zext i1 %46 to i32, !dbg !425
  %48 = sext i32 %47 to i64, !dbg !425
  %49 = icmp ne i64 %48, 0, !dbg !425
  br i1 %49, label %50, label %52, !dbg !428

50:                                               ; preds = %42
  %51 = load ptr, ptr %5, align 8, !dbg !429
  call void @nn_msg_term(ptr noundef %51), !dbg !431
  store i32 -11, ptr %3, align 4, !dbg !432
  br label %80, !dbg !432

52:                                               ; preds = %42
  br label %53, !dbg !433

53:                                               ; preds = %52
  %54 = load ptr, ptr %5, align 8, !dbg !434
  %55 = getelementptr inbounds %struct.nn_msg, ptr %54, i32 0, i32 0, !dbg !434
  %56 = call i64 @nn_chunkref_size(ptr noundef %55), !dbg !434
  %57 = icmp eq i64 %56, 0, !dbg !434
  %58 = xor i1 %57, true, !dbg !434
  %59 = zext i1 %58 to i32, !dbg !434
  %60 = sext i32 %59 to i64, !dbg !434
  %61 = icmp ne i64 %60, 0, !dbg !434
  br i1 %61, label %62, label %65, !dbg !437

62:                                               ; preds = %53
  %63 = load ptr, ptr @stderr, align 8, !dbg !438
  %64 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 177), !dbg !438
  call void @nn_err_abort() #5, !dbg !438
  unreachable, !dbg !438

65:                                               ; preds = %53
  br label %66, !dbg !437

66:                                               ; preds = %65
  %67 = load ptr, ptr %5, align 8, !dbg !440
  %68 = getelementptr inbounds %struct.nn_msg, ptr %67, i32 0, i32 0, !dbg !441
  call void @nn_chunkref_term(ptr noundef %68), !dbg !442
  %69 = load ptr, ptr %5, align 8, !dbg !443
  %70 = getelementptr inbounds %struct.nn_msg, ptr %69, i32 0, i32 0, !dbg !444
  call void @nn_chunkref_init(ptr noundef %70, i64 noundef 4), !dbg !445
  %71 = load ptr, ptr %5, align 8, !dbg !446
  %72 = getelementptr inbounds %struct.nn_msg, ptr %71, i32 0, i32 0, !dbg !447
  %73 = call ptr @nn_chunkref_data(ptr noundef %72), !dbg !448
  %74 = load ptr, ptr %5, align 8, !dbg !449
  %75 = getelementptr inbounds %struct.nn_msg, ptr %74, i32 0, i32 1, !dbg !450
  %76 = call ptr @nn_chunkref_data(ptr noundef %75), !dbg !451
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %73, ptr align 1 %76, i64 4, i1 false), !dbg !452
  %77 = load ptr, ptr %5, align 8, !dbg !453
  %78 = getelementptr inbounds %struct.nn_msg, ptr %77, i32 0, i32 1, !dbg !454
  call void @nn_chunkref_trim(ptr noundef %78, i64 noundef 4), !dbg !455
  br label %79, !dbg !456

79:                                               ; preds = %66, %38
  store i32 0, ptr %3, align 4, !dbg !457
  br label %80, !dbg !457

80:                                               ; preds = %79, %50, %20
  %81 = load i32, ptr %3, align 4, !dbg !458
  ret i32 %81, !dbg !458
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
define dso_local i32 @nn_xreq_setopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !459 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !460, metadata !DIExpression()), !dbg !461
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !462, metadata !DIExpression()), !dbg !463
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !464, metadata !DIExpression()), !dbg !465
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !466, metadata !DIExpression()), !dbg !467
  store i64 %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !468, metadata !DIExpression()), !dbg !469
  ret i32 -92, !dbg !470
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xreq_getopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !471 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !472, metadata !DIExpression()), !dbg !473
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !474, metadata !DIExpression()), !dbg !475
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !476, metadata !DIExpression()), !dbg !477
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !478, metadata !DIExpression()), !dbg !479
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !480, metadata !DIExpression()), !dbg !481
  ret i32 -92, !dbg !482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xreq_ispeer(i32 noundef %0) #0 !dbg !483 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !484, metadata !DIExpression()), !dbg !485
  %3 = load i32, ptr %2, align 4, !dbg !486
  %4 = icmp eq i32 %3, 49, !dbg !487
  %5 = zext i1 %4 to i64, !dbg !486
  %6 = select i1 %4, i32 1, i32 0, !dbg !486
  ret i32 %6, !dbg !488
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xreq_create(ptr noundef %0, ptr noundef %1) #0 !dbg !489 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !490, metadata !DIExpression()), !dbg !491
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata ptr %5, metadata !494, metadata !DIExpression()), !dbg !495
  %6 = call ptr @nn_alloc_(i64 noundef 800), !dbg !496
  store ptr %6, ptr %5, align 8, !dbg !497
  br label %7, !dbg !498

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !dbg !499
  %9 = icmp ne ptr %8, null, !dbg !499
  %10 = xor i1 %9, true, !dbg !499
  %11 = zext i1 %10 to i32, !dbg !499
  %12 = sext i32 %11 to i64, !dbg !499
  %13 = icmp ne i64 %12, 0, !dbg !499
  br i1 %13, label %14, label %17, !dbg !502

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !503
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 205), !dbg !503
  call void @nn_err_abort() #5, !dbg !503
  unreachable, !dbg !503

17:                                               ; preds = %7
  br label %18, !dbg !502

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !505
  %20 = load ptr, ptr %3, align 8, !dbg !506
  call void @nn_xreq_init(ptr noundef %19, ptr noundef @nn_xreq_sockbase_vfptr, ptr noundef %20), !dbg !507
  %21 = load ptr, ptr %5, align 8, !dbg !508
  %22 = getelementptr inbounds %struct.nn_xreq, ptr %21, i32 0, i32 0, !dbg !509
  %23 = load ptr, ptr %4, align 8, !dbg !510
  store ptr %22, ptr %23, align 8, !dbg !511
  ret i32 0, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xreq_destroy(ptr noundef %0) #0 !dbg !513 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata ptr %3, metadata !516, metadata !DIExpression()), !dbg !517
  %4 = load ptr, ptr %2, align 8, !dbg !518
  %5 = icmp ne ptr %4, null, !dbg !518
  br i1 %5, label %6, label %9, !dbg !518

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !518
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !518
  br label %10, !dbg !518

9:                                                ; preds = %1
  br label %10, !dbg !518

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !518
  store ptr %11, ptr %3, align 8, !dbg !519
  %12 = load ptr, ptr %3, align 8, !dbg !520
  call void @nn_xreq_term(ptr noundef %12), !dbg !521
  %13 = load ptr, ptr %3, align 8, !dbg !522
  call void @nn_free(ptr noundef %13), !dbg !523
  ret void, !dbg !524
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!28}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/protocols/reqrep/xreq.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b4942e3f56362d8f726fa40dc53b7ed9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 23)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !16, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 34)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "nn_xreq_socktype_struct", scope: !28, file: !2, line: 217, type: !151, isLocal: true, isDefinition: true)
!28 = distinct !DICompileUnit(language: DW_LANG_C11, file: !29, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !30, globals: !147, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "src/protocols/reqrep/xreq.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b4942e3f56362d8f726fa40dc53b7ed9")
!30 = !{!31, !146, !54}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xreq", file: !33, line: 31, size: 6400, elements: !34)
!33 = !DIFile(filename: "./src/protocols/reqrep/xreq.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "d37700c5acb0e83007a808d09ccb4f66")
!34 = !{!35, !108, !141}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !32, file: !33, line: 32, baseType: !36, size: 128)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !37, line: 123, size: 128, elements: !38)
!37 = !DIFile(filename: "./src/protocols/reqrep/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!38 = !{!39, !105}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !36, file: !37, line: 124, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase_vfptr", file: !37, line: 84, size: 704, elements: !43)
!43 = !{!44, !49, !50, !57, !61, !62, !63, !67, !89, !90, !99}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !42, file: !37, line: 87, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !42, file: !37, line: 90, baseType: !45, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !42, file: !37, line: 97, baseType: !51, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !48, !55}
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !37, line: 56, flags: DIFlagFwdDecl)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !42, file: !37, line: 98, baseType: !58, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !48, !55}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !42, file: !37, line: 99, baseType: !58, size: 64, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !42, file: !37, line: 100, baseType: !58, size: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !42, file: !37, line: 104, baseType: !64, size: 64, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!54, !48}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !42, file: !37, line: 108, baseType: !68, size: 64, offset: 448)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!54, !48, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !73, line: 30, size: 512, elements: !74)
!73 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!74 = !{!75, !88}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !72, file: !73, line: 33, baseType: !76, size: 256)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !77, line: 39, size: 256, elements: !78)
!77 = !DIFile(filename: "src/utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !76, file: !77, line: 40, baseType: !80, size: 256)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 256, elements: !86)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !82, line: 24, baseType: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !84, line: 38, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!85 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!86 = !{!87}
!87 = !DISubrange(count: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !72, file: !73, line: 36, baseType: !76, size: 256, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !42, file: !37, line: 112, baseType: !68, size: 64, offset: 512)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !42, file: !37, line: 115, baseType: !91, size: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!54, !48, !54, !54, !94, !96}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 46, baseType: !98)
!97 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!98 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !42, file: !37, line: 119, baseType: !100, size: 64, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!54, !48, !54, !54, !103, !104}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !36, file: !37, line: 125, baseType: !106, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !37, line: 125, flags: DIFlagFwdDecl)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "lb", scope: !32, file: !33, line: 33, baseType: !109, size: 3136, offset: 128)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_lb", file: !110, line: 36, size: 3136, elements: !111)
!110 = !DIFile(filename: "./src/protocols/reqrep/../utils/lb.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "6c310e327bfaa067523d8902ab9b4696")
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !109, file: !110, line: 37, baseType: !113, size: 3136)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist", file: !114, line: 45, size: 3136, elements: !115)
!114 = !DIFile(filename: "./src/protocols/reqrep/../utils/priolist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e7a7c69c9c81fe3b1beae760b1a28137")
!115 = !{!116, !140}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !113, file: !114, line: 46, baseType: !117, size: 3072)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 3072, elements: !138)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_slot", file: !114, line: 40, size: 192, elements: !119)
!119 = !{!120, !131}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !118, file: !114, line: 41, baseType: !121, size: 128)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !122, line: 31, size: 128, elements: !123)
!122 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!123 = !{!124, !130}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !121, file: !122, line: 32, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !122, line: 26, size: 128, elements: !127)
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !126, file: !122, line: 27, baseType: !125, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !126, file: !122, line: 28, baseType: !125, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !121, file: !122, line: 33, baseType: !125, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !118, file: !114, line: 42, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_data", file: !114, line: 34, size: 256, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !133, file: !114, line: 35, baseType: !55, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !133, file: !114, line: 36, baseType: !54, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !133, file: !114, line: 37, baseType: !126, size: 128, offset: 128)
!138 = !{!139}
!139 = !DISubrange(count: 16)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !113, file: !114, line: 47, baseType: !54, size: 32, offset: 3072)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !32, file: !33, line: 34, baseType: !142, size: 3136, offset: 3264)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fq", file: !143, line: 37, size: 3136, elements: !144)
!143 = !DIFile(filename: "./src/protocols/reqrep/../utils/fq.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "342bacd48eb65b84f809ed6b86c6514c")
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !142, file: !143, line: 38, baseType: !113, size: 3136)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!147 = !{!0, !7, !12, !14, !19, !21, !148, !26, !166}
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "nn_xreq_socktype", scope: !28, file: !2, line: 226, type: !150, isLocal: false, isDefinition: true)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !37, line: 160, size: 384, elements: !152)
!152 = !{!153, !154, !155, !156, !161, !165}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !151, file: !37, line: 163, baseType: !54, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !151, file: !37, line: 164, baseType: !54, size: 32, offset: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !151, file: !37, line: 167, baseType: !54, size: 32, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !151, file: !37, line: 173, baseType: !157, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!54, !103, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !151, file: !37, line: 179, baseType: !162, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!54, !54}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !151, file: !37, line: 183, baseType: !126, size: 128, offset: 256)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "nn_xreq_sockbase_vfptr", scope: !28, file: !2, line: 42, type: !41, isLocal: true, isDefinition: true)
!168 = !{i32 7, !"Dwarf Version", i32 5}
!169 = !{i32 2, !"Debug Info Version", i32 3}
!170 = !{i32 1, !"wchar_size", i32 4}
!171 = !{i32 8, !"PIC Level", i32 2}
!172 = !{i32 7, !"PIE Level", i32 2}
!173 = !{i32 7, !"uwtable", i32 2}
!174 = !{i32 7, !"frame-pointer", i32 2}
!175 = !{!"clang version 16.0.0"}
!176 = distinct !DISubprogram(name: "nn_xreq_init", scope: !2, file: !2, line: 56, type: !177, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !179)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !31, !40, !103}
!179 = !{}
!180 = !DILocalVariable(name: "self", arg: 1, scope: !176, file: !2, line: 56, type: !31)
!181 = !DILocation(line: 56, column: 36, scope: !176)
!182 = !DILocalVariable(name: "vfptr", arg: 2, scope: !176, file: !2, line: 56, type: !40)
!183 = !DILocation(line: 56, column: 74, scope: !176)
!184 = !DILocalVariable(name: "hint", arg: 3, scope: !176, file: !2, line: 57, type: !103)
!185 = !DILocation(line: 57, column: 11, scope: !176)
!186 = !DILocation(line: 59, column: 24, scope: !176)
!187 = !DILocation(line: 59, column: 30, scope: !176)
!188 = !DILocation(line: 59, column: 40, scope: !176)
!189 = !DILocation(line: 59, column: 47, scope: !176)
!190 = !DILocation(line: 59, column: 5, scope: !176)
!191 = !DILocation(line: 60, column: 18, scope: !176)
!192 = !DILocation(line: 60, column: 24, scope: !176)
!193 = !DILocation(line: 60, column: 5, scope: !176)
!194 = !DILocation(line: 61, column: 18, scope: !176)
!195 = !DILocation(line: 61, column: 24, scope: !176)
!196 = !DILocation(line: 61, column: 5, scope: !176)
!197 = !DILocation(line: 62, column: 1, scope: !176)
!198 = distinct !DISubprogram(name: "nn_xreq_term", scope: !2, file: !2, line: 64, type: !199, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !179)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !31}
!201 = !DILocalVariable(name: "self", arg: 1, scope: !198, file: !2, line: 64, type: !31)
!202 = !DILocation(line: 64, column: 36, scope: !198)
!203 = !DILocation(line: 66, column: 18, scope: !198)
!204 = !DILocation(line: 66, column: 24, scope: !198)
!205 = !DILocation(line: 66, column: 5, scope: !198)
!206 = !DILocation(line: 67, column: 18, scope: !198)
!207 = !DILocation(line: 67, column: 24, scope: !198)
!208 = !DILocation(line: 67, column: 5, scope: !198)
!209 = !DILocation(line: 68, column: 24, scope: !198)
!210 = !DILocation(line: 68, column: 30, scope: !198)
!211 = !DILocation(line: 68, column: 5, scope: !198)
!212 = !DILocation(line: 69, column: 1, scope: !198)
!213 = distinct !DISubprogram(name: "nn_xreq_add", scope: !2, file: !2, line: 81, type: !52, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !179)
!214 = !DILocalVariable(name: "self", arg: 1, scope: !213, file: !2, line: 81, type: !48)
!215 = !DILocation(line: 81, column: 38, scope: !213)
!216 = !DILocalVariable(name: "pipe", arg: 2, scope: !213, file: !2, line: 81, type: !55)
!217 = !DILocation(line: 81, column: 60, scope: !213)
!218 = !DILocalVariable(name: "rc", scope: !213, file: !2, line: 83, type: !54)
!219 = !DILocation(line: 83, column: 9, scope: !213)
!220 = !DILocalVariable(name: "xreq", scope: !213, file: !2, line: 84, type: !31)
!221 = !DILocation(line: 84, column: 21, scope: !213)
!222 = !DILocalVariable(name: "data", scope: !213, file: !2, line: 85, type: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xreq_data", file: !2, line: 34, size: 512, elements: !225)
!225 = !{!226, !230}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "lb", scope: !224, file: !2, line: 35, baseType: !227, size: 256)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_lb_data", file: !110, line: 32, size: 256, elements: !228)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !227, file: !110, line: 33, baseType: !133, size: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !224, file: !2, line: 36, baseType: !231, size: 256, offset: 256)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fq_data", file: !143, line: 33, size: 256, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !231, file: !143, line: 34, baseType: !133, size: 256)
!234 = !DILocation(line: 85, column: 26, scope: !213)
!235 = !DILocalVariable(name: "sndprio", scope: !213, file: !2, line: 86, type: !54)
!236 = !DILocation(line: 86, column: 9, scope: !213)
!237 = !DILocalVariable(name: "sz", scope: !213, file: !2, line: 87, type: !96)
!238 = !DILocation(line: 87, column: 12, scope: !213)
!239 = !DILocation(line: 89, column: 12, scope: !213)
!240 = !DILocation(line: 89, column: 10, scope: !213)
!241 = !DILocation(line: 91, column: 8, scope: !213)
!242 = !DILocation(line: 92, column: 31, scope: !213)
!243 = !DILocation(line: 92, column: 37, scope: !213)
!244 = !DILocation(line: 92, column: 10, scope: !213)
!245 = !DILocation(line: 92, column: 8, scope: !213)
!246 = !DILocation(line: 93, column: 5, scope: !213)
!247 = !DILocation(line: 93, column: 5, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !2, line: 93, column: 5)
!249 = distinct !DILexicalBlock(scope: !213, file: !2, line: 93, column: 5)
!250 = !DILocation(line: 93, column: 5, scope: !249)
!251 = !DILocation(line: 93, column: 5, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !2, line: 93, column: 5)
!253 = !DILocation(line: 94, column: 5, scope: !213)
!254 = !DILocation(line: 94, column: 5, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !2, line: 94, column: 5)
!256 = distinct !DILexicalBlock(scope: !213, file: !2, line: 94, column: 5)
!257 = !DILocation(line: 94, column: 5, scope: !256)
!258 = !DILocation(line: 94, column: 5, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !2, line: 94, column: 5)
!260 = !DILocation(line: 96, column: 12, scope: !213)
!261 = !DILocation(line: 96, column: 10, scope: !213)
!262 = !DILocation(line: 97, column: 5, scope: !213)
!263 = !DILocation(line: 97, column: 5, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !2, line: 97, column: 5)
!265 = distinct !DILexicalBlock(scope: !213, file: !2, line: 97, column: 5)
!266 = !DILocation(line: 97, column: 5, scope: !265)
!267 = !DILocation(line: 97, column: 5, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !2, line: 97, column: 5)
!269 = !DILocation(line: 98, column: 22, scope: !213)
!270 = !DILocation(line: 98, column: 28, scope: !213)
!271 = !DILocation(line: 98, column: 5, scope: !213)
!272 = !DILocation(line: 99, column: 17, scope: !213)
!273 = !DILocation(line: 99, column: 23, scope: !213)
!274 = !DILocation(line: 99, column: 27, scope: !213)
!275 = !DILocation(line: 99, column: 34, scope: !213)
!276 = !DILocation(line: 99, column: 40, scope: !213)
!277 = !DILocation(line: 99, column: 44, scope: !213)
!278 = !DILocation(line: 99, column: 5, scope: !213)
!279 = !DILocation(line: 100, column: 17, scope: !213)
!280 = !DILocation(line: 100, column: 23, scope: !213)
!281 = !DILocation(line: 100, column: 27, scope: !213)
!282 = !DILocation(line: 100, column: 34, scope: !213)
!283 = !DILocation(line: 100, column: 40, scope: !213)
!284 = !DILocation(line: 100, column: 5, scope: !213)
!285 = !DILocation(line: 101, column: 5, scope: !213)
!286 = distinct !DISubprogram(name: "nn_xreq_rm", scope: !2, file: !2, line: 104, type: !59, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !179)
!287 = !DILocalVariable(name: "self", arg: 1, scope: !286, file: !2, line: 104, type: !48)
!288 = !DILocation(line: 104, column: 38, scope: !286)
!289 = !DILocalVariable(name: "pipe", arg: 2, scope: !286, file: !2, line: 104, type: !55)
!290 = !DILocation(line: 104, column: 60, scope: !286)
!291 = !DILocalVariable(name: "xreq", scope: !286, file: !2, line: 106, type: !31)
!292 = !DILocation(line: 106, column: 21, scope: !286)
!293 = !DILocalVariable(name: "data", scope: !286, file: !2, line: 107, type: !223)
!294 = !DILocation(line: 107, column: 26, scope: !286)
!295 = !DILocation(line: 109, column: 12, scope: !286)
!296 = !DILocation(line: 109, column: 10, scope: !286)
!297 = !DILocation(line: 110, column: 29, scope: !286)
!298 = !DILocation(line: 110, column: 12, scope: !286)
!299 = !DILocation(line: 110, column: 10, scope: !286)
!300 = !DILocation(line: 111, column: 16, scope: !286)
!301 = !DILocation(line: 111, column: 22, scope: !286)
!302 = !DILocation(line: 111, column: 26, scope: !286)
!303 = !DILocation(line: 111, column: 33, scope: !286)
!304 = !DILocation(line: 111, column: 39, scope: !286)
!305 = !DILocation(line: 111, column: 5, scope: !286)
!306 = !DILocation(line: 112, column: 16, scope: !286)
!307 = !DILocation(line: 112, column: 22, scope: !286)
!308 = !DILocation(line: 112, column: 26, scope: !286)
!309 = !DILocation(line: 112, column: 33, scope: !286)
!310 = !DILocation(line: 112, column: 39, scope: !286)
!311 = !DILocation(line: 112, column: 5, scope: !286)
!312 = !DILocation(line: 113, column: 14, scope: !286)
!313 = !DILocation(line: 113, column: 5, scope: !286)
!314 = !DILocation(line: 114, column: 1, scope: !286)
!315 = distinct !DISubprogram(name: "nn_xreq_in", scope: !2, file: !2, line: 116, type: !59, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !179)
!316 = !DILocalVariable(name: "self", arg: 1, scope: !315, file: !2, line: 116, type: !48)
!317 = !DILocation(line: 116, column: 38, scope: !315)
!318 = !DILocalVariable(name: "pipe", arg: 2, scope: !315, file: !2, line: 116, type: !55)
!319 = !DILocation(line: 116, column: 60, scope: !315)
!320 = !DILocalVariable(name: "xreq", scope: !315, file: !2, line: 118, type: !31)
!321 = !DILocation(line: 118, column: 21, scope: !315)
!322 = !DILocalVariable(name: "data", scope: !315, file: !2, line: 119, type: !223)
!323 = !DILocation(line: 119, column: 26, scope: !315)
!324 = !DILocation(line: 121, column: 12, scope: !315)
!325 = !DILocation(line: 121, column: 10, scope: !315)
!326 = !DILocation(line: 122, column: 29, scope: !315)
!327 = !DILocation(line: 122, column: 12, scope: !315)
!328 = !DILocation(line: 122, column: 10, scope: !315)
!329 = !DILocation(line: 123, column: 16, scope: !315)
!330 = !DILocation(line: 123, column: 22, scope: !315)
!331 = !DILocation(line: 123, column: 26, scope: !315)
!332 = !DILocation(line: 123, column: 33, scope: !315)
!333 = !DILocation(line: 123, column: 39, scope: !315)
!334 = !DILocation(line: 123, column: 5, scope: !315)
!335 = !DILocation(line: 124, column: 1, scope: !315)
!336 = distinct !DISubprogram(name: "nn_xreq_out", scope: !2, file: !2, line: 126, type: !59, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !179)
!337 = !DILocalVariable(name: "self", arg: 1, scope: !336, file: !2, line: 126, type: !48)
!338 = !DILocation(line: 126, column: 39, scope: !336)
!339 = !DILocalVariable(name: "pipe", arg: 2, scope: !336, file: !2, line: 126, type: !55)
!340 = !DILocation(line: 126, column: 61, scope: !336)
!341 = !DILocalVariable(name: "xreq", scope: !336, file: !2, line: 128, type: !31)
!342 = !DILocation(line: 128, column: 21, scope: !336)
!343 = !DILocalVariable(name: "data", scope: !336, file: !2, line: 129, type: !223)
!344 = !DILocation(line: 129, column: 26, scope: !336)
!345 = !DILocation(line: 131, column: 12, scope: !336)
!346 = !DILocation(line: 131, column: 10, scope: !336)
!347 = !DILocation(line: 132, column: 29, scope: !336)
!348 = !DILocation(line: 132, column: 12, scope: !336)
!349 = !DILocation(line: 132, column: 10, scope: !336)
!350 = !DILocation(line: 133, column: 17, scope: !336)
!351 = !DILocation(line: 133, column: 23, scope: !336)
!352 = !DILocation(line: 133, column: 27, scope: !336)
!353 = !DILocation(line: 133, column: 34, scope: !336)
!354 = !DILocation(line: 133, column: 40, scope: !336)
!355 = !DILocation(line: 133, column: 5, scope: !336)
!356 = !DILocation(line: 134, column: 1, scope: !336)
!357 = distinct !DISubprogram(name: "nn_xreq_events", scope: !2, file: !2, line: 136, type: !65, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !179)
!358 = !DILocalVariable(name: "self", arg: 1, scope: !357, file: !2, line: 136, type: !48)
!359 = !DILocation(line: 136, column: 41, scope: !357)
!360 = !DILocalVariable(name: "xreq", scope: !357, file: !2, line: 138, type: !31)
!361 = !DILocation(line: 138, column: 21, scope: !357)
!362 = !DILocation(line: 140, column: 12, scope: !357)
!363 = !DILocation(line: 140, column: 10, scope: !357)
!364 = !DILocation(line: 142, column: 30, scope: !357)
!365 = !DILocation(line: 142, column: 36, scope: !357)
!366 = !DILocation(line: 142, column: 13, scope: !357)
!367 = !DILocation(line: 143, column: 27, scope: !357)
!368 = !DILocation(line: 143, column: 33, scope: !357)
!369 = !DILocation(line: 143, column: 10, scope: !357)
!370 = !DILocation(line: 142, column: 68, scope: !357)
!371 = !DILocation(line: 142, column: 5, scope: !357)
!372 = distinct !DISubprogram(name: "nn_xreq_send", scope: !2, file: !2, line: 146, type: !69, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !179)
!373 = !DILocalVariable(name: "self", arg: 1, scope: !372, file: !2, line: 146, type: !48)
!374 = !DILocation(line: 146, column: 39, scope: !372)
!375 = !DILocalVariable(name: "msg", arg: 2, scope: !372, file: !2, line: 146, type: !71)
!376 = !DILocation(line: 146, column: 60, scope: !372)
!377 = !DILocalVariable(name: "rc", scope: !372, file: !2, line: 148, type: !54)
!378 = !DILocation(line: 148, column: 9, scope: !372)
!379 = !DILocation(line: 151, column: 23, scope: !372)
!380 = !DILocation(line: 151, column: 65, scope: !372)
!381 = !DILocation(line: 151, column: 69, scope: !372)
!382 = !DILocation(line: 151, column: 10, scope: !372)
!383 = !DILocation(line: 151, column: 8, scope: !372)
!384 = !DILocation(line: 152, column: 9, scope: !385)
!385 = distinct !DILexicalBlock(scope: !372, file: !2, line: 152, column: 9)
!386 = !DILocation(line: 152, column: 9, scope: !372)
!387 = !DILocation(line: 153, column: 9, scope: !385)
!388 = !DILocation(line: 154, column: 5, scope: !372)
!389 = !DILocation(line: 154, column: 5, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !2, line: 154, column: 5)
!391 = distinct !DILexicalBlock(scope: !372, file: !2, line: 154, column: 5)
!392 = !DILocation(line: 154, column: 5, scope: !391)
!393 = !DILocation(line: 154, column: 5, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !2, line: 154, column: 5)
!395 = !DILocation(line: 156, column: 5, scope: !372)
!396 = !DILocation(line: 157, column: 1, scope: !372)
!397 = distinct !DISubprogram(name: "nn_xreq_recv", scope: !2, file: !2, line: 159, type: !69, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !179)
!398 = !DILocalVariable(name: "self", arg: 1, scope: !397, file: !2, line: 159, type: !48)
!399 = !DILocation(line: 159, column: 39, scope: !397)
!400 = !DILocalVariable(name: "msg", arg: 2, scope: !397, file: !2, line: 159, type: !71)
!401 = !DILocation(line: 159, column: 60, scope: !397)
!402 = !DILocalVariable(name: "rc", scope: !397, file: !2, line: 161, type: !54)
!403 = !DILocation(line: 161, column: 9, scope: !397)
!404 = !DILocation(line: 163, column: 23, scope: !397)
!405 = !DILocation(line: 163, column: 65, scope: !397)
!406 = !DILocation(line: 163, column: 69, scope: !397)
!407 = !DILocation(line: 163, column: 10, scope: !397)
!408 = !DILocation(line: 163, column: 8, scope: !397)
!409 = !DILocation(line: 164, column: 9, scope: !410)
!410 = distinct !DILexicalBlock(scope: !397, file: !2, line: 164, column: 9)
!411 = !DILocation(line: 164, column: 12, scope: !410)
!412 = !DILocation(line: 164, column: 9, scope: !397)
!413 = !DILocation(line: 165, column: 9, scope: !410)
!414 = !DILocation(line: 166, column: 5, scope: !397)
!415 = !DILocation(line: 166, column: 5, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !2, line: 166, column: 5)
!417 = distinct !DILexicalBlock(scope: !397, file: !2, line: 166, column: 5)
!418 = !DILocation(line: 166, column: 5, scope: !417)
!419 = !DILocation(line: 166, column: 5, scope: !420)
!420 = distinct !DILexicalBlock(scope: !416, file: !2, line: 166, column: 5)
!421 = !DILocation(line: 168, column: 11, scope: !422)
!422 = distinct !DILexicalBlock(scope: !397, file: !2, line: 168, column: 9)
!423 = !DILocation(line: 168, column: 14, scope: !422)
!424 = !DILocation(line: 168, column: 9, scope: !397)
!425 = !DILocation(line: 171, column: 13, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !2, line: 171, column: 13)
!427 = distinct !DILexicalBlock(scope: !422, file: !2, line: 168, column: 33)
!428 = !DILocation(line: 171, column: 13, scope: !427)
!429 = !DILocation(line: 172, column: 26, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !2, line: 171, column: 74)
!431 = !DILocation(line: 172, column: 13, scope: !430)
!432 = !DILocation(line: 173, column: 13, scope: !430)
!433 = !DILocation(line: 177, column: 9, scope: !427)
!434 = !DILocation(line: 177, column: 9, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !2, line: 177, column: 9)
!436 = distinct !DILexicalBlock(scope: !427, file: !2, line: 177, column: 9)
!437 = !DILocation(line: 177, column: 9, scope: !436)
!438 = !DILocation(line: 177, column: 9, scope: !439)
!439 = distinct !DILexicalBlock(scope: !435, file: !2, line: 177, column: 9)
!440 = !DILocation(line: 178, column: 28, scope: !427)
!441 = !DILocation(line: 178, column: 33, scope: !427)
!442 = !DILocation(line: 178, column: 9, scope: !427)
!443 = !DILocation(line: 179, column: 28, scope: !427)
!444 = !DILocation(line: 179, column: 33, scope: !427)
!445 = !DILocation(line: 179, column: 9, scope: !427)
!446 = !DILocation(line: 180, column: 36, scope: !427)
!447 = !DILocation(line: 180, column: 41, scope: !427)
!448 = !DILocation(line: 180, column: 17, scope: !427)
!449 = !DILocation(line: 180, column: 66, scope: !427)
!450 = !DILocation(line: 180, column: 71, scope: !427)
!451 = !DILocation(line: 180, column: 47, scope: !427)
!452 = !DILocation(line: 180, column: 9, scope: !427)
!453 = !DILocation(line: 182, column: 28, scope: !427)
!454 = !DILocation(line: 182, column: 33, scope: !427)
!455 = !DILocation(line: 182, column: 9, scope: !427)
!456 = !DILocation(line: 183, column: 5, scope: !427)
!457 = !DILocation(line: 185, column: 5, scope: !397)
!458 = !DILocation(line: 186, column: 1, scope: !397)
!459 = distinct !DISubprogram(name: "nn_xreq_setopt", scope: !2, file: !2, line: 188, type: !92, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !179)
!460 = !DILocalVariable(name: "self", arg: 1, scope: !459, file: !2, line: 188, type: !48)
!461 = !DILocation(line: 188, column: 41, scope: !459)
!462 = !DILocalVariable(name: "level", arg: 2, scope: !459, file: !2, line: 188, type: !54)
!463 = !DILocation(line: 188, column: 51, scope: !459)
!464 = !DILocalVariable(name: "option", arg: 3, scope: !459, file: !2, line: 188, type: !54)
!465 = !DILocation(line: 188, column: 62, scope: !459)
!466 = !DILocalVariable(name: "optval", arg: 4, scope: !459, file: !2, line: 189, type: !94)
!467 = !DILocation(line: 189, column: 17, scope: !459)
!468 = !DILocalVariable(name: "optvallen", arg: 5, scope: !459, file: !2, line: 189, type: !96)
!469 = !DILocation(line: 189, column: 32, scope: !459)
!470 = !DILocation(line: 191, column: 5, scope: !459)
!471 = distinct !DISubprogram(name: "nn_xreq_getopt", scope: !2, file: !2, line: 194, type: !101, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !179)
!472 = !DILocalVariable(name: "self", arg: 1, scope: !471, file: !2, line: 194, type: !48)
!473 = !DILocation(line: 194, column: 41, scope: !471)
!474 = !DILocalVariable(name: "level", arg: 2, scope: !471, file: !2, line: 194, type: !54)
!475 = !DILocation(line: 194, column: 51, scope: !471)
!476 = !DILocalVariable(name: "option", arg: 3, scope: !471, file: !2, line: 194, type: !54)
!477 = !DILocation(line: 194, column: 62, scope: !471)
!478 = !DILocalVariable(name: "optval", arg: 4, scope: !471, file: !2, line: 195, type: !103)
!479 = !DILocation(line: 195, column: 11, scope: !471)
!480 = !DILocalVariable(name: "optvallen", arg: 5, scope: !471, file: !2, line: 195, type: !104)
!481 = !DILocation(line: 195, column: 27, scope: !471)
!482 = !DILocation(line: 197, column: 5, scope: !471)
!483 = distinct !DISubprogram(name: "nn_xreq_ispeer", scope: !2, file: !2, line: 212, type: !163, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !179)
!484 = !DILocalVariable(name: "socktype", arg: 1, scope: !483, file: !2, line: 212, type: !54)
!485 = !DILocation(line: 212, column: 25, scope: !483)
!486 = !DILocation(line: 214, column: 12, scope: !483)
!487 = !DILocation(line: 214, column: 21, scope: !483)
!488 = !DILocation(line: 214, column: 5, scope: !483)
!489 = distinct !DISubprogram(name: "nn_xreq_create", scope: !2, file: !2, line: 200, type: !158, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !179)
!490 = !DILocalVariable(name: "hint", arg: 1, scope: !489, file: !2, line: 200, type: !103)
!491 = !DILocation(line: 200, column: 34, scope: !489)
!492 = !DILocalVariable(name: "sockbase", arg: 2, scope: !489, file: !2, line: 200, type: !160)
!493 = !DILocation(line: 200, column: 61, scope: !489)
!494 = !DILocalVariable(name: "self", scope: !489, file: !2, line: 202, type: !31)
!495 = !DILocation(line: 202, column: 21, scope: !489)
!496 = !DILocation(line: 204, column: 12, scope: !489)
!497 = !DILocation(line: 204, column: 10, scope: !489)
!498 = !DILocation(line: 205, column: 5, scope: !489)
!499 = !DILocation(line: 205, column: 5, scope: !500)
!500 = distinct !DILexicalBlock(scope: !501, file: !2, line: 205, column: 5)
!501 = distinct !DILexicalBlock(scope: !489, file: !2, line: 205, column: 5)
!502 = !DILocation(line: 205, column: 5, scope: !501)
!503 = !DILocation(line: 205, column: 5, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !2, line: 205, column: 5)
!505 = !DILocation(line: 206, column: 19, scope: !489)
!506 = !DILocation(line: 206, column: 50, scope: !489)
!507 = !DILocation(line: 206, column: 5, scope: !489)
!508 = !DILocation(line: 207, column: 18, scope: !489)
!509 = !DILocation(line: 207, column: 24, scope: !489)
!510 = !DILocation(line: 207, column: 6, scope: !489)
!511 = !DILocation(line: 207, column: 15, scope: !489)
!512 = !DILocation(line: 209, column: 5, scope: !489)
!513 = distinct !DISubprogram(name: "nn_xreq_destroy", scope: !2, file: !2, line: 71, type: !46, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !179)
!514 = !DILocalVariable(name: "self", arg: 1, scope: !513, file: !2, line: 71, type: !48)
!515 = !DILocation(line: 71, column: 50, scope: !513)
!516 = !DILocalVariable(name: "xreq", scope: !513, file: !2, line: 73, type: !31)
!517 = !DILocation(line: 73, column: 21, scope: !513)
!518 = !DILocation(line: 75, column: 12, scope: !513)
!519 = !DILocation(line: 75, column: 10, scope: !513)
!520 = !DILocation(line: 77, column: 19, scope: !513)
!521 = !DILocation(line: 77, column: 5, scope: !513)
!522 = !DILocation(line: 78, column: 14, scope: !513)
!523 = !DILocation(line: 78, column: 5, scope: !513)
!524 = !DILocation(line: 79, column: 1, scope: !513)
