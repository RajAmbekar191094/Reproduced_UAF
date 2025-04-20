; ModuleID = '/home/raj/lwan/common/lwan-cache.c'
source_filename = "/home/raj/lwan/common/lwan-cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_t = type { %struct.anon, %struct.anon.0, %struct.anon.1, %struct.anon.2, i32, %struct.anon.3 }
%struct.anon = type { ptr, %union.pthread_rwlock_t }
%union.pthread_rwlock_t = type { %struct.__pthread_rwlock_arch_t }
%struct.__pthread_rwlock_arch_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32 }
%struct.anon.0 = type { %struct.list_head, %union.pthread_rwlock_t }
%struct.list_head = type { %struct.list_node }
%struct.list_node = type { ptr, ptr }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.anon.2 = type { i64, i32 }
%struct.anon.3 = type { i32, i32, i32 }
%struct.timespec = type { i64, i64 }
%struct.cache_entry_t = type { %struct.list_node, ptr, i32, i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"create_entry_cb\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [35 x i8] c"/home/raj/lwan/common/lwan-cache.c\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.cache_create = private unnamed_addr constant [88 x i8] c"struct cache_t *cache_create(CreateEntryCallback, DestroyEntryCallback, void *, time_t)\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [17 x i8] c"destroy_entry_cb\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [17 x i8] c"time_to_live > 0\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [6 x i8] c"cache\00", align 1, !dbg !25
@__PRETTY_FUNCTION__.cache_destroy = private unnamed_addr constant [37 x i8] c"void cache_destroy(struct cache_t *)\00", align 1, !dbg !30
@__FUNCTION__.cache_destroy = private unnamed_addr constant [14 x i8] c"cache_destroy\00", align 1, !dbg !35
@.str.5 = private unnamed_addr constant [46 x i8] c"Cache stats: %d hits, %d misses, %d evictions\00", align 1, !dbg !40
@__PRETTY_FUNCTION__.cache_get_and_ref_entry = private unnamed_addr constant [85 x i8] c"struct cache_entry_t *cache_get_and_ref_entry(struct cache_t *, const char *, int *)\00", align 1, !dbg !45
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !50
@.str.7 = private unnamed_addr constant [4 x i8] c"key\00", align 1, !dbg !52
@.str.8 = private unnamed_addr constant [6 x i8] c"entry\00", align 1, !dbg !57
@__PRETTY_FUNCTION__.cache_entry_unref = private unnamed_addr constant [65 x i8] c"void cache_entry_unref(struct cache_t *, struct cache_entry_t *)\00", align 1, !dbg !59
@__FUNCTION__.clock_monotonic_gettime = private unnamed_addr constant [24 x i8] c"clock_monotonic_gettime\00", align 1, !dbg !64
@.str.9 = private unnamed_addr constant [14 x i8] c"clock_gettime\00", align 1, !dbg !69
@__FUNCTION__.cache_pruner_job = private unnamed_addr constant [17 x i8] c"cache_pruner_job\00", align 1, !dbg !72
@.str.10 = private unnamed_addr constant [22 x i8] c"pthread_rwlock_unlock\00", align 1, !dbg !75
@.str.11 = private unnamed_addr constant [22 x i8] c"pthread_rwlock_wrlock\00", align 1, !dbg !80

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @cache_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 !dbg !119 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !217, metadata !DIExpression()), !dbg !218
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !219, metadata !DIExpression()), !dbg !220
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !221, metadata !DIExpression()), !dbg !222
  store i64 %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata ptr %10, metadata !225, metadata !DIExpression()), !dbg !226
  %11 = load ptr, ptr %6, align 8, !dbg !227
  %12 = icmp ne ptr %11, null, !dbg !227
  br i1 %12, label %13, label %14, !dbg !230

13:                                               ; preds = %4
  br label %15, !dbg !230

14:                                               ; preds = %4
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 104, ptr noundef @__PRETTY_FUNCTION__.cache_create) #7, !dbg !227
  unreachable, !dbg !227

15:                                               ; preds = %13
  %16 = load ptr, ptr %7, align 8, !dbg !231
  %17 = icmp ne ptr %16, null, !dbg !231
  br i1 %17, label %18, label %19, !dbg !234

18:                                               ; preds = %15
  br label %20, !dbg !234

19:                                               ; preds = %15
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 105, ptr noundef @__PRETTY_FUNCTION__.cache_create) #7, !dbg !231
  unreachable, !dbg !231

20:                                               ; preds = %18
  %21 = load i64, ptr %9, align 8, !dbg !235
  %22 = icmp sgt i64 %21, 0, !dbg !235
  br i1 %22, label %23, label %24, !dbg !238

23:                                               ; preds = %20
  br label %25, !dbg !238

24:                                               ; preds = %20
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 106, ptr noundef @__PRETTY_FUNCTION__.cache_create) #7, !dbg !235
  unreachable, !dbg !235

25:                                               ; preds = %23
  %26 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 192) #8, !dbg !239
  store ptr %26, ptr %10, align 8, !dbg !240
  %27 = load ptr, ptr %10, align 8, !dbg !241
  %28 = icmp ne ptr %27, null, !dbg !241
  br i1 %28, label %30, label %29, !dbg !243

29:                                               ; preds = %25
  store ptr null, ptr %5, align 8, !dbg !244
  br label %93, !dbg !244

30:                                               ; preds = %25
  %31 = call ptr @hash_str_new(ptr noundef @free, ptr noundef null), !dbg !245
  %32 = load ptr, ptr %10, align 8, !dbg !246
  %33 = getelementptr inbounds %struct.cache_t, ptr %32, i32 0, i32 0, !dbg !247
  %34 = getelementptr inbounds %struct.anon, ptr %33, i32 0, i32 0, !dbg !248
  store ptr %31, ptr %34, align 8, !dbg !249
  %35 = load ptr, ptr %10, align 8, !dbg !250
  %36 = getelementptr inbounds %struct.cache_t, ptr %35, i32 0, i32 0, !dbg !252
  %37 = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 0, !dbg !253
  %38 = load ptr, ptr %37, align 8, !dbg !253
  %39 = icmp ne ptr %38, null, !dbg !250
  br i1 %39, label %41, label %40, !dbg !254

40:                                               ; preds = %30
  br label %91, !dbg !255

41:                                               ; preds = %30
  %42 = load ptr, ptr %10, align 8, !dbg !256
  %43 = getelementptr inbounds %struct.cache_t, ptr %42, i32 0, i32 0, !dbg !258
  %44 = getelementptr inbounds %struct.anon, ptr %43, i32 0, i32 1, !dbg !259
  %45 = call i32 @pthread_rwlock_init(ptr noundef %44, ptr noundef null) #9, !dbg !260
  %46 = icmp ne i32 %45, 0, !dbg !260
  br i1 %46, label %47, label %48, !dbg !261

47:                                               ; preds = %41
  br label %86, !dbg !262

48:                                               ; preds = %41
  %49 = load ptr, ptr %10, align 8, !dbg !263
  %50 = getelementptr inbounds %struct.cache_t, ptr %49, i32 0, i32 1, !dbg !265
  %51 = getelementptr inbounds %struct.anon.0, ptr %50, i32 0, i32 1, !dbg !266
  %52 = call i32 @pthread_rwlock_init(ptr noundef %51, ptr noundef null) #9, !dbg !267
  %53 = icmp ne i32 %52, 0, !dbg !267
  br i1 %53, label %54, label %55, !dbg !268

54:                                               ; preds = %48
  br label %81, !dbg !269

55:                                               ; preds = %48
  %56 = load ptr, ptr %6, align 8, !dbg !270
  %57 = load ptr, ptr %10, align 8, !dbg !271
  %58 = getelementptr inbounds %struct.cache_t, ptr %57, i32 0, i32 2, !dbg !272
  %59 = getelementptr inbounds %struct.anon.1, ptr %58, i32 0, i32 0, !dbg !273
  store ptr %56, ptr %59, align 8, !dbg !274
  %60 = load ptr, ptr %7, align 8, !dbg !275
  %61 = load ptr, ptr %10, align 8, !dbg !276
  %62 = getelementptr inbounds %struct.cache_t, ptr %61, i32 0, i32 2, !dbg !277
  %63 = getelementptr inbounds %struct.anon.1, ptr %62, i32 0, i32 1, !dbg !278
  store ptr %60, ptr %63, align 8, !dbg !279
  %64 = load ptr, ptr %8, align 8, !dbg !280
  %65 = load ptr, ptr %10, align 8, !dbg !281
  %66 = getelementptr inbounds %struct.cache_t, ptr %65, i32 0, i32 2, !dbg !282
  %67 = getelementptr inbounds %struct.anon.1, ptr %66, i32 0, i32 2, !dbg !283
  store ptr %64, ptr %67, align 8, !dbg !284
  %68 = call i32 @detect_fastest_monotonic_clock(), !dbg !285
  %69 = load ptr, ptr %10, align 8, !dbg !286
  %70 = getelementptr inbounds %struct.cache_t, ptr %69, i32 0, i32 3, !dbg !287
  %71 = getelementptr inbounds %struct.anon.2, ptr %70, i32 0, i32 1, !dbg !288
  store i32 %68, ptr %71, align 8, !dbg !289
  %72 = load i64, ptr %9, align 8, !dbg !290
  %73 = load ptr, ptr %10, align 8, !dbg !291
  %74 = getelementptr inbounds %struct.cache_t, ptr %73, i32 0, i32 3, !dbg !292
  %75 = getelementptr inbounds %struct.anon.2, ptr %74, i32 0, i32 0, !dbg !293
  store i64 %72, ptr %75, align 8, !dbg !294
  %76 = load ptr, ptr %10, align 8, !dbg !295
  %77 = getelementptr inbounds %struct.cache_t, ptr %76, i32 0, i32 1, !dbg !296
  %78 = getelementptr inbounds %struct.anon.0, ptr %77, i32 0, i32 0, !dbg !297
  call void @list_head_init(ptr noundef %78), !dbg !298
  %79 = load ptr, ptr %10, align 8, !dbg !299
  call void @lwan_job_add(ptr noundef @cache_pruner_job, ptr noundef %79), !dbg !300
  %80 = load ptr, ptr %10, align 8, !dbg !301
  store ptr %80, ptr %5, align 8, !dbg !302
  br label %93, !dbg !302

81:                                               ; preds = %54
  call void @llvm.dbg.label(metadata !303), !dbg !304
  %82 = load ptr, ptr %10, align 8, !dbg !305
  %83 = getelementptr inbounds %struct.cache_t, ptr %82, i32 0, i32 0, !dbg !306
  %84 = getelementptr inbounds %struct.anon, ptr %83, i32 0, i32 1, !dbg !307
  %85 = call i32 @pthread_rwlock_destroy(ptr noundef %84) #9, !dbg !308
  br label %86, !dbg !308

86:                                               ; preds = %81, %47
  call void @llvm.dbg.label(metadata !309), !dbg !310
  %87 = load ptr, ptr %10, align 8, !dbg !311
  %88 = getelementptr inbounds %struct.cache_t, ptr %87, i32 0, i32 0, !dbg !312
  %89 = getelementptr inbounds %struct.anon, ptr %88, i32 0, i32 0, !dbg !313
  %90 = load ptr, ptr %89, align 8, !dbg !313
  call void @hash_free(ptr noundef %90), !dbg !314
  br label %91, !dbg !314

91:                                               ; preds = %86, %40
  call void @llvm.dbg.label(metadata !315), !dbg !316
  %92 = load ptr, ptr %10, align 8, !dbg !317
  call void @free(ptr noundef %92) #9, !dbg !318
  store ptr null, ptr %5, align 8, !dbg !319
  br label %93, !dbg !319

93:                                               ; preds = %91, %55, %29
  %94 = load ptr, ptr %5, align 8, !dbg !320
  ret ptr %94, !dbg !320
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #3

declare ptr @hash_str_new(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: nounwind
declare i32 @pthread_rwlock_init(ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_fastest_monotonic_clock() #0 !dbg !321 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !324, metadata !DIExpression()), !dbg !331
  %3 = call i32 @clock_gettime(i32 noundef 6, ptr noundef %2) #9, !dbg !332
  %4 = icmp ne i32 %3, 0, !dbg !332
  br i1 %4, label %6, label %5, !dbg !334

5:                                                ; preds = %0
  store i32 6, ptr %1, align 4, !dbg !335
  br label %7, !dbg !335

6:                                                ; preds = %0
  store i32 1, ptr %1, align 4, !dbg !336
  br label %7, !dbg !336

7:                                                ; preds = %6, %5
  %8 = load i32, ptr %1, align 4, !dbg !337
  ret i32 %8, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_head_init(ptr noundef %0) #0 !dbg !338 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !342, metadata !DIExpression()), !dbg !343
  %3 = load ptr, ptr %2, align 8, !dbg !344
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !345
  %5 = load ptr, ptr %2, align 8, !dbg !346
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 0, !dbg !347
  %7 = getelementptr inbounds %struct.list_node, ptr %6, i32 0, i32 1, !dbg !348
  store ptr %4, ptr %7, align 8, !dbg !349
  %8 = load ptr, ptr %2, align 8, !dbg !350
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 0, !dbg !351
  %10 = getelementptr inbounds %struct.list_node, ptr %9, i32 0, i32 0, !dbg !352
  store ptr %4, ptr %10, align 8, !dbg !353
  ret void, !dbg !354
}

declare void @lwan_job_add(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @cache_pruner_job(ptr noundef %0) #0 !dbg !355 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.timespec, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.list_head, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !359, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.declare(metadata ptr %6, metadata !361, metadata !DIExpression()), !dbg !362
  %14 = load ptr, ptr %5, align 8, !dbg !363
  store ptr %14, ptr %6, align 8, !dbg !362
  call void @llvm.dbg.declare(metadata ptr %7, metadata !364, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.declare(metadata ptr %8, metadata !366, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.declare(metadata ptr %9, metadata !368, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.declare(metadata ptr %10, metadata !370, metadata !DIExpression()), !dbg !371
  %15 = load ptr, ptr %6, align 8, !dbg !372
  %16 = getelementptr inbounds %struct.cache_t, ptr %15, i32 0, i32 4, !dbg !373
  %17 = load i32, ptr %16, align 8, !dbg !373
  %18 = and i32 %17, 1, !dbg !374
  %19 = icmp ne i32 %18, 0, !dbg !372
  %20 = zext i1 %19 to i8, !dbg !371
  store i8 %20, ptr %10, align 1, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %11, metadata !375, metadata !DIExpression()), !dbg !376
  store i32 0, ptr %11, align 4, !dbg !376
  call void @llvm.dbg.declare(metadata ptr %12, metadata !377, metadata !DIExpression()), !dbg !378
  %21 = load ptr, ptr %6, align 8, !dbg !379
  %22 = getelementptr inbounds %struct.cache_t, ptr %21, i32 0, i32 1, !dbg !379
  %23 = getelementptr inbounds %struct.anon.0, ptr %22, i32 0, i32 1, !dbg !379
  %24 = call i32 @pthread_rwlock_trywrlock(ptr noundef %23) #9, !dbg !379
  %25 = icmp eq i32 %24, 16, !dbg !379
  %26 = zext i1 %25 to i32, !dbg !379
  %27 = sext i32 %26 to i64, !dbg !379
  %28 = icmp ne i64 %27, 0, !dbg !379
  br i1 %28, label %29, label %30, !dbg !381

29:                                               ; preds = %1
  store i1 false, ptr %4, align 1, !dbg !382
  br label %210, !dbg !382

30:                                               ; preds = %1
  %31 = load ptr, ptr %6, align 8, !dbg !383
  %32 = getelementptr inbounds %struct.cache_t, ptr %31, i32 0, i32 1, !dbg !385
  %33 = getelementptr inbounds %struct.anon.0, ptr %32, i32 0, i32 0, !dbg !386
  %34 = call zeroext i1 @list_empty(ptr noundef %33), !dbg !387
  br i1 %34, label %35, label %44, !dbg !388

35:                                               ; preds = %30
  %36 = load ptr, ptr %6, align 8, !dbg !389
  %37 = getelementptr inbounds %struct.cache_t, ptr %36, i32 0, i32 1, !dbg !389
  %38 = getelementptr inbounds %struct.anon.0, ptr %37, i32 0, i32 1, !dbg !389
  %39 = call i32 @pthread_rwlock_unlock(ptr noundef %38) #9, !dbg !389
  %40 = sext i32 %39 to i64, !dbg !389
  %41 = icmp ne i64 %40, 0, !dbg !389
  br i1 %41, label %42, label %43, !dbg !392

42:                                               ; preds = %35
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str.1, i32 noundef 287, ptr noundef @__FUNCTION__.cache_pruner_job, ptr noundef @.str.10), !dbg !393
  br label %43, !dbg !393

43:                                               ; preds = %42, %35
  store i1 false, ptr %4, align 1, !dbg !394
  br label %210, !dbg !394

44:                                               ; preds = %30
  call void @list_head_init(ptr noundef %12), !dbg !395
  %45 = load ptr, ptr %6, align 8, !dbg !396
  %46 = getelementptr inbounds %struct.cache_t, ptr %45, i32 0, i32 1, !dbg !397
  %47 = getelementptr inbounds %struct.anon.0, ptr %46, i32 0, i32 0, !dbg !398
  call void @list_append_list(ptr noundef %12, ptr noundef %47), !dbg !399
  %48 = load ptr, ptr %6, align 8, !dbg !400
  %49 = getelementptr inbounds %struct.cache_t, ptr %48, i32 0, i32 1, !dbg !401
  %50 = getelementptr inbounds %struct.anon.0, ptr %49, i32 0, i32 0, !dbg !402
  call void @list_head_init(ptr noundef %50), !dbg !403
  %51 = load ptr, ptr %6, align 8, !dbg !404
  %52 = getelementptr inbounds %struct.cache_t, ptr %51, i32 0, i32 1, !dbg !404
  %53 = getelementptr inbounds %struct.anon.0, ptr %52, i32 0, i32 1, !dbg !404
  %54 = call i32 @pthread_rwlock_unlock(ptr noundef %53) #9, !dbg !404
  %55 = sext i32 %54 to i64, !dbg !404
  %56 = icmp ne i64 %55, 0, !dbg !404
  br i1 %56, label %57, label %58, !dbg !406

57:                                               ; preds = %44
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str.1, i32 noundef 298, ptr noundef @__FUNCTION__.cache_pruner_job, ptr noundef @.str.10), !dbg !407
  br label %201, !dbg !409

58:                                               ; preds = %44
  %59 = load ptr, ptr %6, align 8, !dbg !410
  store ptr %59, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !411, metadata !DIExpression()), !dbg !416
  store ptr %9, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !418, metadata !DIExpression()), !dbg !419
  %60 = load ptr, ptr %2, align 8, !dbg !420
  %61 = getelementptr inbounds %struct.cache_t, ptr %60, i32 0, i32 3, !dbg !420
  %62 = getelementptr inbounds %struct.anon.2, ptr %61, i32 0, i32 1, !dbg !420
  %63 = load i32, ptr %62, align 8, !dbg !420
  %64 = load ptr, ptr %3, align 8, !dbg !420
  %65 = call i32 @clock_gettime(i32 noundef %63, ptr noundef %64) #9, !dbg !420
  %66 = icmp slt i32 %65, 0, !dbg !420
  %67 = zext i1 %66 to i32, !dbg !420
  %68 = sext i32 %67 to i64, !dbg !420
  br i1 %66, label %69, label %70, !dbg !422

69:                                               ; preds = %58
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str.1, i32 noundef 94, ptr noundef @__FUNCTION__.clock_monotonic_gettime, ptr noundef @.str.9) #9, !dbg !423
  br label %70, !dbg !423

70:                                               ; preds = %58, %69
  %71 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !424
  %72 = getelementptr inbounds %struct.list_node, ptr %71, i32 0, i32 0, !dbg !424
  %73 = load ptr, ptr %72, align 8, !dbg !424
  %74 = call ptr @list_node_to_off_(ptr noundef %73, i64 noundef 0), !dbg !424
  store ptr %74, ptr %7, align 8, !dbg !424
  %75 = load ptr, ptr %7, align 8, !dbg !424
  %76 = call ptr @list_node_from_off_(ptr noundef %75, i64 noundef 0), !dbg !424
  %77 = getelementptr inbounds %struct.list_node, ptr %76, i32 0, i32 0, !dbg !424
  %78 = load ptr, ptr %77, align 8, !dbg !424
  %79 = call ptr @list_node_to_off_(ptr noundef %78, i64 noundef 0), !dbg !424
  store ptr %79, ptr %8, align 8, !dbg !424
  br label %80, !dbg !424

80:                                               ; preds = %169, %70
  %81 = load ptr, ptr %7, align 8, !dbg !426
  %82 = call ptr @list_node_from_off_(ptr noundef %81, i64 noundef 0), !dbg !426
  %83 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !426
  %84 = icmp ne ptr %82, %83, !dbg !426
  br i1 %84, label %85, label %176, !dbg !424

85:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata ptr %13, metadata !428, metadata !DIExpression()), !dbg !430
  %86 = load ptr, ptr %7, align 8, !dbg !431
  %87 = getelementptr inbounds %struct.cache_entry_t, ptr %86, i32 0, i32 1, !dbg !432
  %88 = load ptr, ptr %87, align 8, !dbg !432
  store ptr %88, ptr %13, align 8, !dbg !430
  %89 = getelementptr inbounds %struct.timespec, ptr %9, i32 0, i32 0, !dbg !433
  %90 = load i64, ptr %89, align 8, !dbg !433
  %91 = load ptr, ptr %7, align 8, !dbg !435
  %92 = getelementptr inbounds %struct.cache_entry_t, ptr %91, i32 0, i32 4, !dbg !436
  %93 = load i64, ptr %92, align 8, !dbg !436
  %94 = icmp slt i64 %90, %93, !dbg !437
  br i1 %94, label %95, label %105, !dbg !438

95:                                               ; preds = %85
  %96 = load i8, ptr %10, align 1, !dbg !439
  %97 = trunc i8 %96 to i1, !dbg !439
  %98 = xor i1 %97, true, !dbg !439
  %99 = xor i1 %98, true, !dbg !439
  %100 = xor i1 %99, true, !dbg !439
  %101 = zext i1 %100 to i32, !dbg !439
  %102 = sext i32 %101 to i64, !dbg !439
  %103 = icmp ne i64 %102, 0, !dbg !439
  br i1 %103, label %104, label %105, !dbg !440

104:                                              ; preds = %95
  br label %176, !dbg !441

105:                                              ; preds = %95, %85
  %106 = load ptr, ptr %7, align 8, !dbg !442
  %107 = getelementptr inbounds %struct.cache_entry_t, ptr %106, i32 0, i32 0, !dbg !443
  call void @list_del(ptr noundef %107), !dbg !444
  %108 = load ptr, ptr %6, align 8, !dbg !445
  %109 = getelementptr inbounds %struct.cache_t, ptr %108, i32 0, i32 0, !dbg !445
  %110 = getelementptr inbounds %struct.anon, ptr %109, i32 0, i32 1, !dbg !445
  %111 = call i32 @pthread_rwlock_wrlock(ptr noundef %110) #9, !dbg !445
  %112 = sext i32 %111 to i64, !dbg !445
  %113 = icmp ne i64 %112, 0, !dbg !445
  br i1 %113, label %114, label %115, !dbg !447

114:                                              ; preds = %105
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str.1, i32 noundef 312, ptr noundef @__FUNCTION__.cache_pruner_job, ptr noundef @.str.11), !dbg !448
  br label %169, !dbg !450

115:                                              ; preds = %105
  %116 = load ptr, ptr %6, align 8, !dbg !451
  %117 = getelementptr inbounds %struct.cache_t, ptr %116, i32 0, i32 0, !dbg !452
  %118 = getelementptr inbounds %struct.anon, ptr %117, i32 0, i32 0, !dbg !453
  %119 = load ptr, ptr %118, align 8, !dbg !453
  %120 = load ptr, ptr %13, align 8, !dbg !454
  %121 = call i32 @hash_del(ptr noundef %119, ptr noundef %120), !dbg !455
  %122 = load ptr, ptr %6, align 8, !dbg !456
  %123 = getelementptr inbounds %struct.cache_t, ptr %122, i32 0, i32 0, !dbg !456
  %124 = getelementptr inbounds %struct.anon, ptr %123, i32 0, i32 1, !dbg !456
  %125 = call i32 @pthread_rwlock_unlock(ptr noundef %124) #9, !dbg !456
  %126 = sext i32 %125 to i64, !dbg !456
  %127 = icmp ne i64 %126, 0, !dbg !456
  br i1 %127, label %128, label %129, !dbg !458

128:                                              ; preds = %115
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str.1, i32 noundef 319, ptr noundef @__FUNCTION__.cache_pruner_job, ptr noundef @.str.10), !dbg !459
  br label %129, !dbg !459

129:                                              ; preds = %128, %115
  %130 = load ptr, ptr %7, align 8, !dbg !460
  %131 = getelementptr inbounds %struct.cache_entry_t, ptr %130, i32 0, i32 2, !dbg !460
  %132 = atomicrmw add ptr %131, i32 1 seq_cst, align 4, !dbg !460
  %133 = add i32 %132, 1, !dbg !460
  %134 = icmp eq i32 %133, 1, !dbg !462
  br i1 %134, label %135, label %145, !dbg !463

135:                                              ; preds = %129
  %136 = load ptr, ptr %6, align 8, !dbg !464
  %137 = getelementptr inbounds %struct.cache_t, ptr %136, i32 0, i32 2, !dbg !466
  %138 = getelementptr inbounds %struct.anon.1, ptr %137, i32 0, i32 1, !dbg !467
  %139 = load ptr, ptr %138, align 8, !dbg !467
  %140 = load ptr, ptr %7, align 8, !dbg !468
  %141 = load ptr, ptr %6, align 8, !dbg !469
  %142 = getelementptr inbounds %struct.cache_t, ptr %141, i32 0, i32 2, !dbg !470
  %143 = getelementptr inbounds %struct.anon.1, ptr %142, i32 0, i32 2, !dbg !471
  %144 = load ptr, ptr %143, align 8, !dbg !471
  call void %139(ptr noundef %140, ptr noundef %144), !dbg !464
  br label %166, !dbg !472

145:                                              ; preds = %129
  %146 = load ptr, ptr %7, align 8, !dbg !473
  %147 = getelementptr inbounds %struct.cache_entry_t, ptr %146, i32 0, i32 3, !dbg !473
  %148 = atomicrmw or ptr %147, i32 1 seq_cst, align 4, !dbg !473
  %149 = or i32 %148, 1, !dbg !473
  %150 = load ptr, ptr %7, align 8, !dbg !475
  %151 = getelementptr inbounds %struct.cache_entry_t, ptr %150, i32 0, i32 2, !dbg !475
  %152 = atomicrmw add ptr %151, i32 -1 seq_cst, align 4, !dbg !475
  %153 = add i32 %152, -1, !dbg !475
  %154 = icmp ne i32 %153, 0, !dbg !475
  br i1 %154, label %165, label %155, !dbg !477

155:                                              ; preds = %145
  %156 = load ptr, ptr %6, align 8, !dbg !478
  %157 = getelementptr inbounds %struct.cache_t, ptr %156, i32 0, i32 2, !dbg !479
  %158 = getelementptr inbounds %struct.anon.1, ptr %157, i32 0, i32 1, !dbg !480
  %159 = load ptr, ptr %158, align 8, !dbg !480
  %160 = load ptr, ptr %7, align 8, !dbg !481
  %161 = load ptr, ptr %6, align 8, !dbg !482
  %162 = getelementptr inbounds %struct.cache_t, ptr %161, i32 0, i32 2, !dbg !483
  %163 = getelementptr inbounds %struct.anon.1, ptr %162, i32 0, i32 2, !dbg !484
  %164 = load ptr, ptr %163, align 8, !dbg !484
  call void %159(ptr noundef %160, ptr noundef %164), !dbg !478
  br label %165, !dbg !478

165:                                              ; preds = %155, %145
  br label %166

166:                                              ; preds = %165, %135
  %167 = load i32, ptr %11, align 4, !dbg !485
  %168 = add i32 %167, 1, !dbg !485
  store i32 %168, ptr %11, align 4, !dbg !485
  br label %169, !dbg !486

169:                                              ; preds = %166, %114
  %170 = load ptr, ptr %8, align 8, !dbg !426
  store ptr %170, ptr %7, align 8, !dbg !426
  %171 = load ptr, ptr %7, align 8, !dbg !426
  %172 = call ptr @list_node_from_off_(ptr noundef %171, i64 noundef 0), !dbg !426
  %173 = getelementptr inbounds %struct.list_node, ptr %172, i32 0, i32 0, !dbg !426
  %174 = load ptr, ptr %173, align 8, !dbg !426
  %175 = call ptr @list_node_to_off_(ptr noundef %174, i64 noundef 0), !dbg !426
  store ptr %175, ptr %8, align 8, !dbg !426
  br label %80, !dbg !426, !llvm.loop !487

176:                                              ; preds = %104, %80
  %177 = call zeroext i1 @list_empty(ptr noundef %12), !dbg !490
  br i1 %177, label %178, label %179, !dbg !492

178:                                              ; preds = %176
  br label %201, !dbg !493

179:                                              ; preds = %176
  %180 = load ptr, ptr %6, align 8, !dbg !494
  %181 = getelementptr inbounds %struct.cache_t, ptr %180, i32 0, i32 1, !dbg !494
  %182 = getelementptr inbounds %struct.anon.0, ptr %181, i32 0, i32 1, !dbg !494
  %183 = call i32 @pthread_rwlock_wrlock(ptr noundef %182) #9, !dbg !494
  %184 = icmp ne i32 %183, 0, !dbg !494
  %185 = xor i1 %184, true, !dbg !494
  %186 = xor i1 %185, true, !dbg !494
  %187 = xor i1 %186, true, !dbg !494
  %188 = zext i1 %187 to i32, !dbg !494
  %189 = sext i32 %188 to i64, !dbg !494
  %190 = icmp ne i64 %189, 0, !dbg !494
  br i1 %190, label %191, label %199, !dbg !496

191:                                              ; preds = %179
  %192 = load ptr, ptr %6, align 8, !dbg !497
  %193 = getelementptr inbounds %struct.cache_t, ptr %192, i32 0, i32 1, !dbg !499
  %194 = getelementptr inbounds %struct.anon.0, ptr %193, i32 0, i32 0, !dbg !500
  call void @list_prepend_list(ptr noundef %194, ptr noundef %12), !dbg !501
  %195 = load ptr, ptr %6, align 8, !dbg !502
  %196 = getelementptr inbounds %struct.cache_t, ptr %195, i32 0, i32 1, !dbg !503
  %197 = getelementptr inbounds %struct.anon.0, ptr %196, i32 0, i32 1, !dbg !504
  %198 = call i32 @pthread_rwlock_unlock(ptr noundef %197) #9, !dbg !505
  br label %200, !dbg !506

199:                                              ; preds = %179
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str.1, i32 noundef 346, ptr noundef @__FUNCTION__.cache_pruner_job, ptr noundef @.str.11), !dbg !507
  br label %200

200:                                              ; preds = %199, %191
  br label %201, !dbg !494

201:                                              ; preds = %200, %178, %57
  call void @llvm.dbg.label(metadata !509), !dbg !510
  %202 = load ptr, ptr %6, align 8, !dbg !511
  %203 = getelementptr inbounds %struct.cache_t, ptr %202, i32 0, i32 5, !dbg !511
  %204 = getelementptr inbounds %struct.anon.3, ptr %203, i32 0, i32 2, !dbg !511
  %205 = load i32, ptr %11, align 4, !dbg !511
  %206 = atomicrmw add ptr %204, i32 %205 seq_cst, align 4, !dbg !511
  %207 = add i32 %206, %205, !dbg !511
  %208 = load i32, ptr %11, align 4, !dbg !512
  %209 = icmp ne i32 %208, 0, !dbg !512
  store i1 %209, ptr %4, align 1, !dbg !513
  br label %210, !dbg !513

210:                                              ; preds = %201, %43, %29
  %211 = load i1, ptr %4, align 1, !dbg !514
  ret i1 %211, !dbg !514
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare i32 @pthread_rwlock_destroy(ptr noundef) #5

declare void @hash_free(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_destroy(ptr noundef %0) #0 !dbg !515 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !518, metadata !DIExpression()), !dbg !519
  %3 = load ptr, ptr %2, align 8, !dbg !520
  %4 = icmp ne ptr %3, null, !dbg !520
  br i1 %4, label %5, label %6, !dbg !523

5:                                                ; preds = %1
  br label %7, !dbg !523

6:                                                ; preds = %1
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 146, ptr noundef @__PRETTY_FUNCTION__.cache_destroy) #7, !dbg !520
  unreachable, !dbg !520

7:                                                ; preds = %5
  %8 = load ptr, ptr %2, align 8, !dbg !524
  %9 = getelementptr inbounds %struct.cache_t, ptr %8, i32 0, i32 5, !dbg !524
  %10 = getelementptr inbounds %struct.anon.3, ptr %9, i32 0, i32 0, !dbg !524
  %11 = load i32, ptr %10, align 4, !dbg !524
  %12 = load ptr, ptr %2, align 8, !dbg !524
  %13 = getelementptr inbounds %struct.cache_t, ptr %12, i32 0, i32 5, !dbg !524
  %14 = getelementptr inbounds %struct.anon.3, ptr %13, i32 0, i32 1, !dbg !524
  %15 = load i32, ptr %14, align 4, !dbg !524
  %16 = load ptr, ptr %2, align 8, !dbg !524
  %17 = getelementptr inbounds %struct.cache_t, ptr %16, i32 0, i32 5, !dbg !524
  %18 = getelementptr inbounds %struct.anon.3, ptr %17, i32 0, i32 2, !dbg !524
  %19 = load i32, ptr %18, align 4, !dbg !524
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_debug_debug(ptr noundef @.str.1, i32 noundef 151, ptr noundef @__FUNCTION__.cache_destroy, ptr noundef @.str.5, i32 noundef %11, i32 noundef %15, i32 noundef %19), !dbg !524
  %20 = load ptr, ptr %2, align 8, !dbg !525
  call void @lwan_job_del(ptr noundef @cache_pruner_job, ptr noundef %20), !dbg !526
  %21 = load ptr, ptr %2, align 8, !dbg !527
  %22 = getelementptr inbounds %struct.cache_t, ptr %21, i32 0, i32 4, !dbg !528
  %23 = load i32, ptr %22, align 8, !dbg !529
  %24 = or i32 %23, 1, !dbg !529
  store i32 %24, ptr %22, align 8, !dbg !529
  %25 = load ptr, ptr %2, align 8, !dbg !530
  %26 = call zeroext i1 @cache_pruner_job(ptr noundef %25), !dbg !531
  %27 = load ptr, ptr %2, align 8, !dbg !532
  %28 = getelementptr inbounds %struct.cache_t, ptr %27, i32 0, i32 0, !dbg !533
  %29 = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 1, !dbg !534
  %30 = call i32 @pthread_rwlock_destroy(ptr noundef %29) #9, !dbg !535
  %31 = load ptr, ptr %2, align 8, !dbg !536
  %32 = getelementptr inbounds %struct.cache_t, ptr %31, i32 0, i32 1, !dbg !537
  %33 = getelementptr inbounds %struct.anon.0, ptr %32, i32 0, i32 1, !dbg !538
  %34 = call i32 @pthread_rwlock_destroy(ptr noundef %33) #9, !dbg !539
  %35 = load ptr, ptr %2, align 8, !dbg !540
  %36 = getelementptr inbounds %struct.cache_t, ptr %35, i32 0, i32 0, !dbg !541
  %37 = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 0, !dbg !542
  %38 = load ptr, ptr %37, align 8, !dbg !542
  call void @hash_free(ptr noundef %38), !dbg !543
  %39 = load ptr, ptr %2, align 8, !dbg !544
  call void @free(ptr noundef %39) #9, !dbg !545
  ret void, !dbg !546
}

declare void @lwan_status_debug_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #4

declare void @lwan_job_del(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @cache_get_and_ref_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !547 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca %struct.timespec, align 8
  store ptr %0, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !551, metadata !DIExpression()), !dbg !552
  store ptr %1, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !553, metadata !DIExpression()), !dbg !554
  store ptr %2, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !555, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata ptr %13, metadata !557, metadata !DIExpression()), !dbg !558
  %15 = load ptr, ptr %10, align 8, !dbg !559
  %16 = icmp ne ptr %15, null, !dbg !559
  br i1 %16, label %17, label %18, !dbg !562

17:                                               ; preds = %3
  br label %19, !dbg !562

18:                                               ; preds = %3
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 175, ptr noundef @__PRETTY_FUNCTION__.cache_get_and_ref_entry) #7, !dbg !559
  unreachable, !dbg !559

19:                                               ; preds = %17
  %20 = load ptr, ptr %12, align 8, !dbg !563
  %21 = icmp ne ptr %20, null, !dbg !563
  br i1 %21, label %22, label %23, !dbg !566

22:                                               ; preds = %19
  br label %24, !dbg !566

23:                                               ; preds = %19
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 176, ptr noundef @__PRETTY_FUNCTION__.cache_get_and_ref_entry) #7, !dbg !563
  unreachable, !dbg !563

24:                                               ; preds = %22
  %25 = load ptr, ptr %11, align 8, !dbg !567
  %26 = icmp ne ptr %25, null, !dbg !567
  br i1 %26, label %27, label %28, !dbg !570

27:                                               ; preds = %24
  br label %29, !dbg !570

28:                                               ; preds = %24
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 177, ptr noundef @__PRETTY_FUNCTION__.cache_get_and_ref_entry) #7, !dbg !567
  unreachable, !dbg !567

29:                                               ; preds = %27
  %30 = load ptr, ptr %12, align 8, !dbg !571
  store i32 0, ptr %30, align 4, !dbg !572
  %31 = load ptr, ptr %10, align 8, !dbg !573
  %32 = getelementptr inbounds %struct.cache_t, ptr %31, i32 0, i32 0, !dbg !573
  %33 = getelementptr inbounds %struct.anon, ptr %32, i32 0, i32 1, !dbg !573
  %34 = call i32 @pthread_rwlock_tryrdlock(ptr noundef %33) #9, !dbg !573
  %35 = icmp eq i32 %34, 16, !dbg !573
  %36 = zext i1 %35 to i32, !dbg !573
  %37 = sext i32 %36 to i64, !dbg !573
  %38 = icmp ne i64 %37, 0, !dbg !573
  br i1 %38, label %39, label %41, !dbg !575

39:                                               ; preds = %29
  %40 = load ptr, ptr %12, align 8, !dbg !576
  store i32 11, ptr %40, align 4, !dbg !578
  store ptr null, ptr %9, align 8, !dbg !579
  br label %182, !dbg !579

41:                                               ; preds = %29
  %42 = load ptr, ptr %10, align 8, !dbg !580
  %43 = getelementptr inbounds %struct.cache_t, ptr %42, i32 0, i32 0, !dbg !581
  %44 = getelementptr inbounds %struct.anon, ptr %43, i32 0, i32 0, !dbg !582
  %45 = load ptr, ptr %44, align 8, !dbg !582
  %46 = load ptr, ptr %11, align 8, !dbg !583
  %47 = call ptr @hash_find(ptr noundef %45, ptr noundef %46), !dbg !584
  store ptr %47, ptr %13, align 8, !dbg !585
  %48 = load ptr, ptr %13, align 8, !dbg !586
  %49 = icmp ne ptr %48, null, !dbg !586
  %50 = xor i1 %49, true, !dbg !586
  %51 = xor i1 %50, true, !dbg !586
  %52 = zext i1 %51 to i32, !dbg !586
  %53 = sext i32 %52 to i64, !dbg !586
  %54 = icmp ne i64 %53, 0, !dbg !586
  br i1 %54, label %55, label %70, !dbg !588

55:                                               ; preds = %41
  %56 = load ptr, ptr %13, align 8, !dbg !589
  %57 = getelementptr inbounds %struct.cache_entry_t, ptr %56, i32 0, i32 2, !dbg !589
  %58 = atomicrmw add ptr %57, i32 1 seq_cst, align 4, !dbg !589
  %59 = add i32 %58, 1, !dbg !589
  %60 = load ptr, ptr %10, align 8, !dbg !591
  %61 = getelementptr inbounds %struct.cache_t, ptr %60, i32 0, i32 0, !dbg !592
  %62 = getelementptr inbounds %struct.anon, ptr %61, i32 0, i32 1, !dbg !593
  %63 = call i32 @pthread_rwlock_unlock(ptr noundef %62) #9, !dbg !594
  %64 = load ptr, ptr %10, align 8, !dbg !595
  %65 = getelementptr inbounds %struct.cache_t, ptr %64, i32 0, i32 5, !dbg !595
  %66 = getelementptr inbounds %struct.anon.3, ptr %65, i32 0, i32 0, !dbg !595
  %67 = atomicrmw add ptr %66, i32 1 seq_cst, align 4, !dbg !595
  %68 = add i32 %67, 1, !dbg !595
  %69 = load ptr, ptr %13, align 8, !dbg !596
  store ptr %69, ptr %9, align 8, !dbg !597
  br label %182, !dbg !597

70:                                               ; preds = %41
  %71 = load ptr, ptr %10, align 8, !dbg !598
  %72 = getelementptr inbounds %struct.cache_t, ptr %71, i32 0, i32 0, !dbg !599
  %73 = getelementptr inbounds %struct.anon, ptr %72, i32 0, i32 1, !dbg !600
  %74 = call i32 @pthread_rwlock_unlock(ptr noundef %73) #9, !dbg !601
  %75 = load ptr, ptr %10, align 8, !dbg !602
  %76 = getelementptr inbounds %struct.cache_t, ptr %75, i32 0, i32 5, !dbg !602
  %77 = getelementptr inbounds %struct.anon.3, ptr %76, i32 0, i32 1, !dbg !602
  %78 = atomicrmw add ptr %77, i32 1 seq_cst, align 4, !dbg !602
  %79 = add i32 %78, 1, !dbg !602
  %80 = load ptr, ptr %10, align 8, !dbg !603
  %81 = getelementptr inbounds %struct.cache_t, ptr %80, i32 0, i32 2, !dbg !604
  %82 = getelementptr inbounds %struct.anon.1, ptr %81, i32 0, i32 0, !dbg !605
  %83 = load ptr, ptr %82, align 8, !dbg !605
  %84 = load ptr, ptr %11, align 8, !dbg !606
  %85 = load ptr, ptr %10, align 8, !dbg !607
  %86 = getelementptr inbounds %struct.cache_t, ptr %85, i32 0, i32 2, !dbg !608
  %87 = getelementptr inbounds %struct.anon.1, ptr %86, i32 0, i32 2, !dbg !609
  %88 = load ptr, ptr %87, align 8, !dbg !609
  %89 = call ptr %83(ptr noundef %84, ptr noundef %88), !dbg !603
  store ptr %89, ptr %13, align 8, !dbg !610
  %90 = load ptr, ptr %13, align 8, !dbg !611
  %91 = icmp ne ptr %90, null, !dbg !611
  br i1 %91, label %93, label %92, !dbg !613

92:                                               ; preds = %70
  store ptr null, ptr %9, align 8, !dbg !614
  br label %182, !dbg !614

93:                                               ; preds = %70
  %94 = load ptr, ptr %13, align 8, !dbg !615
  call void @llvm.memset.p0.i64(ptr align 8 %94, i8 0, i64 40, i1 false), !dbg !616
  %95 = load ptr, ptr %11, align 8, !dbg !617
  %96 = call noalias ptr @strdup(ptr noundef %95) #9, !dbg !618
  %97 = load ptr, ptr %13, align 8, !dbg !619
  %98 = getelementptr inbounds %struct.cache_entry_t, ptr %97, i32 0, i32 1, !dbg !620
  store ptr %96, ptr %98, align 8, !dbg !621
  %99 = load ptr, ptr %13, align 8, !dbg !622
  %100 = getelementptr inbounds %struct.cache_entry_t, ptr %99, i32 0, i32 2, !dbg !623
  store i32 1, ptr %100, align 8, !dbg !624
  %101 = load ptr, ptr %10, align 8, !dbg !625
  %102 = getelementptr inbounds %struct.cache_t, ptr %101, i32 0, i32 0, !dbg !627
  %103 = getelementptr inbounds %struct.anon, ptr %102, i32 0, i32 1, !dbg !628
  %104 = call i32 @pthread_rwlock_trywrlock(ptr noundef %103) #9, !dbg !629
  %105 = icmp eq i32 %104, 16, !dbg !630
  br i1 %105, label %106, label %111, !dbg !631

106:                                              ; preds = %93
  %107 = load ptr, ptr %13, align 8, !dbg !632
  store ptr %107, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !634, metadata !DIExpression()), !dbg !638
  %108 = load ptr, ptr %6, align 8, !dbg !640
  %109 = getelementptr inbounds %struct.cache_entry_t, ptr %108, i32 0, i32 3, !dbg !641
  store i32 2, ptr %109, align 4, !dbg !642
  %110 = load ptr, ptr %6, align 8, !dbg !643
  store ptr %110, ptr %9, align 8, !dbg !644
  br label %182, !dbg !644

111:                                              ; preds = %93
  %112 = load ptr, ptr %10, align 8, !dbg !645
  %113 = getelementptr inbounds %struct.cache_t, ptr %112, i32 0, i32 0, !dbg !647
  %114 = getelementptr inbounds %struct.anon, ptr %113, i32 0, i32 0, !dbg !648
  %115 = load ptr, ptr %114, align 8, !dbg !648
  %116 = load ptr, ptr %13, align 8, !dbg !649
  %117 = getelementptr inbounds %struct.cache_entry_t, ptr %116, i32 0, i32 1, !dbg !650
  %118 = load ptr, ptr %117, align 8, !dbg !650
  %119 = load ptr, ptr %13, align 8, !dbg !651
  %120 = call i32 @hash_add_unique(ptr noundef %115, ptr noundef %118, ptr noundef %119), !dbg !652
  %121 = icmp ne i32 %120, 0, !dbg !652
  br i1 %121, label %171, label %122, !dbg !653

122:                                              ; preds = %111
  call void @llvm.dbg.declare(metadata ptr %14, metadata !654, metadata !DIExpression()), !dbg !656
  %123 = load ptr, ptr %10, align 8, !dbg !657
  store ptr %123, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !411, metadata !DIExpression()), !dbg !658
  store ptr %14, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !418, metadata !DIExpression()), !dbg !660
  %124 = load ptr, ptr %4, align 8, !dbg !661
  %125 = getelementptr inbounds %struct.cache_t, ptr %124, i32 0, i32 3, !dbg !661
  %126 = getelementptr inbounds %struct.anon.2, ptr %125, i32 0, i32 1, !dbg !661
  %127 = load i32, ptr %126, align 8, !dbg !661
  %128 = load ptr, ptr %5, align 8, !dbg !661
  %129 = call i32 @clock_gettime(i32 noundef %127, ptr noundef %128) #9, !dbg !661
  %130 = icmp slt i32 %129, 0, !dbg !661
  %131 = zext i1 %130 to i32, !dbg !661
  %132 = sext i32 %131 to i64, !dbg !661
  br i1 %130, label %133, label %134, !dbg !662

133:                                              ; preds = %122
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str.1, i32 noundef 94, ptr noundef @__FUNCTION__.clock_monotonic_gettime, ptr noundef @.str.9) #9, !dbg !663
  br label %134, !dbg !663

134:                                              ; preds = %122, %133
  %135 = getelementptr inbounds %struct.timespec, ptr %14, i32 0, i32 0, !dbg !664
  %136 = load i64, ptr %135, align 8, !dbg !664
  %137 = load ptr, ptr %10, align 8, !dbg !665
  %138 = getelementptr inbounds %struct.cache_t, ptr %137, i32 0, i32 3, !dbg !666
  %139 = getelementptr inbounds %struct.anon.2, ptr %138, i32 0, i32 0, !dbg !667
  %140 = load i64, ptr %139, align 8, !dbg !667
  %141 = add nsw i64 %136, %140, !dbg !668
  %142 = load ptr, ptr %13, align 8, !dbg !669
  %143 = getelementptr inbounds %struct.cache_entry_t, ptr %142, i32 0, i32 4, !dbg !670
  store i64 %141, ptr %143, align 8, !dbg !671
  %144 = load ptr, ptr %10, align 8, !dbg !672
  %145 = getelementptr inbounds %struct.cache_t, ptr %144, i32 0, i32 1, !dbg !672
  %146 = getelementptr inbounds %struct.anon.0, ptr %145, i32 0, i32 1, !dbg !672
  %147 = call i32 @pthread_rwlock_wrlock(ptr noundef %146) #9, !dbg !672
  %148 = icmp ne i32 %147, 0, !dbg !672
  %149 = xor i1 %148, true, !dbg !672
  %150 = xor i1 %149, true, !dbg !672
  %151 = xor i1 %150, true, !dbg !672
  %152 = zext i1 %151 to i32, !dbg !672
  %153 = sext i32 %152 to i64, !dbg !672
  %154 = icmp ne i64 %153, 0, !dbg !672
  br i1 %154, label %155, label %165, !dbg !674

155:                                              ; preds = %134
  %156 = load ptr, ptr %10, align 8, !dbg !675
  %157 = getelementptr inbounds %struct.cache_t, ptr %156, i32 0, i32 1, !dbg !677
  %158 = getelementptr inbounds %struct.anon.0, ptr %157, i32 0, i32 0, !dbg !678
  %159 = load ptr, ptr %13, align 8, !dbg !679
  %160 = getelementptr inbounds %struct.cache_entry_t, ptr %159, i32 0, i32 0, !dbg !680
  call void @list_add_tail(ptr noundef %158, ptr noundef %160), !dbg !681
  %161 = load ptr, ptr %10, align 8, !dbg !682
  %162 = getelementptr inbounds %struct.cache_t, ptr %161, i32 0, i32 1, !dbg !683
  %163 = getelementptr inbounds %struct.anon.0, ptr %162, i32 0, i32 1, !dbg !684
  %164 = call i32 @pthread_rwlock_unlock(ptr noundef %163) #9, !dbg !685
  br label %170, !dbg !686

165:                                              ; preds = %134
  %166 = load ptr, ptr %13, align 8, !dbg !687
  store ptr %166, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !634, metadata !DIExpression()), !dbg !689
  %167 = load ptr, ptr %7, align 8, !dbg !691
  %168 = getelementptr inbounds %struct.cache_entry_t, ptr %167, i32 0, i32 3, !dbg !692
  store i32 2, ptr %168, align 4, !dbg !693
  %169 = load ptr, ptr %7, align 8, !dbg !694
  store ptr %169, ptr %9, align 8, !dbg !695
  br label %182, !dbg !695

170:                                              ; preds = %155
  br label %176, !dbg !696

171:                                              ; preds = %111
  %172 = load ptr, ptr %13, align 8, !dbg !697
  store ptr %172, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !634, metadata !DIExpression()), !dbg !699
  %173 = load ptr, ptr %8, align 8, !dbg !701
  %174 = getelementptr inbounds %struct.cache_entry_t, ptr %173, i32 0, i32 3, !dbg !702
  store i32 2, ptr %174, align 4, !dbg !703
  %175 = load ptr, ptr %8, align 8, !dbg !704
  br label %176

176:                                              ; preds = %171, %170
  %177 = load ptr, ptr %10, align 8, !dbg !705
  %178 = getelementptr inbounds %struct.cache_t, ptr %177, i32 0, i32 0, !dbg !706
  %179 = getelementptr inbounds %struct.anon, ptr %178, i32 0, i32 1, !dbg !707
  %180 = call i32 @pthread_rwlock_unlock(ptr noundef %179) #9, !dbg !708
  %181 = load ptr, ptr %13, align 8, !dbg !709
  store ptr %181, ptr %9, align 8, !dbg !710
  br label %182, !dbg !710

182:                                              ; preds = %176, %165, %106, %92, %55, %39
  %183 = load ptr, ptr %9, align 8, !dbg !711
  ret ptr %183, !dbg !711
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_tryrdlock(ptr noundef) #5

declare ptr @hash_find(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #5

; Function Attrs: nounwind
declare i32 @pthread_rwlock_trywrlock(ptr noundef) #5

declare i32 @hash_add_unique(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_add_tail(ptr noundef %0, ptr noundef %1) #0 !dbg !712 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !715, metadata !DIExpression()), !dbg !716
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !717, metadata !DIExpression()), !dbg !718
  %5 = load ptr, ptr %3, align 8, !dbg !719
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 0, !dbg !720
  %7 = load ptr, ptr %4, align 8, !dbg !721
  %8 = getelementptr inbounds %struct.list_node, ptr %7, i32 0, i32 0, !dbg !722
  store ptr %6, ptr %8, align 8, !dbg !723
  %9 = load ptr, ptr %3, align 8, !dbg !724
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 0, !dbg !725
  %11 = getelementptr inbounds %struct.list_node, ptr %10, i32 0, i32 1, !dbg !726
  %12 = load ptr, ptr %11, align 8, !dbg !726
  %13 = load ptr, ptr %4, align 8, !dbg !727
  %14 = getelementptr inbounds %struct.list_node, ptr %13, i32 0, i32 1, !dbg !728
  store ptr %12, ptr %14, align 8, !dbg !729
  %15 = load ptr, ptr %4, align 8, !dbg !730
  %16 = load ptr, ptr %3, align 8, !dbg !731
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 0, !dbg !732
  %18 = getelementptr inbounds %struct.list_node, ptr %17, i32 0, i32 1, !dbg !733
  %19 = load ptr, ptr %18, align 8, !dbg !733
  %20 = getelementptr inbounds %struct.list_node, ptr %19, i32 0, i32 0, !dbg !734
  store ptr %15, ptr %20, align 8, !dbg !735
  %21 = load ptr, ptr %4, align 8, !dbg !736
  %22 = load ptr, ptr %3, align 8, !dbg !737
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 0, !dbg !738
  %24 = getelementptr inbounds %struct.list_node, ptr %23, i32 0, i32 1, !dbg !739
  store ptr %21, ptr %24, align 8, !dbg !740
  %25 = load ptr, ptr %3, align 8, !dbg !741
  ret void, !dbg !742
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_entry_unref(ptr noundef %0, ptr noundef %1) #0 !dbg !743 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !746, metadata !DIExpression()), !dbg !747
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !748, metadata !DIExpression()), !dbg !749
  %5 = load ptr, ptr %4, align 8, !dbg !750
  %6 = icmp ne ptr %5, null, !dbg !750
  br i1 %6, label %7, label %8, !dbg !753

7:                                                ; preds = %2
  br label %9, !dbg !753

8:                                                ; preds = %2
  call void @__assert_fail(ptr noundef @.str.8, ptr noundef @.str.1, i32 noundef 251, ptr noundef @__PRETTY_FUNCTION__.cache_entry_unref) #7, !dbg !750
  unreachable, !dbg !750

9:                                                ; preds = %7
  %10 = load ptr, ptr %4, align 8, !dbg !754
  %11 = getelementptr inbounds %struct.cache_entry_t, ptr %10, i32 0, i32 3, !dbg !756
  %12 = load i32, ptr %11, align 4, !dbg !756
  %13 = and i32 %12, 2, !dbg !757
  %14 = icmp ne i32 %13, 0, !dbg !757
  br i1 %14, label %15, label %19, !dbg !758

15:                                               ; preds = %9
  %16 = load ptr, ptr %4, align 8, !dbg !759
  %17 = getelementptr inbounds %struct.cache_entry_t, ptr %16, i32 0, i32 1, !dbg !761
  %18 = load ptr, ptr %17, align 8, !dbg !761
  call void @free(ptr noundef %18) #9, !dbg !762
  br label %33, !dbg !763

19:                                               ; preds = %9
  %20 = load ptr, ptr %4, align 8, !dbg !764
  %21 = getelementptr inbounds %struct.cache_entry_t, ptr %20, i32 0, i32 2, !dbg !764
  %22 = atomicrmw add ptr %21, i32 -1 seq_cst, align 4, !dbg !764
  %23 = add i32 %22, -1, !dbg !764
  %24 = icmp ne i32 %23, 0, !dbg !764
  br i1 %24, label %25, label %26, !dbg !766

25:                                               ; preds = %19
  br label %43, !dbg !767

26:                                               ; preds = %19
  %27 = load ptr, ptr %4, align 8, !dbg !768
  %28 = getelementptr inbounds %struct.cache_entry_t, ptr %27, i32 0, i32 3, !dbg !770
  %29 = load i32, ptr %28, align 4, !dbg !770
  %30 = and i32 %29, 1, !dbg !771
  %31 = icmp ne i32 %30, 0, !dbg !771
  br i1 %31, label %32, label %43, !dbg !772

32:                                               ; preds = %26
  br label %33, !dbg !773

33:                                               ; preds = %32, %15
  call void @llvm.dbg.label(metadata !774), !dbg !776
  %34 = load ptr, ptr %3, align 8, !dbg !777
  %35 = getelementptr inbounds %struct.cache_t, ptr %34, i32 0, i32 2, !dbg !778
  %36 = getelementptr inbounds %struct.anon.1, ptr %35, i32 0, i32 1, !dbg !779
  %37 = load ptr, ptr %36, align 8, !dbg !779
  %38 = load ptr, ptr %4, align 8, !dbg !780
  %39 = load ptr, ptr %3, align 8, !dbg !781
  %40 = getelementptr inbounds %struct.cache_t, ptr %39, i32 0, i32 2, !dbg !782
  %41 = getelementptr inbounds %struct.anon.1, ptr %40, i32 0, i32 2, !dbg !783
  %42 = load ptr, ptr %41, align 8, !dbg !783
  call void %37(ptr noundef %38, ptr noundef %42), !dbg !777
  br label %43, !dbg !784

43:                                               ; preds = %25, %33, %26
  ret void, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @cache_coro_get_and_ref_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !786 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !793, metadata !DIExpression()), !dbg !794
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !795, metadata !DIExpression()), !dbg !796
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !797, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.declare(metadata ptr %8, metadata !799, metadata !DIExpression()), !dbg !801
  store i32 5, ptr %8, align 4, !dbg !801
  br label %11, !dbg !802

11:                                               ; preds = %38, %3
  %12 = load i32, ptr %8, align 4, !dbg !803
  %13 = icmp ne i32 %12, 0, !dbg !805
  br i1 %13, label %14, label %41, !dbg !805

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %9, metadata !806, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.declare(metadata ptr %10, metadata !809, metadata !DIExpression()), !dbg !810
  %15 = load ptr, ptr %5, align 8, !dbg !811
  %16 = load ptr, ptr %7, align 8, !dbg !812
  %17 = call ptr @cache_get_and_ref_entry(ptr noundef %15, ptr noundef %16, ptr noundef %9), !dbg !813
  store ptr %17, ptr %10, align 8, !dbg !810
  %18 = load ptr, ptr %10, align 8, !dbg !814
  %19 = icmp ne ptr %18, null, !dbg !814
  %20 = xor i1 %19, true, !dbg !814
  %21 = xor i1 %20, true, !dbg !814
  %22 = zext i1 %21 to i32, !dbg !814
  %23 = sext i32 %22 to i64, !dbg !814
  %24 = icmp ne i64 %23, 0, !dbg !814
  br i1 %24, label %25, label %30, !dbg !816

25:                                               ; preds = %14
  %26 = load ptr, ptr %6, align 8, !dbg !817
  %27 = load ptr, ptr %5, align 8, !dbg !819
  %28 = load ptr, ptr %10, align 8, !dbg !820
  call void @coro_defer2(ptr noundef %26, ptr noundef @cache_entry_unref, ptr noundef %27, ptr noundef %28), !dbg !821
  %29 = load ptr, ptr %10, align 8, !dbg !822
  store ptr %29, ptr %4, align 8, !dbg !823
  br label %42, !dbg !823

30:                                               ; preds = %14
  %31 = load i32, ptr %9, align 4, !dbg !824
  %32 = icmp eq i32 %31, 11, !dbg !826
  br i1 %32, label %33, label %36, !dbg !827

33:                                               ; preds = %30
  %34 = load ptr, ptr %6, align 8, !dbg !828
  %35 = call i32 @coro_yield(ptr noundef %34, i32 noundef 0), !dbg !830
  br label %37, !dbg !831

36:                                               ; preds = %30
  br label %41, !dbg !832

37:                                               ; preds = %33
  br label %38, !dbg !834

38:                                               ; preds = %37
  %39 = load i32, ptr %8, align 4, !dbg !835
  %40 = add nsw i32 %39, -1, !dbg !835
  store i32 %40, ptr %8, align 4, !dbg !835
  br label %11, !dbg !836, !llvm.loop !837

41:                                               ; preds = %36, %11
  store ptr null, ptr %4, align 8, !dbg !839
  br label %42, !dbg !839

42:                                               ; preds = %41, %25
  %43 = load ptr, ptr %4, align 8, !dbg !840
  ret ptr %43, !dbg !840
}

declare void @coro_defer2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @coro_yield(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) #5

declare void @lwan_status_perror_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @list_empty(ptr noundef %0) #0 !dbg !841 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !846, metadata !DIExpression()), !dbg !847
  %3 = load ptr, ptr %2, align 8, !dbg !848
  %4 = load ptr, ptr %2, align 8, !dbg !849
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !850
  %6 = getelementptr inbounds %struct.list_node, ptr %5, i32 0, i32 0, !dbg !851
  %7 = load ptr, ptr %6, align 8, !dbg !851
  %8 = load ptr, ptr %2, align 8, !dbg !852
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 0, !dbg !853
  %10 = icmp eq ptr %7, %9, !dbg !854
  ret i1 %10, !dbg !855
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_append_list(ptr noundef %0, ptr noundef %1) #0 !dbg !856 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !859, metadata !DIExpression()), !dbg !860
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !861, metadata !DIExpression()), !dbg !862
  call void @llvm.dbg.declare(metadata ptr %5, metadata !863, metadata !DIExpression()), !dbg !864
  %7 = load ptr, ptr %4, align 8, !dbg !865
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 0, !dbg !866
  %9 = getelementptr inbounds %struct.list_node, ptr %8, i32 0, i32 1, !dbg !867
  %10 = load ptr, ptr %9, align 8, !dbg !867
  store ptr %10, ptr %5, align 8, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %6, metadata !868, metadata !DIExpression()), !dbg !869
  %11 = load ptr, ptr %3, align 8, !dbg !870
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 0, !dbg !871
  %13 = getelementptr inbounds %struct.list_node, ptr %12, i32 0, i32 1, !dbg !872
  %14 = load ptr, ptr %13, align 8, !dbg !872
  store ptr %14, ptr %6, align 8, !dbg !869
  %15 = load ptr, ptr %5, align 8, !dbg !873
  %16 = load ptr, ptr %3, align 8, !dbg !874
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 0, !dbg !875
  %18 = getelementptr inbounds %struct.list_node, ptr %17, i32 0, i32 1, !dbg !876
  store ptr %15, ptr %18, align 8, !dbg !877
  %19 = load ptr, ptr %3, align 8, !dbg !878
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 0, !dbg !879
  %21 = load ptr, ptr %5, align 8, !dbg !880
  %22 = getelementptr inbounds %struct.list_node, ptr %21, i32 0, i32 0, !dbg !881
  store ptr %20, ptr %22, align 8, !dbg !882
  %23 = load ptr, ptr %4, align 8, !dbg !883
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 0, !dbg !884
  %25 = load ptr, ptr %6, align 8, !dbg !885
  %26 = getelementptr inbounds %struct.list_node, ptr %25, i32 0, i32 0, !dbg !886
  store ptr %24, ptr %26, align 8, !dbg !887
  %27 = load ptr, ptr %6, align 8, !dbg !888
  %28 = load ptr, ptr %4, align 8, !dbg !889
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 0, !dbg !890
  %30 = getelementptr inbounds %struct.list_node, ptr %29, i32 0, i32 1, !dbg !891
  store ptr %27, ptr %30, align 8, !dbg !892
  %31 = load ptr, ptr %4, align 8, !dbg !893
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 0, !dbg !894
  call void @list_del(ptr noundef %32), !dbg !895
  %33 = load ptr, ptr %4, align 8, !dbg !896
  call void @list_head_init(ptr noundef %33), !dbg !897
  ret void, !dbg !898
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @list_node_to_off_(ptr noundef %0, i64 noundef %1) #0 !dbg !899 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !904, metadata !DIExpression()), !dbg !905
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !906, metadata !DIExpression()), !dbg !907
  %5 = load ptr, ptr %3, align 8, !dbg !908
  %6 = load i64, ptr %4, align 8, !dbg !909
  %7 = sub i64 0, %6, !dbg !910
  %8 = getelementptr inbounds i8, ptr %5, i64 %7, !dbg !910
  ret ptr %8, !dbg !911
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @list_node_from_off_(ptr noundef %0, i64 noundef %1) #0 !dbg !912 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !915, metadata !DIExpression()), !dbg !916
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !917, metadata !DIExpression()), !dbg !918
  %5 = load ptr, ptr %3, align 8, !dbg !919
  %6 = load i64, ptr %4, align 8, !dbg !920
  %7 = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !921
  ret ptr %7, !dbg !922
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_del(ptr noundef %0) #0 !dbg !923 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !926, metadata !DIExpression()), !dbg !927
  %3 = load ptr, ptr %2, align 8, !dbg !928
  %4 = load ptr, ptr %2, align 8, !dbg !929
  %5 = getelementptr inbounds %struct.list_node, ptr %4, i32 0, i32 1, !dbg !930
  %6 = load ptr, ptr %5, align 8, !dbg !930
  %7 = load ptr, ptr %2, align 8, !dbg !931
  %8 = getelementptr inbounds %struct.list_node, ptr %7, i32 0, i32 0, !dbg !932
  %9 = load ptr, ptr %8, align 8, !dbg !932
  %10 = getelementptr inbounds %struct.list_node, ptr %9, i32 0, i32 1, !dbg !933
  store ptr %6, ptr %10, align 8, !dbg !934
  %11 = load ptr, ptr %2, align 8, !dbg !935
  %12 = getelementptr inbounds %struct.list_node, ptr %11, i32 0, i32 0, !dbg !936
  %13 = load ptr, ptr %12, align 8, !dbg !936
  %14 = load ptr, ptr %2, align 8, !dbg !937
  %15 = getelementptr inbounds %struct.list_node, ptr %14, i32 0, i32 1, !dbg !938
  %16 = load ptr, ptr %15, align 8, !dbg !938
  %17 = getelementptr inbounds %struct.list_node, ptr %16, i32 0, i32 0, !dbg !939
  store ptr %13, ptr %17, align 8, !dbg !940
  ret void, !dbg !941
}

declare i32 @hash_del(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_prepend_list(ptr noundef %0, ptr noundef %1) #0 !dbg !942 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !943, metadata !DIExpression()), !dbg !944
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !945, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.declare(metadata ptr %5, metadata !947, metadata !DIExpression()), !dbg !948
  %7 = load ptr, ptr %4, align 8, !dbg !949
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 0, !dbg !950
  %9 = getelementptr inbounds %struct.list_node, ptr %8, i32 0, i32 1, !dbg !951
  %10 = load ptr, ptr %9, align 8, !dbg !951
  store ptr %10, ptr %5, align 8, !dbg !948
  call void @llvm.dbg.declare(metadata ptr %6, metadata !952, metadata !DIExpression()), !dbg !953
  %11 = load ptr, ptr %3, align 8, !dbg !954
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 0, !dbg !955
  %13 = getelementptr inbounds %struct.list_node, ptr %12, i32 0, i32 0, !dbg !956
  %14 = load ptr, ptr %13, align 8, !dbg !956
  store ptr %14, ptr %6, align 8, !dbg !953
  %15 = load ptr, ptr %4, align 8, !dbg !957
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !958
  %17 = load ptr, ptr %3, align 8, !dbg !959
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 0, !dbg !960
  %19 = getelementptr inbounds %struct.list_node, ptr %18, i32 0, i32 0, !dbg !961
  store ptr %16, ptr %19, align 8, !dbg !962
  %20 = load ptr, ptr %3, align 8, !dbg !963
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 0, !dbg !964
  %22 = load ptr, ptr %4, align 8, !dbg !965
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 0, !dbg !966
  %24 = getelementptr inbounds %struct.list_node, ptr %23, i32 0, i32 1, !dbg !967
  store ptr %21, ptr %24, align 8, !dbg !968
  %25 = load ptr, ptr %5, align 8, !dbg !969
  %26 = load ptr, ptr %6, align 8, !dbg !970
  %27 = getelementptr inbounds %struct.list_node, ptr %26, i32 0, i32 1, !dbg !971
  store ptr %25, ptr %27, align 8, !dbg !972
  %28 = load ptr, ptr %6, align 8, !dbg !973
  %29 = load ptr, ptr %5, align 8, !dbg !974
  %30 = getelementptr inbounds %struct.list_node, ptr %29, i32 0, i32 0, !dbg !975
  store ptr %28, ptr %30, align 8, !dbg !976
  %31 = load ptr, ptr %4, align 8, !dbg !977
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 0, !dbg !978
  call void @list_del(ptr noundef %32), !dbg !979
  %33 = load ptr, ptr %4, align 8, !dbg !980
  call void @list_head_init(ptr noundef %33), !dbg !981
  ret void, !dbg !982
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!82}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "common/lwan-cache.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "f1aa9dd4cc8594b027bd5599ddc2fec4")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 35)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 704, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 88)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 17)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !20, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 6)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 296, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 37)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 112, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 14)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 46)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 680, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 85)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !27, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 4)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 251, type: !27, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 251, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 520, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 65)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 24)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !38)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 136, elements: !21)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 22)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 312, type: !77, isLocal: true, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C11, file: !83, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !84, retainedTypes: !98, globals: !110, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "/home/raj/lwan/common/lwan-cache.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "f1aa9dd4cc8594b027bd5599ddc2fec4")
!84 = !{!85, !91}
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 35, baseType: !86, size: 32, elements: !87)
!86 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!87 = !{!88, !89, !90}
!88 = !DIEnumerator(name: "FLOATING", value: 1)
!89 = !DIEnumerator(name: "TEMPORARY", value: 2)
!90 = !DIEnumerator(name: "SHUTTING_DOWN", value: 1)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 167, baseType: !93, size: 32, elements: !94)
!92 = !DIFile(filename: "common/lwan.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "56f65bbbfce1c5452d6905964ca2b84f")
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "CONN_CORO_ABORT", value: -1)
!96 = !DIEnumerator(name: "CONN_CORO_MAY_RESUME", value: 0)
!97 = !DIEnumerator(name: "CONN_CORO_FINISHED", value: 1)
!98 = !{!99, !103, !102, !109}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !102, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_node", file: !105, line: 191, size: 128, elements: !106)
!105 = !DIFile(filename: "common/list.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "c0dffb77b1bbbbb179ef8d69b9e1dd8c")
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !105, line: 193, baseType: !103, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !104, file: !105, line: 193, baseType: !103, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!110 = !{!0, !7, !12, !18, !23, !25, !30, !35, !40, !45, !50, !52, !57, !59, !64, !69, !72, !75, !80}
!111 = !{i32 7, !"Dwarf Version", i32 5}
!112 = !{i32 2, !"Debug Info Version", i32 3}
!113 = !{i32 1, !"wchar_size", i32 4}
!114 = !{i32 8, !"PIC Level", i32 2}
!115 = !{i32 7, !"PIE Level", i32 2}
!116 = !{i32 7, !"uwtable", i32 2}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 16.0.0"}
!119 = distinct !DISubprogram(name: "cache_create", scope: !2, file: !2, line: 97, type: !120, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !216)
!120 = !DISubroutineType(types: !121)
!121 = !{!122, !177, !196, !102, !190}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_t", file: !2, line: 44, size: 1536, elements: !124)
!124 = !{!125, !165, !173, !201, !209, !210}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !123, file: !2, line: 48, baseType: !126, size: 512)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !123, file: !2, line: 45, size: 512, elements: !127)
!127 = !{!128, !132}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !126, file: !2, line: 46, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash", file: !131, line: 6, flags: DIFlagFwdDecl)
!131 = !DIFile(filename: "common/hash.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a7f0d7c578de44c7172c81fd9e8cd22")
!132 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !126, file: !2, line: 47, baseType: !133, size: 448, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_rwlock_t", file: !134, line: 91, baseType: !135)
!134 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !134, line: 86, size: 448, elements: !136)
!136 = !{!137, !159, !163}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !135, file: !134, line: 88, baseType: !138, size: 448)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_rwlock_arch_t", file: !139, line: 23, size: 448, elements: !140)
!139 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h", directory: "", checksumkind: CSK_MD5, checksum: "2034038f4a99ff6cb7b9de3a3e8c2a8e")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !151, !156, !158}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__readers", scope: !138, file: !139, line: 25, baseType: !86, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__writers", scope: !138, file: !139, line: 26, baseType: !86, size: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__wrphase_futex", scope: !138, file: !139, line: 27, baseType: !86, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__writers_futex", scope: !138, file: !139, line: 28, baseType: !86, size: 32, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !138, file: !139, line: 29, baseType: !86, size: 32, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !138, file: !139, line: 30, baseType: !86, size: 32, offset: 160)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__cur_writer", scope: !138, file: !139, line: 32, baseType: !93, size: 32, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__shared", scope: !138, file: !139, line: 33, baseType: !93, size: 32, offset: 224)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__rwelision", scope: !138, file: !139, line: 34, baseType: !150, size: 8, offset: 256)
!150 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !138, file: !139, line: 39, baseType: !152, size: 56, offset: 264)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 56, elements: !154)
!153 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!154 = !{!155}
!155 = !DISubrange(count: 7)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !138, file: !139, line: 42, baseType: !157, size: 64, offset: 320)
!157 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__flags", scope: !138, file: !139, line: 45, baseType: !86, size: 32, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !135, file: !134, line: 89, baseType: !160, size: 448)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 56)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !135, file: !134, line: 90, baseType: !164, size: 64)
!164 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !123, file: !2, line: 53, baseType: !166, size: 576, offset: 512)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !123, file: !2, line: 50, size: 576, elements: !167)
!167 = !{!168, !172}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !166, file: !2, line: 51, baseType: !169, size: 128)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !105, line: 208, size: 128, elements: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !169, file: !105, line: 210, baseType: !104, size: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !166, file: !2, line: 52, baseType: !133, size: 448, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !123, file: !2, line: 59, baseType: !174, size: 192, offset: 1088)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !123, file: !2, line: 55, size: 192, elements: !175)
!175 = !{!176, !195, !200}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "create_entry", scope: !174, file: !2, line: 56, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "CreateEntryCallback", file: !178, line: 35, baseType: !179)
!178 = !DIFile(filename: "common/lwan-cache.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "f48e19cadb0735f737f22aa65af51f83")
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!182, !194, !102}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_entry_t", file: !178, line: 27, size: 320, elements: !184)
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !183, file: !178, line: 28, baseType: !104, size: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !183, file: !178, line: 29, baseType: !109, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !183, file: !178, line: 30, baseType: !86, size: 32, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !178, line: 31, baseType: !86, size: 32, offset: 224)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !183, file: !178, line: 32, baseType: !190, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !191, line: 10, baseType: !192)
!191 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !193, line: 160, baseType: !164)
!193 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_entry", scope: !174, file: !2, line: 57, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "DestroyEntryCallback", file: !178, line: 37, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !182, !102}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !174, file: !2, line: 58, baseType: !102, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "settings", scope: !123, file: !2, line: 64, baseType: !202, size: 128, offset: 1280)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !123, file: !2, line: 61, size: 128, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_live", scope: !202, file: !2, line: 62, baseType: !190, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "clock_id", scope: !202, file: !2, line: 63, baseType: !206, size: 32, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !207, line: 7, baseType: !208)
!207 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !193, line: 169, baseType: !93)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !2, line: 66, baseType: !86, size: 32, offset: 1408)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !123, file: !2, line: 73, baseType: !211, size: 96, offset: 1440)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !123, file: !2, line: 69, size: 96, elements: !212)
!212 = !{!213, !214, !215}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "hits", scope: !211, file: !2, line: 70, baseType: !86, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "misses", scope: !211, file: !2, line: 71, baseType: !86, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "evicted", scope: !211, file: !2, line: 72, baseType: !86, size: 32, offset: 64)
!216 = !{}
!217 = !DILocalVariable(name: "create_entry_cb", arg: 1, scope: !119, file: !2, line: 97, type: !177)
!218 = !DILocation(line: 97, column: 50, scope: !119)
!219 = !DILocalVariable(name: "destroy_entry_cb", arg: 2, scope: !119, file: !2, line: 98, type: !196)
!220 = !DILocation(line: 98, column: 51, scope: !119)
!221 = !DILocalVariable(name: "cb_context", arg: 3, scope: !119, file: !2, line: 99, type: !102)
!222 = !DILocation(line: 99, column: 36, scope: !119)
!223 = !DILocalVariable(name: "time_to_live", arg: 4, scope: !119, file: !2, line: 100, type: !190)
!224 = !DILocation(line: 100, column: 37, scope: !119)
!225 = !DILocalVariable(name: "cache", scope: !119, file: !2, line: 102, type: !122)
!226 = !DILocation(line: 102, column: 21, scope: !119)
!227 = !DILocation(line: 104, column: 5, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !2, line: 104, column: 5)
!229 = distinct !DILexicalBlock(scope: !119, file: !2, line: 104, column: 5)
!230 = !DILocation(line: 104, column: 5, scope: !229)
!231 = !DILocation(line: 105, column: 5, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !2, line: 105, column: 5)
!233 = distinct !DILexicalBlock(scope: !119, file: !2, line: 105, column: 5)
!234 = !DILocation(line: 105, column: 5, scope: !233)
!235 = !DILocation(line: 106, column: 5, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !2, line: 106, column: 5)
!237 = distinct !DILexicalBlock(scope: !119, file: !2, line: 106, column: 5)
!238 = !DILocation(line: 106, column: 5, scope: !237)
!239 = !DILocation(line: 108, column: 13, scope: !119)
!240 = !DILocation(line: 108, column: 11, scope: !119)
!241 = !DILocation(line: 109, column: 10, scope: !242)
!242 = distinct !DILexicalBlock(scope: !119, file: !2, line: 109, column: 9)
!243 = !DILocation(line: 109, column: 9, scope: !119)
!244 = !DILocation(line: 110, column: 9, scope: !242)
!245 = !DILocation(line: 112, column: 25, scope: !119)
!246 = !DILocation(line: 112, column: 5, scope: !119)
!247 = !DILocation(line: 112, column: 12, scope: !119)
!248 = !DILocation(line: 112, column: 17, scope: !119)
!249 = !DILocation(line: 112, column: 23, scope: !119)
!250 = !DILocation(line: 113, column: 10, scope: !251)
!251 = distinct !DILexicalBlock(scope: !119, file: !2, line: 113, column: 9)
!252 = !DILocation(line: 113, column: 17, scope: !251)
!253 = !DILocation(line: 113, column: 22, scope: !251)
!254 = !DILocation(line: 113, column: 9, scope: !119)
!255 = !DILocation(line: 114, column: 9, scope: !251)
!256 = !DILocation(line: 116, column: 30, scope: !257)
!257 = distinct !DILexicalBlock(scope: !119, file: !2, line: 116, column: 9)
!258 = !DILocation(line: 116, column: 37, scope: !257)
!259 = !DILocation(line: 116, column: 42, scope: !257)
!260 = !DILocation(line: 116, column: 9, scope: !257)
!261 = !DILocation(line: 116, column: 9, scope: !119)
!262 = !DILocation(line: 117, column: 9, scope: !257)
!263 = !DILocation(line: 118, column: 30, scope: !264)
!264 = distinct !DILexicalBlock(scope: !119, file: !2, line: 118, column: 9)
!265 = !DILocation(line: 118, column: 37, scope: !264)
!266 = !DILocation(line: 118, column: 43, scope: !264)
!267 = !DILocation(line: 118, column: 9, scope: !264)
!268 = !DILocation(line: 118, column: 9, scope: !119)
!269 = !DILocation(line: 119, column: 9, scope: !264)
!270 = !DILocation(line: 121, column: 30, scope: !119)
!271 = !DILocation(line: 121, column: 5, scope: !119)
!272 = !DILocation(line: 121, column: 12, scope: !119)
!273 = !DILocation(line: 121, column: 15, scope: !119)
!274 = !DILocation(line: 121, column: 28, scope: !119)
!275 = !DILocation(line: 122, column: 31, scope: !119)
!276 = !DILocation(line: 122, column: 5, scope: !119)
!277 = !DILocation(line: 122, column: 12, scope: !119)
!278 = !DILocation(line: 122, column: 15, scope: !119)
!279 = !DILocation(line: 122, column: 29, scope: !119)
!280 = !DILocation(line: 123, column: 25, scope: !119)
!281 = !DILocation(line: 123, column: 5, scope: !119)
!282 = !DILocation(line: 123, column: 12, scope: !119)
!283 = !DILocation(line: 123, column: 15, scope: !119)
!284 = !DILocation(line: 123, column: 23, scope: !119)
!285 = !DILocation(line: 125, column: 32, scope: !119)
!286 = !DILocation(line: 125, column: 5, scope: !119)
!287 = !DILocation(line: 125, column: 12, scope: !119)
!288 = !DILocation(line: 125, column: 21, scope: !119)
!289 = !DILocation(line: 125, column: 30, scope: !119)
!290 = !DILocation(line: 126, column: 36, scope: !119)
!291 = !DILocation(line: 126, column: 5, scope: !119)
!292 = !DILocation(line: 126, column: 12, scope: !119)
!293 = !DILocation(line: 126, column: 21, scope: !119)
!294 = !DILocation(line: 126, column: 34, scope: !119)
!295 = !DILocation(line: 128, column: 21, scope: !119)
!296 = !DILocation(line: 128, column: 28, scope: !119)
!297 = !DILocation(line: 128, column: 34, scope: !119)
!298 = !DILocation(line: 128, column: 5, scope: !119)
!299 = !DILocation(line: 130, column: 36, scope: !119)
!300 = !DILocation(line: 130, column: 5, scope: !119)
!301 = !DILocation(line: 132, column: 12, scope: !119)
!302 = !DILocation(line: 132, column: 5, scope: !119)
!303 = !DILabel(scope: !119, name: "error_no_queue_lock", file: !2, line: 134)
!304 = !DILocation(line: 134, column: 1, scope: !119)
!305 = !DILocation(line: 135, column: 29, scope: !119)
!306 = !DILocation(line: 135, column: 36, scope: !119)
!307 = !DILocation(line: 135, column: 41, scope: !119)
!308 = !DILocation(line: 135, column: 5, scope: !119)
!309 = !DILabel(scope: !119, name: "error_no_hash_lock", file: !2, line: 136)
!310 = !DILocation(line: 136, column: 1, scope: !119)
!311 = !DILocation(line: 137, column: 15, scope: !119)
!312 = !DILocation(line: 137, column: 22, scope: !119)
!313 = !DILocation(line: 137, column: 27, scope: !119)
!314 = !DILocation(line: 137, column: 5, scope: !119)
!315 = !DILabel(scope: !119, name: "error_no_hash", file: !2, line: 138)
!316 = !DILocation(line: 138, column: 1, scope: !119)
!317 = !DILocation(line: 139, column: 10, scope: !119)
!318 = !DILocation(line: 139, column: 5, scope: !119)
!319 = !DILocation(line: 141, column: 5, scope: !119)
!320 = !DILocation(line: 142, column: 1, scope: !119)
!321 = distinct !DISubprogram(name: "detect_fastest_monotonic_clock", scope: !2, file: !2, line: 79, type: !322, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !216)
!322 = !DISubroutineType(types: !323)
!323 = !{!206}
!324 = !DILocalVariable(name: "ts", scope: !321, file: !2, line: 82, type: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !326, line: 11, size: 128, elements: !327)
!326 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!327 = !{!328, !329}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !325, file: !326, line: 16, baseType: !192, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !325, file: !326, line: 21, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !193, line: 197, baseType: !164)
!331 = !DILocation(line: 82, column: 21, scope: !321)
!332 = !DILocation(line: 84, column: 10, scope: !333)
!333 = distinct !DILexicalBlock(scope: !321, file: !2, line: 84, column: 9)
!334 = !DILocation(line: 84, column: 9, scope: !321)
!335 = !DILocation(line: 85, column: 9, scope: !333)
!336 = !DILocation(line: 87, column: 5, scope: !321)
!337 = !DILocation(line: 88, column: 1, scope: !321)
!338 = distinct !DISubprogram(name: "list_head_init", scope: !105, file: !105, line: 309, type: !339, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !216)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!342 = !DILocalVariable(name: "h", arg: 1, scope: !338, file: !105, line: 309, type: !341)
!343 = !DILocation(line: 309, column: 53, scope: !338)
!344 = !DILocation(line: 311, column: 27, scope: !338)
!345 = !DILocation(line: 311, column: 30, scope: !338)
!346 = !DILocation(line: 311, column: 14, scope: !338)
!347 = !DILocation(line: 311, column: 17, scope: !338)
!348 = !DILocation(line: 311, column: 19, scope: !338)
!349 = !DILocation(line: 311, column: 24, scope: !338)
!350 = !DILocation(line: 311, column: 2, scope: !338)
!351 = !DILocation(line: 311, column: 5, scope: !338)
!352 = !DILocation(line: 311, column: 7, scope: !338)
!353 = !DILocation(line: 311, column: 12, scope: !338)
!354 = !DILocation(line: 312, column: 1, scope: !338)
!355 = distinct !DISubprogram(name: "cache_pruner_job", scope: !2, file: !2, line: 272, type: !356, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !216)
!356 = !DISubroutineType(types: !357)
!357 = !{!358, !102}
!358 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!359 = !DILocalVariable(name: "data", arg: 1, scope: !355, file: !2, line: 272, type: !102)
!360 = !DILocation(line: 272, column: 36, scope: !355)
!361 = !DILocalVariable(name: "cache", scope: !355, file: !2, line: 274, type: !122)
!362 = !DILocation(line: 274, column: 21, scope: !355)
!363 = !DILocation(line: 274, column: 29, scope: !355)
!364 = !DILocalVariable(name: "node", scope: !355, file: !2, line: 275, type: !182)
!365 = !DILocation(line: 275, column: 27, scope: !355)
!366 = !DILocalVariable(name: "next", scope: !355, file: !2, line: 275, type: !182)
!367 = !DILocation(line: 275, column: 34, scope: !355)
!368 = !DILocalVariable(name: "now", scope: !355, file: !2, line: 276, type: !325)
!369 = !DILocation(line: 276, column: 21, scope: !355)
!370 = !DILocalVariable(name: "shutting_down", scope: !355, file: !2, line: 277, type: !358)
!371 = !DILocation(line: 277, column: 10, scope: !355)
!372 = !DILocation(line: 277, column: 26, scope: !355)
!373 = !DILocation(line: 277, column: 33, scope: !355)
!374 = !DILocation(line: 277, column: 39, scope: !355)
!375 = !DILocalVariable(name: "evicted", scope: !355, file: !2, line: 278, type: !86)
!376 = !DILocation(line: 278, column: 14, scope: !355)
!377 = !DILocalVariable(name: "queue", scope: !355, file: !2, line: 279, type: !169)
!378 = !DILocation(line: 279, column: 22, scope: !355)
!379 = !DILocation(line: 281, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !355, file: !2, line: 281, column: 9)
!381 = !DILocation(line: 281, column: 9, scope: !355)
!382 = !DILocation(line: 282, column: 9, scope: !380)
!383 = !DILocation(line: 285, column: 21, scope: !384)
!384 = distinct !DILexicalBlock(scope: !355, file: !2, line: 285, column: 9)
!385 = !DILocation(line: 285, column: 28, scope: !384)
!386 = !DILocation(line: 285, column: 34, scope: !384)
!387 = !DILocation(line: 285, column: 9, scope: !384)
!388 = !DILocation(line: 285, column: 9, scope: !355)
!389 = !DILocation(line: 286, column: 13, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !2, line: 286, column: 13)
!391 = distinct !DILexicalBlock(scope: !384, file: !2, line: 285, column: 41)
!392 = !DILocation(line: 286, column: 13, scope: !391)
!393 = !DILocation(line: 287, column: 13, scope: !390)
!394 = !DILocation(line: 288, column: 9, scope: !391)
!395 = !DILocation(line: 293, column: 5, scope: !355)
!396 = !DILocation(line: 294, column: 31, scope: !355)
!397 = !DILocation(line: 294, column: 38, scope: !355)
!398 = !DILocation(line: 294, column: 44, scope: !355)
!399 = !DILocation(line: 294, column: 5, scope: !355)
!400 = !DILocation(line: 295, column: 21, scope: !355)
!401 = !DILocation(line: 295, column: 28, scope: !355)
!402 = !DILocation(line: 295, column: 34, scope: !355)
!403 = !DILocation(line: 295, column: 5, scope: !355)
!404 = !DILocation(line: 297, column: 9, scope: !405)
!405 = distinct !DILexicalBlock(scope: !355, file: !2, line: 297, column: 9)
!406 = !DILocation(line: 297, column: 9, scope: !355)
!407 = !DILocation(line: 298, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !405, file: !2, line: 297, column: 62)
!409 = !DILocation(line: 299, column: 9, scope: !408)
!410 = !DILocation(line: 302, column: 29, scope: !355)
!411 = !DILocalVariable(name: "cache", arg: 1, scope: !412, file: !2, line: 90, type: !122)
!412 = distinct !DISubprogram(name: "clock_monotonic_gettime", scope: !2, file: !2, line: 90, type: !413, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !216)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !122, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!416 = !DILocation(line: 90, column: 67, scope: !412, inlinedAt: !417)
!417 = distinct !DILocation(line: 302, column: 5, scope: !355)
!418 = !DILocalVariable(name: "ts", arg: 2, scope: !412, file: !2, line: 91, type: !415)
!419 = !DILocation(line: 91, column: 22, scope: !412, inlinedAt: !417)
!420 = !DILocation(line: 93, column: 9, scope: !421, inlinedAt: !417)
!421 = distinct !DILexicalBlock(scope: !412, file: !2, line: 93, column: 9)
!422 = !DILocation(line: 93, column: 9, scope: !412, inlinedAt: !417)
!423 = !DILocation(line: 94, column: 9, scope: !421, inlinedAt: !417)
!424 = !DILocation(line: 303, column: 5, scope: !425)
!425 = distinct !DILexicalBlock(scope: !355, file: !2, line: 303, column: 5)
!426 = !DILocation(line: 303, column: 5, scope: !427)
!427 = distinct !DILexicalBlock(scope: !425, file: !2, line: 303, column: 5)
!428 = !DILocalVariable(name: "key", scope: !429, file: !2, line: 304, type: !109)
!429 = distinct !DILexicalBlock(scope: !427, file: !2, line: 303, column: 53)
!430 = !DILocation(line: 304, column: 15, scope: !429)
!431 = !DILocation(line: 304, column: 21, scope: !429)
!432 = !DILocation(line: 304, column: 27, scope: !429)
!433 = !DILocation(line: 306, column: 17, scope: !434)
!434 = distinct !DILexicalBlock(scope: !429, file: !2, line: 306, column: 13)
!435 = !DILocation(line: 306, column: 26, scope: !434)
!436 = !DILocation(line: 306, column: 32, scope: !434)
!437 = !DILocation(line: 306, column: 24, scope: !434)
!438 = !DILocation(line: 306, column: 44, scope: !434)
!439 = !DILocation(line: 306, column: 47, scope: !434)
!440 = !DILocation(line: 306, column: 13, scope: !429)
!441 = !DILocation(line: 307, column: 13, scope: !434)
!442 = !DILocation(line: 309, column: 19, scope: !429)
!443 = !DILocation(line: 309, column: 25, scope: !429)
!444 = !DILocation(line: 309, column: 9, scope: !429)
!445 = !DILocation(line: 311, column: 13, scope: !446)
!446 = distinct !DILexicalBlock(scope: !429, file: !2, line: 311, column: 13)
!447 = !DILocation(line: 311, column: 13, scope: !429)
!448 = !DILocation(line: 312, column: 13, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !2, line: 311, column: 65)
!450 = !DILocation(line: 313, column: 13, scope: !449)
!451 = !DILocation(line: 316, column: 18, scope: !429)
!452 = !DILocation(line: 316, column: 25, scope: !429)
!453 = !DILocation(line: 316, column: 30, scope: !429)
!454 = !DILocation(line: 316, column: 37, scope: !429)
!455 = !DILocation(line: 316, column: 9, scope: !429)
!456 = !DILocation(line: 318, column: 13, scope: !457)
!457 = distinct !DILexicalBlock(scope: !429, file: !2, line: 318, column: 13)
!458 = !DILocation(line: 318, column: 13, scope: !429)
!459 = !DILocation(line: 319, column: 13, scope: !457)
!460 = !DILocation(line: 321, column: 13, scope: !461)
!461 = distinct !DILexicalBlock(scope: !429, file: !2, line: 321, column: 13)
!462 = !DILocation(line: 321, column: 36, scope: !461)
!463 = !DILocation(line: 321, column: 13, scope: !429)
!464 = !DILocation(line: 322, column: 13, scope: !465)
!465 = distinct !DILexicalBlock(scope: !461, file: !2, line: 321, column: 42)
!466 = !DILocation(line: 322, column: 20, scope: !465)
!467 = !DILocation(line: 322, column: 23, scope: !465)
!468 = !DILocation(line: 322, column: 37, scope: !465)
!469 = !DILocation(line: 322, column: 43, scope: !465)
!470 = !DILocation(line: 322, column: 50, scope: !465)
!471 = !DILocation(line: 322, column: 53, scope: !465)
!472 = !DILocation(line: 323, column: 9, scope: !465)
!473 = !DILocation(line: 324, column: 13, scope: !474)
!474 = distinct !DILexicalBlock(scope: !461, file: !2, line: 323, column: 16)
!475 = !DILocation(line: 327, column: 18, scope: !476)
!476 = distinct !DILexicalBlock(scope: !474, file: !2, line: 327, column: 17)
!477 = !DILocation(line: 327, column: 17, scope: !474)
!478 = !DILocation(line: 328, column: 17, scope: !476)
!479 = !DILocation(line: 328, column: 24, scope: !476)
!480 = !DILocation(line: 328, column: 27, scope: !476)
!481 = !DILocation(line: 328, column: 41, scope: !476)
!482 = !DILocation(line: 328, column: 47, scope: !476)
!483 = !DILocation(line: 328, column: 54, scope: !476)
!484 = !DILocation(line: 328, column: 57, scope: !476)
!485 = !DILocation(line: 331, column: 16, scope: !429)
!486 = !DILocation(line: 332, column: 5, scope: !429)
!487 = distinct !{!487, !424, !488, !489}
!488 = !DILocation(line: 332, column: 5, scope: !425)
!489 = !{!"llvm.loop.mustprogress"}
!490 = !DILocation(line: 337, column: 9, scope: !491)
!491 = distinct !DILexicalBlock(scope: !355, file: !2, line: 337, column: 9)
!492 = !DILocation(line: 337, column: 9, scope: !355)
!493 = !DILocation(line: 338, column: 9, scope: !491)
!494 = !DILocation(line: 342, column: 9, scope: !495)
!495 = distinct !DILexicalBlock(scope: !355, file: !2, line: 342, column: 9)
!496 = !DILocation(line: 342, column: 9, scope: !355)
!497 = !DILocation(line: 343, column: 28, scope: !498)
!498 = distinct !DILexicalBlock(scope: !495, file: !2, line: 342, column: 61)
!499 = !DILocation(line: 343, column: 35, scope: !498)
!500 = !DILocation(line: 343, column: 41, scope: !498)
!501 = !DILocation(line: 343, column: 9, scope: !498)
!502 = !DILocation(line: 344, column: 32, scope: !498)
!503 = !DILocation(line: 344, column: 39, scope: !498)
!504 = !DILocation(line: 344, column: 45, scope: !498)
!505 = !DILocation(line: 344, column: 9, scope: !498)
!506 = !DILocation(line: 345, column: 5, scope: !498)
!507 = !DILocation(line: 346, column: 9, scope: !508)
!508 = distinct !DILexicalBlock(scope: !495, file: !2, line: 345, column: 12)
!509 = !DILabel(scope: !355, name: "end", file: !2, line: 349)
!510 = !DILocation(line: 349, column: 1, scope: !355)
!511 = !DILocation(line: 351, column: 5, scope: !355)
!512 = !DILocation(line: 353, column: 12, scope: !355)
!513 = !DILocation(line: 353, column: 5, scope: !355)
!514 = !DILocation(line: 354, column: 1, scope: !355)
!515 = distinct !DISubprogram(name: "cache_destroy", scope: !2, file: !2, line: 144, type: !516, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !216)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !122}
!518 = !DILocalVariable(name: "cache", arg: 1, scope: !515, file: !2, line: 144, type: !122)
!519 = !DILocation(line: 144, column: 36, scope: !515)
!520 = !DILocation(line: 146, column: 5, scope: !521)
!521 = distinct !DILexicalBlock(scope: !522, file: !2, line: 146, column: 5)
!522 = distinct !DILexicalBlock(scope: !515, file: !2, line: 146, column: 5)
!523 = !DILocation(line: 146, column: 5, scope: !522)
!524 = !DILocation(line: 149, column: 5, scope: !515)
!525 = !DILocation(line: 154, column: 36, scope: !515)
!526 = !DILocation(line: 154, column: 5, scope: !515)
!527 = !DILocation(line: 155, column: 5, scope: !515)
!528 = !DILocation(line: 155, column: 12, scope: !515)
!529 = !DILocation(line: 155, column: 18, scope: !515)
!530 = !DILocation(line: 156, column: 22, scope: !515)
!531 = !DILocation(line: 156, column: 5, scope: !515)
!532 = !DILocation(line: 157, column: 29, scope: !515)
!533 = !DILocation(line: 157, column: 36, scope: !515)
!534 = !DILocation(line: 157, column: 41, scope: !515)
!535 = !DILocation(line: 157, column: 5, scope: !515)
!536 = !DILocation(line: 158, column: 29, scope: !515)
!537 = !DILocation(line: 158, column: 36, scope: !515)
!538 = !DILocation(line: 158, column: 42, scope: !515)
!539 = !DILocation(line: 158, column: 5, scope: !515)
!540 = !DILocation(line: 159, column: 15, scope: !515)
!541 = !DILocation(line: 159, column: 22, scope: !515)
!542 = !DILocation(line: 159, column: 27, scope: !515)
!543 = !DILocation(line: 159, column: 5, scope: !515)
!544 = !DILocation(line: 160, column: 10, scope: !515)
!545 = !DILocation(line: 160, column: 5, scope: !515)
!546 = !DILocation(line: 161, column: 1, scope: !515)
!547 = distinct !DISubprogram(name: "cache_get_and_ref_entry", scope: !2, file: !2, line: 170, type: !548, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !216)
!548 = !DISubroutineType(types: !549)
!549 = !{!182, !122, !194, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!551 = !DILocalVariable(name: "cache", arg: 1, scope: !547, file: !2, line: 170, type: !122)
!552 = !DILocation(line: 170, column: 63, scope: !547)
!553 = !DILocalVariable(name: "key", arg: 2, scope: !547, file: !2, line: 171, type: !194)
!554 = !DILocation(line: 171, column: 59, scope: !547)
!555 = !DILocalVariable(name: "error", arg: 3, scope: !547, file: !2, line: 171, type: !550)
!556 = !DILocation(line: 171, column: 69, scope: !547)
!557 = !DILocalVariable(name: "entry", scope: !547, file: !2, line: 173, type: !182)
!558 = !DILocation(line: 173, column: 27, scope: !547)
!559 = !DILocation(line: 175, column: 5, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !2, line: 175, column: 5)
!561 = distinct !DILexicalBlock(scope: !547, file: !2, line: 175, column: 5)
!562 = !DILocation(line: 175, column: 5, scope: !561)
!563 = !DILocation(line: 176, column: 5, scope: !564)
!564 = distinct !DILexicalBlock(scope: !565, file: !2, line: 176, column: 5)
!565 = distinct !DILexicalBlock(scope: !547, file: !2, line: 176, column: 5)
!566 = !DILocation(line: 176, column: 5, scope: !565)
!567 = !DILocation(line: 177, column: 5, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !2, line: 177, column: 5)
!569 = distinct !DILexicalBlock(scope: !547, file: !2, line: 177, column: 5)
!570 = !DILocation(line: 177, column: 5, scope: !569)
!571 = !DILocation(line: 179, column: 6, scope: !547)
!572 = !DILocation(line: 179, column: 12, scope: !547)
!573 = !DILocation(line: 184, column: 9, scope: !574)
!574 = distinct !DILexicalBlock(scope: !547, file: !2, line: 184, column: 9)
!575 = !DILocation(line: 184, column: 9, scope: !547)
!576 = !DILocation(line: 185, column: 10, scope: !577)
!577 = distinct !DILexicalBlock(scope: !574, file: !2, line: 184, column: 73)
!578 = !DILocation(line: 185, column: 16, scope: !577)
!579 = !DILocation(line: 186, column: 9, scope: !577)
!580 = !DILocation(line: 190, column: 23, scope: !547)
!581 = !DILocation(line: 190, column: 30, scope: !547)
!582 = !DILocation(line: 190, column: 35, scope: !547)
!583 = !DILocation(line: 190, column: 42, scope: !547)
!584 = !DILocation(line: 190, column: 13, scope: !547)
!585 = !DILocation(line: 190, column: 11, scope: !547)
!586 = !DILocation(line: 191, column: 9, scope: !587)
!587 = distinct !DILexicalBlock(scope: !547, file: !2, line: 191, column: 9)
!588 = !DILocation(line: 191, column: 9, scope: !547)
!589 = !DILocation(line: 192, column: 9, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !2, line: 191, column: 24)
!591 = !DILocation(line: 193, column: 32, scope: !590)
!592 = !DILocation(line: 193, column: 39, scope: !590)
!593 = !DILocation(line: 193, column: 44, scope: !590)
!594 = !DILocation(line: 193, column: 9, scope: !590)
!595 = !DILocation(line: 195, column: 9, scope: !590)
!596 = !DILocation(line: 197, column: 16, scope: !590)
!597 = !DILocation(line: 197, column: 9, scope: !590)
!598 = !DILocation(line: 201, column: 28, scope: !547)
!599 = !DILocation(line: 201, column: 35, scope: !547)
!600 = !DILocation(line: 201, column: 40, scope: !547)
!601 = !DILocation(line: 201, column: 5, scope: !547)
!602 = !DILocation(line: 204, column: 5, scope: !547)
!603 = !DILocation(line: 207, column: 13, scope: !547)
!604 = !DILocation(line: 207, column: 20, scope: !547)
!605 = !DILocation(line: 207, column: 23, scope: !547)
!606 = !DILocation(line: 207, column: 36, scope: !547)
!607 = !DILocation(line: 207, column: 41, scope: !547)
!608 = !DILocation(line: 207, column: 48, scope: !547)
!609 = !DILocation(line: 207, column: 51, scope: !547)
!610 = !DILocation(line: 207, column: 11, scope: !547)
!611 = !DILocation(line: 208, column: 10, scope: !612)
!612 = distinct !DILexicalBlock(scope: !547, file: !2, line: 208, column: 9)
!613 = !DILocation(line: 208, column: 9, scope: !547)
!614 = !DILocation(line: 209, column: 9, scope: !612)
!615 = !DILocation(line: 211, column: 12, scope: !547)
!616 = !DILocation(line: 211, column: 5, scope: !547)
!617 = !DILocation(line: 212, column: 25, scope: !547)
!618 = !DILocation(line: 212, column: 18, scope: !547)
!619 = !DILocation(line: 212, column: 5, scope: !547)
!620 = !DILocation(line: 212, column: 12, scope: !547)
!621 = !DILocation(line: 212, column: 16, scope: !547)
!622 = !DILocation(line: 213, column: 5, scope: !547)
!623 = !DILocation(line: 213, column: 12, scope: !547)
!624 = !DILocation(line: 213, column: 17, scope: !547)
!625 = !DILocation(line: 215, column: 35, scope: !626)
!626 = distinct !DILexicalBlock(scope: !547, file: !2, line: 215, column: 9)
!627 = !DILocation(line: 215, column: 42, scope: !626)
!628 = !DILocation(line: 215, column: 47, scope: !626)
!629 = !DILocation(line: 215, column: 9, scope: !626)
!630 = !DILocation(line: 215, column: 53, scope: !626)
!631 = !DILocation(line: 215, column: 9, scope: !547)
!632 = !DILocation(line: 221, column: 37, scope: !633)
!633 = distinct !DILexicalBlock(scope: !626, file: !2, line: 215, column: 63)
!634 = !DILocalVariable(name: "entry", arg: 1, scope: !635, file: !2, line: 164, type: !182)
!635 = distinct !DISubprogram(name: "convert_to_temporary", scope: !2, file: !2, line: 163, type: !636, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !216)
!636 = !DISubroutineType(types: !637)
!637 = !{!182, !182}
!638 = !DILocation(line: 164, column: 27, scope: !635, inlinedAt: !639)
!639 = distinct !DILocation(line: 221, column: 16, scope: !633)
!640 = !DILocation(line: 166, column: 5, scope: !635, inlinedAt: !639)
!641 = !DILocation(line: 166, column: 12, scope: !635, inlinedAt: !639)
!642 = !DILocation(line: 166, column: 18, scope: !635, inlinedAt: !639)
!643 = !DILocation(line: 167, column: 12, scope: !635, inlinedAt: !639)
!644 = !DILocation(line: 221, column: 9, scope: !633)
!645 = !DILocation(line: 224, column: 26, scope: !646)
!646 = distinct !DILexicalBlock(scope: !547, file: !2, line: 224, column: 9)
!647 = !DILocation(line: 224, column: 33, scope: !646)
!648 = !DILocation(line: 224, column: 38, scope: !646)
!649 = !DILocation(line: 224, column: 45, scope: !646)
!650 = !DILocation(line: 224, column: 52, scope: !646)
!651 = !DILocation(line: 224, column: 57, scope: !646)
!652 = !DILocation(line: 224, column: 10, scope: !646)
!653 = !DILocation(line: 224, column: 9, scope: !547)
!654 = !DILocalVariable(name: "time_to_die", scope: !655, file: !2, line: 225, type: !325)
!655 = distinct !DILexicalBlock(scope: !646, file: !2, line: 224, column: 65)
!656 = !DILocation(line: 225, column: 25, scope: !655)
!657 = !DILocation(line: 226, column: 33, scope: !655)
!658 = !DILocation(line: 90, column: 67, scope: !412, inlinedAt: !659)
!659 = distinct !DILocation(line: 226, column: 9, scope: !655)
!660 = !DILocation(line: 91, column: 22, scope: !412, inlinedAt: !659)
!661 = !DILocation(line: 93, column: 9, scope: !421, inlinedAt: !659)
!662 = !DILocation(line: 93, column: 9, scope: !412, inlinedAt: !659)
!663 = !DILocation(line: 94, column: 9, scope: !421, inlinedAt: !659)
!664 = !DILocation(line: 227, column: 42, scope: !655)
!665 = !DILocation(line: 227, column: 51, scope: !655)
!666 = !DILocation(line: 227, column: 58, scope: !655)
!667 = !DILocation(line: 227, column: 67, scope: !655)
!668 = !DILocation(line: 227, column: 49, scope: !655)
!669 = !DILocation(line: 227, column: 9, scope: !655)
!670 = !DILocation(line: 227, column: 16, scope: !655)
!671 = !DILocation(line: 227, column: 28, scope: !655)
!672 = !DILocation(line: 229, column: 13, scope: !673)
!673 = distinct !DILexicalBlock(scope: !655, file: !2, line: 229, column: 13)
!674 = !DILocation(line: 229, column: 13, scope: !655)
!675 = !DILocation(line: 230, column: 28, scope: !676)
!676 = distinct !DILexicalBlock(scope: !673, file: !2, line: 229, column: 65)
!677 = !DILocation(line: 230, column: 35, scope: !676)
!678 = !DILocation(line: 230, column: 41, scope: !676)
!679 = !DILocation(line: 230, column: 48, scope: !676)
!680 = !DILocation(line: 230, column: 55, scope: !676)
!681 = !DILocation(line: 230, column: 13, scope: !676)
!682 = !DILocation(line: 231, column: 36, scope: !676)
!683 = !DILocation(line: 231, column: 43, scope: !676)
!684 = !DILocation(line: 231, column: 49, scope: !676)
!685 = !DILocation(line: 231, column: 13, scope: !676)
!686 = !DILocation(line: 232, column: 9, scope: !676)
!687 = !DILocation(line: 233, column: 41, scope: !688)
!688 = distinct !DILexicalBlock(scope: !673, file: !2, line: 232, column: 16)
!689 = !DILocation(line: 164, column: 27, scope: !635, inlinedAt: !690)
!690 = distinct !DILocation(line: 233, column: 20, scope: !688)
!691 = !DILocation(line: 166, column: 5, scope: !635, inlinedAt: !690)
!692 = !DILocation(line: 166, column: 12, scope: !635, inlinedAt: !690)
!693 = !DILocation(line: 166, column: 18, scope: !635, inlinedAt: !690)
!694 = !DILocation(line: 167, column: 12, scope: !635, inlinedAt: !690)
!695 = !DILocation(line: 233, column: 13, scope: !688)
!696 = !DILocation(line: 235, column: 5, scope: !655)
!697 = !DILocation(line: 242, column: 30, scope: !698)
!698 = distinct !DILexicalBlock(scope: !646, file: !2, line: 235, column: 12)
!699 = !DILocation(line: 164, column: 27, scope: !635, inlinedAt: !700)
!700 = distinct !DILocation(line: 242, column: 9, scope: !698)
!701 = !DILocation(line: 166, column: 5, scope: !635, inlinedAt: !700)
!702 = !DILocation(line: 166, column: 12, scope: !635, inlinedAt: !700)
!703 = !DILocation(line: 166, column: 18, scope: !635, inlinedAt: !700)
!704 = !DILocation(line: 167, column: 12, scope: !635, inlinedAt: !700)
!705 = !DILocation(line: 245, column: 28, scope: !547)
!706 = !DILocation(line: 245, column: 35, scope: !547)
!707 = !DILocation(line: 245, column: 40, scope: !547)
!708 = !DILocation(line: 245, column: 5, scope: !547)
!709 = !DILocation(line: 246, column: 12, scope: !547)
!710 = !DILocation(line: 246, column: 5, scope: !547)
!711 = !DILocation(line: 247, column: 1, scope: !547)
!712 = distinct !DISubprogram(name: "list_add_tail", scope: !105, file: !105, line: 346, type: !713, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !216)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !341, !103}
!715 = !DILocalVariable(name: "h", arg: 1, scope: !712, file: !105, line: 346, type: !341)
!716 = !DILocation(line: 346, column: 52, scope: !712)
!717 = !DILocalVariable(name: "n", arg: 2, scope: !712, file: !105, line: 346, type: !103)
!718 = !DILocation(line: 346, column: 73, scope: !712)
!719 = !DILocation(line: 348, column: 13, scope: !712)
!720 = !DILocation(line: 348, column: 16, scope: !712)
!721 = !DILocation(line: 348, column: 2, scope: !712)
!722 = !DILocation(line: 348, column: 5, scope: !712)
!723 = !DILocation(line: 348, column: 10, scope: !712)
!724 = !DILocation(line: 349, column: 12, scope: !712)
!725 = !DILocation(line: 349, column: 15, scope: !712)
!726 = !DILocation(line: 349, column: 17, scope: !712)
!727 = !DILocation(line: 349, column: 2, scope: !712)
!728 = !DILocation(line: 349, column: 5, scope: !712)
!729 = !DILocation(line: 349, column: 10, scope: !712)
!730 = !DILocation(line: 350, column: 20, scope: !712)
!731 = !DILocation(line: 350, column: 2, scope: !712)
!732 = !DILocation(line: 350, column: 5, scope: !712)
!733 = !DILocation(line: 350, column: 7, scope: !712)
!734 = !DILocation(line: 350, column: 13, scope: !712)
!735 = !DILocation(line: 350, column: 18, scope: !712)
!736 = !DILocation(line: 351, column: 14, scope: !712)
!737 = !DILocation(line: 351, column: 2, scope: !712)
!738 = !DILocation(line: 351, column: 5, scope: !712)
!739 = !DILocation(line: 351, column: 7, scope: !712)
!740 = !DILocation(line: 351, column: 12, scope: !712)
!741 = !DILocation(line: 352, column: 8, scope: !712)
!742 = !DILocation(line: 353, column: 1, scope: !712)
!743 = distinct !DISubprogram(name: "cache_entry_unref", scope: !2, file: !2, line: 249, type: !744, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !216)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !122, !182}
!746 = !DILocalVariable(name: "cache", arg: 1, scope: !743, file: !2, line: 249, type: !122)
!747 = !DILocation(line: 249, column: 40, scope: !743)
!748 = !DILocalVariable(name: "entry", arg: 2, scope: !743, file: !2, line: 249, type: !182)
!749 = !DILocation(line: 249, column: 69, scope: !743)
!750 = !DILocation(line: 251, column: 5, scope: !751)
!751 = distinct !DILexicalBlock(scope: !752, file: !2, line: 251, column: 5)
!752 = distinct !DILexicalBlock(scope: !743, file: !2, line: 251, column: 5)
!753 = !DILocation(line: 251, column: 5, scope: !752)
!754 = !DILocation(line: 253, column: 9, scope: !755)
!755 = distinct !DILexicalBlock(scope: !743, file: !2, line: 253, column: 9)
!756 = !DILocation(line: 253, column: 16, scope: !755)
!757 = !DILocation(line: 253, column: 22, scope: !755)
!758 = !DILocation(line: 253, column: 9, scope: !743)
!759 = !DILocation(line: 254, column: 14, scope: !760)
!760 = distinct !DILexicalBlock(scope: !755, file: !2, line: 253, column: 35)
!761 = !DILocation(line: 254, column: 21, scope: !760)
!762 = !DILocation(line: 254, column: 9, scope: !760)
!763 = !DILocation(line: 255, column: 9, scope: !760)
!764 = !DILocation(line: 258, column: 9, scope: !765)
!765 = distinct !DILexicalBlock(scope: !743, file: !2, line: 258, column: 9)
!766 = !DILocation(line: 258, column: 9, scope: !743)
!767 = !DILocation(line: 259, column: 9, scope: !765)
!768 = !DILocation(line: 263, column: 9, scope: !769)
!769 = distinct !DILexicalBlock(scope: !743, file: !2, line: 263, column: 9)
!770 = !DILocation(line: 263, column: 16, scope: !769)
!771 = !DILocation(line: 263, column: 22, scope: !769)
!772 = !DILocation(line: 263, column: 9, scope: !743)
!773 = !DILocation(line: 263, column: 34, scope: !769)
!774 = !DILabel(scope: !775, name: "destroy_entry", file: !2, line: 264)
!775 = distinct !DILexicalBlock(scope: !769, file: !2, line: 263, column: 34)
!776 = !DILocation(line: 264, column: 1, scope: !775)
!777 = !DILocation(line: 268, column: 9, scope: !775)
!778 = !DILocation(line: 268, column: 16, scope: !775)
!779 = !DILocation(line: 268, column: 19, scope: !775)
!780 = !DILocation(line: 268, column: 33, scope: !775)
!781 = !DILocation(line: 268, column: 40, scope: !775)
!782 = !DILocation(line: 268, column: 47, scope: !775)
!783 = !DILocation(line: 268, column: 50, scope: !775)
!784 = !DILocation(line: 269, column: 5, scope: !775)
!785 = !DILocation(line: 270, column: 1, scope: !743)
!786 = distinct !DISubprogram(name: "cache_coro_get_and_ref_entry", scope: !2, file: !2, line: 357, type: !787, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !216)
!787 = !DISubroutineType(types: !788)
!788 = !{!182, !122, !789, !194}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_t", file: !791, line: 34, baseType: !792)
!791 = !DIFile(filename: "common/lwan-coro.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "34b7f40341e2e8a3481f0400ece0424e")
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "coro_t_", file: !791, line: 34, flags: DIFlagFwdDecl)
!793 = !DILocalVariable(name: "cache", arg: 1, scope: !786, file: !2, line: 357, type: !122)
!794 = !DILocation(line: 357, column: 46, scope: !786)
!795 = !DILocalVariable(name: "coro", arg: 2, scope: !786, file: !2, line: 357, type: !789)
!796 = !DILocation(line: 357, column: 61, scope: !786)
!797 = !DILocalVariable(name: "key", arg: 3, scope: !786, file: !2, line: 358, type: !194)
!798 = !DILocation(line: 358, column: 42, scope: !786)
!799 = !DILocalVariable(name: "tries", scope: !800, file: !2, line: 360, type: !93)
!800 = distinct !DILexicalBlock(scope: !786, file: !2, line: 360, column: 5)
!801 = !DILocation(line: 360, column: 14, scope: !800)
!802 = !DILocation(line: 360, column: 10, scope: !800)
!803 = !DILocation(line: 360, column: 41, scope: !804)
!804 = distinct !DILexicalBlock(scope: !800, file: !2, line: 360, column: 5)
!805 = !DILocation(line: 360, column: 5, scope: !800)
!806 = !DILocalVariable(name: "error", scope: !807, file: !2, line: 361, type: !93)
!807 = distinct !DILexicalBlock(scope: !804, file: !2, line: 360, column: 57)
!808 = !DILocation(line: 361, column: 13, scope: !807)
!809 = !DILocalVariable(name: "ce", scope: !807, file: !2, line: 362, type: !182)
!810 = !DILocation(line: 362, column: 31, scope: !807)
!811 = !DILocation(line: 362, column: 60, scope: !807)
!812 = !DILocation(line: 362, column: 67, scope: !807)
!813 = !DILocation(line: 362, column: 36, scope: !807)
!814 = !DILocation(line: 364, column: 13, scope: !815)
!815 = distinct !DILexicalBlock(scope: !807, file: !2, line: 364, column: 13)
!816 = !DILocation(line: 364, column: 13, scope: !807)
!817 = !DILocation(line: 370, column: 25, scope: !818)
!818 = distinct !DILexicalBlock(scope: !815, file: !2, line: 364, column: 25)
!819 = !DILocation(line: 370, column: 63, scope: !818)
!820 = !DILocation(line: 370, column: 70, scope: !818)
!821 = !DILocation(line: 370, column: 13, scope: !818)
!822 = !DILocation(line: 371, column: 20, scope: !818)
!823 = !DILocation(line: 371, column: 13, scope: !818)
!824 = !DILocation(line: 378, column: 13, scope: !825)
!825 = distinct !DILexicalBlock(scope: !807, file: !2, line: 378, column: 13)
!826 = !DILocation(line: 378, column: 19, scope: !825)
!827 = !DILocation(line: 378, column: 13, scope: !807)
!828 = !DILocation(line: 379, column: 24, scope: !829)
!829 = distinct !DILexicalBlock(scope: !825, file: !2, line: 378, column: 35)
!830 = !DILocation(line: 379, column: 13, scope: !829)
!831 = !DILocation(line: 380, column: 9, scope: !829)
!832 = !DILocation(line: 381, column: 13, scope: !833)
!833 = distinct !DILexicalBlock(scope: !825, file: !2, line: 380, column: 16)
!834 = !DILocation(line: 383, column: 5, scope: !807)
!835 = !DILocation(line: 360, column: 53, scope: !804)
!836 = !DILocation(line: 360, column: 5, scope: !804)
!837 = distinct !{!837, !805, !838, !489}
!838 = !DILocation(line: 383, column: 5, scope: !800)
!839 = !DILocation(line: 385, column: 5, scope: !786)
!840 = !DILocation(line: 386, column: 1, scope: !786)
!841 = distinct !DISubprogram(name: "list_empty", scope: !105, file: !105, line: 364, type: !842, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !216)
!842 = !DISubroutineType(types: !843)
!843 = !{!358, !844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!846 = !DILocalVariable(name: "h", arg: 1, scope: !841, file: !105, line: 364, type: !844)
!847 = !DILocation(line: 364, column: 55, scope: !841)
!848 = !DILocation(line: 366, column: 8, scope: !841)
!849 = !DILocation(line: 367, column: 9, scope: !841)
!850 = !DILocation(line: 367, column: 12, scope: !841)
!851 = !DILocation(line: 367, column: 14, scope: !841)
!852 = !DILocation(line: 367, column: 23, scope: !841)
!853 = !DILocation(line: 367, column: 26, scope: !841)
!854 = !DILocation(line: 367, column: 19, scope: !841)
!855 = !DILocation(line: 367, column: 2, scope: !841)
!856 = distinct !DISubprogram(name: "list_append_list", scope: !105, file: !105, line: 588, type: !857, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !216)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !341, !341}
!859 = !DILocalVariable(name: "to", arg: 1, scope: !856, file: !105, line: 588, type: !341)
!860 = !DILocation(line: 588, column: 55, scope: !856)
!861 = !DILocalVariable(name: "from", arg: 2, scope: !856, file: !105, line: 589, type: !341)
!862 = !DILocation(line: 589, column: 27, scope: !856)
!863 = !DILocalVariable(name: "from_tail", scope: !856, file: !105, line: 591, type: !103)
!864 = !DILocation(line: 591, column: 20, scope: !856)
!865 = !DILocation(line: 591, column: 32, scope: !856)
!866 = !DILocation(line: 591, column: 50, scope: !856)
!867 = !DILocation(line: 591, column: 52, scope: !856)
!868 = !DILocalVariable(name: "to_tail", scope: !856, file: !105, line: 592, type: !103)
!869 = !DILocation(line: 592, column: 20, scope: !856)
!870 = !DILocation(line: 592, column: 30, scope: !856)
!871 = !DILocation(line: 592, column: 46, scope: !856)
!872 = !DILocation(line: 592, column: 48, scope: !856)
!873 = !DILocation(line: 595, column: 15, scope: !856)
!874 = !DILocation(line: 595, column: 2, scope: !856)
!875 = !DILocation(line: 595, column: 6, scope: !856)
!876 = !DILocation(line: 595, column: 8, scope: !856)
!877 = !DILocation(line: 595, column: 13, scope: !856)
!878 = !DILocation(line: 596, column: 21, scope: !856)
!879 = !DILocation(line: 596, column: 25, scope: !856)
!880 = !DILocation(line: 596, column: 2, scope: !856)
!881 = !DILocation(line: 596, column: 13, scope: !856)
!882 = !DILocation(line: 596, column: 18, scope: !856)
!883 = !DILocation(line: 597, column: 19, scope: !856)
!884 = !DILocation(line: 597, column: 25, scope: !856)
!885 = !DILocation(line: 597, column: 2, scope: !856)
!886 = !DILocation(line: 597, column: 11, scope: !856)
!887 = !DILocation(line: 597, column: 16, scope: !856)
!888 = !DILocation(line: 598, column: 17, scope: !856)
!889 = !DILocation(line: 598, column: 2, scope: !856)
!890 = !DILocation(line: 598, column: 8, scope: !856)
!891 = !DILocation(line: 598, column: 10, scope: !856)
!892 = !DILocation(line: 598, column: 15, scope: !856)
!893 = !DILocation(line: 601, column: 12, scope: !856)
!894 = !DILocation(line: 601, column: 18, scope: !856)
!895 = !DILocation(line: 601, column: 2, scope: !856)
!896 = !DILocation(line: 602, column: 17, scope: !856)
!897 = !DILocation(line: 602, column: 2, scope: !856)
!898 = !DILocation(line: 603, column: 1, scope: !856)
!899 = distinct !DISubprogram(name: "list_node_to_off_", scope: !105, file: !105, line: 716, type: !900, scopeLine: 717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !216)
!900 = !DISubroutineType(types: !901)
!901 = !{!102, !103, !902}
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !903, line: 46, baseType: !157)
!903 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!904 = !DILocalVariable(name: "node", arg: 1, scope: !899, file: !105, line: 716, type: !103)
!905 = !DILocation(line: 716, column: 57, scope: !899)
!906 = !DILocalVariable(name: "off", arg: 2, scope: !899, file: !105, line: 716, type: !902)
!907 = !DILocation(line: 716, column: 70, scope: !899)
!908 = !DILocation(line: 718, column: 26, scope: !899)
!909 = !DILocation(line: 718, column: 33, scope: !899)
!910 = !DILocation(line: 718, column: 31, scope: !899)
!911 = !DILocation(line: 718, column: 2, scope: !899)
!912 = distinct !DISubprogram(name: "list_node_from_off_", scope: !105, file: !105, line: 720, type: !913, scopeLine: 721, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !216)
!913 = !DISubroutineType(types: !914)
!914 = !{!103, !102, !902}
!915 = !DILocalVariable(name: "ptr", arg: 1, scope: !912, file: !105, line: 720, type: !102)
!916 = !DILocation(line: 720, column: 59, scope: !912)
!917 = !DILocalVariable(name: "off", arg: 2, scope: !912, file: !105, line: 720, type: !902)
!918 = !DILocation(line: 720, column: 71, scope: !912)
!919 = !DILocation(line: 722, column: 38, scope: !912)
!920 = !DILocation(line: 722, column: 44, scope: !912)
!921 = !DILocation(line: 722, column: 42, scope: !912)
!922 = !DILocation(line: 722, column: 2, scope: !912)
!923 = distinct !DISubprogram(name: "list_del", scope: !105, file: !105, line: 384, type: !924, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !216)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !103}
!926 = !DILocalVariable(name: "n", arg: 1, scope: !923, file: !105, line: 384, type: !103)
!927 = !DILocation(line: 384, column: 47, scope: !923)
!928 = !DILocation(line: 386, column: 8, scope: !923)
!929 = !DILocation(line: 387, column: 18, scope: !923)
!930 = !DILocation(line: 387, column: 21, scope: !923)
!931 = !DILocation(line: 387, column: 2, scope: !923)
!932 = !DILocation(line: 387, column: 5, scope: !923)
!933 = !DILocation(line: 387, column: 11, scope: !923)
!934 = !DILocation(line: 387, column: 16, scope: !923)
!935 = !DILocation(line: 388, column: 18, scope: !923)
!936 = !DILocation(line: 388, column: 21, scope: !923)
!937 = !DILocation(line: 388, column: 2, scope: !923)
!938 = !DILocation(line: 388, column: 5, scope: !923)
!939 = !DILocation(line: 388, column: 11, scope: !923)
!940 = !DILocation(line: 388, column: 16, scope: !923)
!941 = !DILocation(line: 393, column: 1, scope: !923)
!942 = distinct !DISubprogram(name: "list_prepend_list", scope: !105, file: !105, line: 618, type: !857, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !216)
!943 = !DILocalVariable(name: "to", arg: 1, scope: !942, file: !105, line: 618, type: !341)
!944 = !DILocation(line: 618, column: 56, scope: !942)
!945 = !DILocalVariable(name: "from", arg: 2, scope: !942, file: !105, line: 619, type: !341)
!946 = !DILocation(line: 619, column: 28, scope: !942)
!947 = !DILocalVariable(name: "from_tail", scope: !942, file: !105, line: 621, type: !103)
!948 = !DILocation(line: 621, column: 20, scope: !942)
!949 = !DILocation(line: 621, column: 32, scope: !942)
!950 = !DILocation(line: 621, column: 50, scope: !942)
!951 = !DILocation(line: 621, column: 52, scope: !942)
!952 = !DILocalVariable(name: "to_head", scope: !942, file: !105, line: 622, type: !103)
!953 = !DILocation(line: 622, column: 20, scope: !942)
!954 = !DILocation(line: 622, column: 30, scope: !942)
!955 = !DILocation(line: 622, column: 46, scope: !942)
!956 = !DILocation(line: 622, column: 48, scope: !942)
!957 = !DILocation(line: 625, column: 16, scope: !942)
!958 = !DILocation(line: 625, column: 22, scope: !942)
!959 = !DILocation(line: 625, column: 2, scope: !942)
!960 = !DILocation(line: 625, column: 6, scope: !942)
!961 = !DILocation(line: 625, column: 8, scope: !942)
!962 = !DILocation(line: 625, column: 13, scope: !942)
!963 = !DILocation(line: 626, column: 18, scope: !942)
!964 = !DILocation(line: 626, column: 22, scope: !942)
!965 = !DILocation(line: 626, column: 2, scope: !942)
!966 = !DILocation(line: 626, column: 8, scope: !942)
!967 = !DILocation(line: 626, column: 10, scope: !942)
!968 = !DILocation(line: 626, column: 15, scope: !942)
!969 = !DILocation(line: 627, column: 18, scope: !942)
!970 = !DILocation(line: 627, column: 2, scope: !942)
!971 = !DILocation(line: 627, column: 11, scope: !942)
!972 = !DILocation(line: 627, column: 16, scope: !942)
!973 = !DILocation(line: 628, column: 20, scope: !942)
!974 = !DILocation(line: 628, column: 2, scope: !942)
!975 = !DILocation(line: 628, column: 13, scope: !942)
!976 = !DILocation(line: 628, column: 18, scope: !942)
!977 = !DILocation(line: 631, column: 12, scope: !942)
!978 = !DILocation(line: 631, column: 18, scope: !942)
!979 = !DILocation(line: 631, column: 2, scope: !942)
!980 = !DILocation(line: 632, column: 17, scope: !942)
!981 = !DILocation(line: 632, column: 2, scope: !942)
!982 = !DILocation(line: 633, column: 1, scope: !942)
