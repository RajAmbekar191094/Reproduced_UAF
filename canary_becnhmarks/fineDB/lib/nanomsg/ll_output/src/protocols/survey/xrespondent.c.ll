; ModuleID = './src/protocols/survey/xrespondent.c'
source_filename = "./src/protocols/survey/xrespondent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_sockbase_vfptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nn_xrespondent = type { %struct.nn_sockbase, %struct.nn_excl }
%struct.nn_sockbase = type { ptr, ptr }
%struct.nn_excl = type { ptr, ptr, ptr }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [37 x i8] c"./src/protocols/survey/xrespondent.c\00", align 1, !dbg !7
@nn_xrespondent_socktype_struct = internal global %struct.nn_socktype { i32 2, i32 97, i32 0, ptr @nn_xrespondent_create, ptr @nn_xrespondent_ispeer, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !12
@nn_xrespondent_socktype = dso_local global ptr @nn_xrespondent_socktype_struct, align 8, !dbg !103
@.str.2 = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !127
@nn_xrespondent_sockbase_vfptr = internal constant %struct.nn_sockbase_vfptr { ptr null, ptr @nn_xrespondent_destroy, ptr @nn_xrespondent_add, ptr @nn_xrespondent_rm, ptr @nn_xrespondent_in, ptr @nn_xrespondent_out, ptr @nn_xrespondent_events, ptr @nn_xrespondent_send, ptr @nn_xrespondent_recv, ptr @nn_xrespondent_setopt, ptr @nn_xrespondent_getopt }, align 8, !dbg !132

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xrespondent_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !142 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !146, metadata !DIExpression()), !dbg !147
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !148, metadata !DIExpression()), !dbg !149
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !150, metadata !DIExpression()), !dbg !151
  %7 = load ptr, ptr %4, align 8, !dbg !152
  %8 = getelementptr inbounds %struct.nn_xrespondent, ptr %7, i32 0, i32 0, !dbg !153
  %9 = load ptr, ptr %5, align 8, !dbg !154
  %10 = load ptr, ptr %6, align 8, !dbg !155
  call void @nn_sockbase_init(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !156
  %11 = load ptr, ptr %4, align 8, !dbg !157
  %12 = getelementptr inbounds %struct.nn_xrespondent, ptr %11, i32 0, i32 1, !dbg !158
  call void @nn_excl_init(ptr noundef %12), !dbg !159
  ret void, !dbg !160
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_sockbase_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_excl_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xrespondent_term(ptr noundef %0) #0 !dbg !161 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !164, metadata !DIExpression()), !dbg !165
  %3 = load ptr, ptr %2, align 8, !dbg !166
  %4 = getelementptr inbounds %struct.nn_xrespondent, ptr %3, i32 0, i32 1, !dbg !167
  call void @nn_excl_term(ptr noundef %4), !dbg !168
  %5 = load ptr, ptr %2, align 8, !dbg !169
  %6 = getelementptr inbounds %struct.nn_xrespondent, ptr %5, i32 0, i32 0, !dbg !170
  call void @nn_sockbase_term(ptr noundef %6), !dbg !171
  ret void, !dbg !172
}

declare void @nn_excl_term(ptr noundef) #2

declare void @nn_sockbase_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xrespondent_add(ptr noundef %0, ptr noundef %1) #0 !dbg !173 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !174, metadata !DIExpression()), !dbg !175
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !176, metadata !DIExpression()), !dbg !177
  %5 = load ptr, ptr %3, align 8, !dbg !178
  %6 = icmp ne ptr %5, null, !dbg !178
  br i1 %6, label %7, label %10, !dbg !178

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !178
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !178
  br label %11, !dbg !178

10:                                               ; preds = %2
  br label %11, !dbg !178

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !178
  %13 = getelementptr inbounds %struct.nn_xrespondent, ptr %12, i32 0, i32 1, !dbg !179
  %14 = load ptr, ptr %4, align 8, !dbg !180
  %15 = call i32 @nn_excl_add(ptr noundef %13, ptr noundef %14), !dbg !181
  ret i32 %15, !dbg !182
}

declare i32 @nn_excl_add(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xrespondent_rm(ptr noundef %0, ptr noundef %1) #0 !dbg !183 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !184, metadata !DIExpression()), !dbg !185
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !186, metadata !DIExpression()), !dbg !187
  %5 = load ptr, ptr %3, align 8, !dbg !188
  %6 = icmp ne ptr %5, null, !dbg !188
  br i1 %6, label %7, label %10, !dbg !188

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !188
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !188
  br label %11, !dbg !188

10:                                               ; preds = %2
  br label %11, !dbg !188

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !188
  %13 = getelementptr inbounds %struct.nn_xrespondent, ptr %12, i32 0, i32 1, !dbg !189
  %14 = load ptr, ptr %4, align 8, !dbg !190
  call void @nn_excl_rm(ptr noundef %13, ptr noundef %14), !dbg !191
  ret void, !dbg !192
}

declare void @nn_excl_rm(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xrespondent_in(ptr noundef %0, ptr noundef %1) #0 !dbg !193 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !194, metadata !DIExpression()), !dbg !195
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !196, metadata !DIExpression()), !dbg !197
  %5 = load ptr, ptr %3, align 8, !dbg !198
  %6 = icmp ne ptr %5, null, !dbg !198
  br i1 %6, label %7, label %10, !dbg !198

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !198
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !198
  br label %11, !dbg !198

10:                                               ; preds = %2
  br label %11, !dbg !198

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !198
  %13 = getelementptr inbounds %struct.nn_xrespondent, ptr %12, i32 0, i32 1, !dbg !199
  %14 = load ptr, ptr %4, align 8, !dbg !200
  call void @nn_excl_in(ptr noundef %13, ptr noundef %14), !dbg !201
  ret void, !dbg !202
}

declare void @nn_excl_in(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_xrespondent_out(ptr noundef %0, ptr noundef %1) #0 !dbg !203 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !204, metadata !DIExpression()), !dbg !205
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !206, metadata !DIExpression()), !dbg !207
  %5 = load ptr, ptr %3, align 8, !dbg !208
  %6 = icmp ne ptr %5, null, !dbg !208
  br i1 %6, label %7, label %10, !dbg !208

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !208
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !208
  br label %11, !dbg !208

10:                                               ; preds = %2
  br label %11, !dbg !208

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !208
  %13 = getelementptr inbounds %struct.nn_xrespondent, ptr %12, i32 0, i32 1, !dbg !209
  %14 = load ptr, ptr %4, align 8, !dbg !210
  call void @nn_excl_out(ptr noundef %13, ptr noundef %14), !dbg !211
  ret void, !dbg !212
}

declare void @nn_excl_out(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xrespondent_events(ptr noundef %0) #0 !dbg !213 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata ptr %3, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata ptr %4, metadata !218, metadata !DIExpression()), !dbg !219
  %5 = load ptr, ptr %2, align 8, !dbg !220
  %6 = icmp ne ptr %5, null, !dbg !220
  br i1 %6, label %7, label %10, !dbg !220

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !220
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !220
  br label %11, !dbg !220

10:                                               ; preds = %1
  br label %11, !dbg !220

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !220
  store ptr %12, ptr %3, align 8, !dbg !221
  store i32 0, ptr %4, align 4, !dbg !222
  %13 = load ptr, ptr %3, align 8, !dbg !223
  %14 = getelementptr inbounds %struct.nn_xrespondent, ptr %13, i32 0, i32 1, !dbg !225
  %15 = call i32 @nn_excl_can_recv(ptr noundef %14), !dbg !226
  %16 = icmp ne i32 %15, 0, !dbg !226
  br i1 %16, label %17, label %20, !dbg !227

17:                                               ; preds = %11
  %18 = load i32, ptr %4, align 4, !dbg !228
  %19 = or i32 %18, 1, !dbg !228
  store i32 %19, ptr %4, align 4, !dbg !228
  br label %20, !dbg !229

20:                                               ; preds = %17, %11
  %21 = load ptr, ptr %3, align 8, !dbg !230
  %22 = getelementptr inbounds %struct.nn_xrespondent, ptr %21, i32 0, i32 1, !dbg !232
  %23 = call i32 @nn_excl_can_send(ptr noundef %22), !dbg !233
  %24 = icmp ne i32 %23, 0, !dbg !233
  br i1 %24, label %25, label %28, !dbg !234

25:                                               ; preds = %20
  %26 = load i32, ptr %4, align 4, !dbg !235
  %27 = or i32 %26, 2, !dbg !235
  store i32 %27, ptr %4, align 4, !dbg !235
  br label %28, !dbg !236

28:                                               ; preds = %25, %20
  %29 = load i32, ptr %4, align 4, !dbg !237
  ret i32 %29, !dbg !238
}

declare i32 @nn_excl_can_recv(ptr noundef) #2

declare i32 @nn_excl_can_send(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xrespondent_send(ptr noundef %0, ptr noundef %1) #0 !dbg !239 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !240, metadata !DIExpression()), !dbg !241
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata ptr %5, metadata !244, metadata !DIExpression()), !dbg !245
  %6 = load ptr, ptr %3, align 8, !dbg !246
  %7 = icmp ne ptr %6, null, !dbg !246
  br i1 %7, label %8, label %11, !dbg !246

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !dbg !246
  %10 = getelementptr inbounds i8, ptr %9, i64 0, !dbg !246
  br label %12, !dbg !246

11:                                               ; preds = %2
  br label %12, !dbg !246

12:                                               ; preds = %11, %8
  %13 = phi ptr [ %10, %8 ], [ null, %11 ], !dbg !246
  store ptr %13, ptr %5, align 8, !dbg !247
  %14 = load ptr, ptr %5, align 8, !dbg !248
  %15 = getelementptr inbounds %struct.nn_xrespondent, ptr %14, i32 0, i32 1, !dbg !249
  %16 = load ptr, ptr %4, align 8, !dbg !250
  %17 = call i32 @nn_excl_send(ptr noundef %15, ptr noundef %16), !dbg !251
  ret i32 %17, !dbg !252
}

declare i32 @nn_excl_send(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xrespondent_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !253 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !254, metadata !DIExpression()), !dbg !255
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata ptr %6, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata ptr %7, metadata !260, metadata !DIExpression()), !dbg !261
  %8 = load ptr, ptr %4, align 8, !dbg !262
  %9 = icmp ne ptr %8, null, !dbg !262
  br i1 %9, label %10, label %13, !dbg !262

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !262
  %12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !262
  br label %14, !dbg !262

13:                                               ; preds = %2
  br label %14, !dbg !262

14:                                               ; preds = %13, %10
  %15 = phi ptr [ %12, %10 ], [ null, %13 ], !dbg !262
  store ptr %15, ptr %7, align 8, !dbg !263
  %16 = load ptr, ptr %7, align 8, !dbg !264
  %17 = getelementptr inbounds %struct.nn_xrespondent, ptr %16, i32 0, i32 1, !dbg !265
  %18 = load ptr, ptr %5, align 8, !dbg !266
  %19 = call i32 @nn_excl_recv(ptr noundef %17, ptr noundef %18), !dbg !267
  store i32 %19, ptr %6, align 4, !dbg !268
  %20 = load i32, ptr %6, align 4, !dbg !269
  %21 = icmp eq i32 %20, -11, !dbg !271
  br i1 %21, label %22, label %23, !dbg !272

22:                                               ; preds = %14
  store i32 -11, ptr %3, align 4, !dbg !273
  br label %68, !dbg !273

23:                                               ; preds = %14
  br label %24, !dbg !274

24:                                               ; preds = %23
  %25 = load i32, ptr %6, align 4, !dbg !275
  %26 = icmp sge i32 %25, 0, !dbg !275
  %27 = xor i1 %26, true, !dbg !275
  %28 = zext i1 %27 to i32, !dbg !275
  %29 = sext i32 %28 to i64, !dbg !275
  %30 = icmp ne i64 %29, 0, !dbg !275
  br i1 %30, label %31, label %39, !dbg !278

31:                                               ; preds = %24
  %32 = load ptr, ptr @stderr, align 8, !dbg !279
  %33 = load i32, ptr %6, align 4, !dbg !279
  %34 = sub nsw i32 0, %33, !dbg !279
  %35 = call ptr @nn_err_strerror(i32 noundef %34), !dbg !279
  %36 = load i32, ptr %6, align 4, !dbg !279
  %37 = sub nsw i32 0, %36, !dbg !279
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str, ptr noundef %35, i32 noundef %37, ptr noundef @.str.1, i32 noundef 131), !dbg !279
  call void @nn_err_abort() #5, !dbg !279
  unreachable, !dbg !279

39:                                               ; preds = %24
  br label %40, !dbg !278

40:                                               ; preds = %39
  %41 = load i32, ptr %6, align 4, !dbg !281
  %42 = and i32 %41, 2, !dbg !283
  %43 = icmp ne i32 %42, 0, !dbg !283
  br i1 %43, label %67, label %44, !dbg !284

44:                                               ; preds = %40
  %45 = load ptr, ptr %5, align 8, !dbg !285
  %46 = getelementptr inbounds %struct.nn_msg, ptr %45, i32 0, i32 1, !dbg !285
  %47 = call i64 @nn_chunkref_size(ptr noundef %46), !dbg !285
  %48 = icmp ult i64 %47, 4, !dbg !285
  %49 = zext i1 %48 to i32, !dbg !285
  %50 = sext i32 %49 to i64, !dbg !285
  %51 = icmp ne i64 %50, 0, !dbg !285
  br i1 %51, label %52, label %54, !dbg !288

52:                                               ; preds = %44
  %53 = load ptr, ptr %5, align 8, !dbg !289
  call void @nn_msg_term(ptr noundef %53), !dbg !291
  store i32 -11, ptr %3, align 4, !dbg !292
  br label %68, !dbg !292

54:                                               ; preds = %44
  %55 = load ptr, ptr %5, align 8, !dbg !293
  %56 = getelementptr inbounds %struct.nn_msg, ptr %55, i32 0, i32 0, !dbg !294
  call void @nn_chunkref_term(ptr noundef %56), !dbg !295
  %57 = load ptr, ptr %5, align 8, !dbg !296
  %58 = getelementptr inbounds %struct.nn_msg, ptr %57, i32 0, i32 0, !dbg !297
  call void @nn_chunkref_init(ptr noundef %58, i64 noundef 4), !dbg !298
  %59 = load ptr, ptr %5, align 8, !dbg !299
  %60 = getelementptr inbounds %struct.nn_msg, ptr %59, i32 0, i32 0, !dbg !300
  %61 = call ptr @nn_chunkref_data(ptr noundef %60), !dbg !301
  %62 = load ptr, ptr %5, align 8, !dbg !302
  %63 = getelementptr inbounds %struct.nn_msg, ptr %62, i32 0, i32 1, !dbg !303
  %64 = call ptr @nn_chunkref_data(ptr noundef %63), !dbg !304
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 1 %64, i64 4, i1 false), !dbg !305
  %65 = load ptr, ptr %5, align 8, !dbg !306
  %66 = getelementptr inbounds %struct.nn_msg, ptr %65, i32 0, i32 1, !dbg !307
  call void @nn_chunkref_trim(ptr noundef %66, i64 noundef 4), !dbg !308
  br label %67, !dbg !309

67:                                               ; preds = %54, %40
  store i32 0, ptr %3, align 4, !dbg !310
  br label %68, !dbg !310

68:                                               ; preds = %67, %52, %22
  %69 = load i32, ptr %3, align 4, !dbg !311
  ret i32 %69, !dbg !311
}

declare i32 @nn_excl_recv(ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare ptr @nn_err_strerror(i32 noundef) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare i64 @nn_chunkref_size(ptr noundef) #2

declare void @nn_msg_term(ptr noundef) #2

declare void @nn_chunkref_term(ptr noundef) #2

declare void @nn_chunkref_init(ptr noundef, i64 noundef) #2

declare ptr @nn_chunkref_data(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @nn_chunkref_trim(ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xrespondent_setopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !312 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !313, metadata !DIExpression()), !dbg !314
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !315, metadata !DIExpression()), !dbg !316
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !317, metadata !DIExpression()), !dbg !318
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !319, metadata !DIExpression()), !dbg !320
  store i64 %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !321, metadata !DIExpression()), !dbg !322
  ret i32 -92, !dbg !323
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xrespondent_getopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !324 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !325, metadata !DIExpression()), !dbg !326
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !327, metadata !DIExpression()), !dbg !328
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !329, metadata !DIExpression()), !dbg !330
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !331, metadata !DIExpression()), !dbg !332
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !333, metadata !DIExpression()), !dbg !334
  ret i32 -92, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_xrespondent_ispeer(i32 noundef %0) #0 !dbg !336 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !337, metadata !DIExpression()), !dbg !338
  %3 = load i32, ptr %2, align 4, !dbg !339
  %4 = icmp eq i32 %3, 96, !dbg !340
  %5 = zext i1 %4 to i64, !dbg !339
  %6 = select i1 %4, i32 1, i32 0, !dbg !339
  ret i32 %6, !dbg !341
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xrespondent_create(ptr noundef %0, ptr noundef %1) #0 !dbg !342 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !343, metadata !DIExpression()), !dbg !344
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata ptr %5, metadata !347, metadata !DIExpression()), !dbg !348
  %6 = call ptr @nn_alloc_(i64 noundef 40), !dbg !349
  store ptr %6, ptr %5, align 8, !dbg !350
  br label %7, !dbg !351

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !dbg !352
  %9 = icmp ne ptr %8, null, !dbg !352
  %10 = xor i1 %9, true, !dbg !352
  %11 = zext i1 %10 to i32, !dbg !352
  %12 = sext i32 %11 to i64, !dbg !352
  %13 = icmp ne i64 %12, 0, !dbg !352
  br i1 %13, label %14, label %17, !dbg !355

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !356
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 166), !dbg !356
  call void @nn_err_abort() #5, !dbg !356
  unreachable, !dbg !356

17:                                               ; preds = %7
  br label %18, !dbg !355

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !358
  %20 = load ptr, ptr %3, align 8, !dbg !359
  call void @nn_xrespondent_init(ptr noundef %19, ptr noundef @nn_xrespondent_sockbase_vfptr, ptr noundef %20), !dbg !360
  %21 = load ptr, ptr %5, align 8, !dbg !361
  %22 = getelementptr inbounds %struct.nn_xrespondent, ptr %21, i32 0, i32 0, !dbg !362
  %23 = load ptr, ptr %4, align 8, !dbg !363
  store ptr %22, ptr %23, align 8, !dbg !364
  ret i32 0, !dbg !365
}

declare ptr @nn_alloc_(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_xrespondent_destroy(ptr noundef %0) #0 !dbg !366 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !367, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.declare(metadata ptr %3, metadata !369, metadata !DIExpression()), !dbg !370
  %4 = load ptr, ptr %2, align 8, !dbg !371
  %5 = icmp ne ptr %4, null, !dbg !371
  br i1 %5, label %6, label %9, !dbg !371

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !371
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !371
  br label %10, !dbg !371

9:                                                ; preds = %1
  br label %10, !dbg !371

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !371
  store ptr %11, ptr %3, align 8, !dbg !372
  %12 = load ptr, ptr %3, align 8, !dbg !373
  call void @nn_xrespondent_term(ptr noundef %12), !dbg !374
  %13 = load ptr, ptr %3, align 8, !dbg !375
  call void @nn_free(ptr noundef %13), !dbg !376
  ret void, !dbg !377
}

declare void @nn_free(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/protocols/survey/xrespondent.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "07f9c4263d2177bfd0666169506e39bf")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 37)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "nn_xrespondent_socktype_struct", scope: !14, file: !2, line: 178, type: !106, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !15, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !16, globals: !102, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "src/protocols/survey/xrespondent.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "07f9c4263d2177bfd0666169506e39bf")
!16 = !{!17, !101, !40}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xrespondent", file: !19, line: 32, size: 320, elements: !20)
!19 = !DIFile(filename: "./src/protocols/survey/xrespondent.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "5c624dc14d3da1cc6b44dc29a5bcdc99")
!20 = !{!21, !94}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !18, file: !19, line: 33, baseType: !22, size: 128)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !23, line: 123, size: 128, elements: !24)
!23 = !DIFile(filename: "./src/protocols/survey/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
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
!94 = !DIDerivedType(tag: DW_TAG_member, name: "excl", scope: !18, file: !19, line: 34, baseType: !95, size: 192, offset: 128)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_excl", file: !96, line: 33, size: 192, elements: !97)
!96 = !DIFile(filename: "./src/protocols/survey/../utils/excl.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "f0be91890d61f5b1f69020e9c0441656")
!97 = !{!98, !99, !100}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !95, file: !96, line: 37, baseType: !41, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "inpipe", scope: !95, file: !96, line: 40, baseType: !41, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "outpipe", scope: !95, file: !96, line: 43, baseType: !41, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!102 = !{!0, !7, !103, !12, !127, !132}
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "nn_xrespondent_socktype", scope: !14, file: !2, line: 187, type: !105, isLocal: false, isDefinition: true)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !23, line: 160, size: 384, elements: !107)
!107 = !{!108, !109, !110, !111, !116, !120}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !106, file: !23, line: 163, baseType: !40, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !106, file: !23, line: 164, baseType: !40, size: 32, offset: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !106, file: !23, line: 167, baseType: !40, size: 32, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !106, file: !23, line: 173, baseType: !112, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!40, !89, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !106, file: !23, line: 179, baseType: !117, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!40, !40}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !106, file: !23, line: 183, baseType: !121, size: 128, offset: 256)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !122, line: 26, size: 128, elements: !123)
!122 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!123 = !{!124, !126}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !121, file: !122, line: 27, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !121, file: !122, line: 28, baseType: !125, size: 64, offset: 64)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !2, line: 166, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 23)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "nn_xrespondent_sockbase_vfptr", scope: !14, file: !2, line: 38, type: !27, isLocal: true, isDefinition: true)
!134 = !{i32 7, !"Dwarf Version", i32 5}
!135 = !{i32 2, !"Debug Info Version", i32 3}
!136 = !{i32 1, !"wchar_size", i32 4}
!137 = !{i32 8, !"PIC Level", i32 2}
!138 = !{i32 7, !"PIE Level", i32 2}
!139 = !{i32 7, !"uwtable", i32 2}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 16.0.0"}
!142 = distinct !DISubprogram(name: "nn_xrespondent_init", scope: !2, file: !2, line: 52, type: !143, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !145)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !17, !26, !89}
!145 = !{}
!146 = !DILocalVariable(name: "self", arg: 1, scope: !142, file: !2, line: 52, type: !17)
!147 = !DILocation(line: 52, column: 50, scope: !142)
!148 = !DILocalVariable(name: "vfptr", arg: 2, scope: !142, file: !2, line: 53, type: !26)
!149 = !DILocation(line: 53, column: 37, scope: !142)
!150 = !DILocalVariable(name: "hint", arg: 3, scope: !142, file: !2, line: 53, type: !89)
!151 = !DILocation(line: 53, column: 50, scope: !142)
!152 = !DILocation(line: 55, column: 24, scope: !142)
!153 = !DILocation(line: 55, column: 30, scope: !142)
!154 = !DILocation(line: 55, column: 40, scope: !142)
!155 = !DILocation(line: 55, column: 47, scope: !142)
!156 = !DILocation(line: 55, column: 5, scope: !142)
!157 = !DILocation(line: 56, column: 20, scope: !142)
!158 = !DILocation(line: 56, column: 26, scope: !142)
!159 = !DILocation(line: 56, column: 5, scope: !142)
!160 = !DILocation(line: 57, column: 1, scope: !142)
!161 = distinct !DISubprogram(name: "nn_xrespondent_term", scope: !2, file: !2, line: 59, type: !162, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !145)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !17}
!164 = !DILocalVariable(name: "self", arg: 1, scope: !161, file: !2, line: 59, type: !17)
!165 = !DILocation(line: 59, column: 50, scope: !161)
!166 = !DILocation(line: 61, column: 20, scope: !161)
!167 = !DILocation(line: 61, column: 26, scope: !161)
!168 = !DILocation(line: 61, column: 5, scope: !161)
!169 = !DILocation(line: 62, column: 24, scope: !161)
!170 = !DILocation(line: 62, column: 30, scope: !161)
!171 = !DILocation(line: 62, column: 5, scope: !161)
!172 = !DILocation(line: 63, column: 1, scope: !161)
!173 = distinct !DISubprogram(name: "nn_xrespondent_add", scope: !2, file: !2, line: 75, type: !38, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !145)
!174 = !DILocalVariable(name: "self", arg: 1, scope: !173, file: !2, line: 75, type: !34)
!175 = !DILocation(line: 75, column: 45, scope: !173)
!176 = !DILocalVariable(name: "pipe", arg: 2, scope: !173, file: !2, line: 75, type: !41)
!177 = !DILocation(line: 75, column: 67, scope: !173)
!178 = !DILocation(line: 77, column: 26, scope: !173)
!179 = !DILocation(line: 77, column: 75, scope: !173)
!180 = !DILocation(line: 78, column: 9, scope: !173)
!181 = !DILocation(line: 77, column: 12, scope: !173)
!182 = !DILocation(line: 77, column: 5, scope: !173)
!183 = distinct !DISubprogram(name: "nn_xrespondent_rm", scope: !2, file: !2, line: 81, type: !45, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !145)
!184 = !DILocalVariable(name: "self", arg: 1, scope: !183, file: !2, line: 81, type: !34)
!185 = !DILocation(line: 81, column: 45, scope: !183)
!186 = !DILocalVariable(name: "pipe", arg: 2, scope: !183, file: !2, line: 81, type: !41)
!187 = !DILocation(line: 81, column: 67, scope: !183)
!188 = !DILocation(line: 83, column: 18, scope: !183)
!189 = !DILocation(line: 83, column: 67, scope: !183)
!190 = !DILocation(line: 83, column: 73, scope: !183)
!191 = !DILocation(line: 83, column: 5, scope: !183)
!192 = !DILocation(line: 84, column: 1, scope: !183)
!193 = distinct !DISubprogram(name: "nn_xrespondent_in", scope: !2, file: !2, line: 86, type: !45, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !145)
!194 = !DILocalVariable(name: "self", arg: 1, scope: !193, file: !2, line: 86, type: !34)
!195 = !DILocation(line: 86, column: 45, scope: !193)
!196 = !DILocalVariable(name: "pipe", arg: 2, scope: !193, file: !2, line: 86, type: !41)
!197 = !DILocation(line: 86, column: 67, scope: !193)
!198 = !DILocation(line: 88, column: 18, scope: !193)
!199 = !DILocation(line: 88, column: 67, scope: !193)
!200 = !DILocation(line: 88, column: 73, scope: !193)
!201 = !DILocation(line: 88, column: 5, scope: !193)
!202 = !DILocation(line: 89, column: 1, scope: !193)
!203 = distinct !DISubprogram(name: "nn_xrespondent_out", scope: !2, file: !2, line: 91, type: !45, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !145)
!204 = !DILocalVariable(name: "self", arg: 1, scope: !203, file: !2, line: 91, type: !34)
!205 = !DILocation(line: 91, column: 46, scope: !203)
!206 = !DILocalVariable(name: "pipe", arg: 2, scope: !203, file: !2, line: 91, type: !41)
!207 = !DILocation(line: 91, column: 68, scope: !203)
!208 = !DILocation(line: 93, column: 19, scope: !203)
!209 = !DILocation(line: 93, column: 68, scope: !203)
!210 = !DILocation(line: 93, column: 74, scope: !203)
!211 = !DILocation(line: 93, column: 5, scope: !203)
!212 = !DILocation(line: 94, column: 1, scope: !203)
!213 = distinct !DISubprogram(name: "nn_xrespondent_events", scope: !2, file: !2, line: 96, type: !51, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !145)
!214 = !DILocalVariable(name: "self", arg: 1, scope: !213, file: !2, line: 96, type: !34)
!215 = !DILocation(line: 96, column: 48, scope: !213)
!216 = !DILocalVariable(name: "xrespondent", scope: !213, file: !2, line: 98, type: !17)
!217 = !DILocation(line: 98, column: 28, scope: !213)
!218 = !DILocalVariable(name: "events", scope: !213, file: !2, line: 99, type: !40)
!219 = !DILocation(line: 99, column: 9, scope: !213)
!220 = !DILocation(line: 101, column: 19, scope: !213)
!221 = !DILocation(line: 101, column: 17, scope: !213)
!222 = !DILocation(line: 103, column: 12, scope: !213)
!223 = !DILocation(line: 104, column: 28, scope: !224)
!224 = distinct !DILexicalBlock(scope: !213, file: !2, line: 104, column: 9)
!225 = !DILocation(line: 104, column: 41, scope: !224)
!226 = !DILocation(line: 104, column: 9, scope: !224)
!227 = !DILocation(line: 104, column: 9, scope: !213)
!228 = !DILocation(line: 105, column: 16, scope: !224)
!229 = !DILocation(line: 105, column: 9, scope: !224)
!230 = !DILocation(line: 106, column: 28, scope: !231)
!231 = distinct !DILexicalBlock(scope: !213, file: !2, line: 106, column: 9)
!232 = !DILocation(line: 106, column: 41, scope: !231)
!233 = !DILocation(line: 106, column: 9, scope: !231)
!234 = !DILocation(line: 106, column: 9, scope: !213)
!235 = !DILocation(line: 107, column: 16, scope: !231)
!236 = !DILocation(line: 107, column: 9, scope: !231)
!237 = !DILocation(line: 108, column: 12, scope: !213)
!238 = !DILocation(line: 108, column: 5, scope: !213)
!239 = distinct !DISubprogram(name: "nn_xrespondent_send", scope: !2, file: !2, line: 111, type: !55, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !145)
!240 = !DILocalVariable(name: "self", arg: 1, scope: !239, file: !2, line: 111, type: !34)
!241 = !DILocation(line: 111, column: 46, scope: !239)
!242 = !DILocalVariable(name: "msg", arg: 2, scope: !239, file: !2, line: 111, type: !57)
!243 = !DILocation(line: 111, column: 67, scope: !239)
!244 = !DILocalVariable(name: "xrespondent", scope: !239, file: !2, line: 113, type: !17)
!245 = !DILocation(line: 113, column: 28, scope: !239)
!246 = !DILocation(line: 115, column: 19, scope: !239)
!247 = !DILocation(line: 115, column: 17, scope: !239)
!248 = !DILocation(line: 117, column: 27, scope: !239)
!249 = !DILocation(line: 117, column: 40, scope: !239)
!250 = !DILocation(line: 117, column: 46, scope: !239)
!251 = !DILocation(line: 117, column: 12, scope: !239)
!252 = !DILocation(line: 117, column: 5, scope: !239)
!253 = distinct !DISubprogram(name: "nn_xrespondent_recv", scope: !2, file: !2, line: 120, type: !55, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !145)
!254 = !DILocalVariable(name: "self", arg: 1, scope: !253, file: !2, line: 120, type: !34)
!255 = !DILocation(line: 120, column: 46, scope: !253)
!256 = !DILocalVariable(name: "msg", arg: 2, scope: !253, file: !2, line: 120, type: !57)
!257 = !DILocation(line: 120, column: 67, scope: !253)
!258 = !DILocalVariable(name: "rc", scope: !253, file: !2, line: 122, type: !40)
!259 = !DILocation(line: 122, column: 9, scope: !253)
!260 = !DILocalVariable(name: "xrespondent", scope: !253, file: !2, line: 123, type: !17)
!261 = !DILocation(line: 123, column: 28, scope: !253)
!262 = !DILocation(line: 125, column: 19, scope: !253)
!263 = !DILocation(line: 125, column: 17, scope: !253)
!264 = !DILocation(line: 128, column: 25, scope: !253)
!265 = !DILocation(line: 128, column: 38, scope: !253)
!266 = !DILocation(line: 128, column: 44, scope: !253)
!267 = !DILocation(line: 128, column: 10, scope: !253)
!268 = !DILocation(line: 128, column: 8, scope: !253)
!269 = !DILocation(line: 129, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !253, file: !2, line: 129, column: 9)
!271 = !DILocation(line: 129, column: 12, scope: !270)
!272 = !DILocation(line: 129, column: 9, scope: !253)
!273 = !DILocation(line: 130, column: 9, scope: !270)
!274 = !DILocation(line: 131, column: 5, scope: !253)
!275 = !DILocation(line: 131, column: 5, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !2, line: 131, column: 5)
!277 = distinct !DILexicalBlock(scope: !253, file: !2, line: 131, column: 5)
!278 = !DILocation(line: 131, column: 5, scope: !277)
!279 = !DILocation(line: 131, column: 5, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !2, line: 131, column: 5)
!281 = !DILocation(line: 134, column: 11, scope: !282)
!282 = distinct !DILexicalBlock(scope: !253, file: !2, line: 134, column: 9)
!283 = !DILocation(line: 134, column: 14, scope: !282)
!284 = !DILocation(line: 134, column: 9, scope: !253)
!285 = !DILocation(line: 135, column: 13, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !2, line: 135, column: 13)
!287 = distinct !DILexicalBlock(scope: !282, file: !2, line: 134, column: 33)
!288 = !DILocation(line: 135, column: 13, scope: !287)
!289 = !DILocation(line: 136, column: 26, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !2, line: 135, column: 74)
!291 = !DILocation(line: 136, column: 13, scope: !290)
!292 = !DILocation(line: 137, column: 13, scope: !290)
!293 = !DILocation(line: 139, column: 28, scope: !287)
!294 = !DILocation(line: 139, column: 33, scope: !287)
!295 = !DILocation(line: 139, column: 9, scope: !287)
!296 = !DILocation(line: 140, column: 28, scope: !287)
!297 = !DILocation(line: 140, column: 33, scope: !287)
!298 = !DILocation(line: 140, column: 9, scope: !287)
!299 = !DILocation(line: 141, column: 36, scope: !287)
!300 = !DILocation(line: 141, column: 41, scope: !287)
!301 = !DILocation(line: 141, column: 17, scope: !287)
!302 = !DILocation(line: 141, column: 66, scope: !287)
!303 = !DILocation(line: 141, column: 71, scope: !287)
!304 = !DILocation(line: 141, column: 47, scope: !287)
!305 = !DILocation(line: 141, column: 9, scope: !287)
!306 = !DILocation(line: 143, column: 28, scope: !287)
!307 = !DILocation(line: 143, column: 33, scope: !287)
!308 = !DILocation(line: 143, column: 9, scope: !287)
!309 = !DILocation(line: 144, column: 5, scope: !287)
!310 = !DILocation(line: 146, column: 5, scope: !253)
!311 = !DILocation(line: 147, column: 1, scope: !253)
!312 = distinct !DISubprogram(name: "nn_xrespondent_setopt", scope: !2, file: !2, line: 149, type: !78, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !145)
!313 = !DILocalVariable(name: "self", arg: 1, scope: !312, file: !2, line: 149, type: !34)
!314 = !DILocation(line: 149, column: 48, scope: !312)
!315 = !DILocalVariable(name: "level", arg: 2, scope: !312, file: !2, line: 149, type: !40)
!316 = !DILocation(line: 149, column: 58, scope: !312)
!317 = !DILocalVariable(name: "option", arg: 3, scope: !312, file: !2, line: 149, type: !40)
!318 = !DILocation(line: 149, column: 69, scope: !312)
!319 = !DILocalVariable(name: "optval", arg: 4, scope: !312, file: !2, line: 150, type: !80)
!320 = !DILocation(line: 150, column: 21, scope: !312)
!321 = !DILocalVariable(name: "optvallen", arg: 5, scope: !312, file: !2, line: 150, type: !82)
!322 = !DILocation(line: 150, column: 36, scope: !312)
!323 = !DILocation(line: 152, column: 5, scope: !312)
!324 = distinct !DISubprogram(name: "nn_xrespondent_getopt", scope: !2, file: !2, line: 155, type: !87, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !145)
!325 = !DILocalVariable(name: "self", arg: 1, scope: !324, file: !2, line: 155, type: !34)
!326 = !DILocation(line: 155, column: 48, scope: !324)
!327 = !DILocalVariable(name: "level", arg: 2, scope: !324, file: !2, line: 155, type: !40)
!328 = !DILocation(line: 155, column: 58, scope: !324)
!329 = !DILocalVariable(name: "option", arg: 3, scope: !324, file: !2, line: 155, type: !40)
!330 = !DILocation(line: 155, column: 69, scope: !324)
!331 = !DILocalVariable(name: "optval", arg: 4, scope: !324, file: !2, line: 156, type: !89)
!332 = !DILocation(line: 156, column: 15, scope: !324)
!333 = !DILocalVariable(name: "optvallen", arg: 5, scope: !324, file: !2, line: 156, type: !90)
!334 = !DILocation(line: 156, column: 31, scope: !324)
!335 = !DILocation(line: 158, column: 5, scope: !324)
!336 = distinct !DISubprogram(name: "nn_xrespondent_ispeer", scope: !2, file: !2, line: 173, type: !118, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !145)
!337 = !DILocalVariable(name: "socktype", arg: 1, scope: !336, file: !2, line: 173, type: !40)
!338 = !DILocation(line: 173, column: 32, scope: !336)
!339 = !DILocation(line: 175, column: 12, scope: !336)
!340 = !DILocation(line: 175, column: 21, scope: !336)
!341 = !DILocation(line: 175, column: 5, scope: !336)
!342 = distinct !DISubprogram(name: "nn_xrespondent_create", scope: !2, file: !2, line: 161, type: !113, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !145)
!343 = !DILocalVariable(name: "hint", arg: 1, scope: !342, file: !2, line: 161, type: !89)
!344 = !DILocation(line: 161, column: 41, scope: !342)
!345 = !DILocalVariable(name: "sockbase", arg: 2, scope: !342, file: !2, line: 161, type: !115)
!346 = !DILocation(line: 161, column: 68, scope: !342)
!347 = !DILocalVariable(name: "self", scope: !342, file: !2, line: 163, type: !17)
!348 = !DILocation(line: 163, column: 28, scope: !342)
!349 = !DILocation(line: 165, column: 12, scope: !342)
!350 = !DILocation(line: 165, column: 10, scope: !342)
!351 = !DILocation(line: 166, column: 5, scope: !342)
!352 = !DILocation(line: 166, column: 5, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !2, line: 166, column: 5)
!354 = distinct !DILexicalBlock(scope: !342, file: !2, line: 166, column: 5)
!355 = !DILocation(line: 166, column: 5, scope: !354)
!356 = !DILocation(line: 166, column: 5, scope: !357)
!357 = distinct !DILexicalBlock(scope: !353, file: !2, line: 166, column: 5)
!358 = !DILocation(line: 167, column: 26, scope: !342)
!359 = !DILocation(line: 167, column: 64, scope: !342)
!360 = !DILocation(line: 167, column: 5, scope: !342)
!361 = !DILocation(line: 168, column: 18, scope: !342)
!362 = !DILocation(line: 168, column: 24, scope: !342)
!363 = !DILocation(line: 168, column: 6, scope: !342)
!364 = !DILocation(line: 168, column: 15, scope: !342)
!365 = !DILocation(line: 170, column: 5, scope: !342)
!366 = distinct !DISubprogram(name: "nn_xrespondent_destroy", scope: !2, file: !2, line: 65, type: !32, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !145)
!367 = !DILocalVariable(name: "self", arg: 1, scope: !366, file: !2, line: 65, type: !34)
!368 = !DILocation(line: 65, column: 57, scope: !366)
!369 = !DILocalVariable(name: "xrespondent", scope: !366, file: !2, line: 67, type: !17)
!370 = !DILocation(line: 67, column: 28, scope: !366)
!371 = !DILocation(line: 69, column: 19, scope: !366)
!372 = !DILocation(line: 69, column: 17, scope: !366)
!373 = !DILocation(line: 71, column: 26, scope: !366)
!374 = !DILocation(line: 71, column: 5, scope: !366)
!375 = !DILocation(line: 72, column: 14, scope: !366)
!376 = !DILocation(line: 72, column: 5, scope: !366)
!377 = !DILocation(line: 73, column: 1, scope: !366)
