; ModuleID = './src/protocols/survey/respondent.c'
source_filename = "./src/protocols/survey/respondent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_sockbase_vfptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nn_respondent = type { %struct.nn_xrespondent, i32, i32 }
%struct.nn_xrespondent = type { %struct.nn_sockbase, %struct.nn_excl }
%struct.nn_sockbase = type { ptr, ptr }
%struct.nn_excl = type { ptr, ptr, ptr }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }

@nn_respondent_socktype_struct = internal global %struct.nn_socktype { i32 1, i32 97, i32 0, ptr @nn_respondent_create, ptr @nn_xrespondent_ispeer, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !0
@nn_respondent_socktype = dso_local global ptr @nn_respondent_socktype_struct, align 8, !dbg !101
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !125
@.str.1 = private unnamed_addr constant [36 x i8] c"./src/protocols/survey/respondent.c\00", align 1, !dbg !130
@nn_respondent_sockbase_vfptr = internal constant %struct.nn_sockbase_vfptr { ptr null, ptr @nn_respondent_destroy, ptr @nn_xrespondent_add, ptr @nn_xrespondent_rm, ptr @nn_xrespondent_in, ptr @nn_xrespondent_out, ptr @nn_respondent_events, ptr @nn_respondent_send, ptr @nn_respondent_recv, ptr @nn_xrespondent_setopt, ptr @nn_xrespondent_getopt }, align 8, !dbg !135
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !137
@.str.3 = private unnamed_addr constant [34 x i8] c"nn_chunkref_size (&msg->hdr) == 0\00", align 1, !dbg !142
@.str.4 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !147
@.str.5 = private unnamed_addr constant [50 x i8] c"nn_chunkref_size (&msg->hdr) == sizeof (uint32_t)\00", align 1, !dbg !152

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_respondent_create(ptr noundef %0, ptr noundef %1) #0 !dbg !165 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !167, metadata !DIExpression()), !dbg !168
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata ptr %5, metadata !171, metadata !DIExpression()), !dbg !172
  %6 = call ptr @nn_alloc_(i64 noundef 48), !dbg !173
  store ptr %6, ptr %5, align 8, !dbg !174
  br label %7, !dbg !175

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !dbg !176
  %9 = icmp ne ptr %8, null, !dbg !176
  %10 = xor i1 %9, true, !dbg !176
  %11 = zext i1 %10 to i32, !dbg !176
  %12 = sext i32 %11 to i64, !dbg !176
  %13 = icmp ne i64 %12, 0, !dbg !176
  br i1 %13, label %14, label %17, !dbg !179

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !180
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 171), !dbg !180
  call void @nn_err_abort() #4, !dbg !180
  unreachable, !dbg !180

17:                                               ; preds = %7
  br label %18, !dbg !179

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !182
  %20 = load ptr, ptr %3, align 8, !dbg !183
  call void @nn_respondent_init(ptr noundef %19, ptr noundef @nn_respondent_sockbase_vfptr, ptr noundef %20), !dbg !184
  %21 = load ptr, ptr %5, align 8, !dbg !185
  %22 = getelementptr inbounds %struct.nn_respondent, ptr %21, i32 0, i32 0, !dbg !186
  %23 = getelementptr inbounds %struct.nn_xrespondent, ptr %22, i32 0, i32 0, !dbg !187
  %24 = load ptr, ptr %4, align 8, !dbg !188
  store ptr %23, ptr %24, align 8, !dbg !189
  ret i32 0, !dbg !190
}

declare i32 @nn_xrespondent_ispeer(i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare ptr @nn_alloc_(i64 noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_respondent_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !191 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !194, metadata !DIExpression()), !dbg !195
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !196, metadata !DIExpression()), !dbg !197
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !198, metadata !DIExpression()), !dbg !199
  %7 = load ptr, ptr %4, align 8, !dbg !200
  %8 = getelementptr inbounds %struct.nn_respondent, ptr %7, i32 0, i32 0, !dbg !201
  %9 = load ptr, ptr %5, align 8, !dbg !202
  %10 = load ptr, ptr %6, align 8, !dbg !203
  call void @nn_xrespondent_init(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !204
  %11 = load ptr, ptr %4, align 8, !dbg !205
  %12 = getelementptr inbounds %struct.nn_respondent, ptr %11, i32 0, i32 2, !dbg !206
  store i32 0, ptr %12, align 4, !dbg !207
  ret void, !dbg !208
}

declare void @nn_xrespondent_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_respondent_destroy(ptr noundef %0) #0 !dbg !209 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata ptr %3, metadata !212, metadata !DIExpression()), !dbg !213
  %4 = load ptr, ptr %2, align 8, !dbg !214
  %5 = icmp ne ptr %4, null, !dbg !214
  br i1 %5, label %6, label %9, !dbg !214

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !214
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !214
  br label %10, !dbg !214

9:                                                ; preds = %1
  br label %10, !dbg !214

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !214
  store ptr %11, ptr %3, align 8, !dbg !215
  %12 = load ptr, ptr %3, align 8, !dbg !216
  call void @nn_respondent_term(ptr noundef %12), !dbg !217
  %13 = load ptr, ptr %3, align 8, !dbg !218
  call void @nn_free(ptr noundef %13), !dbg !219
  ret void, !dbg !220
}

declare i32 @nn_xrespondent_add(ptr noundef, ptr noundef) #1

declare void @nn_xrespondent_rm(ptr noundef, ptr noundef) #1

declare void @nn_xrespondent_in(ptr noundef, ptr noundef) #1

declare void @nn_xrespondent_out(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_respondent_events(ptr noundef %0) #0 !dbg !221 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !222, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata ptr %3, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.declare(metadata ptr %4, metadata !226, metadata !DIExpression()), !dbg !227
  %5 = load ptr, ptr %2, align 8, !dbg !228
  %6 = icmp ne ptr %5, null, !dbg !228
  br i1 %6, label %7, label %10, !dbg !228

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !228
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !228
  br label %11, !dbg !228

10:                                               ; preds = %1
  br label %11, !dbg !228

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !228
  store ptr %12, ptr %4, align 8, !dbg !229
  %13 = load ptr, ptr %4, align 8, !dbg !230
  %14 = getelementptr inbounds %struct.nn_respondent, ptr %13, i32 0, i32 0, !dbg !231
  %15 = getelementptr inbounds %struct.nn_xrespondent, ptr %14, i32 0, i32 0, !dbg !232
  %16 = call i32 @nn_xrespondent_events(ptr noundef %15), !dbg !233
  store i32 %16, ptr %3, align 4, !dbg !234
  %17 = load ptr, ptr %4, align 8, !dbg !235
  %18 = getelementptr inbounds %struct.nn_respondent, ptr %17, i32 0, i32 2, !dbg !237
  %19 = load i32, ptr %18, align 4, !dbg !237
  %20 = and i32 %19, 1, !dbg !238
  %21 = icmp ne i32 %20, 0, !dbg !238
  br i1 %21, label %25, label %22, !dbg !239

22:                                               ; preds = %11
  %23 = load i32, ptr %3, align 4, !dbg !240
  %24 = and i32 %23, -3, !dbg !240
  store i32 %24, ptr %3, align 4, !dbg !240
  br label %25, !dbg !241

25:                                               ; preds = %22, %11
  %26 = load i32, ptr %3, align 4, !dbg !242
  ret i32 %26, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_respondent_send(ptr noundef %0, ptr noundef %1) #0 !dbg !244 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !245, metadata !DIExpression()), !dbg !246
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata ptr %6, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata ptr %7, metadata !251, metadata !DIExpression()), !dbg !252
  %8 = load ptr, ptr %4, align 8, !dbg !253
  %9 = icmp ne ptr %8, null, !dbg !253
  br i1 %9, label %10, label %13, !dbg !253

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !253
  %12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !253
  br label %14, !dbg !253

13:                                               ; preds = %2
  br label %14, !dbg !253

14:                                               ; preds = %13, %10
  %15 = phi ptr [ %12, %10 ], [ null, %13 ], !dbg !253
  store ptr %15, ptr %7, align 8, !dbg !254
  %16 = load ptr, ptr %7, align 8, !dbg !255
  %17 = getelementptr inbounds %struct.nn_respondent, ptr %16, i32 0, i32 2, !dbg !255
  %18 = load i32, ptr %17, align 4, !dbg !255
  %19 = and i32 %18, 1, !dbg !255
  %20 = icmp ne i32 %19, 0, !dbg !255
  %21 = xor i1 %20, true, !dbg !255
  %22 = zext i1 %21 to i32, !dbg !255
  %23 = sext i32 %22 to i64, !dbg !255
  %24 = icmp ne i64 %23, 0, !dbg !255
  br i1 %24, label %25, label %26, !dbg !257

25:                                               ; preds = %14
  store i32 -156384766, ptr %3, align 4, !dbg !258
  br label %85, !dbg !258

26:                                               ; preds = %14
  br label %27, !dbg !259

27:                                               ; preds = %26
  %28 = load ptr, ptr %5, align 8, !dbg !260
  %29 = getelementptr inbounds %struct.nn_msg, ptr %28, i32 0, i32 0, !dbg !260
  %30 = call i64 @nn_chunkref_size(ptr noundef %29), !dbg !260
  %31 = icmp eq i64 %30, 0, !dbg !260
  %32 = xor i1 %31, true, !dbg !260
  %33 = zext i1 %32 to i32, !dbg !260
  %34 = sext i32 %33 to i64, !dbg !260
  %35 = icmp ne i64 %34, 0, !dbg !260
  br i1 %35, label %36, label %39, !dbg !263

36:                                               ; preds = %27
  %37 = load ptr, ptr @stderr, align 8, !dbg !264
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 118), !dbg !264
  call void @nn_err_abort() #4, !dbg !264
  unreachable, !dbg !264

39:                                               ; preds = %27
  br label %40, !dbg !263

40:                                               ; preds = %39
  %41 = load ptr, ptr %5, align 8, !dbg !266
  %42 = getelementptr inbounds %struct.nn_msg, ptr %41, i32 0, i32 0, !dbg !267
  call void @nn_chunkref_term(ptr noundef %42), !dbg !268
  %43 = load ptr, ptr %5, align 8, !dbg !269
  %44 = getelementptr inbounds %struct.nn_msg, ptr %43, i32 0, i32 0, !dbg !270
  call void @nn_chunkref_init(ptr noundef %44, i64 noundef 4), !dbg !271
  %45 = load ptr, ptr %5, align 8, !dbg !272
  %46 = getelementptr inbounds %struct.nn_msg, ptr %45, i32 0, i32 0, !dbg !273
  %47 = call ptr @nn_chunkref_data(ptr noundef %46), !dbg !274
  %48 = load ptr, ptr %7, align 8, !dbg !275
  %49 = getelementptr inbounds %struct.nn_respondent, ptr %48, i32 0, i32 1, !dbg !276
  %50 = load i32, ptr %49, align 8, !dbg !276
  call void @nn_putl(ptr noundef %47, i32 noundef %50), !dbg !277
  %51 = load ptr, ptr %7, align 8, !dbg !278
  %52 = getelementptr inbounds %struct.nn_respondent, ptr %51, i32 0, i32 0, !dbg !279
  %53 = getelementptr inbounds %struct.nn_xrespondent, ptr %52, i32 0, i32 0, !dbg !280
  %54 = load ptr, ptr %5, align 8, !dbg !281
  %55 = call i32 @nn_xrespondent_send(ptr noundef %53, ptr noundef %54), !dbg !282
  store i32 %55, ptr %6, align 4, !dbg !283
  %56 = load i32, ptr %6, align 4, !dbg !284
  %57 = icmp eq i32 %56, -11, !dbg !284
  %58 = zext i1 %57 to i32, !dbg !284
  %59 = sext i32 %58 to i64, !dbg !284
  %60 = icmp ne i64 %59, 0, !dbg !284
  br i1 %60, label %61, label %63, !dbg !286

61:                                               ; preds = %40
  %62 = load ptr, ptr %5, align 8, !dbg !287
  call void @nn_msg_term(ptr noundef %62), !dbg !289
  store i32 -11, ptr %3, align 4, !dbg !290
  br label %85, !dbg !290

63:                                               ; preds = %40
  br label %64, !dbg !291

64:                                               ; preds = %63
  %65 = load i32, ptr %6, align 4, !dbg !292
  %66 = icmp eq i32 %65, 0, !dbg !292
  %67 = xor i1 %66, true, !dbg !292
  %68 = zext i1 %67 to i32, !dbg !292
  %69 = sext i32 %68 to i64, !dbg !292
  %70 = icmp ne i64 %69, 0, !dbg !292
  br i1 %70, label %71, label %79, !dbg !295

71:                                               ; preds = %64
  %72 = load ptr, ptr @stderr, align 8, !dbg !296
  %73 = load i32, ptr %6, align 4, !dbg !296
  %74 = sub nsw i32 0, %73, !dbg !296
  %75 = call ptr @nn_err_strerror(i32 noundef %74), !dbg !296
  %76 = load i32, ptr %6, align 4, !dbg !296
  %77 = sub nsw i32 0, %76, !dbg !296
  %78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef @.str.4, ptr noundef %75, i32 noundef %77, ptr noundef @.str.1, i32 noundef 130), !dbg !296
  call void @nn_err_abort() #4, !dbg !296
  unreachable, !dbg !296

79:                                               ; preds = %64
  br label %80, !dbg !295

80:                                               ; preds = %79
  %81 = load ptr, ptr %7, align 8, !dbg !298
  %82 = getelementptr inbounds %struct.nn_respondent, ptr %81, i32 0, i32 2, !dbg !299
  %83 = load i32, ptr %82, align 4, !dbg !300
  %84 = and i32 %83, -2, !dbg !300
  store i32 %84, ptr %82, align 4, !dbg !300
  store i32 0, ptr %3, align 4, !dbg !301
  br label %85, !dbg !301

85:                                               ; preds = %80, %61, %25
  %86 = load i32, ptr %3, align 4, !dbg !302
  ret i32 %86, !dbg !302
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_respondent_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !303 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !304, metadata !DIExpression()), !dbg !305
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !306, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.declare(metadata ptr %6, metadata !308, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.declare(metadata ptr %7, metadata !310, metadata !DIExpression()), !dbg !311
  %8 = load ptr, ptr %4, align 8, !dbg !312
  %9 = icmp ne ptr %8, null, !dbg !312
  br i1 %9, label %10, label %13, !dbg !312

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !312
  %12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !312
  br label %14, !dbg !312

13:                                               ; preds = %2
  br label %14, !dbg !312

14:                                               ; preds = %13, %10
  %15 = phi ptr [ %12, %10 ], [ null, %13 ], !dbg !312
  store ptr %15, ptr %7, align 8, !dbg !313
  %16 = load ptr, ptr %7, align 8, !dbg !314
  %17 = getelementptr inbounds %struct.nn_respondent, ptr %16, i32 0, i32 2, !dbg !315
  %18 = load i32, ptr %17, align 4, !dbg !316
  %19 = and i32 %18, -2, !dbg !316
  store i32 %19, ptr %17, align 4, !dbg !316
  %20 = load ptr, ptr %7, align 8, !dbg !317
  %21 = getelementptr inbounds %struct.nn_respondent, ptr %20, i32 0, i32 0, !dbg !318
  %22 = getelementptr inbounds %struct.nn_xrespondent, ptr %21, i32 0, i32 0, !dbg !319
  %23 = load ptr, ptr %5, align 8, !dbg !320
  %24 = call i32 @nn_xrespondent_recv(ptr noundef %22, ptr noundef %23), !dbg !321
  store i32 %24, ptr %6, align 4, !dbg !322
  %25 = load i32, ptr %6, align 4, !dbg !323
  %26 = icmp eq i32 %25, -11, !dbg !323
  %27 = zext i1 %26 to i32, !dbg !323
  %28 = sext i32 %27 to i64, !dbg !323
  %29 = icmp ne i64 %28, 0, !dbg !323
  br i1 %29, label %30, label %31, !dbg !325

30:                                               ; preds = %14
  store i32 -11, ptr %3, align 4, !dbg !326
  br label %77, !dbg !326

31:                                               ; preds = %14
  br label %32, !dbg !327

32:                                               ; preds = %31
  %33 = load i32, ptr %6, align 4, !dbg !328
  %34 = icmp eq i32 %33, 0, !dbg !328
  %35 = xor i1 %34, true, !dbg !328
  %36 = zext i1 %35 to i32, !dbg !328
  %37 = sext i32 %36 to i64, !dbg !328
  %38 = icmp ne i64 %37, 0, !dbg !328
  br i1 %38, label %39, label %47, !dbg !331

39:                                               ; preds = %32
  %40 = load ptr, ptr @stderr, align 8, !dbg !332
  %41 = load i32, ptr %6, align 4, !dbg !332
  %42 = sub nsw i32 0, %41, !dbg !332
  %43 = call ptr @nn_err_strerror(i32 noundef %42), !dbg !332
  %44 = load i32, ptr %6, align 4, !dbg !332
  %45 = sub nsw i32 0, %44, !dbg !332
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.4, ptr noundef %43, i32 noundef %45, ptr noundef @.str.1, i32 noundef 152), !dbg !332
  call void @nn_err_abort() #4, !dbg !332
  unreachable, !dbg !332

47:                                               ; preds = %32
  br label %48, !dbg !331

48:                                               ; preds = %47
  br label %49, !dbg !334

49:                                               ; preds = %48
  %50 = load ptr, ptr %5, align 8, !dbg !335
  %51 = getelementptr inbounds %struct.nn_msg, ptr %50, i32 0, i32 0, !dbg !335
  %52 = call i64 @nn_chunkref_size(ptr noundef %51), !dbg !335
  %53 = icmp eq i64 %52, 4, !dbg !335
  %54 = xor i1 %53, true, !dbg !335
  %55 = zext i1 %54 to i32, !dbg !335
  %56 = sext i32 %55 to i64, !dbg !335
  %57 = icmp ne i64 %56, 0, !dbg !335
  br i1 %57, label %58, label %61, !dbg !338

58:                                               ; preds = %49
  %59 = load ptr, ptr @stderr, align 8, !dbg !339
  %60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 155), !dbg !339
  call void @nn_err_abort() #4, !dbg !339
  unreachable, !dbg !339

61:                                               ; preds = %49
  br label %62, !dbg !338

62:                                               ; preds = %61
  %63 = load ptr, ptr %5, align 8, !dbg !341
  %64 = getelementptr inbounds %struct.nn_msg, ptr %63, i32 0, i32 0, !dbg !342
  %65 = call ptr @nn_chunkref_data(ptr noundef %64), !dbg !343
  %66 = call i32 @nn_getl(ptr noundef %65), !dbg !344
  %67 = load ptr, ptr %7, align 8, !dbg !345
  %68 = getelementptr inbounds %struct.nn_respondent, ptr %67, i32 0, i32 1, !dbg !346
  store i32 %66, ptr %68, align 8, !dbg !347
  %69 = load ptr, ptr %5, align 8, !dbg !348
  %70 = getelementptr inbounds %struct.nn_msg, ptr %69, i32 0, i32 0, !dbg !349
  call void @nn_chunkref_term(ptr noundef %70), !dbg !350
  %71 = load ptr, ptr %5, align 8, !dbg !351
  %72 = getelementptr inbounds %struct.nn_msg, ptr %71, i32 0, i32 0, !dbg !352
  call void @nn_chunkref_init(ptr noundef %72, i64 noundef 0), !dbg !353
  %73 = load ptr, ptr %7, align 8, !dbg !354
  %74 = getelementptr inbounds %struct.nn_respondent, ptr %73, i32 0, i32 2, !dbg !355
  %75 = load i32, ptr %74, align 4, !dbg !356
  %76 = or i32 %75, 1, !dbg !356
  store i32 %76, ptr %74, align 4, !dbg !356
  store i32 0, ptr %3, align 4, !dbg !357
  br label %77, !dbg !357

77:                                               ; preds = %62, %30
  %78 = load i32, ptr %3, align 4, !dbg !358
  ret i32 %78, !dbg !358
}

declare i32 @nn_xrespondent_setopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) #1

declare i32 @nn_xrespondent_getopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_respondent_term(ptr noundef %0) #0 !dbg !359 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !362, metadata !DIExpression()), !dbg !363
  %3 = load ptr, ptr %2, align 8, !dbg !364
  %4 = getelementptr inbounds %struct.nn_respondent, ptr %3, i32 0, i32 0, !dbg !365
  call void @nn_xrespondent_term(ptr noundef %4), !dbg !366
  ret void, !dbg !367
}

declare void @nn_free(ptr noundef) #1

declare void @nn_xrespondent_term(ptr noundef) #1

declare i32 @nn_xrespondent_events(ptr noundef) #1

declare i64 @nn_chunkref_size(ptr noundef) #1

declare void @nn_chunkref_term(ptr noundef) #1

declare void @nn_chunkref_init(ptr noundef, i64 noundef) #1

declare void @nn_putl(ptr noundef, i32 noundef) #1

declare ptr @nn_chunkref_data(ptr noundef) #1

declare i32 @nn_xrespondent_send(ptr noundef, ptr noundef) #1

declare void @nn_msg_term(ptr noundef) #1

declare ptr @nn_err_strerror(i32 noundef) #1

declare i32 @nn_xrespondent_recv(ptr noundef, ptr noundef) #1

declare i32 @nn_getl(ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_respondent_socktype_struct", scope: !2, file: !7, line: 178, type: !104, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !100, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/protocols/survey/respondent.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "27feeff3b062c3d661b537a9e99d88dd")
!4 = !{!5, !98, !32}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_respondent", file: !7, line: 41, size: 384, elements: !8)
!7 = !DIFile(filename: "./src/protocols/survey/respondent.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "27feeff3b062c3d661b537a9e99d88dd")
!8 = !{!9, !93, !97}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "xrespondent", scope: !6, file: !7, line: 42, baseType: !10, size: 320)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xrespondent", file: !11, line: 32, size: 320, elements: !12)
!11 = !DIFile(filename: "./src/protocols/survey/xrespondent.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "5c624dc14d3da1cc6b44dc29a5bcdc99")
!12 = !{!13, !86}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !10, file: !11, line: 33, baseType: !14, size: 128)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !15, line: 123, size: 128, elements: !16)
!15 = !DIFile(filename: "./src/protocols/survey/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
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
!86 = !DIDerivedType(tag: DW_TAG_member, name: "excl", scope: !10, file: !11, line: 34, baseType: !87, size: 192, offset: 128)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_excl", file: !88, line: 33, size: 192, elements: !89)
!88 = !DIFile(filename: "./src/protocols/survey/../utils/excl.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "f0be91890d61f5b1f69020e9c0441656")
!89 = !{!90, !91, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !87, file: !88, line: 37, baseType: !33, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "inpipe", scope: !87, file: !88, line: 40, baseType: !33, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "outpipe", scope: !87, file: !88, line: 43, baseType: !33, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "surveyid", scope: !6, file: !7, line: 43, baseType: !94, size: 32, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !60, line: 26, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !62, line: 42, baseType: !96)
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6, file: !7, line: 44, baseType: !94, size: 32, offset: 352)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!100 = !{!101, !0, !125, !130, !135, !137, !142, !147, !152}
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "nn_respondent_socktype", scope: !2, file: !7, line: 187, type: !103, isLocal: false, isDefinition: true)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !15, line: 160, size: 384, elements: !105)
!105 = !{!106, !107, !108, !109, !114, !118}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !104, file: !15, line: 163, baseType: !32, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !104, file: !15, line: 164, baseType: !32, size: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !104, file: !15, line: 167, baseType: !32, size: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !104, file: !15, line: 173, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!32, !81, !113}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !104, file: !15, line: 179, baseType: !115, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!32, !32}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !104, file: !15, line: 183, baseType: !119, size: 128, offset: 256)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !120, line: 26, size: 128, elements: !121)
!120 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!121 = !{!122, !124}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !120, line: 27, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !119, file: !120, line: 28, baseType: !123, size: 64, offset: 64)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !7, line: 171, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 184, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 23)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !7, line: 171, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 288, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 36)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "nn_respondent_sockbase_vfptr", scope: !2, file: !7, line: 57, type: !19, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !7, line: 118, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 240, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 30)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !7, line: 118, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 272, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 34)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !7, line: 130, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 136, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 17)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !7, line: 155, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 400, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 50)
!157 = !{i32 7, !"Dwarf Version", i32 5}
!158 = !{i32 2, !"Debug Info Version", i32 3}
!159 = !{i32 1, !"wchar_size", i32 4}
!160 = !{i32 8, !"PIC Level", i32 2}
!161 = !{i32 7, !"PIE Level", i32 2}
!162 = !{i32 7, !"uwtable", i32 2}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 16.0.0"}
!165 = distinct !DISubprogram(name: "nn_respondent_create", scope: !7, file: !7, line: 166, type: !111, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!166 = !{}
!167 = !DILocalVariable(name: "hint", arg: 1, scope: !165, file: !7, line: 166, type: !81)
!168 = !DILocation(line: 166, column: 40, scope: !165)
!169 = !DILocalVariable(name: "sockbase", arg: 2, scope: !165, file: !7, line: 166, type: !113)
!170 = !DILocation(line: 166, column: 67, scope: !165)
!171 = !DILocalVariable(name: "self", scope: !165, file: !7, line: 168, type: !5)
!172 = !DILocation(line: 168, column: 27, scope: !165)
!173 = !DILocation(line: 170, column: 12, scope: !165)
!174 = !DILocation(line: 170, column: 10, scope: !165)
!175 = !DILocation(line: 171, column: 5, scope: !165)
!176 = !DILocation(line: 171, column: 5, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !7, line: 171, column: 5)
!178 = distinct !DILexicalBlock(scope: !165, file: !7, line: 171, column: 5)
!179 = !DILocation(line: 171, column: 5, scope: !178)
!180 = !DILocation(line: 171, column: 5, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !7, line: 171, column: 5)
!182 = !DILocation(line: 172, column: 25, scope: !165)
!183 = !DILocation(line: 172, column: 62, scope: !165)
!184 = !DILocation(line: 172, column: 5, scope: !165)
!185 = !DILocation(line: 173, column: 18, scope: !165)
!186 = !DILocation(line: 173, column: 24, scope: !165)
!187 = !DILocation(line: 173, column: 36, scope: !165)
!188 = !DILocation(line: 173, column: 6, scope: !165)
!189 = !DILocation(line: 173, column: 15, scope: !165)
!190 = !DILocation(line: 175, column: 5, scope: !165)
!191 = distinct !DISubprogram(name: "nn_respondent_init", scope: !7, file: !7, line: 71, type: !192, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !5, !18, !81}
!194 = !DILocalVariable(name: "self", arg: 1, scope: !191, file: !7, line: 71, type: !5)
!195 = !DILocation(line: 71, column: 55, scope: !191)
!196 = !DILocalVariable(name: "vfptr", arg: 2, scope: !191, file: !7, line: 72, type: !18)
!197 = !DILocation(line: 72, column: 37, scope: !191)
!198 = !DILocalVariable(name: "hint", arg: 3, scope: !191, file: !7, line: 72, type: !81)
!199 = !DILocation(line: 72, column: 50, scope: !191)
!200 = !DILocation(line: 74, column: 27, scope: !191)
!201 = !DILocation(line: 74, column: 33, scope: !191)
!202 = !DILocation(line: 74, column: 46, scope: !191)
!203 = !DILocation(line: 74, column: 53, scope: !191)
!204 = !DILocation(line: 74, column: 5, scope: !191)
!205 = !DILocation(line: 75, column: 5, scope: !191)
!206 = !DILocation(line: 75, column: 11, scope: !191)
!207 = !DILocation(line: 75, column: 17, scope: !191)
!208 = !DILocation(line: 76, column: 1, scope: !191)
!209 = distinct !DISubprogram(name: "nn_respondent_destroy", scope: !7, file: !7, line: 83, type: !24, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!210 = !DILocalVariable(name: "self", arg: 1, scope: !209, file: !7, line: 83, type: !26)
!211 = !DILocation(line: 83, column: 49, scope: !209)
!212 = !DILocalVariable(name: "respondent", scope: !209, file: !7, line: 85, type: !5)
!213 = !DILocation(line: 85, column: 27, scope: !209)
!214 = !DILocation(line: 87, column: 18, scope: !209)
!215 = !DILocation(line: 87, column: 16, scope: !209)
!216 = !DILocation(line: 89, column: 25, scope: !209)
!217 = !DILocation(line: 89, column: 5, scope: !209)
!218 = !DILocation(line: 90, column: 14, scope: !209)
!219 = !DILocation(line: 90, column: 5, scope: !209)
!220 = !DILocation(line: 91, column: 1, scope: !209)
!221 = distinct !DISubprogram(name: "nn_respondent_events", scope: !7, file: !7, line: 93, type: !43, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!222 = !DILocalVariable(name: "self", arg: 1, scope: !221, file: !7, line: 93, type: !26)
!223 = !DILocation(line: 93, column: 54, scope: !221)
!224 = !DILocalVariable(name: "events", scope: !221, file: !7, line: 95, type: !32)
!225 = !DILocation(line: 95, column: 9, scope: !221)
!226 = !DILocalVariable(name: "respondent", scope: !221, file: !7, line: 96, type: !5)
!227 = !DILocation(line: 96, column: 27, scope: !221)
!228 = !DILocation(line: 98, column: 18, scope: !221)
!229 = !DILocation(line: 98, column: 16, scope: !221)
!230 = !DILocation(line: 100, column: 38, scope: !221)
!231 = !DILocation(line: 100, column: 50, scope: !221)
!232 = !DILocation(line: 100, column: 62, scope: !221)
!233 = !DILocation(line: 100, column: 14, scope: !221)
!234 = !DILocation(line: 100, column: 12, scope: !221)
!235 = !DILocation(line: 101, column: 11, scope: !236)
!236 = distinct !DILexicalBlock(scope: !221, file: !7, line: 101, column: 9)
!237 = !DILocation(line: 101, column: 23, scope: !236)
!238 = !DILocation(line: 101, column: 29, scope: !236)
!239 = !DILocation(line: 101, column: 9, scope: !221)
!240 = !DILocation(line: 102, column: 16, scope: !236)
!241 = !DILocation(line: 102, column: 9, scope: !236)
!242 = !DILocation(line: 103, column: 12, scope: !221)
!243 = !DILocation(line: 103, column: 5, scope: !221)
!244 = distinct !DISubprogram(name: "nn_respondent_send", scope: !7, file: !7, line: 106, type: !47, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!245 = !DILocalVariable(name: "self", arg: 1, scope: !244, file: !7, line: 106, type: !26)
!246 = !DILocation(line: 106, column: 52, scope: !244)
!247 = !DILocalVariable(name: "msg", arg: 2, scope: !244, file: !7, line: 106, type: !49)
!248 = !DILocation(line: 106, column: 73, scope: !244)
!249 = !DILocalVariable(name: "rc", scope: !244, file: !7, line: 108, type: !32)
!250 = !DILocation(line: 108, column: 9, scope: !244)
!251 = !DILocalVariable(name: "respondent", scope: !244, file: !7, line: 109, type: !5)
!252 = !DILocation(line: 109, column: 27, scope: !244)
!253 = !DILocation(line: 111, column: 18, scope: !244)
!254 = !DILocation(line: 111, column: 16, scope: !244)
!255 = !DILocation(line: 114, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !244, file: !7, line: 114, column: 9)
!257 = !DILocation(line: 114, column: 9, scope: !244)
!258 = !DILocation(line: 115, column: 9, scope: !256)
!259 = !DILocation(line: 118, column: 5, scope: !244)
!260 = !DILocation(line: 118, column: 5, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !7, line: 118, column: 5)
!262 = distinct !DILexicalBlock(scope: !244, file: !7, line: 118, column: 5)
!263 = !DILocation(line: 118, column: 5, scope: !262)
!264 = !DILocation(line: 118, column: 5, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !7, line: 118, column: 5)
!266 = !DILocation(line: 119, column: 24, scope: !244)
!267 = !DILocation(line: 119, column: 29, scope: !244)
!268 = !DILocation(line: 119, column: 5, scope: !244)
!269 = !DILocation(line: 120, column: 24, scope: !244)
!270 = !DILocation(line: 120, column: 29, scope: !244)
!271 = !DILocation(line: 120, column: 5, scope: !244)
!272 = !DILocation(line: 121, column: 33, scope: !244)
!273 = !DILocation(line: 121, column: 38, scope: !244)
!274 = !DILocation(line: 121, column: 14, scope: !244)
!275 = !DILocation(line: 121, column: 44, scope: !244)
!276 = !DILocation(line: 121, column: 56, scope: !244)
!277 = !DILocation(line: 121, column: 5, scope: !244)
!278 = !DILocation(line: 125, column: 32, scope: !244)
!279 = !DILocation(line: 125, column: 44, scope: !244)
!280 = !DILocation(line: 125, column: 56, scope: !244)
!281 = !DILocation(line: 125, column: 66, scope: !244)
!282 = !DILocation(line: 125, column: 10, scope: !244)
!283 = !DILocation(line: 125, column: 8, scope: !244)
!284 = !DILocation(line: 126, column: 9, scope: !285)
!285 = distinct !DILexicalBlock(scope: !244, file: !7, line: 126, column: 9)
!286 = !DILocation(line: 126, column: 9, scope: !244)
!287 = !DILocation(line: 127, column: 22, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !7, line: 126, column: 34)
!289 = !DILocation(line: 127, column: 9, scope: !288)
!290 = !DILocation(line: 128, column: 9, scope: !288)
!291 = !DILocation(line: 130, column: 5, scope: !244)
!292 = !DILocation(line: 130, column: 5, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !7, line: 130, column: 5)
!294 = distinct !DILexicalBlock(scope: !244, file: !7, line: 130, column: 5)
!295 = !DILocation(line: 130, column: 5, scope: !294)
!296 = !DILocation(line: 130, column: 5, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !7, line: 130, column: 5)
!298 = !DILocation(line: 133, column: 5, scope: !244)
!299 = !DILocation(line: 133, column: 17, scope: !244)
!300 = !DILocation(line: 133, column: 23, scope: !244)
!301 = !DILocation(line: 135, column: 5, scope: !244)
!302 = !DILocation(line: 136, column: 1, scope: !244)
!303 = distinct !DISubprogram(name: "nn_respondent_recv", scope: !7, file: !7, line: 138, type: !47, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!304 = !DILocalVariable(name: "self", arg: 1, scope: !303, file: !7, line: 138, type: !26)
!305 = !DILocation(line: 138, column: 52, scope: !303)
!306 = !DILocalVariable(name: "msg", arg: 2, scope: !303, file: !7, line: 138, type: !49)
!307 = !DILocation(line: 138, column: 73, scope: !303)
!308 = !DILocalVariable(name: "rc", scope: !303, file: !7, line: 140, type: !32)
!309 = !DILocation(line: 140, column: 9, scope: !303)
!310 = !DILocalVariable(name: "respondent", scope: !303, file: !7, line: 141, type: !5)
!311 = !DILocation(line: 141, column: 27, scope: !303)
!312 = !DILocation(line: 143, column: 18, scope: !303)
!313 = !DILocation(line: 143, column: 16, scope: !303)
!314 = !DILocation(line: 146, column: 5, scope: !303)
!315 = !DILocation(line: 146, column: 17, scope: !303)
!316 = !DILocation(line: 146, column: 23, scope: !303)
!317 = !DILocation(line: 149, column: 32, scope: !303)
!318 = !DILocation(line: 149, column: 44, scope: !303)
!319 = !DILocation(line: 149, column: 56, scope: !303)
!320 = !DILocation(line: 149, column: 66, scope: !303)
!321 = !DILocation(line: 149, column: 10, scope: !303)
!322 = !DILocation(line: 149, column: 8, scope: !303)
!323 = !DILocation(line: 150, column: 9, scope: !324)
!324 = distinct !DILexicalBlock(scope: !303, file: !7, line: 150, column: 9)
!325 = !DILocation(line: 150, column: 9, scope: !303)
!326 = !DILocation(line: 151, column: 9, scope: !324)
!327 = !DILocation(line: 152, column: 5, scope: !303)
!328 = !DILocation(line: 152, column: 5, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !7, line: 152, column: 5)
!330 = distinct !DILexicalBlock(scope: !303, file: !7, line: 152, column: 5)
!331 = !DILocation(line: 152, column: 5, scope: !330)
!332 = !DILocation(line: 152, column: 5, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !7, line: 152, column: 5)
!334 = !DILocation(line: 155, column: 5, scope: !303)
!335 = !DILocation(line: 155, column: 5, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !7, line: 155, column: 5)
!337 = distinct !DILexicalBlock(scope: !303, file: !7, line: 155, column: 5)
!338 = !DILocation(line: 155, column: 5, scope: !337)
!339 = !DILocation(line: 155, column: 5, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !7, line: 155, column: 5)
!341 = !DILocation(line: 156, column: 56, scope: !303)
!342 = !DILocation(line: 156, column: 61, scope: !303)
!343 = !DILocation(line: 156, column: 37, scope: !303)
!344 = !DILocation(line: 156, column: 28, scope: !303)
!345 = !DILocation(line: 156, column: 5, scope: !303)
!346 = !DILocation(line: 156, column: 17, scope: !303)
!347 = !DILocation(line: 156, column: 26, scope: !303)
!348 = !DILocation(line: 157, column: 24, scope: !303)
!349 = !DILocation(line: 157, column: 29, scope: !303)
!350 = !DILocation(line: 157, column: 5, scope: !303)
!351 = !DILocation(line: 158, column: 24, scope: !303)
!352 = !DILocation(line: 158, column: 29, scope: !303)
!353 = !DILocation(line: 158, column: 5, scope: !303)
!354 = !DILocation(line: 161, column: 5, scope: !303)
!355 = !DILocation(line: 161, column: 17, scope: !303)
!356 = !DILocation(line: 161, column: 23, scope: !303)
!357 = !DILocation(line: 163, column: 5, scope: !303)
!358 = !DILocation(line: 164, column: 1, scope: !303)
!359 = distinct !DISubprogram(name: "nn_respondent_term", scope: !7, file: !7, line: 78, type: !360, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !5}
!362 = !DILocalVariable(name: "self", arg: 1, scope: !359, file: !7, line: 78, type: !5)
!363 = !DILocation(line: 78, column: 55, scope: !359)
!364 = !DILocation(line: 80, column: 27, scope: !359)
!365 = !DILocation(line: 80, column: 33, scope: !359)
!366 = !DILocation(line: 80, column: 5, scope: !359)
!367 = !DILocation(line: 81, column: 1, scope: !359)
