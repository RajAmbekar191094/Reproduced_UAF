; ModuleID = './src/protocols/reqrep/rep.c'
source_filename = "./src/protocols/reqrep/rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_sockbase_vfptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nn_rep = type { %struct.nn_xrep, i32, %struct.nn_chunkref }
%struct.nn_xrep = type { %struct.nn_sockbase, i32, %struct.nn_hash, %struct.nn_fq }
%struct.nn_sockbase = type { ptr, ptr }
%struct.nn_hash = type { i32, i32, ptr }
%struct.nn_fq = type { %struct.nn_priolist }
%struct.nn_priolist = type { [16 x %struct.nn_priolist_slot], i32 }
%struct.nn_priolist_slot = type { %struct.nn_list, ptr }
%struct.nn_list = type { ptr, ptr }
%struct.nn_chunkref = type { [32 x i8] }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }

@nn_rep_socktype_struct = internal global %struct.nn_socktype { i32 1, i32 49, i32 0, ptr @nn_rep_create, ptr @nn_xrep_ispeer, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !0
@nn_rep_socktype = dso_local global ptr @nn_rep_socktype_struct, align 8, !dbg !136
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !154
@.str.1 = private unnamed_addr constant [29 x i8] c"./src/protocols/reqrep/rep.c\00", align 1, !dbg !159
@nn_rep_sockbase_vfptr = internal constant %struct.nn_sockbase_vfptr { ptr null, ptr @nn_rep_destroy, ptr @nn_xrep_add, ptr @nn_xrep_rm, ptr @nn_xrep_in, ptr @nn_xrep_out, ptr @nn_rep_events, ptr @nn_rep_send, ptr @nn_rep_recv, ptr @nn_xrep_setopt, ptr @nn_xrep_getopt }, align 8, !dbg !164
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !166
@.str.3 = private unnamed_addr constant [34 x i8] c"nn_chunkref_size (&msg->hdr) == 0\00", align 1, !dbg !171
@.str.4 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !176

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_rep_create(ptr noundef %0, ptr noundef %1) #0 !dbg !189 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !191, metadata !DIExpression()), !dbg !192
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata ptr %5, metadata !195, metadata !DIExpression()), !dbg !196
  %6 = call ptr @nn_alloc_(i64 noundef 472), !dbg !197
  store ptr %6, ptr %5, align 8, !dbg !198
  br label %7, !dbg !199

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !dbg !200
  %9 = icmp ne ptr %8, null, !dbg !200
  %10 = xor i1 %9, true, !dbg !200
  %11 = zext i1 %10 to i32, !dbg !200
  %12 = sext i32 %11 to i64, !dbg !200
  %13 = icmp ne i64 %12, 0, !dbg !200
  br i1 %13, label %14, label %17, !dbg !203

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !204
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 166), !dbg !204
  call void @nn_err_abort() #4, !dbg !204
  unreachable, !dbg !204

17:                                               ; preds = %7
  br label %18, !dbg !203

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !206
  %20 = load ptr, ptr %3, align 8, !dbg !207
  call void @nn_rep_init(ptr noundef %19, ptr noundef @nn_rep_sockbase_vfptr, ptr noundef %20), !dbg !208
  %21 = load ptr, ptr %5, align 8, !dbg !209
  %22 = getelementptr inbounds %struct.nn_rep, ptr %21, i32 0, i32 0, !dbg !210
  %23 = getelementptr inbounds %struct.nn_xrep, ptr %22, i32 0, i32 0, !dbg !211
  %24 = load ptr, ptr %4, align 8, !dbg !212
  store ptr %23, ptr %24, align 8, !dbg !213
  ret i32 0, !dbg !214
}

declare i32 @nn_xrep_ispeer(i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare ptr @nn_alloc_(i64 noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_rep_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !215 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !218, metadata !DIExpression()), !dbg !219
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !220, metadata !DIExpression()), !dbg !221
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !222, metadata !DIExpression()), !dbg !223
  %7 = load ptr, ptr %4, align 8, !dbg !224
  %8 = getelementptr inbounds %struct.nn_rep, ptr %7, i32 0, i32 0, !dbg !225
  %9 = load ptr, ptr %5, align 8, !dbg !226
  %10 = load ptr, ptr %6, align 8, !dbg !227
  call void @nn_xrep_init(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !228
  %11 = load ptr, ptr %4, align 8, !dbg !229
  %12 = getelementptr inbounds %struct.nn_rep, ptr %11, i32 0, i32 1, !dbg !230
  store i32 0, ptr %12, align 8, !dbg !231
  ret void, !dbg !232
}

declare void @nn_xrep_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_rep_destroy(ptr noundef %0) #0 !dbg !233 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !234, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata ptr %3, metadata !236, metadata !DIExpression()), !dbg !237
  %4 = load ptr, ptr %2, align 8, !dbg !238
  %5 = icmp ne ptr %4, null, !dbg !238
  br i1 %5, label %6, label %9, !dbg !238

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !238
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !238
  br label %10, !dbg !238

9:                                                ; preds = %1
  br label %10, !dbg !238

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !238
  store ptr %11, ptr %3, align 8, !dbg !239
  %12 = load ptr, ptr %3, align 8, !dbg !240
  call void @nn_rep_term(ptr noundef %12), !dbg !241
  %13 = load ptr, ptr %3, align 8, !dbg !242
  call void @nn_free(ptr noundef %13), !dbg !243
  ret void, !dbg !244
}

declare i32 @nn_xrep_add(ptr noundef, ptr noundef) #1

declare void @nn_xrep_rm(ptr noundef, ptr noundef) #1

declare void @nn_xrep_in(ptr noundef, ptr noundef) #1

declare void @nn_xrep_out(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_rep_events(ptr noundef %0) #0 !dbg !245 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !246, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata ptr %3, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata ptr %4, metadata !250, metadata !DIExpression()), !dbg !251
  %5 = load ptr, ptr %2, align 8, !dbg !252
  %6 = icmp ne ptr %5, null, !dbg !252
  br i1 %6, label %7, label %10, !dbg !252

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !252
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !252
  br label %11, !dbg !252

10:                                               ; preds = %1
  br label %11, !dbg !252

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !252
  store ptr %12, ptr %3, align 8, !dbg !253
  %13 = load ptr, ptr %3, align 8, !dbg !254
  %14 = getelementptr inbounds %struct.nn_rep, ptr %13, i32 0, i32 0, !dbg !255
  %15 = getelementptr inbounds %struct.nn_xrep, ptr %14, i32 0, i32 0, !dbg !256
  %16 = call i32 @nn_xrep_events(ptr noundef %15), !dbg !257
  store i32 %16, ptr %4, align 4, !dbg !258
  %17 = load ptr, ptr %3, align 8, !dbg !259
  %18 = getelementptr inbounds %struct.nn_rep, ptr %17, i32 0, i32 1, !dbg !261
  %19 = load i32, ptr %18, align 8, !dbg !261
  %20 = and i32 %19, 1, !dbg !262
  %21 = icmp ne i32 %20, 0, !dbg !262
  br i1 %21, label %25, label %22, !dbg !263

22:                                               ; preds = %11
  %23 = load i32, ptr %4, align 4, !dbg !264
  %24 = and i32 %23, -3, !dbg !264
  store i32 %24, ptr %4, align 4, !dbg !264
  br label %25, !dbg !265

25:                                               ; preds = %22, %11
  %26 = load i32, ptr %4, align 4, !dbg !266
  ret i32 %26, !dbg !267
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_rep_send(ptr noundef %0, ptr noundef %1) #0 !dbg !268 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !269, metadata !DIExpression()), !dbg !270
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !271, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata ptr %6, metadata !273, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata ptr %7, metadata !275, metadata !DIExpression()), !dbg !276
  %8 = load ptr, ptr %4, align 8, !dbg !277
  %9 = icmp ne ptr %8, null, !dbg !277
  br i1 %9, label %10, label %13, !dbg !277

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !277
  %12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !277
  br label %14, !dbg !277

13:                                               ; preds = %2
  br label %14, !dbg !277

14:                                               ; preds = %13, %10
  %15 = phi ptr [ %12, %10 ], [ null, %13 ], !dbg !277
  store ptr %15, ptr %7, align 8, !dbg !278
  %16 = load ptr, ptr %7, align 8, !dbg !279
  %17 = getelementptr inbounds %struct.nn_rep, ptr %16, i32 0, i32 1, !dbg !279
  %18 = load i32, ptr %17, align 8, !dbg !279
  %19 = and i32 %18, 1, !dbg !279
  %20 = icmp ne i32 %19, 0, !dbg !279
  %21 = xor i1 %20, true, !dbg !279
  %22 = zext i1 %21 to i32, !dbg !279
  %23 = sext i32 %22 to i64, !dbg !279
  %24 = icmp ne i64 %23, 0, !dbg !279
  br i1 %24, label %25, label %26, !dbg !281

25:                                               ; preds = %14
  store i32 -156384766, ptr %3, align 4, !dbg !282
  br label %78, !dbg !282

26:                                               ; preds = %14
  br label %27, !dbg !283

27:                                               ; preds = %26
  %28 = load ptr, ptr %5, align 8, !dbg !284
  %29 = getelementptr inbounds %struct.nn_msg, ptr %28, i32 0, i32 0, !dbg !284
  %30 = call i64 @nn_chunkref_size(ptr noundef %29), !dbg !284
  %31 = icmp eq i64 %30, 0, !dbg !284
  %32 = xor i1 %31, true, !dbg !284
  %33 = zext i1 %32 to i32, !dbg !284
  %34 = sext i32 %33 to i64, !dbg !284
  %35 = icmp ne i64 %34, 0, !dbg !284
  br i1 %35, label %36, label %39, !dbg !287

36:                                               ; preds = %27
  %37 = load ptr, ptr @stderr, align 8, !dbg !288
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 121), !dbg !288
  call void @nn_err_abort() #4, !dbg !288
  unreachable, !dbg !288

39:                                               ; preds = %27
  br label %40, !dbg !287

40:                                               ; preds = %39
  %41 = load ptr, ptr %5, align 8, !dbg !290
  %42 = getelementptr inbounds %struct.nn_msg, ptr %41, i32 0, i32 0, !dbg !291
  call void @nn_chunkref_term(ptr noundef %42), !dbg !292
  %43 = load ptr, ptr %5, align 8, !dbg !293
  %44 = getelementptr inbounds %struct.nn_msg, ptr %43, i32 0, i32 0, !dbg !294
  %45 = load ptr, ptr %7, align 8, !dbg !295
  %46 = getelementptr inbounds %struct.nn_rep, ptr %45, i32 0, i32 2, !dbg !296
  call void @nn_chunkref_mv(ptr noundef %44, ptr noundef %46), !dbg !297
  %47 = load ptr, ptr %7, align 8, !dbg !298
  %48 = getelementptr inbounds %struct.nn_rep, ptr %47, i32 0, i32 1, !dbg !299
  %49 = load i32, ptr %48, align 8, !dbg !300
  %50 = and i32 %49, -2, !dbg !300
  store i32 %50, ptr %48, align 8, !dbg !300
  %51 = load ptr, ptr %7, align 8, !dbg !301
  %52 = getelementptr inbounds %struct.nn_rep, ptr %51, i32 0, i32 0, !dbg !302
  %53 = getelementptr inbounds %struct.nn_xrep, ptr %52, i32 0, i32 0, !dbg !303
  %54 = load ptr, ptr %5, align 8, !dbg !304
  %55 = call i32 @nn_xrep_send(ptr noundef %53, ptr noundef %54), !dbg !305
  store i32 %55, ptr %6, align 4, !dbg !306
  br label %56, !dbg !307

56:                                               ; preds = %40
  %57 = load i32, ptr %6, align 4, !dbg !308
  %58 = icmp eq i32 %57, 0, !dbg !308
  br i1 %58, label %62, label %59, !dbg !308

59:                                               ; preds = %56
  %60 = load i32, ptr %6, align 4, !dbg !308
  %61 = icmp eq i32 %60, -11, !dbg !308
  br label %62, !dbg !308

62:                                               ; preds = %59, %56
  %63 = phi i1 [ true, %56 ], [ %61, %59 ]
  %64 = xor i1 %63, true, !dbg !308
  %65 = zext i1 %64 to i32, !dbg !308
  %66 = sext i32 %65 to i64, !dbg !308
  %67 = icmp ne i64 %66, 0, !dbg !308
  br i1 %67, label %68, label %76, !dbg !311

68:                                               ; preds = %62
  %69 = load ptr, ptr @stderr, align 8, !dbg !312
  %70 = load i32, ptr %6, align 4, !dbg !312
  %71 = sub nsw i32 0, %70, !dbg !312
  %72 = call ptr @nn_err_strerror(i32 noundef %71), !dbg !312
  %73 = load i32, ptr %6, align 4, !dbg !312
  %74 = sub nsw i32 0, %73, !dbg !312
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.4, ptr noundef %72, i32 noundef %74, ptr noundef @.str.1, i32 noundef 129), !dbg !312
  call void @nn_err_abort() #4, !dbg !312
  unreachable, !dbg !312

76:                                               ; preds = %62
  br label %77, !dbg !311

77:                                               ; preds = %76
  store i32 0, ptr %3, align 4, !dbg !314
  br label %78, !dbg !314

78:                                               ; preds = %77, %25
  %79 = load i32, ptr %3, align 4, !dbg !315
  ret i32 %79, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_rep_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !316 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !317, metadata !DIExpression()), !dbg !318
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !319, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.declare(metadata ptr %6, metadata !321, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.declare(metadata ptr %7, metadata !323, metadata !DIExpression()), !dbg !324
  %8 = load ptr, ptr %4, align 8, !dbg !325
  %9 = icmp ne ptr %8, null, !dbg !325
  br i1 %9, label %10, label %13, !dbg !325

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !325
  %12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !325
  br label %14, !dbg !325

13:                                               ; preds = %2
  br label %14, !dbg !325

14:                                               ; preds = %13, %10
  %15 = phi ptr [ %12, %10 ], [ null, %13 ], !dbg !325
  store ptr %15, ptr %7, align 8, !dbg !326
  %16 = load ptr, ptr %7, align 8, !dbg !327
  %17 = getelementptr inbounds %struct.nn_rep, ptr %16, i32 0, i32 1, !dbg !327
  %18 = load i32, ptr %17, align 8, !dbg !327
  %19 = and i32 %18, 1, !dbg !327
  %20 = zext i32 %19 to i64, !dbg !327
  %21 = icmp ne i64 %20, 0, !dbg !327
  br i1 %21, label %22, label %29, !dbg !329

22:                                               ; preds = %14
  %23 = load ptr, ptr %7, align 8, !dbg !330
  %24 = getelementptr inbounds %struct.nn_rep, ptr %23, i32 0, i32 2, !dbg !332
  call void @nn_chunkref_term(ptr noundef %24), !dbg !333
  %25 = load ptr, ptr %7, align 8, !dbg !334
  %26 = getelementptr inbounds %struct.nn_rep, ptr %25, i32 0, i32 1, !dbg !335
  %27 = load i32, ptr %26, align 8, !dbg !336
  %28 = and i32 %27, -2, !dbg !336
  store i32 %28, ptr %26, align 8, !dbg !336
  br label %29, !dbg !337

29:                                               ; preds = %22, %14
  %30 = load ptr, ptr %7, align 8, !dbg !338
  %31 = getelementptr inbounds %struct.nn_rep, ptr %30, i32 0, i32 0, !dbg !339
  %32 = getelementptr inbounds %struct.nn_xrep, ptr %31, i32 0, i32 0, !dbg !340
  %33 = load ptr, ptr %5, align 8, !dbg !341
  %34 = call i32 @nn_xrep_recv(ptr noundef %32, ptr noundef %33), !dbg !342
  store i32 %34, ptr %6, align 4, !dbg !343
  %35 = load i32, ptr %6, align 4, !dbg !344
  %36 = icmp eq i32 %35, -11, !dbg !344
  %37 = zext i1 %36 to i32, !dbg !344
  %38 = sext i32 %37 to i64, !dbg !344
  %39 = icmp ne i64 %38, 0, !dbg !344
  br i1 %39, label %40, label %41, !dbg !346

40:                                               ; preds = %29
  store i32 -11, ptr %3, align 4, !dbg !347
  br label %69, !dbg !347

41:                                               ; preds = %29
  br label %42, !dbg !348

42:                                               ; preds = %41
  %43 = load i32, ptr %6, align 4, !dbg !349
  %44 = icmp eq i32 %43, 0, !dbg !349
  %45 = xor i1 %44, true, !dbg !349
  %46 = zext i1 %45 to i32, !dbg !349
  %47 = sext i32 %46 to i64, !dbg !349
  %48 = icmp ne i64 %47, 0, !dbg !349
  br i1 %48, label %49, label %57, !dbg !352

49:                                               ; preds = %42
  %50 = load ptr, ptr @stderr, align 8, !dbg !353
  %51 = load i32, ptr %6, align 4, !dbg !353
  %52 = sub nsw i32 0, %51, !dbg !353
  %53 = call ptr @nn_err_strerror(i32 noundef %52), !dbg !353
  %54 = load i32, ptr %6, align 4, !dbg !353
  %55 = sub nsw i32 0, %54, !dbg !353
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.4, ptr noundef %53, i32 noundef %55, ptr noundef @.str.1, i32 noundef 151), !dbg !353
  call void @nn_err_abort() #4, !dbg !353
  unreachable, !dbg !353

57:                                               ; preds = %42
  br label %58, !dbg !352

58:                                               ; preds = %57
  %59 = load ptr, ptr %7, align 8, !dbg !355
  %60 = getelementptr inbounds %struct.nn_rep, ptr %59, i32 0, i32 2, !dbg !356
  %61 = load ptr, ptr %5, align 8, !dbg !357
  %62 = getelementptr inbounds %struct.nn_msg, ptr %61, i32 0, i32 0, !dbg !358
  call void @nn_chunkref_mv(ptr noundef %60, ptr noundef %62), !dbg !359
  %63 = load ptr, ptr %5, align 8, !dbg !360
  %64 = getelementptr inbounds %struct.nn_msg, ptr %63, i32 0, i32 0, !dbg !361
  call void @nn_chunkref_init(ptr noundef %64, i64 noundef 0), !dbg !362
  %65 = load ptr, ptr %7, align 8, !dbg !363
  %66 = getelementptr inbounds %struct.nn_rep, ptr %65, i32 0, i32 1, !dbg !364
  %67 = load i32, ptr %66, align 8, !dbg !365
  %68 = or i32 %67, 1, !dbg !365
  store i32 %68, ptr %66, align 8, !dbg !365
  store i32 0, ptr %3, align 4, !dbg !366
  br label %69, !dbg !366

69:                                               ; preds = %58, %40
  %70 = load i32, ptr %3, align 4, !dbg !367
  ret i32 %70, !dbg !367
}

declare i32 @nn_xrep_setopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) #1

declare i32 @nn_xrep_getopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_rep_term(ptr noundef %0) #0 !dbg !368 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !371, metadata !DIExpression()), !dbg !372
  %3 = load ptr, ptr %2, align 8, !dbg !373
  %4 = getelementptr inbounds %struct.nn_rep, ptr %3, i32 0, i32 1, !dbg !375
  %5 = load i32, ptr %4, align 8, !dbg !375
  %6 = and i32 %5, 1, !dbg !376
  %7 = icmp ne i32 %6, 0, !dbg !376
  br i1 %7, label %8, label %11, !dbg !377

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !dbg !378
  %10 = getelementptr inbounds %struct.nn_rep, ptr %9, i32 0, i32 2, !dbg !379
  call void @nn_chunkref_term(ptr noundef %10), !dbg !380
  br label %11, !dbg !380

11:                                               ; preds = %8, %1
  %12 = load ptr, ptr %2, align 8, !dbg !381
  %13 = getelementptr inbounds %struct.nn_rep, ptr %12, i32 0, i32 0, !dbg !382
  call void @nn_xrep_term(ptr noundef %13), !dbg !383
  ret void, !dbg !384
}

declare void @nn_free(ptr noundef) #1

declare void @nn_chunkref_term(ptr noundef) #1

declare void @nn_xrep_term(ptr noundef) #1

declare i32 @nn_xrep_events(ptr noundef) #1

declare i64 @nn_chunkref_size(ptr noundef) #1

declare void @nn_chunkref_mv(ptr noundef, ptr noundef) #1

declare i32 @nn_xrep_send(ptr noundef, ptr noundef) #1

declare ptr @nn_err_strerror(i32 noundef) #1

declare i32 @nn_xrep_recv(ptr noundef, ptr noundef) #1

declare void @nn_chunkref_init(ptr noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_rep_socktype_struct", scope: !2, file: !7, line: 173, type: !139, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !135, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/protocols/reqrep/rep.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ec15e90ecd69617e702f2bde0e0e3949")
!4 = !{!5, !133, !32}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_rep", file: !7, line: 42, size: 3776, elements: !8)
!7 = !DIFile(filename: "./src/protocols/reqrep/rep.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ec15e90ecd69617e702f2bde0e0e3949")
!8 = !{!9, !131, !132}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "xrep", scope: !6, file: !7, line: 43, baseType: !10, size: 3456)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xrep", file: !11, line: 44, size: 3456, elements: !12)
!11 = !DIFile(filename: "./src/protocols/reqrep/xrep.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "eef17bee18eaa6f75cd0f553afca7c85")
!12 = !{!13, !86, !90, !108}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !10, file: !11, line: 46, baseType: !14, size: 128)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !15, line: 123, size: 128, elements: !16)
!15 = !DIFile(filename: "./src/protocols/reqrep/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!16 = !{!17, !83}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !14, file: !15, line: 124, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase_vfptr", file: !15, line: 84, size: 704, elements: !21)
!21 = !{!22, !27, !28, !35, !39, !40, !41, !45, !67, !68, !77}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !20, file: !15, line: 87, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !20, file: !15, line: 90, baseType: !23, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !20, file: !15, line: 97, baseType: !29, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !26, !33}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !15, line: 56, flags: DIFlagFwdDecl)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !20, file: !15, line: 98, baseType: !36, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !26, !33}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !20, file: !15, line: 99, baseType: !36, size: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !20, file: !15, line: 100, baseType: !36, size: 64, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !20, file: !15, line: 104, baseType: !42, size: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!32, !26}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !20, file: !15, line: 108, baseType: !46, size: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!32, !26, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !51, line: 30, size: 512, elements: !52)
!51 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!52 = !{!53, !66}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !50, file: !51, line: 33, baseType: !54, size: 256)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !55, line: 39, size: 256, elements: !56)
!55 = !DIFile(filename: "src/utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !54, file: !55, line: 40, baseType: !58, size: 256)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !60, line: 24, baseType: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !62, line: 38, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !{!65}
!65 = !DISubrange(count: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !50, file: !51, line: 36, baseType: !54, size: 256, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !20, file: !15, line: 112, baseType: !46, size: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !20, file: !15, line: 115, baseType: !69, size: 64, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!32, !26, !32, !32, !72, !74}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!76 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !20, file: !15, line: 119, baseType: !78, size: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!32, !26, !32, !32, !81, !82}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !14, file: !15, line: 125, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !15, line: 125, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "next_key", scope: !10, file: !11, line: 49, baseType: !87, size: 32, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !60, line: 26, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !62, line: 42, baseType: !89)
!89 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "outpipes", scope: !10, file: !11, line: 52, baseType: !91, size: 128, offset: 192)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hash", file: !92, line: 39, size: 128, elements: !93)
!92 = !DIFile(filename: "./src/protocols/reqrep/../../utils/hash.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "68acf226c9801fc7f4ff61503e6babca")
!93 = !{!94, !95, !96}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !91, file: !92, line: 40, baseType: !87, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !91, file: !92, line: 41, baseType: !87, size: 32, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !91, file: !92, line: 42, baseType: !97, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !99, line: 31, size: 128, elements: !100)
!99 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!100 = !{!101, !107}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !98, file: !99, line: 32, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !99, line: 26, size: 128, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !99, line: 27, baseType: !102, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !103, file: !99, line: 28, baseType: !102, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !98, file: !99, line: 33, baseType: !102, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "inpipes", scope: !10, file: !11, line: 55, baseType: !109, size: 3136, offset: 320)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fq", file: !110, line: 37, size: 3136, elements: !111)
!110 = !DIFile(filename: "./src/protocols/reqrep/../utils/fq.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "342bacd48eb65b84f809ed6b86c6514c")
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !109, file: !110, line: 38, baseType: !113, size: 3136)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist", file: !114, line: 45, size: 3136, elements: !115)
!114 = !DIFile(filename: "./src/protocols/reqrep/../utils/priolist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e7a7c69c9c81fe3b1beae760b1a28137")
!115 = !{!116, !130}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !113, file: !114, line: 46, baseType: !117, size: 3072)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 3072, elements: !128)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_slot", file: !114, line: 40, size: 192, elements: !119)
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !118, file: !114, line: 41, baseType: !98, size: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !118, file: !114, line: 42, baseType: !122, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_data", file: !114, line: 34, size: 256, elements: !124)
!124 = !{!125, !126, !127}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !123, file: !114, line: 35, baseType: !33, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !123, file: !114, line: 36, baseType: !32, size: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !123, file: !114, line: 37, baseType: !103, size: 128, offset: 128)
!128 = !{!129}
!129 = !DISubrange(count: 16)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !113, file: !114, line: 47, baseType: !32, size: 32, offset: 3072)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6, file: !7, line: 44, baseType: !87, size: 32, offset: 3456)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "backtrace", scope: !6, file: !7, line: 45, baseType: !54, size: 256, offset: 3488)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!135 = !{!136, !0, !154, !159, !164, !166, !171, !176}
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "nn_rep_socktype", scope: !2, file: !7, line: 182, type: !138, isLocal: false, isDefinition: true)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !15, line: 160, size: 384, elements: !140)
!140 = !{!141, !142, !143, !144, !149, !153}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !139, file: !15, line: 163, baseType: !32, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !139, file: !15, line: 164, baseType: !32, size: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !15, line: 167, baseType: !32, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !139, file: !15, line: 173, baseType: !145, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!32, !81, !148}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !139, file: !15, line: 179, baseType: !150, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!32, !32}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !139, file: !15, line: 183, baseType: !103, size: 128, offset: 256)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !7, line: 166, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 184, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 23)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !7, line: 166, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 232, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 29)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "nn_rep_sockbase_vfptr", scope: !2, file: !7, line: 59, type: !19, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !7, line: 121, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 240, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 30)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !7, line: 121, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 272, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 34)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !7, line: 129, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 136, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 17)
!181 = !{i32 7, !"Dwarf Version", i32 5}
!182 = !{i32 2, !"Debug Info Version", i32 3}
!183 = !{i32 1, !"wchar_size", i32 4}
!184 = !{i32 8, !"PIC Level", i32 2}
!185 = !{i32 7, !"PIE Level", i32 2}
!186 = !{i32 7, !"uwtable", i32 2}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 16.0.0"}
!189 = distinct !DISubprogram(name: "nn_rep_create", scope: !7, file: !7, line: 161, type: !146, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !190)
!190 = !{}
!191 = !DILocalVariable(name: "hint", arg: 1, scope: !189, file: !7, line: 161, type: !81)
!192 = !DILocation(line: 161, column: 33, scope: !189)
!193 = !DILocalVariable(name: "sockbase", arg: 2, scope: !189, file: !7, line: 161, type: !148)
!194 = !DILocation(line: 161, column: 60, scope: !189)
!195 = !DILocalVariable(name: "self", scope: !189, file: !7, line: 163, type: !5)
!196 = !DILocation(line: 163, column: 20, scope: !189)
!197 = !DILocation(line: 165, column: 12, scope: !189)
!198 = !DILocation(line: 165, column: 10, scope: !189)
!199 = !DILocation(line: 166, column: 5, scope: !189)
!200 = !DILocation(line: 166, column: 5, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !7, line: 166, column: 5)
!202 = distinct !DILexicalBlock(scope: !189, file: !7, line: 166, column: 5)
!203 = !DILocation(line: 166, column: 5, scope: !202)
!204 = !DILocation(line: 166, column: 5, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !7, line: 166, column: 5)
!206 = !DILocation(line: 167, column: 18, scope: !189)
!207 = !DILocation(line: 167, column: 48, scope: !189)
!208 = !DILocation(line: 167, column: 5, scope: !189)
!209 = !DILocation(line: 168, column: 18, scope: !189)
!210 = !DILocation(line: 168, column: 24, scope: !189)
!211 = !DILocation(line: 168, column: 29, scope: !189)
!212 = !DILocation(line: 168, column: 6, scope: !189)
!213 = !DILocation(line: 168, column: 15, scope: !189)
!214 = !DILocation(line: 170, column: 5, scope: !189)
!215 = distinct !DISubprogram(name: "nn_rep_init", scope: !7, file: !7, line: 73, type: !216, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !190)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !5, !18, !81}
!218 = !DILocalVariable(name: "self", arg: 1, scope: !215, file: !7, line: 73, type: !5)
!219 = !DILocation(line: 73, column: 41, scope: !215)
!220 = !DILocalVariable(name: "vfptr", arg: 2, scope: !215, file: !7, line: 74, type: !18)
!221 = !DILocation(line: 74, column: 37, scope: !215)
!222 = !DILocalVariable(name: "hint", arg: 3, scope: !215, file: !7, line: 74, type: !81)
!223 = !DILocation(line: 74, column: 50, scope: !215)
!224 = !DILocation(line: 76, column: 20, scope: !215)
!225 = !DILocation(line: 76, column: 26, scope: !215)
!226 = !DILocation(line: 76, column: 32, scope: !215)
!227 = !DILocation(line: 76, column: 39, scope: !215)
!228 = !DILocation(line: 76, column: 5, scope: !215)
!229 = !DILocation(line: 77, column: 5, scope: !215)
!230 = !DILocation(line: 77, column: 11, scope: !215)
!231 = !DILocation(line: 77, column: 17, scope: !215)
!232 = !DILocation(line: 78, column: 1, scope: !215)
!233 = distinct !DISubprogram(name: "nn_rep_destroy", scope: !7, file: !7, line: 87, type: !24, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !190)
!234 = !DILocalVariable(name: "self", arg: 1, scope: !233, file: !7, line: 87, type: !26)
!235 = !DILocation(line: 87, column: 49, scope: !233)
!236 = !DILocalVariable(name: "rep", scope: !233, file: !7, line: 89, type: !5)
!237 = !DILocation(line: 89, column: 20, scope: !233)
!238 = !DILocation(line: 91, column: 11, scope: !233)
!239 = !DILocation(line: 91, column: 9, scope: !233)
!240 = !DILocation(line: 93, column: 18, scope: !233)
!241 = !DILocation(line: 93, column: 5, scope: !233)
!242 = !DILocation(line: 94, column: 14, scope: !233)
!243 = !DILocation(line: 94, column: 5, scope: !233)
!244 = !DILocation(line: 95, column: 1, scope: !233)
!245 = distinct !DISubprogram(name: "nn_rep_events", scope: !7, file: !7, line: 97, type: !43, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !190)
!246 = !DILocalVariable(name: "self", arg: 1, scope: !245, file: !7, line: 97, type: !26)
!247 = !DILocation(line: 97, column: 47, scope: !245)
!248 = !DILocalVariable(name: "rep", scope: !245, file: !7, line: 99, type: !5)
!249 = !DILocation(line: 99, column: 20, scope: !245)
!250 = !DILocalVariable(name: "events", scope: !245, file: !7, line: 100, type: !32)
!251 = !DILocation(line: 100, column: 9, scope: !245)
!252 = !DILocation(line: 102, column: 11, scope: !245)
!253 = !DILocation(line: 102, column: 9, scope: !245)
!254 = !DILocation(line: 103, column: 31, scope: !245)
!255 = !DILocation(line: 103, column: 36, scope: !245)
!256 = !DILocation(line: 103, column: 41, scope: !245)
!257 = !DILocation(line: 103, column: 14, scope: !245)
!258 = !DILocation(line: 103, column: 12, scope: !245)
!259 = !DILocation(line: 104, column: 11, scope: !260)
!260 = distinct !DILexicalBlock(scope: !245, file: !7, line: 104, column: 9)
!261 = !DILocation(line: 104, column: 16, scope: !260)
!262 = !DILocation(line: 104, column: 22, scope: !260)
!263 = !DILocation(line: 104, column: 9, scope: !245)
!264 = !DILocation(line: 105, column: 16, scope: !260)
!265 = !DILocation(line: 105, column: 9, scope: !260)
!266 = !DILocation(line: 106, column: 12, scope: !245)
!267 = !DILocation(line: 106, column: 5, scope: !245)
!268 = distinct !DISubprogram(name: "nn_rep_send", scope: !7, file: !7, line: 109, type: !47, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !190)
!269 = !DILocalVariable(name: "self", arg: 1, scope: !268, file: !7, line: 109, type: !26)
!270 = !DILocation(line: 109, column: 45, scope: !268)
!271 = !DILocalVariable(name: "msg", arg: 2, scope: !268, file: !7, line: 109, type: !49)
!272 = !DILocation(line: 109, column: 66, scope: !268)
!273 = !DILocalVariable(name: "rc", scope: !268, file: !7, line: 111, type: !32)
!274 = !DILocation(line: 111, column: 9, scope: !268)
!275 = !DILocalVariable(name: "rep", scope: !268, file: !7, line: 112, type: !5)
!276 = !DILocation(line: 112, column: 20, scope: !268)
!277 = !DILocation(line: 114, column: 11, scope: !268)
!278 = !DILocation(line: 114, column: 9, scope: !268)
!279 = !DILocation(line: 117, column: 9, scope: !280)
!280 = distinct !DILexicalBlock(scope: !268, file: !7, line: 117, column: 9)
!281 = !DILocation(line: 117, column: 9, scope: !268)
!282 = !DILocation(line: 118, column: 9, scope: !280)
!283 = !DILocation(line: 121, column: 5, scope: !268)
!284 = !DILocation(line: 121, column: 5, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !7, line: 121, column: 5)
!286 = distinct !DILexicalBlock(scope: !268, file: !7, line: 121, column: 5)
!287 = !DILocation(line: 121, column: 5, scope: !286)
!288 = !DILocation(line: 121, column: 5, scope: !289)
!289 = distinct !DILexicalBlock(scope: !285, file: !7, line: 121, column: 5)
!290 = !DILocation(line: 122, column: 24, scope: !268)
!291 = !DILocation(line: 122, column: 29, scope: !268)
!292 = !DILocation(line: 122, column: 5, scope: !268)
!293 = !DILocation(line: 123, column: 22, scope: !268)
!294 = !DILocation(line: 123, column: 27, scope: !268)
!295 = !DILocation(line: 123, column: 33, scope: !268)
!296 = !DILocation(line: 123, column: 38, scope: !268)
!297 = !DILocation(line: 123, column: 5, scope: !268)
!298 = !DILocation(line: 124, column: 5, scope: !268)
!299 = !DILocation(line: 124, column: 10, scope: !268)
!300 = !DILocation(line: 124, column: 16, scope: !268)
!301 = !DILocation(line: 128, column: 25, scope: !268)
!302 = !DILocation(line: 128, column: 30, scope: !268)
!303 = !DILocation(line: 128, column: 35, scope: !268)
!304 = !DILocation(line: 128, column: 45, scope: !268)
!305 = !DILocation(line: 128, column: 10, scope: !268)
!306 = !DILocation(line: 128, column: 8, scope: !268)
!307 = !DILocation(line: 129, column: 5, scope: !268)
!308 = !DILocation(line: 129, column: 5, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !7, line: 129, column: 5)
!310 = distinct !DILexicalBlock(scope: !268, file: !7, line: 129, column: 5)
!311 = !DILocation(line: 129, column: 5, scope: !310)
!312 = !DILocation(line: 129, column: 5, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !7, line: 129, column: 5)
!314 = !DILocation(line: 131, column: 5, scope: !268)
!315 = !DILocation(line: 132, column: 1, scope: !268)
!316 = distinct !DISubprogram(name: "nn_rep_recv", scope: !7, file: !7, line: 134, type: !47, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !190)
!317 = !DILocalVariable(name: "self", arg: 1, scope: !316, file: !7, line: 134, type: !26)
!318 = !DILocation(line: 134, column: 45, scope: !316)
!319 = !DILocalVariable(name: "msg", arg: 2, scope: !316, file: !7, line: 134, type: !49)
!320 = !DILocation(line: 134, column: 66, scope: !316)
!321 = !DILocalVariable(name: "rc", scope: !316, file: !7, line: 136, type: !32)
!322 = !DILocation(line: 136, column: 9, scope: !316)
!323 = !DILocalVariable(name: "rep", scope: !316, file: !7, line: 137, type: !5)
!324 = !DILocation(line: 137, column: 20, scope: !316)
!325 = !DILocation(line: 139, column: 11, scope: !316)
!326 = !DILocation(line: 139, column: 9, scope: !316)
!327 = !DILocation(line: 142, column: 9, scope: !328)
!328 = distinct !DILexicalBlock(scope: !316, file: !7, line: 142, column: 9)
!329 = !DILocation(line: 142, column: 9, scope: !316)
!330 = !DILocation(line: 143, column: 28, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !7, line: 142, column: 51)
!332 = !DILocation(line: 143, column: 33, scope: !331)
!333 = !DILocation(line: 143, column: 9, scope: !331)
!334 = !DILocation(line: 144, column: 9, scope: !331)
!335 = !DILocation(line: 144, column: 14, scope: !331)
!336 = !DILocation(line: 144, column: 20, scope: !331)
!337 = !DILocation(line: 145, column: 5, scope: !331)
!338 = !DILocation(line: 148, column: 25, scope: !316)
!339 = !DILocation(line: 148, column: 30, scope: !316)
!340 = !DILocation(line: 148, column: 35, scope: !316)
!341 = !DILocation(line: 148, column: 45, scope: !316)
!342 = !DILocation(line: 148, column: 10, scope: !316)
!343 = !DILocation(line: 148, column: 8, scope: !316)
!344 = !DILocation(line: 149, column: 9, scope: !345)
!345 = distinct !DILexicalBlock(scope: !316, file: !7, line: 149, column: 9)
!346 = !DILocation(line: 149, column: 9, scope: !316)
!347 = !DILocation(line: 150, column: 9, scope: !345)
!348 = !DILocation(line: 151, column: 5, scope: !316)
!349 = !DILocation(line: 151, column: 5, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !7, line: 151, column: 5)
!351 = distinct !DILexicalBlock(scope: !316, file: !7, line: 151, column: 5)
!352 = !DILocation(line: 151, column: 5, scope: !351)
!353 = !DILocation(line: 151, column: 5, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !7, line: 151, column: 5)
!355 = !DILocation(line: 154, column: 22, scope: !316)
!356 = !DILocation(line: 154, column: 27, scope: !316)
!357 = !DILocation(line: 154, column: 39, scope: !316)
!358 = !DILocation(line: 154, column: 44, scope: !316)
!359 = !DILocation(line: 154, column: 5, scope: !316)
!360 = !DILocation(line: 155, column: 24, scope: !316)
!361 = !DILocation(line: 155, column: 29, scope: !316)
!362 = !DILocation(line: 155, column: 5, scope: !316)
!363 = !DILocation(line: 156, column: 5, scope: !316)
!364 = !DILocation(line: 156, column: 10, scope: !316)
!365 = !DILocation(line: 156, column: 16, scope: !316)
!366 = !DILocation(line: 158, column: 5, scope: !316)
!367 = !DILocation(line: 159, column: 1, scope: !316)
!368 = distinct !DISubprogram(name: "nn_rep_term", scope: !7, file: !7, line: 80, type: !369, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !190)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !5}
!371 = !DILocalVariable(name: "self", arg: 1, scope: !368, file: !7, line: 80, type: !5)
!372 = !DILocation(line: 80, column: 41, scope: !368)
!373 = !DILocation(line: 82, column: 9, scope: !374)
!374 = distinct !DILexicalBlock(scope: !368, file: !7, line: 82, column: 9)
!375 = !DILocation(line: 82, column: 15, scope: !374)
!376 = !DILocation(line: 82, column: 21, scope: !374)
!377 = !DILocation(line: 82, column: 9, scope: !368)
!378 = !DILocation(line: 83, column: 28, scope: !374)
!379 = !DILocation(line: 83, column: 34, scope: !374)
!380 = !DILocation(line: 83, column: 9, scope: !374)
!381 = !DILocation(line: 84, column: 20, scope: !368)
!382 = !DILocation(line: 84, column: 26, scope: !368)
!383 = !DILocation(line: 84, column: 5, scope: !368)
!384 = !DILocation(line: 85, column: 1, scope: !368)
