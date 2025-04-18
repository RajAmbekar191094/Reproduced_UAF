; ModuleID = 'src/htsthread.c'
source_filename = "src/htsthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htsmutex_s = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.hts_thread_s = type { ptr, ptr }

@process_chain_mutex = internal global ptr null, align 8, !dbg !0
@process_chain = internal global i32 0, align 4, !dbg !39
@.str = private unnamed_addr constant [21 x i8] c"s_args != ((void*)0)\00", align 1, !dbg !16
@.str.1 = private unnamed_addr constant [16 x i8] c"src/htsthread.c\00", align 1, !dbg !22
@.str.2 = private unnamed_addr constant [20 x i8] c"mutex != ((void*)0)\00", align 1, !dbg !27
@.str.3 = private unnamed_addr constant [21 x i8] c"*mutex != ((void*)0)\00", align 1, !dbg !32
@.str.4 = private unnamed_addr constant [44 x i8] c"mutex != ((void*)0) && *mutex != ((void*)0)\00", align 1, !dbg !34
@stderr = external global ptr, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"%s failed at %s:%d\0A\00", align 1, !dbg !42
@.str.6 = private unnamed_addr constant [18 x i8] c"process_chain > 0\00", align 1, !dbg !45
@.str.7 = private unnamed_addr constant [19 x i8] c"process_chain >= 0\00", align 1, !dbg !50

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @htsthread_wait() #0 !dbg !100 {
  call void @htsthread_wait_n(i32 noundef 0), !dbg !104
  ret void, !dbg !105
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @htsthread_wait_n(i32 noundef %0) #0 !dbg !106 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata ptr %3, metadata !111, metadata !DIExpression()), !dbg !112
  store i32 0, ptr %3, align 4, !dbg !112
  br label %4, !dbg !113

4:                                                ; preds = %14, %1
  call void @hts_mutexlock(ptr noundef @process_chain_mutex), !dbg !114
  %5 = load i32, ptr @process_chain, align 4, !dbg !116
  %6 = load i32, ptr %2, align 4, !dbg !117
  %7 = icmp sgt i32 %5, %6, !dbg !118
  %8 = zext i1 %7 to i32, !dbg !118
  store i32 %8, ptr %3, align 4, !dbg !119
  call void @hts_mutexrelease(ptr noundef @process_chain_mutex), !dbg !120
  %9 = load i32, ptr %3, align 4, !dbg !121
  %10 = icmp ne i32 %9, 0, !dbg !121
  br i1 %10, label %11, label %13, !dbg !123

11:                                               ; preds = %4
  %12 = call i32 @usleep(i32 noundef 100000), !dbg !124
  br label %13, !dbg !127

13:                                               ; preds = %11, %4
  br label %14, !dbg !128

14:                                               ; preds = %13
  %15 = load i32, ptr %3, align 4, !dbg !129
  %16 = icmp ne i32 %15, 0, !dbg !128
  br i1 %16, label %4, label %17, !dbg !128, !llvm.loop !130

17:                                               ; preds = %14
  ret void, !dbg !133
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hts_mutexlock(ptr noundef %0) #0 !dbg !134 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !138, metadata !DIExpression()), !dbg !139
  %3 = load ptr, ptr %2, align 8, !dbg !140
  %4 = icmp ne ptr %3, null, !dbg !140
  br i1 %4, label %6, label %5, !dbg !140

5:                                                ; preds = %1
  call void @abortf_(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 194), !dbg !140
  br label %6, !dbg !140

6:                                                ; preds = %5, %1
  %7 = phi i1 [ true, %1 ], [ false, %5 ]
  %8 = zext i1 %7 to i32, !dbg !140
  %9 = load ptr, ptr %2, align 8, !dbg !141
  %10 = load ptr, ptr %9, align 8, !dbg !143
  %11 = icmp eq ptr %10, null, !dbg !144
  br i1 %11, label %12, label %14, !dbg !145

12:                                               ; preds = %6
  %13 = load ptr, ptr %2, align 8, !dbg !146
  call void @hts_mutexinit(ptr noundef %13), !dbg !148
  br label %14, !dbg !149

14:                                               ; preds = %12, %6
  %15 = load ptr, ptr %2, align 8, !dbg !150
  %16 = load ptr, ptr %15, align 8, !dbg !150
  %17 = icmp ne ptr %16, null, !dbg !150
  br i1 %17, label %19, label %18, !dbg !150

18:                                               ; preds = %14
  call void @abortf_(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 198), !dbg !150
  br label %19, !dbg !150

19:                                               ; preds = %18, %14
  %20 = phi i1 [ true, %14 ], [ false, %18 ]
  %21 = zext i1 %20 to i32, !dbg !150
  %22 = load ptr, ptr %2, align 8, !dbg !151
  %23 = load ptr, ptr %22, align 8, !dbg !152
  %24 = getelementptr inbounds %struct.htsmutex_s, ptr %23, i32 0, i32 0, !dbg !153
  %25 = call i32 @pthread_mutex_lock(ptr noundef %24) #6, !dbg !154
  ret void, !dbg !155
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hts_mutexrelease(ptr noundef %0) #0 !dbg !156 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !157, metadata !DIExpression()), !dbg !158
  %3 = load ptr, ptr %2, align 8, !dbg !159
  %4 = icmp ne ptr %3, null, !dbg !159
  br i1 %4, label %5, label %9, !dbg !159

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !159
  %7 = load ptr, ptr %6, align 8, !dbg !159
  %8 = icmp ne ptr %7, null, !dbg !159
  br i1 %8, label %10, label %9, !dbg !159

9:                                                ; preds = %5, %1
  call void @abortf_(ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 208), !dbg !159
  br label %10, !dbg !159

10:                                               ; preds = %9, %5
  %11 = phi i1 [ true, %5 ], [ false, %9 ]
  %12 = zext i1 %11 to i32, !dbg !159
  %13 = load ptr, ptr %2, align 8, !dbg !160
  %14 = load ptr, ptr %13, align 8, !dbg !161
  %15 = getelementptr inbounds %struct.htsmutex_s, ptr %14, i32 0, i32 0, !dbg !162
  %16 = call i32 @pthread_mutex_unlock(ptr noundef %15) #6, !dbg !163
  ret void, !dbg !164
}

declare i32 @usleep(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @htsthread_init() #0 !dbg !165 {
  %1 = load ptr, ptr @process_chain_mutex, align 8, !dbg !166
  %2 = icmp eq ptr %1, null, !dbg !168
  br i1 %2, label %3, label %4, !dbg !169

3:                                                ; preds = %0
  call void @hts_mutexinit(ptr noundef @process_chain_mutex), !dbg !170
  br label %4, !dbg !172

4:                                                ; preds = %3, %0
  ret void, !dbg !173
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hts_mutexinit(ptr noundef %0) #0 !dbg !174 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata ptr %3, metadata !177, metadata !DIExpression()), !dbg !180
  %4 = call noalias ptr @malloc(i64 noundef 40) #7, !dbg !181
  store ptr %4, ptr %3, align 8, !dbg !180
  %5 = load ptr, ptr %3, align 8, !dbg !182
  %6 = getelementptr inbounds %struct.htsmutex_s, ptr %5, i32 0, i32 0, !dbg !183
  %7 = call i32 @pthread_mutex_init(ptr noundef %6, ptr noundef null) #6, !dbg !184
  %8 = load ptr, ptr %3, align 8, !dbg !185
  %9 = load ptr, ptr %2, align 8, !dbg !186
  store ptr %8, ptr %9, align 8, !dbg !187
  ret void, !dbg !188
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @htsthread_uninit() #0 !dbg !189 {
  call void @htsthread_wait(), !dbg !190
  call void @hts_mutexfree(ptr noundef @process_chain_mutex), !dbg !191
  ret void, !dbg !192
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hts_mutexfree(ptr noundef %0) #0 !dbg !193 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !194, metadata !DIExpression()), !dbg !195
  %3 = load ptr, ptr %2, align 8, !dbg !196
  %4 = icmp ne ptr %3, null, !dbg !198
  br i1 %4, label %5, label %25, !dbg !199

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !200
  %7 = load ptr, ptr %6, align 8, !dbg !201
  %8 = icmp ne ptr %7, null, !dbg !202
  br i1 %8, label %9, label %25, !dbg !203

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 8, !dbg !204
  %11 = load ptr, ptr %10, align 8, !dbg !206
  %12 = getelementptr inbounds %struct.htsmutex_s, ptr %11, i32 0, i32 0, !dbg !207
  %13 = call i32 @pthread_mutex_destroy(ptr noundef %12) #6, !dbg !208
  br label %14, !dbg !209

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8, !dbg !210
  %16 = load ptr, ptr %15, align 8, !dbg !210
  %17 = icmp ne ptr %16, null, !dbg !210
  br i1 %17, label %18, label %22, !dbg !213

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 8, !dbg !214
  %20 = load ptr, ptr %19, align 8, !dbg !214
  call void @free(ptr noundef %20) #6, !dbg !214
  %21 = load ptr, ptr %2, align 8, !dbg !214
  store ptr null, ptr %21, align 8, !dbg !214
  br label %22, !dbg !214

22:                                               ; preds = %18, %14
  br label %23, !dbg !213

23:                                               ; preds = %22
  %24 = load ptr, ptr %2, align 8, !dbg !216
  store ptr null, ptr %24, align 8, !dbg !217
  br label %25, !dbg !218

25:                                               ; preds = %23, %5, %1
  ret void, !dbg !219
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hts_newthread(ptr noundef %0, ptr noundef %1) #0 !dbg !220 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.pthread_attr_t, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !223, metadata !DIExpression()), !dbg !224
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata ptr %6, metadata !227, metadata !DIExpression()), !dbg !228
  %11 = call noalias ptr @malloc(i64 noundef 16) #7, !dbg !229
  store ptr %11, ptr %6, align 8, !dbg !228
  %12 = load ptr, ptr %6, align 8, !dbg !230
  %13 = icmp ne ptr %12, null, !dbg !230
  br i1 %13, label %15, label %14, !dbg !230

14:                                               ; preds = %2
  call void @abortf_(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 127), !dbg !230
  br label %15, !dbg !230

15:                                               ; preds = %14, %2
  %16 = phi i1 [ true, %2 ], [ false, %14 ]
  %17 = zext i1 %16 to i32, !dbg !230
  %18 = load ptr, ptr %5, align 8, !dbg !231
  %19 = load ptr, ptr %6, align 8, !dbg !232
  %20 = getelementptr inbounds %struct.hts_thread_s, ptr %19, i32 0, i32 0, !dbg !233
  store ptr %18, ptr %20, align 8, !dbg !234
  %21 = load ptr, ptr %4, align 8, !dbg !235
  %22 = load ptr, ptr %6, align 8, !dbg !236
  %23 = getelementptr inbounds %struct.hts_thread_s, ptr %22, i32 0, i32 1, !dbg !237
  store ptr %21, ptr %23, align 8, !dbg !238
  call void @llvm.dbg.declare(metadata ptr %7, metadata !239, metadata !DIExpression()), !dbg !245
  store i64 8388608, ptr %7, align 8, !dbg !245
  call void @llvm.dbg.declare(metadata ptr %8, metadata !246, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata ptr %9, metadata !256, metadata !DIExpression()), !dbg !258
  store i64 0, ptr %9, align 8, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %10, metadata !259, metadata !DIExpression()), !dbg !260
  %24 = call i32 @pthread_attr_init(ptr noundef %8) #6, !dbg !261
  %25 = icmp ne i32 %24, 0, !dbg !263
  br i1 %25, label %33, label %26, !dbg !264

26:                                               ; preds = %15
  %27 = call i32 @pthread_attr_setstacksize(ptr noundef %8, i64 noundef 8388608) #6, !dbg !265
  %28 = icmp ne i32 %27, 0, !dbg !266
  br i1 %28, label %33, label %29, !dbg !267

29:                                               ; preds = %26
  %30 = load ptr, ptr %6, align 8, !dbg !268
  %31 = call i32 @pthread_create(ptr noundef %9, ptr noundef %8, ptr noundef @hts_entry_point, ptr noundef %30) #6, !dbg !269
  store i32 %31, ptr %10, align 4, !dbg !270
  %32 = icmp ne i32 %31, 0, !dbg !271
  br i1 %32, label %33, label %35, !dbg !272

33:                                               ; preds = %29, %26, %15
  %34 = load ptr, ptr %6, align 8, !dbg !273
  call void @free(ptr noundef %34) #6, !dbg !275
  store i32 -1, ptr %3, align 4, !dbg !276
  br label %40, !dbg !276

35:                                               ; preds = %29
  %36 = load i64, ptr %9, align 8, !dbg !277
  %37 = call i32 @pthread_detach(i64 noundef %36) #6, !dbg !279
  %38 = call i32 @pthread_attr_destroy(ptr noundef %8) #6, !dbg !280
  br label %39

39:                                               ; preds = %35
  store i32 0, ptr %3, align 4, !dbg !281
  br label %40, !dbg !281

40:                                               ; preds = %39, %33
  %41 = load i32, ptr %3, align 4, !dbg !282
  ret i32 %41, !dbg !282
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abortf_(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !283 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !288, metadata !DIExpression()), !dbg !289
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !290, metadata !DIExpression()), !dbg !291
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !292, metadata !DIExpression()), !dbg !293
  %7 = load ptr, ptr %4, align 8, !dbg !294
  %8 = load ptr, ptr %5, align 8, !dbg !295
  %9 = load i32, ptr %6, align 4, !dbg !296
  call void @log_abort_(ptr noundef %7, ptr noundef %8, i32 noundef %9), !dbg !297
  call void @abort() #8, !dbg !298
  unreachable, !dbg !298
}

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_attr_setstacksize(ptr noundef, i64 noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @hts_entry_point(ptr noundef %0) #0 !dbg !299 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata ptr %3, metadata !304, metadata !DIExpression()), !dbg !305
  %6 = load ptr, ptr %2, align 8, !dbg !306
  store ptr %6, ptr %3, align 8, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %4, metadata !307, metadata !DIExpression()), !dbg !309
  %7 = load ptr, ptr %3, align 8, !dbg !310
  %8 = getelementptr inbounds %struct.hts_thread_s, ptr %7, i32 0, i32 0, !dbg !311
  %9 = load ptr, ptr %8, align 8, !dbg !311
  store ptr %9, ptr %4, align 8, !dbg !309
  call void @llvm.dbg.declare(metadata ptr %5, metadata !312, metadata !DIExpression()), !dbg !313
  %10 = load ptr, ptr %3, align 8, !dbg !314
  %11 = getelementptr inbounds %struct.hts_thread_s, ptr %10, i32 0, i32 1, !dbg !315
  %12 = load ptr, ptr %11, align 8, !dbg !315
  store ptr %12, ptr %5, align 8, !dbg !313
  %13 = load ptr, ptr %2, align 8, !dbg !316
  call void @free(ptr noundef %13) #6, !dbg !317
  call void @hts_mutexlock(ptr noundef @process_chain_mutex), !dbg !318
  %14 = load i32, ptr @process_chain, align 4, !dbg !319
  %15 = add nsw i32 %14, 1, !dbg !319
  store i32 %15, ptr @process_chain, align 4, !dbg !319
  %16 = load i32, ptr @process_chain, align 4, !dbg !320
  %17 = icmp sgt i32 %16, 0, !dbg !320
  br i1 %17, label %19, label %18, !dbg !320

18:                                               ; preds = %1
  call void @abortf_(ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 106), !dbg !320
  br label %19, !dbg !320

19:                                               ; preds = %18, %1
  %20 = phi i1 [ true, %1 ], [ false, %18 ]
  %21 = zext i1 %20 to i32, !dbg !320
  call void @hts_mutexrelease(ptr noundef @process_chain_mutex), !dbg !321
  %22 = load ptr, ptr %5, align 8, !dbg !322
  %23 = load ptr, ptr %4, align 8, !dbg !323
  call void %22(ptr noundef %23), !dbg !322
  call void @hts_mutexlock(ptr noundef @process_chain_mutex), !dbg !324
  %24 = load i32, ptr @process_chain, align 4, !dbg !325
  %25 = add nsw i32 %24, -1, !dbg !325
  store i32 %25, ptr @process_chain, align 4, !dbg !325
  %26 = load i32, ptr @process_chain, align 4, !dbg !326
  %27 = icmp sge i32 %26, 0, !dbg !326
  br i1 %27, label %29, label %28, !dbg !326

28:                                               ; preds = %19
  call void @abortf_(ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 114), !dbg !326
  br label %29, !dbg !326

29:                                               ; preds = %28, %19
  %30 = phi i1 [ true, %19 ], [ false, %28 ]
  %31 = zext i1 %30 to i32, !dbg !326
  call void @hts_mutexrelease(ptr noundef @process_chain_mutex), !dbg !327
  ret ptr null, !dbg !328
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_detach(i64 noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_abort_(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !329 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !330, metadata !DIExpression()), !dbg !331
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !332, metadata !DIExpression()), !dbg !333
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !334, metadata !DIExpression()), !dbg !335
  %7 = load ptr, ptr @stderr, align 8, !dbg !336
  %8 = load ptr, ptr %4, align 8, !dbg !337
  %9 = load ptr, ptr %5, align 8, !dbg !338
  %10 = load i32, ptr %6, align 4, !dbg !339
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.5, ptr noundef %8, ptr noundef %9, i32 noundef %10), !dbg !340
  %12 = load ptr, ptr @stderr, align 8, !dbg !341
  %13 = call i32 @fflush(ptr noundef %12), !dbg !342
  ret void, !dbg !343
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @fflush(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "process_chain_mutex", scope: !2, file: !3, line: 48, type: !55, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/htsthread.c", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "aeaf9fa3b642f2fb7ee693a62a361eeb")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_thread_s", file: !3, line: 90, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hts_thread_s", file: !3, line: 87, size: 128, elements: !9)
!9 = !{!10, !11}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !8, file: !3, line: 88, baseType: !5, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !8, file: !3, line: 89, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !5}
!15 = !{!16, !22, !27, !32, !34, !0, !39, !42, !45, !50}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 168, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 21)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 16)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !3, line: 194, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 20)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !18, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !3, line: 208, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 352, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 44)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "process_chain", scope: !2, file: !3, line: 47, type: !41, isLocal: true, isDefinition: true)
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !44, line: 91, type: !29, isLocal: true, isDefinition: true)
!44 = !DIFile(filename: "./src/htssafe.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "0a24d1c0939efbe916010d30091bc9cc")
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 144, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 18)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 152, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 19)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsmutex", file: !56, line: 50, baseType: !57)
!56 = !DIFile(filename: "./src/htsthread.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "10292f5118e1d20eed3b8b192b447e74")
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsmutex_s", file: !56, line: 59, size: 320, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !58, file: !56, line: 60, baseType: !61, size: 320)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !62, line: 72, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!63 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !62, line: 67, size: 320, elements: !64)
!64 = !{!65, !86, !90}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !63, file: !62, line: 69, baseType: !66, size: 320)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !67, line: 22, size: 320, elements: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!68 = !{!69, !70, !72, !73, !74, !75, !77, !78}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !66, file: !67, line: 24, baseType: !41, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !66, file: !67, line: 25, baseType: !71, size: 32, offset: 32)
!71 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !66, file: !67, line: 26, baseType: !41, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !66, file: !67, line: 28, baseType: !71, size: 32, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !66, file: !67, line: 32, baseType: !41, size: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !66, file: !67, line: 34, baseType: !76, size: 16, offset: 160)
!76 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !66, file: !67, line: 35, baseType: !76, size: 16, offset: 176)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !66, file: !67, line: 36, baseType: !79, size: 128, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !80, line: 55, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !80, line: 51, size: 128, elements: !82)
!82 = !{!83, !85}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !81, file: !80, line: 53, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !81, file: !80, line: 54, baseType: !84, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !63, file: !62, line: 70, baseType: !87, size: 320)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 320, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 40)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !63, file: !62, line: 71, baseType: !91, size: 64)
!91 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!92 = !{i32 7, !"Dwarf Version", i32 5}
!93 = !{i32 2, !"Debug Info Version", i32 3}
!94 = !{i32 1, !"wchar_size", i32 4}
!95 = !{i32 8, !"PIC Level", i32 2}
!96 = !{i32 7, !"PIE Level", i32 2}
!97 = !{i32 7, !"uwtable", i32 2}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 16.0.0"}
!100 = distinct !DISubprogram(name: "htsthread_wait", scope: !3, file: !3, line: 50, type: !101, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{null}
!103 = !{}
!104 = !DILocation(line: 51, column: 3, scope: !100)
!105 = !DILocation(line: 52, column: 1, scope: !100)
!106 = distinct !DISubprogram(name: "htsthread_wait_n", scope: !3, file: !3, line: 54, type: !107, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !103)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !41}
!109 = !DILocalVariable(name: "n_wait", arg: 1, scope: !106, file: !3, line: 54, type: !41)
!110 = !DILocation(line: 54, column: 38, scope: !106)
!111 = !DILocalVariable(name: "wait", scope: !106, file: !3, line: 56, type: !41)
!112 = !DILocation(line: 56, column: 7, scope: !106)
!113 = !DILocation(line: 58, column: 3, scope: !106)
!114 = !DILocation(line: 59, column: 5, scope: !115)
!115 = distinct !DILexicalBlock(scope: !106, file: !3, line: 58, column: 6)
!116 = !DILocation(line: 60, column: 13, scope: !115)
!117 = !DILocation(line: 60, column: 29, scope: !115)
!118 = !DILocation(line: 60, column: 27, scope: !115)
!119 = !DILocation(line: 60, column: 10, scope: !115)
!120 = !DILocation(line: 61, column: 5, scope: !115)
!121 = !DILocation(line: 62, column: 9, scope: !122)
!122 = distinct !DILexicalBlock(scope: !115, file: !3, line: 62, column: 9)
!123 = !DILocation(line: 62, column: 9, scope: !115)
!124 = !DILocation(line: 63, column: 7, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 63, column: 7)
!126 = distinct !DILexicalBlock(scope: !122, file: !3, line: 63, column: 7)
!127 = !DILocation(line: 63, column: 7, scope: !126)
!128 = !DILocation(line: 64, column: 3, scope: !115)
!129 = !DILocation(line: 64, column: 11, scope: !106)
!130 = distinct !{!130, !113, !131, !132}
!131 = !DILocation(line: 64, column: 15, scope: !106)
!132 = !{!"llvm.loop.mustprogress"}
!133 = !DILocation(line: 66, column: 1, scope: !106)
!134 = distinct !DISubprogram(name: "hts_mutexlock", scope: !3, file: !3, line: 193, type: !135, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !103)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !137}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!138 = !DILocalVariable(name: "mutex", arg: 1, scope: !134, file: !3, line: 193, type: !137)
!139 = !DILocation(line: 193, column: 42, scope: !134)
!140 = !DILocation(line: 194, column: 3, scope: !134)
!141 = !DILocation(line: 195, column: 8, scope: !142)
!142 = distinct !DILexicalBlock(scope: !134, file: !3, line: 195, column: 7)
!143 = !DILocation(line: 195, column: 7, scope: !142)
!144 = !DILocation(line: 195, column: 14, scope: !142)
!145 = !DILocation(line: 195, column: 7, scope: !134)
!146 = !DILocation(line: 196, column: 19, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !3, line: 195, column: 32)
!148 = !DILocation(line: 196, column: 5, scope: !147)
!149 = !DILocation(line: 197, column: 3, scope: !147)
!150 = !DILocation(line: 198, column: 3, scope: !134)
!151 = !DILocation(line: 203, column: 25, scope: !134)
!152 = !DILocation(line: 203, column: 24, scope: !134)
!153 = !DILocation(line: 203, column: 33, scope: !134)
!154 = !DILocation(line: 203, column: 3, scope: !134)
!155 = !DILocation(line: 205, column: 1, scope: !134)
!156 = distinct !DISubprogram(name: "hts_mutexrelease", scope: !3, file: !3, line: 207, type: !135, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !103)
!157 = !DILocalVariable(name: "mutex", arg: 1, scope: !156, file: !3, line: 207, type: !137)
!158 = !DILocation(line: 207, column: 45, scope: !156)
!159 = !DILocation(line: 208, column: 3, scope: !156)
!160 = !DILocation(line: 213, column: 27, scope: !156)
!161 = !DILocation(line: 213, column: 26, scope: !156)
!162 = !DILocation(line: 213, column: 35, scope: !156)
!163 = !DILocation(line: 213, column: 3, scope: !156)
!164 = !DILocation(line: 215, column: 1, scope: !156)
!165 = distinct !DISubprogram(name: "htsthread_init", scope: !3, file: !3, line: 69, type: !101, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !103)
!166 = !DILocation(line: 74, column: 7, scope: !167)
!167 = distinct !DILexicalBlock(scope: !165, file: !3, line: 74, column: 7)
!168 = !DILocation(line: 74, column: 27, scope: !167)
!169 = !DILocation(line: 74, column: 7, scope: !165)
!170 = !DILocation(line: 75, column: 5, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !3, line: 74, column: 45)
!172 = !DILocation(line: 76, column: 3, scope: !171)
!173 = !DILocation(line: 78, column: 1, scope: !165)
!174 = distinct !DISubprogram(name: "hts_mutexinit", scope: !3, file: !3, line: 170, type: !135, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !103)
!175 = !DILocalVariable(name: "mutex", arg: 1, scope: !174, file: !3, line: 170, type: !137)
!176 = !DILocation(line: 170, column: 42, scope: !174)
!177 = !DILocalVariable(name: "smutex", scope: !174, file: !3, line: 171, type: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsmutex_s", file: !56, line: 50, baseType: !58)
!180 = !DILocation(line: 171, column: 15, scope: !174)
!181 = !DILocation(line: 171, column: 24, scope: !174)
!182 = !DILocation(line: 176, column: 23, scope: !174)
!183 = !DILocation(line: 176, column: 31, scope: !174)
!184 = !DILocation(line: 176, column: 3, scope: !174)
!185 = !DILocation(line: 178, column: 12, scope: !174)
!186 = !DILocation(line: 178, column: 4, scope: !174)
!187 = !DILocation(line: 178, column: 10, scope: !174)
!188 = !DILocation(line: 179, column: 1, scope: !174)
!189 = distinct !DISubprogram(name: "htsthread_uninit", scope: !3, file: !3, line: 80, type: !101, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !103)
!190 = !DILocation(line: 81, column: 3, scope: !189)
!191 = !DILocation(line: 83, column: 3, scope: !189)
!192 = !DILocation(line: 85, column: 1, scope: !189)
!193 = distinct !DISubprogram(name: "hts_mutexfree", scope: !3, file: !3, line: 181, type: !135, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !103)
!194 = !DILocalVariable(name: "mutex", arg: 1, scope: !193, file: !3, line: 181, type: !137)
!195 = !DILocation(line: 181, column: 42, scope: !193)
!196 = !DILocation(line: 182, column: 7, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !3, line: 182, column: 7)
!198 = !DILocation(line: 182, column: 13, scope: !197)
!199 = !DILocation(line: 182, column: 21, scope: !197)
!200 = !DILocation(line: 182, column: 25, scope: !197)
!201 = !DILocation(line: 182, column: 24, scope: !197)
!202 = !DILocation(line: 182, column: 31, scope: !197)
!203 = !DILocation(line: 182, column: 7, scope: !193)
!204 = !DILocation(line: 186, column: 31, scope: !205)
!205 = distinct !DILexicalBlock(scope: !197, file: !3, line: 182, column: 40)
!206 = !DILocation(line: 186, column: 30, scope: !205)
!207 = !DILocation(line: 186, column: 39, scope: !205)
!208 = !DILocation(line: 186, column: 5, scope: !205)
!209 = !DILocation(line: 188, column: 5, scope: !205)
!210 = !DILocation(line: 188, column: 5, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !3, line: 188, column: 5)
!212 = distinct !DILexicalBlock(scope: !205, file: !3, line: 188, column: 5)
!213 = !DILocation(line: 188, column: 5, scope: !212)
!214 = !DILocation(line: 188, column: 5, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !3, line: 188, column: 5)
!216 = !DILocation(line: 189, column: 6, scope: !205)
!217 = !DILocation(line: 189, column: 12, scope: !205)
!218 = !DILocation(line: 190, column: 3, scope: !205)
!219 = !DILocation(line: 191, column: 1, scope: !193)
!220 = distinct !DISubprogram(name: "hts_newthread", scope: !3, file: !3, line: 124, type: !221, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !103)
!221 = !DISubroutineType(types: !222)
!222 = !{!41, !12, !5}
!223 = !DILocalVariable(name: "fun", arg: 1, scope: !220, file: !3, line: 124, type: !12)
!224 = !DILocation(line: 124, column: 37, scope: !220)
!225 = !DILocalVariable(name: "arg", arg: 2, scope: !220, file: !3, line: 124, type: !5)
!226 = !DILocation(line: 124, column: 61, scope: !220)
!227 = !DILocalVariable(name: "s_args", scope: !220, file: !3, line: 125, type: !6)
!228 = !DILocation(line: 125, column: 17, scope: !220)
!229 = !DILocation(line: 125, column: 26, scope: !220)
!230 = !DILocation(line: 127, column: 3, scope: !220)
!231 = !DILocation(line: 128, column: 17, scope: !220)
!232 = !DILocation(line: 128, column: 3, scope: !220)
!233 = !DILocation(line: 128, column: 11, scope: !220)
!234 = !DILocation(line: 128, column: 15, scope: !220)
!235 = !DILocation(line: 129, column: 17, scope: !220)
!236 = !DILocation(line: 129, column: 3, scope: !220)
!237 = !DILocation(line: 129, column: 11, scope: !220)
!238 = !DILocation(line: 129, column: 15, scope: !220)
!239 = !DILocalVariable(name: "stackSize", scope: !240, file: !3, line: 145, type: !241)
!240 = distinct !DILexicalBlock(scope: !220, file: !3, line: 144, column: 3)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !243, line: 46, baseType: !244)
!243 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!244 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!245 = !DILocation(line: 145, column: 18, scope: !240)
!246 = !DILocalVariable(name: "attr", scope: !240, file: !3, line: 146, type: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !62, line: 62, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !62, line: 56, size: 448, elements: !249)
!249 = !{!250, !254}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !248, file: !62, line: 58, baseType: !251, size: 448)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 448, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 56)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !248, file: !62, line: 59, baseType: !91, size: 64)
!255 = !DILocation(line: 146, column: 20, scope: !240)
!256 = !DILocalVariable(name: "handle", scope: !240, file: !3, line: 147, type: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !62, line: 27, baseType: !244)
!258 = !DILocation(line: 147, column: 15, scope: !240)
!259 = !DILocalVariable(name: "retcode", scope: !240, file: !3, line: 148, type: !41)
!260 = !DILocation(line: 148, column: 9, scope: !240)
!261 = !DILocation(line: 150, column: 9, scope: !262)
!262 = distinct !DILexicalBlock(scope: !240, file: !3, line: 150, column: 9)
!263 = !DILocation(line: 150, column: 34, scope: !262)
!264 = !DILocation(line: 151, column: 9, scope: !262)
!265 = !DILocation(line: 151, column: 12, scope: !262)
!266 = !DILocation(line: 151, column: 56, scope: !262)
!267 = !DILocation(line: 152, column: 9, scope: !262)
!268 = !DILocation(line: 153, column: 61, scope: !262)
!269 = !DILocation(line: 153, column: 13, scope: !262)
!270 = !DILocation(line: 152, column: 21, scope: !262)
!271 = !DILocation(line: 153, column: 70, scope: !262)
!272 = !DILocation(line: 150, column: 9, scope: !240)
!273 = !DILocation(line: 154, column: 12, scope: !274)
!274 = distinct !DILexicalBlock(scope: !262, file: !3, line: 153, column: 76)
!275 = !DILocation(line: 154, column: 7, scope: !274)
!276 = !DILocation(line: 155, column: 7, scope: !274)
!277 = !DILocation(line: 158, column: 22, scope: !278)
!278 = distinct !DILexicalBlock(scope: !262, file: !3, line: 156, column: 12)
!279 = !DILocation(line: 158, column: 7, scope: !278)
!280 = !DILocation(line: 159, column: 7, scope: !278)
!281 = !DILocation(line: 163, column: 3, scope: !220)
!282 = !DILocation(line: 164, column: 1, scope: !220)
!283 = distinct !DISubprogram(name: "abortf_", scope: !44, file: !44, line: 95, type: !284, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !103)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !286, !286, !41}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!288 = !DILocalVariable(name: "exp", arg: 1, scope: !283, file: !44, line: 95, type: !286)
!289 = !DILocation(line: 95, column: 44, scope: !283)
!290 = !DILocalVariable(name: "file", arg: 2, scope: !283, file: !44, line: 95, type: !286)
!291 = !DILocation(line: 95, column: 61, scope: !283)
!292 = !DILocalVariable(name: "line", arg: 3, scope: !283, file: !44, line: 95, type: !41)
!293 = !DILocation(line: 95, column: 71, scope: !283)
!294 = !DILocation(line: 99, column: 14, scope: !283)
!295 = !DILocation(line: 99, column: 19, scope: !283)
!296 = !DILocation(line: 99, column: 25, scope: !283)
!297 = !DILocation(line: 99, column: 3, scope: !283)
!298 = !DILocation(line: 100, column: 3, scope: !283)
!299 = distinct !DISubprogram(name: "hts_entry_point", scope: !3, file: !3, line: 95, type: !300, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !103)
!300 = !DISubroutineType(types: !301)
!301 = !{!5, !5}
!302 = !DILocalVariable(name: "tharg", arg: 1, scope: !299, file: !3, line: 95, type: !5)
!303 = !DILocation(line: 95, column: 36, scope: !299)
!304 = !DILocalVariable(name: "s_args", scope: !299, file: !3, line: 98, type: !6)
!305 = !DILocation(line: 98, column: 17, scope: !299)
!306 = !DILocation(line: 98, column: 43, scope: !299)
!307 = !DILocalVariable(name: "arg", scope: !299, file: !3, line: 99, type: !308)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!309 = !DILocation(line: 99, column: 15, scope: !299)
!310 = !DILocation(line: 99, column: 21, scope: !299)
!311 = !DILocation(line: 99, column: 29, scope: !299)
!312 = !DILocalVariable(name: "fun", scope: !299, file: !3, line: 100, type: !12)
!313 = !DILocation(line: 100, column: 10, scope: !299)
!314 = !DILocation(line: 100, column: 29, scope: !299)
!315 = !DILocation(line: 100, column: 37, scope: !299)
!316 = !DILocation(line: 102, column: 8, scope: !299)
!317 = !DILocation(line: 102, column: 3, scope: !299)
!318 = !DILocation(line: 104, column: 3, scope: !299)
!319 = !DILocation(line: 105, column: 16, scope: !299)
!320 = !DILocation(line: 106, column: 3, scope: !299)
!321 = !DILocation(line: 107, column: 3, scope: !299)
!322 = !DILocation(line: 110, column: 3, scope: !299)
!323 = !DILocation(line: 110, column: 7, scope: !299)
!324 = !DILocation(line: 112, column: 3, scope: !299)
!325 = !DILocation(line: 113, column: 16, scope: !299)
!326 = !DILocation(line: 114, column: 3, scope: !299)
!327 = !DILocation(line: 115, column: 3, scope: !299)
!328 = !DILocation(line: 119, column: 3, scope: !299)
!329 = distinct !DISubprogram(name: "log_abort_", scope: !44, file: !44, line: 90, type: !284, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !103)
!330 = !DILocalVariable(name: "msg", arg: 1, scope: !329, file: !44, line: 90, type: !286)
!331 = !DILocation(line: 90, column: 47, scope: !329)
!332 = !DILocalVariable(name: "file", arg: 2, scope: !329, file: !44, line: 90, type: !286)
!333 = !DILocation(line: 90, column: 64, scope: !329)
!334 = !DILocalVariable(name: "line", arg: 3, scope: !329, file: !44, line: 90, type: !41)
!335 = !DILocation(line: 90, column: 74, scope: !329)
!336 = !DILocation(line: 91, column: 11, scope: !329)
!337 = !DILocation(line: 91, column: 43, scope: !329)
!338 = !DILocation(line: 91, column: 48, scope: !329)
!339 = !DILocation(line: 91, column: 54, scope: !329)
!340 = !DILocation(line: 91, column: 3, scope: !329)
!341 = !DILocation(line: 92, column: 10, scope: !329)
!342 = !DILocation(line: 92, column: 3, scope: !329)
!343 = !DILocation(line: 93, column: 1, scope: !329)
