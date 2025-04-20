; ModuleID = './src/protocols/pair/xpair.c'
source_filename = "./src/protocols/pair/xpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sockbase_vfptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_xpair = type { %struct.nn_sockbase, %struct.nn_excl }
%struct.nn_sockbase = type { ptr, ptr }
%struct.nn_excl = type { ptr, ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [29 x i8] c"./src/protocols/pair/xpair.c\00", align 1, !dbg !7
@nn_xpair_sockbase_vfptr = internal constant %struct.nn_sockbase_vfptr { ptr null, ptr @nn_xpair_destroy, ptr @nn_xpair_add, ptr @nn_xpair_rm, ptr @nn_xpair_in, ptr @nn_xpair_out, ptr @nn_xpair_events, ptr @nn_xpair_send, ptr @nn_xpair_recv, ptr @nn_xpair_setopt, ptr @nn_xpair_getopt }, align 8, !dbg !12
@nn_xpair_socktype_struct = internal global %struct.nn_socktype { i32 2, i32 16, i32 0, ptr @nn_xpair_create, ptr @nn_xpair_ispeer, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !126
@nn_xpair_socktype = dso_local global ptr @nn_xpair_socktype_struct, align 8, !dbg !102

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xpair_create(ptr noundef %0, ptr noundef %1) #0 !dbg !136 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !138, metadata !DIExpression()), !dbg !139
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata ptr %5, metadata !142, metadata !DIExpression()), !dbg !143
  %6 = call ptr @nn_alloc_(i64 noundef 40), !dbg !144
  store ptr %6, ptr %5, align 8, !dbg !145
  br label %7, !dbg !146

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !dbg !147
  %9 = icmp ne ptr %8, null, !dbg !147
  %10 = xor i1 %9, true, !dbg !147
  %11 = zext i1 %10 to i32, !dbg !147
  %12 = sext i32 %11 to i64, !dbg !147
  %13 = icmp ne i64 %12, 0, !dbg !147
  br i1 %13, label %14, label %17, !dbg !150

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !151
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 164), !dbg !151
  call void @nn_err_abort() #4, !dbg !151
  unreachable, !dbg !151

17:                                               ; preds = %7
  br label %18, !dbg !150

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !153
  %20 = load ptr, ptr %3, align 8, !dbg !154
  call void @nn_xpair_init(ptr noundef %19, ptr noundef @nn_xpair_sockbase_vfptr, ptr noundef %20), !dbg !155
  %21 = load ptr, ptr %5, align 8, !dbg !156
  %22 = getelementptr inbounds %struct.nn_xpair, ptr %21, i32 0, i32 0, !dbg !157
  %23 = load ptr, ptr %4, align 8, !dbg !158
  store ptr %22, ptr %23, align 8, !dbg !159
  ret i32 0, !dbg !160
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpair_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !161 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !164, metadata !DIExpression()), !dbg !165
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !166, metadata !DIExpression()), !dbg !167
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !168, metadata !DIExpression()), !dbg !169
  %7 = load ptr, ptr %4, align 8, !dbg !170
  %8 = getelementptr inbounds %struct.nn_xpair, ptr %7, i32 0, i32 0, !dbg !171
  %9 = load ptr, ptr %5, align 8, !dbg !172
  %10 = load ptr, ptr %6, align 8, !dbg !173
  call void @nn_sockbase_init(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !174
  %11 = load ptr, ptr %4, align 8, !dbg !175
  %12 = getelementptr inbounds %struct.nn_xpair, ptr %11, i32 0, i32 1, !dbg !176
  call void @nn_excl_init(ptr noundef %12), !dbg !177
  ret void, !dbg !178
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xpair_ispeer(i32 noundef %0) #0 !dbg !179 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !180, metadata !DIExpression()), !dbg !181
  %3 = load i32, ptr %2, align 4, !dbg !182
  %4 = icmp eq i32 %3, 16, !dbg !183
  %5 = zext i1 %4 to i64, !dbg !182
  %6 = select i1 %4, i32 1, i32 0, !dbg !182
  ret i32 %6, !dbg !184
}

declare void @nn_sockbase_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_excl_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpair_destroy(ptr noundef %0) #0 !dbg !185 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata ptr %3, metadata !188, metadata !DIExpression()), !dbg !189
  %4 = load ptr, ptr %2, align 8, !dbg !190
  %5 = icmp ne ptr %4, null, !dbg !190
  br i1 %5, label %6, label %9, !dbg !190

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !190
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !190
  br label %10, !dbg !190

9:                                                ; preds = %1
  br label %10, !dbg !190

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !190
  store ptr %11, ptr %3, align 8, !dbg !191
  %12 = load ptr, ptr %3, align 8, !dbg !192
  call void @nn_xpair_term(ptr noundef %12), !dbg !193
  %13 = load ptr, ptr %3, align 8, !dbg !194
  call void @nn_free(ptr noundef %13), !dbg !195
  ret void, !dbg !196
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xpair_add(ptr noundef %0, ptr noundef %1) #0 !dbg !197 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !198, metadata !DIExpression()), !dbg !199
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !200, metadata !DIExpression()), !dbg !201
  %5 = load ptr, ptr %3, align 8, !dbg !202
  %6 = icmp ne ptr %5, null, !dbg !202
  br i1 %6, label %7, label %10, !dbg !202

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !202
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !202
  br label %11, !dbg !202

10:                                               ; preds = %2
  br label %11, !dbg !202

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !202
  %13 = getelementptr inbounds %struct.nn_xpair, ptr %12, i32 0, i32 1, !dbg !203
  %14 = load ptr, ptr %4, align 8, !dbg !204
  %15 = call i32 @nn_excl_add(ptr noundef %13, ptr noundef %14), !dbg !205
  ret i32 %15, !dbg !206
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpair_rm(ptr noundef %0, ptr noundef %1) #0 !dbg !207 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !208, metadata !DIExpression()), !dbg !209
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !210, metadata !DIExpression()), !dbg !211
  %5 = load ptr, ptr %3, align 8, !dbg !212
  %6 = icmp ne ptr %5, null, !dbg !212
  br i1 %6, label %7, label %10, !dbg !212

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !212
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !212
  br label %11, !dbg !212

10:                                               ; preds = %2
  br label %11, !dbg !212

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !212
  %13 = getelementptr inbounds %struct.nn_xpair, ptr %12, i32 0, i32 1, !dbg !213
  %14 = load ptr, ptr %4, align 8, !dbg !214
  call void @nn_excl_rm(ptr noundef %13, ptr noundef %14), !dbg !215
  ret void, !dbg !216
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpair_in(ptr noundef %0, ptr noundef %1) #0 !dbg !217 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !218, metadata !DIExpression()), !dbg !219
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !220, metadata !DIExpression()), !dbg !221
  %5 = load ptr, ptr %3, align 8, !dbg !222
  %6 = icmp ne ptr %5, null, !dbg !222
  br i1 %6, label %7, label %10, !dbg !222

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !222
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !222
  br label %11, !dbg !222

10:                                               ; preds = %2
  br label %11, !dbg !222

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !222
  %13 = getelementptr inbounds %struct.nn_xpair, ptr %12, i32 0, i32 1, !dbg !223
  %14 = load ptr, ptr %4, align 8, !dbg !224
  call void @nn_excl_in(ptr noundef %13, ptr noundef %14), !dbg !225
  ret void, !dbg !226
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpair_out(ptr noundef %0, ptr noundef %1) #0 !dbg !227 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !228, metadata !DIExpression()), !dbg !229
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !230, metadata !DIExpression()), !dbg !231
  %5 = load ptr, ptr %3, align 8, !dbg !232
  %6 = icmp ne ptr %5, null, !dbg !232
  br i1 %6, label %7, label %10, !dbg !232

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !232
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !232
  br label %11, !dbg !232

10:                                               ; preds = %2
  br label %11, !dbg !232

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !232
  %13 = getelementptr inbounds %struct.nn_xpair, ptr %12, i32 0, i32 1, !dbg !233
  %14 = load ptr, ptr %4, align 8, !dbg !234
  call void @nn_excl_out(ptr noundef %13, ptr noundef %14), !dbg !235
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xpair_events(ptr noundef %0) #0 !dbg !237 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata ptr %3, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata ptr %4, metadata !242, metadata !DIExpression()), !dbg !243
  %5 = load ptr, ptr %2, align 8, !dbg !244
  %6 = icmp ne ptr %5, null, !dbg !244
  br i1 %6, label %7, label %10, !dbg !244

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !244
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !244
  br label %11, !dbg !244

10:                                               ; preds = %1
  br label %11, !dbg !244

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !244
  store ptr %12, ptr %3, align 8, !dbg !245
  store i32 0, ptr %4, align 4, !dbg !246
  %13 = load ptr, ptr %3, align 8, !dbg !247
  %14 = getelementptr inbounds %struct.nn_xpair, ptr %13, i32 0, i32 1, !dbg !249
  %15 = call i32 @nn_excl_can_recv(ptr noundef %14), !dbg !250
  %16 = icmp ne i32 %15, 0, !dbg !250
  br i1 %16, label %17, label %20, !dbg !251

17:                                               ; preds = %11
  %18 = load i32, ptr %4, align 4, !dbg !252
  %19 = or i32 %18, 1, !dbg !252
  store i32 %19, ptr %4, align 4, !dbg !252
  br label %20, !dbg !253

20:                                               ; preds = %17, %11
  %21 = load ptr, ptr %3, align 8, !dbg !254
  %22 = getelementptr inbounds %struct.nn_xpair, ptr %21, i32 0, i32 1, !dbg !256
  %23 = call i32 @nn_excl_can_send(ptr noundef %22), !dbg !257
  %24 = icmp ne i32 %23, 0, !dbg !257
  br i1 %24, label %25, label %28, !dbg !258

25:                                               ; preds = %20
  %26 = load i32, ptr %4, align 4, !dbg !259
  %27 = or i32 %26, 2, !dbg !259
  store i32 %27, ptr %4, align 4, !dbg !259
  br label %28, !dbg !260

28:                                               ; preds = %25, %20
  %29 = load i32, ptr %4, align 4, !dbg !261
  ret i32 %29, !dbg !262
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xpair_send(ptr noundef %0, ptr noundef %1) #0 !dbg !263 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !264, metadata !DIExpression()), !dbg !265
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !266, metadata !DIExpression()), !dbg !267
  %5 = load ptr, ptr %3, align 8, !dbg !268
  %6 = icmp ne ptr %5, null, !dbg !268
  br i1 %6, label %7, label %10, !dbg !268

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !268
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !268
  br label %11, !dbg !268

10:                                               ; preds = %2
  br label %11, !dbg !268

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !268
  %13 = getelementptr inbounds %struct.nn_xpair, ptr %12, i32 0, i32 1, !dbg !269
  %14 = load ptr, ptr %4, align 8, !dbg !270
  %15 = call i32 @nn_excl_send(ptr noundef %13, ptr noundef %14), !dbg !271
  ret i32 %15, !dbg !272
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xpair_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !273 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !274, metadata !DIExpression()), !dbg !275
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata ptr %5, metadata !278, metadata !DIExpression()), !dbg !279
  %6 = load ptr, ptr %3, align 8, !dbg !280
  %7 = icmp ne ptr %6, null, !dbg !280
  br i1 %7, label %8, label %11, !dbg !280

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !dbg !280
  %10 = getelementptr inbounds i8, ptr %9, i64 0, !dbg !280
  br label %12, !dbg !280

11:                                               ; preds = %2
  br label %12, !dbg !280

12:                                               ; preds = %11, %8
  %13 = phi ptr [ %10, %8 ], [ null, %11 ], !dbg !280
  %14 = getelementptr inbounds %struct.nn_xpair, ptr %13, i32 0, i32 1, !dbg !281
  %15 = load ptr, ptr %4, align 8, !dbg !282
  %16 = call i32 @nn_excl_recv(ptr noundef %14, ptr noundef %15), !dbg !283
  store i32 %16, ptr %5, align 4, !dbg !284
  %17 = load i32, ptr %5, align 4, !dbg !285
  %18 = icmp slt i32 %17, 0, !dbg !286
  br i1 %18, label %19, label %21, !dbg !285

19:                                               ; preds = %12
  %20 = load i32, ptr %5, align 4, !dbg !287
  br label %22, !dbg !285

21:                                               ; preds = %12
  br label %22, !dbg !285

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ], !dbg !285
  ret i32 %23, !dbg !288
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xpair_setopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !289 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !290, metadata !DIExpression()), !dbg !291
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !292, metadata !DIExpression()), !dbg !293
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !294, metadata !DIExpression()), !dbg !295
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !296, metadata !DIExpression()), !dbg !297
  store i64 %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !298, metadata !DIExpression()), !dbg !299
  ret i32 -92, !dbg !300
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xpair_getopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !301 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !302, metadata !DIExpression()), !dbg !303
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !304, metadata !DIExpression()), !dbg !305
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !306, metadata !DIExpression()), !dbg !307
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !308, metadata !DIExpression()), !dbg !309
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !310, metadata !DIExpression()), !dbg !311
  ret i32 -92, !dbg !312
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xpair_term(ptr noundef %0) #0 !dbg !313 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !316, metadata !DIExpression()), !dbg !317
  %3 = load ptr, ptr %2, align 8, !dbg !318
  %4 = getelementptr inbounds %struct.nn_xpair, ptr %3, i32 0, i32 1, !dbg !319
  call void @nn_excl_term(ptr noundef %4), !dbg !320
  %5 = load ptr, ptr %2, align 8, !dbg !321
  %6 = getelementptr inbounds %struct.nn_xpair, ptr %5, i32 0, i32 0, !dbg !322
  call void @nn_sockbase_term(ptr noundef %6), !dbg !323
  ret void, !dbg !324
}

declare void @nn_free(ptr noundef) #2

declare void @nn_excl_term(ptr noundef) #2

declare void @nn_sockbase_term(ptr noundef) #2

declare i32 @nn_excl_add(ptr noundef, ptr noundef) #2

declare void @nn_excl_rm(ptr noundef, ptr noundef) #2

declare void @nn_excl_in(ptr noundef, ptr noundef) #2

declare void @nn_excl_out(ptr noundef, ptr noundef) #2

declare i32 @nn_excl_can_recv(ptr noundef) #2

declare i32 @nn_excl_can_send(ptr noundef) #2

declare i32 @nn_excl_send(ptr noundef, ptr noundef) #2

declare i32 @nn_excl_recv(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/protocols/pair/xpair.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "0558ab8d0e92aed749264a086cc20791")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 29)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "nn_xpair_sockbase_vfptr", scope: !14, file: !2, line: 59, type: !26, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !15, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !16, globals: !101, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "src/protocols/pair/xpair.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "0558ab8d0e92aed749264a086cc20791")
!16 = !{!17, !100}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xpair", file: !2, line: 36, size: 320, elements: !19)
!19 = !{!20, !93}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !18, file: !2, line: 37, baseType: !21, size: 128)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !22, line: 123, size: 128, elements: !23)
!22 = !DIFile(filename: "./src/protocols/pair/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
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
!93 = !DIDerivedType(tag: DW_TAG_member, name: "excl", scope: !18, file: !2, line: 38, baseType: !94, size: 192, offset: 128)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_excl", file: !95, line: 33, size: 192, elements: !96)
!95 = !DIFile(filename: "./src/protocols/pair/../utils/excl.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "f0be91890d61f5b1f69020e9c0441656")
!96 = !{!97, !98, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !94, file: !95, line: 37, baseType: !40, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "inpipe", scope: !94, file: !95, line: 40, baseType: !40, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "outpipe", scope: !94, file: !95, line: 43, baseType: !40, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!101 = !{!0, !7, !102, !12, !126}
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "nn_xpair_socktype", scope: !14, file: !2, line: 185, type: !104, isLocal: false, isDefinition: true)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !22, line: 160, size: 384, elements: !106)
!106 = !{!107, !108, !109, !110, !115, !119}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !105, file: !22, line: 163, baseType: !39, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !105, file: !22, line: 164, baseType: !39, size: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !22, line: 167, baseType: !39, size: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !105, file: !22, line: 173, baseType: !111, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!39, !88, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !105, file: !22, line: 179, baseType: !116, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!39, !39}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !105, file: !22, line: 183, baseType: !120, size: 128, offset: 256)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !121, line: 26, size: 128, elements: !122)
!121 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!122 = !{!123, !125}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !120, file: !121, line: 27, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !120, file: !121, line: 28, baseType: !124, size: 64, offset: 64)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "nn_xpair_socktype_struct", scope: !14, file: !2, line: 176, type: !105, isLocal: true, isDefinition: true)
!128 = !{i32 7, !"Dwarf Version", i32 5}
!129 = !{i32 2, !"Debug Info Version", i32 3}
!130 = !{i32 1, !"wchar_size", i32 4}
!131 = !{i32 8, !"PIC Level", i32 2}
!132 = !{i32 7, !"PIE Level", i32 2}
!133 = !{i32 7, !"uwtable", i32 2}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 16.0.0"}
!136 = distinct !DISubprogram(name: "nn_xpair_create", scope: !2, file: !2, line: 159, type: !112, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !137)
!137 = !{}
!138 = !DILocalVariable(name: "hint", arg: 1, scope: !136, file: !2, line: 159, type: !88)
!139 = !DILocation(line: 159, column: 28, scope: !136)
!140 = !DILocalVariable(name: "sockbase", arg: 2, scope: !136, file: !2, line: 159, type: !114)
!141 = !DILocation(line: 159, column: 55, scope: !136)
!142 = !DILocalVariable(name: "self", scope: !136, file: !2, line: 161, type: !17)
!143 = !DILocation(line: 161, column: 22, scope: !136)
!144 = !DILocation(line: 163, column: 12, scope: !136)
!145 = !DILocation(line: 163, column: 10, scope: !136)
!146 = !DILocation(line: 164, column: 5, scope: !136)
!147 = !DILocation(line: 164, column: 5, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !2, line: 164, column: 5)
!149 = distinct !DILexicalBlock(scope: !136, file: !2, line: 164, column: 5)
!150 = !DILocation(line: 164, column: 5, scope: !149)
!151 = !DILocation(line: 164, column: 5, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !2, line: 164, column: 5)
!153 = !DILocation(line: 165, column: 20, scope: !136)
!154 = !DILocation(line: 165, column: 52, scope: !136)
!155 = !DILocation(line: 165, column: 5, scope: !136)
!156 = !DILocation(line: 166, column: 18, scope: !136)
!157 = !DILocation(line: 166, column: 24, scope: !136)
!158 = !DILocation(line: 166, column: 6, scope: !136)
!159 = !DILocation(line: 166, column: 15, scope: !136)
!160 = !DILocation(line: 168, column: 5, scope: !136)
!161 = distinct !DISubprogram(name: "nn_xpair_init", scope: !2, file: !2, line: 73, type: !162, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !137)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !17, !25, !88}
!164 = !DILocalVariable(name: "self", arg: 1, scope: !161, file: !2, line: 73, type: !17)
!165 = !DILocation(line: 73, column: 45, scope: !161)
!166 = !DILocalVariable(name: "vfptr", arg: 2, scope: !161, file: !2, line: 74, type: !25)
!167 = !DILocation(line: 74, column: 37, scope: !161)
!168 = !DILocalVariable(name: "hint", arg: 3, scope: !161, file: !2, line: 74, type: !88)
!169 = !DILocation(line: 74, column: 50, scope: !161)
!170 = !DILocation(line: 76, column: 24, scope: !161)
!171 = !DILocation(line: 76, column: 30, scope: !161)
!172 = !DILocation(line: 76, column: 40, scope: !161)
!173 = !DILocation(line: 76, column: 47, scope: !161)
!174 = !DILocation(line: 76, column: 5, scope: !161)
!175 = !DILocation(line: 77, column: 20, scope: !161)
!176 = !DILocation(line: 77, column: 26, scope: !161)
!177 = !DILocation(line: 77, column: 5, scope: !161)
!178 = !DILocation(line: 78, column: 1, scope: !161)
!179 = distinct !DISubprogram(name: "nn_xpair_ispeer", scope: !2, file: !2, line: 171, type: !117, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !137)
!180 = !DILocalVariable(name: "socktype", arg: 1, scope: !179, file: !2, line: 171, type: !39)
!181 = !DILocation(line: 171, column: 26, scope: !179)
!182 = !DILocation(line: 173, column: 12, scope: !179)
!183 = !DILocation(line: 173, column: 21, scope: !179)
!184 = !DILocation(line: 173, column: 5, scope: !179)
!185 = distinct !DISubprogram(name: "nn_xpair_destroy", scope: !2, file: !2, line: 86, type: !31, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !137)
!186 = !DILocalVariable(name: "self", arg: 1, scope: !185, file: !2, line: 86, type: !33)
!187 = !DILocation(line: 86, column: 44, scope: !185)
!188 = !DILocalVariable(name: "xpair", scope: !185, file: !2, line: 88, type: !17)
!189 = !DILocation(line: 88, column: 22, scope: !185)
!190 = !DILocation(line: 90, column: 13, scope: !185)
!191 = !DILocation(line: 90, column: 11, scope: !185)
!192 = !DILocation(line: 92, column: 20, scope: !185)
!193 = !DILocation(line: 92, column: 5, scope: !185)
!194 = !DILocation(line: 93, column: 14, scope: !185)
!195 = !DILocation(line: 93, column: 5, scope: !185)
!196 = !DILocation(line: 94, column: 1, scope: !185)
!197 = distinct !DISubprogram(name: "nn_xpair_add", scope: !2, file: !2, line: 96, type: !37, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !137)
!198 = !DILocalVariable(name: "self", arg: 1, scope: !197, file: !2, line: 96, type: !33)
!199 = !DILocation(line: 96, column: 46, scope: !197)
!200 = !DILocalVariable(name: "pipe", arg: 2, scope: !197, file: !2, line: 96, type: !40)
!201 = !DILocation(line: 96, column: 68, scope: !197)
!202 = !DILocation(line: 98, column: 26, scope: !197)
!203 = !DILocation(line: 98, column: 69, scope: !197)
!204 = !DILocation(line: 98, column: 75, scope: !197)
!205 = !DILocation(line: 98, column: 12, scope: !197)
!206 = !DILocation(line: 98, column: 5, scope: !197)
!207 = distinct !DISubprogram(name: "nn_xpair_rm", scope: !2, file: !2, line: 101, type: !44, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !137)
!208 = !DILocalVariable(name: "self", arg: 1, scope: !207, file: !2, line: 101, type: !33)
!209 = !DILocation(line: 101, column: 46, scope: !207)
!210 = !DILocalVariable(name: "pipe", arg: 2, scope: !207, file: !2, line: 101, type: !40)
!211 = !DILocation(line: 101, column: 68, scope: !207)
!212 = !DILocation(line: 103, column: 18, scope: !207)
!213 = !DILocation(line: 103, column: 61, scope: !207)
!214 = !DILocation(line: 103, column: 67, scope: !207)
!215 = !DILocation(line: 103, column: 5, scope: !207)
!216 = !DILocation(line: 104, column: 1, scope: !207)
!217 = distinct !DISubprogram(name: "nn_xpair_in", scope: !2, file: !2, line: 106, type: !44, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !137)
!218 = !DILocalVariable(name: "self", arg: 1, scope: !217, file: !2, line: 106, type: !33)
!219 = !DILocation(line: 106, column: 46, scope: !217)
!220 = !DILocalVariable(name: "pipe", arg: 2, scope: !217, file: !2, line: 106, type: !40)
!221 = !DILocation(line: 106, column: 68, scope: !217)
!222 = !DILocation(line: 108, column: 18, scope: !217)
!223 = !DILocation(line: 108, column: 61, scope: !217)
!224 = !DILocation(line: 108, column: 67, scope: !217)
!225 = !DILocation(line: 108, column: 5, scope: !217)
!226 = !DILocation(line: 109, column: 1, scope: !217)
!227 = distinct !DISubprogram(name: "nn_xpair_out", scope: !2, file: !2, line: 111, type: !44, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !137)
!228 = !DILocalVariable(name: "self", arg: 1, scope: !227, file: !2, line: 111, type: !33)
!229 = !DILocation(line: 111, column: 47, scope: !227)
!230 = !DILocalVariable(name: "pipe", arg: 2, scope: !227, file: !2, line: 111, type: !40)
!231 = !DILocation(line: 111, column: 69, scope: !227)
!232 = !DILocation(line: 113, column: 19, scope: !227)
!233 = !DILocation(line: 113, column: 62, scope: !227)
!234 = !DILocation(line: 113, column: 68, scope: !227)
!235 = !DILocation(line: 113, column: 5, scope: !227)
!236 = !DILocation(line: 114, column: 1, scope: !227)
!237 = distinct !DISubprogram(name: "nn_xpair_events", scope: !2, file: !2, line: 116, type: !50, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !137)
!238 = !DILocalVariable(name: "self", arg: 1, scope: !237, file: !2, line: 116, type: !33)
!239 = !DILocation(line: 116, column: 49, scope: !237)
!240 = !DILocalVariable(name: "xpair", scope: !237, file: !2, line: 118, type: !17)
!241 = !DILocation(line: 118, column: 22, scope: !237)
!242 = !DILocalVariable(name: "events", scope: !237, file: !2, line: 119, type: !39)
!243 = !DILocation(line: 119, column: 9, scope: !237)
!244 = !DILocation(line: 121, column: 13, scope: !237)
!245 = !DILocation(line: 121, column: 11, scope: !237)
!246 = !DILocation(line: 123, column: 12, scope: !237)
!247 = !DILocation(line: 124, column: 28, scope: !248)
!248 = distinct !DILexicalBlock(scope: !237, file: !2, line: 124, column: 9)
!249 = !DILocation(line: 124, column: 35, scope: !248)
!250 = !DILocation(line: 124, column: 9, scope: !248)
!251 = !DILocation(line: 124, column: 9, scope: !237)
!252 = !DILocation(line: 125, column: 16, scope: !248)
!253 = !DILocation(line: 125, column: 9, scope: !248)
!254 = !DILocation(line: 126, column: 28, scope: !255)
!255 = distinct !DILexicalBlock(scope: !237, file: !2, line: 126, column: 9)
!256 = !DILocation(line: 126, column: 35, scope: !255)
!257 = !DILocation(line: 126, column: 9, scope: !255)
!258 = !DILocation(line: 126, column: 9, scope: !237)
!259 = !DILocation(line: 127, column: 16, scope: !255)
!260 = !DILocation(line: 127, column: 9, scope: !255)
!261 = !DILocation(line: 128, column: 12, scope: !237)
!262 = !DILocation(line: 128, column: 5, scope: !237)
!263 = distinct !DISubprogram(name: "nn_xpair_send", scope: !2, file: !2, line: 131, type: !54, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !137)
!264 = !DILocalVariable(name: "self", arg: 1, scope: !263, file: !2, line: 131, type: !33)
!265 = !DILocation(line: 131, column: 47, scope: !263)
!266 = !DILocalVariable(name: "msg", arg: 2, scope: !263, file: !2, line: 131, type: !56)
!267 = !DILocation(line: 131, column: 68, scope: !263)
!268 = !DILocation(line: 133, column: 27, scope: !263)
!269 = !DILocation(line: 133, column: 70, scope: !263)
!270 = !DILocation(line: 134, column: 9, scope: !263)
!271 = !DILocation(line: 133, column: 12, scope: !263)
!272 = !DILocation(line: 133, column: 5, scope: !263)
!273 = distinct !DISubprogram(name: "nn_xpair_recv", scope: !2, file: !2, line: 137, type: !54, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !137)
!274 = !DILocalVariable(name: "self", arg: 1, scope: !273, file: !2, line: 137, type: !33)
!275 = !DILocation(line: 137, column: 47, scope: !273)
!276 = !DILocalVariable(name: "msg", arg: 2, scope: !273, file: !2, line: 137, type: !56)
!277 = !DILocation(line: 137, column: 68, scope: !273)
!278 = !DILocalVariable(name: "rc", scope: !273, file: !2, line: 139, type: !39)
!279 = !DILocation(line: 139, column: 9, scope: !273)
!280 = !DILocation(line: 141, column: 25, scope: !273)
!281 = !DILocation(line: 141, column: 68, scope: !273)
!282 = !DILocation(line: 141, column: 74, scope: !273)
!283 = !DILocation(line: 141, column: 10, scope: !273)
!284 = !DILocation(line: 141, column: 8, scope: !273)
!285 = !DILocation(line: 144, column: 12, scope: !273)
!286 = !DILocation(line: 144, column: 15, scope: !273)
!287 = !DILocation(line: 144, column: 21, scope: !273)
!288 = !DILocation(line: 144, column: 5, scope: !273)
!289 = distinct !DISubprogram(name: "nn_xpair_setopt", scope: !2, file: !2, line: 147, type: !77, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !137)
!290 = !DILocalVariable(name: "self", arg: 1, scope: !289, file: !2, line: 147, type: !33)
!291 = !DILocation(line: 147, column: 49, scope: !289)
!292 = !DILocalVariable(name: "level", arg: 2, scope: !289, file: !2, line: 147, type: !39)
!293 = !DILocation(line: 147, column: 59, scope: !289)
!294 = !DILocalVariable(name: "option", arg: 3, scope: !289, file: !2, line: 147, type: !39)
!295 = !DILocation(line: 147, column: 70, scope: !289)
!296 = !DILocalVariable(name: "optval", arg: 4, scope: !289, file: !2, line: 148, type: !79)
!297 = !DILocation(line: 148, column: 21, scope: !289)
!298 = !DILocalVariable(name: "optvallen", arg: 5, scope: !289, file: !2, line: 148, type: !81)
!299 = !DILocation(line: 148, column: 36, scope: !289)
!300 = !DILocation(line: 150, column: 5, scope: !289)
!301 = distinct !DISubprogram(name: "nn_xpair_getopt", scope: !2, file: !2, line: 153, type: !86, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !137)
!302 = !DILocalVariable(name: "self", arg: 1, scope: !301, file: !2, line: 153, type: !33)
!303 = !DILocation(line: 153, column: 49, scope: !301)
!304 = !DILocalVariable(name: "level", arg: 2, scope: !301, file: !2, line: 153, type: !39)
!305 = !DILocation(line: 153, column: 59, scope: !301)
!306 = !DILocalVariable(name: "option", arg: 3, scope: !301, file: !2, line: 153, type: !39)
!307 = !DILocation(line: 153, column: 70, scope: !301)
!308 = !DILocalVariable(name: "optval", arg: 4, scope: !301, file: !2, line: 154, type: !88)
!309 = !DILocation(line: 154, column: 15, scope: !301)
!310 = !DILocalVariable(name: "optvallen", arg: 5, scope: !301, file: !2, line: 154, type: !89)
!311 = !DILocation(line: 154, column: 31, scope: !301)
!312 = !DILocation(line: 156, column: 5, scope: !301)
!313 = distinct !DISubprogram(name: "nn_xpair_term", scope: !2, file: !2, line: 80, type: !314, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !137)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !17}
!316 = !DILocalVariable(name: "self", arg: 1, scope: !313, file: !2, line: 80, type: !17)
!317 = !DILocation(line: 80, column: 45, scope: !313)
!318 = !DILocation(line: 82, column: 20, scope: !313)
!319 = !DILocation(line: 82, column: 26, scope: !313)
!320 = !DILocation(line: 82, column: 5, scope: !313)
!321 = !DILocation(line: 83, column: 24, scope: !313)
!322 = !DILocation(line: 83, column: 30, scope: !313)
!323 = !DILocation(line: 83, column: 5, scope: !313)
!324 = !DILocation(line: 84, column: 1, scope: !313)
