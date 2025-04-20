; ModuleID = './src/protocols/pipeline/xpush.c'
source_filename = "./src/protocols/pipeline/xpush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sockbase_vfptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_xpush = type { %struct.nn_sockbase, %struct.nn_lb }
%struct.nn_sockbase = type { ptr, ptr }
%struct.nn_lb = type { %struct.nn_priolist }
%struct.nn_priolist = type { [16 x %struct.nn_priolist_slot], i32 }
%struct.nn_priolist_slot = type { %struct.nn_list, ptr }
%struct.nn_list = type { ptr, ptr }
%struct.nn_xpush_data = type { %struct.nn_lb_data }
%struct.nn_lb_data = type { %struct.nn_priolist_data }
%struct.nn_priolist_data = type { ptr, i32, %struct.nn_list_item }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [33 x i8] c"./src/protocols/pipeline/xpush.c\00", align 1, !dbg !7
@nn_xpush_sockbase_vfptr = internal constant %struct.nn_sockbase_vfptr { ptr null, ptr @nn_xpush_destroy, ptr @nn_xpush_add, ptr @nn_xpush_rm, ptr @nn_xpush_in, ptr @nn_xpush_out, ptr @nn_xpush_events, ptr @nn_xpush_send, ptr null, ptr @nn_xpush_setopt, ptr @nn_xpush_getopt }, align 8, !dbg !12
@nn_xpush_socktype_struct = internal global %struct.nn_socktype { i32 2, i32 80, i32 1, ptr @nn_xpush_create, ptr @nn_xpush_ispeer, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !158
@nn_xpush_socktype = dso_local global ptr @nn_xpush_socktype_struct, align 8, !dbg !128
@.str.2 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !146
@.str.3 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !151
@.str.4 = private unnamed_addr constant [23 x i8] c"sz == sizeof (sndprio)\00", align 1, !dbg !156

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xpush_create(ptr noundef %0, ptr noundef %1) #0 !dbg !168 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !170, metadata !DIExpression()), !dbg !171
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata ptr %5, metadata !174, metadata !DIExpression()), !dbg !175
  %6 = call ptr @nn_alloc_(i64 noundef 408), !dbg !176
  store ptr %6, ptr %5, align 8, !dbg !177
  br label %7, !dbg !178

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !dbg !179
  %9 = icmp ne ptr %8, null, !dbg !179
  %10 = xor i1 %9, true, !dbg !179
  %11 = zext i1 %10 to i32, !dbg !179
  %12 = sext i32 %11 to i64, !dbg !179
  %13 = icmp ne i64 %12, 0, !dbg !179
  br i1 %13, label %14, label %17, !dbg !182

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !183
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 177), !dbg !183
  call void @nn_err_abort() #4, !dbg !183
  unreachable, !dbg !183

17:                                               ; preds = %7
  br label %18, !dbg !182

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !185
  %20 = load ptr, ptr %3, align 8, !dbg !186
  call void @nn_xpush_init(ptr noundef %19, ptr noundef @nn_xpush_sockbase_vfptr, ptr noundef %20), !dbg !187
  %21 = load ptr, ptr %5, align 8, !dbg !188
  %22 = getelementptr inbounds %struct.nn_xpush, ptr %21, i32 0, i32 0, !dbg !189
  %23 = load ptr, ptr %4, align 8, !dbg !190
  store ptr %22, ptr %23, align 8, !dbg !191
  ret i32 0, !dbg !192
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpush_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !193 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !196, metadata !DIExpression()), !dbg !197
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !198, metadata !DIExpression()), !dbg !199
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !200, metadata !DIExpression()), !dbg !201
  %7 = load ptr, ptr %4, align 8, !dbg !202
  %8 = getelementptr inbounds %struct.nn_xpush, ptr %7, i32 0, i32 0, !dbg !203
  %9 = load ptr, ptr %5, align 8, !dbg !204
  %10 = load ptr, ptr %6, align 8, !dbg !205
  call void @nn_sockbase_init(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !206
  %11 = load ptr, ptr %4, align 8, !dbg !207
  %12 = getelementptr inbounds %struct.nn_xpush, ptr %11, i32 0, i32 1, !dbg !208
  call void @nn_lb_init(ptr noundef %12), !dbg !209
  ret void, !dbg !210
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xpush_ispeer(i32 noundef %0) #0 !dbg !211 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !212, metadata !DIExpression()), !dbg !213
  %3 = load i32, ptr %2, align 4, !dbg !214
  %4 = icmp eq i32 %3, 81, !dbg !215
  %5 = zext i1 %4 to i64, !dbg !214
  %6 = select i1 %4, i32 1, i32 0, !dbg !214
  ret i32 %6, !dbg !216
}

declare void @nn_sockbase_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_lb_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpush_destroy(ptr noundef %0) #0 !dbg !217 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata ptr %3, metadata !220, metadata !DIExpression()), !dbg !221
  %4 = load ptr, ptr %2, align 8, !dbg !222
  %5 = icmp ne ptr %4, null, !dbg !222
  br i1 %5, label %6, label %9, !dbg !222

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !222
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !222
  br label %10, !dbg !222

9:                                                ; preds = %1
  br label %10, !dbg !222

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !222
  store ptr %11, ptr %3, align 8, !dbg !223
  %12 = load ptr, ptr %3, align 8, !dbg !224
  call void @nn_xpush_term(ptr noundef %12), !dbg !225
  %13 = load ptr, ptr %3, align 8, !dbg !226
  call void @nn_free(ptr noundef %13), !dbg !227
  ret void, !dbg !228
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xpush_add(ptr noundef %0, ptr noundef %1) #0 !dbg !229 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !230, metadata !DIExpression()), !dbg !231
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata ptr %5, metadata !234, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata ptr %6, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata ptr %7, metadata !238, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata ptr %8, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata ptr %9, metadata !249, metadata !DIExpression()), !dbg !250
  %10 = load ptr, ptr %3, align 8, !dbg !251
  %11 = icmp ne ptr %10, null, !dbg !251
  br i1 %11, label %12, label %15, !dbg !251

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !dbg !251
  %14 = getelementptr inbounds i8, ptr %13, i64 0, !dbg !251
  br label %16, !dbg !251

15:                                               ; preds = %2
  br label %16, !dbg !251

16:                                               ; preds = %15, %12
  %17 = phi ptr [ %14, %12 ], [ null, %15 ], !dbg !251
  store ptr %17, ptr %6, align 8, !dbg !252
  store i64 4, ptr %9, align 8, !dbg !253
  %18 = load ptr, ptr %6, align 8, !dbg !254
  %19 = getelementptr inbounds %struct.nn_xpush, ptr %18, i32 0, i32 0, !dbg !255
  %20 = call i32 @nn_sockbase_getopt(ptr noundef %19, i32 noundef 8, ptr noundef %8, ptr noundef %9), !dbg !256
  store i32 %20, ptr %5, align 4, !dbg !257
  br label %21, !dbg !258

21:                                               ; preds = %16
  %22 = load i32, ptr %5, align 4, !dbg !259
  %23 = icmp eq i32 %22, 0, !dbg !259
  %24 = xor i1 %23, true, !dbg !259
  %25 = zext i1 %24 to i32, !dbg !259
  %26 = sext i32 %25 to i64, !dbg !259
  %27 = icmp ne i64 %26, 0, !dbg !259
  br i1 %27, label %28, label %36, !dbg !262

28:                                               ; preds = %21
  %29 = load ptr, ptr @stderr, align 8, !dbg !263
  %30 = load i32, ptr %5, align 4, !dbg !263
  %31 = sub nsw i32 0, %30, !dbg !263
  %32 = call ptr @nn_err_strerror(i32 noundef %31), !dbg !263
  %33 = load i32, ptr %5, align 4, !dbg !263
  %34 = sub nsw i32 0, %33, !dbg !263
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.2, ptr noundef %32, i32 noundef %34, ptr noundef @.str.1, i32 noundef 111), !dbg !263
  call void @nn_err_abort() #4, !dbg !263
  unreachable, !dbg !263

36:                                               ; preds = %21
  br label %37, !dbg !262

37:                                               ; preds = %36
  br label %38, !dbg !265

38:                                               ; preds = %37
  %39 = load i64, ptr %9, align 8, !dbg !266
  %40 = icmp eq i64 %39, 4, !dbg !266
  %41 = xor i1 %40, true, !dbg !266
  %42 = zext i1 %41 to i32, !dbg !266
  %43 = sext i32 %42 to i64, !dbg !266
  %44 = icmp ne i64 %43, 0, !dbg !266
  br i1 %44, label %45, label %48, !dbg !269

45:                                               ; preds = %38
  %46 = load ptr, ptr @stderr, align 8, !dbg !270
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 112), !dbg !270
  call void @nn_err_abort() #4, !dbg !270
  unreachable, !dbg !270

48:                                               ; preds = %38
  br label %49, !dbg !269

49:                                               ; preds = %48
  %50 = call ptr @nn_alloc_(i64 noundef 32), !dbg !272
  store ptr %50, ptr %7, align 8, !dbg !273
  br label %51, !dbg !274

51:                                               ; preds = %49
  %52 = load ptr, ptr %7, align 8, !dbg !275
  %53 = icmp ne ptr %52, null, !dbg !275
  %54 = xor i1 %53, true, !dbg !275
  %55 = zext i1 %54 to i32, !dbg !275
  %56 = sext i32 %55 to i64, !dbg !275
  %57 = icmp ne i64 %56, 0, !dbg !275
  br i1 %57, label %58, label %61, !dbg !278

58:                                               ; preds = %51
  %59 = load ptr, ptr @stderr, align 8, !dbg !279
  %60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 115), !dbg !279
  call void @nn_err_abort() #4, !dbg !279
  unreachable, !dbg !279

61:                                               ; preds = %51
  br label %62, !dbg !278

62:                                               ; preds = %61
  %63 = load ptr, ptr %4, align 8, !dbg !281
  %64 = load ptr, ptr %7, align 8, !dbg !282
  call void @nn_pipe_setdata(ptr noundef %63, ptr noundef %64), !dbg !283
  %65 = load ptr, ptr %6, align 8, !dbg !284
  %66 = getelementptr inbounds %struct.nn_xpush, ptr %65, i32 0, i32 1, !dbg !285
  %67 = load ptr, ptr %4, align 8, !dbg !286
  %68 = load ptr, ptr %7, align 8, !dbg !287
  %69 = getelementptr inbounds %struct.nn_xpush_data, ptr %68, i32 0, i32 0, !dbg !288
  %70 = load i32, ptr %8, align 4, !dbg !289
  call void @nn_lb_add(ptr noundef %66, ptr noundef %67, ptr noundef %69, i32 noundef %70), !dbg !290
  ret i32 0, !dbg !291
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpush_rm(ptr noundef %0, ptr noundef %1) #0 !dbg !292 {
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
  %18 = getelementptr inbounds %struct.nn_xpush, ptr %17, i32 0, i32 1, !dbg !307
  %19 = load ptr, ptr %4, align 8, !dbg !308
  %20 = load ptr, ptr %6, align 8, !dbg !309
  %21 = getelementptr inbounds %struct.nn_xpush_data, ptr %20, i32 0, i32 0, !dbg !310
  call void @nn_lb_rm(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !311
  %22 = load ptr, ptr %6, align 8, !dbg !312
  call void @nn_free(ptr noundef %22), !dbg !313
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpush_in(ptr noundef %0, ptr noundef %1) #0 !dbg !315 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !316, metadata !DIExpression()), !dbg !317
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !318, metadata !DIExpression()), !dbg !319
  ret void, !dbg !320
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpush_out(ptr noundef %0, ptr noundef %1) #0 !dbg !321 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !322, metadata !DIExpression()), !dbg !323
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !324, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.declare(metadata ptr %5, metadata !326, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.declare(metadata ptr %6, metadata !328, metadata !DIExpression()), !dbg !329
  %7 = load ptr, ptr %3, align 8, !dbg !330
  %8 = icmp ne ptr %7, null, !dbg !330
  br i1 %8, label %9, label %12, !dbg !330

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !330
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !330
  br label %13, !dbg !330

12:                                               ; preds = %2
  br label %13, !dbg !330

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !330
  store ptr %14, ptr %5, align 8, !dbg !331
  %15 = load ptr, ptr %4, align 8, !dbg !332
  %16 = call ptr @nn_pipe_getdata(ptr noundef %15), !dbg !333
  store ptr %16, ptr %6, align 8, !dbg !334
  %17 = load ptr, ptr %5, align 8, !dbg !335
  %18 = getelementptr inbounds %struct.nn_xpush, ptr %17, i32 0, i32 1, !dbg !336
  %19 = load ptr, ptr %4, align 8, !dbg !337
  %20 = load ptr, ptr %6, align 8, !dbg !338
  %21 = getelementptr inbounds %struct.nn_xpush_data, ptr %20, i32 0, i32 0, !dbg !339
  call void @nn_lb_out(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !340
  ret void, !dbg !341
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xpush_events(ptr noundef %0) #0 !dbg !342 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !343, metadata !DIExpression()), !dbg !344
  %3 = load ptr, ptr %2, align 8, !dbg !345
  %4 = icmp ne ptr %3, null, !dbg !345
  br i1 %4, label %5, label %8, !dbg !345

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !345
  %7 = getelementptr inbounds i8, ptr %6, i64 0, !dbg !345
  br label %9, !dbg !345

8:                                                ; preds = %1
  br label %9, !dbg !345

9:                                                ; preds = %8, %5
  %10 = phi ptr [ %7, %5 ], [ null, %8 ], !dbg !345
  %11 = getelementptr inbounds %struct.nn_xpush, ptr %10, i32 0, i32 1, !dbg !346
  %12 = call i32 @nn_lb_can_send(ptr noundef %11), !dbg !347
  %13 = icmp ne i32 %12, 0, !dbg !347
  %14 = zext i1 %13 to i64, !dbg !347
  %15 = select i1 %13, i32 2, i32 0, !dbg !347
  ret i32 %15, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xpush_send(ptr noundef %0, ptr noundef %1) #0 !dbg !349 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !350, metadata !DIExpression()), !dbg !351
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !352, metadata !DIExpression()), !dbg !353
  %5 = load ptr, ptr %3, align 8, !dbg !354
  %6 = icmp ne ptr %5, null, !dbg !354
  br i1 %6, label %7, label %10, !dbg !354

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !354
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !354
  br label %11, !dbg !354

10:                                               ; preds = %2
  br label %11, !dbg !354

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !354
  %13 = getelementptr inbounds %struct.nn_xpush, ptr %12, i32 0, i32 1, !dbg !355
  %14 = load ptr, ptr %4, align 8, !dbg !356
  %15 = call i32 @nn_lb_send(ptr noundef %13, ptr noundef %14), !dbg !357
  ret i32 %15, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xpush_setopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !359 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !360, metadata !DIExpression()), !dbg !361
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !362, metadata !DIExpression()), !dbg !363
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !364, metadata !DIExpression()), !dbg !365
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !366, metadata !DIExpression()), !dbg !367
  store i64 %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !368, metadata !DIExpression()), !dbg !369
  ret i32 -92, !dbg !370
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xpush_getopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !371 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !372, metadata !DIExpression()), !dbg !373
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !374, metadata !DIExpression()), !dbg !375
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !376, metadata !DIExpression()), !dbg !377
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !378, metadata !DIExpression()), !dbg !379
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !380, metadata !DIExpression()), !dbg !381
  ret i32 -92, !dbg !382
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpush_term(ptr noundef %0) #0 !dbg !383 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !386, metadata !DIExpression()), !dbg !387
  %3 = load ptr, ptr %2, align 8, !dbg !388
  %4 = getelementptr inbounds %struct.nn_xpush, ptr %3, i32 0, i32 1, !dbg !389
  call void @nn_lb_term(ptr noundef %4), !dbg !390
  %5 = load ptr, ptr %2, align 8, !dbg !391
  %6 = getelementptr inbounds %struct.nn_xpush, ptr %5, i32 0, i32 0, !dbg !392
  call void @nn_sockbase_term(ptr noundef %6), !dbg !393
  ret void, !dbg !394
}

declare void @nn_free(ptr noundef) #2

declare void @nn_lb_term(ptr noundef) #2

declare void @nn_sockbase_term(ptr noundef) #2

declare i32 @nn_sockbase_getopt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare ptr @nn_err_strerror(i32 noundef) #2

declare void @nn_pipe_setdata(ptr noundef, ptr noundef) #2

declare void @nn_lb_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare ptr @nn_pipe_getdata(ptr noundef) #2

declare void @nn_lb_rm(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_lb_out(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @nn_lb_can_send(ptr noundef) #2

declare i32 @nn_lb_send(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/protocols/pipeline/xpush.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "c1aeac1d0dee97d77cefb9f55d05b666")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "nn_xpush_sockbase_vfptr", scope: !14, file: !2, line: 62, type: !26, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !15, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !16, globals: !127, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "src/protocols/pipeline/xpush.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "c1aeac1d0dee97d77cefb9f55d05b666")
!16 = !{!17, !126, !39}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xpush", file: !2, line: 40, size: 3264, elements: !19)
!19 = !{!20, !93}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !18, file: !2, line: 41, baseType: !21, size: 128)
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
!93 = !DIDerivedType(tag: DW_TAG_member, name: "lb", scope: !18, file: !2, line: 42, baseType: !94, size: 3136, offset: 128)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_lb", file: !95, line: 36, size: 3136, elements: !96)
!95 = !DIFile(filename: "./src/protocols/pipeline/../utils/lb.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "6c310e327bfaa067523d8902ab9b4696")
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !94, file: !95, line: 37, baseType: !98, size: 3136)
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
!127 = !{!0, !7, !128, !12, !146, !151, !156, !158}
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "nn_xpush_socktype", scope: !14, file: !2, line: 198, type: !130, isLocal: false, isDefinition: true)
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
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 17)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 30)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !3, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "nn_xpush_socktype_struct", scope: !14, file: !2, line: 189, type: !131, isLocal: true, isDefinition: true)
!160 = !{i32 7, !"Dwarf Version", i32 5}
!161 = !{i32 2, !"Debug Info Version", i32 3}
!162 = !{i32 1, !"wchar_size", i32 4}
!163 = !{i32 8, !"PIC Level", i32 2}
!164 = !{i32 7, !"PIE Level", i32 2}
!165 = !{i32 7, !"uwtable", i32 2}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 16.0.0"}
!168 = distinct !DISubprogram(name: "nn_xpush_create", scope: !2, file: !2, line: 172, type: !138, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !169)
!169 = !{}
!170 = !DILocalVariable(name: "hint", arg: 1, scope: !168, file: !2, line: 172, type: !88)
!171 = !DILocation(line: 172, column: 28, scope: !168)
!172 = !DILocalVariable(name: "sockbase", arg: 2, scope: !168, file: !2, line: 172, type: !140)
!173 = !DILocation(line: 172, column: 55, scope: !168)
!174 = !DILocalVariable(name: "self", scope: !168, file: !2, line: 174, type: !17)
!175 = !DILocation(line: 174, column: 22, scope: !168)
!176 = !DILocation(line: 176, column: 12, scope: !168)
!177 = !DILocation(line: 176, column: 10, scope: !168)
!178 = !DILocation(line: 177, column: 5, scope: !168)
!179 = !DILocation(line: 177, column: 5, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !2, line: 177, column: 5)
!181 = distinct !DILexicalBlock(scope: !168, file: !2, line: 177, column: 5)
!182 = !DILocation(line: 177, column: 5, scope: !181)
!183 = !DILocation(line: 177, column: 5, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !2, line: 177, column: 5)
!185 = !DILocation(line: 178, column: 20, scope: !168)
!186 = !DILocation(line: 178, column: 52, scope: !168)
!187 = !DILocation(line: 178, column: 5, scope: !168)
!188 = !DILocation(line: 179, column: 18, scope: !168)
!189 = !DILocation(line: 179, column: 24, scope: !168)
!190 = !DILocation(line: 179, column: 6, scope: !168)
!191 = !DILocation(line: 179, column: 15, scope: !168)
!192 = !DILocation(line: 181, column: 5, scope: !168)
!193 = distinct !DISubprogram(name: "nn_xpush_init", scope: !2, file: !2, line: 76, type: !194, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !169)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !17, !25, !88}
!196 = !DILocalVariable(name: "self", arg: 1, scope: !193, file: !2, line: 76, type: !17)
!197 = !DILocation(line: 76, column: 45, scope: !193)
!198 = !DILocalVariable(name: "vfptr", arg: 2, scope: !193, file: !2, line: 77, type: !25)
!199 = !DILocation(line: 77, column: 37, scope: !193)
!200 = !DILocalVariable(name: "hint", arg: 3, scope: !193, file: !2, line: 77, type: !88)
!201 = !DILocation(line: 77, column: 50, scope: !193)
!202 = !DILocation(line: 79, column: 24, scope: !193)
!203 = !DILocation(line: 79, column: 30, scope: !193)
!204 = !DILocation(line: 79, column: 40, scope: !193)
!205 = !DILocation(line: 79, column: 47, scope: !193)
!206 = !DILocation(line: 79, column: 5, scope: !193)
!207 = !DILocation(line: 80, column: 18, scope: !193)
!208 = !DILocation(line: 80, column: 24, scope: !193)
!209 = !DILocation(line: 80, column: 5, scope: !193)
!210 = !DILocation(line: 81, column: 1, scope: !193)
!211 = distinct !DISubprogram(name: "nn_xpush_ispeer", scope: !2, file: !2, line: 184, type: !143, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !169)
!212 = !DILocalVariable(name: "socktype", arg: 1, scope: !211, file: !2, line: 184, type: !39)
!213 = !DILocation(line: 184, column: 26, scope: !211)
!214 = !DILocation(line: 186, column: 12, scope: !211)
!215 = !DILocation(line: 186, column: 21, scope: !211)
!216 = !DILocation(line: 186, column: 5, scope: !211)
!217 = distinct !DISubprogram(name: "nn_xpush_destroy", scope: !2, file: !2, line: 89, type: !31, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !169)
!218 = !DILocalVariable(name: "self", arg: 1, scope: !217, file: !2, line: 89, type: !33)
!219 = !DILocation(line: 89, column: 44, scope: !217)
!220 = !DILocalVariable(name: "xpush", scope: !217, file: !2, line: 91, type: !17)
!221 = !DILocation(line: 91, column: 22, scope: !217)
!222 = !DILocation(line: 93, column: 13, scope: !217)
!223 = !DILocation(line: 93, column: 11, scope: !217)
!224 = !DILocation(line: 95, column: 20, scope: !217)
!225 = !DILocation(line: 95, column: 5, scope: !217)
!226 = !DILocation(line: 96, column: 14, scope: !217)
!227 = !DILocation(line: 96, column: 5, scope: !217)
!228 = !DILocation(line: 97, column: 1, scope: !217)
!229 = distinct !DISubprogram(name: "nn_xpush_add", scope: !2, file: !2, line: 99, type: !37, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !169)
!230 = !DILocalVariable(name: "self", arg: 1, scope: !229, file: !2, line: 99, type: !33)
!231 = !DILocation(line: 99, column: 46, scope: !229)
!232 = !DILocalVariable(name: "pipe", arg: 2, scope: !229, file: !2, line: 99, type: !40)
!233 = !DILocation(line: 99, column: 68, scope: !229)
!234 = !DILocalVariable(name: "rc", scope: !229, file: !2, line: 101, type: !39)
!235 = !DILocation(line: 101, column: 9, scope: !229)
!236 = !DILocalVariable(name: "xpush", scope: !229, file: !2, line: 102, type: !17)
!237 = !DILocation(line: 102, column: 22, scope: !229)
!238 = !DILocalVariable(name: "data", scope: !229, file: !2, line: 103, type: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xpush_data", file: !2, line: 36, size: 256, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "lb", scope: !240, file: !2, line: 37, baseType: !243, size: 256)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_lb_data", file: !95, line: 32, size: 256, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !243, file: !95, line: 33, baseType: !118, size: 256)
!246 = !DILocation(line: 103, column: 27, scope: !229)
!247 = !DILocalVariable(name: "sndprio", scope: !229, file: !2, line: 104, type: !39)
!248 = !DILocation(line: 104, column: 9, scope: !229)
!249 = !DILocalVariable(name: "sz", scope: !229, file: !2, line: 105, type: !81)
!250 = !DILocation(line: 105, column: 12, scope: !229)
!251 = !DILocation(line: 107, column: 13, scope: !229)
!252 = !DILocation(line: 107, column: 11, scope: !229)
!253 = !DILocation(line: 109, column: 8, scope: !229)
!254 = !DILocation(line: 110, column: 31, scope: !229)
!255 = !DILocation(line: 110, column: 38, scope: !229)
!256 = !DILocation(line: 110, column: 10, scope: !229)
!257 = !DILocation(line: 110, column: 8, scope: !229)
!258 = !DILocation(line: 111, column: 5, scope: !229)
!259 = !DILocation(line: 111, column: 5, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !2, line: 111, column: 5)
!261 = distinct !DILexicalBlock(scope: !229, file: !2, line: 111, column: 5)
!262 = !DILocation(line: 111, column: 5, scope: !261)
!263 = !DILocation(line: 111, column: 5, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !2, line: 111, column: 5)
!265 = !DILocation(line: 112, column: 5, scope: !229)
!266 = !DILocation(line: 112, column: 5, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !2, line: 112, column: 5)
!268 = distinct !DILexicalBlock(scope: !229, file: !2, line: 112, column: 5)
!269 = !DILocation(line: 112, column: 5, scope: !268)
!270 = !DILocation(line: 112, column: 5, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !2, line: 112, column: 5)
!272 = !DILocation(line: 114, column: 12, scope: !229)
!273 = !DILocation(line: 114, column: 10, scope: !229)
!274 = !DILocation(line: 115, column: 5, scope: !229)
!275 = !DILocation(line: 115, column: 5, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !2, line: 115, column: 5)
!277 = distinct !DILexicalBlock(scope: !229, file: !2, line: 115, column: 5)
!278 = !DILocation(line: 115, column: 5, scope: !277)
!279 = !DILocation(line: 115, column: 5, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !2, line: 115, column: 5)
!281 = !DILocation(line: 116, column: 22, scope: !229)
!282 = !DILocation(line: 116, column: 28, scope: !229)
!283 = !DILocation(line: 116, column: 5, scope: !229)
!284 = !DILocation(line: 117, column: 17, scope: !229)
!285 = !DILocation(line: 117, column: 24, scope: !229)
!286 = !DILocation(line: 117, column: 28, scope: !229)
!287 = !DILocation(line: 117, column: 35, scope: !229)
!288 = !DILocation(line: 117, column: 41, scope: !229)
!289 = !DILocation(line: 117, column: 45, scope: !229)
!290 = !DILocation(line: 117, column: 5, scope: !229)
!291 = !DILocation(line: 119, column: 5, scope: !229)
!292 = distinct !DISubprogram(name: "nn_xpush_rm", scope: !2, file: !2, line: 122, type: !44, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !169)
!293 = !DILocalVariable(name: "self", arg: 1, scope: !292, file: !2, line: 122, type: !33)
!294 = !DILocation(line: 122, column: 46, scope: !292)
!295 = !DILocalVariable(name: "pipe", arg: 2, scope: !292, file: !2, line: 122, type: !40)
!296 = !DILocation(line: 122, column: 68, scope: !292)
!297 = !DILocalVariable(name: "xpush", scope: !292, file: !2, line: 124, type: !17)
!298 = !DILocation(line: 124, column: 22, scope: !292)
!299 = !DILocalVariable(name: "data", scope: !292, file: !2, line: 125, type: !239)
!300 = !DILocation(line: 125, column: 27, scope: !292)
!301 = !DILocation(line: 127, column: 13, scope: !292)
!302 = !DILocation(line: 127, column: 11, scope: !292)
!303 = !DILocation(line: 128, column: 29, scope: !292)
!304 = !DILocation(line: 128, column: 12, scope: !292)
!305 = !DILocation(line: 128, column: 10, scope: !292)
!306 = !DILocation(line: 129, column: 16, scope: !292)
!307 = !DILocation(line: 129, column: 23, scope: !292)
!308 = !DILocation(line: 129, column: 27, scope: !292)
!309 = !DILocation(line: 129, column: 34, scope: !292)
!310 = !DILocation(line: 129, column: 40, scope: !292)
!311 = !DILocation(line: 129, column: 5, scope: !292)
!312 = !DILocation(line: 130, column: 14, scope: !292)
!313 = !DILocation(line: 130, column: 5, scope: !292)
!314 = !DILocation(line: 131, column: 1, scope: !292)
!315 = distinct !DISubprogram(name: "nn_xpush_in", scope: !2, file: !2, line: 133, type: !44, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !169)
!316 = !DILocalVariable(name: "self", arg: 1, scope: !315, file: !2, line: 133, type: !33)
!317 = !DILocation(line: 133, column: 46, scope: !315)
!318 = !DILocalVariable(name: "pipe", arg: 2, scope: !315, file: !2, line: 133, type: !40)
!319 = !DILocation(line: 133, column: 68, scope: !315)
!320 = !DILocation(line: 137, column: 1, scope: !315)
!321 = distinct !DISubprogram(name: "nn_xpush_out", scope: !2, file: !2, line: 139, type: !44, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !169)
!322 = !DILocalVariable(name: "self", arg: 1, scope: !321, file: !2, line: 139, type: !33)
!323 = !DILocation(line: 139, column: 47, scope: !321)
!324 = !DILocalVariable(name: "pipe", arg: 2, scope: !321, file: !2, line: 139, type: !40)
!325 = !DILocation(line: 139, column: 69, scope: !321)
!326 = !DILocalVariable(name: "xpush", scope: !321, file: !2, line: 141, type: !17)
!327 = !DILocation(line: 141, column: 22, scope: !321)
!328 = !DILocalVariable(name: "data", scope: !321, file: !2, line: 142, type: !239)
!329 = !DILocation(line: 142, column: 27, scope: !321)
!330 = !DILocation(line: 144, column: 13, scope: !321)
!331 = !DILocation(line: 144, column: 11, scope: !321)
!332 = !DILocation(line: 145, column: 29, scope: !321)
!333 = !DILocation(line: 145, column: 12, scope: !321)
!334 = !DILocation(line: 145, column: 10, scope: !321)
!335 = !DILocation(line: 146, column: 17, scope: !321)
!336 = !DILocation(line: 146, column: 24, scope: !321)
!337 = !DILocation(line: 146, column: 28, scope: !321)
!338 = !DILocation(line: 146, column: 35, scope: !321)
!339 = !DILocation(line: 146, column: 41, scope: !321)
!340 = !DILocation(line: 146, column: 5, scope: !321)
!341 = !DILocation(line: 147, column: 1, scope: !321)
!342 = distinct !DISubprogram(name: "nn_xpush_events", scope: !2, file: !2, line: 149, type: !50, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !169)
!343 = !DILocalVariable(name: "self", arg: 1, scope: !342, file: !2, line: 149, type: !33)
!344 = !DILocation(line: 149, column: 49, scope: !342)
!345 = !DILocation(line: 151, column: 29, scope: !342)
!346 = !DILocation(line: 151, column: 72, scope: !342)
!347 = !DILocation(line: 151, column: 12, scope: !342)
!348 = !DILocation(line: 151, column: 5, scope: !342)
!349 = distinct !DISubprogram(name: "nn_xpush_send", scope: !2, file: !2, line: 155, type: !54, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !169)
!350 = !DILocalVariable(name: "self", arg: 1, scope: !349, file: !2, line: 155, type: !33)
!351 = !DILocation(line: 155, column: 47, scope: !349)
!352 = !DILocalVariable(name: "msg", arg: 2, scope: !349, file: !2, line: 155, type: !56)
!353 = !DILocation(line: 155, column: 68, scope: !349)
!354 = !DILocation(line: 157, column: 25, scope: !349)
!355 = !DILocation(line: 157, column: 68, scope: !349)
!356 = !DILocation(line: 157, column: 72, scope: !349)
!357 = !DILocation(line: 157, column: 12, scope: !349)
!358 = !DILocation(line: 157, column: 5, scope: !349)
!359 = distinct !DISubprogram(name: "nn_xpush_setopt", scope: !2, file: !2, line: 160, type: !77, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !169)
!360 = !DILocalVariable(name: "self", arg: 1, scope: !359, file: !2, line: 160, type: !33)
!361 = !DILocation(line: 160, column: 49, scope: !359)
!362 = !DILocalVariable(name: "level", arg: 2, scope: !359, file: !2, line: 160, type: !39)
!363 = !DILocation(line: 160, column: 59, scope: !359)
!364 = !DILocalVariable(name: "option", arg: 3, scope: !359, file: !2, line: 160, type: !39)
!365 = !DILocation(line: 160, column: 70, scope: !359)
!366 = !DILocalVariable(name: "optval", arg: 4, scope: !359, file: !2, line: 161, type: !79)
!367 = !DILocation(line: 161, column: 21, scope: !359)
!368 = !DILocalVariable(name: "optvallen", arg: 5, scope: !359, file: !2, line: 161, type: !81)
!369 = !DILocation(line: 161, column: 36, scope: !359)
!370 = !DILocation(line: 163, column: 5, scope: !359)
!371 = distinct !DISubprogram(name: "nn_xpush_getopt", scope: !2, file: !2, line: 166, type: !86, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !169)
!372 = !DILocalVariable(name: "self", arg: 1, scope: !371, file: !2, line: 166, type: !33)
!373 = !DILocation(line: 166, column: 49, scope: !371)
!374 = !DILocalVariable(name: "level", arg: 2, scope: !371, file: !2, line: 166, type: !39)
!375 = !DILocation(line: 166, column: 59, scope: !371)
!376 = !DILocalVariable(name: "option", arg: 3, scope: !371, file: !2, line: 166, type: !39)
!377 = !DILocation(line: 166, column: 70, scope: !371)
!378 = !DILocalVariable(name: "optval", arg: 4, scope: !371, file: !2, line: 167, type: !88)
!379 = !DILocation(line: 167, column: 15, scope: !371)
!380 = !DILocalVariable(name: "optvallen", arg: 5, scope: !371, file: !2, line: 167, type: !89)
!381 = !DILocation(line: 167, column: 31, scope: !371)
!382 = !DILocation(line: 169, column: 5, scope: !371)
!383 = distinct !DISubprogram(name: "nn_xpush_term", scope: !2, file: !2, line: 83, type: !384, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !169)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !17}
!386 = !DILocalVariable(name: "self", arg: 1, scope: !383, file: !2, line: 83, type: !17)
!387 = !DILocation(line: 83, column: 45, scope: !383)
!388 = !DILocation(line: 85, column: 18, scope: !383)
!389 = !DILocation(line: 85, column: 24, scope: !383)
!390 = !DILocation(line: 85, column: 5, scope: !383)
!391 = !DILocation(line: 86, column: 24, scope: !383)
!392 = !DILocation(line: 86, column: 30, scope: !383)
!393 = !DILocation(line: 86, column: 5, scope: !383)
!394 = !DILocation(line: 87, column: 1, scope: !383)
