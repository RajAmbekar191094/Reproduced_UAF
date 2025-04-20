; ModuleID = './src/protocols/pubsub/pub.c'
source_filename = "./src/protocols/pubsub/pub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_sockbase_vfptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nn_pub = type { %struct.nn_sockbase, %struct.nn_dist }
%struct.nn_sockbase = type { ptr, ptr }
%struct.nn_dist = type { i64, %struct.nn_list }
%struct.nn_list = type { ptr, ptr }
%struct.nn_pub_data = type { %struct.nn_dist_data }
%struct.nn_dist_data = type { %struct.nn_list_item, ptr }

@nn_pub_socktype_struct = internal global %struct.nn_socktype { i32 1, i32 32, i32 1, ptr @nn_pub_create, ptr @nn_pub_ispeer, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !0
@nn_pub_socktype = dso_local global ptr @nn_pub_socktype_struct, align 8, !dbg !101
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !119
@.str.1 = private unnamed_addr constant [29 x i8] c"./src/protocols/pubsub/pub.c\00", align 1, !dbg !124
@nn_pub_sockbase_vfptr = internal constant %struct.nn_sockbase_vfptr { ptr null, ptr @nn_pub_destroy, ptr @nn_pub_add, ptr @nn_pub_rm, ptr @nn_pub_in, ptr @nn_pub_out, ptr @nn_pub_events, ptr @nn_pub_send, ptr null, ptr @nn_pub_setopt, ptr @nn_pub_getopt }, align 8, !dbg !129
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !131
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !136

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_pub_create(ptr noundef %0, ptr noundef %1) #0 !dbg !149 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !151, metadata !DIExpression()), !dbg !152
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata ptr %5, metadata !155, metadata !DIExpression()), !dbg !156
  %6 = call ptr @nn_alloc_(i64 noundef 40), !dbg !157
  store ptr %6, ptr %5, align 8, !dbg !158
  br label %7, !dbg !159

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !dbg !160
  %9 = icmp ne ptr %8, null, !dbg !160
  %10 = xor i1 %9, true, !dbg !160
  %11 = zext i1 %10 to i32, !dbg !160
  %12 = sext i32 %11 to i64, !dbg !160
  %13 = icmp ne i64 %12, 0, !dbg !160
  br i1 %13, label %14, label %17, !dbg !163

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !164
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 178), !dbg !164
  call void @nn_err_abort() #4, !dbg !164
  unreachable, !dbg !164

17:                                               ; preds = %7
  br label %18, !dbg !163

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !166
  %20 = load ptr, ptr %3, align 8, !dbg !167
  call void @nn_pub_init(ptr noundef %19, ptr noundef @nn_pub_sockbase_vfptr, ptr noundef %20), !dbg !168
  %21 = load ptr, ptr %5, align 8, !dbg !169
  %22 = getelementptr inbounds %struct.nn_pub, ptr %21, i32 0, i32 0, !dbg !170
  %23 = load ptr, ptr %4, align 8, !dbg !171
  store ptr %22, ptr %23, align 8, !dbg !172
  ret i32 0, !dbg !173
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_pub_ispeer(i32 noundef %0) #0 !dbg !174 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !175, metadata !DIExpression()), !dbg !176
  %3 = load i32, ptr %2, align 4, !dbg !177
  %4 = icmp eq i32 %3, 33, !dbg !178
  %5 = zext i1 %4 to i64, !dbg !177
  %6 = select i1 %4, i32 1, i32 0, !dbg !177
  ret i32 %6, !dbg !179
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_pub_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !180 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !183, metadata !DIExpression()), !dbg !184
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !185, metadata !DIExpression()), !dbg !186
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !187, metadata !DIExpression()), !dbg !188
  %7 = load ptr, ptr %4, align 8, !dbg !189
  %8 = getelementptr inbounds %struct.nn_pub, ptr %7, i32 0, i32 0, !dbg !190
  %9 = load ptr, ptr %5, align 8, !dbg !191
  %10 = load ptr, ptr %6, align 8, !dbg !192
  call void @nn_sockbase_init(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !193
  %11 = load ptr, ptr %4, align 8, !dbg !194
  %12 = getelementptr inbounds %struct.nn_pub, ptr %11, i32 0, i32 1, !dbg !195
  call void @nn_dist_init(ptr noundef %12), !dbg !196
  ret void, !dbg !197
}

declare void @nn_sockbase_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_dist_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_pub_destroy(ptr noundef %0) #0 !dbg !198 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata ptr %3, metadata !201, metadata !DIExpression()), !dbg !202
  %4 = load ptr, ptr %2, align 8, !dbg !203
  %5 = icmp ne ptr %4, null, !dbg !203
  br i1 %5, label %6, label %9, !dbg !203

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !203
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !203
  br label %10, !dbg !203

9:                                                ; preds = %1
  br label %10, !dbg !203

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !203
  store ptr %11, ptr %3, align 8, !dbg !204
  %12 = load ptr, ptr %3, align 8, !dbg !205
  call void @nn_pub_term(ptr noundef %12), !dbg !206
  %13 = load ptr, ptr %3, align 8, !dbg !207
  call void @nn_free(ptr noundef %13), !dbg !208
  ret void, !dbg !209
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_pub_add(ptr noundef %0, ptr noundef %1) #0 !dbg !210 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !211, metadata !DIExpression()), !dbg !212
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata ptr %5, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata ptr %6, metadata !217, metadata !DIExpression()), !dbg !226
  %7 = load ptr, ptr %3, align 8, !dbg !227
  %8 = icmp ne ptr %7, null, !dbg !227
  br i1 %8, label %9, label %12, !dbg !227

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !227
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !227
  br label %13, !dbg !227

12:                                               ; preds = %2
  br label %13, !dbg !227

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !227
  store ptr %14, ptr %5, align 8, !dbg !228
  %15 = call ptr @nn_alloc_(i64 noundef 24), !dbg !229
  store ptr %15, ptr %6, align 8, !dbg !230
  br label %16, !dbg !231

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8, !dbg !232
  %18 = icmp ne ptr %17, null, !dbg !232
  %19 = xor i1 %18, true, !dbg !232
  %20 = zext i1 %19 to i32, !dbg !232
  %21 = sext i32 %20 to i64, !dbg !232
  %22 = icmp ne i64 %21, 0, !dbg !232
  br i1 %22, label %23, label %26, !dbg !235

23:                                               ; preds = %16
  %24 = load ptr, ptr @stderr, align 8, !dbg !236
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 113), !dbg !236
  call void @nn_err_abort() #4, !dbg !236
  unreachable, !dbg !236

26:                                               ; preds = %16
  br label %27, !dbg !235

27:                                               ; preds = %26
  %28 = load ptr, ptr %5, align 8, !dbg !238
  %29 = getelementptr inbounds %struct.nn_pub, ptr %28, i32 0, i32 1, !dbg !239
  %30 = load ptr, ptr %4, align 8, !dbg !240
  %31 = load ptr, ptr %6, align 8, !dbg !241
  %32 = getelementptr inbounds %struct.nn_pub_data, ptr %31, i32 0, i32 0, !dbg !242
  call void @nn_dist_add(ptr noundef %29, ptr noundef %30, ptr noundef %32), !dbg !243
  %33 = load ptr, ptr %4, align 8, !dbg !244
  %34 = load ptr, ptr %6, align 8, !dbg !245
  call void @nn_pipe_setdata(ptr noundef %33, ptr noundef %34), !dbg !246
  ret i32 0, !dbg !247
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_pub_rm(ptr noundef %0, ptr noundef %1) #0 !dbg !248 {
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
  %18 = getelementptr inbounds %struct.nn_pub, ptr %17, i32 0, i32 1, !dbg !263
  %19 = load ptr, ptr %4, align 8, !dbg !264
  %20 = load ptr, ptr %6, align 8, !dbg !265
  %21 = getelementptr inbounds %struct.nn_pub_data, ptr %20, i32 0, i32 0, !dbg !266
  call void @nn_dist_rm(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !267
  %22 = load ptr, ptr %6, align 8, !dbg !268
  call void @nn_free(ptr noundef %22), !dbg !269
  ret void, !dbg !270
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_pub_in(ptr noundef %0, ptr noundef %1) #0 !dbg !271 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !272, metadata !DIExpression()), !dbg !273
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !274, metadata !DIExpression()), !dbg !275
  br label %5, !dbg !276

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !dbg !277
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 136), !dbg !277
  call void @nn_err_abort() #4, !dbg !277
  unreachable, !dbg !277

8:                                                ; No predecessors!
  ret void, !dbg !281
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_pub_out(ptr noundef %0, ptr noundef %1) #0 !dbg !282 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !283, metadata !DIExpression()), !dbg !284
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata ptr %5, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata ptr %6, metadata !289, metadata !DIExpression()), !dbg !290
  %7 = load ptr, ptr %3, align 8, !dbg !291
  %8 = icmp ne ptr %7, null, !dbg !291
  br i1 %8, label %9, label %12, !dbg !291

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !291
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !291
  br label %13, !dbg !291

12:                                               ; preds = %2
  br label %13, !dbg !291

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !291
  store ptr %14, ptr %5, align 8, !dbg !292
  %15 = load ptr, ptr %4, align 8, !dbg !293
  %16 = call ptr @nn_pipe_getdata(ptr noundef %15), !dbg !294
  store ptr %16, ptr %6, align 8, !dbg !295
  %17 = load ptr, ptr %5, align 8, !dbg !296
  %18 = getelementptr inbounds %struct.nn_pub, ptr %17, i32 0, i32 1, !dbg !297
  %19 = load ptr, ptr %4, align 8, !dbg !298
  %20 = load ptr, ptr %6, align 8, !dbg !299
  %21 = getelementptr inbounds %struct.nn_pub_data, ptr %20, i32 0, i32 0, !dbg !300
  call void @nn_dist_out(ptr noundef %18, ptr noundef %19, ptr noundef %21), !dbg !301
  ret void, !dbg !302
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_pub_events(ptr noundef %0) #0 !dbg !303 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !304, metadata !DIExpression()), !dbg !305
  ret i32 2, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_pub_send(ptr noundef %0, ptr noundef %1) #0 !dbg !307 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !308, metadata !DIExpression()), !dbg !309
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !310, metadata !DIExpression()), !dbg !311
  %5 = load ptr, ptr %3, align 8, !dbg !312
  %6 = icmp ne ptr %5, null, !dbg !312
  br i1 %6, label %7, label %10, !dbg !312

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !312
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !312
  br label %11, !dbg !312

10:                                               ; preds = %2
  br label %11, !dbg !312

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !312
  %13 = getelementptr inbounds %struct.nn_pub, ptr %12, i32 0, i32 1, !dbg !313
  %14 = load ptr, ptr %4, align 8, !dbg !314
  %15 = call i32 @nn_dist_send(ptr noundef %13, ptr noundef %14, ptr noundef null), !dbg !315
  ret i32 %15, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_pub_setopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !317 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !318, metadata !DIExpression()), !dbg !319
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !320, metadata !DIExpression()), !dbg !321
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !322, metadata !DIExpression()), !dbg !323
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !324, metadata !DIExpression()), !dbg !325
  store i64 %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !326, metadata !DIExpression()), !dbg !327
  ret i32 -92, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_pub_getopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !329 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !330, metadata !DIExpression()), !dbg !331
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !332, metadata !DIExpression()), !dbg !333
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !334, metadata !DIExpression()), !dbg !335
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !336, metadata !DIExpression()), !dbg !337
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !338, metadata !DIExpression()), !dbg !339
  ret i32 -92, !dbg !340
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_pub_term(ptr noundef %0) #0 !dbg !341 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !344, metadata !DIExpression()), !dbg !345
  %3 = load ptr, ptr %2, align 8, !dbg !346
  %4 = getelementptr inbounds %struct.nn_pub, ptr %3, i32 0, i32 1, !dbg !347
  call void @nn_dist_term(ptr noundef %4), !dbg !348
  %5 = load ptr, ptr %2, align 8, !dbg !349
  %6 = getelementptr inbounds %struct.nn_pub, ptr %5, i32 0, i32 0, !dbg !350
  call void @nn_sockbase_term(ptr noundef %6), !dbg !351
  ret void, !dbg !352
}

declare void @nn_free(ptr noundef) #2

declare void @nn_dist_term(ptr noundef) #2

declare void @nn_sockbase_term(ptr noundef) #2

declare void @nn_dist_add(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_pipe_setdata(ptr noundef, ptr noundef) #2

declare ptr @nn_pipe_getdata(ptr noundef) #2

declare void @nn_dist_rm(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_dist_out(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @nn_dist_send(ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_pub_socktype_struct", scope: !2, file: !7, line: 190, type: !104, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !100, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/protocols/pubsub/pub.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a038a118f46b322012b9f89d8a3d7085")
!4 = !{!5, !98}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pub", file: !7, line: 42, size: 320, elements: !8)
!7 = !DIFile(filename: "./src/protocols/pubsub/pub.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a038a118f46b322012b9f89d8a3d7085")
!8 = !{!9, !82}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !6, file: !7, line: 45, baseType: !10, size: 128)
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
!82 = !DIDerivedType(tag: DW_TAG_member, name: "outpipes", scope: !6, file: !7, line: 48, baseType: !83, size: 192, offset: 128)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_dist", file: !84, line: 37, size: 192, elements: !85)
!84 = !DIFile(filename: "./src/protocols/pubsub/../utils/dist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8b675b0838905739d217dd53d5a3b3af")
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !83, file: !84, line: 38, baseType: !70, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !83, file: !84, line: 39, baseType: !88, size: 128, offset: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !89, line: 31, size: 128, elements: !90)
!89 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!90 = !{!91, !97}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !88, file: !89, line: 32, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !89, line: 26, size: 128, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !93, file: !89, line: 27, baseType: !92, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !93, file: !89, line: 28, baseType: !92, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !88, file: !89, line: 33, baseType: !92, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!100 = !{!101, !0, !119, !124, !129, !131, !136}
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "nn_pub_socktype", scope: !2, file: !7, line: 199, type: !103, isLocal: false, isDefinition: true)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !11, line: 160, size: 384, elements: !105)
!105 = !{!106, !107, !108, !109, !114, !118}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !104, file: !11, line: 163, baseType: !28, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !104, file: !11, line: 164, baseType: !28, size: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !104, file: !11, line: 167, baseType: !28, size: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !104, file: !11, line: 173, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!28, !77, !113}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !104, file: !11, line: 179, baseType: !115, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!28, !28}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !104, file: !11, line: 183, baseType: !93, size: 128, offset: 256)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !7, line: 178, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 184, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 23)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !7, line: 178, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 232, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 29)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "nn_pub_sockbase_vfptr", scope: !2, file: !7, line: 68, type: !15, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !7, line: 136, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 240, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 30)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !7, line: 136, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 16, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 2)
!141 = !{i32 7, !"Dwarf Version", i32 5}
!142 = !{i32 2, !"Debug Info Version", i32 3}
!143 = !{i32 1, !"wchar_size", i32 4}
!144 = !{i32 8, !"PIC Level", i32 2}
!145 = !{i32 7, !"PIE Level", i32 2}
!146 = !{i32 7, !"uwtable", i32 2}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 16.0.0"}
!149 = distinct !DISubprogram(name: "nn_pub_create", scope: !7, file: !7, line: 173, type: !111, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !150)
!150 = !{}
!151 = !DILocalVariable(name: "hint", arg: 1, scope: !149, file: !7, line: 173, type: !77)
!152 = !DILocation(line: 173, column: 33, scope: !149)
!153 = !DILocalVariable(name: "sockbase", arg: 2, scope: !149, file: !7, line: 173, type: !113)
!154 = !DILocation(line: 173, column: 60, scope: !149)
!155 = !DILocalVariable(name: "self", scope: !149, file: !7, line: 175, type: !5)
!156 = !DILocation(line: 175, column: 20, scope: !149)
!157 = !DILocation(line: 177, column: 12, scope: !149)
!158 = !DILocation(line: 177, column: 10, scope: !149)
!159 = !DILocation(line: 178, column: 5, scope: !149)
!160 = !DILocation(line: 178, column: 5, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !7, line: 178, column: 5)
!162 = distinct !DILexicalBlock(scope: !149, file: !7, line: 178, column: 5)
!163 = !DILocation(line: 178, column: 5, scope: !162)
!164 = !DILocation(line: 178, column: 5, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !7, line: 178, column: 5)
!166 = !DILocation(line: 179, column: 18, scope: !149)
!167 = !DILocation(line: 179, column: 48, scope: !149)
!168 = !DILocation(line: 179, column: 5, scope: !149)
!169 = !DILocation(line: 180, column: 18, scope: !149)
!170 = !DILocation(line: 180, column: 24, scope: !149)
!171 = !DILocation(line: 180, column: 6, scope: !149)
!172 = !DILocation(line: 180, column: 15, scope: !149)
!173 = !DILocation(line: 182, column: 5, scope: !149)
!174 = distinct !DISubprogram(name: "nn_pub_ispeer", scope: !7, file: !7, line: 185, type: !116, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !150)
!175 = !DILocalVariable(name: "socktype", arg: 1, scope: !174, file: !7, line: 185, type: !28)
!176 = !DILocation(line: 185, column: 31, scope: !174)
!177 = !DILocation(line: 187, column: 13, scope: !174)
!178 = !DILocation(line: 187, column: 22, scope: !174)
!179 = !DILocation(line: 187, column: 6, scope: !174)
!180 = distinct !DISubprogram(name: "nn_pub_init", scope: !7, file: !7, line: 82, type: !181, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !150)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !5, !14, !77}
!183 = !DILocalVariable(name: "self", arg: 1, scope: !180, file: !7, line: 82, type: !5)
!184 = !DILocation(line: 82, column: 41, scope: !180)
!185 = !DILocalVariable(name: "vfptr", arg: 2, scope: !180, file: !7, line: 83, type: !14)
!186 = !DILocation(line: 83, column: 37, scope: !180)
!187 = !DILocalVariable(name: "hint", arg: 3, scope: !180, file: !7, line: 83, type: !77)
!188 = !DILocation(line: 83, column: 50, scope: !180)
!189 = !DILocation(line: 85, column: 24, scope: !180)
!190 = !DILocation(line: 85, column: 30, scope: !180)
!191 = !DILocation(line: 85, column: 40, scope: !180)
!192 = !DILocation(line: 85, column: 47, scope: !180)
!193 = !DILocation(line: 85, column: 5, scope: !180)
!194 = !DILocation(line: 86, column: 20, scope: !180)
!195 = !DILocation(line: 86, column: 26, scope: !180)
!196 = !DILocation(line: 86, column: 5, scope: !180)
!197 = !DILocation(line: 87, column: 1, scope: !180)
!198 = distinct !DISubprogram(name: "nn_pub_destroy", scope: !7, file: !7, line: 95, type: !20, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !150)
!199 = !DILocalVariable(name: "self", arg: 1, scope: !198, file: !7, line: 95, type: !22)
!200 = !DILocation(line: 95, column: 42, scope: !198)
!201 = !DILocalVariable(name: "pub", scope: !198, file: !7, line: 97, type: !5)
!202 = !DILocation(line: 97, column: 20, scope: !198)
!203 = !DILocation(line: 99, column: 11, scope: !198)
!204 = !DILocation(line: 99, column: 9, scope: !198)
!205 = !DILocation(line: 101, column: 18, scope: !198)
!206 = !DILocation(line: 101, column: 5, scope: !198)
!207 = !DILocation(line: 102, column: 14, scope: !198)
!208 = !DILocation(line: 102, column: 5, scope: !198)
!209 = !DILocation(line: 103, column: 1, scope: !198)
!210 = distinct !DISubprogram(name: "nn_pub_add", scope: !7, file: !7, line: 105, type: !26, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !150)
!211 = !DILocalVariable(name: "self", arg: 1, scope: !210, file: !7, line: 105, type: !22)
!212 = !DILocation(line: 105, column: 44, scope: !210)
!213 = !DILocalVariable(name: "pipe", arg: 2, scope: !210, file: !7, line: 105, type: !29)
!214 = !DILocation(line: 105, column: 66, scope: !210)
!215 = !DILocalVariable(name: "pub", scope: !210, file: !7, line: 107, type: !5)
!216 = !DILocation(line: 107, column: 20, scope: !210)
!217 = !DILocalVariable(name: "data", scope: !210, file: !7, line: 108, type: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pub_data", file: !7, line: 38, size: 192, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !219, file: !7, line: 39, baseType: !222, size: 192)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_dist_data", file: !84, line: 32, size: 192, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !222, file: !84, line: 33, baseType: !93, size: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !222, file: !84, line: 34, baseType: !29, size: 64, offset: 128)
!226 = !DILocation(line: 108, column: 25, scope: !210)
!227 = !DILocation(line: 110, column: 11, scope: !210)
!228 = !DILocation(line: 110, column: 9, scope: !210)
!229 = !DILocation(line: 112, column: 12, scope: !210)
!230 = !DILocation(line: 112, column: 10, scope: !210)
!231 = !DILocation(line: 113, column: 5, scope: !210)
!232 = !DILocation(line: 113, column: 5, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !7, line: 113, column: 5)
!234 = distinct !DILexicalBlock(scope: !210, file: !7, line: 113, column: 5)
!235 = !DILocation(line: 113, column: 5, scope: !234)
!236 = !DILocation(line: 113, column: 5, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !7, line: 113, column: 5)
!238 = !DILocation(line: 114, column: 19, scope: !210)
!239 = !DILocation(line: 114, column: 24, scope: !210)
!240 = !DILocation(line: 114, column: 34, scope: !210)
!241 = !DILocation(line: 114, column: 41, scope: !210)
!242 = !DILocation(line: 114, column: 47, scope: !210)
!243 = !DILocation(line: 114, column: 5, scope: !210)
!244 = !DILocation(line: 115, column: 22, scope: !210)
!245 = !DILocation(line: 115, column: 28, scope: !210)
!246 = !DILocation(line: 115, column: 5, scope: !210)
!247 = !DILocation(line: 117, column: 5, scope: !210)
!248 = distinct !DISubprogram(name: "nn_pub_rm", scope: !7, file: !7, line: 120, type: !33, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !150)
!249 = !DILocalVariable(name: "self", arg: 1, scope: !248, file: !7, line: 120, type: !22)
!250 = !DILocation(line: 120, column: 44, scope: !248)
!251 = !DILocalVariable(name: "pipe", arg: 2, scope: !248, file: !7, line: 120, type: !29)
!252 = !DILocation(line: 120, column: 66, scope: !248)
!253 = !DILocalVariable(name: "pub", scope: !248, file: !7, line: 122, type: !5)
!254 = !DILocation(line: 122, column: 20, scope: !248)
!255 = !DILocalVariable(name: "data", scope: !248, file: !7, line: 123, type: !218)
!256 = !DILocation(line: 123, column: 25, scope: !248)
!257 = !DILocation(line: 125, column: 11, scope: !248)
!258 = !DILocation(line: 125, column: 9, scope: !248)
!259 = !DILocation(line: 126, column: 29, scope: !248)
!260 = !DILocation(line: 126, column: 12, scope: !248)
!261 = !DILocation(line: 126, column: 10, scope: !248)
!262 = !DILocation(line: 128, column: 18, scope: !248)
!263 = !DILocation(line: 128, column: 23, scope: !248)
!264 = !DILocation(line: 128, column: 33, scope: !248)
!265 = !DILocation(line: 128, column: 40, scope: !248)
!266 = !DILocation(line: 128, column: 46, scope: !248)
!267 = !DILocation(line: 128, column: 5, scope: !248)
!268 = !DILocation(line: 130, column: 14, scope: !248)
!269 = !DILocation(line: 130, column: 5, scope: !248)
!270 = !DILocation(line: 131, column: 1, scope: !248)
!271 = distinct !DISubprogram(name: "nn_pub_in", scope: !7, file: !7, line: 133, type: !33, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !150)
!272 = !DILocalVariable(name: "self", arg: 1, scope: !271, file: !7, line: 133, type: !22)
!273 = !DILocation(line: 133, column: 44, scope: !271)
!274 = !DILocalVariable(name: "pipe", arg: 2, scope: !271, file: !7, line: 133, type: !29)
!275 = !DILocation(line: 133, column: 66, scope: !271)
!276 = !DILocation(line: 136, column: 5, scope: !271)
!277 = !DILocation(line: 136, column: 5, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !7, line: 136, column: 5)
!279 = distinct !DILexicalBlock(scope: !280, file: !7, line: 136, column: 5)
!280 = distinct !DILexicalBlock(scope: !271, file: !7, line: 136, column: 5)
!281 = !DILocation(line: 137, column: 1, scope: !271)
!282 = distinct !DISubprogram(name: "nn_pub_out", scope: !7, file: !7, line: 139, type: !33, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !150)
!283 = !DILocalVariable(name: "self", arg: 1, scope: !282, file: !7, line: 139, type: !22)
!284 = !DILocation(line: 139, column: 45, scope: !282)
!285 = !DILocalVariable(name: "pipe", arg: 2, scope: !282, file: !7, line: 139, type: !29)
!286 = !DILocation(line: 139, column: 67, scope: !282)
!287 = !DILocalVariable(name: "pub", scope: !282, file: !7, line: 141, type: !5)
!288 = !DILocation(line: 141, column: 20, scope: !282)
!289 = !DILocalVariable(name: "data", scope: !282, file: !7, line: 142, type: !218)
!290 = !DILocation(line: 142, column: 25, scope: !282)
!291 = !DILocation(line: 144, column: 11, scope: !282)
!292 = !DILocation(line: 144, column: 9, scope: !282)
!293 = !DILocation(line: 145, column: 29, scope: !282)
!294 = !DILocation(line: 145, column: 12, scope: !282)
!295 = !DILocation(line: 145, column: 10, scope: !282)
!296 = !DILocation(line: 147, column: 19, scope: !282)
!297 = !DILocation(line: 147, column: 24, scope: !282)
!298 = !DILocation(line: 147, column: 34, scope: !282)
!299 = !DILocation(line: 147, column: 41, scope: !282)
!300 = !DILocation(line: 147, column: 47, scope: !282)
!301 = !DILocation(line: 147, column: 5, scope: !282)
!302 = !DILocation(line: 148, column: 1, scope: !282)
!303 = distinct !DISubprogram(name: "nn_pub_events", scope: !7, file: !7, line: 150, type: !39, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !150)
!304 = !DILocalVariable(name: "self", arg: 1, scope: !303, file: !7, line: 150, type: !22)
!305 = !DILocation(line: 150, column: 47, scope: !303)
!306 = !DILocation(line: 152, column: 5, scope: !303)
!307 = distinct !DISubprogram(name: "nn_pub_send", scope: !7, file: !7, line: 155, type: !43, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !150)
!308 = !DILocalVariable(name: "self", arg: 1, scope: !307, file: !7, line: 155, type: !22)
!309 = !DILocation(line: 155, column: 45, scope: !307)
!310 = !DILocalVariable(name: "msg", arg: 2, scope: !307, file: !7, line: 155, type: !45)
!311 = !DILocation(line: 155, column: 66, scope: !307)
!312 = !DILocation(line: 157, column: 27, scope: !307)
!313 = !DILocation(line: 157, column: 68, scope: !307)
!314 = !DILocation(line: 158, column: 9, scope: !307)
!315 = !DILocation(line: 157, column: 12, scope: !307)
!316 = !DILocation(line: 157, column: 5, scope: !307)
!317 = distinct !DISubprogram(name: "nn_pub_setopt", scope: !7, file: !7, line: 161, type: !66, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !150)
!318 = !DILocalVariable(name: "self", arg: 1, scope: !317, file: !7, line: 161, type: !22)
!319 = !DILocation(line: 161, column: 47, scope: !317)
!320 = !DILocalVariable(name: "level", arg: 2, scope: !317, file: !7, line: 161, type: !28)
!321 = !DILocation(line: 161, column: 57, scope: !317)
!322 = !DILocalVariable(name: "option", arg: 3, scope: !317, file: !7, line: 161, type: !28)
!323 = !DILocation(line: 161, column: 68, scope: !317)
!324 = !DILocalVariable(name: "optval", arg: 4, scope: !317, file: !7, line: 162, type: !68)
!325 = !DILocation(line: 162, column: 21, scope: !317)
!326 = !DILocalVariable(name: "optvallen", arg: 5, scope: !317, file: !7, line: 162, type: !70)
!327 = !DILocation(line: 162, column: 36, scope: !317)
!328 = !DILocation(line: 164, column: 5, scope: !317)
!329 = distinct !DISubprogram(name: "nn_pub_getopt", scope: !7, file: !7, line: 167, type: !75, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !150)
!330 = !DILocalVariable(name: "self", arg: 1, scope: !329, file: !7, line: 167, type: !22)
!331 = !DILocation(line: 167, column: 47, scope: !329)
!332 = !DILocalVariable(name: "level", arg: 2, scope: !329, file: !7, line: 167, type: !28)
!333 = !DILocation(line: 167, column: 57, scope: !329)
!334 = !DILocalVariable(name: "option", arg: 3, scope: !329, file: !7, line: 167, type: !28)
!335 = !DILocation(line: 167, column: 68, scope: !329)
!336 = !DILocalVariable(name: "optval", arg: 4, scope: !329, file: !7, line: 168, type: !77)
!337 = !DILocation(line: 168, column: 15, scope: !329)
!338 = !DILocalVariable(name: "optvallen", arg: 5, scope: !329, file: !7, line: 168, type: !78)
!339 = !DILocation(line: 168, column: 31, scope: !329)
!340 = !DILocation(line: 170, column: 5, scope: !329)
!341 = distinct !DISubprogram(name: "nn_pub_term", scope: !7, file: !7, line: 89, type: !342, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !150)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !5}
!344 = !DILocalVariable(name: "self", arg: 1, scope: !341, file: !7, line: 89, type: !5)
!345 = !DILocation(line: 89, column: 41, scope: !341)
!346 = !DILocation(line: 91, column: 20, scope: !341)
!347 = !DILocation(line: 91, column: 26, scope: !341)
!348 = !DILocation(line: 91, column: 5, scope: !341)
!349 = !DILocation(line: 92, column: 24, scope: !341)
!350 = !DILocation(line: 92, column: 30, scope: !341)
!351 = !DILocation(line: 92, column: 5, scope: !341)
!352 = !DILocation(line: 93, column: 1, scope: !341)
