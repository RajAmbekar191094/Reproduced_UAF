; ModuleID = '/home/raj/lwan/common/lwan-coro.c'
source_filename = "/home/raj/lwan/common/lwan-coro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".text"
module asm "\09.p2align 4"
module asm "\09.globl coro_swapcontext"
module asm "\09coro_swapcontext:"
module asm "\09mov    %rbx,0(%rdi)"
module asm "\09mov    %rbp,8(%rdi)"
module asm "\09mov    %r12,16(%rdi)"
module asm "\09mov    %r13,24(%rdi)"
module asm "\09mov    %r14,32(%rdi)"
module asm "\09mov    %r15,40(%rdi)"
module asm "\09mov    %rdi,48(%rdi)"
module asm "\09mov    %rsi,56(%rdi)"
module asm "\09mov    (%rsp),%rcx"
module asm "\09mov    %rcx,64(%rdi)"
module asm "\09lea    0x8(%rsp),%rcx"
module asm "\09mov    %rcx,72(%rdi)"
module asm "\09mov    72(%rsi),%rsp"
module asm "\09mov    0(%rsi),%rbx"
module asm "\09mov    8(%rsi),%rbp"
module asm "\09mov    16(%rsi),%r12"
module asm "\09mov    24(%rsi),%r13"
module asm "\09mov    32(%rsi),%r14"
module asm "\09mov    40(%rsi),%r15"
module asm "\09mov    48(%rsi),%rdi"
module asm "\09mov    64(%rsi),%rcx"
module asm "\09mov    56(%rsi),%rsi"
module asm "\09jmp    *%rcx"
module asm "\09"

%struct.coro_t_ = type { ptr, [10 x i64], i32, ptr, ptr, i8 }
%struct.coro_defer_t_ = type { ptr, ptr, ptr, ptr }
%struct.coro_switcher_t_ = type { [10 x i64], [10 x i64] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"coro\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [34 x i8] c"/home/raj/lwan/common/lwan-coro.c\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.coro_resume = private unnamed_addr constant [26 x i8] c"int coro_resume(coro_t *)\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [21 x i8] c"coro->ended == false\00", align 1, !dbg !18
@__PRETTY_FUNCTION__.coro_resume_value = private unnamed_addr constant [37 x i8] c"int coro_resume_value(coro_t *, int)\00", align 1, !dbg !23
@__PRETTY_FUNCTION__.coro_yield = private unnamed_addr constant [30 x i8] c"int coro_yield(coro_t *, int)\00", align 1, !dbg !28
@__PRETTY_FUNCTION__.coro_free = private unnamed_addr constant [25 x i8] c"void coro_free(coro_t *)\00", align 1, !dbg !33
@.str.3 = private unnamed_addr constant [5 x i8] c"func\00", align 1, !dbg !38
@__PRETTY_FUNCTION__.coro_defer_any = private unnamed_addr constant [58 x i8] c"void coro_defer_any(coro_t *, void (*)(), void *, void *)\00", align 1, !dbg !40

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coro_reset(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !66 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !108, metadata !DIExpression()), !dbg !109
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !110, metadata !DIExpression()), !dbg !111
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata ptr %7, metadata !114, metadata !DIExpression()), !dbg !115
  %8 = load ptr, ptr %4, align 8, !dbg !116
  %9 = getelementptr inbounds %struct.coro_t_, ptr %8, i64 1, !dbg !117
  store ptr %9, ptr %7, align 8, !dbg !115
  %10 = load ptr, ptr %4, align 8, !dbg !118
  %11 = getelementptr inbounds %struct.coro_t_, ptr %10, i32 0, i32 5, !dbg !119
  store i8 0, ptr %11, align 8, !dbg !120
  %12 = load ptr, ptr %6, align 8, !dbg !121
  %13 = load ptr, ptr %4, align 8, !dbg !122
  %14 = getelementptr inbounds %struct.coro_t_, ptr %13, i32 0, i32 4, !dbg !123
  store ptr %12, ptr %14, align 8, !dbg !124
  %15 = load ptr, ptr %4, align 8, !dbg !125
  call void @coro_run_deferred(ptr noundef %15), !dbg !126
  %16 = load ptr, ptr %4, align 8, !dbg !127
  %17 = ptrtoint ptr %16 to i64, !dbg !128
  %18 = load ptr, ptr %4, align 8, !dbg !129
  %19 = getelementptr inbounds %struct.coro_t_, ptr %18, i32 0, i32 1, !dbg !130
  %20 = getelementptr inbounds [10 x i64], ptr %19, i64 0, i64 6, !dbg !129
  store i64 %17, ptr %20, align 8, !dbg !131
  %21 = load ptr, ptr %5, align 8, !dbg !132
  %22 = ptrtoint ptr %21 to i64, !dbg !133
  %23 = load ptr, ptr %4, align 8, !dbg !134
  %24 = getelementptr inbounds %struct.coro_t_, ptr %23, i32 0, i32 1, !dbg !135
  %25 = getelementptr inbounds [10 x i64], ptr %24, i64 0, i64 7, !dbg !134
  store i64 %22, ptr %25, align 8, !dbg !136
  %26 = load ptr, ptr %4, align 8, !dbg !137
  %27 = getelementptr inbounds %struct.coro_t_, ptr %26, i32 0, i32 1, !dbg !138
  %28 = getelementptr inbounds [10 x i64], ptr %27, i64 0, i64 8, !dbg !137
  store i64 ptrtoint (ptr @coro_entry_point to i64), ptr %28, align 8, !dbg !139
  %29 = load ptr, ptr %7, align 8, !dbg !140
  %30 = ptrtoint ptr %29 to i64, !dbg !141
  %31 = call i64 @__sysconf(i32 noundef 75) #10, !dbg !142
  %32 = mul nsw i64 3, %31, !dbg !142
  %33 = sdiv i64 %32, 2, !dbg !142
  %34 = add i64 %30, %33, !dbg !143
  %35 = load ptr, ptr %4, align 8, !dbg !144
  %36 = getelementptr inbounds %struct.coro_t_, ptr %35, i32 0, i32 1, !dbg !145
  %37 = getelementptr inbounds [10 x i64], ptr %36, i64 0, i64 9, !dbg !144
  store i64 %34, ptr %37, align 8, !dbg !146
  ret void, !dbg !147
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coro_run_deferred(ptr noundef %0) #0 !dbg !148 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata ptr %3, metadata !153, metadata !DIExpression()), !dbg !155
  %5 = load ptr, ptr %2, align 8, !dbg !156
  %6 = getelementptr inbounds %struct.coro_t_, ptr %5, i32 0, i32 3, !dbg !157
  %7 = load ptr, ptr %6, align 8, !dbg !157
  store ptr %7, ptr %3, align 8, !dbg !155
  br label %8, !dbg !158

8:                                                ; preds = %11, %1
  %9 = load ptr, ptr %3, align 8, !dbg !159
  %10 = icmp ne ptr %9, null, !dbg !161
  br i1 %10, label %11, label %26, !dbg !161

11:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !162, metadata !DIExpression()), !dbg !164
  %12 = load ptr, ptr %3, align 8, !dbg !165
  store ptr %12, ptr %4, align 8, !dbg !164
  %13 = load ptr, ptr %3, align 8, !dbg !166
  %14 = getelementptr inbounds %struct.coro_defer_t_, ptr %13, i32 0, i32 1, !dbg !167
  %15 = load ptr, ptr %14, align 8, !dbg !167
  %16 = load ptr, ptr %3, align 8, !dbg !168
  %17 = getelementptr inbounds %struct.coro_defer_t_, ptr %16, i32 0, i32 2, !dbg !169
  %18 = load ptr, ptr %17, align 8, !dbg !169
  %19 = load ptr, ptr %3, align 8, !dbg !170
  %20 = getelementptr inbounds %struct.coro_defer_t_, ptr %19, i32 0, i32 3, !dbg !171
  %21 = load ptr, ptr %20, align 8, !dbg !171
  call void (ptr, ptr, ...) %15(ptr noundef %18, ptr noundef %21), !dbg !166
  %22 = load ptr, ptr %4, align 8, !dbg !172
  %23 = getelementptr inbounds %struct.coro_defer_t_, ptr %22, i32 0, i32 0, !dbg !173
  %24 = load ptr, ptr %23, align 8, !dbg !173
  store ptr %24, ptr %3, align 8, !dbg !174
  %25 = load ptr, ptr %4, align 8, !dbg !175
  call void @free(ptr noundef %25) #10, !dbg !176
  br label %8, !dbg !177, !llvm.loop !178

26:                                               ; preds = %8
  %27 = load ptr, ptr %2, align 8, !dbg !181
  %28 = getelementptr inbounds %struct.coro_t_, ptr %27, i32 0, i32 3, !dbg !182
  store ptr null, ptr %28, align 8, !dbg !183
  ret void, !dbg !184
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coro_entry_point(ptr noundef %0, ptr noundef %1) #0 !dbg !185 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !188, metadata !DIExpression()), !dbg !189
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata ptr %7, metadata !192, metadata !DIExpression()), !dbg !193
  %8 = load ptr, ptr %6, align 8, !dbg !194
  %9 = load ptr, ptr %5, align 8, !dbg !195
  %10 = call i32 %8(ptr noundef %9), !dbg !194
  store i32 %10, ptr %7, align 4, !dbg !193
  %11 = load ptr, ptr %5, align 8, !dbg !196
  %12 = getelementptr inbounds %struct.coro_t_, ptr %11, i32 0, i32 5, !dbg !197
  store i8 1, ptr %12, align 8, !dbg !198
  %13 = load ptr, ptr %5, align 8, !dbg !199
  %14 = load i32, ptr %7, align 4, !dbg !200
  store ptr %13, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !201, metadata !DIExpression()), !dbg !205
  store i32 %14, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !207, metadata !DIExpression()), !dbg !208
  %15 = load ptr, ptr %3, align 8, !dbg !209
  %16 = icmp ne ptr %15, null, !dbg !209
  br i1 %16, label %18, label %17, !dbg !212

17:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 267, ptr noundef @__PRETTY_FUNCTION__.coro_yield) #11, !dbg !209
  unreachable, !dbg !209

18:                                               ; preds = %2
  %19 = load i32, ptr %4, align 4, !dbg !213
  %20 = load ptr, ptr %3, align 8, !dbg !214
  %21 = getelementptr inbounds %struct.coro_t_, ptr %20, i32 0, i32 2, !dbg !215
  store i32 %19, ptr %21, align 8, !dbg !216
  %22 = load ptr, ptr %3, align 8, !dbg !217
  %23 = load ptr, ptr %22, align 8, !dbg !218
  %24 = getelementptr inbounds %struct.coro_switcher_t_, ptr %23, i32 0, i32 1, !dbg !219
  %25 = load ptr, ptr %3, align 8, !dbg !220
  %26 = load ptr, ptr %25, align 8, !dbg !221
  call void @coro_swapcontext(ptr noundef %24, ptr noundef %26) #10, !dbg !222
  %27 = load ptr, ptr %3, align 8, !dbg !223
  %28 = getelementptr inbounds %struct.coro_t_, ptr %27, i32 0, i32 2, !dbg !224
  %29 = load i32, ptr %28, align 8, !dbg !224
  ret void, !dbg !225
}

; Function Attrs: nounwind
declare i64 @__sysconf(i32 noundef) #2

; Function Attrs: alwaysinline nounwind uwtable
define dso_local ptr @coro_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 !dbg !226 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !229, metadata !DIExpression()), !dbg !230
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !231, metadata !DIExpression()), !dbg !232
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata ptr %8, metadata !235, metadata !DIExpression()), !dbg !236
  %9 = call i64 @__sysconf(i32 noundef 75) #10, !dbg !237
  %10 = mul nsw i64 3, %9, !dbg !237
  %11 = sdiv i64 %10, 2, !dbg !237
  %12 = add i64 120, %11, !dbg !238
  %13 = call noalias ptr @malloc(i64 noundef %12) #12, !dbg !239
  store ptr %13, ptr %8, align 8, !dbg !236
  %14 = load ptr, ptr %8, align 8, !dbg !240
  %15 = icmp ne ptr %14, null, !dbg !240
  br i1 %15, label %17, label %16, !dbg !242

16:                                               ; preds = %3
  store ptr null, ptr %4, align 8, !dbg !243
  br label %27, !dbg !243

17:                                               ; preds = %3
  %18 = load ptr, ptr %5, align 8, !dbg !244
  %19 = load ptr, ptr %8, align 8, !dbg !245
  %20 = getelementptr inbounds %struct.coro_t_, ptr %19, i32 0, i32 0, !dbg !246
  store ptr %18, ptr %20, align 8, !dbg !247
  %21 = load ptr, ptr %8, align 8, !dbg !248
  %22 = getelementptr inbounds %struct.coro_t_, ptr %21, i32 0, i32 3, !dbg !249
  store ptr null, ptr %22, align 8, !dbg !250
  %23 = load ptr, ptr %8, align 8, !dbg !251
  %24 = load ptr, ptr %6, align 8, !dbg !252
  %25 = load ptr, ptr %7, align 8, !dbg !253
  call void @coro_reset(ptr noundef %23, ptr noundef %24, ptr noundef %25), !dbg !254
  %26 = load ptr, ptr %8, align 8, !dbg !255
  store ptr %26, ptr %4, align 8, !dbg !256
  br label %27, !dbg !256

27:                                               ; preds = %17, %16
  %28 = load ptr, ptr %4, align 8, !dbg !257
  ret ptr %28, !dbg !257
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: alwaysinline nounwind uwtable
define dso_local ptr @coro_get_data(ptr noundef %0) #3 !dbg !258 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !261, metadata !DIExpression()), !dbg !262
  %3 = load ptr, ptr %2, align 8, !dbg !263
  %4 = icmp ne ptr %3, null, !dbg !263
  %5 = xor i1 %4, true, !dbg !263
  %6 = xor i1 %5, true, !dbg !263
  %7 = zext i1 %6 to i32, !dbg !263
  %8 = sext i32 %7 to i64, !dbg !263
  %9 = icmp ne i64 %8, 0, !dbg !263
  br i1 %9, label %10, label %14, !dbg !263

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !dbg !264
  %12 = getelementptr inbounds %struct.coro_t_, ptr %11, i32 0, i32 4, !dbg !265
  %13 = load ptr, ptr %12, align 8, !dbg !265
  br label %15, !dbg !263

14:                                               ; preds = %1
  br label %15, !dbg !263

15:                                               ; preds = %14, %10
  %16 = phi ptr [ %13, %10 ], [ null, %14 ], !dbg !263
  ret ptr %16, !dbg !266
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i32 @coro_resume(ptr noundef %0) #3 !dbg !267 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !268, metadata !DIExpression()), !dbg !269
  %3 = load ptr, ptr %2, align 8, !dbg !270
  %4 = icmp ne ptr %3, null, !dbg !270
  br i1 %4, label %5, label %6, !dbg !273

5:                                                ; preds = %1
  br label %7, !dbg !273

6:                                                ; preds = %1
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 230, ptr noundef @__PRETTY_FUNCTION__.coro_resume) #11, !dbg !270
  unreachable, !dbg !270

7:                                                ; preds = %5
  %8 = load ptr, ptr %2, align 8, !dbg !274
  %9 = getelementptr inbounds %struct.coro_t_, ptr %8, i32 0, i32 5, !dbg !274
  %10 = load i8, ptr %9, align 8, !dbg !274
  %11 = trunc i8 %10 to i1, !dbg !274
  %12 = zext i1 %11 to i32, !dbg !274
  %13 = icmp eq i32 %12, 0, !dbg !274
  br i1 %13, label %14, label %15, !dbg !277

14:                                               ; preds = %7
  br label %16, !dbg !277

15:                                               ; preds = %7
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 231, ptr noundef @__PRETTY_FUNCTION__.coro_resume) #11, !dbg !274
  unreachable, !dbg !274

16:                                               ; preds = %14
  %17 = load ptr, ptr %2, align 8, !dbg !278
  %18 = getelementptr inbounds %struct.coro_t_, ptr %17, i32 0, i32 0, !dbg !279
  %19 = load ptr, ptr %18, align 8, !dbg !279
  %20 = getelementptr inbounds %struct.coro_switcher_t_, ptr %19, i32 0, i32 0, !dbg !280
  %21 = load ptr, ptr %2, align 8, !dbg !281
  %22 = getelementptr inbounds %struct.coro_t_, ptr %21, i32 0, i32 1, !dbg !282
  call void @coro_swapcontext(ptr noundef %20, ptr noundef %22), !dbg !283
  %23 = load ptr, ptr %2, align 8, !dbg !284
  %24 = getelementptr inbounds %struct.coro_t_, ptr %23, i32 0, i32 5, !dbg !286
  %25 = load i8, ptr %24, align 8, !dbg !286
  %26 = trunc i8 %25 to i1, !dbg !286
  br i1 %26, label %34, label %27, !dbg !287

27:                                               ; preds = %16
  %28 = load ptr, ptr %2, align 8, !dbg !288
  %29 = getelementptr inbounds %struct.coro_t_, ptr %28, i32 0, i32 1, !dbg !289
  %30 = load ptr, ptr %2, align 8, !dbg !290
  %31 = getelementptr inbounds %struct.coro_t_, ptr %30, i32 0, i32 0, !dbg !291
  %32 = load ptr, ptr %31, align 8, !dbg !291
  %33 = getelementptr inbounds %struct.coro_switcher_t_, ptr %32, i32 0, i32 1, !dbg !292
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %33, i64 80, i1 false), !dbg !293
  br label %34, !dbg !293

34:                                               ; preds = %27, %16
  %35 = load ptr, ptr %2, align 8, !dbg !294
  %36 = getelementptr inbounds %struct.coro_t_, ptr %35, i32 0, i32 2, !dbg !295
  %37 = load i32, ptr %36, align 8, !dbg !295
  ret i32 %37, !dbg !296
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

declare void @coro_swapcontext(ptr noundef, ptr noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i32 @coro_resume_value(ptr noundef %0, i32 noundef %1) #3 !dbg !297 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !298, metadata !DIExpression()), !dbg !299
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !300, metadata !DIExpression()), !dbg !301
  %6 = load ptr, ptr %4, align 8, !dbg !302
  %7 = icmp ne ptr %6, null, !dbg !302
  br i1 %7, label %8, label %9, !dbg !305

8:                                                ; preds = %2
  br label %10, !dbg !305

9:                                                ; preds = %2
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 257, ptr noundef @__PRETTY_FUNCTION__.coro_resume_value) #11, !dbg !302
  unreachable, !dbg !302

10:                                               ; preds = %8
  %11 = load ptr, ptr %4, align 8, !dbg !306
  %12 = getelementptr inbounds %struct.coro_t_, ptr %11, i32 0, i32 5, !dbg !306
  %13 = load i8, ptr %12, align 8, !dbg !306
  %14 = trunc i8 %13 to i1, !dbg !306
  %15 = zext i1 %14 to i32, !dbg !306
  %16 = icmp eq i32 %15, 0, !dbg !306
  br i1 %16, label %17, label %18, !dbg !309

17:                                               ; preds = %10
  br label %19, !dbg !309

18:                                               ; preds = %10
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 258, ptr noundef @__PRETTY_FUNCTION__.coro_resume_value) #11, !dbg !306
  unreachable, !dbg !306

19:                                               ; preds = %17
  %20 = load i32, ptr %5, align 4, !dbg !310
  %21 = load ptr, ptr %4, align 8, !dbg !311
  %22 = getelementptr inbounds %struct.coro_t_, ptr %21, i32 0, i32 2, !dbg !312
  store i32 %20, ptr %22, align 8, !dbg !313
  %23 = load ptr, ptr %4, align 8, !dbg !314
  store ptr %23, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !268, metadata !DIExpression()), !dbg !315
  %24 = load ptr, ptr %3, align 8, !dbg !317
  %25 = icmp ne ptr %24, null, !dbg !317
  br i1 %25, label %26, label %33, !dbg !318

26:                                               ; preds = %19
  %27 = load ptr, ptr %3, align 8, !dbg !319
  %28 = getelementptr inbounds %struct.coro_t_, ptr %27, i32 0, i32 5, !dbg !319
  %29 = load i8, ptr %28, align 8, !dbg !319
  %30 = trunc i8 %29 to i1, !dbg !319
  %31 = zext i1 %30 to i32, !dbg !319
  %32 = icmp eq i32 %31, 0, !dbg !319
  br i1 %32, label %34, label %43, !dbg !320

33:                                               ; preds = %19
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 230, ptr noundef @__PRETTY_FUNCTION__.coro_resume) #11, !dbg !317
  unreachable, !dbg !317

34:                                               ; preds = %26
  %35 = load ptr, ptr %3, align 8, !dbg !321
  %36 = load ptr, ptr %35, align 8, !dbg !322
  %37 = load ptr, ptr %3, align 8, !dbg !323
  %38 = getelementptr inbounds %struct.coro_t_, ptr %37, i32 0, i32 1, !dbg !324
  call void @coro_swapcontext(ptr noundef %36, ptr noundef %38) #10, !dbg !325
  %39 = load ptr, ptr %3, align 8, !dbg !326
  %40 = getelementptr inbounds %struct.coro_t_, ptr %39, i32 0, i32 5, !dbg !327
  %41 = load i8, ptr %40, align 8, !dbg !327
  %42 = trunc i8 %41 to i1, !dbg !327
  br i1 %42, label %50, label %44, !dbg !328

43:                                               ; preds = %26
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 231, ptr noundef @__PRETTY_FUNCTION__.coro_resume) #11, !dbg !319
  unreachable, !dbg !319

44:                                               ; preds = %34
  %45 = load ptr, ptr %3, align 8, !dbg !329
  %46 = getelementptr inbounds %struct.coro_t_, ptr %45, i32 0, i32 1, !dbg !330
  %47 = load ptr, ptr %3, align 8, !dbg !331
  %48 = load ptr, ptr %47, align 8, !dbg !332
  %49 = getelementptr inbounds %struct.coro_switcher_t_, ptr %48, i32 0, i32 1, !dbg !333
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %46, ptr align 8 %49, i64 80, i1 false), !dbg !334
  br label %50, !dbg !334

50:                                               ; preds = %34, %44
  %51 = load ptr, ptr %3, align 8, !dbg !335
  %52 = getelementptr inbounds %struct.coro_t_, ptr %51, i32 0, i32 2, !dbg !336
  %53 = load i32, ptr %52, align 8, !dbg !336
  ret i32 %53, !dbg !337
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i32 @coro_yield(ptr noundef %0, i32 noundef %1) #3 !dbg !202 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !201, metadata !DIExpression()), !dbg !338
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !207, metadata !DIExpression()), !dbg !339
  %5 = load ptr, ptr %3, align 8, !dbg !340
  %6 = icmp ne ptr %5, null, !dbg !340
  br i1 %6, label %7, label %8, !dbg !341

7:                                                ; preds = %2
  br label %9, !dbg !341

8:                                                ; preds = %2
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 267, ptr noundef @__PRETTY_FUNCTION__.coro_yield) #11, !dbg !340
  unreachable, !dbg !340

9:                                                ; preds = %7
  %10 = load i32, ptr %4, align 4, !dbg !342
  %11 = load ptr, ptr %3, align 8, !dbg !343
  %12 = getelementptr inbounds %struct.coro_t_, ptr %11, i32 0, i32 2, !dbg !344
  store i32 %10, ptr %12, align 8, !dbg !345
  %13 = load ptr, ptr %3, align 8, !dbg !346
  %14 = getelementptr inbounds %struct.coro_t_, ptr %13, i32 0, i32 0, !dbg !347
  %15 = load ptr, ptr %14, align 8, !dbg !347
  %16 = getelementptr inbounds %struct.coro_switcher_t_, ptr %15, i32 0, i32 1, !dbg !348
  %17 = load ptr, ptr %3, align 8, !dbg !349
  %18 = getelementptr inbounds %struct.coro_t_, ptr %17, i32 0, i32 0, !dbg !350
  %19 = load ptr, ptr %18, align 8, !dbg !350
  %20 = getelementptr inbounds %struct.coro_switcher_t_, ptr %19, i32 0, i32 0, !dbg !351
  call void @coro_swapcontext(ptr noundef %16, ptr noundef %20), !dbg !352
  %21 = load ptr, ptr %3, align 8, !dbg !353
  %22 = getelementptr inbounds %struct.coro_t_, ptr %21, i32 0, i32 2, !dbg !354
  %23 = load i32, ptr %22, align 8, !dbg !354
  ret i32 %23, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coro_free(ptr noundef %0) #0 !dbg !356 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !357, metadata !DIExpression()), !dbg !358
  %3 = load ptr, ptr %2, align 8, !dbg !359
  %4 = icmp ne ptr %3, null, !dbg !359
  br i1 %4, label %5, label %6, !dbg !362

5:                                                ; preds = %1
  br label %7, !dbg !362

6:                                                ; preds = %1
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 276, ptr noundef @__PRETTY_FUNCTION__.coro_free) #11, !dbg !359
  unreachable, !dbg !359

7:                                                ; preds = %5
  %8 = load ptr, ptr %2, align 8, !dbg !363
  call void @coro_run_deferred(ptr noundef %8), !dbg !364
  %9 = load ptr, ptr %2, align 8, !dbg !365
  call void @free(ptr noundef %9) #10, !dbg !366
  ret void, !dbg !367
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @coro_defer(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 !dbg !368 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !371, metadata !DIExpression()), !dbg !372
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !373, metadata !DIExpression()), !dbg !374
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !375, metadata !DIExpression()), !dbg !376
  %7 = load ptr, ptr %4, align 8, !dbg !377
  %8 = load ptr, ptr %5, align 8, !dbg !378
  %9 = load ptr, ptr %6, align 8, !dbg !379
  call void @coro_defer_any(ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef null), !dbg !380
  ret void, !dbg !381
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coro_defer_any(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !382 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !385, metadata !DIExpression()), !dbg !386
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !387, metadata !DIExpression()), !dbg !388
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !389, metadata !DIExpression()), !dbg !390
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata ptr %9, metadata !393, metadata !DIExpression()), !dbg !394
  %10 = call noalias ptr @malloc(i64 noundef 32) #12, !dbg !395
  store ptr %10, ptr %9, align 8, !dbg !394
  %11 = load ptr, ptr %9, align 8, !dbg !396
  %12 = icmp ne ptr %11, null, !dbg !396
  %13 = xor i1 %12, true, !dbg !396
  %14 = zext i1 %13 to i32, !dbg !396
  %15 = sext i32 %14 to i64, !dbg !396
  %16 = icmp ne i64 %15, 0, !dbg !396
  br i1 %16, label %17, label %18, !dbg !398

17:                                               ; preds = %4
  br label %41, !dbg !399

18:                                               ; preds = %4
  %19 = load ptr, ptr %6, align 8, !dbg !400
  %20 = icmp ne ptr %19, null, !dbg !400
  br i1 %20, label %21, label %22, !dbg !403

21:                                               ; preds = %18
  br label %23, !dbg !403

22:                                               ; preds = %18
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 291, ptr noundef @__PRETTY_FUNCTION__.coro_defer_any) #11, !dbg !400
  unreachable, !dbg !400

23:                                               ; preds = %21
  %24 = load ptr, ptr %5, align 8, !dbg !404
  %25 = getelementptr inbounds %struct.coro_t_, ptr %24, i32 0, i32 3, !dbg !405
  %26 = load ptr, ptr %25, align 8, !dbg !405
  %27 = load ptr, ptr %9, align 8, !dbg !406
  %28 = getelementptr inbounds %struct.coro_defer_t_, ptr %27, i32 0, i32 0, !dbg !407
  store ptr %26, ptr %28, align 8, !dbg !408
  %29 = load ptr, ptr %6, align 8, !dbg !409
  %30 = load ptr, ptr %9, align 8, !dbg !410
  %31 = getelementptr inbounds %struct.coro_defer_t_, ptr %30, i32 0, i32 1, !dbg !411
  store ptr %29, ptr %31, align 8, !dbg !412
  %32 = load ptr, ptr %7, align 8, !dbg !413
  %33 = load ptr, ptr %9, align 8, !dbg !414
  %34 = getelementptr inbounds %struct.coro_defer_t_, ptr %33, i32 0, i32 2, !dbg !415
  store ptr %32, ptr %34, align 8, !dbg !416
  %35 = load ptr, ptr %8, align 8, !dbg !417
  %36 = load ptr, ptr %9, align 8, !dbg !418
  %37 = getelementptr inbounds %struct.coro_defer_t_, ptr %36, i32 0, i32 3, !dbg !419
  store ptr %35, ptr %37, align 8, !dbg !420
  %38 = load ptr, ptr %9, align 8, !dbg !421
  %39 = load ptr, ptr %5, align 8, !dbg !422
  %40 = getelementptr inbounds %struct.coro_t_, ptr %39, i32 0, i32 3, !dbg !423
  store ptr %38, ptr %40, align 8, !dbg !424
  br label %41, !dbg !425

41:                                               ; preds = %23, %17
  ret void, !dbg !425
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @coro_defer2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3 !dbg !426 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !432, metadata !DIExpression()), !dbg !433
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !434, metadata !DIExpression()), !dbg !435
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !436, metadata !DIExpression()), !dbg !437
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !438, metadata !DIExpression()), !dbg !439
  %9 = load ptr, ptr %5, align 8, !dbg !440
  %10 = load ptr, ptr %6, align 8, !dbg !441
  %11 = load ptr, ptr %7, align 8, !dbg !442
  %12 = load ptr, ptr %8, align 8, !dbg !443
  call void @coro_defer_any(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12), !dbg !444
  ret void, !dbg !445
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @coro_malloc_full(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !446 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !451, metadata !DIExpression()), !dbg !452
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !453, metadata !DIExpression()), !dbg !454
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata ptr %8, metadata !457, metadata !DIExpression()), !dbg !458
  %9 = load i64, ptr %6, align 8, !dbg !459
  %10 = add i64 32, %9, !dbg !460
  %11 = call noalias ptr @malloc(i64 noundef %10) #12, !dbg !461
  store ptr %11, ptr %8, align 8, !dbg !458
  %12 = load ptr, ptr %8, align 8, !dbg !462
  %13 = icmp ne ptr %12, null, !dbg !462
  %14 = xor i1 %13, true, !dbg !462
  %15 = zext i1 %14 to i32, !dbg !462
  %16 = sext i32 %15 to i64, !dbg !462
  %17 = icmp ne i64 %16, 0, !dbg !462
  br i1 %17, label %18, label %19, !dbg !464

18:                                               ; preds = %3
  store ptr null, ptr %4, align 8, !dbg !465
  br label %39, !dbg !465

19:                                               ; preds = %3
  %20 = load ptr, ptr %5, align 8, !dbg !466
  %21 = getelementptr inbounds %struct.coro_t_, ptr %20, i32 0, i32 3, !dbg !467
  %22 = load ptr, ptr %21, align 8, !dbg !467
  %23 = load ptr, ptr %8, align 8, !dbg !468
  %24 = getelementptr inbounds %struct.coro_defer_t_, ptr %23, i32 0, i32 0, !dbg !469
  store ptr %22, ptr %24, align 8, !dbg !470
  %25 = load ptr, ptr %7, align 8, !dbg !471
  %26 = load ptr, ptr %8, align 8, !dbg !472
  %27 = getelementptr inbounds %struct.coro_defer_t_, ptr %26, i32 0, i32 1, !dbg !473
  store ptr %25, ptr %27, align 8, !dbg !474
  %28 = load ptr, ptr %8, align 8, !dbg !475
  %29 = getelementptr inbounds %struct.coro_defer_t_, ptr %28, i64 1, !dbg !476
  %30 = load ptr, ptr %8, align 8, !dbg !477
  %31 = getelementptr inbounds %struct.coro_defer_t_, ptr %30, i32 0, i32 2, !dbg !478
  store ptr %29, ptr %31, align 8, !dbg !479
  %32 = load ptr, ptr %8, align 8, !dbg !480
  %33 = getelementptr inbounds %struct.coro_defer_t_, ptr %32, i32 0, i32 3, !dbg !481
  store ptr null, ptr %33, align 8, !dbg !482
  %34 = load ptr, ptr %8, align 8, !dbg !483
  %35 = load ptr, ptr %5, align 8, !dbg !484
  %36 = getelementptr inbounds %struct.coro_t_, ptr %35, i32 0, i32 3, !dbg !485
  store ptr %34, ptr %36, align 8, !dbg !486
  %37 = load ptr, ptr %8, align 8, !dbg !487
  %38 = getelementptr inbounds %struct.coro_defer_t_, ptr %37, i64 1, !dbg !488
  store ptr %38, ptr %4, align 8, !dbg !489
  br label %39, !dbg !489

39:                                               ; preds = %19, %18
  %40 = load ptr, ptr %4, align 8, !dbg !490
  ret ptr %40, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @coro_malloc(ptr noundef %0, i64 noundef %1) #0 !dbg !491 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !494, metadata !DIExpression()), !dbg !495
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !496, metadata !DIExpression()), !dbg !497
  %5 = load ptr, ptr %3, align 8, !dbg !498
  %6 = load i64, ptr %4, align 8, !dbg !499
  %7 = call ptr @coro_malloc_full(ptr noundef %5, i64 noundef %6, ptr noundef @nothing), !dbg !500
  ret ptr %7, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @coro_strdup(ptr noundef %0, ptr noundef %1) #0 !dbg !502 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !507, metadata !DIExpression()), !dbg !508
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !509, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.declare(metadata ptr %5, metadata !511, metadata !DIExpression()), !dbg !512
  %7 = load ptr, ptr %4, align 8, !dbg !513
  %8 = call i64 @strlen(ptr noundef %7) #13, !dbg !514
  %9 = add i64 %8, 1, !dbg !515
  store i64 %9, ptr %5, align 8, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %6, metadata !516, metadata !DIExpression()), !dbg !517
  %10 = load ptr, ptr %3, align 8, !dbg !518
  %11 = load i64, ptr %5, align 8, !dbg !519
  %12 = call ptr @coro_malloc(ptr noundef %10, i64 noundef %11), !dbg !520
  store ptr %12, ptr %6, align 8, !dbg !517
  %13 = load ptr, ptr %6, align 8, !dbg !521
  %14 = icmp ne ptr %13, null, !dbg !521
  %15 = xor i1 %14, true, !dbg !521
  %16 = xor i1 %15, true, !dbg !521
  %17 = zext i1 %16 to i32, !dbg !521
  %18 = sext i32 %17 to i64, !dbg !521
  %19 = icmp ne i64 %18, 0, !dbg !521
  br i1 %19, label %20, label %24, !dbg !523

20:                                               ; preds = %2
  %21 = load ptr, ptr %6, align 8, !dbg !524
  %22 = load ptr, ptr %4, align 8, !dbg !525
  %23 = load i64, ptr %5, align 8, !dbg !526
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %22, i64 %23, i1 false), !dbg !527
  br label %24, !dbg !527

24:                                               ; preds = %20, %2
  %25 = load ptr, ptr %6, align 8, !dbg !528
  ret ptr %25, !dbg !529
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @coro_printf(ptr noundef %0, ptr noundef %1, ...) #0 !dbg !530 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !533, metadata !DIExpression()), !dbg !534
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.declare(metadata ptr %9, metadata !537, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata ptr %10, metadata !555, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata ptr %11, metadata !557, metadata !DIExpression()), !dbg !558
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !559
  call void @llvm.va_start(ptr %12), !dbg !559
  %13 = load ptr, ptr %8, align 8, !dbg !560
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !561
  %15 = call i32 @vasprintf(ptr noundef %11, ptr noundef %13, ptr noundef %14) #10, !dbg !562
  store i32 %15, ptr %10, align 4, !dbg !563
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !564
  call void @llvm.va_end(ptr %16), !dbg !564
  %17 = load i32, ptr %10, align 4, !dbg !565
  %18 = icmp slt i32 %17, 0, !dbg !565
  %19 = zext i1 %18 to i32, !dbg !565
  %20 = sext i32 %19 to i64, !dbg !565
  %21 = icmp ne i64 %20, 0, !dbg !565
  br i1 %21, label %22, label %23, !dbg !567

22:                                               ; preds = %2
  store ptr null, ptr %6, align 8, !dbg !568
  br label %30, !dbg !568

23:                                               ; preds = %2
  %24 = load ptr, ptr %7, align 8, !dbg !569
  %25 = load ptr, ptr %11, align 8, !dbg !570
  store ptr %24, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !371, metadata !DIExpression()), !dbg !571
  store ptr @free, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !373, metadata !DIExpression()), !dbg !573
  store ptr %25, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !375, metadata !DIExpression()), !dbg !574
  %26 = load ptr, ptr %3, align 8, !dbg !575
  %27 = load ptr, ptr %4, align 8, !dbg !576
  %28 = load ptr, ptr %5, align 8, !dbg !577
  call void @coro_defer_any(ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef null), !dbg !578
  %29 = load ptr, ptr %11, align 8, !dbg !579
  store ptr %29, ptr %6, align 8, !dbg !580
  br label %30, !dbg !580

30:                                               ; preds = %23, %22
  %31 = load ptr, ptr %6, align 8, !dbg !581
  ret ptr %31, !dbg !581
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: nounwind
declare i32 @vasprintf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nothing() #0 !dbg !582 {
  ret void, !dbg !585
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!45}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 230, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "common/lwan-coro.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "f10099f62b8fec41343042e41e9eba52")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 230, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 34)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 230, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 208, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 26)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 21)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 257, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 296, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 37)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 267, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 240, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 30)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 276, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 200, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 25)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !3, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 464, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 58)
!45 = distinct !DICompileUnit(language: DW_LANG_C11, file: !46, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !47, globals: !57, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "/home/raj/lwan/common/lwan-coro.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "f10099f62b8fec41343042e41e9eba52")
!47 = !{!48, !50, !53, !54}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !51, line: 90, baseType: !52)
!51 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !53}
!57 = !{!0, !7, !12, !18, !23, !28, !33, !38, !40}
!58 = !{i32 7, !"Dwarf Version", i32 5}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = !{i32 8, !"PIC Level", i32 2}
!62 = !{i32 7, !"PIE Level", i32 2}
!63 = !{i32 7, !"uwtable", i32 2}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 16.0.0"}
!66 = distinct !DISubprogram(name: "coro_reset", scope: !2, file: !2, line: 164, type: !67, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !107)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69, !103, !53}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_t", file: !71, line: 34, baseType: !72)
!71 = !DIFile(filename: "common/lwan-coro.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "34b7f40341e2e8a3481f0400ece0424e")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "coro_t_", file: !2, line: 53, size: 960, elements: !73)
!73 = !{!74, !85, !86, !88, !100, !101}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "switcher", scope: !72, file: !2, line: 54, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_switcher_t", file: !71, line: 35, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "coro_switcher_t_", file: !71, line: 39, size: 1280, elements: !78)
!78 = !{!79, !84}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !77, file: !71, line: 40, baseType: !80, size: 640)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_context_t", file: !71, line: 25, baseType: !81)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 640, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 10)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !77, file: !71, line: 41, baseType: !80, size: 640, offset: 640)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !72, file: !2, line: 55, baseType: !80, size: 640, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "yield_value", scope: !72, file: !2, line: 56, baseType: !87, size: 32, offset: 704)
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "defer", scope: !72, file: !2, line: 62, baseType: !89, size: 64, offset: 768)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_defer_t", file: !2, line: 44, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "coro_defer_t_", file: !2, line: 46, size: 256, elements: !92)
!92 = !{!93, !94, !98, !99}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !2, line: 47, baseType: !89, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !91, file: !2, line: 48, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, null}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "data1", scope: !91, file: !2, line: 49, baseType: !53, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "data2", scope: !91, file: !2, line: 50, baseType: !53, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !72, file: !2, line: 63, baseType: !53, size: 64, offset: 832)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ended", scope: !72, file: !2, line: 65, baseType: !102, size: 8, offset: 896)
!102 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_function_t", file: !71, line: 37, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!87, !69}
!107 = !{}
!108 = !DILocalVariable(name: "coro", arg: 1, scope: !66, file: !2, line: 164, type: !69)
!109 = !DILocation(line: 164, column: 20, scope: !66)
!110 = !DILocalVariable(name: "func", arg: 2, scope: !66, file: !2, line: 164, type: !103)
!111 = !DILocation(line: 164, column: 42, scope: !66)
!112 = !DILocalVariable(name: "data", arg: 3, scope: !66, file: !2, line: 164, type: !53)
!113 = !DILocation(line: 164, column: 54, scope: !66)
!114 = !DILocalVariable(name: "stack", scope: !66, file: !2, line: 166, type: !48)
!115 = !DILocation(line: 166, column: 20, scope: !66)
!116 = !DILocation(line: 166, column: 46, scope: !66)
!117 = !DILocation(line: 166, column: 51, scope: !66)
!118 = !DILocation(line: 168, column: 5, scope: !66)
!119 = !DILocation(line: 168, column: 11, scope: !66)
!120 = !DILocation(line: 168, column: 17, scope: !66)
!121 = !DILocation(line: 169, column: 18, scope: !66)
!122 = !DILocation(line: 169, column: 5, scope: !66)
!123 = !DILocation(line: 169, column: 11, scope: !66)
!124 = !DILocation(line: 169, column: 16, scope: !66)
!125 = !DILocation(line: 171, column: 23, scope: !66)
!126 = !DILocation(line: 171, column: 5, scope: !66)
!127 = !DILocation(line: 174, column: 46, scope: !66)
!128 = !DILocation(line: 174, column: 34, scope: !66)
!129 = !DILocation(line: 174, column: 5, scope: !66)
!130 = !DILocation(line: 174, column: 11, scope: !66)
!131 = !DILocation(line: 174, column: 32, scope: !66)
!132 = !DILocation(line: 175, column: 46, scope: !66)
!133 = !DILocation(line: 175, column: 34, scope: !66)
!134 = !DILocation(line: 175, column: 5, scope: !66)
!135 = !DILocation(line: 175, column: 11, scope: !66)
!136 = !DILocation(line: 175, column: 32, scope: !66)
!137 = !DILocation(line: 176, column: 5, scope: !66)
!138 = !DILocation(line: 176, column: 11, scope: !66)
!139 = !DILocation(line: 176, column: 32, scope: !66)
!140 = !DILocation(line: 177, column: 46, scope: !66)
!141 = !DILocation(line: 177, column: 34, scope: !66)
!142 = !DILocation(line: 177, column: 54, scope: !66)
!143 = !DILocation(line: 177, column: 52, scope: !66)
!144 = !DILocation(line: 177, column: 5, scope: !66)
!145 = !DILocation(line: 177, column: 11, scope: !66)
!146 = !DILocation(line: 177, column: 32, scope: !66)
!147 = !DILocation(line: 200, column: 1, scope: !66)
!148 = distinct !DISubprogram(name: "coro_run_deferred", scope: !2, file: !2, line: 152, type: !149, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !45, retainedNodes: !107)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !69}
!151 = !DILocalVariable(name: "coro", arg: 1, scope: !148, file: !2, line: 152, type: !69)
!152 = !DILocation(line: 152, column: 27, scope: !148)
!153 = !DILocalVariable(name: "defer", scope: !154, file: !2, line: 154, type: !89)
!154 = distinct !DILexicalBlock(scope: !148, file: !2, line: 154, column: 5)
!155 = !DILocation(line: 154, column: 24, scope: !154)
!156 = !DILocation(line: 154, column: 32, scope: !154)
!157 = !DILocation(line: 154, column: 38, scope: !154)
!158 = !DILocation(line: 154, column: 10, scope: !154)
!159 = !DILocation(line: 154, column: 45, scope: !160)
!160 = distinct !DILexicalBlock(scope: !154, file: !2, line: 154, column: 5)
!161 = !DILocation(line: 154, column: 5, scope: !154)
!162 = !DILocalVariable(name: "tmp", scope: !163, file: !2, line: 155, type: !89)
!163 = distinct !DILexicalBlock(scope: !160, file: !2, line: 154, column: 53)
!164 = !DILocation(line: 155, column: 23, scope: !163)
!165 = !DILocation(line: 155, column: 29, scope: !163)
!166 = !DILocation(line: 156, column: 9, scope: !163)
!167 = !DILocation(line: 156, column: 16, scope: !163)
!168 = !DILocation(line: 156, column: 21, scope: !163)
!169 = !DILocation(line: 156, column: 28, scope: !163)
!170 = !DILocation(line: 156, column: 35, scope: !163)
!171 = !DILocation(line: 156, column: 42, scope: !163)
!172 = !DILocation(line: 157, column: 17, scope: !163)
!173 = !DILocation(line: 157, column: 22, scope: !163)
!174 = !DILocation(line: 157, column: 15, scope: !163)
!175 = !DILocation(line: 158, column: 14, scope: !163)
!176 = !DILocation(line: 158, column: 9, scope: !163)
!177 = !DILocation(line: 154, column: 5, scope: !160)
!178 = distinct !{!178, !161, !179, !180}
!179 = !DILocation(line: 159, column: 5, scope: !154)
!180 = !{!"llvm.loop.mustprogress"}
!181 = !DILocation(line: 160, column: 5, scope: !148)
!182 = !DILocation(line: 160, column: 11, scope: !148)
!183 = !DILocation(line: 160, column: 17, scope: !148)
!184 = !DILocation(line: 161, column: 1, scope: !148)
!185 = distinct !DISubprogram(name: "coro_entry_point", scope: !2, file: !2, line: 144, type: !186, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !45, retainedNodes: !107)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !69, !103}
!188 = !DILocalVariable(name: "coro", arg: 1, scope: !185, file: !2, line: 144, type: !69)
!189 = !DILocation(line: 144, column: 26, scope: !185)
!190 = !DILocalVariable(name: "func", arg: 2, scope: !185, file: !2, line: 144, type: !103)
!191 = !DILocation(line: 144, column: 48, scope: !185)
!192 = !DILocalVariable(name: "return_value", scope: !185, file: !2, line: 146, type: !87)
!193 = !DILocation(line: 146, column: 9, scope: !185)
!194 = !DILocation(line: 146, column: 24, scope: !185)
!195 = !DILocation(line: 146, column: 29, scope: !185)
!196 = !DILocation(line: 147, column: 5, scope: !185)
!197 = !DILocation(line: 147, column: 11, scope: !185)
!198 = !DILocation(line: 147, column: 17, scope: !185)
!199 = !DILocation(line: 148, column: 16, scope: !185)
!200 = !DILocation(line: 148, column: 22, scope: !185)
!201 = !DILocalVariable(name: "coro", arg: 1, scope: !202, file: !2, line: 265, type: !69)
!202 = distinct !DISubprogram(name: "coro_yield", scope: !2, file: !2, line: 265, type: !203, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !107)
!203 = !DISubroutineType(types: !204)
!204 = !{!87, !69, !87}
!205 = !DILocation(line: 265, column: 20, scope: !202, inlinedAt: !206)
!206 = distinct !DILocation(line: 148, column: 5, scope: !185)
!207 = !DILocalVariable(name: "value", arg: 2, scope: !202, file: !2, line: 265, type: !87)
!208 = !DILocation(line: 265, column: 30, scope: !202, inlinedAt: !206)
!209 = !DILocation(line: 267, column: 5, scope: !210, inlinedAt: !206)
!210 = distinct !DILexicalBlock(scope: !211, file: !2, line: 267, column: 5)
!211 = distinct !DILexicalBlock(scope: !202, file: !2, line: 267, column: 5)
!212 = !DILocation(line: 267, column: 5, scope: !211, inlinedAt: !206)
!213 = !DILocation(line: 268, column: 25, scope: !202, inlinedAt: !206)
!214 = !DILocation(line: 268, column: 5, scope: !202, inlinedAt: !206)
!215 = !DILocation(line: 268, column: 11, scope: !202, inlinedAt: !206)
!216 = !DILocation(line: 268, column: 23, scope: !202, inlinedAt: !206)
!217 = !DILocation(line: 269, column: 23, scope: !202, inlinedAt: !206)
!218 = !DILocation(line: 269, column: 29, scope: !202, inlinedAt: !206)
!219 = !DILocation(line: 269, column: 39, scope: !202, inlinedAt: !206)
!220 = !DILocation(line: 269, column: 48, scope: !202, inlinedAt: !206)
!221 = !DILocation(line: 269, column: 54, scope: !202, inlinedAt: !206)
!222 = !DILocation(line: 269, column: 5, scope: !202, inlinedAt: !206)
!223 = !DILocation(line: 270, column: 12, scope: !202, inlinedAt: !206)
!224 = !DILocation(line: 270, column: 18, scope: !202, inlinedAt: !206)
!225 = !DILocation(line: 149, column: 1, scope: !185)
!226 = distinct !DISubprogram(name: "coro_new", scope: !2, file: !2, line: 203, type: !227, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !107)
!227 = !DISubroutineType(types: !228)
!228 = !{!69, !75, !103, !53}
!229 = !DILocalVariable(name: "switcher", arg: 1, scope: !226, file: !2, line: 203, type: !75)
!230 = !DILocation(line: 203, column: 27, scope: !226)
!231 = !DILocalVariable(name: "function", arg: 2, scope: !226, file: !2, line: 203, type: !103)
!232 = !DILocation(line: 203, column: 53, scope: !226)
!233 = !DILocalVariable(name: "data", arg: 3, scope: !226, file: !2, line: 203, type: !53)
!234 = !DILocation(line: 203, column: 69, scope: !226)
!235 = !DILocalVariable(name: "coro", scope: !226, file: !2, line: 205, type: !69)
!236 = !DILocation(line: 205, column: 13, scope: !226)
!237 = !DILocation(line: 205, column: 43, scope: !226)
!238 = !DILocation(line: 205, column: 41, scope: !226)
!239 = !DILocation(line: 205, column: 20, scope: !226)
!240 = !DILocation(line: 206, column: 10, scope: !241)
!241 = distinct !DILexicalBlock(scope: !226, file: !2, line: 206, column: 9)
!242 = !DILocation(line: 206, column: 9, scope: !226)
!243 = !DILocation(line: 207, column: 9, scope: !241)
!244 = !DILocation(line: 209, column: 22, scope: !226)
!245 = !DILocation(line: 209, column: 5, scope: !226)
!246 = !DILocation(line: 209, column: 11, scope: !226)
!247 = !DILocation(line: 209, column: 20, scope: !226)
!248 = !DILocation(line: 210, column: 5, scope: !226)
!249 = !DILocation(line: 210, column: 11, scope: !226)
!250 = !DILocation(line: 210, column: 17, scope: !226)
!251 = !DILocation(line: 211, column: 16, scope: !226)
!252 = !DILocation(line: 211, column: 22, scope: !226)
!253 = !DILocation(line: 211, column: 32, scope: !226)
!254 = !DILocation(line: 211, column: 5, scope: !226)
!255 = !DILocation(line: 218, column: 12, scope: !226)
!256 = !DILocation(line: 218, column: 5, scope: !226)
!257 = !DILocation(line: 219, column: 1, scope: !226)
!258 = distinct !DISubprogram(name: "coro_get_data", scope: !2, file: !2, line: 222, type: !259, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !107)
!259 = !DISubroutineType(types: !260)
!260 = !{!53, !69}
!261 = !DILocalVariable(name: "coro", arg: 1, scope: !258, file: !2, line: 222, type: !69)
!262 = !DILocation(line: 222, column: 23, scope: !258)
!263 = !DILocation(line: 224, column: 12, scope: !258)
!264 = !DILocation(line: 224, column: 27, scope: !258)
!265 = !DILocation(line: 224, column: 33, scope: !258)
!266 = !DILocation(line: 224, column: 5, scope: !258)
!267 = distinct !DISubprogram(name: "coro_resume", scope: !2, file: !2, line: 228, type: !105, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !107)
!268 = !DILocalVariable(name: "coro", arg: 1, scope: !267, file: !2, line: 228, type: !69)
!269 = !DILocation(line: 228, column: 21, scope: !267)
!270 = !DILocation(line: 230, column: 5, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !2, line: 230, column: 5)
!272 = distinct !DILexicalBlock(scope: !267, file: !2, line: 230, column: 5)
!273 = !DILocation(line: 230, column: 5, scope: !272)
!274 = !DILocation(line: 231, column: 5, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !2, line: 231, column: 5)
!276 = distinct !DILexicalBlock(scope: !267, file: !2, line: 231, column: 5)
!277 = !DILocation(line: 231, column: 5, scope: !276)
!278 = !DILocation(line: 234, column: 23, scope: !267)
!279 = !DILocation(line: 234, column: 29, scope: !267)
!280 = !DILocation(line: 234, column: 39, scope: !267)
!281 = !DILocation(line: 234, column: 48, scope: !267)
!282 = !DILocation(line: 234, column: 54, scope: !267)
!283 = !DILocation(line: 234, column: 5, scope: !267)
!284 = !DILocation(line: 235, column: 10, scope: !285)
!285 = distinct !DILexicalBlock(scope: !267, file: !2, line: 235, column: 9)
!286 = !DILocation(line: 235, column: 16, scope: !285)
!287 = !DILocation(line: 235, column: 9, scope: !267)
!288 = !DILocation(line: 236, column: 17, scope: !285)
!289 = !DILocation(line: 236, column: 23, scope: !285)
!290 = !DILocation(line: 236, column: 33, scope: !285)
!291 = !DILocation(line: 236, column: 39, scope: !285)
!292 = !DILocation(line: 236, column: 49, scope: !285)
!293 = !DILocation(line: 236, column: 9, scope: !285)
!294 = !DILocation(line: 251, column: 12, scope: !267)
!295 = !DILocation(line: 251, column: 18, scope: !267)
!296 = !DILocation(line: 251, column: 5, scope: !267)
!297 = distinct !DISubprogram(name: "coro_resume_value", scope: !2, file: !2, line: 255, type: !203, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !107)
!298 = !DILocalVariable(name: "coro", arg: 1, scope: !297, file: !2, line: 255, type: !69)
!299 = !DILocation(line: 255, column: 27, scope: !297)
!300 = !DILocalVariable(name: "value", arg: 2, scope: !297, file: !2, line: 255, type: !87)
!301 = !DILocation(line: 255, column: 37, scope: !297)
!302 = !DILocation(line: 257, column: 5, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !2, line: 257, column: 5)
!304 = distinct !DILexicalBlock(scope: !297, file: !2, line: 257, column: 5)
!305 = !DILocation(line: 257, column: 5, scope: !304)
!306 = !DILocation(line: 258, column: 5, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !2, line: 258, column: 5)
!308 = distinct !DILexicalBlock(scope: !297, file: !2, line: 258, column: 5)
!309 = !DILocation(line: 258, column: 5, scope: !308)
!310 = !DILocation(line: 260, column: 25, scope: !297)
!311 = !DILocation(line: 260, column: 5, scope: !297)
!312 = !DILocation(line: 260, column: 11, scope: !297)
!313 = !DILocation(line: 260, column: 23, scope: !297)
!314 = !DILocation(line: 261, column: 24, scope: !297)
!315 = !DILocation(line: 228, column: 21, scope: !267, inlinedAt: !316)
!316 = distinct !DILocation(line: 261, column: 12, scope: !297)
!317 = !DILocation(line: 230, column: 5, scope: !271, inlinedAt: !316)
!318 = !DILocation(line: 230, column: 5, scope: !272, inlinedAt: !316)
!319 = !DILocation(line: 231, column: 5, scope: !275, inlinedAt: !316)
!320 = !DILocation(line: 231, column: 5, scope: !276, inlinedAt: !316)
!321 = !DILocation(line: 234, column: 23, scope: !267, inlinedAt: !316)
!322 = !DILocation(line: 234, column: 29, scope: !267, inlinedAt: !316)
!323 = !DILocation(line: 234, column: 48, scope: !267, inlinedAt: !316)
!324 = !DILocation(line: 234, column: 54, scope: !267, inlinedAt: !316)
!325 = !DILocation(line: 234, column: 5, scope: !267, inlinedAt: !316)
!326 = !DILocation(line: 235, column: 10, scope: !285, inlinedAt: !316)
!327 = !DILocation(line: 235, column: 16, scope: !285, inlinedAt: !316)
!328 = !DILocation(line: 235, column: 9, scope: !267, inlinedAt: !316)
!329 = !DILocation(line: 236, column: 17, scope: !285, inlinedAt: !316)
!330 = !DILocation(line: 236, column: 23, scope: !285, inlinedAt: !316)
!331 = !DILocation(line: 236, column: 33, scope: !285, inlinedAt: !316)
!332 = !DILocation(line: 236, column: 39, scope: !285, inlinedAt: !316)
!333 = !DILocation(line: 236, column: 49, scope: !285, inlinedAt: !316)
!334 = !DILocation(line: 236, column: 9, scope: !285, inlinedAt: !316)
!335 = !DILocation(line: 251, column: 12, scope: !267, inlinedAt: !316)
!336 = !DILocation(line: 251, column: 18, scope: !267, inlinedAt: !316)
!337 = !DILocation(line: 261, column: 5, scope: !297)
!338 = !DILocation(line: 265, column: 20, scope: !202)
!339 = !DILocation(line: 265, column: 30, scope: !202)
!340 = !DILocation(line: 267, column: 5, scope: !210)
!341 = !DILocation(line: 267, column: 5, scope: !211)
!342 = !DILocation(line: 268, column: 25, scope: !202)
!343 = !DILocation(line: 268, column: 5, scope: !202)
!344 = !DILocation(line: 268, column: 11, scope: !202)
!345 = !DILocation(line: 268, column: 23, scope: !202)
!346 = !DILocation(line: 269, column: 23, scope: !202)
!347 = !DILocation(line: 269, column: 29, scope: !202)
!348 = !DILocation(line: 269, column: 39, scope: !202)
!349 = !DILocation(line: 269, column: 48, scope: !202)
!350 = !DILocation(line: 269, column: 54, scope: !202)
!351 = !DILocation(line: 269, column: 64, scope: !202)
!352 = !DILocation(line: 269, column: 5, scope: !202)
!353 = !DILocation(line: 270, column: 12, scope: !202)
!354 = !DILocation(line: 270, column: 18, scope: !202)
!355 = !DILocation(line: 270, column: 5, scope: !202)
!356 = distinct !DISubprogram(name: "coro_free", scope: !2, file: !2, line: 274, type: !149, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !107)
!357 = !DILocalVariable(name: "coro", arg: 1, scope: !356, file: !2, line: 274, type: !69)
!358 = !DILocation(line: 274, column: 19, scope: !356)
!359 = !DILocation(line: 276, column: 5, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !2, line: 276, column: 5)
!361 = distinct !DILexicalBlock(scope: !356, file: !2, line: 276, column: 5)
!362 = !DILocation(line: 276, column: 5, scope: !361)
!363 = !DILocation(line: 280, column: 23, scope: !356)
!364 = !DILocation(line: 280, column: 5, scope: !356)
!365 = !DILocation(line: 281, column: 10, scope: !356)
!366 = !DILocation(line: 281, column: 5, scope: !356)
!367 = !DILocation(line: 282, column: 1, scope: !356)
!368 = distinct !DISubprogram(name: "coro_defer", scope: !2, file: !2, line: 302, type: !369, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !107)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !69, !54, !53}
!371 = !DILocalVariable(name: "coro", arg: 1, scope: !368, file: !2, line: 302, type: !69)
!372 = !DILocation(line: 302, column: 20, scope: !368)
!373 = !DILocalVariable(name: "func", arg: 2, scope: !368, file: !2, line: 302, type: !54)
!374 = !DILocation(line: 302, column: 33, scope: !368)
!375 = !DILocalVariable(name: "data", arg: 3, scope: !368, file: !2, line: 302, type: !53)
!376 = !DILocation(line: 302, column: 58, scope: !368)
!377 = !DILocation(line: 304, column: 20, scope: !368)
!378 = !DILocation(line: 304, column: 26, scope: !368)
!379 = !DILocation(line: 304, column: 32, scope: !368)
!380 = !DILocation(line: 304, column: 5, scope: !368)
!381 = !DILocation(line: 305, column: 1, scope: !368)
!382 = distinct !DISubprogram(name: "coro_defer_any", scope: !2, file: !2, line: 285, type: !383, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !45, retainedNodes: !107)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !69, !95, !53, !53}
!385 = !DILocalVariable(name: "coro", arg: 1, scope: !382, file: !2, line: 285, type: !69)
!386 = !DILocation(line: 285, column: 24, scope: !382)
!387 = !DILocalVariable(name: "func", arg: 2, scope: !382, file: !2, line: 285, type: !95)
!388 = !DILocation(line: 285, column: 37, scope: !382)
!389 = !DILocalVariable(name: "data1", arg: 3, scope: !382, file: !2, line: 285, type: !53)
!390 = !DILocation(line: 285, column: 52, scope: !382)
!391 = !DILocalVariable(name: "data2", arg: 4, scope: !382, file: !2, line: 285, type: !53)
!392 = !DILocation(line: 285, column: 65, scope: !382)
!393 = !DILocalVariable(name: "defer", scope: !382, file: !2, line: 287, type: !89)
!394 = !DILocation(line: 287, column: 19, scope: !382)
!395 = !DILocation(line: 287, column: 27, scope: !382)
!396 = !DILocation(line: 288, column: 9, scope: !397)
!397 = distinct !DILexicalBlock(scope: !382, file: !2, line: 288, column: 9)
!398 = !DILocation(line: 288, column: 9, scope: !382)
!399 = !DILocation(line: 289, column: 9, scope: !397)
!400 = !DILocation(line: 291, column: 5, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !2, line: 291, column: 5)
!402 = distinct !DILexicalBlock(scope: !382, file: !2, line: 291, column: 5)
!403 = !DILocation(line: 291, column: 5, scope: !402)
!404 = !DILocation(line: 294, column: 19, scope: !382)
!405 = !DILocation(line: 294, column: 25, scope: !382)
!406 = !DILocation(line: 294, column: 5, scope: !382)
!407 = !DILocation(line: 294, column: 12, scope: !382)
!408 = !DILocation(line: 294, column: 17, scope: !382)
!409 = !DILocation(line: 295, column: 19, scope: !382)
!410 = !DILocation(line: 295, column: 5, scope: !382)
!411 = !DILocation(line: 295, column: 12, scope: !382)
!412 = !DILocation(line: 295, column: 17, scope: !382)
!413 = !DILocation(line: 296, column: 20, scope: !382)
!414 = !DILocation(line: 296, column: 5, scope: !382)
!415 = !DILocation(line: 296, column: 12, scope: !382)
!416 = !DILocation(line: 296, column: 18, scope: !382)
!417 = !DILocation(line: 297, column: 20, scope: !382)
!418 = !DILocation(line: 297, column: 5, scope: !382)
!419 = !DILocation(line: 297, column: 12, scope: !382)
!420 = !DILocation(line: 297, column: 18, scope: !382)
!421 = !DILocation(line: 298, column: 19, scope: !382)
!422 = !DILocation(line: 298, column: 5, scope: !382)
!423 = !DILocation(line: 298, column: 11, scope: !382)
!424 = !DILocation(line: 298, column: 17, scope: !382)
!425 = !DILocation(line: 299, column: 1, scope: !382)
!426 = distinct !DISubprogram(name: "coro_defer2", scope: !2, file: !2, line: 308, type: !427, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !107)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !69, !429, !53, !53}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !53, !53}
!432 = !DILocalVariable(name: "coro", arg: 1, scope: !426, file: !2, line: 308, type: !69)
!433 = !DILocation(line: 308, column: 21, scope: !426)
!434 = !DILocalVariable(name: "func", arg: 2, scope: !426, file: !2, line: 308, type: !429)
!435 = !DILocation(line: 308, column: 34, scope: !426)
!436 = !DILocalVariable(name: "data1", arg: 3, scope: !426, file: !2, line: 309, type: !53)
!437 = !DILocation(line: 309, column: 19, scope: !426)
!438 = !DILocalVariable(name: "data2", arg: 4, scope: !426, file: !2, line: 309, type: !53)
!439 = !DILocation(line: 309, column: 32, scope: !426)
!440 = !DILocation(line: 311, column: 20, scope: !426)
!441 = !DILocation(line: 311, column: 26, scope: !426)
!442 = !DILocation(line: 311, column: 32, scope: !426)
!443 = !DILocation(line: 311, column: 39, scope: !426)
!444 = !DILocation(line: 311, column: 5, scope: !426)
!445 = !DILocation(line: 312, column: 1, scope: !426)
!446 = distinct !DISubprogram(name: "coro_malloc_full", scope: !2, file: !2, line: 315, type: !447, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !107)
!447 = !DISubroutineType(types: !448)
!448 = !{!53, !69, !449, !95}
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !450, line: 46, baseType: !52)
!450 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!451 = !DILocalVariable(name: "coro", arg: 1, scope: !446, file: !2, line: 315, type: !69)
!452 = !DILocation(line: 315, column: 26, scope: !446)
!453 = !DILocalVariable(name: "size", arg: 2, scope: !446, file: !2, line: 315, type: !449)
!454 = !DILocation(line: 315, column: 39, scope: !446)
!455 = !DILocalVariable(name: "destroy_func", arg: 3, scope: !446, file: !2, line: 315, type: !95)
!456 = !DILocation(line: 315, column: 52, scope: !446)
!457 = !DILocalVariable(name: "defer", scope: !446, file: !2, line: 317, type: !89)
!458 = !DILocation(line: 317, column: 19, scope: !446)
!459 = !DILocation(line: 317, column: 51, scope: !446)
!460 = !DILocation(line: 317, column: 49, scope: !446)
!461 = !DILocation(line: 317, column: 27, scope: !446)
!462 = !DILocation(line: 318, column: 9, scope: !463)
!463 = distinct !DILexicalBlock(scope: !446, file: !2, line: 318, column: 9)
!464 = !DILocation(line: 318, column: 9, scope: !446)
!465 = !DILocation(line: 319, column: 9, scope: !463)
!466 = !DILocation(line: 321, column: 19, scope: !446)
!467 = !DILocation(line: 321, column: 25, scope: !446)
!468 = !DILocation(line: 321, column: 5, scope: !446)
!469 = !DILocation(line: 321, column: 12, scope: !446)
!470 = !DILocation(line: 321, column: 17, scope: !446)
!471 = !DILocation(line: 322, column: 19, scope: !446)
!472 = !DILocation(line: 322, column: 5, scope: !446)
!473 = !DILocation(line: 322, column: 12, scope: !446)
!474 = !DILocation(line: 322, column: 17, scope: !446)
!475 = !DILocation(line: 323, column: 20, scope: !446)
!476 = !DILocation(line: 323, column: 26, scope: !446)
!477 = !DILocation(line: 323, column: 5, scope: !446)
!478 = !DILocation(line: 323, column: 12, scope: !446)
!479 = !DILocation(line: 323, column: 18, scope: !446)
!480 = !DILocation(line: 324, column: 5, scope: !446)
!481 = !DILocation(line: 324, column: 12, scope: !446)
!482 = !DILocation(line: 324, column: 18, scope: !446)
!483 = !DILocation(line: 326, column: 19, scope: !446)
!484 = !DILocation(line: 326, column: 5, scope: !446)
!485 = !DILocation(line: 326, column: 11, scope: !446)
!486 = !DILocation(line: 326, column: 17, scope: !446)
!487 = !DILocation(line: 328, column: 12, scope: !446)
!488 = !DILocation(line: 328, column: 18, scope: !446)
!489 = !DILocation(line: 328, column: 5, scope: !446)
!490 = !DILocation(line: 329, column: 1, scope: !446)
!491 = distinct !DISubprogram(name: "coro_malloc", scope: !2, file: !2, line: 336, type: !492, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !107)
!492 = !DISubroutineType(types: !493)
!493 = !{!53, !69, !449}
!494 = !DILocalVariable(name: "coro", arg: 1, scope: !491, file: !2, line: 336, type: !69)
!495 = !DILocation(line: 336, column: 21, scope: !491)
!496 = !DILocalVariable(name: "size", arg: 2, scope: !491, file: !2, line: 336, type: !449)
!497 = !DILocation(line: 336, column: 34, scope: !491)
!498 = !DILocation(line: 338, column: 29, scope: !491)
!499 = !DILocation(line: 338, column: 35, scope: !491)
!500 = !DILocation(line: 338, column: 12, scope: !491)
!501 = !DILocation(line: 338, column: 5, scope: !491)
!502 = distinct !DISubprogram(name: "coro_strdup", scope: !2, file: !2, line: 342, type: !503, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !107)
!503 = !DISubroutineType(types: !504)
!504 = !{!505, !69, !506}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!507 = !DILocalVariable(name: "coro", arg: 1, scope: !502, file: !2, line: 342, type: !69)
!508 = !DILocation(line: 342, column: 21, scope: !502)
!509 = !DILocalVariable(name: "str", arg: 2, scope: !502, file: !2, line: 342, type: !506)
!510 = !DILocation(line: 342, column: 39, scope: !502)
!511 = !DILocalVariable(name: "len", scope: !502, file: !2, line: 344, type: !449)
!512 = !DILocation(line: 344, column: 12, scope: !502)
!513 = !DILocation(line: 344, column: 25, scope: !502)
!514 = !DILocation(line: 344, column: 18, scope: !502)
!515 = !DILocation(line: 344, column: 30, scope: !502)
!516 = !DILocalVariable(name: "dup", scope: !502, file: !2, line: 345, type: !505)
!517 = !DILocation(line: 345, column: 11, scope: !502)
!518 = !DILocation(line: 345, column: 29, scope: !502)
!519 = !DILocation(line: 345, column: 35, scope: !502)
!520 = !DILocation(line: 345, column: 17, scope: !502)
!521 = !DILocation(line: 346, column: 9, scope: !522)
!522 = distinct !DILexicalBlock(scope: !502, file: !2, line: 346, column: 9)
!523 = !DILocation(line: 346, column: 9, scope: !502)
!524 = !DILocation(line: 347, column: 16, scope: !522)
!525 = !DILocation(line: 347, column: 21, scope: !522)
!526 = !DILocation(line: 347, column: 26, scope: !522)
!527 = !DILocation(line: 347, column: 9, scope: !522)
!528 = !DILocation(line: 348, column: 12, scope: !502)
!529 = !DILocation(line: 348, column: 5, scope: !502)
!530 = distinct !DISubprogram(name: "coro_printf", scope: !2, file: !2, line: 352, type: !531, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !107)
!531 = !DISubroutineType(types: !532)
!532 = !{!505, !69, !506, null}
!533 = !DILocalVariable(name: "coro", arg: 1, scope: !530, file: !2, line: 352, type: !69)
!534 = !DILocation(line: 352, column: 21, scope: !530)
!535 = !DILocalVariable(name: "fmt", arg: 2, scope: !530, file: !2, line: 352, type: !506)
!536 = !DILocation(line: 352, column: 39, scope: !530)
!537 = !DILocalVariable(name: "values", scope: !530, file: !2, line: 354, type: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !539, line: 52, baseType: !540)
!539 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !541, line: 14, baseType: !542)
!541 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stdarg.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !543, baseType: !544)
!543 = !DIFile(filename: "common/lwan-coro.c", directory: "/home/raj/lwan")
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 192, elements: !552)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !546)
!546 = !{!547, !549, !550, !551}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !545, file: !543, line: 354, baseType: !548, size: 32)
!548 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !545, file: !543, line: 354, baseType: !548, size: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !545, file: !543, line: 354, baseType: !53, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !545, file: !543, line: 354, baseType: !53, size: 64, offset: 128)
!552 = !{!553}
!553 = !DISubrange(count: 1)
!554 = !DILocation(line: 354, column: 13, scope: !530)
!555 = !DILocalVariable(name: "len", scope: !530, file: !2, line: 355, type: !87)
!556 = !DILocation(line: 355, column: 9, scope: !530)
!557 = !DILocalVariable(name: "tmp_str", scope: !530, file: !2, line: 356, type: !505)
!558 = !DILocation(line: 356, column: 11, scope: !530)
!559 = !DILocation(line: 358, column: 5, scope: !530)
!560 = !DILocation(line: 359, column: 31, scope: !530)
!561 = !DILocation(line: 359, column: 36, scope: !530)
!562 = !DILocation(line: 359, column: 11, scope: !530)
!563 = !DILocation(line: 359, column: 9, scope: !530)
!564 = !DILocation(line: 360, column: 5, scope: !530)
!565 = !DILocation(line: 362, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !530, file: !2, line: 362, column: 9)
!567 = !DILocation(line: 362, column: 9, scope: !530)
!568 = !DILocation(line: 363, column: 9, scope: !566)
!569 = !DILocation(line: 365, column: 16, scope: !530)
!570 = !DILocation(line: 365, column: 40, scope: !530)
!571 = !DILocation(line: 302, column: 20, scope: !368, inlinedAt: !572)
!572 = distinct !DILocation(line: 365, column: 5, scope: !530)
!573 = !DILocation(line: 302, column: 33, scope: !368, inlinedAt: !572)
!574 = !DILocation(line: 302, column: 58, scope: !368, inlinedAt: !572)
!575 = !DILocation(line: 304, column: 20, scope: !368, inlinedAt: !572)
!576 = !DILocation(line: 304, column: 26, scope: !368, inlinedAt: !572)
!577 = !DILocation(line: 304, column: 32, scope: !368, inlinedAt: !572)
!578 = !DILocation(line: 304, column: 5, scope: !368, inlinedAt: !572)
!579 = !DILocation(line: 366, column: 12, scope: !530)
!580 = !DILocation(line: 366, column: 5, scope: !530)
!581 = !DILocation(line: 367, column: 1, scope: !530)
!582 = distinct !DISubprogram(name: "nothing", scope: !2, file: !2, line: 331, type: !583, scopeLine: 332, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !45, retainedNodes: !107)
!583 = !DISubroutineType(types: !584)
!584 = !{null}
!585 = !DILocation(line: 333, column: 1, scope: !582)
